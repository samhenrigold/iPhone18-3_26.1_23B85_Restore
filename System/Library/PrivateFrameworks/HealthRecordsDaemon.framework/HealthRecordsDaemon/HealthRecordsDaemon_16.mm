uint64_t sub_251C19500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBNode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_251C19564()
{
  result = qword_27F47B948;
  if (!qword_27F47B948)
  {
    type metadata accessor for PBNode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B948);
  }

  return result;
}

uint64_t sub_251C195BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C1961C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBBlob(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C19680@<X0>(void **a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v137 = a3;
  v146 = a2;
  v139 = a4;
  sub_251C1A2E8(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  MEMORY[0x28223BE20](v5 - 8);
  v138 = &v122 - v6;
  v7 = type metadata accessor for PBHKConcept(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v143 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_251C70014();
  v145 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C701E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PBHKVaccinationRecord(0);
  v16 = (v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v136 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v122 - v19;
  v21 = *a1;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0xE000000000000000;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0xE000000000000000;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0xE000000000000000;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0xE000000000000000;
  *(v20 + 88) = 0;
  *(v20 + 96) = 0xE000000000000000;
  v22 = MEMORY[0x277D84F90];
  *(v20 + 104) = MEMORY[0x277D84F90];
  *(v20 + 112) = v22;
  sub_251C703A4();
  v23 = *(v8 + 56);
  v142 = v16[17];
  v144 = v7;
  v23(&v142[v20], 1, 1, v7);
  v133 = v16[18];
  v23((v20 + v133), 1, 1, v7);
  v134 = v16[19];
  v23((v20 + v134), 1, 1, v7);
  v135 = v16[20];
  v23((v20 + v135), 1, 1, v7);
  v24 = [v21 administrationDate];
  v25 = *v146;
  v26 = *(v12 + 16);
  v126 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
  v128 = v12 + 16;
  v127 = v26;
  v26(v14, v25 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v11);
  v27 = sub_251C70114();
  v28 = *(v12 + 8);
  v130 = v14;
  v131 = v12 + 8;
  v132 = v11;
  v125 = v28;
  v28(v14, v11);
  v29 = v21;
  v30 = [v24 adjustedDateForCalendar_];

  v31 = v140;
  sub_251C6FFE4();

  v129 = v25;
  v123 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter;
  v32 = *(v25 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v33 = v31;
  v34 = sub_251C6FF94();
  v35 = [v32 stringFromDate_];

  v36 = sub_251C70F14();
  v38 = v37;

  v39 = *(v145 + 8);
  v40 = v33;
  v41 = v144;
  v145 += 8;
  v124 = v39;
  v39(v40, v141);
  *v20 = v36;
  *(v20 + 8) = v38;
  v42 = v143;
  v43 = [v21 bodySite];
  if (v43)
  {
    v44 = v43;
    sub_251AF0ACC(v43, 1, v42);

    v45 = v142;
    sub_251C1A270(&v142[v20]);
    sub_251C1A3A0(v42, &v45[v20], type metadata accessor for PBHKConcept);
    v23(&v45[v20], 0, 1, v41);
  }

  v142 = v23;
  v46 = [v21 doseNumber];
  if (v46)
  {
    v47 = v46;
    v48 = sub_251C70F14();
    v50 = v49;

    *(v20 + 16) = v48;
    *(v20 + 24) = v50;
  }

  v51 = [v21 doseQuantity];
  v52 = v139;
  if (v51)
  {
    v53 = v51;
    v54 = sub_251C70F14();
    v56 = v55;

    *(v20 + 32) = v54;
    *(v20 + 40) = v56;
  }

  v57 = [v29 expirationDate];
  if (v57)
  {
    v58 = v57;
    v59 = v129;
    v60 = v130;
    v61 = v132;
    v127(v130, v129 + v126, v132);
    v62 = sub_251C70114();
    v125(v60, v61);
    v63 = [v58 adjustedDateForCalendar_];

    v64 = v140;
    sub_251C6FFE4();

    v65 = *(v59 + v123);
    v66 = sub_251C6FF94();
    v67 = [v65 stringFromDate_];

    v68 = sub_251C70F14();
    v70 = v69;

    v124(v64, v141);
    *(v20 + 48) = v68;
    *(v20 + 56) = v70;
  }

  *(v20 + 64) = [v29 notGiven];
  *(v20 + 65) = [v29 patientReported];
  v71 = [v29 performer];
  if (v71)
  {
    v72 = v71;
    v73 = sub_251C70F14();
    v75 = v74;

    *(v20 + 72) = v73;
    *(v20 + 80) = v75;
  }

  v76 = [v29 reaction];
  v77 = v146;
  if (v76)
  {
    v78 = v76;
    v79 = sub_251C70F14();
    v81 = v80;

    *(v20 + 88) = v79;
    *(v20 + 96) = v81;
  }

  v82 = [v29 reasons];
  v83 = v143;
  if (v82)
  {
    v84 = v82;
    sub_251BBC230();
    v85 = sub_251C71154();

    MEMORY[0x28223BE20](v86);
    *(&v122 - 2) = v77;
    sub_251C4FA0C(sub_251B3B7B8, (&v122 - 4), v85);
    v88 = v87;

    *(v20 + 104) = v88;
  }

  v89 = v142;
  v90 = [v29 reasonsNotGiven];
  if (v90)
  {
    v91 = v90;
    sub_251BBC230();
    v92 = sub_251C71154();

    MEMORY[0x28223BE20](v93);
    *(&v122 - 2) = v77;
    sub_251C4FA0C(sub_251B18000, (&v122 - 4), v92);
    v95 = v94;

    v89 = v142;
    *(v20 + 112) = v95;
  }

  v96 = [v29 route];
  v97 = v144;
  if (v96)
  {
    v98 = v96;
    sub_251AF0ACC(v96, 1, v83);

    v99 = v133;
    sub_251C1A270(v20 + v133);
    sub_251C1A3A0(v83, v20 + v99, type metadata accessor for PBHKConcept);
    v89(v20 + v99, 0, 1, v97);
  }

  v100 = [v29 status];
  if (v100)
  {
    v101 = v100;
    sub_251AF0ACC(v100, 1, v83);

    v102 = v134;
    sub_251C1A270(v20 + v134);
    sub_251C1A3A0(v83, v20 + v102, type metadata accessor for PBHKConcept);
    v89(v20 + v102, 0, 1, v97);
  }

  v103 = [v29 vaccination];
  sub_251AF0ACC(v103, 1, v83);

  v104 = v135;
  sub_251C1A270(v20 + v135);
  sub_251C1A3A0(v83, v20 + v104, type metadata accessor for PBHKConcept);
  v89(v20 + v104, 0, 1, v97);
  sub_251AF11B4(v29, v137, v52);
  v105 = v136;
  sub_251C1A33C(v20, v136);
  v106 = *(type metadata accessor for PBClinicalRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108 = *(v52 + v106);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PBClinicalRecord._StorageClass(0);
    swift_allocObject();
    v109 = sub_251BB2A8C(v108);

    *(v52 + v106) = v109;
    v108 = v109;
  }

  v110 = v105;
  v111 = v138;
  sub_251C1A3A0(v110, v138, type metadata accessor for PBHKVaccinationRecord);
  v112 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v112 - 8) + 56))(v111, 0, 1, v112);
  v113 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251B3B5EC(v111, &v108[v113]);
  swift_endAccess();
  v114 = sub_251C6CC54();
  v116 = v115;
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *(v52 + v106);
  if ((v117 & 1) == 0)
  {
    type metadata accessor for PBClinicalRecord._StorageClass(0);
    swift_allocObject();
    v119 = sub_251BB2A8C(v118);

    *(v52 + v106) = v119;
    v118 = v119;
  }

  v120 = (v118 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  *v120 = v114;
  v120[1] = v116;

  return sub_251C1A408(v20);
}

uint64_t sub_251C1A270(uint64_t a1)
{
  sub_251C1A2E8(0, qword_2813E6D28, type metadata accessor for PBHKConcept);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251C1A2E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251C1A33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBHKVaccinationRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C1A3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C1A408(uint64_t a1)
{
  v2 = type metadata accessor for PBHKVaccinationRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251C1A464(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x7D6C696E7BLL;
  }

  sub_251A8223C(0, &qword_27F47C678, 0x277CCA9B8);

  if (swift_dynamicCast())
  {
    v2 = [v6 hrs_safelyLoggableDescription];
    v3 = sub_251C70F14();

    return v3;
  }

  else
  {

    sub_251C719F4();
    v5 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    return sub_251C70F74();
  }
}

uint64_t sub_251C1A59C(void *a1)
{
  if (!a1)
  {
    return 0x7D6C696E7BLL;
  }

  v2 = a1;
  sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
  sub_251A8223C(0, &qword_27F47C678, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v3 = [v8 hrs_safelyLoggableDescription];
    v4 = sub_251C70F14();

    return v4;
  }

  else
  {
    v6 = a1;
    sub_251C719F4();
    v7 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    return sub_251C70F74();
  }
}

uint64_t sub_251C1A6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = sub_251C70014();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C1A7A4, 0, 0);
}

uint64_t sub_251C1A7A4()
{
  if (([*(v0 + 104) options] & 1) != 0 || ((v1 = objc_msgSend(*(v0 + 104), sel_contextItems), *(v0 + 168) = sub_251A8223C(0, &qword_27F47C650, 0x277D123A0), v2 = sub_251C71154(), v1, v2 >> 62) ? (v3 = sub_251C717F4()) : (v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v3))
  {
    v18 = *(v0 + 104);

    v19 = *(v0 + 8);

    return v19(v18);
  }

  else
  {
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v8 = *(v0 + 104);
    v9 = [v8 contextItems];
    v10 = sub_251C71154();
    *(v0 + 176) = v10;

    v11 = swift_allocObject();
    *(v0 + 184) = v11;
    v11[2] = v8;
    v11[3] = v6;
    v11[4] = v7;
    v11[5] = v5;
    v11[6] = v4;
    *(v0 + 88) = v10;
    v12 = v7;

    v13 = v8;

    sub_251C1EC98();
    v15 = v14;
    v16 = swift_task_alloc();
    *(v0 + 192) = v16;
    v16[2] = v0 + 88;
    v16[3] = &unk_251C867C0;
    v16[4] = v11;
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_251C1AA34;

    return MEMORY[0x282200740](v0 + 96, &type metadata for WellKnownJWKSProcessingContext, v15, 0, 0, &unk_251C867D0, v16, &type metadata for WellKnownJWKSProcessingContext);
  }
}

uint64_t sub_251C1AA34()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_251C1AE40;
  }

  else
  {

    v2 = sub_251C1AB50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251C1AB50()
{

  v1 = *(v0 + 96);
  if (*(v1 + 16))
  {
    v3 = v1 + 32;
    v2 = *(v1 + 32);
    v4 = [v2 receivedDate];
    sub_251C6FFE4();

    v5 = [v2 countryCode];
    if (v5)
    {
      v6 = v5;
      sub_251C70F14();
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v12 = [v2 options];
    v13 = *(v1 + 16);
    if (v13)
    {
      sub_251C71764();
      do
      {
        sub_251C1EE70(v3, v0 + 16);
        v14 = *(v0 + 24);
        sub_251C1EEA8(v0 + 16);
        sub_251C71734();
        sub_251C71774();
        sub_251C71784();
        sub_251C71744();
        v3 += 72;
        --v13;
      }

      while (v13);
    }

    v15 = sub_251C6FF94();
    if (v8)
    {
      v16 = sub_251C70EE4();
    }

    else
    {
      v16 = 0;
    }

    v17 = *(v0 + 160);
    v18 = *(v0 + 144);
    v19 = *(v0 + 152);
    v20 = objc_allocWithZone(MEMORY[0x277D123A8]);
    v21 = sub_251C71144();

    v22 = [v20 initWithReceivedDate:v15 countryCode:v16 options:v12 contextItems:v21];

    (*(v19 + 8))(v17, v18);

    v23 = *(v0 + 8);

    return v23(v22);
  }

  else
  {

    sub_251C1EED8();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_251C1AE40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251C1AEC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[59] = a6;
  v7[60] = a7;
  v7[57] = a4;
  v7[58] = a5;
  v7[55] = a1;
  v7[56] = a3;
  v7[61] = *a2;
  return MEMORY[0x2822009F8](sub_251C1AEF0, 0, 0);
}

uint64_t sub_251C1AEF0()
{
  v1 = *(v0 + 448);
  *(v0 + 16) = v1;
  v2 = *(v0 + 488);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 24) = v2;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 64) = 0;
  v3 = v2;
  v4 = v1;
  sub_251C1B4A8((v0 + 88));
  v5 = swift_task_alloc();
  *(v0 + 496) = v5;
  *v5 = v0;
  v5[1] = sub_251C1B014;
  v6 = *(v0 + 472);
  v7 = *(v0 + 480);
  v8 = *(v0 + 456);
  v9 = *(v0 + 464);
  v10 = *(v0 + 440);

  return sub_251C1BAB4(v10, v0 + 88, v8, v9, v6, v7);
}

uint64_t sub_251C1B014()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_251C1B194;
  }

  else
  {
    v2 = sub_251C1B128;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251C1B128()
{
  sub_251C1EEA8(v0 + 88);
  sub_251C1EEA8(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251C1B194()
{
  v29 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 504);
  v2 = *(v0 + 464);
  v3 = sub_251C70764();
  __swift_project_value_buffer(v3, qword_2813E8130);
  sub_251C1EE70(v0 + 88, v0 + 160);
  v4 = v2;

  v5 = v1;
  v6 = sub_251C70744();
  v7 = sub_251C713D4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 504);
  if (v8)
  {
    v11 = *(v0 + 472);
    v10 = *(v0 + 480);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_251B10780(v11, v10, &v28);
    *(v12 + 12) = 2080;
    sub_251C1EE70(v0 + 160, v0 + 232);
    sub_251C1EE70(v0 + 232, v0 + 304);
    sub_251C719F4();
    v14 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v15 = sub_251C70F74();
    v17 = v16;
    sub_251C1EEA8(v0 + 232);
    sub_251C1EEA8(v0 + 160);
    v18 = sub_251B10780(v15, v17, &v28);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    swift_getErrorValue();
    v19 = Error.sensitiveLogString.getter(*(v0 + 416), *(v0 + 424));
    v21 = sub_251B10780(v19, v20, &v28);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_251A6C000, v6, v7, "%s: Failed to load Well-Known JWKS for %s, will return context without JWKS data. Error: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v13, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  else
  {

    sub_251C1EEA8(v0 + 160);
  }

  sub_251C1EEA8(v0 + 16);
  v22 = *(v0 + 440);
  *v22 = *(v0 + 88);
  v23 = *(v0 + 104);
  v24 = *(v0 + 120);
  v25 = *(v0 + 136);
  *(v22 + 64) = *(v0 + 152);
  *(v22 + 32) = v24;
  *(v22 + 48) = v25;
  *(v22 + 16) = v23;
  v26 = *(v0 + 8);

  return v26();
}

void sub_251C1B4A8(void *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for WellKnownJWKSRequest(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[1];
  v10 = [v9 issuerIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_251C70F14();
    v14 = v13;

    v15 = [v9 sourceType];
    if (v15 == 2)
    {

      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v31 = sub_251C70764();
      __swift_project_value_buffer(v31, qword_2813E8130);
      sub_251C1EE70(v4, &v68);
      v32 = sub_251C70744();
      v33 = sub_251C713B4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v70 = v66;
        v67 = v34;
        *v34 = 136315138;
        v35 = [v69 signingKeyID];
        if (v35)
        {
          v36 = v35;
          v37 = sub_251C70F14();
          v39 = v38;
        }

        else
        {
          v37 = 0;
          v39 = 0;
        }

        v49 = sub_251C1A464(v37, v39);
        v51 = v50;

        sub_251C1EEA8(&v68);
        v52 = sub_251B10780(v49, v51, &v70);

        v53 = v67;
        *(v67 + 4) = v52;
        _os_log_impl(&dword_251A6C000, v32, v33, "WellKnownJWKSProcessingContext: preparing %s for lookup in public key registry", v53, 0xCu);
        v54 = v66;
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x25308E2B0](v54, -1, -1);
        MEMORY[0x25308E2B0](v53, -1, -1);
      }

      else
      {

        sub_251C1EEA8(&v68);
      }

      v55 = *v4;
      v56 = v9;
      v57 = v55;
      v58 = [v56 signingKeyID];
      if (v58)
      {
        v59 = v58;
        v60 = sub_251C70F14();
        v62 = v61;
      }

      else
      {
        v60 = 0;
        v62 = 0;
      }

      *a1 = v57;
      a1[1] = v56;
      *(a1 + 1) = 0u;
      *(a1 + 2) = 0u;
      a1[6] = 0;
      a1[7] = v60;
      a1[8] = v62;
    }

    else if (v15 == 1)
    {
      v67 = v4;
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v16 = sub_251C70764();
      __swift_project_value_buffer(v16, qword_2813E8130);

      v17 = sub_251C70744();
      v18 = sub_251C713B4();

      LODWORD(v66) = v18;
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v70 = v64;
        *v19 = 136315138;
        v68 = v12;
        v69 = v14;

        sub_251C719F4();
        v65 = v12;
        v20 = HKSensitiveLogItem();
        v63 = v17;
        swift_unknownObjectRelease();
        sub_251C715C4();
        swift_unknownObjectRelease();
        v21 = sub_251C70F74();
        v23 = sub_251B10780(v21, v22, &v70);

        v24 = v19;
        *(v19 + 4) = v23;
        v12 = v65;
        v25 = v66;
        v26 = v63;
        v66 = a1;
        v27 = v24;
        _os_log_impl(&dword_251A6C000, v63, v25, "WellKnownJWKSProcessingContext: instantiating WellKnownJWKSRequest for issuer %s", v24, 0xCu);
        v28 = v64;
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x25308E2B0](v28, -1, -1);
        v29 = v27;
        v3 = v2;
        a1 = v66;
        MEMORY[0x25308E2B0](v29, -1, -1);
      }

      else
      {
      }

      v44 = v67;
      WellKnownJWKSRequest.init(baseURLString:)(v12, v14, v8);
      if (!v3)
      {
        v45 = *v44;
        a1[5] = v6;
        a1[6] = &protocol witness table for WellKnownJWKSRequest;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1 + 2);
        sub_251C1F2D8(v8, boxed_opaque_existential_1, type metadata accessor for WellKnownJWKSRequest);
        *a1 = v45;
        a1[1] = v9;
        a1[7] = 0;
        a1[8] = 0;
        v47 = v45;
        v48 = v9;
      }
    }

    else
    {

      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v40 = sub_251C70764();
      __swift_project_value_buffer(v40, qword_2813E8130);
      v41 = sub_251C70744();
      v42 = sub_251C713E4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_251A6C000, v41, v42, "WellKnownJWKSProcessingContext.contextByCreatingJWKSRequest got unsupported source type", v43, 2u);
        MEMORY[0x25308E2B0](v43, -1, -1);
      }

      sub_251C1EE70(v4, a1);
    }
  }

  else
  {
    sub_251C1EED8();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
  }
}

uint64_t sub_251C1BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  return MEMORY[0x2822009F8](sub_251C1BADC, 0, 0);
}

uint64_t sub_251C1BADC()
{
  sub_251C1EF2C(v0[26] + 16, (v0 + 20), sub_251C183E0);
  v1 = v0[23];
  sub_251C1EF94((v0 + 20), sub_251C183E0);
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[31] = v2;
    *v2 = v0;
    v2[1] = sub_251C1BCA8;
    v3 = v0[29];
    v4 = v0[30];
    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[26];

    return sub_251C1C370(v7, v8, v5, v6, v3, v4);
  }

  else if (*(v0[26] + 64))
  {
    v10 = swift_task_alloc();
    v0[32] = v10;
    *v10 = v0;
    v10[1] = sub_251C1BD9C;
    v11 = v0[29];
    v12 = v0[30];
    v13 = v0[27];
    v14 = v0[28];
    v15 = v0[26];

    return sub_251C1CB84((v0 + 2), v15, v13, v14, v11, v12);
  }

  else
  {
    sub_251C1EED8();
    swift_allocError();
    *v16 = 5;
    swift_willThrow();
    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_251C1BCA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_251C1BD9C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_251C1C2F4;
  }

  else
  {
    v2 = sub_251C1BEB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251C1BEB0()
{
  if ([*(v0 + 24) JWKSOutcome] == 2)
  {
    v1 = swift_task_alloc();
    *(v0 + 272) = v1;
    *v1 = v0;
    v1[1] = sub_251C1BFB4;
    v2 = *(v0 + 232);
    v3 = *(v0 + 240);
    v4 = *(v0 + 216);
    v5 = *(v0 + 224);

    return sub_251C1D1B8(v1, v4, v5, v2, v3);
  }

  else
  {
    v7 = *(v0 + 200);
    *v7 = *(v0 + 16);
    v8 = *(v0 + 32);
    v9 = *(v0 + 48);
    v10 = *(v0 + 64);
    *(v7 + 64) = *(v0 + 80);
    *(v7 + 32) = v9;
    *(v7 + 48) = v10;
    *(v7 + 16) = v8;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_251C1BFB4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[35] = v3;
  *v3 = v2;
  v3[1] = sub_251C1C14C;
  v4 = v1[30];
  v5 = v1[29];
  v6 = v1[28];
  v7 = v1[27];
  v8 = v1[26];

  return sub_251C1CB84((v1 + 11), v8, v7, v6, v5, v4);
}

uint64_t sub_251C1C14C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_251C1C30C;
  }

  else
  {
    v2 = sub_251C1C260;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251C1C260()
{
  sub_251C1EEA8(v0 + 16);
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  *(v0 + 16) = v2;
  *(v0 + 32) = v1;
  v3 = *(v0 + 120);
  v4 = *(v0 + 136);
  *(v0 + 48) = v3;
  *(v0 + 64) = v4;
  v5 = *(v0 + 152);
  *(v0 + 80) = v5;
  v6 = *(v0 + 200);
  *(v6 + 64) = v5;
  *(v6 + 32) = v3;
  *(v6 + 48) = v4;
  *v6 = v2;
  *(v6 + 16) = v1;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_251C1C30C()
{
  sub_251C1EEA8(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251C1C370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  type metadata accessor for WebRequestResponseError.ErrorType(0);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = type metadata accessor for WebRequestResponseError(0);
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C1C450, 0, 0);
}

uint64_t sub_251C1C450()
{
  v16 = v0;
  sub_251C1EF2C(*(v0 + 208) + 16, v0 + 120, sub_251C183E0);
  if (*(v0 + 144))
  {
    sub_251A7E8D8((v0 + 120), v0 + 80);
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 224);
    v2 = sub_251C70764();
    __swift_project_value_buffer(v2, qword_2813E8130);
    v3 = v1;

    v4 = sub_251C70744();
    v5 = sub_251C713F4();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 232);
      v6 = *(v0 + 240);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_251B10780(v7, v6, &v15);
      _os_log_impl(&dword_251A6C000, v4, v5, "%s: preparing to download well-known JWKS", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x25308E2B0](v9, -1, -1);
      MEMORY[0x25308E2B0](v8, -1, -1);
    }

    v10 = **(v0 + 208);
    *(v0 + 288) = v10;
    [v10 options];

    v11 = swift_task_alloc();
    *(v0 + 296) = v11;
    *v11 = v0;
    v11[1] = sub_251C1C78C;
    v18 = *(v0 + 256);

    JUMPOUT(0x251C695F4);
  }

  sub_251C1EF94(v0 + 120, sub_251C183E0);
  sub_251C1EED8();
  swift_allocError();
  *v12 = 2;
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_251C1C78C(uint64_t a1)
{
  v3 = *v2;
  v3[20] = v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v4 = sub_251C1CA20;
  }

  else
  {
    v4 = sub_251C1C8A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251C1C8A4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v3)
    {
      if ((v1 & 0xFF000000000000) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v4 = v2;
    v5 = v2 >> 32;
LABEL_8:
    if (v4 != v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v3 == 2)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    goto LABEL_8;
  }

LABEL_9:
  sub_251A83028(v0[23], v0[24]);
  v2 = 0;
  v1 = 0xF000000000000000;
LABEL_10:
  v6 = v0[21];
  v7 = v0[36];
  v8 = v0[25];
  v9 = v0[26];
  sub_251A823B4((v0 + 10), (v0 + 2));
  v0[7] = v2;
  v0[8] = v1;
  v0[9] = v6;
  v10 = v7;
  v11 = sub_251C1E7D0(v2, v1, 0);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  sub_251C1EF2C(v9 + 16, (v8 + 2), sub_251C183E0);
  v13 = *(v9 + 56);
  v12 = *(v9 + 64);
  *v8 = v10;
  v8[1] = v11;
  v8[7] = v13;
  v8[8] = v12;

  sub_251A857E0((v0 + 2));

  v14 = v0[1];

  return v14();
}

uint64_t sub_251C1CA20()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[31];
  sub_251C1F2D8(v0[32], v3, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C1F2D8(v3, v4, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251A823B4((v0 + 10), v2);
  sub_251C1EF2C(v4, v2 + *(v1 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251B21D94();
  swift_willThrowTypedImpl();
  sub_251C1EF94(v4, type metadata accessor for WebRequestResponseError.ErrorType);
  swift_allocError();
  sub_251C1F2D8(v2, v5, type metadata accessor for WebRequestResponseError);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  v6 = v0[1];

  return v6();
}

uint64_t sub_251C1CB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return MEMORY[0x2822009F8](sub_251C1CBAC, 0, 0);
}

uint64_t sub_251C1CBAC(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 88);
  if (v2)
  {
    v3 = *(*(v1 + 72) + 8);
    v4 = v2;
    v5 = [v3 signingKeyID];
    if (v5)
    {
      v6 = v5;
      v7 = sub_251C70F14();
      v9 = v8;

      *(v1 + 112) = v9;
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v10 = sub_251C70764();
      __swift_project_value_buffer(v10, qword_2813E8130);
      v11 = v4;

      v12 = sub_251C70744();
      v13 = sub_251C713F4();

      if (os_log_type_enabled(v12, v13))
      {
        v32 = v11;
        v15 = *(v1 + 96);
        v14 = *(v1 + 104);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v34[0] = v17;
        *v16 = 136315394;
        *(v16 + 4) = sub_251B10780(v15, v14, v34);
        *(v16 + 12) = 2080;
        *(v1 + 48) = v7;
        *(v1 + 56) = v9;

        sub_251C719F4();
        v18 = HKSensitiveLogItem();
        swift_unknownObjectRelease();
        sub_251C715C4();
        swift_unknownObjectRelease();
        v19 = v7;
        v20 = sub_251C70F74();
        v22 = sub_251B10780(v20, v21, v34);
        v11 = v32;

        *(v16 + 14) = v22;
        _os_log_impl(&dword_251A6C000, v12, v13, "%s: about to fetch public key “%s” from registry", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25308E2B0](v17, -1, -1);
        MEMORY[0x25308E2B0](v16, -1, -1);
      }

      else
      {

        v19 = v7;
      }

      v31 = *(v1 + 80);
      v33 = *(v1 + 96);
      v27 = *(v1 + 72);
      v28 = swift_task_alloc();
      *(v1 + 120) = v28;
      *(v28 + 16) = v11;
      *(v28 + 24) = v19;
      *(v28 + 32) = v9;
      *(v28 + 40) = v31;
      *(v28 + 56) = v33;
      *(v28 + 72) = v27;
      v29 = swift_task_alloc();
      *(v1 + 128) = v29;
      *v29 = v1;
      v29[1] = sub_251C1CFBC;
      v30 = *(v1 + 64);

      return MEMORY[0x2822008A0](v30, 0, 0, 0xD000000000000026, 0x8000000251C90B40, sub_251C1F15C, v28, &type metadata for WellKnownJWKSProcessingContext);
    }

    sub_251C1EED8();
    swift_allocError();
    *v24 = 6;
    swift_willThrow();
  }

  else
  {
    sub_251C1EED8();
    swift_allocError();
    *v23 = 4;
    swift_willThrow();
  }

  v25 = *(v1 + 8);

  return v25();
}

uint64_t sub_251C1CFBC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_251C1D144;
  }

  else
  {

    v2 = sub_251C1D0E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251C1D0E0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251C1D144()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_251C1D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  return MEMORY[0x2822009F8](sub_251C1D1DC, 0, 0);
}

uint64_t sub_251C1D1DC()
{
  v17 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_251C70764();
  v0[10] = __swift_project_value_buffer(v2, qword_2813E8130);
  v3 = v1;

  v4 = sub_251C70744();
  v5 = sub_251C713F4();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_251B10780(v7, v6, &v16);
    _os_log_impl(&dword_251A6C000, v4, v5, "%s: triggering public key OTA download", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  v11 = v0[6];
  v10 = v0[7];
  type metadata accessor for IssuerDirectoryDownloadTaskManager();
  v12 = swift_allocObject();

  v13 = v3;
  v0[11] = sub_251C1F04C(v11, v10, v12);
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_251C1D3FC;

  return sub_251B11608(0);
}

uint64_t sub_251C1D3FC(uint64_t a1)
{
  *(*v2 + 104) = v1;

  if (v1)
  {
    v3 = sub_251C1D684;
  }

  else
  {

    v3 = sub_251C1D51C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251C1D51C()
{
  v12 = v0;
  v1 = v0[7];

  v2 = v1;

  v3 = sub_251C70744();
  v4 = sub_251C713F4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_251B10780(v6, v5, &v11);
    _os_log_impl(&dword_251A6C000, v3, v4, "%s: public key OTA download completed", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_251C1D684()
{
  v19 = v0;
  v1 = v0[13];
  v2 = v0[7];

  v3 = v2;

  v4 = v1;
  v5 = sub_251C70744();
  v6 = sub_251C713D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v9 = v0[8];
    v8 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_251B10780(v9, v8, &v18);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v12 = Error.sensitiveLogString.getter(v0[3], v0[4]);
    v14 = sub_251B10780(v12, v13, &v18);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_251A6C000, v5, v6, "%s: public key OTA download failed: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v11, -1, -1);
    MEMORY[0x25308E2B0](v10, -1, -1);
  }

  else
  {
    v15 = v0[13];
  }

  v16 = v0[1];

  return v16();
}

void sub_251C1D86C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a7;
  v29 = a8;
  v27[1] = a5;
  v31 = a2;
  sub_251C1F190(0);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v30 = sub_251C70EE4();
  (*(v16 + 16))(v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  sub_251C1EE70(a9, v33);
  v18 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a5;
  *(v19 + 3) = a6;
  v20 = v29;
  *(v19 + 4) = v28;
  *(v19 + 5) = v20;
  *(v19 + 6) = a3;
  *(v19 + 7) = a4;
  (*(v16 + 32))(&v19[v18], v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v21 = &v19[(v17 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  v22 = v33[3];
  *(v21 + 2) = v33[2];
  *(v21 + 3) = v22;
  *(v21 + 8) = v34;
  v23 = v33[1];
  *v21 = v33[0];
  *(v21 + 1) = v23;
  aBlock[4] = sub_251C1F208;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251C1E654;
  aBlock[3] = &block_descriptor_19;
  v24 = _Block_copy(aBlock);
  v25 = a6;

  v26 = v30;
  [v31 fetchPublicKeyWithKeyID:v30 completion:v24];
  _Block_release(v24);
}

uint64_t sub_251C1DAB0(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, id *a10)
{
  v94 = a5;
  v95 = a7;
  v96 = a10;
  v15 = sub_251C70F64();
  v93 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 outcome];
  v97 = a9;
  if (v18 == 3)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v57 = sub_251C70764();
    __swift_project_value_buffer(v57, qword_2813E8130);
    v58 = a4;

    v48 = sub_251C70744();
    v49 = sub_251C713F4();

    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_22;
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v103 = v51;
    *v50 = 136315394;
    *(v50 + 4) = sub_251B10780(v94, a6, &v103);
    *(v50 + 12) = 2080;
    v98 = v95;
    v99 = a8;

    sub_251C719F4();
    v59 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v60 = sub_251C70F74();
    v62 = sub_251B10780(v60, v61, &v103);

    *(v50 + 14) = v62;
    v56 = "%s: key with ID “%s” has been removed";
    goto LABEL_21;
  }

  if (v18 == 2)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v46 = sub_251C70764();
    __swift_project_value_buffer(v46, qword_2813E8130);
    v47 = a4;

    v48 = sub_251C70744();
    v49 = sub_251C713F4();

    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_22;
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v103 = v51;
    *v50 = 136315394;
    *(v50 + 4) = sub_251B10780(v94, a6, &v103);
    *(v50 + 12) = 2080;
    v98 = v95;
    v99 = a8;

    sub_251C719F4();
    v52 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v53 = sub_251C70F74();
    v55 = sub_251B10780(v53, v54, &v103);

    *(v50 + 14) = v55;
    v56 = "%s: key with ID “%s” not found";
LABEL_21:
    _os_log_impl(&dword_251A6C000, v48, v49, v56, v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v51, -1, -1);
    MEMORY[0x25308E2B0](v50, -1, -1);
LABEL_22:

    v63 = [a1 outcome];
    v64 = v96;
    v65 = *v96;
    v66 = sub_251C1E7D0(0, 0xF000000000000000, v63);
    sub_251C1EF2C((v64 + 2), v100, sub_251C183E0);
    v67 = v64[7];
    v68 = v64[8];
    v98 = v65;
    v99 = v66;
    v101 = v67;
    v102 = v68;
    sub_251C1F190(0);

    return sub_251C711E4();
  }

  if (v18 != 1)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v69 = sub_251C70764();
    __swift_project_value_buffer(v69, qword_2813E8130);

    v70 = a4;

    v71 = a2;
    v72 = sub_251C70744();
    v73 = sub_251C713F4();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v103 = v75;
      *v74 = 136315650;
      *(v74 + 4) = sub_251B10780(v94, a6, &v103);
      *(v74 + 12) = 2080;
      v98 = v95;
      v99 = a8;

      sub_251C719F4();
      v76 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v77 = sub_251C70F74();
      v79 = sub_251B10780(v77, v78, &v103);

      *(v74 + 14) = v79;
      *(v74 + 22) = 2080;
      v80 = sub_251C1A59C(a2);
      v82 = sub_251B10780(v80, v81, &v103);

      *(v74 + 24) = v82;
      _os_log_impl(&dword_251A6C000, v72, v73, "%s: error retrieving key with ID “%s”: %s", v74, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v75, -1, -1);
      MEMORY[0x25308E2B0](v74, -1, -1);
    }

    v83 = a2;
    if (!a2)
    {
      sub_251C1EED8();
      v83 = swift_allocError();
      *v84 = 0;
    }

    v98 = v83;
    v85 = a2;
    sub_251C1F190(0);
    return sub_251C711D4();
  }

  v19 = [a1 jwkData];
  if (!v19)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v86 = sub_251C70764();
    __swift_project_value_buffer(v86, qword_2813E8130);
    v87 = sub_251C70744();
    v88 = sub_251C713E4();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_251A6C000, v87, v88, "WellKnownJWKSHandler.retrieveJWKFromPublicKeyRegistry got a retrieved result but no JWK data", v89, 2u);
      MEMORY[0x25308E2B0](v89, -1, -1);
    }

    sub_251C1EED8();
    v90 = swift_allocError();
    *v91 = 7;
    v98 = v90;
    sub_251C1F190(0);
    return sub_251C711D4();
  }

  v20 = v19;
  v21 = sub_251C6FEE4();
  v23 = v22;

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v24 = sub_251C70764();
  __swift_project_value_buffer(v24, qword_2813E8130);
  v25 = a4;

  v26 = sub_251C70744();
  v27 = sub_251C713F4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v103 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_251B10780(v94, a6, &v103);
    *(v28 + 12) = 2080;
    v98 = v95;
    v99 = a8;

    sub_251C719F4();
    v30 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v31 = sub_251C70F74();
    v33 = sub_251B10780(v31, v32, &v103);

    *(v28 + 14) = v33;
    _os_log_impl(&dword_251A6C000, v26, v27, "%s: key with ID “%s” found", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v29, -1, -1);
    MEMORY[0x25308E2B0](v28, -1, -1);
  }

  sub_251A858C4(v21, v23);
  sub_251A858C4(v21, v23);
  sub_251C70F54();
  v34 = sub_251C70F34();
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  v98 = 0x3A227379656B227BLL;
  v99 = 0xE90000000000005BLL;
  MEMORY[0x25308CDA0](v34, v36);

  MEMORY[0x25308CDA0](32093, 0xE200000000000000);
  sub_251C70F54();
  v37 = sub_251C70F24();
  v39 = v38;

  (*(v93 + 8))(v17, v15);
  v40 = v96;
  v41 = *v96;
  v42 = sub_251C1E7D0(v37, v39, 1);
  sub_251A8596C(v37, v39);
  sub_251A83028(v21, v23);
  sub_251C1EF2C((v40 + 2), v100, sub_251C183E0);
  v44 = v40[7];
  v43 = v40[8];
  v98 = v41;
  v99 = v42;
  v101 = v44;
  v102 = v43;

  sub_251A83028(v21, v23);
  sub_251C1F190(0);
  sub_251C711E4();
  return sub_251A83028(v21, v23);
}

void sub_251C1E654(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t WellKnownJWKSHandlerError.hashValue.getter()
{
  v1 = *v0;
  sub_251C71AA4();
  MEMORY[0x25308D860](v1);
  return sub_251C71AD4();
}

unint64_t sub_251C1E76C()
{
  result = qword_27F47C648;
  if (!qword_27F47C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C648);
  }

  return result;
}

id sub_251C1E7D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a3;
  v41 = a2;
  v39 = a1;
  sub_251AF3A84(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v4 rawData];
  v9 = sub_251C6FEE4();
  v11 = v10;

  v42 = [v4 sourceType];
  v12 = [v4 sourceURL];
  if (v12)
  {
    v13 = v12;
    sub_251C6FE14();

    v14 = sub_251C6FE64();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v15 = sub_251C6FE64();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  }

  v16 = [v4 issuerIdentifier];
  if (v16)
  {
    v17 = v16;
    v40 = sub_251C70F14();
    v19 = v18;
  }

  else
  {
    v40 = 0;
    v19 = 0;
  }

  v20 = [v4 signingKeyID];
  if (v20)
  {
    v21 = v20;
    sub_251C70F14();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = [v4 metadata];
  if (v24)
  {
    v25 = v24;
    sub_251C1EFF4();
    v26 = sub_251C70E54();
  }

  else
  {
    v26 = 0;
  }

  v27 = v9;
  v43 = v11;
  v28 = sub_251C6FEC4();
  v29 = sub_251C6FE64();
  v30 = *(v29 - 8);
  v31 = 0;
  if ((*(v30 + 48))(v7, 1, v29) != 1)
  {
    v31 = sub_251C6FDD4();
    (*(v30 + 8))(v7, v29);
  }

  if (v19)
  {
    v32 = sub_251C70EE4();

    if (v23)
    {
LABEL_17:
      v33 = sub_251C70EE4();

      goto LABEL_20;
    }
  }

  else
  {
    v32 = 0;
    if (v23)
    {
      goto LABEL_17;
    }
  }

  v33 = 0;
LABEL_20:
  if (v41 >> 60 != 15)
  {
    v34 = sub_251C6FEC4();
    if (v26)
    {
      goto LABEL_22;
    }

LABEL_24:
    v35 = 0;
    goto LABEL_25;
  }

  v34 = 0;
  if (!v26)
  {
    goto LABEL_24;
  }

LABEL_22:
  sub_251C1EFF4();
  v35 = sub_251C70E44();

LABEL_25:
  v36 = objc_allocWithZone(MEMORY[0x277D123A0]);
  v37 = [v36 initWithRawData:v28 sourceType:v42 sourceURL:v31 issuerIdentifier:v32 signingKeyID:v33 JWKSData:v34 JWKSOutcome:v44 metadata:v35];

  sub_251A83028(v27, v43);
  return v37;
}

uint64_t sub_251C1EBC0(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_251AF4F78;

  return sub_251C1AEC0(a1, a2, v6, v7, v8, v9, v10);
}

void sub_251C1EC98()
{
  if (!qword_27F47C658)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C658);
    }
  }
}

uint64_t sub_251C1ECE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_251BD1064;

  return sub_251BCB5DC(a2, v9, a4, a5);
}

uint64_t sub_251C1EDA0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_251B14FE8;

  return sub_251C1ECE8(a1, a2, v6, v7, v8);
}

unint64_t sub_251C1EED8()
{
  result = qword_27F47C660;
  if (!qword_27F47C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C660);
  }

  return result;
}

uint64_t sub_251C1EF2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C1EF94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251C1EFF4()
{
  result = qword_27F47C668;
  if (!qword_27F47C668)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F47C668);
  }

  return result;
}

uint64_t *sub_251C1F04C(uint64_t a1, id a2, uint64_t *a3)
{
  v6 = a3 + 16;
  v12[3] = type metadata accessor for WebRequestPerformer();
  v12[4] = &protocol witness table for WebRequestPerformer;
  v12[0] = a1;
  swift_defaultActor_initialize();
  sub_251A823B4(v12, v6);
  if (!a2)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    a2 = [objc_allocWithZone(MEMORY[0x277D124A8]) initWithHealthStore_];
  }

  a3[21] = a2;
  swift_getMetatypeMetadata();
  v8 = sub_251C70F74();
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_1(v12);
  a3[14] = v8;
  a3[15] = v10;
  return a3;
}

void sub_251C1F190(uint64_t a1)
{
  if (!qword_27F47C670)
  {
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v1 = sub_251C711F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C670);
    }
  }
}

uint64_t sub_251C1F208(void *a1, void *a2)
{
  sub_251C1F190(0);
  v6 = (*(*(v5 - 8) + 80) + 64) & ~*(*(v5 - 8) + 80);
  return sub_251C1DAB0(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, (v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251C1F2D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon10WebRequest_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_251C1F37C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_251C1F3C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_251C1F434(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_251C703C4();
  v33 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = sub_251C70404();
  MEMORY[0x28223BE20](v14 - 8);
  type metadata accessor for PBPushBlobsResponse(0);
  v31 = a1;
  v32 = a2;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_251A858C4(a1, a2);
  sub_251C703F4();
  sub_251C1FB64(&qword_27F47A880, type metadata accessor for PBPushBlobsResponse, &unk_251C7B170);
  sub_251C705A4();
  v15 = v4;
  if (!v4)
  {
    if ([v5 statusCode] != 207)
    {
      return;
    }

    if (sub_251B4672C())
    {
      sub_251AC1148();
      v15 = swift_allocError();
      *v16 = 1;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      v17 = 6;
    }

    else
    {
      v18 = [v5 statusCode];
      sub_251AC1148();
      v15 = swift_allocError();
      *v16 = v18;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      v17 = 1;
    }

    *(v16 + 32) = v17;
    swift_willThrow();
    sub_251C1FBAC(a3, type metadata accessor for PBPushBlobsResponse);
  }

  *&v28 = v15;
  v19 = v15;
  sub_251A82284();
  if (swift_dynamicCast())
  {

    v20 = v33;
    v21 = v27;
    (*(v33 + 32))(v27, v13, v9);
    sub_251C1FB64(&qword_27F47C680, MEMORY[0x277D21700], MEMORY[0x277D21708]);
    v22 = sub_251C71A44();
    v24 = v23;
    sub_251AC1148();
    swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    *(v25 + 16) = 0xD000000000000013;
    *(v25 + 24) = 0x8000000251C90BE0;
    *(v25 + 32) = 4;
    swift_willThrow();
    (*(v20 + 8))(v21, v9);
  }
}

void sub_251C1F7E8(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v25 = a3;
  v9 = sub_251C703C4();
  v24 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = sub_251C70404();
  MEMORY[0x28223BE20](v15 - 8);
  type metadata accessor for PBDeleteBlobsResponse(0);
  v29 = a1;
  v30 = a2;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_251A858C4(a1, a2);
  sub_251C703F4();
  sub_251C1FB64(&qword_27F47A788, type metadata accessor for PBDeleteBlobsResponse, &unk_251C7A5E0);
  sub_251C705A4();
  if (!v4)
  {
    v22 = v25;
    if ([v31 statusCode] != 207 || (v22 & 1) == 0 || (sub_251C650F8() & 1) == 0)
    {
      return;
    }

    sub_251AC1148();
    v5 = swift_allocError();
    *v23 = 1;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 6;
    swift_willThrow();
    sub_251C1FBAC(a4, type metadata accessor for PBDeleteBlobsResponse);
  }

  *&v26 = v5;
  v16 = v5;
  sub_251A82284();
  if (swift_dynamicCast())
  {

    v17 = v24;
    (*(v24 + 32))(v12, v14, v9);
    sub_251C1FB64(&qword_27F47C680, MEMORY[0x277D21700], MEMORY[0x277D21708]);
    v18 = sub_251C71A44();
    v20 = v19;
    sub_251AC1148();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    *(v21 + 16) = 0xD000000000000015;
    *(v21 + 24) = 0x8000000251C90BC0;
    *(v21 + 32) = 4;
    swift_willThrow();
    (*(v17 + 8))(v12, v9);
  }
}

uint64_t sub_251C1FB64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251C1FBAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251C1FC20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_251C1FC68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251C1FCBC@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v18[1] = a2;
  v19 = a1;
  v7 = sub_251C6FAE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_251C22278(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v18 - v13;
  sub_251C224C0(v5, v18 - v13, &qword_27F478D90, v11);
  v15 = 1;
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    v16 = a3;
    return (*(v8 + 56))(v16, v15, 1, v7);
  }

  (*(v8 + 32))(v10, v14, v7);
  v16 = a3;
  v19(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v15 = 0;
    return (*(v8 + 56))(v16, v15, 1, v7);
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t sub_251C1FEF4()
{
  v1 = v0;
  sub_251AF2868(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C22278(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v88 = &v77 - v8;
  v89 = sub_251C6FC94();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_251C701E4();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C2210C(0, &qword_27F47C688, type metadata accessor for PBTypedData);
  v12 = v11;
  v92 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v90 = &v77 - v13;
  sub_251C220EC(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v91 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_251C70014();
  v94 = *(v102 - 8);
  v18 = MEMORY[0x28223BE20](v102);
  v82 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v77 - v20;
  v22 = sub_251C6FAE4();
  v23 = MEMORY[0x28223BE20](v22);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + 1);
  v28 = *(v27 + 16);
  if (!v28)
  {
    type metadata accessor for ClinicalSharingQueryOutput(0);
    sub_251A82284();
    sub_251C70A34();
    sub_251C22230(&qword_27F479B00, sub_251AF2868, MEMORY[0x277CBCE90]);
    v35 = sub_251C70A94();
    (*(v4 + 8))(v6, v3);
    return v35;
  }

  v79 = v12;
  v80 = v16;
  v81 = v15;
  v93 = v1;
  v78 = v27;
  v101 = v23;
  if (v28 == 1)
  {
    v29 = v24;
    (*(v24 + 16))(v26, v27 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v23);
    v99 = objc_opt_self();
    sub_251C6FAB4();
    v30 = sub_251C6FF94();
    v31 = *(v94 + 8);
    v32 = v102;
    v31(v21, v102);
    sub_251C6FA84();
    v33 = sub_251C6FF94();
    v100 = v31;
    v31(v21, v32);
    v34 = [v99 predicateForSamplesWithStartDate:v30 endDate:v33 options:0];

    (*(v29 + 8))(v26, v101);
  }

  else
  {
    v104[0] = MEMORY[0x277D84F90];
    v36 = v27;
    v37 = v24;
    sub_251C71764();
    v38 = objc_opt_self();
    v99 = *(v37 + 16);
    v100 = v38;
    v39 = v36 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v40 = *(v37 + 72);
    v95 = v37 + 16;
    v96 = (v94 + 8);
    v97 = (v37 + 8);
    v98 = v40;
    v41 = v26;
    v42 = v101;
    do
    {
      (v99)(v41, v39, v42);
      sub_251C6FAB4();
      v43 = sub_251C6FF94();
      v44 = *v96;
      v45 = v102;
      (*v96)(v21, v102);
      sub_251C6FA84();
      v46 = sub_251C6FF94();
      v44(v21, v45);
      v47 = [v100 predicateForSamplesWithStartDate:v43 endDate:v46 options:0];

      (*v97)(v41, v42);
      sub_251C71734();
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
      v39 += v98;
      --v28;
    }

    while (v28);
    v100 = v44;
    sub_251A8223C(0, &qword_27F479AF8, 0x277CCAC30);
    v48 = sub_251C71144();

    v34 = [objc_opt_self() orPredicateWithSubpredicates_];

    v1 = v93;
  }

  v49 = *(v1 + 32);
  v50 = *(v1 + 3);
  v51 = *(v1 + 2);
  v97 = sub_251BFC460();
  v98 = v52;
  v53 = *v1;
  sub_251A823B4(*v1 + 16, v104);
  v96 = __swift_project_boxed_opaque_existential_1(v104, v104[3]);
  objc_opt_self();
  v54 = swift_dynamicCastObjCClass();
  v101 = v34;
  v55 = v85;
  v56 = v84;
  v57 = v83;
  if (v54)
  {
    v58 = [v54 aggregationStyle];

    if (v58 < 3)
    {
      v59 = qword_251C86938[v58];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v59 = 0;
LABEL_13:
  (*(v56 + 16))(v57, v53 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v55);
  v60 = v82;
  v99 = v53;
  if (v49 && ((1 << v50) & 0x67) == 0)
  {
    if (v50 == 3)
    {
      sub_251B1C960(0, v53 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, v82);
    }

    else
    {
      sub_251B1D048(v53 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, v82);
    }
  }

  else
  {
    sub_251C700C4();
  }

  (*(v56 + 8))(v57, v55);
  v61 = v86;
  sub_251AFC81C(v50, v49);
  v62 = v88;
  sub_251BF1170(v78, v88);
  v63 = v101;
  v64 = off_2863FD778(v51, v101, v59, v60, v61, v62, 0, v97, v98, &type metadata for ClinicalSharingQueryDefaultDataProvider, &off_2863FD718);
  v97 = v64;

  sub_251C22350(v62, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(v87 + 8))(v61, v89);
  v100(v60, v102);
  v103 = v64;
  v65 = swift_allocObject();
  v66 = v93;
  v67 = v93[1];
  *(v65 + 16) = *v93;
  *(v65 + 32) = v67;
  *(v65 + 48) = *(v66 + 16);
  sub_251B0DD74(0);
  type metadata accessor for PBTypedData(0);
  sub_251C22230(&qword_27F479E30, sub_251B0DD74, MEMORY[0x277CBCD90]);
  v68 = v51;

  v69 = v90;
  sub_251C70AA4();

  __swift_destroy_boxed_opaque_existential_1(v104);
  v70 = swift_allocObject();
  v71 = v66[1];
  *(v70 + 16) = *v66;
  *(v70 + 32) = v71;
  *(v70 + 48) = *(v66 + 16);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  v72 = v68;

  v73 = v91;
  v74 = v79;
  sub_251C70774();

  (*(v92 + 8))(v69, v74);
  sub_251C22230(&qword_27F47C698, sub_251C220EC, MEMORY[0x277CBCB10]);
  v75 = v81;
  v35 = sub_251C70A94();

  (*(v80 + 8))(v73, v75);
  return v35;
}

void sub_251C20BA4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_251C22278(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v61 - v7;
  v9 = type metadata accessor for PBDateRange(0);
  v62 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBTimeSeries(0);
  v13 = MEMORY[0x28223BE20](v12);
  v63 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v61 - v15);
  sub_251C22278(0, &qword_27F478D90, MEMORY[0x277CC88A8], v5);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v61 - v18;
  v20 = *(v3 + 16);
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v64 = v20;
    v23 = sub_251C2C490();
    if (v23)
    {
      v65 = v23;
      if ([a1 statisticsCount] < 1)
      {
        v59 = type metadata accessor for PBTypedData(0);
        (*(*(v59 - 8) + 56))(v66, 1, 1, v59);

        v60 = v65;
      }

      else
      {
        v24 = sub_251C6FAE4();
        (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
        *v16 = 0;
        v16[1] = 0xE000000000000000;
        sub_251C703A4();
        v25 = *(v12 + 32);
        v61 = v19;
        v62 = *(v62 + 56);
        (v62)(v16 + v25, 1, 1, v9);
        v26 = [v65 unitString];
        v27 = sub_251C70F14();
        v29 = v28;

        v16[2] = v27;
        v16[3] = v29;
        MEMORY[0x28223BE20](v30);
        v31 = v61;
        *(&v61 - 4) = v61;
        *(&v61 - 3) = v3;
        *(&v61 - 2) = v65;
        v16[4] = sub_251C21D7C(sub_251C222DC, (&v61 - 6));
        v32 = v31;
        sub_251BF0DF0(*(v3 + 24), *(v3 + 32), v31, v11);
        sub_251C222E8(v11, v8, type metadata accessor for PBDateRange);
        (v62)(v8, 0, 1, v9);
        v33 = v66;
        sub_251BF1AE0(v8, v66);

        v34 = MEMORY[0x277D83D88];
        sub_251C22350(v8, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
        sub_251C223AC(v11, type metadata accessor for PBDateRange);
        v35 = v63;
        sub_251C222E8(v16, v63, type metadata accessor for PBTimeSeries);
        v36 = type metadata accessor for PBTypedData(0);
        v37 = *(v36 + 20);
        sub_251C22350(v33 + v37, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, v34);
        sub_251C22458(v35, v33 + v37, type metadata accessor for PBTimeSeries);
        v38 = type metadata accessor for PBTypedData.OneOf_Raw(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v38 - 8) + 56))(v33 + v37, 0, 1, v38);
        (*(*(v36 - 8) + 56))(v33, 0, 1, v36);
        sub_251C223AC(v16, type metadata accessor for PBTimeSeries);
        sub_251C22350(v32, &qword_27F478D90, MEMORY[0x277CC88A8], v34);
      }
    }

    else
    {
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v48 = sub_251C70764();
      __swift_project_value_buffer(v48, qword_2813E8130);
      v49 = v64;
      v50 = sub_251C70744();
      v51 = sub_251C713E4();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        *(v52 + 4) = v22;
        *v53 = v22;
        v54 = v49;
        _os_log_impl(&dword_251A6C000, v50, v51, "Missing encoding unit for %@", v52, 0xCu);
        sub_251C223AC(v53, sub_251B32AF4);
        MEMORY[0x25308E2B0](v53, -1, -1);
        MEMORY[0x25308E2B0](v52, -1, -1);
        v49 = v50;
        v50 = v54;
      }

      v55 = type metadata accessor for PBTypedData(0);
      v56 = *(*(v55 - 8) + 56);
      v57 = v55;
      v58 = v66;

      v56(v58, 1, 1, v57);
    }
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v39 = sub_251C70764();
    __swift_project_value_buffer(v39, qword_2813E8130);
    v68 = *(v3 + 8);
    v40 = v20;

    v41 = MEMORY[0x277D83940];
    sub_251C224C0(&v68, v67, &qword_27F479690, MEMORY[0x277D83940]);
    v42 = sub_251C70744();
    v43 = sub_251C713E4();

    sub_251C22350(&v68, &qword_27F479690, MEMORY[0x277CC88A8], v41);

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v40;
      *v45 = v40;
      v46 = v40;
      _os_log_impl(&dword_251A6C000, v42, v43, "%@ is not a quantity type", v44, 0xCu);
      sub_251C223AC(v45, sub_251B32AF4);
      MEMORY[0x25308E2B0](v45, -1, -1);
      MEMORY[0x25308E2B0](v44, -1, -1);
    }

    v47 = type metadata accessor for PBTypedData(0);
    (*(*(v47 - 8) + 56))(v66, 1, 1, v47);
  }
}

uint64_t sub_251C21500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(*a2 + 56);
  sub_251BF2844(v9);
  v18 = v9;
  v11 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v17, v10);
  (*(v7 + 8))(v9, v6);
  if (*(v11 + 16))
  {
    sub_251C222E8(a1, a3, type metadata accessor for PBTypedData);
    v12 = sub_251BFAE40(v11);

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a3 + *(Output + 20)) = v12;
    v14 = (a3 + *(Output + 24));
    *v14 = 0;
    v14[1] = 0;
    return (*(*(Output - 8) + 56))(a3, 0, 1, Output);
  }

  else
  {

    v16 = type metadata accessor for ClinicalSharingQueryOutput(0);
    return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }
}

uint64_t sub_251C216E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v34 = a3;
  v29 = a2;
  v30 = MEMORY[0x277CC88A8];
  v31 = a5;
  v28 = MEMORY[0x277D83D88];
  sub_251C22278(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = sub_251C70014();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v16);
  v17 = sub_251C6FAE4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 startDate];
  sub_251C6FFE4();

  v32 = a1;
  v22 = [a1 endDate];
  sub_251C6FFE4();

  v23 = v29;
  sub_251C6FA94();
  v24 = v28;
  sub_251C224C0(v23, v9, &qword_27F478D90, v28);
  v36 = v20;
  sub_251C1FCBC(sub_251C2253C, v35, v12);
  sub_251C22350(v9, &qword_27F478D90, v30, v24);
  v25 = *(v18 + 48);
  if (v25(v12, 1, v17) == 1)
  {
    (*(v18 + 16))(v14, v20, v17);
    if (v25(v12, 1, v17) != 1)
    {
      sub_251C22350(v12, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
    }
  }

  else
  {
    (*(v18 + 32))(v14, v12, v17);
  }

  (*(v18 + 56))(v14, 0, 1, v17);
  sub_251C22568(v14, v23);
  sub_251C21AAC(v32, v33, v31);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_251C21AAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_251C70014();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0xE000000000000000;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0xE000000000000000;
  *(a3 + 80) = 0u;
  v11 = MEMORY[0x277D84F90];
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0;
  *(a3 + 120) = v11;
  *(a3 + 128) = 0;
  *(a3 + 136) = 256;
  type metadata accessor for PBTimeSeries.Value(0);
  sub_251C703A4();
  v12 = [a1 minimumQuantity];
  if (v12)
  {
    v13 = v12;
    [v12 doubleValueForUnit_];
    v15 = v14;

    *(a3 + 80) = v15;
  }

  v16 = [a1 maximumQuantity];
  if (v16)
  {
    v17 = v16;
    [v16 doubleValueForUnit_];
    v19 = v18;

    *(a3 + 88) = v19;
  }

  v20 = [a1 averageQuantity];
  if (v20)
  {
    v21 = v20;
    [v20 doubleValueForUnit_];
    v23 = v22;

    *(a3 + 96) = v23;
  }

  v24 = [a1 sumQuantity];
  if (v24)
  {
    v25 = v24;
    [v24 doubleValueForUnit_];
    v27 = v26;

    *(a3 + 104) = v27;
  }

  result = [a1 dataCount];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *(a3 + 40) = result;
    v29 = [a1 startDate];
    sub_251C6FFE4();

    v30 = *(*v3 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v31 = sub_251C6FF94();
    v32 = [v30 stringFromDate_];

    v33 = sub_251C70F14();
    v35 = v34;

    result = (*(v8 + 8))(v10, v7);
    *(a3 + 24) = v33;
    *(a3 + 32) = v35;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_251C21D7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 statisticsCount];
  v7 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v7;
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v7 + 24) >> 1)
  {
    if (*(v7 + 16) <= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = *(v7 + 16);
    }

    sub_251C0B6CC(isUniquelyReferenced_nonNull_native, v9, 0);
  }

  v10 = swift_allocObject();
  v10[2] = &v17;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_251C2240C;
  *(v11 + 24) = v10;
  aBlock[4] = sub_251C22418;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251C22090;
  aBlock[3] = &block_descriptor_20;
  v12 = _Block_copy(aBlock);

  [v3 enumeratePopulatedStatisticsWithBlock_];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v15 = v17;

    return v15;
  }

  return result;
}

uint64_t sub_251C21F38(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v7 = type metadata accessor for PBTimeSeries.Value(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(a1);
  v11 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_251C0B6CC(0, *(v11 + 16) + 1, 1);
    v11 = *a3;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_251C0B6CC((v13 > 1), v14 + 1, 1);
    v11 = *a3;
  }

  *(v11 + 16) = v14 + 1;
  return sub_251C22458(v10, v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, type metadata accessor for PBTimeSeries.Value);
}

void sub_251C22090(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_251C2210C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251B0DD74(255);
    a3(255);
    sub_251C22230(&qword_27F479E30, sub_251B0DD74, MEMORY[0x277CBCD90]);
    v5 = sub_251C70784();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t objectdestroyTm_10()
{

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_251C22230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251C22278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251C222E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C22350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_251C22278(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_251C223AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251C22458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C224C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_251C22278(0, a3, MEMORY[0x277CC88A8], a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251C22568(uint64_t a1, uint64_t a2)
{
  sub_251C22278(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_251C225FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C4C774(MEMORY[0x277D84F90]);
  v45 = a1;
  v5 = (*(a2 + 16))(a1, a2);
  v6 = 0;
  v7 = v5 + 64;
  v47 = v5 + 64;
  v48 = v5;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v46 = a2;
  while (v10)
  {
    v15 = v6;
LABEL_17:
    v18 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v19 = v18 | (v15 << 6);
    v20 = (*(v48 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    sub_251A823B4(*(v48 + 56) + 40 * v19, v49);
    *&v50 = v22;
    *(&v50 + 1) = v21;
    sub_251A7E8D8(v49, &v51);

LABEL_18:
    v54 = v50;
    v55[0] = v51;
    v55[1] = v52;
    v56 = v53;
    v23 = *(&v50 + 1);
    if (!*(&v50 + 1))
    {

      return v4;
    }

    v24 = v54;
    sub_251A7E8D8(v55, &v50);
    v25 = *(&v51 + 1);
    v26 = v52;
    __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
    if ((*(v26 + 16))(v25, v26) & 1) == 0 || ((*(v46 + 24))(v45))
    {
      v27 = *(&v51 + 1);
      v28 = v52;
      __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      v29 = (*(v28 + 8))(v27, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v49[0] = v4;
      v31 = v24;
      v32 = sub_251AC8C58(v24, v23);
      v34 = v4[2];
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        goto LABEL_35;
      }

      v38 = v33;
      if (v4[3] >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_26;
        }

        v43 = v32;
        sub_251ACF864();
        v32 = v43;
        if (v38)
        {
          goto LABEL_4;
        }

LABEL_27:
        v4 = *&v49[0];
        *(*&v49[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
        v40 = (v4[6] + 16 * v32);
        *v40 = v31;
        v40[1] = v23;
        *(v4[7] + 8 * v32) = v29;
        v41 = v4[2];
        v36 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v36)
        {
          goto LABEL_36;
        }

        v4[2] = v42;
      }

      else
      {
        sub_251ACC740(v37, isUniquelyReferenced_nonNull_native);
        v32 = sub_251AC8C58(v31, v23);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_37;
        }

LABEL_26:
        if ((v38 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_4:
        v12 = v32;

        v4 = *&v49[0];
        v13 = *(*&v49[0] + 56);
        v14 = *(v13 + 8 * v12);
        *(v13 + 8 * v12) = v29;
      }

      v7 = v47;
      goto LABEL_6;
    }

LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(&v50);
  }

  if (v11 <= v6 + 1)
  {
    v16 = v6 + 1;
  }

  else
  {
    v16 = v11;
  }

  v17 = v16 - 1;
  while (1)
  {
    v15 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      v10 = 0;
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      v6 = v17;
      v50 = 0u;
      goto LABEL_18;
    }

    v10 = *(v7 + 8 * v15);
    ++v6;
    if (v10)
    {
      v6 = v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_251C71A14();
  __break(1u);
  return result;
}

void sub_251C22968(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 8))(v4, v5);
  v6 = sub_251C70EE4();

  sub_251A823B4(a1, v10);
  v7 = swift_allocObject();
  sub_251A7E8D8(v10, v7 + 16);
  aBlock[4] = sub_251C22AA0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251C22AE4;
  aBlock[3] = &block_descriptor_21;
  v8 = _Block_copy(aBlock);

  LOBYTE(v4) = AnalyticsSendEventLazy();
  _Block_release(v8);

  *a2 = v4;
}

void *sub_251C22AA0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return sub_251C225FC(v1, v2);
}

id sub_251C22AE4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_251B1B1EC();
    v4 = sub_251C70E44();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251C22B88(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_251C22DB8;
  *(v8 + 24) = v6;
  v9 = *v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_251C22DC4;
  *(v10 + 24) = v8;
  v13[4] = sub_251C22DCC;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_251AD9914;
  v13[3] = &block_descriptor_12_0;
  v11 = _Block_copy(v13);

  [v9 isImproveHealthRecordsAnalyticsSubmissionAllowedWithCompletion_];
  _Block_release(v11);
}

void sub_251C22CF0(char a1, id a2, void (*a3)(uint64_t, _BOOL8))
{
  if (a1 == 2)
  {
    v5 = a2;
    if (!a2)
    {
      sub_251AC6624();
      v5 = swift_allocError();
      v7 = v6;
      a2 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
    }

    v8 = a2;
  }

  else
  {
    v5 = a1 & 1;
  }

  v9 = a1 == 2;
  a3(v5, v9);

  sub_251C22DD4(v5, v9);
}

void sub_251C22DD4(id a1, char a2)
{
  if (a2)
  {
  }
}

char *sub_251C22DE8()
{
  v1 = [v0 codings];
  sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
  v2 = sub_251C71154();

  v28 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25308D460](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 codingSystem];
      v9 = [objc_opt_self() RxNormCodeSystem];
      v10 = v9;
      if (v8)
      {
        if (v9)
        {
          sub_251A8223C(0, &qword_27F47C6A0, 0x277CCD5D0);
          v11 = sub_251C71534();

          if (v11)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      else
      {
        if (!v9)
        {
LABEL_17:
          sub_251C71734();
          sub_251C71774();
          sub_251C71784();
          sub_251C71744();
          goto LABEL_6;
        }
      }

LABEL_6:
      ++v4;
      if (v7 == i)
      {
        v12 = v28;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_24:

  if ((v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
  {
    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_27;
    }

LABEL_46:
    v15 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

LABEL_45:
  v13 = sub_251C717F4();
  if (!v13)
  {
    goto LABEL_46;
  }

LABEL_27:
  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  do
  {
    v16 = v14;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x25308D460](v16, v12);
      }

      else
      {
        if (v16 >= *(v12 + 16))
        {
          goto LABEL_44;
        }

        v17 = *(v12 + 8 * v16 + 32);
      }

      v18 = v17;
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v19 = [v17 code];
      if (v19)
      {
        break;
      }

      ++v16;
      if (v14 == v13)
      {
        goto LABEL_47;
      }
    }

    v20 = v19;
    v21 = sub_251C70F14();
    v23 = v22;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_251C38CCC(0, *(v15 + 2) + 1, 1, v15);
    }

    v25 = *(v15 + 2);
    v24 = *(v15 + 3);
    if (v25 >= v24 >> 1)
    {
      v15 = sub_251C38CCC((v24 > 1), v25 + 1, 1, v15);
    }

    *(v15 + 2) = v25 + 1;
    v26 = &v15[16 * v25];
    *(v26 + 4) = v21;
    *(v26 + 5) = v23;
  }

  while (v14 != v13);
LABEL_47:

  return v15;
}

void sub_251C23144(uint64_t a1@<X8>)
{
  sub_251A7E9FC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_251C23188(uint64_t a1@<X8>)
{
  sub_251A7E9FC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_251C231C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251AB99F4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_251C23210()
{
  result = qword_27F47C6A8;
  if (!qword_27F47C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C6A8);
  }

  return result;
}

unint64_t sub_251C23268()
{
  result = qword_27F47C6B0;
  if (!qword_27F47C6B0)
  {
    sub_251C232C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C6B0);
  }

  return result;
}

void sub_251C232C0()
{
  if (!qword_27F47C6B8)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C6B8);
    }
  }
}

unint64_t sub_251C23314()
{
  result = qword_27F47C6C0;
  if (!qword_27F47C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C6C0);
  }

  return result;
}

unint64_t sub_251C2336C()
{
  result = qword_27F47C6C8;
  if (!qword_27F47C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C6C8);
  }

  return result;
}

uint64_t sub_251C233C0()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2880);
  __swift_project_value_buffer(v0, qword_27F4A2880);
  sub_251ADA5E0(0);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "NODE_TYPE_X";
  *(v7 + 8) = 11;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "ROOT";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "CATEGORY";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "RECORD";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251C235EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F478938 != -1)
  {
    swift_once();
  }

  v2 = sub_251C706D4();
  v3 = __swift_project_value_buffer(v2, qword_27F4A2880);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double sub_251C23694@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3 >> 60 == 15)
  {
    sub_251ACFFE4();
    v4 = swift_allocError();
    swift_willThrow();
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v6 = sub_251C70764();
    __swift_project_value_buffer(v6, qword_2813E8130);
    v7 = v4;
    v8 = sub_251C70744();
    v9 = sub_251C713D4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v17 = v11;
      *v10 = 136315138;
      v18 = v4;
      v12 = v4;
      sub_251A82284();
      v13 = sub_251C70F74();
      v15 = sub_251B10780(v13, v14, &v17);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_251A6C000, v8, v9, "Could not retrieve ClinicalSharingGraphMetadata: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x25308E2B0](v11, -1, -1);
      MEMORY[0x25308E2B0](v10, -1, -1);
    }

    else
    {
    }

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v5 = *a1;
    sub_251C6F9F4();
    swift_allocObject();
    sub_251A858C4(v5, v3);
    sub_251C6F9E4();
    sub_251C238F4();
    sub_251C6F9D4();
    sub_251A8596C(v5, v3);

    result = *&v17;
    *a2 = v17;
  }

  return result;
}

unint64_t sub_251C238F4()
{
  result = qword_2813E3788;
  if (!qword_2813E3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E3788);
  }

  return result;
}

uint64_t sub_251C23948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a1;
  v36 = a4;
  v37 = a2;
  v38 = a3;
  v34 = type metadata accessor for PBBlobAuth(0);
  v41 = *(v34 - 8);
  v6 = MEMORY[0x28223BE20](v34);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = type metadata accessor for PBDeleteBlobs(0);
  v33 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703A4();
  v14 = type metadata accessor for PBDeleteBlobsRequest(0);
  v15 = *(v14 + 20);
  v16 = *(v11 + 56);
  v16(a5 + v15, 1, 1, v10);
  v17 = *(v14 + 24);
  v18 = *(v41 + 56);
  v41 += 56;
  v35 = v18;
  v19 = v34;
  v18(a5 + v17, 1, 1, v34);
  sub_251C23DD4(v40, v13, type metadata accessor for PBDeleteBlobs);
  sub_251C23E3C(a5 + v15, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  v20 = v36;
  sub_251C23EEC(v13, a5 + v15, type metadata accessor for PBDeleteBlobs);
  v16(a5 + v15, 0, 1, v33);
  v22 = v37;
  v21 = v38;
  *(v9 + 8) = xmmword_251C745D0;
  v23 = v19;
  sub_251C703A4();
  v24 = *(v9 + 1);
  v25 = *(v9 + 2);
  sub_251A858C4(v21, v20);
  sub_251A83028(v24, v25);
  *v9 = v22;
  *(v9 + 1) = v21;
  *(v9 + 2) = v20;
  *(v9 + 3) = 0x6977363532414853;
  *(v9 + 4) = 0xEF41534443456874;
  v26 = v39;
  sub_251C23DD4(v9, v39, type metadata accessor for PBBlobAuth);

  sub_251C23E3C(a5 + v17, qword_2813E7028, type metadata accessor for PBBlobAuth);
  sub_251C23EEC(v26, a5 + v17, type metadata accessor for PBBlobAuth);
  v35(a5 + v17, 0, 1, v23);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v27 = sub_251C70764();
  __swift_project_value_buffer(v27, qword_2813E8130);

  sub_251A858C4(v21, v20);
  v28 = sub_251C70744();
  v29 = sub_251C713C4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    *(v30 + 4) = *(v22 + 16);

    sub_251A83028(v21, v20);
    _os_log_impl(&dword_251A6C000, v28, v29, "Generated PBDeleteBlobsRequest containing number of certs: %ld", v30, 0xCu);
    MEMORY[0x25308E2B0](v30, -1, -1);

    sub_251A83028(v21, v20);
  }

  else
  {

    sub_251A83028(v21, v20);

    sub_251A83028(v21, v20);
  }

  sub_251C23F54(v40, type metadata accessor for PBDeleteBlobs);
  return sub_251C23F54(v9, type metadata accessor for PBBlobAuth);
}

uint64_t sub_251C23DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C23E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C23E98(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251C23E98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251C23EEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C23F54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251C23FB4(unint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  return result;
}

char *sub_251C23FD8(int a1)
{
  v2 = MEMORY[0x277D84F90];
  if (a1)
  {
    swift_beginAccess();
    v2 = sub_251C398FC(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_251C398FC((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 1;
    v5[40] = 1;
    swift_endAccess();
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v7 = *(v2 + 2);
  v6 = *(v2 + 3);
  if (v7 >= v6 >> 1)
  {
    v2 = sub_251C398FC((v6 > 1), v7 + 1, 1, v2);
  }

  *(v2 + 2) = v7 + 1;
  v8 = &v2[16 * v7];
  *(v8 + 4) = 2;
  v8[40] = 1;
  swift_endAccess();
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_32:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_251C398FC((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 3;
  v11[40] = 1;
  swift_endAccess();
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_37:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_251C398FC((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 4;
  v14[40] = 1;
  swift_endAccess();
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_42:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_251C398FC((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 5;
  v17[40] = 1;
  swift_endAccess();
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_47:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_251C398FC((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 6;
  v20[40] = 1;
  swift_endAccess();
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_52:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_251C398FC((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 7;
  v23[40] = 1;
  swift_endAccess();
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_57:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_251C398FC((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 8;
  v26[40] = 1;
  swift_endAccess();
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_67;
  }

LABEL_62:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_251C398FC((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 9;
  v29[40] = 1;
  swift_endAccess();
  if ((a1 & 0x200) == 0)
  {
LABEL_11:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_72;
  }

LABEL_67:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_251C398FC((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 10;
  v32[40] = 1;
  swift_endAccess();
  if ((a1 & 0x400) == 0)
  {
LABEL_12:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_77;
  }

LABEL_72:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_251C398FC((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 11;
  v35[40] = 1;
  swift_endAccess();
  if ((a1 & 0x800) == 0)
  {
LABEL_13:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_82;
  }

LABEL_77:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_251C398FC((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 12;
  v38[40] = 1;
  swift_endAccess();
  if ((a1 & 0x1000) == 0)
  {
LABEL_14:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_87;
  }

LABEL_82:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_251C398FC((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 13;
  v41[40] = 1;
  swift_endAccess();
  if ((a1 & 0x2000) == 0)
  {
LABEL_15:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_92;
  }

LABEL_87:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_251C398FC((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 14;
  v44[40] = 1;
  swift_endAccess();
  if ((a1 & 0x4000) == 0)
  {
LABEL_16:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_97;
  }

LABEL_92:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_251C398FC((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  *(v47 + 4) = 15;
  v47[40] = 1;
  swift_endAccess();
  if ((a1 & 0x8000) == 0)
  {
LABEL_17:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_102;
  }

LABEL_97:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v49 = *(v2 + 2);
  v48 = *(v2 + 3);
  if (v49 >= v48 >> 1)
  {
    v2 = sub_251C398FC((v48 > 1), v49 + 1, 1, v2);
  }

  *(v2 + 2) = v49 + 1;
  v50 = &v2[16 * v49];
  *(v50 + 4) = 16;
  v50[40] = 1;
  swift_endAccess();
  if ((a1 & 0x10000) == 0)
  {
LABEL_18:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_107;
  }

LABEL_102:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v52 = *(v2 + 2);
  v51 = *(v2 + 3);
  if (v52 >= v51 >> 1)
  {
    v2 = sub_251C398FC((v51 > 1), v52 + 1, 1, v2);
  }

  *(v2 + 2) = v52 + 1;
  v53 = &v2[16 * v52];
  *(v53 + 4) = 17;
  v53[40] = 1;
  swift_endAccess();
  if ((a1 & 0x20000) == 0)
  {
LABEL_19:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_112;
  }

LABEL_107:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v55 = *(v2 + 2);
  v54 = *(v2 + 3);
  if (v55 >= v54 >> 1)
  {
    v2 = sub_251C398FC((v54 > 1), v55 + 1, 1, v2);
  }

  *(v2 + 2) = v55 + 1;
  v56 = &v2[16 * v55];
  *(v56 + 4) = 18;
  v56[40] = 1;
  swift_endAccess();
  if ((a1 & 0x40000) == 0)
  {
LABEL_20:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_117;
  }

LABEL_112:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v58 = *(v2 + 2);
  v57 = *(v2 + 3);
  if (v58 >= v57 >> 1)
  {
    v2 = sub_251C398FC((v57 > 1), v58 + 1, 1, v2);
  }

  *(v2 + 2) = v58 + 1;
  v59 = &v2[16 * v58];
  *(v59 + 4) = 19;
  v59[40] = 1;
  swift_endAccess();
  if ((a1 & 0x80000) == 0)
  {
LABEL_21:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_122;
  }

LABEL_117:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v61 = *(v2 + 2);
  v60 = *(v2 + 3);
  if (v61 >= v60 >> 1)
  {
    v2 = sub_251C398FC((v60 > 1), v61 + 1, 1, v2);
  }

  *(v2 + 2) = v61 + 1;
  v62 = &v2[16 * v61];
  *(v62 + 4) = 20;
  v62[40] = 1;
  swift_endAccess();
  if ((a1 & 0x100000) == 0)
  {
LABEL_22:
    if ((a1 & 0x200000) == 0)
    {
      return v2;
    }

    goto LABEL_127;
  }

LABEL_122:
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v64 = *(v2 + 2);
  v63 = *(v2 + 3);
  if (v64 >= v63 >> 1)
  {
    v2 = sub_251C398FC((v63 > 1), v64 + 1, 1, v2);
  }

  *(v2 + 2) = v64 + 1;
  v65 = &v2[16 * v64];
  *(v65 + 4) = 21;
  v65[40] = 1;
  swift_endAccess();
  if ((a1 & 0x200000) != 0)
  {
LABEL_127:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_251C398FC(0, *(v2 + 2) + 1, 1, v2);
    }

    v67 = *(v2 + 2);
    v66 = *(v2 + 3);
    if (v67 >= v66 >> 1)
    {
      v2 = sub_251C398FC((v66 > 1), v67 + 1, 1, v2);
    }

    *(v2 + 2) = v67 + 1;
    v68 = &v2[16 * v67];
    *(v68 + 4) = 22;
    v68[40] = 1;
  }

  return v2;
}

uint64_t sub_251C24D54(uint64_t a1, uint64_t a2)
{
  v252 = a2;
  v3 = sub_251C702E4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v245 = (&v232 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v237 = &v232 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v236 = &v232 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v249 = (&v232 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v248 = (&v232 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v247 = (&v232 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v235 = &v232 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v246 = (&v232 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v240 = (&v232 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v244 = (&v232 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v243 = (&v232 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v242 = (&v232 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v234 = &v232 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v241 = (&v232 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = (&v232 - v34);
  v36 = MEMORY[0x28223BE20](v33);
  v239 = (&v232 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = (&v232 - v39);
  v41 = MEMORY[0x28223BE20](v38);
  v238 = (&v232 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v233 = (&v232 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = (&v232 - v46);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = (&v232 - v49);
  MEMORY[0x28223BE20](v48);
  v52 = (&v232 - v51);
  v53 = *MEMORY[0x277CCB8C8];
  v54 = sub_251C264F0();
  v55 = v53;
  v250 = v54;
  v56 = MEMORY[0x25308D1B0](v55);
  *v52 = v56;
  v57 = *(v4 + 104);
  v256 = *MEMORY[0x277D112F0];
  v254 = v57;
  v255 = v4 + 104;
  (v57)(v52);
  if (*(a1 + 16))
  {
    v58 = v56;
    v59 = sub_251AC8AFC(v252);
    if (v60)
    {
      v61 = *(*(a1 + 56) + 8 * v59);

      v62 = sub_251C5DBC0(v52, v61);
      v232 = v40;
      v63 = v35;
      v64 = v62;

      v253 = *(v4 + 8);
      v253(v52, v3);
      v65 = v64 & 1;
      v35 = v63;
      v40 = v232;
      v251 = v65;
      goto LABEL_6;
    }
  }

  v253 = *(v4 + 8);
  v253(v52, v3);
  v251 = 0;
LABEL_6:
  v66 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB8D0]);
  *v50 = v66;
  (v254)(v50, v256, v3);
  v67 = v234;
  if (!*(a1 + 16))
  {
LABEL_12:
    v253(v50, v3);
    goto LABEL_13;
  }

  v68 = v66;
  v69 = sub_251AC8AFC(v252);
  if ((v70 & 1) == 0)
  {

    goto LABEL_12;
  }

  v71 = *(*(a1 + 56) + 8 * v69);

  v72 = sub_251C5DBC0(v50, v71);

  v253(v50, v3);
  v73 = v251;
  v67 = v234;
  if (v72)
  {
    v73 = v251 | 2;
  }

  v251 = v73;
LABEL_13:
  v74 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB8D8]);
  *v47 = v74;
  (v254)(v47, v256, v3);
  if (!*(a1 + 16))
  {
LABEL_19:
    v253(v47, v3);
    goto LABEL_20;
  }

  v75 = v74;
  v76 = sub_251AC8AFC(v252);
  if ((v77 & 1) == 0)
  {

    goto LABEL_19;
  }

  v78 = *(*(a1 + 56) + 8 * v76);

  v79 = sub_251C5DBC0(v47, v78);

  v253(v47, v3);
  v80 = v251;
  if (v79)
  {
    v80 = v251 | 4;
  }

  v251 = v80;
LABEL_20:
  v81 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB908]);
  v82 = v233;
  *v233 = v81;
  (v254)(v82, v256, v3);
  if (!*(a1 + 16))
  {
LABEL_26:
    v253(v82, v3);
    goto LABEL_27;
  }

  v83 = v81;
  v84 = sub_251AC8AFC(v252);
  if ((v85 & 1) == 0)
  {

    goto LABEL_26;
  }

  v86 = *(*(a1 + 56) + 8 * v84);

  v87 = sub_251C5DBC0(v82, v86);

  v253(v82, v3);
  v88 = v251;
  if (v87)
  {
    v88 = v251 | 8;
  }

  v251 = v88;
LABEL_27:
  v89 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB910]);
  *v238 = v89;
  v254();
  if (!*(a1 + 16))
  {
LABEL_33:
    v253(v238, v3);
    goto LABEL_34;
  }

  v90 = v89;
  v91 = sub_251AC8AFC(v252);
  if ((v92 & 1) == 0)
  {

    goto LABEL_33;
  }

  v93 = *(*(a1 + 56) + 8 * v91);

  v94 = v238;
  v95 = sub_251C5DBC0(v238, v93);

  v253(v94, v3);
  v96 = v251;
  if (v95)
  {
    v96 = v251 | 0x10;
  }

  v251 = v96;
LABEL_34:
  v97 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB930]);
  *v40 = v97;
  (v254)(v40, v256, v3);
  if (!*(a1 + 16))
  {
LABEL_40:
    v253(v40, v3);
    goto LABEL_41;
  }

  v98 = v97;
  v99 = sub_251AC8AFC(v252);
  if ((v100 & 1) == 0)
  {

    goto LABEL_40;
  }

  v101 = *(*(a1 + 56) + 8 * v99);

  v102 = sub_251C5DBC0(v40, v101);

  v253(v40, v3);
  v103 = v251;
  if (v102)
  {
    v103 = v251 | 0x20;
  }

  v251 = v103;
LABEL_41:
  v104 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB948]);
  *v239 = v104;
  v254();
  if (!*(a1 + 16))
  {
LABEL_47:
    v253(v239, v3);
    goto LABEL_48;
  }

  v105 = v104;
  v106 = sub_251AC8AFC(v252);
  if ((v107 & 1) == 0)
  {

    goto LABEL_47;
  }

  v108 = *(*(a1 + 56) + 8 * v106);

  v109 = v239;
  v110 = sub_251C5DBC0(v239, v108);

  v253(v109, v3);
  v111 = v251;
  if (v110)
  {
    v111 = v251 | 0x40;
  }

  v251 = v111;
LABEL_48:
  v112 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB998]);
  *v35 = v112;
  (v254)(v35, v256, v3);
  if (!*(a1 + 16))
  {
LABEL_54:
    v253(v35, v3);
    goto LABEL_55;
  }

  v113 = v112;
  v114 = sub_251AC8AFC(v252);
  if ((v115 & 1) == 0)
  {

    goto LABEL_54;
  }

  v116 = *(*(a1 + 56) + 8 * v114);

  v117 = sub_251C5DBC0(v35, v116);

  v253(v35, v3);
  v118 = v251;
  if (v117)
  {
    v118 = v251 | 0x80;
  }

  v251 = v118;
LABEL_55:
  v119 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB9C0]);
  *v241 = v119;
  v254();
  if (!*(a1 + 16))
  {
LABEL_61:
    v253(v241, v3);
    goto LABEL_62;
  }

  v120 = v119;
  v121 = sub_251AC8AFC(v252);
  if ((v122 & 1) == 0)
  {

    goto LABEL_61;
  }

  v123 = *(*(a1 + 56) + 8 * v121);

  v124 = v241;
  v125 = sub_251C5DBC0(v241, v123);

  v253(v124, v3);
  v126 = v251;
  if (v125)
  {
    v126 = v251 | 0x100;
  }

  v251 = v126;
LABEL_62:
  v127 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA18]);
  *v67 = v127;
  (v254)(v67, v256, v3);
  if (!*(a1 + 16))
  {
LABEL_68:
    v253(v67, v3);
    goto LABEL_69;
  }

  v128 = v127;
  v129 = sub_251AC8AFC(v252);
  if ((v130 & 1) == 0)
  {

    goto LABEL_68;
  }

  v131 = *(*(a1 + 56) + 8 * v129);

  v132 = sub_251C5DBC0(v67, v131);

  v253(v67, v3);
  v133 = v251;
  if (v132)
  {
    v133 = v251 | 0x200;
  }

  v251 = v133;
LABEL_69:
  v134 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA38]);
  *v242 = v134;
  v254();
  if (!*(a1 + 16))
  {
LABEL_75:
    v253(v242, v3);
    goto LABEL_76;
  }

  v135 = v134;
  v136 = sub_251AC8AFC(v252);
  if ((v137 & 1) == 0)
  {

    goto LABEL_75;
  }

  v138 = *(*(a1 + 56) + 8 * v136);

  v139 = v242;
  v140 = sub_251C5DBC0(v242, v138);

  v253(v139, v3);
  v141 = v251;
  if (v140)
  {
    v141 = v251 | 0x400;
  }

  v251 = v141;
LABEL_76:
  v142 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA40]);
  *v243 = v142;
  v254();
  if (!*(a1 + 16))
  {
LABEL_82:
    v253(v243, v3);
    goto LABEL_83;
  }

  v143 = v142;
  v144 = sub_251AC8AFC(v252);
  if ((v145 & 1) == 0)
  {

    goto LABEL_82;
  }

  v146 = *(*(a1 + 56) + 8 * v144);

  v147 = v243;
  v148 = sub_251C5DBC0(v243, v146);

  v253(v147, v3);
  v149 = v251;
  if (v148)
  {
    v149 = v251 | 0x800;
  }

  v251 = v149;
LABEL_83:
  v150 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA58]);
  *v244 = v150;
  v254();
  if (!*(a1 + 16))
  {
LABEL_89:
    v253(v244, v3);
    goto LABEL_90;
  }

  v151 = v150;
  v152 = sub_251AC8AFC(v252);
  if ((v153 & 1) == 0)
  {

    goto LABEL_89;
  }

  v154 = *(*(a1 + 56) + 8 * v152);

  v155 = v244;
  v156 = sub_251C5DBC0(v244, v154);

  v253(v155, v3);
  v157 = v251;
  if (v156)
  {
    v157 = v251 | 0x1000;
  }

  v251 = v157;
LABEL_90:
  v158 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBAC8]);
  *v240 = v158;
  v254();
  if (!*(a1 + 16))
  {
LABEL_96:
    v253(v240, v3);
    goto LABEL_97;
  }

  v159 = v158;
  v160 = sub_251AC8AFC(v252);
  if ((v161 & 1) == 0)
  {

    goto LABEL_96;
  }

  v162 = *(*(a1 + 56) + 8 * v160);

  v163 = v240;
  v164 = sub_251C5DBC0(v240, v162);

  v253(v163, v3);
  v165 = v251;
  if (v164)
  {
    v165 = v251 | 0x2000;
  }

  v251 = v165;
LABEL_97:
  v166 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB970]);
  *v246 = v166;
  v254();
  v167 = v235;
  if (!*(a1 + 16))
  {
LABEL_103:
    v253(v246, v3);
    goto LABEL_104;
  }

  v168 = v166;
  v169 = sub_251AC8AFC(v252);
  if ((v170 & 1) == 0)
  {

    goto LABEL_103;
  }

  v171 = *(*(a1 + 56) + 8 * v169);

  v172 = v246;
  v173 = sub_251C5DBC0(v246, v171);

  v174 = v172;
  v167 = v235;
  v253(v174, v3);
  v175 = v251;
  if (v173)
  {
    v175 = v251 | 0x4000;
  }

  v251 = v175;
LABEL_104:
  v176 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBAE8]);
  *v167 = v176;
  (v254)(v167, v256, v3);
  if (!*(a1 + 16))
  {
LABEL_110:
    v253(v167, v3);
    goto LABEL_111;
  }

  v177 = v176;
  v178 = sub_251AC8AFC(v252);
  if ((v179 & 1) == 0)
  {

    goto LABEL_110;
  }

  v180 = *(*(a1 + 56) + 8 * v178);

  v181 = sub_251C5DBC0(v167, v180);

  v253(v167, v3);
  v182 = v251;
  if (v181)
  {
    v182 = v251 | 0x8000;
  }

  v251 = v182;
LABEL_111:
  v183 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA48]);
  *v247 = v183;
  v254();
  v184 = v236;
  if (!*(a1 + 16))
  {
LABEL_117:
    v253(v247, v3);
    goto LABEL_118;
  }

  v185 = v183;
  v186 = sub_251AC8AFC(v252);
  if ((v187 & 1) == 0)
  {

    goto LABEL_117;
  }

  v188 = *(*(a1 + 56) + 8 * v186);

  v189 = v247;
  v190 = sub_251C5DBC0(v247, v188);

  v191 = v189;
  v184 = v236;
  v253(v191, v3);
  v192 = v251;
  if (v190)
  {
    v192 = v251 | 0x10000;
  }

  v251 = v192;
LABEL_118:
  v193 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB928]);
  *v248 = v193;
  v254();
  if (!*(a1 + 16))
  {
LABEL_124:
    v253(v248, v3);
    goto LABEL_125;
  }

  v194 = v193;
  v195 = sub_251AC8AFC(v252);
  if ((v196 & 1) == 0)
  {

    goto LABEL_124;
  }

  v197 = *(*(a1 + 56) + 8 * v195);

  v198 = v248;
  v199 = sub_251C5DBC0(v248, v197);

  v253(v198, v3);
  v200 = v251;
  if (v199)
  {
    v200 = v251 | 0x20000;
  }

  v251 = v200;
LABEL_125:
  v201 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB988]);
  *v249 = v201;
  v254();
  v202 = v237;
  if (!*(a1 + 16))
  {
LABEL_131:
    v253(v249, v3);
    goto LABEL_132;
  }

  v203 = v201;
  v204 = sub_251AC8AFC(v252);
  if ((v205 & 1) == 0)
  {

    goto LABEL_131;
  }

  v206 = *(*(a1 + 56) + 8 * v204);

  v207 = v249;
  v208 = sub_251C5DBC0(v249, v206);

  v209 = v207;
  v202 = v237;
  v253(v209, v3);
  v210 = v251;
  if (v208)
  {
    v210 = v251 | 0x40000;
  }

  v251 = v210;
LABEL_132:
  v211 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB958]);
  *v184 = v211;
  (v254)(v184, v256, v3);
  if (!*(a1 + 16))
  {
LABEL_138:
    v253(v184, v3);
    v217 = v251;
    goto LABEL_139;
  }

  v212 = v211;
  v213 = sub_251AC8AFC(v252);
  if ((v214 & 1) == 0)
  {

    goto LABEL_138;
  }

  v215 = *(*(a1 + 56) + 8 * v213);

  v216 = sub_251C5DBC0(v184, v215);

  v253(v184, v3);
  v217 = v251;
  if (v216)
  {
    v217 = v251 | 0x80000;
  }

LABEL_139:
  v218 = MEMORY[0x25308D1B0](*MEMORY[0x277CCB8F0]);
  *v202 = v218;
  (v254)(v202, v256, v3);
  if (!*(a1 + 16))
  {
LABEL_145:
    v253(v202, v3);
    goto LABEL_146;
  }

  v219 = v218;
  v220 = sub_251AC8AFC(v252);
  if ((v221 & 1) == 0)
  {

    goto LABEL_145;
  }

  v222 = *(*(a1 + 56) + 8 * v220);

  v223 = sub_251C5DBC0(v202, v222);

  v253(v202, v3);
  if (v223)
  {
    v217 |= 0x100000uLL;
  }

LABEL_146:
  v224 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA20]);
  *v245 = v224;
  v254();
  if (!*(a1 + 16))
  {
LABEL_152:
    v253(v245, v3);
    return v217;
  }

  v225 = v224;
  v226 = sub_251AC8AFC(v252);
  if ((v227 & 1) == 0)
  {

    goto LABEL_152;
  }

  v228 = *(*(a1 + 56) + 8 * v226);

  v229 = v245;
  v230 = sub_251C5DBC0(v245, v228);

  v253(v229, v3);
  if (v230)
  {
    return v217 | 0x200000;
  }

  return v217;
}

unint64_t sub_251C264F0()
{
  result = qword_27F479E00;
  if (!qword_27F479E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479E00);
  }

  return result;
}

uint64_t sub_251C2653C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v209 = a1;
  v189 = a3;
  v216 = *MEMORY[0x277D85DE8];
  v186 = sub_251C70F64();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v188 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251C6F9A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C6FB44();
  v197 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v192 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C27AE4(0, &qword_2813E7520, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v13 - 8);
  v195 = &v170 - v14;
  v196 = sub_251C6FE64();
  v204 = *(v196 - 8);
  v15 = MEMORY[0x28223BE20](v196);
  v190 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v191 = &v170 - v17;
  sub_251C27AE4(0, &qword_27F47C6D0, MEMORY[0x277CC8918]);
  MEMORY[0x28223BE20](v18 - 8);
  v203 = &v170 - v19;
  v207 = sub_251C6FB04();
  v202 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v206 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C27AE4(0, &qword_27F47C6D8, MEMORY[0x277CC8958]);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v170 - v22;
  if ([v4 minCompatibleAPIVersion] < 6)
  {
    v24 = [v4 minCompatibleAPIVersion];
    sub_251A82AF0();
    swift_allocError();
    *v25 = v24;
    *(v25 + 8) = 0;
    v26 = 1;
LABEL_15:
    *(v25 + 16) = v26;
    return swift_willThrow();
  }

  if (![v4 enabled])
  {
    sub_251A82AF0();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    v26 = 8;
    goto LABEL_15;
  }

  v176 = v11;
  v173 = a2;
  v187 = v23;
  v194 = v10;
  v171 = v8;
  v172 = v7;
  v179 = v4;
  v27 = [v4 URL];
  v28 = sub_251C70F14();
  v30 = v29;

  v31 = v209 + 64;
  v32 = 1 << *(v209 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v209 + 64);
  v35 = (v32 + 63) >> 6;

  v36 = 0;
  v205 = v30;
  k = v30;
  v208 = v31;
  if (v34)
  {
    while (1)
    {
      v38 = v36;
LABEL_12:
      v39 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v40 = (v38 << 10) | (16 * v39);
      v41 = (*(v209 + 48) + v40);
      v42 = *v41;
      v30 = v41[1];
      v43 = (*(v209 + 56) + v40);
      v45 = *v43;
      v44 = v43[1];
      v214 = v28;
      v215 = k;
      v212 = 31611;
      v213 = 0xE200000000000000;

      MEMORY[0x25308CDA0](v42, v30);
      MEMORY[0x25308CDA0](32125, 0xE200000000000000);
      v210 = v45;
      v211 = v44;
      sub_251AD87E0();
      v28 = sub_251C715A4();
      v47 = v46;

      k = v47;
      v31 = v208;
      if (!v34)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v38 >= v35)
    {
      break;
    }

    v34 = *(v31 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      goto LABEL_12;
    }
  }

  v49 = v187;
  sub_251C6FB34();

  v50 = [v179 query];
  if (v50)
  {
    v51 = v50;
    sub_251B10CF0();
    v30 = sub_251C71154();

    v52 = *(v197 + 48);
    v174 = (v197 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v175 = v52;
    v53 = v52(v49, 1, v176);
    v34 = v194;
    k = v204;
    if (v53)
    {
    }

    else
    {
      if (v30 >> 62)
      {
        goto LABEL_64;
      }

      for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
      {
        v56 = 0;
        v183 = v30 & 0xC000000000000001;
        v182 = v30 & 0xFFFFFFFFFFFFFF8;
        v181 = v30 + 32;
        v180 = (v202 + 56);
        v201 = (v202 + 32);
        v205 = MEMORY[0x277D84F90];
        v178 = v30;
        v177 = i;
        while (1)
        {
LABEL_24:
          if (v183)
          {
            v58 = MEMORY[0x25308D460](v56, v30);
          }

          else
          {
            if (v56 >= *(v182 + 16))
            {
              goto LABEL_63;
            }

            v58 = *(v181 + 8 * v56);
          }

          v59 = v58;
          if (__OFADD__(v56++, 1))
          {
            break;
          }

          v61 = [v58 literal];
          if (v61)
          {
            v200 = v56;
            v62 = v59;
            v63 = v61;
            v64 = sub_251C70F14();
            v30 = v65;

            v199 = v62;
            v66 = [v62 param];
            v184 = sub_251C70F14();
            v198 = v67;

            v68 = 1 << *(v209 + 32);
            if (v68 < 64)
            {
              v69 = ~(-1 << v68);
            }

            else
            {
              v69 = -1;
            }

            k = v69 & *(v209 + 64);
            v34 = (v68 + 63) >> 6;

            for (j = 0; k; v31 = v208)
            {
              v71 = j;
LABEL_38:
              v72 = __clz(__rbit64(k));
              k &= k - 1;
              v73 = (v71 << 10) | (16 * v72);
              v74 = (*(v209 + 48) + v73);
              v76 = *v74;
              v75 = v74[1];
              v77 = (*(v209 + 56) + v73);
              v79 = *v77;
              v78 = v77[1];
              v214 = v64;
              v215 = v30;
              v212 = 31611;
              v213 = 0xE200000000000000;

              MEMORY[0x25308CDA0](v76, v75);
              MEMORY[0x25308CDA0](32125, 0xE200000000000000);
              v210 = v79;
              v211 = v78;
              sub_251AD87E0();
              v64 = sub_251C715A4();
              v81 = v80;

              v30 = v81;
            }

            while (1)
            {
              v71 = j + 1;
              if (__OFADD__(j, 1))
              {
                break;
              }

              if (v71 >= v34)
              {
                goto LABEL_52;
              }

              k = *(v31 + 8 * v71);
              ++j;
              if (k)
              {
                j = v71;
                goto LABEL_38;
              }
            }

            __break(1u);
            goto LABEL_60;
          }

          v82 = [v59 variable];
          if (v82)
          {
            v200 = v56;
            v83 = v59;
            v84 = v82;
            v85 = sub_251C70F14();
            v87 = v86;

            v199 = v83;
            v88 = [v83 param];
            v184 = sub_251C70F14();
            v198 = v89;

            v214 = 31611;
            v215 = 0xE200000000000000;
            MEMORY[0x25308CDA0](v85, v87);

            MEMORY[0x25308CDA0](32125, 0xE200000000000000);
            v90 = v214;
            v30 = v215;
            v91 = 1 << *(v209 + 32);
            if (v91 < 64)
            {
              v92 = ~(-1 << v91);
            }

            else
            {
              v92 = -1;
            }

            v34 = v92 & *(v209 + 64);
            v93 = (v91 + 63) >> 6;

            for (k = 0; v34; v31 = v208)
            {
              v94 = k;
LABEL_50:
              v95 = __clz(__rbit64(v34));
              v34 &= v34 - 1;
              v96 = (v94 << 10) | (16 * v95);
              v97 = (*(v209 + 48) + v96);
              v99 = *v97;
              v98 = v97[1];
              v100 = (*(v209 + 56) + v96);
              v102 = *v100;
              v101 = v100[1];
              v214 = v90;
              v215 = v30;
              v212 = 31611;
              v213 = 0xE200000000000000;

              MEMORY[0x25308CDA0](v99, v98);
              MEMORY[0x25308CDA0](32125, 0xE200000000000000);
              v210 = v102;
              v211 = v101;
              sub_251AD87E0();
              v90 = sub_251C715A4();
              v104 = v103;

              v30 = v104;
            }

            while (1)
            {
              v94 = k + 1;
              if (__OFADD__(k, 1))
              {
                goto LABEL_61;
              }

              if (v94 >= v93)
              {
LABEL_52:

                v105 = v203;
                sub_251C6FAF4();

                v106 = v207;
                (*v180)(v105, 0, 1, v207);
                v107 = *v201;
                (*v201)(v206, v105, v106);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v34 = v194;
                k = v204;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v205 = sub_251C38F68(0, v205[2] + 1, 1, v205);
                }

                v30 = v178;
                v110 = v205[2];
                v109 = v205[3];
                if (v110 >= v109 >> 1)
                {
                  v205 = sub_251C38F68((v109 > 1), v110 + 1, 1, v205);
                }

                v112 = v205;
                v111 = v206;
                v205[2] = v110 + 1;
                v107(v112 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v110, v111, v207);
                i = v177;
                v56 = v200;
                if (v200 != v177)
                {
                  goto LABEL_24;
                }

                goto LABEL_66;
              }

              v34 = *(v31 + 8 * v94);
              ++k;
              if (v34)
              {
                k = v94;
                goto LABEL_50;
              }
            }
          }

          v57 = v203;
          (*v180)(v203, 1, 1, v207);
          sub_251C27B38(v57, &qword_27F47C6D0, MEMORY[0x277CC8918]);
          if (v56 == i)
          {
            goto LABEL_66;
          }
        }

LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        ;
      }

      v205 = MEMORY[0x277D84F90];
LABEL_66:

      sub_251C6FB14();
    }

    v54 = v175;
  }

  else
  {
    v54 = *(v197 + 48);
    v34 = v194;
    k = v204;
  }

  v113 = v187;
  v114 = v176;
  if (v54(v187, 1, v176))
  {
    v115 = v195;
    (*(k + 56))(v195, 1, 1, v196);
LABEL_71:
    sub_251C27B38(v115, &qword_2813E7520, MEMORY[0x277CC9260]);
    v122 = [v179 URL];
    v123 = sub_251C70F14();
    v125 = v124;

    sub_251A82AF0();
    swift_allocError();
    *v126 = v123;
    *(v126 + 8) = v125;
    *(v126 + 16) = 0;
    swift_willThrow();
    return sub_251C27B38(v187, &qword_27F47C6D8, MEMORY[0x277CC8958]);
  }

  v116 = v197;
  v117 = v192;
  (*(v197 + 16))(v192, v113, v114);
  v118 = v195;
  sub_251C6FB24();
  v119 = v114;
  v115 = v118;
  (*(v116 + 8))(v117, v119);
  v120 = v118;
  v121 = v196;
  if ((*(k + 48))(v120, 1, v196) == 1)
  {
    goto LABEL_71;
  }

  v127 = v191;
  (*(k + 32))(v191, v115, v121);
  (*(k + 16))(v190, v127, v121);
  sub_251C6F954();
  sub_251C6F924();
  v128 = [v179 headers];
  if (v128)
  {
    v129 = v128;
    sub_251B10CF0();
    v130 = sub_251C71154();

    v131 = v209;

    v132 = v193;
    sub_251C27FC0(v130, v34, v131);
    v193 = v132;
  }

  if (v173)
  {
    sub_251C6F994();
    sub_251C6F934();
  }

  v133 = [v179 body];
  if (v133)
  {
    v134 = v133;
    sub_251C70E54();

    v135 = objc_opt_self();
    v136 = sub_251C70E44();

    v214 = 0;
    v137 = [v135 dataWithJSONObject:v136 options:0 error:&v214];

    v138 = v214;
    if (v137)
    {
      v139 = sub_251C6FEE4();
      v141 = v140;

      sub_251C70F54();
      v142 = sub_251C70F34();
      if (v143)
      {
        v144 = v142;
        v145 = v143;
        v205 = v139;
        v206 = v141;
        v146 = 1 << *(v209 + 32);
        v147 = -1;
        if (v146 < 64)
        {
          v147 = ~(-1 << v146);
        }

        v148 = v147 & *(v209 + 64);
        v207 = (v146 + 63) >> 6;

        v149 = 0;
        v203 = v145;
        v150 = v196;
        if (v148)
        {
          while (1)
          {
            v151 = v149;
LABEL_88:
            v152 = __clz(__rbit64(v148));
            v148 &= v148 - 1;
            v153 = (v151 << 10) | (16 * v152);
            v154 = (*(v209 + 48) + v153);
            v155 = *v154;
            v156 = v154[1];
            v157 = (*(v209 + 56) + v153);
            v158 = *v157;
            v159 = v157[1];
            v214 = v144;
            v215 = v145;
            v212 = 31611;
            v213 = 0xE200000000000000;

            MEMORY[0x25308CDA0](v155, v156);
            MEMORY[0x25308CDA0](32125, 0xE200000000000000);
            v210 = v158;
            v211 = v159;
            sub_251AD87E0();
            v144 = sub_251C715A4();
            v145 = v160;

            v31 = v208;
            v150 = v196;
            if (!v148)
            {
              goto LABEL_84;
            }
          }
        }

        while (1)
        {
LABEL_84:
          v151 = v149 + 1;
          if (__OFADD__(v149, 1))
          {
            __break(1u);
          }

          if (v151 >= v207)
          {
            break;
          }

          v148 = *(v31 + 8 * v151);
          ++v149;
          if (v148)
          {
            v149 = v151;
            goto LABEL_88;
          }
        }

        v161 = v188;
        sub_251C70F54();
        sub_251C70F24();
        v163 = v162;

        (*(v185 + 8))(v161, v186);
        if (v163 >> 60 == 15)
        {
          sub_251A82AF0();
          swift_allocError();
          *v164 = xmmword_251C84430;
          *(v164 + 16) = 8;
          swift_willThrow();
          sub_251A83028(v205, v206);
          (*(v204 + 8))(v191, v150);
          (*(v171 + 8))(v34, v172);
          return sub_251C27B38(v187, &qword_27F47C6D8, MEMORY[0x277CC8958]);
        }

        sub_251C6F984();
        v167 = v205;
        v168 = v206;
      }

      else
      {
        v167 = v139;
        v168 = v141;
      }

      sub_251A83028(v167, v168);
    }

    else
    {
      v165 = v138;
      v166 = sub_251C6FD84();

      swift_willThrow();
      v193 = 0;
    }

    k = v204;
  }

  v169 = [v179 method];
  sub_251C70F14();

  sub_251C6F914();
  (*(k + 8))(v191, v196);
  (*(v171 + 32))(v189, v34, v172);
  return sub_251C27B38(v187, &qword_27F47C6D8, MEMORY[0x277CC8958]);
}

void sub_251C27AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251C27B38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C27AE4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_251C27B94(uint64_t a1, uint64_t a2)
{
  v4 = [v2 literal];
  v35 = a2;
  if (v4)
  {
    v34 = v2;
    v5 = v4;
    sub_251C70F14();

    v6 = a2 + 64;
    v7 = 1 << *(a2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a2 + 64);
    v10 = (v7 + 63) >> 6;

    for (i = 0; v9; result = )
    {
      v13 = i;
LABEL_10:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = (*(v35 + 48) + ((v13 << 10) | (16 * v14)));
      v17 = *v15;
      v16 = v15[1];

      MEMORY[0x25308CDA0](v17, v16);
      MEMORY[0x25308CDA0](32125, 0xE200000000000000);
      sub_251AD87E0();
      sub_251C715A4();
    }

    while (1)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_23;
      }

      v9 = *(v6 + 8 * v13);
      ++i;
      if (v9)
      {
        i = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  result = [v2 variable];
  if (result)
  {
    v34 = v2;
    v18 = result;
    v19 = sub_251C70F14();
    v21 = v20;

    MEMORY[0x25308CDA0](v19, v21);

    MEMORY[0x25308CDA0](32125, 0xE200000000000000);
    v22 = a2 + 64;
    v23 = 1 << *(a2 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a2 + 64);
    v26 = (v23 + 63) >> 6;

    for (j = 0; v25; result = )
    {
      v28 = j;
LABEL_21:
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = (*(v35 + 48) + ((v28 << 10) | (16 * v29)));
      v31 = *v30;
      v32 = v30[1];

      MEMORY[0x25308CDA0](v31, v32);
      MEMORY[0x25308CDA0](32125, 0xE200000000000000);
      sub_251AD87E0();
      sub_251C715A4();
    }

    while (1)
    {
      v28 = j + 1;
      if (__OFADD__(j, 1))
      {
        goto LABEL_26;
      }

      if (v28 >= v26)
      {
LABEL_23:

        v33 = [v34 param];
        sub_251C70F14();

        sub_251C6F994();
      }

      v25 = *(v22 + 8 * v28);
      ++j;
      if (v25)
      {
        j = v28;
        goto LABEL_21;
      }
    }
  }

  return result;
}

void sub_251C27FC0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25308D460](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_251C27B94(a2, a3);

      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_251C280A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_29:
    v20 = *(*(a1 + 48) + (__clz(__rbit64(v8)) | (v11 << 6)));
    if (v20 > 5)
    {
      v12 = 0x44494C44746F6F72;
      if (v20 != 10)
      {
        v12 = 0x6574617473;
      }

      v13 = 0xE800000000000000;
      if (v20 != 10)
      {
        v13 = 0xE500000000000000;
      }

      if (v20 == 9)
      {
        v12 = 0x656372756F736572;
        v13 = 0xEA00000000004449;
      }

      v14 = 0x746E6569746170;
      if (v20 != 7)
      {
        v14 = 0x5468736572666572;
      }

      v15 = 0xE700000000000000;
      if (v20 != 7)
      {
        v15 = 0xEC0000006E656B6FLL;
      }

      if (v20 == 6)
      {
        v14 = 0xD000000000000015;
        v15 = 0x8000000251C89BD0;
      }

      v16 = v20 <= 8;
    }

    else
    {
      v12 = 0xD000000000000011;
      if (v20 == 4)
      {
        v12 = 1734431845;
      }

      v13 = 0x8000000251C89BB0;
      v15 = 0xE400000000000000;
      if (v20 == 4)
      {
        v13 = 0xE400000000000000;
      }

      if (v20 == 3)
      {
        v12 = 0xD000000000000015;
        v13 = 0x8000000251C89B90;
      }

      v14 = 0x6553746E65696C63;
      if (v20 == 1)
      {
        v15 = 0xEC00000074657263;
      }

      else
      {
        v14 = 1701080931;
      }

      if (!v20)
      {
        v14 = 0x4449746E65696C63;
        v15 = 0xE800000000000000;
      }

      v16 = v20 <= 2;
    }

    if (v16)
    {
      v17 = v14;
    }

    else
    {
      v17 = v12;
    }

    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = v13;
    }

    v8 &= v8 - 1;

    MEMORY[0x25308CDA0](v17, v18);

    MEMORY[0x25308CDA0](32125, 0xE200000000000000);
    sub_251AD87E0();
    a2 = sub_251C715A4();
  }

  while (1)
  {
    v19 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v19 >= v9)
    {

      return a2;
    }

    v8 = *(v5 + 8 * v19);
    ++v11;
    if (v8)
    {
      v11 = v19;
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

id sub_251C283DC()
{
  sub_251C291E4(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v32 - v2;
  v4 = type metadata accessor for EUDCCPublicKey(0);
  v5 = v0 + *(v4 + 28);
  if (*(v5 + 13))
  {
    v6 = v4;
    sub_251C6FA54();
    swift_allocObject();
    sub_251C6FA44();
    v7 = *(v5 + 5);
    v8 = *(v5 + 7);
    v49 = *(v5 + 6);
    v50 = v8;
    v9 = *(v5 + 1);
    v10 = *(v5 + 3);
    v45 = *(v5 + 2);
    v46 = v10;
    v11 = *(v5 + 3);
    v12 = *(v5 + 5);
    v47 = *(v5 + 4);
    v48 = v12;
    v13 = *(v5 + 1);
    v44[0] = *v5;
    v44[1] = v13;
    v14 = *(v5 + 7);
    v41 = v49;
    v42 = v14;
    v37 = v45;
    v38 = v11;
    v39 = v47;
    v40 = v7;
    v51 = *(v5 + 16);
    v43 = *(v5 + 16);
    v35 = v44[0];
    v36 = v9;
    sub_251BC6298(v44, v33);
    sub_251C29790();
    v19 = sub_251C6FA34();
    v21 = v20;
    v33[6] = v41;
    v33[7] = v42;
    v34 = v43;
    v33[2] = v37;
    v33[3] = v38;
    v33[4] = v39;
    v33[5] = v40;
    v33[0] = v35;
    v33[1] = v36;
    sub_251BC62D0(v33);

    sub_251AC553C(v0 + *(v6 + 24), v3);
    v32[1] = *v0;
    sub_251A858C4(v19, v21);
    v22 = sub_251C70EE4();
    v23 = sub_251C6FF94();
    v24 = sub_251C70014();
    v25 = *(v24 - 8);
    v26 = 0;
    if ((*(v25 + 48))(v3, 1, v24) != 1)
    {
      v26 = sub_251C6FF94();
      (*(v25 + 8))(v3, v24);
    }

    v27 = objc_allocWithZone(MEMORY[0x277D124A0]);
    v28 = sub_251C70EE4();
    v29 = sub_251C6FEC4();
    sub_251A83028(v19, v21);
    v30 = [v27 initWithKeyID:v22 added:v23 removed:v26 source:v28 jwkData:v29];

    sub_251A83028(v19, v21);
    return v30;
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v15 = sub_251C70764();
    __swift_project_value_buffer(v15, qword_2813E8130);
    v16 = sub_251C70744();
    v17 = sub_251C713B4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      MEMORY[0x25308E2B0](v18, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_251C28964()
{
  if (*v0)
  {
    return 1937335659;
  }

  else
  {
    return 118;
  }
}

uint64_t sub_251C2898C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 118 && a2 == 0xE100000000000000 || (sub_251C719D4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1937335659 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_251C719D4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_251C28A60(uint64_t a1)
{
  v2 = sub_251C28CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C28A9C(uint64_t a1)
{
  v2 = sub_251C28CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EUDCCPublicKeys.encode(to:)(void *a1)
{
  sub_251C29D00(0, &qword_27F47C6E0, sub_251C28CFC, &type metadata for EUDCCPublicKeys.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C28CFC();
  sub_251C71B14();
  v15 = 0;
  v8 = v12;
  sub_251C71954();
  if (!v8)
  {
    v13 = v11;
    v14 = 1;
    sub_251C291E4(0, &qword_27F47C6F0, type metadata accessor for EUDCCPublicKey, MEMORY[0x277D83940]);
    sub_251C29000(&qword_27F47C6F8, &qword_27F47C700, &protocol conformance descriptor for EUDCCPublicKey, MEMORY[0x277D83948]);
    sub_251C71964();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_251C28CFC()
{
  result = qword_27F47C6E8;
  if (!qword_27F47C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C6E8);
  }

  return result;
}

uint64_t type metadata accessor for EUDCCPublicKey(uint64_t a1)
{
  result = qword_27F47C740;
  if (!qword_27F47C740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EUDCCPublicKeys.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v14[0] = a2;
  sub_251C29D00(0, &qword_27F47C708, sub_251C28CFC, &type metadata for EUDCCPublicKeys.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C28CFC();
  sub_251C71B04();
  if (!v2)
  {
    v9 = v6;
    v10 = v14[0];
    v16 = 0;
    v11 = sub_251C718C4();
    sub_251C291E4(0, &qword_27F47C6F0, type metadata accessor for EUDCCPublicKey, MEMORY[0x277D83940]);
    v15 = 1;
    sub_251C29000(&qword_27F47C710, &qword_27F47C718, &protocol conformance descriptor for EUDCCPublicKey, MEMORY[0x277D83978]);
    sub_251C718D4();
    (*(v9 + 8))(v8, v5);
    v13 = v14[1];
    *v10 = v11;
    v10[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_251C29000(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251C291E4(255, &qword_27F47C6F0, type metadata accessor for EUDCCPublicKey, MEMORY[0x277D83940]);
    sub_251C29D68(a2, type metadata accessor for EUDCCPublicKey, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EUDCCPublicKey.source.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EUDCCPublicKey.added.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EUDCCPublicKey(0) + 20);
  v4 = sub_251C70014();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EUDCCPublicKey.removed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EUDCCPublicKey(0) + 24);

  return sub_251AC553C(v3, a1);
}

void sub_251C291E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t EUDCCPublicKey.jwk.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EUDCCPublicKey(0) + 28);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  v24 = *(v3 + 128);
  *(a1 + 128) = *(v3 + 128);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_251BC6298(v17, v16);
}

uint64_t sub_251C292EC()
{
  v1 = 0x656372756F73;
  v2 = 0x6465766F6D6572;
  if (*v0 != 2)
  {
    v2 = 7042922;
  }

  if (*v0)
  {
    v1 = 0x6465646461;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_251C29358@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251C2A258(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251C29380(uint64_t a1)
{
  v2 = sub_251C2973C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251C293BC(uint64_t a1)
{
  v2 = sub_251C2973C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EUDCCPublicKey.encode(to:)(void *a1)
{
  v2 = v1;
  sub_251C29D00(0, &qword_27F47C720, sub_251C2973C, &type metadata for EUDCCPublicKey.CodingKeys, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C2973C();
  sub_251C71B14();
  LOBYTE(v35[0]) = 0;
  v9 = v23;
  sub_251C71934();
  if (v9)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v23 = v6;
  v11 = type metadata accessor for EUDCCPublicKey(0);
  LOBYTE(v35[0]) = 1;
  sub_251C70014();
  sub_251C29D68(&qword_2813E7510, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_251C71964();
  v44 = 2;
  sub_251C71924();
  v12 = v2 + *(v11 + 28);
  v13 = *(v12 + 80);
  v14 = *(v12 + 112);
  v40 = *(v12 + 96);
  v41 = v14;
  v15 = *(v12 + 16);
  v16 = *(v12 + 48);
  v36 = *(v12 + 32);
  v37 = v16;
  v17 = *(v12 + 48);
  v18 = *(v12 + 80);
  v38 = *(v12 + 64);
  v39 = v18;
  v19 = *(v12 + 16);
  v35[0] = *v12;
  v35[1] = v19;
  v20 = *(v12 + 112);
  v32 = v40;
  v33 = v20;
  v28 = v36;
  v29 = v17;
  v30 = v38;
  v31 = v13;
  v42 = *(v12 + 128);
  v34 = *(v12 + 128);
  v26 = v35[0];
  v27 = v15;
  v43 = 3;
  sub_251BC6298(v35, v24);
  sub_251C29790();
  sub_251C71964();
  v21 = v23;
  v24[6] = v32;
  v24[7] = v33;
  v25 = v34;
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  sub_251BC62D0(v24);
  return (*(v21 + 8))(v8, v5);
}

unint64_t sub_251C2973C()
{
  result = qword_27F47C728;
  if (!qword_27F47C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C728);
  }

  return result;
}

unint64_t sub_251C29790()
{
  result = qword_27F47C730;
  if (!qword_27F47C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C730);
  }

  return result;
}

uint64_t EUDCCPublicKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_251C291E4(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = v24 - v4;
  v28 = sub_251C70014();
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C29D00(0, &qword_27F47C738, sub_251C2973C, &type metadata for EUDCCPublicKey.CodingKeys, MEMORY[0x277D844C8]);
  v31 = v7;
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  v10 = type metadata accessor for EUDCCPublicKey(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251C2973C();
  v30 = v9;
  v13 = v32;
  sub_251C71B04();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v27;
  v15 = v28;
  LOBYTE(v33) = 0;
  *v12 = sub_251C718B4();
  v12[1] = v16;
  v32 = v16;
  LOBYTE(v33) = 1;
  v24[1] = sub_251C29D68(&qword_2813E7508, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_251C718D4();
  (*(v14 + 32))(v12 + v10[5], v6, v15);
  LOBYTE(v33) = 2;
  v17 = v26;
  sub_251C718A4();
  sub_251AC55A0(v17, v12 + v10[6]);
  v42 = 3;
  sub_251BC47D0();
  sub_251C718D4();
  (*(v29 + 8))(v30, v31);
  v18 = v12 + v10[7];
  v19 = v40;
  *(v18 + 6) = v39;
  *(v18 + 7) = v19;
  *(v18 + 16) = v41;
  v20 = v36;
  *(v18 + 2) = v35;
  *(v18 + 3) = v20;
  v21 = v38;
  *(v18 + 4) = v37;
  *(v18 + 5) = v21;
  v22 = v34;
  *v18 = v33;
  *(v18 + 1) = v22;
  sub_251C29DB0(v12, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_251C29E14(v12);
}

void sub_251C29D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_251C29D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251C29DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EUDCCPublicKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C29E14(uint64_t a1)
{
  v2 = type metadata accessor for EUDCCPublicKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251C29EA0(uint64_t a1, int a2)
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

uint64_t sub_251C29EE8(uint64_t result, int a2, int a3)
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

void sub_251C29F5C(uint64_t a1)
{
  sub_251C70014();
  if (v1 <= 0x3F)
  {
    sub_251C291E4(319, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_251C2A04C()
{
  result = qword_27F47C750;
  if (!qword_27F47C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C750);
  }

  return result;
}

unint64_t sub_251C2A0A4()
{
  result = qword_27F47C758;
  if (!qword_27F47C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C758);
  }

  return result;
}

unint64_t sub_251C2A0FC()
{
  result = qword_27F47C760;
  if (!qword_27F47C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C760);
  }

  return result;
}

unint64_t sub_251C2A154()
{
  result = qword_27F47C768;
  if (!qword_27F47C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C768);
  }

  return result;
}

unint64_t sub_251C2A1AC()
{
  result = qword_27F47C770;
  if (!qword_27F47C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C770);
  }

  return result;
}

unint64_t sub_251C2A204()
{
  result = qword_27F47C778;
  if (!qword_27F47C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C778);
  }

  return result;
}

uint64_t sub_251C2A258(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_251C719D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465646461 && a2 == 0xE500000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7042922 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_251C719D4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_251C2A3B4(uint64_t *a1, int a2)
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

uint64_t sub_251C2A3FC(uint64_t result, int a2, int a3)
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

id sub_251C2A45C(uint64_t (*a1)(_BOOL8 *))
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  result = [result getPairedDevices];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = result;
  sub_251A8223C(0, &qword_27F47C808, 0x277D2BCC8);
  v5 = sub_251C71154();

  if (v5 >> 62)
  {
    v6 = sub_251C717F4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v6 != 0;
  v8 = 0;
  return a1(&v7);
}

uint64_t sub_251C2A560@<X0>(uint64_t *a1@<X8>)
{
  result = sub_251C71384();
  *a1 = result;
  return result;
}

uint64_t sub_251C2A58C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_opt_self() predicateForUserDomainConceptsWithTypeIdentifier_];
  v9 = *v4;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4 & 1;
  *(v10 + 40) = a2;
  *(v10 + 48) = v9;
  sub_251C2C330(0);
  swift_allocObject();

  v11 = v9;
  v12 = v8;
  sub_251C70A64();
  sub_251C2BE00(&qword_27F47C850, sub_251C2C330, MEMORY[0x277CBCEB0]);
  sub_251C70A94();

  sub_251BD5134(0);
  sub_251C2BE00(&qword_27F47BC58, sub_251BD5134, MEMORY[0x277CBCD90]);
  v13 = sub_251C70A94();

  return v13;
}

uint64_t sub_251C2A734(uint64_t a1)
{
  v3 = [objc_opt_self() predicateForListUserDomainConceptWithListType_];
  v4 = *v1;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = 1;
  *(v5 + 32) = 0;
  *(v5 + 40) = a1;
  *(v5 + 48) = v4;
  sub_251C2C330(0);
  swift_allocObject();

  v6 = v4;
  v7 = v3;
  sub_251C70A64();
  sub_251C2BE00(&qword_27F47C850, sub_251C2C330, MEMORY[0x277CBCEB0]);
  sub_251C70A94();

  sub_251BD5134(0);
  sub_251C2BE00(&qword_27F47BC58, sub_251BD5134, MEMORY[0x277CBCD90]);
  v8 = sub_251C70A94();

  return v8;
}

uint64_t sub_251C2A8D0()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v18[0] = 0;
  v2 = [v1 biologicalSexWithError_];
  if (v2)
  {
    v3 = v2;
    v4 = v18[0];
    v5 = [v3 biologicalSex];

    if (v5 > 3)
    {
      return 24942;
    }

    else
    {
      return *&aNotSet_0[8 * v5];
    }
  }

  else
  {
    v7 = v18[0];
    v8 = sub_251C6FD84();

    swift_willThrow();
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v9 = sub_251C70764();
    __swift_project_value_buffer(v9, qword_2813E8130);
    v10 = v8;
    v11 = sub_251C70744();
    v12 = sub_251C713D4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18[0] = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_251C71A44();
      v17 = sub_251B10780(v15, v16, v18);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_251A6C000, v11, v12, "Could not get the biologicalSex. Error: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x25308E2B0](v14, -1, -1);
      MEMORY[0x25308E2B0](v13, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_251C2AB20@<X0>(uint64_t a1@<X8>)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = sub_251C6FC94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v7 = *v1;
  v26[0] = 0;
  v8 = [v7 dateOfBirthComponentsWithError_];
  v9 = v26[0];
  if (v8)
  {
    v10 = v8;
    sub_251C6FBD4();
    v11 = v9;

    sub_251C6FBF4();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v13 = v26[0];
    v14 = sub_251C6FD84();

    swift_willThrow();
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v15 = sub_251C70764();
    __swift_project_value_buffer(v15, qword_2813E8130);
    v16 = v14;
    v17 = sub_251C70744();
    v18 = sub_251C713D4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = sub_251C71A44();
      v23 = sub_251B10780(v21, v22, v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_251A6C000, v17, v18, "Could not get the DOB. Error: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x25308E2B0](v20, -1, -1);
      MEMORY[0x25308E2B0](v19, -1, -1);
    }

    else
    {
    }

    v24 = sub_251C70014();
    return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
  }
}

uint64_t sub_251C2AE10(uint64_t a1)
{
  v1 = sub_251C71334();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C71364();
  sub_251C2BE00(&qword_27F47C840, MEMORY[0x277D11378], MEMORY[0x277D11370]);
  v5 = sub_251C70A94();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_251C2AF44()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  sub_251C2C2AC(0);
  swift_allocObject();
  v2 = v1;
  sub_251C70A64();
  sub_251C2BE00(&qword_27F47C838, sub_251C2C2AC, MEMORY[0x277CBCEB0]);
  v3 = sub_251C70A94();

  return v3;
}

uint64_t sub_251C2B028(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;
  sub_251C2C208(0);
  swift_allocObject();
  v7 = v5;
  sub_251C70A64();
  sub_251C2BE00(&qword_27F47C828, sub_251C2C208, MEMORY[0x277CBCEB0]);
  v8 = sub_251C70A94();

  return v8;
}

uint64_t sub_251C2B11C(void *a1, uint64_t a2, void *a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  sub_251C2C118(0);
  swift_allocObject();
  v9 = v7;
  v10 = a1;
  v11 = a3;
  sub_251C70A64();
  sub_251C2BE00(&qword_27F47C818, sub_251C2C118, MEMORY[0x277CBCEB0]);
  v12 = sub_251C70A94();

  return v12;
}

uint64_t sub_251C2B224()
{
  sub_251C2C0A4(0);
  swift_allocObject();
  sub_251C70A64();
  sub_251C2BE00(&qword_27F47C800, sub_251C2C0A4, MEMORY[0x277CBCEB0]);
  v0 = sub_251C70A94();

  return v0;
}

uint64_t sub_251C2B2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_251C71304();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C71314();
  sub_251C2BE00(&qword_27F47C7F0, MEMORY[0x277D11338], MEMORY[0x277D11330]);
  v9 = sub_251C70A94();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_251C2B434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_251C71324();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C71354();
  sub_251C2BE00(&qword_27F47C7E8, MEMORY[0x277D11368], MEMORY[0x277D11360]);
  v9 = sub_251C70A94();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_251C2B590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_251C71344();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C71374();
  sub_251C2BE00(&qword_27F47C7E0, MEMORY[0x277D11388], MEMORY[0x277D11380]);
  v7 = sub_251C70A94();
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_251C2B6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[0] = a8;
  v20[1] = a3;
  v20[4] = a6;
  v20[5] = a7;
  v20[2] = a4;
  v20[3] = a5;
  v9 = sub_251C71394();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C2BFE8(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C713A4();
  sub_251A8223C(0, &qword_27F479E28, 0x277CCDA58);
  sub_251C2BE00(&qword_27F47C7D0, MEMORY[0x277D11398], MEMORY[0x277D11390]);
  sub_251C70AE4();
  (*(v10 + 8))(v12, v9);
  sub_251C2BE00(&qword_27F47C7D8, sub_251C2BFE8, MEMORY[0x277CBCC08]);
  v18 = sub_251C70A94();
  (*(v15 + 8))(v17, v14);
  return v18;
}

uint64_t sub_251C2B95C(void *a1)
{
  sub_251C2BE48(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  sub_251BBC168(0);
  sub_251C2BE00(&qword_27F47C7A8, sub_251BBC168, MEMORY[0x277CBCEB0]);
  v10 = v8;
  v11 = a1;
  sub_251C70A74();
  sub_251C2BE00(&qword_27F47C7B0, sub_251C2BE48, MEMORY[0x277CBCEB8]);
  v12 = sub_251C70A94();
  (*(v5 + 8))(v7, v4);
  v15[1] = v12;
  sub_251C2BF4C(0);
  sub_251C2BE00(&qword_27F47C7C0, sub_251C2BF4C, MEMORY[0x277CBCD90]);
  v13 = sub_251C70A94();

  return v13;
}

uint64_t sub_251C2BB6C()
{
  sub_251C71424();
  sub_251C2BD90(0);
  sub_251C2BE00(&qword_27F47C798, sub_251C2BD90, MEMORY[0x277CBCEB0]);
  v0 = sub_251C70A94();

  return v0;
}

uint64_t sub_251C2BC08()
{
  v1 = *v0;
  *(swift_allocObject() + 16) = v1;
  sub_251C2BCF4(0);
  swift_allocObject();
  v2 = v1;
  sub_251C70A64();
  sub_251C2BE00(&qword_27F47C788, sub_251C2BCF4, MEMORY[0x277CBCEB0]);
  v3 = sub_251C70A94();

  return v3;
}

void sub_251C2BCF4(uint64_t a1)
{
  if (!qword_27F47C780)
  {
    sub_251C2BEDC(255, &qword_27F4797E8, &qword_27F4797F0, 0x277D11570, MEMORY[0x277D83940]);
    sub_251A82284();
    v1 = sub_251C70A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C780);
    }
  }
}

void sub_251C2BD90(uint64_t a1)
{
  if (!qword_27F47C790)
  {
    sub_251AD5648(255);
    sub_251A82284();
    v1 = sub_251C70A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C790);
    }
  }
}

uint64_t sub_251C2BE00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251C2BE48(uint64_t a1)
{
  if (!qword_27F47C7A0)
  {
    sub_251BBC168(255);
    sub_251C2BE00(&qword_27F47C7A8, sub_251BBC168, MEMORY[0x277CBCEB0]);
    v1 = sub_251C70A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C7A0);
    }
  }
}

void sub_251C2BEDC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_251A8223C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251C2BF4C(uint64_t a1)
{
  if (!qword_27F47C7B8)
  {
    sub_251C2BEDC(255, &qword_27F47B938, &qword_27F479F70, 0x277CCD1B0, MEMORY[0x277D83D88]);
    sub_251A82284();
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C7B8);
    }
  }
}

void sub_251C2BFE8(uint64_t a1)
{
  if (!qword_27F47C7C8)
  {
    sub_251C71394();
    sub_251A8223C(255, &qword_27F479E28, 0x277CCDA58);
    sub_251C2BE00(&qword_27F47C7D0, MEMORY[0x277D11398], MEMORY[0x277D11390]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C7C8);
    }
  }
}

void sub_251C2C0A4(uint64_t a1)
{
  if (!qword_27F47C7F8)
  {
    sub_251A82284();
    v1 = sub_251C70A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C7F8);
    }
  }
}

void sub_251C2C118(uint64_t a1)
{
  if (!qword_27F47C810)
  {
    sub_251C2C1AC(255, &qword_2813E1E38, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    sub_251A82284();
    v1 = sub_251C70A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C810);
    }
  }
}

void sub_251C2C1AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_251C2C208(uint64_t a1)
{
  if (!qword_27F47C820)
  {
    sub_251C2BEDC(255, &qword_27F47C5F0, &qword_27F479FB8, 0x277D11988, MEMORY[0x277D83940]);
    sub_251A82284();
    v1 = sub_251C70A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C820);
    }
  }
}

void sub_251C2C2AC(uint64_t a1)
{
  if (!qword_27F47C830)
  {
    sub_251A8223C(255, &qword_27F47C508, 0x277D11960);
    sub_251A82284();
    v1 = sub_251C70A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C830);
    }
  }
}

void sub_251C2C330(uint64_t a1)
{
  if (!qword_27F47C848)
  {
    sub_251C2BEDC(255, &qword_27F47BC40, &qword_27F47BC48, 0x277CCDAF0, MEMORY[0x277D83940]);
    sub_251A82284();
    v1 = sub_251C70A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C848);
    }
  }
}

uint64_t objectdestroy_20Tm_1()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_251C2C438()
{
  result = qword_27F47C858;
  if (!qword_27F47C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C858);
  }

  return result;
}

id sub_251C2C490()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    sub_251C70F14();
    v1 = sub_251C70EE4();
  }

  v2 = sub_251C70F14();
  v4 = v3;
  if (v2 == sub_251C70F14() && v4 == v5)
  {

    goto LABEL_10;
  }

  v7 = sub_251C719D4();
  v8 = v1;

  if (v7)
  {

LABEL_10:
    v9 = [objc_opt_self() kilocalorieUnit];
    return v9;
  }

  v11 = sub_251C70F14();
  v13 = v12;
  if (v11 == sub_251C70F14() && v13 == v14)
  {

    goto LABEL_19;
  }

  v16 = sub_251C719D4();

  if (v16)
  {

LABEL_19:
    v9 = [objc_opt_self() minuteUnit];
    return v9;
  }

  v17 = sub_251C70F14();
  v19 = v18;
  if (v17 == sub_251C70F14() && v19 == v20)
  {
    goto LABEL_22;
  }

  v21 = sub_251C719D4();

  if (v21)
  {
    goto LABEL_24;
  }

  v22 = sub_251C70F14();
  v24 = v23;
  if (v22 == sub_251C70F14() && v24 == v25)
  {
LABEL_22:

LABEL_25:
    v9 = [objc_opt_self() millimeterOfMercuryUnit];
    return v9;
  }

  v26 = sub_251C719D4();

  if (v26)
  {
LABEL_24:

    goto LABEL_25;
  }

  v27 = sub_251C70F14();
  v29 = v28;
  if (v27 == sub_251C70F14() && v29 == v30)
  {

LABEL_34:
    v9 = [objc_opt_self() poundUnit];
    return v9;
  }

  v31 = sub_251C719D4();

  if (v31)
  {

    goto LABEL_34;
  }

  v32 = sub_251C70F14();
  v34 = v33;
  if (v32 == sub_251C70F14() && v34 == v35)
  {
    goto LABEL_40;
  }

  v36 = sub_251C719D4();

  if (v36)
  {
    goto LABEL_61;
  }

  v37 = sub_251C70F14();
  v39 = v38;
  if (v37 == sub_251C70F14() && v39 == v40)
  {
    goto LABEL_40;
  }

  v41 = sub_251C719D4();

  if (v41)
  {
    goto LABEL_61;
  }

  v42 = sub_251C70F14();
  v44 = v43;
  if (v42 == sub_251C70F14() && v44 == v45)
  {
    goto LABEL_80;
  }

  v46 = sub_251C719D4();

  if (v46)
  {
LABEL_46:

LABEL_47:
    v47 = sub_251C70EE4();
    v48 = [objc_opt_self() unitFromString_];

    return v48;
  }

  v49 = sub_251C70F14();
  v51 = v50;
  if (v49 == sub_251C70F14() && v51 == v52)
  {
    goto LABEL_80;
  }

  v53 = sub_251C719D4();

  if (v53)
  {
    goto LABEL_46;
  }

  v54 = sub_251C70F14();
  v56 = v55;
  if (v54 == sub_251C70F14() && v56 == v57)
  {
    goto LABEL_80;
  }

  v58 = sub_251C719D4();

  if (v58)
  {
    goto LABEL_46;
  }

  v59 = sub_251C70F14();
  v61 = v60;
  if (v59 == sub_251C70F14() && v61 == v62)
  {
    goto LABEL_80;
  }

  v63 = sub_251C719D4();

  if (v63)
  {
    goto LABEL_46;
  }

  v64 = sub_251C70F14();
  v66 = v65;
  if (v64 == sub_251C70F14() && v66 == v67)
  {
LABEL_40:

LABEL_62:
    v9 = [objc_opt_self() countUnit];
    return v9;
  }

  v68 = sub_251C719D4();

  if (v68)
  {
LABEL_61:

    goto LABEL_62;
  }

  v69 = sub_251C70F14();
  v71 = v70;
  if (v69 == sub_251C70F14() && v71 == v72)
  {
    goto LABEL_80;
  }

  v73 = sub_251C719D4();

  if (v73)
  {
    goto LABEL_46;
  }

  v74 = sub_251C70F14();
  v76 = v75;
  if (v74 == sub_251C70F14() && v76 == v77)
  {
    goto LABEL_80;
  }

  v78 = sub_251C719D4();

  if (v78)
  {
    goto LABEL_46;
  }

  v79 = sub_251C70F14();
  v81 = v80;
  if (v79 == sub_251C70F14() && v81 == v82)
  {
    goto LABEL_80;
  }

  v83 = sub_251C719D4();

  if (v83)
  {
    goto LABEL_46;
  }

  v84 = sub_251C70F14();
  v86 = v85;
  if (v84 == sub_251C70F14() && v86 == v87)
  {
    goto LABEL_80;
  }

  v88 = sub_251C719D4();

  if (v88)
  {
    goto LABEL_46;
  }

  v89 = sub_251C70F14();
  v91 = v90;
  if (v89 == sub_251C70F14() && v91 == v92)
  {
LABEL_80:

    goto LABEL_47;
  }

  v93 = sub_251C719D4();

  if (v93)
  {
    goto LABEL_46;
  }

  v94 = sub_251C70F14();
  v96 = v95;
  if (v94 == sub_251C70F14() && v96 == v97)
  {

LABEL_87:
    v9 = [objc_opt_self() inchUnit];
    return v9;
  }

  v98 = sub_251C719D4();

  if (v98)
  {

    goto LABEL_87;
  }

  v99 = sub_251C70F14();
  v101 = v100;
  if (v99 == sub_251C70F14() && v101 == v102)
  {
    goto LABEL_90;
  }

  v103 = sub_251C719D4();

  if (v103)
  {
    goto LABEL_95;
  }

  v104 = sub_251C70F14();
  v106 = v105;
  if (v104 == sub_251C70F14() && v106 == v107)
  {
LABEL_90:

LABEL_96:
    v9 = [objc_opt_self() percentUnit];
    return v9;
  }

  v108 = sub_251C719D4();

  if (v108)
  {
LABEL_95:

    goto LABEL_96;
  }

  v109 = sub_251C70F14();
  v111 = v110;
  v112 = sub_251C70F14();
  v114 = v113;

  if (v109 == v112 && v111 == v114)
  {

    goto LABEL_96;
  }

  v115 = sub_251C719D4();

  if (v115)
  {
    goto LABEL_96;
  }

  return 0;
}

uint64_t sub_251C2D20C()
{
  v1 = [v0 code];
  if (v1 == 118)
  {
    sub_251A82418();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_251C86F80;
    v28 = objc_opt_self();
    v29 = [v28 _quantityWithBeatsPerMinute_];
    v30 = [v28 _quantityWithBeatsPerMinute_];
    v31 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v29 maximum:v30 isMinimumInclusive:1 isMaximumInclusive:0];

    *(v27 + 32) = v31;
    v32 = [v28 _quantityWithBeatsPerMinute_];
    v33 = [v28 _quantityWithBeatsPerMinute_];
    v34 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v32 maximum:v33 isMinimumInclusive:1 isMaximumInclusive:0];

    *(v27 + 40) = v34;
    v35 = [v28 _quantityWithBeatsPerMinute_];
    v36 = [v28 _quantityWithBeatsPerMinute_];
    v37 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v35 maximum:v36 isMinimumInclusive:1 isMaximumInclusive:0];

    *(v27 + 48) = v37;
    v38 = [v28 _quantityWithBeatsPerMinute_];
    v39 = [v28 _quantityWithBeatsPerMinute_];
    v40 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v38 maximum:v39 isMinimumInclusive:1 isMaximumInclusive:0];

    *(v27 + 56) = v40;
    v41 = [v28 _quantityWithBeatsPerMinute_];
    v42 = [v28 _quantityWithBeatsPerMinute_];
    v43 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v41 maximum:v42 isMinimumInclusive:1 isMaximumInclusive:0];

    result = v27;
    *(v27 + 64) = v43;
  }

  else if (v1 == 15)
  {
    v2 = sub_251C70EE4();
    v3 = [objc_opt_self() unitFromString_];

    sub_251A82418();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_251C86F80;
    v5 = objc_opt_self();
    v6 = v3;
    v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
    v8 = [v5 quantityWithUnit:v6 doubleValue:55.0];

    v9 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v7 maximum:v8 isMinimumInclusive:1 isMaximumInclusive:0];
    *(v4 + 32) = v9;
    v10 = v6;
    v11 = [v5 quantityWithUnit:v10 doubleValue:55.0];
    v12 = [v5 quantityWithUnit:v10 doubleValue:70.0];

    v13 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v11 maximum:v12 isMinimumInclusive:1 isMaximumInclusive:0];
    *(v4 + 40) = v13;
    v14 = v10;
    v15 = [v5 quantityWithUnit:v14 doubleValue:70.0];
    v16 = [v5 quantityWithUnit:v14 doubleValue:180.0];

    v17 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v15 maximum:v16 isMinimumInclusive:1 isMaximumInclusive:1];
    *(v4 + 48) = v17;
    v18 = v14;
    v19 = [v5 quantityWithUnit:v18 doubleValue:180.0];
    v20 = [v5 quantityWithUnit:v18 doubleValue:250.0];

    v21 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v19 maximum:v20 isMinimumInclusive:0 isMaximumInclusive:0];
    *(v4 + 56) = v21;
    v22 = v18;
    v23 = [v5 quantityWithUnit:v22 doubleValue:250.0];
    v24 = [v5 quantityWithUnit:v22 doubleValue:1.79769313e308];

    v25 = [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v23 maximum:v24 isMinimumInclusive:1 isMaximumInclusive:0];
    *(v4 + 64) = v25;

    return v4;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_251C2D814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  sub_251C2F708(0);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  sub_251C2F7A4(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C2D940, 0, 0);
}

uint64_t sub_251C2D940()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = **(v0 + 136);
    v4 = v1 + 32;
    v5 = sub_251C71214();
    v6 = *(v5 - 8);
    v8 = *(v6 + 56);
    v6 += 56;
    v7 = v8;
    v28 = (v6 - 8);
    v29 = v8;
    v30 = v5;
    v27 = (v6 - 48);
    do
    {
      v10 = *(v0 + 152);
      v9 = *(v0 + 160);
      v7(*(v0 + 200), 1, 1, v5);
      sub_251A823B4(v4, v0 + 16);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v10;
      v11[5] = v9;
      sub_251A7E8D8((v0 + 16), (v11 + 6));

      v12 = swift_taskGroup_addPending();
      v13 = *(v0 + 200);
      if (v12)
      {
        v14 = *(v0 + 192);
        sub_251B346F4(v13, v14);
        v15 = (*v28)(v14, 1, v5);
        v16 = *(v0 + 192);
        if (v15 == 1)
        {
          sub_251B34758(*(v0 + 192));
        }

        else
        {
          sub_251C71204();
          (*v27)(v16, v5);
        }

        v17 = v3;
        if (v11[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_251C711C4();
          v20 = v19;
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        sub_251C2F510(0, &qword_27F47C870, MEMORY[0x277D83D88]);

        if (v20 | v18)
        {
          v21 = v0 + 56;
          *(v0 + 56) = 0;
          *(v0 + 64) = 0;
          *(v0 + 72) = v18;
          *(v0 + 80) = v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = *(v0 + 200);
        *(v0 + 88) = 1;
        *(v0 + 96) = v21;
        v3 = v17;
        *(v0 + 104) = v17;
        swift_task_create();

        sub_251B34758(v22);
        v7 = v29;
        v5 = v30;
      }

      else
      {
        sub_251B34758(v13);
      }

      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v23 = MEMORY[0x277D84F90];
  *(v0 + 112) = MEMORY[0x277D84F90];
  sub_251C2F510(0, &qword_27F47C870, MEMORY[0x277D83D88]);
  sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
  sub_251C71234();
  *(v0 + 208) = v23;
  v24 = swift_task_alloc();
  *(v0 + 216) = v24;
  *v24 = v0;
  v24[1] = sub_251C2DCEC;
  v25 = *(v0 + 168);

  return MEMORY[0x2822004E8](v0 + 120, 0, 0, v25, v0 + 128);
}

uint64_t sub_251C2DCEC()
{

  if (v0)
  {

    v1 = sub_251C2DFAC;
  }

  else
  {
    v1 = sub_251C2DE04;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_251C2DE04()
{
  v1 = v0[15];
  if (v1 == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v5 = v0[1];
    v6 = v0[26];

    return v5(v6);
  }

  else
  {
    if (v1)
    {
      v2 = v1;
      MEMORY[0x25308CEE0]();
      if (*((v0[14] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[14] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_251C71174();
      }

      sub_251C71194();
      sub_251C2FB30(v1);
      v0[26] = v0[14];
    }

    v3 = swift_task_alloc();
    v0[27] = v3;
    *v3 = v0;
    v3[1] = sub_251C2DCEC;
    v4 = v0[21];

    return MEMORY[0x2822004E8](v0 + 15, 0, 0, v4, v0 + 16);
  }
}

uint64_t sub_251C2DFAC()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_251C2E048(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_251C2E068, 0, 0);
}

uint64_t sub_251C2E068()
{
  v1 = sub_251BB5890(*(*(v0 + 112) + 8), *(*(v0 + 112) + 16));
  *(v0 + 120) = v1;
  v2 = v1;
  v3 = *(v0 + 104);
  sub_251C2F424(*(v0 + 112), v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 128) = v4;
  v5 = *(v0 + 64);
  *(v4 + 48) = *(v0 + 48);
  *(v4 + 64) = v5;
  v6 = *(v0 + 80);
  v7 = *(v0 + 32);
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v7;
  *(v4 + 80) = v6;
  *(v4 + 88) = v3;
  *(v0 + 88) = v2;
  sub_251C2F510(0, &qword_27F47C870, MEMORY[0x277D83D88]);
  v9 = v8;
  sub_251C2F510(0, &qword_27F47C880, MEMORY[0x277D83940]);
  v11 = v10;
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  v12[2] = v0 + 88;
  v12[3] = &unk_251C86FD8;
  v12[4] = v4;
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_251C2E25C;

  return MEMORY[0x282200740](v0 + 96, v9, v11, 0, 0, &unk_251C86FE8, v12, v9);
}

uint64_t sub_251C2E25C()
{

  if (v0)
  {

    v1 = nullsub_1;
  }

  else
  {

    v1 = sub_251C2E3A4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_251C2E3A4()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_251C2E414(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_251C70374();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C2E4D4, 0, 0);
}

uint64_t sub_251C2E4D4()
{
  v16 = v0;
  if ([*(v0 + 64) options])
  {
    *(v0 + 104) = *(*(v0 + 72) + 64);
    sub_251C70344();
    sub_251C3159C(&qword_27F47C860, MEMORY[0x277D122C0], MEMORY[0x277D122C8]);
    v12 = sub_251C711C4();
    v11 = v13;
    *(v0 + 112) = v12;
    *(v0 + 120) = v13;
    v9 = sub_251C2E740;
    v10 = v12;
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v1 = sub_251C70764();
    __swift_project_value_buffer(v1, qword_2813E8130);
    v2 = sub_251C70744();
    v3 = sub_251C713F4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_251B10780(0xD000000000000026, 0x8000000251C86F80, &v15);
      _os_log_impl(&dword_251A6C000, v2, v3, "%s will not submit analytics, submission not enabled", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x25308E2B0](v5, -1, -1);
      MEMORY[0x25308E2B0](v4, -1, -1);
    }

    *(v0 + 144) = *(*(v0 + 72) + 64);
    sub_251C70344();
    sub_251C3159C(&qword_27F47C860, MEMORY[0x277D122C0], MEMORY[0x277D122C8]);
    v6 = sub_251C711C4();
    v8 = v7;
    v9 = sub_251C2EBB8;
    v10 = v6;
    v11 = v8;
  }

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_251C2E740()
{
  *(v0 + 128) = sub_251C70304();
  *(v0 + 136) = v1;

  return MEMORY[0x2822009F8](sub_251C2E7AC, 0, 0);
}

uint64_t sub_251C2E7AC()
{
  v24 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = sub_251C70764();
  __swift_project_value_buffer(v1, qword_2813E8130);

  v2 = sub_251C70744();
  v3 = sub_251C713B4();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[17];
  if (v4)
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    v0[6] = v6;
    v0[7] = v5;
    sub_251C719F4();
    v9 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v10 = sub_251C70F74();
    v12 = sub_251B10780(v10, v11, &v23);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_251A6C000, v2, v3, "Analytics to submit: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }

  else
  {
  }

  sub_251C2F7A4(0, &qword_27F47C868, MEMORY[0x277D122E0], MEMORY[0x277D84560]);
  v13 = sub_251C70364();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_251C75800;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, *MEMORY[0x277D122D0], v13);
  v19(v18 + v15, *MEMORY[0x277D122D8], v13);
  sub_251C70354();

  v20 = v0[14];
  v21 = v0[15];

  return MEMORY[0x2822009F8](sub_251C2EAC0, v20, v21);
}

uint64_t sub_251C2EAC0()
{
  sub_251C70314();

  return MEMORY[0x2822009F8](sub_251C2EB40, 0, 0);
}

uint64_t sub_251C2EB40()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_251C2EBB8()
{
  sub_251C70324();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251C2EC20(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v4 = swift_task_alloc();
  v2[28] = v4;
  *v4 = v2;
  v4[1] = sub_251C2ECBC;

  return sub_251C2FB40(a2);
}

uint64_t sub_251C2ECBC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_251C2EE08;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_251C2EDE4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251C2EE08()
{
  v24 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = sub_251C70764();
  __swift_project_value_buffer(v3, qword_2813E8130);
  sub_251A823B4(v2, v0 + 16);
  v4 = v1;
  v5 = sub_251C70744();
  v6 = sub_251C713D4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 232);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_251B10780(0xD000000000000026, 0x8000000251C86F80, &v23);
    *(v9 + 12) = 2080;
    sub_251A823B4(v0 + 16, v0 + 56);
    sub_251A823B4(v0 + 56, v0 + 96);
    sub_251AA98B0(0, &qword_27F4798E0, &protocol descriptor for WebRequest);
    sub_251C719F4();
    v11 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v12 = sub_251C70F74();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v15 = sub_251B10780(v12, v14, &v23);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    *(v0 + 200) = v8;
    v16 = v8;
    sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
    sub_251C719F4();
    v17 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v18 = sub_251C70F74();
    v20 = sub_251B10780(v18, v19, &v23);

    *(v9 + 24) = v20;
    _os_log_impl(&dword_251A6C000, v5, v6, "%s failed to perform health cards issue request %s: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v10, -1, -1);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  **(v0 + 208) = 0;
  v21 = *(v0 + 8);

  return v21();
}

id sub_251C2F138(void *a1, uint64_t a2, double a3)
{
  v22 = a2;
  v5 = sub_251C6FE64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_251C70014();
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C6FFF4();
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 40))(v13, v14);
  v15 = sub_251C6FDD4();
  (*(v6 + 8))(v8, v5);
  v16 = sub_251C70EE4();
  v17 = sub_251C6FF94();
  sub_251C6FF34();
  v19 = [v12 initWithRequestedURL:v15 resourceType:v16 interactionType:6 responseStatusCode:v22 requestEndTime:v17 requestDuration:0 hadError:v18 - a3 errorCode:0];

  (*(v9 + 8))(v11, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

void sub_251C2F390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_251C70EE4();
  sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
  v5 = sub_251C70E44();
  AnalyticsSendEvent();
}

uint64_t sub_251C2F45C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_251AF4F78;

  return sub_251C2EC20(a1, a2);
}

void sub_251C2F510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_251A8223C(255, &qword_27F47C878, 0x277D123B8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251C2F580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_251BD1064;

  return sub_251C2D814(a2, v9, a4, a5);
}

uint64_t sub_251C2F638(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_251B14FE8;

  return sub_251C2F580(a1, a2, v6, v7, v8);
}

void sub_251C2F708(uint64_t a1)
{
  if (!qword_27F47C888)
  {
    sub_251C2F510(255, &qword_27F47C870, MEMORY[0x277D83D88]);
    sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v1 = sub_251C71254();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C888);
    }
  }
}

void sub_251C2F7A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251C2F808(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a1;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_251C2F90C;

  return v10(v6 + 16, a6);
}

uint64_t sub_251C2F90C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_251C2FA40;
  }

  else
  {
    v2 = sub_251C2FA20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251C2FA58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_251B14FE8;

  return sub_251C2F808(a1, v4, v5, v6, v7, (v1 + 6));
}

void sub_251C2FB30(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_251C2FB40(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v2[41] = type metadata accessor for WebRequestResponseError.ErrorType(0);
  v2[42] = swift_task_alloc();
  v2[43] = type metadata accessor for HTTPError(0);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  sub_251C70F64();
  v2[46] = swift_task_alloc();
  v3 = sub_251C70014();
  v2[47] = v3;
  v2[48] = *(v3 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  sub_251C2F7A4(0, &qword_2813E7520, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v2[51] = swift_task_alloc();
  v4 = sub_251C70074();
  v2[52] = v4;
  v2[53] = *(v4 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = type metadata accessor for WebRequestResponseError(0);
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C2FDDC, 0, 0);
}

uint64_t sub_251C2FDDC()
{
  v1 = v0[40];
  sub_251C6FF44();
  v0[60] = v2;
  v3 = [*(v1 + 16) accountInformation];
  v0[61] = v3;
  v4 = [v3 accountIdentifier];
  sub_251C70054();

  v5 = swift_task_alloc();
  v0[62] = v5;
  *v5 = v0;
  v5[1] = sub_251C2FF10;
  v6 = v0[58];
  v7 = v0[55];
  v8 = v0[39];

  return sub_251C1603C((v0 + 10), v8, v7, v1 + 24, v6);
}

uint64_t sub_251C2FF10()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[55];
  v5 = v2[53];
  v6 = v2[52];
  v9 = *(v5 + 8);
  v7 = v5 + 8;
  v8 = v9;
  if (v0)
  {
    v8(v4, v6);
    v10 = sub_251C30EEC;
  }

  else
  {
    v3[63] = v8;
    v3[64] = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v4, v6);
    v10 = sub_251C300C0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_251C300C0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  v3 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v3;
  sub_251A823B4(v1, v0 + 184);
  v4 = *(v0 + 72);
  if (v4)
  {
    v5 = [v4 statusCode];
  }

  else
  {
    v5 = 200;
  }

  v6 = *(v0 + 480);
  sub_251A8223C(0, &qword_27F47C890, 0x277D12460);
  v7 = sub_251C2F138((v0 + 184), v5, v6);
  *(v0 + 520) = v7;
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  *(v0 + 528) = v9;
  *(v0 + 536) = v8;
  v10 = *(v0 + 488);
  v11 = *(v0 + 320);
  if (v8 >> 60 == 15)
  {
    v12 = [v7 asErrorEndStateWithErrorCode_];
    *(v0 + 568) = v12;
    *(v0 + 576) = [v10 gateway];
    *(v0 + 584) = [objc_allocWithZone(MEMORY[0x277D12468]) initWithEndState_];
    *(v0 + 592) = *(v11 + 64);
    sub_251C70344();
    sub_251C3159C(&qword_27F47C860, MEMORY[0x277D122C0], MEMORY[0x277D122C8]);
    v13 = sub_251C711C4();
    v15 = sub_251C30CCC;
  }

  else
  {
    v16 = v7;
    sub_251A858C4(v9, v8);
    *(v0 + 544) = [v10 gateway];
    *(v0 + 552) = [objc_allocWithZone(MEMORY[0x277D12468]) initWithEndState_];
    *(v0 + 560) = *(v11 + 64);
    sub_251C70344();
    sub_251C3159C(&qword_27F47C860, MEMORY[0x277D122C0], MEMORY[0x277D122C8]);
    v13 = sub_251C711C4();
    v15 = sub_251C30354;
  }

  return MEMORY[0x2822009F8](v15, v13, v14);
}

uint64_t sub_251C30354()
{
  sub_251C702F4();

  return MEMORY[0x2822009F8](sub_251C303F0, 0, 0);
}

uint64_t sub_251C303F0()
{
  v73 = v0;
  v72[3] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 544);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  v4 = *(v0 + 432);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v7 = *(v0 + 312);

  sub_251C716A4();

  v72[0] = 0xD000000000000015;
  v72[1] = 0x8000000251C90C60;
  v8 = [v3 accountIdentifier];
  sub_251C70054();

  sub_251C3159C(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v9 = sub_251C719A4();
  MEMORY[0x25308CDA0](v9);

  v2(v4, v5);
  v11 = v7[3];
  v10 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v11);
  (*(v10 + 40))(v11, v10);
  v12 = sub_251C6FE64();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v6, 0, 1, v12);
  v14 = [v3 gateway];
  v15 = [v14 FHIRVersion];

  sub_251C70004();
  sub_251C70004();
  v16 = objc_opt_self();
  [v16 currentOSVersionStruct];
  v71 = v72[2];
  v17 = [v16 currentOSBuild];
  if (!v17)
  {
    __break(1u);
  }

  v18 = v17;
  v70 = v15;
  v19 = [*(v0 + 488) gateway];
  v20 = [v19 country];

  if (!v20)
  {
    sub_251C70F14();
    v20 = sub_251C70EE4();
  }

  v21 = *(v0 + 408);
  sub_251A858C4(*(v0 + 528), *(v0 + 536));
  v22 = sub_251C70EE4();

  v23 = sub_251C6FEC4();
  if ((*(v13 + 48))(v21, 1, v12) == 1)
  {
    v24 = 0;
  }

  else
  {
    v25 = *(v0 + 408);
    v24 = sub_251C6FDD4();
    (*(v13 + 8))(v25, v12);
  }

  v26 = sub_251C6FF94();
  v27 = sub_251C6FF94();
  v28 = objc_opt_self();
  *(v0 + 296) = 0;
  *(v0 + 256) = 0xD000000000000015;
  *(v0 + 264) = 0x8000000251C90C60;
  *(v0 + 272) = v71;
  v29 = [v28 resourceObjectWithStaticIdentifier:v22 data:v23 sourceURL:v24 FHIRVersion:v70 receivedDate:v26 firstSeenDate:v27 extractionHints:0 originVersion:v0 + 256 originBuild:v18 country:v20 error:v0 + 296];

  v30 = *(v0 + 296);
  v31 = *(v0 + 536);
  v32 = *(v0 + 528);
  if (v29)
  {
    v67 = v29;
    v33 = *(v0 + 520);
    v34 = *(v0 + 488);
    v68 = *(v0 + 400);
    v36 = *(v0 + 384);
    v35 = *(v0 + 392);
    v37 = *(v0 + 376);
    v38 = v30;

    sub_251A8596C(v32, v31);
    sub_251A8596C(v32, v31);
    v39 = *(v36 + 8);
    v39(v35, v37);
    v39(v68, v37);
    sub_251A857E0(v0 + 16);

    v40 = *(v0 + 8);

    return v40(v67);
  }

  else
  {
    v42 = *(v0 + 392);
    v69 = *(v0 + 400);
    v44 = *(v0 + 376);
    v43 = *(v0 + 384);
    v45 = v30;
    sub_251C6FD84();

    swift_willThrow();
    sub_251A8596C(v32, v31);
    v46 = *(v43 + 8);
    v46(v42, v44);
    v46(v69, v44);
    sub_251C70F54();
    v47 = sub_251C70F34();
    v49 = v48;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v50 = sub_251C70764();
    __swift_project_value_buffer(v50, qword_2813E8130);

    v51 = sub_251C70744();
    v52 = sub_251C713D4();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v72[0] = v54;
      *v53 = 136315394;
      *(v0 + 304) = &type metadata for SignedClinicalDataFHIROperationHandler;
      sub_251C315E4();
      v55 = sub_251C70F74();
      v57 = sub_251B10780(v55, v56, v72);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      *(v0 + 280) = v47;
      *(v0 + 288) = v49;
      sub_251AD56B0();
      sub_251C719F4();
      v58 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v59 = sub_251C70F74();
      v61 = sub_251B10780(v59, v60, v72);

      *(v53 + 14) = v61;
      _os_log_impl(&dword_251A6C000, v51, v52, "%s failed to parse response data to original FHIR resource object, response data string: %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v54, -1, -1);
      MEMORY[0x25308E2B0](v53, -1, -1);
    }

    else
    {
    }

    v62 = *(v0 + 536);
    v63 = *(v0 + 528);
    v64 = *(v0 + 520);
    v65 = *(v0 + 488);
    swift_willThrow();
    sub_251A8596C(v63, v62);

    sub_251A857E0(v0 + 16);

    v66 = *(v0 + 8);

    return v66();
  }
}

uint64_t sub_251C30CCC()
{
  sub_251C702F4();

  return MEMORY[0x2822009F8](sub_251C30D68, 0, 0);
}

uint64_t sub_251C30D68()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 520);
  v4 = *(v0 + 488);

  sub_251C31548();
  swift_allocError();
  *v5 = 0;
  swift_willThrow();

  sub_251A857E0(v0 + 16);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_251C30EEC()
{
  v1 = *(v0 + 59);
  v3 = *(v0 + 56);
  v2 = *(v0 + 57);
  v4 = *(v0 + 42);
  sub_251C31480(*(v0 + 58), v1, type metadata accessor for WebRequestResponseError);
  sub_251C31480(v1, v2, type metadata accessor for WebRequestResponseError);
  sub_251C31418(v2 + *(v3 + 20), v4, type metadata accessor for WebRequestResponseError.ErrorType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(v0 + 44);
    v6 = *(v0 + 45);
    sub_251C31480(*(v0 + 42), v6, type metadata accessor for HTTPError);
    sub_251C31480(v6, v5, type metadata accessor for HTTPError);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v8 = *(v0 + 44);
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *v8;
      goto LABEL_7;
    }

    v10 = type metadata accessor for HTTPError;
  }

  else
  {
    v8 = *(v0 + 42);
    v10 = type metadata accessor for WebRequestResponseError.ErrorType;
  }

  sub_251C314E8(v8, v10);
  v9 = 0;
LABEL_7:
  v11 = *(v0 + 61);
  v12 = v0[60];
  v13 = *(v0 + 39);
  v14 = *(v0 + 40);
  sub_251A8223C(0, &qword_27F47C890, 0x277D12460);
  sub_251A823B4(v13, (v0 + 18));
  v15 = sub_251C2F138(v0 + 18, v9, v12);
  v16 = [v15 asErrorEndStateWithErrorCode_];
  *(v0 + 75) = v16;

  *(v0 + 76) = [v11 gateway];
  *(v0 + 77) = [objc_allocWithZone(MEMORY[0x277D12468]) initWithEndState_];
  v0[78] = *(v14 + 64);
  sub_251C70344();
  sub_251C3159C(&qword_27F47C860, MEMORY[0x277D122C0], MEMORY[0x277D122C8]);
  v18 = sub_251C711C4();

  return MEMORY[0x2822009F8](sub_251C311A4, v18, v17);
}

uint64_t sub_251C311A4()
{
  sub_251C702F4();

  return MEMORY[0x2822009F8](sub_251C31240, 0, 0);
}

uint64_t sub_251C31240()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 488);
  v4 = *(v0 + 456);

  sub_251C3159C(&qword_27F478E50, type metadata accessor for WebRequestResponseError, &protocol conformance descriptor for WebRequestResponseError);
  swift_allocError();
  sub_251C31418(v4, v5, type metadata accessor for WebRequestResponseError);
  swift_willThrow();

  sub_251C314E8(v4, type metadata accessor for WebRequestResponseError);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_251C31418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C31480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C314E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251C31548()
{
  result = qword_27F47C898;
  if (!qword_27F47C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C898);
  }

  return result;
}

uint64_t sub_251C3159C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_251C315E4()
{
  result = qword_27F47C8A0;
  if (!qword_27F47C8A0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F47C8A0);
  }

  return result;
}

unint64_t sub_251C31650()
{
  result = qword_27F47C8A8;
  if (!qword_27F47C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C8A8);
  }

  return result;
}

void sub_251C316B4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_251C70E54();

  *a3 = v5;
}

uint64_t sub_251C31718(uint64_t a1, void *a2)
{
  sub_251C35180(0);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C35328(0);
  v9 = *(v8 - 8);
  v53 = v8;
  v54 = v9;
  MEMORY[0x28223BE20](v8);
  v62 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C35594(0);
  v12 = *(v11 - 8);
  v56 = v11;
  v57 = v12;
  MEMORY[0x28223BE20](v11);
  v50 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C35880(0, &qword_27F47C930, type metadata accessor for PBTypedData);
  v58 = v14;
  v60 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v52 = &v46 - v15;
  sub_251C35860(0);
  v59 = v16;
  v61 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v55 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C70F14();
  v18 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v19 = sub_251C70EE4();

  v20 = [v18 initWithKey:v19 ascending:0];

  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_251A82418();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251C74560;
  *(v21 + 32) = v20;
  v51 = v20;
  v22 = sub_251C2A58C(a2, v21, 0, 1);

  v63 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  sub_251C369BC(0, &qword_27F47BC38, &qword_27F47BC40, &qword_27F47BC48, 0x277CCDAF0);
  sub_251C35248(0, &qword_27F47C8B8, &qword_27F47C8C0, 0x277D115B8, MEMORY[0x277D83940]);
  sub_251C352B0();

  v24 = a2;
  sub_251C70AA4();

  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = v24;

  v26 = v24;
  sub_251C70964();
  v27 = MEMORY[0x277D83940];
  sub_251C35408(0, &qword_27F47C8D8, sub_251C3546C, MEMORY[0x277D83940]);
  sub_251C35674(0, &qword_27F47C8D0, &qword_27F47C8D8, sub_251C3546C);
  v47 = MEMORY[0x277CBCB10];
  sub_251C37174(&qword_27F47C8F0, sub_251C35180, MEMORY[0x277CBCB10]);
  sub_251C35518();
  v28 = v48;
  sub_251C70B94();

  (*(v49 + 8))(v7, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = v26;

  v30 = v26;
  sub_251C70964();
  sub_251C35408(0, &qword_27F47C908, sub_251C35700, v27);
  sub_251C35674(0, &qword_27F47C900, &qword_27F47C908, sub_251C35700);
  v31 = MEMORY[0x277CBCCE0];
  sub_251C37174(&qword_27F47C928, sub_251C35328, MEMORY[0x277CBCCE0]);
  sub_251C357E4();
  v32 = v50;
  v33 = v53;
  v34 = v62;
  sub_251C70B94();

  (*(v54 + 8))(v34, v33);
  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = v30;
  type metadata accessor for PBTypedData(0);
  sub_251C37174(&qword_27F47C938, sub_251C35594, v31);

  v36 = v30;
  v37 = v52;
  v38 = v56;
  sub_251C70AA4();

  (*(v57 + 8))(v32, v38);
  v39 = swift_allocObject();
  *(v39 + 16) = a1;
  *(v39 + 24) = v36;
  type metadata accessor for ClinicalSharingQueryOutput(0);

  v40 = v36;
  v41 = v55;
  v42 = v58;
  sub_251C70774();

  (*(v60 + 8))(v37, v42);
  sub_251C37174(&qword_27F47C948, sub_251C35860, v47);
  v43 = v59;
  v44 = sub_251C70A94();

  (*(v61 + 8))(v41, v43);
  return v44;
}