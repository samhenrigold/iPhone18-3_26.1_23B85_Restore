uint64_t sub_24282C678(uint64_t a1)
{
  v2 = sub_242830758();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_24282C6C4(uint64_t a1)
{
  sub_242830758();

  return sub_2428B28C8();
}

uint64_t sub_24282C734(uint64_t a1)
{
  v2 = sub_24282F540();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24282C784(uint64_t a1)
{
  v2 = sub_24282F7E4();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_24282C7D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC3308);
  __swift_project_value_buffer(v10, qword_27ECC3308);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t sub_24282CAE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v0 - 8);
  v73 = v52 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v52 - v3;
  v72 = sub_2428B3558();
  v5 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2428B45F8();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2428B3568();
  v74 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3540, &qword_2428BCEE0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FB8, &qword_2428BB6D8);
  v16 = *(v60 - 8);
  v64 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v56 = 8 * v64;
  v18 = swift_allocObject();
  v57 = v18;
  *(v18 + 16) = xmmword_2428BC380;
  v19 = v18 + v17;
  *(v18 + v17) = 0;
  sub_2428B4578();
  sub_2428B36B8();
  v70 = *MEMORY[0x277CC9110];
  v20 = *(v5 + 104);
  v62 = v5 + 104;
  v59 = v20;
  (v20)(v7);
  v21 = v15;
  v22 = v10;
  v23 = v7;
  sub_2428B3578();
  v24 = *(v74 + 56);
  v74 += 56;
  v66 = v24;
  v61 = v4;
  v25 = v71;
  v24(v4, 1, 1, v71);
  v65 = sub_2428B3148();
  v26 = *(v65 - 8);
  v67 = *(v26 + 56);
  v68 = v26 + 56;
  v67(v73, 1, 1, v65);
  v63 = v19;
  v27 = v21;
  sub_2428B3178();
  v28 = v64;
  v54 = v19 + v64;
  v29 = v60;
  v55 = *(v60 + 48);
  *v54 = 1;
  v52[0] = v13;
  sub_2428B4578();
  v58 = v22;
  sub_2428B36B8();
  v69 = v23;
  v30 = v23;
  v31 = v70;
  v32 = v59;
  v59(v30, v70, v72);
  sub_2428B3578();
  v66(v61, 1, 1, v25);
  v33 = v67;
  v67(v73, 1, 1, v65);
  sub_2428B3178();
  v55 = 2 * v28;
  v53 = (v63 + 2 * v28);
  v54 = *(v29 + 48);
  *v53 = 2;
  sub_2428B4578();
  sub_2428B36B8();
  v32(v69, v31, v72);
  sub_2428B3578();
  v34 = v66;
  v66(v61, 1, 1, v71);
  v35 = v65;
  v33(v73, 1, 1, v65);
  sub_2428B3178();
  v36 = v63;
  v54 = v63 + v55 + v64;
  v37 = v60;
  v55 = *(v60 + 48);
  *v54 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  v38 = v59;
  v59(v69, v70, v72);
  sub_2428B3578();
  v39 = v61;
  v34(v61, 1, 1, v71);
  v67(v73, 1, 1, v35);
  v40 = v39;
  sub_2428B3178();
  v41 = v64;
  v55 = 4 * v64;
  v54 = *(v37 + 48);
  *(v36 + 4 * v64) = 4;
  sub_2428B4578();
  sub_2428B36B8();
  v38(v69, v70, v72);
  sub_2428B3578();
  v42 = v71;
  v43 = v66;
  v66(v40, 1, 1, v71);
  v67(v73, 1, 1, v65);
  sub_2428B3178();
  v54 = v63 + v55 + v41;
  v55 = *(v60 + 48);
  *v54 = 5;
  sub_2428B4578();
  sub_2428B36B8();
  v44 = v59;
  v59(v69, v70, v72);
  v52[1] = v27;
  sub_2428B3578();
  v43(v61, 1, 1, v42);
  v45 = v65;
  v46 = v67;
  v67(v73, 1, 1, v65);
  sub_2428B3178();
  v47 = v63;
  v54 = v63 + 6 * v64;
  v55 = *(v60 + 48);
  *v54 = 6;
  sub_2428B4578();
  sub_2428B36B8();
  v44(v69, v70, v72);
  sub_2428B3578();
  v48 = v61;
  v66(v61, 1, 1, v71);
  v49 = v73;
  v46(v73, 1, 1, v45);
  sub_2428B3178();
  *(v47 + v56 - v64) = 7;
  sub_2428B4578();
  sub_2428B36B8();
  v59(v69, v70, v72);
  sub_2428B3578();
  v66(v48, 1, 1, v71);
  v67(v49, 1, 1, v65);
  sub_2428B3178();
  v50 = sub_242821CCC(v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC3320 = v50;
  return result;
}

uint64_t (*static AttendeeEntity_v0.AttendeeEntityStatus_v0.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC17C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

CalendarLink::AttendeeEntity_v0::AttendeeEntityStatus_v0_optional __swiftcall AttendeeEntity_v0.AttendeeEntityStatus_v0.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24282D920(uint64_t a1)
{
  v2 = sub_24282BEBC();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_24282D990(uint64_t a1)
{
  v2 = sub_24282FB38();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_24282D9EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC3328);
  __swift_project_value_buffer(v10, qword_27ECC3328);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t sub_24282DD00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v0 - 8);
  v62 = &v41 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = &v41 - v3;
  v61 = sub_2428B3558();
  v4 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B36C8();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2428B45F8();
  MEMORY[0x28223BE20](v10 - 8);
  v60 = sub_2428B3568();
  v11 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3538, &unk_2428BCED0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FA8, &qword_2428BB6C8);
  v15 = *(v14 - 8);
  v49 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v44 = 4 * v49;
  v17 = swift_allocObject();
  v45 = v17;
  *(v17 + 16) = xmmword_2428BC390;
  v43 = *(v14 + 48);
  *(v17 + v16) = 0;
  v18 = v17 + v16;
  sub_2428B4578();
  sub_2428B36B8();
  v57 = *MEMORY[0x277CC9110];
  v59 = *(v4 + 104);
  v53 = v4 + 104;
  v19 = v6;
  v20 = v6;
  v21 = v61;
  v59(v20);
  v46 = v13;
  v22 = v19;
  sub_2428B3578();
  v58 = *(v11 + 56);
  v55 = v11 + 56;
  v23 = v56;
  v58(v56, 1, 1, v60);
  v54 = sub_2428B3148();
  v24 = *(v54 - 8);
  v50 = *(v24 + 56);
  v51 = v24 + 56;
  v50(v62, 1, 1, v54);
  v25 = v18;
  v48 = v18;
  sub_2428B3178();
  v26 = v49;
  v42 = (v25 + v49);
  v47 = v14;
  v43 = *(v14 + 48);
  *v42 = 1;
  sub_2428B4578();
  v52 = v9;
  sub_2428B36B8();
  v41 = v22;
  (v59)(v22, v57, v21);
  sub_2428B3578();
  v58(v23, 1, 1, v60);
  v27 = v54;
  v50(v62, 1, 1, v54);
  sub_2428B3178();
  v28 = 2 * v26;
  v43 = 2 * v26;
  v29 = v48;
  v42 = *(v14 + 48);
  *(v48 + v28) = 2;
  sub_2428B4578();
  sub_2428B36B8();
  v30 = v41;
  (v59)(v41, v57, v61);
  sub_2428B3578();
  v31 = v60;
  v58(v56, 1, 1, v60);
  v32 = v27;
  v33 = v50;
  v50(v62, 1, 1, v32);
  sub_2428B3178();
  v34 = v29;
  v35 = (v29 + v43 + v49);
  v49 = *(v47 + 48);
  *v35 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  v36 = v30;
  (v59)(v30, v57, v61);
  sub_2428B3578();
  v37 = v56;
  v58(v56, 1, 1, v31);
  v38 = v62;
  v33(v62, 1, 1, v54);
  sub_2428B3178();
  *(v34 + v44) = 4;
  sub_2428B4578();
  sub_2428B36B8();
  (v59)(v36, v57, v61);
  sub_2428B3578();
  v58(v37, 1, 1, v60);
  v33(v38, 1, 1, v54);
  sub_2428B3178();
  v39 = sub_242821CF0(v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC3340 = v39;
  return result;
}

uint64_t (*static AttendeeEntity_v0.Role_v0.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC17D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24282E740(uint64_t a1)
{
  v2 = sub_24282BF10();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_24282E7B0(uint64_t a1)
{
  v2 = sub_24282FF54();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_24282E80C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC3348);
  __swift_project_value_buffer(v10, qword_27ECC3348);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t sub_24282EB20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v0 - 8);
  v67 = v46 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = v46 - v3;
  v57 = sub_2428B3558();
  v4 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B36C8();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2428B45F8();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2428B3568();
  v13 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3530, &unk_2428BCEC0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F98, &qword_2428BB6B8);
  v59 = v16;
  v17 = *(v16 - 8);
  v54 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v51 = 4 * v54;
  v19 = swift_allocObject();
  v52 = v19;
  *(v19 + 16) = xmmword_2428BC390;
  v20 = v19 + v18;
  v50 = *(v16 + 48);
  *(v19 + v18) = 0;
  sub_2428B4578();
  sub_2428B36B8();
  v62 = *MEMORY[0x277CC9110];
  v21 = *(v4 + 104);
  v56 = v4 + 104;
  v66 = v21;
  v47 = v6;
  (v21)(v6);
  v22 = v15;
  v23 = v9;
  sub_2428B3578();
  v24 = *(v13 + 56);
  v61 = v13 + 56;
  v53 = v24;
  v25 = v55;
  v26 = v65;
  v24(v55, 1, 1, v65);
  v63 = sub_2428B3148();
  v27 = *(v63 - 8);
  v58 = *(v27 + 56);
  v64 = v27 + 56;
  v58(v67, 1, 1, v63);
  v60 = v20;
  sub_2428B3178();
  v28 = v54;
  v29 = (v20 + v54);
  v30 = v59;
  v31 = *(v59 + 48);
  v49 = v29;
  v50 = v31;
  *v29 = 1;
  v46[0] = v12;
  sub_2428B4578();
  sub_2428B36B8();
  v32 = v47;
  v33 = v57;
  v66(v47, v62, v57);
  sub_2428B3578();
  v53(v25, 1, 1, v26);
  v58(v67, 1, 1, v63);
  sub_2428B3178();
  v50 = 2 * v28;
  v34 = *(v30 + 48);
  v48 = (v60 + 2 * v28);
  v49 = v34;
  *v48 = 2;
  sub_2428B4578();
  v46[1] = v23;
  sub_2428B36B8();
  v35 = v32;
  v36 = v32;
  v37 = v62;
  v66(v36, v62, v33);
  v46[2] = v22;
  sub_2428B3578();
  v38 = v55;
  v39 = v53;
  v53(v55, 1, 1, v65);
  v40 = v58;
  v58(v67, 1, 1, v63);
  sub_2428B3178();
  v41 = v60;
  v42 = (v60 + v50 + v54);
  v54 = *(v59 + 48);
  *v42 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  v66(v35, v37, v57);
  sub_2428B3578();
  v39(v38, 1, 1, v65);
  v43 = v67;
  v40(v67, 1, 1, v63);
  sub_2428B3178();
  *(v41 + v51) = 4;
  sub_2428B4578();
  sub_2428B36B8();
  v66(v35, v62, v57);
  sub_2428B3578();
  v39(v38, 1, 1, v65);
  v58(v43, 1, 1, v63);
  sub_2428B3178();
  v44 = sub_242821D14(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC3360 = v44;
  return result;
}

uint64_t (*static AttendeeEntity_v0.Kind_v0.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC17E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

CalendarLink::AttendeeEntity_v0::Kind_v0_optional __swiftcall AttendeeEntity_v0.Kind_v0.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24282F540()
{
  result = qword_27ECC3960;
  if (!qword_27ECC3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3960);
  }

  return result;
}

unint64_t sub_24282F598()
{
  result = qword_27ECC3390;
  if (!qword_27ECC3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3390);
  }

  return result;
}

unint64_t sub_24282F5F0()
{
  result = qword_27ECC3398;
  if (!qword_27ECC3398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3398);
  }

  return result;
}

unint64_t sub_24282F648()
{
  result = qword_27ECC33A0;
  if (!qword_27ECC33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33A0);
  }

  return result;
}

unint64_t sub_24282F6E4()
{
  result = qword_27ECC33B8;
  if (!qword_27ECC33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33B8);
  }

  return result;
}

unint64_t sub_24282F738()
{
  result = qword_27ECC33C0;
  if (!qword_27ECC33C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33C0);
  }

  return result;
}

unint64_t sub_24282F78C()
{
  result = qword_27ECC33C8;
  if (!qword_27ECC33C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33C8);
  }

  return result;
}

unint64_t sub_24282F7E4()
{
  result = qword_27ECC33D0;
  if (!qword_27ECC33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33D0);
  }

  return result;
}

unint64_t sub_24282F880()
{
  result = qword_27ECC33E8;
  if (!qword_27ECC33E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33E8);
  }

  return result;
}

unint64_t sub_24282F8D8()
{
  result = qword_27ECC33F0;
  if (!qword_27ECC33F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33F0);
  }

  return result;
}

unint64_t sub_24282F930()
{
  result = qword_27ECC33F8;
  if (!qword_27ECC33F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC33F8);
  }

  return result;
}

unint64_t sub_24282F988()
{
  result = qword_27ECC3400;
  if (!qword_27ECC3400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3400);
  }

  return result;
}

unint64_t sub_24282F9E0()
{
  result = qword_27ECC3408;
  if (!qword_27ECC3408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3408);
  }

  return result;
}

unint64_t sub_24282FA38()
{
  result = qword_27ECC3410;
  if (!qword_27ECC3410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3410);
  }

  return result;
}

unint64_t sub_24282FA8C()
{
  result = qword_27ECC3418;
  if (!qword_27ECC3418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3418);
  }

  return result;
}

unint64_t sub_24282FAE0()
{
  result = qword_27ECC3420;
  if (!qword_27ECC3420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3420);
  }

  return result;
}

unint64_t sub_24282FB38()
{
  result = qword_27ECC3428;
  if (!qword_27ECC3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3428);
  }

  return result;
}

unint64_t sub_24282FBA8()
{
  result = qword_27ECC3430;
  if (!qword_27ECC3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3430);
  }

  return result;
}

unint64_t sub_24282FC00()
{
  result = qword_27ECC3438;
  if (!qword_27ECC3438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3438);
  }

  return result;
}

unint64_t sub_24282FC58()
{
  result = qword_27ECC3440;
  if (!qword_27ECC3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3440);
  }

  return result;
}

unint64_t sub_24282FCF4()
{
  result = qword_27ECC3458;
  if (!qword_27ECC3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3458);
  }

  return result;
}

unint64_t sub_24282FD4C()
{
  result = qword_27ECC3460;
  if (!qword_27ECC3460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3460);
  }

  return result;
}

unint64_t sub_24282FDA4()
{
  result = qword_27ECC3468;
  if (!qword_27ECC3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3468);
  }

  return result;
}

unint64_t sub_24282FDFC()
{
  result = qword_27ECC3470;
  if (!qword_27ECC3470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3470);
  }

  return result;
}

unint64_t sub_24282FE54()
{
  result = qword_27ECC3478;
  if (!qword_27ECC3478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3478);
  }

  return result;
}

unint64_t sub_24282FEA8()
{
  result = qword_27ECC3480;
  if (!qword_27ECC3480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3480);
  }

  return result;
}

unint64_t sub_24282FEFC()
{
  result = qword_27ECC3488;
  if (!qword_27ECC3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3488);
  }

  return result;
}

unint64_t sub_24282FF54()
{
  result = qword_27ECC3490;
  if (!qword_27ECC3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3490);
  }

  return result;
}

unint64_t sub_24282FFC4()
{
  result = qword_27ECC3498;
  if (!qword_27ECC3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3498);
  }

  return result;
}

unint64_t sub_24283001C()
{
  result = qword_27ECC34A0;
  if (!qword_27ECC34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34A0);
  }

  return result;
}

unint64_t sub_242830074()
{
  result = qword_27ECC34A8;
  if (!qword_27ECC34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34A8);
  }

  return result;
}

unint64_t sub_242830110()
{
  result = qword_27ECC34C0;
  if (!qword_27ECC34C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34C0);
  }

  return result;
}

unint64_t sub_242830168()
{
  result = qword_27ECC34C8;
  if (!qword_27ECC34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34C8);
  }

  return result;
}

unint64_t sub_2428301C0()
{
  result = qword_27ECC34D0;
  if (!qword_27ECC34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34D0);
  }

  return result;
}

unint64_t sub_242830218()
{
  result = qword_27ECC34D8;
  if (!qword_27ECC34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34D8);
  }

  return result;
}

unint64_t sub_242830270()
{
  result = qword_27ECC34E0;
  if (!qword_27ECC34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34E0);
  }

  return result;
}

unint64_t sub_2428302C4()
{
  result = qword_27ECC34E8;
  if (!qword_27ECC34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34E8);
  }

  return result;
}

unint64_t sub_242830318()
{
  result = qword_27ECC34F0;
  if (!qword_27ECC34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34F0);
  }

  return result;
}

unint64_t sub_242830370()
{
  result = qword_27ECC34F8;
  if (!qword_27ECC34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC34F8);
  }

  return result;
}

uint64_t sub_242830454(uint64_t a1)
{
  v2 = sub_24282BF64();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_2428304A4()
{
  result = qword_27ECC3500;
  if (!qword_27ECC3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3500);
  }

  return result;
}

unint64_t sub_2428304FC()
{
  result = qword_27ECC3508;
  if (!qword_27ECC3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3508);
  }

  return result;
}

unint64_t sub_242830554()
{
  result = qword_27ECC3510;
  if (!qword_27ECC3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3510);
  }

  return result;
}

uint64_t sub_2428305CC(uint64_t a1)
{
  v2 = sub_242830370();

  return MEMORY[0x28210C300](a1, v2);
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

uint64_t sub_242830680(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2428306C8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_242830758()
{
  result = qword_27ECC3528;
  if (!qword_27ECC3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3528);
  }

  return result;
}

void sub_2428307AC()
{
  v1 = sub_2428B35D8();
  v26 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  v24[1] = *(v0 + 56);
  sub_2428B2C68();
  if (v25 || (sub_2428B2C68(), v25))
  {
  }

  else
  {
    sub_2428B2C68();
    v21 = (*(v26 + 48))(v12, 1, v1);
    sub_2427D49D0(v12);
    if (v21 == 1)
    {
      goto LABEL_21;
    }
  }

  sub_2428B2C68();
  if (!v25)
  {
    sub_2428B2C68();
    if (!v25)
    {
      sub_2428B2C68();
      if (!v25)
      {
        sub_2428B2C68();
        v22 = v26;
        if (!(*(v26 + 48))(v10, 1, v1))
        {
          (*(v22 + 16))(v3, v10, v1);
          sub_2427D49D0(v10);
          sub_2428B3598();
          (*(v22 + 8))(v3, v1);
          goto LABEL_7;
        }

        sub_2427D49D0(v10);
LABEL_21:
        sub_2427CCDB0();
        swift_allocError();
        *v23 = 112;
        swift_willThrow();
        return;
      }
    }
  }

LABEL_7:
  sub_2428B3218();
  sub_2428B2C68();
  v13 = v25;
  sub_2428B2C68();
  v14 = v25;
  sub_2428B2C68();
  v15 = sub_2428B4608();
  if (!v13)
  {
    v16 = 0;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v16 = sub_2428B4608();

  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = sub_2428B4608();

LABEL_12:
  v18 = v26;
  if ((*(v26 + 48))(v7, 1, v1) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_2428B35A8();
    (*(v18 + 8))(v7, v1);
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CC59A0]) initWithName:v15 emailAddress:v16 phoneNumber:v17 url:v19];

  if (v20)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    __break(1u);
  }
}

uint64_t LocationSearchIntentRepresentation.init(searchTerm:eventID:startDate:endDate:sourceID:conferenceRoomNamesToExclude:includeStructuredLocations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unsigned __int8 a11)
{
  v34 = a7;
  v35 = a8;
  v31 = a5;
  v32 = a6;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v36 = a11;
  v33 = a10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v37 = 0;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2140, &unk_2428B7980);
  swift_allocObject();
  v26 = sub_2428B4358();
  *a9 = v26;
  v37 = 0;
  v38 = 0;
  swift_allocObject();
  v25 = sub_2428B4358();
  a9[1] = v25;
  v18 = sub_2428B3688();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  sub_2427F95E0(v17, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2148, &unk_2428B8730);
  swift_allocObject();
  v20 = sub_2428B4358();
  sub_242830FC0(v17);
  a9[2] = v20;
  v19(v17, 1, 1, v18);
  sub_2427F95E0(v17, v15);
  swift_allocObject();
  v21 = sub_2428B4358();
  sub_242830FC0(v17);
  a9[3] = v21;
  v37 = 0;
  v38 = 0;
  swift_allocObject();
  a9[4] = sub_2428B4358();
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3548, &unk_2428BCEE8);
  swift_allocObject();
  a9[5] = sub_2428B4358();
  LOBYTE(v37) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2150, &unk_2428B7990);
  swift_allocObject();
  a9[6] = sub_2428B4358();
  v37 = v27;
  v38 = v28;
  sub_2428B4388();
  v37 = v29;
  v38 = v30;
  sub_2428B4388();
  v22 = v31;
  sub_2427F95E0(v31, v17);
  sub_2427F95E0(v17, v15);
  sub_2428B4388();
  sub_242830FC0(v17);
  v23 = v32;
  sub_2427F95E0(v32, v17);
  sub_2427F95E0(v17, v15);
  sub_2428B4388();
  sub_242830FC0(v17);
  v37 = v34;
  v38 = v35;
  sub_2428B4388();
  v37 = v33;
  sub_2428B4388();
  LOBYTE(v37) = v36;
  sub_2428B4388();
  sub_242830FC0(v23);
  return sub_242830FC0(v22);
}

uint64_t sub_242830FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242831078()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B36C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2428B45F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B3568();
  __swift_allocate_value_buffer(v6, qword_27ECC3550);
  __swift_project_value_buffer(v6, qword_27ECC3550);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static OpenDateIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC17F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3550);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242831308()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3078();
  __swift_allocate_value_buffer(v10, qword_27ECC3568);
  __swift_project_value_buffer(v10, qword_27ECC3568);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3088();
}

uint64_t static OpenDateIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC17F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3568);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static OpenDateIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC17F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3568);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenDateIntent.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC17F8 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3078();
  __swift_project_value_buffer(v1, qword_27ECC3568);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242831834@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC17F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3568);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2428318F4(uint64_t a1)
{
  if (qword_27ECC17F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3568);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t OpenDateIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v2 = sub_2428B3298();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3580, &unk_2428BDEB0);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  MEMORY[0x28223BE20](v6 - 8);
  v26 = &v22 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v8 - 8);
  v25 = &v22 - v9;
  v10 = sub_2428B3558();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2428B36C8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_2428B45F8();
  MEMORY[0x28223BE20](v15 - 8);
  v23 = sub_2428B3568();
  v16 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2530, &qword_2428BD510);
  sub_2428B2958();
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3588, &qword_2428BD360);
  sub_2428B4578();
  sub_2428B36B8();
  v17 = *MEMORY[0x277CC9110];
  v18 = *(v11 + 104);
  v18(v13, v17, v10);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v18(v13, v17, v10);
  v19 = v25;
  sub_2428B3578();
  (*(v16 + 56))(v19, 0, 1, v23);
  v20 = sub_2428B2AE8();
  (*(*(v20 - 8) + 56))(v26, 1, 1, v20);
  (*(v28 + 104))(v27, *MEMORY[0x277CB9EF0], v29);
  (*(v31 + 104))(v30, *MEMORY[0x277CBA308], v32);
  result = sub_2428B2E98();
  v24[1] = result;
  return result;
}

uint64_t OpenDateIntent.viewOpener.setter(void *a1)
{
  sub_2427CBD84(a1, v3);
  sub_2428B28F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*OpenDateIntent.viewOpener.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

uint64_t sub_2428320B8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2428B3688();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
  (*(v4 + 8))(v9, v3);
}

uint64_t OpenDateIntent.target.setter(uint64_t a1)
{
  v2 = sub_2428B3688();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_2428B2DD8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*OpenDateIntent.target.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static OpenDateIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3590, &qword_2428BCFB8);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3598, &qword_2428BCFC0);
  MEMORY[0x28223BE20](v1);
  sub_24283252C();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC35A8, &qword_2428BCFF0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

unint64_t sub_24283252C()
{
  result = qword_27ECC35A0;
  if (!qword_27ECC35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC35A0);
  }

  return result;
}

uint64_t OpenDateIntent.perform()(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = sub_2428B3688();
  *(v2 + 104) = v3;
  *(v2 + 112) = *(v3 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *v1;
  sub_2428B4758();
  *(v2 + 144) = sub_2428B4748();
  v5 = sub_2428B4728();
  *(v2 + 152) = v5;
  *(v2 + 160) = v4;

  return MEMORY[0x2822009F8](sub_24283267C, v5, v4);
}

uint64_t sub_24283267C()
{
  v1 = sub_2428B43D8();
  v0[5] = v1;
  v0[6] = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740], MEMORY[0x277CF7728]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v1)
  {
    sub_2428B28E8();
    v3 = v0[10];
    v4 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v3);
    sub_2428B2DC8();
    v9 = (*(v4 + 16) + **(v4 + 16));
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_24283292C;
    v6 = v0[15];

    return v9(v6, v3, v4);
  }

  else
  {

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_24283292C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  (*(v2[14] + 8))(v2[15], v2[13]);
  v3 = v2[20];
  v4 = v2[19];
  if (v0)
  {
    v5 = sub_242832B38;
  }

  else
  {
    v5 = sub_242832AB4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_242832AB4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_2428B2C28();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_242832B38()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_242832BB0()
{
  result = qword_280CDDEB0;
  if (!qword_280CDDEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEB0);
  }

  return result;
}

unint64_t sub_242832C08()
{
  result = qword_280CDDEB8;
  if (!qword_280CDDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEB8);
  }

  return result;
}

uint64_t sub_242832C94@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC17F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3550);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242832D3C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3590, &qword_2428BCFB8);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3598, &qword_2428BCFC0);
  MEMORY[0x28223BE20](v3);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC35A8, &qword_2428BCFF0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_242832ECC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return OpenDateIntent.perform()(a1);
}

uint64_t SourceEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  *a1 = result;
  return result;
}

uint64_t SourceEntityQuery.entities(for:)(uint64_t a1)
{
  v2[4] = a1;
  v3 = sub_2428B3558();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_2428B36C8();
  v2[8] = swift_task_alloc();
  sub_2428B45F8();
  v2[9] = swift_task_alloc();
  sub_2428B3568();
  v2[10] = swift_task_alloc();
  v4 = sub_2428B3C08();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *v1;
  v2[13] = v5;
  v2[14] = v6;
  sub_2428B4758();
  v2[15] = sub_2428B4748();
  v8 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_2428331EC, v8, v7);
}

uint64_t sub_2428331EC()
{

  result = sub_2427F4300();
  v2 = result;
  v3 = v0[4];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v29 = (v0[12] + 8);
    v30 = (v0[6] + 104);
    v6 = v3 + 40;
    v31 = MEMORY[0x277D84F90];
    v27 = *MEMORY[0x277CC9110];
    v28 = v3 + 40;
    do
    {
      v7 = v6 + 16 * v5;
      v8 = v5;
      while (1)
      {
        if (v8 >= v4)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        v5 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_20;
        }

        sub_2428B3218();
        v9 = sub_2428B4608();
        v10 = [v2 sourceWithIdentifier_];

        if (v10)
        {
          break;
        }

        ++v8;
        v7 += 16;
        if (v5 == v4)
        {
          goto LABEL_16;
        }
      }

      v26 = v0[11];
      v20 = v0[7];
      v21 = v0[5];
      v22 = v0[13];
      v23 = v10;
      sub_2428B3C18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
      sub_2428B4578();
      sub_2428B36B8();
      (*v30)(v20, v27, v21);
      sub_2428B3578();
      v11 = sub_2428B2D68();
      v12 = sub_2428B3BE8();
      v24 = v13;
      v25 = v12;
      v14 = sub_2428B3BD8();
      v0[2] = sub_2428B3BF8();
      v0[3] = v15;
      sub_2428B2C78();

      (*v29)(v22, v26);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2427F7D34(0, *(v31 + 16) + 1, 1, v31);
        v31 = result;
      }

      v17 = *(v31 + 16);
      v16 = *(v31 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_2427F7D34((v16 > 1), v17 + 1, 1, v31);
        v31 = result;
      }

      *(v31 + 16) = v17 + 1;
      v18 = (v31 + 32 * v17);
      v18[4] = v25;
      v18[5] = v24;
      v18[6] = v14;
      v18[7] = v11;
      v6 = v28;
    }

    while (v5 != v4);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

LABEL_16:

  v19 = v0[1];

  return v19(v31);
}

uint64_t sub_2428335D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427F96EC;

  return SourceEntityQuery.entities(for:)(a1);
}

uint64_t sub_242833664(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_242834184();
  *v5 = v2;
  v5[1] = sub_2427DC6B4;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t SourceEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a1;
  v3[9] = a2;
  v4 = sub_2428B3558();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  sub_2428B36C8();
  v3[13] = swift_task_alloc();
  sub_2428B45F8();
  v3[14] = swift_task_alloc();
  sub_2428B3568();
  v3[15] = swift_task_alloc();
  v5 = sub_2428B3C08();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v2;
  v3[18] = v6;
  v3[19] = v7;
  sub_2428B4758();
  v3[20] = sub_2428B4748();
  v9 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_2428338F0, v9, v8);
}

uint64_t sub_2428338F0()
{

  v36 = sub_2427F4300();
  v1 = [v36 sourcesEnabledForEntityType_];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    sub_242833EF8();
    v4 = sub_2428B46C8();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v46 = v2;
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2428B49C8())
  {
    v6 = 0;
    v42 = i;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245D1B5D0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v0[8];
      v11 = v0[9];
      v12 = [v7 title];
      v13 = sub_2428B4618();
      v15 = v14;

      v0[2] = v13;
      v0[3] = v15;
      v0[4] = v10;
      v0[5] = v11;
      sub_242829AD4();
      LOBYTE(v12) = sub_2428B4908();

      if (v12)
      {
        sub_2428B4AA8();
        sub_2428B4AD8();
        sub_2428B4AE8();
        sub_2428B4AB8();
      }

      else
      {
      }

      ++v6;
      if (v9 == v42)
      {
        v16 = v46;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_21:

  if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v17 = *(v16 + 16);
  if (v17)
  {
LABEL_24:
    v18 = 0;
    v41 = v16 & 0xC000000000000001;
    v38 = (v0[17] + 8);
    v39 = (v0[11] + 104);
    v19 = MEMORY[0x277D84F90];
    v37 = *MEMORY[0x277CC9110];
    v40 = v16;
    while (1)
    {
      if (v41)
      {
        v20 = MEMORY[0x245D1B5D0](v18, v16);
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v18 >= *(v16 + 16))
        {
          goto LABEL_37;
        }

        v20 = *(v16 + 8 * v18 + 32);
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          v17 = sub_2428B49C8();
          if (!v17)
          {
            break;
          }

          goto LABEL_24;
        }
      }

      v45 = v21;
      v22 = v0[18];
      v44 = v0[16];
      v23 = v0[12];
      v24 = v0[10];
      v43 = v20;
      sub_2428B3C18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
      sub_2428B4578();
      sub_2428B36B8();
      (*v39)(v23, v37, v24);
      sub_2428B3578();
      v25 = sub_2428B2D68();
      v26 = sub_2428B3BE8();
      v28 = v27;
      v29 = sub_2428B3BD8();
      v0[6] = sub_2428B3BF8();
      v0[7] = v30;
      sub_2428B2C78();

      (*v38)(v22, v44);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2427F7D34(0, *(v19 + 2) + 1, 1, v19);
      }

      v32 = *(v19 + 2);
      v31 = *(v19 + 3);
      v16 = v40;
      if (v32 >= v31 >> 1)
      {
        v19 = sub_2427F7D34((v31 > 1), v32 + 1, 1, v19);
      }

      *(v19 + 2) = v32 + 1;
      v33 = &v19[32 * v32];
      *(v33 + 4) = v26;
      *(v33 + 5) = v28;
      *(v33 + 6) = v29;
      *(v33 + 7) = v25;
      ++v18;
      if (v45 == v17)
      {
        goto LABEL_40;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_40:

  v34 = v0[1];

  return v34(v19);
}

uint64_t sub_242833E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2427E2738;

  return SourceEntityQuery.entities(matching:)(a2, a3);
}

unint64_t sub_242833EF8()
{
  result = qword_27ECC35C8;
  if (!qword_27ECC35C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECC35C8);
  }

  return result;
}

unint64_t sub_242833F48()
{
  result = qword_280CDDD40;
  if (!qword_280CDDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD40);
  }

  return result;
}

unint64_t sub_242833FA0()
{
  result = qword_280CDDD38;
  if (!qword_280CDDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD38);
  }

  return result;
}

unint64_t sub_242833FF8()
{
  result = qword_280CDDF20;
  if (!qword_280CDDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF20);
  }

  return result;
}

unint64_t sub_242834050()
{
  result = qword_280CDDD48;
  if (!qword_280CDDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD48);
  }

  return result;
}

unint64_t sub_2428340A4()
{
  result = qword_280CDE3B0;
  if (!qword_280CDE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3B0);
  }

  return result;
}

unint64_t sub_2428340FC()
{
  result = qword_27ECC35D8;
  if (!qword_27ECC35D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ECC35E0, qword_2428BD1D0);
    sub_2428340A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC35D8);
  }

  return result;
}

unint64_t sub_242834184()
{
  result = qword_27ECC4280;
  if (!qword_27ECC4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4280);
  }

  return result;
}

uint64_t sub_242834204()
{
  v0 = sub_2428B3568();
  __swift_allocate_value_buffer(v0, qword_27ECC35F0);
  __swift_project_value_buffer(v0, qword_27ECC35F0);
  return sub_2428B3548();
}

uint64_t static FetchTransferableEventsInRangeIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1800 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC35F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24283434C(uint64_t *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  swift_unknownObjectRetain();
  sub_2428B28F8();
}

uint64_t FetchTransferableEventsInRangeIntent.eventStoreProvider.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*FetchTransferableEventsInRangeIntent.eventStoreProvider.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t sub_242834504(id *a1, uint64_t *a2)
{
  v2 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  v3 = v2;
  sub_2428B28F8();
}

void FetchTransferableEventsInRangeIntent.reminderStoreWrapper.setter(void *a1)
{
  v1 = a1;
  sub_2428B28F8();
}

uint64_t (*FetchTransferableEventsInRangeIntent.reminderStoreWrapper.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t sub_2428346B4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  v3 = v2;
  sub_2428B28F8();
}

void FetchTransferableEventsInRangeIntent.contactStore.setter(void *a1)
{
  v1 = a1;
  sub_2428B28F8();
}

uint64_t (*FetchTransferableEventsInRangeIntent.contactStore.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

uint64_t FetchTransferableEventsInRangeIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = sub_2428B3298();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3580, &unk_2428BDEB0);
  v38 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v34 = v23 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - v8;
  v10 = sub_2428B3568();
  v32 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3608, &qword_2428BD350);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_2428B2948();
  a1[1] = sub_2428B2918();
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3610, &qword_2428BD358);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_2428B2948();
  a1[2] = sub_2428B2918();
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3588, &qword_2428BD360);
  sub_2428B3548();
  v12 = *(v11 + 56);
  v31 = v11 + 56;
  v33 = v12;
  v12(v9, 1, 1, v10);
  v13 = sub_2428B2AE8();
  v14 = *(v13 - 8);
  v29 = *(v14 + 56);
  v30 = v14 + 56;
  v15 = v6;
  v29(v6, 1, 1, v13);
  v25 = *MEMORY[0x277CB9EF0];
  v16 = *(v38 + 104);
  v38 += 104;
  v27 = v16;
  v17 = v34;
  v16(v34);
  v24 = *MEMORY[0x277CBA308];
  v18 = v36;
  v35 = *(v35 + 104);
  v19 = v37;
  (v35)(v36);
  v20 = sub_2428B2E98();
  v21 = v28;
  v28[3] = v20;
  sub_2428B3548();
  v33(v9, 1, 1, v32);
  v29(v15, 1, 1, v13);
  v27(v17, v25, v26);
  (v35)(v18, v24, v19);
  result = sub_2428B2E98();
  v21[4] = result;
  return result;
}

uint64_t FetchTransferableEventsInRangeIntent.perform()(uint64_t a1)
{
  *(v2 + 80) = a1;
  v3 = sub_2428B3688();
  *(v2 + 88) = v3;
  *(v2 + 96) = *(v3 - 8);
  *(v2 + 104) = swift_task_alloc();
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_242834E2C, 0, 0);
}

uint64_t sub_242834E2C()
{
  v1 = sub_2427F4470();
  v2 = v0[13];
  v3 = v1;
  v4 = v0[11];
  v5 = v0[12];
  v6 = [objc_allocWithZone(MEMORY[0x277CC59F0]) initWithEventStore:v1 visibilityChangedCallback:0 queue:0];
  sub_2428B2DC8();
  v7 = sub_2428B3658();
  v8 = *(v5 + 8);
  v8(v2, v4);
  sub_2428B2DC8();
  v9 = sub_2428B3658();
  v8(v2, v4);
  v10 = [v6 visibleCalendars];
  if (!v10)
  {
    sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
    sub_2428B46C8();
    v10 = sub_2428B46B8();
  }

  v11 = [v3 predicateForEventsWithStartDate:v7 endDate:v9 calendars:v10];

  v12 = [v3 eventsMatchingPredicate_];
  sub_242822BFC(0, &qword_27ECC2700, 0x277CC5A28);
  v13 = sub_2428B46C8();

  sub_2428B28E8();
  v14 = v0[7];
  sub_2428B28E8();
  v15 = v0[8];
  v16 = sub_242827F98(v13, v14, v15);

  v0[9] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3620, &unk_2428BD370);
  sub_24283524C();
  sub_2428B2C08();

  v17 = v0[1];

  return v17();
}

uint64_t sub_2428350E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1800 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC35F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242835194(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return FetchTransferableEventsInRangeIntent.perform()(a1);
}

unint64_t sub_24283524C()
{
  result = qword_27ECC3628;
  if (!qword_27ECC3628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3620, &unk_2428BD370);
    sub_2428352D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3628);
  }

  return result;
}

unint64_t sub_2428352D0()
{
  result = qword_280CDDBD0;
  if (!qword_280CDDBD0)
  {
    type metadata accessor for TransferableEventEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDBD0);
  }

  return result;
}

unint64_t sub_24283532C()
{
  result = qword_280CDDAB8;
  if (!qword_280CDDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDAB8);
  }

  return result;
}

unint64_t sub_242835384()
{
  result = qword_280CDDAC0;
  if (!qword_280CDDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDAC0);
  }

  return result;
}

unint64_t sub_24283545C()
{
  result = qword_27ECC3638;
  if (!qword_27ECC3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3638);
  }

  return result;
}

unint64_t sub_2428354C0()
{
  result = qword_27ECC3640;
  if (!qword_27ECC3640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3648, &qword_2428BD4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3640);
  }

  return result;
}

id EKEvent.entityIdentifier.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3240, &qword_2428BBF00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_2428B3BB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isIntegrationEvent])
  {
    if ([v0 isReminderIntegrationEvent])
    {
      result = [objc_opt_self() reminderEntityIdentifierForIntegrationEvent_];
      if (!result)
      {
        return result;
      }

      v9 = result;
      v10 = sub_2428B4618();

      return v10;
    }

    return 0;
  }

  v11 = v0;
  sub_2428B3BC8();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2427E0980(v3, &qword_27ECC3240, &qword_2428BBF00);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = sub_2428B3B08();
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_242835730(uint64_t a1)
{
  if ([objc_opt_self() reminderEntityAnnotationForIntegrationEvent_])
  {
    sub_2428B4918();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_2428B41D8();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2427E0980(v5, &qword_27ECC3650, &qword_2428BD4D0);
    return 0;
  }
}

uint64_t OpenEventDetailsIntent.init(target:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  OpenEventDetailsIntent.init()(&v11);
  v4 = v12;
  *a2 = v11;
  a2[1] = v4;
  v5 = a1[7];
  v17 = a1[6];
  v18 = v5;
  v6 = a1[9];
  v19 = a1[8];
  v20 = v6;
  v7 = a1[3];
  v13 = a1[2];
  v14 = v7;
  v8 = a1[5];
  v15 = a1[4];
  v16 = v8;
  v9 = a1[1];
  v11 = *a1;
  v12 = v9;
  return sub_2428B2DD8();
}

uint64_t sub_24283589C()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B36C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2428B45F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B3568();
  __swift_allocate_value_buffer(v6, qword_27ECC3660);
  __swift_project_value_buffer(v6, qword_27ECC3660);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static OpenEventDetailsIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1808 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3660);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242835B2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3078();
  __swift_allocate_value_buffer(v10, qword_27ECC3678);
  __swift_project_value_buffer(v10, qword_27ECC3678);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3088();
}

uint64_t static OpenEventDetailsIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1810 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3678);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static OpenEventDetailsIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC1810 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3678);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenEventDetailsIntent.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1810 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3078();
  __swift_project_value_buffer(v1, qword_27ECC3678);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242836058@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1810 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3678);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242836118(uint64_t a1)
{
  if (qword_27ECC1810 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3678);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t OpenEventDetailsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v60 = a1;
  v55 = sub_2428B3298();
  v59 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v57 = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v40 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v56 = v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = v36 - v9;
  v45 = sub_2428B3558();
  v10 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2428B36C8();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2428B45F8();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2428B3568();
  v51 = v19;
  v58 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2530, &qword_2428BD510);
  sub_2428B2958();
  v71 = 0u;
  v72 = 0u;
  *&v73 = 0;
  sub_2428B2948();
  *v60 = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D10, &qword_2428BB320);
  v36[1] = v18;
  sub_2428B4578();
  v41 = v15;
  sub_2428B36B8();
  v44 = *MEMORY[0x277CC9110];
  v20 = *(v10 + 104);
  v46 = v10 + 104;
  v47 = v20;
  v37 = v12;
  (v20)(v12);
  sub_2428B3588();
  v21 = *(v58 + 56);
  v58 += 56;
  v52 = v21;
  v22 = v42;
  v21(v42, 1, 1, v19);
  v23 = sub_2428B4568();
  v71 = 0uLL;
  v24 = *(v23 - 8);
  v38 = *(v24 + 56);
  v39 = v24 + 56;
  v38(v43, 1, 1, v23);
  v49 = sub_2428B2AE8();
  v25 = *(v49 - 8);
  v48 = *(v25 + 56);
  v50 = v25 + 56;
  v48(v56, 1, 1, v49);
  v54 = *MEMORY[0x277CBA308];
  v26 = *(v59 + 104);
  v59 += 104;
  v53 = v26;
  v27 = v55;
  v26(v57);
  v60[1] = sub_2428B2EB8();
  sub_2428B4578();
  sub_2428B36B8();
  v28 = v37;
  v47(v37, v44, v45);
  sub_2428B3588();
  v52(v22, 1, 1, v51);
  v71 = 0uLL;
  v38(v43, 1, 1, v23);
  v48(v56, 1, 1, v49);
  v53(v57, v54, v27);
  v60[2] = sub_2428B2EB8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2540, &qword_2428B5AE0);
  sub_2428B4578();
  sub_2428B36B8();
  v29 = v44;
  v30 = v45;
  v31 = v47;
  v47(v28, v44, v45);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v31(v28, v29, v30);
  v32 = v42;
  sub_2428B3578();
  v52(v32, 0, 1, v51);
  sub_2427CBC50(&v71);
  v67 = v77;
  v68 = v78;
  v69 = v79;
  v70 = v80;
  v63 = v73;
  v64 = v74;
  v65 = v75;
  v66 = v76;
  v61 = v71;
  v62 = v72;
  v34 = v48;
  v33 = v49;
  v48(v56, 1, 1, v49);
  v34(v40, 1, 1, v33);
  v53(v57, v54, v55);
  sub_2427C2774();
  result = sub_2428B2E68();
  v60[3] = result;
  return result;
}

uint64_t sub_242836B44(uint64_t a1, uint64_t *a2)
{
  sub_2427CBD84(a1, v4);
  sub_2427CBD84(v4, &v3);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B28F8();
  __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t OpenEventDetailsIntent.viewOpener.setter(void *a1)
{
  sub_2427CBD84(a1, v3);
  sub_2428B28F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*OpenEventDetailsIntent.viewOpener.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t sub_242836CF0(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t (*OpenEventDetailsIntent.title.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242836E78(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t (*OpenEventDetailsIntent.caption.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

double sub_242836FF0@<D0>(_OWORD *a1@<X8>)
{
  sub_2428B2DC8();
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v12;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24283704C(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[7];
  v3 = a1[5];
  v19 = a1[6];
  v20 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v21 = a1[8];
  v22 = v5;
  v6 = a1[3];
  v7 = a1[1];
  v15 = a1[2];
  v16 = v6;
  v8 = a1[3];
  v9 = a1[5];
  v17 = a1[4];
  v18 = v9;
  v10 = a1[1];
  v14[0] = *a1;
  v14[1] = v10;
  v13[16] = v19;
  v13[17] = v4;
  v11 = a1[9];
  v13[18] = v21;
  v13[19] = v11;
  v13[12] = v15;
  v13[13] = v8;
  v13[14] = v17;
  v13[15] = v3;
  v13[10] = v14[0];
  v13[11] = v7;
  sub_2427CD4FC(v14, v13);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t (*OpenEventDetailsIntent.target.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static OpenEventDetailsIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3690, &qword_2428BD518);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3698, &qword_2428BD520);
  MEMORY[0x28223BE20](v1);
  sub_242822644();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC36A0, &qword_2428BD550);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t OpenEventDetailsIntent.perform()(uint64_t a1)
{
  v2[92] = a1;
  v2[93] = *v1;
  v2[94] = v1[3];
  sub_2428B4758();
  v2[95] = sub_2428B4748();
  v4 = sub_2428B4728();
  v2[96] = v4;
  v2[97] = v3;

  return MEMORY[0x2822009F8](sub_242837414, v4, v3);
}

uint64_t sub_242837414()
{
  v1 = sub_2428B43D8();
  *(v0 + 680) = v1;
  *(v0 + 688) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740], MEMORY[0x277CF7728]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 656));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 656));
  if (v1)
  {
    sub_2428B28E8();
    v3 = *(v0 + 720);
    v4 = *(v0 + 728);
    __swift_project_boxed_opaque_existential_1((v0 + 696), v3);
    sub_2428B2DC8();
    v5 = *(v0 + 128);
    *(v0 + 272) = *(v0 + 112);
    *(v0 + 288) = v5;
    v6 = *(v0 + 160);
    *(v0 + 304) = *(v0 + 144);
    *(v0 + 320) = v6;
    v7 = *(v0 + 64);
    *(v0 + 208) = *(v0 + 48);
    *(v0 + 224) = v7;
    v8 = *(v0 + 96);
    *(v0 + 240) = *(v0 + 80);
    *(v0 + 256) = v8;
    v9 = *(v0 + 32);
    *(v0 + 176) = *(v0 + 16);
    *(v0 + 192) = v9;
    *(v0 + 800) = 0;
    v13 = (*(v4 + 24) + **(v4 + 24));
    v10 = swift_task_alloc();
    *(v0 + 784) = v10;
    *v10 = v0;
    v10[1] = sub_2427E4EC0;

    return v13(v0 + 176, v0 + 800, v3, v4);
  }

  else
  {

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t (*sub_24283774C(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t (*sub_242837828(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

unint64_t sub_24283789C(uint64_t a1)
{
  result = sub_2428378C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2428378C4()
{
  result = qword_27ECC36A8;
  if (!qword_27ECC36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC36A8);
  }

  return result;
}

unint64_t sub_24283791C()
{
  result = qword_27ECC36B0;
  if (!qword_27ECC36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC36B0);
  }

  return result;
}

uint64_t (*sub_2428379EC(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

unint64_t sub_242837A68()
{
  result = qword_280CDDBE0;
  if (!qword_280CDDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDBE0);
  }

  return result;
}

unint64_t sub_242837AC0()
{
  result = qword_280CDDBE8;
  if (!qword_280CDDBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDBE8);
  }

  return result;
}

uint64_t sub_242837B4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1808 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3660);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242837BF4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3690, &qword_2428BD518);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3698, &qword_2428BD520);
  MEMORY[0x28223BE20](v3);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC36A0, &qword_2428BD550);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_242837D8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return OpenEventDetailsIntent.perform()(a1);
}

uint64_t TransferableSourceEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  *a1 = result;
  return result;
}

uint64_t TransferableSourceEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_242837EF0, 0, 0);
}

id sub_242837EF0()
{
  result = sub_2427F45EC();
  v2 = result;
  v13 = 0;
  v3 = 0;
  v4 = *(v0 + 16);
  v15 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v5 = *(v4 + 16);
  v6 = v4 + 40;
  v14 = v6;
LABEL_2:
  v7 = v6 + 16 * v3;
  while (v5 != v3)
  {
    if (v3 >= v5)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_14;
    }

    sub_2428B3218();
    v9 = sub_2428B4608();
    v10 = [v2 sourceWithIdentifier_];

    v7 += 16;
    ++v3;
    if (v10)
    {
      MEMORY[0x245D1B200](result);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2428B46E8();
      }

      result = sub_2428B4708();
      v15 = v16;
      v3 = v8;
      v6 = v14;
      goto LABEL_2;
    }
  }

  v11 = sub_2428380E4(v15);

  v12 = *(v0 + 8);

  return v12(v11);
}

void *sub_2428380E4(unint64_t a1)
{
  v2 = type metadata accessor for TransferableSourceEntity(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2428B49C8())
  {
    v7 = 0;
    v16 = a1 & 0xC000000000000001;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v16)
      {
        v9 = MEMORY[0x245D1B5D0](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v9 = *(a1 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v17[3] = sub_2428B3C08();
      v17[4] = sub_242838A0C(&qword_27ECC3708, MEMORY[0x277CF7B98], MEMORY[0x277CF7B90]);
      __swift_allocate_boxed_opaque_existential_1(v17);
      v12 = v10;
      sub_2428B3C18();
      sub_2428B3E38();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2427F7E40(0, v8[2] + 1, 1, v8);
      }

      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        v8 = sub_2427F7E40((v13 > 1), v14 + 1, 1, v8);
      }

      v8[2] = v14 + 1;
      sub_242838A54(v5, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14);
      ++v7;
      if (v11 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_242838354()
{
  v1 = sub_2427F45EC();
  v2 = [v1 sources];
  sub_242833EF8();
  v3 = sub_2428B46C8();

  v4 = sub_2428380E4(v3);

  v5 = *(v0 + 8);

  return v5(v4);
}

unint64_t sub_242838458()
{
  result = qword_27ECC36D0;
  if (!qword_27ECC36D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC36D0);
  }

  return result;
}

unint64_t sub_2428384B0()
{
  result = qword_27ECC36D8;
  if (!qword_27ECC36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC36D8);
  }

  return result;
}

uint64_t sub_24283854C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427F96EC;

  return TransferableSourceEntityQuery.entities(for:)(a1);
}

uint64_t sub_2428385E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2428389B8();
  *v5 = v2;
  v5[1] = sub_2427CD274;

  return MEMORY[0x28210C0E8](a1, a2, v6);
}

uint64_t sub_242838694(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2428386B8, 0, 0);
}

uint64_t sub_2428386B8()
{
  v1 = sub_2427F45EC();
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = [v1 sources];
  sub_242833EF8();
  v5 = sub_2428B46C8();

  v6 = sub_2428380E4(v5);

  *v2 = v6;
  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_2428387A0()
{
  result = qword_27ECC36E0;
  if (!qword_27ECC36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC36E0);
  }

  return result;
}

unint64_t sub_242838840()
{
  result = qword_27ECC36F0;
  if (!qword_27ECC36F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC36F8, qword_2428BD7F8);
    sub_242838A0C(&qword_27ECC20C8, type metadata accessor for TransferableSourceEntity, &protocol conformance descriptor for TransferableSourceEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC36F0);
  }

  return result;
}

uint64_t sub_2428388F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2427DD178();
  *v5 = v2;
  v5[1] = sub_2427DC6B4;

  return MEMORY[0x28210B618](a1, a2, v6);
}

unint64_t sub_2428389B8()
{
  result = qword_27ECC3700;
  if (!qword_27ECC3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3700);
  }

  return result;
}

uint64_t sub_242838A0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242838A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferableSourceEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 CalendarEntity.init(_:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2428B3DB8();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  sub_2428B3DC8();
  CalendarEntity.init(_:)(v6, v10);

  v8 = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v8;
  *(a2 + 64) = v10[4];
  result = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = result;
  return result;
}

id CalendarEntity.ekCalendar.getter()
{
  sub_2428B28E8();
  result = [v4 eventStore];
  if (result)
  {
    v1 = result;
    swift_unknownObjectRelease();
    v2 = sub_2428B4608();
    v3 = [v1 calendarWithIdentifier_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242838C38()
{
  v0 = sub_2428B3338();
  __swift_allocate_value_buffer(v0, qword_27ECC3710);
  __swift_project_value_buffer(v0, qword_27ECC3710);
  return sub_2428B3318();
}

uint64_t static CalendarEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1818 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3710);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CalendarEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27ECC1818 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3710);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CalendarEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1818 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3338();
  __swift_project_value_buffer(v1, qword_27ECC3710);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242838EF0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1818 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3710);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242838FB0(uint64_t a1)
{
  if (qword_27ECC1818 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3710);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_2428390AC(uint64_t *a1, _OWORD *a2)
{
  v2 = a2[1];
  v3 = a2[3];
  v14 = a2[2];
  v15 = v3;
  v4 = a2[3];
  v16 = a2[4];
  v5 = a2[1];
  v13[0] = *a2;
  v13[1] = v5;
  v10 = v14;
  v11 = v4;
  v12 = a2[4];
  v6 = *a1;
  v8 = v13[0];
  v9 = v2;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2427E35A0(v13, v17);
  sub_24283BB80(v6);
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v12;
  v17[0] = v8;
  v17[1] = v9;
  return sub_2427E3484(v17);
}

uint64_t CalendarEntity.eventStoreProvider.setter(uint64_t a1)
{
  swift_getObjectType();

  return sub_24283BB80(a1);
}

uint64_t (*CalendarEntity.eventStoreProvider.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t sub_242839234()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  qword_280CDE5C8 = result;
  return result;
}

uint64_t static CalendarEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_280CDE660 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_280CDE5C8;

  return sub_2428B2F38();
}

uint64_t CalendarEntity.id.getter()
{
  v1 = *(v0 + 8);
  sub_2428B3218();
  return v1;
}

uint64_t CalendarEntity.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CalendarEntity.externalID.getter()
{
  v1 = *(v0 + 24);
  sub_2428B3218();
  return v1;
}

uint64_t CalendarEntity.externalID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_2428394E8(void *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B3218();
  sub_2428B2C78();
}

uint64_t (*CalendarEntity.title.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_2428396C4(void *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B3218();
  sub_2428B2C78();
}

uint64_t (*CalendarEntity.color.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242839890(char *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B3218();
  sub_2428B2C78();
}

uint64_t (*CalendarEntity.sharingType.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CBEA8;
}

uint64_t sub_242839A30(uint64_t *a1, uint64_t *a2)
{
  sub_24283C3FC(*a1, a1[1], a1[2], a1[3]);
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B3218();
  sub_2428B2C78();
}

uint64_t (*CalendarEntity.source.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

void CalendarEntity.init(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v89 = a1;
  v81 = a2;
  v2 = sub_2428B3C08();
  v82 = *(v2 - 8);
  v83 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v70 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v69 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3750, &qword_2428BD910);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v80 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3758, &qword_2428BD918);
  MEMORY[0x28223BE20](v10 - 8);
  v79 = &v64 - v11;
  v12 = sub_2428B3558();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2428B36C8();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_2428B45F8();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_2428B3568();
  MEMORY[0x28223BE20](v18 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v90 = 0u;
  v91 = 0u;
  v92 = 0;
  sub_2428B2948();
  v87 = sub_2428B2918();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
  sub_2428B4578();
  sub_2428B36B8();
  v20 = *MEMORY[0x277CC9110];
  v21 = *(v13 + 104);
  v21(v15, v20, v12);
  sub_2428B3578();
  v66 = v19;
  v84 = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v21(v15, v20, v12);
  sub_2428B3578();
  v86 = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3768, &qword_2428BD920);
  sub_2428B4578();
  sub_2428B36B8();
  v21(v15, v20, v12);
  sub_2428B3578();
  sub_24283BBB4();
  v85 = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3778, &qword_2428BD928);
  sub_2428B4578();
  sub_2428B36B8();
  v65 = v20;
  v68 = v12;
  v67 = v13 + 104;
  v64 = v21;
  v21(v15, v20, v12);
  sub_2428B3578();
  sub_242833FF8();
  v78 = sub_2428B2CB8();
  v22 = sub_2428B3D78();
  v76 = v23;
  v77 = v22;
  v75 = sub_2428B3D48();
  v74 = v24;
  v73 = sub_2428B3D68();
  v72 = sub_2428B3D38();
  v71 = sub_2428B3D18();
  v25 = sub_2428B3D28();
  v26 = [v25 eventStore];

  v27 = [objc_allocWithZone(MEMORY[0x277CC5AB8]) initWithEventStore_];
  if (v27)
  {
    *&v90 = v27;
    sub_2428B28F8();
    *&v90 = sub_2428B3D98();
    *(&v90 + 1) = v28;
    v29 = v84;
    sub_2428B2C78();
    v30 = v79;
    sub_2428B3D88();
    v31 = sub_2428B3868();
    v32 = *(v31 - 8);
    v33 = v29;
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      sub_2427E0980(v30, &qword_27ECC3758, &qword_2428BD918);
      v34 = 0;
      v35 = 0;
    }

    else
    {
      v34 = sub_2428B3858();
      v35 = v36;
      (*(v32 + 8))(v30, v31);
    }

    *&v90 = v34;
    *(&v90 + 1) = v35;
    sub_2428B2C78();
    v37 = sub_2428B3D58();
    if (v37 == 2)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    if (v37 == 1)
    {
      v38 = 0;
    }

    LOBYTE(v90) = v38;
    sub_2428B2C78();
    v39 = v88;
    sub_2428B3DA8();
    v40 = v80;
    sub_24283BC08(v39, v80);
    v42 = v82;
    v41 = v83;
    if ((*(v82 + 48))(v40, 1, v83) == 1)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
    }

    else
    {
      v47 = v69;
      (*(v42 + 32))(v69, v40, v41);
      v48 = v70;
      (*(v42 + 16))(v70, v47, v41);
      sub_2428B4578();
      sub_2428B36B8();
      v64(v15, v65, v68);
      sub_2428B3578();
      v46 = sub_2428B2D68();
      v43 = sub_2428B3BE8();
      v44 = v49;
      v45 = sub_2428B3BD8();
      *&v90 = sub_2428B3BF8();
      *(&v90 + 1) = v50;
      sub_2428B2C78();
      v51 = *(v42 + 8);
      v51(v48, v41);
      v52 = v47;
      v33 = v84;
      v51(v52, v41);
    }

    sub_2427E0980(v88, &qword_27ECC3750, &qword_2428BD910);
    v53 = v71 & 1;
    v54 = v72 & 1;
    v55 = v73 & 1;
    *&v90 = v43;
    *(&v90 + 1) = v44;
    *&v91 = v45;
    *(&v91 + 1) = v46;
    v56 = v78;
    sub_2428B2C78();
    v57 = sub_2428B3DB8();
    (*(*(v57 - 8) + 8))(v89, v57);
    v58 = v81;
    v59 = v76;
    v60 = v77;
    *v81 = v87;
    v58[1] = v60;
    v58[2] = v59;
    v61 = v74;
    v58[3] = v75;
    v58[4] = v61;
    *(v58 + 40) = v55;
    *(v58 + 41) = v54;
    *(v58 + 42) = v53;
    v62 = v85;
    v63 = v86;
    v58[6] = v33;
    v58[7] = v63;
    v58[8] = v62;
    v58[9] = v56;
  }

  else
  {
    __break(1u);
  }
}

uint64_t CalendarEntity.SharingType.init(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_24283A670@<X0>(void *a1@<X8>)
{
  if (qword_280CDE660 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_280CDE5C8;

  return sub_2428B2F38();
}

uint64_t sub_24283A6E0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
  return sub_2428B3218();
}

uint64_t sub_24283A6EC(uint64_t a1)
{
  v2 = sub_2427FE688();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24283A738()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC3730);
  __swift_project_value_buffer(v10, qword_27ECC3730);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t static CalendarEntity.SharingType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1828 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24283AAE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v0 - 8);
  v35 = &v25 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v25 - v3;
  v38 = sub_2428B3558();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B36C8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B45F8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2428B3568();
  v26 = v9;
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3800, &qword_2428BDE68);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F88, &qword_2428BB6A8);
  v37 = v10;
  v11 = *(v10 - 8);
  v33 = *(v11 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v29 = v13;
  *(v13 + 16) = xmmword_2428B7940;
  v36 = v13 + v12;
  v28 = *(v10 + 48);
  *(v13 + v12) = 0;
  sub_2428B4578();
  sub_2428B36B8();
  v30 = *MEMORY[0x277CC9110];
  v14 = *(v4 + 104);
  v31 = v4 + 104;
  v32 = v14;
  v25 = v6;
  v14(v6);
  sub_2428B3578();
  v15 = *(v39 + 56);
  v39 += 56;
  v27 = v15;
  v16 = v34;
  v15(v34, 1, 1, v9);
  v17 = sub_2428B3148();
  v18 = *(*(v17 - 8) + 56);
  v19 = v35;
  v18(v35, 1, 1, v17);
  v20 = v36;
  v21 = v19;
  sub_2428B3178();
  v22 = (v20 + v33);
  v33 = *(v37 + 48);
  *v22 = 1;
  sub_2428B4578();
  sub_2428B36B8();
  v32(v25, v30, v38);
  sub_2428B3578();
  v27(v16, 1, 1, v26);
  v18(v21, 1, 1, v17);
  sub_2428B3178();
  v23 = sub_242821D38(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC3748 = v23;
  return result;
}

uint64_t static CalendarEntity.SharingType.caseDisplayRepresentations.getter()
{
  if (qword_27ECC1830 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2428B3218();
}

uint64_t static CalendarEntity.SharingType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27ECC1830 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC3748 = a1;
}

uint64_t (*static CalendarEntity.SharingType.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1830 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24283B214@<X0>(void *a1@<X8>)
{
  if (qword_27ECC1830 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC3748;
  return sub_2428B3218();
}

uint64_t sub_24283B294(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27ECC1830;
  sub_2428B3218();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC3748 = v1;
}

CalendarLink::CalendarEntity::SharingType_optional __swiftcall CalendarEntity.SharingType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_24283B34C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_24283B36C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1828 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24283B414(uint64_t a1)
{
  v2 = sub_24283BBB4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_24283B460()
{
  if (qword_27ECC1830 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2428B3218();
}

uint64_t sub_24283B4D8(uint64_t a1)
{
  v2 = sub_24283C0DC();

  return MEMORY[0x28210C300](a1, v2);
}

id CalendarEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v28 - v5;
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2428B3558();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2428B45F8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2428B3568();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = *v1;
  v18 = *(v1 + 8);
  v19 = *(v1 + 16);
  v20 = *(v1 + 40);
  v44 = *(v1 + 24);
  v45 = v20;
  v46 = *(v1 + 56);
  v47 = *(v1 + 72);
  sub_2428B28E8();
  result = [v37 eventStore];
  if (result)
  {
    v22 = result;
    swift_unknownObjectRelease();
    v33 = v18;
    v23 = sub_2428B4608();
    v24 = [v22 calendarWithIdentifier_];

    if (v24)
    {
      type metadata accessor for LocalizedStringUtils();
      v25 = v24;
      static LocalizedStringUtils.localizedTitle(forCalendar:)(v25);
    }

    else
    {
      sub_2428B4578();
      if (qword_27ECC1780 != -1)
      {
        swift_once();
      }

      v26 = v31;
      v27 = __swift_project_value_buffer(v31, qword_27ECD4500);
      (*(v29 + 16))(v30, v27, v26);
      sub_2428B36B8();
      sub_2428B3588();
    }

    (*(v11 + 16))(v14, v16, v10);
    (*(v11 + 56))(v34, 1, 1, v10);
    v37 = v17;
    v38 = v33;
    v39 = v19;
    v40 = v44;
    v41 = v45;
    v42 = v46;
    v43 = v47;
    CalendarEntity.image.getter();
    sub_2428B3178();

    return (*(v11 + 8))(v16, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CalendarEntity.image.getter()
{
  sub_2428B28E8();
  result = [v6 eventStore];
  if (result)
  {
    v1 = result;
    swift_unknownObjectRelease();
    v2 = sub_2428B4608();
    v3 = [v1 calendarWithIdentifier_];

    v4 = [v3 displayColor];
    v5 = [objc_opt_self() configurationWithScale_];
    return sub_2428B3138();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24283BB34(uint64_t a1)
{
  v2 = sub_24283BDE0();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_24283BBB4()
{
  result = qword_27ECC3770;
  if (!qword_27ECC3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3770);
  }

  return result;
}

uint64_t sub_24283BC08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3750, &qword_2428BD910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24283BC7C()
{
  result = qword_280CDE5C0;
  if (!qword_280CDE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE5C0);
  }

  return result;
}

unint64_t sub_24283BCD8()
{
  result = qword_280CDE558;
  if (!qword_280CDE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE558);
  }

  return result;
}

unint64_t sub_24283BD34()
{
  result = qword_280CDE588;
  if (!qword_280CDE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE588);
  }

  return result;
}

unint64_t sub_24283BD88()
{
  result = qword_280CDE580;
  if (!qword_280CDE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE580);
  }

  return result;
}

unint64_t sub_24283BDE0()
{
  result = qword_280CDE570;
  if (!qword_280CDE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE570);
  }

  return result;
}

unint64_t sub_24283BE7C()
{
  result = qword_27ECC3798;
  if (!qword_27ECC3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3798);
  }

  return result;
}

unint64_t sub_24283BED4()
{
  result = qword_27ECC37A0;
  if (!qword_27ECC37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37A0);
  }

  return result;
}

unint64_t sub_24283BF2C()
{
  result = qword_27ECC37A8;
  if (!qword_27ECC37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37A8);
  }

  return result;
}

unint64_t sub_24283BF84()
{
  result = qword_27ECC37B0;
  if (!qword_27ECC37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37B0);
  }

  return result;
}

unint64_t sub_24283BFDC()
{
  result = qword_27ECC37B8;
  if (!qword_27ECC37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37B8);
  }

  return result;
}

unint64_t sub_24283C030()
{
  result = qword_27ECC37C0;
  if (!qword_27ECC37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37C0);
  }

  return result;
}

unint64_t sub_24283C084()
{
  result = qword_27ECC37C8;
  if (!qword_27ECC37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37C8);
  }

  return result;
}

unint64_t sub_24283C0DC()
{
  result = qword_27ECC37D0;
  if (!qword_27ECC37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37D0);
  }

  return result;
}

unint64_t sub_24283C184()
{
  result = qword_27ECC37D8;
  if (!qword_27ECC37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37D8);
  }

  return result;
}

unint64_t sub_24283C1DC()
{
  result = qword_27ECC37E0;
  if (!qword_27ECC37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37E0);
  }

  return result;
}

unint64_t sub_24283C234()
{
  result = qword_27ECC37E8;
  if (!qword_27ECC37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC37E8);
  }

  return result;
}

unint64_t sub_24283C2D0()
{
  result = qword_280CDE560;
  if (!qword_280CDE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE560);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24283C340(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24283C388(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24283C3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_2428B3218();

    sub_2428B2F38();
  }
}

uint64_t sub_24283C46C()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B36C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2428B45F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B3568();
  __swift_allocate_value_buffer(v6, qword_27ECC3810);
  __swift_project_value_buffer(v6, qword_27ECC3810);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static CreateEventIntent_v0.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1838 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3810);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24283C700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3078();
  __swift_allocate_value_buffer(v10, qword_27ECC3828);
  __swift_project_value_buffer(v10, qword_27ECC3828);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3088();
}

uint64_t static CreateEventIntent_v0.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1840 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3828);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CreateEventIntent_v0.description.setter(uint64_t a1)
{
  if (qword_27ECC1840 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3828);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CreateEventIntent_v0.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1840 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3078();
  __swift_project_value_buffer(v1, qword_27ECC3828);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24283CC2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1840 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3828);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_24283CCEC(uint64_t a1)
{
  if (qword_27ECC1840 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3828);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t CreateEventIntent_v0.init()@<X0>(uint64_t *a1@<X8>)
{
  v166 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  MEMORY[0x28223BE20](v1 - 8);
  v138 = &v131[-v2];
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE8, &unk_2428BDEA0);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v131[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2CF0, &unk_2428C15D0);
  MEMORY[0x28223BE20](v4 - 8);
  v134 = &v131[-v5];
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3580, &unk_2428BDEB0);
  v142 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = &v131[-v6];
  v155 = sub_2428B3298();
  v163 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v154 = &v131[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v147 = &v131[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v153 = &v131[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  MEMORY[0x28223BE20](v12 - 8);
  v146 = &v131[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v14 - 8);
  v151 = &v131[-v15];
  v16 = sub_2428B3558();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v131[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_2428B36C8();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = sub_2428B45F8();
  MEMORY[0x28223BE20](v21 - 8);
  v165 = sub_2428B3568();
  v22 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v24 = &v131[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v167 = 0u;
  v168 = 0u;
  *&v169 = 0;
  sub_2428B2948();
  *v166 = sub_2428B2918();
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3840, &unk_2428BDEC0);
  sub_2428B4578();
  sub_2428B36B8();
  v26 = *(v17 + 104);
  v156 = *MEMORY[0x277CC9110];
  v25 = v156;
  v157 = v16;
  v26(v19, v156, v16);
  v150 = v26;
  v158 = v17 + 104;
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v26(v19, v25, v16);
  v27 = v151;
  sub_2428B3578();
  v162 = *(v22 + 56);
  v161 = v22 + 56;
  v162(v27, 0, 1, v165);
  v143 = sub_2428B4568();
  v167 = 0uLL;
  v28 = *(v143 - 8);
  v145 = *(v28 + 56);
  v144 = v28 + 56;
  v145(v146, 1, 1, v143);
  v160 = sub_2428B2AE8();
  v29 = *(v160 - 8);
  v159 = *(v29 + 56);
  v164 = v29 + 56;
  v159(v153, 1, 1, v160);
  v152 = *MEMORY[0x277CBA308];
  v30 = *(v163 + 104);
  v163 += 104;
  v149 = v30;
  v30(v154);
  v166[1] = sub_2428B2EB8();
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3588, &qword_2428BD360);
  sub_2428B4578();
  sub_2428B36B8();
  v31 = v156;
  v32 = v157;
  v33 = v150;
  v150(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v33(v19, v31, v32);
  v34 = v151;
  sub_2428B3578();
  v35 = v162;
  v162(v34, 0, 1, v165);
  v159(v153, 1, 1, v160);
  v132 = *MEMORY[0x277CB9EF0];
  v36 = *(v142 + 104);
  v142 += 104;
  v133 = v36;
  v36(v140);
  v37 = v149;
  v149(v154, v152, v155);
  v166[2] = sub_2428B2E98();
  sub_2428B4578();
  sub_2428B36B8();
  v38 = v156;
  v39 = v157;
  v40 = v150;
  v150(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v40(v19, v38, v39);
  v41 = v151;
  sub_2428B3578();
  v35(v41, 0, 1, v165);
  v159(v153, 1, 1, v160);
  v133(v140, v132, v141);
  v37(v154, v152, v155);
  v148 = v24;
  v166[3] = sub_2428B2E98();
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3850, &unk_2428BDED0);
  sub_2428B4578();
  sub_2428B36B8();
  v42 = v156;
  v43 = v157;
  v44 = v150;
  v150(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v44(v19, v42, v43);
  sub_2428B3578();
  v162(v41, 0, 1, v165);
  LOBYTE(v167) = 2;
  v45 = sub_2428B4718();
  (*(*(v45 - 8) + 56))(v134, 1, 1, v45);
  v159(v153, 1, 1, v160);
  v46 = v149;
  v149(v154, v152, v155);
  v166[4] = sub_2428B2EC8();
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3858, &unk_2428BE330);
  sub_2428B4578();
  sub_2428B36B8();
  v47 = v156;
  v48 = v157;
  v44(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v44(v19, v47, v48);
  sub_2428B3578();
  v162(v41, 0, 1, v165);
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v167 = 0u;
  v49 = v160;
  v50 = v159;
  v159(v153, 1, 1, v160);
  v50(v147, 1, 1, v49);
  v51 = v155;
  v46(v154, v152, v155);
  sub_24283FA24();
  v166[5] = sub_2428B2E68();
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D28, &unk_2428BDEE0);
  sub_2428B4578();
  sub_2428B36B8();
  v52 = v156;
  v53 = v157;
  v54 = v150;
  v150(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v54(v19, v52, v53);
  v55 = v151;
  sub_2428B3578();
  v162(v55, 0, 1, v165);
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v167 = 0u;
  v56 = v160;
  v57 = v159;
  v159(v153, 1, 1, v160);
  v57(v147, 1, 1, v56);
  v58 = v149;
  v149(v154, v152, v51);
  sub_2427FE688();
  v166[6] = sub_2428B2E68();
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D10, &qword_2428BB320);
  sub_2428B4578();
  sub_2428B36B8();
  v59 = v156;
  v60 = v157;
  v61 = v150;
  v150(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v61(v19, v59, v60);
  v62 = v151;
  sub_2428B3578();
  v63 = v165;
  v162(v62, 0, 1, v165);
  v167 = 0uLL;
  v145(v146, 1, 1, v143);
  v64 = v153;
  v159(v153, 1, 1, v160);
  v58(v154, v152, v155);
  v65 = v64;
  v166[7] = sub_2428B2EB8();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3860, &qword_2428BDEF0);
  sub_2428B4578();
  sub_2428B36B8();
  v66 = v156;
  v67 = v157;
  v68 = v150;
  v150(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v68(v19, v66, v67);
  v69 = v151;
  sub_2428B3578();
  v162(v69, 0, 1, v63);
  *&v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v167 = 0u;
  v70 = v160;
  v71 = v159;
  v159(v65, 1, 1, v160);
  v71(v147, 1, 1, v70);
  v149(v154, v152, v155);
  sub_242806258();
  v166[8] = sub_2428B2E68();
  sub_2428B4578();
  sub_2428B36B8();
  v72 = v156;
  v73 = v157;
  v74 = v150;
  v150(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v74(v19, v72, v73);
  v75 = v151;
  sub_2428B3578();
  v162(v75, 0, 1, v165);
  v167 = 0uLL;
  v145(v146, 1, 1, v143);
  v159(v153, 1, 1, v160);
  v76 = v154;
  v149(v154, v152, v155);
  v77 = v76;
  v166[9] = sub_2428B2EB8();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3870, &qword_2428BDEF8);
  sub_2428B4578();
  sub_2428B36B8();
  v78 = v156;
  v79 = v157;
  v74(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v74(v19, v78, v79);
  v80 = v151;
  sub_2428B3578();
  v162(v80, 0, 1, v165);
  *&v168 = 0;
  v167 = 0uLL;
  v81 = v160;
  v82 = v159;
  v159(v153, 1, 1, v160);
  v82(v147, 1, 1, v81);
  v83 = v155;
  v149(v77, v152, v155);
  sub_24283FA78();
  v141 = sub_24283FACC();
  v166[10] = sub_2428B2E58();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3970, &unk_2428BDF00);
  sub_2428B4578();
  sub_2428B36B8();
  v84 = v156;
  v85 = v157;
  v86 = v150;
  v150(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v86(v19, v84, v85);
  v87 = v151;
  sub_2428B3578();
  v162(v87, 0, 1, v165);
  *&v167 = 0;
  v88 = v160;
  v89 = v159;
  v159(v153, 1, 1, v160);
  v89(v147, 1, 1, v88);
  v90 = v152;
  v149(v154, v152, v83);
  v166[11] = sub_2428B2E68();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3880, &unk_2428BE320);
  sub_2428B4578();
  sub_2428B36B8();
  v91 = v156;
  v92 = v157;
  v93 = v150;
  v150(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v93(v19, v91, v92);
  sub_2428B3578();
  v162(v87, 0, 1, v165);
  *&v167 = 0;
  v94 = v160;
  v95 = v159;
  v159(v153, 1, 1, v160);
  v95(v147, 1, 1, v94);
  v96 = v155;
  v149(v154, v90, v155);
  sub_24282F540();
  v166[12] = sub_2428B2E68();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3890, &unk_2428BDF10);
  sub_2428B4578();
  sub_2428B36B8();
  v97 = v156;
  v98 = v157;
  v99 = v150;
  v150(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v99(v19, v97, v98);
  v100 = v151;
  sub_2428B3578();
  v162(v100, 0, 1, v165);
  LOBYTE(v167) = 4;
  v101 = v160;
  v102 = v159;
  v159(v153, 1, 1, v160);
  v102(v147, 1, 1, v101);
  v103 = v154;
  v149(v154, v152, v96);
  sub_24281E43C();
  v104 = v103;
  v166[13] = sub_2428B2E38();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC38A0, &unk_2428C16A0);
  sub_2428B4578();
  sub_2428B36B8();
  v105 = v156;
  v106 = v157;
  v107 = v150;
  v150(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v107(v19, v105, v106);
  v108 = v151;
  sub_2428B3578();
  v162(v108, 0, 1, v165);
  LOBYTE(v167) = 5;
  v109 = v160;
  v110 = v159;
  v159(v153, 1, 1, v160);
  v110(v147, 1, 1, v109);
  v111 = v152;
  v149(v104, v152, v155);
  sub_24281E4E4();
  v166[14] = sub_2428B2E38();
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D60, &unk_2428BDF20);
  sub_2428B4578();
  sub_2428B36B8();
  v112 = v156;
  v113 = v157;
  v114 = v150;
  v150(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v114(v19, v112, v113);
  v115 = v151;
  sub_2428B3578();
  v162(v115, 0, 1, v165);
  *&v167 = 0;
  BYTE8(v167) = 1;
  v116 = v153;
  v117 = v160;
  v159(v153, 1, 1, v160);
  (*(v136 + 104))(v135, *MEMORY[0x277CB9ED0], v137);
  v149(v154, v111, v155);
  v118 = v116;
  v166[15] = sub_2428B2ED8();
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3980, &unk_2428C16B0);
  sub_2428B4578();
  sub_2428B36B8();
  v119 = v156;
  v120 = v157;
  v121 = v150;
  v150(v19, v156, v157);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v121(v19, v119, v120);
  v122 = v151;
  sub_2428B3578();
  v162(v122, 0, 1, v165);
  v123 = sub_2428B35D8();
  (*(*(v123 - 8) + 56))(v138, 1, 1, v123);
  v124 = v159;
  v159(v118, 1, 1, v117);
  v125 = v154;
  v126 = v152;
  v127 = v149;
  v149(v154, v152, v155);
  v128 = sub_2428B2E88();
  v129 = v166;
  v166[16] = v128;
  sub_2428B3548();
  v162(v122, 1, 1, v165);
  v167 = 0uLL;
  v145(v146, 1, 1, v143);
  v124(v118, 1, 1, v160);
  v127(v125, v126, v155);
  result = sub_2428B2EB8();
  v129[17] = result;
  return result;
}

unint64_t sub_24283FA24()
{
  result = qword_280CDDCA0;
  if (!qword_280CDDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDCA0);
  }

  return result;
}

unint64_t sub_24283FA78()
{
  result = qword_27ECC3878;
  if (!qword_27ECC3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3878);
  }

  return result;
}

unint64_t sub_24283FACC()
{
  result = qword_280CDDF60;
  if (!qword_280CDDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF60);
  }

  return result;
}

uint64_t sub_24283FBD4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v13 = a1[2];
  v14 = v3;
  v4 = a1[3];
  v15 = a1[4];
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v6 = a2[7];
  v16[6] = a2[6];
  v16[7] = v6;
  v16[8] = a2[8];
  v7 = a2[3];
  v16[2] = a2[2];
  v16[3] = v7;
  v8 = a2[5];
  v16[4] = a2[4];
  v16[5] = v8;
  v9 = a2[1];
  v16[0] = *a2;
  v16[1] = v9;
  v11[11] = v13;
  v11[12] = v4;
  v11[13] = a1[4];
  v11[9] = v12[0];
  v11[10] = v2;
  sub_2427E0918(v12, v11, &qword_27ECC38E8, qword_2428BDFD8);
  sub_24284344C(v16, v11);
  sub_2428B2DD8();
  return sub_242843484(v16);
}

uint64_t (*CreateEventIntent_v0.recurrenceRule.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_24283FDD8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a2[7];
  v22[6] = a2[6];
  v22[7] = v9;
  v22[8] = a2[8];
  v10 = a2[3];
  v22[2] = a2[2];
  v22[3] = v10;
  v11 = a2[5];
  v22[4] = a2[4];
  v22[5] = v11;
  v12 = a2[1];
  v22[0] = *a2;
  v22[1] = v12;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  sub_2428434B4(v2, v3, v4, v5, v6, v7, v8);
  sub_24284344C(v22, v14);
  sub_2428B2DD8();
  return sub_242843484(v22);
}

uint64_t (*CreateEventIntent_v0.structuredLocation.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_24283FFAC(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v10[6] = a2[6];
  v10[7] = v3;
  v10[8] = a2[8];
  v4 = a2[3];
  v10[2] = a2[2];
  v10[3] = v4;
  v5 = a2[5];
  v10[4] = a2[4];
  v10[5] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v9 = v2;
  sub_2428B3218();
  sub_24284344C(v10, v8);
  sub_2428B2DD8();
  return sub_242843484(v10);
}

uint64_t (*CreateEventIntent_v0.alarms.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_24284013C(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v9[6] = a2[6];
  v9[7] = v3;
  v9[8] = a2[8];
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v5 = a2[5];
  v9[4] = a2[4];
  v9[5] = v5;
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v8[151] = v2;
  sub_24284344C(v9, v8);
  sub_2428B2DD8();
  return sub_242843484(v9);
}

uint64_t (*CreateEventIntent_v0.privacyLevel.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2428402A8(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v9[6] = a2[6];
  v9[7] = v3;
  v9[8] = a2[8];
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v5 = a2[5];
  v9[4] = a2[4];
  v9[5] = v5;
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v8[151] = v2;
  sub_24284344C(v9, v8);
  sub_2428B2DD8();
  return sub_242843484(v9);
}

uint64_t (*CreateEventIntent_v0.availability.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242840428(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v11[8] = a2[8];
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v9[18] = v2;
  v10 = v3;
  sub_24284344C(v11, v9);
  sub_2428B2DD8();
  return sub_242843484(v11);
}

uint64_t (*CreateEventIntent_v0.travelTime.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

uint64_t sub_24284059C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  sub_2427E0918(a1, &v15[-v8], &qword_27ECC2CE0, &qword_2428B6560);
  v10 = a2[7];
  v16[6] = a2[6];
  v16[7] = v10;
  v16[8] = a2[8];
  v11 = a2[3];
  v16[2] = a2[2];
  v16[3] = v11;
  v12 = a2[5];
  v16[4] = a2[4];
  v16[5] = v12;
  v13 = a2[1];
  v16[0] = *a2;
  v16[1] = v13;
  sub_2427E0918(v9, v7, &qword_27ECC2CE0, &qword_2428B6560);
  sub_24284344C(v16, v15);
  sub_2428B2DD8();
  sub_2427E0980(v9, &qword_27ECC2CE0, &qword_2428B6560);
  return sub_242843484(v16);
}

uint64_t CreateEventIntent_v0.url.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*CreateEventIntent_v0.url.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242840860(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[7];
  v10[6] = a2[6];
  v10[7] = v4;
  v10[8] = a2[8];
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[18] = v3;
  v9[19] = v2;
  sub_2428B3218();
  sub_24284344C(v10, v9);
  sub_2428B2DD8();
  return sub_242843484(v10);
}

uint64_t (*CreateEventIntent_v0.floatingTimeZoneID.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static CreateEventIntent_v0.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC38B0, &qword_2428BDF30);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC38B8, &qword_2428BDF38);
  MEMORY[0x28223BE20](v1);
  sub_242822740();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC38C8, &qword_2428BDF68);
  sub_2428B3258();

  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC38D0, &qword_2428BDF98);
  sub_2428B3258();

  sub_2428B3268();
  swift_getKeyPath();
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_242840BEC()
{
  swift_getKeyPath();
  sub_242822740();
  v0 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v1 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v2 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v3 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v4 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v5 = sub_2428B2F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2428BDE70;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  sub_2428B2F38();
  v7 = sub_2428B3218();

  return v7;
}

uint64_t CreateEventIntent_v0.perform()(uint64_t a1)
{
  *(v2 + 1352) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3240, &qword_2428BBF00);
  *(v2 + 1360) = swift_task_alloc();
  v3 = sub_2428B3BB8();
  *(v2 + 1368) = v3;
  *(v2 + 1376) = *(v3 - 8);
  *(v2 + 1384) = swift_task_alloc();
  *(v2 + 1392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  *(v2 + 1400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  *(v2 + 1408) = swift_task_alloc();
  v4 = sub_2428B3768();
  *(v2 + 1416) = v4;
  *(v2 + 1424) = *(v4 - 8);
  *(v2 + 1432) = swift_task_alloc();
  *(v2 + 1440) = swift_task_alloc();
  v5 = sub_2428B3688();
  *(v2 + 1448) = v5;
  *(v2 + 1456) = *(v5 - 8);
  *(v2 + 1464) = swift_task_alloc();
  *(v2 + 1472) = swift_task_alloc();
  *(v2 + 1480) = swift_task_alloc();
  *(v2 + 1488) = swift_task_alloc();
  *(v2 + 1496) = swift_task_alloc();
  *(v2 + 1504) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3A00, &qword_2428BDFD0);
  *(v2 + 1512) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC38E0, &unk_2428C40D0);
  *(v2 + 1520) = v6;
  *(v2 + 1528) = *(v6 - 8);
  *(v2 + 1536) = swift_task_alloc();
  *(v2 + 1544) = swift_task_alloc();
  *(v2 + 1552) = swift_task_alloc();
  v7 = v1[7];
  *(v2 + 592) = v1[6];
  *(v2 + 608) = v7;
  *(v2 + 624) = v1[8];
  v8 = v1[3];
  *(v2 + 528) = v1[2];
  *(v2 + 544) = v8;
  v9 = v1[5];
  *(v2 + 560) = v1[4];
  *(v2 + 576) = v9;
  v10 = v1[1];
  *(v2 + 496) = *v1;
  *(v2 + 512) = v10;
  sub_2428B4758();
  *(v2 + 1560) = sub_2428B4748();
  v12 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_242841194, v12, v11);
}

uint64_t sub_242841194()
{
  v203 = v0;
  v202 = *MEMORY[0x277D85DE8];

  v1 = sub_2428B43D8();
  *(v0 + 1168) = v1;
  *(v0 + 1176) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740], MEMORY[0x277CF7728]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1144));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 1144));
  v189 = v0;
  if ((v1 & 1) == 0)
  {
    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
    goto LABEL_8;
  }

  v3 = sub_2427F475C();
  sub_2428B2DC8();
  v4 = *(v0 + 784);
  *(v0 + 688) = *(v0 + 768);
  *(v0 + 704) = v4;
  v5 = *(v0 + 752);
  *(v0 + 656) = *(v0 + 736);
  *(v0 + 672) = v5;
  *(v0 + 640) = *(v0 + 720);
  if (*(v0 + 640))
  {
    sub_2428B3218();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B3218();
    v6 = sub_2428B4608();
    v7 = [v3 calendarWithIdentifier_];

    sub_2427E0980(v0 + 640, &qword_27ECC2248, &unk_2428B7CE0);
    sub_2427E0980(v0 + 640, &qword_27ECC2248, &unk_2428B7CE0);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_13:
    sub_2427CCDB0();
    swift_allocError();
    *v16 = 48;
    swift_willThrow();

    goto LABEL_8;
  }

  v7 = [v3 defaultCalendarForNewEvents];
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v180 = v3;
  v8 = [objc_opt_self() eventWithEventStore_];
  sub_2428B2DC8();
  v9 = sub_2428B4608();

  [v8 setTitle_];

  [v8 setCalendar_];
  sub_2428B2DC8();
  v186 = v8;
  v178 = v7;
  if (*(v0 + 1307) == 1)
  {
    sub_2428B2DC8();
    v10 = *(v0 + 1552);
    v11 = *(v0 + 1528);
    v12 = *(v0 + 1520);
    v13 = *(v0 + 1512);
    if (*(v0 + 1240))
    {
      sub_2428B3218();
      sub_2428B3718();
      swift_bridgeObjectRelease_n();
      (*(v11 + 56))(v13, 0, 1, v12);
      sub_2428431F0(v13, v10);
    }

    else
    {
      v23 = *(v0 + 1424);
      v24 = *(v0 + 1416);
      (*(v11 + 56))(*(v0 + 1512), 1, 1, *(v0 + 1520));
      sub_2428B3758();
      (*(v23 + 56))(v10, 0, 1, v24);
      if ((*(v11 + 48))(v13, 1, v12) != 1)
      {
        sub_2427E0980(*(v0 + 1512), &unk_27ECC3A00, &qword_2428BDFD0);
      }
    }

    v25 = *(v0 + 1504);
    v26 = *(v0 + 1456);
    v27 = *(v0 + 1448);
    sub_2428B2DC8();
    v28 = sub_2428B3658();
    v182 = *(v26 + 8);
    v182(v25, v27);
    v29 = [v180 timeZone];
    if (v29)
    {
      v30 = *(v0 + 1440);
      v31 = *(v0 + 1424);
      v32 = *(v0 + 1416);
      v33 = v29;
      sub_2428B3748();

      v34 = sub_2428B3738();
      (*(v31 + 8))(v30, v32);
    }

    else
    {
      v34 = 0;
    }

    v35 = *(v0 + 1544);
    v36 = *(v0 + 1424);
    v37 = *(v0 + 1416);
    sub_2427E0918(*(v0 + 1552), v35, &qword_27ECC38E0, &unk_2428C40D0);
    v187 = *(v36 + 48);
    if (v187(v35, 1, v37) == 1)
    {
      v38 = 0;
    }

    else
    {
      v39 = *(v0 + 1544);
      v40 = *(v0 + 1424);
      v41 = *(v0 + 1416);
      v38 = sub_2428B3738();
      (*(v40 + 8))(v39, v41);
    }

    v42 = [v28 dateInTimeZone:v34 fromTimeZone:v38];

    if (v42)
    {
      v43 = *(v0 + 1496);
      v44 = *(v0 + 1448);
      sub_2428B3678();

      v45 = sub_2428B3658();
      v46 = v182;
      v182(v43, v44);
    }

    else
    {
      v45 = 0;
      v46 = v182;
    }

    v47 = *(v0 + 1488);
    v48 = *(v0 + 1448);
    [v186 byte_278D6C3F8];

    sub_2428B2DC8();
    v49 = sub_2428B3658();
    v46(v47, v48);
    v50 = [v180 timeZone];
    if (v50)
    {
      v51 = *(v0 + 1432);
      v52 = *(v0 + 1424);
      v53 = *(v0 + 1416);
      v54 = v50;
      sub_2428B3748();

      v55 = sub_2428B3738();
      (*(v52 + 8))(v51, v53);
    }

    else
    {
      v55 = 0;
    }

    v56 = *(v0 + 1536);
    v57 = *(v0 + 1416);
    sub_2427E0918(*(v0 + 1552), v56, &qword_27ECC38E0, &unk_2428C40D0);
    if (v187(v56, 1, v57) == 1)
    {
      v58 = 0;
    }

    else
    {
      v59 = *(v0 + 1536);
      v60 = *(v0 + 1424);
      v61 = *(v0 + 1416);
      v58 = sub_2428B3738();
      (*(v60 + 8))(v59, v61);
    }

    v62 = [v49 dateInTimeZone:v55 fromTimeZone:v58];

    if (v62)
    {
      v63 = *(v0 + 1480);
      v64 = *(v0 + 1448);
      sub_2428B3678();

      v65 = sub_2428B3658();
      v66 = v64;
      v21 = v182;
      v182(v63, v66);
    }

    else
    {
      v65 = 0;
      v21 = v182;
    }

    v67 = *(v0 + 1552);
    v8 = v186;
    [v186 setEndDate_];

    sub_2427E0980(v67, &qword_27ECC38E0, &unk_2428C40D0);
  }

  else
  {
    v17 = *(v0 + 1472);
    v18 = *(v0 + 1456);
    v19 = *(v0 + 1448);
    sub_2428B2DC8();
    v20 = sub_2428B3658();
    v21 = *(v18 + 8);
    v21(v17, v19);
    [v8 setStartDate_];

    sub_2428B2DC8();
    v22 = sub_2428B3658();
    v21(v17, v19);
    [v8 setEndDate_];
  }

  sub_2428B2DC8();
  [v8 setAllDay_];
  sub_2428B2DC8();
  v68 = *(v0 + 944);
  *(v0 + 848) = *(v0 + 928);
  *(v0 + 864) = v68;
  v69 = *(v0 + 912);
  *(v0 + 816) = *(v0 + 896);
  *(v0 + 832) = v69;
  *(v0 + 800) = *(v0 + 880);
  if (*(v0 + 800))
  {
    v70 = *(v0 + 928);
    v194 = *(v0 + 912);
    v195 = v70;
    v196 = *(v0 + 944);
    v71 = *(v0 + 896);
    v192 = *(v0 + 880);
    v193 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_2428B5A90;
    *(v72 + 32) = RecurrenceRuleEntity.ekRecurrenceRule.getter();
    sub_2427E0980(v0 + 800, &qword_27ECC38E8, qword_2428BDFD8);
    sub_2428431A4();
    v73 = sub_2428B46B8();
  }

  else
  {
    v73 = 0;
  }

  [v8 setRecurrenceRules_];

  sub_2428B2DC8();
  v183 = v21;
  if (*(v0 + 1272))
  {
    v74 = sub_2428B4608();
  }

  else
  {
    v74 = 0;
  }

  [v8 setLocation_];

  sub_2428B2DC8();
  v75 = *(v0 + 1088);
  v76 = *(v0 + 1096);
  v77 = *(v0 + 1104);
  v78 = *(v0 + 1112);
  v79 = *(v0 + 1120);
  v80 = *(v0 + 1128);
  v81 = *(v0 + 1136);
  if (v75)
  {
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_24284301C(v75, v76, v77, v78, v79, v80, v81);
    *&v192 = v75;
    *(&v192 + 1) = v76;
    *&v193 = v77;
    *(&v193 + 1) = v78;
    *&v194 = v79;
    *(&v194 + 1) = v80;
    *&v195 = v81;
    v82 = LocationEntity.ekStructuredLocation.getter();
    sub_24284301C(v75, v76, v77, v78, v79, v80, v81);
  }

  else
  {
    sub_24284301C(0, *(v0 + 1096), *(v0 + 1104), *(v0 + 1112), *(v0 + 1120), *(v0 + 1128), *(v0 + 1136));
    v82 = 0;
  }

  [v186 setStructuredLocation_];

  sub_2428B2DC8();
  if (*(v0 + 1256))
  {
    v83 = sub_2428B4608();
  }

  else
  {
    v83 = 0;
  }

  [v186 setNotes_];

  sub_2428B2DC8();
  v84 = *(v0 + 1308);
  if (*(v0 + 1308) <= 1u)
  {
    if (*(v0 + 1308))
    {
      v84 = 1;
    }
  }

  else if (v84 == 2)
  {
    v84 = 2;
  }

  else
  {
    if (v84 != 3)
    {
      goto LABEL_56;
    }

    v84 = 3;
  }

  [v186 setPrivacyLevel_];
LABEL_56:
  sub_2428B2DC8();
  v85 = *(v0 + 1305);
  if (v85 <= 2)
  {
    if (*(v0 + 1305))
    {
      v86 = v85 != 1;
    }

    else
    {
      v86 = -1;
    }

    goto LABEL_64;
  }

  if (v85 == 3)
  {
    v86 = 2;
    goto LABEL_64;
  }

  if (v85 == 4)
  {
    v86 = 3;
LABEL_64:
    [v186 setAvailability_];
  }

  sub_2428B2DC8();
  if ((*(v0 + 1304) & 1) == 0)
  {
    [v186 setTravelTime_];
  }

  v87 = *(v0 + 1408);
  sub_2428B2DC8();
  v88 = sub_2428B35D8();
  v89 = *(v88 - 8);
  v90 = 0;
  if ((*(v89 + 48))(v87, 1, v88) != 1)
  {
    v91 = *(v0 + 1408);
    v90 = sub_2428B35A8();
    (*(v89 + 8))(v91, v88);
  }

  [v186 setURL_];

  sub_2428B2DC8();
  v92 = *(v0 + 1328);
  if (!v92)
  {
    sub_2428B2DC8();
    v119 = *(v0 + 1184);
    v120 = *(v0 + 1192);
    v121 = *(v0 + 1200);
    if (v119)
    {
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2428430A8(v119, v120, v121);
      *&v192 = v119;
      *(&v192 + 1) = v120;
      *&v193 = v121;
      v122 = sub_24286CE20();
      sub_2428430A8(v119, v120, v121);
      if (v122)
      {
        [v186 addAlarm_];
      }
    }

    else
    {
      sub_2428430A8(0, *(v0 + 1192), *(v0 + 1200));
    }

    goto LABEL_118;
  }

  v93 = MEMORY[0x277D84F90];
  *&v192 = MEMORY[0x277D84F90];
  v94 = *(v92 + 16);
  v181 = v92;
  if (!v94)
  {
    goto LABEL_83;
  }

  v95 = 0;
  v96 = (v0 + 1312);
  v97 = *(v0 + 1456);
  v184 = (v97 + 48);
  v185 = *(v92 + 16);
  v179 = (v97 + 32);
  v98 = v92 + 48;
  v176 = v92 + 48;
  v177 = v94 - 1;
  do
  {
    v99 = (v98 + 24 * v95);
    v100 = v95;
    v101 = v181;
    v188 = v93;
    while (1)
    {
      if (v100 >= *(v101 + 16))
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v77 = *(v99 - 1);
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2428B2C68();
      if (*(v0 + 1320))
      {
        break;
      }

      v102 = [objc_allocWithZone(MEMORY[0x277CC5988]) initWithRelativeOffset_];

      if (v102)
      {
        goto LABEL_80;
      }

LABEL_74:
      ++v100;
      v99 += 3;
      v93 = v188;
      v96 = (v0 + 1312);
      if (v94 == v100)
      {
        goto LABEL_83;
      }
    }

    v104 = *(v0 + 1448);
    v105 = *(v0 + 1400);
    sub_2428B2C68();
    if ((*v184)(v105, 1, v104) == 1)
    {
      sub_2427E0980(*(v0 + 1400), &qword_27ECC26F0, &unk_2428B7960);

      v94 = v185;
      goto LABEL_74;
    }

    v106 = *(v0 + 1464);
    v107 = *(v0 + 1448);
    (*v179)(v106, *(v0 + 1400), v107);
    v108 = objc_allocWithZone(MEMORY[0x277CC5988]);
    v109 = sub_2428B3658();
    v110 = [v108 initWithAbsoluteDate_];

    v101 = v181;
    v103 = v183(v106, v107);
    v94 = v185;
    if (!v110)
    {
      goto LABEL_74;
    }

LABEL_80:
    MEMORY[0x245D1B200](v103);
    if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2428B46E8();
    }

    v95 = v100 + 1;
    sub_2428B4708();
    v93 = v192;
    v98 = v176;
    v96 = (v0 + 1312);
  }

  while (v177 != v100);
LABEL_83:

  v190 = v93;
  sub_2428B2DC8();
  v111 = *(v0 + 1208);
  v112 = *(v0 + 1216);
  v113 = *(v0 + 1224);
  if (!v111)
  {
    sub_2428430A8(0, *(v0 + 1216), *(v0 + 1224));
    goto LABEL_100;
  }

  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428430A8(v111, v112, v113);
  *&v192 = v111;
  *(&v192 + 1) = v112;
  *&v193 = v113;
  v114 = sub_24286CE20();
  sub_2428430A8(v111, v112, v113);
  if (!v114)
  {
LABEL_100:
    v99 = v186;
    goto LABEL_105;
  }

  v99 = v186;
  v0 = v93 & 0xFFFFFFFFFFFFFF8;
  if (v93 >> 62)
  {
    goto LABEL_143;
  }

  for (i = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2428B49C8())
  {
    v116 = 0;
    v77 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
    while (i != v116)
    {
      if ((v93 & 0xC000000000000001) != 0)
      {
        v117 = MEMORY[0x245D1B5D0](v116, v93);
      }

      else
      {
        if (v116 >= *(v0 + 16))
        {
          goto LABEL_115;
        }

        v117 = *(v93 + 8 * v116 + 32);
      }

      v99 = v117;
      if (__OFADD__(v116, 1))
      {
        goto LABEL_114;
      }

      v118 = [v114 isTopographicallyEqualToAlarm_];

      ++v116;
      v99 = v186;
      if (v118)
      {

        v0 = v189;
        goto LABEL_105;
      }
    }

    v123 = v114;
    MEMORY[0x245D1B200]();
    v0 = v189;
    if (*((v190 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v190 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2428B46E8();
    }

    sub_2428B4708();

    v93 = v190;
LABEL_105:
    if (v93 >> 62)
    {
LABEL_116:
      v114 = sub_2428B49C8();
      if (!v114)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v114 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v114)
      {
        goto LABEL_117;
      }
    }

    if (v114 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_143:
    ;
  }

  for (j = 0; j != v114; ++j)
  {
    if ((v93 & 0xC000000000000001) != 0)
    {
      v125 = MEMORY[0x245D1B5D0](j, v93);
    }

    else
    {
      v125 = *(v93 + 8 * j + 32);
    }

    v126 = v125;
    [v99 addAlarm_];
  }

LABEL_117:

LABEL_118:
  sub_2428B2DC8();
  v127 = *(v0 + 1336);
  v128 = v180;
  if (!v127)
  {
    v136 = v186;

    goto LABEL_146;
  }

  v129 = [v186 allowsAttendeesModifications];

  if ((v129 & 1) == 0)
  {

    sub_2427CCDB0();
    swift_allocError();
    *v137 = 113;
    swift_willThrow();

    goto LABEL_8;
  }

  v130 = *(v127 + 16);
  if (!v130)
  {

    v138 = MEMORY[0x277D84F90];
    goto LABEL_128;
  }

  v191 = MEMORY[0x277D84F90];
  sub_2428B4AC8();
  if (!*(v127 + 16))
  {
    goto LABEL_141;
  }

  v77 = (v189 + 1024);
  v131 = *(v127 + 32);
  v132 = *(v127 + 48);
  v133 = *(v127 + 80);
  *(v189 + 1056) = *(v127 + 64);
  *(v189 + 1072) = v133;
  *(v189 + 1024) = v131;
  *(v189 + 1040) = v132;
  v134 = *(v127 + 48);
  v192 = *(v127 + 32);
  v193 = v134;
  v135 = *(v127 + 80);
  v194 = *(v127 + 64);
  v195 = v135;
  sub_2428430F4(v189 + 1024, v189 + 960);
  sub_2428307AC();
  sub_242843150(v189 + 1024);
  sub_2428B4AA8();
  sub_2428B4AD8();
  sub_2428B4AE8();
  sub_2428B4AB8();
  if (v130 == 1)
  {
    goto LABEL_127;
  }

  if (*(v127 + 16) < 2uLL)
  {
LABEL_141:
    __break(1u);

    sub_242843150(v77);

    goto LABEL_8;
  }

  v143 = (v127 + 96);
  v144 = 1;
  while (1)
  {
    v145 = *v143;
    v146 = v143[1];
    v147 = v143[3];
    *(v189 + 1056) = v143[2];
    *(v189 + 1072) = v147;
    *v77 = v145;
    *(v189 + 1040) = v146;
    v148 = v143[1];
    v192 = *v143;
    v193 = v148;
    v149 = v143[3];
    v194 = v143[2];
    v195 = v149;
    sub_2428430F4(v77, v189 + 960);
    sub_2428307AC();
    sub_242843150(v77);
    sub_2428B4AA8();
    sub_2428B4AD8();
    sub_2428B4AE8();
    sub_2428B4AB8();
    if (2 - v130 + v144 == 1)
    {
      break;
    }

    v143 += 4;
    if (++v144 >= *(v127 + 16))
    {
      goto LABEL_141;
    }
  }

LABEL_127:

  v0 = v189;
  v138 = v191;
  v128 = v180;
LABEL_128:
  v136 = v186;
  if (v138 >> 62)
  {
    v139 = sub_2428B49C8();
    if (!v139)
    {
      goto LABEL_145;
    }

LABEL_130:
    if (v139 < 1)
    {
      __break(1u);
    }

    for (k = 0; k != v139; ++k)
    {
      if ((v138 & 0xC000000000000001) != 0)
      {
        v141 = MEMORY[0x245D1B5D0](k, v138);
      }

      else
      {
        v141 = *(v138 + 8 * k + 32);
      }

      v142 = v141;
      [v186 addAttendee_];
    }

    v0 = v189;
    v128 = v180;
  }

  else
  {
    v139 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v139)
    {
      goto LABEL_130;
    }

LABEL_145:
  }

LABEL_146:
  *(v0 + 1344) = 0;
  v150 = [v128 saveEvent:v136 span:0 error:v0 + 1344];
  v151 = *(v0 + 1344);
  if (v150)
  {
    v152 = *(v0 + 1376);
    v153 = *(v0 + 1368);
    v154 = *(v0 + 1360);
    v155 = v136;
    v156 = v151;
    sub_2428B3BC8();
    if ((*(v152 + 48))(v154, 1, v153) == 1)
    {
      sub_2427E0980(*(v0 + 1360), &qword_27ECC3240, &qword_2428BBF00);
      sub_2427CCDB0();
      swift_allocError();
      *v157 = 25;
      swift_willThrow();

      goto LABEL_8;
    }

    v159 = *(v0 + 1392);
    v160 = *(v189 + 1384);
    v161 = *(v189 + 1376);
    v162 = *(v189 + 1368);
    v163 = *(v189 + 1352);
    (*(v161 + 32))(v159);
    (*(v161 + 16))(v160, v159, v162);
    EventEntity.init(_:)(v160, &v192);
    (*(v161 + 8))(v159, v162);
    v164 = v199;
    *(v189 + 112) = v198;
    *(v189 + 128) = v164;
    v165 = v201;
    *(v189 + 144) = v200;
    *(v189 + 160) = v165;
    v166 = v195;
    *(v189 + 48) = v194;
    *(v189 + 64) = v166;
    v167 = v197;
    *(v189 + 80) = v196;
    *(v189 + 96) = v167;
    v168 = v193;
    *(v189 + 16) = v192;
    *(v189 + 32) = v168;
    sub_2427CD4FC(v189 + 16, v189 + 336);
    OpenEventDetailsIntent.init()(&v192);
    v169 = v192;
    v170 = v193;
    v171 = *(v189 + 128);
    *(v189 + 272) = *(v189 + 112);
    *(v189 + 288) = v171;
    v172 = *(v189 + 160);
    *(v189 + 304) = *(v189 + 144);
    *(v189 + 320) = v172;
    v173 = *(v189 + 64);
    *(v189 + 208) = *(v189 + 48);
    *(v189 + 224) = v173;
    v174 = *(v189 + 96);
    *(v189 + 240) = *(v189 + 80);
    *(v189 + 256) = v174;
    v175 = *(v189 + 32);
    *(v189 + 176) = *(v189 + 16);
    *(v189 + 192) = v175;
    sub_2428B2DD8();
    sub_24280B1C4((v189 + 16), v169, *(&v169 + 1), v170, *(&v170 + 1), v163);

    sub_2427CCE04(v189 + 16);

    v14 = *(v189 + 8);
  }

  else
  {
    v158 = v151;
    sub_2428B3538();

    swift_willThrow();
LABEL_8:

    v14 = *(v189 + 8);
  }

  return v14();
}

uint64_t sub_242842CA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1838 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3810);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242842D54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return CreateEventIntent_v0.perform()(a1);
}

uint64_t CreateEventIntent_v0.managedDestinationAccountIdentifier.getter()
{
  v1 = v0[7];
  v19[12] = v0[6];
  v19[13] = v1;
  v19[14] = v0[8];
  v2 = v0[3];
  v19[8] = v0[2];
  v19[9] = v2;
  v3 = v0[5];
  v19[10] = v0[4];
  v19[11] = v3;
  v4 = v0[1];
  v19[6] = *v0;
  v19[7] = v4;
  v5 = sub_2427F475C();
  sub_2428B2DC8();
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = v16;
  v19[3] = v17;
  v19[4] = v18;
  if (v14)
  {
    sub_2428B3218();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B3218();
    v6 = sub_2428B4608();
    v7 = [v5 calendarWithIdentifier_];

    sub_2427E0980(v19, &qword_27ECC2248, &unk_2428B7CE0);
    sub_2427E0980(v19, &qword_27ECC2248, &unk_2428B7CE0);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = [v5 defaultCalendarForNewEvents];
    if (!v7)
    {
LABEL_10:

      return 0;
    }
  }

  v8 = [v7 source];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 externalID];
    if (v10)
    {
      v11 = v10;
      v12 = sub_2428B4618();

      return v12;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_24284301C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2428430A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2428431A4()
{
  result = qword_27ECC2E20;
  if (!qword_27ECC2E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECC2E20);
  }

  return result;
}

uint64_t sub_2428431F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC38E0, &unk_2428C40D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_242843264()
{
  result = qword_27ECC38F0;
  if (!qword_27ECC38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC38F0);
  }

  return result;
}

unint64_t sub_2428432BC()
{
  result = qword_27ECC38F8;
  if (!qword_27ECC38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC38F8);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_242843390(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2428433D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2428434B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();

    return sub_2428B2F38();
  }

  return result;
}

uint64_t sub_24284355C()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B36C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2428B45F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B3568();
  __swift_allocate_value_buffer(v6, qword_27ECC3930);
  __swift_project_value_buffer(v6, qword_27ECC3930);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2428B3578();
}

uint64_t (*static EditEventIntent_v0.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1848 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3568();
  __swift_project_value_buffer(v1, qword_27ECC3930);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242843868()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3078();
  __swift_allocate_value_buffer(v10, qword_27ECC3948);
  __swift_project_value_buffer(v10, qword_27ECC3948);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3088();
}

uint64_t (*static EditEventIntent_v0.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1850 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3078();
  __swift_project_value_buffer(v1, qword_27ECC3948);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t EditEventIntent_v0.init()@<X0>(uint64_t *a1@<X8>)
{
  v190 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  MEMORY[0x28223BE20](v1 - 8);
  v172 = &v164[-v2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE8, &unk_2428BDEA0);
  v170 = *(v3 - 8);
  v171 = v3;
  MEMORY[0x28223BE20](v3);
  v169 = &v164[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2CF0, &unk_2428C15D0);
  MEMORY[0x28223BE20](v5 - 8);
  v168 = &v164[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3BD0, &unk_2428BE2F0);
  v8 = *(v7 - 8);
  v176 = v7;
  v177 = v8;
  MEMORY[0x28223BE20](v7);
  v175 = &v164[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  MEMORY[0x28223BE20](v10 - 8);
  v181 = &v164[-v11];
  v12 = sub_2428B3298();
  v201 = *(v12 - 8);
  v202 = v12;
  MEMORY[0x28223BE20](v12);
  v200 = &v164[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v184 = &v164[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v197 = &v164[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v18 - 8);
  v188 = &v164[-v19];
  v195 = sub_2428B3558();
  v20 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v22 = &v164[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_2428B36C8();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v164[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_2428B45F8();
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v164[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v199 = sub_2428B3568();
  v203 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v30 = &v164[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v214 = 0u;
  v215 = 0u;
  *&v216 = 0;
  sub_2428B2948();
  *v190 = sub_2428B2918();
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2540, &qword_2428B5AE0);
  sub_2428B4578();
  sub_2428B36B8();
  v32 = *(v20 + 104);
  v186 = *MEMORY[0x277CC9110];
  v31 = v186;
  v33 = v195;
  v32(v22, v186, v195);
  v187 = v32;
  v192 = v20 + 104;
  sub_2428B3578();
  v183 = v28;
  sub_2428B4578();
  sub_2428B36B8();
  v173 = v22;
  v32(v22, v31, v33);
  v34 = v188;
  sub_2428B3578();
  v35 = *(v203 + 56);
  v203 += 56;
  v194 = v35;
  v35(v34, 0, 1, v199);
  sub_2427CBC50(&v214);
  v210 = v220;
  v211 = v221;
  v212 = v222;
  v213 = v223;
  v206 = v216;
  v207 = v217;
  v208 = v218;
  v209 = v219;
  v204 = v214;
  v205 = v215;
  v36 = sub_2428B2AE8();
  v193 = v36;
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v198 = v38;
  v196 = v37 + 56;
  v38(v197, 1, 1, v36);
  v38(v184, 1, 1, v36);
  v191 = *MEMORY[0x277CBA308];
  v189 = *(v201 + 104);
  v201 += 104;
  v189(v200);
  sub_2427C2774();
  v185 = v30;
  v190[1] = sub_2428B2E68();
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D10, &qword_2428BB320);
  sub_2428B4578();
  v39 = v25;
  sub_2428B36B8();
  v40 = v173;
  v41 = v186;
  v42 = v195;
  v43 = v187;
  v187(v173, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v43(v40, v41, v42);
  v44 = v188;
  sub_2428B3578();
  v194(v44, 0, 1, v199);
  v178 = sub_2428B4568();
  v204 = 0uLL;
  v45 = *(v178 - 8);
  v46 = *(v45 + 56);
  v179 = v45 + 56;
  v180 = v46;
  v46(v181, 1, 1, v178);
  v47 = v193;
  v198(v197, 1, 1, v193);
  (v189)(v200, v191, v202);
  v190[2] = sub_2428B2EB8();
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4440, &unk_2428BE300);
  sub_2428B4578();
  sub_2428B36B8();
  v48 = v186;
  v49 = v195;
  v50 = v187;
  v187(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v50(v40, v48, v49);
  v51 = v188;
  sub_2428B3578();
  v194(v51, 0, 1, v199);
  v198(v197, 1, 1, v47);
  v165 = *MEMORY[0x277CB9EF0];
  v52 = *(v177 + 104);
  v177 += 104;
  v166 = v52;
  v52(v175);
  (v189)(v200, v191, v202);
  v53 = sub_2428B2E98();
  v54 = v190;
  v190[3] = v53;
  sub_2428B4578();
  sub_2428B36B8();
  v55 = v48;
  v56 = v48;
  v57 = v195;
  v58 = v187;
  v187(v40, v56, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v58(v40, v55, v57);
  v59 = v188;
  sub_2428B3578();
  v194(v59, 0, 1, v199);
  v198(v197, 1, 1, v193);
  v166(v175, v165, v176);
  (v189)(v200, v191, v202);
  v54[4] = sub_2428B2E98();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2D20, &qword_2428BB328);
  sub_2428B4578();
  sub_2428B36B8();
  v60 = v186;
  v61 = v195;
  v62 = v187;
  v187(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v62(v40, v60, v61);
  sub_2428B3578();
  v194(v59, 0, 1, v199);
  LOBYTE(v204) = 2;
  v63 = sub_2428B4718();
  (*(*(v63 - 8) + 56))(v168, 1, 1, v63);
  v198(v197, 1, 1, v193);
  v64 = v189;
  (v189)(v200, v191, v202);
  v190[5] = sub_2428B2EC8();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D28, &unk_2428BDEE0);
  sub_2428B4578();
  sub_2428B36B8();
  v65 = v186;
  v66 = v195;
  v67 = v187;
  v187(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v67(v40, v65, v66);
  v68 = v188;
  sub_2428B3578();
  v69 = v68;
  v194(v68, 0, 1, v199);
  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  v204 = 0u;
  v70 = v198;
  v71 = v193;
  v198(v197, 1, 1, v193);
  v70(v184, 1, 1, v71);
  v64(v200, v191, v202);
  sub_2427FE688();
  v190[6] = sub_2428B2E68();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3890, &unk_2428BDF10);
  sub_2428B4578();
  sub_2428B36B8();
  v72 = v186;
  v73 = v195;
  v74 = v187;
  v187(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v74(v40, v72, v73);
  sub_2428B3578();
  v194(v69, 0, 1, v199);
  LOBYTE(v204) = 4;
  v75 = v198;
  v76 = v193;
  v198(v197, 1, 1, v193);
  v75(v184, 1, 1, v76);
  (v189)(v200, v191, v202);
  sub_24281E43C();
  v190[7] = sub_2428B2E38();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2D38, &unk_2428BE310);
  sub_2428B4578();
  sub_2428B36B8();
  v77 = v186;
  v78 = v195;
  v79 = v187;
  v187(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v79(v40, v77, v78);
  v80 = v188;
  sub_2428B3578();
  v194(v80, 0, 1, v199);
  LOBYTE(v204) = 3;
  v81 = v193;
  v82 = v198;
  v198(v197, 1, 1, v193);
  v82(v184, 1, 1, v81);
  (v189)(v200, v191, v202);
  sub_24281E490();
  v190[8] = sub_2428B2E38();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC38A0, &unk_2428C16A0);
  sub_2428B4578();
  sub_2428B36B8();
  v83 = v186;
  v84 = v195;
  v85 = v187;
  v187(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v85(v40, v83, v84);
  v86 = v188;
  sub_2428B3578();
  v194(v86, 0, 1, v199);
  LOBYTE(v204) = 5;
  v87 = v193;
  v88 = v198;
  v198(v197, 1, 1, v193);
  v88(v184, 1, 1, v87);
  (v189)(v200, v191, v202);
  sub_24281E4E4();
  v190[9] = sub_2428B2E38();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3880, &unk_2428BE320);
  sub_2428B4578();
  sub_2428B36B8();
  v89 = v186;
  v90 = v195;
  v91 = v187;
  v187(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v91(v40, v89, v90);
  sub_2428B3578();
  v194(v86, 0, 1, v199);
  *&v204 = 0;
  v92 = v193;
  v93 = v198;
  v198(v197, 1, 1, v193);
  v93(v184, 1, 1, v92);
  (v189)(v200, v191, v202);
  v176 = sub_24282F540();
  v190[10] = sub_2428B2E68();
  sub_2428B4578();
  sub_2428B36B8();
  v94 = v186;
  v95 = v195;
  v96 = v187;
  v187(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v96(v40, v94, v95);
  v97 = v188;
  sub_2428B3578();
  v194(v97, 0, 1, v199);
  *&v204 = 0;
  v98 = v198;
  v99 = v193;
  v198(v197, 1, 1, v193);
  v98(v184, 1, 1, v99);
  (v189)(v200, v191, v202);
  v190[11] = sub_2428B2E68();
  sub_2428B4578();
  sub_2428B36B8();
  v100 = v186;
  v101 = v195;
  v102 = v187;
  v187(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v102(v40, v100, v101);
  v103 = v188;
  sub_2428B3578();
  v194(v103, 0, 1, v199);
  v204 = 0uLL;
  v180(v181, 1, 1, v178);
  v198(v197, 1, 1, v193);
  (v189)(v200, v191, v202);
  v190[12] = sub_2428B2EB8();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3860, &qword_2428BDEF0);
  sub_2428B4578();
  sub_2428B36B8();
  v104 = v186;
  v105 = v195;
  v102(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v102(v40, v104, v105);
  v106 = v188;
  sub_2428B3578();
  v194(v106, 0, 1, v199);
  *&v207 = 0;
  v205 = 0u;
  v206 = 0u;
  v204 = 0u;
  v107 = v193;
  v108 = v198;
  v198(v197, 1, 1, v193);
  v108(v184, 1, 1, v107);
  (v189)(v200, v191, v202);
  sub_242806258();
  v109 = sub_2428B2E68();
  v110 = v190;
  v190[13] = v109;
  sub_2428B4578();
  sub_2428B36B8();
  v111 = v186;
  v112 = v195;
  v113 = v187;
  v187(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v113(v40, v111, v112);
  v114 = v188;
  sub_2428B3578();
  v194(v114, 0, 1, v199);
  v204 = 0uLL;
  v180(v181, 1, 1, v178);
  v198(v197, 1, 1, v193);
  (v189)(v200, v191, v202);
  v110[14] = sub_2428B2EB8();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3858, &unk_2428BE330);
  sub_2428B4578();
  sub_2428B36B8();
  v115 = v186;
  v116 = v195;
  v117 = v187;
  v187(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v117(v40, v115, v116);
  v118 = v188;
  sub_2428B3578();
  v194(v118, 0, 1, v199);
  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  v204 = 0u;
  v119 = v198;
  v120 = v193;
  v198(v197, 1, 1, v193);
  v119(v184, 1, 1, v120);
  v121 = v191;
  (v189)(v200, v191, v202);
  sub_24283FA24();
  v190[15] = sub_2428B2E68();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D60, &unk_2428BDF20);
  sub_2428B4578();
  sub_2428B36B8();
  v122 = v186;
  v123 = v195;
  v124 = v187;
  v187(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v124(v40, v122, v123);
  v125 = v188;
  sub_2428B3578();
  v194(v125, 0, 1, v199);
  *&v204 = 0;
  BYTE8(v204) = 1;
  v198(v197, 1, 1, v193);
  (*(v170 + 104))(v169, *MEMORY[0x277CB9ED0], v171);
  v126 = v189;
  (v189)(v200, v121, v202);
  v190[16] = sub_2428B2ED8();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3970, &unk_2428BDF00);
  sub_2428B4578();
  sub_2428B36B8();
  v127 = v186;
  v128 = v195;
  v129 = v187;
  v187(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v129(v40, v127, v128);
  v130 = v188;
  sub_2428B3578();
  v194(v130, 0, 1, v199);
  *&v204 = 0;
  v131 = v193;
  v132 = v198;
  v198(v197, 1, 1, v193);
  v132(v184, 1, 1, v131);
  v126(v200, v191, v202);
  sub_24283FACC();
  v133 = sub_2428B2E68();
  v134 = v190;
  v190[17] = v133;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3980, &unk_2428C16B0);
  sub_2428B4578();
  sub_2428B36B8();
  v135 = v186;
  v136 = v195;
  v137 = v187;
  v187(v40, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v137(v40, v135, v136);
  v138 = v188;
  v139 = v39;
  sub_2428B3578();
  v194(v138, 0, 1, v199);
  v140 = sub_2428B35D8();
  (*(*(v140 - 8) + 56))(v172, 1, 1, v140);
  v198(v197, 1, 1, v193);
  (v189)(v200, v191, v202);
  v134[18] = sub_2428B2E88();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3988, &qword_2428BE340);
  sub_2428B4578();
  sub_2428B36B8();
  v141 = v40;
  v142 = v40;
  v143 = v186;
  v144 = v195;
  v145 = v187;
  v187(v142, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  v167 = v139;
  sub_2428B36B8();
  v145(v141, v143, v144);
  v146 = v188;
  sub_2428B3578();
  v147 = v199;
  v148 = v194;
  v194(v146, 0, 1, v199);
  LOBYTE(v204) = 8;
  v150 = v197;
  v149 = v198;
  v151 = v193;
  v198(v197, 1, 1, v193);
  v149(v184, 1, 1, v151);
  v152 = v191;
  (v189)(v200, v191, v202);
  sub_24282BEBC();
  v153 = v188;
  v154 = sub_2428B2E38();
  v155 = v190;
  v190[19] = v154;
  sub_2428B3548();
  v148(v153, 1, 1, v147);
  v204 = 0uLL;
  v180(v181, 1, 1, v178);
  v198(v150, 1, 1, v193);
  (v189)(v200, v152, v202);
  v155[20] = sub_2428B2EB8();
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2DA0, &qword_2428BE810);
  sub_2428B4578();
  sub_2428B36B8();
  v156 = v173;
  v157 = v186;
  v158 = v195;
  v159 = v187;
  v187(v173, v186, v195);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v159(v156, v157, v158);
  v160 = v188;
  sub_2428B3578();
  v194(v160, 0, 1, v199);
  LOBYTE(v204) = 3;
  v161 = v193;
  v162 = v198;
  v198(v197, 1, 1, v193);
  v162(v184, 1, 1, v161);
  (v189)(v200, v191, v202);
  sub_24281E538();
  result = sub_2428B2E38();
  v190[21] = result;
  return result;
}

uint64_t sub_242846C54(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v11[8] = a2[8];
  v11[9] = v3;
  v11[10] = a2[10];
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[7];
  v11[6] = a2[6];
  v11[7] = v5;
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v10 = v2;
  sub_242852D84(v11, v9);
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return sub_242852DBC(v11);
}

uint64_t EditEventIntent_v0.eventStoreProvider.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*EditEventIntent_v0.eventStoreProvider.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t sub_242846DE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v3 = a1[5];
  v24 = a1[6];
  v25 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v26 = a1[8];
  v27 = v5;
  v6 = a1[3];
  v7 = a1[1];
  v20 = a1[2];
  v21 = v6;
  v8 = a1[3];
  v9 = a1[5];
  v22 = a1[4];
  v23 = v9;
  v10 = a1[1];
  v19[0] = *a1;
  v19[1] = v10;
  v11 = a2[9];
  v28[8] = a2[8];
  v28[9] = v11;
  v28[10] = a2[10];
  v12 = a2[5];
  v28[4] = a2[4];
  v28[5] = v12;
  v13 = a2[7];
  v28[6] = a2[6];
  v28[7] = v13;
  v14 = a2[1];
  v28[0] = *a2;
  v28[1] = v14;
  v15 = a2[3];
  v28[2] = a2[2];
  v28[3] = v15;
  v18[17] = v24;
  v18[18] = v4;
  v16 = a1[9];
  v18[19] = v26;
  v18[20] = v16;
  v18[13] = v20;
  v18[14] = v8;
  v18[15] = v22;
  v18[16] = v3;
  v18[11] = v19[0];
  v18[12] = v7;
  sub_2427CD4FC(v19, v18);
  sub_242852D84(v28, v18);
  sub_2428B2DD8();
  return sub_242852DBC(v28);
}

uint64_t (*EditEventIntent_v0.target.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242846FDC(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v11[10] = a2[10];
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v6 = a2[7];
  v11[6] = a2[6];
  v11[7] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  v10[22] = v3;
  v10[23] = v2;
  sub_2428B3218();
  sub_242852D84(v11, v10);
  sub_2428B2DD8();
  return sub_242852DBC(v11);
}

uint64_t (*EditEventIntent_v0.title.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_24284714C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  sub_2427E0918(a1, &v16[-v8], &qword_27ECC26F0, &unk_2428B7960);
  v10 = a2[9];
  v17[8] = a2[8];
  v17[9] = v10;
  v17[10] = a2[10];
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_2427E0918(v9, v7, &qword_27ECC26F0, &unk_2428B7960);
  sub_242852D84(v17, v16);
  sub_2428B2DD8();
  sub_2427E0980(v9, &qword_27ECC26F0, &unk_2428B7960);
  return sub_242852DBC(v17);
}

uint64_t EditEventIntent_v0.startDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*EditEventIntent_v0.startDate.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242847408(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  sub_2427E0918(a1, &v16[-v8], &qword_27ECC26F0, &unk_2428B7960);
  v10 = a2[9];
  v17[8] = a2[8];
  v17[9] = v10;
  v17[10] = a2[10];
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_2427E0918(v9, v7, &qword_27ECC26F0, &unk_2428B7960);
  sub_242852D84(v17, v16);
  sub_2428B2DD8();
  sub_2427E0980(v9, &qword_27ECC26F0, &unk_2428B7960);
  return sub_242852DBC(v17);
}

uint64_t EditEventIntent_v0.endDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*EditEventIntent_v0.endDate.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2428476D4(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[183] = v2;
  sub_242852D84(v10, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v10);
}

uint64_t (*EditEventIntent_v0.isAllDay.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242847844(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v14 = a1[2];
  v15 = v3;
  v4 = a1[3];
  v16 = a1[4];
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a2[9];
  v17[8] = a2[8];
  v17[9] = v6;
  v17[10] = a2[10];
  v7 = a2[5];
  v17[4] = a2[4];
  v17[5] = v7;
  v8 = a2[7];
  v17[6] = a2[6];
  v17[7] = v8;
  v9 = a2[1];
  v17[0] = *a2;
  v17[1] = v9;
  v10 = a2[3];
  v17[2] = a2[2];
  v17[3] = v10;
  v12[13] = v14;
  v12[14] = v4;
  v12[15] = a1[4];
  v12[11] = v13[0];
  v12[12] = v2;
  sub_2427E0918(v13, v12, &qword_27ECC2248, &unk_2428B7CE0);
  sub_242852D84(v17, v12);
  sub_2428B2DD8();
  return sub_242852DBC(v17);
}

uint64_t (*EditEventIntent_v0.calendar.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242847A08(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[183] = v2;
  sub_242852D84(v10, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v10);
}

uint64_t (*EditEventIntent_v0.privacyLevel.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242847B7C(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[183] = v2;
  sub_242852D84(v10, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v10);
}

uint64_t (*EditEventIntent_v0.status.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242847CF0(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[183] = v2;
  sub_242852D84(v10, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v10);
}

uint64_t (*EditEventIntent_v0.availability.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242847E74(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v11[8] = a2[8];
  v11[9] = v3;
  v11[10] = a2[10];
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[7];
  v11[6] = a2[6];
  v11[7] = v5;
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v10 = v2;
  sub_2428B3218();
  sub_242852D84(v11, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v11);
}

uint64_t (*EditEventIntent_v0.addAttendees.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242847FF8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v11[8] = a2[8];
  v11[9] = v3;
  v11[10] = a2[10];
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[7];
  v11[6] = a2[6];
  v11[7] = v5;
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v10 = v2;
  sub_2428B3218();
  sub_242852D84(v11, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v11);
}

uint64_t (*EditEventIntent_v0.removeAttendees.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_24284817C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v11[10] = a2[10];
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v6 = a2[7];
  v11[6] = a2[6];
  v11[7] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  v10[22] = v3;
  v10[23] = v2;
  sub_2428B3218();
  sub_242852D84(v11, v10);
  sub_2428B2DD8();
  return sub_242852DBC(v11);
}

uint64_t (*EditEventIntent_v0.location.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2428482EC(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a2[9];
  v23[8] = a2[8];
  v23[9] = v9;
  v23[10] = a2[10];
  v10 = a2[5];
  v23[4] = a2[4];
  v23[5] = v10;
  v11 = a2[7];
  v23[6] = a2[6];
  v23[7] = v11;
  v12 = a2[1];
  v23[0] = *a2;
  v23[1] = v12;
  v13 = a2[3];
  v23[2] = a2[2];
  v23[3] = v13;
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  sub_2428434B4(v2, v3, v4, v5, v6, v7, v8);
  sub_242852D84(v23, v15);
  sub_2428B2DD8();
  return sub_242852DBC(v23);
}

uint64_t (*EditEventIntent_v0.structuredLocation.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2428484A4(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v11[10] = a2[10];
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v6 = a2[7];
  v11[6] = a2[6];
  v11[7] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  v10[22] = v3;
  v10[23] = v2;
  sub_2428B3218();
  sub_242852D84(v11, v10);
  sub_2428B2DD8();
  return sub_242852DBC(v11);
}

uint64_t (*EditEventIntent_v0.notes.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242848614(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v14 = a1[2];
  v15 = v3;
  v4 = a1[3];
  v16 = a1[4];
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a2[9];
  v17[8] = a2[8];
  v17[9] = v6;
  v17[10] = a2[10];
  v7 = a2[5];
  v17[4] = a2[4];
  v17[5] = v7;
  v8 = a2[7];
  v17[6] = a2[6];
  v17[7] = v8;
  v9 = a2[1];
  v17[0] = *a2;
  v17[1] = v9;
  v10 = a2[3];
  v17[2] = a2[2];
  v17[3] = v10;
  v12[13] = v14;
  v12[14] = v4;
  v12[15] = a1[4];
  v12[11] = v13[0];
  v12[12] = v2;
  sub_2427E0918(v13, v12, &qword_27ECC38E8, qword_2428BDFD8);
  sub_242852D84(v17, v12);
  sub_2428B2DD8();
  return sub_242852DBC(v17);
}

uint64_t (*EditEventIntent_v0.recurrenceRule.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2428487EC(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[9];
  v12[8] = a2[8];
  v12[9] = v4;
  v12[10] = a2[10];
  v5 = a2[5];
  v12[4] = a2[4];
  v12[5] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v10[22] = v2;
  v11 = v3;
  sub_242852D84(v12, v10);
  sub_2428B2DD8();
  return sub_242852DBC(v12);
}

uint64_t (*EditEventIntent_v0.travelTime.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

uint64_t sub_242848978(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v11[8] = a2[8];
  v11[9] = v3;
  v11[10] = a2[10];
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[7];
  v11[6] = a2[6];
  v11[7] = v5;
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v10 = v2;
  sub_2428B3218();
  sub_242852D84(v11, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v11);
}

uint64_t (*EditEventIntent_v0.alarms.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242848AEC(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  sub_2427E0918(a1, &v16[-v8], &qword_27ECC2CE0, &qword_2428B6560);
  v10 = a2[9];
  v17[8] = a2[8];
  v17[9] = v10;
  v17[10] = a2[10];
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_2427E0918(v9, v7, &qword_27ECC2CE0, &qword_2428B6560);
  sub_242852D84(v17, v16);
  sub_2428B2DD8();
  sub_2427E0980(v9, &qword_27ECC2CE0, &qword_2428B6560);
  return sub_242852DBC(v17);
}

uint64_t EditEventIntent_v0.url.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*EditEventIntent_v0.url.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242848DA8(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[183] = v2;
  sub_242852D84(v10, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v10);
}

uint64_t (*EditEventIntent_v0.participationStatus.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242848F2C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v11[10] = a2[10];
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v6 = a2[7];
  v11[6] = a2[6];
  v11[7] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  v10[22] = v3;
  v10[23] = v2;
  sub_2428B3218();
  sub_242852D84(v11, v10);
  sub_2428B2DD8();
  return sub_242852DBC(v11);
}

uint64_t (*EditEventIntent_v0.floatingTimeZoneID.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_24284909C(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[183] = v2;
  sub_242852D84(v10, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v10);
}

uint64_t (*EditEventIntent_v0.span.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static EditEventIntent_v0.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39B0, &qword_2428BE348);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39B8, &qword_2428BE350);
  MEMORY[0x28223BE20](v1);
  sub_2428226EC();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39C8, &qword_2428BE380);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_2428493A0()
{
  swift_getKeyPath();
  sub_2428226EC();
  v0 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v1 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v2 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v3 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v4 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v10 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v9 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v12 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v14 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v13 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v5 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v11 = sub_2428B2F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2428BB310;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v10;
  *(v6 + 80) = v9;
  *(v6 + 88) = v12;
  *(v6 + 96) = v14;
  *(v6 + 104) = v13;
  *(v6 + 112) = v5;
  *(v6 + 120) = v11;
  sub_2428B2F38();
  v7 = sub_2428B3218();

  return v7;
}

uint64_t EditEventIntent_v0.perform()(uint64_t a1)
{
  *(v2 + 3472) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39D0, &qword_2428BE390);
  *(v2 + 3480) = v3;
  *(v2 + 3488) = *(v3 - 8);
  *(v2 + 3496) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39D8, &qword_2428BE398);
  *(v2 + 3504) = v4;
  *(v2 + 3512) = *(v4 - 8);
  *(v2 + 3520) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39E0, &qword_2428BE3A0);
  *(v2 + 3528) = v5;
  *(v2 + 3536) = *(v5 - 8);
  *(v2 + 3544) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39E8, &qword_2428BE3A8);
  *(v2 + 3552) = v6;
  *(v2 + 3560) = *(v6 - 8);
  *(v2 + 3568) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC39F0, &unk_2428BE3B0);
  *(v2 + 3576) = v7;
  *(v2 + 3584) = *(v7 - 8);
  *(v2 + 3592) = swift_task_alloc();
  *(v2 + 3600) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  *(v2 + 3608) = swift_task_alloc();
  *(v2 + 3616) = swift_task_alloc();
  *(v2 + 3624) = swift_task_alloc();
  v8 = sub_2428B35D8();
  *(v2 + 3632) = v8;
  *(v2 + 3640) = *(v8 - 8);
  *(v2 + 3648) = swift_task_alloc();
  *(v2 + 3656) = swift_task_alloc();
  *(v2 + 3664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2E08, &qword_2428BB3B0);
  *(v2 + 3672) = swift_task_alloc();
  *(v2 + 3680) = swift_task_alloc();
  v9 = sub_2428B3768();
  *(v2 + 3688) = v9;
  *(v2 + 3696) = *(v9 - 8);
  *(v2 + 3704) = swift_task_alloc();
  *(v2 + 3712) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  *(v2 + 3720) = swift_task_alloc();
  *(v2 + 3728) = swift_task_alloc();
  *(v2 + 3736) = swift_task_alloc();
  *(v2 + 3744) = swift_task_alloc();
  *(v2 + 3752) = swift_task_alloc();
  *(v2 + 3760) = swift_task_alloc();
  *(v2 + 3768) = swift_task_alloc();
  *(v2 + 3776) = swift_task_alloc();
  v10 = sub_2428B3688();
  *(v2 + 3784) = v10;
  *(v2 + 3792) = *(v10 - 8);
  *(v2 + 3800) = swift_task_alloc();
  *(v2 + 3808) = swift_task_alloc();
  *(v2 + 3816) = swift_task_alloc();
  *(v2 + 3824) = swift_task_alloc();
  *(v2 + 3832) = swift_task_alloc();
  *(v2 + 3840) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3A00, &qword_2428BDFD0);
  *(v2 + 3848) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC38E0, &unk_2428C40D0);
  *(v2 + 3856) = v11;
  *(v2 + 3864) = *(v11 - 8);
  *(v2 + 3872) = swift_task_alloc();
  *(v2 + 3880) = swift_task_alloc();
  *(v2 + 3888) = swift_task_alloc();
  v12 = v1[9];
  *(v2 + 320) = v1[8];
  *(v2 + 336) = v12;
  *(v2 + 352) = v1[10];
  v13 = v1[5];
  *(v2 + 256) = v1[4];
  *(v2 + 272) = v13;
  v14 = v1[7];
  *(v2 + 288) = v1[6];
  *(v2 + 304) = v14;
  v15 = v1[1];
  *(v2 + 192) = *v1;
  *(v2 + 208) = v15;
  v16 = v1[3];
  *(v2 + 224) = v1[2];
  *(v2 + 240) = v16;

  return MEMORY[0x2822009F8](sub_242849D40, 0, 0);
}

id sub_242849D40()
{
  v529 = v0;
  v1 = v0;
  v528 = *MEMORY[0x277D85DE8];
  v2 = sub_2428B43D8();
  *(v0 + 3320) = v2;
  *(v0 + 3328) = sub_242853048(&qword_280CDDA40, MEMORY[0x277CF7740], MEMORY[0x277CF7728]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 3296));
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v2);
  LOBYTE(v2) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 3296));
  v515 = v0;
  if ((v2 & 1) == 0)
  {
    sub_2428B2938();
    sub_242853048(&qword_27ECC1A80, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
    goto LABEL_247;
  }

  sub_2428B28E8();
  v4 = [*(v0 + 3464) eventStore];
  *(v0 + 3896) = v4;
  swift_unknownObjectRelease();
  if (!v4)
  {
    sub_2427CCDB0();
    swift_allocError();
    *v22 = 24;
    swift_willThrow();
    goto LABEL_247;
  }

  *(v0 + 3904) = *(v0 + 200);
  sub_2428B2DC8();
  v5 = *(v0 + 1152);
  *(v0 + 2576) = *(v0 + 1136);
  *(v0 + 2592) = v5;
  v6 = *(v0 + 1184);
  *(v0 + 2608) = *(v0 + 1168);
  *(v0 + 2624) = v6;
  v7 = *(v0 + 1088);
  *(v0 + 2512) = *(v0 + 1072);
  *(v0 + 2528) = v7;
  v8 = *(v0 + 1120);
  *(v0 + 2544) = *(v0 + 1104);
  *(v0 + 2560) = v8;
  v9 = *(v0 + 1056);
  *(v0 + 2480) = *(v0 + 1040);
  *(v0 + 2496) = v9;
  sub_2428B3218();
  sub_2427CCE04(v0 + 2480);
  v10 = sub_2428B4608();

  v11 = [v4 eventWithIdentifier_];
  *(v0 + 3912) = v11;

  if (!v11)
  {
    sub_2427CCDB0();
    swift_allocError();
    *v23 = 25;
    swift_willThrow();

    goto LABEL_247;
  }

  v12 = [v11 isEditable];
  *(v0 + 3988) = v12;
  if ((v12 & 1) == 0 && ![v11 isExternallyOrganizedInvitation])
  {
    sub_2427CCDB0();
    swift_allocError();
    v25 = 49;
LABEL_22:
    *v24 = v25;
    swift_willThrow();

    goto LABEL_247;
  }

  sub_2428B2DC8();
  if (*(v0 + 3344))
  {
    if (!v12)
    {

LABEL_21:
      sub_2427CCDB0();
      swift_allocError();
      v25 = 56;
      goto LABEL_22;
    }

    v13 = v11;
    v14 = sub_2428B4608();

    [v13 setTitle_];
  }

  v15 = *(v1 + 232);
  sub_2428B2DC8();
  v16 = *(v1 + 3413);
  if (v16 == 2 || [v11 isAllDay] == (v16 & 1))
  {
    goto LABEL_14;
  }

  if (!v12)
  {
    goto LABEL_21;
  }

  if ((v16 & 1) == 0)
  {
    [v11 setAllDay_];
  }

LABEL_14:
  sub_2428B2DC8();
  v17 = *(v1 + 3888);
  v18 = *(v1 + 3864);
  v19 = *(v1 + 3856);
  v20 = *(v1 + 3848);
  if (*(v1 + 3392))
  {
    sub_2428B3218();
    v21 = v515;
    sub_2428B3718();
    swift_bridgeObjectRelease_n();
    (*(v18 + 56))(v20, 0, 1, v19);
    sub_24281E660(v20, v17, &qword_27ECC38E0, &unk_2428C40D0);
  }

  else
  {
    v26 = *(v515 + 3696);
    v27 = *(v515 + 3688);
    (*(v18 + 56))(v20, 1, 1, v19);
    sub_2428B3758();
    (*(v26 + 56))(v17, 0, 1, v27);
    v21 = v515;
    if ((*(v18 + 48))(v20, 1, v19) != 1)
    {
      sub_2427E0980(*(v515 + 3848), &unk_27ECC3A00, &qword_2428BDFD0);
    }
  }

  v28 = *(v21 + 3792);
  v29 = *(v21 + 3784);
  v30 = *(v21 + 3776);
  sub_2428B2DC8();
  v31 = *(v28 + 48);
  if (v31(v30, 1, v29) == 1)
  {
    sub_2427E0980(*(v21 + 3776), &qword_27ECC26F0, &unk_2428B7960);
    goto LABEL_51;
  }

  v32 = *(*(v21 + 3792) + 32);
  v32(*(v21 + 3840), *(v21 + 3776), *(v21 + 3784));
  if (!v12)
  {
    v34 = *(v21 + 3888);
    v35 = *(v21 + 3840);
    goto LABEL_58;
  }

  sub_2428B2DC8();
  v33 = *(v21 + 3987);
  v500 = v31;
  v481 = v32;
  if (v33 == 2)
  {
    if (([v11 isFloating] & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if ((v33 & 1) == 0)
  {
    goto LABEL_41;
  }

  v36 = sub_2428B3658();
  v37 = [v4 timeZone];
  if (v37)
  {
    v38 = *(v21 + 3712);
    v39 = *(v21 + 3696);
    v40 = *(v21 + 3688);
    v41 = v37;
    sub_2428B3748();

    v42 = sub_2428B3738();
    (*(v39 + 8))(v38, v40);
  }

  else
  {
    v42 = 0;
  }

  v43 = *(v21 + 3880);
  v44 = *(v21 + 3696);
  v45 = *(v21 + 3688);
  sub_2427E0918(*(v21 + 3888), v43, &qword_27ECC38E0, &unk_2428C40D0);
  if ((*(v44 + 48))(v43, 1, v45) == 1)
  {
    v46 = 0;
  }

  else
  {
    v47 = *(v21 + 3880);
    v48 = *(v21 + 3696);
    v49 = *(v21 + 3688);
    v46 = sub_2428B3738();
    (*(v48 + 8))(v47, v49);
  }

  v50 = [v36 dateInTimeZone:v42 fromTimeZone:v46];

  if (!v50)
  {
    __break(1u);
    goto LABEL_378;
  }

  v21 = v515;
  v51 = *(v515 + 3840);
  v52 = *(v515 + 3832);
  v53 = *(v515 + 3792);
  v54 = *(v515 + 3784);
  sub_2428B3678();

  (*(v53 + 8))(v51, v54);
  v481(v51, v52, v54);
LABEL_41:
  v55 = *(v21 + 3792);
  v56 = *(v21 + 3784);
  v57 = *(v21 + 3768);
  (*(v55 + 16))(v57, *(v21 + 3840), v56);
  v58 = 1;
  v489 = *(v55 + 56);
  v489(v57, 0, 1, v56);
  v59 = [v11 startDate];
  if (v59)
  {
    v60 = v59;
    sub_2428B3678();

    v58 = 0;
  }

  v61 = *(v21 + 3784);
  v62 = *(v21 + 3768);
  v63 = *(v515 + 3760);
  v64 = *(v515 + 3680);
  v65 = *(v515 + 3664);
  v489(v63, v58, 1, v61);
  v66 = *(v65 + 48);
  sub_2427E0918(v62, v64, &qword_27ECC26F0, &unk_2428B7960);
  v490 = v66;
  v67 = v63;
  v21 = v515;
  sub_2427E0918(v67, v64 + v66, &qword_27ECC26F0, &unk_2428B7960);
  v31 = v500;
  v68 = v500(v64, 1, v61);
  v69 = *(v515 + 3784);
  if (v68 != 1)
  {
    sub_2427E0918(*(v515 + 3680), *(v515 + 3752), &qword_27ECC26F0, &unk_2428B7960);
    if (v500(v64 + v490, 1, v69) != 1)
    {
      v91 = *(v515 + 3824);
      v92 = *(v515 + 3792);
      v93 = *(v515 + 3784);
      v478 = *(v515 + 3760);
      v479 = *(v515 + 3768);
      v94 = *(v515 + 3752);
      v480 = *(v515 + 3680);
      v481(v91, v64 + v490, v93);
      sub_242853048(&qword_27ECC2E38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v95 = sub_2428B4558();
      v96 = *(v92 + 8);
      v96(v91, v93);
      sub_2427E0980(v478, &qword_27ECC26F0, &unk_2428B7960);
      sub_2427E0980(v479, &qword_27ECC26F0, &unk_2428B7960);
      v96(v94, v93);
      v21 = v515;
      sub_2427E0980(v480, &qword_27ECC26F0, &unk_2428B7960);
      v31 = v500;
      if (v95)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v72 = *(v515 + 3792);
    v73 = *(v515 + 3784);
    v74 = *(v515 + 3768);
    v75 = *(v515 + 3752);
    v71 = v515;
    sub_2427E0980(*(v515 + 3760), &qword_27ECC26F0, &unk_2428B7960);
    sub_2427E0980(v74, &qword_27ECC26F0, &unk_2428B7960);
    (*(v72 + 8))(v75, v73);
    v31 = v500;
LABEL_48:
    sub_2427E0980(*(v71 + 3680), &qword_27ECC2E08, &qword_2428BB3B0);
    v21 = v71;
LABEL_49:
    v76 = sub_2428B3658();
    [v11 setStartDate_];

    goto LABEL_50;
  }

  v70 = *(v515 + 3768);
  v71 = v515;
  sub_2427E0980(*(v515 + 3760), &qword_27ECC26F0, &unk_2428B7960);
  sub_2427E0980(v70, &qword_27ECC26F0, &unk_2428B7960);
  if (v500(v64 + v490, 1, v69) != 1)
  {
    goto LABEL_48;
  }

  sub_2427E0980(*(v515 + 3680), &qword_27ECC26F0, &unk_2428B7960);
LABEL_50:
  (*(*(v21 + 3792) + 8))(*(v21 + 3840), *(v21 + 3784));
LABEL_51:
  v77 = *(v21 + 3784);
  v78 = *(v21 + 3744);
  sub_2428B2DC8();
  if (v31(v78, 1, v77) != 1)
  {
    v15 = *(v21 + 3792);
    v80 = *(v15 + 32);
    LODWORD(v15) = v15 + 32;
    v79 = v80;
    v80(*(v21 + 3816), *(v21 + 3744), *(v21 + 3784));
    if (v12)
    {
      sub_2428B2DC8();
      v81 = *(v21 + 3986);
      v501 = v31;
      if (v81 == 2)
      {
        if (([v11 isFloating] & 1) == 0)
        {
LABEL_70:
          v110 = *(v21 + 3792);
          v111 = *(v21 + 3784);
          v112 = *(v21 + 3736);
          (*(v110 + 16))(v112, *(v21 + 3816), v111);
          v113 = *(v110 + 56);
          v114 = 1;
          v113(v112, 0, 1, v111);
          v115 = [v11 endDate];
          v491 = v79;
          if (v115)
          {
            v116 = v115;
            sub_2428B3678();

            v114 = 0;
          }

          v117 = *(v21 + 3784);
          v118 = *(v21 + 3736);
          v119 = *(v21 + 3728);
          v120 = *(v21 + 3672);
          v121 = *(v515 + 3664);
          v113(v119, v114, 1, v117);
          v122 = *(v121 + 48);
          v21 = v515;
          sub_2427E0918(v118, v120, &qword_27ECC26F0, &unk_2428B7960);
          sub_2427E0918(v119, v120 + v122, &qword_27ECC26F0, &unk_2428B7960);
          v123 = v501(v120, 1, v117);
          v124 = *(v515 + 3784);
          if (v123 == 1)
          {
            v12 = *(v515 + 3736);
            sub_2427E0980(*(v515 + 3728), &qword_27ECC26F0, &unk_2428B7960);
            sub_2427E0980(v12, &qword_27ECC26F0, &unk_2428B7960);
            if (v501(v120 + v122, 1, v124) == 1)
            {
              sub_2427E0980(*(v515 + 3672), &qword_27ECC26F0, &unk_2428B7960);
LABEL_79:
              (*(*(v515 + 3792) + 8))(*(v515 + 3816), *(v515 + 3784));
              goto LABEL_80;
            }
          }

          else
          {
            sub_2427E0918(*(v515 + 3672), *(v515 + 3720), &qword_27ECC26F0, &unk_2428B7960);
            if (v501(v120 + v122, 1, v124) != 1)
            {
              v172 = *(v515 + 3824);
              v173 = *(v515 + 3792);
              v12 = *(v515 + 3784);
              v174 = *(v515 + 3728);
              v175 = *(v515 + 3720);
              v494 = *(v515 + 3736);
              v502 = *(v515 + 3672);
              v491(v172, v120 + v122, v12);
              sub_242853048(&qword_27ECC2E38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
              v176 = sub_2428B4558();
              v177 = *(v173 + 8);
              v177(v172, v12);
              sub_2427E0980(v174, &qword_27ECC26F0, &unk_2428B7960);
              sub_2427E0980(v494, &qword_27ECC26F0, &unk_2428B7960);
              v177(v175, v12);
              sub_2427E0980(v502, &qword_27ECC26F0, &unk_2428B7960);
              if (v176)
              {
                goto LABEL_79;
              }

              goto LABEL_78;
            }

            v125 = *(v515 + 3792);
            v126 = *(v515 + 3784);
            v127 = *(v515 + 3736);
            v12 = *(v515 + 3720);
            sub_2427E0980(*(v515 + 3728), &qword_27ECC26F0, &unk_2428B7960);
            sub_2427E0980(v127, &qword_27ECC26F0, &unk_2428B7960);
            (*(v125 + 8))(v12, v126);
          }

          sub_2427E0980(*(v515 + 3672), &qword_27ECC2E08, &qword_2428BB3B0);
LABEL_78:
          v128 = sub_2428B3658();
          [v11 setEndDate_];

          goto LABEL_79;
        }
      }

      else if ((v81 & 1) == 0)
      {
        goto LABEL_70;
      }

      v12 = sub_2428B3658();
      v85 = [v4 timeZone];
      if (v85)
      {
        v86 = *(v21 + 3704);
        v87 = *(v21 + 3696);
        v88 = *(v21 + 3688);
        v89 = v85;
        sub_2428B3748();

        v90 = sub_2428B3738();
        (*(v87 + 8))(v86, v88);
      }

      else
      {
        v90 = 0;
      }

      v97 = *(v21 + 3872);
      v98 = *(v21 + 3696);
      v99 = *(v21 + 3688);
      sub_2427E0918(*(v21 + 3888), v97, &qword_27ECC38E0, &unk_2428C40D0);
      if ((*(v98 + 48))(v97, 1, v99) == 1)
      {
        v46 = 0;
      }

      else
      {
        v100 = *(v21 + 3872);
        v101 = *(v21 + 3696);
        v483 = v12;
        v102 = v79;
        v103 = *(v21 + 3688);
        v46 = sub_2428B3738();
        v104 = v103;
        v79 = v102;
        v12 = v483;
        (*(v101 + 8))(v100, v104);
      }

      v105 = [v12 dateInTimeZone:v90 fromTimeZone:v46];

      if (v105)
      {
        v106 = *(v21 + 3816);
        v107 = *(v21 + 3808);
        v108 = *(v21 + 3792);
        v109 = *(v21 + 3784);
        sub_2428B3678();

        (*(v108 + 8))(v106, v109);
        v79(v106, v107, v109);
        goto LABEL_70;
      }

LABEL_378:
      __break(1u);
      goto LABEL_379;
    }

    v34 = *(v21 + 3888);
    v35 = *(v21 + 3816);
LABEL_58:
    v82 = *(v21 + 3792);
    v83 = *(v21 + 3784);
    sub_2427CCDB0();
    swift_allocError();
    *v84 = 56;
    swift_willThrow();

    (*(v82 + 8))(v35, v83);
    goto LABEL_245;
  }

  sub_2427E0980(*(v21 + 3744), &qword_27ECC26F0, &unk_2428B7960);
LABEL_80:
  v129 = (v21 + 2880);
  sub_2428B2DC8();
  v130 = *(v21 + 3414);
  if (v130 != 2)
  {
    v131 = v130 & 1;
    if ([v11 isAllDay] != v131)
    {
      [v11 setAllDay_];
    }
  }

  sub_2428B2DC8();
  if (!*(v21 + 2880))
  {
    v153 = *(v21 + 2928);
    *(v21 + 2672) = *(v21 + 2912);
    *(v21 + 2688) = v153;
    *(v21 + 2704) = *(v21 + 2944);
    v154 = *(v21 + 2896);
    *(v21 + 2640) = *v129;
    *(v21 + 2656) = v154;
    sub_2427E0980(v21 + 2640, &qword_27ECC2248, &unk_2428B7CE0);
    goto LABEL_90;
  }

  v132 = v21 + 2720;
  v133 = *v129;
  v134 = *(v21 + 2896);
  v135 = v21 + 2800;
  v136 = *(v21 + 2928);
  v137 = *(v21 + 2944);
  v138 = *(v21 + 2912);
  *(v21 + 2768) = v136;
  *(v21 + 2784) = v137;
  v139 = *(v21 + 2896);
  v140 = *(v21 + 2912);
  v141 = *v129;
  *(v21 + 2720) = v133;
  *(v21 + 2736) = v139;
  *(v21 + 2752) = v138;
  v142 = *(v21 + 2944);
  *(v21 + 2848) = v136;
  *(v21 + 2864) = v142;
  v143 = *(v21 + 2720);
  v12 = *(v21 + 2736);
  v15 = *(v515 + 2792);
  *(v21 + 2816) = v134;
  *(v21 + 2832) = v140;
  *(v21 + 2800) = v141;
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  v21 = v515;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B3218();
  sub_2427E0980(v135, &qword_27ECC2248, &unk_2428B7CE0);
  v46 = v143;
  sub_2428B28E8();
  v144 = *(v515 + 3432);
  v145 = [v144 eventStore];
  if (!v145)
  {
    __break(1u);
    goto LABEL_326;
  }

  v146 = v145;
  swift_unknownObjectRelease();
  v12 = sub_2428B4608();
  v147 = [v146 calendarWithIdentifier_];
  *(v515 + 3920) = v147;

  sub_2427E0980(v132, &qword_27ECC2248, &unk_2428B7CE0);
  if (!v147)
  {
LABEL_90:
    sub_2428B2DC8();
    v155 = *(v21 + 3415);
    if (*(v21 + 3415) <= 1u)
    {
      v156 = *(v21 + 3415);
      if (*(v21 + 3415))
      {
        v156 = 1;
      }
    }

    else if (v155 == 2)
    {
      v156 = 2;
    }

    else
    {
      if (v155 != 3)
      {
        goto LABEL_103;
      }

      v156 = 3;
    }

    if (v156 != [*(v21 + 3912) privacyLevel])
    {
      if (![*(v21 + 3912) allowsPrivacyLevelModifications])
      {
        v166 = *(v21 + 3912);
        v167 = *(v21 + 3896);
        v34 = *(v21 + 3888);
        sub_2427CCDB0();
        swift_allocError();
        v169 = 64;
        goto LABEL_243;
      }

      [*(v21 + 3912) setPrivacyLevel_];
    }

LABEL_103:
    sub_2428B2DC8();
    v164 = *(v21 + 3409);
    if (*(v21 + 3409) > 1u)
    {
      if (v164 != 2)
      {
        goto LABEL_113;
      }

      v165 = 3;
    }

    else if (*(v21 + 3409))
    {
      v165 = 2;
    }

    else
    {
      v165 = 1;
    }

    if (v165 != [*(v21 + 3912) status])
    {
      if (*(v21 + 3988) != 1)
      {
        v166 = *(v21 + 3912);
        v167 = *(v21 + 3896);
        v34 = *(v21 + 3888);
        sub_2427CCDB0();
        swift_allocError();
        v169 = 56;
        goto LABEL_243;
      }

      [*(v21 + 3912) setStatus_];
    }

LABEL_113:
    sub_2428B2DC8();
    v170 = *(v21 + 3985);
    if (v170 > 2)
    {
      if (v170 == 3)
      {
        v171 = 2;
      }

      else
      {
        if (v170 != 4)
        {
LABEL_125:
          sub_2428B2DC8();
          v178 = *(v21 + 3416);
          if (!v178)
          {
            goto LABEL_229;
          }

          v179 = *(v21 + 3912);
          if (*(v21 + 3988) != 1)
          {
            v212 = *(v21 + 3896);
            v213 = *(v21 + 3888);
LABEL_239:

            sub_2427CCDB0();
            swift_allocError();
            v215 = 56;
            goto LABEL_240;
          }

          v180 = [*(v21 + 3912) currentUserMayActAsOrganizer];
          v179 = *(v21 + 3912);
          if (v180)
          {
            v181 = [*(v21 + 3912) attendees];
            if (v181)
            {
              v182 = v181;
              sub_242822BFC(0, &qword_27ECC3260, 0x277CC5A70);
              v183 = sub_2428B46C8();

              v12 = sub_242851D1C(MEMORY[0x277D84F98]);
              if (v183 >> 62)
              {
                goto LABEL_202;
              }

              v184 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v495 = v178;
              if (!v184)
              {
LABEL_203:
                v241 = MEMORY[0x277D84F98];
                sub_242852214(MEMORY[0x277D84F98]);
                v492 = v242;
                sub_242852214(v241);
                v240 = v243;
                goto LABEL_204;
              }

LABEL_131:
              v185 = 0;
              v503 = v183 & 0xFFFFFFFFFFFFFF8;
              v510 = v183 & 0xC000000000000001;
              v484 = *(v21 + 3640);
              do
              {
                if (v510)
                {
                  v178 = v183;
                  v189 = MEMORY[0x245D1B5D0](v185, v183);
                }

                else
                {
                  if (v185 >= *(v503 + 16))
                  {
                    goto LABEL_195;
                  }

                  v178 = v183;
                  v189 = *(v183 + 8 * v185 + 32);
                }

                v190 = v189;
                v183 = v185 + 1;
                if (__OFADD__(v185, 1))
                {
                  __break(1u);
LABEL_195:
                  __break(1u);
LABEL_196:
                  __break(1u);
LABEL_197:
                  __break(1u);
LABEL_198:
                  __break(1u);
LABEL_199:
                  __break(1u);
LABEL_200:
                  __break(1u);
LABEL_201:
                  __break(1u);
LABEL_202:
                  v184 = sub_2428B49C8();
                  v495 = v178;
                  if (!v184)
                  {
                    goto LABEL_203;
                  }

                  goto LABEL_131;
                }

                v191 = v184;
                v192 = *(v21 + 3656);
                v193 = [v189 URL];
                sub_2428B35B8();

                v194 = v190;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v518 = v12;
                v196 = sub_24281E894(v192);
                v21 = v197;
                v198 = *(v12 + 16);
                v199 = (v197 & 1) == 0;
                if (__OFADD__(v198, v199))
                {
                  goto LABEL_196;
                }

                v200 = v196;
                v12 = v518;
                if (sub_242852DEC(isUniquelyReferenced_nonNull_native, v198 + v199))
                {
                  v201 = sub_24281E894(*(v515 + 3656));
                  if ((v21 & 1) != (v202 & 1))
                  {

                    return sub_2428B4C38();
                  }

                  v200 = v201;
                }

                v203 = *(v515 + 3656);
                v204 = *(v515 + 3632);
                if (v21)
                {
                  v186 = *(v518 + 56);
                  v187 = *(v186 + 8 * v200);
                  *(v186 + 8 * v200) = v194;

                  (*(v484 + 8))(v203, v204);
                }

                else
                {
                  *(v518 + 8 * (v200 >> 6) + 64) |= 1 << v200;
                  v21 = v484;
                  (*(v484 + 16))(*(v12 + 48) + *(v484 + 72) * v200, v203, v204);
                  *(*(v12 + 56) + 8 * v200) = v194;

                  (*(v484 + 8))(v203, v204);
                  v205 = *(v12 + 16);
                  v206 = __OFADD__(v205, 1);
                  v207 = v205 + 1;
                  if (v206)
                  {
                    goto LABEL_201;
                  }

                  *(v12 + 16) = v207;
                }

                v21 = v515;
                v184 = v191;
                ++v185;
                v188 = v183 == v191;
                v183 = v178;
              }

              while (!v188);
              sub_242852214(MEMORY[0x277D84F98]);
              v492 = v216;
              v217 = 0;
              v178 = v495;
              do
              {
                while (1)
                {
                  if (v510)
                  {
                    v218 = MEMORY[0x245D1B5D0](v217, v183);
                  }

                  else
                  {
                    if (v217 >= *(v503 + 16))
                    {
                      goto LABEL_198;
                    }

                    v218 = *(v183 + 8 * v217 + 32);
                  }

                  v219 = v218;
                  v220 = v217 + 1;
                  if (__OFADD__(v217, 1))
                  {
                    goto LABEL_197;
                  }

                  v221 = [v218 emailAddress];
                  if (v221)
                  {
                    break;
                  }

                  ++v217;
                  if (v220 == v191)
                  {
                    goto LABEL_177;
                  }
                }

                v222 = v221;
                v485 = sub_2428B4618();
                v224 = v223;

                v225 = v219;
                v226 = swift_isUniquelyReferenced_nonNull_native();
                *&v518 = v492;
                sub_2428203F8(v225, v485, v224, v226);

                v21 = v515;

                v217 = v220;
              }

              while (v220 != v191);
LABEL_177:
              sub_242852214(MEMORY[0x277D84F98]);
              v486 = v227;
              v228 = 0;
              do
              {
                while (1)
                {
                  if (v510)
                  {
                    v229 = MEMORY[0x245D1B5D0](v228, v183);
                  }

                  else
                  {
                    if (v228 >= *(v503 + 16))
                    {
                      goto LABEL_200;
                    }

                    v229 = *(v183 + 8 * v228 + 32);
                  }

                  v230 = v229;
                  v231 = v228 + 1;
                  if (__OFADD__(v228, 1))
                  {
                    goto LABEL_199;
                  }

                  v232 = [v229 phoneNumber];
                  if (v232)
                  {
                    break;
                  }

                  ++v228;
                  if (v231 == v184)
                  {
                    goto LABEL_188;
                  }
                }

                v233 = v232;
                v234 = sub_2428B4618();
                v236 = v235;

                v237 = v230;
                v238 = swift_isUniquelyReferenced_nonNull_native();
                *&v518 = v486;
                v239 = v234;
                v21 = v515;
                sub_2428203F8(v237, v239, v236, v238);

                v184 = v191;

                v228 = v231;
              }

              while (v231 != v191);
LABEL_188:
              v240 = v486;
LABEL_204:

              v244 = *(v178 + 16);
              if (v244)
              {
                v487 = v240;
                v245 = (v21 + 3104);
                v246 = *(v21 + 3640);
                v247 = (v246 + 48);
                v504 = (v246 + 8);
                v511 = (v246 + 32);
                v248 = v244 - 1;
                for (i = 32; ; i += 64)
                {
                  v250 = v515;
                  v251 = *(v515 + 3632);
                  v252 = *(v515 + 3624);
                  v254 = *(v495 + i);
                  v253 = *(v495 + i + 16);
                  v255 = *(v495 + i + 48);
                  v245[2] = *(v495 + i + 32);
                  v245[3] = v255;
                  *v245 = v254;
                  v245[1] = v253;
                  sub_2428430F4(v245, v515 + 3040);
                  sub_2428B2C68();
                  if ((*v247)(v252, 1, v251) == 1)
                  {
                    sub_2427E0980(*(v515 + 3624), &qword_27ECC2CE0, &qword_2428B6560);
                  }

                  else
                  {
                    (*v511)(*(v515 + 3648), *(v515 + 3624), *(v515 + 3632));
                    if (*(v12 + 16))
                    {
                      v256 = sub_24281E894(*(v515 + 3648));
                      if (v257)
                      {
                        v258 = *(v515 + 3912);
                        v259 = *(v515 + 3648);
                        v260 = *(v515 + 3632);
                        v261 = *(*(v12 + 56) + 8 * v256);
                        [v258 removeAttendee_];
                        sub_242843150(v245);

                        (*v504)(v259, v260);
                        goto LABEL_224;
                      }
                    }

                    (*v504)(*(v515 + 3648), *(v515 + 3632));
                  }

                  sub_2428B2C68();
                  v262 = *(v515 + 3376);
                  if (v262)
                  {
                    if (*(v492 + 16))
                    {
                      v250 = v515;
                      v263 = sub_242801C04(*(v515 + 3368), v262);
                      v265 = v264;

                      if (v265)
                      {
                        v266 = *(v515 + 3912);
                        v267 = *(*(v492 + 56) + 8 * v263);
LABEL_221:
                        v272 = v267;
                        [v266 removeAttendee_];
                        sub_242843150(v245);

                        goto LABEL_224;
                      }
                    }

                    else
                    {

                      v250 = v515;
                    }
                  }

                  sub_2428B2C68();
                  v268 = *(v250 + 3360);
                  if (!v268)
                  {
                    goto LABEL_222;
                  }

                  if (*(v487 + 16))
                  {
                    break;
                  }

                  sub_242843150(v245);

LABEL_224:
                  if (!v248)
                  {

                    v21 = v515;
                    goto LABEL_229;
                  }

                  --v248;
                }

                v269 = sub_242801C04(*(v515 + 3352), v268);
                v271 = v270;

                if (v271)
                {
                  v266 = *(v515 + 3912);
                  v267 = *(*(v487 + 56) + 8 * v269);
                  goto LABEL_221;
                }

LABEL_222:
                sub_242843150(v245);
                goto LABEL_224;
              }
            }

LABEL_229:
            sub_2428B2DC8();
            v273 = *(v21 + 3424);
            if (!v273)
            {
LABEL_283:
              v295 = *(v21 + 3600);
              v296 = *(v21 + 3584);
              v297 = *(v21 + 3576);
              sub_2428B2DE8();
              sub_2427CD47C(&unk_27ECC3A10, &qword_27ECC24F8, &qword_2428B8AD8, MEMORY[0x277D84F60]);
              sub_2428B2EE8();

              v298 = *(v296 + 88);
              v299 = v298(v295, v297);
              LODWORD(v15) = *MEMORY[0x277CB9F00];
              if (v299 == *MEMORY[0x277CB9F00])
              {
                v300 = *(v21 + 3988);
                v301 = *(v21 + 3600);
                (*(*(v21 + 3584) + 96))(v301, *(v21 + 3576));
                if (v300 != 1)
                {
LABEL_294:
                  v314 = *(v21 + 3912);
                  v315 = *(v21 + 3896);
                  v213 = *(v21 + 3888);

                  sub_2427CCDB0();
                  swift_allocError();
                  *v316 = 56;
                  swift_willThrow();

                  goto LABEL_241;
                }

                v302 = *(v21 + 3912);
                if (*(v301 + 8))
                {
                  v303 = v302;
                  v304 = sub_2428B4608();

                  v305 = *(v21 + 3912);
                }

                else
                {
                  v305 = v302;
                  v304 = 0;
                }

                [v305 setNotes_];
              }

              else
              {
                (*(*(v21 + 3584) + 8))(*(v21 + 3600), *(v21 + 3576));
              }

              v306 = *(v21 + 3592);
              v307 = *(v21 + 3576);
              sub_2428B2DE8();
              sub_2428B2EE8();

              if (v298(v306, v307) != v15)
              {
                (*(*(v21 + 3584) + 8))(*(v21 + 3592), *(v21 + 3576));
LABEL_298:
                v317 = *(v21 + 3568);
                v318 = *(v21 + 3560);
                v319 = *(v21 + 3552);
                sub_2428B2DE8();
                sub_2427CD47C(&qword_27ECC3A20, &qword_27ECC3A28, &unk_2428BE3C0, MEMORY[0x277D84F60]);
                sub_2428B2EE8();

                if ((*(v318 + 88))(v317, v319) == v15)
                {
                  v506 = v15;
                  v320 = *(v21 + 3988);
                  v321 = *(v21 + 3568);
                  (*(*(v21 + 3560) + 96))(v321, *(v21 + 3552));
                  v15 = *v321;
                  v322 = v321[1];
                  v324 = v321[2];
                  v323 = v321[3];
                  v326 = v321[4];
                  v325 = v321[5];
                  v327 = v321[6];
                  if (v320 != 1)
                  {
                    v329 = *(v21 + 3896);
                    v497 = *(v21 + 3912);
                    v507 = *(v21 + 3888);
                    sub_2427CCDB0();
                    swift_allocError();
                    *v330 = 56;
                    swift_willThrow();

                    sub_24284301C(v15, v322, v324, v323, v326, v325, v327);
                    v282 = v507;
                    goto LABEL_246;
                  }

                  if (v15)
                  {
                    *&v518 = *v321;
                    *(&v518 + 1) = v322;
                    *&v519 = v324;
                    *(&v519 + 1) = v323;
                    *&v520 = v326;
                    *(&v520 + 1) = v325;
                    *&v521 = v327;
                    v328 = LocationEntity.ekStructuredLocation.getter();
                  }

                  else
                  {
                    v328 = 0;
                  }

                  v21 = v515;
                  [*(v515 + 3912) setStructuredLocation_];

                  sub_24284301C(v15, v322, v324, v323, v326, v325, v327);
                  LODWORD(v15) = v506;
                }

                else
                {
                  (*(*(v21 + 3560) + 8))(*(v21 + 3568), *(v21 + 3552));
                }

                v331 = *(v21 + 3544);
                v332 = *(v21 + 3536);
                v333 = *(v21 + 3528);
                sub_2428B2DE8();
                sub_2427CD47C(&unk_27ECC3A30, &qword_27ECC38E8, qword_2428BDFD8, MEMORY[0x277D84F60]);
                sub_2428B2EE8();

                if ((*(v332 + 88))(v331, v333) != v15)
                {
                  (*(*(v21 + 3536) + 8))(*(v21 + 3544), *(v21 + 3528));
LABEL_331:
                  v11 = 0;
LABEL_332:
                  *(v21 + 3944) = v11;
                  sub_2428B2DC8();
                  if ((*(v21 + 3408) & 1) == 0)
                  {
                    [*(v21 + 3912) setTravelTime_];
                  }

                  v363 = *(v21 + 3520);
                  v364 = *(v21 + 3512);
                  v365 = *(v21 + 3504);
                  sub_2428B2DE8();
                  sub_2427CD47C(&qword_27ECC3A40, &qword_27ECC3A48, &qword_2428BE3D0, MEMORY[0x277D84F60]);
                  sub_2428B2EE8();

                  v366 = (*(v364 + 88))(v363, v365);
                  v367 = *(v21 + 3520);
                  v368 = *(v21 + 3512);
                  v369 = *(v21 + 3504);
                  if (v366 == v15)
                  {
                    (*(v368 + 96))(*(v21 + 3520), v369);
                    v370 = *v367;
                    v371 = *(v21 + 3912);
                    if (*v367)
                    {
                      v517[0] = MEMORY[0x277D84F90];
                      v372 = *(v370 + 16);
                      v373 = v371;
                      v374 = 0;
LABEL_337:
                      v375 = (v370 + 48 + 24 * v374);
                      while (v372 != v374)
                      {
                        if (v374 >= *(v370 + 16))
                        {
                          __break(1u);
                        }

                        v376 = v375 + 3;
                        ++v374;
                        v377 = *v375;
                        v518 = *(v375 - 1);
                        *&v519 = v377;
                        v378 = AlarmEntity.ekAlarm.getter();
                        v375 = v376;
                        v21 = v515;
                        if (v378)
                        {
                          MEMORY[0x245D1B200]();
                          if (*((v517[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v517[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            sub_2428B46E8();
                            v21 = v515;
                          }

                          sub_2428B4708();
                          goto LABEL_337;
                        }
                      }

                      sub_242822BFC(0, &qword_27ECC2FE8, 0x277CC5988);
                      v379 = sub_2428B46B8();

                      v380 = *(v21 + 3912);
                    }

                    else
                    {
                      v380 = v371;
                      v379 = 0;
                    }

                    [v380 setAlarms_];
                  }

                  else
                  {
                    (*(v368 + 8))(*(v21 + 3520), v369);
                  }

                  v381 = *(v21 + 3496);
                  v382 = *(v21 + 3488);
                  v383 = *(v21 + 3480);
                  sub_2428B2DE8();
                  sub_2427CD47C(&unk_27ECC3A50, &qword_27ECC2CE0, &qword_2428B6560, MEMORY[0x277D84F60]);
                  sub_2428B2EE8();

                  if ((*(v382 + 88))(v381, v383) == v15)
                  {
                    v384 = *(v21 + 3988);
                    v385 = *(v21 + 3616);
                    v386 = *(v21 + 3496);
                    (*(*(v21 + 3488) + 96))(v386, *(v21 + 3480));
                    sub_24281E660(v386, v385, &qword_27ECC2CE0, &qword_2428B6560);
                    v387 = *(v21 + 3912);
                    if (v384 != 1)
                    {
                      v393 = *(v21 + 3896);
                      v34 = *(v21 + 3888);
                      v394 = *(v21 + 3616);
                      sub_2427CCDB0();
                      swift_allocError();
                      *v395 = 56;
                      swift_willThrow();

                      sub_2427E0980(v394, &qword_27ECC2CE0, &qword_2428B6560);
                      goto LABEL_245;
                    }

                    v388 = *(v21 + 3640);
                    v389 = *(v21 + 3632);
                    v390 = *(v21 + 3608);
                    sub_2427E0918(*(v21 + 3616), v390, &qword_27ECC2CE0, &qword_2428B6560);
                    LODWORD(v389) = (*(v388 + 48))(v390, 1, v389);
                    v391 = v387;
                    if (v389 == 1)
                    {
                      v392 = 0;
                    }

                    else
                    {
                      v396 = *(v21 + 3640);
                      v397 = *(v21 + 3632);
                      v398 = *(v21 + 3608);
                      v392 = sub_2428B35A8();
                      (*(v396 + 8))(v398, v397);
                    }

                    v399 = *(v21 + 3912);
                    v400 = *(v21 + 3616);
                    [v399 setURL_];

                    sub_2427E0980(v400, &qword_27ECC2CE0, &qword_2428B6560);
                  }

                  else
                  {
                    (*(*(v21 + 3488) + 8))(*(v21 + 3496), *(v21 + 3480));
                  }

                  sub_2428B2DC8();
                  v401 = *(v21 + 3984);
                  if (v401 == 8)
                  {
                    goto LABEL_359;
                  }

                  v402 = [*(v21 + 3912) allowsParticipationStatusModifications];
                  v403 = *(v21 + 3912);
                  if (v402)
                  {
                    LOBYTE(v518) = v401;
                    [v403 setParticipationStatus_];
LABEL_359:
                    v404 = [*(v21 + 3912) hasChanges];
                    v405 = *(v21 + 3912);
                    if (!v11 && !v404)
                    {
                      v513 = *(v21 + 3896);
                      v516 = *(v21 + 3888);
                      v508 = *(v21 + 3472);

                      sub_2428B2DC8();
                      v406 = *(v21 + 992);
                      v524 = *(v21 + 976);
                      v525 = v406;
                      v407 = *(v21 + 1024);
                      v526 = *(v21 + 1008);
                      v527 = v407;
                      v408 = *(v21 + 928);
                      v520 = *(v21 + 912);
                      v521 = v408;
                      v409 = *(v21 + 960);
                      v522 = *(v21 + 944);
                      v523 = v409;
                      v410 = *(v21 + 896);
                      v518 = *(v21 + 880);
                      v519 = v410;
                      OpenEventDetailsIntent.init()(v517);
                      v411 = v517[0];
                      v412 = v517[1];
                      v413 = v517[3];
                      v498 = v517[2];
                      v414 = v525;
                      *(v21 + 2416) = v524;
                      *(v21 + 2432) = v414;
                      v415 = v527;
                      *(v21 + 2448) = v526;
                      *(v21 + 2464) = v415;
                      v416 = v521;
                      *(v21 + 2352) = v520;
                      *(v21 + 2368) = v416;
                      v417 = v523;
                      *(v21 + 2384) = v522;
                      *(v21 + 2400) = v417;
                      v418 = v519;
                      *(v21 + 2320) = v518;
                      *(v21 + 2336) = v418;
                      sub_2428B2DD8();
                      sub_2428B2DC8();
                      v419 = *(v21 + 2272);
                      *(v21 + 816) = *(v21 + 2256);
                      *(v21 + 832) = v419;
                      v420 = *(v21 + 2304);
                      *(v21 + 848) = *(v21 + 2288);
                      *(v21 + 864) = v420;
                      v421 = *(v21 + 2208);
                      *(v21 + 752) = *(v21 + 2192);
                      *(v21 + 768) = v421;
                      v422 = *(v21 + 2240);
                      *(v21 + 784) = *(v21 + 2224);
                      *(v21 + 800) = v422;
                      v423 = *(v21 + 2176);
                      *(v21 + 720) = *(v21 + 2160);
                      *(v21 + 736) = v423;
                      sub_24280B6C8((v21 + 720), v411, v412, v498, v413, v508);

                      sub_2427CCE04(v21 + 720);

                      v424 = v516;
LABEL_362:
                      sub_2427E0980(v424, &qword_27ECC38E0, &unk_2428C40D0);

                      v283 = *(v21 + 8);
                      goto LABEL_248;
                    }

                    v425 = [*(v21 + 3912) hasChanges];

                    if (v425)
                    {
                      v426 = *(v21 + 3912);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
                      v427 = swift_allocObject();
                      *(v21 + 3952) = v427;
                      *(v427 + 16) = xmmword_2428B5A90;
                      *(v427 + 32) = v426;
                      v428 = v426;
                      v429 = sub_2428B2DE8();
                      *(v21 + 3960) = v429;
                      v430 = swift_task_alloc();
                      *(v21 + 3968) = v430;
                      *v430 = v21;
                      v430[1] = sub_2428501A0;

                      return sub_24280C5F4(v21 + 3412, v427, v429);
                    }

                    v433 = *(v21 + 3944);
                    if (v433)
                    {
                      v434 = *(v21 + 3896);
                      *(v21 + 3448) = 0;
                      v435 = v433;
                      v436 = [v434 saveEvent:v435 span:1 commit:0 error:v21 + 3448];
                      v437 = *(v21 + 3448);

                      if (!v436)
                      {
                        v458 = *(v21 + 3912);
                        v459 = *(v21 + 3896);
                        v460 = *(v21 + 3888);
                        sub_2428B3538();

                        swift_willThrow();
                        v282 = v460;
                        goto LABEL_246;
                      }
                    }

                    v438 = *(v21 + 3896);
                    *(v21 + 3440) = 0;
                    v439 = [v438 commitWithRollback_];
                    v440 = *(v21 + 3440);
                    if (v439)
                    {
                      v441 = (v21 + 1840);
                      v442 = (v21 + 2000);
                      v443 = *(v21 + 3912);
                      v444 = v440;
                      EventEntity.init(_:)(v443, (v21 + 1840));
                      v445 = *(v21 + 1952);
                      *(v21 + 2096) = *(v21 + 1936);
                      *(v21 + 2112) = v445;
                      v446 = *(v21 + 1984);
                      *(v21 + 2128) = *(v21 + 1968);
                      *(v21 + 2144) = v446;
                      v447 = *(v21 + 1888);
                      *(v21 + 2032) = *(v21 + 1872);
                      *(v21 + 2048) = v447;
                      v448 = *(v21 + 1920);
                      *(v21 + 2064) = *(v21 + 1904);
                      *(v21 + 2080) = v448;
                      v449 = *(v21 + 1856);
                      *(v21 + 2000) = *(v21 + 1840);
                      *(v21 + 2016) = v449;
                      v450 = sub_24281E5E0(v21 + 2000);
                      v451 = *(v21 + 3912);
                      v452 = *(v21 + 3896);
                      v499 = *(v21 + 3944);
                      v509 = *(v21 + 3888);
                      if (v450 != 1)
                      {
                        v21 = v515;
                        v514 = *(v515 + 3472);
                        v461 = v442[7];
                        *(v515 + 1296) = v442[6];
                        *(v515 + 1312) = v461;
                        v462 = v442[9];
                        *(v515 + 1328) = v442[8];
                        *(v515 + 1344) = v462;
                        v463 = v442[3];
                        *(v515 + 1232) = v442[2];
                        *(v515 + 1248) = v463;
                        v464 = v442[5];
                        *(v515 + 1264) = v442[4];
                        *(v515 + 1280) = v464;
                        v465 = v442[1];
                        *(v515 + 1200) = *v442;
                        *(v515 + 1216) = v465;
                        v466 = v441[7];
                        *(v515 + 1776) = v441[6];
                        *(v515 + 1792) = v466;
                        v467 = v441[9];
                        *(v515 + 1808) = v441[8];
                        *(v515 + 1824) = v467;
                        v468 = v441[3];
                        *(v515 + 1712) = v441[2];
                        *(v515 + 1728) = v468;
                        v469 = v441[5];
                        *(v515 + 1744) = v441[4];
                        *(v515 + 1760) = v469;
                        v470 = v441[1];
                        *(v515 + 1680) = *v441;
                        *(v515 + 1696) = v470;
                        sub_2427CD4FC(v515 + 1680, v515 + 1520);
                        OpenEventDetailsIntent.init()(&v518);
                        v471 = v518;
                        v472 = v519;
                        v473 = *(v515 + 1312);
                        *(v515 + 1456) = *(v515 + 1296);
                        *(v515 + 1472) = v473;
                        v474 = *(v515 + 1344);
                        *(v515 + 1488) = *(v515 + 1328);
                        *(v515 + 1504) = v474;
                        v475 = *(v515 + 1248);
                        *(v515 + 1392) = *(v515 + 1232);
                        *(v515 + 1408) = v475;
                        v476 = *(v515 + 1280);
                        *(v515 + 1424) = *(v515 + 1264);
                        *(v515 + 1440) = v476;
                        v477 = *(v515 + 1216);
                        *(v515 + 1360) = *(v515 + 1200);
                        *(v515 + 1376) = v477;
                        sub_2428B2DD8();
                        sub_24280B6C8((v515 + 1200), v471, *(&v471 + 1), v472, *(&v472 + 1), v514);

                        sub_2427E0980(v441, &unk_27ECC2E10, &qword_2428BB3B8);

                        v424 = v509;
                        goto LABEL_362;
                      }

                      sub_2427CCDB0();
                      swift_allocError();
                      *v453 = 25;
                      swift_willThrow();

                      sub_2427E0980(v509, &qword_27ECC38E0, &unk_2428C40D0);
LABEL_247:

                      v283 = *(v515 + 8);
LABEL_248:

                      return v283();
                    }

                    v454 = *(v21 + 3944);
                    v455 = *(v21 + 3912);
                    v456 = *(v21 + 3896);
                    v213 = *(v21 + 3888);
                    v457 = v440;
                    sub_2428B3538();

                    swift_willThrow();
                    goto LABEL_241;
                  }

                  v431 = *(v21 + 3896);
                  v34 = *(v21 + 3888);
                  sub_2427CCDB0();
                  swift_allocError();
                  *v432 = 73;
                  swift_willThrow();

LABEL_245:
                  v282 = v34;
                  goto LABEL_246;
                }

                v144 = (v21 + 2960);
                v334 = *(v21 + 3988);
                v335 = *(v21 + 3544);
                (*(*(v21 + 3536) + 96))(v335, *(v21 + 3528));
                *(v21 + 2960) = *v335;
                v336 = v335[1];
                v337 = v335[2];
                v338 = v335[4];
                *(v21 + 3008) = v335[3];
                *(v21 + 3024) = v338;
                *(v21 + 2976) = v336;
                *(v21 + 2992) = v337;
                if (v334 == 1)
                {
                  v339 = *(v21 + 3912);
                  if (*(v21 + 2960))
                  {
                    v340 = *(v21 + 3544);
                    v341 = v340[3];
                    v520 = v340[2];
                    v521 = v341;
                    v522 = v340[4];
                    v342 = v340[1];
                    v518 = *v340;
                    v519 = v342;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
                    v343 = swift_allocObject();
                    *(v343 + 16) = xmmword_2428B5A90;
                    v344 = v339;
                    *(v343 + 32) = RecurrenceRuleEntity.ekRecurrenceRule.getter();
                    sub_242822BFC(0, &qword_27ECC2E20, 0x277CC5AA8);
                    v345 = sub_2428B46B8();

                    v346 = *(v21 + 3912);
LABEL_330:
                    [v346 setRecurrenceRules_];

                    *(v21 + 3411) = 1;
                    sub_242852D84(v21 + 192, v21 + 16);
                    sub_2428B2DD8();
                    sub_2427E0980(v144, &qword_27ECC38E8, qword_2428BDFD8);
                    sub_242852DBC(v21 + 192);
                    goto LABEL_331;
                  }

                  if (![*(v21 + 3912) isOrWasPartOfRecurringSeries] || objc_msgSend(*(v21 + 3912), sel_isFirstOccurrence) && !objc_msgSend(*(v21 + 3912), sel_isDetached) || (v349 = objc_msgSend(*(v21 + 3912), sel_masterEvent)) == 0)
                  {
LABEL_329:
                    v346 = *(v21 + 3912);
                    v345 = 0;
                    goto LABEL_330;
                  }

                  v11 = v349;
                  v12 = v349;
                  v350 = [v12 recurrenceRules];
                  if (!v350)
                  {
LABEL_328:

                    v21 = v515;
                    goto LABEL_329;
                  }

                  v351 = v350;
                  sub_242822BFC(0, &qword_27ECC2E20, 0x277CC5AA8);
                  v46 = sub_2428B46C8();

                  if (!(v46 >> 62))
                  {
                    result = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (result)
                    {
                      goto LABEL_319;
                    }

LABEL_327:

                    goto LABEL_328;
                  }

LABEL_326:
                  result = sub_2428B49C8();
                  if (result)
                  {
LABEL_319:
                    if ((v46 & 0xC000000000000001) == 0)
                    {
                      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        v352 = *(v46 + 32);
LABEL_322:
                        v353 = v352;
                        v354 = *(v515 + 3912);

                        v355 = [v354 endDate];
                        if (v355)
                        {
                          v356 = *(v515 + 3800);
                          v357 = *(v515 + 3792);
                          v358 = *(v515 + 3784);
                          sub_2428B3678();

                          v355 = sub_2428B3658();
                          (*(v357 + 8))(v356, v358);
                        }

                        v359 = [objc_allocWithZone(MEMORY[0x277CC5A90]) initWithEndDate_];

                        [v353 setRecurrenceEnd_];
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
                        v360 = swift_allocObject();
                        *(v360 + 16) = xmmword_2428B5A90;
                        *(v360 + 32) = v353;
                        v361 = v353;
                        v362 = sub_2428B46B8();

                        [v12 setRecurrenceRules_];

                        v21 = v515;
                        *(v515 + 3410) = 0;
                        sub_242852D84(v515 + 192, v515 + 544);
                        sub_2428B2DD8();

                        sub_242852DBC(v515 + 192);
                        goto LABEL_332;
                      }

                      __break(1u);
LABEL_381:
                      __break(1u);
                      return result;
                    }

LABEL_379:
                    v352 = MEMORY[0x245D1B5D0](0, v46);
                    goto LABEL_322;
                  }

                  goto LABEL_327;
                }

                v166 = *(v21 + 3912);
                v347 = *(v21 + 3896);
                v34 = *(v21 + 3888);
                sub_2427CCDB0();
                swift_allocError();
                *v348 = 56;
                swift_willThrow();

                sub_2427E0980(v21 + 2960, &qword_27ECC38E8, qword_2428BDFD8);
LABEL_244:

                goto LABEL_245;
              }

              v308 = *(v21 + 3988);
              v309 = *(v21 + 3592);
              (*(*(v21 + 3584) + 96))(v309, *(v21 + 3576));
              if (v308 == 1)
              {
                v310 = *(v21 + 3912);
                if (*(v309 + 8))
                {
                  v311 = v310;
                  v312 = sub_2428B4608();

                  v313 = *(v21 + 3912);
                }

                else
                {
                  v313 = v310;
                  v312 = 0;
                }

                [v313 setLocation_];

                goto LABEL_298;
              }

              goto LABEL_294;
            }

            v179 = *(v21 + 3912);
            if (*(v21 + 3988) != 1)
            {
LABEL_238:
              v212 = *(v21 + 3896);
              v213 = *(v21 + 3888);
              goto LABEL_239;
            }

            if ([*(v21 + 3912) currentUserMayActAsOrganizer])
            {
              v274 = *(v273 + 16);
              if (!v274)
              {

                v284 = MEMORY[0x277D84F90];
LABEL_253:
                if (v284 >> 62)
                {
                  goto LABEL_281;
                }

                for (j = *((v284 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_2428B49C8())
                {
                  v286 = 0;
                  v496 = v284;
                  v505 = v284 & 0xC000000000000001;
                  v482 = v284 + 32;
                  v488 = v284 & 0xFFFFFFFFFFFFFF8;
                  v493 = j;
                  while (1)
                  {
                    if (v505)
                    {
                      v287 = MEMORY[0x245D1B5D0](v286, v284);
                    }

                    else
                    {
                      if (v286 >= *(v488 + 16))
                      {
                        goto LABEL_280;
                      }

                      v287 = *(v482 + 8 * v286);
                    }

                    v288 = v287;
                    v206 = __OFADD__(v286++, 1);
                    if (v206)
                    {
                      break;
                    }

                    v289 = [*(v21 + 3912) attendees];
                    if (v289)
                    {
                      v290 = v289;
                      sub_242822BFC(0, &qword_27ECC3260, 0x277CC5A70);
                      v284 = sub_2428B46C8();

                      v512 = v12;
                      if (v284 >> 62)
                      {
                        v291 = sub_2428B49C8();
                      }

                      else
                      {
                        v291 = *((v284 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      }

                      v21 = 0;
                      v12 = v284 & 0xC000000000000001;
                      while (1)
                      {
                        if (v291 == v21)
                        {

                          v12 = v512;
                          v21 = v515;
                          j = v493;
                          v284 = v496;
                          goto LABEL_257;
                        }

                        if (v12)
                        {
                          v292 = MEMORY[0x245D1B5D0](v21, v284);
                        }

                        else
                        {
                          if (v21 >= *((v284 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
                            goto LABEL_278;
                          }

                          v292 = *(v284 + 8 * v21 + 32);
                        }

                        v293 = v292;
                        if (__OFADD__(v21, 1))
                        {
                          break;
                        }

                        v294 = [v292 isEqualToParticipant_];

                        ++v21;
                        if (v294)
                        {

                          v12 = v512;
                          v21 = v515;
                          j = v493;
                          v284 = v496;
                          goto LABEL_258;
                        }
                      }

                      __break(1u);
LABEL_278:
                      __break(1u);
                      break;
                    }

LABEL_257:
                    [*(v21 + 3912) addAttendee_];
LABEL_258:

                    if (v286 == j)
                    {
                      goto LABEL_282;
                    }
                  }

                  __break(1u);
LABEL_280:
                  __break(1u);
LABEL_281:
                  ;
                }

LABEL_282:

                goto LABEL_283;
              }

              v517[0] = MEMORY[0x277D84F90];
              v179 = v517;
              sub_2428B4AC8();
              if (*(v273 + 16))
              {
                v275 = 0;
                v276 = (v515 + 3232);
                v21 = 32;
                while (1)
                {
                  v277 = *(v273 + v21);
                  v278 = *(v273 + v21 + 16);
                  v279 = *(v273 + v21 + 48);
                  *(v515 + 3264) = *(v273 + v21 + 32);
                  *(v515 + 3280) = v279;
                  *v276 = v277;
                  *(v515 + 3248) = v278;
                  v280 = *(v273 + v21 + 16);
                  v518 = *(v273 + v21);
                  v519 = v280;
                  v281 = *(v273 + v21 + 48);
                  v520 = *(v273 + v21 + 32);
                  v521 = v281;
                  sub_2428430F4(v276, v515 + 3168);
                  v12 = 0;
                  sub_2428307AC();
                  sub_242843150(v276);
                  sub_2428B4AA8();
                  sub_2428B4AD8();
                  sub_2428B4AE8();
                  v179 = v517;
                  sub_2428B4AB8();
                  if (v274 - 1 == v275)
                  {
                    break;
                  }

                  v21 += 64;
                  if (++v275 >= *(v273 + 16))
                  {
                    goto LABEL_237;
                  }
                }

                v21 = v515;
                v284 = v517[0];
                goto LABEL_253;
              }

LABEL_237:
              __break(1u);
              goto LABEL_238;
            }

            v166 = *(v21 + 3912);
            v167 = *(v21 + 3896);
            v34 = *(v21 + 3888);

            sub_2427CCDB0();
            swift_allocError();
            v169 = 113;
LABEL_243:
            *v168 = v169;
            swift_willThrow();

            goto LABEL_244;
          }

          v212 = *(v21 + 3896);
          v213 = *(v21 + 3888);

          sub_2427CCDB0();
          swift_allocError();
          v215 = 120;
LABEL_240:
          *v214 = v215;
          swift_willThrow();

LABEL_241:
          v282 = v213;
LABEL_246:
          sub_2427E0980(v282, &qword_27ECC38E0, &unk_2428C40D0);
          goto LABEL_247;
        }

        v171 = 3;
      }
    }

    else if (*(v21 + 3985))
    {
      v171 = v170 != 1;
    }

    else
    {
      v171 = -1;
    }

    if (v171 == [*(v21 + 3912) availability])
    {
      goto LABEL_125;
    }

    v208 = [*(v21 + 3912) allowsAvailabilityModifications];
    v179 = *(v21 + 3912);
    if (!v208)
    {
      v212 = *(v21 + 3896);
      v213 = *(v21 + 3888);
      sub_2427CCDB0();
      swift_allocError();
      v215 = 65;
      goto LABEL_240;
    }

    result = [*(v21 + 3912) calendar];
    if (!result)
    {
      goto LABEL_381;
    }

    v209 = result;
    v210 = [result supportedEventAvailabilities];

    if (v170 <= 1)
    {
      if (v170)
      {
        if (v210)
        {
          v211 = 0;
          goto LABEL_190;
        }
      }

      else if (!v210)
      {
        v211 = -1;
        goto LABEL_190;
      }
    }

    else if (v170 == 2)
    {
      if ((v210 & 2) != 0)
      {
        v211 = 1;
        goto LABEL_190;
      }
    }

    else if (v170 == 3)
    {
      if ((v210 & 4) != 0)
      {
        v211 = 2;
LABEL_190:
        [*(v21 + 3912) setAvailability_];
        goto LABEL_125;
      }
    }

    else if ((v210 & 8) != 0)
    {
      v211 = 3;
      goto LABEL_190;
    }

    v166 = *(v21 + 3912);
    v167 = *(v21 + 3896);
    v34 = *(v21 + 3888);
    sub_2427CCDB0();
    swift_allocError();
    v169 = 72;
    goto LABEL_243;
  }

  v148 = v11;
  v12 = v147;
  v149 = [v148 calendar];
  if (v149)
  {
    v150 = v149;
    sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
    v151 = v12;
    v152 = sub_2428B48E8();

    if (v152)
    {

      goto LABEL_90;
    }
  }

  v157 = *(v515 + 336);
  *(v515 + 496) = *(v515 + 320);
  *(v515 + 512) = v157;
  *(v515 + 528) = *(v515 + 352);
  v158 = *(v515 + 272);
  *(v515 + 432) = *(v515 + 256);
  *(v515 + 448) = v158;
  v159 = *(v515 + 304);
  *(v515 + 464) = *(v515 + 288);
  *(v515 + 480) = v159;
  v160 = *(v515 + 208);
  *(v515 + 368) = *(v515 + 192);
  *(v515 + 384) = v160;
  v161 = *(v515 + 240);
  *(v515 + 400) = *(v515 + 224);
  *(v515 + 416) = v161;
  v162 = swift_task_alloc();
  *(v515 + 3928) = v162;
  *v162 = v515;
  v162[1] = sub_24284D890;

  return sub_242851058(v148, v12);
}