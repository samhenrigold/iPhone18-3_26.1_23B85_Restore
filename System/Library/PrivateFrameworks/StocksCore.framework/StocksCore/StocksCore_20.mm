uint64_t sub_1DAC2466C(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v6 = type metadata accessor for NetworkEvent(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB8754();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v43 = v12;
    v45 = *(*(v3 + qword_1EE122628) + 16);
    v13 = *(v46 + 16);
    v14 = MEMORY[0x1E69E7D40];
    v15 = *((*MEMORY[0x1E69E7D40] & *a1) + qword_1EE13E480 + 88);
    swift_beginAccess();
    v16 = *(a1 + v15);
    v17 = *(v16 + 16);
    if (v17)
    {
      v42 = v45 - v13;
      v41 = (a1 + *((*v14 & *a1) + qword_1EE13E480 + 64));
      v18 = *(v10 + 16);
      v39 = v9;
      v40 = v18;
      v19 = v10 + 16;
      v20 = v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v37 = *(v19 + 56);
      v38 = v19;
      v36 = (v19 + 16);
      v21 = v16;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v35 = v21;
      sub_1DACB71E4();
      v44 = a3;
      do
      {
        v22 = v43;
        v23 = v39;
        v40(v43, v20, v39);
        v25 = v41[3];
        v24 = v41[4];
        v47 = __swift_project_boxed_opaque_existential_1(v41, v25);
        sub_1DAA8C2EC(0);
        v27 = &v8[*(v26 + 48)];
        (*v36)(v8, v22, v23);
        v28 = v46;
        v29 = v42;
        *v27 = v45;
        *(v27 + 1) = v29;
        v30 = v8;
        v31 = v44;
        *(v27 + 2) = v28;
        *(v27 + 3) = v31;
        *(v27 + 4) = 0;
        *(v27 + 5) = 0;
        swift_storeEnumTagMultiPayload();
        v32 = v6;
        v33 = *(v24 + 16);
        sub_1DACB71E4();
        v8 = v30;
        sub_1DACB71E4();
        v33(v30, v25, v24);
        v6 = v32;
        sub_1DAC25E7C(v30, type metadata accessor for NetworkEvent);
        v20 += v37;
        --v17;
      }

      while (v17);
    }
  }
}

void sub_1DAC24A04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v63 = a1;
  v68 = a3;
  v67 = sub_1DACB7BD4();
  v73 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1DACB7BB4();
  v70 = *(v64 - 8);
  v5 = v70;
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1DACB7B94();
  v69 = *(v60 - 8);
  v7 = v69;
  MEMORY[0x1EEE9AC00](v60);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1DACB7BA4();
  v10 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1DACB7BE4();
  v13 = MEMORY[0x1EEE9AC00](v61);
  v56 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = v63;
  v72 = a2;
  v15 = *(v10 + 104);
  v54 = *MEMORY[0x1E6969360];
  v55 = (v10 + 104);
  v53 = v15;
  v15(v12);
  v16 = *(v7 + 104);
  v51 = *MEMORY[0x1E6969358];
  v52 = v7 + 104;
  v50 = v16;
  v16(v9);
  v17 = v5 + 104;
  v18 = *(v5 + 104);
  v19 = v62;
  v48 = *MEMORY[0x1E6969370];
  v20 = v64;
  v49 = v17;
  v47 = v18;
  v18(v62);
  v21 = v73;
  v22 = *(v73 + 104);
  v23 = v65;
  v45 = *MEMORY[0x1E6969380];
  v24 = v67;
  v46 = v73 + 104;
  v44 = v22;
  v22(v65);
  sub_1DACB71E4();
  sub_1DACB8C54();
  v25 = *(v21 + 8);
  v73 = v21 + 8;
  v43 = v25;
  v25(v23, v24);
  v26 = *(v70 + 8);
  v70 += 8;
  v26(v19, v20);
  v27 = *(v69 + 8);
  v28 = v9;
  v69 += 8;
  v42 = v27;
  v27(v9, v60);
  v29 = *(v10 + 8);
  v30 = v12;
  v31 = v12;
  v32 = v59;
  v57 = v10 + 8;
  v29(v31);
  v33 = sub_1DAC25DCC(&qword_1EE125290, MEMORY[0x1E69693A0], MEMORY[0x1E6969398]);
  v34 = v58;
  sub_1DACB7CD4();
  if (v34)
  {
    v71 = v63;
    v72 = v66;
    v63 = v33;
    v35 = v30;
    v53(v30, v54, v32);
    v58 = v29;
    v36 = v28;
    v37 = v60;
    v50(v28, v51, v60);
    v38 = v62;
    v39 = v64;
    v47(v62, v48, v64);
    v55 = v26;
    v40 = v65;
    v41 = v67;
    v44(v65, v45, v67);
    sub_1DACB71E4();
    sub_1DACB8C54();
    v43(v40, v41);
    v55(v38, v39);
    v42(v36, v37);
    (v58)(v35, v59);
    sub_1DACB7CD4();
  }
}

uint64_t sub_1DAC25084(uint64_t a1)
{
  v2 = sub_1DAC26178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC250C0(uint64_t a1)
{
  v2 = sub_1DAC26178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC25144(void *a1)
{
  sub_1DAC26110(0, &qword_1ECBE91E8, sub_1DAC26178, &type metadata for SDSQuoteOperation.SDSTimestampParseStrategy.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC26178();
  sub_1DACBA304();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DAC25320()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE122670));
  v1 = qword_1EE122660;
  v2 = sub_1DACB7CC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EE122668;
  v4 = sub_1DACB8204();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
}

uint64_t sub_1DAC253F8(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE122670));
  v2 = qword_1EE122660;
  v3 = sub_1DACB7CC4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = qword_1EE122668;
  v5 = sub_1DACB8204();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
}

uint64_t sub_1DAC254D4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAC220B4(sub_1DAADF554, v4);
}

uint64_t sub_1DAC2555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return sub_1DACB7F84();
}

uint64_t sub_1DAC255B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454E0](a1, a2, ObjectType, a6);
}

void *sub_1DAC2561C()
{
  swift_getObjectType();

  return sub_1DACB7F94();
}

uint64_t sub_1DAC2568C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454D8](a1, a2, a3, a4, ObjectType, a8);
}

void sub_1DAC25714(uint64_t a1)
{
  if (!qword_1EE11FC98)
  {
    type metadata accessor for Quote(255);
    v1 = sub_1DACB91A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FC98);
    }
  }
}

void sub_1DAC25798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAC257FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA616D4(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DAC2589C(uint64_t a1)
{
  if (!qword_1EE11FEE0)
  {
    sub_1DAC26110(255, &qword_1EE120B40, sub_1DAAD81E0, &type metadata for SDSQuoteResponse, type metadata accessor for SDSBaseOperationResponse);
    v1 = sub_1DACB89E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FEE0);
    }
  }
}

uint64_t sub_1DAC25948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAC259B0(void *a1)
{
  v3 = type metadata accessor for NetworkEvent(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB8754();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = MEMORY[0x1E69E7D40];
    v12 = *((*MEMORY[0x1E69E7D40] & *a1) + qword_1EE13E480 + 88);
    swift_beginAccess();
    result = *(a1 + v12);
    v13 = *(result + 16);
    if (v13)
    {
      v33 = (a1 + *((*v11 & *a1) + qword_1EE13E480 + 64));
      v14 = *(*(v1 + qword_1EE122628) + 16);
      v16 = *(v7 + 16);
      v15 = v7 + 16;
      v31 = v16;
      v32 = v14;
      v17 = result + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v18 = *(v15 + 56);
      v29 = (v15 + 16);
      v30 = v18;
      v28 = result;
      sub_1DACB71E4();
      v34 = v15;
      do
      {
        v31(v10, v17, v6);
        v19 = v10;
        v20 = v33[3];
        v21 = v33[4];
        __swift_project_boxed_opaque_existential_1(v33, v20);
        sub_1DAA8C2EC(0);
        v23 = v3;
        v24 = &v5[*(v22 + 48)];
        (*v29)(v5, v19, v6);
        *v24 = v32;
        *(v24 + 1) = 0;
        v25 = MEMORY[0x1E69E7CC0];
        *(v24 + 2) = MEMORY[0x1E69E7CC0];
        *(v24 + 3) = v25;
        *(v24 + 4) = 0;
        *(v24 + 5) = 0;
        v3 = v23;
        swift_storeEnumTagMultiPayload();
        v26 = *(v21 + 16);
        v27 = v21;
        v10 = v19;
        v26(v5, v20, v27);
        sub_1DAC25E7C(v5, type metadata accessor for NetworkEvent);
        v17 += v30;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

void sub_1DAC25C98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_1DACB9904();
    sub_1DAC25798(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1DACC1D20;
    v4 = MEMORY[0x1E69E6158];
    v5 = MEMORY[0x1E1277130](a1, MEMORY[0x1E69E6158]);
    v7 = v6;
    *(v3 + 56) = v4;
    *(v3 + 64) = sub_1DAA443C8();
    *(v3 + 32) = v5;
    *(v3 + 40) = v7;
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v8 = sub_1DACB9AD4();
    sub_1DACB8C64("SDS quote response is missing entries for %{public}@", 52, 2, &dword_1DAA3F000, v8, v2, v3);
  }
}

uint64_t sub_1DAC25DCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAC25E14(uint64_t a1)
{
  if (!qword_1EE11F790)
  {
    sub_1DAA420F4(255, &qword_1EE11F798, 0x1E69E58C0);
    v1 = sub_1DACB9AF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F790);
    }
  }
}

uint64_t sub_1DAC25E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAC25EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAC25798(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DAC25F4C()
{
  result = qword_1EE122650;
  if (!qword_1EE122650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122650);
  }

  return result;
}

unint64_t sub_1DAC25FB4()
{
  result = qword_1EE122638;
  if (!qword_1EE122638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122638);
  }

  return result;
}

unint64_t sub_1DAC2600C()
{
  result = qword_1EE122630;
  if (!qword_1EE122630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122630);
  }

  return result;
}

unint64_t sub_1DAC26064()
{
  result = qword_1EE122648;
  if (!qword_1EE122648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122648);
  }

  return result;
}

unint64_t sub_1DAC260BC()
{
  result = qword_1EE122640;
  if (!qword_1EE122640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122640);
  }

  return result;
}

void sub_1DAC26110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAC26178()
{
  result = qword_1ECBE91F0;
  if (!qword_1ECBE91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91F0);
  }

  return result;
}

unint64_t sub_1DAC261E0()
{
  result = qword_1ECBE91F8;
  if (!qword_1ECBE91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE91F8);
  }

  return result;
}

unint64_t sub_1DAC26238()
{
  result = qword_1ECBE9200;
  if (!qword_1ECBE9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9200);
  }

  return result;
}

uint64_t sub_1DAC2628C(void *a1, uint64_t a2)
{
  sub_1DAC27614(0, &qword_1ECBE9250, sub_1DAC27100, &type metadata for TestStockFeedService.TestData.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC27100();
  sub_1DACBA304();
  v10[1] = a2;
  sub_1DAC27154(0, &qword_1ECBE9228, &qword_1ECBE9230, &type metadata for TestStockFeedService.TestData.Article);
  sub_1DAC272EC();
  sub_1DACBA0E4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DAC26424(uint64_t a1)
{
  v2 = sub_1DAC275C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC26460(uint64_t a1)
{
  v2 = sub_1DAC275C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC2649C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1DAC27614(0, &qword_1ECBE9288, sub_1DAC275C0, &type metadata for TestStockFeedService.TestData.Article.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC275C0();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = sub_1DACB9FA4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t sub_1DAC2664C(void *a1)
{
  sub_1DAC27614(0, &qword_1ECBE9298, sub_1DAC275C0, &type metadata for TestStockFeedService.TestData.Article.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC275C0();
  sub_1DACBA304();
  sub_1DACBA094();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DAC267B4(uint64_t a1)
{
  v2 = sub_1DAC27100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC267F0(uint64_t a1)
{
  v2 = sub_1DAC27100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAC2682C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC26F24(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DAC26874(void *a1, uint64_t a2)
{
  sub_1DAC26EC0();
  sub_1DACB83F4();
  v4 = a1[11];
  v5 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v4);
  sub_1DAA61724(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DACC1D20;
  v7 = *(a2 + 24);
  *(v6 + 32) = *(a2 + 16);
  *(v6 + 40) = v7;
  sub_1DACB71E4();
  sub_1DAA9C8F8(v6, v4, v5);

  v8 = sub_1DACB89D4();
  v9 = sub_1DACB89C4();

  return v9;
}

uint64_t sub_1DAC26990(uint64_t a1, uint64_t a2, void *a3, __int128 *a4)
{
  v7 = a4[7];
  v58 = a4[6];
  v59 = v7;
  v60 = *(a4 + 16);
  v8 = a4[3];
  v54 = a4[2];
  v55 = v8;
  v9 = a4[5];
  v56 = a4[4];
  v57 = v9;
  v10 = a4[1];
  v52 = *a4;
  v53 = v10;
  v11 = sub_1DAB85A94(a2);
  if (!v11)
  {
    goto LABEL_14;
  }

  if (!v11[2])
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v11[4];
  v12 = v11[5];
  sub_1DACB71E4();

  if (!*(a1 + 16))
  {
LABEL_15:

    __break(1u);
    return result;
  }

  v14 = sub_1DAA4BF3C(v13, v12);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

  v17 = *(*(a1 + 56) + 8 * v14);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v31 = a3;
    *&v50[0] = MEMORY[0x1E69E7CC0];
    sub_1DACB71E4();
    sub_1DAA5859C(0, v18, 0);
    v19 = *&v50[0];
    v20 = (v17 + 40);
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      *&v50[0] = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      sub_1DACB71E4();
      if (v24 >= v23 >> 1)
      {
        sub_1DAA5859C((v23 > 1), v24 + 1, 1);
        v19 = *&v50[0];
      }

      *(v19 + 16) = v24 + 1;
      v25 = v19 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v21;
      v20 += 2;
      --v18;
    }

    while (v18);

    a3 = v31;
  }

  v26 = a3[6];
  v27 = a3[7];
  __swift_project_boxed_opaque_existential_1(a3 + 3, v26);
  v47 = v58;
  v48 = v59;
  v49 = v60;
  v43 = v54;
  v44 = v55;
  v45 = v56;
  v46 = v57;
  v41 = v52;
  v42 = v53;
  nullsub_1();
  v38 = v58;
  v39 = v59;
  v40 = v60;
  v34 = v54;
  v35 = v55;
  v36 = v56;
  v37 = v57;
  v32 = v52;
  v33 = v53;
  v28 = *(v27 + 8);
  sub_1DAA806E4(a4, v50);
  v29 = v28(v19, &v32, v26, v27);

  v50[6] = v38;
  v50[7] = v39;
  v51 = v40;
  v50[2] = v34;
  v50[3] = v35;
  v50[4] = v36;
  v50[5] = v37;
  v50[0] = v32;
  v50[1] = v33;
  sub_1DAB76B6C(v50);
  return v29;
}

uint64_t sub_1DAC26BFC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC26C68(__int128 *a1)
{
  v2 = *v1;
  v3 = a1[7];
  v23 = a1[6];
  v24 = v3;
  v25 = *(a1 + 16);
  v4 = a1[3];
  v19 = a1[2];
  v20 = v4;
  v5 = a1[5];
  v21 = a1[4];
  v22 = v5;
  v6 = a1[1];
  v17 = *a1;
  v18 = v6;
  sub_1DAC26DFC(0);
  sub_1DACB8BB4();
  v7 = swift_allocObject();
  v8 = v21;
  *(v7 + 104) = v22;
  v9 = v24;
  *(v7 + 120) = v23;
  *(v7 + 136) = v9;
  v10 = v17;
  *(v7 + 40) = v18;
  v11 = v20;
  *(v7 + 56) = v19;
  *(v7 + 72) = v11;
  *(v7 + 88) = v8;
  *(v7 + 16) = v2;
  *(v7 + 152) = v25;
  *(v7 + 24) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DAC26E7C;
  *(v12 + 24) = v7;
  sub_1DACB71F4();
  sub_1DAA806E4(&v17, v16);
  v13 = sub_1DACB89D4();
  sub_1DAAD4E00(0);
  v14 = sub_1DACB8A54();

  return v14;
}

void sub_1DAC26DFC(uint64_t a1)
{
  if (!qword_1ECBE9208)
  {
    sub_1DAC27154(255, &qword_1EE11FC60, &qword_1EE123EA0, MEMORY[0x1E69E6158]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE9208);
    }
  }
}

unint64_t sub_1DAC26EC0()
{
  result = qword_1ECBE9210;
  if (!qword_1ECBE9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9210);
  }

  return result;
}

void *sub_1DAC26F24(void *a1)
{
  sub_1DAC27614(0, &qword_1ECBE9218, sub_1DAC27100, &type metadata for TestStockFeedService.TestData.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC27100();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAC27154(0, &qword_1ECBE9228, &qword_1ECBE9230, &type metadata for TestStockFeedService.TestData.Article);
    sub_1DAC271D0();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1DAC27100()
{
  result = qword_1ECBE9220;
  if (!qword_1ECBE9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9220);
  }

  return result;
}

void sub_1DAC27154(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DAA61724(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1DACB91A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DAC271D0()
{
  result = qword_1ECBE9238;
  if (!qword_1ECBE9238)
  {
    sub_1DAC27154(255, &qword_1ECBE9228, &qword_1ECBE9230, &type metadata for TestStockFeedService.TestData.Article);
    sub_1DAC273B4(&qword_1ECBE9240, sub_1DAC27298, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9238);
  }

  return result;
}

unint64_t sub_1DAC27298()
{
  result = qword_1ECBE9248;
  if (!qword_1ECBE9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9248);
  }

  return result;
}

unint64_t sub_1DAC272EC()
{
  result = qword_1ECBE9258;
  if (!qword_1ECBE9258)
  {
    sub_1DAC27154(255, &qword_1ECBE9228, &qword_1ECBE9230, &type metadata for TestStockFeedService.TestData.Article);
    sub_1DAC273B4(&qword_1ECBE9260, sub_1DAC27444, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9258);
  }

  return result;
}

uint64_t sub_1DAC273B4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA61724(255, &qword_1ECBE9230, &type metadata for TestStockFeedService.TestData.Article, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC27444()
{
  result = qword_1ECBE9268;
  if (!qword_1ECBE9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9268);
  }

  return result;
}

unint64_t sub_1DAC274BC()
{
  result = qword_1ECBE9270;
  if (!qword_1ECBE9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9270);
  }

  return result;
}

unint64_t sub_1DAC27514()
{
  result = qword_1ECBE9278;
  if (!qword_1ECBE9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9278);
  }

  return result;
}

unint64_t sub_1DAC2756C()
{
  result = qword_1ECBE9280;
  if (!qword_1ECBE9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9280);
  }

  return result;
}

unint64_t sub_1DAC275C0()
{
  result = qword_1ECBE9290;
  if (!qword_1ECBE9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9290);
  }

  return result;
}

void sub_1DAC27614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAC27690()
{
  result = qword_1ECBE92A0;
  if (!qword_1ECBE92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE92A0);
  }

  return result;
}

unint64_t sub_1DAC276E8()
{
  result = qword_1ECBE92A8;
  if (!qword_1ECBE92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE92A8);
  }

  return result;
}

unint64_t sub_1DAC27740()
{
  result = qword_1ECBE92B0;
  if (!qword_1ECBE92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE92B0);
  }

  return result;
}

uint64_t sub_1DAC277B8(uint64_t a1, char *a2, char *a3)
{
  v59 = a1;
  v61 = 0x73752D6E65;
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB7CC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4D678(v3 + 16, v67);
  v55 = v11;
  v14 = *(v11 + 16);
  v56 = v10;
  v54 = v14;
  v14(v13, a2, v10);
  v58 = v7;
  v15 = *(v7 + 16);
  v57 = v9;
  v60 = v6;
  v53 = v15;
  v15(v9, a3, v6);
  v16 = [objc_opt_self() sharedPreferences];
  v17 = v16;
  if (!v16)
  {
    v52 = 0xE500000000000000;
LABEL_8:

    v50 = 0xE200000000000000;
    v49 = 21333;
    goto LABEL_9;
  }

  v18 = [v16 stocksLanguageCode];
  if (v18)
  {
    v19 = v18;
    v61 = sub_1DACB9324();
    v52 = v20;
  }

  else
  {
    v52 = 0xE500000000000000;
  }

  v21 = [v17 stocksCountryCode];
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  v49 = sub_1DACB9324();
  v50 = v23;

LABEL_9:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v67, v67[3]);
  v51 = &v48;
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  v29 = type metadata accessor for YahooBaseOperationFactory();
  v65 = v29;
  v66 = &off_1F56825C8;
  v64[0] = v28;
  v30 = type metadata accessor for YahooMultiQuoteOperation(0);
  v31 = objc_allocWithZone(v30);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v48 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v63[3] = v29;
  v63[4] = &off_1F56825C8;
  v63[0] = v36;
  *&v31[qword_1EE126B00] = v59;
  sub_1DAA4D678(v63, &v31[qword_1EE126B08]);
  v37 = &v31[qword_1EE126B10];
  v38 = v52;
  *v37 = v61;
  v37[1] = v38;
  v39 = v50;
  v37[2] = v49;
  v37[3] = v39;
  v40 = v56;
  v54(&v31[qword_1ECBE9340], v13, v56);
  v41 = v57;
  v42 = v60;
  v53(&v31[qword_1EE126B18], v57, v60);
  v62.receiver = v31;
  v62.super_class = v30;
  sub_1DACB71E4();
  v43 = objc_msgSendSuper2(&v62, sel_init);
  (*(v58 + 8))(v41, v42);
  (*(v55 + 8))(v13, v40);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v67);
  sub_1DAC28494(0);
  sub_1DACB82E4();
  v44 = v43;
  sub_1DACB8294();
  sub_1DACB8B84();

  v45 = sub_1DACB89D4();
  sub_1DAC28520(0, &qword_1EE11FC98, type metadata accessor for Quote, MEMORY[0x1E69E5E28]);
  v46 = sub_1DACB8A64();

  return v46;
}

uint64_t sub_1DAC27DEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for Quote(0);
  v60 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for YahooMultiQuoteItem(0);
  v59 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_1DAC28520(0, &unk_1EE11F6E0, type metadata accessor for Quote, MEMORY[0x1E69E6EC8]);
  result = sub_1DACB9E74();
  v11 = result;
  v12 = 0;
  v13 = *(v9 + 64);
  v54 = v9 + 64;
  v58 = v9;
  v14 = 1 << *(v9 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v56 = result + 64;
  v57 = result;
  v55 = v17;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v61 = (v16 - 1) & v16;
LABEL_10:
      v85 = v18 | (v12 << 6);
      v21 = *(v58 + 56);
      v22 = (*(v58 + 48) + 16 * v85);
      v24 = *v22;
      v23 = v22[1];
      v86 = v24;
      v68 = v23;
      sub_1DAC28594(v21 + *(v59 + 72) * v85, v8, type metadata accessor for YahooMultiQuoteItem);
      v25 = v6[6];
      v26 = &v8[v6[5]];
      v84 = *v26;
      v83 = v26[8];
      v82 = *&v8[v25];
      v81 = v8[v25 + 8];
      v27 = v6[8];
      v28 = &v8[v6[7]];
      v80 = *v28;
      v79 = v28[8];
      v78 = *&v8[v27];
      v77 = v8[v27 + 8];
      v29 = v6[10];
      v30 = &v8[v6[9]];
      v76 = *v30;
      v75 = v30[8];
      v74 = *&v8[v29];
      v73 = v8[v29 + 8];
      v31 = v6[12];
      v32 = &v8[v6[11]];
      v72 = *v32;
      v71 = v32[8];
      v33 = *&v8[v31 + 8];
      v70 = *&v8[v31];
      v62 = v33;
      v69 = v8[v6[13]];
      v34 = v3[13];
      v35 = sub_1DACB7CC4();
      v36 = *(*(v35 - 8) + 56);
      v36(&v5[v34], 1, 1, v35);
      v36(&v5[v3[14]], 1, 1, v35);
      sub_1DAC28594(&v8[v6[14]], &v5[v3[15]], sub_1DAA492B4);
      v37 = v8[v6[18]];
      v66 = v8[v6[17]];
      v67 = v37;
      v38 = v8[v6[19]];
      v39 = &v8[v6[20]];
      v65 = *v39;
      LODWORD(v39) = v39[8];
      v63 = v38;
      v64 = v39;
      v36(&v5[v3[20]], 1, 1, v35);
      v36(&v5[v3[21]], 1, 1, v35);
      v40 = v62;
      v41 = v68;
      sub_1DAC28594(v8, &v5[v3[23]], sub_1DAA492B4);
      v42 = qword_1EE123A08;
      sub_1DACB71E4();
      sub_1DACB71E4();
      if (v42 != -1)
      {
        swift_once();
      }

      v43 = sub_1DACB7F54();
      v44 = __swift_project_value_buffer(v43, qword_1EE13E458);
      (*(*(v43 - 8) + 16))(&v5[v3[24]], v44, v43);
      sub_1DACB7CB4();
      sub_1DAC285FC(v8);
      *v5 = v84;
      v5[8] = v83;
      *(v5 + 2) = v82;
      v5[24] = v81;
      *(v5 + 4) = v80;
      v5[40] = v79;
      *(v5 + 6) = v78;
      v5[56] = v77;
      *(v5 + 8) = v76;
      v5[72] = v75;
      *(v5 + 10) = v74;
      v5[88] = v73;
      *(v5 + 12) = v72;
      v5[104] = v71;
      *(v5 + 14) = v70;
      *(v5 + 15) = v40;
      v5[128] = v69;
      v45 = v67;
      v5[v3[16]] = v66;
      v5[v3[17]] = v45;
      v5[v3[18]] = v63;
      v46 = &v5[v3[19]];
      *v46 = v65;
      v46[8] = v64;
      v47 = v85;
      *(v56 + ((v85 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v85;
      v11 = v57;
      v48 = (*(v57 + 48) + 16 * v47);
      *v48 = v86;
      v48[1] = v41;
      result = sub_1DAA7BD70(v5, *(v11 + 56) + *(v60 + 72) * v47);
      v49 = *(v11 + 16);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        break;
      }

      *(v11 + 16) = v51;
      v17 = v55;
      v16 = v61;
      if (!v61)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        *v53 = v11;
        return result;
      }

      v20 = *(v54 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v61 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DAC28494(uint64_t a1)
{
  if (!qword_1EE126AF0)
  {
    sub_1DAC28520(255, &qword_1EE126AF8, type metadata accessor for YahooMultiQuoteItem, MEMORY[0x1E69E5E28]);
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE126AF0);
    }
  }
}

void sub_1DAC28520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAC28594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAC285FC(uint64_t a1)
{
  v2 = type metadata accessor for YahooMultiQuoteItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAC28658(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1DAA9A3B0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DAC287A4(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1DACB9E14();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1DACB9E14();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1DAC288A4(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1DAADC4CC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DAC2899C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1DAADC60C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DAC28A94(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1DAADC7E8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1DACB7684();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DAC28C24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DACB9E14();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1DACB9E14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DAA4208C(0, &unk_1EE11F9E0, &qword_1EE11F908, 0x1E69B52E0, MEMORY[0x1E69E62F8]);
          sub_1DAC28FB4(&qword_1EE11F9D8, &unk_1EE11F9E0, &qword_1EE11F908, 0x1E69B52E0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1DAB74CEC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1DAA420F4(0, &qword_1EE11F908, 0x1E69B52E0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC28DEC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DACB9E14();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1DACB9E14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DAA4208C(0, &qword_1EE11FA10, &qword_1EE11F938, 0x1E69B6E30, MEMORY[0x1E69E62F8]);
          sub_1DAC28FB4(&unk_1EE11FA00, &qword_1EE11FA10, &qword_1EE11F938, 0x1E69B6E30);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1DAB74D6C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1DAA420F4(0, &qword_1EE11F938, 0x1E69B6E30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC28FB4(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA4208C(255, a2, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

StocksCore::ChartRange_optional __swiftcall ChartRange.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DACB9F04();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChartRange.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x796144656E6FLL;
    v8 = 0x68746E6F4D656E6FLL;
    v9 = 0x6E6F4D6565726874;
    if (v1 != 3)
    {
      v9 = 0x68746E6F4D786973;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6B656557656E6FLL;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x7261655965766966;
    v3 = 0x73726165596E6574;
    if (v1 != 9)
    {
      v3 = 7105633;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x61446F5472616579;
    v5 = 0x72616559656E6FLL;
    if (v1 != 6)
    {
      v5 = 0x73726165596F7774;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1DAC291E4()
{
  result = qword_1EE11F0A0;
  if (!qword_1EE11F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F0A0);
  }

  return result;
}

uint64_t sub_1DAC29238()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAB08640(v3, v1);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC29288(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  sub_1DAB08640(v4, v2);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC292D8@<X0>(uint64_t *a1@<X8>)
{
  result = ChartRange.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DAC29300(uint64_t a1)
{
  v2 = sub_1DAC29414();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1DAC29354(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAC29414();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1DAC293B0(uint64_t a1)
{
  v2 = sub_1DAC29414();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1DAC29414()
{
  result = qword_1EE11F098;
  if (!qword_1EE11F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F098);
  }

  return result;
}

uint64_t type metadata accessor for SDSNewsOperation(uint64_t a1)
{
  result = qword_1ECBE92F8;
  if (!qword_1ECBE92F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAC294B8(uint64_t a1)
{
  result = sub_1DACB8204();
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

void sub_1DAC29574(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DACB7CC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1((v2 + qword_1ECBE92E0), *(v2 + qword_1ECBE92E0 + 24));
  sub_1DAC2B720(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D20;
  *(inited + 32) = 0x6C6F626D7973;
  *(inited + 40) = 0xE600000000000000;
  v10 = *(v2 + qword_1ECBE92D8 + 8);
  *(inited + 48) = *(v2 + qword_1ECBE92D8);
  *(inited + 56) = v10;
  sub_1DACB71E4();
  v11 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAC2B678(inited + 32, sub_1DAA4BD7C);
  v12 = qword_1ECBE92F0;
  sub_1DACB7CB4();
  v13 = sub_1DABF4244(1, v11, v8, (v2 + v12));

  (*(v6 + 8))(v8, v5);
  v14 = (v13 + *((*MEMORY[0x1E69E7D40] & *v13) + qword_1EE13E480 + 16));
  v15 = *v14;
  v16 = v14[1];
  *v14 = sub_1DAC29844;
  v14[1] = 0;
  sub_1DAA4F910(v15, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  v19 = v13;
  sub_1DACB71F4();
  sub_1DACB8304();

  [v19 start];
}

uint64_t sub_1DAC29890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DAC2B348(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC2B720(0, &qword_1ECBE9310, sub_1DAC2B348, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  sub_1DAC2B3A4(a2, &v25 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAC2B54C(v11, &qword_1ECBE9310, sub_1DAC2B348, MEMORY[0x1E69D6AF8], sub_1DAC2B720);
    sub_1DAA8C2EC(0);
    v13 = a3 + *(v12 + 48);
    v14 = sub_1DACB8754();
    (*(*(v14 - 8) + 16))(a3, a1, v14);
    *v13 = xmmword_1DACC2620;
    v15 = MEMORY[0x1E69E7CC0];
    *(v13 + 16) = MEMORY[0x1E69E7CC0];
    *(v13 + 24) = v15;
    type metadata accessor for NetworkEvent(0);
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
  }

  else
  {
    sub_1DAC2B438(v11, v8);
    v16 = sub_1DACB8754();
    (*(*(v16 - 8) + 16))(a3, a1, v16);
    sub_1DAC2B5AC(0, &qword_1ECBE9318, &type metadata for SDSNewsResponse, MEMORY[0x1E69D68E0]);
    sub_1DACB8794();
    v17 = v25;
    sub_1DAA75E60(v26, v27, v28, v29, v30);
    v18 = *(v17 + 16);

    sub_1DACB8794();

    v19 = v27;
    if (v27)
    {
      v20 = v26;
    }

    else
    {
      v20 = 0;
    }

    sub_1DAA8C2EC(0);
    v22 = (a3 + *(v21 + 48));
    sub_1DAC2B678(v8, sub_1DAC2B348);
    *v22 = 1;
    v22[1] = v18;
    v23 = MEMORY[0x1E69E7CC0];
    v22[2] = MEMORY[0x1E69E7CC0];
    v22[3] = v23;
    v22[4] = v20;
    v22[5] = v19;
    type metadata accessor for NetworkEvent(0);
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1DAC29BB4(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v55 = a4;
  v56 = a3;
  v67 = sub_1DACB8FB4();
  v5 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1DACB9004();
  v7 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC2B348(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC2B720(0, &qword_1ECBE9310, sub_1DAC2B348, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v53 - v13);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v54 = Strong;
    sub_1DAC2B3A4(a1, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *v14;
      v17 = *v14;
      v56(v16, 1);
    }

    else
    {
      sub_1DAC2B438(v14, v57);
      sub_1DAC2B5AC(0, &qword_1ECBE9318, &type metadata for SDSNewsResponse, MEMORY[0x1E69D68E0]);
      v19 = v18;
      sub_1DACB8794();

      v65 = v98;
      if (v98)
      {
        v20 = *&v54[qword_1ECBE92E8];
        v21 = *(v20 + 16);
        if (v21)
        {
          v63 = *(&v99 + 1);
          v64 = *(&v98 + 1);
          v53 = v19;
          v61 = v99;
          v62 = *(&v97 + 1);
          v22 = v20 + 32;
          v59 = (v5 + 8);
          v60 = &v98;
          v58 = (v7 + 8);
          do
          {
            sub_1DAA4D678(v22, &v88);
            v23 = __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
            v24 = *v23;
            if (*(*v23 + 24) == 1)
            {
              v25 = swift_allocObject();
              v26 = v61;
              v27 = v62;
              v25[2] = v24;
              v25[3] = v27;
              v28 = v64;
              v25[4] = v65;
              v25[5] = v28;
              v29 = v63;
              v25[6] = v26;
              v25[7] = v29;
              *&v99 = sub_1DABF4330;
              *(&v99 + 1) = v25;
              *&v97 = MEMORY[0x1E69E9820];
              *(&v97 + 1) = 1107296256;
              *&v98 = sub_1DAA5796C;
              *(&v98 + 1) = &block_descriptor_31;
              v30 = _Block_copy(&v97);
              sub_1DACB71F4();
              sub_1DACB71E4();
              sub_1DACB71E4();
              sub_1DACB71E4();
              sub_1DACB8FD4();
              *&v78 = MEMORY[0x1E69E7CC0];
              sub_1DAC2B6D8(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
              sub_1DAC2B720(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
              sub_1DAA6F790();
              v32 = v66;
              v31 = v67;
              sub_1DACB9BB4();
              MEMORY[0x1E1277440](0, v9, v32, v30);
              _Block_release(v30);
              (*v59)(v32, v31);
              (*v58)(v9, v68);
            }

            __swift_destroy_boxed_opaque_existential_1(&v88);
            v22 += 40;
            --v21;
          }

          while (v21);
        }
      }

      sub_1DACB8794();
      v33 = v97;
      sub_1DAA75E60(*(&v97 + 1), v98, *(&v98 + 1), v99, *(&v99 + 1));
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = 0;
        v36 = MEMORY[0x1E69E7CC0];
        v37 = (v33 + 32);
        while (v35 < *(v33 + 16))
        {
          v111[0] = *v37;
          v38 = v37[1];
          v39 = v37[2];
          v40 = v37[4];
          v111[3] = v37[3];
          v111[4] = v40;
          v111[1] = v38;
          v111[2] = v39;
          v41 = v37[3];
          v108 = v37[2];
          v109 = v41;
          v110 = v37[4];
          v42 = v37[1];
          v106 = *v37;
          v107 = v42;
          sub_1DAC2B49C(v111, &v97);
          sub_1DAC2A49C(&v106, &v97);
          v87[2] = v108;
          v87[3] = v109;
          v87[4] = v110;
          v87[0] = v106;
          v87[1] = v107;
          sub_1DAC2B4F8(v87);
          v94 = v103;
          v95 = v104;
          v96 = v105;
          v90 = v99;
          v91 = v100;
          v92 = v101;
          v93 = v102;
          v88 = v97;
          v89 = v98;
          if (sub_1DAB07190(&v88) == 1)
          {
            v84 = v103;
            v85 = v104;
            v86 = v105;
            v80 = v99;
            v81 = v100;
            v82 = v101;
            v83 = v102;
            v78 = v97;
            v79 = v98;
            sub_1DAC2B54C(&v78, &qword_1ECBE6DD0, &type metadata for Headline, MEMORY[0x1E69E6720], sub_1DAC2B5AC);
          }

          else
          {
            v84 = v103;
            v85 = v104;
            v86 = v105;
            v80 = v99;
            v81 = v100;
            v82 = v101;
            v83 = v102;
            v78 = v97;
            v79 = v98;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v36 = sub_1DAADC60C(0, *(v36 + 2) + 1, 1, v36);
            }

            v44 = *(v36 + 2);
            v43 = *(v36 + 3);
            if (v44 >= v43 >> 1)
            {
              v36 = sub_1DAADC60C((v43 > 1), v44 + 1, 1, v36);
            }

            v71 = v80;
            v72 = v81;
            v76 = v85;
            v77 = v86;
            v74 = v83;
            v75 = v84;
            v73 = v82;
            v69 = v78;
            v70 = v79;
            *(v36 + 2) = v44 + 1;
            v45 = &v36[144 * v44];
            *(v45 + 2) = v69;
            v46 = v70;
            v47 = v71;
            v48 = v73;
            *(v45 + 5) = v72;
            *(v45 + 6) = v48;
            *(v45 + 3) = v46;
            *(v45 + 4) = v47;
            v49 = v74;
            v50 = v75;
            v51 = v77;
            *(v45 + 9) = v76;
            *(v45 + 10) = v51;
            *(v45 + 7) = v49;
            *(v45 + 8) = v50;
          }

          ++v35;
          v37 += 5;
          if (v34 == v35)
          {
            goto LABEL_23;
          }
        }

        __break(1u);

        v90 = v108;
        v91 = v109;
        v92 = v110;
        v88 = v106;
        v89 = v107;
        sub_1DAC2B4F8(&v88);

        __break(1u);
      }

      else
      {
        v36 = MEMORY[0x1E69E7CC0];
LABEL_23:

        *&v97 = v36;
        sub_1DAC2B5AC(0, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
        sub_1DAC2B5FC();
        v52 = sub_1DACB94F4();

        v56(v52, 0);

        sub_1DAC2B678(v57, sub_1DAC2B348);
      }
    }
  }
}

__n128 sub_1DAC2A49C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = sub_1DACB7BE4();
  MEMORY[0x1EEE9AC00](v74);
  v73 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1DAC2B720(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = v65 - v7;
  v8 = sub_1DACB7CC4();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v70 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = v65 - v11;
  sub_1DAC2B720(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], v5);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v65 - v13;
  v15 = sub_1DACB7AB4();
  v78 = *(v15 - 8);
  v79 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v77 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v67 = a1[1];
  v68 = v17;
  v18 = a1[3];
  v71 = a1[2];
  v19 = a1[4];
  v20 = a1[5];
  v21 = a1[7];
  v65[3] = a1[6];
  v66 = v20;
  v65[1] = v19;
  v65[2] = v21;
  v22 = a1[8];
  v23 = a1[9];
  *&v81 = v22;
  *(&v81 + 1) = v23;
  v24 = qword_1ECBE5B90;
  sub_1DACB71E4();
  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_1DACB7664();
  __swift_project_value_buffer(v25, qword_1ECBE92C0);
  sub_1DAA642D8();
  v26 = MEMORY[0x1E69E6158];
  sub_1DACB9B44();
  v28 = v27;

  if (!v28)
  {
    v34 = sub_1DACB9904();
    sub_1DAC2B720(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1DACC1D20;
    *(v35 + 56) = v26;
    *(v35 + 64) = sub_1DAA443C8();
    *(v35 + 32) = v22;
    *(v35 + 40) = v23;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v33 = sub_1DACB9AD4();
    sub_1DACB8C64("dropping SDS news headline because we couldn't escape the URL (url=%{public}@)", 78, 2, &dword_1DAA3F000, v33, v34, v35);
    goto LABEL_7;
  }

  sub_1DACB7A94();

  v29 = v78;
  v30 = v79;
  if ((*(v78 + 48))(v14, 1, v79) == 1)
  {
    sub_1DAC2B54C(v14, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1DAC2B720);
    v31 = sub_1DACB9904();
    sub_1DAC2B720(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1DACC1D20;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1DAA443C8();
    *(v32 + 32) = v22;
    *(v32 + 40) = v23;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v33 = sub_1DACB9AD4();
    sub_1DACB8C64("dropping SDS news headline because we couldn't parse the URL (url=%{public}@)", 77, 2, &dword_1DAA3F000, v33, v31, v32);
LABEL_7:

    sub_1DAB76F60(&v81);
LABEL_8:
    v36 = v88;
    *(a2 + 96) = v87;
    *(a2 + 112) = v36;
    *(a2 + 128) = v89;
    v37 = v84;
    *(a2 + 32) = v83;
    *(a2 + 48) = v37;
    v38 = v86;
    *(a2 + 64) = v85;
    *(a2 + 80) = v38;
    result = v82;
    *a2 = v81;
    *(a2 + 16) = result;
    return result;
  }

  (*(v29 + 32))(v77, v14, v30);
  v40 = v71;
  *&v80[0] = v71;
  *(&v80[0] + 1) = v18;
  v41 = v18;
  v42 = sub_1DACB71E4();
  MEMORY[0x1E1275170](v42);
  sub_1DAC2B6D8(&qword_1EE125290, MEMORY[0x1E69693A0], MEMORY[0x1E6969398]);
  v43 = v72;
  v44 = v90;
  sub_1DACB7CD4();
  if (!v44)
  {
    v90 = 0;
    v53 = v75;
    v52 = v76;
    (*(v75 + 56))(v43, 0, 1, v76);
    v54 = v69;
    (*(v53 + 32))(v69, v43, v52);
    (*(v53 + 16))(v70, v54, v52);
    v55 = sub_1DACB7A04();
    v56 = sub_1DACB92F4();
    if (v66)
    {
      v57 = sub_1DACB92F4();
    }

    else
    {
      v57 = 0;
    }

    v58 = objc_allocWithZone(SCWebHeadline);
    v59 = v70;
    v60 = sub_1DACB7C04();
    v61 = sub_1DACB92F4();
    v62 = [v58 initWithURL:v55 title:v56 shortExcerpt:v57 publishDate:v60 sourceName:v61];

    v63 = v76;
    v64 = *(v75 + 8);
    v64(v59, v76);
    v64(v69, v63);
    (*(v78 + 8))(v77, v79);
    *&v80[0] = v62;
    sub_1DAAD4DD0(v80);
    v87 = v80[6];
    v88 = v80[7];
    v89 = v80[8];
    v83 = v80[2];
    v84 = v80[3];
    v85 = v80[4];
    v86 = v80[5];
    v81 = v80[0];
    v82 = v80[1];
    nullsub_1();
    goto LABEL_8;
  }

  v45 = v29;

  (*(v75 + 56))(v43, 1, 1, v76);
  sub_1DAC2B54C(v43, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1DAC2B720);
  v46 = sub_1DACB9904();
  sub_1DAC2B720(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1DACC1D20;
  *(v47 + 56) = MEMORY[0x1E69E6158];
  *(v47 + 64) = sub_1DAA443C8();
  *(v47 + 32) = v40;
  *(v47 + 40) = v41;
  sub_1DAA41DCC();
  sub_1DACB71E4();
  v48 = sub_1DACB9AD4();
  sub_1DACB8C64("dropping SDS news headline because we couldn't parse the publish date (publishDate=%{public}@)", 94, 2, &dword_1DAA3F000, v48, v46, v47);

  (*(v45 + 8))(v77, v30);
  sub_1DAB76F60(&v81);
  v49 = v88;
  *(a2 + 96) = v87;
  *(a2 + 112) = v49;
  *(a2 + 128) = v89;
  v50 = v84;
  *(a2 + 32) = v83;
  *(a2 + 48) = v50;
  v51 = v86;
  *(a2 + 64) = v85;
  *(a2 + 80) = v51;
  result = v82;
  *a2 = v81;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1DAC2ADB8@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[7];
  v22 = a1[6];
  v23 = v4;
  v5 = a1[7];
  v24 = a1[8];
  v6 = a1[1];
  v7 = a1[3];
  v18 = a1[2];
  v19 = v7;
  v8 = a1[3];
  v9 = a1[5];
  v20 = a1[4];
  v21 = v9;
  v10 = a1[1];
  v17[0] = *a1;
  v17[1] = v10;
  v25[6] = v22;
  v25[7] = v5;
  v25[8] = a1[8];
  v25[2] = v18;
  v25[3] = v8;
  v25[4] = v20;
  v25[5] = v3;
  v25[0] = v17[0];
  v25[1] = v6;
  sub_1DAA9B6F0(v25);
  sub_1DAA9B6E0(v25);
  sub_1DAAD4CCC(v17, &v16);
  v11 = [swift_unknownObjectRetain() identifier];
  v12 = sub_1DACB9324();
  v14 = v13;
  swift_unknownObjectRelease();

  result = sub_1DAAD4D28(v17);
  *a2 = v12;
  a2[1] = v14;
  return result;
}

uint64_t sub_1DAC2AEB4()
{
  v0 = sub_1DACB7664();
  __swift_allocate_value_buffer(v0, qword_1ECBE92C0);
  __swift_project_value_buffer(v0, qword_1ECBE92C0);
  return sub_1DAC2AF00();
}

uint64_t sub_1DAC2AF00()
{
  v0 = sub_1DACB7664();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v13 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  sub_1DACB7654();
  sub_1DACB75D4();
  sub_1DACB7634();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v9, v0);
  v11 = *(v1 + 32);
  v11(v9, v7, v0);
  sub_1DACB75E4();
  sub_1DACB7634();
  v10(v4, v0);
  v10(v9, v0);
  v11(v9, v7, v0);
  sub_1DACB75F4();
  sub_1DACB7634();
  v10(v4, v0);
  v10(v9, v0);
  v11(v9, v7, v0);
  sub_1DACB7604();
  sub_1DACB7634();
  v10(v7, v0);
  return (v10)(v9, v0);
}

uint64_t sub_1DAC2B178()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1ECBE92E0));

  v1 = qword_1ECBE92F0;
  v2 = sub_1DACB8204();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1DAC2B214(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1ECBE92E0));

  v2 = qword_1ECBE92F0;
  v3 = sub_1DACB8204();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_1DAC2B2B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAC29574(sub_1DAADF554, v4);
}

void sub_1DAC2B348(uint64_t a1)
{
  if (!qword_1ECBE9308)
  {
    v2 = sub_1DABF47B0();
    v4 = type metadata accessor for SDSBaseOperationResponse(a1, &type metadata for SDSNewsResponse, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1ECBE9308);
    }
  }
}

uint64_t sub_1DAC2B3A4(uint64_t a1, uint64_t a2)
{
  sub_1DAC2B720(0, &qword_1ECBE9310, sub_1DAC2B348, MEMORY[0x1E69D6AF8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC2B438(uint64_t a1, uint64_t a2)
{
  sub_1DAC2B348(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC2B54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1DAC2B5AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DAC2B5FC()
{
  result = qword_1ECBE9320;
  if (!qword_1ECBE9320)
  {
    sub_1DAC2B5AC(255, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9320);
  }

  return result;
}

uint64_t sub_1DAC2B678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAC2B6D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAC2B720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1DAC2B89C(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1DACB92F4();
  v6 = [a1 decodeObjectForKey_];

  if (v6)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = v15;
      v8 = &v2[OBJC_IVAR___SCUpdateUserIDCommand_userID];
      *v8 = v14;
      v8[1] = v7;
      v9 = sub_1DACB92F4();
      v10 = [a1 decodeBoolForKey_];

      v2[OBJC_IVAR___SCUpdateUserIDCommand_overwrite] = v10;
      v13.receiver = v2;
      v13.super_class = ObjectType;
      v11 = objc_msgSendSuper2(&v13, sel_init);

      return v11;
    }
  }

  else
  {

    sub_1DAADFA60(v18);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1DAC2BA98(void *a1, uint64_t a2)
{
  v4 = [a1 encryptedValues];
  v5 = sub_1DACB92F4();
  v6 = [v4 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if ((*(a2 + OBJC_IVAR___SCUpdateUserIDCommand_overwrite) & 1) != 0 || !v6)
  {
    v7 = [a1 encryptedValues];
    v8 = sub_1DACB92F4();
    v9 = sub_1DACB92F4();
    [v7 setObject:v8 forKeyedSubscript:v9];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1DAC2BD30(uint64_t a1)
{
  result = sub_1DACB7CC4();
  if (v2 <= 0x3F)
  {
    result = sub_1DACB8204();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1DAC2BE28(uint64_t a1, uint64_t a2)
{
  v16 = *(v2 + qword_1EE126B00);
  sub_1DACB71E4();
  sub_1DACA8764(&v16);
  sub_1DAA49264(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAC2E818(&qword_1EE11FA38, MEMORY[0x1E69E6340]);
  v4 = sub_1DACB9864();

  v5 = *(v4 + 16);
  if (v5)
  {
    v13 = a2;
    v16 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      v15 = *(v4 + 8 * v6 + 32);
      swift_bridgeObjectRetain_n();
      v7 = sub_1DACA8764(&v15);
      ++v6;
      MEMORY[0x1EEE9AC00](v7);
      sub_1DAA49A8C(0, &qword_1EE126AF0, sub_1DAC2E794, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      sub_1DACB8B44();

      sub_1DACB9D34();
      sub_1DACB9D74();
      sub_1DACB9D84();
      sub_1DACB9D44();
      if (v5 == v6)
      {

        a2 = v13;
        goto LABEL_7;
      }
    }

    __break(1u);

    __break(1u);

    __break(1u);
  }

  else
  {

LABEL_7:
    v8 = sub_1DACB89D4();
    sub_1DAC2E794(0);
    sub_1DACB8934();

    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    sub_1DACB71F4();
    v10 = sub_1DACB89D4();
    sub_1DACB8A64();

    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    sub_1DACB71F4();
    v12 = sub_1DACB89D4();
    sub_1DACB8AA4();
  }
}

uint64_t *sub_1DAC2C19C(uint64_t *result, void (*a2)(uint64_t, void))
{
  v3 = *result;
  v4 = MEMORY[0x1E69E7CC8];
  v8 = MEMORY[0x1E69E7CC8];
  v5 = *(*result + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = v6 + 1;
      type metadata accessor for YahooMultiQuoteItem(0);
      sub_1DACB71E4();
      sub_1DACB88C4();

      v6 = v7;
      if (v5 == v7)
      {
        v4 = v8;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    a2(v4, 0);
  }

  return result;
}

void sub_1DAC2C29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a4;
  v65 = a3;
  v10 = sub_1DACB8204();
  v71 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1DACB7CC4();
  v69 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1DACB7AB4();
  v61 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v63 = v14;
  v15 = __swift_project_boxed_opaque_existential_1((a5 + qword_1EE126B08), *(a5 + qword_1EE126B08 + 24));
  sub_1DAA49A8C(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D40;
  *(inited + 32) = 0x7372656B636974;
  *(inited + 40) = 0xE700000000000000;
  v73[0] = a6;
  sub_1DAA49264(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAC2E818(&qword_1EE123E90, MEMORY[0x1E69E6310]);
  sub_1DACB71F4();
  *(inited + 48) = sub_1DACB9214();
  *(inited + 56) = v17;
  strcpy((inited + 64), "crossProduct");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = 0x657A696D6974706FLL;
  *(inited + 88) = 0xE900000000000064;
  v59 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v18 = a5;
  v19 = (a5 + qword_1EE126B10);
  v20 = *(a5 + qword_1EE126B10);
  v60 = v19[1];
  v21 = v19[3];
  v58 = v19[2];
  v22 = qword_1ECBE9340;
  v23 = qword_1EE126B18;
  v24 = *v15;
  v25 = [objc_opt_self() sharedPreferences];
  if (v25)
  {
    v26 = v25;
    v55 = v20;
    v56 = v21;
    v57 = a6;
    v27 = [v25 stocksYQLBaseURL];

    if (v27)
    {
      v49 = 0x80000001DACEFEF0;
      v28 = v67;
      sub_1DACB7A44();

      sub_1DAA4D678(v24 + 16, v73);
      v50 = *(v69 + 16);
      v54 = v18;
      v29 = v62;
      v30 = v64;
      v50(v62, v18 + v22, v64);
      v53 = *(v71 + 16);
      v52 = v10;
      v53(v70, v18 + v23, v10);
      sub_1DAC2E978(0);
      v51 = v31;
      v32 = objc_allocWithZone(v31);
      v33 = MEMORY[0x1E69E7D40];
      *(v32 + *((*MEMORY[0x1E69E7D40] & *v32) + qword_1EE13E4B0 + 16)) = 2;
      v34 = v61;
      (*(v61 + 16))(v32 + *((*v33 & *v32) + qword_1EE13E4B0 + 24), v28, v68);
      v35 = (v32 + *((*v33 & *v32) + qword_1EE13E4B0 + 32));
      *v35 = 0xD000000000000013;
      v35[1] = v49;
      *(v32 + *((*v33 & *v32) + qword_1EE13E4B0 + 40)) = v59;
      v36 = (v32 + *((*v33 & *v32) + qword_1EE13E4B0 + 48));
      v37 = v60;
      *v36 = v55;
      v36[1] = v37;
      v38 = v56;
      v36[2] = v58;
      v36[3] = v38;
      sub_1DAA4D678(v73, v32 + *((*v33 & *v32) + qword_1EE13E4B0 + 56));
      v50(v32 + *((*v33 & *v32) + qword_1EE13E4B0 + 64), v29, v30);
      v39 = v70;
      v40 = v52;
      v53(v32 + *((*v33 & *v32) + qword_1EE13E4B0 + 72), v70, v52);
      v72.receiver = v32;
      v72.super_class = v51;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v41 = objc_msgSendSuper2(&v72, sel_init);
      (*(v71 + 8))(v39, v40);
      (*(v69 + 8))(v29, v30);
      __swift_destroy_boxed_opaque_existential_1(v73);
      (*(v34 + 8))(v67, v68);
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      v44 = v57;
      v43[2] = v42;
      v43[3] = v44;
      v45 = v63;
      v43[4] = sub_1DAA73914;
      v43[5] = v45;
      v46 = v66;
      v43[6] = v65;
      v43[7] = v46;
      v47 = v41;
      sub_1DACB71E4();
      sub_1DACB71F4();
      sub_1DACB8304();

      [v47 start];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1DAC2CB9C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t))
{
  v26 = a5;
  v27 = a4;
  v25 = a3;
  v8 = sub_1DACB7BE4();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DAA49A8C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = *a1;
  v14 = a1[4];
  v13 = a1[5];
  v15 = *(a1 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (v15)
    {
      a6(v12);
    }

    else
    {
      if (v13)
      {
        v28 = v14;
        v29 = v13;
        v18 = sub_1DACB71E4();
        MEMORY[0x1E1275170](v18);
        sub_1DAC2EA54(&qword_1EE125290, MEMORY[0x1E69693A0], MEMORY[0x1E6969398]);
        sub_1DACB7CD4();
        v19 = 0;
      }

      else
      {
        v19 = 1;
      }

      v20 = sub_1DACB7CC4();
      (*(*(v20 - 8) + 56))(v11, v19, 1, v20);
      v21 = sub_1DACAB124(v12);
      MEMORY[0x1EEE9AC00](v21);
      *(&v24 - 2) = v25;
      *(&v24 - 1) = v11;
      v22 = sub_1DAB6A988(MEMORY[0x1E69E7CC8], sub_1DAC2EA38, (&v24 - 4), v21);

      sub_1DAC2DC6C(v22, v23);
      v27(v22);

      sub_1DAC2EA9C(v11, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1DAA49A8C);
    }
  }
}

uint64_t sub_1DAC2CEA4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v167 = a4;
  v188 = a1;
  v166 = type metadata accessor for YahooMultiQuoteItem(0);
  v164 = *(v166 - 8);
  v6 = MEMORY[0x1EEE9AC00](v166);
  v189 = v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v165 = v161 - v8;
  v162 = sub_1DACB7BE4();
  MEMORY[0x1EEE9AC00](v162);
  v161[1] = v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA49A8C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v191 = v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v190 = v161 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v168 = v161 - v15;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v19 = v16;
  }

  v170 = v19;
  sub_1DACB71E4();
  v171 = sub_1DAC41E6C(v17);
  v169 = sub_1DAC420E0(v18);
  v20 = *(a3 + 16);
  if (v20)
  {
    v21 = (a3 + 40);
    v22 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v202 = v20;
      v24 = *v21;
      v215 = *(v21 - 1);
      v25 = sub_1DACB93B4();
      v27 = v26;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v214[0] = v22;
      v30 = sub_1DAA4BF3C(v25, v27);
      v31 = v22;
      v32 = v22[2];
      v33 = (v29 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }

      v35 = v29;
      if (v31[3] >= v34)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v38 = v215;
          if (v29)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1DAB65314();
          v38 = v215;
          if (v35)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1DAAA2514(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_1DAA4BF3C(v25, v27);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_120;
        }

        v30 = v36;
        v38 = v215;
        if (v35)
        {
LABEL_5:

          v22 = v214[0];
          v23 = (*(v214[0] + 56) + 16 * v30);
          *v23 = v38;
          v23[1] = v24;

          goto LABEL_6;
        }
      }

      v22 = v214[0];
      *(v214[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v39 = (v22[6] + 16 * v30);
      *v39 = v25;
      v39[1] = v27;
      v40 = (v22[7] + 16 * v30);
      *v40 = v38;
      v40[1] = v24;

      v41 = v22[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_117;
      }

      v22[2] = v43;
LABEL_6:
      v21 += 2;
      v20 = v202 - 1;
      if (v202 == 1)
      {
        goto LABEL_19;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC8];
LABEL_19:
  v44 = v170;
  v45 = *(v170 + 16);
  if (!v45)
  {
    goto LABEL_115;
  }

  v46 = 0;
  v199 = v45 - 1;
  v47 = 32;
  v48 = v171;
  v50 = v168;
  v49 = v169;
  v163 = v22;
  do
  {
    v215 = v47;
    memcpy(v214, (v44 + v47), 0x1D8uLL);
    v51 = sub_1DACB93B4();
    v53 = v52;
    if (!v22[2])
    {

      goto LABEL_112;
    }

    v54 = v51;
    v202 = v46;
    sub_1DAC2EB60(v214, &v210);
    v55 = sub_1DAA4BF3C(v54, v53);
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      sub_1DAC2EBBC(v214);
      v46 = v202;
      goto LABEL_112;
    }

    v58 = (v22[7] + 16 * v55);
    v59 = v58[1];
    v194 = *v58;
    if (v214[54])
    {
      v60 = v214[54];
    }

    else
    {
      v60 = 0xE000000000000000;
    }

    if (v48[2])
    {
      if (v214[54])
      {
        v61 = v214[53];
      }

      else
      {
        v61 = 0;
      }

      sub_1DACB71E4();
      sub_1DACB71E4();
      v62 = sub_1DAA4BF3C(v61, v60);
      v64 = v63;

      if (v64)
      {
        v65 = v48[7] + 72 * v62;
        v203[0] = *v65;
        v67 = *(v65 + 32);
        v66 = *(v65 + 48);
        v68 = *(v65 + 64);
        v203[1] = *(v65 + 16);
        v203[2] = v67;
        v204 = v68;
        v203[3] = v66;
        v206 = *(v65 + 16);
        v207 = *(v65 + 32);
        v208 = *(v65 + 48);
        v209 = *(v65 + 64);
        v205 = *v65;
        sub_1DAB6A0AC(v203, &v210);
        v212 = v207;
        v213[0] = v208;
        *&v213[1] = v209;
        v210 = v205;
        v211 = v206;
        goto LABEL_36;
      }
    }

    else
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
    }

    v212 = 0u;
    memset(v213, 0, 24);
    v210 = 0u;
    v211 = 0u;
LABEL_36:
    v69 = v214[2];
    v196 = v214[4];
    if (v214[4])
    {
      v70 = v214[8];
      v71 = v214[7];
      sub_1DACB71E4();
      if (!v49[2])
      {
        goto LABEL_41;
      }
    }

    else
    {
      v71 = 0;
      v70 = 0xE000000000000000;
      if (!v49[2])
      {
LABEL_41:

        goto LABEL_42;
      }
    }

    v72 = sub_1DAA4BF3C(v71, v70);
    v74 = v73;

    if (v74)
    {
      v75 = v49[7] + 24 * v72;
      v76 = *(v75 + 8);
      v201 = *(v75 + 16);
      v187 = v76;
      sub_1DACB71E4();
      goto LABEL_43;
    }

LABEL_42:
    v187 = 0;
    v201 = 0;
LABEL_43:
    v186 = v214[23];
    v198 = v214[25];
    if (v214[25])
    {
      v77 = v214[29];
      v78 = v214[28];
      sub_1DACB71E4();
    }

    else
    {
      v78 = 0;
      v77 = 0xE000000000000000;
    }

    v79 = v49[2];
    v195 = v59;
    if (v79)
    {
      v80 = sub_1DAA4BF3C(v78, v77);
      v82 = v81;

      if (v82)
      {
        v83 = v49[7] + 24 * v80;
        v84 = *(v83 + 8);
        v193 = *(v83 + 16);
        v173 = v84;
        sub_1DACB71E4();
        goto LABEL_51;
      }
    }

    else
    {
    }

    v173 = 0;
    v193 = 0;
LABEL_51:
    v85 = v214[37];
    v197 = v214[39];
    if (v214[39])
    {
      v86 = v214[43];
      v87 = v214[42];
      sub_1DACB71E4();
      if (!v49[2])
      {
        goto LABEL_56;
      }
    }

    else
    {
      v87 = 0;
      v86 = 0xE000000000000000;
      if (!v49[2])
      {
LABEL_56:

LABEL_57:
        v92 = 0;
        v93 = 0;
        goto LABEL_58;
      }
    }

    v88 = sub_1DAA4BF3C(v87, v86);
    v90 = v89;

    if ((v90 & 1) == 0)
    {
      goto LABEL_57;
    }

    v91 = v49[7] + 24 * v88;
    v92 = *(v91 + 8);
    v93 = *(v91 + 16);
    sub_1DACB71E4();
LABEL_58:
    v94 = 1;
    v192 = v93;
    if (*(&v210 + 1) && *&v213[1])
    {
      v205 = *(v213 + 8);
      v95 = sub_1DACB71E4();
      MEMORY[0x1E1275170](v95);
      sub_1DAC2EA54(&qword_1EE125290, MEMORY[0x1E69693A0], MEMORY[0x1E6969398]);
      v96 = v200;
      sub_1DACB7CD4();
      if (v96)
      {

        v200 = 0;
        v94 = 1;
      }

      else
      {
        v200 = 0;
        v94 = 0;
      }
    }

    v97 = sub_1DACB7CC4();
    (*(*(v97 - 8) + 56))(v50, v94, 1, v97);
    sub_1DAA77630(v167, v190);
    if (v196)
    {
      v98 = v69;
    }

    else
    {
      v98 = 0;
    }

    if (v214[11])
    {
      v99 = v214[9];
    }

    else
    {
      v99 = 0;
    }

    v100 = v214[18];
    if (v214[18])
    {
      v101 = v214[16];
    }

    else
    {
      v101 = 0;
    }

    if (v198)
    {
      v102 = v186;
    }

    else
    {
      v102 = 0;
    }

    v103 = v214[32];
    if (v214[32])
    {
      v104 = v214[30];
    }

    else
    {
      v104 = 0;
    }

    if (v197)
    {
      v105 = v85;
    }

    else
    {
      v105 = 0;
    }

    v106 = v214[46];
    if (v214[46])
    {
      v107 = v214[44];
    }

    else
    {
      v107 = 0;
    }

    v182 = v107;
    v183 = v105;
    v179 = v104;
    v180 = v102;
    v177 = v99;
    v178 = v98;
    v176 = v101;
    v172 = v214[11];
    v108 = v50;
    if (*(&v210 + 1))
    {
      v181 = byte_1DACD7E26[v212];
    }

    else
    {
      v181 = 0;
    }

    v109 = v187;
    v187 = v214[57];
    v110 = v214[58];
    v185 = v214[55];
    v111 = v214[56];
    v175 = v214[51];
    v112 = v214[52];
    sub_1DAA77630(v108, v191);
    v186 = v110;
    v184 = v111;
    v174 = v112;
    if (v109)
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();

      v113 = v201;
      if (v173)
      {
        goto LABEL_89;
      }
    }

    else
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v113 = 7;
      if (v173)
      {
LABEL_89:

        if (!v92)
        {
          goto LABEL_93;
        }

        goto LABEL_90;
      }
    }

    v193 = 7;
    if (!v92)
    {
LABEL_93:
      v192 = 7;
      goto LABEL_94;
    }

LABEL_90:

LABEL_94:
    v201 = v113;
    if (*(&v210 + 1) && (v114 = *(&v212 + 1), v115 = *&v213[0], sub_1DACB71E4(), sub_1DAC2EA9C(&v210, &unk_1ECBE9350, &type metadata for YahooMultiQuoteResponse.Exchange, MEMORY[0x1E69E6720], sub_1DAA49264), v115))
    {
      v116 = v196;
    }

    else
    {
      v116 = v196;

      v114 = 0;
      v115 = 0xE000000000000000;
    }

    LODWORD(v196) = v106 == 0;
    LODWORD(v173) = v103 == 0;
    v117 = v100 == 0;
    v118 = v172 == 0;
    LODWORD(v197) = v197 == 0;
    v119 = v198 == 0;
    v120 = v116 == 0;
    *&v205 = 0;
    v121 = v200;
    v122 = sub_1DAC2E880(v114, v115, &v205);
    v200 = v121;

    if (v122)
    {
      v123 = v205;
    }

    else
    {
      v123 = 0;
    }

    v124 = v165;
    sub_1DABD4334(v190, v165);
    v125 = v166;
    v126 = v124 + *(v166 + 20);
    v127 = v177;
    *v126 = v178;
    *(v126 + 8) = v120;
    v128 = v124 + v125[6];
    *v128 = v127;
    *(v128 + 8) = v118;
    v129 = v124 + v125[7];
    *v129 = v176;
    *(v129 + 8) = v117;
    v130 = v124 + v125[8];
    v131 = v179;
    *v130 = v180;
    *(v130 + 8) = v119;
    v132 = v124 + v125[9];
    *v132 = v131;
    *(v132 + 8) = v173;
    v133 = v124 + v125[10];
    *v133 = v183;
    *(v133 + 8) = v197;
    v134 = v124 + v125[11];
    *v134 = v182;
    *(v134 + 8) = v196;
    v135 = (v124 + v125[12]);
    v136 = v174;
    *v135 = v175;
    v135[1] = v136;
    *(v124 + v125[13]) = v181;
    sub_1DABD4334(v191, v124 + v125[14]);
    sub_1DAC2EBBC(v214);
    v137 = (v124 + v125[15]);
    v138 = v184;
    *v137 = v185;
    v137[1] = v138;
    v139 = (v124 + v125[16]);
    v140 = v186;
    *v139 = v187;
    v139[1] = v140;
    *(v124 + v125[17]) = v201;
    *(v124 + v125[18]) = v193;
    *(v124 + v125[19]) = v192;
    v141 = v124 + v125[20];
    *v141 = v123;
    *(v141 + 8) = !v122;
    sub_1DAC2EC10(v124, v189);
    v142 = v188;
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v144 = *v142;
    *&v205 = v144;
    v145 = v195;
    v146 = sub_1DAA4BF3C(v194, v195);
    v148 = *(v144 + 16);
    v149 = (v147 & 1) == 0;
    v42 = __OFADD__(v148, v149);
    v150 = v148 + v149;
    if (v42)
    {
      goto LABEL_118;
    }

    v151 = v147;
    if (*(v144 + 24) < v150)
    {
      sub_1DAB631F4(v150, v143);
      v146 = sub_1DAA4BF3C(v194, v145);
      v44 = v170;
      v48 = v171;
      v50 = v168;
      v49 = v169;
      v22 = v163;
      if ((v151 & 1) != (v152 & 1))
      {
        goto LABEL_120;
      }

LABEL_106:
      v46 = v202;
      if ((v151 & 1) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_107;
    }

    v44 = v170;
    v48 = v171;
    v50 = v168;
    v49 = v169;
    v22 = v163;
    if (v143)
    {
      goto LABEL_106;
    }

    v155 = v146;
    sub_1DAB67390();
    v146 = v155;
    v46 = v202;
    if ((v151 & 1) == 0)
    {
LABEL_109:
      v154 = v205;
      *(v205 + 8 * (v146 >> 6) + 64) |= 1 << v146;
      v156 = (v154[6] + 16 * v146);
      v157 = v195;
      *v156 = v194;
      v156[1] = v157;
      sub_1DAC2EC10(v189, v154[7] + *(v164 + 72) * v146);
      v158 = v154[2];
      v42 = __OFADD__(v158, 1);
      v159 = v158 + 1;
      if (v42)
      {
        goto LABEL_119;
      }

      v154[2] = v159;
      goto LABEL_111;
    }

LABEL_107:
    v153 = v146;

    v154 = v205;
    sub_1DAC2EC74(v189, *(v205 + 56) + *(v164 + 72) * v153);
LABEL_111:
    sub_1DAC2EA9C(v50, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1DAA49A8C);
    *v188 = v154;
LABEL_112:
    if (v199 == v46)
    {
      goto LABEL_115;
    }

    ++v46;
    v47 = v215 + 472;
  }

  while (v46 < *(v44 + 16));
  __break(1u);
LABEL_115:
}

uint64_t sub_1DAC2DC6C(uint64_t a1, uint64_t a2)
{
  v46[1] = swift_getObjectType();
  sub_1DAA49A8C(0, &qword_1EE1266E8, type metadata accessor for YahooMultiQuoteItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v46 - v5;
  v47 = v2;
  v7 = *(v2 + qword_1EE126B00);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 40;
    *&v51 = *(v7 + 16);
    v48 = v8 - 1;
    v11 = MEMORY[0x1E69E7CC0];
    v49 = v7 + 40;
    do
    {
      v50 = v11;
      v12 = (v10 + 16 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v15 = *(v12 - 1);
        v14 = *v12;
        v9 = v13 + 1;
        v16 = *(a1 + 16);
        sub_1DACB71E4();
        if (!v16)
        {
          break;
        }

        v17 = sub_1DAA4BF3C(v15, v14);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v19 = v17;
        v20 = *(a1 + 56);
        v21 = type metadata accessor for YahooMultiQuoteItem(0);
        v22 = *(v21 - 8);
        sub_1DAC2EAFC(v20 + *(v22 + 72) * v19, v6);

        v23 = *(v22 + 56);
        v11 = v22 + 56;
        v23(v6, 0, 1, v21);
        sub_1DAC2EA9C(v6, &qword_1EE1266E8, type metadata accessor for YahooMultiQuoteItem, MEMORY[0x1E69E6720], sub_1DAA49A8C);
        v12 += 2;
        v13 = v9;
        if (v51 == v9)
        {
          v11 = v50;
          goto LABEL_14;
        }
      }

      v24 = type metadata accessor for YahooMultiQuoteItem(0);
      (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
      sub_1DAC2EA9C(v6, &qword_1EE1266E8, type metadata accessor for YahooMultiQuoteItem, MEMORY[0x1E69E6720], sub_1DAA49A8C);
      v11 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DAA5859C(0, *(v11 + 16) + 1, 1);
        v11 = v53;
      }

      v27 = *(v11 + 16);
      v26 = *(v11 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        sub_1DAA5859C((v26 > 1), v27 + 1, 1);
        v28 = v27 + 1;
        v11 = v53;
      }

      *(v11 + 16) = v28;
      v29 = v11 + 16 * v27;
      *(v29 + 32) = v15;
      *(v29 + 40) = v14;
      v10 = v49;
    }

    while (v48 != v13);
LABEL_14:
    if (*(v11 + 16))
    {
      goto LABEL_17;
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
  }

LABEL_17:
  v30 = sub_1DACB9904();
  sub_1DAA49A8C(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  v51 = xmmword_1DACC1D20;
  *(v31 + 16) = xmmword_1DACC1D20;
  v32 = MEMORY[0x1E69E6158];
  v33 = MEMORY[0x1E1277130](v11, MEMORY[0x1E69E6158]);
  v35 = v34;
  *(v31 + 56) = v32;
  *(v31 + 64) = sub_1DAA443C8();
  *(v31 + 32) = v33;
  *(v31 + 40) = v35;
  sub_1DAA41DCC();
  v36 = sub_1DACB9AD4();
  sub_1DACB8C64("Yahoo quote response is missing entries for %{public}@", 54, 2, &dword_1DAA3F000, v36, v30, v31);

  v37 = sub_1DACB92F4();
  v38 = NSClassFromString(v37);

  if (v38)
  {
  }

  if (qword_1EE124160 != -1)
  {
LABEL_30:
    swift_once();
  }

  sub_1DAC2EA54(&qword_1ECBE9348, type metadata accessor for YahooMultiQuoteOperation, &unk_1DACD7DE4);
  sub_1DACB7F84();
  if (v52 > 3u)
  {
  }

  if (v52 <= 1u)
  {
    if (v52)
    {
      v40 = swift_allocObject();
      *(v40 + 16) = v51;
      sub_1DAA49264(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      *(v40 + 56) = v45;
      *(v40 + 64) = sub_1DAC2E818(&qword_1EE123E80, MEMORY[0x1E6969E28]);
      *(v40 + 32) = v11;
      v42 = "[STAGING] [Yahoo] Quote response is missing entry for %{public}@";
      v43 = 64;
    }

    else
    {
      v40 = swift_allocObject();
      *(v40 + 16) = v51;
      sub_1DAA49264(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      *(v40 + 56) = v41;
      *(v40 + 64) = sub_1DAC2E818(&qword_1EE123E80, MEMORY[0x1E6969E28]);
      *(v40 + 32) = v11;
      v42 = "[PROD] [Yahoo] Quote response is missing entry for %{public}@";
      v43 = 61;
    }

    goto LABEL_28;
  }

  if (v52 != 2)
  {
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v51;
  sub_1DAA49264(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  *(v40 + 56) = v44;
  *(v40 + 64) = sub_1DAC2E818(&qword_1EE123E80, MEMORY[0x1E6969E28]);
  *(v40 + 32) = v11;
  v42 = "[QA] [Yahoo] Quote response is missing entry for %{public}@";
  v43 = 59;
LABEL_28:
  MEMORY[0x1E1275DD0](v42, v43, 2, v40);
}

uint64_t sub_1DAC2E354()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE126B08));

  v1 = qword_1ECBE9340;
  v2 = sub_1DACB7CC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EE126B18;
  v4 = sub_1DACB8204();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_1DAC2E43C(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE126B08));

  v2 = qword_1ECBE9340;
  v3 = sub_1DACB7CC4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = qword_1EE126B18;
  v5 = sub_1DACB8204();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t sub_1DAC2E528(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAC2BE28(sub_1DAADF554, v4);
}

void sub_1DAC2E5F8(uint64_t a1)
{
  sub_1DAA49A8C(319, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1DAA49264(319, &qword_1EE11F998, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1DAA49264(319, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1DAA49264(319, &qword_1EE1237C0, &type metadata for QuoteSource, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DAC2E794(uint64_t a1)
{
  if (!qword_1EE126AF8)
  {
    type metadata accessor for YahooMultiQuoteItem(255);
    v1 = sub_1DACB91A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE126AF8);
    }
  }
}

uint64_t sub_1DAC2E818(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA49264(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_1DAC2E880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1DACB9C74();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

void sub_1DAC2E978(uint64_t a1)
{
  if (!qword_1EE126C28)
  {
    v2 = sub_1DAC2E9D4();
    v4 = type metadata accessor for YahooBaseOperation(a1, &type metadata for YahooMultiQuoteResponse, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EE126C28);
    }
  }
}

unint64_t sub_1DAC2E9D4()
{
  result = qword_1EE126C30;
  if (!qword_1EE126C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126C30);
  }

  return result;
}

uint64_t sub_1DAC2EA54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAC2EA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1DAC2EAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooMultiQuoteItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC2EC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooMultiQuoteItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC2EC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooMultiQuoteItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1DAC2ECD8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1DAC2ED7C(uint64_t a1, char *a2, char *a3)
{
  v59 = a1;
  v61 = 0x73752D6E65;
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB7CC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4D678(v3 + 16, v67);
  v55 = v11;
  v14 = *(v11 + 16);
  v56 = v10;
  v54 = v14;
  v14(v13, a2, v10);
  v58 = v7;
  v15 = *(v7 + 16);
  v57 = v9;
  v60 = v6;
  v53 = v15;
  v15(v9, a3, v6);
  v16 = [objc_opt_self() sharedPreferences];
  v17 = v16;
  if (!v16)
  {
    v52 = 0xE500000000000000;
LABEL_8:

    v50 = 0xE200000000000000;
    v49 = 21333;
    goto LABEL_9;
  }

  v18 = [v16 stocksLanguageCode];
  if (v18)
  {
    v19 = v18;
    v61 = sub_1DACB9324();
    v52 = v20;
  }

  else
  {
    v52 = 0xE500000000000000;
  }

  v21 = [v17 stocksCountryCode];
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  v49 = sub_1DACB9324();
  v50 = v23;

LABEL_9:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v67, v67[3]);
  v51 = &v48;
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  v29 = type metadata accessor for YahooBaseOperationFactory();
  v65 = v29;
  v66 = &off_1F56825C8;
  v64[0] = v28;
  v30 = type metadata accessor for YahooQuoteDetailOperation(0);
  v31 = objc_allocWithZone(v30);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v48 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v63[3] = v29;
  v63[4] = &off_1F56825C8;
  v63[0] = v36;
  *&v31[qword_1EE127038] = v59;
  sub_1DAA4D678(v63, &v31[qword_1EE127040]);
  v37 = &v31[qword_1EE127048];
  v38 = v52;
  *v37 = v61;
  v37[1] = v38;
  v39 = v50;
  v37[2] = v49;
  v37[3] = v39;
  v40 = v56;
  v54(&v31[qword_1ECBE9AC8], v13, v56);
  v41 = v57;
  v42 = v60;
  v53(&v31[qword_1EE127050], v57, v60);
  v62.receiver = v31;
  v62.super_class = v30;
  sub_1DACB71E4();
  v43 = objc_msgSendSuper2(&v62, sel_init);
  (*(v58 + 8))(v41, v42);
  (*(v55 + 8))(v13, v40);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v67);
  sub_1DAC2FD68(0);
  sub_1DACB82E4();
  v44 = v43;
  sub_1DACB8294();
  sub_1DACB8B84();

  v45 = sub_1DACB89D4();
  sub_1DAC2FDF0(0, &qword_1EE11FCE0, type metadata accessor for QuoteDetail, MEMORY[0x1E69E5E28]);
  v46 = sub_1DACB8A64();

  return v46;
}

uint64_t sub_1DAC2F3B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v72 = a2;
  v84 = sub_1DACB7BE4();
  v5 = MEMORY[0x1EEE9AC00](v84);
  v75 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v71 - v7;
  sub_1DAA530C8(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v85 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v71 - v11;
  v82 = type metadata accessor for QuoteDetail(0);
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for YahooQuoteDetailItem(0);
  v81 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_1DAC2FDF0(0, &qword_1EE11F728, type metadata accessor for QuoteDetail, MEMORY[0x1E69E6EC8]);
  result = sub_1DACB9E74();
  v20 = result;
  v21 = 0;
  v22 = *(v18 + 64);
  v73 = v18 + 64;
  v80 = v18;
  v23 = 1 << *(v18 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v78 = result + 64;
  v79 = result;
  v76 = v26;
  v77 = v15;
  if (v25)
  {
    do
    {
      v27 = __clz(__rbit64(v25));
      v86 = (v25 - 1) & v25;
LABEL_10:
      v30 = v27 | (v21 << 6);
      v31 = *(v80 + 56);
      v32 = (*(v80 + 48) + 16 * v30);
      v33 = v32[1];
      v113 = *v32;
      v34 = *(v81 + 72);
      v116 = v30;
      sub_1DAC2FE64(v31 + v34 * v30, v17);
      v35 = &v17[v15[22]];
      v36 = *(v35 + 1);
      if (v36)
      {
        v114 = *v35;
        v115 = v36;
        sub_1DACB71E4();
        v37 = sub_1DACB71E4();
        MEMORY[0x1E1275170](v37);
        sub_1DAC2FF88();
        sub_1DACB7CD4();
        if (v3)
        {

          v38 = sub_1DACB7CC4();
          (*(*(v38 - 8) + 56))(v12, 1, 1, v38);
          v3 = 0;
        }

        else
        {
          v40 = sub_1DACB7CC4();
          (*(*(v40 - 8) + 56))(v12, 0, 1, v40);
        }
      }

      else
      {
        v39 = sub_1DACB7CC4();
        (*(*(v39 - 8) + 56))(v12, 1, 1, v39);
        sub_1DACB71E4();
      }

      v41 = &v17[v15[23]];
      v42 = *(v41 + 1);
      v112 = v33;
      if (v42)
      {
        v114 = *v41;
        v115 = v42;
        v43 = sub_1DACB71E4();
        MEMORY[0x1E1275170](v43);
        sub_1DAC2FF88();
        sub_1DACB7CD4();
        if (!v3)
        {
          v87 = 0;
          v44 = 0;
          goto LABEL_21;
        }

        v87 = 0;
      }

      else
      {
        v87 = v3;
      }

      v44 = 1;
LABEL_21:
      v45 = sub_1DACB7CC4();
      v46 = v85;
      (*(*(v45 - 8) + 56))(v85, v44, 1, v45);
      v111 = *(v17 + 4);
      v110 = v17[40];
      v109 = *(v17 + 6);
      v108 = v17[56];
      v107 = *(v17 + 8);
      v106 = v17[72];
      v105 = *(v17 + 10);
      v104 = v17[88];
      v103 = *(v17 + 12);
      v102 = v17[104];
      v101 = *(v17 + 14);
      v100 = v17[120];
      v99 = *(v17 + 16);
      v98 = v17[136];
      v97 = *(v17 + 18);
      v96 = v17[152];
      v95 = *(v17 + 20);
      v94 = v17[168];
      v93 = *(v17 + 22);
      v92 = v17[184];
      v91 = *(v17 + 24);
      v90 = v17[200];
      v47 = v82;
      v48 = MEMORY[0x1E6969530];
      sub_1DAA89C68(v12, &v14[*(v82 + 60)], &qword_1EE125280, MEMORY[0x1E6969530]);
      sub_1DAA89C68(v46, &v14[v47[16]], &qword_1EE125280, v48);
      v49 = *(v17 + 27);
      v89 = *(v17 + 26);
      v88 = v49;
      v50 = v15[18];
      v51 = v15;
      v52 = v12;
      v53 = MEMORY[0x1E6968FB0];
      sub_1DAA89C68(&v17[v50], &v14[v47[18]], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
      sub_1DAA89C68(&v17[v51[19]], &v14[v47[19]], &qword_1EE1263D0, v53);
      v54 = v47[20];
      v55 = sub_1DACB7F54();
      v56 = &v14[v54];
      v12 = v52;
      (*(*(v55 - 8) + 56))(v56, 1, 1, v55);
      v57 = v88;
      sub_1DACB71E4();
      sub_1DACB7CB4();
      sub_1DAA776C4(v46);
      sub_1DAA776C4(v52);
      sub_1DAC2FEC8(v17);
      *v14 = v111;
      v14[8] = v110;
      *(v14 + 2) = v109;
      v14[24] = v108;
      *(v14 + 4) = v107;
      v14[40] = v106;
      *(v14 + 6) = v105;
      v14[56] = v104;
      *(v14 + 8) = v103;
      v14[72] = v102;
      *(v14 + 10) = v101;
      v14[88] = v100;
      *(v14 + 12) = v99;
      v14[104] = v98;
      *(v14 + 14) = v97;
      v14[120] = v96;
      *(v14 + 16) = v95;
      v14[136] = v94;
      *(v14 + 18) = v93;
      v14[152] = v92;
      *(v14 + 20) = v91;
      v14[168] = v90;
      v58 = &v14[v47[17]];
      *v58 = v89;
      *(v58 + 1) = v57;
      v59 = &v14[v47[21]];
      *v59 = 0;
      *(v59 + 1) = 0;
      v60 = &v14[v47[22]];
      *v60 = 0;
      *(v60 + 1) = 0;
      v61 = &v14[v47[23]];
      *v61 = 0;
      *(v61 + 1) = 0;
      v62 = &v14[v47[24]];
      *v62 = 0;
      *(v62 + 1) = 0;
      v63 = &v14[v47[25]];
      *v63 = 0;
      *(v63 + 1) = 0;
      v64 = MEMORY[0x1E69E7CC0];
      *&v14[v47[26]] = MEMORY[0x1E69E7CC0];
      *&v14[v47[27]] = v64;
      v65 = v116;
      *(v78 + ((v116 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v116;
      v20 = v79;
      v66 = (*(v79 + 48) + 16 * v65);
      v67 = v112;
      *v66 = v113;
      v66[1] = v67;
      result = sub_1DAC2FF24(v14, *(v20 + 56) + *(v83 + 72) * v65);
      v68 = *(v20 + 16);
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        goto LABEL_26;
      }

      *(v20 + 16) = v70;
      v3 = v87;
      v15 = v77;
      v26 = v76;
      v25 = v86;
    }

    while (v86);
  }

  v28 = v21;
  while (1)
  {
    v21 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v21 >= v26)
    {
      *v72 = v20;
      return result;
    }

    v29 = *(v73 + 8 * v21);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v86 = (v29 - 1) & v29;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1DAC2FD68(uint64_t a1)
{
  if (!qword_1EE126CD8)
  {
    sub_1DAC2FDF0(255, &qword_1EE126CE0, type metadata accessor for YahooQuoteDetailItem, MEMORY[0x1E69E5E28]);
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE126CD8);
    }
  }
}

void sub_1DAC2FDF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAC2FE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooQuoteDetailItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC2FEC8(uint64_t a1)
{
  v2 = type metadata accessor for YahooQuoteDetailItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAC2FF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteDetail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAC2FF88()
{
  result = qword_1EE125290;
  if (!qword_1EE125290)
  {
    sub_1DACB7BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125290);
  }

  return result;
}

uint64_t sub_1DAC2FFE0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for RawAttributionSource(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  sub_1DAA6E174(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = sub_1DAA6E1D8();
    v14 = v13;
    sub_1DACB8434();
    sub_1DAA4DC58(&v7[*(v2 + 20)], v10);
    sub_1DAA4D09C(v7, type metadata accessor for RawAttributionSource);
    v15 = sub_1DACB7AB4();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v10, 1, v15) == 1)
    {
      sub_1DAA4DDD0(v10);

LABEL_4:
      sub_1DAA6DD6C(v5);
      sub_1DAC302B4();
      sub_1DACB8454();
      sub_1DAA4D09C(v5, type metadata accessor for RawAttributionSource);
    }

    v17 = sub_1DACB79C4();
    v19 = v18;
    (*(v16 + 8))(v10, v15);
    if (v12 != v17 || v14 != v19)
    {
      v21 = sub_1DACBA174();

      if (v21)
      {
      }

      goto LABEL_4;
    }
  }

  return result;
}

unint64_t sub_1DAC302B4()
{
  result = qword_1EE124AD8;
  if (!qword_1EE124AD8)
  {
    type metadata accessor for RawAttributionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124AD8);
  }

  return result;
}

uint64_t sub_1DAC3030C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1DAA4D460(a2, v6 + 24);
  sub_1DAA4D460(a3, v6 + 64);
  return v6;
}

uint64_t sub_1DAC30384(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  sub_1DAA4D460(a2, v3 + 24);
  sub_1DAA4D460(a3, v3 + 64);
  return v3;
}

void *sub_1DAC303C8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  return v0;
}

uint64_t sub_1DAC303F8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC30440(uint64_t a1, char a2)
{
  sub_1DAC308F8(0, &qword_1EE11FC70, &qword_1EE11FB78, &type metadata for StockRecord);
  sub_1DACB8BB4();
  v2 = sub_1DACB89D4();
  sub_1DAC308F8(0, &qword_1EE11FC60, &qword_1EE123EA0, MEMORY[0x1E69E6158]);
  sub_1DAC30960();
  v3 = sub_1DACB8B64();

  return v3;
}

uint64_t sub_1DAC30534(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAA1C0C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  ObjectType = swift_getObjectType();
  v13 = a1[6];
  v12 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v13);
  v14 = (*(v12 + 40))(a3, v13, v12);
  v15 = a1[11];
  v16 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v15);
  (*(v16 + 8))(v15, v16);
  v17 = *(v7 + 44);
  sub_1DAA4D0FC(v7, type metadata accessor for AppConfiguration);
  *v10 = v17;
  v18 = *MEMORY[0x1E69D63E0];
  v19 = sub_1DACB81B4();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v10, v18, v19);
  (*(v20 + 56))(v10, 0, 1, v19);
  v21 = sub_1DABAE848(v23, v14, v10, ObjectType);

  sub_1DAA4D0FC(v10, sub_1DAAA1C0C);
  return v21;
}

uint64_t sub_1DAC307A0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = *(v5 + 16);
  if (v6)
  {
    v16 = *a2;
    v19 = MEMORY[0x1E69E7CC0];
    v17 = a2[1];
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DAA5859C(0, v6, 0);
    v7 = v19;
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v12 = *(v19 + 16);
      v11 = *(v19 + 24);
      sub_1DACB71E4();
      if (v12 >= v11 >> 1)
      {
        sub_1DAA5859C((v11 > 1), v12 + 1, 1);
      }

      *(v19 + 16) = v12 + 1;
      v13 = v19 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v8 += 13;
      --v6;
    }

    while (v6);

    v2 = a1;
    v4 = v16;
    v3 = v17;
  }

  else
  {
    sub_1DACB71E4();
    v7 = MEMORY[0x1E69E7CC0];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v2;
  sub_1DACA5888(v7, v4, v3, isUniquelyReferenced_nonNull_native);

  *v2 = v20;
  return result;
}

void sub_1DAC308F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DAA488A4(255, a3, a4);
    v5 = sub_1DACB91A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DAC30960()
{
  result = qword_1EE11FC68;
  if (!qword_1EE11FC68)
  {
    sub_1DAC308F8(255, &qword_1EE11FC70, &qword_1EE11FB78, &type metadata for StockRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FC68);
  }

  return result;
}

uint64_t sub_1DAC309D0(uint64_t a1, char a2)
{
  sub_1DAC308F8(0, &qword_1EE11FC70, &qword_1EE11FB78, &type metadata for StockRecord);
  sub_1DACB8BB4();
  v2 = sub_1DACB89D4();
  sub_1DAC308F8(0, &qword_1EE11FC60, &qword_1EE123EA0, MEMORY[0x1E69E6158]);
  sub_1DAC30960();
  v3 = sub_1DACB8B64();

  return v3;
}

uint64_t sub_1DAC30B30()
{
  v0 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v0, qword_1EE11D390);
  __swift_project_value_buffer(v0, qword_1EE11D390);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1DACB9324();
  }

  return sub_1DACB8C84();
}

uint64_t sub_1DAC30C1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB8C94();
  v3 = __swift_project_value_buffer(v2, qword_1EE11D390);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

__n128 ScoringConfig.conversionCohort.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 384);
  *(a1 + 64) = *(v1 + 368);
  *(a1 + 80) = v2;
  v3 = *(v1 + 320);
  *a1 = *(v1 + 304);
  *(a1 + 16) = v3;
  v4 = *(v1 + 352);
  *(a1 + 32) = *(v1 + 336);
  *(a1 + 48) = v4;
  result = *(v1 + 394);
  *(a1 + 90) = result;
  return result;
}

__n128 ScoringConfig.userCohort.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1072);
  v3 = *(v1 + 1104);
  *(a1 + 64) = *(v1 + 1088);
  *(a1 + 80) = v3;
  v4 = *(v1 + 1040);
  *a1 = *(v1 + 1024);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 1056);
  *(a1 + 48) = v2;
  result = *(v1 + 1114);
  *(a1 + 90) = result;
  return result;
}

unint64_t sub_1DAC30FCC(char a1)
{
  result = 0x6361467961636564;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 3:
    case 4:
    case 22:
    case 27:
    case 53:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
    case 54:
      result = 0xD000000000000011;
      break;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 31:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0xD000000000000029;
      break;
    case 14:
    case 18:
      result = 0xD000000000000022;
      break;
    case 15:
      result = 0xD00000000000002ALL;
      break;
    case 16:
    case 17:
    case 55:
      result = 0xD000000000000021;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
    case 25:
      result = 0xD000000000000017;
      break;
    case 21:
    case 26:
    case 51:
    case 57:
      result = 0xD000000000000014;
      break;
    case 23:
      result = 0xD000000000000019;
      break;
    case 24:
    case 32:
    case 41:
      result = 0xD000000000000016;
      break;
    case 28:
    case 30:
      result = 0xD000000000000015;
      break;
    case 29:
      return result;
    case 33:
    case 46:
      result = 0xD00000000000001ELL;
      break;
    case 34:
      result = 0xD00000000000001CLL;
      break;
    case 35:
      result = 0xD00000000000001CLL;
      break;
    case 36:
      result = 0xD00000000000001CLL;
      break;
    case 37:
      result = 0xD00000000000001CLL;
      break;
    case 38:
    case 39:
    case 40:
      result = 0xD00000000000001BLL;
      break;
    case 42:
      result = 0xD00000000000001FLL;
      break;
    case 43:
      result = 0xD000000000000025;
      break;
    case 44:
      result = 0xD00000000000001CLL;
      break;
    case 45:
    case 48:
    case 52:
      result = 0xD00000000000001ALL;
      break;
    case 47:
      result = 0xD000000000000027;
      break;
    case 49:
    case 50:
      result = 0xD000000000000013;
      break;
    case 56:
      result = 0xD000000000000020;
      break;
    case 58:
      result = 0x6F686F4372657375;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

uint64_t sub_1DAC314D0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DAC30FCC(*a1);
  v5 = v4;
  if (v3 == sub_1DAC30FCC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAC31558()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC30FCC(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC315BC(uint64_t a1)
{
  sub_1DAC30FCC(*v1);
  sub_1DACB9404();
}

uint64_t sub_1DAC31610(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  sub_1DAC30FCC(v2);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC31670@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC36E20(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DAC316A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAC30FCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DAC316D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC36E20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC31708(uint64_t a1)
{
  v2 = sub_1DAC33508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC31744(uint64_t a1)
{
  v2 = sub_1DAC33508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ScoringConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAC34568(0, &qword_1EE123CF0, MEMORY[0x1E69E6F48]);
  v334 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v144 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC33508();
  sub_1DACBA2F4();
  if (!v2)
  {
    v9 = v6;
    LOBYTE(v332[0]) = 0;
    v10 = sub_1DACB9F54();
    v12 = v11;
    LOBYTE(v332[0]) = 1;
    v256 = sub_1DACB9F54();
    v257 = v14;
    LOBYTE(v332[0]) = 2;
    v254 = sub_1DACB9F54();
    v255 = v15;
    LOBYTE(v332[0]) = 3;
    v252 = sub_1DACB9F54();
    v253 = v16;
    LOBYTE(v332[0]) = 4;
    v250 = sub_1DACB9F54();
    v251 = v17;
    LOBYTE(v332[0]) = 5;
    v248 = sub_1DACB9F54();
    v249 = v18;
    LOBYTE(v332[0]) = 6;
    v246 = sub_1DACB9F54();
    v247 = v19;
    LOBYTE(v332[0]) = 7;
    v242 = sub_1DACB9F54();
    v245 = v20;
    v244 = a2;
    LOBYTE(v332[0]) = 8;
    v241 = sub_1DACB9F54();
    v243 = v21;
    LOBYTE(v332[0]) = 9;
    v240 = sub_1DACB9F54();
    v23 = v22;
    LOBYTE(v332[0]) = 10;
    v238 = sub_1DACB9F54();
    v239 = v24;
    LOBYTE(v332[0]) = 11;
    v236 = sub_1DACB9F54();
    v237 = v25;
    LOBYTE(v332[0]) = 12;
    v234 = sub_1DACB9F54();
    v235 = v26;
    LOBYTE(v332[0]) = 13;
    v232 = sub_1DACB9F54();
    v233 = v27;
    LOBYTE(v332[0]) = 14;
    v230 = sub_1DACB9F54();
    v231 = v28;
    LOBYTE(v332[0]) = 15;
    v228 = sub_1DACB9F54();
    v229 = v29;
    LOBYTE(v332[0]) = 16;
    v226 = sub_1DACB9F54();
    v227 = v30;
    LOBYTE(v332[0]) = 17;
    v224 = sub_1DACB9F54();
    v225 = v31;
    LOBYTE(v332[0]) = 18;
    v222 = sub_1DACB9F54();
    v223 = v32;
    v331 = 19;
    v221 = sub_1DAC3355C();
    sub_1DACB9F84();
    v329 = v332[4];
    *v330 = v333[0];
    *&v330[10] = *(v333 + 10);
    v325 = v332[0];
    v326 = v332[1];
    v327 = v332[2];
    v328 = v332[3];
    LOBYTE(v319) = 20;
    v219 = sub_1DACB9F54();
    v220 = v33;
    LOBYTE(v319) = 21;
    v217 = sub_1DACB9F54();
    v218 = v34;
    LOBYTE(v319) = 22;
    v215 = sub_1DACB9F54();
    v216 = v35;
    LOBYTE(v319) = 23;
    v213 = sub_1DACB9F54();
    v214 = v36;
    LOBYTE(v319) = 24;
    v211 = sub_1DACB9F54();
    v212 = v37;
    LOBYTE(v319) = 25;
    v209 = sub_1DACB9F54();
    v210 = v38;
    LOBYTE(v319) = 26;
    v207 = sub_1DACB9F54();
    v208 = v39;
    LOBYTE(v319) = 27;
    v205 = sub_1DACB9F54();
    v206 = v40;
    LOBYTE(v319) = 28;
    v203 = sub_1DACB9F54();
    v204 = v41;
    LOBYTE(v319) = 29;
    v201 = sub_1DACB9F54();
    v202 = v42;
    LOBYTE(v319) = 30;
    v199 = sub_1DACB9F54();
    v200 = v43;
    LOBYTE(v319) = 31;
    v197 = sub_1DACB9F54();
    v198 = v44;
    LOBYTE(v319) = 32;
    v195 = sub_1DACB9F54();
    v196 = v45;
    LOBYTE(v319) = 33;
    v193 = sub_1DACB9F54();
    v194 = v46;
    LOBYTE(v319) = 34;
    v191 = sub_1DACB9F54();
    v192 = v47;
    LOBYTE(v319) = 35;
    v189 = sub_1DACB9F54();
    v190 = v48;
    LOBYTE(v319) = 36;
    v187 = sub_1DACB9F54();
    v188 = v49;
    LOBYTE(v319) = 37;
    v177 = sub_1DACB9F54();
    v186 = v50;
    LOBYTE(v319) = 38;
    v175 = sub_1DACB9F54();
    v185 = v51;
    LOBYTE(v319) = 39;
    v173 = sub_1DACB9F54();
    v184 = v52;
    LOBYTE(v319) = 40;
    v171 = sub_1DACB9F54();
    v183 = v53;
    LOBYTE(v319) = 41;
    v168 = sub_1DACB9F54();
    v182 = v54;
    LOBYTE(v319) = 42;
    v166 = sub_1DACB9F54();
    v181 = v55;
    LOBYTE(v319) = 43;
    v164 = sub_1DACB9F54();
    v180 = v56;
    LOBYTE(v319) = 44;
    v162 = sub_1DACB9F54();
    v179 = v57;
    LOBYTE(v319) = 45;
    v160 = sub_1DACB9F54();
    v178 = v58;
    LOBYTE(v319) = 46;
    v158 = sub_1DACB9F54();
    v176 = v59;
    LOBYTE(v319) = 47;
    v156 = sub_1DACB9F54();
    v174 = v60;
    LOBYTE(v319) = 48;
    v154 = sub_1DACB9F54();
    v172 = v61;
    LOBYTE(v319) = 49;
    v153 = sub_1DACB9F54();
    v170 = v62;
    LOBYTE(v319) = 50;
    v152 = sub_1DACB9F54();
    v169 = v63;
    LOBYTE(v319) = 51;
    v151 = sub_1DACB9F54();
    v167 = v64;
    LOBYTE(v319) = 52;
    v150 = sub_1DACB9F54();
    v165 = v65;
    LOBYTE(v319) = 53;
    v149 = sub_1DACB9F54();
    v163 = v66;
    LOBYTE(v319) = 54;
    v148 = sub_1DACB9F54();
    v161 = v67;
    LOBYTE(v319) = 55;
    v147 = sub_1DACB9F54();
    v159 = v68;
    LOBYTE(v319) = 56;
    v146 = sub_1DACB9F54();
    v157 = v69;
    LOBYTE(v319) = 57;
    v145 = sub_1DACB9F54();
    v155 = v70;
    v318 = 58;
    sub_1DACB9F84();
    (*(v9 + 8))(v8, v334);
    v71 = v244;
    *v244 = v10;
    v71[2] = v256;
    v71[4] = v254;
    v71[6] = v252;
    v71[8] = v250;
    v71[10] = v248;
    v71[12] = v246;
    v71[14] = v242;
    v71[16] = v241;
    v71[18] = v240;
    v71[20] = v238;
    v71[22] = v236;
    v71[24] = v234;
    v71[26] = v232;
    v71[28] = v230;
    v71[30] = v228;
    v71[32] = v226;
    v71[34] = v224;
    v71[36] = v222;
    v71[52] = v219;
    v71[54] = v217;
    v71[56] = v215;
    v71[58] = v213;
    v71[60] = v211;
    v71[62] = v209;
    v71[64] = v207;
    v71[66] = v205;
    v71[68] = v203;
    v71[70] = v201;
    v71[72] = v199;
    v71[74] = v197;
    v71[76] = v195;
    v71[78] = v193;
    v71[80] = v191;
    v71[82] = v189;
    v71[84] = v187;
    v71[86] = v177;
    v71[88] = v175;
    v71[90] = v173;
    v71[92] = v171;
    v71[94] = v168;
    v71[96] = v166;
    v71[98] = v164;
    v71[100] = v162;
    v71[102] = v160;
    v71[104] = v158;
    v71[106] = v156;
    v72 = v153;
    v71[108] = v154;
    v71[110] = v72;
    v73 = v151;
    v71[112] = v152;
    v71[114] = v73;
    v74 = v149;
    v71[116] = v150;
    v71[118] = v74;
    v75 = v147;
    v71[120] = v148;
    v71[122] = v75;
    v76 = v145;
    v71[124] = v146;
    v71[126] = v76;
    v317[0] = v12 & 1;
    LOBYTE(v316[0]) = v257 & 1;
    LOBYTE(v315[0]) = v255 & 1;
    LOBYTE(v314[0]) = v253 & 1;
    LOBYTE(v313[0]) = v251 & 1;
    LOBYTE(v312[0]) = v249 & 1;
    LOBYTE(v311[0]) = v247 & 1;
    LOBYTE(v310[0]) = v245 & 1;
    LOBYTE(v309[0]) = v243 & 1;
    LOBYTE(v308[0]) = v23 & 1;
    LOBYTE(v307[0]) = v239 & 1;
    LOBYTE(v306[0]) = v237 & 1;
    LOBYTE(v305[0]) = v235 & 1;
    LOBYTE(v304[0]) = v233 & 1;
    LOBYTE(v303[0]) = v231 & 1;
    LOBYTE(v302[0]) = v229 & 1;
    LOBYTE(v301[0]) = v227 & 1;
    LOBYTE(v300[0]) = v225 & 1;
    LOBYTE(v299[0]) = v223 & 1;
    LOBYTE(v298[0]) = v220 & 1;
    v295 = v218 & 1;
    v294 = v216 & 1;
    v293 = v214 & 1;
    v292 = v212 & 1;
    v291 = v210 & 1;
    v290 = v208 & 1;
    v289 = v206 & 1;
    v288 = v204 & 1;
    v287 = v202 & 1;
    *&v296[21] = v322;
    *&v296[23] = v323;
    v297[0] = v324[0];
    *(v297 + 10) = *(v324 + 10);
    *&v296[15] = v319;
    *&v296[17] = v320;
    *&v296[19] = v321;
    *(&v296[4] + 7) = v327;
    *(&v296[2] + 7) = v326;
    *(v296 + 7) = v325;
    *(&v296[12] + 1) = *&v330[10];
    *(&v296[10] + 7) = *v330;
    *(&v296[8] + 7) = v329;
    *(&v296[6] + 7) = v328;
    v286 = v200 & 1;
    v285 = v198 & 1;
    v284 = v196 & 1;
    v283 = v194 & 1;
    v282 = v192 & 1;
    v281 = v190 & 1;
    v280 = v188 & 1;
    v279 = v186 & 1;
    v278 = v185 & 1;
    v277 = v184 & 1;
    v276 = v183 & 1;
    v275 = v182 & 1;
    v274 = v181 & 1;
    v273 = v180 & 1;
    v272 = v179 & 1;
    v271 = v178 & 1;
    v270 = v176 & 1;
    v269 = v174 & 1;
    v268 = v172 & 1;
    v267 = v170 & 1;
    v266 = v169 & 1;
    v265 = v167 & 1;
    v264 = v165 & 1;
    v263 = v163 & 1;
    v262 = v161 & 1;
    LODWORD(v256) = v159 & 1;
    v261 = v159 & 1;
    v257 = v157 & 1;
    v260 = v157 & 1;
    LODWORD(v334) = v155 & 1;
    v259 = v155 & 1;
    *&v258[39] = v321;
    *&v258[23] = v320;
    *&v258[7] = v319;
    *&v258[97] = *(v324 + 10);
    *&v258[87] = v297[0];
    *&v258[71] = v323;
    *&v258[55] = v322;
    v77 = v12 & 1;
    v78 = v316[0];
    v79 = v255 & 1;
    v80 = v253 & 1;
    LOBYTE(v9) = v251 & 1;
    LOBYTE(v10) = v249 & 1;
    v81 = v247 & 1;
    v82 = v245 & 1;
    v83 = v243 & 1;
    v84 = v308[0];
    v85 = v239 & 1;
    LOBYTE(v76) = v237 & 1;
    v86 = v235 & 1;
    v87 = v233 & 1;
    v88 = v231 & 1;
    v89 = v229 & 1;
    v90 = v227 & 1;
    v91 = v225 & 1;
    v92 = v223 & 1;
    v93 = v220 & 1;
    v94 = v218 & 1;
    v95 = v216 & 1;
    v96 = v214 & 1;
    LODWORD(v254) = v212 & 1;
    v255 = v210 & 1;
    *(v71 + 8) = v77;
    v97 = v290;
    *(v71 + 24) = v78;
    v98 = v289;
    *(v71 + 40) = v79;
    v99 = v288;
    *(v71 + 56) = v80;
    v100 = v287;
    *(v71 + 72) = v9;
    LOBYTE(v9) = v286;
    *(v71 + 88) = v10;
    LOBYTE(v10) = v285;
    *(v71 + 104) = v81;
    v101 = v284;
    *(v71 + 120) = v82;
    v102 = v283;
    *(v71 + 136) = v83;
    v103 = v282;
    *(v71 + 152) = v84;
    v104 = v281;
    *(v71 + 168) = v85;
    v105 = v280;
    *(v71 + 184) = v76;
    LOBYTE(v76) = v279;
    *(v71 + 200) = v86;
    v106 = v278;
    *(v71 + 216) = v87;
    v107 = v277;
    *(v71 + 232) = v88;
    v108 = v276;
    *(v71 + 248) = v89;
    v109 = v275;
    *(v71 + 264) = v90;
    v110 = v274;
    *(v71 + 280) = v91;
    v253 = v273;
    *(v71 + 296) = v92;
    *(v71 + 409) = v296[14];
    v111 = *&v296[10];
    *(v71 + 361) = *&v296[8];
    *(v71 + 377) = v111;
    *(v71 + 393) = *&v296[12];
    v112 = *&v296[2];
    *(v71 + 297) = *v296;
    *(v71 + 313) = v112;
    v113 = *&v296[6];
    *(v71 + 329) = *&v296[4];
    *(v71 + 345) = v113;
    v114 = v272;
    *(v71 + 424) = v93;
    v115 = v271;
    *(v71 + 440) = v94;
    v116 = v270;
    *(v71 + 456) = v95;
    v117 = v269;
    *(v71 + 472) = v96;
    v118 = v268;
    *(v71 + 488) = v254;
    v119 = v267;
    *(v71 + 504) = v255;
    LOBYTE(v91) = v266;
    *(v71 + 520) = v97;
    v120 = v265;
    *(v71 + 536) = v98;
    v121 = v264;
    *(v71 + 552) = v99;
    v122 = v263;
    *(v71 + 568) = v100;
    v123 = v262;
    *(v71 + 584) = v9;
    *(v71 + 600) = v10;
    *(v71 + 616) = v101;
    *(v71 + 632) = v102;
    *(v71 + 648) = v103;
    *(v71 + 664) = v104;
    *(v71 + 680) = v105;
    *(v71 + 696) = v76;
    *(v71 + 697) = *v317;
    *(v71 + 175) = *&v317[3];
    *(v71 + 712) = v106;
    *(v71 + 713) = v316[0];
    *(v71 + 179) = *(v316 + 3);
    *(v71 + 728) = v107;
    *(v71 + 729) = v315[0];
    *(v71 + 183) = *(v315 + 3);
    *(v71 + 744) = v108;
    *(v71 + 187) = *(v314 + 3);
    *(v71 + 745) = v314[0];
    *(v71 + 760) = v109;
    *(v71 + 191) = *(v313 + 3);
    *(v71 + 761) = v313[0];
    *(v71 + 776) = v110;
    *(v71 + 195) = *(v312 + 3);
    *(v71 + 777) = v312[0];
    *(v71 + 792) = v253;
    v124 = v311[0];
    *(v71 + 199) = *(v311 + 3);
    *(v71 + 793) = v124;
    *(v71 + 808) = v114;
    v125 = v310[0];
    *(v71 + 203) = *(v310 + 3);
    *(v71 + 809) = v125;
    *(v71 + 824) = v115;
    v126 = v309[0];
    *(v71 + 207) = *(v309 + 3);
    *(v71 + 825) = v126;
    *(v71 + 840) = v116;
    v127 = v308[0];
    *(v71 + 211) = *(v308 + 3);
    *(v71 + 841) = v127;
    *(v71 + 856) = v117;
    v128 = v307[0];
    *(v71 + 215) = *(v307 + 3);
    *(v71 + 857) = v128;
    *(v71 + 872) = v118;
    v129 = v306[0];
    *(v71 + 219) = *(v306 + 3);
    *(v71 + 873) = v129;
    *(v71 + 888) = v119;
    v130 = v305[0];
    *(v71 + 223) = *(v305 + 3);
    *(v71 + 889) = v130;
    *(v71 + 904) = v91;
    v131 = v304[0];
    *(v71 + 227) = *(v304 + 3);
    *(v71 + 905) = v131;
    *(v71 + 920) = v120;
    v132 = v303[0];
    *(v71 + 231) = *(v303 + 3);
    *(v71 + 921) = v132;
    *(v71 + 936) = v121;
    v133 = v302[0];
    *(v71 + 235) = *(v302 + 3);
    *(v71 + 937) = v133;
    *(v71 + 952) = v122;
    v134 = v301[0];
    *(v71 + 239) = *(v301 + 3);
    *(v71 + 953) = v134;
    *(v71 + 968) = v123;
    v135 = v300[0];
    *(v71 + 243) = *(v300 + 3);
    *(v71 + 969) = v135;
    *(v71 + 984) = v256;
    v136 = v299[0];
    *(v71 + 247) = *(v299 + 3);
    *(v71 + 985) = v136;
    *(v71 + 1000) = v257;
    v137 = v298[0];
    *(v71 + 251) = *(v298 + 3);
    *(v71 + 1001) = v137;
    *(v71 + 1016) = v334;
    v138 = *v258;
    v139 = *&v258[16];
    v140 = *&v258[48];
    *(v71 + 1049) = *&v258[32];
    *(v71 + 1065) = v140;
    *(v71 + 1017) = v138;
    *(v71 + 1033) = v139;
    v141 = *&v258[64];
    v142 = *&v258[80];
    v143 = *&v258[96];
    *(v71 + 1129) = v258[112];
    *(v71 + 1097) = v142;
    *(v71 + 1113) = v143;
    *(v71 + 1081) = v141;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAC33508()
{
  result = qword_1EE124FD0;
  if (!qword_1EE124FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FD0);
  }

  return result;
}

unint64_t sub_1DAC3355C()
{
  result = qword_1EE125118;
  if (!qword_1EE125118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125118);
  }

  return result;
}

uint64_t ScoringConfig.encode(to:)(void *a1)
{
  sub_1DAC34568(0, &qword_1EE123C28, MEMORY[0x1E69E6F58]);
  v141 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v29 - v4;
  v140 = *v1;
  LODWORD(v139) = *(v1 + 8);
  v138 = v1[2];
  v137 = *(v1 + 24);
  v136 = v1[4];
  v135 = *(v1 + 40);
  v134 = v1[6];
  v133 = *(v1 + 56);
  v131 = v1[8];
  v132 = *(v1 + 72);
  v129 = v1[10];
  v130 = *(v1 + 88);
  v127 = v1[12];
  v128 = *(v1 + 104);
  v125 = v1[14];
  v126 = *(v1 + 120);
  v123 = v1[16];
  v124 = *(v1 + 136);
  v121 = v1[18];
  v122 = *(v1 + 152);
  v119 = v1[20];
  v120 = *(v1 + 168);
  v117 = v1[22];
  v118 = *(v1 + 184);
  v115 = v1[24];
  v116 = *(v1 + 200);
  v113 = v1[26];
  v114 = *(v1 + 216);
  v112 = v1[28];
  v7 = *(v1 + 23);
  v6 = *(v1 + 24);
  v8 = *(v1 + 21);
  v152 = *(v1 + 22);
  v153 = v7;
  v9 = *(v1 + 394);
  v10 = *(v1 + 1114);
  v111 = *(v1 + 232);
  v154[0] = v6;
  *(v154 + 10) = v9;
  v11 = *(v1 + 20);
  v149 = *(v1 + 19);
  v150 = v11;
  v151 = v8;
  v12 = *(v1 + 67);
  v13 = *(v1 + 69);
  v159 = *(v1 + 68);
  v160[0] = v13;
  *(v160 + 10) = v10;
  v14 = *(v1 + 65);
  v155 = *(v1 + 64);
  v156 = v14;
  v15 = *(v1 + 66);
  v110 = v1[30];
  v109 = *(v1 + 248);
  v108 = v1[32];
  v107 = *(v1 + 264);
  v33 = v1[34];
  v32 = *(v1 + 280);
  v16 = v1[36];
  v34 = *(v1 + 296);
  v17 = v1[52];
  v35 = v16;
  v36 = v17;
  v37 = *(v1 + 424);
  v38 = v1[54];
  v39 = *(v1 + 440);
  v40 = v1[56];
  v41 = *(v1 + 456);
  v42 = v1[58];
  v43 = *(v1 + 472);
  v44 = v1[60];
  v45 = *(v1 + 488);
  v46 = v1[62];
  v47 = *(v1 + 504);
  v48 = v1[64];
  v49 = *(v1 + 520);
  v50 = v1[66];
  v51 = *(v1 + 536);
  v52 = v1[68];
  v53 = *(v1 + 552);
  v54 = v1[70];
  v55 = *(v1 + 568);
  v56 = v1[72];
  v57 = *(v1 + 584);
  v58 = v1[74];
  v59 = *(v1 + 600);
  v60 = v1[76];
  v61 = *(v1 + 616);
  v30 = v1[78];
  v31 = *(v1 + 632);
  v62 = v1[80];
  v63 = *(v1 + 648);
  v64 = v1[82];
  v65 = *(v1 + 664);
  v66 = v1[84];
  v67 = *(v1 + 680);
  v68 = v1[86];
  v69 = *(v1 + 696);
  v70 = v1[88];
  v71 = *(v1 + 712);
  v72 = v1[90];
  v73 = *(v1 + 728);
  v74 = v1[92];
  v75 = *(v1 + 744);
  v76 = v1[94];
  v77 = *(v1 + 760);
  v78 = v1[96];
  v79 = *(v1 + 776);
  v80 = v1[98];
  v81 = *(v1 + 792);
  v82 = v1[100];
  v83 = *(v1 + 808);
  v84 = v1[102];
  v85 = *(v1 + 824);
  v86 = v1[104];
  v87 = *(v1 + 840);
  v88 = v1[106];
  v89 = *(v1 + 856);
  v90 = v1[108];
  v91 = *(v1 + 872);
  v92 = v1[110];
  v93 = *(v1 + 888);
  v94 = v1[112];
  v95 = *(v1 + 904);
  v96 = v1[114];
  v97 = *(v1 + 920);
  v98 = v1[116];
  v99 = *(v1 + 936);
  v100 = v1[118];
  v101 = *(v1 + 952);
  v102 = v1[120];
  v103 = *(v1 + 968);
  v104 = v1[122];
  v105 = *(v1 + 984);
  v106 = v1[124];
  v18 = *(v1 + 1000);
  v19 = v1[126];
  v20 = *(v1 + 1016);
  v157 = v15;
  v158 = v12;
  v21 = a1[3];
  v22 = a1;
  v24 = v23;
  __swift_project_boxed_opaque_existential_1(v22, v21);
  sub_1DAC33508();
  sub_1DACBA304();
  LOBYTE(v143) = 0;
  v25 = v161;
  sub_1DACBA044();
  if (v25)
  {
    v161 = v25;
    return (*(v141 + 8))(v5, v24);
  }

  else
  {
    LODWORD(v140) = v20;
    v29[1] = v18;
    v139 = v19;
    v27 = v141;
    LOBYTE(v143) = 1;
    sub_1DACBA044();
    LOBYTE(v143) = 2;
    sub_1DACBA044();
    LOBYTE(v143) = 3;
    sub_1DACBA044();
    LOBYTE(v143) = 4;
    sub_1DACBA044();
    LOBYTE(v143) = 5;
    sub_1DACBA044();
    LOBYTE(v143) = 6;
    sub_1DACBA044();
    LOBYTE(v143) = 7;
    sub_1DACBA044();
    LOBYTE(v143) = 8;
    sub_1DACBA044();
    LOBYTE(v143) = 9;
    sub_1DACBA044();
    v161 = 0;
    LOBYTE(v143) = 10;
    sub_1DACBA044();
    v161 = 0;
    LOBYTE(v143) = 11;
    sub_1DACBA044();
    v161 = 0;
    LOBYTE(v143) = 12;
    sub_1DACBA044();
    v161 = 0;
    LOBYTE(v143) = 13;
    sub_1DACBA044();
    v161 = 0;
    LOBYTE(v143) = 14;
    sub_1DACBA044();
    v161 = 0;
    LOBYTE(v143) = 15;
    sub_1DACBA044();
    v161 = 0;
    LOBYTE(v143) = 16;
    sub_1DACBA044();
    v161 = 0;
    LOBYTE(v143) = 17;
    sub_1DACBA044();
    v161 = 0;
    LOBYTE(v143) = 18;
    sub_1DACBA044();
    v161 = 0;
    v147 = v153;
    v148[0] = v154[0];
    *(v148 + 10) = *(v154 + 10);
    v143 = v149;
    v144 = v150;
    v145 = v151;
    v146 = v152;
    v142 = 19;
    v138 = sub_1DAC345CC();
    v28 = v161;
    sub_1DACBA074();
    v161 = v28;
    if (!v28)
    {
      LOBYTE(v143) = 20;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 21;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 22;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 23;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 24;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 25;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 26;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 27;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 28;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 29;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 30;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 31;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 32;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 33;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 34;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 35;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 36;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 37;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 38;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 39;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 40;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 41;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 42;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 43;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 44;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 45;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 46;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 47;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 48;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 49;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 50;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 51;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 52;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 53;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 54;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 55;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 56;
      sub_1DACBA044();
      v161 = 0;
      LOBYTE(v143) = 57;
      sub_1DACBA044();
      v161 = 0;
      v147 = v159;
      v148[0] = v160[0];
      *(v148 + 10) = *(v160 + 10);
      v143 = v155;
      v144 = v156;
      v145 = v157;
      v146 = v158;
      v142 = 58;
      sub_1DACBA074();
      v161 = 0;
    }

    return (*(v27 + 8))(v5, v24);
  }
}

void sub_1DAC34568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAC33508();
    v7 = a3(a1, &type metadata for ScoringConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAC345CC()
{
  result = qword_1EE125120;
  if (!qword_1EE125120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125120);
  }

  return result;
}

uint64_t ScoringConfig.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = *(v1 + 24);
  v5 = v1[4];
  v6 = *(v1 + 40);
  v7 = v1[6];
  v8 = *(v1 + 56);
  v120 = *(v1 + 72);
  v67 = v1[8];
  v68 = v1[10];
  v121 = *(v1 + 88);
  v122 = *(v1 + 104);
  v69 = v1[12];
  v70 = v1[14];
  v123 = *(v1 + 120);
  v124 = *(v1 + 136);
  v71 = v1[16];
  v72 = v1[18];
  v126 = *(v1 + 152);
  v74 = v1[20];
  v128 = *(v1 + 168);
  v76 = v1[22];
  v130 = *(v1 + 184);
  v78 = v1[24];
  v132 = *(v1 + 200);
  v80 = v1[26];
  v125 = *(v1 + 216);
  v73 = v1[28];
  v127 = *(v1 + 232);
  v75 = v1[30];
  v129 = *(v1 + 248);
  v77 = v1[32];
  v131 = *(v1 + 264);
  v79 = v1[34];
  v133 = *(v1 + 280);
  v134 = *(v1 + 296);
  v135 = *(v1 + 409);
  v81 = v1[36];
  v82 = v1[52];
  v136 = *(v1 + 424);
  v137 = *(v1 + 440);
  v83 = v1[54];
  v84 = v1[56];
  v138 = *(v1 + 456);
  v139 = *(v1 + 472);
  v85 = v1[58];
  v86 = v1[60];
  v140 = *(v1 + 488);
  v141 = *(v1 + 504);
  v87 = v1[62];
  v88 = v1[64];
  v142 = *(v1 + 520);
  v143 = *(v1 + 536);
  v89 = v1[66];
  v90 = v1[68];
  v144 = *(v1 + 552);
  v145 = *(v1 + 568);
  v91 = v1[70];
  v92 = v1[72];
  v146 = *(v1 + 584);
  v147 = *(v1 + 600);
  v93 = v1[74];
  v94 = v1[76];
  v148 = *(v1 + 616);
  v149 = *(v1 + 632);
  v95 = v1[78];
  v96 = v1[80];
  v150 = *(v1 + 648);
  v151 = *(v1 + 664);
  v97 = v1[82];
  v98 = v1[84];
  v152 = *(v1 + 680);
  v153 = *(v1 + 696);
  v99 = v1[86];
  v100 = v1[88];
  v154 = *(v1 + 712);
  v155 = *(v1 + 728);
  v101 = v1[90];
  v102 = v1[92];
  v156 = *(v1 + 744);
  v157 = *(v1 + 760);
  v103 = v1[94];
  v104 = v1[96];
  v158 = *(v1 + 776);
  v159 = *(v1 + 792);
  v105 = v1[98];
  v106 = v1[100];
  v160 = *(v1 + 808);
  v161 = *(v1 + 824);
  v107 = v1[102];
  v108 = v1[104];
  v162 = *(v1 + 840);
  v163 = *(v1 + 856);
  v109 = v1[106];
  v110 = v1[108];
  v164 = *(v1 + 872);
  v165 = *(v1 + 888);
  v111 = v1[110];
  v112 = v1[112];
  v166 = *(v1 + 904);
  v167 = *(v1 + 920);
  v113 = v1[114];
  v114 = v1[116];
  v168 = *(v1 + 936);
  v169 = *(v1 + 952);
  v115 = v1[118];
  v116 = v1[120];
  v170 = *(v1 + 968);
  v171 = *(v1 + 984);
  v117 = v1[122];
  v118 = v1[124];
  v172 = *(v1 + 1000);
  v119 = v1[126];
  v173 = *(v1 + 1016);
  v174 = *(v1 + 1129);
  if (*(v1 + 8) == 1)
  {
    sub_1DACBA2A4();
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_233:
    sub_1DACBA2A4();
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_234:
    sub_1DACBA2A4();
    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_235:
    sub_1DACBA2A4();
    if (!v120)
    {
      goto LABEL_15;
    }

LABEL_236:
    sub_1DACBA2A4();
    if (!v121)
    {
      goto LABEL_19;
    }

LABEL_237:
    sub_1DACBA2A4();
    if (!v122)
    {
      goto LABEL_23;
    }

LABEL_238:
    sub_1DACBA2A4();
    if (!v123)
    {
      goto LABEL_27;
    }

LABEL_239:
    sub_1DACBA2A4();
    if (!v124)
    {
      goto LABEL_31;
    }

LABEL_240:
    sub_1DACBA2A4();
    if (!v126)
    {
      goto LABEL_35;
    }

LABEL_241:
    sub_1DACBA2A4();
    if (!v128)
    {
      goto LABEL_39;
    }

LABEL_242:
    sub_1DACBA2A4();
    if (!v130)
    {
      goto LABEL_43;
    }

LABEL_243:
    sub_1DACBA2A4();
    if (!v132)
    {
      goto LABEL_47;
    }

LABEL_244:
    sub_1DACBA2A4();
    if (!v125)
    {
      goto LABEL_51;
    }

LABEL_245:
    sub_1DACBA2A4();
    if (!v127)
    {
      goto LABEL_55;
    }

LABEL_246:
    sub_1DACBA2A4();
    if (!v129)
    {
      goto LABEL_59;
    }

LABEL_247:
    sub_1DACBA2A4();
    if (!v131)
    {
      goto LABEL_63;
    }

LABEL_248:
    sub_1DACBA2A4();
    if (!v133)
    {
      goto LABEL_67;
    }

LABEL_249:
    sub_1DACBA2A4();
    if (!v134)
    {
      goto LABEL_71;
    }

LABEL_250:
    sub_1DACBA2A4();
    if ((v135 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_251;
  }

  sub_1DACBA2A4();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v66 = v2;
  }

  else
  {
    v66 = 0;
  }

  MEMORY[0x1E1277D90](v66);
  if (v4)
  {
    goto LABEL_233;
  }

LABEL_3:
  sub_1DACBA2A4();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1E1277D90](v9);
  if (v6)
  {
    goto LABEL_234;
  }

LABEL_7:
  sub_1DACBA2A4();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1E1277D90](v10);
  if (v8)
  {
    goto LABEL_235;
  }

LABEL_11:
  sub_1DACBA2A4();
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1E1277D90](v11);
  if (v120)
  {
    goto LABEL_236;
  }

LABEL_15:
  sub_1DACBA2A4();
  if ((v67 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v67;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1E1277D90](v12);
  if (v121)
  {
    goto LABEL_237;
  }

LABEL_19:
  sub_1DACBA2A4();
  if ((v68 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v68;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x1E1277D90](v13);
  if (v122)
  {
    goto LABEL_238;
  }

LABEL_23:
  sub_1DACBA2A4();
  if ((v69 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v14 = v69;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1E1277D90](v14);
  if (v123)
  {
    goto LABEL_239;
  }

LABEL_27:
  sub_1DACBA2A4();
  if ((v70 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = v70;
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x1E1277D90](v15);
  if (v124)
  {
    goto LABEL_240;
  }

LABEL_31:
  sub_1DACBA2A4();
  if ((v71 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v16 = v71;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x1E1277D90](v16);
  if (v126)
  {
    goto LABEL_241;
  }

LABEL_35:
  sub_1DACBA2A4();
  if ((v72 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v72;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x1E1277D90](v17);
  if (v128)
  {
    goto LABEL_242;
  }

LABEL_39:
  sub_1DACBA2A4();
  if ((v74 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v18 = v74;
  }

  else
  {
    v18 = 0;
  }

  MEMORY[0x1E1277D90](v18);
  if (v130)
  {
    goto LABEL_243;
  }

LABEL_43:
  sub_1DACBA2A4();
  if ((v76 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v19 = v76;
  }

  else
  {
    v19 = 0;
  }

  MEMORY[0x1E1277D90](v19);
  if (v132)
  {
    goto LABEL_244;
  }

LABEL_47:
  sub_1DACBA2A4();
  if ((v78 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v20 = v78;
  }

  else
  {
    v20 = 0;
  }

  MEMORY[0x1E1277D90](v20);
  if (v125)
  {
    goto LABEL_245;
  }

LABEL_51:
  sub_1DACBA2A4();
  if ((v80 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v21 = v80;
  }

  else
  {
    v21 = 0;
  }

  MEMORY[0x1E1277D90](v21);
  if (v127)
  {
    goto LABEL_246;
  }

LABEL_55:
  sub_1DACBA2A4();
  if ((v73 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v22 = v73;
  }

  else
  {
    v22 = 0;
  }

  MEMORY[0x1E1277D90](v22);
  if (v129)
  {
    goto LABEL_247;
  }

LABEL_59:
  sub_1DACBA2A4();
  if ((v75 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v23 = v75;
  }

  else
  {
    v23 = 0;
  }

  MEMORY[0x1E1277D90](v23);
  if (v131)
  {
    goto LABEL_248;
  }

LABEL_63:
  sub_1DACBA2A4();
  if ((v77 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v24 = v77;
  }

  else
  {
    v24 = 0;
  }

  MEMORY[0x1E1277D90](v24);
  if (v133)
  {
    goto LABEL_249;
  }

LABEL_67:
  sub_1DACBA2A4();
  if ((v79 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v25 = v79;
  }

  else
  {
    v25 = 0;
  }

  MEMORY[0x1E1277D90](v25);
  if (v134)
  {
    goto LABEL_250;
  }

LABEL_71:
  sub_1DACBA2A4();
  if ((v81 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v26 = v81;
  }

  else
  {
    v26 = 0;
  }

  MEMORY[0x1E1277D90](v26);
  if ((v135 & 1) == 0)
  {
LABEL_75:
    sub_1DACBA2A4();
    CohortConfig.hash(into:)();
    if (!v136)
    {
      goto LABEL_76;
    }

LABEL_252:
    sub_1DACBA2A4();
    if (!v137)
    {
      goto LABEL_80;
    }

LABEL_253:
    sub_1DACBA2A4();
    if (!v138)
    {
      goto LABEL_84;
    }

LABEL_254:
    sub_1DACBA2A4();
    if (!v139)
    {
      goto LABEL_88;
    }

LABEL_255:
    sub_1DACBA2A4();
    if (!v140)
    {
      goto LABEL_92;
    }

LABEL_256:
    sub_1DACBA2A4();
    if (!v141)
    {
      goto LABEL_96;
    }

LABEL_257:
    sub_1DACBA2A4();
    if (!v142)
    {
      goto LABEL_100;
    }

LABEL_258:
    sub_1DACBA2A4();
    if (!v143)
    {
      goto LABEL_104;
    }

LABEL_259:
    sub_1DACBA2A4();
    if (!v144)
    {
      goto LABEL_108;
    }

LABEL_260:
    sub_1DACBA2A4();
    if (!v145)
    {
      goto LABEL_112;
    }

LABEL_261:
    sub_1DACBA2A4();
    if (!v146)
    {
      goto LABEL_116;
    }

LABEL_262:
    sub_1DACBA2A4();
    if (!v147)
    {
      goto LABEL_120;
    }

LABEL_263:
    sub_1DACBA2A4();
    if (!v148)
    {
      goto LABEL_124;
    }

LABEL_264:
    sub_1DACBA2A4();
    if (!v149)
    {
      goto LABEL_128;
    }

LABEL_265:
    sub_1DACBA2A4();
    if (!v150)
    {
      goto LABEL_132;
    }

LABEL_266:
    sub_1DACBA2A4();
    if (!v151)
    {
      goto LABEL_136;
    }

LABEL_267:
    sub_1DACBA2A4();
    if (!v152)
    {
      goto LABEL_140;
    }

LABEL_268:
    sub_1DACBA2A4();
    if (!v153)
    {
      goto LABEL_144;
    }

LABEL_269:
    sub_1DACBA2A4();
    if (!v154)
    {
      goto LABEL_148;
    }

LABEL_270:
    sub_1DACBA2A4();
    if (!v155)
    {
      goto LABEL_152;
    }

LABEL_271:
    sub_1DACBA2A4();
    if (!v156)
    {
      goto LABEL_156;
    }

LABEL_272:
    sub_1DACBA2A4();
    if (!v157)
    {
      goto LABEL_160;
    }

LABEL_273:
    sub_1DACBA2A4();
    if (!v158)
    {
      goto LABEL_164;
    }

LABEL_274:
    sub_1DACBA2A4();
    if (!v159)
    {
      goto LABEL_168;
    }

LABEL_275:
    sub_1DACBA2A4();
    if (!v160)
    {
      goto LABEL_172;
    }

LABEL_276:
    sub_1DACBA2A4();
    if (!v161)
    {
      goto LABEL_176;
    }

LABEL_277:
    sub_1DACBA2A4();
    if (!v162)
    {
      goto LABEL_180;
    }

LABEL_278:
    sub_1DACBA2A4();
    if (!v163)
    {
      goto LABEL_184;
    }

LABEL_279:
    sub_1DACBA2A4();
    if (!v164)
    {
      goto LABEL_188;
    }

LABEL_280:
    sub_1DACBA2A4();
    if (!v165)
    {
      goto LABEL_192;
    }

LABEL_281:
    sub_1DACBA2A4();
    if (!v166)
    {
      goto LABEL_196;
    }

LABEL_282:
    sub_1DACBA2A4();
    if (!v167)
    {
      goto LABEL_200;
    }

LABEL_283:
    sub_1DACBA2A4();
    if (!v168)
    {
      goto LABEL_204;
    }

LABEL_284:
    sub_1DACBA2A4();
    if (!v169)
    {
      goto LABEL_208;
    }

LABEL_285:
    sub_1DACBA2A4();
    if (!v170)
    {
      goto LABEL_212;
    }

LABEL_286:
    sub_1DACBA2A4();
    if (!v171)
    {
      goto LABEL_216;
    }

LABEL_287:
    sub_1DACBA2A4();
    if (!v172)
    {
      goto LABEL_220;
    }

LABEL_288:
    sub_1DACBA2A4();
    if (!v173)
    {
      goto LABEL_224;
    }

    goto LABEL_289;
  }

LABEL_251:
  sub_1DACBA2A4();
  if (v136)
  {
    goto LABEL_252;
  }

LABEL_76:
  sub_1DACBA2A4();
  if ((v82 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v27 = v82;
  }

  else
  {
    v27 = 0;
  }

  MEMORY[0x1E1277D90](v27);
  if (v137)
  {
    goto LABEL_253;
  }

LABEL_80:
  sub_1DACBA2A4();
  if ((v83 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v28 = v83;
  }

  else
  {
    v28 = 0;
  }

  MEMORY[0x1E1277D90](v28);
  if (v138)
  {
    goto LABEL_254;
  }

LABEL_84:
  sub_1DACBA2A4();
  if ((v84 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v29 = v84;
  }

  else
  {
    v29 = 0;
  }

  MEMORY[0x1E1277D90](v29);
  if (v139)
  {
    goto LABEL_255;
  }

LABEL_88:
  sub_1DACBA2A4();
  if ((v85 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v30 = v85;
  }

  else
  {
    v30 = 0;
  }

  MEMORY[0x1E1277D90](v30);
  if (v140)
  {
    goto LABEL_256;
  }

LABEL_92:
  sub_1DACBA2A4();
  if ((v86 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v31 = v86;
  }

  else
  {
    v31 = 0;
  }

  MEMORY[0x1E1277D90](v31);
  if (v141)
  {
    goto LABEL_257;
  }

LABEL_96:
  sub_1DACBA2A4();
  if ((v87 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v32 = v87;
  }

  else
  {
    v32 = 0;
  }

  MEMORY[0x1E1277D90](v32);
  if (v142)
  {
    goto LABEL_258;
  }

LABEL_100:
  sub_1DACBA2A4();
  if ((v88 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v33 = v88;
  }

  else
  {
    v33 = 0;
  }

  MEMORY[0x1E1277D90](v33);
  if (v143)
  {
    goto LABEL_259;
  }

LABEL_104:
  sub_1DACBA2A4();
  if ((v89 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v34 = v89;
  }

  else
  {
    v34 = 0;
  }

  MEMORY[0x1E1277D90](v34);
  if (v144)
  {
    goto LABEL_260;
  }

LABEL_108:
  sub_1DACBA2A4();
  if ((v90 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v35 = v90;
  }

  else
  {
    v35 = 0;
  }

  MEMORY[0x1E1277D90](v35);
  if (v145)
  {
    goto LABEL_261;
  }

LABEL_112:
  sub_1DACBA2A4();
  if ((v91 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v36 = v91;
  }

  else
  {
    v36 = 0;
  }

  MEMORY[0x1E1277D90](v36);
  if (v146)
  {
    goto LABEL_262;
  }

LABEL_116:
  sub_1DACBA2A4();
  if ((v92 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v37 = v92;
  }

  else
  {
    v37 = 0;
  }

  MEMORY[0x1E1277D90](v37);
  if (v147)
  {
    goto LABEL_263;
  }

LABEL_120:
  sub_1DACBA2A4();
  if ((v93 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v38 = v93;
  }

  else
  {
    v38 = 0;
  }

  MEMORY[0x1E1277D90](v38);
  if (v148)
  {
    goto LABEL_264;
  }

LABEL_124:
  sub_1DACBA2A4();
  if ((v94 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v39 = v94;
  }

  else
  {
    v39 = 0;
  }

  MEMORY[0x1E1277D90](v39);
  if (v149)
  {
    goto LABEL_265;
  }

LABEL_128:
  sub_1DACBA2A4();
  if ((v95 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v40 = v95;
  }

  else
  {
    v40 = 0;
  }

  MEMORY[0x1E1277D90](v40);
  if (v150)
  {
    goto LABEL_266;
  }

LABEL_132:
  sub_1DACBA2A4();
  if ((v96 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v41 = v96;
  }

  else
  {
    v41 = 0;
  }

  MEMORY[0x1E1277D90](v41);
  if (v151)
  {
    goto LABEL_267;
  }

LABEL_136:
  sub_1DACBA2A4();
  if ((v97 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v42 = v97;
  }

  else
  {
    v42 = 0;
  }

  MEMORY[0x1E1277D90](v42);
  if (v152)
  {
    goto LABEL_268;
  }

LABEL_140:
  sub_1DACBA2A4();
  if ((v98 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v43 = v98;
  }

  else
  {
    v43 = 0;
  }

  MEMORY[0x1E1277D90](v43);
  if (v153)
  {
    goto LABEL_269;
  }

LABEL_144:
  sub_1DACBA2A4();
  if ((v99 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v44 = v99;
  }

  else
  {
    v44 = 0;
  }

  MEMORY[0x1E1277D90](v44);
  if (v154)
  {
    goto LABEL_270;
  }

LABEL_148:
  sub_1DACBA2A4();
  if ((v100 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v45 = v100;
  }

  else
  {
    v45 = 0;
  }

  MEMORY[0x1E1277D90](v45);
  if (v155)
  {
    goto LABEL_271;
  }

LABEL_152:
  sub_1DACBA2A4();
  if ((v101 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v46 = v101;
  }

  else
  {
    v46 = 0;
  }

  MEMORY[0x1E1277D90](v46);
  if (v156)
  {
    goto LABEL_272;
  }

LABEL_156:
  sub_1DACBA2A4();
  if ((v102 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v47 = v102;
  }

  else
  {
    v47 = 0;
  }

  MEMORY[0x1E1277D90](v47);
  if (v157)
  {
    goto LABEL_273;
  }

LABEL_160:
  sub_1DACBA2A4();
  if ((v103 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v48 = v103;
  }

  else
  {
    v48 = 0;
  }

  MEMORY[0x1E1277D90](v48);
  if (v158)
  {
    goto LABEL_274;
  }

LABEL_164:
  sub_1DACBA2A4();
  if ((v104 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v49 = v104;
  }

  else
  {
    v49 = 0;
  }

  MEMORY[0x1E1277D90](v49);
  if (v159)
  {
    goto LABEL_275;
  }

LABEL_168:
  sub_1DACBA2A4();
  if ((v105 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v50 = v105;
  }

  else
  {
    v50 = 0;
  }

  MEMORY[0x1E1277D90](v50);
  if (v160)
  {
    goto LABEL_276;
  }

LABEL_172:
  sub_1DACBA2A4();
  if ((v106 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v51 = v106;
  }

  else
  {
    v51 = 0;
  }

  MEMORY[0x1E1277D90](v51);
  if (v161)
  {
    goto LABEL_277;
  }

LABEL_176:
  sub_1DACBA2A4();
  if ((v107 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v52 = v107;
  }

  else
  {
    v52 = 0;
  }

  MEMORY[0x1E1277D90](v52);
  if (v162)
  {
    goto LABEL_278;
  }

LABEL_180:
  sub_1DACBA2A4();
  if ((v108 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v53 = v108;
  }

  else
  {
    v53 = 0;
  }

  MEMORY[0x1E1277D90](v53);
  if (v163)
  {
    goto LABEL_279;
  }

LABEL_184:
  sub_1DACBA2A4();
  if ((v109 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v54 = v109;
  }

  else
  {
    v54 = 0;
  }

  MEMORY[0x1E1277D90](v54);
  if (v164)
  {
    goto LABEL_280;
  }

LABEL_188:
  sub_1DACBA2A4();
  if ((v110 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v55 = v110;
  }

  else
  {
    v55 = 0;
  }

  MEMORY[0x1E1277D90](v55);
  if (v165)
  {
    goto LABEL_281;
  }

LABEL_192:
  sub_1DACBA2A4();
  if ((v111 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v56 = v111;
  }

  else
  {
    v56 = 0;
  }

  MEMORY[0x1E1277D90](v56);
  if (v166)
  {
    goto LABEL_282;
  }

LABEL_196:
  sub_1DACBA2A4();
  if ((v112 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v57 = v112;
  }

  else
  {
    v57 = 0;
  }

  MEMORY[0x1E1277D90](v57);
  if (v167)
  {
    goto LABEL_283;
  }

LABEL_200:
  sub_1DACBA2A4();
  if ((v113 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v58 = v113;
  }

  else
  {
    v58 = 0;
  }

  MEMORY[0x1E1277D90](v58);
  if (v168)
  {
    goto LABEL_284;
  }

LABEL_204:
  sub_1DACBA2A4();
  if ((v114 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v59 = v114;
  }

  else
  {
    v59 = 0;
  }

  MEMORY[0x1E1277D90](v59);
  if (v169)
  {
    goto LABEL_285;
  }

LABEL_208:
  sub_1DACBA2A4();
  if ((v115 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v60 = v115;
  }

  else
  {
    v60 = 0;
  }

  MEMORY[0x1E1277D90](v60);
  if (v170)
  {
    goto LABEL_286;
  }

LABEL_212:
  sub_1DACBA2A4();
  if ((v116 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v61 = v116;
  }

  else
  {
    v61 = 0;
  }

  MEMORY[0x1E1277D90](v61);
  if (v171)
  {
    goto LABEL_287;
  }

LABEL_216:
  sub_1DACBA2A4();
  if ((v117 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v62 = v117;
  }

  else
  {
    v62 = 0;
  }

  MEMORY[0x1E1277D90](v62);
  if (v172)
  {
    goto LABEL_288;
  }

LABEL_220:
  sub_1DACBA2A4();
  if ((v118 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v63 = v118;
  }

  else
  {
    v63 = 0;
  }

  MEMORY[0x1E1277D90](v63);
  if (!v173)
  {
LABEL_224:
    sub_1DACBA2A4();
    if ((v119 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v64 = v119;
    }

    else
    {
      v64 = 0;
    }

    MEMORY[0x1E1277D90](v64);
    if ((v174 & 1) == 0)
    {
      goto LABEL_228;
    }

    return sub_1DACBA2A4();
  }

LABEL_289:
  sub_1DACBA2A4();
  if ((v174 & 1) == 0)
  {
LABEL_228:
    sub_1DACBA2A4();
    return CohortConfig.hash(into:)();
  }

  return sub_1DACBA2A4();
}

uint64_t ScoringConfig.hashValue.getter()
{
  sub_1DACBA284();
  ScoringConfig.hash(into:)(v1);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC35748()
{
  sub_1DACBA284();
  ScoringConfig.hash(into:)(v1);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3578C(uint64_t a1)
{
  sub_1DACBA284();
  ScoringConfig.hash(into:)(v2);
  return sub_1DACBA2C4();
}

uint64_t _s10StocksCore13ScoringConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v268 = *a1;
  v2 = *(a1 + 8);
  v264 = *(a1 + 16);
  v270 = *(a1 + 24);
  v260 = *(a1 + 32);
  v266 = *(a1 + 40);
  v256 = *(a1 + 48);
  v262 = *(a1 + 56);
  v252 = *(a1 + 64);
  v258 = *(a1 + 72);
  v248 = *(a1 + 80);
  v254 = *(a1 + 88);
  v245 = *(a1 + 96);
  v250 = *(a1 + 104);
  v242 = *(a1 + 112);
  v246 = *(a1 + 120);
  v239 = *(a1 + 128);
  v243 = *(a1 + 136);
  v236 = *(a1 + 144);
  v240 = *(a1 + 152);
  v231 = *(a1 + 160);
  v237 = *(a1 + 168);
  v228 = *(a1 + 176);
  v233 = *(a1 + 184);
  v224 = *(a1 + 192);
  v229 = *(a1 + 200);
  v209 = *(a1 + 208);
  v226 = *(a1 + 216);
  v207 = *(a1 + 224);
  v223 = *(a1 + 232);
  v206 = *(a1 + 240);
  v208 = *(a1 + 248);
  v204 = *(a1 + 256);
  v205 = *(a1 + 264);
  v202 = *(a1 + 272);
  v203 = *(a1 + 280);
  v199 = *(a1 + 288);
  v201 = *(a1 + 296);
  v200 = *(a1 + 409);
  v220 = *(a1 + 416);
  v210 = *(a1 + 424);
  v221 = *(a1 + 432);
  v211 = *(a1 + 440);
  v222 = *(a1 + 448);
  v212 = *(a1 + 456);
  v217 = *(a1 + 464);
  v213 = *(a1 + 472);
  v218 = *(a1 + 480);
  v214 = *(a1 + 488);
  v219 = *(a1 + 496);
  v215 = *(a1 + 504);
  v216 = *(a1 + 512);
  v3 = *(a1 + 1113);
  v4 = *(a2 + 1113);
  v127 = *(a1 + 520);
  v134 = *(a1 + 528);
  v135 = *(a1 + 544);
  v5 = *(a1 + 1104);
  v289 = *(a1 + 1088);
  v6 = *(a1 + 560);
  v290[0] = v5;
  *(v290 + 9) = v3;
  v7 = *(a1 + 1040);
  v285 = *(a1 + 1024);
  v8 = *(a1 + 1072);
  v286 = v7;
  v9 = *(a1 + 1056);
  v288 = v8;
  v287 = v9;
  v10 = *(a2 + 1104);
  v295 = *(a2 + 1088);
  v136 = v6;
  v137 = *(a1 + 576);
  v296[0] = v10;
  *(v296 + 9) = v4;
  v11 = *(a2 + 1040);
  v291 = *(a2 + 1024);
  v12 = *(a2 + 1072);
  v292 = v11;
  v13 = *(a2 + 1056);
  v294 = v12;
  *&v10 = *(a1 + 592);
  v293 = v13;
  v138 = *&v10;
  v139 = *(a1 + 608);
  v121 = *(a1 + 536);
  v123 = *(a1 + 552);
  v125 = *(a1 + 568);
  v128 = *(a1 + 584);
  v130 = *(a1 + 600);
  v132 = *(a1 + 616);
  v141 = *(a1 + 632);
  v142 = *(a1 + 648);
  v143 = *(a1 + 664);
  v144 = *(a1 + 680);
  v145 = *(a1 + 696);
  v147 = *(a1 + 712);
  v149 = *(a1 + 728);
  v152 = *(a1 + 744);
  v155 = *(a1 + 760);
  v158 = *(a1 + 776);
  v160 = *(a1 + 792);
  v163 = *(a1 + 808);
  v165 = *(a1 + 824);
  v167 = *(a1 + 840);
  v169 = *(a1 + 856);
  v171 = *(a1 + 872);
  v174 = *(a1 + 888);
  v176 = *(a1 + 904);
  v178 = *(a1 + 920);
  v180 = *(a1 + 936);
  v183 = *(a1 + 952);
  v186 = *(a1 + 968);
  v181 = *(a1 + 984);
  v184 = *(a1 + 1000);
  v188 = *(a1 + 1016);
  v190 = *(a1 + 1129);
  v14 = *(a2 + 8);
  v15 = *(a2 + 24);
  v16 = *(a2 + 88);
  v198 = *(a2 + 409);
  v197 = *(a2 + 424);
  v196 = *(a2 + 440);
  v194 = *(a2 + 456);
  v99 = *(a2 + 472);
  v101 = *(a2 + 488);
  v103 = *(a2 + 504);
  v105 = *(a2 + 520);
  v107 = *(a2 + 536);
  v109 = *(a2 + 552);
  v111 = *(a2 + 568);
  v114 = *(a2 + 584);
  v117 = *(a2 + 600);
  v120 = *(a2 + 616);
  v122 = *(a2 + 632);
  v124 = *(a2 + 648);
  v126 = *(a2 + 664);
  v129 = *(a2 + 680);
  v131 = *(a2 + 696);
  v133 = *(a2 + 712);
  v153 = *(a2 + 728);
  v157 = *(a2 + 744);
  v159 = *(a2 + 760);
  v162 = *(a2 + 776);
  v17 = *(a2 + 792);
  v18 = *(a2 + 808);
  v19 = *(a2 + 824);
  v20 = *(a2 + 840);
  v21 = *(a2 + 872);
  v22 = *(a2 + 888);
  v23 = *(a2 + 904);
  v24 = *(a2 + 920);
  v113 = *(a1 + 624);
  v116 = *(a1 + 640);
  v119 = *(a1 + 656);
  v140 = *(a1 + 672);
  v146 = *(a1 + 688);
  v148 = *(a1 + 704);
  v150 = *(a1 + 720);
  v151 = *(a1 + 736);
  v154 = *(a1 + 752);
  v156 = *(a1 + 768);
  v161 = *(a1 + 784);
  v164 = *(a1 + 800);
  v166 = *(a1 + 816);
  v168 = *(a1 + 832);
  v170 = *(a1 + 848);
  v172 = *(a1 + 864);
  v173 = *(a1 + 880);
  v175 = *(a1 + 896);
  v177 = *(a1 + 912);
  v179 = *(a1 + 928);
  v182 = *(a1 + 944);
  v185 = *(a1 + 960);
  v187 = *(a1 + 976);
  v189 = *(a1 + 992);
  v191 = *(a1 + 1008);
  v195 = *(a2 + 416);
  v193 = *(a2 + 432);
  v192 = *(a2 + 448);
  v89 = *(a2 + 464);
  v90 = *(a2 + 480);
  v91 = *(a2 + 496);
  v92 = *(a2 + 512);
  v93 = *(a2 + 528);
  v94 = *(a2 + 544);
  v95 = *(a2 + 560);
  v96 = *(a2 + 576);
  v97 = *(a2 + 592);
  v98 = *(a2 + 608);
  v100 = *(a2 + 624);
  v102 = *(a2 + 640);
  v104 = *(a2 + 656);
  v106 = *(a2 + 672);
  v108 = *(a2 + 688);
  v110 = *(a2 + 704);
  v112 = *(a2 + 720);
  v115 = *(a2 + 736);
  v118 = *(a2 + 752);
  v25 = *(a2 + 784);
  if (v2)
  {
    if (!*(a2 + 8))
    {
LABEL_358:
      v86 = 0;
      return v86 & 1;
    }
  }

  else
  {
    if (v268 != *a2)
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_358;
    }
  }

  if (v270)
  {
    if (!*(a2 + 24))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v264 != *(a2 + 16))
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_358;
    }
  }

  if (v266)
  {
    if (!*(a2 + 40))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v260 == *(a2 + 32))
    {
      v26 = *(a2 + 40);
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      goto LABEL_358;
    }
  }

  if (v262)
  {
    if (!*(a2 + 56))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v256 == *(a2 + 48))
    {
      v27 = *(a2 + 56);
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_358;
    }
  }

  if (v258)
  {
    if (!*(a2 + 72))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v252 == *(a2 + 64))
    {
      v28 = *(a2 + 72);
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      goto LABEL_358;
    }
  }

  if (v254)
  {
    if (!*(a2 + 88))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v248 != *(a2 + 80))
    {
      v16 = 1;
    }

    if (v16)
    {
      goto LABEL_358;
    }
  }

  if (v250)
  {
    if (!*(a2 + 104))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v245 == *(a2 + 96))
    {
      v29 = *(a2 + 104);
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      goto LABEL_358;
    }
  }

  if (v246)
  {
    if (!*(a2 + 120))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v242 == *(a2 + 112))
    {
      v30 = *(a2 + 120);
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_358;
    }
  }

  if (v243)
  {
    if (!*(a2 + 136))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v239 == *(a2 + 128))
    {
      v31 = *(a2 + 136);
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      goto LABEL_358;
    }
  }

  if (v240)
  {
    if (!*(a2 + 152))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v236 == *(a2 + 144))
    {
      v32 = *(a2 + 152);
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      goto LABEL_358;
    }
  }

  if (v237)
  {
    if (!*(a2 + 168))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v33 = *(a2 + 168);
    if (v231 != *(a2 + 160))
    {
      v33 = 1;
    }

    if (v33)
    {
      goto LABEL_358;
    }
  }

  if (v233)
  {
    if (!*(a2 + 184))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v34 = *(a2 + 184);
    if (v228 != *(a2 + 176))
    {
      v34 = 1;
    }

    if (v34)
    {
      goto LABEL_358;
    }
  }

  if (v229)
  {
    if (!*(a2 + 200))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v35 = *(a2 + 200);
    if (v224 != *(a2 + 192))
    {
      v35 = 1;
    }

    if (v35)
    {
      goto LABEL_358;
    }
  }

  if (v226)
  {
    if (!*(a2 + 216))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v36 = *(a2 + 216);
    if (v209 != *(a2 + 208))
    {
      v36 = 1;
    }

    if (v36)
    {
      goto LABEL_358;
    }
  }

  v88 = *(a2 + 768);
  v225 = *(a2 + 800);
  v227 = *(a2 + 816);
  v230 = *(a2 + 832);
  v232 = *(a2 + 848);
  v235 = *(a2 + 864);
  v238 = *(a2 + 880);
  v241 = *(a2 + 896);
  v244 = *(a2 + 912);
  v247 = *(a2 + 928);
  v253 = *(a2 + 944);
  v259 = *(a2 + 960);
  v265 = *(a2 + 976);
  v267 = *(a2 + 992);
  v234 = *(a2 + 856);
  v271 = *(a2 + 1008);
  v251 = *(a2 + 936);
  v257 = *(a2 + 952);
  v249 = *(a2 + 968);
  v255 = *(a2 + 984);
  v261 = *(a2 + 1000);
  v263 = *(a2 + 1016);
  v269 = *(a2 + 1129);
  if (v223)
  {
    if (!*(a2 + 232))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v37 = *(a2 + 232);
    if (v207 != *(a2 + 224))
    {
      v37 = 1;
    }

    if (v37)
    {
      goto LABEL_358;
    }
  }

  if (v208)
  {
    if (!*(a2 + 248))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v38 = *(a2 + 248);
    if (v206 != *(a2 + 240))
    {
      v38 = 1;
    }

    if (v38)
    {
      goto LABEL_358;
    }
  }

  if (v205)
  {
    if (!*(a2 + 264))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v39 = *(a2 + 264);
    if (v204 != *(a2 + 256))
    {
      v39 = 1;
    }

    if (v39)
    {
      goto LABEL_358;
    }
  }

  if (v203)
  {
    if (!*(a2 + 280))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v40 = *(a2 + 280);
    if (v202 != *(a2 + 272))
    {
      v40 = 1;
    }

    if (v40)
    {
      goto LABEL_358;
    }
  }

  if (v201)
  {
    if (!*(a2 + 296))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v41 = *(a2 + 296);
    if (v199 != *(a2 + 288))
    {
      v41 = 1;
    }

    if (v41)
    {
      goto LABEL_358;
    }
  }

  if (v200)
  {
    if ((*(a2 + 409) & 1) == 0)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v42 = *(a1 + 384);
    v282 = *(a1 + 368);
    *v283 = v42;
    *&v283[9] = *(a1 + 393);
    v43 = *(a1 + 320);
    v278 = *(a1 + 304);
    v279 = v43;
    v44 = *(a1 + 336);
    v281 = *(a1 + 352);
    v280 = v44;
    v284 = v200;
    if (v198)
    {
      goto LABEL_358;
    }

    v45 = *(a2 + 384);
    v276 = *(a2 + 368);
    v277[0] = v45;
    *(v277 + 9) = *(a2 + 393);
    v46 = *(a2 + 320);
    v272 = *(a2 + 304);
    v273 = v46;
    v47 = *(a2 + 336);
    v275 = *(a2 + 352);
    v274 = v47;
    if ((_s10StocksCore12CohortConfigV2eeoiySbAC_ACtFZ_0(&v278, &v272) & 1) == 0)
    {
      goto LABEL_358;
    }
  }

  if (v210)
  {
    if (!v197)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v48 = v197;
    if (v220 != v195)
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_358;
    }
  }

  if (v211)
  {
    if (!v196)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v49 = v196;
    if (v221 != v193)
    {
      v49 = 1;
    }

    if (v49)
    {
      goto LABEL_358;
    }
  }

  if (v212)
  {
    if (!v194)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v50 = v194;
    if (v222 != v192)
    {
      v50 = 1;
    }

    if (v50)
    {
      goto LABEL_358;
    }
  }

  if (v213)
  {
    if (!v99)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v51 = v99;
    if (v217 != v89)
    {
      v51 = 1;
    }

    if (v51)
    {
      goto LABEL_358;
    }
  }

  if (v214)
  {
    if (!v101)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v52 = v101;
    if (v218 != v90)
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_358;
    }
  }

  if (v215)
  {
    if (!v103)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v53 = v103;
    if (v219 != v91)
    {
      v53 = 1;
    }

    if (v53)
    {
      goto LABEL_358;
    }
  }

  if (v127)
  {
    if (!v105)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v54 = v105;
    if (v216 != v92)
    {
      v54 = 1;
    }

    if (v54)
    {
      goto LABEL_358;
    }
  }

  if (v121)
  {
    if (!v107)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v55 = v107;
    if (v134 != v93)
    {
      v55 = 1;
    }

    if (v55)
    {
      goto LABEL_358;
    }
  }

  if (v123)
  {
    if (!v109)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v56 = v109;
    if (v135 != v94)
    {
      v56 = 1;
    }

    if (v56)
    {
      goto LABEL_358;
    }
  }

  if (v125)
  {
    if (!v111)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v57 = v111;
    if (v136 != v95)
    {
      v57 = 1;
    }

    if (v57)
    {
      goto LABEL_358;
    }
  }

  if (v128)
  {
    if (!v114)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v58 = v114;
    if (v137 != v96)
    {
      v58 = 1;
    }

    if (v58)
    {
      goto LABEL_358;
    }
  }

  if (v130)
  {
    if (!v117)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v59 = v117;
    if (v138 != v97)
    {
      v59 = 1;
    }

    if (v59)
    {
      goto LABEL_358;
    }
  }

  if (v132)
  {
    if (!v120)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v60 = v120;
    if (v139 != v98)
    {
      v60 = 1;
    }

    if (v60)
    {
      goto LABEL_358;
    }
  }

  if (v141)
  {
    if (!v122)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v61 = v122;
    if (v113 != v100)
    {
      v61 = 1;
    }

    if (v61)
    {
      goto LABEL_358;
    }
  }

  if (v142)
  {
    if (!v124)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v62 = v124;
    if (v116 != v102)
    {
      v62 = 1;
    }

    if (v62)
    {
      goto LABEL_358;
    }
  }

  if (v143)
  {
    if (!v126)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v63 = v126;
    if (v119 != v104)
    {
      v63 = 1;
    }

    if (v63)
    {
      goto LABEL_358;
    }
  }

  if (v144)
  {
    if (!v129)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v64 = v129;
    if (v140 != v106)
    {
      v64 = 1;
    }

    if (v64)
    {
      goto LABEL_358;
    }
  }

  if (v145)
  {
    if (!v131)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v65 = v131;
    if (v146 != v108)
    {
      v65 = 1;
    }

    if (v65)
    {
      goto LABEL_358;
    }
  }

  if (v147)
  {
    if (!v133)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v66 = v133;
    if (v148 != v110)
    {
      v66 = 1;
    }

    if (v66)
    {
      goto LABEL_358;
    }
  }

  if (v149)
  {
    if (!v153)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v67 = v153;
    if (v150 != v112)
    {
      v67 = 1;
    }

    if (v67)
    {
      goto LABEL_358;
    }
  }

  if (v152)
  {
    if (!v157)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v68 = v157;
    if (v151 != v115)
    {
      v68 = 1;
    }

    if (v68)
    {
      goto LABEL_358;
    }
  }

  if (v155)
  {
    if (!v159)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v69 = v159;
    if (v154 != v118)
    {
      v69 = 1;
    }

    if (v69)
    {
      goto LABEL_358;
    }
  }

  if (v158)
  {
    if (!v162)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v70 = v162;
    if (v156 != v88)
    {
      v70 = 1;
    }

    if (v70)
    {
      goto LABEL_358;
    }
  }

  if (v160)
  {
    if (!v17)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v71 = v17;
    if (v161 != v25)
    {
      v71 = 1;
    }

    if (v71)
    {
      goto LABEL_358;
    }
  }

  if (v163)
  {
    if (!v18)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v72 = v18;
    if (v164 != v225)
    {
      v72 = 1;
    }

    if (v72)
    {
      goto LABEL_358;
    }
  }

  if (v165)
  {
    if (!v19)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v73 = v19;
    if (v166 != v227)
    {
      v73 = 1;
    }

    if (v73)
    {
      goto LABEL_358;
    }
  }

  if (v167)
  {
    if (!v20)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v74 = v20;
    if (v168 != v230)
    {
      v74 = 1;
    }

    if (v74)
    {
      goto LABEL_358;
    }
  }

  if (v169)
  {
    if (!v234)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v75 = v234;
    if (v170 != v232)
    {
      v75 = 1;
    }

    if (v75)
    {
      goto LABEL_358;
    }
  }

  if (v171)
  {
    if (!v21)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v76 = v21;
    if (v172 != v235)
    {
      v76 = 1;
    }

    if (v76)
    {
      goto LABEL_358;
    }
  }

  if (v174)
  {
    if (!v22)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v77 = v22;
    if (v173 != v238)
    {
      v77 = 1;
    }

    if (v77)
    {
      goto LABEL_358;
    }
  }

  if (v176)
  {
    if (!v23)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v78 = v23;
    if (v175 != v241)
    {
      v78 = 1;
    }

    if (v78)
    {
      goto LABEL_358;
    }
  }

  if (v178)
  {
    if (!v24)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v79 = v24;
    if (v177 != v244)
    {
      v79 = 1;
    }

    if (v79)
    {
      goto LABEL_358;
    }
  }

  if (v180)
  {
    if (!v251)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v80 = v251;
    if (v179 != v247)
    {
      v80 = 1;
    }

    if (v80)
    {
      goto LABEL_358;
    }
  }

  if (v183)
  {
    if (!v257)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v81 = v257;
    if (v182 != v253)
    {
      v81 = 1;
    }

    if (v81)
    {
      goto LABEL_358;
    }
  }

  if (v186)
  {
    if (!v249)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v82 = v249;
    if (v185 != v259)
    {
      v82 = 1;
    }

    if (v82)
    {
      goto LABEL_358;
    }
  }

  if (v181)
  {
    if (!v255)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v83 = v255;
    if (v187 != v265)
    {
      v83 = 1;
    }

    if (v83)
    {
      goto LABEL_358;
    }
  }

  if (v184)
  {
    if (!v261)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v84 = v261;
    if (v189 != v267)
    {
      v84 = 1;
    }

    if (v84)
    {
      goto LABEL_358;
    }
  }

  if (v188)
  {
    if (!v263)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v85 = v263;
    if (v191 != v271)
    {
      v85 = 1;
    }

    if (v85)
    {
      goto LABEL_358;
    }
  }

  if ((v190 & 1) == 0)
  {
    v282 = v289;
    *v283 = v290[0];
    *&v283[9] = *(v290 + 9);
    v278 = v285;
    v279 = v286;
    v281 = v288;
    v280 = v287;
    v284 = v190;
    if ((v269 & 1) == 0)
    {
      v276 = v295;
      v277[0] = v296[0];
      *(v277 + 9) = *(v296 + 9);
      v272 = v291;
      v273 = v292;
      v275 = v294;
      v274 = v293;
      v86 = _s10StocksCore12CohortConfigV2eeoiySbAC_ACtFZ_0(&v278, &v272);
      return v86 & 1;
    }

    goto LABEL_358;
  }

  v86 = v269;
  return v86 & 1;
}

unint64_t sub_1DAC36A04()
{
  result = qword_1ECBE9358;
  if (!qword_1ECBE9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9358);
  }

  return result;
}

uint64_t sub_1DAC36A60(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 1128) = 0;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 1130) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ScoringConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC6)
  {
    goto LABEL_17;
  }

  if (a2 + 58 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 58) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 58;
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

      return (*a1 | (v4 << 8)) - 58;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 58;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3B;
  v8 = v6 - 59;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScoringConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 58 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 58) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC6)
  {
    v4 = 0;
  }

  if (a2 > 0xC5)
  {
    v5 = ((a2 - 198) >> 8) + 1;
    *result = a2 + 58;
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
    *result = a2 + 58;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}