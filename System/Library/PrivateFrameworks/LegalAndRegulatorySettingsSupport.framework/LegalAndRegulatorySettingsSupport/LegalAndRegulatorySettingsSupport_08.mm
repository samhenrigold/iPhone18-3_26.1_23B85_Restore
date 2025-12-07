uint64_t sub_255CCA980@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2D8, &unk_255D0F160);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v32 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3B0, &qword_255D0F608);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v32 - v9);
  v11 = sub_255D06CE8();
  v12 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3B8, &unk_255D0F610) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3C0, &qword_255D10790) + 28);
  v14 = *MEMORY[0x277CE1048];
  v15 = sub_255D06D48();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v10 = v11;
  v16 = sub_255D06808();
  v17 = *(*(v16 - 8) + 56);
  v17(v3, 1, 1, v16);
  sub_255D06898();
  sub_255C76B94(v3, &qword_27F7DF2D8, &unk_255D0F160);
  sub_255D06848();
  v18 = sub_255D068A8();

  KeyPath = swift_getKeyPath();
  v20 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3C8, &qword_255D0F680) + 36));
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = sub_255D06738();
  v22 = v10 + *(v5 + 44);
  *v22 = v21;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  sub_255CCADA4(&v34);
  sub_255D06828();
  v17(v3, 1, 1, v16);
  v23 = sub_255D06898();
  sub_255C76B94(v3, &qword_27F7DF2D8, &unk_255D0F160);
  v24 = swift_getKeyPath();
  sub_255C7299C(v10, v7, &qword_27F7DF3B0, &qword_255D0F608);
  v25 = v33;
  sub_255C7299C(v7, v33, &qword_27F7DF3B0, &qword_255D0F608);
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3D0, &unk_255D0F688) + 48));
  v27 = v35;
  v38[0] = v34;
  v38[1] = v35;
  v28 = v36;
  v38[2] = v36;
  v39 = v37;
  *&v40 = v24;
  *(&v40 + 1) = v23;
  *v26 = v34;
  v26[1] = v27;
  v29 = v39;
  v30 = v40;
  v26[2] = v28;
  v26[3] = v29;
  v26[4] = v30;
  sub_255C7299C(v38, v41, &qword_27F7DF370, &qword_255D0F4D0);
  sub_255C76B94(v10, &qword_27F7DF3B0, &qword_255D0F608);
  v41[0] = v34;
  v41[1] = v35;
  v41[2] = v36;
  v41[3] = v37;
  v42 = v24;
  v43 = v23;
  sub_255C76B94(v41, &qword_27F7DF370, &qword_255D0F4D0);
  return sub_255C76B94(v7, &qword_27F7DF3B0, &qword_255D0F608);
}

double sub_255CCADA4@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001CLL;
  *(a1 + 8) = 0x8000000255D191D0;
  *(a1 + 16) = 0;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0xD000000000000015;
  *(a1 + 40) = 0x8000000255D191F0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v1;
  sub_255C8A25C(0xD00000000000001CLL, 0x8000000255D191D0, 0);

  sub_255C8A25C(0xD000000000000015, 0x8000000255D191F0, 0);

  sub_255C8A038(0xD000000000000015, 0x8000000255D191F0, 0);

  sub_255C8A038(0xD00000000000001CLL, 0x8000000255D191D0, 0);

  return result;
}

uint64_t sub_255CCAEA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 66);
  return result;
}

unint64_t sub_255CCAFA0()
{
  result = qword_27F7DF3A8;
  if (!qword_27F7DF3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF390, &qword_255D0F5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF3A8);
  }

  return result;
}

uint64_t sub_255CCB004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF398, &qword_255D0F5C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_255CCB088()
{
  result = qword_27F7DF3D8;
  if (!qword_27F7DF3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF3E0, &qword_255D0F698);
    sub_255CCB10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF3D8);
  }

  return result;
}

unint64_t sub_255CCB10C()
{
  result = qword_27F7DF3E8;
  if (!qword_27F7DF3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF398, &qword_255D0F5C8);
    sub_255CCAFA0();
    sub_255CC8D9C(&qword_27F7DEEA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF3E8);
  }

  return result;
}

uint64_t sub_255CCB1F4@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2D8, &unk_255D0F160);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v49 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF0C8, &qword_255D0F790);
  v7 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v49 - v8;
  v9 = sub_255D063E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = a1;
  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v14 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v13 = v54;
  }

  swift_getKeyPath();
  v54 = v13;
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v15 = *(v13 + 65);

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = a1;
  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v17 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v16 = v54;
  }

  swift_getKeyPath();
  v54 = v16;
  sub_255D05CA8();

  v18 = *(v16 + 48);

  if (!*(v18 + 16) || (v19 = sub_255C7B7C4(0x68746E6F6DLL, 0xE500000000000000), (v20 & 1) == 0))
  {

LABEL_15:
    v47 = 1;
    v46 = v53;
    return (*(v7 + 56))(v46, v47, 1, v52);
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v22 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    a1 = v54;
  }

  swift_getKeyPath();
  v54 = a1;
  sub_255D05CA8();

  v23 = *(a1 + 48);

  if (!*(v23 + 16) || (v24 = sub_255C7B7C4(1918985593, 0xE400000000000000), (v25 & 1) == 0))
  {

    goto LABEL_15;
  }

  v26 = v21;
  v27 = *(*(v23 + 56) + 8 * v24);

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_255D075A8();

  v54 = 0x85EBB0A1EC9CA0ECLL;
  v55 = 0xAE00203A949BEC84;
  v28 = [v26 description];
  v29 = sub_255D070D8();
  v31 = v30;

  MEMORY[0x259C4B5D0](v29, v31);

  MEMORY[0x259C4B5D0](764713964, 0xA400000000000000);
  v32 = [v27 description];
  v33 = sub_255D070D8();
  v35 = v34;

  MEMORY[0x259C4B5D0](v33, v35);

  v36 = sub_255D06808();
  v37 = v50;
  (*(*(v36 - 8) + 56))(v50, 1, 1, v36);
  sub_255D06898();
  sub_255CC8C3C(v37);
  v38 = sub_255D06958();
  v40 = v39;
  LOBYTE(v35) = v41;
  v43 = v42;

  v54 = v38;
  v55 = v40;
  v56 = v35 & 1;
  v57 = v43;
  v44 = v51;
  sub_255D06B98();

  sub_255C8A038(v38, v40, v35 & 1);

  v45 = v53;
  sub_255CC8CA4(v44, v53);
  v46 = v45;
  v47 = 0;
  return (*(v7 + 56))(v46, v47, 1, v52);
}

double sub_255CCB8FC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 48);

  return result;
}

uint64_t sub_255CCB9D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 65);
  return result;
}

uint64_t sub_255CCBB2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF400, &qword_255D0F8E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-v10];
  sub_255CCBDEC(a1, a2 & 1, &v32[-v10]);
  type metadata accessor for LegalAndRegulatorySettingsListState(0);
  sub_255CCC370();
  v12 = sub_255D05F38();
  v37 = v13;
  v14 = sub_255D05F38();
  v36 = v15;
  v16 = sub_255D05F38();
  v35 = v17;
  v18 = sub_255D05F38();
  v34 = v19;
  v20 = sub_255D05F38();
  v33 = v21;
  v22 = sub_255D05F38();
  LOBYTE(a1) = v23;
  v38 = v8;
  sub_255CCC3C8(v11, v8);
  sub_255CCC3C8(v8, a3);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF408, &qword_255D0F8E8);
  v25 = a3 + v24[12];
  *v25 = v12;
  *(v25 + 8) = v37 & 1;
  v26 = a3 + v24[16];
  *v26 = v14;
  *(v26 + 8) = v36 & 1;
  v27 = a3 + v24[20];
  *v27 = v16;
  *(v27 + 8) = v35 & 1;
  v28 = a3 + v24[24];
  *v28 = v18;
  *(v28 + 8) = v34 & 1;
  v29 = a3 + v24[28];
  *v29 = v20;
  *(v29 + 8) = v33 & 1;
  v30 = a3 + v24[32];
  *v30 = v22;
  *(v30 + 8) = a1 & 1;

  sub_255C76B94(v11, &qword_27F7DF400, &qword_255D0F8E0);

  return sub_255C76B94(v38, &qword_27F7DF400, &qword_255D0F8E0);
}

uint64_t sub_255CCBDEC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = sub_255D06CF8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255D063E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF400, &qword_255D0F8E0);
  MEMORY[0x28223BE20](v26[0]);
  v14 = v26 - v13;
  if (a2)
  {
    v34 = a1;
  }

  else
  {

    sub_255D07438();
    v15 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    a1 = v34;
  }

  swift_getKeyPath();
  *&v32[0] = a1;
  sub_255CCC370();
  sub_255D05CA8();

  v16 = *(a1 + 88);

  sub_255D06CC8();
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
  v17 = sub_255D06D58();

  (*(v6 + 8))(v8, v5);
  v18 = sub_255D06778();
  v36 = 1;
  v35 = 1;
  v27 = v17;
  LOWORD(v28) = 1;
  BYTE8(v28) = v18;
  v29 = 0u;
  v30 = 0u;
  v31 = 1;
  sub_255D06478();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v19 = qword_27F7E5E40;
  v20 = sub_255D06988();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF410, &qword_255D0F918);
  sub_255CCC5E4(&qword_27F7DF418, &qword_27F7DF410, &qword_255D0F918, sub_255CCC51C);
  sub_255D06AF8();
  sub_255C8A038(v20, v22, v24 & 1);

  v32[2] = v29;
  v32[3] = v30;
  v33 = v31;
  v32[0] = v27;
  v32[1] = v28;
  sub_255C76B94(v32, &qword_27F7DF410, &qword_255D0F918);
  sub_255D061C8();
  return sub_255C76B94(v14, &qword_27F7DF400, &qword_255D0F8E0);
}

double sub_255CCC2CC@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  *a2 = sub_255D064C8();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3F0, &qword_255D0F8D0);
  sub_255CCBB2C(v4, v5, a2 + *(v6 + 44));
  v7 = sub_255D06738();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3F8, &qword_255D0F8D8) + 36);
  *v8 = v7;
  result = 0.0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 1;
  return result;
}

unint64_t sub_255CCC370()
{
  result = qword_27F7DF2E0;
  if (!qword_27F7DF2E0)
  {
    type metadata accessor for LegalAndRegulatorySettingsListState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF2E0);
  }

  return result;
}

uint64_t sub_255CCC3C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF400, &qword_255D0F8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_255CCC438@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CCC370();
  sub_255D05CA8();

  v4 = *(v3 + 88);
  *a2 = v4;

  return v4;
}

unint64_t sub_255CCC51C()
{
  result = qword_27F7DF420;
  if (!qword_27F7DF420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF428, &qword_255D0F920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF420);
  }

  return result;
}

uint64_t sub_255CCC5E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_255CCC668()
{
  result = qword_27F7DF438;
  if (!qword_27F7DF438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF440, &qword_255D0F928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF438);
  }

  return result;
}

uint64_t sub_255CCC6F8@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2D8, &unk_255D0F160);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v37 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF0C8, &qword_255D0F790);
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v37 - v8;
  v9 = sub_255D063E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = a1;
  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v14 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v13 = v41;
  }

  swift_getKeyPath();
  v41 = v13;
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v15 = *(v13 + 40);

  if (v15 != 1)
  {
    goto LABEL_10;
  }

  v16 = a1;
  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v17 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v16 = v41;
  }

  swift_getKeyPath();
  v41 = v16;
  sub_255D05CA8();

  v18 = *(v16 + 56);

  if (v18)
  {
    v41 = 0xB9E5A080E9BDA3E8;
    v42 = 0xAD000020BDBBE4B4;

    if ((a2 & 1) == 0)
    {
      sub_255D07438();
      v19 = sub_255D066C8();
      sub_255D05D88();

      sub_255D063D8();
      swift_getAtKeyPath();

      (*(v10 + 8))(v12, v9);
      a1 = v45;
    }

    swift_getKeyPath();
    v45 = a1;
    sub_255D05CA8();

    v20 = *(a1 + 56);

    v45 = v20;
    v21 = sub_255D076B8();
    MEMORY[0x259C4B5D0](v21);

    v22 = sub_255D06808();
    v23 = v37;
    (*(*(v22 - 8) + 56))(v37, 1, 1, v22);
    sub_255D06898();
    sub_255CC8C3C(v23);
    v24 = sub_255D06958();
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v41 = v24;
    v42 = v26;
    v31 = v28 & 1;
    v43 = v28 & 1;
    v44 = v30;
    v32 = v38;
    sub_255D06B98();
    sub_255C8A038(v24, v26, v31);

    v33 = v40;
    sub_255CC8CA4(v32, v40);
    v34 = v33;
    v35 = 0;
  }

  else
  {
LABEL_10:
    v35 = 1;
    v34 = v40;
  }

  return (*(v7 + 56))(v34, v35, 1, v39);
}

uint64_t sub_255CCCCEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_255CCCDE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_255CCCF10@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF448, &qword_255D0FAD0);
  MEMORY[0x28223BE20](v16);
  v15 = &v15 - v1;
  v2 = sub_255D064C8();
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 sf_serialNumberQRImage];

  v5 = sub_255D06CC8();
  v6 = sub_255D06778();
  v23 = 1;
  v22 = 1;
  sub_255D06F58();
  sub_255D06278();
  *(&v24[6] + 7) = *&v24[21];
  *(&v24[8] + 7) = *&v24[23];
  *(&v24[10] + 7) = *&v24[25];
  *(&v24[12] + 7) = v25;
  *(v24 + 7) = *&v24[15];
  *(&v24[2] + 7) = *&v24[17];
  *(&v24[4] + 7) = *&v24[19];
  *(v20 + 8) = 0u;
  *(&v20[1] + 8) = 0u;
  *(&v20[6] + 9) = *&v24[8];
  *(&v20[7] + 9) = *&v24[10];
  *(&v20[8] + 9) = *&v24[12];
  *(&v20[2] + 9) = *v24;
  *(&v20[3] + 9) = *&v24[2];
  *(&v20[4] + 9) = *&v24[4];
  v18 = v2;
  LOBYTE(v19) = 1;
  *(&v19 + 1) = v5;
  LOBYTE(v20[0]) = v6;
  BYTE8(v20[2]) = 1;
  *(&v20[9] + 1) = *(&v25 + 1);
  *(&v20[5] + 9) = *&v24[6];
  sub_255D06478();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7E5E40;
  v8 = sub_255D06988();
  v10 = v9;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF450, &qword_255D0FAD8);
  sub_255CCD2B8();
  v13 = v15;
  sub_255D06AB8();
  sub_255C8A038(v8, v10, v12 & 1);

  v21[8] = v20[6];
  v21[9] = v20[7];
  v21[10] = v20[8];
  v21[11] = v20[9];
  v21[4] = v20[2];
  v21[5] = v20[3];
  v21[6] = v20[4];
  v21[7] = v20[5];
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = v20[0];
  v21[3] = v20[1];
  sub_255C76B94(v21, &qword_27F7DF450, &qword_255D0FAD8);
  sub_255D061C8();
  return sub_255C76B94(v13, &qword_27F7DF448, &qword_255D0FAD0);
}

unint64_t sub_255CCD2B8()
{
  result = qword_27F7DF458;
  if (!qword_27F7DF458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF450, &qword_255D0FAD8);
    sub_255CCD344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF458);
  }

  return result;
}

unint64_t sub_255CCD344()
{
  result = qword_27F7DF460;
  if (!qword_27F7DF460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF468, &unk_255D0FAE0);
    sub_255CCD3D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF460);
  }

  return result;
}

unint64_t sub_255CCD3D0()
{
  result = qword_27F7DF0A8;
  if (!qword_27F7DF0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF0B0, &unk_255D0EB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF0A8);
  }

  return result;
}

unint64_t sub_255CCD438()
{
  result = qword_27F7DF470;
  if (!qword_27F7DF470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF448, &qword_255D0FAD0);
    sub_255CCD2B8();
    sub_255CCD4C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF470);
  }

  return result;
}

unint64_t sub_255CCD4C4()
{
  result = qword_27F7DEEA0;
  if (!qword_27F7DEEA0)
  {
    sub_255D066B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEEA0);
  }

  return result;
}

id sub_255CCD540()
{
  type metadata accessor for FindLegalAndRegulatorySettingsSupportClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F7E5E40 = result;
  return result;
}

uint64_t sub_255CCD598(__n128 a1)
{
  v1 = sub_255D05DB8();
  __swift_allocate_value_buffer(v1, qword_27F7E5E48);
  __swift_project_value_buffer(v1, qword_27F7E5E48);

  return sub_255D05DA8();
}

uint64_t sub_255CCD624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a4;
  v9 = sub_255D05B78();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v73 = (&v68 - v14);
  v15 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v76 = a1;
  v16 = sub_255D05AF8();
  v17 = [v15 initWithURL_];

  v78 = v17;
  if (!v17)
  {
    if (qword_27F7DD820 != -1)
    {
      swift_once();
    }

    v28 = sub_255D05DB8();
    __swift_project_value_buffer(v28, qword_27F7E5E48);
    (*(v10 + 16))(v12, v76, v9);
    v29 = sub_255D05D98();
    v30 = v9;
    v31 = sub_255D07428();
    if (os_log_type_enabled(v29, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v79[0] = v33;
      *v32 = 136315138;
      sub_255CCE6A4();
      v34 = sub_255D076B8();
      v36 = v35;
      (*(v10 + 8))(v12, v30);
      v37 = sub_255CBF790(v34, v36, v79);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_255C4F000, v29, v31, "Bundle(url:) is nil for %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x259C4C620](v33, -1, -1);
      MEMORY[0x259C4C620](v32, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v12, v30);
    }

    return 0;
  }

  v72 = v10;
  v18 = sub_255CCDE70(a2, a3);
  v19 = v18;
  v75 = a3;
  v70 = a2;
  v71 = a5;
  if (!a5)
  {
    v38 = *(v18 + 16);
    if (v38)
    {
      v39 = v9;
      v40 = 0;
      v27 = (v18 + 40);
      v9 = &unk_279811000;
      while (v40 < *(v19 + 16))
      {
        v41 = *(v27 - 1);
        v42 = *v27;

        v43 = sub_255D070C8();
        v44 = [v78 pathForResource:v43 ofType:0];

        if (v44)
        {
          v48 = sub_255D070D8();
          v50 = v66;
LABEL_37:

          v67 = sub_255CCE0AC(v48, v50, v41, v42, v70, v75);

          return v67;
        }

        ++v40;
        v27 += 2;
        if (v38 == v40)
        {

          v9 = v39;
          goto LABEL_31;
        }
      }

      goto LABEL_39;
    }

LABEL_31:
    v38 = v72;
    v27 = v73;
    if (qword_27F7DD820 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

  v20 = [v78 localizations];
  if (!v20)
  {
    sub_255D07278();
    v20 = sub_255D07268();
  }

  v21 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1E8, &qword_255D0C4F8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_255D0AA80;
  *(v22 + 32) = v74;
  *(v22 + 40) = a5;
  v23 = sub_255D07268();

  v24 = [v21 matchedLanguagesFromAvailableLanguages:v20 forPreferredLanguages:v23];

  v25 = sub_255D07278();
  v26 = v25[2];
  v69 = v9;
  if (v26)
  {
    v27 = v25[5];
    v77 = v25[4];
  }

  else
  {
    v77 = 0;
    v27 = 0;
  }

  v9 = *(v19 + 16);
  if (!v9)
  {
LABEL_27:

    v9 = v69;
    goto LABEL_31;
  }

  v38 = 0;
  v45 = (v19 + 40);
  while (v38 < *(v19 + 16))
  {
    v41 = *(v45 - 1);
    v42 = *v45;

    v46 = sub_255D070C8();
    if (v27)
    {

      v47 = sub_255D070C8();
    }

    else
    {
      v47 = 0;
    }

    v44 = [v78 pathForResource:v46 ofType:0 inDirectory:0 forLocalization:v47];

    if (v44)
    {
      v48 = sub_255D070D8();
      v50 = v49;

      goto LABEL_37;
    }

    ++v38;

    v45 += 2;
    if (v9 == v38)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  swift_once();
LABEL_32:
  v51 = sub_255D05DB8();
  __swift_project_value_buffer(v51, qword_27F7E5E48);
  (*(v38 + 16))(v27, v76, v9);
  v52 = v71;

  v53 = sub_255D05D98();
  v54 = v27;
  v55 = sub_255D07428();

  if (os_log_type_enabled(v53, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v80 = v57;
    *v56 = 136315650;
    sub_255CCE6A4();
    v58 = sub_255D076B8();
    v60 = v59;
    (*(v38 + 8))(v54, v9);
    v61 = sub_255CBF790(v58, v60, &v80);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_255CBF790(v70, v75, &v80);
    *(v56 + 22) = 2080;
    v79[0] = v74;
    v79[1] = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9F8, &unk_255D0A9C0);
    v62 = sub_255D07118();
    v64 = sub_255CBF790(v62, v63, &v80);

    *(v56 + 24) = v64;
    _os_log_impl(&dword_255C4F000, v53, v55, "localizedPath or foundImageNameCandidate is nil for bundleURL: %s, resource: %s, languageOverride: %s", v56, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C4C620](v57, -1, -1);
    MEMORY[0x259C4C620](v56, -1, -1);
  }

  else
  {

    (*(v38 + 8))(v54, v9);
  }

  return 0;
}

uint64_t sub_255CCDE70(uint64_t a1, unint64_t a2)
{
  v28 = 46;
  v29 = 0xE100000000000000;
  v27 = &v28;

  v5 = sub_255CCE2E4(0x7FFFFFFFFFFFFFFFLL, 1, sub_255CBAE00, v26, a1, a2, v4);
  if (v5[2] == 2)
  {
    v6 = v5[4];
    v7 = v5[5];
    v9 = v5[6];
    v8 = v5[7];
    v10 = v5[8];
    v25 = v5[9];
    v12 = v5[10];
    v11 = v5[11];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1E8, &qword_255D0C4F8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_255D0FB20;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    v28 = MEMORY[0x259C4B570](v6, v7, v9, v8);
    v29 = v14;
    MEMORY[0x259C4B5D0](779629120, 0xE400000000000000);
    v15 = MEMORY[0x259C4B570](v10, v25, v12, v11);
    MEMORY[0x259C4B5D0](v15);

    v16 = v29;
    *(v13 + 48) = v28;
    *(v13 + 56) = v16;
    v17 = MEMORY[0x259C4B570](v6, v7, v9, v8);
    v19 = v18;

    v28 = v17;
    v29 = v19;
    MEMORY[0x259C4B5D0](779629376, 0xE400000000000000);
    v20 = MEMORY[0x259C4B570](v10, v25, v12, v11);
    v22 = v21;

    MEMORY[0x259C4B5D0](v20, v22);

    v23 = v29;
    *(v13 + 64) = v28;
    *(v13 + 72) = v23;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1E8, &qword_255D0C4F8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_255D0AA80;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
  }

  return v13;
}

uint64_t sub_255CCE0AC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v37[0] = 47;
  v37[1] = 0xE100000000000000;
  v36 = v37;

  v11 = sub_255CCE2E4(0x7FFFFFFFFFFFFFFFLL, 0, sub_255CBAD10, v35, a1, a2, v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v37[0] = MEMORY[0x277D84F90];
    sub_255C977B8(0, v12, 0);
    v13 = v37[0];
    v14 = a3;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v15 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v16 = (v11 + 56);
    v34 = a3;
    do
    {
      v18 = *(v16 - 3);
      v17 = *(v16 - 2);
      v19 = *(v16 - 1);
      v20 = *v16;
      v23 = v19 == v14 && v20 == a4 && v18 >> 16 == 0 && v17 >> 16 == v15;
      if (v23 || (sub_255D076A8() & 1) != 0)
      {
        v24 = a6;

        v25 = a5;
      }

      else
      {

        v25 = MEMORY[0x259C4B570](v18, v17, v19, v20);
        v24 = v26;
      }

      v37[0] = v13;
      v28 = *(v13 + 16);
      v27 = *(v13 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_255C977B8((v27 > 1), v28 + 1, 1);
        v13 = v37[0];
      }

      *(v13 + 16) = v28 + 1;
      v29 = v13 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v24;
      v16 += 4;
      --v12;
      v14 = v34;
    }

    while (v12);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v37[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA00, &qword_255D0D200);
  sub_255C743A0();
  v30 = sub_255D07068();

  return v30;
}

unint64_t sub_255CCE2E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_255D07228();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_255C97160(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_255C97160((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_255D07218();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_255D07188();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_255D07188();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_255D07228();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_255C97160(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_255D07228();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_255C97160(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_255C97160((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_255D07188();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_255CCE6A4()
{
  result = qword_27F7DEFE0;
  if (!qword_27F7DEFE0)
  {
    sub_255D05B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEFE0);
  }

  return result;
}

uint64_t LegalAndRegulatorySettingsList.init(legalAndRegulatorySettingsListState:)(uint64_t a1, __n128 a2)
{
  v2 = sub_255D05C38();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_255D05A78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_255D070B8();
  MEMORY[0x28223BE20](v7 - 8);
  type metadata accessor for LegalAndRegulatorySettingsList(0);
  sub_255D070A8();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v8 = [qword_27F7E5E40 bundleURL];
  sub_255D05B28();

  (*(v4 + 104))(v6, *MEMORY[0x277CC9118], v3);
  sub_255D05BF8();
  sub_255D05A98();
  type metadata accessor for LegalAndRegulatorySettingsListState(0);
  sub_255CD07A0(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  return sub_255D06F18();
}

uint64_t type metadata accessor for LegalAndRegulatorySettingsList(uint64_t a1)
{
  result = qword_27F7DF4D0;
  if (!qword_27F7DF4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegalAndRegulatorySettingsList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0, &qword_255D0BED0);
  MEMORY[0x28223BE20](v2 - 8);
  v70 = &v51 - v3;
  v65 = sub_255D05B78();
  v72 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_255D06F98();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v69 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF488, &qword_255D0FB38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF490, &qword_255D0FB40);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF498, &qword_255D0FB48);
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v15 = &v51 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF4A0, &qword_255D0FB50);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v67 = &v51 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF4A8, &qword_255D0FB58);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = &v51 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF4B0, &qword_255D0FB60);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v51 - v18;
  sub_255D06F08();
  swift_getKeyPath();
  sub_255D06F28();

  v19 = *(v7 + 8);
  v60 = v6;
  v19(v9, v6);
  v80 = v74;
  v81 = v75;
  v82 = v76;
  v64 = v1;
  v73 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF4B8, &unk_255D0FB90);
  sub_255CB3338();
  sub_255C810A8(&qword_27F7DF4C0, &qword_27F7DF4B8, &unk_255D0FB90, MEMORY[0x277CE14C0]);
  sub_255D068E8();
  sub_255D06478();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v20 = qword_27F7E5E40;
  v21 = sub_255D06988();
  v23 = v22;
  v25 = v24;
  v26 = sub_255C810A8(&qword_27F7DF4C8, &qword_27F7DF490, &qword_255D0FB40, MEMORY[0x277CDE5A0]);
  sub_255D06AD8();
  sub_255C8A038(v21, v23, v25 & 1);

  (*(v11 + 8))(v13, v10);
  v27 = type metadata accessor for LegalDocumentModel(0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE48, &qword_255D0E680);
  v74 = v10;
  v75 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_255CD07A0(&qword_27F7DEE88, type metadata accessor for LegalDocumentModel, &unk_255D0E2FC);
  v31 = sub_255CBBA04();
  v32 = v66;
  v51 = v28;
  sub_255D06B68();
  (*(v63 + 8))(v15, v32);
  v33 = v69;
  *v69 = 0xD00000000000002BLL;
  v33[1] = 0x8000000255D19470;
  v34.n128_f64[0] = (*(v71 + 104))();
  sub_255CCFC90(v34);
  v35 = v70;
  sub_255D05B48();
  v36 = v65;
  result = (*(v72 + 48))(v35, 1, v65);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for LegalAndRegulatorySettingsList(0);
    v38 = v72;
    v39 = v61;
    (*(v72 + 32))(v61, v70, v36);
    v74 = v66;
    v75 = v27;
    v76 = v51;
    v77 = OpaqueTypeConformance2;
    v78 = v30;
    v79 = v31;
    v40 = swift_getOpaqueTypeConformance2();
    v41 = v54;
    v42 = v69;
    v43 = v53;
    v44 = v67;
    sub_255D06A08();

    (*(v38 + 8))(v39, v36);
    (*(v71 + 8))(v42, v68);
    (*(v52 + 8))(v44, v43);
    sub_255D06EF8();
    v45 = type metadata accessor for LegalAndRegulatorySettingsListState(0);
    v74 = v43;
    v75 = v40;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = sub_255CD07A0(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
    v48 = v55;
    v49 = v58;
    sub_255D06A68();

    (*(v56 + 8))(v41, v49);
    v74 = v49;
    v75 = v45;
    v76 = v46;
    v77 = v47;
    swift_getOpaqueTypeConformance2();
    v50 = v59;
    sub_255D069F8();
    return (*(v57 + 8))(v48, v50);
  }

  return result;
}

uint64_t sub_255CCF4B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CD07A0(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_255CCF5B4@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF0C8, &qword_255D0F790);
  MEMORY[0x28223BE20](v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF4F0, &qword_255D0FC30);
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  MEMORY[0x28223BE20](v3);
  v44 = &v33 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF4F8, &qword_255D0FC38);
  v36 = *(v40 - 8);
  v5 = v36;
  MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF500, &qword_255D0FC40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v38 = &v33 - v14;
  sub_255CCFA88(&v33 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF488, &qword_255D0FB38);
  sub_255D06EF8();
  v16 = sub_255CD4B34();

  v46 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF508, &qword_255D0FC48);
  sub_255C810A8(&qword_27F7DF510, &qword_27F7DF508, &qword_255D0FC48, MEMORY[0x277D83980]);
  sub_255CD06F8();
  sub_255CD074C();
  v35 = v9;
  sub_255D06EB8();
  sub_255CCFFC4();
  sub_255CC1CD0();
  sub_255CD07E8();
  v17 = v44;
  sub_255D06ED8();
  v18 = v12;
  v37 = v12;
  sub_255CD083C(v15, v12);
  v19 = *(v5 + 16);
  v21 = v39;
  v20 = v40;
  v19(v39, v9, v40);
  v22 = *(v45 + 16);
  v23 = v2;
  v24 = v42;
  v22(v23, v17, v42);
  v25 = v43;
  sub_255CD083C(v18, v43);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF530, &qword_255D0FC50);
  v27 = v20;
  v19((v25 + *(v26 + 48)), v21, v20);
  v28 = v25 + *(v26 + 64);
  v29 = v34;
  v22(v28, v34, v24);
  v30 = *(v45 + 8);
  v30(v44, v24);
  v31 = *(v36 + 8);
  v31(v35, v27);
  sub_255CD08AC(v38);
  v30(v29, v24);
  v31(v21, v27);
  return sub_255CD08AC(v37);
}

uint64_t sub_255CCFA88@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF538, &qword_255D0FC58);
  v13 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - v3;
  v5 = objc_opt_self();
  v6 = [v5 currentDevice];
  v7 = [v6 sf_isCarrierInstall];

  if (v7 && (v8 = [v5 currentDevice], v9 = objc_msgSend(v8, sel_sf_isInternalInstall), v8, (v9 & 1) == 0))
  {
    sub_255CD0914();
    sub_255D06EE8();
    (*(v13 + 32))(a1, v4, v2);
    return (*(v13 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v10 = *(v13 + 56);

    return v10(a1, 1, 1, v2);
  }
}

double sub_255CCFC78@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  *a2 = v2;
  *(a2 + 8) = v3;

  return result;
}

uint64_t sub_255CCFC90(__n128 a1)
{
  v1 = sub_255D05C38();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_255D05A78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255D070B8();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF4E8, &unk_255D0FC20);
  sub_255D05A88();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_255D0AA80;
  sub_255D070A8();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v8 = [qword_27F7E5E40 bundleURL];
  sub_255D05B28();

  (*(v3 + 104))(v5, *MEMORY[0x277CC9118], v2);
  sub_255D05BF8();
  sub_255D05A98();
  return v7;
}

uint64_t sub_255CCFF48@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LegalAndRegulatorySettingsListState(0);
  sub_255CD07A0(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  result = sub_255D05F38();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

double sub_255CCFFC4()
{
  v0 = sub_255D064B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255D06478();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7E5E40;
  v5 = sub_255D06988();
  v7 = v6;
  v12[1] = v5;
  v12[2] = v6;
  v9 = v8 & 1;
  v13 = v8 & 1;
  v14 = v10;
  sub_255D064A8();
  sub_255D06B78();
  (*(v1 + 8))(v3, v0);
  sub_255C8A038(v5, v7, v9);

  return result;
}

uint64_t sub_255CD01B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF488, &qword_255D0FB38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_255D05A88();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_255CD02C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF488, &qword_255D0FB38);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_255D05A88();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_255CD03C8(uint64_t a1)
{
  sub_255CD044C(319);
  if (v1 <= 0x3F)
  {
    sub_255D05A88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_255CD044C(uint64_t a1)
{
  if (!qword_27F7DF4E0)
  {
    type metadata accessor for LegalAndRegulatorySettingsListState(255);
    v1 = sub_255D06F38();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7DF4E0);
    }
  }
}

uint64_t sub_255CD04A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF4B0, &qword_255D0FB60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF4A8, &qword_255D0FB58);
  type metadata accessor for LegalAndRegulatorySettingsListState(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF4A0, &qword_255D0FB50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF498, &qword_255D0FB48);
  type metadata accessor for LegalDocumentModel(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEE48, &qword_255D0E680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF490, &qword_255D0FB40);
  sub_255C810A8(&qword_27F7DF4C8, &qword_27F7DF490, &qword_255D0FB40, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  sub_255CD07A0(&qword_27F7DEE88, type metadata accessor for LegalDocumentModel, &unk_255D0E2FC);
  sub_255CBBA04();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_255CD07A0(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255CD06F8()
{
  result = qword_27F7DF518;
  if (!qword_27F7DF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF518);
  }

  return result;
}

unint64_t sub_255CD074C()
{
  result = qword_27F7DF520;
  if (!qword_27F7DF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF520);
  }

  return result;
}

uint64_t sub_255CD07A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_255CD07E8()
{
  result = qword_27F7DF528;
  if (!qword_27F7DF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF528);
  }

  return result;
}

uint64_t sub_255CD083C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF500, &qword_255D0FC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CD08AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF500, &qword_255D0FC40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255CD0914()
{
  result = qword_27F7DF540;
  if (!qword_27F7DF540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF540);
  }

  return result;
}

uint64_t sub_255CD0968()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 67);
}

uint64_t sub_255CD0A08()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_255CD0AB8()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 64);
}

uint64_t sub_255CD0B58()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 17);
}

uint64_t sub_255CD0BF8()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_255CD0CA8()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 66);
}

uint64_t sub_255CD0D48()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 65);
}

double sub_255CD0DE8()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return result;
}

id sub_255CD0E8C()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_255CD0F3C()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 40);
}

uint64_t sub_255CD0FDC()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 56);
}

void sub_255CD107C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      v3 = sub_255C97370(isUniquelyReferenced_nonNull_native, v9, 1, v3);
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 2);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_22;
          }

          *(v3 + 2) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_20;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_255CD11B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = v3[2];
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= v3[3] >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      v3 = sub_255C97498(isUniquelyReferenced_nonNull_native, v9, 1, v3);
      if (*(v4 + 16))
      {
LABEL_14:
        v10 = (v3[3] >> 1) - v3[2];
        type metadata accessor for LegalDocumentModel(0);
        if (v10 < v5)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v11 = v3[2];
          v12 = __OFADD__(v11, v5);
          v13 = v11 + v5;
          if (v12)
          {
            goto LABEL_22;
          }

          v3[2] = v13;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_20;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_255CD1318()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 16);
}

void sub_255CD13B8(unsigned __int8 a1)
{
  v3 = *(v1 + 16);
  if (v3 == 11)
  {
    if (a1 == 11)
    {
      goto LABEL_13;
    }

LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();

    return;
  }

  if (a1 == 11)
  {
    goto LABEL_5;
  }

  v5 = sub_255CB30B8(v3);
  v7 = v6;
  if (v5 != sub_255CB30B8(a1) || v7 != v8)
  {
    v10 = sub_255D076D8();

    if (v10)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

LABEL_13:
  *(v1 + 16) = a1;
}

uint64_t sub_255CD1548(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

double sub_255CD1658(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (sub_255D076D8() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

uint64_t sub_255CD17B8(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

double sub_255CD18C8(uint64_t a1)
{

  sub_255CD409C(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

uint64_t sub_255CD1A1C(uint64_t result)
{
  if (*(v1 + 56) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

uint64_t sub_255CD1B20(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

uint64_t sub_255CD1C30(uint64_t result)
{
  if (*(v1 + 65) == (result & 1))
  {
    *(v1 + 65) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

uint64_t sub_255CD1D40(uint64_t result)
{
  if (*(v1 + 66) == (result & 1))
  {
    *(v1 + 66) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

uint64_t sub_255CD1E50(uint64_t result)
{
  if (*(v1 + 67) == (result & 1))
  {
    *(v1 + 67) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

double sub_255CD1F60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72) == a1 && *(v2 + 80) == a2;
  if (v5 || (sub_255D076D8() & 1) != 0)
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

void sub_255CD20C0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  sub_255CD4F3C(0, &qword_27F7DF570, 0x277D755B8);
  v5 = v4;
  v6 = sub_255D07478();

  if (v6)
  {
    v7 = *(v2 + 88);
    *(v2 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState, &protocol conformance descriptor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }
}

uint64_t sub_255CD222C()
{
  v0 = type metadata accessor for LegalDocumentModel(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v93 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v91 = &v87 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v87 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v87 - v9;
  v11 = SFAcknowledgementsDocumentFilePath();
  v96 = v10;
  if (v11)
  {
    v12 = v11;
    sub_255D070D8();

    sub_255D05AD8();

    type metadata accessor for LegalDocumentModel.DocumentType(0);
    swift_storeEnumTagMultiPayload();
    *v10 = 0;
    v13 = &v10[*(v0 + 24)];
    *v13 = 0;
    v13[1] = 0;
    v14 = &v10[*(v0 + 28)];
    *v14 = 0;
    v14[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1D8, &qword_255D0FDD0);
    v15 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v16 = swift_allocObject();
    v99 = xmmword_255D0AA80;
    *(v16 + 16) = xmmword_255D0AA80;
    sub_255CD4D88(v10, v16 + v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580, &unk_255D0FDD8);
    inited = swift_initStackObject();
    *(inited + 16) = v99;
    *(inited + 32) = v16;
    v18 = inited + 32;
    sub_255CD11B0(inited);
    v94 = v19;
    swift_setDeallocating();
    sub_255C76B94(v18, &qword_27F7DF100, &qword_255D0EC00);
  }

  else
  {
    v94 = MEMORY[0x277D84F90];
  }

  v20 = SFLicenseFilePath();
  sub_255D070D8();

  sub_255D05AD8();

  v21 = type metadata accessor for LegalDocumentModel.DocumentType(0);
  swift_storeEnumTagMultiPayload();
  *v7 = 1;
  v22 = &v7[*(v0 + 24)];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v7[*(v0 + 28)];
  *v23 = 0;
  v23[1] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1D8, &qword_255D0FDD0);
  v25 = *(v1 + 72);
  v26 = *(v1 + 80);
  v27 = (v26 + 32) & ~v26;
  v28 = swift_allocObject();
  v99 = xmmword_255D0AA80;
  *(v28 + 16) = xmmword_255D0AA80;
  v92 = v28;
  sub_255CD4D88(v7, v28 + v27);
  v29 = SFWarrantyFilePath();
  v97 = v25;
  v98 = v24;
  v95 = v21;
  v90 = v0;
  if (v29)
  {
    v30 = v29;
    sub_255D070D8();

    v31 = v0;
    v32 = v96;
    sub_255D05AD8();

    swift_storeEnumTagMultiPayload();
    *v32 = 2;
    v33 = &v32[*(v31 + 24)];
    *v33 = 0;
    v33[1] = 0;
    v34 = &v32[*(v31 + 28)];
    *v34 = 0;
    v34[1] = 0;
    v35 = swift_allocObject();
    *(v35 + 16) = v99;
    sub_255CD4D88(v32, v35 + v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580, &unk_255D0FDD8);
    v36 = swift_initStackObject();
    *(v36 + 16) = v99;
    *(v36 + 32) = v35;
    v37 = v36 + 32;
    sub_255CD11B0(v36);
    v89 = v38;
    swift_setDeallocating();
    sub_255C76B94(v37, &qword_27F7DF100, &qword_255D0EC00);
  }

  else
  {
    v89 = MEMORY[0x277D84F90];
  }

  v39 = v26;
  v40 = (v26 + 32) & ~v26;
  if (SFShouldShowRoHSCompliance())
  {
    v41 = SFRoHSComplianceDocumentFilePath();
    v42 = v96;
    v43 = v90;
    if (v41)
    {
      v44 = v41;
      sub_255D070D8();

      sub_255D05AD8();

      swift_storeEnumTagMultiPayload();
      *v42 = 6;
      v45 = &v42[v43[6]];
      *v45 = 0;
      v45[1] = 0;
      v46 = &v42[v43[7]];
      *v46 = 0;
      v46[1] = 0;
      v47 = swift_allocObject();
      *(v47 + 16) = v99;
      sub_255CD4D88(v42, v47 + v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580, &unk_255D0FDD8);
      v48 = swift_initStackObject();
      *(v48 + 16) = v99;
      *(v48 + 32) = v47;
      v49 = v48 + 32;
      sub_255CD11B0(v48);
      v88 = v50;
      swift_setDeallocating();
      sub_255C76B94(v49, &qword_27F7DF100, &qword_255D0EC00);
    }

    else
    {
      v88 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
    v42 = v96;
    v43 = v90;
  }

  v51 = v91;
  v52 = &v91[v43[5]];
  v53 = SFRFExposureDocumentHTMLString();
  v54 = sub_255D070D8();
  v56 = v55;

  *v52 = v54;
  v52[1] = v56;
  swift_storeEnumTagMultiPayload();
  *v51 = 3;
  v57 = &v51[v43[6]];
  *v57 = 0;
  v57[1] = 0;
  v58 = &v51[v43[7]];
  *v58 = 0;
  v58[1] = 0;
  v59 = swift_allocObject();
  *(v59 + 16) = v99;
  v96 = v59;
  sub_255CD4D88(v51, v59 + v40);
  if (SFShouldShowChinaBlueSticker())
  {
    swift_storeEnumTagMultiPayload();
    *v42 = 4;
    v60 = &v42[v43[6]];
    *v60 = 0;
    v60[1] = 0;
    v61 = &v42[v43[7]];
    *v61 = 0;
    v61[1] = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = v99;
    sub_255CD4D88(v42, v62 + v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580, &unk_255D0FDD8);
    v63 = swift_initStackObject();
    *(v63 + 16) = v99;
    *(v63 + 32) = v62;
    v64 = v63 + 32;
    sub_255CD11B0(v63);
    v66 = v65;
    swift_setDeallocating();
    sub_255C76B94(v64, &qword_27F7DF100, &qword_255D0EC00);
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v67 = v93;
  swift_storeEnumTagMultiPayload();
  *v67 = 5;
  v68 = &v67[v43[6]];
  *v68 = 0;
  v68[1] = 0;
  v69 = &v67[v43[7]];
  *v69 = 0;
  v69[1] = 0;
  v91 = v39;
  v70 = swift_allocObject();
  *(v70 + 16) = v99;
  sub_255CD4D88(v67, v70 + v40);
  if (SFShouldShowBuiltInApps() && (v71 = SFBuiltInAppsDocumentFilePath()) != 0)
  {
    v72 = v71;
    sub_255D070D8();

    sub_255D05AD8();

    swift_storeEnumTagMultiPayload();
    *v42 = 7;
    v73 = &v42[v43[6]];
    *v73 = 0;
    v73[1] = 0;
    v74 = &v42[v43[7]];
    *v74 = 0;
    v74[1] = 0;
    v75 = swift_allocObject();
    *(v75 + 16) = v99;
    sub_255CD4D88(v42, v75 + v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580, &unk_255D0FDD8);
    v76 = swift_initStackObject();
    *(v76 + 16) = v99;
    *(v76 + 32) = v75;
    v77 = v76 + 32;
    sub_255CD11B0(v76);
    v79 = v78;
    swift_setDeallocating();
    sub_255C76B94(v77, &qword_27F7DF100, &qword_255D0EC00);
  }

  else
  {
    v79 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580, &unk_255D0FDD8);
  v80 = swift_initStackObject();
  *(v80 + 16) = xmmword_255D0FC60;
  *(v80 + 32) = v94;
  v82 = v88;
  v81 = v89;
  *(v80 + 40) = v92;
  *(v80 + 48) = v81;
  v83 = v96;
  *(v80 + 56) = v82;
  *(v80 + 64) = v83;
  *(v80 + 72) = v66;
  *(v80 + 80) = v70;
  *(v80 + 88) = v79;
  sub_255CD11B0(v80);
  v85 = v84;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF100, &qword_255D0EC00);
  swift_arrayDestroy();
  return v85;
}

uint64_t sub_255CD2B10()
{
  v0 = type metadata accessor for LegalDocumentModel(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - v5;
  v7 = SFAudioAccessoryAcknowledgementsDocumentFilePath();
  if (v7)
  {
    v8 = v7;
    sub_255D070D8();

    sub_255D05AD8();

    type metadata accessor for LegalDocumentModel.DocumentType(0);
    swift_storeEnumTagMultiPayload();
    *v6 = 8;
    v9 = &v6[*(v0 + 24)];
    *v9 = 0;
    v9[1] = 0;
    v10 = &v6[*(v0 + 28)];
    *v10 = 0;
    v10[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1D8, &qword_255D0FDD0);
    v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v12 = swift_allocObject();
    v37 = xmmword_255D0AA80;
    *(v12 + 16) = xmmword_255D0AA80;
    sub_255CD4D88(v6, v12 + v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580, &unk_255D0FDD8);
    inited = swift_initStackObject();
    *(inited + 16) = v37;
    *(inited + 32) = v12;
    v14 = inited + 32;
    sub_255CD11B0(inited);
    v36 = v15;
    swift_setDeallocating();
    sub_255C76B94(v14, &qword_27F7DF100, &qword_255D0EC00);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v16 = SFAudioAccessoryLicenseFilePath();
  sub_255D070D8();

  sub_255D05AD8();

  type metadata accessor for LegalDocumentModel.DocumentType(0);
  swift_storeEnumTagMultiPayload();
  *v3 = 9;
  v17 = &v3[*(v0 + 24)];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v3[*(v0 + 28)];
  *v18 = 0;
  v18[1] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1D8, &qword_255D0FDD0);
  v20 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v21 = swift_allocObject();
  v37 = xmmword_255D0AA80;
  *(v21 + 16) = xmmword_255D0AA80;
  sub_255CD4D88(v3, v21 + v20);
  v22 = SFAudioAccessoryWarrantyFilePath();
  if (v22)
  {
    v23 = v22;
    sub_255D070D8();
    v35 = v19;

    sub_255D05AD8();

    swift_storeEnumTagMultiPayload();
    *v6 = 10;
    v24 = &v6[*(v0 + 24)];
    *v24 = 0;
    v24[1] = 0;
    v25 = &v6[*(v0 + 28)];
    *v25 = 0;
    v25[1] = 0;
    v26 = swift_allocObject();
    *(v26 + 16) = v37;
    sub_255CD4D88(v6, v26 + v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580, &unk_255D0FDD8);
    v27 = swift_initStackObject();
    *(v27 + 16) = v37;
    *(v27 + 32) = v26;
    v28 = v27 + 32;
    sub_255CD11B0(v27);
    v30 = v29;
    swift_setDeallocating();
    sub_255C76B94(v28, &qword_27F7DF100, &qword_255D0EC00);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580, &unk_255D0FDD8);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_255D0FB20;
  *(v31 + 32) = v36;
  *(v31 + 40) = v21;
  *(v31 + 48) = v30;
  sub_255CD11B0(v31);
  v33 = v32;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF100, &qword_255D0EC00);
  swift_arrayDestroy();
  return v33;
}

uint64_t LegalAndRegulatorySettingsListState.__allocating_init()()
{
  v24 = SFShouldShowIndiaBIS();
  v0 = SFIndiaBISNumber();
  if (v0)
  {
    v1 = v0;
    v2 = sub_255D070D8();
    v22 = v3;
    v23 = v2;
  }

  else
  {
    v22 = 0xE000000000000000;
    v23 = 0;
  }

  v21 = SFShouldShowYearOfManufacture();
  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 sf_monthAndYearOfManufacture];

  if (v6)
  {
    sub_255CD4F3C(0, &qword_27F7DF550, 0x277CCABB0);
    v20 = sub_255D07008();
  }

  else
  {
    v20 = sub_255CD4A30(MEMORY[0x277D84F90]);
  }

  v7 = [v4 currentDevice];
  v8 = [v7 sf_yearOfManufacture];

  v9 = SFShouldShowEyesightWarning();
  v10 = SFShouldShowMonthOfManufacture();
  v11 = SFShouldShowAlertMark();
  LOBYTE(v7) = SFShouldShowCountryOfOrigin();
  v12 = SFShouldShowChinaBlueSticker();
  v13 = SFCountryOfOrigin();
  v14 = sub_255D070D8();
  v16 = v15;

  v17 = SFRegulatoryImage();
  v18 = swift_allocObject();
  *(v18 + 16) = 11;
  sub_255D05CB8();
  *(v18 + 17) = v24;
  *(v18 + 24) = v23;
  *(v18 + 32) = v22;
  *(v18 + 40) = v21;
  *(v18 + 48) = v20;
  *(v18 + 56) = v8;
  *(v18 + 64) = v9;
  *(v18 + 65) = v10;
  *(v18 + 66) = v11;
  *(v18 + 67) = v7;
  *(v18 + 68) = v12;
  *(v18 + 72) = v14;
  *(v18 + 80) = v16;
  *(v18 + 88) = v17;
  return v18;
}

Swift::Void __swiftcall LegalAndRegulatorySettingsListState.handleURL(_:)(Swift::OpaquePointer a1)
{
  sub_255D07538();
  if (*(a1._rawValue + 2) && (v2 = sub_255C7B604(v5), (v3 & 1) != 0))
  {
    sub_255CB7E68(*(a1._rawValue + 7) + 32 * v2, v6);
    sub_255C7DF4C(v5);
    if (swift_dynamicCast())
    {
      v4 = sub_255CB3508(0x746E656D75636F64, 0xE800000000000000);
      if (v4 != 11)
      {
        sub_255CD13B8(v4);
      }
    }
  }

  else
  {
    sub_255C7DF4C(v5);
  }
}

void LegalAndRegulatorySettingsListState.handleURL(_:)(uint64_t a1@<X8>)
{
  v60 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE60, &qword_255D0FC70);
  MEMORY[0x28223BE20](v1 - 8);
  v57 = &v50 - v2;
  v62 = type metadata accessor for LegalDocumentModel(0);
  v56 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255D061A8();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v50 - v9;
  v10 = sub_255D05B78();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF558, &qword_255D0FC78);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_255D058C8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255D06FD8();
  sub_255D058A8();
  (*(v11 + 8))(v13, v10);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_255C76B94(v16, &qword_27F7DF558, &qword_255D0FC78);
    sub_255D06FC8();
    sub_255D06FE8();
    (*(v58 + 8))(v7, v59);
  }

  else
  {
    v54 = v18;
    v55 = v17;
    (*(v18 + 32))(v20, v16, v17);
    sub_255D06FC8();
    v66 = sub_255D058B8();
    v67 = v21;
    v64 = 47;
    v65 = 0xE100000000000000;
    sub_255C8407C();
    v22 = sub_255D074D8();

    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = 0;
      v61 = 0x8000000255D19530;
      v25 = v22 + 40;
      v52 = v23 - 1;
      v26 = MEMORY[0x277D84F90];
      v53 = v22 + 40;
      do
      {
        v27 = (v25 + 16 * v24);
        v28 = v24;
        while (1)
        {
          if (v28 >= *(v22 + 16))
          {
            __break(1u);
            return;
          }

          v30 = *(v27 - 1);
          v29 = *v27;
          v31 = HIBYTE(*v27) & 0xF;
          if ((*v27 & 0x2000000000000000) == 0)
          {
            v31 = v30 & 0xFFFFFFFFFFFFLL;
          }

          if (v31)
          {
            v32 = v30 == 0xD00000000000001ALL && 0x8000000255D19510 == v29;
            if (!v32 && (sub_255D076D8() & 1) == 0 && (v30 != 0xD000000000000014 || v61 != v29) && (sub_255D076D8() & 1) == 0)
            {
              break;
            }
          }

          ++v28;
          v27 += 2;
          if (v23 == v28)
          {
            v38 = v20;
            goto LABEL_28;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_255C977B8(0, *(v26 + 2) + 1, 1);
          v26 = v66;
        }

        v35 = *(v26 + 2);
        v34 = *(v26 + 3);
        v36 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v39 = v35 + 1;
          v51 = v35;
          sub_255C977B8((v34 > 1), v35 + 1, 1);
          v36 = v39;
          v35 = v51;
          v26 = v66;
        }

        v24 = v28 + 1;
        *(v26 + 2) = v36;
        v37 = &v26[16 * v35];
        *(v37 + 4) = v30;
        *(v37 + 5) = v29;
        v25 = v53;
        v38 = v20;
      }

      while (v52 != v28);
    }

    else
    {
      v38 = v20;
      v26 = MEMORY[0x277D84F90];
    }

LABEL_28:

    v40 = *(v26 + 2);
    if (v40)
    {
      v41 = v57;
      v42 = (v56 + 48);
      while (1)
      {
        v43 = *(v26 + 4);
        v44 = *(v26 + 5);

        v45 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v26;
        if (!v45 || (v40 - 1) > *(v26 + 3) >> 1)
        {
          v26 = sub_255C96444(v45, v40, 1, v26);
          v66 = v26;
        }

        sub_255CD4CC8(0, 1, 0, v46);
        v47 = sub_255CB3508(v43, v44);
        if (v47 == 11)
        {

          v49 = v63;
          v38 = v20;
          goto LABEL_41;
        }

        sub_255CD39A0(v47, v41);
        v48 = (*v42)(v41, 1, v62);
        v49 = v63;
        v38 = v20;
        if (v48 == 1)
        {
          break;
        }

        sub_255CD4D88(v41, v4);
        sub_255CD4FC4(&qword_27F7DEE88, type metadata accessor for LegalDocumentModel, &unk_255D0E2FC);
        sub_255D06198();
        sub_255CBFC44(v4);
        v40 = *(v26 + 2);
        if (!v40)
        {
          goto LABEL_38;
        }
      }

      sub_255C76B94(v41, &qword_27F7DEE60, &qword_255D0FC70);
    }

    else
    {
      v49 = v63;
LABEL_38:
    }

LABEL_41:
    sub_255D06FE8();
    (*(v58 + 8))(v49, v59);
    (*(v54 + 8))(v38, v55);
  }
}

void sub_255CD39A0(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v62) = a1;
  v56 = a2;
  v67 = type metadata accessor for LegalDocumentModel(0);
  v2 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v68 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_255CD4B34();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v4 + 40;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        return;
      }

      v10 = *v8;
      v11 = *(*v8 + 16);
      v12 = v9[2];
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        goto LABEL_102;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v13 <= v9[3] >> 1)
      {
        if (*(v10 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v15 = v12 + v11;
        }

        else
        {
          v15 = v12;
        }

        v9 = sub_255C97498(isUniquelyReferenced_nonNull_native, v15, 1, v9);
        if (*(v10 + 16))
        {
LABEL_15:
          if ((v9[3] >> 1) - v9[2] < v11)
          {
            goto LABEL_104;
          }

          swift_arrayInitWithCopy();

          if (v11)
          {
            v16 = v9[2];
            v17 = __OFADD__(v16, v11);
            v18 = v16 + v11;
            if (v17)
            {
              goto LABEL_105;
            }

            v9[2] = v18;
          }

          goto LABEL_4;
        }
      }

      if (v11)
      {
        goto LABEL_103;
      }

LABEL_4:
      ++v7;
      v8 += 16;
      if (v6 == v7)
      {
        goto LABEL_20;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_20:

  v57 = v9[2];
  if (v57)
  {
    v19 = 0;
    v20 = 0xEE0079746E617272;
    v21 = 0xED000065736E6563;
    v22 = 0x694C656369766564;
    v61 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v66 = 0x8000000255D184D0;
    v64 = 0x8000000255D184F0;
    v65 = 0x8000000255D184B0;
    v59 = 0x8000000255D18450;
    v60 = 0x8000000255D18470;
    v23 = v62;
    v62 = v2;
    v63 = 0x8000000255D18490;
    v58 = 0x8000000255D18420;
    while (v19 < v9[2])
    {
      v24 = v68;
      sub_255CBBAC0(&v61[*(v2 + 72) * v19], v68);
      v25 = *v24;
      if (v25 <= 4)
      {
        v31 = 0xD000000000000016;
        if (v25 == 3)
        {
          v31 = 0xD000000000000010;
        }

        v27 = v59;
        v26 = v60;
        if (v25 == 3)
        {
          v32 = v59;
        }

        else
        {
          v32 = v60;
        }

        if (v25 == 2)
        {
          v31 = 0x6157656369766564;
          v32 = v20;
        }

        v33 = 0xD000000000000012;
        if (*v24)
        {
          v33 = v22;
        }

        v28 = v58;
        if (*v24)
        {
          v34 = v21;
        }

        else
        {
          v34 = v58;
        }

        if (*v24 <= 1u)
        {
          v29 = v33;
        }

        else
        {
          v29 = v31;
        }

        if (*v24 <= 1u)
        {
          v30 = v34;
        }

        else
        {
          v30 = v32;
        }
      }

      else
      {
        v27 = v59;
        v26 = v60;
        v28 = v58;
        if (*v24 > 7u)
        {
          if (v25 == 8)
          {
            v29 = 0xD000000000000013;
            v30 = v64;
          }

          else if (v25 == 9)
          {
            v29 = 0x4C646F50656D6F68;
            v30 = 0xEE0065736E656369;
          }

          else
          {
            v29 = 0x57646F50656D6F68;
            v30 = 0xEF79746E61727261;
          }
        }

        else if (v25 == 5)
        {
          v29 = 0xD000000000000017;
          v30 = v63;
        }

        else
        {
          if (v25 == 6)
          {
            v29 = 0xD000000000000014;
          }

          else
          {
            v29 = 0xD000000000000011;
          }

          if (v25 == 6)
          {
            v30 = v65;
          }

          else
          {
            v30 = v66;
          }
        }
      }

      ++v19;
      v35 = 0xD000000000000013;
      v36 = 0x57646F50656D6F68;
      if (v23 == 9)
      {
        v36 = 0x4C646F50656D6F68;
      }

      v37 = 0xEF79746E61727261;
      if (v23 == 9)
      {
        v37 = 0xEE0065736E656369;
      }

      if (v23 != 8)
      {
        v35 = v36;
      }

      v38 = v64;
      if (v23 != 8)
      {
        v38 = v37;
      }

      v39 = 0xD000000000000017;
      v40 = 0xD000000000000014;
      if (v23 != 6)
      {
        v40 = 0xD000000000000011;
      }

      v41 = v66;
      if (v23 == 6)
      {
        v41 = v65;
      }

      if (v23 != 5)
      {
        v39 = v40;
      }

      v42 = v63;
      if (v23 != 5)
      {
        v42 = v41;
      }

      if (v23 <= 7)
      {
        v35 = v39;
        v38 = v42;
      }

      v43 = 0xD000000000000016;
      if (v23 == 3)
      {
        v43 = 0xD000000000000010;
        v44 = v27;
      }

      else
      {
        v44 = v26;
      }

      if (v23 == 2)
      {
        v43 = 0x6157656369766564;
        v44 = v20;
      }

      v45 = 0xD000000000000012;
      v46 = v22;
      if (v23)
      {
        v45 = v22;
      }

      v47 = v21;
      if (v23)
      {
        v48 = v21;
      }

      else
      {
        v48 = v28;
      }

      if (v23 <= 1)
      {
        v43 = v45;
        v44 = v48;
      }

      if (v23 <= 4)
      {
        v49 = v43;
      }

      else
      {
        v49 = v35;
      }

      if (v23 <= 4)
      {
        v50 = v44;
      }

      else
      {
        v50 = v38;
      }

      if (v29 == v49 && v30 == v50)
      {

LABEL_99:

        v54 = v56;
        sub_255CD4D88(v68, v56);
        v53 = 0;
        v2 = v62;
        goto LABEL_100;
      }

      v51 = v20;
      v52 = sub_255D076D8();

      if (v52)
      {
        goto LABEL_99;
      }

      sub_255CBFC44(v68);
      v20 = v51;
      v21 = v47;
      v22 = v46;
      v2 = v62;
      if (v57 == v19)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_106;
  }

LABEL_97:

  v53 = 1;
  v54 = v56;
LABEL_100:
  (*(v2 + 56))(v54, v53, 1, v67);
}

uint64_t LegalAndRegulatorySettingsListState.deinit()
{

  v1 = OBJC_IVAR____TtC33LegalAndRegulatorySettingsSupport35LegalAndRegulatorySettingsListState___observationRegistrar;
  v2 = sub_255D05CC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LegalAndRegulatorySettingsListState.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC33LegalAndRegulatorySettingsSupport35LegalAndRegulatorySettingsListState___observationRegistrar;
  v2 = sub_255D05CC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_255CD409C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_255C7B7C4(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_255CD4F3C(0, &qword_27F7DF550, 0x277CCABB0);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_255D07478();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t sub_255CD421C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF598, &qword_255D0FE28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC58, &qword_255D0FE30);
    v7 = sub_255D07658();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_255C7299C(v9, v5, &qword_27F7DF598, &qword_255D0FE28);
      result = sub_255C7B568(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_255D05B78();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_255CD4404(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF5A0, &qword_255D0FE38);
    v3 = sub_255D07658();
    v4 = a1 + 32;

    while (1)
    {
      sub_255C7299C(v4, v13, &qword_27F7DDCC8, &unk_255D0FE40);
      result = sub_255C7B604(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_255C7E138(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_255CD4540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF590, &qword_255D0FE20);
    v3 = sub_255D07658();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_255C7B648(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_255CD4630(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCA0, &qword_255D0B270);
  v3 = sub_255D07658();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_255C7B700(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_255C7B700(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_255CD474C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC50, &unk_255D0B220);
    v3 = sub_255D07658();
    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 16);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_255C7B780(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v12 = v3[7] + 32 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_255CD484C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC98, &qword_255D0B268);
    v3 = sub_255D07658();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_255C7B7C4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_255CD4950(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCA8, &qword_255D0B278);
    v3 = sub_255D07658();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_255C7B780(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_255CD4A30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF588, &unk_255D0FE10);
    v3 = sub_255D07658();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_255C7B7C4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_255CD4B34()
{
  v0 = sub_255CD222C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1E0, &qword_255D0C4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255D0AA80;
  *(inited + 32) = 0;
  *(inited + 40) = v0;
  if ([objc_opt_self() areAnySpeakersConfigured])
  {
    v2 = sub_255CD2B10();
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_255D0AA80;
    *(v3 + 32) = 1;
    *(v3 + 40) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF578, &unk_255D0FDC0);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_255D0AA80;
    *(v4 + 32) = v3;
    v5 = v4 + 32;
    sub_255CD107C(v4);
    v7 = v6;
    swift_setDeallocating();
    sub_255C76B94(v5, &qword_27F7DF508, &qword_255D0FC48);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF578, &unk_255D0FDC0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_255D0B6E0;
  *(v8 + 32) = inited;
  *(v8 + 40) = v7;
  sub_255CD107C(v8);
  v10 = v9;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF508, &qword_255D0FC48);
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_255CD4CC8(unint64_t result, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = *v4;
  v9 = v8 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v10 = __OFSUB__(a3, v5);
  v11 = a3 - v5;
  if (v10)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = *(v8 + 16);
  v10 = __OFSUB__(v12, a2);
  v13 = v12 - a2;
  if (v10)
  {
    goto LABEL_17;
  }

  result = v9 + 16 * a3;
  v14 = (v8 + 32 + 16 * a2);
  if (result != v14 || result >= v14 + 16 * v13)
  {
    result = memmove(result, v14, 16 * v13);
  }

  v16 = *(v8 + 16);
  v10 = __OFADD__(v16, v11);
  v17 = v16 + v11;
  if (v10)
  {
    goto LABEL_18;
  }

  *(v8 + 16) = v17;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_255CD4D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegalDocumentModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LegalAndRegulatorySettingsListState(uint64_t a1)
{
  result = qword_27F7DF560;
  if (!qword_27F7DF560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255CD4E40(uint64_t a1)
{
  result = sub_255D05CC8();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_255CD4F3C(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_255CD4F8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  v4 = v2;
}

uint64_t sub_255CD4FC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_255CD502C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 72) = v0[3];
  *(v1 + 80) = v2;
}

void sub_255CD50D0()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

void sub_255CD5144()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t get_enum_tag_for_layout_string_33LegalAndRegulatorySettingsSupport9BlockNodeO(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFu) <= 8)
  {
    return *(a1 + 32) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255CD520C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 33))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 32);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_255CD5254(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_255CD529C(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_255CD52C8(char a1, char a2)
{
  if (qword_255D10458[a1] == qword_255D10458[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_255D076D8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

void sub_255CD5330()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = MEMORY[0x277D84F90];
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 != 3)
      {
        return;
      }

      v10 = v1[2];
      if (v10)
      {
        v55 = MEMORY[0x277D84F90];
        sub_255C97818(0, v10, 0);
        v3 = v55;
        v11 = v1 + 5;
        do
        {
          v12 = *v11;
          v14 = *(v55 + 16);
          v13 = *(v55 + 24);
          v15 = v14 + 1;

          if (v14 >= v13 >> 1)
          {
            sub_255C97818((v13 > 1), v14 + 1, 1);
          }

          *(v55 + 16) = v15;
          *(v55 + 8 * v14 + 32) = v12;
          v11 += 2;
          --v10;
        }

        while (v10);
      }

      else
      {
        v15 = *(MEMORY[0x277D84F90] + 16);
        if (!v15)
        {
          goto LABEL_79;
        }
      }

      v34 = 0;
      v35 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v34 >= *(v3 + 16))
        {
          goto LABEL_82;
        }

        v36 = *(v3 + 8 * v34 + 32);
        v37 = *(v36 + 16);
        v38 = *(v35 + 2);
        v39 = v38 + v37;
        if (__OFADD__(v38, v37))
        {
          goto LABEL_85;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v39 <= *(v35 + 3) >> 1)
        {
          if (*(v36 + 16))
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v38 <= v39)
          {
            v41 = v38 + v37;
          }

          else
          {
            v41 = v38;
          }

          v35 = sub_255C96758(isUniquelyReferenced_nonNull_native, v41, 1, v35);
          if (*(v36 + 16))
          {
LABEL_57:
            if ((*(v35 + 3) >> 1) - *(v35 + 2) < v37)
            {
              goto LABEL_91;
            }

            swift_arrayInitWithCopy();

            if (v37)
            {
              v42 = *(v35 + 2);
              v32 = __OFADD__(v42, v37);
              v43 = v42 + v37;
              if (v32)
              {
                goto LABEL_94;
              }

              *(v35 + 2) = v43;
            }

            goto LABEL_46;
          }
        }

        if (v37)
        {
          goto LABEL_88;
        }

LABEL_46:
        if (v15 == ++v34)
        {
          goto LABEL_79;
        }
      }
    }

    v16 = *(v0 + 16);
    v17 = *(v16 + 16);
    if (v17)
    {
      v56 = MEMORY[0x277D84F90];
      sub_255C97818(0, v17, 0);
      v3 = v56;
      v18 = (v16 + 32);
      do
      {
        v19 = *v18;
        v21 = *(v56 + 16);
        v20 = *(v56 + 24);
        v22 = v21 + 1;

        if (v21 >= v20 >> 1)
        {
          sub_255C97818((v20 > 1), v21 + 1, 1);
        }

        *(v56 + 16) = v22;
        *(v56 + 8 * v21 + 32) = v19;
        ++v18;
        --v17;
      }

      while (v17);
    }

    else
    {
      v22 = *(MEMORY[0x277D84F90] + 16);
      if (!v22)
      {
        goto LABEL_79;
      }
    }

    v44 = 0;
    v45 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v44 >= *(v3 + 16))
      {
        goto LABEL_83;
      }

      v46 = *(v3 + 8 * v44 + 32);
      v47 = *(v46 + 16);
      v48 = *(v45 + 2);
      v49 = v48 + v47;
      if (__OFADD__(v48, v47))
      {
        goto LABEL_86;
      }

      v50 = swift_isUniquelyReferenced_nonNull_native();
      if (v50 && v49 <= *(v45 + 3) >> 1)
      {
        if (*(v46 + 16))
        {
          goto LABEL_75;
        }
      }

      else
      {
        if (v48 <= v49)
        {
          v51 = v48 + v47;
        }

        else
        {
          v51 = v48;
        }

        v45 = sub_255C96758(v50, v51, 1, v45);
        if (*(v46 + 16))
        {
LABEL_75:
          if ((*(v45 + 3) >> 1) - *(v45 + 2) < v47)
          {
            goto LABEL_92;
          }

          swift_arrayInitWithCopy();

          if (v47)
          {
            v52 = *(v45 + 2);
            v32 = __OFADD__(v52, v47);
            v53 = v52 + v47;
            if (v32)
            {
              goto LABEL_95;
            }

            *(v45 + 2) = v53;
          }

          goto LABEL_64;
        }
      }

      if (v47)
      {
        goto LABEL_89;
      }

LABEL_64:
      if (v22 == ++v44)
      {
        goto LABEL_79;
      }
    }
  }

  if (!*(v0 + 32))
  {

    return;
  }

  if (v2 == 1)
  {
    v4 = v1[2];
    if (v4)
    {
      v54 = MEMORY[0x277D84F90];
      sub_255C97818(0, v4, 0);
      v3 = v54;
      v5 = v1 + 4;
      do
      {
        v6 = *v5;
        v8 = *(v54 + 16);
        v7 = *(v54 + 24);
        v9 = v8 + 1;

        if (v8 >= v7 >> 1)
        {
          sub_255C97818((v7 > 1), v8 + 1, 1);
        }

        *(v54 + 16) = v9;
        *(v54 + 8 * v8 + 32) = v6;
        ++v5;
        --v4;
      }

      while (v4);
      goto LABEL_26;
    }

    v9 = *(MEMORY[0x277D84F90] + 16);
    if (v9)
    {
LABEL_26:
      v23 = 0;
      v24 = MEMORY[0x277D84F90];
      do
      {
        if (v23 >= *(v3 + 16))
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          return;
        }

        v25 = *(v3 + 8 * v23 + 32);
        v26 = *(v25 + 16);
        v27 = *(v24 + 2);
        v28 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          goto LABEL_84;
        }

        v29 = swift_isUniquelyReferenced_nonNull_native();
        if (v29 && v28 <= *(v24 + 3) >> 1)
        {
          if (!*(v25 + 16))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v27 <= v28)
          {
            v30 = v27 + v26;
          }

          else
          {
            v30 = v27;
          }

          v24 = sub_255C96758(v29, v30, 1, v24);
          if (!*(v25 + 16))
          {
LABEL_27:

            if (v26)
            {
              goto LABEL_87;
            }

            goto LABEL_28;
          }
        }

        if ((*(v24 + 3) >> 1) - *(v24 + 2) < v26)
        {
          goto LABEL_90;
        }

        swift_arrayInitWithCopy();

        if (v26)
        {
          v31 = *(v24 + 2);
          v32 = __OFADD__(v31, v26);
          v33 = v31 + v26;
          if (v32)
          {
            goto LABEL_93;
          }

          *(v24 + 2) = v33;
        }

LABEL_28:
        ++v23;
      }

      while (v9 != v23);
    }

LABEL_79:
  }
}

void sub_255CD5888(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v4 = *(a1 + 1);
  v5 = a1[32];
  if (v5 > 4)
  {
    if (a1[32] <= 6u)
    {
      if (v5 == 5)
      {
        if (a2[32] != 5)
        {
          return;
        }

        if ((v2 | (v3 << 8)) == *a2 && v4 == *(a2 + 1))
        {
          return;
        }

LABEL_67:

        sub_255D076D8();
        return;
      }

      if (a2[32] != 6)
      {
        return;
      }

      v23 = *a2;
      v24 = v2 | (v3 << 8);
    }

    else
    {
      if (v5 != 7)
      {
        if (v5 == 8 && a2[32] == 8)
        {
          v9 = *(a2 + 1);
          if (sub_255C8EA80(v2 | (v3 << 8), *a2))
          {

            sub_255C8EB48(v4, v9);
          }
        }

        return;
      }

      if (a2[32] != 7 || (v2 | (v3 << 8)) != *a2)
      {
        return;
      }

      v23 = *(a2 + 1);
      v24 = *(a1 + 1);
    }

    sub_255C8E694(v24, v23);
  }

  else
  {
    if (a1[32] > 1u)
    {
      v7 = *(a1 + 2);
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          if (a2[32] == 3 && ((v2 ^ *a2) & 1) == 0)
          {
            v8 = *(a2 + 1);

            sub_255C8C980(v4, v8);
          }

          return;
        }

        if (a2[32] != 4)
        {
          return;
        }

        v25 = *(a1 + 3);
        v26 = *(a2 + 1);
        v27 = *(a2 + 2);
        v28 = *(a2 + 3);
        if (v4)
        {
          if (!v26)
          {
            return;
          }

          if ((v2 | (v3 << 8)) != *a2 || v4 != v26)
          {
            v30 = v7;
            v31 = sub_255D076D8();
            v7 = v30;
            if ((v31 & 1) == 0)
            {
              return;
            }
          }
        }

        else if (v26)
        {
          return;
        }

        if (v7 == v27 && v25 == v28)
        {
          return;
        }

        goto LABEL_67;
      }

      if (a2[32] != 2 || ((v2 ^ *a2) & 1) != 0 || v4 != *(a2 + 1))
      {
        return;
      }

      v22 = *(a2 + 2);
      goto LABEL_54;
    }

    if (a1[32])
    {
      if (a2[32] != 1 || ((v2 ^ *a2) & 1) != 0)
      {
        return;
      }

      v22 = *(a2 + 1);
      v7 = *(a1 + 1);
LABEL_54:

      sub_255C8B060(v7, v22);
      return;
    }

    if (!a2[32])
    {
      v10 = v2 | (v3 << 8);
      v11 = *a2;
      v12 = *(v10 + 16);
      if (v12 == *(*a2 + 16) && v12 && v11 != v10)
      {
        v13 = v10 + 32;
        v14 = (v11 + 32);
        do
        {
          v15 = *v13;
          v16 = *(v13 + 16);
          v34 = *(v13 + 32);
          v33[0] = v15;
          v33[1] = v16;
          v17 = *v14;
          v18 = v14[1];
          v36 = *(v14 + 32);
          v35[0] = v17;
          v35[1] = v18;
          sub_255C76B38(v33, v32);
          sub_255C76B38(v35, v32);
          sub_255CD5888(v33, v35);
          v20 = v19;
          sub_255C76BF4(v35);
          sub_255C76BF4(v33);
          if ((v20 & 1) == 0)
          {
            break;
          }

          v14 = (v14 + 40);
          v13 += 40;
          --v12;
        }

        while (v12);
      }
    }
  }
}

void sub_255CD5C50(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1) | ((*(v1 + 5) | (v1[7] << 16)) << 32);
  v5 = *(v1 + 1);
  v6 = v1[32];
  if (v6 > 4)
  {
    if (v1[32] <= 6u)
    {
      if (v6 == 5)
      {
        MEMORY[0x259C4BB60](5);
LABEL_38:

        sub_255D07058();
        return;
      }

      MEMORY[0x259C4BB60](6);
      v23 = *((v3 | (v4 << 8)) + 0x10);
      MEMORY[0x259C4BB60](v23);
      if (v23)
      {
        v24 = ((v3 | (v4 << 8)) + 56);
        do
        {
          v25 = *(v24 - 3);
          v26 = *(v24 - 2);
          v27 = *(v24 - 1);
          v28 = *v24;
          v24 += 32;
          sub_255C74200(v25, v26, v27, v28);
          sub_255D02110(a1, v25, v26, v27, v28);
          sub_255C7429C(v25, v26, v27, v28);
          --v23;
        }

        while (v23);
      }
    }

    else if (v6 == 7)
    {
      MEMORY[0x259C4BB60](7);
      MEMORY[0x259C4BB60](v3 | (v4 << 8));
      v17 = *(v5 + 16);
      MEMORY[0x259C4BB60](v17);
      if (v17)
      {
        v18 = (v5 + 56);
        do
        {
          v19 = *(v18 - 3);
          v20 = *(v18 - 2);
          v21 = *(v18 - 1);
          v22 = *v18;
          v18 += 32;
          sub_255C74200(v19, v20, v21, v22);
          sub_255D02110(a1, v19, v20, v21, v22);
          sub_255C7429C(v19, v20, v21, v22);
          --v17;
        }

        while (v17);
      }
    }

    else if (v6 == 8)
    {
      MEMORY[0x259C4BB60](8);
      sub_255CDC454(a1, v3 | (v4 << 8));
      v8 = *(v5 + 16);
      MEMORY[0x259C4BB60](v8);
      if (v8)
      {
        v9 = (v5 + 32);
        do
        {
          v10 = *v9++;

          sub_255CD68F8(a1, v10);

          --v8;
        }

        while (v8);
      }
    }

    else
    {
      MEMORY[0x259C4BB60](9);
    }
  }

  else
  {
    if (v1[32] > 1u)
    {
      v7 = *(v1 + 2);
      if (v6 != 2)
      {
        if (v6 == 3)
        {
          MEMORY[0x259C4BB60](3);
          sub_255D07748();

          sub_255CDC4C0(a1, v5);
          return;
        }

        MEMORY[0x259C4BB60](4);
        sub_255D07748();
        if (v5)
        {
          sub_255D07058();
        }

        goto LABEL_38;
      }

      MEMORY[0x259C4BB60](2);
      sub_255D07748();
      MEMORY[0x259C4BB60](v5);
      v15 = a1;
      v16 = v7;
      goto LABEL_31;
    }

    if (v1[32])
    {
      MEMORY[0x259C4BB60](1);
      sub_255D07748();
      v15 = a1;
      v16 = v5;
LABEL_31:

      sub_255CDC5AC(v15, v16);
      return;
    }

    MEMORY[0x259C4BB60](0);
    v11 = *((v3 | (v4 << 8)) + 0x10);
    MEMORY[0x259C4BB60](v11);
    if (v11)
    {
      v12 = (v3 | (v4 << 8)) + 32;
      do
      {
        v13 = *v12;
        v14 = *(v12 + 16);
        v31 = *(v12 + 32);
        v30[0] = v13;
        v30[1] = v14;
        sub_255C76B38(v30, v29);
        sub_255CD5C50(a1);
        sub_255C76BF4(v30);
        v12 += 40;
        --v11;
      }

      while (v11);
    }
  }
}

uint64_t sub_255CD6014()
{
  sub_255D07728();
  sub_255CD5C50(v1);
  return sub_255D07768();
}

uint64_t sub_255CD6058()
{
  sub_255D07728();
  sub_255CD5C50(v1);
  return sub_255D07768();
}

unint64_t sub_255CD609C()
{
  result = qword_27F7DF5A8;
  if (!qword_27F7DF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF5A8);
  }

  return result;
}

uint64_t sub_255CD60F0(uint64_t a1)
{
  sub_255D07728();
  v2 = *(a1 + 16);
  MEMORY[0x259C4BB60](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v4 = *(v3 + 16);
      v8[0] = *v3;
      v8[1] = v4;
      v9 = *(v3 + 32);
      sub_255C76B38(v8, &v6);
      sub_255CD5C50(v7);
      sub_255C76BF4(v8);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return sub_255D07768();
}

uint64_t sub_255CD6188(uint64_t a1, char a2, uint64_t a3)
{
  sub_255D07748();
  v5 = *(a3 + 16);
  result = MEMORY[0x259C4BB60](v5);
  if (v5)
  {
    v7 = a3 + 32;
    do
    {
      v8 = *(v7 + 16);
      v10[0] = *v7;
      v10[1] = v8;
      v11 = *(v7 + 32);
      sub_255C76B38(v10, v9);
      sub_255CD5C50(a1);
      result = sub_255C76BF4(v10);
      v7 += 40;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255CD6218(char a1, uint64_t a2)
{
  sub_255D07728();
  sub_255D07748();
  v3 = *(a2 + 16);
  MEMORY[0x259C4BB60](v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      v5 = *(v4 + 16);
      v9[0] = *v4;
      v9[1] = v5;
      v10 = *(v4 + 32);
      sub_255C76B38(v9, &v7);
      sub_255CD5C50(v8);
      sub_255C76BF4(v9);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return sub_255D07768();
}

uint64_t sub_255CD62C0(uint64_t a1)
{
  sub_255D07728();
  v2 = *(a1 + 16);
  MEMORY[0x259C4BB60](v2);
  if (v2)
  {
    v3 = (a1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v3 += 32;
      sub_255C74200(v4, v5, v6, v7);
      sub_255D02110(v9, v4, v5, v6, v7);
      sub_255C7429C(v4, v5, v6, v7);
      --v2;
    }

    while (v2);
  }

  return sub_255D07768();
}

uint64_t sub_255CD6398()
{
  v1 = *(v0 + 8);
  sub_255D07728();
  sub_255D07748();
  MEMORY[0x259C4BB60](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      v5 = v3[1];
      v10 = *(v3 + 32);
      v9[0] = v4;
      v9[1] = v5;
      sub_255C76B38(v9, &v7);
      sub_255CD5C50(v8);
      sub_255C76BF4(v9);
      v3 = (v3 + 40);
      --v2;
    }

    while (v2);
  }

  return sub_255D07768();
}

uint64_t sub_255CD6448()
{
  sub_255D07728();
  sub_255D07058();

  return sub_255D07768();
}

double sub_255CD64A4(uint64_t a1)
{
  sub_255D07058();

  return result;
}

uint64_t sub_255CD64E4()
{
  sub_255D07728();
  sub_255D07058();

  return sub_255D07768();
}

uint64_t sub_255CD653C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255CDC68C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_255CD6588()
{
  v1 = *v0;
  sub_255D07728();
  sub_255CD68F8(v3, v1);
  return sub_255D07768();
}

uint64_t sub_255CD65D8()
{
  v1 = *v0;
  sub_255D07728();
  sub_255CD68F8(v3, v1);
  return sub_255D07768();
}

unint64_t sub_255CD662C()
{
  result = qword_27F7DF5B0;
  if (!qword_27F7DF5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF5B0);
  }

  return result;
}

unint64_t sub_255CD6684()
{
  result = qword_27F7DF5B8;
  if (!qword_27F7DF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF5B8);
  }

  return result;
}

unint64_t sub_255CD66DC()
{
  result = qword_27F7DF5C0;
  if (!qword_27F7DF5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF5C0);
  }

  return result;
}

unint64_t sub_255CD6734()
{
  result = qword_27F7DF5C8;
  if (!qword_27F7DF5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF5C8);
  }

  return result;
}

uint64_t sub_255CD6790(uint64_t a1)
{
  v3 = *v1;
  result = MEMORY[0x259C4BB60](*(*v1 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v6 += 32;
      sub_255C74200(v7, v8, v9, v10);
      sub_255D02110(a1, v7, v8, v9, v10);
      result = sub_255C7429C(v7, v8, v9, v10);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255CD6838()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v3 += 32;
      sub_255C74200(v4, v5, v6, v7);
      sub_255D02110(v9, v4, v5, v6, v7);
      sub_255C7429C(v4, v5, v6, v7);
      --v2;
    }

    while (v2);
  }

  return sub_255D07768();
}

void sub_255CD68F8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x259C4BB60](*(a2 + 16));
  v802 = *(a2 + 16);
  if (v802)
  {
    v4 = 0;
    v801 = a2 + 32;
LABEL_5:
    v803 = v4;
    v5 = *(v801 + 8 * v4);
    MEMORY[0x259C4BB60](*(v5 + 16));
    v813 = *(v5 + 16);
    if (!v813)
    {
      goto LABEL_4;
    }

    v808 = v5 + 32;

    v6 = 0;
    while (1)
    {
      v11 = v808 + 32 * v6;
      v12 = *(v11 + 8);
      v879 = *v11;
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      v859 = v6;
      if (v14 <= 3)
      {
        break;
      }

      if (v14 <= 5)
      {
        v811 = v12;
        v837 = v13;
        if (v14 == 4)
        {
          MEMORY[0x259C4BB60](6);
          MEMORY[0x259C4BB60](*(v879 + 16));
          v60 = *(v879 + 16);
          if (!v60)
          {
            goto LABEL_9;
          }

          v61 = v879 + 32;

          v62 = 0;
          v805 = v60;
          while (1)
          {
            v286 = v61 + 32 * v62;
            v288 = *v286;
            v287 = *(v286 + 8);
            v289 = *(v286 + 16);
            v290 = *(v286 + 24);
            if (v290 > 3)
            {
              if (v290 > 5)
              {
                if (v290 != 6)
                {
                  if (v290 != 7)
                  {
                    if (v289 | v287 | v288)
                    {
                      MEMORY[0x259C4BB60](2);
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](1);
                    }

                    goto LABEL_288;
                  }

                  MEMORY[0x259C4BB60](9);

                  sub_255D07058();
                  MEMORY[0x259C4BB60](*(v289 + 16));
                  v291 = *(v289 + 16);
                  if (!v291)
                  {
                    sub_255C7429C(v288, v287, v289, 7u);
                    goto LABEL_288;
                  }

                  v819 = v288;
                  v844 = v289;
                  v856 = v62;
                  v292 = 0;
                  v293 = v289 + 32;
                  v886 = *(v289 + 16);
                  v865 = v289 + 32;
                  while (1)
                  {
                    v294 = v293 + 32 * v292;
                    v295 = *v294;
                    v296 = *(v294 + 8);
                    v297 = *(v294 + 16);
                    v298 = *(v294 + 24);
                    if (v298 <= 3)
                    {
                      if (v298 <= 1)
                      {
                        if (v298)
                        {
                          MEMORY[0x259C4BB60](3);

                          sub_255D07058();
                          sub_255C7429C(v295, v296, v297, 1u);
                        }

                        else
                        {
                          MEMORY[0x259C4BB60](0);

                          sub_255D07058();
                          sub_255C7429C(v295, v296, v297, 0);
                        }

                        goto LABEL_296;
                      }

                      if (v298 == 2)
                      {
                        MEMORY[0x259C4BB60](4);

                        sub_255D07058();
                        sub_255C7429C(v295, v296, v297, 2u);
                        goto LABEL_296;
                      }

                      v929 = v297;
                      MEMORY[0x259C4BB60](5);
                      MEMORY[0x259C4BB60](*(v295 + 16));
                      v321 = *(v295 + 16);
                      if (!v321)
                      {
                        goto LABEL_296;
                      }

                      v322 = (v295 + 56);
                      do
                      {
                        v323 = *(v322 - 3);
                        v324 = *(v322 - 2);
                        v325 = *(v322 - 1);
                        v326 = *v322;
                        v322 += 32;
                        sub_255C74200(v323, v324, v325, v326);
                        sub_255D02110(a1, v323, v324, v325, v326);
                        sub_255C7429C(v323, v324, v325, v326);
                        --v321;
                      }

                      while (v321);
                      v305 = v295;
                      v306 = v296;
                      v307 = v929;
                      v308 = 3;
                    }

                    else if (v298 <= 5)
                    {
                      v927 = v297;
                      if (v298 == 4)
                      {
                        MEMORY[0x259C4BB60](6);
                        MEMORY[0x259C4BB60](*(v295 + 16));
                        v309 = *(v295 + 16);
                        if (!v309)
                        {
                          goto LABEL_296;
                        }

                        v310 = (v295 + 56);
                        do
                        {
                          v311 = *(v310 - 3);
                          v312 = *(v310 - 2);
                          v313 = *(v310 - 1);
                          v314 = *v310;
                          v310 += 32;
                          sub_255C74200(v311, v312, v313, v314);
                          sub_255D02110(a1, v311, v312, v313, v314);
                          sub_255C7429C(v311, v312, v313, v314);
                          --v309;
                        }

                        while (v309);
                        v305 = v295;
                        v306 = v296;
                        v307 = v927;
                        v308 = 4;
                      }

                      else
                      {
                        MEMORY[0x259C4BB60](7);
                        MEMORY[0x259C4BB60](*(v295 + 16));
                        v327 = *(v295 + 16);
                        if (!v327)
                        {
                          goto LABEL_296;
                        }

                        v328 = (v295 + 56);
                        do
                        {
                          v329 = *(v328 - 3);
                          v330 = *(v328 - 2);
                          v331 = *(v328 - 1);
                          v332 = *v328;
                          v328 += 32;
                          sub_255C74200(v329, v330, v331, v332);
                          sub_255D02110(a1, v329, v330, v331, v332);
                          sub_255C7429C(v329, v330, v331, v332);
                          --v327;
                        }

                        while (v327);
                        v305 = v295;
                        v306 = v296;
                        v307 = v927;
                        v308 = 5;
                      }
                    }

                    else if (v298 == 6)
                    {
                      MEMORY[0x259C4BB60](8);

                      sub_255D07058();
                      MEMORY[0x259C4BB60](*(v297 + 16));
                      v315 = *(v297 + 16);
                      if (!v315)
                      {
                        sub_255C7429C(v295, v296, v297, 6u);
                        goto LABEL_296;
                      }

                      v928 = v297;
                      v316 = (v297 + 56);
                      do
                      {
                        v317 = *(v316 - 3);
                        v318 = *(v316 - 2);
                        v319 = *(v316 - 1);
                        v320 = *v316;
                        v316 += 32;
                        sub_255C74200(v317, v318, v319, v320);
                        sub_255D02110(a1, v317, v318, v319, v320);
                        sub_255C7429C(v317, v318, v319, v320);
                        --v315;
                      }

                      while (v315);
                      v305 = v295;
                      v306 = v296;
                      v307 = v928;
                      v308 = 6;
                    }

                    else
                    {
                      if (v298 != 7)
                      {
                        if (v297 | v296 | v295)
                        {
                          MEMORY[0x259C4BB60](2);
                        }

                        else
                        {
                          MEMORY[0x259C4BB60](1);
                        }

                        goto LABEL_296;
                      }

                      MEMORY[0x259C4BB60](9);

                      sub_255D07058();
                      MEMORY[0x259C4BB60](*(v297 + 16));
                      v299 = *(v297 + 16);
                      if (!v299)
                      {
                        sub_255C7429C(v295, v296, v297, 7u);
                        goto LABEL_296;
                      }

                      v926 = v297;
                      v300 = (v297 + 56);
                      do
                      {
                        v301 = *(v300 - 3);
                        v302 = *(v300 - 2);
                        v303 = *(v300 - 1);
                        v304 = *v300;
                        v300 += 32;
                        sub_255C74200(v301, v302, v303, v304);
                        sub_255D02110(a1, v301, v302, v303, v304);
                        sub_255C7429C(v301, v302, v303, v304);
                        --v299;
                      }

                      while (v299);
                      v305 = v295;
                      v306 = v296;
                      v307 = v926;
                      v308 = 7;
                    }

                    sub_255C7429C(v305, v306, v307, v308);
                    v291 = v886;
                    v293 = v865;
LABEL_296:
                    if (++v292 == v291)
                    {
                      v282 = v819;
                      v283 = v287;
                      v284 = v844;
                      v285 = 7;
                      goto LABEL_287;
                    }
                  }
                }

                MEMORY[0x259C4BB60](8);

                sub_255D07058();
                MEMORY[0x259C4BB60](*(v289 + 16));
                v375 = *(v289 + 16);
                if (!v375)
                {
                  sub_255C7429C(v288, v287, v289, 6u);
                  goto LABEL_288;
                }

                v821 = v288;
                v846 = v289;
                v856 = v62;
                v376 = 0;
                v377 = v289 + 32;
                v888 = *(v289 + 16);
                v867 = v289 + 32;
                while (1)
                {
                  v378 = v377 + 32 * v376;
                  v379 = *v378;
                  v380 = *(v378 + 8);
                  v381 = *(v378 + 16);
                  v382 = *(v378 + 24);
                  if (v382 <= 3)
                  {
                    if (v382 <= 1)
                    {
                      if (v382)
                      {
                        MEMORY[0x259C4BB60](3);

                        sub_255D07058();
                        sub_255C7429C(v379, v380, v381, 1u);
                      }

                      else
                      {
                        MEMORY[0x259C4BB60](0);

                        sub_255D07058();
                        sub_255C7429C(v379, v380, v381, 0);
                      }

                      goto LABEL_382;
                    }

                    if (v382 == 2)
                    {
                      MEMORY[0x259C4BB60](4);

                      sub_255D07058();
                      sub_255C7429C(v379, v380, v381, 2u);
                      goto LABEL_382;
                    }

                    v937 = v381;
                    MEMORY[0x259C4BB60](5);
                    MEMORY[0x259C4BB60](*(v379 + 16));
                    v405 = *(v379 + 16);
                    if (!v405)
                    {
                      goto LABEL_382;
                    }

                    v406 = (v379 + 56);
                    do
                    {
                      v407 = *(v406 - 3);
                      v408 = *(v406 - 2);
                      v409 = *(v406 - 1);
                      v410 = *v406;
                      v406 += 32;
                      sub_255C74200(v407, v408, v409, v410);
                      sub_255D02110(a1, v407, v408, v409, v410);
                      sub_255C7429C(v407, v408, v409, v410);
                      --v405;
                    }

                    while (v405);
                    v389 = v379;
                    v390 = v380;
                    v391 = v937;
                    v392 = 3;
                  }

                  else if (v382 <= 5)
                  {
                    v935 = v381;
                    if (v382 == 4)
                    {
                      MEMORY[0x259C4BB60](6);
                      MEMORY[0x259C4BB60](*(v379 + 16));
                      v393 = *(v379 + 16);
                      if (!v393)
                      {
                        goto LABEL_382;
                      }

                      v394 = (v379 + 56);
                      do
                      {
                        v395 = *(v394 - 3);
                        v396 = *(v394 - 2);
                        v397 = *(v394 - 1);
                        v398 = *v394;
                        v394 += 32;
                        sub_255C74200(v395, v396, v397, v398);
                        sub_255D02110(a1, v395, v396, v397, v398);
                        sub_255C7429C(v395, v396, v397, v398);
                        --v393;
                      }

                      while (v393);
                      v389 = v379;
                      v390 = v380;
                      v391 = v935;
                      v392 = 4;
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](7);
                      MEMORY[0x259C4BB60](*(v379 + 16));
                      v411 = *(v379 + 16);
                      if (!v411)
                      {
                        goto LABEL_382;
                      }

                      v412 = (v379 + 56);
                      do
                      {
                        v413 = *(v412 - 3);
                        v414 = *(v412 - 2);
                        v415 = *(v412 - 1);
                        v416 = *v412;
                        v412 += 32;
                        sub_255C74200(v413, v414, v415, v416);
                        sub_255D02110(a1, v413, v414, v415, v416);
                        sub_255C7429C(v413, v414, v415, v416);
                        --v411;
                      }

                      while (v411);
                      v389 = v379;
                      v390 = v380;
                      v391 = v935;
                      v392 = 5;
                    }
                  }

                  else if (v382 == 6)
                  {
                    MEMORY[0x259C4BB60](8);

                    sub_255D07058();
                    MEMORY[0x259C4BB60](*(v381 + 16));
                    v399 = *(v381 + 16);
                    if (!v399)
                    {
                      sub_255C7429C(v379, v380, v381, 6u);
                      goto LABEL_382;
                    }

                    v936 = v381;
                    v400 = (v381 + 56);
                    do
                    {
                      v401 = *(v400 - 3);
                      v402 = *(v400 - 2);
                      v403 = *(v400 - 1);
                      v404 = *v400;
                      v400 += 32;
                      sub_255C74200(v401, v402, v403, v404);
                      sub_255D02110(a1, v401, v402, v403, v404);
                      sub_255C7429C(v401, v402, v403, v404);
                      --v399;
                    }

                    while (v399);
                    v389 = v379;
                    v390 = v380;
                    v391 = v936;
                    v392 = 6;
                  }

                  else
                  {
                    if (v382 != 7)
                    {
                      if (v381 | v380 | v379)
                      {
                        MEMORY[0x259C4BB60](2);
                      }

                      else
                      {
                        MEMORY[0x259C4BB60](1);
                      }

                      goto LABEL_382;
                    }

                    MEMORY[0x259C4BB60](9);

                    sub_255D07058();
                    MEMORY[0x259C4BB60](*(v381 + 16));
                    v383 = *(v381 + 16);
                    if (!v383)
                    {
                      sub_255C7429C(v379, v380, v381, 7u);
                      goto LABEL_382;
                    }

                    v934 = v381;
                    v384 = (v381 + 56);
                    do
                    {
                      v385 = *(v384 - 3);
                      v386 = *(v384 - 2);
                      v387 = *(v384 - 1);
                      v388 = *v384;
                      v384 += 32;
                      sub_255C74200(v385, v386, v387, v388);
                      sub_255D02110(a1, v385, v386, v387, v388);
                      sub_255C7429C(v385, v386, v387, v388);
                      --v383;
                    }

                    while (v383);
                    v389 = v379;
                    v390 = v380;
                    v391 = v934;
                    v392 = 7;
                  }

                  sub_255C7429C(v389, v390, v391, v392);
                  v375 = v888;
                  v377 = v867;
LABEL_382:
                  if (++v376 == v375)
                  {
                    v282 = v821;
                    v283 = v287;
                    v284 = v846;
                    v285 = 6;
                    goto LABEL_287;
                  }
                }
              }

              if (v290 == 4)
              {
                MEMORY[0x259C4BB60](6);
                MEMORY[0x259C4BB60](*(v288 + 16));
                v333 = *(v288 + 16);
                if (!v333)
                {
                  goto LABEL_288;
                }

                v820 = v288;
                v845 = v289;
                v856 = v62;
                v334 = v288 + 32;

                v335 = 0;
                v887 = v333;
                v866 = v334;
                while (1)
                {
                  v336 = v334 + 32 * v335;
                  v337 = *v336;
                  v338 = *(v336 + 8);
                  v339 = *(v336 + 16);
                  v340 = *(v336 + 24);
                  if (v340 <= 3)
                  {
                    if (v340 <= 1)
                    {
                      if (v340)
                      {
                        MEMORY[0x259C4BB60](3);

                        sub_255D07058();
                        sub_255C7429C(v337, v338, v339, 1u);
                      }

                      else
                      {
                        MEMORY[0x259C4BB60](0);

                        sub_255D07058();
                        sub_255C7429C(v337, v338, v339, 0);
                      }

                      goto LABEL_342;
                    }

                    if (v340 == 2)
                    {
                      MEMORY[0x259C4BB60](4);

                      sub_255D07058();
                      sub_255C7429C(v337, v338, v339, 2u);
                      goto LABEL_342;
                    }

                    v933 = v339;
                    MEMORY[0x259C4BB60](5);
                    MEMORY[0x259C4BB60](*(v337 + 16));
                    v363 = *(v337 + 16);
                    if (!v363)
                    {
                      goto LABEL_342;
                    }

                    v364 = (v337 + 56);
                    do
                    {
                      v365 = *(v364 - 3);
                      v366 = *(v364 - 2);
                      v367 = *(v364 - 1);
                      v368 = *v364;
                      v364 += 32;
                      sub_255C74200(v365, v366, v367, v368);
                      sub_255D02110(a1, v365, v366, v367, v368);
                      sub_255C7429C(v365, v366, v367, v368);
                      --v363;
                    }

                    while (v363);
                    v347 = v337;
                    v348 = v338;
                    v349 = v933;
                    v350 = 3;
                  }

                  else if (v340 <= 5)
                  {
                    v931 = v339;
                    if (v340 == 4)
                    {
                      MEMORY[0x259C4BB60](6);
                      MEMORY[0x259C4BB60](*(v337 + 16));
                      v351 = *(v337 + 16);
                      if (!v351)
                      {
                        goto LABEL_342;
                      }

                      v352 = (v337 + 56);
                      do
                      {
                        v353 = *(v352 - 3);
                        v354 = *(v352 - 2);
                        v355 = *(v352 - 1);
                        v356 = *v352;
                        v352 += 32;
                        sub_255C74200(v353, v354, v355, v356);
                        sub_255D02110(a1, v353, v354, v355, v356);
                        sub_255C7429C(v353, v354, v355, v356);
                        --v351;
                      }

                      while (v351);
                      v347 = v337;
                      v348 = v338;
                      v349 = v931;
                      v350 = 4;
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](7);
                      MEMORY[0x259C4BB60](*(v337 + 16));
                      v369 = *(v337 + 16);
                      if (!v369)
                      {
                        goto LABEL_342;
                      }

                      v370 = (v337 + 56);
                      do
                      {
                        v371 = *(v370 - 3);
                        v372 = *(v370 - 2);
                        v373 = *(v370 - 1);
                        v374 = *v370;
                        v370 += 32;
                        sub_255C74200(v371, v372, v373, v374);
                        sub_255D02110(a1, v371, v372, v373, v374);
                        sub_255C7429C(v371, v372, v373, v374);
                        --v369;
                      }

                      while (v369);
                      v347 = v337;
                      v348 = v338;
                      v349 = v931;
                      v350 = 5;
                    }
                  }

                  else if (v340 == 6)
                  {
                    MEMORY[0x259C4BB60](8);

                    sub_255D07058();
                    MEMORY[0x259C4BB60](*(v339 + 16));
                    v357 = *(v339 + 16);
                    if (!v357)
                    {
                      sub_255C7429C(v337, v338, v339, 6u);
                      goto LABEL_342;
                    }

                    v932 = v339;
                    v358 = (v339 + 56);
                    do
                    {
                      v359 = *(v358 - 3);
                      v360 = *(v358 - 2);
                      v361 = *(v358 - 1);
                      v362 = *v358;
                      v358 += 32;
                      sub_255C74200(v359, v360, v361, v362);
                      sub_255D02110(a1, v359, v360, v361, v362);
                      sub_255C7429C(v359, v360, v361, v362);
                      --v357;
                    }

                    while (v357);
                    v347 = v337;
                    v348 = v338;
                    v349 = v932;
                    v350 = 6;
                  }

                  else
                  {
                    if (v340 != 7)
                    {
                      if (v339 | v338 | v337)
                      {
                        MEMORY[0x259C4BB60](2);
                      }

                      else
                      {
                        MEMORY[0x259C4BB60](1);
                      }

                      goto LABEL_342;
                    }

                    MEMORY[0x259C4BB60](9);

                    sub_255D07058();
                    MEMORY[0x259C4BB60](*(v339 + 16));
                    v341 = *(v339 + 16);
                    if (!v341)
                    {
                      sub_255C7429C(v337, v338, v339, 7u);
                      goto LABEL_342;
                    }

                    v930 = v339;
                    v342 = (v339 + 56);
                    do
                    {
                      v343 = *(v342 - 3);
                      v344 = *(v342 - 2);
                      v345 = *(v342 - 1);
                      v346 = *v342;
                      v342 += 32;
                      sub_255C74200(v343, v344, v345, v346);
                      sub_255D02110(a1, v343, v344, v345, v346);
                      sub_255C7429C(v343, v344, v345, v346);
                      --v341;
                    }

                    while (v341);
                    v347 = v337;
                    v348 = v338;
                    v349 = v930;
                    v350 = 7;
                  }

                  sub_255C7429C(v347, v348, v349, v350);
                  v333 = v887;
                  v334 = v866;
LABEL_342:
                  if (++v335 == v333)
                  {
                    v282 = v820;
                    v283 = v287;
                    v284 = v845;
                    v285 = 4;
                    goto LABEL_287;
                  }
                }
              }

              MEMORY[0x259C4BB60](7);
              MEMORY[0x259C4BB60](*(v288 + 16));
              v459 = *(v288 + 16);
              if (!v459)
              {
                goto LABEL_288;
              }

              v823 = v288;
              v848 = v289;
              v856 = v62;
              v460 = v288 + 32;

              v461 = 0;
              v890 = v459;
              v869 = v460;
              while (1)
              {
                v462 = v460 + 32 * v461;
                v463 = *v462;
                v464 = *(v462 + 8);
                v465 = *(v462 + 16);
                v466 = *(v462 + 24);
                if (v466 <= 3)
                {
                  if (v466 <= 1)
                  {
                    if (v466)
                    {
                      MEMORY[0x259C4BB60](3);

                      sub_255D07058();
                      sub_255C7429C(v463, v464, v465, 1u);
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](0);

                      sub_255D07058();
                      sub_255C7429C(v463, v464, v465, 0);
                    }

                    goto LABEL_465;
                  }

                  if (v466 == 2)
                  {
                    MEMORY[0x259C4BB60](4);

                    sub_255D07058();
                    sub_255C7429C(v463, v464, v465, 2u);
                    goto LABEL_465;
                  }

                  v945 = v465;
                  MEMORY[0x259C4BB60](5);
                  MEMORY[0x259C4BB60](*(v463 + 16));
                  v489 = *(v463 + 16);
                  if (!v489)
                  {
                    goto LABEL_465;
                  }

                  v490 = (v463 + 56);
                  do
                  {
                    v491 = *(v490 - 3);
                    v492 = *(v490 - 2);
                    v493 = *(v490 - 1);
                    v494 = *v490;
                    v490 += 32;
                    sub_255C74200(v491, v492, v493, v494);
                    sub_255D02110(a1, v491, v492, v493, v494);
                    sub_255C7429C(v491, v492, v493, v494);
                    --v489;
                  }

                  while (v489);
                  v473 = v463;
                  v474 = v464;
                  v475 = v945;
                  v476 = 3;
                }

                else if (v466 <= 5)
                {
                  v943 = v465;
                  if (v466 == 4)
                  {
                    MEMORY[0x259C4BB60](6);
                    MEMORY[0x259C4BB60](*(v463 + 16));
                    v477 = *(v463 + 16);
                    if (!v477)
                    {
                      goto LABEL_465;
                    }

                    v478 = (v463 + 56);
                    do
                    {
                      v479 = *(v478 - 3);
                      v480 = *(v478 - 2);
                      v481 = *(v478 - 1);
                      v482 = *v478;
                      v478 += 32;
                      sub_255C74200(v479, v480, v481, v482);
                      sub_255D02110(a1, v479, v480, v481, v482);
                      sub_255C7429C(v479, v480, v481, v482);
                      --v477;
                    }

                    while (v477);
                    v473 = v463;
                    v474 = v464;
                    v475 = v943;
                    v476 = 4;
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](7);
                    MEMORY[0x259C4BB60](*(v463 + 16));
                    v495 = *(v463 + 16);
                    if (!v495)
                    {
                      goto LABEL_465;
                    }

                    v496 = (v463 + 56);
                    do
                    {
                      v497 = *(v496 - 3);
                      v498 = *(v496 - 2);
                      v499 = *(v496 - 1);
                      v500 = *v496;
                      v496 += 32;
                      sub_255C74200(v497, v498, v499, v500);
                      sub_255D02110(a1, v497, v498, v499, v500);
                      sub_255C7429C(v497, v498, v499, v500);
                      --v495;
                    }

                    while (v495);
                    v473 = v463;
                    v474 = v464;
                    v475 = v943;
                    v476 = 5;
                  }
                }

                else if (v466 == 6)
                {
                  MEMORY[0x259C4BB60](8);

                  sub_255D07058();
                  MEMORY[0x259C4BB60](*(v465 + 16));
                  v483 = *(v465 + 16);
                  if (!v483)
                  {
                    sub_255C7429C(v463, v464, v465, 6u);
                    goto LABEL_465;
                  }

                  v944 = v465;
                  v484 = (v465 + 56);
                  do
                  {
                    v485 = *(v484 - 3);
                    v486 = *(v484 - 2);
                    v487 = *(v484 - 1);
                    v488 = *v484;
                    v484 += 32;
                    sub_255C74200(v485, v486, v487, v488);
                    sub_255D02110(a1, v485, v486, v487, v488);
                    sub_255C7429C(v485, v486, v487, v488);
                    --v483;
                  }

                  while (v483);
                  v473 = v463;
                  v474 = v464;
                  v475 = v944;
                  v476 = 6;
                }

                else
                {
                  if (v466 != 7)
                  {
                    if (v465 | v464 | v463)
                    {
                      MEMORY[0x259C4BB60](2);
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](1);
                    }

                    goto LABEL_465;
                  }

                  MEMORY[0x259C4BB60](9);

                  sub_255D07058();
                  MEMORY[0x259C4BB60](*(v465 + 16));
                  v467 = *(v465 + 16);
                  if (!v467)
                  {
                    sub_255C7429C(v463, v464, v465, 7u);
                    goto LABEL_465;
                  }

                  v942 = v465;
                  v468 = (v465 + 56);
                  do
                  {
                    v469 = *(v468 - 3);
                    v470 = *(v468 - 2);
                    v471 = *(v468 - 1);
                    v472 = *v468;
                    v468 += 32;
                    sub_255C74200(v469, v470, v471, v472);
                    sub_255D02110(a1, v469, v470, v471, v472);
                    sub_255C7429C(v469, v470, v471, v472);
                    --v467;
                  }

                  while (v467);
                  v473 = v463;
                  v474 = v464;
                  v475 = v942;
                  v476 = 7;
                }

                sub_255C7429C(v473, v474, v475, v476);
                v459 = v890;
                v460 = v869;
LABEL_465:
                if (++v461 == v459)
                {
                  v282 = v823;
                  v283 = v287;
                  v284 = v848;
                  v285 = 5;
LABEL_287:
                  sub_255C7429C(v282, v283, v284, v285);
                  v61 = v879 + 32;
                  v60 = v805;
                  v62 = v856;
                  goto LABEL_288;
                }
              }
            }

            if (v290 <= 1)
            {
              if (v290)
              {
                MEMORY[0x259C4BB60](3);

                sub_255D07058();
                sub_255C7429C(v288, v287, v289, 1u);
              }

              else
              {
                MEMORY[0x259C4BB60](0);

                sub_255D07058();
                sub_255C7429C(v288, v287, v289, 0);
              }

              goto LABEL_288;
            }

            if (v290 == 2)
            {
              MEMORY[0x259C4BB60](4);

              sub_255D07058();
              sub_255C7429C(v288, v287, v289, 2u);
              goto LABEL_288;
            }

            MEMORY[0x259C4BB60](5);
            MEMORY[0x259C4BB60](*(v288 + 16));
            v417 = *(v288 + 16);
            if (v417)
            {
              break;
            }

LABEL_288:
            if (++v62 == v60)
            {
              v7 = v879;
              v8 = v811;
              v9 = v837;
              v10 = 4;
              goto LABEL_8;
            }
          }

          v822 = v288;
          v847 = v289;
          v856 = v62;
          v418 = v288 + 32;

          v419 = 0;
          v889 = v417;
          v868 = v418;
          while (2)
          {
            v420 = v418 + 32 * v419;
            v421 = *v420;
            v422 = *(v420 + 8);
            v423 = *(v420 + 16);
            v424 = *(v420 + 24);
            if (v424 <= 3)
            {
              if (v424 <= 1)
              {
                if (v424)
                {
                  MEMORY[0x259C4BB60](3);

                  sub_255D07058();
                  sub_255C7429C(v421, v422, v423, 1u);
                }

                else
                {
                  MEMORY[0x259C4BB60](0);

                  sub_255D07058();
                  sub_255C7429C(v421, v422, v423, 0);
                }

                goto LABEL_423;
              }

              if (v424 == 2)
              {
                MEMORY[0x259C4BB60](4);

                sub_255D07058();
                sub_255C7429C(v421, v422, v423, 2u);
                goto LABEL_423;
              }

              v941 = v423;
              MEMORY[0x259C4BB60](5);
              MEMORY[0x259C4BB60](*(v421 + 16));
              v447 = *(v421 + 16);
              if (!v447)
              {
LABEL_423:
                if (++v419 == v417)
                {
                  v282 = v822;
                  v283 = v287;
                  v284 = v847;
                  v285 = 3;
                  goto LABEL_287;
                }

                continue;
              }

              v448 = (v421 + 56);
              do
              {
                v449 = *(v448 - 3);
                v450 = *(v448 - 2);
                v451 = *(v448 - 1);
                v452 = *v448;
                v448 += 32;
                sub_255C74200(v449, v450, v451, v452);
                sub_255D02110(a1, v449, v450, v451, v452);
                sub_255C7429C(v449, v450, v451, v452);
                --v447;
              }

              while (v447);
              v431 = v421;
              v432 = v422;
              v433 = v941;
              v434 = 3;
            }

            else if (v424 <= 5)
            {
              v939 = v423;
              if (v424 == 4)
              {
                MEMORY[0x259C4BB60](6);
                MEMORY[0x259C4BB60](*(v421 + 16));
                v435 = *(v421 + 16);
                if (!v435)
                {
                  goto LABEL_423;
                }

                v436 = (v421 + 56);
                do
                {
                  v437 = *(v436 - 3);
                  v438 = *(v436 - 2);
                  v439 = *(v436 - 1);
                  v440 = *v436;
                  v436 += 32;
                  sub_255C74200(v437, v438, v439, v440);
                  sub_255D02110(a1, v437, v438, v439, v440);
                  sub_255C7429C(v437, v438, v439, v440);
                  --v435;
                }

                while (v435);
                v431 = v421;
                v432 = v422;
                v433 = v939;
                v434 = 4;
              }

              else
              {
                MEMORY[0x259C4BB60](7);
                MEMORY[0x259C4BB60](*(v421 + 16));
                v453 = *(v421 + 16);
                if (!v453)
                {
                  goto LABEL_423;
                }

                v454 = (v421 + 56);
                do
                {
                  v455 = *(v454 - 3);
                  v456 = *(v454 - 2);
                  v457 = *(v454 - 1);
                  v458 = *v454;
                  v454 += 32;
                  sub_255C74200(v455, v456, v457, v458);
                  sub_255D02110(a1, v455, v456, v457, v458);
                  sub_255C7429C(v455, v456, v457, v458);
                  --v453;
                }

                while (v453);
                v431 = v421;
                v432 = v422;
                v433 = v939;
                v434 = 5;
              }
            }

            else
            {
              if (v424 != 6)
              {
                if (v424 == 7)
                {
                  MEMORY[0x259C4BB60](9);

                  sub_255D07058();
                  MEMORY[0x259C4BB60](*(v423 + 16));
                  v425 = *(v423 + 16);
                  if (v425)
                  {
                    v938 = v423;
                    v426 = (v423 + 56);
                    do
                    {
                      v427 = *(v426 - 3);
                      v428 = *(v426 - 2);
                      v429 = *(v426 - 1);
                      v430 = *v426;
                      v426 += 32;
                      sub_255C74200(v427, v428, v429, v430);
                      sub_255D02110(a1, v427, v428, v429, v430);
                      sub_255C7429C(v427, v428, v429, v430);
                      --v425;
                    }

                    while (v425);
                    v431 = v421;
                    v432 = v422;
                    v433 = v938;
                    v434 = 7;
                    break;
                  }

                  sub_255C7429C(v421, v422, v423, 7u);
                }

                else if (v423 | v422 | v421)
                {
                  MEMORY[0x259C4BB60](2);
                }

                else
                {
                  MEMORY[0x259C4BB60](1);
                }

                goto LABEL_423;
              }

              MEMORY[0x259C4BB60](8);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v423 + 16));
              v441 = *(v423 + 16);
              if (!v441)
              {
                sub_255C7429C(v421, v422, v423, 6u);
                goto LABEL_423;
              }

              v940 = v423;
              v442 = (v423 + 56);
              do
              {
                v443 = *(v442 - 3);
                v444 = *(v442 - 2);
                v445 = *(v442 - 1);
                v446 = *v442;
                v442 += 32;
                sub_255C74200(v443, v444, v445, v446);
                sub_255D02110(a1, v443, v444, v445, v446);
                sub_255C7429C(v443, v444, v445, v446);
                --v441;
              }

              while (v441);
              v431 = v421;
              v432 = v422;
              v433 = v940;
              v434 = 6;
            }

            break;
          }

          sub_255C7429C(v431, v432, v433, v434);
          v417 = v889;
          v418 = v868;
          goto LABEL_423;
        }

        MEMORY[0x259C4BB60](7);
        MEMORY[0x259C4BB60](*(v879 + 16));
        v579 = *(v879 + 16);
        if (!v579)
        {
          goto LABEL_9;
        }

        v580 = v879 + 32;

        v581 = 0;
        v807 = v579;
        while (2)
        {
          v586 = v580 + 32 * v581;
          v588 = *v586;
          v587 = *(v586 + 8);
          v589 = *(v586 + 16);
          v590 = *(v586 + 24);
          if (v590 > 3)
          {
            if (v590 > 5)
            {
              if (v590 != 6)
              {
                if (v590 != 7)
                {
                  if (v589 | v587 | v588)
                  {
                    MEMORY[0x259C4BB60](2);
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](1);
                  }

                  goto LABEL_594;
                }

                MEMORY[0x259C4BB60](9);

                sub_255D07058();
                MEMORY[0x259C4BB60](*(v589 + 16));
                v591 = *(v589 + 16);
                if (!v591)
                {
                  sub_255C7429C(v588, v587, v589, 7u);
                  goto LABEL_594;
                }

                v825 = v588;
                v850 = v589;
                v858 = v581;
                v592 = 0;
                v593 = v589 + 32;
                v896 = *(v589 + 16);
                v874 = v589 + 32;
                while (2)
                {
                  v594 = v593 + 32 * v592;
                  v595 = *v594;
                  v596 = *(v594 + 8);
                  v597 = *(v594 + 16);
                  v598 = *(v594 + 24);
                  if (v598 <= 3)
                  {
                    if (v598 <= 1)
                    {
                      if (v598)
                      {
                        MEMORY[0x259C4BB60](3);

                        sub_255D07058();
                        sub_255C7429C(v595, v596, v597, 1u);
                      }

                      else
                      {
                        MEMORY[0x259C4BB60](0);

                        sub_255D07058();
                        sub_255C7429C(v595, v596, v597, 0);
                      }

                      goto LABEL_602;
                    }

                    if (v598 == 2)
                    {
                      MEMORY[0x259C4BB60](4);

                      sub_255D07058();
                      sub_255C7429C(v595, v596, v597, 2u);
                      goto LABEL_602;
                    }

                    v949 = v597;
                    MEMORY[0x259C4BB60](5);
                    MEMORY[0x259C4BB60](*(v595 + 16));
                    v621 = *(v595 + 16);
                    if (!v621)
                    {
LABEL_602:
                      if (++v592 == v591)
                      {
                        v582 = v825;
                        v583 = v587;
                        v584 = v850;
                        v585 = 7;
                        goto LABEL_593;
                      }

                      continue;
                    }

                    v622 = (v595 + 56);
                    do
                    {
                      v623 = *(v622 - 3);
                      v624 = *(v622 - 2);
                      v625 = *(v622 - 1);
                      v626 = *v622;
                      v622 += 32;
                      sub_255C74200(v623, v624, v625, v626);
                      sub_255D02110(a1, v623, v624, v625, v626);
                      sub_255C7429C(v623, v624, v625, v626);
                      --v621;
                    }

                    while (v621);
                    v605 = v595;
                    v606 = v596;
                    v607 = v949;
                    v608 = 3;
                  }

                  else if (v598 <= 5)
                  {
                    v947 = v597;
                    if (v598 == 4)
                    {
                      MEMORY[0x259C4BB60](6);
                      MEMORY[0x259C4BB60](*(v595 + 16));
                      v609 = *(v595 + 16);
                      if (!v609)
                      {
                        goto LABEL_602;
                      }

                      v610 = (v595 + 56);
                      do
                      {
                        v611 = *(v610 - 3);
                        v612 = *(v610 - 2);
                        v613 = *(v610 - 1);
                        v614 = *v610;
                        v610 += 32;
                        sub_255C74200(v611, v612, v613, v614);
                        sub_255D02110(a1, v611, v612, v613, v614);
                        sub_255C7429C(v611, v612, v613, v614);
                        --v609;
                      }

                      while (v609);
                      v605 = v595;
                      v606 = v596;
                      v607 = v947;
                      v608 = 4;
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](7);
                      MEMORY[0x259C4BB60](*(v595 + 16));
                      v627 = *(v595 + 16);
                      if (!v627)
                      {
                        goto LABEL_602;
                      }

                      v628 = (v595 + 56);
                      do
                      {
                        v629 = *(v628 - 3);
                        v630 = *(v628 - 2);
                        v631 = *(v628 - 1);
                        v632 = *v628;
                        v628 += 32;
                        sub_255C74200(v629, v630, v631, v632);
                        sub_255D02110(a1, v629, v630, v631, v632);
                        sub_255C7429C(v629, v630, v631, v632);
                        --v627;
                      }

                      while (v627);
                      v605 = v595;
                      v606 = v596;
                      v607 = v947;
                      v608 = 5;
                    }
                  }

                  else
                  {
                    if (v598 != 6)
                    {
                      if (v598 == 7)
                      {
                        MEMORY[0x259C4BB60](9);

                        sub_255D07058();
                        MEMORY[0x259C4BB60](*(v597 + 16));
                        v599 = *(v597 + 16);
                        if (v599)
                        {
                          v946 = v597;
                          v600 = (v597 + 56);
                          do
                          {
                            v601 = *(v600 - 3);
                            v602 = *(v600 - 2);
                            v603 = *(v600 - 1);
                            v604 = *v600;
                            v600 += 32;
                            sub_255C74200(v601, v602, v603, v604);
                            sub_255D02110(a1, v601, v602, v603, v604);
                            sub_255C7429C(v601, v602, v603, v604);
                            --v599;
                          }

                          while (v599);
                          v605 = v595;
                          v606 = v596;
                          v607 = v946;
                          v608 = 7;
                          break;
                        }

                        sub_255C7429C(v595, v596, v597, 7u);
                      }

                      else if (v597 | v596 | v595)
                      {
                        MEMORY[0x259C4BB60](2);
                      }

                      else
                      {
                        MEMORY[0x259C4BB60](1);
                      }

                      goto LABEL_602;
                    }

                    MEMORY[0x259C4BB60](8);

                    sub_255D07058();
                    MEMORY[0x259C4BB60](*(v597 + 16));
                    v615 = *(v597 + 16);
                    if (!v615)
                    {
                      sub_255C7429C(v595, v596, v597, 6u);
                      goto LABEL_602;
                    }

                    v948 = v597;
                    v616 = (v597 + 56);
                    do
                    {
                      v617 = *(v616 - 3);
                      v618 = *(v616 - 2);
                      v619 = *(v616 - 1);
                      v620 = *v616;
                      v616 += 32;
                      sub_255C74200(v617, v618, v619, v620);
                      sub_255D02110(a1, v617, v618, v619, v620);
                      sub_255C7429C(v617, v618, v619, v620);
                      --v615;
                    }

                    while (v615);
                    v605 = v595;
                    v606 = v596;
                    v607 = v948;
                    v608 = 6;
                  }

                  break;
                }

                sub_255C7429C(v605, v606, v607, v608);
                v591 = v896;
                v593 = v874;
                goto LABEL_602;
              }

              MEMORY[0x259C4BB60](8);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v589 + 16));
              v675 = *(v589 + 16);
              if (!v675)
              {
                sub_255C7429C(v588, v587, v589, 6u);
                goto LABEL_594;
              }

              v827 = v588;
              v852 = v589;
              v858 = v581;
              v676 = 0;
              v677 = v589 + 32;
              v898 = *(v589 + 16);
              v876 = v589 + 32;
              while (2)
              {
                v678 = v677 + 32 * v676;
                v679 = *v678;
                v680 = *(v678 + 8);
                v681 = *(v678 + 16);
                v682 = *(v678 + 24);
                if (v682 <= 3)
                {
                  if (v682 <= 1)
                  {
                    if (v682)
                    {
                      MEMORY[0x259C4BB60](3);

                      sub_255D07058();
                      sub_255C7429C(v679, v680, v681, 1u);
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](0);

                      sub_255D07058();
                      sub_255C7429C(v679, v680, v681, 0);
                    }

                    goto LABEL_688;
                  }

                  if (v682 == 2)
                  {
                    MEMORY[0x259C4BB60](4);

                    sub_255D07058();
                    sub_255C7429C(v679, v680, v681, 2u);
                    goto LABEL_688;
                  }

                  v957 = v681;
                  MEMORY[0x259C4BB60](5);
                  MEMORY[0x259C4BB60](*(v679 + 16));
                  v705 = *(v679 + 16);
                  if (!v705)
                  {
LABEL_688:
                    if (++v676 == v675)
                    {
                      v582 = v827;
                      v583 = v587;
                      v584 = v852;
                      v585 = 6;
                      goto LABEL_593;
                    }

                    continue;
                  }

                  v706 = (v679 + 56);
                  do
                  {
                    v707 = *(v706 - 3);
                    v708 = *(v706 - 2);
                    v709 = *(v706 - 1);
                    v710 = *v706;
                    v706 += 32;
                    sub_255C74200(v707, v708, v709, v710);
                    sub_255D02110(a1, v707, v708, v709, v710);
                    sub_255C7429C(v707, v708, v709, v710);
                    --v705;
                  }

                  while (v705);
                  v689 = v679;
                  v690 = v680;
                  v691 = v957;
                  v692 = 3;
                }

                else if (v682 <= 5)
                {
                  v955 = v681;
                  if (v682 == 4)
                  {
                    MEMORY[0x259C4BB60](6);
                    MEMORY[0x259C4BB60](*(v679 + 16));
                    v693 = *(v679 + 16);
                    if (!v693)
                    {
                      goto LABEL_688;
                    }

                    v694 = (v679 + 56);
                    do
                    {
                      v695 = *(v694 - 3);
                      v696 = *(v694 - 2);
                      v697 = *(v694 - 1);
                      v698 = *v694;
                      v694 += 32;
                      sub_255C74200(v695, v696, v697, v698);
                      sub_255D02110(a1, v695, v696, v697, v698);
                      sub_255C7429C(v695, v696, v697, v698);
                      --v693;
                    }

                    while (v693);
                    v689 = v679;
                    v690 = v680;
                    v691 = v955;
                    v692 = 4;
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](7);
                    MEMORY[0x259C4BB60](*(v679 + 16));
                    v711 = *(v679 + 16);
                    if (!v711)
                    {
                      goto LABEL_688;
                    }

                    v712 = (v679 + 56);
                    do
                    {
                      v713 = *(v712 - 3);
                      v714 = *(v712 - 2);
                      v715 = *(v712 - 1);
                      v716 = *v712;
                      v712 += 32;
                      sub_255C74200(v713, v714, v715, v716);
                      sub_255D02110(a1, v713, v714, v715, v716);
                      sub_255C7429C(v713, v714, v715, v716);
                      --v711;
                    }

                    while (v711);
                    v689 = v679;
                    v690 = v680;
                    v691 = v955;
                    v692 = 5;
                  }
                }

                else
                {
                  if (v682 != 6)
                  {
                    if (v682 == 7)
                    {
                      MEMORY[0x259C4BB60](9);

                      sub_255D07058();
                      MEMORY[0x259C4BB60](*(v681 + 16));
                      v683 = *(v681 + 16);
                      if (v683)
                      {
                        v954 = v681;
                        v684 = (v681 + 56);
                        do
                        {
                          v685 = *(v684 - 3);
                          v686 = *(v684 - 2);
                          v687 = *(v684 - 1);
                          v688 = *v684;
                          v684 += 32;
                          sub_255C74200(v685, v686, v687, v688);
                          sub_255D02110(a1, v685, v686, v687, v688);
                          sub_255C7429C(v685, v686, v687, v688);
                          --v683;
                        }

                        while (v683);
                        v689 = v679;
                        v690 = v680;
                        v691 = v954;
                        v692 = 7;
                        break;
                      }

                      sub_255C7429C(v679, v680, v681, 7u);
                    }

                    else if (v681 | v680 | v679)
                    {
                      MEMORY[0x259C4BB60](2);
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](1);
                    }

                    goto LABEL_688;
                  }

                  MEMORY[0x259C4BB60](8);

                  sub_255D07058();
                  MEMORY[0x259C4BB60](*(v681 + 16));
                  v699 = *(v681 + 16);
                  if (!v699)
                  {
                    sub_255C7429C(v679, v680, v681, 6u);
                    goto LABEL_688;
                  }

                  v956 = v681;
                  v700 = (v681 + 56);
                  do
                  {
                    v701 = *(v700 - 3);
                    v702 = *(v700 - 2);
                    v703 = *(v700 - 1);
                    v704 = *v700;
                    v700 += 32;
                    sub_255C74200(v701, v702, v703, v704);
                    sub_255D02110(a1, v701, v702, v703, v704);
                    sub_255C7429C(v701, v702, v703, v704);
                    --v699;
                  }

                  while (v699);
                  v689 = v679;
                  v690 = v680;
                  v691 = v956;
                  v692 = 6;
                }

                break;
              }

              sub_255C7429C(v689, v690, v691, v692);
              v675 = v898;
              v677 = v876;
              goto LABEL_688;
            }

            if (v590 == 4)
            {
              MEMORY[0x259C4BB60](6);
              MEMORY[0x259C4BB60](*(v588 + 16));
              v633 = *(v588 + 16);
              if (!v633)
              {
                goto LABEL_594;
              }

              v826 = v588;
              v851 = v589;
              v858 = v581;
              v634 = v588 + 32;

              v635 = 0;
              v897 = v633;
              v875 = v634;
              while (2)
              {
                v636 = v634 + 32 * v635;
                v637 = *v636;
                v638 = *(v636 + 8);
                v639 = *(v636 + 16);
                v640 = *(v636 + 24);
                if (v640 <= 3)
                {
                  if (v640 <= 1)
                  {
                    if (v640)
                    {
                      MEMORY[0x259C4BB60](3);

                      sub_255D07058();
                      sub_255C7429C(v637, v638, v639, 1u);
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](0);

                      sub_255D07058();
                      sub_255C7429C(v637, v638, v639, 0);
                    }

                    goto LABEL_648;
                  }

                  if (v640 == 2)
                  {
                    MEMORY[0x259C4BB60](4);

                    sub_255D07058();
                    sub_255C7429C(v637, v638, v639, 2u);
                    goto LABEL_648;
                  }

                  v953 = v639;
                  MEMORY[0x259C4BB60](5);
                  MEMORY[0x259C4BB60](*(v637 + 16));
                  v663 = *(v637 + 16);
                  if (!v663)
                  {
LABEL_648:
                    if (++v635 == v633)
                    {
                      v582 = v826;
                      v583 = v587;
                      v584 = v851;
                      v585 = 4;
                      goto LABEL_593;
                    }

                    continue;
                  }

                  v664 = (v637 + 56);
                  do
                  {
                    v665 = *(v664 - 3);
                    v666 = *(v664 - 2);
                    v667 = *(v664 - 1);
                    v668 = *v664;
                    v664 += 32;
                    sub_255C74200(v665, v666, v667, v668);
                    sub_255D02110(a1, v665, v666, v667, v668);
                    sub_255C7429C(v665, v666, v667, v668);
                    --v663;
                  }

                  while (v663);
                  v647 = v637;
                  v648 = v638;
                  v649 = v953;
                  v650 = 3;
                }

                else if (v640 <= 5)
                {
                  v951 = v639;
                  if (v640 == 4)
                  {
                    MEMORY[0x259C4BB60](6);
                    MEMORY[0x259C4BB60](*(v637 + 16));
                    v651 = *(v637 + 16);
                    if (!v651)
                    {
                      goto LABEL_648;
                    }

                    v652 = (v637 + 56);
                    do
                    {
                      v653 = *(v652 - 3);
                      v654 = *(v652 - 2);
                      v655 = *(v652 - 1);
                      v656 = *v652;
                      v652 += 32;
                      sub_255C74200(v653, v654, v655, v656);
                      sub_255D02110(a1, v653, v654, v655, v656);
                      sub_255C7429C(v653, v654, v655, v656);
                      --v651;
                    }

                    while (v651);
                    v647 = v637;
                    v648 = v638;
                    v649 = v951;
                    v650 = 4;
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](7);
                    MEMORY[0x259C4BB60](*(v637 + 16));
                    v669 = *(v637 + 16);
                    if (!v669)
                    {
                      goto LABEL_648;
                    }

                    v670 = (v637 + 56);
                    do
                    {
                      v671 = *(v670 - 3);
                      v672 = *(v670 - 2);
                      v673 = *(v670 - 1);
                      v674 = *v670;
                      v670 += 32;
                      sub_255C74200(v671, v672, v673, v674);
                      sub_255D02110(a1, v671, v672, v673, v674);
                      sub_255C7429C(v671, v672, v673, v674);
                      --v669;
                    }

                    while (v669);
                    v647 = v637;
                    v648 = v638;
                    v649 = v951;
                    v650 = 5;
                  }
                }

                else
                {
                  if (v640 != 6)
                  {
                    if (v640 == 7)
                    {
                      MEMORY[0x259C4BB60](9);

                      sub_255D07058();
                      MEMORY[0x259C4BB60](*(v639 + 16));
                      v641 = *(v639 + 16);
                      if (v641)
                      {
                        v950 = v639;
                        v642 = (v639 + 56);
                        do
                        {
                          v643 = *(v642 - 3);
                          v644 = *(v642 - 2);
                          v645 = *(v642 - 1);
                          v646 = *v642;
                          v642 += 32;
                          sub_255C74200(v643, v644, v645, v646);
                          sub_255D02110(a1, v643, v644, v645, v646);
                          sub_255C7429C(v643, v644, v645, v646);
                          --v641;
                        }

                        while (v641);
                        v647 = v637;
                        v648 = v638;
                        v649 = v950;
                        v650 = 7;
                        break;
                      }

                      sub_255C7429C(v637, v638, v639, 7u);
                    }

                    else if (v639 | v638 | v637)
                    {
                      MEMORY[0x259C4BB60](2);
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](1);
                    }

                    goto LABEL_648;
                  }

                  MEMORY[0x259C4BB60](8);

                  sub_255D07058();
                  MEMORY[0x259C4BB60](*(v639 + 16));
                  v657 = *(v639 + 16);
                  if (!v657)
                  {
                    sub_255C7429C(v637, v638, v639, 6u);
                    goto LABEL_648;
                  }

                  v952 = v639;
                  v658 = (v639 + 56);
                  do
                  {
                    v659 = *(v658 - 3);
                    v660 = *(v658 - 2);
                    v661 = *(v658 - 1);
                    v662 = *v658;
                    v658 += 32;
                    sub_255C74200(v659, v660, v661, v662);
                    sub_255D02110(a1, v659, v660, v661, v662);
                    sub_255C7429C(v659, v660, v661, v662);
                    --v657;
                  }

                  while (v657);
                  v647 = v637;
                  v648 = v638;
                  v649 = v952;
                  v650 = 6;
                }

                break;
              }

              sub_255C7429C(v647, v648, v649, v650);
              v633 = v897;
              v634 = v875;
              goto LABEL_648;
            }

            MEMORY[0x259C4BB60](7);
            MEMORY[0x259C4BB60](*(v588 + 16));
            v759 = *(v588 + 16);
            if (!v759)
            {
              goto LABEL_594;
            }

            v829 = v588;
            v854 = v589;
            v858 = v581;
            v760 = v588 + 32;

            v761 = 0;
            v900 = v759;
            v878 = v760;
            while (2)
            {
              v762 = v760 + 32 * v761;
              v763 = *v762;
              v764 = *(v762 + 8);
              v765 = *(v762 + 16);
              v766 = *(v762 + 24);
              if (v766 <= 3)
              {
                if (v766 <= 1)
                {
                  if (v766)
                  {
                    MEMORY[0x259C4BB60](3);

                    sub_255D07058();
                    sub_255C7429C(v763, v764, v765, 1u);
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](0);

                    sub_255D07058();
                    sub_255C7429C(v763, v764, v765, 0);
                  }

                  goto LABEL_771;
                }

                if (v766 == 2)
                {
                  MEMORY[0x259C4BB60](4);

                  sub_255D07058();
                  sub_255C7429C(v763, v764, v765, 2u);
                  goto LABEL_771;
                }

                v965 = v765;
                MEMORY[0x259C4BB60](5);
                MEMORY[0x259C4BB60](*(v763 + 16));
                v789 = *(v763 + 16);
                if (!v789)
                {
LABEL_771:
                  if (++v761 == v759)
                  {
                    v582 = v829;
                    v583 = v587;
                    v584 = v854;
                    v585 = 5;
LABEL_593:
                    sub_255C7429C(v582, v583, v584, v585);
                    v580 = v879 + 32;
                    v579 = v807;
                    v581 = v858;
                    goto LABEL_594;
                  }

                  continue;
                }

                v790 = (v763 + 56);
                do
                {
                  v791 = *(v790 - 3);
                  v792 = *(v790 - 2);
                  v793 = *(v790 - 1);
                  v794 = *v790;
                  v790 += 32;
                  sub_255C74200(v791, v792, v793, v794);
                  sub_255D02110(a1, v791, v792, v793, v794);
                  sub_255C7429C(v791, v792, v793, v794);
                  --v789;
                }

                while (v789);
                v773 = v763;
                v774 = v764;
                v775 = v965;
                v776 = 3;
              }

              else if (v766 <= 5)
              {
                v963 = v765;
                if (v766 == 4)
                {
                  MEMORY[0x259C4BB60](6);
                  MEMORY[0x259C4BB60](*(v763 + 16));
                  v777 = *(v763 + 16);
                  if (!v777)
                  {
                    goto LABEL_771;
                  }

                  v778 = (v763 + 56);
                  do
                  {
                    v779 = *(v778 - 3);
                    v780 = *(v778 - 2);
                    v781 = *(v778 - 1);
                    v782 = *v778;
                    v778 += 32;
                    sub_255C74200(v779, v780, v781, v782);
                    sub_255D02110(a1, v779, v780, v781, v782);
                    sub_255C7429C(v779, v780, v781, v782);
                    --v777;
                  }

                  while (v777);
                  v773 = v763;
                  v774 = v764;
                  v775 = v963;
                  v776 = 4;
                }

                else
                {
                  MEMORY[0x259C4BB60](7);
                  MEMORY[0x259C4BB60](*(v763 + 16));
                  v795 = *(v763 + 16);
                  if (!v795)
                  {
                    goto LABEL_771;
                  }

                  v796 = (v763 + 56);
                  do
                  {
                    v797 = *(v796 - 3);
                    v798 = *(v796 - 2);
                    v799 = *(v796 - 1);
                    v800 = *v796;
                    v796 += 32;
                    sub_255C74200(v797, v798, v799, v800);
                    sub_255D02110(a1, v797, v798, v799, v800);
                    sub_255C7429C(v797, v798, v799, v800);
                    --v795;
                  }

                  while (v795);
                  v773 = v763;
                  v774 = v764;
                  v775 = v963;
                  v776 = 5;
                }
              }

              else
              {
                if (v766 != 6)
                {
                  if (v766 == 7)
                  {
                    MEMORY[0x259C4BB60](9);

                    sub_255D07058();
                    MEMORY[0x259C4BB60](*(v765 + 16));
                    v767 = *(v765 + 16);
                    if (v767)
                    {
                      v962 = v765;
                      v768 = (v765 + 56);
                      do
                      {
                        v769 = *(v768 - 3);
                        v770 = *(v768 - 2);
                        v771 = *(v768 - 1);
                        v772 = *v768;
                        v768 += 32;
                        sub_255C74200(v769, v770, v771, v772);
                        sub_255D02110(a1, v769, v770, v771, v772);
                        sub_255C7429C(v769, v770, v771, v772);
                        --v767;
                      }

                      while (v767);
                      v773 = v763;
                      v774 = v764;
                      v775 = v962;
                      v776 = 7;
                      break;
                    }

                    sub_255C7429C(v763, v764, v765, 7u);
                  }

                  else if (v765 | v764 | v763)
                  {
                    MEMORY[0x259C4BB60](2);
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](1);
                  }

                  goto LABEL_771;
                }

                MEMORY[0x259C4BB60](8);

                sub_255D07058();
                MEMORY[0x259C4BB60](*(v765 + 16));
                v783 = *(v765 + 16);
                if (!v783)
                {
                  sub_255C7429C(v763, v764, v765, 6u);
                  goto LABEL_771;
                }

                v964 = v765;
                v784 = (v765 + 56);
                do
                {
                  v785 = *(v784 - 3);
                  v786 = *(v784 - 2);
                  v787 = *(v784 - 1);
                  v788 = *v784;
                  v784 += 32;
                  sub_255C74200(v785, v786, v787, v788);
                  sub_255D02110(a1, v785, v786, v787, v788);
                  sub_255C7429C(v785, v786, v787, v788);
                  --v783;
                }

                while (v783);
                v773 = v763;
                v774 = v764;
                v775 = v964;
                v776 = 6;
              }

              break;
            }

            sub_255C7429C(v773, v774, v775, v776);
            v759 = v900;
            v760 = v878;
            goto LABEL_771;
          }

          if (v590 <= 1)
          {
            if (v590)
            {
              MEMORY[0x259C4BB60](3);

              sub_255D07058();
              sub_255C7429C(v588, v587, v589, 1u);
            }

            else
            {
              MEMORY[0x259C4BB60](0);

              sub_255D07058();
              sub_255C7429C(v588, v587, v589, 0);
            }

            goto LABEL_594;
          }

          if (v590 == 2)
          {
            MEMORY[0x259C4BB60](4);

            sub_255D07058();
            sub_255C7429C(v588, v587, v589, 2u);
            goto LABEL_594;
          }

          MEMORY[0x259C4BB60](5);
          MEMORY[0x259C4BB60](*(v588 + 16));
          v717 = *(v588 + 16);
          if (!v717)
          {
LABEL_594:
            if (++v581 == v579)
            {
              v7 = v879;
              v8 = v811;
              v9 = v837;
              v10 = 5;
              goto LABEL_8;
            }

            continue;
          }

          break;
        }

        v828 = v588;
        v853 = v589;
        v858 = v581;
        v718 = v588 + 32;

        v719 = 0;
        v899 = v717;
        v877 = v718;
        while (2)
        {
          v720 = v718 + 32 * v719;
          v721 = *v720;
          v722 = *(v720 + 8);
          v723 = *(v720 + 16);
          v724 = *(v720 + 24);
          if (v724 <= 3)
          {
            if (v724 <= 1)
            {
              if (v724)
              {
                MEMORY[0x259C4BB60](3);

                sub_255D07058();
                sub_255C7429C(v721, v722, v723, 1u);
              }

              else
              {
                MEMORY[0x259C4BB60](0);

                sub_255D07058();
                sub_255C7429C(v721, v722, v723, 0);
              }

              goto LABEL_729;
            }

            if (v724 == 2)
            {
              MEMORY[0x259C4BB60](4);

              sub_255D07058();
              sub_255C7429C(v721, v722, v723, 2u);
              goto LABEL_729;
            }

            v961 = v723;
            MEMORY[0x259C4BB60](5);
            MEMORY[0x259C4BB60](*(v721 + 16));
            v747 = *(v721 + 16);
            if (!v747)
            {
LABEL_729:
              if (++v719 == v717)
              {
                v582 = v828;
                v583 = v587;
                v584 = v853;
                v585 = 3;
                goto LABEL_593;
              }

              continue;
            }

            v748 = (v721 + 56);
            do
            {
              v749 = *(v748 - 3);
              v750 = *(v748 - 2);
              v751 = *(v748 - 1);
              v752 = *v748;
              v748 += 32;
              sub_255C74200(v749, v750, v751, v752);
              sub_255D02110(a1, v749, v750, v751, v752);
              sub_255C7429C(v749, v750, v751, v752);
              --v747;
            }

            while (v747);
            v731 = v721;
            v732 = v722;
            v733 = v961;
            v734 = 3;
          }

          else if (v724 <= 5)
          {
            v959 = v723;
            if (v724 == 4)
            {
              MEMORY[0x259C4BB60](6);
              MEMORY[0x259C4BB60](*(v721 + 16));
              v735 = *(v721 + 16);
              if (!v735)
              {
                goto LABEL_729;
              }

              v736 = (v721 + 56);
              do
              {
                v737 = *(v736 - 3);
                v738 = *(v736 - 2);
                v739 = *(v736 - 1);
                v740 = *v736;
                v736 += 32;
                sub_255C74200(v737, v738, v739, v740);
                sub_255D02110(a1, v737, v738, v739, v740);
                sub_255C7429C(v737, v738, v739, v740);
                --v735;
              }

              while (v735);
              v731 = v721;
              v732 = v722;
              v733 = v959;
              v734 = 4;
            }

            else
            {
              MEMORY[0x259C4BB60](7);
              MEMORY[0x259C4BB60](*(v721 + 16));
              v753 = *(v721 + 16);
              if (!v753)
              {
                goto LABEL_729;
              }

              v754 = (v721 + 56);
              do
              {
                v755 = *(v754 - 3);
                v756 = *(v754 - 2);
                v757 = *(v754 - 1);
                v758 = *v754;
                v754 += 32;
                sub_255C74200(v755, v756, v757, v758);
                sub_255D02110(a1, v755, v756, v757, v758);
                sub_255C7429C(v755, v756, v757, v758);
                --v753;
              }

              while (v753);
              v731 = v721;
              v732 = v722;
              v733 = v959;
              v734 = 5;
            }
          }

          else
          {
            if (v724 != 6)
            {
              if (v724 == 7)
              {
                MEMORY[0x259C4BB60](9);

                sub_255D07058();
                MEMORY[0x259C4BB60](*(v723 + 16));
                v725 = *(v723 + 16);
                if (v725)
                {
                  v958 = v723;
                  v726 = (v723 + 56);
                  do
                  {
                    v727 = *(v726 - 3);
                    v728 = *(v726 - 2);
                    v729 = *(v726 - 1);
                    v730 = *v726;
                    v726 += 32;
                    sub_255C74200(v727, v728, v729, v730);
                    sub_255D02110(a1, v727, v728, v729, v730);
                    sub_255C7429C(v727, v728, v729, v730);
                    --v725;
                  }

                  while (v725);
                  v731 = v721;
                  v732 = v722;
                  v733 = v958;
                  v734 = 7;
                  break;
                }

                sub_255C7429C(v721, v722, v723, 7u);
              }

              else if (v723 | v722 | v721)
              {
                MEMORY[0x259C4BB60](2);
              }

              else
              {
                MEMORY[0x259C4BB60](1);
              }

              goto LABEL_729;
            }

            MEMORY[0x259C4BB60](8);

            sub_255D07058();
            MEMORY[0x259C4BB60](*(v723 + 16));
            v741 = *(v723 + 16);
            if (!v741)
            {
              sub_255C7429C(v721, v722, v723, 6u);
              goto LABEL_729;
            }

            v960 = v723;
            v742 = (v723 + 56);
            do
            {
              v743 = *(v742 - 3);
              v744 = *(v742 - 2);
              v745 = *(v742 - 1);
              v746 = *v742;
              v742 += 32;
              sub_255C74200(v743, v744, v745, v746);
              sub_255D02110(a1, v743, v744, v745, v746);
              sub_255C7429C(v743, v744, v745, v746);
              --v741;
            }

            while (v741);
            v731 = v721;
            v732 = v722;
            v733 = v960;
            v734 = 6;
          }

          break;
        }

        sub_255C7429C(v731, v732, v733, v734);
        v717 = v899;
        v718 = v877;
        goto LABEL_729;
      }

      if (v14 == 6)
      {
        v838 = v13;
        MEMORY[0x259C4BB60](8);

        sub_255D07058();
        MEMORY[0x259C4BB60](*(v13 + 16));
        v9 = v13;
        v501 = *(v13 + 16);
        if (v501)
        {
          v812 = v12;
          v502 = 0;
          v503 = v13 + 32;
          v806 = *(v13 + 16);
          while (1)
          {
            v508 = v503 + 32 * v502;
            v510 = *v508;
            v509 = *(v508 + 8);
            v511 = *(v508 + 16);
            v512 = *(v508 + 24);
            if (v512 <= 3)
            {
              break;
            }

            if (v512 <= 5)
            {
              v872 = v509;
              if (v512 == 4)
              {
                MEMORY[0x259C4BB60](6);
                MEMORY[0x259C4BB60](*(v510 + 16));
                v522 = *(v510 + 16);
                if (!v522)
                {
                  goto LABEL_513;
                }

                v832 = v511;

                v893 = v510;
                v523 = (v510 + 56);
                do
                {
                  v524 = *(v523 - 3);
                  v525 = *(v523 - 2);
                  v526 = *(v523 - 1);
                  v527 = *v523;
                  v523 += 32;
                  sub_255C74200(v524, v525, v526, v527);
                  sub_255D02110(a1, v524, v525, v526, v527);
                  sub_255C7429C(v524, v525, v526, v527);
                  --v522;
                }

                while (v522);
                v504 = v893;
                v505 = v872;
                v506 = v832;
                v507 = 4;
              }

              else
              {
                MEMORY[0x259C4BB60](7);
                MEMORY[0x259C4BB60](*(v510 + 16));
                v573 = *(v510 + 16);
                if (!v573)
                {
                  goto LABEL_513;
                }

                v834 = v511;

                v895 = v510;
                v574 = (v510 + 56);
                do
                {
                  v575 = *(v574 - 3);
                  v576 = *(v574 - 2);
                  v577 = *(v574 - 1);
                  v578 = *v574;
                  v574 += 32;
                  sub_255C74200(v575, v576, v577, v578);
                  sub_255D02110(a1, v575, v576, v577, v578);
                  sub_255C7429C(v575, v576, v577, v578);
                  --v573;
                }

                while (v573);
                v504 = v895;
                v505 = v872;
                v506 = v834;
                v507 = 5;
              }

LABEL_512:
              sub_255C7429C(v504, v505, v506, v507);
              goto LABEL_513;
            }

            if (v512 == 6)
            {
              MEMORY[0x259C4BB60](8);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v511 + 16));
              v567 = *(v511 + 16);
              if (v567)
              {
                v894 = v510;
                v873 = v509;
                v833 = v511;
                v568 = (v511 + 56);
                do
                {
                  v569 = *(v568 - 3);
                  v570 = *(v568 - 2);
                  v571 = *(v568 - 1);
                  v572 = *v568;
                  v568 += 32;
                  sub_255C74200(v569, v570, v571, v572);
                  sub_255D02110(a1, v569, v570, v571, v572);
                  sub_255C7429C(v569, v570, v571, v572);
                  --v567;
                }

                while (v567);
                v504 = v894;
                v505 = v873;
                v506 = v833;
                v507 = 6;
              }

              else
              {
                v504 = v510;
                v505 = v509;
                v506 = v511;
                v507 = 6;
              }

              goto LABEL_512;
            }

            if (v512 == 7)
            {
              MEMORY[0x259C4BB60](9);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v511 + 16));
              v513 = *(v511 + 16);
              if (v513)
              {
                v891 = v510;
                v870 = v509;
                v830 = v511;
                v514 = (v511 + 56);
                do
                {
                  v515 = *(v514 - 3);
                  v516 = *(v514 - 2);
                  v517 = *(v514 - 1);
                  v518 = *v514;
                  v514 += 32;
                  sub_255C74200(v515, v516, v517, v518);
                  sub_255D02110(a1, v515, v516, v517, v518);
                  sub_255C7429C(v515, v516, v517, v518);
                  --v513;
                }

                while (v513);
                v504 = v891;
                v505 = v870;
                v506 = v830;
              }

              else
              {
                v504 = v510;
                v505 = v509;
                v506 = v511;
              }

              v507 = 7;
              goto LABEL_512;
            }

            if (v511 | v509 | v510)
            {
              MEMORY[0x259C4BB60](2);
            }

            else
            {
              MEMORY[0x259C4BB60](1);
            }

LABEL_513:
            if (++v502 == v501)
            {
              v7 = v879;
              v8 = v812;
              v9 = v838;
              v10 = 6;
              goto LABEL_8;
            }
          }

          if (v512 <= 1)
          {
            if (v512)
            {
              MEMORY[0x259C4BB60](3);

              sub_255D07058();
              v504 = v510;
              v505 = v509;
              v506 = v511;
              v507 = 1;
            }

            else
            {
              MEMORY[0x259C4BB60](0);

              sub_255D07058();
              v504 = v510;
              v505 = v509;
              v506 = v511;
              v507 = 0;
            }

            goto LABEL_512;
          }

          v871 = v509;
          if (v512 == 2)
          {
            MEMORY[0x259C4BB60](4);

            sub_255D07058();
            v504 = v510;
            v505 = v509;
            v506 = v511;
            v507 = 2;
            goto LABEL_512;
          }

          MEMORY[0x259C4BB60](5);
          MEMORY[0x259C4BB60](*(v510 + 16));
          v519 = *(v510 + 16);
          if (!v519)
          {
            goto LABEL_513;
          }

          v824 = v502;
          v831 = v511;
          v520 = v510 + 32;

          v521 = 0;
          v849 = v510 + 32;
          v857 = v519;
          v892 = v510;
          while (2)
          {
            v532 = v520 + 32 * v521;
            v533 = *v532;
            v534 = *(v532 + 8);
            v535 = *(v532 + 16);
            v536 = *(v532 + 24);
            if (v536 <= 3)
            {
              if (v536 <= 1)
              {
                if (v536)
                {
                  MEMORY[0x259C4BB60](3);

                  sub_255D07058();
                  sub_255C7429C(v533, v534, v535, 1u);
                }

                else
                {
                  MEMORY[0x259C4BB60](0);

                  sub_255D07058();
                  sub_255C7429C(v533, v534, v535, 0);
                }

                goto LABEL_534;
              }

              if (v536 == 2)
              {
                MEMORY[0x259C4BB60](4);

                sub_255D07058();
                sub_255C7429C(v533, v534, v535, 2u);
                goto LABEL_534;
              }

              MEMORY[0x259C4BB60](5);
              MEMORY[0x259C4BB60](*(v533 + 16));
              v555 = *(v533 + 16);
              if (!v555)
              {
LABEL_534:
                if (++v521 == v519)
                {
                  sub_255C7429C(v510, v871, v831, 3u);
                  v503 = v838 + 32;
                  v501 = v806;
                  v502 = v824;
                  goto LABEL_513;
                }

                continue;
              }

              v556 = (v533 + 56);
              do
              {
                v557 = *(v556 - 3);
                v558 = *(v556 - 2);
                v559 = *(v556 - 1);
                v560 = *v556;
                v556 += 32;
                sub_255C74200(v557, v558, v559, v560);
                sub_255D02110(a1, v557, v558, v559, v560);
                sub_255C7429C(v557, v558, v559, v560);
                --v555;
              }

              while (v555);
              v528 = v533;
              v529 = v534;
              v530 = v535;
              v531 = 3;
            }

            else if (v536 <= 5)
            {
              if (v536 == 4)
              {
                MEMORY[0x259C4BB60](6);
                MEMORY[0x259C4BB60](*(v533 + 16));
                v543 = *(v533 + 16);
                if (!v543)
                {
                  goto LABEL_534;
                }

                v544 = (v533 + 56);
                do
                {
                  v545 = *(v544 - 3);
                  v546 = *(v544 - 2);
                  v547 = *(v544 - 1);
                  v548 = *v544;
                  v544 += 32;
                  sub_255C74200(v545, v546, v547, v548);
                  sub_255D02110(a1, v545, v546, v547, v548);
                  sub_255C7429C(v545, v546, v547, v548);
                  --v543;
                }

                while (v543);
                v528 = v533;
                v529 = v534;
                v530 = v535;
                v531 = 4;
              }

              else
              {
                MEMORY[0x259C4BB60](7);
                MEMORY[0x259C4BB60](*(v533 + 16));
                v561 = *(v533 + 16);
                if (!v561)
                {
                  goto LABEL_534;
                }

                v562 = (v533 + 56);
                do
                {
                  v563 = *(v562 - 3);
                  v564 = *(v562 - 2);
                  v565 = *(v562 - 1);
                  v566 = *v562;
                  v562 += 32;
                  sub_255C74200(v563, v564, v565, v566);
                  sub_255D02110(a1, v563, v564, v565, v566);
                  sub_255C7429C(v563, v564, v565, v566);
                  --v561;
                }

                while (v561);
                v528 = v533;
                v529 = v534;
                v530 = v535;
                v531 = 5;
              }
            }

            else
            {
              if (v536 != 6)
              {
                if (v536 == 7)
                {
                  MEMORY[0x259C4BB60](9);

                  sub_255D07058();
                  MEMORY[0x259C4BB60](*(v535 + 16));
                  v537 = *(v535 + 16);
                  if (v537)
                  {
                    v538 = (v535 + 56);
                    do
                    {
                      v539 = *(v538 - 3);
                      v540 = *(v538 - 2);
                      v541 = *(v538 - 1);
                      v542 = *v538;
                      v538 += 32;
                      sub_255C74200(v539, v540, v541, v542);
                      sub_255D02110(a1, v539, v540, v541, v542);
                      sub_255C7429C(v539, v540, v541, v542);
                      --v537;
                    }

                    while (v537);
                    v528 = v533;
                    v529 = v534;
                    v530 = v535;
                    v531 = 7;
                    break;
                  }

                  sub_255C7429C(v533, v534, v535, 7u);
                }

                else if (v535 | v534 | v533)
                {
                  MEMORY[0x259C4BB60](2);
                }

                else
                {
                  MEMORY[0x259C4BB60](1);
                }

                goto LABEL_534;
              }

              MEMORY[0x259C4BB60](8);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v535 + 16));
              v549 = *(v535 + 16);
              if (!v549)
              {
                sub_255C7429C(v533, v534, v535, 6u);
                goto LABEL_534;
              }

              v550 = (v535 + 56);
              do
              {
                v551 = *(v550 - 3);
                v552 = *(v550 - 2);
                v553 = *(v550 - 1);
                v554 = *v550;
                v550 += 32;
                sub_255C74200(v551, v552, v553, v554);
                sub_255D02110(a1, v551, v552, v553, v554);
                sub_255C7429C(v551, v552, v553, v554);
                --v549;
              }

              while (v549);
              v528 = v533;
              v529 = v534;
              v530 = v535;
              v531 = 6;
            }

            break;
          }

          sub_255C7429C(v528, v529, v530, v531);
          v510 = v892;
          v520 = v849;
          v519 = v857;
          goto LABEL_534;
        }

        v7 = v879;
        v8 = v12;
        v10 = 6;
LABEL_8:
        sub_255C7429C(v7, v8, v9, v10);
        goto LABEL_9;
      }

      if (v14 == 7)
      {
        v835 = v13;
        MEMORY[0x259C4BB60](9);

        sub_255D07058();
        MEMORY[0x259C4BB60](*(v13 + 16));
        v9 = v13;
        v15 = *(v13 + 16);
        if (v15)
        {
          v809 = v12;
          v16 = 0;
          v17 = v13 + 32;
          v880 = *(v13 + 16);
          while (1)
          {
            v18 = v17 + 32 * v16;
            v19 = *v18;
            v20 = *(v18 + 8);
            v21 = *(v18 + 16);
            v22 = *(v18 + 24);
            if (v22 <= 3)
            {
              if (v22 <= 1)
              {
                if (v22)
                {
                  MEMORY[0x259C4BB60](3);

                  sub_255D07058();
                  sub_255C7429C(v19, v20, v21, 1u);
                }

                else
                {
                  MEMORY[0x259C4BB60](0);

                  sub_255D07058();
                  sub_255C7429C(v19, v20, v21, 0);
                }

                goto LABEL_17;
              }

              if (v22 == 2)
              {
                MEMORY[0x259C4BB60](4);

                sub_255D07058();
                sub_255C7429C(v19, v20, v21, 2u);
                goto LABEL_17;
              }

              MEMORY[0x259C4BB60](5);
              MEMORY[0x259C4BB60](*(v19 + 16));
              v45 = *(v19 + 16);
              if (!v45)
              {
                goto LABEL_17;
              }

              v904 = v21;

              v46 = (v19 + 56);
              do
              {
                v47 = *(v46 - 3);
                v48 = *(v46 - 2);
                v49 = *(v46 - 1);
                v50 = *v46;
                v46 += 32;
                sub_255C74200(v47, v48, v49, v50);
                sub_255D02110(a1, v47, v48, v49, v50);
                sub_255C7429C(v47, v48, v49, v50);
                --v45;
              }

              while (v45);
              v29 = v19;
              v30 = v20;
              v31 = v904;
              v32 = 3;
            }

            else if (v22 <= 5)
            {
              if (v22 == 4)
              {
                MEMORY[0x259C4BB60](6);
                MEMORY[0x259C4BB60](*(v19 + 16));
                v33 = *(v19 + 16);
                if (!v33)
                {
                  goto LABEL_17;
                }

                v902 = v21;

                v34 = (v19 + 56);
                do
                {
                  v35 = *(v34 - 3);
                  v36 = *(v34 - 2);
                  v37 = *(v34 - 1);
                  v38 = *v34;
                  v34 += 32;
                  sub_255C74200(v35, v36, v37, v38);
                  sub_255D02110(a1, v35, v36, v37, v38);
                  sub_255C7429C(v35, v36, v37, v38);
                  --v33;
                }

                while (v33);
                v29 = v19;
                v30 = v20;
                v31 = v902;
                v32 = 4;
              }

              else
              {
                MEMORY[0x259C4BB60](7);
                MEMORY[0x259C4BB60](*(v19 + 16));
                v51 = *(v19 + 16);
                if (!v51)
                {
                  goto LABEL_17;
                }

                v905 = v21;

                v52 = (v19 + 56);
                do
                {
                  v53 = *(v52 - 3);
                  v54 = *(v52 - 2);
                  v55 = *(v52 - 1);
                  v56 = *v52;
                  v52 += 32;
                  sub_255C74200(v53, v54, v55, v56);
                  sub_255D02110(a1, v53, v54, v55, v56);
                  sub_255C7429C(v53, v54, v55, v56);
                  --v51;
                }

                while (v51);
                v29 = v19;
                v30 = v20;
                v31 = v905;
                v32 = 5;
              }
            }

            else if (v22 == 6)
            {
              MEMORY[0x259C4BB60](8);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v21 + 16));
              v39 = *(v21 + 16);
              if (!v39)
              {
                sub_255C7429C(v19, v20, v21, 6u);
                goto LABEL_17;
              }

              v903 = v21;
              v40 = (v21 + 56);
              do
              {
                v41 = *(v40 - 3);
                v42 = *(v40 - 2);
                v43 = *(v40 - 1);
                v44 = *v40;
                v40 += 32;
                sub_255C74200(v41, v42, v43, v44);
                sub_255D02110(a1, v41, v42, v43, v44);
                sub_255C7429C(v41, v42, v43, v44);
                --v39;
              }

              while (v39);
              v29 = v19;
              v30 = v20;
              v31 = v903;
              v32 = 6;
            }

            else
            {
              if (v22 != 7)
              {
                if (v21 | v20 | v19)
                {
                  MEMORY[0x259C4BB60](2);
                }

                else
                {
                  MEMORY[0x259C4BB60](1);
                }

                goto LABEL_17;
              }

              MEMORY[0x259C4BB60](9);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v21 + 16));
              v23 = *(v21 + 16);
              if (!v23)
              {
                sub_255C7429C(v19, v20, v21, 7u);
                goto LABEL_17;
              }

              v901 = v21;
              v24 = (v21 + 56);
              do
              {
                v25 = *(v24 - 3);
                v26 = *(v24 - 2);
                v27 = *(v24 - 1);
                v28 = *v24;
                v24 += 32;
                sub_255C74200(v25, v26, v27, v28);
                sub_255D02110(a1, v25, v26, v27, v28);
                sub_255C7429C(v25, v26, v27, v28);
                --v23;
              }

              while (v23);
              v29 = v19;
              v30 = v20;
              v31 = v901;
              v32 = 7;
            }

            sub_255C7429C(v29, v30, v31, v32);
            v15 = v880;
            v17 = v835 + 32;
LABEL_17:
            if (++v16 == v15)
            {
              v7 = v879;
              v8 = v809;
              v9 = v835;
              goto LABEL_822;
            }
          }
        }

        v7 = v879;
        v8 = v12;
LABEL_822:
        v10 = 7;
        goto LABEL_8;
      }

      if (v13 | v12 | v879)
      {
        MEMORY[0x259C4BB60](2);
      }

      else
      {
        MEMORY[0x259C4BB60](1);
      }

LABEL_9:
      v6 = v859 + 1;
      if (v859 + 1 == v813)
      {

LABEL_4:
        v4 = v803 + 1;
        if (v803 + 1 == v802)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    if (v14 <= 1)
    {
      if (v14)
      {
        MEMORY[0x259C4BB60](3);

        sub_255D07058();
        v7 = v879;
        v8 = v12;
        v9 = v13;
        v10 = 1;
      }

      else
      {
        MEMORY[0x259C4BB60](0);

        sub_255D07058();
        v7 = v879;
        v8 = v12;
        v9 = v13;
        v10 = 0;
      }

      goto LABEL_8;
    }

    v810 = v12;
    v836 = v13;
    if (v14 == 2)
    {
      MEMORY[0x259C4BB60](4);

      sub_255D07058();
      v7 = v879;
      v8 = v12;
      v9 = v13;
      v10 = 2;
      goto LABEL_8;
    }

    MEMORY[0x259C4BB60](5);
    MEMORY[0x259C4BB60](*(v879 + 16));
    v57 = *(v879 + 16);
    if (!v57)
    {
      goto LABEL_9;
    }

    v58 = v879 + 32;

    v59 = 0;
    v804 = v57;
    while (1)
    {
      v67 = v58 + 32 * v59;
      v69 = *v67;
      v68 = *(v67 + 8);
      v70 = *(v67 + 16);
      v71 = *(v67 + 24);
      if (v71 > 3)
      {
        if (v71 > 5)
        {
          if (v71 != 6)
          {
            if (v71 != 7)
            {
              if (v70 | v68 | v69)
              {
                MEMORY[0x259C4BB60](2);
              }

              else
              {
                MEMORY[0x259C4BB60](1);
              }

              goto LABEL_65;
            }

            MEMORY[0x259C4BB60](9);

            sub_255D07058();
            MEMORY[0x259C4BB60](*(v70 + 16));
            v72 = *(v70 + 16);
            if (!v72)
            {
              sub_255C7429C(v69, v68, v70, 7u);
              goto LABEL_65;
            }

            v814 = v69;
            v839 = v70;
            v855 = v59;
            v73 = 0;
            v74 = v70 + 32;
            v881 = *(v70 + 16);
            v860 = v70 + 32;
            while (1)
            {
              v117 = v74 + 32 * v73;
              v118 = *v117;
              v119 = *(v117 + 8);
              v120 = *(v117 + 16);
              v121 = *(v117 + 24);
              if (v121 <= 3)
              {
                if (v121 <= 1)
                {
                  if (v121)
                  {
                    MEMORY[0x259C4BB60](3);

                    sub_255D07058();
                    sub_255C7429C(v118, v119, v120, 1u);
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](0);

                    sub_255D07058();
                    sub_255C7429C(v118, v119, v120, 0);
                  }

                  goto LABEL_119;
                }

                if (v121 == 2)
                {
                  MEMORY[0x259C4BB60](4);

                  sub_255D07058();
                  sub_255C7429C(v118, v119, v120, 2u);
                  goto LABEL_119;
                }

                v913 = v120;
                MEMORY[0x259C4BB60](5);
                MEMORY[0x259C4BB60](*(v118 + 16));
                v144 = *(v118 + 16);
                if (!v144)
                {
                  goto LABEL_119;
                }

                v145 = (v118 + 56);
                do
                {
                  v146 = *(v145 - 3);
                  v147 = *(v145 - 2);
                  v148 = *(v145 - 1);
                  v149 = *v145;
                  v145 += 32;
                  sub_255C74200(v146, v147, v148, v149);
                  sub_255D02110(a1, v146, v147, v148, v149);
                  sub_255C7429C(v146, v147, v148, v149);
                  --v144;
                }

                while (v144);
                v128 = v118;
                v129 = v119;
                v130 = v913;
                v131 = 3;
              }

              else if (v121 <= 5)
              {
                v911 = v120;
                if (v121 == 4)
                {
                  MEMORY[0x259C4BB60](6);
                  MEMORY[0x259C4BB60](*(v118 + 16));
                  v132 = *(v118 + 16);
                  if (!v132)
                  {
                    goto LABEL_119;
                  }

                  v133 = (v118 + 56);
                  do
                  {
                    v134 = *(v133 - 3);
                    v135 = *(v133 - 2);
                    v136 = *(v133 - 1);
                    v137 = *v133;
                    v133 += 32;
                    sub_255C74200(v134, v135, v136, v137);
                    sub_255D02110(a1, v134, v135, v136, v137);
                    sub_255C7429C(v134, v135, v136, v137);
                    --v132;
                  }

                  while (v132);
                  v128 = v118;
                  v129 = v119;
                  v130 = v911;
                  v131 = 4;
                }

                else
                {
                  MEMORY[0x259C4BB60](7);
                  MEMORY[0x259C4BB60](*(v118 + 16));
                  v150 = *(v118 + 16);
                  if (!v150)
                  {
                    goto LABEL_119;
                  }

                  v151 = (v118 + 56);
                  do
                  {
                    v152 = *(v151 - 3);
                    v153 = *(v151 - 2);
                    v154 = *(v151 - 1);
                    v155 = *v151;
                    v151 += 32;
                    sub_255C74200(v152, v153, v154, v155);
                    sub_255D02110(a1, v152, v153, v154, v155);
                    sub_255C7429C(v152, v153, v154, v155);
                    --v150;
                  }

                  while (v150);
                  v128 = v118;
                  v129 = v119;
                  v130 = v911;
                  v131 = 5;
                }
              }

              else if (v121 == 6)
              {
                MEMORY[0x259C4BB60](8);

                sub_255D07058();
                MEMORY[0x259C4BB60](*(v120 + 16));
                v138 = *(v120 + 16);
                if (!v138)
                {
                  sub_255C7429C(v118, v119, v120, 6u);
                  goto LABEL_119;
                }

                v912 = v120;
                v139 = (v120 + 56);
                do
                {
                  v140 = *(v139 - 3);
                  v141 = *(v139 - 2);
                  v142 = *(v139 - 1);
                  v143 = *v139;
                  v139 += 32;
                  sub_255C74200(v140, v141, v142, v143);
                  sub_255D02110(a1, v140, v141, v142, v143);
                  sub_255C7429C(v140, v141, v142, v143);
                  --v138;
                }

                while (v138);
                v128 = v118;
                v129 = v119;
                v130 = v912;
                v131 = 6;
              }

              else
              {
                if (v121 != 7)
                {
                  if (v120 | v119 | v118)
                  {
                    MEMORY[0x259C4BB60](2);
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](1);
                  }

                  goto LABEL_119;
                }

                MEMORY[0x259C4BB60](9);

                sub_255D07058();
                MEMORY[0x259C4BB60](*(v120 + 16));
                v122 = *(v120 + 16);
                if (!v122)
                {
                  sub_255C7429C(v118, v119, v120, 7u);
                  goto LABEL_119;
                }

                v910 = v120;
                v123 = (v120 + 56);
                do
                {
                  v124 = *(v123 - 3);
                  v125 = *(v123 - 2);
                  v126 = *(v123 - 1);
                  v127 = *v123;
                  v123 += 32;
                  sub_255C74200(v124, v125, v126, v127);
                  sub_255D02110(a1, v124, v125, v126, v127);
                  sub_255C7429C(v124, v125, v126, v127);
                  --v122;
                }

                while (v122);
                v128 = v118;
                v129 = v119;
                v130 = v910;
                v131 = 7;
              }

              sub_255C7429C(v128, v129, v130, v131);
              v72 = v881;
              v74 = v860;
LABEL_119:
              if (++v73 == v72)
              {
                v63 = v814;
                v64 = v68;
                v65 = v839;
                v66 = 7;
                goto LABEL_64;
              }
            }
          }

          MEMORY[0x259C4BB60](8);

          sub_255D07058();
          MEMORY[0x259C4BB60](*(v70 + 16));
          v156 = *(v70 + 16);
          if (!v156)
          {
            sub_255C7429C(v69, v68, v70, 6u);
            goto LABEL_65;
          }

          v816 = v69;
          v841 = v70;
          v855 = v59;
          v157 = 0;
          v158 = v70 + 32;
          v883 = *(v70 + 16);
          v862 = v70 + 32;
          while (1)
          {
            v163 = v158 + 32 * v157;
            v164 = *v163;
            v165 = *(v163 + 8);
            v166 = *(v163 + 16);
            v167 = *(v163 + 24);
            if (v167 <= 3)
            {
              if (v167 <= 1)
              {
                if (v167)
                {
                  MEMORY[0x259C4BB60](3);

                  sub_255D07058();
                  sub_255C7429C(v164, v165, v166, 1u);
                }

                else
                {
                  MEMORY[0x259C4BB60](0);

                  sub_255D07058();
                  sub_255C7429C(v164, v165, v166, 0);
                }

                goto LABEL_159;
              }

              if (v167 == 2)
              {
                MEMORY[0x259C4BB60](4);

                sub_255D07058();
                sub_255C7429C(v164, v165, v166, 2u);
                goto LABEL_159;
              }

              v917 = v166;
              MEMORY[0x259C4BB60](5);
              MEMORY[0x259C4BB60](*(v164 + 16));
              v186 = *(v164 + 16);
              if (!v186)
              {
                goto LABEL_159;
              }

              v187 = (v164 + 56);
              do
              {
                v188 = *(v187 - 3);
                v189 = *(v187 - 2);
                v190 = *(v187 - 1);
                v191 = *v187;
                v187 += 32;
                sub_255C74200(v188, v189, v190, v191);
                sub_255D02110(a1, v188, v189, v190, v191);
                sub_255C7429C(v188, v189, v190, v191);
                --v186;
              }

              while (v186);
              v159 = v164;
              v160 = v165;
              v161 = v917;
              v162 = 3;
            }

            else if (v167 <= 5)
            {
              v915 = v166;
              if (v167 == 4)
              {
                MEMORY[0x259C4BB60](6);
                MEMORY[0x259C4BB60](*(v164 + 16));
                v174 = *(v164 + 16);
                if (!v174)
                {
                  goto LABEL_159;
                }

                v175 = (v164 + 56);
                do
                {
                  v176 = *(v175 - 3);
                  v177 = *(v175 - 2);
                  v178 = *(v175 - 1);
                  v179 = *v175;
                  v175 += 32;
                  sub_255C74200(v176, v177, v178, v179);
                  sub_255D02110(a1, v176, v177, v178, v179);
                  sub_255C7429C(v176, v177, v178, v179);
                  --v174;
                }

                while (v174);
                v159 = v164;
                v160 = v165;
                v161 = v915;
                v162 = 4;
              }

              else
              {
                MEMORY[0x259C4BB60](7);
                MEMORY[0x259C4BB60](*(v164 + 16));
                v192 = *(v164 + 16);
                if (!v192)
                {
                  goto LABEL_159;
                }

                v193 = (v164 + 56);
                do
                {
                  v194 = *(v193 - 3);
                  v195 = *(v193 - 2);
                  v196 = *(v193 - 1);
                  v197 = *v193;
                  v193 += 32;
                  sub_255C74200(v194, v195, v196, v197);
                  sub_255D02110(a1, v194, v195, v196, v197);
                  sub_255C7429C(v194, v195, v196, v197);
                  --v192;
                }

                while (v192);
                v159 = v164;
                v160 = v165;
                v161 = v915;
                v162 = 5;
              }
            }

            else if (v167 == 6)
            {
              MEMORY[0x259C4BB60](8);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v166 + 16));
              v180 = *(v166 + 16);
              if (!v180)
              {
                sub_255C7429C(v164, v165, v166, 6u);
                goto LABEL_159;
              }

              v916 = v166;
              v181 = (v166 + 56);
              do
              {
                v182 = *(v181 - 3);
                v183 = *(v181 - 2);
                v184 = *(v181 - 1);
                v185 = *v181;
                v181 += 32;
                sub_255C74200(v182, v183, v184, v185);
                sub_255D02110(a1, v182, v183, v184, v185);
                sub_255C7429C(v182, v183, v184, v185);
                --v180;
              }

              while (v180);
              v159 = v164;
              v160 = v165;
              v161 = v916;
              v162 = 6;
            }

            else
            {
              if (v167 != 7)
              {
                if (v166 | v165 | v164)
                {
                  MEMORY[0x259C4BB60](2);
                }

                else
                {
                  MEMORY[0x259C4BB60](1);
                }

                goto LABEL_159;
              }

              MEMORY[0x259C4BB60](9);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v166 + 16));
              v168 = *(v166 + 16);
              if (!v168)
              {
                sub_255C7429C(v164, v165, v166, 7u);
                goto LABEL_159;
              }

              v914 = v166;
              v169 = (v166 + 56);
              do
              {
                v170 = *(v169 - 3);
                v171 = *(v169 - 2);
                v172 = *(v169 - 1);
                v173 = *v169;
                v169 += 32;
                sub_255C74200(v170, v171, v172, v173);
                sub_255D02110(a1, v170, v171, v172, v173);
                sub_255C7429C(v170, v171, v172, v173);
                --v168;
              }

              while (v168);
              v159 = v164;
              v160 = v165;
              v161 = v914;
              v162 = 7;
            }

            sub_255C7429C(v159, v160, v161, v162);
            v156 = v883;
            v158 = v862;
LABEL_159:
            if (++v157 == v156)
            {
              v63 = v816;
              v64 = v68;
              v65 = v841;
              v66 = 6;
              goto LABEL_64;
            }
          }
        }

        if (v71 == 4)
        {
          MEMORY[0x259C4BB60](6);
          MEMORY[0x259C4BB60](*(v69 + 16));
          v75 = *(v69 + 16);
          if (!v75)
          {
            goto LABEL_65;
          }

          v815 = v69;
          v840 = v70;
          v855 = v59;
          v76 = v69 + 32;

          v77 = 0;
          v882 = v75;
          v861 = v76;
          while (1)
          {
            v78 = v76 + 32 * v77;
            v79 = *v78;
            v80 = *(v78 + 8);
            v81 = *(v78 + 16);
            v82 = *(v78 + 24);
            if (v82 <= 3)
            {
              if (v82 <= 1)
              {
                if (v82)
                {
                  MEMORY[0x259C4BB60](3);

                  sub_255D07058();
                  sub_255C7429C(v79, v80, v81, 1u);
                }

                else
                {
                  MEMORY[0x259C4BB60](0);

                  sub_255D07058();
                  sub_255C7429C(v79, v80, v81, 0);
                }

                goto LABEL_81;
              }

              if (v82 == 2)
              {
                MEMORY[0x259C4BB60](4);

                sub_255D07058();
                sub_255C7429C(v79, v80, v81, 2u);
                goto LABEL_81;
              }

              v909 = v81;
              MEMORY[0x259C4BB60](5);
              MEMORY[0x259C4BB60](*(v79 + 16));
              v105 = *(v79 + 16);
              if (!v105)
              {
                goto LABEL_81;
              }

              v106 = (v79 + 56);
              do
              {
                v107 = *(v106 - 3);
                v108 = *(v106 - 2);
                v109 = *(v106 - 1);
                v110 = *v106;
                v106 += 32;
                sub_255C74200(v107, v108, v109, v110);
                sub_255D02110(a1, v107, v108, v109, v110);
                sub_255C7429C(v107, v108, v109, v110);
                --v105;
              }

              while (v105);
              v89 = v79;
              v90 = v80;
              v91 = v909;
              v92 = 3;
            }

            else if (v82 <= 5)
            {
              v907 = v81;
              if (v82 == 4)
              {
                MEMORY[0x259C4BB60](6);
                MEMORY[0x259C4BB60](*(v79 + 16));
                v93 = *(v79 + 16);
                if (!v93)
                {
                  goto LABEL_81;
                }

                v94 = (v79 + 56);
                do
                {
                  v95 = *(v94 - 3);
                  v96 = *(v94 - 2);
                  v97 = *(v94 - 1);
                  v98 = *v94;
                  v94 += 32;
                  sub_255C74200(v95, v96, v97, v98);
                  sub_255D02110(a1, v95, v96, v97, v98);
                  sub_255C7429C(v95, v96, v97, v98);
                  --v93;
                }

                while (v93);
                v89 = v79;
                v90 = v80;
                v91 = v907;
                v92 = 4;
              }

              else
              {
                MEMORY[0x259C4BB60](7);
                MEMORY[0x259C4BB60](*(v79 + 16));
                v111 = *(v79 + 16);
                if (!v111)
                {
                  goto LABEL_81;
                }

                v112 = (v79 + 56);
                do
                {
                  v113 = *(v112 - 3);
                  v114 = *(v112 - 2);
                  v115 = *(v112 - 1);
                  v116 = *v112;
                  v112 += 32;
                  sub_255C74200(v113, v114, v115, v116);
                  sub_255D02110(a1, v113, v114, v115, v116);
                  sub_255C7429C(v113, v114, v115, v116);
                  --v111;
                }

                while (v111);
                v89 = v79;
                v90 = v80;
                v91 = v907;
                v92 = 5;
              }
            }

            else if (v82 == 6)
            {
              MEMORY[0x259C4BB60](8);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v81 + 16));
              v99 = *(v81 + 16);
              if (!v99)
              {
                sub_255C7429C(v79, v80, v81, 6u);
                goto LABEL_81;
              }

              v908 = v81;
              v100 = (v81 + 56);
              do
              {
                v101 = *(v100 - 3);
                v102 = *(v100 - 2);
                v103 = *(v100 - 1);
                v104 = *v100;
                v100 += 32;
                sub_255C74200(v101, v102, v103, v104);
                sub_255D02110(a1, v101, v102, v103, v104);
                sub_255C7429C(v101, v102, v103, v104);
                --v99;
              }

              while (v99);
              v89 = v79;
              v90 = v80;
              v91 = v908;
              v92 = 6;
            }

            else
            {
              if (v82 != 7)
              {
                if (v81 | v80 | v79)
                {
                  MEMORY[0x259C4BB60](2);
                }

                else
                {
                  MEMORY[0x259C4BB60](1);
                }

                goto LABEL_81;
              }

              MEMORY[0x259C4BB60](9);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v81 + 16));
              v83 = *(v81 + 16);
              if (!v83)
              {
                sub_255C7429C(v79, v80, v81, 7u);
                goto LABEL_81;
              }

              v906 = v81;
              v84 = (v81 + 56);
              do
              {
                v85 = *(v84 - 3);
                v86 = *(v84 - 2);
                v87 = *(v84 - 1);
                v88 = *v84;
                v84 += 32;
                sub_255C74200(v85, v86, v87, v88);
                sub_255D02110(a1, v85, v86, v87, v88);
                sub_255C7429C(v85, v86, v87, v88);
                --v83;
              }

              while (v83);
              v89 = v79;
              v90 = v80;
              v91 = v906;
              v92 = 7;
            }

            sub_255C7429C(v89, v90, v91, v92);
            v75 = v882;
            v76 = v861;
LABEL_81:
            if (++v77 == v75)
            {
              v63 = v815;
              v64 = v68;
              v65 = v840;
              v66 = 4;
              goto LABEL_64;
            }
          }
        }

        MEMORY[0x259C4BB60](7);
        MEMORY[0x259C4BB60](*(v69 + 16));
        v240 = *(v69 + 16);
        if (!v240)
        {
          goto LABEL_65;
        }

        v818 = v69;
        v843 = v70;
        v855 = v59;
        v241 = v69 + 32;

        v242 = 0;
        v885 = v240;
        v864 = v241;
        while (1)
        {
          v243 = v241 + 32 * v242;
          v244 = *v243;
          v245 = *(v243 + 8);
          v246 = *(v243 + 16);
          v247 = *(v243 + 24);
          if (v247 <= 3)
          {
            if (v247 <= 1)
            {
              if (v247)
              {
                MEMORY[0x259C4BB60](3);

                sub_255D07058();
                sub_255C7429C(v244, v245, v246, 1u);
              }

              else
              {
                MEMORY[0x259C4BB60](0);

                sub_255D07058();
                sub_255C7429C(v244, v245, v246, 0);
              }

              goto LABEL_242;
            }

            if (v247 == 2)
            {
              MEMORY[0x259C4BB60](4);

              sub_255D07058();
              sub_255C7429C(v244, v245, v246, 2u);
              goto LABEL_242;
            }

            v925 = v246;
            MEMORY[0x259C4BB60](5);
            MEMORY[0x259C4BB60](*(v244 + 16));
            v270 = *(v244 + 16);
            if (!v270)
            {
              goto LABEL_242;
            }

            v271 = (v244 + 56);
            do
            {
              v272 = *(v271 - 3);
              v273 = *(v271 - 2);
              v274 = *(v271 - 1);
              v275 = *v271;
              v271 += 32;
              sub_255C74200(v272, v273, v274, v275);
              sub_255D02110(a1, v272, v273, v274, v275);
              sub_255C7429C(v272, v273, v274, v275);
              --v270;
            }

            while (v270);
            v254 = v244;
            v255 = v245;
            v256 = v925;
            v257 = 3;
          }

          else if (v247 <= 5)
          {
            v923 = v246;
            if (v247 == 4)
            {
              MEMORY[0x259C4BB60](6);
              MEMORY[0x259C4BB60](*(v244 + 16));
              v258 = *(v244 + 16);
              if (!v258)
              {
                goto LABEL_242;
              }

              v259 = (v244 + 56);
              do
              {
                v260 = *(v259 - 3);
                v261 = *(v259 - 2);
                v262 = *(v259 - 1);
                v263 = *v259;
                v259 += 32;
                sub_255C74200(v260, v261, v262, v263);
                sub_255D02110(a1, v260, v261, v262, v263);
                sub_255C7429C(v260, v261, v262, v263);
                --v258;
              }

              while (v258);
              v254 = v244;
              v255 = v245;
              v256 = v923;
              v257 = 4;
            }

            else
            {
              MEMORY[0x259C4BB60](7);
              MEMORY[0x259C4BB60](*(v244 + 16));
              v276 = *(v244 + 16);
              if (!v276)
              {
                goto LABEL_242;
              }

              v277 = (v244 + 56);
              do
              {
                v278 = *(v277 - 3);
                v279 = *(v277 - 2);
                v280 = *(v277 - 1);
                v281 = *v277;
                v277 += 32;
                sub_255C74200(v278, v279, v280, v281);
                sub_255D02110(a1, v278, v279, v280, v281);
                sub_255C7429C(v278, v279, v280, v281);
                --v276;
              }

              while (v276);
              v254 = v244;
              v255 = v245;
              v256 = v923;
              v257 = 5;
            }
          }

          else if (v247 == 6)
          {
            MEMORY[0x259C4BB60](8);

            sub_255D07058();
            MEMORY[0x259C4BB60](*(v246 + 16));
            v264 = *(v246 + 16);
            if (!v264)
            {
              sub_255C7429C(v244, v245, v246, 6u);
              goto LABEL_242;
            }

            v924 = v246;
            v265 = (v246 + 56);
            do
            {
              v266 = *(v265 - 3);
              v267 = *(v265 - 2);
              v268 = *(v265 - 1);
              v269 = *v265;
              v265 += 32;
              sub_255C74200(v266, v267, v268, v269);
              sub_255D02110(a1, v266, v267, v268, v269);
              sub_255C7429C(v266, v267, v268, v269);
              --v264;
            }

            while (v264);
            v254 = v244;
            v255 = v245;
            v256 = v924;
            v257 = 6;
          }

          else
          {
            if (v247 != 7)
            {
              if (v246 | v245 | v244)
              {
                MEMORY[0x259C4BB60](2);
              }

              else
              {
                MEMORY[0x259C4BB60](1);
              }

              goto LABEL_242;
            }

            MEMORY[0x259C4BB60](9);

            sub_255D07058();
            MEMORY[0x259C4BB60](*(v246 + 16));
            v248 = *(v246 + 16);
            if (!v248)
            {
              sub_255C7429C(v244, v245, v246, 7u);
              goto LABEL_242;
            }

            v922 = v246;
            v249 = (v246 + 56);
            do
            {
              v250 = *(v249 - 3);
              v251 = *(v249 - 2);
              v252 = *(v249 - 1);
              v253 = *v249;
              v249 += 32;
              sub_255C74200(v250, v251, v252, v253);
              sub_255D02110(a1, v250, v251, v252, v253);
              sub_255C7429C(v250, v251, v252, v253);
              --v248;
            }

            while (v248);
            v254 = v244;
            v255 = v245;
            v256 = v922;
            v257 = 7;
          }

          sub_255C7429C(v254, v255, v256, v257);
          v240 = v885;
          v241 = v864;
LABEL_242:
          if (++v242 == v240)
          {
            v63 = v818;
            v64 = v68;
            v65 = v843;
            v66 = 5;
LABEL_64:
            sub_255C7429C(v63, v64, v65, v66);
            v58 = v879 + 32;
            v57 = v804;
            v59 = v855;
            goto LABEL_65;
          }
        }
      }

      if (v71 <= 1)
      {
        if (v71)
        {
          MEMORY[0x259C4BB60](3);

          sub_255D07058();
          sub_255C7429C(v69, v68, v70, 1u);
        }

        else
        {
          MEMORY[0x259C4BB60](0);

          sub_255D07058();
          sub_255C7429C(v69, v68, v70, 0);
        }

        goto LABEL_65;
      }

      if (v71 == 2)
      {
        MEMORY[0x259C4BB60](4);

        sub_255D07058();
        sub_255C7429C(v69, v68, v70, 2u);
        goto LABEL_65;
      }

      MEMORY[0x259C4BB60](5);
      MEMORY[0x259C4BB60](*(v69 + 16));
      v198 = *(v69 + 16);
      if (v198)
      {
        break;
      }

LABEL_65:
      if (++v59 == v57)
      {
        v7 = v879;
        v8 = v810;
        v9 = v836;
        v10 = 3;
        goto LABEL_8;
      }
    }

    v817 = v69;
    v842 = v70;
    v855 = v59;
    v199 = v69 + 32;

    v200 = 0;
    v884 = v198;
    v863 = v69 + 32;
    while (1)
    {
      v201 = v199 + 32 * v200;
      v202 = *v201;
      v203 = *(v201 + 8);
      v204 = *(v201 + 16);
      v205 = *(v201 + 24);
      if (v205 <= 3)
      {
        if (v205 <= 1)
        {
          if (v205)
          {
            MEMORY[0x259C4BB60](3);

            sub_255D07058();
            sub_255C7429C(v202, v203, v204, 1u);
          }

          else
          {
            MEMORY[0x259C4BB60](0);

            sub_255D07058();
            sub_255C7429C(v202, v203, v204, 0);
          }

          goto LABEL_200;
        }

        if (v205 == 2)
        {
          MEMORY[0x259C4BB60](4);

          sub_255D07058();
          sub_255C7429C(v202, v203, v204, 2u);
          goto LABEL_200;
        }

        v921 = v204;
        MEMORY[0x259C4BB60](5);
        MEMORY[0x259C4BB60](*(v202 + 16));
        v228 = *(v202 + 16);
        if (!v228)
        {
          goto LABEL_200;
        }

        v229 = (v202 + 56);
        do
        {
          v230 = *(v229 - 3);
          v231 = *(v229 - 2);
          v232 = *(v229 - 1);
          v233 = *v229;
          v229 += 32;
          sub_255C74200(v230, v231, v232, v233);
          sub_255D02110(a1, v230, v231, v232, v233);
          sub_255C7429C(v230, v231, v232, v233);
          --v228;
        }

        while (v228);
        v212 = v202;
        v213 = v203;
        v214 = v921;
        v215 = 3;
      }

      else if (v205 <= 5)
      {
        v919 = v204;
        if (v205 == 4)
        {
          MEMORY[0x259C4BB60](6);
          MEMORY[0x259C4BB60](*(v202 + 16));
          v216 = *(v202 + 16);
          if (!v216)
          {
            goto LABEL_200;
          }

          v217 = (v202 + 56);
          do
          {
            v218 = *(v217 - 3);
            v219 = *(v217 - 2);
            v220 = *(v217 - 1);
            v221 = *v217;
            v217 += 32;
            sub_255C74200(v218, v219, v220, v221);
            sub_255D02110(a1, v218, v219, v220, v221);
            sub_255C7429C(v218, v219, v220, v221);
            --v216;
          }

          while (v216);
          v212 = v202;
          v213 = v203;
          v214 = v919;
          v215 = 4;
        }

        else
        {
          MEMORY[0x259C4BB60](7);
          MEMORY[0x259C4BB60](*(v202 + 16));
          v234 = *(v202 + 16);
          if (!v234)
          {
            goto LABEL_200;
          }

          v235 = (v202 + 56);
          do
          {
            v236 = *(v235 - 3);
            v237 = *(v235 - 2);
            v238 = *(v235 - 1);
            v239 = *v235;
            v235 += 32;
            sub_255C74200(v236, v237, v238, v239);
            sub_255D02110(a1, v236, v237, v238, v239);
            sub_255C7429C(v236, v237, v238, v239);
            --v234;
          }

          while (v234);
          v212 = v202;
          v213 = v203;
          v214 = v919;
          v215 = 5;
        }
      }

      else if (v205 == 6)
      {
        MEMORY[0x259C4BB60](8);

        sub_255D07058();
        MEMORY[0x259C4BB60](*(v204 + 16));
        v222 = *(v204 + 16);
        if (!v222)
        {
          sub_255C7429C(v202, v203, v204, 6u);
          goto LABEL_200;
        }

        v920 = v204;
        v223 = (v204 + 56);
        do
        {
          v224 = *(v223 - 3);
          v225 = *(v223 - 2);
          v226 = *(v223 - 1);
          v227 = *v223;
          v223 += 32;
          sub_255C74200(v224, v225, v226, v227);
          sub_255D02110(a1, v224, v225, v226, v227);
          sub_255C7429C(v224, v225, v226, v227);
          --v222;
        }

        while (v222);
        v212 = v202;
        v213 = v203;
        v214 = v920;
        v215 = 6;
      }

      else
      {
        if (v205 != 7)
        {
          if (v204 | v203 | v202)
          {
            MEMORY[0x259C4BB60](2);
          }

          else
          {
            MEMORY[0x259C4BB60](1);
          }

          goto LABEL_200;
        }

        MEMORY[0x259C4BB60](9);

        sub_255D07058();
        MEMORY[0x259C4BB60](*(v204 + 16));
        v206 = *(v204 + 16);
        if (!v206)
        {
          sub_255C7429C(v202, v203, v204, 7u);
          goto LABEL_200;
        }

        v918 = v204;
        v207 = (v204 + 56);
        do
        {
          v208 = *(v207 - 3);
          v209 = *(v207 - 2);
          v210 = *(v207 - 1);
          v211 = *v207;
          v207 += 32;
          sub_255C74200(v208, v209, v210, v211);
          sub_255D02110(a1, v208, v209, v210, v211);
          sub_255C7429C(v208, v209, v210, v211);
          --v206;
        }

        while (v206);
        v212 = v202;
        v213 = v203;
        v214 = v918;
        v215 = 7;
      }

      sub_255C7429C(v212, v213, v214, v215);
      v198 = v884;
      v199 = v863;
LABEL_200:
      if (++v200 == v198)
      {
        v63 = v817;
        v64 = v68;
        v65 = v842;
        v66 = 3;
        goto LABEL_64;
      }
    }
  }
}