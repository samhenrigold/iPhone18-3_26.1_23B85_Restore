uint64_t sub_1E63A7AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E03F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E63A7B54@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a1)
  {
    if (a4 == -1 || (sub_1E5F8710C(a2, a3, a4 & 1), sub_1E6018A94(), sub_1E6018AE8(), v6 = sub_1E65D7FD8(), sub_1E5FEE4CC(a2, a3, a4), (v6 & 1) == 0))
    {
      if (qword_1ED071AB8 != -1)
      {
        swift_once();
      }

      v7 = qword_1ED0965A0;
    }

    else
    {
      if (qword_1ED071AB0 != -1)
      {
        swift_once();
      }

      v7 = qword_1ED096588;
    }
  }

  else if (a4 == -1 || (sub_1E5F8710C(a2, a3, a4 & 1), sub_1E6018A94(), sub_1E6018AE8(), v8 = sub_1E65D7FD8(), sub_1E5FEE4CC(a2, a3, a4), (v8 & 1) == 0))
  {
    if (qword_1ED071A50 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED096468;
  }

  else
  {
    if (qword_1ED071A68 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED0964B0;
  }

  v9 = sub_1E65D7348();
  v10 = __swift_project_value_buffer(v9, v7);
  return (*(*(v9 - 8) + 16))(a5, v10, v9);
}

uint64_t sub_1E63A7DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionButtonDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E63A7E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073588, &unk_1E65FEFD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5DFD1CC(a1, &v5 - v3, &qword_1ED073588, &unk_1E65FEFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073580, &qword_1E65FEFF0);
  return sub_1E65DE6A8();
}

uint64_t sub_1E63A7ED8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a3;
  v62 = a1;
  v71 = a4;
  v5 = sub_1E65E5128();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E5038();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E5058();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073588, &unk_1E65FEFD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v57 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073580, &qword_1E65FEFF0);
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v57 - v14;
  v15 = type metadata accessor for PreviewButtonViewMetrics(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073660, &qword_1E65ED8C0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v67 = &v57 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078AB8, &qword_1E65FF010);
  v22 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v57 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078AC0, &qword_1E65FF018);
  v65 = *(v25 - 8);
  v66 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v57 - v26);
  v29 = a2[3];
  v28 = a2[4];
  v30 = __swift_project_boxed_opaque_existential_1(a2, v29);
  sub_1E63A97C0(v62, v30, v63, v64, v29, v28);
  sub_1E62BC710();

  sub_1E65DE4D8();
  v31 = sub_1E5FED46C(&qword_1ED078AC8, &qword_1ED078AB8, &qword_1E65FF010, MEMORY[0x1E699CAC0]);
  v32 = sub_1E62F877C();
  v64 = v27;
  v61 = v32;
  v62 = v31;
  sub_1E65E47E8();
  v33 = *(v22 + 8);
  v63 = v21;
  v33(v24, v21);
  swift_getKeyPath();

  sub_1E65E4EC8();

  v74[0] = v75;
  swift_getKeyPath();
  sub_1E65E4EC8();

  swift_getKeyPath();
  sub_1E65E4EC8();

  v34 = v58;
  sub_1E65DE6B8();
  sub_1E602E924(v18);

  (*(v59 + 8))(v34, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073798, &qword_1E65EDA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65F2010;
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  v36 = sub_1E65D8F18();
  v37 = MEMORY[0x1E69E6158];
  *(inited + 48) = v36;
  *(inited + 56) = v38;
  *(inited + 72) = v37;
  *(inited + 80) = 0x6973736572706D69;
  v39 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v39;
  *(inited + 128) = 0x657079546469;
  v41 = *(v18 + 2);
  v40 = *(v18 + 3);
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = v41;
  *(inited + 152) = v40;
  *(inited + 168) = v37;
  *(inited + 176) = 0x54746E65746E6F63;
  *(inited + 184) = 0xEB00000000657079;
  v42 = &v18[*(v16 + 44)];
  v43 = *(v42 + 1);
  *(inited + 192) = *v42;
  *(inited + 200) = v43;
  *(inited + 216) = v37;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x80000001E6615500;

  v44 = sub_1E65D9F78();
  *(inited + 264) = v37;
  *(inited + 240) = v44;
  *(inited + 248) = v45;
  v46 = sub_1E6215168(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A0, &qword_1E65FF0D0);
  swift_arrayDestroy();
  v47 = *(v18 + 5);
  if (v47)
  {
    v48 = *(v18 + 4);
    v77 = v37;
    *&v75 = v48;
    *(&v75 + 1) = v47;
    sub_1E6121EB8(&v75, v74);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v46;
    sub_1E6420DD4(v74, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  }

  sub_1E65E5048();

  sub_1E65E5028();
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E6215168(MEMORY[0x1E69E7CC0]);
  sub_1E6215168(v50);
  v51 = v67;
  sub_1E65E5068();
  sub_1E63AA058(v18, type metadata accessor for PreviewButtonViewMetrics);

  v52 = sub_1E65E5078();
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  v53 = v70;
  sub_1E65E5118();
  *&v75 = v63;
  *(&v75 + 1) = &type metadata for WorkoutDetailActionStyle;
  v76 = v62;
  v77 = v61;
  swift_getOpaqueTypeConformance2();
  v54 = v66;
  v55 = v64;
  sub_1E65E4738();

  (*(v72 + 8))(v53, v73);
  sub_1E5DFE50C(v51, &qword_1ED073660, &qword_1E65ED8C0);
  return (*(v65 + 8))(v55, v54);
}

uint64_t sub_1E63A87A0(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a2;
  v13[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B00, &qword_1E65FF220);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B08, &qword_1E65FF228);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E63AA5CC();
  sub_1E65E6DA8();
  sub_1E63AA620();
  sub_1E65E6B18();
  sub_1E65E6B48();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1E63A8998(uint64_t a1)
{
  v2 = sub_1E63AA5CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63A89D4(uint64_t a1)
{
  v2 = sub_1E63AA5CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63A8A10(uint64_t a1)
{
  v2 = sub_1E63AA620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63A8A4C(uint64_t a1)
{
  v2 = sub_1E63AA620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E63A8A88@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E63AA258(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1E63A8AD0()
{
  sub_1E65E6D28();
  MEMORY[0x1E694E740](0);
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t sub_1E63A8B30(uint64_t a1)
{
  MEMORY[0x1E694E740](0);

  return sub_1E65E5D78();
}

uint64_t sub_1E63A8B84(uint64_t a1)
{
  sub_1E65E6D28();
  MEMORY[0x1E694E740](0);
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t sub_1E63A8BE0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E65E6C18();
  }
}

uint64_t sub_1E63A8C10(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = a2;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E63A8C38, 0, 0);
}

uint64_t sub_1E63A8C38()
{
  v1 = v0[2];
  v0[5] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63A8CE4, v3, v2);
}

uint64_t sub_1E63A8CE4()
{
  v2 = v0[3];
  v1 = v0[4];

  sub_1E64D7F80(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E63A8D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = type metadata accessor for RouteDestination(0);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63A8DF4, 0, 0);
}

uint64_t sub_1E63A8DF4()
{
  v1 = *(v0 + 104);
  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  v2 = *(v0 + 72);
  v23 = v2[3];
  v24 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v23);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
  v4 = (v1 + v3[16]);
  v5 = v3[20];
  v6 = (v1 + v3[24]);
  v7 = (v1 + v3[28]);
  v8 = v3[32];
  v20 = v3[36];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DD0, &unk_1E65FAB50);
  sub_1E65DE488();
  v9 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v9;
  sub_1E63AA004();
  sub_1E65E6848();
  sub_1E65DEC88();
  v10 = sub_1E65DB3E8();
  *v4 = 0;
  v4[1] = 0;
  (*(*(v10 - 8) + 56))(v1 + v5, 1, 1, v10);
  *v6 = sub_1E65DECA8();
  v6[1] = v11;
  *v7 = sub_1E65DECC8();
  v7[1] = v12;
  v13 = *MEMORY[0x1E69CD548];
  v14 = sub_1E65DB5D8();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v1 + v8, v13, v14);
  (*(v15 + 56))(v1 + v8, 0, 1, v14);
  v16 = type metadata accessor for AppComposer(0);
  sub_1E63C08AC(*(v21 + *(v16 + 36)), *(v21 + *(v16 + 36) + 8), v1 + v20);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v22 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 48) = 2;
  *(v0 + 56) = -64;
  sub_1E600F5B0((v0 + 57));
  v17 = swift_task_alloc();
  *(v0 + 112) = v17;
  *v17 = v0;
  v17[1] = sub_1E63A90E0;
  v18 = *(v0 + 104);

  return RoutingContext.presentDestination(_:style:priority:)(v18, (v0 + 48), (v0 + 57), v23, v24);
}

uint64_t sub_1E63A90E0()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  *(v3 + 120) = v0;

  sub_1E63AA058(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63497AC, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63A927C(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073580, &qword_1E65FEFF0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078AB0, &qword_1E65FEFF8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v14 = type metadata accessor for PageMetricsClick(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v30 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  LOBYTE(a1) = *a1;
  (*(v8 + 16))(v10, v31, v7);
  sub_1E602EDB0(a1, v10, v13);
  v31 = v15;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1E5DFE50C(v13, &qword_1ED078AB0, &qword_1E65FEFF8);
  }

  v29 = type metadata accessor for PageMetricsClick;
  sub_1E5E1E800(v13, v19, type metadata accessor for PageMetricsClick);
  v21 = sub_1E65E60A8();
  (*(*(v21 - 8) + 56))(v32, 1, 1, v21);
  v22 = v30;
  sub_1E5E1DB04(v19, v30, type metadata accessor for PageMetricsClick);
  sub_1E65E6058();
  swift_unknownObjectRetain();

  v23 = sub_1E65E6048();
  v24 = (*(v31 + 80) + 112) & ~*(v31 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 16) = v23;
  *(v25 + 24) = v26;
  v27 = *(a3 + 3);
  *(v25 + 64) = *(a3 + 2);
  *(v25 + 80) = v27;
  *(v25 + 96) = *(a3 + 4);
  v28 = *(a3 + 1);
  *(v25 + 32) = *a3;
  *(v25 + 48) = v28;
  sub_1E5E1E800(v22, v25 + v24, v29);
  sub_1E6059EAC(0, 0, v32, &unk_1E65FF008, v25);

  return sub_1E63AA058(v19, type metadata accessor for PageMetricsClick);
}

uint64_t sub_1E63A966C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1E65E6058();
  v5[3] = sub_1E65E6048();
  v10 = (*(a4 + 48) + **(a4 + 48));
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_1E5F9D470;

  return v10(a5);
}

uint64_t sub_1E63A97C0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v46 = a3;
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E28, &unk_1E65FABB0);
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DD0, &unk_1E65FAB50);
  v45 = *(v13 - 8);
  v42 = *(v45 + 64);
  v14 = v42;
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v41 - v15;
  v17 = type metadata accessor for AppComposer(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E30, &unk_1E65FEFA0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v44 = &v41 - v22;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E38, &qword_1E65FABC0);
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v53 = &v41 - v23;
  v55[3] = a5;
  v55[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  v48 = *a4;
  sub_1E5E1DB04(a4, v20, type metadata accessor for AppComposer);
  v25 = *(v18 + 80);
  v26 = swift_allocObject();
  sub_1E5E1E800(v20, v26 + ((v25 + 16) & ~v25), type metadata accessor for AppComposer);
  sub_1E5DF650C(v55, v54);
  sub_1E5DFD1CC(a1, v16, &unk_1ED077DD0, &unk_1E65FAB50);
  sub_1E5E1DB04(a4, v20, type metadata accessor for AppComposer);
  v27 = *(v45 + 80);
  v28 = (v27 + 56) & ~v27;
  v29 = swift_allocObject();
  sub_1E5DF599C(v54, v29 + 16);
  sub_1E63A9E20(v16, v29 + v28);
  sub_1E5E1E800(v20, v29 + ((v14 + v25 + v28) & ~v25), type metadata accessor for AppComposer);
  sub_1E62BC710();
  sub_1E65DEAB8();
  sub_1E65DE8B8();
  sub_1E5DFD1CC(v43, v16, &unk_1ED077DD0, &unk_1E65FAB50);
  v30 = swift_allocObject();
  sub_1E63A9E20(v16, v30 + ((v27 + 16) & ~v27));
  type metadata accessor for AppFeature(0);
  sub_1E5DED16C();
  sub_1E5FED46C(&unk_1ED077E60, &qword_1ED077E38, &qword_1E65FABC0, MEMORY[0x1E699CC88]);
  v31 = v49;
  v32 = v47;
  sub_1E65E4DE8();
  v33 = v46;
  v34 = swift_allocObject();
  v35 = v33[3];
  v34[3] = v33[2];
  v34[4] = v35;
  v34[5] = v33[4];
  v36 = v33[1];
  v34[1] = *v33;
  v34[2] = v36;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1E62BC768;
  *(v37 + 24) = v34;

  v38 = v53;
  v39 = sub_1E65E4F08();

  (*(v51 + 8))(v31, v52);
  (*(v50 + 8))(v38, v32);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return v39;
}

uint64_t sub_1E63A9E20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DD0, &unk_1E65FAB50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E63A9F10(uint64_t a1)
{
  v4 = *(type metadata accessor for PageMetricsClick(0) - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E63A966C(a1, v6, v7, v1 + 32, v1 + v5);
}

unint64_t sub_1E63AA004()
{
  result = qword_1EE2D9BA8[0];
  if (!qword_1EE2D9BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D9BA8);
  }

  return result;
}

uint64_t sub_1E63AA058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E63AA0B8(uint64_t a1, int a2)
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

uint64_t sub_1E63AA100(uint64_t result, int a2, int a3)
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

unint64_t sub_1E63AA150()
{
  result = qword_1EE2D9BA0;
  if (!qword_1EE2D9BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9BA0);
  }

  return result;
}

unint64_t sub_1E63AA1A8()
{
  result = qword_1ED078AD0;
  if (!qword_1ED078AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078AD0);
  }

  return result;
}

unint64_t sub_1E63AA200()
{
  result = qword_1ED078AD8;
  if (!qword_1ED078AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078AD8);
  }

  return result;
}

void *sub_1E63AA258(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078AE0, &qword_1E65FF208);
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078AE8, &unk_1E65FF210);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = a1[3];
  v26 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1E63AA5CC();
  sub_1E65E6D98();
  if (v1)
  {
    goto LABEL_6;
  }

  v12 = v7;
  v13 = sub_1E65E6AF8();
  v14 = (2 * *(v13 + 16)) | 1;
  v22 = v13;
  v23 = v13 + 32;
  v24 = 0;
  v25 = v14;
  if ((sub_1E5FBE3F4() & 1) != 0 || v24 != v25 >> 1)
  {
    v15 = v6;
    v16 = sub_1E65E68F8();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
    *v18 = &type metadata for PreviewIdentifier;
    v11 = v9;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v12 + 8))(v9, v15);
    swift_unknownObjectRelease();
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v11;
  }

  sub_1E63AA620();
  sub_1E65E6A68();
  v11 = sub_1E65E6AA8();
  (*(v21 + 8))(v5, v3);
  (*(v7 + 8))(v9, v6);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v11;
}

unint64_t sub_1E63AA5CC()
{
  result = qword_1ED078AF0;
  if (!qword_1ED078AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078AF0);
  }

  return result;
}

unint64_t sub_1E63AA620()
{
  result = qword_1ED078AF8;
  if (!qword_1ED078AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078AF8);
  }

  return result;
}

unint64_t sub_1E63AA698()
{
  result = qword_1ED078B10;
  if (!qword_1ED078B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B10);
  }

  return result;
}

unint64_t sub_1E63AA6F0()
{
  result = qword_1ED078B18;
  if (!qword_1ED078B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B18);
  }

  return result;
}

unint64_t sub_1E63AA748()
{
  result = qword_1ED078B20;
  if (!qword_1ED078B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B20);
  }

  return result;
}

unint64_t sub_1E63AA7A0()
{
  result = qword_1ED078B28;
  if (!qword_1ED078B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B28);
  }

  return result;
}

unint64_t sub_1E63AA7F8()
{
  result = qword_1ED078B30;
  if (!qword_1ED078B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B30);
  }

  return result;
}

unint64_t sub_1E63AA850()
{
  result = qword_1ED078B38;
  if (!qword_1ED078B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B38);
  }

  return result;
}

uint64_t AppComposer.libraryViewBuilder(currentRoutingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v77 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B40, &qword_1E65FF468);
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v62 - v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077800, &qword_1E65F9698);
  v5 = MEMORY[0x1EEE9AC00](v75);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v62 - v7;
  v8 = type metadata accessor for AppComposer(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8);
  v70 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v69 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B48, &qword_1E65FF470);
  v67 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v64 = &v62 - v16;
  v17 = sub_1E65DF268();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v63 = sub_1E65DF678();
  v66 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = swift_allocObject();
  *(v87 + 16) = 6;
  sub_1E65E5148();
  v85 = sub_1E65E5138();
  v89 = v2;
  v65 = *v2;
  sub_1E5DF650C(a1, &v97);
  v19 = swift_allocObject();
  sub_1E5DF599C(&v97, v19 + 16);
  sub_1E65DF258();
  sub_1E65DF668();
  v81 = type metadata accessor for AppComposer;
  sub_1E5E1DB6C(v2, v15, type metadata accessor for AppComposer);
  v80 = *(v9 + 80);
  v20 = (v80 + 16) & ~v80;
  v21 = v20 + v10;
  v68 = v20 + v10;
  v22 = swift_allocObject();
  v82 = v20;
  v84 = type metadata accessor for AppComposer;
  sub_1E5E1E868(v15, v22 + v20, type metadata accessor for AppComposer);
  type metadata accessor for AppFeature(0);
  sub_1E63B0044(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E63B0044(&qword_1EE2D6798, MEMORY[0x1E699E6C8], MEMORY[0x1E699E6C0]);
  v23 = v64;
  v24 = v63;
  sub_1E65E4DE8();
  v25 = v15;
  v86 = v15;
  sub_1E5E1DB6C(v89, v15, type metadata accessor for AppComposer);
  v26 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = v26;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_1E5E1E868(v25, v28 + v20, type metadata accessor for AppComposer);
  *(v28 + v26) = v87;
  v29 = v85;
  *(v28 + v27) = v85;

  v30 = v29;

  sub_1E65E4CC8();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1E63AC5A0;
  *(v31 + 24) = v28;

  v32 = v62;
  v65 = sub_1E65E4F08();

  (*(v67 + 8))(v23, v78);
  (*(v66 + 8))(v32, v24);

  v33 = sub_1E65DF558();
  v34 = sub_1E6427300(MEMORY[0x1E69E7CC0]);
  v35 = v89;
  v91 = v89;
  v92 = v30;
  v36 = v88;
  v93 = MEMORY[0x1E69AB380];
  v94 = v88;
  v78 = sub_1E64099A4(v34, sub_1E63AEA7C, v90, v33);

  v37 = v86;
  v38 = v81;
  sub_1E5E1DB6C(v35, v86, v81);
  sub_1E5DF650C(v36, &v97);
  v39 = v27;
  v79 = v27;
  v40 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v82;
  v43 = v84;
  sub_1E5E1E868(v37, v41 + v82, v84);
  v67 = v41;
  v44 = v65;
  *(v41 + v83) = v65;
  v45 = v78;
  *(v41 + v39) = v78;
  sub_1E5DF599C(&v97, v41 + v40);
  v46 = v89;
  v47 = v69;
  sub_1E5E1DB6C(v89, v69, v38);
  sub_1E5DF650C(v88, &v96);
  v48 = swift_allocObject();
  v49 = v48 + v42;
  v50 = v43;
  sub_1E5E1E868(v47, v49, v43);
  v51 = v83;
  v66 = v48;
  *(v48 + v83) = v44;
  *(v48 + v79) = v45;
  sub_1E5DF599C(&v96, v48 + v40);
  v52 = v70;
  sub_1E5E1DB6C(v46, v70, v38);
  sub_1E5DF650C(v88, &v95);
  v53 = swift_allocObject();
  v54 = v82;
  sub_1E5E1E868(v52, v53 + v82, v50);
  *(v53 + v51) = v44;
  *(v53 + v79) = v78;
  sub_1E5DF599C(&v95, v53 + v40);
  *(v53 + ((v40 + 47) & 0xFFFFFFFFFFFFFFF8)) = v85;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B50, &qword_1E65FF488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B58, &qword_1E65FF490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B60, &qword_1E65FF498);
  sub_1E63AF954();
  sub_1E5FED46C(&qword_1ED078B80, &qword_1ED078B58, &qword_1E65FF490, MEMORY[0x1E699E690]);
  sub_1E63AFA0C();
  v55 = v71;
  sub_1E65DF2B8();
  v56 = v86;
  sub_1E5E1DB6C(v89, v86, v81);
  v57 = swift_allocObject();
  sub_1E5E1E868(v56, v57 + v54, v84);
  sub_1E5FED46C(&qword_1ED078BA0, &qword_1ED078B40, &qword_1E65FF468, MEMORY[0x1E699E5C0]);
  v58 = v72;
  v59 = v74;
  sub_1E6259D5C(sub_1E5FF0278, v57, v74);

  (*(v76 + 8))(v55, v59);
  sub_1E63AFAC4();
  v60 = v73;
  sub_1E5FEE4C8();
  sub_1E5DFE50C(v58, &unk_1ED077800, &qword_1E65F9698);
  sub_1E5FEE4C8();
  sub_1E5DFE50C(v60, &unk_1ED077800, &qword_1E65F9698);
}

uint64_t sub_1E63AB4C0(char a1, char a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  *(v3 + 74) = a2;
  *(v3 + 73) = a1;
  *(v3 + 24) = type metadata accessor for RouteSource(0);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = type metadata accessor for RouteDestination(0);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63AB58C, 0, 0);
}

uint64_t sub_1E63AB58C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 73);
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  swift_storeEnumTagMultiPayload();
  *v1 = v5;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5E1E868(v3, &v1[*(v2 + 20)], type metadata accessor for RouteSource);
  *&v1[*(v2 + 24)] = MEMORY[0x1E69E7CD0];
  *(v0 + 72) = 2;
  v12 = (*(v7 + 32) + **(v7 + 32));
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_1E63AB750;
  v9 = *(v0 + 48);
  v10 = *(v0 + 74);

  return v12(v9, v10, v0 + 72, v6, v7);
}

uint64_t sub_1E63AB750()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_1E63B0210(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613A218, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63AB8D8(char a1, char a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63AB4C0(a1, a2, v2 + 16);
}

uint64_t sub_1E63AB980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v49 = a3;
  v47 = sub_1E65DEEC8();
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v39 = sub_1E65D7848();
  v11 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65DF608();
  v44 = *(v14 - 8);
  v45 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v43 = &v38 - v21;
  v22 = sub_1E65DF658();
  v41 = *(v22 - 8);
  v42 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AppState(0);
  v26 = type metadata accessor for AppComposer(0);
  sub_1E6093FD0(*(v46 + *(v26 + 20) + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0);
  v40 = v24;
  sub_1E65DF5C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v46 = a1;
  v27 = v39;
  sub_1E65E4C98();
  sub_1E5E1F544(v10);
  sub_1E5DFE50C(v7, &qword_1ED071F78, &unk_1E65EA3F0);
  v28 = *(v11 + 48);
  if (v28(v10, 1, v27) == 1)
  {
    sub_1E65D77C8();
    if (v28(v10, 1, v27) != 1)
    {
      sub_1E5DFE50C(v10, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v10, v27);
  }

  sub_1E65DF5D8();
  (*(v11 + 8))(v13, v27);
  v29 = *(v44 + 8);
  v30 = v17;
  v31 = v45;
  v29(v30, v45);
  v32 = v46;
  v33 = v43;
  sub_1E65DF5E8();
  v29(v20, v31);
  v34 = v32 + *(v25 + 20);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  v36 = v48;
  sub_1E5E1DB6C(v34 + *(v35 + 28), v48, MEMORY[0x1E699CE20]);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_1E63B0210(v36, MEMORY[0x1E699CE20]);
  }

  sub_1E65DF588();
  v29(v33, v31);
  return (*(v41 + 8))(v40, v42);
}

uint64_t sub_1E63ABEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E63AB980(a1, v6, a2);
}

uint64_t sub_1E63ABF60(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for AppState(0) + 180);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0) + 28);
  v5 = sub_1E65DF608();
  v6 = *(*(v5 - 8) + 24);

  return v6(v3 + v4, a2, v5);
}

uint64_t sub_1E63ABFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v42 = a4;
  v35 = a3;
  v37 = a1;
  v6 = sub_1E65DF618();
  v38 = *(v6 - 8);
  v7 = *(v38 + 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v41 = v34 - v9;
  v10 = sub_1E65DF658();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65DF6C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v34 - v19;
  v40 = a2;
  sub_1E65DF5F8();
  sub_1E65DF648();
  (*(v11 + 8))(v13, v10);
  (*(v15 + 104))(v18, *MEMORY[0x1E699E6E8], v14);
  sub_1E63B0044(&qword_1ED078BF0, MEMORY[0x1E699E6F8], MEMORY[0x1E699E700]);
  LOBYTE(v10) = sub_1E65E5B98();
  v21 = *(v15 + 8);
  v21(v18, v14);
  if (v10)
  {
    return (v21)(v20, v14);
  }

  v23 = v42;
  swift_beginAccess();
  sub_1E63AE64C(*(v23 + 16), v36, v35, &v43);
  v24 = sub_1E65E60A8();
  (*(*(v24 - 8) + 56))(v41, 1, 1, v24);
  v25 = v39;
  sub_1E5E1DB6C(v37, v39, MEMORY[0x1E699E6B8]);
  (*(v15 + 16))(v18, v20, v14);
  v34[1] = v43;
  v34[2] = *(&v44 + 1);
  v35 = *(&v45 + 1);
  v36 = *(&v46 + 1);
  v37 = *(&v47 + 1);
  v26 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v27 = (v7 + *(v15 + 80) + v26) & ~*(v15 + 80);
  v28 = swift_allocObject();
  v38 = v21;
  v29 = v28;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  sub_1E5E1E868(v25, v28 + v26, MEMORY[0x1E699E6B8]);
  (*(v15 + 32))(v29 + v27, v18, v14);
  v30 = (v29 + ((v16 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  v31 = v46;
  v30[2] = v45;
  v30[3] = v31;
  v30[4] = v47;
  v32 = v44;
  *v30 = v43;
  v30[1] = v32;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v41, &unk_1E65FF4D0, v29);

  LOBYTE(v29) = sub_1E65DF5A8();

  swift_unknownObjectRelease();
  v38(v20, v14);
  v33 = v42;
  result = swift_beginAccess();
  *(v33 + 16) = v29;
  return result;
}

uint64_t sub_1E63AC5A0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E63ABFFC(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1E63AC658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a2;
  v63 = a5;
  v53 = type metadata accessor for AppComposer(0);
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B78, &qword_1E65FF4A0);
  v60 = *(v61 - 8);
  v13 = MEMORY[0x1EEE9AC00](v61);
  v54 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v48 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B50, &qword_1E65FF488);
  v16 = MEMORY[0x1EEE9AC00](v62);
  v56 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v58 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v48 - v20;
  if (*(a3 + 16) && (v21 = sub_1E6416C34(6), (v22 & 1) != 0))
  {
    v23 = *(a3 + 56) + 88 * v21;
    v24 = *v23;
    v68 = *(v23 + 8);
    v69 = v24;
    v25 = *(v23 + 16);
    v64 = *(v23 + 32);
    v72 = v25;
    v67 = *(v23 + 80);
    v26 = *(v23 + 64);
    v65 = *(v23 + 48);
    v66 = v26;
    sub_1E5E1DB6C(a1, v12, type metadata accessor for AppComposer);
    sub_1E5DF650C(a4, &v71);
    v27 = *(v8 + 80);
    v50 = a4;
    v28 = (v27 + 16) & ~v27;
    v51 = a3;
    v49 = a1;
    v29 = v28 + v9;
    v30 = swift_allocObject();
    sub_1E5E1E868(v12, v30 + v28, type metadata accessor for AppComposer);
    *(v30 + v29) = 6;
    *(v30 + (v29 & 0xFFFFFFFFFFFFFFF8) + 8) = a3;
    sub_1E5DF599C(&v71, v30 + ((((v28 + v9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
    v31 = v52;
    sub_1E5E1DB6C(v49, v52, type metadata accessor for AppComposer);
    sub_1E5DF650C(v50, v70);
    v32 = (v28 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    sub_1E5E1E868(v31, v33 + v28, type metadata accessor for AppComposer);
    v34 = v33 + v32;
    v35 = v68;
    *v34 = v69;
    *(v34 + 8) = v35;
    v36 = v64;
    *(v34 + 16) = v72;
    *(v34 + 32) = v36;
    v37 = v66;
    *(v34 + 48) = v65;
    *(v34 + 64) = v37;
    *(v34 + 80) = v67;
    sub_1E5DF599C(v70, v33 + ((v32 + 95) & 0xFFFFFFFFFFFFFFF8));
    swift_retain_n();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_1E65DAE38();
    sub_1E65DAE38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BB0, &qword_1E65FF4B0);
    sub_1E65DF2A8();
    sub_1E63AFB88();
    sub_1E63B0044(&qword_1EE2D67C0, MEMORY[0x1E699E5B8], MEMORY[0x1E699E5B0]);
    v38 = v54;
    sub_1E65DF218();
    v39 = sub_1E5FED46C(&qword_1ED078B70, &qword_1ED078B78, &qword_1E65FF4A0, MEMORY[0x1E699E590]);
    v40 = v57;
    v41 = v61;
    sub_1E5FEE4C8();
    v42 = *(v60 + 8);
    v42(v38, v41);
    sub_1E5FEE4C8();
    v43 = v56;
    sub_1E62DFC6C(v38, v41, MEMORY[0x1E69E73E0], v39, MEMORY[0x1E6982070]);

    swift_unknownObjectRelease();

    v42(v38, v41);
    v42(v40, v41);
    sub_1E63AF954();
    v44 = v58;
    sub_1E5FEE4C8();
    sub_1E5DFE50C(v43, &qword_1ED078B50, &qword_1E65FF488);
    v45 = v59;
    sub_1E5FEE4C8();
    sub_1E5DFE50C(v44, &qword_1ED078B50, &qword_1E65FF488);
    sub_1E5FEE4C8();
    return sub_1E5DFE50C(v45, &qword_1ED078B50, &qword_1E65FF488);
  }

  else
  {
    *&v71 = 0;
    *(&v71 + 1) = 0xE000000000000000;
    sub_1E65E68A8();

    *&v71 = 0xD000000000000028;
    *(&v71 + 1) = 0x80000001E6616A20;
    v47 = sub_1E65DF568();
    MEMORY[0x1E694D7C0](v47);

    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63ACE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a3;
  v34 = a5;
  v8 = type metadata accessor for AppComposer(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B58, &qword_1E65FF490);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v30 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v32 = &v30 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v33 = &v30 - v22;
  sub_1E5E1DB6C(a1, v11, type metadata accessor for AppComposer);
  sub_1E5DF650C(a4, v35);
  v23 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  sub_1E5E1E868(v11, v25 + v23, type metadata accessor for AppComposer);
  *(v25 + v24) = v31;
  sub_1E5DF599C(v35, v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BC0, &qword_1E65FF4B8);
  sub_1E65DF248();
  sub_1E5FED46C(&qword_1ED078BC8, &qword_1ED078BC0, &qword_1E65FF4B8, &unk_1E6603FA0);
  sub_1E63B0044(&qword_1EE2D67C8, MEMORY[0x1E699E5A0], MEMORY[0x1E699E598]);
  sub_1E65DF578();
  sub_1E5FED46C(&qword_1ED078B80, &qword_1ED078B58, &qword_1E65FF490, MEMORY[0x1E699E690]);
  sub_1E5FEE4C8();
  v26 = *(v13 + 8);
  v26(v16, v12);
  v27 = v32;
  sub_1E5FEE4C8();
  v26(v19, v12);
  v28 = v33;
  sub_1E5FEE4C8();
  v26(v27, v12);
  sub_1E5FEE4C8();
  return (v26)(v28, v12);
}

uint64_t sub_1E63AD254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a3;
  v35 = a2;
  v39 = a5;
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B98, &qword_1E65FF4A8);
  v12 = *(v11 - 8);
  v37 = v11;
  v38 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078B60, &qword_1E65FF498);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v33 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v33 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v36 = &v33 - v25;
  sub_1E5E1DB6C(a1, v10, type metadata accessor for AppComposer);
  sub_1E5DF650C(a4, v40);
  v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = (v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_1E5E1E868(v10, v28 + v26, type metadata accessor for AppComposer);
  *(v28 + v27) = v34;
  sub_1E5DF599C(v40, v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_1E65DF778();
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BB0, &qword_1E65FF4B0);
  sub_1E63B0044(&qword_1EE2D6778, MEMORY[0x1E699E748], MEMORY[0x1E699E740]);
  sub_1E63AFB88();
  sub_1E65DF708();
  v29 = sub_1E5FED46C(&qword_1ED078B90, &qword_1ED078B98, &qword_1E65FF4A8, MEMORY[0x1E699E728]);
  v30 = v37;
  sub_1E614EE6C(v37, v29);
  (*(v38 + 8))(v14, v30);
  sub_1E63AFA0C();
  sub_1E5FEE4C8();
  sub_1E5DFE50C(v18, &qword_1ED078B60, &qword_1E65FF498);
  sub_1E5FEE4C8();
  sub_1E5DFE50C(v21, &qword_1ED078B60, &qword_1E65FF498);
  v31 = v36;
  sub_1E5FEE4C8();
  sub_1E5DFE50C(v24, &qword_1ED078B60, &qword_1E65FF498);
  sub_1E5FEE4C8();
  return sub_1E5DFE50C(v31, &qword_1ED078B60, &qword_1E65FF498);
}

uint64_t sub_1E63AD6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v35[3] = a1;
  v42 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729B8, &qword_1E65EC190);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v38 = v35 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BB0, &qword_1E65FF4B0);
  v13 = MEMORY[0x1EEE9AC00](v41);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v39 = v35 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v40 = v35 - v18;
  if (*(a3 + 16) && (v19 = sub_1E6416C34(a2), (v20 & 1) != 0))
  {
    v21 = *(a3 + 56) + 88 * v19;
    v22 = *(v21 + 48);
    v46 = *(v21 + 32);
    v47 = v22;
    v48 = *(v21 + 64);
    v49 = *(v21 + 80);
    v23 = *(v21 + 16);
    v45[0] = *v21;
    v45[1] = v23;
    v35[4] = *(&v45[0] + 1);
    v37 = *&v45[0];
    v35[2] = v46;
    v35[1] = v47;

    swift_unknownObjectRetain();

    sub_1E60A2620(a2, v45, v11, v36);
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C0, &qword_1E65EC198);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C8, &qword_1E65EC1A0);
    v26 = sub_1E5FED46C(&qword_1ED0729D0, &qword_1ED0729C8, &qword_1E65EC1A0, MEMORY[0x1E6981810]);
    v43 = v25;
    v44 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v43 = v24;
    v44 = OpaqueTypeConformance2;
    v28 = swift_getOpaqueTypeConformance2();
    v29 = v38;
    sub_1E5FEE4C8();
    v30 = *(v8 + 8);
    v30(v11, v7);
    sub_1E5FEE4C8();
    sub_1E62DFC6C(v11, v7, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E6982070]);

    swift_unknownObjectRelease();

    v30(v11, v7);
    v30(v29, v7);
    sub_1E63AFB88();
    v31 = v39;
    sub_1E5FEE4C8();
    sub_1E5DFE50C(v15, &qword_1ED078BB0, &qword_1E65FF4B0);
    v32 = v40;
    sub_1E5FEE4C8();
    sub_1E5DFE50C(v31, &qword_1ED078BB0, &qword_1E65FF4B0);
    sub_1E5FEE4C8();
    return sub_1E5DFE50C(v32, &qword_1ED078BB0, &qword_1E65FF4B0);
  }

  else
  {
    *&v45[0] = 0;
    *(&v45[0] + 1) = 0xE000000000000000;
    sub_1E65E68A8();

    *&v45[0] = 0xD000000000000020;
    *(&v45[0] + 1) = 0x80000001E66169C0;
    v34 = sub_1E65DF568();
    MEMORY[0x1E694D7C0](v34);

    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63ADBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v9 = type metadata accessor for AppComposer(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BC0, &qword_1E65FF4B8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  sub_1E5E1DB6C(a2, v12, type metadata accessor for AppComposer);
  sub_1E5DF650C(a4, v26);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_1E5E1E868(v12, v21 + v19, type metadata accessor for AppComposer);
  *(v21 + v20) = a3;
  sub_1E5DF599C(v26, v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BB0, &qword_1E65FF4B0);
  v23 = sub_1E63AFB88();
  sub_1E646280C(sub_1E63AFDC8, a1, sub_1E63B0270, v21, v22, v23, v16);
  sub_1E5FED46C(&qword_1ED078BC8, &qword_1ED078BC0, &qword_1E65FF4B8, &unk_1E6603FA0);
  sub_1E5FEE4C8();
  sub_1E5DFE50C(v16, &qword_1ED078BC0, &qword_1E65FF4B8);
  sub_1E5FEE4C8();
  return sub_1E5DFE50C(v18, &qword_1ED078BC0, &qword_1E65FF4B8);
}

uint64_t sub_1E63ADE78(uint64_t a1)
{
  v11[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BD0, &qword_1E65FF4C0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BD8, &qword_1E65FF4C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  sub_1E63AFE7C();
  sub_1E65E4DD8();
  sub_1E65DF678();
  sub_1E63B0044(&qword_1EE2D6798, MEMORY[0x1E699E6C8], MEMORY[0x1E699E6C0]);
  sub_1E5FED46C(&qword_1ED078BE8, &qword_1ED078BD8, &qword_1E65FF4C8, MEMORY[0x1E6999B38]);
  sub_1E65E4DF8();
  sub_1E65E4CC8();
  v9 = sub_1E65E4F08();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_1E63AE0DC@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E65DF5A8();
  *a2 = result;
  return result;
}

uint64_t sub_1E63AE108(uint64_t a1)
{

  v2 = sub_1E65DF538();

  return MEMORY[0x1EEE07020](sub_1E5FF01C4, a1, v2);
}

uint64_t sub_1E63AE164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v35[3] = a2;
  v42 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729B8, &qword_1E65EC190);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v38 = v35 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BB0, &qword_1E65FF4B0);
  v13 = MEMORY[0x1EEE9AC00](v41);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v39 = v35 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v40 = v35 - v18;
  if (*(a3 + 16) && (v19 = sub_1E6416C34(a1), (v20 & 1) != 0))
  {
    v21 = *(a3 + 56) + 88 * v19;
    v22 = *(v21 + 48);
    v46 = *(v21 + 32);
    v47 = v22;
    v48 = *(v21 + 64);
    v49 = *(v21 + 80);
    v23 = *(v21 + 16);
    v45[0] = *v21;
    v45[1] = v23;
    v35[4] = *(&v45[0] + 1);
    v37 = *&v45[0];
    v35[2] = v46;
    v35[1] = v47;

    swift_unknownObjectRetain();

    sub_1E60A2620(a1, v45, v11, v36);
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C0, &qword_1E65EC198);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C8, &qword_1E65EC1A0);
    v26 = sub_1E5FED46C(&qword_1ED0729D0, &qword_1ED0729C8, &qword_1E65EC1A0, MEMORY[0x1E6981810]);
    v43 = v25;
    v44 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v43 = v24;
    v44 = OpaqueTypeConformance2;
    v28 = swift_getOpaqueTypeConformance2();
    v29 = v38;
    sub_1E5FEE4C8();
    v30 = *(v8 + 8);
    v30(v11, v7);
    sub_1E5FEE4C8();
    sub_1E62DFC6C(v11, v7, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E6982070]);

    swift_unknownObjectRelease();

    v30(v11, v7);
    v30(v29, v7);
    sub_1E63AFB88();
    v31 = v39;
    sub_1E5FEE4C8();
    sub_1E5DFE50C(v15, &qword_1ED078BB0, &qword_1E65FF4B0);
    v32 = v40;
    sub_1E5FEE4C8();
    sub_1E5DFE50C(v31, &qword_1ED078BB0, &qword_1E65FF4B0);
    sub_1E5FEE4C8();
    return sub_1E5DFE50C(v32, &qword_1ED078BB0, &qword_1E65FF4B0);
  }

  else
  {
    *&v45[0] = 0;
    *(&v45[0] + 1) = 0xE000000000000000;
    sub_1E65E68A8();

    *&v45[0] = 0xD000000000000020;
    *(&v45[0] + 1) = 0x80000001E66169C0;
    v34 = sub_1E65DF568();
    MEMORY[0x1E694D7C0](v34);

    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63AE64C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v67 = a2;
  v59 = a4;
  v6 = type metadata accessor for AppComposer(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v60 = &v54 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v57 = &v54 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v54 - v17;
  v66 = type metadata accessor for AppComposer;
  sub_1E5E1DB6C(a3, &v54 - v17, type metadata accessor for AppComposer);
  v19 = *(v7 + 80);
  v20 = (v19 + 16) & ~v19;
  v21 = swift_allocObject();
  v62 = type metadata accessor for AppComposer;
  sub_1E5E1E868(v18, v21 + v20, type metadata accessor for AppComposer);
  *(v21 + v20 + v8) = a1;
  v64 = a3;
  v65 = v21;
  sub_1E5E1DB6C(a3, v16, type metadata accessor for AppComposer);
  v58 = (v19 + 32) & ~v19;
  v22 = (v58 + v8) & 0xFFFFFFFFFFFFFFF8;
  v56 = v58 + v8;
  v23 = swift_allocObject();
  v55 = v23;
  v63 = &unk_1E65F1EA0;
  *(v23 + 16) = &unk_1E65F1EA0;
  *(v23 + 24) = v21;
  v24 = v16;
  v25 = v62;
  sub_1E5E1E868(v24, v23 + ((v19 + 32) & ~v19), v62);
  *(v23 + ((v19 + 32) & ~v19) + v8) = 0;
  v26 = v23 + v22;
  v54 = sub_1E6172524;
  *(v26 + 8) = sub_1E6172524;
  *(v26 + 16) = 0;
  v27 = (v23 + ((v22 + 31) & 0xFFFFFFFFFFFFFFF8));
  v28 = MEMORY[0x1E69AB380];
  v29 = v66;
  v30 = v67;
  *v27 = v67;
  v27[1] = v28;
  v31 = v28;
  v32 = v57;
  sub_1E5E1DB6C(a3, v57, v29);
  v33 = (v19 + 48) & ~v19;
  v34 = v33 + v8;
  v35 = (v33 + v8) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v63;
  v38 = v65;
  v36[2] = v63;
  v36[3] = v38;
  v36[4] = v30;
  v36[5] = v31;
  sub_1E5E1E868(v32, v36 + v33, v25);
  *(v36 + v34) = 0;
  v39 = v36 + v35;
  v40 = v54;
  *(v39 + 1) = v54;
  *(v39 + 2) = 0;
  v41 = v60;
  v42 = v66;
  sub_1E5E1DB6C(v64, v60, v66);
  v43 = (v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v65;
  v44[2] = v37;
  v44[3] = v45;
  v46 = v67;
  v44[4] = v67;
  v44[5] = MEMORY[0x1E69AB380];
  v47 = v44 + v33;
  v48 = v62;
  sub_1E5E1E868(v41, v47, v62);
  v49 = v44 + v43;
  *v49 = v40;
  *(v49 + 1) = 0;
  v49[16] = 0;
  v50 = v61;
  sub_1E5E1DB6C(v64, v61, v42);
  v51 = swift_allocObject();
  *(v51 + 16) = v63;
  *(v51 + 24) = v45;
  sub_1E5E1E868(v50, v51 + v58, v48);
  swift_retain_n();
  result = swift_retain_n();
  v53 = v59;
  *v59 = v46;
  v53[1] = MEMORY[0x1E69AB380];
  v53[2] = &unk_1E65EB918;
  v53[3] = v55;
  v53[4] = &unk_1E65FA770;
  v53[5] = v36;
  v53[6] = &unk_1E65EB920;
  v53[7] = v44;
  v53[8] = &unk_1E65FA780;
  v53[9] = v51;
  return result;
}

uint64_t objectdestroy_15Tm_1()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);
  v93 = (v94 + 16) & ~v94;
  v95 = v0;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((((((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E63AF7CC(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, unint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v4);
  v7 = *(v1 + v5);

  return a1(v1 + v3, v6, v7, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E63AF894@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);

  return sub_1E63AD254(v1 + v4, v7, v8, v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8), a1);
}

unint64_t sub_1E63AF954()
{
  result = qword_1ED078B68;
  if (!qword_1ED078B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078B50, &qword_1E65FF488);
    sub_1E5FED46C(&qword_1ED078B70, &qword_1ED078B78, &qword_1E65FF4A0, MEMORY[0x1E699E590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B68);
  }

  return result;
}

unint64_t sub_1E63AFA0C()
{
  result = qword_1ED078B88;
  if (!qword_1ED078B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078B60, &qword_1E65FF498);
    sub_1E5FED46C(&qword_1ED078B90, &qword_1ED078B98, &qword_1E65FF4A8, MEMORY[0x1E699E728]);
    sub_1E614F070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078B88);
  }

  return result;
}

unint64_t sub_1E63AFAC4()
{
  result = qword_1ED078BA8;
  if (!qword_1ED078BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077800, &qword_1E65F9698);
    sub_1E5FED46C(&qword_1ED078BA0, &qword_1ED078B40, &qword_1E65FF468, MEMORY[0x1E699E5C0]);
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078BA8);
  }

  return result;
}

unint64_t sub_1E63AFB88()
{
  result = qword_1ED078BB8;
  if (!qword_1ED078BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078BB0, &qword_1E65FF4B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C0, &qword_1E65EC198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C8, &qword_1E65EC1A0);
    sub_1E5FED46C(&qword_1ED0729D0, &qword_1ED0729C8, &qword_1E65EC1A0, MEMORY[0x1E6981810]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078BB8);
  }

  return result;
}

uint64_t sub_1E63AFCC8()
{

  return MEMORY[0x1EEE06D88](sub_1E604FC60, v0, v1);
}

uint64_t sub_1E63AFD1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + 16);

  return sub_1E63ADBB4(v7, v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), a1);
}

uint64_t sub_1E63AFDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E63AE164(a1, v2 + v6, *(v2 + v7), v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8), a2);
}

unint64_t sub_1E63AFE7C()
{
  result = qword_1ED078BE0;
  if (!qword_1ED078BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078BE0);
  }

  return result;
}

uint64_t sub_1E63AFED0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_1E63AD6CC(v1 + v4, v6, v7, v1 + (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8), a1);
}

uint64_t sub_1E63AFF7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 95) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1 + v4;
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  v10[2] = *(v6 + 40);
  v10[3] = v8;
  v10[4] = *(v6 + 72);
  v10[0] = *(v6 + 8);
  v10[1] = v7;
  return sub_1E6137C68(v10, v1 + v5, a1);
}

uint64_t sub_1E63B0044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E63B008C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65DF618() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65DF6C8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E6275E18(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1E63B0210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E63B0274()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  sub_1E63B032C();
  sub_1E65E0678();
  sub_1E65E07C8();
  return sub_1E65E1908();
}

double sub_1E63B032C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v0 = dbl_1E65FF4D8[v2];
  sub_1E65E0678();
  if (sub_1E65E07C8())
  {
    sub_1E65E0678();
    if (sub_1E65E07C8())
    {
      return 0.33;
    }

    else
    {
      return 0.5;
    }
  }

  return v0;
}

uint64_t sub_1E63B03C8(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v4 &= v4 - 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074240, &qword_1E65EFEB8);
      result = sub_1E65D7FB8();
      if (v17 != 3)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E64F6654(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      v16 = v11 + 1;
      v13 = v8;
      v14 = *(v8 + 16);
      result = sub_1E64F6654((v10 > 1), v11 + 1, 1, v13);
      v11 = v14;
      v12 = v16;
      v8 = result;
    }

    *(v8 + 16) = v12;
    *(v8 + v11 + 32) = v17;
  }

  while (v4);
LABEL_6:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      v15 = sub_1E600B048(v8);

      return v15;
    }

    v4 = *(v1 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E63B0584(uint64_t a1)
{
  v15 = MEMORY[0x1E69E7CD0];
  sub_1E65D81D8();
  if (v1)
  {

    if (sub_1E65D80D8() >= 1)
    {
      sub_1E60F191C(v13, 4);
    }

    sub_1E65D8088();
    if (v2)
    {

      v3 = 1;
LABEL_6:
      sub_1E60F191C(v13, v3);
    }
  }

  else
  {
    sub_1E65D8088();
    if (v4)
    {

      sub_1E60F191C(v13, 1);
    }

    if (sub_1E65D80D8() >= 1)
    {
      sub_1E60F191C(v13, 0);
    }

    v5 = sub_1E65D80C8();
    v7 = v6;
    v13[0] = v5;
    v13[1] = v6;
    v9 = v8 & 1;
    v14 = v8 & 1;
    sub_1E6018A94();
    sub_1E6018AE8();
    v10 = sub_1E65D7FE8();
    sub_1E5FEE4CC(v5, v7, v9);
    if (v10)
    {
      sub_1E60F191C(v13, 3);
    }

    v11 = sub_1E65D81C8();
    if (v11 != 2 && (v11 & 1) != 0)
    {
      v3 = 2;
      goto LABEL_6;
    }
  }

  return v15;
}

uint64_t sub_1E63B0704(uint64_t a1)
{
  v15 = MEMORY[0x1E69E7CD0];
  sub_1E65D81D8();
  if (v1)
  {

    if (sub_1E637E938())
    {
      sub_1E65D8088();
      if (v2)
      {

        sub_1E60F191C(v13, 1);
      }
    }

    if ((sub_1E637E938() & 1) != 0 && sub_1E65D80D8() >= 1)
    {
      v3 = 4;
LABEL_8:
      sub_1E60F191C(v13, v3);
    }
  }

  else
  {
    if (sub_1E637E938())
    {
      sub_1E65D8088();
      if (v4)
      {

        sub_1E60F191C(v13, 1);
      }
    }

    if (sub_1E637E938())
    {
      v5 = sub_1E65D80C8();
      v7 = v6;
      v13[0] = v5;
      v13[1] = v6;
      v9 = v8 & 1;
      v14 = v8 & 1;
      sub_1E6018A94();
      sub_1E6018AE8();
      v10 = sub_1E65D7FE8();
      sub_1E5FEE4CC(v5, v7, v9);
      if (v10)
      {
        sub_1E60F191C(v13, 3);
      }
    }

    if ((sub_1E637E938() & 1) != 0 && sub_1E65D80D8() >= 1)
    {
      sub_1E60F191C(v13, 0);
    }

    if (sub_1E637E938())
    {
      v11 = sub_1E65D81C8();
      if (v11 != 2 && (v11 & 1) != 0)
      {
        v3 = 2;
        goto LABEL_8;
      }
    }
  }

  return v15;
}

uint64_t sub_1E63B08E8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E65E1278();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x1E699E7D8])
  {
    v9 = MEMORY[0x1E69CD588];
LABEL_5:
    (*(v5 + 96))(v7, v4);
    *a1 = *v7;
    v10 = *v9;
    v11 = sub_1E65DB638();
    return (*(*(v11 - 8) + 104))(a1, v10, v11);
  }

  if (v8 == *MEMORY[0x1E699E7E0])
  {
    v9 = MEMORY[0x1E69CD590];
    goto LABEL_5;
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD000000000000048, 0x80000001E6616A90);
  sub_1E65E69B8();
  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E63B0B0C(uint64_t a1)
{
  v3 = sub_1E65E3378();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v47 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = v33 - v7;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v33[1] = v1;
  v53 = MEMORY[0x1E69E7CC0];
  sub_1E601C1F4(0, v8, 0);
  v9 = v53;
  v10 = a1 + 56;
  v11 = sub_1E65E6748();
  v12 = 0;
  v46 = v4 + 16;
  v45 = v4 + 88;
  v44 = *MEMORY[0x1E699EBF8];
  v38 = *MEMORY[0x1E699EBF0];
  v36 = *MEMORY[0x1E699EC00];
  v13 = *MEMORY[0x1E699EBE8];
  v34 = *MEMORY[0x1E699EBE0];
  v35 = v13;
  v42 = a1 + 56;
  v43 = (v4 + 8);
  v37 = a1 + 64;
  v40 = v4;
  v41 = v3;
  v39 = v8;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_31;
    }

    v50 = 1 << v11;
    v51 = v9;
    v16 = *(a1 + 36);
    v48 = v12;
    v49 = v16;
    v17 = a1;
    v18 = *(v4 + 16);
    v19 = v52;
    v18(v52, *(a1 + 48) + *(v4 + 72) * v11, v3);
    v20 = v47;
    v18(v47, v19, v3);
    v21 = (*(v4 + 88))(v20, v3);
    if (v21 == v44)
    {
      v22 = 0;
      a1 = v17;
      v9 = v51;
    }

    else
    {
      a1 = v17;
      if (v21 == v38)
      {
        v22 = 1;
        v9 = v51;
      }

      else
      {
        v9 = v51;
        if (v21 == v36)
        {
          v22 = 2;
        }

        else if (v21 == v35)
        {
          v22 = 3;
        }

        else
        {
          if (v21 != v34)
          {
            goto LABEL_35;
          }

          v22 = 4;
        }
      }
    }

    (*v43)(v52, v3);
    v53 = v9;
    v24 = *(v9 + 16);
    v23 = *(v9 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_1E601C1F4((v23 > 1), v24 + 1, 1);
      v9 = v53;
    }

    *(v9 + 16) = v24 + 1;
    *(v9 + v24 + 32) = v22;
    v14 = 1 << *(a1 + 32);
    if (v11 >= v14)
    {
      goto LABEL_32;
    }

    v10 = v42;
    v25 = *(v42 + 8 * v15);
    if ((v25 & v50) == 0)
    {
      goto LABEL_33;
    }

    if (v49 != *(a1 + 36))
    {
      goto LABEL_34;
    }

    v26 = v25 & (-2 << (v11 & 0x3F));
    if (v26)
    {
      v14 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v4 = v40;
    }

    else
    {
      v27 = v15 << 6;
      v28 = v15 + 1;
      v29 = (v37 + 8 * v15);
      v4 = v40;
      while (v28 < (v14 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          sub_1E5F87098(v11, v49, 0);
          v14 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(v11, v49, 0);
    }

LABEL_4:
    v12 = v48 + 1;
    v11 = v14;
    v3 = v41;
    if (v48 + 1 == v39)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1E65E6C08();
  __break(1u);
  return result;
}

uint64_t sub_1E63B0F44(uint64_t a1)
{
  v43 = sub_1E65D8EF8();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1E65D96F8();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v32[1] = v1;
  v47 = MEMORY[0x1E69E7CC0];
  sub_1E601BF04(0, v7, 0);
  v8 = v47;
  v46 = a1 + 56;
  result = sub_1E65E6748();
  v10 = result;
  v11 = 0;
  v37 = (v3 + 8);
  v38 = v5 + 16;
  v39 = v5;
  v35 = a1;
  v36 = v5 + 8;
  v33 = a1 + 64;
  v34 = v7;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v46 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 36);
    v44 = v11;
    v45 = v14;
    v15 = *(a1 + 48);
    v16 = v39;
    v17 = v8;
    v19 = v40;
    v18 = v41;
    (*(v39 + 16))(v40, v15 + *(v39 + 72) * v10, v41);
    v20 = v42;
    sub_1E65D96B8();
    v21 = sub_1E65D8EB8();
    (*v37)(v20, v43);
    v22 = v19;
    v8 = v17;
    result = (*(v16 + 8))(v22, v18);
    v47 = v17;
    v24 = *(v17 + 16);
    v23 = *(v17 + 24);
    a1 = v35;
    if (v24 >= v23 >> 1)
    {
      result = sub_1E601BF04((v23 > 1), v24 + 1, 1);
      v8 = v47;
    }

    *(v8 + 16) = v24 + 1;
    *(v8 + 8 * v24 + 32) = v21;
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    v25 = *(v46 + 8 * v13);
    if ((v25 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v45 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v26 = v25 & (-2 << (v10 & 0x3F));
    if (v26)
    {
      v12 = __clz(__rbit64(v26)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v13 << 6;
      v28 = v13 + 1;
      v29 = (v33 + 8 * v13);
      while (v28 < (v12 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_1E5F87098(v10, v45, 0);
          v12 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v10, v45, 0);
    }

LABEL_4:
    v11 = v44 + 1;
    v10 = v12;
    if (v44 + 1 == v34)
    {
      return v8;
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
  return result;
}

uint64_t sub_1E63B12FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v10[0] = a2;
  v10[1] = a3;
  sub_1E65E4D78();
  return (*(v6 + 8))(v8, v5);
}

BOOL sub_1E63B141C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  v6 = swift_projectBox();
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  sub_1E5FED46C(&qword_1ED078CA0, &qword_1ED076DE0, &qword_1E65F84B0, MEMORY[0x1E6999AB8]);
  v7 = sub_1E65E5B98();
  (*(v3 + 8))(v5, v2);
  return (v7 & 1) == 0;
}

uint64_t sub_1E63B1584(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v4 = swift_projectBox();
  swift_beginAccess();
  return (*(*(v3 - 8) + 24))(v4, a1, v3);
}

uint64_t sub_1E63B1620(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v39 = a3;
  v40 = a4;
  v34 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C88, &qword_1E65FF600);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v32 - v8;
  v9 = type metadata accessor for AppComposer(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65E3018();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v38 = sub_1E65E3138();
  v42 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v41 = *a1;
  sub_1E5E1D5BC(a1, v12, type metadata accessor for AppComposer);
  v15 = *(v10 + 80);
  v35 = ((v15 + 16) & ~v15) + v11;
  v36 = (v15 + 16) & ~v15;
  v16 = swift_allocObject();
  v33 = type metadata accessor for AppComposer;
  sub_1E63B8F5C(v12, v16 + ((v15 + 16) & ~v15), type metadata accessor for AppComposer);
  sub_1E5DF650C(v34, v46);
  v17 = swift_allocObject();
  sub_1E5DF599C(v46, v17 + 16);
  sub_1E65E3008();
  sub_1E65E3128();
  v18 = v32;
  sub_1E5E1D5BC(v32, v12, type metadata accessor for AppComposer);
  v19 = swift_allocObject();
  v20 = v40;
  *(v19 + 16) = v39;
  *(v19 + 24) = v20;
  sub_1E63B8F5C(v12, v19 + ((v15 + 32) & ~v15), type metadata accessor for AppComposer);
  type metadata accessor for AppFeature(0);
  sub_1E63BAB8C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v39 = sub_1E63BAB8C(&qword_1ED078C90, MEMORY[0x1E699EB28], MEMORY[0x1E699EB20]);

  v21 = v38;
  sub_1E65E4DE8();
  sub_1E5E1D5BC(v18, v12, type metadata accessor for AppComposer);
  v22 = (v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1E63B8F5C(v12, v23 + v36, v33);
  v24 = (v23 + v22);
  v25 = *(a5 + 3);
  v24[2] = *(a5 + 2);
  v24[3] = v25;
  v24[4] = *(a5 + 4);
  v26 = *(a5 + 1);
  *v24 = *a5;
  v24[1] = v26;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1E63BA8FC;
  *(v27 + 24) = v23;

  v28 = v37;
  v29 = v45;
  v30 = sub_1E65E4F08();

  (*(v43 + 8))(v29, v44);
  (*(v42 + 8))(v28, v21);
  return v30;
}

uint64_t sub_1E63B1BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E63B1BEC, 0, 0);
}

uint64_t sub_1E63B1BEC()
{
  v1 = v0[4];
  v0[5] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63B1C98, v3, v2);
}

uint64_t sub_1E63B1C98()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_1E64D7F80(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E63B1D34()
{
  v0[3] = objc_opt_self();
  v0[4] = sub_1E65E6058();
  v0[5] = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63B1DDC, v2, v1);
}

uint64_t sub_1E63B1DDC()
{
  v1 = *(v0 + 24);

  *(v0 + 48) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E63B1E64, 0, 0);
}

uint64_t sub_1E63B1E64(uint64_t a1)
{
  v1[7] = sub_1E65D7448();
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E63BAB8C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey, &unk_1E65E9A14);
  v1[8] = sub_1E65E5AF8();

  v1[9] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63B1F7C, v3, v2);
}

uint64_t sub_1E63B1F7C()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];

  [v3 openURL:v2 options:v1 completionHandler:0];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E63B2014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v3[5] = swift_task_alloc();
  v4 = sub_1E65D74E8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1E65D70A8();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B730, &qword_1E65FCA88);
  v3[12] = swift_task_alloc();
  v6 = sub_1E65D7158();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63B2200, 0, 0);
}

uint64_t sub_1E63B2200()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  sub_1E65D70E8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[12];
    v5 = &qword_1ED07B730;
    v6 = &qword_1E65FCA88;
LABEL_5:
    sub_1E5DFE50C(v4, v5, v6);

    v18 = v0[1];

    return v18();
  }

  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  v10 = v0[7];
  v22 = v0[6];
  v11 = v0[5];
  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  sub_1E65D7078();
  sub_1E65D70C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C98, &qword_1E65FF640);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E65EA670;
  (*(v8 + 16))(v13 + v12, v7, v9);
  sub_1E5FAA22C(v13);
  sub_1E65D70D8();
  sub_1E65D70F8();
  if ((*(v10 + 48))(v11, 1, v22) == 1)
  {
    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[13];
    v17 = v0[5];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v15 + 8))(v14, v16);
    v5 = &qword_1ED072340;
    v6 = &qword_1E65EA410;
    v4 = v17;
    goto LABEL_5;
  }

  (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
  v0[16] = objc_opt_self();
  v0[17] = sub_1E65E6058();
  v0[18] = sub_1E65E6048();
  v21 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63B2508, v21, v20);
}

uint64_t sub_1E63B2508()
{
  v1 = *(v0 + 128);

  *(v0 + 152) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E63B2590, 0, 0);
}

uint64_t sub_1E63B2590(uint64_t a1)
{
  v1[20] = sub_1E65D7448();
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E63BAB8C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey, &unk_1E65E9A14);
  v1[21] = sub_1E65E5AF8();

  v1[22] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63B26A8, v3, v2);
}

uint64_t sub_1E63B26A8()
{
  v1 = v0[21];
  v3 = v0[19];
  v2 = v0[20];

  [v3 openURL:v2 options:v1 completionHandler:0];

  return MEMORY[0x1EEE6DFA0](sub_1E63B2744, 0, 0);
}

uint64_t sub_1E63B2744()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E63B2838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for RouteSource(0);
  v3[6] = swift_task_alloc();
  v3[7] = type metadata accessor for RouteDestination(0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63B2900, 0, 0);
}

uint64_t sub_1E63B2900()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v8 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  swift_storeEnumTagMultiPayload();
  *v1 = v6;
  v1[1] = v5;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5E1D5BC(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);

  sub_1E63BAB2C(v3, type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 88));
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1E63B2A7C;
  v10 = *(v0 + 64);

  return RoutingContext.appendDestination(_:priority:)(v10, (v0 + 88), v8, v7);
}

uint64_t sub_1E63B2A7C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 80) = v0;

  sub_1E63BAB2C(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6354FAC, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63B2C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a4;
  v56 = a2;
  v57 = a3;
  v55 = a5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754F0, &qword_1E65F1B08);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v44 - v10;
  v11 = sub_1E65E30F8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  v13 = MEMORY[0x1EEE9AC00](v44);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v44 - v21;
  v23 = sub_1E65D7848();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v46 = a1;
  sub_1E65E4C98();
  sub_1E5E1F544(v22);
  sub_1E5DFE50C(v19, &qword_1ED071F78, &unk_1E65EA3F0);
  v27 = *(v24 + 48);
  if (v27(v22, 1, v23) == 1)
  {
    sub_1E65D77C8();
    if (v27(v22, 1, v23) != 1)
    {
      sub_1E5DFE50C(v22, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v24 + 32))(v26, v22, v23);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  v28 = v46;
  sub_1E65E4C98();
  v29 = v16;
  v30 = v45;
  sub_1E5FAB460(v29, v45, &qword_1ED072808, &qword_1E65EBE00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1E5DFE50C(v30, &qword_1ED072808, &qword_1E65EBE00);
        goto LABEL_14;
      }

      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072820, &qword_1E65EBE18) + 48);
      v33 = sub_1E65D76A8();
      (*(*(v33 - 8) + 8))(v30 + v32, v33);
    }

    v34 = sub_1E65D8D58();
    v36 = v35;
    if (v34 == sub_1E65D8D58() && v36 == v37)
    {
    }

    else
    {
      sub_1E65E6C18();
    }
  }

LABEL_14:
  sub_1E6079494(v50);
  v58 = v56;
  v59 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v38 = v47;
  sub_1E65E4D78();
  v39 = v53;
  v40 = v49;
  sub_1E65E4C98();
  v41 = (*(v48 + 8))(v38, v40);
  MEMORY[0x1EEE9AC00](v41);
  v42 = v52;
  *(&v44 - 2) = v28;
  *(&v44 - 1) = v42;
  sub_1E65E2FB8();
  sub_1E63BAB8C(qword_1EE2D6090, MEMORY[0x1E699EAD0], MEMORY[0x1E699EAD8]);
  sub_1E65E4DA8();
  sub_1E5DFE50C(v39, &qword_1ED0753C0, &unk_1E6606290);

  return sub_1E65E30B8();
}

uint64_t sub_1E63B32F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v29 = a3;
  v35[6] = a2;
  v33 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v31 = &v29 - v8;
  v32 = sub_1E65D9AC8();
  v9 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - v15;
  v17 = sub_1E65D7848();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v16);
  sub_1E5DFE50C(v13, &qword_1ED071F78, &unk_1E65EA3F0);
  v21 = *(v18 + 48);
  if (v21(v16, 1, v17) == 1)
  {
    sub_1E65D77C8();
    if (v21(v16, 1, v17) != 1)
    {
      sub_1E5DFE50C(v16, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
  }

  v22 = v29 + *(type metadata accessor for AppComposer(0) + 20);
  v23 = type metadata accessor for AppEnvironment(0);
  sub_1E5DF650C(v22 + *(v23 + 136), v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  sub_1E65E4C98();
  v24 = v31;
  sub_1E60EEE88(v31);
  sub_1E5DFE50C(v6, &qword_1ED072E78, &qword_1E65ECC50);
  v25 = *(v9 + 48);
  v26 = v32;
  if (v25(v24, 1, v32) == 1)
  {
    v27 = v30;
    MEMORY[0x1E6941490]();
    if (v25(v24, 1, v26) != 1)
    {
      sub_1E5DFE50C(v24, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    v27 = v30;
    (*(v9 + 32))(v30, v24, v26);
  }

  sub_1E60E7F48(v20, v35, v33);
  (*(v9 + 8))(v27, v26);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_1E63B37B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v32 = a1;
  v33 = a2;
  v5 = sub_1E65E30C8();
  v26 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E30D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_1E65E60A8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, v32, v8);
  v16 = a4[3];
  v28 = *a4;
  v29 = v16;
  v17 = a4[7];
  v30 = a4[5];
  v31 = v17;
  v32 = a4[9];
  (*(v6 + 16))(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v5);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v6 + 80) + v19 + 80) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v9 + 32))(v21 + v18, v11, v8);
  v22 = (v21 + v19);
  v23 = *(a4 + 3);
  v22[2] = *(a4 + 2);
  v22[3] = v23;
  v22[4] = *(a4 + 4);
  v24 = *(a4 + 1);
  *v22 = *a4;
  v22[1] = v24;
  (*(v6 + 32))(v21 + v20, v27, v26);
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v14, &unk_1E65FF638, v21);
}

uint64_t sub_1E63B3AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  sub_1E631B3D0(a2, a3, a4, a5, v13);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
  sub_1E5FEE4C8();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_1E5FEE4C8();
  return (v16)(v15, v9);
}

uint64_t sub_1E63B3C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *, uint64_t)@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v378 = a6;
  v387 = a5;
  v371 = a4;
  v382 = a3;
  v380 = a2;
  v361 = a7;
  v8 = sub_1E65E4258();
  v320 = *(v8 - 8);
  v321 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v319 = &v295 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C20, &qword_1E65FF558);
  v326 = *(v10 - 8);
  v327 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v325 = &v295 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C28, &qword_1E65FF560);
  v328 = *(v12 - 8);
  v329 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v366 = &v295 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v365 = &v295 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C30, &qword_1E65FF568);
  v317 = *(v16 - 8);
  v318 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v316 = &v295 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C38, &qword_1E65FF570);
  v323 = *(v18 - 8);
  v324 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v322 = &v295 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v375 = &v295 - v21;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077990, &unk_1E65FA680);
  MEMORY[0x1EEE9AC00](v358);
  v376 = (&v295 - v22);
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C40, &qword_1E65FF578);
  MEMORY[0x1EEE9AC00](v359);
  v360 = &v295 - v23;
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C48, &qword_1E65FF580);
  MEMORY[0x1EEE9AC00](v354);
  v355 = &v295 - v24;
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077980, &qword_1E65F9720);
  MEMORY[0x1EEE9AC00](v356);
  v357 = &v295 - v25;
  v26 = sub_1E65E4018();
  v346 = *(v26 - 8);
  v347 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v345 = &v295 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0779B0, &qword_1E65ED910);
  v349 = *(v351 - 8);
  MEMORY[0x1EEE9AC00](v351);
  v348 = &v295 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780C0, &qword_1E65FB518);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v313 = &v295 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v301 = &v295 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DD0, &unk_1E65FAB50);
  v343 = *(v33 - 8);
  v344 = v33;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v314 = (&v295 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v295 = (&v295 - v36);
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C50, &qword_1E65FF588);
  v352 = *(v367 - 8);
  v37 = MEMORY[0x1EEE9AC00](v367);
  v315 = &v295 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v299 = &v295 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v300 = &v295 - v41;
  v381 = sub_1E65D76F8();
  v383 = *(v381 - 8);
  v42 = MEMORY[0x1EEE9AC00](v381);
  v363 = &v295 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = v43;
  MEMORY[0x1EEE9AC00](v42);
  v373 = &v295 - v44;
  v45 = type metadata accessor for AppComposer(0);
  v46 = *(v45 - 8);
  v333 = v45 - 8;
  v334 = v46;
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v362 = &v295 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v304 = &v295 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v364 = (&v295 - v52);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v337 = &v295 - v54;
  v335 = v55;
  MEMORY[0x1EEE9AC00](v53);
  v336 = &v295 - v56;
  v386 = sub_1E65DEC18();
  v385 = *(v386 - 1);
  v57 = MEMORY[0x1EEE9AC00](v386);
  v374 = &v295 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v303 = &v295 - v60;
  v342 = v61;
  MEMORY[0x1EEE9AC00](v59);
  v379 = &v295 - v62;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v338 = *(v332 - 1);
  v63 = MEMORY[0x1EEE9AC00](v332);
  v372 = (&v295 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = MEMORY[0x1EEE9AC00](v63);
  v302 = &v295 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v369 = &v295 - v68;
  v339 = v69;
  MEMORY[0x1EEE9AC00](v67);
  v370 = (&v295 - v70);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B8, &qword_1E65ED918);
  v311 = *(v297 - 8);
  v71 = MEMORY[0x1EEE9AC00](v297);
  v310 = &v295 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v340 = &v295 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077168, &unk_1E65FA6A0);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v309 = (&v295 - v75);
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077158, &unk_1E65FA690);
  MEMORY[0x1EEE9AC00](v312);
  v368 = (&v295 - v76);
  v77 = sub_1E65DE558();
  v306 = *(v77 - 8);
  v307 = v77;
  MEMORY[0x1EEE9AC00](v77);
  v305 = &v295 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0779A0, &qword_1E65F9728);
  MEMORY[0x1EEE9AC00](v350);
  v298 = &v295 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077960, &unk_1E65FA670);
  MEMORY[0x1EEE9AC00](v80 - 8);
  v353 = &v295 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v330 = *(v82 - 8);
  v331 = v82;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v295 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v295 - v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077DC8, &qword_1E65FAB48);
  v90 = MEMORY[0x1EEE9AC00](v89 - 8);
  v308 = &v295 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = MEMORY[0x1EEE9AC00](v90);
  v296 = &v295 - v93;
  MEMORY[0x1EEE9AC00](v92);
  v95 = (&v295 - v94);
  swift_getKeyPath();
  sub_1E65E4EC8();
  v96 = v380;

  v391 = v96;
  v97 = v382;
  v392 = v382;

  sub_1E65E4D78();
  v98 = v88;
  v99 = v97;
  (*(v86 + 8))(v98, v85);

  v377 = v95;
  sub_1E64878E4(v95);
  (*(v330 + 8))(v84, v331);
  v100 = *(v333 + 28);
  v384 = a1;
  v101 = *(a1 + v100 + 8);
  if (v101 < 2)
  {
    (*(v385 + 104))(v374, *MEMORY[0x1E699CD30], v386);
    v102 = sub_1E65E3FF8();
    v103 = v376;
    *v376 = v102;
    v103[1] = 0x4024000000000000;
    *(v103 + 16) = 0;
    v104 = v372;
    *v372 = v96;
    v104[1] = v97;
    swift_storeEnumTagMultiPayload();

    if (v101)
    {
      v333 = sub_1E5F9B258(&unk_1F5FA7F58);
    }

    else
    {
      v160 = sub_1E65DE608();
      v333 = sub_1E600A684(v160);
    }

    *(&v402 + 1) = sub_1E65DEAA8();
    v403 = sub_1E63BAB8C(&qword_1EE2D6850, MEMORY[0x1E699CCD8], MEMORY[0x1E699CCD0]);
    __swift_allocate_boxed_opaque_existential_1(&v401);
    sub_1E65DEA98();
    v368 = type metadata accessor for AppComposer;
    v161 = v384;
    v162 = v336;
    sub_1E5E1D5BC(v384, v336, type metadata accessor for AppComposer);
    sub_1E5DF650C(v387, v400);
    v163 = v378;
    v164 = v378[3];
    v312 = *v378;
    v313 = v164;
    v165 = v378[7];
    v330 = v378[5];
    v331 = v165;
    v332 = v378[9];
    v166 = *(v334 + 80);
    v311 = v335 + ((v166 + 16) & ~v166);
    v167 = (v166 + 16) & ~v166;
    v168 = v166 | 7;
    v169 = (v311 + 7) & 0xFFFFFFFFFFFFFFF8;
    v305 = v169;
    v170 = (v169 + 47) & 0xFFFFFFFFFFFFFFF8;
    v171 = swift_allocObject();
    v334 = v171;
    v340 = v167;
    v335 = type metadata accessor for AppComposer;
    sub_1E63B8F5C(v162, v171 + v167, type metadata accessor for AppComposer);
    sub_1E5DF599C(v400, v171 + v169);
    v172 = (v171 + v170);
    v173 = v163[3];
    v172[2] = v163[2];
    v172[3] = v173;
    v172[4] = v163[4];
    v174 = v163[1];
    *v172 = *v163;
    v172[1] = v174;
    v175 = v337;
    v176 = v368;
    sub_1E5E1D5BC(v161, v337, v368);
    sub_1E5DF650C(v387, v399);
    v306 = v168;
    v177 = swift_allocObject();
    v336 = v177;
    sub_1E63B8F5C(v175, v177 + v167, type metadata accessor for AppComposer);
    v178 = v305;
    sub_1E5DF599C(v399, &v305[v177]);
    v179 = (v177 + v170);
    v180 = v163[3];
    v179[2] = v163[2];
    v179[3] = v180;
    v179[4] = v163[4];
    v181 = v163[1];
    *v179 = *v163;
    v179[1] = v181;
    v182 = v161;
    v183 = v364;
    sub_1E5E1D5BC(v182, v364, v176);
    v184 = v383;
    v185 = *(v383 + 16);
    v307 = v383 + 16;
    v309 = v185;
    v186 = v381;
    (v185)(v373, v371, v381);
    sub_1E5DF650C(v387, v397);
    v187 = &v178[*(v184 + 80) + 16] & ~*(v184 + 80);
    v310 = *(v184 + 80);
    v337 = v341 + 7;
    v188 = (v341 + 7 + v187) & 0xFFFFFFFFFFFFFFF8;
    v189 = swift_allocObject();
    v190 = v340;
    v191 = v183;
    v192 = v335;
    sub_1E63B8F5C(v191, &v340[v189], v335);
    v193 = &v178[v189];
    v194 = v382;
    *v193 = v380;
    v193[1] = v194;
    v195 = *(v383 + 32);
    v383 += 32;
    v364 = v195;
    v341 = v189;
    (v195)(v189 + v187, v373, v186);
    sub_1E5DF599C(v397, v189 + v188);
    v196 = (v189 + ((v188 + 47) & 0xFFFFFFFFFFFFFFF8));
    v197 = v163[3];
    v196[2] = v163[2];
    v196[3] = v197;
    v196[4] = v163[4];
    v198 = v163[1];
    *v196 = *v163;
    v196[1] = v198;
    v199 = v384;
    v200 = v304;
    sub_1E5E1D5BC(v384, v304, v368);
    v201 = v372;
    v202 = v370;
    sub_1E5DFD1CC(v372, v370, &qword_1ED0736B0, &unk_1E65F8480);
    v203 = *(v338 + 80);
    v204 = &v311[v203] & ~v203;
    v311 = (v204 + v339);
    v338 = v204;
    v339 = v306 | v203;
    v205 = swift_allocObject();
    v373 = v205;
    sub_1E63B8F5C(v200, &v190[v205], v192);
    sub_1E5FAB460(v202, v205 + v204, &qword_1ED0736B0, &unk_1E65F8480);
    sub_1E5E1D5BC(v199, v362, v368);
    sub_1E5DFD1CC(v201, v369, &qword_1ED0736B0, &unk_1E65F8480);
    (v309)(v363, v371, v381);
    sub_1E5DF650C(v387, v390);
    v206 = v385;
    (*(v385 + 16))(v379, v374, v386);
    sub_1E5DFD1CC(&v401, v388, &qword_1ED0737D8, &qword_1E65EDA40);
    v207 = (v311 + 7) & 0xFFFFFFFFFFFFFFF8;
    v208 = (v310 + v207 + 8) & ~v310;
    v209 = (v337 + v208) & 0xFFFFFFFFFFFFFFF8;
    v210 = (v209 + 47) & 0xFFFFFFFFFFFFFFF8;
    v211 = (v210 + *(v206 + 80) + 80) & ~*(v206 + 80);
    v212 = (v342 + v211 + 7) & 0xFFFFFFFFFFFFFFF8;
    v213 = swift_allocObject();
    sub_1E63B8F5C(v362, &v340[v213], v335);
    sub_1E5FAB460(v369, v213 + v338, &qword_1ED0736B0, &unk_1E65F8480);
    *(v213 + v207) = v333;
    (v364)(v213 + v208, v363, v381);
    sub_1E5DF599C(v390, v213 + v209);
    v214 = (v213 + v210);
    v215 = v163[3];
    v214[2] = v163[2];
    v214[3] = v215;
    v214[4] = v163[4];
    v217 = *v163;
    v216 = v163[1];
    v218 = v382;
    *v214 = v217;
    v214[1] = v216;
    (*(v206 + 32))(v213 + v211, v379, v386);
    v219 = v213 + v212;
    v220 = v388[1];
    *v219 = v388[0];
    *(v219 + 16) = v220;
    *(v219 + 32) = v389;
    v221 = swift_allocObject();
    v222 = v341;
    *(v221 + 16) = sub_1E63B93D4;
    *(v221 + 24) = v222;
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
    v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737E0, &qword_1E65EDA48);
    v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C60, &qword_1E65FF5E8);
    sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00, MEMORY[0x1E699E850]);
    v223 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737E8, &qword_1E65EDA50);
    v224 = sub_1E65DE748();
    v225 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737F0, &qword_1E65EDA58);
    v226 = sub_1E63BAB8C(&qword_1EE2D6890, MEMORY[0x1E699CC00], MEMORY[0x1E699CBF8]);
    v227 = sub_1E6048B5C();
    v391 = v224;
    v392 = MEMORY[0x1E6981CD8];
    v393 = v225;
    v394 = v226;
    v395 = MEMORY[0x1E6981CD0];
    v396 = v227;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v391 = v223;
    v392 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v229 = sub_1E65DEB48();
    v230 = sub_1E63BAB8C(&qword_1ED078050, MEMORY[0x1E699CCF0], MEMORY[0x1E699CCE8]);
    v391 = v229;
    v392 = v230;
    swift_getOpaqueTypeConformance2();
    v231 = v316;
    sub_1E65DE9A8();
    sub_1E5DFE50C(v372, &qword_1ED0736B0, &unk_1E65F8480);
    sub_1E5DFE50C(&v401, &qword_1ED0737D8, &qword_1E65EDA40);
    v232 = v345;
    sub_1E65E4008();
    sub_1E63BAB8C(&qword_1EE2D4D98, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
    v233 = v347;
    v234 = v348;
    sub_1E65E3C08();
    (*(v346 + 8))(v232, v233);
    sub_1E5FED46C(&qword_1ED078C68, &qword_1ED078C30, &qword_1E65FF568, MEMORY[0x1E699CCC8]);
    sub_1E5FED46C(&qword_1EE2D6870, &unk_1ED0779B0, &qword_1E65ED910, MEMORY[0x1E699CC80]);
    v235 = v318;
    v236 = v351;
    sub_1E65E47D8();
    (*(v349 + 8))(v234, v236);
    (*(v317 + 8))(v231, v235);
    v237 = v308;
    sub_1E5DFD1CC(v377, v308, &qword_1ED077DC8, &qword_1E65FAB48);
    v238 = v344;
    v239 = *(v343 + 48);
    if (v239(v237, 1, v344) == 1)
    {
      v240 = v314;
      *v314 = v380;
      v240[1] = v218;
      swift_storeEnumTagMultiPayload();
      v241 = v239(v237, 1, v238);

      if (v241 != 1)
      {
        sub_1E5DFE50C(v237, &qword_1ED077DC8, &qword_1E65FAB48);
      }
    }

    else
    {
      v240 = v314;
      sub_1E5FAB460(v237, v314, &unk_1ED077DD0, &unk_1E65FAB50);
    }

    v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C70, &qword_1E65FF5F0);
    v383 = v376 + *(v242 + 44);
    v243 = v315;
    sub_1E63A7ED8(v240, v387, v378, v315);
    sub_1E5DFE50C(v240, &unk_1ED077DD0, &unk_1E65FAB50);
    v244 = v319;
    sub_1E65E4248();
    sub_1E63BAB8C(&qword_1ED073B40, MEMORY[0x1E697C848], MEMORY[0x1E697C840]);
    v245 = v325;
    v246 = v321;
    sub_1E65E3C08();
    (*(v320 + 8))(v244, v246);
    v247 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078AC0, &qword_1E65FF018);
    v248 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078AB8, &qword_1E65FF010);
    v249 = sub_1E5FED46C(&qword_1ED078AC8, &qword_1ED078AB8, &qword_1E65FF010, MEMORY[0x1E699CAC0]);
    v250 = sub_1E62F877C();
    v391 = v248;
    v392 = &type metadata for WorkoutDetailActionStyle;
    v393 = v249;
    v394 = v250;
    v251 = swift_getOpaqueTypeConformance2();
    v391 = v247;
    v392 = v251;
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1ED078C78, &qword_1ED078C20, &qword_1E65FF558, MEMORY[0x1E699CC80]);
    v252 = v365;
    v253 = v367;
    v254 = v327;
    sub_1E65E47D8();
    (*(v326 + 8))(v245, v254);
    (*(v352 + 8))(v243, v253);
    v256 = v322;
    v255 = v323;
    v257 = *(v323 + 16);
    v258 = v324;
    v257(v322, v375, v324);
    v259 = v328;
    v387 = *(v328 + 16);
    v260 = v252;
    v261 = v329;
    v387(v366, v260, v329);
    v262 = v383;
    v257(v383, v256, v258);
    v263 = v262 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C80, &qword_1E65FF5F8) + 48);
    v264 = v366;
    v387(v263, v366, v261);
    v265 = *(v259 + 8);
    v265(v365, v261);
    v266 = *(v255 + 8);
    v266(v375, v258);
    v265(v264, v261);
    v266(v256, v258);
    v267 = v376;
    sub_1E5DFD1CC(v376, v355, &unk_1ED077990, &unk_1E65FA680);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1ED077148, &unk_1ED077990, &unk_1E65FA680, MEMORY[0x1E6981870]);
    sub_1E626F7A8();
    v268 = v357;
    sub_1E65E4138();
    sub_1E5DFD1CC(v268, v360, &unk_1ED077980, &qword_1E65F9720);
    swift_storeEnumTagMultiPayload();
    sub_1E626F6F0();
    v269 = v353;
    sub_1E65E4138();
    sub_1E5DFE50C(v268, &unk_1ED077980, &qword_1E65F9720);
    sub_1E5DFE50C(v267, &unk_1ED077990, &unk_1E65FA680);
    (*(v385 + 8))(v374, v386);
LABEL_16:
    v293 = v377;
    sub_1E5F38D14(v269, v361);
    return sub_1E5DFE50C(v293, &qword_1ED077DC8, &qword_1E65FAB48);
  }

  if (v101 == 3)
  {
    v105 = v96;
    v106 = v305;
    sub_1E65DE548();
    v107 = v309;
    (*(v306 + 16))(v309, v106, v307);
    sub_1E5DFD1CC(v107, v368, &qword_1ED077168, &unk_1E65FA6A0);
    v108 = v370;
    *v370 = v105;
    v108[1] = v99;
    swift_storeEnumTagMultiPayload();

    v333 = sub_1E5F9B258(&unk_1F5FA7F58);
    (*(v385 + 104))(v379, *MEMORY[0x1E699CD30], v386);
    v403 = 0;
    v401 = 0u;
    v402 = 0u;
    v332 = type metadata accessor for AppComposer;
    v109 = v336;
    sub_1E5E1D5BC(v384, v336, type metadata accessor for AppComposer);
    sub_1E5DF650C(v387, v400);
    v110 = v378;
    v362 = *v378;
    v363 = v378[3];
    v365 = v378[5];
    v366 = v378[7];
    v372 = v378[9];
    v111 = *(v334 + 80);
    v112 = ((v111 + 16) & ~v111);
    v113 = v335 + v112;
    v376 = v112;
    v374 = v111 | 7;
    v114 = (v335 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
    v115 = swift_allocObject();
    v375 = v115;
    v335 = type metadata accessor for AppComposer;
    sub_1E63B8F5C(v109, v112 + v115, type metadata accessor for AppComposer);
    sub_1E5DF599C(v400, v115 + v114);
    v116 = (v115 + ((v114 + 47) & 0xFFFFFFFFFFFFFFF8));
    v117 = v110[3];
    v116[2] = v110[2];
    v116[3] = v117;
    v116[4] = v110[4];
    v118 = v110[1];
    *v116 = *v110;
    v116[1] = v118;
    v119 = v384;
    v120 = v337;
    v121 = v332;
    sub_1E5E1D5BC(v384, v337, v332);
    v122 = v370;
    v123 = v369;
    sub_1E5DFD1CC(v370, v369, &qword_1ED0736B0, &unk_1E65F8480);
    v124 = *(v338 + 80);
    v125 = &v113[v124] & ~v124;
    v336 = v125 + v339;
    v338 = v125;
    v339 = v374 | v124;
    v126 = swift_allocObject();
    v374 = v126;
    sub_1E63B8F5C(v120, v376 + v126, type metadata accessor for AppComposer);
    sub_1E5FAB460(v123, v126 + v125, &qword_1ED0736B0, &unk_1E65F8480);
    sub_1E5E1D5BC(v119, v364, v121);
    sub_1E5DFD1CC(v122, v302, &qword_1ED0736B0, &unk_1E65F8480);
    v127 = v383;
    (*(v383 + 16))(v373, v371, v381);
    sub_1E5DF650C(v387, v399);
    v128 = v385;
    (*(v385 + 16))(v303, v379, v386);
    sub_1E5DFD1CC(&v401, v397, &qword_1ED0737D8, &qword_1E65EDA40);
    v129 = (v336 + 7) & 0xFFFFFFFFFFFFFFF8;
    v130 = (v129 + *(v127 + 80) + 8) & ~*(v127 + 80);
    v131 = (v341 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
    v132 = (v131 + 47) & 0xFFFFFFFFFFFFFFF8;
    v133 = (*(v128 + 80) + v132 + 80) & ~*(v128 + 80);
    v134 = (v342 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    sub_1E63B8F5C(v364, v376 + v135, v335);
    sub_1E5FAB460(v302, v135 + v338, &qword_1ED0736B0, &unk_1E65F8480);
    *(v135 + v129) = v333;
    (*(v127 + 32))(v135 + v130, v373, v381);
    sub_1E5DF599C(v399, v135 + v131);
    v136 = (v135 + v132);
    v137 = v110[3];
    v136[2] = v110[2];
    v136[3] = v137;
    v136[4] = v110[4];
    v138 = v110[1];
    *v136 = *v110;
    v136[1] = v138;
    v139 = v386;
    (*(v385 + 32))(v135 + v133, v303, v386);
    v140 = v135 + v134;
    v141 = v397[1];
    *v140 = v397[0];
    *(v140 + 16) = v141;
    *(v140 + 32) = v398;
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737E0, &qword_1E65EDA48);
    sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00, MEMORY[0x1E699E850]);
    v142 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737E8, &qword_1E65EDA50);
    v143 = sub_1E65DE748();
    v144 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737F0, &qword_1E65EDA58);
    v145 = sub_1E63BAB8C(&qword_1EE2D6890, MEMORY[0x1E699CC00], MEMORY[0x1E699CBF8]);
    v146 = sub_1E6048B5C();
    v391 = v143;
    v392 = MEMORY[0x1E6981CD8];
    v393 = v144;
    v394 = v145;
    v395 = MEMORY[0x1E6981CD0];
    v396 = v146;
    v147 = swift_getOpaqueTypeConformance2();
    v391 = v142;
    v392 = v147;
    swift_getOpaqueTypeConformance2();
    sub_1E65DE9A8();
    sub_1E5DFE50C(&v401, &qword_1ED0737D8, &qword_1E65EDA40);
    (*(v385 + 8))(v379, v139);
    sub_1E5DFE50C(v370, &qword_1ED0736B0, &unk_1E65F8480);
    v148 = v296;
    sub_1E5DFD1CC(v377, v296, &qword_1ED077DC8, &qword_1E65FAB48);
    v149 = v344;
    v150 = *(v343 + 48);
    if (v150(v148, 1, v344) == 1)
    {
      v151 = v295;
      v152 = v380;
      v153 = v382;
      *v295 = v380;
      v151[1] = v153;
      swift_storeEnumTagMultiPayload();
      v154 = v150(v148, 1, v149);

      v155 = v148;
      v156 = v153;
      v157 = v152;
      v159 = v300;
      v158 = v301;
      if (v154 != 1)
      {
        sub_1E5DFE50C(v155, &qword_1ED077DC8, &qword_1E65FAB48);
      }
    }

    else
    {
      v151 = v295;
      sub_1E5FAB460(v148, v295, &unk_1ED077DD0, &unk_1E65FAB50);
      v156 = v382;
      v157 = v380;
      v159 = v300;
      v158 = v301;
    }

    v386 = v368 + *(v312 + 44);
    v270 = v378;
    sub_1E63A7ED8(v151, v387, v378, v159);
    sub_1E5DFE50C(v151, &unk_1ED077DD0, &unk_1E65FAB50);
    sub_1E62E9C34(v157, v156, v270, v158);
    v271 = v310;
    v272 = *(v311 + 2);
    v273 = v297;
    v272(v310, v340, v297);
    v274 = v352;
    v275 = *(v352 + 16);
    v276 = v299;
    v275();
    sub_1E5DFD1CC(v158, v313, &qword_1ED0780C0, &qword_1E65FB518);
    v277 = v386;
    v272(v386, v271, v273);
    v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C58, &qword_1E65FF5B0);
    v279 = v367;
    (v275)(&v277[*(v278 + 48)], v276, v367);
    v280 = v313;
    sub_1E5DFD1CC(v313, &v277[*(v278 + 64)], &qword_1ED0780C0, &qword_1E65FB518);
    sub_1E5DFE50C(v301, &qword_1ED0780C0, &qword_1E65FB518);
    v281 = *(v274 + 8);
    v281(v300, v279);
    v282 = *(v311 + 1);
    v282(v340, v273);
    sub_1E5DFE50C(v280, &qword_1ED0780C0, &qword_1E65FB518);
    v281(v276, v279);
    v282(v310, v273);
    sub_1E5DFE50C(v309, &qword_1ED077168, &unk_1E65FA6A0);
    (*(v306 + 8))(v305, v307);
    v283 = v345;
    sub_1E65E4008();
    sub_1E63BAB8C(&qword_1EE2D4D98, MEMORY[0x1E697C5D0], MEMORY[0x1E697C5C8]);
    v284 = v347;
    v285 = v348;
    sub_1E65E3C08();
    (*(v346 + 8))(v283, v284);
    sub_1E626F8FC();
    sub_1E5FED46C(&qword_1EE2D6870, &unk_1ED0779B0, &qword_1E65ED910, MEMORY[0x1E699CC80]);
    v286 = v298;
    v287 = v351;
    v288 = v368;
    sub_1E65E47D8();
    (*(v349 + 8))(v285, v287);
    sub_1E5DFE50C(v288, &qword_1ED077158, &unk_1E65FA690);
    sub_1E65E44A8();
    v289 = sub_1E65E44B8();

    KeyPath = swift_getKeyPath();
    v291 = (v286 + *(v350 + 36));
    *v291 = KeyPath;
    v291[1] = v289;
    sub_1E5DFD1CC(v286, v355, &unk_1ED0779A0, &qword_1E65F9728);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1ED077148, &unk_1ED077990, &unk_1E65FA680, MEMORY[0x1E6981870]);
    sub_1E626F7A8();
    v292 = v357;
    sub_1E65E4138();
    sub_1E5DFD1CC(v292, v360, &unk_1ED077980, &qword_1E65F9720);
    swift_storeEnumTagMultiPayload();
    sub_1E626F6F0();
    v269 = v353;
    sub_1E65E4138();
    sub_1E5DFE50C(v292, &unk_1ED077980, &qword_1E65F9720);
    sub_1E5DFE50C(v286, &unk_1ED0779A0, &qword_1E65F9728);
    goto LABEL_16;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E63B6820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppComposer(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5E1D5BC(a1, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_1E63B8F5C(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for AppComposer);
  v11 = (v10 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = a2;
  v11[1] = a3;

  return sub_1E65E3358();
}

uint64_t sub_1E63B6990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a3;
  v41 = a2;
  v42 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ArtworkDescriptor(0);
  v19 = (v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_1E63B0B0C(a4);
  v23 = sub_1E600ACF0(v22);

  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E5DFD1CC(a1, v14, &qword_1ED0734E8, &qword_1E65ED470);
  sub_1E5DFD1CC(v40, v11, &qword_1ED072340, &qword_1E65EA410);
  sub_1E65DB248();
  sub_1E5DFD1CC(v41, &v17[v24], &qword_1ED073548, &qword_1E65ED508);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppComposer(0);
  v25 = sub_1E65DAE38();
  v26 = sub_1E65DAE38();
  v27 = sub_1E65E4B48();
  v28 = 16.0;
  if (v27)
  {
    v28 = 18.0;
  }

  if (v25 == v26)
  {
    v29 = v28;
  }

  else
  {
    v29 = 12.0;
  }

  if (v25 == v26)
  {
    v30 = 12.0;
  }

  else
  {
    v30 = 8.0;
  }

  sub_1E63B8F5C(v17, v21, type metadata accessor for ArtworkContent);
  *(v21 + v19[7]) = v23;
  v31 = (v21 + v19[8]);
  *v31 = 0.0;
  v31[1] = v29;
  v31[2] = v29;
  v31[3] = v30;
  *(v21 + v19[9]) = 1;
  v32 = (v21 + v19[10]);
  *v32 = 0;
  v32[1] = 0;
  v33 = v42;
  sub_1E64D2DD0(v21, a5, v42);
  v34 = sub_1E65E4B98();
  v36 = v35;
  v37 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v21, a5, v37);
  sub_1E63BAB2C(v21, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v39 = (v37 + *(result + 36));
  *v39 = v34;
  v39[1] = v36;
  return result;
}

uint64_t sub_1E63B6CF4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = *(a1 + 3);
  *(v6 + 64) = *(a1 + 2);
  *(v6 + 80) = v7;
  *(v6 + 96) = *(a1 + 4);
  v8 = *(a1 + 1);
  *(v6 + 32) = *a1;
  *(v6 + 48) = v8;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v4, &unk_1E65FF510, v6);
}

uint64_t sub_1E63B6E58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E62E234C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E63B6F08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BF8, &qword_1E65FF518);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v23 - v5;
  v6 = type metadata accessor for AppComposer(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = sub_1E65E3458();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v24 = sub_1E65E33D8();
  v27 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  sub_1E5E1D5BC(a1, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_1E63B8F5C(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for AppComposer);
  sub_1E5E1D5BC(a1, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v14 = swift_allocObject();
  sub_1E63B8F5C(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12, type metadata accessor for AppComposer);
  sub_1E65E3448();
  sub_1E65E33C8();
  v15 = swift_allocObject();
  v17 = v25;
  v16 = v26;
  *(v15 + 16) = v25;
  *(v15 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  type metadata accessor for AppFeature(0);
  sub_1E63BAB8C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E63BAB8C(&qword_1ED078C00, MEMORY[0x1E699EC30], MEMORY[0x1E699EC28]);
  swift_bridgeObjectRetain_n();
  v19 = v28;
  v20 = v24;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v21 = sub_1E65E4F08();
  (*(v29 + 8))(v19, v30);
  (*(v27 + 8))(v11, v20);
  return v21;
}

uint64_t sub_1E63B7364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E63B7418(a1, a2, a3);
}

uint64_t sub_1E63B7418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65D8EF8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1E65D76A8();
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = sub_1E65D96F8();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_1E65D76F8();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v8 = sub_1E65D7EB8();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63B7660, 0, 0);
}

uint64_t sub_1E63B7660()
{
  *(v0 + 224) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 228) = *(type metadata accessor for AppEnvironment(0) + 144);
  active = WorkoutPlanService.queryActiveWorkoutPlan.getter();
  *(v0 + 168) = v2;
  v6 = (active + *active);
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_1E63B7784;
  v4 = *(v0 + 160);

  return v6(v4);
}

uint64_t sub_1E63B7784()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1E63B7F38;
  }

  else
  {
    v2 = sub_1E63B7898;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63B7898()
{

  v1 = WorkoutPlanService.queryIncompleteMatchingWorkoutReferences.getter();
  v0[24] = v2;
  sub_1E65D7DC8();
  v8 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_1E63B79D4;
  v4 = v0[17];
  v5 = v0[3];
  v6 = v0[4];

  return v8(v4, v5, v6);
}

uint64_t sub_1E63B79D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 120);
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  (*(v5 + 8))(v4, v6);

  if (v1)
  {
    v7 = sub_1E63B7FFC;
  }

  else
  {
    v7 = sub_1E63B7B6C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E63B7B6C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = swift_task_alloc();
  *(v6 + 16) = v2;

  v7 = sub_1E63B8B10(sub_1E63B92A8, v6, v1, MEMORY[0x1E69CC278], sub_1E60896C8, sub_1E6065558);

  sub_1E64E07B8(v7, v5);

  v8 = *(v4 + 48);
  v9 = v8(v5, 1, v3);
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v12 = *(v0 + 80);
  if (v9 == 1)
  {
    sub_1E64E07B8(*(v0 + 208), *(v0 + 88));
    if (v8(v12, 1, v11) != 1)
    {
      sub_1E5DFE50C(*(v0 + 80), &unk_1ED077780, &unk_1E66097F0);
    }
  }

  else
  {
    v13 = *(v0 + 104);
    (*(v13 + 32))(*(v0 + 88), *(v0 + 80), *(v0 + 96));
    (*(v13 + 56))(v10, 0, 1, v11);
  }

  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  v16 = v8(v14, 1, v15);
  v17 = *(v0 + 208);
  v19 = *(v0 + 152);
  v18 = *(v0 + 160);
  if (v16 == 1)
  {
    (*(v19 + 8))(*(v0 + 160), *(v0 + 144));

    sub_1E5DFE50C(v14, &unk_1ED077780, &unk_1E66097F0);
    v20 = 1;
  }

  else
  {
    v21 = *(v0 + 104);
    v22 = *(v0 + 64);
    v23 = *(v0 + 56);
    v31 = *(v0 + 48);
    v32 = v15;
    v24 = *(v0 + 112);
    v33 = *(v0 + 144);
    (*(v21 + 32))();
    v25 = v24;
    sub_1E65D96B8();
    sub_1E65D7E28();
    (*(v23 + 8))(v22, v31);
    v26 = sub_1E63B0F44(v17);

    sub_1E600DE30(v26);

    sub_1E65E32F8();
    (*(v21 + 8))(v25, v32);
    (*(v19 + 8))(v18, v33);
    v20 = 0;
  }

  v27 = *(v0 + 16);
  v28 = sub_1E65E3308();
  (*(*(v28 - 8) + 56))(v27, v20, 1, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1E63B7F38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63B7FFC()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E63B80D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = &v46 - v10;
  v55 = sub_1E65D7848();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE8, &qword_1E65F84B8);
  MEMORY[0x1EEE9AC00](v48);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C10, &qword_1E65FF548);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v52 = &v46 - v19;
  v20 = sub_1E65E3468();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v59 = &v46 - v25;
  v26 = sub_1E65D7908();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v51 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D7858();
  v28 = a1;
  v29 = *(a1 + *(type metadata accessor for AppState(0) + 316) + 8);
  if (*(v29 + 16) && (v30 = sub_1E6215038(a2, a3), (v31 & 1) != 0))
  {
    v32 = a3;
    v33 = a2;
    v34 = v32;
    (*(v21 + 16))(v24, *(v29 + 56) + *(v21 + 72) * v30, v20);
    (*(v21 + 32))(v59, v24, v20);
  }

  else
  {
    v35 = a3;
    v33 = a2;
    v34 = v35;
    (*(v21 + 104))(v59, *MEMORY[0x1E699EC60], v20);
  }

  v60 = v33;
  v61 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v36 = v28;
  sub_1E65E4D78();
  v37 = v49;
  v38 = v47;
  sub_1E65E4C98();
  (*(v46 + 8))(v15, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E6237A2C();
  sub_1E65E4DA8();
  v39 = sub_1E5DFE50C(v37, &qword_1ED0753C0, &unk_1E6606290);
  MEMORY[0x1EEE9AC00](v39);
  *(&v46 - 2) = v36;
  sub_1E63B9254();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v17, &qword_1ED076DE8, &qword_1E65F84B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v40 = v54;
  sub_1E65E4C98();
  v41 = v56;
  sub_1E5E1F544(v56);
  sub_1E5DFE50C(v40, &qword_1ED071F78, &unk_1E65EA3F0);
  v42 = v53;
  v43 = *(v53 + 48);
  v44 = v55;
  if (v43(v41, 1, v55) == 1)
  {
    sub_1E65D77C8();
    if (v43(v41, 1, v44) != 1)
    {
      sub_1E5DFE50C(v41, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v42 + 32))(v57, v41, v44);
  }

  sub_1E6237610(v33, v34);
  return sub_1E65E3398();
}

uint64_t sub_1E63B87C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C08, &qword_1E65FF540);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;

  sub_1E65E3388();
  v9 = sub_1E65E3468();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  type metadata accessor for AppState(0);
  return sub_1E6408AC8(v8, a3, a4);
}

uint64_t sub_1E63B88C8()
{
  v0 = [objc_opt_self() lightTextColor];
  sub_1E65E4968();
  sub_1E65E44A8();
  sub_1E65E49A8();
  sub_1E65E44A8();
  v1 = sub_1E65D7278();

  return v1;
}

uint64_t sub_1E63B899C()
{
  v0 = sub_1E65D8EF8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D96B8();
  v4 = sub_1E65D7E68();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

void *sub_1E63B8B10(uint64_t (*a1)(uint64_t (*)(char *, unint64_t, uint64_t, uint64_t)), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v47 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v38 - v13);
  LOBYTE(v13) = *(a3 + 32);
  v39 = ((1 << v13) + 63) >> 6;
  if ((v13 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v45 = v14;
    v46 = v12;
    v38 = a5;
    v41 = &v38;
    MEMORY[0x1EEE9AC00](v12);
    v40 = &v38 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v15);
    a6 = 0;
    v48 = a3;
    v17 = *(a3 + 56);
    a3 += 56;
    v16 = v17;
    v18 = 1 << *(a3 - 24);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v16;
    v21 = ((v18 + 63) >> 6);
    v42 = 0;
    v43 = v11 + 16;
    v44 = (v11 + 8);
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v49 = (v20 - 1) & v20;
LABEL_12:
      v25 = v22 | (a6 << 6);
      v26 = *(v48 + 48) + *(v11 + 9) * v25;
      v14 = v11;
      v27 = *(v11 + 2);
      a5 = v45;
      v28 = v46;
      v27(v45, v26, v46);
      v29 = v50;
      v30 = v47(a5);
      v50 = v29;
      if (v29)
      {
        (*v44)(a5, v28);

        return swift_willThrow();
      }

      v31 = v30;
      v12 = (*v44)(a5, v28);
      v11 = v14;
      v20 = v49;
      if (v31)
      {
        *&v40[(v25 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v25;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
          return v38(v40, v39, v42, v48);
        }
      }
    }

    v23 = a6;
    while (1)
    {
      a6 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (a6 >= v21)
      {
        return v38(v40, v39, v42, v48);
      }

      v24 = *(a3 + 8 * a6);
      v23 = (v23 + 1);
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v34 = v12;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v12 = v34;
  }

  v35 = swift_slowAlloc();
  v36 = v50;
  v37 = sub_1E63B8EBC(v35, v39, a3, v47, a2, a6);

  result = MEMORY[0x1E694F1C0](v35, -1, -1);
  if (!v36)
  {
    return v37;
  }

  return result;
}

void *sub_1E63B8EBC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

uint64_t sub_1E63B8F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E63B8FC4()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1E63B6F08((v0 + v2), v4, v5);
}

uint64_t sub_1E63B9054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AppComposer(0);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E63B7364(a1, a2, a3);
}

uint64_t sub_1E63B9148(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E62D3F40(a1, a2, v2 + v7);
}

unint64_t sub_1E63B9254()
{
  result = qword_1ED078C18;
  if (!qword_1ED078C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078C18);
  }

  return result;
}

uint64_t sub_1E63B9318(uint64_t (*a1)(unint64_t, unint64_t, unint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return a1(v1 + v3, v1 + v4, v1 + ((v4 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E63B93D4@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AppComposer(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1E65D76F8() - 8);
  v11 = (v9 + *(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v9);
  v14 = *(v3 + v9 + 8);

  return sub_1E62F0A54(a1, a2, (v3 + v8), v13, v14, v3 + v11, v3 + v12, (v3 + ((v12 + 47) & 0xFFFFFFFFFFFFFFF8)), a3);
}

uint64_t sub_1E63B950C()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E62D933C(v0 + v2, v5);
}

uint64_t objectdestroy_33Tm_1()
{
  v121 = type metadata accessor for AppComposer(0);
  v119 = *(*(v121 - 1) + 80);
  v1 = (v119 + 16) & ~v119;
  v2 = v1 + *(*(v121 - 1) + 64);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480) - 8);
  v110 = (v2 + *(v3 + 80)) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = sub_1E65D76F8();
  v113 = *(v115 - 8);
  v118 = *(v113 + 80);
  v111 = (*(v113 + 64) + ((v4 + v118 + 8) & ~v118) + 7) & 0xFFFFFFFFFFFFFFF8;
  v112 = (v4 + v118 + 8) & ~v118;
  v5 = sub_1E65DEC18();
  v116 = *(v5 - 8);
  v117 = v5;
  v114 = (((v111 + 47) & 0xFFFFFFFFFFFFFFF8) + *(v116 + 80) + 80) & ~*(v116 + 80);
  v109 = *(v116 + 64) + v114;
  v120 = v0;
  v106 = v0 + v1;

  v6 = v0 + v1 + v121[5];
  swift_unknownObjectRelease();
  v7 = type metadata accessor for AppEnvironment(0);
  v8 = v7[6];
  v108 = type metadata accessor for AccountService();
  v107 = *(v108[-1].Description + 1);
  v107(v6 + v8, v108);
  v9 = v7[7];
  v105 = type metadata accessor for AppStateService();
  v104 = *(v105[-1].Description + 1);
  v104(v6 + v9, v105);
  v10 = v7[8];
  v103 = type metadata accessor for ArchivedSessionService();
  v102 = *(v103[-1].Description + 1);
  v102(v6 + v10, v103);
  v11 = v7[9];
  v101 = type metadata accessor for AssetService();
  v100 = *(v101[-1].Description + 1);
  v100(v6 + v11, v101);
  v12 = v7[10];
  v99 = type metadata accessor for AwardsService();
  v98 = *(v99[-1].Description + 1);
  v98(v6 + v12, v99);
  v13 = v7[11];
  v97 = type metadata accessor for BookmarkService();
  v96 = *(v97[-1].Description + 1);
  v96(v6 + v13, v97);
  v14 = v7[12];
  v95 = type metadata accessor for CatalogService();
  v94 = *(v95[-1].Description + 1);
  v94(v6 + v14, v95);
  v15 = v7[13];
  v93 = type metadata accessor for ConfigurationService();
  v92 = *(v93[-1].Description + 1);
  v92(v6 + v15, v93);
  v16 = v7[14];
  v91 = type metadata accessor for ContentAvailabilityService();
  v90 = *(v91[-1].Description + 1);
  v90(v6 + v16, v91);
  v17 = v7[15];
  v89 = type metadata accessor for EngagementService();
  v88 = *(v89[-1].Description + 1);
  v88(v6 + v17, v89);
  v18 = v7[16];
  v87 = type metadata accessor for HealthDataService();
  v86 = *(v87[-1].Description + 1);
  v86(v6 + v18, v87);
  v19 = v7[17];
  v85 = type metadata accessor for InteropService();
  v84 = *(v85[-1].Description + 1);
  v84(v6 + v19, v85);
  v20 = v7[18];
  v83 = type metadata accessor for LocalizationService();
  v82 = *(v83[-1].Description + 1);
  v82(v6 + v20, v83);
  v21 = v7[19];
  v81 = type metadata accessor for MarketingService();
  v80 = *(v81[-1].Description + 1);
  v80(v6 + v21, v81);
  v22 = v7[20];
  v79 = type metadata accessor for MetricService();
  v78 = *(v79[-1].Description + 1);
  v78(v6 + v22, v79);
  v23 = v7[21];
  v77 = type metadata accessor for PersonalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(v6 + v23, v77);
  v24 = v7[22];
  v75 = type metadata accessor for PlayerService();
  v74 = *(v75[-1].Description + 1);
  v74(v6 + v24, v75);
  v25 = v7[23];
  v73 = type metadata accessor for PrivacyPreferenceService();
  v72 = *(v73[-1].Description + 1);
  v72(v6 + v25, v73);
  v26 = v7[24];
  v71 = type metadata accessor for RecommendationService();
  v70 = *(v71[-1].Description + 1);
  v70(v6 + v26, v71);
  v27 = v7[25];
  v69 = type metadata accessor for RemoteBrowsingService();
  v68 = *(v69[-1].Description + 1);
  v68(v6 + v27, v69);
  v28 = v7[26];
  v67 = type metadata accessor for SearchService();
  v66 = *(v67[-1].Description + 1);
  v66(v6 + v28, v67);
  v29 = v7[27];
  v60 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v60[-1].Description + 1);
  v65(v6 + v29, v60);
  v30 = v7[28];
  v58 = type metadata accessor for SessionService();
  v64 = *(v58[-1].Description + 1);
  v64(v6 + v30, v58);
  v31 = v7[29];
  v32 = type metadata accessor for SharePlayService();
  v63 = *(v32[-1].Description + 1);
  v63(v6 + v31, v32);
  v33 = v7[30];
  v34 = type metadata accessor for SiriService();
  v62 = *(v34[-1].Description + 1);
  v62(v6 + v33, v34);
  v35 = v7[31];
  v36 = type metadata accessor for SyncService();
  v61 = *(v36[-1].Description + 1);
  v61(v6 + v35, v36);

  v37 = v7[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v59 = *(QueueService[-1].Description + 1);
  v59(v6 + v37, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v7[34]));

  v39 = v7[36];
  v40 = type metadata accessor for WorkoutPlanService();
  v57 = *(v40[-1].Description + 1);
  v57(v6 + v39, v40);

  v41 = v106 + v121[7];

  v42 = v41 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v107(v42 + v7[6], v108);
  v104(v42 + v7[7], v105);
  v102(v42 + v7[8], v103);
  v100(v42 + v7[9], v101);
  v98(v42 + v7[10], v99);
  v96(v42 + v7[11], v97);
  v94(v42 + v7[12], v95);
  v92(v42 + v7[13], v93);
  v90(v42 + v7[14], v91);
  v88(v42 + v7[15], v89);
  v86(v42 + v7[16], v87);
  v84(v42 + v7[17], v85);
  v82(v42 + v7[18], v83);
  v80(v42 + v7[19], v81);
  v78(v42 + v7[20], v79);
  v76(v42 + v7[21], v77);
  v74(v42 + v7[22], v75);
  v72(v42 + v7[23], v73);
  v70(v42 + v7[24], v71);
  v68(v42 + v7[25], v69);
  v66(v42 + v7[26], v67);
  v65(v42 + v7[27], v60);
  v64(v42 + v7[28], v58);
  v63(v42 + v7[29], v32);
  v62(v42 + v7[30], v34);
  v61(v42 + v7[31], v36);

  v59(v42 + v7[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v42 + v7[34]));

  v57(v42 + v7[36], v40);
  swift_unknownObjectRelease();
  if (*(v106 + v121[9] + 8) >= 0xCuLL)
  {
  }

  v43 = (v106 + v121[10]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = (v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v46 = v120 + v110 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v47 = swift_getEnumCaseMultiPayload();
    switch(v47)
    {
      case 2:

        break;
      case 1:
        v49 = sub_1E65DE788();
        (*(*(v49 - 8) + 8))(v46, v49);
        v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v51 = sub_1E65D76A8();
        (*(*(v51 - 8) + 8))(v46 + v50, v51);
        break;
      case 0:
        v48 = sub_1E65DE788();
        (*(*(v48 - 8) + 8))(v46, v48);
        break;
    }

    v52 = v46 + *(type metadata accessor for DynamicStartWorkoutButtonLoadState(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v53 = swift_getEnumCaseMultiPayload();
    if (v53 == 2)
    {
    }

    else if (v53 == 1)
    {
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v55 = sub_1E65D76A8();
      (*(*(v55 - 8) + 8))(v52 + v54, v55);
    }
  }

  (*(v113 + 8))(v120 + v112, v115);
  __swift_destroy_boxed_opaque_existential_1((v120 + v111));
  swift_unknownObjectRelease();

  (*(v116 + 8))(v120 + v114, v117);
  if (*(v120 + v44 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v120 + v44));
  }

  return swift_deallocObject();
}

uint64_t sub_1E63BA6F0(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63B1BC8(a1, a2, v2 + v7);
}

uint64_t sub_1E63BA7D0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63B2838(a1, a2, v2 + 16);
}

uint64_t sub_1E63BA878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1E63B2C04(a1, v6, v7, v8, a2);
}

uint64_t sub_1E63BA8FC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E63B37B8(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E63BA9A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E30D8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1E65E30C8() - 8);
  v9 = (v7 + *(v8 + 80) + 80) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFA78C;

  return sub_1E6323BA8(a1, v10, v11, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_1E63BAB2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E63BAB8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E63BABDC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v23 = sub_1E65D8E78();
  MEMORY[0x1EEE9AC00](v23);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v10 = a4 + 56;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 56);
  v14 = (v11 + 63) >> 6;
  v19[1] = v7 + 16;
  v20 = v7;
  v22 = (v7 + 8);

  v24 = a4;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
      v18 = v23;
LABEL_9:
      (*(v20 + 16))(v9, *(v24 + 48) + *(v20 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v18);
      v21(&v25, &v26, v9);
      if (v4)
      {
        break;
      }

      v13 &= v13 - 1;
      (*v22)(v9, v18);

      a1 = v25;
      v26 = v25;
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v22)(v9, v18);

LABEL_13:

    return a1;
  }

  else
  {
LABEL_5:
    v18 = v23;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_13;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E63BAE10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v142 = a1;
  v134 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v112 = &v106 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v121 = &v106 - v9;
  v114 = sub_1E65DAC98();
  v120 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1E65E3418();
  MEMORY[0x1EEE9AC00](v119);
  v115 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1E65DA0B8();
  v117 = *(v118 - 8);
  v12 = MEMORY[0x1EEE9AC00](v118);
  v113 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v111 = &v106 - v14;
  v110 = sub_1E65D9D58();
  v109 = *(v110 - 8);
  v15 = MEMORY[0x1EEE9AC00](v110);
  v108 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v106 - v17;
  v124 = sub_1E65D8BB8();
  v18 = MEMORY[0x1EEE9AC00](v124);
  v126 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v143 = &v106 - v20;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CA8, &qword_1E65FF648);
  v21 = MEMORY[0x1EEE9AC00](v131);
  v130 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v145 = &v106 - v23;
  v24 = sub_1E65D74E8();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v147 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D0, &qword_1E65F1598);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v106 - v27;
  v144 = sub_1E65D8518();
  v150 = *(v144 - 8);
  v29 = MEMORY[0x1EEE9AC00](v144);
  v132 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v129 = &v106 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v128 = &v106 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v106 - v35;
  v122 = sub_1E65D8478();
  v37 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v39 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CB0, &qword_1E65FF650);
  v41 = MEMORY[0x1EEE9AC00](v40 - 8);
  v141 = &v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v146 = &v106 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v45 = MEMORY[0x1EEE9AC00](v44 - 8);
  v138 = &v106 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v106 - v47;
  v140 = sub_1E65D72D8();
  v149 = *(v140 - 8);
  v49 = MEMORY[0x1EEE9AC00](v140);
  v127 = &v106 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v125 = &v106 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v135 = &v106 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v148 = &v106 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = &v106 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v106 - v60;
  v62 = sub_1E65D94C8();
  v136 = v61;
  v63 = v61;
  v64 = a2;
  v65 = v142;
  sub_1E63C4134(v142, v64, v62, v63);

  v66 = sub_1E65D9468();
  v137 = v59;
  sub_1E63C4134(v65, v64, v66, v59);

  v67 = *(sub_1E65D9478() + 16);

  if (v67)
  {
    v68 = sub_1E65D9478();
    v69 = v65;
    v70 = v64;
    sub_1E63C4134(v69, v64, v68, v48);

    v71 = 0;
  }

  else
  {
    v70 = v64;
    v71 = 1;
  }

  v72 = v149[7];
  v139 = v48;
  v72(v48, v71, 1, v140);
  sub_1E65D9498();
  sub_1E65D84C8();
  v73 = *(v150 + 8);
  v150 += 8;
  v123 = v73;
  v73(v36, v144);
  v74 = v122;
  if ((*(v37 + 48))(v28, 1, v122) == 1)
  {
    sub_1E5DFE50C(v28, &qword_1ED0752D0, &qword_1E65F1598);
    v75 = 1;
    v76 = v146;
  }

  else
  {
    (*(v37 + 32))(v39, v28, v74);
    sub_1E65D8468();
    sub_1E65D8448();
    v76 = v146;
    sub_1E65E3428();
    (*(v37 + 8))(v39, v74);
    v75 = 0;
  }

  v77 = sub_1E65E3438();
  (*(*(v77 - 8) + 56))(v76, v75, 1, v77);
  v122 = sub_1E63BBCF4();
  sub_1E63BBF70(v142, v70, v148);
  v78 = v143;
  sub_1E65D9488();
  v79 = v78;
  v80 = v126;
  sub_1E63BFE70(v79, v126, MEMORY[0x1E69CB950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v133 = v4;
  if (EnumCaseMultiPayload == 1)
  {
    v82 = v117;
    v83 = v111;
    v84 = v118;
    (*(v117 + 32))(v111, v80, v118);
    v85 = v113;
    (*(v82 + 16))(v113, v83, v84);
    v86 = v116;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DAC88();
    sub_1E65E3408();
    (*(v120 + 8))(v86, v114);
    sub_1E65DA0A8();
    sub_1E63BCC3C();
    v87 = v130;
    sub_1E65DC438();
    v88 = *(v82 + 8);
    v89 = v85;
    v76 = v146;
    v88(v89, v84);
    v88(v83, v84);
  }

  else
  {
    v90 = v109;
    v91 = v107;
    v92 = v80;
    v93 = v110;
    (*(v109 + 32))(v107, v92, v110);
    v94 = v108;
    (*(v90 + 16))(v108, v91, v93);
    v87 = v130;
    sub_1E6133E30(v94, v130);
    (*(v90 + 8))(v91, v93);
  }

  sub_1E63BFE10(v143, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E63BCC94(v87, v145);
  v95 = v149[2];
  v96 = v140;
  v95(v135, v137, v140);
  v97 = v128;
  sub_1E65D9498();
  v98 = sub_1E65D8488();
  v142 = v99;
  v143 = v98;
  v100 = v144;
  v101 = v123;
  v123(v97, v144);
  sub_1E5DFD1CC(v76, v141, &qword_1ED078CB0, &qword_1E65FF650);
  v102 = v129;
  sub_1E65D9498();
  sub_1E65D8498();
  v101(v102, v100);
  sub_1E5DFD1CC(v139, v138, &qword_1ED072D90, &qword_1E66040F0);
  v95(v125, v148, v96);
  v95(v127, v136, v96);
  v103 = v132;
  sub_1E65D9498();
  sub_1E65D84B8();
  v101(v103, v100);
  sub_1E65E32B8();
  v104 = v149[1];
  v104(v148, v96);
  sub_1E5DFE50C(v146, &qword_1ED078CB0, &qword_1E65FF650);
  sub_1E5DFE50C(v139, &qword_1ED072D90, &qword_1E66040F0);
  v104(v137, v96);
  return (v104)(v136, v96);
}

uint64_t sub_1E63BBCF4()
{
  v0 = sub_1E65DAD48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D8518();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D9498();
  v8 = sub_1E65D84F8();
  (*(v5 + 8))(v7, v4);
  v19 = MEMORY[0x1E69E7CC0];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v1 + 16);
    v11 = *(v1 + 80);
    v16[1] = v8;
    v12 = v8 + ((v11 + 32) & ~v11);
    v17 = *(v1 + 72);
    v18 = v10;
    do
    {
      v18(v3, v12, v0);
      v13 = sub_1E65DAD08();
      MEMORY[0x1EEE9AC00](v13);
      v16[-2] = v3;
      v14 = sub_1E63BABDC(MEMORY[0x1E69E7CC0], sub_1E63BFED8, &v16[-4], v13);

      (*(v1 + 8))(v3, v0);
      sub_1E5FAA258(v14);
      v12 += v17;
      --v9;
    }

    while (v9);

    return v19;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1E63BBF70@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v114 = a2;
  v113 = a1;
  v112 = a3;
  v119 = sub_1E65DAD48();
  v124 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v5 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1E65D7D58();
  v125 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v137 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D8518();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v111 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v109 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v109 - v14;
  v16 = sub_1E65DADF8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v135 = (&v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18);
  v134 = &v109 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v133 = (&v109 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v132 = &v109 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v131 = &v109 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v130 = &v109 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v129 = (&v109 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v128 = (&v109 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v127 = &v109 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v126 = &v109 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = (&v109 - v39);
  MEMORY[0x1EEE9AC00](v38);
  *(&v109 - v41) = 2;
  v139 = &v109 - v41;
  swift_storeEnumTagMultiPayload();
  v118 = v3;
  sub_1E65D9498();
  v42 = sub_1E65D84D8();
  v44 = v43;
  v45 = *(v8 + 8);
  v117 = v7;
  v116 = v8 + 8;
  v115 = v45;
  v45(v15, v7);
  *v40 = v42;
  v40[1] = v44;
  v138 = v16;
  swift_storeEnumTagMultiPayload();
  v46 = sub_1E64F6308(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v48 = v46[2];
  v47 = v46[3];
  if (v48 >= v47 >> 1)
  {
    v46 = sub_1E64F6308((v47 > 1), v48 + 1, 1, v46);
  }

  v46[2] = v48 + 1;
  v49 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v50 = *(v17 + 72);
  sub_1E60EB82C(v40, v46 + v49 + v50 * v48);
  sub_1E65D9498();
  v51 = sub_1E65D84A8();
  v115(v13, v117);
  v52 = *(v51 + 16);
  v53 = v120;
  if (v52)
  {
    v54 = sub_1E64F727C(*(v51 + 16), 0);
    v136 = sub_1E6259488(v140, &v54[(*(v125 + 80) + 32) & ~*(v125 + 80)], v52, v51);
    v55 = v140[0];
    v123 = v140[2];
    v122 = v140[3];
    v121 = v140[4];

    sub_1E5E24EE4(v55);
    if (v136 == v52)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v136 = v5;
  v140[0] = v54;

  sub_1E63BD048(v140);
  v56 = v137;
  v110 = 0;

  v57 = *(v140[0] + 16);
  if (v57)
  {
    v123 = *(v125 + 16);
    v58 = (*(v125 + 80) + 32) & ~*(v125 + 80);
    v109 = v140[0];
    v59 = v140[0] + v58;
    v122 = *(v125 + 72);
    v125 += 16;
    v121 = (v125 - 8);
    v123(v56, v140[0] + v58, v53);
    while (1)
    {
      v60 = sub_1E65D7D38();
      if (v61)
      {
        v62 = v60;
        v63 = v61;
        sub_1E63BFE70(v139, v126, MEMORY[0x1E69CD300]);
        v65 = v46[2];
        v64 = v46[3];
        v66 = v65 + 1;
        if (v65 >= v64 >> 1)
        {
          v46 = sub_1E64F6308((v64 > 1), v65 + 1, 1, v46);
        }

        v46[2] = v66;
        sub_1E60EB82C(v126, v46 + v49 + v65 * v50);
        sub_1E63BFE70(v139, v127, MEMORY[0x1E69CD300]);
        v67 = v46[3];
        v68 = v65 + 2;
        if (v68 > (v67 >> 1))
        {
          v46 = sub_1E64F6308((v67 > 1), v68, 1, v46);
        }

        v46[2] = v68;
        sub_1E60EB82C(v127, v46 + v49 + v66 * v50);
        v69 = sub_1E65D7D48();
        v70 = v128;
        *v128 = v69;
        v70[1] = v71;
        v70[2] = 0;
        v70[3] = 0;
        swift_storeEnumTagMultiPayload();
        v73 = v46[2];
        v72 = v46[3];
        v74 = v73 + 1;
        if (v73 >= v72 >> 1)
        {
          v46 = sub_1E64F6308((v72 > 1), v73 + 1, 1, v46);
        }

        v46[2] = v74;
        sub_1E60EB82C(v128, v46 + v49 + v73 * v50);
        sub_1E63BFE70(v139, v129, MEMORY[0x1E69CD300]);
        v75 = v46[3];
        v76 = v73 + 2;
        if ((v73 + 2) > (v75 >> 1))
        {
          v46 = sub_1E64F6308((v75 > 1), v73 + 2, 1, v46);
        }

        v46[2] = v76;
        sub_1E60EB82C(v129, v46 + v49 + v74 * v50);
        v77 = v130;
        *v130 = v62;
        *(v77 + 8) = v63;
        swift_storeEnumTagMultiPayload();
        v78 = v46[3];
        v79 = v73 + 3;
        if ((v73 + 3) > (v78 >> 1))
        {
          v46 = sub_1E64F6308((v78 > 1), v73 + 3, 1, v46);
        }

        v53 = v120;
        v56 = v137;
        (*v121)(v137, v120);
        v46[2] = v79;
        sub_1E60EB82C(v130, v46 + v49 + v76 * v50);
      }

      else
      {
        (*v121)(v56, v53);
      }

      v59 += v122;
      if (!--v57)
      {
        break;
      }

      v123(v56, v59, v53);
    }
  }

  v80 = v111;
  sub_1E65D9498();
  v81 = sub_1E65D84F8();
  v115(v80, v117);
  v140[0] = v81;

  v82 = v110;
  sub_1E63BD12C(v140);
  v83 = v136;
  if (v82)
  {

    __break(1u);
  }

  else
  {

    v84 = *(v140[0] + 16);
    if (v84)
    {
      v137 = *(v124 + 16);
      v85 = *(v124 + 80);
      v128 = v140[0];
      v86 = v140[0] + ((v85 + 32) & ~v85);
      v130 = *(v124 + 72);
      v124 += 16;
      v129 = (v124 - 8);
      v87 = v119;
      (v137)(v83, v86, v119);
      while (1)
      {
        v88 = sub_1E65DAD18();
        if (v89)
        {
          v90 = v88;
          v91 = v89;
          sub_1E63BFE70(v139, v131, MEMORY[0x1E69CD300]);
          v93 = v46[2];
          v92 = v46[3];
          v94 = v93 + 1;
          if (v93 >= v92 >> 1)
          {
            v46 = sub_1E64F6308((v92 > 1), v93 + 1, 1, v46);
          }

          v46[2] = v94;
          sub_1E60EB82C(v131, v46 + v49 + v93 * v50);
          sub_1E63BFE70(v139, v132, MEMORY[0x1E69CD300]);
          v95 = v46[3];
          v96 = v93 + 2;
          if (v96 > (v95 >> 1))
          {
            v46 = sub_1E64F6308((v95 > 1), v96, 1, v46);
          }

          v46[2] = v96;
          sub_1E60EB82C(v132, v46 + v49 + v94 * v50);
          v97 = sub_1E65DAD28();
          v98 = v133;
          *v133 = v97;
          v98[1] = v99;
          v98[2] = 0;
          v98[3] = 0;
          swift_storeEnumTagMultiPayload();
          v101 = v46[2];
          v100 = v46[3];
          v102 = v101 + 1;
          if (v101 >= v100 >> 1)
          {
            v46 = sub_1E64F6308((v100 > 1), v101 + 1, 1, v46);
          }

          v46[2] = v102;
          sub_1E60EB82C(v133, v46 + v49 + v101 * v50);
          sub_1E63BFE70(v139, v134, MEMORY[0x1E69CD300]);
          v103 = v46[3];
          v104 = v101 + 2;
          if ((v101 + 2) > (v103 >> 1))
          {
            v46 = sub_1E64F6308((v103 > 1), v101 + 2, 1, v46);
          }

          v46[2] = v104;
          sub_1E60EB82C(v134, v46 + v49 + v102 * v50);
          v105 = v135;
          *v135 = v90;
          v105[1] = v91;
          swift_storeEnumTagMultiPayload();
          v106 = v46[3];
          v107 = v101 + 3;
          if ((v101 + 3) > (v106 >> 1))
          {
            v46 = sub_1E64F6308((v106 > 1), v101 + 3, 1, v46);
          }

          v87 = v119;
          v83 = v136;
          (*v129)(v136, v119);
          v46[2] = v107;
          sub_1E60EB82C(v135, v46 + v49 + v104 * v50);
        }

        else
        {
          (*v129)(v83, v87);
        }

        v86 += v130;
        if (!--v84)
        {
          break;
        }

        (v137)(v83, v86, v87);
      }
    }

    sub_1E63C4134(v113, v114, v46, v112);

    return sub_1E63BFE10(v139, MEMORY[0x1E69CD300]);
  }

  return result;
}

unint64_t sub_1E63BCC3C()
{
  result = qword_1ED075928;
  if (!qword_1ED075928)
  {
    sub_1E65E3418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075928);
  }

  return result;
}

uint64_t sub_1E63BCC94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CA8, &qword_1E65FF648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E63BCD04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = a3;
  v7 = sub_1E65D74E8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E34A8();
  v34 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v33 - v13;
  v15 = *a1;
  v37 = a2;
  v16 = sub_1E65D8E68();
  v18 = v17;
  v38 = v16;
  v39 = v17;
  v20 = v19 & 1;
  v40 = v19 & 1;
  v41 = 0;
  sub_1E63BFEF4();
  sub_1E63BFF48();
  v21 = sub_1E65D7FE8();
  sub_1E5F87058(v16, v18, v20);
  if ((v21 & 1) != 0 && (v22 = sub_1E65D8E68(), v24 = v23, v38 = v22, v39 = v23, v26 = v25 & 1, v40 = v25 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782A8, &qword_1E65FBB38), sub_1E65D7FB8(), sub_1E5F87058(v22, v24, v26), v27 = v41, v41 != 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CC8, &qword_1E65FF658);
    sub_1E65E34C8();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1E65EA670;
    v35 = sub_1E65DAD28();
    v33[1] = v30;
    v31 = v34;
    v32 = MEMORY[0x1E699ECB0];
    if ((v27 & 1) == 0)
    {
      v32 = MEMORY[0x1E699ECB8];
    }

    (*(v34 + 104))(v12, *v32, v9);
    (*(v31 + 32))(v14, v12, v9);
    sub_1E65D8E58();
    sub_1E65E34B8();
    v38 = v15;

    result = sub_1E5FAA258(v29);
    *a4 = v38;
  }

  else
  {
    *a4 = v15;
  }

  return result;
}

uint64_t sub_1E63BD048(void *a1)
{
  v2 = *(sub_1E65D7D58() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E636B21C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E63BD210(v6, MEMORY[0x1E69CB058], sub_1E63BD974, sub_1E63BD360);
  *a1 = v3;
  return result;
}

uint64_t sub_1E63BD12C(void *a1)
{
  v2 = *(sub_1E65DAD48() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E636B2A8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E63BD210(v6, MEMORY[0x1E69CD280], sub_1E63BE530, sub_1E63BD66C);
  *a1 = v3;
  return result;
}

uint64_t sub_1E63BD210(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1E65E6BA8();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1E65E5F98();
        *(v12 + 16) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1E63BD360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E65D7D58();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v48 = &v34 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = sub_1E65D7D48();
      v27 = v26;
      if (v25 == sub_1E65D7D48() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_1E65E6C18();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E63BD66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E65DAD48();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v48 = &v34 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = sub_1E65DAD28();
      v27 = v26;
      if (sub_1E65DAD28() == v25 && v28 == v27)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_1E65E6C18();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E63BD974(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_1E65D7D58();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v149 = &v128 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v154 = &v128 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v153 = &v128 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v146 = &v128 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v145 = &v128 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v133 = &v128 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v132 = &v128 - v26;
  v27 = a3[1];
  v143 = v25;
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_1E63BF0E0(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1E636AC44(a3);
          }

          if (v122 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v127 = &a3[2 * v122];
          *v127 = v125;
          v127[1] = v29;
          v155 = a3;
          result = sub_1E636ABB8(v122 - 1);
          v29 = v155;
          v122 = v155[2];
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_1E636AC44(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = sub_1E65D7D48();
      v37 = v36;
      v38 = sub_1E65D7D48();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = sub_1E65E6C18();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = sub_1E65D7D48();
        v52 = v51;
        if (v50 == sub_1E65D7D48() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_1E65E6C18();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = (a3 + 1);
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              v148(v138, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_1E636ADD0((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_1E63BF0E0(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1E636AC44(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v155 = a3;
        result = sub_1E636ABB8(v31);
        v29 = v155;
        v77 = v155[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = v60 + v31 * v61;
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = sub_1E65D7D48();
    v69 = v68;
    if (v5 == sub_1E65D7D48() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_1E65E6C18();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_1E63BE530(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_1E65DAD48();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v149 = &v128 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v154 = &v128 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v153 = &v128 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v146 = &v128 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v145 = &v128 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v133 = &v128 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v132 = &v128 - v26;
  v27 = a3[1];
  v143 = v25;
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_1E63BF77C(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1E636AC44(a3);
          }

          if (v122 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v127 = &a3[2 * v122];
          *v127 = v125;
          v127[1] = v29;
          v155 = a3;
          result = sub_1E636ABB8(v122 - 1);
          v29 = v155;
          v122 = v155[2];
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_1E636AC44(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = sub_1E65DAD28();
      v37 = v36;
      v38 = sub_1E65DAD28();
      v131 = v6;
      if (v38 == v31 && v39 == v37)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = sub_1E65E6C18();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = sub_1E65DAD28();
        v52 = v51;
        if (sub_1E65DAD28() == v50 && v53 == v52)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_1E65E6C18();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = (a3 + 1);
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              v148(v138, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_1E636ADD0((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_1E63BF77C(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1E636AC44(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v155 = a3;
        result = sub_1E636ABB8(v31);
        v29 = v155;
        v77 = v155[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = v60 + v31 * v61;
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = sub_1E65DAD28();
    v69 = v68;
    if (sub_1E65DAD28() == v5 && v70 == v69)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_1E65E6C18();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_1E63BF0E0(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = sub_1E65D7D58();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x1EEE9AC00](v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v67 = &v59 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v70 = &v59 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_1E65D7D48();
            v52 = v51;
            if (v50 == sub_1E65D7D48() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_1E65E6C18();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_1E65D7D48();
        v32 = v31;
        if (v30 == sub_1E65D7D48() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_1E65E6C18();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_1E636AC58(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_1E63BF77C(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = sub_1E65DAD48();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x1EEE9AC00](v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v67 = &v59 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v70 = &v59 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_1E65DAD28();
            v52 = v51;
            if (sub_1E65DAD28() == v50 && v53 == v52)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_1E65E6C18();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_1E65DAD28();
        v32 = v31;
        if (sub_1E65DAD28() == v30 && v33 == v32)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_1E65E6C18();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_1E636ACD0(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_1E63BFE10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E63BFE70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E63BFEF4()
{
  result = qword_1ED078CB8;
  if (!qword_1ED078CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078CB8);
  }

  return result;
}

unint64_t sub_1E63BFF48()
{
  result = qword_1ED078CC0;
  if (!qword_1ED078CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078CC0);
  }

  return result;
}

uint64_t sub_1E63BFFC8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_1E65E4548();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CD0, &qword_1E6600110);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CD8, &qword_1E65FF6C0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  sub_1E65E42A8();
  sub_1E65E4BA8();
  sub_1E65E3CF8();
  v11 = &v10[*(v8 + 36)];
  v12 = v33;
  *v11 = v32;
  *(v11 + 1) = v12;
  *(v11 + 2) = v34;
  sub_1E65E4B58();
  v13 = MEMORY[0x1E6981CD0];
  v14 = MEMORY[0x1E6981CD8];
  sub_1E65E3FB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CE0, &qword_1E65FF6C8);
  sub_1E63C0404();
  v30 = v14;
  v31 = v13;
  swift_getOpaqueTypeConformance2();
  sub_1E63C04E8();
  v15 = v27;
  sub_1E65E4938();
  (*(v5 + 8))(v7, v4);
  sub_1E63C05A0(v10);
  sub_1E65E4498();
  sub_1E65E44B8();

  v17 = v28;
  v16 = v29;
  (*(v28 + 104))(v3, *MEMORY[0x1E6980EA8], v29);
  v18 = sub_1E65E4578();

  (*(v17 + 8))(v3, v16);
  KeyPath = swift_getKeyPath();
  v20 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078D10, &qword_1E65FF708) + 36));
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = sub_1E65E49C8();
  v22 = swift_getKeyPath();
  v30 = v21;
  v23 = sub_1E65E3D08();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078D18, &qword_1E65FF740);
  v25 = (v15 + *(result + 36));
  *v25 = v22;
  v25[1] = v23;
  return result;
}

uint64_t sub_1E63C0378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CE0, &qword_1E65FF6C8) + 36);
  sub_1E65E4B18();
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078D08, &qword_1E65FF6D0) + 56)) = 256;

  return sub_1E63C0608(a1, a2);
}

unint64_t sub_1E63C0404()
{
  result = qword_1ED078CE8;
  if (!qword_1ED078CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078CD8, &qword_1E65FF6C0);
    sub_1E63C0490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078CE8);
  }

  return result;
}

unint64_t sub_1E63C0490()
{
  result = qword_1ED078CF0;
  if (!qword_1ED078CF0)
  {
    sub_1E65E4298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078CF0);
  }

  return result;
}

unint64_t sub_1E63C04E8()
{
  result = qword_1ED078CF8;
  if (!qword_1ED078CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078CE0, &qword_1E65FF6C8);
    sub_1E63C0404();
    sub_1E5FED46C(&qword_1ED078D00, &qword_1ED078D08, &qword_1E65FF6D0, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078CF8);
  }

  return result;
}

uint64_t sub_1E63C05A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CD8, &qword_1E65FF6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E63C0608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CD8, &qword_1E65FF6C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E63C0678()
{
  result = qword_1ED078D20;
  if (!qword_1ED078D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078D18, &qword_1E65FF740);
    sub_1E63C0730();
    sub_1E5FED46C(&qword_1EE2D4C00, &unk_1ED07A430, &qword_1E65EC470, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078D20);
  }

  return result;
}

unint64_t sub_1E63C0730()
{
  result = qword_1ED078D28;
  if (!qword_1ED078D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078D10, &qword_1E65FF708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078CD8, &qword_1E65FF6C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078CD0, &qword_1E6600110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078CE0, &qword_1E65FF6C8);
    sub_1E63C0404();
    swift_getOpaqueTypeConformance2();
    sub_1E63C04E8();
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4BE8, &unk_1ED0779E0, &qword_1E65EC400, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078D28);
  }

  return result;
}

uint64_t sub_1E63C08AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - v16;
  sub_1E65DECB8();
  if (v18)
  {

    v19 = sub_1E65D7A38();
    v20 = *(*(v19 - 8) + 56);

    return v20(a3, 1, 1, v19);
  }

  else
  {
    v22 = *MEMORY[0x1E69CBDC0];
    v23 = sub_1E65D8F38();
    v32 = a2;
    v33 = a3;
    v24 = v23;
    v25 = a1;
    v26 = *(v23 - 8);
    (*(v26 + 104))(v17, v22, v23);
    (*(v26 + 56))(v17, 0, 1, v24);
    sub_1E65DEC88();
    v27 = sub_1E65D74E8();
    (*(*(v27 - 8) + 56))(v14, 0, 1, v27);
    v28 = sub_1E65D9908();
    (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
    v29 = sub_1E65D9F88();
    (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
    sub_1E5FA9D34(v25, v32);
    v30 = v33;
    sub_1E65D7A28();
    v31 = sub_1E65D7A38();
    return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  }
}

uint64_t NavigationBarButtonProgressViewStyle.init(lineWidth:backgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

double NavigationBarButtonProgressViewStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X8>)
{
  sub_1E65E4388();
  if (v2)
  {

    sub_1E65E4A68();
    sub_1E63C0DC0();
    sub_1E63C0E14();
  }

  else
  {
    sub_1E63C0DC0();
    sub_1E63C0E14();
  }

  sub_1E65E4138();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

unint64_t sub_1E63C0DC0()
{
  result = qword_1ED078D30;
  if (!qword_1ED078D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078D30);
  }

  return result;
}

unint64_t sub_1E63C0E14()
{
  result = qword_1ED078D38;
  if (!qword_1ED078D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078D38);
  }

  return result;
}

unint64_t sub_1E63C0E98()
{
  result = qword_1ED078D40;
  if (!qword_1ED078D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078D48, &qword_1E65FF7E8);
    sub_1E63C0DC0();
    sub_1E63C0E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078D40);
  }

  return result;
}

uint64_t sub_1E63C0F24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E63C0F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E63C0FD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E63C1018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E63C1084@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  sub_1E63C1A48(a1, v52);

  sub_1E65E4C18();
  v15 = v14;
  v17 = v16;
  v18 = *(a1 + 1);
  v42 = *a1;
  v43 = v18;
  v44 = a1[4];

  v19 = sub_1E65E41D8();
  *(&v49 + 1) = a4;
  *&v50 = 0xBFF921FB54442D18;
  *(&v50 + 1) = v15;
  *v51 = v17;
  v20 = v44;
  *&v51[40] = v44;
  *&v51[48] = v19;
  *&v51[52] = 256;
  *(&v41[5] + 6) = *&v51[46];
  *&v45 = v8;
  *(&v45 + 1) = __PAIR64__(v10, v9);
  *&v46 = v11;
  *(&v46 + 1) = v12;
  *&v47 = v13;
  *(&v47 + 1) = a2;
  v48 = 256;
  LOWORD(v41[0]) = 256;
  v38 = v45;
  v39 = v46;
  v40 = v47;
  *&v49 = 0;
  v21 = v42;
  *&v51[24] = v43;
  *&v51[8] = v42;
  *(&v41[1] + 8) = v50;
  *(v41 + 8) = v49;
  *(&v41[4] + 8) = *&v51[32];
  *(&v41[3] + 8) = *&v51[16];
  *(&v41[2] + 8) = *v51;
  v22 = v45;
  v23 = v46;
  v24 = v41[0];
  v25 = v41[1];
  a3[2] = v47;
  a3[3] = v24;
  *a3 = v22;
  a3[1] = v23;
  v26 = v41[2];
  v27 = v41[3];
  *(a3 + 126) = *(&v41[4] + 14);
  v28 = v41[4];
  a3[6] = v27;
  a3[7] = v28;
  a3[4] = v25;
  a3[5] = v26;
  v52[0] = 0;
  *&v52[1] = a4;
  v52[2] = 0xBFF921FB54442D18;
  v52[3] = v15;
  v52[4] = v17;
  v53 = v21;
  v54 = v43;
  v55 = v20;
  v56 = v19;
  v57 = 256;
  sub_1E5DFD1CC(&v45, &v30, &qword_1ED078D58, &qword_1E65FF920);
  sub_1E5DFD1CC(&v49, &v30, &qword_1ED078D60, &qword_1E65FF928);
  sub_1E5DFE50C(v52, &qword_1ED078D60, &qword_1E65FF928);
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v36 = a2;
  v37 = 256;
  return sub_1E5DFE50C(&v30, &qword_1ED078D58, &qword_1E65FF920);
}

__n128 sub_1E63C12CC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  sub_1E65E3C98();
  v5 = sub_1E65E4BA8();
  v7 = v6;
  sub_1E63C1084(v21, v4, &v13, v3);
  v28 = v19;
  v29[0] = v20[0];
  *(v29 + 14) = *(v20 + 14);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v22 = v13;
  v23 = v14;
  v30[5] = v18;
  v30[6] = v19;
  v31[0] = v20[0];
  *(v31 + 14) = *(v20 + 14);
  v30[2] = v15;
  v30[3] = v16;
  v30[4] = v17;
  v30[0] = v13;
  v30[1] = v14;
  sub_1E5DFD1CC(&v22, &v12, &qword_1ED078D50, &qword_1E65FF918);
  sub_1E5DFE50C(v30, &qword_1ED078D50, &qword_1E65FF918);
  sub_1E63C19F4(v21);
  *a1 = v5;
  *(a1 + 8) = v7;
  v8 = v29[0];
  *(a1 + 112) = v28;
  *(a1 + 128) = v8;
  *(a1 + 142) = *(v29 + 14);
  v9 = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v9;
  v10 = v27;
  *(a1 + 80) = v26;
  *(a1 + 96) = v10;
  result = v23;
  *(a1 + 16) = v22;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1E63C1454@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v13 = *(a1 + 2);
  v14 = *(a1 + 3);
  v15 = *(a1 + 2);
  v17 = *(a1 + 3);
  v16 = *(a1 + 4);
  v18 = v16;
  v19 = a1[1];
  v47 = *a1;
  v12 = v47;
  v48 = v19;
  v49 = v16;

  sub_1E63C1A48(a1, v61);

  v20 = sub_1E65E41D8();
  *v61 = a6;
  *(&v61[0] + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078D70, &qword_1E65FF938);
  sub_1E65E4A78();
  v21 = *v54 * 0.0174532925;
  sub_1E65E4C18();
  v23 = v22;
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = a2;
  *(v26 + 32) = a6;
  *(v26 + 40) = a3;
  *&v50 = v12;
  *(&v50 + 1) = __PAIR64__(v14, v13);
  *&v51 = v15;
  *(&v51 + 1) = v17;
  *&v52 = v18;
  *(&v52 + 1) = a2;
  v53 = 256;
  *v46 = 256;
  v43 = v50;
  v44 = v51;
  v45 = v52;
  *&v55 = v49;
  v54[1] = v47;
  v54[2] = v48;
  v54[0] = xmmword_1E65FF750;
  DWORD2(v55) = v20;
  WORD6(v55) = 256;
  *&v56 = v21;
  *(&v56 + 1) = v23;
  *&v57 = v25;
  *(&v57 + 1) = sub_1E63C1AA4;
  v58 = v26;
  v59 = 0;
  v60 = 0;
  *&v46[56] = v55;
  *&v46[40] = v48;
  *&v46[24] = v47;
  *&v46[8] = xmmword_1E65FF750;
  *&v46[120] = 0;
  *&v46[104] = v26;
  *&v46[88] = v57;
  *&v46[72] = v56;
  v27 = v51;
  v28 = v52;
  *a4 = v50;
  a4[1] = v27;
  v29 = *v46;
  v30 = *&v46[32];
  v31 = *&v46[48];
  a4[4] = *&v46[16];
  a4[5] = v30;
  a4[2] = v28;
  a4[3] = v29;
  v32 = *&v46[112];
  a4[9] = *&v46[96];
  a4[10] = v32;
  v33 = *&v46[80];
  a4[7] = *&v46[64];
  a4[8] = v33;
  a4[6] = v31;
  v61[0] = xmmword_1E65FF750;
  v61[1] = v47;
  v61[2] = v48;
  v62 = v49;
  v63 = v20;
  v64 = 256;
  v65 = v21;
  v66 = v23;
  v67 = v25;
  v68 = sub_1E63C1AA4;
  v69 = v26;
  v71 = 0;
  v70 = 0;

  sub_1E5DFD1CC(&v50, &v35, &qword_1ED078D58, &qword_1E65FF920);
  sub_1E5DFD1CC(v54, &v35, &qword_1ED078D78, &qword_1E65FF940);
  sub_1E5DFE50C(v61, &qword_1ED078D78, &qword_1E65FF940);
  v35 = v12;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  v39 = v17;
  v40 = v18;
  v41 = a2;
  v42 = 256;
  return sub_1E5DFE50C(&v35, &qword_1ED078D58, &qword_1E65FF920);
}

uint64_t sub_1E63C173C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_1E65E4BE8();
  sub_1E65E4BD8();

  sub_1E65E4BC8();

  sub_1E65E3D58();
}

__n128 sub_1E63C180C@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[2];
  v6 = *(v1 + 3);
  sub_1E65E3C98();
  v7 = sub_1E65E4BA8();
  v9 = v8;
  sub_1E63C1454(v27, v4, v6, &v16, v3, v5);
  v36 = v24;
  v37 = v25;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v39[7] = v23;
  v39[8] = v24;
  v39[9] = v25;
  v39[10] = v26;
  v39[3] = v19;
  v39[4] = v20;
  v39[5] = v21;
  v39[6] = v22;
  v38 = v26;
  v39[0] = v16;
  v39[1] = v17;
  v39[2] = v18;
  sub_1E5DFD1CC(&v28, &v15, &qword_1ED078D68, &qword_1E65FF930);
  sub_1E5DFE50C(v39, &qword_1ED078D68, &qword_1E65FF930);
  sub_1E63C19F4(v27);
  a1->n128_u64[0] = v7;
  a1->n128_u64[1] = v9;
  v10 = v37;
  a1[9] = v36;
  a1[10] = v10;
  a1[11] = v38;
  v11 = v33;
  a1[5] = v32;
  a1[6] = v11;
  v12 = v35;
  a1[7] = v34;
  a1[8] = v12;
  v13 = v29;
  a1[1] = v28;
  a1[2] = v13;
  result = v31;
  a1[3] = v30;
  a1[4] = result;
  return result;
}

uint64_t sub_1E63C1B24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E63C1B98(uint64_t a1)
{
  v2 = sub_1E63C26B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63C1BD4(uint64_t a1)
{
  v2 = sub_1E63C26B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E63C1C10()
{
  v1 = *v0;
  v2 = 0x6D6574496F6ELL;
  v3 = 0xD000000000000012;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000010;
  if (v1 != 1)
  {
    v4 = 0x6C6572726F436F6ELL;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1E63C1CE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E63C3660(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E63C1D0C(uint64_t a1)
{
  v2 = sub_1E63C25BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63C1D48(uint64_t a1)
{
  v2 = sub_1E63C25BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63C1D84(uint64_t a1)
{
  v2 = sub_1E63C2664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63C1DC0(uint64_t a1)
{
  v2 = sub_1E63C2664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63C1DFC(uint64_t a1)
{
  v2 = sub_1E63C2610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63C1E38(uint64_t a1)
{
  v2 = sub_1E63C2610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63C1E74(uint64_t a1)
{
  v2 = sub_1E63C270C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63C1EB0(uint64_t a1)
{
  v2 = sub_1E63C270C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63C1EEC(uint64_t a1)
{
  v2 = sub_1E63C27B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63C1F28(uint64_t a1)
{
  v2 = sub_1E63C27B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63C1F64(uint64_t a1)
{
  v2 = sub_1E63C2760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63C1FA0(uint64_t a1)
{
  v2 = sub_1E63C2760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MarketingItemError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078DA0, &qword_1E65FF960);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078DA8, &qword_1E65FF968);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078DB0, &qword_1E65FF970);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078DB8, &qword_1E65FF978);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078DC0, &qword_1E65FF980);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078DC8, &qword_1E65FF988);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078DD0, &qword_1E65FF990);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E63C25BC();
  sub_1E65E6DA8();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1E63C26B8();
      v21 = v33;
      v22 = v42;
      sub_1E65E6B18();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1E63C2664();
      v21 = v36;
      v22 = v42;
      sub_1E65E6B18();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1E63C2610();
      v21 = v39;
      v22 = v42;
      sub_1E65E6B18();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1E63C2760();
      v21 = v27;
      v22 = v42;
      sub_1E65E6B18();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1E63C270C();
      v21 = v30;
      v22 = v42;
      sub_1E65E6B18();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1E63C27B4();
  v22 = v42;
  sub_1E65E6B18();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_1E63C25BC()
{
  result = qword_1ED078DD8;
  if (!qword_1ED078DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078DD8);
  }

  return result;
}

unint64_t sub_1E63C2610()
{
  result = qword_1ED078DE0;
  if (!qword_1ED078DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078DE0);
  }

  return result;
}

unint64_t sub_1E63C2664()
{
  result = qword_1ED078DE8;
  if (!qword_1ED078DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078DE8);
  }

  return result;
}

unint64_t sub_1E63C26B8()
{
  result = qword_1ED078DF0;
  if (!qword_1ED078DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078DF0);
  }

  return result;
}

unint64_t sub_1E63C270C()
{
  result = qword_1ED078DF8;
  if (!qword_1ED078DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078DF8);
  }

  return result;
}

unint64_t sub_1E63C2760()
{
  result = qword_1ED078E00;
  if (!qword_1ED078E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E00);
  }

  return result;
}

unint64_t sub_1E63C27B4()
{
  result = qword_1ED078E08;
  if (!qword_1ED078E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E08);
  }

  return result;
}

uint64_t MarketingItemError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078E10, &qword_1E65FF998);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078E18, &qword_1E65FF9A0);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078E20, &qword_1E65FF9A8);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078E28, &qword_1E65FF9B0);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078E30, &qword_1E65FF9B8);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078E38, &qword_1E65FF9C0);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078E40, &unk_1E65FF9C8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1E63C25BC();
  v22 = v56;
  sub_1E65E6D98();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_1E65E6AF8();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1E5FBE3E8();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_1E65E68F8();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
      *v36 = &type metadata for MarketingItemError;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_1E63C26B8();
          sub_1E65E6A68();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_1E63C2664();
          sub_1E65E6A68();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_1E63C2610();
          sub_1E65E6A68();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_1E63C2760();
            v31 = v56;
            sub_1E65E6A68();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_1E63C270C();
            v31 = v51;
            sub_1E65E6A68();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_1E63C27B4();
          sub_1E65E6A68();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t MarketingItemError.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E63C3064()
{
  result = qword_1ED078E48;
  if (!qword_1ED078E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E48);
  }

  return result;
}

unint64_t sub_1E63C313C()
{
  result = qword_1ED078E50;
  if (!qword_1ED078E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E50);
  }

  return result;
}

unint64_t sub_1E63C3194()
{
  result = qword_1ED078E58;
  if (!qword_1ED078E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E58);
  }

  return result;
}

unint64_t sub_1E63C31EC()
{
  result = qword_1ED078E60;
  if (!qword_1ED078E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E60);
  }

  return result;
}

unint64_t sub_1E63C3244()
{
  result = qword_1ED078E68;
  if (!qword_1ED078E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E68);
  }

  return result;
}

unint64_t sub_1E63C329C()
{
  result = qword_1ED078E70;
  if (!qword_1ED078E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E70);
  }

  return result;
}

unint64_t sub_1E63C32F4()
{
  result = qword_1ED078E78;
  if (!qword_1ED078E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E78);
  }

  return result;
}

unint64_t sub_1E63C334C()
{
  result = qword_1ED078E80;
  if (!qword_1ED078E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E80);
  }

  return result;
}

unint64_t sub_1E63C33A4()
{
  result = qword_1ED078E88;
  if (!qword_1ED078E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E88);
  }

  return result;
}

unint64_t sub_1E63C33FC()
{
  result = qword_1ED078E90;
  if (!qword_1ED078E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E90);
  }

  return result;
}

unint64_t sub_1E63C3454()
{
  result = qword_1ED078E98;
  if (!qword_1ED078E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E98);
  }

  return result;
}

unint64_t sub_1E63C34AC()
{
  result = qword_1ED078EA0;
  if (!qword_1ED078EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078EA0);
  }

  return result;
}

unint64_t sub_1E63C3504()
{
  result = qword_1ED078EA8;
  if (!qword_1ED078EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078EA8);
  }

  return result;
}

unint64_t sub_1E63C355C()
{
  result = qword_1ED078EB0;
  if (!qword_1ED078EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078EB0);
  }

  return result;
}

unint64_t sub_1E63C35B4()
{
  result = qword_1ED078EB8;
  if (!qword_1ED078EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078EB8);
  }

  return result;
}

unint64_t sub_1E63C360C()
{
  result = qword_1ED078EC0;
  if (!qword_1ED078EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078EC0);
  }

  return result;
}

uint64_t sub_1E63C3660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6574496F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6616AE0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6572726F436F6ELL && a2 == 0xEF44496E6F697461 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E6616B00 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E6616B20 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E6616B40 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

uint64_t sub_1E63C389C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1E65E4BA8();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078EE0, &qword_1E6600108);
  return sub_1E63C38EC(a1, a2 + *(v5 + 44));
}

uint64_t sub_1E63C38EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a1;
  v35 = a2;
  v34 = sub_1E65E4208();
  v27 = *(v34 - 8);
  v2 = v27;
  v3 = MEMORY[0x1EEE9AC00](v34);
  v32 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CD0, &qword_1E6600110);
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078EE8, &qword_1E6600118);
  v30 = *(v7 - 8);
  v8 = v30;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v29 = &v26 - v12;
  sub_1E65E4B58();
  v14 = MEMORY[0x1E6981CD0];
  v15 = MEMORY[0x1E6981CD8];
  sub_1E65E3FB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078EF0, &qword_1E6600120);
  v36 = v15;
  v37 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1E63C3EE4();
  sub_1E65E4B78();
  v16 = v31;
  sub_1E65E4218();
  v17 = *(v8 + 16);
  v28 = v11;
  v17(v11, v13, v7);
  v18 = *(v2 + 16);
  v19 = v32;
  v20 = v34;
  v18(v32, v16, v34);
  v21 = v35;
  v17(v35, v11, v7);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F28, &qword_1E6600138);
  v18(&v21[*(v22 + 48)], v19, v20);
  v23 = *(v27 + 8);
  v23(v16, v20);
  v24 = *(v30 + 8);
  v24(v29, v7);
  v23(v19, v20);
  return (v24)(v28, v7);
}

uint64_t sub_1E63C3C80@<X0>(uint64_t a2@<X8>)
{
  sub_1E65E4BA8();
  sub_1E65E3CF8();
  v3 = sub_1E65E4998();
  KeyPath = swift_getKeyPath();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078EF0, &qword_1E6600120) + 36);
  sub_1E65E4B18();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078D08, &qword_1E65FF6D0);
  *(v5 + *(result + 56)) = 256;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_1E63C3D7C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078EC8, &qword_1E6600100);
  sub_1E65E4228();
  sub_1E5FED46C(&qword_1ED078ED0, &qword_1ED078EC8, &qword_1E6600100, MEMORY[0x1E6981880]);
  sub_1E63C3E8C();
  return sub_1E65E45C8();
}

unint64_t sub_1E63C3E8C()
{
  result = qword_1ED078ED8;
  if (!qword_1ED078ED8)
  {
    sub_1E65E4228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078ED8);
  }

  return result;
}

unint64_t sub_1E63C3EE4()
{
  result = qword_1ED078EF8;
  if (!qword_1ED078EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078EF0, &qword_1E6600120);
    sub_1E63C3F9C();
    sub_1E5FED46C(&qword_1ED078D00, &qword_1ED078D08, &qword_1E65FF6D0, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078EF8);
  }

  return result;
}