uint64_t sub_25413B288(uint64_t a1)
{
  sub_25424DD88();
}

unint64_t sub_25413B39C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_254140550(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25413B3CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0xEB000000006E6F69;
  v6 = 0x74706D75736E6F63;
  if (v2 != 5)
  {
    v6 = 0x69746375646F7270;
    v5 = 0xEA00000000006E6FLL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x65636E6164697567;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973736573;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6574617473;
  if (v2 != 1)
  {
    v9 = 0x6C6576656CLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_25413B4A8()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x74706D75736E6F63;
  if (v1 != 5)
  {
    v3 = 0x69746375646F7270;
  }

  v4 = 0x65636E6164697567;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973736573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574617473;
  if (v1 != 1)
  {
    v5 = 0x6C6576656CLL;
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

unint64_t sub_25413B580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254140550(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25413B5B4(uint64_t a1)
{
  v2 = sub_25413EEE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25413B5F0(uint64_t a1)
{
  v2 = sub_25413EEE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.LoadEvent.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A88, &qword_254252F48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25413EEE8();
  sub_25424EC78();
  LOBYTE(v17) = *v3;
  v19 = 0;
  sub_25413EF3C();
  sub_25424EA18();
  if (!v2)
  {
    LOBYTE(v17) = *(v3 + 1);
    v19 = 1;
    sub_25413EF90();
    sub_25424EA18();
    *&v17 = *(v3 + 8);
    v19 = 2;
    sub_25413EFE4();
    sub_25424EA18();
    v9 = *(v3 + 24);
    v10 = *(v3 + 32);
    *&v17 = *(v3 + 16);
    *(&v17 + 1) = v9;
    v18 = v10;
    v19 = 3;
    sub_25413E94C(v17, v9, v10);
    sub_25413F038();
    sub_25424EA18();
    sub_25413F08C(v17, *(&v17 + 1), v18);
    v11 = type metadata accessor for EnergyKit.LoadEvent.State(0);
    LOBYTE(v17) = 4;
    type metadata accessor for EnergyKit.LoadEvent.Session(0);
    sub_25413EA9C(&qword_27F5B8AB8, type metadata accessor for EnergyKit.LoadEvent.Session, &protocol conformance descriptor for EnergyKit.LoadEvent.Session);
    sub_25424E9C8();
    v12 = (v3 + *(v11 + 36));
    v13 = *(v12 + 16);
    v17 = *v12;
    v18 = v13;
    v19 = 5;
    sub_25413F0A4();
    sub_25424E9C8();
    v14 = (v3 + *(v11 + 40));
    v15 = *(v14 + 16);
    v17 = *v14;
    v18 = v15;
    v19 = 6;
    sub_25424E9C8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t EnergyKit.LoadEvent.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B0, &qword_254252EE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8AC8, &qword_254252F50);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for EnergyKit.LoadEvent.State(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_25413EEE8();
  v14 = v9;
  sub_25424EC68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v27 = v6;
  v15 = v29;
  v34 = 0;
  sub_25413F0F8();
  v16 = v30;
  v17 = v14;
  sub_25424E978();
  *v12 = v32;
  v34 = 1;
  sub_25413F14C();
  sub_25424E978();
  v18 = v15;
  v12[1] = v32;
  v34 = 2;
  sub_25413F1A0();
  sub_25424E978();
  *(v12 + 1) = v32;
  v34 = 3;
  sub_25413F1F4();
  sub_25424E978();
  v19 = v33;
  *(v12 + 1) = v32;
  v12[32] = v19;
  type metadata accessor for EnergyKit.LoadEvent.Session(0);
  LOBYTE(v32) = 4;
  sub_25413EA9C(&qword_27F5B8AF0, type metadata accessor for EnergyKit.LoadEvent.Session, &protocol conformance descriptor for EnergyKit.LoadEvent.Session);
  v20 = v27;
  sub_25424E928();
  sub_25413E964(v20, &v12[v10[8]]);
  v34 = 5;
  sub_25413F248();
  sub_25424E928();
  v21 = v33;
  v22 = &v12[v10[9]];
  *v22 = v32;
  v22[16] = v21;
  v34 = 6;
  sub_25424E928();
  (*(v18 + 8))(v17, v16);
  v23 = v33;
  v24 = &v12[v10[10]];
  *v24 = v32;
  v24[16] = v23;
  sub_25413EBE0(v12, v28, type metadata accessor for EnergyKit.LoadEvent.State);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_25413EA3C(v12, type metadata accessor for EnergyKit.LoadEvent.State);
}

uint64_t sub_25413BEA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CF8, &qword_254253D20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8D00, &qword_254253D28);
  sub_25414081C(&qword_27F5B8D08, &qword_27F5B8D00, &qword_254253D28, &unk_25425FB00);
  sub_25424EC78();
  v21 = 0;
  sub_25424D8B8();
  sub_25413EA9C(&qword_27F5B8C78, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v6 = v13;
  v7 = v12;
  v8 = v5;
  sub_25424EA18();
  if (v6)
  {
    return (*(v3 + 8))(v5, v2);
  }

  v13 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B8, &qword_254252EE8);
  v20 = 1;
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89D8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_25424EA18();
  v19 = *(v7 + *(v10 + 48));
  v18 = 2;
  sub_2541406B4();
  sub_25424EA18();
  v17 = 3;
  sub_25424EA18();
  v16 = 4;
  sub_25424E9D8();
  v11 = v13;
  v15 = 5;
  sub_25424E9D8();
  v14 = 6;
  type metadata accessor for EnergyKit.LoadEvent.State(0);
  sub_25413EA9C(&qword_27F5B8D10, type metadata accessor for EnergyKit.LoadEvent.State, &protocol conformance descriptor for EnergyKit.LoadEvent.State);
  sub_25424EA18();
  return (*(v11 + 8))(v8, v2);
}

uint64_t sub_25413C298(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CC0, &qword_254253D00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CC8, &qword_254253D08);
  sub_25414081C(&qword_27F5B8CD0, &qword_27F5B8CC8, &qword_254253D08, &unk_25425FB00);
  sub_25424EC78();
  v21 = 0;
  sub_25424D8B8();
  sub_25413EA9C(&qword_27F5B8C78, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v6 = v13;
  v7 = v12;
  v8 = v5;
  sub_25424EA18();
  if (v6)
  {
    return (*(v3 + 8))(v5, v2);
  }

  v13 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CD8, &qword_254253D10);
  v20 = 1;
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89D8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_25424EA18();
  v19 = *(v7 + *(v10 + 48));
  v18 = 2;
  sub_2541406B4();
  sub_25424EA18();
  v17 = 3;
  sub_25424EA18();
  v16 = 4;
  sub_25424E9D8();
  v11 = v13;
  v15 = 5;
  sub_25424E9D8();
  v14 = 6;
  _s16LoadSessionEventV5StateVMa(0);
  sub_25413EA9C(&qword_27F5B8CE0, _s16LoadSessionEventV5StateVMa, &unk_254260628);
  sub_25424EA18();
  return (*(v11 + 8))(v8, v2);
}

uint64_t sub_25413C688(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C60, &qword_254253CD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C68, &qword_254253CE0);
  sub_25414081C(&qword_27F5B8C70, &qword_27F5B8C68, &qword_254253CE0, &unk_25425FB00);
  sub_25424EC78();
  v21 = 0;
  sub_25424D8B8();
  sub_25413EA9C(&qword_27F5B8C78, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v6 = v13;
  v7 = v12;
  v8 = v5;
  sub_25424EA18();
  if (v6)
  {
    return (*(v3 + 8))(v5, v2);
  }

  v13 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C80, &qword_254253CE8);
  v20 = 1;
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89D8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_25424EA18();
  v19 = *(v7 + *(v10 + 48));
  v18 = 2;
  sub_2541406B4();
  sub_25424EA18();
  v17 = 3;
  sub_25424EA18();
  v16 = 4;
  sub_25424E9D8();
  v11 = v13;
  v15 = 5;
  sub_25424E9D8();
  v14 = 6;
  _s20LoadDailyDigestEventV5StateVMa(0);
  sub_25413EA9C(&qword_27F5B8C90, _s20LoadDailyDigestEventV5StateVMa, &unk_254261FC8);
  sub_25424EA18();
  return (*(v11 + 8))(v8, v2);
}

uint64_t sub_25413CA78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for EnergyKit.LoadEvent.State(0);
  MEMORY[0x28223BE20](v34);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25424D948();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v33 - v7;
  v43 = sub_25424D8B8();
  v37 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8D18, &qword_254253D30);
  v40 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = &v33 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B8, &qword_254252EE8);
  MEMORY[0x28223BE20](v38);
  v12 = &v33 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8D00, &qword_254253D28);
  sub_25414081C(&qword_27F5B8D08, &qword_27F5B8D00, &qword_254253D28, &unk_25425FB00);
  v13 = v46;
  sub_25424EC68();
  v14 = a1;
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v38;
  v16 = v39;
  v17 = v12;
  v18 = v41;
  v19 = v42;
  v46 = v14;
  v54 = 0;
  sub_25413EA9C(&qword_27F5B8CA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v20 = v43;
  sub_25424E978();
  (*(v37 + 32))(v17, v44, v20);
  v53 = 1;
  sub_25413EA9C(&qword_27F5B89F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v44 = v10;
  sub_25424E978();
  v21 = *(v18 + 32);
  v21(v17 + v15[11], v16, v19);
  v51 = 2;
  sub_2541407C8();
  v39 = 0;
  sub_25424E978();
  *(v17 + v15[12]) = v52;
  v50 = 3;
  v22 = v36;
  sub_25424E978();
  v21(v17 + v15[13], v22, v19);
  v49 = 4;
  v23 = sub_25424E938();
  v24 = v46;
  v25 = v40;
  v26 = (v17 + v15[14]);
  *v26 = v23;
  v26[1] = v27;
  v48 = 5;
  v28 = sub_25424E938();
  v29 = (v17 + v15[15]);
  *v29 = v28;
  v29[1] = v30;
  v47 = 6;
  sub_25413EA9C(&qword_27F5B8D20, type metadata accessor for EnergyKit.LoadEvent.State, &protocol conformance descriptor for EnergyKit.LoadEvent.State);
  v31 = v35;
  sub_25424E978();
  (*(v25 + 8))(v44, v45);
  sub_25413E9D4(v31, v17 + v15[16], type metadata accessor for EnergyKit.LoadEvent.State);
  sub_254132DF4(v17, v33, &qword_27F5B89B8, &qword_254252EE8);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_254132E5C(v17, &qword_27F5B89B8, &qword_254252EE8);
}

uint64_t sub_25413D24C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  MEMORY[0x28223BE20](SessionEventV5StateVMa);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25424D948();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v33 - v7;
  v43 = sub_25424D8B8();
  v37 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CE8, &qword_254253D18);
  v40 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = &v33 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CD8, &qword_254253D10);
  MEMORY[0x28223BE20](v38);
  v12 = &v33 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CC8, &qword_254253D08);
  sub_25414081C(&qword_27F5B8CD0, &qword_27F5B8CC8, &qword_254253D08, &unk_25425FB00);
  v13 = v46;
  sub_25424EC68();
  v14 = a1;
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v38;
  v16 = v39;
  v17 = v12;
  v18 = v41;
  v19 = v42;
  v46 = v14;
  v54 = 0;
  sub_25413EA9C(&qword_27F5B8CA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v20 = v43;
  sub_25424E978();
  (*(v37 + 32))(v17, v44, v20);
  v53 = 1;
  sub_25413EA9C(&qword_27F5B89F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v44 = v10;
  sub_25424E978();
  v21 = *(v18 + 32);
  v21(v17 + v15[11], v16, v19);
  v51 = 2;
  sub_2541407C8();
  v39 = 0;
  sub_25424E978();
  *(v17 + v15[12]) = v52;
  v50 = 3;
  v22 = v36;
  sub_25424E978();
  v21(v17 + v15[13], v22, v19);
  v49 = 4;
  v23 = sub_25424E938();
  v24 = v46;
  v25 = v40;
  v26 = (v17 + v15[14]);
  *v26 = v23;
  v26[1] = v27;
  v48 = 5;
  v28 = sub_25424E938();
  v29 = (v17 + v15[15]);
  *v29 = v28;
  v29[1] = v30;
  v47 = 6;
  sub_25413EA9C(&qword_27F5B8CF0, _s16LoadSessionEventV5StateVMa, &unk_254260650);
  v31 = v35;
  sub_25424E978();
  (*(v25 + 8))(v44, v45);
  sub_25413E9D4(v31, v17 + v15[16], _s16LoadSessionEventV5StateVMa);
  sub_254132DF4(v17, v33, &qword_27F5B8CD8, &qword_254253D10);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_254132E5C(v17, &qword_27F5B8CD8, &qword_254253D10);
}

uint64_t sub_25413DA20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  MEMORY[0x28223BE20](DailyDigestEventV5StateVMa);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25424D948();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v33 - v7;
  v43 = sub_25424D8B8();
  v37 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CA0, &qword_254253CF8);
  v40 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = &v33 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C80, &qword_254253CE8);
  MEMORY[0x28223BE20](v38);
  v12 = &v33 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C68, &qword_254253CE0);
  sub_25414081C(&qword_27F5B8C70, &qword_27F5B8C68, &qword_254253CE0, &unk_25425FB00);
  v13 = v46;
  sub_25424EC68();
  v14 = a1;
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v38;
  v16 = v39;
  v17 = v12;
  v18 = v41;
  v19 = v42;
  v46 = v14;
  v54 = 0;
  sub_25413EA9C(&qword_27F5B8CA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v20 = v43;
  sub_25424E978();
  (*(v37 + 32))(v17, v44, v20);
  v53 = 1;
  sub_25413EA9C(&qword_27F5B89F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v44 = v10;
  sub_25424E978();
  v21 = *(v18 + 32);
  v21(v17 + v15[11], v16, v19);
  v51 = 2;
  sub_2541407C8();
  v39 = 0;
  sub_25424E978();
  *(v17 + v15[12]) = v52;
  v50 = 3;
  v22 = v36;
  sub_25424E978();
  v21(v17 + v15[13], v22, v19);
  v49 = 4;
  v23 = sub_25424E938();
  v24 = v46;
  v25 = v40;
  v26 = (v17 + v15[14]);
  *v26 = v23;
  v26[1] = v27;
  v48 = 5;
  v28 = sub_25424E938();
  v29 = (v17 + v15[15]);
  *v29 = v28;
  v29[1] = v30;
  v47 = 6;
  sub_25413EA9C(&qword_27F5B8CB8, _s20LoadDailyDigestEventV5StateVMa, &unk_254261FF0);
  v31 = v35;
  sub_25424E978();
  (*(v25 + 8))(v44, v45);
  sub_25413E9D4(v31, v17 + v15[16], _s20LoadDailyDigestEventV5StateVMa);
  sub_254132DF4(v17, v33, &qword_27F5B8C80, &qword_254253CE8);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_254132E5C(v17, &qword_27F5B8C80, &qword_254253CE8);
}

BOOL _s13HomeKitEvents06EnergyB0O9LoadEventV5StateV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergyKit.LoadEvent.Session(0);
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B0, &qword_254252EE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8D28, &unk_254253D38);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v13 = *a1;
  if (*a1)
  {
    if (v13 == 1)
    {
      v14 = 1667331688;
    }

    else
    {
      v14 = 0x6369727463656C65;
    }

    if (v13 == 1)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xEF656C6369686556;
    }
  }

  else
  {
    v15 = 0xE500000000000000;
    v14 = 0x726568746FLL;
  }

  v16 = 0xE400000000000000;
  v17 = 1667331688;
  if (*a2 != 1)
  {
    v17 = 0x6369727463656C65;
    v16 = 0xEF656C6369686556;
  }

  if (*a2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0x726568746FLL;
  }

  if (*a2)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  if (v14 == v18 && v15 == v19)
  {
  }

  else
  {
    v20 = sub_25424EAB8();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_2542258F4(a1[1], *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 8))
  {
    return 0;
  }

  v21 = *(a1 + 3);
  v22 = a1[32];
  v59 = *(a1 + 2);
  v60 = v21;
  v61 = v22;
  v24 = *(a2 + 24);
  v25 = *(a2 + 32);
  v56 = *(a2 + 16);
  v23 = v56;
  v57 = v24;
  v58 = v25;
  sub_25413E94C(v59, v21, v22);
  sub_25413E94C(v23, v24, v25);
  LOBYTE(v23) = _s13HomeKitEvents06EnergyB0O16GuidanceBehaviorO2eeoiySbAE_AEtFZ_0(&v59, &v56);
  sub_25413F08C(v56, v57, v58);
  sub_25413F08C(v59, v60, v61);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  v54 = type metadata accessor for EnergyKit.LoadEvent.State(0);
  v26 = v54[8];
  v27 = *(v10 + 48);
  sub_254132DF4(&a1[v26], v12, &qword_27F5B89B0, &qword_254252EE0);
  sub_254132DF4(a2 + v26, &v12[v27], &qword_27F5B89B0, &qword_254252EE0);
  v28 = *(v55 + 48);
  if (v28(v12, 1, v4) != 1)
  {
    sub_254132DF4(v12, v9, &qword_27F5B89B0, &qword_254252EE0);
    if (v28(&v12[v27], 1, v4) == 1)
    {
      sub_25413EA3C(v9, type metadata accessor for EnergyKit.LoadEvent.Session);
      goto LABEL_29;
    }

    sub_25413E9D4(&v12[v27], v6, type metadata accessor for EnergyKit.LoadEvent.Session);
    if (sub_25424D8F8())
    {
      v31 = 0x6E69676562;
      v32 = *(v4 + 20);
      v33 = v9[v32];
      v34 = v6[v32];
      if (v33)
      {
        if (v33 == 1)
        {
          v35 = 0xE600000000000000;
          v36 = 0x657669746361;
        }

        else
        {
          v35 = 0xE300000000000000;
          v36 = 6581861;
        }
      }

      else
      {
        v35 = 0xE500000000000000;
        v36 = 0x6E69676562;
      }

      if (v34)
      {
        if (v34 == 1)
        {
          v38 = 0xE600000000000000;
          v31 = 0x657669746361;
        }

        else
        {
          v38 = 0xE300000000000000;
          v31 = 6581861;
        }
      }

      else
      {
        v38 = 0xE500000000000000;
      }

      if (v36 == v31 && v35 == v38)
      {

        sub_25413EA3C(v6, type metadata accessor for EnergyKit.LoadEvent.Session);
LABEL_50:
        sub_25413EA3C(v9, type metadata accessor for EnergyKit.LoadEvent.Session);
        goto LABEL_51;
      }

      v39 = sub_25424EAB8();

      sub_25413EA3C(v6, type metadata accessor for EnergyKit.LoadEvent.Session);
      if (v39)
      {
        goto LABEL_50;
      }
    }

    else
    {
      sub_25413EA3C(v6, type metadata accessor for EnergyKit.LoadEvent.Session);
    }

    sub_25413EA3C(v9, type metadata accessor for EnergyKit.LoadEvent.Session);
    v29 = &qword_27F5B89B0;
    v30 = &qword_254252EE0;
    goto LABEL_36;
  }

  if (v28(&v12[v27], 1, v4) != 1)
  {
LABEL_29:
    v29 = &qword_27F5B8D28;
    v30 = &unk_254253D38;
LABEL_36:
    sub_254132E5C(v12, v29, v30);
    return 0;
  }

LABEL_51:
  sub_254132E5C(v12, &qword_27F5B89B0, &qword_254252EE0);
  v40 = v54[9];
  v41 = &a1[v40];
  v42 = a1[v40 + 16];
  v43 = (a2 + v40);
  v44 = *(v43 + 16);
  if (v42 == 255)
  {
    if (v44 != 255)
    {
      return 0;
    }

LABEL_61:
    v47 = v54[10];
    v48 = &a1[v47];
    v49 = a1[v47 + 16];
    v50 = (a2 + v47);
    v51 = *(v50 + 16);
    if (v49 == 255)
    {
      return v51 == 255;
    }

    if (v51 == 255)
    {
      return 0;
    }

    v52 = *v48;
    v53 = *v50;
    if (v49)
    {
      if (v49 != 1)
      {
        return v51 == 2 && v52 == v53 && *(v48 + 1) == v50[1];
      }

      if (v51 != 1)
      {
        return 0;
      }
    }

    else if (*(v50 + 16))
    {
      return 0;
    }

    return v52 == v53;
  }

  if (v44 == 255)
  {
    return 0;
  }

  v45 = *v41;
  v46 = *v43;
  if (!v42)
  {
    result = 0;
    if (*(v43 + 16))
    {
      return result;
    }

LABEL_60:
    if (v45 == v46)
    {
      goto LABEL_61;
    }

    return result;
  }

  if (v42 == 1)
  {
    result = 0;
    if (v44 != 1)
    {
      return result;
    }

    goto LABEL_60;
  }

  if (v44 != 2)
  {
    return 0;
  }

  result = 0;
  if (v45 == v46 && *(v41 + 1) == v43[1])
  {
    goto LABEL_61;
  }

  return result;
}

BOOL _s13HomeKitEvents06EnergyB0O9LoadEventV5ValueO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    v5 = v4 == 0;
    return v5 && v2 == v3;
  }

  if (*(a1 + 16) == 1)
  {
    v5 = v4 == 1;
    return v5 && v2 == v3;
  }

  return v4 == 2 && v2 == v3 && a1[1] == a2[1];
}

uint64_t sub_25413E914(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25413E94C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_25413E964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B0, &qword_254252EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25413E9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25413EA3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25413EA9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25413EAE4()
{
  result = qword_27F5B89D0;
  if (!qword_27F5B89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B89D0);
  }

  return result;
}

unint64_t sub_25413EB38()
{
  result = qword_27F5B89E0;
  if (!qword_27F5B89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B89E0);
  }

  return result;
}

unint64_t sub_25413EB8C()
{
  result = qword_27F5B89F8;
  if (!qword_27F5B89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B89F8);
  }

  return result;
}

uint64_t sub_25413EBE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25413EC48()
{
  result = qword_27F5B8A20;
  if (!qword_27F5B8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A20);
  }

  return result;
}

unint64_t sub_25413EC9C()
{
  result = qword_27F5B8A28;
  if (!qword_27F5B8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A28);
  }

  return result;
}

unint64_t sub_25413ECF0()
{
  result = qword_27F5B8A30;
  if (!qword_27F5B8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A30);
  }

  return result;
}

unint64_t sub_25413ED44()
{
  result = qword_27F5B8A38;
  if (!qword_27F5B8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A38);
  }

  return result;
}

unint64_t sub_25413ED98()
{
  result = qword_27F5B8A40;
  if (!qword_27F5B8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A40);
  }

  return result;
}

unint64_t sub_25413EDEC()
{
  result = qword_27F5B8A48;
  if (!qword_27F5B8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A48);
  }

  return result;
}

unint64_t sub_25413EE40()
{
  result = qword_27F5B8A78;
  if (!qword_27F5B8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A78);
  }

  return result;
}

unint64_t sub_25413EE94()
{
  result = qword_27F5B8A80;
  if (!qword_27F5B8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A80);
  }

  return result;
}

unint64_t sub_25413EEE8()
{
  result = qword_27F5B8A90;
  if (!qword_27F5B8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A90);
  }

  return result;
}

unint64_t sub_25413EF3C()
{
  result = qword_27F5B8A98;
  if (!qword_27F5B8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A98);
  }

  return result;
}

unint64_t sub_25413EF90()
{
  result = qword_27F5B8AA0;
  if (!qword_27F5B8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AA0);
  }

  return result;
}

unint64_t sub_25413EFE4()
{
  result = qword_27F5B8AA8;
  if (!qword_27F5B8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AA8);
  }

  return result;
}

unint64_t sub_25413F038()
{
  result = qword_27F5B8AB0;
  if (!qword_27F5B8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AB0);
  }

  return result;
}

uint64_t sub_25413F08C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_25413F0A4()
{
  result = qword_27F5B8AC0;
  if (!qword_27F5B8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AC0);
  }

  return result;
}

unint64_t sub_25413F0F8()
{
  result = qword_27F5B8AD0;
  if (!qword_27F5B8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AD0);
  }

  return result;
}

unint64_t sub_25413F14C()
{
  result = qword_27F5B8AD8;
  if (!qword_27F5B8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AD8);
  }

  return result;
}

unint64_t sub_25413F1A0()
{
  result = qword_27F5B8AE0;
  if (!qword_27F5B8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AE0);
  }

  return result;
}

unint64_t sub_25413F1F4()
{
  result = qword_27F5B8AE8;
  if (!qword_27F5B8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AE8);
  }

  return result;
}

unint64_t sub_25413F248()
{
  result = qword_27F5B8AF8;
  if (!qword_27F5B8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AF8);
  }

  return result;
}

unint64_t sub_25413F2E4()
{
  result = qword_27F5B8B10;
  if (!qword_27F5B8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8B10);
  }

  return result;
}

unint64_t sub_25413F33C()
{
  result = qword_27F5B8B18;
  if (!qword_27F5B8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8B18);
  }

  return result;
}

unint64_t sub_25413F3D8()
{
  result = qword_27F5B8B30;
  if (!qword_27F5B8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8B30);
  }

  return result;
}

uint64_t sub_25413F4BC(void *a1)
{
  a1[1] = sub_25413EA9C(&qword_27F5B8B48, type metadata accessor for EnergyKit.LoadEvent, &protocol conformance descriptor for EnergyKit.LoadEvent);
  a1[2] = sub_25413EA9C(&qword_27F5B8B50, type metadata accessor for EnergyKit.LoadEvent, &protocol conformance descriptor for EnergyKit.LoadEvent);
  result = sub_25413EA9C(&qword_27F5B8B58, type metadata accessor for EnergyKit.LoadEvent, &protocol conformance descriptor for EnergyKit.LoadEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25413F5B0(uint64_t a1)
{
  *(a1 + 8) = sub_25413EA9C(&qword_27F5B8B70, type metadata accessor for EnergyKit.LoadEvent, &protocol conformance descriptor for EnergyKit.LoadEvent);
  result = sub_25413EA9C(&qword_27F5B8B78, type metadata accessor for EnergyKit.LoadEvent, &unk_254253324);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25413F65C(uint64_t a1)
{
  result = type metadata accessor for EnergyKit.EventBase(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for EnergyKit.LoadEvent.State(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s9LoadEventV9LoadStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9LoadEventV9LoadStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t _s9LoadEventV5ValueOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t _s9LoadEventV5ValueOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_25413F918(uint64_t a1)
{
  result = sub_25424D948();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25413F9C4(uint64_t a1)
{
  sub_25413FA74(319);
  if (v1 <= 0x3F)
  {
    sub_25413FACC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25413FA74(uint64_t a1)
{
  if (!qword_27F5B8BB0)
  {
    type metadata accessor for EnergyKit.LoadEvent.Session(255);
    v1 = sub_25424E598();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5B8BB0);
    }
  }
}

void sub_25413FACC()
{
  if (!qword_27F5B8BB8)
  {
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5B8BB8);
    }
  }
}

uint64_t getEnumTagSinglePayload for EventCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactSensorEvent.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactSensorEvent.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedZoneLookup(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SharedZoneLookup(_WORD *result, int a2, int a3)
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

unint64_t sub_25413FED8()
{
  result = qword_27F5B8BC0;
  if (!qword_27F5B8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BC0);
  }

  return result;
}

unint64_t sub_25413FF30()
{
  result = qword_27F5B8BC8;
  if (!qword_27F5B8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BC8);
  }

  return result;
}

unint64_t sub_25413FF88()
{
  result = qword_27F5B8BD0;
  if (!qword_27F5B8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BD0);
  }

  return result;
}

unint64_t sub_25413FFE0()
{
  result = qword_27F5B8BD8;
  if (!qword_27F5B8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BD8);
  }

  return result;
}

unint64_t sub_254140038()
{
  result = qword_27F5B8BE0;
  if (!qword_27F5B8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BE0);
  }

  return result;
}

unint64_t sub_254140090()
{
  result = qword_27F5B8BE8;
  if (!qword_27F5B8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BE8);
  }

  return result;
}

unint64_t sub_2541400E8()
{
  result = qword_27F5B8BF0;
  if (!qword_27F5B8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BF0);
  }

  return result;
}

unint64_t sub_254140140()
{
  result = qword_27F5B8BF8;
  if (!qword_27F5B8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BF8);
  }

  return result;
}

unint64_t sub_254140198()
{
  result = qword_27F5B8C00;
  if (!qword_27F5B8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C00);
  }

  return result;
}

unint64_t sub_2541401F0()
{
  result = qword_27F5B8C08;
  if (!qword_27F5B8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C08);
  }

  return result;
}

unint64_t sub_254140248()
{
  result = qword_27F5B8C10;
  if (!qword_27F5B8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C10);
  }

  return result;
}

unint64_t sub_2541402A0()
{
  result = qword_27F5B8C18;
  if (!qword_27F5B8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C18);
  }

  return result;
}

unint64_t sub_2541402F8()
{
  result = qword_27F5B8C20;
  if (!qword_27F5B8C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C20);
  }

  return result;
}

unint64_t sub_254140350()
{
  result = qword_27F5B8C28;
  if (!qword_27F5B8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C28);
  }

  return result;
}

unint64_t sub_2541403A8()
{
  result = qword_27F5B8C30;
  if (!qword_27F5B8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C30);
  }

  return result;
}

unint64_t sub_254140400()
{
  result = qword_27F5B8C38;
  if (!qword_27F5B8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C38);
  }

  return result;
}

unint64_t sub_254140458()
{
  result = qword_27F5B8C40;
  if (!qword_27F5B8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C40);
  }

  return result;
}

unint64_t sub_2541404B0()
{
  result = qword_27F5B8C48;
  if (!qword_27F5B8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C48);
  }

  return result;
}

unint64_t sub_254140504(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_254140550(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25414059C()
{
  result = qword_27F5B8C50;
  if (!qword_27F5B8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C50);
  }

  return result;
}

unint64_t sub_2541405F0()
{
  result = qword_27F5B8C58;
  if (!qword_27F5B8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C58);
  }

  return result;
}

uint64_t sub_254140644(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 15)
  {
    return sub_254140660(a2, a3);
  }

  return result;
}

uint64_t sub_254140660(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2541406B4()
{
  result = qword_27F5B8C88;
  if (!qword_27F5B8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C88);
  }

  return result;
}

uint64_t sub_254140708(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25414076C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2541407C8()
{
  result = qword_27F5B8CB0;
  if (!qword_27F5B8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8CB0);
  }

  return result;
}

uint64_t sub_25414081C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t type metadata accessor for QueryBase(uint64_t a1)
{
  result = qword_27F5B8D30;
  if (!qword_27F5B8D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254140928(uint64_t a1)
{
  result = sub_25424D948();
  if (v2 <= 0x3F)
  {
    result = sub_25424D8B8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t HomeQuery.categories.getter()
{
  type metadata accessor for HomeQuery(0);
}

uint64_t type metadata accessor for HomeQuery(uint64_t a1)
{
  result = qword_27F5B8D40;
  if (!qword_27F5B8D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeQuery.homeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomeQuery.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QueryBase(0) + 20);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HomeQuery.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QueryBase(0) + 24);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HomeQuery.scope.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for QueryBase(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_254140BF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_254140C60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QueryBase(0) + 20);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_254140CDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QueryBase(0) + 24);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_254140D7C@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for QueryBase(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t QueryController.homeQuery(homeIdentifier:startDate:endDate:categories:limit:scope:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a5;
  v40 = *MEMORY[0x277D85DE8];
  v39 = *a6;
  if (a4)
  {
    v13 = *(a4 + 32);
    v14 = v13 & 0x3F;
    v15 = ((1 << v13) + 63) >> 6;
    v16 = 8 * v15;

    if (v14 > 0xD)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v18 = v7;
      MEMORY[0x28223BE20](v17);
      v7 = &v38[-((v16 + 15) & 0x3FFFFFFFFFFFFFF0)];
      bzero(v7, v16);
      v19 = 0;
      v20 = 0;
      v21 = 1 << *(a4 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & *(a4 + 56);
      v24 = (v21 + 63) >> 6;
      while (v23)
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v26 = v25 | (v20 << 6);
LABEL_13:
        if (*(*(a4 + 48) + v26) != 5)
        {
          *&v7[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
          if (__OFADD__(v19++, 1))
          {
            __break(1u);
LABEL_17:
            v30 = sub_2541417B4(&v38[-((v16 + 15) & 0x3FFFFFFFFFFFFFF0)], v15, v19, a4);
            goto LABEL_19;
          }
        }
      }

      v27 = v20;
      while (1)
      {
        v20 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v20 >= v24)
        {
          goto LABEL_17;
        }

        v28 = *(a4 + 56 + 8 * v20);
        ++v27;
        if (v28)
        {
          v23 = (v28 - 1) & v28;
          v26 = __clz(__rbit64(v28)) | (v20 << 6);
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_21:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v18 = v7;
    v37 = swift_slowAlloc();

    v30 = sub_254141724(v37, v15, a4, sub_254140DB0);
    swift_bridgeObjectRelease_n();
    MEMORY[0x259C07330](v37, -1, -1);
  }

  else
  {
    v18 = a5;
    v30 = 0;
  }

LABEL_19:
  v31 = sub_25424D948();
  (*(*(v31 - 8) + 16))(a7, a1, v31);
  Base = type metadata accessor for QueryBase(0);
  v33 = Base[5];
  v34 = sub_25424D8B8();
  v35 = *(*(v34 - 8) + 16);
  v35(a7 + v33, a2, v34);
  v35(a7 + Base[6], a3, v34);
  *(a7 + Base[7]) = v18;
  *(a7 + Base[8]) = v39;
  result = type metadata accessor for HomeQuery(0);
  *(a7 + *(result + 20)) = v30;
  *(a7 + *(result + 24)) = 0;
  return result;
}

uint64_t QueryController.energyKitQuery(homeIdentifier:startDate:endDate:categories:limit:scope:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unsigned __int8 *a5@<X5>, uint64_t a6@<X8>)
{
  v53 = a4;
  v54 = *MEMORY[0x277D85DE8];
  v11 = sub_25424D8B8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = sub_25424D948();
  MEMORY[0x28223BE20](v18);
  v50 = *a5;
  v47 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v20;
  v21 = *(v20 + 16);
  v49 = v22;
  v21();
  v23 = *(v12 + 16);
  v51 = v17;
  v23(v17, a1, v11);
  v52 = v15;
  v23(v15, a2, v11);
  if (a3)
  {
    v24 = *(a3 + 32);
    v25 = v24 & 0x3F;
    v26 = ((1 << v24) + 63) >> 6;
    v27 = 8 * v26;

    if (v25 > 0xD)
    {
      goto LABEL_21;
    }

    while (1)
    {
      MEMORY[0x28223BE20](v28);
      bzero(&v46 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0), v27);
      v29 = 0;
      v30 = 0;
      v31 = 1 << *(a3 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = v32 & *(a3 + 56);
      v34 = (v31 + 63) >> 6;
      while (v33)
      {
        v35 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v36 = v35 | (v30 << 6);
LABEL_13:
        if (*(*(a3 + 48) + v36) == 5)
        {
          *(&v46 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v36;
          if (__OFADD__(v29++, 1))
          {
            __break(1u);
LABEL_17:
            v40 = sub_2541417B4((&v46 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0)), v26, v29, a3);
            goto LABEL_19;
          }
        }
      }

      v37 = v30;
      while (1)
      {
        v30 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v30 >= v34)
        {
          goto LABEL_17;
        }

        v38 = *(a3 + 56 + 8 * v30);
        ++v37;
        if (v38)
        {
          v33 = (v38 - 1) & v38;
          v36 = __clz(__rbit64(v38)) | (v30 << 6);
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_21:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v45 = swift_slowAlloc();

    v40 = sub_254141724(v45, v26, a3, sub_2541415CC);
    swift_bridgeObjectRelease_n();
    MEMORY[0x259C07330](v45, -1, -1);
  }

  else
  {
    v40 = 0;
  }

LABEL_19:
  v41 = v53;
  (*(v48 + 32))(a6, v47, v49);
  Base = type metadata accessor for QueryBase(0);
  v43 = *(v12 + 32);
  v43(a6 + Base[5], v51, v11);
  v43(a6 + Base[6], v52, v11);
  *(a6 + Base[7]) = v41;
  *(a6 + Base[8]) = v50;
  result = type metadata accessor for HomeQuery(0);
  *(a6 + *(result + 20)) = v40;
  *(a6 + *(result + 24)) = 1;
  return result;
}

uint64_t sub_2541415DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_2541417B4(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_254141724(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_2541415DC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2541417B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90A0, &qword_254253DD0);
  result = sub_25424E648();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_25424EBD8();
    MEMORY[0x259C06AA0](qword_254253DD8[v16]);
    result = sub_25424EC28();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_2541419F0(uint64_t a1)
{
  type metadata accessor for QueryBase(319);
  if (v1 <= 0x3F)
  {
    sub_254141A7C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254141A7C(uint64_t a1)
{
  if (!qword_27F5B8D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B9060, &qword_254254410);
    v1 = sub_25424E598();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5B8D50);
    }
  }
}

uint64_t static QueryController.homeQuery(homeIdentifier:startDate:endDate:categories:limit:scope:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{

  return QueryController.homeQuery(homeIdentifier:startDate:endDate:categories:limit:scope:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t EncryptionKeyQuery.homeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EncryptionKeyQuery.targetCloudKitZone.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EncryptionKeyQuery(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for EncryptionKeyQuery(uint64_t a1)
{
  result = qword_27F5B8D80;
  if (!qword_27F5B8D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EncryptionKeyQuery.queryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EncryptionKeyQuery(0) + 24);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EncryptionKeyQuery.init(database:homeIdentifier:queryIdentifier:resultsLimit:qualityOfService:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v36 = a7;
  v35 = a6;
  v40 = a5;
  v41 = a4;
  v38 = a8;
  v39 = a3;
  v10 = type metadata accessor for EncryptionKeyQuery(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25424D948();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = *a1;
  v33 = a1[1];
  v34 = v20;
  v32 = a1[2];
  v21 = *(v14 + 16);
  v37 = a2;
  v22 = a2;
  v23 = v39;
  v21(&v32 - v18, v22, v13);
  result = (v21)(v17, v23, v13);
  v25 = v40;
  if ((v40 & 1) != 0 || v41 >= 1)
  {
    v21(v12, v19, v13);
    v12[v10[5]] = 0;
    v21(&v12[v10[6]], v17, v13);
    v26 = &v12[v10[7]];
    *v26 = v41;
    v26[8] = v25 & 1;
    v27 = &v12[v10[8]];
    *v27 = v35;
    v27[8] = v36 & 1;
    v28 = &v12[v10[9]];
    v29 = v33;
    *v28 = v34;
    *(v28 + 1) = v29;
    *(v28 + 2) = v32;
    if (qword_27F5B8468 != -1)
    {
      swift_once();
    }

    v30 = off_27F5BAFB0;
    v31 = *(v14 + 8);
    v31(v23, v13);
    v31(v37, v13);
    v31(v17, v13);
    v31(v19, v13);
    *&v12[v10[10]] = v30[2];
    sub_254148E6C(v12, v38, type metadata accessor for EncryptionKeyQuery);
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id EncryptionKeyQuery.init(homeIdentifier:queryIdentifier:resultsLimit:scope:qualityOfService:operationGroup:container:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, void *a8@<X7>, uint64_t a9@<X8>, id a10)
{
  v51 = a7;
  v57 = a4;
  v55 = a3;
  v61 = a2;
  v62 = a1;
  v14 = a10;
  v15 = type metadata accessor for EncryptionKeyQuery(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25424D948();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v60 = &v47 - v23;
  MEMORY[0x28223BE20](v22);
  v58 = v25;
  v59 = &v47 - v24;
  v26 = *a5;
  v52 = a8;
  v53 = a10;
  v49 = v26;
  v50 = a6;
  v56 = v27;
  if (!a10)
  {
    if (a8)
    {
      result = [a8 defaultConfiguration];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v29 = result;
      v30 = [result container];

      v54 = v30;
      if (v30)
      {
        goto LABEL_9;
      }
    }

    if (qword_27F5B8420 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v54 = a10;
  if (a8)
  {
    goto LABEL_9;
  }

LABEL_10:
  v32 = objc_allocWithZone(MEMORY[0x277CBC4F8]);
  v33 = v14;
  v14 = [v32 init];
  v63 = v14;
  sub_2541424A0(&v63, v54);
  while (1)
  {
    a8 = *(v19 + 16);
    v34 = v59;
    (a8)(v59, v62, v18);
    v35 = v60;
    (a8)(v60, v61, v18);
    (a8)(v56, v34, v18);
    (a8)(v58, v35, v18);
    if ((v57 & 1) != 0 || v55 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_8:
    v54 = qword_27F5BA548;
    if (!a8)
    {
      goto LABEL_10;
    }

LABEL_9:
    v31 = v14;
    v14 = a8;
  }

  v48 = a9;
  v36 = v49 | 0x8000000000000000;
  v37 = v56;
  (a8)(v17, v56, v18);
  v17[v15[5]] = 0;
  v38 = v58;
  (a8)(&v17[v15[6]], v58, v18);
  v39 = &v17[v15[7]];
  *v39 = v55;
  v39[8] = v57 & 1;
  v40 = &v17[v15[8]];
  *v40 = v50;
  v40[8] = v51 & 1;
  v41 = &v17[v15[9]];
  *v41 = v54;
  *(v41 + 1) = v36;
  *(v41 + 2) = v14;
  v42 = qword_27F5B8468;
  v43 = v52;
  if (v42 != -1)
  {
    v46 = v43;
    swift_once();
    v43 = v46;
  }

  v44 = off_27F5BAFB0;

  v45 = *(v19 + 8);
  v45(v61, v18);
  v45(v62, v18);
  v45(v38, v18);
  v45(v37, v18);
  v45(v60, v18);
  v45(v59, v18);
  *&v17[v15[10]] = v44[2];
  sub_254148E6C(v17, v48, type metadata accessor for EncryptionKeyQuery);
  return swift_unknownObjectRetain();
}

void sub_2541424A0(void **a1, uint64_t a2)
{
  v3 = *a1;
  v17[3] = 0xE000000000000000;
  v17[0] = 47;
  v17[1] = 0xE100000000000000;
  v17[2] = 0;
  v16[2] = v17;
  v4 = sub_2541D870C(0x7FFFFFFFFFFFFFFFLL, 1, sub_254148F24, v16, 0xD000000000000026, 0x8000000254250460, ": { queryIdentifier = ");
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];

    v9 = MEMORY[0x259C05BF0](v5, v6, v7, v8);
    v11 = v10;

    MEMORY[0x259C05CA0](v9, v11);

    MEMORY[0x259C05CA0](46, 0xE100000000000000);
    v17[0] = type metadata accessor for EncryptionKeyQuery(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8D60, &qword_254253E48);
    v12 = sub_25424DD08();
    MEMORY[0x259C05CA0](v12);

    v13 = sub_25424DCA8();

    [v3 setName_];

    [v3 setExpectedReceiveSize_];
    [v3 setExpectedSendSize_];
    v14 = [v3 defaultConfiguration];
    if (v14)
    {
      v15 = v14;
      [v14 setContainer_];

      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

uint64_t EncryptionKeyQuery.fetchRecords()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_254142718;

  return sub_254142818();
}

uint64_t sub_254142718(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_254142818()
{
  v1[3] = v0;
  v2 = *(type metadata accessor for EncryptionKeyQuery(0) - 8);
  v1[4] = v2;
  v1[5] = *(v2 + 64);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v1[7] = swift_task_alloc();
  v3 = sub_25424D8B8();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v1[10] = *(v4 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254142984, 0, 0);
}

uint64_t sub_254142984()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  sub_25424D898();
  v10 = sub_25424E128();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_254148AB4(v8, v6, type metadata accessor for EncryptionKeyQuery);
  (*(v3 + 16))(v1, v2, v5);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = (v7 + *(v3 + 80) + v11) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_254148E6C(v6, v13 + v11, type metadata accessor for EncryptionKeyQuery);
  (*(v3 + 32))(v13 + v12, v1, v5);
  v14 = sub_2541A9134(0, 0, v4, &unk_254253F30, v13);
  v0[13] = v14;
  v15 = swift_task_alloc();
  v0[14] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8DF0, &qword_254253F38);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  *v15 = v0;
  v15[1] = sub_254142BC8;
  v18 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v14, v16, v17, v18);
}

uint64_t sub_254142BC8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_254142D9C;
  }

  else
  {
    v2 = sub_254142CDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_254142CDC()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);
  v4 = v0[2];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_254142D9C()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t EncryptionKeyQuery.fetchKeys()()
{
  v1 = type metadata accessor for EncryptionKeyRecord(0);
  v0[7] = v1;
  v0[8] = *(v1 - 8);
  v0[9] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_254142F3C;

  return sub_254142818();
}

uint64_t sub_254142F3C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25414308C, 0, 0);
  }
}

uint64_t sub_25414308C()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v13 = MEMORY[0x277D84F90];
    sub_254147FF8(0, v2, 0);
    v5 = v13;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = *(v0 + 72);
      sub_254148AB4(v6, v8, type metadata accessor for EncryptionKeyRecord);
      sub_254140708(v8 + *(v4 + 20), v0 + 16);
      sub_254148DC4(v8, type metadata accessor for EncryptionKeyRecord);
      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_254147FF8((v9 > 1), v10 + 1, 1);
      }

      *(v13 + 16) = v10 + 1;
      sub_25412DC4C((v0 + 16), v13 + 40 * v10 + 32);
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v11 = *(v0 + 8);

  return v11(v5);
}

uint64_t EncryptionKeyQuery.description.getter()
{
  sub_25424E688();
  type metadata accessor for EncryptionKeyQuery(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8D60, &qword_254253E48);
  v0 = sub_25424DD08();
  MEMORY[0x259C05CA0](v0);

  MEMORY[0x259C05CA0](0xD000000000000016, 0x8000000254250440);
  sub_25424D948();
  sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = sub_25424EA58();
  MEMORY[0x259C05CA0](v1);

  MEMORY[0x259C05CA0](0x3D20656D6F68202CLL, 0xE900000000000020);
  v2 = sub_25424EA58();
  MEMORY[0x259C05CA0](v2);

  MEMORY[0x259C05CA0](0x2074696D696C202CLL, 0xEA0000000000203DLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8D70, &qword_254253E50);
  v3 = sub_25424DD08();
  MEMORY[0x259C05CA0](v3);

  MEMORY[0x259C05CA0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_254143458@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v102 = type metadata accessor for EncryptionKeyQuery(0);
  v3 = MEMORY[0x28223BE20](v102);
  v97 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v92 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v99 = &v92 - v9;
  MEMORY[0x28223BE20](v8);
  v93 = &v92 - v10;
  v11 = sub_25424DAA8();
  v12 = *(v11 - 8);
  v104 = v11;
  v105 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v98 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v101 = &v92 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v100 = &v92 - v18;
  MEMORY[0x28223BE20](v17);
  v95 = &v92 - v19;
  v20 = type metadata accessor for EncryptionKeyRecord(0);
  v106 = *(v20 - 8);
  v107 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v92 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v96 = &v92 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v92 - v26;
  MEMORY[0x28223BE20](v25);
  v94 = &v92 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v92 - v30;
  v32 = [a1 recordID];
  v33 = [v32 recordName];
  sub_25424DCB8();

  sub_25424D8C8();

  v34 = sub_25424D948();
  v35 = (*(*(v34 - 8) + 48))(v31, 1, v34);
  sub_254132E5C(v31, &unk_27F5B8E50, &qword_254254390);
  if (v35 == 1)
  {
    v36 = v101;
    sub_25421A334(v101);
    sub_254148AB4(v103, v7, type metadata accessor for EncryptionKeyQuery);
    v37 = v32;
    v38 = sub_25424DA88();
    v39 = sub_25424E408();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v109[0] = v41;
      *v40 = 136446722;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v42 = sub_25424EA58();
      v44 = v43;
      sub_254148DC4(v7, type metadata accessor for EncryptionKeyQuery);
      v45 = sub_2542203C4(v42, v44, v109);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2160;
      *(v40 + 14) = 1752392040;
      *(v40 + 22) = 2080;
      v46 = [v37 recordName];
      v47 = sub_25424DCB8();
      v49 = v48;

      v50 = sub_2542203C4(v47, v49, v109);

      *(v40 + 24) = v50;
      _os_log_impl(&dword_254124000, v38, v39, "[%{public}s] Ignoring record with non-UUID record name: %{mask.hash}s", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v41, -1, -1);
      MEMORY[0x259C07330](v40, -1, -1);
    }

    else
    {

      sub_254148DC4(v7, type metadata accessor for EncryptionKeyQuery);
    }

    (*(v105 + 8))(v36, v104);
LABEL_14:
    v87 = 1;
    v89 = v107;
    v88 = v108;
    return (*(v106 + 56))(v88, v87, 1, v89);
  }

  v51 = v103;
  v52 = v32;
  if ([a1 isExpired])
  {
    v53 = v100;
    sub_25421A334(v100);
    v54 = v51;
    v55 = v99;
    sub_254148AB4(v54, v99, type metadata accessor for EncryptionKeyQuery);
    v56 = v32;
    v57 = sub_25424DA88();
    v58 = sub_25424E408();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v109[0] = v61;
      *v59 = 136446466;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v62 = sub_25424EA58();
      v63 = v55;
      v65 = v64;
      sub_254148DC4(v63, type metadata accessor for EncryptionKeyQuery);
      v66 = sub_2542203C4(v62, v65, v109);

      *(v59 + 4) = v66;
      *(v59 + 12) = 2114;
      *(v59 + 14) = v56;
      *v60 = v56;
      v67 = v56;
      _os_log_impl(&dword_254124000, v57, v58, "[%{public}s] Ignoring record %{public}@ that has expired", v59, 0x16u);
      sub_254132E5C(v60, &unk_27F5BBED0, &qword_254253F80);
      MEMORY[0x259C07330](v60, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x259C07330](v61, -1, -1);
      MEMORY[0x259C07330](v59, -1, -1);
    }

    else
    {

      sub_254148DC4(v55, type metadata accessor for EncryptionKeyQuery);
    }

    (*(v105 + 8))(v53, v104);
    goto LABEL_14;
  }

  EncryptionKeyRecord.init(from:)(a1, v27);
  v68 = v94;
  sub_254148E6C(v27, v94, type metadata accessor for EncryptionKeyRecord);
  v69 = v95;
  sub_25421A334(v95);
  v70 = v93;
  sub_254148AB4(v51, v93, type metadata accessor for EncryptionKeyQuery);
  v71 = v96;
  sub_254148AB4(v68, v96, type metadata accessor for EncryptionKeyRecord);
  v72 = sub_25424DA88();
  v73 = sub_25424E418();
  if (os_log_type_enabled(v72, v73))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v109[0] = v76;
    *v75 = 136315394;
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v77 = sub_25424EA58();
    v103 = v52;
    v79 = v78;
    sub_254148DC4(v70, type metadata accessor for EncryptionKeyQuery);
    v80 = sub_2542203C4(v77, v79, v109);

    *(v75 + 4) = v80;
    *(v75 + 12) = 2080;
    v81 = v96;
    sub_254148AB4(v96, v92, type metadata accessor for EncryptionKeyRecord);
    v82 = v107;
    v83 = sub_25424DD08();
    v85 = v84;
    sub_254148DC4(v81, type metadata accessor for EncryptionKeyRecord);
    v86 = sub_2542203C4(v83, v85, v109);

    *(v75 + 14) = v86;
    _os_log_impl(&dword_254124000, v72, v73, "[%s] Successfully decoded record %s", v75, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v76, -1, -1);
    MEMORY[0x259C07330](v75, -1, -1);

    (*(v105 + 8))(v69, v104);
  }

  else
  {

    sub_254148DC4(v71, type metadata accessor for EncryptionKeyRecord);
    sub_254148DC4(v70, type metadata accessor for EncryptionKeyQuery);
    (*(v105 + 8))(v69, v104);
    v82 = v107;
  }

  v91 = v108;
  sub_254148E6C(v68, v108, type metadata accessor for EncryptionKeyRecord);
  v88 = v91;
  v87 = 0;
  v89 = v82;
  return (*(v106 + 56))(v88, v87, 1, v89);
}

uint64_t sub_2541441C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_25424D8B8();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = type metadata accessor for EncryptionKeyQuery(0);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v7 = sub_25424DAA8();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254144334, 0, 0);
}

uint64_t sub_254144334(uint64_t a1)
{
  v34 = v1;
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[6];
  sub_25421A334(v1[18]);
  sub_254148AB4(v4, v2, type metadata accessor for EncryptionKeyQuery);
  sub_254148AB4(v4, v3, type metadata accessor for EncryptionKeyQuery);
  v5 = sub_25424DA88();
  v6 = sub_25424E448();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[18];
  v9 = v1[15];
  v10 = v1[16];
  v11 = v1[13];
  v12 = v1[14];
  if (v7)
  {
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v13 = 136446466;
    sub_25424D948();
    v32 = v8;
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_25424EA58();
    v16 = v15;
    sub_254148DC4(v12, type metadata accessor for EncryptionKeyQuery);
    v17 = sub_2542203C4(v14, v16, &v33);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = EncryptionKeyQuery.description.getter();
    v20 = v19;
    sub_254148DC4(v11, type metadata accessor for EncryptionKeyQuery);
    v21 = sub_2542203C4(v18, v20, &v33);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_254124000, v5, v6, "[%{public}s] Beginning: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v31, -1, -1);
    MEMORY[0x259C07330](v13, -1, -1);

    v22 = *(v10 + 8);
    v22(v32, v9);
  }

  else
  {

    sub_254148DC4(v11, type metadata accessor for EncryptionKeyQuery);
    sub_254148DC4(v12, type metadata accessor for EncryptionKeyQuery);
    v22 = *(v10 + 8);
    v22(v8, v9);
  }

  v1[19] = v22;
  v23 = v1[6];
  v24 = (v23 + *(v1[11] + 36));
  v26 = *v24;
  v25 = v24[1];
  v27 = v24[2];
  v28 = swift_task_alloc();
  v1[20] = v28;
  *(v28 + 16) = v23;
  v29 = swift_task_alloc();
  v1[21] = v29;
  *v29 = v1;
  v29[1] = sub_254144694;

  return sub_25414CA0C(&unk_254253F50, v28, v26, v25, v27);
}

uint64_t sub_254144694(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25414483C, 0, 0);
  }
}

uint64_t sub_25414483C(uint64_t a1)
{
  v38 = v1;
  v2 = *(v1 + 96);
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v6 = *(v1 + 56);
  v5 = *(v1 + 64);
  v7 = *(v1 + 48);
  sub_25421A334(*(v1 + 136));
  sub_254148AB4(v7, v2, type metadata accessor for EncryptionKeyQuery);
  (*(v4 + 16))(v3, v6, v5);
  v8 = sub_25424DA88();
  v9 = sub_25424E448();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v1 + 96);
    v11 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v11 = 136446466;
    sub_25424D948();
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = sub_25424EA58();
    v14 = v13;
    sub_254148DC4(v10, type metadata accessor for EncryptionKeyQuery);
    v15 = sub_2542203C4(v12, v14, &v37);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    sub_25424D868();
    v16 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v16 setMaximumFractionDigits_];
    v17 = sub_25424E288();
    v18 = [v16 stringForObjectValue_];

    if (v18)
    {
      v19 = sub_25424DCB8();
      v21 = v20;
    }

    else
    {
      v19 = sub_25424E298();
      v21 = v29;
    }

    v30 = *(v1 + 152);
    v31 = *(v1 + 136);
    v32 = *(v1 + 120);
    (*(*(v1 + 72) + 8))(*(v1 + 80), *(v1 + 64));
    v33 = sub_2542203C4(v19, v21, &v37);

    *(v11 + 14) = v33;
    _os_log_impl(&dword_254124000, v8, v9, "[%{public}s] Finished in %{public}s seconds", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v36, -1, -1);
    MEMORY[0x259C07330](v11, -1, -1);

    v30(v31, v32);
  }

  else
  {
    v22 = *(v1 + 152);
    v23 = *(v1 + 136);
    v24 = *(v1 + 120);
    v25 = *(v1 + 96);
    v27 = *(v1 + 72);
    v26 = *(v1 + 80);
    v28 = *(v1 + 64);

    (*(v27 + 8))(v26, v28);
    sub_254148DC4(v25, type metadata accessor for EncryptionKeyQuery);
    v22(v23, v24);
  }

  **(v1 + 40) = *(v1 + 24);

  v34 = *(v1 + 8);

  return v34();
}

uint64_t sub_254144C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_25424E0A8();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E00, &qword_254253F58);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E08, &qword_254253F60);
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for EncryptionKeyRecord(0);
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E10, &qword_254253F68);
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v7 = sub_25424D8B8();
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E18, &qword_254253F70);
  v3[31] = v8;
  v3[32] = *(v8 - 8);
  v3[33] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E20, &qword_254253F78);
  v3[34] = v9;
  v3[35] = *(v9 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = type metadata accessor for CKQueryAsyncSequence(0);
  v3[38] = swift_task_alloc();
  v3[39] = type metadata accessor for EncryptionKeyQuery(0);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v10 = sub_25424DAA8();
  v3[45] = v10;
  v3[46] = *(v10 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v11 = sub_25424D948();
  v3[52] = v11;
  v3[53] = *(v11 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541450D8, 0, 0);
}

uint64_t sub_2541450D8()
{
  sub_25424E1E8();
  *(v0 + 512) = *(*(v0 + 112) + *(*(v0 + 312) + 20));
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *v1 = v0;
  v1[1] = sub_25414531C;
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);

  return sub_2541A23BC(v3, v2, (v0 + 512), 1);
}

uint64_t sub_25414531C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 456) = a1;
  *(v3 + 464) = v1;

  if (v1)
  {
    v4 = sub_254145B2C;
  }

  else
  {
    v4 = sub_254145430;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_254145430()
{
  v66 = v0;
  v1 = *(v0 + 464);
  sub_25424E1E8();
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v5 = *(v0 + 432);
    v4 = *(v0 + 440);
    v6 = *(v0 + 416);
    v7 = *(v0 + 424);
    v8 = *(v0 + 408);
    v9 = *(v0 + 352);
    v10 = *(v0 + 112);
    sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
    v11 = [objc_opt_self() predicateWithValue_];
    v64 = sub_25424E538();
    sub_25424D938();
    sub_25421A334(v8);
    sub_254148AB4(v10, v9, type metadata accessor for EncryptionKeyQuery);
    v63 = *(v7 + 16);
    v63(v5, v4, v6);
    v12 = sub_25424DA88();
    v13 = sub_25424E408();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 424);
    v16 = *(v0 + 432);
    v18 = *(v0 + 408);
    v17 = *(v0 + 416);
    v20 = *(v0 + 360);
    v19 = *(v0 + 368);
    v21 = *(v0 + 352);
    if (v14)
    {
      log = v12;
      v61 = *(v0 + 408);
      v22 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v65[0] = v58;
      *v22 = 136446466;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v54 = v13;
      v23 = sub_25424EA58();
      v56 = v20;
      v25 = v24;
      sub_254148DC4(v21, type metadata accessor for EncryptionKeyQuery);
      v26 = sub_2542203C4(v23, v25, v65);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      v27 = sub_25424EA58();
      v29 = v28;
      v30 = *(v15 + 8);
      v30(v16, v17);
      v31 = sub_2542203C4(v27, v29, v65);

      *(v22 + 14) = v31;
      _os_log_impl(&dword_254124000, log, v54, "[%{public}s] Beginning subquery %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v58, -1, -1);
      MEMORY[0x259C07330](v22, -1, -1);

      v32 = *(v19 + 8);
      v32(v61, v56);
    }

    else
    {

      v30 = *(v15 + 8);
      v30(v16, v17);
      sub_254148DC4(v21, type metadata accessor for EncryptionKeyQuery);
      v32 = *(v19 + 8);
      v32(v18, v20);
    }

    *(v0 + 472) = v30;
    *(v0 + 480) = v32;
    v48 = *(v0 + 440);
    v49 = *(v0 + 456);
    v33 = *(v0 + 416);
    v34 = *(v0 + 304);
    v35 = *(v0 + 312);
    v36 = *(v0 + 296);
    v62 = *(v0 + 256);
    v53 = *(v0 + 264);
    v55 = *(v0 + 232);
    v57 = *(v0 + 224);
    v59 = *(v0 + 248);
    v50 = *(v0 + 240);
    v51 = *(v0 + 216);
    v37 = *(v0 + 208);
    v52 = *(v0 + 200);
    v38 = *(v0 + 104);
    v39 = *(v0 + 112);
    v63(&v34[v36[7]], v39 + *(v35 + 24), v33);
    v63(&v34[v36[8]], v48, v33);
    v40 = (v39 + *(v35 + 32));
    v41 = *v40;
    LOBYTE(v40) = *(v40 + 8);
    *v34 = v38;
    *(v34 + 1) = 0;
    *(v34 + 2) = 0;
    *(v34 + 3) = v49;
    *(v34 + 4) = v64;
    *&v34[v36[9]] = 0;
    v42 = &v34[v36[10]];
    *v42 = 0;
    v42[8] = 1;
    v43 = &v34[v36[11]];
    *v43 = v41;
    v43[8] = v40;
    *&v34[v36[12]] = 0;
    v44 = v38;
    sub_25424D898();
    v45 = swift_task_alloc();
    *(v45 + 16) = v34;
    *(v45 + 24) = v50;
    sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
    (*(v37 + 104))(v51, *MEMORY[0x277D858A0], v52);
    sub_25424E278();

    (*(v55 + 8))(v50, v57);
    sub_25424E178();
    (*(v62 + 8))(v53, v59);
    *(v0 + 488) = MEMORY[0x277D84F90];
    v46 = swift_task_alloc();
    *(v0 + 496) = v46;
    *v46 = v0;
    v46[1] = sub_254145CBC;
    v47 = *(v0 + 272);

    return MEMORY[0x2822005A8](v0 + 24, 0, 0, v47, v0 + 32);
  }
}

uint64_t sub_254145B2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_254145CBC()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_254146FA8;
  }

  else
  {
    v2 = sub_254145DD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_254145DD0()
{
  v140 = v0;
  v1 = v0 + 24;
  v2 = *(v0 + 24);
  if (!v2)
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
LABEL_7:
    v25 = *(v0 + 112) + *(*(v0 + 312) + 28);
    if ((*(v25 + 8) & 1) != 0 || (v26 = *(v0 + 488), *v25 >= *(v26 + 16)))
    {
      v38 = *(v0 + 304);
      (*(v0 + 472))(*(v0 + 440), *(v0 + 416));
      sub_254148DC4(v38, type metadata accessor for CKQueryAsyncSequence);
      v39 = *(v0 + 488);
LABEL_41:
      **(v0 + 96) = v39;

      v89 = *(v0 + 8);
LABEL_53:

      return v89();
    }

    v27 = sub_2541A5378(*v25, v26);
    v1 = v28;
    v30 = v29;
    v32 = v31;
    if ((v31 & 1) == 0)
    {

LABEL_11:
      v33 = *(v0 + 472);
      v34 = *(v0 + 440);
      v35 = *(v0 + 416);
      sub_254168B50(v27, v1, v30, v32);
      v37 = v36;
      swift_unknownObjectRelease();
      v33(v34, v35);
LABEL_40:
      sub_254148DC4(*(v0 + 304), type metadata accessor for CKQueryAsyncSequence);

      v39 = v37;
      goto LABEL_41;
    }

    sub_25424EAD8();
    swift_unknownObjectRetain_n();

    v87 = swift_dynamicCastClass();
    if (!v87)
    {
      swift_unknownObjectRelease();
      v87 = MEMORY[0x277D84F90];
    }

    v88 = *(v87 + 16);

    if (!__OFSUB__(v32 >> 1, v30))
    {
      if (v88 == (v32 >> 1) - v30)
      {
        v37 = swift_dynamicCastClass();
        if (!v37)
        {
          swift_unknownObjectRelease();
          v37 = MEMORY[0x277D84F90];
        }

        (*(v0 + 472))(*(v0 + 440), *(v0 + 416));
        swift_unknownObjectRelease();
        goto LABEL_40;
      }

      goto LABEL_63;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v3 = *(v0 + 504);
  sub_25424E1E8();
  v4 = v3;
  if (v3)
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

    *(v0 + 40) = v3;
    v5 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
    if (swift_dynamicCast())
    {
      v6 = *(v0 + 400);
      v7 = *(v0 + 344);
      v9 = *(v0 + 136);
      v8 = *(v0 + 144);
      v11 = *(v0 + 120);
      v10 = *(v0 + 128);
      v12 = *(v0 + 112);

      (*(v10 + 32))(v9, v8, v11);
      sub_25421A334(v6);
      sub_254148AB4(v12, v7, type metadata accessor for EncryptionKeyQuery);
      v13 = sub_25424DA88();
      v14 = sub_25424E408();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 480);
      if (v15)
      {
        v137 = *(v0 + 400);
        v134 = *(v0 + 360);
        v17 = *(v0 + 344);
        v18 = *(v0 + 480);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v139[0] = v20;
        *v19 = 136446210;
        sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v21 = sub_25424EA58();
        v23 = v22;
        sub_254148DC4(v17, type metadata accessor for EncryptionKeyQuery);
        v24 = sub_2542203C4(v21, v23, v139);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_254124000, v13, v14, "[%{public}s] Canceled", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x259C07330](v20, -1, -1);
        MEMORY[0x259C07330](v19, -1, -1);

        v18(v137, v134);
      }

      else
      {
        v69 = *(v0 + 400);
        v70 = *(v0 + 360);
        v71 = *(v0 + 344);

        sub_254148DC4(v71, type metadata accessor for EncryptionKeyQuery);
        v16(v69, v70);
      }

      v72 = *(v0 + 472);
      v73 = *(v0 + 440);
      v74 = *(v0 + 416);
      v75 = *(v0 + 304);
      v76 = *(v0 + 128);
      v77 = *(v0 + 136);
      v78 = *(v0 + 120);
      sub_254148E24(&qword_27F5B90E0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      swift_allocError();
      (*(v76 + 16))(v79, v77, v78);
      swift_willThrow();
      (*(v76 + 8))(v77, v78);
      v72(v73, v74);
      sub_254148DC4(v75, type metadata accessor for CKQueryAsyncSequence);

LABEL_52:

      v89 = *(v0 + 8);
      goto LABEL_53;
    }

    *(v0 + 48) = v3;
    v44 = v3;
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v45 = *(v0 + 56);
      *(v0 + 64) = v45;
      sub_254148E24(&unk_27F5B8E40, type metadata accessor for CKError, &unk_254252978);
      sub_25424D358();
      if (*(v0 + 72) == 28)
      {
        v46 = *(v0 + 392);
        v47 = *(v0 + 336);
        v48 = *(v0 + 112);

        sub_25421A334(v46);
        sub_254148AB4(v48, v47, type metadata accessor for EncryptionKeyQuery);
        v49 = v45;
        v50 = sub_25424DA88();
        v51 = sub_25424E408();

        v52 = os_log_type_enabled(v50, v51);
        v53 = *(v0 + 480);
        if (v52)
        {
          v138 = *(v0 + 392);
          v135 = *(v0 + 360);
          v54 = *(v0 + 336);
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v139[0] = v130;
          *v55 = 136446466;
          sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v57 = sub_25424EA58();
          v132 = v53;
          v59 = v58;
          sub_254148DC4(v54, type metadata accessor for EncryptionKeyQuery);
          v60 = sub_2542203C4(v57, v59, v139);

          *(v55 + 4) = v60;
          *(v55 + 12) = 2114;
          v61 = v49;
          v62 = _swift_stdlib_bridgeErrorToNSError();
          *(v55 + 14) = v62;
          *v56 = v62;
          v63 = "[%{public}s] Found user-deleted zone: %{public}@";
LABEL_45:
          _os_log_impl(&dword_254124000, v50, v51, v63, v55, 0x16u);
          sub_254132E5C(v56, &unk_27F5BBED0, &qword_254253F80);
          MEMORY[0x259C07330](v56, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v130);
          MEMORY[0x259C07330](v130, -1, -1);
          MEMORY[0x259C07330](v55, -1, -1);

          v132(v138, v135);
LABEL_58:

          goto LABEL_7;
        }

        v100 = *(v0 + 392);
        v101 = *(v0 + 360);
        v102 = *(v0 + 336);
        goto LABEL_57;
      }

      *(v0 + 80) = v45;
      sub_25424D358();
      if (*(v0 + 88) == 26)
      {
        v90 = *(v0 + 384);
        v91 = *(v0 + 328);
        v92 = *(v0 + 112);

        sub_25421A334(v90);
        sub_254148AB4(v92, v91, type metadata accessor for EncryptionKeyQuery);
        v49 = v45;
        v50 = sub_25424DA88();
        v51 = sub_25424E408();

        v93 = os_log_type_enabled(v50, v51);
        v53 = *(v0 + 480);
        if (v93)
        {
          v138 = *(v0 + 384);
          v135 = *(v0 + 360);
          v94 = *(v0 + 328);
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v139[0] = v130;
          *v55 = 136446466;
          sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v95 = sub_25424EA58();
          v132 = v53;
          v97 = v96;
          sub_254148DC4(v94, type metadata accessor for EncryptionKeyQuery);
          v98 = sub_2542203C4(v95, v97, v139);

          *(v55 + 4) = v98;
          *(v55 + 12) = 2114;
          v61 = v49;
          v99 = _swift_stdlib_bridgeErrorToNSError();
          *(v55 + 14) = v99;
          *v56 = v99;
          v63 = "[%{public}s] Did not find zone: %{public}@";
          goto LABEL_45;
        }

        v100 = *(v0 + 384);
        v101 = *(v0 + 360);
        v102 = *(v0 + 328);
LABEL_57:

        sub_254148DC4(v102, type metadata accessor for EncryptionKeyQuery);
        v53(v100, v101);
        goto LABEL_58;
      }
    }

    v103 = *(v0 + 376);
    v104 = *(v0 + 320);
    v105 = *(v0 + 112);

    sub_25421A334(v103);
    sub_254148AB4(v105, v104, type metadata accessor for EncryptionKeyQuery);
    v106 = v4;
    v107 = sub_25424DA88();
    v108 = sub_25424E428();

    v109 = os_log_type_enabled(v107, v108);
    v110 = *(v0 + 480);
    if (v109)
    {
      v133 = *(v0 + 360);
      v136 = *(v0 + 376);
      v111 = *(v0 + 320);
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v131 = v110;
      v114 = v4;
      v115 = swift_slowAlloc();
      v139[0] = v115;
      *v112 = 136446466;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v116 = sub_25424EA58();
      v118 = v117;
      sub_254148DC4(v111, type metadata accessor for EncryptionKeyQuery);
      v119 = sub_2542203C4(v116, v118, v139);

      *(v112 + 4) = v119;
      *(v112 + 12) = 2114;
      v120 = v114;
      v121 = _swift_stdlib_bridgeErrorToNSError();
      *(v112 + 14) = v121;
      *v113 = v121;
      _os_log_impl(&dword_254124000, v107, v108, "[%{public}s] Failed: %{public}@", v112, 0x16u);
      sub_254132E5C(v113, &unk_27F5BBED0, &qword_254253F80);
      MEMORY[0x259C07330](v113, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v115);
      MEMORY[0x259C07330](v115, -1, -1);
      MEMORY[0x259C07330](v112, -1, -1);

      v131(v136, v133);
    }

    else
    {
      v122 = *(v0 + 376);
      v123 = *(v0 + 360);
      v124 = *(v0 + 320);

      sub_254148DC4(v124, type metadata accessor for EncryptionKeyQuery);
      v110(v122, v123);
    }

    v125 = *(v0 + 472);
    v126 = *(v0 + 440);
    v127 = *(v0 + 416);
    v128 = *(v0 + 304);
    swift_willThrow();
    v125(v126, v127);
    sub_254148DC4(v128, type metadata accessor for CKQueryAsyncSequence);
    goto LABEL_52;
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 176);
  v42 = *(v0 + 160);
  sub_254143458(v2, v42);
  if ((*(v41 + 48))(v42, 1, v40) != 1)
  {
    v64 = *(v0 + 488);
    v66 = *(v0 + 184);
    v65 = *(v0 + 192);
    sub_254148E6C(*(v0 + 160), v65, type metadata accessor for EncryptionKeyRecord);
    sub_254148AB4(v65, v66, type metadata accessor for EncryptionKeyRecord);
    v67 = swift_task_alloc();
    *(v67 + 16) = v65;
    v32 = sub_254147EEC(sub_254148ED4, v67, v64);
    v27 = v68;

    v30 = *(v0 + 488);
    if (v27)
    {
      v32 = *(v30 + 16);
      goto LABEL_25;
    }

    if (*(v30 + 16) < v32)
    {
      __break(1u);
    }

    else if ((v32 & 0x8000000000000000) == 0)
    {
LABEL_25:
      sub_254148E6C(*(v0 + 184), *(v0 + 152), type metadata accessor for EncryptionKeyRecord);
      v80 = *(v30 + 16);
      if (v80 >= v32)
      {
        v81 = *(v0 + 488);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 16) = v81;
        v83 = *(v0 + 488);
        if (!isUniquelyReferenced_nonNull_native || v80 >= v83[3] >> 1)
        {
          v83 = sub_2541B0CEC(isUniquelyReferenced_nonNull_native, v80 + 1, 1, *(v0 + 488));
          *(v0 + 16) = v83;
        }

        v84 = *(v0 + 192);
        sub_2541D0890(v32, v32, 1, *(v0 + 152));

        sub_254148DC4(v84, type metadata accessor for EncryptionKeyRecord);
        *(v0 + 488) = v83;
        goto LABEL_30;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_61;
  }

  v43 = *(v0 + 160);

  sub_254132E5C(v43, &qword_27F5B8E08, &qword_254253F60);
LABEL_30:
  v85 = swift_task_alloc();
  *(v0 + 496) = v85;
  *v85 = v0;
  v85[1] = sub_254145CBC;
  v86 = *(v0 + 272);

  return MEMORY[0x2822005A8](v0 + 24, 0, 0, v86, v0 + 32);
}

uint64_t sub_254146FA8()
{
  v122 = v0;
  (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
  v1 = *(v0 + 32);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 400);
    v4 = *(v0 + 344);
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    v9 = *(v0 + 112);

    (*(v8 + 32))(v6, v5, v7);
    sub_25421A334(v3);
    sub_254148AB4(v9, v4, type metadata accessor for EncryptionKeyQuery);
    v10 = sub_25424DA88();
    v11 = sub_25424E408();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 480);
    if (v12)
    {
      v119 = *(v0 + 400);
      v116 = *(v0 + 360);
      v14 = *(v0 + 344);
      v15 = *(v0 + 480);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v121[0] = v17;
      *v16 = 136446210;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_25424EA58();
      v20 = v19;
      sub_254148DC4(v14, type metadata accessor for EncryptionKeyQuery);
      v21 = sub_2542203C4(v18, v20, v121);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_254124000, v10, v11, "[%{public}s] Canceled", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x259C07330](v17, -1, -1);
      MEMORY[0x259C07330](v16, -1, -1);

      v15(v119, v116);
    }

    else
    {
      v43 = *(v0 + 400);
      v44 = *(v0 + 360);
      v45 = *(v0 + 344);

      sub_254148DC4(v45, type metadata accessor for EncryptionKeyQuery);
      v13(v43, v44);
    }

    v46 = *(v0 + 472);
    v47 = *(v0 + 440);
    v48 = *(v0 + 416);
    v49 = *(v0 + 304);
    v50 = *(v0 + 128);
    v51 = *(v0 + 136);
    v52 = *(v0 + 120);
    sub_254148E24(&qword_27F5B90E0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    (*(v50 + 16))(v53, v51, v52);
    swift_willThrow();
    (*(v50 + 8))(v51, v52);
    v46(v47, v48);
    sub_254148DC4(v49, type metadata accessor for CKQueryAsyncSequence);

LABEL_20:

    v93 = *(v0 + 8);
    goto LABEL_21;
  }

  *(v0 + 48) = v1;
  v22 = v1;
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  v23 = *(v0 + 56);
  *(v0 + 64) = v23;
  sub_254148E24(&unk_27F5B8E40, type metadata accessor for CKError, &unk_254252978);
  sub_25424D358();
  if (*(v0 + 72) != 28)
  {
    *(v0 + 80) = v23;
    sub_25424D358();
    if (*(v0 + 88) == 26)
    {
      v54 = *(v0 + 384);
      v55 = *(v0 + 328);
      v56 = *(v0 + 112);

      sub_25421A334(v54);
      sub_254148AB4(v56, v55, type metadata accessor for EncryptionKeyQuery);
      v27 = v23;
      v28 = sub_25424DA88();
      v29 = sub_25424E408();

      v57 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 480);
      if (v57)
      {
        v120 = *(v0 + 384);
        v117 = *(v0 + 360);
        v58 = *(v0 + 328);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v114 = v31;
        v35 = swift_slowAlloc();
        v121[0] = v35;
        *v33 = 136446466;
        sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v59 = sub_25424EA58();
        v61 = v60;
        sub_254148DC4(v58, type metadata accessor for EncryptionKeyQuery);
        v62 = sub_2542203C4(v59, v61, v121);

        *(v33 + 4) = v62;
        *(v33 + 12) = 2114;
        v40 = v27;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v63;
        *v34 = v63;
        v42 = "[%{public}s] Did not find zone: %{public}@";
        goto LABEL_13;
      }

      v64 = *(v0 + 384);
      v65 = *(v0 + 360);
      v66 = *(v0 + 328);
LABEL_25:

      sub_254148DC4(v66, type metadata accessor for EncryptionKeyQuery);
      v31(v64, v65);
      goto LABEL_26;
    }

LABEL_16:
    v67 = *(v0 + 376);
    v68 = *(v0 + 320);
    v69 = *(v0 + 112);

    sub_25421A334(v67);
    sub_254148AB4(v69, v68, type metadata accessor for EncryptionKeyQuery);
    v70 = v1;
    v71 = sub_25424DA88();
    v72 = sub_25424E428();

    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v0 + 480);
    if (v73)
    {
      v115 = *(v0 + 360);
      v118 = *(v0 + 376);
      v75 = *(v0 + 320);
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v113 = v74;
      v78 = v1;
      v79 = swift_slowAlloc();
      v121[0] = v79;
      *v76 = 136446466;
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v80 = sub_25424EA58();
      v82 = v81;
      sub_254148DC4(v75, type metadata accessor for EncryptionKeyQuery);
      v83 = sub_2542203C4(v80, v82, v121);

      *(v76 + 4) = v83;
      *(v76 + 12) = 2114;
      v84 = v78;
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 14) = v85;
      *v77 = v85;
      _os_log_impl(&dword_254124000, v71, v72, "[%{public}s] Failed: %{public}@", v76, 0x16u);
      sub_254132E5C(v77, &unk_27F5BBED0, &qword_254253F80);
      MEMORY[0x259C07330](v77, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v79);
      MEMORY[0x259C07330](v79, -1, -1);
      MEMORY[0x259C07330](v76, -1, -1);

      v113(v118, v115);
    }

    else
    {
      v86 = *(v0 + 376);
      v87 = *(v0 + 360);
      v88 = *(v0 + 320);

      sub_254148DC4(v88, type metadata accessor for EncryptionKeyQuery);
      v74(v86, v87);
    }

    v89 = *(v0 + 472);
    v90 = *(v0 + 440);
    v91 = *(v0 + 416);
    v92 = *(v0 + 304);
    swift_willThrow();
    v89(v90, v91);
    sub_254148DC4(v92, type metadata accessor for CKQueryAsyncSequence);
    goto LABEL_20;
  }

  v24 = *(v0 + 392);
  v25 = *(v0 + 336);
  v26 = *(v0 + 112);

  sub_25421A334(v24);
  sub_254148AB4(v26, v25, type metadata accessor for EncryptionKeyQuery);
  v27 = v23;
  v28 = sub_25424DA88();
  v29 = sub_25424E408();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 480);
  if (!v30)
  {
    v64 = *(v0 + 392);
    v65 = *(v0 + 360);
    v66 = *(v0 + 336);
    goto LABEL_25;
  }

  v120 = *(v0 + 392);
  v117 = *(v0 + 360);
  v32 = *(v0 + 336);
  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v114 = v31;
  v35 = swift_slowAlloc();
  v121[0] = v35;
  *v33 = 136446466;
  sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v36 = sub_25424EA58();
  v38 = v37;
  sub_254148DC4(v32, type metadata accessor for EncryptionKeyQuery);
  v39 = sub_2542203C4(v36, v38, v121);

  *(v33 + 4) = v39;
  *(v33 + 12) = 2114;
  v40 = v27;
  v41 = _swift_stdlib_bridgeErrorToNSError();
  *(v33 + 14) = v41;
  *v34 = v41;
  v42 = "[%{public}s] Found user-deleted zone: %{public}@";
LABEL_13:
  _os_log_impl(&dword_254124000, v28, v29, v42, v33, 0x16u);
  sub_254132E5C(v34, &unk_27F5BBED0, &qword_254253F80);
  MEMORY[0x259C07330](v34, -1, -1);
  __swift_destroy_boxed_opaque_existential_1(v35);
  MEMORY[0x259C07330](v35, -1, -1);
  MEMORY[0x259C07330](v33, -1, -1);

  v114(v120, v117);
LABEL_26:

  v95 = *(v0 + 112) + *(*(v0 + 312) + 28);
  if ((*(v95 + 8) & 1) == 0)
  {
    v96 = *(v0 + 488);
    if (*v95 < *(v96 + 16))
    {
      v97 = sub_2541A5378(*v95, v96);
      v99 = v98;
      v101 = v100;
      v103 = v102;
      if (v102)
      {
        sub_25424EAD8();
        swift_unknownObjectRetain_n();

        v111 = swift_dynamicCastClass();
        if (!v111)
        {
          swift_unknownObjectRelease();
          v111 = MEMORY[0x277D84F90];
        }

        v112 = *(v111 + 16);

        if (__OFSUB__(v103 >> 1, v101))
        {
          __break(1u);
        }

        else if (v112 == (v103 >> 1) - v101)
        {
          v108 = swift_dynamicCastClass();
          if (!v108)
          {
            swift_unknownObjectRelease();
            v108 = MEMORY[0x277D84F90];
          }

          (*(v0 + 472))(*(v0 + 440), *(v0 + 416));
          swift_unknownObjectRelease();
          goto LABEL_39;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v104 = *(v0 + 472);
      v105 = *(v0 + 440);
      v106 = *(v0 + 416);
      sub_254168B50(v97, v99, v101, v103);
      v108 = v107;
      swift_unknownObjectRelease();
      v104(v105, v106);
LABEL_39:
      sub_254148DC4(*(v0 + 304), type metadata accessor for CKQueryAsyncSequence);

      v110 = v108;
      goto LABEL_40;
    }
  }

  v109 = *(v0 + 304);
  (*(v0 + 472))(*(v0 + 440), *(v0 + 416));
  sub_254148DC4(v109, type metadata accessor for CKQueryAsyncSequence);
  v110 = *(v0 + 488);
LABEL_40:
  **(v0 + 96) = v110;

  v93 = *(v0 + 8);
LABEL_21:

  return v93();
}

uint64_t sub_254147EEC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for EncryptionKeyRecord(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

char *sub_254147FD8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254148278(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_254147FF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25414838C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_254148040(uint64_t a1)
{
  sub_25424D948();
  if (v1 <= 0x3F)
  {
    sub_25414810C();
    if (v2 <= 0x3F)
    {
      sub_25414815C(319);
      if (v3 <= 0x3F)
      {
        sub_2541481B4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25414810C()
{
  if (!qword_27F5B8D90)
  {
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5B8D90);
    }
  }
}

void sub_25414815C(uint64_t a1)
{
  if (!qword_27F5B8D98)
  {
    type metadata accessor for QualityOfService(255);
    v1 = sub_25424E598();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5B8D98);
    }
  }
}

unint64_t sub_2541481B4()
{
  result = qword_27F5B8DA0;
  if (!qword_27F5B8DA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F5B8DA0);
  }

  return result;
}

void *sub_254148218(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2541486AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254148238(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25414889C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254148258(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2541489A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254148278(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DA8, &qword_254253EE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25414838C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD8, &unk_254253F10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8DE0, &qword_2542545E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2541484D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DC0, &qword_254253EF8);
  v10 = *(type metadata accessor for EventQuery.FetchedRecordInfo(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for EventQuery.FetchedRecordInfo(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2541486AC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DC8, &unk_254253F00);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25414889C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8DB0, &qword_254253EE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2541489A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_254148AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_254148B1C(void *a1, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
  }
}

uint64_t sub_254148B74(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for EncryptionKeyQuery(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_25424D8B8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25412F818;

  return sub_2541441C0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_254148CC4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F724;

  return sub_254144C18(a1, a2, v6);
}

uint64_t sub_254148D7C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_254148DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_254148E24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_254148E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_254148F78(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8F00, &unk_25425B800);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25412F1C4();
  sub_25424EC68();
  if (!v1)
  {
    v7[15] = 1;
    sub_25414AD7C();
    sub_25424E978();
    (*(v4 + 8))(v6, v3);
  }
}

void sub_254149240(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a4@<X8>)
{
  v12[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8F00, &unk_25425B800);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25412F1C4();
  v11 = sub_25424EC68();
  if (!v4)
  {
    v13 = 1;
    a2(v11);
    sub_25424E978();
    (*(v8 + 8))(v10, v7);
  }
}

HomeKitEvents::LockEvent::State_optional __swiftcall LockEvent.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t LockEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LockEvent(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for LockEvent(uint64_t a1)
{
  result = qword_27F5B8EE8;
  if (!qword_27F5B8EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LockEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LockEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_2541495AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_25424D948();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t LockEvent.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));

  return v1;
}

uint64_t LockEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LockEvent.accessoryName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));

  return v1;
}

uint64_t LockEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

uint64_t sub_254149770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static LockEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for LockEvent(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t LockEvent.hash(into:)(uint64_t a1)
{
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_25424D8B8();
  sub_25414A784(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v9 = type metadata accessor for EventBase(0);
  sub_25414A784(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254254298[*(v1 + *(v9 + 24))]);
  v10 = type metadata accessor for AccessoryEventBase(0);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DC28();
  sub_25424DD88();
  sub_254149770(v1 + *(v10 + 36), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v5, v2);
  }

  v11 = type metadata accessor for LockEvent(0);
  return MEMORY[0x259C06AA0](*(v1 + *(v11 + 20)));
}

uint64_t LockEvent.hashValue.getter()
{
  sub_25424EBD8();
  LockEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_254149B60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_254149BDC()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));

  return v1;
}

uint64_t sub_254149C34()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));

  return v1;
}

uint64_t sub_254149C74@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

uint64_t sub_254149CE0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_25424D948();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_254149D60()
{
  sub_25424EBD8();
  LockEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_254149DA4(uint64_t a1)
{
  sub_25424EBD8();
  LockEvent.hash(into:)(v2);
  return sub_25424EC28();
}

uint64_t LockEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v30 = *a10;
  v17 = sub_25424D8B8();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  v18 = type metadata accessor for EventBase(0);
  v19 = v18[5];
  v20 = sub_25424D948();
  v21 = *(*(v20 - 8) + 32);
  v21(a9 + v19, a2, v20);
  *(a9 + v18[6]) = 0;
  v22 = (a9 + v18[7]);
  *v22 = 15;
  v23 = type metadata accessor for AccessoryEventBase(0);
  v22[1] = 0;
  v22[2] = 0;
  v21(a9 + v23[5], a3, v20);
  v24 = (a9 + v23[6]);
  *v24 = a4;
  v24[1] = a5;
  v21(a9 + v23[7], a6, v20);
  v25 = (a9 + v23[8]);
  *v25 = a7;
  v25[1] = a8;
  sub_25414A348(a11, a9 + v23[9]);
  result = type metadata accessor for LockEvent(0);
  *(a9 + *(result + 20)) = v30;
  return result;
}

uint64_t LockEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v11);
  sub_254231924(v11, v7);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_254149240(a1, sub_25414A84C, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v9 = v11[0];
  sub_25414A414(v7, a2);
  result = type metadata accessor for LockEvent(0);
  *(a2 + *(result + 20)) = v9;
  return result;
}

uint64_t LockEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  result = sub_254231F94(a1);
  if (!v2)
  {
    v9[15] = *(v1 + *(type metadata accessor for LockEvent(0) + 20));
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v9[14] = 1;
    sub_25414A478();
    sub_25424EA18();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_25414A348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25414A3B8(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryEventBaseLegacy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25414A414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryEventBaseLegacy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25414A478()
{
  result = qword_27F5B8E68;
  if (!qword_27F5B8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8E68);
  }

  return result;
}

unint64_t sub_25414A4D0()
{
  result = qword_27F5B8E70;
  if (!qword_27F5B8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8E70);
  }

  return result;
}

unint64_t sub_25414A528()
{
  result = qword_27F5B8E78;
  if (!qword_27F5B8E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B8E80, &qword_254254028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8E78);
  }

  return result;
}

unint64_t sub_25414A590()
{
  result = qword_27F5B8E88;
  if (!qword_27F5B8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8E88);
  }

  return result;
}

uint64_t sub_25414A5E4(void *a1)
{
  a1[1] = sub_25414A784(&qword_27F5B8E98, type metadata accessor for LockEvent, &protocol conformance descriptor for LockEvent);
  a1[2] = sub_25414A784(&qword_27F5B8EA0, type metadata accessor for LockEvent, &protocol conformance descriptor for LockEvent);
  result = sub_25414A784(&qword_27F5B8EA8, type metadata accessor for LockEvent, &protocol conformance descriptor for LockEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25414A6D8(void *a1)
{
  a1[1] = sub_25414A784(&qword_27F5B8EB8, type metadata accessor for LockEvent, &protocol conformance descriptor for LockEvent);
  a1[2] = sub_25414A784(&qword_27F5B8EC0, type metadata accessor for LockEvent, &unk_254254158);
  result = sub_25414A784(&qword_27F5B8EC8, type metadata accessor for LockEvent, &protocol conformance descriptor for LockEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25414A784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25414A814(void *a1)
{
  a1[1] = sub_25414A84C();
  a1[2] = sub_25414A478();
  result = sub_25414A8A0();
  a1[3] = result;
  return result;
}

unint64_t sub_25414A84C()
{
  result = qword_27F5B8ED0;
  if (!qword_27F5B8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8ED0);
  }

  return result;
}

unint64_t sub_25414A8A0()
{
  result = qword_27F5B8ED8;
  if (!qword_27F5B8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8ED8);
  }

  return result;
}

unint64_t sub_25414A8F4(uint64_t a1)
{
  result = sub_25414A91C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25414A91C()
{
  result = qword_27F5B8EE0;
  if (!qword_27F5B8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8EE0);
  }

  return result;
}

unint64_t sub_25414A970(uint64_t a1)
{
  result = sub_25414A590();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25414A9C0(uint64_t a1)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LockEvent.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LockEvent.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25414AB84()
{
  result = qword_27F5B8EF8;
  if (!qword_27F5B8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8EF8);
  }

  return result;
}

unint64_t sub_25414ABD8()
{
  result = qword_27F5B8F08;
  if (!qword_27F5B8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8F08);
  }

  return result;
}

unint64_t sub_25414AC2C()
{
  result = qword_27F5B8F10;
  if (!qword_27F5B8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8F10);
  }

  return result;
}

unint64_t sub_25414AC80()
{
  result = qword_27F5B8F18;
  if (!qword_27F5B8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8F18);
  }

  return result;
}

unint64_t sub_25414ACD4()
{
  result = qword_27F5B8F20;
  if (!qword_27F5B8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8F20);
  }

  return result;
}

unint64_t sub_25414AD28()
{
  result = qword_27F5B8F28;
  if (!qword_27F5B8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8F28);
  }

  return result;
}

unint64_t sub_25414AD7C()
{
  result = qword_27F5B8F30;
  if (!qword_27F5B8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8F30);
  }

  return result;
}

unint64_t sub_25414ADD0()
{
  result = qword_27F5B8F38;
  if (!qword_27F5B8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8F38);
  }

  return result;
}

void sub_25414AE28(void *a1)
{
  *(v1 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_logEventDispatcher) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FD0, &qword_254254308);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2542542D0;
  *(v3 + 32) = type metadata accessor for CloudKitQueryLogEvent(0);
  *(v3 + 40) = type metadata accessor for EventsAsyncSequenceLogEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FD8, &qword_254254310);
  v4 = sub_25424DF88();

  [a1 addObserver:v1 forEventClasses:v4];
}

void sub_25414AFD8(char *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_pendingQueryLogEvents);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  if (*(v4 + 16))
  {
    v5 = sub_2542209D4(&a1[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier]);
    if (v6)
    {
      v29 = *(*(v4 + 56) + 8 * v5);
      os_unfair_lock_unlock((v3 + 24));
      if (!v29)
      {
        return;
      }

      v7 = [a1 error];
      if (v7)
      {

        v8 = v29;
        v9 = [a1 error];
        if (v9)
        {
          v10 = v9;
          v11 = sub_25424D398();
        }

        else
        {
          v11 = 0;
        }

        [v8 setError_];
      }

      v12 = *&a1[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords];
      v13 = *&v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numFetchedCKRecords];
      v14 = __OFADD__(v13, v12);
      v15 = v13 + v12;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        *&v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numFetchedCKRecords] = v15;
        v16 = *&a1[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize];
        v17 = *&v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_totalCKRecordSize];
        v14 = __OFADD__(v17, v16);
        v18 = v17 + v16;
        if (!v14)
        {
          *&v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_totalCKRecordSize] = v18;
          [a1 startTime];
          v19 = v29;
          v21 = &v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionEndTime];
          *v21 = v20;
          *(v21 + 8) = 0;
          LODWORD(v21) = a1[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state];
          if (v21 > 4)
          {
            if (a1[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] > 6u)
            {
              if (v21 != 7)
              {
                if (v21 == 8)
                {
                  v22 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultProcessingEncounteredError;
                }

                else
                {
                  v22 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryEncounteredError;
                }

                goto LABEL_39;
              }

              goto LABEL_33;
            }

LABEL_28:
            if (v21 == 5)
            {
              v22 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryDroppedEvents;
            }

            else
            {
              v22 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryTerminatedStream;
            }

            goto LABEL_39;
          }

          if (a1[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] > 1u)
          {
            if (v21 != 2)
            {
              if (v21 == 3)
              {
                v22 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryCancelled;
              }

              else
              {
                v22 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryReachedLimit;
              }

              goto LABEL_39;
            }

            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueriesSucceeded;
            v27 = *&v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueriesSucceeded];
            v14 = __OFADD__(v27, 1);
            v26 = v27 + 1;
            if (!v14)
            {
LABEL_37:
              *&v19[v21] = v26;
LABEL_40:

              return;
            }

            __break(1u);
LABEL_33:
            v22 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultNotHandled;
LABEL_39:
            v19[*v22] = 1;
            goto LABEL_40;
          }

          if (!a1[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state])
          {
            [a1 startTime];
            v19 = v29;
            v23 = &v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionStartTime];
            *v23 = v24;
            v23[8] = 0;
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueries;
            v25 = *&v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueries];
            v14 = __OFADD__(v25, 1);
            v26 = v25 + 1;
            if (!v14)
            {
              goto LABEL_37;
            }

            __break(1u);
            goto LABEL_28;
          }

          v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueries;
          v28 = *&v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueries];
          v14 = __OFADD__(v28, 1);
          v26 = v28 + 1;
          if (!v14)
          {
            goto LABEL_37;
          }

LABEL_45:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_45;
    }
  }

  os_unfair_lock_unlock((v3 + 24));
}

void sub_25414B2E8(char *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_pendingQueryLogEvents);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  if (*(v5 + 16) && (v6 = sub_2542209D4(&a1[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier]), (v7 & 1) != 0))
  {
    v34 = *(*(v5 + 56) + 8 * v6);
    os_unfair_lock_unlock((v4 + 24));
    if (v34)
    {
      v8 = *&a1[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents];
      v9 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEmittedEvents];
      v10 = __OFADD__(v9, v8);
      v11 = v9 + v8;
      if (v10)
      {
        __break(1u);
LABEL_51:
        __break(1u);
      }

      else
      {
        *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEmittedEvents] = v11;
        v12 = [a1 error];
        if (v12)
        {

          v13 = v34;
          v14 = [a1 error];
          if (v14)
          {
            v15 = v14;
            v16 = sub_25424D398();
          }

          else
          {
            v16 = 0;
          }

          [v13 setError_];
        }

        v17 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_succeeded;
        v18 = v34;
        switch(a1[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state])
        {
          case 1:
            goto LABEL_33;
          case 2:
            goto LABEL_25;
          case 3:
            goto LABEL_38;
          case 4:
            goto LABEL_42;
          case 5:
            v30 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingTerminatedStream;
            goto LABEL_46;
          case 6:
            v30 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingResultNotHandled;
            goto LABEL_46;
          case 7:
            goto LABEL_29;
          case 8:
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords;
            v33 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords];
            v10 = __OFADD__(v33, 1);
            v23 = v33 + 1;
            if (v10)
            {
              goto LABEL_51;
            }

            goto LABEL_44;
          case 9:
            goto LABEL_22;
          case 10:
            v27 = *&a1[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords];
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numProcessedEvents;
            v28 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numProcessedEvents];
            v10 = __OFADD__(v28, v27);
            v23 = v28 + v27;
            if (!v10)
            {
              goto LABEL_44;
            }

            __break(1u);
LABEL_29:
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredExpiredRecords;
            v29 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredExpiredRecords];
            v10 = __OFADD__(v29, 1);
            v23 = v29 + 1;
            if (!v10)
            {
              goto LABEL_44;
            }

            __break(1u);
LABEL_32:
            v17 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingEncounteredError;
            goto LABEL_33;
          case 11:
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords;
            v32 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords];
            v10 = __OFADD__(v32, 1);
            v23 = v32 + 1;
            if (!v10)
            {
              goto LABEL_44;
            }

            __break(1u);
LABEL_42:
            v30 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingDroppedEvents;
            goto LABEL_46;
          case 12:
          case 17:
            goto LABEL_47;
          case 13:
            goto LABEL_19;
          case 14:
            goto LABEL_32;
          case 15:
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords;
            v22 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords];
            v10 = __OFADD__(v22, 1);
            v23 = v22 + 1;
            if (!v10)
            {
              goto LABEL_44;
            }

            __break(1u);
LABEL_19:
            v24 = *&a1[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents];
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEventsSavedToCache;
            v25 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEventsSavedToCache];
            v10 = __OFADD__(v25, v24);
            v23 = v25 + v24;
            if (!v10)
            {
              goto LABEL_44;
            }

            __break(1u);
LABEL_22:
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNonUUIDNameRecords;
            v26 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNonUUIDNameRecords];
            v10 = __OFADD__(v26, 1);
            v23 = v26 + 1;
            if (v10)
            {
              __break(1u);
LABEL_25:
              v17 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_cancelled;
LABEL_33:
              v34[*v17] = 1;
              [*(v2 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_logSubmitter) submitLogEvent_];
              os_unfair_lock_lock((v4 + 24));
              sub_25414B69C((v4 + 16), a1);
              os_unfair_lock_unlock((v4 + 24));
              v18 = v35;
            }

            else
            {
LABEL_44:
              *&v34[v21] = v23;
            }

LABEL_47:

            break;
          case 16:
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredExpiredRecords;
            v31 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredExpiredRecords];
            v10 = __OFADD__(v31, 1);
            v23 = v31 + 1;
            if (!v10)
            {
              goto LABEL_44;
            }

            __break(1u);
LABEL_38:
            v30 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingReachedLimit;
LABEL_46:
            v34[*v30] = 1;
            goto LABEL_47;
          default:
            [a1 startTime];
            v18 = v34;
            v19 = &v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartTime];
            *v19 = v20;
            v19[8] = 0;
            goto LABEL_47;
        }
      }
    }
  }

  else
  {

    os_unfair_lock_unlock((v4 + 24));
  }
}

unint64_t sub_25414B69C(uint64_t *a1, uint64_t a2)
{
  result = sub_2542209D4(a2 + OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier);
  if (v4)
  {
    v5 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    v10 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_254222CC4();
      v7 = v10;
    }

    v8 = *(v7 + 48);
    v9 = sub_25424D948();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);

    result = sub_25414BB1C(v5, v7);
    *a1 = v7;
  }

  return result;
}

id sub_25414B7A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueryMetricsObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25414B868(int64_t a1, uint64_t a2)
{
  v4 = sub_25424E848();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_25424E608();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_25424DC18();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25414BB1C(int64_t a1, uint64_t a2)
{
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_25424E608();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_25414BDD4();
      v21 = sub_25424DC18();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25414BDD4()
{
  result = qword_27F5B89A8;
  if (!qword_27F5B89A8)
  {
    sub_25424D948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B89A8);
  }

  return result;
}

id sub_25414BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  (*(v10 + 32))(&v19 - v14);
  v16 = objc_allocWithZone(type metadata accessor for QueryMetricsObserver());
  (*(v10 + 16))(v13, v15, a4);
  v17 = sub_25414BF88(v13, a2, v16, a4, a5, a6);
  (*(v10 + 8))(v15, a4);
  return v17;
}

id sub_25414BF88(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[3] = a4;
  v16[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v11 = OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_pendingQueryLogEvents;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5B8FE0, &qword_254254318);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = MEMORY[0x277D84F98];
  *&a3[v11] = v12;
  *&a3[OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_logEventDispatcher] = 0;
  sub_254140708(v16, &a3[OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_features]);
  *&a3[OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_logSubmitter] = a2;
  v15.receiver = a3;
  v15.super_class = type metadata accessor for QueryMetricsObserver();
  v13 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t static HMVCommands.createFakeEvents(date:homeIdentifier:count:scope:uploadOnly:saveOnly:skipZoneCreation:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char a5, char a6, char a7)
{
  *(v7 + 66) = a7;
  *(v7 + 65) = a6;
  *(v7 + 64) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 16) = a1;
  *(v7 + 67) = *a4;
  return MEMORY[0x2822009F8](sub_25414C0C8, 0, 0);
}

uint64_t sub_25414C0C8()
{
  v1 = *(v0 + 67);
  v2 = *(v0 + 66);
  v3 = *(v0 + 65);
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *(v6 + 16) = *(v0 + 16);
  *(v6 + 32) = v5;
  *(v6 + 40) = v1;
  *(v6 + 41) = v4;
  *(v6 + 42) = v3;
  *(v6 + 43) = v2;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_25414C1D4;

  return (sub_25412FDA0)();
}

uint64_t sub_25414C1D4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_25414C2F0;
  }

  else
  {

    v2 = sub_25412FA2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25414C2F0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_25414C354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, char a9)
{
  v14 = sub_25424D818();
  v15 = sub_25424D8E8();
  aBlock[4] = sub_25414C6C4;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2541ED26C;
  aBlock[3] = &block_descriptor_1;
  v16 = _Block_copy(aBlock);

  LOBYTE(v17) = a9;
  [a1 hmvutilCreateFakeEventsWithDate:v14 homeIdentifier:v15 count:a5 scope:(a6 & 1u) + 1 uploadOnly:a7 & 1 saveOnly:a8 & 1 skipZoneCreation:v17 reply:v16];

  _Block_release(v16);
}

uint64_t sub_25414C4CC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_25412F60C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_254254328;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_25412F540;
    v15[6] = 0;

    v11 = &unk_254252CB0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25414C6E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25424D8B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = type metadata accessor for EventQuery(0);
  MEMORY[0x28223BE20](v11 - 8);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[6];
  if (v13 < 0)
  {
    goto LABEL_5;
  }

  v26 = a2;
  v14 = a1[5];
  v15 = a1[7];
  v16 = v14;
  if ([v16 scope] == 2)
  {
    sub_254148B1C(v14, v13, v15);
    a2 = v26;
    goto LABEL_5;
  }

  v17 = [v16 scope];
  sub_254148B1C(v14, v13, v15);
  a2 = v26;
  if (v17 == 3)
  {
LABEL_5:
    v18 = type metadata accessor for EventQuery.Configuration(0);
    sub_25424D1F8();
    sub_25424D578();
    v20 = v19;
    v21 = *(v5 + 8);
    v21(v10, v4);
    if (v20 < 0.0)
    {
      __break(1u);
    }

    else
    {
      sub_25424D1D8();
      sub_25424D1F8();
      sub_25417BFB4(&qword_27F5B9210, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v22 = sub_25424DC78();
      v21(v8, v4);
      v21(v10, v4);
      if (v22)
      {
        v23 = *(a1 + *(v18 + 36));
        if (!v23 || *(v23 + 16))
        {
          v24 = (a1 + *(v18 + 48));
          if ((v24[1] & 1) != 0 || *v24 > 0)
          {
            v25 = v27;
            sub_25417C110(a1, v27, type metadata accessor for EventQuery.Configuration);
            sub_25417C178(v25, a2, type metadata accessor for EventQuery);
            sub_25417C0B0(a1, type metadata accessor for EventQuery.Configuration);
            return;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_25414CA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_25414CA34, 0, 0);
}

uint64_t sub_25414CA34()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  if (v1 < 0)
  {
    v5 = *(v0 + 56);
    if (v1)
    {
      v6 = &selRef_sharedCloudDatabase;
    }

    else
    {
      v6 = &selRef_privateCloudDatabase;
    }

    *(v0 + 80) = [*(v0 + 40) *v6];
    v7 = *(v0 + 56);
    if (v5)
    {
      v8 = *(v0 + 56);
    }

    else
    {
      v8 = _s13HomeKitEvents21DatabaseConfigurationO21defaultOperationGroup9containerSo011CKOperationH0CSo11CKContainerC_tFZ_0(v2);
    }

    *(v0 + 88) = v8;
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *(v9 + 16) = *(v0 + 24);
    v10 = v7;
    v11 = v8;
    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8DF0, &qword_254253F38);
    *v12 = v0;
    v12[1] = sub_25414CDB8;

    return MEMORY[0x28210DEC0](v0 + 16, 0, v8, &unk_254254600, v9, v13);
  }

  else
  {
    v14 = (*(v0 + 24) + **(v0 + 24));
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_25414CC70;

    return v14(v0 + 16, v2);
  }
}

uint64_t sub_25414CC70()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_25414CDA0;
  }

  else
  {
    v2 = sub_25414CD84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25414CDB8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_25414CF48;
  }

  else
  {

    v3 = sub_25414CEDC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25414CEDC()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_25414CF48()
{
  v1 = v0[11];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25414CFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_25414CFF0, 0, 0);
}

uint64_t sub_25414CFF0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  if (v1 < 0)
  {
    v6 = *(v0 + 56);
    if (v1)
    {
      v7 = &selRef_sharedCloudDatabase;
    }

    else
    {
      v7 = &selRef_privateCloudDatabase;
    }

    *(v0 + 72) = [*(v0 + 40) *v7];
    v8 = *(v0 + 56);
    if (v6)
    {
      v9 = *(v0 + 56);
    }

    else
    {
      v9 = _s13HomeKitEvents21DatabaseConfigurationO21defaultOperationGroup9containerSo011CKOperationH0CSo11CKContainerC_tFZ_0(v2);
    }

    *(v0 + 80) = v9;
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *(v10 + 16) = *(v0 + 24);
    v11 = v8;
    v12 = v9;
    v13 = swift_task_alloc();
    *(v0 + 96) = v13;
    *v13 = v0;
    v13[1] = sub_25414D220;
    v14 = *(v0 + 16);
    v15 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x28210DEC0](v14, 0, v9, &unk_254254478, v10, v15);
  }

  else
  {
    v16 = (*(v0 + 24) + **(v0 + 24));
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_25417E908;
    v4 = *(v0 + 16);

    return v16(v4, v2);
  }
}

uint64_t sub_25414D220()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_25417E91C;
  }

  else
  {

    v3 = sub_25417E914;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25414D344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_25414D36C, 0, 0);
}

uint64_t sub_25414D36C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  if (v1 < 0)
  {
    v6 = *(v0 + 56);
    if (v1)
    {
      v7 = &selRef_sharedCloudDatabase;
    }

    else
    {
      v7 = &selRef_privateCloudDatabase;
    }

    *(v0 + 72) = [*(v0 + 40) *v7];
    v8 = *(v0 + 56);
    if (v6)
    {
      v9 = *(v0 + 56);
    }

    else
    {
      v9 = _s13HomeKitEvents21DatabaseConfigurationO21defaultOperationGroup9containerSo011CKOperationH0CSo11CKContainerC_tFZ_0(v2);
    }

    *(v0 + 80) = v9;
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *(v10 + 16) = *(v0 + 24);
    v11 = v8;
    v12 = v9;
    v13 = swift_task_alloc();
    *(v0 + 96) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
    *v13 = v0;
    v13[1] = sub_25414D69C;
    v15 = *(v0 + 16);

    return MEMORY[0x28210DEC0](v15, 0, v9, &unk_254254498, v10, v14);
  }

  else
  {
    v16 = (*(v0 + 24) + **(v0 + 24));
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_25414D5A8;
    v4 = *(v0 + 16);

    return v16(v4, v2);
  }
}

uint64_t sub_25414D5A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25414D69C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_25414D828;
  }

  else
  {

    v3 = sub_25414D7C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25414D7C0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25414D828()
{
  v1 = v0[10];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

id EventQuery.init(features:homeIdentifier:dateInterval:categories:accessoryIdentifier:resultsLimit:maxRecordsPerQuery:dateIntervalStartOpen:dateIntervalEndOpen:scope:targetCloudKitZone:qualityOfService:operationGroup:retainEncodedEvent:)@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, char a11, unsigned __int8 a12, unsigned __int8 *a13, unsigned __int8 *a14, uint64_t a15, void *a16, unsigned __int8 a17)
{
  v87 = a8;
  v83 = a7;
  v82 = a6;
  v93 = a5;
  v89 = a4;
  v70 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v21 - 8);
  v91 = &v68[-v22];
  v95 = sub_25424D218();
  v92 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v90 = &v68[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_25424D948();
  v98 = *(v96 - 8);
  v24 = MEMORY[0x28223BE20](v96);
  v94 = &v68[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v97 = &v68[-v26];
  v27 = type metadata accessor for EventQuery.Configuration(0);
  v28 = MEMORY[0x28223BE20](v27);
  v85 = &v68[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v68[-v31];
  MEMORY[0x28223BE20](v30);
  v86 = &v68[-v33];
  v81 = *a13;
  v34 = *a14;
  v88 = a9;
  v84 = v34;
  if (!a16)
  {
    goto LABEL_5;
  }

  result = [a16 defaultConfiguration];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v36 = result;
  v37 = [result container];

  if (v37)
  {
    v38 = a16;
    v39 = v96;
    v40 = v94;
  }

  else
  {
LABEL_5:
    if (qword_27F5B8420 != -1)
    {
      swift_once();
    }

    v37 = qword_27F5BA548;
    v39 = v96;
    v40 = v94;
    if (a16)
    {
      v38 = a16;
    }

    else
    {
      v38 = [objc_allocWithZone(MEMORY[0x277CBC4F8]) init];
      v106 = v38;
      v41 = v70;
      sub_25414E2BC(&v106, v37);
      v70 = v41;
      v40 = v94;
    }
  }

  sub_254140708(a1, &v106);
  v75 = v37;
  v71 = v37;
  v74 = v38;
  v77 = v38;
  v76 = a16;
  v42 = v97;
  sub_25424D938();
  v43 = v98 + 16;
  v73 = *(v98 + 16);
  v73(v40, a2, v39);
  v44 = (v92 + 16);
  v72 = *(v92 + 16);
  v72(v90, a3, v95);
  sub_254132DF4(v93, v91, &unk_27F5B8E50, &qword_254254390);
  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  v45 = v89;
  v80 = a1;
  v79 = a2;
  v78 = a3;
  if (v89 && sub_2541538B4(6, v89))
  {
    *&v100 = MEMORY[0x277D84FA0];
    v46 = (v45 + 56);
    v47 = 1 << *(v45 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v45 + 56);
    v50 = (v47 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v51 = 0;
    while (v49)
    {
      v52 = v51;
LABEL_21:
      v53 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v54 = *(*(v45 + 48) + (v53 | (v52 << 6)));
      if (v54 >= 6)
      {
        sub_254168D1C(&v99, 0);
        sub_254168D1C(&v99, 1);
        v54 = 2;
      }

      sub_254168D1C(&v99, v54);
      v51 = v52;
      v42 = v97;
    }

    while (1)
    {
      v52 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v52 >= v50)
      {

        v55 = v100;
        goto LABEL_25;
      }

      v49 = *&v46[8 * v52];
      ++v51;
      if (v49)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v55 = 0;
LABEL_25:
    v70 = a15;
    v69 = a12;
    v56 = v81 | 0x8000000000000000;
    sub_254140708(&v106, v32);
    *(v32 + 5) = v75;
    *(v32 + 6) = v56;
    *(v32 + 7) = v74;
    v50 = v96;
    v57 = v73;
    v73(&v32[v27[6]], v42, v96);
    v46 = v94;
    v57(&v32[v27[7]], v94, v50);
    v42 = v90;
    v43 = v95;
    v72(&v32[v27[8]], v90, v95);
    *&v32[v27[9]] = v89;
    *&v32[v27[10]] = v55;
    v44 = v91;
    sub_254132DF4(v91, &v32[v27[11]], &unk_27F5B8E50, &qword_254254390);
    v58 = &v32[v27[12]];
    *v58 = v82;
    v58[8] = v83 & 1;
    v32[v27[13]] = a11 & 1;
    v32[v27[14]] = v69 & 1;
    v59 = &v32[v27[15]];
    *v59 = v70;
    v59[8] = 0;
    if (qword_27F5B8468 == -1)
    {
      goto LABEL_26;
    }
  }

  swift_once();
LABEL_26:
  LODWORD(v89) = a17;
  v83 = a10;
  v60 = off_27F5BAFB0;
  sub_254132E5C(v44, &unk_27F5B8E50, &qword_254254390);
  v92 = *(v92 + 8);
  (v92)(v42, v43);
  v62 = v98 + 8;
  v61 = *(v98 + 8);
  v61(v46, v50);
  v98 = v62;
  v61(v97, v50);
  __swift_destroy_boxed_opaque_existential_1(&v106);
  *&v32[v27[16]] = v60[2];
  *&v32[v27[17]] = 24;
  v63 = v93;
  if (*(&v104 + 1))
  {
    sub_25412DC4C(&v103, &v100);
  }

  else
  {
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FF8, &qword_254254398);
    v43 = v95;
    v102 = sub_25414081C(&unk_27F5B9000, &qword_27F5B8FF8, &qword_254254398, &protocol conformance descriptor for DiscardingAsyncCache<A, B>);
  }

  v64 = v71;
  swift_unknownObjectRetain();
  sub_25412DC4C(&v100, &v32[v27[18]]);
  v65 = 3000;
  if (!(v83 & 1 | (v87 < 1)))
  {
    v65 = v87;
  }

  *&v32[v27[19]] = v65;
  *&v32[v27[20]] = 5;
  v32[v27[21]] = v89 & 1;
  v32[v27[22]] = v84;
  v66 = v86;
  sub_25417C178(v32, v86, type metadata accessor for EventQuery.Configuration);
  v67 = v85;
  sub_25417C110(v66, v85, type metadata accessor for EventQuery.Configuration);
  sub_25414C6E4(v67, v88);

  sub_254132E5C(v63, &unk_27F5B8E50, &qword_254254390);
  (v92)(v78, v43);
  v61(v79, v96);
  __swift_destroy_boxed_opaque_existential_1(v80);
  return sub_25417C0B0(v66, type metadata accessor for EventQuery.Configuration);
}

void sub_25414E2BC(void **a1, uint64_t a2)
{
  v3 = *a1;
  v17[3] = 0xE000000000000000;
  v17[0] = 47;
  v17[1] = 0xE100000000000000;
  v17[2] = 0;
  v16[2] = v17;
  v4 = sub_2541D870C(0x7FFFFFFFFFFFFFFFLL, 1, sub_254148F24, v16, 0xD00000000000001ELL, 0x80000002542505B0, "Unhandled CKDatabase.Scope: ");
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];

    v9 = MEMORY[0x259C05BF0](v5, v6, v7, v8);
    v11 = v10;

    MEMORY[0x259C05CA0](v9, v11);

    MEMORY[0x259C05CA0](46, 0xE100000000000000);
    v17[0] = type metadata accessor for EventQuery(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9290, &qword_2542545E8);
    v12 = sub_25424DD08();
    MEMORY[0x259C05CA0](v12);

    v13 = sub_25424DCA8();

    [v3 setName_];

    [v3 setExpectedSendSize_];
    v14 = [v3 defaultConfiguration];
    if (v14)
    {
      v15 = v14;
      [v14 setContainer_];

      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

uint64_t EventQuery.init(features:database:homeIdentifier:dateInterval:categories:accessoryIdentifier:resultsLimit:maxRecordsPerQuery:dateIntervalStartOpen:dateIntervalEndOpen:scope:targetCloudKitZone:qualityOfService:retainEncodedEvent:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, char a12, unsigned __int8 a13, uint64_t a14, void (*a15)(void), uint64_t a16, unsigned __int8 a17)
{
  v78 = a8;
  v77 = a7;
  v90 = a6;
  v84 = a5;
  v91 = a4;
  v92 = a3;
  v93 = a1;
  v83 = a9;
  v88 = a15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v67[-v19];
  v21 = sub_25424D218();
  v89 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v67[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_25424D948();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v67[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v30 = &v67[-v29];
  v31 = type metadata accessor for EventQuery.Configuration(0);
  v32 = MEMORY[0x28223BE20](v31);
  v81 = &v67[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v67[-v35];
  MEMORY[0x28223BE20](v34);
  v70 = &v67[-v37];
  v38 = a2[1];
  v75 = *a2;
  v74 = v38;
  v73 = a2[2];
  v76 = v28;
  v80 = *v88;
  sub_254140708(v93, &v101);
  sub_25424D938();
  v82 = v25;
  v40 = *(v25 + 16);
  v39 = v25 + 16;
  v88 = v24;
  v71 = v40;
  v40(v28, v92, v24);
  v41 = v23;
  v42 = *(v89 + 16);
  v87 = v41;
  v86 = v21;
  v72 = v89 + 16;
  v42();
  v79 = v20;
  v43 = v20;
  v44 = v84;
  sub_254132DF4(v90, v43, &unk_27F5B8E50, &qword_254254390);
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v85 = v30;
  if (v44 && sub_2541538B4(6, v44))
  {
    *&v95 = MEMORY[0x277D84FA0];
    v45 = v44 + 56;
    v46 = 1 << *(v44 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & *(v44 + 56);
    v49 = (v46 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v50 = 0;
    while (v48)
    {
      v51 = v50;
LABEL_12:
      v52 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v53 = *(*(v44 + 48) + (v52 | (v51 << 6)));
      if (v53 >= 6)
      {
        sub_254168D1C(&v94, 0);
        sub_254168D1C(&v94, 1);
        v53 = 2;
      }

      sub_254168D1C(&v94, v53);
      v50 = v51;
    }

    while (1)
    {
      v51 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v51 >= v49)
      {
        v54 = v42;

        v55 = v95;
        v56 = v88;
        v30 = v85;
        goto LABEL_16;
      }

      v48 = *(v45 + 8 * v51);
      ++v50;
      if (v48)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v54 = v42;
  v55 = 0;
  v56 = v88;
LABEL_16:
  v69 = a16;
  v68 = a13;
  sub_254140708(&v101, v36);
  v57 = v74;
  *(v36 + 5) = v75;
  *(v36 + 6) = v57;
  *(v36 + 7) = v73;
  v58 = v71;
  v71(&v36[v31[6]], v30, v56);
  v48 = v76;
  v58(&v36[v31[7]], v76, v56);
  v42 = v56;
  v45 = v86;
  (v54)(&v36[v31[8]], v87, v86);
  *&v36[v31[9]] = v44;
  *&v36[v31[10]] = v55;
  v39 = v79;
  sub_254132DF4(v79, &v36[v31[11]], &unk_27F5B8E50, &qword_254254390);
  v59 = &v36[v31[12]];
  *v59 = v77;
  v59[8] = v78 & 1;
  v36[v31[13]] = a12 & 1;
  v36[v31[14]] = v68 & 1;
  v60 = &v36[v31[15]];
  *v60 = v69;
  v60[8] = 0;
  if (qword_27F5B8468 != -1)
  {
LABEL_24:
    swift_once();
  }

  LODWORD(v84) = a17;
  v78 = a11;
  v61 = off_27F5BAFB0;
  sub_254132E5C(v39, &unk_27F5B8E50, &qword_254254390);
  v89 = *(v89 + 8);
  (v89)(v87, v45);
  v62 = *(v82 + 8);
  v62(v48, v42);
  v62(v85, v42);
  __swift_destroy_boxed_opaque_existential_1(&v101);
  *&v36[v31[16]] = v61[2];
  *&v36[v31[17]] = 24;
  if (*(&v99 + 1))
  {
    sub_25412DC4C(&v98, &v95);
  }

  else
  {
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FF8, &qword_254254398);
    v45 = v86;
    v97 = sub_25414081C(&unk_27F5B9000, &qword_27F5B8FF8, &qword_254254398, &protocol conformance descriptor for DiscardingAsyncCache<A, B>);
  }

  v63 = v70;
  swift_unknownObjectRetain();
  sub_25412DC4C(&v95, &v36[v31[18]]);
  v64 = 3000;
  if (!(v78 & 1 | (a10 < 1)))
  {
    v64 = a10;
  }

  *&v36[v31[19]] = v64;
  *&v36[v31[20]] = 5;
  v36[v31[21]] = v84 & 1;
  v36[v31[22]] = v80;
  sub_25417C178(v36, v63, type metadata accessor for EventQuery.Configuration);
  v65 = v81;
  sub_25417C110(v63, v81, type metadata accessor for EventQuery.Configuration);
  sub_25414C6E4(v65, v83);
  sub_254132E5C(v90, &unk_27F5B8E50, &qword_254254390);
  (v89)(v91, v45);
  v62(v92, v88);
  __swift_destroy_boxed_opaque_existential_1(v93);
  return sub_25417C0B0(v63, type metadata accessor for EventQuery.Configuration);
}

uint64_t EventQuery.homeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventQuery.Configuration(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventQuery.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventQuery.Configuration(0) + 32);
  v4 = sub_25424D218();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventQuery.queryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventQuery.Configuration(0) + 24);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventQuery.categories.getter()
{
  type metadata accessor for EventQuery.Configuration(0);
}

void EventQuery.scope.getter(char *a1@<X8>)
{
  v3 = *(v1 + 48);
  if (v3 < 0)
  {
    v6 = v3 & 1;
    goto LABEL_7;
  }

  v4 = *(v1 + 40);
  v5 = [v4 scope];
  if (v5 == 2)
  {
    v6 = 0;
LABEL_7:
    *a1 = v6;
    return;
  }

  if (v5 == 3)
  {
    v6 = 1;
    goto LABEL_7;
  }

  sub_25424E688();

  [v4 0x279771478];
  v7 = sub_25424E468();
  MEMORY[0x259C05CA0](v7);

  sub_25424E858();
  __break(1u);
}

uint64_t EventQuery.start()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA190, &qword_2542543A0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-v3];
  v5 = sub_25424D8B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25424D898();
  v11 = v0;
  v12 = v8;
  type metadata accessor for SomeEvent(0);
  (*(v2 + 104))(v4, *MEMORY[0x277D858A0], v1);
  sub_25424E278();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25414F254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a3;
  v30 = a2;
  v3 = sub_25424D8B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v9 = &v25 - v8;
  v26 = &v25 - v8;
  v10 = type metadata accessor for EventQuery(0);
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = sub_25424E128();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_25417C110(v30, v12, type metadata accessor for EventQuery);
  v17 = v9;
  v18 = v29;
  (*(v6 + 16))(v17, v31, v29);
  v19 = v3;
  (*(v4 + 16))(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v3);
  v20 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v21 = (v11 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = (v7 + *(v4 + 80) + v21) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_25417C178(v12, v23 + v20, type metadata accessor for EventQuery);
  (*(v6 + 32))(v23 + v21, v26, v18);
  (*(v4 + 32))(v23 + v22, v27, v19);
  sub_25419CC1C(0, 0, v15, &unk_2542544D8, v23);
}

uint64_t sub_25414F5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = sub_25424E0A8();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v8 = sub_25424D8B8();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = type metadata accessor for EventQuery.Configuration(0);
  v6[27] = swift_task_alloc();
  type metadata accessor for EventQuery(0);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v9 = sub_25424DAA8();
  v6[33] = v9;
  v6[34] = *(v9 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v10 = sub_25424D948();
  v6[39] = v10;
  v6[40] = *(v10 - 8);
  v6[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25414F88C, 0, 0);
}

uint64_t sub_25414F88C()
{
  v50 = v0;
  v1 = v0;
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 312);
  v43 = *(v0 + 304);
  v45 = *(v0 + 256);
  v47 = *(v0 + 248);
  v5 = *(v0 + 208);
  v6 = *(v0 + 112);
  v7 = *(v6 + *(v5 + 64));
  *(v0 + 336) = v7;
  v8 = *(v5 + 24);
  *(v0 + 416) = v8;
  v9 = *(v2 + 16);
  *(v0 + 344) = v9;
  *(v0 + 352) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v3, v6 + v8, v4);
  v10 = type metadata accessor for EventsAsyncSequenceLogEvent(0);
  *(v0 + 360) = v10;
  v11 = objc_allocWithZone(v10);
  v9(&v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v3, v4);
  v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
  *(v0 + 16) = v11;
  *(v0 + 24) = v10;
  v12 = objc_msgSendSuper2((v0 + 16), sel_init);
  v13 = *(v2 + 8);
  *(v0 + 368) = v13;
  *(v0 + 376) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v3, v4);
  [v7 submitLogEvent_];

  sub_25421ACE8(v43);
  sub_25417C110(v6, v45, type metadata accessor for EventQuery);
  sub_25417C110(v6, v47, type metadata accessor for EventQuery);
  v14 = sub_25424DA88();
  v15 = sub_25424E448();
  if (os_log_type_enabled(v14, v15))
  {
    v44 = *(v0 + 272);
    v46 = *(v0 + 264);
    v48 = *(v0 + 304);
    v16 = *(v0 + 248);
    v17 = *(v0 + 256);
    v42 = *(v0 + 216);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v49 = v19;
    *v18 = 136446466;
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_25424EA58();
    v22 = v21;
    sub_25417C0B0(v17, type metadata accessor for EventQuery);
    v23 = sub_2542203C4(v20, v22, &v49);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2082;
    sub_25417C110(v16, v42, type metadata accessor for EventQuery.Configuration);
    v24 = sub_25424DD08();
    v26 = v25;
    sub_25417C0B0(v16, type metadata accessor for EventQuery);
    v27 = sub_2542203C4(v24, v26, &v49);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_254124000, v14, v15, "[%{public}s] Beginning query: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v19, -1, -1);
    MEMORY[0x259C07330](v18, -1, -1);

    v28 = *(v44 + 8);
    v28(v48, v46);
  }

  else
  {
    v29 = *(v0 + 304);
    v30 = *(v0 + 264);
    v31 = *(v1 + 272);
    v33 = *(v1 + 248);
    v32 = *(v1 + 256);

    sub_25417C0B0(v33, type metadata accessor for EventQuery);
    sub_25417C0B0(v32, type metadata accessor for EventQuery);
    v28 = *(v31 + 8);
    v28(v29, v30);
  }

  *(v1 + 384) = v28;
  v34 = swift_task_alloc();
  v35 = *(v1 + 112);
  v36 = *(v1 + 112);
  v37 = v36[5];
  v38 = v36[6];
  v39 = v36[7];
  *(v1 + 392) = v34;
  *(v34 + 16) = v35;
  v40 = swift_task_alloc();
  *(v1 + 400) = v40;
  *v40 = v1;
  v40[1] = sub_25414FD4C;

  return sub_25414CFC8(sub_25414CFC8, &unk_2542544E8, v34, v37, v38, v39);
}

uint64_t sub_25414FD4C()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_2541503BC;
  }

  else
  {
    v2 = sub_25414FE7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25414FE7C()
{
  v45 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  sub_25421ACE8(*(v0 + 296));
  sub_25417C110(v6, v1, type metadata accessor for EventQuery);
  (*(v4 + 16))(v2, v5, v3);
  v7 = sub_25424DA88();
  v8 = sub_25424E448();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 240);
    v10 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v10 = 136446466;
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = sub_25424EA58();
    v13 = v12;
    sub_25417C0B0(v9, type metadata accessor for EventQuery);
    v14 = sub_2542203C4(v11, v13, &v44);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    sub_25424D868();
    v15 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v15 setMaximumFractionDigits_];
    v16 = sub_25424E288();
    v17 = [v15 stringForObjectValue_];

    if (v17)
    {
      v18 = sub_25424DCB8();
      v20 = v19;
    }

    else
    {
      v18 = sub_25424E298();
      v20 = v28;
    }

    v29 = *(v0 + 384);
    v30 = *(v0 + 296);
    v31 = *(v0 + 264);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
    v32 = sub_2542203C4(v18, v20, &v44);

    *(v10 + 14) = v32;
    _os_log_impl(&dword_254124000, v7, v8, "[%{public}s] Finished after %{public}s seconds", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v43, -1, -1);
    MEMORY[0x259C07330](v10, -1, -1);

    v29(v30, v31);
  }

  else
  {
    v21 = *(v0 + 384);
    v22 = *(v0 + 296);
    v23 = *(v0 + 264);
    v24 = *(v0 + 240);
    v25 = *(v0 + 200);
    v26 = *(v0 + 168);
    v27 = *(v0 + 176);

    (*(v27 + 8))(v25, v26);
    sub_25417C0B0(v24, type metadata accessor for EventQuery);
    v21(v22, v23);
  }

  v33 = *(v0 + 368);
  v34 = *(v0 + 360);
  v35 = *(v0 + 336);
  v36 = *(v0 + 344);
  v37 = *(v0 + 328);
  v38 = *(v0 + 312);
  v36(v37, (*(v0 + 112) + *(v0 + 416)), v38);
  v39 = objc_allocWithZone(v34);
  v36(&v39[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v37, v38);
  v39[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 1;
  *&v39[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
  *&v39[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
  *&v39[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
  *(v0 + 64) = v39;
  *(v0 + 72) = v34;
  v40 = objc_msgSendSuper2((v0 + 64), sel_init);
  v33(v37, v38);
  [v35 submitLogEvent_];

  *(v0 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
  sub_25424E238();

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_2541503BC()
{
  v107 = v0;
  v1 = *(v0 + 408);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 408);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  if (v3)
  {
    v103 = *(v0 + 168);
    v7 = *(v0 + 288);
    v8 = *(v0 + 232);
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v96 = *(v0 + 128);
    v98 = *(v0 + 192);
    v13 = *(v0 + 112);

    (*(v11 + 32))(v9, v10, v12);
    sub_25421ACE8(v7);
    sub_25417C110(v13, v8, type metadata accessor for EventQuery);
    (*(v5 + 16))(v98, v96, v103);
    v14 = sub_25424DA88();
    v15 = sub_25424E448();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 232);
      v17 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v106 = v104;
      *v17 = 136446466;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_25424EA58();
      v20 = v19;
      sub_25417C0B0(v16, type metadata accessor for EventQuery);
      v21 = sub_2542203C4(v18, v20, &v106);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      sub_25424D868();
      v22 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v22 setMaximumFractionDigits_];
      v23 = sub_25424E288();
      v24 = [v22 stringForObjectValue_];

      if (v24)
      {
        v25 = sub_25424DCB8();
        v27 = v26;
      }

      else
      {
        v25 = sub_25424E298();
        v27 = v62;
      }

      v100 = *(v0 + 384);
      v63 = *(v0 + 288);
      v64 = *(v0 + 264);
      (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
      v65 = sub_2542203C4(v25, v27, &v106);

      *(v17 + 14) = v65;
      _os_log_impl(&dword_254124000, v14, v15, "[%{public}s] Canceled after %{public}s seconds", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v104, -1, -1);
      MEMORY[0x259C07330](v17, -1, -1);

      v100(v63, v64);
    }

    else
    {
      v48 = *(v0 + 384);
      v49 = *(v0 + 288);
      v50 = *(v0 + 264);
      v51 = *(v0 + 232);
      v52 = *(v0 + 192);
      v53 = *(v0 + 168);
      v54 = *(v0 + 176);

      (*(v54 + 8))(v52, v53);
      sub_25417C0B0(v51, type metadata accessor for EventQuery);
      v48(v49, v50);
    }

    v95 = *(v0 + 368);
    v66 = *(v0 + 360);
    v68 = *(v0 + 336);
    v67 = *(v0 + 344);
    v69 = *(v0 + 328);
    v70 = *(v0 + 312);
    v71 = *(v0 + 136);
    v72 = *(v0 + 144);
    v101 = *(v0 + 160);
    v67(v69, (*(v0 + 112) + *(v0 + 416)), v70);
    v73 = objc_allocWithZone(v66);
    v67(&v73[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v69, v70);
    v73[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 2;
    *&v73[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
    *&v73[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
    *&v73[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
    *(v0 + 48) = v73;
    *(v0 + 56) = v66;
    v74 = objc_msgSendSuper2((v0 + 48), sel_init);
    v95(v69, v70);
    [v68 submitLogEvent_];

    sub_25417BFB4(&qword_27F5B90E0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v75 = swift_allocError();
    (*(v72 + 16))(v76, v101, v71);
    *(v0 + 96) = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
    sub_25424E238();
    (*(v72 + 8))(v101, v71);
  }

  else
  {
    v28 = *(v0 + 280);
    v29 = *(v0 + 224);
    v30 = *(v0 + 184);
    v31 = *(v0 + 128);
    v32 = *(v0 + 112);

    sub_25421ACE8(v28);
    sub_25417C110(v32, v29, type metadata accessor for EventQuery);
    (*(v5 + 16))(v30, v31, v6);
    v33 = v4;
    v34 = sub_25424DA88();
    v35 = sub_25424E428();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 224);
      v37 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v106 = v105;
      *v37 = 136446722;
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v38 = sub_25424EA58();
      v40 = v39;
      sub_25417C0B0(v36, type metadata accessor for EventQuery);
      v41 = sub_2542203C4(v38, v40, &v106);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      sub_25424D868();
      v42 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v42 setMaximumFractionDigits_];
      v43 = sub_25424E288();
      v44 = [v42 stringForObjectValue_];

      if (v44)
      {
        v45 = sub_25424DCB8();
        v47 = v46;
      }

      else
      {
        v45 = sub_25424E298();
        v47 = v77;
      }

      v78 = *(v0 + 408);
      v97 = *(v0 + 384);
      v79 = *(v0 + 280);
      v80 = *(v0 + 264);
      (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
      v81 = sub_2542203C4(v45, v47, &v106);

      *(v37 + 14) = v81;
      *(v37 + 22) = 2114;
      v82 = v78;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 24) = v83;
      *v99 = v83;
      _os_log_impl(&dword_254124000, v34, v35, "[%{public}s] Failed after %{public}s seconds: %{public}@", v37, 0x20u);
      sub_254132E5C(v99, &unk_27F5BBED0, &qword_254253F80);
      MEMORY[0x259C07330](v99, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v105, -1, -1);
      MEMORY[0x259C07330](v37, -1, -1);

      v97(v79, v80);
    }

    else
    {
      v55 = *(v0 + 384);
      v56 = *(v0 + 280);
      v57 = *(v0 + 264);
      v58 = *(v0 + 224);
      v60 = *(v0 + 176);
      v59 = *(v0 + 184);
      v61 = *(v0 + 168);

      (*(v60 + 8))(v59, v61);
      sub_25417C0B0(v58, type metadata accessor for EventQuery);
      v55(v56, v57);
    }

    v84 = *(v0 + 408);
    v85 = *(v0 + 368);
    v86 = *(v0 + 360);
    v87 = *(v0 + 344);
    v88 = *(v0 + 328);
    v89 = *(v0 + 312);
    v102 = *(v0 + 336);
    v87(v88, (*(v0 + 112) + *(v0 + 416)), v89);
    v90 = objc_allocWithZone(v86);
    v87(&v90[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v88, v89);
    v90[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 14;
    *&v90[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
    *&v90[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
    *&v90[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
    *(v0 + 32) = v90;
    *(v0 + 40) = v86;
    v91 = objc_msgSendSuper2((v0 + 32), sel_init);
    v85(v88, v89);
    v92 = sub_25424D398();
    [v102 submitLogEvent:v91 error:v92];

    *(v0 + 88) = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
    sub_25424E238();
  }

  v93 = *(v0 + 8);

  return v93();
}

uint64_t sub_254150EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_25412F724;

  return sub_254150F98(a2, a4);
}

uint64_t sub_254150F98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for EventQuery(0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = sub_25424DAA8();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90E8, &qword_2542544F8);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_25424D218();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25415117C, 0, 0);
}

uint64_t sub_25415117C()
{
  sub_25424E1E8();
  v1 = *(v0 + 32);
  v2 = type metadata accessor for EventQuery.Configuration(0);
  *(v0 + 152) = v2;
  v3 = *(v2 + 28);
  *(v0 + 292) = *(v1 + *(v2 + 88));
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_254151314;
  v5 = *(v0 + 16);

  return sub_2541A23BC(v5, v1 + v3, (v0 + 292), 1);
}

uint64_t sub_254151314(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_25415159C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[23] = v4;
    *v4 = v3;
    v4[1] = sub_254151488;
    v5 = v3[2];

    return sub_254153994(v5);
  }
}

uint64_t sub_254151488(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_254152638;
  }

  else
  {
    v4 = sub_254151664;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25415159C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_254151664()
{
  v1 = *(v0 + 192);
  if (!v1)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90F0, &qword_254254508);
    v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_254254360;
    v9 = v1 + v8;
    v10 = *(v6 + 48);
    (*(v4 + 16))(v9, v7 + *(v2 + 32), v3);
    *(v9 + v10) = MEMORY[0x277D84F90];
  }

  *(v0 + 208) = v1;
  v11 = *(v1 + 16);
  *(v0 + 216) = v11;
  if (v11)
  {
    v12 = *(v0 + 136);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    v15 = *(v0 + 32) + *(*(v0 + 152) + 48);
    *(v0 + 224) = *v15;
    *(v0 + 293) = *(v15 + 8);
    v16 = *(v13 + 80);
    *(v0 + 288) = v16;
    *(v0 + 232) = 0;
    *(v0 + 240) = 0;
    if (*(v1 + 16))
    {
      v17 = *(v0 + 144);
      v19 = *(v0 + 120);
      v18 = *(v0 + 128);
      sub_254132DF4(v1 + ((v16 + 32) & ~v16), v19, &qword_27F5B90E8, &qword_2542544F8);
      v20 = *(v19 + *(v14 + 48));
      *(v0 + 248) = v20;
      (*(v12 + 32))(v17, v19, v18);
      v52 = *(v0 + 224);
      v21 = *(v0 + 56);
      v22 = *(v0 + 32);
      sub_25421ACE8(*(v0 + 96));
      sub_25417C110(v22, v21, type metadata accessor for EventQuery);
      swift_bridgeObjectRetain_n();
      v23 = sub_25424DA88();
      v24 = sub_25424E408();
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 208);
      if (v25)
      {
        v27 = *(v0 + 72);
        v49 = *(v0 + 64);
        v50 = *(v0 + 96);
        v28 = *(v0 + 56);
        v51 = v20;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v54 = v30;
        *v29 = 136446722;
        sub_25424D948();
        sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v31 = sub_25424EA58();
        v33 = v32;
        sub_25417C0B0(v28, type metadata accessor for EventQuery);
        v34 = sub_2542203C4(v31, v33, &v54);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2048;
        *(v29 + 14) = 1;
        *(v29 + 22) = 2048;
        v35 = *(v26 + 16);

        *(v29 + 24) = v35;

        _os_log_impl(&dword_254124000, v23, v24, "[%{public}s] Beginning tag-based subquery %ld (of %ld)", v29, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x259C07330](v30, -1, -1);
        v36 = v29;
        v20 = v51;
        MEMORY[0x259C07330](v36, -1, -1);

        v37 = *(v27 + 8);
        v37(v50, v49);
      }

      else
      {
        v39 = *(v0 + 96);
        v41 = *(v0 + 64);
        v40 = *(v0 + 72);
        v42 = *(v0 + 56);
        swift_bridgeObjectRelease_n();

        sub_25417C0B0(v42, type metadata accessor for EventQuery);
        v37 = *(v40 + 8);
        v37(v39, v41);
      }

      *(v0 + 256) = v37;
      v43 = *(v0 + 293);
      v44 = *(v0 + 216) == 1;
      v45 = swift_task_alloc();
      *(v0 + 264) = v45;
      *v45 = v0;
      v45[1] = sub_254151B60;
      v46 = *(v0 + 168);
      v47 = *(v0 + 144);
      v48 = *(v0 + 16);

      sub_254154FE4(v48, v46, v47, v20, v52, v43, 1, v44);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v38 = *(v0 + 8);

    v38();
  }
}

uint64_t sub_254151B60(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {

    v4 = sub_254152708;
  }

  else
  {
    v4 = sub_254151CB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_254151CB0(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 32);
  sub_25421ACE8(*(v1 + 88));
  sub_25417C110(v3, v2, type metadata accessor for EventQuery);
  swift_bridgeObjectRetain_n();
  v4 = sub_25424DA88();
  v5 = sub_25424E408();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 208);
    v96 = *(v1 + 88);
    v99 = *(v1 + 256);
    v93 = *(v1 + 64);
    v7 = *(v1 + 48);
    v8 = *(v1 + 240) + 1;
    v88 = *(v1 + 272);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v103 = v10;
    *v9 = 136446978;
    sub_25424D948();
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = sub_25424EA58();
    v13 = v12;
    sub_25417C0B0(v7, type metadata accessor for EventQuery);
    v14 = sub_2542203C4(v11, v13, &v103);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v8;
    *(v9 + 22) = 2048;
    v15 = *(v6 + 16);

    *(v9 + 24) = v15;

    *(v9 + 32) = 2048;
    *(v9 + 34) = v88;
    _os_log_impl(&dword_254124000, v4, v5, "[%{public}s] Finished tag-based subquery %ld (of %ld), emitted %ld matching event(s)", v9, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x259C07330](v10, -1, -1);
    MEMORY[0x259C07330](v9, -1, -1);

    result = v99(v96, v93);
  }

  else
  {
    v17 = *(v1 + 256);
    v18 = *(v1 + 88);
    v19 = *(v1 + 64);
    v20 = *(v1 + 48);
    swift_bridgeObjectRelease_n();

    sub_25417C0B0(v20, type metadata accessor for EventQuery);
    result = v17(v18, v19);
  }

  v21 = *(v1 + 272);
  v22 = *(v1 + 232);
  v23 = v22 + v21;
  if (__OFADD__(v22, v21))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if ((*(v1 + 293) & 1) == 0 && v23 == *(v1 + 224))
  {
    v24 = *(v1 + 80);
    v26 = *(v1 + 32);
    v25 = *(v1 + 40);

    sub_25421ACE8(v24);
    sub_25417C110(v26, v25, type metadata accessor for EventQuery);
    v27 = sub_25424DA88();
    v28 = sub_25424E448();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v1 + 256);
    if (v29)
    {
      v31 = *(v1 + 224);
      v32 = *(v1 + 136);
      v97 = *(v1 + 128);
      v100 = *(v1 + 144);
      v94 = *(v1 + 80);
      v89 = *(v1 + 168);
      v91 = *(v1 + 64);
      v33 = *(v1 + 40);
      v34 = swift_slowAlloc();
      v87 = v30;
      v35 = swift_slowAlloc();
      v103 = v35;
      *v34 = 136446466;
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v36 = sub_25424EA58();
      v38 = v37;
      sub_25417C0B0(v33, type metadata accessor for EventQuery);
      v39 = sub_2542203C4(v36, v38, &v103);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2048;
      *(v34 + 14) = v31;
      _os_log_impl(&dword_254124000, v27, v28, "[%{public}s] Reached query limit: %ld", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x259C07330](v35, -1, -1);
      MEMORY[0x259C07330](v34, -1, -1);

      v87(v94, v91);
      (*(v32 + 8))(v100, v97);
    }

    else
    {
      v71 = *(v1 + 136);
      v70 = *(v1 + 144);
      v72 = *(v1 + 128);
      v73 = *(v1 + 80);
      v74 = *(v1 + 64);
      v75 = *(v1 + 40);

      sub_25417C0B0(v75, type metadata accessor for EventQuery);
      v30(v73, v74);
      (*(v71 + 8))(v70, v72);
    }

LABEL_17:

    v76 = *(v1 + 8);

    return v76();
  }

  v40 = *(v1 + 216);
  v41 = *(v1 + 240) + 1;
  result = (*(*(v1 + 136) + 8))(*(v1 + 144), *(v1 + 128));
  if (v41 == v40)
  {

    goto LABEL_17;
  }

  v42 = *(v1 + 240);
  *(v1 + 232) = v23;
  *(v1 + 240) = v42 + 1;
  v43 = *(v1 + 208);
  if ((v42 + 1) >= *(v43 + 16))
  {
    goto LABEL_25;
  }

  v44 = *(v1 + 293);
  v46 = *(v1 + 136);
  v45 = *(v1 + 144);
  v48 = *(v1 + 120);
  v47 = *(v1 + 128);
  v49 = *(v1 + 104);
  sub_254132DF4(v43 + ((*(v1 + 288) + 32) & ~*(v1 + 288)) + *(*(v1 + 112) + 72) * (v42 + 1), v48, &qword_27F5B90E8, &qword_2542544F8);
  v50 = *(v48 + *(v49 + 48));
  *(v1 + 248) = v50;
  result = (*(v46 + 32))(v45, v48, v47);
  v51 = *(v1 + 224);
  if ((v44 & 1) == 0)
  {
    v52 = __OFSUB__(v51, v23);
    v51 -= v23;
    if (v52)
    {
      goto LABEL_26;
    }
  }

  v101 = v51;
  v53 = v42;
  v54 = *(v1 + 56);
  v55 = *(v1 + 32);
  sub_25421ACE8(*(v1 + 96));
  sub_25417C110(v55, v54, type metadata accessor for EventQuery);
  swift_bridgeObjectRetain_n();
  v56 = sub_25424DA88();
  v57 = sub_25424E408();
  v58 = os_log_type_enabled(v56, v57);
  v59 = *(v1 + 208);
  if (v58)
  {
    v90 = *(v1 + 72);
    v92 = *(v1 + 64);
    v95 = *(v1 + 96);
    v60 = *(v1 + 56);
    v98 = v50;
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v103 = v62;
    *v61 = 136446722;
    sub_25424D948();
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v63 = sub_25424EA58();
    v65 = v64;
    sub_25417C0B0(v60, type metadata accessor for EventQuery);
    v66 = sub_2542203C4(v63, v65, &v103);

    *(v61 + 4) = v66;
    *(v61 + 12) = 2048;
    *(v61 + 14) = v53 + 2;
    *(v61 + 22) = 2048;
    v67 = *(v59 + 16);

    *(v61 + 24) = v67;

    _os_log_impl(&dword_254124000, v56, v57, "[%{public}s] Beginning tag-based subquery %ld (of %ld)", v61, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x259C07330](v62, -1, -1);
    v68 = v61;
    v50 = v98;
    MEMORY[0x259C07330](v68, -1, -1);

    v69 = *(v90 + 8);
    v69(v95, v92);
  }

  else
  {
    v77 = *(v1 + 96);
    v78 = *(v1 + 64);
    v79 = *(v1 + 72);
    v80 = *(v1 + 56);
    swift_bridgeObjectRelease_n();

    sub_25417C0B0(v80, type metadata accessor for EventQuery);
    v69 = *(v79 + 8);
    v69(v77, v78);
  }

  *(v1 + 256) = v69;
  v81 = *(v1 + 293);
  v82 = v53 == *(v1 + 216) - 2;
  v83 = swift_task_alloc();
  *(v1 + 264) = v83;
  *v83 = v1;
  v83[1] = sub_254151B60;
  v84 = *(v1 + 168);
  v85 = *(v1 + 144);
  v86 = *(v1 + 16);

  return sub_254154FE4(v86, v84, v85, v50, v101, v81, 0, v82);
}

uint64_t sub_254152638()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_254152708()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t static EventQuery.fetchOldestDate(database:homeIdentifier:targetCloudKitZone:queryIdentifier:qualityOfService:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 48) = *a2;
  *(v6 + 64) = *(a2 + 16);
  *(v6 + 104) = *a4;
  return MEMORY[0x2822009F8](sub_254152834, 0, 0);
}

uint64_t sub_254152834()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v5 = [objc_opt_self() predicateWithValue_];
  v6 = sub_25424E538();
  *(v0 + 72) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_254254370;
  v8 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v9 = sub_25424DCA8();
  v10 = [v8 initWithKey:v9 ascending:1];

  *(v7 + 32) = v10;
  sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v11 = sub_25424DF88();

  [v6 setSortDescriptors_];

  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *(v12 + 16) = v4;
  *(v12 + 24) = v1;
  *(v12 + 32) = v6;
  *(v12 + 40) = v3;
  *(v12 + 48) = &unk_286632F60;
  *(v12 + 56) = v2;
  *(v12 + 64) = 1702125924;
  *(v12 + 72) = 0xE400000000000000;
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_254152A84;
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 48);
  v17 = *(v0 + 16);

  return sub_25414D344(v17, &unk_2542543C0, v12, v16, v14, v15);
}

uint64_t sub_254152A84()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_254152C18;
  }

  else
  {
    v2 = sub_254152BB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_254152BB4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_254152C18()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_254152C7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v19;
  *(v8 + 96) = v20;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  *(v8 + 104) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E10, &qword_254253F68);
  *(v8 + 112) = v12;
  *(v8 + 120) = *(v12 - 8);
  *(v8 + 128) = swift_task_alloc();
  v13 = sub_25424D8B8();
  *(v8 + 136) = v13;
  *(v8 + 144) = *(v13 - 8);
  *(v8 + 152) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E18, &qword_254253F70);
  *(v8 + 160) = v14;
  *(v8 + 168) = *(v14 - 8);
  *(v8 + 176) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E20, &qword_254253F78);
  *(v8 + 184) = v15;
  *(v8 + 192) = *(v15 - 8);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = type metadata accessor for CKQueryAsyncSequence(0);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 256) = a4 & 1;
  v16 = swift_task_alloc();
  *(v8 + 224) = v16;
  *v16 = v8;
  v16[1] = sub_254152F5C;

  return sub_2541A23BC(a2, a3, (v8 + 256), 1);
}

uint64_t sub_254152F5C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_254153308;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_254153084;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_254153084()
{
  v2 = v0[26];
  v1 = v0[27];
  v27 = v0[21];
  v3 = v0[19];
  v23 = v0[22];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[20];
  v20 = v0[30];
  v21 = v0[16];
  v4 = v0[15];
  v22 = v0[14];
  v5 = v0[9];
  v19 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];
  v9 = v2[7];
  v10 = sub_25424D948();
  (*(*(v10 - 8) + 16))(&v1[v9], v7, v10);
  v11 = v8;
  sub_25424D938();
  *v1 = v8;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *(v1 + 3) = v20;
  *(v1 + 4) = v6;
  *&v1[v2[9]] = v5;
  v12 = &v1[v2[10]];
  *v12 = 10;
  v12[8] = 0;
  v13 = &v1[v2[11]];
  *v13 = v19;
  v13[8] = 0;
  *&v1[v2[12]] = 0;
  v14 = v6;

  sub_25424D898();
  v15 = swift_task_alloc();
  *(v15 + 16) = v1;
  *(v15 + 24) = v3;
  sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
  (*(v4 + 104))(v21, *MEMORY[0x277D858A0], v22);
  sub_25424E278();

  (*(v24 + 8))(v3, v25);
  sub_25424E178();
  (*(v27 + 8))(v23, v26);
  v16 = swift_task_alloc();
  v0[31] = v16;
  *v16 = v0;
  v16[1] = sub_2541533B8;
  v17 = v0[23];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v17, v0 + 3);
}

uint64_t sub_254153308()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2541533B8()
{

  if (v0)
  {
    v1 = sub_2541537CC;
  }

  else
  {
    v1 = sub_2541534C8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2541534C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    if ([*(v0 + 16) isExpired])
    {

LABEL_13:
      v17 = swift_task_alloc();
      *(v0 + 248) = v17;
      *v17 = v0;
      v17[1] = sub_2541533B8;
      v18 = *(v0 + 184);

      return MEMORY[0x2822005A8](v0 + 16, 0, 0, v18, v0 + 24);
    }

    v4 = MEMORY[0x259C06420](*(v0 + 88), *(v0 + 96));

    v5 = *(v0 + 136);
    v6 = *(v0 + 144);
    v7 = *(v0 + 104);
    if (v4)
    {
      *(v0 + 32) = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90B0, &qword_254262510);
      v8 = swift_dynamicCast();
      v9 = *(v6 + 56);
      v9(v7, v8 ^ 1u, 1, v5);
      if ((*(v6 + 48))(v7, 1, v5) != 1)
      {
        v10 = *(v0 + 216);
        v11 = *(v0 + 136);
        v12 = *(v0 + 144);
        v13 = *(v0 + 104);
        v14 = *(v0 + 40);
        (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
        sub_25417C0B0(v10, type metadata accessor for CKQueryAsyncSequence);
        (*(v12 + 32))(v14, v13, v11);
        v9(*(v0 + 40), 0, 1, *(v0 + 136));
        goto LABEL_8;
      }
    }

    else
    {
      (*(v6 + 56))(*(v0 + 104), 1, 1, *(v0 + 136));
    }

    sub_254132E5C(*(v0 + 104), &unk_27F5BA1B0, qword_2542544A0);
    goto LABEL_13;
  }

  v2 = *(v0 + 216);
  v3 = *(v0 + 144);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  sub_25417C0B0(v2, type metadata accessor for CKQueryAsyncSequence);
  (*(v3 + 56))(*(v0 + 40), 1, 1, *(v0 + 136));
LABEL_8:

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2541537CC()
{
  v1 = v0[27];
  (*(v0[24] + 8))(v0[25], v0[23]);
  sub_25417C0B0(v1, type metadata accessor for CKQueryAsyncSequence);

  v2 = v0[1];

  return v2();
}

BOOL sub_2541538B4(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_25424EBD8();
  v4 = qword_2542546A0[a1];
  MEMORY[0x259C06AA0](v4);
  v5 = sub_25424EC28();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_2542546A0[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_254153994(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90E8, &qword_2542544F8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_25424DA48();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_25424D9E8();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = *(type metadata accessor for LubyRackoffEncryptionKey(0) - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_25424D218();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9268, &qword_2542545B8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  type metadata accessor for EventQuery(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = sub_25424DAA8();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254153CC8, 0, 0);
}

uint64_t sub_254153CC8()
{
  v24 = v0;
  v1 = v0[3];
  v2 = type metadata accessor for EventQuery.Configuration(0);
  v0[28] = v2;
  v3 = *(v1 + *(v2 + 36));
  v0[29] = v3;
  if (v3)
  {
    v4 = swift_task_alloc();
    v0[30] = v4;
    *v4 = v0;
    v4[1] = sub_254154034;
    v5 = v0[2];

    return sub_254159034(v5);
  }

  else
  {
    v7 = v0[20];
    sub_25421ACE8(v0[25]);
    sub_25417C110(v1, v7, type metadata accessor for EventQuery);
    v8 = sub_25424DA88();
    v9 = sub_25424E408();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[24];
    v12 = v0[25];
    v13 = v0[23];
    v14 = v0[20];
    if (v10)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136446210;
      v22 = v12;
      v23 = v16;
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v17 = sub_25424EA58();
      v19 = v18;
      sub_25417C0B0(v14, type metadata accessor for EventQuery);
      v20 = sub_2542203C4(v17, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_254124000, v8, v9, "[%{public}s] No categories specified, skipping query with tags", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x259C07330](v16, -1, -1);
      MEMORY[0x259C07330](v15, -1, -1);

      (*(v11 + 8))(v22, v13);
    }

    else
    {

      sub_25417C0B0(v14, type metadata accessor for EventQuery);
      (*(v11 + 8))(v12, v13);
    }

    v21 = v0[1];

    return v21(0);
  }
}

uint64_t sub_254154034(uint64_t a1)
{
  v3 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_254154228, 0, 0);
  }
}

uint64_t sub_254154228(uint64_t a1)
{
  v138 = v1;
  v2 = v1[31];
  if (!v2)
  {
    v75 = v1[21];
    v76 = v1[3];
    sub_25421ACE8(v1[26]);
    sub_25417C110(v76, v75, type metadata accessor for EventQuery);
    v77 = sub_25424DA88();
    v78 = sub_25424E408();
    if (os_log_type_enabled(v77, v78))
    {
      v136 = v1[26];
      v80 = v1[23];
      v79 = v1[24];
      v81 = v1[21];
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v137[0] = v83;
      *v82 = 136446210;
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v84 = sub_25424EA58();
      v86 = v85;
      sub_25417C0B0(v81, type metadata accessor for EventQuery);
      v87 = sub_2542203C4(v84, v86, v137);

      *(v82 + 4) = v87;
      v88 = "[%{public}s] Feature flag disabled, skipping query with tags";
LABEL_81:
      _os_log_impl(&dword_254124000, v77, v78, v88, v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x259C07330](v83, -1, -1);
      MEMORY[0x259C07330](v82, -1, -1);

      (*(v79 + 8))(v136, v80);
LABEL_88:
      v12 = 0;
LABEL_89:

      v104 = v1[1];

      return v104(v12);
    }

    v97 = v1[26];
    v98 = v1[23];
    v99 = v1[24];
    v100 = v1[21];
LABEL_87:

    sub_25417C0B0(v100, type metadata accessor for EventQuery);
    (*(v99 + 8))(v97, v98);
    goto LABEL_88;
  }

  if (!*(v2 + 16))
  {
    v89 = v1[27];
    v90 = v1[22];
    v91 = v1[3];

    sub_25421ACE8(v89);
    sub_25417C110(v91, v90, type metadata accessor for EventQuery);
    v77 = sub_25424DA88();
    v78 = sub_25424E408();
    if (os_log_type_enabled(v77, v78))
    {
      v136 = v1[27];
      v80 = v1[23];
      v79 = v1[24];
      v92 = v1[22];
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v137[0] = v83;
      *v82 = 136446210;
      sub_25424D948();
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v93 = sub_25424EA58();
      v95 = v94;
      sub_25417C0B0(v92, type metadata accessor for EventQuery);
      v96 = sub_2542203C4(v93, v95, v137);

      *(v82 + 4) = v96;
      v88 = "[%{public}s] No encryption keys available, skipping query with tags";
      goto LABEL_81;
    }

    v97 = v1[27];
    v98 = v1[23];
    v99 = v1[24];
    v100 = v1[22];
    goto LABEL_87;
  }

  v3 = v1[16];
  v120 = v1[13];
  v4 = v1[11];
  v5 = v1[8];
  v6 = v1[5];
  v128 = v1[4];
  v115 = v1[28];
  result = _s13HomeKitEvents9EventTagsO8CategoryO15tagsSplitByDate3for12dateIntervalSay10Foundation0jM0VAH_SayAI4DataVG0G0tGShyAA0dF0OG_AKtFZ_0(v1[29], v1[3] + *(v115 + 32));
  v8 = result;
  v9 = 0;
  v10 = *(result + 16);
  v126 = v6;
  v113 = (v6 + 48);
  v114 = (v6 + 56);
  v112 = (v3 + 32);
  v131 = (v4 + 8);
  v132 = (v5 + 16);
  v125 = (v3 + 16);
  v111 = (v3 + 8);
  v11 = v1[32];
  v12 = MEMORY[0x277D84F90];
  v119 = v2;
  v110 = result;
  v105 = v10;
  if (v10)
  {
    goto LABEL_5;
  }

LABEL_4:
  v13 = 1;
  for (i = v10; ; i = v9 + 1)
  {
    v15 = v1[18];
    v14 = v1[19];
    v16 = v1[4];
    (*v114)(v15, v13, 1, v16);
    sub_25417E6C8(v15, v14, &qword_27F5B9268, &qword_2542545B8);
    if ((*v113)(v14, 1, v16) == 1)
    {

      goto LABEL_89;
    }

    v17 = *(v1[19] + *(v128 + 48));
    result = (*v112)(v1[17]);
    v18 = *(v2 + 16);
    v19 = *(v17 + 16);
    if ((v18 * v19) >> 64 != (v18 * v19) >> 63)
    {
      goto LABEL_100;
    }

    v106 = *(v2 + 16);
    result = sub_2541B09E0(0, (v18 * v19) & ~((v18 * v19) >> 63), 0, MEMORY[0x277D84F90]);
    v20 = result;
    v21 = *(v17 + 16);
    v135 = v12;
    if (v21)
    {
      v22 = *(v1[3] + *(v115 + 68));
      if (v22 < 0)
      {
        goto LABEL_101;
      }

      v23 = 0;
      v116 = v17;
      v117 = v17 + 32;
      v121 = v2 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
      v108 = *(v1[3] + *(v115 + 68));
      v109 = *(v17 + 16);
      while (1)
      {
        if (v23 >= *(v17 + 16))
        {
          goto LABEL_97;
        }

        if (*(v2 + 16) >= v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = *(v2 + 16);
        }

        if (!v22 || !v24)
        {
          goto LABEL_13;
        }

        v118 = v23;
        v25 = (v117 + 16 * v23);
        v27 = *v25;
        v26 = v25[1];
        sub_254140660(*v25, v26);
        v28 = v26 >> 62;
        v133 = v26;
        v134 = v27;
        v29 = BYTE6(v26);
        v30 = __OFSUB__(HIDWORD(v27), v27);
        v123 = v30;
        v122 = HIDWORD(v27) - v27;
        v31 = v1[14];
        v32 = v1[9];
        v33 = v1[7];
        v130 = *(v120 + 72);

        sub_25417C110(v121, v31, type metadata accessor for LubyRackoffEncryptionKey);
        v129 = *v132;
        result = (*v132)(v32, v31, v33);
        v124 = v29;
        if (v28 <= 1)
        {
          break;
        }

        if (v28 != 3)
        {
          v36 = *(v134 + 16);
          v35 = *(v134 + 24);
          v37 = __OFSUB__(v35, v36);
          v34 = v35 - v36;
          if (v37)
          {
            goto LABEL_98;
          }

          goto LABEL_29;
        }

LABEL_30:
        sub_25424D9C8();
        if (v11)
        {

          sub_254134D04(v134, v133);
          swift_bridgeObjectRelease_n();
          v101 = v1[17];
          v102 = v1[15];
          sub_25417C0B0(v1[14], type metadata accessor for LubyRackoffEncryptionKey);
          (*v111)(v101, v102);

          v103 = v1[1];

          return v103();
        }

        v38 = sub_25424D9D8();
        v40 = v39;
        v127 = *v131;
        (*v131)(v1[12], v1[10]);
        v42 = *(v20 + 2);
        v41 = *(v20 + 3);
        if (v42 >= v41 >> 1)
        {
          v20 = sub_2541B09E0((v41 > 1), v42 + 1, 1, v20);
        }

        sub_25417C0B0(v1[14], type metadata accessor for LubyRackoffEncryptionKey);
        *(v20 + 2) = v42 + 1;
        v43 = &v20[16 * v42];
        *(v43 + 4) = v38;
        *(v43 + 5) = v40;
        v44 = v24 - 1;
        if (v24 != 1)
        {
          v45 = v121 + v130;
          while (1)
          {
            v46 = v1[14];
            v47 = v1[9];
            v48 = v1[7];
            sub_25417C110(v45, v46, type metadata accessor for LubyRackoffEncryptionKey);
            result = v129(v47, v46, v48);
            if (v28 <= 1)
            {
              break;
            }

            if (v28 == 2)
            {
              v51 = *(v134 + 16);
              v50 = *(v134 + 24);
              v37 = __OFSUB__(v50, v51);
              v49 = v50 - v51;
              if (v37)
              {
                goto LABEL_98;
              }

LABEL_41:
              if ((v49 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_93;
              }
            }

            sub_25424D9C8();
            v52 = sub_25424D9D8();
            v54 = v53;
            v127(v1[12], v1[10]);
            v56 = *(v20 + 2);
            v55 = *(v20 + 3);
            if (v56 >= v55 >> 1)
            {
              v20 = sub_2541B09E0((v55 > 1), v56 + 1, 1, v20);
            }

            sub_25417C0B0(v1[14], type metadata accessor for LubyRackoffEncryptionKey);
            *(v20 + 2) = v56 + 1;
            v57 = &v20[16 * v56];
            *(v57 + 4) = v52;
            *(v57 + 5) = v54;
            v45 += v130;
            if (!--v44)
            {
              goto LABEL_12;
            }
          }

          v49 = v124;
          if (v28)
          {
            v49 = v122;
            if (v123)
            {
              goto LABEL_99;
            }
          }

          goto LABEL_41;
        }

LABEL_12:
        sub_254134D04(v134, v133);
        v2 = v119;

        v11 = 0;
        v17 = v116;
        v22 = v108;
        v21 = v109;
        v23 = v118;
LABEL_13:
        if (++v23 == v21)
        {
          goto LABEL_46;
        }
      }

      v34 = v29;
      if (v28)
      {
        v34 = v122;
        if (v123)
        {
          goto LABEL_99;
        }
      }

LABEL_29:
      if ((v34 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      goto LABEL_30;
    }

LABEL_46:

    if (!v106)
    {
      goto LABEL_103;
    }

    v58 = *(v1[3] + *(v115 + 68)) / v106;
    if (!v58)
    {
      goto LABEL_104;
    }

    v59 = *(v20 + 2);
    if (v58 >= 1 && v59 != 0)
    {
      break;
    }

LABEL_53:
    (*v111)(v1[17], v1[15]);

    v12 = v135;
    v2 = v119;
    v8 = v110;
    v10 = v105;
    v9 = i;
    if (i == v105)
    {
      goto LABEL_4;
    }

LABEL_5:
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_102;
    }

    sub_254132DF4(v8 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v9, v1[18], &qword_27F5B90E8, &qword_2542544F8);
    v13 = 0;
  }

  v61 = 0;
  while (1)
  {
    v62 = v61 + v58;
    v63 = __OFADD__(v61, v58) ? ((v61 + v58) >> 63) ^ 0x8000000000000000 : v61 + v58;
    if (__OFADD__(v61, v58))
    {
      break;
    }

    v64 = *(v20 + 2);
    if (v64 < v62)
    {
      v62 = *(v20 + 2);
    }

    v65 = v62 - v61;
    if (v62 < v61)
    {
      goto LABEL_95;
    }

    if (v61 < 0)
    {
      goto LABEL_96;
    }

    if (v64 == v65)
    {

      v66 = v20;
    }

    else
    {
      v66 = MEMORY[0x277D84F90];
      if (v62 != v61)
      {
        if (v65 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
          v66 = swift_allocObject();
          v73 = _swift_stdlib_malloc_size(v66);
          v74 = v73 - 32;
          if (v73 < 32)
          {
            v74 = v73 - 17;
          }

          v66[2] = v65;
          v66[3] = 2 * (v74 >> 4);
        }

        swift_arrayInitWithCopy();
      }
    }

    v67 = v1[6];
    v68 = *(v128 + 48);
    (*v125)(v67, v1[17], v1[15]);
    *(v67 + v68) = v66;
    v69 = v135;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_2541B0F18(0, v135[2] + 1, 1, v135);
    }

    v71 = v69[2];
    v70 = v69[3];
    if (v71 >= v70 >> 1)
    {
      v69 = sub_2541B0F18((v70 > 1), v71 + 1, 1, v69);
    }

    v72 = v1[6];
    v69[2] = v71 + 1;
    v135 = v69;
    result = sub_25417E6C8(v72, v69 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v71, &qword_27F5B90E8, &qword_2542544F8);
    v61 = v63;
    if (v63 >= v59)
    {
      goto LABEL_53;
    }
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}