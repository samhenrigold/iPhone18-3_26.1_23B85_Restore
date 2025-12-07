uint64_t sub_26980A864(void *a1, void (*a2)(void *, __n128), uint64_t a3)
{
  v6 = a1[4];
  if (v6 == 1)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    swift_beginAccess();

    sub_26977BBA4();
    v19 = *(a1[5] + 16);
    sub_26977BCD0(v19, v20, v21, v22);
    v23 = a1[5];
    *(v23 + 16) = v19 + 1;
    v24 = v23 + 16 * v19;
    *(v24 + 32) = sub_26980B660;
    *(v24 + 40) = v18;
    a1[5] = v23;
    return swift_endAccess();
  }

  else if (v6)
  {
    v25[0] = a1[4];

    (a2)(v25);
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    swift_beginAccess();

    sub_26977BBA4();
    v8 = *(a1[5] + 16);
    sub_26977BCD0(v8, v9, v10, v11);
    v12 = a1[5];
    *(v12 + 16) = v8 + 1;
    v13 = v12 + 16 * v8;
    *(v13 + 32) = sub_26980B660;
    *(v13 + 40) = v7;
    a1[5] = v12;
    swift_endAccess();
    v14 = a1[4];
    a1[4] = 1;
    sub_26968C9EC(v14);
    v15 = a1[2];
    v16 = swift_allocObject();
    swift_weakInit();

    v15(sub_26980B378, v16);
  }
}

uint64_t sub_26980AA48(uint64_t a1, uint64_t a2)
{
  v3 = sub_269854954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269854994();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v18 = *(result + 48);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    aBlock[4] = sub_26980B580;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2696A8DD0;
    aBlock[3] = &block_descriptor_76;
    v17 = _Block_copy(aBlock);

    sub_269854974();
    v19 = MEMORY[0x277D84F90];
    sub_26980B58C(&qword_281571918, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
    v16 = v7;
    sub_2697A1A60(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
    sub_269855174();
    v14 = v17;
    MEMORY[0x26D645EA0](0, v10, v6, v17);
    _Block_release(v14);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v16);
  }

  return result;
}

void sub_26980AD40()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_269854954();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = sub_269854994();
  OUTLINED_FUNCTION_8();
  v26 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    OUTLINED_FUNCTION_23();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v5;
    v27[4] = v3;
    v27[5] = v21;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 1107296256;
    OUTLINED_FUNCTION_4_39();
    v27[2] = v22;
    v27[3] = v1;
    v23 = _Block_copy(v27);

    sub_269854974();
    OUTLINED_FUNCTION_3_46();
    sub_26980B58C(v24, v25, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
    sub_2697A1A60(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
    sub_269855174();
    MEMORY[0x26D645EA0](0, v18, v12, v23);
    _Block_release(v23);
    (*(v8 + 8))(v12, v6);
    (*(v26 + 8))(v18, v13);
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26980AFD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;

  sub_26980B564(v4);
  swift_beginAccess();
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v10 = a2;

      v8(&v10);

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *(a1 + 40) = MEMORY[0x277D84F90];
}

uint64_t sub_26980B0AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = *(a1 + 32);
  *(a1 + 32) = a2;

  a3(v6);
  swift_beginAccess();
  v7 = *(a1 + 40);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = v7 + 40;
    do
    {
      v10 = *(v9 - 8);
      v12 = a2;

      v10(&v12);

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  *(a1 + 40) = MEMORY[0x277D84F90];
}

void sub_26980B18C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();
  [a3 setString_];
}

uint64_t sub_26980B1E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26968E5D4(&v12, v10 + 40 * a1 + 32);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26980B3D4(void (*a1)(void), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  OUTLINED_FUNCTION_5_12(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = sub_2698541D4();
  OUTLINED_FUNCTION_5_12(v10);
  v13 = *(v2 + v9);
  v14 = v2 + ((v9 + *(v11 + 80) + 8) & ~*(v11 + 80));
  v15 = *(v14 + *(v12 + 64));

  return sub_269808FA8(a1, a2, v2 + v7, v13, v14, v15);
}

uint64_t objectdestroy_6Tm()
{

  OUTLINED_FUNCTION_51_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_26980B564(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_26980B58C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26980B5D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_26980B6D0(void (*a1)(uint64_t *))
{
  v3 = sub_269853904();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];

  sub_2697F1EE0(v7);
  v9 = v8;
  v10 = *v1;
  v14 = *(v1 + 24);
  v15 = v10;

  sub_269698250(&v15, v13);
  sub_269698250(&v14, v13);
  sub_2696C9ED8(v9, v1);
  *v6 = v11;
  (*(v4 + 104))(v6, *MEMORY[0x277D60188], v3);
  a1(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26980B82C()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_26980B8C4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_27_15(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26980E0D0(result, 1, sub_26977C2B4);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324010, &qword_2698679E0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26980B9A4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_27_15(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26980E0D0(result, 1, sub_26977C4D4);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_269852EF4();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26980BAD4(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_26980E148(result, 1);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_26980BBC0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = a1;
    v49 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v6, 0);
    v9 = v49;
    v10 = sub_2698110C4(v8);
    v13 = v12;
    v14 = 0;
    v44 = v8 + 56;
    v38 = v8 + 64;
    v39 = v6;
    v40 = a2;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(v8 + 32))
      {
        v15 = v10 >> 6;
        v16 = 1 << v10;
        if ((*(v44 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v8 + 36) != v11)
        {
          goto LABEL_28;
        }

        v42 = v10;
        v43 = v11;
        v41 = v14;
        v17 = v8;
        v18 = (*(v8 + 48) + 16 * v10);
        v19 = v18[1];
        v45[0] = *v18;
        v45[1] = v19;

        sub_26980DD94(v45, a2, &v46, a3);
        if (v4)
        {
          goto LABEL_32;
        }

        v21 = v46;
        v22 = v47;
        v23 = v48;
        v49 = v9;
        v25 = *(v9 + 16);
        v24 = *(v9 + 24);
        if (v25 >= v24 >> 1)
        {
          v36 = v47;
          v37 = v46;
          result = sub_269814EEC((v24 > 1), v25 + 1, 1);
          v22 = v36;
          v21 = v37;
          v9 = v49;
        }

        *(v9 + 16) = v25 + 1;
        v26 = (v9 + 24 * v25);
        v26[4] = v21;
        v26[5] = v22;
        v26[6] = v23;
        if (v13)
        {
          goto LABEL_33;
        }

        v27 = 1 << *(v17 + 32);
        if (v42 >= v27)
        {
          goto LABEL_29;
        }

        v28 = *(v44 + 8 * v15);
        if ((v28 & v16) == 0)
        {
          goto LABEL_30;
        }

        v8 = v17;
        if (*(v17 + 36) != v43)
        {
          goto LABEL_31;
        }

        v4 = 0;
        v29 = v28 & (-2 << (v42 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v42 & 0x7FFFFFFFFFFFFFC0;
          v30 = v39;
        }

        else
        {
          v31 = v15 << 6;
          v32 = v15 + 1;
          v30 = v39;
          v33 = (v38 + 8 * v15);
          while (v32 < (v27 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              sub_26968E5C8(v42, v43, 0);
              v27 = __clz(__rbit64(v34)) + v31;
              goto LABEL_20;
            }
          }

          sub_26968E5C8(v42, v43, 0);
        }

LABEL_20:
        a2 = v40;
        v14 = v41 + 1;
        if (v41 + 1 == v30)
        {

          return v9;
        }

        v13 = 0;
        v11 = *(v8 + 36);
        v10 = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_26980BE8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1;
    v30 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v2, 0);
    v6 = sub_2698110C4(v3);
    v7 = 0;
    v8 = v3 + 56;
    v24 = v3 + 64;
    v25 = v3 + 56;
    v26 = v3;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v3 + 32))
      {
        v9 = v6 >> 6;
        if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v3 + 36) != v4)
        {
          goto LABEL_25;
        }

        v29 = v5;
        v27 = v7;
        v28 = v4;
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        v14 = *(v30 + 16);
        v13 = *(v30 + 24);

        if (v14 >= v13 >> 1)
        {
          sub_269814EEC((v13 > 1), v14 + 1, 1);
        }

        *(v30 + 16) = v14 + 1;
        v15 = (v30 + 24 * v14);
        v15[4] = v11;
        v15[5] = v12;
        v15[6] = -1;
        if (v29)
        {
          goto LABEL_29;
        }

        v8 = v25;
        v3 = v26;
        v16 = 1 << *(v26 + 32);
        if (v6 >= v16)
        {
          goto LABEL_26;
        }

        v17 = *(v25 + 8 * v9);
        if ((v17 & (1 << v6)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v26 + 36) != v28)
        {
          goto LABEL_28;
        }

        v18 = v17 & (-2 << (v6 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v9 << 6;
          v20 = v9 + 1;
          v21 = (v24 + 8 * v9);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_26968E5C8(v6, v28, 0);
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_19;
            }
          }

          sub_26968E5C8(v6, v28, 0);
        }

LABEL_19:
        v7 = v27 + 1;
        if (v27 + 1 == v2)
        {
          goto LABEL_22;
        }

        v5 = 0;
        v4 = *(v26 + 36);
        v6 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:
  }
}

uint64_t sub_26980C18C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_86();
    v9 = sub_2698553C4();
  }

  else
  {
    v9 = MEMORY[0x277D84F98];
  }

  v12 = v9;

  sub_26980FCC4(v10, 1, &v12, a2, a3, a4, a5);

  return v12;
}

uint64_t sub_26980C2CC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_86();
    v5 = sub_2698553C4();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

void sub_26980C370(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_269690530;
    v4[3] = &block_descriptor_35_0;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setFoundItemsHandler_];
  _Block_release(v3);
}

void sub_26980C41C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_26969106C;
    v4[3] = &block_descriptor_32;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setCompletionHandler_];
  _Block_release(v3);
}

id sub_26980C4EC(uint64_t a1, uint64_t a2)
{
  sub_269855204();

  MEMORY[0x26D645A60](a1, a2);
  MEMORY[0x26D645A60](0x7477646322, 0xE500000000000000);
  v4 = objc_allocWithZone(MEMORY[0x277CC3498]);
  return sub_26980E010(0x3D3D20656C746974, 0xEA00000000002220, &unk_287A3B748);
}

uint64_t sub_26980C5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0xD000000000000016;
  *(v4 + 24) = 0x800000026987AD10;
  *(v4 + 64) = xmmword_2698678A0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  return v4;
}

uint64_t sub_26980C5EC(uint64_t a1, uint64_t a2)
{
  v79 = a1;
  v69 = a2;
  sub_269854954();
  OUTLINED_FUNCTION_8();
  v75 = v2;
  v76 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v74 = v5 - v4;
  sub_269854944();
  OUTLINED_FUNCTION_8();
  v70 = v7;
  v71 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v68 = (v9 - v8);
  sub_2698549B4();
  OUTLINED_FUNCTION_8();
  v80 = v10;
  v81 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v66 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v67 = &v60 - v14;
  v63 = sub_269854F94();
  OUTLINED_FUNCTION_8();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  v21 = sub_269854F74();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  sub_269854994();
  OUTLINED_FUNCTION_8();
  v72 = v23;
  v73 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v26 = v25 - v24;
  v77 = swift_allocObject();
  v27 = MEMORY[0x277D84F90];
  *(v77 + 16) = MEMORY[0x277D84F90];
  v28 = v27;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  v61 = sub_26969329C(0, &qword_2815718E0, 0x277D85C78);
  v64 = v26;
  sub_269854974();
  aBlock[0] = v28;
  sub_26981114C(&qword_2815718E8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324D40, &unk_269862100);
  v65 = MEMORY[0x277D83970];
  sub_26971CA38(&qword_281571900, &unk_280324D40, &unk_269862100);
  sub_269855174();
  (*(v16 + 104))(v20, *MEMORY[0x277D85260], v63);
  v29 = sub_269854FB4();
  v30 = (*(v78 + 48))();
  v32 = v31;
  ObjectType = swift_getObjectType();
  v61 = ObjectType;
  v34 = swift_allocObject();
  v35 = v77;
  *(v34 + 16) = v29;
  *(v34 + 24) = v35;
  v36 = *(v32 + 16);
  v37 = v29;

  v36(sub_269811104, v34, ObjectType, v32);
  v38 = swift_allocObject();
  v39 = v62;
  v38[2] = v37;
  v38[3] = v39;
  v41 = v78;
  v40 = v79;
  v38[4] = v78;
  v38[5] = v40;
  v42 = v69;
  v38[6] = v69;
  v38[7] = v35;
  v43 = *(v32 + 40);
  v63 = v37;

  v44 = v61;
  v43(sub_26981110C, v38, v61, v32);
  v45 = v30;
  (*(v32 + 56))(v44, v32);
  v46 = v66;
  sub_2698549A4();
  v47 = v41;
  v48 = v68;
  *v68 = *(v41 + 40);
  v50 = v70;
  v49 = v71;
  (*(v70 + 104))(v48, *MEMORY[0x277D85178], v71);
  v51 = v67;
  MEMORY[0x26D6458C0](v46, v48);
  (*(v50 + 8))(v48, v49);
  v52 = *(v81 + 8);
  v81 += 8;
  v71 = v52;
  v52(v46, v80);
  v53 = swift_allocObject();
  v53[2] = v39;
  v53[3] = v45;
  v53[4] = v32;
  v53[5] = v47;
  v53[6] = v79;
  v53[7] = v42;
  aBlock[4] = sub_26981111C;
  aBlock[5] = v53;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_26;
  v54 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  v55 = v64;
  sub_269854974();
  v82 = MEMORY[0x277D84F90];
  sub_26981114C(&qword_281571918, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_26971CA38(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
  v57 = v74;
  v56 = v75;
  sub_269855174();
  v58 = v63;
  MEMORY[0x26D645E80](v51, v55, v57, v54);
  _Block_release(v54);

  swift_unknownObjectRelease();
  (*(v76 + 8))(v57, v56);
  (*(v72 + 8))(v55, v73);
  v71(v51, v80);
}

uint64_t sub_26980CE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v5 = sub_269854954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_269854994();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a1;
  aBlock[4] = sub_2698111C0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_29_1;
  v13 = _Block_copy(aBlock);

  sub_269854974();
  v18 = MEMORY[0x277D84F90];
  sub_26981114C(&qword_281571918, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_26971CA38(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
  sub_269855174();
  MEMORY[0x26D645EA0](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);
}

uint64_t sub_26980D0E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_26980BAD4(v2, sub_26975004C, sub_269810A94);
  return swift_endAccess();
}

uint64_t sub_26980D160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a2;
  v13 = sub_269854954();
  v24 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_269854994();
  v16 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a1;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = a7;
  aBlock[4] = sub_269811190;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_23_1;
  v20 = _Block_copy(aBlock);

  v21 = a1;

  sub_269854974();
  v26 = MEMORY[0x277D84F90];
  sub_26981114C(&qword_281571918, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_26971CA38(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
  sub_269855174();
  MEMORY[0x26D645EA0](0, v18, v15, v20);
  _Block_release(v20);
  (*(v24 + 8))(v15, v13);
  (*(v16 + 8))(v18, v23);
}

uint64_t sub_26980D46C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  v44 = a3;
  v45 = a5;
  v9 = sub_269853904();
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_2698548D4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  result = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v43 = a4;
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (a2)
    {
      v20 = a2;
      if (qword_2803226F0 != -1)
      {
        swift_once();
      }

      v42 = v9;
      v21 = __swift_project_value_buffer(v12, qword_28033D940);
      (*(v13 + 16))(v18, v21, v12);
      v22 = a2;
      v23 = sub_2698548B4();
      v24 = sub_269854F24();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v48[0] = v41;
        *v25 = 136315138;
        v47 = a2;
        v26 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
        v27 = sub_269854AE4();
        v29 = sub_26974F520(v27, v28, v48);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_269684000, v23, v24, "SpotlightRelativeCountSignal error %s", v25, 0xCu);
        v30 = v41;
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x26D647170](v30, -1, -1);
        MEMORY[0x26D647170](v25, -1, -1);
      }

      (*(v13 + 8))(v18, v12);
      v31 = v44;
      v32 = *(v44 + 32);

      sub_26980BE8C(v32, v31);
      *v11 = sub_26980C2CC(v33, &qword_2803255E8, &unk_269866810, sub_26980F6FC);
      v34 = v46;
      v9 = v42;
      (*(v46 + 104))(v11, *MEMORY[0x277D60188], v42);
      v43(v11);
    }

    else
    {
      if (qword_2803226F0 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v12, qword_28033D940);
      (*(v13 + 16))(v16, v35, v12);

      v36 = sub_2698548B4();
      v37 = sub_269854F14();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        swift_beginAccess();
        *(v38 + 4) = sub_26975004C();

        _os_log_impl(&dword_269684000, v36, v37, "SpotlightRelativeCountSignal completionHandler, gathered %ld items", v38, 0xCu);
        MEMORY[0x26D647170](v38, -1, -1);
      }

      else
      {
      }

      (*(v13 + 8))(v16, v12);
      swift_beginAccess();

      v40 = sub_26980DD1C(v39);

      *v11 = v40;
      v34 = v46;
      (*(v46 + 104))(v11, *MEMORY[0x277D60188], v9);
      v43(v11);
    }

    return (*(v34 + 8))(v11, v9);
  }

  return result;
}

uint64_t sub_26980D9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v27 = a4;
  v28 = a6;
  v9 = sub_269853904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_2698548D4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v26 = a5;
    swift_beginAccess();
    *(a1 + 16) = 1;
    ObjectType = swift_getObjectType();
    (*(a3 + 64))(ObjectType, a3);
    if (qword_2803226F0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v13, qword_28033D940);
    (*(v14 + 16))(v16, v19, v13);
    v20 = sub_2698548B4();
    v21 = sub_269854F24();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_269684000, v20, v21, "SpotlightRelativeCountSignal timeout", v22, 2u);
      MEMORY[0x26D647170](v22, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
    v23 = v27;
    v24 = *(v27 + 32);

    sub_26980BE8C(v24, v23);
    *v12 = sub_26980C2CC(v25, &qword_2803255E8, &unk_269866810, sub_26980F6FC);
    (*(v10 + 104))(v12, *MEMORY[0x277D60188], v9);
    v26(v12);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_26980DD1C(uint64_t a1)
{
  v3 = sub_26975004C();
  v4 = *(v1 + 32);

  sub_26980BBC0(v4, a1, v3);
  OUTLINED_FUNCTION_22_19();
  return sub_26980C2CC(v5, v6, v7, v8);
}

void sub_26980DD94(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = sub_26975004C();
  v9 = 0;
  v22 = v6;
  while (v8 != v9)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D646120](v9, a2);
    }

    else
    {
      if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v12 = sub_269810A30(v10);
    if (!v13)
    {

      goto LABEL_18;
    }

    if (v12 == v6 && v13 == v7)
    {

LABEL_16:
      sub_269855284();
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      goto LABEL_17;
    }

    v15 = sub_269855584();

    if (v15)
    {
      goto LABEL_16;
    }

LABEL_17:
    v6 = v22;
LABEL_18:
    ++v9;
  }

  v16 = sub_26975004C();

  v17 = v16 * 100.0 / a4;
  v18 = round(v17);
  v19 = v18 >= 9.22337204e18 || v18 <= -9.22337204e18;
  v20 = llround(v17);
  if (v19)
  {
    v20 = 0;
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v20;
}

uint64_t sub_26980DF64()
{

  return v0;
}

uint64_t sub_26980DF94()
{
  sub_26980DF64();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

id sub_26980E010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_269854A64();

  if (a3)
  {
    v6 = sub_269854CA4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithQueryString:v5 attributes:v6];

  return v7;
}

uint64_t sub_26980E0D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_26980E148(uint64_t a1, char a2)
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

  sub_269855324();
LABEL_9:
  result = sub_269855234();
  *v2 = result;
  return result;
}

void sub_26980E1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_30_17();
  OUTLINED_FUNCTION_3_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803255E8, &unk_269866810);
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_23_19();
  if (!v16)
  {
LABEL_27:

    *v12 = v14;
    OUTLINED_FUNCTION_31_15();
    return;
  }

  v43 = v13;
  v17 = 0;
  v18 = v13;
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_36();
  if (!v15)
  {
LABEL_4:
    v19 = v17;
    while (1)
    {
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v17 >= v12)
      {
        break;
      }

      OUTLINED_FUNCTION_26_18();
      if (v20)
      {
        OUTLINED_FUNCTION_10_30();
        v15 = v22 & v21;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      OUTLINED_FUNCTION_9_35();
      if (v39 != v40)
      {
        OUTLINED_FUNCTION_15_29(v38);
      }

      else
      {
        v41 = OUTLINED_FUNCTION_14_30();
        sub_26980F698(v41, v42, v18);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_30();
LABEL_9:
    OUTLINED_FUNCTION_20_17();
    v28 = *(v27 + 8 * v26);
    if ((a12 & 1) == 0)
    {
    }

    v29 = OUTLINED_FUNCTION_33_15(v23, v24, v25);
    OUTLINED_FUNCTION_28_16(v29, v30, v31);
    sub_2698556C4();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_18_19();
    if (v32)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_19:
    OUTLINED_FUNCTION_2_40(v33);
    OUTLINED_FUNCTION_24_19(v35);
    *(v37 + 8 * v36) = v28;
    OUTLINED_FUNCTION_13_28();
    v13 = v43;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v32)
    {
      if (v34)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_17_23();
    if (!v32)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_26980E3B0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258D8, &unk_269867A30);
  sub_2698553A4();
  OUTLINED_FUNCTION_23_19();
  if (!v5)
  {
LABEL_29:

    *v1 = v3;
    return;
  }

  v6 = 0;
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_36();
  if (!v4)
  {
LABEL_4:
    v8 = v6;
    while (1)
    {
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v1)
      {
        break;
      }

      OUTLINED_FUNCTION_26_18();
      if (v9)
      {
        OUTLINED_FUNCTION_10_30();
        v4 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v3)
    {
      OUTLINED_FUNCTION_9_35();
      if (v21 != v22)
      {
        OUTLINED_FUNCTION_15_29(v20);
      }

      else
      {
        v23 = OUTLINED_FUNCTION_14_30();
        sub_26980F698(v23, v24, v2);
      }

      v2[2] = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_30();
LABEL_9:
    v12 = v7 | (v6 << 6);
    v13 = *(v2[7] + 8 * v12);
    v25 = *(v2[6] + 16 * v12);
    v14 = *(v2[6] + 16 * v12 + 8);
    if ((v3 & 1) == 0)
    {
    }

    sub_269855674();
    sub_269855694();
    if (v14)
    {
      sub_269854B34();
    }

    sub_2698556C4();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_18_19();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_21:
    OUTLINED_FUNCTION_2_40(v16);
    *(v19 + 16 * v18) = v25;
    *(*(v3 + 56) + 8 * v18) = v13;
    OUTLINED_FUNCTION_13_28();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v15)
    {
      if (v17)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_17_23();
    if (!v15)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_26980E594(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = a2;
  v6 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B10, &qword_26985C1F0);
  sub_2698553A4();
  OUTLINED_FUNCTION_23_19();
  if (!v7)
  {
LABEL_29:

LABEL_30:
    *v4 = v3;
    return;
  }

  v38 = v2;
  v8 = 0;
  OUTLINED_FUNCTION_0_59();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v3 + 64;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v16;
      if (v6[v8])
      {
        OUTLINED_FUNCTION_10_30();
        v11 = v18 & v17;
        goto LABEL_9;
      }
    }

    if ((v5 & 1) == 0)
    {

      v4 = v38;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_9_35();
    v4 = v38;
    if (v34 != v35)
    {
      OUTLINED_FUNCTION_15_29(v33);
    }

    else
    {
      v36 = OUTLINED_FUNCTION_14_30();
      sub_26980F698(v36, v37, v6);
    }

    v6[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v19 = v15 | (v8 << 6);
    v20 = *(v6[6] + 8 * v19);
    v21 = *(v6[7] + 8 * v19);
    if ((v5 & 1) == 0)
    {
      v22 = v20;
    }

    sub_269855054();
    OUTLINED_FUNCTION_1_52();
    if (((v25 << v24) & ~*(v14 + 8 * v23)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_21:
    OUTLINED_FUNCTION_7_45();
    *(v14 + v30) |= v31;
    *(*(v3 + 48) + 8 * v32) = v20;
    *(*(v3 + 56) + 8 * v32) = v21;
    OUTLINED_FUNCTION_13_28();
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v29)
    {
      if (v27)
      {
        break;
      }
    }

    if (v26 == v28)
    {
      v26 = 0;
    }

    if (*(v14 + 8 * v26) != -1)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_26980E770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_30_17();
  OUTLINED_FUNCTION_3_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258E8, &qword_269867A40);
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_23_19();
  if (!v16)
  {
LABEL_29:

    *v12 = v14;
    OUTLINED_FUNCTION_31_15();
    return;
  }

  v17 = 0;
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_36();
  if (!v15)
  {
LABEL_4:
    v22 = v17;
    while (1)
    {
      v17 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v17 >= v12)
      {
        break;
      }

      OUTLINED_FUNCTION_26_18();
      if (v23)
      {
        OUTLINED_FUNCTION_10_30();
        v15 = v25 & v24;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      OUTLINED_FUNCTION_9_35();
      if (v35 != v36)
      {
        OUTLINED_FUNCTION_15_29(v34);
      }

      else
      {
        v37 = OUTLINED_FUNCTION_14_30();
        sub_26980F698(v37, v38, v13);
      }

      v13[2] = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_30();
LABEL_9:
    v26 = v21 | (v17 << 6);
    v27 = *(v13[6] + v26);
    v28 = *(v13[7] + 8 * v26);
    if ((a12 & 1) == 0)
    {
    }

    OUTLINED_FUNCTION_33_15(v18, v19, v20);
    sub_269855694();
    if (v27 != 8)
    {
      MEMORY[0x26D646580](v27);
    }

    sub_2698556C4();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_18_19();
    if (v29)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_21:
    OUTLINED_FUNCTION_2_40(v30);
    *(v33 + v32) = v27;
    *(*(v14 + 56) + 8 * v32) = v28;
    OUTLINED_FUNCTION_13_28();
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_17_23();
    if (!v29)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_26980E904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258B0, &unk_269867A00);
  v41 = v4;
  v6 = sub_2698553A4();
  if (!*(v5 + 16))
  {
LABEL_29:

LABEL_30:
    *v3 = v6;
    return;
  }

  v40 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_0_59();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 64;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v16;
      if (*(v8 + 8 * v7))
      {
        OUTLINED_FUNCTION_10_30();
        v11 = v18 & v17;
        goto LABEL_9;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_30;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      v38 = OUTLINED_FUNCTION_14_30();
      sub_26980F698(v38, v39, v8);
    }

    else
    {
      OUTLINED_FUNCTION_15_29(v37);
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v19 = v15 | (v7 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 16 * v19);
    v24 = v23[1];
    v42 = *v23;
    if ((v41 & 1) == 0)
    {
    }

    sub_269855674();
    sub_269854B34();
    sub_2698556C4();
    OUTLINED_FUNCTION_1_52();
    if (((v27 << v26) & ~*(v14 + 8 * v25)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_21:
    OUTLINED_FUNCTION_7_45();
    *(v14 + v32) |= v33;
    v35 = (*(v6 + 48) + 16 * v34);
    *v35 = v21;
    v35[1] = v22;
    v36 = (*(v6 + 56) + 16 * v34);
    *v36 = v42;
    v36[1] = v24;
    OUTLINED_FUNCTION_13_28();
    v5 = v40;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v31)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    if (*(v14 + 8 * v28) != -1)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_26980EB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_30_17();
  OUTLINED_FUNCTION_3_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_23_19();
  if (!v18)
  {
LABEL_27:

    *v12 = v14;
    OUTLINED_FUNCTION_31_15();
    return;
  }

  v45 = v13;
  v19 = 0;
  v20 = v13;
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_36();
  if (!v15)
  {
LABEL_4:
    v21 = v19;
    while (1)
    {
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v19 >= v12)
      {
        break;
      }

      OUTLINED_FUNCTION_26_18();
      if (v22)
      {
        OUTLINED_FUNCTION_10_30();
        v15 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      OUTLINED_FUNCTION_9_35();
      if (v41 != v42)
      {
        OUTLINED_FUNCTION_15_29(v40);
      }

      else
      {
        v43 = OUTLINED_FUNCTION_14_30();
        sub_26980F698(v43, v44, v20);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_30();
LABEL_9:
    OUTLINED_FUNCTION_20_17();
    v30 = *(v29 + 8 * v28);
    if ((a12 & 1) == 0)
    {

      v25 = v30;
    }

    v31 = OUTLINED_FUNCTION_33_15(v25, v26, v27);
    OUTLINED_FUNCTION_28_16(v31, v32, v33);
    sub_2698556C4();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_18_19();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_19:
    OUTLINED_FUNCTION_2_40(v35);
    OUTLINED_FUNCTION_24_19(v37);
    *(v39 + 8 * v38) = v30;
    OUTLINED_FUNCTION_13_28();
    v13 = v45;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v34)
    {
      if (v36)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_17_23();
    if (!v34)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_26980EC98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v57 = a3(0);
  OUTLINED_FUNCTION_8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v56 = &v49 - v13;
  v14 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v54 = v9;
  v15 = sub_2698553A4();
  v16 = v15;
  if (!*(v14 + 16))
  {
LABEL_33:

LABEL_34:
    *v8 = v16;
    return;
  }

  v17 = 0;
  v18 = (v14 + 64);
  v19 = 1 << *(v14 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v14 + 64);
  v22 = (v19 + 63) >> 6;
  v50 = v5;
  v51 = (v11 + 16);
  v52 = v14;
  v53 = v11;
  v55 = (v11 + 32);
  v23 = v15 + 64;
  if (!v21)
  {
LABEL_7:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      ++v25;
      if (v18[v17])
      {
        OUTLINED_FUNCTION_10_30();
        v21 = v27 & v26;
        goto LABEL_12;
      }
    }

    if ((v54 & 1) == 0)
    {

      v8 = v50;
      goto LABEL_34;
    }

    v46 = 1 << *(v14 + 32);
    v8 = v50;
    if (v46 >= 64)
    {
      v47 = OUTLINED_FUNCTION_14_30();
      sub_26980F698(v47, v48, v18);
    }

    else
    {
      *v18 = -1 << v46;
    }

    *(v14 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_12:
    v28 = v24 | (v17 << 6);
    v29 = *(v14 + 56);
    v30 = (*(v14 + 48) + 16 * v28);
    v32 = *v30;
    v31 = v30[1];
    v33 = *(v53 + 72);
    v34 = v29 + v33 * v28;
    if (v54)
    {
      (*v55)(v56, v34, v57);
    }

    else
    {
      (*v51)(v56, v34, v57);
    }

    sub_269855674();
    sub_269854B34();
    sub_2698556C4();
    OUTLINED_FUNCTION_1_52();
    if (((v37 << v36) & ~*(v23 + 8 * v35)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_25:
    OUTLINED_FUNCTION_7_45();
    *(v23 + v42) |= v43;
    v45 = (*(v16 + 48) + 16 * v44);
    *v45 = v32;
    v45[1] = v31;
    (*v55)((*(v16 + 56) + v33 * v44), v56, v57);
    OUTLINED_FUNCTION_13_28();
    v14 = v52;
    if (!v21)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v41)
    {
      if (v39)
      {
        break;
      }
    }

    if (v38 == v40)
    {
      v38 = 0;
    }

    if (*(v23 + 8 * v38) != -1)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
}

void sub_26980EFB0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325830, &unk_269867740);
  OUTLINED_FUNCTION_16_25();
  OUTLINED_FUNCTION_23_19();
  if (!v5)
  {
LABEL_27:

    *v1 = v3;
    return;
  }

  v6 = 0;
  OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_11_36();
  if (!v4)
  {
LABEL_4:
    v7 = v6;
    while (1)
    {
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v1)
      {
        break;
      }

      OUTLINED_FUNCTION_26_18();
      if (v8)
      {
        OUTLINED_FUNCTION_10_30();
        v4 = v10 & v9;
        goto LABEL_9;
      }
    }

    if (v31)
    {
      OUTLINED_FUNCTION_9_35();
      if (v27 != v28)
      {
        OUTLINED_FUNCTION_15_29(v26);
      }

      else
      {
        v29 = OUTLINED_FUNCTION_14_30();
        sub_26980F698(v29, v30, v2);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_30();
LABEL_9:
    OUTLINED_FUNCTION_20_17();
    v16 = *(v15 + 8 * v14);
    if ((v31 & 1) == 0)
    {
    }

    v17 = OUTLINED_FUNCTION_33_15(v11, v12, v13);
    OUTLINED_FUNCTION_28_16(v17, v18, v19);
    sub_2698556C4();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_18_19();
    if (v20)
    {
      break;
    }

    OUTLINED_FUNCTION_6_48();
LABEL_19:
    OUTLINED_FUNCTION_2_40(v21);
    OUTLINED_FUNCTION_24_19(v23);
    *(v25 + 8 * v24) = v16;
    OUTLINED_FUNCTION_13_28();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_41();
  while (1)
  {
    OUTLINED_FUNCTION_21_20();
    if (v20)
    {
      if (v22)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_17_23();
    if (!v20)
    {
      OUTLINED_FUNCTION_4_40();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_26980F130(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325890, &qword_2698679D0);
  v34 = v4;
  result = sub_2698553A4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
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
        goto LABEL_34;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_26980F698(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_269855674();
    sub_269854B34();
    result = sub_2698556C4();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_26980F3D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258F0, &qword_269867A48);
  v36 = v4;
  result = sub_2698553A4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
        goto LABEL_34;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_26980F698(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 24 * v18);
    v23 = v22[1];
    v37 = v22[2];
    v38 = *v22;
    if ((v36 & 1) == 0)
    {
    }

    sub_269855674();
    sub_269854B34();
    result = sub_2698556C4();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = (*(v7 + 56) + 24 * v27);
    *v33 = v38;
    v33[1] = v23;
    v33[2] = v37;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_26980F698(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26985C790;
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

void sub_26980F6FC(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v34 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v34 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2698555F4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v17 = sub_26973CEF8(v7, v6);
    v18 = v9[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v10;
    if (v9[3] < v20)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280326500, &unk_2698577E0);
      sub_2698552F4();
      if (v21)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v24 = *a3;
    *(*a3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v25 = (v24[6] + 16 * v17);
    *v25 = v7;
    v25[1] = v6;
    *(v24[7] + 8 * v17) = v8;
    v26 = v24[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_20;
    }

    v24[2] = v28;
    ++v4;
    a2 = 1;
  }

  sub_26980E1E8(v20, a2 & 1, v11, v12, v13, v14, v15, v16, v31, v32, *v33, v33[4]);
  v22 = sub_26973CEF8(v7, v6);
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_21;
  }

  v17 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v29 = swift_allocError();
  swift_willThrow();
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_269855204();
  MEMORY[0x26D645A60](0xD00000000000001BLL, 0x8000000269880F20);
  sub_2698552D4();
  MEMORY[0x26D645A60](39, 0xE100000000000000);
  sub_269855354();
  __break(1u);
}

void sub_26980F9D0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v27 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2698555F4();
      __break(1u);
      goto LABEL_22;
    }

    v29 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_26973CEF8(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803264D0, &qword_26986AC80);
      sub_2698552F4();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    v21 = (v19[7] + 16 * v12);
    *v21 = v9;
    v21[1] = v8;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v19[2] = v24;
    v4 = v29 + 1;
    a2 = 1;
  }

  sub_26980E904(v15, a2 & 1);
  v17 = sub_26973CEF8(v7, v6);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_269855204();
  MEMORY[0x26D645A60](0xD00000000000001BLL, 0x8000000269880F20);
  sub_2698552D4();
  MEMORY[0x26D645A60](39, 0xE100000000000000);
  sub_269855354();
  __break(1u);
}

void sub_26980FCC4(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v36 = a6;
  v8 = 0;
  v40 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v40 == v8)
    {

      return;
    }

    if (v8 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2698555F4();
      __break(1u);
      goto LABEL_22;
    }

    v10 = *(i - 2);
    v11 = *(i - 1);
    v12 = *i;
    v13 = *a3;

    v14 = v12;
    v20 = sub_26973CEF8(v10, v11);
    v21 = v13[2];
    v22 = (v15 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_19;
    }

    v24 = v15;
    if (v13[3] < v23)
    {
      break;
    }

    if (a2)
    {
      if (v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v36, a7);
      sub_2698552F4();
      if (v24)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v27 = *a3;
    *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v28 = (v27[6] + 16 * v20);
    *v28 = v10;
    v28[1] = v11;
    *(v27[7] + 8 * v20) = v14;
    v29 = v27[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_20;
    }

    v27[2] = v31;
    ++v8;
    a2 = 1;
  }

  sub_26980EB38(v23, a2 & 1, a4, a5, v16, v17, v18, v19, v34, v35, v36, SBYTE4(v36));
  v25 = sub_26973CEF8(v10, v11);
  if ((v24 & 1) != (v26 & 1))
  {
    goto LABEL_21;
  }

  v20 = v25;
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v32 = swift_allocError();
  swift_willThrow();
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_269855204();
  MEMORY[0x26D645A60](0xD00000000000001BLL, 0x8000000269880F20);
  sub_2698552D4();
  MEMORY[0x26D645A60](39, 0xE100000000000000);
  sub_269855354();
  __break(1u);
}

void sub_26980FFA8(uint64_t a1, char a2, void *a3)
{
  v48 = a3;
  v6 = sub_269854204();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324298, &unk_2698679F0);
  v10 = MEMORY[0x28223BE20](v9);
  v45 = (v38 - v12);
  v44 = *(a1 + 16);
  if (!v44)
  {
LABEL_13:

    return;
  }

  v38[1] = v3;
  v39 = a1;
  v13 = 0;
  v43 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v10 + 48);
  v41 = v7;
  v42 = v14;
  v46 = (v7 + 32);
  v40 = v6;
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2698555F4();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v11;
    v16 = v45;
    sub_2698111C8(v43 + *(v11 + 72) * v13, v45);
    v18 = v16[1];
    v51 = *v16;
    v17 = v51;
    v52 = v18;
    v19 = *v46;
    (*v46)(v47, v16 + v42, v6);
    v20 = *v48;
    v22 = sub_26973CEF8(v17, v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258A8, &unk_26986ACD0);
      sub_2698552F4();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = v47;
    v30 = *v48;
    *(*v48 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v31 = (v30[6] + 16 * v22);
    *v31 = v17;
    v31[1] = v18;
    v32 = v30[7] + *(v41 + 72) * v22;
    v6 = v40;
    v19(v32, v29, v40);
    v33 = v30[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_20;
    }

    ++v13;
    v30[2] = v35;
    a2 = 1;
    a1 = v39;
    v11 = v15;
    if (v44 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_26980EC98(v25, a2 & 1, MEMORY[0x277D5FF48], &qword_2803258A0, &qword_2698679E8);
  v27 = sub_26973CEF8(v17, v18);
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v36 = swift_allocError();
  swift_willThrow();
  v53 = v36;
  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v41 + 8))(v47, v40);

    return;
  }

LABEL_22:
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_269855204();
  MEMORY[0x26D645A60](0xD00000000000001BLL, 0x8000000269880F20);
  sub_2698552D4();
  MEMORY[0x26D645A60](39, 0xE100000000000000);
  sub_269855354();
  __break(1u);
}

void sub_269810444(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2698555F4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_26973CEF8(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325898, &qword_2698679D8);
      sub_2698552F4();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_26980F130(v14, a2 & 1);
  v16 = sub_26973CEF8(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_269855204();
  MEMORY[0x26D645A60](0xD00000000000001BLL, 0x8000000269880F20);
  sub_2698552D4();
  MEMORY[0x26D645A60](39, 0xE100000000000000);
  sub_269855354();
  __break(1u);
}

void sub_269810728(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 64); ; i += 5)
  {
    if (v28 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2698555F4();
      __break(1u);
      goto LABEL_22;
    }

    v30 = v4;
    v7 = *(i - 4);
    v6 = *(i - 3);
    v9 = *(i - 2);
    v8 = *(i - 1);
    v10 = *i;
    v11 = *a3;

    v13 = sub_26973CEF8(v7, v6);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_19;
    }

    v17 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (a2)
    {
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258F8, &qword_269867A50);
      sub_2698552F4();
      if (v17)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v21 = (v20[6] + 16 * v13);
    *v21 = v7;
    v21[1] = v6;
    v22 = (v20[7] + 24 * v13);
    *v22 = v9;
    v22[1] = v8;
    v22[2] = v10;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v20[2] = v25;
    v4 = v30 + 1;
    a2 = 1;
  }

  sub_26980F3D4(v16, a2 & 1);
  v18 = sub_26973CEF8(v7, v6);
  if ((v17 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v13 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_269855204();
  MEMORY[0x26D645A60](0xD00000000000001BLL, 0x8000000269880F20);
  sub_2698552D4();
  MEMORY[0x26D645A60](39, 0xE100000000000000);
  sub_269855354();
  __break(1u);
}

uint64_t sub_269810A30(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269854A94();

  return v3;
}

uint64_t sub_269810A94(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_269855324();
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
    result = sub_26975004C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_26969329C(0, &qword_2803228C8, 0x277CC34B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_26971CA38(&qword_280325878, &qword_280325870, &unk_2698679B0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325870, &unk_2698679B0);
          v9 = sub_26977DD6C(v12, i, a3);
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

uint64_t sub_269810C2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_269855324();
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
    result = sub_26975004C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_269854664();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_26971CA38(&qword_2803258D0, &qword_2803258C8, &unk_269867A20);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258C8, &unk_269867A20);
          v9 = sub_26977DD6C(v12, i, a3);
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

uint64_t sub_269810DB4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_269855324();
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
    result = sub_26975004C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for Person();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_26971CA38(&qword_2803258C0, &qword_2803258B8, &unk_269867A10);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803258B8, &unk_269867A10);
          v9 = sub_26977DDC8(v12, i, a3);
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

uint64_t sub_269810F3C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_269855324();
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
    result = sub_26975004C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for Content();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_26971CA38(&qword_2803258E0, &qword_280323A40, &qword_26985BB90);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A40, &qword_26985BB90);
          v9 = sub_26977DD6C(v12, i, a3);
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

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26981114C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_86();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2698111C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324298, &unk_2698679F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_16_25()
{

  return sub_2698553A4();
}

void OUTLINED_FUNCTION_24_19(uint64_t a1@<X8>)
{
  v4 = (v1 + 16 * a1);
  *v4 = v2;
  v4[1] = v3;
}

uint64_t OUTLINED_FUNCTION_28_16(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_269854B34();
}

uint64_t OUTLINED_FUNCTION_32_12(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FEBD8](v2, a2, 22, 1, 490);
}

void *OUTLINED_FUNCTION_33_15(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_269855674();
}

uint64_t type metadata accessor for StaticSignal(uint64_t a1)
{
  result = qword_280325918;
  if (!qword_280325918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269811574(uint64_t a1)
{
  result = sub_269853904();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26981164C(void (*a1)(uint64_t *__return_ptr, char *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a1;
  v51 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D80, &unk_2698582F0);
  v6 = MEMORY[0x28223BE20](v49);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v43 - v9;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v60 = MEMORY[0x277D84F90];
  sub_269814E64(0, v10, 0);
  v11 = v60;
  v14 = sub_2697F1D9C();
  v15 = 0;
  v16 = a3 + 64;
  v44 = v12;
  v45 = v10;
  v43 = a3 + 72;
  v46 = a3 + 64;
  v47 = a3;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a3 + 32))
  {
    if ((*(v16 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_24;
    }

    if (*(a3 + 36) != v12)
    {
      goto LABEL_25;
    }

    v55 = 1 << v14;
    v56 = v14 >> 6;
    v53 = v15;
    v54 = v12;
    v52 = v13;
    v57 = v4;
    v58 = v11;
    v17 = v49;
    v18 = *(v49 + 48);
    v19 = *(a3 + 56);
    v20 = (*(a3 + 48) + 16 * v14);
    v21 = *v20;
    v22 = v20[1];
    v23 = sub_269854204();
    OUTLINED_FUNCTION_8();
    v25 = v24;
    v27 = v19 + *(v26 + 72) * v14;
    v28 = v48;
    (*(v24 + 16))(&v48[v18], v27, v23);
    *v8 = v21;
    *(v8 + 1) = v22;
    (*(v25 + 32))(&v8[*(v17 + 48)], &v28[v18], v23);

    v29 = v57;
    (v50)(&v59, v8);
    if (v29)
    {
      goto LABEL_29;
    }

    v4 = 0;
    sub_269698048(v8, &unk_280322D80, &unk_2698582F0);
    v30 = v59;
    v11 = v58;
    v60 = v58;
    v32 = *(v58 + 16);
    v31 = *(v58 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_269814E64(v31 > 1, v32 + 1, 1);
      v11 = v60;
    }

    *(v11 + 16) = v32 + 1;
    *(v11 + 8 * v32 + 32) = v30;
    a3 = v47;
    v33 = 1 << *(v47 + 32);
    if (v14 >= v33)
    {
      goto LABEL_26;
    }

    v16 = v46;
    v34 = *(v46 + 8 * v56);
    if ((v34 & v55) == 0)
    {
      goto LABEL_27;
    }

    if (*(v47 + 36) != v54)
    {
      goto LABEL_28;
    }

    v35 = v34 & (-2 << (v14 & 0x3F));
    if (v35)
    {
      v33 = __clz(__rbit64(v35)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v36 = v53;
    }

    else
    {
      v37 = v56 << 6;
      v38 = v56 + 1;
      v39 = (v43 + 8 * v56);
      while (v38 < (v33 + 63) >> 6)
      {
        v41 = *v39++;
        v40 = v41;
        v37 += 64;
        ++v38;
        if (v41)
        {
          sub_26968E5C8(v14, v54, v52 & 1);
          v33 = __clz(__rbit64(v40)) + v37;
          goto LABEL_20;
        }
      }

      sub_26968E5C8(v14, v54, v52 & 1);
LABEL_20:
      v36 = v53;
    }

    v13 = 0;
    v15 = v36 + 1;
    v14 = v33;
    v12 = v44;
    if (v15 == v45)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_269698048(v8, &unk_280322D80, &unk_2698582F0);

  __break(1u);
  return result;
}

uint64_t sub_269811A10(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = a3;
    v50 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v5, 0);
    v9 = sub_269811248();
    result = v50;
    v11 = v10;
    v12 = 0;
    v13 = v7 + 56;
    v39 = v7 + 64;
    v40 = v5;
    v41 = v7;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v7 + 32))
      {
        v14 = v9 >> 6;
        v15 = 1 << v9;
        if ((*(v13 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v7 + 36) != v8)
        {
          goto LABEL_26;
        }

        v44 = v9;
        v45 = v8;
        v16 = v13;
        v43 = v12;
        v17 = result;
        v18 = (*(v7 + 48) + 16 * v9);
        v19 = v18[1];
        v46[0] = *v18;
        v46[1] = v19;

        (a1)(&v47, v46);
        if (v4)
        {
          goto LABEL_30;
        }

        v4 = 0;

        v20 = v47;
        v21 = v48;
        v22 = v49;
        result = v17;
        v50 = v17;
        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        if (v24 >= v23 >> 1)
        {
          v37 = v49;
          v38 = v47;
          v36 = v48;
          sub_269814EEC((v23 > 1), v24 + 1, 1);
          v22 = v37;
          v20 = v38;
          v21 = v36;
          result = v50;
        }

        *(result + 16) = v24 + 1;
        v25 = (result + 24 * v24);
        v25[4] = v20;
        v25[5] = v21;
        v25[6] = v22;
        if (v11)
        {
          goto LABEL_31;
        }

        v13 = v16;
        v7 = v41;
        v26 = 1 << *(v41 + 32);
        if (v44 >= v26)
        {
          goto LABEL_27;
        }

        v27 = *(v16 + 8 * v14);
        if ((v27 & v15) == 0)
        {
          goto LABEL_28;
        }

        if (*(v41 + 36) != v45)
        {
          goto LABEL_29;
        }

        v28 = v27 & (-2 << (v44 & 0x3F));
        if (v28)
        {
          v26 = __clz(__rbit64(v28)) | v44 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v29 = v14 << 6;
          v30 = v14 + 1;
          v31 = (v39 + 8 * v14);
          while (v30 < (v26 + 63) >> 6)
          {
            v33 = *v31++;
            v32 = v33;
            v29 += 64;
            ++v30;
            if (v33)
            {
              v34 = result;
              sub_26968E5C8(v44, v45, 0);
              result = v34;
              v26 = __clz(__rbit64(v32)) + v29;
              goto LABEL_20;
            }
          }

          v35 = result;
          sub_26968E5C8(v44, v45, 0);
          result = v35;
        }

LABEL_20:
        v12 = v43 + 1;
        if (v43 + 1 == v40)
        {
          return result;
        }

        v11 = 0;
        v8 = *(v41 + 36);
        v9 = v26;
        if (v26 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

void *sub_269811CC8()
{
  result = sub_269811CE8();
  off_280325928 = result;
  return result;
}

uint64_t sub_269811CE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325930, &unk_269867C10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269860B70;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000026987B880;
  *(inited + 48) = xmmword_269867AF0;
  *(inited + 64) = 0x800000026987B8E0;
  *(inited + 72) = xmmword_269867B00;
  *(inited + 88) = 0x800000026987B900;
  *(inited + 96) = xmmword_269867B10;
  *(inited + 112) = 0x800000026987B8A0;
  *(inited + 120) = xmmword_269867B20;
  *(inited + 136) = 0x800000026987B8C0;
  *(inited + 144) = xmmword_269867B30;
  *(inited + 160) = 0x800000026987B820;
  *(inited + 168) = xmmword_269867B40;
  *(inited + 184) = 0x8000000269880F60;
  *(inited + 192) = 64;
  v31 = MEMORY[0x277D84F90];
  sub_269815460(0, 7, 0);
  v1 = v31;
  v3 = *(inited + 32);
  v2 = *(inited + 40);
  v4 = *(inited + 48);
  v5 = *(v31 + 16);
  v6 = *(v31 + 24);
  v7 = v6 >> 1;
  v8 = v5 + 1;
  swift_bridgeObjectRetain_n();
  if (v6 >> 1 <= v5)
  {
    sub_269815460((v6 > 1), v5 + 1, 1);
    v1 = v31;
    v6 = *(v31 + 24);
    v7 = v6 >> 1;
  }

  *(v1 + 16) = v8;
  v9 = (v1 + 40 * v5);
  v9[4] = v3;
  v9[5] = v2;
  v9[6] = v3;
  v9[7] = v2;
  v9[8] = v4;
  if (v7 <= v8)
  {
    sub_269815460((v6 > 1), v5 + 2, 1);
    v1 = v31;
  }

  *(v1 + 16) = v5 + 2;
  v10 = (v1 + 40 * v8);
  v10[4] = 0xD000000000000017;
  v10[5] = 0x800000026987B8E0;
  v10[6] = 0xD000000000000017;
  v10[7] = 0x800000026987B8E0;
  v10[8] = 2;
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    sub_269815460((v11 > 1), v12 + 1, 1);
  }

  v14 = v31;
  *(v31 + 16) = v13;
  v15 = (v31 + 40 * v12);
  v15[4] = 0xD000000000000019;
  v15[5] = 0x800000026987B900;
  v15[6] = 0xD000000000000019;
  v15[7] = 0x800000026987B900;
  v15[8] = 4;
  v16 = *(v31 + 24);
  v17 = v12 + 2;
  if (v13 >= v16 >> 1)
  {
    sub_269815460((v16 > 1), v17, 1);
    v14 = v31;
  }

  *(v14 + 16) = v17;
  v18 = (v14 + 40 * v13);
  v18[4] = 0xD000000000000014;
  v18[5] = 0x800000026987B8A0;
  v18[6] = 0xD000000000000014;
  v18[7] = 0x800000026987B8A0;
  v18[8] = 8;
  v20 = *(v14 + 16);
  v19 = *(v14 + 24);
  v21 = v19 >> 1;
  v22 = v20 + 1;
  if (v19 >> 1 <= v20)
  {
    sub_269815460((v19 > 1), v20 + 1, 1);
    v14 = v31;
    v19 = *(v31 + 24);
    v21 = v19 >> 1;
  }

  *(v14 + 16) = v22;
  v23 = (v14 + 40 * v20);
  v23[4] = 0xD000000000000016;
  v23[5] = 0x800000026987B8C0;
  v23[6] = 0xD000000000000016;
  v23[7] = 0x800000026987B8C0;
  v23[8] = 16;
  v24 = v20 + 2;
  if (v21 <= v22)
  {
    sub_269815460((v19 > 1), v20 + 2, 1);
  }

  v25 = v31;
  *(v31 + 16) = v24;
  v26 = (v31 + 40 * v22);
  v26[4] = 0xD000000000000014;
  v26[5] = 0x800000026987B820;
  v26[6] = 0xD000000000000014;
  v26[7] = 0x800000026987B820;
  v26[8] = 32;
  v28 = *(v31 + 16);
  v27 = *(v31 + 24);
  if (v28 >= v27 >> 1)
  {
    sub_269815460((v27 > 1), v28 + 1, 1);
    v25 = v31;
  }

  *(v25 + 16) = v28 + 1;
  v29 = (v25 + 40 * v28);
  v29[4] = 0xD000000000000019;
  v29[5] = 0x8000000269880F60;
  v29[6] = 0xD000000000000019;
  v29[7] = 0x8000000269880F60;
  v29[8] = 64;
  swift_setDeallocating();
  sub_269819EC0();
  return sub_26980C2A4(v25);
}

void sub_2698120E8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  __swift_project_boxed_opaque_existential_1((a2 + 24), *(a2 + 48));
  sub_2697ADE90(v5, v4, &v28);
  if (v29)
  {
    v26 = v5;
    v27 = v4;
    sub_26968E5D4(&v28, v30);
    v6 = v31;
    v7 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v8 = (*(v7 + 40))(v6, v7);
    v9 = v8;
    v10 = v8 + 56;
    v11 = 1 << *(v8 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v8 + 56);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    v33 = 0;
    while (v13)
    {
LABEL_10:
      v17 = (*(v9 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v13)))));
      v19 = *v17;
      v18 = v17[1];
      v20 = qword_2803226C0;

      if (v20 != -1)
      {
        swift_once();
      }

      v13 &= v13 - 1;
      v21 = off_280325928;
      if (*(off_280325928 + 2) && (v22 = sub_26973CEF8(v19, v18), (v23 & 1) != 0))
      {
        v24 = *(v21[7] + 24 * v22 + 16);

        v25 = __OFADD__(v33, v24);
        v33 += v24;
        if (v25)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        *a3 = v26;
        a3[1] = v27;
        a3[2] = v33;

        __swift_destroy_boxed_opaque_existential_0(v30);
        return;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    sub_269698048(&v28, &unk_2803263B0, &unk_26985D0B0);
    *a3 = v5;
    a3[1] = v4;
    a3[2] = -1;
  }
}

uint64_t sub_269812328(void (*a1)(uint64_t *))
{
  v3 = sub_269853904();
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + 16);
  v16 = v1;
  v10 = sub_269811A10(sub_26981245C, v15, v9);
  *v8 = sub_26980C0F4(v10, v11, v12, v13);
  (*(v5 + 104))(v8, *MEMORY[0x277D60188], v3);
  a1(v8);
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_26981248C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325938, &unk_269867C50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_269853904();
  OUTLINED_FUNCTION_8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_48();
  if (*(a1 + 16))
  {
    v12 = sub_26973CEF8(0xD000000000000015, 0x8000000269880BB0);
    if (v13)
    {
      (*(v10 + 16))(v2, *(a1 + 56) + *(v10 + 72) * v12, v8);
      v14 = *(v10 + 88);
      v15 = v14(v2, v8);
      if (v15 == *MEMORY[0x277D60170])
      {
        v16 = v15;
        v20 = *(v10 + 96);
        v20(v2, v8);
        sub_26981D718(0xD000000000000015, 0x8000000269880BD0, a1);
        if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
        {
          sub_26969B0C0(v7, &qword_280325938, &unk_269867C50);
        }

        else
        {
          if (v14(v7, v8) == v16)
          {
            v20(v7, v8);
            return sub_2696CA210();
          }

          (*(v10 + 8))(v7, v8);
        }
      }

      else
      {
        (*(v10 + 8))(v2, v8);
      }
    }
  }

  v17 = sub_269851DA4();
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v17);
}

void sub_269812708(uint64_t *a1@<X8>)
{
  if (!v1[1])
  {
    goto LABEL_71;
  }

  v4 = v1[2];
  v3 = v1[3];
  v5 = HIBYTE(v3) & 0xF;
  v6 = v4 & 0xFFFFFFFFFFFFLL;
  if (!((v3 & 0x2000000000000000) != 0 ? HIBYTE(v3) & 0xF : v4 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_71;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {

    sub_2697ECE58(v4, v3, 10);
    v10 = v31;
    v33 = v32;

    if ((v33 & 1) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      v8 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v8 = sub_269855264();
    }

    v9 = *v8;
    if (v9 == 43)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          v10 = 0;
          if (v8)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_48();
              if (!v12 & v11)
              {
                goto LABEL_69;
              }

              OUTLINED_FUNCTION_0_60();
              if (!v12)
              {
                goto LABEL_69;
              }

              v10 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_69;
              }

              OUTLINED_FUNCTION_4_36();
              if (v12)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_69;
      }

      goto LABEL_78;
    }

    if (v9 != 45)
    {
      if (v6)
      {
        v10 = 0;
        if (v8)
        {
          while (1)
          {
            v22 = *v8 - 48;
            if (v22 > 9)
            {
              goto LABEL_69;
            }

            v23 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_69;
            }

            v10 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_69;
            }

            ++v8;
            if (!--v6)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_69:
      v10 = 0;
      v15 = 1;
LABEL_70:
      if ((v15 & 1) == 0)
      {
LABEL_72:
        v26 = type metadata accessor for StaticSignal(0);
        a1[3] = v26;
        a1[4] = sub_26974FF94();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        *boxed_opaque_existential_1 = 0xD000000000000011;
        boxed_opaque_existential_1[1] = 0x800000026987ADD0;
        v28 = *(v26 + 20);
        *(boxed_opaque_existential_1 + v28) = v10;
        v29 = *MEMORY[0x277D60170];
        sub_269853904();
        OUTLINED_FUNCTION_4_3();
        (*(v30 + 104))(boxed_opaque_existential_1 + v28, v29);
        return;
      }

LABEL_71:
      v10 = -1;
      goto LABEL_72;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        v10 = 0;
        if (v8)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_48();
            if (!v12 & v11)
            {
              goto LABEL_69;
            }

            OUTLINED_FUNCTION_0_60();
            if (!v12)
            {
              goto LABEL_69;
            }

            v10 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_69;
            }

            OUTLINED_FUNCTION_4_36();
            if (v12)
            {
              goto LABEL_70;
            }
          }
        }

LABEL_60:
        v15 = 0;
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v1[2] != 43)
  {
    if (v1[2] != 45)
    {
      if (v5)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_48();
          if (!v12 & v11)
          {
            break;
          }

          OUTLINED_FUNCTION_0_60();
          if (!v12)
          {
            break;
          }

          v10 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          OUTLINED_FUNCTION_4_36();
          if (v12)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    if (v5)
    {
      if (v5 != 1)
      {
        OUTLINED_FUNCTION_5_42();
        while (1)
        {
          OUTLINED_FUNCTION_1_48();
          if (!v12 & v11)
          {
            break;
          }

          OUTLINED_FUNCTION_0_60();
          if (!v12)
          {
            break;
          }

          v10 = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          OUTLINED_FUNCTION_4_36();
          if (v12)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    goto LABEL_77;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      OUTLINED_FUNCTION_5_42();
      while (1)
      {
        OUTLINED_FUNCTION_1_48();
        if (!v12 & v11)
        {
          break;
        }

        OUTLINED_FUNCTION_0_60();
        if (!v12)
        {
          break;
        }

        v10 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        OUTLINED_FUNCTION_4_36();
        if (v12)
        {
          goto LABEL_70;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_79:
  __break(1u);
}

uint64_t sub_269812A00()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_269851DA4();
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_48();
  if (!*(v0 + 8))
  {
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    goto LABEL_5;
  }

  sub_269851D44();

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
LABEL_5:
    sub_26969B0C0(v4, &qword_2803240F0, &qword_2698603D0);
    v9 = -1;
    v24 = -1;
    goto LABEL_6;
  }

  (*(v7 + 32))(v1, v4, v5);
  v9 = sub_2696CA120();
  v24 = v10;
  (*(v7 + 8))(v1, v5);
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324270, &unk_26985F2B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2698580D0;
  v12 = type metadata accessor for StaticSignal(0);
  *(v11 + 56) = v12;
  v13 = sub_26974FF94();
  *(v11 + 64) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  *boxed_opaque_existential_1 = 0xD000000000000015;
  boxed_opaque_existential_1[1] = 0x8000000269880BB0;
  v15 = *(v12 + 20);
  *(boxed_opaque_existential_1 + v15) = v9;
  v16 = *MEMORY[0x277D60170];
  v17 = sub_269853904();
  OUTLINED_FUNCTION_4_3();
  v19 = *(v18 + 104);
  v19(boxed_opaque_existential_1 + v15, v16, v17);
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  v20 = __swift_allocate_boxed_opaque_existential_1((v11 + 72));
  *v20 = 0xD000000000000015;
  v20[1] = 0x8000000269880BD0;
  v21 = *(v12 + 20);
  *(v20 + v21) = v24;
  v19(v20 + v21, v16, v17);
  return v11;
}

uint64_t sub_269812CFC()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for AppDisambiguationContext(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_8_9(v4);
  v1[6] = OUTLINED_FUNCTION_4_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CC8, &unk_269866680);
  OUTLINED_FUNCTION_8_9(v5);
  v1[7] = OUTLINED_FUNCTION_4_7();
  v6 = type metadata accessor for AppSelectionResult(0);
  v1[8] = v6;
  OUTLINED_FUNCTION_8_9(v6);
  v1[9] = OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_269812DCC()
{
  v1 = v0[9];
  v2 = v0[3];
  sub_269814B44(*(v0[4] + 32), *(v0[4] + 40));
  OUTLINED_FUNCTION_1_53();
  sub_269815844(v2, v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_0_61();
    sub_2698158A0(v5, v12, v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[12] = v14;
    *v14 = v15;
    v14[1] = sub_269813194;

    return sub_269813EB4();
  }

  else if (EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_53();
    sub_269815844(v16, v17, v18);
    sub_2698158FC(v5, type metadata accessor for AppSelectionResult);

    OUTLINED_FUNCTION_7_7();

    return v19();
  }

  else
  {
    v6 = v0[7];

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F48, &unk_2698667E0);
    v8 = *(v7 + 64);
    v0[10] = *(v5 + *(v7 + 80) + 8);
    sub_269715290(v5 + v8, v6);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_2();
    v0[11] = v9;
    *v9 = v10;
    v9[1] = sub_26981300C;

    return sub_269813304();
  }
}

uint64_t sub_26981300C()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_269813110()
{
  OUTLINED_FUNCTION_2_7();
  sub_26969B0C0(*(v0 + 56), &qword_280323CC8, &unk_269866680);

  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_269813194()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26981327C()
{
  OUTLINED_FUNCTION_2_7();
  sub_2698158FC(*(v0 + 48), type metadata accessor for AppDisambiguationContext);

  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_269813304()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[3] = v7;
  v8 = sub_2698548D4();
  v1[10] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_4_7();
  v10 = sub_269853984();
  v1[13] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[14] = v11;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  OUTLINED_FUNCTION_8_9(v12);
  v1[17] = OUTLINED_FUNCTION_4_7();
  v13 = type metadata accessor for AppDisambiguationContext(0);
  v1[18] = v13;
  OUTLINED_FUNCTION_8_9(v13);
  v1[19] = OUTLINED_FUNCTION_4_7();
  v14 = type metadata accessor for ModelInput(0);
  OUTLINED_FUNCTION_8_9(v14);
  v1[20] = OUTLINED_FUNCTION_4_7();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CC8, &unk_269866680);
  OUTLINED_FUNCTION_8_9(v15);
  v1[21] = OUTLINED_FUNCTION_4_7();
  v16 = type metadata accessor for ModelParams(0);
  v1[22] = v16;
  OUTLINED_FUNCTION_8_9(v16);
  v1[23] = OUTLINED_FUNCTION_4_7();
  v17 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v17);
}

uint64_t sub_2698134D4()
{
  if (!*(v0 + 48) || (sub_269814BA8()) && (sub_2697B9454() & 1) == 0)
  {
    goto LABEL_8;
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_2696F3F6C(*(v0 + 32), v1, &qword_280323CC8, &unk_269866680);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_26969B0C0(*(v0 + 168), &qword_280323CC8, &unk_269866680);
LABEL_8:
    OUTLINED_FUNCTION_1_53();
    sub_269815844(v7, v8, v9);
    goto LABEL_9;
  }

  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  sub_2698158A0(*(v0 + 168), v4, type metadata accessor for ModelParams);
  v5 = *(v4 + *(v3 + 24));
  v6 = *(v0 + 184);
  if (v5[2] < 2uLL)
  {
    sub_2698158FC(*(v0 + 184), type metadata accessor for ModelParams);
    goto LABEL_8;
  }

  v12 = *(v0 + 160);
  v13 = *(v0 + 72);
  v14 = *(v13 + 56);
  *(v0 + 232) = v14;
  v15 = sub_2697E0304(v5, *(v13 + 24), 0, *(v13 + 184), *(v13 + 192), v14);
  *(v0 + 192) = v15;
  OUTLINED_FUNCTION_10_31();
  sub_269815844(v6 + v16, v12, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F40, &unk_269858D40);
  if (__swift_getEnumTagSinglePayload(v12, 1, v18) != 1)
  {
    v29 = *(v0 + 184);
    v30 = *(v0 + 152);
    v31 = *(v0 + 136);
    v32 = *(v0 + 144);
    v33 = *(v0 + 104);
    v35 = *(v0 + 64);
    v34 = *(v0 + 72);
    v57 = *(v0 + 56);
    v58 = v29;
    v56 = *(v0 + 48);
    v59 = *(v0 + 24);
    (*(*(v0 + 112) + 8))(*(v0 + 160), v33);
    OUTLINED_FUNCTION_2_41();
    sub_269815844(v29, v30 + v36, v37);
    __swift_storeEnumTagSinglePayload(v30 + v32[8], 1, 1, v33);
    *v30 = v15;
    *(v30 + 8) = v14;
    *(v30 + 16) = 1;
    *(v30 + v32[9]) = v56;
    v38 = (v30 + v32[10]);
    *v38 = v57;
    v38[1] = v35;
    v39 = *(v34 + 168);

    v39(v40);
    sub_269851D34();
    OUTLINED_FUNCTION_24_4();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    sub_2697B9094(v31);
    OUTLINED_FUNCTION_3_49();
    sub_2698158FC(v58, v45);
    OUTLINED_FUNCTION_0_61();
    sub_2698158A0(v30, v59, v46);
    v47 = type metadata accessor for AppSelectionResult(0);
    OUTLINED_FUNCTION_16_26(v47);
LABEL_9:
    OUTLINED_FUNCTION_9_36();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_7_8();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_15_30(*(v0 + 160));
  v19 = v5[2];
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v60 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_28_17();
    v20 = v60;
    v21 = *(v60 + 16);
    v22 = 16 * v21;
    v23 = v5 + 5;
    do
    {
      v25 = *(v23 - 1);
      v24 = *v23;
      v26 = v21 + 1;
      v27 = *(v60 + 24);

      if (v21 >= v27 >> 1)
      {
        sub_269814F0C(v27 > 1, v26, 1);
      }

      *(v60 + 16) = v26;
      v28 = v60 + v22;
      *(v28 + 32) = v25;
      *(v28 + 40) = v24;
      v22 += 16;
      v23 += 3;
      ++v21;
      --v19;
    }

    while (v19);
  }

  *(v0 + 200) = v20;
  v48 = *(v0 + 72);
  *(v0 + 208) = (*(v48 + 96))(**(v0 + 184), *(*(v0 + 184) + 8), *(v48 + 16), v20);
  __swift_project_boxed_opaque_existential_1((v48 + 112), *(v48 + 136));
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 216) = v49;
  *v49 = v50;
  v49[1] = sub_26981390C;
  OUTLINED_FUNCTION_7_8();

  return sub_2697B7D94(v51, v52, v53);
}

uint64_t sub_26981390C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    v4 = sub_269813A74;
  }

  else
  {
    v4 = sub_269813CB8;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_269813A74()
{
  v31 = v0;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v1 = v0[28];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = __swift_project_value_buffer(v4, qword_281571B50);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2698548B4();
  v8 = sub_269854F24();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  v11 = v0[11];
  v12 = v0[12];
  v13 = v0[10];
  if (v9)
  {
    v29 = v0[12];
    v14 = OUTLINED_FUNCTION_27_2();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136315138;
    v0[2] = v10;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v17 = sub_269854AE4();
    v19 = sub_26974F520(v17, v18, &v30);

    *(v14 + 4) = v19;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v20, v21, "AppSelectionResultRemapper error gathering signals for AppSelectionResult.selected, %s");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v11 + 8))(v29, v13);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  v22 = v0[5];
  v23 = v0[3];
  OUTLINED_FUNCTION_3_49();
  sub_2698158FC(v24, v25);
  OUTLINED_FUNCTION_1_53();
  sub_269815844(v22, v23, v26);
  OUTLINED_FUNCTION_9_36();

  OUTLINED_FUNCTION_7_7();

  return v27();
}

uint64_t sub_269813CB8()
{
  v30 = *(v0 + 232);
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 112);
  v7 = *(v0 + 104);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v28 = *(v0 + 56);
  v29 = *(v0 + 192);
  v27 = *(v0 + 48);
  v31 = *(v0 + 24);
  (*(v6 + 32))(v4, *(v0 + 120), v7);
  OUTLINED_FUNCTION_2_41();
  sub_269815844(v1, v2 + v10, v11);
  (*(v6 + 16))(v2 + v3[8], v4, v7);
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  *v2 = v29;
  *(v2 + 8) = v30;
  *(v2 + 16) = 1;
  *(v2 + v3[9]) = v27;
  v15 = (v2 + v3[10]);
  *v15 = v28;
  v15[1] = v9;
  v16 = *(v8 + 168);

  v16(v17);
  sub_269851D34();
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_2697B9094(v5);
  (*(v6 + 8))(v4, v7);
  OUTLINED_FUNCTION_3_49();
  sub_2698158FC(v1, v22);
  OUTLINED_FUNCTION_0_61();
  sub_2698158A0(v2, v31, v23);
  v24 = type metadata accessor for AppSelectionResult(0);
  OUTLINED_FUNCTION_16_26(v24);
  OUTLINED_FUNCTION_9_36();

  OUTLINED_FUNCTION_7_7();

  return v25();
}

uint64_t sub_269813EB4()
{
  OUTLINED_FUNCTION_2_7();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_269853984();
  v1[7] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[8] = v6;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v7 = sub_2698548D4();
  v1[12] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[13] = v8;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v9 = type metadata accessor for AppDisambiguationContext(0);
  v1[17] = v9;
  OUTLINED_FUNCTION_8_9(v9);
  v1[18] = OUTLINED_FUNCTION_4_7();
  v10 = type metadata accessor for ModelInput(0);
  OUTLINED_FUNCTION_8_9(v10);
  v1[19] = OUTLINED_FUNCTION_4_7();
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_26981402C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_269814B44(*(v1 + 64), *(v1 + 72));
  v4 = v3;
  *(v0 + 160) = v3;
  if (v2)
  {
    v72 = v2;
    v5 = *(v0 + 48);
    v6 = (v5 + 56);
    v7 = *(v0 + 32);
  }

  else
  {
    v7 = *(v0 + 32);
    if (!v3)
    {
      v65 = *(v0 + 24);
      OUTLINED_FUNCTION_11_37();
      sub_269815844(v7, v65, v66);
      v67 = type metadata accessor for AppSelectionResult(0);
      OUTLINED_FUNCTION_16_26(v67);
LABEL_22:
      OUTLINED_FUNCTION_24_20();

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_7_8();

      __asm { BRAA            X1, X16 }
    }

    v72 = 0;
    v6 = (v7 + 8);
    v5 = *(v0 + 48);
  }

  v8 = *(v0 + 152);
  v70 = *(v0 + 40);
  v71 = *(v0 + 136);
  v9 = *v6;
  *(v0 + 260) = *v6;
  v10 = *(v71 + 28);
  *(v0 + 256) = v10;
  v11 = (v7 + v10);
  v12 = *(v7 + v10 + *(type metadata accessor for ModelParams(0) + 24));
  v13 = sub_2697E0304(v12, *(v1 + 24), 0, *(v5 + 184), *(v5 + 192), v9);
  *(v0 + 168) = v13;
  v14 = *(v7 + 16);
  *(v0 + 176) = v14;
  OUTLINED_FUNCTION_10_31();
  sub_269815844(v11 + v15, v8, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F40, &unk_269858D40);
  if (__swift_getEnumTagSinglePayload(v8, 1, v17) != 1)
  {
    v28 = v72 != 0;
    v74 = v70 | v4;
    v29 = v11;
    v30 = v14 | v28;
    v31 = *(v0 + 144);
    v32 = *(v0 + 136);
    v33 = *(v0 + 32);
    (*(*(v0 + 64) + 8))(*(v0 + 152), *(v0 + 56));
    OUTLINED_FUNCTION_2_41();
    sub_269815844(v29, v31 + v34, v35);
    sub_2696F3F6C(v33 + v32[8], v31 + v32[8], &qword_2803254E8, &unk_269866100);
    v36 = (v33 + v32[10]);
    v37 = *v36;
    v38 = v36[1];
    *v31 = v13;
    *(v31 + 8) = v9;
    *(v31 + 16) = v30;
    *(v31 + v32[9]) = v74;
    v39 = (v31 + v32[10]);
    *v39 = v37;
    v39[1] = v38;
    OUTLINED_FUNCTION_0_61();
    v40 = OUTLINED_FUNCTION_50_0();
    sub_2698158A0(v40, v41, v42);
    v43 = type metadata accessor for AppSelectionResult(0);
    OUTLINED_FUNCTION_16_26(v43);

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_15_30(*(v0 + 152));
  v18 = v12[2];
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v73 = v11;
    v75 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_28_17();
    v19 = v75;
    v20 = *(v75 + 16);
    v21 = 16 * v20;
    v22 = v12 + 5;
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      v25 = v20 + 1;
      v26 = *(v75 + 24);

      if (v20 >= v26 >> 1)
      {
        sub_269814F0C(v26 > 1, v25, 1);
      }

      *(v75 + 16) = v25;
      v27 = v75 + v21;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v21 += 16;
      v22 += 3;
      ++v20;
      --v18;
    }

    while (v18);
    v11 = v73;
  }

  *(v0 + 184) = v19;
  v44 = (*(*(v0 + 48) + 96))(*v11, v11[1], *(*(v0 + 48) + 16), v19);
  *(v0 + 192) = v44;
  if (qword_280322708 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_280322708);
  }

  v45 = *(v0 + 128);
  v46 = *(v0 + 96);
  v47 = *(v0 + 104);
  v48 = __swift_project_value_buffer(v46, qword_281571B50);
  *(v0 + 200) = v48;
  v49 = *(v47 + 16);
  *(v0 + 208) = v49;
  *(v0 + 216) = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v49(v45, v48, v46);

  v50 = sub_2698548B4();
  v51 = sub_269854F14();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = OUTLINED_FUNCTION_27_2();
    *v52 = 134217984;
    *(v52 + 4) = *(v44 + 16);

    _os_log_impl(&dword_269684000, v50, v51, "AppSelectionResultRemapper created %ld to gather", v52, 0xCu);
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v53 = *(v0 + 128);
  v54 = *(v0 + 96);
  v55 = *(v0 + 104);
  v56 = *(v0 + 48);
  v57 = *(v55 + 8);
  *(v0 + 224) = v57;
  *(v0 + 232) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v57(v53, v54);
  __swift_project_boxed_opaque_existential_1((v56 + 112), *(v56 + 136));
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 240) = v58;
  *v58 = v59;
  v58[1] = sub_2698144F0;
  OUTLINED_FUNCTION_7_8();

  return sub_2697B7D94(v60, v61, v62);
}

uint64_t sub_2698144F0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    v4 = sub_269814934;
  }

  else
  {
    v4 = sub_269814650;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_269814650()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v46 = *(v5 + 32);
  v46(v2, *(v0 + 80), v4);
  v6 = OUTLINED_FUNCTION_50_0();
  v1(v6);
  (*(v5 + 16))(v3, v2, v4);
  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v0 + 56);
  if (v9)
  {
    v13 = OUTLINED_FUNCTION_27_2();
    *v13 = 134217984;
    v14 = *(sub_269853964() + 16);

    (*(v11 + 8))(v10, v12);
    *(v13 + 4) = v14;
    _os_log_impl(&dword_269684000, v7, v8, "AppSelectionResultRemapper gathered %ld values", v13, 0xCu);
    OUTLINED_FUNCTION_10();
  }

  else
  {
    (*(v11 + 8))(*(v0 + 72), *(v0 + 56));
  }

  v15 = v7;
  v40 = *(v0 + 224);
  v44 = *(v0 + 260);
  v16 = *(v0 + 176);
  v43 = *(v0 + 168);
  v17 = *(v0 + 160);
  v18 = *(v0 + 136);
  v19 = *(v0 + 144);
  v20 = *(v0 + 120);
  v21 = *(v0 + 96);
  v41 = *(v0 + 256);
  v42 = *(v0 + 88);
  v22 = *(v0 + 56);
  v24 = *(v0 + 32);
  v23 = *(v0 + 40);
  v45 = *(v0 + 24);

  v25 = v23 | v17;
  v26 = v16 | (v23 != 0);
  v40(v20, v21);
  OUTLINED_FUNCTION_2_41();
  sub_269815844(v24 + v41, v19 + v27, v28);
  v46(v19 + v18[8], v42, v22);
  OUTLINED_FUNCTION_24_4();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v22);
  v32 = (v24 + v18[10]);
  v33 = *v32;
  v34 = v32[1];
  *v19 = v43;
  *(v19 + 8) = v44;
  *(v19 + 16) = v26;
  *(v19 + v18[9]) = v25;
  v35 = (v19 + v18[10]);
  *v35 = v33;
  v35[1] = v34;
  OUTLINED_FUNCTION_0_61();
  sub_2698158A0(v19, v45, v36);
  v37 = type metadata accessor for AppSelectionResult(0);
  OUTLINED_FUNCTION_16_26(v37);

  OUTLINED_FUNCTION_7_7();

  return v38();
}

uint64_t sub_269814934()
{
  v27 = v0;
  v1 = *(v0 + 248);
  (*(v0 + 208))(*(v0 + 112), *(v0 + 200), *(v0 + 96));
  v2 = v1;
  v3 = sub_2698548B4();
  v4 = sub_269854F24();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v25 = *(v0 + 224);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    v8 = OUTLINED_FUNCTION_27_2();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    *(v0 + 16) = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v11 = sub_269854AE4();
    v13 = sub_26974F520(v11, v12, &v26);

    *(v8 + 4) = v13;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v14, v15, "AppSelectionResultRemapper error gathering signals for AppSelectionResult.disambiguate, %s");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v25(v6, v7);
  }

  else
  {
    v16 = *(v0 + 224);
    v17 = *(v0 + 112);
    v18 = *(v0 + 96);

    v16(v17, v18);
  }

  v19 = *(v0 + 24);
  OUTLINED_FUNCTION_11_37();
  sub_269815844(v20, v19, v21);
  v22 = type metadata accessor for AppSelectionResult(0);
  OUTLINED_FUNCTION_16_26(v22);
  OUTLINED_FUNCTION_24_20();

  OUTLINED_FUNCTION_7_7();

  return v23();
}

BOOL sub_269814B44(double a1, double a2)
{
  v5 = *(v2 + 152);
  v6 = v5();
  v5();
  v8 = 2;
  if (v6 < a1)
  {
    v8 = 3;
  }

  if (v7 >= a2)
  {
    return v6 < a1;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_269814BA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v2 = OUTLINED_FUNCTION_8_9(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - v3;
  v5 = sub_269851D34();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  sub_2697B8EC4(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_26969B0C0(v4, &unk_280322D50, &unk_2698583F0);
    return 0;
  }

  v13 = (*(v6 + 32))(v11, v4, v5);
  (*(v0 + 168))(v13);
  sub_269851CB4();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v9, v5);
  result = (v16)(v11, v5);
  v17 = *(v0 + 48);
  v18 = (v17 * 60) >> 64;
  v19 = 60 * v17;
  if (v18 == v19 >> 63)
  {
    if ((v19 * 60) >> 64 == (60 * v19) >> 63)
    {
      return v15 < (60 * v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_269814DC4()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);

  sub_269815954(v0[23], v0[24]);
  return v0;
}

uint64_t sub_269814E0C()
{
  sub_269814DC4();

  return MEMORY[0x2821FE8D8](v0, 200, 7);
}

void *sub_269814EEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269815480(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269815070(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269815964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269815090(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269815A7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2698150B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269815B8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2698151C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269815D7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26981523C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269815E8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269815304(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269815F9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269815324(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2698160AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269815440(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269816440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269815460(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269816558(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269815480(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242C8, &qword_26985F308);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_26977D8A4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242D0, &qword_26985F310);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_269815598(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_29();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
      v11 = OUTLINED_FUNCTION_117_0();
      _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_25_20();
      *(v11 + 16) = v9;
      *(v11 + 24) = v12;
      if (a1)
      {
LABEL_12:
        sub_26968E61C((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_42_4();
  if (!v7)
  {
    OUTLINED_FUNCTION_6_28();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_269815678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_29();
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
      OUTLINED_FUNCTION_30_18(a1, a2, a3, a4, a5, a6);
      v15 = OUTLINED_FUNCTION_117_0();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_25_20();
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

  OUTLINED_FUNCTION_42_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_6_28();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_269815750(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_29();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324228, &qword_269867D20);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      *(v11 + 16) = v9;
      *(v11 + 24) = 2 * ((v12 - 32) / 24);
      if (a1)
      {
LABEL_12:
        sub_26977D8A4((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_42_4();
  if (!v7)
  {
    OUTLINED_FUNCTION_6_28();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_269815844(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_3();
  v4 = OUTLINED_FUNCTION_50_0();
  v5(v4);
  return a2;
}

uint64_t sub_2698158A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_3();
  v4 = OUTLINED_FUNCTION_50_0();
  v5(v4);
  return a2;
}

uint64_t sub_2698158FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_269815954(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_269815964(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324270, &unk_26985F2B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_26977E47C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324010, &qword_2698679E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_269815A7C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325948, &unk_269867D50);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26977D884((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228B0, &qword_2698577D8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_269815B8C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242B8, &unk_269867D40);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_26977E47C(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242C0, &qword_26985F300);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_269815CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_29();
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
      OUTLINED_FUNCTION_30_18(a1, a2, a3, a4, a5, a6);
      v15 = OUTLINED_FUNCTION_117_0();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_25_20();
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

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_42_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_6_28();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_269815D7C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325970, &qword_269867D98);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26968E61C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325978, &unk_269867DA0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_269815E8C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325960, &qword_269867D78);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26977E468(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B08, &unk_269867D80);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_269815F9C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803249A8, &qword_269860CE8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26968E61C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2698160AC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324300, &qword_26985F370);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26977E468(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324308, &qword_26985F378);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2698161BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_29();
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
      OUTLINED_FUNCTION_30_18(a1, a2, a3, a4, a5, a6);
      v15 = OUTLINED_FUNCTION_117_0();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_25_20();
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

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_42_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_6_28();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26981629C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_7_29();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_42_4();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_30_18(a1, a2, a3, a4, a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_5_12(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(a7(0) - 8);
  if (v11)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    a8(a4 + v26, v15, v22 + v26);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_269816440(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324280, &unk_26985F2C0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_26977D8A4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324288, &unk_269867D30);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_269816558(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325988, &qword_269867DC0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_269689B50((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325990, qword_269867DC8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_269816670(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = 0;
  result = MEMORY[0x26D647190](&v6, 8);
  if (v4 * vcvtd_n_f64_u64(v6 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    return sub_269816670(a1, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_36()
{
}

uint64_t OUTLINED_FUNCTION_15_30(uint64_t a1)
{

  return sub_2698158FC(a1, type metadata accessor for ModelInput);
}

uint64_t OUTLINED_FUNCTION_16_26(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_24_20()
{
}

void OUTLINED_FUNCTION_28_17()
{

  sub_269814F0C(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_30_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t sub_269816874(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v60 = a3;
  v64 = sub_2698548D4();
  v66 = *(v64 - 8);
  v9 = MEMORY[0x28223BE20](v64);
  v61 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v58 = &v56 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 8))(v18, v19);
  if (!v21)
  {
    return 0;
  }

  v57 = v15;
  v22 = v21;
  v62 = v20;
  v63 = v5;
  v24 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v25 = (*(v23 + 32))(v24, v23);
  v26 = a2;
  if (a2)
  {
    v27 = 0xD000000000000016;
    v28 = 0x800000026987B860;
  }

  else
  {
    v28 = 0x800000026987B840;
    v27 = 0xD000000000000011;
  }

  v29 = sub_269807CB4(v27, v28, v25);

  v30 = 0xD000000000000011;
  if (v29)
  {
    v31 = v62;
    if (sub_269807CB4(v62, v22, a4))
    {
      if (qword_280322708 != -1)
      {
        OUTLINED_FUNCTION_2_1(&qword_280322708);
      }

      v32 = v64;
      __swift_project_value_buffer(v64, qword_281571B50);
      OUTLINED_FUNCTION_2_42();
      v33(v17);

      v34 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_27_11();
      if (OUTLINED_FUNCTION_7_46())
      {
        OUTLINED_FUNCTION_27_2();
        v35 = OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_4_41(v35);
        OUTLINED_FUNCTION_1_54(4.8149e-34);
        OUTLINED_FUNCTION_9_37();
        *(a1 + 4) = a2;
        v38 = "PlayOnThirdPartyApp including %s due to includeAsVideoApps override";
LABEL_31:
        OUTLINED_FUNCTION_5_43(&dword_269684000, v36, v37, v38);
        __swift_destroy_boxed_opaque_existential_0(a2);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

LABEL_33:
        (*(v30 + 8))(v17, v32);
        return 1;
      }

      goto LABEL_32;
    }

    if (sub_269807CB4(v31, v22, v59))
    {
      if (qword_280322708 != -1)
      {
        OUTLINED_FUNCTION_2_1(&qword_280322708);
      }

      v39 = v64;
      __swift_project_value_buffer(v64, qword_281571B50);
      OUTLINED_FUNCTION_2_42();
      v40 = v57;
      v41(v57);

      v42 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_27_11();
      if (OUTLINED_FUNCTION_7_46())
      {
        OUTLINED_FUNCTION_27_2();
        v43 = OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_4_41(v43);
        OUTLINED_FUNCTION_1_54(4.8149e-34);
        OUTLINED_FUNCTION_9_37();
        *(a1 + 4) = a2;
        OUTLINED_FUNCTION_5_43(&dword_269684000, v44, v45, "PlayOnThirdPartyApp excluding %s due to excludeAsVideoApps override");
        __swift_destroy_boxed_opaque_existential_0(a2);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      else
      {
      }

      MEMORY[0xD000000000000019](v40, v39);
      return 0;
    }

    v46 = a1[3];
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v46);
    v47 = (v26[5])(v46, v26);
    v48 = sub_269807CB4(0xD000000000000014, 0x800000026987B820, v47);

    if (v48)
    {
      if (qword_280322708 != -1)
      {
        OUTLINED_FUNCTION_2_1(&qword_280322708);
      }

      v32 = v64;
      __swift_project_value_buffer(v64, qword_281571B50);
      OUTLINED_FUNCTION_2_42();
      v17 = v58;
      v49(v58);

      v34 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_27_11();
      if (OUTLINED_FUNCTION_7_46())
      {
        OUTLINED_FUNCTION_27_2();
        v50 = OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_4_41(v50);
        OUTLINED_FUNCTION_1_54(4.8149e-34);
        OUTLINED_FUNCTION_9_37();
        *(a1 + 4) = v26;
        v38 = "PlayOnThirdPartyApp including %s due to SiriKit video category support";
        goto LABEL_31;
      }

LABEL_32:

      goto LABEL_33;
    }
  }

  v65[3] = &type metadata for SiriVideoFeatureKeys;
  v65[4] = sub_2696A2978();
  LOBYTE(v65[0]) = 3;
  v51 = sub_269853B34();
  __swift_destroy_boxed_opaque_existential_0(v65);
  if (v51)
  {
    if (a2)
    {
      v52 = sub_269832F24(v62, v22);
    }

    else
    {
      v52 = sub_269832854(v62, v22);
    }

    v32 = v64;
    v30 = v66;
    v17 = v61;
    if (v52)
    {

      if (qword_280322708 != -1)
      {
        OUTLINED_FUNCTION_2_1(&qword_280322708);
      }

      v53 = __swift_project_value_buffer(v32, qword_281571B50);
      (*(v30 + 16))(v17, v53, v32);

      v34 = sub_2698548B4();
      sub_269854F14();
      OUTLINED_FUNCTION_27_11();
      if (OUTLINED_FUNCTION_7_46())
      {
        OUTLINED_FUNCTION_27_2();
        v54 = OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_4_41(v54);
        OUTLINED_FUNCTION_1_54(4.8149e-34);
        OUTLINED_FUNCTION_9_37();
        *(a1 + 4) = v26;
        v38 = "PlayOnThirdPartyApp including %s due to AppIntents support";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    return 0;
  }

  return 0;
}

unint64_t OUTLINED_FUNCTION_1_54(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 144);

  return sub_26974F520(v5, v2, (v3 - 120));
}

void OUTLINED_FUNCTION_5_43(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_7_46()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_9_37()
{
}

_BYTE *storeEnumTagSinglePayload for SignalRecordingType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for SignalRecordingContext(uint64_t a1)
{
  result = qword_280325998;
  if (!qword_280325998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26981708C(uint64_t a1)
{
  sub_26981713C();
  if (v1 <= 0x3F)
  {
    sub_2698171D4(319);
    if (v2 <= 0x3F)
    {
      sub_269817254(319);
      if (v3 <= 0x3F)
      {
        sub_269817368(319);
        if (v4 <= 0x3F)
        {
          sub_2698173D4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26981713C()
{
  if (!qword_2803259A8)
  {
    sub_269817184();
    if (!v1)
    {
      atomic_store(v0, &qword_2803259A8);
    }
  }
}

void sub_269817184()
{
  if (!qword_2803259B0)
  {
    v0 = sub_269854D04();
    if (!v1)
    {
      atomic_store(v0, &qword_2803259B0);
    }
  }
}

void sub_2698171D4(uint64_t a1)
{
  if (!qword_2803259B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322EA0, &unk_2698577C0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2803259B8);
    }
  }
}

void sub_269817254(uint64_t a1)
{
  if (!qword_2803259C0)
  {
    MEMORY[0x28223BE20](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322EA0, &unk_2698577C0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2803259C0);
    }
  }
}

void sub_269817368(uint64_t a1)
{
  if (!qword_2803259C8)
  {
    type metadata accessor for AppDisambiguationContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803259C8);
    }
  }
}

uint64_t sub_2698173D4()
{
  result = qword_2803259D0;
  if (!qword_2803259D0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_2803259D0);
  }

  return result;
}

unint64_t sub_269817400()
{
  result = qword_2803259D8;
  if (!qword_2803259D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803259D8);
  }

  return result;
}

uint64_t sub_269817454()
{
  type metadata accessor for SignalRecordingContext(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v4 = v3 - v2;
  sub_2697EE474(v0, v3 - v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2697EE4D8(v4, type metadata accessor for SignalRecordingContext);
      result = 1;
      break;
    case 2u:
      sub_2697EE4D8(v4, type metadata accessor for SignalRecordingContext);
      result = 2;
      break;
    case 3u:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
      OUTLINED_FUNCTION_0_55();
      sub_2697EE4D8(v4 + v8, v9);
      result = 3;
      break;
    case 4u:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
      OUTLINED_FUNCTION_0_55();
      sub_2697EE4D8(v4 + v6, v7);
      result = 4;
      break;
    case 5u:
      sub_2697EE4D8(v4, type metadata accessor for SignalRecordingContext);
      result = 5;
      break;
    default:
      sub_2697EE4D8(v4, type metadata accessor for SignalRecordingContext);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_2698175E8()
{
  v1 = v0;
  v2 = type metadata accessor for AppDisambiguationContext(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  type metadata accessor for SignalRecordingContext(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = (v9 - v8);
  sub_2697EE474(v1, v9 - v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v12 = v10[5];

      break;
    case 3u:
    case 4u:

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
      sub_26971522C(v10 + *(v11 + 48), v6);
      v12 = *(v6 + *(v2 + 40));

      OUTLINED_FUNCTION_0_55();
      sub_2697EE4D8(v6, v13);
      break;
    case 5u:
      v12 = *v10;
      break;
    default:
      sub_2697EE4D8(v10, type metadata accessor for SignalRecordingContext);
      v12 = 0;
      break;
  }

  return v12;
}

void sub_269817778()
{
  OUTLINED_FUNCTION_19_1();
  v9 = sub_269854F94();
  OUTLINED_FUNCTION_8();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v5 = v4 - v3;
  sub_269854F74();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v7 = sub_269854994();
  v8 = OUTLINED_FUNCTION_8_9(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  sub_2696ADFE4();
  sub_269854974();
  sub_26981A020(&qword_2815718E8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324D40, &unk_269862100);
  sub_269693204(&qword_281571900, &unk_280324D40, &unk_269862100, MEMORY[0x277D83970]);
  sub_269855174();
  (*(v1 + 104))(v5, *MEMORY[0x277D85260], v9);
  sub_269854FB4();
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269817994(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  a2(v5);
}

id sub_269817A14(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = [a1 eventBody];
  if (result)
  {
    v6 = swift_beginAccess();
    MEMORY[0x26D645B90](v6);
    a3(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_269854CF4();
    return swift_endAccess();
  }

  return result;
}

void sub_269817ABC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_269817B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_1();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v22[2] = v34;
  v22[3] = v35;
  v22[4] = v36;
  OUTLINED_FUNCTION_25_3();
  v37 = swift_allocObject();
  v37[2] = v33;
  v37[3] = v31;
  v37[4] = v29;
  v37[5] = v27;
  v37[6] = v25;

  sub_269817778();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A48, &unk_269867F28);
  swift_allocObject();
  v38 = sub_269853B14();

  v23[5] = v38;
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269817C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_19_1();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_7_47();
  v33 = swift_allocObject();
  v33[2] = v28;
  v33[3] = v26;
  v33[4] = v24;
  v33[5] = v22;
  v33[6] = v32;
  v33[7] = v30;

  sub_269853B24();
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269817CC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, void (*a6)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A40, &qword_2698672A8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17[-1] - v12;
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325AE0, &qword_269867F48);
  v17[4] = sub_269693204(&qword_280325AE8, &qword_280325AE0, &qword_269867F48, MEMORY[0x277D842F0]);
  v14 = swift_allocObject();
  v17[0] = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = sub_26981A488;
  v14[6] = 0;
  v14[7] = sub_26981A4A0;
  v14[8] = 0;

  a4(v17);
  __swift_destroy_boxed_opaque_existential_0(v17);
  a6(v13);
  return sub_26969B0C0(v13, &qword_280325A40, &qword_2698672A8);
}

uint64_t sub_269817E54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, void (*a6)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A40, &qword_2698672A8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17[-1] - v12;
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A50, &qword_269867F38);
  v17[4] = sub_269693204(&qword_280325A58, &qword_280325A50, &qword_269867F38, MEMORY[0x277D842F0]);
  v14 = swift_allocObject();
  v17[0] = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = sub_26981A488;
  v14[6] = 0;
  v14[7] = sub_26981A4A0;
  v14[8] = 0;

  a4(v17);
  __swift_destroy_boxed_opaque_existential_0(v17);
  a6(v13);
  return sub_26969B0C0(v13, &qword_280325A40, &qword_2698672A8);
}

uint64_t sub_269817FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 40);
  a3[3] = &type metadata for LastAppSignal;
  a3[4] = sub_269819F50();
  OUTLINED_FUNCTION_7_47();
  v9 = swift_allocObject();
  *a3 = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v7;
  v9[5] = v8;
  v9[6] = sub_269801F50;
  v9[7] = 0;
}

uint64_t sub_26981808C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_12_31(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A40, &qword_2698672A8);
  v10 = OUTLINED_FUNCTION_8_9(v9);
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6_49();
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    sub_26969B0C0(v6, &qword_280325A40, &qword_2698672A8);
    return -1;
  }

  sub_26981A1B8(v6, v5, type metadata accessor for AppLifecycle);
  v14 = *v5 == v4 && v5[1] == v23;
  if (!v14 && (sub_269855584() & 1) == 0)
  {
    sub_269819FA4(v5);
    return -1;
  }

  (*(v22 + 24))();
  sub_269851CB4();
  v15 = OUTLINED_FUNCTION_11_38();
  v16(v15);
  v17 = OUTLINED_FUNCTION_10_32();
  if (v18)
  {
    v19 = v17 <= -9.22337204e18;
  }

  else
  {
    v19 = 1;
  }

  v20 = llround(v7);
  if (v19)
  {
    v13 = -1;
  }

  else
  {
    v13 = v20;
  }

  sub_269819FA4(v5);
  return v13;
}

uint64_t sub_269818290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 40);
  a4[3] = &type metadata for LastAppSignal;
  a4[4] = sub_269819F50();
  OUTLINED_FUNCTION_7_47();
  v11 = swift_allocObject();
  *a4 = v11;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v9;
  v11[5] = v10;
  v11[6] = a3;
  v11[7] = v4;
}

uint64_t sub_26981833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_12_31(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A40, &qword_2698672A8);
  v10 = OUTLINED_FUNCTION_8_9(v9);
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6_49();
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    sub_26969B0C0(v6, &qword_280325A40, &qword_2698672A8);
    return -1;
  }

  sub_26981A1B8(v6, v5, type metadata accessor for AppLifecycle);
  v14 = *v5 == v4 && v5[1] == v23;
  if (!v14 && (sub_269855584() & 1) == 0)
  {
    sub_269819FA4(v5);
    return -1;
  }

  (*(v22 + 24))();
  sub_269851CB4();
  v15 = OUTLINED_FUNCTION_11_38();
  v16(v15);
  v17 = OUTLINED_FUNCTION_10_32();
  if (v18)
  {
    v19 = v17 <= -9.22337204e18;
  }

  else
  {
    v19 = 1;
  }

  v20 = llround(v7);
  if (v19)
  {
    v13 = -1;
  }

  else
  {
    v13 = v20;
  }

  sub_269819FA4(v5);
  return v13;
}

void sub_269818540()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v69 = v2;
  v4 = v3;
  v70 = v5;
  v7 = v6;
  v9 = v8;
  sub_269853914();
  OUTLINED_FUNCTION_8();
  v71 = v11;
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v73 = v13 - v12;

  sub_2697F1EE0(v14);
  v16 = v15;
  v17 = qword_2803226B8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_28033D8E8;
  type metadata accessor for SiriRemembersEntitySignals();
  swift_allocObject();
  OUTLINED_FUNCTION_4_42();

  v19 = OUTLINED_FUNCTION_5_44();
  sub_269805FA8(v19, v20, v21, v18);
  v22 = sub_269806F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324270, &unk_26985F2B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698580D0;
  sub_269806754(sub_26968E738, 0, (inited + 32));
  v24 = swift_allocObject();
  *(v24 + 16) = v9;
  *(v24 + 24) = v7;
  v25 = type metadata accessor for SpotlightRelativeCountSignal();
  swift_allocObject();
  v26 = sub_26980C5B4(v16, 150, sub_269818DC0, v24);
  *(inited + 96) = v25;
  *(inited + 104) = sub_26981A020(&qword_2803259E8, type metadata accessor for SpotlightRelativeCountSignal, &unk_269867960);
  *(inited + 72) = v26;
  v80 = v22;

  sub_26980B8C4(inited);
  v27 = sub_269818DC8(v16);
  sub_26980B8C4(v27);
  v28 = sub_269818FC0(v16);
  sub_26980B8C4(v28);
  v29 = sub_269804ED4(v16);
  sub_26980B8C4(v29);
  v30 = sub_2698041E8(v16);
  sub_26980B8C4(v30);
  matched = type metadata accessor for SiriRemembersPartialMatchEntitySignals();

  v32 = OUTLINED_FUNCTION_5_44();
  sub_2698086DC(v32, v33, v34, 1);
  sub_269809610();
  v36 = v35;

  sub_26980B8C4(v36);

  v37 = OUTLINED_FUNCTION_5_44();
  sub_2698086DC(v37, v38, v39, 0);
  sub_269809610();
  OUTLINED_FUNCTION_4_42();

  sub_26980B8C4(matched);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803259F0, &qword_269867EC8);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_269858BC0;
  *(v40 + 56) = &type metadata for IntentTypeSignal;
  *(v40 + 64) = sub_2698191B4();
  *(v40 + 32) = 0x7954746E65746E49;
  *(v40 + 40) = 0xEA00000000006570;
  *(v40 + 48) = v70 & 1;
  *(v40 + 96) = &type metadata for CurrentNowPlayingAppSignal;
  *(v40 + 104) = sub_269819208();
  strcpy((v40 + 72), "NowPlayingApp");
  *(v40 + 86) = -4864;
  *(v40 + 88) = v4;
  *(v40 + 136) = &type metadata for CurrentNowPlayingStateSignal;
  *(v40 + 144) = sub_26981925C();
  *(v40 + 112) = 0x6979616C50776F4ELL;
  *(v40 + 120) = 0xEF6574617453676ELL;
  if (v1)
  {
    *(v40 + 176) = &type metadata for SpecifiedAppSignal;
    *(v40 + 184) = sub_269819EFC();
    OUTLINED_FUNCTION_25_3();
    v41 = swift_allocObject();
    *(v40 + 152) = v41;
    v41[2] = v69;
    v41[3] = v1;
    v41[4] = v4;
    v41[5] = 0x64657463656C6553;
    v41[6] = 0xEB00000000707041;
  }

  else
  {
    *(v40 + 184) = 0;
    *(v40 + 168) = 0u;
    *(v40 + 152) = 0u;
  }

  *(v40 + 216) = &type metadata for SupportedMediaCategoriesSignal;
  *(v40 + 224) = sub_2698192B0();
  v42 = swift_allocObject();
  *(v40 + 192) = v42;
  v42[8] = &type metadata for LSApplicationRecordProvider;
  v42[9] = &xmmword_287A41430;
  v42[2] = 0xD000000000000018;
  v42[3] = 0x800000026987AD30;
  swift_bridgeObjectRetain_n();

  sub_2697F1EE0(v4);
  v42[4] = v43;
  v44 = MEMORY[0x277D84F90];
  for (i = 32; i != 232; i += 40)
  {
    sub_26969B138(v40 + i, &v77, &qword_280325A18, &unk_269867ED0);
    v74[0] = v77;
    v74[1] = v78;
    v75 = v79;
    if (*(&v78 + 1))
    {
      sub_26968E5D4(v74, v76);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26977C2B4(0, *(v44 + 16) + 1, 1, v44);
        v44 = v48;
      }

      v47 = *(v44 + 16);
      v46 = *(v44 + 24);
      v42 = (v47 + 1);
      if (v47 >= v46 >> 1)
      {
        sub_26977C2B4(v46 > 1, v47 + 1, 1, v44);
        v44 = v49;
      }

      *(v44 + 16) = v42;
      sub_26968E5D4(v76, v44 + 40 * v47 + 32);
    }

    else
    {
      sub_26969B0C0(v74, &qword_280325A18, &unk_269867ED0);
    }
  }

  swift_setDeallocating();
  sub_269819DE8(&qword_280325A18, &unk_269867ED0);
  sub_269853AF4();
  swift_allocObject();
  sub_269853AE4();
  sub_269853AC4();
  OUTLINED_FUNCTION_4_42();

  v50 = sub_269853B04();
  v51 = MEMORY[0x277D603C0];
  *(&v78 + 1) = v50;
  v79 = MEMORY[0x277D603C0];
  __swift_allocate_boxed_opaque_existential_1(&v77);
  sub_269853AD4();

  v52 = sub_269853A84();
  __swift_destroy_boxed_opaque_existential_0(&v77);
  sub_26974CDB0(v52);
  OUTLINED_FUNCTION_4_42();

  v53 = sub_269853A54();
  v54 = sub_26974CDB0(v53);

  v55 = sub_269853A74();
  v56 = sub_26974CDB0(v55);

  sub_26980B8C4(v56);
  sub_26980B8C4(v42);
  swift_allocObject();
  sub_269853AE4();
  sub_269853AC4();
  OUTLINED_FUNCTION_4_42();

  *(&v78 + 1) = v50;
  v79 = v51;
  __swift_allocate_boxed_opaque_existential_1(&v77);
  sub_269853AD4();

  v57 = sub_269853A64();
  __swift_destroy_boxed_opaque_existential_0(&v77);
  sub_26974CDB0(v57);
  OUTLINED_FUNCTION_4_42();

  sub_26980B8C4(v42);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_269858BC0;
  (*(v71 + 104))(v73, *MEMORY[0x277D60238], v72);
  v59 = sub_269853934();
  v60 = MEMORY[0x277D60240];
  *(v58 + 56) = v59;
  *(v58 + 64) = v60;
  __swift_allocate_boxed_opaque_existential_1((v58 + 32));
  sub_269853924();
  v61 = sub_269853A44();
  v62 = MEMORY[0x277D602C0];
  *(v58 + 96) = v61;
  *(v58 + 104) = v62;
  __swift_allocate_boxed_opaque_existential_1((v58 + 72));
  sub_269853A34();
  v63 = sub_2698539F4();
  v64 = MEMORY[0x277D60278];
  *(v58 + 136) = v63;
  *(v58 + 144) = v64;
  __swift_allocate_boxed_opaque_existential_1((v58 + 112));
  sub_2698539E4();
  v65 = sub_269853A14();
  v66 = MEMORY[0x277D60288];
  *(v58 + 176) = v65;
  *(v58 + 184) = v66;
  __swift_allocate_boxed_opaque_existential_1((v58 + 152));
  sub_269853A04();
  v67 = sub_2698539D4();
  v68 = MEMORY[0x277D60260];
  *(v58 + 216) = v67;
  *(v58 + 224) = v68;
  __swift_allocate_boxed_opaque_existential_1((v58 + 192));
  sub_2698539C4();
  sub_26980B8C4(v58);
  sub_26980B8C4(v44);
  sub_26980B8C4(v54);

  OUTLINED_FUNCTION_21_0();
}

unint64_t sub_2698191B4()
{
  result = qword_2803259F8;
  if (!qword_2803259F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803259F8);
  }

  return result;
}

unint64_t sub_269819208()
{
  result = qword_280325A00;
  if (!qword_280325A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325A00);
  }

  return result;
}

unint64_t sub_26981925C()
{
  result = qword_280325A08;
  if (!qword_280325A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325A08);
  }

  return result;
}

unint64_t sub_2698192B0()
{
  result = qword_280325A10;
  if (!qword_280325A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325A10);
  }

  return result;
}

uint64_t sub_269819304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = sub_269851D34();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  sub_269854E14();
  v18 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v19 = [v18 InFocus];
  v30 = v19;
  swift_unknownObjectRelease();
  sub_269851D24();
  v31 = v16;
  sub_269851CC4();
  v32 = *(v11 + 8);
  v32(v14, v10);
  (*(v11 + 16))(v9, v16, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
  v20 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v21 = sub_269819BAC(v9, v7, 0, 5000, 0);
  v22 = [v19 publisherWithOptions_];
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x277D84F90];
  v24 = swift_allocObject();
  v24[2] = sub_269693184;
  v24[3] = v17;
  v24[4] = v23;
  v37 = sub_26981A438;
  v38 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_26981A49C;
  v36 = &block_descriptor_56_0;
  v25 = _Block_copy(&aBlock);

  v37 = sub_26981A230;
  v38 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_26981A49C;
  v36 = &block_descriptor_59_0;
  v26 = _Block_copy(&aBlock);

  v27 = [v22 sinkWithCompletion:v25 receiveInput:v26];
  _Block_release(v26);
  _Block_release(v25);

  v32(v31, v10);
}

uint64_t sub_269819758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = sub_269851D34();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  sub_269854E14();
  v18 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v19 = [v18 NowPlaying];
  v30 = v19;
  swift_unknownObjectRelease();
  sub_269851D24();
  v31 = v16;
  sub_269851CC4();
  v32 = *(v11 + 8);
  v32(v14, v10);
  (*(v11 + 16))(v9, v16, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
  v20 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v21 = sub_269819BAC(v9, v7, 0, 5000, 0);
  v22 = [v19 publisherWithOptions_];
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x277D84F90];
  v24 = swift_allocObject();
  v24[2] = sub_269693A40;
  v24[3] = v17;
  v24[4] = v23;
  v37 = sub_26981A48C;
  v38 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_26981A49C;
  v36 = &block_descriptor_27;
  v25 = _Block_copy(&aBlock);

  v37 = sub_26981A230;
  v38 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_26981A49C;
  v36 = &block_descriptor_32_0;
  v26 = _Block_copy(&aBlock);

  v27 = [v22 sinkWithCompletion:v25 receiveInput:v26];
  _Block_release(v26);
  _Block_release(v25);

  v32(v31, v10);
}

id sub_269819BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_269851D34();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_269851CD4();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_269851CD4();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_269819CE8()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_1_55();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_269819D84()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_1_55();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_269819DE8(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_1_55();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_269819E48(uint64_t (*a1)(void))
{
  a1(0);
  swift_arrayDestroy();
  v1 = OUTLINED_FUNCTION_1_55();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_269819EC0()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_1_55();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_269819EFC()
{
  result = qword_280325A20;
  if (!qword_280325A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325A20);
  }

  return result;
}

unint64_t sub_269819F50()
{
  result = qword_280325A38;
  if (!qword_280325A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325A38);
  }

  return result;
}

uint64_t sub_269819FA4(uint64_t a1)
{
  v2 = type metadata accessor for AppLifecycle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26981A020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26981A074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280325A60, &qword_2698672B0);
  v5 = OUTLINED_FUNCTION_8_9(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_26969B138(a1, &v10 - v6, &unk_280325A60, &qword_2698672B0);
  v8 = type metadata accessor for AppEvent(0);
  result = __swift_getEnumTagSinglePayload(v7, 1, v8);
  if (result != 1)
  {
    return sub_26981A1B8(v7, a2, type metadata accessor for AppEvent);
  }

  __break(1u);
  return result;
}

uint64_t sub_26981A154(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26981A1B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_13Tm()
{

  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t objectdestroy_16Tm()
{

  OUTLINED_FUNCTION_7_47();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_28Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_6_49()
{

  return sub_26969B138(v1, v2, v3, v0);
}

uint64_t OUTLINED_FUNCTION_12_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 112) = a4;
  *(v4 - 104) = a2;

  return sub_269851D34();
}

uint64_t OUTLINED_FUNCTION_14_31()
{

  return type metadata accessor for AppLifecycle(0);
}

uint64_t sub_26981A578(char a1)
{
  result = 1852402994;
  switch(a1)
  {
    case 1:
      result = 0x6E696D3031;
      break;
    case 2:
      result = 7497777;
      break;
    case 3:
      result = 7497782;
      break;
    case 4:
      result = 2036425777;
      break;
    case 5:
      result = 2036425783;
      break;
    case 6:
      result = 0x7961643832;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26981A618(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_269855584() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_26981A6A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 16);
      v7 = *(v4 - 1);
      v6 = *v4;
      v8 = *(v3 - 16);
      v10 = *(v3 - 1);
      v9 = *v3;
      if (*(v4 - 4) == *(v3 - 4) && *(v4 - 3) == *(v3 - 3))
      {
        if (v5 != v8 || v7 != v10 || v6 != v9)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_269855584();
        result = 0;
        if ((v12 & 1) == 0)
        {
          return result;
        }

        v14 = v5 == v8 && v7 == v10;
        if (!v14 || v6 != v9)
        {
          return result;
        }
      }

      v4 += 5;
      v3 += 5;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t DisambiguationItemsModel.prompt.setter()
{
  OUTLINED_FUNCTION_22_20();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t DisambiguationItemsModel.items.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_26981A870(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002698810B0 == a2;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_269855584();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26981A980(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x74706D6F7270;
  }

  return 0x736D657469;
}

uint64_t sub_26981A9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26981A870(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26981AA04(uint64_t a1)
{
  v2 = sub_26981AC18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26981AA40(uint64_t a1)
{
  v2 = sub_26981AC18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DisambiguationItemsModel.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325AF8, &qword_269867FD0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_21_2();
  v2 = sub_26981AC18();
  OUTLINED_FUNCTION_20_1(&type metadata for DisambiguationItemsModel.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_1_56();
  sub_2698554E4();
  if (!v0)
  {
    OUTLINED_FUNCTION_15_3();
    sub_2698554E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B08, &qword_269867FD8);
    sub_26981AEF8(&qword_280325B10, sub_26981AC6C);
    OUTLINED_FUNCTION_15_3();
    sub_269855514();
  }

  v4 = OUTLINED_FUNCTION_27_0();
  return v5(v4);
}

unint64_t sub_26981AC18()
{
  result = qword_280325B00;
  if (!qword_280325B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B00);
  }

  return result;
}

unint64_t sub_26981AC6C()
{
  result = qword_280325B18;
  if (!qword_280325B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B18);
  }

  return result;
}

uint64_t DisambiguationItemsModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B20, &qword_269867FE0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_14();
  v7 = sub_26981AC18();
  OUTLINED_FUNCTION_19_18(&type metadata for DisambiguationItemsModel.CodingKeys, v8, v7);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_14_32();
  v9 = sub_269855464();
  OUTLINED_FUNCTION_17_24(v9);
  OUTLINED_FUNCTION_14_32();
  v14 = sub_269855464();
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B08, &qword_269867FD8);
  sub_26981AEF8(&qword_280325B28, sub_26981AF60);
  sub_269855494();
  v11 = OUTLINED_FUNCTION_0_19();
  v12(v11);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v16;
  a2[1] = v3;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v17;
  return result;
}

uint64_t sub_26981AEF8(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325B08, &qword_269867FD8);
    a2();
    result = OUTLINED_FUNCTION_24_21();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26981AF60()
{
  result = qword_280325B30;
  if (!qword_280325B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B30);
  }

  return result;
}

double sub_26981AFB4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  DisambiguationItemsModel.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

SiriVideoIntents::DisambiguationItem::ItemType_optional __swiftcall DisambiguationItem.ItemType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 4)
  {
    LOBYTE(rawValue) = 4;
  }

  return rawValue;
}

SiriVideoIntents::DisambiguationItem::ItemType_optional sub_26981B02C@<W0>(Swift::Int *a1@<X0>, SiriVideoIntents::DisambiguationItem::ItemType_optional *a2@<X8>)
{
  result.value = DisambiguationItem.ItemType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t DisambiguationItem.title.setter()
{
  OUTLINED_FUNCTION_22_20();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DisambiguationItem.identifier.setter()
{
  OUTLINED_FUNCTION_22_20();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t DisambiguationItem.images.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_26981B288(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_269855584();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_26981B3E0(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x736567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26981B460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26981B288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26981B488(uint64_t a1)
{
  v2 = sub_26981B760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26981B4C4(uint64_t a1)
{
  v2 = sub_26981B760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static DisambiguationItem.__derived_struct_equals(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_9_38(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_269855584() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (sub_269855584() & 1) == 0 || *(v2 + 32) != *(v1 + 32))
  {
    return 0;
  }

  v7 = *(v2 + 40);
  v8 = *(v1 + 40);

  return sub_26981A6A4(v7, v8);
}

uint64_t DisambiguationItem.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B38, &qword_269867FE8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_21_2();
  v2 = sub_26981B760();
  OUTLINED_FUNCTION_20_1(&type metadata for DisambiguationItem.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_1_56();
  sub_2698554E4();
  if (!v0)
  {
    OUTLINED_FUNCTION_15_3();
    sub_2698554E4();
    OUTLINED_FUNCTION_21_21();
    sub_26981B7B4();
    OUTLINED_FUNCTION_15_3();
    sub_269855514();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B50, &qword_269867FF0);
    sub_26981B808(&qword_280325B58, sub_26981B870);
    OUTLINED_FUNCTION_15_3();
    sub_269855514();
  }

  v4 = OUTLINED_FUNCTION_27_0();
  return v5(v4);
}

unint64_t sub_26981B760()
{
  result = qword_280325B40;
  if (!qword_280325B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B40);
  }

  return result;
}

unint64_t sub_26981B7B4()
{
  result = qword_280325B48;
  if (!qword_280325B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B48);
  }

  return result;
}

uint64_t sub_26981B808(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325B50, &qword_269867FF0);
    a2();
    result = OUTLINED_FUNCTION_24_21();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26981B870()
{
  result = qword_280325B60;
  if (!qword_280325B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B60);
  }

  return result;
}

uint64_t DisambiguationItem.hashValue.getter()
{
  sub_269855674();
  sub_269854B34();
  return sub_2698556C4();
}

uint64_t DisambiguationItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B68, &qword_269867FF8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_14();
  v7 = sub_26981B760();
  OUTLINED_FUNCTION_19_18(&type metadata for DisambiguationItem.CodingKeys, v8, v7);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_14_32();
  v9 = sub_269855464();
  OUTLINED_FUNCTION_17_24(v9);
  OUTLINED_FUNCTION_14_32();
  v14 = sub_269855464();
  v15 = v10;
  OUTLINED_FUNCTION_21_21();
  sub_26981BC38();
  sub_269855494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B50, &qword_269867FF0);
  sub_26981B808(&qword_280325B78, sub_26981BC8C);
  OUTLINED_FUNCTION_14_32();
  sub_269855494();
  v11 = OUTLINED_FUNCTION_1_43();
  v12(v11);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v16;
  *(a2 + 8) = v3;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  *(a2 + 40) = v17;
  return result;
}

double sub_26981BB8C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  DisambiguationItem.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_26981BBF0(uint64_t a1)
{
  sub_269855674();
  sub_269854B34();
  return sub_2698556C4();
}

unint64_t sub_26981BC38()
{
  result = qword_280325B70;
  if (!qword_280325B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B70);
  }

  return result;
}

unint64_t sub_26981BC8C()
{
  result = qword_280325B80;
  if (!qword_280325B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B80);
  }

  return result;
}

uint64_t sub_26981BCE0@<X0>(uint64_t *a1@<X8>)
{
  result = DisambiguationItem.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriVideoIntents::DisambiguationImage::ImageType_optional __swiftcall DisambiguationImage.ImageType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

SiriVideoIntents::DisambiguationImage::ImageType_optional sub_26981BD1C@<W0>(Swift::Int *a1@<X0>, SiriVideoIntents::DisambiguationImage::ImageType_optional *a2@<X8>)
{
  result.value = DisambiguationImage.ImageType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t DisambiguationImage.templateUrl.setter()
{
  OUTLINED_FUNCTION_22_20();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_26981BF04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616C706D6574 && a2 == 0xEB000000006C7255;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7079546567616D69 && a2 == 0xE900000000000065;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_269855584();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_26981C060(char a1)
{
  result = 0x6574616C706D6574;
  switch(a1)
  {
    case 1:
      result = 0x7079546567616D69;
      break;
    case 2:
      result = 0x6874646977;
      break;
    case 3:
      result = 0x746867696568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26981C0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26981BF04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26981C118(uint64_t a1)
{
  v2 = sub_26981C368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26981C154(uint64_t a1)
{
  v2 = sub_26981C368();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static DisambiguationImage.__derived_struct_equals(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_9_38(a1);
  v5 = v5 && v3 == v4;
  return (v5 || (sub_269855584() & 1) != 0) && *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24) && *(v2 + 32) == *(v1 + 32);
}

uint64_t DisambiguationImage.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325B88, &qword_269868000);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_21_2();
  v2 = sub_26981C368();
  OUTLINED_FUNCTION_20_1(&type metadata for DisambiguationImage.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_1_56();
  sub_2698554E4();
  if (!v0)
  {
    sub_26981C3BC();
    OUTLINED_FUNCTION_13_29();
    sub_269855514();
    OUTLINED_FUNCTION_21_21();
    OUTLINED_FUNCTION_13_29();
    sub_269855504();
    OUTLINED_FUNCTION_13_29();
    sub_269855504();
  }

  v4 = OUTLINED_FUNCTION_27_0();
  return v5(v4);
}

unint64_t sub_26981C368()
{
  result = qword_280325B90;
  if (!qword_280325B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B90);
  }

  return result;
}

unint64_t sub_26981C3BC()
{
  result = qword_280325B98;
  if (!qword_280325B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325B98);
  }

  return result;
}

uint64_t DisambiguationImage.hashValue.getter()
{
  sub_269855674();
  sub_269854B34();
  return sub_2698556C4();
}

uint64_t DisambiguationImage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325BA0, &qword_269868008);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_14();
  sub_26981C368();
  sub_2698556E4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_4_10();
  v6 = sub_269855464();
  v8 = v7;
  sub_26981C6C8();
  sub_269855494();
  OUTLINED_FUNCTION_21_21();
  OUTLINED_FUNCTION_4_10();
  v13 = sub_269855484();
  OUTLINED_FUNCTION_4_10();
  v9 = sub_269855484();
  v10 = OUTLINED_FUNCTION_2_12();
  v11(v10);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = v9;
  return result;
}

double sub_26981C660@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  DisambiguationImage.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_26981C6C8()
{
  result = qword_280325BA8;
  if (!qword_280325BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BA8);
  }

  return result;
}

unint64_t sub_26981C720()
{
  result = qword_280325BB0;
  if (!qword_280325BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BB0);
  }

  return result;
}

unint64_t sub_26981C778()
{
  result = qword_280325BB8;
  if (!qword_280325BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BB8);
  }

  return result;
}

unint64_t sub_26981C7DC()
{
  result = qword_280325BC0;
  if (!qword_280325BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BC0);
  }

  return result;
}

unint64_t sub_26981C834()
{
  result = qword_280325BC8;
  if (!qword_280325BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BC8);
  }

  return result;
}

uint64_t sub_26981C888@<X0>(uint64_t *a1@<X8>)
{
  result = DisambiguationImage.templateUrl.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *sub_26981C900(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26981C9DC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}