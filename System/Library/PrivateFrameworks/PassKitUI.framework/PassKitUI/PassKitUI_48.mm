uint64_t sub_1BD519970()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v13[0] = v13 - v1;
  v2 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BE04A874();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1BE04A884();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1BE048E94();
  __swift_allocate_value_buffer(v10, qword_1EBDAB258);
  __swift_project_value_buffer(v10, qword_1EBDAB258);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_1EBDAB400);
  (*(v4 + 16))(v6, v11, v3);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v9 + 56))(v13[0], 1, 1, v8);
  return sub_1BE048E84();
}

void *sub_1BD519C8C@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88, &unk_1BE0BF2F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v25[0] = v25 - v2;
  v3 = sub_1BE048B74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD493E0, &unk_1BE0DED20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - v11;
  v13 = sub_1BE04A884();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  sub_1BE0487C4();
  if (v26)
  {
    v26, v15, v16, v17, v18, v19, v20, v21;
    result = sub_1BE0487C4();
    if (!v26)
    {
      __break(1u);
      return result;
    }

    sub_1BE04A864();
  }

  else
  {
    sub_1BE0487C4();
    sub_1BD51AC14();
    sub_1BE048E14();
  }

  sub_1BE0487C4();
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_1BD0DE53C(v9, &qword_1EBD493E0, &unk_1BE0DED20);
    v23 = 1;
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    sub_1BD0DE53C(v9, &qword_1EBD493E0, &unk_1BE0DED20);
    sub_1BD51C9EC(&qword_1EBD493F0, MEMORY[0x1E695A360], MEMORY[0x1E695A358]);
    sub_1BE048EF4();
    (*(v4 + 8))(v6, v3);
    v23 = 0;
  }

  (*(v14 + 56))(v12, v23, 1, v13);
  v24 = sub_1BE048BB4();
  (*(*(v24 - 8) + 56))(v25[0], 1, 1, v24);
  return sub_1BE048BD4();
}

uint64_t sub_1BD51A07C(void *a1)
{
  v2 = sub_1BE04CFF4();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1BE04CFC4();
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v12 = sub_1BE04CFD4();
  sub_1BE04D004();
  v26 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();
    a1, v13, v14, v15, v16, v17, v18, v19;
    v20 = v27;
    if ((*(v27 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 8))(v4, v2);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "TransactionEntity:entitiesForIdentifier", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD51A368(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD1CDC44;

  return sub_1BD51C214(a1);
}

unint64_t sub_1BD51A45C()
{
  result = qword_1EBD49370;
  if (!qword_1EBD49370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49370);
  }

  return result;
}

unint64_t sub_1BD51A4B0()
{
  result = qword_1EBD49378;
  if (!qword_1EBD49378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49378);
  }

  return result;
}

unint64_t sub_1BD51A508()
{
  result = qword_1EBD49380;
  if (!qword_1EBD49380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49388, qword_1BE0DE8D8);
    sub_1BD51A4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49380);
  }

  return result;
}

uint64_t sub_1BD51A58C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1BD51A6F4();
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

unint64_t sub_1BD51A644()
{
  result = qword_1EBD49390;
  if (!qword_1EBD49390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49390);
  }

  return result;
}

unint64_t sub_1BD51A69C()
{
  result = qword_1EBD49398;
  if (!qword_1EBD49398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49398);
  }

  return result;
}

unint64_t sub_1BD51A6F4()
{
  result = qword_1EBD493A0;
  if (!qword_1EBD493A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493A0);
  }

  return result;
}

unint64_t sub_1BD51A74C()
{
  result = qword_1EBD493A8;
  if (!qword_1EBD493A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493A8);
  }

  return result;
}

uint64_t sub_1BD51A7A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36C80 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49400, &qword_1BE0DED30);
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB240);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD51A858()
{
  result = qword_1EBD493B0;
  if (!qword_1EBD493B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493B0);
  }

  return result;
}

unint64_t sub_1BD51A8AC()
{
  result = qword_1EBD493B8;
  if (!qword_1EBD493B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493B8);
  }

  return result;
}

unint64_t sub_1BD51A904()
{
  result = qword_1EBD493C0;
  if (!qword_1EBD493C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493C0);
  }

  return result;
}

uint64_t sub_1BD51A958(uint64_t a1)
{
  sub_1BD51AC68();
  v2 = sub_1BE048DE4();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1BD51A9FC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1BD51AAE8(uint64_t a1)
{
  v2 = sub_1BD0D7160();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

unint64_t sub_1BD51AB38()
{
  result = qword_1EBD493D8;
  if (!qword_1EBD493D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493D8);
  }

  return result;
}

uint64_t sub_1BD51AB90(uint64_t a1)
{
  sub_1BD51A904();

  return sub_1BE048EF4();
}

unint64_t sub_1BD51AC14()
{
  result = qword_1EBD493E8;
  if (!qword_1EBD493E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493E8);
  }

  return result;
}

unint64_t sub_1BD51AC68()
{
  result = qword_1EBD493F8;
  if (!qword_1EBD493F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493F8);
  }

  return result;
}

uint64_t sub_1BD51ACBC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2[19] = a1;
  v2[20] = v3;
  v2[21] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1BD51ACE4, 0, 0);
}

uint64_t sub_1BD51ACE4()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v0[22] = v1;
  v2 = sub_1BE052404();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD51AE40;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49490, &unk_1BE0DEDD0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD51AFCC;
  v0[13] = &block_descriptor_16_4;
  v0[14] = v3;
  [v1 transactionTagsForTransactionWithIdentifier:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD51AE40()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD51AF20, 0, 0);
}

uint64_t sub_1BD51AF20()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    sub_1BD518C08(v1, v2);
    v4 = v3;
    v1, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v0 + 152);

  *v12 = v4;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1BD51AFCC(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = 0;
  if (a2)
  {
    sub_1BD51C9A0();
    sub_1BD51C9EC(&qword_1EBD49498, sub_1BD51C9A0, MEMORY[0x1E69E81B8]);
    v4 = sub_1BE052A34();
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1BD51B088(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2[20] = a1;
  v2[21] = v3;
  v2[22] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1BD51B0B0, 0, 0);
}

uint64_t sub_1BD51B0B0()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v0[23] = v1;
  v2 = sub_1BE052404();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD51B20C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52830, &qword_1BE0F6230);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD784ED8;
  v0[13] = &block_descriptor_13_3;
  v0[14] = v3;
  [v1 passUniqueIdentifierForTransactionWithIdentifier:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD51B20C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD51B2EC, 0, 0);
}

id sub_1BD51B2EC()
{
  v20 = v0;
  v1 = *(v0 + 152);

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    if (v1)
    {
      v4 = sub_1BE052404();
      v1, v5, v6, v7, v8, v9, v10, v11;
    }

    else
    {
      v4 = 0;
    }

    v12 = [v3 passWithUniqueID_];

    v13 = v12;
    v14 = *(v0 + 184);
    v15 = *(v0 + 160);
    if (v13)
    {
      sub_1BD02F840(v13, 0, 0xF000000000000000, v19);

      v16 = v19[1];
      *v15 = v19[0];
      v15[1] = v16;
      v17 = v19[3];
      v15[2] = v19[2];
      v15[3] = v17;
    }

    else
    {

      v15[2] = 0u;
      v15[3] = 0u;
      *v15 = 0u;
      v15[1] = 0u;
    }

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD51B424@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v68 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v67 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD493E0, &unk_1BE0DED20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v59 - v9;
  v10 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1BE04A874();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1BE04A884();
  MEMORY[0x1EEE9AC00](v16 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49438, &unk_1BE0DED70);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_1EBDAB400);
  v18 = *(v12 + 16);
  v18(v14, v17, v11);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v65 = sub_1BE0487F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C740, &qword_1BE0EEE10);
  sub_1BE052354();
  v18(v14, v17, v11);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v64 = sub_1BE048824();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49440, &qword_1BE0DED80);
  sub_1BE052354();
  v18(v14, v17, v11);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v70 = sub_1BE048814();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49448, &qword_1BE0DED88);
  sub_1BE052354();
  v18(v14, v17, v11);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BD0F0AB4();
  v69 = sub_1BE0487E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49450, &qword_1BE0DED90);
  sub_1BE052354();
  v18(v14, v17, v11);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BD51C94C();
  v63 = sub_1BE0487E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49460, &qword_1BE0DED98);
  sub_1BE052354();
  v18(v14, v17, v11);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v19 = MEMORY[0x1E695A618];
  sub_1BD0DE4F4(&qword_1EBD49468, &qword_1EBD49470, &qword_1BE0DEDA8, MEMORY[0x1E695A618]);
  v62 = sub_1BE048804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49478, &qword_1BE0DEDB0);
  sub_1BE052354();
  v18(v14, v17, v11);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BD0DE4F4(&qword_1EBD49480, &qword_1EBD49488, &unk_1BE0DEDC0, v19);
  v20 = sub_1BE048804();
  v21 = v71;
  result = [v71 identifier];
  if (result)
  {
    v23 = result;
    v24 = sub_1BE052434();
    v26 = v25;

    v27 = [v21 amount];
    v28 = v66;
    v29 = v65;
    v30 = v70;
    if (v27)
    {
      v31 = v27;
      v32 = [v21 currencyCode];
      if (v32)
      {
        v33 = v32;
        sub_1BE052434();
        v59 = v26;

        sub_1BE0533F4();
        v34 = v61;
        sub_1BE048B54();
        v35 = sub_1BE048B74();
        (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
        sub_1BD0DE19C(v34, v60, &qword_1EBD493E0, &unk_1BE0DED20);
        sub_1BE0487D4();

        v36 = v34;
        v30 = v70;
        v26 = v59;
        sub_1BD0DE53C(v36, &qword_1EBD493E0, &unk_1BE0DED20);
      }

      else
      {
      }
    }

    v37 = [v21 transactionDate];
    if (v37)
    {
      v38 = v37;
      sub_1BE04AEE4();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = sub_1BE04AF64();
    (*(*(v40 - 8) + 56))(v28, v39, 1, v40);
    sub_1BD0DE19C(v28, v67, &unk_1EBD39970, &unk_1BE0B9F80);
    sub_1BE0487D4();
    sub_1BD0DE53C(v28, &unk_1EBD39970, &unk_1BE0B9F80);
    v41 = [v21 merchant];
    v42 = v64;
    if (v41)
    {
      v43 = v41;
      v44 = [v41 displayName];
      if (v44)
      {
        v45 = v30;
        v46 = v29;
        v47 = v26;
        v48 = v24;
        v49 = v20;
        v50 = v44;
        v51 = sub_1BE052434();
        v53 = v52;

        v20 = v49;
        v24 = v48;
        v26 = v47;
        v29 = v46;
        v30 = v45;
        v21 = v71;
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }

      v78 = v51;
      v79 = v53;
      sub_1BE0487D4();
      v54 = sub_1BD0F0F04([v43 category]);
      if (v54 != 8)
      {
        LOBYTE(v78) = v54;
        sub_1BE0487D4();
      }
    }

    LOBYTE(v78) = sub_1BD9F4650([v21 transactionType]);
    v55 = v63;
    sub_1BE0487D4();

    *&v73 = v24;
    *(&v73 + 1) = v26;
    *&v74 = v29;
    *(&v74 + 1) = v42;
    *&v75 = v30;
    *(&v75 + 1) = v69;
    *&v76 = v55;
    *(&v76 + 1) = v62;
    v77 = v20;
    v78 = v24;
    v79 = v26;
    v80 = v29;
    v81 = v42;
    v82 = v30;
    v83 = v69;
    v84 = v55;
    v85 = v62;
    v86 = v20;
    sub_1BD0D7104(&v73, v72);
    result = sub_1BD0D71B4(&v78);
    v56 = v76;
    v57 = v68;
    *(v68 + 32) = v75;
    *(v57 + 48) = v56;
    *(v57 + 64) = v77;
    v58 = v74;
    *v57 = v73;
    *(v57 + 16) = v58;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD51BF10()
{
  v18 = sub_1BE048D74();
  v0 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1BE04A884();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49420, &unk_1BE0DED60);
  sub_1BE04A864();
  (*(v13 + 56))(v11, 1, 1, v12);
  v14 = sub_1BE048654();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, *MEMORY[0x1E695A500], v18);
  sub_1BD0D7160();
  return sub_1BE0488C4();
}

uint64_t sub_1BD51C214(uint64_t a1)
{
  v1[28] = a1;
  v2 = sub_1BE04CFC4();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v3 = sub_1BE04CFE4();
  v1[33] = v3;
  v1[34] = *(v3 - 8);
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD51C33C, 0, 0);
}

uint64_t sub_1BD51C33C(uint64_t a1)
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v2 = sub_1BE04CFD4();
  v3 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "TransactionEntity:entitiesForIdentifier", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v6 = v1[34];
  v7 = v1[35];
  v9 = v1[32];
  v8 = v1[33];
  v11 = v1[30];
  v10 = v1[31];
  v12 = v1[29];

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v1[36] = sub_1BE04D014();
  (*(v11 + 8))(v9, v12);
  (*(v6 + 8))(v7, v8);
  v13 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v1[37] = v13;
  v14 = sub_1BE052724();
  v1[38] = v14;
  v1[2] = v1;
  v1[7] = v1 + 27;
  v1[3] = sub_1BD51C5D0;
  v15 = swift_continuation_init();
  v1[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418, &unk_1BE0DED50);
  v1[19] = MEMORY[0x1E69E9820];
  v1[20] = 1107296256;
  v1[21] = sub_1BD9C18BC;
  v1[22] = &block_descriptor_116;
  v1[23] = v15;
  [v13 transactionsWithTransactionIdentifiers:v14 completion:?];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1BD51C5D0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD51C6B0, 0, 0);
}

char *sub_1BD51C6B0()
{
  v1 = *(v0 + 216);

  if (!v1)
  {

LABEL_16:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  if (v1 >> 62)
  {
    v9 = sub_1BE053704();
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_15:
    v32 = *(v0 + 296);
    v1, v2, v3, v4, v5, v6, v7, v8;

    goto LABEL_16;
  }

LABEL_4:
  v42 = MEMORY[0x1E69E7CC0];
  result = sub_1BD532188(0, v9 & ~(v9 >> 63), 0, v4, v5, v6, v7, v8);
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  v12 = v42;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB40900](v11, v1);
    }

    else
    {
      v13 = *(v1 + 8 * v11 + 32);
    }

    sub_1BD51B424(v13, v0 + 80);
    v20 = *(v42 + 16);
    v19 = *(v42 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1BD532188((v19 > 1), v20 + 1, 1, v14, v15, v16, v17, v18);
    }

    ++v11;
    *(v42 + 16) = v20 + 1;
    v21 = v42 + 72 * v20;
    *(v21 + 32) = *(v0 + 80);
    v22 = *(v0 + 96);
    v23 = *(v0 + 112);
    v24 = *(v0 + 128);
    *(v21 + 96) = *(v0 + 144);
    *(v21 + 64) = v23;
    *(v21 + 80) = v24;
    *(v21 + 48) = v22;
  }

  while (v9 != v11);

  v1, v25, v26, v27, v28, v29, v30, v31;
LABEL_17:
  v33 = *(v0 + 288);
  sub_1BD51A07C(v33);
  v33, v34, v35, v36, v37, v38, v39, v40;

  v41 = *(v0 + 8);

  return v41(v12);
}

unint64_t sub_1BD51C8A4()
{
  result = qword_1EBD49428;
  if (!qword_1EBD49428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49428);
  }

  return result;
}

unint64_t sub_1BD51C8F8()
{
  result = qword_1EBD49430;
  if (!qword_1EBD49430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49430);
  }

  return result;
}

unint64_t sub_1BD51C94C()
{
  result = qword_1EBD49458;
  if (!qword_1EBD49458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49458);
  }

  return result;
}

unint64_t sub_1BD51C9A0()
{
  result = qword_1EBD398A0;
  if (!qword_1EBD398A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD398A0);
  }

  return result;
}

uint64_t sub_1BD51C9EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD51CA70()
{
  result = qword_1EBD494A0;
  if (!qword_1EBD494A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD494A0);
  }

  return result;
}

uint64_t type metadata accessor for MerchantOriginIconImage(uint64_t a1)
{
  result = qword_1EBD494A8;
  if (!qword_1EBD494A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD51CB38(uint64_t a1)
{
  _s14MerchantOriginOMa(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_1BD51CBE8@<X0>(void *a1@<X8>)
{
  v78 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD494B8, &qword_1BE0DEEC0);
  MEMORY[0x1EEE9AC00](v76);
  v3 = (&v71 - v2);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD494C0, &qword_1BE0DEEC8);
  MEMORY[0x1EEE9AC00](v74);
  v5 = &v71 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD494C8, &unk_1BE0DEED0);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v71 - v8;
  v73 = type metadata accessor for WebIconImage(0);
  MEMORY[0x1EEE9AC00](v73);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v71 - v13;
  v14 = _s7WebInfoVMa(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s14MerchantOriginOMa(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for MerchantOriginIconImage(0);
  sub_1BD51D460(&v1[*(v20 + 20)], v19, _s14MerchantOriginOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD51D3F8(v19, v16, _s7WebInfoVMa);
      sub_1BD0DE19C(&v16[*(v14 + 20)], v9, &unk_1EBD3CF70, &qword_1BE0BA000);
      v22 = *v1;
      v23 = qword_1BE0DEF20[v22];
      v24 = qword_1BE0DEF40[v22];
      v25 = &v1[*(v20 + 24)];
      v26 = *v25;
      v27 = *(v25 + 1);
      sub_1BD226B4C(v9, v11);
      v28 = v73;
      v29 = &v11[*(v73 + 20)];
      *v29 = v24;
      *(v29 + 1) = v24;
      *&v11[v28[6]] = v23;
      v30 = &v11[v28[7]];
      *v30 = v26;
      *(v30 + 1) = v27;
      v31 = &v11[v28[8]];
      *v31 = swift_getKeyPath();
      v31[8] = 0;
      v32 = v72;
      sub_1BD51D3F8(v11, v72, type metadata accessor for WebIconImage);
      sub_1BD51D460(v32, v5, type metadata accessor for WebIconImage);
      swift_storeEnumTagMultiPayload();
      sub_1BD51D2E4();
      sub_1BD51D33C();
      sub_1BE048C84();
      v33 = v75;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v33, v3, &qword_1EBD494C8, &unk_1BE0DEED0);
      swift_storeEnumTagMultiPayload();
      sub_1BD51D258();
      sub_1BD3F835C();
      sub_1BE04F9A4();
      sub_1BD51D390(v33);
      sub_1BD51D4C8(v32, type metadata accessor for WebIconImage);
      return sub_1BD51D4C8(v16, _s7WebInfoVMa);
    }

    else
    {
      v63 = &v1[*(v20 + 24)];
      v65 = *v63;
      v64 = *(v63 + 1);
      v66 = *v1;
      v67 = qword_1BE0DEF20[v66];
      v68 = qword_1BE0DEF40[v66];
      sub_1BE048C84();
      v69 = sub_1BE0512A4();
      v70 = sub_1BE051284();
      *v3 = v65;
      v3[1] = v64;
      v3[2] = v68;
      v3[3] = v68;
      v3[4] = v67;
      v3[5] = v69;
      v3[6] = v70;
      swift_storeEnumTagMultiPayload();
      sub_1BD51D258();
      sub_1BD3F835C();
      return sub_1BE04F9A4();
    }
  }

  else
  {
    v35 = v19[1];
    v36 = v19[3];
    v37 = v19[4];
    v38 = v19[5];
    v39 = qword_1BE0DEF40[*v1];
    v40 = swift_allocObject();
    v40[2] = v37;
    v40[3] = v38;
    v40[4] = v39;
    v40[5] = v39;
    v36, v41, v42, v43, v44, v45, v46, v47;
    v35, v48, v49, v50, v51, v52, v53, v54;
    *v5 = sub_1BD306C0C;
    *(v5 + 1) = v40;
    v5[16] = 0;
    *(v5 + 3) = v39;
    *(v5 + 4) = v39;
    swift_storeEnumTagMultiPayload();
    sub_1BD51D2E4();
    sub_1BD51D33C();
    sub_1BE048964();
    v55 = v75;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v55, v3, &qword_1EBD494C8, &unk_1BE0DEED0);
    swift_storeEnumTagMultiPayload();
    sub_1BD51D258();
    sub_1BD3F835C();
    sub_1BE04F9A4();
    v40, v56, v57, v58, v59, v60, v61, v62;
    return sub_1BD51D390(v55);
  }
}

unint64_t sub_1BD51D258()
{
  result = qword_1EBD494D0;
  if (!qword_1EBD494D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD494C8, &unk_1BE0DEED0);
    sub_1BD51D2E4();
    sub_1BD51D33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD494D0);
  }

  return result;
}

unint64_t sub_1BD51D2E4()
{
  result = qword_1EBD494D8;
  if (!qword_1EBD494D8)
  {
    type metadata accessor for WebIconImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD494D8);
  }

  return result;
}

unint64_t sub_1BD51D33C()
{
  result = qword_1EBD494E0;
  if (!qword_1EBD494E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD494E0);
  }

  return result;
}

uint64_t sub_1BD51D390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD494C8, &unk_1BE0DEED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD51D3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD51D460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD51D4C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD51D528()
{
  result = qword_1EBD494E8;
  if (!qword_1EBD494E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD494F0, &unk_1BE0DEF10);
    sub_1BD51D258();
    sub_1BD3F835C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD494E8);
  }

  return result;
}

void sub_1BD51D5B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = sub_1BD3EFFC8(MEMORY[0x1E69E7CC0], a2, a3, a4, a5, a6, a7, a8);
  v10 = sub_1BE04A0E4();
  v11 = objc_allocWithZone(MEMORY[0x1E69B8D30]);
  v12 = sub_1BE052404();
  v13 = sub_1BE052724();
  v9, v14, v15, v16, v17, v18, v19, v20;
  v21 = [v11 initWithTitle:v12 preferences:v13 selectedIndex:v10 readOnly:0];

  if (v21)
  {
    v22 = sub_1BE052404();
    [v21 setContactKey_];

    v23 = [objc_opt_self() defaultInstance];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 saveContactToCoreRecents:a1 preference:v21];

      [a1 setContactSource_];
      [a1 setRecentContact_];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_1BD51D758(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BE0B7020;
    *(v4 + 32) = a3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = a3;
  v13 = sub_1BD3EFFC8(v4, v6, v7, v8, v9, v10, v11, v12);
  v4, v14, v15, v16, v17, v18, v19, v20;
  v21 = sub_1BE04A0E4();
  v22 = objc_allocWithZone(MEMORY[0x1E69B8D30]);
  v23 = sub_1BE052404();
  v24 = sub_1BE052724();
  v13, v25, v26, v27, v28, v29, v30, v31;
  v32 = [v22 initWithTitle:v23 preferences:v24 selectedIndex:v21 readOnly:0];

  if (v32)
  {
    v33 = sub_1BE052404();
    [v32 setContactKey_];

    [v32 mergeRecentsAndMeCard];
    v34 = [v32 preferences];
    if (v34)
    {
      v42 = v34;
      v43 = sub_1BE052744();

      v44 = sub_1BD3FD0A4(v43);
      v43, v45, v46, v47, v48, v49, v50, v51;
      if (v44)
      {

        return v44;
      }
    }

    0, v35, v36, v37, v38, v39, v40, v41;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1BD51D954(uint64_t a1)
{
  sub_1BD127BD0(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BD51DA4C(319, &qword_1EBD45140, MEMORY[0x1E6968FB0]);
    if (v2 <= 0x3F)
    {
      sub_1BD51DA4C(319, &qword_1EBD46190, MEMORY[0x1E69676D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD51DA4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD51DAE8(uint64_t a1)
{
  type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1BD127BD0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1BD49DA08(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BD51DBA8()
{
  result = qword_1EBD38DA8;
  if (!qword_1EBD38DA8)
  {
    type metadata accessor for NavigationController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38DA8);
  }

  return result;
}

uint64_t sub_1BD51DC1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49518, &qword_1BE0DEFF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  *v6 = sub_1BE04F504();
  *(v6 + 1) = 0x403E000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49520, &unk_1BE0DEFF8);
  sub_1BD51DDEC(v2, &v6[*(v7 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v9 = sub_1BE050204();
  *(inited + 32) = v9;
  v10 = sub_1BE050224();
  *(inited + 33) = v10;
  v11 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v9)
  {
    v11 = sub_1BE050214();
  }

  inited, v12, v13, v14, v15, v16, v17, v18;
  sub_1BE050214();
  if (sub_1BE050214() != v10)
  {
    v11 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1BD0DE204(v6, a1, &qword_1EBD49518, &qword_1BE0DEFF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49528, &qword_1BE0DF008);
  v28 = a1 + *(result + 36);
  *v28 = v11;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_1BD51DDEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  v72 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = v4;
  v74 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v78 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358, &qword_1BE0DBE98);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49530, &qword_1BE0DF010);
  v76 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v71 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v71 - v13;
  v15 = sub_1BE04AA64();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49538, &qword_1BE0DF018);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v82 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v71 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v80 = &v71 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v79 = &v71 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v86 = &v71 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v71 - v33;
  v77 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  sub_1BD0DE19C(a1 + *(v77 + 5), v14, &unk_1EBD3CF70, &qword_1BE0BA000);
  v35 = (*(v16 + 48))(v14, 1, v15);
  v84 = v11;
  v85 = v34;
  if (v35 == 1)
  {
    sub_1BD0DE53C(v14, &unk_1EBD3CF70, &qword_1BE0BA000);
    v36 = 1;
    v37 = v76;
  }

  else
  {
    v71 = v9;
    v38 = *(v16 + 32);
    v38(v21, v14, v15);
    (*(v16 + 16))(v18, v21, v15);
    v39 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v40 = swift_allocObject();
    v38((v40 + v39), v18, v15);
    v34 = v85;
    v9 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49548, &qword_1BE0DF028);
    sub_1BD51FE24();
    v41 = v84;
    sub_1BE051704();
    (*(v16 + 8))(v21, v15);
    v37 = v76;
    (*(v76 + 32))(v34, v41, v9);
    v36 = 0;
  }

  v42 = *(v37 + 56);
  v43 = 1;
  v42(v34, v36, 1, v9);
  v44 = a1[1];
  v45 = v79;
  if (v44)
  {
    v46 = *a1;
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    *(v47 + 24) = v44;
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49548, &qword_1BE0DF028);
    sub_1BD51FE24();
    v48 = v84;
    sub_1BE051704();
    v49 = v86;
    (*(v37 + 32))(v86, v48, v9);
    v43 = 0;
  }

  else
  {
    v49 = v86;
  }

  v42(v49, v43, 1, v9);
  v50 = v78;
  sub_1BD0DE19C(a1 + *(v77 + 6), v78, &qword_1EBD3F7C0, &unk_1BE0D6570);
  v51 = sub_1BE0491B4();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v50, 1, v51) != 1)
  {
    v77 = a1;
    v54 = v75;
    sub_1BE0491A4();
    (*(v52 + 8))(v50, v51);
    v55 = sub_1BE049294();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v54, 1, v55) == 1)
    {
      sub_1BD0DE53C(v54, &qword_1EBD48358, &qword_1BE0DBE98);
    }

    else
    {
      v57 = sub_1BE049274();
      (*(v56 + 8))(v54, v55);
      if (v57)
      {
        v58 = v74;
        sub_1BD51FD30(v77, v74);
        v59 = (*(v72 + 80) + 16) & ~*(v72 + 80);
        v60 = swift_allocObject();
        sub_1BD51FD94(v58, v60 + v59);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49548, &qword_1BE0DF028);
        sub_1BD51FE24();
        v61 = v84;
        sub_1BE051704();
        (*(v37 + 32))(v45, v61, v9);
        v53 = 0;
LABEL_14:
        v49 = v86;
        goto LABEL_15;
      }
    }

    v53 = 1;
    goto LABEL_14;
  }

  sub_1BD0DE53C(v50, &qword_1EBD3F7C0, &unk_1BE0D6570);
  v53 = 1;
LABEL_15:
  v42(v45, v53, 1, v9);
  v62 = v85;
  v63 = v80;
  sub_1BD0DE19C(v85, v80, &qword_1EBD49538, &qword_1BE0DF018);
  v64 = v49;
  v65 = v49;
  v66 = v81;
  sub_1BD0DE19C(v64, v81, &qword_1EBD49538, &qword_1BE0DF018);
  v67 = v82;
  sub_1BD0DE19C(v45, v82, &qword_1EBD49538, &qword_1BE0DF018);
  v68 = v83;
  sub_1BD0DE19C(v63, v83, &qword_1EBD49538, &qword_1BE0DF018);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49540, &qword_1BE0DF020);
  sub_1BD0DE19C(v66, v68 + *(v69 + 48), &qword_1EBD49538, &qword_1BE0DF018);
  sub_1BD0DE19C(v67, v68 + *(v69 + 64), &qword_1EBD49538, &qword_1BE0DF018);
  sub_1BD0DE53C(v45, &qword_1EBD49538, &qword_1BE0DF018);
  sub_1BD0DE53C(v65, &qword_1EBD49538, &qword_1BE0DF018);
  sub_1BD0DE53C(v62, &qword_1EBD49538, &qword_1BE0DF018);
  sub_1BD0DE53C(v67, &qword_1EBD49538, &qword_1BE0DF018);
  sub_1BD0DE53C(v66, &qword_1EBD49538, &qword_1BE0DF018);
  return sub_1BD0DE53C(v63, &qword_1EBD49538, &qword_1BE0DF018);
}

void sub_1BD51E7D0()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E6963608]) init];
  v1 = sub_1BE04A9C4();
  v6[0] = 0;
  v2 = [v0 openURL:v1 configuration:0 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    v5 = sub_1BE04A854();

    swift_willThrow();
  }
}

uint64_t sub_1BD51E8C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  sub_1BE051C54();
  v5 = sub_1BE051574();
  sub_1BE051C54();
  v6 = sub_1BE050354();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_1BE0503B4();
  sub_1BD0DE53C(v4, &qword_1EBD49130, &qword_1BE0C7180);
  KeyPath = swift_getKeyPath();
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49548, &qword_1BE0DF028) + 36);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49560, &unk_1BE0DF030) + 28);
  sub_1BE04F804();
  v11 = sub_1BE04F824();
  (*(*(v11 - 8) + 56))(&v9[v10], 0, 1, v11);
  result = swift_getKeyPath();
  *v9 = result;
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v7;
  return result;
}

uint64_t sub_1BD51EABC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = sub_1BE052404();
  v12 = PKTelephoneURLFromPhoneNumber();

  if (v12)
  {
    sub_1BE04A9F4();

    v13 = sub_1BE04AA64();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  }

  else
  {
    v13 = sub_1BE04AA64();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  sub_1BD0DE204(v7, v10, &unk_1EBD3CF70, &qword_1BE0BA000);
  sub_1BD0DE19C(v10, v4, &unk_1EBD3CF70, &qword_1BE0BA000);
  sub_1BE04AA64();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v4, 1, v13) != 1)
  {
    v15 = sub_1BE04A9C4();
    (*(v14 + 8))(v4, v13);
  }

  PKOpenURL();

  return sub_1BD0DE53C(v10, &unk_1EBD3CF70, &qword_1BE0BA000);
}

uint64_t sub_1BD51ED20@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  sub_1BE051C54();
  v5 = sub_1BE051574();
  sub_1BE051C54();
  v6 = sub_1BE050354();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_1BE0503B4();
  sub_1BD0DE53C(v4, &qword_1EBD49130, &qword_1BE0C7180);
  KeyPath = swift_getKeyPath();
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49548, &qword_1BE0DF028) + 36);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49560, &unk_1BE0DF030) + 28);
  sub_1BE04F804();
  v11 = sub_1BE04F824();
  (*(*(v11 - 8) + 56))(&v9[v10], 0, 1, v11);
  result = swift_getKeyPath();
  *v9 = result;
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v7;
  return result;
}

void sub_1BD51EF18(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26[-v8];
  v10 = (a1 + *(v3 + 28));
  v11 = *v10;
  v12 = *(v10 + 1);
  v26[16] = v11;
  v27 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if ((v26[15] & 1) == 0)
  {
    v13 = sub_1BE0528D4();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_1BD51FD30(a1, &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_1BE0528A4();
    v14 = sub_1BE052894();
    v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v14;
    v16[3] = v17;
    sub_1BD51FD94(v6, v16 + v15);
    v18 = sub_1BD122C00(0, 0, v9, &unk_1BE0DF0A8, v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
  }
}

uint64_t sub_1BD51F118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  v4[7] = swift_task_alloc();
  v5 = sub_1BE0491B4();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_1BE0528A4();
  v4[12] = sub_1BE052894();
  v7 = sub_1BE052844();
  v4[13] = v7;
  v4[14] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD51F248, v7, v6);
}

uint64_t sub_1BD51F248()
{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  *(v0 + 120) = v2;
  v3 = (v1 + *(v2 + 20));
  v4 = *v3;
  *(v0 + 186) = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = v4;
  *(v0 + 128) = v5;
  *(v0 + 24) = v5;
  *(v0 + 184) = 1;
  sub_1BE048964();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  *(v0 + 144) = sub_1BE052894();
  v7 = sub_1BE052844();
  *(v0 + 152) = v7;
  *(v0 + 160) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD51F344, v7, v6);
}

uint64_t sub_1BD51F344()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  sub_1BD0DE19C(v4 + *(v5 + 24), v3, &qword_1EBD3F7C0, &unk_1BE0D6570);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v13 = *(v0 + 56);
    *(v0 + 144), v6, v7, v8, v9, v10, v11, v12;
    sub_1BD0DE53C(v13, &qword_1EBD3F7C0, &unk_1BE0D6570);
    v14 = *(v0 + 104);
    v15 = *(v0 + 112);

    return MEMORY[0x1EEE6DFA0](sub_1BD51F774, v14, v15);
  }

  else
  {
    (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
    v16 = swift_task_alloc();
    *(v0 + 168) = v16;
    *v16 = v0;
    v16[1] = sub_1BD51F4A4;

    return sub_1BD7369D4();
  }
}

uint64_t sub_1BD51F4A4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1BD51F5CC, v4, v3);
}

uint64_t sub_1BD51F5CC()
{
  v1 = *(v0 + 176);
  if (!v1)
  {
    v28 = *(v0 + 144);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v28, v29, v30, v31, v32, v33, v34, v35;
LABEL_6:
    v3 = *(v0 + 104);
    v4 = *(v0 + 112);
    v2 = sub_1BD51F774;

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  v2 = [objc_allocWithZone(PKMerchantMapViewController) initWithMapItem:v1 configOptions:129];
  if (!v2)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  v10 = v2;
  v11 = *(v0 + 120);
  v12 = *(v0 + 48);
  *(v0 + 144), v3, v4, v5, v6, v7, v8, v9;
  v13 = v10;
  v14 = sub_1BE04EC54();
  v15 = sub_1BE0501D4();
  v16 = *(v12 + *(v11 + 24));
  if (v16)
  {
    v17 = v15;
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 64);
    sub_1BE048964();
    sub_1BD9821EC(v13, v14, v17);
    v16, v21, v22, v23, v24, v25, v26, v27;

    (*(v19 + 8))(v18, v20);
    goto LABEL_6;
  }

  type metadata accessor for NavigationController();
  sub_1BD51DBA8();

  return sub_1BE04EEB4();
}

uint64_t sub_1BD51F774(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 128);
  v10 = *(v8 + 186);
  *(v8 + 96), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32) = v10;
  *(v8 + 40) = v9;
  *(v8 + 185) = 0;
  sub_1BE0516B4();
  v9, v11, v12, v13, v14, v15, v16, v17;

  v18 = *(v8 + 8);

  return v18();
}

uint64_t sub_1BD51F828@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  sub_1BE051C54();
  v5 = sub_1BE051574();
  sub_1BE051C54();
  v6 = sub_1BE050354();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_1BE0503B4();
  sub_1BD0DE53C(v4, &qword_1EBD49130, &qword_1BE0C7180);
  KeyPath = swift_getKeyPath();
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49548, &qword_1BE0DF028) + 36);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49560, &unk_1BE0DF030) + 28);
  sub_1BE04F804();
  v11 = sub_1BE04F824();
  (*(*(v11 - 8) + 56))(&v9[v10], 0, 1, v11);
  result = swift_getKeyPath();
  *v9 = result;
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v7;
  return result;
}

BOOL sub_1BD51FA14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358, &qword_1BE0DBE98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  sub_1BD0DE19C(v0 + *(v10 + 20), v9, &unk_1EBD3CF70, &qword_1BE0BA000);
  v11 = sub_1BE04AA64();
  v12 = 1;
  v13 = (*(*(v11 - 8) + 48))(v9, 1, v11);
  sub_1BD0DE53C(v9, &unk_1EBD3CF70, &qword_1BE0BA000);
  if (v13 == 1 && !*(v0 + 8))
  {
    sub_1BD0DE19C(v0 + *(v10 + 24), v3, &qword_1EBD3F7C0, &unk_1BE0D6570);
    v14 = sub_1BE0491B4();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v3, 1, v14) == 1)
    {
      v16 = &qword_1EBD3F7C0;
      v17 = &unk_1BE0D6570;
      v18 = v3;
    }

    else
    {
      sub_1BE0491A4();
      (*(v15 + 8))(v3, v14);
      v19 = sub_1BE049294();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v6, 1, v19) != 1)
      {
        v21 = sub_1BE049274();
        (*(v20 + 8))(v6, v19);
        return v21 != 0;
      }

      v16 = &qword_1EBD48358;
      v17 = &qword_1BE0DBE98;
      v18 = v6;
    }

    sub_1BD0DE53C(v18, v16, v17);
    return 0;
  }

  return v12;
}

uint64_t sub_1BD51FD30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD51FD94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD51FE24()
{
  result = qword_1EBD49550;
  if (!qword_1EBD49550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49548, &qword_1BE0DF028);
    sub_1BD0F14E8();
    sub_1BD0DE4F4(&qword_1EBD49558, &qword_1EBD49560, &unk_1BE0DF030, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49550);
  }

  return result;
}

uint64_t sub_1BD51FF10(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1BD51FF8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v81 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48360, &unk_1BE0DF0B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v76 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v78 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358, &qword_1BE0DBE98);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v77 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v73 - v26;
  v28 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v29 = *(v28 + 20);
  v30 = sub_1BE04AA64();
  v84 = *(v30 - 8);
  v85 = v30;
  v31 = *(v84 + 56);
  v80 = v29;
  v86 = v31;
  v87 = v84 + 56;
  (v31)(a2 + v29, 1, 1);
  v32 = *(v28 + 24);
  v33 = sub_1BE0491B4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v83 = a2;
  v79 = v32;
  v35(a2 + v32, 1, 1, v33);
  sub_1BD0DE19C(a1, v22, &qword_1EBD3F7C0, &unk_1BE0D6570);
  v88 = *(v34 + 48);
  if (v88(v22, 1, v33) == 1)
  {
    sub_1BD0DE53C(v22, &qword_1EBD3F7C0, &unk_1BE0D6570);
    v36 = v81;
  }

  else
  {
    v74 = a1;
    sub_1BE0491A4();
    (*(v34 + 8))(v22, v33);
    v37 = sub_1BE049294();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v27, 1, v37) == 1)
    {
      sub_1BD0DE53C(v27, &qword_1EBD48358, &qword_1BE0DBE98);
      a1 = v74;
      v36 = v81;
    }

    else
    {
      v39 = sub_1BE049214();
      v41 = v40;
      (*(v38 + 8))(v27, v37);
      a1 = v74;
      v36 = v81;
      if (v41)
      {
        goto LABEL_13;
      }
    }
  }

  sub_1BD0DE19C(a1, v19, &qword_1EBD3F7C0, &unk_1BE0D6570);
  if (v88(v19, 1, v33) == 1)
  {
    v42 = &qword_1EBD3F7C0;
    v43 = &unk_1BE0D6570;
    v44 = v19;
  }

  else
  {
    v45 = v75;
    sub_1BE049194();
    (*(v34 + 8))(v19, v33);
    v46 = sub_1BE04A0D4();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v45, 1, v46) != 1)
    {
      v39 = sub_1BE04A064();
      v55 = v45;
      v41 = v56;
      (*(v47 + 8))(v55, v46);
      goto LABEL_12;
    }

    v42 = &qword_1EBD48360;
    v43 = &unk_1BE0DF0B0;
    v44 = v45;
  }

  sub_1BD0DE53C(v44, v42, v43);
  v39 = 0;
  v41 = 0;
LABEL_12:
  0, v48, v49, v50, v51, v52, v53, v54;
LABEL_13:
  v57 = v83;
  *v83 = v39;
  v57[1] = v41;
  sub_1BD0DE19C(a1, v16, &qword_1EBD3F7C0, &unk_1BE0D6570);
  if (v88(v16, 1, v33) == 1)
  {
    v58 = &qword_1EBD3F7C0;
    v59 = &unk_1BE0D6570;
    v60 = v16;
LABEL_17:
    sub_1BD0DE53C(v60, v58, v59);
    v65 = v82;
    v66 = v85;
    v86(v36, 1, 1, v85);
    v67 = v78;
    goto LABEL_18;
  }

  v61 = v77;
  sub_1BE0491A4();
  v62 = v61;
  (*(v34 + 8))(v16, v33);
  v63 = sub_1BE049294();
  v64 = *(v63 - 8);
  if ((*(v64 + 48))(v62, 1, v63) == 1)
  {
    v58 = &qword_1EBD48358;
    v59 = &qword_1BE0DBE98;
    v60 = v62;
    goto LABEL_17;
  }

  sub_1BE049234();
  (*(v64 + 8))(v62, v63);
  v66 = v85;
  v71 = (*(v84 + 48))(v36, 1, v85);
  v65 = v82;
  v67 = v78;
  if (v71 != 1)
  {
    (*(v84 + 32))(v82, v36, v66);
    v86(v65, 0, 1, v66);
    goto LABEL_28;
  }

LABEL_18:
  sub_1BD0DE19C(a1, v67, &qword_1EBD3F7C0, &unk_1BE0D6570);
  if (v88(v67, 1, v33) == 1)
  {
    sub_1BD0DE53C(v67, &qword_1EBD3F7C0, &unk_1BE0D6570);
LABEL_22:
    v86(v65, 1, 1, v66);
    goto LABEL_26;
  }

  v68 = v76;
  sub_1BE049194();
  (*(v34 + 8))(v67, v33);
  v69 = sub_1BE04A0D4();
  v70 = *(v69 - 8);
  if ((*(v70 + 48))(v68, 1, v69) == 1)
  {
    sub_1BD0DE53C(v68, &qword_1EBD48360, &unk_1BE0DF0B0);
    v66 = v85;
    goto LABEL_22;
  }

  sub_1BE04A084();
  (*(v70 + 8))(v68, v69);
  v66 = v85;
LABEL_26:
  if ((*(v84 + 48))(v36, 1, v66) != 1)
  {
    sub_1BD0DE53C(v36, &unk_1EBD3CF70, &qword_1BE0BA000);
  }

LABEL_28:
  sub_1BD2C7C4C(v65, v57 + v80, &unk_1EBD3CF70, &qword_1BE0BA000);
  return sub_1BD2C7C4C(a1, v57 + v79, &qword_1EBD3F7C0, &unk_1BE0D6570);
}

uint64_t sub_1BD5208C0(uint64_t a1)
{
  v4 = *(type metadata accessor for FinanceKitMerchantBrandViewButtons(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD51F118(a1, v6, v7, v1 + v5);
}

unint64_t sub_1BD5209B0()
{
  result = qword_1EBD49568;
  if (!qword_1EBD49568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49528, &qword_1BE0DF008);
    sub_1BD0DE4F4(&unk_1EBD49570, &qword_1EBD49518, &qword_1BE0DEFF0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49568);
  }

  return result;
}

id sub_1BD520A68()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04AA64();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04A134();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BD520F84();
  v13 = [objc_allocWithZone(MEMORY[0x1E69853A0]) initWithFrame:v12 configuration:{0.0, 0.0, 0.0, 0.0}];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49658, &unk_1BE0DF238);
  sub_1BE04FF74();
  v14 = v52[0];
  [v13 setUIDelegate_];

  sub_1BE04FF74();
  v15 = v52[0];
  [v13 setNavigationDelegate_];

  v16 = [v13 scrollView];
  v17 = [v16 pinchGestureRecognizer];

  if (v17)
  {
    [v17 setEnabled_];
  }

  v18 = v13;
  [v18 setOpaque_];
  v19 = [objc_opt_self() systemBackgroundColor];
  [v18 setBackgroundColor_];

  v20 = *(v1 + 16);
  v21 = [v20 actionURL];
  sub_1BE04A9F4();

  sub_1BE04A114();
  v22 = sub_1BE04A0F4();
  (*(v9 + 8))(v11, v8);

  sub_1BE04D1E4();
  sub_1BD5219CC(v1, v52);
  v23 = sub_1BE04D204();
  v24 = sub_1BE052C54();
  sub_1BD521A04(v1);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v52[0] = v26;
    *v25 = 136315138;
    v27 = [v20 actionURL];
    sub_1BE04A9F4();

    sub_1BD5288A0(&qword_1EBD49660, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v28 = v49;
    v29 = sub_1BE053B24();
    v31 = v30;
    (*(v48 + 8))(v7, v28);
    v32 = sub_1BD123690(v29, v31, v52);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v25 + 4) = v32;
    _os_log_impl(&dword_1BD026000, v23, v24, "Payment offer web view opening %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26, v40, v41, v42, v43, v44, v45, v46);
    MEMORY[0x1BFB45F20](v26, -1, -1);
    MEMORY[0x1BFB45F20](v25, -1, -1);
  }

  (*(v50 + 8))(v4, v51);
  return v18;
}

id sub_1BD520F84()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6985350]) init];
  v1 = [objc_allocWithZone(MEMORY[0x1E69853A8]) init];
  result = [v1 defaultWebpagePreferences];
  if (result)
  {
    v3 = result;
    [result setAllowsContentJavaScript_];

    [v1 setUserContentController_];
    v4 = [objc_allocWithZone(MEMORY[0x1E6985340]) init];
    [v1 setProcessPool_];

    v5 = [objc_opt_self() defaultDataStore];
    [v1 setWebsiteDataStore_];

    [v1 setAllowsInlineMediaPlayback_];
    v6 = objc_allocWithZone(MEMORY[0x1E6985358]);
    v7 = sub_1BE052404();
    v8 = [v6 initWithSource:v7 injectionTime:1 forMainFrameOnly:1];

    [v0 addUserScript_];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD521438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = sub_1BE0528A4();
  v5[4] = sub_1BE052894();
  v7 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD5214D4, v7, v6);
}

uint64_t sub_1BD5214D4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 16);
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40) = _Block_copy(v9);
  *(v8 + 48) = sub_1BE052894();
  v11 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD521574, v11, v10);
}

uint64_t sub_1BD521574(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 40);
  *(v8 + 48), a2, a3, a4, a5, a6, a7, a8;
  v9[2](v9, 1);
  _Block_release(v9);
  v10 = *(v8 + 8);

  return v10();
}

id sub_1BD521620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentOfferCriteriaSetupWebView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD5216F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BD52173C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *sub_1BD5217E4@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v16 = v1[2];
  v17 = v3;
  v18 = v1[4];
  v4 = v1[1];
  v14 = *v1;
  v15 = v4;
  v5 = type metadata accessor for PaymentOfferCriteriaSetupWebView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV9PassKitUI32PaymentOfferCriteriaSetupWebView11Coordinator_parent];
  *v7 = v14;
  v8 = v18;
  v10 = v15;
  v9 = v16;
  *(v7 + 3) = v17;
  *(v7 + 4) = v8;
  *(v7 + 1) = v10;
  *(v7 + 2) = v9;
  sub_1BD5219CC(&v14, v13);
  v12.receiver = v6;
  v12.super_class = v5;
  result = objc_msgSendSuper2(&v12, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD521884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD527180();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD5218E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD527180();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD52194C(uint64_t a1)
{
  sub_1BD527180();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD521978()
{
  result = qword_1EBD49650;
  if (!qword_1EBD49650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49650);
  }

  return result;
}

uint64_t sub_1BD521A34@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v3 = *(v2 - 8);
  v52 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2 - 8);
  v54 = v4;
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49740, &qword_1BE0DF378);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49748, &qword_1BE0DF380);
  MEMORY[0x1EEE9AC00](v50);
  v10 = (&v46 - v9);
  v47 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49750, &qword_1BE0DF388);
  v12 = *(v11 - 8);
  v55 = v11;
  *&v56 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - v13;
  v49 = v1;
  sub_1BD521FE0(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49680, &unk_1BE0DF290);
  sub_1BE0516C4();
  v48 = v5;
  sub_1BD527F88(v1, v5);
  v53 = *(v3 + 80);
  v15 = (v53 + 16) & ~v53;
  v46 = v15;
  v16 = swift_allocObject();
  v51 = type metadata accessor for PaymentOfferCriteriaActionSetupView;
  sub_1BD5289F8(v5, v16 + v15, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v17 = type metadata accessor for PaymentOfferSetupProvisioningMetadata(0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49758, &qword_1BE0DF390);
  v19 = sub_1BD52806C();
  v20 = sub_1BD5288A0(&qword_1EBD497B0, type metadata accessor for PaymentOfferSetupProvisioningMetadata, &unk_1BE107D40);
  v21 = sub_1BD5282BC();
  *&v59 = &type metadata for PaymentOfferSetupProvisioningSheet;
  *(&v59 + 1) = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v50;
  v23 = v47;
  sub_1BE050F74();
  v16, v24, v25, v26, v27, v28, v29, v30;
  sub_1BD0DE53C(v8, &qword_1EBD49740, &qword_1BE0DF378);
  sub_1BD0DE53C(v23, &qword_1EBD49748, &qword_1BE0DF380);
  *&v59 = v22;
  *(&v59 + 1) = v17;
  v60 = v18;
  v61 = v19;
  v62 = v20;
  v63 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v31 = v57;
  v32 = v55;
  sub_1BE050E54();
  (*(v56 + 8))(v14, v32);
  v33 = v49;
  v58 = *(v49 + *(v52 + 72));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
  sub_1BE0516C4();
  v56 = v59;
  v34 = v60;
  v35 = v48;
  sub_1BD527F88(v33, v48);
  v36 = v46;
  v37 = swift_allocObject();
  v38 = v51;
  sub_1BD5289F8(v35, v37 + v36, v51);
  v39 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C8, &qword_1BE0DF3C8) + 36);
  *v39 = v56;
  *(v39 + 16) = v34;
  *(v39 + 24) = sub_1BD5290E4;
  *(v39 + 32) = v37;
  sub_1BD527F88(v33, v35);
  v40 = swift_allocObject();
  sub_1BD5289F8(v35, v40 + v36, v38);
  v41 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497D0, &qword_1BE0DF3D0) + 36));
  *v41 = sub_1BD528530;
  v41[1] = v40;
  v41[2] = 0;
  v41[3] = 0;
  sub_1BD527F88(v33, v35);
  v42 = swift_allocObject();
  sub_1BD5289F8(v35, v42 + v36, v38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497D8, &unk_1BE0DF3D8);
  v44 = (v31 + *(result + 36));
  *v44 = 0;
  v44[1] = 0;
  v44[2] = sub_1BD5285A0;
  v44[3] = v42;
  return result;
}

uint64_t sub_1BD521FE0@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04F434();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49780, &qword_1BE0DF3A8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v40 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49778, &qword_1BE0DF3A0);
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = v40 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497F0, &qword_1BE0DF458);
  v11 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v45 = v40 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497F8, &qword_1BE0DF460);
  MEMORY[0x1EEE9AC00](v46);
  v48 = v40 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49770, &qword_1BE0DF398);
  v14 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v17 = v40 - v16;
  v18 = *(v1 + 24);
  if (v18 == 2 || (v18 & 1) == 0)
  {
    sub_1BD523614(v9);
    v25 = sub_1BE04EC54();
    v26 = sub_1BE0501F4();
    v40[1] = v40;
    v27 = &v9[*(v7 + 36)];
    *v27 = v25;
    v27[8] = v26;
    MEMORY[0x1EEE9AC00](v26);
    v40[-2] = v1;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49788, &qword_1BE0DF3B0);
    v42 = a1;
    v29 = v28;
    v30 = sub_1BD528204();
    v41 = v11;
    v40[0] = v3;
    v31 = v30;
    v32 = sub_1BD0DE4F4(&qword_1EBD497A8, &qword_1EBD49788, &qword_1BE0DF3B0, MEMORY[0x1E697C5E0]);
    v33 = v43;
    sub_1BE051024();
    sub_1BD0DE53C(v9, &qword_1EBD49780, &qword_1BE0DF3A8);
    v34 = v40[0];
    (*(v4 + 104))(v6, *MEMORY[0x1E697C438], v40[0]);
    v51 = v7;
    v52 = v29;
    v53 = v31;
    v54 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = v45;
    v37 = v47;
    sub_1BE050E84();
    (*(v4 + 8))(v6, v34);
    (*(v44 + 8))(v33, v37);
    v38 = v41;
    v39 = v50;
    (*(v41 + 16))(v48, v36, v50);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD49768, &qword_1EBD49770, &qword_1BE0DF398, MEMORY[0x1E697C0C0]);
    v51 = v37;
    v52 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v38 + 8))(v36, v39);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v15);
    v40[-2] = v1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49788, &qword_1BE0DF3B0);
    v20 = sub_1BD528204();
    v21 = sub_1BD0DE4F4(&qword_1EBD497A8, &qword_1EBD49788, &qword_1BE0DF3B0, MEMORY[0x1E697C5E0]);
    v51 = v7;
    v52 = v19;
    v53 = v20;
    v54 = v21;
    v22 = swift_getOpaqueTypeConformance2();
    v51 = v47;
    v52 = v22;
    swift_getOpaqueTypeConformance2();
    sub_1BE04E934();
    v23 = v49;
    (*(v14 + 16))(v48, v17, v49);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD49768, &qword_1EBD49770, &qword_1BE0DF398, MEMORY[0x1E697C0C0]);
    sub_1BE04F9A4();
    return (*(v14 + 8))(v17, v23);
  }
}

void sub_1BD522700(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1BD6FB2CC();
  v7 = v6;
  v8 = *(a2 + 16);
  sub_1BD527F88(a2, v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_1BD5289F8(v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v11 = objc_allocWithZone(PKPaymentSetupDismissibleNavigationController);
  v12 = v8;
  v13 = [v11 initWithContext_];
  if (v13)
  {
    v14 = v13;
    v22[1] = v7;
    v22[2] = v12;
    v22[3] = sub_1BD5285AC;
    v22[4] = v10;
    v22[5] = v13;
    sub_1BD5282BC();
    sub_1BE050E54();

    v10, v15, v16, v17, v18, v19, v20, v21;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD52289C(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_1BE0528D4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1BD527F88(a3, v9);
  sub_1BE0528A4();
  v14 = a2 & 1;
  sub_1BD52862C(a1);
  v15 = sub_1BE052894();
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v15;
  v18[3] = v19;
  sub_1BD5289F8(v9, v18 + v16, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v20 = v18 + v17;
  *v20 = a1;
  v20[8] = v14;
  v21 = sub_1BD122C00(0, 0, v12, &unk_1BE0DF440, v18);
  v21, v22, v23, v24, v25, v26, v27, v28;
}

uint64_t sub_1BD522AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6[9] = a4;
  v6[10] = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v6[11] = swift_task_alloc();
  v9 = sub_1BE04D214();
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = sub_1BE0528A4();
  v6[16] = sub_1BE052894();
  v10 = swift_task_alloc();
  v6[17] = v10;
  *v10 = v6;
  v10[1] = sub_1BD522BF8;

  return sub_1BD522D54(a5, a6 & 1);
}

uint64_t sub_1BD522BF8()
{
  *(*v1 + 144) = v0;

  v3 = sub_1BE052844();
  if (v0)
  {
    v4 = sub_1BD5290E0;
  }

  else
  {
    v4 = sub_1BD5290E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1BD522D54(uint64_t a1, char a2)
{
  *(v3 + 104) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  v4 = sub_1BE04D214();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497E0, &qword_1BE0DF430);
  *(v3 + 88) = swift_task_alloc();
  sub_1BE0528A4();
  *(v3 + 96) = sub_1BE052894();
  v6 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD522E88, v6, v5);
}

uint64_t sub_1BD522E88(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 104);
  *(v8 + 96), a2, a3, a4, a5, a6, a7, a8;
  if ((v9 & 1) != 0 || (v10 = *(v8 + 40), objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) == 0))
  {
    v34 = *(v8 + 88);
    v40 = *(*(v8 + 48) + 64);
    *v34 = 0;
    swift_storeEnumTagMultiPayload();
    v40(v34);
    goto LABEL_19;
  }

  v12 = v11;
  v13 = *(v8 + 40);
  v14 = *(v8 + 48);
  *(v8 + 16) = *(v14 + 48);
  *(v8 + 32) = v11;
  sub_1BD52862C(v13);
  sub_1BD52862C(v13);
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497E8, &qword_1BE0DF450);
  sub_1BE0516B4();
  v16 = *(v14 + 16);
  v17 = [*v14 identifier];
  if (!v17)
  {
    sub_1BE052434();
    v19 = v18;
    v17 = sub_1BE052404();
    v19, v20, v21, v22, v23, v24, v25, v26;
  }

  v27 = [v12 uniqueID];
  v28 = [v16 paymentOfferCollectionForCriteriaIdentifier:v17 passUniqueID:v27];

  if (!v28)
  {
    sub_1BD528638(*(v8 + 40));
LABEL_15:
    sub_1BE04D1E4();
    v41 = sub_1BE04D204();
    v42 = sub_1BE052C34();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1BD026000, v41, v42, "No selected offer identifier after successful handoff while pass is already provisioned", v43, 2u);
      MEMORY[0x1BFB45F20](v43, -1, -1);
    }

    v34 = *(v8 + 88);
    v45 = *(v8 + 64);
    v44 = *(v8 + 72);
    v47 = *(v8 + 48);
    v46 = *(v8 + 56);
    v48 = *(v8 + 40);

    (*(v45 + 8))(v44, v46);
    v49 = *(v47 + 64);
    *v34 = 0;
    swift_storeEnumTagMultiPayload();
    v49(v34);
    v39 = v48;
    goto LABEL_18;
  }

  v29 = [v28 installmentAssessment];
  if (!v29)
  {
    sub_1BD528638(*(v8 + 40));
    goto LABEL_14;
  }

  v30 = v29;
  v31 = [v29 selectedOfferIdentifier];
  if (!v31 || (v31, v32 = [v16 selectedOfferDetails], v33 = objc_msgSend(v32, sel_selectedPaymentOffer), v32, !v33))
  {
    sub_1BD528638(*(v8 + 40));

LABEL_14:
    goto LABEL_15;
  }

  v34 = *(v8 + 88);
  v52 = *(v8 + 40);
  v35 = *(*(v8 + 48) + 64);
  v36 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView.SetupResult(0) + 24);
  v37 = type metadata accessor for PaymentOfferSetupProvisioningMetadata(0);
  (*(*(v37 - 8) + 56))(&v34[v36], 1, 1, v37);
  *v34 = v33;
  *(v34 + 1) = v12;
  swift_storeEnumTagMultiPayload();
  v38 = v33;
  v35(v34);

  v39 = v52;
LABEL_18:
  sub_1BD528638(v39);
LABEL_19:
  sub_1BD0DE53C(v34, &qword_1EBD497E0, &qword_1BE0DF430);

  v50 = *(v8 + 8);

  return v50();
}

void sub_1BD52327C(uint64_t a1, SEL *a2)
{
  if (*(a1 + 80))
  {
    KeyPath = swift_getKeyPath();
    v4 = swift_getKeyPath();
    sub_1BE04D8B4(&v19);
    KeyPath, v5, v6, v7, v8, v9, v10, v11;
    v4, v12, v13, v14, v15, v16, v17, v18;
    if (v19)
    {
      [v19 *a2];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1BD523314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_1BE04F434();
  v3 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49780, &qword_1BE0DF3A8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49778, &qword_1BE0DF3A0);
  v9 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v21 - v10;
  sub_1BD523614(v8);
  v12 = sub_1BE04EC54();
  v13 = sub_1BE0501F4();
  v14 = &v8[*(v6 + 36)];
  *v14 = v12;
  v14[8] = v13;
  v25 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49788, &qword_1BE0DF3B0);
  v16 = sub_1BD528204();
  v17 = sub_1BD0DE4F4(&qword_1EBD497A8, &qword_1EBD49788, &qword_1BE0DF3B0, MEMORY[0x1E697C5E0]);
  sub_1BE051024();
  sub_1BD0DE53C(v8, &qword_1EBD49780, &qword_1BE0DF3A8);
  v18 = v23;
  (*(v3 + 104))(v5, *MEMORY[0x1E697C438], v23);
  v26 = v6;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  sub_1BE050E84();
  (*(v3 + 8))(v5, v18);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_1BD523614@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v1[4];
  v46 = v1[5];
  v47 = v7;
  v8 = v1[1];
  v9 = *(v2 + 96);
  v52 = *(v2 + 88);
  v53 = v9;
  sub_1BE048C84();
  v45 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v43 = v50;
  v44 = v49;
  v42 = v51;
  sub_1BD527F88(v2, &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = *(v5 + 80);
  v41 = swift_allocObject();
  sub_1BD5289F8(&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v10, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v12 = *(v2 + 104);
  v13 = *(v2 + 112);
  v40 = 0x80000001BE12D910;
  LOBYTE(v49) = v12;
  v50 = v13;
  sub_1BE0516A4();
  LOBYTE(v8) = v52;
  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v8;
  sub_1BD527F88(v2, &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = swift_allocObject();
  sub_1BD5289F8(&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v10, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  sub_1BD527F88(v2, &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = v11;
  v36 = swift_allocObject();
  sub_1BD5289F8(&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v10, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v35 = objc_opt_self();
  v14 = [v35 defaultCenter];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49890, &qword_1BE0DF518);
  sub_1BE052E54();

  sub_1BD527F88(v2, &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_1BD5289F8(&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v10, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v17 = v46;
  *a1 = v47;
  *(a1 + 8) = v17;
  v18 = v44;
  *(a1 + 16) = v45;
  *(a1 + 24) = v18;
  *(a1 + 32) = v43;
  *(a1 + 40) = v42;
  v19 = v41;
  *(a1 + 48) = sub_1BD528A60;
  *(a1 + 56) = v19;
  *(a1 + 64) = 0xD0000000000000ECLL;
  v20 = KeyPath;
  *(a1 + 72) = v40;
  *(a1 + 80) = v20;
  v21 = v37;
  v22 = v38;
  *(a1 + 88) = sub_1BD10DF54;
  *(a1 + 96) = v22;
  *(a1 + 104) = sub_1BD528AD0;
  *(a1 + 112) = v21;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  v24 = v35;
  v23 = v36;
  *(a1 + 152) = sub_1BD528B30;
  *(a1 + 160) = v23;
  v25 = (a1 + *(v15 + 56));
  *v25 = sub_1BD528B8C;
  v25[1] = v16;
  v26 = [v24 defaultCenter];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49898, &qword_1BE0DF520);
  sub_1BE052E54();

  sub_1BD527F88(v2, &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = swift_allocObject();
  sub_1BD5289F8(&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v10, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v29 = (a1 + *(v27 + 56));
  *v29 = sub_1BD528BB4;
  v29[1] = v28;
  v30 = [v24 defaultCenter];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497A0, &unk_1BE0DF3B8);
  sub_1BE052E54();

  sub_1BD527F88(v2, &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = swift_allocObject();
  result = sub_1BD5289F8(&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v10, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v34 = (a1 + *(v31 + 56));
  *v34 = sub_1BD528B30;
  v34[1] = v32;
  return result;
}

uint64_t sub_1BD523AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49800, &qword_1BE0DF468);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465E0, &unk_1BE0DF470);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49810, &qword_1BE0D6FD8);
  v40 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49818, &qword_1BE0DF480);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49820, &qword_1BE0DF488);
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49828, &qword_1BE0DF490);
  v18 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v20 = &v39 - v19;
  sub_1BE04FB34();
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49830, &qword_1BE0DF498);
  sub_1BD5287EC();
  sub_1BE04E424();
  sub_1BE04FB04();
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49848, &unk_1BE0DF4A0);
  sub_1BD5288F0();
  v42 = v16;
  sub_1BE04E424();
  v21 = *(a1 + 96);
  LOBYTE(v54) = *(a1 + 88);
  v55 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if ((v53 & 1) != 0 || (v22 = *(a1 + 112), LOBYTE(v54) = *(a1 + 104), v55 = v22, sub_1BE0516A4(), v53 == 1))
  {
    sub_1BE04FAC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BE04E424();
    v23 = sub_1BD0DE4F4(&unk_1EBD49870, &qword_1EBD49810, &qword_1BE0D6FD8, MEMORY[0x1E697BEF0]);
    v24 = v41;
    v25 = v44;
    MEMORY[0x1BFB3CC50](v8, v44, v23);
    (*(v5 + 16))(v11, v24, v4);
    (*(v5 + 56))(v11, 0, 1, v4);
    v54 = v25;
    v55 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v27 = v47;
    MEMORY[0x1BFB3CC80](v11, v4, OpaqueTypeConformance2);
    sub_1BD0DE53C(v11, &qword_1EBD49818, &qword_1BE0DF480);
    (*(v5 + 8))(v24, v4);
    (*(v40 + 8))(v8, v25);
  }

  else
  {
    (*(v5 + 56))(v11, 1, 1, v4);
    v28 = sub_1BD0DE4F4(&unk_1EBD49870, &qword_1EBD49810, &qword_1BE0D6FD8, MEMORY[0x1E697BEF0]);
    v54 = v44;
    v55 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v27 = v47;
    MEMORY[0x1BFB3CC80](v11, v4, v29);
    sub_1BD0DE53C(v11, &qword_1EBD49818, &qword_1BE0DF480);
  }

  v30 = v48;
  v31 = *(v49 + 48);
  v32 = *(v49 + 64);
  v33 = v43;
  (*(v18 + 16))(v48, v20, v43);
  v34 = v45;
  v35 = &v30[v31];
  v36 = v42;
  v37 = v46;
  (*(v45 + 16))(v35, v42, v46);
  sub_1BD084254(v27, &v30[v32]);
  sub_1BE04F854();
  sub_1BD0DE53C(v27, &qword_1EBD49818, &qword_1BE0DF480);
  (*(v34 + 8))(v36, v37);
  return (*(v18 + 8))(v20, v33);
}

uint64_t sub_1BD524278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView(0);
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *a1;
  if ([*a1 type] == 1 && (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0))
  {
    v13 = v12;
    v14 = *(a1 + 8);
    v15 = v11;
    v16 = [v14 dynamicContent];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 dynamicContentPageForPageType_];

      v19 = [v18 iconURL];
    }

    else
    {
      v19 = 0;
    }

    v22 = *(v4 + 28);
    *&v6[v22] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
    swift_storeEnumTagMultiPayload();
    *v6 = v19;
    *(v6 + 1) = v13;
    *(v6 + 1) = xmmword_1BE0DF0C0;
    sub_1BD5289F8(v6, v10, type metadata accessor for PaymentOfferInstallmentCriteriaIconView);
    sub_1BD5289F8(v10, a2, type metadata accessor for PaymentOfferInstallmentCriteriaIconView);
    return (*(v24 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v20 = *(v24 + 56);

    return v20(a2, 1, 1, v4);
  }
}

uint64_t sub_1BD5244EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49860, &unk_1BE0C4F70);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = *(a1 + 24);
  if (v12 == 2 || (v12 & 1) == 0)
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v7, v9);
  }

  else
  {
    v18 = v8;
    sub_1BD527F88(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = swift_allocObject();
    sub_1BD5289F8(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PaymentOfferCriteriaActionSetupView);
    sub_1BE051704();
    (*(v18 + 32))(a2, v11, v7);
    return (*(v18 + 56))(a2, 0, 1, v7);
  }
}

uint64_t sub_1BD524758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497E0, &qword_1BE0DF430);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = *(a1 + 64);
  *(&v7 - v3) = 0;
  swift_storeEnumTagMultiPayload();
  v5(v4);
  return sub_1BD0DE53C(v4, &qword_1EBD497E0, &qword_1BE0DF430);
}

void sub_1BD524818(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1BD527F88(a2, v7);
  sub_1BE0528A4();
  v12 = a1;
  v13 = sub_1BE052894();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v13;
  v16[3] = v17;
  sub_1BD5289F8(v7, v16 + v14, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  *(v16 + v15) = v12;
  v18 = sub_1BD122C00(0, 0, v10, &unk_1BE0DF540, v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
}

uint64_t sub_1BD524A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v5[11] = swift_task_alloc();
  v7 = sub_1BE04D214();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = sub_1BE0528A4();
  v5[16] = sub_1BE052894();
  v8 = swift_task_alloc();
  v5[17] = v8;
  *v8 = v5;
  v8[1] = sub_1BD524B58;

  return sub_1BD524FB8(a5);
}

uint64_t sub_1BD524B58()
{
  *(*v1 + 144) = v0;

  v3 = sub_1BE052844();
  if (v0)
  {
    v4 = sub_1BD524D28;
  }

  else
  {
    v4 = sub_1BD524CB4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1BD524CB4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD524D28(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v50 = v8;
  v9 = *(v8 + 144);
  v11 = *(v8 + 80);
  v10 = *(v8 + 88);
  v12 = *(v8 + 72);
  *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;
  v13 = v9;
  v14 = sub_1BE04A844();

  *(v8 + 16) = *(v12 + *(v11 + 64));
  *(v8 + 48) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
  sub_1BE0516B4();
  sub_1BE04D1E4();
  sub_1BD527F88(v12, v10);
  v15 = sub_1BE04D204();
  v16 = sub_1BE052C34();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v8 + 104);
    v48 = *(v8 + 112);
    v18 = *(v8 + 88);
    v46 = *(v8 + 144);
    v47 = *(v8 + 96);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v49 = v20;
    *v19 = 136315138;
    *(v8 + 32) = *(v18 + *(v11 + 64));
    sub_1BE0516A4();
    v21 = *(v8 + 56);
    *(v8 + 64) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710, &qword_1BE0B8580);
    v22 = sub_1BE0534A4();
    v24 = v23;

    sub_1BD528778(v18);
    v25 = sub_1BD123690(v22, v24, &v49);
    v24, v26, v27, v28, v29, v30, v31, v32;
    *(v19 + 4) = v25;
    _os_log_impl(&dword_1BD026000, v15, v16, "Displaying paymentOffersError %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20, v33, v34, v35, v36, v37, v38, v39);
    MEMORY[0x1BFB45F20](v20, -1, -1);
    MEMORY[0x1BFB45F20](v19, -1, -1);

    (*(v17 + 8))(v48, v47);
  }

  else
  {
    v41 = *(v8 + 104);
    v40 = *(v8 + 112);
    v43 = *(v8 + 88);
    v42 = *(v8 + 96);

    (*(v41 + 8))(v40, v42);
    sub_1BD528778(v43);
  }

  v44 = *(v8 + 8);

  return v44();
}

uint64_t sub_1BD524FB8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497E0, &qword_1BE0DF430);
  v2[11] = swift_task_alloc();
  v3 = sub_1BE04D214();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for PaymentOfferSetupProvisioningMetadata(0);
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = sub_1BE04AA64();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49700, &unk_1BE0E79F0);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_1BE0528A4();
  v2[28] = sub_1BE052894();
  v7 = sub_1BE052844();
  v2[29] = v7;
  v2[30] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD525288, v7, v6);
}

uint64_t sub_1BD525288()
{
  v140 = v0;
  *(v0 + 16) = *(*(v0 + 48) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497E8, &qword_1BE0DF450);
  sub_1BE0516A4();
  v1 = *(v0 + 32);
  if (v1)
  {

    sub_1BE04D1E4();
    v2 = sub_1BE04D204();
    v3 = sub_1BE052C54();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BD026000, v2, v3, "Updating payment offers since the pass is already provisioned", v4, 2u);
      MEMORY[0x1BFB45F20](v4, -1, -1);
    }

    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 96);

    (*(v6 + 8))(v5, v7);
    v8 = swift_task_alloc();
    *(v0 + 280) = v8;
    *v8 = v0;
    v9 = sub_1BD525EDC;
LABEL_19:
    v8[1] = v9;

    return sub_1BD526980(4);
  }

  v10 = *(v0 + 40);
  v11 = [**(v0 + 48) identifier];
  v12 = sub_1BE052434();
  v14 = v13;

  v15 = [v10 provisioningCredentialIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1BE052434();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [*(v0 + 40) provisioningCardIconURL];
  v22 = *(v0 + 192);
  v21 = *(v0 + 200);
  if (v20)
  {
    v23 = *(v0 + 176);
    v24 = *(v0 + 184);
    v133 = v14;
    v136 = v17;
    v25 = v12;
    v26 = *(v0 + 168);
    v27 = v19;
    v28 = v20;
    sub_1BE04A9F4();

    v29 = *(v23 + 32);
    v29(v22, v24, v26);
    v30 = *(v23 + 56);
    v30(v22, 0, 1, v26);
    v29(v21, v22, v26);
    v19 = v27;
    v31 = v26;
    v12 = v25;
    v14 = v133;
    v17 = v136;
    v30(v21, 0, 1, v31);
  }

  else
  {
    v33 = *(v0 + 168);
    v32 = *(v0 + 176);
    (*(v32 + 56))(*(v0 + 192), 1, 1, v33);
    PKPaymentOfferAction.cardArtURL.getter(v21);
    if ((*(v32 + 48))(v22, 1, v33) != 1)
    {
      sub_1BD0DE53C(*(v0 + 192), &unk_1EBD3CF70, &qword_1BE0BA000);
    }
  }

  v34 = [*(v0 + 40) didSelectOffer];
  if (v19)
  {
    v35 = v34;
    v36 = *(v0 + 216);
    v37 = *(v0 + 200);
    v38 = *(v0 + 160);
    v39 = *(v0 + 144);
    *v38 = v12;
    v38[1] = v14;
    v38[2] = v17;
    v38[3] = v19;
    sub_1BD226B4C(v37, v38 + *(v39 + 24));
    *(v38 + *(v39 + 28)) = v35;
    sub_1BD5289F8(v38, v36, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
    v40 = 0;
  }

  else
  {
    sub_1BD0DE53C(*(v0 + 200), &unk_1EBD3CF70, &qword_1BE0BA000);
    v14, v41, v42, v43, v44, v45, v46, v47;
    v40 = 1;
  }

  v48 = *(v0 + 216);
  v49 = *(v0 + 144);
  v50 = *(v0 + 152);
  v51 = *(v50 + 56);
  *(v0 + 248) = v51;
  v51(v48, v40, 1, v49);
  if ((*(v50 + 48))(v48, 1, v49) == 1)
  {
    sub_1BE04D1E4();
    v59 = sub_1BE04D204();
    v60 = sub_1BE052C54();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1BD026000, v59, v60, "Updating payment offers even though though there is no pass provisioned", v61, 2u);
      MEMORY[0x1BFB45F20](v61, -1, -1);
    }

    v62 = *(v0 + 136);
    v63 = *(v0 + 96);
    v64 = *(v0 + 104);

    (*(v64 + 8))(v62, v63);
    v8 = swift_task_alloc();
    *(v0 + 256) = v8;
    *v8 = v0;
    v9 = sub_1BD525C04;
    goto LABEL_19;
  }

  v66 = *(v0 + 48);
  *(v0 + 224), v52, v53, v54, v55, v56, v57, v58;
  v67 = [*(v66 + 16) configuration];
  v68 = [v67 context];

  v69 = *(v0 + 48);
  if (v68 == 2)
  {
    v70 = *(v0 + 72);
    sub_1BE04D1E4();
    sub_1BD527F88(v69, v70);
    v71 = sub_1BE04D204();
    v72 = sub_1BE052C54();
    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v0 + 128);
    v76 = *(v0 + 96);
    v75 = *(v0 + 104);
    v77 = *(v0 + 72);
    if (v73)
    {
      v137 = *(v0 + 96);
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v139 = v79;
      *v78 = 136315138;
      v80 = [*v77 identifier];
      v81 = sub_1BE052434();
      v134 = v74;
      v83 = v82;

      sub_1BD528778(v77);
      v84 = sub_1BD123690(v81, v83, &v139);
      v83, v85, v86, v87, v88, v89, v90, v91;
      *(v78 + 4) = v84;
      _os_log_impl(&dword_1BD026000, v71, v72, "Handing off provisioning to behind + flow %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79, v92, v93, v94, v95, v96, v97, v98);
      MEMORY[0x1BFB45F20](v79, -1, -1);
      MEMORY[0x1BFB45F20](v78, -1, -1);

      (*(v75 + 8))(v134, v137);
    }

    else
    {

      (*(v75 + 8))(v74, v76);
      sub_1BD528778(v77);
    }

    v128 = *(v0 + 216);
    v129 = *(v0 + 88);
    v130 = *(*(v0 + 48) + 64);
    v131 = type metadata accessor for PaymentOfferCriteriaActionSetupView.SetupResult(0);
    sub_1BD528E0C(v128, v129 + *(v131 + 24));
    *v129 = 0;
    v129[1] = 0;
    swift_storeEnumTagMultiPayload();
    v130(v129);
    sub_1BD0DE53C(v129, &qword_1EBD497E0, &qword_1BE0DF430);
  }

  else
  {
    v99 = *(v0 + 64);
    sub_1BE04D1E4();
    sub_1BD527F88(v69, v99);
    v100 = sub_1BE04D204();
    v101 = sub_1BE052C54();
    v102 = os_log_type_enabled(v100, v101);
    v103 = *(v0 + 120);
    v105 = *(v0 + 96);
    v104 = *(v0 + 104);
    v106 = *(v0 + 64);
    if (v102)
    {
      v138 = *(v0 + 96);
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v139 = v108;
      *v107 = 136315138;
      v109 = [*v106 identifier];
      v110 = sub_1BE052434();
      v135 = v103;
      v112 = v111;

      sub_1BD528778(v106);
      v113 = sub_1BD123690(v110, v112, &v139);
      v112, v114, v115, v116, v117, v118, v119, v120;
      *(v107 + 4) = v113;
      _os_log_impl(&dword_1BD026000, v100, v101, "Starting provisioning for payment offer %s", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v108, v121, v122, v123, v124, v125, v126, v127);
      MEMORY[0x1BFB45F20](v108, -1, -1);
      MEMORY[0x1BFB45F20](v107, -1, -1);

      (*(v104 + 8))(v135, v138);
    }

    else
    {

      (*(v104 + 8))(v103, v105);
      sub_1BD528778(v106);
    }

    v128 = *(v0 + 216);
    sub_1BD528E0C(v128, *(v0 + 208));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49680, &unk_1BE0DF290);
    sub_1BE0516B4();
  }

  sub_1BD0DE53C(v128, &unk_1EBD49700, &unk_1BE0E79F0);

  v132 = *(v0 + 8);

  return v132();
}

uint64_t sub_1BD525C04(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_1BD5262AC;
  }

  else
  {
    v4[34] = a1;
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_1BD525D2C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD525D2C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 272);
  v10 = *(v8 + 248);
  v11 = *(v8 + 216);
  v12 = *(v8 + 144);
  v13 = *(v8 + 88);
  v14 = *(v8 + 48);
  *(v8 + 224), a2, a3, a4, a5, a6, a7, a8;
  v15 = *(v14 + 64);
  v16 = type metadata accessor for PaymentOfferCriteriaActionSetupView.SetupResult(0);
  v10(&v13[*(v16 + 24)], 1, 1, v12);
  *v13 = v9;
  *(v13 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v17 = v9;
  v15(v13);

  sub_1BD0DE53C(v13, &qword_1EBD497E0, &qword_1BE0DF430);
  sub_1BD0DE53C(v11, &unk_1EBD49700, &unk_1BE0E79F0);

  v18 = *(v8 + 8);

  return v18();
}

uint64_t sub_1BD525EDC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_1BD526198;
  }

  else
  {
    v4[37] = a1;
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_1BD526004;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD526004(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 296);
  v10 = *(v8 + 144);
  v11 = *(v8 + 152);
  v12 = *(v8 + 88);
  v13 = *(v8 + 48);
  *(v8 + 224), a2, a3, a4, a5, a6, a7, a8;
  v14 = *(v13 + 64);
  v15 = type metadata accessor for PaymentOfferCriteriaActionSetupView.SetupResult(0);
  (*(v11 + 56))(&v12[*(v15 + 24)], 1, 1, v10);
  *v12 = v9;
  *(v12 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v16 = v9;
  v14(v12);

  sub_1BD0DE53C(v12, &qword_1EBD497E0, &qword_1BE0DF430);

  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_1BD526198(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 224), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD5262AC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 216);
  *(v8 + 224), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD0DE53C(v9, &unk_1EBD49700, &unk_1BE0E79F0);

  v10 = *(v8 + 8);

  return v10();
}

void sub_1BD5263D8(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  aBlock = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD498A0, &unk_1BE0DF528);
  sub_1BE0516A4();
  v5 = v22;
  if (!v22)
  {
    v6 = objc_opt_self();
    v5 = sub_1BE052404();
    sub_1BD527F88(a1, &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v8 = swift_allocObject();
    sub_1BD5289F8(&aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PaymentOfferCriteriaActionSetupView);
    v20 = sub_1BD5290F4;
    v21 = v8;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v18 = sub_1BD14E1D8;
    v19 = &block_descriptor_112;
    v9 = _Block_copy(&aBlock);
    v21, v10, v11, v12, v13, v14, v15, v16;
    [v6 acquireAssertionOfType:9 withReason:v5 completion:v9];
    _Block_release(v9);
  }
}

void sub_1BD5265CC()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v21 = v6;
  v22 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD498A0, &unk_1BE0DF528);
  sub_1BE0516A4();
  v7 = v20;
  if (v20)
  {
    sub_1BE04D1E4();
    v8 = sub_1BE04D204();
    v9 = sub_1BE052C54();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BD026000, v8, v9, "Invalidating issuerInstallmentsHandoffViewActive assertion", v10, 2u);
      MEMORY[0x1BFB45F20](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    [v7 invalidate];
    v21 = v6;
    v22 = v5;
    v20 = 0;
    sub_1BE048964();
    v11 = v6;
    sub_1BE0516B4();
    v5, v12, v13, v14, v15, v16, v17, v18;
  }
}

void sub_1BD526794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  aBlock = *(a2 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD498A0, &unk_1BE0DF528);
  sub_1BE0516A4();
  v11 = v28;
  if (!v28)
  {
    v12 = objc_opt_self();
    v11 = sub_1BE052404();
    sub_1BD527F88(a2, &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v14 = swift_allocObject();
    sub_1BD5289F8(&aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PaymentOfferCriteriaActionSetupView);
    v26 = a4;
    v27 = v14;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v24 = sub_1BD14E1D8;
    v25 = a5;
    v15 = _Block_copy(&aBlock);
    v27, v16, v17, v18, v19, v20, v21, v22;
    [v12 acquireAssertionOfType:9 withReason:v11 completion:v15];
    _Block_release(v15);
  }
}

uint64_t sub_1BD526980(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_1BE0528A4();
  v2[13] = sub_1BE052894();
  v4 = sub_1BE052844();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD526A18, v4, v3);
}

uint64_t sub_1BD526A18()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 104);
  *(v0 + 179) = v2;
  v3 = *(v1 + 112);
  *(v0 + 16) = v2;
  *(v0 + 128) = v3;
  *(v0 + 24) = v3;
  *(v0 + 176) = 1;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v4 = *(v1 + 16);
  v5 = *v1;
  *(v0 + 32) = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497E8, &qword_1BE0DF450);
  sub_1BE0516A4();
  v6 = *(v0 + 80);
  *(v0 + 144) = v6;
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_1BD526B5C;
  v8 = *(v0 + 88);

  return sub_1BD8D3BD0(v4, v5, v6, v8);
}

uint64_t sub_1BD526B5C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1BD526D1C;
  }

  else
  {
    v8 = v4[18];
    v4[21] = a1;

    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1BD526C88;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD526C88(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 128);
  v10 = *(v8 + 179);
  *(v8 + 104), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 64) = v10;
  *(v8 + 72) = v9;
  *(v8 + 178) = 0;
  sub_1BE0516B4();
  v11 = *(v8 + 8);
  v12 = *(v8 + 168);

  return v11(v12);
}

uint64_t sub_1BD526D1C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 144);
  v10 = *(v8 + 128);
  v11 = *(v8 + 179);
  *(v8 + 104), a2, a3, a4, a5, a6, a7, a8;

  *(v8 + 48) = v11;
  *(v8 + 56) = v10;
  *(v8 + 177) = 0;
  sub_1BE0516B4();
  v12 = *(v8 + 8);

  return v12();
}

double sub_1BD526DB4(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  if (a2)
  {
    v16 = a2;
    sub_1BE04D1E4();
    v17 = a2;
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C54();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = a2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1BD026000, v18, v19, "Error getting issuerInstallmentsHandoffViewActive assertion %@", v20, 0xCu);
      sub_1BD0DE53C(v21, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v21, -1, -1);
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    (*(v7 + 8))(v15, v6);
    v25 = *(a3 + 120);
    v24 = *(a3 + 128);
    *&v44 = v25;
    *(&v44 + 1) = v24;
    v43 = 0;
    sub_1BE048964();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD498A0, &unk_1BE0DF528);
    sub_1BE0516B4();

    v24, v27, v28, v29, v30, v31, v32, v33;
  }

  else
  {
    if (a1)
    {
      sub_1BE04D1E4();
      v35 = sub_1BE04D204();
      v36 = sub_1BE052C54();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1BD026000, v35, v36, "acquired issuerInstallmentsHandoffViewActive assertion", v37, 2u);
        MEMORY[0x1BFB45F20](v37, -1, -1);
      }

      (*(v7 + 8))(v12, v6);
      v44 = *(a3 + 120);
      v43 = a1;
      v38 = a1;
    }

    else
    {
      sub_1BE04D1E4();
      v39 = sub_1BE04D204();
      v40 = sub_1BE052C54();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1BD026000, v39, v40, "Error getting issuerInstallmentsHandoffViewActive assertion, nil returned", v41, 2u);
        MEMORY[0x1BFB45F20](v41, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
      v44 = *(a3 + 120);
      v43 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD498A0, &unk_1BE0DF528);
    sub_1BE0516B4();
  }

  return result;
}

unint64_t sub_1BD527180()
{
  result = qword_1EBD49668;
  if (!qword_1EBD49668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49668);
  }

  return result;
}

uint64_t sub_1BD5271D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BD0F985C;

  return sub_1BD521438(v2, v3, v4, v5, v6);
}

uint64_t sub_1BD5272A8(void *a1, uint64_t a2, uint64_t a3)
{
  v98 = a3;
  v91 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49670, &unk_1BE0D5F70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v96 = &v90 - v5;
  v6 = sub_1BE04A3B4();
  v92 = *(v6 - 8);
  v93 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04D214();
  v94 = *(v8 - 8);
  v95 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v90 - v12;
  v14 = sub_1BE04A134();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04AA64();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v90 - v24;
  v26 = [a1 request];
  sub_1BE04A104();

  sub_1BE04A124();
  (*(v15 + 8))(v17, v14);
  v27 = v19;
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1BD0DE53C(v13, &unk_1EBD3CF70, &qword_1BE0BA000);
    return (*(v98 + 16))(v98, 0);
  }

  (*(v19 + 32))(v25, v13, v18);
  sub_1BE04D1B4();
  (*(v19 + 16))(v21, v25, v18);
  v29 = sub_1BE04D204();
  v30 = v18;
  v31 = sub_1BE052C54();
  if (os_log_type_enabled(v29, v31))
  {
    v32 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v99 = v90;
    *v32 = 136315138;
    sub_1BD5288A0(&qword_1EBD49660, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v33 = sub_1BE053B24();
    v34 = v30;
    v35 = v25;
    v36 = v27;
    v38 = v37;
    v39 = *(v36 + 8);
    v40 = v21;
    v41 = v34;
    v39(v40, v34);
    v42 = sub_1BD123690(v33, v38, &v99);
    v25 = v35;
    v38, v43, v44, v45, v46, v47, v48, v49;
    *(v32 + 4) = v42;
    _os_log_impl(&dword_1BD026000, v29, v31, "Payment offer web view navigating to %s", v32, 0xCu);
    v50 = v90;
    __swift_destroy_boxed_opaque_existential_0(v90, v51, v52, v53, v54, v55, v56, v57);
    MEMORY[0x1BFB45F20](v50, -1, -1);
    MEMORY[0x1BFB45F20](v32, -1, -1);

    (*(v94 + 8))(v10, v95);
    v30 = v41;
  }

  else
  {

    v39 = *(v27 + 8);
    v39(v21, v30);
    (*(v94 + 8))(v10, v95);
  }

  v58 = sub_1BE04AA04();
  v65 = v96;
  v66 = v97;
  if (!v59)
  {
    goto LABEL_16;
  }

  if (v58 == 0xD000000000000010 && v59 == 0x80000001BE12D8F0)
  {
    v59, v59, v60, 0x80000001BE12D8F0, v61, v62, v63, v64;
  }

  else
  {
    v67 = v59;
    v68 = sub_1BE053B84();
    v67, v69, v70, v71, v72, v73, v74, v75;
    if ((v68 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_1BE04A354();
  v77 = v92;
  v76 = v93;
  if ((*(v92 + 48))(v65, 1, v93) == 1)
  {
    sub_1BD0DE53C(v65, &unk_1EBD49670, &unk_1BE0D5F70);
LABEL_19:
    v89 = *(v98 + 16);
    goto LABEL_20;
  }

  (*(v77 + 32))(v66, v65, v76);
  v78 = sub_1BE04A334();
  if (!v78)
  {
    (*(v77 + 8))(v66, v76);
    goto LABEL_19;
  }

  v79 = v78;
  sub_1BE04A324();
  v80 = sub_1BE052724();
  v79, v81, v82, v83, v84, v85, v86, v87;
  v88 = [objc_opt_self() paymentOfferActionResultFromQueryItems_];

  if (!v88)
  {
    (*(v92 + 8))(v66, v93);
    goto LABEL_19;
  }

  (*(v91 + OBJC_IVAR____TtCV9PassKitUI32PaymentOfferCriteriaSetupWebView11Coordinator_parent + 48))(v88);

  (*(v92 + 8))(v66, v93);
LABEL_16:
  v89 = *(v98 + 16);
LABEL_20:
  v89();
  return (v39)(v25, v30);
}

uint64_t sub_1BD527A30(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD527A80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1BD527AD4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1BD527B4C(uint64_t a1)
{
  sub_1BD0E5E8C(319, &unk_1EBD496A0, 0x1E69B8C60);
  if (v1 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD579F0, 0x1E69B8C48);
    if (v2 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD496B0, 0x1E69B8CE8);
      if (v3 <= 0x3F)
      {
        sub_1BD527D94(319, &qword_1EBD39308, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1BD23BC4C(319, &qword_1EBD496C0, &qword_1EBD496C8, &unk_1BE0E2380);
          if (v5 <= 0x3F)
          {
            sub_1BD1030A8();
            if (v6 <= 0x3F)
            {
              sub_1BD527F18(319, &qword_1EBD39DB0, type metadata accessor for PresentationContext);
              if (v7 <= 0x3F)
              {
                sub_1BD527D94(319, &qword_1EBD496E0, MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
                {
                  sub_1BD23BC4C(319, &qword_1EBD496E8, &qword_1EBD496F0, &qword_1BE0DF2D0);
                  if (v9 <= 0x3F)
                  {
                    sub_1BD23BC4C(319, &qword_1EBD496F8, &unk_1EBD49700, &unk_1BE0E79F0);
                    if (v10 <= 0x3F)
                    {
                      sub_1BD23BC4C(319, &qword_1EBD39360, &qword_1EBD49710, &qword_1BE0B8580);
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

void sub_1BD527D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD527E30(uint64_t a1)
{
  sub_1BD10315C(319, &qword_1EBD39318, &unk_1EBD3E560, 0x1E69B91F8);
  if (v1 <= 0x3F)
  {
    sub_1BD10315C(319, &unk_1EBD49728, &unk_1EBD40340, 0x1E69B8D08);
    if (v2 <= 0x3F)
    {
      sub_1BD527F18(319, &qword_1EBD49738, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD527F18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD527F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD527FEC(uint64_t a1)
{
  v3 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD522700(a1, v4);
}

unint64_t sub_1BD52806C()
{
  result = qword_1EBD49760;
  if (!qword_1EBD49760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49748, &qword_1BE0DF380);
    sub_1BD0DE4F4(&qword_1EBD49768, &qword_1EBD49770, &qword_1BE0DF398, MEMORY[0x1E697C0C0]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49778, &qword_1BE0DF3A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49780, &qword_1BE0DF3A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49788, &qword_1BE0DF3B0);
    sub_1BD528204();
    sub_1BD0DE4F4(&qword_1EBD497A8, &qword_1EBD49788, &qword_1BE0DF3B0, MEMORY[0x1E697C5E0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49760);
  }

  return result;
}

unint64_t sub_1BD528204()
{
  result = qword_1EBD49790;
  if (!qword_1EBD49790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49780, &qword_1BE0DF3A8);
    sub_1BD0DE4F4(&qword_1EBD49798, &qword_1EBD497A0, &unk_1BE0DF3B8, MEMORY[0x1E697C278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49790);
  }

  return result;
}

unint64_t sub_1BD5282BC()
{
  result = qword_1EBD497B8;
  if (!qword_1EBD497B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD497B8);
  }

  return result;
}

uint64_t objectdestroy_37Tm_0()
{
  v1 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v2[5], v3, v4, v5, v6, v7, v8, v9;
  v2[7], v10, v11, v12, v13, v14, v15, v16;
  v2[9], v17, v18, v19, v20, v21, v22, v23;
  v2[10], v24, v25, v26, v27, v28, v29, v30;
  v2[12], v31, v32, v33, v34, v35, v36, v37;
  v2[14], v38, v39, v40, v41, v42, v43, v44;

  v2[16], v45, v46, v47, v48, v49, v50, v51;
  v52 = (v2 + *(v1 + 60));
  v53 = type metadata accessor for PaymentOfferSetupProvisioningMetadata(0);
  if (!(*(*(v53 - 8) + 48))(v52, 1, v53))
  {
    v52[1], v54, v55, v56, v57, v58, v59, v60;
    v52[3], v61, v62, v63, v64, v65, v66, v67;
    v68 = *(v53 + 24);
    v69 = sub_1BE04AA64();
    v70 = *(v69 - 8);
    if (!(*(v70 + 48))(v52 + v68, 1, v69))
    {
      (*(v70 + 8))(v52 + v68, v69);
    }
  }

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49680, &unk_1BE0DF290);
  *(v52 + *(v71 + 28)), v72, v73, v74, v75, v76, v77, v78;
  v79 = (v2 + *(v1 + 64));

  v79[1], v80, v81, v82, v83, v84, v85, v86;

  return swift_deallocObject();
}

void sub_1BD5285AC(void *a1, char a2)
{
  v5 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD52289C(a1, a2 & 1, v6);
}

uint64_t sub_1BD528644(uint64_t a1)
{
  v4 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD126968;

  return sub_1BD522AA4(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1BD528778(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD5287EC()
{
  result = qword_1EBD49838;
  if (!qword_1EBD49838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49830, &qword_1BE0DF498);
    sub_1BD5288A0(&qword_1EBD49840, type metadata accessor for PaymentOfferInstallmentCriteriaIconView, &unk_1BE0F0928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49838);
  }

  return result;
}

uint64_t sub_1BD5288A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD5288F0()
{
  result = qword_1EBD49850;
  if (!qword_1EBD49850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49848, &unk_1BE0DF4A0);
    sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860, &unk_1BE0C4F70, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49850);
  }

  return result;
}

uint64_t sub_1BD5289F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD528A60(void *a1)
{
  v3 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD524818(a1, v4);
}

void sub_1BD528AD0()
{
  v1 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BD5263D8(v2);
}

double sub_1BD528C6C(void *a1, void *a2)
{
  v5 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD526DB4(a1, a2, v6);
}

uint64_t sub_1BD528CEC(uint64_t a1)
{
  v4 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD524A0C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1BD528E0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49700, &unk_1BE0E79F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD528E7C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD528F30()
{
  result = qword_1EBD498C0;
  if (!qword_1EBD498C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD497C8, &qword_1BE0DF3C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49750, &qword_1BE0DF388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49748, &qword_1BE0DF380);
    type metadata accessor for PaymentOfferSetupProvisioningMetadata(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49758, &qword_1BE0DF390);
    sub_1BD52806C();
    sub_1BD5288A0(&qword_1EBD497B0, type metadata accessor for PaymentOfferSetupProvisioningMetadata, &unk_1BE107D40);
    sub_1BD5282BC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD10EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD498C0);
  }

  return result;
}

void sub_1BD529194(uint64_t a1)
{
  v57 = sub_1BE049E54();
  v3 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1BE0495A4();
  v5 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v46 = v1;
    v62 = MEMORY[0x1E69E7CC0];
    sub_1BD03B254(0, v12, 0, v6, v7, v8, v9, v10);
    v13 = v62;
    v14 = a1 + 64;
    v15 = sub_1BE053674();
    v16 = 0;
    v51 = (v3 + 8);
    v52 = v5 + 16;
    v53 = v5;
    v49 = a1 + 64;
    v50 = v5 + 8;
    v47 = a1 + 72;
    v48 = v12;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v14 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_21;
      }

      v20 = *(a1 + 36);
      v58 = v16;
      v59 = v20;
      v21 = v53;
      v22 = *(a1 + 56) + *(v53 + 72) * v15;
      v23 = *(v53 + 16);
      v61 = v13;
      v25 = v54;
      v24 = v55;
      v23(v54, v22, v55);
      v26 = v56;
      sub_1BE049524();
      v27 = sub_1BE049E24();
      v60 = v28;
      (*v51)(v26, v57);
      v29 = v25;
      v13 = v61;
      (*(v21 + 8))(v29, v24);
      v62 = v13;
      v36 = *(v13 + 16);
      v35 = *(v13 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1BD03B254((v35 > 1), v36 + 1, 1, v30, v31, v32, v33, v34);
        v13 = v62;
      }

      *(v13 + 16) = v36 + 1;
      v37 = v13 + 16 * v36;
      v38 = v60;
      *(v37 + 32) = v27;
      *(v37 + 40) = v38;
      v17 = 1 << *(a1 + 32);
      if (v15 >= v17)
      {
        goto LABEL_22;
      }

      v14 = v49;
      v39 = *(v49 + 8 * v19);
      if ((v39 & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      if (v59 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v40 = v39 & (-2 << (v15 & 0x3F));
      if (v40)
      {
        v17 = __clz(__rbit64(v40)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v48;
      }

      else
      {
        v41 = v19 << 6;
        v42 = v19 + 1;
        v18 = v48;
        v43 = (v47 + 8 * v19);
        while (v42 < (v17 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            sub_1BD20DE9C(v15, v59, 0, v30, v31, v32, v33, v34);
            v17 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        sub_1BD20DE9C(v15, v59, 0, v30, v31, v32, v33, v34);
      }

LABEL_4:
      v16 = v58 + 1;
      v15 = v17;
      if (v58 + 1 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1BD529554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1BD03B254(0, v8, 0, a4, a5, a6, a7, a8);
    v10 = a1 + 64;
    v11 = sub_1BE053674();
    v12 = 0;
    v35 = v8;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_21;
      }

      v36 = v12;
      v37 = *(a1 + 36);
      v15 = *(*(a1 + 56) + 8 * v11);
      v16 = [v15 institutionIdentifier];
      v17 = sub_1BE052434();
      v19 = v18;

      v26 = *(v38 + 16);
      v25 = *(v38 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1BD03B254((v25 > 1), v26 + 1, 1, v20, v21, v22, v23, v24);
      }

      *(v38 + 16) = v26 + 1;
      v27 = v38 + 16 * v26;
      *(v27 + 32) = v17;
      *(v27 + 40) = v19;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_22;
      }

      v10 = a1 + 64;
      v28 = *(a1 + 64 + 8 * v14);
      if ((v28 & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      if (v37 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v29 = v28 & (-2 << (v11 & 0x3F));
      if (v29)
      {
        v13 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (a1 + 72 + 8 * v14);
        while (v31 < (v13 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1BD20DE9C(v11, v37, 0, v20, v21, v22, v23, v24);
            v13 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        sub_1BD20DE9C(v11, v37, 0, v20, v21, v22, v23, v24);
      }

LABEL_4:
      v12 = v36 + 1;
      v11 = v13;
      if (v36 + 1 == v35)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

id PKTransactionsPageBoundary.__allocating_init(date:identifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(v3);
  sub_1BD0DE19C(a1, v8, &unk_1EBD39970, &unk_1BE0B9F80);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BD0DE53C(a1, &unk_1EBD39970, &unk_1BE0B9F80);
    a3, v14, v15, v16, v17, v18, v19, v20;
    sub_1BD0DE53C(v8, &unk_1EBD39970, &unk_1BE0B9F80);
  }

  else
  {
    v21 = *(v10 + 32);
    v21(v12, v8, v9);
    if (a3)
    {
      v21(&v13[OBJC_IVAR____TtC9PassKitUI26PKTransactionsPageBoundary_date], v12, v9);
      v22 = &v13[OBJC_IVAR____TtC9PassKitUI26PKTransactionsPageBoundary_identifier];
      *v22 = v26;
      v22[1] = a3;
      v27.receiver = v13;
      v27.super_class = v3;
      v23 = objc_msgSendSuper2(&v27, sel_init);
      sub_1BD0DE53C(a1, &unk_1EBD39970, &unk_1BE0B9F80);
      return v23;
    }

    sub_1BD0DE53C(a1, &unk_1EBD39970, &unk_1BE0B9F80);
    (*(v10 + 8))(v12, v9);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id PKTransactionsPageBoundary.init(date:identifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_1BE04AF64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v9, &unk_1EBD39970, &unk_1BE0B9F80);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD0DE53C(a1, &unk_1EBD39970, &unk_1BE0B9F80);
    a3, v14, v15, v16, v17, v18, v19, v20;
    sub_1BD0DE53C(v9, &unk_1EBD39970, &unk_1BE0B9F80);
  }

  else
  {
    v21 = *(v11 + 32);
    v21(v13, v9, v10);
    if (a3)
    {
      v21(&v3[OBJC_IVAR____TtC9PassKitUI26PKTransactionsPageBoundary_date], v13, v10);
      v22 = &v3[OBJC_IVAR____TtC9PassKitUI26PKTransactionsPageBoundary_identifier];
      *v22 = v26;
      v22[1] = a3;
      v27.receiver = v3;
      v27.super_class = ObjectType;
      v23 = objc_msgSendSuper2(&v27, sel_init);
      sub_1BD0DE53C(a1, &unk_1EBD39970, &unk_1BE0B9F80);
      return v23;
    }

    sub_1BD0DE53C(a1, &unk_1EBD39970, &unk_1BE0B9F80);
    (*(v11 + 8))(v13, v10);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id PKTransactionsPageBoundary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PKPagedTransactionListBankConnectFetcher.accountExternalIDs()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD1CDC44;

  return sub_1BD5377A8();
}

uint64_t sub_1BD52A14C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD52A1F4;

  return sub_1BD5377A8();
}

uint64_t sub_1BD52A1F4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1BE04A844();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = sub_1BE052724();
    a1, v11, v12, v13, v14, v15, v16, v17;
    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v18 = *(v5 + 16);
  (v18)[2](v18, v9, v8);

  _Block_release(v18);
  v19 = *(v6 + 8);

  return v19();
}

uint64_t PKPagedTransactionListBankConnectFetcher.countTransactions()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD1CC748;

  return sub_1BD5381A8();
}

uint64_t sub_1BD52A404@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a2;
  v58 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE0, &unk_1BE0B7F40);
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7F0, &unk_1BE0DFA20);
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8, &qword_1BE0DF8F0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7F8, &qword_1BE0C6770);
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F800, &qword_1BE0DFA30);
  v19 = *(v18 - 8);
  v55 = v18;
  v56 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v47 - v20;
  v50 = *a1;
  sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8, &qword_1BE0DF8F0, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v22, v23, v24, v25, v26, v27, v28;
  v29 = v12 + 8;
  v30 = *(v12 + 8);
  v49 = v29;
  v30(v14, v11);
  sub_1BE0498F4();
  sub_1BE04A7B4();
  v52 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD3F890, &qword_1EBD3F7F8, &qword_1BE0C6770, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD3F898, &qword_1EBD3F7F0, &unk_1BE0DFA20, MEMORY[0x1E6968D20]);
  sub_1BD538AA4(&qword_1EBD3F8A0, MEMORY[0x1E6967938], MEMORY[0x1E6967948]);
  v31 = v53;
  sub_1BE04A714();
  (*(v54 + 8))(v10, v31);
  (*(v51 + 8))(v17, v15);
  sub_1BE04A7C4();
  v32 = swift_getKeyPath();
  v33 = v57;
  sub_1BE04A724();
  v32, v34, v35, v36, v37, v38, v39, v40;
  v30(v14, v11);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49B50, &qword_1BE0DFA38);
  v42 = v58;
  v58[3] = v41;
  v42[4] = sub_1BD539558();
  __swift_allocate_boxed_opaque_existential_1(v42);
  sub_1BD0DE4F4(&qword_1EBD3F8B0, &qword_1EBD3F800, &qword_1BE0DFA30, MEMORY[0x1E6968D08]);
  sub_1BD0DE4F4(qword_1EBD38F90, &qword_1EBD38EE0, &unk_1BE0B7F40, v52);
  v43 = v48;
  v44 = v55;
  v45 = v59;
  sub_1BE04A784();
  (*(v60 + 8))(v33, v45);
  return (*(v56 + 8))(v43, v44);
}

uint64_t sub_1BD52AB44(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD52ABEC;

  return sub_1BD5381A8();
}

uint64_t sub_1BD52ABEC(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_1BE04A844();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1, 0);
  }

  _Block_release(*(v6 + 16));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t PKPagedTransactionListBankConnectFetcher.fetchTransactions(limit:before:)(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0, &unk_1BE0E8DD0);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v4 = sub_1BE049E54();
  v3[38] = v4;
  v3[39] = *(v4 - 8);
  v3[40] = swift_task_alloc();
  v5 = sub_1BE049184();
  v3[41] = v5;
  v3[42] = *(v5 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v6 = sub_1BE049D44();
  v3[47] = v6;
  v3[48] = *(v6 - 8);
  v3[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC0, &unk_1BE0B7DC0);
  v3[50] = swift_task_alloc();
  v7 = sub_1BE049CC4();
  v3[51] = v7;
  v3[52] = *(v7 - 8);
  v3[53] = swift_task_alloc();
  v8 = sub_1BE0495A4();
  v3[54] = v8;
  v3[55] = *(v8 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v9 = sub_1BE049C24();
  v3[59] = v9;
  v3[60] = *(v9 - 8);
  v3[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8, &unk_1BE1091B0);
  v3[62] = swift_task_alloc();
  v10 = sub_1BE049B64();
  v3[63] = v10;
  v3[64] = *(v10 - 8);
  v3[65] = swift_task_alloc();
  v11 = sub_1BE049A94();
  v3[66] = v11;
  v3[67] = *(v11 - 8);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v12 = sub_1BE04AFE4();
  v3[70] = v12;
  v3[71] = *(v12 - 8);
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v13 = sub_1BE049D74();
  v3[78] = v13;
  v3[79] = *(v13 - 8);
  v3[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0, &unk_1BE0B7DD0);
  v3[81] = swift_task_alloc();
  v14 = sub_1BE0523F4();
  v3[82] = v14;
  v3[83] = *(v14 - 8);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v15 = sub_1BE049CE4();
  v3[86] = v15;
  v3[87] = *(v15 - 8);
  v3[88] = swift_task_alloc();
  v16 = sub_1BE0498F4();
  v3[89] = v16;
  v3[90] = *(v16 - 8);
  v3[91] = swift_task_alloc();
  v17 = sub_1BE04AF64();
  v3[92] = v17;
  v3[93] = *(v17 - 8);
  v3[94] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
  v3[95] = v18;
  v3[96] = *(v18 - 8);
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD52B4FC, 0, 0);
}

uint64_t sub_1BD52B4FC()
{
  v1 = v0[33];
  if (v1)
  {
    v2 = v0[94];
    v3 = v0[93];
    v4 = v0[92];
    v5 = v0[66];
    (*(v3 + 16))(v2, &v1[OBJC_IVAR____TtC9PassKitUI26PKTransactionsPageBoundary_date], v4);
    v7 = *&v1[OBJC_IVAR____TtC9PassKitUI26PKTransactionsPageBoundary_identifier];
    v6 = *&v1[OBJC_IVAR____TtC9PassKitUI26PKTransactionsPageBoundary_identifier + 8];
    v8 = swift_task_alloc();
    v8[2] = v2;
    v8[3] = v7;
    v8[4] = v6;
    v9 = v1;
    sub_1BE048C84();
    v0[31] = v5;
    sub_1BE04B444();

    v6, v10, v11, v12, v13, v14, v15, v16;
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v0[25] = v0[66];
    sub_1BE04B424();
  }

  v17 = v0[98];
  v18 = v0[96];
  v19 = v0[91];
  v36 = v0[87];
  v34 = v0[88];
  v35 = v0[86];
  v20 = v0[85];
  v21 = v0[84];
  v22 = v0[83];
  v23 = v0[82];
  v31 = v0[97];
  v32 = v0[81];
  v24 = v0[66];
  v33 = v0[95];
  (*(v0[90] + 104))(v19, *MEMORY[0x1E6967930], v0[89]);
  v25 = swift_task_alloc();
  v0[99] = v25;
  *(v25 + 16) = v19;
  *(v25 + 24) = v17;
  v0[26] = v24;
  sub_1BE04B444();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8, &unk_1BE0DF590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0, &qword_1BE0B7DE0);
  *(swift_allocObject() + 16) = xmmword_1BE0B6CA0;
  swift_getKeyPath();
  sub_1BD538AA4(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_1BE04A4F4();
  swift_getKeyPath();
  sub_1BE0523E4();
  (*(v22 + 16))(v21, v20, v23);
  sub_1BE04A4E4();
  (*(v22 + 8))(v20, v23);
  (*(v18 + 16))(v32, v31, v33);
  (*(v18 + 56))(v32, 0, 1, v33);
  sub_1BE049CD4();
  v0[100] = sub_1BE0490F4();
  v0[101] = sub_1BE0490B4();
  v26 = MEMORY[0x1E6967BC8];
  v0[5] = v35;
  v0[6] = v26;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v36 + 16))(boxed_opaque_existential_1, v34, v35);
  v28 = swift_task_alloc();
  v0[102] = v28;
  *v28 = v0;
  v28[1] = sub_1BD52B960;
  v29 = v0[80];

  return MEMORY[0x1EEDC14D8](v29, v0 + 2);
}

uint64_t sub_1BD52B960()
{
  v2 = *v1;
  *(*v1 + 824) = v0;

  *(v2 + 808), v3, v4, v5, v6, v7, v8, v9;
  if (v0)
  {
    v17 = sub_1BD52E6CC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16), v10, v11, v12, v13, v14, v15, v16);
    v17 = sub_1BD52BA8C;
  }

  return MEMORY[0x1EEE6DFA0](v17, 0, 0);
}

uint64_t sub_1BD52BA8C(uint64_t a1)
{
  v2 = v1[80];
  v3 = v1[79];
  v4 = v1[78];
  v5 = sub_1BE049D54();
  v1[104] = v5;
  (*(v3 + 8))(v2, v4);
  v1[105] = sub_1BE0490B4();
  v6 = *(v5 + 16);
  v1[106] = v6;
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v1[71];
    v9 = v1[67];
    v23 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v6, 0);
    v7 = v23;
    v11 = *(v9 + 16);
    v10 = v9 + 16;
    v12 = v5 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v21 = *(v10 + 56);
    v22 = v11;
    do
    {
      v13 = v1[69];
      v14 = v1[66];
      v22(v13, v12, v14);
      sub_1BE049A14();
      (*(v10 - 8))(v13, v14);
      v16 = *(v23 + 16);
      v15 = *(v23 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1BD531F28((v15 > 1), v16 + 1, 1);
      }

      v17 = v1[77];
      v18 = v1[70];
      *(v23 + 16) = v16 + 1;
      (*(v8 + 32))(v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v17, v18);
      v12 += v21;
      --v6;
    }

    while (v6);
  }

  v1[107] = v7;
  v19 = swift_task_alloc();
  v1[108] = v19;
  *v19 = v1;
  v19[1] = sub_1BD52BCB8;

  return MEMORY[0x1EEDC1480](v7);
}

uint64_t sub_1BD52BCB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[109] = a1;
  v4[110] = v1;

  v12 = v3[107];
  v13 = v3[105];
  if (v1)
  {
    v14 = v4[104];
    v12, v5, v6, v7, v8, v9, v10, v11;
    v13, v15, v16, v17, v18, v19, v20, v21;
    v14, v22, v23, v24, v25, v26, v27, v28;
    v29 = sub_1BD52E99C;
  }

  else
  {
    v12, v5, v6, v7, v8, v9, v10, v11;
    v13, v30, v31, v32, v33, v34, v35, v36;
    v29 = sub_1BD52BE2C;
  }

  return MEMORY[0x1EEE6DFA0](v29, 0, 0);
}

uint64_t sub_1BD52BE2C()
{
  v1 = v0 + 216;
  v2 = *(v0 + 848);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 832);
    v5 = *(v0 + 568);
    v6 = *(v0 + 536);
    v160 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v2, 0);
    v7 = 0;
    v8 = v160;
    v9 = *(v6 + 16);
    v6 += 16;
    v10 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v151 = *(v6 + 56);
    v153 = v9;
    v11 = (v6 - 8);
    do
    {
      v12 = *(v0 + 552);
      v13 = *(v0 + 528);
      v153(v12, v10, v13);
      sub_1BE049A64();
      (*v11)(v12, v13);
      v15 = v160[2];
      v14 = v160[3];
      if (v15 >= v14 >> 1)
      {
        sub_1BD531F28((v14 > 1), v15 + 1, 1);
      }

      v16 = *(v0 + 848);
      v17 = *(v0 + 608);
      v18 = *(v0 + 560);
      ++v7;
      v160[2] = v15 + 1;
      (*(v5 + 32))(v160 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v17, v18);
      v10 += v151;
    }

    while (v7 != v16);
    v1 = v0 + 216;
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v0 + 272);
  v20 = sub_1BD537330(v8);
  v8, v21, v22, v23, v24, v25, v26, v27;
  *(v0 + 216) = v20;
  v28 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accounts;
  *(v0 + 888) = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accounts;
  swift_beginAccess();
  v29 = *(v19 + v28);
  v30 = sub_1BE048C84();
  sub_1BD5351F0(v30);
  v29, v31, v32, v33, v34, v35, v36, v37;
  if (*(*(v0 + 216) + 16))
  {
    v38 = *(v0 + 496);
    v39 = *(v0 + 432);
    v40 = swift_task_alloc();
    *(v0 + 896) = v40;
    *(v40 + 16) = v1;
    *(v0 + 224) = v39;
    sub_1BE04B444();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8, &unk_1BE0DF620);
    (*(*(v41 - 8) + 56))(v38, 0, 1, v41);
    sub_1BE049B54();
    *(v0 + 904) = sub_1BE0490B4();
    v42 = swift_task_alloc();
    *(v0 + 912) = v42;
    *v42 = v0;
    v42[1] = sub_1BD52C848;
    v43 = *(v0 + 520);
    v44 = *(v0 + 488);

    return MEMORY[0x1EEDC14B8](v44, v43);
  }

  v45 = *(v0 + 832);
  v158 = v3;
  v46 = sub_1BD1AB78C(v3);
  v159 = v46;
  v54 = sub_1BD1AD454(v3);
  v161 = v54;
  v55 = *(v45 + 16);
  v56 = *(v0 + 872);
  v57 = *(v0 + 832);
  if (v55)
  {
    v58 = *(v0 + 536);
    v59 = *(v0 + 440);
    v145 = *(v0 + 272);
    v144 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accountIDToInstitution;
    v61 = *(v58 + 16);
    v58 += 16;
    v60 = v61;
    v62 = &v57[(*(v58 + 64) + 32) & ~*(v58 + 64)];
    v156 = *(v58 + 56);
    v63 = (*(v0 + 568) + 8);
    v139 = v59;
    v140 = (v59 + 48);
    v141 = (v59 + 56);
    v154 = (v58 - 8);
    v146 = *(v0 + 872);
    v143 = v61;
    v142 = v63;
    while (1)
    {
      v60(*(v0 + 544), v62, *(v0 + 528));
      sub_1BE049A14();
      if (v56[2])
      {
        v72 = sub_1BD14951C(*(v0 + 584));
        v64 = *v63;
        if (v73)
        {
          v74 = *(v0 + 584);
          v75 = *(v0 + 560);
          v76 = *v63;
          v77 = *(v56[7] + 8 * v72);
          v150 = v76;
          v76(v74, v75);
          sub_1BE049A64();
          swift_beginAccess();
          v78 = *(v145 + v144);
          if (*(v78 + 16) && (v79 = sub_1BD14951C(*(v0 + 576)), (v80 & 1) != 0))
          {
            v81 = *(*(v78 + 56) + 8 * v79);
            v82 = v81;
          }

          else
          {
            v81 = 0;
          }

          v83 = v77;
          swift_endAccess();
          v149 = v81;
          v84 = [objc_opt_self() transactionFromFKPaymentTransaction:v77 institution:v81];
          MEMORY[0x1BFB3F7A0]();
          if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BE052774();
          }

          v85 = *(v0 + 888);
          v86 = *(v0 + 272);
          v148 = v84;
          sub_1BE0527C4();
          v87 = [v77 transactionId];
          v88 = sub_1BE052434();
          v147 = v89;

          swift_beginAccess();
          v90 = *(v86 + v85);
          if (*(v90 + 16) && (v91 = sub_1BD14951C(*(v0 + 576)), (v92 & 1) != 0))
          {
            (*(v139 + 16))(*(v0 + 280), *(v90 + 56) + *(v139 + 72) * v91, *(v0 + 432));
            v93 = 0;
          }

          else
          {
            v93 = 1;
          }

          v94 = *(v0 + 432);
          v95 = *(v0 + 280);
          (*v141)(v95, v93, 1, v94);
          v96 = (*v140)(v95, 1, v94);
          v97 = *(v0 + 280);
          if (v96)
          {
            v98 = 0;
            v99 = 0;
          }

          else
          {
            v98 = sub_1BE049534();
            v99 = v100;
          }

          sub_1BD0DE53C(v97, &qword_1EBD498C8, &unk_1BE0DF580);
          swift_endAccess();
          v101 = *(v0 + 576);
          v102 = *(v0 + 560);
          sub_1BD6B06D0(v98, v99, v88, v147);
          v103 = [v83 transactionId];
          v104 = sub_1BE052434();
          v106 = v105;

          sub_1BD6B07D8(v149, v104, v106);
          v63 = v142;
          v150(v101, v102);
          v3 = v158;
          v56 = v146;
          v60 = v143;
          goto LABEL_16;
        }
      }

      else
      {
        v64 = *v63;
      }

      v64(*(v0 + 584), *(v0 + 560));
LABEL_16:
      (*v154)(*(v0 + 544), *(v0 + 528));
      v62 += v156;
      if (!--v55)
      {
        v107 = *(v0 + 872);
        *(v0 + 832), v65, v66, v67, v68, v69, v70, v71;
        v107, v108, v109, v110, v111, v112, v113, v114;
        v155 = v159;
        v157 = v161;
        v152 = v3;
        goto LABEL_35;
      }
    }
  }

  v157 = v54;
  v57, v47, v48, v49, v50, v51, v52, v53;
  v56, v115, v116, v117, v118, v119, v120, v121;
  v152 = MEMORY[0x1E69E7CC0];
  v155 = v46;
LABEL_35:
  v122 = *(v0 + 784);
  v123 = *(v0 + 776);
  v124 = *(v0 + 768);
  v125 = *(v0 + 760);
  v126 = *(v0 + 728);
  v127 = *(v0 + 720);
  v128 = *(v0 + 712);
  (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
  v129 = *(v124 + 8);
  v129(v123, v125);
  *(v0 + 216), v130, v131, v132, v133, v134, v135, v136;
  (*(v127 + 8))(v126, v128);
  v129(v122, v125);

  v137 = *(v0 + 8);

  return v137(v152, v155, v157);
}

uint64_t sub_1BD52C848()
{
  v2 = *v1;
  v2[115] = v0;

  v10 = v2[113];
  if (v0)
  {
    v11 = v2[109];
    v12 = v2[104];
    v10, v3, v4, v5, v6, v7, v8, v9;
    v12, v13, v14, v15, v16, v17, v18, v19;
    v11, v20, v21, v22, v23, v24, v25, v26;
    v27 = sub_1BD52EC64;
  }

  else
  {
    v10, v3, v4, v5, v6, v7, v8, v9;
    v27 = sub_1BD52C998;
  }

  return MEMORY[0x1EEE6DFA0](v27, 0, 0);
}

uint64_t sub_1BD52C998()
{
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[59];
  v4 = sub_1BE049C14();
  v0[116] = v4;
  v5 = (*(v1 + 8))(v2, v3);
  v7 = *(v4 + 16);
  v0[117] = v7;
  v220 = v7;
  v222 = v4;
  v224 = v0;
  if (v7)
  {
    v8 = 0;
    v9 = v0[55];
    v216 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v213 = v0[71];
    v218 = v9;
    v211 = (v9 + 40);
    do
    {
      if (v8 >= v222[2])
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        return MEMORY[0x1EEDC14C8](v5, v6);
      }

      v19 = v0[111];
      v20 = v0[75];
      v22 = v0[57];
      v21 = v0[58];
      v23 = v0[54];
      v24 = v0[34];
      v227 = *(v218 + 72);
      (*(v218 + 16))(v21, v216 + v227 * v8, v23);
      sub_1BE049584();
      swift_beginAccess();
      v25 = *(v218 + 32);
      v25(v22, v21, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(v24 + v19);
      *(v24 + v19) = 0x8000000000000000;
      v5 = sub_1BD14951C(v20);
      v28 = v27[2];
      v29 = (v6 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_50;
      }

      v32 = v6;
      if (v27[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = v5;
          sub_1BD507498();
          v5 = v42;
        }
      }

      else
      {
        v33 = v0[75];
        sub_1BD502884(v31, isUniquelyReferenced_nonNull_native);
        v5 = sub_1BD14951C(v33);
        if ((v32 & 1) != (v34 & 1))
        {

          return sub_1BE053C14();
        }
      }

      v35 = v0[75];
      v36 = v0[70];
      v37 = v0[57];
      v38 = v0[54];
      if (v32)
      {
        (*v211)(v27[7] + v5 * v227, v0[57], v0[54]);
        (*(v213 + 8))(v35, v36);
      }

      else
      {
        v27[(v5 >> 6) + 8] |= 1 << v5;
        v39 = v5;
        (*(v213 + 16))(v27[6] + *(v213 + 72) * v5, v35, v36);
        v25(v27[7] + v39 * v227, v37, v38);
        v5 = (*(v213 + 8))(v35, v36);
        v40 = v27[2];
        v30 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v30)
        {
          goto LABEL_51;
        }

        v27[2] = v41;
        v0 = v224;
      }

      ++v8;
      v16 = v0[111];
      v17 = v0[34];
      v18 = *(v17 + v16);
      *(v17 + v16) = v27;
      v18, v6, v10, v11, v12, v13, v14, v15;
      v5 = swift_endAccess();
    }

    while (v220 != v8);
  }

  v43 = v0[34];
  v44 = *(v43 + v0[111]);
  v45 = sub_1BE048C84();
  sub_1BD529194(v45);
  v47 = v46;
  v44, v48, v49, v50, v51, v52, v53, v54;
  v55 = sub_1BD537298(v47);
  v47, v56, v57, v58, v59, v60, v61, v62;
  v0[29] = v55;
  v63 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accountIDToInstitution;
  v0[118] = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accountIDToInstitution;
  swift_beginAccess();
  v64 = *(v43 + v63);
  v65 = sub_1BE048C84();
  sub_1BD529554(v65, v66, v67, v68, v69, v70, v71, v72);
  v74 = v73;
  v64, v75, v76, v77, v78, v79, v80, v81;
  sub_1BD530B30(v74);
  v74, v82, v83, v84, v85, v86, v87, v88;
  if (!*(v0[29] + 16))
  {
    (*(v0[64] + 8))(v0[65], v0[63]);
    v222, v94, v95, v96, v97, v98, v99, v100;
    v0[29], v101, v102, v103, v104, v105, v106, v107;

    v108 = v0[104];
    v109 = MEMORY[0x1E69E7CC0];
    v230 = MEMORY[0x1E69E7CC0];
    v110 = sub_1BD1AB78C(MEMORY[0x1E69E7CC0]);
    v231 = v110;
    v118 = sub_1BD1AD454(v109);
    v232 = v118;
    v119 = *(v108 + 16);
    v120 = v0[109];
    v121 = v0[104];
    if (!v119)
    {
      v229 = v118;
      v121, v111, v112, v113, v114, v115, v116, v117;
      v120, v181, v182, v183, v184, v185, v186, v187;
      v221 = MEMORY[0x1E69E7CC0];
      v226 = v110;
LABEL_46:
      v188 = v0[98];
      v189 = v0[97];
      v190 = v0[96];
      v191 = v0[95];
      v192 = v0[91];
      v193 = v0[90];
      v194 = v0[89];
      (*(v0[87] + 8))(v0[88], v0[86]);
      v195 = *(v190 + 8);
      v195(v189, v191);
      v0[27], v196, v197, v198, v199, v200, v201, v202;
      (*(v193 + 8))(v192, v194);
      v195(v188, v191);

      v203 = v0[1];

      return v203(v221, v226, v229);
    }

    v122 = v0[67];
    v123 = v0[55];
    v209 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accountIDToInstitution;
    v210 = v0[34];
    v125 = *(v122 + 16);
    v122 += 16;
    v124 = v125;
    v126 = &v121[(*(v122 + 64) + 32) & ~*(v122 + 64)];
    v228 = *(v122 + 56);
    v127 = (v0[71] + 8);
    v204 = v123;
    v205 = (v123 + 48);
    v206 = (v123 + 56);
    v225 = (v122 - 8);
    v128 = MEMORY[0x1E69E7CC0];
    v212 = v0[109];
    v207 = v127;
    v208 = v125;
    while (1)
    {
      v124(v0[68], v126, v0[66]);
      sub_1BE049A14();
      if (v120[2])
      {
        v137 = sub_1BD14951C(v0[73]);
        v129 = *v127;
        if (v138)
        {
          v139 = v0[73];
          v140 = v0[70];
          v141 = *v127;
          v223 = *(v120[7] + 8 * v137);
          v219 = v141;
          v141(v139, v140);
          sub_1BE049A64();
          swift_beginAccess();
          v142 = *(v210 + v209);
          if (*(v142 + 16))
          {
            v143 = sub_1BD14951C(v0[72]);
            v144 = &selRef_provisioningCardIconURL;
            if (v145)
            {
              v146 = *(*(v142 + 56) + 8 * v143);
              v147 = v146;
            }

            else
            {
              v146 = 0;
            }
          }

          else
          {
            v146 = 0;
            v144 = &selRef_provisioningCardIconURL;
          }

          swift_endAccess();
          v148 = [objc_opt_self() transactionFromFKPaymentTransaction:v223 institution:v146];
          MEMORY[0x1BFB3F7A0]();
          if (*((v230 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BE052774();
          }

          v149 = v0[111];
          v150 = v0[34];
          v217 = v148;
          sub_1BE0527C4();
          v151 = [v223 v144[2]];
          v152 = sub_1BE052434();
          v214 = v153;
          v215 = v152;

          swift_beginAccess();
          v154 = *(v150 + v149);
          if (*(v154 + 16) && (v155 = sub_1BD14951C(v0[72]), (v156 & 1) != 0))
          {
            (*(v204 + 16))(v0[35], *(v154 + 56) + *(v204 + 72) * v155, v0[54]);
            v157 = 0;
          }

          else
          {
            v157 = 1;
          }

          v158 = v224[54];
          v159 = v224[35];
          (*v206)(v159, v157, 1, v158);
          v160 = (*v205)(v159, 1, v158);
          v161 = v224[35];
          v162 = v146;
          if (v160)
          {
            v163 = 0;
            v164 = 0;
          }

          else
          {
            v163 = sub_1BE049534();
            v164 = v165;
          }

          sub_1BD0DE53C(v161, &qword_1EBD498C8, &unk_1BE0DF580);
          v0 = v224;
          swift_endAccess();
          v166 = v224[72];
          v167 = v224[70];
          sub_1BD6B06D0(v163, v164, v215, v214);
          v168 = [v223 v144[2]];
          v169 = sub_1BE052434();
          v171 = v170;

          sub_1BD6B07D8(v162, v169, v171);
          v127 = v207;
          v219(v166, v167);
          v128 = v230;
          v120 = v212;
          v124 = v208;
          goto LABEL_23;
        }
      }

      else
      {
        v129 = *v127;
      }

      v0 = v224;
      v129(v224[73], v224[70]);
LABEL_23:
      (*v225)(v0[68], v0[66]);
      v126 += v228;
      if (!--v119)
      {
        v173 = v0[109];
        v0[104], v130, v131, v132, v133, v134, v135, v136;
        v173, v174, v175, v176, v177, v178, v179, v180;
        v226 = v231;
        v229 = v232;
        v221 = v128;
        goto LABEL_46;
      }
    }
  }

  v89 = v0[50];
  v90 = v0[41];
  v91 = swift_task_alloc();
  v0[119] = v91;
  *(v91 + 16) = v0 + 29;
  v0[30] = v90;
  sub_1BE04B444();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E00, &unk_1BE0B7E60);
  (*(*(v92 - 8) + 56))(v89, 0, 1, v92);
  sub_1BE049CB4();
  v0[120] = sub_1BE0490B4();
  v93 = swift_task_alloc();
  v0[121] = v93;
  *v93 = v0;
  v93[1] = sub_1BD52D608;
  v6 = v0[53];
  v5 = v0[49];

  return MEMORY[0x1EEDC14C8](v5, v6);
}

uint64_t sub_1BD52D608()
{
  v2 = *v1;
  v2[122] = v0;

  v10 = v2[120];
  if (v0)
  {
    v11 = v2[116];
    v12 = v2[109];
    v13 = v2[104];
    v10, v3, v4, v5, v6, v7, v8, v9;
    v13, v14, v15, v16, v17, v18, v19, v20;
    v12, v21, v22, v23, v24, v25, v26, v27;
    v11, v28, v29, v30, v31, v32, v33, v34;
    v35 = sub_1BD52EF60;
  }

  else
  {
    v10, v3, v4, v5, v6, v7, v8, v9;
    v35 = sub_1BD52D764;
  }

  return MEMORY[0x1EEE6DFA0](v35, 0, 0);
}

unint64_t sub_1BD52D764(uint64_t a1)
{
  v3 = *(v1 + 384);
  v2 = *(v1 + 392);
  v4 = *(v1 + 376);
  v5 = sub_1BE049D34();
  (*(v3 + 8))(v2, v4);
  result = sub_1BD1AD268(MEMORY[0x1E69E7CC0]);
  v14 = result;
  v270 = v5[2];
  if (!v270)
  {
LABEL_15:
    v46 = v14;
    v47 = *(v1 + 936);
    v5, v7, v8, v9, v10, v11, v12, v13;
    if (v47)
    {
      v55 = 0;
      v56 = *(v1 + 440);
      v57 = *(v56 + 16);
      v56 += 16;
      v266 = v57;
      v58 = *(v1 + 336);
      v59 = *(v1 + 928) + ((*(v56 + 64) + 32) & ~*(v56 + 64));
      v261 = (v56 - 8);
      v263 = (*(v1 + 312) + 8);
      v258 = (v58 + 56);
      v250 = (v58 + 16);
      v255 = (v58 + 48);
      v246 = (v58 + 8);
      v248 = (v58 + 32);
      v242 = v58;
      v244 = *(v1 + 568);
      v252 = *(v56 + 56);
      v254 = (v244 + 8);
      do
      {
        v271 = v59;
        v274 = v55;
        v61 = *(v1 + 448);
        v62 = *(v1 + 432);
        v63 = *(v1 + 320);
        v64 = *(v1 + 304);
        v266(v61, v59, v62);
        sub_1BE049524();
        v65 = sub_1BE049E24();
        v67 = v66;
        (*v263)(v63, v64);
        sub_1BE049584();
        (*v261)(v61, v62);
        if (v46[2])
        {
          v75 = sub_1BD148F70(v65, v67);
          v77 = v76;
          v67, v76, v78, v79, v80, v81, v82, v83;
          if (v77)
          {
            (*(v242 + 16))(*(v1 + 296), v46[7] + *(v242 + 72) * v75, *(v1 + 328));
            v84 = 0;
            goto LABEL_24;
          }
        }

        else
        {
          v67, v68, v69, v70, v71, v72, v73, v74;
        }

        v84 = 1;
LABEL_24:
        v85 = *(v1 + 328);
        v87 = *(v1 + 288);
        v86 = *(v1 + 296);
        (*v258)(v86, v84, 1, v85);
        sub_1BD0DE19C(v86, v87, &qword_1EBD498D0, &unk_1BE0E8DD0);
        if ((*v255)(v87, 1, v85) == 1)
        {
          sub_1BD0DE53C(*(v1 + 296), &qword_1EBD498D0, &unk_1BE0E8DD0);
          swift_beginAccess();
LABEL_32:
          v106 = sub_1BD14951C(*(v1 + 592));
          if (v107)
          {
            v108 = v106;
            v109 = *(v1 + 944);
            v110 = *(v1 + 272);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v112 = *(v110 + v109);
            *(v110 + v109) = 0x8000000000000000;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1BD5071FC();
            }

            v113 = *(v1 + 944);
            v114 = *(v1 + 592);
            v115 = *(v1 + 560);
            v116 = *(v1 + 272);
            v117 = *(v244 + 8);
            v117(*(v112 + 48) + *(v244 + 72) * v108, v115);

            sub_1BD5056BC(v108, v112);
            v117(v114, v115);
            *(v116 + v113) = v112;
          }

          else
          {
            (*v254)(*(v1 + 592), *(v1 + 560));
          }

          goto LABEL_18;
        }

        v89 = *(v1 + 344);
        v88 = *(v1 + 352);
        v90 = *(v1 + 328);
        v91 = *(v1 + 296);
        (*v248)(v88, *(v1 + 288), v90);
        sub_1BD0E5E8C(0, &qword_1EBD498E8, 0x1E6967DF8);
        (*v250)(v89, v88, v90);
        v92 = sub_1BE052BF4();
        (*v246)(v88, v90);
        sub_1BD0DE53C(v91, &qword_1EBD498D0, &unk_1BE0E8DD0);
        swift_beginAccess();
        if (!v92)
        {
          goto LABEL_32;
        }

        v93 = *(v1 + 944);
        v94 = *(v1 + 592);
        v95 = *(v1 + 272);
        v96 = swift_isUniquelyReferenced_nonNull_native();
        v97 = *(v95 + v93);
        *(v95 + v93) = 0x8000000000000000;
        v99 = sub_1BD14951C(v94);
        v100 = v97[2];
        v101 = (v98 & 1) == 0;
        result = v100 + v101;
        if (__OFADD__(v100, v101))
        {
          goto LABEL_75;
        }

        v102 = v98;
        if (v97[3] >= result)
        {
          if (v96)
          {
            if ((v98 & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          else
          {
            sub_1BD5071FC();
            if ((v102 & 1) == 0)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          v103 = *(v1 + 592);
          sub_1BD502480(result, v96);
          v104 = sub_1BD14951C(v103);
          if ((v102 & 1) != (v105 & 1))
          {
            goto LABEL_69;
          }

          v99 = v104;
          if ((v102 & 1) == 0)
          {
LABEL_40:
            v120 = *(v1 + 592);
            v121 = *(v1 + 560);
            v97[(v99 >> 6) + 8] |= 1 << v99;
            result = (*(v244 + 16))(v97[6] + *(v244 + 72) * v99, v120, v121);
            *(v97[7] + 8 * v99) = v92;
            v122 = v97[2];
            v37 = __OFADD__(v122, 1);
            v123 = v122 + 1;
            if (v37)
            {
              goto LABEL_76;
            }

            v97[2] = v123;
            goto LABEL_42;
          }
        }

        v118 = v97[7];
        v119 = *(v118 + 8 * v99);
        *(v118 + 8 * v99) = v92;

LABEL_42:
        v124 = *(v1 + 944);
        v125 = *(v1 + 272);
        (*v254)(*(v1 + 592), *(v1 + 560));
        *(v125 + v124) = v97;
LABEL_18:
        v55 = v274 + 1;
        v60 = *(v1 + 936);
        swift_endAccess();
        v59 = v271 + v252;
      }

      while (v274 + 1 != v60);
    }

    v126 = *(v1 + 520);
    v127 = *(v1 + 504);
    v128 = *(v1 + 512);
    v130 = *(v1 + 416);
    v129 = *(v1 + 424);
    v131 = *(v1 + 408);
    *(v1 + 928), v48, v49, v50, v51, v52, v53, v54;
    (*(v130 + 8))(v129, v131);
    (*(v128 + 8))(v126, v127);
    v46, v132, v133, v134, v135, v136, v137, v138;

    *(v1 + 232), v139, v140, v141, v142, v143, v144, v145;

    v146 = *(v1 + 832);
    v147 = MEMORY[0x1E69E7CC0];
    v277 = MEMORY[0x1E69E7CC0];
    v148 = sub_1BD1AB78C(MEMORY[0x1E69E7CC0]);
    v278 = v148;
    v156 = sub_1BD1AD454(v147);
    v280 = v156;
    v157 = *(v146 + 16);
    v158 = *(v1 + 872);
    v159 = *(v1 + 832);
    if (!v157)
    {
      v276 = v156;
      v159, v149, v150, v151, v152, v153, v154, v155;
      v158, v218, v219, v220, v221, v222, v223, v224;
      v269 = MEMORY[0x1E69E7CC0];
      v273 = v148;
LABEL_66:
      v225 = *(v1 + 784);
      v226 = *(v1 + 776);
      v227 = *(v1 + 768);
      v228 = *(v1 + 760);
      v229 = *(v1 + 728);
      v230 = *(v1 + 720);
      v231 = *(v1 + 712);
      (*(*(v1 + 696) + 8))(*(v1 + 704), *(v1 + 688));
      v232 = *(v227 + 8);
      v232(v226, v228);
      *(v1 + 216), v233, v234, v235, v236, v237, v238, v239;
      (*(v230 + 8))(v229, v231);
      v232(v225, v228);

      v240 = *(v1 + 8);

      return v240(v269, v273, v276);
    }

    v160 = *(v1 + 536);
    v161 = *(v1 + 440);
    v253 = *(v1 + 272);
    v251 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accountIDToInstitution;
    v163 = *(v160 + 16);
    v160 += 16;
    v162 = v163;
    v164 = &v159[(*(v160 + 64) + 32) & ~*(v160 + 64)];
    v275 = *(v160 + 56);
    v165 = (*(v1 + 568) + 8);
    v241 = v161;
    v243 = (v161 + 48);
    v245 = (v161 + 56);
    v272 = (v160 - 8);
    v166 = MEMORY[0x1E69E7CC0];
    v256 = *(v1 + 872);
    v249 = v163;
    v247 = v165;
    while (1)
    {
      v162(*(v1 + 544), v164, *(v1 + 528));
      sub_1BE049A14();
      if (v158[2])
      {
        v175 = sub_1BD14951C(*(v1 + 584));
        v167 = *v165;
        if (v176)
        {
          v177 = *(v1 + 584);
          v178 = *(v1 + 560);
          v179 = *v165;
          v180 = *(v158[7] + 8 * v175);
          v267 = v179;
          v179(v177, v178);
          sub_1BE049A64();
          swift_beginAccess();
          v181 = *(v253 + v251);
          if (*(v181 + 16) && (v182 = sub_1BD14951C(*(v1 + 576)), (v183 & 1) != 0))
          {
            v184 = *(*(v181 + 56) + 8 * v182);
            v185 = v184;
          }

          else
          {
            v184 = 0;
          }

          v186 = v180;
          swift_endAccess();
          v264 = v184;
          v187 = [objc_opt_self() transactionFromFKPaymentTransaction:v180 institution:v184];
          MEMORY[0x1BFB3F7A0]();
          if (*((v277 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v277 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BE052774();
          }

          v188 = *(v1 + 888);
          v189 = *(v1 + 272);
          v262 = v187;
          sub_1BE0527C4();
          v190 = [v180 transactionId];
          v191 = sub_1BE052434();
          v259 = v192;

          swift_beginAccess();
          v193 = *(v189 + v188);
          if (*(v193 + 16) && (v194 = sub_1BD14951C(*(v1 + 576)), (v195 & 1) != 0))
          {
            (*(v241 + 16))(*(v1 + 280), *(v193 + 56) + *(v241 + 72) * v194, *(v1 + 432));
            v196 = 0;
          }

          else
          {
            v196 = 1;
          }

          v197 = *(v1 + 432);
          v198 = *(v1 + 280);
          (*v245)(v198, v196, 1, v197);
          v199 = (*v243)(v198, 1, v197);
          v200 = *(v1 + 280);
          if (v199)
          {
            v201 = 0;
            v202 = 0;
          }

          else
          {
            v201 = sub_1BE049534();
            v202 = v203;
          }

          sub_1BD0DE53C(v200, &qword_1EBD498C8, &unk_1BE0DF580);
          swift_endAccess();
          v204 = *(v1 + 576);
          v205 = *(v1 + 560);
          sub_1BD6B06D0(v201, v202, v191, v259);
          v206 = [v186 transactionId];
          v207 = sub_1BE052434();
          v209 = v208;

          sub_1BD6B07D8(v264, v207, v209);
          v165 = v247;
          v267(v204, v205);
          v166 = v277;
          v158 = v256;
          v162 = v249;
          goto LABEL_47;
        }
      }

      else
      {
        v167 = *v165;
      }

      v167(*(v1 + 584), *(v1 + 560));
LABEL_47:
      (*v272)(*(v1 + 544), *(v1 + 528));
      v164 += v275;
      if (!--v157)
      {
        v210 = *(v1 + 872);
        *(v1 + 832), v168, v169, v170, v171, v172, v173, v174;
        v210, v211, v212, v213, v214, v215, v216, v217;
        v273 = v278;
        v276 = v280;
        v269 = v166;
        goto LABEL_66;
      }
    }
  }

  v15 = 0;
  v16 = *(v1 + 336);
  v265 = v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v268 = v16;
  v260 = v5;
  v257 = (v16 + 40);
  while (v15 < v5[2])
  {
    v18 = *(v1 + 360);
    v19 = *(v1 + 368);
    v20 = *(v1 + 328);
    v21 = *(v268 + 72);
    (*(v268 + 16))(v19, &v265[v21 * v15], v20);
    v22 = sub_1BE049144();
    v23 = v14;
    v25 = v24;
    v26 = *(v268 + 32);
    v26(v18, v19, v20);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v279 = v23;
    result = sub_1BD148F70(v22, v25);
    v35 = v23[2];
    v36 = (v28 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_73;
    }

    v39 = v28;
    if (v23[3] >= v38)
    {
      if ((v27 & 1) == 0)
      {
        v45 = result;
        sub_1BD507470();
        result = v45;
      }
    }

    else
    {
      sub_1BD50285C(v38, v27);
      result = sub_1BD148F70(v22, v25);
      if ((v39 & 1) != (v28 & 1))
      {
LABEL_69:

        return sub_1BE053C14();
      }
    }

    v40 = *(v1 + 360);
    v41 = *(v1 + 328);
    if (v39)
    {
      v17 = result;
      v25, v28, v29, v30, v31, v32, v33, v34;
      v14 = v279;
      result = (*v257)(v279[7] + v17 * v21, v40, v41);
    }

    else
    {
      v279[(result >> 6) + 8] |= 1 << result;
      v42 = (v279[6] + 16 * result);
      *v42 = v22;
      v42[1] = v25;
      v14 = v279;
      result = (v26)(v279[7] + result * v21, v40, v41);
      v43 = v279[2];
      v37 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v37)
      {
        goto LABEL_74;
      }

      v279[2] = v44;
    }

    ++v15;
    v5 = v260;
    if (v270 == v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_1BD52E6CC()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
  v4 = *(v2 + 8);
  v4(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16), v5, v6, v7, v8, v9, v10, v11);
  v12 = *(v0 + 784);
  v13 = *(v0 + 760);
  (*(*(v0 + 720) + 8))(*(v0 + 728), *(v0 + 712));
  v4(v12, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1BD52E99C()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  (*(v0[87] + 8))(v0[88], v0[86]);
  v4 = *(v2 + 8);
  v4(v1, v3);
  v5 = v0[98];
  v6 = v0[95];
  (*(v0[90] + 8))(v0[91], v0[89]);
  v4(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BD52EC64()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  (*(*(v0 + 512) + 8))(*(v0 + 520), *(v0 + 504));
  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 8);
  v7(v1, v3);
  *(v0 + 216), v8, v9, v10, v11, v12, v13, v14;

  v15 = *(v0 + 784);
  v16 = *(v0 + 760);
  (*(*(v0 + 720) + 8))(*(v0 + 728), *(v0 + 712));
  v7(v15, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1BD52EF60()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 520);
  v9 = *(v0 + 504);
  v8 = *(v0 + 512);
  (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v10 = *(v2 + 8);
  v10(v1, v3);
  *(v0 + 232), v11, v12, v13, v14, v15, v16, v17;
  *(v0 + 216), v18, v19, v20, v21, v22, v23, v24;

  v25 = *(v0 + 784);
  v26 = *(v0 + 760);
  (*(*(v0 + 720) + 8))(*(v0 + 728), *(v0 + 712));
  v10(v25, v26);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1BD52F294@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v130 = a3;
  v131 = a4;
  v143 = a2;
  v138 = a5;
  v139 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E08, &unk_1BE109160);
  v6 = *(v5 - 8);
  v136 = v5;
  v137 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v127 = &v98 - v7;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A08, &qword_1BE0DF8C0);
  v124 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v118 = &v98 - v8;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A10, &qword_1BE0DF8C8);
  v129 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v120 = &v98 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A18, &qword_1BE0DF8D0);
  v11 = *(v10 - 8);
  v132 = v10;
  v133 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v98 - v12;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A20, &qword_1BE0DF8D8);
  v128 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v144 = &v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A28, &qword_1BE0DF8E0);
  v15 = *(v14 - 8);
  v134 = v14;
  v135 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v122 = &v98 - v16;
  v141 = sub_1BE04A7A4();
  v17 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A30, &qword_1BE0DF8E8);
  v146 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v20 = &v98 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8, &qword_1BE0DF8F0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v98 - v23;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A38, &qword_1BE0DF8F8);
  v145 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v26 = &v98 - v25;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A40, &qword_1BE0DF900);
  v119 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v98 - v27;
  v139 = *v139;
  v104 = sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8, &qword_1BE0DF8F0, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  v103 = v21;
  sub_1BE04A724();
  KeyPath, v29, v30, v31, v32, v33, v34, v35;
  v36 = *(v22 + 8);
  v106 = v22 + 8;
  v107 = v36;
  v36(v24, v21);
  v105 = sub_1BE04AF64();
  v37 = v20;
  sub_1BE04A7B4();
  v115 = *MEMORY[0x1E6968C40];
  v38 = *(v17 + 104);
  v113 = v17 + 104;
  v114 = v38;
  v39 = v140;
  v40 = v141;
  v38(v140);
  v109 = MEMORY[0x1E6968D58];
  v101 = sub_1BD0DE4F4(&qword_1EBD49A48, &qword_1EBD49A38, &qword_1BE0DF8F8, MEMORY[0x1E6968D58]);
  v112 = MEMORY[0x1E6968D20];
  v100 = sub_1BD0DE4F4(&qword_1EBD49A50, &qword_1EBD49A30, &qword_1BE0DF8E8, MEMORY[0x1E6968D20]);
  v102 = MEMORY[0x1E6969530];
  sub_1BD538AA4(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v41 = v39;
  v42 = v108;
  v43 = v142;
  sub_1BE04A774();
  v44 = *(v17 + 8);
  v110 = v17 + 8;
  v111 = v44;
  v44(v41, v40);
  v45 = *(v146 + 8);
  v146 += 8;
  v99 = v45;
  v45(v37, v43);
  v46 = *(v145 + 8);
  v145 += 8;
  v98 = v46;
  v46(v26, v42);
  v47 = v103;
  sub_1BE04A7C4();
  v48 = swift_getKeyPath();
  sub_1BE04A724();
  v48, v49, v50, v51, v52, v53, v54, v55;
  v56 = v107;
  v107(v24, v47);
  sub_1BE04A7B4();
  sub_1BD538AA4(&qword_1EBD3E460, v102, MEMORY[0x1E6969550]);
  v57 = v142;
  sub_1BE04A714();
  v99(v37, v57);
  v98(v26, v42);
  sub_1BE04A7C4();
  v58 = swift_getKeyPath();
  v59 = v118;
  sub_1BE04A724();
  v58, v60, v61, v62, v63, v64, v65, v66;
  v56(v24, v47);
  v67 = swift_getKeyPath();
  v68 = v109;
  sub_1BD0DE4F4(&qword_1EBD49A58, &qword_1EBD49A08, &qword_1BE0DF8C0, v109);
  v69 = v120;
  v70 = v59;
  v71 = v123;
  sub_1BE04A724();
  v67, v72, v73, v74, v75, v76, v77, v78;
  (*(v124 + 8))(v70, v71);
  v147 = v130;
  v148 = v131;
  v79 = v127;
  sub_1BE04A7B4();
  v81 = v140;
  v80 = v141;
  v114(v140, v115, v141);
  sub_1BD0DE4F4(&qword_1EBD49A60, &qword_1EBD49A10, &qword_1BE0DF8C8, v68);
  sub_1BD0DE4F4(&qword_1EBD38E58, &qword_1EBD38E08, &unk_1BE109160, v112);
  v82 = v121;
  v83 = v79;
  v84 = v125;
  v85 = v136;
  sub_1BE04A774();
  v111(v81, v80);
  (*(v137 + 8))(v83, v85);
  (*(v129 + 8))(v69, v84);
  sub_1BD0DE4F4(&qword_1EBD49A68, &qword_1EBD49A20, &qword_1BE0DF8D8, MEMORY[0x1E6968D08]);
  v86 = MEMORY[0x1E6968AF0];
  sub_1BD0DE4F4(&qword_1EBD49A70, &qword_1EBD49A18, &qword_1BE0DF8D0, MEMORY[0x1E6968AF0]);
  v87 = v122;
  v88 = v144;
  v89 = v126;
  v90 = v132;
  sub_1BE04A784();
  (*(v133 + 8))(v82, v90);
  (*(v128 + 8))(v88, v89);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A78, &qword_1BE0DF968);
  v92 = v138;
  v138[3] = v91;
  v92[4] = sub_1BD538E6C();
  __swift_allocate_boxed_opaque_existential_1(v92);
  sub_1BD0DE4F4(&qword_1EBD49AD8, &qword_1EBD49A40, &qword_1BE0DF900, v86);
  sub_1BD0DE4F4(&qword_1EBD49AE0, &qword_1EBD49A28, &qword_1BE0DF8E0, MEMORY[0x1E6968B68]);
  v93 = v116;
  v94 = v87;
  v95 = v117;
  v96 = v134;
  sub_1BE04A794();
  (*(v135 + 8))(v94, v96);
  return (*(v119 + 8))(v93, v95);
}

uint64_t sub_1BD5300B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1BD530188@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE049C34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD5301F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v80 = a3;
  v72 = a2;
  v83 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49B40, &qword_1BE0DFA08);
  v6 = *(v5 - 8);
  v81 = v5;
  v82 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49B48, &unk_1BE0DFA10);
  v9 = *(v8 - 8);
  v84 = v8;
  v85 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE0, &unk_1BE0B7F40);
  v12 = *(v11 - 8);
  v74 = v11;
  v75 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v61 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7F0, &unk_1BE0DFA20);
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8, &qword_1BE0DF8F0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7F8, &qword_1BE0C6770);
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v21 = &v61 - v20;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F800, &qword_1BE0DFA30);
  v71 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v61 = &v61 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49B50, &qword_1BE0DFA38);
  v24 = *(v23 - 8);
  v76 = v23;
  v77 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v86 = &v61 - v25;
  v64 = *a1;
  v26 = sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8, &qword_1BE0DF8F0, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v28, v29, v30, v31, v32, v33, v34;
  v63 = *(v17 + 8);
  v63(v19, v16);
  v65 = v17 + 8;
  sub_1BE0498F4();
  v35 = v15;
  sub_1BE04A7B4();
  v62 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD3F890, &qword_1EBD3F7F8, &qword_1BE0C6770, MEMORY[0x1E6968D58]);
  v72 = MEMORY[0x1E6968D20];
  sub_1BD0DE4F4(&qword_1EBD3F898, &qword_1EBD3F7F0, &unk_1BE0DFA20, MEMORY[0x1E6968D20]);
  sub_1BD538AA4(&qword_1EBD3F8A0, MEMORY[0x1E6967938], MEMORY[0x1E6967948]);
  v36 = v66;
  v37 = v68;
  sub_1BE04A714();
  (*(v70 + 8))(v35, v37);
  (*(v67 + 8))(v21, v36);
  sub_1BE04A7C4();
  v38 = swift_getKeyPath();
  v39 = v73;
  sub_1BE04A724();
  v38, v40, v41, v42, v43, v44, v45, v46;
  v47 = v63;
  v63(v19, v16);
  sub_1BD0DE4F4(&qword_1EBD3F8B0, &qword_1EBD3F800, &qword_1BE0DFA30, MEMORY[0x1E6968D08]);
  sub_1BD0DE4F4(qword_1EBD38F90, &qword_1EBD38EE0, &unk_1BE0B7F40, v62);
  v48 = v61;
  v49 = v39;
  v50 = v69;
  v51 = v74;
  sub_1BE04A784();
  (*(v75 + 8))(v49, v51);
  (*(v71 + 8))(v48, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
  v52 = v78;
  sub_1BE04A7B4();
  sub_1BE04A7C4();
  v88 = v16;
  v89 = v19;
  sub_1BD0DE4F4(&qword_1EBD49B58, &qword_1EBD49B40, &qword_1BE0DFA08, v72);
  v87 = v26;
  v53 = v79;
  v54 = v81;
  sub_1BE04A764();
  (*(v82 + 8))(v52, v54);
  v47(v19, v16);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49B60, &qword_1BE0DFAA0);
  v56 = v83;
  v83[3] = v55;
  v56[4] = sub_1BD5394CC();
  __swift_allocate_boxed_opaque_existential_1(v56);
  sub_1BD0DE4F4(&qword_1EBD49B98, &qword_1EBD49B50, &qword_1BE0DFA38, MEMORY[0x1E6968B68]);
  sub_1BD0DE4F4(&qword_1EBD49BA0, &qword_1EBD49B48, &unk_1BE0DFA10, MEMORY[0x1E6968AC8]);
  v57 = v86;
  v58 = v76;
  v59 = v84;
  sub_1BE04A784();
  (*(v85 + 8))(v53, v59);
  return (*(v77 + 8))(v57, v58);
}

void sub_1BD530B30(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = (a1 + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;
        sub_1BE048C84();
        sub_1BD535BA0(v5, v4);
        v7 = v6;
        v4, v6, v8, v9, v10, v11, v12, v13;
        v7, v14, v15, v16, v17, v18, v19, v20;
        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t sub_1BD530BAC@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70, &unk_1BE0F4300);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E78, &qword_1BE0B7ED0);
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF8, &qword_1BE0B7F58);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v30 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08, &qword_1BE0DF9C0);
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70, &unk_1BE0F4300, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49B30, &unk_1BE0DF9F8);
  a3[4] = sub_1BD539440();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1BD0DE4F4(&qword_1EBD38F18, &qword_1EBD38EF8, &qword_1BE0B7F58, MEMORY[0x1E6968D20]);
  sub_1BD0DE4F4(&qword_1EBD38ED0, &qword_1EBD38E78, &qword_1BE0B7ED0, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD38F28, &qword_1EBD38F08, &qword_1BE0DF9C0, MEMORY[0x1E69E6508]);
  sub_1BD538AA4(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v25 = v28;
  sub_1BE04A754();
  (*(v29 + 8))(v12, v25);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1BD530F94@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E10, &unk_1BE0B7E70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E18, &qword_1BE109170);
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49AE8, &qword_1BE0DF970);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v30 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49AF0, &qword_1BE0DF978);
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD38E20, &qword_1EBD38E10, &unk_1BE0B7E70, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49AF8, &unk_1BE0DF9B0);
  a3[4] = sub_1BD539274();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1BD0DE4F4(&qword_1EBD49B20, &qword_1EBD49AE8, &qword_1BE0DF970, MEMORY[0x1E6968D20]);
  sub_1BD0DE4F4(&qword_1EBD38E50, &qword_1EBD38E18, &qword_1BE109170, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD49B28, &qword_1EBD49AF0, &qword_1BE0DF978, MEMORY[0x1E69E6508]);
  v25 = v28;
  sub_1BE04A754();
  (*(v29 + 8))(v12, v25);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1BD5314D4(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1BD53159C;

  return PKPagedTransactionListBankConnectFetcher.fetchTransactions(limit:before:)(a1, a2);
}

uint64_t sub_1BD53159C(void *a1, void *a2, void *a3)
{
  v5 = v3;
  v9 = *v4;
  v10 = *(*v4 + 24);
  v11 = *(*v4 + 16);
  v12 = *v4;

  v13 = *(v9 + 32);
  if (v5)
  {
    v14 = sub_1BE04A844();

    (v13)[2](v13, 0, 0, 0, v14);
    _Block_release(v13);
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AB10, 0x1E69B8EA8);
    v15 = sub_1BE052724();
    v16 = sub_1BE052224();
    sub_1BD0E5E8C(0, &qword_1EBD498E8, 0x1E6967DF8);
    v17 = sub_1BE052224();
    (v13)[2](v13, v15, v16, v17, 0);

    _Block_release(v13);
    a1, v18, v19, v20, v21, v22, v23, v24;
    a2, v25, v26, v27, v28, v29, v30, v31;
    a3, v32, v33, v34, v35, v36, v37, v38;
  }

  v39 = *(v12 + 8);

  return v39();
}

id PKPagedTransactionListBankConnectFetcher.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accounts;
  v3 = MEMORY[0x1E69E7CC0];
  *&v0[v2] = sub_1BD1AD564(MEMORY[0x1E69E7CC0]);
  v4 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accountIDToInstitution;
  *&v0[v4] = sub_1BD1AD784(v3);
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

char *sub_1BD531958(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD5324BC(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

void *sub_1BD531978(void *a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD5325D8(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

void *sub_1BD531998(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3C9E8, &qword_1BE0BFC20, MEMORY[0x1E69B8150]);
  *v3 = result;
  return result;
}

char *sub_1BD5319DC(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD532734(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

void *sub_1BD5319FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49978, &qword_1BE0DF778, type metadata accessor for UnavailablePass);
  *v3 = result;
  return result;
}

void *sub_1BD531A40(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49940, &qword_1BE0DF718, type metadata accessor for AvailablePass);
  *v3 = result;
  return result;
}

char *sub_1BD531A84(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD53286C(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

char *sub_1BD531AA4(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD53298C(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

void *sub_1BD531AC4(void *a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD532AB4(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

void *sub_1BD531AE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49998, &qword_1BE0DF7A0, type metadata accessor for IdentityCredential);
  *v3 = result;
  return result;
}

void *sub_1BD531B28(void *a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD532BE8(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

void *sub_1BD531B48(void *a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD532D30(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

void *sub_1BD531B68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CA68, &unk_1BE0BFCA0, MEMORY[0x1E6967A40]);
  *v3 = result;
  return result;
}

void *sub_1BD531BAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CC10, &unk_1BE0BFE50, type metadata accessor for AccountDebugCKTransaction);
  *v3 = result;
  return result;
}

void *sub_1BD531BF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CC18, &unk_1BE0DF6F0, type metadata accessor for AccountDebugCKReward);
  *v3 = result;
  return result;
}

void *sub_1BD531C34(void *a1, const char *a2, void *a3)
{
  result = sub_1BD5340C4(a1, a2, a3, *v3, &qword_1EBD40A40, &qword_1BE0C89A0, &unk_1EBD52590, &qword_1BE0DFAF0);
  *v3 = result;
  return result;
}

void *sub_1BD531C74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CBD8, &qword_1BE0BFE20, MEMORY[0x1E6967788]);
  *v3 = result;
  return result;
}

void *sub_1BD531CB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CBF0, &qword_1BE0BFE30, MEMORY[0x1E6967780]);
  *v3 = result;
  return result;
}

void *sub_1BD531CFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CBD0, &qword_1BE0DFAD0, MEMORY[0x1E6967BE8]);
  *v3 = result;
  return result;
}

void *sub_1BD531D40(void *a1, const char *a2, void *a3)
{
  result = sub_1BD533AE8(a1, a2, a3, *v3, &qword_1EBD499D8, &qword_1BE0DF870, &qword_1EBD499E0, &qword_1BE0DF878);
  *v3 = result;
  return result;
}

void *sub_1BD531D80(void *a1, const char *a2, void *a3)
{
  result = sub_1BD5340C4(a1, a2, a3, *v3, &qword_1EBD49928, &qword_1BE0DF6D8, &qword_1EBD49930, &unk_1BE0DF6E0);
  *v3 = result;
  return result;
}

char *sub_1BD531DC0(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = sub_1BD532FD0(a1, a2, a3, *v8, &qword_1EBD3CB18, &unk_1BE0BFD60, a7, a8);
  *v8 = result;
  return result;
}

char *sub_1BD531DF0(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD532EDC(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

char *sub_1BD531E10(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = sub_1BD532FD0(a1, a2, a3, *v8, &qword_1EBD3CA20, &qword_1BE0BFC58, a7, a8);
  *v8 = result;
  return result;
}

char *sub_1BD531E40(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD5330BC(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

void *sub_1BD531E60(void *a1, const char *a2, void *a3)
{
  result = sub_1BD5340C4(a1, a2, a3, *v3, &qword_1EBD49970, &unk_1BE0DF768, &qword_1EBD45998, &qword_1BE0D4DB0);
  *v3 = result;
  return result;
}

void *sub_1BD531EA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49948, &qword_1BE0DF728, type metadata accessor for FinanceKitTransactionHistoryView.ViewModel.Transaction);
  *v3 = result;
  return result;
}

void *sub_1BD531EE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49950, &qword_1BE0DF730, type metadata accessor for TransactionContext);
  *v3 = result;
  return result;
}

void *sub_1BD531F28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3C910, &qword_1BE0BF5D0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

void *sub_1BD531F6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3C9B8, &qword_1BE0BFBF0, _s31SpendingSummaryDetailsViewModelVMa);
  *v3 = result;
  return result;
}

void *sub_1BD531FB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CAA8, &qword_1BE0BFCE8, type metadata accessor for DeviceViewModel);
  *v3 = result;
  return result;
}

void *sub_1BD531FF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD46290, &qword_1BE0CC120, MEMORY[0x1E69B82B8]);
  *v3 = result;
  return result;
}

void *sub_1BD532038(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49908, &qword_1BE0DF6C8, MEMORY[0x1E69B8138]);
  *v3 = result;
  return result;
}

void *sub_1BD53207C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49960, &qword_1BE0DF748, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
  *v3 = result;
  return result;
}

void *sub_1BD5320C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49968, &unk_1BE0DF750, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
  *v3 = result;
  return result;
}

void *sub_1BD532104(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD499C0, &qword_1BE0DF7C8, type metadata accessor for SEStorageUsageCategory);
  *v3 = result;
  return result;
}

char *sub_1BD532148(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD533440(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

char *sub_1BD532168(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD5331C8(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

char *sub_1BD532188(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD533544(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

void *sub_1BD5321A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49BB0, &qword_1BE0DFAA8, MEMORY[0x1E6967810]);
  *v3 = result;
  return result;
}

char *sub_1BD5321EC(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD53366C(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

void *sub_1BD53220C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD533788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BD53222C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49BF8, &qword_1BE0DFB18, type metadata accessor for AdaptiveHStack.SubviewMeasurement);
  *v3 = result;
  return result;
}

void *sub_1BD532270(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CAB8, &qword_1BE0E6EA0, type metadata accessor for SEStorageUsageGroup);
  *v3 = result;
  return result;
}

void *sub_1BD5322B4(void *a1, const char *a2, void *a3)
{
  result = sub_1BD533AE8(a1, a2, a3, *v3, &qword_1EBD499A0, &qword_1BE0DF7A8, &qword_1EBD499A8, &qword_1BE0DF7B0);
  *v3 = result;
  return result;
}

void *sub_1BD5322F4(void *a1, const char *a2, void *a3)
{
  result = sub_1BD533AE8(a1, a2, a3, *v3, &qword_1EBD499B0, &qword_1BE0DF7B8, &qword_1EBD499B8, &qword_1BE0DF7C0);
  *v3 = result;
  return result;
}

char *sub_1BD532334(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD533C30(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

char *sub_1BD532354(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD533D50(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

void *sub_1BD532374(void *a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD533E5C(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

void *sub_1BD532394(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD3CAE0, &qword_1BE0DF700, type metadata accessor for UnavailablePaymentMethodItem);
  *v3 = result;
  return result;
}

char *sub_1BD5323D8(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_1BD533FB8(a1, a2, a3, *v8, a5, a6, a7, a8);
  *v8 = result;
  return result;
}

void *sub_1BD5323F8(void *a1, const char *a2, void *a3)
{
  result = sub_1BD5340C4(a1, a2, a3, *v3, &qword_1EBD3CA78, &unk_1BE0BFCB0, &unk_1EBD5BB70, &qword_1BE0D4600);
  *v3 = result;
  return result;
}

void *sub_1BD532438(void *a1, const char *a2, void *a3)
{
  result = sub_1BD5340C4(a1, a2, a3, *v3, &qword_1EBD49958, &unk_1BE0DF738, &unk_1EBD40A30, &unk_1BE0C8990);
  *v3 = result;
  return result;
}

void *sub_1BD532478(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BD534248(a1, a2, a3, *v3, &qword_1EBD49BB8, &unk_1BE0DFAB8, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown);
  *v3 = result;
  return result;
}

char *sub_1BD5324BC(char *result, int64_t a2, char a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9F0, &qword_1BE0BFC28);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    v18 = 24 * v12;
    if (v14 != a4 || v16 >= &v17[24 * v12])
    {
      memmove(v16, v17, v18);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, v18, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1BD5325D8(void *result, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC48, &qword_1BE0BD2F0);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD532734(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50, &unk_1BE0C74D0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[32 * v12])
    {
      memmove(v17, v18, 32 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD53286C(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD499D0, &unk_1BE0DF7F8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[24 * v12])
    {
      memmove(v16, v17, 24 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD53298C(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD499C8, &qword_1BE0DF7F0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 88);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[88 * v12])
    {
      memmove(v16, v17, 88 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1BD532AB4(void *result, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAC8, &unk_1BE0DF7D0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1BD532BE8(void *result, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49988, &qword_1BE0DF790);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[3 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 24 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49990, &qword_1BE0DF798);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1BD532D30(void *result, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49980, &unk_1BE0DF780);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD532EDC(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49938, &unk_1BE0DF708);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * v15 - 64;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v12])
    {
      memmove(v16, v17, v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD532FD0(char *result, int64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * v15 - 64;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v12])
    {
      memmove(v16, v17, v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD5330BC(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49920, &qword_1BE0DF6D0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[32 * v12])
    {
      memmove(v17, v18, 32 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD5331C8(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC48, &unk_1BE0BFE90);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD5332F8(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAF8, &qword_1BE0BFD40);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 136);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[136 * v12])
    {
      memmove(v16, v17, 136 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD533440(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46838, &qword_1BE0D73D8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[8 * v12])
    {
      memmove(v17, v18, 8 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD533544(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD499F8, &unk_1BE0DF8A0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 72);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[72 * v12])
    {
      memmove(v16, v17, 72 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD53366C(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE8, &unk_1BE0DFB08);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 20);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[20 * v12])
    {
      memmove(v16, v17, 20 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, 20 * v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1BD533788(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BD8, &qword_1BE0DFAF8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0, &qword_1BE0DFB00) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0, &qword_1BE0DFB00);
  v21 = *(v16 - 1);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = a4 + v22;
  if (v5)
  {
    if (v13 < a4 || v13 + v22 >= &v23[*(v21 + 72) * v8])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v23, v15, v16, v17, v18, v19, v20;
  return v13;
}

void *sub_1BD5339A0(void *result, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA18, &qword_1BE0BFC50);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[3 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 24 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49918, &unk_1BE0E6DF0);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1BD533AE8(void *result, const char *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = (v12 >> 1);
    if ((v12 >> 1) < a2)
    {
      if ((v13 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v13 = (v12 & 0xFFFFFFFFFFFFFFFELL);
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v16;
}

char *sub_1BD533C30(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BC0, &qword_1BE0DFAC8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 48);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[48 * v12])
    {
      memmove(v16, v17, 48 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD533D50(char *result, int64_t a2, char a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC50, &qword_1BE0DF760);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    v19 = (16 * v12);
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, v19);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, v19, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1BD533E5C(void *result, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BC8, &qword_1BE0DFAD8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BD0, &unk_1BE0DFAE0);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_1BD533FB8(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD499F0, &unk_1BE0DF890);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[32 * v12])
    {
      memmove(v17, v18, 32 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1BD5340C4(void *result, const char *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = (v12 >> 1);
    if ((v12 >> 1) < a2)
    {
      if ((v13 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v13 = (v12 & 0xFFFFFFFFFFFFFFFELL);
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v16;
}

void *sub_1BD534248(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v20 = a7(0);
  v25 = *(v20 - 1);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = a4 + v26;
  if (v9)
  {
    if (v17 < a4 || v17 + v26 >= &v27[*(v25 + 72) * v12])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v27, v19, v20, v21, v22, v23, v24;
  return v17;
}

void sub_1BD534488(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1BE0537D4();
  v13 = v5;
  if (*(v4 + 16))
  {
    v14 = (v5 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v4 || v14 >= v4 + 56 + 8 * v15)
    {
      memmove(v14, (v4 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v4 + 16);
    v18 = 1 << *(v4 + 32);
    v19 = *(v4 + 56);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = *(*(v4 + 48) + 8 * v26);
        *(*(v13 + 48) + 8 * v26) = v27;
        v28 = v27;
      }

      while (v21);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {
        goto LABEL_19;
      }

      v25 = *(v4 + 56 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v4, v6, v7, v8, v9, v10, v11, v12;
    *v3 = v13;
  }
}

void sub_1BD5345C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39888, &unk_1BE0B8DA0);
  v2 = *v0;
  v3 = sub_1BE0537D4();
  v11 = v3;
  if (*(v2 + 16))
  {
    v12 = (v3 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v2 || v12 >= v2 + 56 + 8 * v13)
    {
      memmove(v12, (v2 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v2 + 16);
    v16 = 1 << *(v2 + 32);
    v17 = *(v2 + 56);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = 16 * (v21 | (v15 << 6));
        v25 = (*(v2 + 48) + v24);
        v26 = v25[1];
        v27 = (*(v11 + 48) + v24);
        *v27 = *v25;
        v27[1] = v26;
        sub_1BE048C84();
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v2 + 56 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v2, v4, v5, v6, v7, v8, v9, v10;
    *v1 = v11;
  }
}

void sub_1BD53474C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1BE0537D4();
  v13 = v5;
  if (*(v4 + 16))
  {
    v14 = (v5 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v4 || v14 >= v4 + 56 + 8 * v15)
    {
      memmove(v14, (v4 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v4 + 16);
    v18 = 1 << *(v4 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v4 + 56);
    for (i = (v18 + 63) >> 6; v20; *(*(v13 + 48) + 8 * v23) = *(*(v4 + 48) + 8 * v23))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v23 = v22 | (v17 << 6);
LABEL_17:
      ;
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= i)
      {
        goto LABEL_19;
      }

      v25 = *(v4 + 56 + 8 * v17);
      ++v24;
      if (v25)
      {
        v20 = (v25 - 1) & v25;
        v23 = __clz(__rbit64(v25)) | (v17 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    v4, v6, v7, v8, v9, v10, v11, v12;
    *v3 = v13;
  }
}