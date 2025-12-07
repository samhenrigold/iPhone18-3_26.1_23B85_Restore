unint64_t sub_23A676530()
{
  result = qword_27DF9C928;
  if (!qword_27DF9C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C928);
  }

  return result;
}

unint64_t sub_23A676584()
{
  result = qword_27DF9C930;
  if (!qword_27DF9C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C930);
  }

  return result;
}

unint64_t sub_23A6765D8()
{
  result = qword_27DF9C938;
  if (!qword_27DF9C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C938);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A676644()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647234;

  return sub_23A673268(v3, v4, v5, v2);
}

uint64_t sub_23A6766D8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647234;

  return sub_23A6734C4(v3, v4, v5, v2);
}

uint64_t sub_23A67676C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647234;

  return sub_23A6736D4(v3, v4, v5, v2);
}

uint64_t sub_23A676800()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647140;

  return sub_23A673A30(v3, v4, v5, v2);
}

void sub_23A67689C(uint64_t a1)
{
  sub_23A6769A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23A6769A4(uint64_t a1)
{
  if (!qword_27DF9C950)
  {
    sub_23A6DE2F4();
    v1 = sub_23A6DF954();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF9C950);
    }
  }
}

uint64_t sub_23A676A2C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return sub_23A671F8C(a1, v3, v4);
}

uint64_t sub_23A676AB0(char a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10) - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = *(v2 + 16);

  return sub_23A6726E0(a1, a2, v8, v6, v7);
}

uint64_t sub_23A676B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v64 = a5;
  v65 = a4;
  v61 = a1;
  v62 = sub_23A6DE7F4();
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v58 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A8, &qword_23A6E12A0);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v50[-v14];
  v16 = sub_23A6DE294();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v50[-v21];
  v57 = *a2;
  v23 = *(a2 + 9);
  v55 = *(a2 + 8);
  v56 = v23;
  v63 = a3;
  sub_23A646D48(a3, v15, &qword_27DF9C7A8, &qword_23A6E12A0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v24 = &qword_27DF9C7A8;
    v25 = &qword_23A6E12A0;
    v26 = v15;
LABEL_5:
    sub_23A646DB0(v26, v24, v25);
    goto LABEL_10;
  }

  (*(v17 + 32))(v22, v15, v16);
  v27 = sub_23A6DCDF0();
  sub_23A646D48(v27, v10, &qword_27DF9D240, qword_23A6E1D30);
  v28 = sub_23A6DECC4();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v10, 1, v28) == 1)
  {
    (*(v17 + 8))(v22, v16);
    v24 = &qword_27DF9D240;
    v25 = qword_23A6E1D30;
    v26 = v10;
    goto LABEL_5;
  }

  (*(v17 + 16))(v19, v22, v16);
  v30 = sub_23A6DECA4();
  v31 = sub_23A6DF8A4();
  if (os_log_type_enabled(v30, v31))
  {
    v52 = swift_slowAlloc();
    v53 = v30;
    v32 = v52;
    v54 = swift_slowAlloc();
    v66 = v54;
    *v32 = 136446210;
    sub_23A6781B0(&qword_27DF9C9A8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v51 = v31;
    v33 = sub_23A6DFBD4();
    v35 = v34;
    v36 = *(v17 + 8);
    v36(v19, v16);
    v37 = sub_23A657E78(v33, v35, &v66);

    v38 = v52;
    v39 = v53;
    *(v52 + 4) = v37;
    v40 = v38;
    _os_log_impl(&dword_23A63D000, v39, v51, "OS deprecation date: %{public}s", v38, 0xCu);
    v41 = v54;
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x23EE8A960](v41, -1, -1);
    MEMORY[0x23EE8A960](v40, -1, -1);

    v36(v22, v16);
  }

  else
  {

    v42 = *(v17 + 8);
    v42(v19, v16);
    v42(v22, v16);
  }

  (*(v29 + 8))(v10, v28);
LABEL_10:
  v43 = v62;
  v45 = v58;
  v44 = v59;
  (*(v59 + 16))(v58, v61, v62);
  v46 = (*(v44 + 88))(v45, v43);
  if (v46 == *MEMORY[0x277D43908])
  {
    (*(v44 + 8))(v45, v43);
    type metadata accessor for PaymentCardReaderSession(0);
    v66 = v57;
    LOBYTE(v67) = v55;
    BYTE1(v67) = v56;
    v47 = v60;
    sub_23A646D48(v63, v60, &qword_27DF9C7A8, &qword_23A6E12A0);

    return sub_23A6947F8(&v66, v47, v65, v64 & 1);
  }

  else if (v46 == *MEMORY[0x277D43900])
  {
    type metadata accessor for StoreAndForwardPaymentCardReaderSession(0);
    v66 = v57;
    LOBYTE(v67) = v55;
    BYTE1(v67) = v56;
    v49 = v60;
    sub_23A646D48(v63, v60, &qword_27DF9C7A8, &qword_23A6E12A0);

    return sub_23A646C3C(&v66, v49, v65, v64 & 1);
  }

  else
  {
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_23A6DFA84();
    MEMORY[0x23EE89BB0](0xD000000000000015, 0x800000023A6E8DD0);
    sub_23A6DFB34();
    result = sub_23A6DFB44();
    __break(1u);
  }

  return result;
}

unint64_t sub_23A677268()
{
  result = qword_27DF9C958;
  if (!qword_27DF9C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C958);
  }

  return result;
}

uint64_t sub_23A6772BC(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_23A6DE2F4() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23A647234;

  return sub_23A668BDC(a1, a2, v8, v2 + v7);
}

uint64_t sub_23A677420()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23A647234;

  return sub_23A66F0A8(v7, v8, v9, v4, v5, v6, v0 + v3);
}

uint64_t sub_23A677544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C900, &qword_23A6E1D20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6775B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_23A6775CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t objectdestroy_165Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_23A677728()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C968, &qword_23A6E2060) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23A647234;

  return sub_23A66EFA4(v7, v8, v9, v4, v5, v6, v0 + v3);
}

uint64_t sub_23A6778BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_23A677990(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C988, &qword_23A6E2090) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = v2 + ((*(v5 + 80) + 33) & ~*(v5 + 80));

  return sub_23A662074(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_23A677A38(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C998, &qword_23A6E20A0);

  return sub_23A6604A4(a1);
}

void sub_23A677AB4(void *a1, uint64_t a2)
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_23A66A000(a1, a2, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32), *(v2 + 40), *(v2 + 48));
}

void sub_23A677B04(void *a1, void *a2)
{
  v5 = *(sub_23A6DE574() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9A0, &unk_23A6E20A8) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_23A6DE7F4() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v2 + v7);
  v14 = v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v14;
  v16 = *(v14 + 8);
  if (*(v14 + 9))
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  sub_23A66A480(a1, a2, v2 + v6, v13, v2 + v9, (v2 + v12), v15, v17 | v16);
}

uint64_t sub_23A677CB0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23A677D24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t objectdestroy_159Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 9, v5 | 7);
}

uint64_t sub_23A677EA4(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_23A66EA0C(a1, *(v3 + 16), *(v3 + 24), v3 + v8, *v9, *(v9 + 8), a2, a3);
}

uint64_t sub_23A677F64()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647234;

  return sub_23A672E9C(v3, v4, v5, v2);
}

uint64_t sub_23A677FF8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_23A65B9BC(a1, a2, a3, v8);
}

uint64_t sub_23A67808C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_23A647234;

  return sub_23A65BBD0(v8, v9, v10, v4, v0 + v3, v6, v7);
}

uint64_t sub_23A6781B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A6782B4()
{
  type metadata accessor for PaymentCardReaderStoreActor(0);
  v0 = swift_allocObject();
  result = sub_23A6786D0();
  qword_27DFA5E90 = v0;
  return result;
}

uint64_t sub_23A6782F4()
{
  v0 = swift_allocObject();
  sub_23A6786D0();
  return v0;
}

uint64_t *sub_23A67832C()
{
  if (qword_27DF9EE00 != -1)
  {
    swift_once();
  }

  return &qword_27DFA5E90;
}

uint64_t sub_23A67837C()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9E0, &unk_23A6E2130);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_23A6783E4()
{
  v0 = [objc_msgSend(objc_opt_self() interfaceWithProtocol_];
  sub_23A6DF844();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA48, &qword_23A6E2398);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23A6E2120;
  v2 = sub_23A6DEA74();
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA50, &qword_23A6E23A0);
  *(v1 + 32) = v2;
  v3 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v4 = sub_23A6DF724();

  [v3 initWithArray_];

  result = sub_23A6DF834();
  __break(1u);
  return result;
}

uint64_t sub_23A6785C4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      sub_23A682460(*(v2 + 48) + 40 * (v11 | (v10 << 6)), v15);
      v12[0] = v15[0];
      v12[1] = v15[1];
      v13 = v16;
      sub_23A67F56C(v14, v12);
      result = sub_23A6824BC(v14);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A6786D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9E8, &qword_23A6E2140);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - v4;
  v6 = sub_23A6DE784();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  type metadata accessor for PaymentReadResultStorageDelegate();
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9E0, &unk_23A6E2130);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F98];
  *(v11 + 24) = 0;
  *(v11 + 16) = v12;
  *(v10 + 16) = v11;
  *(v1 + 112) = v10;
  v13 = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_delegateInterface;
  *(v1 + v13) = sub_23A6783E4();
  *(v1 + OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_requestRunning) = 0;
  sub_23A6DE654();
  v14 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v15 = sub_23A6DF614();

  v16 = [v14 initWithMachServiceName:v15 options:4096];

  (*(v7 + 104))(v9, *MEMORY[0x277D43838], v6);
  v17 = sub_23A6DE774();
  (*(v7 + 8))(v9, v6);
  sub_23A67EFA4();
  swift_allocError();
  *v18 = v17;
  *(v18 + 8) = 0;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9F8, qword_23A6E2148);
  sub_23A6DEA04();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_connection, v5, v2);
  v20 = sub_23A6DEA14();
  [v20 setExportedObject_];

  v21 = sub_23A6DEA14();
  [v21 setExportedInterface_];

  v22 = sub_23A6DEA14();
  v23 = [objc_opt_self() interfaceWithProtocol_];
  [v22 setRemoteObjectInterface_];

  v24 = sub_23A6DEA14();
  [v24 activate];

  return v1;
}

uint64_t sub_23A678A90()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9E8, &qword_23A6E2140);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_23A6DCDF0();
  sub_23A646D48(v9, v8, &qword_27DF9D240, qword_23A6E1D30);
  v10 = sub_23A6DECC4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v12 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v1, 0x74696E696564, 0xE600000000000000, v12, v13);

    (*(v11 + 8))(v8, v10);
  }

  v14 = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_connection;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_connection, v2);
  v15 = sub_23A6DEA14();
  v16 = *(v3 + 8);
  v16(v5, v2);
  [v15 invalidate];

  v16((v1 + v14), v2);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_23A678D14()
{
  sub_23A678A90();

  return swift_defaultActor_deallocate();
}

uint64_t sub_23A678D40(uint64_t a1)
{
  v2[4] = v1;
  v2[5] = a1;
  v3 = sub_23A6DE784();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_23A6DE574();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v2[11] = *(v5 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A678EA8, v1, 0);
}

uint64_t sub_23A678EA8(uint64_t a1)
{
  v2 = *(v1 + 112);
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = *(v1 + 112);
  if (v6 == 1)
  {
    sub_23A646DB0(*(v1 + 112), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = *(v1 + 32);
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD000000000000027, 0x800000023A6E93C0, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v11 = *(v1 + 96);
  v12 = *(v1 + 104);
  v14 = *(v1 + 80);
  v13 = *(v1 + 88);
  v15 = *(v1 + 64);
  v16 = *(v1 + 72);
  v17 = *(v1 + 48);
  v18 = *(v1 + 56);
  v19 = *(v1 + 32);
  sub_23A6DE504();
  (*(v18 + 104))(v15, *MEMORY[0x277D43838], v17);

  v29 = sub_23A6DE774();
  (*(v18 + 8))(v15, v17);
  (*(v14 + 16))(v11, v12, v16);
  *(v1 + 136) = 0;
  v20 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v1 + 120) = v23;
  *(v23 + 16) = v19;
  (*(v14 + 32))(v23 + v20, v11, v16);
  v24 = (v23 + v21);
  *v24 = &unk_23A6E2168;
  v24[1] = v19;
  v25 = (v23 + v22);
  *v25 = 0xD000000000000027;
  v25[1] = 0x800000023A6E93C0;
  v26 = v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v26 = v29;
  *(v26 + 8) = *(v1 + 136);
  swift_retain_n();
  v27 = swift_task_alloc();
  *(v1 + 128) = v27;
  *v27 = v1;
  v27[1] = sub_23A6791DC;

  return sub_23A67DD4C(0xD000000000000027, 0x800000023A6E93C0, 1, 1, &unk_23A6E2178, v23, v1 + 16);
}

uint64_t sub_23A6791DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = v4[4];

    return MEMORY[0x2822009F8](sub_23A6793A0, v6, 0);
  }

  else
  {
    v7 = v4[13];
    v8 = v4[9];
    v9 = v4[10];

    (*(v9 + 8))(v7, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_23A6793A0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);

  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 24);
  *v4 = *(v0 + 16);
  *(v4 + 8) = v5;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23A679474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A679518, a3, 0);
}

uint64_t sub_23A679518()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23A679634;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA28, &qword_23A6E2358);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A679A10;
  v0[13] = &block_descriptor_93;
  v0[14] = v2;
  [v1 fetchStoredPaymentCardReadResultCountWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A679634()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 184);
  if (v2)
  {
    v4 = sub_23A67991C;
  }

  else
  {
    v4 = sub_23A679754;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A679754(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[18];
  v4 = sub_23A6DCDF0();
  sub_23A646D48(v4, v2, &qword_27DF9D240, qword_23A6E1D30);
  v5 = sub_23A6DECC4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    sub_23A646DB0(v1[24], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = sub_23A6DECA4();
    v8 = sub_23A6DF8A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23A63D000, v7, v8, "Result (fetchStoredPaymentCardReadResultCount): success", v9, 2u);
      MEMORY[0x23EE8A960](v9, -1, -1);
    }

    v10 = v1[24];

    (*(v6 + 8))(v10, v5);
  }

  v1[20] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA30, &unk_23A6E2360);
  sub_23A6DF774();

  v11 = v1[1];

  return v11();
}

uint64_t sub_23A67991C(uint64_t a1)
{
  v2 = v1[25];
  swift_willThrow();
  sub_23A67EFA4();
  v3 = swift_allocError();
  sub_23A67E358(v2, 0xD000000000000027, 0x800000023A6E93C0, v4);
  v1[19] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA30, &unk_23A6E2360);
  sub_23A6DF764();

  v5 = v1[1];

  return v5();
}

uint64_t sub_23A679A10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_23A679ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[17] = a3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_23A6DE784();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = sub_23A6DE574();
  v4[21] = v6;
  v7 = *(v6 - 8);
  v4[22] = v7;
  v4[23] = *(v7 + 64);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A679C78, v3, 0);
}

uint64_t sub_23A679C78(uint64_t a1)
{
  v67 = v1;
  v2 = *(v1 + 240);
  v3 = sub_23A6DCDF0();
  *(v1 + 248) = v3;
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  *(v1 + 256) = v4;
  v5 = *(v4 - 8);
  *(v1 + 264) = v5;
  v6 = *(v5 + 48);
  *(v1 + 272) = v6;
  *(v1 + 280) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v65 = v6;
  v7 = v6(v2, 1, v4);
  v8 = *(v1 + 240);
  if (v7 == 1)
  {
    sub_23A646DB0(*(v1 + 240), &qword_27DF9D240, qword_23A6E1D30);
    v9 = *(v1 + 120);
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v23 = *(v1 + 232);
    sub_23A646D48(v3, v23, &qword_27DF9D240, qword_23A6E1D30);
    if (v65(v23, 1, v4) == 1)
    {
      sub_23A646DB0(*(v1 + 232), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v36 = sub_23A6DECA4();
      v37 = sub_23A6DF884();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = *(v1 + 120);
        v39 = v5;
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        *(v40 + 4) = v38;
        _os_log_impl(&dword_23A63D000, v36, v37, "Requested batch size is not valid: [%ld]", v40, 0xCu);
        v41 = v40;
        v5 = v39;
        MEMORY[0x23EE8A960](v41, -1, -1);
      }

      v42 = *(v1 + 232);

      (*(v5 + 8))(v42, v4);
    }

    v43 = *(v1 + 136);
    *v43 = 6;
    *(v43 + 8) = 1;
    *(v1 + 80) = 6;
    *(v1 + 88) = 1;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();
    goto LABEL_20;
  }

  v20 = *(v1 + 128);
  v21 = sub_23A6DCFB0();
  sub_23A6DCFBC(1, v20, 0xD00000000000002CLL, 0x800000023A6E93F0, v21, v22);

  (*(v5 + 8))(v8, v4);
  v9 = *(v1 + 120);
  if (v9 < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v60 = v5;
  v61 = v3;
  v10 = *(v1 + 208);
  v64 = *(v1 + 200);
  v11 = *(v1 + 176);
  v62 = v4;
  v63 = *(v1 + 168);
  v13 = *(v1 + 152);
  v12 = *(v1 + 160);
  v14 = *(v1 + 144);
  v15 = *(v1 + 128);
  sub_23A6DE484();
  v16 = swift_allocObject();
  *(v1 + 288) = v16;
  *(v16 + 16) = v15;
  *(v16 + 24) = v9;
  (*(v13 + 104))(v12, *MEMORY[0x277D43838], v14);

  *(v1 + 296) = sub_23A6DE774();
  (*(v13 + 8))(v12, v14);
  v17 = *(v11 + 16);
  v17(v64, v10, v63);
  v18 = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_requestRunning;
  *(v1 + 304) = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_requestRunning;
  LODWORD(v12) = *(v15 + v18);

  if (v12 == 1)
  {
    v19 = *(v1 + 224);
    sub_23A646D48(v61, v19, &qword_27DF9D240, qword_23A6E1D30);
    if (v65(v19, 1, v62) == 1)
    {
      sub_23A646DB0(*(v1 + 224), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v44 = sub_23A6DECA4();
      v45 = sub_23A6DF884();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v66 = v47;
        *v46 = 136315138;
        v48 = sub_23A66B368(0xD00000000000002CLL, 0x800000023A6E93F0);
        v50 = sub_23A657E78(v48, v49, &v66);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_23A63D000, v44, v45, "Error (%s: a previous request is running, returning busy", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x23EE8A960](v47, -1, -1);
        MEMORY[0x23EE8A960](v46, -1, -1);
      }

      (*(v60 + 8))(*(v1 + 224), v62);
    }

    v51 = *(v1 + 200);
    v52 = *(v1 + 168);
    v53 = *(v1 + 176);
    *(v1 + 64) = 1;
    *(v1 + 72) = 1;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();

    v54 = *(v53 + 8);
    v54(v51, v52);

    v55 = *(v1 + 208);
    v56 = *(v1 + 168);
    v57 = *(v1 + 136);

    v54(v55, v56);
    *v57 = 1;
    *(v57 + 8) = 1;
LABEL_20:

    v58 = *(v1 + 8);

    return v58();
  }

  v25 = *(v1 + 192);
  v24 = *(v1 + 200);
  v27 = *(v1 + 176);
  v26 = *(v1 + 184);
  v28 = *(v1 + 168);
  *(v15 + v18) = 1;
  v17(v25, v24, v28);
  v29 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v30 = (v26 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v1 + 312) = v31;
  (*(v27 + 32))(v31 + v29, v25, v28);
  v32 = (v31 + v30);
  *v32 = &unk_23A6E2198;
  v32[1] = v16;

  v33 = swift_task_alloc();
  *(v1 + 320) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9E8, &qword_23A6E2140);
  *v33 = v1;
  v33[1] = sub_23A67A3E0;
  v35 = *(v1 + 112);

  return MEMORY[0x2821A5668](v35, &unk_23A6E21A8, v31, v34, &type metadata for StoreAndForwardBatch);
}

uint64_t sub_23A67A3E0()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_23A67A638;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_23A67A508;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A67A508()
{
  v1 = v0[38];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[16];

  v7 = *(v4 + 8);
  v7(v3, v5);

  v7(v2, v5);
  *(v6 + v1) = 0;

  v8 = v0[1];

  return v8();
}

uint64_t sub_23A67A638()
{
  v36 = v0;
  v1 = *(v0 + 328);

  *(v0 + 96) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 16);
    *(v0 + 48) = v3;
    v4 = *(v0 + 24);
    *(v0 + 56) = v4;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 248);
    v6 = *(v0 + 256);
    v8 = *(v0 + 216);

    sub_23A646D48(v7, v8, &qword_27DF9D240, qword_23A6E1D30);
    if (v5(v8, 1, v6) == 1)
    {
      sub_23A646DB0(*(v0 + 216), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v9 = *(v0 + 328);
      v10 = v9;
      v11 = sub_23A6DECA4();
      v12 = sub_23A6DF884();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v0 + 328);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v35 = v15;
        *v14 = 136315394;
        v16 = sub_23A66B368(0xD00000000000002CLL, 0x800000023A6E93F0);
        v18 = sub_23A657E78(v16, v17, &v35);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        *(v0 + 104) = v13;
        v19 = v13;
        v20 = sub_23A6DF634();
        v22 = sub_23A657E78(v20, v21, &v35);

        *(v14 + 14) = v22;
        _os_log_impl(&dword_23A63D000, v11, v12, "Error (%s: unexpected error [ %s ]", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EE8A960](v15, -1, -1);
        MEMORY[0x23EE8A960](v14, -1, -1);
      }

      (*(*(v0 + 264) + 8))(*(v0 + 216), *(v0 + 256));
    }

    v23 = *(v0 + 328);
    *(v0 + 32) = *(v0 + 296);
    *(v0 + 40) = 0;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();

    v4 = 0;
    v3 = *(v0 + 296);
  }

  v24 = *(v0 + 304);
  v25 = *(v0 + 200);
  v26 = *(v0 + 168);
  v27 = *(v0 + 176);
  v28 = *(v0 + 128);

  v29 = *(v27 + 8);
  v29(v25, v26);

  *(v28 + v24) = 0;
  v30 = *(v0 + 208);
  v31 = *(v0 + 168);
  v32 = *(v0 + 136);

  v29(v30, v31);
  *v32 = v3;
  *(v32 + 8) = v4;

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_23A67AA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  v6 = sub_23A6DE784();
  v4[40] = v6;
  v4[41] = *(v6 - 8);
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v7 = sub_23A6DE2F4();
  v4[45] = v7;
  v4[46] = *(v7 - 8);
  v4[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A67AB74, a3, 0);
}

uint64_t sub_23A67AB74()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  type metadata accessor for BatchBuilder();
  v0[48] = sub_23A6ABAC8();
  v4 = *(v2 + 112);
  v0[49] = v4;
  (*(*v4 + 88))();
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_23A67ACF0;
  v5 = swift_continuation_init();
  v0[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA38, &qword_23A6E2370);
  v0[19] = MEMORY[0x277D85DD0];
  v0[20] = 1107296256;
  v0[21] = sub_23A66765C;
  v0[22] = &block_descriptor_79;
  v0[23] = v5;
  [v3 fetchStoredPaymentCardReadResultBatchWithSize:v1 completionHandler:v0 + 19];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A67ACF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  v3 = *(v1 + 304);
  if (v2)
  {
    v4 = sub_23A67B324;
  }

  else
  {
    v4 = sub_23A67AE04;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A67AE04()
{
  v42 = v0;
  v1 = *(v0 + 272);
  sub_23A6AB3A0(v1);

  sub_23A6AB5AC(v37);
  v2 = v37[0];
  v3 = v37[1];
  v4 = v39;
  *(v0 + 216) = v38;
  *(v0 + 232) = v4;
  *(v0 + 248) = v40;
  *(v0 + 264) = v41;
  v5 = sub_23A6DCDF0();
  if (v3)
  {
    v6 = *(v0 + 344);
    sub_23A646D48(v5, v6, &qword_27DF9D240, qword_23A6E1D30);
    v7 = sub_23A6DECC4();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_23A646DB0(*(v0 + 344), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v12 = sub_23A6DECA4();
      v13 = sub_23A6DF8A4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23A63D000, v12, v13, "Result (fetchStoredPaymentCardReadResultBatch): success", v14, 2u);
        MEMORY[0x23EE8A960](v14, -1, -1);
      }

      v15 = *(v0 + 344);

      (*(v8 + 8))(v15, v7);
    }

    v16 = *(v0 + 392);
    v18 = *(v0 + 368);
    v17 = *(v0 + 376);
    v19 = *(v0 + 360);
    *(v0 + 80) = v2;
    *(v0 + 88) = v3;
    v20 = *(v0 + 232);
    *(v0 + 96) = *(v0 + 216);
    *(v0 + 112) = v20;
    *(v0 + 128) = *(v0 + 248);
    *(v0 + 144) = *(v0 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA40, &qword_23A6E2378);
    sub_23A6DF774();

    (*(*v16 + 96))(v17);

    (*(v18 + 8))(v17, v19);
  }

  else
  {
    v9 = *(v0 + 352);
    sub_23A646D48(v5, v9, &qword_27DF9D240, qword_23A6E1D30);
    v10 = sub_23A6DECC4();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_23A646DB0(*(v0 + 352), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v21 = sub_23A6DECA4();
      v22 = sub_23A6DF884();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_23A63D000, v21, v22, "Error building batch", v23, 2u);
        MEMORY[0x23EE8A960](v23, -1, -1);
      }

      v24 = *(v0 + 352);

      (*(v11 + 8))(v24, v10);
    }

    v25 = *(v0 + 392);
    v26 = *(v0 + 376);
    v28 = *(v0 + 328);
    v27 = *(v0 + 336);
    v29 = *(v0 + 320);
    (*(v28 + 104))(v27, *MEMORY[0x277D43838], v29);
    v30 = sub_23A6DE774();
    (*(v28 + 8))(v27, v29);
    sub_23A67EFA4();
    v31 = swift_allocError();
    *v32 = v30;
    *(v32 + 8) = 0;
    swift_willThrow();

    (*(*v25 + 96))(v26);

    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
    v33 = swift_allocError();
    sub_23A67E358(v31, 0xD00000000000002CLL, 0x800000023A6E93F0, v34);
    *(v0 + 280) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA40, &qword_23A6E2378);
    sub_23A6DF764();
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_23A67B324(uint64_t a1)
{
  v2 = v1[49];
  v3 = v1[47];
  swift_willThrow();
  (*(*v2 + 96))(v3);

  v4 = v1[50];
  (*(v1[46] + 8))(v1[47], v1[45]);
  sub_23A67EFA4();
  v5 = swift_allocError();
  sub_23A67E358(v4, 0xD00000000000002CLL, 0x800000023A6E93F0, v6);
  v1[35] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA40, &qword_23A6E2378);
  sub_23A6DF764();

  v7 = v1[1];

  return v7();
}

uint64_t sub_23A67B480(uint64_t a1)
{
  v2[12] = v1;
  v2[13] = a1;
  v3 = sub_23A6DE784();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_23A6DE574();
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v2[19] = *(v5 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A67B60C, v1, 0);
}

uint64_t sub_23A67B60C(uint64_t a1)
{
  v56 = v1;
  v2 = *(v1 + 200);
  v3 = sub_23A6DCDF0();
  *(v1 + 208) = v3;
  v53 = v3;
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  *(v1 + 216) = v4;
  v5 = *(v4 - 8);
  *(v1 + 224) = v5;
  v6 = *(v5 + 48);
  *(v1 + 232) = v6;
  *(v1 + 240) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v52 = v6;
  v7 = v6(v2, 1, v4);
  v8 = *(v1 + 200);
  v54 = v4;
  v51 = v5;
  if (v7 == 1)
  {
    sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v9 = *(v1 + 96);
    v10 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v9, 0xD000000000000011, 0x800000023A6E9420, v10, v11);

    (*(v5 + 8))(v8, v4);
  }

  *(v1 + 248) = 0x800000023A6E9420;
  v13 = *(v1 + 168);
  v12 = *(v1 + 176);
  v15 = *(v1 + 136);
  v14 = *(v1 + 144);
  v17 = *(v1 + 120);
  v16 = *(v1 + 128);
  v18 = *(v1 + 112);
  v19 = *(v1 + 96);
  sub_23A6DE494();
  (*(v17 + 104))(v16, *MEMORY[0x277D43838], v18);

  *(v1 + 256) = sub_23A6DE774();
  (*(v17 + 8))(v16, v18);
  v20 = *(v14 + 16);
  v20(v13, v12, v15);
  v21 = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_requestRunning;
  *(v1 + 264) = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_requestRunning;
  LODWORD(v16) = *(v19 + v21);
  swift_retain_n();
  if (v16 == 1)
  {
    v22 = *(v1 + 192);
    sub_23A646D48(v53, v22, &qword_27DF9D240, qword_23A6E1D30);
    if (v52(v22, 1, v54) == 1)
    {
      sub_23A646DB0(*(v1 + 192), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v35 = sub_23A6DECA4();
      v36 = sub_23A6DF884();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v55 = v38;
        *v37 = 136315138;
        v39 = sub_23A66B368(0xD000000000000011, 0x800000023A6E9420);
        v41 = sub_23A657E78(v39, v40, &v55);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_23A63D000, v35, v36, "Error (%s: a previous request is running, returning busy", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x23EE8A960](v38, -1, -1);
        MEMORY[0x23EE8A960](v37, -1, -1);
      }

      (*(v51 + 8))(*(v1 + 192), v54);
    }

    v42 = *(v1 + 168);
    v43 = *(v1 + 136);
    v44 = *(v1 + 144);
    *(v1 + 64) = 1;
    *(v1 + 72) = 1;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();

    v45 = *(v44 + 8);
    v45(v42, v43);

    v46 = *(v1 + 176);
    v47 = *(v1 + 136);
    v48 = *(v1 + 104);

    v45(v46, v47);
    *v48 = 1;
    *(v48 + 8) = 1;

    v49 = *(v1 + 8);

    return v49();
  }

  else
  {
    v24 = *(v1 + 160);
    v23 = *(v1 + 168);
    v26 = *(v1 + 144);
    v25 = *(v1 + 152);
    v27 = *(v1 + 136);
    v28 = *(v1 + 96);
    *(v19 + v21) = 1;
    v20(v24, v23, v27);
    v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v30 = swift_allocObject();
    *(v1 + 272) = v30;
    (*(v26 + 32))(v30 + v29, v24, v27);
    v31 = (v30 + ((v25 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = &unk_23A6E21C8;
    v31[1] = v28;

    v32 = swift_task_alloc();
    *(v1 + 280) = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9E8, &qword_23A6E2140);
    *v32 = v1;
    v32[1] = sub_23A67BBF8;
    v34 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2821A5668](v33, &unk_23A6E21D8, v30, v33, v34);
  }
}

uint64_t sub_23A67BBF8()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = sub_23A67BE3C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_23A67BD20;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A67BD20()
{
  v1 = v0[33];
  v2 = v0[22];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[12];

  v7 = *(v4 + 8);
  v7(v3, v5);

  v7(v2, v5);
  *(v6 + v1) = 0;

  v8 = v0[1];

  return v8();
}

uint64_t sub_23A67BE3C()
{
  v37 = v0;
  v1 = *(v0 + 288);

  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {

    v35 = *(v0 + 16);
    *(v0 + 48) = v35;
    v34 = *(v0 + 24);
    *(v0 + 56) = v34;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();
  }

  else
  {
    v3 = *(v0 + 232);
    v5 = *(v0 + 208);
    v4 = *(v0 + 216);
    v6 = *(v0 + 184);

    sub_23A646D48(v5, v6, &qword_27DF9D240, qword_23A6E1D30);
    if (v3(v6, 1, v4) == 1)
    {
      sub_23A646DB0(*(v0 + 184), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v7 = *(v0 + 288);
      v8 = v7;
      v9 = sub_23A6DECA4();
      v10 = sub_23A6DF884();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(v0 + 288);
        v12 = *(v0 + 248);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v36 = v14;
        *v13 = 136315394;
        v15 = sub_23A66B368(0xD000000000000011, v12);
        v17 = sub_23A657E78(v15, v16, &v36);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2080;
        *(v0 + 88) = v11;
        v18 = v11;
        v19 = sub_23A6DF634();
        v21 = sub_23A657E78(v19, v20, &v36);

        *(v13 + 14) = v21;
        _os_log_impl(&dword_23A63D000, v9, v10, "Error (%s: unexpected error [ %s ]", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EE8A960](v14, -1, -1);
        MEMORY[0x23EE8A960](v13, -1, -1);
      }

      (*(*(v0 + 224) + 8))(*(v0 + 184), *(v0 + 216));
    }

    v22 = *(v0 + 288);
    *(v0 + 32) = *(v0 + 256);
    *(v0 + 40) = 0;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();

    v34 = 0;
    v35 = *(v0 + 256);
  }

  v23 = *(v0 + 264);
  v24 = *(v0 + 168);
  v25 = *(v0 + 136);
  v26 = *(v0 + 144);
  v27 = *(v0 + 96);

  v28 = *(v26 + 8);
  v28(v24, v25);

  *(v27 + v23) = 0;
  v29 = *(v0 + 176);
  v30 = *(v0 + 136);
  v31 = *(v0 + 104);

  v28(v29, v30);
  *v31 = v35;
  *(v31 + 8) = v34;

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_23A67C208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A67C2AC, a3, 0);
}

uint64_t sub_23A67C2AC()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_23A67C3C0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C960, &qword_23A6E2050);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A6697CC;
  v0[13] = &block_descriptor_75;
  v0[14] = v2;
  [v1 resetBatchStateWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A67C3C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 168);
  if (v2)
  {
    v4 = sub_23A67C698;
  }

  else
  {
    v4 = sub_23A67C4E0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A67C4E0(uint64_t a1)
{
  v2 = *(v1 + 176);
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_23A646DB0(*(v1 + 176), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v6 = sub_23A6DECA4();
    v7 = sub_23A6DF8A4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23A63D000, v6, v7, "Result (resetBatchState): success", v8, 2u);
      MEMORY[0x23EE8A960](v8, -1, -1);
    }

    v9 = *(v1 + 176);

    (*(v5 + 8))(v9, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  sub_23A6DF774();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_23A67C698(uint64_t a1)
{
  v2 = v1[23];
  swift_willThrow();
  sub_23A67EFA4();
  v3 = swift_allocError();
  sub_23A67E358(v2, 0xD000000000000011, 0x800000023A6E9420, v4);
  v1[18] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  sub_23A6DF764();

  v5 = v1[1];

  return v5();
}

uint64_t sub_23A67C78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = v3;
  v4[9] = a3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_23A6DE784();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_23A6DE574();
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v4[15] = *(v7 + 64);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A67C8F8, v3, 0);
}

uint64_t sub_23A67C8F8(uint64_t a1)
{
  v2 = *(v1 + 144);
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = *(v1 + 144);
  if (v6 == 1)
  {
    sub_23A646DB0(*(v1 + 144), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = *(v1 + 64);
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD000000000000021, 0x800000023A6E9440, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v12 = *(v1 + 48);
  v11 = *(v1 + 56);
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = *(v1 + 136);
    v15 = *(v1 + 112);
    v16 = *(v1 + 96);
    v34 = *(v1 + 104);
    v35 = *(v1 + 120);
    v18 = *(v1 + 80);
    v17 = *(v1 + 88);
    v36 = *(v1 + 128);
    v19 = *(v1 + 64);
    sub_23A6DE4A4();
    v20 = swift_allocObject();
    *(v1 + 152) = v20;
    v20[2] = v12;
    v20[3] = v11;
    v32 = v19;
    v20[4] = v19;
    (*(v17 + 104))(v16, *MEMORY[0x277D43838], v18);

    v33 = sub_23A6DE774();
    (*(v17 + 8))(v16, v18);
    (*(v15 + 16))(v36, v14, v34);
    *(v1 + 176) = 0;
    v21 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v22 = (v35 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v1 + 160) = v24;
    *(v24 + 16) = v32;
    (*(v15 + 32))(v24 + v21, v36, v34);
    v25 = (v24 + v22);
    *v25 = &unk_23A6E21F0;
    v25[1] = v20;
    v26 = (v24 + v23);
    *v26 = 0xD000000000000021;
    v26[1] = 0x800000023A6E9440;
    v27 = v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v27 = v33;
    *(v27 + 8) = *(v1 + 176);

    v28 = swift_task_alloc();
    *(v1 + 168) = v28;
    *v28 = v1;
    v28[1] = sub_23A67CD24;

    return sub_23A67DD4C(0xD000000000000021, 0x800000023A6E9440, 1, 1, &unk_23A6E21F8, v24, v1 + 16);
  }

  else
  {
    v30 = *(v1 + 72);
    *v30 = 8;
    *(v30 + 8) = 1;
    *(v1 + 32) = 8;
    *(v1 + 40) = 1;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();

    v31 = *(v1 + 8);

    return v31();
  }
}

uint64_t sub_23A67CD24(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = v4[8];

    return MEMORY[0x2822009F8](sub_23A67CEE8, v6, 0);
  }

  else
  {
    v7 = v4[17];
    v8 = v4[13];
    v9 = v4[14];

    (*(v9 + 8))(v7, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_23A67CEE8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 72);

  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 24);
  *v4 = *(v0 + 16);
  *(v4 + 8) = v5;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23A67CFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A67D058, a5, 0);
}

uint64_t sub_23A67D058()
{
  v1 = v0[21];
  v2 = sub_23A6DF614();
  v0[27] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23A67D190;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA28, &qword_23A6E2358);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A679A10;
  v0[13] = &block_descriptor_1;
  v0[14] = v3;
  [v1 resolveBatchWithBatchDeletionToken:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A67D190()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 200);
  if (v2)
  {
    v4 = sub_23A67D47C;
  }

  else
  {
    v4 = sub_23A67D2B0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A67D2B0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);

  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v1, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_23A646DB0(*(v0 + 208), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v6 = sub_23A6DECA4();
    v7 = sub_23A6DF8A4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23A63D000, v6, v7, "Result (resolveBatch): success", v8, 2u);
      MEMORY[0x23EE8A960](v8, -1, -1);
    }

    v9 = *(v0 + 208);

    (*(v5 + 8))(v9, v4);
  }

  *(v0 + 160) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA30, &unk_23A6E2360);
  sub_23A6DF774();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23A67D47C(uint64_t a1)
{
  v3 = v1[27];
  v2 = v1[28];
  swift_willThrow();

  sub_23A67EFA4();
  v4 = swift_allocError();
  sub_23A67E358(v2, 0xD000000000000021, 0x800000023A6E9440, v5);
  v1[19] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA30, &unk_23A6E2360);
  sub_23A6DF764();

  v6 = v1[1];

  return v6();
}

uint64_t sub_23A67D574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 25) = a8;
  *(v8 + 136) = a7;
  *(v8 + 144) = v14;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v8 + 152) = swift_task_alloc();
  v10 = sub_23A6DE574();
  *(v8 + 160) = v10;
  v11 = *(v10 - 8);
  *(v8 + 168) = v11;
  *(v8 + 176) = *(v11 + 64);
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A67D690, a1, 0);
}

uint64_t sub_23A67D690()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[13];
  v5 = v0[14];
  (*(v4 + 16))(v2, v0[12], v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[24] = v9;
  (*(v4 + 32))(v9 + v7, v2, v3);
  v10 = (v9 + v8);
  *v10 = v6;
  v10[1] = v5;

  v11 = swift_task_alloc();
  v0[25] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9E8, &qword_23A6E2140);
  *v11 = v0;
  v11[1] = sub_23A67D824;
  v13 = MEMORY[0x277D83B88];

  return MEMORY[0x2821A5668](v0 + 8, &unk_23A6E2390, v9, v12, v13);
}

uint64_t sub_23A67D824()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_23A67D9C4;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_23A67D94C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A67D94C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23A67D9C4()
{
  v34 = v0;
  v1 = *(v0 + 208);

  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 144);

    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    *v3 = v4;
    *(v3 + 8) = v5;
    *(v0 + 48) = v4;
    *(v0 + 56) = v5;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();
  }

  else
  {
    v6 = *(v0 + 152);

    v7 = sub_23A6DCDF0();
    sub_23A646D48(v7, v6, &qword_27DF9D240, qword_23A6E1D30);
    v8 = sub_23A6DECC4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) == 1)
    {
      sub_23A646DB0(*(v0 + 152), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v10 = *(v0 + 208);
      v11 = v10;

      v12 = sub_23A6DECA4();
      v13 = sub_23A6DF884();

      if (os_log_type_enabled(v12, v13))
      {
        v31 = *(v0 + 208);
        v15 = *(v0 + 120);
        v14 = *(v0 + 128);
        v16 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = v32;
        *v16 = 136315394;
        v17 = sub_23A66B368(v15, v14);
        v19 = sub_23A657E78(v17, v18, &v33);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        *(v0 + 80) = v31;
        v20 = v31;
        v21 = sub_23A6DF634();
        v23 = sub_23A657E78(v21, v22, &v33);

        *(v16 + 14) = v23;
        _os_log_impl(&dword_23A63D000, v12, v13, "Error (%s: unexpected error [ %s ]", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EE8A960](v32, -1, -1);
        MEMORY[0x23EE8A960](v16, -1, -1);
      }

      (*(v9 + 8))(*(v0 + 152), v8);
    }

    v24 = *(v0 + 208);
    v25 = *(v0 + 25);
    v27 = *(v0 + 136);
    v26 = *(v0 + 144);
    *(v0 + 32) = v27;
    v28 = v25 & 1;
    *(v0 + 40) = v25 & 1;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();

    *v26 = v27;
    *(v26 + 8) = v28;
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_23A67DD4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 96) = v7;
  *(v8 + 104) = a7;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  *(v8 + 25) = a4;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  *(v8 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A67DDF8, v7, 0);
}

uint64_t sub_23A67DDF8(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 96);
  v3 = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_requestRunning;
  *(v1 + 120) = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_requestRunning;
  if (*(v2 + v3) == 1)
  {
    v4 = *(v1 + 112);
    v5 = sub_23A6DCDF0();
    sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_23A646DB0(*(v1 + 112), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {

      v11 = sub_23A6DECA4();
      v12 = sub_23A6DF884();

      if (os_log_type_enabled(v11, v12))
      {
        v14 = *(v1 + 56);
        v13 = *(v1 + 64);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v26 = v16;
        *v15 = 136315138;
        v17 = sub_23A66B368(v14, v13);
        v19 = sub_23A657E78(v17, v18, &v26);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_23A63D000, v11, v12, "Error (%s: a previous request is running, returning busy", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x23EE8A960](v16, -1, -1);
        MEMORY[0x23EE8A960](v15, -1, -1);
      }

      (*(v7 + 8))(*(v1 + 112), v6);
    }

    v20 = *(v1 + 104);
    v21 = *(v1 + 25);
    v22 = *(v1 + 72);
    *(v1 + 32) = v22;
    v23 = v21 & 1;
    *(v1 + 40) = v21 & 1;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();
    *v20 = v22;
    *(v20 + 8) = v23;

    v24 = *(v1 + 8);

    return v24();
  }

  else
  {
    v8 = *(v1 + 80);
    *(v2 + v3) = 1;
    v25 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v1 + 128) = v9;
    *v9 = v1;
    v9[1] = sub_23A67E150;

    return v25(v1 + 48, v1 + 16);
  }
}

uint64_t sub_23A67E150()
{
  v2 = *v1;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_23A67E2D8;
  }

  else
  {
    v4 = sub_23A67E264;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A67E264()
{
  *(v0[12] + v0[15]) = 0;
  v1 = v0[6];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_23A67E2D8()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 24);
  *v2 = *(v0 + 16);
  *(v2 + 8) = v4;
  *(v3 + v1) = 0;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23A67E358@<X0>(void *a1@<X0>, NSObject *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_23A6DE784();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  v64 = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  sub_23A6DE7B4();
  if (swift_dynamicCast())
  {
    v62 = a2;
    v19 = v66;
    sub_23A6DB238(&v64);
    v20 = v64;
    v21 = v65;
    v22 = sub_23A6DCDF0();
    sub_23A646D48(v22, v17, &qword_27DF9D240, qword_23A6E1D30);
    v23 = sub_23A6DECC4();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v17, 1, v23) == 1)
    {

      result = sub_23A646DB0(v17, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {

      v29 = sub_23A6DECA4();
      v30 = sub_23A6DF884();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        LODWORD(v61) = v30;
        v32 = v31;
        v60 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = v63;
        *v32 = 136315394;
        v33 = sub_23A66B368(v62, a3);
        v35 = sub_23A657E78(v33, v34, &v64);
        v62 = v29;
        v36 = a4;
        v37 = v35;

        *(v32 + 4) = v37;
        a4 = v36;
        *(v32 + 12) = 2114;
        sub_23A67EFA4();
        swift_allocError();
        *v38 = v20;
        *(v38 + 8) = v21;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 14) = v39;
        v40 = v60;
        *v60 = v39;
        v41 = v62;
        _os_log_impl(&dword_23A63D000, v62, v61, "Error (%s: %{public}@", v32, 0x16u);
        sub_23A646DB0(v40, &qword_27DF9C8B0, &qword_23A6E4ED0);
        MEMORY[0x23EE8A960](v40, -1, -1);
        v42 = v63;
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x23EE8A960](v42, -1, -1);
        MEMORY[0x23EE8A960](v32, -1, -1);
      }

      else
      {
      }

      result = (*(v24 + 8))(v17, v23);
    }
  }

  else
  {
    v63 = a4;
    v26 = sub_23A6DCDF0();
    sub_23A646D48(v26, v14, &qword_27DF9D240, qword_23A6E1D30);
    v27 = sub_23A6DECC4();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v14, 1, v27) == 1)
    {
      sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v60 = v27;
      v62 = a2;
      v43 = a1;

      v44 = a3;
      v45 = sub_23A6DECA4();
      v46 = sub_23A6DF884();

      v59 = v46;
      v61 = v45;
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v64 = v58;
        *v47 = 136315394;
        v48 = sub_23A66B368(v62, v44);
        v50 = sub_23A657E78(v48, v49, &v64);

        *(v47 + 4) = v50;
        *(v47 + 12) = 2080;
        v66 = a1;
        v51 = a1;
        v52 = sub_23A6DF634();
        v54 = sub_23A657E78(v52, v53, &v64);

        *(v47 + 14) = v54;
        v55 = v61;
        _os_log_impl(&dword_23A63D000, v61, v59, "Error (%s: unexpected error [ %s ]", v47, 0x16u);
        v56 = v58;
        swift_arrayDestroy();
        MEMORY[0x23EE8A960](v56, -1, -1);
        MEMORY[0x23EE8A960](v47, -1, -1);
      }

      else
      {
      }

      (*(v28 + 8))(v14, v60);
    }

    (*(v9 + 104))(v11, *MEMORY[0x277D43838], v8);
    v20 = sub_23A6DE774();
    result = (*(v9 + 8))(v11, v8);
    v21 = 0;
    a4 = v63;
  }

  *a4 = v20;
  *(a4 + 8) = v21;
  return result;
}

void sub_23A67E98C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_23A681B6C((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 24));
}

void sub_23A67E9F4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_23A681BE4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_23A67EA48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23A67EA68, 0, 0);
}

uint64_t sub_23A67EA68()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_23A681CB0((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));

  v3 = v0[1];

  return v3();
}

uint64_t sub_23A67EB28(void *a1, unint64_t a2)
{
  v3 = *a1 + 64;
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a1 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v6 &= v6 - 1;

        sub_23A6AAF7C(a2);
      }

      while (v6);
      continue;
    }
  }
}

uint64_t sub_23A67EDC8(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_23A6DEA74();
  v3[4] = sub_23A6DF734();

  return MEMORY[0x2822009F8](sub_23A67EE64, 0, 0);
}

uint64_t sub_23A67EE64()
{
  v1 = v0[4];
  v2 = *(v0[2] + 16);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_23A682528((v2 + 16));
  v3 = v0[3];
  os_unfair_lock_unlock((v2 + 24));

  v3[2](v3);
  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_23A67EF6C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_23A67EFA4()
{
  result = qword_27DF9C9F0;
  if (!qword_27DF9C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C9F0);
  }

  return result;
}

uint64_t sub_23A67EFF8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23A647234;

  return sub_23A679474(a1, a2, v2);
}

uint64_t sub_23A67F0A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23A647234;

  return v6();
}

uint64_t sub_23A67F188(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23A647140;

  return v7();
}

uint64_t sub_23A67F270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_23A646D48(a3, v23 - v10, &qword_27DF9C7F0, &qword_23A6E25B0);
  v12 = sub_23A6DF7B4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23A646DB0(v11, &qword_27DF9C7F0, &qword_23A6E25B0);
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

  sub_23A6DF7A4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_23A6DF754();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_23A6DF654() + 32;
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

    sub_23A646DB0(a3, &qword_27DF9C7F0, &qword_23A6E25B0);

    return v21;
  }

LABEL_8:
  sub_23A646DB0(a3, &qword_27DF9C7F0, &qword_23A6E25B0);
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

uint64_t sub_23A67F56C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_23A6DFA34();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_23A682460(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x23EE89F30](v16, a2);
      sub_23A6824BC(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_23A6824BC(a2);
    sub_23A682460(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23A682460(a2, v16);
    v15 = *v3;
    sub_23A67F918(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_23A67F6B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA58, &qword_23A6E23A8);
  result = sub_23A6DFA64();
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
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v27 = *v18;
      v28 = *(v18 + 16);
      v29 = *(v18 + 32);
      result = sub_23A6DFA34();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
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
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v27;
      *(v14 + 16) = v28;
      *(v14 + 32) = v29;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23A67F918(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A67F6B8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_23A67FA90();
      goto LABEL_12;
    }

    sub_23A67FC08(v7 + 1);
  }

  v9 = *v3;
  result = sub_23A6DFA34();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_23A682460(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x23EE89F30](v19, v6);
      result = sub_23A6824BC(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23A6DFC44();
  __break(1u);
  return result;
}

void *sub_23A67FA90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA58, &qword_23A6E23A8);
  v2 = *v0;
  v3 = sub_23A6DFA54();
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_23A682460(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

uint64_t sub_23A67FC08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA58, &qword_23A6E23A8);
  result = sub_23A6DFA64();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_23A682460(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v26);
      result = sub_23A6DFA34();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v26[0];
      v15 = v26[1];
      *(v13 + 32) = v27;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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

unint64_t sub_23A67FE34(uint64_t a1)
{
  sub_23A6DE2F4();
  sub_23A682230(&qword_27DF9CA10, MEMORY[0x277CC9600]);
  v2 = sub_23A6DF5D4();

  return sub_23A68080C(a1, v2);
}

uint64_t sub_23A67FEB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23A6DE2F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA18, &qword_23A6E2350);
  v39 = v4;
  result = sub_23A6DFB74();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_23A682230(&qword_27DF9CA10, MEMORY[0x277CC9600]);
      result = sub_23A6DF5D4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_23A680280(int64_t a1, uint64_t a2)
{
  v38 = sub_23A6DE2F4();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_23A6DF9C4();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_23A682230(&qword_27DF9CA10, MEMORY[0x277CC9600]);
      v22 = sub_23A6DF5D4();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_23A680588(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23A6DE2F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23A67FE34(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23A6809B8();
      goto LABEL_7;
    }

    sub_23A67FEB8(v17, a3 & 1);
    v22 = sub_23A67FE34(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_23A680754(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_23A6DFC54();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_23A680754(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23A6DE2F4();
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

unint64_t sub_23A68080C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_23A6DE2F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_23A682230(&qword_27DF9CA20, MEMORY[0x277CC9610]);
      v16 = sub_23A6DF604();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_23A6809B8()
{
  v1 = v0;
  v33 = sub_23A6DE2F4();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA18, &qword_23A6E2350);
  v3 = *v0;
  v4 = sub_23A6DFB64();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_23A680C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = *a8;
  v16 = *(a8 + 8);
  v17 = swift_task_alloc();
  *(v8 + 24) = v17;
  *v17 = v8;
  v17[1] = sub_23A680D30;

  return sub_23A67D574(a2, a3, a4, a5, a6, a7, v15, v16);
}

uint64_t sub_23A680D30(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

void sub_23A680E54()
{
  sub_23A6DE574();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23A647234;

  JUMPOUT(0x23A680C38);
}

uint64_t sub_23A680FCC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23A647140;

  return sub_23A67AA0C(a1, a2, v7, v6);
}

uint64_t sub_23A68107C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v5[6] = *a1;
  return MEMORY[0x2822009F8](sub_23A6810A8, 0, 0);
}

uint64_t sub_23A6810A8(uint64_t a1)
{
  v2 = v1[4];
  sub_23A6DE544();
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_23A6811A4;
  v4 = v1[6];
  v5 = v1[2];

  return v7(v4, v5);
}

uint64_t sub_23A6811A4()
{

  return MEMORY[0x2822009F8](sub_23A682540, 0, 0);
}

uint64_t sub_23A6812A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v5[6] = *a1;
  return MEMORY[0x2822009F8](sub_23A6812CC, 0, 0);
}

uint64_t sub_23A6812CC(uint64_t a1)
{
  v2 = v1[4];
  sub_23A6DE544();
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_23A6813C8;
  v4 = v1[6];
  v5 = v1[2];

  return v7(v4, v5);
}

uint64_t sub_23A6813C8()
{

  return MEMORY[0x2822009F8](sub_23A6814C4, 0, 0);
}

uint64_t sub_23A6814C4(uint64_t a1)
{
  sub_23A6DE524();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_23A681524(void *a1, uint64_t a2)
{
  v6 = *(sub_23A6DE574() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_23A647234;

  return sub_23A6812A0(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_23A681658(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23A647234;

  return sub_23A67C208(a1, a2, v2);
}

uint64_t sub_23A681700(void *a1, uint64_t a2)
{
  v6 = *(sub_23A6DE574() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_23A647234;

  return sub_23A68107C(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_23A681834(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23A647234;

  return sub_23A67CFB0(a1, a2, v6, v7, v8);
}

uint64_t objectdestroyTm()
{
  v1 = sub_23A6DE574();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

void sub_23A6819F4()
{
  sub_23A6DE574();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23A647140;

  JUMPOUT(0x23A680C38);
}

uint64_t sub_23A681B6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23A6DE2E4();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  result = sub_23A680588(v2, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v7;
  return result;
}

void sub_23A681BE4(uint64_t *a1)
{
  v3 = sub_23A67FE34(*(v1 + 16));
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    v10 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23A6809B8();
      v7 = v10;
    }

    v8 = *(v7 + 48);
    v9 = sub_23A6DE2F4();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);

    sub_23A680280(v5, v7);
    *a1 = v7;
  }
}

uint64_t type metadata accessor for PaymentCardReaderStoreActor(uint64_t a1)
{
  result = qword_27DF9EEA0;
  if (!qword_27DF9EEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A681D30(uint64_t a1)
{
  sub_23A681DF0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23A681DF0(uint64_t a1)
{
  if (!qword_27DF9CA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9C9F8, qword_23A6E2148);
    v1 = sub_23A6DEA24();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF9CA00);
    }
  }
}

uint64_t sub_23A681E60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A681E80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_27DF9CA08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DF9CA08);
    }
  }
}

uint64_t sub_23A681EF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A647234;

  return sub_23A67EDC8(v2, v3, v4);
}

uint64_t sub_23A681FAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A647234;

  return sub_23A67F0A0(v2, v3, v4);
}

uint64_t objectdestroy_52Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23A6820AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23A647234;

  return sub_23A67F188(a1, v4, v5, v6);
}

uint64_t sub_23A682178(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A647234;

  return sub_23A64E6E8(a1, v4);
}

uint64_t sub_23A682230(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23A6DE2F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{
  v1 = sub_23A6DE574();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_23A68232C(void *a1, uint64_t a2)
{
  v6 = *(sub_23A6DE574() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_23A647234;

  return sub_23A68107C(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_23A682544()
{
  type metadata accessor for ProximityReaderDiscoveryActor(0);
  v0 = swift_allocObject();
  result = sub_23A68260C();
  qword_27DFA5E98 = v0;
  return result;
}

uint64_t sub_23A682584()
{
  v0 = swift_allocObject();
  sub_23A68260C();
  return v0;
}

uint64_t *sub_23A6825BC()
{
  if (qword_27DF9EEB0 != -1)
  {
    swift_once();
  }

  return &qword_27DFA5E98;
}

uint64_t sub_23A68260C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  swift_defaultActor_initialize();
  *(v0 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_service) = 0;
  *(v0 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_requestRunning) = 0;
  v6 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_bundleManager;
  type metadata accessor for LayoutBundleManager();
  *(v0 + v6) = LayoutBundleManager.__allocating_init()();
  v7 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  type metadata accessor for ProximityReaderDiscoveryAnalyticsManager();
  *(v0 + v7) = sub_23A6C1E6C();
  v8 = (v0 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region);
  *v8 = sub_23A6DEBE4();
  v8[1] = v9;
  sub_23A6DE674();
  v10 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v11 = sub_23A6DF614();

  v12 = [v10 initWithMachServiceName:v11 options:4096];

  sub_23A650718();
  swift_allocError();
  *v13 = 5;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA68, qword_23A6E23F0);
  sub_23A6DEA04();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_connection, v5, v2);
  v15 = sub_23A6DEA14();
  v16 = [objc_opt_self() interfaceWithProtocol_];
  [v15 setRemoteObjectInterface_];

  v17 = sub_23A6DEA14();
  [v17 activate];

  return v1;
}

uint64_t sub_23A68288C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_23A6DCE38();
  sub_23A646D48(v9, v8, &qword_27DF9D240, qword_23A6E1D30);
  v10 = sub_23A6DECC4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v12 = sub_23A6507C0();
    v13 = sub_23A6DCFB0();
    sub_23A6DCFBC(v12 & 1, v1, 0x74696E696564, 0xE600000000000000, v13, v14);

    (*(v11 + 8))(v8, v10);
  }

  v15 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_connection;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_connection, v2);
  v16 = sub_23A6DEA14();
  v17 = *(v3 + 8);
  v17(v5, v2);
  [v16 invalidate];

  v18 = *(**(v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_bundleManager) + 144);

  v18(v19);

  v17((v1 + v15), v2);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_23A682B84()
{
  sub_23A68288C();

  return swift_defaultActor_deallocate();
}

uint64_t sub_23A682BB0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A682CB4, v1, 0);
}

uint64_t sub_23A682CB4(uint64_t a1)
{
  v2 = v1[7];
  v3 = sub_23A6DCE38();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[7];
  if (v6 == 1)
  {
    sub_23A646DB0(v1[7], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v1[3];
    v9 = sub_23A6507C0();
    v10 = sub_23A6DCFB0();
    sub_23A6DCFBC(v9 & 1, v8, 0x28746E65746E6F63, 0xEF293A6369706F74, v10, v11);

    (*(v5 + 8))(v7, v4);
  }

  sub_23A68D8F4(v1[6]);
  v12 = v1[6];
  v13 = swift_task_alloc();
  v1[8] = v13;
  *(v13 + 16) = v12;
  v14 = swift_task_alloc();
  v1[9] = v14;
  *v14 = v1;
  v14[1] = sub_23A682F18;
  v15 = v1[2];

  return sub_23A68CAB4(v15, 0x28746E65746E6F63, 0xEF293A6369706F74, &unk_23A6E2410, v13);
}

uint64_t sub_23A682F18()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_23A683040;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_23A6920D0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A683040()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23A6830DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23A6830FC, 0, 0);
}

uint64_t sub_23A6830FC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  *v1 = v0;
  v1[1] = sub_23A6831CC;
  v3 = *(v0 + 16);

  return MEMORY[0x2821A5670](v3, sub_23A691EB4, 0, v2, &type metadata for ProximityReaderDiscovery.Content);
}

uint64_t sub_23A6831CC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A650328, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23A683300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB50, &qword_23A6E26E8);
  v5[34] = swift_task_alloc();
  v6 = sub_23A6DE734();
  v5[35] = v6;
  v5[36] = *(v6 - 8);
  v5[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A683448, 0, 0);
}

uint64_t sub_23A683448()
{
  v1 = v0[29];
  sub_23A6DE974();
  sub_23A6DE984();
  v2 = sub_23A6DF614();
  v0[38] = v2;

  v3 = sub_23A6DF614();
  v0[39] = v3;

  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_23A6835CC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB20, &qword_23A6E26B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A683EA8;
  v0[13] = &block_descriptor_134;
  v0[14] = v4;
  [v1 contentWithTopic:v2 subtopic:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A6835CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_23A683A30;
  }

  else
  {
    v2 = sub_23A6836DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23A6836DC()
{
  v27 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);

  sub_23A690358(&qword_27DF9CB38, MEMORY[0x277D43778], MEMORY[0x277D43788]);
  sub_23A6DE204();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v7 = *(v0 + 264);
    sub_23A646DB0(*(v0 + 272), &qword_27DF9CB50, &qword_23A6E26E8);
    v8 = sub_23A6DCE38();
    sub_23A646D48(v8, v7, &qword_27DF9D240, qword_23A6E1D30);
    v9 = sub_23A6DECC4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_23A646DB0(*(v0 + 264), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v16 = sub_23A6DECA4();
      v17 = sub_23A6DF884();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_23A63D000, v16, v17, "content - content is nil", v18, 2u);
        MEMORY[0x23EE8A960](v18, -1, -1);
      }

      v19 = *(v0 + 264);

      (*(v10 + 8))(v19, v9);
    }

    sub_23A650718();
    v20 = swift_allocError();
    *v21 = 5;
    *(v0 + 224) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB48, &qword_23A6E26D0);
    sub_23A6DF764();
    sub_23A691B9C(v5, v6);
  }

  else
  {
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);
    v13 = *(v0 + 280);
    (*(v12 + 32))(v11, *(v0 + 272), v13);
    sub_23A6BB7B8(&v24);
    v14 = v25;
    v15 = v26;
    *(v0 + 144) = v24;
    *(v0 + 160) = v14;
    *(v0 + 168) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB48, &qword_23A6E26D0);
    sub_23A6DF774();
    sub_23A691B9C(v5, v6);
    (*(v12 + 8))(v11, v13);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_23A683A30(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 312);
  v3 = *(v1 + 320);
  v4 = *(v1 + 304);
  swift_willThrow();

  *(v1 + 192) = v3;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {
    v6 = *(v1 + 256);

    v7 = *(v1 + 200);
    v8 = sub_23A6DCE38();
    sub_23A646D48(v8, v6, &qword_27DF9D240, qword_23A6E1D30);
    v9 = sub_23A6DECC4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_23A646DB0(*(v1 + 256), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v15 = sub_23A6DECA4();
      v16 = sub_23A6DF884();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v34 = v18;
        *v17 = 136315138;
        v19 = sub_23A6DE934();
        v21 = sub_23A657E78(v19, v20, &v34);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_23A63D000, v15, v16, "content - error: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x23EE8A960](v18, -1, -1);
        MEMORY[0x23EE8A960](v17, -1, -1);
      }

      (*(v10 + 8))(*(v1 + 256), v9);
    }

    sub_23A650718();
    v22 = swift_allocError();
    sub_23A6BB890(v7, v23);
    *(v1 + 216) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB48, &qword_23A6E26D0);
    sub_23A6DF764();
    v24 = *(v1 + 192);
  }

  else
  {
    v11 = *(v1 + 248);

    v12 = sub_23A6DCE38();
    sub_23A646D48(v12, v11, &qword_27DF9D240, qword_23A6E1D30);
    v13 = sub_23A6DECC4();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13) == 1)
    {
      sub_23A646DB0(*(v1 + 248), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v25 = sub_23A6DECA4();
      v26 = sub_23A6DF884();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_23A63D000, v25, v26, "content - unknown error", v27, 2u);
        MEMORY[0x23EE8A960](v27, -1, -1);
      }

      v28 = *(v1 + 248);

      (*(v14 + 8))(v28, v13);
    }

    v29 = *(v1 + 320);
    sub_23A650718();
    v30 = swift_allocError();
    *v31 = 5;
    *(v1 + 208) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB48, &qword_23A6E26D0);
    sub_23A6DF764();
    v24 = v29;
  }

  v32 = *(v1 + 8);

  return v32();
}

uint64_t sub_23A683EA8(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_23A6DE234();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_23A683F90()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A684094, v0, 0);
}

uint64_t sub_23A684094(uint64_t a1)
{
  v2 = v1[6];
  v3 = sub_23A6DCE38();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[6];
  if (v6 == 1)
  {
    sub_23A646DB0(v1[6], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v1[2];
    v9 = sub_23A6507C0();
    v10 = sub_23A6DCFB0();
    sub_23A6DCFBC(v9 & 1, v8, 0x4C746E65746E6F63, 0xED00002928747369, v10, v11);

    (*(v5 + 8))(v7, v4);
  }

  sub_23A68D8F4(v1[5]);
  v12 = v1[5];
  v13 = swift_task_alloc();
  v1[7] = v13;
  *(v13 + 16) = v12;
  v14 = swift_task_alloc();
  v1[8] = v14;
  *v14 = v1;
  v14[1] = sub_23A6842F8;

  return sub_23A68D020(0x4C746E65746E6F63, 0xED00002928747369, &unk_23A6E2430, v13);
}

uint64_t sub_23A6842F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = *(v4 + 16);
    v6 = sub_23A6844C4;
  }

  else
  {
    v7 = *(v4 + 16);
    *(v4 + 80) = a1;

    v6 = sub_23A684438;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A684438()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_23A6844C4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23A684560(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB10, &qword_23A6E2698);
  *v3 = v1;
  v3[1] = sub_23A647140;

  return MEMORY[0x2821A5670](a1, sub_23A684654, 0, v4, v5);
}

uint64_t sub_23A684684(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v16 = *a1;
  v17 = sub_23A6DF7B4();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  (*(v10 + 16))(v12, a2, v9);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v16;
  (*(v10 + 32))(&v19[v18], v12, v9);
  swift_unknownObjectRetain();
  sub_23A64A15C(0, 0, v15, a6, v19);
}

uint64_t sub_23A684868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v6 = sub_23A6DE734();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A684978, 0, 0);
}

uint64_t sub_23A684978()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23A684A94;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB20, &qword_23A6E26B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A683EA8;
  v0[13] = &block_descriptor_123;
  v0[14] = v2;
  [v1 contentListWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A684A94()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_23A684F58;
  }

  else
  {
    v2 = sub_23A684BA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23A684BA4()
{
  v36 = v0;
  v1 = v0[18];
  v2 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB28, &qword_23A6E26C0);
  sub_23A691E00();
  sub_23A6DE204();
  v3 = v0[24];
  if (v3)
  {
    v30 = v2;
    v31 = v1;
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v0[30];
      v33 = *(v5 + 16);
      v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v32 = *(v5 + 72);
      v7 = (v5 + 8);
      v8 = MEMORY[0x277D84F90];
      v34 = v0;
      do
      {
        v9 = v0[31];
        v10 = v0[29];
        v33(v9, v6, v10);
        sub_23A6BB7B8(v35);
        (*v7)(v9, v10);
        v12 = v35[0];
        v11 = v35[1];
        v13 = v35[2];
        v14 = v35[3];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_23A68FF4C(0, *(v8 + 2) + 1, 1, v8);
        }

        v16 = *(v8 + 2);
        v15 = *(v8 + 3);
        if (v16 >= v15 >> 1)
        {
          v8 = sub_23A68FF4C((v15 > 1), v16 + 1, 1, v8);
        }

        *(v8 + 2) = v16 + 1;
        v17 = &v8[32 * v16];
        *(v17 + 4) = v12;
        *(v17 + 5) = v11;
        *(v17 + 6) = v13;
        *(v17 + 7) = v14;
        v6 += v32;
        --v4;
        v0 = v34;
      }

      while (v4);
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v0[26] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB18, &qword_23A6E26A0);
    sub_23A6DF774();
    v2 = v30;
    v1 = v31;
  }

  else
  {
    v18 = v0[34];
    v19 = sub_23A6DCE38();
    sub_23A646D48(v19, v18, &qword_27DF9D240, qword_23A6E1D30);
    v20 = sub_23A6DECC4();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v18, 1, v20) == 1)
    {
      sub_23A646DB0(v0[34], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v22 = sub_23A6DECA4();
      v23 = sub_23A6DF884();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_23A63D000, v22, v23, "contentList - content list is nil", v24, 2u);
        MEMORY[0x23EE8A960](v24, -1, -1);
      }

      v25 = v0[34];

      (*(v21 + 8))(v25, v20);
    }

    sub_23A650718();
    v26 = swift_allocError();
    *v27 = 5;
    v0[25] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB18, &qword_23A6E26A0);
    sub_23A6DF764();
  }

  sub_23A691B9C(v1, v2);

  v28 = v0[1];

  return v28();
}

uint64_t sub_23A684F58(uint64_t a1)
{
  v33 = v1;
  v2 = *(v1 + 280);
  swift_willThrow();
  *(v1 + 160) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {
    v4 = *(v1 + 264);

    v5 = *(v1 + 168);
    v6 = sub_23A6DCE38();
    sub_23A646D48(v6, v4, &qword_27DF9D240, qword_23A6E1D30);
    v7 = sub_23A6DECC4();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      sub_23A646DB0(*(v1 + 264), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v13 = sub_23A6DECA4();
      v14 = sub_23A6DF884();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v32 = v16;
        *v15 = 136315138;
        v17 = sub_23A6DE934();
        v19 = sub_23A657E78(v17, v18, &v32);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_23A63D000, v13, v14, "contentList - error: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x23EE8A960](v16, -1, -1);
        MEMORY[0x23EE8A960](v15, -1, -1);
      }

      (*(v8 + 8))(*(v1 + 264), v7);
    }

    sub_23A650718();
    v20 = swift_allocError();
    sub_23A6BB890(v5, v21);
    *(v1 + 184) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB18, &qword_23A6E26A0);
    sub_23A6DF764();
    v22 = *(v1 + 160);
  }

  else
  {
    v9 = *(v1 + 256);

    v10 = sub_23A6DCE38();
    sub_23A646D48(v10, v9, &qword_27DF9D240, qword_23A6E1D30);
    v11 = sub_23A6DECC4();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_23A646DB0(*(v1 + 256), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v23 = sub_23A6DECA4();
      v24 = sub_23A6DF884();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_23A63D000, v23, v24, "contentList - unknown error", v25, 2u);
        MEMORY[0x23EE8A960](v25, -1, -1);
      }

      v26 = *(v1 + 256);

      (*(v12 + 8))(v26, v11);
    }

    v27 = *(v1 + 280);
    sub_23A650718();
    v28 = swift_allocError();
    *v29 = 5;
    *(v1 + 176) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB18, &qword_23A6E26A0);
    sub_23A6DF764();
    v22 = v27;
  }

  v30 = *(v1 + 8);

  return v30();
}

uint64_t sub_23A6853B8(uint64_t *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 - 8);
  *(v3 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6 = swift_task_alloc();
  v7 = *a1;
  *(v3 + 56) = v6;
  *(v3 + 64) = v7;
  *(v3 + 72) = *(a1 + 1);
  *(v3 + 88) = a1[3];

  return MEMORY[0x2822009F8](sub_23A6854D4, v2, 0);
}

uint64_t sub_23A6854D4(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = sub_23A6DCE38();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = *(v1 + 56);
  if (v6 == 1)
  {
    sub_23A646DB0(*(v1 + 56), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = *(v1 + 24);
    v9 = sub_23A6507C0();
    v10 = sub_23A6DCFB0();
    sub_23A6DCFBC(v9 & 1, v8, 0xD000000000000017, 0x800000023A6E9730, v10, v11);

    (*(v5 + 8))(v7, v4);
  }

  sub_23A68D8F4(*(v1 + 48));
  v12 = *(v1 + 88);
  v20 = *(v1 + 72);
  v13 = *(v1 + 64);
  v14 = *(v1 + 48);
  v16 = *(v1 + 16);
  v15 = *(v1 + 24);
  v17 = swift_task_alloc();
  *(v1 + 96) = v17;
  *(v17 + 16) = v15;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = v13;
  *(v17 + 48) = v20;
  *(v17 + 64) = v12;
  v18 = swift_task_alloc();
  *(v1 + 104) = v18;
  *v18 = v1;
  v18[1] = sub_23A685748;

  return sub_23A68D3F4(v18, 0xD000000000000017, 0x800000023A6E9730, &unk_23A6E2450, v17);
}

uint64_t sub_23A685748()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_23A6858F8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_23A685870;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A685870()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A6858F8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23A685994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  return MEMORY[0x2822009F8](sub_23A6859BC, a2, 0);
}

uint64_t sub_23A6859BC()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  v7 = sub_23A6DEBE4();
  v8 = (v6 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region);
  *v8 = v7;
  v8[1] = v9;

  v10 = swift_allocObject();
  v0[9] = v10;
  v10[2] = v6;
  v10[3] = v5;
  v10[4] = v4;
  v10[5] = v3;
  v10[6] = v2;
  v10[7] = v1;

  v11 = v5;

  v12 = swift_task_alloc();
  v0[10] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  *v12 = v0;
  v12[1] = sub_23A685B20;
  v14 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821A5670](v13, sub_23A691400, v10, v13, v14);
}

uint64_t sub_23A685B20()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_23A685C60;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_23A685C48;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A685C60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A685CC4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v33 = a8;
  v30 = a5;
  v31 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v28 - v17;
  v29 = &v28 - v17;
  v19 = *a1;
  v20 = sub_23A6DF7B4();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  v21 = v12;
  (*(v13 + 16))(v15, a2, v12);
  v22 = (*(v13 + 80) + 88) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = a3;
  *(v23 + 5) = a4;
  v24 = v31;
  *(v23 + 6) = v30;
  *(v23 + 7) = v24;
  v25 = v33;
  *(v23 + 8) = v32;
  *(v23 + 9) = v25;
  *(v23 + 10) = v19;
  (*(v13 + 32))(&v23[v22], v15, v21);

  v26 = a4;

  swift_unknownObjectRetain();
  sub_23A64A15C(0, 0, v29, &unk_23A6E25F0, v23);
}

uint64_t sub_23A685F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v17;
  *(v8 + 56) = v16;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  *(v8 + 80) = v10;
  v11 = *(v10 - 8);
  *(v8 + 88) = v11;
  *(v8 + 96) = *(v11 + 64);
  *(v8 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  *(v8 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v12 = swift_task_alloc();
  v13 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  *(v8 + 120) = v12;
  *(v8 + 128) = v13;

  return MEMORY[0x2822009F8](sub_23A686074, a4, 0);
}

uint64_t sub_23A686074()
{
  v1 = *(v0[2] + v0[16]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_23A68611C;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return sub_23A68AECC(v5, v3, v4, v1);
}

uint64_t sub_23A68611C(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_23A68621C, 0, 0);
}

uint64_t sub_23A68621C(uint64_t a1)
{
  v2 = v1[18];
  if (v2)
  {
    v4 = v1[13];
    v3 = v1[14];
    v5 = v1[11];
    v7 = v1[9];
    v6 = v1[10];
    v8 = v1[8];
    v41 = v1[7];
    v43 = v3;
    v9 = v1[5];
    v39 = v1[4];
    v40 = v1[6];
    v10 = v1[2];
    v11 = sub_23A6DF7B4();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    (*(v5 + 16))(v4, v7, v6);
    v12 = (*(v5 + 80) + 88) & ~*(v5 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = v8;
    *(v13 + 5) = v39;
    *(v13 + 6) = v9;
    *(v13 + 7) = v40;
    *(v13 + 8) = v41;
    *(v13 + 9) = v10;
    *(v13 + 10) = v2;
    (*(v5 + 32))(&v13[v12], v4, v6);
    swift_unknownObjectRetain();

    v14 = v2;
    v15 = sub_23A64A15C(0, 0, v43, &unk_23A6E2600, v13);
    v1[19] = v15;
    v16 = swift_allocObject();
    v1[20] = v16;
    *(v16 + 16) = v8;
    *(v16 + 24) = v15;
    sub_23A6DF794();
    swift_unknownObjectRetain();

    v1[21] = sub_23A6DF784();
    v18 = sub_23A6DF754();

    return MEMORY[0x2822009F8](sub_23A6866B0, v18, v17);
  }

  else
  {
    v19 = v1[15];
    v20 = sub_23A6DCE38();
    sub_23A646D48(v20, v19, &qword_27DF9D240, qword_23A6E1D30);
    v21 = sub_23A6DECC4();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v19, 1, v21) == 1)
    {
      sub_23A646DB0(v1[15], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v23 = sub_23A6DECA4();
      v24 = sub_23A6DF884();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_23A63D000, v23, v24, "presentContent - unable to create Discovery view controller", v25, 2u);
        MEMORY[0x23EE8A960](v25, -1, -1);
      }

      v26 = v1[15];

      (*(v22 + 8))(v26, v21);
    }

    v27 = v1[13];
    v28 = v1[10];
    v29 = v1[11];
    v30 = v1[8];
    v31 = v1[7];
    v32 = v1[5];
    v42 = v1[4];
    v44 = v1[6];
    v33 = v1[2];
    (*(v29 + 16))(v27, v1[9], v28);
    v34 = (*(v29 + 80) + 64) & ~*(v29 + 80);
    v35 = swift_allocObject();
    v1[22] = v35;
    *(v35 + 2) = v33;
    *(v35 + 3) = v30;
    *(v35 + 4) = v42;
    *(v35 + 5) = v32;
    *(v35 + 6) = v44;
    *(v35 + 7) = v31;
    (*(v29 + 32))(&v35[v34], v27, v28);
    swift_unknownObjectRetain();

    v36 = swift_task_alloc();
    v1[23] = v36;
    *v36 = v1;
    v36[1] = sub_23A6867E4;
    v37 = v1[3];

    return sub_23A68C5B8(v37, sub_23A69152C, v35);
  }
}

uint64_t sub_23A6866B0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  v3 = (v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v4 = *(v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v5 = v3[1];
  *v3 = sub_23A6916C0;
  v3[1] = v1;

  sub_23A677CB0(v4, v5);

  return MEMORY[0x2822009F8](sub_23A686764, 0, 0);
}

uint64_t sub_23A686764()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A6867E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23A686950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v12;
  *(v8 + 272) = v11;
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 240) = a5;
  *(v8 + 248) = a6;
  *(v8 + 232) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  *(v8 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A686A58, 0, 0);
}

uint64_t sub_23A686A58()
{
  v1 = v0[29];

  v2 = sub_23A6DF614();
  v0[41] = v2;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_23A686BA0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAF8, &unk_23A6E2620);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A66765C;
  v0[13] = &block_descriptor_81;
  v0[14] = v3;
  [v1 layoutBundleWithContentId:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A686BA0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 336) = v1;
  if (v1)
  {

    v2 = sub_23A68935C;
  }

  else
  {
    v2 = sub_23A686CB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23A686CB8()
{
  v1 = v0[41];
  v2 = v0[34];
  v0[43] = v0[24];

  v0[44] = sub_23A6DE814();
  v0[45] = v3;

  return MEMORY[0x2822009F8](sub_23A686D34, v2, 0);
}

uint64_t sub_23A686D34()
{
  v1 = v0[45];
  v2 = v0[34];
  v3 = (v2 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region);
  *v3 = v0[44];
  v3[1] = v1;

  v0[46] = *(v2 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_bundleManager);

  return MEMORY[0x2822009F8](sub_23A686DC4, 0, 0);
}

uint64_t sub_23A686DC4()
{
  v1 = v0[46];
  v2 = sub_23A6DE804();
  v4 = v3;
  v0[47] = v3;
  v7 = (*(*v1 + 136) + **(*v1 + 136));
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_23A686F08;

  return v7(v2, v4);
}

uint64_t sub_23A686F08(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[49] = a2;
  v5[50] = v2;

  if (v2)
  {

    v6 = sub_23A6896B8;
    v7 = 0;
  }

  else
  {
    v8 = v5[34];

    v5[51] = a1;
    v6 = sub_23A68706C;
    v7 = v8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_23A68706C()
{
  v1 = v0[50];
  v0[52] = sub_23A690688(v0[51], v0[49], v0[30], v0[31]);
  v0[53] = v1;
  if (v1)
  {

    v2 = sub_23A687710;
  }

  else
  {
    v2 = sub_23A687110;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23A687110()
{
  *(v0 + 432) = sub_23A6DF794();
  *(v0 + 440) = sub_23A6DF784();
  v2 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A6871A8, v2, v1);
}

uint64_t sub_23A6871A8()
{
  v1 = *(v0 + 416);

  sub_23A689A08(v1, 1);

  return MEMORY[0x2822009F8](sub_23A687224, 0, 0);
}

uint64_t sub_23A687224(uint64_t a1)
{
  *(v1 + 448) = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A6872B0, v3, v2);
}

uint64_t sub_23A6872B0()
{
  v1 = *(v0 + 280);

  v2 = (v1 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v3 = *(v1 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v4 = *(v1 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler + 8);
  *v2 = 0;
  v2[1] = 0;
  sub_23A677CB0(v3, v4);

  return MEMORY[0x2822009F8](sub_23A687334, 0, 0);
}

uint64_t sub_23A687334(uint64_t a1)
{
  *(v1 + 456) = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A6873C0, v3, v2);
}

uint64_t sub_23A6873C0()
{
  v1 = *(v0 + 280);

  *(v0 + 464) = [v1 view];

  return MEMORY[0x2822009F8](sub_23A687448, 0, 0);
}

uint64_t sub_23A687448(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 464))
  {
    *(v3 + 472) = sub_23A6DF784();
    v4 = sub_23A6DF754();
    v6 = v5;
    a1 = sub_23A6874E0;
    a2 = v4;
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_23A6874E0()
{
  v1 = *(v0 + 464);

  [v1 layoutIfNeeded];

  return MEMORY[0x2822009F8](sub_23A68755C, 0, 0);
}

uint64_t sub_23A68755C(uint64_t a1)
{
  *(v1 + 480) = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A6875E8, v3, v2);
}

uint64_t sub_23A6875E8()
{
  v1 = *(v0 + 280);

  *(v0 + 488) = [v1 collectionView];

  return MEMORY[0x2822009F8](sub_23A687670, 0, 0);
}

uint64_t sub_23A687670(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 488))
  {

    *(v3 + 496) = sub_23A6DF784();
    v4 = sub_23A6DF754();
    v6 = v5;
    a1 = sub_23A687A60;
    a2 = v4;
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_23A687710()
{
  v1 = *(v0 + 424);
  *(v0 + 200) = v1;
  *(v0 + 616) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {

    *(v0 + 624) = *(v0 + 208);
    *(v0 + 632) = sub_23A6DF794();
    *(v0 + 640) = sub_23A6DF784();
    v3 = sub_23A6DF754();
    v5 = v4;
    v6 = sub_23A6883A4;
  }

  else
  {
    v7 = *(v0 + 296);

    v8 = sub_23A6DCE38();
    sub_23A646D48(v8, v7, &qword_27DF9D240, qword_23A6E1D30);
    v9 = sub_23A6DECC4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_23A646DB0(*(v0 + 296), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v11 = sub_23A6DECA4();
      v12 = sub_23A6DF884();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_23A63D000, v11, v12, "presentContent - unable to display content", v13, 2u);
        MEMORY[0x23EE8A960](v13, -1, -1);
      }

      v14 = *(v0 + 296);

      (*(v10 + 8))(v14, v9);
    }

    v15 = *(v0 + 320);
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);
    v18 = *(v0 + 248);
    v19 = *(v0 + 256);
    v20 = *(v0 + 232);
    v21 = *(v0 + 240);
    v22 = sub_23A6DF7B4();
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v16;
    v23[5] = v20;
    v23[6] = v21;
    v23[7] = v18;
    v23[8] = v19;
    v23[9] = v17;

    swift_unknownObjectRetain();

    sub_23A64A15C(0, 0, v15, &unk_23A6E2638, v23);

    *(v0 + 696) = sub_23A6DF794();
    *(v0 + 704) = sub_23A6DF784();
    v3 = sub_23A6DF754();
    v5 = v24;
    v6 = sub_23A688E34;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t sub_23A687A60()
{
  v1 = *(v0 + 488);

  *(v0 + 504) = [v1 collectionViewLayout];

  return MEMORY[0x2822009F8](sub_23A687AE8, 0, 0);
}

uint64_t sub_23A687AE8(uint64_t a1)
{
  *(v1 + 512) = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A687B74, v3, v2);
}

uint64_t sub_23A687B74()
{
  v1 = *(v0 + 504);

  [v1 collectionViewContentSize];
  v3 = v2;

  *(v0 + 520) = v3;

  return MEMORY[0x2822009F8](sub_23A687BF8, 0, 0);
}

uint64_t sub_23A687BF8()
{
  v1 = PKUIGetMinScreenType();
  *(v0 + 528) = PKUIScreenTypeGetSize(v1);
  *(v0 + 536) = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A687C90, v3, v2);
}

uint64_t sub_23A687C90()
{
  v1 = *(v0 + 280);

  *(v0 + 760) = [v1 isScrollable];

  return MEMORY[0x2822009F8](sub_23A687D10, 0, 0);
}

uint64_t sub_23A687D10()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 320);
  v3 = *(v0 + 272);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 232);
  v7 = sub_23A6DE824();
  v9 = v8;
  v10 = sub_23A6DE814();
  sub_23A6A979C(v5, v4, v7, v9, v10, v11, (v0 + 144));
  v12 = sub_23A6C2038(v1);
  v14 = v13;
  v16 = v15;
  v17 = v12;
  v18 = sub_23A6DF7B4();
  *(v0 + 544) = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  *(v0 + 552) = v20;
  *(v0 + 560) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v2, 1, 1, v18);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v3;
  *(v21 + 40) = v6;
  v22 = *(v0 + 160);
  *(v21 + 48) = *(v0 + 144);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(v0 + 176);
  *(v21 + 96) = v14;
  *(v21 + 104) = v16;
  *(v21 + 112) = v17 & 1;

  swift_unknownObjectRetain();
  sub_23A64A15C(0, 0, v2, &unk_23A6E2668, v21);

  *(v0 + 568) = sub_23A6DF784();
  v24 = sub_23A6DF754();
  *(v0 + 576) = v24;
  *(v0 + 584) = v23;

  return MEMORY[0x2822009F8](sub_23A687F08, v24, v23);
}

uint64_t sub_23A687F08(uint64_t a1)
{
  v2 = v1[35];
  if (*(v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed) == 1)
  {

    return MEMORY[0x2822009F8](sub_23A688230, 0, 0);
  }

  else
  {
    v1[74] = sub_23A6DF784();
    v3 = swift_task_alloc();
    v1[75] = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    v1[76] = v4;
    *v4 = v1;
    v4[1] = sub_23A688068;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_23A688068()
{
  v1 = *v0;

  v2 = *(v1 + 584);
  v3 = *(v1 + 576);

  return MEMORY[0x2822009F8](sub_23A6881C8, v3, v2);
}

uint64_t sub_23A6881C8()
{

  return MEMORY[0x2822009F8](sub_23A688230, 0, 0);
}

uint64_t sub_23A688230()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 416);
  v4 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 272);
  (*(**(v0 + 368) + 144))();
  v1(v5, 1, 1, v2);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;

  sub_23A64A15C(0, 0, v5, &unk_23A6E2678, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  sub_23A6DF774();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_23A6883A4()
{
  v1 = *(v0 + 280);

  v2 = (v1 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v3 = *(v1 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v4 = *(v1 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler + 8);
  *v2 = 0;
  v2[1] = 0;
  sub_23A677CB0(v3, v4);

  return MEMORY[0x2822009F8](sub_23A688428, 0, 0);
}

uint64_t sub_23A688428()
{
  v43 = v0;
  v1 = sub_23A6DE944();
  v2 = sub_23A6DE944();
  v3 = sub_23A6DCE38();
  if (v1 == v2)
  {
    v4 = *(v0 + 312);
    sub_23A646D48(v3, v4, &qword_27DF9D240, qword_23A6E1D30);
    v5 = sub_23A6DECC4();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_23A646DB0(*(v0 + 312), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v10 = sub_23A6DECA4();
      v11 = sub_23A6DF884();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_23A63D000, v10, v11, "presentContent - display cancelled", v12, 2u);
        MEMORY[0x23EE8A960](v12, -1, -1);
      }

      v13 = *(v0 + 312);

      (*(v6 + 8))(v13, v5);
    }

    v14 = *(v0 + 320);
    v16 = *(v0 + 264);
    v15 = *(v0 + 272);
    v17 = *(v0 + 248);
    v18 = *(v0 + 256);
    v19 = *(v0 + 232);
    v20 = *(v0 + 240);
    v21 = sub_23A6DF7B4();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v15;
    v22[5] = v19;
    v22[6] = v20;
    v22[7] = v17;
    v22[8] = v18;
    v22[9] = v16;

    swift_unknownObjectRetain();

    sub_23A64A15C(0, 0, v14, &unk_23A6E2658, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
    sub_23A6DF774();

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v7 = *(v0 + 304);
    sub_23A646D48(v3, v7, &qword_27DF9D240, qword_23A6E1D30);
    v8 = sub_23A6DECC4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_23A646DB0(*(v0 + 304), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v25 = sub_23A6DECA4();
      v26 = sub_23A6DF884();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42 = v28;
        *v27 = 136315138;
        v29 = sub_23A6DE934();
        v31 = sub_23A657E78(v29, v30, &v42);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_23A63D000, v25, v26, "presentContent - unable to display content: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x23EE8A960](v28, -1, -1);
        MEMORY[0x23EE8A960](v27, -1, -1);
      }

      (*(v9 + 8))(*(v0 + 304), v8);
    }

    v32 = *(v0 + 624);
    v33 = *(v0 + 320);
    v35 = *(v0 + 264);
    v34 = *(v0 + 272);
    v36 = *(v0 + 248);
    v37 = *(v0 + 256);
    v38 = *(v0 + 232);
    v39 = *(v0 + 240);
    v40 = sub_23A6DF7B4();
    (*(*(v40 - 8) + 56))(v33, 1, 1, v40);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v34;
    v41[5] = v38;
    v41[6] = v39;
    v41[7] = v36;
    v41[8] = v37;
    v41[9] = v35;
    v41[10] = v32;

    swift_unknownObjectRetain();

    sub_23A64A15C(0, 0, v33, &unk_23A6E2648, v41);

    return MEMORY[0x2822009F8](sub_23A688988, v34, 0);
  }
}

uint64_t sub_23A688988()
{
  sub_23A68B810(*(v0 + 624), *(v0 + 280));
  *(v0 + 648) = sub_23A6DF784();
  v2 = sub_23A6DF754();
  *(v0 + 656) = v2;
  *(v0 + 664) = v1;

  return MEMORY[0x2822009F8](sub_23A688A24, v2, v1);
}

uint64_t sub_23A688A24(uint64_t a1)
{
  v2 = v1[35];
  if (*(v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed) == 1)
  {

    return MEMORY[0x2822009F8](sub_23A688D4C, 0, 0);
  }

  else
  {
    v1[84] = sub_23A6DF784();
    v3 = swift_task_alloc();
    v1[85] = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    v1[86] = v4;
    *v4 = v1;
    v4[1] = sub_23A688B84;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_23A688B84()
{
  v1 = *v0;

  v2 = *(v1 + 664);
  v3 = *(v1 + 656);

  return MEMORY[0x2822009F8](sub_23A688CE4, v3, v2);
}

uint64_t sub_23A688CE4()
{

  return MEMORY[0x2822009F8](sub_23A688D4C, 0, 0);
}

uint64_t sub_23A688D4C()
{
  v1 = *(v0 + 624);
  sub_23A650718();
  v2 = swift_allocError();
  sub_23A6BB890(v1, v3);
  *(v0 + 224) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  sub_23A6DF764();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23A688E34()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);

  v3 = (v1 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v4 = *(v1 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v5 = *(v1 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler + 8);
  *v3 = 0;
  v3[1] = 0;
  sub_23A677CB0(v4, v5);

  return MEMORY[0x2822009F8](sub_23A688EB8, v2, 0);
}

uint64_t sub_23A688EB8()
{
  sub_23A68B810(6, *(v0 + 280));
  *(v0 + 712) = sub_23A6DF784();
  v2 = sub_23A6DF754();
  *(v0 + 720) = v2;
  *(v0 + 728) = v1;

  return MEMORY[0x2822009F8](sub_23A688F54, v2, v1);
}

uint64_t sub_23A688F54(uint64_t a1)
{
  v2 = v1[35];
  if (*(v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed) == 1)
  {

    return MEMORY[0x2822009F8](sub_23A68927C, 0, 0);
  }

  else
  {
    v1[92] = sub_23A6DF784();
    v3 = swift_task_alloc();
    v1[93] = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    v1[94] = v4;
    *v4 = v1;
    v4[1] = sub_23A6890B4;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_23A6890B4()
{
  v1 = *v0;

  v2 = *(v1 + 728);
  v3 = *(v1 + 720);

  return MEMORY[0x2822009F8](sub_23A689214, v3, v2);
}

uint64_t sub_23A689214()
{

  return MEMORY[0x2822009F8](sub_23A68927C, 0, 0);
}

uint64_t sub_23A68927C()
{
  v1 = v0[77];
  sub_23A650718();
  v2 = swift_allocError();
  *v3 = 5;
  v0[27] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  sub_23A6DF764();

  v4 = v0[1];

  return v4();
}

uint64_t sub_23A68935C(uint64_t a1)
{
  v2 = *(v1 + 328);
  swift_willThrow();

  v3 = *(v1 + 336);
  *(v1 + 200) = v3;
  *(v1 + 616) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {

    *(v1 + 624) = *(v1 + 208);
    *(v1 + 632) = sub_23A6DF794();
    *(v1 + 640) = sub_23A6DF784();
    v5 = sub_23A6DF754();
    v7 = v6;
    v8 = sub_23A6883A4;
  }

  else
  {
    v9 = *(v1 + 296);

    v10 = sub_23A6DCE38();
    sub_23A646D48(v10, v9, &qword_27DF9D240, qword_23A6E1D30);
    v11 = sub_23A6DECC4();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_23A646DB0(*(v1 + 296), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v13 = sub_23A6DECA4();
      v14 = sub_23A6DF884();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_23A63D000, v13, v14, "presentContent - unable to display content", v15, 2u);
        MEMORY[0x23EE8A960](v15, -1, -1);
      }

      v16 = *(v1 + 296);

      (*(v12 + 8))(v16, v11);
    }

    v17 = *(v1 + 320);
    v19 = *(v1 + 264);
    v18 = *(v1 + 272);
    v20 = *(v1 + 248);
    v21 = *(v1 + 256);
    v22 = *(v1 + 232);
    v23 = *(v1 + 240);
    v24 = sub_23A6DF7B4();
    (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v18;
    v25[5] = v22;
    v25[6] = v23;
    v25[7] = v20;
    v25[8] = v21;
    v25[9] = v19;

    swift_unknownObjectRetain();

    sub_23A64A15C(0, 0, v17, &unk_23A6E2638, v25);

    *(v1 + 696) = sub_23A6DF794();
    *(v1 + 704) = sub_23A6DF784();
    v5 = sub_23A6DF754();
    v7 = v26;
    v8 = sub_23A688E34;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_23A6896B8()
{
  v1 = *(v0 + 400);
  *(v0 + 200) = v1;
  *(v0 + 616) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {

    *(v0 + 624) = *(v0 + 208);
    *(v0 + 632) = sub_23A6DF794();
    *(v0 + 640) = sub_23A6DF784();
    v3 = sub_23A6DF754();
    v5 = v4;
    v6 = sub_23A6883A4;
  }

  else
  {
    v7 = *(v0 + 296);

    v8 = sub_23A6DCE38();
    sub_23A646D48(v8, v7, &qword_27DF9D240, qword_23A6E1D30);
    v9 = sub_23A6DECC4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_23A646DB0(*(v0 + 296), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v11 = sub_23A6DECA4();
      v12 = sub_23A6DF884();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_23A63D000, v11, v12, "presentContent - unable to display content", v13, 2u);
        MEMORY[0x23EE8A960](v13, -1, -1);
      }

      v14 = *(v0 + 296);

      (*(v10 + 8))(v14, v9);
    }

    v15 = *(v0 + 320);
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);
    v18 = *(v0 + 248);
    v19 = *(v0 + 256);
    v20 = *(v0 + 232);
    v21 = *(v0 + 240);
    v22 = sub_23A6DF7B4();
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v16;
    v23[5] = v20;
    v23[6] = v21;
    v23[7] = v18;
    v23[8] = v19;
    v23[9] = v17;

    swift_unknownObjectRetain();

    sub_23A64A15C(0, 0, v15, &unk_23A6E2638, v23);

    *(v0 + 696) = sub_23A6DF794();
    *(v0 + 704) = sub_23A6DF784();
    v3 = sub_23A6DF754();
    v5 = v24;
    v6 = sub_23A688E34;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

void sub_23A689A08(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v35 - v11;
  v35.receiver = v2;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, sel_setArticleLayout_animated_, a1, a2 & 1, v10);
  *(v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_layoutSet) = 1;
  v13 = objc_opt_self();
  v14 = [v13 currentDevice];
  v15 = [v14 orientation];

  if (UIDeviceOrientationIsLandscape(v15))
  {
    v16 = sub_23A6DCE38();
    sub_23A646D48(v16, v12, &qword_27DF9D240, qword_23A6E1D30);
    v17 = sub_23A6DECC4();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v12, 1, v17) == 1)
    {
      sub_23A646DB0(v12, &qword_27DF9D240, qword_23A6E1D30);
      sub_23A68ECD0();
    }

    else
    {
      v29 = sub_23A6DECA4();
      v30 = sub_23A6DF8A4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_23A63D000, v29, v30, "DiscoveryArticleViewController: initial orientation is landscape", v31, 2u);
        MEMORY[0x23EE8A960](v31, -1, -1);
      }

      (*(v18 + 8))(v12, v17);
      sub_23A68ECD0();
    }
  }

  else
  {
    v19 = [v13 currentDevice];
    v20 = [v19 orientation];

    if ((v20 - 5) <= 1)
    {
      v21 = [objc_opt_self() sharedApplication];
      v22 = [v21 connectedScenes];

      sub_23A691180(0, &qword_27DF9CA78, 0x277D75940);
      sub_23A68DE78();
      v23 = sub_23A6DF844();

      v24 = sub_23A68F6F0(v23);

      if (v24)
      {
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (v25 && UIDeviceOrientationIsLandscape([v25 interfaceOrientation]))
        {
          v26 = sub_23A6DCE38();
          sub_23A646D48(v26, v8, &qword_27DF9D240, qword_23A6E1D30);
          v27 = sub_23A6DECC4();
          v28 = *(v27 - 8);
          if ((*(v28 + 48))(v8, 1, v27) == 1)
          {
            sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
          }

          else
          {
            v32 = sub_23A6DECA4();
            v33 = sub_23A6DF8A4();
            if (os_log_type_enabled(v32, v33))
            {
              v34 = swift_slowAlloc();
              *v34 = 0;
              _os_log_impl(&dword_23A63D000, v32, v33, "DiscoveryArticleViewController: initial orientation is flat, but scene orientation is landscape", v34, 2u);
              MEMORY[0x23EE8A960](v34, -1, -1);
            }

            (*(v28 + 8))(v8, v27);
          }

          sub_23A68ECD0();
        }
      }
    }
  }
}

uint64_t sub_23A689E8C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(v9 + 72) = a9;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  *(v9 + 24) = a7;
  *(v9 + 32) = a8;
  *(v9 + 16) = a6;
  *(v9 + 56) = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  return MEMORY[0x2822009F8](sub_23A689EC4, a6, 0);
}

uint64_t sub_23A689EF0()
{
  (*((*MEMORY[0x277D85000] & **(v0 + 64)) + 0xB0))(*(v0 + 24), *(v0 + 32), *(v0 + 72), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A689F8C()
{
  v1[2] = v0;
  v1[3] = sub_23A6DF794();
  v1[4] = sub_23A6DF784();
  v3 = sub_23A6DF754();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_23A68A028, v3, v2);
}

uint64_t sub_23A68A028(uint64_t a1)
{
  v2 = v1[2];
  if (*(v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed))
  {

    v3 = v1[1];

    return v3();
  }

  else
  {
    v1[7] = sub_23A6DF784();
    v5 = swift_task_alloc();
    v1[8] = v5;
    *(v5 + 16) = v2;
    v6 = swift_task_alloc();
    v1[9] = v6;
    *v6 = v1;
    v6[1] = sub_23A68A17C;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_23A68A17C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_23A68A2DC, v3, v2);
}

uint64_t sub_23A68A2DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A68A33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  *(v4 + 16) = a4;
  *(v4 + 24) = v5;
  return MEMORY[0x2822009F8](sub_23A68A364, a4, 0);
}

uint64_t sub_23A68A38C()
{
  (*((*MEMORY[0x277D85000] & **(v0 + 32)) + 0xC0))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A68A41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  return MEMORY[0x2822009F8](sub_23A68A450, a4, 0);
}

uint64_t sub_23A68A450()
{
  v1 = v0[2];
  v0[7] = *(v1 + v0[6]);
  v2 = v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region;
  v0[8] = *(v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region);
  v0[9] = *(v2 + 8);

  return MEMORY[0x2822009F8](sub_23A68A4E4, 0, 0);
}

uint64_t sub_23A68A4E4()
{
  v10 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  v9 = 3;
  (*((*MEMORY[0x277D85000] & *v3) + 0xC8))(v6, v1, v2, v4, v5, &v9);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23A68A5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  v7[6] = v10;
  v7[7] = v8;
  return MEMORY[0x2822009F8](sub_23A68A5D8, a4, 0);
}

uint64_t sub_23A68A5D8()
{
  v1 = v0[2];
  v0[8] = *(v1 + v0[7]);
  v2 = v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region;
  v0[9] = *(v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region);
  v0[10] = *(v2 + 8);

  return MEMORY[0x2822009F8](sub_23A68A66C, 0, 0);
}

uint64_t sub_23A68A66C()
{
  v10 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v6 = v0[3];
  v5 = v0[4];
  sub_23A6BB890(v0[6], &v9);
  (*((*MEMORY[0x277D85000] & *v3) + 0xC8))(v6, v2, v1, v5, v4, &v9);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23A68A748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  return MEMORY[0x2822009F8](sub_23A68A77C, a4, 0);
}

uint64_t sub_23A68A77C()
{
  v1 = v0[2];
  v0[7] = *(v1 + v0[6]);
  v2 = v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region;
  v0[8] = *(v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region);
  v0[9] = *(v2 + 8);

  return MEMORY[0x2822009F8](sub_23A68A810, 0, 0);
}

uint64_t sub_23A68A810()
{
  v10 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  v9 = 5;
  (*((*MEMORY[0x277D85000] & *v3) + 0xC8))(v6, v1, v2, v4, v5, &v9);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23A68A8CC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_23A6DF7B4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  swift_unknownObjectRetain();
  sub_23A64A15C(0, 0, v5, &unk_23A6E2610, v7);

  return sub_23A6DF814();
}

uint64_t sub_23A68AA20()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_23A68AB34;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAF0, &qword_23A6E2618);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A68AC28;
  v0[13] = &block_descriptor_78;
  v0[14] = v2;
  [v1 cancelRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A68AB34()
{

  return MEMORY[0x2822009F8](sub_23A68AC14, 0, 0);
}

uint64_t sub_23A68AC28(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_23A68AC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v20 - v13;
  v15 = sub_23A6DF7B4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  v16[8] = a5;
  v16[9] = a6;

  swift_unknownObjectRetain();

  sub_23A64A15C(0, 0, v14, &unk_23A6E2690, v16);

  sub_23A650718();
  v17 = swift_allocError();
  *v18 = 5;
  v20[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  return sub_23A6DF764();
}

uint64_t sub_23A68AE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  return MEMORY[0x2822009F8](sub_23A68AE38, a4, 0);
}

uint64_t sub_23A68AE38()
{
  v1 = v0[2];
  v0[7] = *(v1 + v0[6]);
  v2 = v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region;
  v0[8] = *(v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region);
  v0[9] = *(v2 + 8);

  return MEMORY[0x2822009F8](sub_23A6920CC, 0, 0);
}

uint64_t sub_23A68AECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A68AF70, v4, 0);
}

uint64_t sub_23A68AF70()
{
  *(v0 + 112) = sub_23A6DF794();
  *(v0 + 120) = sub_23A6DF784();
  v2 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68B008, v2, v1);
}

uint64_t sub_23A68B008()
{
  v1 = *(v0 + 96);

  v2 = objc_allocWithZone(type metadata accessor for DiscoveryArticleViewController(0));
  v3 = sub_23A6DF614();
  *(v0 + 128) = [v2 initWithItemIdentifier:v3 referrerIdentifier:0];

  return MEMORY[0x2822009F8](sub_23A68B0C0, v1, 0);
}

uint64_t sub_23A68B0C0(uint64_t a1)
{
  if (v1[16])
  {
    v1[17] = sub_23A6DF784();
    v3 = sub_23A6DF754();

    return MEMORY[0x2822009F8](sub_23A68B2D0, v3, v2);
  }

  else
  {
    v4 = v1[13];
    v5 = sub_23A6DCE38();
    sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_23A646DB0(v1[13], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v8 = sub_23A6DECA4();
      v9 = sub_23A6DF884();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_23A63D000, v8, v9, "presentDiscoveryView - discovery view controller is not available", v10, 2u);
        MEMORY[0x23EE8A960](v10, -1, -1);
      }

      v11 = v1[13];

      (*(v7 + 8))(v11, v6);
    }

    v12 = v1[1];

    return v12(0);
  }
}

uint64_t sub_23A68B2D0()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];

  [v1 setProximityReaderDelegate_];

  return MEMORY[0x2822009F8](sub_23A68B358, v2, 0);
}

uint64_t sub_23A68B358()
{
  v1 = *(v0 + 128);
  *(v0 + 144) = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68B3EC, v3, v2);
}

uint64_t sub_23A68B3EC()
{
  v1 = v0[16];
  v2 = v0[12];

  v0[19] = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return MEMORY[0x2822009F8](sub_23A68B480, v2, 0);
}

uint64_t sub_23A68B480()
{
  v0[6] = sub_23A68B67C;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_23A672F1C;
  v0[5] = &block_descriptor_2;
  v0[20] = _Block_copy(v0 + 2);
  v0[21] = sub_23A6DF784();
  v2 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68B56C, v2, v1);
}

uint64_t sub_23A68B56C()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[12];
  v4 = v0[8];

  [v4 presentViewController:v2 animated:1 completion:v1];
  _Block_release(v1);

  return MEMORY[0x2822009F8](sub_23A68B60C, v3, 0);
}

uint64_t sub_23A68B60C()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23A68B67C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_23A6DCE38();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    return sub_23A646DB0(v2, &qword_27DF9D240, qword_23A6E1D30);
  }

  v7 = sub_23A6DECA4();
  v8 = sub_23A6DF8A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23A63D000, v7, v8, "presentDiscoveryView - discovery view controller is presented", v9, 2u);
    MEMORY[0x23EE8A960](v9, -1, -1);
  }

  return (*(v5 + 8))(v2, v4);
}

uint64_t sub_23A68B810(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_23A6DE944();
  v8 = sub_23A6DE944();
  if (v7 == v8)
  {
    v9 = 0xD00000000000001FLL;
  }

  else
  {
    v9 = 0xD00000000000002DLL;
  }

  if (v7 == v8)
  {
    v10 = "E_OFFLINE_MESSAGE";
  }

  else
  {
    v10 = "ndler";
  }

  v11 = sub_23A6DE944();
  v12 = sub_23A6DE944();
  if (v11 == v12)
  {
    v13 = 0xD000000000000021;
  }

  else
  {
    v13 = 0xD000000000000035;
  }

  if (v11 == v12)
  {
    v14 = "AILABLE_ERROR_MESSAGE";
  }

  else
  {
    v14 = "E_CURRENTLY_UNAVAILABLE_TITLE";
  }

  v15 = v14 | 0x8000000000000000;
  v16 = v10 | 0x8000000000000000;
  v17 = sub_23A6DF7B4();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = sub_23A690358(&qword_27DF9CAC0, type metadata accessor for ProximityReaderDiscoveryActor, &unk_23A6E2478);
  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = v18;
  v19[4] = a2;
  v19[5] = v9;
  v19[6] = v16;
  v19[7] = v13;
  v19[8] = v15;
  v19[9] = v2;
  swift_retain_n();
  v20 = a2;
  sub_23A64A15C(0, 0, v6, &unk_23A6E25C0, v19);
}

uint64_t sub_23A68BA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v11;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A68BAB8, v11, 0);
}

uint64_t sub_23A68BAB8()
{
  *(v0 + 112) = sub_23A6DF794();
  *(v0 + 120) = sub_23A6DF784();
  v2 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68BB50, v2, v1);
}

uint64_t sub_23A68BB50()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);

  [v2 setIsDownloading_];

  return MEMORY[0x2822009F8](sub_23A68BBD4, v1, 0);
}

uint64_t sub_23A68BBD4()
{
  sub_23A6DEC54();
  v1 = sub_23A6DF674();
  v3 = v2;

  sub_23A6DEC54();
  v4 = sub_23A6DF674();
  v6 = v5;

  sub_23A6B8E94(v1, v3, v4, v6, 1, v0 + 16);
  *(v0 + 128) = sub_23A6DF784();
  v8 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68BCEC, v8, v7);
}

uint64_t sub_23A68BCEC()
{
  v1 = *(v0 + 96);

  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAC8, &qword_23A6E25D0));
  *(v0 + 136) = sub_23A6DF264();

  return MEMORY[0x2822009F8](sub_23A68BD80, v1, 0);
}

uint64_t sub_23A68BD80(uint64_t a1)
{
  *(v1 + 144) = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68BE0C, v3, v2);
}

uint64_t sub_23A68BE0C()
{
  v1 = v0[17];
  v2 = v0[12];

  v0[19] = [v1 view];

  return MEMORY[0x2822009F8](sub_23A68BE98, v2, 0);
}

uint64_t sub_23A68BE98(uint64_t a1)
{
  if (v1[19])
  {
    v1[20] = sub_23A6DF784();
    v3 = sub_23A6DF754();

    return MEMORY[0x2822009F8](sub_23A68C0A4, v3, v2);
  }

  else
  {
    v4 = v1[13];
    v5 = sub_23A6DCE38();
    sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_23A646DB0(v1[13], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v8 = sub_23A6DECA4();
      v9 = sub_23A6DF8A4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_23A63D000, v8, v9, "presentErrorView - unable to present the error view", v10, 2u);
        MEMORY[0x23EE8A960](v10, -1, -1);
      }

      v11 = v1[13];

      (*(v7 + 8))(v11, v6);
    }

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_23A68C0A4()
{
  v1 = v0[7];

  v2 = [v1 view];
  if (!v2)
  {
    goto LABEL_23;
  }

  v5 = v2;
  v6 = [v2 subviews];

  sub_23A691180(0, &qword_27DF9CAD0, 0x277D75D18);
  v7 = sub_23A6DF734();

  if (v7 >> 62)
  {
    v2 = sub_23A6DFB54();
    v8 = v2;
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x23EE89F80](i, v7);
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      [v11 removeFromSuperview];
    }
  }

LABEL_13:
  v12 = v0[7];

  v2 = [v12 view];
  if (!v2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = v2;
  v14 = v0[19];
  v15 = v0[7];
  [v2 addSubview_];

  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAD8, &qword_23A6E25D8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23A6E23C0;
  v17 = [v14 centerXAnchor];
  v2 = [v15 view];
  if (!v2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v2;
  v19 = v0[19];
  v20 = v0[7];
  v21 = [v2 centerXAnchor];

  v22 = [v17 constraintEqualToAnchor_];
  *(v16 + 32) = v22;
  v23 = [v19 centerYAnchor];
  v2 = [v20 view];
  if (!v2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v2;
  v25 = v0[19];
  v26 = v0[7];
  v27 = [v2 centerYAnchor];

  v28 = [v23 constraintEqualToAnchor_];
  *(v16 + 40) = v28;
  v29 = [v25 widthAnchor];
  v2 = [v26 view];
  if (!v2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v30 = v2;
  v31 = v0[7];
  v32 = objc_opt_self();
  v33 = [v30 widthAnchor];

  v34 = [v29 constraintEqualToAnchor_];
  *(v16 + 48) = v34;
  sub_23A691180(0, &qword_27DF9CAE0, 0x277CCAAD0);
  v35 = sub_23A6DF724();

  [v32 activateConstraints_];

  v2 = [v31 view];
  if (!v2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v2;
  v37 = v0[7];
  v38 = [objc_opt_self() systemBackgroundColor];
  [v36 _setBackgroundColor_];

  v2 = [v37 view];
  if (!v2)
  {
LABEL_29:
    __break(1u);
    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  v39 = v2;
  v40 = v0[12];
  [v2 layoutIfNeeded];

  v2 = sub_23A68C550;
  v3 = v40;
  v4 = 0;

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23A68C550()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A68C5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB0, &qword_23A6E25A0);
  v4[6] = swift_task_alloc();
  type metadata accessor for DiscoveryErrorSheet(0);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A68C690, v3, 0);
}

uint64_t sub_23A68C690(uint64_t a1)
{
  v2 = v1[8];
  v17 = v1[7];
  v3 = v1[6];
  v4 = v1[3];
  v5 = v1[4];
  sub_23A6DEC54();
  v6 = sub_23A6DF674();
  v8 = v7;

  sub_23A6DEC54();
  v9 = sub_23A6DF674();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v5;

  sub_23A6B7774(v13);
  sub_23A6B77D8(v6, v8, v9, v11, sub_23A690330, v12, v3, v2);
  sub_23A6912C0(v2, v17, type metadata accessor for DiscoveryErrorSheet);
  v1[9] = sub_23A6DF794();
  v1[10] = sub_23A6DF784();
  v15 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68C854, v15, v14);
}

uint64_t sub_23A68C854()
{
  v1 = *(v0 + 40);

  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB8, &qword_23A6E25A8));
  *(v0 + 88) = sub_23A6DF264();

  return MEMORY[0x2822009F8](sub_23A68C8F0, v1, 0);
}

uint64_t sub_23A68C8F0(uint64_t a1)
{
  *(v1 + 96) = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68C97C, v3, v2);
}

uint64_t sub_23A68C97C()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[2];

  [v3 presentViewController:v1 animated:1 completion:0];

  return MEMORY[0x2822009F8](sub_23A68CA10, v2, 0);
}

uint64_t sub_23A68CA10()
{
  v1 = *(v0 + 64);

  sub_23A691328(v1, type metadata accessor for DiscoveryErrorSheet);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A68CAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A68CB58, v5, 0);
}

uint64_t sub_23A68CB58(uint64_t a1)
{
  v22 = v1;
  v2 = v1[7];
  v3 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_requestRunning;
  v1[9] = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_requestRunning;
  if (*(v2 + v3) == 1)
  {
    v4 = v1[8];
    v5 = sub_23A6DCE38();
    sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_23A646DB0(v1[8], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {

      v12 = sub_23A6DECA4();
      v13 = sub_23A6DF884();

      if (os_log_type_enabled(v12, v13))
      {
        v15 = v1[3];
        v14 = v1[4];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v21 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_23A657E78(v15, v14, &v21);
        _os_log_impl(&dword_23A63D000, v12, v13, "%s - a previous discovery request is running, returning busy", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x23EE8A960](v17, -1, -1);
        MEMORY[0x23EE8A960](v16, -1, -1);
      }

      (*(v7 + 8))(v1[8], v6);
    }

    sub_23A650718();
    swift_allocError();
    *v18 = 4;
    swift_willThrow();

    v19 = v1[1];

    return v19();
  }

  else
  {
    v8 = v1[5];
    *(v2 + v3) = 1;
    v20 = (v8 + *v8);
    v9 = swift_task_alloc();
    v1[10] = v9;
    *v9 = v1;
    v9[1] = sub_23A68CE88;
    v10 = v1[2];

    return v20(v10);
  }
}

uint64_t sub_23A68CE88()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_23A66BF5C;
  }

  else
  {
    v4 = sub_23A68CFB4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A68CFB4()
{
  *(v0[7] + v0[9]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A68D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A68D0C4, v4, 0);
}

uint64_t sub_23A68D0C4(uint64_t a1)
{
  v21 = v1;
  v2 = v1[7];
  v3 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_requestRunning;
  v1[9] = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_requestRunning;
  if (*(v2 + v3) == 1)
  {
    v4 = v1[8];
    v5 = sub_23A6DCE38();
    sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_23A646DB0(v1[8], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {

      v11 = sub_23A6DECA4();
      v12 = sub_23A6DF884();

      if (os_log_type_enabled(v11, v12))
      {
        v14 = v1[3];
        v13 = v1[4];
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v20 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_23A657E78(v14, v13, &v20);
        _os_log_impl(&dword_23A63D000, v11, v12, "%s - a previous discovery request is running, returning busy", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x23EE8A960](v16, -1, -1);
        MEMORY[0x23EE8A960](v15, -1, -1);
      }

      (*(v7 + 8))(v1[8], v6);
    }

    sub_23A650718();
    swift_allocError();
    *v17 = 4;
    swift_willThrow();

    v18 = v1[1];

    return v18();
  }

  else
  {
    v8 = v1[5];
    *(v2 + v3) = 1;
    v19 = (v8 + *v8);
    v9 = swift_task_alloc();
    v1[10] = v9;
    *v9 = v1;
    v9[1] = sub_23A66BDBC;

    return v19(v1 + 2);
  }
}

uint64_t sub_23A68D3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A68D498, v5, 0);
}

uint64_t sub_23A68D498(uint64_t a1)
{
  v22 = v1;
  v2 = v1[7];
  v3 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_requestRunning;
  v1[9] = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_requestRunning;
  if (*(v2 + v3) == 1)
  {
    v4 = v1[8];
    v5 = sub_23A6DCE38();
    sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_23A646DB0(v1[8], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {

      v12 = sub_23A6DECA4();
      v13 = sub_23A6DF884();

      if (os_log_type_enabled(v12, v13))
      {
        v15 = v1[3];
        v14 = v1[4];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v21 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_23A657E78(v15, v14, &v21);
        _os_log_impl(&dword_23A63D000, v12, v13, "%s - a previous discovery request is running, returning busy", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x23EE8A960](v17, -1, -1);
        MEMORY[0x23EE8A960](v16, -1, -1);
      }

      (*(v7 + 8))(v1[8], v6);
    }

    sub_23A650718();
    swift_allocError();
    *v18 = 4;
    swift_willThrow();

    v19 = v1[1];

    return v19();
  }

  else
  {
    v8 = v1[5];
    *(v2 + v3) = 1;
    v20 = (v8 + *v8);
    v9 = swift_task_alloc();
    v1[10] = v9;
    *v9 = v1;
    v9[1] = sub_23A68D7C8;
    v10 = v1[2];

    return v20(v10);
  }
}

uint64_t sub_23A68D7C8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_23A6920C0;
  }

  else
  {
    v4 = sub_23A6920C4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A68D8F4@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = sub_23A6DCE38();
  sub_23A646D48(v8, v7, &qword_27DF9D240, qword_23A6E1D30);
  v9 = sub_23A6DECC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_23A646DB0(v7, &qword_27DF9D240, qword_23A6E1D30);
    v12 = v1;
  }

  else
  {
    v26 = v9;
    v13 = sub_23A6507C0();
    v14 = sub_23A6DCFB0();
    v24 = v11;
    v25 = v8;
    v9 = v26;
    sub_23A6DCFBC(v13 & 1, v1, 0xD000000000000014, 0x800000023A6E8650, v14, v15);
    v11 = v24;

    (*(v10 + 8))(v7, v9);
    v12 = v1;
    v8 = v25;
  }

  sub_23A6DEC84();
  if (sub_23A6DEC74())
  {
    v16 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_connection;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
    return (*(*(v17 - 8) + 16))(v27, v12 + v16, v17);
  }

  else
  {
    sub_23A646D48(v8, v4, &qword_27DF9D240, qword_23A6E1D30);
    if (v11(v4, 1, v9) == 1)
    {
      sub_23A646DB0(v4, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v19 = sub_23A6DECA4();
      v20 = sub_23A6DF884();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_23A63D000, v19, v20, "This device is not supported", v21, 2u);
        MEMORY[0x23EE8A960](v21, -1, -1);
      }

      (*(v10 + 8))(v4, v9);
    }

    sub_23A650718();
    v22 = swift_allocError();
    *v23 = 2;
    v28 = v22;
    return swift_willThrow();
  }
}

uint64_t sub_23A68DC58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A647234;

  return sub_23A6830DC(a1, v4);
}

uint64_t sub_23A68DCF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647140;

  return sub_23A684560(a1);
}

uint64_t sub_23A68DD98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_23A647234;

  return sub_23A685994(v9, v2, v3, v4, v5, v6, v7, v8);
}

unint64_t sub_23A68DE78()
{
  result = qword_27DF9CA80;
  if (!qword_27DF9CA80)
  {
    sub_23A691180(255, &qword_27DF9CA78, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CA80);
  }

  return result;
}

id sub_23A68DEE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA98, &qword_23A6E2470);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = v1;
  [v9 setProximityReaderDelegate_];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA90, &qword_23A6E2468);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissingContinuation;
  swift_beginAccess();
  sub_23A68FEDC(v8, v9 + v11);
  swift_endAccess();
  v12 = sub_23A6DCE38();
  sub_23A646D48(v12, v5, &qword_27DF9D240, qword_23A6E1D30);
  v13 = sub_23A6DECC4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    sub_23A646DB0(v5, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v15 = sub_23A6DECA4();
    v16 = sub_23A6DF8A4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23A63D000, v15, v16, "DiscoveryArticleViewController deinit", v17, 2u);
      MEMORY[0x23EE8A960](v17, -1, -1);
    }

    (*(v14 + 8))(v5, v13);
  }

  v20.receiver = v9;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_dealloc);
}

uint64_t sub_23A68E210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA98, &qword_23A6E2470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA90, &qword_23A6E2468);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissingContinuation;
  swift_beginAccess();
  sub_23A68FEDC(v6, a2 + v9);
  return swift_endAccess();
}

id sub_23A68E348(int a1)
{
  v2 = v1;
  v38 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA90, &qword_23A6E2468);
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v34 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA98, &qword_23A6E2470);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *&v11 = MEMORY[0x28223BE20](v10 - 8).n128_u64[0];
  v13 = &v33 - v12;
  v14 = [v2 parentViewController];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 isBeingDismissed];
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_23A6DCE38();
  sub_23A646D48(v17, v13, &qword_27DF9D240, qword_23A6E1D30);
  v18 = sub_23A6DECC4();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_23A646DB0(v13, &qword_27DF9D240, qword_23A6E1D30);
    if (!v16)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v20 = sub_23A6DECA4();
  v21 = sub_23A6DF8A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v16;
    _os_log_impl(&dword_23A63D000, v20, v21, "DiscoveryArticleViewController: view did disappear - view is being dismissed = %{BOOL}d", v22, 8u);
    MEMORY[0x23EE8A960](v22, -1, -1);
  }

  (*(v19 + 8))(v13, v18);
  if (v16)
  {
LABEL_10:
    v23 = OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissingContinuation;
    swift_beginAccess();
    sub_23A646D48(&v2[v23], v9, &qword_27DF9CA98, &qword_23A6E2470);
    v24 = *(v36 + 48);
    v25 = v24(v9, 1, v3);
    sub_23A646DB0(v9, &qword_27DF9CA98, &qword_23A6E2470);
    if (v25 != 1)
    {
      if (!v24(&v2[v23], 1, v3))
      {
        v26 = v36;
        v27 = v34;
        (*(v36 + 16))(v34, &v2[v23], v3);
        sub_23A6DF774();
        (*(v26 + 8))(v27, v3);
      }

      v28 = v35;
      (*(v36 + 56))(v35, 1, 1, v3);
      swift_beginAccess();
      sub_23A68FEDC(v28, &v2[v23]);
      swift_endAccess();
      v2[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed] = 1;
      v29 = *&v2[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler];
      if (v29)
      {
        v30 = *&v2[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler + 8];

        v29(v31);
        sub_23A677CB0(v29, v30);
      }
    }
  }

LABEL_15:
  v39.receiver = v2;
  v39.super_class = ObjectType;
  return objc_msgSendSuper2(&v39, sel_viewDidDisappear_, v38 & 1);
}

void sub_23A68E834(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v37.receiver = v4;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  if (*(v4 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_layoutSet) != 1)
  {
    return;
  }

  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 orientation];

  LODWORD(v15) = UIDeviceOrientationIsLandscape(v16);
  v17 = sub_23A6DCE38();
  if (v15)
  {
    sub_23A646D48(v17, v14, &qword_27DF9D240, qword_23A6E1D30);
    v18 = sub_23A6DECC4();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v14, 1, v18) == 1)
    {
      sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v22 = sub_23A6DECA4();
      v23 = sub_23A6DF8A4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_23A63D000, v22, v23, "DiscoveryArticleViewController: rotated to landscape", v24, 2u);
        MEMORY[0x23EE8A960](v24, -1, -1);
      }

      (*(v19 + 8))(v14, v18);
    }

    sub_23A68ECD0();
    return;
  }

  sub_23A646D48(v17, v11, &qword_27DF9D240, qword_23A6E1D30);
  v20 = sub_23A6DECC4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v11, 1, v20) == 1)
  {
    sub_23A646DB0(v11, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v25 = sub_23A6DECA4();
    v26 = sub_23A6DF8A4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_23A63D000, v25, v26, "DiscoveryArticleViewController: rotated to portrait", v27, 2u);
      MEMORY[0x23EE8A960](v27, -1, -1);
    }

    (*(v21 + 8))(v11, v20);
  }

  v28 = [v4 view];
  if (!v28)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = [v28 subviews];

  sub_23A691180(0, &qword_27DF9CAD0, 0x277D75D18);
  v31 = sub_23A6DF734();

  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_17;
    }

LABEL_26:

    return;
  }

  v32 = sub_23A6DFB54();
  if (!v32)
  {
    goto LABEL_26;
  }

LABEL_17:
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((v31 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v35 = MEMORY[0x23EE89F80](v34, v31);
    goto LABEL_22;
  }

  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v34 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v35 = *(v31 + 8 * v34 + 32);
LABEL_22:
  v36 = v35;

  if ([v36 tag] == 123456)
  {
    [v36 removeFromSuperview];
  }
}

unint64_t sub_23A68ECD0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB0, &qword_23A6E25A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v70 - v3;
  v5 = type metadata accessor for DiscoveryRotatedView(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v70 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v70 - v16;
  result = [v1 view];
  if (!result)
  {
    goto LABEL_39;
  }

  v19 = result;
  v20 = [result subviews];

  sub_23A691180(0, &qword_27DF9CAD0, 0x277D75D18);
  v21 = sub_23A6DF734();

  if (v21 >> 62)
  {
    v22 = sub_23A6DFB54();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v22)
  {

    goto LABEL_15;
  }

  v23 = __OFSUB__(v22, 1);
  result = v22 - 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_36;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
LABEL_36:
    v24 = MEMORY[0x23EE89F80](result, v21);
    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (result >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v24 = *(v21 + 8 * result + 32);
LABEL_10:
  v25 = v24;

  if ([v25 tag] == 123456)
  {
    v26 = sub_23A6DCE38();
    sub_23A646D48(v26, v17, &qword_27DF9D240, qword_23A6E1D30);
    v27 = sub_23A6DECC4();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v17, 1, v27) == 1)
    {

      v29 = v17;
      return sub_23A646DB0(v29, &qword_27DF9D240, qword_23A6E1D30);
    }

    v64 = sub_23A6DECA4();
    v65 = sub_23A6DF874();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_23A63D000, v64, v65, "presentRotatedView - view is already being presented", v66, 2u);
      MEMORY[0x23EE8A960](v66, -1, -1);
    }

    return (*(v28 + 8))(v17, v27);
  }

LABEL_15:
  sub_23A6DEC54();
  v30 = sub_23A6DF674();
  v32 = v31;

  v33 = swift_allocObject();
  *(v33 + 16) = v1;
  v34 = v1;
  sub_23A6BB448();
  sub_23A6BB4AC(v30, v32, sub_23A6911E0, v33, v4, v10);
  sub_23A6912C0(v10, v7, type metadata accessor for DiscoveryRotatedView);
  v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAE8, &qword_23A6E25E0));
  v36 = sub_23A6DF264();
  v37 = [v36 &selRef_setMDMAppAttribute_withValue_forBundleID_];

  if (v37)
  {
    [v37 setTag_];
    [v37 setAccessibilityViewIsModal_];
    result = [v34 &selRef_setMDMAppAttribute_withValue_forBundleID_];
    if (result)
    {
      v38 = result;
      [result addSubview_];

      [v37 setTranslatesAutoresizingMaskIntoConstraints_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAD8, &qword_23A6E25D8);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_23A6E23D0;
      v40 = [v37 centerXAnchor];
      result = [v34 &selRef_setMDMAppAttribute_withValue_forBundleID_];
      if (result)
      {
        v41 = result;
        v42 = [result centerXAnchor];

        v43 = [v40 constraintEqualToAnchor_];
        *(v39 + 32) = v43;
        v44 = [v37 centerYAnchor];
        result = [v34 &selRef_setMDMAppAttribute_withValue_forBundleID_];
        if (result)
        {
          v45 = result;
          v46 = [result centerYAnchor];

          v47 = [v44 constraintEqualToAnchor_];
          *(v39 + 40) = v47;
          v48 = [v37 widthAnchor];
          result = [v34 &selRef_setMDMAppAttribute_withValue_forBundleID_];
          if (result)
          {
            v49 = result;
            v50 = [result widthAnchor];

            v51 = [v48 constraintEqualToAnchor_];
            *(v39 + 48) = v51;
            v52 = [v37 heightAnchor];
            result = [v34 &selRef_setMDMAppAttribute_withValue_forBundleID_];
            if (result)
            {
              v53 = result;
              v54 = objc_opt_self();
              v55 = [v53 heightAnchor];

              v56 = [v52 constraintEqualToAnchor_];
              *(v39 + 56) = v56;
              sub_23A691180(0, &qword_27DF9CAE0, 0x277CCAAD0);
              v57 = sub_23A6DF724();

              [v54 activateConstraints_];

              result = [v34 &selRef_setMDMAppAttribute_withValue_forBundleID_];
              if (result)
              {
                v58 = result;
                v59 = [objc_opt_self() systemBackgroundColor];
                [v58 _setBackgroundColor_];

                result = [v34 &selRef_setMDMAppAttribute_withValue_forBundleID_];
                if (result)
                {
                  v60 = result;
                  [result layoutIfNeeded];

                  return sub_23A691328(v10, type metadata accessor for DiscoveryRotatedView);
                }

                goto LABEL_46;
              }

LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
              return result;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v61 = sub_23A6DCE38();
  sub_23A646D48(v61, v13, &qword_27DF9D240, qword_23A6E1D30);
  v62 = sub_23A6DECC4();
  v63 = *(v62 - 8);
  if ((*(v63 + 48))(v13, 1, v62) == 1)
  {
    sub_23A691328(v10, type metadata accessor for DiscoveryRotatedView);
    v29 = v13;
    return sub_23A646DB0(v29, &qword_27DF9D240, qword_23A6E1D30);
  }

  v67 = sub_23A6DECA4();
  v68 = sub_23A6DF8A4();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_23A63D000, v67, v68, "presentRotatedView - unable to present the view", v69, 2u);
    MEMORY[0x23EE8A960](v69, -1, -1);
  }

  sub_23A691328(v10, type metadata accessor for DiscoveryRotatedView);
  return (*(v63 + 8))(v13, v62);
}

uint64_t sub_23A68F6F0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_23A6DF9D4();
    v5 = v4;
    v6 = sub_23A6DFA24();
    v8 = v7;
    v9 = MEMORY[0x23EE89ED0](v3, v5, v6, v7);
    sub_23A6913F4(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_23A6913F4(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_23A6DF9B4();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_23A690464(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_23A6913F4(v3, v5, v2 != 0);
  return v12;
}

id sub_23A68F87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed] = 0;
  v4[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_layoutSet] = 0;
  v8 = OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissingContinuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA90, &qword_23A6E2468);
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  v10 = &v4[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_rotatedViewTag] = 123456;
  if (a2)
  {
    v11 = sub_23A6DF614();

    if (a4)
    {
LABEL_3:
      v12 = sub_23A6DF614();

      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithItemIdentifier_referrerIdentifier_, v11, v12);

  if (v13)
  {
  }

  return v13;
}

id sub_23A68FA60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed] = 0;
  v5[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_layoutSet] = 0;
  v10 = OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissingContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA90, &qword_23A6E2468);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler];
  *v12 = 0;
  v12[1] = 0;
  *&v5[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_rotatedViewTag] = 123456;
  if (a3)
  {
    v13 = sub_23A6DF614();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithArticleLayout_referrerIdentifier_cardSize_, a1, v13, a4);

  if (v14)
  {
  }

  return v14;
}

id sub_23A68FC20(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed] = 0;
  v3[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_layoutSet] = 0;
  v7 = OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissingContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA90, &qword_23A6E2468);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = &v3[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler];
  *v9 = 0;
  v9[1] = 0;
  *&v3[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_rotatedViewTag] = 123456;
  if (a2)
  {
    v10 = sub_23A6DF614();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id sub_23A68FDAC(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed] = 0;
  v1[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_layoutSet] = 0;
  v4 = OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissingContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA90, &qword_23A6E2468);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler];
  *v6 = 0;
  v6[1] = 0;
  *&v1[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_rotatedViewTag] = 123456;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_23A68FEDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA98, &qword_23A6E2470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_23A68FF4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB40, &qword_23A6E26C8);
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
    v10 = MEMORY[0x277D84F90];
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

void sub_23A690080(uint64_t a1)
{
  sub_23A6902BC(319, &qword_27DF9CAA0, &qword_27DF9CA68, qword_23A6E23F0, MEMORY[0x277D43B10]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23A6901A4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A6901DC(uint64_t a1)
{
  sub_23A6902BC(319, &qword_27DF9CAA8, &qword_27DF9CA90, &qword_23A6E2468, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23A6902BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_23A690358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A6903A0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23A647234;

  return sub_23A68BA0C(v7, v8, v9, v2, v3, v4, v5, v6);
}

void sub_23A690464(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x23EE89F00](a1, a2, v7);
      sub_23A691180(0, &qword_27DF9CA78, 0x277D75940);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_23A691180(0, &qword_27DF9CA78, 0x277D75940);
    if (sub_23A6DF9F4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_23A6DFA04();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_23A6DF8F4();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_23A6DF904();

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

NSObject *sub_23A690688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a3;
  v80 = a4;
  v85[4] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v77 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v77 - v11;
  MEMORY[0x28223BE20](v13);
  v81 = &v77 - v14;
  v15 = sub_23A6DE1D4();
  v83 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  MEMORY[0x28223BE20](v21);
  v84 = &v77 - v22;
  v23 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v24 = sub_23A6DF614();
  v25 = [v23 initWithPath_];

  if (v25)
  {
    v26 = sub_23A6DF614();
    v27 = sub_23A6DF614();
    v6 = [v25 URLForResource:v26 withExtension:v27];

    if (v6)
    {
      sub_23A6DE1A4();

      v28 = v83;
      v6 = v84;
      v29 = v15;
      (*(v83 + 32))(v84, v20, v15);
      v30 = v82;
      v31 = sub_23A6DE1F4();
      if (v30)
      {

        v33 = sub_23A6DCE38();
        sub_23A646D48(v33, v12, &qword_27DF9D240, qword_23A6E1D30);
        v34 = sub_23A6DECC4();
        v35 = *(v34 - 8);
        if ((*(v35 + 48))(v12, 1, v34) == 1)
        {
          sub_23A646DB0(v12, &qword_27DF9D240, qword_23A6E1D30);
        }

        else
        {
          (*(v28 + 16))(v17, v84, v29);
          v57 = sub_23A6DECA4();
          v6 = v29;
          v58 = sub_23A6DF884();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v81 = v59;
            v82 = swift_slowAlloc();
            v85[0] = v82;
            *v59 = 136315138;
            v60 = v6;
            v78 = v6;
            v80 = sub_23A6DE154();
            v62 = v61;
            (*(v83 + 8))(v17, v60);
            v63 = sub_23A657E78(v80, v62, v85);

            v6 = v81;
            *(v81 + 4) = v63;
            _os_log_impl(&dword_23A63D000, v57, v58, "articleLayout - no layout content in %s", v6, 0xCu);
            v64 = v82;
            __swift_destroy_boxed_opaque_existential_1Tm(v82);
            MEMORY[0x23EE8A960](v64, -1, -1);
            v28 = v83;
            MEMORY[0x23EE8A960](v6, -1, -1);

            v29 = v78;
          }

          else
          {

            (*(v28 + 8))(v17, v6);
            v29 = v6;
          }

          (*(v35 + 8))(v12, v34);
        }

        sub_23A691B48();
        swift_allocError();
        *v68 = 1;
        swift_willThrow();
LABEL_35:

        (*(v28 + 8))(v84, v29);
        return v6;
      }

      v46 = v32;
      v47 = v31;
      v48 = objc_opt_self();
      v82 = v47;
      v49 = sub_23A6DE214();
      v85[0] = 0;
      v6 = [v48 JSONObjectWithData:v49 options:0 error:v85];

      if (v6)
      {
        v50 = v85[0];
        sub_23A6DF994();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB08, &qword_23A6E2680);
        v51 = swift_dynamicCast();
        v52 = v81;
        if (v51)
        {
          v53 = objc_allocWithZone(MEMORY[0x277D37E70]);
          v54 = sub_23A6DF594();

          v6 = [v53 initWithDictionary_];

          v28 = v83;
          if (v6)
          {
            v55 = sub_23A6DF614();
            [v6 setItemIdentifier:v55];

            v56 = v25;
            [v6 localizeWithBundle:v56];
            sub_23A691B9C(v82, v46);

            (*(v28 + 8))(v84, v29);
            return v6;
          }
        }

        else
        {
          v28 = v83;
        }
      }

      else
      {
        v6 = v85[0];
        v69 = sub_23A6DE124();

        swift_willThrow();
        v52 = v81;
      }

      v70 = sub_23A6DCE38();
      sub_23A646D48(v70, v52, &qword_27DF9D240, qword_23A6E1D30);
      v71 = sub_23A6DECC4();
      v72 = *(v71 - 8);
      if ((*(v72 + 48))(v52, 1, v71) == 1)
      {
        sub_23A646DB0(v52, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v6 = sub_23A6DECA4();
        v73 = sub_23A6DF884();
        if (os_log_type_enabled(v6, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_23A63D000, v6, v73, "articleLayout - invalid layout content", v74, 2u);
          MEMORY[0x23EE8A960](v74, -1, -1);
        }

        (*(v72 + 8))(v52, v71);
        v28 = v83;
      }

      sub_23A691B48();
      swift_allocError();
      *v75 = 1;
      swift_willThrow();
      sub_23A691B9C(v82, v46);
      goto LABEL_35;
    }

    v39 = sub_23A6DCE38();
    sub_23A646D48(v39, v9, &qword_27DF9D240, qword_23A6E1D30);
    v40 = sub_23A6DECC4();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v9, 1, v40) == 1)
    {
      sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v6 = sub_23A6DECA4();
      v65 = sub_23A6DF884();
      if (os_log_type_enabled(v6, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_23A63D000, v6, v65, "articleLayout - no layout present", v66, 2u);
        MEMORY[0x23EE8A960](v66, -1, -1);
      }

      (*(v41 + 8))(v9, v40);
    }

    sub_23A691B48();
    swift_allocError();
    *v67 = 1;
    swift_willThrow();
  }

  else
  {
    v36 = sub_23A6DCE38();
    sub_23A646D48(v36, v6, &qword_27DF9D240, qword_23A6E1D30);
    v37 = sub_23A6DECC4();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v6, 1, v37) == 1)
    {
      sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v42 = sub_23A6DECA4();
      v43 = sub_23A6DF884();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_23A63D000, v42, v43, "articleLayout - invalid path", v44, 2u);
        MEMORY[0x23EE8A960](v44, -1, -1);
      }

      (*(v38 + 8))(v6, v37);
    }

    sub_23A691B48();
    swift_allocError();
    *v45 = 1;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_23A691180(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23A6911E0()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v5[4] = sub_23A691388;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_23A672F1C;
  v5[3] = &block_descriptor_48;
  v3 = _Block_copy(v5);
  v4 = v1;

  [v4 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

uint64_t sub_23A6912C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A691328(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_23A691388()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);

    sub_23A677CB0(v2, v3);
  }
}

uint64_t sub_23A6913F4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_23A691410()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23A647234;

  return sub_23A685F08(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_23A69152C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];

  return sub_23A68AC5C(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_23A6915A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23A647234;

  return sub_23A686950(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_23A6916C8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647234;

  return sub_23A68AA00(v3, v4, v5, v2);
}

uint64_t sub_23A69175C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23A647234;

  return sub_23A68A748(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_23A69180C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23A647234;

  return sub_23A68A5A0(v6, v7, v8, v2, v3, v4, v5);
}

uint64_t sub_23A6918CC()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23A647234;

  return sub_23A68A41C(v6, v7, v8, v2, v3, v5, v4);
}

double PKUIScreenTypeGetSize(unint64_t a1)
{
  v1 = &unk_23A6E26F0 + 8 * a1;
  if (a1 >= 0x14)
  {
    v1 = (MEMORY[0x277CBF3A8] + 8);
  }

  return *v1;
}

uint64_t sub_23A6919A4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23A647234;

  return sub_23A689E8C(v4, v5, v7, v8, v9, v2, v3, v0 + 48, v6);
}

uint64_t objectdestroy_73Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_23A691AB4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647234;

  return sub_23A68A33C(v3, v4, v5, v2);
}

unint64_t sub_23A691B48()
{
  result = qword_27DF9CB00;
  if (!qword_27DF9CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CB00);
  }

  return result;
}

uint64_t sub_23A691B9C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t objectdestroy_83Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23A691C54()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23A647234;

  return sub_23A68AE04(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_23A691D04()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB18, &qword_23A6E26A0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A647140;

  return sub_23A684868(v5, v6, v7, v4, v0 + v3);
}

unint64_t sub_23A691E00()
{
  result = qword_27DF9CB30;
  if (!qword_27DF9CB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9CB28, &qword_23A6E26C0);
    sub_23A690358(&qword_27DF9CB38, MEMORY[0x277D43778], MEMORY[0x277D43788]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CB30);
  }

  return result;
}

uint64_t objectdestroy_118Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_23A691FC0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB48, &qword_23A6E26D0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A647234;

  return sub_23A683300(v5, v6, v7, v4, v0 + v3);
}

unint64_t sub_23A6920D8(char a1)
{
  result = 0x726F6D654D727073;
  switch(a1)
  {
    case 1:
    case 23:
    case 43:
    case 46:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
    case 42:
    case 50:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x4970696B53727073;
      break;
    case 5:
    case 34:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x4D49556C61636F6CLL;
      break;
    case 7:
      result = 0x6F46726564616572;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x474D4D6563726F66;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x4C79636176697270;
      break;
    case 12:
      result = 0x4149556563726F66;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0x6E41656C62616E65;
      break;
    case 16:
    case 33:
    case 39:
      v3 = 5;
      goto LABEL_33;
    case 17:
    case 27:
    case 28:
    case 51:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0x6556534F6B636F6DLL;
      break;
    case 19:
      result = 0x6F676F4C6B636F6DLL;
      break;
    case 20:
      result = 0x4E424D6B636F6DLL;
      break;
    case 21:
      result = 0x43434D6B636F6DLL;
      break;
    case 22:
      result = 0x6E756F436B636F6DLL;
      break;
    case 24:
    case 40:
      result = 0xD000000000000019;
      break;
    case 25:
      result = 0xD000000000000012;
      break;
    case 26:
    case 37:
      result = 0xD000000000000013;
      break;
    case 29:
      result = 0xD00000000000001CLL;
      break;
    case 30:
      result = 0xD000000000000020;
      break;
    case 31:
      result = 0x6378454244666173;
      break;
    case 32:
      result = 0x726F434244666173;
      break;
    case 35:
      result = 0x447061546B636F6DLL;
      break;
    case 36:
      result = 0xD000000000000012;
      break;
    case 38:
      result = 0x504F434A6B636F6DLL;
      break;
    case 41:
      result = 0xD000000000000012;
      break;
    case 44:
      result = 0x54656C6261736964;
      break;
    case 45:
      result = 0x616C6544656E6F64;
      break;
    case 47:
    case 48:
      v3 = 9;
LABEL_33:
      result = v3 | 0xD000000000000012;
      break;
    case 49:
      result = 0xD00000000000001ALL;
      break;
    case 52:
      result = 0xD000000000000012;
      break;
    case 53:
      result = 0xD000000000000012;
      break;
    case 54:
      result = 0x73726556534F656DLL;
      break;
    case 55:
      result = 0x656369766544656DLL;
      break;
    case 56:
      result = 0x4E49506563726F66;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_23A6926A4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_23A6920D8(*a1);
  v5 = v4;
  if (v3 == sub_23A6920D8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23A6DFC04();
  }

  return v8 & 1;
}

uint64_t sub_23A69272C()
{
  v1 = *v0;
  sub_23A6DFCE4();
  sub_23A6920D8(v1);
  sub_23A6DF684();

  return sub_23A6DFD14();
}

uint64_t sub_23A692790(uint64_t a1)
{
  sub_23A6920D8(*v1);
  sub_23A6DF684();
}

uint64_t sub_23A6927E4(uint64_t a1)
{
  v2 = *v1;
  sub_23A6DFCE4();
  sub_23A6920D8(v2);
  sub_23A6DF684();

  return sub_23A6DFD14();
}

unint64_t sub_23A692844@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A6929BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_23A692874@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23A6920D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23A6928A0()
{
  sub_23A6DFCE4();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A692904(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A692950@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_23A6DFB94();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_23A6929BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_23A6DFC24();

  if (v2 >= 0x39)
  {
    return 57;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23A692A14()
{
  result = qword_27DF9CB58;
  if (!qword_27DF9CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CB58);
  }

  return result;
}

unint64_t sub_23A692A6C()
{
  result = qword_27DF9CB60;
  if (!qword_27DF9CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CB60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonPrefKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC8)
  {
    goto LABEL_17;
  }

  if (a2 + 56 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 56) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 56;
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

      return (*a1 | (v4 << 8)) - 56;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 56;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x39;
  v8 = v6 - 57;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}