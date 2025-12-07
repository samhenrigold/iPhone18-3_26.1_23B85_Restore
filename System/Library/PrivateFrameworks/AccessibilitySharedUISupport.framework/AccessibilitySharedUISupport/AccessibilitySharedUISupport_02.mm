uint64_t sub_23DA4E05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_23DB6F8DC();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PracticeGeneralView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF08, &qword_23DB77908);
  MEMORY[0x28223BE20](v21);
  v9 = &v17 - v8;
  *v9 = sub_23DB6F68C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF10, &unk_23DB77910) + 44);
  v18 = a1;
  v19 = v10;
  v11 = *((*(**(a1 + 8) + 1496))() + 16);

  v25 = 0;
  v26 = v11;
  swift_getKeyPath();
  sub_23DA52A58(a1, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeGeneralView);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_23DA53A24(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for PracticeGeneralView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF18, &qword_23DB79B10);
  sub_23DA52254();
  sub_23DB704FC();
  v14 = v20;
  sub_23DB6F8BC();
  sub_23DA52A58(v18, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeGeneralView);
  v15 = swift_allocObject();
  sub_23DA53A24(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v12, type metadata accessor for PracticeGeneralView);
  sub_23DA17B80(&qword_27E2FCF30, &qword_27E2FCF08, &qword_23DB77908, MEMORY[0x277CE1198]);
  sub_23DB6FF6C();

  (*(v23 + 8))(v14, v24);
  return sub_23DA17988(v9, &qword_27E2FCF08, &qword_23DB77908);
}

uint64_t sub_23DA4E41C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  result = (*(**(a2 + 8) + 1496))();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(result + 16))
  {
    v6 = *(result + 8 * v4 + 32);

    *a3 = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DA4E4B0(uint64_t a1)
{
  v16 = sub_23DB6F55C();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_23DB6F12C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PracticeGeneralView(0);
  sub_23DA0E2B4(a1 + *(v12 + 20), v7, &qword_27E2FCC18, &qword_23DB79160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_23DB70ACC();
    v13 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_23DB6F11C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23DA4E738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_23DA52A58(v2, &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PracticeGeneralView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_23DA53A24(&v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for PracticeGeneralView);
  v8 = sub_23DB6F68C();
  v9 = sub_23DB6F5BC();
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0x4059000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_23DA52164;
  *(a2 + 56) = v7;
  return result;
}

uint64_t sub_23DA4E88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_23DB7044C();
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = sub_23DB6F2DC();
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCE68, &unk_23DB76FE0);
  v12 = sub_23DB6F2DC();
  v26 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  v28 = v4;
  v29 = v5;
  v30 = v3;
  sub_23DB6F68C();
  sub_23DB7043C();
  sub_23DB7062C();
  WitnessTable = swift_getWitnessTable();
  sub_23DB7005C();
  (*(v24 + 8))(v8, v6);
  sub_23DB700EC();
  v18 = sub_23DB701FC();

  v35 = v18;
  sub_23DB6FB3C();
  v33 = WitnessTable;
  v34 = MEMORY[0x277CDFC60];
  v19 = swift_getWitnessTable();
  sub_23DB6FE0C();

  (*(v25 + 8))(v11, v9);
  v20 = sub_23DA17B80(&qword_27E2FCE70, &qword_27E2FCE68, &unk_23DB76FE0, MEMORY[0x277CE0728]);
  v31 = v19;
  v32 = v20;
  swift_getWitnessTable();
  sub_23DAAC170();
  v21 = *(v26 + 8);
  v21(v14, v12);
  sub_23DAAC170();
  return (v21)(v17, v12);
}

uint64_t sub_23DA4ECB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DAAC170();
  sub_23DAAC170();
  return (*(v4 + 8))(v6, a2);
}

double sub_23DA4ED98(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_23DA4EDE0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23DB7018C();
  result = sub_23DB6F13C();
  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_23DA4EE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB7062C();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB58, &qword_23DB76B00);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB60, &unk_23DB76B08);
  v9 = (a2 + *(result + 36));
  *v9 = sub_23DA4EDE0;
  v9[1] = 0;
  v9[2] = v4;
  v9[3] = v6;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23DA4EF30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23DA4EF78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23DA4EFD8()
{
  result = qword_27E2FCB68;
  if (!qword_27E2FCB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCB60, &unk_23DB76B08);
    sub_23DA17B80(&qword_27E2FCB70, &qword_27E2FCB58, &qword_23DB76B00, MEMORY[0x277CE04B0]);
    sub_23DA17B80(&qword_27E2FCB78, &qword_27E2FCB80, qword_23DB76BB8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCB68);
  }

  return result;
}

uint64_t sub_23DA4F13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23DB6FB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCBE8, &qword_23DB76C98);
  sub_23DA500EC();
  return sub_23DB6F01C();
}

__n128 sub_23DA4F1B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC00, &qword_23DB76CA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v17 - v10;
  *v11 = sub_23DB6F68C();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC08, &qword_23DB76CA8);
  sub_23DA4F3A0(a1, a2, a4, &v11[*(v12 + 44)]);
  sub_23DB6F13C();
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA17A54(v11, a5, &qword_27E2FCC00, &qword_23DB76CA0);
  v13 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCBE8, &qword_23DB76C98) + 36);
  v14 = v17[5];
  *(v13 + 64) = v17[4];
  *(v13 + 80) = v14;
  *(v13 + 96) = v17[6];
  v15 = v17[1];
  *v13 = v17[0];
  *(v13 + 16) = v15;
  result = v17[3];
  *(v13 + 32) = v17[2];
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_23DA4F3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v33 = a2;
  v34 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC10, &qword_23DB76CB0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v31 - v10);
  KeyPath = swift_getKeyPath();
  *(v11 + *(type metadata accessor for PracticeHeaderView(0) + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
  swift_storeEnumTagMultiPayload();

  sub_23DB6F91C();
  type metadata accessor for Page(0);
  sub_23DA5425C(&qword_27E2FCBD8, type metadata accessor for Page, &protocol conformance descriptor for Page);
  *v11 = sub_23DB6F1EC();
  v11[1] = v13;
  v62 = *(a1 + 32);
  v63 = *(a1 + 48);
  v36 = *(a1 + 32);
  *&v37 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCBB0, &qword_23DB76C80);
  sub_23DB703AC();
  v31 = v39;
  v14 = v40;
  v15 = v41;
  v16 = swift_allocObject();
  *(v16 + 16) = v31;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  v17 = (v11 + *(v7 + 44));
  *v17 = v32;
  v17[1] = v16;
  type metadata accessor for Page.Practice(0);
  sub_23DA5425C(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);

  v32 = sub_23DB6F1EC();
  v19 = v18;
  sub_23DB6F13C();
  v39 = v62;
  v40 = v63;
  sub_23DB7038C();
  sub_23DB7062C();
  sub_23DB6F34C();
  *&v51[55] = v58;
  *&v51[71] = v59;
  *&v51[87] = v60;
  *&v51[103] = v61;
  *&v51[7] = v55;
  *&v51[23] = v56;
  v54 = 1;
  v52 = 1;
  *&v51[39] = v57;
  v20 = v35;
  sub_23DA0E2B4(v11, v35, &qword_27E2FCC10, &qword_23DB76CB0);
  v21 = v34;
  sub_23DA0E2B4(v20, v34, &qword_27E2FCC10, &qword_23DB76CB0);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC20, &qword_23DB76CF0) + 48);
  *(v38 + 9) = *v51;
  *(&v38[4] + 9) = *&v51[64];
  v23 = (v21 + v22);
  *&v36 = 0;
  BYTE8(v36) = 1;
  *(&v36 + 9) = *v53;
  HIDWORD(v36) = *&v53[3];
  v24 = v32;
  *&v37 = v32;
  *(&v37 + 1) = v19;
  *&v38[0] = 0;
  BYTE8(v38[0]) = 1;
  *(&v38[5] + 9) = *&v51[80];
  *(&v38[6] + 9) = *&v51[96];
  *(&v38[7] + 1) = *&v51[111];
  *(&v38[1] + 9) = *&v51[16];
  *(&v38[2] + 9) = *&v51[32];
  *(&v38[3] + 9) = *&v51[48];
  v25 = v38[5];
  v23[6] = v38[4];
  v23[7] = v25;
  v26 = v38[7];
  v23[8] = v38[6];
  v23[9] = v26;
  v27 = v38[1];
  v23[2] = v38[0];
  v23[3] = v27;
  v28 = v38[3];
  v23[4] = v38[2];
  v23[5] = v28;
  v29 = v37;
  *v23 = v36;
  v23[1] = v29;
  sub_23DA0E2B4(&v36, &v39, &qword_27E2FCC28, &qword_23DB76CF8);
  sub_23DA17988(v11, &qword_27E2FCC10, &qword_23DB76CB0);
  v48 = *&v51[64];
  v49 = *&v51[80];
  *v50 = *&v51[96];
  v44 = *v51;
  v45 = *&v51[16];
  v46 = *&v51[32];
  *&v39 = 0;
  BYTE8(v39) = 1;
  *(&v39 + 9) = *v53;
  HIDWORD(v39) = *&v53[3];
  v40 = v24;
  v41 = v19;
  v42 = 0;
  v43 = 1;
  *&v50[15] = *&v51[111];
  v47 = *&v51[48];
  sub_23DA17988(&v39, &qword_27E2FCC28, &qword_23DB76CF8);
  return sub_23DA17988(v20, &qword_27E2FCC10, &qword_23DB76CB0);
}

uint64_t sub_23DA4F8D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB88, &qword_23DB76C58);
  MEMORY[0x28223BE20](v32);
  v30 = &v29 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB90, &qword_23DB76C60);
  MEMORY[0x28223BE20](v31);
  v5 = (&v29 - v4);
  v6 = sub_23DB6F55C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB98, &qword_23DB76C68);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v41 = *(v2 + 24);
  v16 = *(v2 + 2);
  v40 = v16;
  if (v41 != 1)
  {

    sub_23DB70ACC();
    v20 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v40, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v7 + 8))(v9, v6);
    if (v37 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v39 = *v2;
    v37 = v2[2];
    v38 = *(v2 + 6);
    v21 = swift_allocObject();
    v22 = v2[1];
    *(v21 + 16) = *v2;
    *(v21 + 32) = v22;
    *(v21 + 48) = v2[2];
    *(v21 + 64) = *(v2 + 6);
    *v5 = sub_23DA50084;
    v5[1] = v21;
    swift_storeEnumTagMultiPayload();
    sub_23DA0E2B4(&v40, v34, &qword_27E2FCBA0, &qword_23DB76C70);
    sub_23DA0E2B4(&v39, v34, &qword_27E2FCBA8, &qword_23DB76C78);
    sub_23DA0E2B4(&v37, v34, &qword_27E2FCBB0, &qword_23DB76C80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCBB8, &qword_23DB76C88);
    sub_23DA17B80(&qword_27E2FCBC0, &qword_27E2FCBB8, &qword_23DB76C88, MEMORY[0x277CDF7D8]);
    sub_23DA4FF50();
    sub_23DB6F79C();
    goto LABEL_6;
  }

  if (v16)
  {
    goto LABEL_5;
  }

LABEL_3:
  v39 = *v2;
  v37 = v2[2];
  v38 = *(v2 + 6);
  v17 = swift_allocObject();
  v18 = v2[1];
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = v2[2];
  *(v17 + 64) = *(v2 + 6);
  v35 = sub_23DA4FF20;
  v36 = v17;
  sub_23DA0E2B4(&v40, v34, &qword_27E2FCBA0, &qword_23DB76C70);
  sub_23DA0E2B4(&v39, v34, &qword_27E2FCBA8, &qword_23DB76C78);
  sub_23DA0E2B4(&v37, v34, &qword_27E2FCBB0, &qword_23DB76C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCBB8, &qword_23DB76C88);
  sub_23DA17B80(&qword_27E2FCBC0, &qword_27E2FCBB8, &qword_23DB76C88, MEMORY[0x277CDF7D8]);
  v19 = v30;
  sub_23DB7000C();

  sub_23DA0E2B4(v19, v5, &qword_27E2FCB88, &qword_23DB76C58);
  swift_storeEnumTagMultiPayload();
  sub_23DA4FF50();
  sub_23DB6F79C();
  sub_23DA17988(v19, &qword_27E2FCB88, &qword_23DB76C58);
LABEL_6:
  type metadata accessor for Page(0);
  sub_23DA5425C(&qword_27E2FCBD8, type metadata accessor for Page, &protocol conformance descriptor for Page);

  v23 = sub_23DB6F1EC();
  v25 = v24;
  sub_23DA0E2B4(v15, v12, &qword_27E2FCB98, &qword_23DB76C68);
  v26 = v33;
  sub_23DA0E2B4(v12, v33, &qword_27E2FCB98, &qword_23DB76C68);
  v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCBE0, &qword_23DB76C90) + 48));
  *v27 = v23;
  v27[1] = v25;

  sub_23DA17988(v15, &qword_27E2FCB98, &qword_23DB76C68);

  return sub_23DA17988(v12, &qword_27E2FCB98, &qword_23DB76C68);
}

uint64_t sub_23DA4FF14(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_23DA4FF50()
{
  result = qword_27E2FCBC8;
  if (!qword_27E2FCBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCB88, &qword_23DB76C58);
    sub_23DA17B80(&qword_27E2FCBC0, &qword_27E2FCBB8, &qword_23DB76C88, MEMORY[0x277CDF7D8]);
    sub_23DA5425C(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCBC8);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  sub_23DA4FF14(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_23DA500EC()
{
  result = qword_27E2FCBF0;
  if (!qword_27E2FCBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCBE8, &qword_23DB76C98);
    sub_23DA17B80(&qword_27E2FCBF8, &qword_27E2FCC00, &qword_23DB76CA0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCBF0);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{

  return swift_deallocObject();
}

uint64_t sub_23DA5029C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23DA5030C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_23DA5044C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t type metadata accessor for PracticeGeneralView(uint64_t a1)
{
  result = qword_27E2FCE80;
  if (!qword_27E2FCE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23DA50764()
{
  result = qword_27E2FCCF8;
  if (!qword_27E2FCCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCCF0, &qword_23DB76E80);
    sub_23DA507F0();
    sub_23DA50924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCCF8);
  }

  return result;
}

unint64_t sub_23DA507F0()
{
  result = qword_27E2FCD00;
  if (!qword_27E2FCD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCD08, &qword_23DB76E88);
    sub_23DA5087C();
    sub_23DA508D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD00);
  }

  return result;
}

unint64_t sub_23DA5087C()
{
  result = qword_27E2FCD10;
  if (!qword_27E2FCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD10);
  }

  return result;
}

unint64_t sub_23DA508D0()
{
  result = qword_27E2FCD18;
  if (!qword_27E2FCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD18);
  }

  return result;
}

unint64_t sub_23DA50924()
{
  result = qword_27E2FCD20;
  if (!qword_27E2FCD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCD28, &qword_23DB76E90);
    sub_23DA508D0();
    sub_23DA509B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD20);
  }

  return result;
}

unint64_t sub_23DA509B0()
{
  result = qword_27E2FCD30;
  if (!qword_27E2FCD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD30);
  }

  return result;
}

unint64_t sub_23DA50A04()
{
  result = qword_27E2FCD48;
  if (!qword_27E2FCD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCD40, &qword_23DB76E98);
    sub_23DA50A90();
    sub_23DA50D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD48);
  }

  return result;
}

unint64_t sub_23DA50A90()
{
  result = qword_27E2FCD50;
  if (!qword_27E2FCD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCD58, &qword_23DB76EA0);
    sub_23DA50B1C();
    sub_23DA50C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD50);
  }

  return result;
}

unint64_t sub_23DA50B1C()
{
  result = qword_27E2FCD60;
  if (!qword_27E2FCD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCD68, &qword_23DB76EA8);
    sub_23DA50BA8();
    sub_23DA50BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD60);
  }

  return result;
}

unint64_t sub_23DA50BA8()
{
  result = qword_27E2FCD70;
  if (!qword_27E2FCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD70);
  }

  return result;
}

unint64_t sub_23DA50BFC()
{
  result = qword_27E2FCD78;
  if (!qword_27E2FCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD78);
  }

  return result;
}

unint64_t sub_23DA50C50()
{
  result = qword_27E2FCD80;
  if (!qword_27E2FCD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCD88, &qword_23DB76EB0);
    sub_23DA50CDC();
    sub_23DA50D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD80);
  }

  return result;
}

unint64_t sub_23DA50CDC()
{
  result = qword_27E2FCD90;
  if (!qword_27E2FCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD90);
  }

  return result;
}

unint64_t sub_23DA50D30()
{
  result = qword_27E2FCD98;
  if (!qword_27E2FCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCD98);
  }

  return result;
}

unint64_t sub_23DA50D84()
{
  result = qword_27E2FCDA0;
  if (!qword_27E2FCDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCDA8, &qword_23DB76EB8);
    sub_23DA50E10();
    sub_23DA50F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDA0);
  }

  return result;
}

unint64_t sub_23DA50E10()
{
  result = qword_27E2FCDB0;
  if (!qword_27E2FCDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCDB8, &qword_23DB76EC0);
    sub_23DA50E9C();
    sub_23DA50EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDB0);
  }

  return result;
}

unint64_t sub_23DA50E9C()
{
  result = qword_27E2FCDC0;
  if (!qword_27E2FCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDC0);
  }

  return result;
}

unint64_t sub_23DA50EF0()
{
  result = qword_27E2FCDC8;
  if (!qword_27E2FCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDC8);
  }

  return result;
}

unint64_t sub_23DA50F44()
{
  result = qword_27E2FCDD0;
  if (!qword_27E2FCDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCDD8, &qword_23DB76EC8);
    sub_23DA50FD0();
    sub_23DA51024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDD0);
  }

  return result;
}

unint64_t sub_23DA50FD0()
{
  result = qword_27E2FCDE0;
  if (!qword_27E2FCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDE0);
  }

  return result;
}

unint64_t sub_23DA51024()
{
  result = qword_27E2FCDE8;
  if (!qword_27E2FCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDE8);
  }

  return result;
}

unint64_t sub_23DA51078()
{
  result = qword_27E2FCDF0;
  if (!qword_27E2FCDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCCD0, &qword_23DB76E18);
    sub_23DA50764();
    sub_23DA5425C(&qword_27E2FCD38, type metadata accessor for PracticeGeneralView, &unk_23DB77648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDF0);
  }

  return result;
}

unint64_t sub_23DA51134()
{
  result = qword_27E2FCDF8;
  if (!qword_27E2FCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCDF8);
  }

  return result;
}

unint64_t sub_23DA51188()
{
  result = qword_27E2FCE00;
  if (!qword_27E2FCE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCCE0, &qword_23DB76E28);
    sub_23DA50A04();
    sub_23DA51078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCE00);
  }

  return result;
}

uint64_t sub_23DA512D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

double sub_23DA513F8@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for Page.PracticeSingleButton(0);
  sub_23DA5425C(&qword_27E2FCE60, type metadata accessor for Page.PracticeSingleButton, &protocol conformance descriptor for Page);
  v4 = sub_23DB6F1EC();
  v6 = v5;
  v7 = [objc_opt_self() mainScreen];
  [v7 bounds];
  v9 = v8;

  if (v9 >= 850.0)
  {
    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12)
    {
      v10 = INFINITY;
    }

    else
    {
      v10 = 280.0;
    }
  }

  else
  {
    v10 = 280.0;
  }

  sub_23DB7037C();
  result = v14;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v10;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_23DA5163C()
{

  return swift_deallocObject();
}

uint64_t sub_23DA516C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE78, &unk_23DB791B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23DA51794(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE78, &unk_23DB791B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23DA51844(uint64_t a1)
{
  sub_23DA518C8(319);
  if (v1 <= 0x3F)
  {
    sub_23DA5195C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DA518C8(uint64_t a1)
{
  if (!qword_27E2FCE90)
  {
    type metadata accessor for Page.Practice(255);
    sub_23DA5425C(&qword_27E2FC3C0, type metadata accessor for Page.Practice, &protocol conformance descriptor for Page);
    v1 = sub_23DB6F21C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2FCE90);
    }
  }
}

void sub_23DA5195C(uint64_t a1)
{
  if (!qword_27E2FCE98)
  {
    sub_23DB6F12C();
    v1 = sub_23DB6F05C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2FCE98);
    }
  }
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

uint64_t sub_23DA519D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_23DA51A20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

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

uint64_t sub_23DA51AA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23DA51AF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_23DA51B64(uint64_t a1, int a2)
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

uint64_t sub_23DA51BAC(uint64_t result, int a2, int a3)
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

uint64_t sub_23DA51C00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23DA51C48(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23DA51CB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23DA51D00(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_23DA51D74()
{
  result = qword_27E2FCEA0;
  if (!qword_27E2FCEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCEA8, &qword_23DB77410);
    sub_23DA51134();
    sub_23DA51188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCEA0);
  }

  return result;
}

uint64_t sub_23DA51E00(void *a1)
{
  sub_23DB7044C();
  sub_23DB6F2DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCE68, &unk_23DB76FE0);
  sub_23DB6F2DC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23DA17B80(&qword_27E2FCE70, &qword_27E2FCE68, &unk_23DB76FE0, MEMORY[0x277CE0728]);
  return swift_getWitnessTable();
}

void sub_23DA52040(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2)
  {

    sub_23DA5208C(a3, a4 & 1);
  }
}

uint64_t sub_23DA5208C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

void sub_23DA52098(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2)
  {

    sub_23DA4FF14(a3, a4 & 1);
  }
}

uint64_t sub_23DA52164@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PracticeGeneralView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23DA4E05C(v4, a1);
}

uint64_t sub_23DA521D4@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for PracticeGeneralView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23DA4E41C(a1, v6, a2);
}

unint64_t sub_23DA52254()
{
  result = qword_27E2FCF20;
  if (!qword_27E2FCF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCF18, &qword_23DB79B10);
    sub_23DA522E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCF20);
  }

  return result;
}

unint64_t sub_23DA522E0()
{
  result = qword_27E2FCF28;
  if (!qword_27E2FCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCF28);
  }

  return result;
}

uint64_t objectdestroy_143Tm()
{
  v1 = (type metadata accessor for PracticeGeneralView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23DB6F12C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_23DA52490()
{
  result = qword_27E2FCF90;
  if (!qword_27E2FCF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC638, &qword_23DB779A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCF90);
  }

  return result;
}

unint64_t sub_23DA5251C()
{
  result = qword_27E2FCF98;
  if (!qword_27E2FCF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCF70, &qword_23DB77980);
    sub_23DA525D4();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCF98);
  }

  return result;
}

unint64_t sub_23DA525D4()
{
  result = qword_27E2FCFA0;
  if (!qword_27E2FCFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCF68, &qword_23DB77978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC2B8, &qword_23DB74308);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FC638, &qword_23DB779A0);
    sub_23DA17B80(&qword_27E2FC2B0, &qword_27E2FC2B8, &qword_23DB74308, MEMORY[0x277CDF028]);
    sub_23DA52490();
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCFA0);
  }

  return result;
}

unint64_t sub_23DA5278C()
{
  result = qword_27E2FCFC8;
  if (!qword_27E2FCFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCF88, &qword_23DB77998);
    sub_23DA52818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCFC8);
  }

  return result;
}

unint64_t sub_23DA52818()
{
  result = qword_27E2FCFD0;
  if (!qword_27E2FCFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCF80, &qword_23DB77990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCF70, &qword_23DB77980);
    sub_23DB6FA4C();
    sub_23DA5251C();
    sub_23DA5425C(&qword_27E2FCFB8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    sub_23DA17B80(&qword_27E2FCFD8, &qword_27E2FCFC0, &qword_23DB77A10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FCFD0);
  }

  return result;
}

unint64_t sub_23DA5295C()
{
  result = qword_27E2FCFE0;
  if (!qword_27E2FCFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2FCFE0);
  }

  return result;
}

uint64_t objectdestroy_154Tm()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DA52A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_23DA52AD0(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t objectdestroy_186Tm()
{

  sub_23DA4FF14(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_23DA52B60()
{
  v1 = *(sub_23DB6F2FC() - 8);
  v2 = *(v0 + 24);
  v3 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_23DA52F28(v3, v2);
}

unint64_t sub_23DA52BC4()
{
  result = qword_27E2FD050;
  if (!qword_27E2FD050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD030, &qword_23DB77B20);
    sub_23DA52C7C();
    sub_23DA17B80(&qword_27E2FD080, &qword_27E2FD088, &qword_23DB77B90, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD050);
  }

  return result;
}

unint64_t sub_23DA52C7C()
{
  result = qword_27E2FD058;
  if (!qword_27E2FD058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD060, &qword_23DB77B80);
    sub_23DA52D34();
    sub_23DA17B80(&qword_27E2FCE70, &qword_27E2FCE68, &unk_23DB76FE0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD058);
  }

  return result;
}

unint64_t sub_23DA52D34()
{
  result = qword_27E2FD068;
  if (!qword_27E2FD068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD070, &qword_23DB77B88);
    sub_23DA17B80(&qword_27E2FD078, &qword_27E2FD028, &qword_23DB77B18, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD068);
  }

  return result;
}

uint64_t objectdestroy_198Tm()
{
  v1 = sub_23DB6F2FC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  sub_23DA4FF14(*(v0 + 32), *(v0 + 40));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23DA52EC4()
{
  sub_23DB6F2FC();

  return sub_23DA433D8(v0 + 16);
}

uint64_t sub_23DA52F28(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v10);

  v3 = v10;
  v2 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v10);

  if (v3 == v10 && v2 == v11)
  {
    goto LABEL_3;
  }

  v4 = sub_23DB70DBC();

  if (v4)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v10);

  v8 = v10;
  v7 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v10);

  if (v8 == v10 && v7 == v11)
  {
LABEL_3:

LABEL_5:
    sub_23DB7067C();
    sub_23DB7065C();

    MEMORY[0x28223BE20](v5);
    sub_23DB6F19C();
  }

  v9 = sub_23DB70DBC();

  if (v9)
  {
    goto LABEL_5;
  }

  return result;
}

unint64_t sub_23DA532D4()
{
  result = qword_27E2FD0A8;
  if (!qword_27E2FD0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD0A0, &qword_23DB77C80);
    sub_23DA53360();
    sub_23DA533B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD0A8);
  }

  return result;
}

unint64_t sub_23DA53360()
{
  result = qword_27E2FD0B0;
  if (!qword_27E2FD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD0B0);
  }

  return result;
}

unint64_t sub_23DA533B4()
{
  result = qword_27E2FD0B8;
  if (!qword_27E2FD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD0B8);
  }

  return result;
}

unint64_t sub_23DA5346C()
{
  result = qword_27E2FD138;
  if (!qword_27E2FD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD138);
  }

  return result;
}

unint64_t sub_23DA534C0()
{
  result = qword_27E2FD140;
  if (!qword_27E2FD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD140);
  }

  return result;
}

unint64_t sub_23DA53530()
{
  result = qword_27E2FD180;
  if (!qword_27E2FD180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD178, &qword_23DB77DF0);
    sub_23DA535E8();
    sub_23DA17B80(&qword_27E2FD1B8, &qword_27E2FD1C0, &qword_23DB77E10, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD180);
  }

  return result;
}

unint64_t sub_23DA535E8()
{
  result = qword_27E2FD188;
  if (!qword_27E2FD188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD190, &qword_23DB77DF8);
    sub_23DA53674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD188);
  }

  return result;
}

unint64_t sub_23DA53674()
{
  result = qword_27E2FD198;
  if (!qword_27E2FD198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD1A0, &qword_23DB77E00);
    sub_23DA5372C();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD198);
  }

  return result;
}

unint64_t sub_23DA5372C()
{
  result = qword_27E2FD1A8;
  if (!qword_27E2FD1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD1B0, &qword_23DB77E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD1A8);
  }

  return result;
}

uint64_t objectdestroy_240Tm()
{

  sub_23DA4FF14(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_23DA53814()
{
  v1 = sub_23DB6F15C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_23DA538C8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_23DA5394C()
{
  result = qword_27E2FD248;
  if (!qword_27E2FD248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD238, &qword_23DB77ED8);
    sub_23DA539D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD248);
  }

  return result;
}

unint64_t sub_23DA539D0()
{
  result = qword_27E2FD250;
  if (!qword_27E2FD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD250);
  }

  return result;
}

uint64_t sub_23DA53A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DA53A8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23DA53AEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23DA53B30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
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

uint64_t sub_23DA53B98(uint64_t a1, unsigned int a2)
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

uint64_t sub_23DA53BE0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DA53D9C()
{
  result = qword_27E2FD2B8;
  if (!qword_27E2FD2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD2C0, &qword_23DB780C0);
    sub_23DA532D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD2B8);
  }

  return result;
}

uint64_t objectdestroy_284Tm()
{
  swift_unknownObjectRelease();

  sub_23DA4FF14(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_23DA54004()
{
  result = qword_27E2FD358;
  if (!qword_27E2FD358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD338, &unk_23DB788B0);
    sub_23DA540BC();
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD358);
  }

  return result;
}

unint64_t sub_23DA540BC()
{
  result = qword_27E2FD360;
  if (!qword_27E2FD360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD330, &unk_23DB78200);
    sub_23DA54174();
    sub_23DA17B80(&qword_27E2FD378, &qword_27E2FD380, &unk_23DB78950, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD360);
  }

  return result;
}

unint64_t sub_23DA54174()
{
  result = qword_27E2FD368;
  if (!qword_27E2FD368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD128, &qword_23DB77D08);
    sub_23DA5425C(&qword_27E2FD370, MEMORY[0x277CDD6F0], MEMORY[0x277CDD6E8]);
    sub_23DA17B80(&qword_27E2FD080, &qword_27E2FD088, &qword_23DB77B90, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD368);
  }

  return result;
}

uint64_t sub_23DA5425C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DA542AC()
{

  sub_23DA4FF14(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_23DA54308()
{
  result = qword_27E2FD3A8;
  if (!qword_27E2FD3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD398, &qword_23DB782C8);
    sub_23DA543C0();
    sub_23DA17B80(&qword_27E2FD3D0, &qword_27E2FCEF8, &qword_23DB778D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD3A8);
  }

  return result;
}

unint64_t sub_23DA543C0()
{
  result = qword_27E2FD3B0;
  if (!qword_27E2FD3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD3B8, &qword_23DB782D8);
    sub_23DA54478();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD3B0);
  }

  return result;
}

unint64_t sub_23DA54478()
{
  result = qword_27E2FD3C0;
  if (!qword_27E2FD3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD3C8, &unk_23DB782E0);
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD3C0);
  }

  return result;
}

uint64_t sub_23DA54538()
{
  sub_23DA4FF14(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_23DA54580(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23DA54634()
{
  result = qword_27E2FD430;
  if (!qword_27E2FD430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD438, &qword_23DB78350);
    sub_23DA17B80(&qword_27E2FD440, &qword_27E2FD448, &qword_23DB78358, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD430);
  }

  return result;
}

unint64_t sub_23DA54734()
{
  result = qword_27E2FD490;
  if (!qword_27E2FD490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD498, &qword_23DB78398);
    sub_23DA54308();
    sub_23DA17B80(&qword_27E2FD3D8, &qword_27E2FD388, &qword_23DB782B8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD490);
  }

  return result;
}

unint64_t sub_23DA547F0()
{
  result = qword_27E2FD4A0;
  if (!qword_27E2FD4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD4A8, &unk_23DB783A0);
    sub_23DA54580(&qword_27E2FD418, &qword_27E2FD410, &qword_23DB78340, sub_23DA54604);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD4A0);
  }

  return result;
}

uint64_t sub_23DA54900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a2;
  v4 = sub_23DB6E92C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23DB708DC();
  v19 = v8;
  sub_23DB6E8FC();
  sub_23DA16E70();
  v17[0] = sub_23DB70BAC();
  v10 = v9;
  v11 = *(v5 + 8);
  v11(v7, v4);

  v18 = sub_23DB708DC();
  v19 = v12;
  sub_23DB6E8FC();
  v13 = sub_23DB70BAC();
  v15 = v14;
  v11(v7, v4);

  LOBYTE(v4) = sub_23DB3C3FC(v13, v15, v17[0], v10);

  return v4 & 1;
}

uint64_t sub_23DA54ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23DB6E92C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3;
  v20 = a4;
  sub_23DB6E8FC();
  sub_23DA16E70();
  v10 = sub_23DB70BAC();
  v12 = v11;
  v13 = *(v7 + 8);
  v13(v9, v6);
  v19 = sub_23DB708DC();
  v20 = v14;
  sub_23DB6E8FC();
  v15 = sub_23DB70BAC();
  v17 = v16;
  v13(v9, v6);

  LOBYTE(v6) = sub_23DB3C3FC(v15, v17, v10, v12);

  return v6 & 1;
}

uint64_t sub_23DA54C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_23DB6E92C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23DB708DC();
  v21 = v8;
  sub_23DB6E8FC();
  sub_23DA16E70();
  v9 = sub_23DB70BAC();
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v7, v4);

  v20 = v9;
  v21 = v11;
  v18 = sub_23DB708DC();
  v19 = v13;
  sub_23DB6E8FC();
  v14 = sub_23DB70BAC();
  v16 = v15;
  v12(v7, v4);

  v18 = v14;
  v19 = v16;
  LOBYTE(v4) = sub_23DB70BDC();

  return v4 & 1;
}

uint64_t sub_23DA54E3C@<X0>(uint64_t a2@<X8>)
{
  v30 = a2;
  v28 = type metadata accessor for PracticeShortTextDefaultView(0);
  MEMORY[0x28223BE20](v28);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for PracticeShortTextVOView(0);
  MEMORY[0x28223BE20](v27);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4B0, &qword_23DB78438);
  MEMORY[0x28223BE20](v29);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4B8, &qword_23DB78440);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4C0, &qword_23DB78448);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  type metadata accessor for Page.PracticeShortTextFormatted(0);
  if (swift_dynamicCastClass())
  {
    KeyPath = swift_getKeyPath();
    sub_23DA55628(&qword_27E2FD4F0, type metadata accessor for Page.PracticeShortTextFormatted, &protocol conformance descriptor for Page);

    *v10 = sub_23DB6F1EC();
    *(v10 + 1) = v15;
    *(v10 + 2) = KeyPath;
    v10[24] = 0;
    swift_storeEnumTagMultiPayload();
    sub_23DA555D4();
    sub_23DA55628(&qword_27E2FD4D8, type metadata accessor for PracticeShortTextVOView, &unk_23DB785B0);

    sub_23DB6F79C();
    sub_23DA0E2B4(v13, v7, &qword_27E2FD4C0, &qword_23DB78448);
    swift_storeEnumTagMultiPayload();
    sub_23DA55518();
    sub_23DA55628(&qword_27E2FD4E0, type metadata accessor for PracticeShortTextDefaultView, &unk_23DB78560);
    sub_23DB6F79C();

    return sub_23DA17988(v13, &qword_27E2FD4C0, &qword_23DB78448);
  }

  else
  {
    v25 = v7;
    v26 = v11;
    type metadata accessor for Page.PracticeShortTextVO(0);
    v17 = swift_dynamicCastClass();
    v24 = swift_getKeyPath();

    sub_23DB6F91C();
    if (v17)
    {
      sub_23DA55628(&qword_27E2FD4E8, type metadata accessor for Page.PracticeShortTextVO, &protocol conformance descriptor for Page);
      *v5 = sub_23DB6F1EC();
      *(v5 + 1) = v18;
      *(v5 + 2) = v24;
      v5[24] = 0;
      sub_23DA55670(v5, v10, type metadata accessor for PracticeShortTextVOView);
      swift_storeEnumTagMultiPayload();
      sub_23DA555D4();
      sub_23DA55628(&qword_27E2FD4D8, type metadata accessor for PracticeShortTextVOView, &unk_23DB785B0);
      sub_23DB6F79C();
      sub_23DA0E2B4(v13, v25, &qword_27E2FD4C0, &qword_23DB78448);
      swift_storeEnumTagMultiPayload();
      sub_23DA55518();
      sub_23DA55628(&qword_27E2FD4E0, type metadata accessor for PracticeShortTextDefaultView, &unk_23DB78560);
      sub_23DB6F79C();
      sub_23DA17988(v13, &qword_27E2FD4C0, &qword_23DB78448);
      v19 = v5;
      v20 = type metadata accessor for PracticeShortTextVOView;
    }

    else
    {
      type metadata accessor for Page.PracticeShortText(0);
      sub_23DA55628(&qword_27E2FD0C0, type metadata accessor for Page.PracticeShortText, &protocol conformance descriptor for Page);
      *v3 = sub_23DB6F1EC();
      *(v3 + 1) = v21;
      v22 = v25;
      *(v3 + 2) = v24;
      v3[24] = 0;
      sub_23DA55670(v3, v22, type metadata accessor for PracticeShortTextDefaultView);
      swift_storeEnumTagMultiPayload();
      sub_23DA55518();
      sub_23DA55628(&qword_27E2FD4E0, type metadata accessor for PracticeShortTextDefaultView, &unk_23DB78560);
      sub_23DB6F79C();
      v19 = v3;
      v20 = type metadata accessor for PracticeShortTextDefaultView;
    }

    return sub_23DA556D8(v19, v20);
  }
}

unint64_t sub_23DA55518()
{
  result = qword_27E2FD4C8;
  if (!qword_27E2FD4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD4C0, &qword_23DB78448);
    sub_23DA555D4();
    sub_23DA55628(&qword_27E2FD4D8, type metadata accessor for PracticeShortTextVOView, &unk_23DB785B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD4C8);
  }

  return result;
}

unint64_t sub_23DA555D4()
{
  result = qword_27E2FD4D0;
  if (!qword_27E2FD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD4D0);
  }

  return result;
}

uint64_t sub_23DA55628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DA55670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DA556D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_23DA557A4()
{
  if (!qword_27E2FD518)
  {
    v0 = sub_23DB6F05C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FD518);
    }
  }
}

void sub_23DA557F4()
{
  if (!qword_27E2FD520)
  {
    v0 = sub_23DB6F92C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FD520);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23DA55A1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_23DA55AC8(319, a4, a5, a6, a7);
  if (v7 <= 0x3F)
  {
    sub_23DA557A4();
    if (v8 <= 0x3F)
    {
      sub_23DA557F4();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23DA55AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_23DA55628(a4, a5, &protocol conformance descriptor for Page);
    v8 = sub_23DB6F21C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_23DA55B70()
{
  result = qword_27E2FD540;
  if (!qword_27E2FD540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD548, &qword_23DB78558);
    sub_23DA55518();
    sub_23DA55628(&qword_27E2FD4E0, type metadata accessor for PracticeShortTextDefaultView, &unk_23DB78560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD540);
  }

  return result;
}

uint64_t sub_23DA55C48@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = sub_23DB6F03C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD638, &qword_23DB789B8);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD640, &qword_23DB789C0);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v33 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD648, &unk_23DB789C8);
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v40 = &v33 - v13;
  type metadata accessor for Page.PracticeShortText(0);
  sub_23DA55628(&qword_27E2FD0C0, type metadata accessor for Page.PracticeShortText, &protocol conformance descriptor for Page);
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();

  sub_23DB6F02C();
  v33 = a1;
  v14 = sub_23DA57618();
  sub_23DA45838(v14 & 1, v9);
  (*(v4 + 8))(v6, v3);
  v15 = sub_23DB6FB5C();
  v16 = &v9[*(v7 + 36)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  type metadata accessor for PracticeShortTextDefaultView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F90C();
  v17 = sub_23DA594A8(&qword_27E2FD650, &qword_27E2FD638, &qword_23DB789B8, sub_23DA5952C);
  v18 = v34;
  sub_23DB6FF9C();

  sub_23DA17988(v9, &qword_27E2FD638, &qword_23DB789B8);
  v19 = v33;
  sub_23DB6F8EC();
  v47 = v42;
  v42 = v7;
  v43 = v17;
  swift_getOpaqueTypeConformance2();
  v20 = v40;
  v21 = v35;
  sub_23DB700BC();
  (*(v37 + 8))(v18, v21);
  v37 = sub_23DB6F5BC();
  sub_23DA588C8(v19, &v42);
  v22 = v43;
  v35 = v42;
  v23 = v44;
  LOBYTE(v19) = v45;
  v24 = v46;
  LOBYTE(v42) = 1;
  v47 = v46;
  v25 = v36;
  v26 = *(v36 + 16);
  v27 = v41;
  v28 = v38;
  v26(v41, v20, v38);
  v29 = v39;
  v26(v39, v27, v28);
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD668, &qword_23DB789D8) + 48)];
  *v30 = v37;
  *(v30 + 1) = 0;
  v30[16] = 1;
  *(v30 + 3) = v35;
  *(v30 + 4) = v22;
  *(v30 + 5) = v23;
  v30[48] = v19;
  v30[49] = v24;
  v31 = *(v25 + 8);

  v31(v40, v28);

  return (v31)(v41, v28);
}

uint64_t sub_23DA561E8()
{
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_27E30A6A8 + 16);
  swift_beginAccess();
  *(v0 + 40) = 62;

  sub_23DABC32C();
}

uint64_t sub_23DA56278()
{
  type metadata accessor for Page.PracticeShortTextCapitalization(0);
  v0 = swift_dynamicCastClass();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v8);

  if (v0)
  {
    v2 = v8;
    v1 = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v8);

    v3 = sub_23DA54ADC(v8, v9, v2, v1);
  }

  else
  {
    v5 = v8;
    v4 = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v8);

    v3 = sub_23DA54900(v8, v9, v5, v4);
  }

  v6 = v3;

  return v6 & 1;
}

uint64_t sub_23DA56404@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD620, &qword_23DB789A0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24[-1] - v8;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  sub_23DB6F91C();
  *(v9 + 2) = 0x4020000000000000;
  v10 = v1[1];
  v11 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v12 = *(v10 + v11);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(v24);

  v13 = v24[0];
  *(v9 + 3) = v12;
  *(v9 + 4) = 0;
  v9[40] = 1;
  v9[41] = v13;
  v14 = &v9[*(v4 + 68)];
  *v14 = sub_23DB6F68C();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD628, &qword_23DB789A8);
  sub_23DA55C48(v1, &v14[*(v15 + 44)]);

  LOBYTE(v14) = sub_23DA56278();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v24);

  v17 = v24[0];
  v16 = v24[1];
  type metadata accessor for Page.PracticeShortText(0);
  sub_23DA55628(&qword_27E2FD0C0, type metadata accessor for Page.PracticeShortText, &protocol conformance descriptor for Page);
  v18 = sub_23DB6F1EC();
  v20 = v19;
  sub_23DA0E2B4(v9, v6, &qword_27E2FD620, &qword_23DB789A0);
  sub_23DA0E2B4(v6, a1, &qword_27E2FD620, &qword_23DB789A0);
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD630, &qword_23DB789B0) + 48);

  sub_23DA17988(v9, &qword_27E2FD620, &qword_23DB789A0);
  *v21 = v18;
  *(v21 + 8) = v20;
  *(v21 + 16) = v14 & 1;
  *(v21 + 24) = v17;
  *(v21 + 32) = v16;

  return sub_23DA17988(v6, &qword_27E2FD620, &qword_23DB789A0);
}

uint64_t sub_23DA56718@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v43 = a5;
  v8 = sub_23DB6F55C();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD568, &qword_23DB78788);
  MEMORY[0x28223BE20](v40);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v36 - v12;
  type metadata accessor for Page.PracticeShortTextFormatted(0);
  sub_23DA55628(&qword_27E2FD4F0, type metadata accessor for Page.PracticeShortTextFormatted, &protocol conformance descriptor for Page);
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();

  v14 = v44;
  v13 = v45;
  v15 = v46;
  v16 = type metadata accessor for RichTextWrapper.TextFieldDelegate();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtCV28AccessibilitySharedUISupport15RichTextWrapper17TextFieldDelegate__currentPhrase];
  *v18 = v14;
  v18[1] = v13;
  v18[2] = v15;
  v51.receiver = v17;
  v51.super_class = v16;

  v19 = v15;

  v20 = objc_msgSendSuper2(&v51, sel_init);
  if (a4)
  {
    v50 = a3 & 1;
    v21 = a3;
  }

  else
  {

    sub_23DB70ACC();
    v22 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    v23 = v37;
    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a3, 0);
    (*(v38 + 8))(v23, v39);
    v21 = v50;
  }

  v24 = v41;
  sub_23DA56B5C(v21 & 1, v14, v13, v19, v20, v41);

  v25 = sub_23DB6FB5C();
  v26 = v24 + *(v40 + 36);
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 40) = 1;
  v40 = sub_23DB6F5BC();
  sub_23DA56FE8(a2, a3, a4 & 1, &v44);
  v28 = v44;
  v27 = v45;
  v29 = v46;
  v30 = v47;
  v31 = v48;
  LOBYTE(v44) = 1;
  v49 = v48;
  v32 = v42;
  sub_23DA0E2B4(v24, v42, &qword_27E2FD568, &qword_23DB78788);
  v33 = v43;
  sub_23DA0E2B4(v32, v43, &qword_27E2FD568, &qword_23DB78788);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD570, &qword_23DB78790) + 48);
  *v34 = v40;
  *(v34 + 8) = 0;
  *(v34 + 16) = 1;
  *(v34 + 24) = v28;
  *(v34 + 32) = v27;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  *(v34 + 49) = v31;

  sub_23DA17988(v24, &qword_27E2FD568, &qword_23DB78788);

  return sub_23DA17988(v32, &qword_27E2FD568, &qword_23DB78788);
}

uint64_t sub_23DA56B5C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a1;
  v53 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD578, &qword_23DB78798);
  MEMORY[0x28223BE20](v10);
  v12 = &v47[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD580, &qword_23DB787A0);
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v47[-v14];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD588, &qword_23DB787A8);
  MEMORY[0x28223BE20](v49);
  v50 = &v47[-v16];
  byte_27E30A720 = 0;
  v17 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD590, &unk_23DB787B0) + 36));
  v18 = *(sub_23DB6F32C() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_23DB6F63C();
  v21 = v17 + v18;
  v22 = v15;
  (*(*(v20 - 8) + 104))(v21, v19, v20);
  __asm { FMOV            V0.2D, #8.0 }

  *v17 = _Q0;
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)) = 256;
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;

  v28 = a4;
  v29 = a5;
  v30 = sub_23DB7020C();
  KeyPath = swift_getKeyPath();
  v32 = (v12 + *(v10 + 36));
  *v32 = KeyPath;
  v32[1] = v30;
  sub_23DA58E68();
  sub_23DB6FEAC();
  sub_23DA17988(v12, &qword_27E2FD578, &qword_23DB78798);
  if ((v48 & 1) != 0 && qword_27E2FBC00 != -1)
  {
    swift_once();
  }

  if (qword_27E2FBC08 != -1)
  {
    swift_once();
  }

  sub_23DB7062C();
  sub_23DB6F34C();
  v33 = v50;
  (*(v51 + 32))(v50, v22, v52);
  v34 = &v33[*(v49 + 36)];
  v35 = v59;
  v34[4] = v58;
  v34[5] = v35;
  v34[6] = v60;
  v36 = v55;
  *v34 = v54;
  v34[1] = v36;
  v37 = v57;
  v34[2] = v56;
  v34[3] = v37;
  v38 = sub_23DB6EFDC();
  v40 = v39;
  v42 = v41;
  v43 = v33;
  v44 = v53;
  sub_23DA17A54(v43, v53, &qword_27E2FD588, &qword_23DB787A8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5B0, &qword_23DB787F8);
  v46 = v44 + *(result + 36);
  *v46 = v38 & 1;
  *(v46 + 8) = v40;
  *(v46 + 16) = v42 & 1;
  return result;
}

uint64_t sub_23DA56FE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_23DB6F55C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = (a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];

  if ((a3 & 1) == 0)
  {
    sub_23DA5208C(a2, 0);
    sub_23DB70ACC();
    v16 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    result = (*(v9 + 8))(v11, v8);
    LOBYTE(a2) = v17[7];
  }

  *a4 = v14;
  *(a4 + 8) = v13;
  *(a4 + 16) = 0;
  *(a4 + 24) = (a2 & 1) == 0;
  *(a4 + 25) = a2 & 1;
  return result;
}

uint64_t sub_23DA57190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v38 = a3;
  v39 = a5;
  v36[1] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD550, &qword_23DB78650);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v36 - v11;
  v13 = sub_23DB6E9BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v36 - v18;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(v41);

  sub_23DB6E9EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v41);

  sub_23DB6E9EC();
  v20 = sub_23DB6E96C();
  v21 = *(v14 + 8);
  v21(v16, v13);
  v21(v19, v13);
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  sub_23DB6F91C();
  *(v12 + 2) = 0x4020000000000000;
  v22 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v23 = *(a2 + v22);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(v40);

  v24 = v40[0];
  *(v12 + 3) = v23;
  *(v12 + 4) = 0;
  v12[40] = 1;
  v12[41] = v24;
  v25 = &v12[*(v7 + 68)];
  *v25 = sub_23DB6F68C();
  *(v25 + 1) = 0;
  v25[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD558, &qword_23DB78730);
  sub_23DA56718(a2, v38, v37 & 1, &v25[*(v26 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v40);

  v27 = v40[1];
  v38 = v40[0];
  type metadata accessor for Page.PracticeShortText(0);
  sub_23DA55628(&qword_27E2FD0C0, type metadata accessor for Page.PracticeShortText, &protocol conformance descriptor for Page);
  v28 = sub_23DB6F1EC();
  v30 = v29;
  v31 = v9;
  sub_23DA0E2B4(v12, v9, &qword_27E2FD550, &qword_23DB78650);
  v32 = v9;
  v33 = v39;
  sub_23DA0E2B4(v32, v39, &qword_27E2FD550, &qword_23DB78650);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD560, &qword_23DB78780) + 48);

  sub_23DA17988(v12, &qword_27E2FD550, &qword_23DB78650);
  *v34 = v28;
  *(v34 + 8) = v30;
  *(v34 + 16) = v20 & 1;
  *(v34 + 24) = v38;
  *(v34 + 32) = v27;

  return sub_23DA17988(v31, &qword_27E2FD550, &qword_23DB78650);
}

uint64_t sub_23DA57618()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {

    sub_23DB70ACC();
    v6 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_23DA57770@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v80 = type metadata accessor for PracticeShortTextVOView(0);
  v86 = *(v80 - 1);
  MEMORY[0x28223BE20](v80);
  v93 = v3;
  v90 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD330, &unk_23DB78200);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v69 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD338, &unk_23DB788B0);
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD340, &unk_23DB78210);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v71 = &v69 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD348, &unk_23DB788C0);
  MEMORY[0x28223BE20](v70);
  v73 = &v69 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD350, &qword_23DB78220);
  MEMORY[0x28223BE20](v72);
  v14 = &v69 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5D0, &qword_23DB788D0);
  MEMORY[0x28223BE20](v77);
  v76 = &v69 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5D8, &qword_23DB788D8);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v92 = &v69 - v16;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5E0, &qword_23DB788E0);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v69 - v17;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5E8, &qword_23DB788E8);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v85 = &v69 - v20;
  v21 = a1[1];
  type metadata accessor for Page.PracticeShortTextVO(0);
  sub_23DA55628(&qword_27E2FD4E8, type metadata accessor for Page.PracticeShortTextVO, &protocol conformance descriptor for Page);
  v78 = v21;
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();

  sub_23DB6F02C();
  v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD128, &qword_23DB77D08) + 36)];
  v23 = *(sub_23DB6F32C() + 20);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_23DB6F63C();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #8.0 }

  *v22 = _Q0;
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD088, &qword_23DB77B90) + 36)] = 256;
  *&v7[*(v5 + 44)] = sub_23DB6F87C();
  v31 = a1;
  if (sub_23DA57618())
  {
    v32 = sub_23DB6FBCC();
  }

  else
  {
    v32 = sub_23DB6FBDC();
  }

  v33 = v32;
  KeyPath = swift_getKeyPath();
  sub_23DA5904C(v7, v10);
  v35 = &v10[*(v8 + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  sub_23DA54004();
  v36 = v71;
  sub_23DB6FEAC();
  sub_23DA17988(v10, &qword_27E2FD338, &unk_23DB788B0);
  if ((sub_23DA57618() & 1) != 0 && qword_27E2FBC00 != -1)
  {
    swift_once();
  }

  if (qword_27E2FBC08 != -1)
  {
    swift_once();
  }

  sub_23DB7062C();
  sub_23DB6F34C();
  v37 = v73;
  (*(v74 + 32))(v73, v36, v75);
  v38 = (v37 + *(v70 + 36));
  v39 = v105;
  v38[4] = v104;
  v38[5] = v39;
  v38[6] = v106;
  v40 = v101;
  *v38 = v100;
  v38[1] = v40;
  v41 = v103;
  v38[2] = v102;
  v38[3] = v41;
  v42 = swift_getKeyPath();
  sub_23DA17A54(v37, v14, &qword_27E2FD348, &unk_23DB788C0);
  v43 = &v14[*(v72 + 36)];
  *v43 = v42;
  v43[1] = 0x4014000000000000;
  LOBYTE(v42) = sub_23DB6FB5C();
  v44 = v76;
  sub_23DA17A54(v14, v76, &qword_27E2FD350, &qword_23DB78220);
  v45 = v77;
  v46 = v44 + *(v77 + 36);
  *v46 = v42;
  *(v46 + 8) = 0u;
  *(v46 + 24) = 0u;
  *(v46 + 40) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F90C();
  v47 = sub_23DA594A8(&qword_27E2FD5F0, &qword_27E2FD5D0, &qword_23DB788D0, sub_23DA590C4);
  sub_23DB6FF9C();

  sub_23DA17988(v44, &qword_27E2FD5D0, &qword_23DB788D0);
  sub_23DB6F8EC();
  LOBYTE(v98) = v94;
  v80 = type metadata accessor for PracticeShortTextVOView;
  v48 = v90;
  sub_23DA55670(v31, v90, type metadata accessor for PracticeShortTextVOView);
  v49 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v50 = swift_allocObject();
  sub_23DA59248(v48, v50 + v49);
  v94 = v45;
  v95 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = MEMORY[0x277D839C8];
  v53 = v82;
  v54 = v81;
  v55 = v92;
  sub_23DB700BC();

  (*(v79 + 8))(v55, v54);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v94);

  v98 = v94;
  v99 = v95;
  sub_23DA55670(v31, v48, v80);
  v56 = swift_allocObject();
  sub_23DA59248(v48, v56 + v49);
  v94 = v54;
  v95 = MEMORY[0x277D839B0];
  v96 = OpaqueTypeConformance2;
  v97 = v52;
  swift_getOpaqueTypeConformance2();
  v57 = v85;
  v58 = v84;
  sub_23DB700BC();

  (*(v83 + 8))(v53, v58);
  v93 = sub_23DB6F5BC();
  sub_23DA588C8(v31, &v94);
  v59 = v94;
  v60 = v95;
  v92 = v96;
  LODWORD(v90) = v97;
  LOBYTE(v53) = BYTE1(v97);
  LOBYTE(v94) = 1;
  LOBYTE(v98) = BYTE1(v97);
  v61 = v88;
  v62 = *(v88 + 16);
  v63 = v87;
  v64 = v89;
  v62(v87, v57, v89);
  v65 = v91;
  v62(v91, v63, v64);
  v66 = &v65[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD618, &qword_23DB78998) + 48)];
  *v66 = v93;
  *(v66 + 1) = 0;
  v66[16] = 1;
  *(v66 + 3) = v59;
  *(v66 + 4) = v60;
  *(v66 + 5) = v92;
  v66[48] = v90;
  v66[49] = v53;
  v67 = *(v61 + 8);

  v67(v57, v64);

  return (v67)(v63, v64);
}

uint64_t sub_23DA58504@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v5);

  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_23DA58584(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

void *sub_23DA58608()
{
  type metadata accessor for PracticeShortTextVOView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  result = sub_23DB6F8EC();
  if (v2 == 1)
  {
    if (qword_27E2FBBD0 != -1)
    {
      swift_once();
    }

    v1 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    *(v1 + 40) = 62;

    sub_23DABC32C();
  }

  return result;
}

uint64_t sub_23DA586D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v10);

  v2 = v10;
  v3 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v10);

  LOBYTE(v2) = sub_23DA54C74(v10, v11, v2, v3);

  if (v2)
  {
    v5 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (*(v6 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v7 = type metadata accessor for CommandToPractice(0);
      v8 = *(v7 - 8);
      result = v7 - 8;
      if (*(v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) + 18))
      {
        return result;
      }

      if (qword_27E2FBBD0 == -1)
      {
        goto LABEL_5;
      }
    }

    swift_once();
LABEL_5:
    v9 = *(qword_27E30A6A8 + 16);
    swift_beginAccess();
    *(v9 + 40) = 63;

    sub_23DABC32C();
  }

  return result;
}

uint64_t sub_23DA588C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8) + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  result = sub_23DA57618();
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = (result & 1) == 0;
  *(a2 + 25) = result & 1;
  return result;
}

uint64_t sub_23DA58950@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5B8, &qword_23DB78800);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  sub_23DB6F91C();
  *(v9 + 2) = 0x4020000000000000;
  v10 = v1[1];
  v11 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v12 = *(v10 + v11);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v27);

  v13 = v27;
  *(v9 + 3) = v12;
  *(v9 + 4) = 0;
  v9[40] = 1;
  v9[41] = v13;
  v14 = &v9[*(v4 + 68)];
  *v14 = sub_23DB6F68C();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5C0, &qword_23DB78808);
  sub_23DA57770(v1, &v14[*(v15 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v27);

  v16 = v27;
  v17 = v28;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v27);

  v18 = sub_23DA54C74(v27, v28, v16, v17);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v27);

  v20 = v27;
  v19 = v28;
  type metadata accessor for Page.PracticeShortText(0);
  sub_23DA55628(&qword_27E2FD0C0, type metadata accessor for Page.PracticeShortText, &protocol conformance descriptor for Page);
  v21 = sub_23DB6F1EC();
  v23 = v22;
  sub_23DA0E2B4(v9, v6, &qword_27E2FD5B8, &qword_23DB78800);
  sub_23DA0E2B4(v6, a1, &qword_27E2FD5B8, &qword_23DB78800);
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD5C8, &unk_23DB788A0) + 48);

  sub_23DA17988(v9, &qword_27E2FD5B8, &qword_23DB78800);
  *v24 = v21;
  *(v24 + 8) = v23;
  *(v24 + 16) = v18 & 1;
  *(v24 + 24) = v20;
  *(v24 + 32) = v19;

  return sub_23DA17988(v6, &qword_27E2FD5B8, &qword_23DB78800);
}

uint64_t sub_23DA58D18@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v10);

  v3 = v10;
  if (v10 == 2)
  {
    v3 = *(v1 + 16);
  }

  v10 = *(v1 + 24);
  v4 = *(&v10 + 1);
  if (*(&v10 + 1))
  {
    v5 = v10;
    KeyPath = swift_getKeyPath();
    v7 = 0x3FF0000000000000;
    if ((v3 & 1) == 0)
    {
      v7 = 0;
    }
  }

  else
  {
    v5 = 0;
    KeyPath = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  a1[2] = KeyPath;
  a1[3] = 0;
  a1[4] = v7;
  return sub_23DA0E2B4(&v10, &v9, &qword_27E2FC358, &qword_23DB74690);
}

unint64_t sub_23DA58E68()
{
  result = qword_27E2FD598;
  if (!qword_27E2FD598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD578, &qword_23DB78798);
    sub_23DA58F20();
    sub_23DA17B80(&qword_27E2FCFA8, &qword_27E2FCFB0, &qword_23DB787F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD598);
  }

  return result;
}

unint64_t sub_23DA58F20()
{
  result = qword_27E2FD5A0;
  if (!qword_27E2FD5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD590, &unk_23DB787B0);
    sub_23DA58FD8();
    sub_23DA17B80(&qword_27E2FD080, &qword_27E2FD088, &qword_23DB77B90, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD5A0);
  }

  return result;
}

unint64_t sub_23DA58FD8()
{
  result = qword_27E2FD5A8;
  if (!qword_27E2FD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD5A8);
  }

  return result;
}

uint64_t sub_23DA5904C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD330, &unk_23DB78200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DA590C4()
{
  result = qword_27E2FD5F8;
  if (!qword_27E2FD5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD350, &qword_23DB78220);
    sub_23DA5917C();
    sub_23DA17B80(&qword_27E2FD608, &qword_27E2FD610, &qword_23DB78990, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD5F8);
  }

  return result;
}

unint64_t sub_23DA5917C()
{
  result = qword_27E2FD600;
  if (!qword_27E2FD600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD348, &unk_23DB788C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD338, &unk_23DB788B0);
    sub_23DA54004();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD600);
  }

  return result;
}

uint64_t sub_23DA59248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PracticeShortTextVOView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for PracticeShortTextVOView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_23DA4FF14(*(v2 + 16), *(v2 + 24));
  v3 = v2 + v1[8];
  v4 = sub_23DB6F9BC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);

  return swift_deallocObject();
}

uint64_t sub_23DA59434(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PracticeShortTextVOView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23DA594A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23DA5952C()
{
  result = qword_27E2FD658;
  if (!qword_27E2FD658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD320, &qword_23DB781F0);
    sub_23DA590C4();
    sub_23DA595B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD658);
  }

  return result;
}

unint64_t sub_23DA595B8()
{
  result = qword_27E2FD660;
  if (!qword_27E2FD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD660);
  }

  return result;
}

unint64_t sub_23DA59710()
{
  result = qword_27E2FD6A0;
  if (!qword_27E2FD6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD6A8, &qword_23DB78AE0);
    sub_23DA59794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD6A0);
  }

  return result;
}

unint64_t sub_23DA59794()
{
  result = qword_27E2FD6B0;
  if (!qword_27E2FD6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD6B8, &qword_23DB78AE8);
    sub_23DA59820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD6B0);
  }

  return result;
}

unint64_t sub_23DA59820()
{
  result = qword_27E2FD6C0;
  if (!qword_27E2FD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD6C0);
  }

  return result;
}

uint64_t AccessibilityResolvedAction.image.getter(uint64_t a1, uint64_t a2)
{
  sub_23DB6EB8C();
  if (v4)
  {
    return sub_23DB702DC();
  }

  sub_23DA59900(a1, a2);
  if (!v6)
  {
    return 0;
  }

  sub_23DB6EBAC();
  return sub_23DB702FC();
}

uint64_t sub_23DA59900(uint64_t a1, uint64_t a2)
{
  if ((sub_23DB6EB9C() & 1) == 0)
  {
    return sub_23DB6EBBC();
  }

  v2 = sub_23DB6EBBC();
  if (!v3)
  {
    return sub_23DB6EBBC();
  }

  v4 = v2;
  if (AXSSDeviceHasHomeButton())
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    IsPad = AXDeviceIsPad();
    if (IsPad)
    {
      v5 = 0x4150495F42484E5FLL;
    }

    else
    {
      v5 = 1112034911;
    }

    if (IsPad)
    {
      v6 = 0xE900000000000044;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  MEMORY[0x23EEF6D00](v5, v6);

  return v4;
}

double sub_23DA59A10@<D0>(uint64_t a1@<X8>)
{
  v6 = sub_23DB6F63C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DB6F7CC();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0118], v6);
  sub_23DB6FCBC();
  result = *&v13;
  v11 = v14;
  *a1 = v13;
  *(a1 + 16) = v11;
  *(a1 + 32) = v15;
  return result;
}

uint64_t (*sub_23DA59B90(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23DB6EF6C();
  return sub_23DA59C18;
}

void sub_23DA59C18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_23DA59C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DA5AD34();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_23DA59CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DA5AD34();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_23DA59D2C(uint64_t a1)
{
  v2 = sub_23DA5AD34();

  return MEMORY[0x282133738](a1, v2);
}

double sub_23DA59D78@<D0>(uint64_t a2@<X8>)
{
  sub_23DB7062C();
  sub_23DB6F10C();
  if (qword_27E2FBB90 != -1)
  {
    swift_once();
  }

  v3 = qword_27E30A668;

  v4 = sub_23DB702BC();
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v3;
  *(a2 + 56) = v4;
  result = 4.0;
  *(a2 + 64) = xmmword_23DB78B00;
  return result;
}

uint64_t sub_23DA59E7C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD6F8, &qword_23DB78BC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD700, &qword_23DB78BC8);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = *(sub_23DB6F32C() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_23DB6F63C();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #8.0 }

  *v13 = _Q0;
  sub_23DB7062C();
  sub_23DB6F10C();
  v22 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD458, &qword_23DB78BD0) + 36)];
  v23 = v27[2];
  *v22 = v27[1];
  *(v22 + 1) = v23;
  *(v22 + 2) = v27[3];
  if (qword_27E2FBB90 != -1)
  {
    swift_once();
  }

  v24 = qword_27E30A668;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD708, &qword_23DB78BD8) + 36)] = v24;
  *&v13[*(v8 + 36)] = 0x3FECCCCCCCCCCCCDLL;

  *v7 = sub_23DB6F5BC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD710, &unk_23DB78BE0);
  v27[0] = xmmword_23DB78B10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCF18, &qword_23DB79B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD718, &qword_23DB78C10);
  sub_23DA52254();
  sub_23DA5AADC();
  sub_23DB704FC();
  sub_23DA0E2B4(v13, v10, &qword_27E2FD700, &qword_23DB78BC8);
  sub_23DA0E2B4(v7, v4, &qword_27E2FD6F8, &qword_23DB78BC0);
  sub_23DA0E2B4(v10, a1, &qword_27E2FD700, &qword_23DB78BC8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD738, &qword_23DB78C20);
  sub_23DA0E2B4(v4, a1 + *(v25 + 48), &qword_27E2FD6F8, &qword_23DB78BC0);
  sub_23DA17988(v7, &qword_27E2FD6F8, &qword_23DB78BC0);
  sub_23DA17988(v13, &qword_27E2FD700, &qword_23DB78BC8);
  sub_23DA17988(v4, &qword_27E2FD6F8, &qword_23DB78BC0);
  return sub_23DA17988(v10, &qword_27E2FD700, &qword_23DB78BC8);
}

void sub_23DA5A258(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_23DB7062C();
  v6 = v5;
  sub_23DA5A3C4(v3, &v17);
  v32 = v23;
  v33 = v24;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v26 = v17;
  v27 = v18;
  v35[6] = v23;
  v35[7] = v24;
  v35[2] = v19;
  v35[3] = v20;
  v35[4] = v21;
  v35[5] = v22;
  v34 = v25;
  v36 = v25;
  v35[0] = v17;
  v35[1] = v18;
  sub_23DA0E2B4(&v26, v16, &qword_27E2FD740, &qword_23DB78C28);
  sub_23DA17988(v35, &qword_27E2FD740, &qword_23DB78C28);
  v23 = v32;
  v24 = v33;
  v25 = v34;
  v19 = v28;
  v20 = v29;
  v21 = v30;
  v22 = v31;
  v17 = v26;
  v18 = v27;
  v7 = sub_23DB6FB8C();
  sub_23DB6EFAC();
  *a2 = v4;
  *(a2 + 8) = v6;
  v8 = v24;
  *(a2 + 112) = v23;
  *(a2 + 128) = v8;
  *(a2 + 144) = v25;
  v9 = v20;
  *(a2 + 48) = v19;
  *(a2 + 64) = v9;
  v10 = v22;
  *(a2 + 80) = v21;
  *(a2 + 96) = v10;
  v11 = v18;
  *(a2 + 16) = v17;
  *(a2 + 32) = v11;
  *(a2 + 152) = v7;
  *(a2 + 160) = v12;
  *(a2 + 168) = v13;
  *(a2 + 176) = v14;
  *(a2 + 184) = v15;
  *(a2 + 192) = 0;
}

uint64_t sub_23DA5A3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v3 = sub_23DB702CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DB702BC();
  v7 = *MEMORY[0x277CE0FE0];
  v34 = *(v4 + 104);
  v34(v6, v7, v3);
  v36 = sub_23DB702EC();

  v8 = *(v4 + 8);
  v8(v6, v3);
  sub_23DB7062C();
  sub_23DB6F10C();
  v9 = v68;
  v32 = v69;
  v33 = v67;
  v10 = v70;
  v30 = v72;
  v31 = v71;
  v29 = sub_23DB6F89C();
  v80 = v9;
  v79 = v10;
  sub_23DB702BC();
  v34(v6, v7, v3);
  v34 = sub_23DB702EC();

  v8(v6, v3);
  sub_23DB7062C();
  sub_23DB6F10C();
  v11 = v73;
  v12 = v74;
  v13 = v75;
  v14 = v76;
  v15 = v77;
  v16 = v78;
  if (qword_27E2FBB88 != -1)
  {
    swift_once();
  }

  v17 = qword_27E30A660;
  v18 = 1.0;
  v46 = v12;
  if (v35 != 3)
  {
    v18 = 0.0;
  }

  v45 = v14;
  *&v47 = v36;
  *(&v47 + 1) = v33;
  LOBYTE(v48) = v80;
  *(&v48 + 1) = v32;
  LOBYTE(v49[0]) = v79;
  *(&v49[0] + 1) = v31;
  *&v49[1] = v30;
  DWORD2(v49[1]) = v29;
  *(v39 + 12) = *(v49 + 12);
  v38 = v48;
  v39[0] = v49[0];
  *&v37[72] = v47;
  v19 = v34;
  *&v50 = v34;
  *(&v50 + 1) = v11;
  LOBYTE(v51) = v12;
  DWORD1(v51) = *&v66[3];
  *(&v51 + 1) = *v66;
  *(&v51 + 1) = v13;
  LOBYTE(v52) = v14;
  DWORD1(v52) = *&v65[3];
  *(&v52 + 1) = *v65;
  *(&v52 + 1) = v15;
  *&v53 = v16;
  *(&v53 + 1) = qword_27E30A660;
  v54 = v18;
  v44 = v18;
  v42 = v52;
  v43 = v53;
  v40 = v50;
  v41 = v51;
  v20 = v47;
  v21 = v48;
  v22 = v39[1];
  *(a2 + 32) = v49[0];
  *(a2 + 48) = v22;
  *a2 = v20;
  *(a2 + 16) = v21;
  v23 = v40;
  v24 = v41;
  v25 = v42;
  v26 = v43;
  *(a2 + 128) = v44;
  *(a2 + 96) = v25;
  *(a2 + 112) = v26;
  *(a2 + 64) = v23;
  *(a2 + 80) = v24;
  v55[0] = v19;
  v55[1] = v11;
  v56 = v12;
  *v57 = *v66;
  *&v57[3] = *&v66[3];
  v58 = v13;
  v59 = v14;
  *v60 = *v65;
  *&v60[3] = *&v65[3];
  v61 = v15;
  v62 = v16;
  v63 = v17;
  v64 = v18;

  sub_23DA0E2B4(&v47, v37, &qword_27E2FD748, &qword_23DB78C30);
  sub_23DA0E2B4(&v50, v37, &qword_27E2FD750, &qword_23DB78C38);
  sub_23DA17988(v55, &qword_27E2FD750, &qword_23DB78C38);
}

uint64_t sub_23DA5A7E4@<X0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD6D0, &qword_23DB78B98);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v26 - v7);
  v9 = sub_23DB7063C();
  v11 = v10;
  sub_23DA59D78(&v38);
  v33 = v40;
  v34 = v41;
  v31 = v38;
  v32 = v39;
  v36[2] = v40;
  v36[3] = v41;
  v36[4] = v42;
  v36[1] = v39;
  v35 = v42;
  v36[0] = v38;
  sub_23DA0E2B4(&v31, v37, &qword_27E2FD6D8, &qword_23DB78BA0);
  sub_23DA17988(v36, &qword_27E2FD6D8, &qword_23DB78BA0);
  v28 = v33;
  v29 = v34;
  v30 = v35;
  v26 = v31;
  v27 = v32;
  *v8 = sub_23DB7062C();
  v8[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD6E0, &qword_23DB78BA8);
  sub_23DA59E7C(v8 + *(v13 + 44));
  v14 = sub_23DB6FB4C();
  sub_23DB6EFAC();
  v15 = v8 + *(v3 + 44);
  *v15 = v14;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  sub_23DA0E2B4(v8, v5, &qword_27E2FD6D0, &qword_23DB78B98);
  *&v37[0] = v9;
  *(&v37[0] + 1) = v11;
  v21 = v26;
  v20 = v27;
  v37[2] = v27;
  v37[1] = v26;
  v22 = v28;
  v37[3] = v28;
  v37[4] = v29;
  v23 = v30;
  v37[5] = v30;
  a1[4] = v29;
  a1[5] = v23;
  a1[2] = v20;
  a1[3] = v22;
  *a1 = v37[0];
  a1[1] = v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD6E8, &qword_23DB78BB0);
  sub_23DA0E2B4(v5, a1 + *(v24 + 64), &qword_27E2FD6D0, &qword_23DB78B98);
  sub_23DA0E2B4(v37, &v38, &qword_27E2FD6F0, &qword_23DB78BB8);
  sub_23DA17988(v8, &qword_27E2FD6D0, &qword_23DB78B98);
  sub_23DA17988(v5, &qword_27E2FD6D0, &qword_23DB78B98);
  *&v38 = v9;
  *(&v38 + 1) = v11;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v40 = v27;
  v39 = v26;
  return sub_23DA17988(&v38, &qword_27E2FD6F0, &qword_23DB78BB8);
}

uint64_t sub_23DA5AA94@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_23DB7061C();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD6C8, &qword_23DB78B90);
  return sub_23DA5A7E4((a1 + *(v3 + 44)));
}

unint64_t sub_23DA5AADC()
{
  result = qword_27E2FD720;
  if (!qword_27E2FD720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FD718, &qword_23DB78C10);
    sub_23DA17B80(&qword_27E2FD728, &qword_27E2FD730, &qword_23DB78C18, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD720);
  }

  return result;
}

unint64_t sub_23DA5AC30()
{
  result = qword_27E2FD778;
  if (!qword_27E2FD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD778);
  }

  return result;
}

unint64_t sub_23DA5AC88()
{
  result = qword_27E2FD780;
  if (!qword_27E2FD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD780);
  }

  return result;
}

unint64_t sub_23DA5ACE0()
{
  result = qword_27E2FD788;
  if (!qword_27E2FD788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD788);
  }

  return result;
}

unint64_t sub_23DA5AD34()
{
  result = qword_27E2FD790[0];
  if (!qword_27E2FD790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E2FD790);
  }

  return result;
}

uint64_t sub_23DA5AD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23DA5AE2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v64);

  if (v65)
  {
    sub_23DA16E70();
    v4 = sub_23DB6FD8C();
    v6 = v5;
    v52 = v8;
    v53 = v4;
    v50 = v7 & 1;
    sub_23DA6D470(v4, v8, v7 & 1);
    v51 = v6;
  }

  else
  {
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
  }

  v9 = (a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v64 = v10;
  v65 = v11;
  sub_23DA16E70();

  v12 = sub_23DB6FD8C();
  v14 = v13;
  v16 = v15;
  sub_23DB6FBFC();
  v17 = sub_23DB6FCCC();
  v19 = v18;
  v21 = v20;
  sub_23DA16EC4(v12, v14, v16 & 1);

  sub_23DB6FBAC();
  v47 = sub_23DB6FD3C();
  v48 = v22;
  v40 = v23;
  LOBYTE(v14) = v24;
  v25 = v22;

  sub_23DA16EC4(v17, v19, v21 & 1);

  v46 = sub_23DB6FB5C();
  sub_23DB6EFAC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  LOBYTE(v64) = v14 & 1;
  LOBYTE(v12) = v14 & 1;
  v45 = v14 & 1;
  type metadata accessor for Page(0);
  sub_23DA6CEEC(&qword_27E2FCBD8, type metadata accessor for Page, &protocol conformance descriptor for Page);
  v49 = sub_23DB6F1EC();
  v35 = v34;
  sub_23DB7062C();
  sub_23DB6F10C();
  v36 = v77;
  v43 = v78;
  v44 = v76;
  LOBYTE(v14) = v79;
  v41 = v81;
  v42 = v80;
  *&v56 = v47;
  *(&v56 + 1) = v40;
  LOBYTE(v57) = v12;
  *(&v57 + 1) = *v55;
  DWORD1(v57) = *&v55[3];
  *(&v57 + 1) = v25;
  LOBYTE(v58) = v46;
  DWORD1(v58) = *&v54[3];
  *(&v58 + 1) = *v54;
  *(&v58 + 1) = v27;
  *v59 = v29;
  *&v59[8] = v31;
  *&v59[16] = v33;
  v59[24] = 0;
  *(v63 + 9) = *&v59[9];
  v62 = v58;
  v63[0] = *v59;
  v60 = v56;
  v61 = v57;
  sub_23DA6EC54(v53, v52, v50, v51);
  sub_23DA0E2B4(&v56, &v64, &qword_27E2FD908, &qword_23DB790D8);

  sub_23DA6EC98(v53, v52, v50, v51);
  *a2 = v53;
  *(a2 + 8) = v52;
  *(a2 + 16) = v50;
  *(a2 + 24) = v51;
  v37 = v63[0];
  *(a2 + 64) = v62;
  *(a2 + 80) = v37;
  *(a2 + 89) = *(v63 + 9);
  v38 = v61;
  *(a2 + 32) = v60;
  *(a2 + 48) = v38;
  *(a2 + 112) = v49;
  *(a2 + 120) = v35;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  *(a2 + 144) = v44;
  *(a2 + 152) = v36;
  *(a2 + 160) = v43;
  *(a2 + 168) = v14;
  *(a2 + 176) = v42;
  *(a2 + 184) = v41;

  v64 = v47;
  v65 = v40;
  v66 = v45;
  *v67 = *v55;
  *&v67[3] = *&v55[3];
  v68 = v48;
  v69 = v46;
  *v70 = *v54;
  *&v70[3] = *&v54[3];
  v71 = v27;
  v72 = v29;
  v73 = v31;
  v74 = v33;
  v75 = 0;
  sub_23DA17988(&v64, &qword_27E2FD908, &qword_23DB790D8);
  return sub_23DA6EC98(v53, v52, v50, v51);
}

uint64_t sub_23DA5B284@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, _OWORD *a4@<X8>)
{
  LODWORD(v4) = a3;
  v129 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE78, &unk_23DB791B0);
  MEMORY[0x28223BE20](v7 - 8);
  v122 = (v116 - v8);
  v9 = type metadata accessor for SubPageButtonsView(0);
  MEMORY[0x28223BE20](v9 - 8);
  v126 = (v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBD8, &qword_23DB79580);
  MEMORY[0x28223BE20](v134);
  v125 = v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v128 = v116 - v13;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBE0, &qword_23DB79588);
  MEMORY[0x28223BE20](v132);
  v133 = v116 - v14;
  v121 = type metadata accessor for SubPageCompactButtonsView(0);
  MEMORY[0x28223BE20](v121);
  v124 = (v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBE8, &qword_23DB79590);
  MEMORY[0x28223BE20](v131);
  v123 = v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v127 = v116 - v18;
  v19 = sub_23DB6F55C();
  v119 = *(v19 - 8);
  v120 = v19;
  MEMORY[0x28223BE20](v19);
  v118 = v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBF0, &qword_23DB79598);
  v135 = *(v21 - 8);
  v136 = v21;
  MEMORY[0x28223BE20](v21);
  v130 = v116 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBF8, &qword_23DB795A0);
  MEMORY[0x28223BE20](v23 - 8);
  v138 = v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v137 = v116 - v26;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v166);

  if (*(&v166 + 1))
  {
    sub_23DA16E70();
    v27 = sub_23DB6FD8C();
    v29 = v28;
    v117 = v4;
    v31 = v30;
    sub_23DB6FBFC();
    v32 = sub_23DB6FCCC();
    v34 = v33;
    v36 = v35;
    v116[1] = a1;
    sub_23DA16EC4(v27, v29, v31 & 1);

    sub_23DB6FC3C();
    v37 = sub_23DB6FD3C();
    v4 = v38;
    LOBYTE(v29) = v39;
    v116[0] = v40;

    sub_23DA16EC4(v32, v34, v36 & 1);

    LOBYTE(v27) = sub_23DB6FB5C();
    sub_23DB6EFAC();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    LOBYTE(v141) = v29 & 1;
    v139 = 0;
    LOBYTE(v32) = sub_23DB6FB2C();
    v49 = [objc_opt_self() currentDevice];
    [v49 userInterfaceIdiom];

    sub_23DB6EFAC();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    LOBYTE(v156[0]) = 0;
    sub_23DB7063C();
    sub_23DB6F34C();
    *&v140[55] = v165[12];
    *&v140[71] = v165[13];
    *&v140[87] = v165[14];
    *&v140[103] = v165[15];
    *&v140[7] = v165[9];
    *&v140[23] = v165[10];
    *&v140[39] = v165[11];
    KeyPath = swift_getKeyPath();
    *&v158 = v37;
    *(&v158 + 1) = v4;
    LOBYTE(v4) = v117;
    LOBYTE(v159) = v29 & 1;
    *(&v159 + 1) = v116[0];
    LOBYTE(v160) = v27;
    *(&v160 + 1) = v42;
    *&v161 = v44;
    *(&v161 + 1) = v46;
    *&v162 = v48;
    BYTE8(v162) = 0;
    LOBYTE(v163) = v32;
    *(&v163 + 1) = v51;
    *&v164 = v53;
    *(&v164 + 1) = v55;
    *&v165[0] = v57;
    BYTE8(v165[0]) = 0;
    *(&v165[4] + 9) = *&v140[64];
    *(&v165[5] + 9) = *&v140[80];
    *(&v165[6] + 9) = *&v140[96];
    *(v165 + 9) = *v140;
    *(&v165[1] + 9) = *&v140[16];
    *(&v165[2] + 9) = *&v140[32];
    *(&v165[3] + 9) = *&v140[48];
    *(&v165[7] + 1) = *&v140[111];
    *&v165[8] = KeyPath;
    BYTE8(v165[8]) = 0;
    nullsub_1();
    v178 = v165[5];
    v179 = v165[6];
    v180[0] = v165[7];
    *(v180 + 9) = *(&v165[7] + 9);
    v174 = v165[1];
    v175 = v165[2];
    v176 = v165[3];
    v177 = v165[4];
    v170 = v162;
    v171 = v163;
    v172 = v164;
    v173 = v165[0];
    v166 = v158;
    v167 = v159;
    v168 = v160;
    v169 = v161;
  }

  else
  {
    sub_23DA6EAA8(&v166);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v158);

  v59 = v158;
  if (v158)
  {
    if (v4)
    {
      v60 = v137;
      if ((v129 & 1) == 0)
      {
LABEL_7:
        v61 = swift_getKeyPath();
        v62 = v122;
        *v122 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
        swift_storeEnumTagMultiPayload();
        v63 = v126;
        sub_23DA5C0D8(v59, v62, v126);
        LOBYTE(v62) = sub_23DB6FB2C();
        v64 = [objc_opt_self() currentDevice];
        [v64 userInterfaceIdiom];

        sub_23DB6EFAC();
        v66 = v65;
        v68 = v67;
        v70 = v69;
        v72 = v71;
        v73 = v125;
        sub_23DA6E464(v63, v125, type metadata accessor for SubPageButtonsView);
        v74 = v73 + *(v134 + 36);
        *v74 = v62;
        *(v74 + 8) = v66;
        *(v74 + 16) = v68;
        *(v74 + 24) = v70;
        *(v74 + 32) = v72;
        *(v74 + 40) = 0;
        v75 = &qword_27E2FDBD8;
        v76 = &qword_23DB79580;
        v77 = v128;
        sub_23DA17A54(v73, v128, &qword_27E2FDBD8, &qword_23DB79580);
        sub_23DA0E2B4(v77, v133, &qword_27E2FDBD8, &qword_23DB79580);
        swift_storeEnumTagMultiPayload();
        sub_23DA6EADC();
        sub_23DA6EB98();
        v78 = v130;
LABEL_11:
        sub_23DB6F79C();
        sub_23DA17988(v77, v75, v76);
        sub_23DA17A54(v78, v60, &qword_27E2FDBF0, &qword_23DB79598);
        v79 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v80 = v129;

      sub_23DB70ACC();
      v81 = sub_23DB6FAFC();
      sub_23DB6EBCC();

      v82 = v118;
      sub_23DB6F54C();
      swift_getAtKeyPath();
      sub_23DA4FF14(v80, 0);
      (*(v119 + 8))(v82, v120);
      v60 = v137;
      if (v158 != 1)
      {
        goto LABEL_7;
      }
    }

    v83 = swift_getKeyPath();
    v84 = v121;
    v85 = v124;
    *(v124 + *(v121 + 24)) = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
    swift_storeEnumTagMultiPayload();
    *v85 = v59;
    type metadata accessor for NavigationModel(0);
    sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    v85[1] = sub_23DB6F39C();
    v85[2] = v86;
    v87 = *(v84 + 28);
    *(v85 + v87) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v87) = sub_23DB6FB2C();
    v88 = [objc_opt_self() currentDevice];
    [v88 userInterfaceIdiom];

    sub_23DB6EFAC();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v97 = v123;
    sub_23DA6E464(v85, v123, type metadata accessor for SubPageCompactButtonsView);
    v98 = v97 + *(v131 + 36);
    *v98 = v87;
    *(v98 + 8) = v90;
    *(v98 + 16) = v92;
    *(v98 + 24) = v94;
    *(v98 + 32) = v96;
    *(v98 + 40) = 0;
    v75 = &qword_27E2FDBE8;
    v76 = &qword_23DB79590;
    v77 = v127;
    sub_23DA17A54(v97, v127, &qword_27E2FDBE8, &qword_23DB79590);
    sub_23DA0E2B4(v77, v133, &qword_27E2FDBE8, &qword_23DB79590);
    swift_storeEnumTagMultiPayload();
    sub_23DA6EADC();
    sub_23DA6EB98();
    v78 = v130;
    goto LABEL_11;
  }

  v79 = 1;
  v60 = v137;
LABEL_12:
  (*(v135 + 56))(v60, v79, 1, v136);
  v153 = v178;
  v154 = v179;
  v155[0] = v180[0];
  *(v155 + 9) = *(v180 + 9);
  v149 = v174;
  v150 = v175;
  v151 = v176;
  v152 = v177;
  v145 = v170;
  v146 = v171;
  v147 = v172;
  v148 = v173;
  v141 = v166;
  v142 = v167;
  v143 = v168;
  v144 = v169;
  v99 = v138;
  sub_23DA0E2B4(v60, v138, &qword_27E2FDBF8, &qword_23DB795A0);
  v100 = v154;
  v156[12] = v153;
  v156[13] = v154;
  v101 = v155[0];
  v157[0] = v155[0];
  *(v157 + 9) = *(v155 + 9);
  v102 = v149;
  v103 = v150;
  v156[8] = v149;
  v156[9] = v150;
  v104 = v151;
  v105 = v152;
  v156[10] = v151;
  v156[11] = v152;
  v106 = v145;
  v107 = v146;
  v156[4] = v145;
  v156[5] = v146;
  v108 = v147;
  v109 = v148;
  v156[6] = v147;
  v156[7] = v148;
  v110 = v141;
  v111 = v142;
  v156[0] = v141;
  v156[1] = v142;
  v112 = v143;
  v113 = v144;
  v156[2] = v143;
  v156[3] = v144;
  a4[12] = v153;
  a4[13] = v100;
  a4[14] = v101;
  *(a4 + 233) = *(v155 + 9);
  a4[8] = v102;
  a4[9] = v103;
  a4[10] = v104;
  a4[11] = v105;
  a4[4] = v106;
  a4[5] = v107;
  a4[6] = v108;
  a4[7] = v109;
  *a4 = v110;
  a4[1] = v111;
  a4[2] = v112;
  a4[3] = v113;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDC00, &qword_23DB79638);
  sub_23DA0E2B4(v99, a4 + *(v114 + 48), &qword_27E2FDBF8, &qword_23DB795A0);
  sub_23DA0E2B4(v156, &v158, &qword_27E2FDC08, &qword_23DB79640);
  sub_23DA17988(v60, &qword_27E2FDBF8, &qword_23DB795A0);
  sub_23DA17988(v99, &qword_27E2FDBF8, &qword_23DB795A0);
  v165[5] = v153;
  v165[6] = v154;
  v165[7] = v155[0];
  *(&v165[7] + 9) = *(v155 + 9);
  v165[1] = v149;
  v165[2] = v150;
  v165[3] = v151;
  v165[4] = v152;
  v162 = v145;
  v163 = v146;
  v164 = v147;
  v165[0] = v148;
  v158 = v141;
  v159 = v142;
  v160 = v143;
  v161 = v144;
  return sub_23DA17988(&v158, &qword_27E2FDC08, &qword_23DB79640);
}

uint64_t sub_23DA5C0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_23DB7057C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a3 = a1;
  type metadata accessor for NavigationModel(0);
  sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
  a3[1] = sub_23DB6F39C();
  a3[2] = v10;
  v11 = type metadata accessor for SubPageButtonsView(0);
  sub_23DA17A54(a2, a3 + *(v11 + 24), &qword_27E2FCE78, &unk_23DB791B0);
  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];
  v14 = v13;

  if (v14 >= 850.0 && (v15 = [objc_opt_self() currentDevice], v16 = objc_msgSend(v15, sel_userInterfaceIdiom), v15, v16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDC30, &qword_23DB79648);
    v21[1] = 2 * *(*(sub_23DB7058C() - 8) + 72);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_23DB76A80;
    v22 = vdupq_n_s64(0x406E800000000000uLL);
    *v9 = v22;
    v18 = *MEMORY[0x277CDF100];
    v19 = *(v7 + 104);
    v19(v9, v18, v6);
    sub_23DB7059C();
    *v9 = v22;
    v19(v9, v18, v6);
    sub_23DB7059C();
    *v9 = v22;
    v19(v9, v18, v6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDC30, &qword_23DB79648);
    sub_23DB7058C();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_23DB73BA0;
    *v9 = vdupq_n_s64(0x406E800000000000uLL);
    (*(v7 + 104))(v9, *MEMORY[0x277CDF100], v6);
  }

  result = sub_23DB7059C();
  *(a3 + *(v11 + 28)) = v17;
  return result;
}

uint64_t sub_23DA5C508()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_23DB70ACC();
    v6 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_23DA5C660@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_23DB6F8DC();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v53 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_23DB6F31C();
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeaderBigView(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = v8;
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA48, &qword_23DB793A0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA40, &qword_23DB79398);
  MEMORY[0x28223BE20](v48);
  v43 = &v42 - v14;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA28, &qword_23DB79390);
  MEMORY[0x28223BE20](v56);
  v49 = &v42 - v15;
  v52 = type metadata accessor for HeaderBigView;
  v44 = v1;
  v46 = v9;
  sub_23DA6D398(v1, v9, type metadata accessor for HeaderBigView);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v50 = type metadata accessor for HeaderBigView;
  sub_23DA6E464(v9, v17 + v16, type metadata accessor for HeaderBigView);
  v58 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA88, &qword_23DB793B8);
  sub_23DA6E528();
  sub_23DB703CC();
  sub_23DB6F30C();
  sub_23DA17B80(&qword_27E2FDA50, &qword_27E2FDA48, &qword_23DB793A0, MEMORY[0x277CDF028]);
  sub_23DA6CEEC(&qword_27E2FD1D0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v18 = v43;
  v19 = v45;
  sub_23DB6FE2C();
  (*(v47 + 8))(v5, v19);
  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC8, &qword_23DB7C380);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23DB78D60;
  *(v20 + 32) = sub_23DB700EC();
  sub_23DB700EC();
  v21 = sub_23DB701FC();

  *(v20 + 40) = v21;
  sub_23DB7073C();
  sub_23DB7074C();
  MEMORY[0x23EEF6910](v20);
  sub_23DB6F1DC();
  v22 = v18 + *(v48 + 36);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA60, &qword_23DB793A8);
  v24 = (v22 + *(v23 + 52));
  v25 = *(sub_23DB6F32C() + 20);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_23DB6F63C();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #8.0 }

  *v24 = _Q0;
  v33 = v49;
  v34 = v62;
  *v22 = v61;
  *(v22 + 16) = v34;
  *(v22 + 32) = v63;
  *(v22 + *(v23 + 56)) = 256;
  v35 = v53;
  sub_23DB6F8BC();
  v36 = v46;
  sub_23DA6D398(v44, v46, v52);
  v37 = swift_allocObject();
  sub_23DA6E464(v36, v37 + v16, v50);
  sub_23DA6E154();
  sub_23DB6FF6C();

  (*(v54 + 8))(v35, v55);
  sub_23DA17988(v18, &qword_27E2FDA40, &qword_23DB79398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAD0, &qword_23DB793E0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_23DB73BA0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v59);

  v39 = v60;
  if (v60)
  {
    v40 = v59;
  }

  else
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    v40 = (*(*qword_27E30A6D8 + 304))(0xD000000000000024, 0x800000023DB87B30);
  }

  *(v38 + 32) = v40;
  *(v38 + 40) = v39;
  sub_23DA16E70();
  sub_23DB6F2BC();

  return sub_23DA17988(v33, &qword_27E2FDA28, &qword_23DB79390);
}

double sub_23DA5CE84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB6F68C();
  v22 = 1;
  sub_23DA5D0C4(a1, __src);
  memcpy(__dst, __src, 0x251uLL);
  memcpy(v25, __src, 0x251uLL);
  sub_23DA0E2B4(__dst, v19, &qword_27E2FDAD8, &qword_23DB79430);
  sub_23DA17988(v25, &qword_27E2FDAD8, &qword_23DB79430);
  memcpy(&v21[7], __dst, 0x251uLL);
  v5 = v22;
  sub_23DB7062C();
  sub_23DB6F34C();
  *&v23[55] = *&__src[48];
  *&v23[71] = *&__src[64];
  *&v23[87] = *&__src[80];
  *&v23[103] = *&__src[96];
  *&v23[7] = *__src;
  *&v23[23] = *&__src[16];
  *&v23[39] = *&__src[32];
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA88, &qword_23DB793B8) + 36));
  v7 = *(sub_23DB6F32C() + 20);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_23DB6F63C();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #8.0 }

  *v6 = _Q0;
  v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC0, &unk_23DB793D0) + 36)] = 0;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v21, 0x258uLL);
  v15 = *&v23[80];
  *(a2 + 681) = *&v23[64];
  *(a2 + 697) = v15;
  *(a2 + 713) = *&v23[96];
  *(a2 + 728) = *&v23[111];
  v16 = *&v23[16];
  *(a2 + 617) = *v23;
  *(a2 + 633) = v16;
  result = *&v23[32];
  v18 = *&v23[48];
  *(a2 + 649) = *&v23[32];
  *(a2 + 665) = v18;
  return result;
}

uint64_t sub_23DA5D0C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_23DB6F25C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeaderBigView(0);
  sub_23DB330E8();
  v8 = sub_23DB6F24C();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    *v44 = sub_23DB6F68C();
    *&v44[8] = 0;
    v44[16] = 1;
    sub_23DA6E8C4();
  }

  else
  {
    *v44 = sub_23DB6F5BC();
    *&v44[8] = 0;
    v44[16] = 1;
    sub_23DA6E84C();
  }

  v9 = sub_23DB7068C();

  sub_23DA5D8B8(a1, v44);
  memcpy(v70, v44, 0x149uLL);
  memcpy(v71, v44, 0x149uLL);
  sub_23DA0E2B4(v70, v39, &qword_27E2FDAE8, &unk_23DB79438);
  sub_23DA17988(v71, &qword_27E2FDAE8, &unk_23DB79438);

  memcpy(v72, v70, 0x149uLL);
  v36 = sub_23DB6FB4C();
  v72[336] = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v44);

  v10 = sub_23DA54900(0, 0xE000000000000000, *v44, *&v44[8]);

  v37 = v9;
  if (v10)
  {
    sub_23DA6E8A0(&v58);
  }

  else
  {
    v35 = a2;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(v44);

    sub_23DA16E70();
    v11 = sub_23DB6FD8C();
    v13 = v12;
    v15 = v14;
    *v44 = sub_23DB701AC();
    v16 = sub_23DB6FCEC();
    v18 = v17;
    v20 = v19;
    sub_23DA16EC4(v11, v13, v15 & 1);

    sub_23DB6FC5C();
    v21 = sub_23DB6FD3C();
    v23 = v22;
    LOBYTE(v13) = v24;
    v26 = v25;

    sub_23DA16EC4(v16, v18, v20 & 1);

    sub_23DB7063C();
    sub_23DB6F34C();
    v27 = v13 & 1;
    LOBYTE(v42[0]) = v13 & 1;
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_23DB78D60;
    LOBYTE(v13) = sub_23DB6FB2C();
    *(v29 + 32) = v13;
    v30 = sub_23DB6FB5C();
    *(v29 + 33) = v30;
    v31 = sub_23DB6FB7C();
    sub_23DB6FB7C();
    if (sub_23DB6FB7C() != v13)
    {
      v31 = sub_23DB6FB7C();
    }

    sub_23DB6FB7C();
    if (sub_23DB6FB7C() != v30)
    {
      v31 = sub_23DB6FB7C();
    }

    v9 = v37;
    LOBYTE(v39[0]) = 1;
    *v44 = v21;
    *&v44[8] = v23;
    v44[16] = v27;
    *&v44[96] = v55;
    *&v44[112] = v56;
    *&v44[128] = v57;
    *&v44[32] = v51;
    *&v44[48] = v52;
    *&v44[64] = v53;
    *&v44[80] = v54;
    *&v44[24] = v26;
    *&v44[144] = KeyPath;
    v44[152] = 0;
    v44[160] = v31;
    memset(&v44[168], 0, 32);
    v44[200] = 1;
    nullsub_1();
    v68 = *&v44[160];
    v69[0] = *&v44[176];
    *(v69 + 9) = *&v44[185];
    v64 = *&v44[96];
    v65 = *&v44[112];
    v67 = *&v44[144];
    v66 = *&v44[128];
    v60 = *&v44[32];
    v61 = *&v44[48];
    v63 = *&v44[80];
    v62 = *&v44[64];
    v59 = *&v44[16];
    v58 = *v44;
    a2 = v35;
  }

  v42[10] = v68;
  v43[0] = v69[0];
  *(v43 + 9) = *(v69 + 9);
  v42[6] = v64;
  v42[7] = v65;
  v42[9] = v67;
  v42[8] = v66;
  v42[2] = v60;
  v42[3] = v61;
  v42[5] = v63;
  v42[4] = v62;
  v42[1] = v59;
  v42[0] = v58;
  v39[0] = v9;
  memcpy(&v39[1], v72, 0x149uLL);
  *(&v39[42] + 1) = v74[0];
  HIDWORD(v39[42]) = *(v74 + 3);
  v32 = v36;
  LOBYTE(v39[43]) = v36;
  *(&v39[43] + 1) = *v73;
  HIDWORD(v39[43]) = *&v73[3];
  memset(&v39[44], 0, 32);
  LOBYTE(v39[48]) = 1;
  memcpy(v38, v39, 0x181uLL);
  v40[10] = v68;
  v41[0] = v69[0];
  *(v41 + 9) = *(v69 + 9);
  v40[6] = v64;
  v40[7] = v65;
  v40[9] = v67;
  v40[8] = v66;
  v40[2] = v60;
  v40[3] = v61;
  v40[5] = v63;
  v40[4] = v62;
  v40[1] = v59;
  v40[0] = v58;
  *&v38[69] = v68;
  *&v38[71] = v69[0];
  *(&v38[72] + 1) = *(v69 + 9);
  *&v38[61] = v64;
  *&v38[63] = v65;
  *&v38[65] = v66;
  *&v38[67] = v67;
  *&v38[53] = v60;
  *&v38[55] = v61;
  *&v38[57] = v62;
  *&v38[59] = v63;
  *&v38[49] = v58;
  *&v38[51] = v59;
  memcpy(a2, v38, 0x251uLL);
  sub_23DA0E2B4(v39, v44, &qword_27E2FDAF0, &qword_23DB79448);
  sub_23DA0E2B4(v40, v44, &qword_27E2FDAF8, &qword_23DB79450);
  sub_23DA17988(v42, &qword_27E2FDAF8, &qword_23DB79450);
  *v44 = v37;
  memcpy(&v44[8], v72, 0x149uLL);
  *v45 = v74[0];
  *&v45[3] = *(v74 + 3);
  v46 = v32;
  *v47 = *v73;
  *&v47[3] = *&v73[3];
  v48 = 0u;
  v49 = 0u;
  v50 = 1;
  return sub_23DA17988(v44, &qword_27E2FDAF0, &qword_23DB79448);
}

uint64_t sub_23DA5D8B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v3 = sub_23DB6F25C();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_23DB702CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = a1;
  swift_beginAccess();

  sub_23DB702DC();
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
  v58 = sub_23DB702EC();

  (*(v6 + 8))(v8, v5);
  v55 = sub_23DB701AC();
  sub_23DB7062C();
  sub_23DB6F10C();
  v131 = 1;
  v57 = sub_23DB6FB2C();
  v132 = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v92);

  v9 = v93;
  if (v93)
  {
    v10 = v92;
  }

  else
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    v10 = (*(*qword_27E30A6D8 + 304))(0xD000000000000024, 0x800000023DB87B30);
  }

  v92 = v10;
  v93 = v9;
  sub_23DA16E70();
  v11 = sub_23DB6FD8C();
  v13 = v12;
  v15 = v14;
  v92 = sub_23DB701AC();
  v16 = sub_23DB6FCEC();
  v18 = v17;
  v20 = v19;
  sub_23DA16EC4(v11, v13, v15 & 1);

  sub_23DB6FBDC();
  v21 = sub_23DB6FD3C();
  v23 = v22;
  LOBYTE(v13) = v24;

  sub_23DA16EC4(v16, v18, v20 & 1);

  v25 = sub_23DB6FD1C();
  v48 = v26;
  v49 = v25;
  LOBYTE(v11) = v27;
  v50 = v28;
  sub_23DA16EC4(v21, v23, v13 & 1);

  sub_23DB7063C();
  sub_23DB6F34C();
  v29 = v11 & 1;
  v122 = v11 & 1;
  KeyPath = swift_getKeyPath();
  v47 = sub_23DB6FB6C();
  type metadata accessor for HeaderBigView(0);
  v31 = v51;
  sub_23DB330E8();
  LOBYTE(v11) = sub_23DB6F24C();
  (*(v53 + 8))(v31, v54);
  if ((v11 & 1) != 0 && qword_27E2FBC10 != -1)
  {
    swift_once();
  }

  sub_23DB6EFAC();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v123 = 0;
  v74[0] = v58;
  v74[1] = 0;
  LOWORD(v75) = 1;
  *(&v75 + 2) = v129;
  WORD3(v75) = v130;
  v40 = v55;
  *(&v75 + 1) = v55;
  v77 = v127;
  v78 = v128;
  v76 = v126;
  LOBYTE(v79[0]) = v57;
  DWORD1(v79[0]) = *(v133 + 3);
  *(v79 + 1) = v133[0];
  *(&v79[1] + 8) = 0u;
  *(v79 + 8) = 0u;
  BYTE8(v79[2]) = 1;
  v73[2] = v126;
  v73[3] = v127;
  v73[0] = v58;
  v73[1] = v75;
  *(&v73[6] + 9) = *(&v79[1] + 9);
  v73[4] = v128;
  v73[5] = v79[0];
  v42 = v48;
  v41 = v49;
  *&v80 = v49;
  *(&v80 + 1) = v48;
  LOBYTE(v81) = v29;
  DWORD1(v81) = *&v121[3];
  *(&v81 + 1) = *v121;
  v43 = v50;
  *(&v81 + 1) = v50;
  v82 = v114;
  v83 = v115;
  v87 = v119;
  v88 = v120;
  v85 = v117;
  v86 = v118;
  v84 = v116;
  *&v89 = KeyPath;
  BYTE8(v89) = 0;
  HIDWORD(v89) = *&v125[3];
  *(&v89 + 9) = *v125;
  v44 = v47;
  LOBYTE(v90) = v47;
  DWORD1(v90) = *&v124[3];
  *(&v90 + 1) = *v124;
  *(&v90 + 1) = v32;
  *&v91[0] = v34;
  *(&v91[0] + 1) = v36;
  *&v91[1] = v38;
  BYTE8(v91[1]) = 0;
  *(&v73[19] + 9) = *(v91 + 9);
  v73[6] = v79[1];
  v73[8] = v80;
  v73[9] = v81;
  v73[11] = v115;
  v73[12] = v116;
  v73[10] = v114;
  v73[15] = v119;
  v73[16] = v120;
  v73[13] = v117;
  v73[14] = v118;
  v73[18] = v90;
  v73[19] = v91[0];
  v73[17] = v89;
  memcpy(v56, v73, 0x149uLL);
  v92 = v41;
  v93 = v42;
  v94 = v29;
  *v95 = *v121;
  *&v95[3] = *&v121[3];
  v96 = v43;
  v101 = v118;
  v102 = v119;
  v103 = v120;
  v97 = v114;
  v98 = v115;
  v100 = v117;
  v99 = v116;
  v104 = KeyPath;
  v105 = 0;
  *&v106[3] = *&v125[3];
  *v106 = *v125;
  v107 = v44;
  *&v108[3] = *&v124[3];
  *v108 = *v124;
  v109 = v33;
  v110 = v35;
  v111 = v37;
  v112 = v39;
  v113 = 0;
  sub_23DA0E2B4(v74, v59, &qword_27E2FDB08, &qword_23DB79458);
  sub_23DA0E2B4(&v80, v59, &qword_27E2FDB10, &qword_23DB79460);
  sub_23DA17988(&v92, &qword_27E2FDB10, &qword_23DB79460);
  v59[0] = v58;
  v59[1] = 0;
  v60 = 1;
  v61 = 0;
  v62 = v129;
  v63 = v130;
  v64 = v40;
  v65 = v126;
  v66 = v127;
  v67 = v128;
  v68 = v57;
  *&v69[3] = *(v133 + 3);
  *v69 = v133[0];
  v70 = 0u;
  v71 = 0u;
  v72 = 1;
  return sub_23DA17988(v59, &qword_27E2FDB08, &qword_23DB79458);
}

uint64_t sub_23DA5E100@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_23DB6F8DC();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HeaderBigView(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = v6;
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA70, &qword_23DB793B0);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB18, &qword_23DB79468);
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v29 - v12;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA18, &qword_23DB79380);
  MEMORY[0x28223BE20](v43);
  v33 = &v29 - v13;
  v34 = type metadata accessor for HeaderBigView;
  v30 = v1;
  sub_23DA6D398(v1, v7, type metadata accessor for HeaderBigView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v31 = type metadata accessor for HeaderBigView;
  sub_23DA6E464(v7, v15 + v14, type metadata accessor for HeaderBigView);
  v45 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB20, &qword_23DB79470);
  sub_23DA17B80(&qword_27E2FDB28, &qword_27E2FDB20, &qword_23DB79470, MEMORY[0x277CE1138]);
  sub_23DB703CC();
  v16 = sub_23DA17B80(&qword_27E2FDA78, &qword_27E2FDA70, &qword_23DB793B0, MEMORY[0x277CDF028]);
  v17 = sub_23DA6E40C();
  v18 = v35;
  v19 = v36;
  sub_23DB6FE3C();
  v20 = v33;
  (*(v37 + 8))(v11, v19);
  v21 = v39;
  sub_23DB6F8BC();
  sub_23DA6D398(v30, v7, v34);
  v22 = swift_allocObject();
  sub_23DA6E464(v7, v22 + v14, v31);
  v46 = v19;
  v47 = &type metadata for TOCHeaderButtonStyle;
  v48 = v16;
  v49 = v17;
  swift_getOpaqueTypeConformance2();
  v23 = v20;
  v24 = v38;
  sub_23DB6FF6C();

  (*(v41 + 8))(v21, v42);
  (*(v40 + 8))(v18, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAD0, &qword_23DB793E0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_23DB73BA0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v46);

  v26 = v47;
  if (v47)
  {
    v27 = v46;
  }

  else
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    v27 = (*(*qword_27E30A6D8 + 304))(0xD000000000000024, 0x800000023DB87B30);
  }

  *(v25 + 32) = v27;
  *(v25 + 40) = v26;
  sub_23DA16E70();
  sub_23DB6F2BC();

  return sub_23DA17988(v23, &qword_27E2FDA18, &qword_23DB79380);
}

uint64_t sub_23DA5E750(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = 0;

    sub_23DABB0B8(&v2);
  }

  else
  {
    type metadata accessor for NavigationModel(0);
    sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DA5E800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_23DB6F5BC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB30, &qword_23DB79478);
  return sub_23DA5E858(a1, a2 + *(v4 + 44));
}

uint64_t sub_23DA5E858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB38, &qword_23DB79480);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB40, &qword_23DB79488);
  MEMORY[0x28223BE20](v51);
  v7 = &v50 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB48, &qword_23DB79490);
  MEMORY[0x28223BE20](v52);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  MEMORY[0x28223BE20](v12);
  v54 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB50, &qword_23DB79498);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v50 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB58, &qword_23DB794A0);
  MEMORY[0x28223BE20](v17);
  v53 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v50 - v23;
  v50 = a1;
  v25 = (*(a1 + 8) + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  swift_beginAccess();
  if (v25[1])
  {
    v26 = *v25;
    v27 = v25[1];
  }

  else
  {
    v27 = 0x800000023DB87B60;
    v26 = 0xD000000000000010;
  }

  *v16 = sub_23DB7062C();
  v16[1] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB60, &qword_23DB794A8);
  sub_23DA5EEC0(v26, v27, v16 + *(v29 + 44));

  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA17A54(v16, v21, &qword_27E2FDB50, &qword_23DB79498);
  v30 = &v21[*(v17 + 36)];
  v31 = v62;
  *(v30 + 4) = v61;
  *(v30 + 5) = v31;
  *(v30 + 6) = v63;
  v32 = v58;
  *v30 = v57;
  *(v30 + 1) = v32;
  v33 = v60;
  *(v30 + 2) = v59;
  *(v30 + 3) = v33;
  sub_23DA17A54(v21, v24, &qword_27E2FDB58, &qword_23DB794A0);
  *v5 = sub_23DB6F68C();
  *(v5 + 1) = 0x4024000000000000;
  v5[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB68, &qword_23DB794B0);
  sub_23DA5F648(&v5[*(v34 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB78D60;
  v36 = sub_23DB6FB2C();
  *(inited + 32) = v36;
  v37 = sub_23DB6FB9C();
  *(inited + 33) = v37;
  v38 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v36)
  {
    v38 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v37)
  {
    v38 = sub_23DB6FB7C();
  }

  sub_23DA17A54(v5, v7, &qword_27E2FDB38, &qword_23DB79480);
  v39 = &v7[*(v51 + 36)];
  *v39 = v38;
  *(v39 + 8) = 0u;
  *(v39 + 24) = 0u;
  v39[40] = 1;
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA17A54(v7, v11, &qword_27E2FDB40, &qword_23DB79488);
  v40 = &v11[*(v52 + 36)];
  v41 = v69;
  *(v40 + 4) = v68;
  *(v40 + 5) = v41;
  *(v40 + 6) = v70;
  v42 = v65;
  *v40 = v64;
  *(v40 + 1) = v42;
  v43 = v67;
  *(v40 + 2) = v66;
  *(v40 + 3) = v43;
  v44 = v54;
  sub_23DA17A54(v11, v54, &qword_27E2FDB48, &qword_23DB79490);
  v45 = v53;
  sub_23DA0E2B4(v24, v53, &qword_27E2FDB58, &qword_23DB794A0);
  v46 = v55;
  sub_23DA0E2B4(v44, v55, &qword_27E2FDB48, &qword_23DB79490);
  v47 = v56;
  sub_23DA0E2B4(v45, v56, &qword_27E2FDB58, &qword_23DB794A0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB70, &qword_23DB794B8);
  sub_23DA0E2B4(v46, v47 + *(v48 + 48), &qword_27E2FDB48, &qword_23DB79490);
  sub_23DA17988(v44, &qword_27E2FDB48, &qword_23DB79490);
  sub_23DA17988(v24, &qword_27E2FDB58, &qword_23DB794A0);
  sub_23DA17988(v46, &qword_27E2FDB48, &qword_23DB79490);
  return sub_23DA17988(v45, &qword_27E2FDB58, &qword_23DB794A0);
}

uint64_t sub_23DA5EEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v68 = a1;
  v69 = a3;
  v67 = sub_23DB702CC();
  v3 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB6F8AC();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBB8, &qword_23DB79560);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBC0, &qword_23DB79568);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v70 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  MEMORY[0x28223BE20](v20);
  v65 = &v64 - v21;
  sub_23DB6F7CC();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = *(v7 + 28);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_23DB6F63C();
  (*(*(v32 - 8) + 104))(&v9[v30], v31, v32);
  *v9 = v23;
  *(v9 + 1) = v25;
  *(v9 + 2) = v27;
  *(v9 + 3) = v29;
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA6E464(v9, v13, MEMORY[0x277CE0550]);
  v33 = &v13[*(v11 + 44)];
  v34 = v107;
  *(v33 + 4) = v106;
  *(v33 + 5) = v34;
  *(v33 + 6) = v108;
  v35 = v103;
  *v33 = v102;
  *(v33 + 1) = v35;
  v36 = v105;
  *(v33 + 2) = v104;
  *(v33 + 3) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC8, &qword_23DB7C380);
  v37 = swift_allocObject();
  v64 = xmmword_23DB78D60;
  *(v37 + 16) = xmmword_23DB78D60;
  *(v37 + 32) = sub_23DB700EC();
  sub_23DB700EC();
  v38 = sub_23DB701FC();

  *(v37 + 40) = v38;
  sub_23DB7073C();
  sub_23DB7074C();
  MEMORY[0x23EEF6910](v37);
  sub_23DB6F1DC();
  v39 = v109;
  sub_23DA17A54(v13, v19, &qword_27E2FDBB8, &qword_23DB79560);
  v40 = &v19[*(v15 + 44)];
  *v40 = v39;
  v41 = v110;
  *(v40 + 24) = v111;
  *(v40 + 8) = v41;
  v42 = v65;
  sub_23DA17A54(v19, v65, &qword_27E2FDBC0, &qword_23DB79568);

  sub_23DB702DC();
  v43 = v67;
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v67);
  v68 = sub_23DB702EC();

  (*(v3 + 8))(v5, v43);
  v44 = swift_allocObject();
  *(v44 + 16) = v64;
  sub_23DB701AC();
  v45 = sub_23DB701FC();

  *(v44 + 32) = v45;
  *(v44 + 40) = sub_23DB701AC();
  sub_23DB706FC();
  sub_23DB706EC();
  MEMORY[0x23EEF6910](v44);
  sub_23DB6F1DC();
  v46 = v112;
  v47 = v113;
  v48 = v114;
  v49 = v115;
  v50 = v116;
  LOBYTE(v85[0]) = 1;
  sub_23DB7062C();
  sub_23DB6F10C();
  LOBYTE(v44) = sub_23DB6FB9C();
  LOBYTE(v85[0]) = 1;
  v51 = v70;
  sub_23DA0E2B4(v42, v70, &qword_27E2FDBC0, &qword_23DB79568);
  v52 = v51;
  v53 = v69;
  sub_23DA0E2B4(v52, v69, &qword_27E2FDBC0, &qword_23DB79568);
  v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBC8, &qword_23DB79570) + 48));
  v55 = v68;
  v77[0] = v68;
  v77[1] = 0;
  LOWORD(v78) = 1;
  *(&v78 + 2) = v74;
  WORD3(v78) = v75;
  *(&v78 + 1) = v46;
  *&v79 = v47;
  *(&v79 + 1) = v48;
  *&v80 = v49;
  *(&v80 + 1) = v50;
  v81 = v71;
  v82 = v72;
  v83 = v73;
  LOBYTE(v84[0]) = v44;
  DWORD1(v84[0]) = *&v76[3];
  *(v84 + 1) = *v76;
  *(&v84[1] + 8) = 0u;
  *(v84 + 8) = 0u;
  BYTE8(v84[2]) = 1;
  v56 = v78;
  *v54 = v68;
  v54[1] = v56;
  v57 = v79;
  v58 = v80;
  v59 = v82;
  v54[4] = v81;
  v54[5] = v59;
  v54[2] = v57;
  v54[3] = v58;
  v60 = v83;
  v61 = v84[0];
  v62 = v84[1];
  *(v54 + 137) = *(&v84[1] + 9);
  v54[7] = v61;
  v54[8] = v62;
  v54[6] = v60;
  sub_23DA0E2B4(v77, v85, &qword_27E2FDBD0, &qword_23DB79578);
  sub_23DA17988(v42, &qword_27E2FDBC0, &qword_23DB79568);
  v85[0] = v55;
  v85[1] = 0;
  v86 = 1;
  v87 = v74;
  v88 = v75;
  v89 = v46;
  v90 = v47;
  v91 = v48;
  v92 = v49;
  v93 = v50;
  v96 = v73;
  v95 = v72;
  v94 = v71;
  v97 = v44;
  *v98 = *v76;
  *&v98[3] = *&v76[3];
  v99 = 0u;
  v100 = 0u;
  v101 = 1;
  sub_23DA17988(v85, &qword_27E2FDBD0, &qword_23DB79578);
  return sub_23DA17988(v70, &qword_27E2FDBC0, &qword_23DB79568);
}

uint64_t sub_23DA5F648@<X0>(uint64_t a2@<X8>)
{
  v40 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB78, &qword_23DB794C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v56);

  v8 = *(&v56 + 1);
  if (*(&v56 + 1))
  {
    v9 = v56;
  }

  else
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    v9 = (*(*qword_27E30A6D8 + 304))(0xD000000000000024, 0x800000023DB87B30);
  }

  *&v56 = v9;
  *(&v56 + 1) = v8;
  sub_23DA16E70();
  v10 = sub_23DB6FD8C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_23DB7020C();
  sub_23DA5FBCC(v17, v10, v12, v14 & 1, v16, v7);

  sub_23DA16EC4(v10, v12, v14 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v56);

  LOBYTE(v10) = sub_23DA54900(0, 0xE000000000000000, v56, *(&v56 + 1));

  if (v10)
  {
    sub_23DA6E97C(&v56);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v56);

    v18 = sub_23DB6FD8C();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    KeyPath = swift_getKeyPath();
    sub_23DA6D470(v18, v20, v22 & 1);

    sub_23DB7063C();
    sub_23DB6F34C();
    sub_23DA16EC4(v18, v20, v22 & 1);

    *(&v55[1] + 7) = v67;
    *(v55 + 7) = v66;
    *(&v55[3] + 7) = v69;
    *(&v55[4] + 7) = v70;
    *(&v55[5] + 7) = v71;
    *(&v55[6] + 7) = v72;
    *(&v55[2] + 7) = v68;
    *(&v54[4] + 9) = v55[4];
    *(&v54[5] + 9) = v55[5];
    *(&v54[6] + 9) = v55[6];
    *(v54 + 9) = v55[0];
    *(&v54[1] + 9) = v55[1];
    *(&v54[2] + 9) = v55[2];
    LOBYTE(v51[0]) = v22 & 1;
    *&v52 = v18;
    *(&v52 + 1) = v20;
    LOBYTE(v53) = v22 & 1;
    *(&v53 + 1) = v24;
    *&v54[0] = KeyPath;
    BYTE8(v54[0]) = 0;
    *(&v54[7] + 1) = *(&v72 + 1);
    *(&v54[3] + 9) = v55[3];
    nullsub_1();
    v62 = v54[4];
    v63 = v54[5];
    v64 = v54[6];
    v65 = v54[7];
    v58 = v54[0];
    v59 = v54[1];
    v60 = v54[2];
    v61 = v54[3];
    v56 = v52;
    v57 = v53;
  }

  sub_23DA0E2B4(v7, v4, &qword_27E2FDB78, &qword_23DB794C0);
  v47 = v62;
  v48 = v63;
  v49 = v64;
  v50 = v65;
  v43 = v58;
  v44 = v59;
  v45 = v60;
  v46 = v61;
  v41 = v56;
  v42 = v57;
  v26 = v40;
  sub_23DA0E2B4(v4, v40, &qword_27E2FDB78, &qword_23DB794C0);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB80, &qword_23DB794C8) + 48);
  v28 = v48;
  v51[6] = v47;
  v51[7] = v48;
  v29 = v49;
  v30 = v50;
  v51[8] = v49;
  v51[9] = v50;
  v31 = v45;
  v32 = v46;
  v51[4] = v45;
  v51[5] = v46;
  v33 = v43;
  v34 = v44;
  v51[2] = v43;
  v51[3] = v44;
  v35 = v41;
  v36 = v42;
  v51[0] = v41;
  v51[1] = v42;
  v37 = (v26 + v27);
  v37[6] = v47;
  v37[7] = v28;
  v37[8] = v29;
  v37[9] = v30;
  v37[2] = v33;
  v37[3] = v34;
  v37[4] = v31;
  v37[5] = v32;
  *v37 = v35;
  v37[1] = v36;
  sub_23DA0E2B4(v51, &v52, &qword_27E2FDB88, &qword_23DB794D0);
  sub_23DA17988(v7, &qword_27E2FDB78, &qword_23DB794C0);
  v54[4] = v47;
  v54[5] = v48;
  v54[6] = v49;
  v54[7] = v50;
  v54[0] = v43;
  v54[1] = v44;
  v54[2] = v45;
  v54[3] = v46;
  v52 = v41;
  v53 = v42;
  sub_23DA17988(&v52, &qword_27E2FDB88, &qword_23DB794D0);
  return sub_23DA17988(v4, &qword_27E2FDB78, &qword_23DB794C0);
}

uint64_t sub_23DA5FBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB90, &qword_23DB794D8);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB98, &qword_23DB794E0) - 8;
  MEMORY[0x28223BE20](v32);
  v31 = &v30 - v15;
  KeyPath = swift_getKeyPath();
  *&v34 = a2;
  *(&v34 + 1) = a3;
  LOBYTE(v35) = a4 & 1;
  v30 = a5;
  *(&v35 + 1) = a5;
  *&v36 = KeyPath;
  *(&v36 + 1) = a1;

  sub_23DA6D470(a2, a3, a4 & 1);

  sub_23DB6FBFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBA0, &unk_23DB79518);
  sub_23DA6E9A0();
  sub_23DB6FE1C();
  sub_23DA16EC4(a2, a3, a4 & 1);

  v17 = sub_23DB6FBDC();
  v18 = swift_getKeyPath();
  v19 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDBB0, &qword_23DB79558) + 36)];
  *v19 = v18;
  v19[1] = v17;
  v20 = swift_getKeyPath();
  v21 = &v14[*(v12 + 44)];
  *v21 = v20;
  v21[8] = 0;
  sub_23DB7063C();
  sub_23DB6F34C();
  v22 = v31;
  sub_23DA17A54(v14, v31, &qword_27E2FDB90, &qword_23DB794D8);
  v23 = (v22 + *(v32 + 44));
  v24 = v39;
  v23[4] = v38;
  v23[5] = v24;
  v23[6] = v40;
  v25 = v35;
  *v23 = v34;
  v23[1] = v25;
  v26 = v37;
  v23[2] = v36;
  v23[3] = v26;
  v27 = v22;
  v28 = v33;
  sub_23DA17A54(v27, v33, &qword_27E2FDB98, &qword_23DB794E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDB78, &qword_23DB794C0);
  *(v28 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_23DA5FEA8(uint64_t a1)
{
  v16 = sub_23DB6F55C();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_23DB6F12C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HeaderBigView(0);
  sub_23DA0E2B4(a1 + *(v12 + 28), v7, &qword_27E2FCC18, &qword_23DB79160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_23DB70ACC();
    v13 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_23DB6F11C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23DA60130()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA18, &qword_23DB79380);
  MEMORY[0x28223BE20](v0);
  v2 = &v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA20, &qword_23DB79388);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDA28, &qword_23DB79390);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  if (sub_23DA5C508())
  {
    sub_23DA5C660(v8);
    sub_23DA0E2B4(v8, v5, &qword_27E2FDA28, &qword_23DB79390);
    swift_storeEnumTagMultiPayload();
    sub_23DA6FE84(&qword_27E2FDA30, &qword_27E2FDA28, &qword_23DB79390, sub_23DA6E154);
    sub_23DA6E2CC();
    sub_23DB6F79C();
    v9 = v8;
    v10 = &qword_27E2FDA28;
    v11 = &qword_23DB79390;
  }

  else
  {
    sub_23DA5E100(v2);
    sub_23DA0E2B4(v2, v5, &qword_27E2FDA18, &qword_23DB79380);
    swift_storeEnumTagMultiPayload();
    sub_23DA6FE84(&qword_27E2FDA30, &qword_27E2FDA28, &qword_23DB79390, sub_23DA6E154);
    sub_23DA6E2CC();
    sub_23DB6F79C();
    v9 = v2;
    v10 = &qword_27E2FDA18;
    v11 = &qword_23DB79380;
  }

  return sub_23DA17988(v9, v10, v11);
}

uint64_t sub_23DA603AC@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = type metadata accessor for PrimaryTOCView(0);
  v55 = *(v2 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD960, &qword_23DB79110);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD968, &qword_23DB79118);
  MEMORY[0x28223BE20](v48);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD970, &qword_23DB79120);
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  v47 = &v46 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD978, &qword_23DB79128) - 8;
  MEMORY[0x28223BE20](v50);
  v49 = &v46 - v12;
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = type metadata accessor for HeaderBigView(0);
  *&v7[*(v15 + 28)] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Page.PrimaryTOC(0);
  sub_23DA6CEEC(&qword_27E2FD8A0, type metadata accessor for Page.PrimaryTOC, &protocol conformance descriptor for Page);

  *v7 = sub_23DB6F1EC();
  *(v7 + 1) = v16;
  type metadata accessor for NavigationModel(0);
  sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
  *(v7 + 2) = sub_23DB6F39C();
  *(v7 + 3) = v17;
  *(v7 + 4) = KeyPath;
  v7[40] = 0;
  v18 = *(v15 + 32);
  *&v7[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v18) = sub_23DB6FB9C();
  sub_23DB6EFAC();
  v19 = &v7[*(v5 + 44)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  LOBYTE(v18) = sub_23DB6FB2C();
  v24 = [objc_opt_self() currentDevice];
  [v24 userInterfaceIdiom];

  sub_23DB6EFAC();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_23DA17A54(v7, v9, &qword_27E2FD960, &qword_23DB79110);
  v33 = &v9[*(v48 + 36)];
  *v33 = v18;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  v34 = v1;
  sub_23DB6F90C();
  sub_23DA6D5A4();
  v35 = v47;
  sub_23DB6FF9C();

  sub_23DA17988(v9, &qword_27E2FD968, &qword_23DB79118);
  v36 = v53;
  sub_23DA6D398(v1, v53, type metadata accessor for PrimaryTOCView);
  v37 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v38 = swift_allocObject();
  sub_23DA6E464(v36, v38 + v37, type metadata accessor for PrimaryTOCView);
  v39 = v49;
  (*(v51 + 32))(v49, v35, v52);
  v40 = (v39 + *(v50 + 44));
  *v40 = sub_23DA6D6F0;
  v40[1] = v38;
  v40[2] = 0;
  v40[3] = 0;
  sub_23DA6D398(v34, v36, type metadata accessor for PrimaryTOCView);
  v41 = swift_allocObject();
  sub_23DA6E464(v36, v41 + v37, type metadata accessor for PrimaryTOCView);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD950, &qword_23DB79100);
  v43 = v56;
  v44 = (v56 + *(v42 + 36));
  sub_23DB6F18C();
  sub_23DB70A4C();
  *v44 = &unk_23DB791A8;
  v44[1] = v41;
  return sub_23DA17A54(v39, v43, &qword_27E2FD978, &qword_23DB79128);
}

uint64_t sub_23DA609E0()
{
  type metadata accessor for PrimaryTOCView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  return sub_23DB6F8FC();
}

uint64_t sub_23DA60A40(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_23DB70A3C();
  *(v1 + 24) = sub_23DB70A2C();
  v3 = sub_23DB70A1C();

  return MEMORY[0x2822009F8](sub_23DA60AD8, v3, v2);
}

uint64_t sub_23DA60AD8()
{

  type metadata accessor for PrimaryTOCView(0);
  *(v0 + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F8FC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23DA60B7C(uint64_t a1)
{
  v2 = sub_23DB6F83C();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD928, &qword_23DB790E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = a1;
  sub_23DB6F68C();
  LODWORD(v11) = 0;
  sub_23DA6CEEC(&qword_27E2FD938, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_23DB70E6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD940, &qword_23DB790F8);
  sub_23DA17B80(&qword_27E2FD948, &qword_27E2FD940, &qword_23DB790F8, MEMORY[0x277CE14C0]);
  sub_23DB6EFEC();
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  v11 = (*(*qword_27E30A6D8 + 304))(0xD000000000000021, 0x800000023DB87B00);
  v12 = v7;
  sub_23DA17B80(&qword_27E2FD920, &qword_27E2FD928, &qword_23DB790E8, MEMORY[0x277CDF340]);
  sub_23DA16E70();
  sub_23DB6FF1C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23DA60E6C@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD950, &qword_23DB79100);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  sub_23DA603AC(&v15 - v7);
  KeyPath = swift_getKeyPath();
  type metadata accessor for Page(0);
  sub_23DA6CEEC(&qword_27E2FCBD8, type metadata accessor for Page, &protocol conformance descriptor for Page);

  v10 = sub_23DB6F1EC();
  v12 = v11;
  sub_23DA0E2B4(v8, v5, &qword_27E2FD950, &qword_23DB79100);
  sub_23DA0E2B4(v5, a2, &qword_27E2FD950, &qword_23DB79100);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD958, &qword_23DB79108) + 48);
  *v13 = v10;
  *(v13 + 8) = v12;
  *(v13 + 16) = KeyPath;
  *(v13 + 24) = 0;

  sub_23DA5208C(KeyPath, 0);
  sub_23DA17988(v8, &qword_27E2FD950, &qword_23DB79100);

  sub_23DA4FF14(KeyPath, 0);
  return sub_23DA17988(v5, &qword_27E2FD950, &qword_23DB79100);
}

uint64_t sub_23DA61040@<X0>(uint64_t a2@<X8>)
{
  sub_23DB6FB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD910, &qword_23DB790E0);
  sub_23DA6D488();
  sub_23DB6F01C();
  if (qword_27E2FBB98 != -1)
  {
    swift_once();
  }

  v3 = qword_27E30A670;
  v4 = sub_23DB6FB3C();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD930, &qword_23DB790F0) + 36);
  *v5 = v3;
  *(v5 + 8) = v4;
}

uint64_t sub_23DA61134@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for Page(0);
  sub_23DA6CEEC(&qword_27E2FCBD8, type metadata accessor for Page, &protocol conformance descriptor for Page);
  swift_retain_n();
  v3 = sub_23DB6F1EC();
  v5 = v4;
  KeyPath = swift_getKeyPath();
  v7 = sub_23DB6F1EC();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;

  sub_23DA5208C(KeyPath, 0);

  sub_23DA4FF14(KeyPath, 0);
}

double sub_23DA61254(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4 + *a1;
  *a1 = result;
  return result;
}

void *sub_23DA6129C(double *a1, void *(*a2)(double *__return_ptr))
{
  v3 = *a1;
  result = a2(&v6);
  v5 = v6;
  if (v3 > v6)
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_23DA612F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDEA8, &qword_23DB79A78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v23[-v9];
  type metadata accessor for Page.WhatsNew(0);
  sub_23DA6CEEC(&qword_27E2FCE58, type metadata accessor for Page.WhatsNew, &protocol conformance descriptor for Page);
  sub_23DB6F1FC();
  swift_getKeyPath();
  sub_23DB6F20C();

  v11 = v24;
  v12 = v25;
  KeyPath = swift_getKeyPath();
  sub_23DA61CE4(v11, *(&v11 + 1), v12, KeyPath, sub_23DA61654, 0);
  v14 = *(a1 + 2);
  v24 = *(a1 + 1);
  v26 = v14;
  v15 = swift_allocObject();
  v16 = *(a1 + 1);
  v15[1] = *a1;
  v15[2] = v16;
  v15[3] = *(a1 + 2);
  v17 = swift_allocObject();
  v18 = *(a1 + 1);
  v17[1] = *a1;
  v17[2] = v18;
  v17[3] = *(a1 + 2);
  v19 = *(v5 + 16);
  v19(v7, v10, v4);
  v19(a2, v7, v4);
  v20 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDEB0, &qword_23DB79AC8) + 48)];
  *v20 = 0;
  v20[8] = 1;
  *(v20 + 2) = sub_23DA701A0;
  *(v20 + 3) = v15;
  *(v20 + 4) = sub_23DA70240;
  *(v20 + 5) = v17;

  sub_23DA0E2B4(&v24, v23, &qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DA0E2B4(&v26, v23, &qword_27E2FDCB8, &qword_23DB798F8);

  sub_23DA0E2B4(&v24, v23, &qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DA0E2B4(&v26, v23, &qword_27E2FDCB8, &qword_23DB798F8);
  v21 = *(v5 + 8);

  v21(v10, v4);

  return (v21)(v7, v4);
}

void *sub_23DA61654@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v11[0] = *a1;
  v11[1] = v3;
  v11[2] = a1[2];
  v4 = sub_23DB6F68C();
  v10 = 0;
  sub_23DA6173C(v11, __src);
  memcpy(__dst, __src, 0x149uLL);
  memcpy(v13, __src, 0x149uLL);
  sub_23DA0E2B4(__dst, v7, &qword_27E2FDEF8, &qword_23DB79B18);
  sub_23DA17988(v13, &qword_27E2FDEF8, &qword_23DB79B18);
  memcpy(&v9[7], __dst, 0x149uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x150uLL);
}

uint64_t sub_23DA6173C@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  swift_getKeyPath();
  v3 = a1[1];
  v79 = *a1;
  v80 = v3;
  v81 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF00, &qword_23DB79B40);
  sub_23DB7048C();

  v42 = v68;
  v43 = v69;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF08, &qword_23DB79B48);
  MEMORY[0x23EEF6810](&v59);
  v5 = v59;

  v52 = v5;
  sub_23DA16E70();
  v6 = sub_23DB6FD8C();
  v8 = v7;
  v10 = v9;
  sub_23DB6FC8C();
  v38 = sub_23DB6FD3C();
  v39 = v11;
  v41 = v12;
  v14 = v13;

  sub_23DA16EC4(v6, v8, v10 & 1);

  sub_23DB7063C();
  sub_23DB6F34C();
  v14 &= 1u;
  v107 = v14;
  swift_getKeyPath();
  v15 = a1[1];
  v79 = *a1;
  v80 = v15;
  v81 = a1[2];
  sub_23DB7048C();

  v42 = v68;
  v43 = v69;
  MEMORY[0x23EEF6810](&v59, v4);
  v16 = v59;

  v52 = v16;
  v17 = sub_23DB6FD8C();
  v19 = v18;
  v21 = v20;
  sub_23DB6FBCC();
  v22 = sub_23DB6FD3C();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_23DA16EC4(v17, v19, v21 & 1);

  sub_23DB7063C();
  sub_23DB6F34C();
  v96 = v26 & 1;
  LOBYTE(v4) = sub_23DB6FB5C();
  sub_23DB6EFAC();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v97 = 0;
  *&v59 = v38;
  *(&v59 + 1) = v41;
  LOBYTE(v60) = v14;
  *(&v60 + 1) = *v106;
  DWORD1(v60) = *&v106[3];
  *(&v60 + 1) = v39;
  v65 = v103;
  v66 = v104;
  v67 = v105;
  v61 = v99;
  v62 = v100;
  v63 = v101;
  v64 = v102;
  __src[2] = v99;
  __src[3] = v100;
  __src[0] = v59;
  __src[1] = v60;
  __src[6] = v103;
  __src[7] = v104;
  __src[4] = v101;
  __src[5] = v102;
  *&v68 = v22;
  *(&v68 + 1) = v24;
  LOBYTE(v69) = v26 & 1;
  *(&v69 + 1) = *v95;
  DWORD1(v69) = *&v95[3];
  *(&v69 + 1) = v28;
  v74 = v56;
  v75 = v57;
  v76 = v58;
  v70 = v16;
  v71 = v53;
  v72 = v54;
  v73 = v55;
  LOBYTE(v77) = v4;
  DWORD1(v77) = *&v98[3];
  *(&v77 + 1) = *v98;
  *(&v77 + 1) = v29;
  *v78 = v31;
  *&v78[8] = v33;
  *&v78[16] = v35;
  v78[24] = 0;
  *(&__src[19] + 9) = *&v78[9];
  __src[10] = v69;
  __src[11] = v16;
  __src[8] = v105;
  __src[9] = v68;
  __src[16] = v57;
  __src[17] = v58;
  __src[14] = v55;
  __src[15] = v56;
  __src[12] = v53;
  __src[13] = v54;
  __src[18] = v77;
  __src[19] = *v78;
  memcpy(a2, __src, 0x149uLL);
  *&v79 = v22;
  *(&v79 + 1) = v24;
  LOBYTE(v80) = v26 & 1;
  *(&v80 + 1) = *v95;
  DWORD1(v80) = *&v95[3];
  *(&v80 + 1) = v28;
  v85 = v56;
  v86 = v57;
  v87 = v58;
  v81 = v52;
  v82 = v53;
  v84 = v55;
  v83 = v54;
  v88 = v4;
  *&v89[3] = *&v98[3];
  *v89 = *v98;
  v90 = v30;
  v91 = v32;
  v92 = v34;
  v93 = v36;
  v94 = 0;
  sub_23DA0E2B4(&v59, &v42, &qword_27E2FDE00, &unk_23DB7C750);
  sub_23DA0E2B4(&v68, &v42, &qword_27E2FDF10, &qword_23DB79B70);
  sub_23DA17988(&v79, &qword_27E2FDF10, &qword_23DB79B70);
  *&v42 = v38;
  *(&v42 + 1) = v41;
  LOBYTE(v43) = v14;
  *(&v43 + 1) = *v106;
  DWORD1(v43) = *&v106[3];
  *(&v43 + 1) = v39;
  v48 = v103;
  v49 = v104;
  v50 = v105;
  v44 = v99;
  v45 = v100;
  v46 = v101;
  v47 = v102;
  return sub_23DA17988(&v42, &qword_27E2FDE00, &unk_23DB7C750);
}

uint64_t sub_23DA61CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDEB8, &qword_23DB79AD0);
  MEMORY[0x23EEF6810](v18, v11);
  v12 = *(v18[0] + 16);

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v18[0] = 0;
  v18[1] = v12;
  v18[2] = sub_23DA702E8;
  v18[3] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDEC0, &unk_23DB79AF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC548, &qword_23DB74B10);
  sub_23DA702F8();
  sub_23DA17B80(&qword_27E2FDED0, &qword_27E2FDEC0, &unk_23DB79AF8, MEMORY[0x277CE1198]);
  sub_23DA17B80(&qword_27E2FDED8, &qword_27E2FC548, &qword_23DB74B10, MEMORY[0x277D83960]);
  sub_23DA17B80(&qword_27E2FDEE0, &qword_27E2FC548, &qword_23DB74B10, MEMORY[0x277D83980]);
  swift_getKeyPath();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a5;
  v14[6] = a6;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_23DA7039C;
  *(v15 + 24) = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDEE8, &qword_23DB79B08);
  sub_23DA70460();
  return sub_23DB704FC();
}

uint64_t sub_23DA61F6C()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 32);
  v5 = *(v0 + 24);
  v9 = v5;
  if (v10 != 1)
  {

    sub_23DB70ACC();
    v6 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v9, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_23DA620CC@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v7[2] = v1[2];
  KeyPath = swift_getKeyPath();
  sub_23DA612F0(v7, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDEA0, &qword_23DB79A70);
  v6 = &a1[*(result + 36)];
  *v6 = KeyPath;
  v6[8] = 0;
  return result;
}

uint64_t sub_23DA62144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v5 = sub_23DB6F9FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23DB6F68C();
  v18 = 0;
  sub_23DA62388(a1, a2, v21);
  memcpy(v19, v21, sizeof(v19));
  memcpy(v20, v21, sizeof(v20));
  sub_23DA0E2B4(v19, v16, &qword_27E2FDDF8, &qword_23DB79A10);
  sub_23DA17988(v20, &qword_27E2FDDF8, &qword_23DB79A10);
  memcpy(&v17[7], v19, 0x120uLL);
  v10 = v18;
  v11 = sub_23DB7062C();
  v13 = v12;
  LOBYTE(a1) = sub_23DB6FB5C();
  v18 = 1;
  v16[0] = v9;
  v16[1] = 0;
  LOBYTE(v16[2]) = v10;
  memcpy(&v16[2] + 1, v17, 0x127uLL);
  v16[39] = sub_23DA713C4;
  v16[40] = 0;
  v16[41] = v11;
  v16[42] = v13;
  LOBYTE(v16[43]) = a1;
  memset(&v16[44], 0, 32);
  LOBYTE(v16[48]) = 1;
  sub_23DB6F9DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDD80, &qword_23DB799C0);
  sub_23DA6FB48();
  sub_23DB6FF8C();
  (*(v6 + 8))(v8, v5);
  memcpy(v21, v16, 0x181uLL);
  return sub_23DA17988(v21, &qword_27E2FDD80, &qword_23DB799C0);
}

uint64_t sub_23DA62388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  (*(*qword_27E30A6D8 + 304))(0xD00000000000002BLL, 0x800000023DB87BA0);
  sub_23DA16E70();
  v5 = sub_23DB6FD8C();
  v25 = v6;
  v26 = v5;
  v8 = v7;
  v27 = v9;
  sub_23DB7063C();
  sub_23DB6F34C();
  v10 = v8 & 1;
  v87 = v8 & 1;
  v65 = a1;
  v66 = a2;

  v11 = sub_23DB6FD8C();
  v13 = v12;
  v15 = v14;
  if (sub_23DA61F6C())
  {
    sub_23DB6FBDC();
  }

  else
  {
    sub_23DB6FBAC();
  }

  v16 = sub_23DB6FD3C();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_23DA16EC4(v11, v13, v15 & 1);

  sub_23DB7063C();
  sub_23DB6F34C();
  v78 = v20 & 1;
  *&v36 = v26;
  *(&v36 + 1) = v25;
  LOBYTE(v37) = v10;
  *(&v37 + 1) = *v86;
  DWORD1(v37) = *&v86[3];
  *(&v37 + 1) = v27;
  v42 = v83;
  v43 = v84;
  v44 = v85;
  v38 = v79;
  v39 = v80;
  v40 = v81;
  v41 = v82;
  __src[6] = v83;
  __src[7] = v84;
  __src[2] = v79;
  __src[3] = v80;
  __src[4] = v81;
  __src[5] = v82;
  __src[0] = v36;
  __src[1] = v37;
  *&v45 = v16;
  *(&v45 + 1) = v18;
  LOBYTE(v46) = v20 & 1;
  *(&v46 + 1) = *v77;
  DWORD1(v46) = *&v77[3];
  *(&v46 + 1) = v22;
  v51 = v33;
  v52 = v34;
  v53 = v35;
  v47 = v29;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  __src[12] = v30;
  __src[13] = v31;
  __src[10] = v46;
  __src[11] = v29;
  __src[14] = v32;
  __src[15] = v33;
  __src[16] = v34;
  __src[17] = v35;
  __src[8] = v85;
  __src[9] = v45;
  memcpy(a3, __src, 0x120uLL);
  v54[0] = v16;
  v54[1] = v18;
  v55 = v20 & 1;
  *v56 = *v77;
  *&v56[3] = *&v77[3];
  v57 = v22;
  v62 = v33;
  v63 = v34;
  v64 = v35;
  v58 = v29;
  v59 = v30;
  v60 = v31;
  v61 = v32;
  sub_23DA0E2B4(&v36, &v65, &qword_27E2FDE00, &unk_23DB7C750);
  sub_23DA0E2B4(&v45, &v65, &qword_27E2FDE00, &unk_23DB7C750);
  sub_23DA17988(v54, &qword_27E2FDE00, &unk_23DB7C750);
  v65 = v26;
  v66 = v25;
  v67 = v10;
  *v68 = *v86;
  *&v68[3] = *&v86[3];
  v69 = v27;
  v74 = v83;
  v75 = v84;
  v76 = v85;
  v70 = v79;
  v71 = v80;
  v72 = v81;
  v73 = v82;
  return sub_23DA17988(&v65, &qword_27E2FDE00, &unk_23DB7C750);
}

double sub_23DA6277C@<D0>(uint64_t a3@<X8>)
{
  sub_23DA16E70();

  v5 = sub_23DB6FD8C();
  v7 = v6;
  v9 = v8;
  if (sub_23DA61F6C())
  {
    sub_23DB6FC3C();
  }

  else
  {
    sub_23DB6FBDC();
  }

  v22 = sub_23DB6FD3C();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_23DA16EC4(v5, v7, v9 & 1);

  v16 = *(v3 + 72);
  v17 = sub_23DB7062C();
  v19 = v18;
  v23 = *(v3 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  sub_23DB7063C();
  sub_23DB6F34C();
  v20 = sub_23DB6FB5C();
  *a3 = v22;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  *(a3 + 120) = v26;
  *(a3 + 136) = v27;
  *(a3 + 152) = v28;
  *(a3 + 168) = v29;
  *(a3 + 72) = v23;
  *(a3 + 88) = v24;
  *(a3 + 40) = sub_23DA713C4;
  *(a3 + 48) = 0;
  *(a3 + 56) = v17;
  *(a3 + 64) = v19;
  *(a3 + 104) = v25;
  *(a3 + 184) = v20;
  result = 0.0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 1;
  return result;
}

uint64_t sub_23DA629B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23DB6F7BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB7018C();
  sub_23DB6F94C();
  sub_23DB6F14C();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_23DA62AB4()
{
  v1 = sub_23DB702BC();
  if (sub_23DA61F6C())
  {
    v2 = sub_23DB6FC3C();
  }

  else
  {
    v2 = sub_23DB6FBDC();
  }

  v3 = v2;
  KeyPath = swift_getKeyPath();
  v21[0] = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  v21[0] = *(v0 + 56);
  sub_23DB7038C();
  sub_23DB7062C();
  v5 = *(v0 + 72);
  sub_23DB6F34C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23DB78D60;
  v7 = sub_23DB6FB5C();
  *(v6 + 32) = v7;
  v8 = sub_23DB6FB8C();
  *(v6 + 33) = v8;
  v9 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v7)
  {
    v9 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v8)
  {
    v9 = sub_23DB6FB7C();
  }

  v23 = 1;
  *&v11 = v1;
  *(&v11 + 1) = KeyPath;
  *&v12 = v3;
  *(&v12 + 1) = v5;
  v17 = *&v22[13];
  v18 = *&v22[15];
  v19 = *&v22[17];
  v13 = *&v22[5];
  v14 = *&v22[7];
  v15 = *&v22[9];
  v16 = *&v22[11];
  v20[0] = v9;
  memset(&v20[8], 0, 32);
  v20[40] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE48, &qword_23DB79A38);
  sub_23DA6FF38();
  sub_23DB6FE7C();
  v21[8] = v19;
  v21[9] = *v20;
  *v22 = *&v20[16];
  *(&v22[1] + 1) = *&v20[25];
  v21[4] = v15;
  v21[5] = v16;
  v21[6] = v17;
  v21[7] = v18;
  v21[0] = v11;
  v21[1] = v12;
  v21[2] = v13;
  v21[3] = v14;
  return sub_23DA17988(v21, &qword_27E2FDE48, &qword_23DB79A38);
}

uint64_t sub_23DA62DC4()
{
  v1 = sub_23DB702BC();
  if (sub_23DA61F6C())
  {
    v2 = sub_23DB6FC3C();
  }

  else
  {
    v2 = sub_23DB6FBDC();
  }

  v3 = v2;
  KeyPath = swift_getKeyPath();
  v19[0] = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  v19[0] = *(v0 + 40);
  sub_23DB7038C();
  sub_23DB7062C();
  sub_23DB6F34C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23DB78D60;
  v6 = sub_23DB6FB5C();
  *(v5 + 32) = v6;
  v7 = sub_23DB6FB8C();
  *(v5 + 33) = v7;
  v8 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v6)
  {
    v8 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v7)
  {
    v8 = sub_23DB6FB7C();
  }

  v21 = 1;
  *&v10 = v1;
  *(&v10 + 1) = KeyPath;
  v15 = *&v20[13];
  v16 = *&v20[15];
  v17 = *&v20[17];
  v11 = *&v20[5];
  v12 = *&v20[7];
  v13 = *&v20[9];
  v14 = *&v20[11];
  v18[0] = v8;
  memset(&v18[8], 0, 32);
  v18[40] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE48, &qword_23DB79A38);
  sub_23DA6FF38();
  sub_23DB6FE7C();
  v19[8] = v17;
  v19[9] = *v18;
  *v20 = *&v18[16];
  *(&v20[1] + 1) = *&v18[25];
  v19[4] = v13;
  v19[5] = v14;
  v19[6] = v15;
  v19[7] = v16;
  v19[0] = v10;
  v19[1] = v3;
  v19[2] = v11;
  v19[3] = v12;
  return sub_23DA17988(v19, &qword_27E2FDE48, &qword_23DB79A38);
}

uint64_t sub_23DA630C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 8))
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(v11);

  v4 = v11[0];
  if (v11[0] >> 62)
  {
    if (sub_23DB70C3C())
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!*((v11[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EEF70C0](0, v4);
LABEL_8:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(v11);

    if (v11[0])
    {
      v11[10] = v11[0];
      v5 = swift_allocObject();
      v6 = *(a1 + 48);
      v5[3] = *(a1 + 32);
      v5[4] = v6;
      v5[5] = *(a1 + 64);
      v7 = *(a1 + 16);
      v5[1] = *a1;
      v5[2] = v7;
      sub_23DA51574(a1, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCF0, &qword_23DB830A0);
      sub_23DB6EA8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE10, &qword_23DB79A20);
      sub_23DA17B80(&qword_27E2FDD00, &qword_27E2FDCF0, &qword_23DB830A0, MEMORY[0x277D83980]);
      sub_23DA6FD1C();
      sub_23DA6CEEC(&qword_27E2FDDC0, type metadata accessor for Page, &protocol conformance descriptor for Page);
      sub_23DB7050C();
      v8 = 0;
LABEL_13:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE08, &qword_23DB79A18);
      return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
    }

LABEL_12:
    v8 = 1;
    goto LABEL_13;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_8;
  }

  __break(1u);
LABEL_16:
  type metadata accessor for NavigationModel(0);
  sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DA63450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t, uint64_t)@<X8>)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE88, &qword_23DB79A58);
  MEMORY[0x28223BE20](v58);
  v57 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE78, &qword_23DB79A50);
  MEMORY[0x28223BE20](v8);
  v59 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE90, &qword_23DB79A60);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE98, &qword_23DB79A68);
  MEMORY[0x28223BE20](v63);
  v64 = &v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE28, &qword_23DB79A28);
  MEMORY[0x28223BE20](v14);
  v66 = &v51 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE38, &qword_23DB79A30);
  MEMORY[0x28223BE20](v62);
  v65 = &v51 - v16;
  v74 = sub_23DB6EA8C();
  v60 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v76 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v75 = &v51 - v19;
  v67 = a2;
  v20 = *(a2 + 8);
  if (v20)
  {
    v77 = *a1;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    KeyPath = v20;
    v68 = v14;
    if (Strong)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_23DB6EF0C(&v79);

      v23 = v79;
      if (v79 >> 62)
      {
        goto LABEL_26;
      }

      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }

LABEL_27:

      v30 = KeyPath;
      Strong = 0;
    }

    else
    {
LABEL_21:
      swift_retain_n();
      v30 = KeyPath;
    }

LABEL_28:
    v31 = sub_23DABB420();

    if (Strong < v31)
    {

      v32 = v65;
      sub_23DA62AB4();
      sub_23DA0E2B4(v32, v64, &qword_27E2FDE38, &qword_23DB79A30);
      goto LABEL_59;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v61 = v30;
    if (!Strong)
    {
      goto LABEL_57;
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v78);

    v23 = v78;
    if (v78 >> 62)
    {
      goto LABEL_55;
    }

    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_33:
      v56 = v12;
      if ((v23 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEF70C0](0, v23);
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }
      }

      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C(&v78);

      v23 = v78;
      if (v78)
      {
        v3 = v78 & 0xFFFFFFFFFFFFFF8;
        v54 = a3;
        v55 = v8;
        v53 = v10;
        v52 = Strong;
        if (!(v78 >> 62))
        {
          v73 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_39:
          v71 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
          swift_beginAccess();
          v33 = 0;
          v72 = v23 & 0xC000000000000001;
          v70 = v60 + 16;
          v69 = (v60 + 8);
          a3 = (v60 + 16);
          v34 = v75;
          while (1)
          {
            if (v73 == v33)
            {

              Strong = 0;
              goto LABEL_51;
            }

            if (v72)
            {
              v35 = MEMORY[0x23EEF70C0](v33, v23);
              if (__OFADD__(v33, 1))
              {
LABEL_48:
                __break(1u);
                goto LABEL_49;
              }
            }

            else
            {
              if (v33 >= *(v3 + 16))
              {
                __break(1u);
                while (2)
                {
                  MEMORY[0x23EEF70C0](0, v23);
LABEL_8:

                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_23DB6EF0C(&v79);

                  v23 = v79;
                  if (!v79)
                  {

                    v30 = KeyPath;
                    Strong = 0;
                    v8 = v55;
                    v12 = v56;
                    goto LABEL_28;
                  }

                  v3 = v79 & 0xFFFFFFFFFFFFFF8;
                  v54 = a3;
                  v53 = v10;
                  v61 = KeyPath;
                  v52 = Strong;
                  if (v79 >> 62)
                  {
                    v73 = sub_23DB70C3C();
                  }

                  else
                  {
                    v73 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v71 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
                  swift_beginAccess();
                  v8 = 0;
                  v72 = v23 & 0xC000000000000001;
                  v70 = v60 + 16;
                  v69 = (v60 + 8);
                  a3 = (v60 + 16);
                  v12 = v75;
                  while (2)
                  {
                    if (v73 == v8)
                    {

                      v30 = v61;

                      Strong = 0;
                      goto LABEL_24;
                    }

                    if (v72)
                    {
                      v24 = MEMORY[0x23EEF70C0](v8, v23);
                      if (__OFADD__(v8, 1))
                      {
LABEL_20:
                        __break(1u);
                        goto LABEL_21;
                      }

LABEL_16:
                      v25 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
                      swift_beginAccess();
                      v26 = v23;
                      v27 = *a3;
                      v10 = v74;
                      (*a3)(v12, v24 + v25, v74);
                      v28 = v76;
                      v27(v76, v77 + v71, v10);
                      v23 = v26;
                      KeyPath = sub_23DB6EA6C();

                      Strong = v69;
                      v29 = *v69;
                      (*v69)(v28, v10);
                      v29(v12, v10);
                      ++v8;
                      if (KeyPath)
                      {

                        v30 = v61;

                        Strong = v8 - 1;
LABEL_24:
                        a3 = v54;
                        v8 = v55;
                        v12 = v56;
                        v10 = v53;
                        goto LABEL_28;
                      }

                      continue;
                    }

                    break;
                  }

                  if (v8 < *(v3 + 16))
                  {
                    v24 = *(v23 + 8 * v8 + 32);

                    if (__OFADD__(v8, 1))
                    {
                      goto LABEL_20;
                    }

                    goto LABEL_16;
                  }

                  __break(1u);
LABEL_26:
                  if (!sub_23DB70C3C())
                  {
                    goto LABEL_27;
                  }

LABEL_5:
                  v55 = v8;
                  v56 = v12;
                  if ((v23 & 0xC000000000000001) != 0)
                  {
                    continue;
                  }

                  break;
                }

                if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {

                  goto LABEL_8;
                }

                __break(1u);
LABEL_55:
                if (!sub_23DB70C3C())
                {
                  goto LABEL_56;
                }

                goto LABEL_33;
              }

              v35 = *(v23 + 8 * v33 + 32);

              if (__OFADD__(v33, 1))
              {
                goto LABEL_48;
              }
            }

            v36 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
            swift_beginAccess();
            v37 = v23;
            v38 = *a3;
            v10 = v3;
            v39 = v74;
            (*a3)(v34, v35 + v36, v74);
            v40 = v76;
            v38(v76, v77 + v71, v39);
            v23 = v37;
            KeyPath = sub_23DB6EA6C();

            Strong = v69;
            v41 = *v69;
            (*v69)(v40, v39);
            v42 = v39;
            v3 = v10;
            v41(v34, v42);
            ++v33;
            if (KeyPath)
            {

              Strong = v33 - 1;
LABEL_51:
              v12 = v56;
              goto LABEL_57;
            }
          }
        }

LABEL_65:
        v73 = sub_23DB70C3C();
        goto LABEL_39;
      }

LABEL_49:

      Strong = 0;
      v12 = v56;
    }

    else
    {
LABEL_56:

      Strong = 0;
    }

LABEL_57:

    v43 = sub_23DABB420();

    if (Strong != v43)
    {
      v48 = v57;
      sub_23DA62AB4();
      *(v48 + *(v58 + 36)) = 0;
      sub_23DA700DC();
      v49 = v59;
      sub_23DB6FE7C();
      sub_23DA17988(v48, &qword_27E2FDE88, &qword_23DB79A58);
      sub_23DA0E2B4(v49, v12, &qword_27E2FDE78, &qword_23DB79A50);
      swift_storeEnumTagMultiPayload();
      sub_23DA6FDD4();
      sub_23DA6FE84(&qword_27E2FDE70, &qword_27E2FDE78, &qword_23DB79A50, sub_23DA700DC);
      sub_23DB6F79C();
      v45 = v49;
      v46 = &qword_27E2FDE78;
      v47 = &qword_23DB79A50;
      return sub_23DA17988(v45, v46, v47);
    }

    v32 = v65;
    sub_23DA62DC4();
    sub_23DA0E2B4(v32, v64, &qword_27E2FDE38, &qword_23DB79A30);
LABEL_59:
    swift_storeEnumTagMultiPayload();
    sub_23DA6FE84(&qword_27E2FDE30, &qword_27E2FDE38, &qword_23DB79A30, sub_23DA6FF38);
    v44 = v66;
    sub_23DB6F79C();
    sub_23DA0E2B4(v44, v12, &qword_27E2FDE28, &qword_23DB79A28);
    swift_storeEnumTagMultiPayload();
    sub_23DA6FDD4();
    sub_23DA6FE84(&qword_27E2FDE70, &qword_27E2FDE78, &qword_23DB79A50, sub_23DA700DC);
    sub_23DB6F79C();
    sub_23DA17988(v44, &qword_27E2FDE28, &qword_23DB79A28);
    v45 = v32;
    v46 = &qword_27E2FDE38;
    v47 = &qword_23DB79A30;
    return sub_23DA17988(v45, v46, v47);
  }

  type metadata accessor for NavigationModel(0);
  sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DA642A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 8))
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(v11);

  v4 = v11[0];
  if (v11[0] >> 62)
  {
    if (sub_23DB70C3C())
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!*((v11[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EEF70C0](0, v4);
LABEL_8:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(v11);

    if (v11[0])
    {
      v11[10] = v11[0];
      v5 = swift_allocObject();
      v6 = *(a1 + 48);
      v5[3] = *(a1 + 32);
      v5[4] = v6;
      v5[5] = *(a1 + 64);
      v7 = *(a1 + 16);
      v5[1] = *a1;
      v5[2] = v7;
      sub_23DA51574(a1, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCF0, &qword_23DB830A0);
      sub_23DB6EA8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCF8, &qword_23DB79980);
      sub_23DA17B80(&qword_27E2FDD00, &qword_27E2FDCF0, &qword_23DB830A0, MEMORY[0x277D83980]);
      sub_23DA6F660();
      sub_23DA6CEEC(&qword_27E2FDDC0, type metadata accessor for Page, &protocol conformance descriptor for Page);
      sub_23DB7050C();
      v8 = 0;
LABEL_13:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCE8, &qword_23DB79928);
      return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
    }

LABEL_12:
    v8 = 1;
    goto LABEL_13;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_8;
  }

  __break(1u);
LABEL_16:
  type metadata accessor for NavigationModel(0);
  sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DA6462C@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDC8, &qword_23DB799E0);
  v78 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v77 = &v73 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDD0, &qword_23DB799E8);
  MEMORY[0x28223BE20](v83);
  v9 = &v73 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDD8, &qword_23DB799F0);
  MEMORY[0x28223BE20](v79);
  v80 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDD18, &qword_23DB79988);
  MEMORY[0x28223BE20](v11);
  v81 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDE0, &qword_23DB799F8);
  v82 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v73 - v14;
  v95 = sub_23DB6EA8C();
  v88 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v97 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v96 = &v73 - v18;
  v19 = *(a2 + 1);
  if (!v19)
  {
    type metadata accessor for NavigationModel(0);
    sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
    return result;
  }

  v84 = v11;
  v85 = v13;
  v86 = v9;
  v98 = *a1;
  v20 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel_dataModel;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v89 = v6;
  if (Strong)
  {
    v22 = Strong;
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    swift_retain_n();
    sub_23DB6EF0C(&v116);

    v24 = v116;
    if (v116 >> 62)
    {
      goto LABEL_26;
    }

    if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_27:
  }

  else
  {
LABEL_21:
    swift_retain_n();
  }

  KeyPath = 0;
LABEL_29:
  v22 = v114;
  v29 = sub_23DABB420();

  if (KeyPath >= v29)
  {
    swift_beginAccess();
    v39 = swift_weakLoadStrong();
    if (v39)
    {
      v20 = v39;
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      v73 = v20;
      sub_23DB6EF0C(&v116);

      v24 = v116;
      if (v116 >> 62)
      {
        goto LABEL_56;
      }

      if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        do
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v20 = v6;
            MEMORY[0x23EEF70C0](0, v24);
          }

          else
          {
            if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_67:
              v94 = sub_23DB70C3C();
              goto LABEL_40;
            }

            v20 = v6;
          }

          swift_getKeyPath();
          v6 = swift_getKeyPath();
          sub_23DB6EF0C(&v116);

          KeyPath = v116;
          if (!v116)
          {
LABEL_50:

            v6 = v20;
            goto LABEL_59;
          }

          v3 = v116 & 0xFFFFFFFFFFFFFF8;
          v75 = a2;
          v76 = v15;
          v74 = v19;
          if (v116 >> 62)
          {
            goto LABEL_67;
          }

          v94 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:
          v92 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
          swift_beginAccess();
          v24 = 0;
          v93 = KeyPath & 0xC000000000000001;
          v90 = v3;
          v91 = (v88 + 2);
          ++v88;
          v15 = v91;
          while (1)
          {
            if (v94 == v24)
            {

              KeyPath = 0;
              goto LABEL_52;
            }

            if (v93)
            {
              v40 = MEMORY[0x23EEF70C0](v24, KeyPath);
              if (__OFADD__(v24, 1))
              {
LABEL_49:
                __break(1u);
                goto LABEL_50;
              }

              goto LABEL_45;
            }

            if (v24 >= *(v3 + 16))
            {
              break;
            }

            v40 = *(KeyPath + 8 * v24 + 32);

            if (__OFADD__(v24, 1))
            {
              goto LABEL_49;
            }

LABEL_45:
            v41 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
            swift_beginAccess();
            v42 = *v15;
            v43 = v95;
            a2 = v96;
            (*v15)(v96, v40 + v41, v95);
            v19 = KeyPath;
            v44 = v97;
            v42(v97, v98 + v92, v43);
            v22 = sub_23DB6EA6C();

            v6 = v88;
            v20 = *v88;
            v45 = v44;
            KeyPath = v19;
            (*v88)(v45, v43);
            v46 = v43;
            v3 = v90;
            v20(a2, v46);
            ++v24;
            if (v22)
            {

              KeyPath = v24 - 1;
LABEL_52:
              v6 = v89;
              v15 = v76;
              v22 = v114;
              goto LABEL_59;
            }
          }

          __break(1u);
          while (2)
          {
            v3 = v15;
            v20 = v6;
            MEMORY[0x23EEF70C0](0, v24);
LABEL_8:

            swift_getKeyPath();
            v6 = swift_getKeyPath();
            sub_23DB6EF0C(&v116);

            KeyPath = v116;
            if (!v116)
            {

              v6 = v20;
              v15 = v3;
              goto LABEL_29;
            }

            v15 = (v116 & 0xFFFFFFFFFFFFFF8);
            v75 = a2;
            v76 = v3;
            v73 = v22;
            v74 = v19;
            if (v116 >> 62)
            {
              v94 = sub_23DB70C3C();
            }

            else
            {
              v94 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v92 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
            swift_beginAccess();
            v24 = 0;
            v93 = KeyPath & 0xC000000000000001;
            v90 = v88 + 1;
            v91 = (v88 + 2);
            v19 = v95;
            while (2)
            {
              if (v94 == v24)
              {

                v19 = v74;

                KeyPath = 0;
                goto LABEL_24;
              }

              if (v93)
              {
                v6 = MEMORY[0x23EEF70C0](v24, KeyPath);
                if (__OFADD__(v24, 1))
                {
LABEL_20:
                  __break(1u);
                  goto LABEL_21;
                }

LABEL_16:
                v25 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
                swift_beginAccess();
                v26 = *v91;
                a2 = v96;
                (*v91)(v96, v6 + v25, v19);
                v22 = KeyPath;
                v27 = v97;
                v26(v97, v98 + v92, v19);
                v3 = sub_23DB6EA6C();

                v6 = v90;
                v20 = *v90;
                v28 = v27;
                KeyPath = v22;
                (*v90)(v28, v19);
                v20(a2, v19);
                ++v24;
                if (v3)
                {

                  v19 = v74;

                  KeyPath = v24 - 1;
LABEL_24:
                  v6 = v89;
                  a2 = v75;
                  v15 = v76;
                  goto LABEL_29;
                }

                continue;
              }

              break;
            }

            if (v24 < *(v15 + 2))
            {
              v6 = *(KeyPath + 8 * v24 + 32);

              if (__OFADD__(v24, 1))
              {
                goto LABEL_20;
              }

              goto LABEL_16;
            }

            __break(1u);
LABEL_26:
            if (!sub_23DB70C3C())
            {
              goto LABEL_27;
            }

LABEL_5:
            if ((v24 & 0xC000000000000001) != 0)
            {
              continue;
            }

            break;
          }

          if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v3 = v15;
            v20 = v6;

            goto LABEL_8;
          }

          __break(1u);
LABEL_56:
          ;
        }

        while (sub_23DB70C3C());
      }
    }

    KeyPath = 0;
LABEL_59:

    v47 = sub_23DABB420();

    if (KeyPath == v47)
    {
      v48 = (v98 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
      swift_beginAccess();
      v49 = *v48;
      v50 = v48[1];

      v51 = v77;
      sub_23DA62144(v49, v50, v77);

      v52 = v78;
      (*(v78 + 16))(v80, v51, v6);
      swift_storeEnumTagMultiPayload();
      v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FDD20, &qword_23DB79990);
      v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FDD28, &qword_23DB79998);
      v55 = sub_23DA6F8F4();
      v56 = sub_23DA17B80(&qword_27E2FDD78, &qword_27E2FDD28, &qword_23DB79998, MEMORY[0x277CE14C0]);
      *&v116 = v53;
      *(&v116 + 1) = v54;
      *&v117 = v55;
      *(&v117 + 1) = v56;
      swift_getOpaqueTypeConformance2();
      v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FDD80, &qword_23DB799C0);
      v58 = sub_23DA6FB48();
      *&v116 = v57;
      *(&v116 + 1) = v58;
      swift_getOpaqueTypeConformance2();
      v59 = v81;
      v60 = v89;
      sub_23DB6F79C();
      sub_23DA0E2B4(v59, v86, &qword_27E2FDD18, &qword_23DB79988);
      swift_storeEnumTagMultiPayload();
      sub_23DA6F790();
      sub_23DB6F79C();
      sub_23DA17988(v59, &qword_27E2FDD18, &qword_23DB79988);
      return (*(v52 + 8))(v51, v60);
    }

    swift_beginAccess();

    sub_23DA6277C(v114);

    v62 = *(v22 + 208);
    v111 = *(v22 + 192);
    v112 = v62;
    v113 = v115;
    v63 = *(v22 + 144);
    v107 = *(v22 + 128);
    v108 = v63;
    v64 = *(v22 + 176);
    v109 = *(v22 + 160);
    v110 = v64;
    v65 = *(v22 + 80);
    v103 = *(v22 + 64);
    v104 = v65;
    v66 = *(v22 + 112);
    v105 = *(v22 + 96);
    v106 = v66;
    v67 = *(v22 + 16);
    v99 = *v22;
    v100 = v67;
    v68 = *(v22 + 48);
    v101 = *(v22 + 32);
    v102 = v68;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDD20, &qword_23DB79990);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDD28, &qword_23DB79998);
    v71 = sub_23DA6F8F4();
    v72 = sub_23DA17B80(&qword_27E2FDD78, &qword_27E2FDD28, &qword_23DB79998, MEMORY[0x277CE14C0]);
    sub_23DB6FEFC();
    v128 = v111;
    v129 = v112;
    v130 = v113;
    v124 = v107;
    v125 = v108;
    v126 = v109;
    v127 = v110;
    v120 = v103;
    v121 = v104;
    v122 = v105;
    v123 = v106;
    v116 = v99;
    v117 = v100;
    v118 = v101;
    v119 = v102;
    sub_23DA17988(&v116, &qword_27E2FDD20, &qword_23DB79990);
    v34 = v82;
    v35 = v85;
    (*(v82 + 16))(v86, v15, v85);
    swift_storeEnumTagMultiPayload();
    sub_23DA6F790();
    *&v99 = v69;
    *(&v99 + 1) = v70;
    *&v100 = v71;
    *(&v100 + 1) = v72;
    swift_getOpaqueTypeConformance2();
    sub_23DB6F79C();
    return (*(v34 + 8))(v15, v35);
  }

  swift_beginAccess();

  sub_23DA6277C(v114);

  v111 = v114[12];
  v112 = v114[13];
  v113 = v115;
  v107 = v114[8];
  v108 = v114[9];
  v109 = v114[10];
  v110 = v114[11];
  v103 = v114[4];
  v104 = v114[5];
  v105 = v114[6];
  v106 = v114[7];
  v99 = v114[0];
  v100 = v114[1];
  v101 = v114[2];
  v102 = v114[3];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDD20, &qword_23DB79990);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDD28, &qword_23DB79998);
  v32 = sub_23DA6F8F4();
  v33 = sub_23DA17B80(&qword_27E2FDD78, &qword_27E2FDD28, &qword_23DB79998, MEMORY[0x277CE14C0]);
  sub_23DB6FEFC();
  v128 = v111;
  v129 = v112;
  v130 = v113;
  v124 = v107;
  v125 = v108;
  v126 = v109;
  v127 = v110;
  v120 = v103;
  v121 = v104;
  v122 = v105;
  v123 = v106;
  v116 = v99;
  v117 = v100;
  v118 = v101;
  v119 = v102;
  sub_23DA17988(&v116, &qword_27E2FDD20, &qword_23DB79990);
  v34 = v82;
  v35 = v85;
  (*(v82 + 16))(v80, v15, v85);
  swift_storeEnumTagMultiPayload();
  *&v99 = v30;
  *(&v99 + 1) = v31;
  *&v100 = v32;
  *(&v100 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FDD80, &qword_23DB799C0);
  v37 = sub_23DA6FB48();
  *&v99 = v36;
  *(&v99 + 1) = v37;
  swift_getOpaqueTypeConformance2();
  v38 = v81;
  sub_23DB6F79C();
  sub_23DA0E2B4(v38, v86, &qword_27E2FDD18, &qword_23DB79988);
  swift_storeEnumTagMultiPayload();
  sub_23DA6F790();
  sub_23DB6F79C();
  sub_23DA17988(v38, &qword_27E2FDD18, &qword_23DB79988);
  return (*(v34 + 8))(v15, v35);
}

uint64_t sub_23DA65798@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDE8, &qword_23DB79A00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  v23 = (*(*qword_27E30A6D8 + 304))(0xD00000000000001BLL, 0x800000023DB87B80);
  v24 = v7;
  sub_23DA16E70();
  v8 = sub_23DB6FD8C();
  v21 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *(v4 + 16);
  v15(v6, a1, v3);
  v16 = v22;
  *v22 = v8;
  v16[1] = v10;
  *(v16 + 16) = v12 & 1;
  v16[3] = v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDF0, &qword_23DB79A08);
  v15(v16 + *(v17 + 48), v6, v3);
  v18 = v21;
  sub_23DA6D470(v21, v10, v12 & 1);
  v19 = *(v4 + 8);

  v19(v6, v3);
  sub_23DA16EC4(v18, v10, v12 & 1);
}

uint64_t sub_23DA659C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDE8, &qword_23DB79A00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  v23 = (*(*qword_27E30A6D8 + 304))(0xD00000000000002DLL, 0x800000023DB87BD0);
  v24 = v7;
  sub_23DA16E70();
  v8 = sub_23DB6FD8C();
  v21 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *(v4 + 16);
  v15(v6, a1, v3);
  v16 = v22;
  *v22 = v8;
  v16[1] = v10;
  *(v16 + 16) = v12 & 1;
  v16[3] = v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDDF0, &qword_23DB79A08);
  v15(v16 + *(v17 + 48), v6, v3);
  v18 = v21;
  sub_23DA6D470(v21, v10, v12 & 1);
  v19 = *(v4 + 8);

  v19(v6, v3);
  sub_23DA16EC4(v18, v10, v12 & 1);
}

uint64_t sub_23DA65BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCC0, &qword_23DB79900);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCC8, &qword_23DB79908);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  *v15 = sub_23DB6F68C();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCD0, &qword_23DB79910);
  sub_23DA630C4(a1, &v15[*(v16 + 44)]);
  *v9 = sub_23DB6F68C();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCD8, &qword_23DB79918);
  sub_23DA642A0(a1, &v9[*(v17 + 44)]);
  sub_23DA0E2B4(v15, v12, &qword_27E2FDCC8, &qword_23DB79908);
  sub_23DA0E2B4(v9, v6, &qword_27E2FDCC0, &qword_23DB79900);
  sub_23DA0E2B4(v12, a2, &qword_27E2FDCC8, &qword_23DB79908);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCE0, &qword_23DB79920);
  sub_23DA0E2B4(v6, a2 + *(v18 + 48), &qword_27E2FDCC0, &qword_23DB79900);
  sub_23DA17988(v9, &qword_27E2FDCC0, &qword_23DB79900);
  sub_23DA17988(v15, &qword_27E2FDCC8, &qword_23DB79908);
  sub_23DA17988(v6, &qword_27E2FDCC0, &qword_23DB79900);
  return sub_23DA17988(v12, &qword_27E2FDCC8, &qword_23DB79908);
}

uint64_t sub_23DA65E38@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v20 = v1[2];
  v21 = v3;
  v22 = v1[4];
  v4 = v1[1];
  v18 = *v1;
  v19 = v4;
  KeyPath = swift_getKeyPath();
  *a1 = sub_23DB6F5BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDC98, &qword_23DB798D8);
  sub_23DA65BF8(&v18, a1 + *(v6 + 44));
  v7 = swift_allocObject();
  v8 = v21;
  *(v7 + 3) = v20;
  *(v7 + 4) = v8;
  *(v7 + 5) = v22;
  v9 = v19;
  *(v7 + 1) = v18;
  *(v7 + 2) = v9;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCA0, &qword_23DB798E0) + 36));
  *v10 = sub_23DA6F5A0;
  v10[1] = v7;
  v11 = swift_allocObject();
  v12 = v21;
  *(v11 + 3) = v20;
  *(v11 + 4) = v12;
  *(v11 + 5) = v22;
  v13 = v19;
  *(v11 + 1) = v18;
  *(v11 + 2) = v13;
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCA8, &qword_23DB798E8) + 36));
  *v14 = sub_23DA6F5F8;
  v14[1] = v11;
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB0, &qword_23DB798F0) + 36);
  *v15 = KeyPath;
  *(v15 + 8) = 0;
  sub_23DA51574(&v18, v17);
  return sub_23DA51574(&v18, v17);
}

void sub_23DA65FF8(uint64_t *a2@<X8>)
{
  v3 = sub_23DB7018C();
  sub_23DB6F13C();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t sub_23DA66038(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v6 = *(a2 + 24);
  v7 = v6;
  v8 = *(&v6 + 1);
  sub_23DA0E2B4(&v8, &v5, &qword_27E2FE100, &qword_23DB79F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  v3 = v5;
  if (v5 <= v2)
  {
    v3 = v2;
  }

  v6 = v7;
  v5 = v3;
  sub_23DB7039C();
  return sub_23DA17988(&v7, &qword_27E2FDCB8, &qword_23DB798F8);
}

uint64_t sub_23DA66104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0A8, &qword_23DB79EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v49 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v73);

  v9 = v73;
  v10 = (a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v11 = v10[1];
  v52 = *v10;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v73);

  v61 = v73;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v73);

  v12 = v73;
  if (v73)
  {
    if (v73 >> 62)
    {
      v60 = sub_23DB70C3C();
    }

    else
    {
      v60 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v60 = 0;
  }

  v63 = v12 == 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v73);

  v59 = v73;
  v111[0] = *v2;
  v13 = *(v2 + 8);
  v109 = *(v2 + 24);
  v110 = v13;
  v14 = swift_allocObject();
  v15 = *(v2 + 16);
  *(v14 + 16) = *v2;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v2 + 32);
  *(v14 + 56) = a1;
  sub_23DA0E2B4(v111, &v73, &qword_27E2FDCF0, &qword_23DB830A0);

  sub_23DA0E2B4(&v110, &v73, &qword_27E2FE108, &qword_23DB79F98);
  sub_23DA0E2B4(&v109, &v73, &qword_27E2FDCB8, &qword_23DB798F8);
  *a2 = sub_23DB6F68C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  if (*(&v9 + 1))
  {
    v16 = v9;
  }

  else
  {
    v16 = 0x6761702E6B6F6F62;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_23DA712B0;
  *(v17 + 24) = v14;

  v55 = v14;

  v18 = sub_23DB6FB5C();
  sub_23DB6EFAC();
  v101 = 0;
  *&v73 = v16;
  *(&v73 + 1) = v9;
  *&v74 = sub_23DA713C0;
  *(&v74 + 1) = v17;
  LOBYTE(v75) = 0;
  BYTE8(v75) = v18;
  *&v76 = v19;
  *(&v76 + 1) = v20;
  *&v77 = v21;
  *(&v77 + 1) = v22;
  v78 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAD0, &qword_23DB793E0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23DB73BA0;
  v24 = v52;
  *(v23 + 32) = v52;
  *(v23 + 40) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0D0, &qword_23DB79F28);
  v54 = *(&v9 + 1);
  sub_23DA71170();
  v51 = v2;
  sub_23DA16E70();
  sub_23DB6FFFC();

  v94[2] = v75;
  v94[3] = v76;
  v94[4] = v77;
  v95 = v78;
  v94[0] = v73;
  v94[1] = v74;
  sub_23DA17988(v94, &qword_27E2FE0D0, &qword_23DB79F28);
  v57 = sub_23DB6F68C();
  v92 = 1;
  KeyPath = swift_getKeyPath();
  v97 = v63;
  v96 = 0;
  v56 = v92;
  v73 = v109;

  v53 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  sub_23DB7061C();
  v25 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0E8, &qword_23DB79F30) + 44);
  sub_23DB6F34C();
  *&v93[55] = v105;
  *&v93[71] = v106;
  *&v93[87] = v107;
  *&v93[103] = v108;
  *&v93[7] = v102;
  *&v93[23] = v103;
  *&v93[39] = v104;
  v26 = sub_23DB7062C();
  v50 = v26;
  v28 = v27;
  v29 = swift_allocObject();
  v30 = v51;
  v31 = v51[1];
  *(v29 + 16) = *v51;
  *(v29 + 32) = v31;
  *(v29 + 48) = *(v30 + 4);
  v32 = v62;
  sub_23DA0E2B4(v64, v62, &qword_27E2FE0A8, &qword_23DB79EC0);
  sub_23DA0E2B4(v32, v25, &qword_27E2FE0A8, &qword_23DB79EC0);
  v33 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0F0, &qword_23DB79F38) + 48);
  v65 = v57;
  LOBYTE(v66) = v56;
  *(&v66 + 1) = *v100;
  DWORD1(v66) = *&v100[3];
  v34 = v53;
  *(&v66 + 1) = v24;
  *v67 = v53;
  v35 = *(&v61 + 1);
  *&v67[8] = v61;
  *&v67[24] = v60;
  LOBYTE(v68) = v63;
  BYTE1(v68) = v59;
  *(&v68 + 2) = v98;
  WORD3(v68) = v99;
  *(&v68 + 1) = KeyPath;
  LOBYTE(v69[0]) = 0;
  *&v69[7] = *&v93[111];
  *(&v69[6] + 1) = *&v93[96];
  *(&v69[4] + 1) = *&v93[64];
  *(&v69[5] + 1) = *&v93[80];
  *(v69 + 1) = *v93;
  *(&v69[1] + 1) = *&v93[16];
  *(&v69[2] + 1) = *&v93[32];
  *(&v69[3] + 1) = *&v93[48];
  *(&v69[7] + 1) = sub_23DA65FF8;
  *&v70 = 0;
  *(&v70 + 1) = v26;
  *&v71 = v28;
  *(&v71 + 1) = sub_23DA7137C;
  v72 = v29;
  v36 = v69[7];
  v37 = v70;
  v38 = v71;
  *(v33 + 240) = v29;
  *(v33 + 208) = v37;
  *(v33 + 224) = v38;
  *(v33 + 192) = v36;
  v39 = v65;
  v40 = v66;
  v41 = *&v67[16];
  *(v33 + 32) = *v67;
  *(v33 + 48) = v41;
  *v33 = v39;
  *(v33 + 16) = v40;
  v42 = v68;
  v43 = v69[0];
  v44 = v69[2];
  *(v33 + 96) = v69[1];
  *(v33 + 112) = v44;
  *(v33 + 64) = v42;
  *(v33 + 80) = v43;
  v45 = v69[3];
  v46 = v69[4];
  v47 = v69[6];
  *(v33 + 160) = v69[5];
  *(v33 + 176) = v47;
  *(v33 + 128) = v45;
  *(v33 + 144) = v46;
  sub_23DA0E2B4(v111, &v73, &qword_27E2FDCF0, &qword_23DB830A0);
  sub_23DA0E2B4(&v110, &v73, &qword_27E2FE108, &qword_23DB79F98);
  sub_23DA0E2B4(&v109, &v73, &qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DA0E2B4(&v65, &v73, &qword_27E2FE0F8, &qword_23DB79F40);
  sub_23DA17988(v64, &qword_27E2FE0A8, &qword_23DB79EC0);
  v83 = *&v93[64];
  v84 = *&v93[80];
  *v85 = *&v93[96];
  v79 = *v93;
  v80 = *&v93[16];
  v81 = *&v93[32];
  v73 = v57;
  LOBYTE(v74) = v56;
  *(&v74 + 1) = *v100;
  DWORD1(v74) = *&v100[3];
  *(&v74 + 1) = v24;
  *&v75 = v34;
  *(&v75 + 1) = v61;
  *&v76 = v35;
  *(&v76 + 1) = v60;
  LOBYTE(v77) = v63;
  BYTE1(v77) = v59;
  *(&v77 + 2) = v98;
  WORD3(v77) = v99;
  *(&v77 + 1) = KeyPath;
  v78 = 0;
  v82 = *&v93[48];
  *&v85[15] = *&v93[111];
  v86 = sub_23DA65FF8;
  v87 = 0;
  v88 = v50;
  v89 = v28;
  v90 = sub_23DA7137C;
  v91 = v29;
  sub_23DA17988(&v73, &qword_27E2FE0F8, &qword_23DB79F40);
  sub_23DA17988(v62, &qword_27E2FE0A8, &qword_23DB79EC0);
}

uint64_t sub_23DA66AD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v99 = a1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0A0, &qword_23DB79EB8);
  v3 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0A8, &qword_23DB79EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v102 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0B0, &qword_23DB79EC8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v103 = (&v77 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0B8, &qword_23DB79ED0);
  MEMORY[0x28223BE20](v17 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v77 - v20;
  v22 = *(v2 + 8);
  if (v22)
  {
    v96 = v19;
    v97 = v8;

    v23 = sub_23DABBCD4();

    v98 = v5;
    v101 = v21;
    if (v23)
    {
      v83 = v2;
      v84 = v15;
      v95 = v11;
      v85 = v14;
      v86 = v3;
      if (qword_27E2FBBF0 != -1)
      {
        swift_once();
      }

      v24 = (*(*qword_27E30A6D8 + 304))(0xD000000000000026, 0x800000023DB87C00);
      v26 = v25;
      v27 = v23;
      v28 = (v23 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
      swift_beginAccess();
      v29 = v28[1];
      v92 = *v28;
      v94 = v29;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C(&v113);

      v91 = v113;
      v2 = v83;
      v143[0] = *v83;
      v142 = *(v83 + 24);
      v30 = swift_allocObject();
      v31 = *(v2 + 16);
      *(v30 + 16) = *v2;
      *(v30 + 32) = v31;
      *(v30 + 48) = *(v2 + 32);
      *(v30 + 56) = v27;

      sub_23DA0E2B4(v143, &v113, &qword_27E2FDCF0, &qword_23DB830A0);
      sub_23DA0E2B4(&v142, &v113, &qword_27E2FDCB8, &qword_23DB798F8);
      v82 = v27;

      v32 = sub_23DB6F68C();
      v33 = v103;
      *v103 = v32;
      v33[1] = 0;
      *(v33 + 16) = 1;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_23DA713D4;
      *(v34 + 24) = v30;
      v81 = v30;

      v35 = sub_23DB6FB5C();
      v80 = v22;
      v36 = v35;
      sub_23DB6EFAC();
      LOBYTE(v104) = 0;
      *&v113 = 0x7269632E79616C70;
      *(&v113 + 1) = 0xEB00000000656C63;
      *&v114 = sub_23DA71148;
      *(&v114 + 1) = v34;
      LOBYTE(v115) = 1;
      BYTE8(v115) = v36;
      *&v116 = v37;
      *(&v116 + 1) = v38;
      *&v117 = v39;
      *(&v117 + 1) = v40;
      v118 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAD0, &qword_23DB793E0);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_23DB73BA0;
      v93 = v24;
      *(v41 + 32) = v24;
      *(v41 + 40) = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0D0, &qword_23DB79F28);
      sub_23DA71170();
      sub_23DA16E70();
      sub_23DB6FFFC();

      v134[2] = v115;
      v134[3] = v116;
      v134[4] = v117;
      v135 = v118;
      v134[0] = v113;
      v134[1] = v114;
      sub_23DA17988(v134, &qword_27E2FE0D0, &qword_23DB79F28);
      v89 = sub_23DB6F68C();
      v132 = 1;
      KeyPath = swift_getKeyPath();
      LOBYTE(v140) = 1;
      v136 = 0;
      v88 = v132;
      v113 = v142;

      v87 = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
      sub_23DB7038C();
      sub_23DB7061C();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0E8, &qword_23DB79F30);
      v43 = v103 + *(v42 + 44);
      sub_23DB6F34C();
      *(&v133[3] + 7) = v141[3];
      *(&v133[4] + 7) = v141[4];
      *(&v133[5] + 7) = v141[5];
      *(&v133[6] + 7) = v141[6];
      *(v133 + 7) = v141[0];
      *(&v133[1] + 7) = v141[1];
      *(&v133[2] + 7) = v141[2];
      v44 = sub_23DB7062C();
      v78 = v45;
      v79 = v44;
      v46 = v45;
      v47 = swift_allocObject();
      v48 = *(v2 + 16);
      *(v47 + 16) = *v2;
      *(v47 + 32) = v48;
      *(v47 + 48) = *(v2 + 32);
      v49 = v95;
      sub_23DA0E2B4(v102, v95, &qword_27E2FE0A8, &qword_23DB79EC0);
      sub_23DA0E2B4(v49, v43, &qword_27E2FE0A8, &qword_23DB79EC0);
      v50 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0F0, &qword_23DB79F38) + 48);
      v104 = v89;
      LOBYTE(v105) = v88;
      *(&v105 + 1) = *v139;
      DWORD1(v105) = *&v139[3];
      v51 = v94;
      *(&v105 + 1) = v93;
      *&v106 = v87;
      *(&v106 + 1) = v92;
      v107 = v94;
      LOBYTE(v108) = 1;
      BYTE1(v108) = v91;
      *(&v108 + 2) = v137;
      WORD3(v108) = v138;
      *(&v108 + 1) = KeyPath;
      LOBYTE(v109[0]) = 0;
      *&v109[7] = *(&v133[6] + 15);
      *(&v109[6] + 1) = v133[6];
      *(&v109[4] + 1) = v133[4];
      *(&v109[5] + 1) = v133[5];
      *(v109 + 1) = v133[0];
      *(&v109[1] + 1) = v133[1];
      *(&v109[2] + 1) = v133[2];
      *(&v109[3] + 1) = v133[3];
      *(&v109[7] + 1) = sub_23DA65FF8;
      *&v110 = 0;
      *(&v110 + 1) = v44;
      *&v111 = v46;
      *(&v111 + 1) = sub_23DA71250;
      v112 = v47;
      v52 = v109[7];
      v53 = v110;
      v54 = v111;
      *(v50 + 240) = v47;
      *(v50 + 208) = v53;
      *(v50 + 224) = v54;
      *(v50 + 192) = v52;
      v55 = v104;
      v56 = v105;
      v57 = v107;
      *(v50 + 32) = v106;
      *(v50 + 48) = v57;
      *v50 = v55;
      *(v50 + 16) = v56;
      v58 = v108;
      v59 = v109[0];
      v60 = v109[2];
      *(v50 + 96) = v109[1];
      *(v50 + 112) = v60;
      *(v50 + 64) = v58;
      *(v50 + 80) = v59;
      v61 = v109[3];
      v62 = v109[4];
      v63 = v109[6];
      *(v50 + 160) = v109[5];
      *(v50 + 176) = v63;
      *(v50 + 128) = v61;
      *(v50 + 144) = v62;

      sub_23DA0E2B4(v143, &v113, &qword_27E2FDCF0, &qword_23DB830A0);
      sub_23DA0E2B4(&v142, &v113, &qword_27E2FDCB8, &qword_23DB798F8);
      sub_23DA0E2B4(&v104, &v113, &qword_27E2FE0F8, &qword_23DB79F40);
      sub_23DA17988(v102, &qword_27E2FE0A8, &qword_23DB79EC0);
      v123 = v133[4];
      v124 = v133[5];
      *v125 = v133[6];
      v119 = v133[0];
      v120 = v133[1];
      v121 = v133[2];
      v113 = v89;
      LOBYTE(v114) = v88;
      *(&v114 + 1) = *v139;
      DWORD1(v114) = *&v139[3];
      *(&v114 + 1) = v93;
      *&v115 = v87;
      *(&v115 + 1) = v92;
      v116 = v51;
      LOBYTE(v117) = 1;
      BYTE1(v117) = v91;
      *(&v117 + 2) = v137;
      WORD3(v117) = v138;
      *(&v117 + 1) = KeyPath;
      v118 = 0;
      v122 = v133[3];
      *&v125[15] = *(&v133[6] + 15);
      v126 = sub_23DA65FF8;
      v127 = 0;
      v128 = v79;
      v129 = v78;
      v130 = sub_23DA71250;
      v131 = v47;
      sub_23DA17988(&v113, &qword_27E2FE0F8, &qword_23DB79F40);
      sub_23DA17988(v95, &qword_27E2FE0A8, &qword_23DB79EC0);

      v21 = v101;
      sub_23DA17A54(v103, v101, &qword_27E2FE0B0, &qword_23DB79EC8);
      (*(v84 + 56))(v21, 0, 1, v85);
      v3 = v86;
    }

    else
    {
      (*(v15 + 56))(v21, 1, 1, v14);
    }

    *&v134[0] = *v2;
    v140 = *&v134[0];
    swift_getKeyPath();
    v113 = *(v2 + 24);
    v64 = swift_allocObject();
    v65 = *(v2 + 16);
    *(v64 + 16) = *v2;
    *(v64 + 32) = v65;
    *(v64 + 48) = *(v2 + 32);
    sub_23DA0E2B4(v134, &v104, &qword_27E2FDCF0, &qword_23DB830A0);

    sub_23DA0E2B4(v134, &v104, &qword_27E2FDCF0, &qword_23DB830A0);
    sub_23DA0E2B4(&v113, &v104, &qword_27E2FDCB8, &qword_23DB798F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCF0, &qword_23DB830A0);
    sub_23DA17B80(&qword_27E2FDD00, &qword_27E2FDCF0, &qword_23DB830A0, MEMORY[0x277D83980]);
    sub_23DA6CEEC(&qword_27E2FE020, type metadata accessor for Page, &protocol conformance descriptor for Page);
    sub_23DA17B80(&qword_27E2FE0C0, &qword_27E2FE0B0, &qword_23DB79EC8, MEMORY[0x277CE1198]);
    v66 = v97;
    sub_23DB704FC();
    v67 = v21;
    v68 = v96;
    sub_23DA0E2B4(v67, v96, &qword_27E2FE0B8, &qword_23DB79ED0);
    v69 = *(v3 + 16);
    v70 = v98;
    v71 = v3;
    v72 = v100;
    v69(v98, v66, v100);
    v73 = v99;
    sub_23DA0E2B4(v68, v99, &qword_27E2FE0B8, &qword_23DB79ED0);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE0C8, &qword_23DB79ED8);
    v69((v73 + *(v74 + 48)), v70, v72);
    v75 = *(v71 + 8);
    v75(v66, v72);
    sub_23DA17988(v101, &qword_27E2FE0B8, &qword_23DB79ED0);
    v75(v70, v72);
    return sub_23DA17988(v68, &qword_27E2FE0B8, &qword_23DB79ED0);
  }

  else
  {
    type metadata accessor for NavigationModel(0);
    sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DA678CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v5);

    if (LOBYTE(v5[0]) == 1)
    {

      v3 = a2;
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v3 = sub_23DAC6C5C(0, a2);
      }

      else
      {
        v3 = 0;
      }
    }

    NavigationModel.updateSelectedPage(_:)(v3);
  }

  else
  {
    type metadata accessor for NavigationModel(0);
    sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

double sub_23DA67A44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = a4;
  v39 = sub_23DB6F5BC();
  v43 = 1;
  sub_23DA67D30(a1, a2, a3, v13, a5, a6, a7, a8, __src);
  memcpy(__dst, __src, 0x271uLL);
  memcpy(v47, __src, 0x271uLL);
  sub_23DA0E2B4(__dst, v40, &qword_27E2FDFD0, &qword_23DB79C18);
  sub_23DA17988(v47, &qword_27E2FDFD0, &qword_23DB79C18);
  memcpy(&v42[7], __dst, 0x271uLL);
  LOBYTE(a6) = v43;
  sub_23DB7063C();
  sub_23DB6F34C();
  *&v44[55] = *&__src[48];
  *&v44[71] = *&__src[64];
  *&v44[87] = *&__src[80];
  *&v44[103] = *&__src[96];
  *&v44[7] = *__src;
  *&v44[23] = *&__src[16];
  *&v44[39] = *&__src[32];
  LOBYTE(a8) = sub_23DB6FB9C();
  sub_23DB6EFAC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v45 = 0;
  v26 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF68, &qword_23DB79BD0) + 36));
  v27 = *(sub_23DB6F32C() + 20);
  v28 = *MEMORY[0x277CE0118];
  v29 = sub_23DB6F63C();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  __asm { FMOV            V0.2D, #8.0 }

  *v26 = _Q0;
  v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC0, &unk_23DB793D0) + 36)] = 0;
  *a9 = v39;
  *(a9 + 8) = 0;
  *(a9 + 16) = a6;
  memcpy((a9 + 17), v42, 0x278uLL);
  v35 = *&v44[80];
  *(a9 + 713) = *&v44[64];
  *(a9 + 729) = v35;
  *(a9 + 745) = *&v44[96];
  *(a9 + 760) = *&v44[111];
  v36 = *&v44[16];
  *(a9 + 649) = *v44;
  *(a9 + 665) = v36;
  result = *&v44[32];
  v38 = *&v44[48];
  *(a9 + 681) = *&v44[32];
  *(a9 + 697) = v38;
  *(a9 + 768) = a8;
  *(a9 + 772) = *(v40 + 3);
  *(a9 + 769) = v40[0];
  *(a9 + 776) = v19;
  *(a9 + 784) = v21;
  *(a9 + 792) = v23;
  *(a9 + 800) = v25;
  *(a9 + 808) = 0;
  return result;
}

uint64_t sub_23DA67D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v54 = a7;
  v55 = a8;
  v52 = a5;
  v53 = a6;
  v48 = a4;
  v58 = a9;
  v59 = a2;
  v11 = sub_23DB702CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23DB6F25C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for SubPageCompactButtonsView(0) + 28);
  v57 = a1;
  v50 = v19;
  sub_23DB330E8();
  LOBYTE(a1) = sub_23DB6F24C();
  v20 = *(v16 + 8);
  v56 = v15;
  v51 = v16 + 8;
  v49 = v20;
  v20(v18, v15);
  if (a1)
  {
    v21 = v48;
    sub_23DA7075C(&v104);
  }

  else
  {
    v47 = a3;

    sub_23DB702DC();
    (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v11);
    v22 = sub_23DB702EC();

    (*(v12 + 8))(v14, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC8, &qword_23DB7C380);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_23DB78D60;
    v21 = v48;
    if (v48)
    {
      *(v23 + 32) = sub_23DB701AC();
      v24 = sub_23DB701AC();
    }

    else
    {
      if (qword_27E2FBBC0 != -1)
      {
        swift_once();
      }

      *(v23 + 32) = qword_27E30A698;
      v25 = qword_27E2FBBC8;

      if (v25 != -1)
      {
        swift_once();
      }
    }

    *(v23 + 40) = v24;
    sub_23DB7071C();
    sub_23DB7070C();
    MEMORY[0x23EEF6910](v23);
    sub_23DB6F1DC();
    v26 = v101;
    v99[0] = 1;
    sub_23DB7062C();
    sub_23DB6F10C();
    v27 = sub_23DB6FB2C();
    v100[0] = 1;
    *v82 = v22;
    *&v82[8] = 0;
    *&v82[16] = 1;
    *&v82[24] = v26;
    *&v82[48] = v103;
    *&v82[32] = v102;
    *&v82[64] = *v74;
    *&v82[80] = *&v74[16];
    *&v82[96] = *&v74[32];
    v82[112] = v27;
    memset(&v82[120], 0, 32);
    v82[152] = 1;
    nullsub_1();
    v110 = *&v82[96];
    v111 = *&v82[112];
    v112[0] = *&v82[128];
    *(v112 + 9) = *&v82[137];
    v106 = *&v82[32];
    v107 = *&v82[48];
    v108 = *&v82[64];
    v109 = *&v82[80];
    v104 = *v82;
    v105 = *&v82[16];
  }

  v59 = sub_23DB6F68C();
  v95 = 1;
  sub_23DA68694(v53, v21 & 1, v54, v55, v82);
  memcpy(v99, v82, 0x139uLL);
  memcpy(v100, v82, 0x139uLL);
  sub_23DA0E2B4(v99, v74, &qword_27E2FDFD8, &qword_23DB79C20);
  sub_23DA17988(v100, &qword_27E2FDFD8, &qword_23DB79C20);
  memcpy(&v94[7], v99, 0x139uLL);
  v28 = v95;
  LODWORD(v55) = sub_23DB6FB6C();
  sub_23DB330E8();
  v29 = sub_23DB6F24C();
  v49(v18, v56);
  if ((v29 & 1) != 0 && qword_27E2FBC10 != -1)
  {
    swift_once();
  }

  sub_23DB6EFAC();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v96 = 0;
  v57 = sub_23DB702DC();
  if (v21)
  {
    v38 = sub_23DB701AC();
  }

  else
  {
    v38 = sub_23DB7021C();
  }

  v56 = v38;
  v39 = sub_23DB6FB8C();
  v93 = 1;
  v69 = v110;
  v70 = v111;
  v71[0] = v112[0];
  *(v71 + 9) = *(v112 + 9);
  v65 = v106;
  v66 = v107;
  v67 = v108;
  v68 = v109;
  v63 = v104;
  v64 = v105;
  v72[6] = v110;
  v72[7] = v111;
  v73[0] = v112[0];
  *(v73 + 9) = *(v112 + 9);
  v72[2] = v106;
  v72[3] = v107;
  v72[4] = v108;
  v72[5] = v109;
  v72[0] = v104;
  v72[1] = v105;
  v62[6] = v110;
  v62[7] = v111;
  v62[8] = v112[0];
  *(&v62[8] + 9) = *(v112 + 9);
  v62[2] = v106;
  v62[3] = v107;
  v62[4] = v108;
  v62[5] = v109;
  v62[0] = v104;
  v62[1] = v105;
  *v74 = v59;
  *&v74[8] = 0;
  v74[16] = v28;
  memcpy(&v74[17], v94, 0x140uLL);
  *&v74[337] = *v98;
  *&v74[340] = *&v98[3];
  LODWORD(v54) = v28;
  v40 = v55;
  v74[344] = v55;
  *&v74[345] = *v97;
  *&v74[348] = *&v97[3];
  *&v74[352] = v31;
  *&v74[360] = v33;
  *&v74[368] = v35;
  *&v74[376] = v37;
  v74[384] = 0;
  memcpy(&v62[10], v74, 0x181uLL);
  v42 = v56;
  v41 = v57;
  *&v75 = v57;
  *(&v75 + 1) = v56;
  LOBYTE(v76[0]) = v39;
  *(v76 + 8) = 0u;
  *(v60 + 7) = v75;
  v61 = 1;
  *(&v76[1] + 8) = 0u;
  BYTE8(v76[2]) = 1;
  *(&v60[1] + 7) = v76[0];
  *(&v60[2] + 7) = v76[1];
  v60[3] = *(&v76[1] + 9);
  v43 = v58;
  memcpy(v58, v62, 0x228uLL);
  *(v43 + 69) = 0;
  v43[560] = 1;
  v44 = v60[1];
  *(v43 + 561) = v60[0];
  *(v43 + 577) = v44;
  v45 = v60[3];
  *(v43 + 593) = v60[2];
  *(v43 + 609) = v45;
  v77[0] = v41;
  v77[1] = v42;
  v78 = v39;
  v79 = 0u;
  v80 = 0u;
  v81 = 1;
  sub_23DA0E2B4(v72, v82, &qword_27E2FDFE0, &qword_23DB79C28);
  sub_23DA0E2B4(v74, v82, &qword_27E2FDFE8, &qword_23DB79C30);
  sub_23DA0E2B4(&v75, v82, &qword_27E2FDFF0, &qword_23DB79C38);
  sub_23DA17988(v77, &qword_27E2FDFF0, &qword_23DB79C38);
  *v82 = v59;
  *&v82[8] = 0;
  v82[16] = v54;
  memcpy(&v82[17], v94, 0x140uLL);
  *v83 = *v98;
  *&v83[3] = *&v98[3];
  v84 = v40;
  *v85 = *v97;
  *&v85[3] = *&v97[3];
  v86 = v31;
  v87 = v33;
  v88 = v35;
  v89 = v37;
  v90 = 0;
  sub_23DA17988(v82, &qword_27E2FDFE8, &qword_23DB79C30);
  v91[6] = v69;
  v91[7] = v70;
  v92[0] = v71[0];
  *(v92 + 9) = *(v71 + 9);
  v91[2] = v65;
  v91[3] = v66;
  v91[4] = v67;
  v91[5] = v68;
  v91[0] = v63;
  v91[1] = v64;
  return sub_23DA17988(v91, &qword_27E2FDFE0, &qword_23DB79C28);
}

uint64_t sub_23DA68694@<X0>(uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  *&v56 = a6;
  *(&v56 + 1) = a7;
  v63 = a5;
  v61 = a4;
  v62 = a8;
  v8 = sub_23DB6F60C();
  MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v10 = sub_23DB6F25C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SubPageCompactButtonsView(0);
  sub_23DB330E8();
  v14 = sub_23DB6F24C();
  (*(v11 + 8))(v13, v10);
  sub_23DB6F5FC();
  sub_23DB6F5EC();
  if (v14)
  {

    sub_23DB702DC();
    sub_23DB6F5CC();

    sub_23DB6F5EC();
  }

  sub_23DB6F5DC();
  sub_23DB6F5EC();
  sub_23DB6F62C();
  v15 = sub_23DB6FD6C();
  v17 = v16;
  v19 = v18;
  if (v63)
  {
    sub_23DB701AC();
  }

  else
  {
    sub_23DB7020C();
  }

  v20 = sub_23DB6FCDC();
  v22 = v21;
  v24 = v23;

  sub_23DA16EC4(v15, v17, v19 & 1);

  v25 = v63;
  v26 = sub_23DB6FD2C();
  v59 = v27;
  v60 = v26;
  v29 = v28;
  v61 = v30;
  sub_23DA16EC4(v20, v22, v24 & 1);

  sub_23DB7063C();
  sub_23DB6F34C();
  v57 = v29 & 1;
  v111 = v29 & 1;
  KeyPath = swift_getKeyPath();
  if (*(&v56 + 1))
  {
    v94 = v56;
    sub_23DA16E70();

    v31 = sub_23DB6FD8C();
    v33 = v32;
    v35 = v34;
    if (v25)
    {
      sub_23DB701AC();
    }

    else
    {
      sub_23DB7020C();
    }

    v36 = sub_23DB6FCDC();
    v38 = v37;
    v40 = v39;

    sub_23DA16EC4(v31, v33, v35 & 1);

    sub_23DB6FC5C();
    v41 = sub_23DB6FD3C();
    v43 = v42;
    v45 = v44;
    v47 = v46;

    sub_23DA16EC4(v36, v38, v40 & 1);

    sub_23DB7063C();
    sub_23DB6F34C();
    LOBYTE(v74[0]) = v45 & 1;
    v48 = swift_getKeyPath();
    *&v85 = v41;
    *(&v85 + 1) = v43;
    LOBYTE(v86) = v45 & 1;
    *(&v86 + 1) = v47;
    v91 = v80;
    v92 = v81;
    v93[0] = v82;
    v87 = v76;
    v88 = v77;
    v89 = v78;
    v90 = v79;
    *&v93[1] = v48;
    BYTE8(v93[1]) = 0;
    nullsub_1();
    v100 = v91;
    v101 = v92;
    v102[0] = v93[0];
    *(v102 + 9) = *(v93 + 9);
    v96 = v87;
    v97 = v88;
    v98 = v89;
    v99 = v90;
    v94 = v85;
    v95 = v86;
  }

  else
  {
    sub_23DA7075C(&v94);
  }

  v82 = v100;
  v83 = v101;
  v84[0] = v102[0];
  *(v84 + 9) = *(v102 + 9);
  v78 = v96;
  v79 = v97;
  v80 = v98;
  v81 = v99;
  v76 = v94;
  v77 = v95;
  v50 = v59;
  v49 = v60;
  *&v65 = v60;
  *(&v65 + 1) = v59;
  v51 = v57;
  LOBYTE(v66) = v57;
  *(&v66 + 1) = *v110;
  DWORD1(v66) = *&v110[3];
  v52 = v61;
  *(&v66 + 1) = v61;
  v71 = v107;
  v72 = v108;
  v73[0] = v109;
  v67 = v103;
  v68 = v104;
  v69 = v105;
  v70 = v106;
  v53 = KeyPath;
  *&v73[1] = KeyPath;
  BYTE8(v73[1]) = 0;
  v64[6] = v107;
  v64[7] = v108;
  v64[8] = v109;
  v64[2] = v103;
  v64[3] = v104;
  v64[4] = v105;
  v64[5] = v106;
  v64[0] = v65;
  v64[1] = v66;
  *(&v64[8] + 9) = *(v73 + 9);
  v74[6] = v100;
  v74[7] = v101;
  v75[0] = v102[0];
  *(v75 + 9) = *(v102 + 9);
  v74[2] = v96;
  v74[3] = v97;
  v74[4] = v98;
  v74[5] = v99;
  v74[0] = v94;
  v74[1] = v95;
  *(&v64[18] + 9) = *(v102 + 9);
  v64[17] = v101;
  v64[18] = v102[0];
  v64[13] = v97;
  v64[14] = v98;
  v64[15] = v99;
  v64[16] = v100;
  v64[10] = v94;
  v64[11] = v95;
  v64[12] = v96;
  memcpy(v62, v64, 0x139uLL);
  sub_23DA0E2B4(&v65, &v85, &qword_27E2FDFF8, &qword_23DB79C40);
  sub_23DA0E2B4(v74, &v85, &qword_27E2FE000, &qword_23DB79C48);
  sub_23DA17988(&v76, &qword_27E2FE000, &qword_23DB79C48);
  *&v85 = v49;
  *(&v85 + 1) = v50;
  LOBYTE(v86) = v51;
  *(&v86 + 1) = *v110;
  DWORD1(v86) = *&v110[3];
  *(&v86 + 1) = v52;
  v91 = v107;
  v92 = v108;
  v93[0] = v109;
  v87 = v103;
  v88 = v104;
  v89 = v105;
  v90 = v106;
  *&v93[1] = v53;
  BYTE8(v93[1]) = 0;
  return sub_23DA17988(&v85, &qword_27E2FDFF8, &qword_23DB79C40);
}

uint64_t sub_23DA68E20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF20, &qword_23DB79B80);
  MEMORY[0x28223BE20](v109);
  v5 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v104 = (v89 - v7);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF28, &qword_23DB79B88);
  MEMORY[0x28223BE20](v101);
  v102 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v97 = v89 - v10;
  v96 = sub_23DB6F31C();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF30, &qword_23DB79B90);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = v89 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF38, &qword_23DB79B98);
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v112 = v89 - v15;
  v16 = type metadata accessor for SubPageCompactButtonsView(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF40, &qword_23DB79BA0);
  v105 = *(v20 - 8);
  v106 = v20;
  MEMORY[0x28223BE20](v20);
  v111 = (v89 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF48, &qword_23DB79BA8);
  MEMORY[0x28223BE20](v22 - 8);
  v108 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v107 = v89 - v25;
  if (a1[1])
  {

    v26 = sub_23DABBCD4();

    __asm { FMOV            V0.2D, #8.0 }

    v110 = a2;
    v113 = _Q0;
    if (v26)
    {
      v32 = v26;
      v90 = v5;
      if (qword_27E2FBBF0 != -1)
      {
        swift_once();
      }

      v89[0] = (*(*qword_27E30A6D8 + 304))(0xD000000000000026, 0x800000023DB87C00);
      v34 = v33;
      v89[2] = v33;
      v35 = (v32 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
      swift_beginAccess();
      v36 = *v35;
      v37 = v35[1];
      sub_23DA6D398(a1, v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SubPageCompactButtonsView);
      v38 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v39 = (v18 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      sub_23DA6E464(v19, v40 + v38, type metadata accessor for SubPageCompactButtonsView);
      v89[4] = v32;
      *(v40 + v39) = v32;
      v89[3] = v37;

      v41 = sub_23DB6F68C();
      v42 = v111;
      *v111 = v41;
      v42[1] = 0;
      *(v42 + 16) = 1;
      v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF60, &qword_23DB79BC8) + 44);
      v44 = swift_allocObject();
      v103 = a1;
      *(v44 + 16) = sub_23DA713B0;
      *(v44 + 24) = v40;
      v89[1] = v40;
      MEMORY[0x28223BE20](v44);
      v89[-8] = v103;
      *&v89[-7] = xmmword_23DB78D70;
      LOBYTE(v89[-5]) = 1;
      v89[-4] = v89[0];
      v89[-3] = v34;
      v89[-2] = v36;
      v89[-1] = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF68, &qword_23DB79BD0);
      sub_23DA70560();
      v45 = v91;
      sub_23DB703CC();
      v46 = v94;
      sub_23DB6F30C();
      sub_23DA17B80(&qword_27E2FDFA8, &qword_27E2FDF30, &qword_23DB79B90, MEMORY[0x277CDF028]);
      sub_23DA6CEEC(&qword_27E2FD1D0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
      v47 = v112;
      v48 = v93;
      v49 = v96;
      sub_23DB6FE2C();
      (*(v95 + 8))(v46, v49);
      (*(v92 + 8))(v45, v48);
      v50 = v97;
      sub_23DB704CC();
      sub_23DB7062C();
      sub_23DB6F10C();
      v51 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDFB0, &qword_23DB79BF0) + 36));
      v52 = v115;
      *v51 = v114;
      v51[1] = v52;
      v51[2] = v116;
      LODWORD(v49) = sub_23DB6F89C();
      LOBYTE(v39) = sub_23DB6FB3C();
      v53 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDFB8, &qword_23DB79BF8) + 36);
      *v53 = v49;
      *(v53 + 4) = v39;
      *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDFC0, &qword_23DB79C00) + 36)) = 0;
      LOBYTE(v49) = sub_23DB6FB6C();
      sub_23DB6EFAC();
      v54 = v50 + *(v101 + 36);
      *v54 = v49;
      *(v54 + 8) = v55;
      *(v54 + 16) = v56;
      *(v54 + 24) = v57;
      *(v54 + 32) = v58;
      *(v54 + 40) = 0;
      v59 = v98;
      v60 = *(v98 + 16);
      v61 = v99;
      v62 = v100;
      v60(v99, v47, v100);
      v63 = v102;
      sub_23DA0E2B4(v50, v102, &qword_27E2FDF28, &qword_23DB79B88);
      v60(v43, v61, v62);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDFC8, &unk_23DB79C08);
      sub_23DA0E2B4(v63, &v43[*(v64 + 48)], &qword_27E2FDF28, &qword_23DB79B88);
      sub_23DA17988(v50, &qword_27E2FDF28, &qword_23DB79B88);
      v65 = *(v59 + 8);
      v65(v112, v62);
      sub_23DA17988(v63, &qword_27E2FDF28, &qword_23DB79B88);
      v65(v61, v62);

      v66 = sub_23DB700EC();

      v67 = v106;
      v68 = v111;
      v69 = (v111 + *(v106 + 36));
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC150, &qword_23DB74180);
      v71 = v69 + *(v70 + 52);
      v72 = *(sub_23DB6F32C() + 20);
      v73 = *MEMORY[0x277CE0118];
      v74 = sub_23DB6F63C();
      (*(*(v74 - 8) + 104))(&v71[v72], v73, v74);
      *v71 = v113;
      *v69 = v66;
      v75 = *(v70 + 56);
      a1 = v103;
      *(v69 + v75) = 256;
      v76 = v107;
      sub_23DA17A54(v68, v107, &qword_27E2FDF40, &qword_23DB79BA0);
      (*(v105 + 56))(v76, 0, 1, v67);
      v5 = v90;
    }

    else
    {
      v76 = v107;
      (*(v105 + 56))(v107, 1, 1, v106);
      v73 = *MEMORY[0x277CE0118];
    }

    v77 = sub_23DB6F68C();
    v78 = v104;
    *v104 = v77;
    *(v78 + 8) = 0;
    *(v78 + 16) = 1;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF50, &unk_23DB79BB0);
    sub_23DA69B6C(a1, v78 + *(v79 + 44));
    v80 = v78 + *(v109 + 36);
    sub_23DB705CC();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF48, &qword_23DB73D90);
    v82 = (v80 + *(v81 + 52));
    v83 = *(sub_23DB6F32C() + 20);
    v84 = sub_23DB6F63C();
    (*(*(v84 - 8) + 104))(&v82[v83], v73, v84);
    *v82 = v113;
    *(v80 + *(v81 + 56)) = 256;
    v85 = v108;
    sub_23DA0E2B4(v76, v108, &qword_27E2FDF48, &qword_23DB79BA8);
    sub_23DA0E2B4(v78, v5, &qword_27E2FDF20, &qword_23DB79B80);
    v86 = v110;
    sub_23DA0E2B4(v85, v110, &qword_27E2FDF48, &qword_23DB79BA8);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDF58, &qword_23DB79BC0);
    sub_23DA0E2B4(v5, v86 + *(v87 + 48), &qword_27E2FDF20, &qword_23DB79B80);
    sub_23DA17988(v78, &qword_27E2FDF20, &qword_23DB79B80);
    sub_23DA17988(v76, &qword_27E2FDF48, &qword_23DB79BA8);
    sub_23DA17988(v5, &qword_27E2FDF20, &qword_23DB79B80);
    return sub_23DA17988(v85, &qword_27E2FDF48, &qword_23DB79BA8);
  }

  else
  {
    type metadata accessor for NavigationModel(0);
    sub_23DA6CEEC(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}