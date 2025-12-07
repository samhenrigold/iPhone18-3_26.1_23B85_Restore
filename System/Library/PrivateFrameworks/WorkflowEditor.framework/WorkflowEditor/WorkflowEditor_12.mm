void sub_27451EB58(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30_1(a1 + 16, v22);
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);
  for (i = 48; ; i += 16)
  {
    if (v6 == v4)
    {
      v4 = *(v5 + 16);
      v9 = v4;
      goto LABEL_22;
    }

    if (v4 >= *(v5 + 16))
    {
      break;
    }

    sub_274527BD8(v5 + i - 16, v21);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_274527C10(v21);
    if (!Strong)
    {
      v9 = v4 + 1;
      v10 = *(v5 + 16);
      if (v10 - 1 != v4)
      {
        while (v9 < v10)
        {
          sub_274527BD8(v5 + i, v21);
          v11 = swift_unknownObjectWeakLoadStrong();
          sub_274527C10(v21);
          if (v11)
          {
            swift_unknownObjectRelease();
            if (v9 != v4)
            {
              if ((v4 & 0x8000000000000000) != 0)
              {
                goto LABEL_31;
              }

              v12 = *(v5 + 16);
              if (v4 >= v12)
              {
                goto LABEL_32;
              }

              sub_274527BD8(v5 + 32 + 16 * v4, v21);
              if (v9 >= v12)
              {
                goto LABEL_33;
              }

              sub_274527BD8(v5 + i, v20);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(a1 + 16) = v5;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_27453AD30();
                v5 = v14;
                *(a1 + 16) = v14;
              }

              if (v4 >= *(v5 + 16))
              {
                goto LABEL_34;
              }

              sub_274527C40(v20, v5 + 16 * v4 + 32);
              *(a1 + 16) = v5;
              if (v9 >= *(v5 + 16))
              {
                goto LABEL_35;
              }

              sub_274527C40(v21, v5 + i);
              *(a1 + 16) = v5;
            }

            ++v4;
          }

          ++v9;
          v10 = *(v5 + 16);
          i += 16;
          if (v9 == v10)
          {
            if (v9 < v4)
            {
              goto LABEL_36;
            }

            goto LABEL_22;
          }
        }

        goto LABEL_30;
      }

LABEL_22:
      sub_2745C3664(v4, v9);
      swift_endAccess();
      v15 = *(a1 + 16);
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = v15 + 32;

        do
        {
          sub_274527BD8(v17, v22);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v18 = v23;
            ObjectType = swift_getObjectType();
            (*(v18 + 24))(a2, ObjectType, v18);
            swift_unknownObjectRelease();
          }

          sub_274527C10(v22);
          v17 += 16;
          --v16;
        }

        while (v16);
      }

      else
      {
      }

      return;
    }

    swift_unknownObjectRelease();
    ++v4;
  }

  __break(1u);
LABEL_30:
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
}

void sub_27451EDE8(void *a1)
{
  sub_27451D9B8([a1 inputAction]);

  sub_27451E8C0(v2, v1);
}

uint64_t sub_27451EE48(void *a1)
{
  v1 = [a1 actions];
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  OUTLINED_FUNCTION_0_10();
  v2 = sub_27463B81C();

  sub_274520070(v2);
}

uint64_t sub_27451EEE0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

void sub_27451EF40()
{
  type metadata accessor for ActionList(0);
  sub_274527B94(&qword_28094AFC8, type metadata accessor for ActionList);
  OUTLINED_FUNCTION_21_2();
  sub_274638EFC();
  sub_274638F3C();

  sub_27451EB58(v1, v0);
}

BOOL sub_27451F01C(uint64_t *a1)
{
  v2 = *a1;
  v3 = [*(v1 + 24) actionTree];
  v4 = [v3 actionsGroupedWithAction_];

  result = 0;
  if (v4)
  {

    objc_opt_self();
    OUTLINED_FUNCTION_0_10();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      if ([v5 mode] != 2)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_27451F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_20_10(a1, a2, a3, a4, a5, a6, a7, a8, v13, v15, v16);
  if (result)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_54_1();
    v11 = swift_dynamicCastObjCClass();
    v12 = v9;
    if (v11)
    {
      [v11 setCollapsed_];
    }

    v14 = *(v8 + OBJC_IVAR____TtC14WorkflowEditor10ActionList_manuallyCollapsedControlFlowActions);

    sub_27452179C();
    return sub_27451DE7C(v14);
  }

  return result;
}

uint64_t sub_27451F174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_20_10(a1, a2, a3, a4, a5, a6, a7, a8, v13, v15[0], *&v15[1]);
  if (result)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_54_1();
    v11 = swift_dynamicCastObjCClass();
    v12 = v9;
    if (v11)
    {
      [v11 setCollapsed_];
    }

    v14 = *(v8 + OBJC_IVAR____TtC14WorkflowEditor10ActionList_manuallyCollapsedControlFlowActions);

    sub_2745FE8EC(v12, v15);
    return sub_27451DE7C(v14);
  }

  return result;
}

void sub_27451F220()
{
  OUTLINED_FUNCTION_55_1();
  sub_27451DF10(MEMORY[0x277D84FA0]);
  v1 = sub_27451D914();
  if (!v1)
  {
    goto LABEL_10;
  }

  sub_27451D928(0);
  v2 = [*(v0 + 24) actions];
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  OUTLINED_FUNCTION_54_1();
  v3 = sub_27463B81C();

  v4 = sub_274453594();
  if (!v4)
  {
LABEL_9:

    sub_27451EB58(v10, v0);
LABEL_10:
    OUTLINED_FUNCTION_56_0();
    return;
  }

  v5 = v4;
  if (v4 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = OUTLINED_FUNCTION_13_3();
        v8 = MEMORY[0x277C58B20](v7);
      }

      else
      {
        v8 = *(v3 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setActionTree_];
    }

    goto LABEL_9;
  }

  __break(1u);
}

void sub_27451F32C(void **a1)
{
  v2 = v1;
  v3 = *a1;
  objc_opt_self();
  OUTLINED_FUNCTION_54_1();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v10 = v3;
    if ([v5 mode] || (v10 = v10, v6 = sub_274527314(v5), !v7))
    {
    }

    else
    {
      v8 = v6;
      v9 = v7;
      v11 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor10ActionList_collapsedActionGroupIdentifiersForDragging);

      sub_274521FF8(&v12, v8, v9);

      sub_27451DF10(v11);
    }
  }
}

void sub_27451F424()
{
  OUTLINED_FUNCTION_55_1();
  v2 = v1;
  v3 = v1;
  sub_27451D928(v2);
  v4 = [v3 actions];
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  v5 = sub_27463B81C();

  v6 = sub_274453594();
  if (!v6)
  {
LABEL_8:

    sub_27451EB58(v11, v0);
    OUTLINED_FUNCTION_56_0();
    return;
  }

  v7 = v6;
  if (v6 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x277C58B20](i, v5);
      }

      else
      {
        v9 = *(v5 + 8 * i + 32);
      }

      v10 = v9;
      [v9 setActionTree_];
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_27451F52C()
{
  OUTLINED_FUNCTION_55_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_29_7(KeyPath);

  sub_274527384();
  sub_27463BACC();
  sub_27463BB0C();
  v7 = sub_27463BAFC();
  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_25_1();
  v8(v9);
  if (v7 == v2)
  {
    v10 = [*(v0 + 24) actions];
    sub_274412734(0, &qword_28094E040, 0x277D7C098);
    OUTLINED_FUNCTION_0_10();
    sub_27463B81C();

    sub_274453594();
LABEL_5:

    OUTLINED_FUNCTION_56_0();
    return;
  }

  swift_getKeyPath();
  v11 = swift_getKeyPath();
  OUTLINED_FUNCTION_29_7(v11);

  v12 = sub_27463831C();
  v13 = OUTLINED_FUNCTION_25_1();
  v8(v13);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v12 + 16) > v2)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_27451F738()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v21 - v10;
  v12 = *(v1 + 24);
  v13 = [v12 actions];
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  sub_27463B81C();

  v14 = sub_274453594();

  if (v14 == v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    sub_274527384();
    OUTLINED_FUNCTION_24_3();
    sub_27463BACC();
    OUTLINED_FUNCTION_24_3();
    sub_27463BB0C();
    sub_27463BAFC();
    (*(v6 + 8))(v11, v4);
  }

  else
  {
    v15 = [v12 actions];
    v16 = sub_27463B81C();

    sub_2744535A4();
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x277C58B20](v3, v16);
    }

    else
    {
      v17 = *(v16 + 8 * v3 + 32);
    }

    v18 = v17;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    v21 = v18;
    sub_27463837C();
    v19 = OUTLINED_FUNCTION_13_3();
    v20(v19);
    if (v22)
    {
    }
  }

  OUTLINED_FUNCTION_23();
}

id sub_27451F9FC(uint64_t a1)
{
  v3 = sub_27451D914();
  if (!v3)
  {
    v3 = [*(v1 + 24) actionTree];
  }

  v4 = v3;
  v5 = [v3 actionIsConnectedToPreviousAction_];

  return v5;
}

void sub_27451FA64(uint64_t a1)
{
  v3 = sub_27451D914();
  if (!v3)
  {
    v3 = [*(v1 + 24) actionTree];
  }

  v4 = v3;
  v5 = [v3 indexOfAction_];
  if (v5 == sub_274637CAC())
  {
  }

  else
  {
    v6 = [v4 indentationLevelOfActionAtIndex_];

    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }
  }
}

uint64_t sub_27451FB04(uint64_t *a1)
{
  v2 = *a1;
  v3 = [*(v1 + 24) actionTree];
  v4 = [v3 actionsGroupedWithAction_];

  if (!v4)
  {
    return 0;
  }

  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  OUTLINED_FUNCTION_0_10();
  v5 = sub_27463B81C();

  return v5;
}

uint64_t sub_27451FB98(uint64_t *a1)
{
  v2 = *a1;
  v3 = [*(v1 + 24) actionTree];
  v4 = [v3 actionsInControlFlowBranch_];

  if (!v4)
  {
    return 0;
  }

  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  OUTLINED_FUNCTION_0_10();
  sub_27463B81C();

  v5 = sub_274453594();

  return v5;
}

char *sub_27451FC40(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (v4)
  {
    v54 = MEMORY[0x277D84F90];
    sub_2744512AC(0, v4, 0);
    v5 = v54;
    v6 = (a1 + 32);
    v7 = v54[2];
    v8 = v4;
    do
    {
      v9 = *v6;
      v54 = v5;
      v10 = *(v5 + 24);
      if (v7 >= v10 >> 1)
      {
        v11 = OUTLINED_FUNCTION_0_8(v10);
        sub_2744512AC(v11, v7 + 1, 1);
        v5 = v54;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + 8 * v7 + 32) = v9;
      v6 += 3;
      ++v7;
      --v8;
    }

    while (v8);
    v3 = MEMORY[0x277D84F90];
  }

  v12 = sub_2745E18E8();
  v56 = MEMORY[0x277D84FA0];
  if (v4)
  {
    v50 = v4;
    v51 = v12;
    v13 = 0;
    v14 = a1 + 32;
    v49 = a1 + 32;
    while (1)
    {
      v15 = v14 + 24 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = v56;
      if (*(v56 + 16))
      {
        v52 = *(v15 + 8);
        sub_27463C74C();
        MEMORY[0x277C58EA0](v16);
        v19 = sub_27463C7AC();
        v17 = v52;
        v20 = ~(-1 << *(v18 + 32));
        while (1)
        {
          v21 = v19 & v20;
          if (((*(v18 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
          {
            break;
          }

          v19 = v21 + 1;
          if (*(*(v18 + 48) + 8 * v21) == v16)
          {
            goto LABEL_39;
          }
        }
      }

      v54 = v16;
      v55 = v17;
      v53 = v16;
      v22 = sub_27451FB04(&v54);
      if (!v22)
      {
        goto LABEL_28;
      }

      v23 = v22;
      v24 = sub_274453594();
      if (v24)
      {
        v25 = v24;
        v54 = v3;
        v26 = OUTLINED_FUNCTION_34_5();
        result = sub_2744512AC(v26, v27, v28);
        if (v25 < 0)
        {
          __break(1u);
          return result;
        }

        v30 = 0;
        v31 = v54;
        do
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x277C58B20](v30, v23);
          }

          else
          {
            v32 = *(v23 + 8 * v30 + 32);
          }

          v33 = v32;

          v54 = v31;
          v35 = *(v31 + 16);
          v34 = *(v31 + 24);
          if (v35 >= v34 >> 1)
          {
            v36 = OUTLINED_FUNCTION_0_8(v34);
            sub_2744512AC(v36, v35 + 1, 1);
            v31 = v54;
          }

          ++v30;
          *(v31 + 16) = v35 + 1;
          *(v31 + 8 * v35 + 32) = v33;
        }

        while (v25 != v30);
        v3 = MEMORY[0x277D84F90];
      }

      else
      {
        v31 = v3;
      }

      if (sub_27451D694(v37, v51))
      {
        break;
      }

      sub_2745882AC(v31);
      sub_2744535A4();
      if ((v23 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x277C58B20](0, v23);
      }

      else
      {
        v41 = *(v23 + 32);
      }

      v42 = v41;
      v14 = v49;
      v4 = v50;

      v43 = sub_2744F4830();

      v44 = v43;
      MEMORY[0x277C57F30]();
      v45 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v45 >> 1)
      {
        OUTLINED_FUNCTION_0_8(v45);
        sub_27463B85C();
      }

      sub_27463B8AC();
      v46 = sub_27451B594(v44);
      if (!v46)
      {
        v46 = v3;
      }

      sub_27445BC10(v46);

      v38 = v53;
LABEL_38:

LABEL_39:
      if (++v13 == v4)
      {

        goto LABEL_43;
      }
    }

    v14 = v49;
    v4 = v50;
LABEL_28:
    v38 = v53;
    v39 = v53;
    sub_2744F4830();

    MEMORY[0x277C57F30]();
    v40 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v40 >> 1)
    {
      OUTLINED_FUNCTION_0_8(v40);
      sub_27463B85C();
    }

    sub_27463B8AC();
    goto LABEL_38;
  }

LABEL_43:

  if (a2)
  {
    return v57;
  }

  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  v47 = sub_2744F386C(v57);

  return v47;
}

void sub_274520070(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor10ActionList_lastActions;

  v4 = OUTLINED_FUNCTION_24_3();
  sub_2744F5CB4(v4, v5);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    *(v1 + v3) = a1;

    sub_274520100();
    sub_274520448();
    sub_274520F34(a1);
  }
}

void sub_274520100()
{
  OUTLINED_FUNCTION_22_6();
  v1 = [*(v0 + 24) actions];
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  OUTLINED_FUNCTION_21_2();
  v2 = sub_27463B81C();

  v3 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v4 = sub_274453594();
  v5 = 0;
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x277C58B20](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
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

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x277C57F30]();
      v8 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v8 >> 1)
      {
        OUTLINED_FUNCTION_0_8(v8);
        sub_27463B85C();
      }

      OUTLINED_FUNCTION_44_3();
      sub_27463B8AC();
      v3 = v26;
      ++v5;
    }

    else
    {

      ++v5;
    }
  }

  v27 = MEMORY[0x277D84F90];
  v9 = sub_274453594();
  for (i = 0; v9 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x277C58B20](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v11 = *(v3 + 8 * i + 32);
    }

    v12 = v11;
    if (__OFADD__(i, 1))
    {
      goto LABEL_41;
    }

    if ([v11 mode] == 2 || (objc_msgSend(v12, sel_isCollapsed) & 1) == 0)
    {
    }

    else
    {
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
    }
  }

  v13 = v27;
  v14 = sub_274453594();
  if (v14)
  {
    v15 = v14;
    v28 = MEMORY[0x277D84F90];
    v16 = OUTLINED_FUNCTION_34_5();
    sub_2744512AC(v16, v17, v18);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x277C58B20](v19, v13);
          swift_unknownObjectRelease();
        }

        else
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v19 >= *(v13 + 16))
          {
            goto LABEL_44;
          }

          v20 = *(v13 + 8 * v19 + 32);
        }

        v22 = *(v28 + 16);
        v21 = *(v28 + 24);
        if (v22 >= v21 >> 1)
        {
          v23 = OUTLINED_FUNCTION_0_8(v21);
          sub_2744512AC(v23, v22 + 1, 1);
        }

        ++v19;
        *(v28 + 16) = v22 + 1;
        *(v28 + 8 * v22 + 32) = v20;
        if (v15 == v19)
        {
          goto LABEL_36;
        }
      }
    }

    goto LABEL_45;
  }

LABEL_36:

  sub_2745E18E8();
  OUTLINED_FUNCTION_21_10();

  sub_27451DE7C(v24);
}

void sub_274520448()
{
  OUTLINED_FUNCTION_24();
  v2 = v0;
  v65 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v64 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v53 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v53 - v16;
  v18 = *(v0 + 24);

  v19 = [v18 actionTree];
  sub_274520950();

  v20 = v8;

  sub_274638C2C();
  v22 = *(v8 + 16);
  v21 = v8 + 16;
  v63 = v22;
  v22(v14, v17, v6);
  v23 = sub_274638D9C();
  v24 = sub_27463BC1C();
  if (!os_log_type_enabled(v23, v24))
  {

    v43 = *(v20 + 8);
    v43(v14, v6);
    (*(v4 + 8))(v1, v65);
LABEL_11:
    v63(v64, v17, v6);
    sub_27451DAF8();
    sub_2745E09D0();

    sub_27451E628(v52, v2);
    v43(v17, v6);
    OUTLINED_FUNCTION_23();
    return;
  }

  v56 = v24;
  v58 = v23;
  v61 = v17;
  v62 = v4;
  v25 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v68 = v55;
  v57 = v25;
  *v25 = 136315138;
  sub_274527384();
  v26 = sub_27463BADC();
  v27 = MEMORY[0x277D84F90];
  v59 = v20;
  v60 = v1;
  if (!v26)
  {
LABEL_10:
    v44 = v65;
    v45 = MEMORY[0x277C57F80](v27, MEMORY[0x277D837D0]);
    v47 = v46;

    v43 = *(v59 + 8);
    v43(v14, v6);
    v48 = sub_2745E7980(v45, v47, &v68);

    v49 = v57;
    *(v57 + 1) = v48;
    v50 = v58;
    _os_log_impl(&dword_2743F0000, v58, v56, "Visible actions: %s", v49, 0xCu);
    v51 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x277C5A270](v51, -1, -1);
    MEMORY[0x277C5A270](v49, -1, -1);

    (*(v62 + 8))(v60, v44);
    v17 = v61;
    goto LABEL_11;
  }

  v28 = v26;
  v67 = MEMORY[0x277D84F90];
  v29 = OUTLINED_FUNCTION_34_5();
  sub_27445128C(v29, v30, v31);
  v27 = v67;
  sub_27463BACC();
  if ((v28 & 0x8000000000000000) == 0)
  {
    v53[1] = v21;
    v54 = v2;
    do
    {
      v32 = sub_27463BB3C();
      v34 = *(v33 + 8);
      v32(&v66, 0);
      v35 = v34;
      v36 = [v35 identifier];
      v37 = sub_27463B6AC();
      v39 = v38;

      v67 = v27;
      v41 = *(v27 + 16);
      v40 = *(v27 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_27445128C(v40 > 1, v41 + 1, 1);
        v27 = v67;
      }

      *(v27 + 16) = v41 + 1;
      v42 = v27 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      sub_27463BB1C();
      --v28;
    }

    while (v28);
    v2 = v54;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_274520950()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_27444A444();
  v7 = MEMORY[0x277D84F90];
  sub_27463832C();
  v8 = [v0 actionsInsideAction_];
  if (v8)
  {
    v9 = v8;
    sub_274412734(0, &qword_28094E040, 0x277D7C098);
    v7 = sub_27463B81C();
  }

  result = sub_274453594();
  if (result)
  {
    v11 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v11; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x277C58B20](i, v7);
      }

      else
      {
        v13 = *(v7 + 8 * i + 32);
      }

      v14 = v13;
      sub_274520AC0(v13, v4, v2, v6);
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_274520A80@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActionList(0);
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

uint64_t sub_274520AC0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  sub_274527384();
  sub_27463BACC();
  sub_27463BB0C();
  sub_27463BAFC();
  [v4 indexOfAction_];
  v10 = a1;
  sub_27463838C();
  result = sub_27448983C(v10, a3);
  if ((result & 1) == 0)
  {
    v39 = MEMORY[0x277D84F90];
    v12 = [v4 actionsInsideAction_];
    if (v12)
    {
      v13 = v12;
      sub_274412734(0, &qword_28094E040, 0x277D7C098);
      v14 = sub_27463B81C();

      sub_27445BC10(v14);
    }

    v15 = [v5 actionsGroupedWithAction_];
    if (v15)
    {
      v16 = v15;
      sub_274412734(0, &qword_28094E040, 0x277D7C098);
      v17 = sub_27463B81C();

      sub_2744535A4();
      if ((v17 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x277C58B20](0, v17);
        swift_unknownObjectRelease();
        if (v23 != v10)
        {
          goto LABEL_7;
        }
      }

      else if (*(v17 + 32) != v10)
      {
LABEL_7:

        goto LABEL_8;
      }

      v24 = sub_2745272B0(v10);
      if (!v25)
      {
        goto LABEL_7;
      }

      v26 = sub_2744898EC(v24, v25, a2);

      if (!v26)
      {
        v27 = sub_274453594();
        if (v27 < 1)
        {
          goto LABEL_32;
        }

        v28 = v27;
        sub_274547EA0();
        sub_274547EA0();
        if ((v17 & 0xC000000000000001) != 0)
        {

          if (v28 != 1)
          {
            v29 = 1;
            do
            {
              v30 = v29 + 1;
              sub_27463C3BC();
              v29 = v30;
            }

            while (v28 != v30);
          }
        }

        else
        {
        }

        if (v17 >> 62)
        {
          goto LABEL_33;
        }

        v31 = v17 & 0xFFFFFFFFFFFFFF8;
        v32 = (v17 & 0xFFFFFFFFFFFFFF8) + 32;
        v33 = 1;
        v34 = (2 * v28) | 1;
        goto LABEL_30;
      }
    }

    else
    {
LABEL_8:
      while (1)
      {
        v18 = sub_274453594();
        if (!v18)
        {
          break;
        }

        v19 = v18;
        if (v18 >= 1)
        {
          for (i = 0; i != v19; ++i)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x277C58B20](i, v39);
            }

            else
            {
              v21 = *(v39 + 8 * i + 32);
            }

            v22 = v21;
            sub_274520AC0(v21, a2, a3, a4);
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v31 = sub_27463C5DC();
        v32 = v35;
        v37 = v36;
        v34 = v38;

        v33 = v37;
LABEL_30:
        sub_27445BC50(v31, v32, v33, v34);
      }
    }
  }

  return result;
}

uint64_t sub_274520E50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  return v1;
}

uint64_t sub_274520EC4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274638FBC();
}

void sub_274520F34(uint64_t a1)
{
  v2 = sub_274520E50();

  sub_2745E1A5C();
  v43 = v3;
  v4 = sub_274453594();
  if (v4)
  {
    v5 = v4;
    v44 = MEMORY[0x277D84F90];
    v6 = OUTLINED_FUNCTION_34_5();
    sub_2744512AC(v6, v7, v8);
    if (v5 < 0)
    {
LABEL_44:
      __break(1u);
      return;
    }

    for (i = 0; i != v5; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x277C58B20](i, a1);
      }

      else
      {
        v10 = *(a1 + 8 * i + 32);
      }

      v11 = v10;

      v13 = *(v44 + 16);
      v12 = *(v44 + 24);
      if (v13 >= v12 >> 1)
      {
        v14 = OUTLINED_FUNCTION_0_8(v12);
        sub_2744512AC(v14, v13 + 1, 1);
      }

      *(v44 + 16) = v13 + 1;
      *(v44 + 8 * v13 + 32) = v11;
    }

    v15 = v2;
  }

  else
  {
    v15 = v2;
  }

  v16 = sub_2745E18E8();

  v17 = sub_2745F351C(v16, v43);
  v18 = 0;
  OUTLINED_FUNCTION_37_3();
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  while (v22)
  {
LABEL_20:
    v25 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v26 = sub_274534D08(*(*(v17 + 48) + ((v18 << 9) | (8 * v25))));
    if (v27)
    {
      v28 = v26;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954980, &unk_2746600B0);
      sub_27463C4CC();

      type metadata accessor for ActionViewModel();
      sub_27444A444();
      sub_27463C4EC();
    }
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v24 >= v23)
    {
      break;
    }

    v22 = *(v17 + 56 + 8 * v24);
    ++v18;
    if (v22)
    {
      v18 = v24;
      goto LABEL_20;
    }
  }

  v45 = v15;

  v29 = sub_274526C6C(v43, v16);

  v30 = sub_274453594();
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x277C58B20](v32, a1);
      }

      else
      {
        if (v32 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v33 = *(a1 + 32 + 8 * v32);
      }

      v34 = v33;
      if (__OFADD__(v32++, 1))
      {
        goto LABEL_42;
      }

      if (*(v29 + 16))
      {
        sub_27463C74C();
        MEMORY[0x277C58EA0](v34);
        sub_27463C7AC();
        OUTLINED_FUNCTION_36_2();
        v38 = ~v37;
        while (1)
        {
          v39 = v36 & v38;
          if (((*(v29 + 56 + (((v36 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v38)) & 1) == 0)
          {
            break;
          }

          v36 = v39 + 1;
          if (*(*(v29 + 48) + 8 * v39) == v34)
          {
            goto LABEL_35;
          }
        }
      }

      v40 = objc_allocWithZone(type metadata accessor for ActionViewModel());
      v41 = v34;
      v42 = ActionViewModel.init(_:)(v41);
      v34 = sub_27452719C(v42, v41);

LABEL_35:
      if (v32 == v31)
      {

        v15 = v45;
        goto LABEL_38;
      }
    }
  }

LABEL_38:

  sub_274520EC4(v15);
}

id sub_2745212EC(void *a1)
{
  v2 = sub_274520E50();
  v3 = sub_27452F400(a1, v2);

  if (!v3)
  {
    v4 = objc_allocWithZone(type metadata accessor for ActionViewModel());
    v5 = a1;
    v6 = ActionViewModel.init(_:)(v5);
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v6;
    v7 = sub_274638F9C();
    v9 = v8;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v9;
    v10 = OUTLINED_FUNCTION_44_3();
    sub_2745FC600(v10, v5, v11);
    *v9 = v13;
    v7(v14, 0);
  }

  return v3;
}

uint64_t sub_27452140C()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor20ActionViewModelStore__viewModels;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFC0, &qword_274656928);
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2745214A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFC0, &qword_274656928);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v4);
  v6 = v9 - v5;
  v7 = OBJC_IVAR____TtC14WorkflowEditor20ActionViewModelStore__viewModels;
  type metadata accessor for ActionViewModel();
  sub_27444A444();
  v9[1] = sub_27463B4DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FF80, &qword_274656828);
  sub_274638F6C();
  (*(v3 + 32))(v0 + v7, v6, v1);
  return v0;
}

uint64_t sub_2745215C8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActionViewModelStore(0);
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

uint64_t sub_274521608(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_27451D9B8(v1);
}

uint64_t sub_274521638(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_27451D928(v1);
}

BOOL sub_2745216D4(_DWORD *a1, unint64_t a2)
{
  v7 = *v2;
  sub_27463C74C();
  sub_27463C77C();
  sub_27463C7AC();
  OUTLINED_FUNCTION_13_12();
  while (1)
  {
    OUTLINED_FUNCTION_12_12();
    if (v8)
    {
      break;
    }

    if (*(*(v7 + 48) + 4 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  sub_274524330(a2, v3, isUniquelyReferenced_nonNull_native);
  *v2 = v11;
LABEL_6:
  result = v4 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_27452179C()
{
  OUTLINED_FUNCTION_19_9();
  v6 = *v1;
  sub_27463C74C();
  v7 = OUTLINED_FUNCTION_44_3();
  MEMORY[0x277C58EA0](v7);
  sub_27463C7AC();
  OUTLINED_FUNCTION_13_12();
  do
  {
    OUTLINED_FUNCTION_12_12();
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v9 = OUTLINED_FUNCTION_44_3();
      sub_274524468(v9, v4, v10);
      *v3 = v12;
      goto LABEL_7;
    }
  }

  while (*(*(v6 + 48) + 8 * v4) != v2);
  v2 = *(*(v6 + 48) + 8 * v4);
LABEL_7:
  result = v5 == 0;
  *v0 = v2;
  return result;
}

BOOL sub_274521880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_27463C2EC();
  OUTLINED_FUNCTION_36_2();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_27448E108(a2, v17);
      v16 = *v3;
      sub_2745245A0(v17, v9, isUniquelyReferenced_nonNull_native);
      *v3 = v16;
      v13 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v13;
      *(a1 + 32) = *(a2 + 32);
      return v10 == 0;
    }

    sub_27448E108(*(v5 + 48) + 40 * v9, v17);
    v11 = MEMORY[0x277C58A40](v17, a2);
    sub_274430664(v17);
    if (v11)
    {
      break;
    }

    v6 = v9 + 1;
  }

  sub_274430664(a2);
  sub_27448E108(*(v5 + 48) + 40 * v9, a1);
  return v10 == 0;
}

void sub_2745219BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_9();
  OUTLINED_FUNCTION_19_9();
  v28 = *v25;
  if ((*v25 & 0xC000000000000001) == 0)
  {
    sub_274638ECC();
    OUTLINED_FUNCTION_7_20();
    sub_274527B94(v30, v31);
    sub_27463B55C();
    OUTLINED_FUNCTION_36_2();
    v34 = ~v33;
    while (1)
    {
      v35 = v32 & v34;
      if (((*(v28 + 56 + (((v32 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v34)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *v27;

        sub_274524700(v44, v35, isUniquelyReferenced_nonNull_native);
        *v27 = v45;
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_7_20();
      sub_274527B94(&qword_28094FFB0, v36);
      if (sub_27463B5BC())
      {
        break;
      }

      v32 = v35 + 1;
    }

    *v24 = *(*(v28 + 48) + 8 * v35);

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_49_3();

  OUTLINED_FUNCTION_15_2();
  v29 = sub_27463C28C();

  if (v29)
  {

    sub_274638ECC();
    OUTLINED_FUNCTION_50_4();
    *v24 = a11;
LABEL_15:
    OUTLINED_FUNCTION_16_10();
    return;
  }

  v37 = sub_27463C27C();
  if (!__OFADD__(v37, 1))
  {
    v38 = sub_274522674(v25, v37 + 1);
    OUTLINED_FUNCTION_46_5();
    if (!(!v41 & v40))
    {
      sub_2745234C0(v39 + 1);
    }

    sub_274524104(v42, v38);

    *v27 = v38;
LABEL_13:
    *v24 = v26;
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_274521BE4()
{
  OUTLINED_FUNCTION_19_9();
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_49_3();

    OUTLINED_FUNCTION_15_2();
    v5 = sub_27463C28C();

    if (v5)
    {

      v19[9] = v5;
      type metadata accessor for WFEditorItem();
      OUTLINED_FUNCTION_50_4();
      result = 0;
      *v0 = v19[0];
    }

    else
    {
      result = sub_27463C27C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v12 = sub_274522888(v1, result + 1);
        v19[0] = v12;
        OUTLINED_FUNCTION_46_5();
        if (!(!v15 & v14))
        {
          sub_274523750(v13 + 1);
          v12 = v19[0];
        }

        sub_2745241EC(v16, v12);

        *v3 = v12;
LABEL_13:
        *v0 = v2;
        return 1;
      }
    }
  }

  else
  {
    sub_27463C74C();
    (*(*v2 + 200))(v19);
    sub_27463C7AC();
    OUTLINED_FUNCTION_36_2();
    v9 = ~v8;
    while (1)
    {
      v10 = v7 & v9;
      if (((*(v4 + 56 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v9)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19[0] = *v3;

        sub_2745248E0(v18, v10, isUniquelyReferenced_nonNull_native);
        *v3 = v19[0];
        goto LABEL_13;
      }

      v11 = sub_274599D28();
      if (v11 == sub_274599D28())
      {
        break;
      }

      v7 = v10 + 1;
    }

    *v0 = *(*(v4 + 48) + 8 * v10);

    return 0;
  }

  return result;
}

BOOL sub_274521FF8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_27463C74C();
  sub_27463B71C();
  v8 = sub_27463C7AC();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_27463C6BC() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_274524D40(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_27452218C(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_27463C28C();

    if (v17)
    {

      sub_274412734(0, a3, a4);
      OUTLINED_FUNCTION_50_4();
      result = 0;
      *a1 = v41;
    }

    else
    {
      result = sub_27463C27C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_274522C1C(v15, result + 1, a5, a6, a3, a4, v25, v26, v35, v36, v37, v38, v40, v41, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
        v28 = v27;
        v42 = v27;
        OUTLINED_FUNCTION_46_5();
        if (!(!v30 & v29))
        {
          sub_274523C18();
          v28 = v42;
        }

        v31 = v16;
        sub_2745242B0(v31, v28);

        *v11 = v28;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_274412734(0, a3, a4);
    sub_27463BF6C();
    OUTLINED_FUNCTION_36_2();
    v21 = ~v20;
    while (1)
    {
      v22 = v19 & v21;
      if (((*(v14 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v43 = *v11;
        v32 = a2;
        sub_274524BE8(v32);
        *v11 = v43;
        *a1 = v32;
        return 1;
      }

      v23 = *(*(v14 + 48) + 8 * v22);
      v24 = sub_27463BF7C();

      if (v24)
      {
        break;
      }

      v19 = v22 + 1;
    }

    v33 = *(*(v14 + 48) + 8 * v22);
    *a1 = v33;
    v34 = v33;
    return 0;
  }

  return result;
}

void sub_2745223D8()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v23 = v4;
  v5 = sub_274637EEC();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_25_9();
  v22 = v0;
  v9 = *v0;
  OUTLINED_FUNCTION_6_13();
  sub_274527B94(v10, v11);
  sub_27463B55C();
  v24 = v9;
  v25 = v9 + 56;
  OUTLINED_FUNCTION_36_2();
  v14 = ~v13;
  while (1)
  {
    v15 = v12 & v14;
    if (((1 << (v12 & v14)) & *(v25 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v7 + 16))(v1, v3, v5);
      v26 = *v22;
      sub_274524EA8(v1, v15, isUniquelyReferenced_nonNull_native);
      *v22 = v26;
      (*(v7 + 32))(v23, v3, v5);
      goto LABEL_7;
    }

    v16 = *(v7 + 72) * v15;
    v17 = *(v7 + 16);
    v17(v1, *(v24 + 48) + v16, v5);
    OUTLINED_FUNCTION_6_13();
    sub_274527B94(&qword_28094FFA0, v18);
    v19 = sub_27463B5BC();
    v20 = *(v7 + 8);
    v20(v1, v5);
    if (v19)
    {
      break;
    }

    v12 = v15 + 1;
  }

  v20(v3, v5);
  v17(v23, *(v24 + 48) + v16, v5);
LABEL_7:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_274522674(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFB8, &qword_2746568C8);
    v2 = sub_27463C34C();
    v15 = v2;
    sub_27463C23C();
    while (1)
    {
      if (!sub_27463C2BC())
      {

        return v2;
      }

      sub_274638ECC();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_2745234C0(v3 + 1);
      }

      v2 = v15;
      sub_274527B94(&unk_280951960, MEMORY[0x277CBCDA8]);
      result = sub_27463B55C();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_274522888(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951970, &qword_2746568C0);
    v2 = sub_27463C34C();
    v17 = v2;
    sub_27463C23C();
    while (1)
    {
      v3 = sub_27463C2BC();
      if (!v3)
      {

        return v2;
      }

      v16[0] = v3;
      type metadata accessor for WFEditorItem();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_274523750(v4 + 1);
      }

      v2 = v17;
      v5 = v16[9];
      sub_27463C74C();
      (*(*v5 + 200))(v16);
      result = sub_27463C7AC();
      v7 = v2 + 56;
      v8 = -1 << *(v2 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(v2 + 56 + 8 * (v9 >> 6))) == 0)
      {
        break;
      }

      v11 = __clz(__rbit64((-1 << v9) & ~*(v2 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v2 + 48) + 8 * v11) = v5;
      ++*(v2 + 16);
    }

    v12 = 0;
    v13 = (63 - v8) >> 6;
    while (++v10 != v13 || (v12 & 1) == 0)
    {
      v14 = v10 == v13;
      if (v10 == v13)
      {
        v10 = 0;
      }

      v12 |= v14;
      v15 = *(v7 + 8 * v10);
      if (v15 != -1)
      {
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_274522A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_9();
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_24_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    v27 = sub_27463C34C();
    v37 = v27;
    sub_27463C23C();
    while (1)
    {
      if (!sub_27463C2BC())
      {

        goto LABEL_18;
      }

      type metadata accessor for WFEditorCell();
      swift_dynamicCast();
      if (*(v27 + 24) <= *(v27 + 16))
      {
        sub_274523C18();
      }

      v27 = v37;
      v28 = sub_27463BF6C();
      v29 = -1 << *(v37 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v37 + 56 + 8 * (v30 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_35_4();
LABEL_15:
      *(v32 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      *(*(v37 + 48) + 8 * v33) = a11;
      OUTLINED_FUNCTION_57_0();
    }

    v34 = 0;
    v35 = (63 - v29) >> 6;
    while (++v31 != v35 || (v34 & 1) == 0)
    {
      v36 = v31 == v35;
      if (v31 == v35)
      {
        v31 = 0;
      }

      v34 |= v36;
      if (*(v37 + 56 + 8 * v31) != -1)
      {
        OUTLINED_FUNCTION_33_3();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_18:
    OUTLINED_FUNCTION_16_10();
  }
}

void sub_274522C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_9();
  if (v28)
  {
    v29 = v27;
    v30 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v31 = sub_27463C34C();
    v41 = v31;
    sub_27463C23C();
    while (1)
    {
      if (!sub_27463C2BC())
      {

        goto LABEL_18;
      }

      sub_274412734(0, v30, v29);
      swift_dynamicCast();
      if (*(v31 + 24) <= *(v31 + 16))
      {
        sub_274523C18();
      }

      v31 = v41;
      v32 = sub_27463BF6C();
      v33 = -1 << *(v41 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v41 + 56 + 8 * (v34 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_35_4();
LABEL_15:
      *(v36 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      *(*(v41 + 48) + 8 * v37) = a11;
      ++*(v41 + 16);
    }

    v38 = 0;
    v39 = (63 - v33) >> 6;
    while (++v35 != v39 || (v38 & 1) == 0)
    {
      v40 = v35 == v39;
      if (v35 == v39)
      {
        v35 = 0;
      }

      v38 |= v40;
      if (*(v41 + 56 + 8 * v35) != -1)
      {
        OUTLINED_FUNCTION_33_3();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_18:
    OUTLINED_FUNCTION_16_10();
  }
}

uint64_t sub_274522DCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FF90, &qword_2746568A0);
  result = sub_27463C33C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_274525134(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
    sub_27463C74C();
    sub_27463C77C();
    result = sub_27463C7AC();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 4 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_274523018(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954910, &qword_274656920);
  result = sub_27463C33C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_274525134(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_27463C74C();
    MEMORY[0x277C58EA0](v16);
    result = sub_27463C7AC();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_274523264(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FF98, &qword_2746568A8);
  result = sub_27463C33C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_274525134(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v27 = *v16;
    v28 = *(v16 + 16);
    v29 = *(v16 + 32);
    result = sub_27463C2EC();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v5 + 48) + 40 * v20;
    *v25 = v27;
    *(v25 + 16) = v28;
    *(v25 + 32) = v29;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2745234C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFB8, &qword_2746568C8);
  result = sub_27463C33C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v26 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_274525134(0, (v25 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_274638ECC();
    sub_274527B94(&unk_280951960, MEMORY[0x277CBCDA8]);
    result = sub_27463B55C();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    v3 = v26;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_274523750(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951970, &qword_2746568C0);
  result = sub_27463C33C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_274525134(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_27463C74C();
    (*(*v16 + 200))(v26);
    result = sub_27463C7AC();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2745239BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFD8, &qword_274656990);
  result = sub_27463C33C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_274525134(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_27463C74C();
    sub_27463B71C();
    result = sub_27463C7AC();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_274523C18()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_15_11(v2, v3, v4);
  OUTLINED_FUNCTION_15_2();
  v5 = sub_27463C33C();
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v5;
    OUTLINED_FUNCTION_23();
    return;
  }

  v6 = 0;
  v7 = (v1 + 56);
  OUTLINED_FUNCTION_37_3();
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v8;
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  if ((v10 & v8) == 0)
  {
LABEL_7:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v12)
      {
        break;
      }

      ++v15;
      if (v7[v6])
      {
        OUTLINED_FUNCTION_3_27();
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v1 + 32);
    if (v25 >= 64)
    {
      sub_274525134(0, (v25 + 63) >> 6, v1 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_36_2();
      *v7 = v26;
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_4_22();
LABEL_12:
    v16 = *(*(v1 + 48) + 8 * (v14 | (v6 << 6)));
    v17 = sub_27463BF6C() & ~(-1 << *(v5 + 32));
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_21:
    OUTLINED_FUNCTION_24_0();
    *(v13 + v22) |= v23;
    *(*(v5 + 48) + 8 * v24) = v16;
    OUTLINED_FUNCTION_57_0();
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (++v18 != v20 || (v19 & 1) == 0)
  {
    v21 = v18 == v20;
    if (v18 == v20)
    {
      v18 = 0;
    }

    v19 |= v21;
    if (*(v13 + 8 * v18) != -1)
    {
      OUTLINED_FUNCTION_14_0();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_274523DAC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_274637EEC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFA8, &unk_2746568B0);
  result = sub_27463C33C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_274525134(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_274527B94(&qword_28094F940, MEMORY[0x277CC95F0]);
    result = sub_27463B55C();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_274524104(uint64_t a1, uint64_t a2)
{
  sub_274638ECC();
  sub_274527B94(&unk_280951960, MEMORY[0x277CBCDA8]);
  sub_27463B55C();
  result = sub_27463C21C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_2745241EC(uint64_t a1, uint64_t a2)
{
  sub_27463C74C();
  (*(*a1 + 200))(v5);
  sub_27463C7AC();
  result = sub_27463C21C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_2745242B0(uint64_t a1, void *a2)
{
  sub_27463BF6C();
  OUTLINED_FUNCTION_36_2();
  result = sub_27463C21C();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_274524330(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_274522DCC(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_274525A74(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_27463C74C();
      sub_27463C77C();
      result = sub_27463C7AC();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for WFContactPropertyID(0);
        if (*(*(v12 + 48) + 4 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_274525198();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 4 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_27463C70C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_274524468(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_274523018(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_274525C90(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_27463C74C();
      MEMORY[0x277C58EA0](result);
      v13 = sub_27463C7AC();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == result)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_2745252D8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_27463C70C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_2745245A0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_274523264(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_274525EAC(v7 + 1);
LABEL_10:
      v15 = *v3;
      v16 = sub_27463C2EC();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_27448E108(*(v15 + 48) + 40 * a2, v19);
        v18 = MEMORY[0x277C58A40](v19, result);
        sub_274430664(v19);
        if (v18)
        {
          goto LABEL_15;
        }

        v16 = a2 + 1;
      }
    }

    sub_2745253F0();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = *(v9 + 48) + 40 * a2;
  v11 = *(result + 16);
  *v10 = *result;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(result + 32);
  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    sub_27463C70C();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v14;
  }
}

void sub_274524700(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2745234C0(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2745260D4(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_274638ECC();
      sub_274527B94(&unk_280951960, MEMORY[0x277CBCDA8]);
      v13 = sub_27463B55C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_274527B94(&qword_28094FFB0, MEMORY[0x277CBCDA8]);
        if (sub_27463B5BC())
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_2745254DC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_27463C70C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_2745248E0(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_274523750(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_274526348(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_27463C74C();
      (*(*result + 200))(v16);
      v13 = sub_27463C7AC();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for WFEditorItem();
        v15 = sub_274599D28();
        if (v15 == sub_274599D28())
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_2745254DC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_27463C70C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_274524A70(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_274523C18();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2745267C0(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = sub_27463BF6C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for WFEditorCell();
        v15 = *(*(v12 + 48) + 8 * a2);
        v16 = sub_27463BF7C();

        if (v16)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_2745257A4();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_27463C70C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_274524BE8(uint64_t a1)
{
  OUTLINED_FUNCTION_22_6();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(*v1 + 16);
  v12 = *(*v1 + 24);
  if (v12 <= v11 || (v2 & 1) == 0)
  {
    if (v2)
    {
      sub_274523C18();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_2745267C0(v11 + 1);
LABEL_8:
      v13 = *v1;
      sub_27463BF6C();
      OUTLINED_FUNCTION_36_2();
      v16 = ~v15;
      while (1)
      {
        v8 = v14 & v16;
        if (((*(v13 + 56 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v16)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_274412734(0, v6, v4);
        v17 = *(*(v13 + 48) + 8 * v8);
        v18 = sub_27463BF7C();

        if (v18)
        {
          goto LABEL_15;
        }

        v14 = v8 + 1;
      }
    }

    sub_2745257A4();
  }

LABEL_12:
  v19 = *v1;
  *(*v1 + 8 * (v8 >> 6) + 56) |= 1 << v8;
  *(*(v19 + 48) + 8 * v8) = v10;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_15:
    sub_27463C70C();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
    OUTLINED_FUNCTION_21_10();
  }
}

void sub_274524D40(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2745239BC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_27452658C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_27463C74C();
      sub_27463B71C();
      v16 = sub_27463C7AC();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_27463C6BC() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_2745255A0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_27463C70C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_274524EA8(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_274637EEC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_274523DAC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_274526954(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_274527B94(&qword_28094F940, MEMORY[0x277CC95F0]);
      v14 = sub_27463B55C();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_274527B94(&qword_28094FFA0, MEMORY[0x277CC95F0]);
        v16 = sub_27463B5BC();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_274525840();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_27463C70C();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_274525134(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2746565D0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_274525198()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FF90, &qword_2746568A0);
  v2 = *v0;
  v3 = sub_27463C32C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

void sub_2745252D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954910, &qword_274656920);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_28_8();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_0_31();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_31_6(v4, v5);
    }

    v0[2] = v1[2];
    OUTLINED_FUNCTION_37_3();
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & v1[7];
    for (i = (v10 + 63) >> 6; v12; *(v0[6] + 8 * v15) = *(v1[6] + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v2 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v0 = v0;
  }
}

void sub_2745253F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FF98, &qword_2746568A8);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_28_8();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_0_31();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_31_6(v6, v7);
    }

    OUTLINED_FUNCTION_1_22();
    for (; v4; *(v16 + 16) = v18)
    {
      OUTLINED_FUNCTION_4_22();
LABEL_15:
      v14 = v11 | (v2 << 6);
      v15 = 5 * v14;
      sub_27448E108(*(v1 + 48) + 40 * v14, v19);
      v16 = v0[6] + 8 * v15;
      v17 = v19[0];
      v18 = v19[1];
      *(v16 + 32) = v20;
      *v16 = v17;
    }

    v12 = v2;
    while (1)
    {
      v2 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_36_4();
      if (v13)
      {
        OUTLINED_FUNCTION_3_27();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_2745254DC()
{
  OUTLINED_FUNCTION_55_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_28_8();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_0_31();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      OUTLINED_FUNCTION_31_6(v8, v9);
    }

    OUTLINED_FUNCTION_1_22();
    while (v4)
    {
      OUTLINED_FUNCTION_4_22();
LABEL_15:
      *(v0[6] + 8 * (v13 | (v2 << 6))) = *(*(v1 + 48) + 8 * (v13 | (v2 << 6)));
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_36_4();
      if (v15)
      {
        OUTLINED_FUNCTION_3_27();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_56_0();
  }
}

void sub_2745255A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFD8, &qword_274656990);
  v2 = *v0;
  v3 = sub_27463C32C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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
}

void sub_2745256F8()
{
  OUTLINED_FUNCTION_55_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954A00, &unk_274656A30);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_28_8();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_0_31();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_31_6(v5, v6);
    }

    OUTLINED_FUNCTION_1_22();
    while (v3)
    {
      OUTLINED_FUNCTION_4_22();
LABEL_15:
      OUTLINED_FUNCTION_30_6(v10);
    }

    v11 = v1;
    while (1)
    {
      v1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_36_4();
      if (v12)
      {
        OUTLINED_FUNCTION_3_27();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_56_0();
  }
}

void sub_2745257A4()
{
  OUTLINED_FUNCTION_55_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_28_8();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_0_31();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      OUTLINED_FUNCTION_31_6(v7, v8);
    }

    OUTLINED_FUNCTION_1_22();
    while (v3)
    {
      OUTLINED_FUNCTION_4_22();
LABEL_15:
      OUTLINED_FUNCTION_30_6(v12);
    }

    v13 = v1;
    while (1)
    {
      v1 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_36_4();
      if (v14)
      {
        OUTLINED_FUNCTION_3_27();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_56_0();
  }
}

void *sub_274525840()
{
  v1 = v0;
  v2 = sub_274637EEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFA8, &unk_2746568B0);
  v6 = *v0;
  v7 = sub_27463C32C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_274525A74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FF90, &qword_2746568A0);
  result = sub_27463C33C();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 4 * (v12 | (v6 << 6)));
        sub_27463C74C();
        sub_27463C77C();
        result = sub_27463C7AC();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 4 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_274525C90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954910, &qword_274656920);
  result = sub_27463C33C();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_27463C74C();
        MEMORY[0x277C58EA0](v15);
        result = sub_27463C7AC();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_274525EAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FF98, &qword_2746568A8);
  result = sub_27463C33C();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        sub_27448E108(*(v3 + 48) + 40 * (v12 | (v6 << 6)), v26);
        result = sub_27463C2EC();
        v15 = -1 << *(v5 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v23 = *(v5 + 48) + 40 * v18;
        v24 = v26[0];
        v25 = v26[1];
        *(v23 + 32) = v27;
        *v23 = v24;
        *(v23 + 16) = v25;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v11 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2745260D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFB8, &qword_2746568C8);
  result = sub_27463C33C();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v26 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        sub_274638ECC();
        sub_274527B94(&unk_280951960, MEMORY[0x277CBCDA8]);

        result = sub_27463B55C();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        v3 = v25;
        v10 = v26;
        if (!v26)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v26 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_274526348(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951970, &qword_2746568C0);
  result = sub_27463C33C();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_27463C74C();
        (*(*v15 + 200))(v24);
        result = sub_27463C7AC();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);

        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_27452658C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFD8, &qword_274656990);
  result = sub_27463C33C();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_27463C74C();

        sub_27463B71C();
        result = sub_27463C7AC();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_2745267C0(uint64_t a1)
{
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_15_11(v3, v4, v5);
  OUTLINED_FUNCTION_15_2();
  v6 = sub_27463C33C();
  if (*(v2 + 16))
  {
    v26 = v1;
    v7 = 0;
    OUTLINED_FUNCTION_37_3();
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v8;
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    if ((v10 & v8) != 0)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_12:
        v17 = *(*(v2 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = sub_27463BF6C() & ~(-1 << *(v6 + 32));
        if (((-1 << v18) & ~*(v13 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_16();
LABEL_21:
        OUTLINED_FUNCTION_24_0();
        *(v13 + v23) |= v24;
        *(*(v6 + 48) + 8 * v25) = v17;
        OUTLINED_FUNCTION_57_0();
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_15_0();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (*(v13 + 8 * v19) != -1)
        {
          OUTLINED_FUNCTION_14_0();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v1 = v26;
          goto LABEL_25;
        }

        v16 = *(v2 + 56 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
    OUTLINED_FUNCTION_21_10();
  }
}

uint64_t sub_274526954(uint64_t a1)
{
  v2 = v1;
  v33 = sub_274637EEC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FFA8, &unk_2746568B0);
  v7 = sub_27463C33C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_274527B94(&qword_28094F940, MEMORY[0x277CC95F0]);
        result = sub_27463B55C();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

unint64_t sub_274526C6C(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_274525134(0, v6, v8);
    v9 = sub_274526EC4(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_274526E34(v11, v6, a2, a1);

    MEMORY[0x277C5A270](v11, -1, -1);
  }

  return v9;
}

void *sub_274526E34(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_274526EC4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t sub_274526EC4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v35 = 0;
    v20 = 0;
    v21 = 1 << *(a3 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(a3 + 56);
    v24 = (v21 + 63) >> 6;
LABEL_24:
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_31:
      v34 = v25 | (v20 << 6);
      v28 = *(*(a3 + 48) + 8 * v34);
      sub_27463C74C();
      MEMORY[0x277C58EA0](v28);
      result = sub_27463C7AC();
      v29 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v30 = result & v29;
        if (((*(a4 + 56 + (((result & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v29)) & 1) == 0)
        {
          break;
        }

        result = v30 + 1;
        if (*(*(a4 + 48) + 8 * v30) == v28)
        {
          *(v32 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
          v19 = __OFADD__(v35++, 1);
          if (!v19)
          {
            goto LABEL_24;
          }

          __break(1u);
          goto LABEL_37;
        }
      }
    }

    v26 = v20;
    while (1)
    {
      v20 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v20 >= v24)
      {
LABEL_37:

        return sub_2745FF9D0(v32, a2, v35, a3);
      }

      v27 = *(a3 + 56 + 8 * v20);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_31;
      }
    }
  }

  else
  {
    v35 = 0;
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
LABEL_6:
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v33 = (v9 - 1) & v9;
LABEL_13:
      v14 = *(*(a4 + 48) + 8 * (v11 | (v6 << 6)));
      sub_27463C74C();
      MEMORY[0x277C58EA0](v14);
      result = sub_27463C7AC();
      v15 = ~(-1 << *(a3 + 32));
      do
      {
        v16 = result & v15;
        v17 = (result & v15) >> 6;
        v18 = 1 << (result & v15);
        if ((v18 & *(a3 + 56 + 8 * v17)) == 0)
        {
          v9 = v33;
          goto LABEL_6;
        }

        result = v16 + 1;
      }

      while (*(*(a3 + 48) + 8 * v16) != v14);
      v32[v17] |= v18;
      v19 = __OFADD__(v35++, 1);
      v9 = v33;
      if (v19)
      {
        goto LABEL_40;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_37;
      }

      v13 = *(a4 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v33 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_27452719C(uint64_t a1, uint64_t a2)
{
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v2;
  v5 = sub_274534D08(a2);
  if (__OFADD__(*(v13 + 16), (v6 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v5;
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280954980, &unk_2746600B0);
  if (sub_27463C4CC())
  {
    v9 = sub_274534D08(a2);
    if ((v8 & 1) == (v10 & 1))
    {
      v7 = v9;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_27463C71C();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v8)
  {
    v11 = *(v13 + 56);
    result = *(v11 + 8 * v7);
    *(v11 + 8 * v7) = a1;
  }

  else
  {
    sub_2745FCB2C(v7, a2, a1, v13);
    result = 0;
  }

  *v2 = v13;
  return result;
}

uint64_t sub_2745272B0(void *a1)
{
  v1 = [a1 groupingIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B6AC();

  return v3;
}

uint64_t sub_274527314(void *a1)
{
  v2 = [a1 groupingIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_27463B6AC();

  return v3;
}

unint64_t sub_274527384()
{
  result = qword_28094DEE8;
  if (!qword_28094DEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C9E0, &qword_274651840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DEE8);
  }

  return result;
}

unint64_t sub_2745273EC()
{
  result = qword_28094FF20;
  if (!qword_28094FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094FF20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionIdentity(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 8))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionIdentity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_274527500(uint64_t a1)
{
  result = sub_27463800C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2745275B8(uint64_t a1)
{
  sub_274527AB0(319, &qword_28094FF48, &qword_28094FEF0, &qword_274656648);
  if (v1 <= 0x3F)
  {
    sub_274527AB0(319, &qword_28094FF50, &qword_28094FF00, &qword_274656650);
    if (v2 <= 0x3F)
    {
      sub_274527AB0(319, &qword_28094FF58, &qword_28094C9E0, &qword_274651840);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_274527A08(uint64_t a1)
{
  sub_274527AB0(319, &qword_28094FF78, &qword_28094FF80, &qword_274656828);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_274527AB0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_21_2();
    v5 = sub_274638FCC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_274527B00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      v2 = *a1 & 0x7FFFFFFF;
    }

    else
    {
      v2 = -1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274527B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274527B94(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_274527C78()
{
  result = qword_28094FFE0[0];
  if (!qword_28094FFE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28094FFE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_16()
{

  return sub_27463C32C();
}

uint64_t OUTLINED_FUNCTION_15_11(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

BOOL OUTLINED_FUNCTION_20_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  a10 = *a1;
  a11 = *(a1 + 8);

  return sub_27451F01C(&a10);
}

uint64_t OUTLINED_FUNCTION_29_7(uint64_t a1)
{

  return sub_274638FAC();
}

id OUTLINED_FUNCTION_30_6@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 | (v3 << 6);
  v6 = *(*(v2 + 48) + 8 * v5);
  *(*(v1 + 48) + 8 * v5) = v6;

  return v6;
}

void *OUTLINED_FUNCTION_31_6@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t OUTLINED_FUNCTION_49_3()
{
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return swift_dynamicCast();
}

uint64_t sub_274527FB0(uint64_t a1)
{
  sub_2745285B8(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2745286CC(319, &qword_28094E620, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      type metadata accessor for WFVariableResultType(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_274528668(319, &qword_280950078, &unk_28094BDC0, &qword_27464C390, MEMORY[0x277CE11F8]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          v2 = swift_checkMetadataState();
          if (v10 <= 0x3F)
          {
            sub_274481024(319);
            v2 = v11;
            if (v12 <= 0x3F)
            {
              sub_2745286CC(319, &qword_28094C510, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
              v2 = v13;
              if (v14 <= 0x3F)
              {
                sub_274528668(319, &qword_280950080, &unk_28094D7B0, &unk_2746507D0, MEMORY[0x277CDF468]);
                if (v16 > 0x3F)
                {
                  return v15;
                }

                sub_274528668(319, &qword_28094A5F0, &unk_2809507C0, &qword_274649C60, MEMORY[0x277CDF468]);
                if (v17 > 0x3F)
                {
                  return v15;
                }

                else
                {
                  sub_2745286CC(319, &qword_28094BBF0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                  v2 = v18;
                  if (v19 <= 0x3F)
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

  return v2;
}

uint64_t sub_274528220(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((((((((((result + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 24) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((((v7 + 80) & ~v7) + *(*(v4 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_274528394(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((((v10 + 80) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((((v10 + 80) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = (((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 24) & ~v10;

            __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((v10 + 80) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((v10 + 80) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_2745285B8(uint64_t a1)
{
  if (!qword_280950070)
  {
    v2 = sub_274439BAC();
    v5 = type metadata accessor for Parameter(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280950070);
    }
  }
}

unint64_t sub_274528610()
{
  result = qword_28094A730;
  if (!qword_28094A730)
  {
    type metadata accessor for WorkflowEditorOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094A730);
  }

  return result;
}

void sub_274528668(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2745286CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2745287D0()
{
  v1 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CDB0, &qword_27464C480);
  MEMORY[0x277C575F0](&v4, v2);
  return v4;
}

uint64_t sub_274528828()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CDB0, &qword_27464C480);
  sub_27463AEEC();
  return v1;
}

uint64_t sub_274528884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v27 = a1;
  v29 = v3;
  v30 = a2;
  sub_274639DEC();
  v5 = sub_27463AC1C();
  v6 = sub_274529750();
  v28 = *(a1 + 24);
  v42 = v6;
  v43 = v28;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_39_0();
  v7 = swift_getWitnessTable();
  v8 = sub_2745297A4();
  swift_getOpaqueTypeMetadata2();
  v26 = sub_274639DEC();
  v37 = v5;
  v38 = &type metadata for ParameterContextMenuVariableActions;
  v39 = v7;
  v40 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v7;
  v9 = swift_getWitnessTable();
  v11 = type metadata accessor for ParameterLayoutView(0, v26, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  v25 = sub_2745287BC();
  v18 = v2[3];
  v24 = v2[2];
  v19 = v2[5];
  v23 = v2[4];
  v20 = *(v2 + *(v27 + 56));

  v32 = v29;
  v33 = v28;
  v34 = v2;
  ParameterLayoutView.init(parameter:label:description:isSelected:forceHorizontalLayout:control:)(v25, v24, v18, v23, v19, 0, 0, 0, v14, v20, sub_2745297F8, v31, v26, v9);
  OUTLINED_FUNCTION_0_32();
  swift_getWitnessTable();
  sub_2744E9688();
  v21 = *(v12 + 8);
  v21(v14, v11);
  sub_2744E9688();
  return (v21)(v17, v11);
}

uint64_t sub_274528B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  sub_274639DEC();
  v7 = sub_27463AC1C();
  v68 = sub_274529750();
  v69 = a3;
  WitnessTable = swift_getWitnessTable();
  v67 = WitnessTable;
  v8 = swift_getWitnessTable();
  v63 = v7;
  v64 = &type metadata for ParameterContextMenuVariableActions;
  v65 = v8;
  v66 = sub_2745297A4();
  v57 = v66;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v45 = &v42 - v12;
  v44 = sub_274639ABC();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = OpaqueTypeMetadata2;
  v15 = sub_274639DEC();
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x28223BE20](v15);
  v53 = &v42 - v16;
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - v24;
  v58 = a2;
  v59 = a3;
  v60 = a1;
  sub_27463AC0C();
  v48 = a2;
  WitnessTable = a3;
  v27 = type metadata accessor for ParameterVariableLayoutView(0, a2, a3, v26);
  v28 = *(v27 + 80);
  v49 = a1;
  v29 = a1 + v28;
  v30 = *v29;
  if (*(v29 + 8) != 1)
  {

    sub_27463BC0C();
    v33 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v30, 0);
    v27 = (*(v43 + 8))(v14, v44);
    if (v63 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x28223BE20](v27);
    v34 = WitnessTable;
    *(&v42 - 4) = v48;
    *(&v42 - 3) = v34;
    *(&v42 - 2) = v49;
    v35 = v46;
    v36 = v57;
    sub_27463A6BC();
    v63 = v7;
    v64 = &type metadata for ParameterContextMenuVariableActions;
    v65 = v8;
    v66 = v36;
    swift_getOpaqueTypeConformance2();
    v37 = v45;
    v38 = v52;
    sub_2744E9688();
    v39 = *(v47 + 8);
    v39(v35, v38);
    sub_2744E9688();
    v31 = v53;
    sub_27456E7CC();
    v39(v35, v38);
    v39(v37, v38);
    (*(v51 + 8))(v25, v7);
    goto LABEL_6;
  }

  if (v30)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2744E9688();
  sub_2744E9688();
  v63 = v7;
  v64 = &type metadata for ParameterContextMenuVariableActions;
  v65 = v8;
  v66 = v57;
  swift_getOpaqueTypeConformance2();
  v31 = v53;
  sub_27456E878();
  v32 = *(v51 + 8);
  v32(v19, v7);
  v32(v22, v7);
  v32(v25, v7);
LABEL_6:
  v63 = v7;
  v64 = &type metadata for ParameterContextMenuVariableActions;
  v65 = v8;
  v66 = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = v8;
  v40 = v55;
  swift_getWitnessTable();
  sub_2744E9688();
  return (*(v54 + 8))(v31, v40);
}

uint64_t sub_2745292C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v25[-v10];
  v12 = sub_274639DEC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25[-v14];
  v16 = sub_2745287D0();
  if (v16)
  {

    v18 = sub_274528828();
    v19 = *(a1 + 48);
    v29[0] = v18;
    v29[1] = v20;
    v29[2] = v21;
    v29[3] = v19;
    type metadata accessor for WorkflowEditorOptions(0);
    sub_274528610();
    v29[4] = sub_27463979C();
    v29[5] = v22;
    v29[6] = swift_getKeyPath();
    v30 = 0;
    KeyPath = swift_getKeyPath();
    v32 = 0;
    v33 = swift_getKeyPath();
    v34 = 0;
    v25[0] = 0;
    sub_27463ACDC();
    v35 = v26;
    v36 = *(&v26 + 1);
    type metadata accessor for CGRect(0);
    memset(v25, 0, sizeof(v25));
    sub_27463ACDC();
    v37 = v26;
    v38 = v27;
    v39 = v28;
    sub_274529750();
    sub_27456E7CC();
    sub_274529880(v29);
  }

  else
  {
    type metadata accessor for ParameterVariableLayoutView(0, a2, a3, v17);
    sub_2744E9688();
    sub_2744E9688();
    sub_274529750();
    sub_27456E878();
    v23 = *(v6 + 8);
    v23(v8, a2);
    v23(v11, a2);
  }

  v40 = sub_274529750();
  v41 = a3;
  swift_getWitnessTable();
  sub_2744E9688();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_274529634@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2745287BC();
  v3 = sub_274528828();
  v5 = v4;
  v7 = v6;
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v9 = v2;
  sub_27444A564(v9);
  sub_27452981C();
  v10 = sub_27463950C();
  v12 = v11;

  type metadata accessor for WorkflowEditorOptions(0);
  sub_274528610();
  v13 = sub_27463979C();
  v15 = v14;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = 0;
  *(a1 + 72) = result;
  *(a1 + 80) = 0;
  return result;
}

unint64_t sub_274529750()
{
  result = qword_280950088;
  if (!qword_280950088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950088);
  }

  return result;
}

unint64_t sub_2745297A4()
{
  result = qword_280950090;
  if (!qword_280950090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950090);
  }

  return result;
}

unint64_t sub_27452981C()
{
  result = qword_28094CF70;
  if (!qword_28094CF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094B440, &qword_27464C470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CF70);
  }

  return result;
}

uint64_t sub_2745298D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E090, &qword_274651B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27452995C(uint64_t a1)
{
  v2 = sub_27463B70C("%ld items", v14);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_27463C38C();

    v16 = sub_274412BBC();
    v15 = MEMORY[0x277D837D0];
    sub_27463C0FC();
    MEMORY[0x277C57EA0](0xD000000000000010, 0x800000027468ABB0);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v5 = qword_28094BB00;
    v6 = sub_27463B66C();

    v7 = sub_27463B66C();

    v8 = [v5 localizedStringForKey:v6 value:v7 table:{0, v15, v16, v16, v16, 32, 0xE100000000000000, 10, 0xE100000000000000}];

    sub_27463B6AC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90, &qword_274648630);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D83B88];
  *(v9 + 16) = xmmword_274648570;
  v11 = MEMORY[0x277D83C10];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = a1;
  v12 = sub_27463B67C();

  return v12;
}

uint64_t WFExpandingParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  sub_27450A7C0();

  sub_27463950C();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_274529FE4;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_274458A90;
  *(v4 + 24) = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B5E8, &qword_274656B70));
  swift_retain_n();
  sub_27444A640(v1);
  sub_27440CA78(&qword_280950098, &qword_28094B5E8, &qword_274656B70, &unk_274648AD8);
  sub_27463950C();
  sub_274529FEC();
  return sub_27463AE9C();
}

double sub_274529D10@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v24 = *v1;
  v25 = v3;
  v4 = v1[3];
  v26 = v1[2];
  v27 = v4;
  sub_27463B9CC();
  sub_27452A06C(&v24, v22);
  v5 = sub_27463B9BC();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v8 = v25;
  *(v6 + 32) = v24;
  *(v6 + 48) = v8;
  v9 = v27;
  *(v6 + 64) = v26;
  *(v6 + 80) = v9;
  sub_27452A06C(&v24, v22);
  v10 = sub_27463B9BC();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v7;
  v12 = v25;
  *(v11 + 32) = v24;
  *(v11 + 48) = v12;
  v13 = v27;
  *(v11 + 64) = v26;
  *(v11 + 80) = v13;
  sub_27463AF0C();
  v14 = v22[0];
  v15 = v22[1];
  v16 = v23;
  v17 = [*(*(&v24 + 1) + qword_28094A100) localizedLabel];
  v18 = sub_27463B6AC();
  v20 = v19;

  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 17) = v22[0];
  *(a1 + 20) = *(v22 + 3);
  *(a1 + 24) = v18;
  *(a1 + 32) = v20;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20;
  *(a1 + 56) = CGSizeMake;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;

  return result;
}

void sub_274529EB0(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  (*(a1 + 32))(&v5);
  v3 = v5;
  if (v5)
  {
    v4 = [v5 number];

    LOBYTE(v3) = [v4 BOOLValue];
  }

  *a2 = v3;
}

uint64_t sub_274529F34(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  sub_27452A06C(a4, v11);
  v7 = [v6 initWithBool_];
  v8 = [objc_allocWithZone(MEMORY[0x277D7C6A0]) initWithNumber_];

  v9 = *(a4 + 48);
  v11[0] = v8;
  v9(v11);

  return sub_27452A114(a4);
}

unint64_t sub_274529FEC()
{
  result = qword_2809500A0;
  if (!qword_2809500A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809500A0);
  }

  return result;
}

uint64_t objectdestroy_5Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_27452A170()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  result = [v0 setUnitStyle_];
  qword_2809500B8 = v0;
  return result;
}

uint64_t sub_27452A1C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v22[1] = a3;
  v11 = sub_274638B1C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x277D7D450], v11, v13);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809500C0, &qword_274656D08);
  v18 = *(v17 + 56);
  (*(v12 + 32))(&a5[v18], v15, v11);
  __swift_storeEnumTagSinglePayload(&a5[v18], 0, 1, v11);
  a5[*(v17 + 60)] = 0;
  *a5 = sub_27452AE3C;
  *(a5 + 1) = v16;
  v19 = a4;
  v20 = a1;
}

uint64_t sub_27452A35C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_27463B9CC();
  v9 = a4;
  v10 = a1;

  v11 = sub_27463B9BC();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;
  v14 = v10;

  v15 = v9;
  v16 = sub_27463B9BC();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v13;
  v17[4] = v14;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809500C8, &qword_274656D10);
  sub_27463AF0C();
  sub_27463B70C("Unit (Name)", 11);
  sub_27463B70C("Unit", 4);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v18 = qword_28094BB00;
  v19 = sub_27463B66C();

  v20 = sub_27463B66C();

  v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

  sub_27463B6AC();
  sub_274412BBC();
  v23 = sub_27463A53C();
  MEMORY[0x28223BE20](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809500D0, &qword_274656D18);
  sub_27452AECC();
  sub_27440CA78(&qword_2809500F0, &qword_2809500D0, &qword_274656D18, MEMORY[0x277CE14C0]);
  return sub_27463AE0C();
}

void sub_27452A690(void *a1@<X3>, void *a2@<X4>, void *a3@<X5>, void *a4@<X8>)
{
  v8[1] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950128, &unk_274656D60);
  MEMORY[0x277C575F0](v8, v5);
  v6 = v8[0];
  if (v8[0])
  {
    v7 = [v8[0] unit];
  }

  else
  {
    v7 = 0;
  }

  *a4 = v7;
}

uint64_t sub_27452A71C(void **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  sub_274412734(0, &qword_280950120, 0x277D7C9E0);
  v9 = v8;
  sub_27452A7C8(v8, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950128, &unk_274656D60);
  return sub_27463AEBC();
}

id sub_27452A7C8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUnit:a1 unitType:a2];

  return v4;
}

uint64_t sub_27452A824@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v55 = a5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809500F8, &qword_274656D20);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v50 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950100, &unk_274656D28);
  v12 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v50 - v16;
  sub_27463B70C("Default", 7, v15);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v18 = qword_28094BB00;
  v19 = sub_27463B66C();
  v20 = sub_27463B66C();

  v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

  v22 = sub_27463B6AC();
  v24 = v23;

  v59 = v22;
  v60 = v24;
  sub_274412BBC();
  *v17 = sub_27463A53C();
  *(v17 + 1) = v25;
  v17[16] = v26 & 1;
  *(v17 + 3) = v27;
  *(v17 + 4) = 0;
  v17[40] = 1;
  v28 = [objc_opt_self() availableUnitsForUnitType_];
  sub_274412734(0, &qword_2809500E8, 0x277CCAD98);
  v29 = sub_27463B81C();

  v63 = v29;
  swift_getKeyPath();
  v30 = swift_allocObject();
  v30[2] = a1;
  v30[3] = a2;
  v30[4] = a3;
  v30[5] = a4;
  v31 = a4;
  v32 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950108, &qword_274656D50);
  sub_27440CA78(&qword_280950110, &qword_280950108, &qword_274656D50, MEMORY[0x277D83980]);
  sub_27452AF50();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809500C8, &qword_274656D10);
  v34 = v17;
  v51 = v17;
  v35 = v33;
  v36 = sub_27452AECC();
  v59 = MEMORY[0x277CE0BD8];
  v60 = v35;
  v61 = MEMORY[0x277CE0BC8];
  v62 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v57;
  v38 = v53;
  sub_27463AF7C();
  v39 = *(v12 + 16);
  v40 = v52;
  v39(v52, v34, v38);
  v41 = v54;
  v42 = *(v54 + 16);
  v43 = v56;
  v42(v58, v37, v56);
  v44 = v55;
  v39(v55, v40, v38);
  v45 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950118, &qword_274656D58) + 48)];
  v46 = v58;
  v42(v45, v58, v43);
  v47 = *(v41 + 8);
  v47(v57, v43);
  v48 = *(v12 + 8);
  v48(v51, v38);
  v47(v46, v43);
  return (v48)(v40, v38);
}

id sub_27452AD4C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *a1;
  if (qword_280949318 != -1)
  {
    swift_once();
  }

  v3 = [qword_2809500B8 stringFromUnit_];
  sub_27463B6AC();

  sub_274412BBC();
  *a2 = sub_27463A53C();
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 40) = 1;

  return v8;
}

uint64_t objectdestroy_2Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_27452AECC()
{
  result = qword_2809500D8;
  if (!qword_2809500D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809500C8, &qword_274656D10);
    sub_27452AF50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809500D8);
  }

  return result;
}

unint64_t sub_27452AF50()
{
  result = qword_2809500E0;
  if (!qword_2809500E0)
  {
    sub_274412734(255, &qword_2809500E8, 0x277CCAD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809500E0);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{

  return swift_deallocObject();
}

uint64_t sub_27452B014()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950240, &qword_274656EF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950248, &qword_274656EF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648570;
  v4 = *MEMORY[0x277CBE868];
  *(inited + 32) = *MEMORY[0x277CBE868];
  v5 = v4;
  sub_27457464C(inited);
  sub_274637DEC();

  v6 = sub_274637D4C();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v7 = sub_274637D3C();
  (*(*(v6 - 8) + 8))(v2, v6);
  return v7 & 1;
}

uint64_t WFFilePickerParameter.view(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950140, &unk_274656D70);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  sub_27463B9CC();
  OUTLINED_FUNCTION_12_13();

  v11 = sub_27463B9BC();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a1;

  v14 = v1;
  v15 = sub_27463B9BC();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v13;
  v16[4] = a1;
  v16[5] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BDC0, &qword_27464C390);
  sub_27463AF0C();
  v17 = v43;
  v40 = v45;
  v41 = v44;
  v18 = (v7 + v3[15]);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274528610();
  *v18 = sub_27463979C();
  v18[1] = v19;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(KeyPath);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v22);
  v23 = v7 + v3[19];
  *v23 = swift_getKeyPath();
  v23[40] = 0;
  v24 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v24);
  v42 = 0;
  sub_27463ACDC();
  OUTLINED_FUNCTION_8_17();
  v42 = 0;
  sub_27463ACDC();
  OUTLINED_FUNCTION_8_17();
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v26 = v14;
  sub_27444A564(v26);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *v7 = sub_27463950C();
  v7[1] = v27;
  v28 = [v26 localizedLabel];
  v29 = sub_27463B6AC();
  v31 = v30;

  v7[2] = v29;
  v7[3] = v31;
  v32 = [v26 localizedDescription];
  if (v32)
  {
    v33 = v32;
    v34 = sub_27463B6AC();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v7[4] = v34;
  v7[5] = v36;
  v7[6] = 1;
  v7[7] = v17;
  v37 = v40;
  v7[8] = v41;
  v7[9] = v37;
  v38 = v3[13];

  sub_27444ACDC(v26, 0, 4, 0, 0, v7 + v38);
  *(v7 + v3[14]) = 0;
  sub_27452D5E8(v7, v10);
  sub_27440CA78(&qword_280950148, &qword_280950140, &unk_274656D70, &unk_274656A70);
  return sub_27463AE9C();
}

uint64_t sub_27452B584(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*a1)
  {
    v6 = *a1;
    [a5 stateClass];
    swift_getObjCClassMetadata();
    sub_274412734(0, &qword_280950238, 0x277D7C410);
    if (swift_dynamicCastMetatype())
    {
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVariable_];
    }
  }

  swift_getObjectType();
  return sub_2746385BC();
}

id WFFilePickerParameter.moduleSummarySlot(for:)(void *a1)
{
  v2 = v1;
  v4 = sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
  v5 = [v2 localizedLabel];
  v6 = sub_27463B6AC();
  v8 = v7;

  v9 = sub_27444C12C(v2);
  v11 = v10;
  v12 = sub_27463B66C();
  v13 = sub_27444AEE4(v6, v8, v9, v11, v12);
  if (a1)
  {
    v14 = [a1 containedVariables];
    sub_274412734(0, &qword_28094BD90, 0x277D7C9F8);
    v4 = sub_27463B81C();

    if (sub_274453594())
    {
      sub_2744535A4();
      if ((v4 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x277C58B20](0, v4);
      }

      else
      {
        v15 = *(v4 + 32);
      }

      v16 = v15;

      [v13 populateWith_];
      goto LABEL_6;
    }
  }

  if (![v2 shouldShowFullContextualPath])
  {
    if (!a1)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  if (!a1)
  {
    goto LABEL_27;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_15:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_12_13();
      swift_unknownObjectRetain();
      v19 = [v4 value];
      if (v19)
      {
        v20 = sub_274497E64(v19, &selRef_displayName);
        if (v21)
        {
          goto LABEL_25;
        }
      }

      swift_unknownObjectRelease();
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_12_13();
    swift_unknownObjectRetain();
    v22 = [v4 value];
    if (!v22 || (v23 = v22, v24 = [v22 isSupportedOnCurrentDevice], v23, (v24 & 1) != 0))
    {
LABEL_26:
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    sub_27463B70C("Unavailable File", 16);
    if (qword_2809492C0 != -1)
    {
      OUTLINED_FUNCTION_2_22(&qword_2809492C0);
    }

    v25 = qword_28094BB00;
    v26 = sub_27463B66C();
    v27 = sub_27463B66C();

    v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

    v29 = sub_27463B6AC();
    v31 = v30;

    v20 = v29;
    v21 = v31;
LABEL_25:
    sub_274457D08(v20, v21, v13);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_12_13();
  swift_unknownObjectRetain();
  v17 = [v4 value];
  if (!v17)
  {
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v4 = v17;
  v18 = sub_27452BAF0(v17);
  if (!v18)
  {
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  v16 = v18;
  [v13 populateWithAttributedString_];
  swift_unknownObjectRelease();

LABEL_6:
LABEL_27:
  v32 = [v2 editingContext];
  if (!a1 && v32)
  {
    v33 = sub_27444C12C(v2);
    if (v34)
    {
      v35 = v33;
      v36 = v34;
    }

    else
    {
      sub_27463B70C("ChooseFilePickerParameter", 25);
      sub_27463B70C("Choose", 6);
      if (qword_2809492C0 != -1)
      {
        OUTLINED_FUNCTION_2_22(&qword_2809492C0);
      }

      v37 = qword_28094BB00;
      v38 = sub_27463B66C();

      v39 = sub_27463B66C();

      v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

      v35 = sub_27463B6AC();
      v36 = v41;
    }

    sub_274457D08(v35, v36, v13);
  }

  return v13;
}

void *sub_27452BAF0(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = sub_274637E2C();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = v6 - v7;
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v35 - v11;
  v13 = [a1 fileLocation];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v35 = 0;
  v15 = [v13 resolveLocationWithError_];
  v16 = v35;
  if (!v15)
  {
    v23 = v35;
    v24 = sub_274637D6C();

    swift_willThrow();
    return 0;
  }

  v17 = v15;
  sub_274637E0C();
  v18 = v16;

  (*(v4 + 32))(v12, v8, v2);
  v19 = sub_274637DFC();
  if (!sub_27452D718(v19))
  {
    v25 = OUTLINED_FUNCTION_6_14();
    v26(v25);

    return 0;
  }

  v20 = sub_27463873C();

  if (sub_27452B014())
  {
    v21 = OUTLINED_FUNCTION_6_14();
    v22(v21);
  }

  else
  {
    sub_274412734(0, &qword_280953450, 0x277CCA898);
    v28 = sub_274637DCC();
    v35 = 46;
    v36 = 0xE100000000000000;
    MEMORY[0x277C57EA0](v28);

    v29 = sub_2745A9480(v35, v36);
    if (v20)
    {
      v30 = [v20 mutableCopy];
      if (v30)
      {
        v31 = v30;
        v32 = v30;
        [v32 appendAttributedString_];

        v29 = v14;
        v14 = v20;
        v20 = v31;
      }

      else
      {
        v32 = v20;
        v20 = 0;
      }
    }

    v33 = OUTLINED_FUNCTION_6_14();
    v34(v33);
  }

  return v20;
}

id sub_27452BDB0(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFFilePickerParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_27452BE1C()
{
  static WFFilePickerParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_27452BF2C()
{
  OUTLINED_FUNCTION_79();
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_27452BFC0, v3, v2);
}

uint64_t sub_27452BFC0()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_27452C0D8;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_38;
  v0[7].receiver = v2;
  v3 = type metadata accessor for FilePickerParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_27452C0D8()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_27452C1DC, v2, v1);
}

uint64_t sub_27452C1DC()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 160);

  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor32FilePickerParameterSummaryEditor_modal);
  if (v2)
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_27452C2D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_27452C370, v4, v3);
}

uint64_t sub_27452C370()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_27452BF2C();
}

id sub_27452C41C(uint64_t a1)
{
  v3 = [v1 parameter];
  [v3 singleStateClass];

  swift_getObjCClassMetadata();
  sub_274412734(0, &qword_280950238, 0x277D7C410);
  if (swift_dynamicCastMetatype())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = MEMORY[0x277D7C410];
  }

  v5 = objc_allocWithZone(ObjCClassFromMetadata);

  return [v5 initWithValue_];
}

uint64_t sub_27452C4D8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10, &unk_274648610);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v87 - v9;
  v91 = sub_274637E2C();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v89 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v87 = &v87 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v87 - v19;
  v21 = 0x1FB9BC000;
  v22 = OUTLINED_FUNCTION_13_13();
  v23 = [v22 editingContext];

  if (!v23 && (v60 = OUTLINED_FUNCTION_13_13(), v61 = [v60 workflow], v60, v61) && (sub_274497E64(v61, &selRef_workflowID), v62))
  {

    LODWORD(v90) = 0;
  }

  else
  {
    LODWORD(v90) = 1;
  }

  v24 = OUTLINED_FUNCTION_13_13();
  v25 = [v24 allowsMultipleValues];

  if (v25)
  {
    v88 = v2;
    v26 = MEMORY[0x277D84F90];
    v92 = MEMORY[0x277D84F90];
    v27 = *(a1 + 16);
    if (v27)
    {
      v29 = *(v12 + 16);
      v28 = v12 + 16;
      v2 = v29;
      v30 = a1 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
      v89 = *(v28 + 56);
      v31 = v91;
      v21 = &selRef_editingContext;
      while (1)
      {
        (v2)(v20, v30, v31);
        if (v90)
        {
          break;
        }

        v34 = [v88 parameter];
        v31 = [v34 *(v21 + 2352)];

        if (v31)
        {
          v35 = sub_274497E64(v31, &selRef_workflowID);
          if (v36)
          {
            v37 = v35;
            v38 = v36;
            v39 = v87;
            (v2)(v87, v20, v91);
            v40 = objc_allocWithZone(MEMORY[0x277D7C428]);
            v41 = v39;
            v21 = 0x279EDD000;
            v42 = v37;
            v31 = v40;
            v33 = sub_27452D658(v41, v42, v38);
LABEL_11:
            v43 = OUTLINED_FUNCTION_11_12();
            v45 = v44(v43);
            if (v33)
            {
              MEMORY[0x277C57F30](v45);
              if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_27463B85C();
              }

              sub_27463B8AC();
              v31 = v91;
              v26 = v92;
            }

            goto LABEL_16;
          }
        }

        v46 = OUTLINED_FUNCTION_11_12();
        v47(v46);
LABEL_16:
        v30 += v89;
        if (!--v27)
        {
          goto LABEL_21;
        }
      }

      v32 = objc_allocWithZone(MEMORY[0x277D7C428]);
      v31 = sub_274637DFC();
      v33 = [v32 initWithURL_];

      goto LABEL_11;
    }

LABEL_21:
    v53 = sub_274453594();
    v54 = v88;
    if (v53)
    {
      v55 = v53;
      v92 = MEMORY[0x277D84F90];
      v56 = &v92;
      sub_27463C44C();
      if (v55 < 0)
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v57 = 0;
      do
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x277C58B20](v57, v26);
        }

        else
        {
          v58 = *(v26 + 8 * v57 + 32);
        }

        v59 = v58;
        v57 = v57 + 1;
        sub_27452C41C(v58);

        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        sub_27463C42C();
      }

      while (v55 != v57);

      v56 = v92;
    }

    else
    {

      v56 = MEMORY[0x277D84F90];
    }

    v63 = [v54 initialArrayState];
    if (v63)
    {
      v21 = v63;
      v64 = [v63 value];
      if (v64)
      {
        v55 = v64;
        v65 = sub_274453594();
        if (v65)
        {
          v26 = v65;
          v2 = (v56 & 0xC000000000000001);
          sub_2744535A4();
          if ((v56 & 0xC000000000000001) == 0)
          {
            v66 = *(v56 + 32);
            swift_unknownObjectRetain();
LABEL_38:
            v67 = [v54 arrayIndex];
            if (v67 >= [v55 count])
            {
              v91 = v66;
              v54 = (v56 & 0xFFFFFFFFFFFFFF8);
              v90 = v21;
              v82 = 0;
              v68 = v21;
              while (v26 != v82)
              {
                if (v2)
                {
                  v21 = MEMORY[0x277C58B20](v82, v56);
                }

                else
                {
                  if (v82 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_75;
                  }

                  v21 = *(v56 + 8 * v82 + 32);
                  swift_unknownObjectRetain();
                }

                if (__OFADD__(v82, 1))
                {
                  __break(1u);
LABEL_75:
                  __break(1u);
                  goto LABEL_76;
                }

                if (v68)
                {
                  v83 = [v68 stateByAppendingValue_];

                  swift_unknownObjectRelease();
                  v68 = v83;
                }

                else
                {
                  swift_unknownObjectRelease();
                }

                ++v82;
              }

              v84 = v90;

              swift_unknownObjectRelease();

              v54 = v88;
              if (!v68)
              {
                goto LABEL_71;
              }

              goto LABEL_69;
            }

            v68 = [v21 stateByReplacingValueAtIndex:objc_msgSend(v54 withValue:{sel_arrayIndex), v66}];

            swift_unknownObjectRelease();
            goto LABEL_55;
          }

LABEL_77:
          v66 = MEMORY[0x277C58B20](0, v56);
          goto LABEL_38;
        }

        v81 = [v54 arrayIndex];
        if (v81 < [v55 count])
        {
          v68 = [v21 stateByRemovingValueAtIndex_];

LABEL_55:
          if (!v68)
          {
            goto LABEL_71;
          }

LABEL_69:
          v85 = v68;
LABEL_72:
          [v54 commitState_];

          return swift_unknownObjectRelease();
        }

LABEL_71:
        v85 = 0;
        goto LABEL_72;
      }
    }

    v80 = [v54 parameter];
    [v80 multipleStateClass];

    swift_getObjCClassMetadata();
    sub_274412734(0, &qword_28094E0C0, 0x277D7C678);
    if (swift_dynamicCastMetatype())
    {
      v68 = sub_274467468(v56);
      if (v68)
      {
        goto LABEL_69;
      }
    }

    else
    {
    }

    goto LABEL_71;
  }

  sub_274442DC4(a1, v10);
  sub_27440F340(v10, v7);
  v48 = v91;
  if (__swift_getEnumTagSinglePayload(v7, 1, v91) != 1)
  {
    v49 = v89;
    (*(v12 + 32))(v89, v7, v48);
    if (v90)
    {
      sub_274412734(0, &qword_280950230, 0x277D7C428);
      v50 = OUTLINED_FUNCTION_7_21();
      v51(v50);
      v52 = sub_27452CE34(0x1FB9BC000);
      goto LABEL_43;
    }

    v69 = OUTLINED_FUNCTION_13_13();
    v70 = [v69 workflow];

    if (v70)
    {
      v71 = sub_274497E64(v70, &selRef_workflowID);
      if (v72)
      {
        v73 = v71;
        v74 = v72;
        v75 = OUTLINED_FUNCTION_7_21();
        v48 = v91;
        v76(v75);
        v77 = objc_allocWithZone(MEMORY[0x277D7C428]);
        v52 = sub_27452D658(0x1FB9BC000, v73, v74);
LABEL_43:
        v78 = v52;
        (*(v12 + 8))(v49, v48);
        sub_27440CB1C(v10, &qword_280949E10, &unk_274648610);
        if (v78)
        {
          v79 = v78;
          v78 = sub_27452C41C(v79);
        }

        goto LABEL_52;
      }
    }

    (*(v12 + 8))(v49, v91);
  }

  sub_27440CB1C(v10, &qword_280949E10, &unk_274648610);
  v78 = 0;
LABEL_52:
  [v2 commitState_];
  return swift_unknownObjectRelease();
}

id sub_27452CE34(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_274637DFC();
  v4 = [v2 initWithURL_];

  v5 = sub_274637E2C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_27452CED0(void *a1)
{
  v2 = v1;
  sub_274412734(0, &unk_280950220, 0x277D75458);
  v4 = [v1 parameter];
  v5 = [v4 supportedTypes];

  sub_274638C8C();
  v6 = sub_27463B81C();

  v7 = sub_27452D0E8(v6, 0);
  v8 = [v2 parameter];
  v9 = [v8 allowsMultipleSelection];

  [v7 setAllowsMultipleSelection_];
  [v7 setDelegate_];
  [v7 setModalPresentationStyle_];
  for (i = [a1 sourceViewController]; ; i = v12)
  {
    v11 = [i presentedViewController];
    if (!v11)
    {
      break;
    }

    v12 = v11;
  }

  [i presentViewController:v7 animated:1 completion:0];

  v13 = *&v2[OBJC_IVAR____TtC14WorkflowEditor32FilePickerParameterSummaryEditor_modal];
  *&v2[OBJC_IVAR____TtC14WorkflowEditor32FilePickerParameterSummaryEditor_modal] = v7;
}

id sub_27452D074(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditor32FilePickerParameterSummaryEditor_modal] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for FilePickerParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_27452D0E8(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_274638C8C();
  v4 = sub_27463B7FC();

  v5 = [v3 initForOpeningContentTypes:v4 asCopy:a2 & 1];

  return v5;
}

id sub_27452D1AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilePickerParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_27452D1F0(void *a1)
{
  *(swift_allocObject() + 16) = v1;
  OUTLINED_FUNCTION_0_33();
  OUTLINED_FUNCTION_1_23();
  v6[2] = v3;
  v6[3] = &block_descriptor_30;
  v4 = _Block_copy(v6);
  v5 = v1;

  [a1 dismissViewControllerAnimated:1 completion:v4];
  _Block_release(v4);
}

void sub_27452D308(void *a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a2;
  OUTLINED_FUNCTION_0_33();
  OUTLINED_FUNCTION_1_23();
  v9[2] = v6;
  v9[3] = &block_descriptor_23;
  v7 = _Block_copy(v9);
  v8 = v2;

  [a1 dismissViewControllerAnimated:1 completion:v7];
  _Block_release(v7);
}

id sub_27452D3CC(void *a1, uint64_t a2)
{
  sub_27452C4D8(a2);

  return [a1 completeEditing];
}

uint64_t sub_27452D500(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() mainBundle];
  v4 = [v3 wf_isWidgetConfigurationExtensionBundle];

  if (v4)
  {
    return 2;
  }

  if ([a2 horizontalSizeClass] == 1)
  {
    return 2;
  }

  return -1;
}

uint64_t sub_27452D5E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950140, &unk_274656D70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_27452D658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_274637DFC();
  if (a3)
  {
    v8 = sub_27463B66C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithURL:v7 workflowID:v8];

  sub_274637E2C();
  OUTLINED_FUNCTION_7();
  (*(v10 + 8))(a1);
  return v9;
}

uint64_t sub_27452D718(void *a1)
{
  v2 = [a1 wf_displayPathComponents];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_27463B81C();

  return v3;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27452D7C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444C34C;

  return sub_27452C2D8(v2, v3);
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  return sub_27444C44C(a2 + 32, a1 + 32);
}

{
  return sub_27444C44C(a2 + 32, a1 + 32);
}

void OUTLINED_FUNCTION_8_17()
{
  v2 = *(v1 - 112);
  *v0 = *(v1 - 120);
  *(v0 + 8) = v2;
}

id OUTLINED_FUNCTION_13_13()
{

  return [v0 (v1 + 780)];
}

uint64_t sub_27452D93C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_27452D97C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_27452D9F4@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v81 = sub_274638B1C();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950250, &qword_274656FB8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = (&v78 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950258, &qword_274656FC0);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_0();
  v84 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v78 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950260, &qword_274656FC8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v78 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950268, &unk_274656FD0);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_0();
  v83 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v78 - v20;
  v23 = *v2;
  v22 = v2[1];
  v82 = v2;
  v24 = v2[2];
  v95 = v23;
  v96 = v22;
  v89 = v22;
  v88 = v24;
  v97 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180, &qword_2746541F0);
  OUTLINED_FUNCTION_1_24();
  *(v26 - 256) = v25;
  MEMORY[0x277C575F0]();
  v27 = v91;
  v28 = [v91 isAvailable];

  v90 = v12;
  v87 = v21;
  v86 = v23;
  if (v28)
  {
    v29 = 1;
  }

  else
  {
    v78 = v4;
    sub_27463B70C("Variable not available.", 23);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v30 = qword_28094BB00;
    v31 = sub_27463B66C();
    v32 = sub_27463B66C();

    v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

    v34 = sub_27463B6AC();
    v36 = v35;

    MEMORY[0x28223BE20](v37);
    *(&v78 - 2) = v34;
    *(&v78 - 1) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950270, &qword_274656FE0);
    sub_27440CA78(&qword_280950278, &qword_280950270, &qword_274656FE0, MEMORY[0x277CE1138]);
    sub_27463AFCC();

    KeyPath = swift_getKeyPath();
    v39 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950280, &qword_274657018) + 36)];
    *v39 = KeyPath;
    v39[8] = 1;
    v40 = sub_27463ABCC();
    v41 = swift_getKeyPath();
    v42 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950288, &qword_274657050) + 36)];
    *v42 = v41;
    v42[1] = v40;
    v43 = sub_27463A32C();
    v44 = &v16[*(v13 + 36)];
    *v44 = v43;
    *(v44 + 8) = 0u;
    *(v44 + 24) = 0u;
    v44[40] = 1;
    v21 = v87;
    sub_27445EA84(v16, v87, &qword_280950260, &qword_274656FC8);
    v29 = 0;
    v4 = v78;
    v23 = v86;
  }

  __swift_storeEnumTagSinglePayload(v21, v29, 1, v13);
  v45 = v89;
  v95 = v23;
  v96 = v89;
  v46 = v88;
  v97 = v88;
  OUTLINED_FUNCTION_1_24();
  MEMORY[0x277C575F0](*(v47 - 256));
  v48 = v91;
  objc_opt_self();
  v49 = swift_dynamicCastObjCClass();
  if (v49)
  {
    v50 = v49;
    v51 = v80;
    v52 = v79;
    v53 = v81;
    (*(v80 + 104))(v79, *MEMORY[0x277D7D450], v81);
    v104 = v23;
    v54 = v82;
    v103 = *(v82 + 2);
    v55 = swift_allocObject();
    v56 = *(v54 + 1);
    *(v55 + 16) = *v54;
    *(v55 + 32) = v56;
    *(v55 + 48) = *(v54 + 2);
    *(v55 + 64) = v50;
    v57 = *(v4 + 56);
    (*(v51 + 32))(v7 + v57, v52, v53);
    v46 = v88;
    v58 = v53;
    v45 = v89;
    __swift_storeEnumTagSinglePayload(v7 + v57, 0, 1, v58);
    *(v7 + *(v4 + 60)) = 0;
    *v7 = sub_27452EADC;
    v7[1] = v55;
    v59 = v7;
    v60 = v90;
    sub_27445EA84(v59, v90, &qword_280950250, &qword_274656FB8);
    __swift_storeEnumTagSinglePayload(v60, 0, 1, v4);
    sub_27445E9E4(&v104, &v95);

    v61 = v46;
    sub_27445EAD4(&v103, &v95, &qword_28094C298, &qword_27464F120);
  }

  else
  {

    v60 = v90;
    __swift_storeEnumTagSinglePayload(v90, 1, 1, v4);
    v54 = v82;
  }

  v88 = sub_27452E830();
  if (v88)
  {
    v95 = v86;
    v96 = v45;
    v97 = v46;
    OUTLINED_FUNCTION_1_24();
    sub_27463AEEC();
    v63 = *(&v91 + 1);
    v62 = v91;
    v64 = v92;
    v89 = v54[3];

    v65 = v64;
  }

  else
  {
    v89 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
  }

  v66 = v21;
  v67 = v83;
  sub_27445EAD4(v66, v83, &qword_280950268, &unk_274656FD0);
  v68 = v60;
  v69 = v84;
  sub_27445EAD4(v68, v84, &qword_280950258, &qword_274656FC0);
  v70 = v85;
  sub_27445EAD4(v67, v85, &qword_280950268, &unk_274656FD0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950290, &qword_274657058);
  sub_27445EAD4(v69, v70 + *(v71 + 48), &qword_280950258, &qword_274656FC0);
  v72 = (v70 + *(v71 + 64));
  *&v91 = v62;
  *(&v91 + 1) = v63;
  v73 = v89;
  *&v92 = v64;
  *(&v92 + 1) = v89;
  v74 = v88;
  *&v93 = v88;
  *(&v93 + 1) = v62;
  *&v94 = v63;
  *(&v94 + 1) = v64;
  v75 = v92;
  *v72 = v91;
  v72[1] = v75;
  v76 = v94;
  v72[2] = v93;
  v72[3] = v76;
  sub_27445EAD4(&v91, &v95, &qword_280950298, &unk_274657060);
  sub_27440CB1C(v90, &qword_280950258, &qword_274656FC0);
  sub_27440CB1C(v87, &qword_280950268, &unk_274656FD0);
  v95 = v62;
  v96 = v63;
  v97 = v64;
  v98 = v73;
  v99 = v74;
  v100 = v62;
  v101 = v63;
  v102 = v64;
  sub_27440CB1C(&v95, &qword_280950298, &unk_274657060);
  sub_27440CB1C(v69, &qword_280950258, &qword_274656FC0);
  return sub_27440CB1C(v67, &qword_280950268, &unk_274656FD0);
}

void *sub_27452E28C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_274639B2C();
  v12 = 1;
  sub_27452E370(a1, a2, __src);
  memcpy(__dst, __src, 0x51uLL);
  memcpy(v14, __src, 0x51uLL);
  sub_27445EAD4(__dst, &v9, &qword_2809502A0, &qword_274657070);
  sub_27440CB1C(v14, &qword_2809502A0, &qword_274657070);
  memcpy(&v11[7], __dst, 0x51uLL);
  v7 = v12;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  return memcpy((a3 + 17), v11, 0x58uLL);
}

uint64_t sub_27452E370@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809502A8, &qword_274657078);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  sub_27463AC2C();
  sub_274639C8C();
  v9 = sub_274639C9C();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = sub_27463AC6C();

  sub_27440CB1C(v8, &qword_2809502A8, &qword_274657078);
  v11 = sub_27463AB6C();
  v12 = sub_27463AB9C();
  v28 = a1;
  v29 = a2;
  sub_274412BBC();

  v13 = sub_27463A53C();
  v25[2] = v12;
  v26 = 0;
  v27 = 1;
  v25[0] = v10;
  v25[1] = v11;
  v28 = &v26;
  v29 = v25;
  v21 = v13;
  v22 = v14;
  v23 = v15 & 1;
  v24 = v16;
  v19 = 0;
  v20 = 1;
  v30 = &v21;
  v31 = &v19;
  sub_2744B288C(&v28, a3);
  sub_274412C10(v21, v22, v23);
}

void *sub_27452E538@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_27463B70C("Prompt", 6);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v5 = qword_28094BB00;
  v6 = sub_27463B66C();
  v7 = sub_27463B66C();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_27463B6AC();
  v11 = v10;

  v12 = a1[4];
  v13 = a1[5];
  sub_27463B9CC();

  v14 = a2;
  v15 = sub_27463B9BC();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  v18 = a1[2];
  v30 = *a1;

  sub_27445E9E4(&v30, __src);

  v19 = v18;
  v20 = sub_27463B9BC();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v17;
  v22 = *(a1 + 1);
  *(v21 + 32) = *a1;
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a1 + 2);
  sub_27463AF0C();
  sub_2744CD5E0(v9, v11, v12, v13, v25, v26, v27, v28, __src);
  return memcpy(a3, __src, 0x58uLL);
}

uint64_t sub_27452E760@<X0>(void *a1@<X2>, uint64_t *a2@<X8>)
{
  result = sub_27452EB00(a1);
  if (v4)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0xE000000000000000;
  if (v4)
  {
    v6 = v4;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_27452E79C(uint64_t *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = *a1;
  v5 = a1[1];
  objc_allocWithZone(MEMORY[0x277D7C158]);

  sub_27452EA78(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180, &qword_2746541F0);
  return sub_27463AEBC();
}

uint64_t sub_27452E830()
{
  v1 = v0;
  v17 = *v0;
  v18 = *(v0 + 2);
  v15 = *v0;
  v16 = *(v0 + 2);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180, &qword_2746541F0);
  MEMORY[0x277C575F0](&v14);
  v3 = v14;
  v4 = [v14 isAvailable];

  if (!v4)
  {
    return 0;
  }

  v15 = *v1;
  v16 = *(v1 + 2);
  MEMORY[0x277C575F0](&v14, v2);
  v5 = v14;
  v6 = [v14 aggrandizements];

  sub_274412734(0, &unk_28094F190, 0x277D7CA00);
  v7 = sub_27463B81C();

  if (!sub_274453594())
  {

LABEL_10:
    v15 = v17;
    v16 = v18;
    MEMORY[0x277C575F0](&v14, v2);
    v12 = v14;
    v11 = sub_2745CC678(*(v1 + 3));

    return v11;
  }

  sub_2744535A4();
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x277C58B20](0, v7);
  }

  else
  {
    v8 = *(v7 + 32);
  }

  v9 = v8;

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

    goto LABEL_10;
  }

  [v10 coercionItemClass];

  swift_getObjCClassMetadata();
  sub_274412734(0, &qword_280949F00, 0x277CFC2F8);
  return swift_dynamicCastMetatype();
}

id sub_27452EA78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_27463B66C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithPrompt_];

  return v4;
}

uint64_t sub_27452EB00(void *a1)
{
  v1 = [a1 prompt];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B6AC();

  return v3;
}

uint64_t WFUIRecordingEventParameter.view(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809502C0, &qword_274657090);
  MEMORY[0x28223BE20](v2);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v9 = *(v8 + 56);
  *(v4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
  swift_storeEnumTagMultiPayload();
  v10 = v4 + v2[15];
  *v10 = swift_getKeyPath();
  *(v10 + 4) = 0;
  v11 = v4 + v2[16];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v4 + v2[17];
  *v12 = swift_getKeyPath();
  v12[40] = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v13 = v1;
  sub_27444A564(v13);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *v4 = sub_27463950C();
  v4[1] = v14;
  v15 = [v13 localizedLabel];
  v16 = sub_27463B6AC();
  v18 = v17;

  v19 = [v13 localizedDescription];
  if (v19)
  {
    v20 = v19;
    v21 = sub_27463B6AC();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v4[2] = v16;
  v4[3] = v18;
  v4[4] = v21;
  v4[5] = v23;
  v24 = v4 + v2[12];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = v2[11];
  v26 = v13;

  sub_27444ACF0(v26, 0, 4, 0, 0, v4 + v25);
  *(v4 + v2[13]) = 0;
  sub_27452F014(v4, v7);
  sub_27440CA78(&unk_2809502D0, &unk_2809502C0, &qword_274657090, &protocol conformance descriptor for ParameterLayoutView<A>);
  return sub_27463AE9C();
}

id WFUIRecordingEventParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  sub_274466DA4();
  v3 = sub_27444C12C(v1);
  v5 = v4;
  v6 = sub_27463B66C();
  v7 = sub_27444AEE4(0, 0xE000000000000000, v3, v5, v6);
  if (a1)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      swift_unknownObjectRetain();
      sub_274497E64([v9 event], &selRef_userDescription);
      if (v10 || (sub_274497E64([v9 event], &selRef_localizedActionName), v11) || (sub_274497E64(objc_msgSend(v9, sel_event), &selRef_actionName), v12))
      {
        v13 = sub_27463B66C();
      }

      else
      {
        v13 = 0;
      }

      [v7 populateWithString_];
      swift_unknownObjectRelease();
    }
  }

  return v7;
}

id sub_27452EF9C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFUIRecordingEventParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_27452F014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809502C0, &qword_274657090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27452F084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_274534C48(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_8(v3);
}

void *sub_27452F0D0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      v11 = sub_274534D60(a1);
      if (v12)
      {
        v10 = *(*(a2 + 56) + 8 * v11);
        v13 = v10;
        return v10;
      }
    }

    return 0;
  }

  OUTLINED_FUNCTION_30_7();
  sub_27463C53C();
  OUTLINED_FUNCTION_19_8();

  if (!a2)
  {
    return 0;
  }

  v3 = type metadata accessor for WFEditorCell();
  OUTLINED_FUNCTION_29_8(v3, v4, v5, v3, v6, v7, v8, v9, a2, v15);
  return v16;
}

uint64_t sub_27452F16C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_30_7();
    sub_27463C53C();
    OUTLINED_FUNCTION_19_8();

    if (a2)
    {
      v3 = type metadata accessor for WFEditorActionOutputItem();
      OUTLINED_FUNCTION_29_8(v3, v4, v5, v3, v6, v7, v8, v9, a2, v13);
      return v14;
    }
  }

  else if (*(a2 + 16))
  {
    v11 = sub_274534D60(a1);
    if (v12)
    {
      OUTLINED_FUNCTION_26_8(v11);
    }
  }

  return 0;
}

uint64_t sub_27452F230(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3(a1);
  if (v4)
  {
    return OUTLINED_FUNCTION_26_8(v3);
  }

  else
  {
    return 0;
  }
}

double sub_27452F288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v5 = sub_274534C48(a1, a2), (v6 & 1) != 0))
  {
    v7 = OUTLINED_FUNCTION_8_18(v5);

    sub_27444C44C(v7, v8);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_27452F2E4@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_274534E54(), (v4 & 1) != 0))
  {
    v5 = OUTLINED_FUNCTION_8_18(v3);

    sub_27444C44C(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_27452F340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_274534C48(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 24 * v4);

  v7 = v6;
  return v6;
}

uint64_t sub_27452F3B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_274534E8C(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_8(v2);
}

void *sub_27452F400(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_274534D08(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void sub_27452F448(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = 0uLL;
  if (*(a1 + 16))
  {
    sub_274534EF0();
    if (v7)
    {
      v8 = 0;
      v9 = (*(a1 + 56) + 32 * v6);
      v4 = *v9;
      v10 = v9[1];
    }

    else
    {
      v8 = 1;
      v10 = 0uLL;
      v4 = 0uLL;
    }
  }

  else
  {
    v8 = 1;
    v10 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 16) = v10;
  *(a2 + 32) = v8;
}

void *sub_27452F4B4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_27463C53C();

    if (v4)
    {
      sub_274412734(0, &unk_280950440, 0x277CFC2E0);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16) && (sub_274534F38(a1), (v6 & 1) != 0))
  {
    v4 = *(*(a2 + 56) + 8 * v5);
    v7 = v4;
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t sub_27452F578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_274534C48(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 16 * v4);
  }

  else
  {
    return 0;
  }
}

double sub_27452F5E0@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (sub_274534F88(a3), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_8_18(v4);

    sub_27444C44C(v6, v7);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_27452F63C()
{
  sub_274535908();
  sub_274639ACC();
  return v1;
}

uint64_t sub_27452F6C4()
{
  sub_2745345D4();
  sub_274639ACC();
  return v1;
}

uint64_t sub_27452F73C(uint64_t a1, void *a2, uint64_t a3, __int16 a4)
{
  if (!a2)
  {
    return 0x6576697463616E69;
  }

  sub_27463C38C();
  MEMORY[0x277C57EA0](0x28676E696E6E7572, 0xE800000000000000);
  sub_27463BA2C();
  MEMORY[0x277C57EA0](0x6E6F69746361202CLL, 0xEA0000000000203ALL);
  v7 = [a2 identifier];
  v8 = sub_27463B6AC();
  v10 = v9;

  MEMORY[0x277C57EA0](v8, v10);

  MEMORY[0x277C57EA0](0xD000000000000012, 0x800000027468C4B0);
  v11 = sub_27452FBA0(a3, a4 & 1);
  MEMORY[0x277C57EA0](v11);

  MEMORY[0x277C57EA0](0x6974696177202C29, 0xEC000000203A676ELL);
  if ((a4 & 0x100) != 0)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if ((a4 & 0x100) != 0)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x277C57EA0](v12, v13);

  return 0;
}

uint64_t sub_27452F904(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  v16 = sub_27452F9E4();
  if (!a6)
  {
    if (!a2)
    {
LABEL_18:
      v18 = 0;
      return v18 & 1;
    }

LABEL_14:
    v18 = 1;
    return v18 & 1;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  v17 = ((a4 & 0x100) == 0) != (a8 & 0x100) >> 8 && a6 == a2;
  if (!v17 || v16 < vabdd_f64(*&a5, *&a1))
  {
    goto LABEL_14;
  }

  if ((a8 & 1) == 0)
  {
    if ((a4 & 1) == 0 && v16 >= vabdd_f64(*&a7, *&a3))
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v18 = a4 ^ 1 | (a3 == 0);
  if (!a7)
  {
    v18 = a4 ^ 1 | (a3 != 0);
  }

  return v18 & 1;
}

double sub_27452F9E4()
{
  v0 = [objc_opt_self() systemShortcutsUserDefaults];
  v1 = sub_27463B66C();
  v2 = [v0 BOOLForKey_];

  result = 0.1;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_27452FA84(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  if (!a2)
  {
    return !a6;
  }

  if (!a6)
  {
    return 0;
  }

  if (*&a1 != *&a5)
  {
    return 0;
  }

  sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
  if ((sub_27463BF7C() & 1) == 0)
  {
    return 0;
  }

  if ((a4 & 1) == 0)
  {
    if ((a8 & 1) == 0 && *&a3 == *&a7)
    {
      return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
    }

    return 0;
  }

  result = 0;
  if (*&a3 != 0.0)
  {
    if ((a8 & 1) == 0 || *&a7 == 0.0)
    {
      return result;
    }

    return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
  }

  if ((a8 & 1) != 0 && *&a7 == 0.0)
  {
    return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
  }

  return result;
}

uint64_t sub_27452FBA0(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a1)
    {
      return 0x6D72657465646E69;
    }

    else
    {
      return 0x676E697472617473;
    }
  }

  else
  {
    sub_27463BA2C();
    return 0;
  }
}

id sub_27452FC3C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEB0, &qword_2746565C0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48_2();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_shortcutRunnerStateObservation] = 0;
  v9 = OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_onLifecycleEvent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FEC0, &qword_2746565C8);
  swift_allocObject();
  *&v1[v9] = sub_274638F1C();
  v10 = OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner__runningState;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v16 = 0;
  sub_274638F6C();
  (*(v7 + 32))(&v3[v10], v2, v5);
  *&v3[OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_runnerClient] = 0;
  v3[OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_isRunning] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_progress] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_progressModeler] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_modelerStateObservation] = 0;
  swift_unknownObjectWeakAssign();
  v13.receiver = v3;
  v13.super_class = type metadata accessor for EditorShortcutRunner(0);
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

void sub_27452FDF0()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v81[1] = *MEMORY[0x277D85DE8];
  v4 = sub_274638C1C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v11 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v78 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v78 - v21;
  if (*(v1 + OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_runnerClient))
  {
    sub_274638C2C();
    v23 = sub_274638D9C();
    v24 = sub_27463BBFC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2743F0000, v23, v24, "Asked to run, but already running. Ignoring request.", v25, 2u);
      OUTLINED_FUNCTION_10_9();
    }

    v26 = *(v13 + 8);
    v27 = v22;
    v28 = v11;
    goto LABEL_5;
  }

  v80 = OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_runnerClient;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_32;
  }

  v78 = v11;
  v79 = Strong;
  (*(v6 + 104))(v10, *MEMORY[0x277D79BE8], v4);
  v30 = sub_274638C0C();
  (*(v6 + 8))(v10, v4);
  v31 = sub_27463B6AC();
  v33 = v32;
  v34 = sub_27463B6AC();
  v37 = v31 == v34 && v33 == v35;
  if ((v30 & 1) == 0)
  {
    if (v37)
    {

      v38 = v78;
      v39 = v79;
    }

    else
    {
      v49 = OUTLINED_FUNCTION_27_6(v34, v35, v34);

      v38 = v78;
      v39 = v79;
      if ((v49 & 1) == 0)
      {
LABEL_29:
        v65 = [v39 reference];
        if (v65)
        {
          v66 = v65;
          objc_allocWithZone(MEMORY[0x277D7C8A0]);
          v67 = v3;
          v57 = sub_274534AEC(v66, 0, v3, 0, 0, 1);
          goto LABEL_31;
        }

        sub_274638C2C();
        v74 = sub_274638D9C();
        v75 = sub_27463BBFC();
        if (os_log_type_enabled(v74, v75))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_28_9(&dword_2743F0000, v76, v77, "Asked to run, but no reference on shortcut and not a home workflow");
          OUTLINED_FUNCTION_10_9();
        }

        v26 = *(v13 + 8);
        v27 = v16;
        goto LABEL_39;
      }
    }

    v50 = [v39 record];
    v51 = [v50 fileRepresentation];

    v81[0] = 0;
    v52 = [v51 fileDataWithError_];

    v53 = v81[0];
    if (v52)
    {
      v45 = sub_274637E4C();
      v47 = v54;

      v48 = MEMORY[0x277D7C8A0];
      goto LABEL_24;
    }

    v63 = v53;
    v64 = sub_274637D6C();

    swift_willThrow();
    goto LABEL_29;
  }

  if (v37)
  {

    v38 = v78;
    v39 = v79;
LABEL_19:
    v41 = [v39 record];
    v42 = [v41 fileRepresentation];

    v81[0] = 0;
    v43 = [v42 fileDataWithError_];

    v44 = v81[0];
    if (v43)
    {
      v45 = sub_274637E4C();
      v47 = v46;

      v48 = MEMORY[0x277D7C3C0];
LABEL_24:
      v55 = objc_allocWithZone(v48);
      v56 = v3;
      v57 = sub_274534A78(v45, v47, v3);
LABEL_31:
      v68 = v57;
      [v68 setDelegate_];
      [v68 start];
      v69 = *(v1 + v80);
      *(v1 + v80) = v68;

      *(v1 + OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_isRunning) = 1;
      sub_274531910();

      goto LABEL_32;
    }

    v58 = v44;
    v59 = sub_274637D6C();

    swift_willThrow();
    goto LABEL_26;
  }

  v40 = OUTLINED_FUNCTION_27_6(v34, v35, v34);

  v38 = v78;
  v39 = v79;
  if (v40)
  {
    goto LABEL_19;
  }

LABEL_26:
  v60 = [v39 reference];
  if (v60)
  {
    v61 = v60;
    sub_274412734(0, &qword_280950460, 0x277D7C3C0);
    v62 = v3;
    v57 = sub_27453048C(v61, v3);
    goto LABEL_31;
  }

  sub_274638C2C();
  v70 = sub_274638D9C();
  v71 = sub_27463BBFC();
  if (os_log_type_enabled(v70, v71))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_28_9(&dword_2743F0000, v72, v73, "Asked to run, but no reference on shortcut and not a home workflow");
    OUTLINED_FUNCTION_10_9();
  }

  v26 = *(v13 + 8);
  v27 = v19;
LABEL_39:
  v28 = v38;
LABEL_5:
  v26(v27, v28);
LABEL_32:
  OUTLINED_FUNCTION_23();
}