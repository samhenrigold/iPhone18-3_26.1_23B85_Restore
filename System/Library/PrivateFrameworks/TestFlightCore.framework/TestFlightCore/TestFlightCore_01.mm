uint64_t sub_26D3019B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v37 = a3;
  v4 = sub_26D30FEE8();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97C8, &qword_26D314818);
  MEMORY[0x28223BE20](v33, v8);
  v10 = &v30 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97D0, &qword_26D314820);
  MEMORY[0x28223BE20](v35, v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97D8, &qword_26D314828);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v30 - v16;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97E0, &qword_26D314830);
  MEMORY[0x28223BE20](v36, v18);
  v20 = &v30 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97E8, &qword_26D314838);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v30 - v23;
  if (a2 == 2)
  {
    sub_26D30FED8();
    v27 = v32;
    (*(v32 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v31 = sub_26D30FEF8();

    (*(v27 + 8))(v7, v4);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97F0, &qword_26D314840);
    (*(*(v28 - 8) + 16))(v10, v34, v28);
    v29 = &v10[*(v33 + 36)];
    *v29 = v31;
    *(v29 + 1) = 0;
    *(v29 + 8) = 1;
    sub_26D2E9114(v10, v17, &qword_2804F97C8, &qword_26D314818);
    swift_storeEnumTagMultiPayload();
    sub_26D302A88();
    sub_26D302B6C();
    sub_26D30FAF8();
    sub_26D2E9114(v20, v13, &qword_2804F97E0, &qword_26D314830);
    swift_storeEnumTagMultiPayload();
    sub_26D3029FC();
    sub_26D2E906C(&qword_2804F9808, &qword_2804F97F0, &qword_26D314840, MEMORY[0x277CE04B0]);
    sub_26D30FAF8();
    sub_26D2E9284(v20, &qword_2804F97E0, &qword_26D314830);
    return sub_26D2E9284(v10, &qword_2804F97C8, &qword_26D314818);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F97F0, &qword_26D314840);
    if (a2 == 1)
    {
      (*(*(v25 - 8) + 16))(v24, v34, v25);
      *&v24[*(v21 + 36)] = 256;
      sub_26D2E9114(v24, v17, &qword_2804F97E8, &qword_26D314838);
      swift_storeEnumTagMultiPayload();
      sub_26D302A88();
      sub_26D302B6C();
      sub_26D30FAF8();
      sub_26D2E9114(v20, v13, &qword_2804F97E0, &qword_26D314830);
      swift_storeEnumTagMultiPayload();
      sub_26D3029FC();
      sub_26D2E906C(&qword_2804F9808, &qword_2804F97F0, &qword_26D314840, MEMORY[0x277CE04B0]);
      sub_26D30FAF8();
      sub_26D2E9284(v20, &qword_2804F97E0, &qword_26D314830);
      return sub_26D2E9284(v24, &qword_2804F97E8, &qword_26D314838);
    }

    else
    {
      (*(*(v25 - 8) + 16))(v13, v34, v25);
      swift_storeEnumTagMultiPayload();
      sub_26D3029FC();
      sub_26D2E906C(&qword_2804F9808, &qword_2804F97F0, &qword_26D314840, MEMORY[0x277CE04B0]);
      return sub_26D30FAF8();
    }
  }
}

uint64_t sub_26D302044()
{
  v1 = *v0;
  sub_26D310318();
  MEMORY[0x26D6BBC00](v1);
  return sub_26D310338();
}

uint64_t sub_26D3020B8(uint64_t a1)
{
  v2 = *v1;
  sub_26D310318();
  MEMORY[0x26D6BBC00](v2);
  return sub_26D310338();
}

uint64_t sub_26D30210C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a8@<D1>)
{
  v29 = a4;
  v27 = a6;
  v28 = a2;
  v26 = a1;
  v11 = sub_26D30F958();
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_26D30236C(&qword_2804F97A8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v30 = v11;
  v31 = a3;
  v32 = MEMORY[0x277CE1428];
  v33 = v15;
  v34 = a5;
  v35 = MEMORY[0x277CE1410];
  v16 = sub_26D30F948();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v25 - v19;
  v21 = *(v11 + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_26D30FA68();
  (*(*(v23 - 8) + 104))(v14 + v21, v22, v23);
  *v14 = a8;
  v14[1] = a8;
  sub_26D3023B4(v26, 1, v11, a3, v15, a5, v20);
  sub_26D302458(v14);
  sub_26D30FFD8();
  swift_getWitnessTable();
  sub_26D30FDF8();
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_26D30236C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26D3023B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v12 = a2;
  sub_26D30F838();
  sub_26D302DFC(a1, v16, v12, a3, a4, a5, a6, x8_0);
  return sub_26D302FBC(v16);
}

uint64_t sub_26D302458(uint64_t a1)
{
  v2 = sub_26D30F958();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D3024E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93C8, &qword_26D314700);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26D3025C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93C8, &qword_26D314700);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_26D302688(uint64_t a1)
{
  sub_26D302744(319, &qword_2804F93D0, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_26D302744(319, &qword_2804F97B0, type metadata accessor for WhatToTestViewModel);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26D302744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26D30F818();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26D3027DC(void *a1)
{
  v1 = sub_26D30F918();
  sub_26D302840(v1, v2, v3);
  return swift_getWitnessTable();
}

unint64_t sub_26D302840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804FA280[0];
  if (!qword_2804FA280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804FA280);
  }

  return result;
}

uint64_t sub_26D302894(uint64_t *a1)
{
  sub_26D30F958();
  sub_26D30236C(&qword_2804F97A8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  sub_26D30F948();
  swift_getWitnessTable();
  sub_26D30F978();
  sub_26D30F918();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_26D3029FC()
{
  result = qword_2804F97F8;
  if (!qword_2804F97F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F97E0, &qword_26D314830);
    sub_26D302A88();
    sub_26D302B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F97F8);
  }

  return result;
}

unint64_t sub_26D302A88()
{
  result = qword_2804F9800;
  if (!qword_2804F9800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F97E8, &qword_26D314838);
    sub_26D2E906C(&qword_2804F9808, &qword_2804F97F0, &qword_26D314840, MEMORY[0x277CE04B0]);
    sub_26D2E906C(&qword_2804F9810, &qword_2804F9818, &qword_26D314848, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9800);
  }

  return result;
}

unint64_t sub_26D302B6C()
{
  result = qword_2804F9820;
  if (!qword_2804F9820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F97C8, &qword_26D314818);
    sub_26D2E906C(&qword_2804F9808, &qword_2804F97F0, &qword_26D314840, MEMORY[0x277CE04B0]);
    sub_26D2E906C(&qword_2804F9828, &qword_2804F9830, &qword_26D314850, MEMORY[0x277CDF520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9820);
  }

  return result;
}

double sub_26D302C50@<D0>(void (*a1)(__int128 *__return_ptr)@<X1>, void (*a2)(__int128 *__return_ptr)@<X3>, uint64_t a3@<X8>)
{
  if (sub_26D30F8F8())
  {
    a1(v10);
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F94F8, &qword_26D3149B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F99D8, &qword_26D3149B8);
    sub_26D2F16FC();
    sub_26D3042F4();
    sub_26D30FAF8();
  }

  else
  {
    a2(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F94F8, &qword_26D3149B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F99D8, &qword_26D3149B8);
    sub_26D2F16FC();
    sub_26D3042F4();
    sub_26D30FAF8();
  }

  result = *v10;
  v7 = v10[1];
  v8 = v11;
  v9 = v12;
  *a3 = v10[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
  *(a3 + 33) = v9;
  return result;
}

uint64_t sub_26D302DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v15 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](a1, a2);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21, v24, v23);
  (*(v15 + 16))(v18, a1, a5);

  return sub_26D303010(v21, v18, a2, v28, v25, a4, a5, MEMORY[0x277CE1428], a8, a6, a7, MEMORY[0x277CE1410]);
}

uint64_t sub_26D303010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v48 = a5;
  v46 = a4;
  v41 = a3;
  v42 = a8;
  v44 = a2;
  v51 = a9;
  v52 = a1;
  v37[1] = a10;
  v45 = *(a8 - 8);
  v49 = a12;
  MEMORY[0x28223BE20](a1, a8);
  v43 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_26D30FAD8();
  v16 = MEMORY[0x28223BE20](v50, v15);
  v47 = v37 - v17;
  v40 = *(a7 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a6 - 8);
  v22 = v38;
  MEMORY[0x28223BE20](v19, v23);
  v25 = v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_26D30F898();
  MEMORY[0x28223BE20](v26, v27);
  WitnessTable = swift_getWitnessTable();
  v53 = v26;
  v54 = a7;
  v55 = WitnessTable;
  v56 = a11;
  v39 = sub_26D30F7E8();
  MEMORY[0x28223BE20](v39, v29);
  v30 = *(v22 + 16);
  v37[0] = a6;
  v30(v25, v52, a6);
  sub_26D30F888();
  v31 = v40;
  v32 = v44;
  (*(v40 + 16))(v21, v44, a7);
  sub_26D30F7D8();
  v33 = v45;
  v34 = v42;
  v35 = v48;
  (*(v45 + 16))(v43, v48, v42);
  sub_26D30FFD8();
  (*(v33 + 8))(v35, v34);
  (*(v31 + 8))(v32, a7);
  (*(v38 + 8))(v52, v37[0]);
  sub_26D30FAC8();
  return sub_26D30F908();
}

uint64_t sub_26D303484@<X0>(uint64_t a2@<X8>)
{
  v19 = sub_26D30FA78();
  sub_26D2FE200();
  sub_26D304DB4(v20);

  v3 = sub_26D303430(v20);
  sub_26D2E9230(v3, v4, v5);
  v6 = sub_26D30FD58();
  v8 = v7;
  v10 = v9;
  sub_26D30FC38();
  v11 = sub_26D30FD28();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_26D2E92E4(v6, v8, v10 & 1);

  *a2 = v19;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15 & 1;
  *(a2 + 48) = v17;
  return result;
}

unint64_t sub_26D3035AC()
{
  result = qword_2804F98C8;
  if (!qword_2804F98C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F98B8, &qword_26D3148D0);
    sub_26D303664();
    sub_26D2E906C(&qword_2804F98C0, &qword_2804F9868, &qword_26D314888, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F98C8);
  }

  return result;
}

unint64_t sub_26D303664()
{
  result = qword_2804F98D0;
  if (!qword_2804F98D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F98D8, &qword_26D3148D8);
    sub_26D2E906C(&qword_2804F98C0, &qword_2804F9868, &qword_26D314888, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F98D0);
  }

  return result;
}

double sub_26D30371C@<D0>(uint64_t a1@<X8>)
{
  sub_26D2FE200();
  sub_26D304DB4(v45);

  v3 = v46;
  v2 = v47;

  v4 = sub_26D303430(v45);
  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  *v44 = v7;
  sub_26D2E9230(v4, v5, v6);
  v8 = sub_26D30FD58();
  v10 = v9;
  v12 = v11;
  sub_26D30FCF8();
  v13 = sub_26D30FD28();
  v42 = v14;
  v43 = v13;
  v16 = v15;
  v41 = v17;

  sub_26D2E92E4(v8, v10, v12 & 1);

  LOBYTE(v8) = sub_26D30FC18();
  sub_26D30F7B8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v16 & 1;
  sub_26D30FFD8();
  sub_26D30F968();
  *&v44[55] = v51;
  *&v44[71] = v52;
  *&v44[87] = v53;
  *&v44[103] = v54;
  *&v44[7] = v48;
  *&v44[23] = v49;
  *&v44[39] = v50;
  v27 = sub_26D30FE78();
  KeyPath = swift_getKeyPath();
  v29 = sub_26D30FE48();
  v30 = sub_26D30FBB8();
  v31 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98E0, &qword_26D3148E0) + 36));
  v32 = *(sub_26D30F958() + 20);
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_26D30FA68();
  (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
  __asm { FMOV            V0.2D, #27.0 }

  *v31 = _Q0;
  *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9328, &qword_26D313E50) + 36)] = 256;
  *a1 = v43;
  *(a1 + 8) = v42;
  *(a1 + 16) = v26;
  *(a1 + 24) = v41;
  *(a1 + 32) = v8;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  *(a1 + 56) = v23;
  *(a1 + 64) = v25;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v44[64];
  *(a1 + 153) = *&v44[80];
  *(a1 + 169) = *&v44[96];
  *(a1 + 73) = *v44;
  *(a1 + 89) = *&v44[16];
  result = *&v44[32];
  *(a1 + 105) = *&v44[32];
  *(a1 + 121) = *&v44[48];
  *(a1 + 184) = *&v44[111];
  *(a1 + 192) = KeyPath;
  *(a1 + 200) = v27;
  *(a1 + 208) = v29;
  *(a1 + 216) = v30;
  return result;
}

uint64_t sub_26D3039F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WhatToTestViewAllPlatforms(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D303A54()
{
  v1 = *(type metadata accessor for WhatToTestViewAllPlatforms(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268, &qword_26D313D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26D30F808();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26D303B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WhatToTestViewAllPlatforms(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D303BD8()
{
  type metadata accessor for WhatToTestViewAllPlatforms(0);
  sub_26D2FE200();
  v0 = sub_26D305C04();

  [v0 tapOnButtonWith_];

  return swift_unknownObjectRelease();
}

unint64_t sub_26D303C70()
{
  result = qword_2804F98F0;
  if (!qword_2804F98F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F98E0, &qword_26D3148E0);
    sub_26D303D28();
    sub_26D2E906C(&qword_2804F9500, &qword_2804F9328, &qword_26D313E50, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F98F0);
  }

  return result;
}

unint64_t sub_26D303D28()
{
  result = qword_2804F98F8;
  if (!qword_2804F98F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9900, &unk_26D3148F0);
    sub_26D303DE0();
    sub_26D2E906C(&qword_2804F92B0, &qword_2804F92B8, &unk_26D315390, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F98F8);
  }

  return result;
}

unint64_t sub_26D303DE0()
{
  result = qword_2804F9908;
  if (!qword_2804F9908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9910, &unk_26D315370);
    sub_26D303E98();
    sub_26D2E906C(&qword_2804F9938, &qword_2804F9940, &qword_26D314910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9908);
  }

  return result;
}

unint64_t sub_26D303E98()
{
  result = qword_2804F9918;
  if (!qword_2804F9918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9920, &unk_26D314900);
    sub_26D303F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9918);
  }

  return result;
}

unint64_t sub_26D303F24()
{
  result = qword_2804F9928;
  if (!qword_2804F9928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9930, &unk_26D315380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9928);
  }

  return result;
}

unint64_t sub_26D303FA8()
{
  result = qword_2804F9948;
  if (!qword_2804F9948)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F98E8, &qword_26D3148E8);
    sub_26D304034(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9948);
  }

  return result;
}

unint64_t sub_26D304034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804F9950;
  if (!qword_2804F9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9950);
  }

  return result;
}

unint64_t sub_26D304088()
{
  result = qword_2804F9960;
  if (!qword_2804F9960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9858, &qword_26D314878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9850, &qword_26D314870);
    sub_26D2E906C(&qword_2804F9958, &qword_2804F9850, &qword_26D314870, MEMORY[0x277CDD938]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9960);
  }

  return result;
}

uint64_t sub_26D304184@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D30F9A8();
  *a1 = result;
  return result;
}

uint64_t sub_26D3041DC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double sub_26D30421C@<D0>(uint64_t a1@<X8>)
{
  sub_26D302C50(*(v1 + 16), *(v1 + 32), v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

unint64_t sub_26D304268()
{
  result = qword_2804F99C8;
  if (!qword_2804F99C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F99C0, &qword_26D3149A8);
    sub_26D2F16FC();
    sub_26D3042F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F99C8);
  }

  return result;
}

unint64_t sub_26D3042F4()
{
  result = qword_2804F99D0;
  if (!qword_2804F99D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F99D8, &qword_26D3149B8);
    v3 = sub_26D2E906C(&qword_2804F99E0, &qword_2804F99E8, &qword_26D3149C0, MEMORY[0x277CE1198]);
    sub_26D302840(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F99D0);
  }

  return result;
}

uint64_t sub_26D3043B0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_26D304444(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26D304518()
{
  result = qword_2804F9A08;
  if (!qword_2804F9A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9A10, qword_26D3149E8);
    sub_26D3029FC();
    sub_26D2E906C(&qword_2804F9808, &qword_2804F97F0, &qword_26D314840, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9A08);
  }

  return result;
}

unint64_t sub_26D3045D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804FA318[0];
  if (!qword_2804FA318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804FA318);
  }

  return result;
}

uint64_t sub_26D304694()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A18, &qword_26D314A58);
  sub_26D30FF18();
  return v1;
}

void (*sub_26D304738(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A18, &qword_26D314A58);
  sub_26D30FF18();
  return sub_26D3047E0;
}

void sub_26D3047E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    sub_26D30FF28();
  }

  else
  {
    sub_26D30FF28();
  }

  free(v2);
}

uint64_t sub_26D304890()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A18, &qword_26D314A58);
  sub_26D30FF38();
  return v1;
}

uint64_t sub_26D3048E4@<X0>(void *a2@<X8>)
{
  type metadata accessor for WhatToTestViewModel(0);
  result = sub_26D30FF08();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t WhatToTestView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A20, &qword_26D314A60);
  MEMORY[0x28223BE20](v1, v2);
  v4 = v12 - v3;
  v5 = *v0;
  v6 = v0[1];
  *v4 = sub_26D30FA88();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A28, &qword_26D314A68);
  sub_26D301604(&v4[*(v7 + 44)]);
  v8 = sub_26D30F938();
  v9 = sub_26D30FBB8();
  v10 = &v4[*(v1 + 36)];
  *v10 = v8;
  v10[8] = v9;
  v12[2] = v5;
  v12[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A18, &qword_26D314A58);
  sub_26D30FF18();
  type metadata accessor for WhatToTestViewModel(0);
  sub_26D304A78();
  sub_26D304B68();
  sub_26D30FD98();

  return sub_26D304BC0(v4);
}

unint64_t sub_26D304A78()
{
  result = qword_2804F9A30;
  if (!qword_2804F9A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9A20, &qword_26D314A60);
    sub_26D304B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9A30);
  }

  return result;
}

unint64_t sub_26D304B04()
{
  result = qword_2804F9A38;
  if (!qword_2804F9A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9A40, &qword_26D314A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9A38);
  }

  return result;
}

unint64_t sub_26D304B68()
{
  result = qword_2804F9748;
  if (!qword_2804F9748)
  {
    type metadata accessor for WhatToTestViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9748);
  }

  return result;
}

uint64_t sub_26D304BC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A20, &qword_26D314A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D304C48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26D304C90(uint64_t result, int a2, int a3)
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

uint64_t sub_26D304CDC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9A20, &qword_26D314A60);
  type metadata accessor for WhatToTestViewModel(255);
  sub_26D304A78();
  sub_26D304B68();
  return swift_getOpaqueTypeConformance2();
}

double sub_26D304D60@<D0>(_OWORD *a1@<X8>)
{
  sub_26D30A698(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

__n128 sub_26D304DA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

double sub_26D304DB4@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v9 = v1;
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  swift_beginAccess();
  v3 = v1[2];
  v9 = v1[1];
  v10 = v3;
  v4 = v1[4];
  v11 = v1[3];
  v12 = v4;
  sub_26D3050B0(&v9, v8);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

uint64_t sub_26D304EA8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v10[0] = v3;
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v10[2] = v3[3];
  v10[3] = v6;
  v10[0] = v4;
  v10[1] = v5;
  v7 = v3[2];
  *a2 = v3[1];
  a2[1] = v7;
  a2[2] = v3[3];
  a2[3] = v6;
  return sub_26D3050B0(v10, v9);
}

uint64_t sub_26D304F88(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F638();
}

uint64_t type metadata accessor for WhatToTestViewModel(uint64_t a1)
{
  result = qword_2804FA580;
  if (!qword_2804FA580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D30510C(uint64_t a1)
{
  swift_getKeyPath();
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F638();
  sub_26D303430(a1);
}

uint64_t sub_26D305260(_OWORD *a1, _OWORD *a2)
{
  swift_beginAccess();
  v4 = a2[1];
  a1[1] = *a2;
  a1[2] = v4;
  v5 = a2[3];
  a1[3] = a2[2];
  a1[4] = v5;
  sub_26D3050B0(a2, v7);
}

uint64_t (*sub_26D3053E4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  *v4 = v1;
  swift_getKeyPath();
  sub_26D30F668();

  swift_beginAccess();
  return sub_26D305524;
}

__n128 sub_26D305530@<Q0>(uint64_t a1@<X8>)
{
  sub_26D30A820(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_26D305580@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_26D30559C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v8 = v1;
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  swift_beginAccess();
  v3 = *(v1 + 128);
  v10 = *(v1 + 112);
  v11 = v3;
  v12 = *(v1 + 144);
  v4 = *(v1 + 96);
  v8 = *(v1 + 80);
  v9 = v4;
  sub_26D305854(&v8, &v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26D30568C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v10[0] = v3;
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  swift_beginAccess();
  v4 = *(v3 + 128);
  v11 = *(v3 + 112);
  v12 = v4;
  v13 = *(v3 + 144);
  v5 = v13;
  v6 = *(v3 + 96);
  v10[0] = *(v3 + 80);
  v7 = v10[0];
  v10[1] = v6;
  *(a2 + 32) = v11;
  *(a2 + 48) = v4;
  *(a2 + 64) = v5;
  *a2 = v7;
  *(a2 + 16) = v6;
  return sub_26D305854(v10, &v9);
}

uint64_t sub_26D305770(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F638();
}

uint64_t sub_26D3058B0(uint64_t a1)
{
  swift_getKeyPath();
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F638();
  sub_26D305A5C(a1);
}

uint64_t sub_26D305980(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 112);
  v5 = *(a2 + 48);
  *(a1 + 112) = *(a2 + 32);
  *(a1 + 128) = v5;
  *(a1 + 144) = *(a2 + 64);
  v6 = *(a2 + 16);
  *(a1 + 80) = *a2;
  *(a1 + 96) = v6;
  sub_26D305854(a2, &v8);
}

uint64_t (*sub_26D305AB0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  *v4 = v1;
  swift_getKeyPath();
  sub_26D30F668();

  swift_beginAccess();
  return sub_26D305BF0;
}

uint64_t sub_26D305C04()
{
  swift_getKeyPath();
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_26D305CBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  swift_beginAccess();
  *a2 = *(v3 + 152);
  return swift_unknownObjectRetain();
}

uint64_t sub_26D305DA8(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 152) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
    sub_26D30F638();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_26D305ED0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 152) = v1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_26D305F34(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  *v4 = v1;
  swift_getKeyPath();
  sub_26D30F668();

  swift_beginAccess();
  return sub_26D306074;
}

uint64_t sub_26D306088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D3060F8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  v3 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__imageURL;
  swift_beginAccess();
  return sub_26D30631C(v5 + v3, a1);
}

uint64_t sub_26D3061C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  v4 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__imageURL;
  swift_beginAccess();
  return sub_26D30631C(v3 + v4, a2);
}

uint64_t sub_26D306288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_26D30631C(a1, &v7 - v4);
  return sub_26D30638C(v5);
}

uint64_t sub_26D30631C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D30638C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__imageURL;
  swift_beginAccess();
  sub_26D30631C(v1 + v7, v6);
  v8 = sub_26D3089F4(v6, a1);
  sub_26D2E9284(v6, &qword_2804F9270, &qword_26D314510);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
    sub_26D30F638();
  }

  else
  {
    swift_beginAccess();
    sub_26D308CE4(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_26D2E9284(a1, &qword_2804F9270, &qword_26D314510);
}

uint64_t (*sub_26D306570(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  *v4 = v1;
  swift_getKeyPath();
  sub_26D30F668();

  swift_beginAccess();
  return sub_26D3066B8;
}

uint64_t sub_26D3066C4()
{
  swift_getKeyPath();
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  swift_beginAccess();
}

uint64_t sub_26D306784@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  v4 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__subtitles;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_26D306878(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__subtitles;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    if (a1 && (sub_26D308964(*(v1 + v3), a1) & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5);
    sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
    sub_26D30F638();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_26D3069CC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__subtitles;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*sub_26D306A34(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  *v4 = v1;
  swift_getKeyPath();
  sub_26D30F668();

  swift_beginAccess();
  return sub_26D306B7C;
}

uint64_t sub_26D306B88@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_26D306B90()
{
  swift_getKeyPath();
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  v1 = (v0 + OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_26D306C60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  v4 = (v3 + OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__title);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_26D306D2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_26D306D6C(v1, v2);
}

uint64_t sub_26D306D6C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__title);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_26D3102F8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v10);
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F638();
}

uint64_t (*sub_26D306EDC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  *v4 = v1;
  swift_getKeyPath();
  sub_26D30F668();

  swift_beginAccess();
  return sub_26D307024;
}

uint64_t sub_26D307038()
{
  swift_getKeyPath();
  v3 = v0;
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  v1 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__iconNeedsMask;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_26D3070F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  v4 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__iconNeedsMask;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26D3071E0(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__iconNeedsMask;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v6);
    sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
    sub_26D30F638();
  }

  return result;
}

uint64_t (*sub_26D30730C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  *v4 = v1;
  swift_getKeyPath();
  sub_26D30F668();

  swift_beginAccess();
  return sub_26D307454;
}

void sub_26D307460(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_26D30F658();

  free(v3);
}

uint64_t sub_26D3074E4(void *a1)
{
  v2 = swift_allocObject();
  sub_26D307524(a1);
  return v2;
}

uint64_t sub_26D307524(void *a1)
{
  sub_26D30A698(v11);
  v3 = v11[1];
  *(v1 + 16) = v11[0];
  *(v1 + 32) = v3;
  v4 = v11[3];
  *(v1 + 48) = v11[2];
  *(v1 + 64) = v4;
  sub_26D30A820(v12);
  v5 = v12[3];
  *(v1 + 112) = v12[2];
  *(v1 + 128) = v5;
  *(v1 + 144) = v13;
  v6 = v12[1];
  *(v1 + 80) = v12[0];
  *(v1 + 96) = v6;
  v7 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__imageURL;
  v8 = sub_26D30F5B8();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__subtitles) = 0;
  v9 = (v1 + OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__title);
  *v9 = 0;
  v9[1] = 0;
  *(v1 + OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__iconNeedsMask) = 0;
  sub_26D30F678();
  *(v1 + 152) = a1;
  [a1 viewIsReadyWithInterface_];
  return v1;
}

uint64_t sub_26D30763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getKeyPath();
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  v21 = v9;
  swift_getKeyPath();
  sub_26D30F668();

  swift_beginAccess();
  v9[10] = a1;
  v9[11] = a2;

  swift_getKeyPath();
  sub_26D30F658();

  swift_getKeyPath();
  sub_26D30F648();

  swift_getKeyPath();
  sub_26D30F668();

  v9[12] = a3;
  v9[13] = a4;

  swift_getKeyPath();
  sub_26D30F658();

  swift_getKeyPath();
  sub_26D30F648();

  swift_getKeyPath();
  sub_26D30F668();

  v14 = v9[14];
  v21[14] = a5;
  v15 = a5;

  swift_getKeyPath();
  sub_26D30F658();

  swift_getKeyPath();
  sub_26D30F648();

  swift_getKeyPath();
  sub_26D30F668();

  v21[15] = a6;
  v21[16] = a7;

  swift_getKeyPath();
  sub_26D30F658();

  swift_getKeyPath();
  sub_26D30F648();

  swift_getKeyPath();
  sub_26D30F668();

  v21[17] = a8;
  v21[18] = a9;

  swift_getKeyPath();
  sub_26D30F658();
}

uint64_t sub_26D307B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getKeyPath();
  sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
  sub_26D30F648();

  swift_getKeyPath();
  sub_26D30F668();

  swift_beginAccess();
  v8[2] = a1;
  v8[3] = a2;

  swift_getKeyPath();
  sub_26D30F658();

  swift_getKeyPath();
  sub_26D30F648();

  swift_getKeyPath();
  sub_26D30F668();

  v8[4] = a3;
  v8[5] = a4;

  swift_getKeyPath();
  sub_26D30F658();

  swift_getKeyPath();
  sub_26D30F648();

  swift_getKeyPath();
  sub_26D30F668();

  v8[6] = a5;
  v8[7] = a6;

  swift_getKeyPath();
  sub_26D30F658();

  swift_getKeyPath();
  sub_26D30F648();

  swift_getKeyPath();
  sub_26D30F668();

  v8[8] = a7;
  v8[9] = a8;

  swift_getKeyPath();
  sub_26D30F658();
}

uint64_t sub_26D307F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v53 = a6;
  v52 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v49 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v47 - v17;
  v19 = sub_26D30F5B8();
  v50 = *(v19 - 8);
  v51 = v19;
  v21 = MEMORY[0x28223BE20](v19, v20);
  v48 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a4;
  v59 = a5;
  v56 = 8222587;
  v57 = 0xE300000000000000;
  sub_26D2E9230(v21, v23, v24);
  if (sub_26D310238())
  {
    v58 = a4;
    v59 = a5;
    v56 = 8218747;
    v57 = 0xE300000000000000;
    if (sub_26D310238())
    {
      v58 = a4;
      v59 = a5;
      v56 = 8218235;
      v57 = 0xE300000000000000;
      if (sub_26D310238())
      {
        v58 = a4;
        v59 = a5;
        v56 = 8222587;
        v57 = 0xE300000000000000;
        v54 = 160;
        v54 = sub_26D3102D8();
        v55 = v25;
        v26 = sub_26D310228();
        v28 = v27;

        v58 = v26;
        v59 = v28;
        v56 = 8218747;
        v57 = 0xE300000000000000;
        v54 = 160;
        v54 = sub_26D3102D8();
        v55 = v29;
        v30 = sub_26D310228();
        v32 = v31;

        v58 = v30;
        v59 = v32;
        v56 = 8218235;
        v57 = 0xE300000000000000;
        v54 = 1667851624;
        v55 = 0xE400000000000000;
        v33 = sub_26D310228();
        v35 = v34;

        v58 = v33;
        v59 = v35;
        v56 = 8217467;
        v57 = 0xE300000000000000;
        v54 = 0;
        v55 = 0xE000000000000000;
        sub_26D310228();

        sub_26D30F588();

        v37 = v50;
        v36 = v51;
        if ((*(v50 + 48))(v18, 1, v51) == 1)
        {
          sub_26D2E9284(v18, &qword_2804F9270, &qword_26D314510);
        }

        else
        {
          v38 = v48;
          (*(v37 + 32))(v48, v18, v36);
          v39 = v49;
          (*(v37 + 16))(v49, v38, v36);
          (*(v37 + 56))(v39, 0, 1, v36);
          sub_26D30638C(v39);
          (*(v37 + 8))(v38, v36);
        }
      }
    }
  }

  sub_26D306D6C(v52, a2);
  v40 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__subtitles;
  swift_beginAccess();
  if (*(v7 + v40) && (sub_26D308964(*(v7 + v40), a3) & 1) != 0)
  {
    *(v7 + v40) = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v42);
    v56 = v7;
    sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);

    sub_26D30F638();
  }

  v43 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__iconNeedsMask;
  result = swift_beginAccess();
  if (*(v7 + v43) == (v53 & 1))
  {
    *(v7 + v43) = v53 & 1;
  }

  else
  {
    v45 = swift_getKeyPath();
    MEMORY[0x28223BE20](v45, v46);
    v54 = v7;
    sub_26D308FDC(&qword_2804F9748, type metadata accessor for WhatToTestViewModel, &unk_26D314C48);
    sub_26D30F638();
  }

  return result;
}

char *sub_26D3086F8()
{

  v1 = *(v0 + 112);

  swift_unknownObjectRelease();
  sub_26D2E9284(v0 + OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__imageURL, &qword_2804F9270, &qword_26D314510);

  v2 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel___observationRegistrar;
  v3 = sub_26D30F688();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_26D308810()
{

  v1 = *(v0 + 14);

  swift_unknownObjectRelease();
  sub_26D2E9284(&v0[OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__imageURL], &qword_2804F9270, &qword_26D314510);

  v2 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel___observationRegistrar;
  v3 = sub_26D30F688();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_26D308964(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_26D3102F8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_26D3089F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26D30F5B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F96D0, &qword_26D314538);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_26D30631C(a1, &v24 - v16);
  sub_26D30631C(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_26D30631C(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_26D308FDC(&qword_2804F96D8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v21 = sub_26D3100A8();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_26D2E9284(v17, &qword_2804F9270, &qword_26D314510);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_26D2E9284(v17, &qword_2804F96D0, &qword_26D314538);
    v20 = 1;
    return v20 & 1;
  }

  sub_26D2E9284(v17, &qword_2804F9270, &qword_26D314510);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_26D308CE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9270, &qword_26D314510);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D308D54()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__imageURL;
  swift_beginAccess();
  sub_26D308CE4(v1, v2 + v3);
  return swift_endAccess();
}

uint64_t sub_26D308DE8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__title);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_26D308E74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14TestFlightCore19WhatToTestViewModel__iconNeedsMask;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_26D308ED8(uint64_t a1)
{
  sub_26D2FCEAC(319);
  if (v1 <= 0x3F)
  {
    sub_26D30F688();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_26D308FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26D309084(uint64_t a1)
{
  type metadata accessor for WhatToTestViewModel(0);
  v1 = swift_unknownObjectRetain();
  sub_26D3074E4(v1);
  sub_26D3048E4(&v4);
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A48, &qword_26D314D40));
  return sub_26D30FAB8();
}

void *sub_26D3091B8(uint64_t a1)
{
  v1 = type metadata accessor for FeedbackView(0);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = (&v15[-1] - v7);
  v9 = type metadata accessor for FeedbackViewModel(0);
  v10 = swift_unknownObjectRetain();
  sub_26D2F5D8C(v10);
  sub_26D2EA374(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A50, qword_26D314D48);
  sub_26D2F1CD0(v8, v5);
  v11 = sub_26D2E96EC();
  v15[3] = v9;
  v15[4] = &off_287EAAC28;
  v15[0] = v11;
  v12 = sub_26D2E7A0C(v5, v15);
  sub_26D3092D4(v8);
  return v12;
}

uint64_t sub_26D3092D4(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id TestFlightCoreUI.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TestFlightCoreUI.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TestFlightCoreUI();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TestFlightCoreUI.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TestFlightCoreUI();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26D3095A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A58, &qword_26D314DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A60, &qword_26D314DC8);
  *(a2 + *(result + 36)) = 0x3FE0000000000000;
  return result;
}

double sub_26D309634@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A68, &qword_26D314DD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22[-1] - v7;
  sub_26D30FE68();
  v9 = sub_26D30FE88();

  v22[0] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A70, &qword_26D314DD8);
  v11 = sub_26D30A0A4(&qword_2804F9A78, &qword_2804F9A70, &qword_26D314DD8);
  v12 = MEMORY[0x277CE0F78];
  v13 = MEMORY[0x277CE0F60];
  sub_26D30210C(v22, v10, MEMORY[0x277CE0F78], v11, MEMORY[0x277CE0F60], v8, a2);

  sub_26D30FE68();
  v14 = sub_26D30FE88();

  v22[3] = v13;
  v23 = v14;
  v22[0] = v10;
  v22[1] = v12;
  v22[2] = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26D30210C(&v23, v4, v12, OpaqueTypeConformance2, v13, a1, a2);

  (*(v5 + 8))(v8, v4);
  sub_26D30FE78();
  v16 = sub_26D30FE88();

  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A80, &qword_26D314DE0) + 36);
  *v17 = v16;
  *(v17 + 8) = xmmword_26D314DA0;
  *(v17 + 24) = 0x3FE0000000000000;
  sub_26D30FE78();
  v18 = sub_26D30FE88();

  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9A88, &qword_26D314DE8) + 36);
  *v19 = v18;
  result = 0.15;
  *(v19 + 8) = xmmword_26D314DB0;
  *(v19 + 24) = 0xBFE0000000000000;
  return result;
}

uint64_t View.conditional<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = a7;
  v58 = a6;
  v56 = a5;
  v53 = a2;
  v54 = a1;
  v52 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v49 = &v47 - v13;
  v14 = sub_26D310218();
  v47 = *(v14 - 8);
  v48 = v14;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v47 - v17;
  v19 = *(a4 - 8);
  v21 = MEMORY[0x28223BE20](v16, v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = &v47 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v47 - v29;
  v55 = a3;
  v31 = sub_26D30FB08();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v47 - v34;
  v51 = v7;
  v54(v7);
  if ((*(v19 + 48))(v18, 1, a4) == 1)
  {
    (*(v47 + 8))(v18, v48);
    v36 = v52;
    v37 = *(v52 + 16);
    v38 = v49;
    v39 = v55;
    v37(v49, v51, v55);
    v40 = v50;
    v37(v50, v38, v39);
    v41 = v56;
    sub_26D309EAC(v40, a4, v39, v58, v56);
    v42 = *(v36 + 8);
    v42(v40, v39);
    v43 = v38;
    v44 = v39;
  }

  else
  {
    (*(v19 + 32))(v30, v18, a4);
    v45 = *(v19 + 16);
    v45(v27, v30, a4);
    v45(v23, v27, a4);
    v41 = v56;
    sub_26D309DB4(v23, a4, v55, v58, v56);
    v42 = *(v19 + 8);
    v42(v23, a4);
    v42(v27, a4);
    v43 = v30;
    v44 = a4;
  }

  v42(v43, v44);
  v59 = v58;
  v60 = v41;
  swift_getWitnessTable();
  (*(v32 + 16))(v57, v35, v31);
  return (*(v32 + 8))(v35, v31);
}

uint64_t sub_26D309DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_26D30FAE8();
  MEMORY[0x28223BE20](v7, v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_26D30FAF8();
}

uint64_t sub_26D309EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_26D30FAE8();
  MEMORY[0x28223BE20](v7, v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_26D30FAF8();
}

unint64_t sub_26D30A000()
{
  result = qword_2804F9A90;
  if (!qword_2804F9A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9A60, &qword_26D314DC8);
    sub_26D30A0A4(&qword_2804F9A98, &qword_2804F9A58, &qword_26D314DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9A90);
  }

  return result;
}

uint64_t sub_26D30A0A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_26D30A0FC()
{
  result = qword_2804F9AA0;
  if (!qword_2804F9AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9A88, &qword_26D314DE8);
    sub_26D30A188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9AA0);
  }

  return result;
}

unint64_t sub_26D30A188()
{
  result = qword_2804F9AA8;
  if (!qword_2804F9AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9A80, &qword_26D314DE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9A68, &qword_26D314DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9A70, &qword_26D314DD8);
    sub_26D30A0A4(&qword_2804F9A78, &qword_2804F9A70, &qword_26D314DD8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9AA8);
  }

  return result;
}

unint64_t sub_26D30A2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804F9AB0;
  if (!qword_2804F9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9AB0);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx14TestFlightCore7OpacityVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_26D30F918();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_26D30A3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804F9AB8;
  if (!qword_2804F9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9AB8);
  }

  return result;
}

uint64_t sub_26D30A478()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_26D30A4A8(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_26D30A500()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_26D30A530(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_26D30A588()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_26D30A5B8(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_26D30A610()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_26D30A640(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

double sub_26D30A698@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_26D30A6A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

void *sub_26D30A6BC()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_26D30A710()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_26D30A740(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_26D30A798()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_26D30A7C8(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

double sub_26D30A820@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_26D30A834@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

unint64_t ButtonEvent.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26D30A87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804F9AC0;
  if (!qword_2804F9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9AC0);
  }

  return result;
}

uint64_t sub_26D30A8D0()
{
  v1 = *v0;
  sub_26D310318();
  MEMORY[0x26D6BBC00](v1);
  return sub_26D310338();
}

uint64_t sub_26D30A944(uint64_t a1)
{
  v2 = *v1;
  sub_26D310318();
  MEMORY[0x26D6BBC00](v2);
  return sub_26D310338();
}

unint64_t *sub_26D30A988@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26D30A9C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26D30AA20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26D30AAB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26D30AB14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26D30ABB0(uint64_t a1, char a2)
{
  v4 = sub_26D30FA38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v9 = sub_26D310198();
    v10 = sub_26D30FB68();
    sub_26D30F718(v9, &dword_26D2C7000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_26D30FA28();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v12[1];
  }

  return a1;
}

uint64_t sub_26D30ACF4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9AC8, &qword_26D315060);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9AD0, &qword_26D315068);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9AD8, &qword_26D315070);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9AE0, &qword_26D315078);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v58 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9AE8, &qword_26D315080);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v58 - v26;
  *v8 = sub_26D30FA78();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9AF0, &qword_26D315088);
  sub_26D30B0D4(a1, a2 & 1, &v8[*(v28 + 44)]);
  sub_26D30FFD8();
  sub_26D30F968();
  sub_26D2F2534(v8, v13, &qword_2804F9AC8, &qword_26D315060);
  v29 = &v13[*(v10 + 44)];
  v30 = v64;
  *(v29 + 4) = v63;
  *(v29 + 5) = v30;
  *(v29 + 6) = v65;
  v31 = v60;
  *v29 = v59;
  *(v29 + 1) = v31;
  v32 = v62;
  *(v29 + 2) = v61;
  *(v29 + 3) = v32;
  sub_26D2F2534(v13, v17, &qword_2804F9AD0, &qword_26D315068);
  v33 = sub_26D30FBD8();
  sub_26D30F7B8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_26D2F2534(v17, v22, &qword_2804F9AD8, &qword_26D315070);
  v42 = &v22[*(v19 + 44)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v43 = sub_26D30FBA8();
  sub_26D30F7B8();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_26D2F2534(v22, v27, &qword_2804F9AE0, &qword_26D315078);
  v52 = &v27[*(v24 + 44)];
  *v52 = v43;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  v53 = sub_26D30F938();
  LOBYTE(v10) = sub_26D30FBB8();
  v54 = v27;
  v55 = v58;
  sub_26D2F2534(v54, v58, &qword_2804F9AE8, &qword_26D315080);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9AF8, &qword_26D315090);
  v57 = v55 + *(result + 36);
  *v57 = v53;
  *(v57 + 8) = v10;
  return result;
}

uint64_t sub_26D30B0D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v72 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9BC8, &qword_26D315350);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v71 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v73 = v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9BD0, &qword_26D315358);
  v76 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9BD8, &qword_26D315360);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v69 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v62 - v20;
  v74 = sub_26D30FA88();
  LOBYTE(v91[0]) = 0;
  v22 = a2 & 1;
  sub_26D30B954(a2 & 1, v112);
  memcpy(v124, v112, 0x179uLL);
  memcpy(v125, v112, 0x179uLL);
  sub_26D2E9114(v124, v89, &qword_2804F9BE0, &qword_26D315368);
  sub_26D2E9284(v125, &qword_2804F9BE0, &qword_26D315368);
  memcpy(&v116[7], v124, 0x179uLL);
  v75 = LOBYTE(v91[0]);
  sub_26D30C188(a2 & 1, &v81);
  v70 = sub_26D30FBA8();
  sub_26D30F7B8();
  v67 = v24;
  v68 = v23;
  v65 = v26;
  v66 = v25;
  v113 = 0;
  sub_26D30FFD8();
  sub_26D30F968();
  *&v114[55] = v120;
  *&v114[71] = v121;
  *&v114[87] = v122;
  *&v114[103] = v123;
  *&v114[7] = v117;
  *&v114[23] = v118;
  *&v114[39] = v119;
  v64 = sub_26D30FBC8();
  sub_26D30F7B8();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v115 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = a2 & 1;
  v79 = a1;
  v80 = a2 & 1;

  v62[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98E0, &qword_26D3148E0);
  v62[0] = sub_26D303C70();
  sub_26D30FF58();
  v36 = sub_26D2E906C(&qword_2804F9BE8, &qword_2804F9BD0, &qword_26D315358, MEMORY[0x277CDF028]);
  v37 = v11;
  View.borderModifier(radius:)(v11, v36, 27.0);
  v38 = *(v76 + 8);
  v76 += 8;
  v38(v14, v37);
  v39 = sub_26D30FBD8();
  sub_26D30F7B8();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9BF0, &qword_26D3153A0) + 36)];
  v63 = v21;
  *v48 = v39;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = swift_allocObject();
  *(v49 + 16) = a1;
  *(v49 + 24) = v22;
  v77 = a1;
  v78 = v22;

  sub_26D30FF58();
  v50 = v73;
  View.borderModifier(radius:)(v37, v36, 27.0);
  v38(v14, v37);
  v51 = v69;
  sub_26D2E9114(v21, v69, &qword_2804F9BD8, &qword_26D315360);
  v52 = v71;
  sub_26D2E9114(v50, v71, &qword_2804F9BC8, &qword_26D315350);
  v89[0] = v74;
  v89[1] = 0;
  LOBYTE(v89[2]) = v75;
  memcpy(&v89[2] + 1, v116, 0x180uLL);
  v53 = v72;
  memcpy(v72, v89, 0x191uLL);
  v90[4] = v85;
  v90[5] = v86;
  v90[6] = v87;
  v90[0] = v81;
  v90[1] = v82;
  v90[2] = v83;
  v90[3] = v84;
  *(&v90[16] + 1) = *&v114[96];
  *(&v90[13] + 1) = *&v114[48];
  *(&v90[12] + 1) = *&v114[32];
  *(&v90[11] + 1) = *&v114[16];
  *(&v90[10] + 1) = *v114;
  *(&v90[15] + 1) = *&v114[80];
  *&v90[7] = v88;
  v54 = v70;
  BYTE8(v90[7]) = v70;
  v56 = v67;
  v55 = v68;
  *&v90[8] = v68;
  *(&v90[8] + 1) = v67;
  v58 = v65;
  v57 = v66;
  *&v90[9] = v66;
  *(&v90[9] + 1) = v65;
  LOBYTE(v90[10]) = 0;
  *&v90[17] = *&v114[111];
  *(&v90[14] + 1) = *&v114[64];
  LOBYTE(v37) = v64;
  BYTE8(v90[17]) = v64;
  *&v90[18] = v28;
  *(&v90[18] + 1) = v30;
  *&v90[19] = v32;
  *(&v90[19] + 1) = v34;
  LOBYTE(v90[20]) = 0;
  memcpy(v53 + 51, v90, 0x141uLL);
  v53[92] = 0;
  *(v53 + 744) = 1;
  v59 = v53;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9BF8, &qword_26D3153A8);
  sub_26D2E9114(v51, v59 + *(v60 + 80), &qword_2804F9BD8, &qword_26D315360);
  sub_26D2E9114(v52, v59 + *(v60 + 96), &qword_2804F9BC8, &qword_26D315350);
  sub_26D2E9114(v89, v112, &qword_2804F9C00, &qword_26D3153B0);
  sub_26D2E9114(v90, v112, &qword_2804F9C08, &qword_26D3153B8);
  sub_26D2E9284(v73, &qword_2804F9BC8, &qword_26D315350);
  sub_26D2E9284(v63, &qword_2804F9BD8, &qword_26D315360);
  sub_26D2E9284(v52, &qword_2804F9BC8, &qword_26D315350);
  sub_26D2E9284(v51, &qword_2804F9BD8, &qword_26D315360);
  v91[4] = v85;
  v91[5] = v86;
  v91[6] = v87;
  v92 = v88;
  v91[0] = v81;
  v91[1] = v82;
  v91[2] = v83;
  v91[3] = v84;
  v93 = v54;
  v94 = v55;
  v95 = v56;
  v96 = v57;
  v97 = v58;
  v98 = 0;
  *v105 = *&v114[96];
  v102 = *&v114[48];
  v101 = *&v114[32];
  v100 = *&v114[16];
  v99 = *v114;
  *&v105[15] = *&v114[111];
  v104 = *&v114[80];
  v103 = *&v114[64];
  v106 = v37;
  v107 = v28;
  v108 = v30;
  v109 = v32;
  v110 = v34;
  v111 = 0;
  sub_26D2E9284(v91, &qword_2804F9C08, &qword_26D3153B8);
  v112[0] = v74;
  v112[1] = 0;
  LOBYTE(v112[2]) = v75;
  memcpy(&v112[2] + 1, v116, 0x180uLL);
  return sub_26D2E9284(v112, &qword_2804F9C00, &qword_26D3153B0);
}

uint64_t sub_26D30B954@<X0>(int a2@<W1>, void *a3@<X8>)
{
  v74 = a3;
  v4 = sub_26D30FA38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v73 = a2;
  if ((a2 & 1) == 0)
  {
    v9 = sub_26D310198();
    v10 = sub_26D30FB68();
    sub_26D30F718(v9, &dword_26D2C7000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_26D30FA28();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  v69 = v8;
  v70 = v5;
  v71 = v4;
  sub_26D30559C(v166);

  v11 = v166[0];
  v12 = v166[1];

  v13 = sub_26D305A5C(v166);
  if (v12)
  {
    v16 = v11;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (v12)
  {
    v17 = v12;
  }

  v126 = v16;
  v127 = v17;
  v72 = sub_26D2E9230(v13, v14, v15);
  v18 = sub_26D30FD58();
  v20 = v19;
  v22 = v21;
  sub_26D30FCB8();
  v23 = sub_26D30FD28();
  v25 = v24;
  v27 = v26;
  v79 = v28;

  sub_26D2E92E4(v18, v20, v22 & 1);

  sub_26D30FC68();
  v29 = sub_26D30FD08();
  v80 = v30;
  v81 = v29;
  LOBYTE(v18) = v31;
  v82 = v32;
  sub_26D2E92E4(v23, v25, v27 & 1);

  sub_26D30FFE8();
  sub_26D30F968();
  v75 = v18 & 1;
  v161 = v18 & 1;
  KeyPath = swift_getKeyPath();
  LODWORD(v79) = sub_26D30FBC8();
  sub_26D30F7B8();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v162 = 0;
  v77 = sub_26D30F938();
  v76 = sub_26D30FBB8();

  if ((v73 & 1) == 0)
  {
    v41 = sub_26D310198();
    v42 = sub_26D30FB68();
    sub_26D30F718(v41, &dword_26D2C7000, v42, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    v43 = v69;
    sub_26D30FA28();
    swift_getAtKeyPath();

    (*(v70 + 8))(v43, v71);
  }

  sub_26D30559C(v167);

  v45 = v168;
  v44 = v169;

  sub_26D305A5C(v167);
  if (v44)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v47 = 0xE000000000000000;
  if (v44)
  {
    v47 = v44;
  }

  v126 = v46;
  v127 = v47;
  v48 = sub_26D30FD58();
  v50 = v49;
  v52 = v51;
  sub_26D30FCB8();
  v53 = sub_26D30FD28();
  v55 = v54;
  v57 = v56;

  sub_26D2E92E4(v48, v50, v52 & 1);

  LODWORD(v126) = sub_26D30FB58();
  v58 = sub_26D30FD18();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_26D2E92E4(v53, v55, v57 & 1);

  sub_26D30FFE8();
  sub_26D30F968();
  v65 = v62 & 1;
  v152 = v62 & 1;
  v66 = swift_getKeyPath();
  *&v91 = v81;
  *(&v91 + 1) = v80;
  LOBYTE(v92) = v75;
  *(&v92 + 1) = *v160;
  DWORD1(v92) = *&v160[3];
  v97 = v157;
  v98 = v158;
  v99 = v159;
  v93 = v153;
  v94 = v154;
  v95 = v155;
  v96 = v156;
  *(&v92 + 1) = v82;
  *&v100 = KeyPath;
  BYTE8(v100) = 0;
  HIDWORD(v100) = *&v164[3];
  *(&v100 + 9) = *v164;
  LOBYTE(v101) = v79;
  DWORD1(v101) = *&v163[3];
  *(&v101 + 1) = *v163;
  *(&v101 + 1) = v34;
  *&v102 = v36;
  *(&v102 + 1) = v38;
  *&v103[0] = v40;
  BYTE8(v103[0]) = 0;
  HIDWORD(v103[0]) = *&v165[3];
  *(v103 + 9) = *v165;
  *&v103[1] = v77;
  BYTE8(v103[1]) = v76;
  v83[10] = v101;
  v83[11] = v102;
  v83[0] = v91;
  v83[1] = v92;
  v83[4] = v155;
  v83[5] = v156;
  v83[2] = v153;
  v83[3] = v154;
  v83[8] = v159;
  v83[9] = v100;
  v83[6] = v157;
  v83[7] = v158;
  *&v104 = v58;
  *(&v104 + 1) = v60;
  LOBYTE(v105) = v65;
  *(&v105 + 1) = *v151;
  DWORD1(v105) = *&v151[3];
  *(&v105 + 1) = v64;
  v83[12] = v103[0];
  *(&v83[12] + 9) = *(v103 + 9);
  v110 = v88;
  v111 = v89;
  v112[0] = v90;
  v106 = v84;
  v107 = v85;
  v108 = v86;
  v109 = v87;
  *&v112[1] = v66;
  BYTE8(v112[1]) = 0;
  *(&v83[22] + 9) = *(v112 + 9);
  v83[21] = v89;
  v83[22] = v90;
  v83[17] = v85;
  v83[18] = v86;
  v83[19] = v87;
  v83[20] = v88;
  v83[14] = v104;
  v83[15] = v105;
  v83[16] = v84;
  memcpy(v74, v83, 0x179uLL);
  v113[0] = v58;
  v113[1] = v60;
  v114 = v65;
  *v115 = *v151;
  *&v115[3] = *&v151[3];
  v121 = v88;
  v122 = v89;
  v123 = v90;
  v117 = v84;
  v118 = v85;
  v119 = v86;
  v120 = v87;
  v116 = v64;
  v124 = v66;
  v125 = 0;
  sub_26D2E9114(&v91, &v126, &qword_2804F9C10, &qword_26D315420);
  sub_26D2E9114(&v104, &v126, &qword_2804F9C18, &qword_26D315428);
  sub_26D2E9284(v113, &qword_2804F9C18, &qword_26D315428);
  v126 = v81;
  v127 = v80;
  v128 = v75;
  *v129 = *v160;
  *&v129[3] = *&v160[3];
  v135 = v157;
  v136 = v158;
  v137 = v159;
  v131 = v153;
  v132 = v154;
  v133 = v155;
  v134 = v156;
  v130 = v82;
  v138 = KeyPath;
  v139 = 0;
  *&v140[3] = *&v164[3];
  *v140 = *v164;
  v141 = v79;
  *&v142[3] = *&v163[3];
  *v142 = *v163;
  v143 = v34;
  v144 = v36;
  v145 = v38;
  v146 = v40;
  v147 = 0;
  *&v148[3] = *&v165[3];
  *v148 = *v165;
  v149 = v77;
  v150 = v76;
  return sub_26D2E9284(&v126, &qword_2804F9C10, &qword_26D315420);
}

void sub_26D30C188(char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = sub_26D30FEE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_26D30FA38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];

  if ((a2 & 1) == 0)
  {
    v15 = sub_26D310198();
    v16 = sub_26D30FB68();
    sub_26D30F718(v15, &dword_26D2C7000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_26D30FA28();
    swift_getAtKeyPath();

    (*(v11 + 8))(v14, v10);
  }

  sub_26D30559C(v28);

  v17 = v29;
  v29;
  sub_26D305A5C(v28);
  if (!v17)
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  sub_26D30FEC8();
  (*(v6 + 104))(v9, *MEMORY[0x277CE0FE0], v5);
  v18 = sub_26D30FEF8();

  (*(v6 + 8))(v9, v5);
  sub_26D30FFD8();
  sub_26D30F878();
  v27 = 1;
  *&v26[6] = v30[0];
  *&v26[22] = v30[1];
  *&v26[38] = v30[2];
  v19 = sub_26D30FBC8();
  sub_26D30F7B8();
  v20 = *&v26[16];
  *(a3 + 18) = *v26;
  *a3 = v18;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 34) = v20;
  *(a3 + 50) = *&v26[32];
  *(a3 + 64) = *&v26[46];
  *(a3 + 72) = v19;
  *(a3 + 80) = v21;
  *(a3 + 88) = v22;
  *(a3 + 96) = v23;
  *(a3 + 104) = v24;
  *(a3 + 112) = 0;
}

double sub_26D30C4B4@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = sub_26D30FA38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v10 = sub_26D310198();
    v11 = sub_26D30FB68();
    sub_26D30F718(v10, &dword_26D2C7000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_26D30FA28();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
  }

  sub_26D304DB4(v65);

  v13 = v66;
  v12 = v67;

  v14 = sub_26D303430(v65);
  if (v12)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (v12)
  {
    v18 = v12;
  }

  *&v68 = v17;
  *(&v68 + 1) = v18;
  sub_26D2E9230(v14, v15, v16);
  v19 = sub_26D30FD58();
  v21 = v20;
  v23 = v22;
  sub_26D30FCF8();
  v24 = sub_26D30FD28();
  v60 = v25;
  v61 = v24;
  v27 = v26;
  v59 = v28;

  sub_26D2E92E4(v19, v21, v23 & 1);

  v58 = sub_26D30FC18();
  sub_26D30F7B8();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v27 & 1;
  v63 = v27 & 1;
  v62 = 0;
  sub_26D30FFD8();
  sub_26D30F968();
  *&v64[55] = v71;
  *&v64[71] = v72;
  *&v64[87] = v73;
  *&v64[103] = v74;
  *&v64[7] = v68;
  *&v64[23] = v69;
  *&v64[39] = v70;
  v38 = sub_26D30FE78();
  KeyPath = swift_getKeyPath();
  v40 = sub_26D30FE48();
  v41 = sub_26D30FBB8();
  v42 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98E0, &qword_26D3148E0) + 36));
  v43 = *(sub_26D30F958() + 20);
  v44 = *MEMORY[0x277CE0118];
  v45 = sub_26D30FA68();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  __asm { FMOV            V0.2D, #27.0 }

  *v42 = _Q0;
  *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9328, &qword_26D313E50) + 36)] = 256;
  v51 = v60;
  *a3 = v61;
  *(a3 + 8) = v51;
  *(a3 + 16) = v37;
  *(a3 + 24) = v59;
  *(a3 + 32) = v58;
  *(a3 + 40) = v30;
  *(a3 + 48) = v32;
  *(a3 + 56) = v34;
  *(a3 + 64) = v36;
  *(a3 + 72) = 0;
  v52 = *&v64[80];
  *(a3 + 137) = *&v64[64];
  *(a3 + 153) = v52;
  *(a3 + 169) = *&v64[96];
  v53 = *&v64[111];
  v54 = *&v64[16];
  *(a3 + 73) = *v64;
  *(a3 + 89) = v54;
  result = *&v64[32];
  v56 = *&v64[48];
  *(a3 + 105) = *&v64[32];
  *(a3 + 121) = v56;
  *(a3 + 184) = v53;
  *(a3 + 192) = KeyPath;
  *(a3 + 200) = v38;
  *(a3 + 208) = v40;
  *(a3 + 216) = v41;
  return result;
}

uint64_t sub_26D30C8A8(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_26D30FA38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v10 = sub_26D310198();
    v11 = sub_26D30FB68();
    sub_26D30F718(v10, &dword_26D2C7000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_26D30FA28();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
  }

  v12 = sub_26D305C04();

  [v12 tapOnButtonWith_];
  return swift_unknownObjectRelease();
}

double sub_26D30CA1C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = sub_26D30FE38();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D30FA38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v14 = sub_26D310198();
    v15 = sub_26D30FB68();
    sub_26D30F718(v14, &dword_26D2C7000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_26D30FA28();
    swift_getAtKeyPath();

    (*(v10 + 8))(v13, v9);
  }

  sub_26D30559C(v70);

  v17 = v70[7];
  v16 = v70[8];

  v18 = sub_26D305A5C(v70);
  if (v16)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (v16)
  {
    v22 = v16;
  }

  *&v71 = v21;
  *(&v71 + 1) = v22;
  sub_26D2E9230(v18, v19, v20);
  v23 = sub_26D30FD58();
  v25 = v24;
  v27 = v26;
  sub_26D30FCF8();
  v28 = sub_26D30FD28();
  v63 = v29;
  v64 = v28;
  v31 = v30;
  v62 = v32;

  sub_26D2E92E4(v23, v25, v27 & 1);

  v61 = sub_26D30FC18();
  sub_26D30F7B8();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v31 &= 1u;
  v68 = v31;
  v67 = 0;
  sub_26D30FFD8();
  sub_26D30F968();
  *&v69[55] = v74;
  *&v69[71] = v75;
  *&v69[87] = v76;
  *&v69[103] = v77;
  *&v69[7] = v71;
  *&v69[23] = v72;
  *&v69[39] = v73;
  v60 = sub_26D30FE68();
  KeyPath = swift_getKeyPath();
  (*(v65 + 104))(v8, *MEMORY[0x277CE0EE0], v66);
  v42 = sub_26D30FEA8();
  v43 = sub_26D30FBB8();
  v44 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F98E0, &qword_26D3148E0) + 36));
  v45 = *(sub_26D30F958() + 20);
  v46 = *MEMORY[0x277CE0118];
  v47 = sub_26D30FA68();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  __asm { FMOV            V0.2D, #27.0 }

  *v44 = _Q0;
  *&v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9328, &qword_26D313E50) + 36)] = 256;
  v53 = v63;
  *a3 = v64;
  *(a3 + 8) = v53;
  *(a3 + 16) = v31;
  *(a3 + 24) = v62;
  *(a3 + 32) = v61;
  *(a3 + 40) = v34;
  *(a3 + 48) = v36;
  *(a3 + 56) = v38;
  *(a3 + 64) = v40;
  *(a3 + 72) = 0;
  v54 = *&v69[80];
  *(a3 + 137) = *&v69[64];
  *(a3 + 153) = v54;
  *(a3 + 169) = *&v69[96];
  v55 = *&v69[111];
  v56 = *&v69[16];
  *(a3 + 73) = *v69;
  *(a3 + 89) = v56;
  result = *&v69[32];
  v58 = *&v69[48];
  *(a3 + 105) = *&v69[32];
  *(a3 + 121) = v58;
  *(a3 + 184) = v55;
  *(a3 + 192) = KeyPath;
  *(a3 + 200) = v60;
  *(a3 + 208) = v42;
  *(a3 + 216) = v43;
  return result;
}

uint64_t sub_26D30CEBC()
{
  type metadata accessor for WhatToTestViewModel(0);
  sub_26D304B68();
  return sub_26D30F828();
}

uint64_t sub_26D30CF04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26D30FA38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268, &qword_26D313D20);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v17 - v11;
  sub_26D2E9114(v2, &v17 - v11, &qword_2804F9268, &qword_26D313D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26D30F808();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = sub_26D310198();
    v16 = sub_26D30FB68();
    sub_26D30F718(v15, &dword_26D2C7000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_26D30FA28();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_26D30D110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[0] = a1;
  v25[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9B58, &qword_26D315300);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9B60, &qword_26D315308);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v25 - v8;
  v10 = sub_26D30F808();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v25 - v17;
  sub_26D30CF04(v25 - v17);
  (*(v11 + 104))(v15, *MEMORY[0x277CDF3C0], v10);
  v19 = sub_26D30F7F8();
  v20 = *(v11 + 8);
  v20(v15, v10);
  v20(v18, v10);
  if (v19)
  {
    v21 = sub_26D30FB58();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9B68, &unk_26D315310);
    (*(*(v22 - 8) + 16))(v9, v25[0], v22);
    *&v9[*(v6 + 36)] = v21;
    sub_26D2E9114(v9, v5, &qword_2804F9B60, &qword_26D315308);
    swift_storeEnumTagMultiPayload();
    sub_26D30E7C8();
    sub_26D2E906C(&qword_2804F9B78, &qword_2804F9B68, &unk_26D315310, MEMORY[0x277CE04B0]);
    sub_26D30FAF8();
    return sub_26D2E9284(v9, &qword_2804F9B60, &qword_26D315308);
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9B68, &unk_26D315310);
    (*(*(v24 - 8) + 16))(v5, v25[0], v24);
    swift_storeEnumTagMultiPayload();
    sub_26D30E7C8();
    sub_26D2E906C(&qword_2804F9B78, &qword_2804F9B68, &unk_26D315310, MEMORY[0x277CE04B0]);
    return sub_26D30FAF8();
  }
}

uint64_t sub_26D30D4B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9B30, &qword_26D3152E8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9B38, &qword_26D3152F0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 1)
  {
    v12 = sub_26D30FBA8();
    sub_26D30F7B8();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9B40, &qword_26D3152F8);
    (*(*(v21 - 8) + 16))(v9, a1, v21);
    v22 = &v9[*(v6 + 36)];
    *v22 = v12;
    *(v22 + 1) = v14;
    *(v22 + 2) = v16;
    *(v22 + 3) = v18;
    *(v22 + 4) = v20;
    v22[40] = 0;
    sub_26D2E9114(v9, v5, &qword_2804F9B38, &qword_26D3152F0);
    swift_storeEnumTagMultiPayload();
    sub_26D30E710();
    sub_26D2E906C(&qword_2804F9B50, &qword_2804F9B40, &qword_26D3152F8, MEMORY[0x277CE04B0]);
    sub_26D30FAF8();
    return sub_26D2E9284(v9, &qword_2804F9B38, &qword_26D3152F0);
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9B40, &qword_26D3152F8);
    (*(*(v24 - 8) + 16))(v5, a1, v24);
    swift_storeEnumTagMultiPayload();
    sub_26D30E710();
    sub_26D2E906C(&qword_2804F9B50, &qword_2804F9B40, &qword_26D3152F8, MEMORY[0x277CE04B0]);
    return sub_26D30FAF8();
  }
}

uint64_t sub_26D30D7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9B80, &qword_26D315320);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v46 - v5;
  v7 = sub_26D30FE38();
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9B88, &qword_26D315328);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v46 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9B90, &qword_26D315330);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v15);
  v17 = &v46 - v16;
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9B98, &qword_26D315338);
    (*(*(v20 - 8) + 16))(v6, v54, v20);
    swift_storeEnumTagMultiPayload();
    v21 = sub_26D30E8AC();
    v56 = v11;
    v57 = MEMORY[0x277CE0F78];
    v58 = v21;
    v59 = MEMORY[0x277CE0F60];
    swift_getOpaqueTypeConformance2();
    sub_26D2E906C(&qword_2804F9BA8, &qword_2804F9B98, &qword_26D315338, MEMORY[0x277CE04B0]);
    return sub_26D30FAF8();
  }

  else
  {
    v23 = sub_26D30FFD8();
    v47 = v24;
    v48 = v23;
    v25 = *(v11 + 36);
    v51 = a2;
    v26 = &v14[v25];
    v27 = *(sub_26D30F958() + 20);
    v28 = *MEMORY[0x277CE0118];
    v29 = sub_26D30FA68();
    (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
    __asm { FMOV            V0.2D, #27.0 }

    *v26 = _Q0;
    v35 = *MEMORY[0x277CE0EE0];
    v49 = v17;
    v50 = v3;
    v36 = *(v52 + 104);
    v36(v10, v35, v7);
    v37 = sub_26D30FEA8();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9BC0, &qword_26D315348);
    *&v26[*(v38 + 52)] = v37;
    *&v26[*(v38 + 56)] = 256;
    v39 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9BB8, &qword_26D315340) + 36)];
    v40 = v47;
    *v39 = v48;
    v39[1] = v40;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9B98, &qword_26D315338);
    (*(*(v41 - 8) + 16))(v14, v54, v41);
    v36(v10, v35, v7);
    v56 = sub_26D30FEA8();
    v42 = sub_26D30E8AC();
    v43 = v49;
    sub_26D30210C(&v56, v11, MEMORY[0x277CE0F78], v42, MEMORY[0x277CE0F60], v49, 27.0);

    sub_26D2E9284(v14, &qword_2804F9B88, &qword_26D315328);
    v44 = v53;
    v45 = v55;
    (*(v53 + 16))(v6, v43, v55);
    swift_storeEnumTagMultiPayload();
    v56 = v11;
    v57 = MEMORY[0x277CE0F78];
    v58 = v42;
    v59 = MEMORY[0x277CE0F60];
    swift_getOpaqueTypeConformance2();
    sub_26D2E906C(&qword_2804F9BA8, &qword_2804F9B98, &qword_26D315338, MEMORY[0x277CE04B0]);
    sub_26D30FAF8();
    return (*(v44 + 8))(v43, v45);
  }
}

uint64_t sub_26D30DDB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DarkModeColorInverter(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F9268, &qword_26D313D20);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x26D6BB6F0](v7, a1, v4, a2);
  return sub_26D30DED8(v7);
}

uint64_t type metadata accessor for DarkModeColorInverter(uint64_t a1)
{
  result = qword_2804FA8B8;
  if (!qword_2804FA8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D30DED8(uint64_t a1)
{
  v2 = type metadata accessor for DarkModeColorInverter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26D30DF70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26D30DFB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_26D30E010()
{
  result = qword_2804F9B00;
  if (!qword_2804F9B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9AF8, &qword_26D315090);
    sub_26D30E09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9B00);
  }

  return result;
}

unint64_t sub_26D30E09C()
{
  result = qword_2804F9B08;
  if (!qword_2804F9B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9AE8, &qword_26D315080);
    sub_26D30E128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9B08);
  }

  return result;
}

unint64_t sub_26D30E128()
{
  result = qword_2804F9B10;
  if (!qword_2804F9B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9AE0, &qword_26D315078);
    sub_26D30E1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9B10);
  }

  return result;
}

unint64_t sub_26D30E1B4()
{
  result = qword_2804F9B18;
  if (!qword_2804F9B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9AD8, &qword_26D315070);
    v3 = sub_26D30E240();
    sub_26D30E2F8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9B18);
  }

  return result;
}

unint64_t sub_26D30E240()
{
  result = qword_2804F9B20;
  if (!qword_2804F9B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9AD0, &qword_26D315068);
    sub_26D2E906C(&qword_2804F9B28, &qword_2804F9AC8, &qword_26D315060, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9B20);
  }

  return result;
}

unint64_t sub_26D30E2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804FA8A0;
  if (!qword_2804FA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FA8A0);
  }

  return result;
}

uint64_t sub_26D30E34C(uint64_t *a1)
{
  type metadata accessor for DarkModeColorInverter(255);
  sub_26D30F918();
  sub_26D30E3B8();
  return swift_getWitnessTable();
}

unint64_t sub_26D30E3B8()
{
  result = qword_2804FA8A8;
  if (!qword_2804FA8A8)
  {
    type metadata accessor for DarkModeColorInverter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FA8A8);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx14TestFlightCore12IPadPaddings33_23AFCDC61ABCC18CC2893925CF836F84LLVGAaBHPxAaBHD1__AhA0C8ModifierHPyHCHCTm(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_26D30F918();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_26D30E4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2804FA8B0;
  if (!qword_2804FA8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FA8B0);
  }

  return result;
}

uint64_t sub_26D30E528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93C8, &qword_26D314700);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26D30E5B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F93C8, &qword_26D314700);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_26D30E630(uint64_t a1)
{
  sub_26D2F06C0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_26D30E710()
{
  result = qword_2804F9B48;
  if (!qword_2804F9B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9B38, &qword_26D3152F0);
    sub_26D2E906C(&qword_2804F9B50, &qword_2804F9B40, &qword_26D3152F8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9B48);
  }

  return result;
}

unint64_t sub_26D30E7C8()
{
  result = qword_2804F9B70;
  if (!qword_2804F9B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9B60, &qword_26D315308);
    sub_26D2E906C(&qword_2804F9B78, &qword_2804F9B68, &unk_26D315310, MEMORY[0x277CE04B0]);
    sub_26D2E906C(&qword_2804F94A8, &qword_2804F94B0, &qword_26D3141B0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9B70);
  }

  return result;
}

unint64_t sub_26D30E8AC()
{
  result = qword_2804F9BA0;
  if (!qword_2804F9BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9B88, &qword_26D315328);
    sub_26D2E906C(&qword_2804F9BA8, &qword_2804F9B98, &qword_26D315338, MEMORY[0x277CE04B0]);
    sub_26D2E906C(&qword_2804F9BB0, &qword_2804F9BB8, &qword_26D315340, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9BA0);
  }

  return result;
}

uint64_t sub_26D30E990()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

unint64_t sub_26D30EA2C()
{
  result = qword_2804F9C20;
  if (!qword_2804F9C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9C28, &qword_26D315430);
    sub_26D30E710();
    sub_26D2E906C(&qword_2804F9B50, &qword_2804F9B40, &qword_26D3152F8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9C20);
  }

  return result;
}

unint64_t sub_26D30EAE8()
{
  result = qword_2804F9C30;
  if (!qword_2804F9C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9C38, &qword_26D315438);
    sub_26D30E7C8();
    sub_26D2E906C(&qword_2804F9B78, &qword_2804F9B68, &unk_26D315310, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9C30);
  }

  return result;
}

unint64_t sub_26D30EBA4()
{
  result = qword_2804F9C40;
  if (!qword_2804F9C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9C48, qword_26D315440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F9B88, &qword_26D315328);
    sub_26D30E8AC();
    swift_getOpaqueTypeConformance2();
    sub_26D2E906C(&qword_2804F9BA8, &qword_2804F9B98, &qword_26D315338, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F9C40);
  }

  return result;
}

id sub_26D30ECC4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2804FAA68 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26D30EF3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_26D30F6A8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_2804FAA60 != -1)
  {
    swift_once();
  }

  v6 = qword_2804FAA68;
  return sub_26D30F698();
}

uint64_t sub_26D30F028()
{
  v0 = sub_26D30F6A8();
  __swift_allocate_value_buffer(v0, qword_2804FAB50);
  __swift_project_value_buffer(v0, qword_2804FAB50);
  if (qword_2804FAA60 != -1)
  {
    swift_once();
  }

  v1 = qword_2804FAA68;
  return sub_26D30F698();
}

uint64_t sub_26D30F0F4(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_26D30F6A8();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_26D30F16C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_26D30F6A8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}