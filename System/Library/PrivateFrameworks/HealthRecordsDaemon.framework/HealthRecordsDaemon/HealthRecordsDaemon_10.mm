BOOL sub_251B6E49C(void *a1, void *a2)
{
  v4 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BB34B4(0, &qword_27F47B568, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v74 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = &v71 - v7;
  v8 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = &v71 - v13;
  v14 = type metadata accessor for PBHKConcept(0);
  v80 = *(v14 - 8);
  v81 = v14;
  MEMORY[0x28223BE20](v14);
  v73 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v17 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = &v71 - v18;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, v8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v79 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v71 - v23;
  swift_beginAccess();
  v25 = a1[2];
  v26 = a1[3];
  swift_beginAccess();
  if (__PAIR128__(v26, v25) != *(a2 + 1) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v27 = a1[4];
  v28 = a1[5];
  swift_beginAccess();
  if ((v27 != a2[4] || v28 != a2[5]) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v71 = v12;
  v29 = a2;
  v30 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  swift_beginAccess();
  sub_251BB33C4(a1 + v30, v24, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  swift_beginAccess();
  v32 = *(v17 + 48);
  sub_251BB33C4(v24, v19, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v29 + v31, &v19[v32], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v33 = v81;
  v34 = *(v80 + 6);
  if (v34(v19, 1, v81) == 1)
  {

    sub_251BB3444(v24, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v34(&v19[v32], 1, v33) == 1)
    {
      sub_251BB3444(v19, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_16;
    }

LABEL_11:
    sub_251BB242C(v19, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_22;
  }

  v80 = v24;
  v35 = v79;
  sub_251BB33C4(v19, v79, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v34(&v19[v32], 1, v33) == 1)
  {

    sub_251BB3444(v80, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251BB2308(v35, type metadata accessor for PBHKConcept);
    goto LABEL_11;
  }

  v36 = v73;
  sub_251BB23C4(&v19[v32], v73, type metadata accessor for PBHKConcept);
  v37 = *(v33 + 5);
  v38 = *(v35 + v37);
  v39 = *(v36 + v37);

  if (v38 != v39)
  {

    v40 = sub_251B70648(v38, v39);

    if ((v40 & 1) == 0)
    {
      sub_251BB2308(v36, type metadata accessor for PBHKConcept);
      sub_251BB3444(v80, qword_2813E6D28, type metadata accessor for PBHKConcept);
      sub_251BB2308(v35, type metadata accessor for PBHKConcept);
      sub_251BB3444(v19, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_22;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v41 = sub_251C70ED4();
  sub_251BB2308(v36, type metadata accessor for PBHKConcept);
  sub_251BB3444(v80, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB2308(v35, type metadata accessor for PBHKConcept);
  sub_251BB3444(v19, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v41 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  v42 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v81 = a1;
  v43 = v75;
  sub_251BB33C4(a1 + v42, v75, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v44 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v45 = *(v74 + 48);
  v46 = v78;
  sub_251BB33C4(v43, v78, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  sub_251BB33C4(v29 + v44, v46 + v45, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v47 = v77;
  v48 = *(v76 + 48);
  if (v48(v46, 1, v77) != 1)
  {
    v49 = v71;
    sub_251BB33C4(v46, v71, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    if (v48(v46 + v45, 1, v47) != 1)
    {
      v51 = v46 + v45;
      v52 = v72;
      sub_251BB23C4(v51, v72, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      v53 = sub_251BAD450(v49, v52);
      sub_251BB2308(v52, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      sub_251BB3444(v43, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      sub_251BB2308(v49, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      sub_251BB3444(v46, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      if (v53)
      {
        goto LABEL_25;
      }

LABEL_22:

      return 0;
    }

    sub_251BB3444(v43, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    sub_251BB2308(v49, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
LABEL_21:
    sub_251BB242C(v46, &qword_27F47B568, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    goto LABEL_22;
  }

  sub_251BB3444(v43, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  if (v48(v46 + v45, 1, v47) != 1)
  {
    goto LABEL_21;
  }

  sub_251BB3444(v46, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
LABEL_25:
  v54 = (v81 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source);
  swift_beginAccess();
  v55 = *v54;
  v56 = v54[1];
  v57 = (v29 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source);
  swift_beginAccess();
  if ((v55 != *v57 || v56 != v57[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v58 = (v81 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID);
  swift_beginAccess();
  v59 = *v58;
  v60 = v58[1];
  v61 = (v29 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID);
  swift_beginAccess();
  if ((v59 != *v61 || v60 != v61[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v62 = (v81 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  v63 = *v62;
  v64 = v62[1];
  v65 = (v29 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  if ((v63 != *v65 || v64 != v65[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v66 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType;
  v67 = v81;
  swift_beginAccess();
  v68 = *(v67 + v66);

  v69 = v29 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType;
  swift_beginAccess();
  v70 = *v69;
  LODWORD(v69) = v69[8];

  if (v69 != 1)
  {
    return v68 == v70;
  }

  if (!v70)
  {
    return !v68;
  }

  if (v70 != 1)
  {
    return v68 == 2;
  }

  return v68 == 1;
}

uint64_t sub_251B6F194(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B688, type metadata accessor for PBClinicalRecord, &unk_251C819DC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B6F234(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B390, type metadata accessor for PBClinicalRecord, &unk_251C81A14);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B6F2A0(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B390, type metadata accessor for PBClinicalRecord, &unk_251C81A14);

  return sub_251C705C4();
}

uint64_t sub_251B6F360()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A20F0);
  __swift_project_value_buffer(v0, qword_27F4A20F0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "ORIGIN_NOT_SET";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "FHIR_RESOURCE";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "SIGNED_CLINICAL_DATA";
  *(v12 + 8) = 20;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B6F5AC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2108);
  __swift_project_value_buffer(v0, qword_27F4A2108);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "resource_type";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "identifier";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B6F7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B6E8, type metadata accessor for PBFHIRIdentifier, &unk_251C8184C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B6F87C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B370, type metadata accessor for PBFHIRIdentifier, &unk_251C81884);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B6F8E8(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B370, type metadata accessor for PBFHIRIdentifier, &unk_251C81884);

  return sub_251C705C4();
}

uint64_t sub_251B6F964()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2120);
  __swift_project_value_buffer(v0, qword_27F4A2120);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "preferred_name";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "localized_preferred_name";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "raw_identifier";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "group_by";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v16 = "is_in_memory";
  *(v16 + 8) = 12;
  *(v16 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B6FC10()
{
  type metadata accessor for PBHKConcept._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 2) = 0;
  *(v0 + 3) = 0xE000000000000000;
  *(v0 + 4) = 0;
  *(v0 + 5) = 0xE000000000000000;
  *(v0 + 6) = 0;
  *(v0 + 7) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy;
  v2 = type metadata accessor for PBHKConcept(0);
  result = (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v0[OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory] = 0;
  qword_27F47ABF8 = v0;
  return result;
}

uint64_t sub_251B6FCB0()
{

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy, qword_2813E6D28, type metadata accessor for PBHKConcept);

  return swift_deallocClassInstance();
}

void sub_251B6FD70(uint64_t a1)
{
  sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_251B6FE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(void, void, void, void))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = a7;
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v18 = a6(v17);
    a7 = v20;

    *(v10 + v14) = v18;
    v16 = v18;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_251B6FF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_251B98414(a2, a1, a3, a4);
      }

      else if (result == 2)
      {
        sub_251AB6E48(a2, a1, a3, a4);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_251AB6ECC(a2, a1, a3, a4);
          break;
        case 4:
          sub_251B70038(a2, a1, a3, a4);
          break;
        case 5:
          sub_251B70114(a2, a1, a3, a4);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_251B70038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B70114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251C70474();
  return swift_endAccess();
}

uint64_t sub_251B701A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B70220(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = a1[3];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (, sub_251C70674(), result = , !v4))
  {
    swift_beginAccess();
    v12 = a1[5];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = a1[4] & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (, sub_251C70674(), result = , !v4))
    {
      swift_beginAccess();
      v14 = a1[7];
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = a1[6] & 0xFFFFFFFFFFFFLL;
      }

      if (!v15 || (, sub_251C70674(), result = , !v4))
      {
        result = sub_251B703F0(a1, a2, a3, a4);
        if (!v4)
        {
          v16 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory;
          result = swift_beginAccess();
          if (*(a1 + v16) == 1)
          {
            return sub_251C705F4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B703F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy;
  swift_beginAccess();
  sub_251BB33C4(a1 + v12, v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B70648(void *a1, void *a2)
{
  v4 = type metadata accessor for PBHKConcept(0);
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  swift_beginAccess();
  v17 = a1[2];
  v18 = a1[3];
  swift_beginAccess();
  if (__PAIR128__(v18, v17) != *(a2 + 1) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v19 = a1[4];
  v20 = a1[5];
  swift_beginAccess();
  if ((v19 != a2[4] || v20 != a2[5]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v21 = a1[6];
  v22 = a1[7];
  swift_beginAccess();
  if ((v21 != a2[6] || v22 != a2[7]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_16;
  }

  v38 = v6;
  v39 = v14;
  v23 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy;
  swift_beginAccess();
  sub_251BB33C4(a1 + v23, v16, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v24 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy;
  swift_beginAccess();
  v25 = *(v8 + 48);
  sub_251BB33C4(v16, v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(a2 + v24, &v10[v25], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v26 = *(v40 + 48);
  if (v26(v10, 1, v4) == 1)
  {

    sub_251BB3444(v16, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v26(&v10[v25], 1, v4) == 1)
    {
      sub_251BB3444(v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_21:
      v36 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory;
      swift_beginAccess();
      LOBYTE(v36) = *(a1 + v36);

      v37 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory;
      swift_beginAccess();
      LOBYTE(v37) = *(a2 + v37);

      v28 = v36 ^ v37 ^ 1;
      return v28 & 1;
    }
  }

  else
  {
    v27 = v39;
    sub_251BB33C4(v10, v39, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v26(&v10[v25], 1, v4) != 1)
    {
      v30 = v38;
      sub_251BB23C4(&v10[v25], v38, type metadata accessor for PBHKConcept);
      v31 = *(v4 + 20);
      v32 = *(v27 + v31);
      v33 = *(v30 + v31);

      if (v32 == v33 || (, , v34 = sub_251B70648(v32, v33), , , (v34 & 1) != 0))
      {
        sub_251C703B4();
        sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v35 = sub_251C70ED4();
        sub_251BB2308(v30, type metadata accessor for PBHKConcept);
        sub_251BB3444(v16, qword_2813E6D28, type metadata accessor for PBHKConcept);
        sub_251BB2308(v27, type metadata accessor for PBHKConcept);
        sub_251BB3444(v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
        if (v35)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_251BB2308(v30, type metadata accessor for PBHKConcept);
        sub_251BB3444(v16, qword_2813E6D28, type metadata accessor for PBHKConcept);
        sub_251BB2308(v27, type metadata accessor for PBHKConcept);
        sub_251BB3444(v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
      }

      goto LABEL_15;
    }

    sub_251BB3444(v16, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251BB2308(v27, type metadata accessor for PBHKConcept);
  }

  sub_251BB242C(v10, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_15:

LABEL_16:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_251B70E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B6F0, type metadata accessor for PBHKConcept, &unk_251C816E4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B70EBC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B70F28(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);

  return sub_251C705C4();
}

uint64_t sub_251B70FE8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2138);
  __swift_project_value_buffer(v0, qword_27F4A2138);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_251C78260;
  v5 = v24 + v4;
  v6 = v24 + v4 + *(v2 + 56);
  *(v24 + v4) = 1;
  *v6 = "allergy";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "asserter";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "criticality";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "last_occurrence_date";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "onset_date";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "reactions";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "recorded_date";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "status";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B71354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
LABEL_4:
            sub_251C70534();
            goto LABEL_5;
          }

          if (result == 8)
          {
            sub_251B715CC(a1, v5, a2, a3);
          }
        }

        else
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

          type metadata accessor for PBHKAllergyReaction(0);
          sub_251B9ED44(&qword_27F47B310, type metadata accessor for PBHKAllergyReaction, &unk_251C8144C);
          sub_251C70554();
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          goto LABEL_4;
        }

        sub_251B86F98(a1, v5, a2, a3, type metadata accessor for PBHKAllergyRecord);
      }

      else if (result == 1)
      {
        sub_251B71518(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        goto LABEL_4;
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B71518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKAllergyRecord(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B715CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKAllergyRecord(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B71680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B71890(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = v3[1];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_251C70674();
    }

    sub_251B8748C(v3, a1, a2, a3, type metadata accessor for PBHKAllergyRecord, 3);
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_251C70674();
    }

    v13 = v3[5];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v3[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_251C70674();
    }

    if (*(v3[6] + 16))
    {
      type metadata accessor for PBHKAllergyReaction(0);
      sub_251B9ED44(&qword_27F47B310, type metadata accessor for PBHKAllergyReaction, &unk_251C8144C);
      sub_251C70694();
    }

    v15 = v3[8];
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v3[7] & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      sub_251C70674();
    }

    sub_251B71ADC(v3, a1, a2, a3);
    type metadata accessor for PBHKAllergyRecord(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B71890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKAllergyRecord(0);
  sub_251BB33C4(a1 + *(v12 + 40), v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B71ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKAllergyRecord(0);
  sub_251BB33C4(a1 + *(v12 + 48), v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B71D2C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  *(a2 + 6) = MEMORY[0x277D84F90];
  *(a2 + 7) = 0;
  *(a2 + 8) = 0xE000000000000000;
  sub_251C703A4();
  v4 = a1[10];
  v5 = type metadata accessor for PBHKConcept(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a2[v4], 1, 1, v5);
  v8(&a2[a1[11]], 1, 1, v5);
  v6 = &a2[a1[12]];

  return (v8)(v6, 1, 1, v5);
}

uint64_t sub_251B71EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B6F8, type metadata accessor for PBHKAllergyRecord, &unk_251C8157C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B71F40(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B330, type metadata accessor for PBHKAllergyRecord, &unk_251C815B4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B71FAC(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B330, type metadata accessor for PBHKAllergyRecord, &unk_251C815B4);

  return sub_251C705C4();
}

uint64_t sub_251B7202C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2150);
  __swift_project_value_buffer(v0, qword_27F4A2150);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "manifestations";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "onset_date";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "severity";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B72260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_251B72380(a1, v5, a2, a3);
          break;
        case 2:
          sub_251C70534();
          break;
        case 1:
          type metadata accessor for PBHKConcept(0);
          sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
          sub_251C70554();
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B72380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKAllergyReaction(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B72434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBHKConcept(0), sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C), result = sub_251C70694(), !v4))
  {
    v9 = v3[2];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = sub_251C70674(), !v4))
    {
      result = sub_251B72560(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for PBHKAllergyReaction(0);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B72560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKAllergyReaction(0);
  sub_251BB33C4(a1 + *(v12 + 28), v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B727D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(void)@<X5>, char *a6@<X8>)
{
  *a6 = a2;
  *(a6 + 1) = a3;
  *(a6 + 2) = a4;
  sub_251C703A4();
  v9 = *(a1 + 28);
  v10 = a5(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(&a6[v9], 1, 1, v10);
}

uint64_t sub_251B728B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B700, type metadata accessor for PBHKAllergyReaction, &unk_251C81414);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B72958(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B310, type metadata accessor for PBHKAllergyReaction, &unk_251C8144C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B729C4(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B310, type metadata accessor for PBHKAllergyReaction, &unk_251C8144C);

  return sub_251C705C4();
}

uint64_t sub_251B72A44()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2168);
  __swift_project_value_buffer(v0, qword_27F4A2168);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_251C75810;
  v5 = v27 + v4;
  v6 = v27 + v4 + *(v2 + 56);
  *(v27 + v4) = 1;
  *v6 = "abatement_string_value";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "asserter";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "body_sites";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "category";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "clinical_status";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "condition";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "onset_string_value";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "recorded_date";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "severity";
  *(v23 + 8) = 8;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "verification_status";
  *(v25 + 1) = 19;
  v25[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B72E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result != 6)
          {
            goto LABEL_4;
          }

          sub_251B73134(a1, v5, a2, a3);
        }

        else
        {
          switch(result)
          {
            case 8:
              goto LABEL_4;
            case 9:
              sub_251B8852C(a1, v5, a2, a3, type metadata accessor for PBHKConditionRecord);
              break;
            case 10:
              sub_251B885E4(a1, v5, a2, a3, type metadata accessor for PBHKConditionRecord);
              break;
          }
        }
      }

      else if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_251C70534();
        }
      }

      else if (result == 3)
      {
        type metadata accessor for PBHKConcept(0);
        sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
        sub_251C70554();
      }

      else if (result == 4)
      {
        sub_251B73080(a1, v5, a2, a3);
      }

      else
      {
        sub_251B86F98(a1, v5, a2, a3, type metadata accessor for PBHKConditionRecord);
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B73080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKConditionRecord(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B73134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKConditionRecord(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B731E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_251C70674(), !v4))
    {
      if (!*(v3[4] + 16) || (type metadata accessor for PBHKConcept(0), sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C), result = sub_251C70694(), !v4))
      {
        result = sub_251B73450(v3, a1, a2, a3);
        if (!v4)
        {
          sub_251B8748C(v3, a1, a2, a3, type metadata accessor for PBHKConditionRecord, 5);
          sub_251B7369C(v3, a1, a2, a3);
          v13 = v3[6];
          v14 = HIBYTE(v13) & 0xF;
          if ((v13 & 0x2000000000000000) == 0)
          {
            v14 = v3[5] & 0xFFFFFFFFFFFFLL;
          }

          if (v14)
          {
            sub_251C70674();
          }

          v15 = v3[8];
          v16 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v16 = v3[7] & 0xFFFFFFFFFFFFLL;
          }

          if (v16)
          {
            sub_251C70674();
          }

          sub_251B88CB4(v3, a1, a2, a3, type metadata accessor for PBHKConditionRecord, 9);
          sub_251B88F08(v3, a1, a2, a3, type metadata accessor for PBHKConditionRecord, 10);
          type metadata accessor for PBHKConditionRecord(0);
          return sub_251C70394();
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B73450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKConditionRecord(0);
  sub_251BB33C4(a1 + *(v12 + 40), v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B7369C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKConditionRecord(0);
  sub_251BB33C4(a1 + *(v12 + 48), v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B738E8@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = MEMORY[0x277D84F90];
  *(a2 + 5) = 0;
  *(a2 + 6) = 0xE000000000000000;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0xE000000000000000;
  sub_251C703A4();
  v4 = a1[10];
  v5 = type metadata accessor for PBHKConcept(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a2[v4], 1, 1, v5);
  v8(&a2[a1[11]], 1, 1, v5);
  v8(&a2[a1[12]], 1, 1, v5);
  v8(&a2[a1[13]], 1, 1, v5);
  v6 = &a2[a1[14]];

  return (v8)(v6, 1, 1, v5);
}

uint64_t sub_251B73A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B708, type metadata accessor for PBHKConditionRecord, &unk_251C812AC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B73B20(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B2F0, type metadata accessor for PBHKConditionRecord, &unk_251C812E4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B73B8C(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B2F0, type metadata accessor for PBHKConditionRecord, &unk_251C812E4);

  return sub_251C705C4();
}

uint64_t sub_251B73C0C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2180);
  __swift_project_value_buffer(v0, qword_27F4A2180);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_251C7C1E0;
  v5 = v35 + v4;
  v6 = v35 + v4 + *(v2 + 56);
  *(v35 + v4) = 1;
  *v6 = "administration_date";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v35 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "body_site";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v35 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "dose_number";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v35 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "dose_quantity";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v35 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "expiration_date";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v35 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "not_given";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v35 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "patient_reported";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v35 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "performer";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v9();
  v23 = v35 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "reaction";
  *(v23 + 8) = 8;
  *(v23 + 16) = 2;
  v9();
  v24 = (v35 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "reasons";
  *(v25 + 1) = 7;
  v25[16] = 2;
  v9();
  v26 = (v35 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "reasons_not_given";
  *(v27 + 1) = 17;
  v27[16] = 2;
  v9();
  v28 = (v35 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 12;
  *v29 = "route";
  *(v29 + 1) = 5;
  v29[16] = 2;
  v9();
  v30 = (v35 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 13;
  *v31 = "status";
  *(v31 + 1) = 6;
  v31[16] = 2;
  v9();
  v32 = (v35 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "vaccination";
  *(v33 + 1) = 11;
  v33[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B74100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 3:
        case 4:
        case 5:
        case 8:
        case 9:
          sub_251C70534();
          break;
        case 2:
          sub_251B8869C(a1, v5, a2, a3, type metadata accessor for PBHKVaccinationRecord);
          break;
        case 6:
        case 7:
          sub_251C70474();
          break;
        case 10:
        case 11:
          type metadata accessor for PBHKConcept(0);
          sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
          sub_251C70554();
          break;
        case 12:
          sub_251B88754(a1, v5, a2, a3, type metadata accessor for PBHKVaccinationRecord);
          break;
        case 13:
          sub_251B8880C(a1, v5, a2, a3, type metadata accessor for PBHKVaccinationRecord);
          break;
        case 14:
          sub_251B74358(a1, v5, a2, a3);
          break;
        default:
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B74358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKVaccinationRecord(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B7440C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    result = sub_251B8915C(v3, a1, a2, a3, type metadata accessor for PBHKVaccinationRecord, 2);
    if (!v4)
    {
      v11 = *(v3 + 24);
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        sub_251C70674();
      }

      v13 = *(v3 + 40);
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        sub_251C70674();
      }

      v15 = *(v3 + 56);
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        sub_251C70674();
      }

      if (*(v3 + 64) == 1)
      {
        sub_251C705F4();
      }

      if (*(v3 + 65) == 1)
      {
        sub_251C705F4();
      }

      v17 = *(v3 + 80);
      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = *(v3 + 72) & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        sub_251C70674();
      }

      v19 = *(v3 + 96);
      v20 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v20 = *(v3 + 88) & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        sub_251C70674();
      }

      if (*(*(v3 + 104) + 16))
      {
        type metadata accessor for PBHKConcept(0);
        sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
        sub_251C70694();
      }

      if (*(*(v3 + 112) + 16))
      {
        type metadata accessor for PBHKConcept(0);
        sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
        sub_251C70694();
      }

      sub_251B893B0(v3, a1, a2, a3, type metadata accessor for PBHKVaccinationRecord, 12);
      sub_251B89604(v3, a1, a2, a3, type metadata accessor for PBHKVaccinationRecord);
      sub_251B74788(v3, a1, a2, a3);
      type metadata accessor for PBHKVaccinationRecord(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B74788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKVaccinationRecord(0);
  sub_251BB33C4(a1 + *(v12 + 72), v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B749D4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0xE000000000000000;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 104) = MEMORY[0x277D84F90];
  *(a2 + 112) = v4;
  sub_251C703A4();
  v5 = a1[15];
  v6 = type metadata accessor for PBHKConcept(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v9(a2 + a1[16], 1, 1, v6);
  v9(a2 + a1[17], 1, 1, v6);
  v7 = a2 + a1[18];

  return (v9)(v7, 1, 1, v6);
}

uint64_t sub_251B74B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B710, type metadata accessor for PBHKVaccinationRecord, &unk_251C81144);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B74C18(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B2D0, type metadata accessor for PBHKVaccinationRecord, &unk_251C8117C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B74C84(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B2D0, type metadata accessor for PBHKVaccinationRecord, &unk_251C8117C);

  return sub_251C705C4();
}

uint64_t sub_251B74D04()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2198);
  __swift_project_value_buffer(v0, qword_27F4A2198);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "instruction";
  *(v7 + 8) = 11;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "timingPeriod";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B74EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C70534();
    }

    else if (result == 2)
    {
      sub_251B8EA80(a1, v5, a2, a3, type metadata accessor for PBMedicationDosage);
    }
  }

  return result;
}

uint64_t sub_251B74F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    result = sub_251B8EC4C(v3, a1, a2, a3, type metadata accessor for PBMedicationDosage, 2);
    if (!v4)
    {
      type metadata accessor for PBMedicationDosage(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B750B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B718, type metadata accessor for PBMedicationDosage, &unk_251C80FDC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B75150(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B2B0, type metadata accessor for PBMedicationDosage, &unk_251C81014);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B751BC(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B2B0, type metadata accessor for PBMedicationDosage, &unk_251C81014);

  return sub_251C705C4();
}

uint64_t sub_251B7523C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A21B0);
  __swift_project_value_buffer(v0, qword_27F4A21B0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "value";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "unitString";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B7541C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C70514();
    }

    else if (result == 2)
    {
      sub_251C70534();
    }
  }

  return result;
}

uint64_t sub_251B754A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_251C70664(), !v4))
  {
    v6 = v3[2];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_251C70674(), !v4))
    {
      type metadata accessor for PBQuantity(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B75560@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  return sub_251C703A4();
}

uint64_t sub_251B755D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B720, type metadata accessor for PBQuantity, &unk_251C80E74);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B75678(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B290, type metadata accessor for PBQuantity, &unk_251C80EAC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B756E4(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B290, type metadata accessor for PBQuantity, &unk_251C80EAC);

  return sub_251C705C4();
}

uint64_t sub_251B75760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v3 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251B75834()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A21C8);
  __swift_project_value_buffer(v0, qword_27F4A21C8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_251C7C1F0;
  v5 = v20 + v4;
  v6 = v20 + v4 + *(v2 + 56);
  *(v20 + v4) = 1;
  *v6 = "earliest_dosage_date";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "medication";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "status";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "dosages";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "localized_preferred_name";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "rx_norm_code_set";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B75B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            type metadata accessor for PBMedicationDosage(0);
            sub_251B9ED44(&qword_27F47B2B0, type metadata accessor for PBMedicationDosage, &unk_251C81014);
            sub_251C70554();
            break;
          case 5:
LABEL_18:
            sub_251C70534();
            break;
          case 6:
            sub_251C70504();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_18;
          case 2:
            sub_251B75C9C(a1, v5, a2, a3);
            break;
          case 3:
            sub_251B75D50(a1, v5, a2, a3);
            break;
        }
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B75C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBGeneralMedication(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B75D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBGeneralMedication(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B75E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    result = sub_251B75FA0(v3, a1, a2, a3);
    if (!v4)
    {
      sub_251B761EC(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        type metadata accessor for PBMedicationDosage(0);
        sub_251B9ED44(&qword_27F47B2B0, type metadata accessor for PBMedicationDosage, &unk_251C81014);
        sub_251C70694();
      }

      v11 = v3[4];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v3[3] & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        sub_251C70674();
      }

      if (*(v3[5] + 16))
      {
        sub_251C70654();
      }

      type metadata accessor for PBGeneralMedication(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B75FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBGeneralMedication(0);
  sub_251BB33C4(a1 + *(v12 + 36), v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B761EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBGeneralMedication(0);
  sub_251BB33C4(a1 + *(v12 + 40), v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B76438@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = v4;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0xE000000000000000;
  *(a2 + 5) = v4;
  sub_251C703A4();
  v5 = *(a1 + 36);
  v6 = type metadata accessor for PBHKConcept(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), &a2[v5], 1, 1, v6);
  v7 = &a2[*(a1 + 40)];

  return v9(v7, 1, 1, v6);
}

uint64_t sub_251B7655C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B728, type metadata accessor for PBGeneralMedication, &unk_251C80D0C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B765FC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication, &unk_251C80D44);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B76668(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication, &unk_251C80D44);

  return sub_251C705C4();
}

uint64_t sub_251B766E8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A21E0);
  __swift_project_value_buffer(v0, qword_27F4A21E0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_251C7C1C0;
  v5 = v25 + v4;
  v6 = v25 + v4 + *(v2 + 56);
  *(v25 + v4) = 1;
  *v6 = "general_medication";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "asserter";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "assertion_date";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "asserter_type";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "effective_start_date";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "effective_end_date";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "not_taken";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "reason_for_use";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "reasons_not_taken";
  *(v23 + 8) = 17;
  *(v23 + 16) = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B76A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
LABEL_4:
            sub_251C70534();
            goto LABEL_5;
          }

          sub_251BB2F54();
          sub_251C70494();
        }

        else if (result == 1)
        {
          sub_251B76CA0(a1, v5, a2, a3);
        }

        else if (result == 2)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (result <= 6)
        {
          goto LABEL_4;
        }

        if (result == 7)
        {
          sub_251C70474();
        }

        else if (result == 8 || result == 9)
        {
          type metadata accessor for PBHKConcept(0);
          sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
          sub_251C70554();
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B76CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKMedicationRecord(0);
  type metadata accessor for PBGeneralMedication(0);
  sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication, &unk_251C80D44);
  return sub_251C70564();
}

uint64_t sub_251B76D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B77014(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = *(v3 + 8);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_251C70674();
    }

    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      sub_251C70674();
    }

    if (*(v3 + 32))
    {
      sub_251BB2F54();
      sub_251C70604();
    }

    v10 = *(v3 + 56);
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_251C70674();
    }

    v12 = *(v3 + 72);
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = *(v3 + 64) & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_251C70674();
    }

    if (*(v3 + 80) == 1)
    {
      sub_251C705F4();
    }

    if (*(*(v3 + 88) + 16))
    {
      type metadata accessor for PBHKConcept(0);
      sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
      sub_251C70694();
    }

    if (*(*(v3 + 96) + 16))
    {
      type metadata accessor for PBHKConcept(0);
      sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
      sub_251C70694();
    }

    type metadata accessor for PBHKMedicationRecord(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B77014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBGeneralMedication(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKMedicationRecord(0);
  sub_251BB33C4(a1 + *(v12 + 52), v7, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBGeneralMedication);
  sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication, &unk_251C80D44);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBGeneralMedication);
}

uint64_t sub_251B77260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 88) = MEMORY[0x277D84F90];
  *(a2 + 96) = v4;
  sub_251C703A4();
  v5 = *(a1 + 52);
  v6 = type metadata accessor for PBGeneralMedication(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_251B77380(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B730, type metadata accessor for PBHKMedicationRecord, &unk_251C80BA4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B77420(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B250, type metadata accessor for PBHKMedicationRecord, &unk_251C80BDC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B7748C(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B250, type metadata accessor for PBHKMedicationRecord, &unk_251C80BDC);

  return sub_251C705C4();
}

uint64_t sub_251B7750C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A21F8);
  __swift_project_value_buffer(v0, qword_27F4A21F8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251C75420;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 0;
  *v5 = "ACTOR_TYPE_NOT_SET";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 1;
  *v9 = "ACTOR_TYPE_NONE";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "ACTOR_TYPE_OTHER";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "ACTOR_TYPE_PATIENT";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "ACTOR_TYPE_PRACTITIONER";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "ACTOR_TYPE_RELATED_PERSON";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "ACTOR_TYPE_ORGANIZATION";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251B77840()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2210);
  __swift_project_value_buffer(v0, qword_27F4A2210);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "general_medication";
  *(v7 + 8) = 18;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "day_supply_quantity";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "hand_over_date";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "preparation_date";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v16 = "quantity_dispensed";
  *(v16 + 8) = 18;
  *(v16 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B77AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_251B77BDC(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_251B77C90(a1, v5, a2, a3);
      }
    }

    else if (result == 3 || result == 4)
    {
      sub_251C70534();
    }

    else if (result == 5)
    {
      sub_251B77D44(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_251B77BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKMedicationDispenseRecord(0);
  type metadata accessor for PBGeneralMedication(0);
  sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication, &unk_251C80D44);
  return sub_251C70564();
}

uint64_t sub_251B77C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKMedicationDispenseRecord(0);
  type metadata accessor for PBQuantity(0);
  sub_251B9ED44(&qword_27F47B290, type metadata accessor for PBQuantity, &unk_251C80EAC);
  return sub_251C70564();
}

uint64_t sub_251B77D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKMedicationDispenseRecord(0);
  type metadata accessor for PBQuantity(0);
  sub_251B9ED44(&qword_27F47B290, type metadata accessor for PBQuantity, &unk_251C80EAC);
  return sub_251C70564();
}

uint64_t sub_251B77DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B77F08(v3, a1, a2, a3);
  if (!v4)
  {
    sub_251B78154(v3, a1, a2, a3);
    v9 = v3[1];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_251C70674();
    }

    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_251C70674();
    }

    sub_251B783A0(v3, a1, a2, a3);
    type metadata accessor for PBHKMedicationDispenseRecord(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B77F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBGeneralMedication(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  sub_251BB33C4(a1 + *(v12 + 28), v7, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBGeneralMedication);
  sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication, &unk_251C80D44);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBGeneralMedication);
}

uint64_t sub_251B78154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6F88, type metadata accessor for PBQuantity, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBQuantity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  sub_251BB33C4(a1 + *(v12 + 32), v7, qword_2813E6F88, type metadata accessor for PBQuantity);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6F88, type metadata accessor for PBQuantity);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBQuantity);
  sub_251B9ED44(&qword_27F47B290, type metadata accessor for PBQuantity, &unk_251C80EAC);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBQuantity);
}

uint64_t sub_251B783A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6F88, type metadata accessor for PBQuantity, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBQuantity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  sub_251BB33C4(a1 + *(v12 + 36), v7, qword_2813E6F88, type metadata accessor for PBQuantity);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6F88, type metadata accessor for PBQuantity);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBQuantity);
  sub_251B9ED44(&qword_27F47B290, type metadata accessor for PBQuantity, &unk_251C80EAC);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBQuantity);
}

uint64_t sub_251B785EC@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_251C703A4();
  v4 = a1[7];
  v5 = type metadata accessor for PBGeneralMedication(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[8];
  v7 = type metadata accessor for PBQuantity(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), &a2[v6], 1, 1, v7);
  v8 = &a2[a1[9]];

  return v10(v8, 1, 1, v7);
}

uint64_t sub_251B78748(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B740, type metadata accessor for PBHKMedicationDispenseRecord, &unk_251C80A14);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B787E8(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B230, type metadata accessor for PBHKMedicationDispenseRecord, &unk_251C80A4C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B78854(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B230, type metadata accessor for PBHKMedicationDispenseRecord, &unk_251C80A4C);

  return sub_251C705C4();
}

uint64_t sub_251B788D4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2228);
  __swift_project_value_buffer(v0, qword_27F4A2228);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_251C78260;
  v5 = v24 + v4;
  v6 = v24 + v4 + *(v2 + 56);
  *(v24 + v4) = 1;
  *v6 = "general_medication";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "ended_date";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "number_of_fills";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "prescriber";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "reason";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "reason_ended";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "status_reason";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "written_date";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B78C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            sub_251B78ED8(a1, v5, a2, a3);
          }

          else if (result == 8)
          {
LABEL_4:
            sub_251C70534();
          }
        }

        else if (result == 5)
        {
          type metadata accessor for PBHKConcept(0);
          sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
          sub_251C70554();
        }

        else
        {
          sub_251B86F98(a1, v5, a2, a3, type metadata accessor for PBHKMedicationOrder);
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          goto LABEL_4;
        }

        sub_251C704F4();
      }

      else if (result == 1)
      {
        sub_251B78E24(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        goto LABEL_4;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B78E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKMedicationOrder(0);
  type metadata accessor for PBGeneralMedication(0);
  sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication, &unk_251C80D44);
  return sub_251C70564();
}

uint64_t sub_251B78ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKMedicationOrder(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B78F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B79184(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = *(v3 + 8);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_251C70674();
    }

    if (*(v3 + 16))
    {
      sub_251C70644();
    }

    v11 = *(v3 + 32);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_251C70674();
    }

    if (*(*(v3 + 40) + 16))
    {
      type metadata accessor for PBHKConcept(0);
      sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
      sub_251C70694();
    }

    sub_251B8748C(v3, a1, a2, a3, type metadata accessor for PBHKMedicationOrder, 6);
    sub_251B793D0(v3, a1, a2, a3);
    v13 = *(v3 + 56);
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_251C70674();
    }

    type metadata accessor for PBHKMedicationOrder(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B79184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBGeneralMedication(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKMedicationOrder(0);
  sub_251BB33C4(a1 + *(v12 + 40), v7, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBGeneralMedication);
  sub_251B9ED44(&qword_27F47B270, type metadata accessor for PBGeneralMedication, &unk_251C80D44);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBGeneralMedication);
}

uint64_t sub_251B793D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKMedicationOrder(0);
  sub_251BB33C4(a1 + *(v12 + 48), v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B7961C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = MEMORY[0x277D84F90];
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  sub_251C703A4();
  v4 = a1[10];
  v5 = type metadata accessor for PBGeneralMedication(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[11];
  v7 = type metadata accessor for PBHKConcept(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), a2 + v6, 1, 1, v7);
  v8 = a2 + a1[12];

  return v10(v8, 1, 1, v7);
}

uint64_t sub_251B7978C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B748, type metadata accessor for PBHKMedicationOrder, &unk_251C808AC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B7982C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B210, type metadata accessor for PBHKMedicationOrder, &unk_251C808E4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B79898(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B210, type metadata accessor for PBHKMedicationOrder, &unk_251C808E4);

  return sub_251C705C4();
}

uint64_t sub_251B79918()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2240);
  __swift_project_value_buffer(v0, qword_27F4A2240);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_251C7C200;
  v5 = v37 + v4;
  v6 = v37 + v4 + *(v2 + 56);
  *(v37 + v4) = 1;
  *v6 = "body_site";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v37 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "category";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v37 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "comments";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v37 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "diagnostic_test";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v37 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "effective_end_date";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v37 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "effective_start_date";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v37 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "interpretation_deprecated";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v9();
  v21 = (v37 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "issue_date";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  v23 = v37 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "method";
  *(v23 + 8) = 6;
  *(v23 + 16) = 2;
  v9();
  v24 = (v37 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "performers";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v9();
  v26 = (v37 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "referenceRanges";
  *(v27 + 1) = 15;
  v27[16] = 2;
  v9();
  v28 = (v37 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 12;
  *v29 = "status";
  *(v29 + 1) = 6;
  v29[16] = 2;
  v9();
  v30 = (v37 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 13;
  *v31 = "likelyDisplayString";
  *(v31 + 1) = 19;
  v31[16] = 2;
  v9();
  v32 = (v37 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "value";
  *(v33 + 1) = 5;
  v33[16] = 2;
  v9();
  v34 = (v37 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 15;
  *v35 = "interpretation";
  *(v35 + 1) = 14;
  v35[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B79E78()
{
  v1 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
  v2 = type metadata accessor for PBHKConcept(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v4 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v3(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest, 1, 1, v2);
  v6 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v3(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated, 1, 1, v2);
  v8 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v3(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method, 1, 1, v2);
  v9 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges) = v9;
  v3(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status, 1, 1, v2);
  v10 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
  v12 = type metadata accessor for PBHKInspectableValueCollection(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation) = v9;
  return v0;
}

uint64_t sub_251B7A05C(uint64_t a1)
{
  v85 = type metadata accessor for PBHKInspectableValueCollection;
  v3 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v70 - v5;
  v71 = type metadata accessor for PBHKConcept;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, v3);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v70 - v7;
  v8 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
  v70 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v1 + v8, 1, 1, v9);
  v11 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v72 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest;
  v10(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest, 1, 1, v9);
  v13 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
  v73 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
  v74 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v75 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated;
  v10(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated, 1, 1, v9);
  v15 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
  v76 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v77 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method;
  v10(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method, 1, 1, v9);
  v78 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers;
  v16 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers) = MEMORY[0x277D84F90];
  v79 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges;
  *(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges) = v16;
  v80 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status;
  v10(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status, 1, 1, v9);
  v17 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString);
  v81 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
  v82 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
  v19 = type metadata accessor for PBHKInspectableValueCollection(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v83 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation;
  *(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation) = v16;
  v20 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
  swift_beginAccess();
  v21 = a1 + v20;
  v22 = v86;
  v23 = v71;
  sub_251BB33C4(v21, v86, qword_2813E6D28, v71);
  v24 = v70;
  swift_beginAccess();
  sub_251BB3050(v22, v1 + v24, qword_2813E6D28, v23);
  swift_endAccess();
  v25 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category);
  swift_beginAccess();
  v27 = *v25;
  v26 = v25[1];
  swift_beginAccess();
  *v11 = v27;
  v11[1] = v26;

  v28 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  swift_beginAccess();
  *v12 = v30;
  v12[1] = v29;

  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest;
  swift_beginAccess();
  v32 = v86;
  sub_251BB33C4(a1 + v31, v86, qword_2813E6D28, v23);
  v33 = v72;
  swift_beginAccess();
  sub_251BB3050(v32, v1 + v33, qword_2813E6D28, v23);
  swift_endAccess();
  v34 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];
  v37 = v73;
  swift_beginAccess();
  *v37 = v36;
  v37[1] = v35;

  v38 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
  swift_beginAccess();
  v40 = *v38;
  v39 = v38[1];
  v41 = v74;
  swift_beginAccess();
  *v41 = v40;
  v41[1] = v39;

  v42 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated;
  swift_beginAccess();
  sub_251BB33C4(a1 + v42, v32, qword_2813E6D28, v23);
  v43 = v75;
  swift_beginAccess();
  sub_251BB3050(v32, v1 + v43, qword_2813E6D28, v23);
  swift_endAccess();
  v44 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];
  v47 = v76;
  swift_beginAccess();
  *v47 = v46;
  v47[1] = v45;

  v48 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method;
  swift_beginAccess();
  sub_251BB33C4(a1 + v48, v32, qword_2813E6D28, v23);
  v49 = v77;
  swift_beginAccess();
  sub_251BB3050(v32, v1 + v49, qword_2813E6D28, v23);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers;
  swift_beginAccess();
  v51 = *(a1 + v50);
  v52 = v78;
  swift_beginAccess();
  *(v1 + v52) = v51;

  v53 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges;
  swift_beginAccess();
  v54 = *(a1 + v53);
  v55 = v79;
  swift_beginAccess();
  *(v1 + v55) = v54;

  v56 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status;
  swift_beginAccess();
  sub_251BB33C4(a1 + v56, v32, qword_2813E6D28, v23);
  v57 = v80;
  swift_beginAccess();
  sub_251BB3050(v32, v1 + v57, qword_2813E6D28, v23);
  swift_endAccess();
  v58 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString);
  swift_beginAccess();
  v60 = *v58;
  v59 = v58[1];
  v61 = v81;
  swift_beginAccess();
  *v61 = v60;
  v61[1] = v59;

  v62 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
  swift_beginAccess();
  v64 = v84;
  v63 = v85;
  sub_251BB33C4(a1 + v62, v84, qword_2813E32E8, v85);
  v65 = v82;
  swift_beginAccess();
  sub_251BB3050(v64, v1 + v65, qword_2813E32E8, v63);
  swift_endAccess();
  v66 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation;
  swift_beginAccess();
  v67 = *(a1 + v66);

  v68 = v83;
  swift_beginAccess();
  *(v1 + v68) = v67;

  return v1;
}

uint64_t sub_251B7A8D8()
{
  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite, qword_2813E6D28, type metadata accessor for PBHKConcept);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest, qword_2813E6D28, type metadata accessor for PBHKConcept);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated, qword_2813E6D28, type metadata accessor for PBHKConcept);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method, qword_2813E6D28, type metadata accessor for PBHKConcept);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status, qword_2813E6D28, type metadata accessor for PBHKConcept);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);

  return v0;
}

void sub_251B7AAA8(uint64_t a1)
{
  sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_251B67AAC(319, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_251B7AC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_251B7AE80(a2, a1, a3, a4);
          break;
        case 2:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category;
          goto LABEL_5;
        case 3:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments;
          goto LABEL_5;
        case 4:
          sub_251B7AF5C(a2, a1, a3, a4);
          break;
        case 5:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate;
          goto LABEL_5;
        case 6:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate;
          goto LABEL_5;
        case 7:
          sub_251B7B038(a2, a1, a3, a4);
          break;
        case 8:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate;
          goto LABEL_5;
        case 9:
          sub_251B7B114(a2, a1, a3, a4);
          break;
        case 10:
          sub_251B82240(a2, a1, a3, a4, &OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers);
          break;
        case 11:
          sub_251B7B1F0(a2, a1, a3, a4);
          break;
        case 12:
          sub_251B7B2CC(a2, a1, a3, a4);
          break;
        case 13:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString;
LABEL_5:
          sub_251B8255C(v11, v12, v13, v14, v15);
          break;
        case 14:
          sub_251B7B3A8(a2, a1, a3, a4);
          break;
        case 15:
          sub_251B7B484(a2, a1, a3, a4);
          break;
        default:
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B7AE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B7AF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B7B038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B7B114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B7B1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKReferenceRange(0);
  sub_251B9ED44(&qword_27F47B1D0, type metadata accessor for PBHKReferenceRange, &unk_251C80614);
  sub_251C70554();
  return swift_endAccess();
}

uint64_t sub_251B7B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B7B3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKInspectableValueCollection(0);
  sub_251B9ED44(&qword_27F47B190, type metadata accessor for PBHKInspectableValueCollection, &unk_251C80344);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B7B484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C70554();
  return swift_endAccess();
}

uint64_t sub_251B7B560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_251B7BAB8(a1, a2, a3, a4);
  if (!v4)
  {
    v10 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_251C70674();
    }

    v14 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments);
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_251C70674();
    }

    sub_251B7BD10(a1, a2, a3, a4);
    v18 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
    swift_beginAccess();
    v19 = *v18;
    v20 = v18[1];
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {

      sub_251C70674();
    }

    swift_beginAccess();

    sub_251C70674();

    sub_251B7BF68(a1, a2, a3, a4);
    swift_beginAccess();

    sub_251C70674();

    sub_251B7C1C0(a1, a2, a3, a4);
    v22 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers;
    swift_beginAccess();
    if (*(*(a1 + v22) + 16))
    {

      sub_251C70654();
    }

    v23 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges;
    swift_beginAccess();
    if (*(*(a1 + v23) + 16))
    {
      type metadata accessor for PBHKReferenceRange(0);
      sub_251B9ED44(&qword_27F47B1D0, type metadata accessor for PBHKReferenceRange, &unk_251C80614);

      sub_251C70694();
    }

    sub_251B7C418(a1, a2, a3, a4);
    swift_beginAccess();

    sub_251C70674();

    sub_251B7C670(a1, a2, a3, a4);
    v24 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation;
    result = swift_beginAccess();
    if (*(*(a1 + v24) + 16))
    {
      type metadata accessor for PBHKConcept(0);
      sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);

      sub_251C70694();
    }
  }

  return result;
}

uint64_t sub_251B7BAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
  swift_beginAccess();
  sub_251BB33C4(a1 + v12, v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B7BD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest;
  swift_beginAccess();
  sub_251BB33C4(a1 + v12, v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B7BF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated;
  swift_beginAccess();
  sub_251BB33C4(a1 + v12, v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B7C1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method;
  swift_beginAccess();
  sub_251BB33C4(a1 + v12, v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B7C418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status;
  swift_beginAccess();
  sub_251BB33C4(a1 + v12, v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B7C670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_251B67AAC(0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKInspectableValueCollection(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
  swift_beginAccess();
  sub_251BB33C4(a1 + v12, v7, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKInspectableValueCollection);
  sub_251B9ED44(&qword_27F47B190, type metadata accessor for PBHKInspectableValueCollection, &unk_251C80344);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKInspectableValueCollection);
}

uint64_t sub_251B7C8C8(uint64_t a1, uint64_t a2)
{
  v245 = a2;
  v3 = type metadata accessor for PBHKInspectableValueCollection(0);
  v221 = *(v3 - 8);
  v222 = v3;
  MEMORY[0x28223BE20](v3);
  v217 = &v215 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BB34B4(0, &qword_27F4790F0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v220 = v5;
  MEMORY[0x28223BE20](v5);
  v223 = &v215 - v6;
  v7 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection, MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v218 = (&v215 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v225 = &v215 - v11;
  v12 = type metadata accessor for PBHKConcept(0);
  v13 = *(v12 - 8);
  v243 = v12;
  v244 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v219 = &v215 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v228 = &v215 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v230 = &v215 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v235 = &v215 - v21;
  MEMORY[0x28223BE20](v20);
  v242 = &v215 - v22;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v24 = v23;
  v25 = MEMORY[0x28223BE20](v23);
  v226 = &v215 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v231 = &v215 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v234 = &v215 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v239 = &v215 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v215 - v33;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, v7);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v224 = &v215 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v227 = &v215 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v229 = &v215 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v233 = &v215 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v232 = &v215 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v237 = &v215 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v236 = &v215 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v240 = &v215 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v241 = &v215 - v53;
  MEMORY[0x28223BE20](v52);
  v55 = &v215 - v54;
  v56 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
  swift_beginAccess();
  sub_251BB33C4(a1 + v56, v55, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v57 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__bodySite;
  v58 = v245;
  swift_beginAccess();
  v238 = v24;
  v59 = *(v24 + 48);
  sub_251BB33C4(v55, v34, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v60 = v58 + v57;
  v61 = v243;
  v62 = v244;
  v63 = v34;
  sub_251BB33C4(v60, &v34[v59], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v66 = *(v62 + 48);
  v65 = v62 + 48;
  v64 = v66;
  if (v66(v34, 1, v61) == 1)
  {

    sub_251BB3444(v55, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v64(&v34[v59], 1, v61) != 1)
    {
      goto LABEL_7;
    }

    v244 = v65;
    v67 = v61;
    sub_251BB3444(v34, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  else
  {
    v68 = v55;
    v69 = v241;
    sub_251BB33C4(v63, v241, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v64((v63 + v59), 1, v61) == 1)
    {

      sub_251BB3444(v55, qword_2813E6D28, type metadata accessor for PBHKConcept);
      v70 = v69;
LABEL_6:
      sub_251BB2308(v70, type metadata accessor for PBHKConcept);
      goto LABEL_7;
    }

    v216 = v64;
    v244 = v65;
    v77 = v242;
    sub_251BB23C4(v63 + v59, v242, type metadata accessor for PBHKConcept);
    v67 = v61;
    v78 = *(v61 + 20);
    v79 = *(v69 + v78);
    v80 = *(v77 + v78);

    if (v79 != v80)
    {

      v81 = sub_251B70648(v79, v80);

      if ((v81 & 1) == 0)
      {
        sub_251BB2308(v242, type metadata accessor for PBHKConcept);
        sub_251BB3444(v68, qword_2813E6D28, type metadata accessor for PBHKConcept);
        sub_251BB2308(v69, type metadata accessor for PBHKConcept);
        v110 = v63;
        goto LABEL_29;
      }
    }

    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v82 = v242;
    v83 = sub_251C70ED4();
    sub_251BB2308(v82, type metadata accessor for PBHKConcept);
    sub_251BB3444(v68, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251BB2308(v69, type metadata accessor for PBHKConcept);
    sub_251BB3444(v63, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v64 = v216;
    if ((v83 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v84 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category);
  swift_beginAccess();
  v85 = *v84;
  v86 = v84[1];
  v87 = (v245 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__category);
  swift_beginAccess();
  if ((v85 != *v87 || v86 != v87[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v88 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments);
  swift_beginAccess();
  v89 = *v88;
  v90 = v88[1];
  v91 = (v245 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__comments);
  swift_beginAccess();
  if ((v89 != *v91 || v90 != v91[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v216 = v64;
  v92 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest;
  swift_beginAccess();
  v93 = v240;
  sub_251BB33C4(a1 + v92, v240, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v94 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__diagnosticTest;
  v95 = v245;
  swift_beginAccess();
  v96 = v239;
  v97 = *(v238 + 48);
  sub_251BB33C4(v93, v239, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v98 = v95 + v94;
  v99 = v216;
  v100 = v96;
  sub_251BB33C4(v98, v96 + v97, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v101 = v96;
  v102 = v67;
  v103 = v244;
  if (v99(v101, 1, v67) != 1)
  {
    v106 = v236;
    sub_251BB33C4(v100, v236, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v107 = v99(v100 + v97, 1, v102);
    v105 = v237;
    if (v107 == 1)
    {
      sub_251BB3444(v240, qword_2813E6D28, type metadata accessor for PBHKConcept);
      v108 = v106;
LABEL_25:
      sub_251BB2308(v108, type metadata accessor for PBHKConcept);
      goto LABEL_26;
    }

    v244 = v103;
    v111 = v235;
    sub_251BB23C4(v100 + v97, v235, type metadata accessor for PBHKConcept);
    v112 = *(v102 + 20);
    v113 = *(v106 + v112);
    v114 = *(v111 + v112);
    if (v113 == v114 || (, , v115 = sub_251B70648(v113, v114), , , (v115 & 1) != 0))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v116 = sub_251C70ED4();
      sub_251BB2308(v111, type metadata accessor for PBHKConcept);
      sub_251BB3444(v240, qword_2813E6D28, type metadata accessor for PBHKConcept);
      sub_251BB2308(v106, type metadata accessor for PBHKConcept);
      sub_251BB3444(v239, qword_2813E6D28, type metadata accessor for PBHKConcept);
      if ((v116 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }

    sub_251BB2308(v111, type metadata accessor for PBHKConcept);
    sub_251BB3444(v240, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251BB2308(v106, type metadata accessor for PBHKConcept);
    v110 = v239;
LABEL_29:
    sub_251BB3444(v110, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_9;
  }

  sub_251BB3444(v93, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v104 = v99(v100 + v97, 1, v67);
  v105 = v237;
  if (v104 != 1)
  {
    goto LABEL_26;
  }

  v244 = v103;
  sub_251BB3444(v100, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_33:
  v117 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
  swift_beginAccess();
  v118 = *v117;
  v119 = v117[1];
  v120 = (v245 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveEndDate);
  swift_beginAccess();
  if ((v118 != *v120 || v119 != v120[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v121 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
  swift_beginAccess();
  v122 = *v121;
  v123 = v121[1];
  v124 = (v245 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__effectiveStartDate);
  swift_beginAccess();
  if ((v122 != *v124 || v123 != v124[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v125 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated;
  swift_beginAccess();
  sub_251BB33C4(a1 + v125, v105, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v126 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretationDeprecated;
  v127 = v105;
  v128 = v245;
  swift_beginAccess();
  v129 = v238;
  v130 = *(v238 + 48);
  v100 = v234;
  sub_251BB33C4(v127, v234, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v131 = v128 + v126;
  v132 = v216;
  sub_251BB33C4(v131, v100 + v130, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v133 = v243;
  if (v132(v100, 1, v243) == 1)
  {
    sub_251BB3444(v127, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v134 = v132(v100 + v130, 1, v133);
    v135 = v233;
    if (v134 == 1)
    {
      v136 = v133;
      sub_251BB3444(v100, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_48;
    }

LABEL_26:
    v71 = &qword_27F4790E8;
    v72 = qword_2813E6D28;
    v109 = type metadata accessor for PBHKConcept;
LABEL_27:
    v73 = v109;
    v74 = v100;
    goto LABEL_8;
  }

  v137 = v232;
  sub_251BB33C4(v100, v232, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v138 = v132(v100 + v130, 1, v133);
  v135 = v233;
  if (v138 == 1)
  {
    sub_251BB3444(v237, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v108 = v137;
    goto LABEL_25;
  }

  v139 = v230;
  sub_251BB23C4(v100 + v130, v230, type metadata accessor for PBHKConcept);
  v140 = v137;
  v136 = v133;
  v141 = *(v133 + 20);
  v142 = *(v140 + v141);
  v143 = *(v139 + v141);
  if (v142 != v143)
  {

    v144 = sub_251B70648(v142, v143);

    if ((v144 & 1) == 0)
    {
      sub_251BB2308(v139, type metadata accessor for PBHKConcept);
      sub_251BB3444(v237, qword_2813E6D28, type metadata accessor for PBHKConcept);
      sub_251BB2308(v232, type metadata accessor for PBHKConcept);
      v110 = v234;
      goto LABEL_29;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v145 = v232;
  v146 = sub_251C70ED4();
  sub_251BB2308(v139, type metadata accessor for PBHKConcept);
  sub_251BB3444(v237, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB2308(v145, type metadata accessor for PBHKConcept);
  sub_251BB3444(v234, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v146 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_48:
  v147 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
  swift_beginAccess();
  v148 = *v147;
  v149 = v147[1];
  v150 = (v245 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__issueDate);
  swift_beginAccess();
  if ((v148 != *v150 || v149 != v150[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v151 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method;
  swift_beginAccess();
  sub_251BB33C4(a1 + v151, v135, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v152 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__method;
  v153 = v135;
  v154 = v245;
  swift_beginAccess();
  v155 = *(v129 + 48);
  v63 = v231;
  sub_251BB33C4(v153, v231, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v156 = v154 + v152;
  v157 = v216;
  sub_251BB33C4(v156, v63 + v155, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v157(v63, 1, v136) == 1)
  {
    sub_251BB3444(v153, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v157(v63 + v155, 1, v136) == 1)
    {
      v158 = v63;
      v159 = v136;
      sub_251BB3444(v158, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_60;
    }

LABEL_7:
    v71 = &qword_27F4790E8;
    v72 = qword_2813E6D28;
    v73 = type metadata accessor for PBHKConcept;
    v74 = v63;
LABEL_8:
    sub_251BB242C(v74, v71, v72, v73);
    goto LABEL_9;
  }

  v160 = v229;
  sub_251BB33C4(v63, v229, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v157(v63 + v155, 1, v136) == 1)
  {
    sub_251BB3444(v233, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v70 = v160;
    goto LABEL_6;
  }

  v161 = v228;
  sub_251BB23C4(v63 + v155, v228, type metadata accessor for PBHKConcept);
  v159 = v136;
  v162 = *(v136 + 20);
  v163 = *(v160 + v162);
  v164 = *(v161 + v162);
  v165 = v233;
  if (v163 != v164)
  {

    v166 = sub_251B70648(v163, v164);

    if ((v166 & 1) == 0)
    {
      sub_251BB2308(v161, type metadata accessor for PBHKConcept);
      sub_251BB3444(v165, qword_2813E6D28, type metadata accessor for PBHKConcept);
      sub_251BB2308(v160, type metadata accessor for PBHKConcept);
      v110 = v231;
      goto LABEL_29;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v167 = sub_251C70ED4();
  sub_251BB2308(v161, type metadata accessor for PBHKConcept);
  sub_251BB3444(v165, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB2308(v160, type metadata accessor for PBHKConcept);
  sub_251BB3444(v231, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v167 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_60:
  v168 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers;
  swift_beginAccess();
  v169 = *(a1 + v168);
  v170 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__performers;
  v171 = v245;
  swift_beginAccess();
  if ((sub_251A93C70(v169, *(v171 + v170)) & 1) == 0)
  {
    goto LABEL_9;
  }

  v172 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges;
  swift_beginAccess();
  v173 = *(a1 + v172);
  v174 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__referenceRanges;
  v175 = v245;
  swift_beginAccess();
  v176 = *(v175 + v174);

  LOBYTE(v175) = sub_251A9B63C(v173, v176);

  if ((v175 & 1) == 0)
  {
    goto LABEL_9;
  }

  v177 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status;
  swift_beginAccess();
  v178 = v227;
  sub_251BB33C4(a1 + v177, v227, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v179 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__status;
  v180 = v245;
  swift_beginAccess();
  v181 = *(v238 + 48);
  v182 = v226;
  sub_251BB33C4(v178, v226, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v183 = v180 + v179;
  v184 = v216;
  sub_251BB33C4(v183, v182 + v181, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v184(v182, 1, v159) == 1)
  {
    sub_251BB3444(v178, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v184(v182 + v181, 1, v159) == 1)
    {
      sub_251BB3444(v182, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_72;
    }

LABEL_68:
    v71 = &qword_27F4790E8;
    v72 = qword_2813E6D28;
    v73 = type metadata accessor for PBHKConcept;
    v74 = v182;
    goto LABEL_8;
  }

  v185 = v224;
  sub_251BB33C4(v182, v224, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v184(v182 + v181, 1, v159) == 1)
  {
    sub_251BB3444(v227, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251BB2308(v185, type metadata accessor for PBHKConcept);
    goto LABEL_68;
  }

  v186 = v219;
  sub_251BB23C4(v182 + v181, v219, type metadata accessor for PBHKConcept);
  v187 = *(v159 + 20);
  v188 = *(v185 + v187);
  v189 = *(v186 + v187);
  v190 = v227;
  if (v188 != v189)
  {

    v191 = sub_251B70648(v188, v189);

    if ((v191 & 1) == 0)
    {
      sub_251BB2308(v186, type metadata accessor for PBHKConcept);
      sub_251BB3444(v190, qword_2813E6D28, type metadata accessor for PBHKConcept);
      sub_251BB2308(v185, type metadata accessor for PBHKConcept);
      v110 = v226;
      goto LABEL_29;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v192 = sub_251C70ED4();
  sub_251BB2308(v186, type metadata accessor for PBHKConcept);
  sub_251BB3444(v190, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB2308(v185, type metadata accessor for PBHKConcept);
  sub_251BB3444(v226, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v192 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_72:
  v193 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString);
  swift_beginAccess();
  v194 = *v193;
  v195 = v193[1];
  v196 = (v245 + OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__likelyDisplayString);
  swift_beginAccess();
  if ((v194 != *v196 || v195 != v196[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v197 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
  swift_beginAccess();
  v198 = v225;
  sub_251BB33C4(a1 + v197, v225, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v199 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__value;
  v200 = v245;
  swift_beginAccess();
  v201 = *(v220 + 48);
  v202 = v198;
  v203 = v223;
  sub_251BB33C4(v202, v223, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v100 = v203;
  sub_251BB33C4(v200 + v199, v203 + v201, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v204 = v222;
  v205 = *(v221 + 48);
  if (v205(v203, 1, v222) == 1)
  {
    sub_251BB3444(v225, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
    if (v205(v203 + v201, 1, v204) == 1)
    {
      sub_251BB3444(v203, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
LABEL_83:
      v210 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation;
      swift_beginAccess();
      v211 = *(a1 + v210);
      v212 = OBJC_IVAR____TtCV19HealthRecordsDaemon24PBHKDiagnosticTestResultP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__interpretation;
      v213 = v245;
      swift_beginAccess();
      v214 = *(v213 + v212);

      v75 = sub_251A956E8(v211, v214);

      return v75 & 1;
    }

    goto LABEL_80;
  }

  v206 = v218;
  sub_251BB33C4(v203, v218, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  if (v205(v203 + v201, 1, v204) == 1)
  {
    sub_251BB3444(v225, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
    sub_251BB2308(v206, type metadata accessor for PBHKInspectableValueCollection);
LABEL_80:
    v71 = &qword_27F4790F0;
    v72 = qword_2813E32E8;
    v109 = type metadata accessor for PBHKInspectableValueCollection;
    goto LABEL_27;
  }

  v207 = v203 + v201;
  v208 = v217;
  sub_251BB23C4(v207, v217, type metadata accessor for PBHKInspectableValueCollection);
  v209 = sub_251BAB4D4(v206, v208);
  sub_251BB2308(v208, type metadata accessor for PBHKInspectableValueCollection);
  sub_251BB3444(v225, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  sub_251BB2308(v206, type metadata accessor for PBHKInspectableValueCollection);
  sub_251BB3444(v203, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  if (v209)
  {
    goto LABEL_83;
  }

LABEL_9:

  v75 = 0;
  return v75 & 1;
}

uint64_t sub_251B7E728(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B750, type metadata accessor for PBHKDiagnosticTestResult, &unk_251C80744);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B7E7C8(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B1F0, type metadata accessor for PBHKDiagnosticTestResult, &unk_251C8077C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B7E834(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B1F0, type metadata accessor for PBHKDiagnosticTestResult, &unk_251C8077C);

  return sub_251C705C4();
}

uint64_t sub_251B7E8F4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2258);
  __swift_project_value_buffer(v0, qword_27F4A2258);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "identifier";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "valueRange";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B7EAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C70534();
    }

    else if (result == 2)
    {
      sub_251B7EB64(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_251B7EB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKReferenceRange(0);
  type metadata accessor for PBHKInspectableValueCollection(0);
  sub_251B9ED44(&qword_27F47B190, type metadata accessor for PBHKInspectableValueCollection, &unk_251C80344);
  return sub_251C70564();
}

uint64_t sub_251B7EC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    result = sub_251B7ECC4(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for PBHKReferenceRange(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B7ECC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKInspectableValueCollection(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKReferenceRange(0);
  sub_251BB33C4(a1 + *(v12 + 24), v7, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKInspectableValueCollection);
  sub_251B9ED44(&qword_27F47B190, type metadata accessor for PBHKInspectableValueCollection, &unk_251C80344);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKInspectableValueCollection);
}

uint64_t sub_251B7EF28@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  sub_251C703A4();
  v6 = *(a1 + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

uint64_t sub_251B7F00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B758, type metadata accessor for PBHKReferenceRange, &unk_251C805DC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B7F0AC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B1D0, type metadata accessor for PBHKReferenceRange, &unk_251C80614);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B7F118(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B1D0, type metadata accessor for PBHKReferenceRange, &unk_251C80614);

  return sub_251C705C4();
}

uint64_t sub_251B7F198()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2270);
  __swift_project_value_buffer(v0, qword_27F4A2270);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "numerator";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "denominator";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B7F378(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = sub_251C70674(), !v5))
  {
    v10 = v4[3];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (result = sub_251C70674(), !v5))
    {
      a4(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B7F494(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B760, type metadata accessor for PBHKRatioValue, &unk_251C80474);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B7F534(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B1B0, type metadata accessor for PBHKRatioValue, &unk_251C804AC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B7F5A0(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B1B0, type metadata accessor for PBHKRatioValue, &unk_251C804AC);

  return sub_251C705C4();
}

uint64_t sub_251B7F61C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2288);
  __swift_project_value_buffer(v0, qword_27F4A2288);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_251C7C1F0;
  v5 = v19 + v4 + *(v2 + 56);
  *(v19 + v4) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v19 + v4 + v3 + *(v2 + 56);
  *(v19 + v4 + v3) = 2;
  *v9 = "value";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v19 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 3;
  *v11 = "min";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v19 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 4;
  *v13 = "max";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v19 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "inspectableValues";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v19 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 6;
  *v17 = "unitString";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251B7F8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_251B7FC08(a1, v5, a2, a3);
            break;
          case 5:
            type metadata accessor for PBHKInspectableValue(0);
            sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue, &unk_251C801DC);
            sub_251C70554();
            break;
          case 6:
            sub_251C70534();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_251BB2FA8();
            sub_251C70494();
            break;
          case 2:
            sub_251B7FAA0(a1, v5, a2, a3);
            break;
          case 3:
            sub_251B7FB54(a1, v5, a2, a3);
            break;
        }
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B7FAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKInspectableValueCollection(0);
  type metadata accessor for PBHKInspectableValue(0);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue, &unk_251C801DC);
  return sub_251C70564();
}

uint64_t sub_251B7FB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKInspectableValueCollection(0);
  type metadata accessor for PBHKInspectableValue(0);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue, &unk_251C801DC);
  return sub_251C70564();
}

uint64_t sub_251B7FC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKInspectableValueCollection(0);
  type metadata accessor for PBHKInspectableValue(0);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue, &unk_251C801DC);
  return sub_251C70564();
}

uint64_t sub_251B7FCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_251BB2FA8(), result = sub_251C70604(), !v4))
  {
    result = sub_251B7FE6C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_251B800B8(v3, a1, a2, a3);
      sub_251B80304(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        type metadata accessor for PBHKInspectableValue(0);
        sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue, &unk_251C801DC);
        sub_251C70694();
      }

      v9 = v3[4];
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v3[3] & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        sub_251C70674();
      }

      type metadata accessor for PBHKInspectableValueCollection(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B7FE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKInspectableValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKInspectableValueCollection(0);
  sub_251BB33C4(a1 + *(v12 + 32), v7, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKInspectableValue);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue, &unk_251C801DC);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKInspectableValue);
}

uint64_t sub_251B800B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKInspectableValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKInspectableValueCollection(0);
  sub_251BB33C4(a1 + *(v12 + 36), v7, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKInspectableValue);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue, &unk_251C801DC);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKInspectableValue);
}

uint64_t sub_251B80304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKInspectableValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKInspectableValueCollection(0);
  sub_251BB33C4(a1 + *(v12 + 40), v7, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKInspectableValue);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue, &unk_251C801DC);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKInspectableValue);
}

uint64_t sub_251B80554@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  sub_251C703A4();
  v5 = a1[8];
  v6 = type metadata accessor for PBHKInspectableValue(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v9(a2 + a1[9], 1, 1, v6);
  v7 = a2 + a1[10];

  return (v9)(v7, 1, 1, v6);
}

uint64_t sub_251B806A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B768, type metadata accessor for PBHKInspectableValueCollection, &unk_251C8030C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B80744(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B190, type metadata accessor for PBHKInspectableValueCollection, &unk_251C80344);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B807B0(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B190, type metadata accessor for PBHKInspectableValueCollection, &unk_251C80344);

  return sub_251C705C4();
}

uint64_t sub_251B80830()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A22A0);
  __swift_project_value_buffer(v0, qword_27F4A22A0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_251C7C1E0;
  v5 = v35 + v4;
  v6 = v35 + v4 + *(v2 + 56);
  *(v35 + v4) = 1;
  *v6 = "valueType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v35 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "stringValue";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v35 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "codedQuantityRawValue";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v35 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "ratioValue";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v35 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "medicalDateString";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v35 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "medicalDateIntervalString";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v35 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "dateFromDateComponents";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  v21 = (v35 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "medicalCodingsDisplayStrings";
  *(v22 + 1) = 28;
  v22[16] = 2;
  v9();
  v23 = v35 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 10;
  *v23 = "dataAbsentReasonCodingsDisplayStrings";
  *(v23 + 8) = 37;
  *(v23 + 16) = 2;
  v9();
  v24 = (v35 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 11;
  *v25 = "codedValueCollectionValues";
  *(v25 + 1) = 26;
  v25[16] = 2;
  v9();
  v26 = (v35 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 12;
  *v27 = "concept";
  *(v27 + 1) = 7;
  v27[16] = 2;
  v9();
  v28 = (v35 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 13;
  *v29 = "dataAbsentReasonConcept";
  *(v29 + 1) = 23;
  v29[16] = 2;
  v9();
  v30 = (v35 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 14;
  *v31 = "unitString";
  *(v31 + 1) = 10;
  v31[16] = 2;
  v9();
  v32 = (v35 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 15;
  *v33 = "codedQuantity";
  *(v33 + 1) = 13;
  v33[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B80D30(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_251B80D84()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;
  v2 = type metadata accessor for PBHKRatioValue(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
  v5 = type metadata accessor for PBDateRange(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings) = v7;
  *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues) = v7;
  v8 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept;
  v9 = type metadata accessor for PBHKConcept(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v0 + v8, 1, 1, v9);
  v10(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept, 1, 1, v9);
  v11 = (v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
  v13 = type metadata accessor for PBHKCodedQuantity(0);
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  return v0;
}

uint64_t sub_251B80F70(uint64_t a1)
{
  v86 = type metadata accessor for PBHKCodedQuantity;
  v3 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5640, type metadata accessor for PBHKCodedQuantity, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = type metadata accessor for PBHKConcept;
  v85 = &v70 - v5;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, v3);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v70 - v7;
  v79 = type metadata accessor for PBDateRange;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = &v70 - v9;
  v73 = type metadata accessor for PBHKRatioValue;
  sub_251B67AAC(0, qword_2813E64E0, type metadata accessor for PBHKRatioValue, v3);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v70 - v11;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v70 = (v1 + 48);
  *(v1 + 56) = 0xE000000000000000;
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;
  v71 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;
  v13 = type metadata accessor for PBHKRatioValue(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
  v74 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
  v16 = type metadata accessor for PBDateRange(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
  v75 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v76 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings;
  v18 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings) = MEMORY[0x277D84F90];
  v78 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings;
  *(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings) = v18;
  v80 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues;
  *(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues) = v18;
  v19 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept;
  v20 = type metadata accessor for PBHKConcept(0);
  v21 = *(*(v20 - 8) + 56);
  v21(v1 + v19, 1, 1, v20);
  v81 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept;
  v21(v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept, 1, 1, v20);
  v22 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
  v82 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
  v24 = type metadata accessor for PBHKCodedQuantity(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  swift_beginAccess();
  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v25;
  *(v1 + 24) = v26;
  swift_beginAccess();
  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v27;
  *(v1 + 40) = v28;
  swift_beginAccess();
  v30 = *(a1 + 48);
  v29 = *(a1 + 56);
  v31 = v70;
  swift_beginAccess();
  *v31 = v30;
  *(v1 + 56) = v29;
  v32 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;

  swift_beginAccess();
  v33 = a1 + v32;
  v35 = v72;
  v34 = v73;
  sub_251BB33C4(v33, v72, qword_2813E64E0, v73);
  v36 = v71;
  swift_beginAccess();
  sub_251BB3050(v35, v1 + v36, qword_2813E64E0, v34);
  swift_endAccess();
  v37 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  swift_beginAccess();
  *v14 = v39;
  v14[1] = v38;

  v40 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
  swift_beginAccess();
  v41 = v77;
  v42 = v79;
  sub_251BB33C4(a1 + v40, v77, qword_2813E6EE8, v79);
  v43 = v74;
  swift_beginAccess();
  sub_251BB3050(v41, v1 + v43, qword_2813E6EE8, v42);
  swift_endAccess();
  v44 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];
  v47 = v75;
  swift_beginAccess();
  *v47 = v46;
  v47[1] = v45;

  v48 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings;
  swift_beginAccess();
  v49 = *(a1 + v48);
  v50 = v76;
  swift_beginAccess();
  *(v1 + v50) = v49;

  v51 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings;
  swift_beginAccess();
  v52 = *(a1 + v51);
  v53 = v78;
  swift_beginAccess();
  *(v1 + v53) = v52;

  v54 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues;
  swift_beginAccess();
  v55 = *(a1 + v54);
  v56 = v80;
  swift_beginAccess();
  *(v1 + v56) = v55;

  v57 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept;
  swift_beginAccess();
  v58 = v83;
  v59 = v84;
  sub_251BB33C4(a1 + v57, v83, qword_2813E6D28, v84);
  swift_beginAccess();
  sub_251BB3050(v58, v1 + v19, qword_2813E6D28, v59);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept;
  swift_beginAccess();
  sub_251BB33C4(a1 + v60, v58, qword_2813E6D28, v59);
  v61 = v81;
  swift_beginAccess();
  sub_251BB3050(v58, v1 + v61, qword_2813E6D28, v59);
  swift_endAccess();
  v62 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString);
  swift_beginAccess();
  v64 = *v62;
  v63 = v62[1];
  swift_beginAccess();
  *v22 = v64;
  v22[1] = v63;

  v65 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
  swift_beginAccess();
  v67 = v85;
  v66 = v86;
  sub_251BB33C4(a1 + v65, v85, qword_2813E5640, v86);

  v68 = v82;
  swift_beginAccess();
  sub_251BB3050(v67, v1 + v68, qword_2813E5640, v66);
  swift_endAccess();
  return v1;
}

uint64_t sub_251B81838()
{

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue, qword_2813E64E0, type metadata accessor for PBHKRatioValue);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString, qword_2813E6EE8, type metadata accessor for PBDateRange);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept, qword_2813E6D28, type metadata accessor for PBHKConcept);

  sub_251BB3444(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  return v0;
}

uint64_t sub_251B819C4(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_251B81A44(uint64_t a1)
{
  sub_251B67AAC(319, qword_2813E64E0, type metadata accessor for PBHKRatioValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_251B67AAC(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_251B67AAC(319, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_251B67AAC(319, qword_2813E5640, type metadata accessor for PBHKCodedQuantity, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_251B81CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_251B81DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_251B81FF4(a2, a1, a3, a4);
          break;
        case 2:
          sub_251AB6E48(a2, a1, a3, a4);
          break;
        case 3:
          sub_251AB6ECC(a2, a1, a3, a4);
          break;
        case 4:
          sub_251B82088(a2, a1, a3, a4);
          break;
        case 5:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString;
          goto LABEL_5;
        case 6:
          sub_251B82164(a2, a1, a3, a4);
          break;
        case 7:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents;
          goto LABEL_5;
        case 8:
          sub_251B82240(a2, a1, a3, a4, &OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings);
          break;
        case 10:
          sub_251B82240(a2, a1, a3, a4, &OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings);
          break;
        case 11:
          sub_251B822C8(a2, a1, a3, a4);
          break;
        case 12:
          sub_251B823A4(a2, a1, a3, a4);
          break;
        case 13:
          sub_251B82480(a2, a1, a3, a4);
          break;
        case 14:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString;
LABEL_5:
          sub_251B8255C(v11, v12, v13, v14, v15);
          break;
        case 15:
          sub_251B825E4(a2, a1, a3, a4);
          break;
        default:
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B81FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_251BB2FFC();
  sub_251C70494();
  return swift_endAccess();
}

uint64_t sub_251B82088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKRatioValue(0);
  sub_251B9ED44(&qword_27F47B1B0, type metadata accessor for PBHKRatioValue, &unk_251C804AC);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B82164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBDateRange(0);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B82240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_251C70504();
  return swift_endAccess();
}

uint64_t sub_251B822C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKCodedValue(0);
  sub_251B9ED44(&qword_27F47B150, type metadata accessor for PBHKCodedValue, &unk_251C80074);
  sub_251C70554();
  return swift_endAccess();
}

uint64_t sub_251B823A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B82480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B8255C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251B825E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for PBHKCodedQuantity(0);
  sub_251B9ED44(&qword_27F47B130, type metadata accessor for PBHKCodedQuantity, &unk_251C7FF0C);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251B826C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!a1[2] || (sub_251BB2FFC(), result = sub_251C70604(), !v4))
  {
    swift_beginAccess();
    v10 = a1[5];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = a1[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {

      sub_251C70674();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    v12 = a1[7];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = a1[6] & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_251C70674();
      if (v4)
      {
      }
    }

    result = sub_251B82B64(a1, a2, a3, a4);
    if (!v4)
    {
      v14 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString);
      swift_beginAccess();
      v15 = *v14;
      v16 = v14[1];
      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {

        sub_251C70674();
      }

      sub_251B82DBC(a1, a2, a3, a4);
      v18 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
      swift_beginAccess();
      v19 = *v18;
      v20 = v18[1];
      v21 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v21 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {

        sub_251C70674();
      }

      v22 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings;
      swift_beginAccess();
      if (*(*(a1 + v22) + 16))
      {

        sub_251C70654();
      }

      v23 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings;
      swift_beginAccess();
      if (*(*(a1 + v23) + 16))
      {

        sub_251C70654();
      }

      v24 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues;
      swift_beginAccess();
      if (*(*(a1 + v24) + 16))
      {
        type metadata accessor for PBHKCodedValue(0);
        sub_251B9ED44(&qword_27F47B150, type metadata accessor for PBHKCodedValue, &unk_251C80074);

        sub_251C70694();
      }

      sub_251B83014(a1, a2, a3, a4);
      sub_251B8326C(a1, a2, a3, a4);
      v25 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString);
      swift_beginAccess();
      v26 = *v25;
      v27 = v25[1];
      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {

        sub_251C70674();
      }

      return sub_251B834C4(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_251B82B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_251B67AAC(0, qword_2813E64E0, type metadata accessor for PBHKRatioValue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKRatioValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;
  swift_beginAccess();
  sub_251BB33C4(a1 + v12, v7, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKRatioValue);
  sub_251B9ED44(&qword_27F47B1B0, type metadata accessor for PBHKRatioValue, &unk_251C804AC);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKRatioValue);
}

uint64_t sub_251B82DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
  swift_beginAccess();
  sub_251BB33C4(a1 + v12, v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBDateRange);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBDateRange);
}

uint64_t sub_251B83014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept;
  swift_beginAccess();
  sub_251BB33C4(a1 + v12, v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B8326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept;
  swift_beginAccess();
  sub_251BB33C4(a1 + v12, v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B834C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  sub_251B67AAC(0, qword_2813E5640, type metadata accessor for PBHKCodedQuantity, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKCodedQuantity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
  swift_beginAccess();
  sub_251BB33C4(a1 + v12, v7, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKCodedQuantity);
  sub_251B9ED44(&qword_27F47B130, type metadata accessor for PBHKCodedQuantity, &unk_251C7FF0C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKCodedQuantity);
}

BOOL sub_251B83760(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PBHKCodedQuantity(0);
  v152 = *(v4 - 8);
  v153 = v4;
  MEMORY[0x28223BE20](v4);
  v148 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BB34B4(0, &qword_27F47B590, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  v151 = v6;
  MEMORY[0x28223BE20](v6);
  v154 = &v146 - v7;
  v8 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5640, type metadata accessor for PBHKCodedQuantity, MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v149 = (&v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v156 = &v146 - v12;
  v162 = type metadata accessor for PBHKConcept(0);
  v164 = *(v162 - 8);
  v13 = MEMORY[0x28223BE20](v162);
  v150 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v158 = &v146 - v15;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v161 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v157 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v160 = &v146 - v19;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, v8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v155 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v159 = &v146 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v172 = &v146 - v26;
  MEMORY[0x28223BE20](v25);
  v163 = &v146 - v27;
  v28 = type metadata accessor for PBDateRange(0);
  v167 = *(v28 - 8);
  v168 = v28;
  MEMORY[0x28223BE20](v28);
  v165 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BB34B4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v166 = v30;
  MEMORY[0x28223BE20](v30);
  v169 = &v146 - v31;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, v8);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v35 = (&v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v171 = &v146 - v36;
  v37 = type metadata accessor for PBHKRatioValue(0);
  v173 = *(v37 - 8);
  v174 = v37;
  MEMORY[0x28223BE20](v37);
  v170 = (&v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BB34B4(0, &qword_27F47B598, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  v40 = v39;
  MEMORY[0x28223BE20](v39);
  v42 = &v146 - v41;
  sub_251B67AAC(0, qword_2813E64E0, type metadata accessor for PBHKRatioValue, v8);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v46 = &v146 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = &v146 - v47;
  swift_beginAccess();
  v49 = a1[2];
  swift_beginAccess();
  v50 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v50)
    {
      case 1:
        if (v49 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v49 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v49 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v49 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v49 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v49 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v49 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v49 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v49 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v49 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      case 11:
        if (v49 != 11)
        {
          return 0;
        }

        goto LABEL_6;
      case 12:
        if (v49 != 12)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v49)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v49 != v50)
  {
    return 0;
  }

LABEL_6:
  swift_beginAccess();
  v52 = a1[4];
  v51 = a1[5];
  swift_beginAccess();
  if ((v52 != *(a2 + 32) || v51 != *(a2 + 40)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v53 = a1[6];
  v54 = a1[7];
  swift_beginAccess();
  if ((v53 != *(a2 + 48) || v54 != *(a2 + 56)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v146 = v35;
  v147 = v46;
  v55 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;
  swift_beginAccess();
  sub_251BB33C4(a1 + v55, v48, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  v56 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;
  swift_beginAccess();
  v57 = *(v40 + 48);
  sub_251BB33C4(v48, v42, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  sub_251BB33C4(a2 + v56, &v42[v57], qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  v58 = v174;
  v59 = *(v173 + 48);
  if (v59(v42, 1, v174) == 1)
  {

    sub_251BB3444(v48, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
    v60 = v59(&v42[v57], 1, v58);
    v61 = v172;
    if (v60 == 1)
    {
      sub_251BB3444(v42, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  v62 = v147;
  sub_251BB33C4(v42, v147, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  if (v59(&v42[v57], 1, v58) == 1)
  {

    sub_251BB3444(v48, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
    sub_251BB2308(v62, type metadata accessor for PBHKRatioValue);
LABEL_17:
    sub_251BB242C(v42, &qword_27F47B598, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
    goto LABEL_18;
  }

  v64 = v170;
  sub_251BB23C4(&v42[v57], v170, type metadata accessor for PBHKRatioValue);
  if ((*v62 != *v64 || v62[1] != v64[1]) && (sub_251C719D4() & 1) == 0 || (v147[2] != v64[2] || v147[3] != v64[3]) && (sub_251C719D4() & 1) == 0)
  {

    sub_251BB3444(v48, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
    sub_251BB2308(v64, type metadata accessor for PBHKRatioValue);
    sub_251BB2308(v147, type metadata accessor for PBHKRatioValue);
    sub_251BB3444(v42, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
    goto LABEL_18;
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);

  v174 = a2;
  v65 = v147;
  v66 = sub_251C70ED4();
  sub_251BB3444(v48, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  sub_251BB2308(v64, type metadata accessor for PBHKRatioValue);
  v67 = v65;
  a2 = v174;
  sub_251BB2308(v67, type metadata accessor for PBHKRatioValue);
  sub_251BB3444(v42, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
  v61 = v172;
  if ((v66 & 1) == 0)
  {
LABEL_18:

    return 0;
  }

LABEL_27:
  v68 = a1;
  v69 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString);
  swift_beginAccess();
  v70 = *v69;
  v71 = v69[1];
  v72 = (a2 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString);
  swift_beginAccess();
  if ((v70 != *v72 || v71 != v72[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_18;
  }

  v73 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
  swift_beginAccess();
  v74 = v171;
  sub_251BB33C4(a1 + v73, v171, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v75 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
  swift_beginAccess();
  v76 = *(v166 + 48);
  v77 = v169;
  sub_251BB33C4(v74, v169, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BB33C4(a2 + v75, v77 + v76, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v78 = v168;
  v79 = *(v167 + 48);
  if (v79(v77, 1, v168) == 1)
  {
    sub_251BB3444(v74, qword_2813E6EE8, type metadata accessor for PBDateRange);
    if (v79(v77 + v76, 1, v78) == 1)
    {
      sub_251BB3444(v77, qword_2813E6EE8, type metadata accessor for PBDateRange);
      goto LABEL_63;
    }

LABEL_59:
    v81 = &qword_27F4790D0;
    v82 = qword_2813E6EE8;
    v83 = type metadata accessor for PBDateRange;
    v84 = v77;
LABEL_60:
    sub_251BB242C(v84, v81, v82, v83);
    goto LABEL_18;
  }

  v80 = v146;
  sub_251BB33C4(v77, v146, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if (v79(v77 + v76, 1, v78) == 1)
  {
    sub_251BB3444(v171, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251BB2308(v80, type metadata accessor for PBDateRange);
    goto LABEL_59;
  }

  v85 = v77 + v76;
  v86 = v165;
  sub_251BB23C4(v85, v165, type metadata accessor for PBDateRange);
  v87 = sub_251BB2194(v80, v86);
  sub_251BB2308(v86, type metadata accessor for PBDateRange);
  sub_251BB3444(v171, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BB2308(v80, type metadata accessor for PBDateRange);
  sub_251BB3444(v77, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((v87 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_63:
  v88 = (v68 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
  swift_beginAccess();
  v89 = *v88;
  v90 = v88[1];
  v91 = (a2 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
  swift_beginAccess();
  if ((v89 != *v91 || v90 != v91[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_18;
  }

  v92 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings;
  swift_beginAccess();
  v93 = *(v68 + v92);
  v94 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings;
  swift_beginAccess();
  if ((sub_251A93C70(v93, *(a2 + v94)) & 1) == 0)
  {
    goto LABEL_18;
  }

  v95 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings;
  swift_beginAccess();
  v96 = *(v68 + v95);
  v97 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings;
  swift_beginAccess();
  if ((sub_251A93C70(v96, *(a2 + v97)) & 1) == 0)
  {
    goto LABEL_18;
  }

  v98 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues;
  swift_beginAccess();
  v99 = *(v68 + v98);
  v100 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues;
  swift_beginAccess();
  v101 = *(a2 + v100);

  v102 = sub_251A9CB84(v99, v101);

  if ((v102 & 1) == 0)
  {
    goto LABEL_18;
  }

  v103 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept;
  swift_beginAccess();
  v104 = v163;
  sub_251BB33C4(v68 + v103, v163, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v105 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept;
  swift_beginAccess();
  v106 = v160;
  v107 = *(v161 + 48);
  sub_251BB33C4(v104, v160, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(a2 + v105, v106 + v107, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v109 = v164 + 48;
  v108 = *(v164 + 48);
  v110 = v162;
  if (v108(v106, 1, v162) == 1)
  {
    sub_251BB3444(v104, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v108(v106 + v107, 1, v110) == 1)
    {
      v164 = v109;
      sub_251BB3444(v106, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_79;
    }

    goto LABEL_75;
  }

  sub_251BB33C4(v106, v61, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v108(v106 + v107, 1, v110) == 1)
  {
    sub_251BB3444(v163, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251BB2308(v61, type metadata accessor for PBHKConcept);
LABEL_75:
    v81 = &qword_27F4790E8;
    v82 = qword_2813E6D28;
    v83 = type metadata accessor for PBHKConcept;
    v84 = v106;
    goto LABEL_60;
  }

  v164 = v109;
  v111 = v158;
  sub_251BB23C4(v106 + v107, v158, type metadata accessor for PBHKConcept);
  v112 = *(v110 + 20);
  v113 = *(v61 + v112);
  v114 = *(v111 + v112);
  if (v113 != v114)
  {

    v115 = sub_251B70648(v113, v114);

    if ((v115 & 1) == 0)
    {
      sub_251BB2308(v158, type metadata accessor for PBHKConcept);
      sub_251BB3444(v163, qword_2813E6D28, type metadata accessor for PBHKConcept);
      sub_251BB2308(v61, type metadata accessor for PBHKConcept);
      v142 = v106;
LABEL_100:
      sub_251BB3444(v142, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_18;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v116 = v158;
  LODWORD(v174) = sub_251C70ED4();
  sub_251BB2308(v116, type metadata accessor for PBHKConcept);
  sub_251BB3444(v163, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB2308(v61, type metadata accessor for PBHKConcept);
  sub_251BB3444(v106, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v174 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_79:
  v117 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept;
  swift_beginAccess();
  v118 = v159;
  sub_251BB33C4(v68 + v117, v159, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v119 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept;
  swift_beginAccess();
  v120 = *(v161 + 48);
  v121 = v157;
  sub_251BB33C4(v118, v157, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(a2 + v119, v121 + v120, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v122 = v162;
  if (v108(v121, 1, v162) == 1)
  {
    sub_251BB3444(v118, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v108(v121 + v120, 1, v122) == 1)
    {
      sub_251BB3444(v121, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_88;
    }

    goto LABEL_84;
  }

  v123 = v155;
  sub_251BB33C4(v121, v155, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v108(v121 + v120, 1, v122) == 1)
  {
    sub_251BB3444(v159, qword_2813E6D28, type metadata accessor for PBHKConcept);
    sub_251BB2308(v123, type metadata accessor for PBHKConcept);
LABEL_84:
    v81 = &qword_27F4790E8;
    v82 = qword_2813E6D28;
    v83 = type metadata accessor for PBHKConcept;
    v84 = v121;
    goto LABEL_60;
  }

  v124 = v150;
  sub_251BB23C4(v121 + v120, v150, type metadata accessor for PBHKConcept);
  v125 = *(v122 + 20);
  v126 = *(v123 + v125);
  v127 = *(v124 + v125);
  if (v126 != v127)
  {

    v128 = sub_251B70648(v126, v127);

    if ((v128 & 1) == 0)
    {
      sub_251BB2308(v124, type metadata accessor for PBHKConcept);
      sub_251BB3444(v159, qword_2813E6D28, type metadata accessor for PBHKConcept);
      sub_251BB2308(v123, type metadata accessor for PBHKConcept);
      v142 = v121;
      goto LABEL_100;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v129 = sub_251C70ED4();
  sub_251BB2308(v124, type metadata accessor for PBHKConcept);
  sub_251BB3444(v159, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB2308(v123, type metadata accessor for PBHKConcept);
  sub_251BB3444(v121, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v129 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_88:
  v130 = (v68 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString);
  swift_beginAccess();
  v131 = *v130;
  v132 = v130[1];
  v133 = (a2 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString);
  swift_beginAccess();
  if ((v131 != *v133 || v132 != v133[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_18;
  }

  v134 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
  swift_beginAccess();
  v135 = v156;
  sub_251BB33C4(v68 + v134, v156, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  v136 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
  swift_beginAccess();
  v137 = *(v151 + 48);
  v138 = v135;
  v139 = v154;
  sub_251BB33C4(v138, v154, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  sub_251BB33C4(a2 + v136, v139 + v137, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  v140 = v153;
  v141 = *(v152 + 48);
  if (v141(v139, 1, v153) != 1)
  {
    v143 = v149;
    sub_251BB33C4(v139, v149, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
    if (v141(v139 + v137, 1, v140) == 1)
    {

      sub_251BB3444(v156, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
      sub_251BB2308(v143, type metadata accessor for PBHKCodedQuantity);
      goto LABEL_98;
    }

    v144 = v148;
    sub_251BB23C4(v139 + v137, v148, type metadata accessor for PBHKCodedQuantity);
    v145 = sub_251BAC5AC(v143, v144);

    sub_251BB2308(v144, type metadata accessor for PBHKCodedQuantity);
    sub_251BB3444(v156, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
    sub_251BB2308(v143, type metadata accessor for PBHKCodedQuantity);
    sub_251BB3444(v139, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
    return (v145 & 1) != 0;
  }

  sub_251BB3444(v156, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  if (v141(v139 + v137, 1, v140) != 1)
  {
LABEL_98:
    sub_251BB242C(v139, &qword_27F47B590, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
    return 0;
  }

  sub_251BB3444(v139, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
  return 1;
}

uint64_t sub_251B8533C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B778, type metadata accessor for PBHKInspectableValue, &unk_251C801A4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B853DC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue, &unk_251C801DC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B85448(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue, &unk_251C801DC);

  return sub_251C705C4();
}

uint64_t sub_251B854C8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A22B8);
  __swift_project_value_buffer(v0, qword_27F4A22B8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "concept";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "value";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "referenceRanges";
  *(v12 + 8) = 15;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B856F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for PBHKReferenceRange(0);
          sub_251B9ED44(&qword_27F47B1D0, type metadata accessor for PBHKReferenceRange, &unk_251C80614);
          sub_251C70554();
          break;
        case 2:
          sub_251B858CC(a1, v5, a2, a3);
          break;
        case 1:
          sub_251B85818(a1, v5, a2, a3);
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B85818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKCodedValue(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B858CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKCodedValue(0);
  type metadata accessor for PBHKInspectableValue(0);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue, &unk_251C801DC);
  return sub_251C70564();
}

uint64_t sub_251B85980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B85A94(v3, a1, a2, a3);
  if (!v4)
  {
    sub_251B85CE0(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      type metadata accessor for PBHKReferenceRange(0);
      sub_251B9ED44(&qword_27F47B1D0, type metadata accessor for PBHKReferenceRange, &unk_251C80614);
      sub_251C70694();
    }

    type metadata accessor for PBHKCodedValue(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B85A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKCodedValue(0);
  sub_251BB33C4(a1 + *(v12 + 24), v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B85CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKInspectableValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKCodedValue(0);
  sub_251BB33C4(a1 + *(v12 + 28), v7, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKInspectableValue);
  sub_251B9ED44(&qword_27F47B170, type metadata accessor for PBHKInspectableValue, &unk_251C801DC);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKInspectableValue);
}

uint64_t sub_251B85F30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  sub_251C703A4();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PBHKConcept(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for PBHKInspectableValue(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_251B86054(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B788, type metadata accessor for PBHKCodedValue, &unk_251C8003C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B860F4(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B150, type metadata accessor for PBHKCodedValue, &unk_251C80074);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B86160(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B150, type metadata accessor for PBHKCodedValue, &unk_251C80074);

  return sub_251C705C4();
}

uint64_t sub_251B861DC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A22D0);
  __swift_project_value_buffer(v0, qword_27F4A22D0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C7C1F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "rawValue";
  *(v7 + 8) = 8;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "localizedValue";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "doubleValue";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "comparatorDisplayString";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "unitDisplayString";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "codedQuantityDisplayString";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B864C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5 || result == 6)
      {
LABEL_2:
        sub_251C70534();
      }
    }

    else
    {
      if (result == 1 || result == 2)
      {
        goto LABEL_2;
      }

      if (result == 3)
      {
        sub_251C704E4();
      }
    }
  }
}

uint64_t sub_251B86598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_251C70674(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_251C70674(), !v4))
    {
      if (!*(v3 + 32) || (result = sub_251C70634(), !v4))
      {
        v10 = *(v3 + 48);
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = *(v3 + 40) & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = sub_251C70674(), !v4))
        {
          v12 = *(v3 + 64);
          v13 = HIBYTE(v12) & 0xF;
          if ((v12 & 0x2000000000000000) == 0)
          {
            v13 = *(v3 + 56) & 0xFFFFFFFFFFFFLL;
          }

          if (!v13 || (result = sub_251C70674(), !v4))
          {
            v14 = *(v3 + 80);
            v15 = HIBYTE(v14) & 0xF;
            if ((v14 & 0x2000000000000000) == 0)
            {
              v15 = *(v3 + 72) & 0xFFFFFFFFFFFFLL;
            }

            if (!v15 || (result = sub_251C70674(), !v4))
            {
              type metadata accessor for PBHKCodedQuantity(0);
              return sub_251C70394();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B86710@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xE000000000000000;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  return sub_251C703A4();
}

uint64_t sub_251B86768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251B867DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251B868A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B790, type metadata accessor for PBHKCodedQuantity, &unk_251C7FED4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B86944(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B130, type metadata accessor for PBHKCodedQuantity, &unk_251C7FF0C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B869B0(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B130, type metadata accessor for PBHKCodedQuantity, &unk_251C7FF0C);

  return sub_251C705C4();
}

uint64_t sub_251B86A30()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A22E8);
  __swift_project_value_buffer(v0, qword_27F4A22E8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251C75420;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 1;
  *v5 = "diagnostic_test";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 2;
  *v9 = "effective_end_date";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 3;
  *v11 = "effective_start_date";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 4;
  *v13 = "issue_date";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "panel_name";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 6;
  *v17 = "results";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 7;
  *v19 = "status";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251B86D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1)
        {
          sub_251B86EE4(a1, v5, a2, a3);
        }

        else if (result == 2 || result == 3)
        {
LABEL_4:
          sub_251C70534();
        }
      }

      else
      {
        if (result <= 5)
        {
          goto LABEL_4;
        }

        if (result == 6)
        {
          type metadata accessor for PBFHIRIdentifier(0);
          sub_251B9ED44(&qword_27F47B370, type metadata accessor for PBFHIRIdentifier, &unk_251C81884);
          sub_251C70554();
        }

        else if (result == 7)
        {
          sub_251B86F98(a1, v5, a2, a3, type metadata accessor for PBHKDiagnosticTestReport);
        }
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B86EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBHKDiagnosticTestReport(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B86F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B87050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B87240(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = v3[1];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_251C70674();
    }

    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_251C70674();
    }

    v13 = v3[5];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v3[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_251C70674();
    }

    v15 = v3[7];
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v3[6] & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      sub_251C70674();
    }

    if (*(v3[8] + 16))
    {
      type metadata accessor for PBFHIRIdentifier(0);
      sub_251B9ED44(&qword_27F47B370, type metadata accessor for PBFHIRIdentifier, &unk_251C81884);
      sub_251C70694();
    }

    sub_251B8748C(v3, a1, a2, a3, type metadata accessor for PBHKDiagnosticTestReport, 7);
    type metadata accessor for PBHKDiagnosticTestReport(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B87240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKDiagnosticTestReport(0);
  sub_251BB33C4(a1 + *(v12 + 40), v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B8748C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v17[2] = a6;
  v17[3] = a3;
  v17[5] = a4;
  v17[1] = a2;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for PBHKConcept(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0);
  sub_251BB33C4(a1 + *(v15 + 44), v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_251BB3444(v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v10, v14, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v14, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B876E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0xE000000000000000;
  *(a2 + 8) = MEMORY[0x277D84F90];
  sub_251C703A4();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for PBHKConcept(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 44)];

  return v8(v6, 1, 1, v5);
}

uint64_t sub_251B8780C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B798, type metadata accessor for PBHKDiagnosticTestReport, &unk_251C7FD6C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B878AC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B110, type metadata accessor for PBHKDiagnosticTestReport, &unk_251C7FDA4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B87918(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B110, type metadata accessor for PBHKDiagnosticTestReport, &unk_251C7FDA4);

  return sub_251C705C4();
}

uint64_t sub_251B87998()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2300);
  __swift_project_value_buffer(v0, qword_27F4A2300);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "birth_date";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "name";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B87BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7A0, type metadata accessor for PBHKAccountOwner, &unk_251C7FC04);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B87C68(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B0F0, type metadata accessor for PBHKAccountOwner, &unk_251C7FC3C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B87CD4(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B0F0, type metadata accessor for PBHKAccountOwner, &unk_251C7FC3C);

  return sub_251C705C4();
}

uint64_t sub_251B87D50()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2318);
  __swift_project_value_buffer(v0, qword_27F4A2318);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_251C78760;
  v5 = v33 + v4;
  v6 = v33 + v4 + *(v2 + 56);
  *(v33 + v4) = 1;
  *v6 = "body_sites";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "category";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "complications";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "execution_end_date";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "execution_start_date";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "follow_ups";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "not_performed";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "outcome";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "performers";
  *(v23 + 8) = 10;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "procedure";
  *(v25 + 1) = 9;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "reason";
  *(v27 + 1) = 6;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 12;
  *v29 = "reasons_not_performed";
  *(v29 + 1) = 21;
  v29[16] = 2;
  v9();
  v30 = (v5 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 13;
  *v31 = "status";
  *(v31 + 1) = 6;
  v31[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B88208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 3:
        case 6:
        case 12:
          type metadata accessor for PBHKConcept(0);
          sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
          sub_251C70554();
          break;
        case 2:
          sub_251B8852C(a1, v5, a2, a3, type metadata accessor for PBHKProcedureRecord);
          break;
        case 4:
        case 5:
          sub_251C70534();
          break;
        case 7:
          sub_251C70474();
          break;
        case 8:
          sub_251B885E4(a1, v5, a2, a3, type metadata accessor for PBHKProcedureRecord);
          break;
        case 9:
          sub_251C70504();
          break;
        case 10:
          sub_251B8869C(a1, v5, a2, a3, type metadata accessor for PBHKProcedureRecord);
          break;
        case 11:
          sub_251B88754(a1, v5, a2, a3, type metadata accessor for PBHKProcedureRecord);
          break;
        case 13:
          sub_251B8880C(a1, v5, a2, a3, type metadata accessor for PBHKProcedureRecord);
          break;
        default:
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B8852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B885E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B8869C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B88754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B8880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for PBHKConcept(0);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  return sub_251C70564();
}

uint64_t sub_251B888C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBHKConcept(0), sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C), result = sub_251C70694(), !v4))
  {
    result = sub_251B88CB4(v3, a1, a2, a3, type metadata accessor for PBHKProcedureRecord, 2);
    if (!v4)
    {
      if (*(*(v3 + 8) + 16))
      {
        type metadata accessor for PBHKConcept(0);
        sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
        sub_251C70694();
      }

      v9 = *(v3 + 24);
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        sub_251C70674();
      }

      v11 = *(v3 + 40);
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        sub_251C70674();
      }

      if (*(*(v3 + 48) + 16))
      {
        type metadata accessor for PBHKConcept(0);
        sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
        sub_251C70694();
      }

      if (*(v3 + 56) == 1)
      {
        sub_251C705F4();
      }

      sub_251B88F08(v3, a1, a2, a3, type metadata accessor for PBHKProcedureRecord, 8);
      if (*(*(v3 + 64) + 16))
      {
        sub_251C70654();
      }

      sub_251B8915C(v3, a1, a2, a3, type metadata accessor for PBHKProcedureRecord, 10);
      sub_251B893B0(v3, a1, a2, a3, type metadata accessor for PBHKProcedureRecord, 11);
      if (*(*(v3 + 72) + 16))
      {
        type metadata accessor for PBHKConcept(0);
        sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
        sub_251C70694();
      }

      sub_251B89604(v3, a1, a2, a3, type metadata accessor for PBHKProcedureRecord);
      type metadata accessor for PBHKProcedureRecord(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B88CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v17[2] = a6;
  v17[3] = a3;
  v17[5] = a4;
  v17[1] = a2;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for PBHKConcept(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0);
  sub_251BB33C4(a1 + *(v15 + 52), v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_251BB3444(v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v10, v14, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v14, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B88F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v17[2] = a6;
  v17[3] = a3;
  v17[5] = a4;
  v17[1] = a2;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for PBHKConcept(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0);
  sub_251BB33C4(a1 + *(v15 + 56), v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_251BB3444(v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v10, v14, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v14, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B8915C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v17[2] = a6;
  v17[3] = a3;
  v17[5] = a4;
  v17[1] = a2;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for PBHKConcept(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0);
  sub_251BB33C4(a1 + *(v15 + 60), v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_251BB3444(v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v10, v14, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v14, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B893B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v17[2] = a6;
  v17[3] = a3;
  v17[5] = a4;
  v17[1] = a2;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for PBHKConcept(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0);
  sub_251BB33C4(a1 + *(v15 + 64), v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_251BB3444(v10, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v10, v14, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v14, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B89604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[3] = a4;
  v16[0] = a2;
  v16[1] = a3;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for PBHKConcept(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(0);
  sub_251BB33C4(a1 + *(v14 + 68), v9, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_251BB3444(v9, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  sub_251BB23C4(v9, v13, type metadata accessor for PBHKConcept);
  sub_251B9ED44(&qword_27F47B350, type metadata accessor for PBHKConcept, &unk_251C8171C);
  sub_251C706A4();
  return sub_251BB2308(v13, type metadata accessor for PBHKConcept);
}

uint64_t sub_251B89854@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
  *(a2 + 64) = v4;
  *(a2 + 72) = v4;
  sub_251C703A4();
  v5 = a1[13];
  v6 = type metadata accessor for PBHKConcept(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v9(a2 + a1[14], 1, 1, v6);
  v9(a2 + a1[15], 1, 1, v6);
  v9(a2 + a1[16], 1, 1, v6);
  v7 = a2 + a1[17];

  return (v9)(v7, 1, 1, v6);
}

uint64_t sub_251B899F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7A8, type metadata accessor for PBHKProcedureRecord, &unk_251C7FA9C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B89A90(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B0D0, type metadata accessor for PBHKProcedureRecord, &unk_251C7FAD4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B89AFC(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B0D0, type metadata accessor for PBHKProcedureRecord, &unk_251C7FAD4);

  return sub_251C705C4();
}

uint64_t sub_251B89B7C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2330);
  __swift_project_value_buffer(v0, qword_27F4A2330);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C7C1F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "cycles";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "typical_cycle_length_days";
  *(v11 + 8) = 25;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "typical_cycle_length_range";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "typical_period_length_days";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "typical_period_length_range";
  *(v17 + 1) = 27;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "last_menstrual_period_date";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B89E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            goto LABEL_16;
          case 5:
            sub_251B8A09C(a1, v5, a2, a3);
            break;
          case 6:
            sub_251C70534();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for PBCycleTracking.Cycle(0);
            sub_251B9ED44(&qword_27F47B038, type metadata accessor for PBCycleTracking.Cycle, &unk_251C7F354);
            sub_251C70554();
            break;
          case 2:
LABEL_16:
            sub_251C704F4();
            break;
          case 3:
            sub_251B89FE8(a1, v5, a2, a3);
            break;
        }
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B89FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBCycleTracking(0);
  type metadata accessor for PBCycleTracking.Range(0);
  sub_251B9ED44(&qword_27F47B098, type metadata accessor for PBCycleTracking.Range, &unk_251C7F78C);
  return sub_251C70564();
}

uint64_t sub_251B8A09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBCycleTracking(0);
  type metadata accessor for PBCycleTracking.Range(0);
  sub_251B9ED44(&qword_27F47B098, type metadata accessor for PBCycleTracking.Range, &unk_251C7F78C);
  return sub_251C70564();
}

uint64_t sub_251B8A150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBCycleTracking.Cycle(0), sub_251B9ED44(&qword_27F47B038, type metadata accessor for PBCycleTracking.Cycle, &unk_251C7F354), result = sub_251C70694(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_251C70644(), !v4))
    {
      result = sub_251B8A2D8(v3, a1, a2, a3);
      if (!v4)
      {
        if (*(v3 + 12))
        {
          sub_251C70644();
        }

        sub_251B8A524(v3, a1, a2, a3);
        v9 = *(v3 + 24);
        v10 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v10 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
        }

        if (v10)
        {
          sub_251C70674();
        }

        type metadata accessor for PBCycleTracking(0);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B8A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6108, type metadata accessor for PBCycleTracking.Range, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBCycleTracking.Range(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBCycleTracking(0);
  sub_251BB33C4(a1 + *(v12 + 36), v7, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBCycleTracking.Range);
  sub_251B9ED44(&qword_27F47B098, type metadata accessor for PBCycleTracking.Range, &unk_251C7F78C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBCycleTracking.Range);
}

uint64_t sub_251B8A524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E6108, type metadata accessor for PBCycleTracking.Range, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBCycleTracking.Range(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBCycleTracking(0);
  sub_251BB33C4(a1 + *(v12 + 40), v7, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBCycleTracking.Range);
  sub_251B9ED44(&qword_27F47B098, type metadata accessor for PBCycleTracking.Range, &unk_251C7F78C);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBCycleTracking.Range);
}

uint64_t sub_251B8A770@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_251C703A4();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for PBCycleTracking.Range(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 40)];

  return v8(v6, 1, 1, v5);
}

uint64_t sub_251B8A890(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7B0, type metadata accessor for PBCycleTracking, &unk_251C7F934);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8A930(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FE0, type metadata accessor for PBCycleTracking, &unk_251C7F96C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8A99C(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F478FE0, type metadata accessor for PBCycleTracking, &unk_251C7F96C);

  return sub_251C705C4();
}

uint64_t sub_251B8AA1C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2348);
  __swift_project_value_buffer(v0, qword_27F4A2348);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C7C1F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "FLOW_NOT_ENTERED";
  *(v7 + 8) = 16;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "NO_FLOW";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "UNSPECIFIED";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "LIGHT_FLOW";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 4;
  *v17 = "MEDIUM_FLOW";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 5;
  *v19 = "HEAVY_FLOW";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B8AD20()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2360);
  __swift_project_value_buffer(v0, qword_27F4A2360);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "OVULATION_NOT_ENTERED";
  *(v7 + 8) = 21;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "INDETERMINATE";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "NEGATIVE";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "ESTROGEN_SURGE";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 4;
  *v16 = "LUTENIZING_HORMONE_SURGE";
  *(v16 + 8) = 24;
  *(v16 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B8AFEC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2378);
  __swift_project_value_buffer(v0, qword_27F4A2378);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_251C7C1F0;
  v5 = v20 + v4;
  v6 = v20 + v4 + *(v2 + 56);
  *(v20 + v4) = 0;
  *v6 = "MUCUS_NOT_ENTERED";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "DRY";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "STICKY";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "CREAMY";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "WATERY";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "EGG_WHITE";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B8B308()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A23A0);
  __swift_project_value_buffer(v0, qword_27F4A23A0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "min";
  *(v7 + 8) = 3;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "max";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B8B4E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*v4 || (result = sub_251C70644(), !v5))
  {
    if (!v4[1] || (result = sub_251C70644(), !v5))
    {
      (a4)(0, a2, a3);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251B8B5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7B8, type metadata accessor for PBCycleTracking.Range, &unk_251C7F754);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8B690(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B098, type metadata accessor for PBCycleTracking.Range, &unk_251C7F78C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8B6FC(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B098, type metadata accessor for PBCycleTracking.Range, &unk_251C7F78C);

  return sub_251C705C4();
}

uint64_t sub_251B8B7A8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A23C8);
  __swift_project_value_buffer(v0, qword_27F4A23C8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "had_sex";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "protection_used";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B8B9DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7C0, type metadata accessor for PBCycleTracking.SexualActivity, &unk_251C7F5EC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8BA7C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B078, type metadata accessor for PBCycleTracking.SexualActivity, &unk_251C7F624);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8BAE8(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B078, type metadata accessor for PBCycleTracking.SexualActivity, &unk_251C7F624);

  return sub_251C705C4();
}

uint64_t sub_251B8BB84()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A23F0);
  __swift_project_value_buffer(v0, qword_27F4A23F0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_251C78260;
  v5 = v24 + v4;
  v6 = v24 + v4 + *(v2 + 56);
  *(v24 + v4) = 1;
  *v6 = "date";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "flow";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "sexualActivity";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "cervicalMucusQuality";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "basalBodyTemperature";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "hadSpotting";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "symptoms";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "enum_symptoms";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B8BEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            sub_251C70504();
          }

          else if (result == 8)
          {
            sub_251BB3178();
            sub_251C70464();
          }
        }

        else if (result == 5)
        {
          sub_251C704E4();
        }

        else
        {
          sub_251C70474();
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          v11 = v4;
          sub_251BB3124();
          goto LABEL_17;
        }

        sub_251B8C0A4(a1, v5, a2, a3);
      }

      else
      {
        if (result == 1)
        {
          sub_251C70534();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v11 = v4;
          sub_251BB30D0();
LABEL_17:
          v4 = v11;
          sub_251C70494();
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B8C0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBCycleTracking.Event(0);
  type metadata accessor for PBCycleTracking.SexualActivity(0);
  sub_251B9ED44(&qword_27F47B078, type metadata accessor for PBCycleTracking.SexualActivity, &unk_251C7F624);
  return sub_251C70564();
}

uint64_t sub_251B8C158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    if (!*(v3 + 16) || (sub_251BB30D0(), result = sub_251C70604(), !v4))
    {
      result = sub_251B8C350(v3, a1, a2, a3);
      if (!v4)
      {
        if (*(v3 + 32))
        {
          sub_251BB3124();
          sub_251C70604();
        }

        if (*(v3 + 44))
        {
          sub_251C70634();
        }

        if (*(v3 + 48) == 1)
        {
          sub_251C705F4();
        }

        if (*(*(v3 + 56) + 16))
        {
          sub_251C70654();
        }

        if (*(*(v3 + 64) + 16))
        {
          sub_251BB3178();
          sub_251C705D4();
        }

        type metadata accessor for PBCycleTracking.Event(0);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251B8C350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  sub_251B67AAC(0, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBCycleTracking.SexualActivity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBCycleTracking.Event(0);
  sub_251BB33C4(a1 + *(v12 + 48), v7, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BB3444(v7, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
  }

  sub_251BB23C4(v7, v11, type metadata accessor for PBCycleTracking.SexualActivity);
  sub_251B9ED44(&qword_27F47B078, type metadata accessor for PBCycleTracking.SexualActivity, &unk_251C7F624);
  sub_251C706A4();
  return sub_251BB2308(v11, type metadata accessor for PBCycleTracking.SexualActivity);
}

uint64_t sub_251B8C5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 44) = 0;
  *(a2 + 48) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 56) = MEMORY[0x277D84F90];
  *(a2 + 64) = v4;
  sub_251C703A4();
  v5 = *(a1 + 48);
  v6 = type metadata accessor for PBCycleTracking.SexualActivity(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_251B8C6A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7C8, type metadata accessor for PBCycleTracking.Event, &unk_251C7F484);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8C748(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B058, type metadata accessor for PBCycleTracking.Event, &unk_251C7F4BC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8C7B4(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B058, type metadata accessor for PBCycleTracking.Event, &unk_251C7F4BC);

  return sub_251C705C4();
}

uint64_t sub_251B8C854(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x25308CDA0](a2, a3);
  *a4 = 0xD000000000000028;
  *a5 = 0x8000000251C8E240;
  return result;
}

uint64_t sub_251B8C8C0()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2418);
  __swift_project_value_buffer(v0, qword_27F4A2418);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_251C747F0;
  v5 = v17 + v4;
  v6 = v17 + v4 + *(v2 + 56);
  *(v17 + v4) = 1;
  *v6 = "start";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "end";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "events";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "cycleLength";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v3 + *(v2 + 56);
  *(v5 + 4 * v3) = 5;
  *v15 = "periodLength";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B8CB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          sub_251C70534();
        }
      }

      else if (result == 3)
      {
        type metadata accessor for PBCycleTracking.Event(0);
        sub_251B9ED44(&qword_27F47B058, type metadata accessor for PBCycleTracking.Event, &unk_251C7F4BC);
        sub_251C70554();
      }

      else if (result == 4 || result == 5)
      {
        sub_251C704F4();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B8CCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_251C70674(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_251C70674(), !v4))
    {
      if (*(*(v3 + 32) + 16))
      {
        type metadata accessor for PBCycleTracking.Event(0);
        sub_251B9ED44(&qword_27F47B058, type metadata accessor for PBCycleTracking.Event, &unk_251C7F4BC);
        result = sub_251C70694();
        if (v4)
        {
          return result;
        }

        if (!*(v3 + 40))
        {
          goto LABEL_15;
        }
      }

      else if (!*(v3 + 40))
      {
LABEL_15:
        if (!*(v3 + 44) || (result = sub_251C70644(), !v4))
        {
          type metadata accessor for PBCycleTracking.Cycle(0);
          return sub_251C70394();
        }

        return result;
      }

      result = sub_251C70644();
      if (v4)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_251B8CE3C@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = MEMORY[0x277D84F90];
  a2[5] = 0;
  return sub_251C703A4();
}

uint64_t sub_251B8CECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7E8, type metadata accessor for PBCycleTracking.Cycle, &unk_251C7F31C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8CF6C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47B038, type metadata accessor for PBCycleTracking.Cycle, &unk_251C7F354);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8CFD8(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47B038, type metadata accessor for PBCycleTracking.Cycle, &unk_251C7F354);

  return sub_251C705C4();
}

uint64_t sub_251B8D078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PBECGMeasurement(0), sub_251B9ED44(&qword_27F478FE8, type metadata accessor for PBECGMeasurement, &unk_251C7EF1C), result = sub_251C70694(), !v4))
  {
    type metadata accessor for PBECGs(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B8D1EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7F0, type metadata accessor for PBECGs, &unk_251C7F1B4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8D28C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FD8, type metadata accessor for PBECGs, &unk_251C7F1EC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8D2F8(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F478FD8, type metadata accessor for PBECGs, &unk_251C7F1EC);

  return sub_251C705C4();
}

uint64_t sub_251B8D38C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2448);
  __swift_project_value_buffer(v0, qword_27F4A2448);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_251C7C1C0;
  v5 = v25 + v4;
  v6 = v25 + v4 + *(v2 + 56);
  *(v25 + v4) = 1;
  *v6 = "time";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "sampleRate";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "device";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "classification";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "lead";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "unit";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "symptoms";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "averageHeartRate";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "hk_classification";
  *(v23 + 8) = 17;
  *(v23 + 16) = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B8D730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2 || result == 1)
        {
LABEL_4:
          sub_251C70534();
          goto LABEL_5;
        }

        if (result == 2)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (result <= 6)
        {
          goto LABEL_4;
        }

        switch(result)
        {
          case 7:
            sub_251C70504();
            break;
          case 8:
LABEL_20:
            sub_251C704E4();
            break;
          case 9:
            sub_251BB31CC();
            sub_251C70494();
            break;
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B8D894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_251C70674(), !v4))
  {
    if (!*(v3 + 16) || (result = sub_251C70634(), !v4))
    {
      v8 = *(v3 + 32);
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_251C70674(), !v4))
      {
        v10 = *(v3 + 48);
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = *(v3 + 40) & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = sub_251C70674(), !v4))
        {
          v12 = *(v3 + 64);
          v13 = HIBYTE(v12) & 0xF;
          if ((v12 & 0x2000000000000000) == 0)
          {
            v13 = *(v3 + 56) & 0xFFFFFFFFFFFFLL;
          }

          if (!v13 || (result = sub_251C70674(), !v4))
          {
            v14 = *(v3 + 80);
            v15 = HIBYTE(v14) & 0xF;
            if ((v14 & 0x2000000000000000) == 0)
            {
              v15 = *(v3 + 72) & 0xFFFFFFFFFFFFLL;
            }

            if (!v15 || (result = sub_251C70674(), !v4))
            {
              if (!*(*(v3 + 88) + 16) || (result = sub_251C70654(), !v4))
              {
                if (!*(v3 + 96) || (result = sub_251C70634(), !v4))
                {
                  if (!*(v3 + 104) || (sub_251BB31CC(), result = sub_251C70604(), !v4))
                  {
                    type metadata accessor for PBECGMeta(0);
                    return sub_251C70394();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B8DAA8@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xE000000000000000;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  *(a2 + 88) = MEMORY[0x277D84F90];
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  return sub_251C703A4();
}

uint64_t sub_251B8DB4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B7F8, type metadata accessor for PBECGMeta, &unk_251C7F04C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8DBEC(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F479108, type metadata accessor for PBECGMeta, &unk_251C7F084);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8DC58(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F479108, type metadata accessor for PBECGMeta, &unk_251C7F084);

  return sub_251C705C4();
}

uint64_t sub_251B8DCD8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2460);
  __swift_project_value_buffer(v0, qword_27F4A2460);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_251C75810;
  v5 = v27 + v4;
  v6 = v27 + v4 + *(v2 + 56);
  *(v27 + v4) = 1;
  *v6 = "time";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "sampleRate";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "device";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "classification";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "lead";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "unit";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "symptoms";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "values";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "averageHeartRate";
  *(v23 + 8) = 16;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "hk_classification";
  *(v25 + 1) = 17;
  v25[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251B8E0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70444();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            goto LABEL_4;
          }

          sub_251C70504();
        }

        else
        {
          switch(result)
          {
            case 8:
              sub_251C704B4();
              break;
            case 9:
LABEL_22:
              sub_251C704E4();
              break;
            case 10:
              sub_251BB31CC();
              sub_251C70494();
              break;
          }
        }
      }

      else
      {
        if (result > 2 || result == 1)
        {
LABEL_4:
          sub_251C70534();
          goto LABEL_5;
        }

        if (result == 2)
        {
          goto LABEL_22;
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B8E238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_251C70674(), !v4))
  {
    if (!*(v3 + 16) || (result = sub_251C70634(), !v4))
    {
      v8 = *(v3 + 32);
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_251C70674(), !v4))
      {
        v10 = *(v3 + 48);
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = *(v3 + 40) & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = sub_251C70674(), !v4))
        {
          v12 = *(v3 + 64);
          v13 = HIBYTE(v12) & 0xF;
          if ((v12 & 0x2000000000000000) == 0)
          {
            v13 = *(v3 + 56) & 0xFFFFFFFFFFFFLL;
          }

          if (!v13 || (result = sub_251C70674(), !v4))
          {
            v14 = *(v3 + 80);
            v15 = HIBYTE(v14) & 0xF;
            if ((v14 & 0x2000000000000000) == 0)
            {
              v15 = *(v3 + 72) & 0xFFFFFFFFFFFFLL;
            }

            if (!v15 || (result = sub_251C70674(), !v4))
            {
              if (!*(*(v3 + 88) + 16) || (result = sub_251C70654(), !v4))
              {
                if (!*(*(v3 + 96) + 16) || (result = sub_251C705E4(), !v4))
                {
                  if (!*(v3 + 104) || (result = sub_251C70634(), !v4))
                  {
                    if (!*(v3 + 112) || (sub_251BB31CC(), result = sub_251C70604(), !v4))
                    {
                      type metadata accessor for PBECGMeasurement(0);
                      return sub_251C70394();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B8E46C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xE000000000000000;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  v2 = MEMORY[0x277D84F90];
  *(a2 + 88) = MEMORY[0x277D84F90];
  *(a2 + 96) = v2;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  return sub_251C703A4();
}

uint64_t sub_251B8E4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251B8E554(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251B8E5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B808, type metadata accessor for PBECGMeasurement, &unk_251C7EEE4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8E698(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FE8, type metadata accessor for PBECGMeasurement, &unk_251C7EF1C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8E704(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F478FE8, type metadata accessor for PBECGMeasurement, &unk_251C7EF1C);

  return sub_251C705C4();
}

uint64_t sub_251B8E784()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2478);
  __swift_project_value_buffer(v0, qword_27F4A2478);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "date_range";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "activitySummaries";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B8E96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_251B8EA80(a1, v5, a2, a3, type metadata accessor for PBActivitySummarySeries);
      }

      else if (result == 2)
      {
        type metadata accessor for PBActivitySummarySeries.ActivitySummary(0);
        sub_251B9ED44(&qword_27F47AFB8, type metadata accessor for PBActivitySummarySeries.ActivitySummary, &unk_251C7EC4C);
        sub_251C70554();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251B8EA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for PBDateRange(0);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  return sub_251C70564();
}

uint64_t sub_251B8EB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251B8EC4C(v3, a1, a2, a3, type metadata accessor for PBActivitySummarySeries, 1);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for PBActivitySummarySeries.ActivitySummary(0);
      sub_251B9ED44(&qword_27F47AFB8, type metadata accessor for PBActivitySummarySeries.ActivitySummary, &unk_251C7EC4C);
      sub_251C70694();
    }

    type metadata accessor for PBActivitySummarySeries(0);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251B8EC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v17[2] = a6;
  v17[3] = a3;
  v17[5] = a4;
  v17[1] = a2;
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for PBDateRange(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0);
  sub_251BB33C4(a1 + *(v15 + 24), v10, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_251BB3444(v10, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BB23C4(v10, v14, type metadata accessor for PBDateRange);
  sub_251B9ED44(&qword_27F479038, type metadata accessor for PBDateRange, &unk_251C83094);
  sub_251C706A4();
  return sub_251BB2308(v14, type metadata accessor for PBDateRange);
}

uint64_t sub_251B8EEA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  sub_251C703A4();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PBDateRange(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_251B8EF78(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B810, type metadata accessor for PBActivitySummarySeries, &unk_251C7ED7C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8F018(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F478FF0, type metadata accessor for PBActivitySummarySeries, &unk_251C7EDB4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8F084(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F478FF0, type metadata accessor for PBActivitySummarySeries, &unk_251C7EDB4);

  return sub_251C705C4();
}

uint64_t sub_251B8F104()
{
  result = MEMORY[0x25308CDA0](0xD000000000000010, 0x8000000251C8E5D0);
  qword_27F4A2490 = 0xD000000000000030;
  *algn_27F4A2498 = 0x8000000251C8E590;
  return result;
}

uint64_t sub_251B8F178()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A24A0);
  __swift_project_value_buffer(v0, qword_27F4A24A0);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75420;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "activeCalories";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "activeCalorieGoal";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "moveMinutes";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "moveMinuteGoal";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v10();
  v16 = (v6 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "standHours";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v10();
  v18 = (v6 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "standHoursGoal";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v10();
  v20 = (v6 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "recorded_time";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251B8F4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1 || result == 2 || result == 3)
      {
LABEL_2:
        sub_251C704F4();
      }
    }

    else
    {
      if (result <= 6)
      {
        goto LABEL_2;
      }

      if (result == 7)
      {
        sub_251C70534();
      }
    }
  }
}

uint64_t sub_251B8F590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_251C70644(), !v4))
  {
    if (!*(v3 + 4) || (result = sub_251C70644(), !v4))
    {
      if (!*(v3 + 8) || (result = sub_251C70644(), !v4))
      {
        if (!*(v3 + 12) || (result = sub_251C70644(), !v4))
        {
          if (!*(v3 + 16) || (result = sub_251C70644(), !v4))
          {
            if (!*(v3 + 20) || (result = sub_251C70644(), !v4))
            {
              v6 = *(v3 + 32);
              v7 = HIBYTE(v6) & 0xF;
              if ((v6 & 0x2000000000000000) == 0)
              {
                v7 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
              }

              if (!v7 || (result = sub_251C70674(), !v4))
              {
                type metadata accessor for PBActivitySummarySeries.ActivitySummary(0);
                return sub_251C70394();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251B8F6E4@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0xE000000000000000;
  return sub_251C703A4();
}

uint64_t sub_251B8F76C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251B9ED44(&qword_27F47B818, type metadata accessor for PBActivitySummarySeries.ActivitySummary, &unk_251C7EC14);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251B8F80C(uint64_t a1)
{
  v2 = sub_251B9ED44(&qword_27F47AFB8, type metadata accessor for PBActivitySummarySeries.ActivitySummary, &unk_251C7EC4C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251B8F878(uint64_t a1, uint64_t a2)
{
  sub_251B9ED44(&qword_27F47AFB8, type metadata accessor for PBActivitySummarySeries.ActivitySummary, &unk_251C7EC4C);

  return sub_251C705C4();
}

uint64_t sub_251B8F8F8()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A24B8);
  __swift_project_value_buffer(v0, qword_27F4A24B8);
  sub_251B67AAC(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251C75420;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 1;
  *v5 = "hasWatch";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 2;
  *v9 = "chr_meta";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 3;
  *v11 = "share_timezone";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 4;
  *v13 = "sex";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "heartRateMeds";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 6;
  *v17 = "name";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 7;
  *v19 = "dob";
  *(v19 + 1) = 3;
  v19[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251B8FC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_251C70474();
            break;
          case 2:
            type metadata accessor for PBPatientMeta.CHRMeta(0);
            sub_251B9ED44(&qword_27F47AF80, type metadata accessor for PBPatientMeta.CHRMeta, &unk_251C7E97C);
            sub_251C70554();
            break;
          case 3:
            goto LABEL_4;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          sub_251B8FE60(a1, v5, a2, a3);
        }

        else if (result == 7)
        {
LABEL_4:
          sub_251C70534();
        }
      }

      else
      {
        if (result == 4)
        {
          goto LABEL_4;
        }

        sub_251B8FDAC(a1, v5, a2, a3);
      }

      result = sub_251C70444();
    }
  }

  return result;
}