uint64_t sub_1D8FEAA10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8FF0320(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8FEAA38(uint64_t a1)
{
  v2 = sub_1D8FEEF8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEAA74(uint64_t a1)
{
  v2 = sub_1D8FEEF8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FEAAC0()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8FEABB8(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8FEAC9C(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8FEAD90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8FF0098(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D8FEADC0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6449746E65696C63;
  v5 = 0x80000001D91C8650;
  v6 = 0xD000000000000019;
  v7 = 0xD000000000000014;
  v8 = 0x80000001D91C8670;
  if (v2 != 3)
  {
    v7 = 0x6E55734972657375;
    v8 = 0xED00003331726564;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x644972657375;
    v3 = 0xE600000000000000;
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

unint64_t sub_1D8FEAE74()
{
  v1 = *v0;
  v2 = 0x6449746E65696C63;
  v3 = 0xD000000000000019;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x6E55734972657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x644972657375;
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

unint64_t sub_1D8FEAF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FF0098(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FEAF4C(uint64_t a1)
{
  v2 = sub_1D8FEE5D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEAF88(uint64_t a1)
{
  v2 = sub_1D8FEE5D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecommendationsMetadata.Analytics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8930, &qword_1D91A4D10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  LODWORD(v7) = *(v1 + 32);
  v10[4] = *(v1 + 33);
  v10[5] = v7;
  v10[3] = *(v1 + 34);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE5D8();
  sub_1D9179F1C();
  v18 = 0;
  v8 = v13;
  sub_1D917994C();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_1D917994C();
  v16 = 2;
  sub_1D91799CC();
  v15 = 3;
  sub_1D91799CC();
  v14 = 4;
  sub_1D91799CC();
  return (*(v4 + 8))(v6, v3);
}

void RecommendationsMetadata.Analytics.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8938, &qword_1D91A4D18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE5D8();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v26 = 0;
    v9 = sub_1D917984C();
    v11 = v10;
    v21 = v9;
    v25 = 1;
    v19 = sub_1D917984C();
    v20 = v12;
    v24 = 2;
    v18 = sub_1D91798CC();
    v23 = 3;
    v17 = sub_1D91798CC();
    v22 = 4;
    v13 = sub_1D91798CC();
    v18 &= 1u;
    v14 = v17 & 1;
    (*(v6 + 8))(v8, v5);
    v15 = v13 & 1;
    v16 = v20;
    *a2 = v21;
    *(a2 + 8) = v11;
    *(a2 + 16) = v19;
    *(a2 + 24) = v16;
    *(a2 + 32) = v18;
    *(a2 + 33) = v14;
    *(a2 + 34) = v15;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_1D8FEB4E4(uint64_t a1)
{
  v2 = sub_1D8FEE62C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEB520(uint64_t a1)
{
  v2 = sub_1D8FEE62C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FEB62C(uint64_t a1)
{
  v2 = sub_1D8FEE680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEB668(uint64_t a1)
{
  v2 = sub_1D8FEE680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FEB768()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8FEB850(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8FEB924(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8FEBA08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8FF004C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D8FEBA38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x64496D616461;
  v5 = 0xEA00000000006574;
  v6 = 0x656C706D6F437369;
  v7 = 0x6E6F697461727564;
  if (v2 != 3)
  {
    v7 = 0x6E6F697469736F70;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6D617473656D6974;
    v3 = 0xE900000000000070;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1D8FEBADC()
{
  v1 = *v0;
  v2 = 0x64496D616461;
  v3 = 0x656C706D6F437369;
  v4 = 0x6E6F697461727564;
  if (v1 != 3)
  {
    v4 = 0x6E6F697469736F70;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D617473656D6974;
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

unint64_t sub_1D8FEBB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FF004C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FEBBA4(uint64_t a1)
{
  v2 = sub_1D8FEE6D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEBBE0(uint64_t a1)
{
  v2 = sub_1D8FEE6D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecommendationsMetadata.Episodes.Metadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8970, &qword_1D91A4D40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v14 = *(v1 + 16);
  v13 = v1[3];
  v12 = *(v1 + 32);
  v11 = v1[5];
  v10[3] = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE6D4();
  sub_1D9179F1C();
  v20 = v8;
  v19 = 0;
  sub_1D8EF1720();
  sub_1D91799FC();
  if (!v2)
  {
    v18 = 1;
    sub_1D91799DC();
    v17 = 2;
    sub_1D917995C();
    v16 = 3;
    sub_1D917996C();
    v15 = 4;
    sub_1D917996C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RecommendationsMetadata.Episodes.Metadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8978, &qword_1D91A4D48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE6D4();
  sub_1D9179EEC();
  if (!v2)
  {
    v26 = 0;
    sub_1D8EF1774();
    sub_1D91798FC();
    v9 = v27;
    v25 = 1;
    sub_1D91798DC();
    v11 = v10;
    v24 = 2;
    v12 = sub_1D917985C();
    v23 = 3;
    v13 = sub_1D917986C();
    v21 = v14;
    v20 = v13;
    v22 = 4;
    v16 = sub_1D917986C();
    v17 = v8;
    v19 = v18;
    (*(v6 + 8))(v17, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v20;
    *(a2 + 32) = v21 & 1;
    *(a2 + 40) = v16;
    *(a2 + 48) = v19 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D8FEC104(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D617473656D6974;
  }

  else
  {
    v3 = 0x64496D616461;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000070;
  }

  if (*a2)
  {
    v5 = 0x6D617473656D6974;
  }

  else
  {
    v5 = 0x64496D616461;
  }

  if (*a2)
  {
    v6 = 0xE900000000000070;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

uint64_t sub_1D8FEC1AC()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FEC230(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D8FEC2BC(char *a3@<X8>)
{
  v4 = sub_1D917980C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

void sub_1D8FEC324(char *a4@<X8>)
{
  v5 = sub_1D917980C();

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a4 = v6;
}

uint64_t sub_1D8FEC384(uint64_t a1)
{
  v2 = sub_1D8FEE728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FEC3C0(uint64_t a1)
{
  v2 = sub_1D8FEE728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FEC440(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  v11 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v14[0])();
  sub_1D9179F1C();
  v17 = v11;
  v16 = 0;
  sub_1D8EF1720();
  v12 = v14[1];
  sub_1D91799FC();
  if (!v12)
  {
    v15 = 1;
    sub_1D91799DC();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D8FEC62C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, double *a6@<X8>)
{
  v19 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D9179EEC();
  if (!v6)
  {
    v13 = v18;
    v12 = v19;
    v21 = 0;
    sub_1D8EF1774();
    sub_1D91798FC();
    v14 = v22;
    v20 = 1;
    sub_1D91798DC();
    v16 = v15;
    (*(v13 + 8))(v11, v9);
    *v12 = v14;
    *(v12 + 1) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t RecommendationsMetadata.Categories.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8990, &unk_1D91A4D60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE77C();

  sub_1D9179F1C();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8998, &unk_1D91A78E0);
  sub_1D8FEE7D0();
  sub_1D91799FC();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1D91799FC();
  }

  return (*(v5 + 8))(v7, v4);
}

void RecommendationsMetadata.Categories.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89A0, &qword_1D91A4D70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE77C();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8998, &unk_1D91A78E0);
    v13 = 0;
    sub_1D8FEE8A8();
    sub_1D91798FC();
    v9 = v14;
    v13 = 1;
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    v11 = v12;
    *v12 = v9;
    v11[1] = v10;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t RecommendationsMetadata.Channels.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89B8, &qword_1D91A4D78);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE980();

  sub_1D9179F1C();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89C0, &qword_1D91A4D80);
  sub_1D8FEE9D4();
  sub_1D91799FC();

  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v15 = 1;
    sub_1D91799FC();
    v16 = v10;
    v15 = 2;
    sub_1D91799FC();
  }

  return (*(v5 + 8))(v7, v4);
}

void RecommendationsMetadata.Channels.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89C8, &qword_1D91A4D88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEE980();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v14 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89C0, &qword_1D91A4D80);
    v15 = 0;
    sub_1D8FEEAAC();
    sub_1D91798FC();
    v13 = v16;
    v15 = 1;
    sub_1D91798FC();
    v12 = v16;
    v15 = 2;
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    v9 = v16;
    v10 = v14;
    v11 = v12;
    *v14 = v13;
    v10[1] = v11;
    v10[2] = v9;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t RecommendationsMetadata.Episodes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89E0, &qword_1D91A4D90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEEB84();

  sub_1D9179F1C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89E8, &qword_1D91A4D98);
  sub_1D8FEEBD8();
  sub_1D91799FC();

  return (*(v4 + 8))(v6, v3);
}

uint64_t RecommendationsMetadata.Episodes.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89F0, &qword_1D91A4DA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEEB84();
  sub_1D9179EEC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB89E8, &qword_1D91A4D98);
    sub_1D8FEECB0();
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t RecommendationsMetadata.Shows.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8A08, &qword_1D91A4DA8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEED88();

  sub_1D9179F1C();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8A10, &qword_1D91A4DB0);
  sub_1D8FEEDDC();
  sub_1D91799FC();

  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v15 = 1;
    sub_1D91799FC();
    v16 = v10;
    v15 = 2;
    sub_1D91799FC();
  }

  return (*(v5 + 8))(v7, v4);
}

void RecommendationsMetadata.Shows.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8A18, &qword_1D91A4DB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEED88();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v14 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8A10, &qword_1D91A4DB0);
    v15 = 0;
    sub_1D8FEEEB4();
    sub_1D91798FC();
    v13 = v16;
    v15 = 1;
    sub_1D91798FC();
    v12 = v16;
    v15 = 2;
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    v9 = v16;
    v10 = v14;
    v11 = v12;
    *v14 = v13;
    v10[1] = v11;
    v10[2] = v9;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t RecommendationsMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8A30, &qword_1D91A4DC0);
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[3];
  v31 = v1[2];
  v41 = *(v1 + 32);
  v9 = *(v1 + 33);
  v29 = *(v1 + 34);
  v30 = v9;
  v10 = v1[6];
  v27 = v1[5];
  v28 = v10;
  v11 = v1[7];
  v25 = v1[8];
  v26 = v11;
  v12 = v1[9];
  v23 = v1[10];
  v24 = v12;
  v13 = v1[12];
  v20 = v1[11];
  v21 = v13;
  v22 = v1[13];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEEF8C();

  sub_1D9179F1C();
  v34 = v7;
  v35 = v6;
  v36 = v31;
  v37 = v8;
  v38 = v41;
  v39 = v30;
  v40 = v29;
  v42 = 0;
  sub_1D8FEEFE0();
  v14 = v32;
  sub_1D91799FC();
  if (v14)
  {

    return (*(v33 + 8))(v5, v3);
  }

  else
  {
    v16 = v25;
    v17 = v26;
    v18 = v24;
    v19 = v33;

    v34 = v27;
    v35 = v28;
    v42 = 1;
    sub_1D8FEF034();

    sub_1D91799FC();

    v34 = v17;
    v35 = v16;
    v36 = v18;
    v42 = 2;
    sub_1D8FEF088();

    sub_1D91799FC();

    v34 = v23;
    v42 = 3;
    sub_1D8FEF0DC();

    sub_1D91799FC();

    v34 = v20;
    v35 = v21;
    v36 = v22;
    v42 = 4;
    sub_1D8FEF130();

    sub_1D91799FC();

    return (*(v19 + 8))(0, v3);
  }
}

void RecommendationsMetadata.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8A38, &qword_1D91A4DC8);
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v23 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FEEF8C();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v8 = v5;
    v37 = a2;
    LOBYTE(v39) = 0;
    sub_1D8FEF184();
    v9 = v38;
    sub_1D91798FC();
    v35 = v46;
    v34 = v47;
    v36 = v48;
    v63 = v49;
    v10 = v50;
    v11 = v51;
    LOBYTE(v39) = 1;
    sub_1D8FEF1D8();
    sub_1D91798FC();
    v27 = v11;
    v28 = v10;
    v32 = *(&v46 + 1);
    v33 = v46;
    LOBYTE(v39) = 2;
    sub_1D8FEF22C();
    sub_1D91798FC();
    v31 = *(&v46 + 1);
    v29 = v46;
    v30 = v47;
    LOBYTE(v39) = 3;
    sub_1D8FEF280();
    sub_1D91798FC();
    v12 = v46;
    v64 = 4;
    sub_1D8FEF2D4();
    sub_1D91798FC();
    (*(v8 + 8))(v7, v9);
    v25 = *(&v62 + 1);
    v26 = v62;
    v13 = *(&v35 + 1);
    v38 = v61;
    v39 = v35;
    v14 = v33;
    *&v40 = v34;
    v15 = v36;
    *(&v40 + 1) = v36;
    LOBYTE(v41) = v63;
    BYTE1(v41) = v28;
    BYTE2(v41) = v27;
    v16 = v12;
    v24 = v12;
    v17 = v32;
    *(&v41 + 1) = v33;
    *&v42 = v32;
    v18 = v29;
    *(&v42 + 1) = v29;
    *&v43 = v31;
    *(&v43 + 1) = v30;
    *&v44 = v16;
    *(&v44 + 1) = v61;
    v45 = v62;
    v19 = v42;
    v20 = v37;
    v37[2] = v41;
    v20[3] = v19;
    v21 = v40;
    *v20 = v39;
    v20[1] = v21;
    v22 = v45;
    v20[5] = v44;
    v20[6] = v22;
    v20[4] = v43;
    sub_1D8FEF328(&v39, &v46);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *&v46 = v35;
    *(&v46 + 1) = v13;
    v47 = v34;
    v48 = v15;
    v49 = v63;
    v50 = v28;
    v51 = v27;
    v52 = v14;
    v53 = v17;
    v54 = v18;
    v55 = v31;
    v56 = v30;
    v57 = v24;
    v58 = v38;
    v59 = v26;
    v60 = v25;
    sub_1D8FEF360(&v46);
  }
}

uint64_t _s18PodcastsFoundation23RecommendationsMetadataV8EpisodesV0D0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a2 + 16);
    v10 = *(a2 + 32);
    v11 = *(a2 + 48);
    if (v4 == 2)
    {
      if (v9 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v9 == 2 || ((v9 ^ v4) & 1) != 0)
      {
        return result;
      }
    }

    if (v6)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (v5 != *(a2 + 24))
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    if (v8)
    {
      if ((*(a2 + 48) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v7 != *(a2 + 40))
      {
        v11 = 1;
      }

      if (v11)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t _s18PodcastsFoundation23RecommendationsMetadataV9AnalyticsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *(a1 + 34);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 33);
  v14 = *(a2 + 34);
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if (v11)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (!v11)
  {
    return 0;
  }

  if (v4 != v10 || v5 != v11)
  {
    v16 = sub_1D9179ACC();
    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }

LABEL_19:
    if ((v6 ^ v12))
    {
      return result;
    }

    goto LABEL_20;
  }

  result = 0;
  if (v6 != v12)
  {
    return result;
  }

LABEL_20:
  if (((v7 ^ v13) & 1) == 0)
  {
    return v8 ^ v14 ^ 1u;
  }

  return result;
}

uint64_t sub_1D8FEE37C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterestModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s18PodcastsFoundation23RecommendationsMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  v5 = *(a1 + 34);
  v14 = *(a1 + 80);
  v6 = *a2;
  v7 = a2[3];
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  v10 = *(a2 + 34);
  v13 = a2[10];
  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = v2;
  v24 = v3;
  v25 = v4;
  v26 = v5;
  v15 = v6;
  v16 = *(a2 + 1);
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v11 = _s18PodcastsFoundation23RecommendationsMetadataV9AnalyticsV2eeoiySbAE_AEtFZ_0(&v21, &v15);

  return (v11 & 1) != 0 && (sub_1D8E89BF4() & 1) != 0 && (sub_1D8E89BF4() & 1) != 0 && (sub_1D8E89BF4() & 1) != 0 && (sub_1D8E89BF4() & 1) != 0 && (sub_1D8E89BF4() & 1) != 0 && (sub_1D8E838F0(v14, v13) & 1) != 0 && (sub_1D8E89BF4() & 1) != 0 && (sub_1D8E89BF4() & 1) != 0 && (sub_1D8E89BF4() & 1) != 0;
}

unint64_t sub_1D8FEE5D8()
{
  result = qword_1ECAB19F0;
  if (!qword_1ECAB19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB19F0);
  }

  return result;
}

unint64_t sub_1D8FEE62C()
{
  result = qword_1ECAB8948;
  if (!qword_1ECAB8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8948);
  }

  return result;
}

unint64_t sub_1D8FEE680()
{
  result = qword_1ECAB8960;
  if (!qword_1ECAB8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8960);
  }

  return result;
}

unint64_t sub_1D8FEE6D4()
{
  result = qword_1ECAB1A30;
  if (!qword_1ECAB1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A30);
  }

  return result;
}

unint64_t sub_1D8FEE728()
{
  result = qword_1ECAB1A98;
  if (!qword_1ECAB1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A98);
  }

  return result;
}

unint64_t sub_1D8FEE77C()
{
  result = qword_1ECAB1AD0;
  if (!qword_1ECAB1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AD0);
  }

  return result;
}

unint64_t sub_1D8FEE7D0()
{
  result = qword_1ECAAFF30;
  if (!qword_1ECAAFF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8998, &unk_1D91A78E0);
    sub_1D8FEE854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF30);
  }

  return result;
}

unint64_t sub_1D8FEE854()
{
  result = qword_1ECAB1AD8;
  if (!qword_1ECAB1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AD8);
  }

  return result;
}

unint64_t sub_1D8FEE8A8()
{
  result = qword_1ECAB89A8;
  if (!qword_1ECAB89A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8998, &unk_1D91A78E0);
    sub_1D8FEE92C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB89A8);
  }

  return result;
}

unint64_t sub_1D8FEE92C()
{
  result = qword_1ECAB89B0;
  if (!qword_1ECAB89B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB89B0);
  }

  return result;
}

unint64_t sub_1D8FEE980()
{
  result = qword_1ECAB1A50;
  if (!qword_1ECAB1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A50);
  }

  return result;
}

unint64_t sub_1D8FEE9D4()
{
  result = qword_1ECAAFF20;
  if (!qword_1ECAAFF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB89C0, &qword_1D91A4D80);
    sub_1D8FEEA58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF20);
  }

  return result;
}

unint64_t sub_1D8FEEA58()
{
  result = qword_1ECAB1A58;
  if (!qword_1ECAB1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A58);
  }

  return result;
}

unint64_t sub_1D8FEEAAC()
{
  result = qword_1ECAB89D0;
  if (!qword_1ECAB89D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB89C0, &qword_1D91A4D80);
    sub_1D8FEEB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB89D0);
  }

  return result;
}

unint64_t sub_1D8FEEB30()
{
  result = qword_1ECAB89D8;
  if (!qword_1ECAB89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB89D8);
  }

  return result;
}

unint64_t sub_1D8FEEB84()
{
  result = qword_1ECAB1A10;
  if (!qword_1ECAB1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A10);
  }

  return result;
}

unint64_t sub_1D8FEEBD8()
{
  result = qword_1ECAAFF18;
  if (!qword_1ECAAFF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB89E8, &qword_1D91A4D98);
    sub_1D8FEEC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF18);
  }

  return result;
}

unint64_t sub_1D8FEEC5C()
{
  result = qword_1ECAB1A18;
  if (!qword_1ECAB1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A18);
  }

  return result;
}

unint64_t sub_1D8FEECB0()
{
  result = qword_1ECAB89F8;
  if (!qword_1ECAB89F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB89E8, &qword_1D91A4D98);
    sub_1D8FEED34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB89F8);
  }

  return result;
}

unint64_t sub_1D8FEED34()
{
  result = qword_1ECAB8A00;
  if (!qword_1ECAB8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A00);
  }

  return result;
}

unint64_t sub_1D8FEED88()
{
  result = qword_1ECAB1A78;
  if (!qword_1ECAB1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A78);
  }

  return result;
}

unint64_t sub_1D8FEEDDC()
{
  result = qword_1ECAAFF28;
  if (!qword_1ECAAFF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8A10, &qword_1D91A4DB0);
    sub_1D8FEEE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF28);
  }

  return result;
}

unint64_t sub_1D8FEEE60()
{
  result = qword_1ECAB1A80;
  if (!qword_1ECAB1A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A80);
  }

  return result;
}

unint64_t sub_1D8FEEEB4()
{
  result = qword_1ECAB8A20;
  if (!qword_1ECAB8A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8A10, &qword_1D91A4DB0);
    sub_1D8FEEF38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A20);
  }

  return result;
}

unint64_t sub_1D8FEEF38()
{
  result = qword_1ECAB8A28;
  if (!qword_1ECAB8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A28);
  }

  return result;
}

unint64_t sub_1D8FEEF8C()
{
  result = qword_1ECAB1AB0;
  if (!qword_1ECAB1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AB0);
  }

  return result;
}

unint64_t sub_1D8FEEFE0()
{
  result = qword_1ECAB19D8;
  if (!qword_1ECAB19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB19D8);
  }

  return result;
}

unint64_t sub_1D8FEF034()
{
  result = qword_1ECAB1AB8;
  if (!qword_1ECAB1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AB8);
  }

  return result;
}

unint64_t sub_1D8FEF088()
{
  result = qword_1ECAB1A38;
  if (!qword_1ECAB1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A38);
  }

  return result;
}

unint64_t sub_1D8FEF0DC()
{
  result = qword_1ECAB19F8;
  if (!qword_1ECAB19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB19F8);
  }

  return result;
}

unint64_t sub_1D8FEF130()
{
  result = qword_1ECAB1A60;
  if (!qword_1ECAB1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A60);
  }

  return result;
}

unint64_t sub_1D8FEF184()
{
  result = qword_1ECAB8A40;
  if (!qword_1ECAB8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A40);
  }

  return result;
}

unint64_t sub_1D8FEF1D8()
{
  result = qword_1ECAB8A48;
  if (!qword_1ECAB8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A48);
  }

  return result;
}

unint64_t sub_1D8FEF22C()
{
  result = qword_1ECAB8A50;
  if (!qword_1ECAB8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A50);
  }

  return result;
}

unint64_t sub_1D8FEF280()
{
  result = qword_1ECAB8A58;
  if (!qword_1ECAB8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A58);
  }

  return result;
}

unint64_t sub_1D8FEF2D4()
{
  result = qword_1ECAB8A60;
  if (!qword_1ECAB8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A60);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1D8FEF3B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 35))
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

uint64_t sub_1D8FEF410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D8FEF498(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8FEF4F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1D8FEF600()
{
  result = qword_1ECAB8A68;
  if (!qword_1ECAB8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A68);
  }

  return result;
}

unint64_t sub_1D8FEF658()
{
  result = qword_1ECAB8A70;
  if (!qword_1ECAB8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A70);
  }

  return result;
}

unint64_t sub_1D8FEF6B0()
{
  result = qword_1ECAB8A78;
  if (!qword_1ECAB8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A78);
  }

  return result;
}

unint64_t sub_1D8FEF708()
{
  result = qword_1ECAB8A80;
  if (!qword_1ECAB8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A80);
  }

  return result;
}

unint64_t sub_1D8FEF760()
{
  result = qword_1ECAB8A88;
  if (!qword_1ECAB8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A88);
  }

  return result;
}

unint64_t sub_1D8FEF7B8()
{
  result = qword_1ECAB8A90;
  if (!qword_1ECAB8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A90);
  }

  return result;
}

unint64_t sub_1D8FEF810()
{
  result = qword_1ECAB8A98;
  if (!qword_1ECAB8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8A98);
  }

  return result;
}

unint64_t sub_1D8FEF868()
{
  result = qword_1ECAB8AA0;
  if (!qword_1ECAB8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AA0);
  }

  return result;
}

unint64_t sub_1D8FEF8C0()
{
  result = qword_1ECAB8AA8;
  if (!qword_1ECAB8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AA8);
  }

  return result;
}

unint64_t sub_1D8FEF918()
{
  result = qword_1ECAB8AB0;
  if (!qword_1ECAB8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AB0);
  }

  return result;
}

unint64_t sub_1D8FEF970()
{
  result = qword_1ECAB1AA0;
  if (!qword_1ECAB1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AA0);
  }

  return result;
}

unint64_t sub_1D8FEF9C8()
{
  result = qword_1ECAB1AA8;
  if (!qword_1ECAB1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AA8);
  }

  return result;
}

unint64_t sub_1D8FEFA20()
{
  result = qword_1ECAB1A68;
  if (!qword_1ECAB1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A68);
  }

  return result;
}

unint64_t sub_1D8FEFA78()
{
  result = qword_1ECAB1A70;
  if (!qword_1ECAB1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A70);
  }

  return result;
}

unint64_t sub_1D8FEFAD0()
{
  result = qword_1ECAB1A00;
  if (!qword_1ECAB1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A00);
  }

  return result;
}

unint64_t sub_1D8FEFB28()
{
  result = qword_1ECAB1A08;
  if (!qword_1ECAB1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A08);
  }

  return result;
}

unint64_t sub_1D8FEFB80()
{
  result = qword_1ECAB1A40;
  if (!qword_1ECAB1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A40);
  }

  return result;
}

unint64_t sub_1D8FEFBD8()
{
  result = qword_1ECAB1A48;
  if (!qword_1ECAB1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A48);
  }

  return result;
}

unint64_t sub_1D8FEFC30()
{
  result = qword_1ECAB1AC0;
  if (!qword_1ECAB1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AC0);
  }

  return result;
}

unint64_t sub_1D8FEFC88()
{
  result = qword_1ECAB1AC8;
  if (!qword_1ECAB1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1AC8);
  }

  return result;
}

unint64_t sub_1D8FEFCE0()
{
  result = qword_1ECAB1A88;
  if (!qword_1ECAB1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A88);
  }

  return result;
}

unint64_t sub_1D8FEFD38()
{
  result = qword_1ECAB1A90;
  if (!qword_1ECAB1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A90);
  }

  return result;
}

unint64_t sub_1D8FEFD90()
{
  result = qword_1ECAB1A20;
  if (!qword_1ECAB1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A20);
  }

  return result;
}

unint64_t sub_1D8FEFDE8()
{
  result = qword_1ECAB1A28;
  if (!qword_1ECAB1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1A28);
  }

  return result;
}

unint64_t sub_1D8FEFE40()
{
  result = qword_1ECAB8AB8;
  if (!qword_1ECAB8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AB8);
  }

  return result;
}

unint64_t sub_1D8FEFE98()
{
  result = qword_1ECAB8AC0;
  if (!qword_1ECAB8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AC0);
  }

  return result;
}

unint64_t sub_1D8FEFEF0()
{
  result = qword_1ECAB8AC8;
  if (!qword_1ECAB8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AC8);
  }

  return result;
}

unint64_t sub_1D8FEFF48()
{
  result = qword_1ECAB8AD0;
  if (!qword_1ECAB8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AD0);
  }

  return result;
}

unint64_t sub_1D8FEFFA0()
{
  result = qword_1ECAB19E0;
  if (!qword_1ECAB19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB19E0);
  }

  return result;
}

unint64_t sub_1D8FEFFF8()
{
  result = qword_1ECAB19E8;
  if (!qword_1ECAB19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB19E8);
  }

  return result;
}

unint64_t sub_1D8FF004C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8FF0098(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8FF00E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269726373627573 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656B696CLL && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B696C736964 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D8FF0200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465776F6C6C6F66 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F6C6C6F666E75 && a2 == 0xEA00000000006465 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B696C736964 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D8FF0320(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636974796C616E61 && a2 == 0xE900000000000073;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C656E6E616863 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365646F73697065 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73776F6873 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

id ContentKeyRequest.__allocating_init(from:adamId:requestType:offlineRequest:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = objc_allocWithZone(v5);
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v11 = [v9 initFrom:a1 adamId:v10 requestType:a4 offlineRequest:a5 & 1];

  return v11;
}

id ContentKeyRequest.init(from:adamId:requestType:offlineRequest:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v37 = a5;
  v38 = a4;
  v36[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v36 - v9;
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 identifier])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
    v16 = v42;
    v17 = __swift_project_boxed_opaque_existential_1(v41, v42);
    v40 = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v39);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v17, v16);
    sub_1D8D65618(&v39, &v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45 = v43;
  v46 = v44;
  v19 = *(&v44 + 1);
  if (!*(&v44 + 1))
  {
    sub_1D8D08A50(&v45, &qword_1ECAB8AD8, &qword_1D91A6048);
    v47 = 0u;
    v48 = 0u;
    goto LABEL_9;
  }

  v20 = __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
  *(&v48 + 1) = v19;
  v21 = __swift_allocate_boxed_opaque_existential_0(&v47);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(&v45);
  if (!*(&v48 + 1))
  {
LABEL_9:
    sub_1D8D08A50(&v47, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v49 = 0;
    v50 = 0;
  }

  if ([a1 identifier])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
    v22 = v42;
    v23 = __swift_project_boxed_opaque_existential_1(v41, v42);
    v40 = v22;
    v24 = __swift_allocate_boxed_opaque_existential_0(&v39);
    (*(*(v22 - 8) + 16))(v24, v23, v22);
    sub_1D8D65618(&v39, &v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45 = v43;
  v46 = v44;
  v25 = *(&v44 + 1);
  if (!*(&v44 + 1))
  {
    sub_1D8D08A50(&v45, &qword_1ECAB8AD8, &qword_1D91A6048);
    v47 = 0u;
    v48 = 0u;
    goto LABEL_20;
  }

  v26 = __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
  *(&v48 + 1) = v25;
  v27 = __swift_allocate_boxed_opaque_existential_0(&v47);
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(&v45);
  if (!*(&v48 + 1))
  {
LABEL_20:
    sub_1D8D08A50(&v47, &qword_1ECAB57F0, &unk_1D9190AA0);
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_21:
    sub_1D8D08A50(v10, &unk_1ECAB5910, &qword_1D9188C90);
    if (!v50)
    {
      goto LABEL_18;
    }

LABEL_22:

    v33 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v34 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v32 = [v6 initWithKeyIdentifier:v33 adamId:v34 requestType:v38 offlineRequest:v37 & 1 secureInvalidationDsid:0];

    return v32;
  }

  v28 = swift_dynamicCast();
  (*(v12 + 56))(v10, v28 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_21;
  }

  (*(v12 + 32))(v15, v10, v11);
  v29 = sub_1D9176ACC();
  v31 = v30;
  (*(v12 + 8))(v15, v11);
  v49 = v29;
  v50 = v31;

  if (v50)
  {
    goto LABEL_22;
  }

LABEL_18:

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1D8FF0C0C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR___MTContentKeyRequest_requestData);
  swift_beginAccess();
  v3 = v2[1];
  v4 = MEMORY[0x1E69E7CC8];
  if (v3 >> 60 != 15)
  {
    v5 = MEMORY[0x1E69E6158];
    v6 = *v2;
    sub_1D8D752C4(v6, v3);
    v7 = sub_1D9176C7C();
    v9 = v8;
    sub_1D8D75668(v6, v3);
    sub_1D91793EC();
    v23 = v5;
    *&v22 = v7;
    *(&v22 + 1) = v9;
    sub_1D8D65618(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F509E8(v21, v24, isUniquelyReferenced_nonNull_native);
    sub_1D8D9A308(v24);
  }

  *&v22 = 25705;
  *(&v22 + 1) = 0xE200000000000000;
  v11 = MEMORY[0x1E69E6158];
  sub_1D91793EC();
  v12 = *(v1 + OBJC_IVAR___MTContentKeyRequest_requestID);
  v23 = MEMORY[0x1E69E6530];
  *&v22 = v12;
  sub_1D8D65618(&v22, v21);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D8F509E8(v21, v24, v13);
  sub_1D8D9A308(v24);
  if (*(v1 + OBJC_IVAR___MTContentKeyRequest_requestType) != 3)
  {
    *&v22 = 6910581;
    *(&v22 + 1) = 0xE300000000000000;
    sub_1D91793EC();
    v14 = *(v1 + OBJC_IVAR___MTContentKeyRequest_keyIdentifier);
    v15 = *(v1 + OBJC_IVAR___MTContentKeyRequest_keyIdentifier + 8);
    v23 = v11;
    *&v22 = v14;
    *(&v22 + 1) = v15;
    sub_1D8D65618(&v22, v21);

    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F509E8(v21, v24, v16);
    sub_1D8D9A308(v24);
  }

  *&v22 = 0x64692D6D616461;
  *(&v22 + 1) = 0xE700000000000000;
  sub_1D91793EC();
  v17 = *(v1 + OBJC_IVAR___MTContentKeyRequest_adamId);
  v18 = *(v1 + OBJC_IVAR___MTContentKeyRequest_adamId + 8);
  v23 = v11;
  *&v22 = v17;
  *(&v22 + 1) = v18;
  sub_1D8D65618(&v22, v21);

  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D8F509E8(v21, v24, v19);
  sub_1D8D9A308(v24);
  return v4;
}

uint64_t sub_1D8FF0ED8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8B38, &qword_1D91A61C8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FF23DC();
  sub_1D9179F1C();
  LOBYTE(v14) = 0;
  sub_1D91799EC();
  if (!v4)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8AF0, &qword_1D91A61A8);
    sub_1D8FF2C00(&qword_1ECAB8B40, sub_1D8FF2C78, MEMORY[0x1E69E6300]);
    sub_1D917999C();
    v14 = a4;
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8B08, &qword_1D91A61B0);
    sub_1D8FF2484(&qword_1ECAB8B50, sub_1D8FF2CCC, MEMORY[0x1E69E6300]);
    sub_1D917999C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D8FF1128(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x80000001D91C8780;
  if (v2 == 1)
  {
    v5 = 0x80000001D91C8780;
  }

  else
  {
    v3 = 0x65722D65636E6F6ELL;
    v5 = 0xEF7365736E6F7073;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E6F6973726576;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x65722D65636E6F6ELL;
    v4 = 0xEF7365736E6F7073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F6973726576;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8FF123C()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8FF12F0(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8FF1390(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8FF1440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8FF20A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D8FF1470(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000001D91C8780;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x65722D65636E6F6ELL;
    v4 = 0xEF7365736E6F7073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F6973726576;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D8FF14E0()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x65722D65636E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

unint64_t sub_1D8FF154C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FF20A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FF1574(uint64_t a1)
{
  v2 = sub_1D8FF23DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FF15B0(uint64_t a1)
{
  v2 = sub_1D8FF23DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FF15EC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D8FF2140(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1D8FF163C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a5;
  v12[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8BA0, &qword_1D91A64F8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FF3010();
  sub_1D9179F1C();
  v15 = 0;
  sub_1D91799EC();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v14 = 1;
  sub_1D91799EC();
  v13 = 2;
  sub_1D917994C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D8FF17F4()
{
  v1 = 0x737574617473;
  if (*v0 != 1)
  {
    v1 = 0x65636E6F6ELL;
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

uint64_t sub_1D8FF183C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8FF2550(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8FF1864(uint64_t a1)
{
  v2 = sub_1D8FF3010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FF18A0(uint64_t a1)
{
  v2 = sub_1D8FF3010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FF18DC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D8FF2658(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1D8FF192C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8B30, &qword_1D91A61C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FF2B44();
  sub_1D9179F1C();
  v8[15] = 0;
  sub_1D91799EC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1D91799EC();
  v8[13] = 2;
  sub_1D917996C();
  v8[12] = 3;
  sub_1D917994C();
  v8[11] = 4;
  sub_1D917996C();
  v8[10] = 5;
  sub_1D917995C();
  return (*(v4 + 8))(v6, v3);
}

double sub_1D8FF1B48(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

unint64_t sub_1D8FF1C44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8FF20F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D8FF1C74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE300000000000000;
  v6 = 6515555;
  v7 = 0xEF656D69742D6E6FLL;
  v8 = 0x6974617269707865;
  if (v2 != 4)
  {
    v8 = 0x762D776F6C2D7369;
    v7 = 0xEC00000065756C61;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x737574617473;
  if (v2 != 1)
  {
    v10 = 0x66612D77656E6572;
    v9 = 0xEB00000000726574;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1D8FF1D38()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 6515555;
  v4 = 0x6974617269707865;
  if (v1 != 4)
  {
    v4 = 0x762D776F6C2D7369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x737574617473;
  if (v1 != 1)
  {
    v5 = 0x66612D77656E6572;
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

unint64_t sub_1D8FF1DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FF20F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FF1E20(uint64_t a1)
{
  v2 = sub_1D8FF2B44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FF1E5C(uint64_t a1)
{
  v2 = sub_1D8FF2B44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D8FF1E98@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D8FF2834(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 10);
    *(a1 + 42) = *(v7 + 10);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D8FF1F18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 58))
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

uint64_t sub_1D8FF1F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_1D8FF1FE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1D8FF2044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D8FF20A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8FF20F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8FF2140(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8AE0, &qword_1D91A61A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FF23DC();
  sub_1D9179EEC();
  LOBYTE(v9) = 0;
  v6 = sub_1D91798EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8AF0, &qword_1D91A61A8);
  HIBYTE(v8) = 1;
  sub_1D8FF2C00(&qword_1ECAB8AF8, sub_1D8FF2430, MEMORY[0x1E69E6330]);
  sub_1D917989C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8B08, &qword_1D91A61B0);
  HIBYTE(v8) = 2;
  sub_1D8FF2484(&qword_1ECAB8B10, sub_1D8FF24FC, MEMORY[0x1E69E6330]);
  sub_1D917989C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

unint64_t sub_1D8FF23DC()
{
  result = qword_1ECAB8AE8;
  if (!qword_1ECAB8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8AE8);
  }

  return result;
}

unint64_t sub_1D8FF2430()
{
  result = qword_1ECAB8B00;
  if (!qword_1ECAB8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B00);
  }

  return result;
}

uint64_t sub_1D8FF2484(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8B08, &qword_1D91A61B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8FF24FC()
{
  result = qword_1ECAB8B18;
  if (!qword_1ECAB8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B18);
  }

  return result;
}

uint64_t sub_1D8FF2550(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D8FF2658(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8B90, &qword_1D91A64F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1D8FF3010();
  sub_1D9179EEC();
  if (!v1)
  {
    v12 = 0;
    v7 = sub_1D91798EC();
    v11 = 1;
    sub_1D91798EC();
    v10 = 2;
    sub_1D917984C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

void sub_1D8FF2834(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8B20, &qword_1D91A61B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FF2B44();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v31[0]) = 0;
    v9 = sub_1D91798EC();
    LOBYTE(v31[0]) = 1;
    v10 = sub_1D91798EC();
    LOBYTE(v31[0]) = 2;
    v11 = sub_1D917986C();
    v38 = v12 & 1;
    LOBYTE(v31[0]) = 3;
    *&v27 = sub_1D917984C();
    *(&v27 + 1) = v13;
    LOBYTE(v31[0]) = 4;
    v26 = sub_1D917986C();
    v37 = v14 & 1;
    v39 = 5;
    v15 = sub_1D917985C();
    v16 = *(v6 + 8);
    v22 = v15;
    v16(v8, v5);
    v25 = v9;
    *&v28 = v9;
    *(&v28 + 1) = v10;
    v24 = v10;
    v23 = v11;
    *&v29 = v11;
    LOBYTE(v9) = v38;
    BYTE8(v29) = v38;
    v17 = v27;
    *v30 = v27;
    v18 = v26;
    *&v30[16] = v26;
    v19 = v37;
    v30[24] = v37;
    LOBYTE(v10) = v22;
    v30[25] = v22;
    sub_1D8FF2B98(&v28, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v31[0] = v25;
    v31[1] = v24;
    v31[2] = v23;
    v32 = v9;
    v33 = v17;
    v34 = v18;
    v35 = v19;
    v36 = v10;
    sub_1D8FF2BD0(v31);
    v20 = v29;
    *a2 = v28;
    a2[1] = v20;
    a2[2] = *v30;
    *(a2 + 42) = *&v30[10];
  }
}

unint64_t sub_1D8FF2B44()
{
  result = qword_1ECAB8B28;
  if (!qword_1ECAB8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B28);
  }

  return result;
}

uint64_t sub_1D8FF2C00(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8AF0, &qword_1D91A61A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8FF2C78()
{
  result = qword_1ECAB8B48;
  if (!qword_1ECAB8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B48);
  }

  return result;
}

unint64_t sub_1D8FF2CCC()
{
  result = qword_1ECAB8B58;
  if (!qword_1ECAB8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B58);
  }

  return result;
}

uint64_t sub_1D8FF2D40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D8FF2D9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1D8FF2E04()
{
  result = qword_1ECAB8B60;
  if (!qword_1ECAB8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B60);
  }

  return result;
}

unint64_t sub_1D8FF2E5C()
{
  result = qword_1ECAB8B68;
  if (!qword_1ECAB8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B68);
  }

  return result;
}

unint64_t sub_1D8FF2EB4()
{
  result = qword_1ECAB8B70;
  if (!qword_1ECAB8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B70);
  }

  return result;
}

unint64_t sub_1D8FF2F0C()
{
  result = qword_1ECAB8B78;
  if (!qword_1ECAB8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B78);
  }

  return result;
}

unint64_t sub_1D8FF2F64()
{
  result = qword_1ECAB8B80;
  if (!qword_1ECAB8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B80);
  }

  return result;
}

unint64_t sub_1D8FF2FBC()
{
  result = qword_1ECAB8B88;
  if (!qword_1ECAB8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B88);
  }

  return result;
}

unint64_t sub_1D8FF3010()
{
  result = qword_1ECAB8B98;
  if (!qword_1ECAB8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8B98);
  }

  return result;
}

unint64_t sub_1D8FF3078()
{
  result = qword_1ECAB8BA8;
  if (!qword_1ECAB8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8BA8);
  }

  return result;
}

unint64_t sub_1D8FF30D0()
{
  result = qword_1ECAB8BB0;
  if (!qword_1ECAB8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8BB0);
  }

  return result;
}

unint64_t sub_1D8FF3128()
{
  result = qword_1ECAB8BB8;
  if (!qword_1ECAB8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8BB8);
  }

  return result;
}

id CoreDataKeyRequestStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1D8FF31C8(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1D917957C();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_1D8FF72DC(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unsigned __int8 *sub_1D8FF34C8(unsigned __int8 *result)
{
  if (result)
  {
    v2 = result;
    v3 = *&result[OBJC_IVAR___MTContentKeyResponse_request];
    if (!v3)
    {
      return 0;
    }

    v4 = *&v3[OBJC_IVAR___MTContentKeyRequest_adamId];
    v5 = *&v3[OBJC_IVAR___MTContentKeyRequest_adamId + 8];
    v6 = HIBYTE(v5) & 0xF;
    v7 = v4 & 0xFFFFFFFFFFFFLL;
    if (!((v5 & 0x2000000000000000) != 0 ? HIBYTE(v5) & 0xF : v4 & 0xFFFFFFFFFFFFLL))
    {
      return 0;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      v31 = v3;
      v32 = v2;

      sub_1D8FF72DC(v4, v5, 10);
      v10 = v33;
      v35 = v34;

      if (v35)
      {
        goto LABEL_65;
      }

LABEL_68:
      v36 = swift_allocObject();
      *(v36 + 16) = 1;
      v37 = [objc_opt_self() sharedInstance];
      v38 = [v37 mainOrPrivateContext];

      v39 = swift_allocObject();
      v39[2] = v1;
      v39[3] = v10;
      v39[4] = v38;
      v39[5] = v2;
      v39[6] = v36;
      v39[7] = v3;
      v50 = sub_1D8FF7210;
      v51 = v39;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = sub_1D8CF5F60;
      v49 = &block_descriptor_59;
      v40 = _Block_copy(&aBlock);
      v41 = v3;
      v42 = v2;
      v43 = v1;
      v44 = v38;

      [v44 performBlockAndWaitWithSave_];

      _Block_release(v40);
      swift_beginAccess();
      v45 = *(v36 + 16);

      return v45;
    }

    if ((v5 & 0x2000000000000000) != 0)
    {
      aBlock = *&v3[OBJC_IVAR___MTContentKeyRequest_adamId];
      v47 = v5 & 0xFFFFFFFFFFFFFFLL;
      if (v4 == 43)
      {
        if (v6)
        {
          if (--v6)
          {
            v10 = 0;
            v20 = &aBlock + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              v22 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                break;
              }

              v10 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                break;
              }

              ++v20;
              if (!--v6)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (v4 != 45)
      {
        if (v6)
        {
          v10 = 0;
          p_aBlock = &aBlock;
          while (1)
          {
            v26 = *p_aBlock - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++p_aBlock;
            if (!--v6)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v6)
      {
        if (--v6)
        {
          v10 = 0;
          v14 = &aBlock + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v6)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1D917957C();
      }

      v9 = *result;
      if (v9 == 43)
      {
        if (v7 >= 1)
        {
          v6 = v7 - 1;
          if (v7 != 1)
          {
            v10 = 0;
            if (result)
            {
              v17 = result + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  goto LABEL_63;
                }

                v19 = 10 * v10;
                if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                {
                  goto LABEL_63;
                }

                v10 = v19 + v18;
                if (__OFADD__(v19, v18))
                {
                  goto LABEL_63;
                }

                ++v17;
                if (!--v6)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v9 != 45)
      {
        if (v7)
        {
          v10 = 0;
          if (result)
          {
            while (1)
            {
              v23 = *result - 48;
              if (v23 > 9)
              {
                goto LABEL_63;
              }

              v24 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                goto LABEL_63;
              }

              v10 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v7)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v10 = 0;
        LOBYTE(v6) = 1;
LABEL_64:
        v52 = v6;
        v28 = v6;
        v29 = v3;
        v30 = v2;
        if (v28)
        {
LABEL_65:

          return 0;
        }

        goto LABEL_68;
      }

      if (v7 >= 1)
      {
        v6 = v7 - 1;
        if (v7 != 1)
        {
          v10 = 0;
          if (result)
          {
            v11 = result + 1;
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_63;
              }

              v13 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                goto LABEL_63;
              }

              v10 = v13 - v12;
              if (__OFSUB__(v13, v12))
              {
                goto LABEL_63;
              }

              ++v11;
              if (!--v6)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v6) = 0;
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  return result;
}

void sub_1D8FF3974(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a6;
  v46 = a5;
  v9 = sub_1D917744C();
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v44 - v13;
  v15 = sub_1D9176E3C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v47 = a2;
  v22 = sub_1D8FF7868(a2, a3);
  if (!v22)
  {
    v23 = [objc_opt_self() insertNewObjectForEntityForName:@"MTOfflineKeyData" inManagedObjectContext:a3];
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
  }

  v24 = v22;
  sub_1D8CF6B1C(a4 + OBJC_IVAR___MTContentKeyResponse_renewalDate, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D8CF5EF8(v14);
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v9, qword_1ECAAFBE8);
    swift_beginAccess();
    v26 = v44;
    (*(v44 + 16))(v11, v25, v9);
    v27 = sub_1D917741C();
    v28 = sub_1D9178CFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v47;
      _os_log_impl(&dword_1D8CEC000, v27, v28, "Failed to save offline key data! Renewal date is required %lld", v29, 0xCu);
      MEMORY[0x1DA72CB90](v29, -1, -1);
    }

    (*(v26 + 8))(v11, v9);
    v30 = v46;
    swift_beginAccess();
    *(v30 + 16) = 0;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    v31 = v45;
    v32 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v24 setKeyUri_];

    [v24 setStoreTrackId_];
    v33 = (a4 + OBJC_IVAR___MTContentKeyResponse_keyData);
    swift_beginAccess();
    v34 = 0;
    v35 = v33[1];
    if (v35 >> 60 != 15)
    {
      v36 = *v33;
      sub_1D8D752C4(v36, v35);
      v34 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
      sub_1D8D75668(v36, v35);
    }

    [v24 setData_];

    (*(v16 + 16))(v18, v31 + OBJC_IVAR___MTContentKeyRequest_requestDate, v15);
    sub_1D9176CCC();
    v38 = v37;
    v39 = *(v16 + 8);
    v39(v18, v15);
    [v24 setLastRenewedDate_];
    sub_1D9176CCC();
    [v24 setExpirationDate_];
    v40 = [objc_opt_self() ams_sharedAccountStore];
    v41 = [v40 ams_activeiTunesAccount];

    if (v41)
    {
      v42 = [v41 ams_DSID];

      if (v42)
      {
        v43 = [v42 longLongValue];

        [v24 setSecureInvalidationDsid_];
      }

      v39(v21, v15);
    }

    else
    {
      v39(v21, v15);
    }
  }
}

void sub_1D8FF3F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v38 = a2;
  v39 = a7;
  v34 = a5;
  v35 = a4;
  v36 = a3;
  v37 = a1;
  v41 = a10;
  v42 = a8;
  v40 = a9;
  v13 = sub_1D9176E3C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 privateQueueContext];
  v33 = v18;

  (*(v14 + 16))(v16, a6, v13);
  v19 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v23 = v36;
  v22 = v37;
  *(v21 + 2) = v10;
  *(v21 + 3) = v23;
  *(v21 + 4) = v18;
  v24 = v35;
  *(v21 + 5) = v35;
  *(v21 + 6) = a5;
  v25 = v38;
  *(v21 + 7) = v22;
  *(v21 + 8) = v25;
  *(v21 + 9) = v39;
  (*(v14 + 32))(&v21[v19], v16, v13);
  v26 = v42;
  *&v21[v20] = v42;
  v27 = &v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8];
  v28 = v41;
  *v27 = v40;
  v27[1] = v28;
  aBlock[4] = sub_1D8FF7220;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_9_1;
  v29 = _Block_copy(aBlock);
  v30 = v10;
  v31 = v33;
  sub_1D8D752C4(v24, v34);

  v32 = v26;

  [v31 performBlock_];
  _Block_release(v29);
}

uint64_t sub_1D8FF4228(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v32 = a12;
  v30 = a8;
  v31 = a11;
  v35 = a10;
  v29[1] = a7;
  v29[2] = a9;
  v14 = sub_1D9177E0C();
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D9177E9C();
  v17 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D8FF7868(a2, a3);
  if (!v20)
  {
    v21 = [objc_opt_self() insertNewObjectForEntityForName:@"MTOfflineKeyData" inManagedObjectContext:a3];
    objc_opt_self();
    v20 = swift_dynamicCastObjCClassUnconditional();
  }

  v22 = v20;
  v23 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  [v22 setData_];

  v24 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v22 setKeyUri_];

  [v22 setStoreTrackId_];
  [v22 setSecureInvalidationDsid_];
  sub_1D9176CCC();
  [v22 setExpirationDate_];
  LOBYTE(v24) = [a3 saveInCurrentBlock];
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 16) = v31;
  *(v25 + 24) = v26;
  *(v25 + 32) = v24;
  aBlock[4] = sub_1D8E92A40;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_77;
  v27 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v19, v16, v27);
  _Block_release(v27);

  (*(v34 + 8))(v16, v14);
  (*(v17 + 8))(v19, v33);
}

void sub_1D8FF47A4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + OBJC_IVAR___MTContentKeyResponse_request);
    if (v2)
    {
      v3 = *&v2[OBJC_IVAR___MTContentKeyRequest_adamId];
      v4 = *&v2[OBJC_IVAR___MTContentKeyRequest_adamId + 8];
      v5 = HIBYTE(v4) & 0xF;
      v6 = v3 & 0xFFFFFFFFFFFFLL;
      if ((v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : v3 & 0xFFFFFFFFFFFFLL)
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v31 = v2;

          sub_1D8FF72DC(v3, v4, 10);
          v10 = v32;
          v34 = v33;

          if (v34)
          {
            goto LABEL_65;
          }

          goto LABEL_67;
        }

        if ((v4 & 0x2000000000000000) != 0)
        {
          aBlock = *&v2[OBJC_IVAR___MTContentKeyRequest_adamId];
          v41 = v4 & 0xFFFFFFFFFFFFFFLL;
          if (v3 == 43)
          {
            if (v5)
            {
              if (--v5)
              {
                v10 = 0;
                v20 = &aBlock + 1;
                while (1)
                {
                  v21 = *v20 - 48;
                  if (v21 > 9)
                  {
                    break;
                  }

                  v22 = 10 * v10;
                  if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                  {
                    break;
                  }

                  v10 = v22 + v21;
                  if (__OFADD__(v22, v21))
                  {
                    break;
                  }

                  ++v20;
                  if (!--v5)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_74:
            __break(1u);
            return;
          }

          if (v3 != 45)
          {
            if (v5)
            {
              v10 = 0;
              p_aBlock = &aBlock;
              while (1)
              {
                v26 = *p_aBlock - 48;
                if (v26 > 9)
                {
                  break;
                }

                v27 = 10 * v10;
                if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                {
                  break;
                }

                v10 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  break;
                }

                ++p_aBlock;
                if (!--v5)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v5)
          {
            if (--v5)
            {
              v10 = 0;
              v14 = &aBlock + 1;
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  break;
                }

                v16 = 10 * v10;
                if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                {
                  break;
                }

                v10 = v16 - v15;
                if (__OFSUB__(v16, v15))
                {
                  break;
                }

                ++v14;
                if (!--v5)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v3 & 0x1000000000000000) != 0)
          {
            v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v8 = sub_1D917957C();
          }

          v9 = *v8;
          if (v9 == 43)
          {
            if (v6 >= 1)
            {
              v5 = v6 - 1;
              if (v6 != 1)
              {
                v10 = 0;
                if (v8)
                {
                  v17 = v8 + 1;
                  while (1)
                  {
                    v18 = *v17 - 48;
                    if (v18 > 9)
                    {
                      goto LABEL_63;
                    }

                    v19 = 10 * v10;
                    if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v10 = v19 + v18;
                    if (__OFADD__(v19, v18))
                    {
                      goto LABEL_63;
                    }

                    ++v17;
                    if (!--v5)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_73;
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
                  v23 = *v8 - 48;
                  if (v23 > 9)
                  {
                    goto LABEL_63;
                  }

                  v24 = 10 * v10;
                  if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v10 = v24 + v23;
                  if (__OFADD__(v24, v23))
                  {
                    goto LABEL_63;
                  }

                  ++v8;
                  if (!--v6)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            v10 = 0;
            LOBYTE(v5) = 1;
LABEL_64:
            v46 = v5;
            v28 = v5;
            v29 = v2;
            if (v28)
            {
LABEL_65:
              v30 = v2;
LABEL_68:

              return;
            }

LABEL_67:
            v35 = [objc_opt_self() sharedInstance];
            v36 = [v35 mainOrPrivateContext];

            v37 = swift_allocObject();
            v37[2] = v1;
            v37[3] = v10;
            v37[4] = v36;
            v44 = sub_1D8FF72D0;
            v45 = v37;
            aBlock = MEMORY[0x1E69E9820];
            v41 = 1107296256;
            v42 = sub_1D8CF5F60;
            v43 = &block_descriptor_15_3;
            v38 = _Block_copy(&aBlock);
            v39 = v1;
            v30 = v36;

            [v30 performBlockAndWaitWithSave_];
            _Block_release(v38);

            goto LABEL_68;
          }

          if (v6 >= 1)
          {
            v5 = v6 - 1;
            if (v6 != 1)
            {
              v10 = 0;
              if (v8)
              {
                v11 = v8 + 1;
                while (1)
                {
                  v12 = *v11 - 48;
                  if (v12 > 9)
                  {
                    goto LABEL_63;
                  }

                  v13 = 10 * v10;
                  if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v10 = v13 - v12;
                  if (__OFSUB__(v13, v12))
                  {
                    goto LABEL_63;
                  }

                  ++v11;
                  if (!--v5)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v5) = 0;
              goto LABEL_64;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }
  }
}

void sub_1D8FF4C38(uint64_t a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 privateQueueContext];

  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = a1;
  v5[4] = v4;
  v9[4] = sub_1D8FF7E68;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D8CF5F60;
  v9[3] = &block_descriptor_22_0;
  v6 = _Block_copy(v9);
  v7 = v1;
  v8 = v4;

  [v8 performBlockAndWaitWithSave_];
  _Block_release(v6);
}

unint64_t sub_1D8FF4DB8(void *a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v4 = sub_1D9177E0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E9C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  sub_1D8CF2154(0, &unk_1EDCD5B60, off_1E8567630);
  result = sub_1D917908C();
  v14 = result;
  v25 = v9;
  v26 = v8;
  v27 = v5;
  if (result >> 62)
  {
    result = sub_1D917935C();
    v15 = result;
  }

  else
  {
    v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v12;
  if (!v15)
  {
LABEL_10:

    v19 = [a1 saveInCurrentBlock];
    sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
    v20 = sub_1D9178E1C();
    v21 = swift_allocObject();
    v22 = v30;
    *(v21 + 16) = v29;
    *(v21 + 24) = v22;
    *(v21 + 32) = v19;
    aBlock[4] = sub_1D8FF7E6C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_71_0;
    v23 = _Block_copy(aBlock);

    sub_1D9177E4C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v11, v7, v23);
    _Block_release(v23);

    (*(v27 + 8))(v7, v4);
    return (*(v25 + 8))(v11, v26);
  }

  if (v15 >= 1)
  {
    for (i = 0; i != v15; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1DA72AA90](i, v14);
      }

      else
      {
        v17 = *(v14 + 8 * i + 32);
      }

      v18 = v17;
      [a1 deleteObject_];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1D8FF5368(NSObject *a1)
{
  v3 = sub_1D917744C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v64 - v8;
  if (!a1)
  {
    return;
  }

  v10 = *(&a1->isa + OBJC_IVAR___MTContentKeyRequest_adamId);
  v11 = *(&a1[1].isa + OBJC_IVAR___MTContentKeyRequest_adamId);
  v12 = HIBYTE(v11) & 0xF;
  v13 = v10 & 0xFFFFFFFFFFFFLL;
  if (!((v11 & 0x2000000000000000) != 0 ? HIBYTE(v11) & 0xF : v10 & 0xFFFFFFFFFFFFLL))
  {
    return;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    v37 = a1;

    sub_1D8FF72DC(v10, v11, 10);
    v17 = v38;
    v40 = v39;

    if ((v40 & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_64:
  }

  else
  {
    if ((v11 & 0x2000000000000000) == 0)
    {
      if ((v10 & 0x1000000000000000) == 0)
      {
        goto LABEL_78;
      }

      for (i = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_1D917957C())
      {
        v16 = *i;
        if (v16 == 43)
        {
          if (v13 < 1)
          {
            goto LABEL_81;
          }

          v12 = v13 - 1;
          if (v13 != 1)
          {
            v17 = 0;
            if (!i)
            {
              goto LABEL_54;
            }

            v24 = i + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                break;
              }

              v17 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              ++v24;
              if (!--v12)
              {
                goto LABEL_63;
              }
            }
          }
        }

        else if (v16 == 45)
        {
          if (v13 < 1)
          {
            __break(1u);
            goto LABEL_80;
          }

          v12 = v13 - 1;
          if (v13 != 1)
          {
            v17 = 0;
            if (!i)
            {
              goto LABEL_54;
            }

            v18 = i + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                break;
              }

              v20 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                break;
              }

              v17 = v20 - v19;
              if (__OFSUB__(v20, v19))
              {
                break;
              }

              ++v18;
              if (!--v12)
              {
                goto LABEL_63;
              }
            }
          }
        }

        else if (v13)
        {
          v17 = 0;
          if (!i)
          {
LABEL_54:
            LOBYTE(v12) = 0;
            goto LABEL_63;
          }

          while (1)
          {
            v30 = *i - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++i;
            if (!--v13)
            {
              goto LABEL_54;
            }
          }
        }

LABEL_62:
        v17 = 0;
        LOBYTE(v12) = 1;
LABEL_63:
        v70[0] = v12;
        v35 = v12;
        v36 = a1;
        if (v35)
        {
          goto LABEL_64;
        }

LABEL_66:
        v67 = v9;
        v68 = v4;
        v66 = xmmword_1D9190380;
        v79 = xmmword_1D9190380;
        v77 = 0;
        v78 = 1;
        v41 = [objc_opt_self() sharedInstance];
        v42 = [v41 mainOrPrivateContext];

        v43 = swift_allocObject();
        *(v43 + 2) = isEscapingClosureAtFileLocation;
        *(v43 + 3) = v17;
        *(v43 + 4) = v42;
        *(v43 + 5) = &v79;
        *(v43 + 6) = &v77;
        v4 = swift_allocObject();
        v4[2].isa = sub_1D8FF7BF4;
        v4[3].isa = v43;
        v75 = sub_1D8D24508;
        v76 = v4;
        aBlock = MEMORY[0x1E69E9820];
        v72 = 1107296256;
        v73 = sub_1D8D24488;
        v74 = &block_descriptor_31_1;
        v9 = _Block_copy(&aBlock);
        v44 = isEscapingClosureAtFileLocation;
        v45 = v42;

        [v45 performBlockAndWait:v9];
        _Block_release(v9);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          v46 = *(&v79 + 1);
          if (*(&v79 + 1) >> 60 == 15 || (v78 & 1) != 0)
          {
            if (qword_1ECAAFBE0 != -1)
            {
              swift_once();
            }

            v47 = __swift_project_value_buffer(v3, qword_1ECAAFBE8);
            swift_beginAccess();
            v48 = v68;
            (v68[2].isa)(v6, v47, v3);
            v49 = sub_1D917741C();
            v50 = sub_1D9178D1C();
            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              *v51 = 134217984;
              *(v51 + 4) = v17;
              _os_log_impl(&dword_1D8CEC000, v49, v50, "Offline key data not present for episode %lld", v51, 0xCu);
              MEMORY[0x1DA72CB90](v51, -1, -1);
              v52 = v45;
              v45 = a1;
            }

            else
            {
              v52 = v49;
              v49 = a1;
            }

            (v48[1].isa)(v6, v3);
            sub_1D8D75668(v79, *(&v79 + 1));
          }

          else
          {
            v53 = v79;
            sub_1D8DA04B0(v79, *(&v79 + 1));
            v68 = a1;
            sub_1D8DA04B0(v53, v46);
            v54 = v67;
            sub_1D9176CBC();
            v55 = sub_1D9176E3C();
            (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
            v65 = type metadata accessor for ContentKeyResponse(0);
            v56 = objc_allocWithZone(v65);
            v57 = OBJC_IVAR___MTContentKeyResponse_error;
            *&v56[OBJC_IVAR___MTContentKeyResponse_error] = 0;
            v58 = &v56[OBJC_IVAR___MTContentKeyResponse_keyData];
            *&v56[OBJC_IVAR___MTContentKeyResponse_keyData] = v66;
            *&v56[OBJC_IVAR___MTContentKeyResponse_request] = a1;
            swift_beginAccess();
            v60 = *v58;
            v59 = v58[1];
            *v58 = v53;
            v58[1] = v46;
            v61 = v68;
            sub_1D8DA04B0(v53, v46);
            sub_1D8D75668(v60, v59);
            v62 = v67;
            sub_1D8CF6B1C(v67, &v56[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
            swift_beginAccess();
            v63 = *&v56[v57];
            *&v56[v57] = 0;

            v69.receiver = v56;
            v69.super_class = v65;
            [&v69 init];
            sub_1D8D75668(v53, v46);

            sub_1D8D75668(v53, v46);
            sub_1D8CF5EF8(v62);
            sub_1D8D75668(v79, *(&v79 + 1));
          }

          return;
        }

        __break(1u);
LABEL_78:
        ;
      }
    }

    aBlock = *(&a1->isa + OBJC_IVAR___MTContentKeyRequest_adamId);
    v72 = v11 & 0xFFFFFFFFFFFFFFLL;
    if (v10 == 43)
    {
      if (v12)
      {
        if (--v12)
        {
          v17 = 0;
          v27 = &aBlock + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v12)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v10 != 45)
      {
        if (v12)
        {
          v17 = 0;
          p_aBlock = &aBlock;
          while (1)
          {
            v33 = *p_aBlock - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            ++p_aBlock;
            if (!--v12)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v12)
      {
        if (--v12)
        {
          v17 = 0;
          v21 = &aBlock + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v12)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1D8FF5BF0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = sub_1D917744C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8FF7868(a2, a3);
  if (v13)
  {
    v14 = v13;
    v15 = [v13 data];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1D9176C8C();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xF000000000000000;
    }

    v24 = *a4;
    v25 = a4[1];
    *a4 = v17;
    a4[1] = v19;
    sub_1D8D75668(v24, v25);
    [v14 expirationDate];
    v27 = v26;

    *a5 = v27;
    *(a5 + 8) = 0;
  }

  else
  {
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v9, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v10 + 16))(v12, v20, v9);
    v21 = sub_1D917741C();
    v22 = sub_1D9178CFC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = a2;
      _os_log_impl(&dword_1D8CEC000, v21, v22, "Failed to retrieve offline key data, no key data found for storeTrackId %lld", v23, 0xCu);
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1D8FF5EA0(uint64_t a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 mainOrPrivateContext];

  v13 = 0;
  v5 = swift_allocObject();
  v5[2] = &v13;
  v5[3] = v1;
  v5[4] = a1;
  v5[5] = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D8FF7C04;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_41_1;
  v7 = _Block_copy(aBlock);
  v8 = v1;
  v9 = v4;

  [v9 performBlockAndWait_];

  _Block_release(v7);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

void sub_1D8FF6090(uint64_t a1, char a2)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = a1;
  *(v7 + 32) = v6;
  *(v7 + 40) = a2;
  v11[4] = sub_1D8FF7C4C;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8CF5F60;
  v11[3] = &block_descriptor_47;
  v8 = _Block_copy(v11);
  v9 = v2;
  v10 = v6;

  [v10 performBlockAndWaitWithSave_];
  _Block_release(v8);
}

void *sub_1D8FF61C8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = sub_1D917744C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D8FF7868(a2, a3);
  if (result)
  {
    v12 = result;
    [result setPendingDeletion_];
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v7, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v8 + 16))(v10, v13, v7);
    v14 = sub_1D917741C();
    v15 = sub_1D9178D1C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 134218242;
      *(v16 + 4) = a2;
      *(v16 + 12) = 2080;
      if (a4)
      {
        v18 = 1702195828;
      }

      else
      {
        v18 = 0x65736C6166;
      }

      if (a4)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      v20 = sub_1D8CFA924(v18, v19, &v21);

      *(v16 + 14) = v20;
      _os_log_impl(&dword_1D8CEC000, v14, v15, "Key data for storeTrackId %lld set to pendingDeletion %s", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_1D8FF6490(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1D917744C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = sub_1D8FF7868(a2, a3);
  if (v12)
  {
    v13 = v12;
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v5, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v6 + 16))(v11, v14, v5);
    v15 = sub_1D917741C();
    v16 = sub_1D9178D1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = a2;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "Removed offline key data for storeTrackId %lld", v17, 0xCu);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    [a3 deleteObject_];
  }

  else
  {
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v5, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v6 + 16))(v8, v18, v5);
    v19 = sub_1D917741C();
    v20 = sub_1D9178D1C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = a2;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Failed to remove offline key data, no key data found for %lld", v21, 0xCu);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

id CoreDataKeyRequestStorage.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataKeyRequestStorage();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CoreDataKeyRequestStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataKeyRequestStorage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8FF6818(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D91783EC();
  v6 = sub_1D8FF6898(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1D8FF6898(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D91791CC();
    if (!v9 || (v10 = v9, v11 = sub_1D8CF4E20(v9, 0), v12 = sub_1D8FF69F0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1D91782CC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D91782CC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D917957C();
LABEL_4:

  return sub_1D91782CC();
}

unint64_t sub_1D8FF69F0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1D8FF6C10(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D917837C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1D917957C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1D8FF6C10(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1D917835C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1D8FF6C10(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D917838C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA729930](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_1D8FF6C8C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v72 = a1;
  v73 = a2;

  v4 = sub_1D91783DC();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D8FF6818(v4, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1D917957C();
      v8 = v71;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v7)
          {
            v25 = 0;
            v26 = v7 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (is_mul_ok(v25, a3))
              {
                v29 = v25 * a3;
                v30 = v27 + v28;
                v20 = __CFADD__(v29, v30);
                v25 = v29 + v30;
                if (!v20)
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (v7)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v7;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (is_mul_ok(v34, a3))
            {
              v37 = v34 * a3;
              v38 = v35 + v36;
              v20 = __CFADD__(v37, v38);
              v34 = v37 + v38;
              if (!v20)
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (is_mul_ok(v14, a3))
            {
              v18 = v14 * a3;
              v19 = v16 + v17;
              v20 = v18 >= v19;
              v14 = v18 - v19;
              if (v20)
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v72 = v6;
  v73 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v62 = 0;
        v63 = a3 + 48;
        v64 = a3 + 55;
        v65 = a3 + 87;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (is_mul_ok(v62, a3))
          {
            v69 = v62 * a3;
            v70 = v67 + v68;
            v20 = __CFADD__(v69, v70);
            v62 = v69 + v70;
            if (!v20)
            {
              v66 = (v66 + 1);
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v72 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (is_mul_ok(v43, a3))
          {
            v50 = v43 * a3;
            v51 = v48 + v49;
            v20 = v50 >= v51;
            v43 = v50 - v51;
            if (v20)
            {
              ++v47;
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v53 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v72 + 1;
      while (1)
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        if (is_mul_ok(v53, a3))
        {
          v60 = v53 * a3;
          v61 = v58 + v59;
          v20 = __CFADD__(v60, v61);
          v53 = v60 + v61;
          if (!v20)
          {
            ++v57;
            if (--v52)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

uint64_t sub_1D8FF7220()
{
  v1 = *(sub_1D9176E3C() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D8FF4228(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1D8FF72DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_1D91783DC();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D8FF6818(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1D917957C();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_1D8FF7868(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D918A530;
  v5 = sub_1D917820C();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D8D34978();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  *(v4 + 104) = sub_1D8E96578();
  *(v4 + 72) = v3;
  v8 = @"MTOfflineKeyData";
  v9 = v3;
  v10 = sub_1D9178C8C();
  v11 = sub_1D91785DC();
  v12 = [a2 objectsInEntity:v8 predicate:v10 sortDescriptors:v11];

  if (!v12)
  {
    goto LABEL_11;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
  v13 = sub_1D91785FC();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = sub_1D917935C();
  if (!result)
  {
LABEL_10:

LABEL_11:

    return 0;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1DA72AA90](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void sub_1D8FF7AC4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 privateQueueContext];

  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v9[4] = sub_1D8FF7E1C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D8CF5F60;
  v9[3] = &block_descriptor_65;
  v7 = _Block_copy(v9);
  v8 = v5;

  [v8 performBlock_];
  _Block_release(v7);
}

void sub_1D8FF7C04()
{
  v1 = *(v0 + 16);
  v2 = sub_1D8FF7868(*(v0 + 32), *(v0 + 40));
  v3 = v2;
  if (v2)
  {
  }

  *v1 = v3 != 0;
}

uint64_t dispatch thunk of CoreDataKeyRequestStorage.removeKeyData(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
}

_BYTE *ContentKeyRequest.__allocating_init(keyIdentifier:adamId:requestType:offlineRequest:secureInvalidationDsid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  v8 = v7;
  v27 = a6;
  v15 = sub_1D9176E3C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v8;
  result = objc_allocWithZone(v8);
  *&result[OBJC_IVAR___MTContentKeyRequest_requestData] = xmmword_1D9190380;
  v20 = &result[OBJC_IVAR___MTContentKeyRequest_keyIdentifier];
  *v20 = a1;
  v20[1] = a2;
  v21 = &result[OBJC_IVAR___MTContentKeyRequest_adamId];
  *v21 = a3;
  v21[1] = a4;
  *&result[OBJC_IVAR___MTContentKeyRequest_requestType] = a5;
  result[OBJC_IVAR___MTContentKeyRequest_offlineRequest] = v27;
  *&result[OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid] = a7;
  v22 = qword_1ECAB8BC0 + 1;
  if (__OFADD__(qword_1ECAB8BC0, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = result;
    ++qword_1ECAB8BC0;
    *&result[OBJC_IVAR___MTContentKeyRequest_requestID] = v22;
    v24 = a7;
    sub_1D9176E2C();
    (*(v16 + 32))(&v23[OBJC_IVAR___MTContentKeyRequest_requestDate], v18, v15);
    v28.receiver = v23;
    v28.super_class = v26;
    v25 = objc_msgSendSuper2(&v28, sel_init);

    return v25;
  }

  return result;
}

id ContentKeyResponse.__allocating_init(request:keyData:renewalDate:error:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11 = objc_allocWithZone(v6);
  v12 = OBJC_IVAR___MTContentKeyResponse_error;
  *&v11[OBJC_IVAR___MTContentKeyResponse_error] = 0;
  v13 = &v11[OBJC_IVAR___MTContentKeyResponse_keyData];
  *&v11[OBJC_IVAR___MTContentKeyResponse_keyData] = xmmword_1D9190380;
  *&v11[OBJC_IVAR___MTContentKeyResponse_request] = a1;
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = a2;
  v13[1] = a3;
  v16 = a1;
  sub_1D8DA04B0(a2, a3);
  sub_1D8D75668(v14, v15);
  sub_1D8CF6B1C(a4, &v11[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
  swift_beginAccess();
  v17 = *&v11[v12];
  *&v11[v12] = a5;
  v18 = a5;

  v22.receiver = v11;
  v22.super_class = v6;
  v19 = objc_msgSendSuper2(&v22, sel_init);

  sub_1D8D75668(a2, a3);
  sub_1D8CF5EF8(a4);
  return v19;
}

unint64_t sub_1D8FF81A8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8FF942C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ContentKeyRequest.keyIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTContentKeyRequest_keyIdentifier);

  return v1;
}

id sub_1D8FF8230(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v3;
}

uint64_t ContentKeyRequest.adamId.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTContentKeyRequest_adamId);

  return v1;
}

void *ContentKeyRequest.secureInvalidationDsid.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid);
  v2 = v1;
  return v1;
}

uint64_t ContentKeyRequest.init(keyIdentifier:adamId:requestType:offlineRequest:secureInvalidationDsid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  sub_1D8FF943C(a1, a2, a3, a4, a5, a6, a7);
  v9 = v8;

  return v9;
}

char *sub_1D8FF8470(uint64_t a1)
{
  v28 = a1;
  v2 = sub_1D9176E3C();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + OBJC_IVAR___MTContentKeyRequest_keyIdentifier);
  v6 = *(v1 + OBJC_IVAR___MTContentKeyRequest_keyIdentifier + 8);
  v7 = *(v1 + OBJC_IVAR___MTContentKeyRequest_adamId);
  v8 = *(v1 + OBJC_IVAR___MTContentKeyRequest_adamId + 8);
  v9 = *(v1 + OBJC_IVAR___MTContentKeyRequest_offlineRequest);
  v10 = *(v1 + OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid);
  v11 = type metadata accessor for ContentKeyRequest(0);
  result = objc_allocWithZone(v11);
  *&result[OBJC_IVAR___MTContentKeyRequest_requestData] = xmmword_1D9190380;
  v13 = &result[OBJC_IVAR___MTContentKeyRequest_keyIdentifier];
  *v13 = v5;
  *(v13 + 1) = v6;
  v14 = &result[OBJC_IVAR___MTContentKeyRequest_adamId];
  *v14 = v7;
  *(v14 + 1) = v8;
  *&result[OBJC_IVAR___MTContentKeyRequest_requestType] = v28;
  result[OBJC_IVAR___MTContentKeyRequest_offlineRequest] = v9;
  *&result[OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid] = v10;
  v15 = qword_1ECAB8BC0 + 1;
  if (__OFADD__(qword_1ECAB8BC0, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    ++qword_1ECAB8BC0;
    *&result[OBJC_IVAR___MTContentKeyRequest_requestID] = v15;
    v17 = v10;

    sub_1D9176E2C();
    (*(v26 + 32))(&v16[OBJC_IVAR___MTContentKeyRequest_requestDate], v4, v27);
    v29.receiver = v16;
    v29.super_class = v11;
    v18 = objc_msgSendSuper2(&v29, sel_init);
    *&v18[OBJC_IVAR___MTContentKeyRequest_requestID] = *(v1 + OBJC_IVAR___MTContentKeyRequest_requestID);
    v19 = (v1 + OBJC_IVAR___MTContentKeyRequest_requestData);
    swift_beginAccess();
    v21 = *v19;
    v20 = v19[1];
    v22 = &v18[OBJC_IVAR___MTContentKeyRequest_requestData];
    swift_beginAccess();
    v23 = *v22;
    v24 = v22[1];
    *v22 = v21;
    v22[1] = v20;
    sub_1D8DA04B0(v21, v20);
    sub_1D8D75668(v23, v24);
    return v18;
  }

  return result;
}

id ContentKeyRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *ContentKeyResponse.request.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTContentKeyResponse_request);
  v2 = v1;
  return v1;
}

void *sub_1D8FF8A5C()
{
  v1 = OBJC_IVAR___MTContentKeyResponse_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D8FF8B1C(uint64_t a1)
{
  v3 = OBJC_IVAR___MTContentKeyResponse_error;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1D8FF8B74(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MTContentKeyResponse_error;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1D8FF8C48(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v4 = 0;
  v5 = v3[1];
  if (v5 >> 60 != 15)
  {
    v6 = *v3;
    sub_1D8D752C4(v6, v5);
    v7 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
    sub_1D8D75668(v6, v5);
    v4 = v7;
  }

  return v4;
}

uint64_t sub_1D8FF8CF0(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  v3 = *v2;
  sub_1D8DA04B0(*v2, *(v2 + 8));
  return v3;
}

void sub_1D8FF8D54(char *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  if (a3)
  {
    v7 = a1;
    v8 = v5;
    v5 = sub_1D9176C8C();
    v10 = v9;
  }

  else
  {
    v11 = a1;
    v10 = 0xF000000000000000;
  }

  v12 = &a1[*a4];
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = v5;
  v12[1] = v10;
  sub_1D8D75668(v13, v14);
}

uint64_t sub_1D8FF8DFC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_1D8D75668(v7, v8);
}

uint64_t sub_1D8FF8E58@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *a3 = *v4;
  a3[1] = v6;
  return sub_1D8DA04B0(v5, v6);
}

uint64_t sub_1D8FF8EAC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v5;
  v7[1] = v6;
  sub_1D8DA04B0(v5, v6);
  return sub_1D8D75668(v8, v9);
}

id ContentKeyResponse.__allocating_init(request:error:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  if (a2)
  {
    v7 = v6;
    v8 = sub_1D9176A5C();
    v6 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 initWithRequest:a1 keyData:0 renewalDate:0 error:v8];

  return v9;
}

id ContentKeyResponse.init(request:error:)(void *a1, void *a2)
{
  v3 = v2;
  if (a2)
  {
    v6 = sub_1D9176A5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithRequest:a1 keyData:0 renewalDate:0 error:v6];

  return v7;
}

id ContentKeyResponse.init(request:keyData:renewalDate:error:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1D8FF9600(a1, a2, a3, a4, a5);

  sub_1D8D75668(a2, a3);
  return v9;
}

id sub_1D8FF937C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1D8FF942C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

void sub_1D8FF943C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  v24 = a6;
  v14 = sub_1D9176E3C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7[OBJC_IVAR___MTContentKeyRequest_requestData] = xmmword_1D9190380;
  v18 = &v7[OBJC_IVAR___MTContentKeyRequest_keyIdentifier];
  *v18 = a1;
  v18[1] = a2;
  v19 = &v7[OBJC_IVAR___MTContentKeyRequest_adamId];
  *v19 = a3;
  v19[1] = a4;
  *&v7[OBJC_IVAR___MTContentKeyRequest_requestType] = a5;
  v7[OBJC_IVAR___MTContentKeyRequest_offlineRequest] = v24;
  *&v7[OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid] = a7;
  v20 = qword_1ECAB8BC0 + 1;
  if (__OFADD__(qword_1ECAB8BC0, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1ECAB8BC0;
    *&v7[OBJC_IVAR___MTContentKeyRequest_requestID] = v20;
    v21 = a7;
    sub_1D9176E2C();
    (*(v15 + 32))(&v7[OBJC_IVAR___MTContentKeyRequest_requestDate], v17, v14);
    v22 = type metadata accessor for ContentKeyRequest(0);
    v25.receiver = v7;
    v25.super_class = v22;
    objc_msgSendSuper2(&v25, sel_init);
  }
}

id sub_1D8FF9600(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v11 = OBJC_IVAR___MTContentKeyResponse_error;
  *&v5[OBJC_IVAR___MTContentKeyResponse_error] = 0;
  v12 = &v5[OBJC_IVAR___MTContentKeyResponse_keyData];
  *&v5[OBJC_IVAR___MTContentKeyResponse_keyData] = xmmword_1D9190380;
  *&v5[OBJC_IVAR___MTContentKeyResponse_request] = a1;
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = a2;
  v12[1] = a3;
  v15 = a1;
  sub_1D8DA04B0(a2, a3);
  sub_1D8D75668(v13, v14);
  sub_1D8CF6B1C(a4, &v5[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
  swift_beginAccess();
  v16 = *&v5[v11];
  *&v5[v11] = a5;
  v17 = a5;

  v20.receiver = v5;
  v20.super_class = type metadata accessor for ContentKeyResponse(0);
  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_1D8CF5EF8(a4);
  return v18;
}

unint64_t sub_1D8FF9750()
{
  result = qword_1ECAB8C00;
  if (!qword_1ECAB8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8C00);
  }

  return result;
}

uint64_t sub_1D8FF97AC(uint64_t a1)
{
  result = sub_1D9176E3C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D8FF9990(uint64_t a1)
{
  sub_1D8CF4B30(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1D8FF9BA0()
{
  v1 = *(v0 + OBJC_IVAR___MTContentKeyRequest_requestType);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = *(v0 + OBJC_IVAR___MTContentKeyRequest_offlineRequest);
      v3 = [objc_opt_self() sharedInstance];
      v4 = &selRef_podcastsLicenseStreamingStop;
      v5 = &selRef_podcastsLicenseOfflineStop;
      goto LABEL_8;
    }

    if (v1 == 3)
    {
      v3 = [objc_opt_self() sharedInstance];
      v4 = &selRef_podcastsLicenseOfflineStopNonce;
LABEL_13:
      v6 = [v3 *v4];

      return v6;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = *(v0 + OBJC_IVAR___MTContentKeyRequest_offlineRequest);
      v3 = [objc_opt_self() sharedInstance];
      v4 = &selRef_podcastsLicenseStreamingStart;
      v5 = &selRef_podcastsLicenseOfflineStart;
      goto LABEL_8;
    }

    if (v1 == 1)
    {
      v2 = *(v0 + OBJC_IVAR___MTContentKeyRequest_offlineRequest);
      v3 = [objc_opt_self() sharedInstance];
      v4 = &selRef_podcastsLicenseStreamingRenew;
      v5 = &selRef_podcastsLicenseOfflineRenew;
LABEL_8:
      if (v2)
      {
        v4 = v5;
      }

      goto LABEL_13;
    }
  }

  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D8FF9D48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v92 = a3;
  v98 = a4;
  v8 = sub_1D917744C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v100 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v91 = v89 - v12;
  v13 = sub_1D9176E3C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v89[0] = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v93 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v94 = v89 - v19;
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v104 = v89 - v22;
  v23 = *a1;
  v103 = *(a1 + 8);
  v90 = *(a1 + 24);
  v24 = *(a1 + 40);
  v89[1] = *(a1 + 32);
  v25 = a2;
  v95 = v24;
  v109 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
  {
    v96 = v14;
    v97 = v13;
    v101 = v9;
    v102 = v8;
    v99 = v5;
    if (!i)
    {
      break;
    }

    v27 = 0;
    v9 = v25 & 0xC000000000000001;
    v14 = v25 & 0xFFFFFFFFFFFFFF8;
    v5 = &OBJC_IVAR___MTContentKeyRequest_requestID;
    v105 = v23;
    *&v106 = i;
    while (1)
    {
      if (v9)
      {
        v28 = MEMORY[0x1DA72AA90](v27, v25, v21);
      }

      else
      {
        if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v28 = *(v25 + 8 * v27 + 32);
      }

      v13 = v28;
      v8 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (*&v28[OBJC_IVAR___MTContentKeyRequest_requestID] == v23)
      {
        sub_1D917959C();
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        v23 = v105;
        i = v106;
      }

      else
      {
      }

      ++v27;
      if (v8 == i)
      {
        v29 = v109;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v30 = v104;
  v31 = v100;
  if ((v29 & 0x8000000000000000) == 0 && (v29 & 0x4000000000000000) == 0)
  {
    v33 = v101;
    v32 = v102;
    if (*(v29 + 16))
    {
      goto LABEL_19;
    }

LABEL_36:

    v13 = 0;
    if (v103)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

  v59 = sub_1D917935C();
  v33 = v101;
  v32 = v102;
  if (!v59)
  {
    goto LABEL_36;
  }

LABEL_19:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x1DA72AA90](0, v29);
LABEL_22:
    v13 = v34;

    if (v103)
    {
LABEL_23:
      if (qword_1ECAAFBE0 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v32, qword_1ECAAFBE8);
      swift_beginAccess();
      (*(v33 + 16))(v31, v35, v32);

      v36 = sub_1D917741C();
      v37 = sub_1D9178CFC();
      v38 = v13;
      if (os_log_type_enabled(v36, v37))
      {
        v39 = swift_slowAlloc();
        *v39 = 134218240;
        *(v39 + 4) = v92;
        *(v39 + 12) = 2048;
        v40 = v103;
        *(v39 + 14) = v103;

        _os_log_impl(&dword_1D8CEC000, v36, v37, "[Decoding Key Response] Request Type %ld. Response Status %ld", v39, 0x16u);
        MEMORY[0x1DA72CB90](v39, -1, -1);
      }

      else
      {

        v40 = v103;
      }

      (*(v33 + 8))(v31, v32);
      v41 = v93;
      (*(v96 + 56))(v93, 1, 1, v97);
      v42 = sub_1D8FFEAEC(v40);
      if (v43)
      {
        v44 = -1;
      }

      else
      {
        v44 = v42;
      }

      v45 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v46 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v47 = [v45 initWithDomain:v46 code:v44 userInfo:0];

      v48 = type metadata accessor for ContentKeyResponse(0);
      v49 = objc_allocWithZone(v48);
      v50 = OBJC_IVAR___MTContentKeyResponse_error;
      *&v49[OBJC_IVAR___MTContentKeyResponse_error] = 0;
      v51 = &v49[OBJC_IVAR___MTContentKeyResponse_keyData];
      v106 = xmmword_1D9190380;
      *&v49[OBJC_IVAR___MTContentKeyResponse_keyData] = xmmword_1D9190380;
      v52 = v38;
      *&v49[OBJC_IVAR___MTContentKeyResponse_request] = v38;
      swift_beginAccess();
      v54 = *v51;
      v53 = v51[1];
      *v51 = v106;
      v55 = v52;
      sub_1D8D75668(v54, v53);
      sub_1D8CF6B1C(v41, &v49[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
      swift_beginAccess();
      v56 = *&v49[v50];
      *&v49[v50] = v47;
      v57 = v47;

      v108.receiver = v49;
      v108.super_class = v48;
      v58 = objc_msgSendSuper2(&v108, sel_init);

      goto LABEL_46;
    }

LABEL_37:
    if (v95)
    {
      v60 = sub_1D9176C4C();
      v105 = v61;
      *&v106 = v60;
    }

    else
    {
      v105 = 0xF000000000000000;
      *&v106 = 0;
    }

    v62 = v96;
    v63 = *(v96 + 56);
    v64 = v97;
    v63(v30, 1, 1, v97);
    if (!((v13 == 0) | v90 & 1))
    {
      v65 = v89[0];
      (*(v62 + 16))(v89[0], v13 + OBJC_IVAR___MTContentKeyRequest_requestDate, v64);
      v103 = v13;
      v66 = v94;
      sub_1D9176DBC();
      v67 = v65;
      v68 = v104;
      (*(v62 + 8))(v67, v64);
      sub_1D8CF5EF8(v68);
      v63(v66, 0, 1, v64);
      v69 = v66;
      v13 = v103;
      sub_1D8E964A4(v69, v68);
    }

    if (qword_1ECAAFBE0 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_49;
  }

  if (*(v29 + 16))
  {
    v34 = *(v29 + 32);
    goto LABEL_22;
  }

  __break(1u);
LABEL_49:
  swift_once();
LABEL_43:
  v70 = v13;
  v71 = __swift_project_value_buffer(v32, qword_1ECAAFBE8);
  swift_beginAccess();
  v72 = v91;
  (*(v33 + 16))(v91, v71, v32);
  v73 = sub_1D917741C();
  v74 = sub_1D9178D1C();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 134217984;
    *(v75 + 4) = v92;
    _os_log_impl(&dword_1D8CEC000, v73, v74, "[Decoding Key Response] Request Type %ld. Got key data.", v75, 0xCu);
    MEMORY[0x1DA72CB90](v75, -1, -1);
  }

  (*(v33 + 8))(v72, v32);
  sub_1D8CF6B1C(v104, v94);
  v76 = type metadata accessor for ContentKeyResponse(0);
  v77 = objc_allocWithZone(v76);
  v78 = OBJC_IVAR___MTContentKeyResponse_error;
  *&v77[OBJC_IVAR___MTContentKeyResponse_error] = 0;
  v79 = &v77[OBJC_IVAR___MTContentKeyResponse_keyData];
  *&v77[OBJC_IVAR___MTContentKeyResponse_keyData] = xmmword_1D9190380;
  *&v77[OBJC_IVAR___MTContentKeyResponse_request] = v70;
  swift_beginAccess();
  v80 = *v79;
  v81 = v79[1];
  v83 = v105;
  v82 = v106;
  *v79 = v106;
  v79[1] = v83;
  v84 = v70;
  sub_1D8DA04B0(v82, v83);
  v85 = v81;
  v41 = v104;
  sub_1D8D75668(v80, v85);
  v86 = v94;
  sub_1D8CF6B1C(v94, &v77[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
  swift_beginAccess();
  v87 = *&v77[v78];
  *&v77[v78] = 0;

  v107.receiver = v77;
  v107.super_class = v76;
  v58 = objc_msgSendSuper2(&v107, sel_init);
  sub_1D8D75668(v82, v83);

  sub_1D8CF5EF8(v86);
LABEL_46:
  result = sub_1D8CF5EF8(v41);
  *v98 = v58;
  return result;
}

unint64_t sub_1D8FFA7C0(unint64_t a1, unint64_t a2, void *a3)
{
  v114 = sub_1D917744C();
  v5 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v7 = v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v101 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v115 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  *&v111 = v101 - v14;
  v15 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_87:
    v16 = sub_1D917935C();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
    return result;
  }

  v117 = a1 & 0xC000000000000001;
  v113 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_90;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_92:
    __break(1u);
    swift_once();
    v61 = v114;
    v62 = __swift_project_value_buffer(v114, qword_1ECAAFBE8);
    swift_beginAccess();
    v63 = v113;
    (v113[2])(v7, v62, v61);
    v64 = a3;
    v65 = sub_1D917741C();
    v66 = sub_1D9178CFC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v125 = v68;
      *v67 = 136315138;
      swift_getErrorValue();
      v69 = sub_1D9179D2C();
      v71 = sub_1D8CFA924(v69, v70, &v125);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_1D8CEC000, v65, v66, "[Decoding Key Response] Decode Error %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x1DA72CB90](v68, -1, -1);
      MEMORY[0x1DA72CB90](v67, -1, -1);

      v63[1](v7, v114);
    }

    else
    {

      v63[1](v7, v61);
    }

    return v117;
  }

  for (i = *(a1 + 32); ; i = MEMORY[0x1DA72AA90](0, a1))
  {
    v19 = *&i[OBJC_IVAR___MTContentKeyRequest_requestType];

    sub_1D917656C();
    swift_allocObject();
    sub_1D917655C();
    sub_1D8FFB768();
    a3 = 0;
    sub_1D917654C();

    v20 = *(&v129 + 1);
    if (v19 == 3)
    {
      break;
    }

    if (*(&v129 + 1))
    {

      v72 = *(v20 + 16);
      if (!v72)
      {
LABEL_59:

        return MEMORY[0x1E69E7CC0];
      }

      v116 = v19;
      v119[0] = MEMORY[0x1E69E7CC0];
      sub_1D91795CC();
      if (*(v20 + 16))
      {
        v73 = 0;
        v117 = v72 - 1;
        v74 = 32;
        while (1)
        {
          v75 = *(v20 + v74);
          v76 = *(v20 + v74 + 16);
          v77 = *(v20 + v74 + 32);
          *(v131 + 10) = *(v20 + v74 + 42);
          v130 = v76;
          v131[0] = v77;
          v129 = v75;
          v125 = *(v20 + v74);
          v126 = *(v20 + v74 + 16);
          v127[0] = *(v20 + v74 + 32);
          *(v127 + 10) = *(v20 + v74 + 42);
          sub_1D8FF2B98(&v129, &v122);
          sub_1D8FF9D48(&v125, a1, v116, &v128);
          v122 = v125;
          v123 = v126;
          v124[0] = v127[0];
          *(v124 + 10) = *(v127 + 10);
          sub_1D8FF2BD0(&v122);
          sub_1D917959C();
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
          if (v117 == v73)
          {
            break;
          }

          v74 += 64;
          if (++v73 >= *(v20 + 16))
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
LABEL_53:
        __break(1u);
      }

      return v119[0];
    }

    if (v15)
    {
      v79 = sub_1D917935C();
    }

    else
    {
      v79 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v114;
    result = MEMORY[0x1E69E7CC0];
    if (!v79)
    {
      return result;
    }

    v116 = v19;
    *&v125 = MEMORY[0x1E69E7CC0];
    sub_1D91795CC();
    if (v79 < 0)
    {
      goto LABEL_95;
    }

    v89 = 0;
    *&v110 = a1 & 0xFFFFFFFFFFFFFF8;
    v112 = (v113 + 2);
    ++v113;
    *&v88 = 134217984;
    v111 = v88;
    v115 = v79;
    while (1)
    {
      v15 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        break;
      }

      if (v117)
      {
        v95 = MEMORY[0x1DA72AA90](v89, a1);
      }

      else
      {
        if (v89 >= *(v110 + 16))
        {
          __break(1u);
          __break(1u);
          goto LABEL_94;
        }

        v95 = *(a1 + 8 * v89 + 32);
      }

      v96 = v95;
      if (qword_1ECAAFBE0 != -1)
      {
        swift_once();
      }

      v97 = __swift_project_value_buffer(v7, qword_1ECAAFBE8);
      swift_beginAccess();
      (*v112)(v10, v97, v7);
      v98 = sub_1D917741C();
      v99 = sub_1D9178CFC();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = v111;
        *(v100 + 4) = v116;
        _os_log_impl(&dword_1D8CEC000, v98, v99, "[Decoding Key Response] Request Type %ld. Missing license responses", v100, 0xCu);
        MEMORY[0x1DA72CB90](v100, -1, -1);
      }

      (*v113)(v10, v7);
      sub_1D8FFB7BC();
      v90 = swift_allocError();
      *v91 = 1;
      v92 = objc_allocWithZone(type metadata accessor for ContentKeyResponse(0));
      v93 = v96;
      v94 = v90;
      v16 = sub_1D9176A5C();

      [v92 initWithRequest:v93 keyData:0 renewalDate:0 error:v16];
      sub_1D917959C();
      v19 = *(v125 + 16);
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      ++v89;
      if (v15 == v115)
      {
        return v125;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    ;
  }

  if (v130)
  {
    v107 = v130;

    v10 = *(v107 + 16);
    if (!v10)
    {
      goto LABEL_59;
    }

    v128 = MEMORY[0x1E69E7CC0];
    v5 = &v128;
    sub_1D91795CC();
    v21 = v107;
    v22 = 0;
    v106 = v107 + 32;
    v116 = a1 & 0xFFFFFFFFFFFFFF8;
    v101[1] = "r";
    v110 = xmmword_1D9190380;
    v105 = v10;
    while (2)
    {
      if (v22 < *(v21 + 16))
      {
        v40 = (v22 + 1);
        v41 = (v106 + 32 * v22);
        v10 = *v41;
        v42 = v41[1];
        v112 = v40;
        v113 = v42;
        v43 = v41[3];
        v109 = v41[2];
        v121 = MEMORY[0x1E69E7CC0];
        v114 = v43;

        v44 = 0;
        do
        {
          if (v117)
          {
            v45 = MEMORY[0x1DA72AA90](v44, a1);
          }

          else
          {
            if (v44 >= *(v116 + 16))
            {
              goto LABEL_86;
            }

            v45 = *(a1 + 8 * v44 + 32);
          }

          v7 = v45;
          v46 = (v44 + 1);
          if (__OFADD__(v44, 1))
          {
            __break(1u);
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          if (*&v45[OBJC_IVAR___MTContentKeyRequest_requestID] == v10)
          {
            sub_1D917959C();
            v15 = *(v121 + 16);
            sub_1D91795DC();
            sub_1D91795EC();
            v5 = &v121;
            sub_1D91795AC();
          }

          else
          {
          }

          ++v44;
        }

        while (v46 != v16);
        v7 = v121;
        if (v121 < 0 || (v121 & 0x4000000000000000) != 0)
        {
          v49 = sub_1D917935C();
          v47 = v113;
          if (!v49)
          {
            goto LABEL_36;
          }

LABEL_30:
          if ((v7 & 0xC000000000000001) != 0)
          {
            v48 = MEMORY[0x1DA72AA90](0, v7);
          }

          else
          {
            if (!*(v7 + 16))
            {
              goto LABEL_92;
            }

            v48 = *(v7 + 32);
          }

          v113 = v48;

          if (v47)
          {
            goto LABEL_11;
          }

LABEL_37:
          if (v114)
          {
            v50 = sub_1D9176C4C();
            v108 = v51;
            v109 = v50;
          }

          else
          {
            v108 = 0xF000000000000000;
            v109 = 0;
          }

          v52 = sub_1D9176E3C();
          (*(*(v52 - 8) + 56))(v111, 1, 1, v52);
          v104 = type metadata accessor for ContentKeyResponse(0);
          v7 = objc_allocWithZone(v104);
          v53 = OBJC_IVAR___MTContentKeyResponse_error;
          *(v7 + OBJC_IVAR___MTContentKeyResponse_error) = 0;
          v54 = (v7 + OBJC_IVAR___MTContentKeyResponse_keyData);
          *(v7 + OBJC_IVAR___MTContentKeyResponse_keyData) = v110;
          v55 = v113;
          *(v7 + OBJC_IVAR___MTContentKeyResponse_request) = v113;
          swift_beginAccess();
          v56 = *v54;
          v102 = v54[1];
          v103 = v56;
          v58 = v108;
          v57 = v109;
          *v54 = v109;
          v54[1] = v58;
          v113 = v55;
          sub_1D8DA04B0(v57, v58);
          sub_1D8D75668(v103, v102);
          v59 = v111;
          sub_1D8CF6B1C(v111, v7 + OBJC_IVAR___MTContentKeyResponse_renewalDate);
          swift_beginAccess();
          v60 = *(v7 + v53);
          *(v7 + v53) = 0;

          v118.receiver = v7;
          v118.super_class = v104;
          v15 = objc_msgSendSuper2(&v118, sel_init);

          sub_1D8D75668(v57, v58);

          v39 = v59;
        }

        else
        {
          v47 = v113;
          if (*(v121 + 16))
          {
            goto LABEL_30;
          }

LABEL_36:

          v113 = 0;
          if (!v47)
          {
            goto LABEL_37;
          }

LABEL_11:
          v23 = sub_1D9176E3C();
          (*(*(v23 - 8) + 56))(v115, 1, 1, v23);
          v24 = sub_1D8FFEAEC(v47);
          if (v25)
          {
            v26 = -1;
          }

          else
          {
            v26 = v24;
          }

          v27 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
          v109 = [v27 initWithDomain:v28 code:v26 userInfo:0];

          v108 = type metadata accessor for ContentKeyResponse(0);
          v29 = objc_allocWithZone(v108);
          v30 = OBJC_IVAR___MTContentKeyResponse_error;
          *&v29[OBJC_IVAR___MTContentKeyResponse_error] = 0;
          v31 = &v29[OBJC_IVAR___MTContentKeyResponse_keyData];
          *&v29[OBJC_IVAR___MTContentKeyResponse_keyData] = v110;
          v32 = v113;
          *&v29[OBJC_IVAR___MTContentKeyResponse_request] = v113;
          swift_beginAccess();
          v34 = *v31;
          v33 = v31[1];
          *v31 = v110;
          v7 = v32;
          sub_1D8D75668(v34, v33);
          v35 = v115;
          sub_1D8CF6B1C(v115, &v29[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
          swift_beginAccess();
          v36 = *&v29[v30];
          v37 = v109;
          *&v29[v30] = v109;
          v38 = v37;

          v120.receiver = v29;
          v120.super_class = v108;
          v15 = objc_msgSendSuper2(&v120, sel_init);

          v39 = v35;
        }

        sub_1D8CF5EF8(v39);
        v5 = &v128;
        sub_1D917959C();
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        v22 = v112;
        v10 = v105;
        v21 = v107;
        if (v112 != v105)
        {
          continue;
        }

        return v128;
      }

      break;
    }

    __break(1u);
    goto LABEL_89;
  }

  if (v15)
  {
    v78 = sub_1D917935C();
  }

  else
  {
    v78 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v78)
  {
    *&v129 = MEMORY[0x1E69E7CC0];
    sub_1D91795CC();
    if (v78 < 0)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      v122 = v125;
      v123 = v126;
      v124[0] = v127[0];
      *(v124 + 10) = *(v19 + 42);
      sub_1D8FF2BD0(&v122);

      __break(1u);
      return result;
    }

    v80 = 0;
    do
    {
      if (v117)
      {
        v81 = MEMORY[0x1DA72AA90](v80, a1);
      }

      else
      {
        v81 = *(a1 + 8 * v80 + 32);
      }

      v82 = v81;
      ++v80;
      sub_1D8FFB7BC();
      v83 = swift_allocError();
      *v84 = 1;
      v85 = objc_allocWithZone(type metadata accessor for ContentKeyResponse(0));
      v86 = v83;
      v87 = sub_1D9176A5C();

      [v85 initWithRequest:v82 keyData:0 renewalDate:0 error:v87];
      sub_1D917959C();
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
    }

    while (v78 != v80);
    return v129;
  }

  return result;
}

unint64_t sub_1D8FFB768()
{
  result = qword_1ECAB8C28;
  if (!qword_1ECAB8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8C28);
  }

  return result;
}

unint64_t sub_1D8FFB7BC()
{
  result = qword_1ECAB8C30;
  if (!qword_1ECAB8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8C30);
  }

  return result;
}

void sub_1D8FFB810(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D8E316E0(0, v1, 0);
    v2 = a1 + 64;
    v3 = sub_1D91792DC();
    v4 = a1;
    v5 = 0;
    v6 = *(a1 + 36);
    v23 = v1;
    v24 = v6;
    while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(v4 + 32))
    {
      v9 = v3 >> 6;
      if ((*(v2 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v4 + 36))
      {
        goto LABEL_23;
      }

      v10 = *(*(v4 + 56) + 8 * v3);
      v12 = *(v25 + 16);
      v11 = *(v25 + 24);
      v13 = v4;

      if (v12 >= v11 >> 1)
      {
        sub_1D8E316E0((v11 > 1), v12 + 1, 1);
      }

      *(v25 + 16) = v12 + 1;
      *(v25 + 8 * v12 + 32) = v10;
      v7 = 1 << *(v13 + 32);
      if (v3 >= v7)
      {
        goto LABEL_24;
      }

      v2 = a1 + 64;
      v14 = *(a1 + 64 + 8 * v9);
      if ((v14 & (1 << v3)) == 0)
      {
        goto LABEL_25;
      }

      v4 = v13;
      v15 = *(v13 + 36);
      v6 = v24;
      if (v24 != v15)
      {
        goto LABEL_26;
      }

      v16 = v14 & (-2 << (v3 & 0x3F));
      if (v16)
      {
        v7 = __clz(__rbit64(v16)) | v3 & 0x7FFFFFFFFFFFFFC0;
        v8 = v23;
      }

      else
      {
        v17 = v9 << 6;
        v18 = v9 + 1;
        v19 = (a1 + 72 + 8 * v9);
        v8 = v23;
        while (v18 < (v7 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_1D8D9B144(v3, v24, 0);
            v4 = a1;
            v7 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_1D8D9B144(v3, v24, 0);
        v4 = a1;
      }

LABEL_4:
      ++v5;
      v3 = v7;
      if (v5 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_1D8FFBA68(unint64_t a1)
{
  v27[5] = *MEMORY[0x1E69E9840];
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (!sub_1D917935C())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA72AA90](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
  v5 = MEMORY[0x1E69E6158];
  sub_1D91793EC();
  v26 = v5;
  *&v25 = 49;
  *(&v25 + 1) = 0xE100000000000000;
  sub_1D8D65618(&v25, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D8F509E8(v24, v27, isUniquelyReferenced_nonNull_native);
  sub_1D8D9A308(v27);
  v7 = 0x80000001D91D2590;
  v8 = 0xD000000000000010;
  if (*&v4[OBJC_IVAR___MTContentKeyRequest_requestType] == 3)
  {
    v8 = 0x65722D65636E6F6ELL;
    v7 = 0xEE00737473657571;
  }

  *&v25 = v8;
  *(&v25 + 1) = v7;
  sub_1D91793EC();
  v23 = v4;
  if (v2)
  {
    v9 = sub_1D917935C();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    goto LABEL_20;
  }

  *&v25 = MEMORY[0x1E69E7CC0];
  sub_1D8E31380(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
LABEL_28:
    __break(1u);
  }

  v11 = 0;
  v10 = v25;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA72AA90](v11, a1);
    }

    else
    {
      v12 = *(a1 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = sub_1D8FF0C0C();

    *&v25 = v10;
    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1D8E31380((v15 > 1), v16 + 1, 1);
      v10 = v25;
    }

    ++v11;
    *(v10 + 16) = v16 + 1;
    *(v10 + 8 * v16 + 32) = v14;
  }

  while (v9 != v11);
LABEL_20:
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
  *&v25 = v10;
  sub_1D8D65618(&v25, v24);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D8F509E8(v24, v27, v17);
  sub_1D8D9A308(v27);
  v18 = objc_opt_self();
  v19 = sub_1D917802C();

  v27[0] = 0;
  v20 = [v18 dataWithJSONObject:v19 options:0 error:v27];

  v21 = v27[0];
  if (v20)
  {
    sub_1D9176C8C();
  }

  else
  {
    v22 = v21;
    sub_1D9176A6C();

    swift_willThrow();
  }
}

uint64_t sub_1D8FFBE5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8FFEAEC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D8FFBEEC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9177E0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9177E9C();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR___MTStandardKeyRequestHandler_requestQueue];
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_1D8FFEB2C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_60;
  v13 = _Block_copy(aBlock);

  v14 = v2;
  sub_1D9177E4C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

void sub_1D8FFC1BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 podcastsLicenseCert];

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v11[4] = sub_1D8FFF928;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8D591F0;
  v11[3] = &block_descriptor_44_0;
  v9 = _Block_copy(v11);

  v10 = a3;

  [v7 valueWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_1D8FFC2F4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v35 = a6;
  v36 = a5;
  v33 = a3;
  v8 = sub_1D9176C2C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1D917653C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177E0C();
  v34 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1D9176B9C();
    v20 = a1;
    sub_1D91764EC();
    v21 = sub_1D91764BC();
    v22 = swift_allocObject();
    v23 = v36;
    *(v22 + 16) = a4;
    *(v22 + 24) = v23;
    v41 = sub_1D8FFF990;
    v42 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1D90F1C50;
    v40 = &block_descriptor_56_0;
    v24 = _Block_copy(&aBlock);

    [v35 performDataRequest:v21 callback:v24];
    _Block_release(v24);

    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v26 = v17;
    sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
    v35 = sub_1D9178E1C();
    v27 = swift_allocObject();
    v28 = v36;
    v27[2] = a4;
    v27[3] = v28;
    v29 = v33;
    v27[4] = v33;
    v41 = sub_1D8FFF984;
    v42 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1D8CF5F60;
    v40 = &block_descriptor_50;
    v30 = _Block_copy(&aBlock);

    v31 = v29;

    sub_1D9177E4C();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    v32 = v35;
    MEMORY[0x1DA72A400](0, v19, v15, v30);
    _Block_release(v30);

    (*(v34 + 8))(v15, v13);
    return (*(v26 + 8))(v19, v16);
  }
}

void sub_1D8FFC7C8(void (*a1)(id), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_1D9176E3C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = type metadata accessor for ContentKeyResponse(0);
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR___MTContentKeyResponse_error;
  *&v10[OBJC_IVAR___MTContentKeyResponse_error] = 0;
  v12 = &v10[OBJC_IVAR___MTContentKeyResponse_keyData];
  v18 = xmmword_1D9190380;
  *&v10[OBJC_IVAR___MTContentKeyResponse_keyData] = xmmword_1D9190380;
  *&v10[OBJC_IVAR___MTContentKeyResponse_request] = 0;
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = v18;
  sub_1D8D75668(v13, v14);
  sub_1D8CF6B1C(v7, &v10[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
  swift_beginAccess();
  v15 = *&v10[v11];
  *&v10[v11] = a3;
  v16 = a3;

  v19.receiver = v10;
  v19.super_class = v9;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  sub_1D8D08A50(v7, &qword_1ECAB75C0, &unk_1D9188A50);
  a1(v17);
}

uint64_t sub_1D8FFC9A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1D9177E0C();
  v26 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D9177E9C();
  v15 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v24 = sub_1D9178E1C();
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a5;
  aBlock[4] = sub_1D8FFF998;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_62;
  v19 = _Block_copy(aBlock);

  sub_1D8DA04B0(a1, a2);
  v20 = a5;

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  v21 = v24;
  MEMORY[0x1DA72A400](0, v17, v14, v19);
  _Block_release(v19);

  (*(v26 + 8))(v14, v12);
  return (*(v15 + 8))(v17, v25);
}

void sub_1D8FFCCB0(void (*a1)(id), uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v21 = a2;
  v22 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1D9176E3C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = type metadata accessor for ContentKeyResponse(0);
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR___MTContentKeyResponse_error;
  *&v13[OBJC_IVAR___MTContentKeyResponse_error] = 0;
  v15 = &v13[OBJC_IVAR___MTContentKeyResponse_keyData];
  *&v13[OBJC_IVAR___MTContentKeyResponse_keyData] = xmmword_1D9190380;
  *&v13[OBJC_IVAR___MTContentKeyResponse_request] = 0;
  swift_beginAccess();
  v17 = *v15;
  v16 = v15[1];
  *v15 = a3;
  v15[1] = a4;
  sub_1D8DA04B0(a3, a4);
  sub_1D8D75668(v17, v16);
  sub_1D8CF6B1C(v10, &v13[OBJC_IVAR___MTContentKeyResponse_renewalDate]);
  swift_beginAccess();
  v18 = *&v13[v14];
  *&v13[v14] = a5;
  v19 = a5;

  v23.receiver = v13;
  v23.super_class = v12;
  v20 = objc_msgSendSuper2(&v23, sel_init, v21);
  sub_1D8D08A50(v10, &qword_1ECAB75C0, &unk_1D9188A50);
  v22(v20);
}

uint64_t sub_1D8FFCF28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v13 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *&v4[OBJC_IVAR___MTStandardKeyRequestHandler_requestQueue];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = v4;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  aBlock[4] = sub_1D8FFEB38;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_6_1;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  v19 = v4;
  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v22);
}

uint64_t sub_1D8FFD210(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v7 = sub_1D9177E0C();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177E9C();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_1D8FFEC78(v12);

  sub_1D8FFB810(v13);
  v15 = v14;

  v16 = dispatch_group_create();
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x1E69E7CC0];
  v18 = *(v15 + 16);
  if (v18)
  {
    v19 = (v15 + 32);
    do
    {
      v20 = *v19++;

      dispatch_group_enter(v16);

      v21 = v16;
      sub_1D8FFEF1C(v20, a3, a2, v17, v21);

      --v18;
    }

    while (v18);
  }

  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v22 = sub_1D9178E1C();
  v23 = swift_allocObject();
  v24 = v31;
  v23[2] = v30;
  v23[3] = v24;
  v23[4] = v17;
  aBlock[4] = sub_1D8FFF8CC;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_23_0;
  v25 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v26 = v34;
  v27 = v36;
  sub_1D91792CC();
  sub_1D9178D7C();
  _Block_release(v25);

  (*(v35 + 8))(v26, v27);
  (*(v32 + 8))(v11, v33);
}

void sub_1D8FFD5E8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();

  sub_1D8E30154(v4);
  swift_endAccess();
  dispatch_group_leave(a3);
}

double sub_1D8FFD654(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  a1(v4);

  return result;
}

void sub_1D8FFD78C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContentKeyResponse(0);
  v3 = sub_1D91785DC();
  (*(a2 + 16))(a2, v3);
}

void sub_1D8FFD7F8(void *a1, uint64_t a2, void *a3, unint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10, void *a11, uint64_t a12)
{
  v73 = a11;
  v74 = a7;
  v69 = a8;
  v70 = a10;
  v68 = a9;
  v17 = sub_1D9176C2C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v67 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D917653C();
  v71 = *(v19 - 8);
  v72 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D917744C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v64 = a12;
    v65 = a6;
    v26 = qword_1ECAAFBE0;
    v27 = a1;
    if (v26 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v22, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v23 + 16))(v25, v28, v22);
    v29 = v27;
    v30 = sub_1D917741C();
    v31 = sub_1D9178D1C();
    v66 = v29;

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v63 = a5;
      v34 = v33;
      *v32 = 138412546;
      v35 = v66;
      *(v32 + 4) = v66;
      *v33 = a1;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v74;
      v36 = v35;
      _os_log_impl(&dword_1D8CEC000, v30, v31, "[Key Loading] From %@ request Type %ld", v32, 0x16u);
      sub_1D8D08A50(v34, &unk_1ECAB6C70, &unk_1D9188C30);
      v37 = v34;
      a5 = v63;
      MEMORY[0x1DA72CB90](v37, -1, -1);
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }

    (*(v23 + 8))(v25, v22);
    sub_1D9176B9C();
    sub_1D91764EC();
    sub_1D8DA04B0(v69, v68);
    sub_1D917651C();
    sub_1D917648C();
    v38 = sub_1D8E27090(&unk_1F5461188);
    sub_1D8D08A50(&unk_1F54611A8, &qword_1ECAB8C48, &unk_1D91A6960);
    if (v74 == 2)
    {
      v39 = v65;
      v40 = v70;
      if (!v70)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v39 = v65;
      v40 = v70;
      if (v74 != 3 || !v70)
      {
        goto LABEL_21;
      }
    }

    v50 = v40;
    v51 = [v50 stringValue];
    v52 = a5;
    v53 = sub_1D917820C();
    v55 = v54;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v38;
    v57 = v53;
    a5 = v52;
    sub_1D8F50170(v57, v55, 0xD00000000000001ALL, 0x80000001D91D2570, isUniquelyReferenced_nonNull_native);

LABEL_21:
    sub_1D91764CC();
    v58 = sub_1D91764BC();
    v59 = swift_allocObject();
    v59[2] = a4;
    v59[3] = a5;
    v59[4] = v39;
    aBlock[4] = sub_1D8FFF91C;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D90F1C50;
    aBlock[3] = &block_descriptor_38_1;
    v60 = _Block_copy(aBlock);

    [v73 performDataRequest:v58 account:v64 callback:v60];
    _Block_release(v60);

    (*(v71 + 8))(v21, v72);
    return;
  }

  if (a3)
  {
    v41 = a3;
    if (!(a4 >> 62))
    {
      goto LABEL_11;
    }

LABEL_24:
    v42 = sub_1D917935C();
    if (v42)
    {
      goto LABEL_12;
    }

LABEL_25:
    v62 = a3;
    a5(MEMORY[0x1E69E7CC0]);
    goto LABEL_26;
  }

  sub_1D8FFB7BC();
  v41 = swift_allocError();
  *v61 = 2;
  if (a4 >> 62)
  {
    goto LABEL_24;
  }

LABEL_11:
  v42 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
    goto LABEL_25;
  }

LABEL_12:
  v63 = a5;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v43 = a3;
  sub_1D91795CC();
  if (v42 < 0)
  {
    __break(1u);
    return;
  }

  v44 = 0;
  do
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x1DA72AA90](v44, a4);
    }

    else
    {
      v45 = *(a4 + 8 * v44 + 32);
    }

    v46 = v45;
    ++v44;
    v47 = objc_allocWithZone(type metadata accessor for ContentKeyResponse(0));
    v48 = v41;
    v49 = sub_1D9176A5C();
    [v47 initWithRequest:v46 keyData:0 renewalDate:0 error:v49];

    sub_1D917959C();
    sub_1D91795DC();
    sub_1D91795EC();
    sub_1D91795AC();
  }

  while (v42 != v44);
  v63(aBlock[0]);
LABEL_26:
}

void sub_1D8FFDEF0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6, void (*a7)(void), uint64_t a8)
{
  v60 = a8;
  v61 = a2;
  v55 = a1;
  v11 = sub_1D917744C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  if (qword_1ECAAFBE0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_1ECAAFBE8);
  swift_beginAccess();
  v53 = *(v12 + 16);
  v54 = v17;
  v53(v16, v17, v11);
  v18 = a5;
  v19 = sub_1D917741C();
  v20 = sub_1D9178D1C();

  v21 = os_log_type_enabled(v19, v20);
  v58 = v12;
  v59 = v11;
  if (v21)
  {
    v56 = a7;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v62 = v23;
    *v22 = 136315138;
    if (a5)
    {
      swift_getErrorValue();
      v24 = sub_1D9179D2C();
      v26 = v25;
    }

    else
    {
      v26 = 0xE90000000000002ELL;
      v24 = 0x726F727265206F6ELL;
    }

    v28 = sub_1D8CFA924(v24, v26, &v62);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_1D8CEC000, v19, v20, "[Key Loading] Loaded with %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1DA72CB90](v23, -1, -1);
    MEMORY[0x1DA72CB90](v22, -1, -1);

    v27 = *(v58 + 8);
    v27(v16, v59);
    a7 = v56;
  }

  else
  {

    v27 = *(v12 + 8);
    v27(v16, v11);
  }

  v29 = v61;
  if (v61 >> 60 != 15)
  {
    v38 = v55;
    sub_1D8DA04B0(v55, v61);
    sub_1D8FFA7C0(a6, v38, v29);
    a7();

    sub_1D8D75668(v38, v29);
    return;
  }

  if (a6 >> 62)
  {
    v30 = sub_1D917935C();
  }

  else
  {
    v30 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = MEMORY[0x1E69E7CC0];
  v52 = v27;
  if (v30)
  {
    v62 = MEMORY[0x1E69E7CC0];
    sub_1D91795CC();
    if (v30 < 0)
    {
      __break(1u);
      return;
    }

    v56 = a7;
    v32 = 0;
    do
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1DA72AA90](v32, a6);
      }

      else
      {
        v36 = *(a6 + 8 * v32 + 32);
      }

      v37 = v36;
      v35 = objc_allocWithZone(type metadata accessor for ContentKeyResponse(0));
      if (a5)
      {
        v33 = v35;
        v34 = sub_1D9176A5C();
        v35 = v33;
      }

      else
      {
        v34 = 0;
      }

      ++v32;
      [v35 initWithRequest:v37 keyData:0 renewalDate:0 error:v34];

      sub_1D917959C();
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
    }

    while (v30 != v32);
    v31 = v62;
    a7 = v56;
    v27 = v52;
  }

  v39 = v57;
  v40 = v59;
  v53(v57, v54, v59);
  v41 = a5;
  v42 = sub_1D917741C();
  v43 = sub_1D9178CFC();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = v40;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v62 = v46;
    *v45 = 136315138;
    if (a5)
    {
      swift_getErrorValue();
      v47 = sub_1D9179D2C();
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0xE000000000000000;
    }

    v50 = sub_1D8CFA924(v47, v49, &v62);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_1D8CEC000, v42, v43, "[Key Loading] Loaded with missing data with error %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x1DA72CB90](v46, -1, -1);
    MEMORY[0x1DA72CB90](v45, -1, -1);

    v52(v57, v44);
  }

  else
  {

    v27(v39, v40);
  }

  (a7)(v31);
}

id StandardKeyRequestHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StandardKeyRequestHandler.init()()
{
  v11 = sub_1D9178E0C();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v10 = OBJC_IVAR___MTStandardKeyRequestHandler_requestQueue;
  v9[1] = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E4C();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v11);
  v5 = sub_1D9178E4C();
  v6 = v12;
  *&v12[v10] = v5;
  v7 = type metadata accessor for StandardKeyRequestHandler();
  v13.receiver = v6;
  v13.super_class = v7;
  return objc_msgSendSuper2(&v13, sel_init);
}

id StandardKeyRequestHandler.__allocating_init(concurrentOperationCount:requestEncodingType:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithConcurrentOperationCount:a1 requestEncodingType:a2];
}

id StandardKeyRequestHandler.init(concurrentOperationCount:requestEncodingType:)(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  v13 = sub_1D9178E0C();
  v2 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12 = OBJC_IVAR___MTStandardKeyRequestHandler_requestQueue;
  v11[1] = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E4C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v13);
  v7 = sub_1D9178E4C();
  v8 = v14;
  *&v14[v12] = v7;
  v9 = type metadata accessor for StandardKeyRequestHandler();
  v17.receiver = v8;
  v17.super_class = v9;
  return objc_msgSendSuper2(&v17, sel_initWithConcurrentOperationCount_requestEncodingType_, v15, v16);
}

id StandardKeyRequestHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StandardKeyRequestHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8FFEAEC(uint64_t result)
{
  if (((result + 1021) > 0x14 || ((1 << (result - 3)) & 0x1F0F8F) == 0) && result != -1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D8FFEB78()
{
  result = qword_1ECAB8C40;
  if (!qword_1ECAB8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8C40);
  }

  return result;
}

void *sub_1D8FFEC78(unint64_t a1)
{
  v25 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_27:
    v2 = sub_1D917935C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1DA72AA90](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v9 = *&v6[OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid];
        if (v9)
        {
          v10 = *&v6[OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid];
        }

        else
        {
          v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          v9 = 0;
        }

        v11 = v9;
        v13 = sub_1D8F06D7C(v10);
        v14 = v4[2];
        v15 = (v12 & 1) == 0;
        v16 = v14 + v15;
        if (__OFADD__(v14, v15))
        {
          goto LABEL_25;
        }

        v17 = v12;
        if (v4[3] < v16)
        {
          sub_1D9007BA4(v16, 1);
          v4 = v25;
          v18 = sub_1D8F06D7C(v10);
          if ((v17 & 1) != (v19 & 1))
          {
            sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
            result = sub_1D9179CFC();
            __break(1u);
            return result;
          }

          v13 = v18;
        }

        if (v17)
        {

          v5 = (v4[7] + 8 * v13);
          MEMORY[0x1DA729B90]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D917863C();
          }

          sub_1D917869C();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1D9189070;
          *(v20 + 32) = v7;
          v4[(v13 >> 6) + 8] |= 1 << v13;
          *(v4[6] + 8 * v13) = v10;
          *(v4[7] + 8 * v13) = v20;
          v21 = v4[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_26;
          }

          v4[2] = v23;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}