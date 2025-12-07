uint64_t sub_264E010AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E90, &unk_264E26F50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2FD0, &qword_264E295C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  if (*(a1 + 48))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2FE8, &qword_264E295D0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  }

  else
  {
    v18 = sub_264E24D18();
    v19 = sub_264E24CB8();
    v32 = v18;
    v33 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2FD8, &qword_264E295C8);
    sub_264E0254C();
    sub_264E24C08();

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2FE8, &qword_264E295D0);
    (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  }

  v32 = v15;
  v33 = v16;
  sub_264D89EB8();

  v21 = sub_264E24AF8();
  v23 = v22;
  v32 = v21;
  v33 = v22;
  v25 = v24 & 1;
  v34 = v24 & 1;
  v35 = v26;
  sub_264E24C08();
  sub_264D817AC(v21, v23, v25);

  sub_264D81744(v14, v11, &qword_27FFB2FD0, &qword_264E295C0);
  sub_264D81744(v8, v5, &qword_27FFB1E90, &unk_264E26F50);
  v27 = v31;
  sub_264D81744(v11, v31, &qword_27FFB2FD0, &qword_264E295C0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2FF0, &qword_264E295D8);
  sub_264D81744(v5, v27 + *(v28 + 48), &qword_27FFB1E90, &unk_264E26F50);
  sub_264D817BC(v8, &qword_27FFB1E90, &unk_264E26F50);
  sub_264D817BC(v14, &qword_27FFB2FD0, &qword_264E295C0);
  sub_264D817BC(v5, &qword_27FFB1E90, &unk_264E26F50);
  return sub_264D817BC(v11, &qword_27FFB2FD0, &qword_264E295C0);
}

uint64_t sub_264E01458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a5;
  v51 = a4;
  v53 = a6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F58, &qword_264E29510);
  MEMORY[0x28223BE20](v50);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F60, &qword_264E29518);
  MEMORY[0x28223BE20](v13 - 8);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v63 = *(a1 + 80);
  *&v64 = *(a1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F48, &qword_264E29500);
  sub_264E24D88();
  v20 = *&v56;
  v63 = *(a1 + 104);
  *&v64 = *(a1 + 120);
  sub_264E24D88();
  v21 = *&v56;
  if (*(a1 + 65) == 1)
  {
    v22 = sub_264E24C78();
  }

  else
  {
    v23 = [objc_opt_self() quaternarySystemFillColor];
    v22 = sub_264E24C38();
  }

  v24 = 1.0;
  if (!v19)
  {
    v24 = v18;
  }

  v25 = v20 - v21 - *(a1 + 72);
  *&v63 = *(a1 + 40);
  *(&v63 + 1) = v24;
  *&v64 = v25;
  *(&v64 + 1) = 0x4014000000000000;
  *&v65 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F68, &unk_264E29520);
  sub_264E020CC();
  sub_264E24C08();

  *&v63 = a2;
  *(&v63 + 1) = a3;
  sub_264D89EB8();

  v26 = sub_264E24AF8();
  v28 = v27;
  v30 = v29;
  v49 = v17;
  v32 = v31;
  v56 = *(a1 + 104);
  *&v57 = *(a1 + 120);
  sub_264E24DA8();
  v33 = v63;
  v34 = v64;
  v35 = v30 & 1;
  LOBYTE(v63) = v30 & 1;
  v36 = sub_264E24A68();
  KeyPath = swift_getKeyPath();
  v38 = swift_getKeyPath();
  LOBYTE(v63) = 0;
  v39 = sub_264E248C8();
  *&v63 = v26;
  *(&v63 + 1) = v28;
  LOBYTE(v64) = v35;
  *(&v64 + 1) = v32;
  v65 = v33;
  v66 = v34;
  *&v67 = KeyPath;
  *(&v67 + 1) = v36;
  *&v68 = v38;
  *(&v68 + 1) = 1;
  LOBYTE(v69) = 0;
  HIDWORD(v69) = v39;
  v60 = v67;
  v61 = v68;
  v62 = v69;
  v56 = v63;
  v57 = v64;
  v59 = v34;
  v58 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2F80, &qword_264E29590);
  sub_264E02244();
  sub_264E24C08();
  sub_264D817BC(&v63, &qword_27FFB2F80, &qword_264E29590);
  v40 = &v12[*(v50 + 36)];
  v41 = v55;
  *v40 = v51;
  v40[1] = v41;
  v42 = v49;
  v43 = v52;
  sub_264D81744(v49, v52, &qword_27FFB2F60, &qword_264E29518);
  v44 = v54;
  sub_264D81744(v12, v54, &qword_27FFB2F58, &qword_264E29510);
  v45 = v53;
  sub_264D81744(v43, v53, &qword_27FFB2F60, &qword_264E29518);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2FC8, &unk_264E295B0);
  sub_264D81744(v44, v45 + *(v46 + 48), &qword_27FFB2F58, &qword_264E29510);

  sub_264D817BC(v12, &qword_27FFB2F58, &qword_264E29510);
  sub_264D817BC(v42, &qword_27FFB2F60, &qword_264E29518);
  sub_264D817BC(v44, &qword_27FFB2F58, &qword_264E29510);
  return sub_264D817BC(v43, &qword_27FFB2F60, &qword_264E29518);
}

uint64_t sub_264E019C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v26 = a4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3090, &qword_264E29740);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3098, &qword_264E29748);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = sub_264E24D28();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB30A0, &qword_264E29750);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  if (a1)
  {
    (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v11, v16);

    v19 = sub_264E24D48();
    (*(v12 + 8))(v14, v11);
    sub_264E24F58();
    sub_264E244B8();
    v38 = v40;
    v36 = v42;
    v27 = v19;
    v28 = v39;
    LOBYTE(v29) = v40;
    *(&v29 + 1) = *v37;
    HIDWORD(v29) = *&v37[3];
    v30 = v41;
    v31 = v42;
    *v32 = *v35;
    *&v32[3] = *&v35[3];
    v33 = v43;
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB30C0, &unk_264E29758);
    sub_264E02DEC();
    sub_264E24C08();

    v20 = &qword_27FFB30A0;
    v21 = &qword_264E29750;
    sub_264D81744(v18, v10, &qword_27FFB30A0, &qword_264E29750);
    swift_storeEnumTagMultiPayload();
    sub_264E02D60();
    sub_264E02ECC();
    sub_264E24858();

    v22 = v18;
  }

  else
  {
    v27 = a2;
    v28 = v24;
    v29 = 0x403D000000000000;
    sub_264E02D0C();
    sub_264E24C08();
    v20 = &qword_27FFB3090;
    v21 = &qword_264E29740;
    sub_264D81744(v7, v10, &qword_27FFB3090, &qword_264E29740);
    swift_storeEnumTagMultiPayload();
    sub_264E02D60();
    sub_264E02ECC();
    sub_264E24858();
    v22 = v7;
  }

  return sub_264D817BC(v22, v20, v21);
}

uint64_t sub_264E01DE4@<X0>(uint64_t a1@<X8>)
{
  result = sub_264E24718();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_264E01E90(uint64_t a1)
{
  v2 = sub_264E24D38();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_264E245E8();
}

unint64_t sub_264E01F5C()
{
  result = qword_27FFB2EE8;
  if (!qword_27FFB2EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2EB0, &qword_264E29458);
    sub_264E02014();
    sub_264D81DCC(&qword_27FFB2F10, &qword_27FFB2EE0, &qword_264E29488, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2EE8);
  }

  return result;
}

unint64_t sub_264E02014()
{
  result = qword_27FFB2EF0;
  if (!qword_27FFB2EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2EF8, &qword_264E294C0);
    sub_264D81DCC(&qword_27FFB2F00, &qword_27FFB2F08, &qword_264E294C8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2EF0);
  }

  return result;
}

unint64_t sub_264E020CC()
{
  result = qword_27FFB2F70;
  if (!qword_27FFB2F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2F68, &unk_264E29520);
    sub_264E02184();
    sub_264D81DCC(&qword_27FFB24D0, qword_27FFB24D8, &qword_264E27D18, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2F70);
  }

  return result;
}

unint64_t sub_264E02184()
{
  result = qword_27FFB2F78;
  if (!qword_27FFB2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2F78);
  }

  return result;
}

uint64_t sub_264E021E0@<X0>(uint64_t a1@<X8>)
{
  result = sub_264E24718();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_264E02244()
{
  result = qword_27FFB2F88;
  if (!qword_27FFB2F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2F80, &qword_264E29590);
    sub_264E022FC();
    sub_264D81DCC(&qword_27FFB2F00, &qword_27FFB2F08, &qword_264E294C8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2F88);
  }

  return result;
}

unint64_t sub_264E022FC()
{
  result = qword_27FFB2F90;
  if (!qword_27FFB2F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2F98, &qword_264E29598);
    sub_264E023B4();
    sub_264D81DCC(&qword_27FFB1838, &qword_27FFB1840, &qword_264E280A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2F90);
  }

  return result;
}

unint64_t sub_264E023B4()
{
  result = qword_27FFB2FA0;
  if (!qword_27FFB2FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2FA8, &qword_264E295A0);
    sub_264E0246C();
    sub_264D81DCC(&qword_27FFB17F0, &qword_27FFB17F8, &qword_264E28590, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2FA0);
  }

  return result;
}

unint64_t sub_264E0246C()
{
  result = qword_27FFB2FB0;
  if (!qword_27FFB2FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2FB8, &qword_264E295A8);
    sub_264E024F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2FB0);
  }

  return result;
}

unint64_t sub_264E024F8()
{
  result = qword_27FFB2FC0;
  if (!qword_27FFB2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2FC0);
  }

  return result;
}

unint64_t sub_264E0254C()
{
  result = qword_27FFB2FE0;
  if (!qword_27FFB2FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2FD8, &qword_264E295C8);
    sub_264D81DCC(&qword_27FFB24D0, qword_27FFB24D8, &qword_264E27D18, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2FE0);
  }

  return result;
}

unint64_t sub_264E02610()
{
  result = qword_27FFB3028;
  if (!qword_27FFB3028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3028);
  }

  return result;
}

unint64_t sub_264E02664()
{
  result = qword_27FFB3030;
  if (!qword_27FFB3030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3030);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

__n128 sub_264E02748@<Q0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>, double a4@<D0>)
{
  sub_264E24D78();
  v21 = v26;
  v8 = *(a1 + 16);
  if (v8)
  {
    v19 = a3;
    v20 = a2;
    v27 = MEMORY[0x277D84F90];
    sub_264D8D114(0, v8, 0);
    v9 = 0;
    v10 = v27;
    v22 = a1;
    do
    {
      v11 = *(a1 + v9 + 40);
      v25 = *(a1 + v9 + 32);
      v12 = *(a1 + v9 + 48);
      v23 = *(a1 + v9 + 56);
      v13 = *(a1 + v9 + 64);
      v14 = *(a1 + v9 + 72);
      v24 = *(a1 + v9 + 80);
      v15 = *(v27 + 16);
      v16 = *(v27 + 24);

      if (v15 >= v16 >> 1)
      {
        sub_264D8D114((v16 > 1), v15 + 1, 1);
      }

      *(v27 + 16) = v15 + 1;
      v17 = v27 + 56 * v15;
      *(v17 + 32) = v25;
      *(v17 + 40) = v11;
      a1 = v22;
      *(v17 + 48) = v23;
      *(v17 + 56) = v13;
      *(v17 + 64) = v14;
      *(v17 + 72) = v12;
      *(v17 + 80) = v24;
      *(v17 + 81) = 0;
      v9 += 56;
      --v8;
    }

    while (v8);

    a2 = v20;
    a3 = v19;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  result = v21;
  *a3 = v21;
  a3[1].n128_u64[0] = v10;
  a3[1].n128_f64[1] = a4;
  a3[2].n128_u8[0] = a2;
  return result;
}

__n128 sub_264E028EC@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>, double a3@<D0>)
{
  sub_264E24D78();
  v19 = v25;
  v6 = *(a1 + 16);
  if (v6)
  {
    v18 = a2;
    v26 = MEMORY[0x277D84F90];
    sub_264D8D114(0, v6, 0);
    v7 = 0;
    v8 = v26;
    v20 = a1;
    do
    {
      v9 = *(a1 + v7 + 40);
      v24 = *(a1 + v7 + 32);
      v10 = *(a1 + v7 + 48);
      v11 = *(a1 + v7 + 56);
      v12 = *(a1 + v7 + 64);
      v13 = *(a1 + v7 + 72);
      v22 = *(a1 + v7 + 81);
      v23 = *(a1 + v7 + 80);
      v21 = *(a1 + v7 + 82);
      v14 = *(v26 + 16);
      v15 = *(v26 + 24);

      if (v14 >= v15 >> 1)
      {
        sub_264D8D114((v15 > 1), v14 + 1, 1);
      }

      *(v26 + 16) = v14 + 1;
      v16 = v26 + 56 * v14;
      *(v16 + 32) = v24;
      *(v16 + 40) = v9;
      *(v16 + 48) = v11;
      *(v16 + 56) = v12;
      *(v16 + 64) = v13;
      *(v16 + 72) = v10;
      *(v16 + 80) = v23;
      *(v16 + 81) = v22;
      *(v16 + 82) = v21;
      v7 += 56;
      --v6;
      a1 = v20;
    }

    while (v6);

    a2 = v18;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  result = v19;
  *a2 = v19;
  a2[1].n128_u64[0] = v8;
  a2[1].n128_f64[1] = a3;
  a2[2].n128_u8[0] = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for MostUsedList.ItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MostUsedList.ItemType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264E02C9C()
{
  result = qword_27FFB3088;
  if (!qword_27FFB3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3088);
  }

  return result;
}

unint64_t sub_264E02D0C()
{
  result = qword_27FFB30A8;
  if (!qword_27FFB30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB30A8);
  }

  return result;
}

unint64_t sub_264E02D60()
{
  result = qword_27FFB30B0;
  if (!qword_27FFB30B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB30A0, &qword_264E29750);
    sub_264E02DEC();
    sub_264DA89E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB30B0);
  }

  return result;
}

unint64_t sub_264E02DEC()
{
  result = qword_27FFB30B8;
  if (!qword_27FFB30B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB30C0, &unk_264E29758);
    sub_264DD7B10();
    sub_264E02E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB30B8);
  }

  return result;
}

unint64_t sub_264E02E78()
{
  result = qword_27FFB30C8;
  if (!qword_27FFB30C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB30C8);
  }

  return result;
}

unint64_t sub_264E02ECC()
{
  result = qword_27FFB30D0;
  if (!qword_27FFB30D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3090, &qword_264E29740);
    sub_264E02D0C();
    sub_264DA89E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB30D0);
  }

  return result;
}

unint64_t sub_264E02F5C()
{
  result = qword_27FFB30D8;
  if (!qword_27FFB30D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB30E0, qword_264E29768);
    sub_264E02D60();
    sub_264E02ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB30D8);
  }

  return result;
}

uint64_t sub_264E03000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UsageChartFooterView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_264E238E8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264E03124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UsageChartFooterView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_264E238E8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264E03240(uint64_t a1)
{
  type metadata accessor for UsageChartFooterView.Model(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for STActivityMode(319);
    if (v2 <= 0x3F)
    {
      sub_264E238E8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_264E032F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264E033B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264E03454(uint64_t a1)
{
  sub_264E034D8(319);
  if (v1 <= 0x3F)
  {
    sub_264E23C38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264E034D8(uint64_t a1)
{
  if (!qword_27FFB3108)
  {
    sub_264E238E8();
    sub_264E03544();
    v1 = sub_264E25028();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB3108);
    }
  }
}

unint64_t sub_264E03544()
{
  result = qword_27FFB1ED8;
  if (!qword_27FFB1ED8)
  {
    sub_264E238E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1ED8);
  }

  return result;
}

uint64_t sub_264E035B8(unint64_t a1, char *a2)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3118, &qword_264E29808);
  MEMORY[0x28223BE20](v54);
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v48 - v6;
  MEMORY[0x28223BE20](v7);
  v51 = &v48 - v9;
  if (!a1)
  {
    return a1;
  }

  if (a1 == 1)
  {
    MEMORY[0x28223BE20](v8);
    *(&v48 - 2) = a2;
    v11 = sub_264DA2338(sub_264E04134, (&v48 - 4), v10);
    v12 = v11[2];
    if (v12)
    {
      v56 = MEMORY[0x277D84F90];
      sub_264D8D0F4(0, v12, 0);
      v13 = v56;
      v14 = (v11 + 8);
      v15 = sub_264E25368();
      v16 = 0;
      v48 = (v11 + 9);
      v49 = v12;
      v50 = (v11 + 8);
      do
      {
        if (v15 < 0 || v15 >= 1 << *(v11 + 32))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v19 = v15 >> 6;
        if ((*&v14[8 * (v15 >> 6)] & (1 << v15)) == 0)
        {
          goto LABEL_34;
        }

        v55 = *(v11 + 9);
        v20 = v11[6];
        v21 = sub_264E238E8();
        v22 = *(v21 - 8);
        v23 = v22;
        v24 = v20 + *(v22 + 72) * v15;
        v25 = v51;
        (*(v22 + 16))(v51, v24, v21);
        v26 = *(v11[7] + 8 * v15);
        v27 = v52;
        (*(v23 + 32))(v52, v25, v21);
        v28 = v54;
        *&v27[*(v54 + 48)] = v26;
        v29 = v27;
        v30 = v53;
        sub_264E04154(v29, v53);
        v31 = *(v30 + *(v28 + 48));
        (*(v23 + 8))(v30, v21);
        v56 = v13;
        a1 = *(v13 + 16);
        v32 = *(v13 + 24);
        if (a1 >= v32 >> 1)
        {
          sub_264D8D0F4((v32 > 1), a1 + 1, 1);
          v13 = v56;
        }

        *(v13 + 16) = a1 + 1;
        *(v13 + 8 * a1 + 32) = v31;
        v17 = 1 << *(v11 + 32);
        v14 = v50;
        if (v15 >= v17)
        {
          goto LABEL_35;
        }

        v33 = *&v50[8 * v19];
        if ((v33 & (1 << v15)) == 0)
        {
          goto LABEL_36;
        }

        if (v55 != *(v11 + 9))
        {
          goto LABEL_37;
        }

        v34 = v33 & (-2 << (v15 & 0x3F));
        if (v34)
        {
          v17 = __clz(__rbit64(v34)) | v15 & 0x7FFFFFFFFFFFFFC0;
          v18 = v49;
        }

        else
        {
          v35 = v19 << 6;
          v36 = v19 + 1;
          v18 = v49;
          v37 = &v48[8 * v19];
          while (v36 < (v17 + 63) >> 6)
          {
            v38 = *v37++;
            a1 = v38;
            v35 += 64;
            ++v36;
            if (v38)
            {
              sub_264DFF3C0(v15, v55, 0);
              v17 = __clz(__rbit64(a1)) + v35;
              goto LABEL_6;
            }
          }

          sub_264DFF3C0(v15, v55, 0);
        }

LABEL_6:
        ++v16;
        v15 = v17;
      }

      while (v16 != v18);

      v39 = *(v13 + 16);
      if (!v39)
      {
        goto LABEL_25;
      }
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
      v39 = *(MEMORY[0x277D84F90] + 16);
      if (!v39)
      {
LABEL_25:

        return 0;
      }
    }

    if (v39 > 3)
    {
      v40 = v39 & 0x7FFFFFFFFFFFFFFCLL;
      v42 = (v13 + 48);
      v41 = 0.0;
      v43 = v39 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v41 = v41 + *(v42 - 2) + *(v42 - 1) + *v42 + v42[1];
        v42 += 4;
        v43 -= 4;
      }

      while (v43);
      if (v39 == v40)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v40 = 0;
      v41 = 0.0;
    }

    v44 = v39 - v40;
    v45 = (v13 + 8 * v40 + 32);
    do
    {
      v46 = *v45++;
      v41 = v41 + v46;
      --v44;
    }

    while (v44);
LABEL_31:

    return *&v41;
  }

LABEL_38:
  type metadata accessor for STActivityMode(0);
  v56 = a1;
  result = sub_264E25488();
  __break(1u);
  return result;
}

uint64_t sub_264E03A9C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3118, &qword_264E29808);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = *a2;
  v13 = sub_264E238E8();
  (*(*(v13 - 8) + 16))(v11, a1, v13);
  *&v11[*(v9 + 56)] = v12;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  LOBYTE(a1) = sub_264E238C8();
  v14 = *(v5 + 8);
  v14(v7, v4);
  if (a1)
  {
    sub_264E23888();
    v15 = sub_264E238C8();
    v14(v7, v4);
  }

  else
  {
    v15 = 0;
  }

  sub_264D817BC(v11, &qword_27FFB3118, &qword_264E29808);
  return v15 & 1;
}

uint64_t sub_264E03C94@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UsageChartFooterView(0);
  result = sub_264E035B8(*(v1 + *(v3 + 20)), (v1 + *(v3 + 24)));
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  else
  {
    v13 = *&result;
    v14 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v14 setAllowedUnits_];
    [v14 setUnitsStyle_];
    v15 = [v14 stringFromTimeInterval_];
    if (v15)
    {
      v16 = v15;
      sub_264E25108();
    }

    else
    {
    }

    v6 = sub_264E24778();
    v23 = 1;
    sub_264E03E48(&v18);
    v26 = v20;
    v27 = v21;
    v24 = v18;
    v25 = v19;
    v29[1] = v19;
    v29[2] = v20;
    v29[3] = v21;
    v29[4] = v22;
    v28 = v22;
    v29[0] = v18;
    sub_264E040C4(&v24, v17);
    sub_264D817BC(v29, &qword_27FFB3110, &qword_264E29800);

    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
    v12 = v28;
    v7 = v23;
  }

  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  *(a1 + 56) = v10;
  *(a1 + 72) = v11;
  *(a1 + 88) = v12;
  return result;
}

uint64_t sub_264E03E48@<X0>(uint64_t a3@<X8>)
{
  sub_264E247D8();
  v4 = [objc_opt_self() bundle];
  LOWORD(v28) = 2;
  v5 = sub_264E24AE8();
  v7 = v6;
  v9 = v8;
  v10 = [objc_opt_self() labelColor];
  sub_264E24C38();
  v11 = sub_264E24AB8();
  v30 = v12;
  v31 = v11;
  v29 = v13;
  v32 = v14;

  sub_264D817AC(v5, v7, v9 & 1);

  sub_264D89EB8();

  v15 = sub_264E24AF8();
  v17 = v16;
  v19 = v18;
  sub_264E24C68();
  v20 = sub_264E24AB8();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_264D817AC(v15, v17, v19 & 1);

  *a3 = v31;
  *(a3 + 8) = v30;
  *(a3 + 16) = v29 & 1;
  *(a3 + 24) = v32;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v20;
  *(a3 + 56) = v22;
  *(a3 + 64) = v24 & 1;
  *(a3 + 72) = v26;
  sub_264D80F20(v31, v30, v29 & 1);

  sub_264D80F20(v20, v22, v24 & 1);

  sub_264D817AC(v20, v22, v24 & 1);

  sub_264D817AC(v31, v30, v29 & 1);
}

uint64_t sub_264E040C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3110, &qword_264E29800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E04154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3118, &qword_264E29808);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_264E041C8()
{
  result = qword_27FFB3120;
  if (!qword_27FFB3120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3128, &qword_264E29810);
    sub_264E0424C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3120);
  }

  return result;
}

unint64_t sub_264E0424C()
{
  result = qword_27FFB3130;
  if (!qword_27FFB3130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3138, &qword_264E29818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3130);
  }

  return result;
}

uint64_t AppLimitView.body.getter()
{
  v0 = sub_264E247D8();

  return MEMORY[0x2821300C8](v0);
}

uint64_t sub_264E04340()
{
  v0 = sub_264E247D8();

  return MEMORY[0x2821300C8](v0);
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppLimitView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppLimitView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_264E044F8()
{
  result = qword_27FFB1798;
  if (!qword_27FFB1798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1768, &unk_264E298C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1798);
  }

  return result;
}

uint64_t UsageOverviewTabView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for UsageOverviewTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  result = (*(*(v5 - 8) + 32))(&a2[v4], a1, v5);
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_264E045FC()
{
  v0 = sub_264E238E8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264D922CC(v3);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_264E046D8(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v24 = a1;
  v2 = sub_264E238E8();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E23AA8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  v20 = *(v10 + 16);
  v20(&v24 - v18, v24, v9, v17);
  (v20)(v15, v19, v9);
  (v20)(v12, v15, v9);
  v21 = v27 + *(type metadata accessor for ActivityNavigationState(0) + 20);
  (*(v25 + 16))(v4, v21 + *(v6 + 28), v26);
  sub_264D9173C(v12, v4, v8);
  v22 = *(v10 + 8);
  v22(v15, v9);
  v22(v19, v9);
  return sub_264D93A84(v8, v21);
}

uint64_t sub_264E04964@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 1)
  {
    v3 = 1;
  }

  else
  {
    if (*a1)
    {
      type metadata accessor for STActivityMode(0);
      result = sub_264E25488();
      __break(1u);
      return result;
    }

    type metadata accessor for ActivityNavigationState(0);
    sub_264E23AF8();
    v3 = 0;
  }

  v4 = sub_264E23AA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_264E04A3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_264D93A14(a1, &v6 - v3);
  return sub_264D926C4(v4);
}

uint64_t sub_264E04ACC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE8, &unk_264E267E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7];
  v9 = *a2;
  v18 = a1;
  sub_264D93B98(sub_264E06684, v9, &v17[-v7]);
  v10 = type metadata accessor for UsageOverviewChart.Model(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_264E066BC(v8, a3, type metadata accessor for UsageOverviewChart.Model);
  }

  v12 = sub_264E23AA8();
  (*(*(v12 - 8) + 16))(a3, a1, v12);
  v13 = *(type metadata accessor for UsageOverviewTabView.Model(0) + 20);
  v14 = v10[6];
  v15 = sub_264E23C38();
  (*(*(v15 - 8) + 16))(a3 + v14, a2 + v13, v15);
  *(a3 + v10[7]) = 3;
  *(a3 + v10[5]) = MEMORY[0x277D84F90];
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_264D817BC(v8, &qword_27FFB1CE8, &unk_264E267E8);
  }

  return result;
}

uint64_t UsageOverviewTabView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3140, &qword_264E298D0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_264E24818();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3148, &qword_264E298D8);
  sub_264E04E08(v0, &v3[*(v4 + 44)]);
  sub_264D81DCC(&qword_27FFB3150, &qword_27FFB3140, &qword_264E298D0, MEMORY[0x277CE1198]);
  sub_264E24C08();
  return sub_264E052A8(v3);
}

uint64_t sub_264E04E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_264E24538();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_264E24558();
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FB8, &qword_264E26E20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3190, &qword_264E29990);
  v18 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v20 = &v27 - v19;
  type metadata accessor for UsageOverviewTabView(0);
  sub_264E24E78();
  swift_getKeyPath();
  sub_264E24E68();

  sub_264D817BC(v14, &qword_27FFB1F70, &qword_264E28470);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FC8, &qword_264E274D0);
  (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
  v35 = a1;
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3198, &qword_264E299C8);
  sub_264E065CC(&qword_27FFB19D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_264E06288();
  sub_264E24F48();
  sub_264E24528();
  v22 = v30;
  v23 = v31;
  (*(v30 + 16))(v29, v7, v31);
  sub_264E24548();
  (*(v22 + 8))(v7, v23);
  sub_264D81DCC(&qword_27FFB31A8, &qword_27FFB3190, &qword_264E29990, MEMORY[0x277CDF0C8]);
  v24 = v28;
  v25 = v32;
  sub_264E24B68();
  (*(v33 + 8))(v11, v25);
  return (*(v18 + 8))(v20, v24);
}

uint64_t sub_264E052A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3140, &qword_264E298D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264E0532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = type metadata accessor for UsageOverviewTabView(0);
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = v5;
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_264E23AA8();
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = sub_264E238E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ActivityNavigationState(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x26674EFA0](v20);
  v21 = *(v17 + 28);
  v22 = v35;
  v23 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  (*(v13 + 16))(v15, &v19[v21 + *(v23 + 20)], v12);
  sub_264DA75F0(v19);
  type metadata accessor for UsageOverviewTabView.Model(0);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23888();
  v24 = Calendar.startOfEachWeek(fromWeekContaining:throughWeekExcluding:)(v11, v8);
  v25 = *(v6 + 8);
  v25(v8, v22);
  v26 = (v25)(v11, v22);
  if (v24)
  {
    MEMORY[0x28223BE20](v26);
    v33 = a1;
    sub_264E0AE7C(sub_264E0633C, (&v34 - 4), v24);
    v28 = v27;

    (*(v13 + 8))(v15, v12);
    v40 = v28;
    v29 = v38;
    sub_264E06614(a1, v38, type metadata accessor for UsageOverviewTabView);
    v30 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v31 = swift_allocObject();
    sub_264E066BC(v29, v31 + v30, type metadata accessor for UsageOverviewTabView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB31B0, &unk_264E299D0);
    type metadata accessor for UsageOverviewChart(0);
    sub_264D81DCC(&qword_27FFB31B8, &qword_27FFB31B0, &unk_264E299D0, MEMORY[0x277D83980]);
    sub_264E065CC(&qword_27FFB1D80, type metadata accessor for UsageOverviewChart, &protocol conformance descriptor for UsageOverviewChart);
    v33 = sub_264E065CC(&qword_27FFB31C0, type metadata accessor for UsageOverviewChart.Model, &protocol conformance descriptor for UsageOverviewChart.Model);
    return sub_264E24EF8();
  }

  else
  {
    result = sub_264E253E8();
    __break(1u);
  }

  return result;
}

double sub_264E05840@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for UsageOverviewChart(0);
  sub_264E06614(a1, a2 + v13[5], type metadata accessor for UsageOverviewChart.Model);
  type metadata accessor for UsageOverviewTabView(0);
  sub_264E24E78();
  swift_getKeyPath();
  sub_264E24E68();

  sub_264D817BC(v12, &qword_27FFB1F70, &qword_264E28470);
  sub_264E23BF8();
  v14 = sub_264E23AA8();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_264D93A14(v9, v6);
  sub_264E24D78();
  sub_264D817BC(v9, &qword_27FFB1860, &qword_264E267E0);
  *(a2 + v13[8]) = 0;
  v15 = (a2 + v13[9]);
  v21 = 0x40BC200000000000;
  sub_264E24D78();
  v16 = v23;
  *v15 = v22;
  *(v15 + 1) = v16;
  v17 = (a2 + v13[10]);
  v21 = 0;
  sub_264E24D78();
  result = v22;
  v19 = v23;
  *v17 = v22;
  *(v17 + 1) = v19;
  return result;
}

uint64_t sub_264E05ADC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3140, &qword_264E298D0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_264E24818();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3148, &qword_264E298D8);
  sub_264E04E08(v0, &v3[*(v4 + 44)]);
  sub_264D81DCC(&qword_27FFB3150, &qword_27FFB3140, &qword_264E298D0, MEMORY[0x277CE1198]);
  sub_264E24C08();
  return sub_264E052A8(v3);
}

uint64_t sub_264E05C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UsageOverviewTabView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264E05D20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UsageOverviewTabView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264E05E48(uint64_t a1)
{
  type metadata accessor for UsageOverviewTabView.Model(319);
  if (v1 <= 0x3F)
  {
    sub_264E06128(319, &qword_27FFB1F88, type metadata accessor for ActivityNavigationState, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264E05F10(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264E05FD0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264E06074(uint64_t a1)
{
  sub_264E06128(319, &qword_27FFB3178, type metadata accessor for UsageOverviewChart.Model, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_264E23C38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264E06128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_264E06190()
{
  result = qword_27FFB3180;
  if (!qword_27FFB3180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3188, &unk_264E29980);
    sub_264D81DCC(&qword_27FFB3150, &qword_27FFB3140, &qword_264E298D0, MEMORY[0x277CE1198]);
    sub_264E065CC(&qword_27FFB1B10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3180);
  }

  return result;
}

unint64_t sub_264E06288()
{
  result = qword_27FFB31A0;
  if (!qword_27FFB31A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3198, &qword_264E299C8);
    sub_264E065CC(&qword_27FFB1D80, type metadata accessor for UsageOverviewChart, &protocol conformance descriptor for UsageOverviewChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB31A0);
  }

  return result;
}

uint64_t sub_264E0635C()
{
  v1 = (type metadata accessor for UsageOverviewTabView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*v1 + 64);

  v4 = *(type metadata accessor for UsageOverviewTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3 + v4, v5);
  v7 = v0 + v3 + v1[7];

  v8 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470) + 32);
  v9 = type metadata accessor for ActivityNavigationState(0);
  v10 = v8 + *(v9 + 20);
  v11 = sub_264E23AA8();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = *(type metadata accessor for ActivityNavigationState.DateAndBounds(0) + 20);
  v13 = sub_264E238E8();
  (*(*(v13 - 8) + 8))(v10 + v12, v13);
  v6(v8 + *(v9 + 24), v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v15, v2 | 7);
}

double sub_264E0654C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for UsageOverviewTabView(0);

  return sub_264E05840(a1, a2);
}

uint64_t sub_264E065CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264E06614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E066BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E06750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v16[0] = sub_264E24888();
  v7 = *(v16[0] - 8);
  MEMORY[0x28223BE20](v16[0]);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB31D0, &qword_264E29AB8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  *&v19 = a1;
  *(&v19 + 1) = a2;
  v20 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB31E0, &qword_264E29AC0);
  sub_264E24E78();
  v19 = v17;
  v20 = v18;
  type metadata accessor for STActivityMode(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB31E8, &qword_264E29AC8);
  sub_264E06EA0();
  sub_264D81DCC(&qword_27FFB31F8, &qword_27FFB31E8, &qword_264E29AC8, MEMORY[0x277CE14C0]);
  sub_264E24E18();
  sub_264E24878();
  sub_264D81DCC(&qword_27FFB31D8, &qword_27FFB31D0, &qword_264E29AB8, MEMORY[0x277CDF038]);
  v14 = v16[0];
  sub_264E24BC8();
  (*(v7 + 8))(v9, v14);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_264E06A00@<X0>(char *a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3200, &qword_264E29AD0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v28 = &v28 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  sub_264E247D8();
  v12 = objc_opt_self();
  v13 = [v12 bundle];
  *v11 = sub_264E24AE8();
  *(v11 + 1) = v14;
  v11[16] = v15 & 1;
  *(v11 + 3) = v16;
  *(v11 + 4) = 1;
  v11[40] = 1;
  sub_264E247D8();
  v17 = [v12 bundle];
  *v8 = sub_264E24AE8();
  *(v8 + 1) = v18;
  v8[16] = v19 & 1;
  *(v8 + 3) = v20;
  *(v8 + 4) = 0;
  v8[40] = 1;
  v21 = *(v2 + 16);
  v22 = v28;
  v21(v28, v11, v1);
  v23 = v29;
  v21(v29, v8, v1);
  v24 = v30;
  v21(v30, v22, v1);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3208, &qword_264E29AD8);
  v21(&v24[*(v25 + 48)], v23, v1);
  v26 = *(v2 + 8);
  v26(v8, v1);
  v26(v11, v1);
  v26(v23, v1);
  return (v26)(v22, v1);
}

uint64_t sub_264E06D3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB31C8, &qword_264E29AB0);
  MEMORY[0x28223BE20](v1);
  sub_264E06750(*v0, v0[1], v0[2], v7 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB31D0, &qword_264E29AB8);
  v4 = sub_264E24888();
  v5 = sub_264D81DCC(&qword_27FFB31D8, &qword_27FFB31D0, &qword_264E29AB8, MEMORY[0x277CDF038]);
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = MEMORY[0x277CDE058];
  swift_getOpaqueTypeConformance2();
  return sub_264E24F18();
}

unint64_t sub_264E06EA0()
{
  result = qword_27FFB31F0;
  if (!qword_27FFB31F0)
  {
    type metadata accessor for STActivityMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB31F0);
  }

  return result;
}

unint64_t sub_264E06EFC()
{
  result = qword_27FFB3210;
  if (!qword_27FFB3210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3218, &qword_264E29AE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB31D0, &qword_264E29AB8);
    sub_264E24888();
    sub_264D81DCC(&qword_27FFB31D8, &qword_27FFB31D0, &qword_264E29AB8, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3210);
  }

  return result;
}

uint64_t sub_264E07048@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v40 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3220, &qword_264E29B90);
  MEMORY[0x28223BE20](v38);
  v39 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3228, &qword_264E29B98);
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3230, &qword_264E29BA0);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3238, &unk_264E29BA8);
  MEMORY[0x28223BE20](v37);
  v11 = &v33 - v10;
  v12 = [objc_opt_self() bundle];
  sub_264E23938();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2610, &unk_264E27E60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_264E261E0;
  v14 = objc_opt_self();
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v16 = [v14 localizedStringFromNumber:v15 numberStyle:3];

  v17 = sub_264E25108();
  v19 = v18;

  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_264DDBB6C();
  *(v13 + 32) = v17;
  *(v13 + 40) = v19;
  v20 = sub_264E250F8();
  v22 = v21;

  if ((a2 < 0.05 || a2 > 2.0) && (a2 > -0.05 || a2 < -0.9))
  {

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3240, &qword_264E29BB8);
    v30 = *(*(v29 - 8) + 56);
    v31 = v29;
    v32 = v40;

    return v30(v32, 1, 1, v31);
  }

  else
  {
    v41 = v20;
    v42 = v22;
    sub_264D89EB8();
    sub_264E24D68();
    v41 = 0x400C000000000000;
    v23 = sub_264D81DCC(&qword_27FFB3248, &qword_27FFB3228, &qword_264E29B98, MEMORY[0x277CDEFF0]);
    v24 = sub_264E077A0();
    sub_264E24BA8();
    (*(v34 + 8))(v6, v4);
    v41 = v4;
    v42 = &type metadata for DeltaLabelSpacing;
    v43 = v23;
    v44 = v24;
    swift_getOpaqueTypeConformance2();
    v25 = v36;
    sub_264E24C08();
    (*(v35 + 8))(v9, v25);
    sub_264E077F4(v11, v39);
    swift_storeEnumTagMultiPayload();
    sub_264E07864();
    v26 = v40;
    sub_264E24858();
    sub_264E07974(v11);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3240, &qword_264E29BB8);
    return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }
}

unint64_t sub_264E077A0()
{
  result = qword_27FFB3250;
  if (!qword_27FFB3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3250);
  }

  return result;
}

uint64_t sub_264E077F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3238, &unk_264E29BA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_264E07864()
{
  result = qword_27FFB3258;
  if (!qword_27FFB3258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3238, &unk_264E29BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3228, &qword_264E29B98);
    sub_264D81DCC(&qword_27FFB3248, &qword_27FFB3228, &qword_264E29B98, MEMORY[0x277CDEFF0]);
    sub_264E077A0();
    swift_getOpaqueTypeConformance2();
    sub_264DA89E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3258);
  }

  return result;
}

uint64_t sub_264E07974(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3238, &unk_264E29BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264E079F0()
{
  result = qword_27FFB3260;
  if (!qword_27FFB3260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3268, &qword_264E29BD8);
    sub_264E07A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3260);
  }

  return result;
}

unint64_t sub_264E07A74()
{
  result = qword_27FFB3270;
  if (!qword_27FFB3270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3240, &qword_264E29BB8);
    sub_264E07864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3270);
  }

  return result;
}

uint64_t sub_264E07B14@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_264E24918();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_264E248F8();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_264E24908();
  sub_264E24928();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3290, &qword_264E29C60) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_264E07DA4@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_264E24758();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3278, &qword_264E29C18);
  sub_264E07B14((a2 + *(v5 + 44)));
  v6 = sub_264E249E8();
  KeyPath = swift_getKeyPath();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3280, &qword_264E29C50) + 36));
  *v8 = KeyPath;
  v8[1] = v6;
  v9 = [objc_opt_self() secondaryLabelColor];
  v10 = sub_264E24C38();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3288, &qword_264E29C58);
  *(a2 + *(result + 36)) = v10;
  return result;
}

unint64_t sub_264E07E8C()
{
  result = qword_27FFB3298;
  if (!qword_27FFB3298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3288, &qword_264E29C58);
    sub_264E07F44();
    sub_264D81DCC(&qword_27FFB24D0, qword_27FFB24D8, &qword_264E27D18, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3298);
  }

  return result;
}

unint64_t sub_264E07F44()
{
  result = qword_27FFB32A0;
  if (!qword_27FFB32A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3280, &qword_264E29C50);
    sub_264D81DCC(&qword_27FFB32A8, &qword_27FFB32B0, &qword_264E29C68, MEMORY[0x277CE1138]);
    sub_264D81DCC(&qword_27FFB17F0, &qword_27FFB17F8, &qword_264E28590, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB32A0);
  }

  return result;
}

double STCommunicationSafetyToggleFooter.body.getter@<D0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  v3 = sub_264E24AE8();
  v5 = v4;
  v7 = v6;
  sub_264E24A78();
  v8 = sub_264E24AD8();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_264D817AC(v3, v5, v7 & 1);

  v15 = sub_264E249B8();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

double STCommunicationSafetyViewChildSafetyResourcesFooter.body.getter@<D0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  v3 = sub_264E24AE8();
  v5 = v4;
  v7 = v6;
  sub_264E24A78();
  v8 = sub_264E24AD8();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_264D817AC(v3, v5, v7 & 1);

  v15 = sub_264E249B8();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

double STCommunicationSafetyAnalyticsFooter.body.getter@<D0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  v3 = sub_264E24AE8();
  v5 = v4;
  v7 = v6;
  sub_264E24A78();
  v8 = sub_264E24AD8();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_264D817AC(v3, v5, v7 & 1);

  v15 = sub_264E249B8();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

unint64_t sub_264E084FC()
{
  result = qword_27FFB32B8;
  if (!qword_27FFB32B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB32C0, &qword_264E29E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB32B8);
  }

  return result;
}

uint64_t NotificationsLegendView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for NotificationsLegendView.Model(0) + 20);
  *(a2 + v4) = sub_264DEE390(MEMORY[0x277D84F90]);
  v5 = sub_264E23C38();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2, a1, v5);
}

uint64_t sub_264E08638(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  MEMORY[0x28223BE20](v33);
  v7 = &v32 - v6;
  v8 = sub_264E238E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_264E23AA8();
  v12 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v15 = type metadata accessor for NotificationsLegendView.Model(0);
    MEMORY[0x28223BE20](v15);
    v30 = a2;
    v17 = sub_264DA253C(sub_264E0AB08, (&v32 - 4), v16);
    v9 = v17;
    v14 = v17 + 64;
    v18 = 1 << v17[32];
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v17 + 8);
    v11 = ((v18 + 63) >> 6);
    a1 = v12 + 16;

    v8 = 0;
    v21 = 0;
    while (v20)
    {
      v22 = v8;
LABEL_11:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v24 = v23 | (v22 << 6);
      (*(v12 + 16))(v7, *(v9 + 6) + *(v12 + 72) * v24, v34);
      v3 = *(*(v9 + 7) + 8 * v24);
      *&v7[*(v33 + 48)] = v3;
      sub_264D817BC(v7, &qword_27FFB1BB8, &unk_264E26640);
      v25 = __OFADD__(v21, v3);
      v21 += v3;
      if (v25)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    while (1)
    {
      v22 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v22 >= v11)
      {

        return v21;
      }

      v20 = *&v14[8 * v22];
      ++v8;
      if (v20)
      {
        v8 = v22;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_14:
  if (a1)
  {
LABEL_22:
    v31 = 0;
    v30 = 50;
    result = sub_264E253E8();
    __break(1u);
    return result;
  }

  sub_264E23858();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v9 + 1))(v11, v8);
  v26 = *(v3 + *(type metadata accessor for NotificationsLegendView.Model(0) + 20));
  if (*(v26 + 16) && (v27 = sub_264D9D5F4(v14), (v28 & 1) != 0))
  {
    v21 = *(*(v26 + 56) + 8 * v27);
    (*(v12 + 8))(v14, v34);
  }

  else
  {
    (*(v12 + 8))(v14, v34);
    return 0;
  }

  return v21;
}

uint64_t sub_264E08A18(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *a2;
  v9 = sub_264E23AA8();
  (*(*(v9 - 8) + 16))(v7, a1, v9);
  *&v7[*(v5 + 56)] = v8;
  v10 = sub_264E238C8();
  sub_264D817BC(v7, &qword_27FFB1BB8, &unk_264E26640);
  return v10 & 1;
}

uint64_t NotificationsLegendView.init(model:mode:dateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for NotificationsLegendView(0);
  v9 = v8[7];
  v10 = sub_264E23AA8();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = (a4 + v8[8]);
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;
  sub_264E09F08(a1, a4, type metadata accessor for NotificationsLegendView.Model);
  *(a4 + v8[5]) = a2;
  v12 = v8[6];
  v13 = sub_264E238E8();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

double NotificationsLegendView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NotificationsLegendView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_264E24C88();
  sub_264E24F58();
  sub_264E24588();
  sub_264E09CD4(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_264E09F08(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for NotificationsLegendView);
  v10 = sub_264E24F58();
  v11 = v16[2];
  *(a1 + 56) = v16[3];
  v12 = v16[5];
  *(a1 + 72) = v16[4];
  *(a1 + 88) = v12;
  *(a1 + 104) = v16[6];
  result = *v16;
  v14 = v16[1];
  *(a1 + 8) = v16[0];
  *(a1 + 24) = v14;
  *a1 = v7;
  *(a1 + 40) = v11;
  *(a1 + 120) = sub_264E09F70;
  *(a1 + 128) = v9;
  *(a1 + 136) = v10;
  *(a1 + 144) = v15;
  return result;
}

void sub_264E08DD4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_264E244C8();
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    v8 = v7;
    *a2 = sub_264E24768();
    *(a2 + 8) = 0x4034000000000000;
    *(a2 + 16) = 0;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3328, &qword_264E29F38);
    sub_264E08F78(a1, v8, a2 + *(v9 + 44));
    v10 = sub_264E249F8();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = sub_264E24A38();
    sub_264D817BC(v6, &qword_27FFB17B8, &qword_264E279E0);
    KeyPath = swift_getKeyPath();
    v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3330, &qword_264E29F70) + 36));
    *v13 = KeyPath;
    v13[1] = v11;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_264E08F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3338, &qword_264E29F78);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3340, &qword_264E29F80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v48 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v44 - v13;
  v15 = sub_264E23AA8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3348, &qword_264E29F88);
  MEMORY[0x28223BE20](v19 - 8);
  v54 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v53 = v44 - v22;
  v23 = type metadata accessor for NotificationsLegendView(0);
  if (*(a1 + *(v23 + 32) + 8))
  {
    v45 = a3;
    v24 = *(v23 + 28);
    v46 = a1;
    sub_264D81744(a1 + v24, v14, &qword_27FFB1860, &qword_264E267E0);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v26 = (*(v16 + 32))(v18, v14, v15);
      v44[1] = v44;
      MEMORY[0x28223BE20](v26);
      v44[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3358, &qword_264E29FA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3360, &qword_264E29FA8);
      sub_264E0A810();
      sub_264E0A8C8();
      v27 = v50;
      sub_264E24D58();
      sub_264E24F68();
      sub_264E24588();
      v28 = v48;
      (*(v51 + 32))(v48, v27, v52);
      v29 = (v28 + *(v7 + 36));
      v30 = *&v64[103];
      v29[4] = *&v64[87];
      v29[5] = v30;
      v29[6] = *&v64[119];
      v31 = *&v64[39];
      *v29 = *&v64[23];
      v29[1] = v31;
      v32 = *&v64[71];
      v29[2] = *&v64[55];
      v29[3] = v32;
      v33 = v47;
      sub_264E0AA38(v28, v47);
      v25 = v53;
      sub_264E0AA38(v33, v53);
      (*(v8 + 56))(v25, 0, 1, v7);
      (*(v16 + 8))(v18, v15);
      a3 = v45;
      a1 = v46;
      goto LABEL_6;
    }

    sub_264D817BC(v14, &qword_27FFB1860, &qword_264E267E0);
    a3 = v45;
    a1 = v46;
  }

  v25 = v53;
  (*(v8 + 56))(v53, 1, 1, v7);
LABEL_6:
  v34 = sub_264E24828();
  LOBYTE(v59[0]) = 0;
  sub_264E09A30(a1, v56);
  *&v55[7] = v56[0];
  *&v55[23] = v56[1];
  *&v55[39] = v56[2];
  *&v55[55] = v56[3];
  v35 = v59[0];
  v36 = v54;
  sub_264D81744(v25, v54, &qword_27FFB3348, &qword_264E29F88);
  sub_264D81744(v36, a3, &qword_27FFB3348, &qword_264E29F88);
  v37 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3350, &unk_264E29F90) + 48);
  *&v57 = v34;
  *(&v57 + 1) = 0x4014000000000000;
  v58[0] = v35;
  *&v58[1] = *v55;
  *&v58[17] = *&v55[16];
  *&v58[33] = *&v55[32];
  *&v58[49] = *&v55[48];
  v38 = *&v55[63];
  *&v58[64] = *&v55[63];
  v39 = *v58;
  *v37 = v57;
  *(v37 + 16) = v39;
  v40 = *&v58[16];
  v41 = *&v58[32];
  v42 = *&v58[48];
  *(v37 + 80) = v38;
  *(v37 + 48) = v41;
  *(v37 + 64) = v42;
  *(v37 + 32) = v40;
  sub_264D81744(&v57, v59, &qword_27FFB2BD8, &qword_264E28B28);
  sub_264D817BC(v25, &qword_27FFB3348, &qword_264E29F88);
  v59[0] = v34;
  v59[1] = 0x4014000000000000;
  v60 = v35;
  v62 = *&v55[16];
  v63 = *&v55[32];
  *v64 = *&v55[48];
  *&v64[15] = *&v55[63];
  v61 = *v55;
  sub_264D817BC(v59, &qword_27FFB2BD8, &qword_264E28B28);
  return sub_264D817BC(v36, &qword_27FFB3348, &qword_264E29F88);
}

double sub_264E09644@<D0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = sub_264E24828();
  sub_264E0971C(a3, a4, v12);
  *&v11[7] = v12[0];
  *&v11[23] = v12[1];
  *&v11[39] = v12[2];
  *&v11[55] = v12[3];
  v9 = sub_264E24998();
  *(a5 + 33) = *&v11[16];
  *(a5 + 49) = *&v11[32];
  *(a5 + 65) = *&v11[48];
  *a5 = v8;
  *(a5 + 8) = 0x4014000000000000;
  *(a5 + 16) = 0;
  *(a5 + 80) = *&v11[63];
  *(a5 + 17) = *v11;
  *(a5 + 88) = v9;
  result = 0.0;
  *(a5 + 96) = xmmword_264E29E30;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 128) = 0;
  return result;
}

uint64_t sub_264E0971C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_264D89EB8();

  v7 = sub_264E24AF8();
  v9 = v8;
  v11 = v10;
  sub_264E248D8();
  v12 = sub_264E24AC8();
  v14 = v13;
  v26 = v15;
  v17 = v16;
  sub_264D817AC(v7, v9, v11 & 1);

  if (*(a3 + 16))
  {
    sub_264D9D5F4(a4);
  }

  sub_264D908C4();
  sub_264E25348();
  v18 = sub_264E24AF8();
  v20 = v19;
  v22 = v21 & 1;
  *a5 = v12;
  *(a5 + 8) = v14;
  *(a5 + 16) = v26 & 1;
  *(a5 + 24) = v17;
  *(a5 + 32) = v18;
  *(a5 + 40) = v19;
  *(a5 + 48) = v21 & 1;
  *(a5 + 56) = v23;
  sub_264D80F20(v12, v14, v26 & 1);

  sub_264D80F20(v18, v20, v22);

  sub_264D817AC(v18, v20, v22);

  sub_264D817AC(v12, v14, v26 & 1);
}

uint64_t sub_264E098F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264E24D18();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3388, &qword_264E29FB0) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2EE0, &qword_264E29488) + 28);
  v5 = *MEMORY[0x277CE1050];
  v6 = sub_264E24D38();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = swift_getKeyPath();
  *a1 = v2;
  v7 = [objc_opt_self() systemRedColor];
  v8 = sub_264E24C38();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3360, &qword_264E29FA8);
  v11 = (a1 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = v8;
  return result;
}

uint64_t sub_264E09A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_264E247D8();
  v4 = [objc_opt_self() bundle];
  v5 = sub_264E24AE8();
  v7 = v6;
  v9 = v8;
  sub_264E24C68();
  v10 = sub_264E24AC8();
  v12 = v11;
  v23 = v13;
  v15 = v14;
  sub_264D817AC(v5, v7, v9 & 1);

  v16 = type metadata accessor for NotificationsLegendView(0);
  sub_264E08638(*(a1 + *(v16 + 20)), a1 + *(v16 + 24));
  sub_264D908C4();
  sub_264E25348();
  sub_264D89EB8();
  v17 = sub_264E24AF8();
  v19 = v18;
  LOBYTE(v7) = v20 & 1;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = v20 & 1;
  *(a2 + 56) = v21;
  sub_264D80F20(v10, v12, v23 & 1);

  sub_264D80F20(v17, v19, v7);

  sub_264D817AC(v17, v19, v7);

  sub_264D817AC(v10, v12, v23 & 1);
}

uint64_t sub_264E09C5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264E24638();
  *a1 = result;
  return result;
}

uint64_t sub_264E09CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsLegendView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E09D38()
{
  v1 = type metadata accessor for NotificationsLegendView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_264E23C38();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  type metadata accessor for NotificationsLegendView.Model(0);

  v7 = v1[6];
  v8 = sub_264E238E8();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[7];
  v10 = sub_264E23AA8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  if (*(v5 + v1[8] + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264E09F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_264E09F70(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationsLegendView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_264E08DD4(v4, a1);
}

uint64_t sub_264E0A020(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for NotificationsLegendView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_264E238E8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_264E0A1A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for NotificationsLegendView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_264E238E8();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_264E0A304(uint64_t a1)
{
  type metadata accessor for NotificationsLegendView.Model(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for STActivityMode(319);
    if (v2 <= 0x3F)
    {
      sub_264E238E8();
      if (v3 <= 0x3F)
      {
        sub_264DDB89C(319);
        if (v4 <= 0x3F)
        {
          sub_264E0A3D0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_264E0A3D0()
{
  if (!qword_27FFB32D8)
  {
    v0 = sub_264E25318();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB32D8);
    }
  }
}

uint64_t sub_264E0A434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23C38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264E0A504(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23C38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_264E0A5BC(uint64_t a1)
{
  sub_264E23C38();
  if (v1 <= 0x3F)
  {
    sub_264E0A640(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264E0A640(uint64_t a1)
{
  if (!qword_27FFB32F0)
  {
    sub_264E23AA8();
    sub_264DF24BC();
    v1 = sub_264E25028();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB32F0);
    }
  }
}

unint64_t sub_264E0A6B0()
{
  result = qword_27FFB32F8;
  if (!qword_27FFB32F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3300, &qword_264E29EE0);
    sub_264E0A768();
    sub_264D81DCC(&qword_27FFB3318, &qword_27FFB3320, &qword_264E29EF0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB32F8);
  }

  return result;
}

unint64_t sub_264E0A768()
{
  result = qword_27FFB3308;
  if (!qword_27FFB3308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3310, &qword_264E29EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3308);
  }

  return result;
}

unint64_t sub_264E0A810()
{
  result = qword_27FFB3368;
  if (!qword_27FFB3368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3358, &qword_264E29FA0);
    sub_264D81DCC(&qword_27FFB3370, &qword_27FFB2BD8, &qword_264E28B28, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3368);
  }

  return result;
}

unint64_t sub_264E0A8C8()
{
  result = qword_27FFB3378;
  if (!qword_27FFB3378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3360, &qword_264E29FA8);
    sub_264E0A980();
    sub_264D81DCC(&qword_27FFB1800, &qword_27FFB1808, &qword_264E26150, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3378);
  }

  return result;
}

unint64_t sub_264E0A980()
{
  result = qword_27FFB3380;
  if (!qword_27FFB3380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3388, &qword_264E29FB0);
    sub_264D81DCC(&qword_27FFB2F10, &qword_27FFB2EE0, &qword_264E29488, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3380);
  }

  return result;
}

uint64_t sub_264E0AA38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3340, &qword_264E29F80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E0AAB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264E24638();
  *a1 = result;
  return result;
}

void sub_264E0ABD0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v24 = a6;
  v25 = a1;
  v8 = v6;
  v26 = a2;
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v21 - v13;
  v15 = *(a3 + 16);
  if (v15)
  {
    v27 = MEMORY[0x277D84F90];
    v22 = a5;
    (a5)(0, v15, 0, v12);
    v16 = v27;
    v17 = *(sub_264E23AA8() - 8);
    v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v23 = *(v17 + 72);
    while (1)
    {
      v25(v18);
      if (v8)
      {
        break;
      }

      v8 = 0;
      v27 = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        v22(v19 > 1, v20 + 1, 1);
        v16 = v27;
      }

      *(v16 + 16) = v20 + 1;
      sub_264E0CA00(v14, v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v24);
      v18 += v23;
      if (!--v15)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_264E0AF18(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v24 = a1;
  v2 = sub_264E238E8();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E23AA8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  v20 = *(v10 + 16);
  v20(&v24 - v18, v24, v9, v17);
  (v20)(v15, v19, v9);
  (v20)(v12, v15, v9);
  v21 = v27 + *(type metadata accessor for ActivityNavigationState(0) + 20);
  (*(v25 + 16))(v4, v21 + *(v6 + 28), v26);
  sub_264D9173C(v12, v4, v8);
  v22 = *(v10 + 8);
  v22(v15, v9);
  v22(v19, v9);
  return sub_264D93A84(v8, v21);
}

uint64_t UsageDetailTabView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for UsageDetailTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  result = (*(*(v5 - 8) + 32))(&a2[v4], a1, v5);
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_264E0B244@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CD8, &unk_264E267C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7];
  v9 = *a2;
  v18 = a1;
  sub_264D93C00(sub_264E0C9E0, v9, &v17[-v7]);
  v10 = type metadata accessor for UsageDetailChart.Model(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_264E0CA00(v8, a3, type metadata accessor for UsageDetailChart.Model);
  }

  v12 = sub_264E23AA8();
  (*(*(v12 - 8) + 16))(a3, a1, v12);
  v13 = *(type metadata accessor for UsageDetailTabView.Model(0) + 20);
  v14 = v10[6];
  v15 = sub_264E23C38();
  (*(*(v15 - 8) + 16))(a3 + v14, a2 + v13, v15);
  *(a3 + v10[7]) = 0x40BC200000000000;
  *(a3 + v10[8]) = 3;
  *(a3 + v10[5]) = MEMORY[0x277D84F90];
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_264D817BC(v8, &qword_27FFB1CD8, &unk_264E267C0);
  }

  return result;
}

uint64_t sub_264E0B470(uint64_t a1, uint64_t a2)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UsageDetailChart.Model(0);
  sub_264E23AF8();
  v6 = sub_264E23A78();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t UsageDetailTabView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3390, &qword_264E2A020);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_264E24818();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3398, &qword_264E2A028);
  sub_264E0B698(v0, &v3[*(v4 + 44)]);
  sub_264D81DCC(&qword_27FFB33A0, &qword_27FFB3390, &qword_264E2A020, MEMORY[0x277CE1198]);
  sub_264E24C08();
  return sub_264E0BB38(v3);
}

uint64_t sub_264E0B698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_264E24538();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_264E24558();
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FB8, &qword_264E26E20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB33E0, &qword_264E2A0E0);
  v18 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v20 = &v27 - v19;
  type metadata accessor for UsageDetailTabView(0);
  sub_264E24E78();
  swift_getKeyPath();
  sub_264E24E68();

  sub_264D817BC(v14, &qword_27FFB1F70, &qword_264E28470);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FC8, &qword_264E274D0);
  (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
  v35 = a1;
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB33E8, &qword_264E2A118);
  sub_264E0C934(&qword_27FFB19D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_264E0C860();
  sub_264E24F48();
  sub_264E24528();
  v22 = v30;
  v23 = v31;
  (*(v30 + 16))(v29, v7, v31);
  sub_264E24548();
  (*(v22 + 8))(v7, v23);
  sub_264D81DCC(&qword_27FFB33F8, &qword_27FFB33E0, &qword_264E2A0E0, MEMORY[0x277CDF0C8]);
  v24 = v28;
  v25 = v32;
  sub_264E24B68();
  (*(v33 + 8))(v11, v25);
  return (*(v18 + 8))(v20, v24);
}

uint64_t sub_264E0BB38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3390, &qword_264E2A020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264E0BBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a2;
  v29[0] = sub_264E23AA8();
  v3 = *(v29[0] - 8);
  MEMORY[0x28223BE20](v29[0]);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = sub_264E238E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActivityNavigationState(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UsageDetailTabView(0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x26674EFA0](v17);
  v18 = *(v14 + 28);
  v19 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  (*(v10 + 16))(v12, &v16[v18 + *(v19 + 20)], v9);
  sub_264DA75F0(v16);
  type metadata accessor for UsageDetailTabView.Model(0);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23888();
  v20 = Calendar.startOfEachDay(fromDayContaining:throughDayExcluding:)(v8, v5);
  v21 = *(v3 + 8);
  v22 = v5;
  v23 = v29[0];
  v21(v22, v29[0]);
  v24 = v21(v8, v23);
  if (v20)
  {
    MEMORY[0x28223BE20](v24);
    v28 = a1;
    sub_264E0ABD0(sub_264E0C914, &v29[-4], v20, type metadata accessor for UsageDetailChart.Model, sub_264D8D42C, type metadata accessor for UsageDetailChart.Model);
    v26 = v25;

    (*(v10 + 8))(v12, v9);
    v29[2] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3400, &unk_264E2A120);
    type metadata accessor for UsageDetailChart(0);
    sub_264D81DCC(&qword_27FFB3408, &qword_27FFB3400, &unk_264E2A120, MEMORY[0x277D83980]);
    sub_264E0C934(&qword_27FFB1D70, type metadata accessor for UsageDetailChart, &protocol conformance descriptor for UsageDetailChart);
    v28 = sub_264E0C934(&qword_27FFB3410, type metadata accessor for UsageDetailChart.Model, &protocol conformance descriptor for UsageDetailChart.Model);
    return sub_264E24EF8();
  }

  else
  {
    result = sub_264E253E8();
    __break(1u);
  }

  return result;
}

uint64_t sub_264E0C038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_264E0C97C(a1, a2);
  result = type metadata accessor for UsageDetailChart(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_264E0C070()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3390, &qword_264E2A020);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_264E24818();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3398, &qword_264E2A028);
  sub_264E0B698(v0, &v3[*(v4 + 44)]);
  sub_264D81DCC(&qword_27FFB33A0, &qword_27FFB3390, &qword_264E2A020, MEMORY[0x277CE1198]);
  sub_264E24C08();
  return sub_264E0BB38(v3);
}

uint64_t sub_264E0C1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UsageDetailTabView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264E0C2B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UsageDetailTabView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264E0C3DC(uint64_t a1)
{
  type metadata accessor for UsageDetailTabView.Model(319);
  if (v1 <= 0x3F)
  {
    sub_264E0C6BC(319, &qword_27FFB1F88, type metadata accessor for ActivityNavigationState, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264E0C4A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264E0C564(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264E0C608(uint64_t a1)
{
  sub_264E0C6BC(319, &qword_27FFB33C8, type metadata accessor for UsageDetailChart.Model, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_264E23C38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264E0C6BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_264E0C724()
{
  result = qword_27FFB33D0;
  if (!qword_27FFB33D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB33D8, &unk_264E2A0D0);
    sub_264D81DCC(&qword_27FFB33A0, &qword_27FFB3390, &qword_264E2A020, MEMORY[0x277CE1198]);
    sub_264E0C934(&qword_27FFB1B10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB33D0);
  }

  return result;
}

unint64_t sub_264E0C860()
{
  result = qword_27FFB33F0;
  if (!qword_27FFB33F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB33E8, &qword_264E2A118);
    sub_264E0C934(&qword_27FFB1D70, type metadata accessor for UsageDetailChart, &protocol conformance descriptor for UsageDetailChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB33F0);
  }

  return result;
}

uint64_t sub_264E0C934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264E0C97C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageDetailChart.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E0CA00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_264E0CA84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264E0CACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264E0CB48(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E238E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264E0CC08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E238E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MostUsedListSectionAppsAndCategories(uint64_t a1)
{
  result = qword_27FFB3418;
  if (!qword_27FFB3418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264E0CCF8(uint64_t a1)
{
  sub_264E238E8();
  if (v1 <= 0x3F)
  {
    sub_264E0CD8C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264E0CD8C()
{
  if (!qword_27FFB3428)
  {
    v0 = sub_264E24DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB3428);
    }
  }
}

uint64_t sub_264E0CDF8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3430, &qword_264E2A208);
  MEMORY[0x28223BE20](v3);
  v5 = &v20[-v4];
  v6 = type metadata accessor for MostUsedListSectionAppsAndCategories(0);
  v7 = v1 + *(v6 + 24);
  v8 = *v7;
  v9 = *(v7 + 1);
  v22 = *v7;
  v23 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3438, &qword_264E2A210);
  sub_264E24D88();
  if (v21)
  {
    v10 = *v1;
  }

  else
  {
    v10 = v1[1];
  }

  sub_264E0E248(v10, v1 + *(v6 + 20));
  v12 = v11;
  v22 = v8;
  v23 = v9;
  sub_264E24D88();
  v13 = v1 + *(v6 + 20);
  if ((v21 & 1) == 0)
  {
    sub_264E0D054(v13);
    if (*(v12 + 16))
    {
      goto LABEL_6;
    }

LABEL_8:

    v17 = 1;
    goto LABEL_9;
  }

  sub_264E0D404(v13);
  if (!*(v12 + 16))
  {
    goto LABEL_8;
  }

LABEL_6:
  v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  *&v20[-16] = v12;
  *&v20[-8] = v15;
  *v5 = sub_264E24778();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3440, &qword_264E2A218);
  sub_264E0D7B4(v1, &v5[*(v16 + 44)]);
  sub_264E0E9D4();
  sub_264D9CF58();
  sub_264E24F18();

  v17 = 0;
LABEL_9:
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3450, &qword_264E2A220);
  return (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
}

void sub_264E0D054(uint64_t a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3458, &qword_264E2A228);
  MEMORY[0x28223BE20](v49);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v46 - v5;
  v6 = *(v1 + 8);
  v53 = a1;
  sub_264DA25B0(sub_264E0EA38, v52, v6);
  v46 = 0;
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v50 = v7;

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  while (v11)
  {
    v51 = v14;
LABEL_11:
    v16 = __clz(__rbit64(v11)) | (v13 << 6);
    v17 = v50;
    v18 = *(v50 + 48);
    v19 = sub_264E238E8();
    v20 = *(v19 - 8);
    v21 = v47;
    (*(v20 + 16))(v47, v18 + *(v20 + 72) * v16, v19);
    v22 = *(*(v17 + 56) + 8 * v16);
    v23 = v49;
    *&v21[*(v49 + 48)] = v22;
    v24 = v21;
    v25 = v48;
    sub_264E0F24C(v24, v48);
    v26 = *(v25 + *(v23 + 48));
    v27 = *(v20 + 8);

    v27(v25, v19);
    v28 = *(v26 + 16);
    v14 = v51;
    v29 = *(v51 + 2);
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      goto LABEL_34;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v30 > *(v14 + 3) >> 1)
    {
      if (v29 <= v30)
      {
        v32 = v29 + v28;
      }

      else
      {
        v32 = v29;
      }

      v14 = sub_264DBBD3C(isUniquelyReferenced_nonNull_native, v32, 1, v14);
    }

    v11 &= v11 - 1;
    if (*(v26 + 16))
    {
      if ((*(v14 + 3) >> 1) - *(v14 + 2) < v28)
      {
        goto LABEL_36;
      }

      swift_arrayInitWithCopy();

      if (v28)
      {
        v33 = *(v14 + 2);
        v34 = __OFADD__(v33, v28);
        v35 = v33 + v28;
        if (v34)
        {
          goto LABEL_37;
        }

        *(v14 + 2) = v35;
      }
    }

    else
    {

      if (v28)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v36 = *(v14 + 2);
      if (v36)
      {
        if (v36 == 1)
        {
          v37 = 0;
          v38 = 0.0;
          goto LABEL_30;
        }

        v37 = v36 & 0x7FFFFFFFFFFFFFFELL;
        v39 = (v14 + 104);
        v38 = 0.0;
        v40 = v36 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v41 = *(v39 - 7);
          v42 = *v39;
          v39 += 14;
          v38 = v38 + v41 + v42;
          v40 -= 2;
        }

        while (v40);
        if (v36 != v37)
        {
LABEL_30:
          v43 = v36 - v37;
          v44 = &v14[56 * v37 + 48];
          do
          {
            v45 = *v44;
            v44 += 7;
            v38 = v38 + v45;
            --v43;
          }

          while (v43);
        }
      }

      return;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v51 = v14;
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_264E0D404(uint64_t a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3458, &qword_264E2A228);
  MEMORY[0x28223BE20](v49);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v46 - v5;
  v6 = *v1;
  v53 = a1;
  sub_264DA25B0(sub_264E105FC, v52, v6);
  v46 = 0;
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v50 = v7;

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  while (v11)
  {
    v51 = v14;
LABEL_11:
    v16 = __clz(__rbit64(v11)) | (v13 << 6);
    v17 = v50;
    v18 = *(v50 + 48);
    v19 = sub_264E238E8();
    v20 = *(v19 - 8);
    v21 = v47;
    (*(v20 + 16))(v47, v18 + *(v20 + 72) * v16, v19);
    v22 = *(*(v17 + 56) + 8 * v16);
    v23 = v49;
    *&v21[*(v49 + 48)] = v22;
    v24 = v21;
    v25 = v48;
    sub_264E0F24C(v24, v48);
    v26 = *(v25 + *(v23 + 48));
    v27 = *(v20 + 8);

    v27(v25, v19);
    v28 = *(v26 + 16);
    v14 = v51;
    v29 = *(v51 + 2);
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      goto LABEL_34;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v30 > *(v14 + 3) >> 1)
    {
      if (v29 <= v30)
      {
        v32 = v29 + v28;
      }

      else
      {
        v32 = v29;
      }

      v14 = sub_264DBBD3C(isUniquelyReferenced_nonNull_native, v32, 1, v14);
    }

    v11 &= v11 - 1;
    if (*(v26 + 16))
    {
      if ((*(v14 + 3) >> 1) - *(v14 + 2) < v28)
      {
        goto LABEL_36;
      }

      swift_arrayInitWithCopy();

      if (v28)
      {
        v33 = *(v14 + 2);
        v34 = __OFADD__(v33, v28);
        v35 = v33 + v28;
        if (v34)
        {
          goto LABEL_37;
        }

        *(v14 + 2) = v35;
      }
    }

    else
    {

      if (v28)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v36 = *(v14 + 2);
      if (v36)
      {
        if (v36 == 1)
        {
          v37 = 0;
          v38 = 0.0;
          goto LABEL_30;
        }

        v37 = v36 & 0x7FFFFFFFFFFFFFFELL;
        v39 = (v14 + 104);
        v38 = 0.0;
        v40 = v36 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v41 = *(v39 - 7);
          v42 = *v39;
          v39 += 14;
          v38 = v38 + v41 + v42;
          v40 -= 2;
        }

        while (v40);
        if (v36 != v37)
        {
LABEL_30:
          v43 = v36 - v37;
          v44 = &v14[56 * v37 + 48];
          do
          {
            v45 = *v44;
            v44 += 7;
            v38 = v38 + v45;
            --v43;
          }

          while (v43);
        }
      }

      return;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v51 = v14;
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_264E0D7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v39 = a2;
  v2 = type metadata accessor for MostUsedListSectionAppsAndCategories(0);
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3460, &unk_264E2A230);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E90, &unk_264E26F50);
  MEMORY[0x28223BE20](v10 - 8);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  sub_264E247D8();
  v15 = [objc_opt_self() bundle];
  v16 = sub_264E24AE8();
  v18 = v17;
  v41 = v16;
  v42 = v17;
  v20 = v19 & 1;
  v43 = v19 & 1;
  v44 = v21;
  sub_264E24C08();
  sub_264D817AC(v16, v18, v20);

  v22 = v37;
  sub_264E0F2BC(v37, &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v24 = swift_allocObject();
  sub_264E0F438(&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v40 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3468, &qword_264E2A240);
  sub_264E0F504();
  sub_264E24DD8();
  v25 = sub_264E24A78();
  KeyPath = swift_getKeyPath();
  v27 = &v9[*(v5 + 44)];
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = v36;
  sub_264D81744(v14, v36, &qword_27FFB1E90, &unk_264E26F50);
  v29 = v38;
  sub_264D81744(v9, v38, &qword_27FFB3460, &unk_264E2A230);
  v30 = v39;
  sub_264D81744(v28, v39, &qword_27FFB1E90, &unk_264E26F50);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3478, &qword_264E2A278);
  v32 = v30 + *(v31 + 48);
  *v32 = 0;
  *(v32 + 8) = 1;
  sub_264D81744(v29, v30 + *(v31 + 64), &qword_27FFB3460, &unk_264E2A230);
  sub_264D817BC(v9, &qword_27FFB3460, &unk_264E2A230);
  sub_264D817BC(v14, &qword_27FFB1E90, &unk_264E26F50);
  sub_264D817BC(v29, &qword_27FFB3460, &unk_264E2A230);
  return sub_264D817BC(v28, &qword_27FFB1E90, &unk_264E26F50);
}

uint64_t sub_264E0DBFC(uint64_t a1)
{
  type metadata accessor for MostUsedListSectionAppsAndCategories(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3438, &qword_264E2A210);
  sub_264E24D88();
  return sub_264E24D98();
}

uint64_t sub_264E0DCA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3480, &unk_264E2A280);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E90, &unk_264E26F50);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = (a1 + *(type metadata accessor for MostUsedListSectionAppsAndCategories(0) + 24));
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v20) = v9;
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3438, &qword_264E2A210);
  sub_264E24D88();
  sub_264E247D8();
  v11 = [objc_opt_self() bundle];
  v12 = sub_264E24AE8();
  v14 = v13;
  v20 = v12;
  v21 = v13;
  v16 = v15 & 1;
  v22 = v15 & 1;
  v23 = v17;
  sub_264E24C08();
  sub_264D817AC(v12, v14, v16);

  sub_264D81744(v7, v4, &qword_27FFB1E90, &unk_264E26F50);
  swift_storeEnumTagMultiPayload();
  sub_264D9CE9C();
  sub_264E24858();
  return sub_264D817BC(v7, &qword_27FFB1E90, &unk_264E26F50);
}

uint64_t sub_264E0E050(uint64_t a1, uint64_t *a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3458, &qword_264E2A228);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  v12 = *a2;
  v13 = sub_264E238E8();
  (*(*(v13 - 8) + 16))(v11, a1, v13);
  *&v11[*(v9 + 56)] = v12;

  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  LOBYTE(a1) = sub_264E238C8();
  v14 = *(v5 + 8);
  v14(v7, v4);
  if (a1)
  {
    sub_264E23888();
    v15 = sub_264E238C8();
    v14(v7, v4);
  }

  else
  {
    v15 = 0;
  }

  sub_264D817BC(v11, &qword_27FFB3458, &qword_264E2A228);
  return v15 & 1;
}

void sub_264E0E248(uint64_t a1, uint64_t a2)
{
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3458, &qword_264E2A228);
  MEMORY[0x28223BE20](v75);
  v74 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v73 = &v72 - v6;
  v79 = a2;
  v7 = a1;
  v8 = 0;
  sub_264DA25B0(sub_264E105FC, v78, v7);
  v72 = 0;
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v77 = v9;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
LABEL_5:
  v76 = v16;
  if (v13)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
LABEL_10:
      v18 = __clz(__rbit64(v13)) | (v15 << 6);
      v19 = v77;
      v20 = v77[6];
      v21 = sub_264E238E8();
      v22 = *(v21 - 8);
      v23 = v22;
      v24 = v20 + *(v22 + 72) * v18;
      v25 = v73;
      (*(v22 + 16))(v73, v24, v21);
      v26 = *(v19[7] + 8 * v18);
      v27 = v75;
      *(v25 + *(v75 + 48)) = v26;
      v28 = v74;
      sub_264E0F24C(v25, v74);
      v8 = *(v28 + *(v27 + 48));
      v29 = *(v23 + 8);

      v29(v28, v21);
      v30 = *(v8 + 2);
      v16 = v76;
      v31 = *(v76 + 2);
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        goto LABEL_49;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v32 > *(v16 + 3) >> 1)
      {
        if (v31 <= v32)
        {
          v34 = v31 + v30;
        }

        else
        {
          v34 = v31;
        }

        v16 = sub_264DBBD3C(isUniquelyReferenced_nonNull_native, v34, 1, v16);
      }

      v13 &= v13 - 1;
      if (*(v8 + 2))
      {
        if ((*(v16 + 3) >> 1) - *(v16 + 2) < v30)
        {
          goto LABEL_51;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v35 = *(v16 + 2);
          v36 = __OFADD__(v35, v30);
          v37 = v35 + v30;
          if (v36)
          {
            goto LABEL_52;
          }

          *(v16 + 2) = v37;
        }
      }

      else
      {

        if (v30)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_5;
    }
  }

  v75 = *(v16 + 2);
  if (v75)
  {
    v38 = v16;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = v38 + 32;
    v45 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v43 >= *(v76 + 2))
      {
        goto LABEL_46;
      }

      v49 = *(v44 + 1);
      v48 = *(v44 + 2);
      v50 = *v44;
      *&v85[15] = *(v44 + 47);
      v84 = v49;
      *v85 = v48;
      v83 = v50;
      v51 = *(&v50 + 1);
      v8 = v50;
      v52 = v39;
      v53 = v41;
      v54 = swift_allocObject();
      memmove((v54 + 16), v44, 0x33uLL);
      sub_264D90348(&v83, &v80);
      sub_264D90348(&v83, &v80);

      sub_264D91628(v52, v40);
      v55 = swift_allocObject();
      *(v55 + 16) = sub_264E0F5D8;
      *(v55 + 24) = v54;
      v77 = v54;
      sub_264D91628(v53, v42);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      *&v80 = v45;
      v58 = sub_264D9D57C(v8, v51);
      v59 = v45[2];
      v60 = (v57 & 1) == 0;
      v61 = v59 + v60;
      if (__OFADD__(v59, v60))
      {
        goto LABEL_47;
      }

      v62 = v57;
      if (v45[3] >= v61)
      {
        if (v56)
        {
          if (v57)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_264DA20B4();
          v45 = v80;
          if (v62)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        sub_264DA026C(v61, v56);
        v45 = v80;
        v63 = sub_264D9D57C(v8, v51);
        if ((v62 & 1) != (v64 & 1))
        {
          goto LABEL_54;
        }

        v58 = v63;
        if (v62)
        {
LABEL_24:

          v46 = 56 * v58;
          goto LABEL_25;
        }
      }

      (*(v55 + 16))(&v80);
      v45[(v58 >> 6) + 8] |= 1 << v58;
      v65 = (v45[6] + 16 * v58);
      *v65 = v8;
      v65[1] = v51;
      v46 = 56 * v58;
      v66 = v45[7] + 56 * v58;
      *v66 = v80;
      *(v66 + 16) = v81;
      *(v66 + 32) = v82[0];
      *(v66 + 47) = *(v82 + 15);
      v67 = v45[2];
      v36 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v36)
      {
        goto LABEL_48;
      }

      v45[2] = v68;
LABEL_25:
      ++v43;
      *(v45[7] + v46 + 16) = *&v84 + *(v45[7] + v46 + 16);
      sub_264E0F644(&v83);
      v44 += 56;
      v41 = sub_264E0F5F0;
      v39 = sub_264E0F5D8;
      v47 = v77;
      v40 = v77;
      v42 = v55;
      if (v75 == v43)
      {
        goto LABEL_39;
      }
    }
  }

  v39 = 0;
  v47 = 0;
  v41 = 0;
  v55 = 0;
  v45 = MEMORY[0x277D84F98];
LABEL_39:

  v69 = v45[2];
  if (!v69)
  {

    v8 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v8 = sub_264D8C348(v45[2], 0);
  v70 = sub_264D8E80C(&v80, v8 + 32, v69, v45);
  v71 = v80;
  v76 = *(&v81 + 1);
  v77 = v70;
  v75 = *&v82[0];
  swift_bridgeObjectRetain_n();
  sub_264D8F07C(v71);
  if (v77 != v69)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    sub_264E25498();
    __break(1u);
    goto LABEL_55;
  }

LABEL_43:
  *&v80 = v8;
  v8 = v72;
  sub_264E10428(&v80, &unk_2876A2DC8);
  if (!v8)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1EB8, &qword_264E26C70);
    swift_arrayDestroy();

    sub_264D91628(v39, v47);
    sub_264D91628(v41, v55);
    return;
  }

LABEL_55:

  __break(1u);
}

double sub_264E0E978@<D0>(__n128 *a1@<X8>)
{
  v3 = *(v1 + 24);

  sub_264E028EC(v4, v7, v3);
  result = v7[0].n128_f64[0];
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  a1[2].n128_u8[0] = v8;
  return result;
}

unint64_t sub_264E0E9D4()
{
  result = qword_27FFB3448;
  if (!qword_27FFB3448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3430, &qword_264E2A208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3448);
  }

  return result;
}

double sub_264E0EA58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 49) = 0;

  return result;
}

uint64_t sub_264E0EAD4(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  for (i = a3 + 40; ; i += 16)
  {
    v7 = *(i - 8);
    v8 = a1[1];
    v18 = *a1;
    v19 = v8;
    v20[0] = a1[2];
    *(v20 + 15) = *(a1 + 47);
    v9 = a2[1];
    v15 = *a2;
    v16 = v9;
    v17[0] = a2[2];
    *(v17 + 15) = *(a2 + 47);

    v7(&v21, &v18, &v15);
    if (v21)
    {
      break;
    }

    v10 = a2[1];
    v18 = *a2;
    v19 = v10;
    v20[0] = a2[2];
    *(v20 + 15) = *(a2 + 47);
    v11 = a1[1];
    v15 = *a1;
    v16 = v11;
    v17[0] = a1[2];
    *(v17 + 15) = *(a1 + 47);
    v7(&v21, &v18, &v15);
    if (v21)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  v13 = a1[1];
  v18 = *a1;
  v19 = v13;
  v20[0] = a1[2];
  *(v20 + 15) = *(a1 + 47);
  v14 = a2[1];
  v15 = *a2;
  v16 = v14;
  v17[0] = a2[2];
  *(v17 + 15) = *(a2 + 47);
  v7(&v21, &v18, &v15);

  return v21;
}

uint64_t sub_264E0EC44(char *__dst, char *__src, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = (__src - __dst) / 56;
  v13 = a3 - __src;
  v14 = (a3 - __src) / 56;
  if (v12 < v14)
  {
    v15 = 56 * v12;
    v16 = a4;
    if (a4 != __dst || &__dst[v15] <= a4)
    {
      memmove(a4, __dst, v15);
    }

    v17 = &v16[v15];
    if (v11 >= 56 && v9 < v8)
    {
      while (1)
      {
        v18 = *v9;
        v19 = *(v9 + 1);
        v20 = *(v9 + 2);
        *(v78 + 15) = *(v9 + 47);
        v77 = v19;
        v78[0] = v20;
        v76 = v18;
        memmove(&__dsta, v9, 0x33uLL);
        v21 = *v16;
        v22 = *(v16 + 1);
        v23 = *(v16 + 2);
        *(v81 + 15) = *(v16 + 47);
        v80 = v22;
        v81[0] = v23;
        v79 = v21;
        memmove(&v70, v16, 0x33uLL);
        sub_264D90348(&v76, &v67);
        sub_264D90348(&v79, &v67);
        v24 = sub_264E0EAD4(&__dsta, &v70, a5);
        if (v5)
        {
          v64 = v70;
          v65 = v71;
          v66[0] = *v72;
          *(v66 + 15) = *&v72[15];
          sub_264E0F644(&v64);
          v67 = __dsta;
          v68 = v74;
          v69[0] = *v75;
          *(v69 + 15) = *&v75[15];
          sub_264E0F644(&v67);
          v58 = 56 * ((v17 - v16) / 56);
          if (v10 < v16 || v10 >= &v16[v58] || v10 != v16)
          {
            v59 = v10;
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        v25 = v24;
        v64 = v70;
        v65 = v71;
        v66[0] = *v72;
        *(v66 + 15) = *&v72[15];
        sub_264E0F644(&v64);
        v67 = __dsta;
        v68 = v74;
        v69[0] = *v75;
        *(v69 + 15) = *&v75[15];
        sub_264E0F644(&v67);
        if ((v25 & 1) == 0)
        {
          break;
        }

        v26 = v9;
        v27 = v10 == v9;
        v9 += 56;
        if (!v27)
        {
          goto LABEL_13;
        }

LABEL_14:
        v10 += 56;
        if (v16 >= v17 || v9 >= v8)
        {
          goto LABEL_16;
        }
      }

      v26 = v16;
      v27 = v10 == v16;
      v16 += 56;
      if (v27)
      {
        goto LABEL_14;
      }

LABEL_13:
      v28 = *v26;
      v29 = *(v26 + 1);
      v30 = *(v26 + 2);
      *(v10 + 6) = *(v26 + 6);
      *(v10 + 1) = v29;
      *(v10 + 2) = v30;
      *v10 = v28;
      goto LABEL_14;
    }

LABEL_16:
    v9 = v10;
    goto LABEL_52;
  }

  v31 = 56 * v14;
  if (a4 != __src || &__src[v31] <= a4)
  {
    v32 = a4;
    memmove(a4, __src, 56 * v14);
    a4 = v32;
  }

  __srca = a4;
  v17 = (a4 + v31);
  if (v13 < 56 || v9 <= v10)
  {
    v16 = a4;
LABEL_52:
    v58 = 56 * ((v17 - v16) / 56);
    if (v9 < v16 || v9 >= &v16[v58] || v9 != v16)
    {
      v59 = v9;
LABEL_56:
      memmove(v59, v16, v58);
    }

LABEL_57:

    return 1;
  }

  v33 = -a4;
  v62 = -a4;
LABEL_23:
  v82 = v6;
  v34 = v9 - 56;
  v35 = &v17[v33];
  v8 -= 56;
  v36 = v17;
  while (1)
  {
    v17 = v36;
    v36 -= 56;
    v40 = *(v17 - 56);
    v41 = *(v17 - 40);
    v42 = *(v17 - 24);
    *(v78 + 15) = *(v17 - 9);
    v77 = v41;
    v78[0] = v42;
    v76 = v40;
    memmove(&__dsta, v36, 0x33uLL);
    v43 = *(v9 - 40);
    v79 = *v34;
    v80 = v43;
    v81[0] = *(v9 - 24);
    v44 = v81[0];
    *(v81 + 15) = *(v9 - 9);
    v70 = v79;
    v71 = v43;
    *v72 = v44;
    *&v72[15] = *(v81 + 15);
    sub_264D90348(&v76, &v67);
    sub_264D90348(&v79, &v67);
    v45 = v82;
    v46 = sub_264E0EAD4(&__dsta, &v70, a5);
    v82 = v45;
    if (v45)
    {
      break;
    }

    v47 = v46;
    v64 = v70;
    v65 = v71;
    v66[0] = *v72;
    *(v66 + 15) = *&v72[15];
    sub_264E0F644(&v64);
    v67 = __dsta;
    v68 = v74;
    v69[0] = *v75;
    *(v69 + 15) = *&v75[15];
    sub_264E0F644(&v67);
    v48 = (v8 + 56);
    if (v47)
    {
      if (v48 < v9 || v8 >= v9)
      {
        v55 = *v34;
        v56 = *(v9 - 40);
        v57 = *(v9 - 24);
        *(v8 + 48) = *(v9 - 1);
        *(v8 + 16) = v56;
        *(v8 + 32) = v57;
        *v8 = v55;
        v6 = v82;
        v16 = __srca;
        v33 = v62;
        if (v17 <= __srca)
        {
LABEL_40:
          v9 = v34;
          goto LABEL_52;
        }
      }

      else
      {
        v6 = v82;
        v16 = __srca;
        v33 = v62;
        if (v48 != v9)
        {
          v52 = *v34;
          v53 = *(v9 - 40);
          v54 = *(v9 - 24);
          *(v8 + 48) = *(v9 - 1);
          *(v8 + 16) = v53;
          *(v8 + 32) = v54;
          *v8 = v52;
        }

        if (v17 <= __srca)
        {
          goto LABEL_40;
        }
      }

      v9 -= 56;
      if (v34 > v10)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }

    if (v48 < v17 || v8 >= v17)
    {
      v37 = *v36;
      v38 = *(v36 + 1);
      v39 = *(v36 + 2);
      *(v8 + 48) = *(v36 + 6);
      *(v8 + 16) = v38;
      *(v8 + 32) = v39;
      *v8 = v37;
      v16 = __srca;
    }

    else
    {
      v16 = __srca;
      if (v48 != v17)
      {
        v49 = *v36;
        v50 = *(v36 + 1);
        v51 = *(v36 + 2);
        *(v8 + 48) = *(v36 + 6);
        *(v8 + 16) = v50;
        *(v8 + 32) = v51;
        *v8 = v49;
      }
    }

    v35 -= 56;
    v8 -= 56;
    if (v36 <= v16)
    {
      v17 = v36;
      goto LABEL_52;
    }
  }

  v64 = v70;
  v65 = v71;
  v66[0] = *v72;
  *(v66 + 15) = *&v72[15];
  sub_264E0F644(&v64);
  v67 = __dsta;
  v68 = v74;
  v69[0] = *v75;
  *(v69 + 15) = *&v75[15];
  sub_264E0F644(&v67);
  v60 = 56 * (v35 / 56);
  if (v9 >= __srca && v9 < &__srca[v60])
  {
    if (v9 != __srca)
    {
      memmove(v9, __srca, v60);
    }

    goto LABEL_57;
  }

  memmove(v9, __srca, v60);

  return 1;
}

uint64_t sub_264E0F24C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3458, &qword_264E2A228);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E0F2BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MostUsedListSectionAppsAndCategories(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E0F320()
{
  v1 = (type metadata accessor for MostUsedListSectionAppsAndCategories(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 56));
  v5 = v1[7];
  v6 = sub_264E238E8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264E0F438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MostUsedListSectionAppsAndCategories(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E0F49C()
{
  v1 = *(type metadata accessor for MostUsedListSectionAppsAndCategories(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_264E0DBFC(v2);
}

unint64_t sub_264E0F504()
{
  result = qword_27FFB3470;
  if (!qword_27FFB3470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3468, &qword_264E2A240);
    sub_264D9CE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3470);
  }

  return result;
}

uint64_t sub_264E0F590()
{

  return MEMORY[0x2821FE8E8](v0, 67, 7);
}

double sub_264E0F5F0@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v6[0];
  *(a1 + 32) = *v6;
  *(a1 + 47) = *(&v6[1] + 7);
  return result;
}

uint64_t sub_264E0F674(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  v176 = a5;
  swift_bridgeObjectRetain_n();
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_92:
    v140 = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_94;
    }

    goto LABEL_132;
  }

  v136 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      goto LABEL_18;
    }

    v13 = *a3;
    v14 = *a3 + 56 * v12;
    v15 = *v14;
    v16 = *(v14 + 16);
    v17 = *(v14 + 32);
    *(v171 + 15) = *(v14 + 47);
    v170 = v16;
    v171[0] = v17;
    v169 = v15;
    v18 = *(v14 + 16);
    v166 = *v14;
    v167 = v18;
    v168[0] = *(v14 + 32);
    *(v168 + 15) = *(v14 + 47);
    v19 = v13 + 56 * v11;
    v21 = *(v19 + 16);
    v20 = *(v19 + 32);
    v22 = *v19;
    *&v174[15] = *(v19 + 47);
    v173 = v21;
    *v174 = v20;
    v172 = v22;
    v23 = *(v19 + 16);
    v163 = *v19;
    v164 = v23;
    v165[0] = *(v19 + 32);
    *(v165 + 15) = *(v19 + 47);
    sub_264D90348(&v169, &v160);
    sub_264D90348(&v172, &v160);
    v24 = sub_264E0EAD4(&v166, &v163, v176);
    if (v6)
    {
LABEL_103:
      v157 = v163;
      v158 = v164;
      v159[0] = v165[0];
      *(v159 + 15) = *(v165 + 15);
      sub_264E0F644(&v157);
      v160 = v166;
      v161 = v167;
      v162[0] = v168[0];
      *(v162 + 15) = *(v168 + 15);
      sub_264E0F644(&v160);
LABEL_104:
      swift_bridgeObjectRelease_n();
    }

    v25 = v24;
    v157 = v163;
    v158 = v164;
    v159[0] = v165[0];
    *(v159 + 15) = *(v165 + 15);
    sub_264E0F644(&v157);
    v160 = v166;
    v161 = v167;
    v162[0] = v168[0];
    *(v162 + 15) = *(v168 + 15);
    sub_264E0F644(&v160);
    v26 = v11 + 2;
    if (v11 + 2 >= v8)
    {
      v28 = v11 + 2;
      if (v25)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v140 = v11;
      v27 = v13 + 56 * v11 + 112;
      while (1)
      {
        v28 = v26;
        v29 = *v27;
        v30 = *(v27 + 16);
        v31 = *(v27 + 32);
        *(v153 + 15) = *(v27 + 47);
        v152[1] = v30;
        v153[0] = v31;
        v152[0] = v29;
        v32 = *(v27 + 16);
        v149 = *v27;
        v150 = v32;
        v151[0] = *(v27 + 32);
        *(v151 + 15) = *(v27 + 47);
        v33 = *(v27 - 40);
        v34 = *(v27 - 24);
        v35 = *(v27 - 56);
        *(v156 + 15) = *(v27 - 9);
        v155 = v33;
        v156[0] = v34;
        v154 = v35;
        v36 = *(v27 - 40);
        v146 = *(v27 - 56);
        v147 = v36;
        v148[0] = *(v27 - 24);
        *(v148 + 15) = *(v27 - 9);
        sub_264D90348(v152, v144);
        sub_264D90348(&v154, v144);
        v37 = sub_264E0EAD4(&v149, &v146, v176);
        v142[0] = v146;
        v142[1] = v147;
        v143[0] = v148[0];
        *(v143 + 15) = *(v148 + 15);
        sub_264E0F644(v142);
        v144[0] = v149;
        v144[1] = v150;
        v145[0] = v151[0];
        *(v145 + 15) = *(v151 + 15);
        sub_264E0F644(v144);
        if ((v25 ^ v37))
        {
          break;
        }

        v26 = v28 + 1;
        v27 += 56;
        if (v8 == v28 + 1)
        {
          v12 = v28;
          v28 = v8;
          goto LABEL_14;
        }
      }

      v12 = v28 - 1;
LABEL_14:
      v11 = v140;
      if (v25)
      {
LABEL_15:
        if (v28 < v11)
        {
          goto LABEL_126;
        }

        if (v11 <= v12)
        {
          v12 = v28;
          v112 = 56 * v28 - 56;
          v113 = 56 * v11;
          v114 = v28;
          v115 = v11;
          do
          {
            if (v115 != --v114)
            {
              v116 = *a3;
              if (!*a3)
              {
                goto LABEL_130;
              }

              v117 = (v116 + v113);
              v118 = (v116 + v112);
              v156[0] = v117[2];
              *(v156 + 15) = *(v117 + 47);
              v120 = *v117;
              v119 = v117[1];
              v122 = v118[1];
              v121 = v118[2];
              v123 = *v118;
              *(v117 + 6) = *(v118 + 6);
              v117[1] = v122;
              v117[2] = v121;
              *v117 = v123;
              *v118 = v120;
              v118[1] = v119;
              v118[2] = v156[0];
              *(v118 + 47) = *(v156 + 15);
            }

            ++v115;
            v112 -= 56;
            v113 += 56;
          }

          while (v115 < v114);
          goto LABEL_18;
        }
      }
    }

    v12 = v28;
LABEL_18:
    v38 = a3[1];
    if (v12 >= v38)
    {
      goto LABEL_135;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_122;
    }

    if (v12 - v11 >= v136)
    {
      goto LABEL_135;
    }

    v39 = v11 + v136;
    if (__OFADD__(v11, v136))
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_128:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_129;
    }

    if (v39 >= v38)
    {
      v39 = a3[1];
    }

    if (v39 < v11)
    {
      goto LABEL_125;
    }

    if (v12 == v39)
    {
LABEL_135:
      if (v12 < v11)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v91 = *a3;
      v92 = *a3 + 56 * v12;
      v140 = v11;
      v93 = v11 - v12 + 1;
      v134 = v39;
      do
      {
        v139 = v12;
        v135 = v93;
        v94 = v93;
        v95 = v92;
        for (i = v92; ; i -= 56)
        {
          v97 = *i;
          v98 = *(i + 16);
          v99 = *(i + 32);
          *(v171 + 15) = *(i + 47);
          v170 = v98;
          v171[0] = v99;
          v169 = v97;
          v100 = *(i + 16);
          v166 = *i;
          v167 = v100;
          v168[0] = *(i + 32);
          *(v168 + 15) = *(i + 47);
          v101 = *(i - 40);
          v102 = *(i - 24);
          v103 = *(i - 56);
          *&v174[15] = *(i - 9);
          v173 = v101;
          *v174 = v102;
          v172 = v103;
          v104 = *(i - 40);
          v163 = *(i - 56);
          v164 = v104;
          v165[0] = *(i - 24);
          *(v165 + 15) = *(i - 9);
          sub_264D90348(&v169, &v160);
          sub_264D90348(&v172, &v160);
          v105 = sub_264E0EAD4(&v166, &v163, v176);
          if (v6)
          {
            goto LABEL_103;
          }

          v106 = v105;
          v157 = v163;
          v158 = v164;
          v159[0] = v165[0];
          *(v159 + 15) = *(v165 + 15);
          sub_264E0F644(&v157);
          v160 = v166;
          v161 = v167;
          v162[0] = v168[0];
          *(v162 + 15) = *(v168 + 15);
          sub_264E0F644(&v160);
          if ((v106 & 1) == 0)
          {
            break;
          }

          if (!v91)
          {
            goto LABEL_128;
          }

          v107 = i - 56;
          v156[0] = *(i + 32);
          *(v156 + 15) = *(i + 47);
          v154 = *i;
          v108 = v154;
          v155 = *(i + 16);
          v109 = v155;
          v110 = *(i - 40);
          *i = *(i - 56);
          *(i + 16) = v110;
          *(i + 32) = *(i - 24);
          *(i + 48) = *(i - 8);
          *v107 = v108;
          *(v107 + 47) = *(v156 + 15);
          v111 = v156[0];
          *(v107 + 16) = v109;
          *(v107 + 32) = v111;
          if (!v94)
          {
            break;
          }

          ++v94;
        }

        v12 = v139 + 1;
        v92 = v95 + 56;
        v93 = v135 - 1;
      }

      while (v139 + 1 != v134);
      v12 = v134;
      v11 = v140;
      if (v134 < v140)
      {
        goto LABEL_121;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_264D9E030(0, *(v10 + 2) + 1, 1, v10);
    }

    v41 = *(v10 + 2);
    v40 = *(v10 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v10 = sub_264D9E030((v40 > 1), v41 + 1, 1, v10);
    }

    *(v10 + 2) = v42;
    v43 = &v10[16 * v41];
    *(v43 + 4) = v11;
    *(v43 + 5) = v12;
    v138 = v12;
    v140 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v41)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v138;
    if (v138 >= v8)
    {
      goto LABEL_92;
    }
  }

  while (1)
  {
    v44 = v42 - 1;
    if (v42 >= 4)
    {
      v49 = &v10[16 * v42 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_108;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_109;
      }

      v56 = &v10[16 * v42];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_111;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_114;
      }

      if (v60 >= v52)
      {
        v78 = &v10[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v42 - 2;
        }

        goto LABEL_67;
      }

      goto LABEL_46;
    }

    if (v42 == 3)
    {
      v45 = *(v10 + 4);
      v46 = *(v10 + 5);
      v55 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      v48 = v55;
LABEL_46:
      if (v48)
      {
        goto LABEL_110;
      }

      v61 = &v10[16 * v42];
      v63 = *v61;
      v62 = *(v61 + 1);
      v64 = __OFSUB__(v62, v63);
      v65 = v62 - v63;
      v66 = v64;
      if (v64)
      {
        goto LABEL_113;
      }

      v67 = &v10[16 * v44 + 32];
      v69 = *v67;
      v68 = *(v67 + 1);
      v55 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v55)
      {
        goto LABEL_116;
      }

      if (__OFADD__(v65, v70))
      {
        goto LABEL_117;
      }

      if (v65 + v70 >= v47)
      {
        if (v47 < v70)
        {
          v44 = v42 - 2;
        }

        goto LABEL_67;
      }

      goto LABEL_60;
    }

    v71 = &v10[16 * v42];
    v73 = *v71;
    v72 = *(v71 + 1);
    v55 = __OFSUB__(v72, v73);
    v65 = v72 - v73;
    v66 = v55;
LABEL_60:
    if (v66)
    {
      goto LABEL_112;
    }

    v74 = &v10[16 * v44];
    v76 = *(v74 + 4);
    v75 = *(v74 + 5);
    v55 = __OFSUB__(v75, v76);
    v77 = v75 - v76;
    if (v55)
    {
      goto LABEL_115;
    }

    if (v77 < v65)
    {
      goto LABEL_3;
    }

LABEL_67:
    v82 = v44 - 1;
    if (v44 - 1 >= v42)
    {
      break;
    }

    v83 = *a3;
    if (!*a3)
    {
      goto LABEL_127;
    }

    v84 = *&v10[16 * v82 + 32];
    v85 = *&v10[16 * v44 + 40];
    v86 = (v83 + 56 * v84);
    v87 = (v83 + 56 * *&v10[16 * v44 + 32]);
    v88 = v83 + 56 * v85;
    v89 = v176;

    sub_264E0EC44(v86, v87, v88, v140, v89);
    if (v6)
    {
      goto LABEL_104;
    }

    if (v85 < v84)
    {
      goto LABEL_106;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_264D9E01C(v10);
    }

    if (v82 >= *(v10 + 2))
    {
      goto LABEL_107;
    }

    v90 = &v10[16 * v82];
    *(v90 + 4) = v84;
    *(v90 + 5) = v85;
    v175 = v10;
    sub_264D9DF90(v44);
    v10 = v175;
    v42 = *(v175 + 2);
    if (v42 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
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
  v10 = sub_264D9E01C(v10);
LABEL_94:
  v175 = v10;
  v124 = *(v10 + 2);
  if (v124 < 2)
  {
LABEL_102:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v125 = *a3;
      if (!*a3)
      {
        break;
      }

      v126 = *&v10[16 * v124];
      v127 = *&v10[16 * v124 + 24];
      v128 = (v125 + 56 * v126);
      v129 = (v125 + 56 * *&v10[16 * v124 + 16]);
      v130 = v125 + 56 * v127;
      v131 = v176;

      sub_264E0EC44(v128, v129, v130, v140, v131);
      if (v6)
      {
        goto LABEL_102;
      }

      if (v127 < v126)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_264D9E01C(v10);
      }

      if (v124 - 2 >= *(v10 + 2))
      {
        goto LABEL_119;
      }

      v132 = &v10[16 * v124];
      *v132 = v126;
      *(v132 + 1) = v127;
      v175 = v10;
      sub_264D9DF90(v124 - 1);
      v10 = v175;
      v124 = *(v175 + 2);
      if (v124 <= 1)
      {
        goto LABEL_102;
      }
    }

LABEL_129:

    __break(1u);
LABEL_130:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_131:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_132:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_264E100BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 56 * a3;
    v10 = result - a3 + 1;
LABEL_4:
    v11 = v10;
    v44 = v9;
    while (1)
    {
      v12 = *v9;
      v13 = *(v9 + 16);
      v14 = *(v9 + 32);
      *(v41 + 15) = *(v9 + 47);
      v40[1] = v13;
      v41[0] = v14;
      v40[0] = v12;
      v15 = *(v9 + 16);
      v37 = *v9;
      v38 = v15;
      v39[0] = *(v9 + 32);
      *(v39 + 15) = *(v9 + 47);
      v16 = *(v9 - 40);
      v17 = *(v9 - 24);
      v18 = *(v9 - 56);
      *&v43[15] = *(v9 - 9);
      v42[1] = v16;
      *v43 = v17;
      v42[0] = v18;
      v19 = *(v9 - 40);
      v34 = *(v9 - 56);
      v35 = v19;
      v36[0] = *(v9 - 24);
      *(v36 + 15) = *(v9 - 9);
      sub_264D90348(v40, &v31);
      sub_264D90348(v42, &v31);
      v20 = sub_264E0EAD4(&v37, &v34, a5);
      if (v5)
      {
        v28 = v34;
        v29 = v35;
        v30[0] = v36[0];
        *(v30 + 15) = *(v36 + 15);
        sub_264E0F644(&v28);
        v31 = v37;
        v32 = v38;
        v33[0] = v39[0];
        *(v33 + 15) = *(v39 + 15);
        return sub_264E0F644(&v31);
      }

      v21 = v20;
      v28 = v34;
      v29 = v35;
      v30[0] = v36[0];
      *(v30 + 15) = *(v36 + 15);
      sub_264E0F644(&v28);
      v31 = v37;
      v32 = v38;
      v33[0] = v39[0];
      *(v33 + 15) = *(v39 + 15);
      result = sub_264E0F644(&v31);
      if ((v21 & 1) == 0)
      {
LABEL_3:
        ++v7;
        v9 = v44 + 56;
        --v10;
        if (v7 == a2)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      v22 = v9 - 56;
      v23 = *(v9 + 16);
      *v27 = *(v9 + 32);
      *&v27[15] = *(v9 + 47);
      v24 = *v9;
      v25 = *(v9 - 40);
      *v9 = *(v9 - 56);
      *(v9 + 16) = v25;
      *(v9 + 32) = *(v9 - 24);
      *(v9 + 48) = *(v9 - 8);
      *(v22 + 47) = *&v27[15];
      *(v22 + 16) = v23;
      *(v22 + 32) = *v27;
      *v22 = v24;
      if (!v11)
      {
        goto LABEL_3;
      }

      ++v11;
      v9 -= 56;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_264E102E0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_264E25458();
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
        v8 = sub_264E251E8();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_264E0F674(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
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

    sub_264E100BC(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_264E10428(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_264DA4974(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_264E102E0(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

unint64_t sub_264E104E0()
{
  result = qword_27FFB3488;
  if (!qword_27FFB3488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3490, qword_264E2A2C8);
    sub_264E10564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3488);
  }

  return result;
}

unint64_t sub_264E10564()
{
  result = qword_27FFB3498;
  if (!qword_27FFB3498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3450, &qword_264E2A220);
    sub_264E0E9D4();
    sub_264D9CF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3498);
  }

  return result;
}

uint64_t PickupsHeaderView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0) - 8;
  MEMORY[0x28223BE20](v56);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v42 - v8;
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = sub_264E23C38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v44 = sub_264DEB44C(MEMORY[0x277D84F90]);
  v50 = v15;
  v21 = *(v15 + 16);
  v54 = a1;
  v21(v20, a1, v14);
  v22 = sub_264E23AA8();
  v43 = *(v22 - 8);
  v23 = v43 + 56;
  v24 = *(v43 + 56);
  v24(v13, 1, 1, v22);
  v51 = v20;
  v21(v17, v20, v14);
  v53 = v13;
  v25 = v24;
  v26 = v45;
  sub_264D93A14(v13, v45);
  v46 = v17;
  v27 = v17;
  v28 = v14;
  v21(v4, v27, v14);
  v29 = v56;
  v30 = *(v56 + 44);
  sub_264DEB44C(MEMORY[0x277D84F90]);
  v48 = *(v29 + 52);
  v49 = v25;
  v52 = v23;
  v25(&v4[v48], 1, 1, v22);

  v4[*(v29 + 48)] = 1;
  v56 = v4;
  *&v4[v30] = v44;
  v31 = v47;
  v32 = v26;
  v33 = v43;
  v34 = v32;
  sub_264D93A14(v32, v47);
  v35 = *(v33 + 48);
  if (v35(v31, 1, v22) == 1)
  {
    v36 = v55;
    sub_264E23A98();
    v37 = *(v50 + 8);
    v37(v54, v28);
    sub_264D817BC(v34, &qword_27FFB1860, &qword_264E267E0);
    v37(v46, v28);
    sub_264D817BC(v53, &qword_27FFB1860, &qword_264E267E0);
    v37(v51, v28);
    v38 = v36;
    if (v35(v31, 1, v22) != 1)
    {
      sub_264D817BC(v31, &qword_27FFB1860, &qword_264E267E0);
    }
  }

  else
  {
    v39 = *(v50 + 8);
    v39(v54, v28);
    sub_264D817BC(v34, &qword_27FFB1860, &qword_264E267E0);
    v39(v46, v28);
    sub_264D817BC(v53, &qword_27FFB1860, &qword_264E267E0);
    v39(v51, v28);
    v38 = v55;
    (*(v33 + 32))(v55, v31, v22);
  }

  v49(v38, 0, 1, v22);
  v40 = v56;
  sub_264DEB634(v38, v56 + v48);
  return sub_264E10EE4(v40, v57);
}

uint64_t PickupsHeaderView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PickupsHeaderView.Model(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB34A0, &qword_264E2A310);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  sub_264E10F74(v1, v4);
  sub_264E10EE4(v4, v7);
  v8 = type metadata accessor for PickupsHeaderView(0);
  v9 = v8[6];
  v10 = *(v1 + v8[5]);
  v11 = v5[10];
  v12 = sub_264E238E8();
  (*(*(v12 - 8) + 16))(&v7[v11], v1 + v9, v12);
  v13 = *(v1 + v8[7]);
  *&v7[v5[9]] = v10;
  v14 = &v7[v5[11]];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v7[v5[12]] = v13;
  v15 = &v7[v5[13]];
  *v15 = sub_264DF82C0;
  *(v15 + 1) = 0;
  sub_264E10FF8();

  sub_264E24C08();
  return sub_264D817BC(v7, &qword_27FFB34A0, &qword_264E2A310);
}

uint64_t sub_264E10D0C(int *a1)
{
  v3 = v1;
  v4 = type metadata accessor for PickupsHeaderView.Model(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB34A0, &qword_264E2A310);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  sub_264E10F74(v3, v6);
  sub_264E10EE4(v6, v9);
  v10 = a1[6];
  v11 = *(v3 + a1[5]);
  v12 = v7[10];
  v13 = sub_264E238E8();
  (*(*(v13 - 8) + 16))(&v9[v12], v3 + v10, v13);
  v14 = *(v3 + a1[7]);
  *&v9[v7[9]] = v11;
  v15 = &v9[v7[11]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v9[v7[12]] = v14;
  v16 = &v9[v7[13]];
  *v16 = sub_264DF82C0;
  *(v16 + 1) = 0;
  sub_264E10FF8();

  sub_264E24C08();
  return sub_264D817BC(v9, &qword_27FFB34A0, &qword_264E2A310);
}

uint64_t sub_264E10EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E10F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickupsHeaderView.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_264E10FF8()
{
  result = qword_27FFB34A8;
  if (!qword_27FFB34A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB34A0, &qword_264E2A310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB34A8);
  }

  return result;
}

uint64_t sub_264E1108C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickupsHeaderView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_264E238E8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_264E111B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PickupsHeaderView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_264E238E8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_264E112C0(uint64_t a1)
{
  type metadata accessor for PickupsHeaderView.Model(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for STActivityMode(319);
    if (v2 <= 0x3F)
    {
      sub_264E238E8();
      if (v3 <= 0x3F)
      {
        sub_264DDB468(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_264E11388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264E11414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_264E11490(uint64_t a1)
{
  sub_264E114FC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_264E114FC(uint64_t a1)
{
  if (!qword_27FFB34D0)
  {
    v2 = sub_264E11558();
    v4 = type metadata accessor for ChartHeaderView.Model(a1, &type metadata for AverageView, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27FFB34D0);
    }
  }
}

unint64_t sub_264E11558()
{
  result = qword_27FFB34D8;
  if (!qword_27FFB34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB34D8);
  }

  return result;
}

unint64_t sub_264E115B0()
{
  result = qword_27FFB34E0;
  if (!qword_27FFB34E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB34E8, &qword_264E2A3B8);
    sub_264E10FF8();
    sub_264DA89E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB34E0);
  }

  return result;
}

uint64_t UsageDetailChart.Model.contains(date:)(uint64_t a1)
{
  v1 = sub_264E23AA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UsageDetailChart.Model(0);
  sub_264E23AF8();
  v5 = sub_264E23A78();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

uint64_t UsageDetailChart.Model.init(startOfDay:usage:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UsageDetailChart.Model(0);
  *(a4 + v8[7]) = 0x40BC200000000000;
  *(a4 + v8[8]) = 3;
  v9 = sub_264E23AA8();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  *(a4 + v8[5]) = a2;
  v10 = v8[6];
  v11 = sub_264E23C38();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

int *UsageDetailChart.HourlyUsage.init(hour:totalUsage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_264E238E8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a2, a1, v6);
  v8 = MEMORY[0x277D84F90];
  v9 = sub_264DEB098(MEMORY[0x277D84F90]);
  v10 = sub_264DEB098(v8);
  (*(v7 + 8))(a1, v6);
  result = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  *(a2 + result[5]) = a3;
  *(a2 + result[6]) = v9;
  *(a2 + result[7]) = v10;
  return result;
}

uint64_t sub_264E119C4(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v71 = sub_264E23B78();
  v59 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_264E23B98();
  v57 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_264E23B38();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v74 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v52 - v9;
  v56 = sub_264E23928();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v72 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v52 - v12;
  v75 = sub_264E23C18();
  v13 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v66 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_264E23AA8();
  v76 = *(v15 - 8);
  v16 = v76;
  v17 = v76;
  MEMORY[0x28223BE20](v15);
  v82 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  MEMORY[0x28223BE20](v22);
  v52 = &v52 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v52 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v52 - v28;
  v80 = a1;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
  v30 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v79 = *(v16 + 72);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_264E261E0;
  v78 = v30;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v64 = *MEMORY[0x277CC9980];
  v62 = *(v13 + 104);
  v63 = v13 + 104;
  v32 = v66;
  v62(v66);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v65 = sub_264E23C28();
  v81 = *(v76 + 8);
  v81(v26, v15);
  v33 = *(v13 + 8);
  v60 = v13 + 8;
  v61 = v33;
  v34 = v32;
  v35 = v75;
  v33(v32, v75);
  (v62)(v32, v64, v35);
  sub_264E23888();
  v36 = v65 | sub_264E23C28();
  v81(v26, v15);
  v61(v34, v35);
  if (v36)
  {
    v37 = v76;
  }

  else
  {
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v38 = sub_264E23C38();
    (*(*(v38 - 8) + 56))(v53, 1, 1, v38);
    v39 = sub_264E23C48();
    (*(*(v39 - 8) + 56))(v54, 1, 1, v39);
    sub_264E23918();
    (*(v67 + 104))(v74, *MEMORY[0x277CC9878], v69);
    v40 = v57;
    (*(v57 + 104))(v68, *MEMORY[0x277CC9900], v70);
    v41 = v59;
    v42 = v58;
    (*(v59 + 104))(v58, *MEMORY[0x277CC98E8], v71);
    sub_264E23C08();
    (*(v41 + 8))(v42, v71);
    (*(v40 + 8))(v68, v70);
    (*(v67 + 8))(v74, v69);
    (*(v55 + 8))(v72, v56);
    v81(v26, v15);
    v37 = v76;
    if ((*(v76 + 48))(v73, 1, v15) == 1)
    {
      sub_264D817BC(v73, &qword_27FFB1860, &qword_264E267E0);
    }

    else
    {
      v43 = *(v37 + 32);
      v44 = v52;
      v43(v52, v73, v15);
      (*(v37 + 16))(v26, v44, v15);
      v31 = sub_264DBC178(1, 2, 1, v31);
      v81(v29, v15);
      *(v31 + 16) = 2;
      v43((v31 + v78 + v79), v26, v15);
      v43(v29, v44, v15);
    }
  }

  v45 = (v37 + 16);
  for (i = (v37 + 32); ; (*i)(v31 + v78 + v50 * v79, v82, v15))
  {
    sub_264E23A68();
    sub_264E23888();
    sub_264E16450(&qword_27FFB1BF0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v47 = sub_264E25048();
    v48 = v81;
    v81(v21, v15);
    v48(v26, v15);
    if (v47)
    {
      break;
    }

    sub_264E23A88();
    (*v45)(v82, v29, v15);
    v50 = *(v31 + 16);
    v49 = *(v31 + 24);
    if (v50 >= v49 >> 1)
    {
      v31 = sub_264DBC178((v49 > 1), v50 + 1, 1, v31);
    }

    *(v31 + 16) = v50 + 1;
  }

  v48(v29, v15);
  return v31;
}

uint64_t sub_264E12550@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_264E125C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_264E238E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23858();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for UsageDetailChart.Model(0);
  sub_264E23AF8();
  v13 = sub_264E23A78();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  return v13 & 1;
}

void sub_264E127A8()
{
  v18 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  v1 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = *(v0 + *(type metadata accessor for UsageDetailChart.Model(0) + 20));
  v20 = v0;

  sub_264D82E60(sub_264E17558, v19, v7);
  v9 = v8;
  v17 = *(v8 + 16);
  if (v17)
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (v10 < *(v9 + 16))
    {
      v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v13 = *(v1 + 72);
      sub_264E16344(v9 + v12 + v13 * v10, v6, type metadata accessor for UsageDetailChart.HourlyUsage);
      if (*(*&v6[*(v18 + 24)] + 16))
      {
        sub_264E160FC(v6, v3, type metadata accessor for UsageDetailChart.HourlyUsage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_264D8D470(0, *(v11 + 16) + 1, 1);
          v11 = v21;
        }

        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_264D8D470((v15 > 1), v16 + 1, 1);
          v11 = v21;
        }

        *(v11 + 16) = v16 + 1;
        sub_264E160FC(v3, v11 + v12 + v16 * v13, type metadata accessor for UsageDetailChart.HourlyUsage);
      }

      else
      {
        sub_264E163AC(v6);
      }

      if (v17 == ++v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

void sub_264E12A20()
{
  v58 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  v5 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264DEB098(MEMORY[0x277D84F90]);
  sub_264E127A8();
  isUniquelyReferenced_nonNull_native = v8;
  v10 = *(v0 + *(type metadata accessor for UsageDetailChart.Model(0) + 20));
  v62 = v0;

  sub_264D82E60(sub_264E17558, v61, v10);
  v51 = 0;
  v56 = *(v11 + 16);
  if (!v56)
  {

    v12 = 0;
    goto LABEL_30;
  }

  v12 = 0;
  v13 = 0;
  v55 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v14 = 28;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v14 = 24;
  }

  v53 = v5;
  v54 = v14;
  v52 = v11;
  while (2)
  {
    if (v13 >= *(v11 + 16))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v15 = v57;
    sub_264E16344(v55 + *(v5 + 72) * v13, v57, type metadata accessor for UsageDetailChart.HourlyUsage);
    v59 = v13 + 1;
    v16 = *(v15 + *(v58 + v54));

    sub_264E163AC(v15);
    v1 = 0;
    v3 = v16 + 64;
    v17 = *(v16 + 64);
    v60 = v16;
    v18 = 1 << *(v16 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v2 = v19 & v17;
    v13 = (v18 + 63) >> 6;
    while (v2)
    {
LABEL_18:
      v23 = __clz(__rbit64(v2)) | (v1 << 6);
      v24 = (*(v60 + 48) + 16 * v23);
      v5 = *v24;
      v4 = v24[1];
      v25 = *(*(v60 + 56) + 8 * v23);

      sub_264D91628(v12, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v7;
      v21 = sub_264D9D57C(v5, v4);
      v27 = v7[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v12 = v26;
      if (v7[3] < v30)
      {
        sub_264D9E134(v30, isUniquelyReferenced_nonNull_native);
        v21 = sub_264D9D57C(v5, v4);
        if ((v12 & 1) != (v31 & 1))
        {
          sub_264E25498();
          __break(1u);
          goto LABEL_55;
        }

LABEL_23:
        v7 = v63[0];
        if (v12)
        {
          goto LABEL_11;
        }

        goto LABEL_24;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v35 = v21;
      sub_264DA0FDC();
      v21 = v35;
      v7 = v63[0];
      if (v12)
      {
LABEL_11:
        v20 = v21;

        v21 = v20;
        goto LABEL_12;
      }

LABEL_24:
      v7[(v21 >> 6) + 8] |= 1 << v21;
      v32 = (v7[6] + 16 * v21);
      *v32 = v5;
      v32[1] = v4;
      *(v7[7] + 8 * v21) = 0;
      v33 = v7[2];
      v29 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v29)
      {
        goto LABEL_51;
      }

      v7[2] = v34;
LABEL_12:
      v2 &= v2 - 1;
      *(v7[7] + 8 * v21) = v25 + *(v7[7] + 8 * v21);
      v12 = sub_264D80DA8;
    }

    while (1)
    {
      v22 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      if (v22 >= v13)
      {
        break;
      }

      v2 = *(v3 + 8 * v22);
      ++v1;
      if (v2)
      {
        v1 = v22;
        goto LABEL_18;
      }
    }

    v13 = v59;
    v11 = v52;
    v5 = v53;
    if (v59 != v56)
    {
      continue;
    }

    break;
  }

LABEL_30:
  v36 = v7[2];
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    isUniquelyReferenced_nonNull_native = sub_264D8C20C(v7[2], 0);
    v13 = sub_264D8E104(v63, (isUniquelyReferenced_nonNull_native + 32), v36, v7);
    v1 = v63[0];
    v2 = v63[1];
    v3 = v63[2];
    v4 = v63[3];
    v5 = v63[4];

    sub_264D8F07C(v1);
    if (v13 == v36)
    {
      v37 = MEMORY[0x277D84F90];
      goto LABEL_34;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    sub_264D8D0D4((v4 > 1), v5, 1);
    v39 = v63[0];
LABEL_40:
    *(v39 + 16) = v5;
    v40 = v39 + 16 * v3;
    *(v40 + 32) = v2;
    *(v40 + 40) = isUniquelyReferenced_nonNull_native;
    if (v1 != 1)
    {
      v42 = *(v13 + 56);
      v41 = *(v13 + 64);
      v63[0] = v39;
      v43 = *(v39 + 16);
      v44 = *(v39 + 24);

      if (v43 >= v44 >> 1)
      {
        sub_264D8D0D4((v44 > 1), v43 + 1, 1);
        v39 = v63[0];
      }

      *(v39 + 16) = v43 + 1;
      v45 = v39 + 16 * v43;
      *(v45 + 32) = v42;
      *(v45 + 40) = v41;
      if (v1 != 2)
      {
        v47 = *(v13 + 80);
        v46 = *(v13 + 88);
        v63[0] = v39;
        v48 = *(v39 + 16);
        v49 = *(v39 + 24);

        if (v48 >= v49 >> 1)
        {
          sub_264D8D0D4((v49 > 1), v48 + 1, 1);
          v39 = v63[0];
        }

        *(v39 + 16) = v48 + 1;
        v50 = v39 + 16 * v48;
        *(v50 + 32) = v47;
        *(v50 + 40) = v46;
      }
    }

    goto LABEL_47;
  }

  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
LABEL_34:
  v63[0] = isUniquelyReferenced_nonNull_native;
  v13 = v51;
  sub_264D8C4F4(v63);
  if (v13)
  {
LABEL_55:

    __break(1u);
  }

  else
  {
    v13 = v63[0];
    v1 = *(v63[0] + 16);
    if (v1)
    {
      if (v1 >= 3)
      {
        v38 = 3;
      }

      else
      {
        v38 = *(v63[0] + 16);
      }

      v63[0] = v37;
      sub_264D8D0D4(0, v38, 0);
      v39 = v63[0];
      v2 = *(v13 + 32);
      isUniquelyReferenced_nonNull_native = *(v13 + 40);
      v3 = *(v63[0] + 16);
      v4 = *(v63[0] + 24);
      v5 = v3 + 1;

      if (v3 >= v4 >> 1)
      {
        goto LABEL_54;
      }

      goto LABEL_40;
    }

LABEL_47:

    sub_264D91628(v12, 0);
  }
}

uint64_t sub_264E12FF8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35B0, &qword_264E2A658);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v72 - v7;
  v9 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v72 - v14;
  v15 = *(v2 + *(type metadata accessor for UsageDetailChart.Model(0) + 32));
  sub_264E127A8();
  v17 = result;
  if (!a2 || !*(a2 + 16))
  {
    sub_264E12A20();
    v21 = v23;
    sub_264E16344(a1, v79, type metadata accessor for UsageDetailChart.HourlyUsage);
    if (v17)
    {
      v24 = 28;
    }

    else
    {
      v24 = 24;
    }

    v28 = v15;
    v29 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_10;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v74 = v10;
  v75 = v8;
  v18 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v76 = v9;
  v19 = *(v18 + *(v9 + 24));
  v20 = *(v19 + 16);
  if (v20)
  {
    v77 = 0;
    v78 = a1;
    v21 = sub_264D8C29C(v20, 0);
    v73 = sub_264D8E260(&v80, v21 + 4, v20, v19);
    v22 = v80;

    result = sub_264D8F07C(v22);
    if (v73 != v20)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v5 = v77;
    a1 = v78;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v28 = v21[2];
  MEMORY[0x28223BE20](result);
  *(&v72 - 2) = a1;

  v54 = v75;
  sub_264D93ED8(sub_264DBCF90, a2, v75);
  v55 = *(v74 + 48);
  if ((v55)(v54, 1, v76) == 1)
  {
    v56 = sub_264E238E8();
    (*(*(v56 - 8) + 16))(v12, a1, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B80, &unk_264E27060);
    result = swift_initStackObject();
    *(result + 16) = xmmword_264E261E0;
    if (!v21[2])
    {
LABEL_66:
      __break(1u);
      return result;
    }

    v57 = v21[5];
    *(result + 32) = v21[4];
    v58 = result + 32;
    *(result + 40) = v57;
    *(result + 48) = 0;
    v59 = result;

    v60 = sub_264DEB098(v59);
    swift_setDeallocating();
    sub_264D817BC(v58, &qword_27FFB1B88, &qword_264E26610);
    v61 = sub_264DEB098(MEMORY[0x277D84F90]);
    v63 = v75;
    v62 = v76;
    *&v12[*(v76 + 20)] = 0;
    *&v12[*(v62 + 24)] = v60;
    *&v12[*(v62 + 28)] = v61;
    if (v55(v63, 1) != 1)
    {
      sub_264D817BC(v63, &qword_27FFB35B0, &qword_264E2A658);
    }
  }

  else
  {
    sub_264E160FC(v54, v12, type metadata accessor for UsageDetailChart.HourlyUsage);
  }

  sub_264E160FC(v12, v79, type metadata accessor for UsageDetailChart.HourlyUsage);
  v24 = 24;
  v9 = v76;
  v29 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    goto LABEL_46;
  }

LABEL_10:
  v77 = v5;
  v5 = sub_264E174AC(0x65646E69616D6572, 0xE900000000000072, v29, &type metadata for UsageDetailChart.Model.TopCategoryRatio, 0.0);
  v30 = *(v79 + *(v9 + v24));
  v31 = v21[2];
  v76 = v28;
  if (v31)
  {
    v32 = v9;
    v78 = a1;

    v33 = 0;
    v34 = v21 + 5;
    v35 = v31 - 1;
    v36 = 0.0;
    do
    {
      if (*(v30 + 16) && (v38 = *(v34 - 1), v37 = *v34, , v39 = sub_264D9D57C(v38, v37), LOBYTE(v38) = v40, , (v38 & 1) != 0))
      {
        v36 = v36 + *(*(v30 + 56) + 8 * v39);
        if (v35 == v33)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v36 = v36 + 0.0;
        if (v35 == v33)
        {
          goto LABEL_19;
        }
      }

      ++v33;
      v34 += 2;
    }

    while (v33 < v21[2]);
    __break(1u);
LABEL_19:

    v41 = *(v32 + 20);
    if (v36 > *(v78 + v41))
    {
      v42 = v36;
    }

    else
    {
      v42 = *(v78 + v41);
    }
  }

  else
  {

    v42 = *(a1 + *(v9 + 20));
    if (v42 < 0.0)
    {
LABEL_37:
      sub_264E163AC(v79);

      return v5;
    }
  }

  if (v42 <= 0.0)
  {
    goto LABEL_37;
  }

  v24 = v21[2];
  if (!v24)
  {
LABEL_34:

    v25 = *(v5 + 16);
    v26 = 0.0;
    v27 = 0.0;
    v24 = v76;
    if (!v25)
    {
LABEL_52:
      v71 = round((1.0 - v27) * 100.0) / 100.0;
      if (v71 > 0.0)
      {
        v42 = v71;
      }

      else
      {
        v42 = v26;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_56;
    }

    if (v25 == 1)
    {
      v53 = 0;
LABEL_50:
      v68 = v25 - v53;
      v69 = (v5 + 24 * v53 + 32);
      do
      {
        v70 = *v69;
        v69 += 3;
        v27 = v27 + v70;
        --v68;
      }

      while (v68);
      goto LABEL_52;
    }

LABEL_47:
    v53 = v25 & 0x7FFFFFFFFFFFFFFELL;
    v64 = (v5 + 56);
    v65 = v25 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v66 = *(v64 - 3);
      v67 = *v64;
      v64 += 6;
      v27 = v27 + v66 + v67;
      v65 -= 2;
    }

    while (v65);
    if (v25 == v53)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v43 = 0;
  v44 = 0;
  v45 = v21 + 5;
  while (v44 < v21[2])
  {
    v47 = *(v45 - 1);
    v46 = *v45;
    v48 = *(v30 + 16);

    if (v48)
    {
      v49 = sub_264D9D57C(v47, v46);
      if (v50)
      {
        v51 = *(*(v30 + 56) + 8 * v49);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_32;
        }

LABEL_30:
        v5 = sub_264E15E34(v5);
        goto LABEL_32;
      }
    }

    v51 = 0.0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_32:
    if (v44 >= *(v5 + 16))
    {
      goto LABEL_61;
    }

    v52 = v5 + v43;
    *(v52 + 32) = round(v51 * 100.0 / v42) / 100.0;
    ++v44;
    *(v52 + 40) = v47;
    *(v52 + 48) = v46;

    v43 += 24;
    v45 += 2;
    if (v24 == v44)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  v5 = sub_264E15E34(v5);
LABEL_56:

  result = sub_264E163AC(v79);
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (v24 >= *(v5 + 16))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  *(v5 + 24 * v24 + 32) = v42;
  return v5;
}

uint64_t sub_264E1376C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t UsageDetailChart.body.getter@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v81 = sub_264E23AA8();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v3 - 8);
  v102 = &v79 - v4;
  v110 = sub_264E238E8();
  v104 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v82 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1878, &unk_264E27650);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = (&v79 - v9);
  v10 = type metadata accessor for UsageDetailChart(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB34F0, &qword_264E2A3C0);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v14 = &v79 - v13;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB34F8, &qword_264E2A3C8);
  v89 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v16 = &v79 - v15;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1A88, &qword_264E2A3D0);
  v93 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v92 = &v79 - v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3500, &qword_264E2A3D8);
  v95 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v109 = &v79 - v18;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3508, &qword_264E2A3E0);
  v96 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v79 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3510, &qword_264E2A3E8);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v97 = &v79 - v20;
  v21 = type metadata accessor for UsageDetailChart.Model(0);
  v22 = *(v1 + *(v21 + 20));
  v112 = v1;

  v90 = v22;
  sub_264D82E60(sub_264E15F98, v111, v22);
  v113 = v23;
  sub_264E16344(v1, &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UsageDetailChart);
  v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v25 = swift_allocObject();
  sub_264E160FC(&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for UsageDetailChart);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3518, &qword_264E2A3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3520, &qword_264E2A3F8);
  sub_264D81DCC(&qword_27FFB3528, &qword_27FFB3518, &qword_264E2A3F0, MEMORY[0x277D83980]);
  sub_264E161E4();
  sub_264E16450(&qword_27FFB3538, type metadata accessor for UsageDetailChart.HourlyUsage, &protocol conformance descriptor for UsageDetailChart.HourlyUsage);
  v86 = v14;
  sub_264E241D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_264E261F0;
  *(v26 + 32) = 0;
  UsageDetailChart.Model.maxUsage.getter();
  v27 = 3600.0;
  if (v28 > 3600.0)
  {
    v27 = *(v1 + *(v21 + 28));
  }

  UsageDetailChart.Model.maxUsage.getter();
  v30 = v27 * ceil(v29 / v27);
  if (v30 <= v27)
  {
    v30 = v27;
  }

  *(v26 + 40) = v30;
  v113 = v26;
  v31 = sub_264E242D8();
  v32 = *(v31 - 8);
  v84 = *(v32 + 56);
  v85 = v32 + 56;
  v33 = v91;
  v84(v91, 1, 1, v31);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1988, &unk_264E262E0);
  v106 = v21;
  v83 = v34;
  v35 = sub_264D81DCC(&qword_27FFB3540, &qword_27FFB34F0, &qword_264E2A3C0, MEMORY[0x277CBB3F8]);
  v36 = v1;
  v37 = sub_264D8A020(&qword_27FFB1990, &qword_27FFB1988, &unk_264E262E0);
  v38 = v88;
  v39 = v86;
  sub_264E24B48();
  sub_264D817BC(v33, &qword_27FFB1878, &unk_264E27650);

  (*(v87 + 8))(v39, v38);
  v117 = UsageDetailChart.Model.xAxisScale.getter();
  v84(v33, 1, 1, v31);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1968, &unk_264E27700);
  v113 = v38;
  v114 = v83;
  v115 = v35;
  v116 = v37;
  v41 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = sub_264D8A020(&qword_27FFB1970, &qword_27FFB1968, &unk_264E27700);
  v44 = v92;
  v45 = v107;
  sub_264E24B38();
  sub_264D817BC(v33, &qword_27FFB1878, &unk_264E27650);

  (*(v89 + 8))(v16, v45);
  v46 = UsageDetailChart.Model.yStride.getter();
  UsageDetailChart.Model.maxUsage.getter();
  v47 = UsageDetailChart.Model.maxUsage.getter();
  v91 = &v79;
  v48 = MEMORY[0x28223BE20](v47).n128_u64[0];
  *(&v79 - 6) = v46;
  *(&v79 - 5) = 0;
  *(&v79 - 32) = 1;
  *(&v79 - 3) = v48;
  *(&v79 - 16) = 0;
  *(&v79 - 1) = v44;
  v89 = v41;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB19A8, &unk_264E262F0);
  v113 = v107;
  v114 = v40;
  v115 = OpaqueTypeConformance2;
  v116 = v43;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_264D81DCC(&qword_27FFB19B0, &qword_27FFB19A8, &unk_264E262F0, MEMORY[0x277CBB460]);
  v52 = v108;
  v107 = v49;
  sub_264E24B18();

  (*(v93 + 8))(v44, v52);
  v53 = v90;
  v54 = v110;
  if (*(v90 + 16))
  {
    v55 = *(type metadata accessor for UsageDetailChart.HourlyUsage(0) - 8);
    v56 = v104;
    v57 = v53 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v58 = v82;
    (*(v104 + 16))(v82, v57, v54);
    v59 = v102;
    sub_264E23858();
    (*(v56 + 8))(v58, v54);
    (*(v56 + 56))(v59, 0, 1, v54);
    v60 = v103;
    (*(v56 + 32))(v103, v59, v54);
    v61 = v89;
  }

  else
  {
    v56 = v104;
    v62 = v102;
    (*(v104 + 56))(v102, 1, 1, v110);
    v63 = v79;
    sub_264E23A98();
    v64 = v89;
    v60 = v103;
    Calendar.fullDay(for:)(v63, v103);
    (*(v80 + 8))(v63, v81);
    v61 = v64;
    if ((*(v56 + 48))(v62, 1, v54) != 1)
    {
      sub_264D817BC(v62, &qword_27FFB1880, &qword_264E26220);
    }
  }

  v65 = v109;
  v66 = sub_264E119C4(v60, v61 + *(v106 + 24));
  MEMORY[0x28223BE20](v66);
  *(&v79 - 2) = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1998, &unk_264E27720);
  v113 = v108;
  v114 = v107;
  v115 = v50;
  v116 = v51;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_264D81DCC(&qword_27FFB19A0, &qword_27FFB1998, &unk_264E27720, MEMORY[0x277CBB460]);
  v71 = v94;
  v72 = v98;
  sub_264E24B08();

  (*(v56 + 8))(v60, v110);
  (*(v95 + 8))(v65, v72);
  v113 = v72;
  v114 = v68;
  v115 = v69;
  v116 = v70;
  swift_getOpaqueTypeConformance2();
  v73 = v97;
  v74 = v99;
  sub_264E24B28();
  (*(v96 + 8))(v71, v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3548, &unk_264E2A410);
  v76 = v105;
  v77 = (v105 + *(v75 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2480, &qword_264E27C88);
  sub_264E245B8();
  *v77 = swift_getKeyPath();
  return (*(v100 + 32))(v76, v73, v101);
}

uint64_t sub_264E1478C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = type metadata accessor for UsageDetailChart(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = sub_264E12FF8(a1, *(a2 + *(v6 + 28)));
  sub_264DFF0FC(v12);
  v14 = v13;

  v28 = v14;
  swift_getKeyPath();
  sub_264E16344(a1, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UsageDetailChart.HourlyUsage);
  sub_264E16344(a2, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UsageDetailChart);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_264E160FC(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15, type metadata accessor for UsageDetailChart.HourlyUsage);
  sub_264E160FC(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for UsageDetailChart);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_264E17294;
  *(v18 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35A0, &qword_264E2A648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2490, &qword_264E2A650);
  sub_264D81DCC(&qword_27FFB35A8, &qword_27FFB35A0, &qword_264E2A648, MEMORY[0x277D83980]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2450, &unk_264E2A400);
  v24 = sub_264E241F8();
  v25 = MEMORY[0x277CE0F78];
  v26 = MEMORY[0x277CBB400];
  v27 = MEMORY[0x277CE0F60];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_264D89EB8();
  v24 = v19;
  v25 = MEMORY[0x277D837D0];
  v26 = OpaqueTypeConformance2;
  v27 = v21;
  swift_getOpaqueTypeConformance2();
  return sub_264E24ED8();
}

uint64_t sub_264E14B20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v50 = a5;
  v51 = a2;
  v52 = a3;
  v53 = a6;
  v49 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C48, &unk_264E266B0);
  MEMORY[0x28223BE20](v9 - 8);
  v44 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = sub_264E23C18();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_264E23AA8();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C58, &qword_264E266C0);
  MEMORY[0x28223BE20](v20 - 8);
  v54 = &v40 - v21;
  v22 = sub_264E241F8();
  v23 = *(v22 - 8);
  v45 = v22;
  v46 = v23;
  MEMORY[0x28223BE20](v22);
  v42 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2450, &unk_264E2A400);
  v26 = *(v25 - 8);
  v47 = v25;
  v48 = v26;
  MEMORY[0x28223BE20](v25);
  v43 = &v40 - v27;
  sub_264E247D8();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v15 + 104))(v17, *MEMORY[0x277CC9980], v14);
  v28 = sub_264E23C38();
  (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
  sub_264E240E8();

  sub_264D817BC(v13, &qword_27FFB1C50, &unk_264E267D0);
  (*(v15 + 8))(v17, v14);
  (*(v40 + 8))(v19, v41);
  sub_264E247D8();
  v55 = *(a4 + *(type metadata accessor for UsageDetailChart.HourlyUsage(0) + 20)) * a7;
  sub_264E240F8();

  v29 = [objc_opt_self() currentDevice];
  v30 = [v29 model];

  sub_264E25108();
  sub_264E251A8();

  v31 = v42;
  sub_264E241E8();
  v32 = type metadata accessor for UsageDetailChart(0);
  v55 = COERCE_DOUBLE(UsageDetailChart.Model.orderedStackedBarColors(index:selectedItem:)(v49, *(v50 + *(v32 + 20))));
  v33 = MEMORY[0x277CE0F78];
  v34 = MEMORY[0x277CBB400];
  v35 = MEMORY[0x277CE0F60];
  v36 = v43;
  v37 = *&v45;
  sub_264E24038();

  (*(v46 + 8))(v31, COERCE_DOUBLE(*&v37));
  v59 = v51;
  v60 = v52;
  v55 = v37;
  v56 = v33;
  v57 = v34;
  v58 = v35;
  swift_getOpaqueTypeConformance2();
  sub_264D89EB8();
  v38 = v47;
  sub_264E24048();
  return (*(v48 + 8))(v36, v38);
}

void *UsageDetailChart.Model.orderedStackedBarColors(index:selectedItem:)(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(type metadata accessor for UsageDetailChart.Model(0) + 32));
  if (a2 && *(a2 + 16))
  {
    v6 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
    v7 = *(a2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(v6 + 24));
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = sub_264D8C29C(*(v7 + 16), 0);
      v10 = sub_264D8E260(&v14, v9 + 4, v8, v7);
      v11 = v14;

      sub_264D8F07C(v11);
      if (v10 == v8)
      {
LABEL_7:
        v5 = v9[2];

        goto LABEL_8;
      }

      __break(1u);
    }

    v9 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

LABEL_8:
  result = (v5 + 1);
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  result = sub_264E17574(result, 1);
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result[2] > a1)
  {
    v13 = result[a1 + 4];

    return v13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t UsageDetailChart.Model.yAxisScale.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_264E261F0;
  *(v1 + 32) = 0;
  UsageDetailChart.Model.maxUsage.getter();
  v2 = 3600.0;
  if (v3 > 3600.0)
  {
    v2 = *(v0 + *(type metadata accessor for UsageDetailChart.Model(0) + 28));
  }

  UsageDetailChart.Model.maxUsage.getter();
  v5 = v2 * ceil(v4 / v2);
  if (v5 <= v2)
  {
    v5 = v2;
  }

  *(v1 + 40) = v5;
  return v1;
}

uint64_t UsageDetailChart.Model.xAxisScale.getter()
{
  v1 = sub_264E23AA8();
  v19 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_264E238E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = *(v0 + *(type metadata accessor for UsageDetailChart.Model(0) + 20));
  if (*(v14 + 16))
  {
    v15 = *(type metadata accessor for UsageDetailChart.HourlyUsage(0) - 8);
    (*(v8 + 16))(v10, v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v7);
    sub_264E23858();
    (*(v8 + 8))(v10, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v13, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_264E23A98();
    Calendar.fullDay(for:)(v3, v13);
    (*(v19 + 8))(v3, v1);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_264D817BC(v6, &qword_27FFB1880, &qword_264E26220);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_264E261F0;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23888();
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t UsageDetailChart.Model.yStride.getter()
{
  UsageDetailChart.Model.maxUsage.getter();
  v1 = 3600.0;
  if (v2 > 3600.0)
  {
    v1 = *(v0 + *(type metadata accessor for UsageDetailChart.Model(0) + 28));
  }

  UsageDetailChart.Model.maxUsage.getter();
  v4 = v1 * ceil(v3 / v1);
  if (v4 > v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v1;
  }

  result = type metadata accessor for UsageDetailChart.Model(0);
  v7 = v5 * 0.25;
  if (v5 * 0.25 == 0.0)
  {
    goto LABEL_39;
  }

  v8 = *(v0 + *(result + 28)) * 0.25 + v5;
  v9 = v8 >= 0.0;
  if (v7 > 0.0)
  {
    v9 = v8 <= 0.0;
  }

  if (!v9)
  {
    v11 = 0;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_37;
      }

      v12 = v10 * v7 + 0.0;
      v13 = v12 <= v8;
      if (v7 > 0.0)
      {
        v13 = v8 <= v12;
      }

      ++v11;
      if (v13)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = 0;
LABEL_16:
  v24 = MEMORY[0x277D84F90];
  sub_264D8D0F4(0, v10, 0);
  result = v24;
  if (v10)
  {
    v14 = 1;
    v15 = 0.0;
    while (1)
    {
      v16 = v15 <= v8;
      if (v7 > 0.0)
      {
        v16 = v8 <= v15;
      }

      if (v16)
      {
        break;
      }

      v25 = result;
      v18 = *(result + 16);
      v17 = *(result + 24);
      if (v18 >= v17 >> 1)
      {
        sub_264D8D0F4((v17 > 1), v18 + 1, 1);
        result = v25;
      }

      v19 = v14 * v7 + 0.0;
      *(result + 16) = v18 + 1;
      *(result + 8 * v18 + 32) = v15;
      ++v14;
      v15 = v19;
      if (v14 - v10 == 1)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  v19 = 0.0;
LABEL_26:
  v20 = v19 <= v8;
  if (v7 > 0.0)
  {
    v20 = v8 <= v19;
  }

  if (!v20)
  {
    while (!__OFADD__(v10, 1))
    {
      v26 = result;
      v22 = *(result + 16);
      v21 = *(result + 24);
      if (v22 >= v21 >> 1)
      {
        sub_264D8D0F4((v21 > 1), v22 + 1, 1);
        result = v26;
      }

      *(result + 8 * v22 + 32) = v19;
      v19 = (v10 + 1) * v7 + 0.0;
      *(result + 16) = v22 + 1;
      v23 = v19 <= v8;
      if (v7 > 0.0)
      {
        v23 = v8 <= v19;
      }

      ++v10;
      if (v23)
      {
        return result;
      }
    }

    goto LABEL_38;
  }

  return result;
}

void UsageDetailChart.Model.lastY.getter()
{
  UsageDetailChart.Model.maxUsage.getter();
  if (v0 > 3600.0)
  {
    type metadata accessor for UsageDetailChart.Model(0);
  }

  UsageDetailChart.Model.maxUsage.getter();
}

uint64_t UsageDetailChart.Model.maxUsage.getter()
{
  v1 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + *(type metadata accessor for UsageDetailChart.Model(0) + 20));
  v17 = v0;

  sub_264D82E60(sub_264E17558, v16, v5);
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v18 = MEMORY[0x277D84F90];
    sub_264D8D0F4(0, v8, 0);
    v9 = v18;
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_264E16344(v10, v4, type metadata accessor for UsageDetailChart.HourlyUsage);
      v12 = *&v4[*(v1 + 20)];
      sub_264E163AC(v4);
      v18 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_264D8D0F4((v13 > 1), v14 + 1, 1);
        v9 = v18;
      }

      *(v9 + 16) = v14 + 1;
      *(v9 + 8 * v14 + 32) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  sub_264D89928(v9);
}

uint64_t sub_264E15C7C(uint64_t a1)
{
  v2 = sub_264E245C8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_264E24688();
}

uint64_t _s16ScreenTimeUICore16UsageDetailChartV06HourlyD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_264E23878() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  if ((sub_264D81ED4(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_264D81ED4(v7, v8);
}

BOOL _s16ScreenTimeUICore16UsageDetailChartV5ModelV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_264E23A78() & 1) != 0 && (v4 = type metadata accessor for UsageDetailChart.Model(0), (sub_264D84880(*(a1 + v4[5]), *(a2 + v4[5]))) && (MEMORY[0x26674DD10](a1 + v4[6], a2 + v4[6]) & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264E15FB8()
{
  v1 = *(type metadata accessor for UsageDetailChart(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_264E23AA8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for UsageDetailChart.Model(0);

  v7 = *(v6 + 24);
  v8 = sub_264E23C38();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264E160FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E16164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UsageDetailChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_264E1478C(a1, v6, a2);
}

unint64_t sub_264E161E4()
{
  result = qword_27FFB3530;
  if (!qword_27FFB3530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3520, &qword_264E2A3F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2450, &unk_264E2A400);
    sub_264E241F8();
    swift_getOpaqueTypeConformance2();
    sub_264D89EB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3530);
  }

  return result;
}

uint64_t sub_264E16344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E163AC(uint64_t a1)
{
  v2 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264E16450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264E16510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UsageDetailChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_264E165EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UsageDetailChart.Model(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_264E166A4(uint64_t a1)
{
  type metadata accessor for UsageDetailChart.Model(319);
  if (v1 <= 0x3F)
  {
    sub_264E16728(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264E16728(uint64_t a1)
{
  if (!qword_27FFB3560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3518, &qword_264E2A3F0);
    v1 = sub_264E25318();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB3560);
    }
  }
}

uint64_t sub_264E167A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E238E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264E16870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E238E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_264E16928(uint64_t a1)
{
  sub_264E238E8();
  if (v1 <= 0x3F)
  {
    sub_264D8F9B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264E169C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_264E16B00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23AA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_264E16C24(uint64_t a1)
{
  sub_264E23AA8();
  if (v1 <= 0x3F)
  {
    sub_264E16CD8(319);
    if (v2 <= 0x3F)
    {
      sub_264E23C38();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264E16CD8(uint64_t a1)
{
  if (!qword_27FFB3588)
  {
    type metadata accessor for UsageDetailChart.HourlyUsage(255);
    v1 = sub_264E251F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB3588);
    }
  }
}

unint64_t sub_264E16D34()
{
  result = qword_27FFB3590;
  if (!qword_27FFB3590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3548, &unk_264E2A410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3508, &qword_264E2A3E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB3500, &qword_264E2A3D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1998, &unk_264E27720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1A88, &qword_264E2A3D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB19A8, &unk_264E262F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB34F8, &qword_264E2A3C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1968, &unk_264E27700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB34F0, &qword_264E2A3C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1988, &unk_264E262E0);
    sub_264D81DCC(&qword_27FFB3540, &qword_27FFB34F0, &qword_264E2A3C0, MEMORY[0x277CBB3F8]);
    sub_264D8A020(&qword_27FFB1990, &qword_27FFB1988, &unk_264E262E0);
    swift_getOpaqueTypeConformance2();
    sub_264D8A020(&qword_27FFB1970, &qword_27FFB1968, &unk_264E27700);
    swift_getOpaqueTypeConformance2();
    v1 = MEMORY[0x277CBB460];
    sub_264D81DCC(&qword_27FFB19B0, &qword_27FFB19A8, &unk_264E262F0, MEMORY[0x277CBB460]);
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19A0, &qword_27FFB1998, &unk_264E27720, v1);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB3598, &qword_27FFB2480, &qword_264E27C88, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB3590);
  }

  return result;
}

uint64_t sub_264E1709C()
{
  v1 = *(type metadata accessor for UsageDetailChart.HourlyUsage(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(type metadata accessor for UsageDetailChart(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v2 | v6;
  v10 = sub_264E238E8();
  (*(*(v10 - 8) + 8))(v0 + v3, v10);

  v11 = sub_264E23AA8();
  (*(*(v11 - 8) + 8))(v0 + v7, v11);
  v12 = type metadata accessor for UsageDetailChart.Model(0);

  v13 = *(v12 + 24);
  v14 = sub_264E23C38();
  (*(*(v14 - 8) + 8))(v0 + v7 + v13, v14);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_264E17294@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v11 = *(type metadata accessor for UsageDetailChart.HourlyUsage(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for UsageDetailChart(0) - 8);
  v15 = v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  return sub_264E14B20(a1, a2, a3, v5 + v12, v15, a4, a5);
}

uint64_t sub_264E173A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264E1741C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = result;
    v4 = sub_264E251E8();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v2;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v2;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_264E174AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v6 = result;
    v9 = sub_264E251E8();
    v10 = v9;
    *(v9 + 16) = a3;
    *(v9 + 32) = a5;
    *(v9 + 40) = v6;
    *(v9 + 48) = a2;
    v11 = a3 - 1;
    if (v11)
    {
      v12 = (v9 + 72);
      do
      {
        *(v12 - 2) = a5;
        *(v12 - 1) = v6;
        *v12 = a2;

        v12 += 3;
        --v11;
      }

      while (v11);
    }

    return v10;
  }

  return result;
}

void *sub_264E17574(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB22A8, &qword_264E27740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264E2A670;
  v5 = objc_opt_self();
  v6 = [v5 systemBlueColor];
  *(inited + 32) = sub_264E24C38();
  v7 = [v5 systemTealColor];
  *(inited + 40) = sub_264E24C38();
  v8 = [v5 systemOrangeColor];
  *(inited + 48) = sub_264E24C38();
  if (qword_27FFB16A0 != -1)
  {
    swift_once();
  }

  *(inited + 56) = qword_27FFB6C48;
  v9 = swift_retain_n();
  v10 = sub_264E1741C(v9, a1);

  if ((a2 & 1) != 0 && __OFSUB__(a1--, 1))
  {
    goto LABEL_25;
  }

  if (a1 < 0)
  {
    __break(1u);
LABEL_23:
    v10 = sub_264E15D58(v10);
    if (!v10[2])
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  if (!a1)
  {
    goto LABEL_21;
  }

  a2 = *(inited + 32);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!v10[2])
  {
    goto LABEL_24;
  }

LABEL_9:
  v10[4] = a2;

  if (a1 != 1)
  {
    a2 = *(inited + 40);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_26;
    }

    while (1)
    {
      if (v10[2] >= 2uLL)
      {
        v10[5] = a2;

        if (a1 == 2)
        {
          goto LABEL_21;
        }

        a2 = *(inited + 48);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_264E15D58(v10);
        }

        if (v10[2] >= 3uLL)
        {
          v10[6] = a2;

          if (a1 == 3)
          {
            goto LABEL_21;
          }

          a1 = *(inited + 56);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_264E15D58(v10);
          }

          if (v10[2] >= 4uLL)
          {
            break;
          }
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v10 = sub_264E15D58(v10);
    }

    v10[7] = a1;
  }

LABEL_21:

  return v10;
}

uint64_t ChartFormats.DataType.hashValue.getter()
{
  v1 = *v0;
  sub_264E254A8();
  MEMORY[0x26674F610](v1);
  return sub_264E254C8();
}

unint64_t sub_264E178A8()
{
  result = qword_27FFB35B8;
  if (!qword_27FFB35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB35B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChartFormats.DataType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChartFormats.DataType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_264E17A94()
{
  v0 = [objc_opt_self() bundle];
  result = sub_264E24CE8();
  qword_27FFB6C48 = result;
  return result;
}

uint64_t sub_264E17B2C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_264E24C38();
  *a3 = result;
  return result;
}

uint64_t sub_264E17B74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_264E249F8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_264E24A38();
  result = sub_264D817BC(v2, &qword_27FFB17B8, &qword_264E279E0);
  qword_27FFB6C70 = v4;
  return result;
}

uint64_t sub_264E17C60(double a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v2 setAllowedUnits_];
  [v2 setUnitsStyle_];
  [v2 setZeroFormattingBehavior_];
  if (a1 <= 3600.0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [v2 setMaximumUnitCount_];
  v4 = [v2 stringFromTimeInterval_];
  if (v4)
  {
    v5 = v4;
    v6 = sub_264E25108();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_264E17D5C(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_264E23C38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v11 setAllowedUnits_];
  [v11 setUnitsStyle_];
  [v11 setZeroFormattingBehavior_];
  if (a2 <= 3600.0)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  [v11 setMaximumUnitCount_];
  sub_264E17FD8(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_264D817BC(v6, &qword_27FFB1C50, &unk_264E267D0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = sub_264E23BA8();
    [v11 setCalendar_];

    (*(v8 + 8))(v10, v7);
  }

  v14 = [v11 stringFromTimeInterval_];
  if (v14)
  {
    v15 = v14;
    v16 = sub_264E25108();
  }

  else
  {

    return 0;
  }

  return v16;
}

uint64_t sub_264E17FD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ScreenTimeNotificationsAppIntentView.Model.App.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ScreenTimeNotificationsAppIntentView.Model.App.localizedName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_264E180B0()
{
  v1 = type metadata accessor for ScreenTimeNotificationsAppIntentView.Model(0);
  result = sub_264D9C104(v0 + *(v1 + 24));
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = result + 80;
    v7 = MEMORY[0x277D84F90];
    v26 = result + 80;
    v27 = *(result + 16);
    do
    {
      v28 = v7;
      v8 = (v6 + 56 * v5);
      v9 = v4 - v5;
      while (1)
      {
        if (v5 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v10 = *(v8 - 6);
        v11 = *(v8 - 5);
        v12 = *(v8 - 2);
        if (v10 != *(v8 - 3) || v11 != v12)
        {
          v14 = *v8;
          v15 = *(v8 - 1);
          v16 = *(v8 - 4);
          v17 = v3;
          v29 = *(v8 - 3);
          result = sub_264E25478();
          v3 = v17;
          if ((result & 1) == 0)
          {
            break;
          }
        }

        v8 += 56;
        ++v5;
        if (!--v9)
        {
          v7 = v28;
          goto LABEL_19;
        }
      }

      v25 = v16;

      v7 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_264D8D4B4(0, *(v28 + 16) + 1, 1);
        v7 = v28;
      }

      v18 = v14;
      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      v21 = v20 + 1;
      v3 = v17;
      if (v20 >= v19 >> 1)
      {
        result = sub_264D8D4B4((v19 > 1), v20 + 1, 1);
        v21 = v20 + 1;
        v18 = v14;
        v3 = v17;
        v7 = v28;
      }

      ++v5;
      *(v7 + 16) = v21;
      v22 = v7 + 56 * v20;
      *(v22 + 32) = v10;
      *(v22 + 40) = v11;
      *(v22 + 48) = v25;
      *(v22 + 56) = v29;
      *(v22 + 64) = v12;
      *(v22 + 72) = v15;
      *(v22 + 80) = v18;
      v6 = v26;
      v4 = v27;
    }

    while (v9 != 1);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_19:

  if (*(v7 + 16) < 4uLL)
  {
    return v7;
  }

  sub_264E19228(v7, v7 + 32, 0, 7uLL);
  v24 = v23;

  return v24;
}

uint64_t sub_264E182C4()
{
  v0 = sub_264E180B0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v18 = MEMORY[0x277D84F90];
    v2 = v0;
    sub_264D8D114(0, v1, 0);
    v3 = v2;
    v4 = 0;
    v5 = v18;
    v14 = v2;
    do
    {
      v6 = *(v3 + v4 + 40);
      v17 = *(v3 + v4 + 32);
      v7 = *(v3 + v4 + 48);
      v15 = *(v3 + v4 + 56);
      v8 = *(v3 + v4 + 64);
      v9 = *(v3 + v4 + 72);
      v16 = *(v3 + v4 + 80);
      v11 = *(v18 + 16);
      v10 = *(v18 + 24);

      if (v11 >= v10 >> 1)
      {
        sub_264D8D114((v10 > 1), v11 + 1, 1);
      }

      *(v18 + 16) = v11 + 1;
      v12 = v18 + 56 * v11;
      *(v12 + 32) = v17;
      *(v12 + 40) = v6;
      v3 = v14;
      *(v12 + 48) = v15;
      *(v12 + 56) = v8;
      *(v12 + 64) = v9;
      *(v12 + 72) = v7;
      *(v12 + 80) = v16;
      *(v12 + 81) = 0;
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t ScreenTimeNotificationsAppIntentView.Model.appsEmittingMostNotifications.getter()
{
  v0 = sub_264E180B0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_264D8D4EC(0, v1, 0);
    v2 = v13;
    v3 = (v0 + 64);
    do
    {
      v5 = *(v3 - 4);
      v4 = *(v3 - 3);
      v6 = *(v3 - 1);
      v12 = *(v3 - 2);
      v7 = *v3;
      v8 = *(v13 + 16);
      v9 = *(v13 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_264D8D4EC((v9 > 1), v8 + 1, 1);
      }

      *(v13 + 16) = v8 + 1;
      v10 = (v13 + 40 * v8);
      v10[4] = v5;
      v10[5] = v4;
      v10[6] = v6;
      v10[7] = v7;
      v10[8] = v12;
      v3 += 7;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t ScreenTimeNotificationsAppIntentView.Model.init(allActivityModel:mode:interval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == 1)
  {
    v7 = *(type metadata accessor for AllActivityView.Model(0) + 96);
  }

  else
  {
    if (a2)
    {
      v13[4] = type metadata accessor for ScreenTimeAppInfoCache();
      v13[5] = &off_2876A38A8;
      v13[1] = swift_allocObject();
      v13[9] = type metadata accessor for ScreenTimeAppIconCache();
      v13[10] = &off_2876A3880;
      v13[6] = swift_allocObject();
      v13[0] = sub_264DEB248(MEMORY[0x277D84F90]);
      goto LABEL_7;
    }

    v7 = *(type metadata accessor for AllActivityView.Model(0) + 100);
  }

  sub_264DEE850(a1 + v7, v13);
LABEL_7:
  v8 = type metadata accessor for AllActivityView.Model(0);
  sub_264DEE850(a1 + *(v8 + 100), a4);
  v9 = sub_264D9C98C(a3);
  sub_264E1938C(a1, type metadata accessor for AllActivityView.Model);
  sub_264E19318(v13);
  *(a4 + 88) = v9;
  v10 = *(type metadata accessor for ScreenTimeNotificationsAppIntentView.Model(0) + 24);
  v11 = sub_264E238E8();
  return (*(*(v11 - 8) + 32))(a4 + v10, a3, v11);
}

double ScreenTimeNotificationsAppIntentView.init(model:mode:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ScreenTimeNotificationsAppIntentView.Model(0);
  MEMORY[0x28223BE20](v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  sub_264E1940C(a1, v14 - v10, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  sub_264E1940C(v11, v8, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  sub_264E24D78();
  sub_264E1938C(v11, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  v12 = *(type metadata accessor for ScreenTimeNotificationsAppIntentView(0) + 20);
  v14[1] = a2;
  type metadata accessor for STActivityMode(0);
  sub_264E24D78();
  sub_264E1938C(a1, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  result = *&v15;
  *(a3 + v12) = v15;
  return result;
}

uint64_t ScreenTimeNotificationsAppIntentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ScreenTimeNotificationsAppIntentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for ScreenTimeNotificationsAppIntentView.Model(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_264E24828();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C0, &qword_264E2A740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C8, &qword_264E2A748);
  sub_264E24D88();
  v10 = sub_264E182C4();
  sub_264E1938C(v9, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  v14[1] = v10;
  sub_264E1940C(v2, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScreenTimeNotificationsAppIntentView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_264E19478(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3050, &qword_264E2A750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35D0, &qword_264E2A758);
  sub_264D81DCC(&qword_27FFB35D8, &qword_27FFB3050, &qword_264E2A750, MEMORY[0x277D83980]);
  sub_264D81DCC(&qword_27FFB35E0, &qword_27FFB35D0, &qword_264E2A758, MEMORY[0x277CE14C0]);
  sub_264E02664();
  return sub_264E24EF8();
}

uint64_t sub_264E18A84@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v49 = sub_264E24EB8();
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3620, &qword_264E2A848);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for ScreenTimeNotificationsAppIntentView.Model(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = a1[1];
  v69 = *a1;
  v70 = v17;
  v71[0] = a1[2];
  *(v71 + 15) = *(a1 + 47);
  sub_264E02700(&v69, &v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C8, &qword_264E2A748);
  sub_264E24D88();
  v48 = *(v16 + 11);
  sub_264E1938C(v16, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  type metadata accessor for CGSize(0);
  v51[0] = 0uLL;
  sub_264E24D78();
  v18 = v56;
  v47 = v57;
  v51[0] = 0uLL;
  sub_264E24D78();
  v19 = v56;
  v46 = v57;
  v75 = v69;
  v76 = v70;
  *v77 = v71[0];
  *&v77[15] = *(v71 + 15);
  v74 = 0;
  v20 = v69;

  sub_264E24D88();
  v21 = sub_264E182C4();
  sub_264E1938C(v13, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  v22 = *(v21 + 16);
  if (!v22)
  {

    goto LABEL_7;
  }

  v23 = v21 + 56 * v22;
  v24 = *(v23 - 24);
  v25 = *(v23 - 8);
  v26 = *(v23 + 8);
  *&v58[15] = *(v23 + 23);
  v57 = v25;
  *v58 = v26;
  v56 = v24;
  sub_264E02700(&v56, v51);

  v27 = v56;

  sub_264E19C80(&v56);
  if (v20 != v27)
  {
    v28 = sub_264E25478();

    if (v28)
    {
      goto LABEL_6;
    }

LABEL_7:
    v29 = v45;
    sub_264E24EA8();
    v30 = v29;
    v31 = v49;
    (*(v4 + 32))(v10, v30, v49);
    (*(v4 + 56))(v10, 0, 1, v31);
    goto LABEL_8;
  }

LABEL_6:
  (*(v4 + 56))(v10, 1, 1, v49);
LABEL_8:
  v32 = v74;
  v33 = v50;
  sub_264E19CD4(v10, v50);
  v51[0] = v75;
  v51[1] = v76;
  v51[2] = *v77;
  v35 = v47;
  v34 = v48;
  *&v52 = *&v77[16];
  *(&v52 + 1) = v48;
  LOBYTE(v53) = v32;
  BYTE1(v53) = 2;
  *(&v53 + 2) = v72;
  WORD3(v53) = v73;
  *(&v53 + 1) = 0x4010000000000000;
  v54 = v18;
  *v55 = v47;
  *&v55[8] = v19;
  v36 = v46;
  *&v55[24] = v46;
  v37 = v75;
  v38 = v76;
  v39 = v52;
  a2[2] = *v77;
  a2[3] = v39;
  *a2 = v37;
  a2[1] = v38;
  v40 = v53;
  v41 = v54;
  v42 = *&v55[16];
  a2[6] = *v55;
  a2[7] = v42;
  a2[4] = v40;
  a2[5] = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3628, &unk_264E2A850);
  sub_264E19CD4(v33, a2 + *(v43 + 48));
  sub_264E19D44(v51, &v56);
  sub_264E19DA0(v10);
  sub_264E19DA0(v33);
  v56 = v75;
  v57 = v76;
  *v58 = *v77;
  *&v58[16] = *&v77[16];
  v59 = v34;
  v60 = v32;
  v61 = 2;
  v62 = v72;
  v63 = v73;
  v64 = 0x4010000000000000;
  v65 = v18;
  v66 = v35;
  v67 = v19;
  v68 = v36;
  return sub_264E19E08(&v56);
}

uint64_t sub_264E18F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v7 = type metadata accessor for ScreenTimeNotificationsAppIntentView.Model(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_264E24828();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C0, &qword_264E2A740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C8, &qword_264E2A748);
  sub_264E24D88();
  v10 = sub_264E182C4();
  sub_264E1938C(v9, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  v14[1] = v10;
  sub_264E1940C(v3, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScreenTimeNotificationsAppIntentView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_264E19478(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB3050, &qword_264E2A750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35D0, &qword_264E2A758);
  sub_264D81DCC(&qword_27FFB35D8, &qword_27FFB3050, &qword_264E2A750, MEMORY[0x277D83980]);
  sub_264D81DCC(&qword_27FFB35E0, &qword_27FFB35D0, &qword_264E2A758, MEMORY[0x277CE14C0]);
  sub_264E02664();
  return sub_264E24EF8();
}

void sub_264E19228(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1A68, &qword_264E264E8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_264E1938C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264E1940C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264E19478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenTimeNotificationsAppIntentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264E19510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C8, &qword_264E2A748);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_264E195FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB35C8, &qword_264E2A748);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_264E196C4(uint64_t a1)
{
  sub_264E19780(319, &qword_27FFB35F8, type metadata accessor for ScreenTimeNotificationsAppIntentView.Model);
  if (v1 <= 0x3F)
  {
    sub_264E19780(319, &qword_27FFB1D18, type metadata accessor for STActivityMode);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264E19780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264E24DB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264E197E8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E238E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}