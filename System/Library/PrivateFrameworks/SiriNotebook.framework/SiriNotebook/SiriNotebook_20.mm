void *INAddTasksIntentResponse.contextEntities.getter()
{
  v1 = sub_2682E5CBC(v0, &selRef_addedTasks, &qword_280253310, 0x277CD4220);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = sub_2682E3798(v2, &qword_280253310, 0x277CD4220);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DD0, &qword_2683E6310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D1EC0;
  v5 = [v0 modifiedTaskList];
  v6 = v5;
  if (v5)
  {
    OUTLINED_FUNCTION_18_25();
    v5 = sub_2681828AC(v7, v8, v9, v10);
  }

  *(inited + 32) = v6;
  *(inited + 40) = v5;
  sub_2682C02CC(inited);
  return v3;
}

uint64_t INSetTaskAttributeIntentResponse.contextEntities.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DD0, &qword_2683E6310);
  *(OUTLINED_FUNCTION_19_4(v1) + 16) = xmmword_2683D1EC0;
  v2 = [v0 modifiedTask];
  if (v2)
  {
    v2 = sub_2681828AC(&qword_28024D578, &qword_280253310, 0x277CD4220, &protocol conformance descriptor for INTask);
  }

  return OUTLINED_FUNCTION_28_15(v2);
}

void *INSearchForNotebookItemsIntentResponse.contextEntities.getter()
{
  v1 = v0;
  v2 = sub_2682E5CBC(v0, &selRef_tasks, &qword_280253310, 0x277CD4220);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_2682E3798(v4, &qword_280253310, 0x277CD4220);

  v6 = sub_2682E5CBC(v1, &selRef_taskLists, &qword_280253320, 0x277CD4228);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = sub_2682E3798(v7, &qword_280253320, 0x277CD4228);

  sub_2682C02CC(v8);
  v9 = sub_2682E5CBC(v1, &selRef_notes, &qword_28024D350, 0x277CD3E00);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v3;
  }

  v11 = sub_2682E3798(v10, &qword_28024D350, 0x277CD3E00);

  sub_2682C02CC(v11);
  return v5;
}

uint64_t INCreateNoteIntentResponse.contextEntities.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DD0, &qword_2683E6310);
  *(OUTLINED_FUNCTION_19_4(v1) + 16) = xmmword_2683D1EC0;
  v2 = [v0 createdNote];
  if (v2)
  {
    OUTLINED_FUNCTION_19_25();
    v2 = sub_2681828AC(v3, v4, v5, v6);
  }

  return OUTLINED_FUNCTION_28_15(v2);
}

uint64_t INCreateTaskListIntentResponse.contextEntities.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DD0, &qword_2683E6310);
  *(OUTLINED_FUNCTION_19_4(v1) + 16) = xmmword_2683D1EC0;
  v2 = [v0 createdTaskList];
  if (v2)
  {
    OUTLINED_FUNCTION_18_25();
    v2 = sub_2681828AC(v3, v4, v5, v6);
  }

  return OUTLINED_FUNCTION_28_15(v2);
}

void *sub_2682E444C(SEL *a1)
{
  v2 = sub_2682E5CBC(v1, a1, &qword_280253310, 0x277CD4220);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = sub_2682E3798(v3, &qword_280253310, 0x277CD4220);

  return v4;
}

uint64_t INAppendToNoteIntentResponse.contextEntities.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DD0, &qword_2683E6310);
  *(OUTLINED_FUNCTION_19_4(v1) + 16) = xmmword_2683D1EC0;
  v2 = [v0 note];
  if (v2)
  {
    OUTLINED_FUNCTION_19_25();
    v2 = sub_2681828AC(v3, v4, v5, v6);
  }

  return OUTLINED_FUNCTION_28_15(v2);
}

void sub_2682E4594()
{
  OUTLINED_FUNCTION_20_25();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_44(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_7_24();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DF8, &qword_2683E6548);
      v7 = OUTLINED_FUNCTION_23_21(v6);
      v8 = _swift_stdlib_malloc_size_0(v7);
      OUTLINED_FUNCTION_9_28(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_29();
        sub_268392300(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DEC0, &qword_2683E6550);
    OUTLINED_FUNCTION_10_24(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_24();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_55();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2682E465C()
{
  OUTLINED_FUNCTION_3_39();
  if (v4)
  {
    OUTLINED_FUNCTION_2_41();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_25();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_39();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_26_16(v2, v5, &qword_280251DF0, &qword_2683E6528);
  OUTLINED_FUNCTION_27_12();
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_11_7();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_5_37(v8);
    sub_26839027C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_29();
  }
}

void sub_2682E4758()
{
  OUTLINED_FUNCTION_3_39();
  if (v4)
  {
    OUTLINED_FUNCTION_2_41();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_25();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_39();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_25_19(v2, v5, qword_280251E58, &qword_2683E65D8);
  OUTLINED_FUNCTION_22_17();
  sub_2683CC168();
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_11_7();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_5_37(v8);
    sub_268390290(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_29();
  }
}

void sub_2682E4820()
{
  OUTLINED_FUNCTION_3_39();
  if (v4)
  {
    OUTLINED_FUNCTION_2_41();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_25();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_39();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_25_19(v2, v5, &qword_280251E50, &qword_2683E65D0);
  OUTLINED_FUNCTION_22_17();
  sub_2683CCE48();
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_11_7();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_5_37(v8);
    sub_2683902A8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_29();
  }
}

void sub_2682E48E8()
{
  OUTLINED_FUNCTION_3_39();
  if (v4)
  {
    OUTLINED_FUNCTION_2_41();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_25();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_39();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_25_19(v2, v5, &qword_28024DDA8, &qword_2683E6540);
  OUTLINED_FUNCTION_22_17();
  sub_2683CF8B8();
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_11_7();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_5_37(v8);
    sub_2683902C0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_29();
  }
}

void sub_2682E49B0()
{
  OUTLINED_FUNCTION_20_25();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_44(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_7_24();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB30, &unk_2683D92F0);
      v9 = OUTLINED_FUNCTION_24_15();
      v10 = _swift_stdlib_malloc_size_0(v9);
      OUTLINED_FUNCTION_14_22(v10 - 32);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_6_29();
        sub_2683902D8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_12_21(v6, v7, v8, &type metadata for AnnotatedApp);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_24();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_55();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2682E4A6C()
{
  OUTLINED_FUNCTION_3_39();
  if (v4)
  {
    OUTLINED_FUNCTION_2_41();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_25();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_39();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_26_16(v2, v5, &qword_280251E38, &qword_2683E6598);
  OUTLINED_FUNCTION_27_12();
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_11_7();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_5_37(v8);
    sub_268390310(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_29();
  }
}

void sub_2682E4B38()
{
  OUTLINED_FUNCTION_3_39();
  if (v4)
  {
    OUTLINED_FUNCTION_2_41();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_25();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_39();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_25_19(v2, v5, &qword_280251608, &unk_2683E3D40);
  v8 = OUTLINED_FUNCTION_22_17();
  type metadata accessor for Snippet.Reminder(v8);
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_11_7();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_5_37(v9);
    sub_2683902F8(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_29();
  }
}

void sub_2682E4C00()
{
  OUTLINED_FUNCTION_3_39();
  if (v4)
  {
    OUTLINED_FUNCTION_2_41();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_25();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_39();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_25_19(v2, v5, &qword_280251E10, &qword_2683E6570);
  v8 = OUTLINED_FUNCTION_22_17();
  _s14descr2878F8F29V11ListContentOMa(v8);
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_11_7();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_5_37(v9);
    sub_268390324(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_29();
  }
}

void sub_2682E4CF8()
{
  OUTLINED_FUNCTION_3_39();
  if (v3)
  {
    OUTLINED_FUNCTION_2_41();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_25();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_39();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_2682E59FC(v7, v4, &qword_280251E18, &qword_2683E6578, MEMORY[0x2822294F8]);
  sub_2683CF5E8();
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_11_7();
  if (v1)
  {
    sub_26839033C(v0 + v9, v7, v8 + v9);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2682E4DD8()
{
  OUTLINED_FUNCTION_20_25();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_44(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_7_24();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E00, &qword_2683E6558);
      v7 = OUTLINED_FUNCTION_23_21(v6);
      v8 = _swift_stdlib_malloc_size_0(v7);
      OUTLINED_FUNCTION_9_28(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_29();
        sub_268392300(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA88, &qword_2683E6560);
    OUTLINED_FUNCTION_10_24(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_24();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_55();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2682E4EA0()
{
  OUTLINED_FUNCTION_20_25();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_1_44(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_7_24();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DD0, &qword_2683E6310);
      v7 = OUTLINED_FUNCTION_24_15();
      _swift_stdlib_malloc_size_0(v7);
      OUTLINED_FUNCTION_11_31();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_29();
        sub_26839025C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515E8, &unk_2683E6530);
    OUTLINED_FUNCTION_10_24(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_24();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_55();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2682E4F8C()
{
  OUTLINED_FUNCTION_3_39();
  if (v4)
  {
    OUTLINED_FUNCTION_2_41();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_25();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_39();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_25_19(v2, v5, &qword_280251DD8, &qword_2683E64F8);
  OUTLINED_FUNCTION_22_17();
  sub_2683CF808();
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_11_7();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_5_37(v8);
    sub_268390348(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_29();
  }
}

void sub_2682E5054()
{
  OUTLINED_FUNCTION_20_25();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_44(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_7_24();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DE0, &unk_2683E6510);
      v7 = OUTLINED_FUNCTION_23_21(v6);
      v8 = _swift_stdlib_malloc_size_0(v7);
      OUTLINED_FUNCTION_9_28(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_29();
        sub_2681232F8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD30, &qword_2683DE6B8);
    OUTLINED_FUNCTION_10_24(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_24();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_55();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2682E514C()
{
  OUTLINED_FUNCTION_20_25();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_44(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_7_24();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E48, &unk_2683E65C0);
      v10 = OUTLINED_FUNCTION_23_21(v9);
      v11 = _swift_stdlib_malloc_size_0(v10);
      v6 = OUTLINED_FUNCTION_9_28(v11);
      if (v1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_6_29();
        sub_268390360(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_12_21(v6, v7, v8, &_s11ContentTypeON);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_24();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_55();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2682E5238(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  v10 = a1;
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_44();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v16 = OUTLINED_FUNCTION_24_15();
      _swift_stdlib_malloc_size_0(v16);
      OUTLINED_FUNCTION_11_31();
      v16[2] = v14;
      v16[3] = v17;
      if (v10)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (v10)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_15_24();
  if (!v12)
  {
    OUTLINED_FUNCTION_0_55();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2682E5318()
{
  OUTLINED_FUNCTION_20_25();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_1_44(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_7_24();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D8, &unk_2683D7EC0);
      v7 = OUTLINED_FUNCTION_24_15();
      _swift_stdlib_malloc_size_0(v7);
      OUTLINED_FUNCTION_11_31();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_29();
        sub_26839025C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515D0, &unk_2683E3D00);
    OUTLINED_FUNCTION_10_24(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_24();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_55();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2682E53DC()
{
  OUTLINED_FUNCTION_3_39();
  if (v4)
  {
    OUTLINED_FUNCTION_2_41();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_25();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_39();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_25_19(v2, v5, &qword_280251E08, &qword_2683E6568);
  OUTLINED_FUNCTION_22_17();
  sub_2683CAEE8();
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_11_7();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_5_37(v8);
    sub_268390384(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_29();
  }
}

void sub_2682E54A4()
{
  OUTLINED_FUNCTION_3_39();
  if (v4)
  {
    OUTLINED_FUNCTION_2_41();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_25();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_39();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_25_19(v2, v5, &qword_280251428, &qword_2683E3450);
  v8 = OUTLINED_FUNCTION_22_17();
  type metadata accessor for Snippet.ReminderSearchResult.Section(v8);
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_11_7();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_5_37(v9);
    sub_26839039C(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_29();
  }
}

void sub_2682E5594(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_44();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_24_15();
      _swift_stdlib_malloc_size_0(v15);
      OUTLINED_FUNCTION_11_31();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_15_24();
  if (!v11)
  {
    OUTLINED_FUNCTION_0_55();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2682E566C()
{
  OUTLINED_FUNCTION_20_25();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_44(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_7_24();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F200, &qword_2683E64F0);
      v10 = OUTLINED_FUNCTION_23_21(v9);
      v11 = _swift_stdlib_malloc_size_0(v10);
      v6 = OUTLINED_FUNCTION_9_28(v11);
      if (v1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_6_29();
        sub_2683904A4(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_12_21(v6, v7, v8, &type metadata for NotebookSuggestion);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_24();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_55();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2682E5728()
{
  OUTLINED_FUNCTION_20_25();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_44(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_7_24();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD00, &qword_2683DE638);
      v6 = OUTLINED_FUNCTION_24_15();
      v7 = _swift_stdlib_malloc_size_0(v6);
      OUTLINED_FUNCTION_14_22(v7 - 32);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_6_29();
        sub_2683922FC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515D8, &unk_2683E6500);
    OUTLINED_FUNCTION_10_24(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_24();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_55();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2682E57F0()
{
  OUTLINED_FUNCTION_20_25();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_44(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_7_24();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD28, &qword_2683DE680);
      v6 = OUTLINED_FUNCTION_24_15();
      v7 = _swift_stdlib_malloc_size_0(v6);
      OUTLINED_FUNCTION_14_22(v7 - 32);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_6_29();
        sub_2683922FC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E018, &unk_2683E3D10);
    OUTLINED_FUNCTION_10_24(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_24();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_55();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2682E58B8()
{
  OUTLINED_FUNCTION_3_39();
  if (v4)
  {
    OUTLINED_FUNCTION_2_41();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_25();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_39();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_26_16(v2, v5, &qword_280251E40, &qword_2683E65A8);
  OUTLINED_FUNCTION_27_12();
  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_11_7();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_5_37(v8);
    sub_2683904CC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_29();
  }
}

void *sub_2682E5984(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v4 = OUTLINED_FUNCTION_24_15();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_2682E59FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2682E5B1C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E30, &unk_2683F6600);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 112);
  return v4;
}

void *sub_2682E5BA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2682E5CBC(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_268129504(0, a3, a4);
  v8 = sub_2683CFCA8();

  return v8;
}

uint64_t sub_2682E5D7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_268128148(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_2682E5E14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC18, &unk_2683F5380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2682E5E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBD0, &qword_2683E6590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_8_29()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_9_28(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_24(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_12_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_23_21(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_15()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_25_19(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2682E59FC(v5, a2, a3, a4, v4);
}

void *OUTLINED_FUNCTION_26_16(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2682E5BA0(v4, a2, a3, a4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_27_12()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_28_15(uint64_t a1)
{
  *(v1 + 32) = v2;
  *(v1 + 40) = a1;
  return v1;
}

uint64_t sub_2682E61AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2682E61F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_2682E6230(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2682E62AC()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 128);
  sub_2683CCB88();
  v5(v8, v4, 0, 0);
  (*(v2 + 8))(v4, v1);
  sub_268139910(v8);
  return sub_26812D9E0(v8, &qword_28024D458, &unk_2683D2C60);
}

uint64_t sub_2682E63D0()
{
  OUTLINED_FUNCTION_14();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = sub_2683CCBA8();
  v1[23] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[24] = v5;
  v1[25] = OUTLINED_FUNCTION_15_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5B0, &qword_2683D97C0);
  OUTLINED_FUNCTION_23(v6);
  v1[26] = OUTLINED_FUNCTION_15_1();
  v7 = sub_2683CCC18();
  v1[27] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[28] = v8;
  v1[29] = OUTLINED_FUNCTION_15_1();
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2682E64F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_8_30();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_15_25();
  a20 = v22;
  v25 = v22[29];
  v26 = *(v22[22] + 128);
  sub_2683CCB88();
  v26(v25, 0, 0);
  v27 = OUTLINED_FUNCTION_55_0();
  v28(v27);
  sub_2681340E8((v22 + 2), (v22 + 11), &qword_28024D458, &unk_2683D2C60);
  v29 = v22[11];
  if (v29 == 2)
  {
    sub_268143388((v22 + 11));
    goto LABEL_5;
  }

  if (v29 == 3)
  {
    sub_26812D9E0((v22 + 11), &qword_28024D458, &unk_2683D2C60);
LABEL_5:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v31 = v22[24];
    v30 = v22[25];
    v32 = v22[23];
    v33 = v22[21];
    v34 = sub_2683CF7E8();
    __swift_project_value_buffer(v34, qword_28027C958);
    (*(v31 + 16))(v30, v33, v32);
    v35 = sub_2683CF7C8();
    v36 = sub_2683CFE78();
    if (os_log_type_enabled(v35, v36))
    {
      v38 = v22[24];
      v37 = v22[25];
      v39 = v22[23];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      a10 = v41;
      *v40 = 136315138;
      sub_2683CCB88();
      v42 = sub_2683CFAD8();
      v44 = v43;
      (*(v38 + 8))(v37, v39);
      v45 = sub_2681610A0(v42, v44, &a10);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_2680EB000, v35, v36, "[NotebookRequestTCCAcceptanceStrategy parseResponse] Did not get ConfirmationTask from parse: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x26D617A40](v41, -1, -1);
      MEMORY[0x26D617A40](v40, -1, -1);
    }

    else
    {
      v47 = v22[24];
      v46 = v22[25];
      v48 = v22[23];

      (*(v47 + 8))(v46, v48);
    }

    sub_26812C6B8();
    swift_allocError();
    *v49 = 0u;
    *(v49 + 16) = 0u;
    *(v49 + 32) = 4;
    swift_willThrow();
    sub_26812D9E0((v22 + 2), &qword_28024D458, &unk_2683D2C60);

    OUTLINED_FUNCTION_40();
    goto LABEL_14;
  }

  v50 = v22[26];
  sub_26812D9E0((v22 + 12), &qword_28024D460, &qword_2683D5050);
  v51 = sub_2683CC758();
  OUTLINED_FUNCTION_1();
  v53 = MEMORY[0x277D5BED0];
  if ((v29 & 1) == 0)
  {
    v53 = MEMORY[0x277D5BED8];
  }

  (*(v52 + 104))(v50, *v53, v51);
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
  sub_2683CCB28();
  sub_26812D9E0((v22 + 2), &qword_28024D458, &unk_2683D2C60);

  OUTLINED_FUNCTION_40();
LABEL_14:
  OUTLINED_FUNCTION_2_16();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2682E68BC()
{
  OUTLINED_FUNCTION_14();
  v1[247] = v0;
  v1[241] = v2;
  v1[235] = v3;
  v1[229] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v5);
  v1[253] = OUTLINED_FUNCTION_15_1();
  v6 = sub_2683CC528();
  v1[259] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[265] = v7;
  v1[271] = OUTLINED_FUNCTION_15_1();
  v8 = sub_2683CC598();
  v1[272] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[273] = v9;
  v1[274] = swift_task_alloc();
  v1[275] = swift_task_alloc();
  v1[276] = swift_task_alloc();
  v10 = sub_2683CB668();
  v1[277] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[278] = v11;
  v1[279] = OUTLINED_FUNCTION_15_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70);
  OUTLINED_FUNCTION_3_1(v12);
  v1[280] = v13;
  v1[281] = *(v14 + 64);
  v1[282] = swift_task_alloc();
  v1[283] = swift_task_alloc();
  v1[284] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_2682E6ACC()
{
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v1 = sub_2683CF7E8();
  __swift_project_value_buffer(v1, qword_28027C958);
  v2 = sub_2683CF7C8();
  v3 = sub_2683CFE98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2680EB000, v2, v3, "[NotebookRequestTCCAcceptanceStrategy] Sending prompt for TCC acceptance", v4, 2u);
    MEMORY[0x26D617A40](v4, -1, -1);
  }

  v5 = v0[247];

  sub_2683CC808();
  swift_allocObject();

  sub_2683CC7F8();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2683CC088();
  sub_2683CC7E8();
  v7 = v6;

  v8 = OUTLINED_FUNCTION_55_0();
  v9(v8);
  if (v7)
  {

    sub_2681E73A0(v10);
    sub_2683CF288();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v0[284];
  v13 = v0[283];
  v14 = v0[280];
  v25 = v0[282];
  v15 = v0[247];
  v24 = v15;
  v16 = v0[241];
  v17 = sub_2683CF2A8();
  __swift_storeEnumTagSinglePayload(v12, v11, 1, v17);
  v18 = *(*(v16 - 8) + 16);
  v18(v0 + 167, v15, v16);
  sub_2681340E8(v12, v13, &qword_28024DF28, &qword_2683D5C70);
  v19 = (*(v14 + 80) + 168) & ~*(v14 + 80);
  v20 = swift_allocObject();
  v0[285] = v20;
  v21 = *(v16 + 16);
  *(v20 + 16) = v21;
  memcpy((v20 + 24), v0 + 167, 0x90uLL);
  sub_2681803C0(v13, v20 + v19);
  swift_asyncLet_begin();
  v18(v0 + 185, v24, v16);
  sub_2681340E8(v12, v25, &qword_28024DF28, &qword_2683D5C70);
  v22 = swift_allocObject();
  v0[286] = v22;
  *(v22 + 16) = v21;
  memcpy((v22 + 24), v0 + 185, 0x90uLL);
  sub_2681803C0(v25, v22 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251EE0, &qword_2683E67A8);
  swift_asyncLet_begin();
  sub_268169F04();

  return MEMORY[0x282200930](v0 + 2);
}

uint64_t sub_2682E6EA0()
{
  *(v1 + 2296) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_1_1(sub_2682E7494);
  }

  else
  {
    return OUTLINED_FUNCTION_1_1(sub_2682E6ECC);
  }
}

uint64_t sub_2682E6ECC()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 2208);
  v2 = *(v0 + 2200);
  v3 = *(v0 + 2184);
  v4 = *(v0 + 2176);
  v5 = *(v0 + 1976);
  v6 = *(v3 + 16);
  *(v0 + 2304) = v6;
  *(v0 + 2312) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  sub_26813CA00(v5, v0 + 1624);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  OUTLINED_FUNCTION_55_0();
  *(v0 + 2344) = sub_2683CC0A8() & 1;
  v7 = OUTLINED_FUNCTION_3_40();

  return MEMORY[0x282200930](v7);
}

uint64_t sub_2682E6F90()
{
  OUTLINED_FUNCTION_7();
  v1[290] = v0;
  if (v0)
  {
    v2 = v1[275];
    v3 = v1[273];
    v4 = v1[272];
    __swift_destroy_boxed_opaque_existential_0(v1 + 203);
    (*(v3 + 8))(v2, v4);
    v5 = OUTLINED_FUNCTION_48();

    return MEMORY[0x2822009F8](v5);
  }

  else
  {
    v1[291] = v1[223];

    return MEMORY[0x282200930](v1 + 2);
  }
}

uint64_t sub_2682E706C()
{
  OUTLINED_FUNCTION_7();
  v1[292] = v0;
  if (v0)
  {
    v2 = v1[275];
    v3 = v1[273];
    v4 = v1[272];

    __swift_destroy_boxed_opaque_existential_0(v1 + 203);
    (*(v3 + 8))(v2, v4);
    v5 = sub_2682E7794;
  }

  else
  {
    v5 = sub_2682E711C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2682E711C()
{
  v1 = *(v0 + 2184);
  v13 = *(v0 + 2168);
  v11 = *(v0 + 2120);
  v12 = *(v0 + 2072);
  v2 = *(v0 + 2024);
  v3 = *(v0 + 1976);
  v4 = *(v0 + 1832);
  v14 = *(v0 + 2176);
  v15 = *(v0 + 2200);
  (*(v0 + 2304))(*(v0 + 2192), *(v0 + 2208), v14);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2683CC0C8();
  sub_2683CC578();
  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_55_0();
  v5(v6);
  (*(v11 + 16))(v2, v13, v12);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v12);
  v7 = sub_2683CCC98();
  *(v0 + 1704) = 0u;
  *(v0 + 1720) = 0u;
  *(v0 + 1736) = 0;
  v8 = MEMORY[0x277D5C1D8];
  v4[3] = v7;
  v4[4] = v8;
  __swift_allocate_boxed_opaque_existential_0(v4);
  sub_2683CC338();

  sub_26812D9E0(v0 + 1704, &qword_28024D408, &qword_2683D2470);
  sub_26812D9E0(v2, &qword_28024D400, &qword_2683D2460);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1624));
  (v5)(v15, v14);
  (*(v11 + 8))(v13, v12);
  v9 = OUTLINED_FUNCTION_3_40();

  return MEMORY[0x282200920](v9);
}

uint64_t sub_2682E7398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_15_25();
  v24 = v14[271];
  v25 = v14[253];
  sub_26812D9E0(v14[284], &qword_28024DF28, &qword_2683D5C70);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_2_16();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24, v25, a12, a13, a14);
}

uint64_t sub_2682E7494()
{
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_7_25();
  v1(v0);
  v2 = OUTLINED_FUNCTION_3_40();

  return MEMORY[0x282200920](v2);
}

uint64_t sub_2682E7544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_1_45();
  sub_26812D9E0(v14, &qword_28024DF28, &qword_2683D5C70);

  OUTLINED_FUNCTION_14_23();
  OUTLINED_FUNCTION_2_16();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2682E7614()
{
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_7_25();
  v1(v0);
  v2 = OUTLINED_FUNCTION_3_40();

  return MEMORY[0x282200920](v2);
}

uint64_t sub_2682E76C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_1_45();
  sub_26812D9E0(v14, &qword_28024DF28, &qword_2683D5C70);

  OUTLINED_FUNCTION_14_23();
  OUTLINED_FUNCTION_2_16();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2682E7794()
{
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_7_25();
  v1(v0);
  v2 = OUTLINED_FUNCTION_3_40();

  return MEMORY[0x282200920](v2);
}

uint64_t sub_2682E7844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_1_45();
  sub_26812D9E0(v14, &qword_28024DF28, &qword_2683D5C70);

  OUTLINED_FUNCTION_14_23();
  OUTLINED_FUNCTION_2_16();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2682E7914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_2682E7938);
}

uint64_t sub_2682E7938()
{
  OUTLINED_FUNCTION_14();
  sub_26813CA00(v0[8], (v0 + 2));
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_2682E79E0;
  v2 = v0[9];
  v3 = v0[7];

  return MEMORY[0x2821BADF8](v3, v2, v0 + 2);
}

uint64_t sub_2682E79E0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v3 + 88) = v0;

  sub_26812D9E0(v3 + 16, qword_280251C88, &qword_2683E5E10);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2681AFF98);
  }

  else
  {
    OUTLINED_FUNCTION_40();

    return v6();
  }
}

uint64_t sub_2682E7B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2682E7B3C);
}

uint64_t sub_2682E7B3C()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 80), *(*(v0 + 24) + 104));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2682E7BE0;

  return sub_2681C4D90();
}

uint64_t sub_2682E7BE0()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  if (v0)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 48) = v3;

    return MEMORY[0x2822009F8](sub_2682E7D1C);
  }
}

uint64_t sub_2682E7D1C()
{
  **(v0 + 16) = *(v0 + 48);
  OUTLINED_FUNCTION_40();
  return v1();
}

uint64_t sub_2682E7D54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_2682E63D0();
}

uint64_t sub_2682E7DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2681342AC;

  return MEMORY[0x2821BA190](a1, a2, a3, a4, a5);
}

uint64_t sub_2682E7EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2681342AC;

  return MEMORY[0x2821BA188](a1, a2, a3, a4, a5);
}

uint64_t sub_2682E7F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_268133EC8;

  return MEMORY[0x2821BA180](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2682E8070()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_2682E68BC();
}

uint64_t sub_2682E8120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2681342AC;

  return MEMORY[0x2821B9FE0](a1, a2, a3, a4, a5);
}

uint64_t sub_2682E81EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2681342AC;

  return MEMORY[0x2821B9FF0](a1, a2, a3, a4, a5);
}

uint64_t sub_2682E82B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2681342AC;

  return MEMORY[0x2821B9FE8](a1, a2, a3, a4, a5);
}

uint64_t sub_2682E8384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2681342AC;

  return MEMORY[0x2821B9FF8](a1, a2, a3, a4, a5);
}

uint64_t sub_2682E8478()
{
  OUTLINED_FUNCTION_7();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70);
  OUTLINED_FUNCTION_23(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_11_32(v2);

  return sub_2682E7914(v3, v4, v5);
}

uint64_t objectdestroyTm_3()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70);
  OUTLINED_FUNCTION_3_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 168) & ~v3;
  v6 = *(v5 + 64);
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  v7 = sub_2683CF2A8();
  if (!__swift_getEnumTagSinglePayload(&v0[v4], 1, v7))
  {
    (*(*(v7 - 8) + 8))(&v0[v4], v7);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_2682E8660()
{
  OUTLINED_FUNCTION_7();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70);
  OUTLINED_FUNCTION_23(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_11_32(v2);

  return sub_2682E7B18(v3, v4, v5);
}

uint64_t sub_2682E87E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251EE8, &unk_2683F3E00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251EF0, &unk_2683E67B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_2683CD538();
  sub_268224B98(v6, v2);

  v7 = sub_2683CD418();
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    v8 = &qword_280251EE8;
    v9 = &unk_2683F3E00;
    v10 = v2;
  }

  else
  {
    sub_2683CD388();
    (*(*(v7 - 8) + 8))(v2, v7);
    v11 = sub_2683CD378();
    if (__swift_getEnumTagSinglePayload(v5, 1, v11) != 1)
    {
      v12 = sub_2683CD368();
      (*(*(v11 - 8) + 8))(v5, v11);
      return v12 & 1;
    }

    v8 = &qword_280251EF0;
    v9 = &unk_2683E67B0;
    v10 = v5;
  }

  sub_26812C310(v10, v8, v9);
  v12 = 0;
  return v12 & 1;
}

uint64_t sub_2682E89BC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2682E89FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2682E8A60()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 64);
  sub_2683CCB88();
  v5(v46, v4, 1);
  (*(v2 + 8))(v4, v1);
  sub_2681340E8(v46, v45, &qword_28024D460, &qword_2683D5050);
  if (v45[56] == 255)
  {
    goto LABEL_6;
  }

  sub_2681340E8(v45, v41, &qword_28024D460, &qword_2683D5050);
  if (v44 != 4)
  {
    if (v44 == 7)
    {
      v6 = vorrq_s8(v42, v43);
      if (!(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v41[2] | v41[1] | v41[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v34 = sub_2683CF7E8();
        __swift_project_value_buffer(v34, qword_28027C958);
        v35 = sub_2683CF7C8();
        v36 = sub_2683CFE98();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_2680EB000, v35, v36, "[SetTaskAttribute NeedsValueStrategy] Returning .cancel().", v37, 2u);
          OUTLINED_FUNCTION_38();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v41);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v7 = sub_2683CF7E8();
    __swift_project_value_buffer(v7, qword_28027C958);
    sub_2681340E8(v46, v41, &qword_28024D460, &qword_2683D5050);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_49();
      v11 = OUTLINED_FUNCTION_53();
      v38[0] = v11;
      *v10 = 136315138;
      sub_2681340E8(v41, v40, &qword_28024D460, &qword_2683D5050);
      v12 = OUTLINED_FUNCTION_44();
      __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
      v14 = sub_2683CFAD8();
      v16 = v15;
      sub_2681433DC(v41, &qword_28024D460, &qword_2683D5050);
      v17 = sub_2681610A0(v14, v16, v38);

      *(v10 + 4) = v17;
      OUTLINED_FUNCTION_65(&dword_2680EB000, v18, v19, "[SetTaskAttribute NeedsValueStrategy] Returning .ignore() for task: %s.");
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_2681433DC(v41, &qword_28024D460, &qword_2683D5050);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_2681433DC(v46, &qword_28024D460, &qword_2683D5050);
    return sub_2681433DC(v45, &qword_28024D460, &qword_2683D5050);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v20 = sub_2683CF7E8();
  __swift_project_value_buffer(v20, qword_28027C958);
  sub_2681340E8(v46, v40, &qword_28024D460, &qword_2683D5050);
  v21 = sub_2683CF7C8();
  v22 = sub_2683CFE98();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_49();
    v24 = OUTLINED_FUNCTION_53();
    v39 = v24;
    *v23 = 136315138;
    sub_2681340E8(v40, v38, &qword_28024D460, &qword_2683D5050);
    v25 = OUTLINED_FUNCTION_44();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    v27 = sub_2683CFAD8();
    v29 = v28;
    sub_2681433DC(v40, &qword_28024D460, &qword_2683D5050);
    v30 = sub_2681610A0(v27, v29, &v39);

    *(v23 + 4) = v30;
    OUTLINED_FUNCTION_65(&dword_2680EB000, v31, v32, "[SetTaskAttribute NeedsValueStrategy] Returning .handle() for task: %s.");
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    sub_2681433DC(v40, &qword_28024D460, &qword_2683D5050);
  }

  sub_2683CC2A8();
  sub_2681433DC(v46, &qword_28024D460, &qword_2683D5050);
  sub_26813A1A0(v41);
  return sub_2681433DC(v45, &qword_28024D460, &qword_2683D5050);
}

uint64_t sub_2682E8FB0()
{
  OUTLINED_FUNCTION_14();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_2683CCC18();
  v1[19] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_15_1();
  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2682E9058(uint64_t a1)
{
  v3 = *(v1 + 160);
  v2 = *(v1 + 168);
  v4 = *(v1 + 152);
  v5 = *(*(v1 + 144) + 64);
  sub_2683CCB88();
  v5(v2, 0);
  (*(v3 + 8))(v2, v4);
  v6 = *(v1 + 72);
  if (v6 == 4)
  {
    sub_268193F18((v1 + 16), v1 + 80);
    v7 = *(v1 + 104);
    v8 = *(v1 + 112);
    __swift_project_boxed_opaque_existential_1((v1 + 80), v7);
    v14 = (*(v8 + 24) + **(v8 + 24));
    v9 = swift_task_alloc();
    *(v1 + 176) = v9;
    *v9 = v1;
    OUTLINED_FUNCTION_26_4(v9);

    return v14(1, v7, v8);
  }

  else
  {
    if (v6 == 255)
    {
      sub_2681433DC(v1 + 16, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v1 + 16);
    }

    sub_26812C6B8();
    v11 = swift_allocError();
    OUTLINED_FUNCTION_29_9(v11, v12);

    OUTLINED_FUNCTION_40();

    return v13();
  }
}

uint64_t sub_2682E9278()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v0;

  if (v0)
  {
    v5 = sub_2682E9600;
  }

  else
  {
    v5 = sub_2682E9380;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2682E9380()
{
  v24 = v0;
  v1 = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  v2 = sub_2683CC9C8();
  v3 = sub_2681DFEB4(v1);

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v4 = sub_2683CF7E8();
  __swift_project_value_buffer(v4, qword_28027C958);
  v5 = v3;
  v6 = sub_2683CF7C8();
  v7 = sub_2683CFE98();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_49();
    v22 = OUTLINED_FUNCTION_53();
    v23[0] = v22;
    *v8 = 136315138;
    v9 = v5;
    v10 = [v9 description];
    v11 = sub_2683CFA78();
    v13 = v12;

    v14 = sub_2681610A0(v11, v13, v23);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_2680EB000, v6, v7, "[SetTaskAttribute NeedsValueStrategy] Parsed response and updated intent: %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v15 = v0[23];
  v16 = v0[15];
  v17 = sub_2683CC9D8();
  v18 = [v17 resolvedValue];

  sub_2683D0038();
  swift_unknownObjectRelease();
  sub_268216858();
  sub_2683CC618();

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F00, &qword_2683E6908);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);

  OUTLINED_FUNCTION_7_4();

  return v20();
}

uint64_t sub_2682E9600()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2682E9664()
{
  OUTLINED_FUNCTION_14();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = type metadata accessor for Snippet(0);
  v1[30] = v4;
  OUTLINED_FUNCTION_23(v4);
  v1[31] = OUTLINED_FUNCTION_55();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v5 = sub_2683CC9A8();
  v1[35] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[36] = v6;
  v1[37] = OUTLINED_FUNCTION_15_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v7);
  v1[38] = OUTLINED_FUNCTION_15_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v8);
  v1[39] = OUTLINED_FUNCTION_15_1();
  v9 = sub_2683CC138();
  v1[40] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[41] = v10;
  v1[42] = OUTLINED_FUNCTION_55();
  v1[43] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v11);
  v1[44] = OUTLINED_FUNCTION_15_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v12);
  v1[45] = v13;
  v1[46] = *(v14 + 64);
  v1[47] = OUTLINED_FUNCTION_55();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v15 = sub_2683CC748();
  v1[55] = v15;
  OUTLINED_FUNCTION_3_1(v15);
  v1[56] = v16;
  v1[57] = OUTLINED_FUNCTION_55();
  v1[58] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  v1[59] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v1[60] = v18;
  v1[61] = OUTLINED_FUNCTION_15_1();
  v19 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_2682E9990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_21_19();
  a33 = v35;
  a34 = v36;
  OUTLINED_FUNCTION_26_17();
  a32 = v34;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v37 = sub_2683CF7E8();
  __swift_project_value_buffer(v37, qword_28027C958);
  OUTLINED_FUNCTION_21();
  v38();
  v39 = sub_2683CF7C8();
  v40 = sub_2683CFE98();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = *(v34 + 464);
    v42 = *(v34 + 448);
    v82 = *(v34 + 440);
    v43 = OUTLINED_FUNCTION_49();
    v86 = OUTLINED_FUNCTION_53();
    a22 = v86;
    *v43 = 136315138;
    v84 = v40;
    sub_2683CC9E8();
    v44 = sub_2683CC738();
    v46 = v45;
    (*(v42 + 8))(v41, v82);
    v47 = OUTLINED_FUNCTION_44();
    v48(v47);
    v49 = sub_2681610A0(v44, v46, &a22);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_2680EB000, v39, v84, "[SetTaskAttribute NeedsValueStrategy] Making prompt for %s.", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v86);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v50 = OUTLINED_FUNCTION_44();
    v51(v50);
  }

  v53 = *(v34 + 448);
  v52 = *(v34 + 456);
  v54 = *(v34 + 440);
  sub_2683CC9E8();
  v55 = sub_2683CC738();
  v57 = v56;
  (*(v53 + 8))(v52, v54);

  v58 = OUTLINED_FUNCTION_0_0();
  v59 = sub_268381174(v58);
  *(v34 + 560) = v59;
  if (v59 == 7)
  {
    sub_26812C6B8();
    v87 = swift_allocError();
    *v60 = v55;
    *(v60 + 8) = v57;
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    *(v60 + 32) = 1;
    swift_willThrow();
    v73 = *(v34 + 376);
    v74 = *(v34 + 352);
    v75 = *(v34 + 344);
    v76 = *(v34 + 336);
    v77 = *(v34 + 312);
    v78 = *(v34 + 304);
    v79 = *(v34 + 296);
    v80 = *(v34 + 272);
    v81 = *(v34 + 264);
    v83 = *(v34 + 256);
    v85 = *(v34 + 248);

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_72_0();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, v73, v74, v75, v76, v77, v78, v79, v80, v81, v83, v85, v87, a22, a23, a24, a25, a26);
  }

  else
  {

    v70 = swift_task_alloc();
    *(v34 + 496) = v70;
    *v70 = v34;
    v70[1] = sub_2682E9D74;
    OUTLINED_FUNCTION_72_0();

    return sub_2682EB154(v71);
  }
}

uint64_t sub_2682E9D74()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 504) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_24_3();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_24_3();

  return MEMORY[0x2822009F8](v8);
}

void sub_2682E9FA8()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 560);
  v3 = *(v0 + 424);
  v4 = *(v0 + 352);
  v5 = *(v0 + 304);
  v6 = *(v0 + 240);
  v80 = *(*(v0 + 232) + 8);
  __swift_storeEnumTagSinglePayload(*(v0 + 432), 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  *(v0 + 16) = v2;
  *(v0 + 40) = &type metadata for SetTaskAttribute.Parameter;
  *(v0 + 48) = &off_28790CBF0;
  sub_2681687C8();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v7 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  sub_2683CC118();
  sub_2683CED08();
  v8 = OUTLINED_FUNCTION_33_1();
  __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  v11 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v12 = swift_allocObject();
  *(v0 + 512) = v12;
  *(v12 + 16) = xmmword_2683D2250;
  *(v12 + 32) = v1;
  v13 = v1;
  if (sub_2683ABE58())
  {
    sub_2683ABE60();
    if ((v12 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D616C90](0, v12);
    }

    else
    {
      v14 = *(v12 + 32);
    }

    v15 = v14;
    v16 = [v14 catId];

    v76 = sub_2683CFA78();
    v79 = v17;
  }

  else
  {
    v76 = 0;
    v79 = 0;
  }

  v18 = *(v0 + 432);
  v20 = *(v0 + 408);
  v19 = *(v0 + 416);
  v22 = *(v0 + 360);
  v21 = *(v0 + 368);
  v71 = *(v0 + 344);
  v72 = *(v0 + 352);
  v23 = *(v0 + 328);
  v24 = *(v0 + 336);
  v70 = *(v0 + 320);
  v73 = *(v0 + 312);
  v74 = *(v0 + 304);
  v75 = v18;
  v77 = *(v0 + 240);
  v78 = *(v0 + 400);
  sub_2681340E8(*(v0 + 424), v19, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v18, v20, &qword_28024E770, &qword_2683D80D0);
  v25 = *(v22 + 80);
  v26 = (v25 + 24) & ~v25;
  v27 = (v21 + v25 + v26) & ~v25;
  v28 = swift_allocObject();
  *(v0 + 520) = v28;
  *(v28 + 16) = v80;
  sub_2681430AC(v19, v28 + v26);
  sub_2681430AC(v20, v28 + v27);
  (*(v23 + 16))(v24, v71, v70);
  v29 = swift_task_alloc();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = v76;
  *(v29 + 48) = v79;
  *(v29 + 56) = v72;
  *(v29 + 64) = 513;
  *(v29 + 72) = sub_26814311C;
  *(v29 + 80) = v28;
  *(v29 + 88) = 0;
  *(v29 + 96) = v73;
  *(v29 + 104) = 2;
  *(v29 + 112) = v74;

  sub_2683CC8E8();

  sub_2681340E8(v75, v78, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v78, 1, v77) == 1)
  {
    v30 = (v0 + 400);
  }

  else
  {
    v31 = *(v0 + 424);
    v32 = *(v0 + 392);
    v33 = *(v0 + 240);
    sub_26814320C(*(v0 + 400), *(v0 + 272));
    sub_2681340E8(v31, v32, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v32, 1, v33) != 1)
    {
      v53 = *(v0 + 264);
      v54 = *(v0 + 272);
      v55 = *(v0 + 240);
      sub_26814320C(*(v0 + 392), v53);
      *(v0 + 160) = v55;
      v56 = sub_268143270();
      *(v0 + 168) = v56;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
      sub_2681432C8(v54, boxed_opaque_existential_0);
      *(v0 + 200) = v55;
      *(v0 + 208) = v56;
      v58 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
      sub_2681432C8(v53, v58);
      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 528) = v59;
      *v59 = v60;
      v59[1] = sub_2682EA694;
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X5 }
    }

    v30 = (v0 + 392);
    sub_26814332C(*(v0 + 272));
  }

  v34 = *v30;
  v35 = *(v0 + 432);
  v36 = *(v0 + 384);
  v37 = *(v0 + 240);
  sub_2681433DC(v34, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v35, v36, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v37);
  v39 = *(v0 + 384);
  v40 = *(v0 + 240);
  if (EnumTagSinglePayload == 1)
  {
    v41 = *(v0 + 424);
    v42 = *(v0 + 376);
    sub_2681433DC(v39, &qword_28024E770, &qword_2683D80D0);
    sub_2681340E8(v41, v42, &qword_28024E770, &qword_2683D80D0);
    v43 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v43, v44, v40) == 1)
    {
      sub_2681433DC(*(v0 + 376), &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 552) = v45;
      *v45 = v46;
      v45[1] = sub_2682EAEB4;
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X3 }
    }

    v63 = *(v0 + 240);
    v64 = *(v0 + 248);
    sub_26814320C(*(v0 + 376), v64);
    *(v0 + 80) = v63;
    *(v0 + 88) = sub_268143270();
    v65 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    sub_2681432C8(v64, v65);
    OUTLINED_FUNCTION_16_16();
    OUTLINED_FUNCTION_10_2();
    *(v0 + 544) = v66;
    *v66 = v67;
    v66[1] = sub_2682EAC04;
  }

  else
  {
    v49 = *(v0 + 256);
    sub_26814320C(v39, v49);
    *(v0 + 120) = v40;
    *(v0 + 128) = sub_268143270();
    v50 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
    sub_2681432C8(v49, v50);
    OUTLINED_FUNCTION_16_16();
    OUTLINED_FUNCTION_10_2();
    *(v0 + 536) = v51;
    *v51 = v52;
    v51[1] = sub_2682EA954;
  }

  OUTLINED_FUNCTION_24_3();

  __asm { BR              X4 }
}

uint64_t sub_2682EA694()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2682EA7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_26_17();
  v29 = *(v26 + 264);
  v30 = *(v26 + 272);

  sub_26814332C(v29);
  sub_26814332C(v30);
  v31 = OUTLINED_FUNCTION_1_46();
  v32(v31);
  v33 = OUTLINED_FUNCTION_17_16();
  v34(v33);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v35, v36, v37);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v38, v39, v40);
  sub_2681433DC(v27, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v30, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_72_0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2682EA954()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2682EAA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_26_17();
  v29 = *(v26 + 256);

  sub_26814332C(v29);
  v30 = OUTLINED_FUNCTION_1_46();
  v31(v30);
  v32 = OUTLINED_FUNCTION_17_16();
  v33(v32);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v34, v35, v36);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v37, v38, v39);
  sub_2681433DC(v27, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v29, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_72_0();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2682EAC04()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2682EAD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_26_17();
  v29 = *(v26 + 248);

  sub_26814332C(v29);
  v30 = OUTLINED_FUNCTION_1_46();
  v31(v30);
  v32 = OUTLINED_FUNCTION_17_16();
  v33(v32);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v34, v35, v36);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v37, v38, v39);
  sub_2681433DC(v27, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v29, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_72_0();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2682EAEB4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2682EAFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_26_17();

  v29 = OUTLINED_FUNCTION_1_46();
  v30(v29);
  v31 = OUTLINED_FUNCTION_17_16();
  v32(v31);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v33, v34, v35);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v36, v37, v38);
  sub_2681433DC(v27, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v26, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_72_0();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2682EB154(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  v3 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2682EB180()
{
  switch(*(v0 + 64))
  {
    case 1:
      OUTLINED_FUNCTION_35_2();
      v7 = swift_task_alloc();
      *(v0 + 32) = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_26_4(v7);

      result = sub_2681F312C();
      break;
    case 2:
      OUTLINED_FUNCTION_35_2();
      v5 = swift_task_alloc();
      *(v0 + 40) = v5;
      *v5 = v0;
      OUTLINED_FUNCTION_26_4(v5);

      result = sub_2681F2FE4();
      break;
    case 3:
    case 6:
      sub_26812C6B8();
      v1 = swift_allocError();
      OUTLINED_FUNCTION_29_9(v1, v2);
      OUTLINED_FUNCTION_40();

      result = v3();
      break;
    case 4:
      OUTLINED_FUNCTION_35_2();
      v8 = swift_task_alloc();
      *(v0 + 48) = v8;
      *v8 = v0;
      OUTLINED_FUNCTION_26_4(v8);

      result = sub_2681F31D0();
      break;
    case 5:
      OUTLINED_FUNCTION_35_2();
      v9 = swift_task_alloc();
      *(v0 + 56) = v9;
      *v9 = v0;
      OUTLINED_FUNCTION_26_4(v9);

      result = sub_2681F2F40();
      break;
    default:
      OUTLINED_FUNCTION_35_2();
      v6 = swift_task_alloc();
      *(v0 + 24) = v6;
      *v6 = v0;
      OUTLINED_FUNCTION_26_4(v6);

      result = sub_2681F3088();
      break;
  }

  return result;
}

uint64_t sub_2682EB428()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2682EB510()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2682EB5F8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2682EB6E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_2682E8FB0();
}

uint64_t sub_2682EB794()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_2682E9664();
}

unint64_t sub_2682EB840()
{
  result = qword_280251EF8;
  if (!qword_280251EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251EF8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_46()
{
  v2 = v0[37];
  v3 = v0[31];
  *(v1 - 88) = v0[32];
  *(v1 - 80) = v3;
  return v2;
}

uint64_t sub_2682EB920()
{
  sub_2683CD588();
  OUTLINED_FUNCTION_2_31();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_42();
  *v0 = 0x5473736572646461;
  v0[1] = 0xEB00000000657079;
  v4 = OUTLINED_FUNCTION_3_41();
  v5(v4);
  sub_2683CD578();
  v6 = OUTLINED_FUNCTION_1_47();
  result = v7(v6);
  qword_28027CAA8 = v1;
  unk_28027CAB0 = v2;
  return result;
}

uint64_t sub_2682EBA04()
{
  sub_2683CD588();
  OUTLINED_FUNCTION_2_31();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_42();
  *v0 = 0xD000000000000010;
  v0[1] = 0x80000002683FCFD0;
  v4 = OUTLINED_FUNCTION_3_41();
  v5(v4);
  sub_2683CD578();
  v6 = OUTLINED_FUNCTION_1_47();
  result = v7(v6);
  qword_28027CAB8 = v1;
  unk_28027CAC0 = v2;
  return result;
}

uint64_t sub_2682EBB30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_2682EBB70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2682EBBF4(uint64_t a1)
{
  sub_2683CC518();
  if (qword_28024CB58 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_28024CB58);
  }

  sub_2683CCFA8();
  sub_2683CC438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  sub_2683CC818();
  v2 = sub_268129504(0, &qword_28024D348, 0x277CD4060);
  OUTLINED_FUNCTION_23_22();
  sub_2683CF258();
  OUTLINED_FUNCTION_34_14();
  if (a1)
  {
    __swift_project_boxed_opaque_existential_1(v4, v2);
    OUTLINED_FUNCTION_32_12();

    sub_2683CC418();
  }

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_2682EBD0C(uint64_t a1)
{
  sub_2683CC518();
  if (qword_28024CB58 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_28024CB58);
  }

  sub_2683CCFA8();
  sub_2683CC438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F980, &qword_2683DD850);
  sub_2683CC818();
  v2 = sub_268129504(0, &qword_28024F008, 0x277CD3A20);
  OUTLINED_FUNCTION_23_22();
  sub_2683CF258();
  OUTLINED_FUNCTION_34_14();
  if (a1)
  {
    __swift_project_boxed_opaque_existential_1(v4, v2);
    OUTLINED_FUNCTION_32_12();

    sub_2683CC418();
  }

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_2682EBE24()
{
  sub_2683CC518();
  if (qword_28024CB58 != -1)
  {
    swift_once();
  }

  sub_2683CCFA8();
  sub_2683CC438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F10, &unk_2683E6A80);
  v0 = sub_2683CC818();
  v1 = sub_268129504(0, &qword_280251F18, 0x277CD4110);
  v6[3] = v1;
  v6[4] = &protocol witness table for INSetTaskAttributeIntentResponse;
  v6[0] = v0;
  sub_2683CC828();
  v2 = sub_2683CF258();
  v4 = v3;

  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v6, v1);
    sub_2682EC08C(v2, v4, INSetTaskAttributeIntentResponse.contextEntities.getter);

    sub_2683CC418();
  }

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_2682EBF74(uint64_t a1)
{
  sub_2683CC518();
  if (qword_28024CB58 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_28024CB58);
  }

  sub_2683CCFA8();
  sub_2683CC438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F28, &unk_2683E6AB0);
  sub_2683CC818();
  v2 = sub_268129504(0, &qword_280251F30, 0x277CD3B38);
  OUTLINED_FUNCTION_23_22();
  sub_2683CF258();
  OUTLINED_FUNCTION_34_14();
  if (a1)
  {
    __swift_project_boxed_opaque_existential_1(v4, v2);
    OUTLINED_FUNCTION_32_12();

    sub_2683CC418();
  }

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_2682EC08C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v44 = a1;
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  v5 = OUTLINED_FUNCTION_23(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  v9 = OUTLINED_FUNCTION_23(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v46 = sub_2683CF8B8();
  OUTLINED_FUNCTION_0_3();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v42 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a3(v15);
  v18 = result;
  v19 = 0;
  v20 = result + 40;
  v21 = *(result + 16);
  v40 = v13;
  v41 = (v13 + 32);
  v43 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = (v20 + 16 * v19); ; i += 2)
  {
    if (v21 == v19)
    {

      return v43;
    }

    if (v19 >= *(v18 + 16))
    {
      break;
    }

    if (*(i - 1))
    {
      v23 = *i;
      ObjectType = swift_getObjectType();
      sub_2683CF828();
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
      swift_unknownObjectRetain();
      sub_26816A834(v44, v45, 0, 0, v7, ObjectType, v23, v11);
      swift_unknownObjectRelease();
      sub_2681433DC(v7, &qword_28024DD70, &unk_2683D4E80);
      if (__swift_getEnumTagSinglePayload(v11, 1, v46) != 1)
      {
        v32 = *v41;
        (*v41)(v42, v11, v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2682E48E8();
          v43 = v37;
        }

        v34 = *(v43 + 16);
        if (v34 >= *(v43 + 24) >> 1)
        {
          sub_2682E48E8();
          v43 = v38;
        }

        ++v19;
        v35 = v42;
        v36 = v43;
        *(v43 + 16) = v34 + 1;
        result = (v32)(v36 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34, v35, v46);
        goto LABEL_2;
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v46);
    }

    result = sub_2681433DC(v11, &qword_28024DD28, &qword_2683D4CF0);
    ++v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_2682EC3B0()
{
  OUTLINED_FUNCTION_14();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = type metadata accessor for Snippet(0);
  v1[30] = v4;
  OUTLINED_FUNCTION_23(v4);
  v1[31] = OUTLINED_FUNCTION_55();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v5 = sub_2683CC9A8();
  v1[35] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[36] = v6;
  v1[37] = OUTLINED_FUNCTION_15_1();
  v7 = sub_2683CC138();
  v1[38] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[39] = v8;
  v1[40] = OUTLINED_FUNCTION_55();
  v1[41] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v9);
  v1[42] = OUTLINED_FUNCTION_15_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v10);
  v1[43] = OUTLINED_FUNCTION_15_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v11);
  v1[44] = OUTLINED_FUNCTION_15_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v12);
  v1[45] = v13;
  v1[46] = *(v14 + 64);
  v1[47] = OUTLINED_FUNCTION_55();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_2682EC62C()
{
  v1 = v0[54];
  v3 = v0[28];
  v2 = v0[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F10, &unk_2683E6A80);
  v4 = sub_2683CC848();
  v5 = sub_2682EDE04(v4);

  sub_2682EE2D0(v3, v5);
  v6 = sub_2683CC818();
  v0[55] = [v6 warnings];

  v7 = sub_2683CC818();
  v8 = [v7 modifiedTask];

  sub_2681A4078();
  v0[56] = *(v2 + 208);
  sub_2682EE79C(v3, v1);
  v9 = v0[30];
  __swift_storeEnumTagSinglePayload(v0[54], 0, 1, v9);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = swift_task_alloc();
  v0[57] = v13;
  *v13 = v0;
  v13[1] = sub_2682EC8E0;
  OUTLINED_FUNCTION_48_3();

  return sub_2682EEB14();
}

uint64_t sub_2682EC8E0()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  *v4 = *v1;
  v3[58] = v5;
  v3[59] = v0;

  if (v0)
  {
    v6 = v3[54];
    sub_2681433DC(v3[53], &qword_28024E770, &qword_2683D80D0);
    sub_2681433DC(v6, &qword_28024E770, &qword_2683D80D0);
    v7 = sub_2682EDCAC;
  }

  else
  {
    v7 = sub_2682ECA24;
  }

  return MEMORY[0x2822009F8](v7);
}

void sub_2682ECA24()
{
  v1 = v0[58];
  v2 = v0[44];
  v92 = v0[55] != 0;
  sub_2682EBE24();
  v3 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  sub_2683CED08();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_2683CC1D8();
  v8 = OUTLINED_FUNCTION_33_1();
  __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  sub_2683CC108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v11 = swift_allocObject();
  v0[60] = v11;
  *(v11 + 16) = xmmword_2683D2250;
  *(v11 + 32) = v1;
  v12 = v1;
  if (sub_2683ABE58())
  {
    sub_2683ABE60();
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26D616C90](0, v11);
    }

    else
    {
      v13 = *(v11 + 32);
    }

    v14 = v13;
    v15 = [v13 catId];

    v88 = sub_2683CFA78();
    v91 = v16;
  }

  else
  {
    v88 = 0;
    v91 = 0;
  }

  v17 = v0[56];
  v18 = v0[54];
  v87 = v18;
  v20 = v0[51];
  v19 = v0[52];
  v22 = v0[45];
  v21 = v0[46];
  v84 = v0[44];
  v85 = v0[43];
  v23 = v0[39];
  v81 = v0[40];
  v82 = v0[38];
  v83 = v0[41];
  v86 = v0[42];
  v89 = v0[30];
  v90 = v0[50];
  sub_26818F510(v0[53], v19, &qword_28024E770, &qword_2683D80D0);
  sub_26818F510(v18, v20, &qword_28024E770, &qword_2683D80D0);
  v24 = *(v22 + 80);
  v25 = (v24 + 24) & ~v24;
  v26 = (v21 + v24 + v25) & ~v24;
  v27 = swift_allocObject();
  v0[61] = v27;
  *(v27 + 16) = v17;
  sub_2681430AC(v19, v27 + v25);
  sub_2681430AC(v20, v27 + v26);
  (*(v23 + 16))(v81, v83, v82);
  v28 = swift_task_alloc();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = v88;
  *(v28 + 48) = v91;
  *(v28 + 56) = v84;
  *(v28 + 64) = 2;
  *(v28 + 65) = v92;
  *(v28 + 72) = sub_26814311C;
  *(v28 + 80) = v27;
  *(v28 + 88) = 0;
  *(v28 + 96) = v85;
  *(v28 + 104) = 2;
  *(v28 + 112) = v86;

  sub_2683CC8E8();

  sub_26818F510(v87, v90, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v90, 1, v89) == 1)
  {
    v29 = v0 + 50;
  }

  else
  {
    v30 = v0[53];
    v31 = v0[49];
    v32 = v0[30];
    sub_2682EF828(v0[50], v0[34], type metadata accessor for Snippet);
    sub_26818F510(v30, v31, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v31, 1, v32) != 1)
    {
      v58 = v0[33];
      v59 = v0[34];
      v60 = v0[30];
      OUTLINED_FUNCTION_12_22();
      sub_2682EF828(v61, v58, v62);
      v0[20] = v60;
      OUTLINED_FUNCTION_4_40();
      v65 = sub_2682EFA98(v63, v64, &protocol conformance descriptor for Snippet);
      v0[21] = v65;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      sub_2682EF778(v59, boxed_opaque_existential_0, v32);
      v0[25] = v60;
      v0[26] = v65;
      v67 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
      sub_2682EF778(v58, v67, v32);
      OUTLINED_FUNCTION_14_24(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_10_2();
      v0[62] = v68;
      *v68 = v69;
      OUTLINED_FUNCTION_39_11(v68);
      OUTLINED_FUNCTION_72_0();

      __asm { BR              X5 }
    }

    v29 = v0 + 49;
    OUTLINED_FUNCTION_3_42();
    sub_2682EF7D4(v33, v34);
  }

  v35 = *v29;
  v36 = v0[54];
  v37 = v0[48];
  v38 = v0[30];
  sub_2681433DC(v35, &qword_28024E770, &qword_2683D80D0);
  sub_26818F510(v36, v37, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v38);
  v40 = v0[30];
  if (EnumTagSinglePayload == 1)
  {
    sub_2681433DC(v0[48], &qword_28024E770, &qword_2683D80D0);
    OUTLINED_FUNCTION_55_1();
    sub_26818F510(v41, v42, v43, &qword_2683D80D0);
    v44 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v44, v45, v40) == 1)
    {
      sub_2681433DC(v0[47], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_14_24(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_10_2();
      v0[65] = v46;
      *v46 = v47;
      OUTLINED_FUNCTION_39_11(v46);
      OUTLINED_FUNCTION_72_0();

      __asm { BR              X3 }
    }

    v73 = v0[30];
    v72 = v0[31];
    sub_2682EF828(v0[47], v72, type metadata accessor for Snippet);
    v0[10] = v73;
    OUTLINED_FUNCTION_4_40();
    v0[11] = sub_2682EFA98(v74, v75, &protocol conformance descriptor for Snippet);
    v76 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    sub_2682EF778(v72, v76, type metadata accessor for Snippet);
    OUTLINED_FUNCTION_14_24(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_10_2();
    v0[64] = v77;
    *v77 = v78;
    OUTLINED_FUNCTION_39_11(v77);
  }

  else
  {
    v50 = v0[32];
    OUTLINED_FUNCTION_12_22();
    sub_2682EF828(v51, v50, v52);
    v0[15] = v40;
    OUTLINED_FUNCTION_4_40();
    v0[16] = sub_2682EFA98(v53, v54, &protocol conformance descriptor for Snippet);
    v55 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    sub_2682EF778(v50, v55, v38);
    OUTLINED_FUNCTION_14_24(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_10_2();
    v0[63] = v56;
    *v56 = v57;
    OUTLINED_FUNCTION_39_11(v56);
  }

  OUTLINED_FUNCTION_72_0();

  __asm { BR              X4 }
}

uint64_t sub_2682ED174()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2682ED280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v21 = v20[58];
  v44 = v20[53];
  v45 = v20[54];
  v22 = v20[39];
  v23 = v20[34];
  v24 = v20[33];

  sub_2682EF7D4(v24, type metadata accessor for Snippet);
  sub_2682EF7D4(v23, type metadata accessor for Snippet);
  v25 = OUTLINED_FUNCTION_32_3();
  v26(v25);
  v27 = OUTLINED_FUNCTION_74_0();
  v28(v27);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v29, v30, v31);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v32, v33, v34);
  OUTLINED_FUNCTION_1_48();
  sub_2681433DC(v24, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(type metadata accessor for Snippet, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22 + 8, &qword_28024D400, &qword_2683D2460);
  sub_2681433DC((v20 + 2), &qword_28024E7B8, &unk_2683D80E0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, v44, v45, a18, a19, a20);
}

uint64_t sub_2682ED474()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2682ED578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_19_26();
  v24 = *(v21 + 256);

  OUTLINED_FUNCTION_3_42();
  sub_2682EF7D4(v24, v25);
  v26 = OUTLINED_FUNCTION_32_3();
  v27(v26);
  v28 = OUTLINED_FUNCTION_74_0();
  v29(v28);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v30, v31, v32);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v33, v34, v35);
  OUTLINED_FUNCTION_1_48();
  sub_2681433DC(v22, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v20 + 8, &qword_28024D400, &qword_2683D2460);
  sub_2681433DC(v21 + 16, &qword_28024E7B8, &unk_2683D80E0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2682ED730()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2682ED834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_19_26();
  v24 = *(v21 + 248);

  OUTLINED_FUNCTION_3_42();
  sub_2682EF7D4(v24, v25);
  v26 = OUTLINED_FUNCTION_32_3();
  v27(v26);
  v28 = OUTLINED_FUNCTION_74_0();
  v29(v28);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v30, v31, v32);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v33, v34, v35);
  OUTLINED_FUNCTION_1_48();
  sub_2681433DC(v22, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v20 + 8, &qword_28024D400, &qword_2683D2460);
  sub_2681433DC(v21 + 16, &qword_28024E7B8, &unk_2683D80E0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2682ED9EC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2682EDAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v21 = v20[58];
  v22 = v20[54];
  v23 = v20[39];
  v24 = v20[36];

  v25 = OUTLINED_FUNCTION_32_3();
  v26(v25);
  v27 = OUTLINED_FUNCTION_74_0();
  v28(v27);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v29, v30, v31);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v32, v33, v34);
  OUTLINED_FUNCTION_1_48();
  sub_2681433DC(v23 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);
  sub_2681433DC((v20 + 2), &qword_28024E7B8, &unk_2683D80E0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_2682EDCAC()
{
  sub_2681433DC(v0 + 16, &qword_28024E7B8, &unk_2683D80E0);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_48_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2682EDE04(void *a1)
{
  v68 = a1;
  v2 = sub_26838F274(sub_2682EFAE0, &v65, &unk_2878FD498);
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4 == 1)
  {
    v22 = *(v2 + 32);

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v23 = sub_2683CF7E8();
    __swift_project_value_buffer(v23, qword_28027C958);
    v24 = a1;
    v25 = sub_2683CF7C8();
    v26 = sub_2683CFE98();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v70[0] = v28;
      *v27 = 136315394;
      v69 = v22;
      v29 = sub_2683CFAD8();
      v31 = sub_2681610A0(v29, v30, v70);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = v24;
      v33 = [v32 description];
      v34 = sub_2683CFA78();
      v36 = v35;

      v37 = sub_2681610A0(v34, v36, v70);

      *(v27 + 14) = v37;
      _os_log_impl(&dword_2680EB000, v25, v26, "[SetTaskAttribute HandleIntentStrategy] Computed change type as %s for intent: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v28, -1, -1);
      OUTLINED_FUNCTION_36();
    }
  }

  else if (v4)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v38 = sub_2683CF7E8();
    __swift_project_value_buffer(v38, qword_28027C958);
    v39 = a1;

    v40 = sub_2683CF7C8();
    v41 = sub_2683CFE98();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v70[0] = v43;
      *v42 = 136315394;
      MEMORY[0x26D6167A0](v3, &_s20HandleIntentStrategyV10ChangeTypeON);

      v52 = OUTLINED_FUNCTION_33_13(v44, v45, v46, v47, v48, v49, v50, v51, v65, v66, v67, v68);

      *(v42 + 4) = v52;
      *(v42 + 12) = 2080;
      v53 = v39;
      v54 = [v53 description];
      sub_2683CFA78();

      v63 = OUTLINED_FUNCTION_33_13(v55, v56, v57, v58, v59, v60, v61, v62, v65, v66, v67, v68);

      *(v42 + 14) = v63;
      _os_log_impl(&dword_2680EB000, v40, v41, "[SetTaskAttribute HandleIntentStrategy] Found multiple change types (%s) for intent: %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v43, -1, -1);
      OUTLINED_FUNCTION_36();
    }

    else
    {
    }

    return 7;
  }

  else
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v5 = sub_2683CF7E8();
    __swift_project_value_buffer(v5, qword_28027C958);
    v6 = a1;
    v7 = sub_2683CF7C8();
    v8 = sub_2683CFE78();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v70[0] = v10;
      *v9 = 136315138;
      v11 = v6;
      v12 = [v11 description];
      sub_2683CFA78();

      v21 = OUTLINED_FUNCTION_33_13(v13, v14, v15, v16, v17, v18, v19, v20, v65, v66, v67, v68);

      *(v9 + 4) = v21;
      _os_log_impl(&dword_2680EB000, v7, v8, "[SetTaskAttribute HandleIntentStrategy] Did not find a change on intent: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D617A40](v10, -1, -1);
      OUTLINED_FUNCTION_36();
    }

    return 8;
  }

  return v22;
}

void sub_2682EE2D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F10, &unk_2683E6A80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v29 - v8;
  if (sub_2682EF18C(v4) == 0x6E776F6E6B6E75 && v10 == 0xE700000000000000)
  {
  }

  else
  {
    v12 = sub_2683D0598();

    if ((v12 & 1) == 0)
    {
      sub_26818F510(v3 + 48, &v33, &qword_28024F020, &unk_2683E6AA0);
      if (v34)
      {
        sub_268128148(&v33, v31);
        if (qword_28024C8E0 != -1)
        {
          swift_once();
        }

        v13 = sub_2683CF7E8();
        __swift_project_value_buffer(v13, qword_28027C958);
        v14 = sub_2683CF7C8();
        v15 = sub_2683CFE98();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_2680EB000, v14, v15, "[SetTaskAttribute HandleIntentStrategy] Registering correction", v16, 2u);
          MEMORY[0x26D617A40](v16, -1, -1);
        }

        __swift_project_boxed_opaque_existential_1(v31, v31[3]);
        (*(v7 + 16))(v9, a1, v6);
        sub_26813CA00(v3, &v33);
        sub_26813CA00(v3 + 88, v30);
        __swift_mutable_project_boxed_opaque_existential_1(v30, v30[3]);
        v29[3] = &type metadata for NotebookFlowCreator;
        v29[4] = &off_287900FD8;
        v17 = type metadata accessor for CorrectingSetTaskAttributeFlow(0);
        v18 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(v29, &type metadata for NotebookFlowCreator);
        v19 = sub_2682EF8EC(v9, &v33, v18);
        __swift_destroy_boxed_opaque_existential_0(v29);
        __swift_destroy_boxed_opaque_existential_0(v30);
        v34 = v17;
        v35 = sub_2682EFA98(&qword_280251F20, type metadata accessor for CorrectingSetTaskAttributeFlow, &unk_2683F0E60);
        *&v33 = v19;
        sub_2683CBED8();
        __swift_destroy_boxed_opaque_existential_0(&v33);
        __swift_destroy_boxed_opaque_existential_0(v31);
        return;
      }

      sub_2681433DC(&v33, &qword_28024F020, &unk_2683E6AA0);
    }
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v20 = sub_2683CF7E8();
  __swift_project_value_buffer(v20, qword_28027C958);
  sub_2682EF884(v3, v31);
  v21 = sub_2683CF7C8();
  v22 = sub_2683CFE98();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30[0] = v24;
    *v23 = 136315394;
    LOBYTE(v33) = v4;
    v25 = sub_2683CFAD8();
    v27 = sub_2681610A0(v25, v26, v30);

    *(v23 + 4) = v27;
    *(v23 + 12) = 1024;
    sub_26818F510(&v32, &v33, &qword_28024F020, &unk_2683E6AA0);
    v28 = v34 != 0;
    sub_2681433DC(&v33, &qword_28024F020, &unk_2683E6AA0);
    sub_2682EF8BC(v31);
    *(v23 + 14) = v28;
    _os_log_impl(&dword_2680EB000, v21, v22, "[SetTaskAttribute HandleIntentStrategy] Skipping correction registration: changeType: %s, hasClient: %{BOOL}d", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x26D617A40](v24, -1, -1);
    MEMORY[0x26D617A40](v23, -1, -1);
  }

  else
  {
    sub_2682EF8BC(v31);
  }
}

uint64_t sub_2682EE79C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F10, &unk_2683E6A80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Snippet.Reminder(0);
  v27 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = sub_2683CC818();
  v15 = [v14 modifiedTask];

  if (v15)
  {
    v26 = v2;
    v16 = v15;
    sub_26834A288(v16, v13);
    v17 = sub_2683CC828();
    v18 = sub_2681E73A0(v17);

    if (v18)
    {
      __swift_project_boxed_opaque_existential_1((v28 + 168), *(v28 + 192));
      sub_268154F90();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251608, &unk_2683E3D40);
      v19 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_2683D1EC0;
      sub_2682EF828(v11, v20 + v19, type metadata accessor for Snippet.Reminder);

      sub_2682EF7D4(v13, type metadata accessor for Snippet.Reminder);
      v21 = v30;
      *v30 = v20;
      memcpy(v21 + 1, __src, 0x61uLL);
    }

    else
    {
      v24 = v30;
      sub_2682EF778(v13, v30, type metadata accessor for Snippet.Reminder);
      (*(v5 + 16))(v7, a1, v4);
      v25 = type metadata accessor for Snippet.SetTaskAttribute3p(0);
      sub_268363B64(v7, (v24 + *(v25 + 20)));

      sub_2682EF7D4(v13, type metadata accessor for Snippet.Reminder);
    }

    type metadata accessor for Snippet(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_26812C6B8();
    swift_allocError();
    *v22 = 0xD000000000000014;
    *(v22 + 8) = 0x80000002683FFEC0;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = 3;
    return swift_willThrow();
  }
}

uint64_t sub_2682EEB14()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 112) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v4);
  *(v1 + 32) = OUTLINED_FUNCTION_55();
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2682EEBB4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F10, &unk_2683E6A80);
  v3 = sub_2683CC848();
  *(v0 + 56) = v3;
  v4 = sub_2683CC818();
  *(v0 + 64) = v4;
  v5 = sub_2683CC818();
  [v5 warnings];

  sub_2682EF18C(v2);
  sub_2683CFB38();

  v6 = sub_2683CF168();
  v7 = 1;
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v6);
  v8 = [v3 taskTitle];
  if (v8)
  {
    v9 = v8;
    sub_2683CFEA8();

    v7 = 0;
  }

  v10 = 1;
  __swift_storeEnumTagSinglePayload(*(v0 + 40), v7, 1, v6);
  v11 = [v3 targetTask];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 title];

    sub_2683CFEA8();
    v10 = 0;
  }

  __swift_storeEnumTagSinglePayload(*(v0 + 32), v10, 1, v6);
  v14 = [v4 modifiedTask];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 temporalEventTrigger];

    if (v16)
    {
      type metadata accessor for NotebookTemporalEventTriggerConcept();
      v16 = sub_2681A2C04(v16);
    }
  }

  else
  {
    v16 = 0;
  }

  *(v0 + 72) = v16;
  sub_2683CF138();
  v17 = sub_2683CC828();
  *(v0 + 80) = sub_26818F730(v17);
  v18 = swift_task_alloc();
  *(v0 + 88) = v18;
  *v18 = v0;
  v18[1] = sub_2682EEE6C;

  return sub_2681F28B8();
}

uint64_t sub_2682EEE6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 96) = v1;

  v7 = *(v4 + 40);
  v8 = *(v4 + 32);
  if (v1)
  {

    OUTLINED_FUNCTION_31_9(v8);
    OUTLINED_FUNCTION_31_9(v7);
    v9 = OUTLINED_FUNCTION_9_0();
    sub_2681433DC(v9, v10, &unk_2683D6CA0);
    v11 = sub_2682EF100;
  }

  else
  {
    *(v5 + 104) = a1;

    OUTLINED_FUNCTION_31_9(v8);
    OUTLINED_FUNCTION_31_9(v7);
    v12 = OUTLINED_FUNCTION_9_0();
    sub_2681433DC(v12, v13, &unk_2683D6CA0);
    v11 = sub_2682EF06C;
  }

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2682EF06C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);
  v3 = *(v0 + 104);

  return v2(v3);
}

uint64_t sub_2682EF100()
{
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2682EF18C(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x706D6F436B72616DLL;
      break;
    case 2:
      result = 0x6F636E496B72616DLL;
      break;
    case 3:
      result = 0x6C61726F706D6574;
      break;
    case 4:
      result = 0x546C616974617073;
      break;
    case 5:
      result = 0x67616C466B72616DLL;
      break;
    case 6:
      result = 0x6C666E556B72616DLL;
      break;
    case 7:
      result = 0x656C7069746C756DLL;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2682EF2C4(uint64_t a1)
{
  v1 = sub_2683D0408();

  if (v1 >= 9)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_2682EF328@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2682EF2C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2682EF358@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2682EF18C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_2682EF3A0(void *a1, char a2)
{
  v5 = sub_2683CB668();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  switch(a2)
  {
    case 1:
      v13 = [a1 status];
      goto LABEL_6;
    case 2:
      v12 = [a1 status];
      goto LABEL_11;
    case 3:
      return sub_2681E0550();
    case 4:
      return sub_2681E0598();
    case 5:
      v13 = [a1 priority];
LABEL_6:
      v14 = v13 == 2;
      goto LABEL_12;
    case 6:
      v12 = [a1 priority];
LABEL_11:
      v14 = v12 == 1;
LABEL_12:
      v11 = v14;
      break;
    case 7:
    case 8:
      return v11 & 1;
    default:
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      sub_2683CC088();
      v11 = sub_2681E02AC(v10);
      (*(v7 + 8))(v10, v5);
      break;
  }

  return v11 & 1;
}

uint64_t sub_2682EF52C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2682EF558()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 128), *(*(v0 + 32) + 152));
  v1 = OUTLINED_FUNCTION_9_0();
  v3 = sub_2682B28A0(v1, v2);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_2682EF5D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_2682EC3B0();
}

uint64_t sub_2682EF67C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26813F058;

  return sub_2682EF52C(a1, a2);
}

unint64_t sub_2682EF724()
{
  result = qword_280251F08;
  if (!qword_280251F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251F08);
  }

  return result;
}

uint64_t sub_2682EF778(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  v4 = OUTLINED_FUNCTION_9_0();
  v5(v4);
  return a2;
}

uint64_t sub_2682EF7D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2682EF828(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  v4 = OUTLINED_FUNCTION_9_0();
  v5(v4);
  return a2;
}

uint64_t sub_2682EF8EC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v15 = &type metadata for NotebookFlowCreator;
  v16 = &off_287900FD8;
  v6 = a3 + OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_correctionsExitValue;
  strcpy((a3 + OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_correctionsExitValue), "Initial value");
  *(v6 + 14) = -4864;
  v7 = *MEMORY[0x277D5BF08];
  v8 = sub_2683CC768();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  v9 = a3 + OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_steeringTask;
  *(v9 + 48) = 0;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *v9 = 0u;
  *(v9 + 56) = -1;
  v10 = (a3 + OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_taskParser);
  *v10 = sub_268372484;
  v10[1] = 0;
  *(a3 + OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_state) = 0;
  v11 = OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_previousConversationRecord;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F10, &unk_2683E6A80);
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  sub_268128148(a2, a3 + OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_deviceState);
  sub_268128148(&v14, a3 + OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_notebookFlowCreator);
  return a3;
}

uint64_t sub_2682EFA98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s20HandleIntentStrategyV10ChangeTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s20HandleIntentStrategyV10ChangeTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        break;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2682EFC84()
{
  result = qword_280251F38;
  if (!qword_280251F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280251F40, qword_2683E6AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251F38);
  }

  return result;
}

unint64_t sub_2682EFCEC()
{
  result = qword_280251F48;
  if (!qword_280251F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280251F48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_24@<X0>(int *a1@<X8>)
{
  *(v1 - 88) = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_23_22()
{

  return sub_2683CC828();
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t a1)
{

  return sub_2681433DC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_32_12()
{

  return sub_2682EC08C(v2, v1, v0);
}

unint64_t OUTLINED_FUNCTION_33_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_2681610A0(v12, v13, va);
}

uint64_t OUTLINED_FUNCTION_34_14()
{
}

id sub_2682EFEFC(char a1, void *a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      result = sub_2681DF490(a2);
      if (!v2)
      {
        v4 = result;
        result = 0;
        v5 = v4;
LABEL_7:
        v6 = 0;
LABEL_11:
        v7 = sub_2682EFFE0(result, v5, v6);

        return v7;
      }
    }

    else
    {
      result = sub_2681DF4C8(a2);
      if (!v2)
      {
        v4 = result;
        result = 0;
        v5 = 0;
        v6 = v4;
        goto LABEL_11;
      }
    }
  }

  else
  {
    result = sub_2681DF4C8(a2);
    if (!v2)
    {
      v4 = result;
      v5 = 0;
      goto LABEL_7;
    }
  }

  return result;
}

id sub_2682EFFA4(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return sub_2682EFFE0(0, 0, 1);
    }

    v1 = 0;
    v2 = 1;
  }

  else
  {
    v1 = 1;
    v2 = 0;
  }

  return sub_2682EFFE0(v1, v2, 0);
}

id sub_2682EFFE0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = [v3 title];
  v9 = v8;
  if (a1 == 1)
  {
    v11 = 0;
  }

  else if (a1)
  {
    v11 = a1;
  }

  else
  {
    v10 = v8;
    v11 = v9;
  }

  sub_2680F1DAC(a1);

  v12 = [v4 content];
  v13 = v12;
  if (a2 == 1)
  {
    v15 = 0;
  }

  else if (a2)
  {
    v15 = a2;
  }

  else
  {
    v14 = v12;
    v15 = v13;
  }

  sub_2680F1DAC(a2);

  v16 = [v4 groupName];
  v17 = v16;
  if (a3 == 1)
  {
    v19 = 0;
  }

  else if (a3)
  {
    v19 = a3;
  }

  else
  {
    v18 = v16;
    v19 = v17;
  }

  sub_2682F01BC();
  sub_2680F1DAC(a3);

  return sub_268128E6C(v11, v15, v19);
}

id sub_2682F0120(void *a1)
{
  v2 = [a1 title];
  v3 = [a1 content];
  v4 = [a1 groupName];
  v5 = sub_2682EFFE0(v2, v3, v4);

  return v5;
}

unint64_t sub_2682F01BC()
{
  result = qword_28024CDB0;
  if (!qword_28024CDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024CDB0);
  }

  return result;
}

uint64_t sub_2682F0220()
{
  v0 = sub_2683CEAF8();
  v67 = *(v0 - 8);
  v68 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v69 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v59 - v3;
  v5 = sub_2683CEB08();
  v71 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2683CB668();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v64 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F50, &qword_2683E6BB8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  sub_2683CEB78();
  sub_2681A3BD4();
  v70 = v5;
  v62 = sub_2683CF9D8();
  sub_2683CB628();
  sub_2683CB618();
  v20 = *(v9 + 8);
  v65 = v9 + 8;
  v66 = v8;
  v63 = v20;
  v20(v13, v8);
  v21 = sub_2683CB608();
  if (__swift_getEnumTagSinglePayload(v19, 1, v21) == 1)
  {
    sub_2682F0960(v19);
LABEL_3:
    v22 = *MEMORY[0x277D56378];
    v23 = v70;
    v61 = *(v71 + 104);
    v61(v7, v22, v70);
    v24 = *(v67 + 13);
    v25 = v4;
    v60 = *MEMORY[0x277D56298];
    v26 = v4;
    v27 = v7;
    v28 = v68;
    v24(v25);
    v29 = *MEMORY[0x277D562A0];
    v30 = v28;
    v7 = v27;
    v4 = v26;
    v59 = v24;
    (v24)(v69, v29, v30);
    swift_allocObject();
    goto LABEL_12;
  }

  v31 = sub_2683CB5B8();
  v33 = v32;
  (*(*(v21 - 8) + 8))(v19, v21);
  if (v31 == 21062 && v33 == 0xE200000000000000)
  {
  }

  else
  {
    v35 = sub_2683D0598();

    if ((v35 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v36 = *MEMORY[0x277D56378];
  v23 = v70;
  v61 = *(v71 + 104);
  v61(v7, v36, v70);
  v37 = v68;
  v38 = *(v67 + 13);
  v60 = *MEMORY[0x277D56298];
  v38(v4);
  v39 = *MEMORY[0x277D562A0];
  v59 = v38;
  (v38)(v69, v39, v37);
  swift_allocObject();
LABEL_12:
  v40 = sub_2683CEB18();
  v41 = v62;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v41;
  sub_2682F0B90(v40, v7, isUniquelyReferenced_nonNull_native);
  v43 = *(v71 + 8);
  v43(v7, v23);
  v44 = v72;
  v45 = v64;
  sub_2683CB628();
  sub_2683CB618();
  v63(v45, v66);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    sub_2682F0960(v17);
  }

  else
  {
    v46 = v4;
    v47 = sub_2683CB5B8();
    v49 = v48;
    (*(*(v21 - 8) + 8))(v17, v21);
    if (v47 == 17732 && v49 == 0xE200000000000000)
    {
    }

    else
    {
      v51 = sub_2683D0598();

      if ((v51 & 1) == 0)
      {
        return v44;
      }
    }

    v52 = v70;
    v61(v7, *MEMORY[0x277D563C8], v70);
    v53 = v68;
    v67 = v43;
    v54 = v60;
    v55 = v59;
    (v59)(v46, v60, v68);
    v55(v69, v54, v53);
    swift_allocObject();
    v56 = sub_2683CEB18();
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v44;
    sub_2682F0B90(v56, v7, v57);
    v67(v7, v52);
    return v72;
  }

  return v44;
}

uint64_t sub_2682F0960(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F50, &qword_2683E6BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2682F09E4(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int *a4, unsigned int a5)
{
  v22[3] = a5;
  v8 = sub_2683CE8E8();
  OUTLINED_FUNCTION_0_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2683CE8F8();
  OUTLINED_FUNCTION_0_3();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2683CE918();
  __swift_allocate_value_buffer(v20, a2);
  __swift_project_value_buffer(v20, a2);
  (*(v16 + 104))(v19, *a3, v14);
  (*(v10 + 104))(v13, *a4, v8);
  sub_2682F0220();
  return sub_2683CE908();
}

uint64_t sub_2682F0B90(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_2683CEB08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_2682E16FC();
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F58, &unk_2683E6BC0);
  if ((sub_2683D0298() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_2682E16FC();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_2683D0608();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(v18[7] + 8 * v14) = a1;
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_2682F0D50(v14, v10, a1, v18);
  }
}

uint64_t sub_2682F0D50(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2683CEB08();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_2682F0E10()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.Number.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t sub_2682F0E6C()
{
  OUTLINED_FUNCTION_94();
  result = Common.Number.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682F0F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_23(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_48_1();
  sub_26831A8D8(a1, v7, a5, a6);
  return a7(v7);
}

uint64_t static Common.Number.definition.getter()
{
  if (qword_28024CA78 != -1)
  {
    OUTLINED_FUNCTION_250_0(&qword_28024CA78);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524B8, &qword_2683E6C90);
  OUTLINED_FUNCTION_5_38(v0, qword_280252260);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F1154()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.SortOrder.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.SortOrder.definition.getter()
{
  if (qword_28024CB00 != -1)
  {
    OUTLINED_FUNCTION_248_0(&qword_28024CB00);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524C0, &qword_2683E6C98);
  OUTLINED_FUNCTION_5_38(v0, qword_2802523F8);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F1454()
{
  OUTLINED_FUNCTION_94();
  result = Common.PointOfInterest.categories.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2682F14EC()
{
  OUTLINED_FUNCTION_94();
  result = Common.PointOfInterest.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.PointOfInterest.definition.getter()
{
  if (qword_28024CAB0 != -1)
  {
    OUTLINED_FUNCTION_245_0(&qword_28024CAB0);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524C8, &qword_2683E6CA0);
  OUTLINED_FUNCTION_5_38(v0, qword_280252308);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F1738()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.OffsetDirection.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.OffsetDirection.definition.getter()
{
  if (qword_28024CA88 != -1)
  {
    OUTLINED_FUNCTION_244_0(&qword_28024CA88);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524D0, &qword_2683E6CA8);
  OUTLINED_FUNCTION_5_38(v0, qword_280252290);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F19A0()
{
  OUTLINED_FUNCTION_94();
  v0 = Common.Integer.integerValue.getter();
  return OUTLINED_FUNCTION_128_1(v0, v1);
}

uint64_t sub_2682F19EC()
{
  OUTLINED_FUNCTION_94();
  result = Common.Integer.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.Integer.definition.getter()
{
  if (qword_28024CA48 != -1)
  {
    OUTLINED_FUNCTION_243_0(&qword_28024CA48);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524D8, &qword_2683E6CB0);
  OUTLINED_FUNCTION_5_38(v0, qword_2802521D0);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F1C38()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.DateTimeRangeQualifier.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.DateTimeRangeQualifier.definition.getter()
{
  if (qword_28024CA08 != -1)
  {
    OUTLINED_FUNCTION_241_0(&qword_28024CA08);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524E0, &qword_2683E6CB8);
  OUTLINED_FUNCTION_5_38(v0, qword_280252110);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F1EA0()
{
  OUTLINED_FUNCTION_94();
  result = Common.GeographicArea.areaType.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_2682F1FC4()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.GeographicArea.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t sub_2682F2020()
{
  OUTLINED_FUNCTION_94();
  result = Common.GeographicArea.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.GeographicArea.definition.getter()
{
  if (qword_28024CA38 != -1)
  {
    OUTLINED_FUNCTION_238_0(&qword_28024CA38);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524E8, &qword_2683E6CC0);
  OUTLINED_FUNCTION_5_38(v0, qword_2802521A0);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F226C()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.DateType.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.DateType.definition.getter()
{
  if (qword_28024CA10 != -1)
  {
    OUTLINED_FUNCTION_237_0(&qword_28024CA10);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524F0, &qword_2683E6CC8);
  OUTLINED_FUNCTION_5_38(v0, qword_280252128);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F2520()
{
  OUTLINED_FUNCTION_94();
  result = Common.ContactAddress.label.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2682F26DC()
{
  OUTLINED_FUNCTION_94();
  result = Common.ContactAddress.value.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.ContactAddress.definition.getter()
{
  if (qword_28024C9E8 != -1)
  {
    OUTLINED_FUNCTION_236_0(&qword_28024C9E8);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524F8, &qword_2683E6CD0);
  OUTLINED_FUNCTION_5_38(v0, qword_2802520B0);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F27AC()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.SearchQualifier.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t sub_2682F2854()
{
  OUTLINED_FUNCTION_94();
  result = Common.SearchQualifier.sortDirections.getter();
  *v0 = result;
  return result;
}

uint64_t static Common.SearchQualifier.definition.getter()
{
  if (qword_28024CAE8 != -1)
  {
    OUTLINED_FUNCTION_235_0(&qword_28024CAE8);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252500, &qword_2683E6CD8);
  OUTLINED_FUNCTION_5_38(v0, qword_2802523B0);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F2AAC()
{
  OUTLINED_FUNCTION_94();
  result = Common.SortValue.name.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t static Common.SortValue.definition.getter()
{
  if (qword_28024CB08 != -1)
  {
    OUTLINED_FUNCTION_232_0(&qword_28024CB08);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252508, &qword_2683E6CE0);
  OUTLINED_FUNCTION_5_38(v0, qword_280252410);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F2D44()
{
  OUTLINED_FUNCTION_94();
  result = Common.Note.attachments.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2682F2DDC()
{
  OUTLINED_FUNCTION_94();
  result = Common.Note.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682F2E1C()
{
  OUTLINED_FUNCTION_94();
  result = Common.Note.stringContent.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682F2E5C()
{
  OUTLINED_FUNCTION_94();
  result = Common.Note.tags.getter();
  *v0 = result;
  return result;
}

uint64_t static Common.Note.definition.getter()
{
  if (qword_28024CA68 != -1)
  {
    OUTLINED_FUNCTION_230_0(&qword_28024CA68);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252510, &qword_2683E6CE8);
  OUTLINED_FUNCTION_5_38(v0, qword_280252230);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F3100()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.DateTime.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t sub_2682F31A8()
{
  OUTLINED_FUNCTION_94();
  result = Common.DateTime.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.DateTime.definition.getter()
{
  if (qword_28024C9F8 != -1)
  {
    OUTLINED_FUNCTION_229_0(&qword_28024C9F8);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252518, &qword_2683E6CF0);
  OUTLINED_FUNCTION_5_38(v0, qword_2802520E0);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F3570()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.DateTimeRange.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t sub_2682F3664()
{
  OUTLINED_FUNCTION_94();
  result = Common.DateTimeRange.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.DateTimeRange.definition.getter()
{
  if (qword_28024CA00 != -1)
  {
    OUTLINED_FUNCTION_227_0(&qword_28024CA00);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252520, &qword_2683E6CF8);
  OUTLINED_FUNCTION_5_38(v0, qword_2802520F8);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t static Common.DurationComponent.definition.getter()
{
  if (qword_28024CA28 != -1)
  {
    OUTLINED_FUNCTION_226_0(&qword_28024CA28);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252528, &qword_2683E6D00);
  OUTLINED_FUNCTION_5_38(v0, qword_280252170);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F3BEC()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.AttachmentType.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t sub_2682F3C48()
{
  OUTLINED_FUNCTION_94();
  result = Common.AttachmentType.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.AttachmentType.definition.getter()
{
  if (qword_28024C9B8 != -1)
  {
    OUTLINED_FUNCTION_224_0(&qword_28024C9B8);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252530, &qword_2683E6D08);
  OUTLINED_FUNCTION_5_38(v0, qword_280252020);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F3F2C()
{
  OUTLINED_FUNCTION_94();
  result = Common.Date.dateType.getter();
  *v0 = result;
  return result;
}

void sub_2682F4010()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.Date.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t sub_2682F40B8()
{
  OUTLINED_FUNCTION_94();
  result = Common.Date.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.Date.definition.getter()
{
  if (qword_28024C9F0 != -1)
  {
    OUTLINED_FUNCTION_223_0(&qword_28024C9F0);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252538, &qword_2683E6D10);
  OUTLINED_FUNCTION_5_38(v0, qword_2802520C8);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F4434()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.NumberSign.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.NumberSign.definition.getter()
{
  if (qword_28024CA80 != -1)
  {
    OUTLINED_FUNCTION_222_0(&qword_28024CA80);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252540, &qword_2683E6D18);
  OUTLINED_FUNCTION_5_38(v0, qword_280252278);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F469C()
{
  OUTLINED_FUNCTION_94();
  result = Common.Religion.name.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t static Common.Religion.definition.getter()
{
  if (qword_28024CAD0 != -1)
  {
    OUTLINED_FUNCTION_221_0(&qword_28024CAD0);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252548, &qword_2683E6D20);
  OUTLINED_FUNCTION_5_38(v0, qword_280252368);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F4934()
{
  OUTLINED_FUNCTION_94();
  result = Common.ReminderList.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682F4974()
{
  OUTLINED_FUNCTION_94();
  result = Common.ReminderList.reminders.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2682F49C0()
{
  OUTLINED_FUNCTION_94();
  result = Common.ReminderList.tags.getter();
  *v0 = result;
  return result;
}

uint64_t static Common.ReminderList.definition.getter()
{
  if (qword_28024CAE0 != -1)
  {
    OUTLINED_FUNCTION_220_0(&qword_28024CAE0);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252550, &qword_2683E6D28);
  OUTLINED_FUNCTION_5_38(v0, qword_280252398);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F4C18()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.ListPosition.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t sub_2682F4CC0()
{
  OUTLINED_FUNCTION_94();
  v0 = Common.ListPosition.offsetToReference.getter();
  return OUTLINED_FUNCTION_128_1(v0, v1);
}

uint64_t static Common.ListPosition.definition.getter()
{
  if (qword_28024CA50 != -1)
  {
    OUTLINED_FUNCTION_219_0(&qword_28024CA50);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252558, &qword_2683E6D30);
  OUTLINED_FUNCTION_5_38(v0, qword_2802521E8);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F4F64()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.TimeUnit.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t sub_2682F4FC0()
{
  OUTLINED_FUNCTION_94();
  result = Common.TimeUnit.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.TimeUnit.definition.getter()
{
  if (qword_28024CB20 != -1)
  {
    OUTLINED_FUNCTION_218_0(&qword_28024CB20);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252560, &qword_2683E6D38);
  OUTLINED_FUNCTION_5_38(v0, qword_280252458);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t static Common.Attachment.definition.getter()
{
  if (qword_28024C9B0 != -1)
  {
    OUTLINED_FUNCTION_216_0(&qword_28024C9B0);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252568, &qword_2683E6D40);
  OUTLINED_FUNCTION_5_38(v0, qword_280252008);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F562C()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.RecurringDateTime.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t sub_2682F5688()
{
  OUTLINED_FUNCTION_94();
  result = Common.RecurringDateTime.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682F5714()
{
  OUTLINED_FUNCTION_94();
  result = Common.RecurringDateTime.recurrenceDateTimes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2682F57AC()
{
  OUTLINED_FUNCTION_94();
  v0 = Common.RecurringDateTime.totalNumberOfOccurrences.getter();
  return OUTLINED_FUNCTION_128_1(v0, v1);
}

uint64_t static Common.RecurringDateTime.definition.getter()
{
  if (qword_28024CAC8 != -1)
  {
    OUTLINED_FUNCTION_215_0(&qword_28024CAC8);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252570, &qword_2683E6D48);
  OUTLINED_FUNCTION_5_38(v0, qword_280252350);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F5A04()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.CompletionStatus.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.CompletionStatus.definition.getter()
{
  if (qword_28024C9E0 != -1)
  {
    OUTLINED_FUNCTION_214_0(&qword_28024C9E0);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252578, &qword_2683E6D50);
  OUTLINED_FUNCTION_5_38(v0, qword_280252098);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F5C6C()
{
  OUTLINED_FUNCTION_94();
  result = Common.Duration.components.getter();
  *v0 = result;
  return result;
}

void sub_2682F5CB8()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.Duration.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.Duration.definition.getter()
{
  if (qword_28024CA20 != -1)
  {
    OUTLINED_FUNCTION_213_0(&qword_28024CA20);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252580, &qword_2683E6D58);
  OUTLINED_FUNCTION_5_38(v0, qword_280252158);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F5FB8()
{
  OUTLINED_FUNCTION_94();
  result = Common.PersonRelationship.relationshipType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.PersonRelationship.definition.getter()
{
  if (qword_28024CAA8 != -1)
  {
    OUTLINED_FUNCTION_212_0(&qword_28024CAA8);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252588, &qword_2683E6D60);
  OUTLINED_FUNCTION_5_38(v0, qword_2802522F0);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F6250()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.SortDirection.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.SortDirection.definition.getter()
{
  if (qword_28024CAF8 != -1)
  {
    OUTLINED_FUNCTION_211_0(&qword_28024CAF8);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252590, &qword_2683E6D68);
  OUTLINED_FUNCTION_5_38(v0, qword_2802523E0);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F6550()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.Similarity.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.Similarity.definition.getter()
{
  if (qword_28024CAF0 != -1)
  {
    OUTLINED_FUNCTION_210_0(&qword_28024CAF0);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252598, &qword_2683E6D70);
  OUTLINED_FUNCTION_5_38(v0, qword_2802523C8);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F67B8()
{
  OUTLINED_FUNCTION_94();
  result = Common.CalendarEra.name.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t static Common.CalendarEra.definition.getter()
{
  if (qword_28024C9C0 != -1)
  {
    OUTLINED_FUNCTION_209_0(&qword_28024C9C0);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525A0, &qword_2683E6D78);
  OUTLINED_FUNCTION_5_38(v0, qword_280252038);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F6A04()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.Time.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t sub_2682F6AF8()
{
  OUTLINED_FUNCTION_94();
  result = Common.Time.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.Time.definition.getter()
{
  if (qword_28024CB18 != -1)
  {
    OUTLINED_FUNCTION_208_0(&qword_28024CB18);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525A8, &qword_2683E6D80);
  OUTLINED_FUNCTION_5_38(v0, qword_280252440);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F6E28()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.MeasurementUnitType.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.MeasurementUnitType.definition.getter()
{
  if (qword_28024CA58 != -1)
  {
    OUTLINED_FUNCTION_207_0(&qword_28024CA58);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525B0, &qword_2683E6D88);
  OUTLINED_FUNCTION_5_38(v0, qword_280252200);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F7090()
{
  OUTLINED_FUNCTION_94();
  result = Common.EventTrigger.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t static Common.EventTrigger.definition.getter()
{
  if (qword_28024CA30 != -1)
  {
    OUTLINED_FUNCTION_206_0(&qword_28024CA30);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525B8, &qword_2683E6D90);
  OUTLINED_FUNCTION_5_38(v0, qword_280252188);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F7594()
{
  OUTLINED_FUNCTION_94();
  result = Common.CalendarSystem.name.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t static Common.CalendarSystem.definition.getter()
{
  if (qword_28024C9C8 != -1)
  {
    OUTLINED_FUNCTION_204_0(&qword_28024C9C8);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525C0, &qword_2683E6D98);
  OUTLINED_FUNCTION_5_38(v0, qword_280252050);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F77E0()
{
  OUTLINED_FUNCTION_94();
  result = Common.PersonName.familyName.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2682F7820()
{
  OUTLINED_FUNCTION_94();
  result = Common.PersonName.givenName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682F7860()
{
  OUTLINED_FUNCTION_94();
  result = Common.PersonName.middleName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682F78A0()
{
  OUTLINED_FUNCTION_94();
  result = Common.PersonName.namePostfix.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682F78E0()
{
  OUTLINED_FUNCTION_94();
  result = Common.PersonName.namePrefix.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682F7920()
{
  OUTLINED_FUNCTION_94();
  result = Common.PersonName.nickName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.PersonName.definition.getter()
{
  if (qword_28024CAA0 != -1)
  {
    OUTLINED_FUNCTION_203_0(&qword_28024CAA0);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525C8, &qword_2683E6DA0);
  OUTLINED_FUNCTION_5_38(v0, qword_2802522D8);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F7B6C()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.AppState.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.AppState.definition.getter()
{
  if (qword_28024C9A8 != -1)
  {
    OUTLINED_FUNCTION_202_0(&qword_28024C9A8);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525D0, &qword_2683E6DA8);
  OUTLINED_FUNCTION_5_38(v0, qword_280251FF0);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F7DD4()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.CommunicationTrigger.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.CommunicationTrigger.definition.getter()
{
  if (qword_28024C9D8 != -1)
  {
    OUTLINED_FUNCTION_201_0(&qword_28024C9D8);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525D8, &qword_2683E6DB0);
  OUTLINED_FUNCTION_5_38(v0, qword_280252080);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F803C()
{
  OUTLINED_FUNCTION_94();
  result = Common.Tag.name.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t static Common.Tag.definition.getter()
{
  if (qword_28024CB10 != -1)
  {
    OUTLINED_FUNCTION_200_0(&qword_28024CB10);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525E0, &qword_2683E6DB8);
  OUTLINED_FUNCTION_5_38(v0, qword_280252428);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F836C()
{
  OUTLINED_FUNCTION_94();
  result = Common.Person.attributes.getter();
  *v0 = result;
  return result;
}

void sub_2682F8404()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.Person.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t sub_2682F84F8()
{
  OUTLINED_FUNCTION_94();
  result = Common.Person.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682F8538()
{
  OUTLINED_FUNCTION_94();
  result = Common.Person.phoneticName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682F85C4()
{
  OUTLINED_FUNCTION_94();
  result = Common.Person.relationships.getter();
  *v0 = result;
  return result;
}

uint64_t static Common.Person.definition.getter()
{
  if (qword_28024CA98 != -1)
  {
    OUTLINED_FUNCTION_199_0(&qword_28024CA98);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525E8, &qword_2683E6DC0);
  OUTLINED_FUNCTION_5_38(v0, qword_2802522C0);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F88B4()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.MonthOfYear.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.MonthOfYear.definition.getter()
{
  if (qword_28024CA60 != -1)
  {
    OUTLINED_FUNCTION_198_0(&qword_28024CA60);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525F0, &qword_2683E6DC8);
  OUTLINED_FUNCTION_5_38(v0, qword_280252218);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F8B68()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.DayOfWeek.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.DayOfWeek.definition.getter()
{
  if (qword_28024CA18 != -1)
  {
    OUTLINED_FUNCTION_197_0(&qword_28024CA18);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525F8, &qword_2683E6DD0);
  OUTLINED_FUNCTION_5_38(v0, qword_280252140);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682F8E1C()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.Quantifier.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.Quantifier.definition.getter()
{
  if (qword_28024CAC0 != -1)
  {
    OUTLINED_FUNCTION_196_0(&qword_28024CAC0);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252600, &qword_2683E6DD8);
  OUTLINED_FUNCTION_5_38(v0, qword_280252338);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F9084()
{
  OUTLINED_FUNCTION_94();
  result = Common.AppEntity.contains.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2682F90D0()
{
  OUTLINED_FUNCTION_94();
  result = Common.AppEntity.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.AppEntity.definition.getter()
{
  if (qword_28024C990 != -1)
  {
    OUTLINED_FUNCTION_195_0(&qword_28024C990);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252608, &qword_2683E6DE0);
  OUTLINED_FUNCTION_5_38(v0, qword_280251FA8);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F9368()
{
  OUTLINED_FUNCTION_94();
  result = Common.AppGenre.name.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t static Common.AppGenre.definition.getter()
{
  if (qword_28024C9A0 != -1)
  {
    OUTLINED_FUNCTION_194_0(&qword_28024C9A0);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252610, &qword_2683E6DE8);
  OUTLINED_FUNCTION_5_38(v0, qword_280251FD8);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F95B4()
{
  OUTLINED_FUNCTION_94();
  result = Common.Organization.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2682F9600()
{
  OUTLINED_FUNCTION_94();
  result = Common.Organization.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.Organization.definition.getter()
{
  if (qword_28024CA90 != -1)
  {
    OUTLINED_FUNCTION_193_0(&qword_28024CA90);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252618, &qword_2683E6DF0);
  OUTLINED_FUNCTION_5_38(v0, qword_2802522A8);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F98E4()
{
  OUTLINED_FUNCTION_94();
  result = Common.TimeZone.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.TimeZone.definition.getter()
{
  if (qword_28024CB28 != -1)
  {
    OUTLINED_FUNCTION_192_0(&qword_28024CB28);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252620, &qword_2683E6DF8);
  OUTLINED_FUNCTION_5_38(v0, qword_280252470);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F9B7C()
{
  OUTLINED_FUNCTION_94();
  result = Common.AppEntityType.name.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t static Common.AppEntityType.definition.getter()
{
  if (qword_28024C998 != -1)
  {
    OUTLINED_FUNCTION_191_0(&qword_28024C998);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252628, &qword_2683E6E00);
  OUTLINED_FUNCTION_5_38(v0, qword_280251FC0);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682F9EAC()
{
  OUTLINED_FUNCTION_94();
  result = Common.App.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.App.definition.getter()
{
  if (qword_28024C988 != -1)
  {
    OUTLINED_FUNCTION_257_0(&qword_28024C988);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252630, &qword_2683E6E08);
  OUTLINED_FUNCTION_5_38(v0, qword_280251F90);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682FA190()
{
  OUTLINED_FUNCTION_94();
  result = Common.NoteFolder.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682FA1D0()
{
  OUTLINED_FUNCTION_94();
  result = Common.NoteFolder.notes.getter();
  *v0 = result;
  return result;
}

uint64_t static Common.NoteFolder.definition.getter()
{
  if (qword_28024CA70 != -1)
  {
    OUTLINED_FUNCTION_254_0(&qword_28024CA70);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252638, &qword_2683E6E10);
  OUTLINED_FUNCTION_5_38(v0, qword_280252248);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682FA428()
{
  OUTLINED_FUNCTION_94();
  result = Common.Agent.attributes.getter();
  *v0 = result;
  return result;
}

void sub_2682FA474()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.Agent.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t sub_2682FA4D0()
{
  OUTLINED_FUNCTION_94();
  result = Common.Agent.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.Agent.definition.getter()
{
  if (qword_28024C980 != -1)
  {
    OUTLINED_FUNCTION_253_0(&qword_28024C980);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252640, &qword_2683E6E18);
  OUTLINED_FUNCTION_5_38(v0, qword_280251F78);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682FA84C()
{
  OUTLINED_FUNCTION_94();
  result = Common.PostalAddress.label.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682FA8D8()
{
  OUTLINED_FUNCTION_94();
  result = Common.PostalAddress.postalCode.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682FA9B0()
{
  OUTLINED_FUNCTION_94();
  result = Common.PostalAddress.streetNumber.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682FA9F0()
{
  OUTLINED_FUNCTION_94();
  result = Common.PostalAddress.subStreetAddress.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682FABAC()
{
  OUTLINED_FUNCTION_94();
  result = Common.PostalAddress.value.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.PostalAddress.definition.getter()
{
  if (qword_28024CAB8 != -1)
  {
    OUTLINED_FUNCTION_251_0(&qword_28024CAB8);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252648, &qword_2683E6E20);
  OUTLINED_FUNCTION_5_38(v0, qword_280252320);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682FACC8()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.Geolocation.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t sub_2682FAD24()
{
  OUTLINED_FUNCTION_94();
  result = Common.Geolocation.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t static Common.Geolocation.definition.getter()
{
  if (qword_28024CA40 != -1)
  {
    OUTLINED_FUNCTION_249_0(&qword_28024CA40);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252650, &qword_2683E6E28);
  OUTLINED_FUNCTION_5_38(v0, qword_2802521B8);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682FAF70()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.CollaborationMode.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.CollaborationMode.definition.getter()
{
  if (qword_28024C9D0 != -1)
  {
    OUTLINED_FUNCTION_247_0(&qword_28024C9D0);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252658, &qword_2683E6E30);
  OUTLINED_FUNCTION_5_38(v0, qword_280252068);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682FB1D8()
{
  OUTLINED_FUNCTION_42_11();
  v0 = Common.Age.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static Common.Age.definition.getter()
{
  if (qword_28024C978 != -1)
  {
    OUTLINED_FUNCTION_246_0(&qword_28024C978);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252660, &qword_2683E6E38);
  OUTLINED_FUNCTION_5_38(v0, qword_280251F60);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682FB5BC()
{
  OUTLINED_FUNCTION_94();
  result = Common.Reminder.attachments.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2682FB608()
{
  OUTLINED_FUNCTION_94();
  result = Common.Reminder.childReminders.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2682FB6EC()
{
  OUTLINED_FUNCTION_94();
  result = Common.Reminder.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682FB72C()
{
  OUTLINED_FUNCTION_94();
  result = Common.Reminder.stringContent.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2682FB76C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t sub_2682FB7B4()
{
  OUTLINED_FUNCTION_94();
  result = Common.Reminder.tags.getter();
  *v0 = result;
  return result;
}

uint64_t static Common.Reminder.definition.getter()
{
  if (qword_28024CAD8 != -1)
  {
    OUTLINED_FUNCTION_242_0(&qword_28024CAD8);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252668, &qword_2683E6E40);
  OUTLINED_FUNCTION_5_38(v0, qword_280252380);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682FBA58()
{
  OUTLINED_FUNCTION_42_11();
  v0 = CommonContact.Attribute.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static CommonContact.Attribute.definition.getter()
{
  if (qword_28024CB30 != -1)
  {
    OUTLINED_FUNCTION_240_0(&qword_28024CB30);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252670, &qword_2683E6E48);
  OUTLINED_FUNCTION_5_38(v0, qword_280252488);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

void sub_2682FBCC0()
{
  OUTLINED_FUNCTION_42_11();
  v0 = CommonEventTrigger.Attribute.definedValue.getter();
  OUTLINED_FUNCTION_123_2(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, SWORD2(v9), SBYTE6(v9), SHIBYTE(v9));
}

uint64_t static CommonEventTrigger.Attribute.definition.getter()
{
  if (qword_28024CB38 != -1)
  {
    OUTLINED_FUNCTION_239_0(&qword_28024CB38);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252678, &qword_2683E6E50);
  OUTLINED_FUNCTION_5_38(v0, qword_2802524A0);
  v1 = OUTLINED_FUNCTION_117_2();

  return v2(v1);
}

uint64_t sub_2682FBF58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252BF8, &qword_2683EC230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6BD0;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x80000002683FFFB0;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000011;
  *(inited + 120) = 0x80000002683FFFB0;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1953066613;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1953066613;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x80000002683FFF10;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x80000002683FFF10;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x80000002683FFF30;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x80000002683FFF30;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x65756C6176;
  *(inited + 432) = 0xE500000000000000;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x65756C6176;
  *(inited + 456) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C00, &qword_2683EC3A0);
  sub_2683CF9D8();
  type metadata accessor for Common.Age(0);
  return sub_2683CD178();
}

uint64_t sub_2682FC288()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C38, &qword_2683EC888);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6BD0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x7475626972747461;
  *(inited + 48) = 0xEA00000000007365;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x7475626972747461;
  *(inited + 72) = 0xEA00000000007365;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "definedValue");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "definedValue");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1701667182;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1701667182;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000018;
  *(inited + 192) = 0x8000000268400050;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000018;
  *(inited + 216) = 0x8000000268400050;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x80000002683FFF10;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x80000002683FFF10;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x507473694C6F7375;
  *(inited + 288) = 0xEF6E6F697469736FLL;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x507473694C6F7375;
  *(inited + 312) = 0xEF6E6F697469736FLL;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "usoQuantifier");
  *(inited + 342) = -4864;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "usoQuantifier");
  *(inited + 366) = -4864;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x41656D61536F7375;
  *(inited + 384) = 0xE900000000000073;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x41656D61536F7375;
  *(inited + 408) = 0xE900000000000073;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x80000002683FFF30;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C40, &qword_2683EC9F8);
  sub_2683CF9D8();
  type metadata accessor for Common.Agent(0);
  return sub_2683CD178();
}

uint64_t sub_2682FC5C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C58, &qword_2683ECB50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6BE0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000002683FFF70;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000012;
  *(inited + 72) = 0x80000002683FFF70;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x65706F6C65766564;
  *(inited + 96) = 0xE900000000000072;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x65706F6C65766564;
  *(inited + 120) = 0xE900000000000072;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x65726E6567;
  *(inited + 144) = 0xE500000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x65726E6567;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 1701667182;
  *(inited + 192) = 0xE400000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 1701667182;
  *(inited + 216) = 0xE400000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x6574617473;
  *(inited + 240) = 0xE500000000000000;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x6574617473;
  *(inited + 264) = 0xE500000000000000;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = 0x80000002683FFF10;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x80000002683FFF10;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x507473694C6F7375;
  *(inited + 336) = 0xEF6E6F697469736FLL;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x507473694C6F7375;
  *(inited + 360) = 0xEF6E6F697469736FLL;
  *(inited + 368) = swift_getKeyPath();
  strcpy((inited + 376), "usoQuantifier");
  *(inited + 390) = -4864;
  *(inited + 392) = swift_getKeyPath();
  strcpy((inited + 400), "usoQuantifier");
  *(inited + 414) = -4864;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x80000002683FFF30;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C60, &qword_2683ECCE8);
  sub_2683CF9D8();
  type metadata accessor for Common.App(0);
  return sub_2683CD178();
}

uint64_t sub_2682FC924()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252CA8, &qword_2683ED190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6BF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x736E6961746E6F63;
  *(inited + 48) = 0xE800000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x736E6961746E6F63;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1701869940;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1701869940;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x80000002683FFF10;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x80000002683FFF10;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x80000002683FFF30;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252CB0, &qword_2683ED2D8);
  sub_2683CF9D8();
  type metadata accessor for Common.AppEntity(0);
  return sub_2683CD178();
}

uint64_t sub_2682FCC10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C68, &qword_2683ECCF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C00;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C70, &qword_2683ECDE8);
  sub_2683CF9D8();
  type metadata accessor for Common.AppEntityType(0);
  return sub_2683CD178();
}

uint64_t sub_2682FCE8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C98, &qword_2683ED090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C00;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252CA0, &qword_2683ED188);
  sub_2683CF9D8();
  type metadata accessor for Common.AppGenre(0);
  return sub_2683CD178();
}

uint64_t sub_2682FD10C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252D18, &qword_2683EDB38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C00;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252D20, &qword_2683EDC30);
  sub_2683CF9D8();
  type metadata accessor for Common.AppState(0);
  return sub_2683CD178();
}

uint64_t sub_2682FD39C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252DE8, &qword_2683EED60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6BD0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000002684004D0;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x80000002684004D0;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7041646572616873;
  *(inited + 96) = 0xE900000000000070;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7041646572616873;
  *(inited + 120) = 0xE900000000000070;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x7041646572616873;
  *(inited + 144) = 0xEF797469746E4570;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x7041646572616873;
  *(inited + 168) = 0xEF797469746E4570;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 1701869940;
  *(inited + 192) = 0xE400000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 1701869940;
  *(inited + 216) = 0xE400000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x80000002683FFF10;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x80000002683FFF10;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x507473694C6F7375;
  *(inited + 288) = 0xEF6E6F697469736FLL;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x507473694C6F7375;
  *(inited + 312) = 0xEF6E6F697469736FLL;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "usoQuantifier");
  *(inited + 342) = -4864;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "usoQuantifier");
  *(inited + 366) = -4864;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x41656D61536F7375;
  *(inited + 384) = 0xE900000000000073;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x41656D61536F7375;
  *(inited + 408) = 0xE900000000000073;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x80000002683FFF30;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252DF0, &qword_2683EEED0);
  sub_2683CF9D8();
  type metadata accessor for Common.Attachment(0);
  return sub_2683CD178();
}

uint64_t sub_2682FD6CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E58, &qword_2683EF7D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C10;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x80000002683FFF10;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x80000002683FFF10;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x41656D61536F7375;
  *(inited + 288) = 0xE900000000000073;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x41656D61536F7375;
  *(inited + 312) = 0xE900000000000073;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x80000002683FFF30;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E60, &qword_2683EF8F0);
  sub_2683CF9D8();
  type metadata accessor for Common.AttachmentType(0);
  return sub_2683CD178();
}

uint64_t sub_2682FD990()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252D78, &qword_2683EE458);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C00;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252D80, &qword_2683EE550);
  sub_2683CF9D8();
  type metadata accessor for Common.CalendarEra(0);
  return sub_2683CD178();
}

uint64_t sub_2682FDC10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252D38, &qword_2683EDE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C00;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1701667182;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252D40, &qword_2683EDEF8);
  sub_2683CF9D8();
  type metadata accessor for Common.CalendarSystem(0);
  return sub_2683CD178();
}

uint64_t sub_2682FDE90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C08, &qword_2683EC3A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C00;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C10, &qword_2683EC4A0);
  sub_2683CF9D8();
  type metadata accessor for Common.CollaborationMode(0);
  return sub_2683CD178();
}

uint64_t sub_2682FE11C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252D08, &qword_2683EDA38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C00;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252D10, &qword_2683EDB30);
  sub_2683CF9D8();
  type metadata accessor for Common.CommunicationTrigger(0);
  return sub_2683CD178();
}

uint64_t sub_2682FE3AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252DC8, &qword_2683EEA48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C00;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252DD0, &qword_2683EEB40);
  sub_2683CF9D8();
  type metadata accessor for Common.CompletionStatus(0);
  return sub_2683CD178();
}

uint64_t sub_2682FE638()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252EC8, &qword_2683F0240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C10;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x6C6562616CLL;
  *(inited + 48) = 0xE500000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x65756C6176;
  *(inited + 336) = 0xE500000000000000;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x65756C6176;
  *(inited + 360) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252ED0, &qword_2683F0360);
  sub_2683CF9D8();
  type metadata accessor for Common.ContactAddress(0);
  return sub_2683CD178();
}

uint64_t sub_2682FE8F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E48, &qword_2683EF518);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C20;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x7261646E656C6163;
  *(inited + 48) = 0xEB00000000617245;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x7261646E656C6163;
  *(inited + 72) = 0xEB00000000617245;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "calendarSystem");
  *(inited + 103) = -18;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "calendarSystem");
  *(inited + 127) = -18;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x6570795465746164;
  *(inited + 144) = 0xE800000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x6570795465746164;
  *(inited + 168) = 0xE800000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x6E6F4D664F796164;
  *(inited + 192) = 0xEA00000000006874;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x6E6F4D664F796164;
  *(inited + 216) = 0xEA00000000006874;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x656557664F796164;
  *(inited + 240) = 0xE90000000000006BLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x656557664F796164;
  *(inited + 264) = 0xE90000000000006BLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "definedValue");
  *(inited + 293) = 0;
  *(inited + 294) = -5120;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "definedValue");
  *(inited + 317) = 0;
  *(inited + 318) = -5120;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x59664F68746E6F6DLL;
  *(inited + 336) = 0xEB00000000726165;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x59664F68746E6F6DLL;
  *(inited + 360) = 0xEB00000000726165;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 1701667182;
  *(inited + 384) = 0xE400000000000000;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 1701667182;
  *(inited + 408) = 0xE400000000000000;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x6E6972727563636FLL;
  *(inited + 432) = 0xEB000000006E4967;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x6E6972727563636FLL;
  *(inited + 456) = 0xEB000000006E4967;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000017;
  *(inited + 480) = 0x8000000268400570;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000017;
  *(inited + 504) = 0x8000000268400570;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000010;
  *(inited + 528) = 0x80000002683FFF10;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000010;
  *(inited + 552) = 0x80000002683FFF10;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0x507473694C6F7375;
  *(inited + 576) = 0xEF6E6F697469736FLL;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0x507473694C6F7375;
  *(inited + 600) = 0xEF6E6F697469736FLL;
  *(inited + 608) = swift_getKeyPath();
  strcpy((inited + 616), "usoQuantifier");
  *(inited + 630) = -4864;
  *(inited + 632) = swift_getKeyPath();
  strcpy((inited + 640), "usoQuantifier");
  *(inited + 654) = -4864;
  *(inited + 656) = swift_getKeyPath();
  *(inited + 664) = 0x41656D61536F7375;
  *(inited + 672) = 0xE900000000000073;
  *(inited + 680) = swift_getKeyPath();
  *(inited + 688) = 0x41656D61536F7375;
  *(inited + 696) = 0xE900000000000073;
  *(inited + 704) = swift_getKeyPath();
  *(inited + 712) = 0xD000000000000012;
  *(inited + 720) = 0x80000002683FFF30;
  *(inited + 728) = swift_getKeyPath();
  *(inited + 736) = 0xD000000000000012;
  *(inited + 744) = 0x80000002683FFF30;
  *(inited + 752) = swift_getKeyPath();
  *(inited + 760) = 0x6559664F6B656577;
  *(inited + 768) = 0xEA00000000007261;
  *(inited + 776) = swift_getKeyPath();
  *(inited + 784) = 0x6559664F6B656577;
  *(inited + 792) = 0xEA00000000007261;
  *(inited + 800) = swift_getKeyPath();
  *(inited + 808) = 1918985593;
  *(inited + 816) = 0xE400000000000000;
  *(inited + 824) = swift_getKeyPath();
  *(inited + 832) = 1918985593;
  *(inited + 840) = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E50, &qword_2683EF7C8);
  sub_2683CF9D8();
  type metadata accessor for Common.Date(0);
  return sub_2683CD178();
}

uint64_t sub_2682FEE5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E88, &qword_2683EFC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1702125924;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1702125924;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "definedValue");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "definedValue");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x6F69746365726964;
  *(inited + 144) = 0xE90000000000006ELL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x6F69746365726964;
  *(inited + 168) = 0xE90000000000006ELL;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 1701667182;
  *(inited + 192) = 0xE400000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 1701667182;
  *(inited + 216) = 0xE400000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x6E6972727563636FLL;
  *(inited + 240) = 0xEB000000006E4967;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x6E6972727563636FLL;
  *(inited + 264) = 0xEB000000006E4967;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x655274657366666FLL;
  *(inited + 288) = 0xEF65636E65726566;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x655274657366666FLL;
  *(inited + 312) = 0xEF65636E65726566;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x615674657366666FLL;
  *(inited + 336) = 0xEB0000000065756CLL;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x615674657366666FLL;
  *(inited + 360) = 0xEB0000000065756CLL;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 1701669236;
  *(inited + 384) = 0xE400000000000000;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 1701669236;
  *(inited + 408) = 0xE400000000000000;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000010;
  *(inited + 432) = 0x80000002683FFF10;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000010;
  *(inited + 456) = 0x80000002683FFF10;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x507473694C6F7375;
  *(inited + 480) = 0xEF6E6F697469736FLL;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x507473694C6F7375;
  *(inited + 504) = 0xEF6E6F697469736FLL;
  *(inited + 512) = swift_getKeyPath();
  strcpy((inited + 520), "usoQuantifier");
  *(inited + 534) = -4864;
  *(inited + 536) = swift_getKeyPath();
  strcpy((inited + 544), "usoQuantifier");
  *(inited + 558) = -4864;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0x41656D61536F7375;
  *(inited + 576) = 0xE900000000000073;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0x41656D61536F7375;
  *(inited + 600) = 0xE900000000000073;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0xD000000000000012;
  *(inited + 624) = 0x80000002683FFF30;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0xD000000000000012;
  *(inited + 648) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E90, &qword_2683EFE20);
  sub_2683CF9D8();
  type metadata accessor for Common.DateTime(0);
  return sub_2683CD178();
}

uint64_t sub_2682FF2A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E78, &qword_2683EFA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C40;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 29793;
  *(inited + 48) = 0xE200000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 29793;
  *(inited + 72) = 0xE200000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "definedValue");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "definedValue");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x6E6F697461727564;
  *(inited + 144) = 0xE800000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x6E6F697461727564;
  *(inited + 168) = 0xE800000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 6581861;
  *(inited + 192) = 0xE300000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 6581861;
  *(inited + 216) = 0xE300000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 1701667182;
  *(inited + 240) = 0xE400000000000000;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 1701667182;
  *(inited + 264) = 0xE400000000000000;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x656966696C617571;
  *(inited + 288) = 0xE900000000000072;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x656966696C617571;
  *(inited + 312) = 0xE900000000000072;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x7472617473;
  *(inited + 336) = 0xE500000000000000;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x7472617473;
  *(inited + 360) = 0xE500000000000000;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x80000002683FFF10;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000010;
  *(inited + 408) = 0x80000002683FFF10;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x507473694C6F7375;
  *(inited + 432) = 0xEF6E6F697469736FLL;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x507473694C6F7375;
  *(inited + 456) = 0xEF6E6F697469736FLL;
  *(inited + 464) = swift_getKeyPath();
  strcpy((inited + 472), "usoQuantifier");
  *(inited + 486) = -4864;
  *(inited + 488) = swift_getKeyPath();
  strcpy((inited + 496), "usoQuantifier");
  *(inited + 510) = -4864;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0x41656D61536F7375;
  *(inited + 528) = 0xE900000000000073;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0x41656D61536F7375;
  *(inited + 552) = 0xE900000000000073;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0xD000000000000012;
  *(inited + 576) = 0x80000002683FFF30;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0xD000000000000012;
  *(inited + 600) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E80, &qword_2683EFC08);
  sub_2683CF9D8();
  type metadata accessor for Common.DateTimeRange(0);
  return sub_2683CD178();
}

uint64_t sub_2682FF68C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252EF8, &qword_2683F0658);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C00;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F00, &qword_2683F0750);
  sub_2683CF9D8();
  type metadata accessor for Common.DateTimeRangeQualifier(0);
  return sub_2683CD178();
}

uint64_t sub_2682FF91C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252ED8, &qword_2683F0368);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C10;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x6E6F6967696C6572;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x6E6F6967696C6572;
  *(inited + 120) = 0xE800000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x80000002683FFF10;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x80000002683FFF10;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x41656D61536F7375;
  *(inited + 288) = 0xE900000000000073;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x41656D61536F7375;
  *(inited + 312) = 0xE900000000000073;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x80000002683FFF30;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252EE0, &qword_2683F0488);
  sub_2683CF9D8();
  type metadata accessor for Common.DateType(0);
  return sub_2683CD178();
}

uint64_t sub_2682FFBE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252CC8, &qword_2683ED408);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C00;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252CD0, &qword_2683ED500);
  sub_2683CF9D8();
  type metadata accessor for Common.DayOfWeek(0);
  return sub_2683CD178();
}

uint64_t sub_2682FFE78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252DB8, &qword_2683EE8F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6BF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x6E656E6F706D6F63;
  *(inited + 48) = 0xEA00000000007374;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x6E656E6F706D6F63;
  *(inited + 72) = 0xEA00000000007374;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "definedValue");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "definedValue");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1852270963;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1852270963;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x80000002683FFF10;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x80000002683FFF10;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x80000002683FFF30;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252DC0, &qword_2683EEA40);
  sub_2683CF9D8();
  type metadata accessor for Common.Duration(0);
  return sub_2683CD178();
}

uint64_t sub_26830017C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E68, &qword_2683EF8F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C10;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 1953066613;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1953066613;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x65756C6176;
  *(inited + 336) = 0xE500000000000000;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x65756C6176;
  *(inited + 360) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E70, &qword_2683EFA18);
  sub_2683CF9D8();
  type metadata accessor for Common.DurationComponent(0);
  return sub_2683CD178();
}

uint64_t sub_268300430()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252D48, &qword_2683EDF00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C50;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x7475626972747461;
  *(inited + 48) = 0xEA00000000007365;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x7475626972747461;
  *(inited + 72) = 0xEA00000000007365;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x8000000268400210;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000014;
  *(inited + 120) = 0x8000000268400210;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000015;
  *(inited + 144) = 0x8000000268400230;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000015;
  *(inited + 168) = 0x8000000268400230;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000014;
  *(inited + 192) = 0x8000000268400250;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000014;
  *(inited + 216) = 0x8000000268400250;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x656D695465746164;
  *(inited + 240) = 0xEF72656767697254;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x656D695465746164;
  *(inited + 264) = 0xEF72656767697254;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000015;
  *(inited + 288) = 0x8000000268400270;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000015;
  *(inited + 312) = 0x8000000268400270;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "personTrigger");
  *(inited + 342) = -4864;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "personTrigger");
  *(inited + 366) = -4864;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000016;
  *(inited + 384) = 0x8000000268400290;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000016;
  *(inited + 408) = 0x8000000268400290;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000018;
  *(inited + 432) = 0x80000002684002B0;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000018;
  *(inited + 456) = 0x80000002684002B0;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000018;
  *(inited + 480) = 0x80000002684002D0;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000018;
  *(inited + 504) = 0x80000002684002D0;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000010;
  *(inited + 528) = 0x80000002683FFF10;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000010;
  *(inited + 552) = 0x80000002683FFF10;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0x507473694C6F7375;
  *(inited + 576) = 0xEF6E6F697469736FLL;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0x507473694C6F7375;
  *(inited + 600) = 0xEF6E6F697469736FLL;
  *(inited + 608) = swift_getKeyPath();
  strcpy((inited + 616), "usoQuantifier");
  *(inited + 630) = -4864;
  *(inited + 632) = swift_getKeyPath();
  strcpy((inited + 640), "usoQuantifier");
  *(inited + 654) = -4864;
  *(inited + 656) = swift_getKeyPath();
  *(inited + 664) = 0x41656D61536F7375;
  *(inited + 672) = 0xE900000000000073;
  *(inited + 680) = swift_getKeyPath();
  *(inited + 688) = 0x41656D61536F7375;
  *(inited + 696) = 0xE900000000000073;
  *(inited + 704) = swift_getKeyPath();
  *(inited + 712) = 0xD000000000000012;
  *(inited + 720) = 0x80000002683FFF30;
  *(inited + 728) = swift_getKeyPath();
  *(inited + 736) = 0xD000000000000012;
  *(inited + 744) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252D50, &qword_2683EE160);
  sub_2683CF9D8();
  type metadata accessor for Common.EventTrigger(0);
  return sub_2683CD178();
}

uint64_t sub_268300908()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252EE8, &qword_2683F0490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C60;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x6570795461657261;
  *(inited + 48) = 0xE800000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x6570795461657261;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000268400670;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000268400670;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x656E6961746E6F63;
  *(inited + 144) = 0xEB000000006E4964;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x656E6961746E6F63;
  *(inited + 168) = 0xEB000000006E4964;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x736E6961746E6F63;
  *(inited + 192) = 0xE800000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x736E6961746E6F63;
  *(inited + 216) = 0xE800000000000000;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "definedValue");
  *(inited + 245) = 0;
  *(inited + 246) = -5120;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "definedValue");
  *(inited + 269) = 0;
  *(inited + 270) = -5120;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 1701667182;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 1701667182;
  *(inited + 312) = 0xE400000000000000;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x80000002683FFF10;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x80000002683FFF10;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x507473694C6F7375;
  *(inited + 384) = 0xEF6E6F697469736FLL;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x507473694C6F7375;
  *(inited + 408) = 0xEF6E6F697469736FLL;
  *(inited + 416) = swift_getKeyPath();
  strcpy((inited + 424), "usoQuantifier");
  *(inited + 438) = -4864;
  *(inited + 440) = swift_getKeyPath();
  strcpy((inited + 448), "usoQuantifier");
  *(inited + 462) = -4864;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x41656D61536F7375;
  *(inited + 480) = 0xE900000000000073;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x41656D61536F7375;
  *(inited + 504) = 0xE900000000000073;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x80000002683FFF30;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252EF0, &qword_2683F0650);
  sub_2683CF9D8();
  type metadata accessor for Common.GeographicArea(0);
  return sub_2683CD178();
}

uint64_t sub_268300CC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C18, &qword_2683EC4A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6BF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x656E6961746E6F63;
  *(inited + 48) = 0xEB000000006E4964;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x656E6961746E6F63;
  *(inited + 72) = 0xEB000000006E4964;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "definedValue");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "definedValue");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 1701667182;
  *(inited + 144) = 0xE400000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 1701667182;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x80000002683FFF10;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x80000002683FFF10;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x80000002683FFF30;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C20, &qword_2683EC5F0);
  sub_2683CF9D8();
  type metadata accessor for Common.Geolocation(0);
  return sub_2683CD178();
}

uint64_t sub_268300FCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F08, &qword_2683F0758);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C10;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "integerValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "integerValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x80000002683FFF10;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x80000002683FFF10;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x41656D61536F7375;
  *(inited + 288) = 0xE900000000000073;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x41656D61536F7375;
  *(inited + 312) = 0xE900000000000073;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x80000002683FFF30;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F10, &qword_2683F0878);
  sub_2683CF9D8();
  type metadata accessor for Common.Integer(0);
  return sub_2683CD178();
}

uint64_t sub_268301290()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E08, &qword_2683EF028);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6BD0;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x694474657366666FLL;
  *(inited + 96) = 0xEF6E6F6974636572;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x694474657366666FLL;
  *(inited + 120) = 0xEF6E6F6974636572;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000011;
  *(inited + 144) = 0x8000000268400510;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x8000000268400510;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000015;
  *(inited + 192) = 0x8000000268400530;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000015;
  *(inited + 216) = 0x8000000268400530;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x80000002683FFF10;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x80000002683FFF10;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x507473694C6F7375;
  *(inited + 288) = 0xEF6E6F697469736FLL;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x507473694C6F7375;
  *(inited + 312) = 0xEF6E6F697469736FLL;
  *(inited + 320) = swift_getKeyPath();
  strcpy((inited + 328), "usoQuantifier");
  *(inited + 342) = -4864;
  *(inited + 344) = swift_getKeyPath();
  strcpy((inited + 352), "usoQuantifier");
  *(inited + 366) = -4864;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x41656D61536F7375;
  *(inited + 384) = 0xE900000000000073;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x41656D61536F7375;
  *(inited + 408) = 0xE900000000000073;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000012;
  *(inited + 432) = 0x80000002683FFF30;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000012;
  *(inited + 456) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E10, &qword_2683EF198);
  sub_2683CF9D8();
  type metadata accessor for Common.ListPosition(0);
  return sub_2683CD178();
}

uint64_t sub_2683015E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252D58, &qword_2683EE168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C00;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252D60, &qword_2683EE260);
  sub_2683CF9D8();
  type metadata accessor for Common.MeasurementUnitType(0);
  return sub_2683CD178();
}

uint64_t sub_268301870()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252CD8, &qword_2683ED508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C10;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "integerValue");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "integerValue");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x80000002683FFF10;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x80000002683FFF10;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x41656D61536F7375;
  *(inited + 288) = 0xE900000000000073;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x41656D61536F7375;
  *(inited + 312) = 0xE900000000000073;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x80000002683FFF30;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252CE0, &qword_2683ED628);
  sub_2683CF9D8();
  type metadata accessor for Common.MonthOfYear(0);
  return sub_2683CD178();
}

uint64_t sub_268301B38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E98, &qword_2683EFE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C60;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000002683FFF70;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000012;
  *(inited + 72) = 0x80000002683FFF70;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x656D686361747461;
  *(inited + 96) = 0xEB0000000073746ELL;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x656D686361747461;
  *(inited + 120) = 0xEB0000000073746ELL;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x7265646C6F66;
  *(inited + 144) = 0xE600000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x7265646C6F66;
  *(inited + 168) = 0xE600000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 1701667182;
  *(inited + 192) = 0xE400000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 1701667182;
  *(inited + 216) = 0xE400000000000000;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "stringContent");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "stringContent");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 1936154996;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 1936154996;
  *(inited + 312) = 0xE400000000000000;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x80000002683FFF10;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x80000002683FFF10;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x507473694C6F7375;
  *(inited + 384) = 0xEF6E6F697469736FLL;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x507473694C6F7375;
  *(inited + 408) = 0xEF6E6F697469736FLL;
  *(inited + 416) = swift_getKeyPath();
  strcpy((inited + 424), "usoQuantifier");
  *(inited + 438) = -4864;
  *(inited + 440) = swift_getKeyPath();
  strcpy((inited + 448), "usoQuantifier");
  *(inited + 462) = -4864;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x41656D61536F7375;
  *(inited + 480) = 0xE900000000000073;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x41656D61536F7375;
  *(inited + 504) = 0xE900000000000073;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x80000002683FFF30;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252EA0, &qword_2683EFFE8);
  sub_2683CF9D8();
  type metadata accessor for Common.Note(0);
  return sub_2683CD178();
}

uint64_t sub_268301EF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C48, &qword_2683ECA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6BF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000002683FFF70;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000012;
  *(inited + 72) = 0x80000002683FFF70;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x7365746F6ELL;
  *(inited + 144) = 0xE500000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x7365746F6ELL;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x80000002683FFF10;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x80000002683FFF10;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x80000002683FFF30;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C50, &qword_2683ECB48);
  sub_2683CF9D8();
  type metadata accessor for Common.NoteFolder(0);
  return sub_2683CD178();
}

uint64_t sub_2683021DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F48, &qword_2683F0C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C10;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x80000002683FFF10;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x80000002683FFF10;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x41656D61536F7375;
  *(inited + 288) = 0xE900000000000073;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x41656D61536F7375;
  *(inited + 312) = 0xE900000000000073;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x80000002683FFF30;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F50, &qword_2683F0D40);
  sub_2683CF9D8();
  type metadata accessor for Common.Number(0);
  return sub_2683CD178();
}

uint64_t sub_2683024A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E38, &qword_2683EF418);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C00;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252E40, &qword_2683EF510);
  sub_2683CF9D8();
  type metadata accessor for Common.NumberSign(0);
  return sub_2683CD178();
}

uint64_t sub_26830272C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F18, &qword_2683F0880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C00;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002683FFF10;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x80000002683FFF10;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x41656D61536F7375;
  *(inited + 240) = 0xE900000000000073;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x41656D61536F7375;
  *(inited + 264) = 0xE900000000000073;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000002683FFF30;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F20, &qword_2683F0978);
  sub_2683CF9D8();
  type metadata accessor for Common.OffsetDirection(0);
  return sub_2683CD178();
}

uint64_t sub_2683029B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C88, &qword_2683ECF40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6BF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x7475626972747461;
  *(inited + 48) = 0xEA00000000007365;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x7475626972747461;
  *(inited + 72) = 0xEA00000000007365;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 1701667182;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000018;
  *(inited + 144) = 0x8000000268400050;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000018;
  *(inited + 168) = 0x8000000268400050;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x80000002683FFF10;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x80000002683FFF10;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x80000002683FFF30;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C90, &qword_2683ED088);
  sub_2683CF9D8();
  type metadata accessor for Common.Organization(0);
  return sub_2683CD178();
}

uint64_t sub_268302CB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252CE8, &qword_2683ED630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C70;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 6645601;
  *(inited + 48) = 0xE300000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 6645601;
  *(inited + 72) = 0xE300000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "associatedDate");
  *(inited + 103) = -18;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "associatedDate");
  *(inited + 127) = -18;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000016;
  *(inited + 144) = 0x8000000268400130;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000016;
  *(inited + 168) = 0x8000000268400130;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x7475626972747461;
  *(inited + 192) = 0xEA00000000007365;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x7475626972747461;
  *(inited + 216) = 0xEA00000000007365;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x7461646874726962;
  *(inited + 240) = 0xE900000000000065;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x7461646874726962;
  *(inited + 264) = 0xE900000000000065;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "definedValue");
  *(inited + 293) = 0;
  *(inited + 294) = -5120;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "definedValue");
  *(inited + 317) = 0;
  *(inited + 318) = -5120;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000017;
  *(inited + 336) = 0x8000000268400150;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000017;
  *(inited + 360) = 0x8000000268400150;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x6E6F697461636F6CLL;
  *(inited + 384) = 0xE800000000000000;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x6E6F697461636F6CLL;
  *(inited + 408) = 0xE800000000000000;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 1701667182;
  *(inited + 432) = 0xE400000000000000;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 1701667182;
  *(inited + 456) = 0xE400000000000000;
  *(inited + 464) = swift_getKeyPath();
  strcpy((inited + 472), "phoneticName");
  *(inited + 485) = 0;
  *(inited + 486) = -5120;
  *(inited + 488) = swift_getKeyPath();
  strcpy((inited + 496), "phoneticName");
  *(inited + 509) = 0;
  *(inited + 510) = -5120;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000016;
  *(inited + 528) = 0x8000000268400170;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000016;
  *(inited + 552) = 0x8000000268400170;
  *(inited + 560) = swift_getKeyPath();
  strcpy((inited + 568), "relationships");
  *(inited + 582) = -4864;
  *(inited + 584) = swift_getKeyPath();
  strcpy((inited + 592), "relationships");
  *(inited + 606) = -4864;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0xD000000000000018;
  *(inited + 624) = 0x8000000268400050;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0xD000000000000018;
  *(inited + 648) = 0x8000000268400050;
  *(inited + 656) = swift_getKeyPath();
  strcpy((inited + 664), "structuredName");
  *(inited + 679) = -18;
  *(inited + 680) = swift_getKeyPath();
  strcpy((inited + 688), "structuredName");
  *(inited + 703) = -18;
  *(inited + 704) = swift_getKeyPath();
  *(inited + 712) = 0xD000000000000010;
  *(inited + 720) = 0x80000002683FFF10;
  *(inited + 728) = swift_getKeyPath();
  *(inited + 736) = 0xD000000000000010;
  *(inited + 744) = 0x80000002683FFF10;
  *(inited + 752) = swift_getKeyPath();
  *(inited + 760) = 0x507473694C6F7375;
  *(inited + 768) = 0xEF6E6F697469736FLL;
  *(inited + 776) = swift_getKeyPath();
  *(inited + 784) = 0x507473694C6F7375;
  *(inited + 792) = 0xEF6E6F697469736FLL;
  *(inited + 800) = swift_getKeyPath();
  strcpy((inited + 808), "usoQuantifier");
  *(inited + 822) = -4864;
  *(inited + 824) = swift_getKeyPath();
  strcpy((inited + 832), "usoQuantifier");
  *(inited + 846) = -4864;
  *(inited + 848) = swift_getKeyPath();
  *(inited + 856) = 0x41656D61536F7375;
  *(inited + 864) = 0xE900000000000073;
  *(inited + 872) = swift_getKeyPath();
  *(inited + 880) = 0x41656D61536F7375;
  *(inited + 888) = 0xE900000000000073;
  *(inited + 896) = swift_getKeyPath();
  *(inited + 904) = 0xD000000000000012;
  *(inited + 912) = 0x80000002683FFF30;
  *(inited + 920) = swift_getKeyPath();
  *(inited + 928) = 0xD000000000000012;
  *(inited + 936) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252CF0, &qword_2683ED930);
  sub_2683CF9D8();
  type metadata accessor for Common.Person(0);
  return sub_2683CD178();
}

uint64_t sub_2683032B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252D28, &qword_2683EDC38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C60;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x614E796C696D6166;
  *(inited + 48) = 0xEA0000000000656DLL;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x614E796C696D6166;
  *(inited + 72) = 0xEA0000000000656DLL;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x6D614E6E65766967;
  *(inited + 96) = 0xE900000000000065;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x6D614E6E65766967;
  *(inited + 120) = 0xE900000000000065;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x614E656C6464696DLL;
  *(inited + 144) = 0xEA0000000000656DLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x614E656C6464696DLL;
  *(inited + 168) = 0xEA0000000000656DLL;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x74736F50656D616ELL;
  *(inited + 192) = 0xEB00000000786966;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x74736F50656D616ELL;
  *(inited + 216) = 0xEB00000000786966;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x66657250656D616ELL;
  *(inited + 240) = 0xEA00000000007869;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x66657250656D616ELL;
  *(inited + 264) = 0xEA00000000007869;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x656D614E6B63696ELL;
  *(inited + 288) = 0xE800000000000000;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x656D614E6B63696ELL;
  *(inited + 312) = 0xE800000000000000;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x80000002683FFF10;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x80000002683FFF10;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x507473694C6F7375;
  *(inited + 384) = 0xEF6E6F697469736FLL;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x507473694C6F7375;
  *(inited + 408) = 0xEF6E6F697469736FLL;
  *(inited + 416) = swift_getKeyPath();
  strcpy((inited + 424), "usoQuantifier");
  *(inited + 438) = -4864;
  *(inited + 440) = swift_getKeyPath();
  strcpy((inited + 448), "usoQuantifier");
  *(inited + 462) = -4864;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x41656D61536F7375;
  *(inited + 480) = 0xE900000000000073;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x41656D61536F7375;
  *(inited + 504) = 0xE900000000000073;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000012;
  *(inited + 528) = 0x80000002683FFF30;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000012;
  *(inited + 552) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252D30, &qword_2683EDDF8);
  sub_2683CF9D8();
  type metadata accessor for Common.PersonName(0);
  return sub_2683CD178();
}

uint64_t sub_26830367C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252DA8, &qword_2683EE7A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6BF0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x737265506D6F7266;
  *(inited + 48) = 0xEA00000000006E6FLL;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x737265506D6F7266;
  *(inited + 72) = 0xEA00000000006E6FLL;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000268400390;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000268400390;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x6E6F737265506F74;
  *(inited + 144) = 0xE800000000000000;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x6E6F737265506F74;
  *(inited + 168) = 0xE800000000000000;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x80000002683FFF10;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x80000002683FFF10;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x507473694C6F7375;
  *(inited + 240) = 0xEF6E6F697469736FLL;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0x507473694C6F7375;
  *(inited + 264) = 0xEF6E6F697469736FLL;
  *(inited + 272) = swift_getKeyPath();
  strcpy((inited + 280), "usoQuantifier");
  *(inited + 294) = -4864;
  *(inited + 296) = swift_getKeyPath();
  strcpy((inited + 304), "usoQuantifier");
  *(inited + 318) = -4864;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x80000002683FFF30;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252DB0, &qword_2683EE8F0);
  sub_2683CF9D8();
  type metadata accessor for Common.PersonRelationship(0);
  return sub_2683CD178();
}

uint64_t sub_26830397C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F28, &qword_2683F0980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6BE0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x73736572646461;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x73736572646461;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000268400670;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000268400670;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x69726F6765746163;
  *(inited + 144) = 0xEA00000000007365;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x69726F6765746163;
  *(inited + 168) = 0xEA00000000007365;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x656E6961746E6F63;
  *(inited + 192) = 0xEB000000006E4964;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x656E6961746E6F63;
  *(inited + 216) = 0xEB000000006E4964;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 1701667182;
  *(inited + 240) = 0xE400000000000000;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 1701667182;
  *(inited + 264) = 0xE400000000000000;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000010;
  *(inited + 288) = 0x80000002683FFF10;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000010;
  *(inited + 312) = 0x80000002683FFF10;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x507473694C6F7375;
  *(inited + 336) = 0xEF6E6F697469736FLL;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x507473694C6F7375;
  *(inited + 360) = 0xEF6E6F697469736FLL;
  *(inited + 368) = swift_getKeyPath();
  strcpy((inited + 376), "usoQuantifier");
  *(inited + 390) = -4864;
  *(inited + 392) = swift_getKeyPath();
  strcpy((inited + 400), "usoQuantifier");
  *(inited + 414) = -4864;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0x41656D61536F7375;
  *(inited + 432) = 0xE900000000000073;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0x41656D61536F7375;
  *(inited + 456) = 0xE900000000000073;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x80000002683FFF30;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000012;
  *(inited + 504) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F30, &qword_2683F0B18);
  sub_2683CF9D8();
  type metadata accessor for Common.PointOfInterest(0);
  return sub_2683CD178();
}

uint64_t sub_268303CF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C28, &qword_2683EC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C80;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 2037672291;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 2037672291;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x7972746E756F63;
  *(inited + 96) = 0xE700000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7972746E756F63;
  *(inited + 120) = 0xE700000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x72745373736F7263;
  *(inited + 144) = 0xEB00000000746565;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x72745373736F7263;
  *(inited + 168) = 0xEB00000000746565;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x6C6562616CLL;
  *(inited + 192) = 0xE500000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x6C6562616CLL;
  *(inited + 216) = 0xE500000000000000;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "neighborhood");
  *(inited + 245) = 0;
  *(inited + 246) = -5120;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "neighborhood");
  *(inited + 269) = 0;
  *(inited + 270) = -5120;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x6F436C6174736F70;
  *(inited + 288) = 0xEA00000000006564;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x6F436C6174736F70;
  *(inited + 312) = 0xEA00000000006564;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x65636E69766F7270;
  *(inited + 336) = 0xE800000000000000;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x65636E69766F7270;
  *(inited + 360) = 0xE800000000000000;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x746565727473;
  *(inited + 384) = 0xE600000000000000;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0x746565727473;
  *(inited + 408) = 0xE600000000000000;
  *(inited + 416) = swift_getKeyPath();
  strcpy((inited + 424), "streetNumber");
  *(inited + 437) = 0;
  *(inited + 438) = -5120;
  *(inited + 440) = swift_getKeyPath();
  strcpy((inited + 448), "streetNumber");
  *(inited + 461) = 0;
  *(inited + 462) = -5120;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0xD000000000000010;
  *(inited + 480) = 0x8000000268400030;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0xD000000000000010;
  *(inited + 504) = 0x8000000268400030;
  *(inited + 512) = swift_getKeyPath();
  *(inited + 520) = 0xD000000000000010;
  *(inited + 528) = 0x80000002683FFF10;
  *(inited + 536) = swift_getKeyPath();
  *(inited + 544) = 0xD000000000000010;
  *(inited + 552) = 0x80000002683FFF10;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0x507473694C6F7375;
  *(inited + 576) = 0xEF6E6F697469736FLL;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0x507473694C6F7375;
  *(inited + 600) = 0xEF6E6F697469736FLL;
  *(inited + 608) = swift_getKeyPath();
  strcpy((inited + 616), "usoQuantifier");
  *(inited + 630) = -4864;
  *(inited + 632) = swift_getKeyPath();
  strcpy((inited + 640), "usoQuantifier");
  *(inited + 654) = -4864;
  *(inited + 656) = swift_getKeyPath();
  *(inited + 664) = 0x41656D61536F7375;
  *(inited + 672) = 0xE900000000000073;
  *(inited + 680) = swift_getKeyPath();
  *(inited + 688) = 0x41656D61536F7375;
  *(inited + 696) = 0xE900000000000073;
  *(inited + 704) = swift_getKeyPath();
  *(inited + 712) = 0xD000000000000012;
  *(inited + 720) = 0x80000002683FFF30;
  *(inited + 728) = swift_getKeyPath();
  *(inited + 736) = 0xD000000000000012;
  *(inited + 744) = 0x80000002683FFF30;
  *(inited + 752) = swift_getKeyPath();
  *(inited + 760) = 0x65756C6176;
  *(inited + 768) = 0xE500000000000000;
  *(inited + 776) = swift_getKeyPath();
  *(inited + 784) = 0x65756C6176;
  *(inited + 792) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252C30, &qword_2683EC880);
  sub_2683CF9D8();
  type metadata accessor for Common.PostalAddress(0);
  return sub_2683CD178();
}

uint64_t sub_2683041FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252CB8, &qword_2683ED2E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C10;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x746E756F63;
  *(inited + 48) = 0xE500000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x746E756F63;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "definedValue");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "definedValue");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0xD000000000000010;
  *(inited + 144) = 0x80000002683FFF10;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x80000002683FFF10;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x507473694C6F7375;
  *(inited + 192) = 0xEF6E6F697469736FLL;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0x507473694C6F7375;
  *(inited + 216) = 0xEF6E6F697469736FLL;
  *(inited + 224) = swift_getKeyPath();
  strcpy((inited + 232), "usoQuantifier");
  *(inited + 246) = -4864;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "usoQuantifier");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x41656D61536F7375;
  *(inited + 288) = 0xE900000000000073;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x41656D61536F7375;
  *(inited + 312) = 0xE900000000000073;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x80000002683FFF30;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252CC0, &qword_2683ED400);
  sub_2683CF9D8();
  type metadata accessor for Common.Quantifier(0);
  return sub_2683CD178();
}

uint64_t sub_2683044C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252DD8, &qword_2683EEB48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683E6C30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000002684003F0;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000016;
  *(inited + 72) = 0x80000002684003F0;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x8000000268400410;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000014;
  *(inited + 120) = 0x8000000268400410;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "definedValue");
  *(inited + 149) = 0;
  *(inited + 150) = -5120;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "definedValue");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 1701667182;
  *(inited + 192) = 0xE400000000000000;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 1701667182;
  *(inited + 216) = 0xE400000000000000;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000017;
  *(inited + 240) = 0x8000000268400430;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000017;
  *(inited + 264) = 0x8000000268400430;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000013;
  *(inited + 288) = 0x8000000268400450;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000013;
  *(inited + 312) = 0x8000000268400450;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000010;
  *(inited + 336) = 0x8000000268400470;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000010;
  *(inited + 360) = 0x8000000268400470;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000018;
  *(inited + 384) = 0x8000000268400490;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000018;
  *(inited + 408) = 0x8000000268400490;
  *(inited + 416) = swift_getKeyPath();
  *(inited + 424) = 0xD000000000000010;
  *(inited + 432) = 0x80000002683FFF10;
  *(inited + 440) = swift_getKeyPath();
  *(inited + 448) = 0xD000000000000010;
  *(inited + 456) = 0x80000002683FFF10;
  *(inited + 464) = swift_getKeyPath();
  *(inited + 472) = 0x507473694C6F7375;
  *(inited + 480) = 0xEF6E6F697469736FLL;
  *(inited + 488) = swift_getKeyPath();
  *(inited + 496) = 0x507473694C6F7375;
  *(inited + 504) = 0xEF6E6F697469736FLL;
  *(inited + 512) = swift_getKeyPath();
  strcpy((inited + 520), "usoQuantifier");
  *(inited + 534) = -4864;
  *(inited + 536) = swift_getKeyPath();
  strcpy((inited + 544), "usoQuantifier");
  *(inited + 558) = -4864;
  *(inited + 560) = swift_getKeyPath();
  *(inited + 568) = 0x41656D61536F7375;
  *(inited + 576) = 0xE900000000000073;
  *(inited + 584) = swift_getKeyPath();
  *(inited + 592) = 0x41656D61536F7375;
  *(inited + 600) = 0xE900000000000073;
  *(inited + 608) = swift_getKeyPath();
  *(inited + 616) = 0xD000000000000012;
  *(inited + 624) = 0x80000002683FFF30;
  *(inited + 632) = swift_getKeyPath();
  *(inited + 640) = 0xD000000000000012;
  *(inited + 648) = 0x80000002683FFF30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252DE0, &qword_2683EED58);
  sub_2683CF9D8();
  type metadata accessor for Common.RecurringDateTime(0);
  return sub_2683CD178();
}