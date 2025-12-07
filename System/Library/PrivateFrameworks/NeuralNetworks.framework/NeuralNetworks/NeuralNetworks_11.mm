double sub_25BB678C8()
{
  swift_beginAccess();
  sub_25BCB617C();
  return result;
}

uint64_t sub_25BB6798C(uint64_t result, char a2)
{
  v3 = v2 + *(*v2 + 152);
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_25BB67A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_25BB67A74(a1, a2, a3, a4, a5);
  return v10;
}

char *sub_25BB67A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v48 = a4;
  v49 = a5;
  v44 = a1;
  v45 = a3;
  v50 = a2;
  v41 = *v5;
  v7 = v41;
  v46 = *(v41 + 88);
  v47 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_9_3();
  MEMORY[0x28223BE20](v8);
  v43 = v39 - v9;
  v42 = sub_25BCB6CFC();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  sub_25BCB6CDC();
  OUTLINED_FUNCTION_9_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v17 = sub_25BCB603C();
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_1();
  *&v5[*(v7 + 136)] = 0;
  OUTLINED_FUNCTION_1_27();
  *&v5[*(v18 + 144)] = 0;
  OUTLINED_FUNCTION_1_27();
  v20 = &v5[*(v19 + 152)];
  *v20 = 0;
  v20[8] = 1;
  OUTLINED_FUNCTION_1_27();
  v22 = *(v21 + 160);
  *&v5[v22] = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_1_27();
  *&v5[*(v23 + 168)] = -1;
  OUTLINED_FUNCTION_1_27();
  v40 = *(v24 + 176);
  v25 = sub_25BAADFB0();
  v39[0] = "iteratorDispatchQueue";
  v39[1] = v25;
  sub_25BCB600C();
  v51 = MEMORY[0x277D84F90];
  sub_25BB6A894(&qword_28154BDC0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E50, &qword_25BCC2AB0);
  sub_25BB6A8DC(&qword_28154BE40, &qword_27FBB4E50, &qword_25BCC2AB0);
  sub_25BCB702C();
  (*(v11 + 104))(v15, *MEMORY[0x277D85260], v42);
  *&v5[v40] = sub_25BCB6D2C();
  OUTLINED_FUNCTION_1_27();
  v27 = *(v26 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = v44;
  (*(v29 + 16))(&v6[v27], v44, AssociatedTypeWitness);
  OUTLINED_FUNCTION_1_27();
  *&v6[*(v31 + 112)] = v45;
  OUTLINED_FUNCTION_1_27();
  v33 = &v6[*(v32 + 120)];
  v34 = v49;
  *v33 = v48;
  v33[1] = v34;
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v35);
  v36 = sub_25BCB68BC();
  (*(v29 + 8))(v30, AssociatedTypeWitness);
  OUTLINED_FUNCTION_1_27();
  *&v6[*(v37 + 128)] = v36;
  return v6;
}

uint64_t LazyPrefetchingMapSequence.Iterator.deinit()
{
  v1 = *(*v0 + 104);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t LazyPrefetchingMapSequence.Iterator.__deallocating_deinit()
{
  LazyPrefetchingMapSequence.Iterator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB6809C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = sub_25BB67968();
  v6 = (v5 & 1) == 0 && *(a1 + *(*a1 + 136)) >= result;
  *a2 = v6;
  return result;
}

uint64_t sub_25BB68108(uint64_t a1, uint64_t a2)
{
  v21[0] = a2;
  v4 = *v2;
  v5 = sub_25BCB5FEC();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25BCB603C();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4[11];
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v21 - v15;
  v21[1] = *(v2 + v4[22]);
  (*(v12 + 16))(v21 - v15, a1, v11, v14);
  v17 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v4[10];
  *(v18 + 3) = v11;
  *(v18 + 4) = v4[12];
  *(v18 + 5) = v2;
  *(v18 + 6) = v21[0];
  (*(v12 + 32))(&v18[v17], v16, v11);
  aBlock[4] = sub_25BB6A9F0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BB6871C;
  aBlock[3] = &block_descriptor_28;
  v19 = _Block_copy(aBlock);

  sub_25BCB600C();
  v25 = MEMORY[0x277D84F90];
  sub_25BB6A894(&qword_27FBB4E58, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E60, &unk_25BCC23E0);
  sub_25BB6A8DC(&qword_27FBB4E68, &qword_27FBB4E60, &unk_25BCC23E0);
  sub_25BCB702C();
  MEMORY[0x25F877540](0, v10, v7, v19);
  _Block_release(v19);
  (*(v24 + 8))(v7, v5);
  (*(v22 + 8))(v10, v23);
}

void sub_25BB684E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 88);
  v7 = sub_25BCB6E8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  sub_25BB678C8();
  v11 = sub_25BCB681C();

  if (!v11)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (a2 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_10;
  }

  v13 = a2 % v11;
  (*(*(v6 - 8) + 16))(v10, a3, v6);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
  v14 = *(*a1 + 128);
  swift_beginAccess();
  sub_25BCB68CC();
  sub_25BCB67BC();
  v15 = *(a1 + v14);
  sub_25BC19AE4(v13, v15, v7);
  (*(v8 + 40))(v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v10, v7);
  nullsub_1();
  swift_endAccess();
  v16 = *(*a1 + 168);
  if (*(a1 + v16) == a2)
  {
    *(a1 + v16) = -1;
    v17 = sub_25BB679B4();
    sub_25BCB6DAC();
  }
}

uint64_t sub_25BB6871C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_25BB68760(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v20 = &v16 - v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_25BCB6E8C();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  result = sub_25BB6803C(sub_25BB6AA2C);
  if ((result & 1) == 0)
  {
    v16 = v3;
    v17 = v2;
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_25BCB6EDC();
    swift_endAccess();
    if (__swift_getEnumTagSinglePayload(v8, 1, AssociatedTypeWitness) == 1)
    {
      result = (*(v18 + 8))(v8, v6);
      v13 = v1 + *(*v1 + 152);
      *v13 = *(v1 + *(*v1 + 144));
      *(v13 + 8) = 0;
    }

    else
    {
      v14 = v19;
      (*(v19 + 32))(v11, v8, AssociatedTypeWitness);
      v15 = v20;
      (*(v1 + *(*v1 + 120)))(v11);
      sub_25BB68108(v15, *(v1 + *(*v1 + 144)));
      (*(v16 + 8))(v15, v17);
      (*(v14 + 8))(v11, AssociatedTypeWitness);
      return sub_25BB68B24(v1);
    }
  }

  return result;
}

uint64_t sub_25BB68B24(uint64_t result)
{
  v1 = *(*result + 144);
  v2 = *(result + v1);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(result + v1) = v4;
  }

  return result;
}

uint64_t sub_25BB68B50()
{
  v1 = sub_25BCB5FEC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25BCB603C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25BB6803C(sub_25BB6AA2C);
  if ((result & 1) == 0)
  {
    v14 = *(v0 + *(*v0 + 176));
    aBlock[4] = sub_25BB6A88C;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BB6871C;
    aBlock[3] = &block_descriptor_16;
    v10 = _Block_copy(aBlock);
    v13 = v5;
    v11 = v10;

    sub_25BCB600C();
    v15 = MEMORY[0x277D84F90];
    sub_25BB6A894(&qword_27FBB4E58, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E60, &unk_25BCC23E0);
    sub_25BB6A8DC(&qword_27FBB4E68, &qword_27FBB4E60, &unk_25BCC23E0);
    sub_25BCB702C();
    MEMORY[0x25F877540](0, v8, v4, v11);
    _Block_release(v11);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v13);
  }

  return result;
}

uint64_t sub_25BB68E24(uint64_t a1)
{
  result = sub_25BB67968();
  if ((v3 & 1) == 0)
  {
    return result;
  }

  sub_25BB678C8();
  sub_25BCB6E8C();
  v4 = sub_25BCB681C();

  v5 = *(a1 + *(*a1 + 144));
  v6 = *(a1 + *(*a1 + 136));
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = __OFSUB__(v4, v8);
  v9 = v4 - v8;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(a1 + *(*a1 + 112)) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a1 + *(*a1 + 112));
  }

  if (v10 < 1)
  {
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
  swift_getAssociatedTypeWitness();
  sub_25BB6A94C();
  v11 = sub_25BCB65BC();
  v12 = *(a1 + *(*a1 + 144));
  result = sub_25BCB681C();
  v13 = v12 + result;
  if (__OFADD__(v12, result))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  *(a1 + *(*a1 + 144)) = v13;
  if (result < v10)
  {
    v14 = a1 + *(*a1 + 152);
    *v14 = v13;
    *(v14 + 8) = 0;
    if (*(a1 + *(*a1 + 168)) == v13)
    {
      v15 = sub_25BB679B4();
      sub_25BCB6DAC();
    }
  }

  sub_25BB6917C(v12, v11);
}

uint64_t sub_25BB6907C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25BCB6EDC();
  return swift_endAccess();
}

uint64_t sub_25BB6917C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_25BCB5FEC();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25BCB603C();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25BCB5FFC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = a2;
  swift_getAssociatedTypeWitness();
  sub_25BCB68CC();
  swift_getWitnessTable();
  result = sub_25BCB6B6C();
  if ((result & 1) == 0)
  {
    sub_25BAADFB0();
    (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
    v15 = sub_25BCB6D3C();
    (*(v11 + 8))(v13, v10);
    v16 = swift_allocObject();
    v17 = v20;
    v16[2] = a2;
    v16[3] = v17;
    v16[4] = v2;
    aBlock[4] = sub_25BB6A9D8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BB6871C;
    aBlock[3] = &block_descriptor_22;
    v18 = _Block_copy(aBlock);
    sub_25BCB617C();

    sub_25BCB600C();
    v24 = MEMORY[0x277D84F90];
    sub_25BB6A894(&qword_27FBB4E58, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E60, &unk_25BCC23E0);
    sub_25BB6A8DC(&qword_27FBB4E68, &qword_27FBB4E60, &unk_25BCC23E0);
    sub_25BCB702C();
    MEMORY[0x25F877540](0, v9, v6, v18);
    _Block_release(v18);

    (*(v23 + 8))(v6, v4);
    (*(v21 + 8))(v9, v22);
  }

  return result;
}

uint64_t sub_25BB695A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_25BAADFB0();
  swift_getAssociatedTypeWitness();
  sub_25BCB681C();
  return sub_25BCB6CEC();
}

void sub_25BB69668(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = *a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - v10;
  v12 = *(v6 + 88);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  v18 = __OFADD__(a2, v17);
  v19 = a2 + v17;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v20 = *(a3 + *(v7 + 120));
    sub_25BCB690C();
    v20(v11);
    (*(v9 + 8))(v11, AssociatedTypeWitness);
    sub_25BB68108(v16, v19);
    (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_25BB69888(uint64_t a1)
{
  if (*(v1 + *(*v1 + 112)) < 1)
  {
    return sub_25BB68760(a1);
  }

  else
  {
    return sub_25BB68B50();
  }
}

uint64_t sub_25BB698B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v22 = 0;
  v6 = *(v1 + *(v4 + 176));
  v7 = swift_allocObject();
  *(v7 + 16) = &v22;
  *(v7 + 24) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_25BB6A87C;
  *(v8 + 24) = v7;
  v20 = sub_25BACF21C;
  v21 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_25BACF24C;
  v19 = &block_descriptor;
  v9 = _Block_copy(&aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if ((v22 & 1) == 0 && (sub_25BB6803C(sub_25BB6AA64) & 1) == 0)
  {
    v11 = sub_25BB679B4();
    sub_25BCB6D9C();
  }

  __swift_storeEnumTagSinglePayload(a1, 1, 1, *(v5 + 88));
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_25BB6A884;
  *(v13 + 24) = v12;
  v20 = sub_25BB6AA90;
  v21 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_25BACF24C;
  v19 = &block_descriptor_13;
  v14 = _Block_copy(&aBlock);

  dispatch_sync(v6, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_25BB69BC0(BOOL *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  v6 = sub_25BCB6E8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = *(a2 + *(v4 + 136));
  sub_25BB678C8();
  v11 = sub_25BCB681C();

  if (!v11)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (v10 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_10;
  }

  sub_25BB678C8();
  sub_25BCB690C();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v5);
  result = (*(v7 + 8))(v9, v6);
  *a1 = EnumTagSinglePayload != 1;
  if (EnumTagSinglePayload == 1)
  {
    *(a2 + *(*a2 + 168)) = *(a2 + *(*a2 + 136));
  }

  return result;
}

uint64_t sub_25BB69D84(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  v6 = sub_25BCB6E8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = *(a2 + *(v4 + 136));
  sub_25BB678C8();
  v11 = sub_25BCB681C();

  if (v11)
  {
    if (v10 == 0x8000000000000000 && v11 == -1)
    {
      goto LABEL_16;
    }

    sub_25BB678C8();
    sub_25BCB690C();

    v14 = *(v7 + 40);
    v14(a1, v9, v6);
    v15 = *(a2 + *(*a2 + 136));
    sub_25BB678C8();
    v16 = sub_25BCB681C();

    if (v16)
    {
      if (v15 == 0x8000000000000000 && v16 == -1)
      {
        goto LABEL_17;
      }

      v18 = v15 % v16;
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v5);
      v19 = *(*a2 + 128);
      swift_beginAccess();
      sub_25BCB68CC();
      sub_25BCB67BC();
      v20 = *(a2 + v19);
      sub_25BC19AE4(v18, v20, v6);
      v14(v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v9, v6);
      nullsub_1();
      result = swift_endAccess();
      v21 = *(*a2 + 136);
      v22 = *(a2 + v21);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (!v23)
      {
        *(a2 + v21) = v24;
        return result;
      }

      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t LazyPrefetchingMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_25BB6803C(sub_25BB6AA64);
  if (v4)
  {
    v5 = *(v3 + 88);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
  }

  else
  {
    sub_25BB69888(v4);

    return sub_25BB698B0(a1);
  }
}

uint64_t LazyPrefetchingMapSequence.makeIterator()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v12 = *(v11 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v15 = &v23 - v14;
  type metadata accessor for LazyPrefetchingMapSequence.Iterator(0, v4, *(a1 + 24), v12);
  (*(v6 + 16))(v10, v2, v4);
  sub_25BCB655C();
  v16 = *(v2 + *(a1 + 44));
  v17 = *(v2 + *(a1 + 48));
  v18 = (v2 + *(a1 + 52));
  v19 = *v18;
  v20 = v18[1];

  v21 = sub_25BB67A04(v15, v16, v17, v19, v20);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v21;
}

uint64_t sub_25BB6A300@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = LazyPrefetchingMapSequence.makeIterator()(a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BB6A32C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_25BB6A730();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BB6A3C4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_25BB6A520(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_25BB6A730()
{
  result = qword_27FBB4DC8[0];
  if (!qword_27FBB4DC8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27FBB4DC8);
  }

  return result;
}

uint64_t sub_25BB6A778(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_25BB6A894(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BB6A8DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_25BB6A94C()
{
  result = qword_28154BE30;
  if (!qword_28154BE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    sub_25BB429B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BE30);
  }

  return result;
}

uint64_t sub_25BB6AA2C@<X0>(BOOL *a1@<X8>)
{
  result = sub_25BB67968();
  *a1 = (v3 & 1) == 0;
  return result;
}

uint64_t sub_25BB6AAA8()
{
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
  v1 = sub_25BCB621C();
  swift_endAccess();
  return v1;
}

void sub_25BB6AB18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v14;
  v33 = v13;
  v15 = sub_25BCB6F9C();
  if (v15 < -7)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v26[1] = a5;
  v27 = a2;
  v29 = v5;
  v30 = a4;
  v28 = v10;
  if ((v15 + 7) >= 0xF)
  {
    v17 = (v10 + 8);
    v18 = v15 / 8;
    v16 = MEMORY[0x277D84F90];
    v19 = 0x1000000000000000;
    v31 = sub_25BB6D800();
    v20 = 0;
    while (v19)
    {
      v34 = v20;
      sub_25BCB6F7C();
      v21 = sub_25BCB6F8C();
      (*v17)(v12, a3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAFD30C(0, *(v16 + 16) + 1, 1, v16);
        v16 = v24;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_25BAFD30C(v22 > 1, v23 + 1, 1, v16);
        v16 = v25;
      }

      *(v16 + 16) = v23 + 1;
      *(v16 + v23 + 32) = v21;
      --v19;
      v20 += 8;
      if (!--v18)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_4:
  (*(v30 + 16))(v16, v27);
  (*(v28 + 8))(v33, a3);
}

uint64_t sub_25BB6AD70()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_25BB6ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  sub_25BAC27B0(v5 + 16, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E80, &unk_25BCC2610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E88, &qword_25BCD6CE0);
  if (swift_dynamicCast())
  {
    sub_25BA97060(v19, v22);
    v11 = v23;
    v12 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v13 = (*(v12 + 24))(a1, a2, a3, a4, a5, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v13;
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  result = sub_25BB6D720(v19);
  if ((a1 & 0x8000000000000000) == 0)
  {
    v22[0] = 0;
    v22[1] = a1;
    MEMORY[0x28223BE20](result);
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = a5;
    v18[5] = v5;
    v18[6] = a2;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    v16 = sub_25BB42928();
    return sub_25BAB2B20(sub_25BB6D788, v18, v15, a3, MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB6AF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(a2 + 16, *(a2 + 40));
  sub_25BCB622C();
  return swift_endAccess();
}

uint64_t UInt64.vector2.getter(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F20, qword_25BCC2460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE70;
  *(inited + 32) = v2;
  *(inited + 36) = v1;
  return sub_25BC9FBFC(inited);
}

uint64_t sub_25BB6B0E4(int8x16_t a1, double a2)
{
  v2 = vmull_u32(vzip1_s32(*a1.i8, *&vextq_s8(a1, a1, 8uLL)), 0xCD9E8D57D2511F53);
  v3 = v2.i32[2];
  v4 = v2.i32[0];
  v5 = v2.i32[1];
  v6 = v2.i32[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F20, qword_25BCC2460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBDF80;
  *(inited + 32) = LODWORD(a2) ^ a1.i32[1] ^ v6;
  *(inited + 36) = v3;
  *(inited + 40) = HIDWORD(a2) ^ a1.i32[3] ^ v5;
  *(inited + 44) = v4;
  return sub_25BCA243C(inited);
}

uint64_t sub_25BB6B190(int8x16_t a1, double a2)
{
  sub_25BB6B0E4(a1, a2);
  sub_25BB6B0E4(v3, COERCE_DOUBLE(vadd_s32(*&a2, 0xBB67AE859E3779B9)));
  sub_25BB6B0E4(v4, COERCE_DOUBLE(vadd_s32(*&a2, 0x76CF5D0A3C6EF372)));
  sub_25BB6B0E4(v5, COERCE_DOUBLE(vadd_s32(*&a2, 0x32370B8FDAA66D2BLL)));
  sub_25BB6B0E4(v6, COERCE_DOUBLE(vadd_s32(*&a2, 0xED9EBA1478DDE6E4)));
  sub_25BB6B0E4(v7, COERCE_DOUBLE(vadd_s32(*&a2, 0xA90668991715609DLL)));
  sub_25BB6B0E4(v8, COERCE_DOUBLE(vadd_s32(*&a2, 0x646E171EB54CDA56)));
  sub_25BB6B0E4(v9, COERCE_DOUBLE(vadd_s32(*&a2, 0x1FD5C5A35384540FLL)));
  sub_25BB6B0E4(v10, COERCE_DOUBLE(vadd_s32(*&a2, 0xDB3D7428F1BBCDC8)));
  v12 = COERCE_DOUBLE(vadd_s32(*&a2, 0x96A522AD8FF34781));

  return sub_25BB6B0E4(v11, v12);
}

uint64_t sub_25BB6B250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 > 8)
    {
      result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000020, 0x800000025BCDCAC0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/Random.swift", 94, 2, 427);
      goto LABEL_10;
    }

    v2 = 0;
    v3 = 0;
    for (i = 32; ; ++i)
    {
      v5 = *(a1 + i) << v2;
      v6 = __CFADD__(v3, v5);
      v3 += v5;
      if (v6)
      {
        break;
      }

      v2 += 8;
      if (!--v1)
      {

        UInt64.vector2.getter(v3);
        return 0;
      }
    }

    __break(1u);
  }

  result = sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000001FLL, 0x800000025BCDCAA0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/Random.swift", 94, 2, 426);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25BB6B364(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_25BAB5C48(*(*(*a1 + 16) + 152), &unk_286D44760);
  if ((v2 & 1) == 0 || Tensor.scalarType.getter(v2) != MEMORY[0x277D849A8])
  {
    goto LABEL_23;
  }

  v3 = sub_25BBCB800(v1);

  v4 = *(v3 + 16);
  if (v4)
  {
    v14 = MEMORY[0x277D84F90];
    sub_25BB00C20(0, v4, 0);
    v5 = v14;
    v6 = *(v14 + 16);
    v7 = 32;
    do
    {
      v8 = *(v3 + v7);
      if (v6 >= *(v14 + 24) >> 1)
      {
        OUTLINED_FUNCTION_45_0();
        sub_25BB00C20(v9, v10, v11);
      }

      *(v14 + 16) = v6 + 1;
      *(v14 + 4 * v6 + 32) = v8;
      v7 += 4;
      ++v6;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v12 = *(v5 + 16);
  if (v12 < 2)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v12 == 2)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v12 < 4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12 == 4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 >= 6)
  {
    if (v12 != 6)
    {

      return 0;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_25BCB74CC("Fatal error", 11, 2, 0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/Random.swift", 94, 2, 436);
  __break(1u);
  return result;
}

uint64_t sub_25BB6B548()
{
  if (*(v0 + 24) == 1)
  {
    *(v0 + 24) = 0;
    return *(v0 + 32);
  }

  else
  {
    sub_25BB6B190(*v0, *(v0 + 16));
    sub_25BB6B5B0(v2);
    *(v0 + 24) = 1;
    *(v0 + 32) = v3;
    v1 = v4;
    sub_25BB6B95C(v0);
  }

  return v1;
}

uint64_t sub_25BB6B5B0(int8x16_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DC8, &qword_25BCBBD38);
  inited = swift_initStackObject();
  v2 = vextq_s8(a1, a1, 8uLL).u64[0];
  v3 = vshll_n_s32(vzip1_s32(*a1.i8, v2), 0x20uLL);
  v4 = vzip2_s32(*a1.i8, v2);
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  *(inited + 16) = xmmword_25BCBAE70;
  *(inited + 32) = vorrq_s8(v3, v5);
  return sub_25BC9FB70(inited);
}

uint64_t sub_25BB6B618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25BB6B250(a1);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_25BB6B668@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v43 = *v1[1].i64;
  sub_25BB6B190(*v1, v43);
  v44 = v4;
  v5 = MEMORY[0x277D84F90];
  *&v45[0] = MEMORY[0x277D84F90];
  sub_25BB005F0(0, 4, 0);
  v6 = *&v45[0];
  v8 = *(*&v45[0] + 16);
  v7 = *(*&v45[0] + 24);
  v9 = v7 >> 1;
  v10 = v8 + 1;
  if (v7 >> 1 <= v8)
  {
    sub_25BB005F0(v7 > 1, v8 + 1, 1);
    v6 = *&v45[0];
    v9 = *(*&v45[0] + 24) >> 1;
  }

  *(v6 + 16) = v10;
  v11 = v44;
  *(v6 + 4 * v8 + 32) = DWORD2(v44);
  v12 = v8 + 2;
  if (v9 < v12)
  {
    OUTLINED_FUNCTION_45_0();
    sub_25BB005F0(v32, v33, v34);
    v11 = v44;
    v6 = *&v45[0];
  }

  *(v6 + 16) = v12;
  *(v6 + 4 * v10 + 32) = HIDWORD(v11);
  v14 = *(v6 + 16);
  v13 = *(v6 + 24);
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    OUTLINED_FUNCTION_0_33(v13);
    OUTLINED_FUNCTION_45_0();
    sub_25BB005F0(v35, v36, v37);
    *&v11 = v44;
  }

  v16 = *&v45[0];
  *(*&v45[0] + 16) = v15;
  *(v16 + 4 * v14 + 32) = DWORD1(v11);
  v17 = *(v16 + 24);
  v18 = v14 + 2;
  if (v18 > (v17 >> 1))
  {
    v38 = OUTLINED_FUNCTION_0_33(v17);
    sub_25BB005F0(v38, v18, 1);
    LODWORD(v11) = v44;
    v16 = *&v45[0];
  }

  *(v16 + 16) = v18;
  *(v16 + 32 + 4 * v15) = v11;
  *&v45[0] = v5;
  sub_25BB005F0(0, 2, 0);
  v19 = v5;
  v21 = *(v5 + 16);
  v20 = *(v5 + 24);
  v22 = v20 >> 1;
  v23 = v21 + 1;
  if (v20 >> 1 <= v21)
  {
    OUTLINED_FUNCTION_0_33(v20);
    OUTLINED_FUNCTION_45_0();
    sub_25BB005F0(v39, v40, v41);
    v19 = *&v45[0];
    v20 = *(*&v45[0] + 24);
    v22 = v20 >> 1;
  }

  *(v19 + 16) = v23;
  v24 = HIDWORD(v43);
  *(v19 + 4 * v21 + 32) = LODWORD(v43);
  v25 = v21 + 2;
  if (v22 < v25)
  {
    v42 = OUTLINED_FUNCTION_0_33(v20);
    sub_25BB005F0(v42, v25, 1);
    v24 = HIDWORD(v43);
    v19 = *&v45[0];
  }

  *(v19 + 16) = v25;
  *(v19 + 32 + 4 * v23) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
  result = swift_initStackObject();
  *(result + 16) = xmmword_25BCC23F0;
  *(result + 32) = 1;
  v27 = *(v16 + 16);
  if (!v27)
  {
    __break(1u);
    goto LABEL_21;
  }

  v28 = result;
  *(result + 36) = *(v16 + 32);
  if (v27 == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(result + 40) = *(v16 + 36);
  if (v27 < 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(result + 44) = *(v16 + 40);
  if (v27 == 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = *(v16 + 44);

  v28[12] = v29;
  v30 = *(v19 + 16);
  if (!v30)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28[13] = *(v19 + 32);
  if (v30 != 1)
  {
    v31 = *(v19 + 36);

    v28[14] = v31;
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    sub_25BB2F098(&unk_286D42810, v28, v45, a1);
    return sub_25BB6B95C(v2);
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_25BB6B95C(__int128 *a1)
{
  v9 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F20, qword_25BCC2460);
  inited = swift_initStackObject();
  v3 = 0;
  *(inited + 16) = xmmword_25BCBDF80;
  *(inited + 32) = v9;
  while (v3 != -16)
  {
    v4 = *(inited + v3 + 44);
    v3 -= 4;
    v5 = __CFADD__(v4, 1);
    v6 = v4 + 1;
    if (!v5)
    {
      *(inited + v3 + 48) = v6;
      goto LABEL_6;
    }
  }

  *(inited + 44) = 0;
LABEL_6:
  result = sub_25BCA243C(inited);
  *a1 = v8;
  return result;
}

uint64_t UInt64.vector4.getter(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F20, qword_25BCC2460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBDF80;
  *(inited + 32) = 0;
  *(inited + 40) = v2;
  *(inited + 44) = v1;
  return sub_25BCA243C(inited);
}

Swift::UInt64 __swiftcall SystemArc4RandomNumberGenerator.next()()
{
  v1[1] = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  arc4random_buf(v1, 8uLL);
  return v1[0];
}

unint64_t SystemArc4RandomNumberGenerator.next(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    if (result)
    {
      v2 = sub_25BCB67DC();
      *(v2 + 16) = v1;
      if (!(v1 >> 60))
      {
LABEL_6:
        arc4random_buf((v2 + 32), 8 * v1);
        *(v2 + 16) = v1;
        return v2;
      }

      __break(1u);
    }

    v2 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t SystemArc4RandomNumberGenerator.next<A>(count:upperBound:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = result;
    if (result)
    {
      v6 = sub_25BCB67DC();
      *(v6 + 16) = v5;
      if (!(v5 >> 60))
      {
LABEL_6:
        arc4random_buf((v6 + 32), 8 * v5);
        *(v6 + 16) = v5;
        MEMORY[0x28223BE20](v7);
        v8 = sub_25BCB67EC();

        return v8;
      }

      __break(1u);
    }

    v6 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_25BB6BC08(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v19 < 0)
  {
    __break(1u);
  }

  else
  {
    v21[0] = v15;
    if (!a3)
    {
LABEL_6:
      *v21[0] = a3;
      return;
    }

    if (*(v16 + 16) >= a3)
    {
      v20 = 0;
      v23 = *v14;
      v21[2] = v13 + 40;
      v22 = v16 + 32;
      do
      {
        sub_25BB6BD88(*(v22 + 8 * v20), a5, a6, a7, a8, v18);
        (*(v13 + 40))(v23 + *(v13 + 72) * v20++, v18, a6);
      }

      while (a3 != v20);
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_25BB6BD88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v127 = a5;
  v109 = a6;
  v143 = *MEMORY[0x277D85DE8];
  v130 = a4;
  v9 = *(a4 + 8);
  v10 = *(v9 + 24);
  swift_getAssociatedTypeWitness();
  v115 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v113 = &v108 - v11;
  v12 = swift_checkMetadataState();
  v124 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v138 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v134 = &v108 - v15;
  MEMORY[0x28223BE20](v16);
  v141 = &v108 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v108 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v131 = &v108 - v18;
  v123 = v10;
  v118 = *(v10 + 16);
  v117 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v117);
  v116 = &v108 - v19;
  v20 = *(a3 - 8);
  MEMORY[0x28223BE20](v21);
  v125 = (&v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v139 = &v108 - v24;
  MEMORY[0x28223BE20](v25);
  v132 = &v108 - v26;
  MEMORY[0x28223BE20](v27);
  v133 = &v108 - v28;
  v29 = sub_25BCB6FAC();
  v129 = a2;
  v111 = v20;
  if ((v29 & 1) == 0)
  {
    v31 = sub_25BCB6FAC();
    v32 = sub_25BCB6F9C();
    if (v31)
    {
      if (v32 > 64)
      {
        goto LABEL_12;
      }

      swift_getAssociatedConformanceWitness();
      sub_25BCB790C();
      v33 = v133;
      sub_25BCB788C();
      a2 = v129;
      v34 = sub_25BCB62AC();
      (*(v20 + 8))(v33, a3);
      if ((v34 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v32 >= 64)
      {
        goto LABEL_12;
      }

      a2 = v129;
    }

    goto LABEL_10;
  }

  if (sub_25BCB6F9C() < 64)
  {
LABEL_10:
    if (!sub_25BCB6F8C())
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v142 = 0;
  sub_25BB6D800();
  v30 = v133;
  sub_25BCB6F5C();
  while (1)
  {
    v35 = sub_25BCB630C();
    (*(v20 + 8))(v30, a3);
    if ((v35 & 1) == 0)
    {
      break;
    }

LABEL_11:
    v107 = 0;
    sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000001ALL, 0x800000025BCDCAF0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/Random.swift", 94, 2, 565);
    __break(1u);
LABEL_12:
    v142 = 0;
    sub_25BB6D800();
    v30 = v133;
    sub_25BCB6F5C();
    a2 = v129;
  }

LABEL_14:
  v142 = a1;
  sub_25BB6D930();
  sub_25BCB6F5C();
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = v131;
  sub_25BCB742C();
  v38 = v141;
  v136 = *(v124 + 16);
  v137 = v124 + 16;
  v136(v141, &v37[v36], v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = sub_25BCB6FAC();
  v41 = sub_25BCB6FAC();
  v140 = v9;
  v135 = AssociatedConformanceWitness;
  if ((v40 ^ v41))
  {
    v42 = sub_25BCB6FAC();
    v43 = sub_25BCB6F9C();
    v44 = sub_25BCB6F9C();
    if (v42)
    {
      v45 = v134;
      v46 = v111;
      if (v44 < v43)
      {
        (*(v111 + 16))(v133, v129, a3);
        sub_25BCB6F5C();
        swift_getAssociatedConformanceWitness();
        v47 = v141;
        v48 = sub_25BCB629C();
        v49 = v45;
        v50 = v124 + 8;
        v51 = *(v124 + 8);
        v51(v49, v12);
        v120 = v50;
        v51(v47, v12);
        goto LABEL_23;
      }

      swift_getAssociatedConformanceWitness();
      sub_25BCB790C();
      sub_25BCB788C();
      swift_getAssociatedConformanceWitness();
      v61 = sub_25BCB629C();
      v62 = v124 + 8;
      v51 = *(v124 + 8);
      v51(v45, v12);
      v63 = v45;
      v37 = v131;
      v120 = v62;
      if (v61)
      {
        v51(v141, v12);
        goto LABEL_33;
      }

      v136(v63, v141, v12);
      sub_25BCB6F5C();
      v66 = v133;
      v67 = sub_25BCB629C();
      (*(v46 + 8))(v66, a3);
      v51(v141, v12);
      if (v67)
      {
        goto LABEL_33;
      }

LABEL_53:
      (*(v46 + 8))(v132, a3);
      v103 = v109;
      goto LABEL_56;
    }

    v55 = v133;
    v46 = v111;
    if (v43 < v44)
    {
      v56 = v141;
      v136(v134, v141, v12);
      sub_25BCB6F5C();
      v48 = sub_25BCB629C();
      (*(v46 + 8))(v55, a3);
      v51 = *(v124 + 8);
      v120 = v124 + 8;
      v51(v56, v12);
LABEL_23:
      v37 = v131;
      if ((v48 & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_33;
    }

    swift_getAssociatedConformanceWitness();
    sub_25BCB790C();
    sub_25BCB788C();
    v64 = v129;
    v65 = sub_25BCB628C();
    (*(v46 + 8))(v55, a3);
    v37 = v131;
    v38 = v141;
    if ((v65 & 1) == 0)
    {
      (*(v124 + 8))(v141, v12);
      goto LABEL_53;
    }

    (*(v46 + 16))(v55, v64, a3);
    v58 = v134;
LABEL_26:
    sub_25BCB6F5C();
    swift_getAssociatedConformanceWitness();
    v59 = sub_25BCB629C();
    v60 = v124 + 8;
    v51 = *(v124 + 8);
    v51(v58, v12);
    v120 = v60;
    v51(v38, v12);
    if ((v59 & 1) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_33;
  }

  v52 = sub_25BCB6F9C();
  if (v52 >= sub_25BCB6F9C())
  {
    v57 = v111;
    (*(v111 + 16))(v133, a2, a3);
    v58 = v134;
    v46 = v57;
    goto LABEL_26;
  }

  v136(v134, v38, v12);
  v53 = v133;
  sub_25BCB6F5C();
  v54 = sub_25BCB629C();
  v46 = v111;
  (*(v111 + 8))(v53, a3);
  v51 = *(v124 + 8);
  v120 = v124 + 8;
  v51(v38, v12);
  if ((v54 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_33:
  v128 = v51;
  v110 = swift_getAssociatedConformanceWitness();
  sub_25BCB790C();
  v68 = v125;
  sub_25BCB788C();
  v69 = v133;
  sub_25BCB743C();
  v71 = v46 + 8;
  v70 = *(v46 + 8);
  v70(v68, a3);
  sub_25BCB6F6C();
  v121 = v70;
  v70(v69, a3);
  v141 = 0;
  v119 = (v71 + 8);
  v122 = v71;
  v124 += 40;
  v125 = (v71 + 32);
  for (i = v36; ; (*v124)(&v37[i], v77, v12))
  {
    v72 = v138;
    v136(v138, &v37[v36], v12);
    v73 = sub_25BCB6FAC();
    if (((v73 ^ sub_25BCB6FAC()) & 1) == 0)
    {
      v84 = sub_25BCB6F9C();
      v79 = v139;
      if (v84 >= sub_25BCB6F9C())
      {
        v78 = v133;
        (*v119)(v133, v79, a3);
        v90 = v134;
        sub_25BCB6F5C();
        swift_getAssociatedConformanceWitness();
        v81 = sub_25BCB629C();
        v91 = v128;
        v128(v90, v12);
        v92 = v72;
        v77 = v90;
        v83 = v91(v92, v12);
      }

      else
      {
        v85 = v134;
        v136(v134, v72, v12);
        v78 = v133;
        sub_25BCB6F5C();
        v81 = sub_25BCB629C();
        v121(v78, a3);
        v86 = v72;
        v77 = v85;
        v83 = (v128)(v86, v12);
      }

LABEL_44:
      v37 = v131;
      if ((v81 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_45;
    }

    v74 = sub_25BCB6FAC();
    v75 = sub_25BCB6F9C();
    v76 = sub_25BCB6F9C();
    if (v74)
    {
      v77 = v134;
      if (v76 >= v75)
      {
        swift_getAssociatedConformanceWitness();
        sub_25BCB790C();
        sub_25BCB788C();
        swift_getAssociatedConformanceWitness();
        v95 = v138;
        v96 = sub_25BCB629C();
        v97 = v128;
        v128(v77, v12);
        v79 = v139;
        if (v96)
        {
          v83 = v97(v95, v12);
          v37 = v131;
          v78 = v133;
          goto LABEL_45;
        }

        v136(v77, v95, v12);
        v102 = v97;
        v78 = v133;
        sub_25BCB6F5C();
        v81 = sub_25BCB629C();
        v121(v78, a3);
        v83 = v102(v95, v12);
      }

      else
      {
        v78 = v133;
        v79 = v139;
        (*v119)(v133, v139, a3);
        sub_25BCB6F5C();
        swift_getAssociatedConformanceWitness();
        v80 = v138;
        v81 = sub_25BCB629C();
        v82 = v128;
        v128(v77, v12);
        v83 = v82(v80, v12);
      }

      goto LABEL_44;
    }

    v37 = v131;
    v77 = v134;
    if (v75 < v76)
    {
      v87 = v138;
      v136(v134, v138, v12);
      v78 = v133;
      sub_25BCB6F5C();
      v79 = v139;
      v88 = sub_25BCB629C();
      v121(v78, a3);
      v89 = v87;
      v77 = v134;
      v83 = (v128)(v89, v12);
      if ((v88 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_45;
    }

    sub_25BCB790C();
    v78 = v133;
    sub_25BCB788C();
    v79 = v139;
    v98 = sub_25BCB628C();
    v121(v78, a3);
    if ((v98 & 1) == 0)
    {
      break;
    }

    (*v119)(v78, v79, a3);
    sub_25BCB6F5C();
    swift_getAssociatedConformanceWitness();
    v99 = v138;
    v100 = sub_25BCB629C();
    v101 = v128;
    v128(v77, v12);
    v83 = v101(v99, v12);
    if ((v100 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_45:
    MEMORY[0x28223BE20](v83);
    v93 = v130;
    *(&v108 - 4) = a3;
    *(&v108 - 3) = v93;
    v106 = v127;
    v94 = v141;
    sub_25BAB2F30();
    v141 = v94;
    sub_25BCB742C();
    (*v125)(v37, v78, a3);
    v36 = i;
  }

  v128(v138, v12);
LABEL_55:
  v104 = v121;
  v121(v79, a3);
  v104(v132, a3);
  v103 = v109;
  v46 = v111;
LABEL_56:
  (*(v46 + 16))(v103, v37, a3);
  return (*(v108 + 8))(v37, TupleTypeMetadata2);
}

unint64_t sub_25BB6D40C(uint64_t a1)
{
  result = sub_25BB6D434();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BB6D434()
{
  result = qword_27FBB4E70;
  if (!qword_27FBB4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4E70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemArc4RandomNumberGenerator(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SystemArc4RandomNumberGenerator(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

__n128 __swift_memcpy40_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25BB6D5D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 40))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BB6D620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_25BB6D67C(uint64_t a1)
{
  result = sub_25BB189FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BB6D6A4(uint64_t a1)
{
  result = sub_25BB6D6CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BB6D6CC()
{
  result = qword_27FBB4E78;
  if (!qword_27FBB4E78)
  {
    type metadata accessor for AnyRandomNumberGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4E78);
  }

  return result;
}

uint64_t sub_25BB6D720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E90, &unk_25BCC2620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t sub_25BB6D800()
{
  result = qword_27FBB4E98;
  if (!qword_27FBB4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4E98);
  }

  return result;
}

uint64_t sub_25BB6D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  v7 = swift_allocObject();
  sub_25BA97060(&v9, v7 + 16);
  return v7;
}

unint64_t sub_25BB6D930()
{
  result = qword_27FBB4EA0[0];
  if (!qword_27FBB4EA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB4EA0);
  }

  return result;
}

uint64_t sub_25BB6D9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, v3, a1);
  return sub_25BB6DBA0(v10, a1, a2, a3);
}

uint64_t sub_25BB6DA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10, v4, a2);
  sub_25BAC27B0(a1, v15);
  return sub_25BB6DC44(v12, v15, a2, a3, a4);
}

uint64_t sub_25BB6DBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[1] = sub_25BCB657C();
  type metadata accessor for Sampling.IteratorFactory(0, a2, a3, v8);
  result = sub_25BB6DC08(a1);
  *a4 = result;
  return result;
}

uint64_t sub_25BB6DC44@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  a5[1] = sub_25BCB657C();
  type metadata accessor for Sampling.SampledIteratorFactory(0, a3, a4, v16);
  (*(v11 + 16))(v15, a1, a3);
  sub_25BAC27B0(a2, v19);
  v17 = sub_25BB6DD80(v15, v19);
  __swift_destroy_boxed_opaque_existential_1(a2);
  result = (*(v11 + 8))(a1, a3);
  *a5 = v17;
  return result;
}

uint64_t (*sub_25BB6DE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>))()
{
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  swift_getAssociatedTypeWitness();
  v14 = swift_allocBox();
  (*(v9 + 16))(v13, a1, a2);
  sub_25BCB655C();
  (*(v9 + 8))(a1, a2);
  result = swift_allocObject();
  *(result + 2) = a2;
  *(result + 3) = a3;
  *(result + 4) = v14;
  *a4 = sub_25BB6ECC4;
  a4[1] = result;
  return result;
}

uint64_t sub_25BB6DF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_projectBox();
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_25BCB6EDC();
  return swift_endAccess();
}

uint64_t sub_25BB6E018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  swift_getAssociatedTypeWitness();
  v19 = swift_allocBox();
  (*(v14 + 16))(v18, a2, a4);
  sub_25BCB655C();
  (*(v14 + 8))(a2, a4);
  OUTLINED_FUNCTION_9();
  v21 = v20;
  v22 = (*(v20 + 80) + 56) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a3;
  *(v23 + 3) = a4;
  *(v23 + 4) = a5;
  *(v23 + 5) = a6;
  *(v23 + 6) = v19;
  result = (*(v21 + 32))(v23 + v22, a1, a3);
  *a7 = sub_25BB6EC80;
  a7[1] = v23;
  return result;
}

uint64_t sub_25BB6E1E4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a7@<X8>)
{
  v27 = a2;
  v29 = a7;
  v28 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = sub_25BCB6E8C();
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v24 - v9;
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  swift_getAssociatedTypeWitness();
  swift_projectBox();
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_25BCB6EDC();
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v25);
    v14 = swift_getAssociatedTypeWitness();
    v15 = v29;
    v16 = 1;
  }

  else
  {
    v17 = v26;
    (*(v26 + 32))(v13, v10, AssociatedTypeWitness);
    v18 = sub_25BCB6B8C();
    v20 = v19;
    v21 = swift_getAssociatedTypeWitness();
    v22 = v29;
    (*(*(v21 - 8) + 16))(v29, v20, v21);
    v18(v30, 0);
    (*(v17 + 8))(v13, AssociatedTypeWitness);
    v15 = v22;
    v16 = 0;
    v14 = v21;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
}

uint64_t (*sub_25BB6E5AC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, v2 + *(v4 + 96), v5, v6);
  return sub_25BB6DE10(v8, v5, *(v4 + 88), a2);
}

uint64_t sub_25BB6E73C(uint64_t a1, __int128 *a2)
{
  sub_25BA97060(a2, v2 + *(*v2 + 136));

  return sub_25BB6E538(a1);
}

uint64_t sub_25BB6E794@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v18 - v7;
  v9 = *(v4 + 96);
  (*(v10 + 16))(&v18 - v7, v2 + v9, v5, v6);
  v11 = (v2 + *(*v2 + 136));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = *(v4 + 128);
  v19 = (*(v13 + 8))(v2 + v9, v5, v14, v12, v13);
  swift_getAssociatedTypeWitness();
  v15 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  return sub_25BB6E018(v8, &v19, v5, v15, v14, WitnessTable, a2);
}

uint64_t sub_25BB6E97C()
{
  v0 = sub_25BB6E6B4();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 136)));
  return v0;
}

uint64_t sub_25BB6E9D8(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB6EA30()
{
  Sampling.makeIterator()();
}

uint64_t sub_25BB6EAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BB6EB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BB6EB78(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BB6ECDC()
{
  sub_25BC07EE0(v0);
  v2 = v1;

  return v2;
}

uint64_t sub_25BB6ED10()
{
  sub_25BC08208();
  v1 = v0;

  return v1;
}

unint64_t sub_25BB6ED50(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_25BCB70FC();

    v10 = 0xD00000000000001DLL;
    v8 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v8);

    MEMORY[0x25F876C90](0x746F672074756220, 0xEE00206B6E617220);
    v7 = sub_25BCB77FC();
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_25BCB70FC();

    v10 = 0xD00000000000001FLL;
    v5 = MEMORY[0x277D83B88];
    v6 = MEMORY[0x25F876F80](a1, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v6);

    MEMORY[0x25F876C90](0x746F672074756220, 0xEF20657061687320);
    v7 = MEMORY[0x25F876F80](a2, v5);
LABEL_5:
    MEMORY[0x25F876C90](v7);

    return v10;
  }

  if (a1 | a2)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD000000000000015;
  }
}

void sub_25BB6EF44()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  HIDWORD(v51) = v2;
  v49 = v3;
  v48 = v4;
  v47 = v5;
  v50 = v6;
  v54 = v7;
  v52 = *v0;
  v53 = v8;
  v9 = sub_25BCB6CDC();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v10 = sub_25BCB6CFC();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_25BCB603C();
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_1();
  v46 = sub_25BB2BA50(0, &qword_28154BDB0, 0x277D85C78);
  sub_25BCB602C();
  (*(v12 + 104))(v16, *MEMORY[0x277D85258], v10);
  sub_25BB72FC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E50, &qword_25BCC2AB0);
  sub_25BB30E7C(&qword_28154BE40, &qword_27FBB4E50, &qword_25BCC2AB0, MEMORY[0x277D83970]);
  sub_25BCB702C();
  *(v0 + 16) = sub_25BCB6D2C();
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 144) = sub_25BCB614C();
  sub_25BABEF40(v49, v0 + 24);
  *(v0 + 76) = BYTE4(v51) & 1;
  *(v0 + 104) = v54;
  *(v0 + 112) = v50;
  *(v0 + 120) = v47;
  *(v0 + 128) = v48;
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();
  v18 = sub_25BB6F544(v53, v49, BYTE4(v51) & 1);
  *(v0 + 80) = v18;
  v19 = *(v47 + 16);
  v20 = [v18 outputNames];
  v21 = sub_25BCB673C();

  v22 = *(v21 + 16);

  if (v22 < v19 || (sub_25BADBF48(v47), v24 = v23, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5088, &qword_25BCC2AB8), *(swift_allocObject() + 16) = v24, , v25 = sub_25BB145F8(), v26 = [*(v1 + 80) outputNames], v27 = sub_25BCB673C(), v26, LOBYTE(v26) = sub_25BB6FB88(v27, v25, v28), , , (v26 & 1) == 0))
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCDD110);
    sub_25BADBF48(v47);
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5088, &qword_25BCC2AB8);
    *(swift_allocObject() + 16) = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5090, &unk_25BCC2AC0);
    sub_25BCB73CC();

    MEMORY[0x25F876C90](0xD00000000000002DLL, 0x800000025BCDD130);
    v32 = [*(v1 + 80) outputNames];
    v33 = MEMORY[0x277D837D0];
    v34 = sub_25BCB673C();

    v35 = MEMORY[0x25F876F80](v34, v33);
    v37 = v36;

    MEMORY[0x25F876C90](v35, v37);

    MEMORY[0x25F876C90](11815, 0xE200000000000000);
    sub_25BCB617C();
    OUTLINED_FUNCTION_2_26();
    sub_25BA97890(v38, v39, v40, v41, v42, v43, 103, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, 0, v54, 0, 0xE000000000000000, 0, 0xE000000000000000, v55);
  }

  sub_25BABF0A8(v49);

  type metadata accessor for EspressoBufferCache();
  v29 = swift_allocObject();
  *(v29 + 16) = MEMORY[0x277D84F98];
  *(v1 + 136) = v29;
  OUTLINED_FUNCTION_10_16();
}

id sub_25BB6F544(void *a1, uint64_t a2, char a3)
{
  v6 = sub_25BCB5EBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  if (qword_28154BEB0 != -1)
  {
    swift_once();
  }

  v13 = sub_25BCB5EEC();
  __swift_project_value_buffer(v13, qword_28154BEB8);
  sub_25BCB5EAC();
  v14 = sub_25BCB5EDC();
  v15 = sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v16 = swift_slowAlloc();
    v24 = a1;
    v17 = a2;
    v18 = a3;
    v19 = v16;
    *v16 = 0;
    v20 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v14, v15, v20, "Build Espresso Network", "", v19, 2u);
    v21 = v19;
    a3 = v18;
    a2 = v17;
    a1 = v24;
    MEMORY[0x25F8797F0](v21, -1, -1);
  }

  (*(v7 + 16))(v9, v12, v6);
  sub_25BCB5F2C();
  swift_allocObject();
  sub_25BCB5F1C();
  (*(v7 + 8))(v12, v6);
  v22 = sub_25BB70B48(a1, a2, a3 & 1);
  sub_25BADBBAC();

  return v22;
}

uint64_t sub_25BB6FB88(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *(a2 + 16);
  if (v4 == 1)
  {
    result = sub_25BB3BE50(a2);
    v9[0] = result;
    v9[1] = v7;
    if (v7)
    {
      MEMORY[0x28223BE20](result);
      v8[2] = v9;
      v5 = sub_25BAD9FE0(sub_25BADA100, v8, a1);

      return v5;
    }

    __break(1u);
  }

  else
  {
    if (!v4)
    {
      return 1;
    }

    return sub_25BB729F0(a1, a2, a3);
  }

  return result;
}

void sub_25BB6FC6C()
{
  OUTLINED_FUNCTION_9_18();
  v49 = v0;
  v2 = v1;
  v3 = sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_25BCB5EEC();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = v2;
  sub_25BAA51C8(v2 + 168, &v59);
  if (*(&v60 + 1))
  {
    sub_25BAC27B0(&v59, &v55);
    sub_25BABF0A8(&v59);
    sub_25BA97060(&v55, v65);
    sub_25BAC27B0(v65, &v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if (!swift_dynamicCast())
    {
      goto LABEL_27;
    }

    __swift_destroy_boxed_opaque_existential_1(v65);
  }

  else
  {
    sub_25BAA6F5C(&v59, &qword_27FBB6730, &qword_25BCBC4B0);
  }

  v47 = v5;
  v48 = v3;
  if (qword_28154BEB0 != -1)
  {
    OUTLINED_FUNCTION_3_18(&qword_28154BEB0);
  }

  v18 = __swift_project_value_buffer(v10, qword_28154BEB8);
  (*(v12 + 16))(v16, v18, v10);
  sub_25BCB5EAC();
  *swift_slowAlloc() = 0;
  v19 = sub_25BCB5EDC();
  sub_25BCB6D5C();
  v20 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_13_15(&dword_25BA90000, v21, v22, v20, "Build Program", "");
  sub_25BAD6FB0(v2, &v59);
  sub_25BC46E18(v65);
  type metadata accessor for MILProgramBuilder();
  swift_allocObject();
  sub_25BBA35C4(&v59, 0, 0, v65);
  sub_25BBA003C();
  v46 = v23;

  sub_25BCB6D4C();
  v24 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_13_15(&dword_25BA90000, v25, v26, v24, "Build Program", "");

  OUTLINED_FUNCTION_89();
  (*(v47 + 8))(v9, v3);
  (*(v12 + 8))(v16, v10);
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v27 = sub_25BC46FA0();
  sub_25BAA51C8(v2 + 168, &v59);
  v63 = v27;
  if (v27 == 2)
  {
    if (*(&v60 + 1))
    {
      sub_25BAA6F5C(&v55, &qword_27FBB6730, &qword_25BCBC4B0);
      v50 = v59;
      v51 = v60;
      v52 = v61;
      LODWORD(v53) = v62;
      sub_25BABEF40(&v50, &v55);
      v27 = sub_25BB70558(&v55);
      sub_25BABF0A8(&v50);
      goto LABEL_15;
    }

    sub_25BB703F4(2, &v50);
    sub_25BAA6F5C(&v55, &qword_27FBB6730, &qword_25BCBC4B0);
    OUTLINED_FUNCTION_4_25();
    v27 = sub_25BB70558(&v55);
    v28 = &unk_27FBB5070;
    v29 = &unk_25BCC2AA8;
  }

  else
  {
    if (*(&v60 + 1))
    {
      sub_25BAA6F5C(&v55, &qword_27FBB6730, &qword_25BCBC4B0);
      v55 = v59;
      v56 = v60;
      v57 = v61;
      v58 = v62;
      goto LABEL_15;
    }

    sub_25BB703F4(v27 & 1, &v50);
    sub_25BAA6F5C(&v55, &qword_27FBB6730, &qword_25BCBC4B0);
    OUTLINED_FUNCTION_4_25();
    v28 = &qword_27FBB6730;
    v29 = &qword_25BCBC4B0;
  }

  sub_25BAA6F5C(&v59, v28, v29);
LABEL_15:
  sub_25BAA51C8(&v55, &v59);
  if (!*(&v60 + 1))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_27:
    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    sub_25BCB70FC();
    v55 = v59;
    MEMORY[0x25F876C90](0xD000000000000010, 0x800000025BCDD070);
    sub_25BCB73CC();
    MEMORY[0x25F876C90](0xD000000000000034, 0x800000025BCDD090);
    v59 = v55;
    v64 = 3;
    sub_25BCB617C();
    OUTLINED_FUNCTION_2_26();
    sub_25BA97890(v39, v40, v41, v42, v43, v44, 119, v45, v46, v47, v48, v49, v50, *(&v50 + 1), v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54, v55, *(&v55 + 1), v56, *(&v56 + 1));
  }

  v30 = *(&v61 + 1);
  sub_25BABF0A8(&v59);
  if (v30 == 1 && (v27 & 1) == 0)
  {
    if (qword_27FBB3390 != -1)
    {
      swift_once();
    }

    v31 = sub_25BCB5F6C();
    __swift_project_value_buffer(v31, qword_27FBDB4C0);
    v32 = sub_25BCB5F4C();
    v33 = sub_25BCB6CBC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *&v59 = swift_slowAlloc();
      *v34 = 136315394;
      v35 = sub_25BB72474(1718378856, 0xE400000000000000, &v59);

      *(v34 + 4) = v35;
      *(v34 + 12) = 2080;
      v36 = sub_25BB72474(0x656C676E6973, 0xE600000000000000, &v59);

      *(v34 + 14) = v36;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_89();
    }
  }

  v37 = OUTLINED_FUNCTION_11_3();
  sub_25BBABA44(v37);
  v38 = OUTLINED_FUNCTION_11_3();
  sub_25BBABAF8(v38);
  sub_25BAA51C8(&v55, &v59);
  if (!*(&v60 + 1))
  {
    goto LABEL_26;
  }

  swift_allocObject();
  sub_25BB6EF44();
  sub_25BAA6F5C(&v55, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BA9AC78(v17);
  OUTLINED_FUNCTION_10_16();
}

void sub_25BB703F4(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2 || (a1 & 1) != 0 || (static ComputeDevice.gpu.getter(&v12), !*(&v13 + 1)))
  {
    if (qword_28154E200 != -1)
    {
      swift_once();
    }

    v4 = qword_2815573E8;
    v5 = unk_2815573F0;
    v6 = __swift_project_boxed_opaque_existential_1(qword_2815573D0, qword_2815573E8);
    v7 = MEMORY[0x28223BE20](v6);
    v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v9, v7);
    sub_25BC16FAC(1, v9, v4, v5, a2);
  }

  else
  {
    v3 = v13;
    *a2 = v12;
    *(a2 + 16) = v3;
    *(a2 + 32) = v14;
    *(a2 + 48) = v15;
  }
}

uint64_t sub_25BB70558(uint64_t a1)
{
  sub_25BAA51C8(a1, &v3);
  if (*(&v4 + 1))
  {
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = v5;
    v8 = v6;
    v1 = *(&v5 + 1);
    sub_25BB73038(*(&v5 + 1));
    sub_25BABF0A8(v7);
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0;
      }

      sub_25BB7304C(v1);
    }
  }

  else
  {
    sub_25BAA6F5C(&v3, &qword_27FBB6730, &qword_25BCBC4B0);
  }

  return 1;
}

uint64_t sub_25BB705FC(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = sub_25BCB598C();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25BB706C0, 0, 0);
}

uint64_t sub_25BB706C0()
{
  v1 = v0[21];
  (*(v0[20] + 16))(v1, v0[16], v0[19]);
  type metadata accessor for MILProgramParser(0);
  swift_allocObject();
  v0[22] = sub_25BC2CFC8(v1, 1852399981, 0xE400000000000000);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_25BB707A4;

  return sub_25BC2C79C();
}

uint64_t sub_25BB707A4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_25BB70AA4;
  }

  else
  {
    v2 = sub_25BB708B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25BB708B8()
{
  v1 = v0[22];
  v2 = *(v1 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_program);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs + 8);
      v5 = *(v1 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_outputs);
      if (v5)
      {
        v6 = v0[20];
        v7 = v0[17];
        v15 = v0[16];
        v16 = v0[19];
        v8 = *(v1 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_outputs + 8);
        sub_25BABEF40(v7, (v0 + 2));
        sub_25BABEF40(v7, (v0 + 9));
        sub_25BB73060(v3, v4);
        v2;
        sub_25BB73060(v5, v8);
        sub_25BB70558((v0 + 9));
        sub_25BAA6F5C((v0 + 9), &qword_27FBB6730, &qword_25BCBC4B0);
        v9 = swift_allocObject();
        sub_25BB6EF44();

        sub_25BABF0A8(v7);
        (*(v6 + 8))(v15, v16);
        goto LABEL_7;
      }

      sub_25BB73060(*(v1 + OBJC_IVAR____TtC14NeuralNetworks16MILProgramParser_inputs), v4);
    }
  }

  v10 = v0[19];
  v11 = v0[20];
  v12 = v0[16];
  sub_25BABF0A8(v0[17]);
  (*(v11 + 8))(v12, v10);
  v9 = 0;
LABEL_7:

  v13 = v0[1];

  return v13(v9);
}

uint64_t sub_25BB70AA4()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];

  sub_25BABF0A8(v3);
  (*(v2 + 8))(v4, v1);

  v5 = v0[1];

  return v5();
}

id sub_25BB70B48(void *a1, uint64_t a2, char a3)
{
  v6 = sub_25BB70D94();
  v7 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  if (v7 == 2)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25BCBAE40;
    *(v8 + 32) = sub_25BB70D94();
    if (qword_28154E200 != -1)
    {
      swift_once();
    }

    v9 = qword_2815573E8;
    v10 = unk_2815573F0;
    v11 = __swift_project_boxed_opaque_existential_1(qword_2815573D0, qword_2815573E8);
    v12 = MEMORY[0x28223BE20](v11);
    v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v15 + 16))(v14, v12);
    sub_25BC16FAC(1, v14, v9, v10, v24);
    v16 = v25;
    v17 = objc_allocWithZone(SNNComputeUnit);
    v18 = 2;
    if (v16 == 2)
    {
      v18 = 3;
    }

    if (v16 == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v17 initWithComputeUnitKind_];
    sub_25BABF0A8(v24);
    v7 = 0;
    *(v8 + 40) = v20;
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25BCBB6D0;
    *(v8 + 32) = sub_25BB70D94();
    if (v7 == 1)
    {
      v7 = 0;
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  v21 = sub_25BB70DEC(a3 & 1);
  objc_allocWithZone(SNNEspressoV1ExecutionContext);
  return sub_25BB71FBC(a1, v6, v8, v7, v21);
}

id sub_25BB70D94()
{
  v1 = *(v0 + 40);
  v2 = objc_allocWithZone(SNNComputeUnit);
  v3 = 2;
  if (v1 == 2)
  {
    v3 = 3;
  }

  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  return [v2 initWithComputeUnitKind_];
}

id sub_25BB70DEC(char a1)
{
  v2 = objc_allocWithZone(SNNComputePrecision);
  if (a1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return [v2 initWithComputePrecisionKind_];
}

void sub_25BB70E3C()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;

  v2 = sub_25BB70FE0();
  v4 = v3;

  v5 = sub_25BA9BEA0(v2);
  if (v4 != v5)
  {
    if (v4 >= v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    sub_25BAB4D78(v4, (v2 & 0xC000000000000001) == 0, v2);
    sub_25BAB4D78(v6 - 1, (v2 & 0xC000000000000001) == 0, v2);
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v4, v2);
      }

      else
      {
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v8 = Strong;

        v9 = sub_25BC76C08();
        [v9 lock];

        if ((*(v8 + 40) & 0x8000000000000000) != 0)
        {
          swift_unknownObjectRetain();
        }

        else
        {
          sub_25BC76F00(v10, v11, v12, v13, v14, v15, v16, v17);
        }

        [*(v8 + 48) unlock];

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_10();
      }

      else
      {
      }

      ++v4;
    }

    while (v6 != v4);
  }

  sub_25BABF0A8(v1 + 24);

  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BB70FE0()
{
  swift_beginAccess();
  v1 = *(*(v0 + 16) + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_25BB7217C();
  sub_25BCA4950();
  v4 = v3;
  sub_25BCB617C();
  sub_25BAB3820(v6);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_25BB710B4()
{
  sub_25BB70E3C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB7110C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 16);
  sub_25BC1A338(a1, v3, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_25BB71230@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25BB70FE0();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BB71310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_25BCB79CC();
  a4(v8, v6);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB7135C()
{
  sub_25BADB778(&v8);
  result = v8;
  v1 = *(v8 + 16);
  if (v1)
  {
    v2 = (v8 + 32);
    v3 = 1;
    while (1)
    {
      v4 = *v2++;
      v5 = v3 * v4;
      if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
      {
        break;
      }

      v3 = v5;
      if (!--v1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = 1;
LABEL_7:

  sub_25BADB604(&v7);
  if (v7 - 1 > 0xA)
  {
    v6 = 1;
  }

  else
  {
    v6 = qword_25BCC2B60[(v7 - 1)];
  }

  result = v5 * v6;
  if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_25BB71410(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4, char a5, char a6, void *a7)
{
  v13 = *a3;
  v14 = *a4;
  *(v7 + 217) = 0;
  swift_weakInit();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a5 & 1;
  swift_unknownObjectUnownedInit();
  bzero((v7 + 48), 0xA8uLL);
  OUTLINED_FUNCTION_14_19();
  bzero((v7 + 48), 0xA8uLL);
  sub_25BCB617C();
  swift_endAccess();
  *(v7 + 216) = a6 & 1;
  if (v14 >= 0xD || ((0x1515u >> v14) & 1) == 0)
  {
    LODWORD(v27) = 0;
    sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000001ELL, 0x800000025BCDCFD0, "NeuralNetworks/EspressoV1Executor.swift", 39, 2, 1272);
    __break(1u);
LABEL_6:
    sub_25BCB70FC();

    v18 = MEMORY[0x25F876F80](v13, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v18);

    MEMORY[0x25F876C90](0x6020726F662060, 0xE700000000000000);
    MEMORY[0x25F876C90](a1, a2);
    MEMORY[0x25F876C90](96, 0xE100000000000000);
    BYTE4(v37) = 3;
    sub_25BCB617C();
    OUTLINED_FUNCTION_2_26();
    sub_25BA97890(v19, v20, v21, v22, v23, v24, 791, v25, v26, v27, v28, 0xD000000000000015, 0x800000025BCDCFF0, v29, v30, v31, v32, v33, v34, v35, v36, v37, 0xD000000000000015, 0x800000025BCDCFF0);
  }

  v15 = dword_25BCC2B2C[v14];
  OUTLINED_FUNCTION_14_19();
  *(v7 + 208) = v15;
  sub_25BCB617C();
  v16 = espresso_buffer_pack_tensor_shape();
  swift_endAccess();

  if (v16)
  {
    goto LABEL_6;
  }

  return v7;
}

uint64_t sub_25BB71650()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    v4 = sub_25BC76C08();
    [v4 lock];

    if ((*(v3 + 40) & 0x8000000000000000) != 0)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      sub_25BC76F00(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    [*(v3 + 48) unlock];
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_10();
  }

  swift_unknownObjectUnownedDestroy();
  swift_weakDestroy();
  return v1;
}

uint64_t sub_25BB71700()
{
  sub_25BB71650();

  return swift_deallocClassInstance();
}

_BYTE *sub_25BB71768(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB71848()
{
  result = qword_27FBB5030;
  if (!qword_27FBB5030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5030);
  }

  return result;
}

unint64_t sub_25BB718A0()
{
  result = qword_27FBB5038;
  if (!qword_27FBB5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5038);
  }

  return result;
}

uint64_t sub_25BB71938(double *a1, uint64_t a2, const float *a3, uint64_t a4, char a5, unsigned __int8 a6, uint64_t a7, uint64_t a8)
{
  v25 = a2;
  v24 = a4;
  v13 = sub_25BCB783C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a5;
  v27 = a6;
  ObjectType = swift_getObjectType();
  (*(a8 + 16))(&v26, ObjectType, a8);
  result = v26;
  v19 = *(v26 + 16);
  if (v19)
  {
    v20 = (v26 + 32);
    v21 = 1;
    while (1)
    {
      v22 = *v20++;
      v23 = v21 * v22;
      if ((v21 * v22) >> 64 != (v21 * v22) >> 63)
      {
        break;
      }

      v21 = v23;
      if (!--v19)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 1;
LABEL_7:

    (*(v14 + 104))(v16, *MEMORY[0x277D84660], v13);
    sub_25BAA83F4(a3, v24, &v28, a1, v25, &v27, v23);
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

void *sub_25BB71AE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *(a3 + 48);
  if (v7)
  {
    if (a1)
    {
      v8 = a2 - a1;
    }

    else
    {
      v8 = 0;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      return memmove(a1, v7, v8);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BB71B64()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = *v2;
  sub_25BADB604(v28);
  LOBYTE(v25) = v14;
  if (sub_25BADB724(v28, &v25))
  {
    OUTLINED_FUNCTION_15_16();
    v15 = *(v0 + 48);
    v16 = sub_25BB7135C();
    if (v15)
    {
      v17 = v15 + v16;
    }

    else
    {
      v17 = 0;
    }

    sub_25BADB604(&v27);
    v26 = v14;
    sub_25BADB778(&v25);
    v18 = *(v25 + 16);
    if (v18)
    {
      v19 = (v25 + 32);
      v20 = 1;
      while (1)
      {
        v21 = *v19++;
        v22 = v20 * v21;
        if ((v20 * v21) >> 64 != (v20 * v21) >> 63)
        {
          break;
        }

        v20 = v22;
        if (!--v18)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_20;
    }

    v22 = 1;
LABEL_17:

    (*(v9 + 104))(v13, *MEMORY[0x277D84660], v7);
    sub_25BAA83F4(v15, v17, &v27, v6, v4, &v26, v22);
    (*(v9 + 8))(v13, v7);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_15_16();
  v23 = *(v0 + 48);
  if (v23)
  {
    if (v6)
    {
      v24 = v4 - v6;
    }

    else
    {
      v24 = 0;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    memmove(v6, v23, v24);
LABEL_18:
    OUTLINED_FUNCTION_10_16();
    return;
  }

LABEL_21:
  __break(1u);
}

void *sub_25BB71D2C(const void *a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    return memmove(*(a3 + 48), a1, v7);
  }

  __break(1u);
  return result;
}

BOOL sub_25BB71DA0(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_25BADB604(&v4);
  v3 = v1;
  return sub_25BADB724(&v4, &v3);
}

uint64_t sub_25BB71DE4(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong network];

  sub_25BCB63CC();
  LODWORD(Strong) = espresso_network_bind_buffer();

  if (Strong)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCDCEA0);
    type metadata accessor for EspressoBuffer();
    sub_25BCB73CC();
    MEMORY[0x25F876C90](0x74656E206F742060, 0xEC0000006B726F77);
    BYTE4(v13) = 3;
    sub_25BCB617C();
    sub_25BA97890("bindNullBuffer(to:)", 19, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/Espresso/EspressoV1Executor.swift", 118, 2, 984, v3, v4, 0, 0xE000000000000000, v5, v6, v7, v8, v9, v10, v11, v12, v13, 0, 0xE000000000000000, v14, v15);
  }

  return result;
}

uint64_t sub_25BB71F64@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = getpagesize();
  v5 = (result - 1);
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v5 & 0x80000000) == 0)
  {
    *a2 = (v5 & a1) == 0;
    return result;
  }

  __break(1u);
  return result;
}

id sub_25BB71FBC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v16[1] = *MEMORY[0x277D85DE8];
  sub_25BB2BA50(0, &qword_28154BDF8, off_279970B98);
  v11 = sub_25BCB672C();

  v16[0] = 0;
  v12 = [v6 initWithMILProgram:a1 primaryComputeUnit:a2 computeUnits:v11 preferredMetalDevice:a4 computePrecision:a5 error:v16];

  if (v12)
  {
    v13 = v16[0];
  }

  else
  {
    v14 = v16[0];
    sub_25BCB58CC();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_25BB720F0()
{
  OUTLINED_FUNCTION_5_23();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v1 = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_7_19(v1);
  OUTLINED_FUNCTION_6_27(v2);
  return v0;
}

uint64_t sub_25BB7217C()
{
  OUTLINED_FUNCTION_5_23();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v3 = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_7_19(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = (2 * (v4 / 8)) | 1;
  return v0;
}

uint64_t sub_25BB721E8()
{
  OUTLINED_FUNCTION_5_23();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DE0, &unk_25BCC2B00);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_7_19(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = 2 * (v4 / 24);
  return v0;
}

uint64_t sub_25BB72260()
{
  OUTLINED_FUNCTION_5_23();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50E0, &qword_25BCBBD88);
  v1 = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_7_19(v1);
  OUTLINED_FUNCTION_6_27(v2);
  return v0;
}

uint64_t sub_25BB72310()
{
  OUTLINED_FUNCTION_5_23();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_8_20(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_7_19(v5);
  OUTLINED_FUNCTION_6_27(v6);
  return v0;
}

void *sub_25BB72384(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

  OUTLINED_FUNCTION_8_20(a1, a2, a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = v5;
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

unint64_t sub_25BB72474(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_25BCB617C();
  v6 = sub_25BB72538(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_25BB2BA90(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25BB72538(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25BB72638(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_25BCB71FC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25BB72638(uint64_t a1, unint64_t a2)
{
  v3 = sub_25BB72684(a1, a2);
  sub_25BB727AC(&unk_286D424B0);
  return v3;
}

uint64_t sub_25BB72684(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_25BCB649C())
  {
    result = sub_25BB728A4();
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_25BCB70EC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_25BCB71FC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25BB727AC(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_25BB728FC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25BB728A4()
{
  OUTLINED_FUNCTION_5_23();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_8_20(v2, v3, v4, v5);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size_0(v6);
  v6[2] = v0;
  v6[3] = 2 * v7 - 64;
  return v6;
}

char *sub_25BB728FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5080, &qword_25BCBB958);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_25BB729F0(uint64_t isStackAllocationSafe, uint64_t a2, __n128 a3)
{
  v4 = isStackAllocationSafe;
  v12[6] = *MEMORY[0x277D85DE8];
  v12[0] = isStackAllocationSafe;
  v5 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v6 = ((1 << v5) + 63) >> 6;
  if (v5 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v7 = &v12[-1] - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_25BC42288(0, v6, v7);
    v8 = sub_25BB72B7C(v7, v6, v4, a2);
  }

  else
  {
    v10 = swift_slowAlloc();
    v8 = sub_25BB72D08(v10, v6, sub_25BB7301C);
    MEMORY[0x25F8797F0](v10, -1, -1);
  }

  return v8 & 1;
}

uint64_t sub_25BB72B7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v24 = *(a3 + 16);
  v22 = result;
  v23 = a3 + 32;
  v6 = a4 + 56;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v7 = v5;
      if (v5 == v24)
      {
        return v7 != v24;
      }

      if (v5 >= v24)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v25 = v5 + 1;
      v8 = (v23 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      sub_25BCB79CC();
      sub_25BCB617C();
      sub_25BCB625C();
      v11 = sub_25BCB7A3C();
      v12 = ~(-1 << *(a4 + 32));
      do
      {
        v13 = v11 & v12;
        v14 = (v11 & v12) >> 6;
        v15 = 1 << (v11 & v12);
        if ((v15 & *(v6 + 8 * v14)) == 0)
        {

          v5 = v25;
          goto LABEL_2;
        }

        v16 = (*(a4 + 48) + 16 * v13);
        if (*v16 == v10 && v16[1] == v9)
        {
          break;
        }

        v18 = sub_25BCB789C();
        v11 = v13 + 1;
      }

      while ((v18 & 1) == 0);

      v19 = *(v22 + 8 * v14);
      *(v22 + 8 * v14) = v19 | v15;
      v5 = v25;
      if ((v19 & v15) != 0)
      {
        continue;
      }

      break;
    }

    v20 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      ++v21;
      if (v20 != *(a4 + 16))
      {
        continue;
      }

      return v7 != v24;
    }

    break;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_25BB72D08(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
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

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

uint64_t sub_25BB72D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_25BB72B7C(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_25BB72DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BADB604(v21);
  v8 = v21[0];
  (*(a4 + 8))(v21, a3, a4);
  v9 = v21[0];
  LOBYTE(v21[0]) = v8;
  v22 = v9;
  if (!sub_25BADB724(v21, &v22))
  {
    return (*(a4 + 64))(sub_25BB72F4C, a2, MEMORY[0x277D84F78] + 8, a3, a4);
  }

  swift_beginAccess();
  v10 = *(a2 + 48);
  v11 = sub_25BB7135C();
  v12 = MEMORY[0x28223BE20](v11);
  v15 = v10;
  v16 = v13;
  v17 = v8;
  v18 = v9;
  v19 = a1;
  v20 = a4;
  return (*(a4 + 64))(sub_25BB72F68, v12);
}

void sub_25BB72F90(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    swift_unknownObjectRetain();
  }

  else
  {
  }
}

uint64_t sub_25BB72F9C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_25BB72FC4()
{
  result = qword_28154BDC0;
  if (!qword_28154BDC0)
  {
    sub_25BCB6CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BDC0);
  }

  return result;
}

uint64_t sub_25BB73038(uint64_t result)
{
  if ((result - 1) >= 2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_25BB7304C(uint64_t result)
{
  if ((result - 1) >= 2)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_25BB73060(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_25BCB617C();

    sub_25BCB617C();
  }

  return result;
}

void sub_25BB730A4()
{
  v1 = [v0 shape];
  sub_25BB50DF0();
  v2 = sub_25BCB673C();

  v3 = sub_25BA9BEA0(v2);
  if (v3)
  {
    v4 = v3;
    if (v3 >= 1)
    {
      v5 = 0;
      v6 = 1;
      while (1)
      {
        v7 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x25F8779B0](v5, v2) : *(v2 + 8 * v5 + 32);
        v8 = v7;
        v9 = [v7 integerValue];

        if ((v6 * v9) >> 64 != (v6 * v9) >> 63)
        {
          break;
        }

        ++v5;
        v6 *= v9;
        if (v4 == v5)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

uint64_t sub_25BB731A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return TensorShape.subscript.getter(v1 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB731F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

void sub_25BB73218(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_25BCB617C();
  }
}

uint64_t Dense.weight.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 32);
  if ((~v2 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  *a1 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_25BAB69FC(v2);
}

uint64_t sub_25BB732E8@<X0>(void *a1@<X8>)
{
  result = Dense.weight.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_25BB73324(uint64_t *a1)
{
  v2 = *a1;

  return Dense.weight.setter(&v2);
}

uint64_t (*Dense.weight.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(*v1 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v3);
      return sub_25BB37E84;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  __break(1u);
  return result;
}

double Dense.$weight.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;

  return result;
}

uint64_t *sub_25BB734A0(uint64_t *a1)
{
  v2 = *a1;

  return Dense.bias.setter(&v2);
}

uint64_t *Dense.bias.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 26) == 1)
  {
    if (v2)
    {
      v10 = *result;
      return Parameter.wrappedValue.setter(&v10);
    }

    OUTLINED_FUNCTION_18();
    v9 = 395;
    OUTLINED_FUNCTION_7_0();
    v8 = 0xD000000000000034;
    goto LABEL_8;
  }

  if (v2)
  {
    v9 = 399;
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = sub_25BCB74CC(v3, v4, v5, v8, v6, v7, 103, 2, v9);
    __break(1u);
  }

  return result;
}

uint64_t (*Dense.bias.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + 26) != 1)
  {
    *a1 = 0;
    return sub_25BB73754;
  }

  v3 = *(*(v1 + 16) + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v3);
      return sub_25BB7368C;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  result = OUTLINED_FUNCTION_67(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  __break(1u);
  return result;
}

uint64_t sub_25BB7368C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v9 = *a1;
      return Parameter.wrappedValue.setter(&v9);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC(v4, v5, v6, 0xD000000000000034, v7, v8, 103, 2, 395);
    __break(1u);
    return result;
  }

  v9 = *a1;

  Parameter.wrappedValue.setter(&v9);
}

void *sub_25BB73754(void *result)
{
  if (*result)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC(v1, v2, v3, 0xD000000000000037, v4, v5, 103, 2, 399);
    __break(1u);
  }

  return result;
}

void Dense.$bias.getter(uint64_t a1@<X8>)
{
  if (v1[26] == 1)
  {
    if (v1[25])
    {
      v3 = 256;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3 | v1[24];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
}

uint64_t sub_25BB73820@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *a2;
  v8 = *(a2 + 8);
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_9_19();
  *(a3 + 16) = sub_25BB1AB60(v9);
  *(a3 + 24) = 256;
  *(a3 + 26) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5100, &qword_25BCC2C10);
  v11 = OUTLINED_FUNCTION_68(v10);
  *(v11 + 16) = 0;
  *(a3 + 40) = v11;
  v12 = *(v4 + 32);
  if ((~v12 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67(v18, v19, v20, v21, v22, v23, v24, v25, v33, v34);
    __break(1u);
LABEL_11:
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v26, v27, v28, v29, v30, v31, v32);
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_10;
  }

  v13 = *(*((v12 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
  if (*(v13 + 16) <= 1uLL)
  {
    goto LABEL_11;
  }

  *(a3 + 32) = *(v13 + 40);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6;
  if (v7)
  {
    v14 = (v8 >> 8) & 1;
    v15 = v7;
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_9_19();
    v15 = sub_25BB1AB60(v16);
    LOBYTE(v8) = 0;
    LOBYTE(v14) = 1;
  }

  *(a3 + 16) = v15;
  *(a3 + 24) = v8 & 1;
  *(a3 + 25) = v14;
  *(a3 + 26) = v7 != 0;
  return result;
}

uint64_t Dense.init(weight:bias:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_9_19();
  *&v37 = sub_25BB1AB60(v6);
  WORD4(v37) = 256;
  BYTE10(v37) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5100, &qword_25BCC2C10);
  v8 = OUTLINED_FUNCTION_68(v7);
  *(v8 + 16) = 0;
  *(&v38 + 1) = v8;
  if (!sub_25BAB74D0(2, 2, 0, 0))
  {
    v29 = xmmword_25BCC2BC0;
    v30 = 0xE600000000000000;
    v31 = 0;
    v32 = xmmword_25BCBC6A0;
    LOBYTE(v33) = 0;
    v35 = 7;
    OUTLINED_FUNCTION_5_24();
    v23 = 43;
    goto LABEL_14;
  }

  WORD4(v36) = 256;
  *&v29 = v4;
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();

  *&v36 = sub_25BAB6D38(&v29, 0x100000000);

  *&v29 = v5;
  OptionalParameter.init(wrappedValue:)(&v29);
  v9 = *(*(v4 + 16) + 152);
  v10 = *(v9 + 16);
  if (v10 <= 1)
  {
    v30 = 0;
    v29 = 1uLL;
    v31 = -1;
    v33 = 0;
    v32 = v10;
    v34 = -1;
    v35 = 4;
LABEL_13:
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
LABEL_14:
    sub_25BADDD28(v17, v18, v19, v20, v21, v22, v23);
  }

  *&v38 = *(v9 + 40);
  if (!v5)
  {
LABEL_8:

    v16 = v37;
    *a3 = v36;
    a3[1] = v16;
    a3[2] = v38;
    return result;
  }

  if (!sub_25BAB74D0(1, 1, 0, 0))
  {
    v29 = xmmword_25BCC2BD0;
    v30 = 0xE400000000000000;
    v31 = 0;
    v32 = xmmword_25BCC06A0;
    LOBYTE(v33) = 0;
    v35 = 7;
    OUTLINED_FUNCTION_5_24();
    v23 = 48;
    goto LABEL_14;
  }

  v11 = *(*(v5 + 16) + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  v13 = *(*(v4 + 16) + 152);
  if (!*(v13 + 16))
  {
    v29 = 0uLL;
    v30 = 0;
    v31 = -1;
    v33 = 0;
    v32 = 0uLL;
    v34 = -1;
    v35 = 4;
    sub_25BCB617C();
    goto LABEL_13;
  }

  *(inited + 32) = *(v13 + 32);
  v14 = sub_25BAB5C48(v11, inited);
  swift_setDeallocating();
  if (v14)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_0();
  result = sub_25BCB74CC(v24, v25, v26, 0xD000000000000079, v27, v28, 99, 2, 49);
  __break(1u);
  return result;
}

uint64_t Dense.init(unitCount:weightInitializer:biasInitializer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_9_19();
  *(a3 + 16) = sub_25BB1AB60(v6);
  *(a3 + 24) = 256;
  *(a3 + 26) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5100, &qword_25BCC2C10);
  v8 = OUTLINED_FUNCTION_68(v7);
  *(v8 + 16) = 0;
  *(a3 + 40) = v8;
  if (a1 < 1)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC(v14, v15, v16, 0xD000000000000024, v17, v18, 99, 2, 72);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    swift_allocObject();

    *a3 = sub_25BB1AB04(v9);
    *(a3 + 8) = 256;
    OUTLINED_FUNCTION_1_2();
    swift_allocObject();
    if (a2)
    {
      v10 = sub_25BB1AB04(a2);
    }

    else
    {
      v11 = OUTLINED_FUNCTION_9_19();
      v10 = sub_25BB1AB60(v11);
    }

    v12 = v10;

    *(a3 + 16) = v12;
    *(a3 + 24) = 256;
    *(a3 + 26) = a2 != 0;
    *(a3 + 32) = a1;
  }

  return result;
}

uint64_t Dense.initializeParameters(for:)(uint64_t *a1)
{
  v2 = *(v1 + 26);
  v3 = *(v1 + 32);
  if (!sub_25BAB74D0(*(*(*(*a1 + 16) + 152) + 16), 2, 4, 1))
  {
LABEL_7:
    OUTLINED_FUNCTION_5_24();
    sub_25BADDD28(v11, v12, v13, v14, v15, v16, 79);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25BCBAE70;
  *(v4 + 32) = v3;

  v5 = sub_25BCB617C();
  v6 = sub_25BB731A8(v5);
  v8 = v7;

  if (v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v4 + 40) = v6;
  sub_25BB1ABC8();

  if (v2)
  {
    OUTLINED_FUNCTION_1_2();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_25BCBAE50;
    *(v10 + 32) = v3;

    sub_25BB1ABC8();
  }

  return result;
}

uint64_t sub_25BB7404C()
{
  v0 = sub_25BCB761C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB740C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB7404C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB740F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BADFA74(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BB74128@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB7404C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB74150(uint64_t a1)
{
  v2 = sub_25BB745FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB7418C(uint64_t a1)
{
  v2 = sub_25BB745FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Dense.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5110, &qword_25BCC2C20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB745FC();
  sub_25BCB7B2C();
  if (!v2)
  {
    LOBYTE(v15) = 0;
    sub_25BB3993C();
    OUTLINED_FUNCTION_12_17();
    sub_25BCB76AC();
    v17 = BYTE8(v14[0]);
    v18 = 1;
    OUTLINED_FUNCTION_12_17();
    sub_25BCB765C();
    v12 = *&v14[0];
    v13 = WORD4(v14[0]);
    v10 = v15;
    v11 = v16;
    sub_25BB73820(&v12, &v10, v14);
    v6 = OUTLINED_FUNCTION_7_1();
    v7(v6);
    v8 = v14[1];
    *a2 = v14[0];
    a2[1] = v8;
    a2[2] = v14[2];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Dense.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5118, &qword_25BCC2C28);
  OUTLINED_FUNCTION_2();
  v21 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  v19 = *(v1 + 16);
  v24 = *(v1 + 24);
  LODWORD(v6) = *(v1 + 26);
  v17 = *(v1 + 25);
  v18 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB745FC();
  sub_25BCB7B6C();
  v22 = v8;
  LOBYTE(v23) = v9;
  HIBYTE(v23) = v10;
  v25 = 0;
  sub_25BB39990();

  OUTLINED_FUNCTION_11_22();
  v11 = v20;
  sub_25BCB779C();

  if (v11)
  {
    return (*(v21 + 8))(v7, v3);
  }

  v13 = v21;
  if (v18)
  {
    if (v17)
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 | v24;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v22 = v16;
  v23 = v15;
  v25 = 1;
  OUTLINED_FUNCTION_11_22();
  sub_25BCB773C();

  return (*(v13 + 8))(v7, v3);
}

unint64_t sub_25BB745FC()
{
  result = qword_28154C2B8;
  if (!qword_28154C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C2B8);
  }

  return result;
}

uint64_t sub_25BB74650(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25BB74690(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for Dense.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB747CC()
{
  result = qword_27FBB5120;
  if (!qword_27FBB5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5120);
  }

  return result;
}

unint64_t sub_25BB74824()
{
  result = qword_28154C2A8;
  if (!qword_28154C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C2A8);
  }

  return result;
}

unint64_t sub_25BB7487C()
{
  result = qword_28154C2B0;
  if (!qword_28154C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C2B0);
  }

  return result;
}

__n128 *sub_25BB748D0(void *a1, id *a2)
{
  v8 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_2_27(v9, xmmword_25BCBB6D0);
  if (v8)
  {
    if (v4)
    {
      MEMORY[0x25F8779B0](0, a2);
    }

    else
    {
      v10 = a2[4];
    }

    OUTLINED_FUNCTION_0_34();
    if (v4)
    {
      MEMORY[0x25F8779B0](1, a2);
    }

    else
    {
      v12 = a2[5];
    }

    OUTLINED_FUNCTION_1_28();
    v13 = &selRef_cumulativeProductWithTensor_axisTensor_exclusive_reverse_name_;
  }

  else
  {
    if (v4)
    {
      MEMORY[0x25F8779B0](0, a2);
    }

    else
    {
      v11 = a2[4];
    }

    OUTLINED_FUNCTION_0_34();
    if (v4)
    {
      MEMORY[0x25F8779B0](1, a2);
    }

    else
    {
      v14 = a2[5];
    }

    OUTLINED_FUNCTION_1_28();
    v13 = &selRef_cumulativeSumWithTensor_axisTensor_exclusive_reverse_name_;
  }

  v15 = sub_25BB74C98(v8, a2, v3, v4, v5, v2, a1, v13);

  v9[2].n128_u64[0] = v15;
  return v9;
}

__n128 *sub_25BB74A4C(void *a1, uint64_t a2, SEL *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_2_27(v8, xmmword_25BCBB6D0);
  if (v4)
  {
    v9 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v9 = *(a2 + 32);
  }

  v10 = v9;
  v11 = *(v3 + 48);
  v12 = *(v3 + 56);
  v14 = *(v3 + 24);
  v13 = *(v3 + 32);
  sub_25BCB617C();
  v15 = sub_25BB74D34(v10, v11, v12, v14, v13, a1, a3);

  v8[2].n128_u64[0] = v15;
  return v8;
}

uint64_t sub_25BB74B48(uint64_t a1)
{
  result = sub_25BB74C50(&qword_27FBB4D08, type metadata accessor for ArgumentSortOperation, &unk_25BCC1D9C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB74BA0(uint64_t a1)
{
  result = sub_25BB74C50(&qword_27FBB4CF8, type metadata accessor for SortOperation, &unk_25BCC1D2C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB74BF8(uint64_t a1)
{
  result = sub_25BB74C50(&qword_27FBB5128, type metadata accessor for CumulativeOperation, &unk_25BCD3A00);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB74C50(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

id sub_25BB74C98(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, void *a7, SEL *a8)
{
  v14 = sub_25BCB633C();

  v15 = [a7 *a8];

  return v15;
}

id sub_25BB74D34(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, SEL *a7)
{
  v12 = sub_25BCB633C();

  v13 = [a6 *a7];

  return v13;
}

uint64_t sub_25BB74DC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_25BBFD334(0, result, *(a2 + 16));
  if ((v5 & 1) == 0)
  {
    v6 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v6 = *(a2 + 16);
LABEL_5:
  TensorShape.subscript.getter(0, v6, a3);
}

uint64_t resize(images:size:mode:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = *a4;
  v10 = *(*(*(*a1 + 16) + 152) + 16);
  if (!sub_25BAB74D0(v10, 3, 4, 1))
  {
    v36 = v10;
    *v37 = xmmword_25BCC2ED0;
    v37[16] = 0;
    v38 = xmmword_25BCC2EE0;
    v39 = 1;
    v42 = 7;
    OUTLINED_FUNCTION_2_28();
    v34 = 46;
    goto LABEL_6;
  }

  v11 = *(v8 + 16);
  v12 = *(v11 + 160);
  if (!sub_25BAA80BC(v12, &unk_286D42270))
  {
    LOBYTE(v45[0]) = v12;
    v36 = sub_25BC8FACC();
    *v37 = v35;
    *&v37[8] = xmmword_25BCC2ED0;
    LOBYTE(v38) = 0;
    *(&v38 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v39 = 2;
    v42 = 3;
    OUTLINED_FUNCTION_2_28();
    v34 = 47;
LABEL_6:
    sub_25BADDD28(v28, v29, v30, v31, v32, v33, v34);
  }

  v13 = *(v11 + 152);
  v14 = *(v13 + 16) - 2;
  sub_25BCB617C();
  sub_25BB74DC8(v14, v13, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE70;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  sub_25BAC0EB8(inited);
  v16 = *(v8 + 16);
  v44[0] = v9;
  v37[0] = *(v16 + 160);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = v9;

  v18 = sub_25BAAF074(sub_25BB75CB4, v17);
  v20 = v19;

  v44[111] = 0;
  v45[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ImageOps.swift";
  v45[1] = 110;
  v46 = 2;
  v47 = xmmword_25BCC2EF0;
  v48 = "init(id:operand:size:samplingMode:resultDescriptor:creationSite:backward:)";
  v49 = 74;
  v50 = 2;
  type metadata accessor for ResizeOperation();
  swift_allocObject();
  v21 = sub_25BBA8588(0, 0, 0, v16, a2, a3, v44, &v36, v45, v18, v20);
  sub_25BAA51C8(*(v8 + 16) + 168, v44);
  sub_25BAA51C8(v44, v43);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v36);

  v22 = v41;

  sub_25BAA4AF4(&v36);
  sub_25BAA49B8();
  sub_25BAA4A5C(&v36);

  v23 = v40;

  sub_25BAA4AF4(&v36);
  type metadata accessor for TensorRepresentation();
  v24 = swift_allocObject();
  LOBYTE(v36) = 1;
  v25 = sub_25BC0C92C(v21, 0, v43, 0x100000000, v22, v23, v24);
  type metadata accessor for TensorHandle();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;

  sub_25BAA6EB0();

  result = sub_25BA9C2C8(v44);
  *a5 = v26;
  return result;
}

uint64_t static InterpolationMode.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    if (v3 != 2)
    {
      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
    }

    goto LABEL_5;
  }

  if (v3 != 2)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t InterpolationMode.hash(into:)()
{
  if (*v0 == 2)
  {
    return MEMORY[0x25F878200](1);
  }

  MEMORY[0x25F878200](0);
  return sub_25BCB79EC();
}

uint64_t InterpolationMode.hashValue.getter()
{
  v1 = *v0;
  sub_25BCB79CC();
  if (v1 == 2)
  {
    MEMORY[0x25F878200](1);
  }

  else
  {
    MEMORY[0x25F878200](0);
    sub_25BCB79EC();
  }

  return sub_25BCB7A3C();
}

uint64_t sub_25BB75318(uint64_t a1)
{
  v2 = *v1;
  sub_25BCB79CC();
  if (v2 == 2)
  {
    MEMORY[0x25F878200](1);
  }

  else
  {
    MEMORY[0x25F878200](0);
    sub_25BCB79EC();
  }

  return sub_25BCB7A3C();
}

uint64_t sub_25BB7537C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v5 = *(result + 32);
      v6 = *(v5 + 16);
      v7 = *(*(a2 + 32) + 16);
      v22[0] = a5;
      v8 = *(v7 + 160);
      v17 = *(v7 + 152);
      v18 = v8;
      v31 = 0;
      v23 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ImageOps.swift";
      v24 = 110;
      v25 = 2;
      v26 = xmmword_25BCC2F00;
      v27 = "init(id:gradientOperand:operand:size:samplingMode:resultDescriptor:creationSite:)";
      v28 = 81;
      v29 = 2;
      v30 = 0;
      type metadata accessor for ResizeGradientOperation();
      swift_allocObject();

      sub_25BCB617C();
      v9 = sub_25BBA8718(0, 0, 0, v6);
      sub_25BAA51C8(*(v5 + 16) + 168, v22);
      sub_25BAA51C8(v22, v21);
      type metadata accessor for ContextManager();
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v17);

      v10 = v20;

      sub_25BAA4AF4(&v17);
      sub_25BAA49B8();
      sub_25BAA4A5C(&v17);

      v11 = v19;

      sub_25BAA4AF4(&v17);
      type metadata accessor for TensorRepresentation();
      v12 = swift_allocObject();
      LOBYTE(v17) = 1;
      v13 = sub_25BC0DE0C(v9, 0, v21, 0x100000000, v10, v11, v12);
      type metadata accessor for TensorHandle();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;

      sub_25BAA6EB0();

      sub_25BA9C2C8(v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_25BCBAE50;
      *(v15 + 32) = v14;

      *(v15 + 40) = sub_25BAC42B0();
      *(v15 + 48) = v16;

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Tensor.resized(to:mode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  v8 = *v4;
  v7 = v5;
  return resize(images:size:mode:)(&v8, a1, a2, &v7, a4);
}

uint64_t sub_25BB75678(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696D697263736964 && a2 == 0xED0000726F74616ELL;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025BCDD6F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BB75750(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t sub_25BB75848(uint64_t a1)
{
  v2 = *v1;
  sub_25BCB79CC();
  sub_25BABA604(v4, v2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB75894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB75678(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BB758BC(uint64_t a1)
{
  v2 = sub_25BB75CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB758F8(uint64_t a1)
{
  v2 = sub_25BB75CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InterpolationMode.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5130, &qword_25BCC2F18);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB75CC0();
  sub_25BCB7B6C();
  if (v10 == 2)
  {
    v16 = 1;
    v15 = 0;
    sub_25BB75D14();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
  }

  else
  {
    v14 = 0;
    sub_25BB75D14();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
    if (!v2)
    {
      v13 = 1;
      OUTLINED_FUNCTION_1_12();
      sub_25BCB776C();
    }
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t InterpolationMode.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5148, &qword_25BCC2F20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB75CC0();
  sub_25BCB7B2C();
  if (!v2)
  {
    sub_25BB75D68();
    sub_25BCB76AC();
    if (v13)
    {
      v6 = OUTLINED_FUNCTION_6_3();
      v7(v6);
      v8 = 2;
    }

    else
    {
      v9 = sub_25BCB767C();
      v10 = OUTLINED_FUNCTION_6_3();
      v11(v10);
      v8 = v9 & 1;
    }

    *a2 = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_25BB75CC0()
{
  result = qword_27FBB5138;
  if (!qword_27FBB5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5138);
  }

  return result;
}

unint64_t sub_25BB75D14()
{
  result = qword_27FBB5140;
  if (!qword_27FBB5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5140);
  }

  return result;
}

unint64_t sub_25BB75D68()
{
  result = qword_27FBB5150;
  if (!qword_27FBB5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5150);
  }

  return result;
}

unint64_t sub_25BB75DC0()
{
  result = qword_27FBB5158;
  if (!qword_27FBB5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5158);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for InterpolationMode(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InterpolationMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BB75FA4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_25BB75FC0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

_BYTE *sub_25BB75FF8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB760D8()
{
  result = qword_27FBB5160;
  if (!qword_27FBB5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5160);
  }

  return result;
}

unint64_t sub_25BB76130()
{
  result = qword_27FBB5168;
  if (!qword_27FBB5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5168);
  }

  return result;
}

unint64_t sub_25BB76188()
{
  result = qword_27FBB5170;
  if (!qword_27FBB5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5170);
  }

  return result;
}

unint64_t sub_25BB761E0()
{
  result = qword_27FBB5178;
  if (!qword_27FBB5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5178);
  }

  return result;
}

unint64_t sub_25BB76234()
{
  result = qword_27FBB5180;
  if (!qword_27FBB5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5180);
  }

  return result;
}

uint64_t sub_25BB7628C(void *a1, uint64_t a2)
{
  v6 = *(v2 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBB6D0;
  v8 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  switch(v6)
  {
    case 1:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v22 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_acosWithTensor_name_;
      break;
    case 2:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v18 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_acoshWithTensor_name_;
      break;
    case 3:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v20 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_asinWithTensor_name_;
      break;
    case 4:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v14 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_asinhWithTensor_name_;
      break;
    case 5:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v25 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_atanWithTensor_name_;
      break;
    case 6:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v28 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_atanhWithTensor_name_;
      break;
    case 7:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v21 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_ceilWithTensor_name_;
      break;
    case 8:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v31 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_cosWithTensor_name_;
      break;
    case 9:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v16 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_coshWithTensor_name_;
      break;
    case 10:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v30 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_exponentWithTensor_name_;
      break;
    case 11:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v13 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_exponentBase2WithTensor_name_;
      break;
    case 12:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v15 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_floorWithTensor_name_;
      break;
    case 13:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v27 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_identityWithTensor_name_;
      break;
    case 14:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v12 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_logarithmWithTensor_name_;
      break;
    case 15:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v19 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_reciprocalWithTensor_name_;
      break;
    case 16:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v11 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_roundWithTensor_name_;
      break;
    case 17:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v23 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_reverseSquareRootWithTensor_name_;
      break;
    case 18:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v29 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_signWithTensor_name_;
      break;
    case 19:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v33 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_sinWithTensor_name_;
      break;
    case 20:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v24 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_sinhWithTensor_name_;
      break;
    case 21:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v26 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_squareRootWithTensor_name_;
      break;
    case 22:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v32 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_squareWithTensor_name_;
      break;
    case 23:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v34 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_tanWithTensor_name_;
      break;
    case 24:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v17 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_tanhWithTensor_name_;
      break;
    default:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v9 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_absoluteWithTensor_name_;
      break;
  }

  v35 = sub_25BB07C28(a2, v3, v2, a1, v10);

  *(v7 + 32) = v35;
  return v7;
}

uint64_t sub_25BB766F8(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25BCBB6D0;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v6 = *(a2 + 32);
  }

  v7 = v6;
  v9 = *(v2 + 24);
  v8 = *(v2 + 32);
  sub_25BCB617C();
  v10 = sub_25BB76860(v7, v9, v8, a1);

  *(v5 + 32) = v10;
  return v5;
}

unint64_t sub_25BB767E0(uint64_t a1)
{
  result = sub_25BB76808();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BB76808()
{
  result = qword_27FBB5188;
  if (!qword_27FBB5188)
  {
    type metadata accessor for UnaryLogicalOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5188);
  }

  return result;
}

id sub_25BB76860(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_25BCB633C();

  v7 = [a4 notWithTensor:a1 name:v6];

  return v7;
}

uint64_t sub_25BB76908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_25BCB789C();
  }
}

unint64_t sub_25BB76960()
{
  result = qword_27FBB5190;
  if (!qword_27FBB5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5190);
  }

  return result;
}

uint64_t sub_25BB769B4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB769F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, char a6)
{
  v13 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25BCBAE50;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v6 + 16) = v14;
  *(v6 + 24) = a3;
  *(v6 + 32) = *(v13 + *MEMORY[0x277D84DE8] + 8);
  *(v6 + 40) = a4;
  *(v6 + 48) = a5 & 1;
  *(v6 + 49) = a6;
  return v6;
}

uint64_t sub_25BB76AC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6)
{
  v6 = a6;
  swift_allocObject();
  return sub_25BB76B3C(a1, a2, a3, a4, a5 & 1, v6);
}

uint64_t sub_25BB76B4C(uint64_t a1, uint64_t a2)
{
  v12[5] = (*(a2 + 16))();
  v12[2] = a1;
  v12[3] = a2;
  type metadata accessor for StoredPropertyInfo(255, a1, v4, v5);
  OUTLINED_FUNCTION_4_26();
  v6 = sub_25BCB68CC();
  v7 = type metadata accessor for AnyStoredPropertyInfo();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_25BAB2B20(sub_25BB776AC, v12, v6, v7, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  return v10;
}

void sub_25BB76C2C(uint64_t a1)
{
  v2 = v1;
  if (__swift_getEnumTagSinglePayload(v2, 1, *(a1 + 16)) == 1)
  {
    type metadata accessor for StoredPropertyInfo(0, a1, v4, v5);
    OUTLINED_FUNCTION_4_26();
    sub_25BCB67CC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    swift_allocObject();
    v6 = sub_25BCB676C();
    v8 = v7;
    v11 = type metadata accessor for StoredPropertyInfo(0, a1, v9, v10);
    MEMORY[0x28223BE20](v11);
    KeyPath = swift_getKeyPath();
    *v8 = sub_25BB76AC0(0x65756C6176, 0xE500000000000000, KeyPath, 0, 1, 1);
    sub_25BBE4B7C(v6, v11);
  }
}

uint64_t sub_25BB76D54(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v3 = sub_25BCB68CC();
  swift_getWitnessTable();
  sub_25BCB6A9C();
  v12 = v13;
  v11[2] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
  v7 = type metadata accessor for StoredPropertyInfo(0, v3, v5, v6);
  v8 = sub_25BB42928();
  return sub_25BAB2B20(sub_25BB776CC, v11, v4, v7, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
}

uint64_t sub_25BB76E44@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25BCB68CC();
  type metadata accessor for StoredPropertyInfo(0, v3, v4, v5);
  sub_25BB6D800();
  v6 = sub_25BCB6FBC();
  v8 = v7;
  KeyPath = swift_getKeyPath();
  result = sub_25BB76AC0(v6, v8, KeyPath, 0, 1, 1);
  *a2 = result;
  return result;
}

uint64_t sub_25BB76F20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  sub_25BCB68CC();
  v6 = sub_25BCB68FC();
  (*(*(v5 - 8) + 24))(v7, a1, v5);
  return v6(&v9, 0);
}

uint64_t sub_25BB7704C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = AssociatedTypeWitness;
  if (v5 <= 0x3F)
  {
    type metadata accessor for StoredPropertyInfo(255, AssociatedTypeWitness, v2, v3);
    swift_getTupleTypeMetadata2();
    v4 = sub_25BCB732C();
    if (v6 <= 0x3F)
    {
      sub_25BB77500(319);
      v4 = v7;
      if (v8 <= 0x3F)
      {
        sub_25BB77564();
        v4 = v9;
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v4;
}

uint64_t sub_25BB77158(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(result - 8) + 84);
  }

  v8 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v16 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v6, result);
    }
  }

  else
  {
    v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = a2 - v7 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *a1;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_25BB772F8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v14 = 0;
  }

  else
  {
    if (((((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a3 - v9 + 1;
    }

    else
    {
      v12 = 2;
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
  }

  if (a2 <= v9)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v8 < 0x7FFFFFFF)
          {
            v17 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v8, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v11) = v15;
        break;
      case 2:
        *(a1 + v11) = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v11) = v15;
        break;
      default:
        return;
    }
  }
}

void sub_25BB77500(uint64_t a1)
{
  if (!qword_28154BD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB5198, qword_25BCC35D8);
    v1 = sub_25BCB6E8C();
    if (!v2)
    {
      atomic_store(v1, &qword_28154BD50);
    }
  }
}

void sub_25BB77564()
{
  if (!qword_28154BE58)
  {
    v0 = sub_25BCB68CC();
    if (!v1)
    {
      atomic_store(v0, &qword_28154BE58);
    }
  }
}

void sub_25BB775D0(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for StoredPropertyInfo(0, a2, a3, a4);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
  }

  *a5 = v6;
}

unint64_t sub_25BB77648()
{
  result = qword_27FBB51B8;
  if (!qword_27FBB51B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB51B0, &unk_25BCC36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB51B8);
  }

  return result;
}

double sub_25BB776AC@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

void sub_25BB77708()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  LODWORD(v49) = v2;
  v4 = v3;
  OUTLINED_FUNCTION_9();
  v48 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_25BCB720C();
  OUTLINED_FUNCTION_6_2();
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for RecursiveStoredPropertiesIterator(0, v10, WitnessTable, v11);
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v45 - v23;
  if (!v4)
  {
LABEL_26:
    OUTLINED_FUNCTION_10_16();
    return;
  }

  OUTLINED_FUNCTION_46_7();
  v25();
  v26 = swift_allocObject();
  *(v26 + 16) = v49 & 1;
  *(v26 + 24) = v4;
  sub_25BAB1090(v9, sub_25BB929F8, v26, v10, WitnessTable, v24);
  v46 = v24;
  WitnessTable = v14;
  (*(v14 + 16))(v18, v24, v12);
  OUTLINED_FUNCTION_4_5();
  v27 = swift_getWitnessTable();
  MEMORY[0x25F876DC0](v12, v27);
  v49 = MEMORY[0x277D84F90];
  v48 = v1;
  while (1)
  {
    while (1)
    {
      sub_25BAB173C(v12, &v50);
      if (!v50)
      {
        v38 = *(WitnessTable + 8);
        v38(v21, v12);
        v50 = 0uLL;
        Array<A>.resolve(descriptor:)(&v50, v49);

        v38(v46, v12);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_48_6();
      sub_25BCB736C();
      OUTLINED_FUNCTION_31_10();
      if (swift_dynamicCastClass())
      {
        break;
      }

      sub_25BCB736C();
      OUTLINED_FUNCTION_31_10();
      if (swift_dynamicCastClass() && (v4 & 2) != 0)
      {
        OUTLINED_FUNCTION_23_13();
        OUTLINED_FUNCTION_29_11();
        if ((~v30 & 0xF000000000000007) != 0)
        {

          OUTLINED_FUNCTION_23_13();
          OUTLINED_FUNCTION_29_11();
          if ((~v31 & 0xF000000000000007) != 0 && v31 < 0)
          {
            goto LABEL_17;
          }
        }

LABEL_14:
      }

      else
      {
LABEL_12:
      }
    }

    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_23_13();
    OUTLINED_FUNCTION_29_11();
    if ((~v28 & 0xF000000000000007) == 0)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_23_13();
    OUTLINED_FUNCTION_29_11();
    if ((~v29 & 0xF000000000000007) == 0 || (v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:

    swift_getAtKeyPath();
    OUTLINED_FUNCTION_29_11();
    if ((~v32 & 0xF000000000000007) == 0)
    {
      OUTLINED_FUNCTION_32_9();
      OUTLINED_FUNCTION_7_0();
      v44 = 0xD00000000000002ELL;
      goto LABEL_29;
    }

    if ((v32 & 0x8000000000000000) == 0)
    {
      break;
    }

    v33 = v32 & 0x7FFFFFFFFFFFFFFFLL;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_0();
      sub_25BAA1B64();
      v49 = v36;
    }

    v34 = *(v49 + 16);
    if (v34 >= *(v49 + 24) >> 1)
    {
      sub_25BAA1B64();
      v49 = v37;
    }

    v35 = v49;
    *(v49 + 16) = v34 + 1;
    *(v35 + 8 * v34 + 32) = v33;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_7_0();
LABEL_29:
  sub_25BCB74CC(v39, v40, v41, v44, v42, v43, 102, 2, v45);
  __break(1u);
}

Swift::Void __swiftcall Layer.prepare(for:)(NeuralNetworks::LearningPhase a1)
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v33 = v5;
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  WitnessTable = swift_getWitnessTable();
  v14 = type metadata accessor for RecursiveStoredPropertiesIterator(0, v12, WitnessTable, v13);
  OUTLINED_FUNCTION_9();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v31 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v31 - v26;
  v28 = *v4;
  (*(v7 + 16))(v11, v2, v33, v25);
  sub_25BAB1090(v11, sub_25BB8EC74, 0, v12, WitnessTable, v27);
  (*(v16 + 16))(v20, v27, v14);
  OUTLINED_FUNCTION_4_5();
  v29 = swift_getWitnessTable();
  MEMORY[0x25F876DC0](v14, v29);
  while (1)
  {
    sub_25BAB173C(v14, &v34);
    if (!v34)
    {
      break;
    }

    LOBYTE(v34) = v28;
    swift_setAtWritableKeyPath();
  }

  v30 = *(v16 + 8);
  v30(v23, v14);
  v30(v27, v14);
  OUTLINED_FUNCTION_10_16();
}

void sub_25BB77E24(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_25BB92184(__dst, v32);
  sub_25BB88210(__src, __dst, sub_25BB8E45C, 0);
  memcpy(v32, __src, 0x80uLL);
  v2 = v32[15];
  v3 = v32[13];
  memcpy(v29, __src, sizeof(v29));
  sub_25BAA486C(v32, v28, &qword_27FBB5210, &qword_25BCC38C0);
  while (1)
  {
    v4 = v29[12];
    if (!*(v29[12] + 16))
    {
      memcpy(v27, __src, sizeof(v27));
      sub_25BAA6F5C(v27, &qword_27FBB5210, &qword_25BCC38C0);
      memcpy(v28, v29, sizeof(v28));
      sub_25BAA6F5C(v28, &qword_27FBB5210, &qword_25BCC38C0);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1958C();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v29[12] = v4;
    v27[0] = v8;
    if (v3)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v27);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5218, &qword_25BCC38C8);
        v13 = sub_25BB92940(&qword_27FBB5230, &qword_27FBB5218, &qword_25BCC38C8);
        sub_25BAB89AC(v11, v9, v29, v27, v12, v11, v13);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5218, &qword_25BCC38C8);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(v2 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v2 + 24) >> 1, v18 = v2, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_32;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5220, &qword_25BCC38D0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5228, &qword_25BCC38D8), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v28, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB78260(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_25BB92730(__dst, v32);
  sub_25BB88510(__src, __dst, sub_25BB8E45C, 0);
  memcpy(v32, __src, 0x78uLL);
  v2 = v32[14];
  v3 = v32[12];
  memcpy(v29, __src, sizeof(v29));
  sub_25BAA486C(v32, v28, &qword_27FBB59D8, &qword_25BCC3ED8);
  while (1)
  {
    v4 = v29[11];
    if (!*(v29[11] + 16))
    {
      memcpy(v27, __src, sizeof(v27));
      sub_25BAA6F5C(v27, &qword_27FBB59D8, &qword_25BCC3ED8);
      memcpy(v28, v29, sizeof(v28));
      sub_25BAA6F5C(v28, &qword_27FBB59D8, &qword_25BCC3ED8);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC195A4();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v29[11] = v4;
    v27[0] = v8;
    if (v3)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v27);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59E0, &qword_25BCC3EE0);
        v13 = sub_25BB92940(&qword_27FBB59F8, &qword_27FBB59E0, &qword_25BCC3EE0);
        sub_25BAB89AC(v11, v9, v29, v27, v12, v11, v13);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59E0, &qword_25BCC3EE0);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(v2 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v2 + 24) >> 1, v18 = v2, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_32;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59E8, &qword_25BCC3EE8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59F0, &qword_25BCC3EF0), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v28, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7869C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_25BB92680(__dst, v32);
  sub_25BB88810(__src, __dst, sub_25BB8E45C, 0);
  memcpy(v32, __src, 0xA8uLL);
  v2 = v32[20];
  v3 = v32[18];
  memcpy(v29, __src, sizeof(v29));
  sub_25BAA486C(v32, v28, &qword_27FBB59B0, &qword_25BCC3EB8);
  while (1)
  {
    v4 = v29[17];
    if (!*(v29[17] + 16))
    {
      memcpy(v27, __src, sizeof(v27));
      sub_25BAA6F5C(v27, &qword_27FBB59B0, &qword_25BCC3EB8);
      memcpy(v28, v29, sizeof(v28));
      sub_25BAA6F5C(v28, &qword_27FBB59B0, &qword_25BCC3EB8);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC195BC();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v29[17] = v4;
    v27[0] = v8;
    if (v3)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v27);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59B8, &qword_25BCC3EC0);
        v13 = sub_25BB92940(&qword_27FBB59D0, &qword_27FBB59B8, &qword_25BCC3EC0);
        sub_25BAB89AC(v11, v9, v29, v27, v12, v11, v13);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59B8, &qword_25BCC3EC0);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(v2 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v2 + 24) >> 1, v18 = v2, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_32;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59C0, &qword_25BCC3EC8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59C8, &qword_25BCC3ED0), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v28, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB78AD8(uint64_t a1)
{
  memcpy(__dst, v1, 0x9CuLL);
  sub_25BB923F0(__dst, v32);
  sub_25BB88B14(__src, __dst, sub_25BB8E45C, 0);
  memcpy(v32, __src, 0xC0uLL);
  v2 = v32[23];
  v3 = v32[21];
  memcpy(v29, __src, sizeof(v29));
  sub_25BAA486C(v32, v28, &qword_27FBB52D0, &qword_25BCC3958);
  while (1)
  {
    v4 = v29[20];
    if (!*(v29[20] + 16))
    {
      memcpy(v27, __src, sizeof(v27));
      sub_25BAA6F5C(v27, &qword_27FBB52D0, &qword_25BCC3958);
      memcpy(v28, v29, sizeof(v28));
      sub_25BAA6F5C(v28, &qword_27FBB52D0, &qword_25BCC3958);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC195D4();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v29[20] = v4;
    v27[0] = v8;
    if (v3)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v27);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52D8, &qword_25BCC3960);
        v13 = sub_25BB92940(&qword_27FBB52F0, &qword_27FBB52D8, &qword_25BCC3960);
        sub_25BAB89AC(v11, v9, v29, v27, v12, v11, v13);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52D8, &qword_25BCC3960);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(v2 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v2 + 24) >> 1, v18 = v2, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_32;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52E0, &qword_25BCC3968);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52E8, &qword_25BCC3970), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v28, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB78F18(uint64_t a1)
{
  memcpy(__dst, v1, 0x43uLL);
  sub_25BB924FC(__dst, v32);
  sub_25BB88E18();
  memcpy(v32, __src, 0x68uLL);
  v2 = v32[12];
  v3 = v32[10];
  memcpy(v29, __src, sizeof(v29));
  sub_25BAA486C(v32, v28, &qword_27FBB56E8, &qword_25BCC3C88);
  while (1)
  {
    v4 = v29[9];
    if (!*(v29[9] + 16))
    {
      memcpy(v27, __src, sizeof(v27));
      sub_25BAA6F5C(v27, &qword_27FBB56E8, &qword_25BCC3C88);
      memcpy(v28, v29, sizeof(v28));
      sub_25BAA6F5C(v28, &qword_27FBB56E8, &qword_25BCC3C88);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1955C();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v29[9] = v4;
    v27[0] = v8;
    if (v3)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v27);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F0, &qword_25BCC3C90);
        v13 = sub_25BB92940(&qword_27FBB5708, &qword_27FBB56F0, &qword_25BCC3C90);
        sub_25BAB89AC(v11, v9, v29, v27, v12, v11, v13);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F0, &qword_25BCC3C90);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(v2 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v2 + 24) >> 1, v18 = v2, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_32;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F8, &qword_25BCC3C98);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5700, &qword_25BCC3CA0), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v28, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB79364(uint64_t a1)
{
  sub_25BB890D8(sub_25BB8E45C, 0, &v37);
  v1 = v37;
  v2 = v38;
  v3 = v39;
  v4 = v40;
  v33 = v37;
  v34 = v38;
  v35 = v39;
  v36 = v40;

  sub_25BA9D8C4(v2, v3);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v1 + 16))
    {
      v26 = v38;
      v27 = v39;

      sub_25BA9D148(v26, v27);

      v28 = v34;
      v29 = v35;

      sub_25BA9D148(v28, v29);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC195EC();
      v1 = v5;
    }

    v6 = *(v1 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v1 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v1 + 16) = v7;
    v33 = v1;
    v32 = v8;
    if (v2)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();

      LOBYTE(v10) = v2(v10, &v32);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5508, &qword_25BCC3B18);
        v13 = sub_25BB92940(&qword_27FBB5520, &qword_27FBB5508, &qword_25BCC3B18);
        sub_25BAB89AC(v11, v9, &v33, &v32, v12, v11, v13);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5508, &qword_25BCC3B18);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(v4 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v4 + 24) >> 1, v18 = v4, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_32;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5510, &qword_25BCC3B20);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5518, &qword_25BCC3B28), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v31, 0);
    }

    v1 = v33;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7973C(uint64_t a1)
{
  v2 = v1[1];
  v32[0] = *v1;
  v32[1] = v2;
  v32[2] = v1[2];
  sub_25BB925D0(v32, __dst);
  sub_25BB8936C(v32, sub_25BB8E45C, 0, __src);
  memcpy(__dst, __src, 0x50uLL);
  v3 = __dst[9];
  v4 = __dst[7];
  memcpy(v30, __src, sizeof(v30));
  sub_25BAA486C(__dst, v29, &qword_27FBB5848, &qword_25BCC3D98);
  while (1)
  {
    v5 = v30[6];
    if (!*(v30[6] + 16))
    {
      memcpy(v28, __src, sizeof(v28));
      sub_25BAA6F5C(v28, &qword_27FBB5848, &qword_25BCC3D98);
      memcpy(v29, v30, sizeof(v29));
      sub_25BAA6F5C(v29, &qword_27FBB5848, &qword_25BCC3D98);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19604();
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    v30[6] = v5;
    v28[0] = v9;
    if (v4)
    {
      v11 = *(v10 + 32);
      swift_beginAccess();

      LOBYTE(v11) = v4(v11, v28);
      swift_endAccess();
      if (v11)
      {
        v12 = *(v10 + 32);

        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5850, &qword_25BCC3DA0);
        v14 = sub_25BB92940(&qword_27FBB5868, &qword_27FBB5850, &qword_25BCC3DA0);
        sub_25BAB89AC(v12, v10, v30, v28, v13, v12, v14);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5850, &qword_25BCC3DA0);
    swift_dynamicCastClassUnconditional();
    v15 = *(v10 + 16);
    v16 = *(v15 + 16);
    v17 = *(v3 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v3 + 24) >> 1, v19 = v3, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5858, &qword_25BCC3DA8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5860, &qword_25BCC3DB0), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v26 = sub_25BB1B740(a1);
      }

      v24(v29, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB79B78(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (*(v1 + 9))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  sub_25BB89658(v2, v5 | v3, v4, sub_25BB8E45C, 0, &v39);
  v43[1] = v40;
  v43[2] = v41;
  v43[0] = v39;
  v6 = v42;
  v44 = v42;
  v7 = v41;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  sub_25BAA486C(v43, v33, &qword_27FBB53E0, &qword_25BCC3A30);
  while (1)
  {
    v8 = *(&v36 + 1);
    if (!*(*(&v36 + 1) + 16))
    {
      v31[0] = v39;
      v31[1] = v40;
      v31[2] = v41;
      v32 = v42;
      sub_25BAA6F5C(v31, &qword_27FBB53E0, &qword_25BCC3A30);
      v33[0] = v35;
      v33[1] = v36;
      v33[2] = v37;
      v34 = v38;
      sub_25BAA6F5C(v33, &qword_27FBB53E0, &qword_25BCC3A30);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1961C();
      v8 = v9;
    }

    v10 = *(v8 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v8 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v8 + 16) = v11;
    *(&v36 + 1) = v8;
    LODWORD(v31[0]) = v12;
    if (v7)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();

      LOBYTE(v14) = v7(v14, v31);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);

        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53E8, &qword_25BCC3A38);
        v17 = sub_25BB92940(&qword_27FBB5400, &qword_27FBB53E8, &qword_25BCC3A38);
        sub_25BAB89AC(v15, v13, &v35, v31, v16, v15, v17);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53E8, &qword_25BCC3A38);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_32;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_34;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_35;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_33;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53F0, &qword_25BCC3A40);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53F8, &qword_25BCC3A48), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v33, 0);
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_25BB79FE4(uint64_t a1)
{
  v2 = v1[1];
  v38[0] = *v1;
  v38[1] = v2;
  sub_25BB924A0(v38, v39);
  sub_25BB8994C(v38, sub_25BB8E45C, 0, &v34);
  v39[2] = v36;
  v39[3] = v37;
  v39[0] = v34;
  v39[1] = v35;
  v3 = *(&v37 + 1);
  v4 = *(&v36 + 1);
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v33 = v37;
  sub_25BAA486C(v39, v29, &qword_27FBB5390, &qword_25BCC39F0);
  while (1)
  {
    v5 = v32;
    if (!*(v32 + 16))
    {
      v28[0] = v34;
      v28[1] = v35;
      v28[2] = v36;
      v28[3] = v37;
      sub_25BAA6F5C(v28, &qword_27FBB5390, &qword_25BCC39F0);
      v29[0] = v30;
      v29[1] = v31;
      v29[2] = v32;
      v29[3] = v33;
      sub_25BAA6F5C(v29, &qword_27FBB5390, &qword_25BCC39F0);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19634();
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    *&v32 = v5;
    LODWORD(v28[0]) = v9;
    if (v4)
    {
      v11 = *(v10 + 32);
      swift_beginAccess();

      LOBYTE(v11) = v4(v11, v28);
      swift_endAccess();
      if (v11)
      {
        v12 = *(v10 + 32);

        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5398, &qword_25BCC39F8);
        v14 = sub_25BB92940(&qword_27FBB53B0, &qword_27FBB5398, &qword_25BCC39F8);
        sub_25BAB89AC(v12, v10, &v30, v28, v13, v12, v14);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5398, &qword_25BCC39F8);
    swift_dynamicCastClassUnconditional();
    v15 = *(v10 + 16);
    v16 = *(v15 + 16);
    v17 = *(v3 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v3 + 24) >> 1, v19 = v3, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53A0, &qword_25BCC3A00);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53A8, &qword_25BCC3A08), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v26 = sub_25BB1B740(a1);
      }

      v24(v29, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7A410(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_25BB92890(__dst, v32);
  sub_25BB89C28(__src, __dst, sub_25BB8E45C, 0);
  memcpy(v32, __src, 0x78uLL);
  v2 = v32[14];
  v3 = v32[12];
  memcpy(v29, __src, sizeof(v29));
  sub_25BAA486C(v32, v28, &qword_27FBB5A28, &qword_25BCC3F18);
  while (1)
  {
    v4 = v29[11];
    if (!*(v29[11] + 16))
    {
      memcpy(v27, __src, sizeof(v27));
      sub_25BAA6F5C(v27, &qword_27FBB5A28, &qword_25BCC3F18);
      memcpy(v28, v29, sizeof(v28));
      sub_25BAA6F5C(v28, &qword_27FBB5A28, &qword_25BCC3F18);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1964C();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v29[11] = v4;
    v27[0] = v8;
    if (v3)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v27);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A30, &qword_25BCC3F20);
        v13 = sub_25BB92940(&qword_27FBB5A48, &qword_27FBB5A30, &qword_25BCC3F20);
        sub_25BAB89AC(v11, v9, v29, v27, v12, v11, v13);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A30, &qword_25BCC3F20);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(v2 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v2 + 24) >> 1, v18 = v2, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_32;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A38, &qword_25BCC3F28);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A40, &qword_25BCC3F30), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v28, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7A84C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_25BB927E0(__dst, v32);
  sub_25BB89F28(__src, __dst, sub_25BB8E45C, 0);
  memcpy(v32, __src, 0x98uLL);
  v2 = v32[18];
  v3 = v32[16];
  memcpy(v29, __src, sizeof(v29));
  sub_25BAA486C(v32, v28, &qword_27FBB5A00, &qword_25BCC3EF8);
  while (1)
  {
    v4 = v29[15];
    if (!*(v29[15] + 16))
    {
      memcpy(v27, __src, sizeof(v27));
      sub_25BAA6F5C(v27, &qword_27FBB5A00, &qword_25BCC3EF8);
      memcpy(v28, v29, sizeof(v28));
      sub_25BAA6F5C(v28, &qword_27FBB5A00, &qword_25BCC3EF8);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19664();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v29[15] = v4;
    v27[0] = v8;
    if (v3)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v27);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A08, &qword_25BCC3F00);
        v13 = sub_25BB92940(&qword_27FBB5A20, &qword_27FBB5A08, &qword_25BCC3F00);
        sub_25BAB89AC(v11, v9, v29, v27, v12, v11, v13);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A08, &qword_25BCC3F00);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(v2 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v2 + 24) >> 1, v18 = v2, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_32;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A10, &qword_25BCC3F08);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A18, &qword_25BCC3F10), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v28, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7AC88(uint64_t a1)
{
  v2 = *v1;
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 4);

  sub_25BB8A22C(v5, v4, v3, sub_25BB8E45C, 0, &qword_27FBB56A8, &qword_25BCC3C58, &v39, v2);
  v43[1] = v40;
  v43[2] = v41;
  v43[0] = v39;
  v6 = v42;
  v44 = v42;
  v7 = v41;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  sub_25BAA486C(v43, v33, &qword_27FBB56A8, &qword_25BCC3C58);
  while (1)
  {
    v8 = *(&v36 + 1);
    if (!*(*(&v36 + 1) + 16))
    {
      v31[0] = v39;
      v31[1] = v40;
      v31[2] = v41;
      v32 = v42;
      sub_25BAA6F5C(v31, &qword_27FBB56A8, &qword_25BCC3C58);
      v33[0] = v35;
      v33[1] = v36;
      v33[2] = v37;
      v34 = v38;
      sub_25BAA6F5C(v33, &qword_27FBB56A8, &qword_25BCC3C58);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19574();
      v8 = v9;
    }

    v10 = *(v8 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v8 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v8 + 16) = v11;
    *(&v36 + 1) = v8;
    LODWORD(v31[0]) = v12;
    if (v7)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();

      LOBYTE(v14) = v7(v14, v31);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);

        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B0, &qword_25BCC3C60);
        v17 = sub_25BB92940(&qword_27FBB56C8, &qword_27FBB56B0, &qword_25BCC3C60);
        sub_25BAB89AC(v15, v13, &v35, v31, v16, v15, v17);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B0, &qword_25BCC3C60);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_32;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B8, &qword_25BCC3C68);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56C0, &qword_25BCC3C70), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v33, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7B100(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_25BB922E4(__dst, v32);
  sub_25BB8A4E8(__src, __dst, sub_25BB8E45C, 0);
  memcpy(v32, __src, 0x70uLL);
  v2 = v32[13];
  v3 = v32[11];
  memcpy(v29, __src, sizeof(v29));
  sub_25BAA486C(v32, v28, &qword_27FBB5260, &qword_25BCC3900);
  while (1)
  {
    v4 = v29[10];
    if (!*(v29[10] + 16))
    {
      memcpy(v27, __src, sizeof(v27));
      sub_25BAA6F5C(v27, &qword_27FBB5260, &qword_25BCC3900);
      memcpy(v28, v29, sizeof(v28));
      sub_25BAA6F5C(v28, &qword_27FBB5260, &qword_25BCC3900);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1967C();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v29[10] = v4;
    v27[0] = v8;
    if (v3)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v27);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5268, &qword_25BCC3908);
        v13 = sub_25BB92940(&qword_27FBB5280, &qword_27FBB5268, &qword_25BCC3908);
        sub_25BAB89AC(v11, v9, v29, v27, v12, v11, v13);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5268, &qword_25BCC3908);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(v2 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v2 + 24) >> 1, v18 = v2, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_32;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5270, &qword_25BCC3910);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5278, &qword_25BCC3918), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v28, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}