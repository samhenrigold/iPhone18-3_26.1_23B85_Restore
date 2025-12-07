uint64_t sub_2759A68E4()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_2759A69CC(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_2759A6AA0(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

unint64_t sub_2759A6B84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2759A7B00(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2759A6BB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE900000000000074;
  v6 = 0x7865546567617375;
  v7 = 0xE800000000000000;
  v8 = 0x6449656C646E7562;
  if (v2 != 3)
  {
    v8 = 0x616D696E41657375;
    v7 = 0xEC0000006E6F6974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6554726564616568;
    v3 = 0xEA00000000007478;
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

uint64_t sub_2759A6C58()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7865546567617375;
  v4 = 0x6449656C646E7562;
  if (v1 != 3)
  {
    v4 = 0x616D696E41657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6554726564616568;
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

unint64_t sub_2759A6CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2759A7B00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2759A6D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759A788C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2759A6D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759A788C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_2759A6D98(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v40 - v4;
  v53 = sub_2759B8C48();
  v50 = *(v53 - 8);
  v5 = MEMORY[0x28223BE20](v53);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v48 = &v40 - v8;
  MEMORY[0x28223BE20](v7);
  v49 = &v40 - v9;
  v10 = sub_2759B85A8();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  v51 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12DE0, &qword_2759D01C8);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v13 = &v40 - v12;
  v14 = type metadata accessor for DrilldownThermometerView(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 2) = MEMORY[0x277D84F90];
  sub_2759B8C08();
  sub_2759A79B0(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v17 = sub_2759B9168();
  *(v16 + 3) = v17;
  *(v16 + 4) = v18;
  KeyPath = swift_getKeyPath();
  *(v16 + 5) = KeyPath;
  v16[48] = 0;
  v20 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2759A788C(v20, v21, v22);
  v23 = v55;
  sub_2759BAC18();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = v51;
    v42 = KeyPath;
    v55 = v17;
    v25 = v53;
    v60 = 0;
    v26 = sub_2759BAA58();
    v28 = v27;
    v41 = v13;
    if (!v27)
    {
      sub_2759B8598();
      v40 = sub_2759B8588();
      v30 = v29;
      (*(v46 + 8))(v24, v47);
      v28 = v30;
      v26 = v40;
    }

    v31 = v25;
    *v16 = v26;
    *(v16 + 1) = v28;
    v47 = v28;
    v59 = 1;
    sub_2759A79B0(&qword_280A0E8C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    v32 = v49;
    v33 = v31;
    v34 = v41;
    sub_2759BAA78();
    v51 = a1;
    v46 = v14;
    v35 = *(v50 + 32);
    v35(&v16[*(v14 + 32)], v32, v33);
    v58 = 2;
    v36 = v48;
    v49 = 0;
    sub_2759BAA78();
    v35(&v16[*(v46 + 36)], v36, v33);
    v57 = 3;
    v37 = v45;
    sub_2759BAA78();
    v38 = v52;
    v35(&v16[*(v46 + 40)], v37, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
    v56 = 4;
    sub_2758EA064();
    v39 = v44;
    sub_2759BAA68();
    (*(v38 + 8))(v34, v54);
    sub_27595C9E8(v39, &v16[*(v46 + 44)]);
    sub_2759A78E0(v16, v43);
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_2759A7944(v16);
  }
}

uint64_t sub_2759A750C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759A79B0(&qword_280A11068, type metadata accessor for DrilldownThermometerView, &unk_2759D0148);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2759A7590(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759A79B0(&qword_280A12DC0, type metadata accessor for DrilldownThermometerView, &unk_2759D00F8);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2759A760C(uint64_t a1)
{
  v2 = sub_2759A79B0(&qword_280A12DC0, type metadata accessor for DrilldownThermometerView, &unk_2759D00F8);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2759A7688(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759A79B0(&qword_280A12DD8, type metadata accessor for DrilldownThermometerView, &unk_2759D00C0);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2759A7744(uint64_t a1, uint64_t a2)
{
  sub_2759A79B0(&qword_280A11068, type metadata accessor for DrilldownThermometerView, &unk_2759D0148);
  sub_2759A79B0(&qword_280A12DC0, type metadata accessor for DrilldownThermometerView, &unk_2759D00F8);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2759A788C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12DE8;
  if (!qword_280A12DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12DE8);
  }

  return result;
}

uint64_t sub_2759A78E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrilldownThermometerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2759A7944(uint64_t a1)
{
  v2 = type metadata accessor for DrilldownThermometerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2759A79B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2759A79FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12DF8;
  if (!qword_280A12DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12DF8);
  }

  return result;
}

unint64_t sub_2759A7A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12E00;
  if (!qword_280A12E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E00);
  }

  return result;
}

unint64_t sub_2759A7AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12E08;
  if (!qword_280A12E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E08);
  }

  return result;
}

unint64_t sub_2759A7B00(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for ObserveNotificationModifier(uint64_t a1)
{
  result = qword_280A12E10;
  if (!qword_280A12E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2759A7BC0(uint64_t a1)
{
  sub_2758C6FC8(319);
  if (v1 <= 0x3F)
  {
    sub_2759B8C48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2759A7C44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x736E6F69746361;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x80000002759DD230;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x736E6F69746361;
  }

  if (*a2)
  {
    v6 = 0x80000002759DD230;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2759BAAC8();
  }

  return v8 & 1;
}

uint64_t sub_2759A7CF0()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_2759A7D78(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_2759A7DEC(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

void sub_2759A7E70(char *a2@<X8>)
{
  v3 = sub_2759BAA48();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_2759A7ED0(unint64_t *a1@<X8>)
{
  v2 = 0x80000002759DD230;
  v3 = 0x736E6F69746361;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2759A7F14()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x736E6F69746361;
  }
}

void sub_2759A7F54(char *a3@<X8>)
{
  v4 = sub_2759BAA48();

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

uint64_t sub_2759A7FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759A8E28(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2759A7FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759A8E28(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_2759A8030(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v51 = sub_2759B8BD8();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2759B8C48();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12E30, &unk_2759D03F8);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for ObserveNotificationModifier(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2759A8E28(v13, v14, v15);
  v16 = v50;
  sub_2759BAC18();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v42 = v6;
    v43 = a1;
    v40 = v10;
    v41 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
    LOBYTE(v52) = 0;
    sub_2758C7304();
    v17 = v48;
    v18 = v9;
    sub_2759BAA78();
    v39 = 0;
    v19 = v54;
    v20 = *(v54 + 16);
    if (v20)
    {
      v38 = v9;
      v53 = MEMORY[0x277D84F90];
      sub_2759509B0(0, v20, 0);
      v21 = v53;
      v22 = v49 + 16;
      v23 = *(v49 + 16);
      v24 = *(v49 + 80);
      v37 = v19;
      v25 = v19 + ((v24 + 32) & ~v24);
      v49 = *(v49 + 72);
      v50 = v23;
      v26 = (v22 - 8);
      v27 = v51;
      do
      {
        v28 = v22;
        v50(v4, v25, v27);
        sub_2759B8BC8();
        v27 = v51;
        (*v26)(v4, v51);
        v53 = v21;
        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_2759509B0((v29 > 1), v30 + 1, 1);
          v27 = v51;
          v21 = v53;
        }

        *(v21 + 16) = v30 + 1;
        sub_275827D1C(&v52, v21 + 40 * v30 + 32);
        v25 += v49;
        --v20;
        v22 = v28;
      }

      while (v20);

      v31 = v43;
      v32 = v46;
      v17 = v48;
      v18 = v38;
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
      v31 = v43;
      v32 = v46;
    }

    v33 = v41;
    *v41 = v21;
    LOBYTE(v52) = 1;
    sub_2759A8E7C(&qword_280A0E8C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    v34 = v42;
    v35 = v39;
    sub_2759BAA78();
    v36 = v40;
    (*(v47 + 8))(v18, v17);
    if (v35)
    {
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {
      (*(v44 + 32))(v33 + *(v36 + 20), v34, v32);
      sub_2759A8CB4(v33, v45);
      __swift_destroy_boxed_opaque_existential_1(v31);
      sub_2759A8EC4(v33);
    }
  }
}

uint64_t sub_2759A8548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v69 = a3;
  v67 = a1;
  v71 = a4;
  v7 = type metadata accessor for ObserveNotificationModifier(0);
  v68 = *(v7 - 8);
  v8 = v68[8];
  MEMORY[0x28223BE20](v7);
  v9 = sub_2759BA728();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2759B8C38();
  if (!v5)
  {
    v15 = v14;
    v64 = a2;
    v65 = 0;
    v59 = result;
    v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = v12;
    v62 = v10;
    v66 = v9;
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v63 = v4;
    v16 = sub_2759B89A8();
    __swift_project_value_buffer(v16, qword_2815ADE70);

    v17 = sub_2759B8988();
    v18 = sub_2759BA668();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v60;
    v21 = v67;
    v22 = v15;
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = v20;
      v25 = v15;
      v26 = swift_slowAlloc();
      v70[0] = v26;
      *v23 = 136315138;
      v27 = v59;
      *(v23 + 4) = sub_2758937B8(v59, v25, v70);
      _os_log_impl(&dword_275819000, v17, v18, "ObserveNotificationModifier: observing notification: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v28 = v26;
      v22 = v25;
      v20 = v24;
      MEMORY[0x277C85860](v28, -1, -1);
      MEMORY[0x277C85860](v23, -1, -1);

      v29 = v61;
      v30 = v68;
    }

    else
    {

      v29 = v61;
      v30 = v68;
      v27 = v59;
    }

    v31 = v21[4];
    v56 = v21[3];
    v57 = v31;
    v32 = v21;
    v33 = v56;
    v61 = __swift_project_boxed_opaque_existential_1(v32, v56);
    v58 = sub_2759A8E7C(&qword_280A12E28, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    v70[0] = v66;
    v70[1] = v33;
    v70[2] = v58;
    v70[3] = v31;
    v59 = sub_2759B9118();
    v68 = &v54;
    v67 = *(v59 - 8);
    MEMORY[0x28223BE20](v59);
    v55 = &v54 - v34;
    v35 = [objc_opt_self() defaultCenter];
    v36 = v22;
    v37 = sub_2759BA258();
    sub_2759BA738();

    v38 = v63;
    sub_2759A8CB4(v63, v20);
    v39 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v40 = v20;
    v41 = (v8 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = v27;
    *(v43 + 24) = v36;
    sub_2759A8D18(v40, v43 + v39);
    v44 = v64;
    *(v43 + v41) = v64;
    v45 = v69;
    *(v43 + v42) = v69;

    v46 = v55;
    v47 = v66;
    sub_2759B9BC8();

    (*(v62 + 8))(v29, v47);
    v48 = sub_27595CE18(*v38);
    v49 = v59;
    WitnessTable = swift_getWitnessTable();
    v51 = sub_27592E2A4(v48, v44, v45, v49, WitnessTable);

    result = (*(v67 + 8))(v46, v49);
    v52 = MEMORY[0x277CE11C0];
    v53 = v71;
    v71[3] = MEMORY[0x277CE11C8];
    v53[4] = v52;
    *v53 = v51;
  }

  return result;
}

uint64_t sub_2759A8AA4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v8 = sub_2759B89A8();
  __swift_project_value_buffer(v8, qword_2815ADE70);

  v9 = sub_2759B8988();
  v10 = sub_2759BA668();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2758937B8(a2, a3, &v14);
    _os_log_impl(&dword_275819000, v9, v10, "ObserveNotificationModifier: received notification %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x277C85860](v12, -1, -1);
    MEMORY[0x277C85860](v11, -1, -1);
  }

  return sub_2759BA438();
}

uint64_t sub_2759A8CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObserveNotificationModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2759A8D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObserveNotificationModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2759A8D7C(uint64_t a1)
{
  v3 = *(type metadata accessor for ObserveNotificationModifier(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2759A8AA4(a1, v6, v7, (v1 + v4), v8, v9);
}

unint64_t sub_2759A8E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12E38;
  if (!qword_280A12E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E38);
  }

  return result;
}

uint64_t sub_2759A8E7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2759A8EC4(uint64_t a1)
{
  v2 = type metadata accessor for ObserveNotificationModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2759A8F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12E40;
  if (!qword_280A12E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E40);
  }

  return result;
}

unint64_t sub_2759A8F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12E48;
  if (!qword_280A12E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E48);
  }

  return result;
}

unint64_t sub_2759A8FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12E50;
  if (!qword_280A12E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E50);
  }

  return result;
}

uint64_t sub_2759A9050@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v32 = a4;
  v9 = sub_2759BA728();
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v13 = MEMORY[0x277D84F90];
  if (*(v5 + 16))
  {
    v14 = *(v5 + 16);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = sub_27595CE18(v14);

  v16 = sub_27592E2A4(v15, a2, a3, v12, v11);

  if (*(v5 + 24))
  {
    v17 = *(v5 + 24);
  }

  else
  {
    v17 = v13;
  }

  v18 = sub_27595CE18(v17);

  v31 = sub_275964980(v18, a2, a3, v16);

  v19 = [objc_opt_self() defaultCenter];
  if (qword_280A0E3E8 != -1)
  {
    swift_once();
  }

  v20 = v33;
  sub_2759BA738();

  v21 = swift_allocObject();
  *(v21 + 2) = v5;
  *(v21 + 3) = a2;
  *(v21 + 4) = a3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11CC0, &unk_2759D0680);
  v23 = v32;
  v32[3] = v22;
  v23[4] = sub_2759660C8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  v26 = v34;
  v25 = v35;
  (*(v34 + 16))(boxed_opaque_existential_1 + *(v22 + 52), v20, v35);
  *boxed_opaque_existential_1 = v31;
  v27 = (boxed_opaque_existential_1 + *(v22 + 56));
  *v27 = sub_2759AA12C;
  v27[1] = v21;
  v28 = *(v26 + 8);

  return v28(v20, v25);
}

uint64_t sub_2759A9320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2759B8278();
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  strcpy(&v17, "ResultSuccess");
  HIWORD(v17) = -4864;
  sub_2759BA878();
  if (!*(v6 + 16) || (v7 = sub_2758A24F8(v16), (v8 & 1) == 0))
  {

    sub_275864C40(v16);
LABEL_8:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_9;
  }

  sub_275864C94(*(v6 + 56) + 32 * v7, &v17);
  sub_275864C40(v16);

  if (!*(&v18 + 1))
  {
LABEL_9:
    sub_27586BF04(&v17, &qword_280A0ED70, &qword_2759C6C60);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v9 = LOBYTE(v16[0]);
    goto LABEL_11;
  }

LABEL_10:
  v9 = 0;
LABEL_11:
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v10 = sub_2759B89A8();
  __swift_project_value_buffer(v10, qword_2815ADE70);
  v11 = sub_2759B8988();
  v12 = sub_2759BA668();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9;
    _os_log_impl(&dword_275819000, v11, v12, "MessagesEnableAction completed with success %{BOOL}d", v13, 8u);
    MEMORY[0x277C85860](v13, -1, -1);
  }

  v16[3] = &type metadata for MessagesEnableActionTelemetryEvent;
  v16[4] = &off_288486D90;
  if (v9)
  {
    LOBYTE(v16[0]) = 0;
    if (!*(a2 + 16))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  LOBYTE(v16[0]) = 1;
  if (*(a2 + 24))
  {
LABEL_19:
    sub_2759BA438();
  }

LABEL_20:
  v14 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for MessagesEnableActionTelemetryEvent);
  sub_2758C9088(v14, sub_27594A594, 0, &type metadata for MessagesEnableActionTelemetryEvent, &off_288486D90);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void sub_2759A95A0(char *a2@<X8>)
{
  v3 = sub_2759BAA48();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_2759A9600(char *a3@<X8>)
{
  v4 = sub_2759BAA48();

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

uint64_t sub_2759A9664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759AA138(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2759A96A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759AA138(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void *sub_2759A96DC(void *a1)
{
  v3 = v1;
  v57 = *v1;
  v58 = v2;
  v5 = sub_2759B8BD8();
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12E68, &unk_2759D0690);
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v45 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2759AA138(v11, v12, v13);
  v14 = v58;
  sub_2759BAC18();
  v15 = v14;
  if (v14)
  {
    goto LABEL_13;
  }

  v52 = v1;
  v58 = v5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v59[0]) = 0;
  v17 = sub_2758C7304();
  sub_2759BAA68();
  v51 = v17;
  if (v61)
  {
    v50 = v16;
    v18 = *(v61 + 16);
    v19 = v52;
    if (v18)
    {
      v46 = v10;
      v47 = 0;
      v48 = v8;
      v49 = a1;
      v60 = MEMORY[0x277D84F90];
      v20 = v61;
      sub_2759509B0(0, v18, 0);
      v21 = v60;
      v22 = *(v53 + 16);
      v23 = *(v53 + 80);
      v45[1] = v20;
      v24 = v20 + ((v23 + 32) & ~v23);
      v55 = *(v53 + 72);
      v56 = v22;
      v25 = (v53 + 8);
      v26 = v58;
      do
      {
        v56(v7, v24, v26);
        sub_2759B8BC8();
        v26 = v58;
        (*v25)(v7, v58);
        v60 = v21;
        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_2759509B0((v27 > 1), v28 + 1, 1);
          v26 = v58;
          v21 = v60;
        }

        *(v21 + 16) = v28 + 1;
        sub_275827D1C(v59, v21 + 40 * v28 + 32);
        v24 += v55;
        --v18;
      }

      while (v18);

      v29 = v52;
      v8 = v48;
      a1 = v49;
      v10 = v46;
      v15 = v47;
    }

    else
    {

      v29 = v19;
      v21 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v21 = 0;
    v29 = v52;
  }

  v30 = v29;
  v29[2] = v21;
  LOBYTE(v59[0]) = 1;
  sub_2759BAA68();
  if (v15)
  {
    (*(v54 + 8))(v10, v8);
    v3 = v30;

LABEL_13:
    swift_deallocPartialClassInstance();
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  if (v61)
  {
    v32 = *(v61 + 16);
    if (v32)
    {
      v46 = v10;
      v47 = 0;
      v48 = v8;
      v49 = a1;
      v60 = MEMORY[0x277D84F90];
      v33 = v61;
      sub_2759509B0(0, v32, 0);
      v34 = v60;
      v35 = v53 + 16;
      v36 = *(v53 + 16);
      v37 = *(v53 + 80);
      v55 = v33;
      v38 = v33 + ((v37 + 32) & ~v37);
      v56 = *(v53 + 72);
      v57 = v36;
      v39 = (v53 + 8);
      v40 = v58;
      do
      {
        v41 = v35;
        v57(v7, v38, v40);
        sub_2759B8BC8();
        v40 = v58;
        (*v39)(v7, v58);
        v60 = v34;
        v43 = *(v34 + 16);
        v42 = *(v34 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_2759509B0((v42 > 1), v43 + 1, 1);
          v40 = v58;
          v34 = v60;
        }

        *(v34 + 16) = v43 + 1;
        sub_275827D1C(v59, v34 + 40 * v43 + 32);
        v38 += v56;
        --v32;
        v35 = v41;
      }

      while (v32);

      v30 = v52;
      v8 = v48;
      a1 = v49;
      v10 = v46;
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v34 = 0;
  }

  v3 = v30;
  v30[3] = v34;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v44 = result;
    (*(v54 + 8))(v10, v8);
    v30[4] = v44;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_2759A9CB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585A7E4;

  return sub_2759A9FC8();
}

void *sub_2759A9E0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2759A96DC(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_2759A9F10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_2759BA5A8();
  v1 = sub_2758A2798(inited);
  swift_setDeallocating();
  sub_27586BF04(inited + 32, &qword_280A10C10, &qword_2759D0850);
  return v1;
}

uint64_t sub_2759A9FE8()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Messages enable action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 32);
  [v6 setupIMCloudKitHooks];
  [v6 setEnabled_];
  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_2759AA138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12E70;
  if (!qword_280A12E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E70);
  }

  return result;
}

uint64_t sub_2759AA18C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2759AA1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12E78;
  if (!qword_280A12E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E78);
  }

  return result;
}

unint64_t sub_2759AA250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12E80;
  if (!qword_280A12E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E80);
  }

  return result;
}

unint64_t sub_2759AA2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12E88;
  if (!qword_280A12E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E88);
  }

  return result;
}

unint64_t sub_2759AA310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12E90;
  if (!qword_280A12E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E90);
  }

  return result;
}

BOOL sub_2759AA368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0x5F594D5F45444948 && a2 == 0xED00004C49414D45)
  {
    if (a3 == 1)
    {
      return 1;
    }
  }

  else
  {
    if ((sub_2759BAAC8() & 1) != 0 && a3 == 1)
    {
      return 1;
    }

    if (a1 == 0xD000000000000013 && 0x80000002759DCD20 == a2)
    {
      if (a3 == 2)
      {
        return 1;
      }

      goto LABEL_19;
    }
  }

  if ((sub_2759BAAC8() & 1) != 0 && a3 == 2)
  {
    return 1;
  }

  if (a1 == 0x535F594C494D4146 && a2 == 0xEE00474E49524148)
  {
    if ((a3 - 3) >= 2)
    {
      goto LABEL_24;
    }

    return 1;
  }

LABEL_19:
  if ((sub_2759BAAC8() & 1) != 0 && (a3 - 3) < 2)
  {
    return 1;
  }

  if (a1 == 0x505F4547414E414DLL && a2 == 0xEB000000004E414CLL)
  {
    return a3 == 5;
  }

LABEL_24:
  if (sub_2759BAAC8())
  {
    return a3 == 5;
  }

  return 0;
}

BOOL sub_2759AA55C(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + OBJC_IVAR____TtC14iCloudSettings7Feature_featureId);
  v3 = *(a1 + OBJC_IVAR____TtC14iCloudSettings7Feature_featureId + 8);
  if (!v3)
  {
    return 0;
  }

  v5 = *v2;
  if (*v2 == 0x5F594D5F45444948 && v3 == 0xED00004C49414D45)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else
  {
    if ((sub_2759BAAC8() & 1) != 0 && a2 == 1)
    {
      return 1;
    }

    if (v5 == 0xD000000000000013 && v3 == 0x80000002759DCD20)
    {
      if (a2 != 2)
      {
        goto LABEL_22;
      }

      return 1;
    }
  }

  if ((sub_2759BAAC8() & 1) != 0 && a2 == 2)
  {
    return 1;
  }

  if (v5 == 0x535F594C494D4146 && v3 == 0xEE00474E49524148)
  {
    if ((a2 - 3) >= 2)
    {
      goto LABEL_31;
    }

    return 1;
  }

LABEL_22:
  if ((sub_2759BAAC8() & 1) != 0 && (a2 - 3) < 2)
  {
    return 1;
  }

  if (v5 == 0x505F4547414E414DLL && v3 == 0xEB000000004E414CLL)
  {
    return a2 == 5;
  }

LABEL_31:
  if (sub_2759BAAC8())
  {
    return a2 == 5;
  }

  return 0;
}

unint64_t sub_2759AA760@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2759AA794(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_2759AA794(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2759AA7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12E98;
  if (!qword_280A12E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12E98);
  }

  return result;
}

id sub_2759AA80C(uint64_t a1)
{
  v2 = v1;
  if ([objc_opt_self() isMainThread])
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_2815ADE70);
    v5 = sub_2759B8988();
    v6 = sub_2759BA648();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2758937B8(0xD000000000000016, 0x80000002759DDD30, &v11);
      _os_log_impl(&dword_275819000, v5, v6, "%s IconServices may do I/O on main thread", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x277C85860](v8, -1, -1);
      MEMORY[0x277C85860](v7, -1, -1);
    }
  }

  v9 = [v2 prepareImageForDescriptor_];

  return v9;
}

uint64_t sub_2759AA998@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  v13[0] = v3;
  v13[1] = v5;
  v13[2] = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v13);

  sub_2759B9B18();

  v6 = OpaqueTypeMetadata2;
  v7 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(v13, OpaqueTypeMetadata2);
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
  sub_27585D1B8();
  v10[0] = v6;
  v10[1] = v8;
  v10[2] = v7;
  v11 = swift_getOpaqueTypeMetadata2();
  v12 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v10);

  sub_2759B9B18();

  __swift_project_boxed_opaque_existential_1(v10, v11);
  swift_getKeyPath();
  sub_2759BA1B8();
  sub_2759AC608(&qword_280A10398, MEMORY[0x277D4D7B0], MEMORY[0x277D4D7D0]);
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2759B9B18();

  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_2759AACB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109D8, &qword_2759D0B40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2759BA1B8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_navigationProxy;
  swift_beginAccess();
  sub_2758CE724(v6, a2 + v9, &qword_280A109D8, &qword_2759D0B40);
  return swift_endAccess();
}

uint64_t sub_2759AADFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 97) = a6;
  *(v7 + 96) = a5;
  *(v7 + 40) = a4;
  *(v7 + 48) = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109D8, &qword_2759D0B40);
  *(v7 + 56) = swift_task_alloc();
  v8 = sub_2759BA1B8();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  sub_2759BA4C8();
  *(v7 + 88) = sub_2759BA4B8();
  v10 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759AAF30, v10, v9);
}

uint64_t sub_2759AAF30()
{
  v1 = *(v0 + 97);
  v2 = *(v0 + 96);

  ManageStorageAppsListViewModel.clearAppsList(clearHomeData:)(v2);
  if (v1 == 1)
  {
    v3 = *(v0 + 48);
    v4 = *(v3 + 24);
    if (v4)
    {
      if (*(v4 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_isPresented) == 1)
      {
        v5 = *(v0 + 64);
        v6 = *(v0 + 72);
        v7 = *(v0 + 56);
        v8 = OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_navigationProxy;
        swift_beginAccess();
        sub_2758FE7C0(v3 + v8, v7);
        if ((*(v6 + 48))(v7, 1, v5) == 1)
        {
          sub_27586BF04(*(v0 + 56), &qword_280A109D8, &qword_2759D0B40);
        }

        else
        {
          (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
          v9 = sub_2759BA198();
          v11 = *(v0 + 72);
          v10 = *(v0 + 80);
          v12 = *(v0 + 64);
          if (v9)
          {
            sub_2759BA1A8();
            (*(v11 + 8))(v10, v12);
            goto LABEL_11;
          }

          (*(v11 + 8))(*(v0 + 80), *(v0 + 64));
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v14 = Strong;
        }
      }
    }
  }

LABEL_11:

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2759AB10C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x77656956706F70;
  }

  else
  {
    v3 = 0x6D6F487261656C63;
  }

  if (v2)
  {
    v4 = 0xED00006174614465;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x77656956706F70;
  }

  else
  {
    v5 = 0x6D6F487261656C63;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xED00006174614465;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2759BAAC8();
  }

  return v8 & 1;
}

uint64_t sub_2759AB1C0()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_2759AB250(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_2759AB2CC(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

void sub_2759AB358(char *a2@<X8>)
{
  v3 = sub_2759BAA48();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_2759AB3B8(uint64_t *a1@<X8>)
{
  v2 = 0x6D6F487261656C63;
  if (*v1)
  {
    v2 = 0x77656956706F70;
  }

  v3 = 0xED00006174614465;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2759AB404()
{
  if (*v0)
  {
    return 0x77656956706F70;
  }

  else
  {
    return 0x6D6F487261656C63;
  }
}

void sub_2759AB44C(char *a3@<X8>)
{
  v4 = sub_2759BAA48();

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

uint64_t sub_2759AB4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759AC650(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2759AB4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759AC650(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2759AB528(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v38 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = v33 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12EC0, &qword_2759D0BE0);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = v33 - v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v10 = OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_navigationProxy;
  v11 = sub_2759BA1B8();
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_clearHomeData;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v14 = *(*(v13 - 8) + 56);
  v34 = v12;
  v14(v2 + v12, 1, 1, v13);
  v15 = OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_popView;
  v14(v2 + OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_popView, 1, 1, v13);
  *(v2 + OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_didDisappear) = 0;
  v16 = a1;
  v17 = a1[3];
  v42 = v16;
  v18 = __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_2759AC650(v18, v19, v20);
  v39 = v9;
  v21 = v40;
  sub_2759BAC18();
  if (v21)
  {

    v22 = v42;
  }

  else
  {
    v40 = v15;
    v41 = 0;
    v23 = sub_2758EA064();
    v25 = v35;
    v24 = v36;
    v33[1] = v23;
    sub_2759BAA68();
    v26 = v24;
    v27 = v34;
    swift_beginAccess();
    sub_2758CE724(v26, v2 + v27, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    v41 = 1;
    v29 = v38;
    v28 = v39;
    sub_2759BAA68();
    (*(v37 + 8))(v28, v25);
    v30 = v42;
    v31 = v40;
    swift_beginAccess();
    sub_2758CE724(v29, v2 + v31, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    v22 = v30;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v2;
}

uint64_t sub_2759AB944()
{
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_navigationProxy, &qword_280A109D8, &qword_2759D0B40);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_clearHomeData, &qword_280A0FC48, &qword_2759C79C0);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_popView, &qword_280A0FC48, &qword_2759C79C0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClearAppsListAction(uint64_t a1)
{
  result = qword_280A12EA0;
  if (!qword_280A12EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2759ABA6C(uint64_t a1)
{
  sub_2758FE464(319);
  if (v1 <= 0x3F)
  {
    sub_2758E9738(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2759ABB50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27585A7E4;

  return sub_2759ABD9C(a1);
}

uint64_t sub_2759ABCB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2759AB528(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2759ABD9C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2[10] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759ABEAC, 0, 0);
}

uint64_t sub_2759ABEAC()
{
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A23900);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "ClearAppsListAction: performing action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);

  v8 = OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_clearHomeData;
  swift_beginAccess();
  v9 = *(v6 + 48);
  if (v9(v7 + v8, 1, v5))
  {
    v10 = 0;
  }

  else
  {
    (*(*(v0 + 96) + 16))(*(v0 + 112), v7 + v8, *(v0 + 88));
    sub_2759B8AA8();
    (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));
    v10 = *(v0 + 144);
  }

  v11 = *(v0 + 88);
  v12 = *(v0 + 72);
  v13 = OBJC_IVAR____TtC14iCloudSettings19ClearAppsListAction_popView;
  swift_beginAccess();
  if (v9(v12 + v13, 1, v11))
  {
    v14 = 0;
  }

  else
  {
    (*(*(v0 + 96) + 16))(*(v0 + 104), v12 + v13, *(v0 + 88));
    sub_2759B8AA8();
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    v14 = *(v0 + 145);
  }

  v15 = *(v0 + 72);
  v16 = *(v15 + 16);
  *(v0 + 120) = v16;
  if (v16)
  {
    v17 = *(v0 + 80);
    v18 = sub_2759BA518();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    sub_2759BA4C8();
    v19 = v16;

    v20 = sub_2759BA4B8();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    *(v21 + 16) = v20;
    *(v21 + 24) = v22;
    *(v21 + 32) = v19;
    *(v21 + 40) = v10;
    *(v21 + 41) = v14;
    *(v21 + 48) = v15;
    *(v0 + 128) = sub_27587D460(0, 0, v17, &unk_2759D0B38, v21);
    v23 = swift_task_alloc();
    *(v0 + 136) = v23;
    *v23 = v0;
    v23[1] = sub_2759AC38C;

    return MEMORY[0x282200460]();
  }

  else
  {
    v24 = sub_2759B8988();
    v25 = sub_2759BA648();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_275819000, v24, v25, "ClearAppsListAction: no view model available", v26, 2u);
      MEMORY[0x277C85860](v26, -1, -1);
    }

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_2759AC38C()
{

  return MEMORY[0x2822009F8](sub_2759AC4A4, 0, 0);
}

uint64_t sub_2759AC4A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2759AC524(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585A7E4;

  return sub_2759AADFC(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2759AC608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2759AC650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12EC8;
  if (!qword_280A12EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12EC8);
  }

  return result;
}

unint64_t sub_2759AC6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12ED0;
  if (!qword_280A12ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12ED0);
  }

  return result;
}

unint64_t sub_2759AC710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12ED8;
  if (!qword_280A12ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12ED8);
  }

  return result;
}

unint64_t sub_2759AC768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12EE0;
  if (!qword_280A12EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12EE0);
  }

  return result;
}

uint64_t sub_2759AC7BC(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_2759BA2F8();
}

uint64_t sub_2759AC838@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12EE8, &qword_2759D0DD8);
  MEMORY[0x28223BE20](v39);
  v4 = v32 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12EF0, &qword_2759D0DE0);
  MEMORY[0x28223BE20](v37);
  v38 = v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12EF8, &qword_2759D0DE8);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F00, &qword_2759D0DF0);
  MEMORY[0x28223BE20](v9);
  v11 = v32 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F08, &qword_2759D0DF8);
  MEMORY[0x28223BE20](v36);
  v13 = v32 - v12;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F10, &qword_2759D0E00);
  v14 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v35 = v32 - v15;
  swift_getKeyPath();
  v43 = a1;
  sub_2759ADF30(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v16 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v17 = *&a1[v16];
  if (v17 && (v18 = *(*(v17 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_statefulHeader)) != 0)
  {
    v19 = v18;
    if (sub_275881A20())
    {
      v33 = v19;
      v42 = *&v19[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_actions];
      v32[2] = swift_getKeyPath();
      *(swift_allocObject() + 16) = a1;

      v20 = a1;
      v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F60, &qword_2759D0E68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F40, &qword_2759D0E38);
      sub_27589B02C(&qword_280A12F68, &qword_280A12F60, &qword_2759D0E68, MEMORY[0x277D83980]);
      sub_2759ADF30(&qword_280A12F70, type metadata accessor for Action, MEMORY[0x277D85378]);
      sub_2759ADE70();
      sub_2759B9ED8();
      sub_2759B8ED8();
      sub_2759ADDEC();
      sub_2759B9AD8();
      (*(v34 + 8))(v8, v6);
      v21 = sub_2759B97F8();
      sub_2759B8D78();
      v22 = &v11[*(v9 + 36)];
      *v22 = v21;
      *(v22 + 1) = v23;
      *(v22 + 2) = v24;
      *(v22 + 3) = v25;
      *(v22 + 4) = v26;
      v22[40] = 0;
      sub_2759ADD24();
      sub_2759B9B38();
      sub_27586BF04(v11, &qword_280A12F00, &qword_2759D0DF0);
      sub_2758277BC(v13, v38);
      swift_storeEnumTagMultiPayload();
      sub_2759ADC68();
      sub_27589B02C(&qword_280A12F58, &qword_280A12EE8, &qword_2759D0DD8, MEMORY[0x277CE1198]);
      v27 = v35;
      sub_2759B95E8();

      sub_27586BF04(v13, &qword_280A12F08, &qword_2759D0DF8);
    }

    else
    {
      *v4 = sub_2759B94F8();
      *(v4 + 1) = 0;
      v4[16] = 1;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F18, &qword_2759D0E30);
      sub_2759AD184(v19, a1, &v4[*(v30 + 44)]);
      sub_27586FBC8(v4, v38, &qword_280A12EE8, &qword_2759D0DD8);
      swift_storeEnumTagMultiPayload();
      sub_2759ADC68();
      sub_27589B02C(&qword_280A12F58, &qword_280A12EE8, &qword_2759D0DD8, MEMORY[0x277CE1198]);
      v27 = v35;
      sub_2759B95E8();

      sub_27586BF04(v4, &qword_280A12EE8, &qword_2759D0DD8);
    }

    v29 = v41;
    sub_275827714(v27, v41);
    v28 = 0;
  }

  else
  {
    v28 = 1;
    v29 = v41;
  }

  return (*(v14 + 56))(v29, v28, 1, v40);
}

void sub_2759ACF28(void **a1@<X0>, void *a2@<X1>, __n128 *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2759ADF78;
  *(v8 + 24) = v6;
  v9 = v5;
  v10 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104D0, &qword_2759D0E70);
  sub_2759B9D58();
  LOBYTE(a2) = sub_2759B97E8();
  sub_2759B8D78();
  *a3 = v15;
  a3[1].n128_u64[0] = v16;
  a3[1].n128_u64[1] = sub_2759ADFC8;
  a3[2].n128_u64[0] = v7;
  a3[2].n128_u8[8] = a2;
  a3[3].n128_u64[0] = v11;
  a3[3].n128_u64[1] = v12;
  a3[4].n128_u64[0] = v13;
  a3[4].n128_u64[1] = v14;
  a3[5].n128_u8[0] = 0;
}

uint64_t sub_2759AD05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_27589F2D4(a1, a2, a3);

  v5 = sub_2759B99C8();
  v7 = v6;
  v9 = v8;
  sub_2759B9858();
  v10 = sub_2759B9988();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_27589F328(v5, v7, v9 & 1);

  result = swift_getKeyPath();
  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v16;
  *(a4 + 32) = 256;
  *(a4 + 40) = result;
  *(a4 + 48) = 0;
  return result;
}

uint64_t sub_2759AD184@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v50 - v8;
  v50 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F78, &qword_2759D0EB0) - 8);
  v9 = MEMORY[0x28223BE20](v50);
  v51 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2759ADFD8;
  *(v15 + 24) = v13;
  v60 = sub_2759AE12C;
  v61 = v15;
  v16 = a1;
  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A104D0, &qword_2759D0E70);
  sub_2759B9D58();
  v58 = sub_2759ADFE0;
  v59 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F50, &unk_2759D0E40);
  sub_27589B02C(&qword_280A12F48, &qword_280A12F50, &unk_2759D0E40, &unk_2759C5210);
  sub_2759B9B38();

  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v19 = *(v50 + 11);
  v50 = v12;
  v20 = &v12[v19];
  *v20 = sub_2759ADFE8;
  v20[1] = v18;
  v20[2] = 0;
  v20[3] = 0;
  v21 = *&v16[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_subTitle + 8];
  v55 = *&v16[OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_subTitle];
  v56 = v21;
  sub_27589F2D4(v18, v22, v23);
  v24 = v16;
  v25 = v17;

  v26 = sub_2759B99C8();
  v28 = v27;
  v30 = v29;
  sub_2759B9848();
  v31 = sub_2759B9988();
  v33 = v32;
  v35 = v34;

  sub_27589F328(v26, v28, v30 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v55 = qword_280A239C0;

  v36 = sub_2759B9958();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_27589F328(v31, v33, v35 & 1);

  v55 = v36;
  v56 = v38;
  LOBYTE(v57) = v40 & 1;
  v58 = v42;
  v43 = v52;
  sub_2759B9B38();
  sub_27589F328(v36, v38, v40 & 1);

  v45 = v50;
  v44 = v51;
  sub_27586FBC8(v50, v51, &qword_280A12F78, &qword_2759D0EB0);
  v46 = v53;
  sub_27586FBC8(v43, v53, &qword_280A0F600, &qword_2759C4210);
  v47 = v54;
  sub_27586FBC8(v44, v54, &qword_280A12F78, &qword_2759D0EB0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F80, &qword_2759D0EB8);
  sub_27586FBC8(v46, v47 + *(v48 + 48), &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v43, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v45, &qword_280A12F78, &qword_2759D0EB0);
  sub_27586BF04(v46, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v44, &qword_280A12F78, &qword_2759D0EB0);
}

void sub_2759AD6D4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_actions);
  if (v1 >> 62)
  {
    if (sub_2759BA9E8())
    {
      goto LABEL_3;
    }

LABEL_8:
    if (qword_2815ADD30 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x277C846A0](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v1 + 32);
LABEL_6:
    v8 = 21;
    v7 = 7;
    oslog = v2;
    sub_27590A460(v2, 1, &v8, &v7, 0);
    goto LABEL_11;
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_9:
  v3 = sub_2759B89A8();
  __swift_project_value_buffer(v3, qword_2815ADE70);
  oslog = sub_2759B8988();
  v4 = sub_2759BA648();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, oslog, v4, "No action found for stateful header section.", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

LABEL_11:
}

uint64_t sub_2759AD854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_actions);
  if (v3 >> 62)
  {
    result = sub_2759BA9E8();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_10;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v8 = *(MEMORY[0x277C846A0](0, v3) + OBJC_IVAR____TtC14iCloudSettings6Action_title + 8);

    v5 = swift_unknownObjectRelease();
    if (v8)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(*(v3 + 32) + OBJC_IVAR____TtC14iCloudSettings6Action_title + 8))
    {

LABEL_11:
      sub_27589F2D4(v5, v6, v7);
      v9 = sub_2759B99C8();
      v11 = v10;
      v13 = v12;
      sub_2759B9858();
      v14 = sub_2759B9988();
      v16 = v15;
      v18 = v17;
      v20 = v19;

      sub_27589F328(v9, v11, v13 & 1);

      result = swift_getKeyPath();
      *a2 = v14;
      *(a2 + 8) = v16;
      *(a2 + 16) = v18 & 1;
      *(a2 + 24) = v20;
      *(a2 + 32) = 256;
      *(a2 + 40) = result;
      *(a2 + 48) = 0;
      return result;
    }

LABEL_10:

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_2759ADA0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = *(a1 + OBJC_IVAR____TtC14iCloudSettings14StatefulHeader_actions);
  if (v5 >> 62)
  {
    if (!sub_2759BA9E8())
    {
      return;
    }
  }

  else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x277C846A0](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v15 = v6;
  v7 = sub_2759BA258();
  v8 = _ICQActionForString();

  if ((v8 - 114) > 0xD || ((1 << (v8 - 114)) & 0x20F1) == 0)
  {
    v13 = v15;
  }

  else
  {
    sub_2759BA4D8();
    v10 = sub_2759BA518();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v11;
    *(v12 + 40) = 21;
    sub_275931D20(0, 0, v4, &unk_2759C3740, v12);

    sub_27586BF04(v4, &unk_280A0E510, &qword_2759C33C0);
  }
}

unint64_t sub_2759ADC68()
{
  result = qword_280A12F20;
  if (!qword_280A12F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12F08, &qword_2759D0DF8);
    sub_2759ADD24();
    sub_2759ADF30(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12F20);
  }

  return result;
}

unint64_t sub_2759ADD24()
{
  result = qword_280A12F28;
  if (!qword_280A12F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12F00, &qword_2759D0DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12EF8, &qword_2759D0DE8);
    sub_2759ADDEC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12F28);
  }

  return result;
}

unint64_t sub_2759ADDEC()
{
  result = qword_280A12F30;
  if (!qword_280A12F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12EF8, &qword_2759D0DE8);
    sub_2759ADE70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12F30);
  }

  return result;
}

unint64_t sub_2759ADE70()
{
  result = qword_280A12F38;
  if (!qword_280A12F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12F40, &qword_2759D0E38);
    sub_27589B02C(&qword_280A12F48, &qword_280A12F50, &unk_2759D0E40, &unk_2759C5210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12F38);
  }

  return result;
}

uint64_t sub_2759ADF30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2759ADF78()
{
  v1 = *(v0 + 24);
  v3 = 21;
  v2 = 7;
  sub_27590A460(v1, 1, &v3, &v2, 0);
}

unint64_t sub_2759ADFF0()
{
  result = qword_280A12F88;
  if (!qword_280A12F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12F90, qword_2759D0EC0);
    sub_2759AE074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12F88);
  }

  return result;
}

unint64_t sub_2759AE074()
{
  result = qword_280A12F98;
  if (!qword_280A12F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12F10, &qword_2759D0E00);
    sub_2759ADC68();
    sub_27589B02C(&qword_280A12F58, &qword_280A12EE8, &qword_2759D0DD8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12F98);
  }

  return result;
}

id sub_2759AE130()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v0 = sub_2759B89A8();
  __swift_project_value_buffer(v0, qword_2815ADE70);
  v1 = sub_2759B8988();
  v2 = sub_2759BA638();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    MEMORY[0x277C85860](v3, -1, -1);
  }

  v4 = objc_opt_self();

  return [v4 clearSharedContext];
}

uint64_t sub_2759AE250()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585A7E4;

  return sub_2759AE458();
}

uint64_t sub_2759AE474()
{
  [objc_opt_self() startSharedContextWithOptions_];
  v1 = [objc_allocWithZone(MEMORY[0x277D35F60]) init];
  v0[18] = v1;
  v2 = objc_opt_self();
  v3 = [v2 sharedContext];
  [v3 setCloudContextDelegate_];

  v4 = [v2 sharedContext];
  v0[19] = v4;
  v5 = sub_2759BA258();
  v0[20] = v5;
  v0[2] = v0;
  v0[3] = sub_2759AE64C;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11E50, &unk_2759D0FD0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_27596DB7C;
  v0[13] = &block_descriptor_19;
  v0[14] = v6;
  [v4 syncWithReason:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2759AE64C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_2759AE8D0;
  }

  else
  {
    v2 = sub_2759AE75C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2759AE75C()
{
  v1 = *(v0 + 160);

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = *(v0 + 144);

  sub_2759AEAB0();
  v7 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v7 postNotificationName:*MEMORY[0x277D35C48] object:0];

  sub_2759AE130();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2759AE8D0(uint64_t a1)
{
  v2 = v1[20];
  v4 = v1[18];
  v3 = v1[19];
  swift_willThrow();

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v5 = v1[21];
  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_2815ADE70);
  v7 = v5;
  v8 = sub_2759B8988();
  v9 = sub_2759BA648();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[21];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_275819000, v8, v9, "Notes deletion sync failed with error: %@. We might be showing incorrect Notes count on six pack.", v12, 0xCu);
    sub_275875554(v13);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  else
  {
  }

  sub_2759AE130();
  v16 = v1[1];

  return v16();
}

unint64_t sub_2759AEAB0()
{
  result = qword_280A12FB0;
  if (!qword_280A12FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A12FB0);
  }

  return result;
}

uint64_t sub_2759AEAFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NotesDeleteAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ICSiCloudDriveFileProvider.__allocating_init(account:fileManager:fpItemManager:fileProviderHelper:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v16 = *(a4 + 24);
  v9 = v16;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a4, v16);
  v11 = *(v16 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  *(v8 + 56) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  (*(v11 + 32))(boxed_opaque_existential_1, v13, v9);
  *(v8 + 72) = a1;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v8;
}

void *ICSiCloudDriveFileProvider.init(account:fileManager:fpItemManager:fileProviderHelper:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_2759B3EA4(a1, a2, a3, v13, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v15;
}

NSObject *sub_2759AED90()
{
  v1 = [*(v0 + 72) identifier];
  if (v1)
  {
    v12 = 0;
    v13 = 0;
    v2 = v1;
    sub_2759BA288();
  }

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v3 = sub_2759B89A8();
  __swift_project_value_buffer(v3, qword_280A238A0);
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_275819000, v4, v5, "iCloudDriveFileProvider: no account id when fetching provider domain id", v6, 2u);
    MEMORY[0x277C85860](v6, -1, -1);
  }

  sub_2759B3F30(v7, v8, v9);
  swift_allocError();
  *v10 = 0;
  swift_willThrow();
  return v5;
}

uint64_t sub_2759AF420()
{
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A238A0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "ICSiCloudDriveFileProvider: fetching all files", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = sub_2759AED90();
  *(v0 + 24) = v5;
  v6 = *MEMORY[0x277CC62E8];
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  v8[1] = sub_2759AF5E0;

  return sub_2759B02CC(v7, v6);
}

uint64_t sub_2759AF5E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_2759AF770;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_2759AF708;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2759AF708()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_2759AF770()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2759AF7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2759AF7F8, 0, 0);
}

uint64_t sub_2759AF7F8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2759AF8FC;
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD00000000000002FLL, 0x80000002759E41C0, sub_2759B3F84, v3, v6);
}

uint64_t sub_2759AF8FC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2759AFA34;
  }

  else
  {

    v2 = sub_2759AFA18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2759AFA34()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_2759AFA9C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FF8, qword_2759D1230);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = sub_2759AED90();
  v37 = v13;
  v38 = v10;
  v40 = v8;
  v42 = a1;
  v43 = v7;
  v15 = objc_allocWithZone(MEMORY[0x277CC6400]);
  v41 = a3;
  v39 = [v15 initWithProviderDomainID:v14 itemIdentifier:a3];
  v16 = v44;
  v17 = v44[2];
  if (v17)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2759BA968();
    v18 = v16 + 4;
    do
    {
      v19 = *v18++;
      [objc_allocWithZone(MEMORY[0x277CC6400]) initWithProviderDomainID:v14 itemIdentifier:v19];
      sub_2759BA948();
      sub_2759BA978();
      sub_2759BA988();
      sub_2759BA958();
      --v17;
    }

    while (v17);
  }

  v44 = [objc_allocWithZone(ICSINDEntry) init];
  sub_2759B4980();
  v20 = sub_2759BA3D8();

  v21 = v37;
  sub_27586FBC8(v45, v37, &unk_280A0EB10, &qword_2759C0740);
  v22 = sub_2759B8508();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v21, 1, v22);
  v25 = 0;
  v27 = v42;
  v26 = v43;
  if (v24 != 1)
  {
    v25 = sub_2759B84B8();
    (*(v23 + 8))(v21, v22);
  }

  v28 = v40;
  v29 = v38;
  (*(v40 + 16))(v38, v27, v26);
  v30 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v31 = swift_allocObject();
  v32 = v41;
  *(v31 + 16) = v41;
  (*(v28 + 32))(v31 + v30, v29, v26);
  aBlock[4] = sub_2759B49CC;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275956A0C;
  aBlock[3] = &block_descriptor_52_0;
  v33 = _Block_copy(aBlock);
  v34 = v32;

  v35 = v44;
  v36 = v39;
  [v44 syncFPItem:v39 observeItemIDs:v20 notifyURL:v25 completion:v33];
  _Block_release(v33);
}

uint64_t sub_2759AFFCC(char a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v6 = sub_2759B89A8();
    __swift_project_value_buffer(v6, qword_280A238A0);
    v7 = a2;
    v8 = a3;
    v9 = sub_2759B8988();
    v10 = sub_2759BA668();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v11 = 136315394;
      v14 = sub_2759BA298();
      v16 = sub_2758937B8(v14, v15, &v25);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      v17 = a2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v18;
      *v12 = v18;
      _os_log_impl(&dword_275819000, v9, v10, "ICSiCloudDriveFileProvider: Error while observing %s - %@", v11, 0x16u);
      sub_27586BF04(v12, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x277C85860](v13, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    v25 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FF8, qword_2759D1230);
    return sub_2759BA478();
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v21 = sub_2759B89A8();
    __swift_project_value_buffer(v21, qword_280A238A0);
    v22 = sub_2759B8988();
    v23 = sub_2759BA668();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = a1 & 1;
      _os_log_impl(&dword_275819000, v22, v23, "ICSiCloudDriveFileProvider: sync complete with success: %{BOOL}d", v24, 8u);
      MEMORY[0x277C85860](v24, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FF8, qword_2759D1230);
    return sub_2759BA488();
  }
}

uint64_t sub_2759B02CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2759B8508();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759B039C, 0, 0);
}

uint64_t sub_2759B039C()
{
  v22 = v0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_2759B89A8();
  v0[9] = __swift_project_value_buffer(v3, qword_280A238A0);
  v4 = v2;
  v5 = v1;
  v6 = sub_2759B8988();
  v7 = sub_2759BA668();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    v10 = sub_2759BA298();
    v12 = sub_2758937B8(v10, v11, &v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_2759BA298();
    v15 = sub_2758937B8(v13, v14, &v21);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_275819000, v6, v7, "ICSiCloudDriveFileProvider: fetchFiles for providerID: %s containerID: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_2759B05BC;
  v17 = v0[8];
  v18 = v0[3];
  v19 = v0[2];

  return sub_2759B2F54(v17, v19, v18);
}

uint64_t sub_2759B05BC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2759B0A6C;
  }

  else
  {
    v2 = sub_2759B06D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2759B06D0()
{
  v18 = v0;
  (*(v0[6] + 16))(v0[7], v0[8], v0[5]);
  v1 = sub_2759B8988();
  v2 = sub_2759BA668();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v16 = sub_2759B8488();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v4, v6);
    v12 = sub_2758937B8(v16, v10, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_275819000, v1, v2, "ICSiCloudDriveFileProvider: fetchFiles received url %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  else
  {

    v11 = *(v5 + 8);
    v11(v4, v6);
  }

  v0[12] = v11;
  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_2759B08B4;
  v14 = v0[8];

  return sub_2759B0B60(v14);
}

uint64_t sub_2759B08B4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_2759B0AD8;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_2759B09DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2759B09DC()
{
  (*(v0 + 96))(*(v0 + 64), *(v0 + 40));

  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1(v2);
}

uint64_t sub_2759B0A6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2759B0AD8()
{
  (*(v0 + 96))(*(v0 + 64), *(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2759B0B60(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_2759B83F8();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = sub_2759B8508();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759B0CC0, 0, 0);
}

uint64_t sub_2759B0CC0()
{
  v85 = v0;
  v84[1] = *MEMORY[0x277D85DE8];
  if (qword_280A0E338 != -1)
  {
LABEL_49:
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[11];
  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A238A0);
  v83 = *(v3 + 16);
  v83(v1, v4, v2);
  v6 = sub_2759B8988();
  v7 = sub_2759BA668();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[20];
  v10 = v0[16];
  v11 = v0[17];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v84[0] = v13;
    *v12 = 136315138;
    v14 = sub_2759B8488();
    v16 = v15;
    v80 = *(v11 + 8);
    v80(v9, v10);
    v17 = sub_2758937B8(v14, v16, v84);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_275819000, v6, v7, "ICSiCloudDriveFileProvider: fetching files at url: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  else
  {

    v80 = *(v11 + 8);
    v80(v9, v10);
  }

  v72 = v0[12];
  v18 = *(v72 + 16);
  v19 = sub_2759B84B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FE8, &unk_2759D1210);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2759C2110;
  v21 = *MEMORY[0x277CBE868];
  v22 = *MEMORY[0x277CBE8E8];
  *(v20 + 32) = *MEMORY[0x277CBE868];
  *(v20 + 40) = v22;
  type metadata accessor for URLResourceKey(0);
  v82 = v21;
  v81 = v22;
  v23 = sub_2759BA3D8();

  v0[8] = 0;
  v24 = [v18 contentsOfDirectoryAtURL:v19 includingPropertiesForKeys:v23 options:2 error:v0 + 8];

  v25 = v0[8];
  if (v24)
  {
    v26 = sub_2759BA3E8();
    v27 = v25;

    v0[9] = MEMORY[0x277D84F90];
    v79 = *(v26 + 16);
    if (v79)
    {
      v28 = 0;
      v29 = v0[17];
      v74 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v77 = v26 + v74;
      v75 = (v0[14] + 8);
      v78 = v29;
      v73 = (v29 + 32);
      v76 = v26;
      while (1)
      {
        if (v28 >= *(v26 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v33 = *(v78 + 72);
        v83(v0[19], v77 + v33 * v28, v0[16]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2759C2110;
        *(inited + 32) = v82;
        *(inited + 40) = v81;
        v35 = v82;
        v36 = v81;
        sub_2759B5D20(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_2759B8498();

        v37 = sub_2759B83D8();
        v39 = sub_2759B83E8();
        v40 = v38;
        if (v37 == 2 || !v38)
        {

          v41 = sub_2759B8988();
          v42 = sub_2759BA668();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 67109376;
            *(v43 + 4) = v37 != 2;
            *(v43 + 8) = 1024;
            *(v43 + 10) = v40 != 0;

            _os_log_impl(&dword_275819000, v41, v42, "ICSiCloudDriveFileProvider: has resource values for url? isDir: %{BOOL}d name: %{BOOL}d", v43, 0xEu);
            MEMORY[0x277C85860](v43, -1, -1);
          }

          else
          {
          }

          if (v37 == 2)
          {
            goto LABEL_23;
          }
        }

        if ((v37 & 1) == 0)
        {
          goto LABEL_23;
        }

        v44 = sub_2759BA298();
        if (!v40)
        {

          sub_2759BA298();
LABEL_23:

LABEL_24:
          v83(v0[18], v0[19], v0[16]);
          v46 = v0[9];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_275870B24(0, *(v46 + 2) + 1, 1, v46);
          }

          v48 = *(v46 + 2);
          v47 = *(v46 + 3);
          if (v48 >= v47 >> 1)
          {
            v46 = sub_275870B24((v47 > 1), v48 + 1, 1, v46);
          }

          v31 = v0[18];
          v30 = v0[19];
          v32 = v0[16];
          (*v75)(v0[15], v0[13]);
          v80(v30, v32);
          *(v46 + 2) = v48 + 1;
          (*v73)(&v46[v74 + v48 * v33], v31, v32);
          v0[9] = v46;
          goto LABEL_9;
        }

        if (v39 == v44 && v40 == v45)
        {
          break;
        }

        v49 = sub_2759BAAC8();

        if (v49)
        {
          goto LABEL_29;
        }

        if (v39 == sub_2759BA298() && v40 == v64)
        {
          break;
        }

        v65 = sub_2759BAAC8();

        if ((v65 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_30:
        v50 = sub_2759B8988();
        v51 = sub_2759BA668();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_275819000, v50, v51, "ICSiCloudDriveFileProvider: found desktop or drive folder, adding children to file list", v52, 2u);
          MEMORY[0x277C85860](v52, -1, -1);
        }

        v53 = *(v72 + 16);
        v54 = sub_2759B84B8();
        v55 = sub_2759BA3D8();
        v0[10] = 0;
        v56 = [v53 contentsOfDirectoryAtURL:v54 includingPropertiesForKeys:v55 options:2 error:v0 + 10];

        v57 = v0[10];
        v58 = v0[19];
        v59 = v0[15];
        v60 = v0[16];
        v61 = v0[13];
        if (!v56)
        {
          v71 = v57;

          sub_2759B8448();

          swift_willThrow();
          (*v75)(v59, v61);
          v80(v58, v60);
          goto LABEL_40;
        }

        v62 = sub_2759BA3E8();
        v63 = v57;

        sub_2759B1B10(v62, sub_275870B24, MEMORY[0x277CC9260]);
        (*v75)(v59, v61);
        v80(v58, v60);
LABEL_9:
        ++v28;
        v26 = v76;
        if (v79 == v28)
        {

          v67 = v0[9];
          goto LABEL_44;
        }
      }

LABEL_29:

      goto LABEL_30;
    }

    v67 = MEMORY[0x277D84F90];
LABEL_44:
    v0[21] = v67;
    v70 = swift_task_alloc();
    v0[22] = v70;
    *v70 = v0;
    v70[1] = sub_2759B1704;

    return sub_2759B2078(v67);
  }

  else
  {
    v66 = v25;
    sub_2759B8448();

    swift_willThrow();
LABEL_40:

    v68 = v0[1];

    return v68();
  }
}

uint64_t sub_2759B1704(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_2759B1918;
  }

  else
  {

    *(v4 + 192) = a1;
    v5 = sub_2759B185C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2759B185C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 192);

  return v1(v2);
}

uint64_t sub_2759B1918()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2759B19E0(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_275870B00(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECB8, &qword_2759C2698);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_2759B1B10(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_2759B1C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FE0, &unk_2759D1200);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 24);
  v9 = sub_2759B84B8();
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_2759B48B0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2758B677C;
  aBlock[3] = &block_descriptor_20;
  v12 = _Block_copy(aBlock);

  [v8 fetchItemForURL:v9 completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_2759B1E28(void *a1, id a2)
{
  if (!a2)
  {
LABEL_6:
    if (!a1)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v4 = a2;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A238A0);
  v6 = a2;
  v7 = sub_2759B8988();
  v8 = sub_2759BA648();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_2758937B8(0x6C69466863746566, 0xEF293A6C72752865, &v16);
    *(v9 + 12) = 2112;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_275819000, v7, v8, "%s received error: %@", v9, 0x16u);
    sub_27586BF04(v10, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);

    goto LABEL_6;
  }

  if (!a1)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

LABEL_9:
  v14 = a1;
  if ([v14 isShared] && !objc_msgSend(v14, sel_isSharedByCurrentUser))
  {

    goto LABEL_13;
  }

  v16 = a1;
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FE0, &unk_2759D1200);
  return sub_2759BA488();
}

uint64_t sub_2759B2078(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2759B2098, 0, 0);
}

uint64_t sub_2759B2098()
{
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  *(v0 + 40) = __swift_project_value_buffer(v1, qword_280A238A0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "ICSiCloudDriveFileProvider: fetching items from url list", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v10 = *(v0 + 24);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FC8, &qword_2759D11B0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FD0, &qword_2759D11B8);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *(v7 + 16) = v10;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_2759B2274;

  return MEMORY[0x282200600](v0 + 16, v5, v6, 0, 0, &unk_2759D11C8, v7, v5);
}

uint64_t sub_2759B2274()
{

  return MEMORY[0x2822009F8](sub_2759B238C, 0, 0);
}

uint64_t sub_2759B238C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "ICSiCloudDriveFileProvider: fetch files from urls, returning result", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = *(v1 + 8);

  return v6(v2);
}

uint64_t sub_2759B2468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FD8, &qword_2759D11D8);
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = sub_2759B8508();
  v4[20] = v6;
  v7 = *(v6 - 8);
  v4[21] = v7;
  v4[22] = *(v7 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759B25EC, 0, 0);
}

uint64_t sub_2759B25EC()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 168);
    v32 = *(v3 + 16);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v31 = **(v0 + 96);
    v30 = (v4 + 40) & ~v4;
    v28 = (v3 + 8);
    v29 = (v3 + 32);
    v27 = *(v3 + 72);
    do
    {
      v35 = v2;
      v10 = *(v0 + 184);
      v9 = *(v0 + 192);
      v11 = *(v0 + 160);
      v12 = *(v0 + 128);
      v33 = *(v0 + 120);
      v34 = v5;
      v13 = *(v0 + 112);
      v32(v9);
      v14 = sub_2759BA518();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v12, 1, 1, v14);
      (v32)(v10, v9, v11);
      v16 = swift_allocObject();
      *(v16 + 2) = 0;
      *(v16 + 3) = 0;
      *(v16 + 4) = v13;
      (*v29)(&v16[v30], v10, v11);
      sub_27586FBC8(v12, v33, &unk_280A0E510, &qword_2759C33C0);
      LODWORD(v11) = (*(v15 + 48))(v33, 1, v14);

      v17 = *(v0 + 120);
      if (v11 == 1)
      {
        sub_27586BF04(*(v0 + 120), &unk_280A0E510, &qword_2759C33C0);
      }

      else
      {
        sub_2759BA508();
        (*(v15 + 8))(v17, v14);
      }

      if (*(v16 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_2759BA468();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = swift_allocObject();
      *(v21 + 16) = &unk_2759D11F0;
      *(v21 + 24) = v16;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FC8, &qword_2759D11B0);
      v22 = v20 | v18;
      if (v20 | v18)
      {
        v22 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      v6 = *(v0 + 192);
      v7 = *(v0 + 160);
      v8 = *(v0 + 128);
      *(v0 + 48) = 1;
      *(v0 + 56) = v22;
      *(v0 + 64) = v31;
      swift_task_create();

      sub_27586BF04(v8, &unk_280A0E510, &qword_2759C33C0);
      (*v28)(v6, v7);
      v5 = v34 + v27;
      v2 = v35 - 1;
    }

    while (v35 != 1);
  }

  v23 = MEMORY[0x277D84F90];
  *(v0 + 72) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FC8, &qword_2759D11B0);
  sub_2759BA498();
  *(v0 + 200) = v23;
  v24 = swift_task_alloc();
  *(v0 + 208) = v24;
  *v24 = v0;
  v24[1] = sub_2759B2A30;
  v25 = *(v0 + 136);

  return MEMORY[0x2822002E8](v0 + 80, 0, 0, v25);
}

uint64_t sub_2759B2A30()
{

  return MEMORY[0x2822009F8](sub_2759B2B2C, 0, 0);
}

uint64_t sub_2759B2B2C()
{
  v1 = v0[10];
  if (v1 == 1)
  {
    v5 = v0[25];
    v6 = v0[11];
    (*(v0[18] + 8))(v0[19], v0[17]);
    *v6 = v5;

    v7 = v0[1];

    return v7();
  }

  else
  {
    if (v1)
    {
      v2 = v1;
      MEMORY[0x277C84160]();
      if (*((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2759BA3F8();
      }

      sub_2759BA418();
      sub_27581DE0C(v1);
      v0[25] = v0[9];
    }

    v3 = swift_task_alloc();
    v0[26] = v3;
    *v3 = v0;
    v3[1] = sub_2759B2A30;
    v4 = v0[17];

    return MEMORY[0x2822002E8](v0 + 10, 0, 0, v4);
  }
}

uint64_t sub_2759B2CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_2759B2D18, 0, 0);
}

uint64_t sub_2759B2D18()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FC8, &qword_2759D11B0);
  *v2 = v0;
  v2[1] = sub_2759B2E20;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x6C69466863746566, 0xEF293A6C72752865, sub_2759B48A8, v1, v3);
}

uint64_t sub_2759B2E20()
{

  return MEMORY[0x2822009F8](sub_2759B2F38, 0, 0);
}

uint64_t sub_2759B2F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_2759B8508();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759B3018, 0, 0);
}

uint64_t sub_2759B3018()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CC6400]) initWithProviderDomainID:v0[19] itemIdentifier:v0[20]];
  v0[25] = v1;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_275819000, v4, v5, "ICSiCloudDriveFileProvider: Fetching url for item %@", v6, 0xCu);
    sub_27586BF04(v7, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v7, -1, -1);
    MEMORY[0x277C85860](v6, -1, -1);
  }

  v9 = v0[24];
  v10 = v0[21];

  v11 = *(v10 + 24);
  v0[26] = v11;
  v0[2] = v0;
  v0[7] = v9;
  v0[3] = sub_2759B3280;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FF0, &unk_2759D1220);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2759B34C0;
  v0[13] = &block_descriptor_45;
  v0[14] = v12;
  [v11 fetchURLForItemID:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2759B3280()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_2759B3438;
  }

  else
  {
    v2 = sub_2759B3390;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2759B3390()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);

  (*(v3 + 32))(v5, v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2759B3438(uint64_t a1)
{
  v2 = v1[26];
  v3 = v1[25];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_2759B34C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2759B8508();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return MEMORY[0x282200958](v9, v10);
  }

  else
  {
    sub_2759B84C8();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_2759B3630(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2759B3650, 0, 0);
}

uint64_t sub_2759B3650()
{
  v13 = v0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A238A0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2758937B8(0xD000000000000014, 0x80000002759E41F0, &v12);
    _os_log_impl(&dword_275819000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x277C85860](v5, -1, -1);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v6 = sub_2759AED90();
  v0[4] = v6;
  v7 = v6;
  v8 = *MEMORY[0x277CC62E8];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_2759B3868;
  v10 = v0[2];

  return sub_2759B2F54(v10, v7, v8);
}

uint64_t sub_2759B3868()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2759B39E0;
  }

  else
  {
    v2 = sub_2759B397C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2759B397C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2759B39E0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ICSiCloudDriveFileProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return v0;
}

uint64_t ICSiCloudDriveFileProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_2759B3ACC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2759B3B5C;

  return sub_2759AF400();
}

uint64_t sub_2759B3B5C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2759B3C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_2759B3C84, 0, 0);
}

uint64_t sub_2759B3C84()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2759B3D88;
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD00000000000002FLL, 0x80000002759E41C0, sub_2759B4A60, v3, v6);
}

uint64_t sub_2759B3D88()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2759B4A64;
  }

  else
  {

    v2 = sub_2759B4A70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_2759B3EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  a5[7] = a6;
  a5[8] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5 + 4);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[9] = a1;
  a5[2] = a2;
  a5[3] = a3;
  return a5;
}

unint64_t sub_2759B3F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12FB8;
  if (!qword_280A12FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12FB8);
  }

  return result;
}

uint64_t dispatch thunk of ICSFileProviding.allFiles()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2759B4A68;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ICSFileProviding.syncContainer(_:observingContainers:notifyURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2759B4A68;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ICSiCloudDriveFileProvider.allFiles()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_275875130;

  return v4();
}

uint64_t dispatch thunk of ICSiCloudDriveFileProvider.syncContainer(_:observingContainers:notifyURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 184) + **(*v3 + 184));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_275875130;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of ICSiCloudDriveFileProvider.iCloudDriveRootURL()(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_27585A7E4;

  return v6(a1);
}

unint64_t sub_2759B45F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A12FC0;
  if (!qword_280A12FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12FC0);
  }

  return result;
}

uint64_t sub_2759B4644(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_27585A7E4;

  return sub_2759B2468(a1, a2, v7, v6);
}

uint64_t sub_2759B46F8(uint64_t a1)
{
  v4 = *(sub_2759B8508() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_2759B2CF4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2759B47F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585F7A0;

  return sub_2759353A8(a1, v4);
}

uint64_t sub_2759B48B0(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FE0, &unk_2759D1200);

  return sub_2759B1E28(a1, a2);
}

double block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_2759B4980()
{
  result = qword_280A13000;
  if (!qword_280A13000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A13000);
  }

  return result;
}

uint64_t sub_2759B49CC(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FF8, qword_2759D1230);
  v5 = *(v2 + 16);

  return sub_2759AFFCC(a1, a2, v5);
}

uint64_t sub_2759B4A74(uint64_t a1, uint64_t a2)
{
  v3 = sub_2759B8288();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_2759B8258();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2759B4B68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2759B8CE8();

  return v1;
}

uint64_t sub_2759B4BF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings22MessagesDrilldownModel_messagesDeleteCompletedObserver);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  v4 = OBJC_IVAR____TtC14iCloudSettings22MessagesDrilldownModel__daysUntilDelete;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5A0, &qword_2759C4008);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MessagesDrilldownModel(uint64_t a1)
{
  result = qword_280A13018;
  if (!qword_280A13018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2759B4D64(uint64_t a1)
{
  sub_2759B57C8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2759B4DFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v28 - v1;
  v3 = sub_2759B8578();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = [objc_opt_self() sharedInstance];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 exitDate];

    if (v17)
    {
      sub_2759B8558();

      v28 = *(v4 + 32);
      v29 = v14;
      v28(v14, v12, v3);
      sub_2759B8548();
      v18 = sub_2759BA518();
      (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
      v19 = v30;
      (*(v4 + 16))(v30, v9, v3);
      sub_2759BA4C8();
      v20 = v31;

      v21 = sub_2759BA4B8();
      v22 = v2;
      v23 = v20;
      v24 = (*(v4 + 80) + 40) & ~*(v4 + 80);
      v25 = swift_allocObject();
      v26 = MEMORY[0x277D85700];
      *(v25 + 2) = v21;
      *(v25 + 3) = v26;
      *(v25 + 4) = v23;
      v28(&v25[v24], v19, v3);
      sub_27587D460(0, 0, v22, &unk_2759D12E8, v25);

      v27 = *(v4 + 8);
      v27(v9, v3);
      v27(v29, v3);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2759B5140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_2759B8578();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = sub_2759B85D8();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = sub_2759B8618();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = sub_2759B8348();
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();
  sub_2759BA4C8();
  v5[18] = sub_2759BA4B8();
  v11 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759B5348, v11, v10);
}

uint64_t sub_2759B5348()
{
  v1 = v0;
  v2 = v0[17];
  v21 = v0[16];
  v22 = v0[15];
  v5 = v0 + 13;
  v3 = v0[13];
  v4 = v5[1];
  v6 = v1[11];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[7];
  v19 = v1[6];
  v20 = v1[12];
  v18 = v1[8];

  (*(v8 + 104))(v6, *MEMORY[0x277CC9830], v7);
  sub_2759B85E8();
  (*(v8 + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A13030, &qword_2759D12F0);
  v10 = sub_2759B8608();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2759C17A0;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x277CC9968], v10);
  sub_2759B5F20(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  sub_2759B8568();
  sub_2759B85F8();

  (*(v9 + 8))(v18, v19);
  (*(v3 + 8))(v4, v20);
  v14 = sub_2759B8338();
  LOBYTE(v13) = v15;
  (*(v21 + 8))(v2, v22);
  swift_getKeyPath();
  swift_getKeyPath();
  v1[2] = v14;
  *(v1 + 24) = v13 & 1;

  sub_2759B8CF8();

  v16 = v1[1];

  return v16();
}

uint64_t sub_2759B5634()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_280A0E3F0 != -1)
  {
    swift_once();
  }

  v2 = qword_280A23AA0;
  v3 = [objc_opt_self() mainQueue];
  v4 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_2759B5A34;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2759B4A74;
  v8[3] = &block_descriptor_21;
  v5 = _Block_copy(v8);

  v6 = [v1 addObserverForName:v2 object:0 queue:v3 usingBlock:v5];
  _Block_release(v5);

  *(v0 + OBJC_IVAR____TtC14iCloudSettings22MessagesDrilldownModel_messagesDeleteCompletedObserver) = v6;
  return swift_unknownObjectRelease();
}

void sub_2759B57C8(uint64_t a1)
{
  if (!qword_280A13028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F5A8, &qword_2759C4010);
    v1 = sub_2759B8D08();
    if (!v2)
    {
      atomic_store(v1, &qword_280A13028);
    }
  }
}

double sub_2759B582C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_2759BA518();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_27587DA58(0, 0, v5, &unk_2759D12D8, v7);

  return result;
}

uint64_t sub_2759B5938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2759B5958, 0, 0);
}

uint64_t sub_2759B5958()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2759B4DFC();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2759B59F4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MessagesDrilldownModel(0);
  result = sub_2759B8CC8();
  *a2 = result;
  return result;
}

double block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2759B5A54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2759B5938(a1, v4, v5, v6);
}

uint64_t sub_2759B5B08(uint64_t a1)
{
  v4 = *(sub_2759B8578() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_2759B5140(a1, v6, v7, v8, v1 + v5);
}

void sub_2759B5C00(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2759B8CE8();

  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t sub_2759B5C88(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2759B8CF8();
}

void sub_2759B5D34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2759BA8A8();
    v6 = 0;
    v7 = v5 + 56;
    v26 = v3;
    v27 = a1 + 32;
    v8 = v3;
    do
    {
      v9 = *(v27 + 8 * v6);
      sub_2759BA298();
      sub_2759BABD8();
      v28 = v9;
      sub_2759BA328();
      v10 = sub_2759BAC08();

      v11 = -1 << *(v5 + 32);
      v12 = v10 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v7 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = sub_2759BA298();
        v19 = v18;
        if (v17 == sub_2759BA298() && v19 == v20)
        {

LABEL_4:
          v8 = v26;
          goto LABEL_5;
        }

        v22 = sub_2759BAAC8();

        if (v22)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v8 = v26;
LABEL_15:
      *(v7 + 8 * v13) = v15 | v14;
      *(*(v5 + 48) + 8 * v12) = v28;
      v23 = *(v5 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        __break(1u);
        return;
      }

      *(v5 + 16) = v25;
LABEL_5:
      ++v6;
    }

    while (v6 != v8);
  }
}

uint64_t sub_2759B5F20(uint64_t a1)
{
  v2 = sub_2759B8608();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A13038, &unk_2759D1340);
    v9 = sub_2759BA8A8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2759B6218(&qword_280A13040, MEMORY[0x277CC99D8]);
      v16 = sub_2759BA218();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2759B6218(&qword_280A13048, MEMORY[0x277CC99E0]);
          v23 = sub_2759BA228();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2759B6218(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2759B8608();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}