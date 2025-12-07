uint64_t Video.id.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void Video.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t Video.title.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

void Video.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_26CC8E550()
{
  v1 = *v0;
  v2 = 0x737465737361;
  v3 = 25705;
  v4 = 0x736567616D69;
  if (v1 != 4)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697461727564;
  if (v1 != 1)
  {
    v5 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26CC8E5F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC95E74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC8E620(uint64_t a1)
{
  v2 = sub_26CC8E9BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC8E65C(uint64_t a1)
{
  v2 = sub_26CC8E9BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Video.encode(to:)(void *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE00, &qword_26CD42B20);
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = v23 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v29 = *(v1 + 48);
  v30 = v9;
  v41 = *(v1 + 56);
  v11 = *(v1 + 64);
  v27 = *(v1 + 72);
  v28 = v11;
  v12 = *(v1 + 80);
  v25 = *(v1 + 88);
  v26 = v12;
  v13 = *(v1 + 96);
  v23[0] = *(v1 + 104);
  v23[1] = *(v1 + 112);
  v24 = v13;
  v14 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v15 = v30;
  sub_26CC8E218(v5, v6, v7, v8, v10, v30);
  sub_26CC8E9BC();
  v16 = v32;
  sub_26CD3B16C();
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  v17 = v4;
  v39 = v10;
  v40 = v15;
  v42 = 0;
  sub_26CC8EA10();
  v18 = v33;
  sub_26CD3AF1C();
  if (v18)
  {
    v19 = sub_26CC8E2B4(v35, v36, v37, v38, v39, v40);
    return (*(v34 + 8))(v4, v16, v19);
  }

  else
  {
    v21 = v24;
    v22 = v34;
    sub_26CC8E2B4(v35, v36, v37, v38, v39, v40);
    LOBYTE(v35) = 1;
    sub_26CD3AEEC();
    LOBYTE(v35) = 2;
    sub_26CD3AECC();
    LOBYTE(v35) = 3;
    sub_26CD3AECC();
    v35 = v21;
    v42 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCD98, &unk_26CD42AF8);
    sub_26CC8C5F8(&qword_2804BCDA0, sub_26CC8B6C4, MEMORY[0x277D83948]);
    sub_26CD3AF1C();
    LOBYTE(v35) = 5;
    sub_26CD3AECC();
    return (*(v22 + 8))(v17, v16);
  }
}

unint64_t sub_26CC8E9BC()
{
  result = qword_2804BCE08;
  if (!qword_2804BCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE08);
  }

  return result;
}

unint64_t sub_26CC8EA10()
{
  result = qword_2804BCE10;
  if (!qword_2804BCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE10);
  }

  return result;
}

uint64_t Video.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE18, &qword_26CD42B28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v72 = 1;
  v9 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_26CC8E9BC();
  sub_26CD3B15C();
  if (v2)
  {
    v73 = v2;
    v43 = 0;
    v44 = 0uLL;
    v45 = 0;
    v42 = 0;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v56 = 0;
    v57 = 1;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = v72;
    *v64 = *v71;
    *&v64[3] = *&v71[3];
    v65 = v42;
    v66 = v45;
    v67 = v44;
    v69 = 0;
    v70 = 0;
    v68 = v43;
  }

  else
  {
    LOBYTE(v47) = 0;
    sub_26CC8EFC0();
    sub_26CD3AE2C();
    v11 = v56;
    v12 = v58;
    v39 = v57;
    v40 = v59;
    v38 = v60;
    v41 = v61;
    sub_26CC8E2B4(0, 1, 0, 0, 0, 0);
    LOBYTE(v56) = 1;
    v13 = a2;
    v36 = sub_26CD3ADFC();
    v37 = v12;
    v72 = v14 & 1;
    LOBYTE(v56) = 2;
    v15 = sub_26CD3ADDC();
    v45 = v16;
    LOBYTE(v56) = 3;
    v17 = sub_26CD3ADDC();
    v42 = v15;
    *&v44 = v17;
    *(&v44 + 1) = v18;
    v35 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCD98, &unk_26CD42AF8);
    LOBYTE(v47) = 4;
    sub_26CC8C5F8(&qword_2804BCDC0, sub_26CC8C670, MEMORY[0x277D83978]);
    sub_26CD3AE2C();
    v43 = v56;
    v55 = 5;
    v19 = sub_26CD3ADDC();
    v73 = 0;
    v21 = v20;
    v22 = v19;
    (*(v6 + 8))(v8, v5);
    v23 = v38;
    *&v47 = v35;
    *(&v47 + 1) = v39;
    *&v48 = v37;
    *(&v48 + 1) = v40;
    *&v49 = v38;
    *(&v49 + 1) = v41;
    *&v50 = v36;
    HIDWORD(v34) = v72;
    BYTE8(v50) = v72;
    *&v51 = v15;
    v25 = *(&v44 + 1);
    v24 = v45;
    v27 = v43;
    v26 = v44;
    *(&v51 + 1) = v45;
    v52 = v44;
    *&v53 = v43;
    *(&v53 + 1) = v22;
    v54 = v21;
    v29 = v51;
    v28 = v44;
    v30 = v53;
    *(v13 + 112) = v21;
    *(v13 + 80) = v28;
    *(v13 + 96) = v30;
    v31 = v47;
    v32 = v48;
    v33 = v49;
    *(v13 + 48) = v50;
    *(v13 + 64) = v29;
    *(v13 + 16) = v32;
    *(v13 + 32) = v33;
    *v13 = v31;
    sub_26CC8F014(&v47, &v56);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v56 = v35;
    v57 = v39;
    v58 = v37;
    v59 = v40;
    v60 = v23;
    v61 = v41;
    v62 = v36;
    v63 = BYTE4(v34);
    v65 = v42;
    v66 = v24;
    *&v67 = v26;
    *(&v67 + 1) = v25;
    v68 = v27;
    v69 = v22;
    v70 = v21;
  }

  return sub_26CC8EF90(&v56);
}

unint64_t sub_26CC8EFC0()
{
  result = qword_2804BCE20;
  if (!qword_2804BCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE20);
  }

  return result;
}

uint64_t Asset.assetId.getter()
{
  v1 = *v0;

  return v1;
}

void Asset.assetId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t Asset.hlsUrl.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void Asset.hlsUrl.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t Asset.programId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void Asset.programId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_26CC8F214()
{
  v1 = 0x6C7255736C68;
  if (*v0 != 1)
  {
    v1 = 0x496D6172676F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64497465737361;
  }
}

uint64_t sub_26CC8F270@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC96064(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC8F298(uint64_t a1)
{
  v2 = sub_26CC8F4D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC8F2D4(uint64_t a1)
{
  v2 = sub_26CC8F4D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Asset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE28, &qword_26CD42B30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC8F4D4();
  sub_26CD3B16C();
  v14 = 0;
  v9 = v11[5];
  sub_26CD3AECC();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_26CD3AECC();
  v12 = 2;
  sub_26CD3AECC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26CC8F4D4()
{
  result = qword_2804BCE30;
  if (!qword_2804BCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE30);
  }

  return result;
}

void Asset.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE38, &qword_26CD42B38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC8F4D4();
  sub_26CD3B15C();
  if (!v2)
  {
    v26 = 0;
    v9 = sub_26CD3ADDC();
    v11 = v10;
    v12 = v9;
    v25 = 1;
    v13 = sub_26CD3ADDC();
    v15 = v14;
    v23 = v13;
    v24 = 2;
    v16 = sub_26CD3ADDC();
    v17 = *(v6 + 8);
    v22 = v16;
    v18 = v8;
    v20 = v19;
    v17(v18, v5);
    *a2 = v12;
    a2[1] = v11;
    v21 = v22;
    a2[2] = v23;
    a2[3] = v15;
    a2[4] = v21;
    a2[5] = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ContentRating.displayName.getter()
{
  v1 = *v0;

  return v1;
}

void ContentRating.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t ContentRating.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void ContentRating.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t ContentRating.system.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void ContentRating.system.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t ContentRating.value.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t sub_26CC8F9C0()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CC8FA14(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

void sub_26CC8FA58(BOOL *a2@<X8>)
{
  v3 = sub_26CD3AD9C();

  *a2 = v3 != 0;
}

void sub_26CC8FAC8(BOOL *a3@<X8>)
{
  v4 = sub_26CD3AD9C();

  *a3 = v4 != 0;
}

uint64_t sub_26CC8FB20(uint64_t a1)
{
  v2 = sub_26CC8FF28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC8FB5C(uint64_t a1)
{
  v2 = sub_26CC8FF28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CC8FBEC(uint64_t a1)
{
  v2 = sub_26CC8FF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC8FC28(uint64_t a1)
{
  v2 = sub_26CC8FF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContentRating.SystemType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE40, &qword_26CD42B40);
  v15 = *(v3 - 8);
  v16 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE48, &qword_26CD42B48);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC8FF28();
  sub_26CD3B16C();
  if (v10)
  {
    sub_26CC8FF7C();
    sub_26CD3AEAC();
    (*(v15 + 8))(v5, v16);
  }

  else
  {
    v12 = sub_26CD3ACBC();
    swift_allocError();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE60, &qword_26CD42B50);
    *(v14 + 24) = &type metadata for ContentRating.SystemType;
    *v14 = 0;
    sub_26CD3AEBC();
    sub_26CD3AC8C();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D841A8], v12);
    swift_willThrow();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_26CC8FF28()
{
  result = qword_2804BCE50;
  if (!qword_2804BCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE50);
  }

  return result;
}

unint64_t sub_26CC8FF7C()
{
  result = qword_2804BCE58;
  if (!qword_2804BCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE58);
  }

  return result;
}

uint64_t ContentRating.SystemType.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

uint64_t ContentRating.SystemType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE68, &qword_26CD42B58);
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE70, &qword_26CD42B60);
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC8FF28();
  sub_26CD3B15C();
  if (!v2)
  {
    v10 = v19;
    v17 = v7;
    if (*(sub_26CD3AE9C() + 16) == 1)
    {
      sub_26CC8FF7C();
      sub_26CD3ADBC();
      v11 = v17;
      (*(v10 + 8))(v6, v4);
      (*(v11 + 8))(v9, v20);
      swift_unknownObjectRelease();
      *v18 = 1;
    }

    else
    {
      v12 = sub_26CD3AC9C();
      swift_allocError();
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE78, &qword_26CD42B68);
      *v14 = &type metadata for ContentRating.SystemType;
      sub_26CD3ADCC();
      sub_26CD3AC8C();
      (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84160], v12);
      swift_willThrow();
      (*(v17 + 8))(v9, v20);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26CC90398()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0x6D6574737973;
  v4 = 0x79546D6574737973;
  if (v1 != 3)
  {
    v4 = 0x65756C6176;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26CC90430@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC96180(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC90458(uint64_t a1)
{
  v2 = sub_26CC90738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC90494(uint64_t a1)
{
  v2 = sub_26CC90738();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContentRating.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE80, &qword_26CD42B70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v7;
  v8 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = v8;
  v14 = *(v1 + 48);
  v13 = *(v1 + 56);
  v12[1] = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC90738();
  sub_26CD3B16C();
  v25 = 0;
  v9 = v19;
  sub_26CD3AECC();
  if (!v9)
  {
    v10 = v14;
    v24 = 1;
    sub_26CD3AECC();
    v23 = 2;
    sub_26CD3AECC();
    v22 = v10;
    v21 = 3;
    sub_26CC9078C();
    sub_26CD3AF1C();
    v20 = 4;
    sub_26CD3AF0C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26CC90738()
{
  result = qword_2804BCE88;
  if (!qword_2804BCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE88);
  }

  return result;
}

unint64_t sub_26CC9078C()
{
  result = qword_2804BCE90;
  if (!qword_2804BCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE90);
  }

  return result;
}

uint64_t ContentRating.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE98, &qword_26CD42B78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v51 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC90738();
  sub_26CD3B15C();
  if (v2)
  {
    v53 = v2;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    LOBYTE(v42) = 0;
    *&v35 = sub_26CD3ADDC();
    *(&v35 + 1) = v16;
    LOBYTE(v42) = 1;
    v12 = sub_26CD3ADDC();
    v33 = a2;
    v34 = v17;
    LOBYTE(v42) = 2;
    v18 = sub_26CD3ADDC();
    v53 = 0;
    v10 = v18;
    v9 = v19;
    LOBYTE(v36) = 3;
    sub_26CC90BD4();
    v20 = v53;
    sub_26CD3AE2C();
    if (!v20)
    {
      v21 = v42;
      v41 = 4;
      v22 = sub_26CD3AE1C();
      v53 = 0;
      v24 = v23;
      v25 = *(v6 + 8);
      v32 = v22;
      v25(v8, v5);
      v24 &= 1u;
      v51 = v24;
      v26 = v35;
      v36 = v35;
      v27 = v34;
      *&v37 = v12;
      *(&v37 + 1) = v34;
      *&v38 = v10;
      *(&v38 + 1) = v9;
      LOBYTE(v39) = v21;
      *(&v39 + 1) = v32;
      v40 = v24;
      v28 = v33;
      *(v33 + 64) = v24;
      v29 = v39;
      v28[2] = v38;
      v28[3] = v29;
      v30 = v37;
      *v28 = v36;
      v28[1] = v30;
      sub_26CC90C28(&v36, &v42);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v42 = v26;
      v43 = v12;
      v44 = v27;
      v45 = v10;
      v46 = v9;
      v47 = v21;
      v49 = v32;
      v50 = v24;
      return sub_26CC90BA4(&v42);
    }

    v53 = v20;
    (*(v6 + 8))(v8, v5);
    v13 = *(&v35 + 1);
    v14 = v35;
    v11 = v34;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v42 = v14;
  *(&v42 + 1) = v13;
  v43 = v12;
  v44 = v11;
  v45 = v10;
  v46 = v9;
  v47 = 2;
  *v48 = v52[0];
  *&v48[3] = *(v52 + 3);
  v49 = 0;
  v50 = v51;
  return sub_26CC90BA4(&v42);
}

unint64_t sub_26CC90BD4()
{
  result = qword_2804BCEA0;
  if (!qword_2804BCEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCEA0);
  }

  return result;
}

uint64_t ArtworkVariant.artworkSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3 & 1;
  return result;
}

uint64_t ArtworkVariant.artworkURLString.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void ArtworkVariant.artworkURLString.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t ArtworkVariant.artworkURLTemplate.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void ArtworkVariant.artworkURLTemplate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t ArtworkVariant.format.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void ArtworkVariant.format.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_26CC90EFC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x536B726F77747261;
    if (v1 != 1)
    {
      v5 = 0x546B726F77747261;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6168706C61;
    }
  }

  else
  {
    v2 = 0x74616D726F66;
    if (v1 != 5)
    {
      v2 = 0xD000000000000014;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_26CC90FF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC96334(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC91018(uint64_t a1)
{
  v2 = sub_26CC91374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC91054(uint64_t a1)
{
  v2 = sub_26CC91374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArtworkVariant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCEA8, &qword_26CD42B80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = *(v1 + 8);
  v17 = *(v1 + 16);
  v18 = v7;
  v23 = *(v1 + 24);
  v16 = *(v1 + 25);
  v8 = *(v1 + 32);
  v15[5] = *(v1 + 40);
  v15[6] = v8;
  v9 = *(v1 + 56);
  v15[3] = *(v1 + 48);
  v15[4] = v9;
  v10 = *(v1 + 72);
  v15[1] = *(v1 + 64);
  v15[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC91374();
  sub_26CD3B16C();
  LOBYTE(v20) = 0;
  v11 = v3;
  v12 = v19;
  sub_26CD3AEDC();
  if (!v12)
  {
    v13 = v16;
    v20 = v18;
    v21 = v17;
    v22 = v23;
    v24 = 1;
    type metadata accessor for CGSize(0);
    sub_26CC88084(&qword_2804BCEB8, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
    sub_26CD3AF1C();
    LOBYTE(v20) = v13;
    v24 = 2;
    sub_26CC913C8();
    sub_26CD3AF1C();
    LOBYTE(v20) = 3;
    sub_26CD3AECC();
    LOBYTE(v20) = 4;
    sub_26CD3AECC();
    LOBYTE(v20) = 5;
    sub_26CD3AECC();
    LOBYTE(v20) = 6;
    sub_26CD3AEDC();
  }

  return (*(v4 + 8))(v6, v11);
}

unint64_t sub_26CC91374()
{
  result = qword_2804BCEB0;
  if (!qword_2804BCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCEB0);
  }

  return result;
}

unint64_t sub_26CC913C8()
{
  result = qword_2804BCEC0;
  if (!qword_2804BCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCEC0);
  }

  return result;
}

uint64_t ArtworkVariant.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCEC8, &qword_26CD42B88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v66 = 1;
  v9 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_26CC91374();
  sub_26CD3B15C();
  if (v2)
  {
    v68 = v2;
    v41 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 2;
  }

  else
  {
    LOBYTE(v50) = 0;
    v10 = sub_26CD3ADEC();
    v68 = 0;
    v40 = v10;
    type metadata accessor for CGSize(0);
    LOBYTE(v43) = 1;
    sub_26CC88084(&qword_2804BCED0, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
    v15 = v68;
    sub_26CD3AE2C();
    v68 = v15;
    if (v15)
    {
      (*(v6 + 8))(v8, v5);
      v41 = 0;
      v11 = 0;
      v12 = 0;
      v13 = v40;
    }

    else
    {
      v38 = v50;
      v39 = v51;
      v66 = v52;
      LOBYTE(v43) = 2;
      sub_26CC91AB4();
      v16 = v68;
      sub_26CD3AE2C();
      if (!v16)
      {
        v17 = v50;
        LOBYTE(v50) = 3;
        v37 = sub_26CD3ADDC();
        v35 = v17;
        v36 = v18;
        LOBYTE(v50) = 4;
        v19 = a2;
        v20 = sub_26CD3ADDC();
        v22 = v21;
        LOBYTE(v50) = 5;
        v23 = sub_26CD3ADDC();
        v41 = v24;
        v49 = 6;
        v25 = sub_26CD3ADEC();
        v68 = 0;
        v26 = v25;
        (*(v6 + 8))(v8, v5);
        LOBYTE(v43) = v40;
        DWORD1(v43) = *(v67 + 3);
        *(&v43 + 1) = v67[0];
        *(&v43 + 1) = v38;
        *&v44 = v39;
        v34 = v66;
        BYTE8(v44) = v66;
        LOBYTE(v17) = v35;
        BYTE9(v44) = v35;
        HIWORD(v44) = v65;
        *(&v44 + 10) = v64;
        v27 = v36;
        *&v45 = v37;
        *(&v45 + 1) = v36;
        *&v46 = v20;
        *(&v46 + 1) = v22;
        v28 = v23;
        *&v47 = v23;
        v29 = v41;
        *(&v47 + 1) = v41;
        v48 = v26;
        v30 = v44;
        *v19 = v43;
        *(v19 + 16) = v30;
        v31 = v45;
        v32 = v46;
        v33 = v47;
        *(v19 + 80) = v26;
        *(v19 + 48) = v32;
        *(v19 + 64) = v33;
        *(v19 + 32) = v31;
        sub_26CC91B08(&v43, &v50);
        __swift_destroy_boxed_opaque_existential_1(v42);
        LOBYTE(v50) = v40;
        *(&v50 + 1) = v67[0];
        HIDWORD(v50) = *(v67 + 3);
        v51 = v38;
        v52 = v39;
        v53 = v34;
        v54 = v17;
        v55 = v64;
        v56 = v65;
        v57 = v37;
        v58 = v27;
        v59 = v20;
        v60 = v22;
        v61 = v28;
        v62 = v29;
        v63 = v26;
        return sub_26CC91A84(&v50);
      }

      v68 = v16;
      (*(v6 + 8))(v8, v5);
      v41 = 0;
      v13 = v40;
      v11 = v39;
      v12 = v38;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
  LOBYTE(v50) = v13;
  *(&v50 + 1) = v67[0];
  HIDWORD(v50) = *(v67 + 3);
  v51 = v12;
  v52 = v11;
  v53 = v66;
  v54 = 27;
  v55 = v64;
  v56 = v65;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = v41;
  v63 = 2;
  return sub_26CC91A84(&v50);
}

unint64_t sub_26CC91AB4()
{
  result = qword_2804BCED8;
  if (!qword_2804BCED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCED8);
  }

  return result;
}

TVAppServices::ArtworkType_optional __swiftcall ArtworkType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AFEC();

  v5 = 0;
  v6 = 9;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t ArtworkType.rawValue.getter()
{
  result = 0x6F636E6F69746361;
  switch(*v0)
  {
    case 1:
      result = 0x6E6F6369707061;
      break;
    case 2:
      result = 0x72656E6E6162;
      break;
    case 3:
      result = 0x68636E6974736163;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0x6C746E65746E6F63;
      break;
    case 6:
    case 7:
      result = 0x7472617265766F63;
      break;
    case 8:
      result = 0x74616566646F7665;
      break;
    case 9:
      result = 0x65736163776F6C66;
      break;
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0x67616D696F726568;
      break;
    case 0xD:
      result = 0x656D61726679656BLL;
      break;
    case 0xE:
      result = 0x656D61726679656BLL;
      break;
    case 0xF:
      result = 0x70796C676F676F6CLL;
      break;
    case 0x10:
      result = 0xD000000000000011;
      break;
    case 0x11:
      result = 0x726568746FLL;
      break;
    case 0x12:
      result = 0x7261726574736F70;
      break;
    case 0x13:
      result = 0x6677656976657270;
      break;
    case 0x14:
      result = 0x616D69666C656873;
      break;
    case 0x15:
      result = 0xD000000000000014;
      break;
    case 0x16:
      result = 0x74736F70776F6873;
      break;
    case 0x17:
      result = 0xD000000000000016;
      break;
    case 0x18:
      result = 0x6F676F6C776F6873;
      break;
    case 0x19:
      result = 0xD000000000000010;
      break;
    case 0x1A:
      result = 0x676F6C6574696877;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26CC92058@<X0>(unint64_t *a1@<X8>)
{
  result = ArtworkType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

TVAppServices::ContentType_optional __swiftcall ContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x65646F73697045;
  v3 = 0x6E6F73616553;
  v4 = 2003789907;
  if (v1 != 3)
  {
    v4 = 0x676E6974726F7053;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6569766F4DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26CC92230()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CC92310(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CC923DC(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CC924C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x65646F73697045;
  v5 = 0xE600000000000000;
  v6 = 0x6E6F73616553;
  v7 = 0xE400000000000000;
  v8 = 2003789907;
  if (v2 != 3)
  {
    v8 = 0x676E6974726F7053;
    v7 = 0xED0000746E657645;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6569766F4DLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t Genre.id.getter()
{
  v1 = *v0;

  return v1;
}

void Genre.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t Genre.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void Genre.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_26CC92720()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

void sub_26CC92748(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_26CD3AFDC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26CD3AFDC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_26CC9281C(uint64_t a1)
{
  v2 = sub_26CC92A28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC92858(uint64_t a1)
{
  v2 = sub_26CC92A28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Genre.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCEE0, &qword_26CD42B90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC92A28();
  sub_26CD3B16C();
  v12 = 0;
  v8 = v10[3];
  sub_26CD3AECC();
  if (!v8)
  {
    v11 = 1;
    sub_26CD3AECC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26CC92A28()
{
  result = qword_2804BCEE8;
  if (!qword_2804BCEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCEE8);
  }

  return result;
}

void Genre.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCEF0, &qword_26CD42B98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC92A28();
  sub_26CD3B15C();
  if (!v2)
  {
    v18 = 0;
    v9 = sub_26CD3ADDC();
    v11 = v10;
    v16 = v9;
    v17 = 1;
    v12 = sub_26CD3ADDC();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

TVAppServices::ItemContext_optional __swiftcall ItemContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ItemContext.rawValue.getter()
{
  result = 0x556F546465646441;
  switch(*v0)
  {
    case 1:
    case 3:
      result = 0x6C62616C69617641;
      break;
    case 2:
      result = 0x656C62616C617641;
      break;
    case 4:
      result = 0x65756E69746E6F43;
      break;
    case 5:
      result = 0x657469726F766146;
      break;
    case 6:
      result = 1702259020;
      break;
    case 7:
      result = 0x6F7369704577654ELL;
      break;
    case 8:
      result = 0x6F7361655377654ELL;
      break;
    case 9:
      result = 0x736970457478654ELL;
      break;
    case 0xA:
      result = 0x736165537478654ELL;
      break;
    case 0xB:
      result = 0x6573616863727550;
      break;
    case 0xC:
      result = 0x6C61746E6552;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26CC92E94()
{
  result = qword_2804BCEF8;
  if (!qword_2804BCEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCEF8);
  }

  return result;
}

unint64_t sub_26CC92EEC()
{
  result = qword_2804BCF00;
  if (!qword_2804BCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCF00);
  }

  return result;
}

unint64_t sub_26CC92F44()
{
  result = qword_2804BCF08;
  if (!qword_2804BCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCF08);
  }

  return result;
}

unint64_t sub_26CC92F9C()
{
  result = qword_2804BCF10;
  if (!qword_2804BCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCF10);
  }

  return result;
}

unint64_t sub_26CC92FF4()
{
  result = qword_2804BCF18;
  if (!qword_2804BCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCF18);
  }

  return result;
}

uint64_t sub_26CC93060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

unint64_t sub_26CC9310C()
{
  result = qword_2804BCF20;
  if (!qword_2804BCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCF20);
  }

  return result;
}

uint64_t sub_26CC93178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_26CD3B0FC();
  a3(v4);
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CC93200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CC93280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_26CD3B0FC();
  a4(v5);
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC932F8@<X0>(uint64_t *a1@<X8>)
{
  result = ItemContext.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26CC933F8(uint64_t a1)
{
  sub_26CC93680(319, &qword_280BBB690, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_26CC93A44(319, &qword_2804BCF38, &qword_2804BCD58, &qword_26CD42AD0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26CC934DC(uint64_t a1)
{
  sub_26CC939F8(319, &qword_280BB9BF8, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_26CC93680(319, &qword_2804BCF50, type metadata accessor for ContentMetadata);
    if (v2 <= 0x3F)
    {
      sub_26CC93680(319, &qword_280BBB1C8, MEMORY[0x277CC9260]);
      if (v3 <= 0x3F)
      {
        sub_26CC939F8(319, &qword_2804BCF58, &type metadata for ItemContext);
        if (v4 <= 0x3F)
        {
          sub_26CC939F8(319, &qword_2804BCF60, &type metadata for UpNextDelta.DeltaType);
          if (v5 <= 0x3F)
          {
            sub_26CC939F8(319, &qword_2804BCF68, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              sub_26CC93680(319, &qword_280BBB690, MEMORY[0x277CC9578]);
              if (v7 <= 0x3F)
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

void sub_26CC93680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26CD3AADC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26CC9370C(uint64_t a1)
{
  sub_26CC939F8(319, &qword_2804BCF80, &type metadata for Video);
  if (v1 <= 0x3F)
  {
    sub_26CC939F8(319, &qword_280BB9BF8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_26CC93A44(319, &qword_2804BCF88, &unk_2804BCA20, &unk_26CD3D4D0);
      if (v3 <= 0x3F)
      {
        sub_26CC939F8(319, &qword_2804BBB38, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          sub_26CC939F8(319, &qword_2804BCF90, &type metadata for ContentRating);
          if (v5 <= 0x3F)
          {
            sub_26CC939F8(319, &qword_2804BCF98, &type metadata for ContentType);
            if (v6 <= 0x3F)
            {
              sub_26CC939F8(319, &qword_2804BCFA0, MEMORY[0x277D839F8]);
              if (v7 <= 0x3F)
              {
                sub_26CC939F8(319, &qword_2804BCFA8, &type metadata for Genre);
                if (v8 <= 0x3F)
                {
                  sub_26CC939F8(319, &qword_2804BCF68, MEMORY[0x277D839B0]);
                  if (v9 <= 0x3F)
                  {
                    sub_26CC93A44(319, &qword_2804BCFB0, &qword_2804BCD98, &unk_26CD42AF8);
                    if (v10 <= 0x3F)
                    {
                      sub_26CC939F8(319, &qword_2804BCFB8, &type metadata for Playable);
                      if (v11 <= 0x3F)
                      {
                        sub_26CC93680(319, &qword_280BBB690, MEMORY[0x277CC9578]);
                        if (v12 <= 0x3F)
                        {
                          sub_26CC93A44(319, &qword_2804BCFC0, &qword_2804BC050, &qword_26CD3EC00);
                          if (v13 <= 0x3F)
                          {
                            sub_26CC93680(319, &qword_280BBB1C8, MEMORY[0x277CC9260]);
                            if (v14 <= 0x3F)
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
    }
  }
}

void sub_26CC939F8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26CD3AADC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26CC93A44(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26CD3AADC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26CC93AE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_26CC93B40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_26CC93BC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_26CC93C1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26CC93CB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_26CC93D0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26CC93DB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_26CC93E14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Playable.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Playable.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26CC94090(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26CC94120(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26CC94204()
{
  result = qword_2804BCFC8;
  if (!qword_2804BCFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCFC8);
  }

  return result;
}

unint64_t sub_26CC9425C()
{
  result = qword_2804BCFD0;
  if (!qword_2804BCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCFD0);
  }

  return result;
}

unint64_t sub_26CC942B4()
{
  result = qword_2804BCFD8;
  if (!qword_2804BCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCFD8);
  }

  return result;
}

unint64_t sub_26CC9430C()
{
  result = qword_2804BCFE0;
  if (!qword_2804BCFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCFE0);
  }

  return result;
}

unint64_t sub_26CC94364()
{
  result = qword_2804BCFE8;
  if (!qword_2804BCFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCFE8);
  }

  return result;
}

unint64_t sub_26CC943BC()
{
  result = qword_2804BCFF0;
  if (!qword_2804BCFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCFF0);
  }

  return result;
}

unint64_t sub_26CC94414()
{
  result = qword_2804BCFF8;
  if (!qword_2804BCFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCFF8);
  }

  return result;
}

unint64_t sub_26CC9446C()
{
  result = qword_2804BD000;
  if (!qword_2804BD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD000);
  }

  return result;
}

unint64_t sub_26CC944C4()
{
  result = qword_2804BD008;
  if (!qword_2804BD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD008);
  }

  return result;
}

unint64_t sub_26CC9451C()
{
  result = qword_2804BD010;
  if (!qword_2804BD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD010);
  }

  return result;
}

unint64_t sub_26CC94574()
{
  result = qword_2804BD018;
  if (!qword_2804BD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD018);
  }

  return result;
}

unint64_t sub_26CC945CC()
{
  result = qword_2804BD020;
  if (!qword_2804BD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD020);
  }

  return result;
}

unint64_t sub_26CC94624()
{
  result = qword_2804BD028;
  if (!qword_2804BD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD028);
  }

  return result;
}

unint64_t sub_26CC9467C()
{
  result = qword_2804BD030;
  if (!qword_2804BD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD030);
  }

  return result;
}

unint64_t sub_26CC946D4()
{
  result = qword_2804BD038;
  if (!qword_2804BD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD038);
  }

  return result;
}

unint64_t sub_26CC9472C()
{
  result = qword_2804BD040;
  if (!qword_2804BD040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD040);
  }

  return result;
}

unint64_t sub_26CC94784()
{
  result = qword_2804BD048;
  if (!qword_2804BD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD048);
  }

  return result;
}

unint64_t sub_26CC947DC()
{
  result = qword_2804BD050;
  if (!qword_2804BD050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD050);
  }

  return result;
}

unint64_t sub_26CC94834()
{
  result = qword_2804BD058;
  if (!qword_2804BD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD058);
  }

  return result;
}

unint64_t sub_26CC9488C()
{
  result = qword_2804BD060;
  if (!qword_2804BD060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD060);
  }

  return result;
}

unint64_t sub_26CC948E4()
{
  result = qword_2804BD068;
  if (!qword_2804BD068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD068);
  }

  return result;
}

unint64_t sub_26CC9493C()
{
  result = qword_2804BD070;
  if (!qword_2804BD070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD070);
  }

  return result;
}

unint64_t sub_26CC94994()
{
  result = qword_2804BD078;
  if (!qword_2804BD078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD078);
  }

  return result;
}

unint64_t sub_26CC949EC()
{
  result = qword_2804BD080;
  if (!qword_2804BD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD080);
  }

  return result;
}

unint64_t sub_26CC94A44()
{
  result = qword_2804BD088;
  if (!qword_2804BD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD088);
  }

  return result;
}

unint64_t sub_26CC94A9C()
{
  result = qword_2804BD090;
  if (!qword_2804BD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD090);
  }

  return result;
}

unint64_t sub_26CC94AF4()
{
  result = qword_2804BD098;
  if (!qword_2804BD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD098);
  }

  return result;
}

unint64_t sub_26CC94B4C()
{
  result = qword_2804BD0A0;
  if (!qword_2804BD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0A0);
  }

  return result;
}

unint64_t sub_26CC94BA4()
{
  result = qword_2804BD0A8;
  if (!qword_2804BD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0A8);
  }

  return result;
}

unint64_t sub_26CC94BFC()
{
  result = qword_2804BD0B0;
  if (!qword_2804BD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0B0);
  }

  return result;
}

unint64_t sub_26CC94C54()
{
  result = qword_2804BD0B8;
  if (!qword_2804BD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0B8);
  }

  return result;
}

unint64_t sub_26CC94CAC()
{
  result = qword_2804BD0C0;
  if (!qword_2804BD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0C0);
  }

  return result;
}

uint64_t sub_26CC94D00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEF61746164617465 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000026CD4FC50 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x70795461746C6564 && a2 == 0xE900000000000065 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C61746E65527369 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6168637275507369 && a2 == 0xEA00000000006573 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4DE70 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEB000000004C5255 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 9;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_26CC95050(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26CC95174(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEF6F65646956646ELL;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x800000026CD4DE50 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEF74786554657669 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x444F56457369 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4F656C7070417369 && a2 == 0xEF6C616E69676972 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x656C626179616C70 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x64496E6F73616573 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6D496E6F73616573 && a2 == 0xEC00000073656761 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x69546E6F73616573 && a2 == 0xEB00000000656C74 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x74695474726F6873 && a2 == 0xEA0000000000656CLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6449776F6873 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x67616D49776F6873 && a2 == 0xEA00000000007365 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6C746954776F6873 && a2 == 0xE900000000000065 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x7372656C69617274 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4FC70 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6E697274536C7275 && a2 == 0xE900000000000067)
  {

    return 26;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 26;
    }

    else
    {
      return 27;
    }
  }
}

uint64_t sub_26CC959F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7954676E69726961 && a2 == 0xEA00000000006570 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026CD4DE90 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000064 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000064 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4FC90 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xEA00000000006449 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026CD4DEB0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026CD4DEF0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x73656E755469 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C626179616C70 && a2 == 0xEA00000000006449 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE900000000000064 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6175516F65646976 && a2 == 0xEC0000007974696CLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6C6F436F65646976 && a2 == 0xEF65676E6152726FLL)
  {

    return 13;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    if (v5)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_26CC95E74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xEA00000000006449 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_26CC96064(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64497465737361 && a2 == 0xE700000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C7255736C68 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496D6172676F7270 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26CC96180(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79546D6574737973 && a2 == 0xEA00000000006570 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_26CC96334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6168706C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536B726F77747261 && a2 == 0xEB00000000657A69 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546B726F77747261 && a2 == 0xEB00000000657079 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4FCB0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026CD4FCD0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026CD4DE30 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_26CC96580()
{
  result = qword_2804BD0C8;
  if (!qword_2804BD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0C8);
  }

  return result;
}

unint64_t sub_26CC965D4()
{
  result = qword_2804BD0D0;
  if (!qword_2804BD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0D0);
  }

  return result;
}

unint64_t sub_26CC96628()
{
  result = qword_2804BD0D8;
  if (!qword_2804BD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0D8);
  }

  return result;
}

unint64_t sub_26CC9667C()
{
  result = qword_2804BD0E0;
  if (!qword_2804BD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0E0);
  }

  return result;
}

unint64_t sub_26CC966D0()
{
  result = qword_2804BD0E8;
  if (!qword_2804BD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0E8);
  }

  return result;
}

void sub_26CC96734(uint64_t a1, char a2)
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v3 = qword_280BBCBD0;
  sub_26CD3AC6C();

  if (a2)
  {
    if (a2 == 1)
    {
      if (qword_280BBA238 == -1)
      {
        goto LABEL_10;
      }
    }

    else if (qword_280BBA248 == -1)
    {
      goto LABEL_10;
    }

LABEL_24:
    swift_once();
    goto LABEL_10;
  }

  if (qword_280BBA228 != -1)
  {
    goto LABEL_24;
  }

LABEL_10:
  v4 = sub_26CD3A5CC();
  MEMORY[0x26D6AD060](v4);

  v5 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_26CC19E10();
  *(v6 + 32) = 0xD00000000000001BLL;
  *(v6 + 40) = 0x800000026CD4FDC0;
  sub_26CD3A3DC(v5, &dword_26CC14000, v3, "%@", 2, 2, v6);

  v7 = [objc_opt_self() defaultCenter];
  if (a2)
  {
    if (a2 == 1)
    {
      if (qword_280BBA238 != -1)
      {
        swift_once();
      }

      v8 = &qword_280BBA240;
    }

    else
    {
      if (qword_280BBA248 != -1)
      {
        swift_once();
      }

      v8 = &qword_280BBA250;
    }
  }

  else
  {
    if (qword_280BBA228 != -1)
    {
      swift_once();
    }

    v8 = &qword_280BBA230;
  }

  v9 = *v8;
  [v7 postNotificationName:v9 object:0];
}

uint64_t sub_26CC96A5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_26CC96AB0(char a1)
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v2 = qword_280BBCBD0;
  sub_26CD3AC6C();

  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD00000000000002ALL;
    }

    else
    {
      v3 = 0xD000000000000028;
    }

    if (a1 == 1)
    {
      v4 = "ervices.accountDidChange";
    }

    else
    {
      v4 = "ocess notification:";
    }
  }

  else
  {
    v3 = 0xD00000000000002CLL;
    v4 = "ervices.favoritesDidChange";
  }

  MEMORY[0x26D6AD060](v3, v4 | 0x8000000000000000);

  v5 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_26CC19E10();
  *(v6 + 32) = 0xD000000000000023;
  *(v6 + 40) = 0x800000026CD4FCF0;
  sub_26CD3A3DC(v5, &dword_26CC14000, v2, "%@", 2, 2, v6);

  v7 = sub_26CD3A61C();

  notify_post((v7 + 32));
}

uint64_t SportsFavoriteService.UserConsent.Status.rawValue.getter()
{
  v1 = 0x64656E696C636564;
  if (*v0 != 1)
  {
    v1 = 0x6465747065636361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_26CC96D08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x64656E696C636564;
  if (v2 != 1)
  {
    v3 = 0x6465747065636361;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x64656E696C636564;
  if (*a2 != 1)
  {
    v6 = 0x6465747065636361;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26CD3AFDC();
  }

  return v9 & 1;
}

uint64_t sub_26CC96E0C()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CC96EB0(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CC96F40(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CC96FE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64656E696C636564;
  if (v2 != 1)
  {
    v4 = 0x6465747065636361;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_26CC970E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC98834(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC9710C(uint64_t a1)
{
  v2 = sub_26CC17780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC97148(uint64_t a1)
{
  v2 = sub_26CC17780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsFavoriteService.UserConsent.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD0F0, &qword_26CD44408);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC17780();
  sub_26CD3B16C();
  v10[15] = *v3;
  v10[14] = 0;
  sub_26CC97370();
  sub_26CD3AF6C();
  if (!v2)
  {
    type metadata accessor for SportsFavoriteService.UserConsent.State(0);
    v10[13] = 1;
    sub_26CD3A1EC();
    sub_26CC169F4(&qword_2804BCD30, MEMORY[0x277CC9580]);
    sub_26CD3AF1C();
    v10[12] = 2;
    sub_26CD3AF3C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_26CC97370()
{
  result = qword_2804BD0F8;
  if (!qword_2804BD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0F8);
  }

  return result;
}

void SportsFavoriteService.UserConsent.Modification.init(status:)(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = sub_26CD3AFDC();

    if ((v4 & 1) == 0)
    {
      *a2 = v2;
      return;
    }
  }

  else
  {
  }

  sub_26CC974A4();
  swift_allocError();
  swift_willThrow();
}

unint64_t sub_26CC974A4()
{
  result = qword_2804BD108;
  if (!qword_2804BD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD108);
  }

  return result;
}

uint64_t SportsFavoriteService.UserConsent.State.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_26CD3A16C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_26CD3AC6C();

  v22 = 0x3A73757461747328;
  v23 = 0xE800000000000000;
  v9 = 0x64656E696C636564;
  if (*v0 != 1)
  {
    v9 = 0x6465747065636361;
  }

  if (*v0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v11 = 0xE800000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  MEMORY[0x26D6AD060](v10, v11);

  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD4FE70);
  v12 = type metadata accessor for SportsFavoriteService.UserConsent.State(0);
  sub_26CC1B4DC(&v0[*(v12 + 20)], v8, &qword_2804BCA90, &qword_26CD3C200);
  v13 = sub_26CD3A1EC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_26CC1B544(v8, &qword_2804BCA90, &qword_26CD3C200);
    v15 = 0xE300000000000000;
    v16 = 7104878;
  }

  else
  {
    sub_26CC9783C(v5);
    v17 = sub_26CD3A0FC();
    v15 = v18;
    (*(v3 + 8))(v5, v2);
    (*(v14 + 8))(v8, v13);
    v16 = v17;
  }

  MEMORY[0x26D6AD060](v16, v15);

  MEMORY[0x26D6AD060](0x747269447369202CLL, 0xEA00000000003A79);
  if (v1[*(v12 + 24)])
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v1[*(v12 + 24)])
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v19, v20);

  MEMORY[0x26D6AD060](41, 0xE100000000000000);
  return v22;
}

uint64_t sub_26CC9783C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD128, &qword_26CD447E0);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_26CD3A28C();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_26CD3A15C();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26CD3A13C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26CD3A11C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26CD3A12C();
  MEMORY[0x28223BE20](v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, *MEMORY[0x277CC9458], v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x277CC9468], v8);
  (*(v5 + 104))(v21, *MEMORY[0x277CC9480], v27);
  sub_26CD3A27C();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_26CD3A14C();
  }

  return result;
}

unint64_t sub_26CC97C44()
{
  result = qword_2804BD110;
  if (!qword_2804BD110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD110);
  }

  return result;
}

unint64_t sub_26CC97D04()
{
  result = qword_2804BD118;
  if (!qword_2804BD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD118);
  }

  return result;
}

unint64_t sub_26CC97D5C()
{
  result = qword_2804BD120;
  if (!qword_2804BD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD120);
  }

  return result;
}

uint64_t sub_26CC97DB0(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = sub_26CD3A1EC();
  v85 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v76 = &v74[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD130, &qword_26CD447E8);
  MEMORY[0x28223BE20](v78);
  v79 = &v74[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC8C0, &qword_26CD447F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v74[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v74[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v82 = &v74[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v83 = &v74[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v80 = &v74[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v81 = &v74[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v77 = &v74[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v74[-v27];
  v29 = MEMORY[0x28223BE20](v26);
  v84 = &v74[-v30];
  MEMORY[0x28223BE20](v29);
  v32 = &v74[-v31];
  v33 = *a2;
  sub_26CC1B4DC(a3, v11, &qword_2804BC8C0, &qword_26CD447F0);
  v34 = _s10NetworkingO12FetchedValueOMa(0);
  if ((*(*(v34 - 8) + 48))(v11, 1, v34) == 1)
  {
    sub_26CC1B544(v11, &qword_2804BC8C0, &qword_26CD447F0);
    if (v33 == 3)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    LODWORD(v40) = *v11;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD138, &unk_26CD45540);
    v42 = *(v41 + 64);
    sub_26CC98950(&v11[*(v41 + 48)], v32);
    sub_26CC98950(&v11[v42], v84);
    v43 = 0x64656E696C636564;
    if (*a1 != 1)
    {
      v43 = 0x6465747065636361;
    }

    if (*a1)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0x6E776F6E6B6E75;
    }

    if (*a1)
    {
      v45 = 0xE800000000000000;
    }

    else
    {
      v45 = 0xE700000000000000;
    }

    v46 = v6;
    v47 = v79;
    if (v40)
    {
      v48 = 0xE800000000000000;
      if (v40 == 1)
      {
        v49 = 0x6E696C636564;
      }

      else
      {
        v49 = 0x747065636361;
      }

      if (v44 != (v49 & 0xFFFFFFFFFFFFLL | 0x6465000000000000))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v48 = 0xE700000000000000;
      if (v44 != 0x6E776F6E6B6E75)
      {
        goto LABEL_40;
      }
    }

    if (v45 == v48)
    {

      v52 = v85;
LABEL_41:
      v54 = type metadata accessor for SportsFavoriteService.UserConsent.State(0);
      sub_26CC1B4DC(&a1[*(v54 + 20)], v28, &qword_2804BCA90, &qword_26CD3C200);
      v55 = *(v78 + 48);
      sub_26CC1B4DC(v28, v47, &qword_2804BCA90, &qword_26CD3C200);
      sub_26CC1B4DC(v32, v47 + v55, &qword_2804BCA90, &qword_26CD3C200);
      v56 = *(v52 + 48);
      if (v56(v47, 1, v46) == 1)
      {
        sub_26CC1B544(v28, &qword_2804BCA90, &qword_26CD3C200);
        if (v56(v47 + v55, 1, v46) == 1)
        {
          sub_26CC1B544(v47, &qword_2804BCA90, &qword_26CD3C200);
LABEL_49:
          v57 = 0;
          goto LABEL_50;
        }

        goto LABEL_46;
      }

      LODWORD(v78) = v40;
      v40 = v77;
      sub_26CC1B4DC(v47, v77, &qword_2804BCA90, &qword_26CD3C200);
      if (v56(v47 + v55, 1, v46) == 1)
      {
        sub_26CC1B544(v28, &qword_2804BCA90, &qword_26CD3C200);
        (*(v52 + 8))(v40, v46);
        LOBYTE(v40) = v78;
LABEL_46:
        sub_26CC1B544(v47, &qword_2804BD130, &qword_26CD447E8);
        goto LABEL_47;
      }

      v58 = v47 + v55;
      v59 = v76;
      (*(v52 + 32))(v76, v58, v46);
      sub_26CC169F4(&qword_2804BD140, MEMORY[0x277CC9598]);
      v75 = sub_26CD3A56C();
      v60 = v47;
      v61 = *(v85 + 8);
      v61(v59, v46);
      sub_26CC1B544(v28, &qword_2804BCA90, &qword_26CD3C200);
      v61(v40, v46);
      v52 = v85;
      sub_26CC1B544(v60, &qword_2804BCA90, &qword_26CD3C200);
      LOBYTE(v40) = v78;
      if (v75)
      {
        goto LABEL_49;
      }

LABEL_47:
      v57 = 1;
LABEL_50:
      *a1 = v40;
      v62 = v80;
      sub_26CC98950(v32, v80);
      v63 = *(v52 + 48);
      if (v63(v62, 1, v46) == 1)
      {
        v64 = type metadata accessor for SportsFavoriteService.UserConsent.State(0);
        v65 = v81;
        sub_26CC1B4DC(&a1[*(v64 + 20)], v81, &qword_2804BCA90, &qword_26CD3C200);
        v66 = v63(v62, 1, v46);
        v68 = v82;
        v67 = v83;
        if (v66 != 1)
        {
          sub_26CC1B544(v62, &qword_2804BCA90, &qword_26CD3C200);
        }
      }

      else
      {
        v65 = v81;
        (*(v52 + 32))(v81, v62, v46);
        (*(v52 + 56))(v65, 0, 1, v46);
        v68 = v82;
        v67 = v83;
      }

      v69 = type metadata accessor for SportsFavoriteService.UserConsent.State(0);
      sub_26CC17CCC(v65, &a1[*(v69 + 20)]);
      sub_26CC98950(v84, v68);
      if (v63(v68, 1, v46) == 1)
      {
        v70 = &a1[*(_s5CacheC5ModelVMa(0) + 20)];
        v71 = type metadata accessor for SportsFavoriteService.Favorites.State(0);
        sub_26CC1B4DC(&v70[*(v71 + 20)], v67, &qword_2804BCA90, &qword_26CD3C200);
        if (v63(v68, 1, v46) != 1)
        {
          sub_26CC1B544(v68, &qword_2804BCA90, &qword_26CD3C200);
        }
      }

      else
      {
        (*(v52 + 32))(v67, v68, v46);
        (*(v52 + 56))(v67, 0, 1, v46);
      }

      v72 = &a1[*(_s5CacheC5ModelVMa(0) + 20)];
      v73 = type metadata accessor for SportsFavoriteService.Favorites.State(0);
      sub_26CC17CCC(v67, &v72[*(v73 + 20)]);
      a1[*(v69 + 24)] = 0;
      return v57;
    }

LABEL_40:
    v53 = sub_26CD3AFDC();

    v52 = v85;
    if ((v53 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  sub_26CC182B8(v11, _s10NetworkingO12FetchedValueOMa);
  if (v33 == 3)
  {
    return 0;
  }

LABEL_6:
  sub_26CD3A1CC();
  (*(v85 + 56))(v15, 0, 1, v6);
  v35 = type metadata accessor for SportsFavoriteService.UserConsent.State(0);
  sub_26CC17CCC(v15, &a1[*(v35 + 20)]);
  if (*a1)
  {
    v36 = 0xE800000000000000;
    if (*a1 == 1)
    {
      v37 = 0x64656E696C636564;
      if (v33)
      {
        goto LABEL_9;
      }

LABEL_23:
      v38 = 0xE700000000000000;
      if (v37 == 0x6E776F6E6B6E75)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    v37 = 0x6465747065636361;
    if (!v33)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v36 = 0xE700000000000000;
    v37 = 0x6E776F6E6B6E75;
    if (!v33)
    {
      goto LABEL_23;
    }
  }

LABEL_9:
  v38 = 0xE800000000000000;
  if (v33 == 1)
  {
    v39 = 0x6E696C636564;
  }

  else
  {
    v39 = 0x747065636361;
  }

  if (v37 == (v39 & 0xFFFFFFFFFFFFLL | 0x6465000000000000))
  {
LABEL_29:
    if (v36 == v38)
    {

      return 0;
    }
  }

LABEL_31:
  v51 = sub_26CD3AFDC();

  if (v51)
  {
    return 0;
  }

  *a1 = v33;
  return 1;
}

uint64_t sub_26CC98834(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4FE90 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79747269447369 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26CC98950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26CC989C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_26CCEB1F8(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_26CD3AB6C();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 32 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_26CCEB1F8((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_26CC2FADC(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_26CC2FADC(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
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

void sub_26CC98BEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = MEMORY[0x277D84FA0];
    v23 = MEMORY[0x277D84FA0];
    v5 = MEMORY[0x277D84FA0];
    do
    {
      v6 = v2;
      while (1)
      {
        if (v6 >= v1)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }

        v7 = (v3 + 16 * v6);
        v8 = *v7;
        v9 = *(v7 + 8);
        if (v9 != 2)
        {
          break;
        }

        v25 = v4;
        v10 = *(v8 + 16);

        if (v10)
        {
          v11 = (v8 + 40);
          do
          {
            v13 = *(v11 - 1);
            v12 = *v11;

            sub_26CC197B4(&v24, v13, v12);

            v11 += 2;
            --v10;
          }

          while (v10);
          v4 = v25;
        }

        v6 = v2;
        if (v2 == v1)
        {
          return;
        }
      }

      if (v9)
      {
        v25 = v23;
        v18 = *(v8 + 16);

        if (v18)
        {
          v22 = v5;
          v19 = (v8 + 40);
          do
          {
            v21 = *(v19 - 1);
            v20 = *v19;

            sub_26CC197B4(&v24, v21, v20);

            v19 += 2;
            --v18;
          }

          while (v18);
          v23 = v25;
          v5 = v22;
        }
      }

      else
      {
        v25 = v5;
        v14 = *(v8 + 16);

        if (v14)
        {
          v15 = (v8 + 40);
          do
          {
            v17 = *(v15 - 1);
            v16 = *v15;

            sub_26CC197B4(&v24, v17, v16);

            v15 += 2;
            --v14;
          }

          while (v14);
          v5 = v25;
        }
      }
    }

    while (v2 != v1);
  }
}

void sub_26CC98DD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = 0;
  v29 = a1 + 40;
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
LABEL_6:
  v30 = v4;
  v6 = (v29 + 16 * v2);
  for (i = v2; i < v1; ++i)
  {
    v2 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_55;
    }

    v8 = *(v6 - 1);
    v9 = *(v8 + 16);
    if (*v6 != 2)
    {
      if (!*v6)
      {
        v17 = *(v5 + 2);
        v18 = v17 + v9;
        v4 = v30;
        if (__OFADD__(v17, v9))
        {
          goto LABEL_61;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v18 <= *(v5 + 3) >> 1)
        {
          if (!*(v8 + 16))
          {
LABEL_4:

            if (v9)
            {
              goto LABEL_62;
            }

            goto LABEL_5;
          }
        }

        else
        {
          if (v17 <= v18)
          {
            v25 = v17 + v9;
          }

          else
          {
            v25 = v17;
          }

          v5 = sub_26CCBE3BC(isUniquelyReferenced_nonNull_native, v25, 1, v5);
          if (!*(v8 + 16))
          {
            goto LABEL_4;
          }
        }

        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v9)
        {
          goto LABEL_63;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v26 = *(v5 + 2);
          v15 = __OFADD__(v26, v9);
          v27 = v26 + v9;
          if (v15)
          {
            goto LABEL_65;
          }

          *(v5 + 2) = v27;
        }

LABEL_5:
        if (v2 == v1)
        {
          return;
        }

        goto LABEL_6;
      }

      v4 = v30;
      v20 = *(v30 + 2);
      v21 = v20 + v9;
      if (__OFADD__(v20, v9))
      {
        goto LABEL_60;
      }

      v22 = swift_isUniquelyReferenced_nonNull_native();
      if (v22 && v21 <= *(v30 + 3) >> 1)
      {
        if (*(v8 + 16))
        {
LABEL_35:
          if ((*(v4 + 3) >> 1) - *(v4 + 2) < v9)
          {
            goto LABEL_64;
          }

          swift_arrayInitWithCopy();

          if (v9)
          {
            v23 = *(v4 + 2);
            v15 = __OFADD__(v23, v9);
            v24 = v23 + v9;
            if (v15)
            {
              goto LABEL_66;
            }

            *(v4 + 2) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        if (v20 <= v21)
        {
          v28 = v20 + v9;
        }

        else
        {
          v28 = v20;
        }

        v4 = sub_26CCBE3BC(v22, v28, 1, v30);
        if (*(v8 + 16))
        {
          goto LABEL_35;
        }
      }

      if (v9)
      {
        __break(1u);
        return;
      }

      goto LABEL_5;
    }

    v10 = *(v3 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      goto LABEL_56;
    }

    v12 = swift_isUniquelyReferenced_nonNull_native();
    if (v12 && v11 <= *(v3 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v13 = v10 + v9;
      }

      else
      {
        v13 = v10;
      }

      v3 = sub_26CCBE3BC(v12, v13, 1, v3);
      if (*(v8 + 16))
      {
LABEL_21:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v9)
        {
          goto LABEL_58;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v14 = *(v3 + 2);
          v15 = __OFADD__(v14, v9);
          v16 = v14 + v9;
          if (v15)
          {
            goto LABEL_59;
          }

          *(v3 + 2) = v16;
        }

        goto LABEL_8;
      }
    }

    if (v9)
    {
      goto LABEL_57;
    }

LABEL_8:
    v6 += 16;
    if (v2 == v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

void sub_26CC99114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v6 = a2 + 56;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(a2 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v9))));
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      LOBYTE(v13) = *(v13 + 25);
      v18[0] = v15;
      v18[1] = v14;
      v18[2] = v16;
      v19 = v17;
      v20 = v13;

      sub_26CC9B3CC(&v21, v18, a3);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void SportsFavoriteService.Favorites.Favorite.Type.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_26CD3AD9C();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t SportsFavoriteService.Favorites.Favorite.Type.rawValue.getter()
{
  v1 = 0x65756761656CLL;
  if (*v0 != 1)
  {
    v1 = 0x746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1835099508;
  }
}

uint64_t sub_26CC99310(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x65756761656CLL;
  if (v2 != 1)
  {
    v4 = 0x746E657665;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1835099508;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x65756761656CLL;
  if (*a2 != 1)
  {
    v8 = 0x746E657665;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1835099508;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CC993FC()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CC99490(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CC99510(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CC995AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x65756761656CLL;
  if (v2 != 1)
  {
    v5 = 0x746E657665;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1835099508;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t SportsFavoriteService.Favorites.Favorite.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_26CC99700()
{
  v1 = 0x726564726FLL;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_26CC99744@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC9C310(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC9976C(uint64_t a1)
{
  v2 = sub_26CC9BC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC997A8(uint64_t a1)
{
  v2 = sub_26CC9BC80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsFavoriteService.Favorites.Favorite.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD148, &qword_26CD447F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v12 = *(v1 + 16);
  v14 = *(v1 + 24);
  v11 = *(v1 + 25);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC9BC80();
  sub_26CD3B16C();
  v18 = 0;
  v7 = v13;
  sub_26CD3AF2C();
  if (!v7)
  {
    v9 = v11;
    v17 = 1;
    sub_26CD3AEFC();
    v16 = v9;
    v15 = 2;
    sub_26CC9BCD4();
    sub_26CD3AF6C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SportsFavoriteService.Favorites.Favorite.hashValue.getter()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

void SportsFavoriteService.Favorites.Favorite.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD160, &qword_26CD44800);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC9BC80();
  sub_26CD3B15C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v22 = 0;
    v9 = sub_26CD3AE3C();
    v11 = v10;
    v12 = v9;
    v21 = 1;
    v13 = sub_26CD3AE0C();
    v18 = v14;
    v17 = v13;
    v19 = 2;
    sub_26CC9BD28();
    sub_26CD3AE7C();
    (*(v6 + 8))(v8, v5);
    v15 = v20;
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18 & 1;
    *(a2 + 25) = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_26CC99CA0()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CC99CF4(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t SportsFavoriteService.Favorites.Modification.FailureReason.hashValue.getter()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t SportsFavoriteService.Favorites.State.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SportsFavoriteService.Favorites.State(0) + 20);

  return sub_26CC9BD7C(v3, a1);
}

uint64_t sub_26CC99E00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v5 - 8);
  v114 = &v111 - v6;
  v115 = v2;
  v113 = *v2;
  sub_26CC989C4(v113);
  v8 = sub_26CCF3078(v7);

  v123[10] = v8;
  v117 = *(a1 + 16);
  if (v117)
  {
    v111 = 0;
    v112 = a2;
    v9 = 0;
    v116 = a1 + 32;
    v10 = MEMORY[0x277D84FA0];
    while (1)
    {
      v11 = (v116 + 16 * v9);
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v12 + 16);
      v121 = v14;
      if (!v13)
      {
        break;
      }

      if (v13 == 1)
      {
        if (v14)
        {
          v118 = v12;
          v119 = v9;
          v15 = v12 + 32;

          v16 = 0;
          v120 = v15;
          while (1)
          {
            v17 = (v15 + 16 * v16);
            v19 = *v17;
            v18 = v17[1];
            swift_bridgeObjectRetain_n();
            v20 = sub_26CC197B4(v123, v19, v18);

            if ((v20 & 1) == 0)
            {

              goto LABEL_10;
            }

            sub_26CD3B0FC();
            sub_26CD3A54C();
            v21 = sub_26CD3B13C();
            v22 = -1 << *(v10 + 32);
            v23 = v21 & ~v22;
            if (((*(v10 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
LABEL_26:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v122 = v10;
              v31 = *(v10 + 16);
              if (*(v10 + 24) > v31)
              {
                v15 = v120;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_26CCE2C18();
                  v10 = v122;
                }

LABEL_47:
                *(v10 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v23;
                v40 = *(v10 + 48) + 32 * v23;
                *v40 = v19;
                *(v40 + 8) = v18;
                *(v40 + 16) = 0;
                *(v40 + 24) = 257;
                v41 = *(v10 + 16);
                v42 = __OFADD__(v41, 1);
                v43 = v41 + 1;
                if (!v42)
                {
                  *(v10 + 16) = v43;
                  v14 = v121;
                  goto LABEL_10;
                }

                __break(1u);
LABEL_147:
                __break(1u);
LABEL_148:
                __break(1u);
LABEL_149:
                swift_bridgeObjectRelease_n();
                goto LABEL_150;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
                sub_26CCE0C98(v31 + 1);
              }

              else
              {
                sub_26CCE3CA0(v31 + 1);
              }

              v10 = v122;
              sub_26CD3B0FC();
              sub_26CD3A54C();
              v32 = sub_26CD3B13C();
              v33 = -1 << *(v10 + 32);
              v23 = v32 & ~v33;
              if (((*(v10 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
              {
LABEL_46:
                v15 = v120;
                goto LABEL_47;
              }

              v34 = ~v33;
              while (2)
              {
                v36 = *(v10 + 48) + 32 * v23;
                v38 = *(v36 + 25);
                if (*v36 == v19 && *(v36 + 8) == v18)
                {
                  if (*(v36 + 24))
                  {
LABEL_43:
                    if (v38 && v38 != 2)
                    {
                      goto LABEL_149;
                    }

                    v35 = sub_26CD3AFDC();

                    if (v35)
                    {
                      goto LABEL_150;
                    }
                  }
                }

                else
                {
                  v37 = *(v36 + 24);
                  if (sub_26CD3AFDC() & v37)
                  {
                    goto LABEL_43;
                  }
                }

                v23 = (v23 + 1) & v34;
                if (((*(v10 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
                {
                  goto LABEL_46;
                }

                continue;
              }
            }

            v24 = ~v22;
            while (1)
            {
              v26 = *(v10 + 48) + 32 * v23;
              v28 = *(v26 + 25);
              if (*v26 == v19 && *(v26 + 8) == v18)
              {
                if (!*(v26 + 24))
                {
                  goto LABEL_15;
                }
              }

              else
              {
                v27 = *(v26 + 24);
                if ((sub_26CD3AFDC() & v27 & 1) == 0)
                {
                  goto LABEL_15;
                }
              }

              if (v28 && v28 != 2)
              {
                break;
              }

              v25 = sub_26CD3AFDC();

              if (v25)
              {

                goto LABEL_51;
              }

LABEL_15:
              v23 = (v23 + 1) & v24;
              if (((*(v10 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            swift_bridgeObjectRelease_n();
LABEL_51:
            v15 = v120;
            v14 = v121;
LABEL_10:
            if (++v16 == v14)
            {
              goto LABEL_3;
            }
          }
        }

        goto LABEL_4;
      }

      if (v14)
      {
        v118 = v12;
        v119 = v9;
        v72 = v12 + 32;

        v73 = 0;
        v120 = v72;
        while (1)
        {
          v74 = (v72 + 16 * v73);
          v76 = *v74;
          v75 = v74[1];
          swift_bridgeObjectRetain_n();
          v77 = sub_26CC197B4(v123, v76, v75);

          if ((v77 & 1) == 0)
          {

            goto LABEL_99;
          }

          sub_26CD3B0FC();
          sub_26CD3A54C();
          v78 = sub_26CD3B13C();
          v79 = -1 << *(v10 + 32);
          v80 = v78 & ~v79;
          if (((*(v10 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
          {
LABEL_114:
            v87 = swift_isUniquelyReferenced_nonNull_native();
            v122 = v10;
            v88 = *(v10 + 16);
            if (*(v10 + 24) > v88)
            {
              v72 = v120;
              if ((v87 & 1) == 0)
              {
                sub_26CCE2C18();
                v10 = v122;
              }

              goto LABEL_134;
            }

            if (v87)
            {
              sub_26CCE0C98(v88 + 1);
            }

            else
            {
              sub_26CCE3CA0(v88 + 1);
            }

            v10 = v122;
            sub_26CD3B0FC();
            sub_26CD3A54C();
            v89 = sub_26CD3B13C();
            v90 = -1 << *(v10 + 32);
            v80 = v89 & ~v90;
            if (((*(v10 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
            {
LABEL_133:
              v72 = v120;
LABEL_134:
              *(v10 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v80;
              v97 = *(v10 + 48) + 32 * v80;
              *v97 = v76;
              *(v97 + 8) = v75;
              *(v97 + 16) = 0;
              *(v97 + 24) = 513;
              v98 = *(v10 + 16);
              v42 = __OFADD__(v98, 1);
              v99 = v98 + 1;
              if (v42)
              {
                goto LABEL_147;
              }

              *(v10 + 16) = v99;
              v14 = v121;
              goto LABEL_99;
            }

            v91 = ~v90;
            while (2)
            {
              v93 = *(v10 + 48) + 32 * v80;
              v95 = *(v93 + 25);
              if (*v93 == v76 && *(v93 + 8) == v75)
              {
                if (*(v93 + 24))
                {
LABEL_131:
                  if (v95 > 1)
                  {
                    goto LABEL_149;
                  }

                  v92 = sub_26CD3AFDC();

                  if (v92)
                  {
                    goto LABEL_150;
                  }
                }
              }

              else
              {
                v94 = *(v93 + 24);
                if (sub_26CD3AFDC() & v94)
                {
                  goto LABEL_131;
                }
              }

              v80 = (v80 + 1) & v91;
              if (((*(v10 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
              {
                goto LABEL_133;
              }

              continue;
            }
          }

          v81 = ~v79;
          while (1)
          {
            v83 = *(v10 + 48) + 32 * v80;
            v85 = *(v83 + 25);
            if (*v83 == v76 && *(v83 + 8) == v75)
            {
              if (!*(v83 + 24))
              {
                goto LABEL_104;
              }
            }

            else
            {
              v84 = *(v83 + 24);
              if ((sub_26CD3AFDC() & v84 & 1) == 0)
              {
                goto LABEL_104;
              }
            }

            if (v85 > 1)
            {
              break;
            }

            v82 = sub_26CD3AFDC();

            if (v82)
            {

              goto LABEL_138;
            }

LABEL_104:
            v80 = (v80 + 1) & v81;
            if (((*(v10 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
            {
              goto LABEL_114;
            }
          }

          swift_bridgeObjectRelease_n();
LABEL_138:
          v72 = v120;
          v14 = v121;
LABEL_99:
          if (++v73 == v14)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_4:
      if (++v9 == v117)
      {
        a2 = v112;
        goto LABEL_141;
      }
    }

    if (!v14)
    {
      goto LABEL_4;
    }

    v118 = v12;
    v119 = v9;
    v44 = v12 + 32;

    v45 = 0;
    v120 = v44;
LABEL_56:
    v46 = (v44 + 16 * v45);
    v48 = *v46;
    v47 = v46[1];
    swift_bridgeObjectRetain_n();
    v49 = sub_26CC197B4(v123, v48, v47);

    if ((v49 & 1) == 0)
    {

      goto LABEL_55;
    }

    sub_26CD3B0FC();
    sub_26CD3A54C();
    v50 = sub_26CD3B13C();
    v51 = -1 << *(v10 + 32);
    v52 = v50 & ~v51;
    if (((*(v10 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
    {
LABEL_71:
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v122 = v10;
      v60 = *(v10 + 16);
      if (*(v10 + 24) > v60)
      {
        if ((v59 & 1) == 0)
        {
          sub_26CCE2C18();
          v10 = v122;
        }

        goto LABEL_91;
      }

      if (v59)
      {
        sub_26CCE0C98(v60 + 1);
      }

      else
      {
        sub_26CCE3CA0(v60 + 1);
      }

      v10 = v122;
      sub_26CD3B0FC();
      sub_26CD3A54C();
      v61 = sub_26CD3B13C();
      v62 = -1 << *(v10 + 32);
      v52 = v61 & ~v62;
      if (((*(v10 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
      {
LABEL_91:
        v44 = v120;
        *(v10 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v52;
        v69 = *(v10 + 48) + 32 * v52;
        *v69 = v48;
        *(v69 + 8) = v47;
        *(v69 + 16) = 0;
        *(v69 + 24) = 1;
        v70 = *(v10 + 16);
        v42 = __OFADD__(v70, 1);
        v71 = v70 + 1;
        if (v42)
        {
          goto LABEL_148;
        }

        *(v10 + 16) = v71;
        v14 = v121;
        goto LABEL_55;
      }

      v63 = ~v62;
      while (2)
      {
        v65 = *(v10 + 48) + 32 * v52;
        v67 = *(v65 + 25);
        if (*v65 == v48 && *(v65 + 8) == v47)
        {
          if (*(v65 + 24))
          {
            goto LABEL_88;
          }
        }

        else
        {
          v66 = *(v65 + 24);
          if (sub_26CD3AFDC() & v66)
          {
LABEL_88:
            if (v67 != 1 && v67 != 2)
            {
              goto LABEL_149;
            }

            v64 = sub_26CD3AFDC();

            if (v64)
            {
LABEL_150:
              result = sub_26CD3B01C();
              __break(1u);
              return result;
            }
          }
        }

        v52 = (v52 + 1) & v63;
        if (((*(v10 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
        {
          goto LABEL_91;
        }

        continue;
      }
    }

    v53 = ~v51;
    while (1)
    {
      v55 = *(v10 + 48) + 32 * v52;
      v57 = *(v55 + 25);
      if (*v55 == v48 && *(v55 + 8) == v47)
      {
        if (!*(v55 + 24))
        {
          goto LABEL_60;
        }
      }

      else
      {
        v56 = *(v55 + 24);
        if ((sub_26CD3AFDC() & v56 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      if (v57 != 1 && v57 != 2)
      {

        swift_bridgeObjectRelease_n();
LABEL_95:
        v44 = v120;
        v14 = v121;
LABEL_55:
        if (++v45 == v14)
        {
LABEL_3:

          v9 = v119;
          goto LABEL_4;
        }

        goto LABEL_56;
      }

      v54 = sub_26CD3AFDC();

      if (v54)
      {

        goto LABEL_95;
      }

LABEL_60:
      v52 = (v52 + 1) & v53;
      if (((*(v10 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
      {
        goto LABEL_71;
      }
    }
  }

  v10 = MEMORY[0x277D84FA0];
LABEL_141:

  if (*(v10 + 16))
  {
    v100 = v113;

    sub_26CC9AA74(v10, v100);
    v102 = v101;
    v103 = v114;
    sub_26CD3A1CC();
    v104 = sub_26CD3A1EC();
    v105 = *(*(v104 - 8) + 56);
    v105(v103, 0, 1, v104);
    v106 = type metadata accessor for SportsFavoriteService.Favorites.State(0);
    v107 = *(v106 + 20);
    v108 = *(v115 + *(v106 + 24));
    v105(a2 + v107, 1, 1, v104);
    *a2 = v102;
    result = sub_26CC17CCC(v103, a2 + v107);
    *(a2 + *(v106 + 24)) = v108;
  }

  else
  {

    v110 = v115;

    return sub_26CC18B28(v110, a2);
  }

  return result;
}

void sub_26CC9AA74(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v18 = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(a1 + 48) + ((v9 << 11) | (32 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 25);

    sub_26CCDF54C(v17, v12, v13, v14, v15 | (v16 << 8));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_26CC9AB94(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - v7;
  v9 = MEMORY[0x277D84FA0];
  v52 = MEMORY[0x277D84FA0];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + 32;
    do
    {
      v11 += 16;

      v13 = sub_26CCF3078(v12);
      sub_26CC9AF2C(v13);

      --v10;
    }

    while (v10);
    v14 = v52;
    if (*(v52 + 16))
    {
      goto LABEL_5;
    }

LABEL_30:

    sub_26CC18B28(v3, a2);
    return;
  }

  v14 = MEMORY[0x277D84FA0];
  if (!*(MEMORY[0x277D84FA0] + 16))
  {
    goto LABEL_30;
  }

LABEL_5:
  v45 = v8;
  v46 = v3;
  v15 = *v3;
  v17 = (*v3 + 56);
  v16 = *v17;
  v53 = v9;
  v18 = 1 << *(v15 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v22 = v14 + 56;
  v47 = a2;
  v48 = v15;

  v23 = 0;
  if (!v20)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_16:
    while (1)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = *(v48 + 48) + ((v23 << 11) | (32 * v25));
      v28 = *v26;
      v27 = *(v26 + 8);
      v51 = *(v26 + 16);
      v29 = *(v26 + 24);
      v49 = *(v26 + 25);
      v50 = v29;
      if (*(v14 + 16))
      {
        break;
      }

LABEL_11:

      sub_26CCDF54C(&v52, v28, v27, v51, v50 | (v49 << 8));

      if (!v20)
      {
        goto LABEL_12;
      }
    }

    sub_26CD3B0FC();

    sub_26CD3A54C();
    v30 = sub_26CD3B13C();
    v31 = -1 << *(v14 + 32);
    v32 = v30 & ~v31;
    if (((*(v22 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
    {
      goto LABEL_11;
    }

    v33 = ~v31;
    while (1)
    {
      v34 = (*(v14 + 48) + 16 * v32);
      v35 = *v34 == v28 && v34[1] == v27;
      if (v35 || (sub_26CD3AFDC() & 1) != 0)
      {
        break;
      }

      v32 = (v32 + 1) & v33;
      if (((*(v22 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  while (v20);
LABEL_12:
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      v36 = v53;
      v37 = v45;
      sub_26CD3A1CC();
      v38 = sub_26CD3A1EC();
      v39 = *(*(v38 - 8) + 56);
      v39(v37, 0, 1, v38);
      v40 = type metadata accessor for SportsFavoriteService.Favorites.State(0);
      v41 = *(v40 + 20);
      v42 = v47;
      v43 = *(v46 + *(v40 + 24));
      v39(v47 + v41, 1, 1, v38);
      *v42 = v36;
      sub_26CC17CCC(v37, v42 + v41);
      *(v42 + *(v40 + 24)) = v43;
      return;
    }

    v20 = v17[v24];
    ++v23;
    if (v20)
    {
      v23 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_26CC9AF2C(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_26CC197B4(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_26CC9B030(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  if (v5)
  {
    while (1)
    {
      v7 = v1;
LABEL_9:
      v8 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v9 = *(a1 + 48) + ((v7 << 11) | (32 * v8));
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 25);

      sub_26CCDF54C(v16, v10, v11, v12, v13 | (v14 << 8));

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }
}

void sub_26CC9B154(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v34[1] = MEMORY[0x277D84FA0];
  v8 = MEMORY[0x277D84F90];
  v34[0] = MEMORY[0x277D84F90];
  v9 = *(a1 + 16);
  if (v9)
  {
    v29 = v2;
    v30 = &v28 - v6;
    v10 = 0;
    v11 = a1 + 32;
    v31 = a2;
    v32 = a1 + 32;
    do
    {
      v12 = (v11 + 16 * v10);
      if (v12[8] == 1)
      {
        v13 = *v12;
        v14 = *(*v12 + 16);
        if (v14)
        {

          v15 = (v13 + 40);
          do
          {
            v17 = *(v15 - 1);
            v16 = *v15;
            swift_bridgeObjectRetain_n();
            v18 = sub_26CC197B4(&v33, v17, v16);

            if (v18)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_26CCBE3BC(0, *(v8 + 2) + 1, 1, v8);
              }

              v20 = *(v8 + 2);
              v19 = *(v8 + 3);
              if (v20 >= v19 >> 1)
              {
                v8 = sub_26CCBE3BC((v19 > 1), v20 + 1, 1, v8);
              }

              *(v8 + 2) = v20 + 1;
              v21 = &v8[16 * v20];
              *(v21 + 4) = v17;
              *(v21 + 5) = v16;
              v34[0] = v8;
            }

            else
            {
            }

            v15 += 2;
            --v14;
          }

          while (v14);

          v11 = v32;
        }
      }

      ++v10;
    }

    while (v10 != v9);
    v7 = v30;
    a2 = v31;
    v2 = v29;
  }

  sub_26CC99114(MEMORY[0x277D84FA0], *v2, v34);
  v23 = v22;
  v24 = type metadata accessor for SportsFavoriteService.Favorites.State(0);
  sub_26CC9BD7C(v2 + *(v24 + 20), v7);
  v25 = *(v24 + 20);
  v26 = *(v2 + *(v24 + 24));
  v27 = sub_26CD3A1EC();
  (*(*(v27 - 8) + 56))(a2 + v25, 1, 1, v27);
  *a2 = v23;
  sub_26CC17CCC(v7, a2 + v25);

  *(a2 + *(v24 + 24)) = v26;
}

uint64_t sub_26CC9B3CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *(a2 + 25);
  v6 = *(*a3 + 16);
  if (!v6)
  {
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD1D0, &unk_26CD44E50);
    inited = swift_initStackObject();
    *(inited + 32) = v4;
    *(inited + 16) = xmmword_26CD3C1E0;
    *(inited + 57) = v5;
    *(inited + 40) = v3;
    *(inited + 48) = 0;
    *(inited + 56) = 1;

    sub_26CC9C284(inited);
    swift_setDeallocating();
    v11 = inited + 32;
    return sub_26CC9C598(v11);
  }

  v7 = 0;
  v8 = (*a3 + 40);
  while (1)
  {
    v9 = *(v8 - 1) == v4 && *v8 == v3;
    if (v9 || (sub_26CD3AFDC() & 1) != 0)
    {
      break;
    }

    ++v7;
    v8 += 2;
    if (v6 == v7)
    {
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD1D0, &unk_26CD44E50);
  result = swift_initStackObject();
  *(result + 16) = xmmword_26CD3C1E0;
  v13 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    *(result + 32) = v4;
    v14 = result + 32;
    *(result + 57) = v5;
    *(result + 40) = v3;
    *(result + 48) = v13;
    *(result + 56) = 0;
    v15 = result;

    sub_26CC9C284(v15);
    swift_setDeallocating();
    v11 = v14;
    return sub_26CC9C598(v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_26CC9B534@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC9C41C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC9B55C(uint64_t a1)
{
  v2 = sub_26CC18994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC9B598(uint64_t a1)
{
  v2 = sub_26CC18994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsFavoriteService.Favorites.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD170, &qword_26CD44808);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC18994();
  sub_26CD3B16C();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD178, &qword_26CD44810);
  sub_26CC189F8(&qword_2804BD180, sub_26CC9BDEC, MEMORY[0x277D83B50]);
  sub_26CD3AF6C();
  if (!v2)
  {
    type metadata accessor for SportsFavoriteService.Favorites.State(0);
    v10[6] = 1;
    sub_26CD3A1EC();
    sub_26CC169F4(&qword_2804BCD30, MEMORY[0x277CC9580]);
    sub_26CD3AF1C();
    v10[5] = 2;
    sub_26CD3AF3C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SportsFavoriteService.Favorites.State.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_26CD3A16C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24[-1] - v7;
  sub_26CC989C4(*v0);
  v24[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  sub_26CC58138();
  v10 = sub_26CD3A55C();
  v12 = v11;

  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_26CD3AC6C();

  strcpy(v24, "(favorites:[");
  BYTE5(v24[1]) = 0;
  HIWORD(v24[1]) = -5120;
  MEMORY[0x26D6AD060](v10, v12);

  MEMORY[0x26D6AD060](0xD000000000000014, 0x800000026CD4FEB0);
  v13 = type metadata accessor for SportsFavoriteService.Favorites.State(0);
  sub_26CC9BD7C(v0 + *(v13 + 20), v8);
  v14 = sub_26CD3A1EC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_26CC9BE40(v8);
    v16 = 0xE300000000000000;
    v17 = 7104878;
  }

  else
  {
    sub_26CC9783C(v5);
    v18 = sub_26CD3A0FC();
    v16 = v19;
    (*(v3 + 8))(v5, v2);
    (*(v15 + 8))(v8, v14);
    v17 = v18;
  }

  MEMORY[0x26D6AD060](v17, v16);

  MEMORY[0x26D6AD060](0x747269447369202CLL, 0xEA00000000003A79);
  if (*(v1 + *(v13 + 24)))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v1 + *(v13 + 24)))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v20, v21);

  MEMORY[0x26D6AD060](41, 0xE100000000000000);
  return v24[0];
}

uint64_t _s13TVAppServices21SportsFavoriteServiceV9FavoritesO0D0V2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v8 && (sub_26CD3AFDC() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    if (!v6)
    {
LABEL_8:
      v9 = 0;
      return v9 & 1;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_8;
    }
  }

  v11 = 0xE600000000000000;
  v12 = 0x65756761656CLL;
  if (v4 != 1)
  {
    v12 = 0x746E657665;
    v11 = 0xE500000000000000;
  }

  if (v4)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1835099508;
  }

  if (v4)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = 0xE600000000000000;
  v16 = 0x65756761656CLL;
  if (v7 != 1)
  {
    v16 = 0x746E657665;
    v15 = 0xE500000000000000;
  }

  if (v7)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1835099508;
  }

  if (v7)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  if (v13 == v17 && v14 == v18)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26CD3AFDC();
  }

  return v9 & 1;
}

unint64_t sub_26CC9BC80()
{
  result = qword_2804BD150;
  if (!qword_2804BD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD150);
  }

  return result;
}

unint64_t sub_26CC9BCD4()
{
  result = qword_2804BD158;
  if (!qword_2804BD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD158);
  }

  return result;
}

unint64_t sub_26CC9BD28()
{
  result = qword_2804BD168;
  if (!qword_2804BD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD168);
  }

  return result;
}

uint64_t sub_26CC9BD7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CC9BDEC()
{
  result = qword_2804BD188;
  if (!qword_2804BD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD188);
  }

  return result;
}

uint64_t sub_26CC9BE40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CC9BEAC()
{
  result = qword_2804BD198;
  if (!qword_2804BD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD198);
  }

  return result;
}

unint64_t sub_26CC9BF04()
{
  result = qword_2804BD1A0;
  if (!qword_2804BD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1A0);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_26CC9BF7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_26CC9BFC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26CC9C038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26CC9C080(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_26CC9C128()
{
  result = qword_2804BD1A8;
  if (!qword_2804BD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1A8);
  }

  return result;
}

unint64_t sub_26CC9C180()
{
  result = qword_2804BD1B0;
  if (!qword_2804BD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1B0);
  }

  return result;
}

unint64_t sub_26CC9C1D8()
{
  result = qword_2804BD1B8;
  if (!qword_2804BD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1B8);
  }

  return result;
}

unint64_t sub_26CC9C230()
{
  result = qword_2804BD1C0;
  if (!qword_2804BD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1C0);
  }

  return result;
}

void sub_26CC9C284(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 57);
    do
    {
      v3 = *(v2 - 1);
      v4 = *(v2 - 9);
      v5 = *(v2 - 17);
      v6 = *(v2 - 25);
      v7 = *v2;
      v2 += 32;

      sub_26CCDF54C(v8, v6, v5, v4, v3 | (v7 << 8));

      --v1;
    }

    while (v1);
  }
}

uint64_t sub_26CC9C310(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26CC9C41C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657469726F766166 && a2 == 0xE900000000000073;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4FE90 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79747269447369 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_26CC9C544()
{
  result = qword_2804BD1C8;
  if (!qword_2804BD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1C8);
  }

  return result;
}

void sub_26CC9C5CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t sub_26CC9C624(uint64_t a1)
{
  v2 = v1;
  v85 = *v2;
  v4 = _s5CacheC5ModelVMa(0);
  v83 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v87 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v86 = &v71 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v88 = &v71 - v10;
  v84 = v11;
  MEMORY[0x28223BE20](v9);
  v13 = &v71 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v71 - v18;
  v20 = sub_26CD3A07C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v92 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v71 - v24;
  sub_26CC9EF14(0, v19);
  v26 = *(v21 + 48);
  if (v26(v19, 1, v20) == 1)
  {
    v17 = v19;
LABEL_5:
    sub_26CC3C0E0(v17);
    sub_26CC3BD30();
    swift_allocError();
    *v30 = 0;
    return swift_willThrow();
  }

  v82 = v13;
  v27 = v19;
  v28 = *(v21 + 32);
  v28(v25, v27, v20);
  sub_26CC9EF14(*(a1 + 48), v17);
  v29 = v20;
  if (v26(v17, 1, v20) == 1)
  {
    (*(v21 + 8))(v25, v20);
    goto LABEL_5;
  }

  v80 = v25;
  v81 = v21;
  v32 = v92;
  v28(v92, v17, v20);
  v33 = v82;
  v35 = v89;
  v34 = v90;
  sub_26CCA2DC4(0, v82);
  if (v35)
  {
    v36 = *(v81 + 8);
    v36(v32, v20);
    return (v36)(v80, v20);
  }

  v37 = v88;
  sub_26CCA2DC4(v34[6], v88);
  v79 = v29;
  v38 = swift_allocObject();
  v76 = v38;
  *(v38 + 16) = 0;
  v78 = (v38 + 16);
  v39 = swift_allocObject();
  v77 = v39;
  *(v39 + 16) = 0;
  v72 = (v39 + 16);
  v40 = objc_opt_self();
  v41 = sub_26CD39FCC();
  v42 = [v40 writingIntentWithURL:v41 options:0];

  v43 = sub_26CD39FCC();
  v44 = [v40 writingIntentWithURL:v43 options:0];

  v75 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA68, &qword_26CD42850);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_26CD44E60;
  *(v45 + 32) = v42;
  *(v45 + 40) = v44;
  sub_26CCA4F50();
  v89 = v42;
  v73 = v44;
  v74 = sub_26CD3A79C();

  v90 = v90[2];
  sub_26CC18BE8(v33, v86, _s5CacheC5ModelVMa);
  sub_26CC18BE8(v37, v87, _s5CacheC5ModelVMa);
  v46 = *(v83 + 80);
  v47 = (v46 + 24) & ~v46;
  v48 = (v84 + 7 + v47) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v46 + v48 + 8) & ~v46;
  v84 = (v84 + 7 + v49) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v76;
  sub_26CC183E0(v86, v51 + v47, _s5CacheC5ModelVMa);
  *(v51 + v48) = v89;
  sub_26CC183E0(v87, v51 + v49, _s5CacheC5ModelVMa);
  v52 = v73;
  *(v51 + v84) = v73;
  *(v51 + v50) = v77;
  *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v85;
  aBlock[4] = sub_26CCA4FE8;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCA0A1C;
  aBlock[3] = &block_descriptor_40;
  v53 = _Block_copy(aBlock);
  v54 = v89;
  v55 = v52;
  v56 = v90;

  v57 = v75;
  v58 = v74;
  [v75 coordinateAccessWithIntents:v74 queue:v56 byAccessor:v53];
  _Block_release(v53);

  v59 = v78;
  swift_beginAccess();
  v60 = *v59;
  if (*v59)
  {
    swift_willThrow();
    v61 = v60;

    sub_26CC18318(v88, _s5CacheC5ModelVMa);
    sub_26CC18318(v82, _s5CacheC5ModelVMa);
    v62 = *(v81 + 8);
    v63 = v79;
    v62(v92, v79);
    v62(v80, v63);
LABEL_12:
  }

  v64 = v72;
  swift_beginAccess();
  v65 = *v64;
  v66 = v79;
  v67 = v81;
  if (*v64)
  {
    swift_willThrow();
    v68 = v65;

    sub_26CC18318(v88, _s5CacheC5ModelVMa);
    sub_26CC18318(v82, _s5CacheC5ModelVMa);
    v69 = *(v67 + 8);
    v69(v92, v66);
    v69(v80, v66);
    goto LABEL_12;
  }

  sub_26CC18318(v88, _s5CacheC5ModelVMa);
  sub_26CC18318(v82, _s5CacheC5ModelVMa);
  v70 = *(v67 + 8);
  v70(v92, v66);
  v70(v80, v66);
}

uint64_t sub_26CC9CF58(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  *(v2 + 24) = _s5CacheC5ModelVMa(0);
  *(v2 + 32) = swift_task_alloc();
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = sub_26CC9D038;

  return sub_26CC9F2CC(v3, 0);
}

uint64_t sub_26CC9D038()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_26CC9D834;
  }

  else
  {
    v2 = sub_26CC9D14C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC9D14C()
{
  v1 = *(v0[2] + 48);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_26CC9D1F0;
  v3 = v0[4];

  return sub_26CC9F2CC(v3, v1);
}

uint64_t sub_26CC9D1F0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_26CC9D8A4;
  }

  else
  {
    v2 = sub_26CC9D304;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC9D304()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (v1)
  {
    v4 = *(*(v0 + 24) + 20);
    v5 = *(type metadata accessor for SportsFavoriteService.Favorites.State(0) + 24);
    v6 = (v3 + v5 + v4);
    v7 = (v2 + v5 + v4);
  }

  else
  {
    v8 = *(type metadata accessor for SportsFavoriteService.UserConsent.State(0) + 24);
    v6 = (v3 + v8);
    v7 = (v2 + v8);
  }

  v9 = *v6;
  v10 = *v7;
  if (qword_280BB9C18 != -1)
  {
    swift_once();
    v1 = *(v0 + 80);
  }

  v11 = 0x65736C6166;
  v12 = qword_280BBCBD0;
  sub_26CD3AC6C();

  v13 = v1 & 1;
  if (v13)
  {
    v14 = 0x657469726F766166;
  }

  else
  {
    v14 = 0x736E6F4372657375;
  }

  if (v13)
  {
    v15 = 0xE900000000000073;
  }

  else
  {
    v15 = 0xEB00000000746E65;
  }

  MEMORY[0x26D6AD060](v14, v15);

  MEMORY[0x26D6AD060](0x7974726944736920, 0xE90000000000003ALL);
  v38 = v9;
  v16 = v9 | v10;
  if ((v9 | v10))
  {
    v11 = 1702195828;
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v11, v17);

  v18 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26CD3C1E0;
  *(v19 + 56) = MEMORY[0x277D837D0];
  v39 = sub_26CC19E10();
  *(v19 + 64) = v39;
  *(v19 + 32) = 0x656B206568636163;
  *(v19 + 40) = 0xEA00000000003A79;
  v20 = v12;
  sub_26CD3A3DC(v18, &dword_26CC14000, v12, "%@", 2, 2, v19);

  if (v13)
  {
    if (v16)
    {
LABEL_17:
      v21 = 1;
LABEL_35:
      sub_26CD3AC6C();

      if (v21)
      {
        v30 = 1702195828;
      }

      else
      {
        v30 = 0x65736C6166;
      }

      if (v21)
      {
        v31 = 0xE400000000000000;
      }

      else
      {
        v31 = 0xE500000000000000;
      }

      MEMORY[0x26D6AD060](v30, v31);

      v22 = 0xD00000000000001CLL;
      v23 = 0x800000026CD500C0;
      goto LABEL_42;
    }

    if (**(v0 + 40))
    {
      v24 = 0xE800000000000000;
      if (**(v0 + 40) == 1)
      {
        v25 = 0x64656E696C636564;
        if (**(v0 + 32))
        {
          goto LABEL_22;
        }

LABEL_25:
        v26 = 0xE700000000000000;
        if (v25 != 0x6E776F6E6B6E75)
        {
          goto LABEL_33;
        }

LABEL_31:
        if (v24 == v26)
        {

          goto LABEL_34;
        }

LABEL_33:
        v28 = sub_26CD3AFDC();

        if ((v28 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_34:
        v29 = *(*(v0 + 24) + 20);
        v21 = sub_26CCDE714(*(*(v0 + 40) + v29), *(*(v0 + 32) + v29)) ^ 1;
        goto LABEL_35;
      }

      v25 = 0x6465747065636361;
      if (!**(v0 + 32))
      {
        goto LABEL_25;
      }
    }

    else
    {
      v24 = 0xE700000000000000;
      v25 = 0x6E776F6E6B6E75;
      if (!**(v0 + 32))
      {
        goto LABEL_25;
      }
    }

LABEL_22:
    v26 = 0xE800000000000000;
    if (**(v0 + 32) == 1)
    {
      v27 = 0x6E696C636564;
    }

    else
    {
      v27 = 0x747065636361;
    }

    if (v25 != (v27 & 0xFFFFFFFFFFFFLL | 0x6465000000000000))
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  sub_26CD3AC6C();

  MEMORY[0x26D6AD060](v11, v17);

  v22 = 0xD00000000000001ELL;
  v23 = 0x800000026CD500E0;
  v21 = v38;
LABEL_42:
  v33 = *(v0 + 32);
  v32 = *(v0 + 40);
  v34 = sub_26CD3A99C();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_26CD3C1E0;
  *(v35 + 56) = MEMORY[0x277D837D0];
  *(v35 + 64) = v39;
  *(v35 + 32) = v22;
  *(v35 + 40) = v23;
  sub_26CD3A3DC(v34, &dword_26CC14000, v20, "%@", 2, 2, v35);

  sub_26CC18318(v33, _s5CacheC5ModelVMa);
  sub_26CC18318(v32, _s5CacheC5ModelVMa);

  v36 = *(v0 + 8);

  return v36(v21 & 1);
}

uint64_t sub_26CC9D834()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_26CC9D8A4()
{
  sub_26CC18318(*(v0 + 40), _s5CacheC5ModelVMa);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_26CC9D930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v5 = sub_26CD3A07C();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC9DA6C, 0, 0);
}

uint64_t sub_26CC9DA6C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_26CC9EF14(0, v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_26CC3C0E0(*(v0 + 64));
LABEL_5:
    sub_26CC3BD30();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }

  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = *(*(v0 + 80) + 32);
  v8(*(v0 + 96), *(v0 + 64), v5);
  sub_26CC9EF14(*(v7 + 48), v6);
  v9 = v4(v6, 1, v5);
  v10 = *(v0 + 72);
  if (v9 == 1)
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 80);
    sub_26CC3C0E0(*(v0 + 56));
    (*(v12 + 8))(v11, v10);
    goto LABEL_5;
  }

  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v22 = *(v0 + 24);
  v23 = vextq_s8(*(v0 + 88), *(v0 + 88), 8uLL);
  v8(*(v0 + 88), *(v0 + 56), v10);
  v18 = swift_task_alloc();
  *(v0 + 104) = v18;
  *(v18 + 16) = v23;
  *(v18 + 32) = v17;
  *(v18 + 40) = v22;
  *(v18 + 56) = v16;
  v19 = swift_task_alloc();
  *(v0 + 112) = v19;
  v20 = _s5CacheC5ValueOMa(0);
  *v19 = v0;
  v19[1] = sub_26CC9DD00;
  v21 = *(v0 + 16);

  return MEMORY[0x2822008A0](v21, 0, 0, 0xD00000000000001BLL, 0x800000026CD50000, sub_26CCA5150, v18, v20);
}

uint64_t sub_26CC9DD00()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_26CC9DEE8;
  }

  else
  {

    v2 = sub_26CC9DE1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC9DE1C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v0[10] + 8);
  v3(v0[11], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CC9DEE8()
{
  v1 = v0[12];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_26CC9DFB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD210, &qword_26CD451F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC17304();
  sub_26CD3B16C();
  v8[15] = 0;
  type metadata accessor for SportsFavoriteService.UserConsent.State(0);
  sub_26CC16E20(&qword_2804BD218, type metadata accessor for SportsFavoriteService.UserConsent.State, &protocol conformance descriptor for SportsFavoriteService.UserConsent.State);
  sub_26CD3AF6C();
  if (!v1)
  {
    _s5CacheC5ModelVMa(0);
    v8[14] = 1;
    type metadata accessor for SportsFavoriteService.Favorites.State(0);
    sub_26CC16E20(&qword_2804BD220, type metadata accessor for SportsFavoriteService.Favorites.State, &protocol conformance descriptor for SportsFavoriteService.Favorites.State);
    sub_26CD3AF6C();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_26CC9E1B4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F4372657375 && a2 == 0xEB00000000746E65;
  if (v6 || (sub_26CD3AFDC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE900000000000073)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26CD3AFDC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_26CC9E29C(uint64_t a1)
{
  v2 = sub_26CC17304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC9E2D8(uint64_t a1)
{
  v2 = sub_26CC17304();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26CC9E32C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_26CCA53E0(a1);

  *a2 = v3;
}

uint64_t sub_26CC9E36C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v8 setMaxConcurrentOperationCount_];
  *(v4 + 16) = v8;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3 & 1;
  *(v4 + 48) = 2;
  sub_26CC9E590(0, 0);
  sub_26CC9E590(0, *(v4 + 48));
  return v4;
}

void sub_26CC9E590(int a1, uint64_t a2)
{
  LODWORD(v49) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v48 = _s5CacheC5ModelVMa(0);
  v7 = MEMORY[0x28223BE20](v48);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - v13;
  v15 = sub_26CD3A07C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  v47 = v2;
  sub_26CC9EF14(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_26CC3C0E0(v14);
    sub_26CC3BD30();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    return;
  }

  (*(v16 + 32))(v18, v14, v15);
  v20 = [objc_opt_self() defaultManager];
  v46 = v18;
  sub_26CD39FFC();
  v21 = sub_26CD3A59C();

  v22 = [v20 fileExistsAtPath_];

  if (!v22 || (v49 & 1) != 0)
  {
    v49 = v15;
    v47 = v16;
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v27 = qword_280BBCBD0;
    v28 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_26CD3C1E0;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_26CC19E10();
    *(v29 + 32) = 0xD000000000000013;
    *(v29 + 40) = 0x800000026CD50120;
    sub_26CD3A3DC(v28, &dword_26CC14000, v27, "%@", 2, 2, v29);

    sub_26CD39D8C();
    swift_allocObject();
    v45 = sub_26CD39D7C();
    v30 = sub_26CD3A1EC();
    v31 = *(*(v30 - 8) + 56);
    v31(v6, 1, 1, v30);
    v32 = type metadata accessor for SportsFavoriteService.UserConsent.State(0);
    v33 = *(v32 + 20);
    v31(&v11[v33], 1, 1, v30);
    *v11 = 0;
    sub_26CC17CCC(v6, &v11[v33]);
    v11[*(v32 + 24)] = 1;
    v31(v6, 1, 1, v30);
    v34 = &v11[*(v48 + 20)];
    v35 = type metadata accessor for SportsFavoriteService.Favorites.State(0);
    v36 = *(v35 + 20);
    v31(&v34[v36], 1, 1, v30);
    *v34 = MEMORY[0x277D84FA0];
    sub_26CC17CCC(v6, &v34[v36]);
    v34[*(v35 + 24)] = 1;
    sub_26CC16E20(&qword_2804BD228, _s5CacheC5ModelVMa, &unk_26CD44F60);
    v37 = v50;
    v38 = sub_26CD39D6C();
    if (v37)
    {

      sub_26CC18318(v11, _s5CacheC5ModelVMa);
      (*(v47 + 8))(v46, v49);
      return;
    }

    v40 = v38;
    v41 = v39;
    sub_26CC18318(v11, _s5CacheC5ModelVMa);

    v42 = v46;
    sub_26CD3A0CC();
    (*(v47 + 8))(v42, v49);
  }

  else
  {
    v23 = v46;
    v24 = v50;
    v25 = sub_26CD3A08C();
    if (v24)
    {
      (*(v16 + 8))(v23, v15);
      return;
    }

    v40 = v25;
    v41 = v26;
    v49 = v15;
    sub_26CD39D5C();
    swift_allocObject();
    sub_26CD39D4C();
    sub_26CC16E20(&qword_280BBB440, _s5CacheC5ModelVMa, &unk_26CD45180);
    sub_26CD39D3C();
    sub_26CC18318(v9, _s5CacheC5ModelVMa);

    if (*(v47 + 40) == 1)
    {
      v43 = *(v47 + 48);
      if ((v43 & 1) == 0)
      {
        *(v47 + 48) = v43 | 1;
      }
    }

    sub_26CC9F7E4();
    (*(v16 + 8))(v23, v49);
  }

  sub_26CC18C50(v40, v41);
}

uint64_t sub_26CC9EF14@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_26CD39F9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_26CD3A59C();
  v16 = [v14 containerURLForSecurityApplicationGroupIdentifier_];

  if (v16)
  {
    sub_26CD39FEC();

    v17 = sub_26CD3A07C();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  }

  else
  {
    v17 = sub_26CD3A07C();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  }

  sub_26CC16D64(v11, v13, &qword_2804BCA30, &qword_26CD3DA70);
  sub_26CD3A07C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v13, 1, v17) == 1)
  {
    sub_26CC3C0E0(v13);
    v19 = 1;
    v20 = v27;
  }

  else
  {
    v21 = "sportsfavorites.data";
    if ((a1 & 2) != 0)
    {
      v22 = "readonly-sportsfavorites.data";
    }

    else
    {
      v21 = "readonly-sportsfavoritesV2.data";
      v22 = "er";
    }

    if (*(v2 + 40))
    {
      v23 = 0xD00000000000001DLL;
    }

    else
    {
      v23 = 0xD000000000000014;
    }

    v24 = a1 & 2 | v23;
    if (*(v2 + 40))
    {
      v21 = v22;
    }

    v28 = v24;
    v29 = v21 | 0x8000000000000000;
    (*(v5 + 104))(v7, *MEMORY[0x277CC91D8], v4);
    sub_26CC16DCC();
    v20 = v27;
    sub_26CD3A06C();
    (*(v5 + 8))(v7, v4);

    (*(v18 + 8))(v13, v17);
    v19 = 0;
  }

  return (*(v18 + 56))(v20, v19, 1, v17);
}

uint64_t sub_26CC9F2CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v3[5] = swift_task_alloc();
  v4 = sub_26CD3A07C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC9F3C8, 0, 0);
}

uint64_t sub_26CC9F3C8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_26CC9EF14(v0[3], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC3C0E0(v0[5]);
    sub_26CC3BD30();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[8];
    v8 = v0[4];
    (*(v0[7] + 32))(v7, v0[5], v0[6]);
    v9 = swift_task_alloc();
    v0[9] = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = swift_task_alloc();
    v0[10] = v10;
    v11 = _s5CacheC5ModelVMa(0);
    *v10 = v0;
    v10[1] = sub_26CC9F5A4;
    v12 = v0[2];

    return MEMORY[0x2822008A0](v12, 0, 0, 0x7469772864616572, 0xEB00000000293A68, sub_26CCA52C0, v9, v11);
  }
}

uint64_t sub_26CC9F5A4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_26CC9F748;
  }

  else
  {

    v2 = sub_26CC9F6C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC9F6C0()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26CC9F748()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CC9F7E4()
{
  v68 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v60 - v6;
  v8 = sub_26CD3A07C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v70 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - v12;
  v72 = v0;
  sub_26CC9EF14(0, v7);
  v14 = *(v9 + 48);
  if (v14(v7, 1, v8) == 1)
  {
    v5 = v7;
LABEL_5:
    sub_26CC3C0E0(v5);
    sub_26CC3BD30();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  v67 = v1;
  v15 = *(v9 + 32);
  v69 = v13;
  v15();
  sub_26CC9EF14(*(v72 + 48), v5);
  if (v14(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v69, v8);
    goto LABEL_5;
  }

  v66 = v9;
  (v15)(v70, v5, v8);
  v18 = objc_opt_self();
  v65 = v8;
  v19 = v18;
  v20 = sub_26CD39FCC();
  v21 = [v19 readingIntentWithURL:v20 options:0];

  v22 = sub_26CD39FCC();
  v62 = [v19 readingIntentWithURL:v22 options:0];

  v23 = sub_26CD39FCC();
  v24 = [v19 writingIntentWithURL:v23 options:0];

  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v64 = (v25 + 16);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v61 = (v26 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v60 = (v27 + 16);
  v63 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA68, &qword_26CD42850);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_26CD44E70;
  v29 = v62;
  *(v28 + 32) = v21;
  *(v28 + 40) = v29;
  *(v28 + 48) = v24;
  sub_26CCA4F50();
  v30 = v21;
  v31 = v29;
  v32 = v24;
  v62 = sub_26CD3A79C();

  v33 = *(v72 + 16);
  v34 = swift_allocObject();
  v34[2] = v25;
  v34[3] = v30;
  v34[4] = v31;
  v34[5] = v32;
  v34[6] = v27;
  v34[7] = v26;
  v34[8] = v68;
  aBlock[4] = sub_26CCA5370;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCA0A1C;
  aBlock[3] = &block_descriptor_79_0;
  v35 = _Block_copy(aBlock);
  v68 = v30;
  v36 = v31;
  v37 = v32;
  v38 = v33;

  v72 = v26;

  v40 = v62;
  v39 = v63;
  [v63 coordinateAccessWithIntents:v62 queue:v38 byAccessor:v35];
  _Block_release(v35);

  v41 = v64;
  swift_beginAccess();
  v42 = *v41;
  if (*v41)
  {
    swift_willThrow();
    v43 = v42;

    v44 = v65;
    v45 = *(v66 + 8);
    v45(v70, v65);
    v45(v69, v44);
LABEL_13:
  }

  v47 = v68;
  v46 = v69;
  v48 = v60;
  v64 = v25;
  v49 = v65;
  v50 = v61;
  swift_beginAccess();
  v51 = *v50;
  v52 = v66;
  if (v51)
  {
    swift_willThrow();
    v53 = v51;

    v54 = *(v52 + 8);
    v54(v70, v49);
LABEL_12:
    v54(v46, v49);
    goto LABEL_13;
  }

  swift_beginAccess();
  v55 = *v48;
  v56 = v70;
  if (v55)
  {
    swift_willThrow();
    v57 = v55;

    v58 = v56;
    v54 = *(v52 + 8);
    v54(v58, v49);
    goto LABEL_12;
  }

  v59 = *(v52 + 8);
  v59(v56, v49);
  v59(v46, v49);
}

uint64_t sub_26CC9FEE8(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = _s5CacheC5ModelVMa(0);
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  *v6 = v3;
  v6[1] = sub_26CC9FFC8;

  return sub_26CC9F2CC(v5, a3);
}

uint64_t sub_26CC9FFC8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_26CCA0414;
  }

  else
  {
    v2 = sub_26CCA00DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CCA00DC()
{
  if (*(v0 + 56))
  {
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
    v3 = *(v0 + 16);
    v4 = qword_280BBCBD0;
    sub_26CD3AC6C();

    v5 = *(v1 + 20);
    v6 = SportsFavoriteService.Favorites.State.debugDescription.getter();
    MEMORY[0x26D6AD060](v6);

    v7 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26CD3C1E0;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_26CC19E10();
    *(v8 + 32) = 0xD000000000000027;
    *(v8 + 40) = 0x800000026CD50060;
    sub_26CD3A3DC(v7, &dword_26CC14000, v4, "%@", 2, 2, v8);

    sub_26CC18BE8(v2 + v5, v3, type metadata accessor for SportsFavoriteService.Favorites.State);
  }

  else
  {
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 32);
    v10 = *(v0 + 16);
    v11 = qword_280BBCBD0;
    sub_26CD3AC6C();

    v12 = SportsFavoriteService.UserConsent.State.debugDescription.getter();
    MEMORY[0x26D6AD060](v12);

    v13 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26CD3C1E0;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_26CC19E10();
    *(v14 + 32) = 0xD000000000000029;
    *(v14 + 40) = 0x800000026CD50090;
    sub_26CD3A3DC(v13, &dword_26CC14000, v11, "%@", 2, 2, v14);

    sub_26CC18BE8(v9, v10, type metadata accessor for SportsFavoriteService.UserConsent.State);
  }

  sub_26CC18318(*(v0 + 32), _s5CacheC5ModelVMa);
  _s5CacheC5ValueOMa(0);
  swift_storeEnumTagMultiPayload();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_26CCA0414()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26CCA0478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD238, &qword_26CD45218);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = objc_opt_self();
  v10 = sub_26CD39FCC();
  v11 = [v9 readingIntentWithURL:v10 options:0];

  v12 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA68, &qword_26CD42850);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26CD42700;
  *(v13 + 32) = v11;
  sub_26CCA4F50();
  v14 = v11;
  v15 = sub_26CD3A79C();

  v16 = *(a3 + 16);
  (*(v5 + 16))(v8, v23, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, v8, v4);
  *(v18 + ((v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = sub_26CCA52C8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCA0A1C;
  aBlock[3] = &block_descriptor_67;
  v19 = _Block_copy(aBlock);
  v20 = v14;
  v21 = v16;

  [v12 coordinateAccessWithIntents:v15 queue:v21 byAccessor:v19];
  _Block_release(v19);
}

uint64_t sub_26CCA0734(void *a1, uint64_t a2, void *a3)
{
  v5 = _s5CacheC5ModelVMa(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v11 = sub_26CD3A07C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21[0] = a1;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD238, &qword_26CD45218);
    return sub_26CD3A81C();
  }

  else
  {
    v16 = [a3 URL];
    sub_26CD39FEC();

    v17 = sub_26CD3A08C();
    v19 = v18;
    (*(v12 + 8))(v14, v11);
    sub_26CD39D5C();
    swift_allocObject();
    sub_26CD39D4C();
    sub_26CC16E20(&qword_280BBB440, _s5CacheC5ModelVMa, &unk_26CD45180);
    sub_26CD39D3C();

    sub_26CC18BE8(v10, v8, _s5CacheC5ModelVMa);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD238, &qword_26CD45218);
    sub_26CD3A82C();
    sub_26CC18C50(v17, v19);
    return sub_26CC18318(v10, _s5CacheC5ModelVMa);
  }
}

void sub_26CCA0A1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_26CCA0A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v75 = a6;
  v76 = a7;
  v70 = a4;
  v71 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC8C0, &qword_26CD447F0);
  v74 = *(v8 - 8);
  v73 = *(v74 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD230, &qword_26CD45200);
  v77 = *(v10 - 8);
  v78 = v10;
  v69 = *(v77 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  v53 = &v53 - v11;
  v13 = objc_opt_self();
  v14 = sub_26CD39FCC();
  v15 = [v13 readingIntentWithURL:v14 options:0];

  v16 = sub_26CD39FCC();
  v17 = [v13 writingIntentWithURL:v16 options:8];

  v18 = sub_26CD39FCC();
  v19 = [v13 readingIntentWithURL:v18 options:0];

  v20 = sub_26CD39FCC();
  v21 = [v13 writingIntentWithURL:v20 options:8];

  v72 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA68, &qword_26CD42850);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26CD44E80;
  *(v22 + 32) = v15;
  *(v22 + 40) = v17;
  *(v22 + 48) = v19;
  *(v22 + 56) = v21;
  sub_26CCA4F50();
  v55 = v15;
  v57 = v17;
  v54 = v19;
  v56 = v21;
  v68 = sub_26CD3A79C();

  v61 = *(v70 + 16);
  v23 = v77;
  (*(v77 + 16))(v12, v71, v78);
  v24 = *(a5 + 16);
  v58 = *(a5 + 8);
  v60 = v24;
  v25 = *(a5 + 32);
  v59 = *(a5 + 24);
  v63 = v25;
  v26 = *(a5 + 48);
  v62 = *(a5 + 40);
  v65 = v26;
  v27 = *(a5 + 64);
  v64 = *(a5 + 56);
  v28 = *(a5 + 80);
  v66 = *(a5 + 72);
  v67 = v27;
  v70 = *(a5 + 88);
  v71 = v28;
  sub_26CC1B4DC(v75, v79, &qword_2804BC8C0, &qword_26CD447F0);
  v29 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v30 = (v69 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v74 + 80) + v32 + 96) & ~*(v74 + 80);
  v34 = (v73 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v77 + 32))(v36 + v29, v53, v78);
  v37 = v55;
  *(v36 + v30) = v55;
  v38 = v54;
  *(v36 + v31) = v54;
  v39 = (v36 + v32);
  v40 = *(a5 + 48);
  v39[2] = *(a5 + 32);
  v39[3] = v40;
  v41 = *(a5 + 80);
  v39[4] = *(a5 + 64);
  v39[5] = v41;
  v42 = *(a5 + 16);
  *v39 = *a5;
  v39[1] = v42;
  sub_26CC16D64(v79, v36 + v33, &qword_2804BC8C0, &qword_26CD447F0);
  v43 = v57;
  *(v36 + v34) = v57;
  v44 = v56;
  *(v36 + v35) = v56;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  aBlock[4] = sub_26CCA5160;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCA0A1C;
  aBlock[3] = &block_descriptor_57;
  v45 = _Block_copy(aBlock);
  v46 = v37;
  v47 = v43;
  v48 = v38;
  v49 = v44;
  v50 = v61;

  sub_26CC27044(v60, v59);
  sub_26CC27044(v63, v62);
  sub_26CC27044(v65, v64);
  sub_26CC27044(v67, v66);
  sub_26CC27044(v71, v70);

  v51 = v72;
  v52 = v68;
  [v72 coordinateAccessWithIntents:v68 queue:v50 byAccessor:v45];
  _Block_release(v45);
}

uint64_t sub_26CCA104C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), void **a4, void (**a5)(void **__return_ptr, uint64_t), uint64_t a6, void *a7, void *a8)
{
  v99 = a8;
  v100 = a6;
  v101 = a7;
  v102 = a4;
  v103 = a5;
  v104 = a3;
  v106 = a2;
  v9 = _s5CacheC5ValueOMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26CD3A07C();
  v105 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v89 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v89 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v89 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v89 - v25;
  _s5CacheC5ModelVMa(0);
  v27 = MEMORY[0x28223BE20](a1);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v89 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v35 = (&v89 - v34);
  if (v31)
  {
    v109 = v31;
    v36 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD230, &qword_26CD45200);
    return sub_26CD3A81C();
  }

  else
  {
    v94 = v33;
    v95 = v21;
    v96 = v18;
    v97 = v12;
    v92 = v9;
    v93 = v15;
    v91 = v11;
    v37 = v32;
    v38 = sub_26CD3A1EC();
    v39 = *(*(v38 - 8) + 56);
    v39(v26, 1, 1, v38);
    v40 = type metadata accessor for SportsFavoriteService.UserConsent.State(0);
    v41 = *(v40 + 20);
    v39(v35 + v41, 1, 1, v38);
    *v35 = 0;
    sub_26CC17CCC(v26, v35 + v41);
    *(v35 + *(v40 + 24)) = 1;
    v39(v26, 1, 1, v38);
    v98 = v37;
    v42 = (v35 + *(v37 + 20));
    v43 = type metadata accessor for SportsFavoriteService.Favorites.State(0);
    v44 = *(v43 + 20);
    v39(v42 + v44, 1, 1, v38);
    *v42 = MEMORY[0x277D84FA0];
    sub_26CC17CCC(v26, v42 + v44);
    v45 = *(v43 + 24);
    v90 = v42;
    *(v42 + v45) = 1;
    v46 = [v104 URL];
    sub_26CD39FEC();

    v55 = sub_26CD3A08C();
    v57 = v56;
    v58 = *(v105 + 8);
    v59 = v23;
    v60 = v97;
    v58(v59, v97);
    sub_26CD39D5C();
    swift_allocObject();
    sub_26CD39D4C();
    sub_26CC16E20(&qword_280BBB440, _s5CacheC5ModelVMa, &unk_26CD45180);
    sub_26CD39D3C();
    sub_26CC18318(v35, _s5CacheC5ModelVMa);

    sub_26CC18C50(v55, v57);
    v104 = v58;
    sub_26CC183E0(v30, v35, _s5CacheC5ModelVMa);
    v47 = [v102 URL];
    v48 = v95;
    sub_26CD39FEC();

    v49 = sub_26CD3A08C();
    v50 = v103;
    v51 = v96;
    v61 = v49;
    v63 = v62;
    (v104)(v48, v60);
    sub_26CD39D5C();
    swift_allocObject();
    sub_26CD39D4C();
    sub_26CC16E20(&qword_280BBB440, _s5CacheC5ModelVMa, &unk_26CD45180);
    v64 = v94;
    sub_26CD39D3C();
    sub_26CC18318(v35, _s5CacheC5ModelVMa);

    sub_26CC18C50(v61, v63);
    sub_26CC183E0(v64, v35, _s5CacheC5ModelVMa);
    v52 = v50[4];
    v53 = v101;
    if (v52)
    {
      v52(v35, v100);
    }

    v54 = [v53 URL];
    sub_26CD39FEC();

    sub_26CD39D8C();
    swift_allocObject();
    sub_26CD39D7C();
    sub_26CC16E20(&qword_2804BD228, _s5CacheC5ModelVMa, &unk_26CD44F60);
    v102 = v35;
    v65 = sub_26CD39D6C();
    v67 = v66;

    sub_26CD3A0CC();
    (v104)(v51, v60);
    sub_26CC18C50(v65, v67);
    v69 = [v99 URL];
    v70 = v93;
    sub_26CD39FEC();

    swift_allocObject();
    sub_26CD39D7C();
    v71 = sub_26CD39D6C();
    v73 = v72;

    sub_26CD3A0CC();
    (v104)(v70, v60);
    v74 = sub_26CC18C50(v71, v73);
    (*v103)(&v109, v74);
    v75 = v102;
    if (v109)
    {
      if (qword_280BB9C18 != -1)
      {
        swift_once();
      }

      v76 = qword_280BBCBD0;
      v107 = 0;
      v108 = 0xE000000000000000;
      sub_26CD3AC6C();

      v107 = 0xD000000000000017;
      v108 = 0x800000026CD50020;
      v77 = v90;
      v78 = SportsFavoriteService.Favorites.State.debugDescription.getter();
      MEMORY[0x26D6AD060](v78);

      v79 = v107;
      v80 = v108;
      v81 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_26CD3C1E0;
      *(v82 + 56) = MEMORY[0x277D837D0];
      *(v82 + 64) = sub_26CC19E10();
      *(v82 + 32) = v79;
      *(v82 + 40) = v80;
      sub_26CD3A3DC(v81, &dword_26CC14000, v76, "%@", 2, 2, v82);

      sub_26CC18BE8(v77, v91, type metadata accessor for SportsFavoriteService.Favorites.State);
      v75 = v102;
    }

    else
    {
      if (qword_280BB9C18 != -1)
      {
        swift_once();
      }

      v83 = qword_280BBCBD0;
      v107 = 0;
      v108 = 0xE000000000000000;
      sub_26CD3AC6C();

      v107 = 0xD000000000000019;
      v108 = 0x800000026CD50040;
      v84 = SportsFavoriteService.UserConsent.State.debugDescription.getter();
      MEMORY[0x26D6AD060](v84);

      v85 = v107;
      v86 = v108;
      v87 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_26CD3C1E0;
      *(v88 + 56) = MEMORY[0x277D837D0];
      *(v88 + 64) = sub_26CC19E10();
      *(v88 + 32) = v85;
      *(v88 + 40) = v86;
      sub_26CD3A3DC(v87, &dword_26CC14000, v83, "%@", 2, 2, v88);

      sub_26CC18BE8(v75, v91, type metadata accessor for SportsFavoriteService.UserConsent.State);
    }

    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD230, &qword_26CD45200);
    sub_26CD3A82C();
    return sub_26CC18318(v75, _s5CacheC5ModelVMa);
  }
}

uint64_t sub_26CCA1C1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26CCA1D24(uint64_t a1)
{
  result = type metadata accessor for SportsFavoriteService.UserConsent.State(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SportsFavoriteService.Favorites.State(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26CCA1D9C()
{
  result = qword_2804BD1D8;
  if (!qword_2804BD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1D8);
  }

  return result;
}

unint64_t sub_26CCA1DF4()
{
  result = qword_2804BD1E0;
  if (!qword_2804BD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1E0);
  }

  return result;
}

unint64_t sub_26CCA1E4C()
{
  result = qword_2804BD1E8;
  if (!qword_2804BD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1E8);
  }

  return result;
}

unint64_t sub_26CCA1EA4()
{
  result = qword_2804BD1F0;
  if (!qword_2804BD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1F0);
  }

  return result;
}

unint64_t sub_26CCA1EFC()
{
  result = qword_2804BD1F8;
  if (!qword_2804BD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1F8);
  }

  return result;
}

unint64_t sub_26CCA1F54()
{
  result = qword_2804BD200;
  if (!qword_2804BD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD200);
  }

  return result;
}

uint64_t sub_26CCA1FA8(int a1)
{
  v77 = a1;
  v78 = *v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v66 - v6;
  v8 = sub_26CD3A07C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v66 - v13;
  v81 = v1;
  sub_26CC9EF14(0, v7);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    v5 = v7;
LABEL_5:
    sub_26CC3C0E0(v5);
    sub_26CC3BD30();
    swift_allocError();
    *v17 = 0;
    return swift_willThrow();
  }

  v76 = v12;
  v16 = *(v9 + 32);
  v79 = v14;
  v16();
  sub_26CC9EF14(v81[6], v5);
  if (v15(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v79, v8);
    goto LABEL_5;
  }

  v72 = v9;
  (v16)(v76, v5, v8);
  v19 = swift_allocObject();
  v73 = v19;
  *(v19 + 16) = 0;
  v67 = (v19 + 16);
  v20 = swift_allocObject();
  v75 = v20;
  *(v20 + 16) = 0;
  v70 = (v20 + 16);
  v21 = swift_allocObject();
  v74 = v21;
  *(v21 + 16) = 0;
  v66 = (v21 + 16);
  v22 = objc_opt_self();
  v23 = sub_26CD39FCC();
  v24 = [v22 readingIntentWithURL:v23 options:0];

  v25 = sub_26CD39FCC();
  v71 = v8;
  v26 = [v22 writingIntentWithURL:v25 options:0];

  v27 = sub_26CD39FCC();
  v28 = [v22 readingIntentWithURL:v27 options:0];

  v29 = sub_26CD39FCC();
  v30 = [v22 writingIntentWithURL:v29 options:0];

  v69 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA68, &qword_26CD42850);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26CD44E80;
  *(v31 + 32) = v24;
  *(v31 + 40) = v26;
  *(v31 + 48) = v28;
  *(v31 + 56) = v30;
  sub_26CCA4F50();
  v32 = v24;
  v33 = v26;
  v34 = v28;
  v35 = v30;
  v68 = sub_26CD3A79C();

  v36 = v81[2];
  v37 = swift_allocObject();
  v38 = v74;
  *(v37 + 16) = v75;
  *(v37 + 24) = v32;
  *(v37 + 32) = v34;
  *(v37 + 40) = v77 & 1;
  *(v37 + 48) = v33;
  *(v37 + 56) = v35;
  v39 = v73;
  *(v37 + 64) = v38;
  *(v37 + 72) = v39;
  *(v37 + 80) = v78;
  aBlock[4] = sub_26CCA4F9C;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCA0A1C;
  aBlock[3] = &block_descriptor_6;
  v40 = _Block_copy(aBlock);
  v81 = v32;
  v41 = v33;
  v42 = v34;
  v43 = v35;
  v44 = v36;

  v45 = v69;

  v46 = v68;
  [v45 coordinateAccessWithIntents:v68 queue:v44 byAccessor:v40];
  _Block_release(v40);

  v47 = v70;
  swift_beginAccess();
  v48 = *v47;
  if (*v47)
  {
    swift_willThrow();
    v49 = v48;

    v50 = *(v72 + 8);
    v51 = v71;
    v50(v76, v71);
    v50(v79, v51);
LABEL_10:

    goto LABEL_11;
  }

  v52 = v81;
  v78 = v43;
  v53 = v67;
  v54 = v66;
  swift_beginAccess();
  v55 = *v54;
  if (v55)
  {
    swift_willThrow();
    v56 = v55;

    v57 = *(v72 + 8);
    v58 = v71;
    v57(v76, v71);
    v57(v79, v58);
    goto LABEL_10;
  }

  swift_beginAccess();
  v59 = *v53;
  v60 = v76;
  if (!*v53)
  {

    v64 = *(v72 + 8);
    v65 = v71;
    v64(v60, v71);
    v64(v79, v65);
  }

  swift_willThrow();
  v61 = v59;

  v62 = *(v72 + 8);
  v63 = v71;
  v62(v60, v71);
  v62(v79, v63);

LABEL_11:
}

uint64_t sub_26CCA27A0()
{
  v56 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v50 - v6;
  v8 = sub_26CD3A07C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v60 = v0;
  sub_26CC9EF14(0, v7);
  v14 = *(v9 + 48);
  if (v14(v7, 1, v8) == 1)
  {
    v5 = v7;
LABEL_5:
    sub_26CC3C0E0(v5);
    sub_26CC3BD30();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  v55 = v1;
  v15 = *(v9 + 32);
  v57 = v13;
  v15();
  sub_26CC9EF14(v60[6], v5);
  if (v14(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v57, v8);
    goto LABEL_5;
  }

  v54 = v9;
  (v15)(v58, v5, v8);
  v18 = objc_opt_self();
  v19 = sub_26CD39FCC();
  v20 = [v18 writingIntentWithURL:v19 options:0];

  v21 = sub_26CD39FCC();
  v22 = [v18 writingIntentWithURL:v21 options:0];

  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v51 = (v23 + 16);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v50 = (v24 + 16);
  v53 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA68, &qword_26CD42850);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26CD44E60;
  *(v25 + 32) = v20;
  *(v25 + 40) = v22;
  sub_26CCA4F50();
  v52 = v8;
  v26 = v20;
  v27 = v22;
  v28 = sub_26CD3A79C();

  v60 = v60[2];
  v29 = swift_allocObject();
  v29[2] = v23;
  v29[3] = v26;
  v29[4] = v27;
  v29[5] = v24;
  v29[6] = v56;
  aBlock[4] = sub_26CCA4FD8;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCA0A1C;
  aBlock[3] = &block_descriptor_32;
  v30 = _Block_copy(aBlock);
  v31 = v26;
  v32 = v27;
  v33 = v60;

  v34 = v53;
  [v53 coordinateAccessWithIntents:v28 queue:v33 byAccessor:v30];
  _Block_release(v30);

  v35 = v51;
  swift_beginAccess();
  v36 = *v35;
  if (*v35)
  {
    swift_willThrow();
    v37 = v36;

    v38 = *(v54 + 8);
    v39 = v52;
    v38(v58, v52);
    v38(v57, v39);
LABEL_10:
  }

  v40 = v31;
  v41 = v32;
  v42 = v57;
  v43 = v52;
  v44 = v50;
  swift_beginAccess();
  v45 = *v44;
  v46 = v54;
  if (*v44)
  {
    swift_willThrow();
    v47 = v45;

    v48 = *(v46 + 8);
    v48(v58, v43);
    v48(v42, v43);
    goto LABEL_10;
  }

  v49 = *(v46 + 8);
  v49(v58, v43);
  v49(v42, v43);
}

uint64_t sub_26CCA2DC4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = _s5CacheC5ModelVMa(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_26CD3A07C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC9EF14(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26CC3C0E0(v11);
    sub_26CC3BD30();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  v34 = v13;
  v35 = v12;
  (*(v13 + 32))(v15, v11, v12);
  v18 = sub_26CD3A1EC();
  v19 = *(*(v18 - 8) + 56);
  v19(v5, 1, 1, v18);
  v20 = type metadata accessor for SportsFavoriteService.UserConsent.State(0);
  v21 = *(v20 + 20);
  v19(&v8[v21], 1, 1, v18);
  *v8 = 0;
  sub_26CC17CCC(v5, &v8[v21]);
  v8[*(v20 + 24)] = 1;
  v19(v5, 1, 1, v18);
  v22 = &v8[*(v6 + 20)];
  v23 = type metadata accessor for SportsFavoriteService.Favorites.State(0);
  v24 = *(v23 + 20);
  v19(&v22[v24], 1, 1, v18);
  *v22 = MEMORY[0x277D84FA0];
  sub_26CC17CCC(v5, &v22[v24]);
  v22[*(v23 + 24)] = 1;
  v38[0] = 0;
  v25 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  v26 = sub_26CD39FCC();
  v27 = swift_allocObject();
  *(v27 + 16) = v8;
  *(v27 + 24) = v38;
  v28 = swift_allocObject();
  v28[2] = sub_26CCA50BC;
  v28[3] = v27;
  aBlock[4] = sub_26CCA50C4;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCA351C;
  aBlock[3] = &block_descriptor_49;
  v29 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v25 coordinateReadingItemAtURL:v26 options:0 error:aBlock byAccessor:v29];
  _Block_release(v29);

  v30 = aBlock[0];
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  if (v30)
  {
    swift_willThrow();
    (*(v34 + 8))(v15, v35);
  }

  else
  {
    v31 = v38[0];
    v32 = v34;
    if (!v38[0])
    {
      (*(v34 + 8))(v15, v35);
      sub_26CC18BE8(v8, v36, _s5CacheC5ModelVMa);

      sub_26CC18318(v8, _s5CacheC5ModelVMa);
    }

    swift_willThrow();
    v33 = v31;
    (*(v32 + 8))(v15, v35);
  }

  sub_26CC18318(v8, _s5CacheC5ModelVMa);
}

uint64_t sub_26CCA3398(uint64_t a1, uint64_t a2)
{
  v3 = _s5CacheC5ModelVMa(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26CD3A08C();
  v8 = v7;
  sub_26CD39D5C();
  swift_allocObject();
  sub_26CD39D4C();
  sub_26CC16E20(&qword_280BBB440, _s5CacheC5ModelVMa, &unk_26CD45180);
  sub_26CD39D3C();
  sub_26CC18C50(v6, v8);

  return sub_26CCA50EC(v5, a2);
}

uint64_t sub_26CCA351C(uint64_t a1, uint64_t a2)
{
  v3 = sub_26CD3A07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_26CD39FEC();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

void sub_26CCA3600(void *a1, uint64_t a2, void *a3, void *a4, int a5, void *a6, void *a7, uint64_t a8)
{
  v95 = a7;
  v96 = a8;
  v94 = a6;
  LODWORD(v93) = a5;
  v97 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v79 - v12;
  v14 = _s5CacheC5ModelVMa(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v79 - v18;
  v20 = sub_26CD3A07C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v79 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v31 = &v79 - v30;
  if (a1)
  {
    swift_beginAccess();
    v32 = *(a2 + 16);
    *(a2 + 16) = a1;
    v33 = a1;
  }

  else
  {
    v87 = v13;
    v88 = v29;
    v89 = v17;
    v90 = v14;
    v86 = v28;
    v91 = v19;
    v92 = v27;
    v34 = [v97 URL];
    sub_26CD39FEC();

    v35 = sub_26CD3A08C();
    v37 = v36;
    v97 = v35;
    v38 = v21 + 8;
    v39 = *(v21 + 8);
    v40 = v31;
    v41 = v92;
    v39(v40, v92);
    v42 = [a4 URL];
    sub_26CD39FEC();

    v84 = sub_26CD3A08C();
    v85 = v43;
    v39(v26, v41);
    sub_26CD39D5C();
    swift_allocObject();
    sub_26CD39D4C();
    sub_26CC16E20(&qword_280BBB440, _s5CacheC5ModelVMa, &unk_26CD45180);
    v44 = v90;
    v45 = v91;
    sub_26CD39D3C();
    v81 = v39;
    v82 = v38;
    v83 = v37;

    swift_allocObject();
    sub_26CD39D4C();
    v46 = v89;
    sub_26CD39D3C();

    if (v93)
    {
      v47 = &v45[*(v44 + 20)];
      v93 = *v47;

      v48 = v87;
      sub_26CD3A1CC();
      v49 = sub_26CD3A1EC();
      v50 = *(*(v49 - 8) + 56);
      v50(v48, 0, 1, v49);
      v80 = type metadata accessor for SportsFavoriteService.Favorites.State;
      sub_26CC18318(v47, type metadata accessor for SportsFavoriteService.Favorites.State);
      v51 = type metadata accessor for SportsFavoriteService.Favorites.State(0);
      v52 = *(v51 + 20);
      v50(v47 + v52, 1, 1, v49);
      *v47 = v93;
      sub_26CC17CCC(v48, v47 + v52);
      v53 = (v51 + 24);
      *(v47 + *(v51 + 24)) = 1;
      v54 = &v46[*(v44 + 20)];
      v55 = *v54;

      sub_26CD3A1CC();
      v50(v48, 0, 1, v49);
      sub_26CC18318(v54, v80);
      v56 = v54 + *(v51 + 20);
      v50(v56, 1, 1, v49);
      *v54 = v55;
    }

    else
    {
      LODWORD(v93) = *v45;
      v57 = type metadata accessor for SportsFavoriteService.UserConsent.State(0);
      v58 = *(v57 + 20);
      v48 = v87;
      sub_26CC1B4DC(&v45[v58], v87, &qword_2804BCA90, &qword_26CD3C200);
      sub_26CC18318(v45, type metadata accessor for SportsFavoriteService.UserConsent.State);
      v59 = sub_26CD3A1EC();
      v60 = *(*(v59 - 8) + 56);
      v60(&v45[v58], 1, 1, v59);
      *v45 = v93;
      sub_26CC17CCC(v48, &v45[v58]);
      v53 = (v57 + 24);
      v45[*(v57 + 24)] = 1;
      LODWORD(v93) = *v46;
      v56 = &v46[*(v57 + 20)];
      sub_26CC1B4DC(v56, v48, &qword_2804BCA90, &qword_26CD3C200);
      sub_26CC18318(v46, type metadata accessor for SportsFavoriteService.UserConsent.State);
      v60(v56, 1, 1, v59);
      *v46 = v93;
      v54 = v46;
    }

    v61 = v94;
    sub_26CC17CCC(v48, v56);
    *(v54 + *v53) = 1;
    v62 = [v61 URL];
    v63 = v88;
    sub_26CD39FEC();

    sub_26CD39D8C();
    swift_allocObject();
    sub_26CD39D7C();
    sub_26CC16E20(&qword_2804BD228, _s5CacheC5ModelVMa, &unk_26CD44F60);
    v64 = sub_26CD39D6C();
    v65 = v95;
    v66 = v64;
    v68 = v67;

    sub_26CD3A0CC();
    v69 = v63;
    v70 = v81;
    v81(v69, v92);
    sub_26CC18C50(v66, v68);
    v71 = [v65 URL];
    v72 = v86;
    sub_26CD39FEC();

    swift_allocObject();
    sub_26CD39D7C();
    v73 = sub_26CD39D6C();
    v74 = v84;
    v75 = v73;
    v77 = v76;

    sub_26CD3A0CC();
    v78 = v91;
    v70(v72, v92);
    sub_26CC18C50(v75, v77);
    sub_26CC18C50(v74, v85);
    sub_26CC18C50(v97, v83);
    sub_26CC18318(v46, _s5CacheC5ModelVMa);
    sub_26CC18318(v78, _s5CacheC5ModelVMa);
  }
}

void sub_26CCA3FA8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v66 = a3;
  v9 = sub_26CD3A07C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v54 - v17;
  v19 = _s5CacheC5ModelVMa(0);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v24 = v54 - v23;
  if (a1)
  {
    swift_beginAccess();
    v25 = *(a2 + 16);
    *(a2 + 16) = a1;
    v26 = a1;
  }

  else
  {
    v58 = a4;
    v59 = v13;
    v60 = v22;
    v64 = v9;
    v65 = v10;
    v63 = a5;
    v27 = v21;
    v28 = sub_26CD3A1EC();
    v29 = *(*(v28 - 8) + 56);
    v29(v18, 1, 1, v28);
    v30 = type metadata accessor for SportsFavoriteService.UserConsent.State(0);
    v31 = *(v30 + 20);
    v29(&v24[v31], 1, 1, v28);
    *v24 = 0;
    sub_26CC17CCC(v18, &v24[v31]);
    v57 = v30;
    v24[*(v30 + 24)] = 1;
    v29(v18, 1, 1, v28);
    v32 = &v24[*(v27 + 20)];
    v33 = type metadata accessor for SportsFavoriteService.Favorites.State(0);
    v34 = *(v33 + 20);
    v29(&v32[v34], 1, 1, v28);
    *v32 = MEMORY[0x277D84FA0];
    sub_26CC17CCC(v18, &v32[v34]);
    v56 = v33;
    v32[*(v33 + 24)] = 1;
    v35 = [v66 URL];
    v66 = v15;
    sub_26CD39FEC();

    v36 = sub_26CD39D8C();
    swift_allocObject();
    sub_26CD39D7C();
    v37 = sub_26CC16E20(&qword_2804BD228, _s5CacheC5ModelVMa, &unk_26CD44F60);
    v61 = sub_26CD39D6C();
    v62 = v38;
    v54[0] = v37;
    v54[1] = v36;
    v55 = v27;

    v39 = v66;
    v41 = v61;
    v40 = v62;
    sub_26CD3A0CC();
    sub_26CC18C50(v41, v40);
    v42 = *(v65 + 8);
    v65 += 8;
    v66 = v42;
    (v42)(v39, v64);
    sub_26CC18318(v24, _s5CacheC5ModelVMa);
    v29(v18, 1, 1, v28);
    v43 = v57;
    v44 = *(v57 + 20);
    v45 = v60;
    v29(&v60[v44], 1, 1, v28);
    *v45 = 0;
    sub_26CC17CCC(v18, &v45[v44]);
    v45[*(v43 + 24)] = 1;
    v29(v18, 1, 1, v28);
    v46 = v56;
    v47 = &v45[*(v55 + 20)];
    v48 = *(v56 + 20);
    v29(&v47[v48], 1, 1, v28);
    *v47 = MEMORY[0x277D84FA0];
    sub_26CC17CCC(v18, &v47[v48]);
    v47[*(v46 + 24)] = 1;
    v49 = [v58 URL];
    v50 = v59;
    sub_26CD39FEC();

    swift_allocObject();
    sub_26CD39D7C();
    v51 = sub_26CD39D6C();
    v53 = v52;

    sub_26CD3A0CC();
    sub_26CC18C50(v51, v53);
    (v66)(v50, v64);
    sub_26CC18318(v60, _s5CacheC5ModelVMa);
  }
}