uint64_t sub_24EA562C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SocialIntegrationContactsListPageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EA552BC(a1, v6, a2);
}

uint64_t sub_24EA56368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA563D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EA56440(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225F60, &qword_24F978A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EA564F8()
{
  result = qword_27F225F88;
  if (!qword_27F225F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225F40, &qword_24F978A18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225F38, &qword_24F978A10);
    sub_24E602068(&qword_27F225F80, &qword_27F225F38, &qword_24F978A10, &unk_24FA355D8);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21F360, &qword_27F21F328, &qword_24F95F890, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225F88);
  }

  return result;
}

unint64_t sub_24EA56620()
{
  result = qword_27F225F90;
  if (!qword_27F225F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225F90);
  }

  return result;
}

uint64_t sub_24EA56674()
{

  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  }

  return swift_deallocObject();
}

unint64_t sub_24EA566EC()
{
  result = qword_27F225FA0;
  if (!qword_27F225FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225FA0);
  }

  return result;
}

uint64_t sub_24EA56740()
{

  if (*(v0 + 144))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  }

  return swift_deallocObject();
}

unint64_t sub_24EA567E0()
{
  result = qword_27F225FA8;
  if (!qword_27F225FA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F225FA8);
  }

  return result;
}

uint64_t sub_24EA5682C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EA56894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EA568F8()
{
  result = qword_27F225FB0;
  if (!qword_27F225FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225FB8, &unk_24F978AA0);
    sub_24E602068(&qword_27F225FC0, &qword_27F225F20, &qword_24F978970, &unk_24FA10C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225FB0);
  }

  return result;
}

uint64_t sub_24EA569CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40, &unk_24F9623F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EA56B1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40, &unk_24F9623F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24EA56C78(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E61C8D4(319);
    if (v2 <= 0x3F)
    {
      sub_24EA56E1C(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24EA56E1C(319, &qword_27F225FD8, type metadata accessor for GameDetailsAnnotation, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_24EA56E1C(319, &qword_27F21FF68, type metadata accessor for ButtonGroupItem, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24EA56DD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24EA56E1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24EA56E80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40, &unk_24F9623F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225FF8, &unk_24F978CD0);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for GameDetailsAnnotationCard(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v40 = v14 + 40;
  sub_24E61DA68(&v41, (v14 + 40), qword_27F21B590, &unk_24F93BE30);
  v15 = *(v12 + 24);
  v16 = sub_24F929608();
  v17 = *(*(v16 - 8) + 56);
  v37 = v15;
  v17(&v14[v15], 1, 1, v16);
  v34 = v12;
  v18 = *(v12 + 32);
  v19 = type metadata accessor for ButtonGroupItem(0);
  v20 = *(*(v19 - 8) + 56);
  v38 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24EA5A760();
  v35 = v11;
  v22 = v36;
  sub_24F92D108();
  if (v22)
  {
    v24 = v37;
    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_24E601704(v40, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v14[v24], &qword_27F213E68, &unk_24F93BC80);
    return sub_24E601704(&v14[v38], &qword_27F21FF40, &unk_24F9623F0);
  }

  else
  {
    v36 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v44 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v23 = v33;
    sub_24F92CC68();
    v25 = v42;
    *v14 = v41;
    *(v14 + 1) = v25;
    *(v14 + 4) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v44 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v26 = v37;
    sub_24E61DA68(&v41, v40, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v41) = 2;
    sub_24EA56DD4(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v27 = v8;
    sub_24F92CC18();
    v28 = v32;
    sub_24E61DA68(v27, &v14[v26], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226008, &qword_24F978CE0);
    v44 = 3;
    sub_24EA5A7B4();
    sub_24F92CC68();
    *&v14[*(v34 + 28)] = v41;
    LOBYTE(v41) = 4;
    sub_24EA56DD4(&qword_27F21C668, type metadata accessor for ButtonGroupItem, &unk_24F95A6A8);
    v29 = v36;
    sub_24F92CC18();
    (*(v28 + 8))(v35, v23);
    sub_24E61DA68(v29, &v14[v38], &qword_27F21FF40, &unk_24F9623F0);
    sub_24EA5AE20(v14, v31, type metadata accessor for GameDetailsAnnotationCard);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return sub_24EA5AE88(v14, type metadata accessor for GameDetailsAnnotationCard);
  }
}

unint64_t sub_24EA57530()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x697461746F6E6E61;
  if (v1 != 3)
  {
    v4 = 0x7542656E696C6E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
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

uint64_t sub_24EA575D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EA5AC64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EA575F8(uint64_t a1)
{
  v2 = sub_24EA5A760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA57634(uint64_t a1)
{
  v2 = sub_24EA5A760();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EA576D8()
{
  result = qword_27F225FE0;
  if (!qword_27F225FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225FE0);
  }

  return result;
}

void sub_24EA5772C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GameDetailsAnnotationCard(0);
  v13 = *(v12 + 32);
  v14 = *(a1 + *(v12 + 28));
  v15 = type metadata accessor for GameDetailsAnnotationCardComponent.GameDetailsAnnotationView(0);
  sub_24E60169C(a1 + v13, a4 + *(v15 + 20), &qword_27F21FF40, &unk_24F9623F0);

  if ((a3 & 1) == 0)
  {
    sub_24E62AB1C(a2, 0);
    sub_24F92BDC8();
    v18 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a2, 0);
    (*(v9 + 8))(v11, v8);
    v16 = v20;
    if (v20 > 5u)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = qword_24F979020[v16];
    goto LABEL_6;
  }

  v16 = a2;
  if (a2 <= 5u)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = 3;
LABEL_6:
  *a4 = v14;
  *(a4 + *(v15 + 24)) = v17;
}

uint64_t sub_24EA57900@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226060, &qword_24F978EB8);
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214598, &qword_24F978EC0);
  MEMORY[0x28223BE20](v6);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40, &unk_24F9623F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for ButtonGroupItem(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226068, &qword_24F978EC8);
  MEMORY[0x28223BE20](v17 - 8);
  v53 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  v52 = sub_24F924988();
  LOBYTE(v70) = 0;
  sub_24EA580F4(a1, v81);
  *&v80[7] = v81[0];
  *&v80[23] = v81[1];
  *&v80[39] = v81[2];
  *&v80[55] = v82;
  v51 = v70;
  v22 = type metadata accessor for GameDetailsAnnotationCardComponent.GameDetailsAnnotationView(0);
  sub_24E60169C(a1 + *(v22 + 20), v12, &qword_27F21FF40, &unk_24F9623F0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24E601704(v12, &qword_27F21FF40, &unk_24F9623F0);
    (*(v54 + 56))(v21, 1, 1, v55);
  }

  else
  {
    v23 = v12;
    v24 = v16;
    v47 = v16;
    sub_24EA5B01C(v23, v16, type metadata accessor for ButtonGroupItem);
    v25 = v48;
    sub_24F9271E8();
    v26 = sub_24F9251C8();
    *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145B0, &qword_24F93D200) + 36)) = v26;
    v27 = *(v6 + 36);
    v28 = *MEMORY[0x277CE13B8];
    v29 = sub_24F927748();
    (*(*(v29 - 8) + 104))(v25 + v27, v28, v29);
    *(&v71[1] + 1) = v13;
    *&v71[2] = sub_24EA56DD4(&qword_27F21AAB0, type metadata accessor for ButtonGroupItem, &unk_24F95A6D0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
    sub_24EA5AE20(v24, boxed_opaque_existential_1, type metadata accessor for ButtonGroupItem);
    type metadata accessor for GSKComponentContentBuilder(0);
    sub_24EA56DD4(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
    *&v70 = sub_24F923598();
    BYTE8(v70) = v31 & 1;
    sub_24F927618();
    sub_24F9242E8();
    v58 = v70;
    v59 = v71[0];
    v60 = v71[1];
    *&v61 = *&v71[2];
    LOBYTE(v28) = sub_24F925868();
    sub_24F923318();
    v69 = 0;
    v71[7] = v66;
    v71[8] = v67;
    v72 = v68;
    v71[3] = v62;
    v71[4] = v63;
    v71[5] = v64;
    v71[6] = v65;
    v70 = v58;
    v71[0] = v59;
    v71[1] = v60;
    v71[2] = v61;
    v73 = v28;
    *v74 = v56;
    *&v74[3] = *(&v56 + 3);
    v75 = v32;
    v76 = v33;
    v77 = v34;
    v78 = v35;
    v79 = 0;
    v36 = v49;
    sub_24E60169C(v25, v49, &qword_27F214598, &qword_24F978EC0);
    sub_24E60169C(&v70, &v56, &qword_27F226080, &qword_24F978EE8);
    v37 = v50;
    sub_24E60169C(v36, v50, &qword_27F214598, &qword_24F978EC0);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226088, &qword_24F978EF0);
    sub_24E60169C(&v56, v37 + *(v38 + 48), &qword_27F226080, &qword_24F978EE8);
    sub_24E601704(&v70, &qword_27F226080, &qword_24F978EE8);
    sub_24E601704(v25, &qword_27F214598, &qword_24F978EC0);
    sub_24EA5AE88(v47, type metadata accessor for ButtonGroupItem);
    sub_24E601704(&v56, &qword_27F226080, &qword_24F978EE8);
    sub_24E601704(v36, &qword_27F214598, &qword_24F978EC0);
    sub_24E6009C8(v37, v21, &qword_27F226060, &qword_24F978EB8);
    (*(v54 + 56))(v21, 0, 1, v55);
  }

  v39 = v53;
  sub_24E60169C(v21, v53, &qword_27F226068, &qword_24F978EC8);
  v40 = v21;
  v41 = v52;
  *&v56 = v52;
  *(&v56 + 1) = 0x4034000000000000;
  v42 = v51;
  LOBYTE(v57[0]) = v51;
  *(v57 + 1) = *v80;
  *(&v57[1] + 1) = *&v80[16];
  *(&v57[2] + 10) = *&v80[41];
  *(&v57[2] + 1) = *&v80[32];
  v43 = v57[0];
  *a2 = v56;
  a2[1] = v43;
  v44 = v57[2];
  a2[2] = v57[1];
  a2[3] = v44;
  *(a2 + 58) = *(&v57[2] + 10);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226070, &qword_24F978ED0);
  sub_24E60169C(v39, a2 + *(v45 + 48), &qword_27F226068, &qword_24F978EC8);
  sub_24E60169C(&v56, &v70, &qword_27F226078, &unk_24F978ED8);
  sub_24E601704(v40, &qword_27F226068, &qword_24F978EC8);
  sub_24E601704(v39, &qword_27F226068, &qword_24F978EC8);
  *&v70 = v41;
  *(&v70 + 1) = 0x4034000000000000;
  LOBYTE(v71[0]) = v42;
  *(v71 + 1) = *v80;
  *(&v71[1] + 1) = *&v80[16];
  *(&v71[2] + 1) = *&v80[32];
  *(&v71[2] + 10) = *&v80[41];
  return sub_24E601704(&v70, &qword_27F226078, &unk_24F978ED8);
}

double sub_24EA580F4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for GameDetailsAnnotationCardComponent.GameDetailsAnnotationView(0) + 24));
  if (v4 == 3)
  {
    sub_24EA58DEC(a1);
    sub_24EA59E4C(3.0);
    sub_24EA5936C(a1);
    sub_24EA59E4C(3.0);
    sub_24EA598DC(a1);
    sub_24EA59E4C(3.0);
  }

  else
  {
    if (v4 != 2)
    {
      sub_24EA59EB8();
      sub_24EA59E4C(1.0);
      goto LABEL_7;
    }

    sub_24EA58338(a1);
    sub_24EA59E4C(2.0);
    sub_24EA58890(a1);
    sub_24EA59E4C(2.0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2260A8, &qword_24F978F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2260B8, &qword_24F978F08);
  v5 = MEMORY[0x277CE14C0];
  sub_24E602068(&qword_27F2260A0, &qword_27F2260A8, &qword_24F978F00, MEMORY[0x277CE14C0]);
  sub_24E602068(&qword_27F2260B0, &qword_27F2260B8, &qword_24F978F08, v5);
  sub_24F924E28();
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226090, &qword_24F978EF8);
  sub_24EA5AEE8();
  sub_24EA5AFC8();
  sub_24F924E28();
  *a2 = v7;
  *(a2 + 16) = v8;
  result = *&v9;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  return result;
}

void sub_24EA58338(uint64_t *a1)
{
  v2 = type metadata accessor for GameDetailsAnnotation(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2260C8, &qword_24F978F10);
  v44 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - v9;
  MEMORY[0x28223BE20](v10);
  v48 = (&v42 - v11);
  MEMORY[0x28223BE20](v12);
  v47 = &v42 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = (&v42 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  v20 = *a1;
  v21 = *(*a1 + 16);
  if (v21 < 7)
  {
  }

  else
  {
    sub_24E6B8B14(*a1, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), 0, 0xDuLL);
    v20 = v22;
    v21 = *(v22 + 16);
  }

  v23 = v3;
  v24 = MEMORY[0x277D84F90];
  v49 = v3;
  if (v21)
  {
    v45 = v21;
    v25 = 0;
    v42 = v7;
    v43 = v5;
    while (v25 < *(v20 + 16))
    {
      v26 = v20 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v25;
      v27 = *(v50 + 48);
      *v16 = v25;
      sub_24EA5AE20(v26, v16 + v27, type metadata accessor for GameDetailsAnnotation);
      sub_24E6009C8(v16, v19, &qword_27F2260C8, &qword_24F978F10);
      if (*v19)
      {
        sub_24E601704(v19, &qword_27F2260C8, &qword_24F978F10);
      }

      else
      {
        sub_24E6009C8(v19, v7, &qword_27F2260C8, &qword_24F978F10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F4585C0(0, *(v24 + 2) + 1, 1);
          v23 = v49;
          v24 = v51;
        }

        v30 = *(v24 + 2);
        v29 = *(v24 + 3);
        if (v30 >= v29 >> 1)
        {
          sub_24F4585C0((v29 > 1), v30 + 1, 1);
          v23 = v49;
          v24 = v51;
        }

        *(v24 + 2) = v30 + 1;
        v7 = v42;
        sub_24E6009C8(v42, &v24[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v30], &qword_27F2260C8, &qword_24F978F10);
        v5 = v43;
      }

      if (v45 == ++v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    v31 = *(v24 + 2);
    if (v31)
    {
      v51 = MEMORY[0x277D84F90];
      sub_24F45857C(0, v31, 0);
      v32 = v51;
      v33 = *(v44 + 80);
      v43 = v24;
      v34 = &v24[(v33 + 32) & ~v33];
      v45 = *(v44 + 72);
      v35 = v46;
      do
      {
        v36 = v47;
        sub_24E60169C(v34, v47, &qword_27F2260C8, &qword_24F978F10);
        v37 = v48;
        sub_24E60169C(v36, v48, &qword_27F2260C8, &qword_24F978F10);
        v38 = *(v50 + 48);
        *v35 = *v37;
        sub_24EA5B01C(v37 + v38, v35 + v38, type metadata accessor for GameDetailsAnnotation);
        sub_24EA5AE20(v35 + v38, v5, type metadata accessor for GameDetailsAnnotation);
        sub_24E601704(v35, &qword_27F2260C8, &qword_24F978F10);
        sub_24E601704(v36, &qword_27F2260C8, &qword_24F978F10);
        v51 = v32;
        v39 = v5;
        v41 = *(v32 + 2);
        v40 = *(v32 + 3);
        if (v41 >= v40 >> 1)
        {
          sub_24F45857C((v40 > 1), v41 + 1, 1);
          v32 = v51;
        }

        *(v32 + 2) = v41 + 1;
        sub_24EA5B01C(v39, &v32[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v41], type metadata accessor for GameDetailsAnnotation);
        v34 += v45;
        --v31;
        v5 = v39;
      }

      while (v31);
    }
  }
}

void sub_24EA58890(uint64_t *a1)
{
  v2 = type metadata accessor for GameDetailsAnnotation(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2260C8, &qword_24F978F10);
  v44 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - v9;
  MEMORY[0x28223BE20](v10);
  v48 = (&v42 - v11);
  MEMORY[0x28223BE20](v12);
  v47 = &v42 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = (&v42 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = (&v42 - v18);
  v20 = *a1;
  v21 = *(*a1 + 16);
  if (v21 < 7)
  {
  }

  else
  {
    sub_24E6B8B14(*a1, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), 0, 0xDuLL);
    v20 = v22;
    v21 = *(v22 + 16);
  }

  v23 = v3;
  v24 = MEMORY[0x277D84F90];
  v49 = v3;
  if (v21)
  {
    v45 = v21;
    v25 = 0;
    v42 = v7;
    v43 = v5;
    while (v25 < *(v20 + 16))
    {
      v26 = v20 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v25;
      v27 = *(v50 + 48);
      *v16 = v25;
      sub_24EA5AE20(v26, v16 + v27, type metadata accessor for GameDetailsAnnotation);
      sub_24E6009C8(v16, v19, &qword_27F2260C8, &qword_24F978F10);
      if ((*v19 & 0x8000000000000001) == 1)
      {
        sub_24E6009C8(v19, v7, &qword_27F2260C8, &qword_24F978F10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F4585C0(0, *(v24 + 2) + 1, 1);
          v23 = v49;
          v24 = v51;
        }

        v30 = *(v24 + 2);
        v29 = *(v24 + 3);
        if (v30 >= v29 >> 1)
        {
          sub_24F4585C0((v29 > 1), v30 + 1, 1);
          v23 = v49;
          v24 = v51;
        }

        *(v24 + 2) = v30 + 1;
        v7 = v42;
        sub_24E6009C8(v42, &v24[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v30], &qword_27F2260C8, &qword_24F978F10);
        v5 = v43;
      }

      else
      {
        sub_24E601704(v19, &qword_27F2260C8, &qword_24F978F10);
      }

      if (v45 == ++v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    v31 = *(v24 + 2);
    if (v31)
    {
      v51 = MEMORY[0x277D84F90];
      sub_24F45857C(0, v31, 0);
      v32 = v51;
      v33 = *(v44 + 80);
      v43 = v24;
      v34 = &v24[(v33 + 32) & ~v33];
      v45 = *(v44 + 72);
      v35 = v46;
      do
      {
        v36 = v47;
        sub_24E60169C(v34, v47, &qword_27F2260C8, &qword_24F978F10);
        v37 = v48;
        sub_24E60169C(v36, v48, &qword_27F2260C8, &qword_24F978F10);
        v38 = *(v50 + 48);
        *v35 = *v37;
        sub_24EA5B01C(v37 + v38, v35 + v38, type metadata accessor for GameDetailsAnnotation);
        sub_24EA5AE20(v35 + v38, v5, type metadata accessor for GameDetailsAnnotation);
        sub_24E601704(v35, &qword_27F2260C8, &qword_24F978F10);
        sub_24E601704(v36, &qword_27F2260C8, &qword_24F978F10);
        v51 = v32;
        v39 = v5;
        v41 = *(v32 + 2);
        v40 = *(v32 + 3);
        if (v41 >= v40 >> 1)
        {
          sub_24F45857C((v40 > 1), v41 + 1, 1);
          v32 = v51;
        }

        *(v32 + 2) = v41 + 1;
        sub_24EA5B01C(v39, &v32[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v41], type metadata accessor for GameDetailsAnnotation);
        v34 += v45;
        --v31;
        v5 = v39;
      }

      while (v31);
    }
  }
}

void sub_24EA58DEC(uint64_t *a1)
{
  v2 = type metadata accessor for GameDetailsAnnotation(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2260C8, &qword_24F978F10);
  v44 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = (&v42 - v8);
  MEMORY[0x28223BE20](v9);
  v48 = (&v42 - v10);
  MEMORY[0x28223BE20](v11);
  v47 = &v42 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = (&v42 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = (&v42 - v17);
  v19 = *a1;
  v20 = *(*a1 + 16);
  if (v20 < 7)
  {
  }

  else
  {
    sub_24E6B8B14(*a1, v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), 0, 0xDuLL);
    v19 = v21;
    v20 = *(v21 + 16);
  }

  v22 = v3;
  v23 = MEMORY[0x277D84F90];
  v49 = v3;
  if (v20)
  {
    v24 = v20;
    v25 = 0;
    v42 = v24;
    v43 = v5;
    while (v25 < *(v19 + 16))
    {
      v26 = v19 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v25;
      v27 = *(v50 + 48);
      *v15 = v25;
      sub_24EA5AE20(v26, v15 + v27, type metadata accessor for GameDetailsAnnotation);
      sub_24E6009C8(v15, v18, &qword_27F2260C8, &qword_24F978F10);
      if (0xAAAAAAAAAAAAAAABLL * *v18 + 0x2AAAAAAAAAAAAAAALL >= 0x5555555555555555)
      {
        sub_24E601704(v18, &qword_27F2260C8, &qword_24F978F10);
      }

      else
      {
        sub_24E6009C8(v18, v45, &qword_27F2260C8, &qword_24F978F10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F4585C0(0, *(v23 + 2) + 1, 1);
          v22 = v49;
          v23 = v51;
        }

        v30 = *(v23 + 2);
        v29 = *(v23 + 3);
        if (v30 >= v29 >> 1)
        {
          sub_24F4585C0((v29 > 1), v30 + 1, 1);
          v22 = v49;
          v23 = v51;
        }

        *(v23 + 2) = v30 + 1;
        sub_24E6009C8(v45, &v23[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v30], &qword_27F2260C8, &qword_24F978F10);
        v24 = v42;
        v5 = v43;
      }

      if (v24 == ++v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    v31 = *(v23 + 2);
    if (v31)
    {
      v51 = MEMORY[0x277D84F90];
      sub_24F45857C(0, v31, 0);
      v32 = v51;
      v33 = *(v44 + 80);
      v43 = v23;
      v34 = &v23[(v33 + 32) & ~v33];
      v45 = *(v44 + 72);
      v35 = v47;
      do
      {
        sub_24E60169C(v34, v35, &qword_27F2260C8, &qword_24F978F10);
        v36 = v48;
        sub_24E60169C(v35, v48, &qword_27F2260C8, &qword_24F978F10);
        v37 = *(v50 + 48);
        v38 = v46;
        *v46 = *v36;
        sub_24EA5B01C(v36 + v37, v38 + v37, type metadata accessor for GameDetailsAnnotation);
        sub_24EA5AE20(v38 + v37, v5, type metadata accessor for GameDetailsAnnotation);
        sub_24E601704(v38, &qword_27F2260C8, &qword_24F978F10);
        sub_24E601704(v35, &qword_27F2260C8, &qword_24F978F10);
        v51 = v32;
        v39 = v5;
        v41 = *(v32 + 2);
        v40 = *(v32 + 3);
        if (v41 >= v40 >> 1)
        {
          sub_24F45857C((v40 > 1), v41 + 1, 1);
          v32 = v51;
        }

        *(v32 + 2) = v41 + 1;
        sub_24EA5B01C(v39, &v32[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v41], type metadata accessor for GameDetailsAnnotation);
        v34 += v45;
        --v31;
        v5 = v39;
      }

      while (v31);
    }
  }
}

void sub_24EA5936C(uint64_t *a1)
{
  v2 = type metadata accessor for GameDetailsAnnotation(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2260C8, &qword_24F978F10);
  v44 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - v9;
  MEMORY[0x28223BE20](v10);
  v48 = (&v42 - v11);
  MEMORY[0x28223BE20](v12);
  v47 = &v42 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = (&v42 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = (&v42 - v18);
  v20 = *a1;
  v21 = *(*a1 + 16);
  if (v21 < 7)
  {
  }

  else
  {
    sub_24E6B8B14(*a1, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), 0, 0xDuLL);
    v20 = v22;
    v21 = *(v22 + 16);
  }

  v23 = v3;
  v24 = MEMORY[0x277D84F90];
  v49 = v3;
  if (v21)
  {
    v45 = v21;
    v25 = 0;
    v42 = v7;
    v43 = v5;
    while (v25 < *(v20 + 16))
    {
      v26 = v20 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v25;
      v27 = *(v50 + 48);
      *v16 = v25;
      sub_24EA5AE20(v26, v16 + v27, type metadata accessor for GameDetailsAnnotation);
      sub_24E6009C8(v16, v19, &qword_27F2260C8, &qword_24F978F10);
      if (*v19 % 3 == 1)
      {
        sub_24E6009C8(v19, v7, &qword_27F2260C8, &qword_24F978F10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F4585C0(0, *(v24 + 2) + 1, 1);
          v23 = v49;
          v24 = v51;
        }

        v30 = *(v24 + 2);
        v29 = *(v24 + 3);
        if (v30 >= v29 >> 1)
        {
          sub_24F4585C0((v29 > 1), v30 + 1, 1);
          v23 = v49;
          v24 = v51;
        }

        *(v24 + 2) = v30 + 1;
        v7 = v42;
        sub_24E6009C8(v42, &v24[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v30], &qword_27F2260C8, &qword_24F978F10);
        v5 = v43;
      }

      else
      {
        sub_24E601704(v19, &qword_27F2260C8, &qword_24F978F10);
      }

      if (v45 == ++v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    v31 = *(v24 + 2);
    if (v31)
    {
      v51 = MEMORY[0x277D84F90];
      sub_24F45857C(0, v31, 0);
      v32 = v51;
      v33 = *(v44 + 80);
      v43 = v24;
      v34 = &v24[(v33 + 32) & ~v33];
      v45 = *(v44 + 72);
      v35 = v46;
      do
      {
        v36 = v47;
        sub_24E60169C(v34, v47, &qword_27F2260C8, &qword_24F978F10);
        v37 = v48;
        sub_24E60169C(v36, v48, &qword_27F2260C8, &qword_24F978F10);
        v38 = *(v50 + 48);
        *v35 = *v37;
        sub_24EA5B01C(v37 + v38, v35 + v38, type metadata accessor for GameDetailsAnnotation);
        sub_24EA5AE20(v35 + v38, v5, type metadata accessor for GameDetailsAnnotation);
        sub_24E601704(v35, &qword_27F2260C8, &qword_24F978F10);
        sub_24E601704(v36, &qword_27F2260C8, &qword_24F978F10);
        v51 = v32;
        v39 = v5;
        v41 = *(v32 + 2);
        v40 = *(v32 + 3);
        if (v41 >= v40 >> 1)
        {
          sub_24F45857C((v40 > 1), v41 + 1, 1);
          v32 = v51;
        }

        *(v32 + 2) = v41 + 1;
        sub_24EA5B01C(v39, &v32[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v41], type metadata accessor for GameDetailsAnnotation);
        v34 += v45;
        --v31;
        v5 = v39;
      }

      while (v31);
    }
  }
}

void sub_24EA598DC(uint64_t *a1)
{
  v2 = type metadata accessor for GameDetailsAnnotation(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2260C8, &qword_24F978F10);
  v44 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - v9;
  MEMORY[0x28223BE20](v10);
  v48 = (&v42 - v11);
  MEMORY[0x28223BE20](v12);
  v47 = &v42 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = (&v42 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = (&v42 - v18);
  v20 = *a1;
  v21 = *(*a1 + 16);
  if (v21 < 7)
  {
  }

  else
  {
    sub_24E6B8B14(*a1, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), 0, 0xDuLL);
    v20 = v22;
    v21 = *(v22 + 16);
  }

  v23 = v3;
  v24 = MEMORY[0x277D84F90];
  v49 = v3;
  if (v21)
  {
    v45 = v21;
    v25 = 0;
    v42 = v7;
    v43 = v5;
    while (v25 < *(v20 + 16))
    {
      v26 = v20 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v25;
      v27 = *(v50 + 48);
      *v16 = v25;
      sub_24EA5AE20(v26, v16 + v27, type metadata accessor for GameDetailsAnnotation);
      sub_24E6009C8(v16, v19, &qword_27F2260C8, &qword_24F978F10);
      if (*v19 % 3 == 2)
      {
        sub_24E6009C8(v19, v7, &qword_27F2260C8, &qword_24F978F10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F4585C0(0, *(v24 + 2) + 1, 1);
          v23 = v49;
          v24 = v51;
        }

        v30 = *(v24 + 2);
        v29 = *(v24 + 3);
        if (v30 >= v29 >> 1)
        {
          sub_24F4585C0((v29 > 1), v30 + 1, 1);
          v23 = v49;
          v24 = v51;
        }

        *(v24 + 2) = v30 + 1;
        v7 = v42;
        sub_24E6009C8(v42, &v24[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v30], &qword_27F2260C8, &qword_24F978F10);
        v5 = v43;
      }

      else
      {
        sub_24E601704(v19, &qword_27F2260C8, &qword_24F978F10);
      }

      if (v45 == ++v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    v31 = *(v24 + 2);
    if (v31)
    {
      v51 = MEMORY[0x277D84F90];
      sub_24F45857C(0, v31, 0);
      v32 = v51;
      v33 = *(v44 + 80);
      v43 = v24;
      v34 = &v24[(v33 + 32) & ~v33];
      v45 = *(v44 + 72);
      v35 = v46;
      do
      {
        v36 = v47;
        sub_24E60169C(v34, v47, &qword_27F2260C8, &qword_24F978F10);
        v37 = v48;
        sub_24E60169C(v36, v48, &qword_27F2260C8, &qword_24F978F10);
        v38 = *(v50 + 48);
        *v35 = *v37;
        sub_24EA5B01C(v37 + v38, v35 + v38, type metadata accessor for GameDetailsAnnotation);
        sub_24EA5AE20(v35 + v38, v5, type metadata accessor for GameDetailsAnnotation);
        sub_24E601704(v35, &qword_27F2260C8, &qword_24F978F10);
        sub_24E601704(v36, &qword_27F2260C8, &qword_24F978F10);
        v51 = v32;
        v39 = v5;
        v41 = *(v32 + 2);
        v40 = *(v32 + 3);
        if (v41 >= v40 >> 1)
        {
          sub_24F45857C((v40 > 1), v41 + 1, 1);
          v32 = v51;
        }

        *(v32 + 2) = v41 + 1;
        sub_24EA5B01C(v39, &v32[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v41], type metadata accessor for GameDetailsAnnotation);
        v34 += v45;
        --v31;
        v5 = v39;
      }

      while (v31);
    }
  }
}

uint64_t sub_24EA59E4C(double a1)
{
  v2 = *(*v1 + 16);
  if (v2 >= 6)
  {
    v2 = 6;
  }

  v3 = ceil(v2 / a1);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

double sub_24EA59EB8()
{
  v1 = *v0;
  if (*(*v0 + 16) <= 6uLL)
  {
  }

  else
  {
    v2 = *(type metadata accessor for GameDetailsAnnotation(0) - 8);
    v3 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

    sub_24E6B8B14(v1, v3, 0, 0xDuLL);
  }

  return result;
}

double sub_24EA59F5C@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226050, &qword_24F978E78);
  sub_24EA57900(v2, (a2 + *(v4 + 44)));
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226058, &qword_24F978E80) + 36);
  v6 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v7 = type metadata accessor for GradientBackground(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  result = 26.0;
  *(v5 + 16) = xmmword_24F978AB0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 256;
  return result;
}

uint64_t sub_24EA5A040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v32[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214598, &qword_24F978EC0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226110, &qword_24F979000);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v32 - v15;
  v17 = type metadata accessor for AnnotationView(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v32 - v21;
  sub_24EA5AE20(a2, v32 + *(v23 + 28) - v21, type metadata accessor for GameDetailsAnnotation);
  v32[1] = 0x4050800000000000;
  sub_24E62C088();
  result = sub_24F9237C8();
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    if (a3 - 1 <= a1)
    {
      v29 = 1;
    }

    else
    {
      sub_24F9271E8();
      v25 = sub_24F9251C8();
      *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145B0, &qword_24F93D200) + 36)] = v25;
      v26 = *(v7 + 36);
      v27 = *MEMORY[0x277CE13B8];
      v28 = sub_24F927748();
      (*(*(v28 - 8) + 104))(&v10[v26], v27, v28);
      sub_24E6009C8(v10, v16, &qword_27F214598, &qword_24F978EC0);
      v29 = 0;
    }

    (*(v8 + 56))(v16, v29, 1, v7);
    sub_24EA5AE20(v22, v19, type metadata accessor for AnnotationView);
    sub_24E60169C(v16, v13, &qword_27F226110, &qword_24F979000);
    v30 = v32[0];
    sub_24EA5AE20(v19, v32[0], type metadata accessor for AnnotationView);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226118, &qword_24F979008);
    sub_24E60169C(v13, v30 + *(v31 + 48), &qword_27F226110, &qword_24F979000);
    sub_24E601704(v16, &qword_27F226110, &qword_24F979000);
    sub_24EA5AE88(v22, type metadata accessor for AnnotationView);
    sub_24E601704(v13, &qword_27F226110, &qword_24F979000);
    return sub_24EA5AE88(v19, type metadata accessor for AnnotationView);
  }

  return result;
}

uint64_t sub_24EA5A3D8@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2260E8, &qword_24F978FB0);
  sub_24F406C28(v5);
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24EA5B22C;
  *(v7 + 24) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2260F0, &qword_24F978FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2260F8, &qword_24F978FF8);
  sub_24E602068(&qword_27F226100, &qword_27F2260F0, &qword_24F978FF0, MEMORY[0x277D83980]);
  sub_24E602068(&qword_27F226108, &qword_27F2260F8, &qword_24F978FF8, MEMORY[0x277CE14C0]);
  return sub_24F927228();
}

uint64_t sub_24EA5A594(uint64_t a1)
{
  sub_24E62AB1C(*v1, *(v1 + 8));
  sub_24EA576D8();
  return sub_24F9218E8();
}

unint64_t sub_24EA5A640()
{
  result = qword_27F225FF0;
  if (!qword_27F225FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225FF0);
  }

  return result;
}

unint64_t sub_24EA5A760()
{
  result = qword_27F226000;
  if (!qword_27F226000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226000);
  }

  return result;
}

unint64_t sub_24EA5A7B4()
{
  result = qword_27F226010;
  if (!qword_27F226010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226008, &qword_24F978CE0);
    sub_24EA56DD4(&qword_27F226018, type metadata accessor for GameDetailsAnnotation, &unk_24F93D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226010);
  }

  return result;
}

uint64_t sub_24EA5A88C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40, &unk_24F9623F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24EA5A95C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FF40, &unk_24F9623F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EA5AA0C(uint64_t a1)
{
  sub_24EA56E1C(319, &qword_27F225FD8, type metadata accessor for GameDetailsAnnotation, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24EA56E1C(319, &qword_27F21FF68, type metadata accessor for ButtonGroupItem, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24EA5AB60()
{
  result = qword_27F226038;
  if (!qword_27F226038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226038);
  }

  return result;
}

unint64_t sub_24EA5ABB8()
{
  result = qword_27F226040;
  if (!qword_27F226040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226040);
  }

  return result;
}

unint64_t sub_24EA5AC10()
{
  result = qword_27F226048;
  if (!qword_27F226048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226048);
  }

  return result;
}

uint64_t sub_24EA5AC64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEB00000000736E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7542656E696C6E69 && a2 == 0xEC0000006E6F7474)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24EA5AE20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EA5AE88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EA5AEE8()
{
  result = qword_27F226098;
  if (!qword_27F226098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226090, &qword_24F978EF8);
    v1 = MEMORY[0x277CE14C0];
    sub_24E602068(&qword_27F2260A0, &qword_27F2260A8, &qword_24F978F00, MEMORY[0x277CE14C0]);
    sub_24E602068(&qword_27F2260B0, &qword_27F2260B8, &qword_24F978F08, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226098);
  }

  return result;
}

unint64_t sub_24EA5AFC8()
{
  result = qword_27F2260C0;
  if (!qword_27F2260C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2260C0);
  }

  return result;
}

uint64_t sub_24EA5B01C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EA5B098()
{
  result = qword_27F2260D0;
  if (!qword_27F2260D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226058, &qword_24F978E80);
    sub_24E602068(&qword_27F2260D8, &qword_27F2260E0, &qword_24F978F58, MEMORY[0x277CE1198]);
    sub_24EA56DD4(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier, &unk_24FA0D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2260D0);
  }

  return result;
}

double sub_24EA5B19C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_24EA5B1F4()
{

  return swift_deallocObject();
}

uint64_t sub_24EA5B234()
{

  return swift_deallocObject();
}

uint64_t sub_24EA5B26C(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2260C8, &qword_24F978F10);
  return v3(v4, &a1[*(v5 + 48)]);
}

_BYTE *GameInfoSummary.__allocating_init(supportsLeaderboards:supportsAchievements:supportsChallenges:)(char a1, char a2, char a3)
{
  result = swift_allocObject();
  result[16] = a1;
  result[17] = a2;
  result[18] = a3;
  return result;
}

_BYTE *GameInfoSummary.init(supportsLeaderboards:supportsAchievements:supportsChallenges:)(char a1, char a2, char a3)
{
  v3[16] = a1;
  v3[17] = a2;
  v3[18] = a3;
  return v3;
}

id sub_24EA5B378(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  result = [v4 valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v1 + 16);
  v7 = result;
  result = [v4 valueWithBool:v6 inContext:a1];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_24F92C328();
  result = [v4 valueWithBool:*(v2 + 17) inContext:a1];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_24F92C328();
  result = [v4 valueWithBool:*(v2 + 18) inContext:a1];
  if (result)
  {
    sub_24F92C328();

    return v7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24EA5B568@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v13[-v7];
  v9 = qword_27F226130;
  swift_beginAccess();
  sub_24E747EE8(v1 + v9, v8);
  v10 = sub_24F91F008();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_24E601704(v8, &qword_27F215340, &qword_24F943530);
  sub_24EA5B748(a1);
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_24EA5BF80(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_24EA5B748@<X0>(uint64_t a1@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330, &unk_24F93FBE0);
  MEMORY[0x28223BE20](v35);
  v34 = &v33 - v2;
  v44 = sub_24F91F0C8();
  v39 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F91EF38();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24F91EF18();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v33 - v11;
  v12 = sub_24F91EF48();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215348, &unk_24F93FBF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  Paragraph.text.getter();
  sub_24F91F068();
  v36 = a1;
  v19 = v9;
  sub_24F91EF68();
  (*(v13 + 16))(v18, v15, v12);
  sub_24E6584F8(&qword_27F215360, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
  sub_24F92BB88();
  (*(v13 + 8))(v15, v12);
  v20 = v37;
  ++v45;
  v40 = (v7 + 32);
  v41 = (v7 + 16);
  v38 = (v7 + 8);
  ++v39;
  v33 = v6;
  v21 = v42;
  while (1)
  {
    sub_24F92BC08();
    sub_24E6584F8(&unk_27F237EA0, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v22 = v46;
    v23 = sub_24F92AFF8();
    (*v45)(v6, v22);
    if (v23)
    {
      break;
    }

    v24 = sub_24F92BC88();
    (*v41)(v21);
    v24(&v48, 0);
    v25 = v12;
    sub_24F92BC18();
    (*v40)(v19, v21, v20);
    v26 = v43;
    sub_24F91EEF8();
    sub_24EA5BFF0();
    sub_24F91F0D8();
    (*v39)(v26, v44);
    if (v49 == 1 || (v48 & 2) == 0)
    {
      (*v38)(v19, v20);
    }

    else
    {
      v27 = v34;
      sub_24F91EF08();
      v28 = v19;
      v29 = sub_24F926D18();
      sub_24E658594();
      v30 = sub_24F91F048();
      v47 = v29;
      v19 = v28;
      sub_24E876600();
      sub_24F91F148();
      v30(&v48, 0);
      v6 = v33;
      v31 = v27;
      v20 = v37;
      sub_24E601704(v31, &qword_27F22D330, &unk_24F93FBE0);
      (*v38)(v28, v20);
    }

    v12 = v25;
  }

  return sub_24E601704(v18, &qword_27F215348, &unk_24F93FBF0);
}

uint64_t sub_24EA5BD74()
{
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  sub_24E601704(__dst, &qword_27F226148, &unk_24F979110);
  return sub_24E601704(v0 + qword_27F226130, &qword_27F215340, &qword_24F943530);
}

uint64_t sub_24EA5BDE0()
{

  memcpy(__dst, (v0 + 24), sizeof(__dst));

  sub_24E601704(__dst, &qword_27F226148, &unk_24F979110);
  sub_24E601704(v0 + qword_27F226130, &qword_27F215340, &qword_24F943530);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ParagraphViewModel(uint64_t a1)
{
  result = qword_27F226138;
  if (!qword_27F226138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA5BEE4(uint64_t a1)
{
  sub_24E658094(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_24EA5BF80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EA5BFF0()
{
  result = qword_27F226150;
  if (!qword_27F226150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226150);
  }

  return result;
}

uint64_t sub_24EA5C058(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_24EA5C128(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for OverlayActiveCallPageView(uint64_t a1)
{
  result = qword_27F226158;
  if (!qword_27F226158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA5C224(uint64_t a1)
{
  sub_24EA5C2E0(319);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      sub_24EA5C338();
      if (v3 <= 0x3F)
      {
        sub_24E684120(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EA5C2E0(uint64_t a1)
{
  if (!qword_27F226168)
  {
    type metadata accessor for OverlayActiveCallPageViewModel(255);
    v1 = sub_24F926F68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F226168);
    }
  }
}

void sub_24EA5C338()
{
  if (!qword_27F254DF0)
  {
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F254DF0);
    }
  }
}

void sub_24EA5C3A4(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 != 1)
  {
    v9 = 374.0;
    if (*(v1 + 56))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = [objc_opt_self() mainScreen];
  [v7 bounds];
  v9 = v8;

  if ((*(v1 + 56) & 1) == 0)
  {
LABEL_7:
    v10 = *(v1 + 24);
    v11 = *(v1 + 32);
    v13 = *(v1 + 40);
    v12 = *(v1 + 48);

    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v10, v11, v13, v12, 0);
    (*(v4 + 8))(v6, v3);
  }

LABEL_8:
  v15 = 1580.0;
  if (v9 <= 1580.0)
  {
    v15 = v9;
  }

  if (byte_27F2301A8)
  {
    v16 = 44.0;
    v17 = v15 >= 428.0 || v15 < 376.0;
    v18 = 46.0;
    if (!v17)
    {
      v18 = 38.0;
    }

    if (v15 < 0.0 || v15 >= 376.0)
    {
      v16 = v18;
    }
  }

  else
  {
    v16 = 40.0;
  }

  *a1 = v9;
  *(a1 + 8) = 0x4098B00000000000;
  *(a1 + 16) = v15;
  *(a1 + 24) = v15 - (v16 + v16);
  *(a1 + 32) = v16;
  *(a1 + 40) = (v9 - v15) * 0.5 + v16;
}

__n128 sub_24EA5C65C@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  type metadata accessor for OverlayActiveCall(0);
  sub_24EA5DF48(&qword_27F2376F0, type metadata accessor for OverlayActiveCall, &unk_24F9BFFD4);

  a2->n128_u64[0] = sub_24F923C28();
  a2->n128_u64[1] = v3;
  __asm { FMOV            V0.2D, #14.0 }

  a2[1] = result;
  a2[2].n128_u64[0] = 0x4046000000000000;
  return result;
}

uint64_t sub_24EA5C6F4@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for OverlayActiveCallPageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226170, &qword_24F979198);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226178, &qword_24F9791A0);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v20 = v18 - v9;
  v25 = v1;
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226180, &qword_24F9791A8);
  sub_24EA5D8A4();
  sub_24F923438();
  if (qword_27F210FD0 != -1)
  {
    swift_once();
  }

  v10 = off_27F23BE70;
  swift_getKeyPath();
  v18[3] = OBJC_IVAR____TtC12GameStoreKit17OverlayCallCenter___observationRegistrar;
  v26 = v10;
  v18[2] = sub_24EA5DF48(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  v26 = v10[5];
  sub_24EA5DB9C(v1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_24EA5DC04(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v18[0] = sub_24E602068(&qword_27F2261C8, &qword_27F226170, &qword_24F979198, MEMORY[0x277CDD6E0]);
  v18[1] = v4;
  v13 = v20;
  v14 = v21;
  sub_24F926AB8();

  (*(v19 + 8))(v7, v14);
  swift_getKeyPath();
  v26 = v10;
  sub_24F91FD88();

  v30 = v10[6];
  sub_24EA5DB9C(v1, v5);
  v15 = swift_allocObject();
  sub_24EA5DC04(v5, v15 + v11);
  v26 = v14;
  v27 = MEMORY[0x277D83B88];
  v28 = v18[0];
  v29 = MEMORY[0x277D83BA8];
  swift_getOpaqueTypeConformance2();
  v16 = v23;
  sub_24F926AB8();

  return (*(v22 + 8))(v13, v16);
}

uint64_t sub_24EA5CBA4@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2261A8, &qword_24F9791B8);
  MEMORY[0x28223BE20](v60);
  v55 = (&v52 - v3);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2261D8, &qword_24F979228);
  MEMORY[0x28223BE20](v57);
  v59 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2261E0, &unk_24F979230);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v52 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226198, &qword_24F9791B0);
  MEMORY[0x28223BE20](v58);
  v54 = (&v52 - v7);
  v8 = sub_24F925218();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v52 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = (&v52 - v22);
  type metadata accessor for OverlayActiveCallPageView(0);
  v56 = a1;
  sub_24F769764(v23);
  (*(v9 + 104))(v20, *MEMORY[0x277CE0558], v8);
  (*(v9 + 56))(v20, 0, 1, v8);
  v24 = *(v12 + 56);
  sub_24E60169C(v23, v14, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v20, &v14[v24], &qword_27F215598, &qword_24F945EF0);
  v25 = *(v9 + 48);
  if (v25(v14, 1, v8) == 1)
  {
    sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
    if (v25(&v14[v24], 1, v8) == 1)
    {
      sub_24E601704(v14, &qword_27F215598, &qword_24F945EF0);
LABEL_9:
      v43 = sub_24F924988();
      v44 = v54;
      *v54 = v43;
      *(v44 + 8) = 0;
      *(v44 + 16) = 1;
      v45 = v53;
      sub_24EA5D564(v56, v53);
      sub_24F927618();
      v46 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226210, &qword_24F979278) + 44);
      sub_24F9242E8();
      sub_24EA5DED8(v45, v46);
      v47 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226218, &qword_24F979280) + 36));
      v48 = v63[5];
      v47[4] = v63[4];
      v47[5] = v48;
      v47[6] = v63[6];
      v49 = v63[1];
      *v47 = v63[0];
      v47[1] = v49;
      v50 = v63[3];
      v47[2] = v63[2];
      v47[3] = v50;
      v37 = &qword_27F226198;
      v38 = &qword_24F9791B0;
      sub_24E60169C(v44, v59, &qword_27F226198, &qword_24F9791B0);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F226190, &qword_27F226198, &qword_24F9791B0, MEMORY[0x277CE1138]);
      sub_24EA5D95C();
      sub_24F924E28();
      v39 = v44;
      return sub_24E601704(v39, v37, v38);
    }

    goto LABEL_6;
  }

  sub_24E60169C(v14, v17, &qword_27F215598, &qword_24F945EF0);
  if (v25(&v14[v24], 1, v8) == 1)
  {
    sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
    (*(v9 + 8))(v17, v8);
LABEL_6:
    sub_24E601704(v14, &unk_27F254F20, &qword_24F940790);
    goto LABEL_7;
  }

  v40 = v52;
  (*(v9 + 32))(v52, &v14[v24], v8);
  sub_24EA5DF48(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v41 = sub_24F92AFF8();
  v42 = *(v9 + 8);
  v42(v40, v8);
  sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
  v42(v17, v8);
  sub_24E601704(v14, &qword_27F215598, &qword_24F945EF0);
  if (v41)
  {
    goto LABEL_9;
  }

LABEL_7:
  v26 = sub_24F924C88();
  v27 = v55;
  *v55 = v26;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2261E8, &qword_24F979240);
  v28 = v56[1];
  *&v63[0] = *v56;
  *(&v63[0] + 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2261D0, &qword_24F979220);
  sub_24F926F38();
  v29 = v62;
  swift_getKeyPath();
  *&v63[0] = v29;
  sub_24EA5DF48(&qword_27F2261F0, type metadata accessor for OverlayActiveCallPageViewModel, &unk_24F9BCD50);
  sub_24F91FD88();

  v30 = *&v29[OBJC_IVAR____TtC12GameStoreKit30OverlayActiveCallPageViewModel__calls];

  *&v63[0] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225090, &qword_24F974D10);
  sub_24E602068(&qword_27F2261F8, &qword_27F225090, &qword_24F974D10, MEMORY[0x277D83980]);
  sub_24EA5DE84();
  sub_24EA5DF48(&qword_27F226208, type metadata accessor for OverlayActiveCall, &unk_24F9BFF9C);
  sub_24F927238();
  LOBYTE(v30) = sub_24F9257F8();
  sub_24EA5C3A4(v63);
  sub_24F923318();
  v31 = v59;
  v32 = v27 + *(v60 + 36);
  *v32 = v30;
  *(v32 + 8) = v33;
  *(v32 + 16) = v34;
  *(v32 + 24) = v35;
  *(v32 + 32) = v36;
  *(v32 + 40) = 0;
  v37 = &qword_27F2261A8;
  v38 = &qword_24F9791B8;
  sub_24E60169C(v27, v31, &qword_27F2261A8, &qword_24F9791B8);
  swift_storeEnumTagMultiPayload();
  sub_24E602068(&qword_27F226190, &qword_27F226198, &qword_24F9791B0, MEMORY[0x277CE1138]);
  sub_24EA5D95C();
  sub_24F924E28();
  v39 = v27;
  return sub_24E601704(v39, v37, v38);
}

uint64_t sub_24EA5D564@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2261B8, &qword_24F9791C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  *v9 = sub_24F924C88();
  *(v9 + 1) = 0;
  v9[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2261E8, &qword_24F979240);
  v10 = a1[1];
  v16 = *a1;
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2261D0, &qword_24F979220);
  sub_24F926F38();
  v11 = v15[1];
  swift_getKeyPath();
  v16 = v11;
  sub_24EA5DF48(&qword_27F2261F0, type metadata accessor for OverlayActiveCallPageViewModel, &unk_24F9BCD50);
  sub_24F91FD88();

  v12 = *&v11[OBJC_IVAR____TtC12GameStoreKit30OverlayActiveCallPageViewModel__calls];

  v16 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225090, &qword_24F974D10);
  sub_24E602068(&qword_27F2261F8, &qword_27F225090, &qword_24F974D10, MEMORY[0x277D83980]);
  sub_24EA5DE84();
  sub_24EA5DF48(&qword_27F226208, type metadata accessor for OverlayActiveCall, &unk_24F9BFF9C);
  sub_24F927238();
  sub_24E60169C(v9, v6, &qword_27F2261B8, &qword_24F9791C0);
  sub_24E60169C(v6, a2, &qword_27F2261B8, &qword_24F9791C0);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226220, &qword_24F979288) + 48);
  *v13 = 0;
  *(v13 + 8) = 1;
  sub_24E601704(v9, &qword_27F2261B8, &qword_24F9791C0);
  return sub_24E601704(v6, &qword_27F2261B8, &qword_24F9791C0);
}

void sub_24EA5D840(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2261D0, &qword_24F979220);
  sub_24F926F38();
  sub_24F001E90();
}

unint64_t sub_24EA5D8A4()
{
  result = qword_27F226188;
  if (!qword_27F226188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226180, &qword_24F9791A8);
    sub_24E602068(&qword_27F226190, &qword_27F226198, &qword_24F9791B0, MEMORY[0x277CE1138]);
    sub_24EA5D95C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226188);
  }

  return result;
}

unint64_t sub_24EA5D95C()
{
  result = qword_27F2261A0;
  if (!qword_27F2261A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2261A8, &qword_24F9791B8);
    sub_24E602068(&qword_27F2261B0, &qword_27F2261B8, &qword_24F9791C0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2261A0);
  }

  return result;
}

double sub_24EA5DA14@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EA5DF48(&qword_27F2261F0, type metadata accessor for OverlayActiveCallPageViewModel, &unk_24F9BCD50);
  sub_24F91FD88();

  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit30OverlayActiveCallPageViewModel__calls);

  return result;
}

double sub_24EA5DAC8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24EA5DF48(&qword_27F2261F0, type metadata accessor for OverlayActiveCallPageViewModel, &unk_24F9BCD50);
  sub_24F91FD78();

  return result;
}

uint64_t sub_24EA5DB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayActiveCallPageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA5DC04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayActiveCallPageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_21()
{
  v1 = (type metadata accessor for OverlayActiveCallPageView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_24E669FC4(*(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));
  v3 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_24EA5DE84()
{
  result = qword_27F226200;
  if (!qword_27F226200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226200);
  }

  return result;
}

uint64_t sub_24EA5DED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2261E0, &unk_24F979230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA5DF48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EA5DFAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226178, &qword_24F9791A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226170, &qword_24F979198);
  sub_24E602068(&qword_27F2261C8, &qword_27F226170, &qword_24F979198, MEMORY[0x277CDD6E0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t VideoPlayer.PlayerState.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EA5E120()
{
  result = qword_27F226228;
  if (!qword_27F226228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226228);
  }

  return result;
}

uint64_t sub_24EA5E1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EA5E254(uint64_t a1)
{
  v2 = sub_24EA5E44C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA5E290(uint64_t a1)
{
  v2 = sub_24EA5E44C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EA5E2EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226230, &qword_24F979410);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EA5E44C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_24F92CC58();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  return result;
}

unint64_t sub_24EA5E44C()
{
  result = qword_27F226238;
  if (!qword_27F226238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226238);
  }

  return result;
}

unint64_t sub_24EA5E4B4()
{
  result = qword_27F226240;
  if (!qword_27F226240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226240);
  }

  return result;
}

unint64_t sub_24EA5E50C()
{
  result = qword_27F226248;
  if (!qword_27F226248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226248);
  }

  return result;
}

unint64_t sub_24EA5E564()
{
  result = qword_27F226250;
  if (!qword_27F226250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226250);
  }

  return result;
}

uint64_t View.magicPocketBackdrop(backDropHeight:cornerRadius:opacity:)(uint64_t a1, char a2, uint64_t a3, double a4, double a5)
{
  if (a2)
  {
    *&a1 = 24.0;
  }

  *v7 = a4;
  v7[1] = a1;
  *&v7[2] = a5;
  return MEMORY[0x25304C420](v7, a3, &type metadata for MagicPocketBackdropModifier);
}

uint64_t sub_24EA5E604(void *a1)
{
  sub_24F924038();
  sub_24EA5E668();
  return swift_getWitnessTable();
}

unint64_t sub_24EA5E668()
{
  result = qword_27F226258;
  if (!qword_27F226258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226258);
  }

  return result;
}

uint64_t sub_24EA5E6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a4@<D1>, double a5@<D2>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226260, &qword_24F9795D0);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226290, &qword_24F9795E8) + 36);
  *v10 = 1;
  *(v10 + 8) = xmmword_24F979530;
  v11 = sub_24F9275F8();
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226268, &qword_24F9795D8) + 36);
  sub_24EA5E87C(v14, a4);
  *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2262B0, &qword_24F979600) + 36)) = a5;
  sub_24F927618();
  sub_24F9238C8();
  v15 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2262B8, &qword_24F979608) + 36));
  *v15 = v18;
  v15[1] = v19;
  v15[2] = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2262A0, &unk_24F9795F0);
  v17 = (v14 + *(result + 36));
  *v17 = v11;
  v17[1] = v13;
  return result;
}

uint64_t sub_24EA5E87C@<X0>(uint64_t a1@<X8>, double a2@<D1>)
{
  v4 = sub_24F924258();
  MEMORY[0x28223BE20](v4);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v7 + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_24F924B38();
  v11 = *(*(v10 - 8) + 104);
  v11(v6 + v8, v9, v10);
  *v6 = a2;
  v6[1] = a2;
  if (qword_27F210118 != -1)
  {
    swift_once();
  }

  v12 = sub_24F927538();
  v13 = __swift_project_value_buffer(v12, qword_27F39B6A0);
  sub_24E6EB910(v6, a1);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2262C0, &qword_24F979610);
  (*(*(v12 - 8) + 16))(a1 + *(v14 + 52), v13, v12);
  sub_24E6EB974(v6);
  *(a1 + *(v14 + 56)) = 256;
  v15 = sub_24F927618();
  v17 = v16;
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2262C8, &qword_24F979618) + 36));
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2262D0, &qword_24F979620) + 36));
  v11(v19 + *(v4 + 20), v9, v10);
  *v19 = a2;
  v19[1] = a2;
  *(v19 + *(sub_24F924248() + 20)) = 10.0;
  v20 = sub_24F926C88();
  v21 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2262D8, &qword_24F979628) + 36));
  *v21 = v20;
  v21[1] = 0x4034000000000000;
  v21[2] = 0;
  v21[3] = 0;
  *v18 = v15;
  v18[1] = v17;
  LOBYTE(v20) = sub_24F9257F8();
  sub_24F923318();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2262E0, &qword_24F979630) + 36);
  *v30 = v20;
  *(v30 + 8) = v23;
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  LOBYTE(v20) = sub_24F925828();
  sub_24F923318();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2262E8, &qword_24F979638);
  v40 = a1 + *(result + 36);
  *v40 = v20;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  return result;
}

uint64_t sub_24EA5EB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226270, &qword_24F9795E0) + 36);
  sub_24F927438();
  v5 = sub_24F925808();
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870, &qword_24F949630) + 36)) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226260, &qword_24F9795D0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

uint64_t sub_24EA5EC3C(uint64_t a1)
{
  sub_24F927558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226260, &qword_24F9795D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226268, &qword_24F9795D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226270, &qword_24F9795E0);
  sub_24E602068(&qword_27F226278, &qword_27F226260, &qword_24F9795D0, MEMORY[0x277CE04B0]);
  sub_24EA5ED98();
  sub_24EA5EF08();
  return sub_24F926AF8();
}

unint64_t sub_24EA5ED98()
{
  result = qword_27F226280;
  if (!qword_27F226280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226268, &qword_24F9795D8);
    sub_24EA5EE50();
    sub_24E602068(&qword_27F226298, &qword_27F2262A0, &unk_24F9795F0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226280);
  }

  return result;
}

unint64_t sub_24EA5EE50()
{
  result = qword_27F226288;
  if (!qword_27F226288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226290, &qword_24F9795E8);
    sub_24E602068(&qword_27F226278, &qword_27F226260, &qword_24F9795D0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226288);
  }

  return result;
}

unint64_t sub_24EA5EF08()
{
  result = qword_27F2262A8;
  if (!qword_27F2262A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226270, &qword_24F9795E0);
    sub_24E602068(&qword_27F226278, &qword_27F226260, &qword_24F9795D0, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F2188E0, &qword_27F217870, &qword_24F949630, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2262A8);
  }

  return result;
}

uint64_t sub_24EA5EFEC()
{
  v0 = sub_24F927538();
  __swift_allocate_value_buffer(v0, qword_27F39B6A0);
  __swift_project_value_buffer(v0, qword_27F39B6A0);
  sub_24EA5F04C();
  return sub_24F927528();
}

unint64_t sub_24EA5F04C()
{
  result = qword_27F2262F0;
  if (!qword_27F2262F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2262F0);
  }

  return result;
}

uint64_t sub_24EA5F0B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226260, &qword_24F9795D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226268, &qword_24F9795D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226270, &qword_24F9795E0);
  sub_24E602068(&qword_27F226278, &qword_27F226260, &qword_24F9795D0, MEMORY[0x277CE04B0]);
  sub_24EA5ED98();
  sub_24EA5EF08();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EA5F1AC()
{
  v0 = sub_24F926C08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226328, &unk_24F979740);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F942000;
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  sub_24F926D28();
  *(v4 + 32) = v7;
  *(v4 + 36) = v8;
  *(v4 + 40) = v9;
  *(v4 + 44) = v10;
  v6(v3, v5, v0);
  sub_24F926D28();
  *(v4 + 48) = v11;
  *(v4 + 52) = v12;
  *(v4 + 56) = v13;
  *(v4 + 60) = v14;
  v6(v3, v5, v0);
  sub_24F926D28();
  *(v4 + 64) = v15;
  *(v4 + 68) = v16;
  *(v4 + 72) = v17;
  *(v4 + 76) = v18;
  v6(v3, v5, v0);
  sub_24F926D28();
  *(v4 + 80) = v19;
  *(v4 + 84) = v20;
  *(v4 + 88) = v21;
  *(v4 + 92) = v22;
  v6(v3, v5, v0);
  sub_24F926D28();
  *(v4 + 96) = v23;
  *(v4 + 100) = v24;
  *(v4 + 104) = v25;
  *(v4 + 108) = v26;
  return v4;
}

unint64_t sub_24EA5F458()
{
  result = qword_27F2262F8;
  if (!qword_27F2262F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2262F8);
  }

  return result;
}

unint64_t sub_24EA5F4B0()
{
  result = qword_27F226300;
  if (!qword_27F226300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226300);
  }

  return result;
}

uint64_t sub_24EA5F504()
{
  v23 = sub_24F9274A8();
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = (&v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_24F9274F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927508();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v28 = 0x4010000000000000;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v32 = _Q0;
  v33 = 1065353216;
  v16 = *MEMORY[0x277CE1330];
  v17 = *(v4 + 104);
  v24 = v3;
  v17(v6, v16, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226308, &qword_24F979720);
  sub_24F9274B8();
  v18 = swift_allocObject();
  v27 = xmmword_24F93DE60;
  *(v18 + 16) = xmmword_24F93DE60;
  sub_24EA5F1AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226310, &qword_24F979728);
  v19 = swift_allocObject();
  v19[1] = xmmword_24F93FC20;
  if (qword_27F210650 != -1)
  {
    swift_once();
  }

  v19[2] = xmmword_27F39C600;
  if (qword_27F210648 != -1)
  {
    swift_once();
  }

  v20 = xmmword_27F39C5F0;
  v19[3] = xmmword_27F39C5F0;
  v19[4] = v20;
  v19[5] = v20;
  sub_24F9274E8();

  *v2 = 0;
  (*(v0 + 104))(v2, *MEMORY[0x277CE1328], v23);
  sub_24F9274C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226318, &qword_24F979730);
  sub_24F927498();
  *(swift_allocObject() + 16) = v27;
  sub_24F927488();
  sub_24F9274D8();

  (*(v4 + 8))(v6, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226320, &qword_24F979738);
  sub_24F927518();
  v21 = swift_allocObject();
  *(v21 + 16) = v27;
  sub_24F927478();
  (*(v25 + 8))(v10, v26);
  return v21;
}

uint64_t ProductMediaGalleryPage.__allocating_init(productMedia:selectedProductMediaItem:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v9 - 8);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = sub_24F928818();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v41 = a1;
  v42 = a2;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_productMedia) = a1;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_selectedProductMediaItem) = a2;
  v22 = *(v18 + 16);
  v43 = a3;
  v22(v20, a3, v17);
  sub_24E90A7EC(a5, v16);
  *(v21 + 16) = 0;
  v22((v21 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v20, v17);
  v40 = v21;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v44;
  sub_24E90A7EC(v16, v13);
  v23 = sub_24F9285B8();
  v24 = *(v23 - 8);
  v38 = *(v24 + 48);
  if (v38(v13, 1, v23) == 1)
  {
    sub_24E90A85C(a5);
    v25 = *(v18 + 8);
    v25(v43, v17);
    sub_24E90A85C(v16);
    v25(v20, v17);
    v26 = v13;
  }

  else
  {
    v36 = v24;
    v37 = a5;
    v27 = qword_27F2105F0;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v28, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v29 = v45;
    if (v45)
    {
    }

    v30 = *(v36 + 8);
    v30(v13, v23);
    if (!v29)
    {

      sub_24E90A85C(v37);
      v33 = *(v18 + 8);
      v33(v43, v17);
      sub_24E90A85C(v16);
      v33(v20, v17);
      return v40;
    }

    v31 = v39;
    sub_24E90A7EC(v16, v39);
    if (v38(v31, 1, v23) != 1)
    {
      sub_24ECDF110();

      sub_24E90A85C(v37);
      v34 = *(v18 + 8);
      v34(v43, v17);
      sub_24E90A85C(v16);
      v34(v20, v17);
      v30(v31, v23);
      return v40;
    }

    sub_24E90A85C(v37);
    v32 = *(v18 + 8);
    v32(v43, v17);
    sub_24E90A85C(v16);
    v32(v20, v17);
    v26 = v31;
  }

  sub_24E90A85C(v26);
  return v40;
}

uint64_t ProductMediaGalleryPage.init(productMedia:selectedProductMediaItem:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v18 = sub_24F928818();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v54 = a2;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_productMedia) = a1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_selectedProductMediaItem) = a2;
  v23 = *(v19 + 16);
  v56 = a3;
  v23(v22, a3, v18, v20);
  v52 = a5;
  sub_24E90A7EC(a5, v17);
  *(v5 + 16) = 0;
  (v23)(v5 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v22, v18);
  v55 = v5;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v51;
  sub_24E90A7EC(v17, v14);
  v24 = sub_24F9285B8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v14, 1, v24) == 1)
  {
    sub_24E90A85C(v52);
    v27 = *(v19 + 8);
    v27(v56, v18);
    sub_24E90A85C(v17);
    v27(v22, v18);
    v28 = v14;
  }

  else
  {
    v47 = v26;
    v48 = v19;
    v49 = v18;
    v29 = v52;
    v30 = qword_27F2105F0;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v31, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    v32 = v14;
    sub_24F9285C8();
    v33 = v57;
    if (v57)
    {
    }

    v34 = *(v25 + 8);
    v34(v32, v24);
    if (!v33)
    {

      sub_24E90A85C(v29);
      v40 = v49;
      v41 = *(v48 + 8);
      v41(v56, v49);
      sub_24E90A85C(v17);
      v41(v22, v40);
      return v55;
    }

    v45 = v34;
    v46 = v22;
    v35 = v50;
    sub_24E90A7EC(v17, v50);
    v36 = v47(v35, 1, v24);
    v38 = v48;
    v37 = v49;
    if (v36 != 1)
    {
      sub_24ECDF110();

      sub_24E90A85C(v29);
      v42 = *(v38 + 8);
      v42(v56, v37);
      sub_24E90A85C(v17);
      v42(v46, v37);
      v45(v35, v24);
      return v55;
    }

    sub_24E90A85C(v29);
    v39 = *(v38 + 8);
    v39(v56, v37);
    sub_24E90A85C(v17);
    v39(v46, v37);
    v28 = v35;
  }

  sub_24E90A85C(v28);
  return v55;
}

uint64_t ProductMediaGalleryPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = v3;
  v27 = *v3;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_24F928388();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  type metadata accessor for ProductMedia();
  v34 = a1;
  sub_24F928398();
  v30 = v7;
  v31 = v6;
  v16 = *(v7 + 16);
  v33 = a2;
  v16(v11, a2, v6);
  sub_24EA610D0(&qword_27F226330, type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
  sub_24F929548();
  if (v37)
  {
    v17 = v30;
    v18 = v32;
    *(v32 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_productMedia) = v37;
    *(v18 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_selectedProductMediaItem) = 0;
    v19 = v34;
    (*(v35 + 16))(v14, v34, v36);
    v6 = v28;
    v20 = v33;
    v21 = v31;
    v16(v28, v33, v31);
    v22 = v29;
    v23 = BasePage.init(deserializing:using:)(v14, v6);
    if (!v22)
    {
      v6 = v23;
    }

    (*(v17 + 8))(v20, v21);
    (*(v35 + 8))(v19, v36);
  }

  else
  {
    v24 = sub_24F92AC38();
    sub_24EA610D0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    strcpy(v25, "productMedia");
    v25[13] = 0;
    *(v25 + 7) = -5120;
    *(v25 + 2) = v27;
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D22530], v24);
    swift_willThrow();
    (*(v30 + 8))(v33, v31);
    (*(v35 + 8))(v34, v36);
    type metadata accessor for ProductMediaGalleryPage(0);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t sub_24EA6093C(uint64_t a1)
{
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v48 - v5;
  MEMORY[0x28223BE20](v6);
  v57 = &v48 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = sub_24F928818();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_productMedia);
  v19 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v60 = v12;
  v20 = *(v12 + 16);
  v20(v17, v1 + v19, v11);
  v55 = *(v1 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
  v21 = sub_24F9285B8();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v10, 1, 1, v21);
  type metadata accessor for ProductMediaGalleryPage(0);
  v23 = swift_allocObject();
  v58 = v18;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_productMedia) = v18;
  v24 = v10;
  v25 = v57;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit23ProductMediaGalleryPage_selectedProductMediaItem) = v62;
  v56 = v17;
  v20(v14, v17, v11);
  sub_24E90A7EC(v24, v25);
  *(v23 + 16) = 0;
  v20((v23 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v14, v11);
  v59 = v23;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v55;
  v26 = v61;
  sub_24E90A7EC(v25, v61);
  v53 = v22;
  v54 = v21;
  v27 = *(v22 + 48);
  if (v27(v26, 1, v21) == 1)
  {

    sub_24E90A85C(v25);
    v28 = *(v60 + 8);
    v28(v14, v11);
    sub_24E90A85C(v24);
    v28(v56, v11);
    v29 = v26;
  }

  else
  {
    v48 = v27;
    v49 = v14;
    v50 = v11;
    v51 = v24;
    v30 = v56;
    v31 = qword_27F2105F0;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v32, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    v33 = v61;
    sub_24F9285C8();
    v34 = v63;
    v35 = v30;
    v37 = v53;
    v36 = v54;
    if (v63)
    {
    }

    v38 = *(v37 + 8);
    v38(v33, v36);
    v39 = v60;
    if (!v34)
    {
      sub_24E90A85C(v25);
      v43 = *(v39 + 8);
      v44 = v50;
      v43(v49, v50);
      sub_24E90A85C(v51);
      v43(v35, v44);
      return v59;
    }

    v40 = v52;
    sub_24E90A7EC(v25, v52);
    if (v48(v40, 1, v36) != 1)
    {
      sub_24ECDF110();
      sub_24E90A85C(v25);
      v45 = *(v39 + 8);
      v46 = v50;
      v45(v49, v50);
      sub_24E90A85C(v51);
      v45(v30, v46);
      v38(v40, v36);
      return v59;
    }

    sub_24E90A85C(v25);
    v41 = *(v39 + 8);
    v42 = v50;
    v41(v49, v50);
    sub_24E90A85C(v51);
    v41(v30, v42);
    v29 = v40;
  }

  sub_24E90A85C(v29);
  return v59;
}

double sub_24EA60EFC()
{

  return result;
}

uint64_t ProductMediaGalleryPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ProductMediaGalleryPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EA610D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ProductMediaGalleryPage(uint64_t a1)
{
  result = qword_27F226338;
  if (!qword_27F226338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *TopShelfItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v73 = v3;
  v5 = *v3;
  v70 = a2;
  v71 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v61 - v11;
  v12 = sub_24F9285B8();
  v13 = *(v12 - 8);
  v68 = v12;
  v69 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v62 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  v72 = a1;
  sub_24F928398();
  v25 = sub_24F928348();
  v27 = v26;
  v28 = v24;
  v29 = v17 + 8;
  v30 = *(v17 + 8);
  v30(v28, v16);
  if (v27)
  {
    v31 = v73;
    v73[2] = v25;
    v31[3] = v27;
    sub_24F928398();
    v32 = sub_24F928348();
    v67 = v29;
    v34 = v33;
    v61 = v16;
    v30(v21, v16);
    v31[4] = v32;
    v31[5] = v34;
    type metadata accessor for TopShelfAction(0);
    sub_24F928398();
    v66 = v30;
    v35 = v70;
    v36 = *(v69 + 16);
    v37 = v68;
    v36(v15, v70, v68);
    sub_24EA61B18(&qword_27F2242F0, type metadata accessor for TopShelfAction, &protocol conformance descriptor for TopShelfAction);
    sub_24F929548();
    v73[6] = v74;
    sub_24F928398();
    v71 = v21;
    v36(v15, v35, v37);
    sub_24F929548();
    v73[7] = v74;
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v36(v15, v35, v37);
    v38 = v73;
    v39 = v64;
    sub_24EA61B18(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    v40 = v71;
    sub_24F929548();
    v38[8] = v74;
    sub_24F928398();
    v41 = v63;
    sub_24F928288();
    v42 = v61;
    v43 = v66;
    v66(v40, v61);
    sub_24E6C4F90(v41, v38 + OBJC_IVAR____TtC12GameStoreKit12TopShelfItem_expirationDate);
    v44 = v62;
    sub_24F928398();
    sub_24F9281F8();
    v45 = v42;
    v43(v44, v42);
    v46 = v65;
    sub_24E60169C(v39, v65, qword_27F221C40, &unk_24F967D80);
    v47 = sub_24F928E68();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      sub_24E601704(v39, qword_27F221C40, &unk_24F967D80);
      sub_24E601704(v46, qword_27F221C40, &unk_24F967D80);
      v49 = 0;
    }

    else
    {
      v49 = sub_24F928E38();
      sub_24E601704(v39, qword_27F221C40, &unk_24F967D80);
      (*(v48 + 8))(v46, v47);
    }

    v53 = v72;
    v52 = v73;
    *(v73 + OBJC_IVAR____TtC12GameStoreKit12TopShelfItem_userInfo) = v49;
    v54 = v71;
    sub_24F928398();
    v55 = sub_24F928348();
    v57 = v56;
    (*(v69 + 8))(v70, v68);
    v58 = v66;
    v66(v53, v45);
    v58(v54, v45);
    v59 = (v52 + OBJC_IVAR____TtC12GameStoreKit12TopShelfItem_accessibilityLabel);
    *v59 = v55;
    v59[1] = v57;
  }

  else
  {
    v50 = sub_24F92AC38();
    sub_24EA61B18(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v51 = 0x696669746E656469;
    v51[1] = 0xEA00000000007265;
    v51[2] = v71;
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x277D22530], v50);
    swift_willThrow();
    (*(v69 + 8))(v70, v68);
    v30(v72, v16);
    type metadata accessor for TopShelfItem(0);
    swift_deallocPartialClassInstance();
  }

  return v73;
}

uint64_t type metadata accessor for TopShelfItem(uint64_t a1)
{
  result = qword_27F226348;
  if (!qword_27F226348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EA61B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *TopShelfItem.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12TopShelfItem_expirationDate, &unk_27F22EC30, &qword_24F939880);

  return v0;
}

uint64_t TopShelfItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TopShelfItem.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TopShelfItem.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TopShelfItem.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TopShelfItem.accessibilityLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12TopShelfItem_accessibilityLabel);

  return v1;
}

uint64_t TopShelfItem.__deallocating_deinit()
{
  TopShelfItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EA61D90@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

double sub_24EA61DCC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24EA61F7C(&v7);
  if (v8)
  {
    sub_24E612B0C(&v7, v9);
    *a3 = a1;
    *(a3 + 8) = a2;
    sub_24E612B0C(v9, (a3 + 16));
  }

  else
  {
    sub_24E601704(&v7, &qword_27F2129B0, &unk_24F945320);
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_24EA61E7C(uint64_t a1)
{
  sub_24E728940(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_24EA61F7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_24F92AC28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19[-v10];
  v12 = sub_24F928E68();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F9281F8();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, qword_27F221C40, &unk_24F967D80);
    sub_24F9282B8();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_24E601704(v4, &qword_27F2213B0, &qword_24F965EC0);
      return sub_24F928368();
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v18 = sub_24F92ABB8();
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8, &unk_24F9BC390);
      *a1 = v18;
      return (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = sub_24F928E38();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    *a1 = v17;
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t FramedMediaLayout.init(metrics:mediaView:captionView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FramedMediaLayout(0);
  sub_24EA623C8(a1, a4 + *(v8 + 24));
  sub_24E612C80(a2, a4);

  return sub_24E612C80(a3, a4 + 40);
}

uint64_t sub_24EA623C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FramedMediaLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FramedMediaLayout.Metrics.init(mediaAspectRatio:mediaMaxHeight:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F922348();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for FramedMediaLayout.Metrics(0) + 20);

  return sub_24E612C80(a2, v7);
}

uint64_t FramedMediaLayout.Metrics.mediaAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FramedMediaLayout.Metrics.mediaAspectRatio.setter(uint64_t a1)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FramedMediaLayout.Metrics.mediaMaxHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for FramedMediaLayout.Metrics(0) + 20);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t FramedMediaLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FramedMediaLayout(0) + 24);

  return sub_24EA62724(v3, a1);
}

uint64_t sub_24EA62724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FramedMediaLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double FramedMediaLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
  sub_24F922238();
  v9 = v3 + *(type metadata accessor for FramedMediaLayout(0) + 24);
  sub_24F922308();
  v10 = (v9 + *(type metadata accessor for FramedMediaLayout.Metrics(0) + 20));
  v11 = v10[3];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_24E8ED7D8(v11);
  sub_24F9223A8();
  (*(v6 + 8))(v8, v5);
  return a2;
}

uint64_t FramedMediaLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = sub_24F92CDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  if ((sub_24F922238() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
    sub_24F922288();
  }

  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetWidth(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetHeight(v21);
  v15 = v5 + *(type metadata accessor for FramedMediaLayout(0) + 24);
  sub_24F922308();
  v16 = &v15[*(type metadata accessor for FramedMediaLayout.Metrics(0) + 20)];
  v17 = *(v16 + 3);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_24E8ED7D8(v17);
  sub_24F9223A8();
  (*(v12 + 8))(v14, v11);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetWidth(v22);
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v6 + 5, v6[8]);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922218();
  CGRectGetMaxY(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetWidth(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetHeight(v25);
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F922218();
  CGRectGetHeight(v26);
  __swift_project_boxed_opaque_existential_1(v6 + 5, v6[8]);
  sub_24F922218();
  CGRectGetHeight(v27);
  return sub_24F922128();
}

double sub_24EA62CC8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = sub_24F92CDB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
  sub_24F922238();
  v11 = v4 + *(a2 + 24);
  sub_24F922308();
  v12 = (v11 + *(type metadata accessor for FramedMediaLayout.Metrics(0) + 20));
  v13 = v12[3];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_24E8ED7D8(v13);
  sub_24F9223A8();
  (*(v8 + 8))(v10, v7);
  return a3;
}

uint64_t sub_24EA62EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FramedMediaLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EA62FA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FramedMediaLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EA63044(uint64_t a1)
{
  result = sub_24E8EFB54(319, &qword_27F237A20, MEMORY[0x277D22640]);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FramedMediaLayout.Metrics(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EA630EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922348();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EA631C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F922348();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24EA6327C(uint64_t a1)
{
  result = sub_24F922348();
  if (v2 <= 0x3F)
  {
    result = sub_24E8EFB54(319, &qword_27F237A40, MEMORY[0x277D226C0]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EA63310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24F921888();
  v5 = sub_24F9271C8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v10 - v8, a1, v5, v7);
  sub_24F928FD8();
  sub_24F921B78();
  return (*(v6 + 8))(a1, v5);
}

uint64_t sub_24EA6344C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226378, &unk_24F979930);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EA634D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226378, &unk_24F979930);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FlowBackActionImplementation(uint64_t a1)
{
  result = qword_27F226380;
  if (!qword_27F226380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA635A0(uint64_t a1)
{
  sub_24EA6360C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24EA6360C(uint64_t a1)
{
  if (!qword_27F226390)
  {
    sub_24F928FD8();
    v1 = sub_24F921B88();
    if (!v2)
    {
      atomic_store(v1, &qword_27F226390);
    }
  }
}

unint64_t sub_24EA63668()
{
  result = qword_27F226398;
  if (!qword_27F226398)
  {
    type metadata accessor for FlowBackAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226398);
  }

  return result;
}

uint64_t sub_24EA636C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226378, &unk_24F979930);

  return MEMORY[0x2821E7BF0](v3 + v4, a2, v5);
}

uint64_t EditorialQuoteLayout.Metrics.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t EditorialQuoteLayout.Metrics.quoteTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t EditorialQuoteLayout.Metrics.attributionTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t EditorialQuoteLayout.Metrics.horizontalMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t EditorialQuoteLayout.Metrics.bottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t EditorialQuoteLayout.Metrics.maxWidth.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));

  return sub_24E612C80(a1, v1 + 160);
}

uint64_t sub_24EA63A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F780, &qword_24F968620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EditorialQuoteLayout.Metrics.init(quoteTopSpace:attributionTopSpace:horizontalMargin:bottomMargin:maxWidth:minHeight:alignment:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a7;
  *(a8 + 216) = 0u;
  *(a8 + 232) = 0;
  *(a8 + 200) = 0u;
  v15 = a8 + 200;
  sub_24E612C80(a1, a8);
  sub_24E612C80(a2, a8 + 40);
  sub_24E612C80(a3, a8 + 80);
  sub_24E612C80(a4, a8 + 120);
  sub_24E612C80(a5, a8 + 160);
  result = sub_24EA63A70(a6, v15);
  *(a8 + 240) = v14;
  return result;
}

uint64_t EditorialQuoteLayout.init(metrics:quoteLabel:attributionLabel:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 208);
  *(a4 + 192) = *(a1 + 192);
  *(a4 + 208) = v6;
  *(a4 + 224) = *(a1 + 224);
  *(a4 + 240) = *(a1 + 240);
  v7 = *(a1 + 144);
  *(a4 + 128) = *(a1 + 128);
  *(a4 + 144) = v7;
  v8 = *(a1 + 176);
  *(a4 + 160) = *(a1 + 160);
  *(a4 + 176) = v8;
  v9 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v9;
  v10 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v10;
  v11 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v11;
  v12 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v12;
  sub_24E612C80(a2, a4 + 248);

  return sub_24E612C80(a3, a4 + 288);
}

void EditorialQuoteLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = sub_24F92CDB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E930DFC(v3 + 200, v13);
  v11 = v14;
  if (v14)
  {
    __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_24E8ED7D8(v11);
    sub_24F9223A8();
    (*(v8 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_24E930E6C(v13);
  }

  sub_24EA63E80(a1, a2, a3);
}

uint64_t sub_24EA63E80(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3[13];
  __swift_project_boxed_opaque_existential_1(v4 + 10, v9);
  sub_24E8ED7D8(v9);
  sub_24F9223A8();
  v10 = *(v6 + 8);
  v10(v8, v5);
  sub_24F92C228();
  v11 = v4[23];
  __swift_project_boxed_opaque_existential_1(v4 + 20, v11);
  sub_24E8ED7D8(v11);
  sub_24F9223A8();
  v10(v8, v5);
  __swift_project_boxed_opaque_existential_1(v4 + 31, v4[34]);
  sub_24F922288();
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F9223C8();
  v19 = v13;
  sub_24F922398();
  __swift_project_boxed_opaque_existential_1(v4 + 36, v4[39]);
  sub_24F922288();
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  sub_24F9223C8();
  v19 = v15;
  sub_24F922398();
  v16 = v4[18];
  __swift_project_boxed_opaque_existential_1(v4 + 15, v16);
  sub_24E8ED7D8(v16);
  sub_24F9223A8();
  return (v10)(v8, v5);
}

uint64_t EditorialQuoteLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v61 = a2;
  *&v13 = COERCE_DOUBLE(sub_24F9221D8());
  v59 = *(v13 - 8);
  v60 = *&v13;
  MEMORY[0x28223BE20](v13);
  v58 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F92CDB8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v6 + 104);
  __swift_project_boxed_opaque_existential_1((v7 + 80), v19);
  sub_24E8ED7D8(v19);
  sub_24F9223A8();
  v20 = *(v16 + 8);
  v20(v18, v15);
  v54 = a3;
  v55 = a4;
  sub_24F92C1C8();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = *(v7 + 184);
  __swift_project_boxed_opaque_existential_1((v7 + 160), v29);
  sub_24E8ED7D8(v29);
  v30 = sub_24F9223A8();
  v56 = v20;
  v57 = v15;
  v20(v18, v15);
  v65.origin.x = v22;
  v65.origin.y = v24;
  v65.size.width = v26;
  v65.size.height = v28;
  if (v30 < CGRectGetWidth(v65))
  {
    v66.origin.x = v22;
    v66.origin.y = v24;
    v66.size.width = v26;
    v66.size.height = v28;
    v22 = v22 + (CGRectGetWidth(v66) - v30) * 0.5;
    v26 = v30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50, &unk_24F9AFC90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  sub_24E615E00(v7 + 248, inited + 32);
  sub_24E615E00(v7, inited + 80);
  sub_24E930DFC(&v62, inited + 120);
  *(inited + 72) = 1;
  *(inited + 160) = 8;
  sub_24E930E6C(&v62);
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  sub_24E615E00(v7 + 288, inited + 168);
  sub_24E615E00(v7 + 40, inited + 216);
  sub_24E930DFC(&v62, inited + 256);
  *(inited + 208) = 1;
  *(inited + 296) = 8;
  sub_24E930E6C(&v62);
  LOBYTE(v62) = 1;
  *(&v62 + 1) = inited;
  v32 = v58;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v58, v22, v24, v26, v28);
  (*(v59 + 8))(v32, COERCE_DOUBLE(*&v60));

  sub_24EA63E80(a1, a5, a6);
  v60 = v33;
  v35 = v34;
  sub_24E930DFC(v7 + 200, &v62);
  v36 = *(&v63 + 1);
  if (!*(&v63 + 1))
  {
    sub_24E930E6C(&v62);
    v37 = 0.0;
    if (v35 >= 0.0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
  sub_24E8ED7D8(v36);
  v37 = sub_24F9223A8();
  v56(v18, v57);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  if (v37 > v35)
  {
LABEL_5:
    __swift_project_boxed_opaque_existential_1((v7 + 288), *(v7 + 312));
    sub_24F922218();
    MaxY = CGRectGetMaxY(v67);
    __swift_project_boxed_opaque_existential_1((v7 + 248), *(v7 + 272));
    sub_24F922218();
    v39 = MaxY - CGRectGetMinY(v68);
    v69.origin.x = v54;
    v69.origin.y = v55;
    v69.size.width = a5;
    v69.size.height = a6;
    v40 = CGRectGetMinY(v69) + (v37 - v39) * 0.5;
    __swift_project_boxed_opaque_existential_1((v7 + 248), *(v7 + 272));
    sub_24F922218();
    v42 = v40 - v41;
    __swift_project_boxed_opaque_existential_1((v7 + 248), *(v7 + 272));
    v43 = sub_24F922208();
    *(v44 + 8) = v40;
    v43(&v62, 0);
    __swift_project_boxed_opaque_existential_1((v7 + 288), *(v7 + 312));
    v45 = sub_24F922208();
    *(v46 + 8) = v42 + *(v46 + 8);
    v45(&v62, 0);
  }

LABEL_6:
  if (*(v7 + 240) == 1)
  {
    v47 = v26 - v60;
    if (v26 - v60 > 0.0)
    {
      __swift_project_boxed_opaque_existential_1((v7 + 248), *(v7 + 272));
      v48 = v47 * 0.5;
      v49 = sub_24F922208();
      *v50 = v48 + *v50;
      v49(&v62, 0);
      __swift_project_boxed_opaque_existential_1((v7 + 288), *(v7 + 312));
      v51 = sub_24F922208();
      *v52 = v48 + *v52;
      v51(&v62, 0);
    }
  }

  return sub_24F922128();
}

unint64_t sub_24EA64878()
{
  result = qword_27F2263A0;
  if (!qword_27F2263A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2263A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5JetUI12AnyDimension_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24EA648EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
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

uint64_t sub_24EA64934(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy241_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_24EA64A24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
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

uint64_t sub_24EA64A6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EA64B0C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24EA64B68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24EA64BEC@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a1)
  {
    LOBYTE(v10) = HIBYTE(a2);
    BYTE1(v10) = a2;
    *(&v10 + 1) = a3;
    LOBYTE(v11) = a4 & 1;
    *(&v11 + 1) = a1;
    LOWORD(v12) = a2;
    *(&v12 + 1) = a3;
    v13 = a4 & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2263B0, &qword_24F979C88);
    sub_24EA651A8();
    sub_24F9265E8();
    v14[0] = v10;
    v14[1] = v11;
    v14[2] = v12;
    v15 = v13;
    sub_24EA65424(v14);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2263A8, &qword_24F979C80);
    return (*(*(v6 - 8) + 56))(a5, 0, 1, v6);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2263A8, &qword_24F979C80);
    v9 = *(*(v8 - 8) + 56);

    return v9(a5, 1, 1, v8);
  }
}

uint64_t sub_24EA64D70(unint64_t a1, __int16 a2, uint64_t a3, char a4)
{
  if (a1 >> 62 && (result = sub_24F92C738(), result < 0))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    *(v8 + 32) = a3;
    *(v8 + 40) = a4 & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0, &unk_24F93CB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226420, &qword_24F979D58);
    sub_24E62A6CC();
    sub_24E602068(&qword_27F226428, &qword_27F226420, &qword_24F979D58, MEMORY[0x277CDF7D8]);
    return sub_24F927228();
  }

  return result;
}

unint64_t sub_24EA64EE0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a2@<X8>)@<X8>)
{
  result = *a1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x253052270](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a3 = sub_24EA65620;
    a3[1] = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA64F50@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24F923998();
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for SwiftUIArtworkView(0);
  v10 = v9[6];
  v11 = *MEMORY[0x277CE1010];
  v12 = sub_24F926E68();
  (*(*(v12 - 8) + 104))(a3 + v10, v11, v12);
  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = 0;
  v13 = a3 + v9[7];
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  *(a3 + v9[8]) = 2;
  *(a3 + v9[9]) = 0;
  LOBYTE(v9) = *(a2 + 64);

  sub_24F923998();
  v15 = v14;
  v17 = v16;
  sub_24F926F28();
  v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226430, &qword_24F979D60) + 36);
  *v18 = v9;
  *(v18 + 8) = v15;
  *(v18 + 16) = v17;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v18 + 40) = 1;
  *(v18 + 48) = v30;
  *(v18 + 56) = v31;
  v19 = sub_24F927618();
  v21 = v20;
  v22 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226438, &qword_24F979D68) + 36);
  LOBYTE(v10) = *(a2 + 64);
  sub_24F923998();
  v24 = v23;
  v26 = v25;
  sub_24F926C88();
  sub_24F926D08();

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226440, &qword_24F979D70);
  sub_24F923618();

  *v22 = v10;
  *(v22 + 8) = v24;
  *(v22 + 16) = v26;
  *(v22 + 24) = 0x3FF0000000000000;
  *(v22 + *(v27 + 56)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226448, &qword_24F979D78);
  v29 = (v22 + *(result + 36));
  *v29 = v19;
  v29[1] = v21;
  return result;
}

unint64_t sub_24EA651A8()
{
  result = qword_27F2263B8;
  if (!qword_27F2263B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2263B0, &qword_24F979C88);
    sub_24EA65260();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2263B8);
  }

  return result;
}

unint64_t sub_24EA65260()
{
  result = qword_27F2263C0;
  if (!qword_27F2263C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2263C8, &qword_24F979C90);
    sub_24EA65318();
    sub_24E602068(&qword_27F2263F8, &qword_27F226400, &qword_24F97FB40, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2263C0);
  }

  return result;
}

unint64_t sub_24EA65318()
{
  result = qword_27F2263D0;
  if (!qword_27F2263D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2263D8, &qword_24F979C98);
    sub_24E602068(&qword_27F2263E0, &qword_27F2263E8, &qword_24F979CA0, MEMORY[0x277CDF510]);
    sub_24EA653D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2263D0);
  }

  return result;
}

unint64_t sub_24EA653D0()
{
  result = qword_27F2263F0;
  if (!qword_27F2263F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2263F0);
  }

  return result;
}

uint64_t sub_24EA65424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2263B0, &qword_24F979C88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EA654A0()
{
  result = qword_27F226408;
  if (!qword_27F226408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226410, &qword_24F979CD8);
    sub_24EA65524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226408);
  }

  return result;
}

unint64_t sub_24EA65524()
{
  result = qword_27F226418;
  if (!qword_27F226418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2263A8, &qword_24F979C80);
    sub_24EA651A8();
    sub_24E99DD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226418);
  }

  return result;
}

uint64_t sub_24EA655CC()
{

  return swift_deallocObject();
}

unint64_t sub_24EA6562C()
{
  result = qword_27F226450;
  if (!qword_27F226450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226458, &qword_24F979D80);
    sub_24E602068(&qword_27F226460, &qword_27F226468, &qword_24F979D88, MEMORY[0x277CDF510]);
    sub_24EA656E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226450);
  }

  return result;
}

unint64_t sub_24EA656E4()
{
  result = qword_27F226470;
  if (!qword_27F226470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226478, &qword_24F979D90);
    sub_24E602068(&qword_27F226428, &qword_27F226420, &qword_24F979D58, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226470);
  }

  return result;
}

const char *Feature.feature.getter()
{
  result = "age_ratings_assurance_2025A";
  switch(*v0)
  {
    case 1:
      result = "annotations_update_2025A";
      break;
    case 2:
      result = "aligned_region_artwork_2025A";
      break;
    case 3:
      result = "coming_soon_enhancements";
      break;
    case 4:
      result = "hide_arcade_header_on_arcade_tab";
      break;
    case 5:
      result = "measurement_with_labelplaceholder";
      break;
    case 6:
      result = "store_personalization_onboarding";
      break;
    case 7:
      result = "shelves_2_0_product";
      break;
    case 8:
      result = "shelf_header";
      break;
    case 9:
      result = "game_center_shelf_header";
      break;
    case 0xA:
      result = "search_tags";
      break;
    case 0xB:
      result = "product_capability_update_2024E";
      break;
    case 0xC:
      result = "pause_resume_offer_button_label_2025E";
      break;
    case 0xD:
      result = "voyager_bundles_2025A";
      break;
    case 0xE:
      result = "jetpackassetd";
      break;
    case 0xF:
      result = "glass_offer_button_2025A";
      break;
    default:
      return result;
  }

  return result;
}

GameStoreKit::Feature_optional __swiftcall Feature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Feature.rawValue.getter()
{
  result = 0x65685F666C656873;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
    case 6:
      result = 0xD000000000000020;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      return result;
    case 9:
      result = 0xD000000000000018;
      break;
    case 0xA:
      result = 0x745F686372616573;
      break;
    case 0xB:
      result = 0xD00000000000001FLL;
      break;
    case 0xC:
      result = 0xD000000000000025;
      break;
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 0xE:
      result = 0x616B63617074656ALL;
      break;
    case 0xF:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_24EA65BA8()
{
  v0 = Feature.rawValue.getter();
  v2 = v1;
  if (v0 == Feature.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

unint64_t sub_24EA65C48()
{
  result = qword_27F226480[0];
  if (!qword_27F226480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F226480);
  }

  return result;
}

uint64_t sub_24EA65C9C()
{
  sub_24F92D068();
  Feature.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA65D04(uint64_t a1)
{
  Feature.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24EA65D68()
{
  sub_24F92D068();
  Feature.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24EA65DD8@<X0>(unint64_t *a1@<X8>)
{
  result = Feature.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Conditional.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for ClosureExpression(0, a3, a4, a4);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_24F04E8C0();
  result = sub_24E5FA814(v9, &v11);
  *a5 = v11;
  return result;
}

uint64_t sub_24EA65EC8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_24F04E8C0();
}

uint64_t sub_24EA65F58()
{
  sub_24F04E8C0();

  return swift_deallocClassInstance();
}

uint64_t sub_24EA65FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconRowViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24EA6610C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IconRowViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for IconRowView(uint64_t a1)
{
  result = qword_27F226508;
  if (!qword_27F226508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA66260(uint64_t a1)
{
  type metadata accessor for IconRowViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_24E66ED3C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EA66300@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8, &qword_24F957520);
  MEMORY[0x28223BE20](v3);
  v5 = v20 - v4;
  v6 = type metadata accessor for IconRowView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226518, &qword_24F979F78);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v12 = sub_24F9249A8();
  result = type metadata accessor for IconRowViewModel(0);
  v14 = (*(v1 + *(result + 24)) << 51) + 0x4020000000000000;
  *v11 = v12;
  *(v11 + 1) = v14;
  v11[16] = 0;
  v15 = *(v1 + *(result + 32));
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v20[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226520, &unk_24F979F80);
    v20[2] = 0;
    v20[3] = v15;
    swift_getKeyPath();
    sub_24EA66978(v1, v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = swift_allocObject();
    sub_24EA66D10(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for IconRowView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0, &unk_24F93CB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226430, &qword_24F979D60);
    sub_24E62A6CC();
    sub_24EA66BB8();
    sub_24F927228();
    v18 = *MEMORY[0x277CDF9A8];
    v19 = sub_24F923E98();
    (*(*(v19 - 8) + 104))(v5, v18, v19);
    sub_24EA66CC8(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    result = sub_24F92AFF8();
    if (result)
    {
      sub_24E602068(&qword_27F226540, &qword_27F226518, &qword_24F979F78, MEMORY[0x277CE1138]);
      sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
      sub_24F9263F8();
      sub_24E601704(v5, &qword_27F21CCC8, &qword_24F957520);
      return sub_24E601704(v11, &qword_27F226518, &qword_24F979F78);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA666EC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SwiftUIArtworkView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  result = type metadata accessor for IconRowViewModel(0);
  v11 = *(a2 + *(result + 28));
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x253052270](v9);
    goto LABEL_5;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 8 * v9 + 32);

LABEL_5:
    type metadata accessor for IconRowView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    sub_24F9237D8();
    v13 = v23;
    v14 = v6[6];
    v15 = *MEMORY[0x277CE1010];
    v16 = sub_24F926E68();
    (*(*(v16 - 8) + 104))(&v8[v14], v15, v16);
    *v8 = v12;
    *(v8 + 1) = v13;
    *(v8 + 2) = v13;
    v8[24] = 0;
    v17 = &v8[v6[7]];
    *v17 = 0;
    *(v17 + 1) = 0;
    v17[16] = 1;
    v8[v6[8]] = 2;
    v8[v6[9]] = 0;
    v18 = *(v12 + 64);
    type metadata accessor for IconRowView(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    sub_24F9237D8();
    v19 = v23;
    v22[15] = 0;
    sub_24F926F28();

    LOBYTE(v15) = v23;
    v20 = v24;
    LOBYTE(v23) = 1;
    sub_24EA66D10(v8, a3, type metadata accessor for SwiftUIArtworkView);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226430, &qword_24F979D60);
    v21 = a3 + *(result + 36);
    *v21 = v18;
    *(v21 + 8) = v19;
    *(v21 + 16) = v19;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    *(v21 + 48) = v15;
    *(v21 + 56) = v20;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA66978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconRowView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA669DC()
{
  v1 = (type metadata accessor for IconRowView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for IconRowViewModel(0);
  v4(v2 + *(v5 + 20), v3);

  v4(v2 + v1[7], v3);
  v4(v2 + v1[8], v3);

  return swift_deallocObject();
}

uint64_t sub_24EA66B38@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IconRowView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EA666EC(a1, v6, a2);
}

unint64_t sub_24EA66BB8()
{
  result = qword_27F226528;
  if (!qword_27F226528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226430, &qword_24F979D60);
    sub_24EA66CC8(&qword_27F226530, type metadata accessor for SwiftUIArtworkView, &unk_24F95B5F4);
    sub_24EA66C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226528);
  }

  return result;
}

unint64_t sub_24EA66C74()
{
  result = qword_27F226538;
  if (!qword_27F226538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226538);
  }

  return result;
}

uint64_t sub_24EA66CC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EA66D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EA66D78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226518, &qword_24F979F78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCC8, &qword_24F957520);
  sub_24E602068(&qword_27F226540, &qword_27F226518, &qword_24F979F78, MEMORY[0x277CE1138]);
  sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t PageRefreshGate.__allocating_init(policy:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_24EA69948(a1);

  return v2;
}

uint64_t PageRefreshGate.init(policy:)(uint64_t a1)
{
  v1 = sub_24EA69948(a1);

  return v1;
}

void sub_24EA66EE8()
{
  v1 = sub_24F927DE8();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x28223BE20](v1);
  v44 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = v33 - v4;
  v42 = sub_24F927D88();
  MEMORY[0x28223BE20](v42);
  v43 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226578, &unk_24F99B450);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v33 - v7;
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v33 - v14;
  v16 = *(v0 + 32);
  sub_24E60169C(v16 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, v8, &qword_27F226578, &unk_24F99B450);
  refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
  if ((*(*(refreshed - 8) + 48))(v8, 1, refreshed) == 1)
  {
    sub_24E601704(v8, &qword_27F226578, &unk_24F99B450);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226580, &qword_24F99B460) + 48)];
    v40 = *(v10 + 32);
    v41 = v10 + 32;
    v40(v15, v8, v9);
    if (v18 != 1 || (v19 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_delayedRefresh, *(v0 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_delayedRefresh)) || (v39 = v0, sub_24F91F5C8(), v20 <= 0.0))
    {
      (*(v10 + 8))(v15, v9);
    }

    else
    {
      v37 = v19;
      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v36 = sub_24F92AAE8();
      v35 = __swift_project_value_buffer(v36, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      v33[1] = 8 * *(*(sub_24F928468() - 8) + 72);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_24F979FB0;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F9283A8();
      v50 = v9;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
      v38 = v10;
      v33[0] = *(v10 + 16);
      (v33[0])(boxed_opaque_existential_1, v15, v9);
      sub_24F928438();
      sub_24E601704(aBlock, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      v50 = MEMORY[0x277D839B0];
      LOBYTE(aBlock[0]) = 1;
      sub_24F928438();
      sub_24E601704(aBlock, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      v22 = *(v16 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
      v50 = MEMORY[0x277D839F8];
      aBlock[0] = v22;
      sub_24F928438();
      sub_24E601704(aBlock, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A588();

      v23 = swift_allocObject();
      swift_weakInit();
      (v33[0])(v12, v15, v9);
      v24 = (*(v38 + 80) + 24) & ~*(v38 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      v40((v25 + v24), v12, v9);
      *(v25 + v24 + v11) = 1;
      v51 = sub_24EA69E24;
      v52 = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24EAF8248;
      v50 = &block_descriptor_41;
      _Block_copy(aBlock);
      v48 = MEMORY[0x277D84F90];
      sub_24EA69EC0(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E8582A8();
      sub_24F92C6A8();
      sub_24F927E28();
      swift_allocObject();
      v26 = sub_24F927E08();

      sub_24E74EC40();
      v27 = sub_24F92BEF8();
      v28 = v44;
      sub_24F927DD8();
      v29 = v45;
      sub_24F927E58();
      v30 = *(v46 + 8);
      v31 = v28;
      v32 = v47;
      v30(v31, v47);
      sub_24F92BEA8();

      v30(v29, v32);
      (*(v38 + 8))(v15, v9);
      *(v39 + v37) = v26;
    }
  }

  else
  {
    sub_24EA69CC8(v8);
  }
}

void sub_24EA67760()
{
  if (*(*(v0 + 32) + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) == 1)
  {
    v1 = [objc_opt_self() defaultCenter];
    if (qword_27F20FEF0 != -1)
    {
      swift_once();
    }

    v2 = qword_27F39ACE8;
    v3 = [objc_opt_self() mainQueue];
    v4 = swift_allocObject();
    swift_weakInit();
    v10 = sub_24EA69F08;
    v11 = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EEFA694;
    ObjectType = &block_descriptor_15;
    v5 = _Block_copy(aBlock);

    v6 = [v1 addObserverForName:v2 object:0 queue:v3 usingBlock:v5];
    _Block_release(v5);

    ObjectType = swift_getObjectType();
    aBlock[0] = v6;
    v7 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_displayDeviceDrivenContentChangeToken;
    swift_beginAccess();
    sub_24E61DA68(aBlock, v0 + v7, &qword_27F2129B0, &unk_24F945320);
    swift_endAccess();
  }
}

uint64_t *PageRefreshGate.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_delayedRefresh))
  {

    sub_24F927E18();
  }

  v2 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_displayDeviceDrivenContentChangeToken;
  swift_beginAccess();
  sub_24E60169C(v0 + v2, &v5, &qword_27F2129B0, &unk_24F945320);
  if (v6)
  {
    sub_24E612B0C(&v5, &v7);
    v3 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_1(&v7, v8);
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    sub_24E601704(&v5, &qword_27F2129B0, &unk_24F945320);
  }

  sub_24E824448(*(v1 + 16), *(v1 + 24));

  sub_24E601704(v1 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_lastOffscreenDate, &unk_27F22EC30, &qword_24F939880);

  sub_24E601704(v1 + v2, &qword_27F2129B0, &unk_24F945320);
  return v1;
}

uint64_t PageRefreshGate.__deallocating_deinit()
{
  PageRefreshGate.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EA67B24@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24EA69C9C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4, v5);
}

double sub_24EA67BB8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24EA69C64;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_24E5FCA4C(v3, v4);
  return sub_24E824448(v8, v9);
}

uint64_t PageRefreshGate.performRefresh.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_24E5FCA4C(v1, *(v0 + 24));
  return v1;
}

double PageRefreshGate.performRefresh.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_24E824448(v5, v6);
}

void PageRefreshGate.viewWillAppear(on:)(uint64_t a1)
{
  *(v1 + 40) = 1;
  sub_24EA67DA8();

  sub_24EA68EC8(a1);
}

uint64_t sub_24EA67DA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226578, &unk_24F99B450);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v53 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v53 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  if (*(v0 + 40) == 1 && *(v0 + 41) == 1)
  {
    v17 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_lastOffscreenDate;
    swift_beginAccess();
    sub_24E60169C(v0 + v17, v6, &unk_27F22EC30, &qword_24F939880);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v18 = sub_24F92AAE8();
      __swift_project_value_buffer(v18, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F92A588();
    }

    v59 = v8;
    v21 = *(v8 + 32);
    v21(v16, v6, v7);
    v22 = *(v0 + 32);
    if (*(v22 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) == 1 && *(v0 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_displayDeviceDrivenContentChanged) == 1)
    {
      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v23 = sub_24F92AAE8();
      __swift_project_value_buffer(v23, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F92A588();

      swift_beginAccess();
      v24 = *(v0 + 16);
      v25 = v59;
      if (v24)
      {
        v26 = *(v0 + 24);
        swift_endAccess();

        v24(v22);
        v27 = sub_24E824448(v24, v26);
        return (*(v25 + 8))(v16, v7, v27);
      }

      (*(v59 + 8))(v16, v7);
      return swift_endAccess();
    }

    v58 = v16;
    sub_24E60169C(v22 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_strategy, v3, &qword_27F226578, &unk_24F99B450);
    refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
    if ((*(*(refreshed - 8) + 48))(v3, 1, refreshed) == 1)
    {
      return (*(v59 + 8))(v58, v7);
    }

    v57 = v0;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21(v13, v3, v7);
      sub_24F91F638();
      sub_24EA69EC0(&qword_27F2363D0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v29 = sub_24F92AF78();
      v30 = v59;
      v55 = *(v59 + 8);
      v56 = v59 + 8;
      v55(v10, v7);
      if (v29)
      {
        if (qword_27F210578 != -1)
        {
          swift_once();
        }

        v54 = sub_24F92AAE8();
        v53 = __swift_project_value_buffer(v54, qword_27F39C3C8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93A070;
        sub_24F928448();
        sub_24F9283A8();
        sub_24F9283A8();
        v61 = v7;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
        (*(v30 + 16))(boxed_opaque_existential_1, v13, v7);
        sub_24F928438();
        sub_24E601704(v60, &qword_27F2129B0, &unk_24F945320);
        sub_24F9283A8();
        v32 = *(v22 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
        v61 = MEMORY[0x277D839F8];
        v60[0] = v32;
        sub_24F928438();
        sub_24E601704(v60, &qword_27F2129B0, &unk_24F945320);
        sub_24F92A588();

        sub_24EA66EE8();
        goto LABEL_35;
      }

      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v42 = sub_24F92AAE8();
      v54 = __swift_project_value_buffer(v42, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A070;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F9283A8();
      v61 = v7;
      v43 = __swift_allocate_boxed_opaque_existential_1(v60);
      (*(v30 + 16))(v43, v13, v7);
      sub_24F928438();
      sub_24E601704(v60, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      v44 = *(v22 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
      v61 = MEMORY[0x277D839F8];
      v60[0] = v44;
      sub_24F928438();
      sub_24E601704(v60, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A588();
      v45 = v57;

      swift_beginAccess();
      v46 = *(v45 + 16);
      if (v46)
      {
        v47 = *(v45 + 24);
        swift_endAccess();

        v46(v22);
        v33.n128_f64[0] = sub_24E824448(v46, v47);
LABEL_35:
        v48 = v55;
        (v55)(v13, v7, v33);
        return v48(v58, v7);
      }

      v52 = v55;
      v55(v13, v7);
      v52(v58, v7);
    }

    else
    {
      v34 = *v3;
      sub_24F91F558();
      if (v34 >= v35)
      {
        if (qword_27F210578 != -1)
        {
          swift_once();
        }

        v49 = sub_24F92AAE8();
        v56 = __swift_project_value_buffer(v49, qword_27F39C3C8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93A070;
        sub_24F928448();
        sub_24F9283A8();
        sub_24F9283A8();
        v50 = MEMORY[0x277D839F8];
        v61 = MEMORY[0x277D839F8];
        *v60 = v34;
        sub_24F928438();
        sub_24E601704(v60, &qword_27F2129B0, &unk_24F945320);
        sub_24F9283A8();
        v51 = *(v22 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
        v61 = v50;
        v60[0] = v51;
        sub_24F928438();
        sub_24E601704(v60, &qword_27F2129B0, &unk_24F945320);
        sub_24F92A588();

        return (*(v59 + 8))(v58, v7);
      }

      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v36 = sub_24F92AAE8();
      v56 = __swift_project_value_buffer(v36, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A070;
      sub_24F928448();
      sub_24F9283A8();
      sub_24F9283A8();
      v37 = MEMORY[0x277D839F8];
      v61 = MEMORY[0x277D839F8];
      *v60 = v34;
      sub_24F928438();
      sub_24E601704(v60, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      v38 = *(v22 + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
      v61 = v37;
      v60[0] = v38;
      sub_24F928438();
      sub_24E601704(v60, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A588();
      v39 = v57;

      swift_beginAccess();
      v40 = *(v39 + 16);
      if (v40)
      {
        v41 = *(v39 + 24);
        swift_endAccess();

        v40(v22);
        sub_24E824448(v40, v41);
        return (*(v59 + 8))(v58, v7);
      }

      (*(v59 + 8))(v58, v7);
    }

    return swift_endAccess();
  }

  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v20 = sub_24F92AAE8();
  __swift_project_value_buffer(v20, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();
}

void sub_24EA68EC8(uint64_t a1)
{
  v3 = sub_24F92AAE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  if ((v1[40] & 1) == 0)
  {
    if (v1[42] != 1)
    {
      return;
    }

    v1[42] = 0;
    goto LABEL_7;
  }

  v13 = v1[41];
  if (v13 == v1[42])
  {
    return;
  }

  v1[42] = v13;
  if (!v13)
  {
LABEL_7:
    v15 = sub_24F91F648();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v12, a1, v15);
    (*(v16 + 56))(v12, 0, 1, v15);
    goto LABEL_8;
  }

  v14 = sub_24F91F648();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
LABEL_8:
  v17 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_lastOffscreenDate;
  swift_beginAccess();
  sub_24E61DA68(v12, &v1[v17], &unk_27F22EC30, &qword_24F939880);
  swift_endAccess();
  if ((v1[42] & 1) == 0)
  {
    v18 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_delayedRefresh;
    if (*&v1[OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_delayedRefresh])
    {

      sub_24F927E18();
    }

    *&v1[v18] = 0;
  }

  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v3, qword_27F39C3C8);
  (*(v4 + 16))(v6, v19, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F928448();
  sub_24F9283A8();
  sub_24E60169C(&v1[v17], v9, &unk_27F22EC30, &qword_24F939880);
  v20 = sub_24F91F648();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v9, 1, v20) == 1)
  {
    sub_24E601704(v9, &unk_27F22EC30, &qword_24F939880);
    v23 = 0u;
    v24 = 0u;
  }

  else
  {
    *(&v24 + 1) = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
    (*(v21 + 32))(boxed_opaque_existential_1, v9, v20);
  }

  sub_24F928438();
  sub_24E601704(&v23, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  (*(v4 + 8))(v6, v3);
}

void PageRefreshGate.appWillForeground(on:)(uint64_t a1)
{
  *(v1 + 41) = 1;
  sub_24EA67DA8();

  sub_24EA68EC8(a1);
}

double sub_24EA69410(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_delayedRefresh))
    {
      v7 = Strong;

      if ((sub_24F927DF8() & 1) == 0)
      {
        if (qword_27F210578 != -1)
        {
          swift_once();
        }

        v14 = sub_24F92AAE8();
        __swift_project_value_buffer(v14, qword_27F39C3C8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F979FB0;

        sub_24F928448();

        sub_24F9283A8();
        sub_24F9283A8();
        v8 = sub_24F91F648();
        v16 = v8;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
        (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a2, v8);
        sub_24F928438();
        sub_24E601704(v15, &qword_27F2129B0, &unk_24F945320);
        sub_24F9283A8();
        v16 = MEMORY[0x277D839B0];
        LOBYTE(v15[0]) = a3 & 1;
        sub_24F928438();
        sub_24E601704(v15, &qword_27F2129B0, &unk_24F945320);
        sub_24F9283A8();
        v10 = *(v7[4] + OBJC_IVAR____TtC12GameStoreKit17PageRefreshPolicy_updateDelayInterval);
        v16 = MEMORY[0x277D839F8];
        v15[0] = v10;
        sub_24F928438();
        sub_24E601704(v15, &qword_27F2129B0, &unk_24F945320);
        sub_24F92A588();

        swift_beginAccess();
        v11 = v7[2];
        if (v11)
        {
          v12 = v7[3];
          sub_24E5FCA4C(v7[2], v12);

          v11(v13);
          sub_24E824448(v11, v12);
        }
      }
    }
  }

  return result;
}

double sub_24EA697A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v5 = sub_24F92AAE8();
    __swift_project_value_buffer(v5, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;

    sub_24F928448();

    sub_24F9283A8();
    sub_24F92A588();

    *(v4 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_displayDeviceDrivenContentChanged) = 1;
  }

  return result;
}

uint64_t sub_24EA69948(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v6 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_lastOffscreenDate;
  v7 = sub_24F91F648();
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_delayedRefresh) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_displayDeviceDrivenContentChanged) = 0;
  v9 = (v1 + OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_displayDeviceDrivenContentChangeToken);
  *v9 = 0u;
  v9[1] = 0u;
  *(v1 + 32) = a1;
  *(v1 + 40) = 257;
  *(v1 + 42) = 1;
  v8(v5, 1, 1, v7);
  v10 = OBJC_IVAR____TtC12GameStoreKit15PageRefreshGate_lastOffscreenDate;
  swift_beginAccess();

  sub_24E61DA68(v5, v1 + v10, &unk_27F22EC30, &qword_24F939880);
  swift_endAccess();
  sub_24EA66EE8();
  sub_24EA67760();
  return v1;
}

uint64_t type metadata accessor for PageRefreshGate(uint64_t a1)
{
  result = qword_27F226568;
  if (!qword_27F226568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA69B34(uint64_t a1)
{
  sub_24E728940(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EA69C2C()
{

  return swift_deallocObject();
}

uint64_t sub_24EA69C64(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_24EA69CC8(uint64_t a1)
{
  refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
  (*(*(refreshed - 8) + 8))(a1, refreshed);
  return a1;
}

uint64_t sub_24EA69D24()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EA69D5C()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_24EA69E24()
{
  v1 = *(sub_24F91F648() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return sub_24EA69410(v2, v3, v4);
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EA69EC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Gate.Condition.__allocating_init(initialValue:)(char a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = a1;
  return v2;
}

uint64_t Gate.Condition.init(initialValue:)(char a1)
{
  swift_weakInit();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  return v1;
}

uint64_t sub_24EA69FD8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_24EA6A038()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_24EA6A084(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

double sub_24EA6A128(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EA6BFA0();
  }

  return result;
}

double sub_24EA6A19C(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EA6BFA0();
  }

  return result;
}

double (*sub_24EA6A20C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24EA6A260;
}

double sub_24EA6A260(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  return result;
}

uint64_t Gate.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Gate.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t Gate.__allocating_init(queue:passingDelay:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  Gate.init(queue:passingDelay:)(a1, a2);
  return v4;
}

uint64_t Gate.init(queue:passingDelay:)(uint64_t a1, double a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226588, &qword_24F97A070);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x277D84F90];
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  v7 = sub_24F929638();
  v8 = MEMORY[0x277D21FB0];
  *(v2 + 104) = v7;
  *(v2 + 112) = v8;
  __swift_allocate_boxed_opaque_existential_1((v2 + 80));
  sub_24F929628();
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

double Gate.conditions.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Gate.add(condition:)(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
  swift_beginAccess();

  MEMORY[0x253050F00](v2);
  if (*((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  sub_24F92B638();
  return swift_endAccess();
}

Swift::Void __swiftcall Gate.invalidate()()
{
  v1 = v0;
  v2 = *(v0 + 48);
  os_unfair_lock_lock(v2 + 4);
  sub_24EA6C30C();
  os_unfair_lock_unlock(v2 + 4);
  swift_beginAccess();
  v3 = *(v0 + 56);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v1[7] = MEMORY[0x277D84F90];

    swift_beginAccess();
    v6 = v1[15];
    v7 = v1[16];
    v1[15] = 0;
    v1[16] = 0;
    sub_24E824448(v6, v7);
    return;
  }

  v4 = sub_24F92C738();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](v5, v3);
      }

      else
      {
      }

      ++v5;
      swift_beginAccess();
      swift_weakAssign();
    }

    while (v4 != v5);

    goto LABEL_10;
  }

  __break(1u);
}

double sub_24EA6A730(uint64_t a1)
{
  if (*(a1 + 72))
  {

    sub_24F927E18();
  }

  *(a1 + 72) = 0;

  return result;
}

uint64_t Gate.printUnsatisfiedConditions.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

BOOL Gate.isPassing.getter()
{
  v2 = v0;
  i = *v0;
  v4 = sub_24F92AAE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 64) == 1)
  {
    v25 = v7;
    v26 = v5;
    swift_beginAccess();
    v1 = *(v2 + 56);
    v27 = MEMORY[0x277D84F90];
    if (v1 >> 62)
    {
      goto LABEL_39;
    }

    v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v24 = i;

    if (v8)
    {
      v23 = v4;
      v9 = 0;
      v4 = v1 & 0xC000000000000001;
      i = v1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v4)
        {
          v10 = MEMORY[0x253052270](v9, v1);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          if (v9 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v8 = sub_24F92C738();
            goto LABEL_4;
          }

          v10 = *(v1 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_15;
          }
        }

        swift_beginAccess();
        if (*(v10 + 40))
        {
        }

        else
        {
          sub_24F92C948();
          sub_24F92C988();
          sub_24F92C998();
          sub_24F92C958();
        }

        ++v9;
        if (v11 == v8)
        {
LABEL_28:
          v14 = v27;
          v4 = v23;
          goto LABEL_31;
        }
      }
    }

    v14 = MEMORY[0x277D84F90];
LABEL_31:

    v27 = v14;
    v28 = sub_24EA6AE08;
    v29 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226590, &qword_24F97A078);
    sub_24EA6C334();
    v23 = sub_24F92AF68();
    v17 = v16;

    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v4, qword_27F39C3C8);
    v19 = v25;
    v20 = v26;
    (*(v26 + 16))(v25, v18, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    v30 = v24;
    v27 = v2;

    sub_24F928438();
    sub_24E857CC8(&v27);
    sub_24F9283A8();
    v30 = MEMORY[0x277D837D0];
    v27 = v23;
    v28 = v17;

    sub_24F928438();
    sub_24E857CC8(&v27);
    sub_24F92B228();

    sub_24F9283A8();
    sub_24F92A598();

    (*(v20 + 8))(v19, v4);
    if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
    {
      v21 = sub_24F92C738();
    }

    else
    {
      v21 = *(v14 + 16);
    }

    return v21 == 0;
  }

  else
  {
LABEL_16:
    swift_beginAccess();
    v12 = *(v2 + 56);
    v4 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 >> 62)
    {
      v13 = sub_24F92C738();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v13 != i; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x253052270](i, v12);
        if (__OFADD__(i, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v2 = *(v12 + 8 * i + 32);

        if (__OFADD__(i, 1))
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      swift_beginAccess();
      v1 = *(v2 + 40);

      if ((v1 & 1) == 0)
      {

        return 0;
      }
    }

    return 1;
  }
}

double sub_24EA6AE08@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  if (*(v3 + 32))
  {
    v4 = *(v3 + 24);
    v5 = *(v3 + 32);
  }

  else
  {
    type metadata accessor for Gate.Condition();

    v4 = sub_24F92B188();
  }

  *a2 = v4;
  a2[1] = v5;

  return result;
}

void sub_24EA6AE94(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 72);
  if (v3)
  {

    sub_24F927E18();
  }

  *a2 = v3 == 0;
}

void sub_24EA6AEEC(uint64_t a1)
{
  if (Gate.isPassing.getter())
  {
    swift_beginAccess();
    v2 = *(a1 + 120);
    if (v2)
    {
      v3 = *(a1 + 128);
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      swift_beginAccess();
      sub_24E615E00(a1 + 80, v4);
      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      sub_24F928C78();
      sub_24E824448(v2, v3);
      __swift_destroy_boxed_opaque_existential_1(v4);
    }

    Gate.invalidate()();
  }
}

uint64_t Gate.observerScheduler.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));
  sub_24E612C80(a1, v1 + 80);
  return swift_endAccess();
}

uint64_t sub_24EA6B0A8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 120);
  v5 = *(v3 + 128);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24E972460;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4, v5);
}

double sub_24EA6B13C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24E9A0188;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 120);
  v9 = *(v7 + 128);
  *(v7 + 120) = v6;
  *(v7 + 128) = v5;
  sub_24E5FCA4C(v3, v4);
  return sub_24E824448(v8, v9);
}

uint64_t Gate.observer.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  sub_24E5FCA4C(v1, *(v0 + 128));
  return v1;
}

double Gate.observer.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  v6 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return sub_24E824448(v5, v6);
}

uint64_t Gate.description.getter()
{
  swift_beginAccess();
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = 0xE900000000000073;
    v1 = 0x756F6D796E6F6E61;
  }

  sub_24F92AFE8();
  sub_24EA6C3E4();
  v3 = sub_24F92B398();
  v5 = v4;
  MEMORY[0x253050C20](v1, v2);

  MEMORY[0x253050C20](58, 0xE100000000000000);
  MEMORY[0x253050C20](v3, v5);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return 0x2865746147;
}

uint64_t Gate.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  sub_24E824448(*(v0 + 120), *(v0 + 128));
  return v0;
}

uint64_t Gate.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  sub_24E824448(*(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t Gate.NotificationCondition.__allocating_init(satisifedBy:revertedBy:object:on:initialValue:)(void *a1, void *a2, uint64_t a3, void *a4, char a5)
{
  v10 = swift_allocObject();
  swift_weakInit();
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = a5;
  sub_24E94E17C(a3, v32);
  v11 = v33;
  if (v33)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x28223BE20](v12);
    v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    swift_retain_n();
    v17 = a1;
    v18 = sub_24F92CDE8();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    swift_retain_n();
    v19 = a1;
    v18 = 0;
  }

  v20 = &selRef_lockedAppBundleIdentifiers;
  [a4 addObserver:v10 selector:sel_takeSatisfactionFrom_ name:a1 object:v18];

  swift_unknownObjectRelease();
  sub_24E94E17C(a3, v32);
  v21 = v33;
  if (v33)
  {
    v22 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x28223BE20](v22);
    v26 = v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = a2;
    v28 = sub_24F92CDE8();
    v29 = v26;
    v20 = &selRef_lockedAppBundleIdentifiers;
    (*(v23 + 8))(v29, v21);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v30 = a2;
    v28 = 0;
  }

  [a4 v20[374]];

  swift_unknownObjectRelease();
  sub_24E857CC8(a3);
  return v10;
}

uint64_t Gate.NotificationCondition.init(satisifedBy:revertedBy:object:on:initialValue:)(void *a1, void *a2, uint64_t a3, void *a4, char a5)
{
  swift_weakInit();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = a5;
  sub_24E94E17C(a3, v32);
  v11 = v33;
  if (v33)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x28223BE20](v12);
    v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    swift_retain_n();
    v17 = a1;
    v18 = sub_24F92CDE8();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    swift_retain_n();
    v19 = a1;
    v18 = 0;
  }

  v20 = &selRef_lockedAppBundleIdentifiers;
  [a4 addObserver:v5 selector:sel_takeSatisfactionFrom_ name:a1 object:v18];

  swift_unknownObjectRelease();
  sub_24E94E17C(a3, v32);
  v21 = v33;
  if (v33)
  {
    v22 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x28223BE20](v22);
    v26 = v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = a2;
    v28 = sub_24F92CDE8();
    v29 = v26;
    v20 = &selRef_lockedAppBundleIdentifiers;
    (*(v23 + 8))(v29, v21);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v30 = a2;
    v28 = 0;
  }

  [a4 v20[374]];

  swift_unknownObjectRelease();
  sub_24E857CC8(a3);
  return v5;
}

uint64_t sub_24EA6BAEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_24F91EB58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F91EB08();
  swift_beginAccess();
  *(a1 + 40) = a4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24EA6BFA0();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t Gate.CountingCondition.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 48) = 0;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  return v0;
}

uint64_t Gate.CountingCondition.init()()
{
  *(v0 + 48) = 0;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  return v0;
}

double sub_24EA6BD10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
  swift_beginAccess();
  *(v3 + 40) = v2 == 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EA6BFA0();
  }

  return result;
}

Swift::Void __swiftcall Gate.CountingCondition.increment()()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 48) = v3;
    v4 = v3 == 0;
    swift_beginAccess();
    *(v0 + 40) = v4;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }
}

Swift::Bool __swiftcall Gate.CountingCondition.decrement()()
{
  v1 = v0;
  v2 = 1;
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = v3 < 1;
  v5 = v3 - 1;
  if (!v4)
  {
    *(v1 + 48) = v5;
    v6 = v5 == 0;
    swift_beginAccess();
    *(v1 + 40) = v6;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }

    return *(v1 + 48) == 0;
  }

  return v2;
}

uint64_t sub_24EA6BF24()
{
  swift_weakDestroy();

  return v0;
}

uint64_t sub_24EA6BF54(uint64_t a1)
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

double sub_24EA6BFA0()
{
  v16 = sub_24F927DE8();
  v15 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v2 = v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v14 - v4;
  v6 = sub_24F927D88();
  MEMORY[0x28223BE20](v6);
  v7 = *(v0 + 48);
  v22 = sub_24EA6C834;
  v23 = v0;
  v8 = v7;
  v14[0] = v7;
  os_unfair_lock_lock(v7 + 4);
  sub_24EA6C850(aBlock);
  v14[1] = 0;
  os_unfair_lock_unlock(v8 + 4);
  aBlock[4] = sub_24EA6C894;
  v26 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_42;
  _Block_copy(aBlock);
  v24 = MEMORY[0x277D84F90];
  sub_24E858250();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  sub_24F927E28();
  swift_allocObject();
  v9 = sub_24F927E08();

  sub_24F927DD8();
  sub_24F927E58();
  v10 = *(v15 + 8);
  v11 = v16;
  v10(v2, v16);
  sub_24F92BEA8();
  v10(v5, v11);
  v20 = v0;
  v21 = v9;
  v17 = sub_24EA6C8B4;
  v18 = &v19;
  v12 = v14[0];
  os_unfair_lock_lock((v14[0] + 16));
  sub_24EA6C900();
  os_unfair_lock_unlock(v12 + 4);

  return result;
}

unint64_t sub_24EA6C334()
{
  result = qword_27F226598;
  if (!qword_27F226598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226590, &qword_24F97A078);
    sub_24E602068(&qword_27F2265A0, &qword_27F2265A8, &qword_24F97A080, MEMORY[0x277D83958]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226598);
  }

  return result;
}

unint64_t sub_24EA6C3E4()
{
  result = qword_27F2265B0;
  if (!qword_27F2265B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2265B0);
  }

  return result;
}

uint64_t sub_24EA6C438@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

double sub_24EA6C4D0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;

  return result;
}

uint64_t sub_24EA6C520@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_24EA6C574@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_24EA6C7FC()
{

  return swift_deallocObject();
}

void *sub_24EA6C850@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EA6C8B4()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t sub_24EA6C94C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 72) = a1;
  v6 = type metadata accessor for ChallengeDefinitionDetail(0);
  *(v3 + 80) = v6;
  *(v3 + 88) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  *(v3 + 96) = v7;
  *(v3 + 104) = v9;
  v10 = a2[2];
  v11 = a2[3];
  *(v3 + 112) = v10;
  *(v3 + 120) = v11;
  v12 = a2[4];
  v13 = a2[5];
  *(v3 + 128) = v13;
  v14 = *(a2 + 48);
  *(v3 + 16) = v8;
  *(v3 + 24) = v9;
  *(v3 + 32) = v10;
  *(v3 + 40) = v11;
  *(v3 + 48) = v12;
  *(v3 + 56) = v13;
  *(v3 + 64) = v14;
  v15 = swift_task_alloc();
  *(v3 + 136) = v15;
  *v15 = v3;
  v15[1] = sub_24EA6CA8C;

  return sub_24EA6CE8C(v7, v3 + 16, a3);
}

uint64_t sub_24EA6CA8C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24EA6CC54;
  }

  else
  {
    v2 = sub_24EA6CBA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EA6CBA0()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  sub_24EA6FE0C(v0[12], v3, type metadata accessor for ChallengeDefinitionDetail);
  (*(v1 + 56))(v3, 0, 1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EA6CC54()
{
  v17 = v0;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);

  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[18];
    v8 = v0[14];
    v7 = v0[15];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_24E7620D4(v8, v7, &v16);
    *(v9 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengeDefinitionDataIntentImplementation: Failed to fetch definition %s, %@", v9, 0x16u);
    sub_24E601704(v10, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EA6CE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 192) = a1;
  *(v3 + 200) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  *(v3 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265B8, &qword_24F97A268);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  type metadata accessor for Leaderboard(0);
  *(v3 + 240) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C0, &unk_24F97A270);
  *(v3 + 248) = v5;
  *(v3 + 256) = *(v5 - 8);
  *(v3 + 264) = swift_task_alloc();
  v6 = sub_24F920BA8();
  *(v3 + 272) = v6;
  *(v3 + 280) = *(v6 - 8);
  *(v3 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00, &qword_24F9A23B0);
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  v7 = sub_24F920BC8();
  *(v3 + 312) = v7;
  *(v3 + 320) = *(v7 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C8, &unk_24F97A280) - 8);
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700);
  *(v3 + 376) = v8;
  *(v3 + 384) = *(v8 - 8);
  *(v3 + 392) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980, &qword_24F93B520);
  *(v3 + 400) = v9;
  *(v3 + 408) = *(v9 - 8);
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = *a2;
  *(v3 + 440) = *(a2 + 16);
  *(v3 + 448) = *(a2 + 24);
  *(v3 + 464) = *(a2 + 40);
  *(v3 + 664) = *(a2 + 48);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v11 = swift_task_alloc();
  *(v3 + 472) = v11;
  *v11 = v3;
  v11[1] = sub_24EA6D2F4;

  return MEMORY[0x28217F228](v3 + 104, v10, v10);
}

uint64_t sub_24EA6D2F4()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_24EA6D74C;
  }

  else
  {
    v2 = sub_24EA6D408;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EA6D408()
{
  v1 = *(v0 + 664);
  __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  sub_24F920F98();
  if (v1 == 1)
  {
    v3 = *(v0 + 408);
    v2 = *(v0 + 416);
    v4 = *(v0 + 400);
    v5 = *(v0 + 88);
    v21 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v5);

    sub_24F920EF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213D18, &qword_24F93B960);
    v6 = sub_24F920DD8();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v0 + 488) = v9;
    *(v9 + 16) = xmmword_24F93DE60;
    (*(v3 + 16))(v9 + v8, v2, v4);
    (*(v7 + 104))(v9 + v8, *MEMORY[0x277D0D408], v6);
    v10 = swift_task_alloc();
    *(v0 + 496) = v10;
    *v10 = v0;
    v10[1] = sub_24EA6D884;
    v11 = *(v0 + 392);

    return MEMORY[0x282165148](v11, v9, v5, v21);
  }

  else
  {
    v13 = *(v0 + 408);
    v12 = *(v0 + 416);
    v14 = *(v0 + 400);
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213978, &qword_24F97A290);
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = swift_allocObject();
    *(v0 + 512) = v18;
    *(v18 + 16) = xmmword_24F93DE60;
    (*(v13 + 16))(v18 + v17, v12, v14);
    v19 = swift_task_alloc();
    *(v0 + 520) = v19;
    *v19 = v0;
    v19[1] = sub_24EA6DB38;

    return MEMORY[0x282165150](v18, v15, v16);
  }
}

uint64_t sub_24EA6D74C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EA6D884()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  (*(v2[48] + 8))(v2[49], v2[47]);

  if (v0)
  {
    v3 = sub_24EA6EFC0;
  }

  else
  {
    v3 = sub_24EA6DA08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_24EA6DA08()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213978, &qword_24F97A290);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[64] = v5;
  *(v5 + 16) = xmmword_24F93DE60;
  (*(v2 + 16))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  v0[65] = v6;
  *v6 = v0;
  v6[1] = sub_24EA6DB38;

  JUMPOUT(0x24F920D28);
}

uint64_t sub_24EA6DB38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {
    v4 = sub_24EA6F118;
  }

  else
  {
    v4 = sub_24EA6DC78;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EA6DC78()
{
  v1 = *(v0 + 528);
  if (!*(v1 + 16))
  {

    goto LABEL_5;
  }

  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 352);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v7 = *(*(v0 + 344) + 80);
  sub_24E60169C(v1 + ((v7 + 32) & ~v7), v2, &qword_27F2265C8, &unk_24F97A280);

  sub_24EA6FCEC(v2, v3);
  sub_24E60169C(v3, v4, &qword_27F2265C8, &unk_24F97A280);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v8 = *(v0 + 352);
    sub_24E601704(*(v0 + 368), &qword_27F2265C8, &unk_24F97A280);
    sub_24E601704(v8, &qword_27F2265C8, &unk_24F97A280);
LABEL_5:
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E778);
    v10 = sub_24F9220B8();
    v11 = sub_24F92BD98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24E5DD000, v10, v11, "ChallengeDefinitionDataIntentImplementation definition not found", v12, 2u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    v14 = *(v0 + 408);
    v13 = *(v0 + 416);
    v15 = *(v0 + 400);

    sub_24EA6FD5C();
    swift_allocError();
    swift_willThrow();
    (*(v14 + 8))(v13, v15);
    goto LABEL_10;
  }

  v18 = *(v0 + 304);
  v20 = *(v0 + 280);
  v19 = *(v0 + 288);
  v21 = *(v0 + 272);
  (*(*(v0 + 320) + 32))(*(v0 + 336), *(v0 + 352), *(v0 + 312));
  v22 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  *(v0 + 544) = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  *(v0 + 552) = v24;
  *(v0 + 560) = (v23 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v24(v18, 1, 1, v22);
  sub_24F920B88();
  v25 = (*(v20 + 88))(v19, v21);
  if (v25 == *MEMORY[0x277D0D1B0])
  {
    v26 = *(v0 + 536);
    v27 = *(v0 + 288);
    v28 = *(v0 + 264);
    v29 = *(v0 + 248);
    v30 = *(v0 + 256);
    (*(*(v0 + 280) + 96))(v27, *(v0 + 272));
    (*(v30 + 32))(v28, v27, v29);
    v31 = sub_24F920F68();
    *(v0 + 568) = v32;
    if (v26)
    {
      v34 = *(v0 + 408);
      v33 = *(v0 + 416);
      v35 = *(v0 + 400);
      v36 = *(v0 + 368);
      v37 = *(v0 + 336);
      v38 = *(v0 + 312);
      v39 = *(v0 + 320);
      v40 = *(v0 + 304);
      (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
      sub_24E601704(v40, &qword_27F212A00, &qword_24F9A23B0);
      (*(v39 + 8))(v37, v38);
      sub_24E601704(v36, &qword_27F2265C8, &unk_24F97A280);
      (*(v34 + 8))(v33, v35);
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1((v0 + 64));

      v16 = *(v0 + 8);

      return v16();
    }

    v43 = *(v0 + 456);
    v44 = *(v0 + 464);
    v46 = *(v0 + 424);
    v45 = *(v0 + 432);
    *(v0 + 16) = v31;
    *(v0 + 24) = v32;
    *(v0 + 32) = v46;
    *(v0 + 40) = v45;
    *(v0 + 48) = v43;
    *(v0 + 56) = v44;

    v47 = swift_task_alloc();
    *(v0 + 576) = v47;
    *v47 = v0;
    v47[1] = sub_24EA6E2A0;
    v48 = *(v0 + 240);
    v49 = *(v0 + 200);

    return sub_24E648974(v48, (v0 + 16), v49);
  }

  else
  {
    if (v25 != *MEMORY[0x277D0D1B8])
    {
      (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    }

    v41 = type metadata accessor for ASKBagContract(0);
    v42 = swift_task_alloc();
    *(v0 + 592) = v42;
    *v42 = v0;
    v42[1] = sub_24EA6E540;

    return MEMORY[0x28217F228](v0 + 184, v41, v41);
  }
}

uint64_t sub_24EA6E2A0()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_24EA6F270;
  }

  else
  {
    v2 = sub_24EA6E40C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EA6E40C()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[38];
  v4 = v0[30];
  (*(v0[32] + 8))(v0[33], v0[31]);
  sub_24E601704(v3, &qword_27F212A00, &qword_24F9A23B0);
  sub_24EA6FE0C(v4, v3, type metadata accessor for Leaderboard);
  v1(v3, 0, 1, v2);
  v5 = type metadata accessor for ASKBagContract(0);
  v6 = swift_task_alloc();
  v0[74] = v6;
  *v6 = v0;
  v6[1] = sub_24EA6E540;

  return MEMORY[0x28217F228](v0 + 23, v5, v5);
}

uint64_t sub_24EA6E540()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_24EA6F440;
  }

  else
  {
    v2 = sub_24EA6E654;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EA6E654()
{
  v0[76] = v0[23];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720, &qword_24F940B20);
  v2 = swift_task_alloc();
  v0[77] = v2;
  *v2 = v0;
  v2[1] = sub_24EA6E718;

  return MEMORY[0x28217F228](v0 + 18, v1, v1);
}

uint64_t sub_24EA6E718()
{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = sub_24EA6F5F4;
  }

  else
  {
    v2 = sub_24EA6E82C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EA6E82C()
{
  v15 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v1);
  v14 = 34;
  *(v0 + 665) = (*(v2 + 8))(&v14, v1, v2) & 1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v3 = ASKBagContract.challengeAttemptOptions.getter();
  v4 = sub_24EF5C370(v3);
  v6 = v5;
  *(v0 + 632) = v4;
  *(v0 + 640) = v5;
  v7 = sub_24F920A98();
  *(v0 + 666) = v7 & 1;
  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_24F920BB8();
  *(v0 + 648) = v9;

  v10 = swift_task_alloc();
  *(v0 + 656) = v10;
  *v10 = v0;
  v10[1] = sub_24EA6E9A4;
  v11 = *(v0 + 232);
  v12 = *(v0 + 200);

  return sub_24E648D3C(v11, v9, v8, v12);
}

uint64_t sub_24EA6E9A4()
{

  if (v0)
  {

    v1 = sub_24EA6F7B4;
  }

  else
  {

    v1 = sub_24EA6EB38;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24EA6EB38()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  v40 = *(v0 + 304);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = type metadata accessor for ChallengeDefinitionDefaultOptions(0);
  v9 = *(v8 - 8);
  (*(v9 + 56))(v6, 0, 1, v8);
  (*(v4 + 16))(v2, v1, v3);
  sub_24E60169C(v40, v5, &qword_27F212A00, &qword_24F9A23B0);
  sub_24E60169C(v6, v7, &qword_27F2265B8, &qword_24F97A268);
  v10 = *(v9 + 48);
  v11 = v10(v7, 1, v8);
  v12 = *(v0 + 224);
  if (v11 == 1)
  {
    sub_24E601704(*(v0 + 224), &qword_27F2265B8, &qword_24F97A268);
    v41 = 0;
  }

  else
  {
    v41 = *v12;

    sub_24EA6FDB0(v12);
  }

  v13 = *(v0 + 216);
  sub_24E60169C(*(v0 + 232), v13, &qword_27F2265B8, &qword_24F97A268);
  v14 = v10(v13, 1, v8);
  v15 = *(v0 + 216);
  if (v14 == 1)
  {
    sub_24E601704(*(v0 + 216), &qword_27F2265B8, &qword_24F97A268);
    v16 = sub_24F920A88();
    v17 = *(v16 - 8);
    v18 = 1;
  }

  else
  {
    v19 = *(v0 + 208);
    v20 = *(v8 + 20);
    v21 = sub_24F920A88();
    v17 = *(v21 - 8);
    (*(v17 + 16))(v19, v15 + v20, v21);
    sub_24EA6FDB0(v15);
    v16 = v21;
    v18 = 0;
  }

  v33 = *(v0 + 665);
  v22 = *(v0 + 408);
  v39 = *(v0 + 416);
  v38 = *(v0 + 400);
  v37 = *(v0 + 368);
  v23 = *(v0 + 328);
  v36 = *(v0 + 336);
  v24 = *(v0 + 320);
  v35 = *(v0 + 312);
  v25 = *(v0 + 296);
  v34 = *(v0 + 304);
  v26 = *(v0 + 232);
  v27 = *(v0 + 208);
  v28 = *(v0 + 192);
  if (*(v0 + 666))
  {
    v29 = (v0 + 632);
  }

  else
  {
    v29 = (v0 + 640);
  }

  v30 = *v29;
  (*(v17 + 56))(v27, v18, 1, v16);
  sub_24EF52FB0(v23, v25, v33, v41, v30, v27, v28);

  sub_24E601704(v26, &qword_27F2265B8, &qword_24F97A268);
  sub_24E601704(v34, &qword_27F212A00, &qword_24F9A23B0);
  (*(v24 + 8))(v36, v35);
  sub_24E601704(v37, &qword_27F2265C8, &unk_24F97A280);
  (*(v22 + 8))(v39, v38);
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_24EA6EFC0()
{
  (*(v0[51] + 8))(v0[52], v0[50]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EA6F118()
{
  (*(v0[51] + 8))(v0[52], v0[50]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EA6F270()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[46];
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[40];
  v8 = v0[38];
  (*(v0[32] + 8))(v0[33], v0[31]);
  sub_24E601704(v8, &qword_27F212A00, &qword_24F9A23B0);
  (*(v7 + 8))(v5, v6);
  sub_24E601704(v4, &qword_27F2265C8, &unk_24F97A280);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24EA6F440()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[46];
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[40];
  sub_24E601704(v0[38], &qword_27F212A00, &qword_24F9A23B0);
  (*(v7 + 8))(v5, v6);
  sub_24E601704(v4, &qword_27F2265C8, &unk_24F97A280);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24EA6F5F4()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[46];
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[40];
  v8 = v0[38];

  sub_24E601704(v8, &qword_27F212A00, &qword_24F9A23B0);
  (*(v7 + 8))(v5, v6);
  sub_24E601704(v4, &qword_27F2265C8, &unk_24F97A280);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24EA6F7B4()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  v40 = *(v0 + 304);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = type metadata accessor for ChallengeDefinitionDefaultOptions(0);
  v9 = *(v8 - 8);
  (*(v9 + 56))(v6, 1, 1, v8);
  (*(v4 + 16))(v2, v1, v3);
  sub_24E60169C(v40, v5, &qword_27F212A00, &qword_24F9A23B0);
  sub_24E60169C(v6, v7, &qword_27F2265B8, &qword_24F97A268);
  v10 = *(v9 + 48);
  v11 = v10(v7, 1, v8);
  v12 = *(v0 + 224);
  if (v11 == 1)
  {
    sub_24E601704(*(v0 + 224), &qword_27F2265B8, &qword_24F97A268);
    v41 = 0;
  }

  else
  {
    v41 = *v12;

    sub_24EA6FDB0(v12);
  }

  v13 = *(v0 + 216);
  sub_24E60169C(*(v0 + 232), v13, &qword_27F2265B8, &qword_24F97A268);
  v14 = v10(v13, 1, v8);
  v15 = *(v0 + 216);
  if (v14 == 1)
  {
    sub_24E601704(*(v0 + 216), &qword_27F2265B8, &qword_24F97A268);
    v16 = sub_24F920A88();
    v17 = *(v16 - 8);
    v18 = 1;
  }

  else
  {
    v19 = *(v0 + 208);
    v20 = *(v8 + 20);
    v21 = sub_24F920A88();
    v17 = *(v21 - 8);
    (*(v17 + 16))(v19, v15 + v20, v21);
    sub_24EA6FDB0(v15);
    v16 = v21;
    v18 = 0;
  }

  v33 = *(v0 + 665);
  v22 = *(v0 + 408);
  v39 = *(v0 + 416);
  v38 = *(v0 + 400);
  v37 = *(v0 + 368);
  v23 = *(v0 + 328);
  v36 = *(v0 + 336);
  v24 = *(v0 + 320);
  v35 = *(v0 + 312);
  v25 = *(v0 + 296);
  v34 = *(v0 + 304);
  v26 = *(v0 + 232);
  v27 = *(v0 + 208);
  v28 = *(v0 + 192);
  if (*(v0 + 666))
  {
    v29 = (v0 + 632);
  }

  else
  {
    v29 = (v0 + 640);
  }

  v30 = *v29;
  (*(v17 + 56))(v27, v18, 1, v16);
  sub_24EF52FB0(v23, v25, v33, v41, v30, v27, v28);

  sub_24E601704(v26, &qword_27F2265B8, &qword_24F97A268);
  sub_24E601704(v34, &qword_27F212A00, &qword_24F9A23B0);
  (*(v24 + 8))(v36, v35);
  sub_24E601704(v37, &qword_27F2265C8, &unk_24F97A280);
  (*(v22 + 8))(v39, v38);
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_24EA6FC3C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24EA6C94C(a1, a2, a3);
}

uint64_t sub_24EA6FCEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C8, &unk_24F97A280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EA6FD5C()
{
  result = qword_27F2265D0;
  if (!qword_27F2265D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2265D0);
  }

  return result;
}

uint64_t sub_24EA6FDB0(uint64_t a1)
{
  v2 = type metadata accessor for ChallengeDefinitionDefaultOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EA6FE0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EA6FE88()
{
  result = qword_27F2265D8;
  if (!qword_27F2265D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2265D8);
  }

  return result;
}

__n128 MarketingItemRequestInfo.__allocating_init(serviceType:placement:seed:offerHints:clientOptions:metricsOverlay:purchaseSuccessAction:purchaseFailureAction:carrierLinkSuccessAction:carrierLinkFailureAction:onDismissalAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, __int128 a10, __n128 a12, uint64_t a13)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 48) = *a5;
  *(v20 + 64) = a6;
  *(v20 + 72) = a7;
  *(v20 + 80) = a8;
  result = a12;
  *(v20 + 88) = a10;
  *(v20 + 104) = a12;
  *(v20 + 120) = a13;
  *(v20 + 128) = a9;
  return result;
}

uint64_t MarketingItemRequestInfo.init(serviceType:placement:seed:offerHints:clientOptions:metricsOverlay:purchaseSuccessAction:purchaseFailureAction:carrierLinkSuccessAction:carrierLinkFailureAction:onDismissalAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, uint64_t a12)
{
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = *a5;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  *(v12 + 80) = a8;
  *(v12 + 88) = a10;
  *(v12 + 104) = a11;
  *(v12 + 120) = a12;
  *(v12 + 128) = a9;
  return v12;
}

uint64_t MarketingItemRequestInfo.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MarketingItemRequestInfo.init(deserializing:using:)(a1, a2);
  return v4;
}

void *MarketingItemRequestInfo.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v88 = a2;
  v91 = v4;
  v6 = *v4;
  v85 = v3;
  v86 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v82 = &v79 - v10;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v83 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = &v79 - v15;
  MEMORY[0x28223BE20](v16);
  v87 = &v79 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v79 - v25;
  v27 = a1;
  sub_24F928398();
  v28 = sub_24F928348();
  v30 = v29;
  v33 = *(v12 + 8);
  v32 = v12 + 8;
  v31 = v33;
  v33(v26, v11);
  v90 = v33;
  if (!v30)
  {
    v55 = 0xE900000000000074;
    v56 = 0x6E656D6563616C70;
    v37 = v11;
LABEL_10:
    v57 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v58 = v56;
    v58[1] = v55;
    v58[2] = v86;
    (*(*(v57 - 8) + 104))(v58, *MEMORY[0x277D22530], v57);
    swift_willThrow();
    v59 = sub_24F9285B8();
    (*(*(v59 - 8) + 8))(v88, v59);
    v90(v27, v37);
    type metadata accessor for MarketingItemRequestInfo();
    v60 = v91;
    swift_deallocPartialClassInstance();
    return v60;
  }

  v80 = v28;
  sub_24F928398();
  v34 = sub_24F928348();
  v36 = v35;
  v31(v23, v11);
  v37 = v11;
  if (!v36)
  {
    v55 = 0xEB00000000657079;
    v56 = 0x5465636976726573;

    goto LABEL_10;
  }

  v38 = v91;
  v91[2] = v34;
  v38[3] = v36;
  v39 = v38;
  v38[4] = v80;
  v38[5] = v30;
  v40 = v27;
  sub_24F928398();
  v41 = sub_24F928348();
  v43 = v42;
  v31(v20, v37);
  if (v43)
  {
    v44 = v41;
  }

  else
  {
    v44 = 0;
  }

  v39[6] = v44;
  v39[7] = v43;
  v45 = v87;
  sub_24F928398();
  v46 = sub_24F928348();
  v48 = v47;
  v31(v45, v37);
  v39[8] = v46;
  v39[9] = v48;
  v49 = v81;
  sub_24F928398();
  v50 = v82;
  sub_24F9281F8();
  v86 = v37;
  v89 = v32;
  v31(v49, v37);
  v51 = sub_24F928E68();
  v52 = *(v51 - 8);
  v81 = *(v52 + 48);
  v53 = v31;
  if ((v81)(v50, 1, v51) == 1)
  {
    sub_24E9182E0(v50);
    v54 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F24E870, &qword_24F967D90);
    v54 = sub_24F928E48();
    (*(v52 + 8))(v50, v51);
  }

  v39[10] = v54;
  v61 = v83;
  v62 = v84;
  sub_24F928398();
  sub_24F9281F8();
  v53(v61, v86);
  v63 = v53;
  if ((v81)(v62, 1, v51) == 1)
  {
    sub_24E9182E0(v62);
    v64 = 0;
  }

  else
  {
    v64 = sub_24F928E48();
    (*(v52 + 8))(v62, v51);
  }

  v39[16] = v64;
  v84 = type metadata accessor for Action(0);
  v65 = v87;
  sub_24F928398();
  v66 = v88;
  v67 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v88);
  v68 = v86;
  v63(v65, v86);
  v39[11] = v67;
  v79 = v40;
  sub_24F928398();
  v69 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v66);
  v63(v65, v68);
  v39[12] = v69;
  sub_24F928398();
  v70 = v66;
  v71 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v66);
  v72 = v90;
  v90(v65, v68);
  v91[13] = v71;
  v73 = v79;
  sub_24F928398();
  v74 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v70);
  v72(v65, v68);
  v91[14] = v74;
  sub_24F928398();
  v60 = v91;
  v75 = static Action.tryToMakeInstance(byDeserializing:using:)(v65, v70);
  v76 = sub_24F9285B8();
  (*(*(v76 - 8) + 8))(v70, v76);
  v77 = v90;
  v90(v73, v68);
  v77(v65, v68);
  v60[15] = v75;
  return v60;
}

uint64_t MarketingItemRequestInfo.serviceType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MarketingItemRequestInfo.placement.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double MarketingItemRequestInfo.seed.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;

  return result;
}

uint64_t MarketingItemRequestInfo.offerHints.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void *MarketingItemRequestInfo.deinit()
{

  return v0;
}

uint64_t MarketingItemRequestInfo.__deallocating_deinit()
{
  MarketingItemRequestInfo.deinit();

  return swift_deallocClassInstance();
}

void *sub_24EA70AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MarketingItemRequestInfo();
  v7 = swift_allocObject();
  result = MarketingItemRequestInfo.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t TodayPage.__allocating_init(shelfBasedPageContents:title:titleDetail:shortTitleDetail:longTitle:tabTitle:nextPage:onboardingCardIds:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v83 = a6;
  v84 = a7;
  v86 = a8;
  v87 = a17;
  v90 = a16;
  v88 = a18;
  v89 = a15;
  v85 = a14;
  v81 = a5;
  v82 = a12;
  v79 = a4;
  v80 = a11;
  v77 = a3;
  v78 = a10;
  v76 = a9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v20 - 8);
  v75 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v74 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v74 - v26;
  v28 = sub_24F928818();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds) = MEMORY[0x277D84FA0];
  *(v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfOrdering) = a1;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfMapping) = a2;
  v34 = (v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_title);
  v35 = v79;
  *v34 = v77;
  v34[1] = v35;
  v36 = (v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_titleDetail);
  v38 = v83;
  v37 = v84;
  *v36 = v81;
  v36[1] = v38;
  v39 = (v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shortTitleDetail);
  *v39 = v37;
  v39[1] = v86;
  v40 = (v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_longTitle);
  v41 = v78;
  *v40 = v76;
  v40[1] = v41;
  v42 = (v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_tabTitle);
  v43 = v82;
  *v42 = v80;
  v42[1] = v43;
  v86 = a13;
  sub_24E60169C(a13, v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_onboardingCardIds) = v85;

  sub_24EA71A2C(v44);
  v46 = v45;
  v47 = v28;
  v48 = v27;

  swift_beginAccess();
  *(v32 + v33) = v46;
  v49 = (v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_widgetKind);
  *v49 = 0;
  v49[1] = 0;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_dateRelevance) = MEMORY[0x277D84F90];
  v50 = (v32 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_feedPreviewUrl);
  *v50 = 0;
  v50[1] = 0;
  v84 = v29;
  v51 = *(v29 + 16);
  v51(v31, v90, v47);
  v52 = v88;
  sub_24E60169C(v88, v27, &qword_27F2218B0, &unk_24F975980);
  *(v32 + 16) = v89;
  v85 = v47;
  v51((v32 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v31, v47);
  *(v32 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v87;
  sub_24E60169C(v27, v24, &qword_27F2218B0, &unk_24F975980);
  v53 = sub_24F9285B8();
  v54 = *(v53 - 8);
  v55 = v24;
  v56 = v24;
  v57 = *(v54 + 48);
  if (v57(v56, 1, v53) == 1)
  {
    sub_24E601704(v52, &qword_27F2218B0, &unk_24F975980);
    v58 = v85;
    v59 = *(v84 + 8);
    v59(v90, v85);
    sub_24E601704(v86, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v48, &qword_27F2218B0, &unk_24F975980);
    v59(v31, v58);
    v60 = v55;
  }

  else
  {
    v83 = v55;
    v81 = v31;
    v61 = qword_27F2105F0;

    if (v61 != -1)
    {
      swift_once();
    }

    v82 = v48;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v62, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v63 = v91;
    if (v91)
    {
    }

    v64 = *(v54 + 8);
    v64(v83, v53);
    v65 = v75;
    if (!v63)
    {

      sub_24E601704(v88, &qword_27F2218B0, &unk_24F975980);
      v69 = v85;
      v70 = *(v84 + 8);
      v70(v90, v85);
      sub_24E601704(v86, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v82, &qword_27F2218B0, &unk_24F975980);
      v70(v81, v69);
      return v32;
    }

    v66 = v82;
    sub_24E60169C(v82, v75, &qword_27F2218B0, &unk_24F975980);
    if (v57(v65, 1, v53) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v88, &qword_27F2218B0, &unk_24F975980);
      v71 = v85;
      v72 = *(v84 + 8);
      v72(v90, v85);
      sub_24E601704(v86, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v66, &qword_27F2218B0, &unk_24F975980);
      v72(v81, v71);
      v64(v65, v53);
      return v32;
    }

    sub_24E601704(v88, &qword_27F2218B0, &unk_24F975980);
    v67 = v85;
    v68 = *(v84 + 8);
    v68(v90, v85);
    sub_24E601704(v86, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v66, &qword_27F2218B0, &unk_24F975980);
    v68(v81, v67);
    v60 = v65;
  }

  sub_24E601704(v60, &qword_27F2218B0, &unk_24F975980);
  return v32;
}

uint64_t TodayPage.init(shelfBasedPageContents:title:titleDetail:shortTitleDetail:longTitle:tabTitle:nextPage:onboardingCardIds:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v82 = a6;
  v83 = a7;
  v85 = a8;
  v86 = a17;
  v89 = a16;
  v87 = a18;
  v88 = a15;
  v84 = a14;
  v80 = a5;
  v81 = a12;
  v78 = a4;
  v79 = a11;
  v76 = a9;
  v77 = a10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v23 - 8);
  v75 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v75 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v75 - v29;
  v31 = sub_24F928818();
  MEMORY[0x28223BE20](v31);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds) = MEMORY[0x277D84FA0];
  *(v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfOrdering) = a1;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfMapping) = a2;
  v35 = (v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_title);
  v36 = v78;
  *v35 = a3;
  v35[1] = v36;
  v37 = (v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_titleDetail);
  v39 = v82;
  v38 = v83;
  *v37 = v80;
  v37[1] = v39;
  v40 = (v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shortTitleDetail);
  *v40 = v38;
  v40[1] = v85;
  v41 = (v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_longTitle);
  v42 = v77;
  *v41 = v76;
  v41[1] = v42;
  v44 = v43;
  v45 = (v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_tabTitle);
  v46 = v81;
  *v45 = v79;
  v45[1] = v46;
  v85 = a13;
  sub_24E60169C(a13, v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_onboardingCardIds) = v84;

  sub_24EA71A2C(v47);
  v49 = v48;
  v50 = v31;
  v51 = v30;

  swift_beginAccess();
  *(v19 + v34) = v49;

  v52 = (v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_widgetKind);
  *v52 = 0;
  v52[1] = 0;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_dateRelevance) = MEMORY[0x277D84F90];
  v53 = (v19 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_feedPreviewUrl);
  *v53 = 0;
  v53[1] = 0;
  v83 = v44;
  v54 = *(v44 + 16);
  v54(v33, v89, v50);
  v55 = v87;
  sub_24E60169C(v87, v51, &qword_27F2218B0, &unk_24F975980);
  *(v19 + 16) = v88;
  v84 = v33;
  v82 = v50;
  v54((v19 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v33, v50);
  *(v19 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v86;
  sub_24E60169C(v51, v27, &qword_27F2218B0, &unk_24F975980);
  v56 = sub_24F9285B8();
  v57 = *(v56 - 8);
  v58 = *(v57 + 48);
  if (v58(v27, 1, v56) == 1)
  {
    sub_24E601704(v55, &qword_27F2218B0, &unk_24F975980);
    v59 = v82;
    v60 = *(v83 + 8);
    v60(v89, v82);
    sub_24E601704(v85, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v51, &qword_27F2218B0, &unk_24F975980);
    v60(v84, v59);
    v61 = v27;
  }

  else
  {
    v81 = v27;
    v62 = qword_27F2105F0;

    if (v62 != -1)
    {
      swift_once();
    }

    v80 = v51;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v63, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v64 = v90;
    if (v90)
    {
    }

    v65 = *(v57 + 8);
    v65(v81, v56);
    v66 = v75;
    if (!v64)
    {

      sub_24E601704(v87, &qword_27F2218B0, &unk_24F975980);
      v70 = v82;
      v71 = *(v83 + 8);
      v71(v89, v82);
      sub_24E601704(v85, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v80, &qword_27F2218B0, &unk_24F975980);
      v71(v84, v70);
      return v19;
    }

    v67 = v80;
    sub_24E60169C(v80, v75, &qword_27F2218B0, &unk_24F975980);
    if (v58(v66, 1, v56) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v87, &qword_27F2218B0, &unk_24F975980);
      v72 = v82;
      v73 = *(v83 + 8);
      v73(v89, v82);
      sub_24E601704(v85, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v67, &qword_27F2218B0, &unk_24F975980);
      v73(v84, v72);
      v65(v66, v56);
      return v19;
    }

    sub_24E601704(v87, &qword_27F2218B0, &unk_24F975980);
    v68 = v82;
    v69 = *(v83 + 8);
    v69(v89, v82);
    sub_24E601704(v85, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v67, &qword_27F2218B0, &unk_24F975980);
    v69(v84, v68);
    v61 = v66;
  }

  sub_24E601704(v61, &qword_27F2218B0, &unk_24F975980);
  return v19;
}

void sub_24EA71A2C(uint64_t a1)
{
  v26 = MEMORY[0x277D84FA0];
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v15 = v5;
  v16 = v1;
  v7 = 0;
  if (v4)
  {
    while (1)
    {
LABEL_6:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = *(*(a1 + 56) + ((v6 << 9) | (8 * v8)));
      LOBYTE(v23) = *(v9 + 16);
      if (Shelf.ContentType.rawValue.getter() == 0x7261437961646F74 && v10 == 0xE900000000000064)
      {

LABEL_10:
        v12 = *(v9 + 24);
        v13 = *(v12 + 16);
        swift_bridgeObjectRetain_n();
        v14 = 0;
        while (1)
        {
          if (v14 == v13)
          {
            v25 = 0;
            v14 = v13;
            v23 = 0u;
            v24 = 0u;
          }

          else
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

            if (v14 >= *(v12 + 16))
            {
              goto LABEL_28;
            }

            sub_24E615E00(v12 + 32 + 40 * v14++, &v23);
          }

          v21[0] = v23;
          v21[1] = v24;
          v22 = v25;
          if (!*(&v24 + 1))
          {
            break;
          }

          sub_24E612C80(v21, v20);
          sub_24E615E00(v20, v18);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
          type metadata accessor for TodayCard(0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v19 = 0;
          }

          __swift_destroy_boxed_opaque_existential_1(v20);
          if (v19)
          {
            sub_24ED7CE20(&v23, *(*(v19 + 64) + 16));
          }
        }

        swift_bridgeObjectRelease_n();

        v5 = v15;
        v1 = v16;
        v7 = v6;
        if (!v4)
        {
          break;
        }
      }

      else
      {
        v11 = sub_24F92CE08();

        if (v11)
        {
          goto LABEL_10;
        }

        v7 = v6;
        if (!v4)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v6 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v6 >= v5)
    {

      return;
    }

    v4 = *(v1 + 8 * v6);
    ++v7;
    if (v4)
    {
      goto LABEL_6;
    }
  }

LABEL_29:
  __break(1u);
}

char *TodayPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v150 = a2;
  v155 = a1;
  v145 = *v2;
  v3 = sub_24F9285B8();
  v151 = *(v3 - 8);
  v152 = v3;
  MEMORY[0x28223BE20](v3);
  v140 = v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v141 = (v124 - v6);
  MEMORY[0x28223BE20](v7);
  v148 = v124 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v136 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = v124 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v124 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v137 = v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v135 = v124 - v20;
  MEMORY[0x28223BE20](v21);
  v133 = v124 - v22;
  MEMORY[0x28223BE20](v23);
  v132 = v124 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v124 - v26;
  v28 = sub_24F92AC28();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v130 = v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v129 = v124 - v32;
  MEMORY[0x28223BE20](v33);
  v131 = v124 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = v124 - v36;
  v38 = OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds;
  v142 = v2;
  *&v2[OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds] = MEMORY[0x277D84FA0];
  sub_24F928398();
  sub_24F9282B8();
  v39 = v28;
  v138 = v17;
  v41 = *(v17 + 8);
  v40 = v17 + 8;
  v42 = v27;
  v43 = v41;
  v44 = v16;
  v41(v42, v16);
  v143 = v29[6];
  v144 = v29 + 6;
  if (v143(v15, 1, v39) == 1)
  {
    sub_24E601704(v15, &qword_27F2213B0, &qword_24F965EC0);
    v45 = sub_24F92AC38();
    sub_24EA74324(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v46 = 0x7365766C656873;
    v47 = v145;
    v46[1] = 0xE700000000000000;
    v46[2] = v47;
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D22530], v45);
    swift_willThrow();
    (*(v151 + 8))(v150, v152);
    v43(v155, v16);

    type metadata accessor for TodayPage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v142;
    v127 = v38;
    v145 = v43;
    v146 = v40;
    v139 = v44;
    v49 = v29[4];
    v126 = v29 + 4;
    v125 = v49;
    v49(v37, v15, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    v50 = swift_allocObject();
    *(v50 + 16) = MEMORY[0x277D84F90];
    *&v153 = v50;
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v51, qword_27F22D8D8);
    v52 = v148;
    sub_24F928528();

    v53 = v29[2];
    v128 = v37;
    v53(v131, v37, v39);
    v54 = *(v151 + 16);
    v147 = v39;
    v124[1] = v151 + 16;
    v124[0] = v54;
    v54(v141, v52, v152);
    type metadata accessor for Shelf(0);
    sub_24EA74324(&qword_27F2265E0, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    v55 = sub_24F92B6A8();
    v56 = sub_24EEF0A68(v55);
    v58 = v57;

    v59 = v48;
    *&v48[OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfOrdering] = v56;
    *&v48[OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfMapping] = v58;
    v60 = v132;
    sub_24F928398();
    v61 = sub_24F928348();
    v63 = v62;
    v64 = v139;
    v141 = v29;
    v65 = v145;
    v145(v60, v139);
    v66 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_title];
    *v66 = v61;
    v66[1] = v63;
    sub_24F928398();
    v67 = sub_24F928348();
    v69 = v68;
    v65(v60, v64);
    v70 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_titleDetail];
    *v70 = v67;
    v70[1] = v69;
    sub_24F928398();
    v71 = sub_24F928348();
    v73 = v72;
    v65(v60, v64);
    v74 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_shortTitleDetail];
    *v74 = v71;
    v74[1] = v73;
    sub_24F928398();
    v75 = sub_24F928348();
    v77 = v76;
    v65(v60, v64);
    v78 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_longTitle];
    *v78 = v75;
    v78[1] = v77;
    sub_24F928398();
    v79 = sub_24F928348();
    v81 = v80;
    v65(v60, v64);
    v82 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_tabTitle];
    *v82 = v79;
    v82[1] = v81;
    sub_24F928398();
    sub_24F928368();
    v65(v60, v64);
    v83 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_nextPage];
    v84 = v154;
    *v83 = v153;
    *(v83 + 1) = v84;
    v85 = v133;
    sub_24F928398();
    v86 = v134;
    sub_24F9282B8();
    v65(v85, v64);
    v87 = v147;
    v88 = v143(v86, 1, v147);
    v89 = v141;
    if (v88 == 1)
    {
      sub_24E601704(v86, &qword_27F2213B0, &qword_24F965EC0);
      v90 = MEMORY[0x277D84F90];
    }

    else
    {
      v91 = v129;
      v125(v129, v86, v87);
      v92 = v149;
      v90 = sub_24F92ABB8();
      v149 = v92;
      v89[1](v91, v87);
    }

    v93 = v127;
    *&v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_onboardingCardIds] = v90;
    swift_beginAccess();

    sub_24EA71A2C(v94);
    v96 = v95;

    swift_beginAccess();
    *&v93[v59] = v96;

    sub_24F928398();
    v97 = sub_24F928348();
    v99 = v98;
    v100 = v145;
    v145(v60, v64);
    v101 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_widgetKind];
    *v101 = v97;
    v101[1] = v99;
    v102 = v135;
    sub_24F928398();
    v103 = v136;
    sub_24F9282B8();
    v100(v102, v64);
    v104 = v147;
    if (v143(v103, 1, v147) == 1)
    {
      sub_24E601704(v103, &qword_27F2213B0, &qword_24F965EC0);
      v105 = MEMORY[0x277D84F90];
    }

    else
    {
      v106 = v130;
      v125(v130, v103, v104);
      sub_24EA7436C();
      v107 = v149;
      v105 = sub_24F92ABB8();
      v149 = v107;
      v141[1](v106, v104);
    }

    v108 = v151;
    *&v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_dateRelevance] = v105;
    v109 = v155;
    sub_24F928398();
    v110 = sub_24F928348();
    v112 = v111;
    v113 = v139;
    v114 = v145;
    v145(v60, v139);
    v115 = &v59[OBJC_IVAR____TtC12GameStoreKit9TodayPage_feedPreviewUrl];
    *v115 = v110;
    v115[1] = v112;
    v116 = v137;
    (*(v138 + 16))(v137, v109, v113);
    v117 = v140;
    v118 = v150;
    v119 = v152;
    (v124[0])(v140, v150, v152);
    v120 = v149;
    v121 = BasePage.init(deserializing:using:)(v116, v117);
    if (v120)
    {
      v38 = *(v108 + 8);
      (v38)(v118, v119);
      v114(v109, v113);
      (v38)(v148, v119);
    }

    else
    {
      v38 = v121;
      v122 = *(v108 + 8);
      v122(v118, v119);
      v114(v109, v113);
      v122(v148, v119);
    }

    v141[1](v128, v147);
  }

  return v38;
}

uint64_t sub_24EA72BF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = sub_24F91F648();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  sub_24F928398();
  sub_24F928288();
  v18 = *(v9 + 8);
  v28 = v8;
  v18(v13, v8);
  v31 = v15;
  v19 = *(v15 + 48);
  if (v19(v7, 1, v14) == 1)
  {
    result = sub_24E601704(v7, &unk_27F22EC30, &qword_24F939880);
    v21 = 0;
  }

  else
  {
    (*(v31 + 32))(v17, v7, v14);
    v22 = v27;
    sub_24F928398();
    v23 = v30;
    sub_24F928288();
    v18(v22, v28);
    v24 = sub_24F91F578();
    if (v19(v23, 1, v14) == 1)
    {
      v25 = 0;
      v26 = v31;
    }

    else
    {
      v25 = sub_24F91F578();
      v26 = v31;
      (*(v31 + 8))(v23, v14);
    }

    v21 = [objc_allocWithZone(MEMORY[0x277CD3B88]) initWithStartDate:v24 endDate:v25];

    result = (*(v26 + 8))(v17, v14);
  }

  *v32 = v21;
  return result;
}

uint64_t TodayPage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_title);

  return v1;
}

uint64_t TodayPage.titleDetail.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_titleDetail);

  return v1;
}

uint64_t TodayPage.shortTitleDetail.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shortTitleDetail);

  return v1;
}

uint64_t TodayPage.longTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_longTitle);

  return v1;
}

uint64_t TodayPage.tabTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_tabTitle);

  return v1;
}

uint64_t sub_24EA7310C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

double sub_24EA7317C(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24EA731C0(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfMapping;
  swift_beginAccess();

  sub_24F159E30(v4, a1);
  v6 = v5;

  *(v1 + v3) = v6;
}

uint64_t sub_24EA7324C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v5 - 8);
  v92 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v92 - v8;
  MEMORY[0x28223BE20](v9);
  v106 = &v92 - v10;
  MEMORY[0x28223BE20](v11);
  v112 = &v92 - v12;
  v108 = sub_24F928818();
  v113 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = &v92 - v15;
  v16 = OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfOrdering;
  swift_beginAccess();
  v17 = *(a1 + v16);
  v18 = MEMORY[0x277D84F90];
  v116[0] = MEMORY[0x277D84F90];
  v19 = *(v17 + 16);
  v20 = OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfMapping;

  swift_beginAccess();
  if (!v19)
  {
    goto LABEL_14;
  }

  v21 = 0;
  v22 = v17 + 32;
  v109 = v19 - 1;
  v111 = v4;
  v110 = v17 + 32;
  do
  {
    v23 = v22 + 40 * v21;
    v24 = v21;
    while (1)
    {
      if (v24 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      sub_24E65864C(v23, v117);
      if (*(*(a1 + v20) + 16))
      {
        break;
      }

LABEL_4:
      ++v24;
      sub_24E6585F8(v117);
      v23 += 40;
      if (v19 == v24)
      {
        v4 = v111;
        goto LABEL_14;
      }
    }

    sub_24E76D934(v117);
    if ((v25 & 1) == 0)
    {

      goto LABEL_4;
    }

    v26 = sub_24E6585F8(v117);
    MEMORY[0x253050F00](v26);
    if (*((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v21 = v24 + 1;
    sub_24F92B638();
    v18 = v116[0];
    v4 = v111;
    v22 = v110;
  }

  while (v109 != v24);
LABEL_14:

  v27 = sub_24EEF0A68(v18);
  v29 = v28;

  v95 = sub_24EEF0D44(v27, v29, 1, v4, &protocol witness table for TodayPage);
  v31 = v30;

  v32 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_title);
  v33 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_title + 8);
  v34 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_titleDetail);
  v35 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_titleDetail + 8);
  v36 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shortTitleDetail + 8);
  v98 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shortTitleDetail);
  v111 = v36;
  v37 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_longTitle + 8);
  v97 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_longTitle);
  v110 = v37;
  v38 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_tabTitle + 8);
  v96 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_tabTitle);
  v109 = v38;
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_nextPage, v117, &qword_27F2129B0, &unk_24F945320);
  v39 = *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_onboardingCardIds);
  v40 = *(v2 + 16);
  v102 = v32;
  v101 = v33;
  v100 = v34;
  v99 = v35;
  if (v40)
  {
    v41 = *(a1 + 16);

    v103 = sub_24ED64DBC(v41);
  }

  else
  {
    v103 = *(a1 + 16);
  }

  v43 = v113;
  v42 = v114;
  v44 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v45 = *(v43 + 16);
  v46 = v42;
  v47 = v108;
  v45(v46, v2 + v44, v108);
  v94 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
  v48 = sub_24F9285B8();
  v104 = *(v48 - 8);
  v49 = v112;
  (*(v104 + 56))(v112, 1, 1, v48);
  type metadata accessor for TodayPage(0);
  v2 = swift_allocObject();
  v50 = OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_allCardMediaKinds) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfOrdering) = v95;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shelfMapping) = v31;
  v51 = (v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_title);
  v52 = v101;
  *v51 = v102;
  v51[1] = v52;
  v53 = (v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_titleDetail);
  v54 = v99;
  *v53 = v100;
  v53[1] = v54;
  v55 = (v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_shortTitleDetail);
  v56 = v111;
  *v55 = v98;
  v55[1] = v56;
  v57 = (v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_longTitle);
  v58 = v110;
  *v57 = v97;
  v57[1] = v58;
  v59 = (v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_tabTitle);
  v60 = v109;
  *v59 = v96;
  v59[1] = v60;
  sub_24E60169C(v117, v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_onboardingCardIds) = v39;

  sub_24EA71A2C(v61);
  v63 = v62;

  swift_beginAccess();
  *(v2 + v50) = v63;
  v64 = v114;
  v65 = (v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_widgetKind);
  *v65 = 0;
  v65[1] = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_dateRelevance) = MEMORY[0x277D84F90];
  v66 = (v2 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_feedPreviewUrl);
  *v66 = 0;
  v66[1] = 0;
  v67 = v107;
  v45(v107, v64, v47);
  v68 = v49;
  v69 = v106;
  sub_24E60169C(v68, v106, &qword_27F2218B0, &unk_24F975980);
  *(v2 + 16) = v103;
  v45((v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v67, v47);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v94;
  v70 = v105;
  sub_24E60169C(v69, v105, &qword_27F2218B0, &unk_24F975980);
  v71 = *(v104 + 48);
  v93 = v48;
  if (v71(v70, 1, v48) == 1)
  {

    sub_24E601704(v69, &qword_27F2218B0, &unk_24F975980);
    v72 = *(v113 + 8);
    v72(v67, v47);
    sub_24E601704(v112, &qword_27F2218B0, &unk_24F975980);
    v72(v64, v47);
    sub_24E601704(v117, &qword_27F2129B0, &unk_24F945320);
    v73 = v70;
    v74 = &qword_27F2218B0;
    v75 = &unk_24F975980;
    goto LABEL_26;
  }

  v111 = v71;
  v76 = qword_27F2105F0;

  if (v76 != -1)
  {
LABEL_30:
    swift_once();
  }

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
  __swift_project_value_buffer(v77, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
  sub_24F9285C8();
  v78 = v115;
  v79 = v92;
  v80 = v112;
  v81 = v106;
  v82 = v104;
  if (v115)
  {
  }

  v83 = *(v82 + 8);
  v84 = v93;
  v83(v105, v93);
  if (v78)
  {
    sub_24E60169C(v81, v79, &qword_27F2218B0, &unk_24F975980);
    if (v111(v79, 1, v84) == 1)
    {

      sub_24E601704(v81, &qword_27F2218B0, &unk_24F975980);
      v85 = *(v113 + 8);
      v86 = v108;
      v85(v107, v108);
      sub_24E601704(v80, &qword_27F2218B0, &unk_24F975980);
      v85(v114, v86);
      sub_24E601704(v117, &qword_27F2129B0, &unk_24F945320);
      v73 = v79;
      v74 = &qword_27F2218B0;
      v75 = &unk_24F975980;
      goto LABEL_26;
    }

    sub_24ECDF110();

    sub_24E601704(v81, &qword_27F2218B0, &unk_24F975980);
    v90 = *(v113 + 8);
    v91 = v108;
    v90(v107, v108);
    sub_24E601704(v80, &qword_27F2218B0, &unk_24F975980);
    v90(v114, v91);
    sub_24E601704(v117, &qword_27F2129B0, &unk_24F945320);
    v83(v79, v93);
  }

  else
  {

    sub_24E601704(v81, &qword_27F2218B0, &unk_24F975980);
    v87 = *(v113 + 8);
    v88 = v108;
    v87(v107, v108);
    sub_24E601704(v80, &qword_27F2218B0, &unk_24F975980);
    v87(v114, v88);
    v74 = &qword_27F2129B0;
    v75 = &unk_24F945320;
    v73 = v117;
LABEL_26:
    sub_24E601704(v73, v74, v75);
  }

  return v2;
}

uint64_t TodayPage.widgetKind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_widgetKind);

  return v1;
}

uint64_t TodayPage.feedPreviewUrl.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_feedPreviewUrl);

  return v1;
}

uint64_t sub_24EA73F20()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_nextPage, &qword_27F2129B0, &unk_24F945320);
}

uint64_t TodayPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayPage_nextPage, &qword_27F2129B0, &unk_24F945320);

  return v0;
}