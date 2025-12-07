uint64_t sub_1D2A94CCC(uint64_t a1)
{
  v2 = sub_1D2A9A8A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A94D08(uint64_t a1)
{
  v2 = sub_1D2A9A8FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A94D44(uint64_t a1)
{
  v2 = sub_1D2A9A8FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A94DB4(uint64_t a1)
{
  v2 = sub_1D2A9A6D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A94DF0(uint64_t a1)
{
  v2 = sub_1D2A9A6D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1D2A94E5C(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D2AC7354() & 1) == 0 || (sub_1D2A979D4(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v12 = *v10;
  v11 = v10[1];
  return v9 == v12 && v8 == v11;
}

uint64_t sub_1D2A94EEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7058F0, &qword_1D2AD42A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A9A59C();
  sub_1D2AC74A4();
  v13 = 0;
  sub_1D2AC72D4();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7058D8, &qword_1D2AD4298);
    sub_1D2A9A5F0(&qword_1EC7058F8, &qword_1EC705900, &unk_1D2AD4074, MEMORY[0x1E69E6300]);
    sub_1D2AC7304();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D2A950C8(uint64_t a1)
{
  v2 = sub_1D2A9A59C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A95104(uint64_t a1)
{
  v2 = sub_1D2A9A59C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A95140@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2A97CD4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

BOOL sub_1D2A95190(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2A69C9C(v2, v3);
}

uint64_t sub_1D2A95204(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705B60, &qword_1D2AD57D0);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705B68, &qword_1D2AD57D8);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705B70, &qword_1D2AD57E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A9BB9C();
  sub_1D2AC74A4();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1D2A9BBF0();
    sub_1D2AC7294();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1D2A9BC44();
    sub_1D2AC7294();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1D2A954C0(uint64_t a1)
{
  v2 = sub_1D2A9BC44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A954FC(uint64_t a1)
{
  v2 = sub_1D2A9BC44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A95538(uint64_t a1)
{
  v2 = sub_1D2A9BB9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A95574(uint64_t a1)
{
  v2 = sub_1D2A9BB9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A955B0(uint64_t a1)
{
  v2 = sub_1D2A9BBF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A955EC(uint64_t a1)
{
  v2 = sub_1D2A9BBF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A95628@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2A97F10(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1D2A95674(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705AE8, &qword_1D2AD5498);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A9B7A0();
  sub_1D2AC74A4();
  v16 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_1D2A90F20(&v16, v11);
  sub_1D2A722BC();
  sub_1D2AC72C4();
  if (v2)
  {
    sub_1D2A47930(v13, *(&v13 + 1));
  }

  else
  {
    sub_1D2A47930(v13, *(&v13 + 1));
    v15 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_1D2A90F20(&v15, v11);
    sub_1D2AC72C4();
    sub_1D2A47930(v13, *(&v13 + 1));
    v13 = v3[2];
    v14 = v13;
    v12 = 2;
    sub_1D2A90F20(&v14, v11);
    sub_1D2AC72C4();
    sub_1D2A47930(v13, *(&v13 + 1));
    LOBYTE(v13) = 3;
    sub_1D2AC72F4();
    LOBYTE(v13) = 4;
    sub_1D2AC72F4();
    LOBYTE(v13) = *(v3 + 64);
    v11[0] = 5;
    sub_1D2A9B8B0();
    sub_1D2AC7304();
    LOBYTE(v13) = 6;
    sub_1D2AC72D4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D2A95958()
{
  v1 = 0x67616D4965736162;
  v2 = *v0;
  v3 = 0xD00000000000001CLL;
  if (v2 != 5)
  {
    v3 = 25705;
  }

  v4 = 0xD000000000000017;
  if (v2 == 3)
  {
    v4 = 0x67616D4965736162;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D49686374656B73;
  if (v2 != 1)
  {
    v5 = 0x614D686374656B73;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D2A95A54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2A983CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2A95A88(uint64_t a1)
{
  v2 = sub_1D2A9B7A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A95AC4(uint64_t a1)
{
  v2 = sub_1D2A9B7A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2A95B00@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D2A98630(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1D2A95B74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1D2A97508(v7, v9) & 1;
}

uint64_t sub_1D2A95BE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705AE0, &qword_1D2AD5490);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A9B74C();
  sub_1D2AC74A4();
  LOBYTE(v14) = 0;
  sub_1D2AC72D4();
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    v16 = 1;
    sub_1D2A479B4(v12, v13);
    sub_1D2A722BC();
    sub_1D2AC7304();
    sub_1D2A47944(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D2A95D7C(uint64_t a1)
{
  v2 = sub_1D2A9B74C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A95DB8(uint64_t a1)
{
  v2 = sub_1D2A9B74C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A95DF4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2A98BCC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1D2A95E44(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705878, &qword_1D2AD4258);
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705880, &qword_1D2AD4260);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v42 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705888, &qword_1D2AD4268);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v42 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705890, &qword_1D2AD4270);
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705898, &qword_1D2AD4278);
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7058A0, &qword_1D2AD4280);
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7058A8, &qword_1D2AD4288);
  v58 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v17 = &v42 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A9A158();
  v57 = v17;
  sub_1D2AC74A4();
  v18 = v2[1];
  v56 = *v2;
  v19 = v2[2];
  v20 = v2[3];
  v21 = v2[8];
  v22 = v21 >> 61;
  if ((v21 >> 61) > 2)
  {
    if (v22 == 3)
    {
      LOBYTE(v59) = 3;
      sub_1D2A9A254();
      v31 = v46;
      v26 = v68;
      v32 = v57;
      sub_1D2AC7294();
      v59 = v56;
      v60 = v18;
      v61 = v19;
      v62 = v20;
      sub_1D2A9A4A0();
      v33 = v49;
      sub_1D2AC7304();
      (*(v48 + 8))(v31, v33);
      v34 = *(v58 + 8);
      v35 = v32;
      return v34(v35, v26);
    }

    v26 = v68;
    if (v22 == 4)
    {
      LOBYTE(v59) = 4;
      sub_1D2A9A200();
      v27 = v50;
      v28 = v57;
      sub_1D2AC7294();
      v29 = v52;
      sub_1D2AC72D4();
      v30 = v51;
    }

    else
    {
      LOBYTE(v59) = 5;
      sub_1D2A9A1AC();
      v27 = v53;
      v28 = v57;
      sub_1D2AC7294();
      v29 = v55;
      sub_1D2AC72D4();
      v30 = v54;
    }

    (*(v30 + 8))(v27, v29);
LABEL_13:
    v34 = *(v58 + 8);
    v35 = v28;
    return v34(v35, v26);
  }

  if (!v22)
  {
    LOBYTE(v59) = 0;
    sub_1D2A9A44C();
    v26 = v68;
    v28 = v57;
    sub_1D2AC7294();
    sub_1D2AC72D4();
    (*(v42 + 8))(v15, v13);
    goto LABEL_13;
  }

  if (v22 == 1)
  {
    LOBYTE(v59) = 1;
    sub_1D2A9A3A4();
    v23 = v68;
    v24 = v57;
    sub_1D2AC7294();
    v59 = v56;
    v60 = v18;
    v61 = v19;
    sub_1D2A9A548();
    sub_1D2AC7304();
    (*(v43 + 8))(v12, v10);
    return (*(v58 + 8))(v24, v23);
  }

  else
  {
    v36 = v2[9];
    v55 = v2[10];
    v37 = v21 & 0x1FFFFFFFFFFFFFFFLL;
    LOBYTE(v59) = 2;
    sub_1D2A9A2FC();
    v38 = v44;
    v39 = v57;
    sub_1D2AC7294();
    v59 = v56;
    v60 = v18;
    v61 = v19;
    v62 = v20;
    v40 = *(v2 + 3);
    v63 = *(v2 + 2);
    v64 = v40;
    v65 = v37;
    v66 = v36;
    v67 = v55;
    sub_1D2A9A4F4();
    v41 = v47;
    sub_1D2AC7304();
    (*(v45 + 8))(v38, v41);
    return (*(v58 + 8))(v39, v68);
  }
}

uint64_t sub_1D2A96630(uint64_t a1)
{
  v2 = sub_1D2A9A158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9666C(uint64_t a1)
{
  v2 = sub_1D2A9A158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A966A8(uint64_t a1)
{
  v2 = sub_1D2A9A44C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A966E4(uint64_t a1)
{
  v2 = sub_1D2A9A44C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A96720(uint64_t a1)
{
  v2 = sub_1D2A9A2FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9675C(uint64_t a1)
{
  v2 = sub_1D2A9A2FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A96798(uint64_t a1)
{
  v2 = sub_1D2A9A254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A967D4(uint64_t a1)
{
  v2 = sub_1D2A9A254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A96810(uint64_t a1)
{
  v2 = sub_1D2A9A200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9684C(uint64_t a1)
{
  v2 = sub_1D2A9A200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A96888(uint64_t a1)
{
  v2 = sub_1D2A9A3A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A968C4(uint64_t a1)
{
  v2 = sub_1D2A9A3A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A96900(uint64_t a1)
{
  v2 = sub_1D2A9A1AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9693C(uint64_t a1)
{
  v2 = sub_1D2A9A1AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2A96978@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2A98DE8(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1D2A969EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1D2A97818(v7, v9) & 1;
}

uint64_t sub_1D2A96A58@<X0>(void *a1@<X8>)
{
  v3 = 72;
  if ((*(v1 + 64) & 0xE000000000000000) != 0x4000000000000000)
  {
    v3 = 0;
  }

  v4 = *(v1 + v3);

  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t sub_1D2A96AB4(uint64_t a1, uint64_t a2, char a3)
{
  v20 = 0;
  v21 = 0xE000000000000000;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 32;
    do
    {
      v7 = *(v6 + 64);
      v17[3] = *(v6 + 48);
      v18 = v7;
      v8 = *(v6 + 16);
      v9 = *(v6 + 32);
      v17[0] = *v6;
      v17[1] = v8;
      v19 = *(v6 + 80);
      v17[2] = v9;
      v10 = &v19;
      if ((v7 & 0xE000000000000000) != 0x4000000000000000)
      {
        v10 = v17 + 1;
      }

      v11 = *v10;
      if ((v18 & 0xE000000000000000) == 0x4000000000000000)
      {
        v12 = &v18 + 1;
      }

      else
      {
        v12 = v17;
      }

      v13 = *v12;

      sub_1D2A75D20(v17, v16);
      MEMORY[0x1D38A7100](v13, v11);

      sub_1D2A75D7C(v17);
      v6 += 88;
      --v5;
    }

    while (v5);
  }

  if ((a3 & 1) == 0)
  {
    *&v17[0] = a2;
    sub_1D2A87D04();
    v14 = sub_1D2AC6FE4();
    MEMORY[0x1D38A7100](v14);
  }

  return v20;
}

uint64_t sub_1D2A96BDC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v12 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7057A0, &qword_1D2AD3B58);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A99C48();
  sub_1D2AC74A4();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705788, &qword_1D2AD3B50);
  sub_1D2A99CF0(&qword_1EC7057A8, sub_1D2A99D68, MEMORY[0x1E69E6300]);
  sub_1D2AC7304();
  if (!v4)
  {
    v13 = 1;
    sub_1D2AC72B4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D2A96DC8(uint64_t a1)
{
  v2 = sub_1D2A99C48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A96E04(uint64_t a1)
{
  v2 = sub_1D2A99C48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A96E40@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2A99A14(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1D2A96E94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1D2A69A24(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D2A96EF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2A96AB4(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D2A96F28@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1D2AC5D34();
    if (v10)
    {
      v11 = sub_1D2AC5D54();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1D2AC5D44();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1D2AC5D34();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D2AC5D54();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D2AC5D44();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D2A97158(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D2A972E8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D2A47944(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1D2A96F28(v13, a3, a4, &v12);
  v10 = v4;
  sub_1D2A47944(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1D2A972E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D2AC5D34();
  v11 = result;
  if (result)
  {
    result = sub_1D2AC5D54();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D2AC5D44();
  sub_1D2A96F28(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1D2A973A0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1D2A479B4(a3, a4);
          return sub_1D2A97158(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D2A97508(double *a1, double *a2)
{
  v23 = *a1;
  v22 = *a2;
  v4 = *(&v23 + 1);
  v5 = v23;
  v7 = *(&v22 + 1);
  v6 = v22;
  if (*(&v23 + 1) >> 60 == 15)
  {
    if (*(&v22 + 1) >> 60 == 15)
    {
      sub_1D2A90F20(&v23, &v21);
      sub_1D2A90F20(&v22, &v21);
      sub_1D2A47930(v5, v4);
      goto LABEL_7;
    }

LABEL_5:
    sub_1D2A90F20(&v23, &v21);
    v8 = &v22;
    v9 = &v21;
LABEL_18:
    sub_1D2A90F20(v8, v9);
    sub_1D2A47930(v5, v4);
    sub_1D2A47930(v6, v7);
    goto LABEL_19;
  }

  if (*(&v22 + 1) >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_1D2A90F20(&v23, &v21);
  sub_1D2A90F20(&v22, &v21);
  v10 = sub_1D2A973A0(v5, v4, v6, v7);
  sub_1D2A47930(v6, v7);
  sub_1D2A47930(v5, v4);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_7:
  v11 = *(a1 + 1);
  v20 = *(a2 + 1);
  v21 = v11;
  v4 = *(&v11 + 1);
  v5 = v11;
  v7 = *(&v20 + 1);
  v6 = v20;
  if (*(&v11 + 1) >> 60 == 15)
  {
    if (*(&v20 + 1) >> 60 == 15)
    {
      sub_1D2A90F20(&v21, &v19);
      sub_1D2A90F20(&v20, &v19);
      sub_1D2A47930(v5, v4);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (*(&v20 + 1) >> 60 == 15)
  {
LABEL_11:
    sub_1D2A90F20(&v21, &v19);
    v8 = &v20;
    v9 = &v19;
    goto LABEL_18;
  }

  sub_1D2A90F20(&v21, &v19);
  sub_1D2A90F20(&v20, &v19);
  v12 = sub_1D2A973A0(v5, v4, v6, v7);
  sub_1D2A47930(v6, v7);
  sub_1D2A47930(v5, v4);
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_13:
  v13 = *(a1 + 2);
  v18 = *(a2 + 2);
  v19 = v13;
  v4 = *(&v13 + 1);
  v5 = v13;
  v7 = *(&v18 + 1);
  v6 = v18;
  if (*(&v13 + 1) >> 60 != 15)
  {
    if (*(&v18 + 1) >> 60 == 15)
    {
      goto LABEL_17;
    }

    sub_1D2A90F20(&v19, v17);
    sub_1D2A90F20(&v18, v17);
    v16 = sub_1D2A973A0(v5, v4, v6, v7);
    sub_1D2A47930(v6, v7);
    sub_1D2A47930(v5, v4);
    if (v16)
    {
      goto LABEL_22;
    }

LABEL_19:
    v14 = 0;
    return v14 & 1;
  }

  if (*(&v18 + 1) >> 60 != 15)
  {
LABEL_17:
    sub_1D2A90F20(&v19, v17);
    v8 = &v18;
    v9 = v17;
    goto LABEL_18;
  }

  sub_1D2A90F20(&v19, v17);
  sub_1D2A90F20(&v18, v17);
  sub_1D2A47930(v5, v4);
LABEL_22:
  if (a1[6] != a2[6] || a1[7] != a2[7] || *(a1 + 64) != *(a2 + 64))
  {
    goto LABEL_19;
  }

  if (*(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1D2AC7354();
  }

  return v14 & 1;
}

uint64_t sub_1D2A97818(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 64);
  v7 = v6 >> 61;
  if ((v6 >> 61) <= 2)
  {
    if (v7)
    {
      v8 = *(a1 + 16);
      if (v7 == 1)
      {
        if (a2[8] >> 61 == 1)
        {
          if (v9 = a2[2], *&v4 == *a2) && *&v5 == a2[1] || (sub_1D2AC7354())
          {
            if (sub_1D2A69C9C(v8, v9))
            {
              goto LABEL_27;
            }
          }
        }
      }

      else
      {
        v11 = *(a1 + 56);
        v21[0] = v4;
        v21[1] = v5;
        *&v21[2] = v8;
        v22 = *(a1 + 24);
        v23 = *(a1 + 40);
        v24 = v11;
        v25 = v6 & 0x1FFFFFFFFFFFFFFFLL;
        v12 = *(a1 + 72);
        v13 = a2[8];
        v26 = v12;
        if (v13 >> 61 == 2)
        {
          v14 = *(a2 + 1);
          v18[0] = *a2;
          v18[1] = v14;
          v15 = *(a2 + 3);
          v18[2] = *(a2 + 2);
          v18[3] = v15;
          v19 = v13 & 0x1FFFFFFFFFFFFFFFLL;
          v20 = *(a2 + 9);
          v16 = sub_1D2A97508(v21, v18);
          return v16 & 1;
        }
      }

LABEL_28:
      v16 = 0;
      return v16 & 1;
    }

    if (a2[8] >> 61)
    {
      goto LABEL_28;
    }

LABEL_17:
    if (*&v4 != *a2 || *&v5 != a2[1])
    {
      goto LABEL_30;
    }

LABEL_27:
    v16 = 1;
    return v16 & 1;
  }

  if (v7 == 3)
  {
    if (a2[8] >> 61 != 3)
    {
      goto LABEL_28;
    }

    goto LABEL_17;
  }

  if (v7 == 4)
  {
    if (a2[8] >> 61 != 4)
    {
      goto LABEL_28;
    }
  }

  else if (a2[8] >> 61 != 5)
  {
    goto LABEL_28;
  }

  if (*&v4 == *a2 && *&v5 == a2[1])
  {
    goto LABEL_27;
  }

LABEL_30:

  return sub_1D2AC7354();
}

uint64_t sub_1D2A979D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BE0, &unk_1D2AD3B60);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D2A9A78C(a1, &v21 - v13, type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind);
  sub_1D2A9A78C(a2, &v14[v15], type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (!v17)
  {
    sub_1D2A9A78C(v14, v10, type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind);
    if (!v16(&v14[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = sub_1D2AC5F74();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_1D2A9A7F4(v14, type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v14[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v14[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_1D2A99DDC(v14);
    v18 = 0;
    return v18 & 1;
  }

  sub_1D2A9A7F4(v14, type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1D2A97CD4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7058C8, &qword_1D2AD4290);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A9A59C();
  sub_1D2AC7494();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_1D2AC7234();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7058D8, &qword_1D2AD4298);
    v9[15] = 1;
    sub_1D2A9A5F0(&qword_1EC7058E0, &qword_1EC7058E8, &unk_1D2AD409C, MEMORY[0x1E69E6330]);
    sub_1D2AC7264();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1D2A97F10(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705B30, &qword_1D2AD57B8);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705B38, &qword_1D2AD57C0);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705B40, &qword_1D2AD57C8);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A9BB9C();
  v11 = v26;
  sub_1D2AC7494();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1D2AC7284();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1D2A76160();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1D2AC70B4();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
    *v19 = &type metadata for GenerationRecipe_V1.DrawOnImageRecipe.AssignmentOptions;
    sub_1D2AC71F4();
    sub_1D2AC70A4();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1D2A9BBF0();
    sub_1D2AC71E4();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1D2A9BC44();
    sub_1D2AC71E4();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v31 & 1;
}

uint64_t sub_1D2A983CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x67616D4965736162 && a2 == 0xED00006174614465;
  if (v3 || (sub_1D2AC7354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D49686374656B73 && a2 == 0xEF61746144656761 || (sub_1D2AC7354() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614D686374656B73 && a2 == 0xEE00617461446B73 || (sub_1D2AC7354() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x67616D4965736162 && a2 == 0xEE006F6974615265 || (sub_1D2AC7354() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D2ADF2B0 == a2 || (sub_1D2AC7354() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D2ADF310 == a2 || (sub_1D2AC7354() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D2AC7354();

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

void sub_1D2A98630(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705AC8, &qword_1D2AD5488);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  v9 = sub_1D2AC5F94();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  v55 = v13;
  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A9B7A0();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_1D2A723B8();
    sub_1D2AC7224();
    v35 = v42;
    LOBYTE(v36) = 1;
    sub_1D2AC7224();
    v34 = v42;
    LOBYTE(v36) = 2;
    sub_1D2AC7224();
    v15 = *(&v42 + 1);
    v14 = v42;
    LOBYTE(v42) = 3;
    sub_1D2AC7254();
    v17 = v16;
    LOBYTE(v42) = 4;
    sub_1D2AC7254();
    v19 = v18;
    LOBYTE(v36) = 5;
    sub_1D2A9B7F4();
    sub_1D2AC7264();
    v33 = v42;
    v53 = 6;
    v32 = sub_1D2AC7234();
    v21 = v20;
    (*(v6 + 8))(v8, v5);

    v22 = v35;
    v36 = v35;
    v23 = *(&v35 + 1);
    v24 = v15;
    v31 = v15;
    v25 = v34;
    v37 = v34;
    v26 = *(&v34 + 1);
    v30 = v14;
    v38 = __PAIR128__(v24, v14);
    *&v39 = v17;
    *(&v39 + 1) = v19;
    LOBYTE(v40) = v33;
    *(&v40 + 1) = v54[0];
    DWORD1(v40) = *(v54 + 3);
    v27 = v32;
    *(&v40 + 1) = v32;
    v41 = v21;
    sub_1D2A9B848(&v36, &v42);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *&v42 = v22;
    *(&v42 + 1) = v23;
    v43 = v25;
    v44 = v26;
    v45 = v30;
    v46 = v31;
    v47 = v17;
    v48 = v19;
    v49 = v33;
    *v50 = v54[0];
    *&v50[3] = *(v54 + 3);
    v51 = v27;
    v52 = v21;
    sub_1D2A9B880(&v42);
    v28 = v39;
    *(a2 + 32) = v38;
    *(a2 + 48) = v28;
    *(a2 + 64) = v40;
    *(a2 + 80) = v41;
    v29 = v37;
    *a2 = v36;
    *(a2 + 16) = v29;
  }
}

uint64_t sub_1D2A98BCC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705AB8, &qword_1D2AD5480);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A9B74C();
  sub_1D2AC7494();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v12) = 0;
    v7 = sub_1D2AC7234();
    v11[15] = 1;
    sub_1D2A723B8();
    sub_1D2AC7264();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;

    sub_1D2A479B4(v9, v10);
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_1D2A47944(v9, v10);
  }

  return v7;
}

double sub_1D2A98DE8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7057F0, &qword_1D2AD4218);
  v70 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  *&v75 = &v58 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7057F8, &qword_1D2AD4220);
  v71 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  *&v74 = &v58 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705800, &qword_1D2AD4228);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v73 = &v58 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705808, &qword_1D2AD4230);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v72 = &v58 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705810, &qword_1D2AD4238);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705818, &qword_1D2AD4240);
  v61 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705820, &unk_1D2AD4248);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v58 - v14;
  v16 = a1[3];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D2A9A158();
  v17 = v77;
  sub_1D2AC7494();
  if (v17)
  {
    goto LABEL_13;
  }

  v18 = v11;
  v58 = v9;
  v59 = v8;
  v19 = v72;
  v20 = v73;
  v21 = v74;
  v22 = v75;
  v60 = 0;
  *&v77 = v13;
  v23 = v76;
  v24 = sub_1D2AC7284();
  v25 = (2 * *(v24 + 16)) | 1;
  v86 = v24;
  v87 = v24 + 32;
  v88 = 0;
  v89 = v25;
  v26 = sub_1D2A76168();
  if (v26 == 6 || v88 != v89 >> 1)
  {
    v31 = sub_1D2AC70B4();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
    *v33 = &type metadata for GenerationRecipe_V1.Ingredient;
    sub_1D2AC71F4();
    sub_1D2AC70A4();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v26 > 2u)
  {
    if (v26 == 3)
    {
      LOBYTE(v78) = 3;
      sub_1D2A9A254();
      v42 = v60;
      sub_1D2AC71E4();
      v43 = v77;
      if (!v42)
      {
        sub_1D2A9A2A8();
        v44 = v68;
        sub_1D2AC7264();
        v60 = 0;
        (*(v69 + 8))(v20, v44);
        (*(v43 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v52 = v78;
        v51 = v79;
        v53 = 0x6000000000000000;
        v54 = v80;
        goto LABEL_28;
      }

      (*(v77 + 8))(v15, v12);
      goto LABEL_12;
    }

    v35 = v77;
    if (v26 == 4)
    {
      LOBYTE(v78) = 4;
      sub_1D2A9A200();
      v20 = v21;
      v36 = v60;
      sub_1D2AC71E4();
      if (!v36)
      {
        v37 = v62;
        v38 = sub_1D2AC7234();
        v60 = 0;
        v52 = v38;
        v51 = v55;
        (*(v71 + 8))(v21, v37);
        (*(v35 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v53 = 0x8000000000000000;
LABEL_29:
        v23 = v76;
        goto LABEL_30;
      }
    }

    else
    {
      LOBYTE(v78) = 5;
      sub_1D2A9A1AC();
      v47 = v60;
      sub_1D2AC71E4();
      if (!v47)
      {
        v20 = v65;
        v48 = sub_1D2AC7234();
        v60 = 0;
        v52 = v48;
        v51 = v56;
        (*(v70 + 8))(v22, v20);
        (*(v35 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v53 = 0xA000000000000000;
        goto LABEL_29;
      }
    }

    (*(v35 + 8))(v15, v12);
    goto LABEL_12;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      LOBYTE(v78) = 1;
      sub_1D2A9A3A4();
      v27 = v59;
      v28 = v60;
      sub_1D2AC71E4();
      v29 = v77;
      if (!v28)
      {
        sub_1D2A9A3F8();
        v30 = v64;
        sub_1D2AC7264();
        v60 = 0;
        (*(v63 + 8))(v27, v30);
        (*(v29 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v52 = v78;
        v51 = v79;
        v53 = 0x2000000000000000;
        *&v54 = v80;
LABEL_28:
        v77 = v54;
        goto LABEL_30;
      }

      goto LABEL_11;
    }

    LOBYTE(v78) = 2;
    sub_1D2A9A2FC();
    v45 = v60;
    sub_1D2AC71E4();
    v29 = v77;
    if (!v45)
    {
      sub_1D2A9A350();
      v46 = v67;
      sub_1D2AC7264();
      v60 = 0;
      (*(v66 + 8))(v19, v46);
      (*(v29 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v52 = v78;
      v51 = v79;
      v74 = v82;
      v77 = v80;
      v75 = v81;
      v20 = v84;
      v15 = v85;
      v53 = v83 & 1 | 0x4000000000000000;
      goto LABEL_30;
    }

LABEL_11:
    (*(v29 + 8))(v15, v12);
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    __swift_destroy_boxed_opaque_existential_0(v90);
    return result;
  }

  LOBYTE(v78) = 0;
  sub_1D2A9A44C();
  v39 = v60;
  sub_1D2AC71E4();
  if (v39)
  {
LABEL_10:
    v29 = v77;
    goto LABEL_11;
  }

  v40 = v58;
  v41 = sub_1D2AC7234();
  v60 = 0;
  v49 = v41;
  v51 = v50;
  (*(v61 + 8))(v18, v40);
  (*(v77 + 8))(v15, v12);
  v52 = v49;
  swift_unknownObjectRelease();
  v53 = 0;
LABEL_30:
  __swift_destroy_boxed_opaque_existential_0(v90);
  *v23 = v52;
  *(v23 + 8) = v51;
  v57 = v74;
  *(v23 + 16) = v77;
  result = *&v75;
  *(v23 + 32) = v75;
  *(v23 + 48) = v57;
  *(v23 + 64) = v53;
  *(v23 + 72) = v20;
  *(v23 + 80) = v15;
  return result;
}

uint64_t sub_1D2A99A14(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705778, &qword_1D2AD3B48);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1D2A99C48();
  sub_1D2AC7494();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705788, &qword_1D2AD3B50);
    v9[7] = 0;
    sub_1D2A99CF0(&qword_1EC705790, sub_1D2A99C9C, MEMORY[0x1E69E6330]);
    sub_1D2AC7264();
    v7 = v10;
    v9[6] = 1;
    sub_1D2AC7214();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_1D2A99C48()
{
  result = qword_1EC705780;
  if (!qword_1EC705780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705780);
  }

  return result;
}

unint64_t sub_1D2A99C9C()
{
  result = qword_1EC705798;
  if (!qword_1EC705798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705798);
  }

  return result;
}

uint64_t sub_1D2A99CF0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC705788, &qword_1D2AD3B50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2A99D68()
{
  result = qword_1EC7057B0;
  if (!qword_1EC7057B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7057B0);
  }

  return result;
}

uint64_t sub_1D2A99DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BE0, &unk_1D2AD3B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D2A99E9C(uint64_t a1)
{
  type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind(319);
  if (v1 <= 0x3F)
  {
    sub_1D2A72FB0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D2A99F74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D2A99FC4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 64) = 2 * -a2;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D2A9A054()
{
  result = qword_1EC7057D8;
  if (!qword_1EC7057D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7057D8);
  }

  return result;
}

unint64_t sub_1D2A9A0AC()
{
  result = qword_1EC7057E0;
  if (!qword_1EC7057E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7057E0);
  }

  return result;
}

unint64_t sub_1D2A9A104()
{
  result = qword_1EC7057E8;
  if (!qword_1EC7057E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7057E8);
  }

  return result;
}

unint64_t sub_1D2A9A158()
{
  result = qword_1EC705828;
  if (!qword_1EC705828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705828);
  }

  return result;
}

unint64_t sub_1D2A9A1AC()
{
  result = qword_1EC705830;
  if (!qword_1EC705830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705830);
  }

  return result;
}

unint64_t sub_1D2A9A200()
{
  result = qword_1EC705838;
  if (!qword_1EC705838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705838);
  }

  return result;
}

unint64_t sub_1D2A9A254()
{
  result = qword_1EC705840;
  if (!qword_1EC705840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705840);
  }

  return result;
}

unint64_t sub_1D2A9A2A8()
{
  result = qword_1EC705848;
  if (!qword_1EC705848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705848);
  }

  return result;
}

unint64_t sub_1D2A9A2FC()
{
  result = qword_1EC705850;
  if (!qword_1EC705850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705850);
  }

  return result;
}

unint64_t sub_1D2A9A350()
{
  result = qword_1EC705858;
  if (!qword_1EC705858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705858);
  }

  return result;
}

unint64_t sub_1D2A9A3A4()
{
  result = qword_1EC705860;
  if (!qword_1EC705860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705860);
  }

  return result;
}

unint64_t sub_1D2A9A3F8()
{
  result = qword_1EC705868;
  if (!qword_1EC705868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705868);
  }

  return result;
}

unint64_t sub_1D2A9A44C()
{
  result = qword_1EC705870;
  if (!qword_1EC705870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705870);
  }

  return result;
}

unint64_t sub_1D2A9A4A0()
{
  result = qword_1EC7058B0;
  if (!qword_1EC7058B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7058B0);
  }

  return result;
}

unint64_t sub_1D2A9A4F4()
{
  result = qword_1EC7058B8;
  if (!qword_1EC7058B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7058B8);
  }

  return result;
}

unint64_t sub_1D2A9A548()
{
  result = qword_1EC7058C0;
  if (!qword_1EC7058C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7058C0);
  }

  return result;
}

unint64_t sub_1D2A9A59C()
{
  result = qword_1EC7058D0;
  if (!qword_1EC7058D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7058D0);
  }

  return result;
}

uint64_t sub_1D2A9A5F0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7058D8, &qword_1D2AD4298);
    sub_1D2A9A68C(a2, type metadata accessor for GenerationRecipe_V1.Prompt.Entity, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2A9A68C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D2A9A6D4()
{
  result = qword_1EC705910;
  if (!qword_1EC705910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705910);
  }

  return result;
}

uint64_t sub_1D2A9A728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A9A78C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A9A7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2A9A854()
{
  result = qword_1EC705950;
  if (!qword_1EC705950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705950);
  }

  return result;
}

unint64_t sub_1D2A9A8A8()
{
  result = qword_1EC705958;
  if (!qword_1EC705958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705958);
  }

  return result;
}

unint64_t sub_1D2A9A8FC()
{
  result = qword_1EC705960;
  if (!qword_1EC705960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705960);
  }

  return result;
}

unint64_t sub_1D2A9A950()
{
  result = qword_1EC705968;
  if (!qword_1EC705968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705968);
  }

  return result;
}

unint64_t sub_1D2A9AA98()
{
  result = qword_1EC705990;
  if (!qword_1EC705990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705990);
  }

  return result;
}

unint64_t sub_1D2A9AAF0()
{
  result = qword_1EC705998;
  if (!qword_1EC705998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705998);
  }

  return result;
}

unint64_t sub_1D2A9AB48()
{
  result = qword_1EC7059A0;
  if (!qword_1EC7059A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7059A0);
  }

  return result;
}

unint64_t sub_1D2A9ABA0()
{
  result = qword_1EC7059A8;
  if (!qword_1EC7059A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7059A8);
  }

  return result;
}

unint64_t sub_1D2A9ABF8()
{
  result = qword_1EC7059B0;
  if (!qword_1EC7059B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7059B0);
  }

  return result;
}

unint64_t sub_1D2A9AC50()
{
  result = qword_1EC7059B8;
  if (!qword_1EC7059B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7059B8);
  }

  return result;
}

unint64_t sub_1D2A9ACA8()
{
  result = qword_1EC7059C0;
  if (!qword_1EC7059C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7059C0);
  }

  return result;
}

unint64_t sub_1D2A9AD00()
{
  result = qword_1EC7059C8;
  if (!qword_1EC7059C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7059C8);
  }

  return result;
}

unint64_t sub_1D2A9AD58()
{
  result = qword_1EC7059D0;
  if (!qword_1EC7059D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7059D0);
  }

  return result;
}

unint64_t sub_1D2A9ADB0()
{
  result = qword_1EC7059D8;
  if (!qword_1EC7059D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7059D8);
  }

  return result;
}

unint64_t sub_1D2A9AE08()
{
  result = qword_1EC7059E0;
  if (!qword_1EC7059E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7059E0);
  }

  return result;
}

unint64_t sub_1D2A9AE60()
{
  result = qword_1EC7059E8;
  if (!qword_1EC7059E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7059E8);
  }

  return result;
}

unint64_t sub_1D2A9AEB8()
{
  result = qword_1EC7059F0;
  if (!qword_1EC7059F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7059F0);
  }

  return result;
}

unint64_t sub_1D2A9AF10()
{
  result = qword_1EC7059F8;
  if (!qword_1EC7059F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7059F8);
  }

  return result;
}

unint64_t sub_1D2A9AF68()
{
  result = qword_1EC705A00;
  if (!qword_1EC705A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A00);
  }

  return result;
}

unint64_t sub_1D2A9AFC0()
{
  result = qword_1EC705A08;
  if (!qword_1EC705A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A08);
  }

  return result;
}

unint64_t sub_1D2A9B018()
{
  result = qword_1EC705A10;
  if (!qword_1EC705A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A10);
  }

  return result;
}

unint64_t sub_1D2A9B070()
{
  result = qword_1EC705A18;
  if (!qword_1EC705A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A18);
  }

  return result;
}

unint64_t sub_1D2A9B0C8()
{
  result = qword_1EC705A20;
  if (!qword_1EC705A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A20);
  }

  return result;
}

unint64_t sub_1D2A9B120()
{
  result = qword_1EC705A28;
  if (!qword_1EC705A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A28);
  }

  return result;
}

unint64_t sub_1D2A9B178()
{
  result = qword_1EC705A30;
  if (!qword_1EC705A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A30);
  }

  return result;
}

unint64_t sub_1D2A9B1D0()
{
  result = qword_1EC705A38;
  if (!qword_1EC705A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A38);
  }

  return result;
}

unint64_t sub_1D2A9B228()
{
  result = qword_1EC705A40;
  if (!qword_1EC705A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A40);
  }

  return result;
}

unint64_t sub_1D2A9B280()
{
  result = qword_1EC705A48;
  if (!qword_1EC705A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A48);
  }

  return result;
}

unint64_t sub_1D2A9B2D8()
{
  result = qword_1EC705A50;
  if (!qword_1EC705A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A50);
  }

  return result;
}

unint64_t sub_1D2A9B330()
{
  result = qword_1EC705A58;
  if (!qword_1EC705A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A58);
  }

  return result;
}

unint64_t sub_1D2A9B388()
{
  result = qword_1EC705A60;
  if (!qword_1EC705A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A60);
  }

  return result;
}

unint64_t sub_1D2A9B3E0()
{
  result = qword_1EC705A68;
  if (!qword_1EC705A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A68);
  }

  return result;
}

unint64_t sub_1D2A9B438()
{
  result = qword_1EC705A70;
  if (!qword_1EC705A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A70);
  }

  return result;
}

unint64_t sub_1D2A9B490()
{
  result = qword_1EC705A78;
  if (!qword_1EC705A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A78);
  }

  return result;
}

unint64_t sub_1D2A9B4E8()
{
  result = qword_1EC705A80;
  if (!qword_1EC705A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A80);
  }

  return result;
}

unint64_t sub_1D2A9B540()
{
  result = qword_1EC705A88;
  if (!qword_1EC705A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A88);
  }

  return result;
}

unint64_t sub_1D2A9B598()
{
  result = qword_1EC705A90;
  if (!qword_1EC705A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A90);
  }

  return result;
}

unint64_t sub_1D2A9B5F0()
{
  result = qword_1EC705A98;
  if (!qword_1EC705A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705A98);
  }

  return result;
}

unint64_t sub_1D2A9B648()
{
  result = qword_1EC705AA0;
  if (!qword_1EC705AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705AA0);
  }

  return result;
}

unint64_t sub_1D2A9B6A0()
{
  result = qword_1EC705AA8;
  if (!qword_1EC705AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705AA8);
  }

  return result;
}

unint64_t sub_1D2A9B6F8()
{
  result = qword_1EC705AB0;
  if (!qword_1EC705AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705AB0);
  }

  return result;
}

unint64_t sub_1D2A9B74C()
{
  result = qword_1EC705AC0;
  if (!qword_1EC705AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705AC0);
  }

  return result;
}

unint64_t sub_1D2A9B7A0()
{
  result = qword_1EC705AD0;
  if (!qword_1EC705AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705AD0);
  }

  return result;
}

unint64_t sub_1D2A9B7F4()
{
  result = qword_1EC705AD8;
  if (!qword_1EC705AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705AD8);
  }

  return result;
}

unint64_t sub_1D2A9B8B0()
{
  result = qword_1EC705AF0;
  if (!qword_1EC705AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705AF0);
  }

  return result;
}

unint64_t sub_1D2A9B938()
{
  result = qword_1EC705AF8;
  if (!qword_1EC705AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705AF8);
  }

  return result;
}

unint64_t sub_1D2A9B990()
{
  result = qword_1EC705B00;
  if (!qword_1EC705B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705B00);
  }

  return result;
}

unint64_t sub_1D2A9B9E8()
{
  result = qword_1EC705B08;
  if (!qword_1EC705B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705B08);
  }

  return result;
}

unint64_t sub_1D2A9BA40()
{
  result = qword_1EC705B10;
  if (!qword_1EC705B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705B10);
  }

  return result;
}

unint64_t sub_1D2A9BA98()
{
  result = qword_1EC705B18;
  if (!qword_1EC705B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705B18);
  }

  return result;
}

unint64_t sub_1D2A9BAF0()
{
  result = qword_1EC705B20;
  if (!qword_1EC705B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705B20);
  }

  return result;
}

unint64_t sub_1D2A9BB48()
{
  result = qword_1EC705B28;
  if (!qword_1EC705B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705B28);
  }

  return result;
}

unint64_t sub_1D2A9BB9C()
{
  result = qword_1EC705B48;
  if (!qword_1EC705B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705B48);
  }

  return result;
}

unint64_t sub_1D2A9BBF0()
{
  result = qword_1EC705B50;
  if (!qword_1EC705B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705B50);
  }

  return result;
}

unint64_t sub_1D2A9BC44()
{
  result = qword_1EC705B58;
  if (!qword_1EC705B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705B58);
  }

  return result;
}

unint64_t sub_1D2A9BCCC()
{
  result = qword_1EC705B78;
  if (!qword_1EC705B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705B78);
  }

  return result;
}

unint64_t sub_1D2A9BD24()
{
  result = qword_1EC705B80;
  if (!qword_1EC705B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705B80);
  }

  return result;
}

unint64_t sub_1D2A9BD7C()
{
  result = qword_1EC705B88;
  if (!qword_1EC705B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705B88);
  }

  return result;
}

unint64_t sub_1D2A9BDD4()
{
  result = qword_1EC705B90;
  if (!qword_1EC705B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705B90);
  }

  return result;
}

unint64_t sub_1D2A9BE2C()
{
  result = qword_1EC705B98;
  if (!qword_1EC705B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705B98);
  }

  return result;
}

unint64_t sub_1D2A9BE84()
{
  result = qword_1EC705BA0;
  if (!qword_1EC705BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705BA0);
  }

  return result;
}

unint64_t sub_1D2A9BEDC()
{
  result = qword_1EC705BA8;
  if (!qword_1EC705BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705BA8);
  }

  return result;
}

uint64_t GenerationRecipe_V5.Prompt.Entity.init(text:kind:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity(0);
  result = sub_1D2A9BFB8(a3, a6 + *(v10 + 20));
  v12 = (a6 + *(v10 + 24));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

uint64_t sub_1D2A9BFB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

ImagePlayground::GenerationRecipe_V5::Prompt __swiftcall GenerationRecipe_V5.Prompt.init(value:entities:)(Swift::String value, Swift::OpaquePointer entities)
{
  *v2 = value;
  *(v2 + 16) = entities;
  result.value = value;
  result.entities = entities;
  return result;
}

void GenerationRecipe_V5.DrawOnImageRecipe.init(baseImageData:sketchImageData:sketchMaskData:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:sanitizationCategory:drawOnImageAssignmentOptions:id:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char *a12, uint64_t a13, uint64_t a14)
{
  v35 = a7;
  v30 = a4;
  v33 = a14;
  v34 = a6;
  v31 = a13;
  v32 = a5;
  v21 = sub_1D2AC5F94();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a8;
  v26 = *a12;
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  (*(v22 + 8))(v24, v21);

  *a9 = a1;
  *(a9 + 8) = a2;
  v27 = v30;
  *(a9 + 16) = a3;
  *(a9 + 24) = v27;
  v28 = v34;
  *(a9 + 32) = v32;
  *(a9 + 40) = v28;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = v35;
  *(a9 + 65) = v25;
  *(a9 + 66) = v26;
  v29 = v33;
  *(a9 + 72) = v31;
  *(a9 + 80) = v29;
}

uint64_t GenerationRecipe_V5.ImportedImage.init(id:imageData:hasPerson:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t GenerationRecipe_V5.PersonData.init(personID:faceID:faceImageData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  result = sub_1D2A47930(0, 0xF000000000000000);
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

ImagePlayground::GenerationRecipe_V5 __swiftcall GenerationRecipe_V5.init(ingredients:seed:)(Swift::OpaquePointer ingredients, Swift::Int_optional seed)
{
  *v2 = ingredients;
  *(v2 + 8) = seed.value;
  *(v2 + 16) = seed.is_nil;
  result.seed = seed;
  result.ingredients = ingredients;
  return result;
}

uint64_t GenerationRecipe_V5.Prompt.Entity.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D2A9C2C8(uint64_t a1)
{
  v2 = sub_1D2AA3A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9C304(uint64_t a1)
{
  v2 = sub_1D2AA3A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A9C340(uint64_t a1)
{
  v2 = sub_1D2AA3B3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9C37C(uint64_t a1)
{
  v2 = sub_1D2AA3B3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A9C3B8(uint64_t a1)
{
  v2 = sub_1D2AA3A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9C3F4(uint64_t a1)
{
  v2 = sub_1D2AA3A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A9C430(uint64_t a1)
{
  v2 = sub_1D2AA3AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9C46C(uint64_t a1)
{
  v2 = sub_1D2AA3AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V5.Prompt.Entity.Kind.encode(to:)(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705BB0, &qword_1D2AD5A60);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - v2;
  v3 = sub_1D2AC5F94();
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705BB8, &qword_1D2AD5A68);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705BC0, &qword_1D2AD5A70);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705BC8, &qword_1D2AD5A78);
  v14 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA3A40();
  v17 = v33;
  sub_1D2AC74A4();
  sub_1D2AA3C2C(v34, v13, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
  v18 = (*(v17 + 48))(v13, 2, v3);
  if (v18)
  {
    if (v18 == 1)
    {
      v36 = 0;
      sub_1D2AA3B3C();
      v19 = v35;
      sub_1D2AC7294();
      (*(v25 + 8))(v10, v26);
    }

    else
    {
      v37 = 1;
      sub_1D2AA3AE8();
      v19 = v35;
      sub_1D2AC7294();
      (*(v27 + 8))(v7, v28);
    }

    return (*(v14 + 8))(v16, v19);
  }

  else
  {
    v20 = v29;
    (*(v17 + 32))(v32, v13, v3);
    v38 = 2;
    sub_1D2AA3A94();
    v21 = v30;
    v22 = v35;
    sub_1D2AC7294();
    sub_1D2AA3B90(&qword_1EC704648, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v23 = v31;
    sub_1D2AC7304();
    (*(v20 + 8))(v21, v23);
    (*(v17 + 8))(v32, v3);
    return (*(v14 + 8))(v16, v22);
  }
}

uint64_t GenerationRecipe_V5.Prompt.Entity.Kind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705BF0, &qword_1D2AD5A80);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v45 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705BF8, &qword_1D2AD5A88);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v54 = &v45 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705C00, &qword_1D2AD5A90);
  v53 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705C08, &qword_1D2AD5A98);
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v18 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D2AA3A40();
  v19 = v57;
  sub_1D2AC7494();
  if (!v19)
  {
    v20 = v12;
    v21 = v53;
    v22 = v54;
    v45 = v15;
    v46 = v17;
    v23 = v55;
    v57 = 0;
    v24 = sub_1D2AC7284();
    v25 = (2 * *(v24 + 16)) | 1;
    v59 = v24;
    v60 = v24 + 32;
    v61 = 0;
    v62 = v25;
    v26 = sub_1D2A7615C();
    v27 = v11;
    if (v26 == 3 || v61 != v62 >> 1)
    {
      v32 = sub_1D2AC70B4();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
      *v34 = v20;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v56 + 8))(v27, v9);
    }

    else
    {
      if (v26)
      {
        if (v26 == 1)
        {
          v63 = 1;
          sub_1D2AA3AE8();
          v28 = v57;
          sub_1D2AC71E4();
          v29 = v56;
          if (!v28)
          {
            (*(v47 + 8))(v22, v49);
            (*(v29 + 8))(v11, v9);
            swift_unknownObjectRelease();
            v30 = sub_1D2AC5F94();
            v31 = v46;
            (*(*(v30 - 8) + 56))(v46, 2, 2, v30);
LABEL_17:
            v44 = v52;
            goto LABEL_18;
          }
        }

        else
        {
          v63 = 2;
          sub_1D2AA3A94();
          v37 = v23;
          v38 = v57;
          sub_1D2AC71E4();
          v39 = v52;
          v29 = v56;
          if (!v38)
          {
            v40 = sub_1D2AC5F94();
            sub_1D2AA3B90(&qword_1EC704688, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
            v41 = v45;
            v42 = v50;
            sub_1D2AC7264();
            (*(v51 + 8))(v37, v42);
            (*(v29 + 8))(v27, v9);
            swift_unknownObjectRelease();
            (*(*(v40 - 8) + 56))(v41, 0, 2, v40);
            v31 = v46;
            sub_1D2A9BFB8(v41, v46);
            v44 = v39;
LABEL_18:
            sub_1D2A9BFB8(v31, v44);
            return __swift_destroy_boxed_opaque_existential_0(v58);
          }
        }
      }

      else
      {
        v63 = 0;
        sub_1D2AA3B3C();
        v36 = v57;
        sub_1D2AC71E4();
        if (!v36)
        {
          (*(v21 + 8))(v8, v48);
          (*(v56 + 8))(v11, v9);
          swift_unknownObjectRelease();
          v43 = sub_1D2AC5F94();
          v31 = v46;
          (*(*(v43 - 8) + 56))(v46, 1, 2, v43);
          goto LABEL_17;
        }

        v29 = v56;
      }

      (*(v29 + 8))(v27, v9);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v58);
}

BOOL static GenerationRecipe_V5.Prompt.Entity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704C00, &qword_1D2ACE608);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  if (*a1 != *a2)
  {
    v14 = sub_1D2AC7354();
    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  v30 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity(0);
  v16 = *(v30 + 20);
  v17 = *(v11 + 48);
  sub_1D2AA3C2C(a1 + v16, v13, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
  sub_1D2AA3C2C(a2 + v16, &v13[v17], type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
  v18 = *(v5 + 48);
  v19 = v18(v13, 2, v4);
  if (!v19)
  {
    sub_1D2AA3C2C(v13, v10, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
    if (!v18(&v13[v17], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v17], v4);
      v20 = sub_1D2AC5F74();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      if ((v20 & 1) == 0)
      {
        sub_1D2AA3C94(v13, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
        return 0;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_10;
  }

  if (v19 == 1)
  {
    if (v18(&v13[v17], 2, v4) == 1)
    {
      goto LABEL_12;
    }

LABEL_10:
    sub_1D2A2E61C(v13, &qword_1EC704C00, &qword_1D2ACE608);
    return 0;
  }

  if (v18(&v13[v17], 2, v4) != 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  sub_1D2AA3C94(v13, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
  v22 = *(v30 + 24);
  v24 = *(a1 + v22);
  v23 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v27 = *v25;
  v26 = v25[1];
  return v24 == v27 && v23 == v26;
}

uint64_t sub_1D2A9D4F0(uint64_t a1)
{
  v2 = sub_1D2AA3BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9D52C(uint64_t a1)
{
  v2 = sub_1D2AA3BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V5.Prompt.Entity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705C10, &unk_1D2AD5AA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA3BD8();
  sub_1D2AC74A4();
  LOBYTE(v12) = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v9 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity(0);
    LOBYTE(v12) = 1;
    type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
    sub_1D2AA3B90(&qword_1EC705C20, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind, &protocol conformance descriptor for GenerationRecipe_V5.Prompt.Entity.Kind);
    sub_1D2AC7304();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    sub_1D2A71DA4(&qword_1EC7046B8, MEMORY[0x1E69E6538], MEMORY[0x1E69E66B0]);
    sub_1D2AC7304();
  }

  return (*(v6 + 8))(v8, v5);
}

void GenerationRecipe_V5.Prompt.Entity.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705C28, &qword_1D2AD5AB0);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA3BD8();
  v23 = v8;
  v12 = v24;
  sub_1D2AC7494();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v13 = v5;
    v14 = v21;
    v15 = v22;
    LOBYTE(v25) = 0;
    *v11 = sub_1D2AC7234();
    v11[1] = v16;
    v19 = v16;
    v24 = v11;
    LOBYTE(v25) = 1;
    sub_1D2AA3B90(&qword_1EC705C30, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind, &protocol conformance descriptor for GenerationRecipe_V5.Prompt.Entity.Kind);
    sub_1D2AC7264();
    sub_1D2A9BFB8(v13, v24 + *(v9 + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    v26 = 2;
    sub_1D2A71DA4(&qword_1EC7046D0, MEMORY[0x1E69E6560], MEMORY[0x1E69E66E0]);
    sub_1D2AC7264();
    (*(v14 + 8))(v23, v15);
    v17 = *(v9 + 24);
    v18 = v24;
    *(v24 + v17) = v25;
    sub_1D2AA3C2C(v18, v20, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_1D2AA3C94(v18, type metadata accessor for GenerationRecipe_V5.Prompt.Entity);
  }
}

BOOL sub_1D2A9DB94(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D2AC7354() & 1) == 0 || (_s15ImagePlayground19GenerationRecipe_V5V6PromptV6EntityV4KindO2eeoiySbAI_AItFZ_0(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v12 = *v10;
  v11 = v10[1];
  return v9 == v12 && v8 == v11;
}

uint64_t GenerationRecipe_V5.Prompt.id.getter()
{
  v1 = *v0;

  return v1;
}

BOOL static GenerationRecipe_V5.Prompt.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2A679A8(v2, v3);
}

uint64_t sub_1D2A9DCC8(uint64_t a1)
{
  v2 = sub_1D2AA3CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9DD04(uint64_t a1)
{
  v2 = sub_1D2AA3CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V5.Prompt.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705C38, &qword_1D2AD5AB8);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA3CF4();
  sub_1D2AC74A4();
  v13 = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705C48, &qword_1D2AD5AC0);
    sub_1D2AA3D48(&qword_1EC705C50, &qword_1EC705C58, &protocol conformance descriptor for GenerationRecipe_V5.Prompt.Entity, MEMORY[0x1E69E6300]);
    sub_1D2AC7304();
  }

  return (*(v10 + 8))(v6, v4);
}

void GenerationRecipe_V5.Prompt.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705C60, &qword_1D2AD5AC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA3CF4();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v16 = 0;
    v9 = sub_1D2AC7234();
    v11 = v10;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705C48, &qword_1D2AD5AC0);
    v15 = 1;
    sub_1D2AA3D48(&qword_1EC705C68, &qword_1EC705C70, &protocol conformance descriptor for GenerationRecipe_V5.Prompt.Entity, MEMORY[0x1E69E6330]);
    sub_1D2AC7264();
    (*(v6 + 8))(v8, v5);
    v13 = v14[1];
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v13;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

BOOL sub_1D2A9E1AC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2A679A8(v2, v3);
}

uint64_t GenerationRecipe_V5.DrawOnImageRecipe.AssignmentOptions.id.getter()
{
  if (*v0)
  {
    return 0x69646E656C426F6ELL;
  }

  else
  {
    return 0x646E656C62;
  }
}

uint64_t sub_1D2A9E274(uint64_t a1)
{
  v2 = sub_1D2AA3E8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9E2B0(uint64_t a1)
{
  v2 = sub_1D2AA3E8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A9E2EC(uint64_t a1)
{
  v2 = sub_1D2AA3DE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9E328(uint64_t a1)
{
  v2 = sub_1D2AA3DE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A9E364(uint64_t a1)
{
  v2 = sub_1D2AA3E38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9E3A0(uint64_t a1)
{
  v2 = sub_1D2AA3E38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V5.DrawOnImageRecipe.AssignmentOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705C78, &qword_1D2AD5AD0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705C80, &qword_1D2AD5AD8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705C88, &qword_1D2AD5AE0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA3DE4();
  sub_1D2AC74A4();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D2AA3E38();
    v14 = v18;
    sub_1D2AC7294();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D2AA3E8C();
    sub_1D2AC7294();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t GenerationRecipe_V5.DrawOnImageRecipe.AssignmentOptions.hashValue.getter()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t GenerationRecipe_V5.DrawOnImageRecipe.AssignmentOptions.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705CA8, &qword_1D2AD5AE8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705CB0, &qword_1D2AD5AF0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705CB8, &qword_1D2AD5AF8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA3DE4();
  v12 = v31;
  sub_1D2AC7494();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1D2AC7284();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D2A76160();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D2AC70B4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
      *v22 = &type metadata for GenerationRecipe_V5.DrawOnImageRecipe.AssignmentOptions;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1D2AA3E38();
        sub_1D2AC71E4();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D2AA3E8C();
        sub_1D2AC71E4();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

unint64_t GenerationRecipe_V5.DrawOnImageRecipe.SanitizationCategory.id.getter()
{
  v1 = 0x6E6153746F4E6F64;
  v2 = 0xD000000000000019;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D2A9EC90(uint64_t a1)
{
  v2 = sub_1D2AA3EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9ECCC(uint64_t a1)
{
  v2 = sub_1D2AA3EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A9ED08(uint64_t a1)
{
  v2 = sub_1D2AA4030();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9ED44(uint64_t a1)
{
  v2 = sub_1D2AA4030();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A9ED80(uint64_t a1)
{
  v2 = sub_1D2AA3F88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9EDBC(uint64_t a1)
{
  v2 = sub_1D2AA3F88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A9EDF8(uint64_t a1)
{
  v2 = sub_1D2AA3F34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9EE34(uint64_t a1)
{
  v2 = sub_1D2AA3F34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A9EE70(uint64_t a1)
{
  v2 = sub_1D2AA3FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9EEAC(uint64_t a1)
{
  v2 = sub_1D2AA3FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V5.DrawOnImageRecipe.SanitizationCategory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705CC0, &qword_1D2AD5B00);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705CC8, &qword_1D2AD5B08);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705CD0, &qword_1D2AD5B10);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705CD8, &qword_1D2AD5B18);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705CE0, &qword_1D2AD5B20);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA3EE0();
  sub_1D2AC74A4();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1D2AA3F88();
      v18 = v27;
      sub_1D2AC7294();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1D2AA3F34();
      v18 = v30;
      sub_1D2AC7294();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1D2AA3FDC();
    v18 = v24;
    sub_1D2AC7294();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1D2AA4030();
  sub_1D2AC7294();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t GenerationRecipe_V5.DrawOnImageRecipe.SanitizationCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t GenerationRecipe_V5.DrawOnImageRecipe.SanitizationCategory.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705D10, &qword_1D2AD5B28);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705D18, &qword_1D2AD5B30);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705D20, &qword_1D2AD5B38);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705D28, &qword_1D2AD5B40);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705D30, &qword_1D2AD5B48);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D2AA3EE0();
  v15 = v46;
  sub_1D2AC7494();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1D2AC7284();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1D2A76164();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1D2AC70B4();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
      *v28 = &type metadata for GenerationRecipe_V5.DrawOnImageRecipe.SanitizationCategory;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1D2AA3FDC();
        v32 = v35;
        sub_1D2AC71E4();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1D2AA4030();
        v25 = v35;
        sub_1D2AC71E4();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_0(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1D2AA3F88();
      v31 = v35;
      sub_1D2AC71E4();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1D2AA3F34();
      v33 = v35;
      sub_1D2AC71E4();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v47);
}

uint64_t GenerationRecipe_V5.DrawOnImageRecipe.baseImageData.getter()
{
  v1 = *v0;
  sub_1D2A479A0(*v0, *(v0 + 8));
  return v1;
}

uint64_t GenerationRecipe_V5.DrawOnImageRecipe.sketchImageData.getter()
{
  v1 = *(v0 + 16);
  sub_1D2A479A0(v1, *(v0 + 24));
  return v1;
}

uint64_t GenerationRecipe_V5.DrawOnImageRecipe.sketchMaskData.getter()
{
  v1 = *(v0 + 32);
  sub_1D2A479A0(v1, *(v0 + 40));
  return v1;
}

uint64_t GenerationRecipe_V5.DrawOnImageRecipe.id.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void GenerationRecipe_V5.DrawOnImageRecipe.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_1D2A9FB78(uint64_t a1)
{
  v2 = sub_1D2AA4084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A9FBB4(uint64_t a1)
{
  v2 = sub_1D2AA4084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V5.DrawOnImageRecipe.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705D38, &qword_1D2AD5B50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v9;
  v10 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = v10;
  v26 = *(v1 + 64);
  LODWORD(v10) = *(v1 + 65);
  v17 = *(v1 + 66);
  v18 = v10;
  v11 = *(v1 + 80);
  v16[0] = *(v1 + 72);
  v16[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A479A0(v7, v8);
  sub_1D2AA4084();
  sub_1D2AC74A4();
  v24 = v7;
  v25 = v8;
  v27 = 0;
  sub_1D2A722BC();
  v12 = v23;
  sub_1D2AC72C4();
  if (v12)
  {
    sub_1D2A47930(v24, v25);
  }

  else
  {
    v14 = v19;
    v13 = v20;
    sub_1D2A47930(v24, v25);
    v24 = v22;
    v25 = v21;
    v27 = 1;
    sub_1D2A479A0(v22, v21);
    sub_1D2AC72C4();
    sub_1D2A47930(v24, v25);
    v24 = v13;
    v25 = v14;
    v27 = 2;
    sub_1D2A479A0(v13, v14);
    sub_1D2AC72C4();
    sub_1D2A47930(v24, v25);
    LOBYTE(v24) = 3;
    sub_1D2AC72F4();
    LOBYTE(v24) = 4;
    sub_1D2AC72F4();
    LOBYTE(v24) = 5;
    sub_1D2AC72E4();
    LOBYTE(v24) = v18;
    v27 = 6;
    sub_1D2AA40D8();
    sub_1D2AC7304();
    LOBYTE(v24) = v17;
    v27 = 7;
    sub_1D2AA412C();
    sub_1D2AC7304();
    LOBYTE(v24) = 8;
    sub_1D2AC72D4();
  }

  return (*(v4 + 8))(v6, v3);
}

void GenerationRecipe_V5.DrawOnImageRecipe.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705D58, &qword_1D2AD5B58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = sub_1D2AC5F94();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  v54 = v13;
  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA4084();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v36[0]) = 0;
    sub_1D2A723B8();
    sub_1D2AC7224();
    v35 = v41[0];
    LOBYTE(v36[0]) = 1;
    sub_1D2AC7224();
    v34 = v41[0];
    LOBYTE(v36[0]) = 2;
    sub_1D2AC7224();
    v33 = v41[0];
    LOBYTE(v41[0]) = 3;
    sub_1D2AC7254();
    v15 = v14;
    LOBYTE(v41[0]) = 4;
    sub_1D2AC7254();
    v17 = v16;
    LOBYTE(v41[0]) = 5;
    v18 = sub_1D2AC7244();
    LOBYTE(v36[0]) = 6;
    sub_1D2AA4180();
    sub_1D2AC7264();
    v19 = v41[0];
    LOBYTE(v36[0]) = 7;
    sub_1D2AA41D4();
    sub_1D2AC7264();
    v32 = LOBYTE(v41[0]);
    v51 = 8;
    v20 = sub_1D2AC7234();
    v31 = v21;
    v22 = v20;
    LOBYTE(v18) = v18 & 1;
    (*(v6 + 8))(v8, v5);

    v25 = v35;
    v23 = v25 >> 64;
    v24 = v25;
    v36[0] = v35;
    v36[1] = v34;
    v37 = v33;
    *&v38 = v15;
    *(&v38 + 1) = v17;
    LOBYTE(v39) = v18;
    BYTE1(v39) = v19;
    BYTE2(v39) = v32;
    *(&v39 + 3) = v52;
    BYTE7(v39) = v53;
    v26 = v31;
    *(&v39 + 1) = v22;
    v40 = v31;
    v27 = v34;
    *a2 = v35;
    *(a2 + 16) = v27;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    *(a2 + 80) = v26;
    *(a2 + 48) = v29;
    *(a2 + 64) = v30;
    *(a2 + 32) = v28;
    sub_1D2AA4228(v36, v41);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v41[0] = __PAIR128__(v23, v24);
    v41[1] = v34;
    v41[2] = v33;
    v42 = v15;
    v43 = v17;
    v44 = v18;
    v45 = v19;
    v46 = v32;
    v47 = v52;
    v48 = v53;
    v49 = v22;
    v50 = v26;
    sub_1D2AA4260(v41);
  }
}

uint64_t GenerationRecipe_V5.ImportedImage.id.getter()
{
  v1 = *v0;

  return v1;
}

void GenerationRecipe_V5.ImportedImage.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t GenerationRecipe_V5.ImportedImage.imageData.getter()
{
  v1 = *(v0 + 16);
  sub_1D2A479B4(v1, *(v0 + 24));
  return v1;
}

uint64_t GenerationRecipe_V5.ImportedImage.imageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D2A47944(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static GenerationRecipe_V5.ImportedImage.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2AC7354();
  }
}

uint64_t sub_1D2AA07A4(uint64_t a1)
{
  v2 = sub_1D2AA4290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA07E0(uint64_t a1)
{
  v2 = sub_1D2AA4290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V5.ImportedImage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705D70, &qword_1D2AD5B60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  v16 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA4290();
  sub_1D2AC74A4();
  LOBYTE(v14) = 0;
  v8 = v13;
  sub_1D2AC72D4();
  if (!v8)
  {
    v14 = v12;
    v15 = v11;
    v17 = 1;
    sub_1D2A479B4(v12, v11);
    sub_1D2A722BC();
    sub_1D2AC7304();
    sub_1D2A47944(v14, v15);
    LOBYTE(v14) = 2;
    sub_1D2AC72E4();
  }

  return (*(v4 + 8))(v6, v3);
}

void GenerationRecipe_V5.ImportedImage.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705D80, &qword_1D2AD5B68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA4290();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v20) = 0;
    v9 = sub_1D2AC7234();
    v19 = v10;
    v22 = 1;
    sub_1D2A723B8();
    sub_1D2AC7264();
    v17 = v20;
    v18 = v21;
    LOBYTE(v20) = 2;
    v11 = sub_1D2AC7244();
    (*(v6 + 8))(v8, v5);
    v12 = v11 & 1;
    v14 = v18;
    v13 = v19;
    *a2 = v9;
    *(a2 + 8) = v13;
    v15 = v17;
    *(a2 + 16) = v17;
    *(a2 + 24) = v14;
    *(a2 + 32) = v12;

    sub_1D2A479B4(v15, v14);
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_1D2A47944(v15, v14);
  }
}

uint64_t GenerationRecipe_V5.PersonData.id.getter()
{
  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  v4 = *v0;

  MEMORY[0x1D38A7100](v1, v2);

  return v4;
}

uint64_t GenerationRecipe_V5.PersonData.personID.getter()
{
  v1 = *v0;

  return v1;
}

void GenerationRecipe_V5.PersonData.personID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t GenerationRecipe_V5.PersonData.faceID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void GenerationRecipe_V5.PersonData.faceID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t GenerationRecipe_V5.PersonData.faceImageData.getter()
{
  v1 = *(v0 + 32);
  sub_1D2A479A0(v1, *(v0 + 40));
  return v1;
}

uint64_t GenerationRecipe_V5.PersonData.faceImageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D2A47930(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1D2AA0EBC(uint64_t a1)
{
  v2 = sub_1D2AA42E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA0EF8(uint64_t a1)
{
  v2 = sub_1D2AA42E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V5.PersonData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705D88, &qword_1D2AD5B70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA42E4();
  sub_1D2AC74A4();
  LOBYTE(v19) = 0;
  v9 = v18;
  sub_1D2AC72D4();
  if (!v9)
  {
    v12 = v14;
    v11 = v15;
    LOBYTE(v19) = 1;
    sub_1D2AC72A4();
    v19 = v11;
    v20 = v12;
    v21 = 2;
    sub_1D2A479A0(v11, v12);
    sub_1D2A722BC();
    sub_1D2AC72C4();
    sub_1D2A47930(v19, v20);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GenerationRecipe_V5.PersonData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705D98, &qword_1D2AD5B78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA42E4();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v19 = 0;
    v20 = 0xF000000000000000;
  }

  else
  {
    LOBYTE(v23) = 0;
    v9 = sub_1D2AC7234();
    v12 = v11;
    v22 = v9;
    LOBYTE(v23) = 1;
    v13 = sub_1D2AC7204();
    v15 = v14;
    v21 = v13;
    v25 = 2;
    sub_1D2A723B8();
    sub_1D2AC7224();
    (*(v6 + 8))(v8, v5);
    v16 = v23;
    v17 = v24;
    sub_1D2A47930(0, 0xF000000000000000);
    v18 = v21;
    *a2 = v22;
    a2[1] = v12;
    a2[2] = v18;
    a2[3] = v15;
    a2[4] = v16;
    a2[5] = v17;

    sub_1D2A479A0(v16, v17);
    __swift_destroy_boxed_opaque_existential_0(a1);

    v19 = v16;
    v20 = v17;
  }

  return sub_1D2A47930(v19, v20);
}

uint64_t GenerationRecipe_V5.Ingredient.id.getter()
{
  v1 = *v0;
  v2 = v0[8] >> 61;
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      v1 = v0[9];
    }

    goto LABEL_12;
  }

  if (v2 != 4)
  {
LABEL_12:

    return v1;
  }

  v3 = v0[3];
  if (v3)
  {
    v4 = v0[2];
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v0[3];
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v7 = *v0;

  MEMORY[0x1D38A7100](v4, v5);

  return v7;
}

uint64_t sub_1D2AA14D8(uint64_t a1)
{
  v2 = sub_1D2AA4338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA1514(uint64_t a1)
{
  v2 = sub_1D2AA4338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA1550(uint64_t a1)
{
  v2 = sub_1D2AA4680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA158C(uint64_t a1)
{
  v2 = sub_1D2AA4680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA15C8(uint64_t a1)
{
  v2 = sub_1D2AA4530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA1604(uint64_t a1)
{
  v2 = sub_1D2AA4530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA1640(uint64_t a1)
{
  v2 = sub_1D2AA4488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA167C(uint64_t a1)
{
  v2 = sub_1D2AA4488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA16B8(uint64_t a1)
{
  v2 = sub_1D2AA43E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA16F4(uint64_t a1)
{
  v2 = sub_1D2AA43E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA1730(uint64_t a1)
{
  v2 = sub_1D2AA45D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA176C(uint64_t a1)
{
  v2 = sub_1D2AA45D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA17A8(uint64_t a1)
{
  v2 = sub_1D2AA438C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA17E4(uint64_t a1)
{
  v2 = sub_1D2AA438C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V5.Ingredient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705DA0, &qword_1D2AD5B80);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v27 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705DA8, &qword_1D2AD5B88);
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v27 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705DB0, &qword_1D2AD5B90);
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v27 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705DB8, &qword_1D2AD5B98);
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v27 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705DC0, &qword_1D2AD5BA0);
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705DC8, &qword_1D2AD5BA8);
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705DD0, &qword_1D2AD5BB0);
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = v1[1];
  v52 = *v1;
  v53 = v15;
  v16 = v1[3];
  v51 = v1[2];
  v50 = *(v1 + 32);
  v48 = *(v1 + 33) | ((*(v1 + 37) | (*(v1 + 39) << 16)) << 32);
  v49 = v16;
  v17 = v1[6];
  v47 = v1[5];
  v30 = v17;
  v18 = v1[8];
  v29 = v1[7];
  v19 = v1[10];
  v28 = v1[9];
  v27 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA4338();
  sub_1D2AC74A4();
  v20 = v18 >> 61;
  if ((v18 >> 61) > 2)
  {
    if (v20 == 3)
    {
      LOBYTE(v55) = 3;
      sub_1D2AA4488();
      v22 = v36;
      v21 = v14;
      sub_1D2AC7294();
      v55 = v52;
      v56 = v53;
      v57 = v51;
      v58 = v49;
      v59 = v50 & 1;
      sub_1D2AA44DC();
      v23 = v40;
      sub_1D2AC7304();
      v24 = &v70;
    }

    else
    {
      v21 = v14;
      if (v20 != 4)
      {
        LOBYTE(v55) = 5;
        sub_1D2AA438C();
        v22 = v42;
        sub_1D2AC7294();
        v23 = v46;
        sub_1D2AC72D4();
        v26 = v45;
        goto LABEL_12;
      }

      LOBYTE(v55) = 4;
      sub_1D2AA43E0();
      v22 = v41;
      sub_1D2AC7294();
      v55 = v52;
      v56 = v53;
      v57 = v51;
      v58 = v49;
      v59 = v50;
      v62 = BYTE6(v48);
      v61 = WORD2(v48);
      v60 = v48;
      v63 = v47;
      sub_1D2AA4434();
      v23 = v44;
      sub_1D2AC7304();
      v24 = &v71;
    }
  }

  else
  {
    if (!v20)
    {
      LOBYTE(v55) = 0;
      sub_1D2AA4680();
      sub_1D2AC7294();
      sub_1D2AC72D4();
      (*(v31 + 8))(v11, v9);
      return (*(v54 + 8))(v14, v12);
    }

    v21 = v14;
    if (v20 == 1)
    {
      LOBYTE(v55) = 1;
      sub_1D2AA45D8();
      v22 = v32;
      sub_1D2AC7294();
      v55 = v52;
      v56 = v53;
      v57 = v51;
      sub_1D2AA462C();
      v23 = v34;
      sub_1D2AC7304();
      v24 = &v68;
    }

    else
    {
      LOBYTE(v55) = 2;
      sub_1D2AA4530();
      v22 = v35;
      sub_1D2AC7294();
      v55 = v52;
      v56 = v53;
      v57 = v51;
      v58 = v49;
      v59 = v50;
      v62 = BYTE6(v48);
      v61 = WORD2(v48);
      v60 = v48;
      v63 = v47;
      v64 = v30;
      v65 = v29;
      v66 = v18 & 0x1FFFFFFFFFFFFFFFLL;
      v67 = v28;
      v68 = v27;
      sub_1D2AA4584();
      v23 = v38;
      sub_1D2AC7304();
      v24 = &v69;
    }
  }

  v26 = *(v24 - 32);
LABEL_12:
  (*(v26 + 8))(v22, v23);
  return (*(v54 + 8))(v21, v12);
}

uint64_t GenerationRecipe_V5.Ingredient.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705E30, &qword_1D2AD5BB8);
  v69 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v74 = &v56 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705E38, &qword_1D2AD5BC0);
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v73 = &v56 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705E40, &qword_1D2AD5BC8);
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v72 = &v56 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705E48, &qword_1D2AD5BD0);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v71 = &v56 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705E50, &qword_1D2AD5BD8);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v8 = &v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705E58, &qword_1D2AD5BE0);
  v59 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705E60, &qword_1D2AD5BE8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - v14;
  v16 = a1[3];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D2AA4338();
  v17 = v75;
  sub_1D2AC7494();
  if (!v17)
  {
    v18 = v11;
    v57 = v9;
    v58 = v8;
    v75 = 0;
    v20 = v71;
    v19 = v72;
    v21 = v73;
    v22 = v74;
    v23 = sub_1D2AC7284();
    v24 = (2 * *(v23 + 16)) | 1;
    v83 = v23;
    v84 = v23 + 32;
    v85 = 0;
    v86 = v24;
    v25 = sub_1D2A76168();
    if (v25 == 6 || v85 != v86 >> 1)
    {
      v36 = sub_1D2AC70B4();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
      *v38 = &type metadata for GenerationRecipe_V5.Ingredient;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
    }

    else if (v25 > 2u)
    {
      if (v25 == 3)
      {
        v45 = v70;
        LOBYTE(v76) = 3;
        sub_1D2AA4488();
        v46 = v75;
        sub_1D2AC71E4();
        if (!v46)
        {
          sub_1D2AA4728();
          v47 = v65;
          sub_1D2AC7264();
          (*(v66 + 8))(v19, v47);
          (*(v13 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v33 = v76;
          v32 = v77;
          v35 = v78;
          *&v29 = v79;
          v34 = 0x6000000000000000;
LABEL_25:
          *v45 = v33;
          *(v45 + 8) = v32;
          *(v45 + 16) = v35;
          *(v45 + 32) = v29;
          *(v45 + 48) = v30;
          *(v45 + 64) = v34;
          *(v45 + 72) = v31;
          return __swift_destroy_boxed_opaque_existential_0(v87);
        }
      }

      else
      {
        v40 = v75;
        if (v25 == 4)
        {
          LOBYTE(v76) = 4;
          sub_1D2AA43E0();
          sub_1D2AC71E4();
          if (!v40)
          {
            sub_1D2AA46D4();
            v41 = v67;
            sub_1D2AC7264();
            (*(v68 + 8))(v21, v41);
            (*(v13 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v33 = v76;
            v32 = v77;
            v34 = 0x8000000000000000;
            v35 = v78;
            v29 = v79;
            goto LABEL_24;
          }
        }

        else
        {
          LOBYTE(v76) = 5;
          sub_1D2AA438C();
          v50 = v22;
          sub_1D2AC71E4();
          if (!v40)
          {
            v51 = v60;
            v52 = sub_1D2AC7234();
            v32 = v54;
            v55 = v52;
            (*(v69 + 8))(v50, v51);
            v33 = v55;
            (*(v13 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v34 = 0xA000000000000000;
            goto LABEL_24;
          }
        }
      }
    }

    else if (v25)
    {
      if (v25 == 1)
      {
        LOBYTE(v76) = 1;
        sub_1D2AA45D8();
        v26 = v58;
        v27 = v75;
        sub_1D2AC71E4();
        if (!v27)
        {
          sub_1D2AA47D0();
          v28 = v62;
          sub_1D2AC7264();
          (*(v61 + 8))(v26, v28);
          (*(v13 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v33 = v76;
          v32 = v77;
          v34 = 0x2000000000000000;
          *&v35 = v78;
LABEL_24:
          v45 = v70;
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v76) = 2;
        sub_1D2AA4530();
        v48 = v75;
        sub_1D2AC71E4();
        if (!v48)
        {
          sub_1D2AA477C();
          v49 = v64;
          sub_1D2AC7264();
          (*(v63 + 8))(v20, v49);
          (*(v13 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v33 = v76;
          v32 = v77;
          v35 = v78;
          v29 = v79;
          v30 = v80;
          v31 = v82;
          v34 = v81 & 0x10301 | 0x4000000000000000;
          goto LABEL_24;
        }
      }
    }

    else
    {
      LOBYTE(v76) = 0;
      sub_1D2AA4680();
      v42 = v18;
      v43 = v75;
      sub_1D2AC71E4();
      if (!v43)
      {
        v44 = v57;
        v33 = sub_1D2AC7234();
        v32 = v53;
        (*(v59 + 8))(v42, v44);
        (*(v13 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v34 = 0;
        goto LABEL_24;
      }
    }

    (*(v13 + 8))(v15, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v87);
}

uint64_t sub_1D2AA2BD0@<X0>(uint64_t *a1@<X8>)
{
  result = GenerationRecipe_V5.Ingredient.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t GenerationRecipe_V5.id.getter()
{
  v1 = *v0;
  v16 = v0[1];
  v2 = *(v0 + 16);
  v25 = 0;
  v26 = 0xE000000000000000;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = v4[1];
      v19 = *v4;
      v6 = v4[2];
      v7 = *(v4 + 10);
      v8 = v4[4];
      v22 = v4[3];
      v23 = v8;
      v20 = v5;
      v24 = v7;
      v21 = v6;
      v9 = *(&v19 + 1);
      v10 = v19;
      v11 = v8 >> 61;
      if ((v8 >> 61) > 2)
      {
        if (v11 == 4)
        {
          if (*(&v20 + 1))
          {
            v12 = v20;
          }

          else
          {
            v12 = 0;
          }

          if (*(&v20 + 1))
          {
            v13 = *(&v20 + 1);
          }

          else
          {
            v13 = 0xE000000000000000;
          }

          v17 = v19;
          sub_1D2A75FE0(&v19, v18);

          MEMORY[0x1D38A7100](v12, v13);

          v9 = *(&v17 + 1);
          v10 = v17;
          goto LABEL_4;
        }
      }

      else if (v11 >= 2)
      {
        v10 = *(&v23 + 1);
        v9 = v24;
      }

      sub_1D2A75FE0(&v19, v18);

LABEL_4:
      MEMORY[0x1D38A7100](v10, v9);
      sub_1D2A7603C(&v19);

      v4 = (v4 + 88);
      --v3;
    }

    while (v3);
  }

  if ((v2 & 1) == 0)
  {
    *&v19 = v16;
    sub_1D2A87D04();
    v14 = sub_1D2AC6FE4();
    MEMORY[0x1D38A7100](v14);
  }

  return v25;
}

uint64_t static GenerationRecipe_V5.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1D2A677C8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D2AA2E04(uint64_t a1)
{
  v2 = sub_1D2AA4824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA2E40(uint64_t a1)
{
  v2 = sub_1D2AA4824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V5.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705E88, &qword_1D2AD5BF0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  v10[3] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA4824();

  sub_1D2AC74A4();
  v14 = v8;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705E98, &qword_1D2AD5BF8);
  sub_1D2AA48CC(&qword_1EC705EA0, sub_1D2AA4878, MEMORY[0x1E69E6300]);
  sub_1D2AC7304();

  if (!v2)
  {
    v12 = 1;
    sub_1D2AC72B4();
  }

  return (*(v5 + 8))(v7, v4);
}

void GenerationRecipe_V5.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705EB0, &qword_1D2AD5C00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AA4824();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705E98, &qword_1D2AD5BF8);
    v13[15] = 0;
    sub_1D2AA48CC(&qword_1EC705EB8, sub_1D2AA4944, MEMORY[0x1E69E6330]);
    sub_1D2AC7264();
    v9 = v14;
    v13[14] = 1;
    v10 = sub_1D2AC7214();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12 & 1;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_1D2AA32D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1D2A677C8(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D2AA3338@<X0>(uint64_t *a1@<X8>)
{
  result = GenerationRecipe_V5.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s15ImagePlayground19GenerationRecipe_V5V10IngredientO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  *v34 = a1[2];
  *&v34[16] = v3;
  v4 = a1[3];
  *v35 = a1[4];
  v5 = a1[1];
  v32 = *a1;
  v33 = v5;
  v6 = a2[3];
  v7 = a2[1];
  v38 = a2[2];
  v39 = v6;
  v8 = a2[3];
  *v40 = a2[4];
  v9 = a2[1];
  v36 = *a2;
  v37 = v9;
  v41[0] = v32;
  v41[1] = v2;
  v10 = a1[4];
  v41[3] = v4;
  v41[4] = v10;
  v41[2] = *v34;
  v45 = v38;
  v46 = v8;
  v47 = a2[4];
  v44 = v7;
  *&v35[16] = *(a1 + 10);
  *&v40[16] = *(a2 + 10);
  v11 = *(a2 + 10);
  v42 = *(a1 + 10);
  v48 = v11;
  v43 = v36;
  v12 = v5;
  v13 = *v35 >> 61;
  if ((*v35 >> 61) > 2)
  {
    if (v13 == 3)
    {
      if (*v40 >> 61 != 3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v13 == 4)
      {
        if (*v40 >> 61 != 4)
        {
          goto LABEL_23;
        }

        v20 = v32;
        v21 = v5;
        v22 = *v34;
        v19[0] = v36;
        v19[1] = v37;
        v19[2] = v38;
        sub_1D2A75FE0(&v36, v26);
        sub_1D2A75FE0(&v32, v26);
        sub_1D2A75FE0(&v36, v26);
        sub_1D2A75FE0(&v32, v26);
        v17 = _s15ImagePlayground19GenerationRecipe_V7V10PersonDataV2eeoiySbAE_AEtFZ_0(&v20, v19);
        goto LABEL_19;
      }

      if (*v40 >> 61 != 5)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    if (v13)
    {
      if (v13 == 1)
      {
        if (*v40 >> 61 == 1)
        {
          v14 = v37;
          if (v32 == v36 || (sub_1D2AC7354() & 1) != 0)
          {
            sub_1D2A75FE0(&v36, v26);
            sub_1D2A75FE0(&v32, v26);
            sub_1D2A75FE0(&v36, v26);
            sub_1D2A75FE0(&v32, v26);
            v15 = sub_1D2A679A8(v12, v14);
            sub_1D2A2E61C(v41, &qword_1EC7060F0, &unk_1D2AD8390);
            sub_1D2A7603C(&v36);
            sub_1D2A7603C(&v32);
            if (v15)
            {
              v16 = 1;
              return v16 & 1;
            }

LABEL_24:
            v16 = 0;
            return v16 & 1;
          }
        }

LABEL_23:
        sub_1D2A75FE0(&v36, v26);
        sub_1D2A75FE0(&v32, v26);
        sub_1D2A2E61C(v41, &qword_1EC7060F0, &unk_1D2AD8390);
        goto LABEL_24;
      }

      if (*v40 >> 61 != 2)
      {
        goto LABEL_23;
      }

      v26[0] = v32;
      v26[1] = v33;
      v28 = *&v34[8];
      v27 = *v34;
      v29 = *&v34[24];
      v30 = *v35 & 0x1FFFFFFFFFFFFFFFLL;
      v31 = *&v35[8];
      v20 = v36;
      v21 = v37;
      v22 = v38;
      v23 = v39;
      v24 = *v40 & 0x1FFFFFFFFFFFFFFFLL;
      v25 = *&v40[8];
      sub_1D2A75FE0(&v36, v19);
      sub_1D2A75FE0(&v32, v19);
      sub_1D2A75FE0(&v36, v19);
      sub_1D2A75FE0(&v32, v19);
      v17 = _s15ImagePlayground19GenerationRecipe_V7V06DrawOnaD0V2eeoiySbAE_AEtFZ_0(v26, &v20);
LABEL_19:
      v16 = v17;
      sub_1D2A2E61C(v41, &qword_1EC7060F0, &unk_1D2AD8390);
      sub_1D2A7603C(&v36);
      sub_1D2A7603C(&v32);
      return v16 & 1;
    }

    if (*v40 >> 61)
    {
      goto LABEL_23;
    }
  }

  if (v32 == v36)
  {
    sub_1D2A75FE0(&v36, v26);
    sub_1D2A75FE0(&v32, v26);
    sub_1D2A2E61C(v41, &qword_1EC7060F0, &unk_1D2AD8390);
    v16 = 1;
  }

  else
  {
    v16 = sub_1D2AC7354();
    sub_1D2A75FE0(&v36, v26);
    sub_1D2A75FE0(&v32, v26);
    sub_1D2A2E61C(v41, &qword_1EC7060F0, &unk_1D2AD8390);
  }

  return v16 & 1;
}

uint64_t _s15ImagePlayground19GenerationRecipe_V5V6PromptV6EntityV4KindO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704C00, &qword_1D2ACE608);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D2AA3C2C(a1, &v21 - v13, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
  sub_1D2AA3C2C(a2, &v14[v15], type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (!v17)
  {
    sub_1D2AA3C2C(v14, v10, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
    if (!v16(&v14[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = sub_1D2AC5F74();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_1D2AA3C94(v14, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v14[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v14[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_1D2A2E61C(v14, &qword_1EC704C00, &qword_1D2ACE608);
    v18 = 0;
    return v18 & 1;
  }

  sub_1D2AA3C94(v14, type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind);
  v18 = 1;
  return v18 & 1;
}

unint64_t sub_1D2AA3A40()
{
  result = qword_1EC705BD0;
  if (!qword_1EC705BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705BD0);
  }

  return result;
}

unint64_t sub_1D2AA3A94()
{
  result = qword_1EC705BD8;
  if (!qword_1EC705BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705BD8);
  }

  return result;
}

unint64_t sub_1D2AA3AE8()
{
  result = qword_1EC705BE0;
  if (!qword_1EC705BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705BE0);
  }

  return result;
}

unint64_t sub_1D2AA3B3C()
{
  result = qword_1EC705BE8;
  if (!qword_1EC705BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705BE8);
  }

  return result;
}

uint64_t sub_1D2AA3B90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D2AA3BD8()
{
  result = qword_1EC705C18;
  if (!qword_1EC705C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705C18);
  }

  return result;
}

uint64_t sub_1D2AA3C2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2AA3C94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2AA3CF4()
{
  result = qword_1EC705C40;
  if (!qword_1EC705C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705C40);
  }

  return result;
}

uint64_t sub_1D2AA3D48(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC705C48, &qword_1D2AD5AC0);
    sub_1D2AA3B90(a2, type metadata accessor for GenerationRecipe_V5.Prompt.Entity, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2AA3DE4()
{
  result = qword_1EC705C90;
  if (!qword_1EC705C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705C90);
  }

  return result;
}

unint64_t sub_1D2AA3E38()
{
  result = qword_1EC705C98;
  if (!qword_1EC705C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705C98);
  }

  return result;
}

unint64_t sub_1D2AA3E8C()
{
  result = qword_1EC705CA0;
  if (!qword_1EC705CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705CA0);
  }

  return result;
}

unint64_t sub_1D2AA3EE0()
{
  result = qword_1EC705CE8;
  if (!qword_1EC705CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705CE8);
  }

  return result;
}

unint64_t sub_1D2AA3F34()
{
  result = qword_1EC705CF0;
  if (!qword_1EC705CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705CF0);
  }

  return result;
}

unint64_t sub_1D2AA3F88()
{
  result = qword_1EC705CF8;
  if (!qword_1EC705CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705CF8);
  }

  return result;
}

unint64_t sub_1D2AA3FDC()
{
  result = qword_1EC705D00;
  if (!qword_1EC705D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705D00);
  }

  return result;
}

unint64_t sub_1D2AA4030()
{
  result = qword_1EC705D08;
  if (!qword_1EC705D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705D08);
  }

  return result;
}

unint64_t sub_1D2AA4084()
{
  result = qword_1EC705D40;
  if (!qword_1EC705D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705D40);
  }

  return result;
}

unint64_t sub_1D2AA40D8()
{
  result = qword_1EC705D48;
  if (!qword_1EC705D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705D48);
  }

  return result;
}

unint64_t sub_1D2AA412C()
{
  result = qword_1EC705D50;
  if (!qword_1EC705D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705D50);
  }

  return result;
}

unint64_t sub_1D2AA4180()
{
  result = qword_1EC705D60;
  if (!qword_1EC705D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705D60);
  }

  return result;
}

unint64_t sub_1D2AA41D4()
{
  result = qword_1EC705D68;
  if (!qword_1EC705D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705D68);
  }

  return result;
}

unint64_t sub_1D2AA4290()
{
  result = qword_1EC705D78;
  if (!qword_1EC705D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705D78);
  }

  return result;
}

unint64_t sub_1D2AA42E4()
{
  result = qword_1EC705D90;
  if (!qword_1EC705D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705D90);
  }

  return result;
}

unint64_t sub_1D2AA4338()
{
  result = qword_1EC705DD8;
  if (!qword_1EC705DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705DD8);
  }

  return result;
}

unint64_t sub_1D2AA438C()
{
  result = qword_1EC705DE0;
  if (!qword_1EC705DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705DE0);
  }

  return result;
}

unint64_t sub_1D2AA43E0()
{
  result = qword_1EC705DE8;
  if (!qword_1EC705DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705DE8);
  }

  return result;
}

unint64_t sub_1D2AA4434()
{
  result = qword_1EC705DF0;
  if (!qword_1EC705DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705DF0);
  }

  return result;
}

unint64_t sub_1D2AA4488()
{
  result = qword_1EC705DF8;
  if (!qword_1EC705DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705DF8);
  }

  return result;
}

unint64_t sub_1D2AA44DC()
{
  result = qword_1EC705E00;
  if (!qword_1EC705E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705E00);
  }

  return result;
}

unint64_t sub_1D2AA4530()
{
  result = qword_1EC705E08;
  if (!qword_1EC705E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705E08);
  }

  return result;
}

unint64_t sub_1D2AA4584()
{
  result = qword_1EC705E10;
  if (!qword_1EC705E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705E10);
  }

  return result;
}

unint64_t sub_1D2AA45D8()
{
  result = qword_1EC705E18;
  if (!qword_1EC705E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705E18);
  }

  return result;
}

unint64_t sub_1D2AA462C()
{
  result = qword_1EC705E20;
  if (!qword_1EC705E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705E20);
  }

  return result;
}

unint64_t sub_1D2AA4680()
{
  result = qword_1EC705E28;
  if (!qword_1EC705E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705E28);
  }

  return result;
}

unint64_t sub_1D2AA46D4()
{
  result = qword_1EC705E68;
  if (!qword_1EC705E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705E68);
  }

  return result;
}

unint64_t sub_1D2AA4728()
{
  result = qword_1EC705E70;
  if (!qword_1EC705E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705E70);
  }

  return result;
}

unint64_t sub_1D2AA477C()
{
  result = qword_1EC705E78;
  if (!qword_1EC705E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705E78);
  }

  return result;
}

unint64_t sub_1D2AA47D0()
{
  result = qword_1EC705E80;
  if (!qword_1EC705E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705E80);
  }

  return result;
}

unint64_t sub_1D2AA4824()
{
  result = qword_1EC705E90;
  if (!qword_1EC705E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705E90);
  }

  return result;
}

unint64_t sub_1D2AA4878()
{
  result = qword_1EC705EA8;
  if (!qword_1EC705EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705EA8);
  }

  return result;
}

uint64_t sub_1D2AA48CC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC705E98, &qword_1D2AD5BF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2AA4944()
{
  result = qword_1EC705EC0;
  if (!qword_1EC705EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705EC0);
  }

  return result;
}

unint64_t sub_1D2AA499C()
{
  result = qword_1EC705EC8;
  if (!qword_1EC705EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705EC8);
  }

  return result;
}

unint64_t sub_1D2AA49F4()
{
  result = qword_1EC705ED0;
  if (!qword_1EC705ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705ED0);
  }

  return result;
}

void sub_1D2AA4A90(uint64_t a1)
{
  type metadata accessor for GenerationRecipe_V5.Prompt.Entity.Kind(319);
  if (v1 <= 0x3F)
  {
    sub_1D2A72FB0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D2AA4D4C()
{
  result = qword_1EC705ED8;
  if (!qword_1EC705ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705ED8);
  }

  return result;
}

unint64_t sub_1D2AA4DA4()
{
  result = qword_1EC705EE0;
  if (!qword_1EC705EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705EE0);
  }

  return result;
}

unint64_t sub_1D2AA4DFC()
{
  result = qword_1EC705EE8;
  if (!qword_1EC705EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705EE8);
  }

  return result;
}

unint64_t sub_1D2AA4E54()
{
  result = qword_1EC705EF0;
  if (!qword_1EC705EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705EF0);
  }

  return result;
}

unint64_t sub_1D2AA4EAC()
{
  result = qword_1EC705EF8;
  if (!qword_1EC705EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705EF8);
  }

  return result;
}

unint64_t sub_1D2AA4F04()
{
  result = qword_1EC705F00;
  if (!qword_1EC705F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F00);
  }

  return result;
}

unint64_t sub_1D2AA4F5C()
{
  result = qword_1EC705F08;
  if (!qword_1EC705F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F08);
  }

  return result;
}

unint64_t sub_1D2AA4FB4()
{
  result = qword_1EC705F10;
  if (!qword_1EC705F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F10);
  }

  return result;
}

unint64_t sub_1D2AA500C()
{
  result = qword_1EC705F18;
  if (!qword_1EC705F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F18);
  }

  return result;
}

unint64_t sub_1D2AA5064()
{
  result = qword_1EC705F20;
  if (!qword_1EC705F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F20);
  }

  return result;
}

unint64_t sub_1D2AA50BC()
{
  result = qword_1EC705F28;
  if (!qword_1EC705F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F28);
  }

  return result;
}

unint64_t sub_1D2AA5114()
{
  result = qword_1EC705F30;
  if (!qword_1EC705F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F30);
  }

  return result;
}

unint64_t sub_1D2AA516C()
{
  result = qword_1EC705F38;
  if (!qword_1EC705F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F38);
  }

  return result;
}

unint64_t sub_1D2AA51C4()
{
  result = qword_1EC705F40;
  if (!qword_1EC705F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F40);
  }

  return result;
}

unint64_t sub_1D2AA521C()
{
  result = qword_1EC705F48;
  if (!qword_1EC705F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F48);
  }

  return result;
}

unint64_t sub_1D2AA5274()
{
  result = qword_1EC705F50;
  if (!qword_1EC705F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F50);
  }

  return result;
}

unint64_t sub_1D2AA52CC()
{
  result = qword_1EC705F58;
  if (!qword_1EC705F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F58);
  }

  return result;
}

unint64_t sub_1D2AA5324()
{
  result = qword_1EC705F60;
  if (!qword_1EC705F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F60);
  }

  return result;
}

unint64_t sub_1D2AA537C()
{
  result = qword_1EC705F68;
  if (!qword_1EC705F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F68);
  }

  return result;
}

unint64_t sub_1D2AA53D4()
{
  result = qword_1EC705F70;
  if (!qword_1EC705F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F70);
  }

  return result;
}

unint64_t sub_1D2AA542C()
{
  result = qword_1EC705F78;
  if (!qword_1EC705F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F78);
  }

  return result;
}

unint64_t sub_1D2AA5484()
{
  result = qword_1EC705F80;
  if (!qword_1EC705F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F80);
  }

  return result;
}

unint64_t sub_1D2AA54DC()
{
  result = qword_1EC705F88;
  if (!qword_1EC705F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F88);
  }

  return result;
}

unint64_t sub_1D2AA5534()
{
  result = qword_1EC705F90;
  if (!qword_1EC705F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F90);
  }

  return result;
}

unint64_t sub_1D2AA558C()
{
  result = qword_1EC705F98;
  if (!qword_1EC705F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705F98);
  }

  return result;
}

unint64_t sub_1D2AA55E4()
{
  result = qword_1EC705FA0;
  if (!qword_1EC705FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705FA0);
  }

  return result;
}

unint64_t sub_1D2AA563C()
{
  result = qword_1EC705FA8;
  if (!qword_1EC705FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705FA8);
  }

  return result;
}

unint64_t sub_1D2AA5694()
{
  result = qword_1EC705FB0;
  if (!qword_1EC705FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705FB0);
  }

  return result;
}

unint64_t sub_1D2AA56EC()
{
  result = qword_1EC705FB8;
  if (!qword_1EC705FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705FB8);
  }

  return result;
}

unint64_t sub_1D2AA5744()
{
  result = qword_1EC705FC0;
  if (!qword_1EC705FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705FC0);
  }

  return result;
}

unint64_t sub_1D2AA579C()
{
  result = qword_1EC705FC8;
  if (!qword_1EC705FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705FC8);
  }

  return result;
}

unint64_t sub_1D2AA57F4()
{
  result = qword_1EC705FD0;
  if (!qword_1EC705FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705FD0);
  }

  return result;
}

unint64_t sub_1D2AA584C()
{
  result = qword_1EC705FD8;
  if (!qword_1EC705FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705FD8);
  }

  return result;
}

unint64_t sub_1D2AA58A4()
{
  result = qword_1EC705FE0;
  if (!qword_1EC705FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705FE0);
  }

  return result;
}

unint64_t sub_1D2AA58FC()
{
  result = qword_1EC705FE8;
  if (!qword_1EC705FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705FE8);
  }

  return result;
}

unint64_t sub_1D2AA5954()
{
  result = qword_1EC705FF0;
  if (!qword_1EC705FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705FF0);
  }

  return result;
}

unint64_t sub_1D2AA59AC()
{
  result = qword_1EC705FF8;
  if (!qword_1EC705FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705FF8);
  }

  return result;
}

unint64_t sub_1D2AA5A04()
{
  result = qword_1EC706000;
  if (!qword_1EC706000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706000);
  }

  return result;
}

unint64_t sub_1D2AA5A5C()
{
  result = qword_1EC706008;
  if (!qword_1EC706008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706008);
  }

  return result;
}

unint64_t sub_1D2AA5AB4()
{
  result = qword_1EC706010;
  if (!qword_1EC706010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706010);
  }

  return result;
}

unint64_t sub_1D2AA5B0C()
{
  result = qword_1EC706018;
  if (!qword_1EC706018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706018);
  }

  return result;
}

unint64_t sub_1D2AA5B64()
{
  result = qword_1EC706020;
  if (!qword_1EC706020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706020);
  }

  return result;
}

unint64_t sub_1D2AA5BBC()
{
  result = qword_1EC706028;
  if (!qword_1EC706028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706028);
  }

  return result;
}

unint64_t sub_1D2AA5C14()
{
  result = qword_1EC706030;
  if (!qword_1EC706030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706030);
  }

  return result;
}

unint64_t sub_1D2AA5C6C()
{
  result = qword_1EC706038;
  if (!qword_1EC706038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706038);
  }

  return result;
}

unint64_t sub_1D2AA5CC4()
{
  result = qword_1EC706040;
  if (!qword_1EC706040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706040);
  }

  return result;
}

unint64_t sub_1D2AA5D1C()
{
  result = qword_1EC706048;
  if (!qword_1EC706048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706048);
  }

  return result;
}

unint64_t sub_1D2AA5D74()
{
  result = qword_1EC706050;
  if (!qword_1EC706050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706050);
  }

  return result;
}

unint64_t sub_1D2AA5DCC()
{
  result = qword_1EC706058;
  if (!qword_1EC706058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706058);
  }

  return result;
}

unint64_t sub_1D2AA5E24()
{
  result = qword_1EC706060;
  if (!qword_1EC706060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706060);
  }

  return result;
}

unint64_t sub_1D2AA5E7C()
{
  result = qword_1EC706068;
  if (!qword_1EC706068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706068);
  }

  return result;
}

unint64_t sub_1D2AA5ED4()
{
  result = qword_1EC706070;
  if (!qword_1EC706070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706070);
  }

  return result;
}

unint64_t sub_1D2AA5F2C()
{
  result = qword_1EC706078;
  if (!qword_1EC706078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706078);
  }

  return result;
}

unint64_t sub_1D2AA5F84()
{
  result = qword_1EC706080;
  if (!qword_1EC706080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706080);
  }

  return result;
}

unint64_t sub_1D2AA5FDC()
{
  result = qword_1EC706088;
  if (!qword_1EC706088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706088);
  }

  return result;
}

unint64_t sub_1D2AA6034()
{
  result = qword_1EC706090;
  if (!qword_1EC706090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706090);
  }

  return result;
}

unint64_t sub_1D2AA608C()
{
  result = qword_1EC706098;
  if (!qword_1EC706098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706098);
  }

  return result;
}

unint64_t sub_1D2AA60E4()
{
  result = qword_1EC7060A0;
  if (!qword_1EC7060A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7060A0);
  }

  return result;
}

unint64_t sub_1D2AA613C()
{
  result = qword_1EC7060A8;
  if (!qword_1EC7060A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7060A8);
  }

  return result;
}

unint64_t sub_1D2AA6194()
{
  result = qword_1EC7060B0;
  if (!qword_1EC7060B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7060B0);
  }

  return result;
}

unint64_t sub_1D2AA61EC()
{
  result = qword_1EC7060B8;
  if (!qword_1EC7060B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7060B8);
  }

  return result;
}

unint64_t sub_1D2AA6244()
{
  result = qword_1EC7060C0;
  if (!qword_1EC7060C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7060C0);
  }

  return result;
}

unint64_t sub_1D2AA629C()
{
  result = qword_1EC7060C8;
  if (!qword_1EC7060C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7060C8);
  }

  return result;
}

unint64_t sub_1D2AA62F4()
{
  result = qword_1EC7060D0;
  if (!qword_1EC7060D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7060D0);
  }

  return result;
}

unint64_t sub_1D2AA634C()
{
  result = qword_1EC7060D8;
  if (!qword_1EC7060D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7060D8);
  }

  return result;
}

unint64_t sub_1D2AA63A4()
{
  result = qword_1EC7060E0;
  if (!qword_1EC7060E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7060E0);
  }

  return result;
}

unint64_t sub_1D2AA63FC()
{
  result = qword_1EC7060E8;
  if (!qword_1EC7060E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7060E8);
  }

  return result;
}

uint64_t sub_1D2AA6464(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706300, &qword_1D2AD8D28);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - v2;
  v3 = sub_1D2AC5F94();
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706308, &qword_1D2AD8D30);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706310, &qword_1D2AD8D38);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706318, &unk_1D2AD8D40);
  v14 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAD594();
  v17 = v33;
  sub_1D2AC74A4();
  sub_1D2AAD4CC(v34, v13, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
  v18 = (*(v17 + 48))(v13, 2, v3);
  if (v18)
  {
    if (v18 == 1)
    {
      v36 = 0;
      sub_1D2AAD690();
      v19 = v35;
      sub_1D2AC7294();
      (*(v25 + 8))(v10, v26);
    }

    else
    {
      v37 = 1;
      sub_1D2AAD63C();
      v19 = v35;
      sub_1D2AC7294();
      (*(v27 + 8))(v7, v28);
    }

    return (*(v14 + 8))(v16, v19);
  }

  else
  {
    v20 = v29;
    (*(v17 + 32))(v32, v13, v3);
    v38 = 2;
    sub_1D2AAD5E8();
    v21 = v30;
    v22 = v35;
    sub_1D2AC7294();
    sub_1D2AAD3CC(&qword_1EC704648, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v23 = v31;
    sub_1D2AC7304();
    (*(v20 + 8))(v21, v23);
    (*(v17 + 8))(v32, v3);
    return (*(v14 + 8))(v16, v22);
  }
}

uint64_t sub_1D2AA69A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7062C0, &qword_1D2AD8D08);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v45 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7062C8, &qword_1D2AD8D10);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v54 = &v45 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7062D0, &qword_1D2AD8D18);
  v53 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7062D8, &qword_1D2AD8D20);
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v18 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D2AAD594();
  v19 = v57;
  sub_1D2AC7494();
  if (!v19)
  {
    v20 = v12;
    v21 = v53;
    v22 = v54;
    v45 = v15;
    v46 = v17;
    v23 = v55;
    v57 = 0;
    v24 = sub_1D2AC7284();
    v25 = (2 * *(v24 + 16)) | 1;
    v59 = v24;
    v60 = v24 + 32;
    v61 = 0;
    v62 = v25;
    v26 = sub_1D2A7615C();
    v27 = v11;
    if (v26 == 3 || v61 != v62 >> 1)
    {
      v32 = sub_1D2AC70B4();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
      *v34 = v20;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v56 + 8))(v27, v9);
    }

    else
    {
      if (v26)
      {
        if (v26 == 1)
        {
          v63 = 1;
          sub_1D2AAD63C();
          v28 = v57;
          sub_1D2AC71E4();
          v29 = v56;
          if (!v28)
          {
            (*(v47 + 8))(v22, v49);
            (*(v29 + 8))(v11, v9);
            swift_unknownObjectRelease();
            v30 = sub_1D2AC5F94();
            v31 = v46;
            (*(*(v30 - 8) + 56))(v46, 2, 2, v30);
LABEL_17:
            v44 = v52;
            goto LABEL_18;
          }
        }

        else
        {
          v63 = 2;
          sub_1D2AAD5E8();
          v37 = v23;
          v38 = v57;
          sub_1D2AC71E4();
          v39 = v52;
          v29 = v56;
          if (!v38)
          {
            v40 = sub_1D2AC5F94();
            sub_1D2AAD3CC(&qword_1EC704688, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
            v41 = v45;
            v42 = v50;
            sub_1D2AC7264();
            (*(v51 + 8))(v37, v42);
            (*(v29 + 8))(v27, v9);
            swift_unknownObjectRelease();
            (*(*(v40 - 8) + 56))(v41, 0, 2, v40);
            v31 = v46;
            sub_1D2AAD468(v41, v46);
            v44 = v39;
LABEL_18:
            sub_1D2AAD468(v31, v44);
            return __swift_destroy_boxed_opaque_existential_0(v58);
          }
        }
      }

      else
      {
        v63 = 0;
        sub_1D2AAD690();
        v36 = v57;
        sub_1D2AC71E4();
        if (!v36)
        {
          (*(v21 + 8))(v8, v48);
          (*(v56 + 8))(v11, v9);
          swift_unknownObjectRelease();
          v43 = sub_1D2AC5F94();
          v31 = v46;
          (*(*(v43 - 8) + 56))(v46, 1, 2, v43);
          goto LABEL_17;
        }

        v29 = v56;
      }

      (*(v29 + 8))(v27, v9);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t sub_1D2AA70FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7062B0, &qword_1D2AD8D00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAD414();
  sub_1D2AC74A4();
  LOBYTE(v12) = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v9 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity(0);
    LOBYTE(v12) = 1;
    type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(0);
    sub_1D2AAD3CC(&qword_1EC7062B8, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind, &unk_1D2AD8A44);
    sub_1D2AC7304();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    sub_1D2A71DA4(&qword_1EC7046B8, MEMORY[0x1E69E6538], MEMORY[0x1E69E66B0]);
    sub_1D2AC7304();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1D2AA7334(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706298, &unk_1D2AD8CF0);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAD414();
  v23 = v8;
  v12 = v24;
  sub_1D2AC7494();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v13 = v5;
    v14 = v21;
    v15 = v22;
    LOBYTE(v25) = 0;
    *v11 = sub_1D2AC7234();
    v11[1] = v16;
    v19 = v16;
    v24 = v11;
    LOBYTE(v25) = 1;
    sub_1D2AAD3CC(&qword_1EC7062A8, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind, &unk_1D2AD8A6C);
    sub_1D2AC7264();
    sub_1D2AAD468(v13, v24 + *(v9 + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    v26 = 2;
    sub_1D2A71DA4(&qword_1EC7046D0, MEMORY[0x1E69E6560], MEMORY[0x1E69E66E0]);
    sub_1D2AC7264();
    (*(v14 + 8))(v23, v15);
    v17 = *(v9 + 24);
    v18 = v24;
    *(v24 + v17) = v25;
    sub_1D2AAD4CC(v18, v20, type metadata accessor for GenerationRecipe_V3.Prompt.Entity);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_1D2AAD534(v18, type metadata accessor for GenerationRecipe_V3.Prompt.Entity);
  }
}

uint64_t sub_1D2AA76F8(uint64_t a1)
{
  v2 = sub_1D2AAD594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA7734(uint64_t a1)
{
  v2 = sub_1D2AAD594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA7770(uint64_t a1)
{
  v2 = sub_1D2AAD690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA77AC(uint64_t a1)
{
  v2 = sub_1D2AAD690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA77E8(uint64_t a1)
{
  v2 = sub_1D2AAD5E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA7824(uint64_t a1)
{
  v2 = sub_1D2AAD5E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA7860(uint64_t a1)
{
  v2 = sub_1D2AAD63C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA789C(uint64_t a1)
{
  v2 = sub_1D2AAD63C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA790C(uint64_t a1)
{
  v2 = sub_1D2AAD414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA7948(uint64_t a1)
{
  v2 = sub_1D2AAD414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1D2AA79B4(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D2AC7354() & 1) == 0 || (sub_1D2AAA2E8(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v12 = *v10;
  v11 = v10[1];
  return v9 == v12 && v8 == v11;
}

uint64_t sub_1D2AA7A44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706280, &qword_1D2AD8CE8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAD2DC();
  sub_1D2AC74A4();
  v13 = 0;
  sub_1D2AC72D4();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706268, &qword_1D2AD8CE0);
    sub_1D2AAD330(&qword_1EC706288, &qword_1EC706290, &unk_1D2AD8ABC, MEMORY[0x1E69E6300]);
    sub_1D2AC7304();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D2AA7C20(uint64_t a1)
{
  v2 = sub_1D2AAD2DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA7C5C(uint64_t a1)
{
  v2 = sub_1D2AAD2DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA7C98@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2AAA5E8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

BOOL sub_1D2AA7CE8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2A68BC0(v2, v3);
}

uint64_t sub_1D2AA7D5C(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706520, &qword_1D2ADA4A8);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706528, &qword_1D2ADA4B0);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706530, &qword_1D2ADA4B8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAEB98();
  sub_1D2AC74A4();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1D2AAEBEC();
    sub_1D2AC7294();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1D2AAEC40();
    sub_1D2AC7294();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1D2AA8018(uint64_t a1)
{
  v2 = sub_1D2AAEC40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA8054(uint64_t a1)
{
  v2 = sub_1D2AAEC40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA8090(uint64_t a1)
{
  v2 = sub_1D2AAEB98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA80CC(uint64_t a1)
{
  v2 = sub_1D2AAEB98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA8108(uint64_t a1)
{
  v2 = sub_1D2AAEBEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA8144(uint64_t a1)
{
  v2 = sub_1D2AAEBEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA8180@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2AAA824(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1D2AA81CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706490, &qword_1D2ADA068);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAE544();
  sub_1D2AC74A4();
  v16 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_1D2A90F20(&v16, v11);
  sub_1D2A722BC();
  sub_1D2AC72C4();
  if (v2)
  {
    sub_1D2A47930(v13, *(&v13 + 1));
  }

  else
  {
    sub_1D2A47930(v13, *(&v13 + 1));
    v15 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_1D2A90F20(&v15, v11);
    sub_1D2AC72C4();
    sub_1D2A47930(v13, *(&v13 + 1));
    v13 = v3[2];
    v14 = v13;
    v12 = 2;
    sub_1D2A90F20(&v14, v11);
    sub_1D2AC72C4();
    sub_1D2A47930(v13, *(&v13 + 1));
    LOBYTE(v13) = 3;
    sub_1D2AC72F4();
    LOBYTE(v13) = 4;
    sub_1D2AC72F4();
    LOBYTE(v13) = 5;
    sub_1D2AC72E4();
    LOBYTE(v13) = *(v3 + 65);
    v11[0] = 6;
    sub_1D2AAE654();
    sub_1D2AC7304();
    LOBYTE(v13) = 7;
    sub_1D2AC72D4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D2AA84D8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001CLL;
    if (v1 != 6)
    {
      v5 = 25705;
    }

    v6 = 0xD000000000000017;
    if (v1 != 4)
    {
      v6 = 0xD000000000000018;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x67616D4965736162;
    v3 = 0x614D686374656B73;
    if (v1 != 2)
    {
      v3 = 0x67616D4965736162;
    }

    if (*v0)
    {
      v2 = 0x6D49686374656B73;
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
}

uint64_t sub_1D2AA85F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D2AAACE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2AA8624(uint64_t a1)
{
  v2 = sub_1D2AAE544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA8660(uint64_t a1)
{
  v2 = sub_1D2AAE544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2AA869C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D2AAAF8C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1D2AA8710(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1D2AA9DE8(v7, v9) & 1;
}

uint64_t sub_1D2AA877C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706488, &qword_1D2ADA060);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAE4F0();
  sub_1D2AC74A4();
  LOBYTE(v14) = 0;
  sub_1D2AC72D4();
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    v16 = 1;
    sub_1D2A479B4(v12, v13);
    sub_1D2A722BC();
    sub_1D2AC7304();
    sub_1D2A47944(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D2AA8918(uint64_t a1)
{
  v2 = sub_1D2AAE4F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA8954(uint64_t a1)
{
  v2 = sub_1D2AAE4F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA8990@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2AAB5B8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1D2AA89E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706480, &qword_1D2ADA058);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAE49C();
  sub_1D2AC74A4();
  LOBYTE(v12) = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1D2AC72A4();
    v12 = *(v3 + 32);
    v13 = v12;
    v11[23] = 2;
    sub_1D2A90F20(&v13, v11);
    sub_1D2A722BC();
    sub_1D2AC72C4();
    sub_1D2A47930(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D2AA8BD8(uint64_t a1)
{
  v2 = sub_1D2AAE49C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA8C14(uint64_t a1)
{
  v2 = sub_1D2AAE49C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2AA8C50@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D2AAB7D4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1D2AA8CAC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706200, &qword_1D2AD8CA0);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706208, &qword_1D2AD8CA8);
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v50 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706210, &qword_1D2AD8CB0);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v50 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706218, &qword_1D2AD8CB8);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v50 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706220, &qword_1D2AD8CC0);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706228, &qword_1D2AD8CC8);
  v50 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706230, &qword_1D2AD8CD0);
  v66 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v16 = &v50 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AACDF0();
  v17 = v16;
  sub_1D2AC74A4();
  v18 = v2[1];
  v65 = *v2;
  v19 = v2[2];
  v20 = v2[3];
  v22 = v2[4];
  v21 = v2[5];
  v23 = v2[8];
  v24 = v23 >> 61;
  if ((v23 >> 61) > 2)
  {
    if (v24 != 3)
    {
      v29 = v78;
      v30 = v17;
      if (v24 == 4)
      {
        LOBYTE(v67) = 4;
        v31 = v19;
        v32 = v20;
        sub_1D2AACE98();
        v33 = v18;
        v34 = v59;
        sub_1D2AC7294();
        v67 = v65;
        v68 = v33;
        v69 = v31;
        v70 = v32;
        v71 = v22;
        v72 = v21;
        sub_1D2AAD18C();
        v35 = v62;
        sub_1D2AC7304();
        (*(v61 + 8))(v34, v35);
      }

      else
      {
        LOBYTE(v67) = 5;
        sub_1D2AACE44();
        v48 = v60;
        sub_1D2AC7294();
        v49 = v64;
        sub_1D2AC72D4();
        (*(v63 + 8))(v48, v49);
      }

      v46 = *(v66 + 8);
      v47 = v30;
      return v46(v47, v29);
    }

    LOBYTE(v67) = 3;
    v37 = v19;
    v38 = v20;
    sub_1D2AACF40();
    v39 = v54;
    v29 = v78;
    sub_1D2AC7294();
    v67 = v65;
    v68 = v18;
    v69 = v37;
    v70 = v38;
    sub_1D2AAD1E0();
    v40 = v58;
    sub_1D2AC7304();
    (*(v57 + 8))(v39, v40);
  }

  else
  {
    if (!v24)
    {
      LOBYTE(v67) = 0;
      sub_1D2AAD138();
      v36 = v78;
      sub_1D2AC7294();
      sub_1D2AC72D4();
      (*(v50 + 8))(v14, v12);
      return (*(v66 + 8))(v17, v36);
    }

    v25 = v2[2];
    if (v24 == 1)
    {
      LOBYTE(v67) = 1;
      sub_1D2AAD090();
      v26 = v78;
      sub_1D2AC7294();
      v67 = v65;
      v68 = v18;
      v69 = v25;
      sub_1D2AAD288();
      v27 = v52;
      sub_1D2AC7304();
      (*(v51 + 8))(v11, v27);
      return (*(v66 + 8))(v17, v26);
    }

    v41 = v2[10];
    v63 = v2[9];
    v64 = v41;
    v42 = v2[7];
    v60 = v2[6];
    v61 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v62 = v42;
    LOBYTE(v67) = 2;
    v43 = v20;
    sub_1D2AACFE8();
    v44 = v53;
    v29 = v78;
    sub_1D2AC7294();
    v67 = v65;
    v68 = v18;
    v69 = v25;
    v70 = v43;
    v71 = v22;
    v72 = v21;
    v73 = v60;
    v74 = v62;
    v75 = v61;
    v76 = v63;
    v77 = v64;
    sub_1D2AAD234();
    v45 = v56;
    sub_1D2AC7304();
    (*(v55 + 8))(v44, v45);
  }

  v46 = *(v66 + 8);
  v47 = v17;
  return v46(v47, v29);
}

uint64_t sub_1D2AA94E8(uint64_t a1)
{
  v2 = sub_1D2AACDF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA9524(uint64_t a1)
{
  v2 = sub_1D2AACDF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA9560(uint64_t a1)
{
  v2 = sub_1D2AAD138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA959C(uint64_t a1)
{
  v2 = sub_1D2AAD138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA95D8(uint64_t a1)
{
  v2 = sub_1D2AACFE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA9614(uint64_t a1)
{
  v2 = sub_1D2AACFE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA9650(uint64_t a1)
{
  v2 = sub_1D2AACF40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA968C(uint64_t a1)
{
  v2 = sub_1D2AACF40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA96C8(uint64_t a1)
{
  v2 = sub_1D2AACE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA9704(uint64_t a1)
{
  v2 = sub_1D2AACE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA9740(uint64_t a1)
{
  v2 = sub_1D2AAD090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA977C(uint64_t a1)
{
  v2 = sub_1D2AAD090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA97B8(uint64_t a1)
{
  v2 = sub_1D2AACE44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA97F4(uint64_t a1)
{
  v2 = sub_1D2AACE44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2AA9830@<D0>(__n128 *a1@<X8>, void *a2@<X0>)
{
  *&result = sub_1D2AABA78(a2, v7).n128_u64[0];
  if (!v2)
  {
    v5 = v7[3];
    a1[2] = v7[2];
    a1[3] = v5;
    a1[4] = v7[4];
    a1[5].n128_u64[0] = v8;
    result = v7[0].n128_f64[0];
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_1D2AA98A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1D2AAA108(v7, v9) & 1;
}

uint64_t sub_1D2AA9910(uint64_t a1, uint64_t a2, char a3)
{
  v24 = 0;
  v25 = 0xE000000000000000;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[4];
      v21 = v5[3];
      v22 = v6;
      v7 = v5[1];
      v20 = v5[2];
      v23 = *(v5 + 10);
      v18 = *v5;
      v19 = v7;
      v8 = *(&v18 + 1);
      v9 = v18;
      v10 = v6 >> 61;
      if ((v6 >> 61) > 2)
      {
        if (v10 == 4)
        {
          if (*(&v19 + 1))
          {
            v11 = v19;
          }

          else
          {
            v11 = 0;
          }

          if (*(&v19 + 1))
          {
            v12 = *(&v19 + 1);
          }

          else
          {
            v12 = 0xE000000000000000;
          }

          v16 = v18;
          sub_1D2A75E80(&v18, v17);

          MEMORY[0x1D38A7100](v11, v12);

          v8 = *(&v16 + 1);
          v9 = v16;
          goto LABEL_4;
        }
      }

      else if (v10 >= 2)
      {
        v9 = *(&v22 + 1);
        v8 = v23;
      }

      sub_1D2A75E80(&v18, v17);

LABEL_4:
      MEMORY[0x1D38A7100](v9, v8);

      sub_1D2A75EDC(&v18);
      v5 = (v5 + 88);
      --v4;
    }

    while (v4);
  }

  if ((a3 & 1) == 0)
  {
    *&v18 = a2;
    sub_1D2A87D04();
    v13 = sub_1D2AC6FE4();
    MEMORY[0x1D38A7100](v13);
  }

  return v24;
}

uint64_t sub_1D2AA9A9C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v12 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706120, &qword_1D2AD8508);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAC8D0();
  sub_1D2AC74A4();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706108, &qword_1D2AD8500);
  sub_1D2AAC978(&qword_1EC706128, sub_1D2AAC9F0, MEMORY[0x1E69E6300]);
  sub_1D2AC7304();
  if (!v4)
  {
    v13 = 1;
    sub_1D2AC72B4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D2AA9C88(uint64_t a1)
{
  v2 = sub_1D2AAC8D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2AA9CC4(uint64_t a1)
{
  v2 = sub_1D2AAC8D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2AA9D00@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2AAC69C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1D2AA9D54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1D2A6880C(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D2AA9DB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2AA9910(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D2AA9DE8(double *a1, double *a2)
{
  v23 = *a1;
  v22 = *a2;
  v4 = *(&v23 + 1);
  v5 = v23;
  v7 = *(&v22 + 1);
  v6 = v22;
  if (*(&v23 + 1) >> 60 == 15)
  {
    if (*(&v22 + 1) >> 60 == 15)
    {
      sub_1D2A90F20(&v23, &v21);
      sub_1D2A90F20(&v22, &v21);
      sub_1D2A47930(v5, v4);
      goto LABEL_7;
    }

LABEL_5:
    sub_1D2A90F20(&v23, &v21);
    v8 = &v22;
    v9 = &v21;
LABEL_18:
    sub_1D2A90F20(v8, v9);
    sub_1D2A47930(v5, v4);
    sub_1D2A47930(v6, v7);
    goto LABEL_19;
  }

  if (*(&v22 + 1) >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_1D2A90F20(&v23, &v21);
  sub_1D2A90F20(&v22, &v21);
  v10 = sub_1D2A973A0(v5, v4, v6, v7);
  sub_1D2A47930(v6, v7);
  sub_1D2A47930(v5, v4);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_7:
  v11 = *(a1 + 1);
  v20 = *(a2 + 1);
  v21 = v11;
  v4 = *(&v11 + 1);
  v5 = v11;
  v7 = *(&v20 + 1);
  v6 = v20;
  if (*(&v11 + 1) >> 60 == 15)
  {
    if (*(&v20 + 1) >> 60 == 15)
    {
      sub_1D2A90F20(&v21, &v19);
      sub_1D2A90F20(&v20, &v19);
      sub_1D2A47930(v5, v4);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (*(&v20 + 1) >> 60 == 15)
  {
LABEL_11:
    sub_1D2A90F20(&v21, &v19);
    v8 = &v20;
    v9 = &v19;
    goto LABEL_18;
  }

  sub_1D2A90F20(&v21, &v19);
  sub_1D2A90F20(&v20, &v19);
  v12 = sub_1D2A973A0(v5, v4, v6, v7);
  sub_1D2A47930(v6, v7);
  sub_1D2A47930(v5, v4);
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_13:
  v13 = *(a1 + 2);
  v18 = *(a2 + 2);
  v19 = v13;
  v4 = *(&v13 + 1);
  v5 = v13;
  v7 = *(&v18 + 1);
  v6 = v18;
  if (*(&v13 + 1) >> 60 != 15)
  {
    if (*(&v18 + 1) >> 60 == 15)
    {
      goto LABEL_17;
    }

    sub_1D2A90F20(&v19, v17);
    sub_1D2A90F20(&v18, v17);
    v16 = sub_1D2A973A0(v5, v4, v6, v7);
    sub_1D2A47930(v6, v7);
    sub_1D2A47930(v5, v4);
    if (v16)
    {
      goto LABEL_22;
    }

LABEL_19:
    v14 = 0;
    return v14 & 1;
  }

  if (*(&v18 + 1) >> 60 != 15)
  {
LABEL_17:
    sub_1D2A90F20(&v19, v17);
    v8 = &v18;
    v9 = v17;
    goto LABEL_18;
  }

  sub_1D2A90F20(&v19, v17);
  sub_1D2A90F20(&v18, v17);
  sub_1D2A47930(v5, v4);
LABEL_22:
  if (a1[6] != a2[6] || a1[7] != a2[7] || ((*(a1 + 64) ^ *(a2 + 64)) & 1) != 0 || *(a1 + 65) != *(a2 + 65))
  {
    goto LABEL_19;
  }

  if (*(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1D2AC7354();
  }

  return v14 & 1;
}

uint64_t sub_1D2AAA108(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v9 = a1[8];
  v10 = v9 >> 61;
  if ((v9 >> 61) <= 2)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        if (a2[8] >> 61 == 1)
        {
          if (v11 = a2[2], v3 == *a2) && v4 == a2[1] || (sub_1D2AC7354())
          {
            if (sub_1D2A68BC0(v5, v11))
            {
              goto LABEL_29;
            }
          }
        }

LABEL_30:
        v13 = 0;
        return v13 & 1;
      }

      *&v25 = v3;
      *(&v25 + 1) = v4;
      v26 = v5;
      v27 = v7;
      v28 = v6;
      v29 = v8;
      v30 = *(a1 + 3);
      v31 = v9 & 0x1FFFFFFFFFFFFFFFLL;
      v32 = *(a1 + 9);
      v16 = a2[8];
      if (v16 >> 61 != 2)
      {
        goto LABEL_30;
      }

      v17 = *(a2 + 1);
      v19 = *a2;
      v20 = v17;
      v18 = *(a2 + 3);
      v21 = *(a2 + 2);
      v22 = v18;
      v23 = v16 & 0x1FFFFFFFFFFFFFFFLL;
      v24 = *(a2 + 9);
      v13 = sub_1D2AA9DE8(&v25, &v19);
      return v13 & 1;
    }

    if (a2[8] >> 61)
    {
      goto LABEL_30;
    }

LABEL_17:
    if (v3 != *a2 || v4 != a2[1])
    {
      goto LABEL_21;
    }

LABEL_29:
    v13 = 1;
    return v13 & 1;
  }

  if (v10 == 3)
  {
    if (a2[8] >> 61 != 3)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  if (v10 == 4)
  {
    *&v25 = v3;
    *(&v25 + 1) = v4;
    v26 = v5;
    v27 = v7;
    v28 = v6;
    v29 = v8;
    if (a2[8] >> 61 != 4)
    {
      goto LABEL_30;
    }

    v12 = *(a2 + 1);
    v19 = *a2;
    v20 = v12;
    v21 = *(a2 + 2);
    v13 = sub_1D2A8E038(&v25, &v19);
    return v13 & 1;
  }

  if (a2[8] >> 61 != 5)
  {
    goto LABEL_30;
  }

  if (v3 == *a2 && v4 == a2[1])
  {
    goto LABEL_29;
  }

LABEL_21:

  return sub_1D2AC7354();
}

uint64_t sub_1D2AAA2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BF0, &unk_1D2AD8510);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D2AAD4CC(a1, &v21 - v13, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
  sub_1D2AAD4CC(a2, &v14[v15], type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (!v17)
  {
    sub_1D2AAD4CC(v14, v10, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
    if (!v16(&v14[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = sub_1D2AC5F74();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_1D2AAD534(v14, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v14[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v14[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_1D2AACA64(v14);
    v18 = 0;
    return v18 & 1;
  }

  sub_1D2AAD534(v14, type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1D2AAA5E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706258, &qword_1D2AD8CD8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAD2DC();
  sub_1D2AC7494();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_1D2AC7234();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706268, &qword_1D2AD8CE0);
    v9[15] = 1;
    sub_1D2AAD330(&qword_1EC706270, &qword_1EC706278, &unk_1D2AD8AE4, MEMORY[0x1E69E6330]);
    sub_1D2AC7264();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1D2AAA824(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7064F0, &qword_1D2ADA490);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7064F8, &qword_1D2ADA498);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706500, &qword_1D2ADA4A0);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAEB98();
  v11 = v26;
  sub_1D2AC7494();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1D2AC7284();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1D2A76160();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1D2AC70B4();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
    *v19 = &type metadata for GenerationRecipe_V3.DrawOnImageRecipe.AssignmentOptions;
    sub_1D2AC71F4();
    sub_1D2AC70A4();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1D2AAEBEC();
    sub_1D2AC71E4();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1D2AAEC40();
    sub_1D2AC71E4();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v31 & 1;
}

uint64_t sub_1D2AAACE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x67616D4965736162 && a2 == 0xED00006174614465;
  if (v3 || (sub_1D2AC7354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D49686374656B73 && a2 == 0xEF61746144656761 || (sub_1D2AC7354() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614D686374656B73 && a2 == 0xEE00617461446B73 || (sub_1D2AC7354() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x67616D4965736162 && a2 == 0xEE006F6974615265 || (sub_1D2AC7354() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D2ADF2B0 == a2 || (sub_1D2AC7354() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D2ADF2D0 == a2 || (sub_1D2AC7354() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D2ADF310 == a2 || (sub_1D2AC7354() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D2AC7354();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void sub_1D2AAAF8C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706468, &qword_1D2ADA050);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27[-v7];
  v9 = sub_1D2AC5F94();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  v56 = v13;
  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAE544();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_1D2A723B8();
    sub_1D2AC7224();
    v33 = v40;
    LOBYTE(v34) = 1;
    sub_1D2AC7224();
    v31 = *(&v40 + 1);
    v32 = v40;
    LOBYTE(v34) = 2;
    sub_1D2AC7224();
    v14 = *(&v40 + 1);
    v30 = v40;
    LOBYTE(v40) = 3;
    sub_1D2AC7254();
    v16 = v15;
    LOBYTE(v40) = 4;
    sub_1D2AC7254();
    v18 = v17;
    LOBYTE(v40) = 5;
    v19 = sub_1D2AC7244();
    LOBYTE(v34) = 6;
    sub_1D2AAE598();
    sub_1D2AC7264();
    v28 = v40;
    v53 = 7;
    v29 = sub_1D2AC7234();
    v21 = v20;
    LOBYTE(v19) = v19 & 1;
    (*(v6 + 8))(v8, v5);

    v22 = v33;
    v34 = v33;
    v23 = *(&v33 + 1);
    *&v35 = v32;
    v24 = v31;
    *(&v35 + 1) = v31;
    *&v36 = v30;
    *(&v36 + 1) = v14;
    *&v37 = v16;
    *(&v37 + 1) = v18;
    LOBYTE(v38) = v19;
    BYTE1(v38) = v28;
    *(&v38 + 2) = v54;
    WORD3(v38) = v55;
    *(&v38 + 1) = v29;
    v39 = v21;
    sub_1D2AAE5EC(&v34, &v40);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *&v40 = v22;
    *(&v40 + 1) = v23;
    v41 = v32;
    v42 = v24;
    v43 = v30;
    v44 = v14;
    v45 = v16;
    v46 = v18;
    v47 = v19;
    v48 = v28;
    v49 = v54;
    v50 = v55;
    v51 = v29;
    v52 = v21;
    sub_1D2AAE624(&v40);
    v25 = v37;
    *(a2 + 32) = v36;
    *(a2 + 48) = v25;
    *(a2 + 64) = v38;
    *(a2 + 80) = v39;
    v26 = v35;
    *a2 = v34;
    *(a2 + 16) = v26;
  }
}

uint64_t sub_1D2AAB5B8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706458, &qword_1D2ADA048);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAE4F0();
  sub_1D2AC7494();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v12) = 0;
    v7 = sub_1D2AC7234();
    v11[15] = 1;
    sub_1D2A723B8();
    sub_1D2AC7264();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;

    sub_1D2A479B4(v9, v10);
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_1D2A47944(v9, v10);
  }

  return v7;
}

uint64_t sub_1D2AAB7D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706448, &qword_1D2ADA040);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2AAE49C();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_1D2A47930(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v21) = 0;
    v9 = sub_1D2AC7234();
    v11 = v10;
    v20 = v9;
    LOBYTE(v21) = 1;
    v12 = sub_1D2AC7204();
    v14 = v13;
    v19 = v12;
    v23 = 2;
    sub_1D2A723B8();
    sub_1D2AC7224();
    (*(v6 + 8))(v8, v5);
    v15 = v21;
    v16 = v22;
    sub_1D2A47930(0, 0xF000000000000000);

    sub_1D2A479A0(v15, v16);
    __swift_destroy_boxed_opaque_existential_0(a1);

    result = sub_1D2A47930(v15, v16);
    v18 = v19;
    *a2 = v20;
    a2[1] = v11;
    a2[2] = v18;
    a2[3] = v14;
    a2[4] = v15;
    a2[5] = v16;
  }

  return result;
}

__n128 sub_1D2AABA78@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v77 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706170, &qword_1D2AD8C60);
  v71 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v76.n128_u64[0] = &v58 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706178, &qword_1D2AD8C68);
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v75 = &v58 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706180, &qword_1D2AD8C70);
  v70 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v74 = &v58 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706188, &qword_1D2AD8C78);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v73 = &v58 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706190, &qword_1D2AD8C80);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706198, &qword_1D2AD8C88);
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7061A0, &unk_1D2AD8C90);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v58 - v14;
  v16 = a1[3];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D2AACDF0();
  v17 = v78.n128_u64[0];
  sub_1D2AC7494();
  if (v17)
  {
    goto LABEL_13;
  }

  v18 = v11;
  v59 = v9;
  v60 = v8;
  v19 = v73;
  v20 = v74;
  v21 = v75;
  v22 = v76.n128_u64[0];
  v61 = 0;
  v78.n128_u64[0] = v13;
  v23 = v77;
  v24 = sub_1D2AC7284();
  v25 = (2 * *(v24 + 16)) | 1;
  v88 = v24;
  v89 = v24 + 32;
  v90 = 0;
  v91 = v25;
  v26 = sub_1D2A76168();
  if (v26 == 6 || v90 != v91 >> 1)
  {
    v31 = sub_1D2AC70B4();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
    *v33 = &type metadata for GenerationRecipe_V3.Ingredient;
    sub_1D2AC71F4();
    sub_1D2AC70A4();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
LABEL_10:
    v29 = v78.n128_u64[0];
    goto LABEL_11;
  }

  if (v26 > 2u)
  {
    if (v26 == 3)
    {
      LOBYTE(v79) = 3;
      sub_1D2AACF40();
      v41 = v61;
      sub_1D2AC71E4();
      v29 = v78.n128_u64[0];
      if (!v41)
      {
        sub_1D2AACF94();
        v42 = v66;
        sub_1D2AC7264();
        v61 = 0;
        (*(v70 + 8))(v20, v42);
        v50 = *(v29 + 8);
        v18 = (v29 + 8);
        v50(v15, v12);
        swift_unknownObjectRelease();
        v52 = v79;
        v53 = v80;
        v54 = 0x6000000000000000;
        v78 = v81;
        goto LABEL_28;
      }

      goto LABEL_11;
    }

    v35 = v78.n128_u64[0];
    if (v26 == 4)
    {
      LOBYTE(v79) = 4;
      sub_1D2AACE98();
      v36 = v61;
      sub_1D2AC71E4();
      if (!v36)
      {
        sub_1D2AACEEC();
        v37 = v69;
        sub_1D2AC7264();
        v61 = 0;
        (*(v72 + 8))(v21, v37);
        (*(v35 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v52 = v79;
        v53 = v80;
        v54 = 0x8000000000000000;
        v78 = v81;
        v76 = v82;
LABEL_27:
        v23 = v77;
        goto LABEL_28;
      }
    }

    else
    {
      LOBYTE(v79) = 5;
      sub_1D2AACE44();
      v20 = v22;
      v46 = v61;
      sub_1D2AC71E4();
      if (!v46)
      {
        v47 = v63;
        v48 = sub_1D2AC7234();
        v61 = 0;
        v53 = v56;
        v57 = v48;
        (*(v71 + 8))(v20, v47);
        v52 = v57;
        (*(v35 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v54 = 0xA000000000000000;
        goto LABEL_27;
      }
    }

    (*(v35 + 8))(v15, v12);
    goto LABEL_12;
  }

  if (!v26)
  {
    LOBYTE(v79) = 0;
    sub_1D2AAD138();
    v38 = v61;
    sub_1D2AC71E4();
    if (!v38)
    {
      v39 = v59;
      v40 = sub_1D2AC7234();
      v61 = 0;
      v52 = v40;
      v53 = v49;
      (*(v62 + 8))(v18, v39);
      v18 = (v78.n128_u64[0] + 8);
      (*(v78.n128_u64[0] + 8))(v15, v12);
      swift_unknownObjectRelease();
      v54 = 0;
      goto LABEL_28;
    }

    goto LABEL_10;
  }

  if (v26 != 1)
  {
    LOBYTE(v79) = 2;
    sub_1D2AACFE8();
    v43 = v19;
    v44 = v61;
    sub_1D2AC71E4();
    v29 = v78.n128_u64[0];
    if (!v44)
    {
      sub_1D2AAD03C();
      v45 = v68;
      sub_1D2AC7264();
      v61 = 0;
      (*(v67 + 8))(v43, v45);
      (*(v29 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v52 = v79;
      v53 = v80;
      v78 = v81;
      v76 = v82;
      v20 = v83;
      v18 = v84;
      v15 = v86;
      v12 = v87;
      v54 = v85 & 0x101 | 0x4000000000000000;
      goto LABEL_28;
    }

    goto LABEL_11;
  }

  LOBYTE(v79) = 1;
  sub_1D2AAD090();
  v27 = v60;
  v28 = v61;
  sub_1D2AC71E4();
  v29 = v78.n128_u64[0];
  if (v28)
  {
LABEL_11:
    (*(v29 + 8))(v15, v12);
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    __swift_destroy_boxed_opaque_existential_0(v92);
    return result;
  }

  sub_1D2AAD0E4();
  v30 = v65;
  sub_1D2AC7264();
  v61 = 0;
  (*(v64 + 8))(v27, v30);
  v51 = *(v29 + 8);
  v18 = (v29 + 8);
  v51(v15, v12);
  swift_unknownObjectRelease();
  v52 = v79;
  v53 = v80;
  v54 = 0x2000000000000000;
  v55.n128_u64[0] = v81.n128_u64[0];
  v78 = v55;
LABEL_28:
  __swift_destroy_boxed_opaque_existential_0(v92);
  v23->n128_u64[0] = v52;
  v23->n128_u64[1] = v53;
  result = v76;
  v23[1] = v78;
  v23[2] = result;
  v23[3].n128_u64[0] = v20;
  v23[3].n128_u64[1] = v18;
  v23[4].n128_u64[0] = v54;
  v23[4].n128_u64[1] = v15;
  v23[5].n128_u64[0] = v12;
  return result;
}

uint64_t sub_1D2AAC69C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7060F8, &qword_1D2AD84F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1D2AAC8D0();
  sub_1D2AC7494();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC706108, &qword_1D2AD8500);
    v9[7] = 0;
    sub_1D2AAC978(&qword_1EC706110, sub_1D2AAC924, MEMORY[0x1E69E6330]);
    sub_1D2AC7264();
    v7 = v10;
    v9[6] = 1;
    sub_1D2AC7214();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_1D2AAC8D0()
{
  result = qword_1EC706100;
  if (!qword_1EC706100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706100);
  }

  return result;
}

unint64_t sub_1D2AAC924()
{
  result = qword_1EC706118;
  if (!qword_1EC706118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706118);
  }

  return result;
}

uint64_t sub_1D2AAC978(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC706108, &qword_1D2AD8500);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2AAC9F0()
{
  result = qword_1EC706130;
  if (!qword_1EC706130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706130);
  }

  return result;
}

uint64_t sub_1D2AACA64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BF0, &unk_1D2AD8510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D2AACB24(uint64_t a1)
{
  type metadata accessor for GenerationRecipe_V3.Prompt.Entity.Kind(319);
  if (v1 <= 0x3F)
  {
    sub_1D2A72FB0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D2AACBFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 64) >> 2) & 0xFFFFFF80 | (*(a1 + 64) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D2AACC50(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 64) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D2AACCEC()
{
  result = qword_1EC706158;
  if (!qword_1EC706158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706158);
  }

  return result;
}

unint64_t sub_1D2AACD44()
{
  result = qword_1EC706160;
  if (!qword_1EC706160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706160);
  }

  return result;
}

unint64_t sub_1D2AACD9C()
{
  result = qword_1EC706168;
  if (!qword_1EC706168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC706168);
  }

  return result;
}

unint64_t sub_1D2AACDF0()
{
  result = qword_1EC7061A8;
  if (!qword_1EC7061A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061A8);
  }

  return result;
}

unint64_t sub_1D2AACE44()
{
  result = qword_1EC7061B0;
  if (!qword_1EC7061B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061B0);
  }

  return result;
}

unint64_t sub_1D2AACE98()
{
  result = qword_1EC7061B8;
  if (!qword_1EC7061B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061B8);
  }

  return result;
}

unint64_t sub_1D2AACEEC()
{
  result = qword_1EC7061C0;
  if (!qword_1EC7061C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061C0);
  }

  return result;
}

unint64_t sub_1D2AACF40()
{
  result = qword_1EC7061C8;
  if (!qword_1EC7061C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061C8);
  }

  return result;
}

unint64_t sub_1D2AACF94()
{
  result = qword_1EC7061D0;
  if (!qword_1EC7061D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061D0);
  }

  return result;
}

unint64_t sub_1D2AACFE8()
{
  result = qword_1EC7061D8;
  if (!qword_1EC7061D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7061D8);
  }

  return result;
}