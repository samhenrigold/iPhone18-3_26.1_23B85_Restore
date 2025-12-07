__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_241DECA80(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241DECAA0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_27EC72A68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EC72A68);
    }
  }
}

uint64_t sub_241DECB20()
{
  sub_241DF8FBC();
  MEMORY[0x245D00D30](0);
  return sub_241DF8FDC();
}

uint64_t sub_241DECB8C(uint64_t a1)
{
  sub_241DF8FBC();
  MEMORY[0x245D00D30](0);
  return sub_241DF8FDC();
}

double sub_241DECBCC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 accessibilityChartDescriptor];
    if (v7)
    {
      v8 = v7;
      *(a2 + 24) = &type metadata for BaseStyle.ChartConfiguration;
      *(a2 + 32) = &off_2853FAE98;

      *a2 = v8;
      return result;
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_241DECC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72C10, &qword_241DF9AF8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_241DECCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v44 = a4;
  v45 = a3;
  v43 = a2;
  v48 = a1;
  v50 = a5;
  v49 = sub_241DF8C5C();
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = v6;
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241DF8BEC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72AB8, &qword_241DF9958);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72AC0, &qword_241DF9960);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = *(sub_241DF8BBC() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_241DF8C1C();
  (*(*(v20 - 8) + 104))(&v14[v18], v19, v20);
  __asm { FMOV            V0.2D, #3.0 }

  *v14 = _Q0;
  *&v14[*(v12 + 44)] = sub_241DF8D2C();
  if ((v44 & 1) == 0)
  {
    v26 = v43;

    sub_241DF8ECC();
    v27 = sub_241DF8C6C();
    sub_241DF89CC();

    sub_241DF8BDC();
    swift_getAtKeyPath();
    sub_241DEE5E4(v26, v45, 0);
    (*(v8 + 8))(v10, v7);
  }

  sub_241DF8DBC();
  sub_241DF8BCC();
  sub_241DEF120(v14, v17, &qword_27EC72AB8, &qword_241DF9958);
  v28 = &v17[*(v15 + 36)];
  v29 = v56;
  *(v28 + 4) = v55;
  *(v28 + 5) = v29;
  *(v28 + 6) = v57;
  v30 = v52;
  *v28 = v51;
  *(v28 + 1) = v30;
  v31 = v54;
  *(v28 + 2) = v53;
  *(v28 + 3) = v31;
  v32 = sub_241DF8DBC();
  v34 = v33;
  v35 = v47;
  v36 = v49;
  (*(v5 + 16))(v47, v48, v49);
  v37 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v38 = swift_allocObject();
  (*(v5 + 32))(v38 + v37, v35, v36);
  v39 = v50;
  sub_241DEF120(v17, v50, &qword_27EC72AC0, &qword_241DF9960);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72AC8, &qword_241DF9968);
  v41 = (v39 + *(result + 36));
  *v41 = sub_241DEE678;
  v41[1] = v38;
  v41[2] = v32;
  v41[3] = v34;
  return result;
}

uint64_t sub_241DED1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_241DF8DCC();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72AD0, &qword_241DF9970);
  return sub_241DED240(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_241DED240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v53 = a2;
  v57 = a3;
  v3 = sub_241DF8BBC() - 8;
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72AD8, &qword_241DF9978);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72AB8, &qword_241DF9958);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72AE0, &qword_241DF9980);
  v15 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14);
  v55 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  MEMORY[0x28223BE20](v18);
  v51 = &v49 - v21;
  v22 = *(v3 + 28);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_241DF8C1C();
  v25 = *(*(v24 - 8) + 104);
  v25(&v13[v22], v23, v24);
  __asm { FMOV            V0.2D, #3.0 }

  v49 = _Q0;
  *v13 = _Q0;
  *&v13[*(v11 + 44)] = sub_241DF8D1C();
  sub_241DF8B0C();
  sub_241DF8C4C();
  sub_241DF8DBC();
  sub_241DF8AFC();
  sub_241DEF120(v13, v20, &qword_27EC72AB8, &qword_241DF9958);
  v31 = &v20[*(v15 + 44)];
  v32 = v59;
  *v31 = v58;
  *(v31 + 1) = v32;
  *(v31 + 2) = v60;
  v33 = v51;
  sub_241DEF120(v20, v51, &qword_27EC72AE0, &qword_241DF9980);
  v34 = v54;
  v25(&v54[*(v50 + 28)], v23, v24);
  *v34 = v49;
  v35 = v34;
  v36 = sub_241DF8D1C();
  sub_241DF8A9C();
  sub_241DEE6F8(v35, v9);
  v37 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72AE8, &qword_241DF9988) + 36)];
  v38 = v62;
  *v37 = v61;
  *(v37 + 1) = v38;
  *(v37 + 4) = v63;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72AF0, &qword_241DF9990);
  *&v9[*(v39 + 52)] = v36;
  *&v9[*(v39 + 56)] = 256;
  v40 = sub_241DF8DBC();
  v42 = v41;
  sub_241DEE75C(v35);
  v43 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72AF8, &qword_241DF9998) + 36)];
  *v43 = v40;
  v43[1] = v42;
  v44 = v55;
  sub_241DEF188(v33, v55, &qword_27EC72AE0, &qword_241DF9980);
  v45 = v56;
  sub_241DEF188(v9, v56, &qword_27EC72AD8, &qword_241DF9978);
  v46 = v57;
  sub_241DEF188(v44, v57, &qword_27EC72AE0, &qword_241DF9980);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72B00, &qword_241DF99A0);
  sub_241DEF188(v45, v46 + *(v47 + 48), &qword_27EC72AD8, &qword_241DF9978);
  sub_241DEF1F0(v9, &qword_27EC72AD8, &qword_241DF9978);
  sub_241DEF1F0(v33, &qword_27EC72AE0, &qword_241DF9980);
  sub_241DEF1F0(v45, &qword_27EC72AD8, &qword_241DF9978);
  return sub_241DEF1F0(v44, &qword_27EC72AE0, &qword_241DF9980);
}

uint64_t sub_241DED764@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v45 = a2;
  v48 = a4;
  v44 = sub_241DF8BEC();
  v6 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_241DF8BBC();
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72C18, &qword_241DF9BB8);
  MEMORY[0x28223BE20](v46);
  v14 = &v43 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72C20, &qword_241DF9BC0);
  MEMORY[0x28223BE20](v47);
  v16 = &v43 - v15;
  v17 = *(v10 + 28);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_241DF8C1C();
  (*(*(v19 - 8) + 104))(&v12[v17], v18, v19);
  __asm { FMOV            V0.2D, #3.0 }

  *v12 = _Q0;
  if ((a3 & 1) == 0)
  {

    sub_241DF8ECC();
    v25 = sub_241DF8C6C();
    sub_241DF89CC();

    sub_241DF8BDC();
    swift_getAtKeyPath();
    sub_241DEE5E4(a1, v45, 0);
    (*(v6 + 8))(v8, v44);
  }

  sub_241DF8DBC();
  sub_241DF8BCC();
  sub_241DEF0BC(v12, v14);
  v26 = &v14[*(v46 + 36)];
  v27 = v72;
  *(v26 + 4) = v71;
  *(v26 + 5) = v27;
  *(v26 + 6) = v73;
  v28 = v68;
  *v26 = v67;
  *(v26 + 1) = v28;
  v29 = v70;
  *(v26 + 2) = v69;
  *(v26 + 3) = v29;
  v30 = sub_241DF8D1C();
  sub_241DEF120(v14, v16, &qword_27EC72C18, &qword_241DF9BB8);
  *&v16[*(v47 + 36)] = v30;
  v31 = sub_241DF8DBC();
  v33 = v32;
  v34 = sub_241DF8D2C();
  v35 = sub_241DF8D1C();
  sub_241DEDC58(v35, v34, &v50);

  v58 = v52;
  v59 = v53;
  v60 = v54;
  v56 = v50;
  v57 = v51;
  *&v61 = v55;
  *(&v61 + 1) = v31;
  v62 = v33;
  v36 = v16;
  v37 = v48;
  sub_241DEF120(v36, v48, &qword_27EC72C20, &qword_241DF9BC0);
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72C28, &qword_241DF9BC8) + 36);
  v39 = v61;
  *(v38 + 64) = v60;
  *(v38 + 80) = v39;
  *(v38 + 96) = v62;
  v40 = v57;
  *v38 = v56;
  *(v38 + 16) = v40;
  v41 = v59;
  *(v38 + 32) = v58;
  *(v38 + 48) = v41;
  v63[0] = v50;
  v63[1] = v51;
  v63[3] = v53;
  v63[4] = v54;
  v63[2] = v52;
  v64 = v55;
  v65 = v31;
  v66 = v33;
  sub_241DEF188(&v56, &v49, &qword_27EC72C30, &qword_241DF9BD0);
  return sub_241DEF1F0(v63, &qword_27EC72C30, &qword_241DF9BD0);
}

uint64_t sub_241DEDC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_241DF8A9C();
  v7 = v31;
  v8 = v31 * 0.5;
  v9 = v32;
  v10 = DWORD1(v32);
  v11 = *(&v32 + 1);
  v12 = v33;

  v13 = sub_241DF8DBC();
  *v34 = v31 * 0.5;
  *(v34 + 1) = v31;
  v34[1] = v32;
  *v35 = v33;
  *&v35[16] = a1;
  *&v35[24] = 256;
  v29 = v32;
  *v30 = v33;
  *&v30[10] = *&v35[10];
  v28 = v34[0];
  v14 = *v30;
  v15 = *&v30[16];
  v37 = *v30;
  v38 = *&v30[16];
  v36[0] = v34[0];
  v36[1] = v32;
  *&v39 = v13;
  *(&v39 + 1) = v16;
  v17 = v32;
  *(a3 + 8) = v34[0];
  v18 = v38;
  *(a3 + 72) = v39;
  v19 = v37;
  *(a3 + 56) = v18;
  *a3 = a2;
  *(a3 + 40) = v19;
  *(a3 + 24) = v17;
  v40[2] = v14;
  v40[3] = v15;
  v40[0] = v28;
  v40[1] = v29;
  v41 = v13;
  v42 = v16;
  sub_241DEF188(v34, v21, &qword_27EC72C38, &qword_241DF9BD8);

  sub_241DEF188(v36, v21, &qword_27EC72C40, &qword_241DF9BE0);
  sub_241DEF1F0(v40, &qword_27EC72C40, &qword_241DF9BE0);
  *v21 = v8;
  *&v21[1] = v7;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = a1;
  v27 = 256;
  return sub_241DEF1F0(v21, &qword_27EC72C38, &qword_241DF9BD8);
}

uint64_t sub_241DEDE18()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72BF8, &qword_241DF9AF0);
  sub_241DEF558(&qword_27EC72C00, &qword_27EC72BF8, &qword_241DF9AF0, MEMORY[0x277CE04B0]);
  sub_241DEEDC8();
  sub_241DF8CDC();
}

uint64_t BootScreenStyle.body(content:)()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72A70, &qword_241DF9738);
  sub_241DEF558(&qword_27EC72A78, &qword_27EC72A70, &qword_241DF9738, MEMORY[0x277CE04B0]);
  sub_241DEE2A0();
  sub_241DF8CAC();
}

uint64_t sub_241DEE008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_241DEF558(a6, a4, a5, MEMORY[0x277CE04B0]);
  sub_241DEE2A0();
  sub_241DF8CAC();
}

double sub_241DEE0D8@<D0>(_OWORD *a1@<X8>)
{
  sub_241DEE7B8();
  sub_241DF8BFC();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_241DEE128@<D0>(_OWORD *a1@<X8>)
{
  sub_241DEE7B8();
  sub_241DF8BFC();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_241DEE2A0()
{
  result = qword_27EC72A80;
  if (!qword_27EC72A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72A80);
  }

  return result;
}

unint64_t sub_241DEE304()
{
  result = qword_27EC72A88;
  if (!qword_27EC72A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72A88);
  }

  return result;
}

unint64_t sub_241DEE358(uint64_t a1)
{
  result = sub_241DEE380();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241DEE380()
{
  result = qword_27EC72A98;
  if (!qword_27EC72A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72A98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BootScreenStyle.Configuration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BootScreenStyle.Configuration(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

unint64_t sub_241DEE4F8()
{
  result = qword_27EC72AA0;
  if (!qword_27EC72AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72AA0);
  }

  return result;
}

unint64_t sub_241DEE54C(uint64_t a1)
{
  result = sub_241DEE574();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241DEE574()
{
  result = qword_27EC72AB0;
  if (!qword_27EC72AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72AB0);
  }

  return result;
}

uint64_t sub_241DEE5E4(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_241DEE5F0()
{
  v1 = sub_241DF8C5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_241DEE678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_241DF8C5C() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_241DED1E0(a1, v6, a2);
}

uint64_t sub_241DEE6F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_241DF8BBC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241DEE75C(uint64_t a1)
{
  v2 = sub_241DF8BBC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_241DEE7B8()
{
  result = qword_27EC72B18;
  if (!qword_27EC72B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72B18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BrailleProgressIndicatorStyle.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BrailleProgressIndicatorStyle.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_241DEE894()
{
  result = qword_27EC72B20;
  if (!qword_27EC72B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC72AC8, &qword_241DF9968);
    sub_241DEF4D4(&qword_27EC72B28, &qword_27EC72AC0, &qword_241DF9960, sub_241DEE978);
    sub_241DEF558(&qword_27EC72B50, &qword_27EC72B58, &qword_241DF99F0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72B20);
  }

  return result;
}

unint64_t sub_241DEE978()
{
  result = qword_27EC72B30;
  if (!qword_27EC72B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC72AB8, &qword_241DF9958);
    sub_241DEEA30();
    sub_241DEF558(&qword_27EC72B40, &qword_27EC72B48, &qword_241DF99E8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72B30);
  }

  return result;
}

unint64_t sub_241DEEA30()
{
  result = qword_27EC72B38;
  if (!qword_27EC72B38)
  {
    sub_241DF8BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72B38);
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE08progressC5StyleyQrqd__AA08ProgresscE0Rd__lFQOyAA01_C16Modifier_ContentVy16BrailleSymbology010BootScreenE0VG_AH0if9IndicatorE0V0cE0VQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_241DEF558(a4, a2, a3, MEMORY[0x277CE04B0]);
  sub_241DEE2A0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_241DEEB98()
{
  result = qword_27EC72B60;
  if (!qword_27EC72B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72B60);
  }

  return result;
}

unint64_t sub_241DEEC18()
{
  result = qword_27EC72B68;
  if (!qword_27EC72B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72B68);
  }

  return result;
}

unint64_t sub_241DEEC6C(uint64_t a1)
{
  result = sub_241DEEC94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241DEEC94()
{
  result = qword_27EC72B78;
  if (!qword_27EC72B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72B78);
  }

  return result;
}

unint64_t sub_241DEECF8()
{
  result = qword_27EC72B80;
  if (!qword_27EC72B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72B80);
  }

  return result;
}

unint64_t sub_241DEED4C(uint64_t a1)
{
  result = sub_241DEED74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241DEED74()
{
  result = qword_27EC72B90;
  if (!qword_27EC72B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72B90);
  }

  return result;
}

unint64_t sub_241DEEDC8()
{
  result = qword_27EC72C08;
  if (!qword_27EC72C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72C08);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_241DEEE40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241DEEE88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BrailleSliderStyle.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BrailleSliderStyle.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_241DEEF54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_241DEEFA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_241DEEFF4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC72BF8, &qword_241DF9AF0);
  sub_241DEF558(&qword_27EC72C00, &qword_27EC72BF8, &qword_241DF9AF0, MEMORY[0x277CE04B0]);
  sub_241DEEDC8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_241DEF0BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_241DF8BBC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241DEF120(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_241DEF188(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_241DEF1F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_241DEF250(unsigned int *a1, int a2)
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

_WORD *sub_241DEF2A0(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_241DEF338()
{
  result = qword_27EC72C48;
  if (!qword_27EC72C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC72C28, &qword_241DF9BC8);
    sub_241DEF3F0();
    sub_241DEF558(&qword_27EC72C60, &qword_27EC72C30, &qword_241DF9BD0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72C48);
  }

  return result;
}

unint64_t sub_241DEF3F0()
{
  result = qword_27EC72C50;
  if (!qword_27EC72C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC72C20, &qword_241DF9BC0);
    sub_241DEF4D4(&qword_27EC72C58, &qword_27EC72C18, &qword_241DF9BB8, sub_241DEEA30);
    sub_241DEF558(&qword_27EC72B40, &qword_27EC72B48, &qword_241DF99E8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72C50);
  }

  return result;
}

uint64_t sub_241DEF4D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_241DEF558(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_241DEF5A4()
{
  result = qword_27EC72C68;
  if (!qword_27EC72C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72C68);
  }

  return result;
}

uint64_t sub_241DEF614@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_241DF8BEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_241DEF188(v2, v11, &qword_27EC72DD8, &unk_241DFA4F0);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_241DF8ECC();
    v10 = sub_241DF8C6C();
    sub_241DF89CC();

    sub_241DF8BDC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t StyleConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t StyleConfiguration.wrappedValue.getter()
{
  sub_241DEF614(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC72CD0, &qword_241DF9C98);
  return swift_dynamicCast();
}

uint64_t sub_241DEF83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(v5 + 16))(&v9 - v6, a1, AssociatedTypeWitness);
  sub_241DF02CC(v7, AssociatedTypeWitness);
  return (*(v5 + 8))(a1, AssociatedTypeWitness);
}

uint64_t sub_241DEF94C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_241DF8A1C();
}

uint64_t sub_241DEFA58()
{
  v1 = *(*v0 + 96);
  swift_getAssociatedTypeWitness();
  v2 = sub_241DF8A3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_241DEFB0C()
{
  sub_241DEFA58();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_241DEFB64@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for StyleProvider(0, *(a1 + 80), *(a1 + 88), x3_0);
  result = sub_241DF89FC();
  *a3 = result;
  return result;
}

double sub_241DEFBA8()
{
  qword_27EC73F80 = 0;
  result = 0.0;
  xmmword_27EC73F60 = 0u;
  *algn_27EC73F70 = 0u;
  return result;
}

uint64_t sub_241DEFBC0@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_27EC72A50 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_241DEF188(&xmmword_27EC73F60, v1, qword_27EC72CD0, &qword_241DF9C98);
}

uint64_t sub_241DEFC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_241DF0D00();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void *sub_241DEFCA4()
{
  sub_241DF0710();

  return sub_241DF8BFC();
}

double sub_241DEFCEC()
{
  sub_241DEE7B8();
  sub_241DF8BFC();
  return v1;
}

uint64_t sub_241DEFD28(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  sub_241DF8C3C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC72E68, &qword_241DF9FB0);
  v4 = sub_241DF8BAC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  swift_getKeyPath();
  v16 = *(a2 + 16);
  v20 = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v2);
  WitnessTable = swift_getWitnessTable();
  sub_241DF8CCC();

  sub_241DF0764(v19);
  v13 = sub_241DF0C9C();
  v17 = WitnessTable;
  v18 = v13;
  swift_getWitnessTable();
  sub_241DF8870();
  v14 = *(v5 + 8);
  v14(v8, v4);
  sub_241DF8870();
  return (v14)(v10, v4);
}

uint64_t sub_241DEFFFC(uint64_t a1)
{
  sub_241DEF188(a1, v3, qword_27EC72CD0, &qword_241DF9C98);
  sub_241DEF188(v3, &v2, qword_27EC72CD0, &qword_241DF9C98);
  sub_241DF0710();
  sub_241DF8C0C();
  return sub_241DF0764(v3);
}

uint64_t sub_241DF0088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_16BrailleSymbology01_aB18StyleConfiguration_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_241DF0108(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_241DF0150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_241DF01BC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_241DF8A3C();
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

uint64_t sub_241DF02CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_241DF8A0C();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_241DF03BC(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v10 - v7;
  v10[2] = v4;
  v10[3] = v3;
  swift_getKeyPath();
  v10[0] = v4;
  v10[1] = v3;
  swift_getKeyPath();
  (*(v6 + 16))(v8, a1, AssociatedTypeWitness);

  return sub_241DF8A2C();
}

__n128 sub_241DF0570(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_241DF057C(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  swift_beginAccess();
  sub_241DEF83C(v7, v4, v3);
  swift_endAccess();
  return v1;
}

uint64_t sub_241DF06CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StyleProvider(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_241DF057C(a1);
}

unint64_t sub_241DF0710()
{
  result = qword_27EC72DE0[0];
  if (!qword_27EC72DE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC72DE0);
  }

  return result;
}

uint64_t sub_241DF0764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC72CD0, &qword_241DF9C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241DF0824(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_241DF0894(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_241DF09D4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_241DF0C9C()
{
  result = qword_27EC72E70;
  if (!qword_27EC72E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC72E68, &qword_241DF9FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72E70);
  }

  return result;
}

unint64_t sub_241DF0D00()
{
  result = qword_27EC72E78;
  if (!qword_27EC72E78)
  {
    type metadata accessor for CGSize();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72E78);
  }

  return result;
}

uint64_t sub_241DF0D58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BaseStyleEnvironmentModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_241DF8C3C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC72E68, &qword_241DF9FB0);
  sub_241DF8BAC();
  swift_getWitnessTable();
  sub_241DF0C9C();
  return swift_getWitnessTable();
}

id BRLSSymbologyRendererForObject(void *a1)
{
  v1 = a1;
  sub_241DF172C(&v10);
  if (v11)
  {
    sub_241DF18E8(&v10, &aBlock);
    sub_241DF18E8(&aBlock, &v10);
    v2 = swift_allocObject();
    sub_241DF18E8(&v10, v2 + 16);

    v8 = sub_241DF19C8;
    v9 = v2;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v6 = sub_241DF1004;
    v7 = &block_descriptor;
    v3 = _Block_copy(&aBlock);
  }

  else
  {
    sub_241DEF1F0(&v10, &qword_27EC72E88, &qword_241DF9FC8);

    v3 = 0;
  }

  return v3;
}

uint64_t (*symbologyRendererForObject(_:)())(void *a1)
{
  sub_241DF172C(&v2);
  if (v3)
  {
    sub_241DF18E8(&v2, v4);
    sub_241DF18E8(v4, &v2);
    v0 = swift_allocObject();
    sub_241DF18E8(&v2, v0 + 16);
    return sub_241DF338C;
  }

  else
  {
    sub_241DEF1F0(&v2, &qword_27EC72E88, &qword_241DF9FC8);
    return 0;
  }
}

void sub_241DF1004(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Void __swiftcall NSObject.accessibilityInvalidateBrailleStyleConfiguration()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72E90, &qword_241DF9FD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v0, &unk_27EC72E80);
  swift_endAccess();
  if (v4)
  {
    sub_241DF8F0C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v14[0] = v9;
  v14[1] = v10;
  if (*(&v10 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72EA0, &qword_241DF9FE0);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_241DF18E8(&v11, v14);
        v5 = sub_241DF8EAC();
        (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
        sub_241DF19E8(v14, &v11);
        sub_241DF8E8C();
        v6 = sub_241DF8E7C();
        v7 = swift_allocObject();
        v8 = MEMORY[0x277D85700];
        *(v7 + 16) = v6;
        *(v7 + 24) = v8;
        sub_241DF18E8(&v11, v7 + 32);
        sub_241DF13E4(0, 0, v3, &unk_241DF9FF0, v7);

        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        return;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    sub_241DEF1F0(v14, &qword_27EC72E98, &qword_241DF9FD8);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  sub_241DEF1F0(&v11, &qword_27EC72E88, &qword_241DF9FC8);
}

uint64_t sub_241DF12B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_241DF8E8C();
  *(v4 + 24) = sub_241DF8E7C();
  v6 = sub_241DF8E6C();

  return MEMORY[0x2822009F8](sub_241DF134C, v6, v5);
}

uint64_t sub_241DF134C()
{
  v1 = *(v0 + 16);

  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_241DF13E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72E90, &qword_241DF9FD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_241DEF188(a3, v25 - v10, &qword_27EC72E90, &qword_241DF9FD0);
  v12 = sub_241DF8EAC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_241DEF1F0(v11, &qword_27EC72E90, &qword_241DF9FD0);
  }

  else
  {
    sub_241DF8E9C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_241DF8E6C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_241DF8E2C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_241DEF1F0(a3, &qword_27EC72E90, &qword_241DF9FD0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_241DEF1F0(a3, &qword_27EC72E90, &qword_241DF9FD0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_241DF16E4(void *a1)
{
  v1 = a1;
  NSObject.accessibilityInvalidateBrailleStyleConfiguration()();
}

uint64_t sub_241DF172C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = objc_getAssociatedObject(v1, &unk_27EC72E80);
  swift_endAccess();
  if (v3)
  {
    sub_241DF8F0C();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72EA0, &qword_241DF9FE0);
    if (swift_dynamicCast())
    {
      if (*(&v14 + 1))
      {
        return sub_241DF18E8(&v13, a1);
      }
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    sub_241DEF1F0(v12, &qword_27EC72E98, &qword_241DF9FD8);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  sub_241DEF1F0(&v13, &qword_27EC72E88, &qword_241DF9FC8);
  v5 = sub_241DF27C8();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = sub_241DF3294(0, &qword_27EC72EA8, 0x277D82BB8);
    sub_241DF4E10(v1, v9, v7, &off_2853FB178, v8, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  sub_241DEF188(a1, &v13, &qword_27EC72E88, &qword_241DF9FC8);
  return sub_241DF21E4(&v13);
}

uint64_t sub_241DF18E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_241DF1900(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  [a1 dimensions];
  v6[2] = a1;
  return (*(v4 + 16))(2, sub_241DF328C, v6, v3, v4);
}

uint64_t sub_241DF1990()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241DF19E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_241DF1A4C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_241DF1A8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_241DF1B3C;

  return sub_241DF12B4(a1, v4, v5, v1 + 32);
}

uint64_t sub_241DF1B3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_241DF1C30(uint64_t a1, unint64_t a2, id a3)
{
  v3 = a3;
  v44 = *MEMORY[0x277D85DE8];
  [a3 dimensions];
  v7 = v6;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_57;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  [v3 dimensions];
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v9 = 9.22337204e18;
  if (v8 >= 9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(a2);
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v10 != 2)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (v14)
  {
    __break(1u);
LABEL_14:
    LODWORD(v11) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v11 = v11;
  }

LABEL_17:
  v15 = v7;
  v16 = v8;
  v17 = v7 * v8;
  if ((v7 * v8) >> 64 != v17 >> 63)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v11 == v17)
  {
    if (v10 <= 1)
    {
      if (!v10)
      {
        *&v43 = a1;
        WORD4(v43) = a2;
        BYTE10(v43) = BYTE2(a2);
        BYTE11(v43) = BYTE3(a2);
        BYTE12(v43) = BYTE4(a2);
        v18 = BYTE6(a2);
        BYTE13(v43) = BYTE5(a2);
        v19 = &v43;
LABEL_55:
        sub_241DF20D8(v19, v18, v16, v15, v3, v9);
        return;
      }

LABEL_36:
      v10 = (a1 >> 32) - a1;
      if (a1 >> 32 >= a1)
      {
        v30 = sub_241DF894C();
        if (!v30)
        {
          sub_241DF895C();
LABEL_53:
          v19 = 0;
          goto LABEL_54;
        }

        v31 = v30;
        v32 = sub_241DF896C();
        if (!__OFSUB__(a1, v32))
        {
          v26 = a1 - v32 + v31;
          goto LABEL_40;
        }

LABEL_67:
        __break(1u);
      }

      goto LABEL_64;
    }

    if (v10 != 2)
    {
      *(&v43 + 6) = 0;
      *&v43 = 0;
      v19 = &v43;
LABEL_54:
      v18 = 0;
      goto LABEL_55;
    }

    v24 = *(a1 + 16);
    v25 = *(a1 + 24);
    a1 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v26 = sub_241DF894C();
    if (v26)
    {
      a1 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = sub_241DF896C();
      if (__OFSUB__(v24, v27))
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v26 += v24 - v27;
    }

    v14 = __OFSUB__(v25, v24);
    v10 = v25 - v24;
    if (!v14)
    {
LABEL_40:
      v33 = sub_241DF895C();
      if (v26)
      {
        if (v33 >= v10)
        {
          v18 = v10;
        }

        else
        {
          v18 = v33;
        }

        v19 = v26;
        goto LABEL_55;
      }

      goto LABEL_53;
    }

    __break(1u);
  }

  else
  {
    [v3 dimensions];
    *&v43 = v20;
    *(&v43 + 1) = v21;
    type metadata accessor for CGSize();
    v15 = sub_241DF8E1C();
    v3 = v22;
    if (v10 <= 1)
    {
      if (v10)
      {
        LODWORD(v23) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v23 = v23;
      }

      else
      {
        v23 = BYTE6(a2);
      }

      goto LABEL_47;
    }
  }

  v23 = 0;
  if (v10 == 2)
  {
    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v14 = __OFSUB__(v28, v29);
    v23 = v28 - v29;
    if (v14)
    {
      __break(1u);
      goto LABEL_36;
    }
  }

LABEL_47:
  *&v43 = v23;
  v34 = sub_241DF8F6C();
  v36 = v35;
  v37 = sub_241DF8EBC();
  sub_241DF3294(0, &qword_27EC72ED8, 0x277D86200);
  v38 = sub_241DF8EDC();
  if (os_log_type_enabled(v38, v37))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v43 = v40;
    *v39 = 136315394;
    v41 = sub_241DF2B3C(v15, v3, &v43);

    *(v39 + 4) = v41;
    *(v39 + 12) = 2080;
    v42 = sub_241DF2B3C(v34, v36, &v43);

    *(v39 + 14) = v42;
    _os_log_impl(&dword_241DEB000, v38, v37, "Failed to create map {%s} + {%s}", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D011D0](v40, -1, -1);
    MEMORY[0x245D011D0](v39, -1, -1);
  }

  else
  {
  }
}

_BYTE *sub_241DF20D8(_BYTE *result, int a2, uint64_t a3, uint64_t a4, id a5, double a6)
{
  if (a3 < 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    if (a4 < 0)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = 0;
    while (!a4)
    {
LABEL_5:
      if (++v10 == a3)
      {
        return result;
      }
    }

    v11 = a4 * v10;
    if ((a4 * v10) >> 64 == (a4 * v10) >> 63)
    {
      v12 = 0;
      while (1)
      {
        v13 = v11 + v12;
        if (__OFADD__(v11, v12))
        {
          break;
        }

        v14 = v12++;
        LOBYTE(a6) = v9[v13];
        if (((LODWORD(a6) / -255.0) + 1.0) <= 0.1)
        {
          *&a6 = 0.0;
        }

        else
        {
          *&a6 = 1.0;
        }

        result = [a5 setHeight:a6 atPoint:{v14, v10}];
        if (a4 == v12)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_241DF21E4(uint64_t a1)
{
  sub_241DEF188(a1, v11, &qword_27EC72E88, &qword_241DF9FC8);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v3 - 8);
    MEMORY[0x28223BE20](v4);
    v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_241DF8F7C();
    (*(v5 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v8 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_27EC72E80, v8, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_241DEF1F0(a1, &qword_27EC72E88, &qword_241DF9FC8);
}

uint64_t sub_241DF2374()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72EC0, &qword_241DFA028);
  v1 = sub_241DF8F9C();
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v1, &unk_27EC72E81);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_241DF8F0C();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72ED0, &qword_241DFA038);
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  else
  {
    sub_241DEF1F0(v12, &qword_27EC72E98, &qword_241DF9FD8);
  }

  if (qword_27EC72A58 != -1)
  {
    swift_once();
  }

  v3 = sub_241DF3398();
  v5 = v4;
  *&v12[0] = v0;
  v6 = sub_241DF8F9C();
  *&v12[0] = v3;
  *(&v12[0] + 1) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72EC8, &qword_241DFA030);
  v7 = sub_241DF8EEC();
  swift_beginAccess();
  objc_setAssociatedObject(v6, &unk_27EC72E81, v7, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_241DF257C@<X0>(uint64_t a2@<X8>)
{
  result = sub_241DF27C8();
  if (result)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = sub_241DF8EFC();
    v6 = *(v5 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = v16 - v7;
    sub_241DF41C8(v16 - v7);
    v9 = *(AssociatedTypeWitness - 8);
    if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
    {
      result = (*(v6 + 8))(v8, v5);
    }

    else
    {
      v17 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
      (*(v9 + 32))(boxed_opaque_existential_1, v8, AssociatedTypeWitness);
      v11 = v17;
      v12 = AssociatedConformanceWitness;
      v13 = __swift_project_boxed_opaque_existential_1(v16, v17);
      v20 = v11;
      v21 = *(v12 + 8);
      v14 = __swift_allocate_boxed_opaque_existential_1(&v19);
      (*(*(v11 - 8) + 16))(v14, v13, v11);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v16);
      if (v20)
      {
        return sub_241DF18E8(&v19, a2);
      }
    }
  }

  v15 = MEMORY[0x277CE1410];
  *(a2 + 24) = MEMORY[0x277CE1428];
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_241DF27C8()
{
  swift_getObjectType();
  v8 = v0;
  sub_241DF3294(0, &qword_27EC72EA8, 0x277D82BB8);
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72EB0, &qword_241DFA018);
  if (swift_dynamicCast())
  {
    sub_241DF18E8(v6, v9);
    v2 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = sub_241DF4364(v2, v3);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return v4;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_241DEF1F0(v6, &qword_27EC72EB8, &qword_241DFA020);
    return sub_241DF2374();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_241DF294C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_241DF2A44;

  return v6(a1);
}

uint64_t sub_241DF2A44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_241DF2B3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_241DF2C08(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_241DF3328(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_241DF2C08(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_241DF2D14(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_241DF8F2C();
    a6 = v11;
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

void *sub_241DF2D14(uint64_t a1, unint64_t a2)
{
  v3 = sub_241DF2D60(a1, a2);
  sub_241DF2E90(&unk_2853FA9A0);
  return v3;
}

void *sub_241DF2D60(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_241DF2F7C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_241DF8F2C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_241DF8E4C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_241DF2F7C(v10, 0);
        result = sub_241DF8F1C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_241DF2E90(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_241DF2FF0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_241DF2F7C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72EE0, &qword_241DFA058);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_241DF2FF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72EE0, &qword_241DFA058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_241DF30E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241DF311C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241DF3394;

  return sub_241DF294C(a1, v4);
}

uint64_t sub_241DF31D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241DF1B3C;

  return sub_241DF294C(a1, v4);
}

uint64_t sub_241DF3294(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_241DF3328(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_241DF3398()
{
  v1 = v0;
  while (1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = NSStringFromClass(ObjCClassFromMetadata);
    v4 = sub_241DF8E0C();
    v6 = v5;

    swift_beginAccess();
    v7 = *(v1 + 16);
    if (*(v7 + 16))
    {
      v8 = sub_241DF372C(v4, v6);
      v10 = v9;

      if (v10)
      {
        v11 = *(*(v7 + 56) + 16 * v8);
        swift_endAccess();
        return v11;
      }
    }

    else
    {
    }

    swift_endAccess();
    if (![(objc_class *)ObjCClassFromMetadata superclass])
    {
      break;
    }

    swift_getObjCClassMetadata();
  }

  return 0;
}

unint64_t sub_241DF3498()
{
  type metadata accessor for PlatformStyleRegistry();
  v0 = swift_allocObject();
  result = sub_241DF34D8();
  *(v0 + 16) = result;
  qword_27EC73F88 = v0;
  return result;
}

unint64_t sub_241DF34D8()
{
  v0 = sub_241DF3C70(MEMORY[0x277D84F90]);
  v25 = &type metadata for BaseStyle;
  v26 = sub_241DEEB98();
  v27 = &type metadata for BrailleProgressIndicatorStyle;
  v28 = sub_241DF3D80();
  v29 = &type metadata for BrailleSliderStyle;
  v30 = sub_241DF3DD4();
  v1 = 32;
  while (1)
  {
    v22 = *&v24[v1];
    sub_241DF42A8(*&v24[v1], *&v24[v1 + 8]);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = NSStringFromClass(ObjCClassFromMetadata);
    v5 = sub_241DF8E0C();
    v7 = v6;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v0;
    v9 = sub_241DF372C(v5, v7);
    v11 = *(v0 + 16);
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (*(v0 + 24) < v14)
    {
      sub_241DF385C(v14, isUniquelyReferenced_nonNull_native);
      v9 = sub_241DF372C(v5, v7);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v15)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v20 = v9;
    sub_241DF3B08();
    v9 = v20;
    if (v15)
    {
LABEL_2:
      v2 = v9;

      v0 = v23;
      *(v23[7] + 16 * v2) = v22;
      goto LABEL_3;
    }

LABEL_10:
    v0 = v23;
    v23[(v9 >> 6) + 8] |= 1 << v9;
    v17 = (v23[6] + 16 * v9);
    *v17 = v5;
    v17[1] = v7;
    *(v23[7] + 16 * v9) = v22;
    v18 = v23[2];
    v13 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v13)
    {
      goto LABEL_16;
    }

    v23[2] = v19;
LABEL_3:
    v1 += 16;
    if (v1 == 80)
    {
      return v0;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_241DF8FAC();
  __break(1u);
  return result;
}

uint64_t sub_241DF36D0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_241DF372C(uint64_t a1, uint64_t a2)
{
  sub_241DF8FBC();
  sub_241DF8E3C();
  v4 = sub_241DF8FDC();

  return sub_241DF37A4(a1, a2, v4);
}

unint64_t sub_241DF37A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_241DF8F8C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_241DF385C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72EF8, &qword_241DFA088);
  v33 = v4;
  result = sub_241DF8F4C();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_241DF8FBC();
      sub_241DF8E3C();
      result = sub_241DF8FDC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_241DF3B08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72EF8, &qword_241DFA088);
  v2 = *v0;
  v3 = sub_241DF8F3C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_241DF3C70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72EF8, &qword_241DFA088);
    v3 = sub_241DF8F5C();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_241DF372C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_241DF3D80()
{
  result = qword_27EC72EE8;
  if (!qword_27EC72EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72EE8);
  }

  return result;
}

unint64_t sub_241DF3DD4()
{
  result = qword_27EC72EF0;
  if (!qword_27EC72EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72EF0);
  }

  return result;
}

uint64_t PrimitiveBrailleSymbologyStyle.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_241DF8C3C();
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

uint64_t static PrimitiveBrailleSymbologyStyle._makeConfiguration(_:)@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_241DF3F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a1;
  v22 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &AssociatedConformanceWitness - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for BaseStyleEnvironmentModifier(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &AssociatedConformanceWitness - v13;
  v15 = *(a2 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &AssociatedConformanceWitness - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 64))(a2, a3);
  (*(v20 + 16))(v8, v21, AssociatedTypeWitness);
  sub_241DF0290(v8, AssociatedTypeWitness, v14);
  MEMORY[0x245D00850](v14, a2, v10, *(a3 + 8));
  (*(v11 + 8))(v14, v10);
  return (*(v15 + 8))(v17, a2);
}

uint64_t sub_241DF41C8@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v6 = *(*(AssociatedTypeWitness - 8) + 56);

  return v6(a3, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_241DF4318(void *a1)
{
  sub_241DF8C3C();

  return swift_getWitnessTable();
}

void sub_241DF43DC()
{
  v0 = *MEMORY[0x277CBF448];
  v1 = CGColorSpaceCreateWithName(v0);

  qword_27EC72F00 = v1;
}

uint64_t sub_241DF4420(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72E90, &qword_241DF9FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_241DF8EAC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_241DF8E8C();

  v9 = sub_241DF8E7C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = *(v2 + 80);
  *(v10 + 40) = *(v3 + 88);
  *(v10 + 56) = *(v2 + 104);
  *(v10 + 64) = v8;

  sub_241DF13E4(0, 0, v6, &unk_241DFA248, v10);
}

uint64_t sub_241DF45E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_241DF8E8C();
  *(v4 + 48) = sub_241DF8E7C();
  v6 = sub_241DF8E6C();

  return MEMORY[0x2822009F8](sub_241DF467C, v6, v5);
}

uint64_t sub_241DF467C()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      UIAccessibilityPostNotification(0, 0);
      swift_unknownObjectRelease();
    }
  }

  v2 = *(v0 + 8);

  return v2();
}

void *sub_241DF472C()
{
  if (*(v0 + 48))
  {

    sub_241DF89DC();
  }

  sub_241DF58FC(v0 + 16);

  return v0;
}

uint64_t sub_241DF478C()
{
  sub_241DF472C();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_241DF47D8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{

  sub_241DF8B2C();
}

void sub_241DF483C(void (*a1)(void), double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  if (a2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if (a5 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a5 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    v22 = a1;
    v23 = a8;
    swift_once();
    a1 = v22;
    a8 = v23;
    goto LABEL_18;
  }

  v8 = a2;
  if (a2 < 1)
  {
    return;
  }

  v9 = a3;
  if (a3 < 1 || a4 < 1 || a5 < 1)
  {
    return;
  }

  if (qword_27EC72A60 != -1)
  {
    goto LABEL_38;
  }

LABEL_18:
  if (qword_27EC72F00)
  {
    v10 = a1;
    v11 = a8;
    v12 = qword_27EC72F00;
    v13 = __CGBitmapContextCreate(v8, v9, v8, v12);
    if (v13)
    {
      context = v13;
      v10();
      Data = CGBitmapContextGetData(context);
      if (Data)
      {
        v15 = Data;
        Width = CGBitmapContextGetWidth(context);
        Height = CGBitmapContextGetHeight(context);
        if ((Width * Height) >> 64 != (Width * Height) >> 63)
        {
          __break(1u);
          return;
        }

        v18 = sub_241DF57F8(v15, Width * Height);
        v20 = v19;
        v11();
        sub_241DF58A8(v18, v20);
      }

      v21 = context;
    }

    else
    {
      v21 = v12;
    }
  }
}

uint64_t sub_241DF4ADC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_241DF8EFC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v6);
  v11 = v14 - v10;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = v0[3];
    v14[2] = result;
    v14[3] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72F88, &qword_241DFA220);
    swift_getAssociatedTypeWitness();
    result = swift_dynamicCast();
    if (result)
    {
      v14[0] = v0;
      (*(v1 + 56))(v14[1], v2, v1);
      if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
      {
        swift_unknownObjectRelease();
        return (*(v5 + 8))(v8, v4);
      }

      else
      {
        (*(v9 + 32))(v11, v8, AssociatedTypeWitness);

        sub_241DF03BC(v11);

        swift_unknownObjectRelease();
        return (*(v9 + 8))(v11, AssociatedTypeWitness);
      }
    }
  }

  return result;
}

uint64_t sub_241DF4E10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_241DF8EFC();
  v25 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v28 = &v24 - v17;
  v29[0] = a1;
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v26 = a2;
  if (swift_dynamicCast())
  {
    if (v30)
    {
      v18 = *(a5 + 56);
      v24 = swift_unknownObjectRetain();
      v18(v24, a3, a5);
      if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) != 1)
      {
        (*(v16 + 32))(v28, v15, AssociatedTypeWitness);
        v29[0] = a3;
        v29[1] = MEMORY[0x277CE11C8];
        v29[2] = a5;
        v29[3] = MEMORY[0x277CE11C0];
        v20 = type metadata accessor for BrailleMapRenderer(0, v29);
        MEMORY[0x28223BE20](v20);
        v21 = v27;
        *(&v24 - 6) = v26;
        *(&v24 - 5) = a3;
        *(&v24 - 4) = v21;
        *(&v24 - 3) = a5;
        *(&v24 - 2) = a1;
        swift_allocObject();
        v22 = v28;
        v23 = sub_241DF539C(v28, sub_241DF5924, (&v24 - 8));
        v23[3] = v21;
        swift_unknownObjectWeakAssign();
        *(a6 + 24) = v20;
        *(a6 + 32) = &off_2853FB298;
        swift_unknownObjectRelease();
        *a6 = v23;
        (*(v16 + 8))(v22, AssociatedTypeWitness);
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      (*(v25 + 8))(v15, v12);
    }
  }

  else
  {
    v30 = 0;
  }

  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  return swift_unknownObjectRelease();
}

uint64_t sub_241DF5154@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  (*(a2 + 8))(v10, a1, a2);
  v4 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_241DF8D9C();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
  *a3 = v7;
  return result;
}

char *sub_241DF5260(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_241DF5280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_241DF5280(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72F90, &qword_241DFA228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_241DF539C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = *(*v4 + 88);
  v9 = *(*v4 + 96);
  v10 = *(*v4 + 104);
  v22[0] = *(*v4 + 80);
  v7 = v22[0];
  v22[1] = v8;
  v22[2] = v9;
  v22[3] = v10;
  v11 = type metadata accessor for RootView(0, v22);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[6] = 0;
  v15 = type metadata accessor for StyleProvider(0, v7, v9, v14);
  v4[4] = sub_241DF06CC(a1, v15, v16, v17);
  swift_getWitnessTable();
  sub_241DF8B4C();

  sub_241DF5BA0(v18, a2, v8, v10, v13);
  v4[5] = MEMORY[0x245D008A0](v13);

  v19 = sub_241DF8B1C();

  v22[0] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72F98, &unk_241DFA230);
  sub_241DF593C();
  v20 = sub_241DF8A4C();

  v4[6] = v20;

  return v4;
}

uint64_t sub_241DF55C0()
{
  v0 = _AXSVoiceOverTouchActive2DBrailleDisplays();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v3 = v2;
      sub_241DF8E5C();
    }
  }

  return v1;
}

uint64_t sub_241DF5740(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_241DF57F8(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_241DF5740(a1, &a1[a2]);
  }

  sub_241DF897C();
  swift_allocObject();
  sub_241DF893C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_241DF898C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_241DF58A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_241DF593C()
{
  result = qword_27EC72FA0;
  if (!qword_27EC72FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC72F98, &unk_241DFA230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72FA0);
  }

  return result;
}

uint64_t sub_241DF59A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241DF59D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_241DF5A18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[8];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_241DF1B3C;

  return sub_241DF45E4(a1, v4, v5, v6);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BrailleDisplay(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BrailleDisplay(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_241DF5BA0@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v12 = *(v10 + 80);
  v13 = *(v10 + 88);
  type metadata accessor for StyleProvider(0, v12, v13, v14);

  swift_getWitnessTable();
  *a5 = sub_241DF8A6C();
  *(a5 + 8) = v15;
  *(a5 + 16) = v16 & 1;
  v18[0] = v12;
  v18[1] = a3;
  v18[2] = v13;
  v18[3] = a4;
  type metadata accessor for RootView(0, v18);
  a2();
}

uint64_t sub_241DF5CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = type metadata accessor for StyleProvider(0, *(a1 + 16), *(a1 + 32), a4);
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282130840](v5, v6, v7, v8, WitnessTable);
}

uint64_t sub_241DF5D5C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v3 = a1[4];
  v4 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v79 = &v63 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v83 = AssociatedTypeWitness;
  v84 = type metadata accessor for BaseStyleEnvironmentModifier(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v9 = sub_241DF8BAC();
  v80 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v78 = &v63 - v10;
  v11 = a1[3];
  v81 = a1;
  v12 = a1[5];
  v65 = v11;
  v13 = sub_241DF8D8C();
  v68 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = sub_241DF8BAC();
  v69 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC73050, &qword_241DFA4B0);
  v19 = sub_241DF8BAC();
  v71 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v67 = &v63 - v20;
  v70 = v21;
  v85 = v9;
  v22 = sub_241DF8BAC();
  v75 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v72 = &v63 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC73058, &qword_241DFA4B8);
  v76 = v22;
  v66 = sub_241DF8BAC();
  v77 = *(v66 - 8);
  v24 = MEMORY[0x28223BE20](v66);
  v73 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v74 = &v63 - v26;
  v27 = sub_241DF55C0();
  if (v27[2])
  {
    v28 = v27[4];
    v29 = v27[5];
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  v30 = sub_241DF8C2C();
  MEMORY[0x28223BE20](v30);
  *&v31 = v4;
  *(&v31 + 1) = v65;
  *&v32 = v3;
  *(&v32 + 1) = v12;
  *(&v63 - 3) = v31;
  *(&v63 - 2) = v32;
  v64 = v3;
  *(&v63 - 2) = v87;
  sub_241DF8D7C();
  sub_241DF8DBC();
  WitnessTable = swift_getWitnessTable();
  v63 = v28;
  sub_241DF8CFC();
  (*(v68 + 8))(v15, v13);
  v94 = sub_241DF8D2C();
  sub_241DF8C7C();
  v98 = WitnessTable;
  v99 = MEMORY[0x277CDF678];
  v34 = swift_getWitnessTable();
  v35 = v67;
  sub_241DF8CBC();

  (*(v69 + 8))(v18, v16);
  v36 = v81;
  sub_241DF5CDC(v81, v37, v38, v39);
  sub_241DF5CDC(v36, v40, v41, v42);
  v43 = v79;
  sub_241DEF94C();

  v44 = v78;
  sub_241DEFA08(v43, v78);

  (*(v82 + 8))(v43, v83);
  v45 = sub_241DEF558(&qword_27EC73060, &qword_27EC73050, &qword_241DFA4B0, MEMORY[0x277CE0728]);
  v96 = v34;
  v97 = v45;
  v46 = v70;
  v47 = swift_getWitnessTable();
  v48 = v72;
  v49 = v85;
  MEMORY[0x245D00A70](v44, v46, v85, v47);
  (*(v80 + 8))(v44, v49);
  (*(v71 + 8))(v35, v46);
  swift_getKeyPath();
  v94 = v63;
  v95 = v29;
  v50 = *(v64 + 8);
  v51 = swift_getWitnessTable();
  v92 = v50;
  v93 = v51;
  v52 = swift_getWitnessTable();
  v90 = v47;
  v91 = v52;
  v53 = v76;
  v54 = swift_getWitnessTable();
  v55 = v73;
  sub_241DF8CCC();

  (*(v75 + 8))(v48, v53);
  v56 = sub_241DEF558(&qword_27EC73068, &qword_27EC73058, &qword_241DFA4B8, MEMORY[0x277CE0868]);
  v88 = v54;
  v89 = v56;
  v57 = v66;
  swift_getWitnessTable();
  v58 = v77;
  v59 = *(v77 + 16);
  v60 = v74;
  v59(v74, v55, v57);
  v61 = *(v58 + 8);
  v61(v55, v57);
  v59(v86, v60, v57);
  return (v61)(v60, v57);
}

uint64_t sub_241DF6684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v13 = type metadata accessor for RootView(0, v16);
  v14 = *(v6 + 16);
  v14(v8, a1 + *(v13 + 52), a2);
  v14(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_241DF67A0()
{
  v2 = v1;
  v3 = sub_241DF8BEC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241DF7F6C(v2, v9);
  if (v11 == 1)
  {
    v12 = v9[0];
    v13 = v9[1];
    v14 = v10;
  }

  else
  {
    sub_241DF8ECC();
    v7 = sub_241DF8C6C();
    sub_241DF89CC();

    sub_241DF8BDC();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC72CD0, &qword_241DF9C98);
  return swift_dynamicCast();
}

uint64_t sub_241DF6938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_241DF8BEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241DF7F6C(a1, v10);
  if (v12 == 1)
  {
    v13 = v10[0];
    v14 = v10[1];
    v15 = v11;
  }

  else
  {
    sub_241DF8ECC();
    v8 = sub_241DF8C6C();
    sub_241DF89CC();

    sub_241DF8BDC();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC72CD0, &qword_241DF9C98);
  swift_dynamicCast();
  sub_241DF8498(v10);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_241DF6AE8()
{
  v1 = v0;
  v2 = sub_241DF8BEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241DF7F6C(v1, v8);
  if (v10 == 1)
  {
    v11 = v8[0];
    v12 = v8[1];
    v13 = v9;
  }

  else
  {
    sub_241DF8ECC();
    v6 = sub_241DF8C6C();
    sub_241DF89CC();

    sub_241DF8BDC();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC72CD0, &qword_241DF9C98);
  swift_dynamicCast();
  return *&v8[0];
}

uint64_t sub_241DF6C74@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_241DF6CCC@<X0>(uint64_t a1@<X8>)
{
  sub_241DF6938(v1, a1);
  KeyPath = swift_getKeyPath();
  sub_241DF67A0();
  result = sub_241DF18E8(&v5, a1 + 56);
  *(a1 + 48) = KeyPath;
  return result;
}

uint64_t sub_241DF6D2C@<X0>(uint64_t a1@<X8>)
{
  sub_241DF89BC();
  v2 = sub_241DF6AE8();
  v3 = [v2 dictionaryRepresentation];

  sub_241DF8DEC();
  v4 = objc_allocWithZone(MEMORY[0x277CE6A98]);
  v5 = sub_241DF8DDC();

  [v4 initWithDictionary_];

  sub_241DF89AC();
  swift_allocObject();
  v6 = sub_241DF899C();
  sub_241DF8824(&qword_27EC730E8, MEMORY[0x277CE76D8], MEMORY[0x277CE76D0]);
  v7 = sub_241DF89EC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC730F0, &qword_241DFA6D8);
  v9 = (a1 + *(result + 36));
  *v9 = v7;
  v9[1] = v6;
  return result;
}

float sub_241DF6E94()
{
  v1 = v0;
  v2 = sub_241DF8BEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241DF7F6C(v1, v8);
  if (v10 == 1)
  {
    v11 = v8[0];
    v12 = v8[1];
    v13 = v9;
  }

  else
  {
    sub_241DF8ECC();
    v6 = sub_241DF8C6C();
    sub_241DF89CC();

    sub_241DF8BDC();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC72CD0, &qword_241DF9C98);
  swift_dynamicCast();
  return *v8;
}

float sub_241DF7024()
{
  v1 = v0;
  v2 = sub_241DF8BEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241DF7F6C(v1, v8);
  if (v10 == 1)
  {
    v11 = v8[0];
    v12 = v8[1];
    v13 = v9;
  }

  else
  {
    sub_241DF8ECC();
    v6 = sub_241DF8C6C();
    sub_241DF89CC();

    sub_241DF8BDC();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC72CD0, &qword_241DF9C98);
  swift_dynamicCast();
  return *v8;
}

uint64_t sub_241DF71B4@<X0>(uint64_t a1@<X8>)
{
  sub_241DF6E94();
  sub_241DF6E94();
  sub_241DF7F18();
  sub_241DF8AAC();
  v2 = sub_241DF8C7C();
  sub_241DF8A5C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC73078, &qword_241DFA4E8);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

void sub_241DF726C()
{
  sub_241DF7024();
  sub_241DF8DAC();
  sub_241DF7024();
  v1 = v0;
  sub_241DF7024();
  if (v1 > v2)
  {
    __break(1u);
  }

  else
  {
    sub_241DF7F18();
    sub_241DF8D6C();
  }
}

uint64_t sub_241DF7320()
{
  v2 = v1;
  v3 = sub_241DF8BEC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241DF7F6C(v2, v9);
  if (v11 == 1)
  {
    v12 = v9[0];
    v13 = v9[1];
    v14 = v10;
  }

  else
  {
    sub_241DF8ECC();
    v7 = sub_241DF8C6C();
    sub_241DF89CC();

    sub_241DF8BDC();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC72CD0, &qword_241DF9C98);
  return swift_dynamicCast();
}

uint64_t BrailleBootScreenView.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t BrailleBootScreenView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_241DF8C2C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72FA8, &qword_241DFA2A8);
  return sub_241DF7548(v2, a2 + *(v4 + 44));
}

uint64_t sub_241DF7548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC73080, &qword_241DFA500);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = sub_241DF8D4C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241DF8D3C();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
  v14 = sub_241DF8D5C();

  (*(v11 + 8))(v13, v10);
  v15 = sub_241DF8D1C();
  sub_241DF7320();
  v22 = 0;
  v21 = 1065353216;
  sub_241DF7F18();
  sub_241DF8AAC();
  v16 = *(v4 + 16);
  v16(v7, v9, v3);
  *a2 = v14;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC73088, &qword_241DFA508);
  v16((a2 + *(v17 + 48)), v7, v3);
  v18 = *(v4 + 8);

  v18(v9, v3);
  v18(v7, v3);
}

unint64_t sub_241DF7824(uint64_t a1)
{
  result = sub_241DF784C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241DF784C()
{
  result = qword_27EC72FB0;
  if (!qword_27EC72FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC72FB0);
  }

  return result;
}

uint64_t sub_241DF78BC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_241DF8C2C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72FA8, &qword_241DFA2A8);
  return sub_241DF7548(v2, a2 + *(v4 + 44));
}

uint64_t sub_241DF796C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for StyleProvider(255, a1[2], a1[4], a4);
  swift_getWitnessTable();
  result = sub_241DF8A8C();
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_241DF7A2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 16);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_241DF7BB0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

unint64_t sub_241DF7E24(uint64_t a1)
{
  result = sub_241DF7E4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241DF7E4C()
{
  result = qword_27EC73048;
  if (!qword_27EC73048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC73048);
  }

  return result;
}

unint64_t sub_241DF7F18()
{
  result = qword_27EC73070;
  if (!qword_27EC73070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC73070);
  }

  return result;
}

uint64_t sub_241DF7F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC72DD8, &unk_241DFA4F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241DF7FDC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241DF8034(uint64_t *a1)
{
  sub_241DF8D8C();
  sub_241DF8BAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC73050, &qword_241DFA4B0);
  sub_241DF8BAC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BaseStyleEnvironmentModifier(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  sub_241DF8BAC();
  sub_241DF8BAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC73058, &qword_241DFA4B8);
  sub_241DF8BAC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_241DEF558(&qword_27EC73060, &qword_27EC73050, &qword_241DFA4B0, MEMORY[0x277CE0728]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_241DEF558(&qword_27EC73068, &qword_27EC73058, &qword_241DFA4B8, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

unint64_t sub_241DF82B0()
{
  result = qword_27EC73090;
  if (!qword_27EC73090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC73078, &qword_241DFA4E8);
    sub_241DEF558(&qword_27EC73098, &qword_27EC73080, &qword_241DFA500, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC73090);
  }

  return result;
}

unint64_t sub_241DF8368(uint64_t a1)
{
  result = sub_241DF8390();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241DF8390()
{
  result = qword_27EC730A0;
  if (!qword_27EC730A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC730A0);
  }

  return result;
}

unint64_t sub_241DF8400(uint64_t a1)
{
  result = sub_241DF8428();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241DF8428()
{
  result = qword_27EC730A8;
  if (!qword_27EC730A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC730A8);
  }

  return result;
}

unint64_t sub_241DF8520()
{
  result = qword_27EC730B0;
  if (!qword_27EC730B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC730B8, &qword_241DFA648);
    sub_241DF85D8();
    sub_241DEF558(&qword_27EC72E70, &qword_27EC72E68, &qword_241DF9FB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC730B0);
  }

  return result;
}

unint64_t sub_241DF85D8()
{
  result = qword_27EC730C0;
  if (!qword_27EC730C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC730C8, &unk_241DFA650);
    sub_241DF865C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC730C0);
  }

  return result;
}

unint64_t sub_241DF865C()
{
  result = qword_27EC730D0;
  if (!qword_27EC730D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC730D0);
  }

  return result;
}

unint64_t sub_241DF8710(uint64_t a1)
{
  result = sub_241DF865C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241DF873C()
{
  result = qword_27EC730F8;
  if (!qword_27EC730F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC730F0, &qword_241DFA6D8);
    sub_241DF8824(&qword_27EC73100, MEMORY[0x277CE7728], MEMORY[0x277CE7720]);
    sub_241DEF558(&qword_27EC73108, &unk_27EC73110, &qword_241DFA6E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC730F8);
  }

  return result;
}

uint64_t sub_241DF8824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_241DF8888@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 progress];
  *a2 = v4 | 0x3F80000000000000;
  *(a2 + 8) = 0;
  return result;
}

id sub_241DF88C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 value];
  v5 = v4;
  [a1 minimumValue];
  v7 = v6;
  result = [a1 maximumValue];
  *a2 = v5 | (v7 << 32);
  *(a2 + 8) = v9;
  *(a2 + 12) = 0;
  return result;
}

CGSize CGSizeFromString(NSString *string)
{
  MEMORY[0x2821DE310](string);
  result.height = v2;
  result.width = v1;
  return result;
}