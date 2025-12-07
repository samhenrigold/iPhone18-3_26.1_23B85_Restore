char *sub_251BB2A8C(void *a1)
{
  v47 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v3 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v42 - v5;
  v44 = type metadata accessor for PBHKConcept;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, v3);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0xE000000000000000;
  *(v1 + 4) = 0;
  *(v1 + 5) = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  v42 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  v10 = type metadata accessor for PBHKConcept(0);
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  v43 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  v12 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  v13 = &v1[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = &v1[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  v15 = &v1[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName];
  v45 = &v1[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  v16 = &v1[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType];
  v48 = &v1[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType];
  *v16 = 0;
  v16[8] = 1;
  swift_beginAccess();
  v18 = a1[2];
  v17 = a1[3];
  swift_beginAccess();
  *(v1 + 2) = v18;
  *(v1 + 3) = v17;
  swift_beginAccess();
  v20 = a1[4];
  v19 = a1[5];
  swift_beginAccess();
  *(v1 + 4) = v20;
  *(v1 + 5) = v19;
  v21 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  swift_beginAccess();
  v22 = v44;
  sub_251BB33C4(a1 + v21, v8, qword_2813E6D28, v44);
  v23 = v42;
  swift_beginAccess();

  sub_251BB3050(v8, &v1[v23], qword_2813E6D28, v22);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v26 = v46;
  v25 = v47;
  sub_251BB33C4(a1 + v24, v46, qword_2813E5D48, v47);
  v27 = v43;
  swift_beginAccess();
  sub_251BB3050(v26, &v1[v27], qword_2813E5D48, v25);
  swift_endAccess();
  v28 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  swift_beginAccess();
  *v13 = v30;
  *(v13 + 1) = v29;

  v31 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  swift_beginAccess();
  *v14 = v33;
  *(v14 + 1) = v32;

  v34 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];
  v37 = v45;
  swift_beginAccess();
  *v37 = v36;
  *(v37 + 1) = v35;

  v38 = a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType;
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = v38[8];
  v40 = v48;
  swift_beginAccess();
  *v40 = v39;
  v40[8] = v38;
  return v1;
}

unint64_t sub_251BB2F54()
{
  result = qword_27F47B738;
  if (!qword_27F47B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B738);
  }

  return result;
}

unint64_t sub_251BB2FA8()
{
  result = qword_27F47B770;
  if (!qword_27F47B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B770);
  }

  return result;
}

unint64_t sub_251BB2FFC()
{
  result = qword_27F47B780;
  if (!qword_27F47B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B780);
  }

  return result;
}

uint64_t sub_251BB3050(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B67AAC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_251BB30D0()
{
  result = qword_27F47B7D0;
  if (!qword_27F47B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B7D0);
  }

  return result;
}

unint64_t sub_251BB3124()
{
  result = qword_27F47B7D8;
  if (!qword_27F47B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B7D8);
  }

  return result;
}

unint64_t sub_251BB3178()
{
  result = qword_27F47B7E0;
  if (!qword_27F47B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B7E0);
  }

  return result;
}

unint64_t sub_251BB31CC()
{
  result = qword_27F47B800;
  if (!qword_27F47B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B800);
  }

  return result;
}

unint64_t sub_251BB3220()
{
  result = qword_27F47B850;
  if (!qword_27F47B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B850);
  }

  return result;
}

unint64_t sub_251BB3274()
{
  result = qword_27F47B858;
  if (!qword_27F47B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B858);
  }

  return result;
}

unint64_t sub_251BB32C8()
{
  result = qword_27F47B870;
  if (!qword_27F47B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B870);
  }

  return result;
}

unint64_t sub_251BB331C()
{
  result = qword_27F47B878;
  if (!qword_27F47B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B878);
  }

  return result;
}

unint64_t sub_251BB3370()
{
  result = qword_27F47B890;
  if (!qword_27F47B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B890);
  }

  return result;
}

uint64_t sub_251BB33C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B67AAC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251BB3444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251B67AAC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251BB34B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_251B67AAC(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_251BB3554()
{
  result = qword_27F47B8B8;
  if (!qword_27F47B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B8B8);
  }

  return result;
}

void sub_251BB35D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_251BB362C()
{
  result = qword_27F47B8D0;
  if (!qword_27F47B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B8D0);
  }

  return result;
}

unint64_t sub_251BB3684()
{
  result = qword_27F47B8D8;
  if (!qword_27F47B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B8D8);
  }

  return result;
}

unint64_t sub_251BB36D8()
{
  result = qword_27F47B8E0;
  if (!qword_27F47B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B8E0);
  }

  return result;
}

uint64_t sub_251BB3814()
{
  swift_allocObject();
  swift_weakInit();
  sub_251BB4BDC(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();

  sub_251C702C4();
}

uint64_t sub_251BB3908()
{
  sub_251BB4BDC(0, &qword_2813E1C70, sub_251ACFD80, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_251C75800;
  v2 = sub_251C70F14();
  v4 = v3;
  v5 = type metadata accessor for DefaultDaemonXPCService();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_identifier];
  *v7 = v2;
  v7[1] = v4;
  v8 = &v6[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_requiredEntitlementOverride];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = objc_allocWithZone(MEMORY[0x277D10BF0]);

  v10 = sub_251C70EE4();

  v11 = [v9 initWithLabel_];

  *&v6[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener] = v11;
  v12 = &v6[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_serverGenerator];
  *v12 = sub_251BB3E24;
  v12[1] = v0;
  v27.receiver = v6;
  v27.super_class = v5;
  v13 = objc_msgSendSuper2(&v27, sel_init);
  *(v1 + 56) = v5;
  *(v1 + 64) = &off_2863F5E58;
  *(v1 + 32) = v13;
  v14 = sub_251C70F14();
  v16 = v15;
  v17 = objc_allocWithZone(v5);
  v18 = &v17[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_identifier];
  *v18 = v14;
  v18[1] = v16;
  v19 = &v17[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_requiredEntitlementOverride];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = objc_allocWithZone(MEMORY[0x277D10BF0]);

  v21 = sub_251C70EE4();

  v22 = [v20 initWithLabel_];

  *&v17[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener] = v22;
  v23 = &v17[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_serverGenerator];
  *v23 = sub_251BB3E40;
  v23[1] = v0;
  v26.receiver = v17;
  v26.super_class = v5;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  *(v1 + 96) = v5;
  *(v1 + 104) = &off_2863F5E58;
  *(v1 + 72) = v24;
  return v1;
}

id sub_251BB3B80(void *a1, uint64_t a2)
{
  v14 = type metadata accessor for ClinicalSharingDaemonPlugin();
  v15 = &off_2863FAE18;
  v13[0] = a2;
  v4 = objc_allocWithZone(type metadata accessor for ClinicalSharingServer());
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  MEMORY[0x28223BE20](v5);
  v7 = (&v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;

  v10 = sub_251BB3E5C(a1, v9, v4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

id sub_251BB3CAC(void *a1, uint64_t a2)
{
  v3 = *(*(a2 + 56) + 88);
  v4 = type metadata accessor for ClinicalSharingSyncObserverServer();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateCancellable] = 0;
  *&v5[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_client] = a1;

  v6 = a1;
  v7 = swift_slowAlloc();
  *v7 = 0;
  *&v5[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_lock] = v7;
  *&v5[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateSubject] = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_251BB3D78()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

id sub_251BB3E5C(uint64_t a1, uint64_t a2, char *a3)
{
  v10[3] = type metadata accessor for ClinicalSharingDaemonPlugin();
  v10[4] = &off_2863FAE18;
  v10[0] = a2;
  if (MEMORY[0x277D84F90] >> 62 && sub_251C717F4())
  {
    v6 = sub_251B1D794(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  *&a3[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_cancellables] = v6;
  *&a3[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_client] = a1;
  sub_251A823B4(v10, &a3[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider]);
  v9.receiver = a3;
  v9.super_class = type metadata accessor for ClinicalSharingServer();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t *sub_251BB3F44(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v15[3] = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
  v15[4] = &off_2863FA5F8;
  v5 = swift_allocObject();
  v15[0] = v5;
  v6 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = *(a1 + 80);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  *(a2 + 4) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 7) = 0u;
  a2[16] = 0;
  v8 = swift_slowAlloc();
  *v8 = 0;
  a2[17] = v8;
  v14 = v4;
  swift_getMetatypeMetadata();
  a2[18] = sub_251C70F74();
  a2[19] = v9;
  sub_251A823B4(v15, (a2 + 2));
  v10 = objc_allocWithZone(MEMORY[0x277CCA8B8]);
  v11 = sub_251C70EE4();
  v12 = [v10 initWithIdentifier_];

  __swift_destroy_boxed_opaque_existential_1(v15);
  a2[7] = v12;
  return a2;
}

uint64_t *sub_251BB4094(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v21 = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
  v22 = &off_2863FA5F8;
  v5 = swift_allocObject();
  v20[0] = v5;
  v6 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = *(a1 + 80);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  v8 = MEMORY[0x277D84FA0];
  a2[11] = 0;
  a2[12] = v8;
  type metadata accessor for ClinicalSharingDAIState(0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC19HealthRecordsDaemonP33_BED11DFC9D090ABA600C4282F599AD2323ClinicalSharingDAIState_startTime;
  v11 = sub_251C70014();
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v9 + 16) = v12;
  a2[13] = v9;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 9) = 0u;
  v19 = v4;
  swift_getMetatypeMetadata();
  a2[2] = sub_251C70F74();
  a2[3] = v13;
  sub_251A823B4(v20, (a2 + 4));
  sub_251BB4D50();
  v14 = sub_251B37FB0();
  v15 = objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate());
  v16 = [v15 init];
  v17 = [objc_opt_self() sessionWithConfiguration:v14 delegate:v16 delegateQueue:0];

  a2[9] = v17;
  a2[10] = [objc_allocWithZone(MEMORY[0x277CCD570]) initWithCategory:3 domainName:*MEMORY[0x277D12308] healthStore:{*__swift_project_boxed_opaque_existential_1(v20, v21)}];
  __swift_destroy_boxed_opaque_existential_1(v20);
  return a2;
}

uint64_t *sub_251BB42B0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v45[3] = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
  v45[4] = &off_2863FA5F8;
  v5 = swift_allocObject();
  v45[0] = v5;
  v6 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = *(a1 + 80);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  sub_251BB4CF0(0);
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v8[2] = v9;
  v8[3] = v10;
  v8[4] = 0;
  a2[12] = v8;
  *(a2 + 13) = 0u;
  *(a2 + 15) = 0u;
  a2[17] = 0;
  v42 = v4;
  swift_getMetatypeMetadata();
  a2[9] = sub_251C70F74();
  a2[10] = v11;
  sub_251A823B4(v45, (a2 + 2));
  sub_251A823B4(v45, &v42);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(&v42, v44);
  MEMORY[0x28223BE20](v12);
  v14 = &v39[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v40 = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
  v41 = &off_2863FA5F8;
  v16 = swift_allocObject();
  v39[0] = v16;
  v17 = *(v14 + 3);
  *(v16 + 48) = *(v14 + 2);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(v14 + 4);
  *(v16 + 96) = *(v14 + 10);
  v18 = *(v14 + 1);
  *(v16 + 16) = *v14;
  *(v16 + 32) = v18;
  type metadata accessor for ClinicalSharingSyncTaskScheduler();
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v39, &type metadata for ClinicalSharingDefaultDaemonEnvironment);
  v21 = off_2863FA5D0;
  v22 = *(off_2863FA5D0 + 8);
  MEMORY[0x28223BE20](v20);
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = v21[2];
  v24(&v39[-1] - v23);
  v25 = sub_251BB3F44(&v39[-1] - v23, v19);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  a2[7] = v25;
  sub_251A823B4(v45, &v42);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v42, v44);
  MEMORY[0x28223BE20](v26);
  v28 = &v39[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  v40 = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
  v41 = &off_2863FA5F8;
  v30 = swift_allocObject();
  v39[0] = v30;
  v31 = *(v28 + 3);
  *(v30 + 48) = *(v28 + 2);
  *(v30 + 64) = v31;
  *(v30 + 80) = *(v28 + 4);
  *(v30 + 96) = *(v28 + 10);
  v32 = *(v28 + 1);
  *(v30 + 16) = *v28;
  *(v30 + 32) = v32;
  type metadata accessor for ClinicalSharingDAIManager();
  v33 = swift_allocObject();
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v39, &type metadata for ClinicalSharingDefaultDaemonEnvironment);
  MEMORY[0x28223BE20](v34);
  v24(&v39[-1] - v23);
  v35 = sub_251BB4094(&v39[-1] - v23, v33);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  a2[8] = v35;
  v42 = 0;
  v43 = 2;
  sub_251B40E84();
  swift_allocObject();
  v36 = sub_251C709D4();
  __swift_destroy_boxed_opaque_existential_1(v45);
  a2[11] = v36;
  return a2;
}

uint64_t sub_251BB4730(uint64_t a1, uint64_t a2)
{
  v24[3] = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
  v24[4] = &off_2863FA5F8;
  v4 = swift_allocObject();
  v24[0] = v4;
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = *(a1 + 80);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_251A823B4(v24, a2 + 16);
  sub_251A823B4(v24, v23);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v23, v23[3]);
  MEMORY[0x28223BE20](v7);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v22[3] = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
  v22[4] = &off_2863FA5F8;
  v11 = swift_allocObject();
  v22[0] = v11;
  v12 = *(v9 + 3);
  *(v11 + 48) = *(v9 + 2);
  *(v11 + 64) = v12;
  *(v11 + 80) = *(v9 + 4);
  *(v11 + 96) = *(v9 + 10);
  v13 = *(v9 + 1);
  *(v11 + 16) = *v9;
  *(v11 + 32) = v13;
  type metadata accessor for ClinicalSharingSyncTaskCoordinator();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, &type metadata for ClinicalSharingDefaultDaemonEnvironment);
  MEMORY[0x28223BE20](v15);
  v17 = &v22[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = sub_251BB42B0(v17, v14);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  *(a2 + 56) = v19;
  return a2;
}

id sub_251BB4980()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D123E8]) initWithHealthStore_];
    v18[0] = v0;
    v18[1] = v2;
    v16 = &type metadata for ClinicalSharingAccountStore;
    v17 = &off_2863F67B8;
    v15[0] = v3;
    v18[2] = v3;
    v18[3] = v0;
    sub_251A823B4(v15, &v19);
    v4 = objc_allocWithZone(MEMORY[0x277CCD1E8]);
    v5 = v0;
    v6 = v2;
    v7 = v3;
    v18[5] = [v4 initWithHealthStore_];
    v8 = [objc_allocWithZone(MEMORY[0x277CCD7D0]) initWithHealthStore_];

    __swift_destroy_boxed_opaque_existential_1(v15);
    v18[4] = v8;
    v16 = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
    v17 = &off_2863FA5F8;
    v15[0] = swift_allocObject();
    sub_251BB4C40(v18, v15[0] + 16);
    type metadata accessor for ClinicalSharingDaemonPlugin();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v15, &type metadata for ClinicalSharingDefaultDaemonEnvironment);
    MEMORY[0x28223BE20](v10);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v12);
    v14 = sub_251BB4730(v12, v9);
    sub_251BB4C9C(v18);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_251BB4BDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251BB4CF0(uint64_t a1)
{
  if (!qword_2813E3340[0])
  {
    v2 = type metadata accessor for ClinicalSharingSyncTask(255);
    v4 = type metadata accessor for SingleValuePublisherTaskQueue(a1, v2, &off_281CEA850, v3);
    if (!v5)
    {
      atomic_store(v4, qword_2813E3340);
    }
  }
}

unint64_t sub_251BB4D50()
{
  result = qword_2813E1D40;
  if (!qword_2813E1D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813E1D40);
  }

  return result;
}

void *Sequence.autoreleasingMap<A>(_:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a1;
  v9[6] = a2;
  return sub_251BB4F20(sub_251BB5684, v9, a3, a4, MEMORY[0x277D84A98], a5, MEMORY[0x277D84AC0], a8);
}

void *Sequence.autoreleasingMap<A>(_:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), void *a4, uint64_t a5)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v10[6] = a2;
  v8 = sub_251A82284();
  return sub_251BB4F20(sub_251BB56B0, v10, a3, a4, v8, a5, MEMORY[0x277D84950], &v11);
}

void sub_251BB4E94(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = MEMORY[0x25308DB30]();
  a2(a1);
  objc_autoreleasePoolPop(v11);
  if (v7)
  {
    *a7 = v7;
  }
}

void *sub_251BB4F20(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_251C71574();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_251C710C4();
  v63 = sub_251C717A4();
  v58 = sub_251C717B4();
  sub_251C71754();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_251C710B4();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_251C71594();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_251C71794();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_251C71594();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_251C71794();
      sub_251C71594();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

void sub_251BB5614(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = MEMORY[0x25308DB30]();
  a2(a1);
  objc_autoreleasePoolPop(v5);
  if (v2)
  {
    __break(1u);
  }
}

uint64_t Sequence.autoreleasingCompactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_251C710E4();
}

{
  return sub_251C710E4();
}

void sub_251BB5750(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = MEMORY[0x25308DB30]();
  a2(a1);
  objc_autoreleasePoolPop(v4);
}

void *sub_251BB5890(uint64_t a1, void *a2)
{
  v5 = sub_251C70014();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountInformation];
  v10 = [v9 authorization];

  if (v10)
  {
    v39 = v6;
    v40 = a1;
    v11 = [v10 patientID];

    v12 = sub_251C70F14();
    v6 = v13;

    sub_251BB5DAC(0);
    inited = swift_initStackObject();
    *(inited + 32) = 7;
    v15 = inited + 32;
    *(inited + 16) = xmmword_251C74800;
    *(inited + 64) = MEMORY[0x277D837D0];
    *(inited + 40) = v12;
    *(inited + 48) = v6;
    v16 = sub_251C4C508(inited);
    swift_setDeallocating();
    sub_251BB5E68(v15);
    v45 = v16;
    [a2 queryMode];
    if ((HKFHIRResourceQueryModeIncludesFullMode() & 1) == 0)
    {
      v18 = [a2 lastFetchDate];
      if (v18)
      {
        v19 = v18;
        sub_251C6FFE4();

        *&v43[24] = v5;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
        v21 = v39;
        (*(v39 + 16))(boxed_opaque_existential_1, v8, v5);
        sub_251AC712C(v43, 5);
        (*(v21 + 8))(v8, v5);
        v16 = v45;
      }
    }

    v22 = HKClinicalGatewayFeature.webRequestsForInteraction(_:substitutions:)(0xD000000000000013, 0x8000000251C8AB80, v16);

    if (!v2)
    {
      v24 = [a2 accountInformation];
      v25 = [v24 authorization];

      if (v25 && (HKFHIRCredential.asAuthorizationHeader()(v43), v25, (v40 = *&v43[8]) != 0))
      {
        v26 = *v43;
        v28 = *&v43[16];
        v27 = *&v43[24];
        v29 = v22[2];
        if (v29)
        {
          v39 = 0;
          v44 = MEMORY[0x277D84F90];
          sub_251C0BD74(0, v29, 0);
          v6 = v44;
          v38 = v22;
          v30 = (v22 + 4);
          do
          {
            sub_251A823B4(v30, v42);
            sub_251A823B4(v42, v43);
            v31 = v26;
            v41[0] = v26;
            v41[1] = v40;
            v32 = v28;
            v41[2] = v28;
            v33 = v27;
            v41[3] = v27;
            v34 = *&v43[24];
            v35 = *&v43[32];
            v46.value._object = __swift_mutable_project_boxed_opaque_existential_1(v43, *&v43[24]);
            v46.name._countAndFlagsBits = v41;
            v46.name._object = v34;
            v46.value._countAndFlagsBits = v35;
            WebRequest.add(header:)(v46);
            __swift_destroy_boxed_opaque_existential_1(v42);
            v44 = v6;
            v37 = *(v6 + 16);
            v36 = *(v6 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_251C0BD74((v36 > 1), v37 + 1, 1);
              v6 = v44;
            }

            *(v6 + 16) = v37 + 1;
            sub_251A7E8D8(v43, v6 + 40 * v37 + 32);
            v30 += 40;
            --v29;
            v27 = v33;
            v28 = v32;
            v26 = v31;
          }

          while (v29);

          sub_251B220A8(v31, v40, v28, v27);
        }

        else
        {

          sub_251B220A8(v26, v40, v28, v27);
          return MEMORY[0x277D84F90];
        }
      }

      else
      {
        return v22;
      }
    }
  }

  else
  {
    sub_251BB5D58();
    swift_allocError();
    *v17 = xmmword_251C83360;
    swift_willThrow();
  }

  return v6;
}

unint64_t sub_251BB5D58()
{
  result = qword_27F47B8E8;
  if (!qword_27F47B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B8E8);
  }

  return result;
}

void sub_251BB5DAC(uint64_t a1)
{
  if (!qword_27F47B8F0)
  {
    sub_251BB5E04();
    v1 = sub_251C719B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47B8F0);
    }
  }
}

void sub_251BB5E04()
{
  if (!qword_27F47B8F8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47B8F8);
    }
  }
}

uint64_t sub_251BB5E68(uint64_t a1)
{
  sub_251BB5E04();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251BB5ED4(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x282200950](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x282200950](v5);
  }

  sub_251A82284();
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x282200958](v6, v7);
}

uint64_t sub_251BB5F80()
{
  sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
  result = sub_251C71514();
  qword_27F4A26C0 = result;
  return result;
}

uint64_t *sub_251BB5FC8(uint64_t a1, uint64_t a2)
{
  swift_getMetatypeMetadata();
  v2[2] = sub_251C70F74();
  v2[3] = v5;
  v2[4] = a1;
  v2[5] = a2;
  return v2;
}

uint64_t sub_251BB6044(uint64_t a1, char a2)
{
  *(v3 + 256) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v4 = sub_251C70074();
  *(v3 + 176) = v4;
  *(v3 + 184) = *(v4 - 8);
  *(v3 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251BB6108, 0, 0);
}

uint64_t sub_251BB6108()
{
  v1 = v0[20];
  v0[25] = v1;
  swift_bridgeObjectRetain_n();
  if (v1 >> 62)
  {
    v2 = sub_251C717F4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = v0[21];
    v4 = swift_task_alloc();
    v0[26] = v4;
    *(v4 + 16) = v1;
    *(v4 + 24) = v3;
    v5 = swift_task_alloc();
    v0[27] = v5;
    *v5 = v0;
    v5[1] = sub_251BB6288;
    v6 = MEMORY[0x277D84F78] + 8;
    v7 = MEMORY[0x277D84F78] + 8;
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v5, v6, v7, 0, 0, &unk_251C83440, v4, v8);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_251BB6288()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_251BB66B8;
  }

  else
  {

    v2 = sub_251BB63A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251BB63A4()
{
  if (*(v0 + 256) != 1)
  {
    sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
    v1 = sub_251C71514();
    goto LABEL_5;
  }

  if (qword_27F478890 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v1 = qword_27F4A26C0;
LABEL_5:
    v2 = v1;
    *(v0 + 232) = v1;
    v3 = *(v0 + 200);
    if (v3 >> 62)
    {
      v4 = sub_251C717F4();
      if (!v4)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    *(v0 + 144) = MEMORY[0x277D84F90];
    sub_251C0B5E4(0, v4 & ~(v4 >> 63), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  v23 = v2;
  v5 = 0;
  v6 = *(v0 + 200);
  v7 = *(v0 + 144);
  v8 = v6 & 0xC000000000000001;
  v9 = v6 + 32;
  do
  {
    if (v8)
    {
      v10 = MEMORY[0x25308D460](v5, *(v0 + 200));
    }

    else
    {
      v10 = *(v9 + 8 * v5);
    }

    v11 = v10;
    v12 = [v10 identifier];
    sub_251C70054();

    *(v0 + 144) = v7;
    v14 = *(v7 + 16);
    v13 = *(v7 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_251C0B5E4((v13 > 1), v14 + 1, 1);
      v7 = *(v0 + 144);
    }

    v16 = *(v0 + 184);
    v15 = *(v0 + 192);
    v17 = *(v0 + 176);
    ++v5;
    *(v7 + 16) = v14 + 1;
    (*(v16 + 32))(v7 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14, v15, v17);
  }

  while (v4 != v5);

  v2 = v23;
LABEL_18:
  v18 = *(*(v0 + 168) + 32);
  v19 = sub_251C71144();
  *(v0 + 240) = v19;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 152;
  *(v0 + 24) = sub_251BB672C;
  v20 = swift_continuation_init();
  sub_251BBB2B8(0);
  *(v0 + 136) = v21;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_251BB6A44;
  *(v0 + 104) = &block_descriptor_28;
  *(v0 + 112) = v20;
  [v18 notifyDownloadingCompleteAndRequestMoreWithIdentifiers:v19 requestBatchSize:v2 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_251BB66B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251BB672C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_251BB69C4;
  }

  else
  {
    v2 = sub_251BB683C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251BB683C()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 152);

  *(v0 + 200) = v2;
  if (v2 >> 62)
  {
    v3 = sub_251C717F4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = *(v0 + 168);
    v5 = swift_task_alloc();
    *(v0 + 208) = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
    v6 = swift_task_alloc();
    *(v0 + 216) = v6;
    *v6 = v0;
    v6[1] = sub_251BB6288;
    v7 = MEMORY[0x277D84F78] + 8;
    v8 = MEMORY[0x277D84F78] + 8;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v6, v7, v8, 0, 0, &unk_251C83440, v5, v9);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_251BB69C4(uint64_t a1, uint64_t a2)
{
  v3 = v2[30];
  v4 = v2[29];
  swift_willThrow();

  v5 = v2[1];

  return v5();
}

uint64_t sub_251BB6A44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_251A82284();
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_251A8223C(0, &qword_27F47A308, 0x277D12470);
    **(*(v4 + 64) + 40) = sub_251C71154();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_251BB6B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[25] = a2;
  v4[28] = type metadata accessor for HTTPError(0);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v5 = MEMORY[0x277D83D88];
  sub_251BBB354(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v6 = sub_251C70074();
  v4[38] = v6;
  v4[39] = *(v6 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  sub_251BBB3B8(0, &qword_27F47B928, MEMORY[0x277D85830]);
  v4[42] = v7;
  v4[43] = *(v7 - 8);
  v4[44] = swift_task_alloc();
  sub_251BBB354(0, &qword_2813E74D0, MEMORY[0x277CC95F0], v5);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251BB6DAC, 0, 0);
}

uint64_t sub_251BB6DAC()
{
  v1 = *(v0 + 208);
  if (v1 >> 62)
  {
LABEL_37:
    v47 = sub_251C717F4();
    *(v0 + 376) = v47;
    if (v47)
    {
      goto LABEL_3;
    }

LABEL_32:
    *(v0 + 416) = sub_251A82284();
    sub_251C71234();
    v45 = swift_task_alloc();
    *(v0 + 448) = v45;
    *v45 = v0;
    v45[1] = sub_251BB7FEC;
    v46 = *(v0 + 336);

    return MEMORY[0x2822004E8](v0 + 456, 0, 0, v46, v0 + 176);
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 376) = v2;
  if (!v2)
  {
    goto LABEL_32;
  }

LABEL_3:
  v3 = 0;
  for (i = MEMORY[0x277D84F98]; ; i = MEMORY[0x277D84F98])
  {
    *(v0 + 384) = i;
    *(v0 + 392) = i;
    v5 = *(v0 + 208);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25308D460](v3);
    }

    else
    {
      if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v6 = *(v5 + 8 * v3 + 32);
    }

    *(v0 + 400) = v6;
    *(v0 + 408) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v7 = [v6 accountIdentifier];
    if (v7)
    {
      v8 = v7;
      sub_251C70054();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v11 = *(v0 + 360);
    v10 = *(v0 + 368);
    v13 = *(v0 + 304);
    v12 = *(v0 + 312);
    (*(v12 + 56))(v10, v9, 1, v13);
    sub_251BBB4F4(v10, v11, &qword_2813E74D0, MEMORY[0x277CC95F0]);
    if ((*(v12 + 48))(v11, 1, v13) == 1)
    {
      break;
    }

    (*(*(v0 + 312) + 32))(*(v0 + 328), *(v0 + 360), *(v0 + 304));
    if (!*(i + 16) || (v14 = sub_251AC8AFC(*(v0 + 328)), (v15 & 1) == 0))
    {
      v38 = swift_task_alloc();
      *(v0 + 424) = v38;
      *v38 = v0;
      v38[1] = sub_251BB74E4;
      v39 = *(v0 + 328);

      return sub_251C5F768(v39);
    }

    v16 = *(v0 + 328);
    v17 = *(v0 + 304);
    v18 = *(*(v0 + 312) + 8);
    v49 = *(*(i + 56) + 8 * v14);
    v18(v16, v17);
    v19 = *(v0 + 400);
    v20 = *(v0 + 296);
    v48 = *(v0 + 288);
    v21 = *(v0 + 216);
    sub_251BBB574(*(v0 + 368), &qword_2813E74D0, MEMORY[0x277CC95F0]);
    v22 = sub_251C71214();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v20, 1, 1, v22);
    v24 = swift_allocObject();
    v24[2] = 0;
    v25 = v24 + 2;
    v24[3] = 0;
    v24[4] = v21;
    v24[5] = v19;
    v24[6] = v49;
    sub_251BBB4F4(v20, v48, &qword_2813E1E00, MEMORY[0x277D85720]);
    LODWORD(v20) = (*(v23 + 48))(v48, 1, v22);

    v26 = v19;
    v27 = v49;
    v28 = *(v0 + 288);
    if (v20 == 1)
    {
      sub_251BBB574(*(v0 + 288), &qword_2813E1E00, MEMORY[0x277D85720]);
      if (*v25)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_251C71204();
      (*(v23 + 8))(v28, v22);
      if (*v25)
      {
LABEL_17:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v29 = sub_251C711C4();
        v31 = v30;
        swift_unknownObjectRelease();
        goto LABEL_20;
      }
    }

    v29 = 0;
    v31 = 0;
LABEL_20:
    v32 = **(v0 + 200);

    if (v31 | v29)
    {
      v33 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v29;
      *(v0 + 40) = v31;
    }

    else
    {
      v33 = 0;
    }

    v35 = *(v0 + 400);
    v34 = *(v0 + 408);
    v36 = *(v0 + 376);
    v37 = *(v0 + 296);
    *(v0 + 144) = 1;
    *(v0 + 152) = v33;
    *(v0 + 160) = v32;
    swift_task_create();

    sub_251BBB574(v37, &qword_2813E1E00, MEMORY[0x277D85720]);
    if (v34 == v36)
    {

      goto LABEL_32;
    }

    v3 = *(v0 + 408);
  }

  v41 = *(v0 + 368);
  v42 = MEMORY[0x277CC95F0];
  sub_251BBB574(*(v0 + 360), &qword_2813E74D0, MEMORY[0x277CC95F0]);
  sub_251B21E54();
  swift_allocError();
  *v43 = 0;
  swift_willThrow();
  sub_251BBB574(v41, &qword_2813E74D0, v42);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_251BB74E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_251BB7E7C;
  }

  else
  {
    v4 = sub_251BB75F8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251BB75F8()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 384);
  v3 = *(v0 + 320);
  v4 = *(*(v0 + 312) + 16);
  (v4)(v3, *(v0 + 328), *(v0 + 304));
  v5 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 168) = v2;
  v7 = v0 + 168;
  v8 = sub_251AC8AFC(v3);
  v10 = *(v2 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    v75 = v8;
    sub_251ACF0E0();
    v8 = v75;
    goto LABEL_8;
  }

  LOBYTE(v3) = v9;
  if (*(*(v0 + 384) + 24) < v13)
  {
    v14 = *(v0 + 320);
    sub_251ACBE58(v13, isUniquelyReferenced_nonNull_native);
    v8 = sub_251AC8AFC(v14);
    if ((v3 & 1) != (v15 & 1))
    {

      return sub_251C71A14();
    }

    goto LABEL_8;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_8:
  v17 = *(v0 + 168);
  v18 = *(v0 + 432);
  if (v3)
  {
    v19 = v17[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = v18;
  }

  else
  {
    v22 = *(v0 + 312);
    v21 = *(v0 + 320);
    v23 = *(v0 + 304);
    v17[(v8 >> 6) + 8] |= 1 << v8;
    v24 = v8;
    v25 = (v4)(v17[6] + *(v22 + 72) * v8, v21, v23);
    *(v17[7] + 8 * v24) = v18;
    v30 = v17[2];
    v12 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v12)
    {
      __break(1u);
      return MEMORY[0x2822004E8](v25, v26, v27, v28, v29);
    }

    v17[2] = v31;
  }

  v76 = (v7 - 152);
  v77 = v17;
  v32 = *(v0 + 328);
  v33 = *(v0 + 304);
  v34 = *(*(v0 + 312) + 8);
  v34(*(v0 + 320), v33);
  v34(v32, v33);
  v35 = *(v0 + 432);
  while (1)
  {
    v36 = *(v0 + 400);
    v38 = *(v0 + 288);
    v37 = *(v0 + 296);
    v39 = *(v0 + 216);
    sub_251BBB574(*(v0 + 368), &qword_2813E74D0, MEMORY[0x277CC95F0]);
    v40 = sub_251C71214();
    v41 = *(v40 - 8);
    (*(v41 + 56))(v37, 1, 1, v40);
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    v42 = (v4 + 16);
    *(v4 + 24) = 0;
    *(v4 + 32) = v39;
    *(v4 + 40) = v36;
    *(v4 + 48) = v35;
    sub_251BBB4F4(v37, v38, &qword_2813E1E00, MEMORY[0x277D85720]);
    LODWORD(v37) = (*(v41 + 48))(v38, 1, v40);

    v43 = v36;
    v44 = v35;
    v45 = *(v0 + 288);
    if (v37 == 1)
    {
      sub_251BBB574(*(v0 + 288), &qword_2813E1E00, MEMORY[0x277D85720]);
      if (*v42)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_251C71204();
      (*(v41 + 8))(v45, v40);
      if (*v42)
      {
LABEL_15:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v46 = sub_251C711C4();
        v48 = v47;
        swift_unknownObjectRelease();
        goto LABEL_18;
      }
    }

    v46 = 0;
    v48 = 0;
LABEL_18:
    v49 = **(v0 + 200);

    if (v48 | v46)
    {
      v50 = v76;
      *v76 = 0;
      v76[1] = 0;
      *(v0 + 32) = v46;
      *(v0 + 40) = v48;
    }

    else
    {
      v50 = 0;
    }

    v51 = *(v0 + 400);
    v7 = *(v0 + 408);
    v52 = *(v0 + 376);
    v53 = *(v0 + 296);
    *(v0 + 144) = 1;
    *(v0 + 152) = v50;
    *(v0 + 160) = v49;
    LOBYTE(v3) = swift_task_create();

    v8 = sub_251BBB574(v53, &qword_2813E1E00, MEMORY[0x277D85720]);
    if (v7 == v52)
    {
      break;
    }

    v54 = *(v0 + 408);
    *(v0 + 384) = v77;
    *(v0 + 392) = v77;
    v55 = *(v0 + 208);
    if ((v55 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25308D460](v54);
    }

    else
    {
      if (v54 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v8 = *(v55 + 8 * v54 + 32);
    }

    *(v0 + 400) = v8;
    *(v0 + 408) = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v56 = [v8 accountIdentifier];
    if (v56)
    {
      v57 = v56;
      sub_251C70054();

      v58 = 0;
    }

    else
    {
      v58 = 1;
    }

    v60 = *(v0 + 360);
    v59 = *(v0 + 368);
    v62 = *(v0 + 304);
    v61 = *(v0 + 312);
    (*(v61 + 56))(v59, v58, 1, v62);
    sub_251BBB4F4(v59, v60, &qword_2813E74D0, MEMORY[0x277CC95F0]);
    if ((*(v61 + 48))(v60, 1, v62) == 1)
    {
      v71 = *(v0 + 368);
      v72 = MEMORY[0x277CC95F0];
      sub_251BBB574(*(v0 + 360), &qword_2813E74D0, MEMORY[0x277CC95F0]);
      sub_251B21E54();
      swift_allocError();
      *v73 = 0;
      swift_willThrow();
      sub_251BBB574(v71, &qword_2813E74D0, v72);

      v74 = *(v0 + 8);

      return v74();
    }

    (*(*(v0 + 312) + 32))(*(v0 + 328), *(v0 + 360), *(v0 + 304));
    if (!v77[2] || (v63 = sub_251AC8AFC(*(v0 + 328)), (v64 & 1) == 0))
    {
      v68 = swift_task_alloc();
      *(v0 + 424) = v68;
      *v68 = v0;
      v68[1] = sub_251BB74E4;
      v69 = *(v0 + 328);

      return sub_251C5F768(v69);
    }

    v65 = *(v0 + 328);
    v66 = *(v0 + 304);
    v67 = *(*(v0 + 312) + 8);
    v35 = *(v77[7] + 8 * v63);
    v67(v65, v66);
  }

  *(v0 + 416) = sub_251A82284();
  sub_251C71234();
  v70 = swift_task_alloc();
  *(v0 + 448) = v70;
  *v70 = v0;
  v70[1] = sub_251BB7FEC;
  v28 = *(v0 + 336);
  v25 = v0 + 456;
  v29 = v0 + 176;
  v26 = 0;
  v27 = 0;

  return MEMORY[0x2822004E8](v25, v26, v27, v28, v29);
}

uint64_t sub_251BB7E7C()
{
  v1 = *(v0 + 368);
  (*(*(v0 + 312) + 8))(*(v0 + 328), *(v0 + 304));
  sub_251BBB574(v1, &qword_2813E74D0, MEMORY[0x277CC95F0]);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_251BB7FEC()
{

  if (v0)
  {
    v1 = sub_251BB82C0;
  }

  else
  {
    v1 = sub_251BB80FC;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_251BB80FC()
{
  if (*(v0 + 456))
  {
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 448) = v3;
    *v3 = v0;
    v3[1] = sub_251BB7FEC;
    v4 = *(v0 + 336);

    return MEMORY[0x2822004E8](v0 + 456, 0, 0, v4, v0 + 176);
  }
}

uint64_t sub_251BB82C0()
{
  v64 = v0;
  (*(v0[43] + 8))(v0[44], v0[42]);
  v1 = v0[22];
  v0[23] = v1;
  v2 = (v0 + 23);
  v3 = v1;
  if (swift_dynamicCast())
  {
    v5 = v0[34];
    v4 = v0[35];
    v6 = v0[29];

    sub_251BBB5E4(v6, v4);
    sub_251BBB648(v4, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v8 = v0[34];
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *v8;
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v10 = v0[35];
      v11 = v0[33];
      v12 = sub_251C70764();
      __swift_project_value_buffer(v12, qword_2813E8130);
      sub_251BBB648(v10, v11);

      v13 = sub_251C70744();
      v14 = sub_251C713D4();

      v15 = os_log_type_enabled(v13, v14);
      v16 = v0[35];
      v17 = v0[33];
      if (!v15)
      {

        sub_251BBB6AC(v17, type metadata accessor for HTTPError);
        v56 = v16;
        goto LABEL_19;
      }

      v62 = v0[35];
      v18 = v0[31];
      v19 = v0[32];
      v20 = v0[27];
      v21 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v63 = v61;
      *v21 = 136315650;
      *(v21 + 4) = sub_251B10780(*(v20 + 16), *(v20 + 24), &v63);
      *(v21 + 12) = 2048;
      *(v21 + 14) = v9;
      *(v21 + 22) = 2080;
      sub_251BBB648(v17, v19);
      sub_251BBB648(v19, v18);
      sub_251C719F4();
      v22 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v23 = sub_251C70F74();
      v25 = v24;
      sub_251BBB6AC(v19, type metadata accessor for HTTPError);
      sub_251BBB6AC(v17, type metadata accessor for HTTPError);
      v26 = sub_251B10780(v23, v25, &v63);

      *(v21 + 24) = v26;
      _os_log_impl(&dword_251A6C000, v13, v14, "%s threw HTTP error statusCode: %ld error: %s. Continue with downloads.", v21, 0x20u);
      swift_arrayDestroy();
      v27 = v61;
    }

    else
    {
      sub_251BBB6AC(v8, type metadata accessor for HTTPError);
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v40 = v0[35];
      v41 = v0[30];
      v42 = sub_251C70764();
      __swift_project_value_buffer(v42, qword_2813E8130);
      sub_251BBB648(v40, v41);

      v13 = sub_251C70744();
      v43 = sub_251C713D4();

      v44 = os_log_type_enabled(v13, v43);
      v45 = v0[35];
      if (!v44)
      {
        v58 = v0[30];

        sub_251BBB6AC(v58, type metadata accessor for HTTPError);
        v56 = v45;
        goto LABEL_19;
      }

      v46 = v0[31];
      v47 = v0[32];
      v48 = v0[30];
      v49 = v0[27];
      v62 = v0[35];
      v21 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v63 = v50;
      *v21 = 136315394;
      *(v21 + 4) = sub_251B10780(*(v49 + 16), *(v49 + 24), &v63);
      *(v21 + 12) = 2080;
      sub_251BBB648(v48, v47);
      sub_251BBB648(v47, v46);
      sub_251C719F4();
      v51 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v52 = sub_251C70F74();
      v54 = v53;
      sub_251BBB6AC(v47, type metadata accessor for HTTPError);
      sub_251BBB6AC(v48, type metadata accessor for HTTPError);
      v55 = sub_251B10780(v52, v54, &v63);

      *(v21 + 14) = v55;
      _os_log_impl(&dword_251A6C000, v13, v43, "%s threw HTTP error: %s. Continue with downloads.", v21, 0x16u);
      swift_arrayDestroy();
      v27 = v50;
    }

    MEMORY[0x25308E2B0](v27, -1, -1);
    MEMORY[0x25308E2B0](v21, -1, -1);

    v56 = v62;
LABEL_19:
    sub_251BBB6AC(v56, type metadata accessor for HTTPError);
    v57 = *v2;
    goto LABEL_20;
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v28 = sub_251C70764();
  __swift_project_value_buffer(v28, qword_2813E8130);

  v29 = v1;
  v30 = sub_251C70744();
  v31 = sub_251C713D4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = v0[27];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v63 = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_251B10780(*(v32 + 16), *(v32 + 24), &v63);
    *(v33 + 12) = 2080;
    v0[24] = v1;
    v35 = v1;
    sub_251C719F4();
    v36 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v37 = sub_251C70F74();
    v39 = sub_251B10780(v37, v38, &v63);

    *(v33 + 14) = v39;
    _os_log_impl(&dword_251A6C000, v30, v31, "%s threw error: %s. Continue with downloads.", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v34, -1, -1);
    MEMORY[0x25308E2B0](v33, -1, -1);

    goto LABEL_21;
  }

  v57 = v1;
LABEL_20:

LABEL_21:

  v59 = v0[1];

  return v59();
}

uint64_t sub_251BB8AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_251AF4F78;

  return sub_251BB8B98(a5, a6);
}

uint64_t sub_251BB8B98(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_251BB8BBC, 0, 0);
}

uint64_t sub_251BB8BBC()
{
  v1 = sub_251BBAF30();
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate());
  v6 = v1;
  v7 = [v5 init];
  type metadata accessor for WebRequestPerformer();
  v8 = swift_allocObject();
  v9 = [objc_opt_self() sessionWithConfiguration:v6 delegate:v7 delegateQueue:0];

  *(v8 + 16) = v9;
  *(v8 + 24) = 1;
  v10 = *(v3 + 40);
  type metadata accessor for ClinicalDocumentDownloadTask();
  *(v0 + 104) = swift_initStackObject();
  v11 = v10;
  v12 = v2;
  v13 = v4;
  *(v0 + 112) = sub_251AF506C(v13, v8, v11, v12);
  v14 = [v13 contentType];
  if (!v14)
  {
    sub_251C70F14();
    goto LABEL_7;
  }

  v15 = v14;
  v16 = sub_251C70F14();
  v18 = v17;

  v19 = sub_251C70F14();
  if (!v18)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v16 == v19 && v18 == v20)
  {

LABEL_12:
    v25 = *(*(v0 + 96) + 32);
    v26 = [*(v0 + 80) FHIRVersion];
    *(v0 + 120) = v26;
    v27 = [objc_allocWithZone(MEMORY[0x277D123B0]) init];
    *(v0 + 128) = v27;
    v28 = swift_task_alloc();
    *(v0 + 136) = v28;
    *v28 = v0;
    v28[1] = sub_251BB8F20;

    return sub_251AF640C(v25, v26, v27);
  }

  v24 = sub_251C719D4();

  if (v24)
  {
    goto LABEL_12;
  }

LABEL_8:
  v21 = *(*(v0 + 96) + 32);
  v22 = swift_task_alloc();
  *(v0 + 152) = v22;
  *v22 = v0;
  v22[1] = sub_251BB90D0;

  return sub_251AF50FC(v21);
}

uint64_t sub_251BB8F20()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);

  if (v0)
  {
    v4 = sub_251BB91E4;
  }

  else
  {
    v4 = sub_251BB906C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251BB906C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251BB90D0()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_251BB9248;
  }

  else
  {
    v2 = sub_251BBB724;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251BB91E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251BB9248()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251BB92AC(uint64_t a1)
{
  v2[52] = a1;
  v2[53] = v1;
  v3 = sub_251C70074();
  v2[54] = v3;
  v2[55] = *(v3 - 8);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251BB9378, 0, 0);
}

uint64_t sub_251BB9378(uint64_t a1)
{
  v2 = *(v1[53] + 32);
  v1[58] = v2;
  v3 = sub_251C70034();
  v1[59] = v3;
  v1[2] = v1;
  v1[7] = v1 + 50;
  v1[3] = sub_251BB94AC;
  v4 = swift_continuation_init();
  sub_251BBAA40(0);
  v1[60] = v5;
  v1[33] = v5;
  v1[26] = MEMORY[0x277D85DD0];
  v1[27] = 1107296256;
  v1[28] = sub_251AB5E04;
  v1[29] = &block_descriptor_11;
  v1[30] = v4;
  [v2 fetchAttachmentWithIdentifier:v3 completion:v1 + 26];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_251BB94AC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 488) = v1;
  if (v1)
  {
    v2 = sub_251BB9FD8;
  }

  else
  {
    v2 = sub_251BB95BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251BB95BC()
{
  v1 = v0[59];
  v2 = v0[50];
  v0[62] = v2;

  v3 = [v2 accountIdentifier];
  if (v3)
  {
    v4 = v0[56];
    v5 = v0[57];
    v6 = v0[54];
    v7 = v0[55];
    v8 = v3;
    sub_251C70054();

    (*(v7 + 32))(v5, v4, v6);
    v9 = swift_task_alloc();
    v0[63] = v9;
    *v9 = v0;
    v9[1] = sub_251BB9750;
    v10 = v0[57];

    return sub_251C5F768(v10);
  }

  else
  {
    sub_251B21E54();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_251BB9750(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[64] = a1;
  v4[65] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_251BBA05C, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[66] = v6;
    *v6 = v5;
    v6[1] = sub_251BB98E0;
    v7 = v4[62];

    return sub_251BB8B98(v7, a1);
  }
}

uint64_t sub_251BB98E0()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_251BBA0F8;
  }

  else
  {
    v2 = sub_251BB99F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251BB99F4(uint64_t a1)
{
  v2 = v1[60];
  v3 = v1[58];
  v4 = sub_251C70034();
  v1[68] = v4;
  v1[10] = v1;
  v1[15] = v1 + 51;
  v1[11] = sub_251BB9B18;
  v5 = swift_continuation_init();
  v1[41] = v2;
  v1[34] = MEMORY[0x277D85DD0];
  v1[35] = 1107296256;
  v1[36] = sub_251AB5E04;
  v1[37] = &block_descriptor_16_1;
  v1[38] = v5;
  [v3 fetchAttachmentWithIdentifier:v4 completion:v1 + 34];

  return MEMORY[0x282200938](v1 + 10);
}

uint64_t sub_251BB9B18()
{
  v1 = *(*v0 + 112);
  *(*v0 + 552) = v1;
  if (v1)
  {
    v2 = sub_251BBA19C;
  }

  else
  {
    v2 = sub_251BB9C28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251BB9C28()
{
  v1 = v0[68];
  v2 = v0[51];
  v0[70] = v2;

  if ([v2 status] == 3)
  {
    v3 = v0[58];
    v4 = sub_251C70034();
    v0[71] = v4;
    v0[18] = v0;
    v0[19] = sub_251BB9E08;
    v5 = swift_continuation_init();
    sub_251BBB3B8(0, &qword_27F479F40, MEMORY[0x277D85808]);
    v0[49] = v6;
    v0[42] = MEMORY[0x277D85DD0];
    v0[43] = 1107296256;
    v0[44] = sub_251BB5ED4;
    v0[45] = &block_descriptor_20_1;
    v0[46] = v5;
    [v3 processAttachmentWithIdentifier:v4 completion:v0 + 42];

    return MEMORY[0x282200938](v0 + 18);
  }

  else
  {
    v7 = v0[64];
    v8 = v0[62];
    (*(v0[55] + 8))(v0[57], v0[54]);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_251BB9E08()
{
  v1 = *(*v0 + 176);
  *(*v0 + 576) = v1;
  if (v1)
  {
    v2 = sub_251BBA260;
  }

  else
  {
    v2 = sub_251BB9F18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251BB9F18()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 496);
  v3 = *(v0 + 456);
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);

  (*(v5 + 8))(v3, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_251BB9FD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 472);
  swift_willThrow();

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_251BBA05C()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_251BBA0F8()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);
  v4 = *(v0 + 440);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_251BBA19C(uint64_t a1, uint64_t a2)
{
  v3 = v2[68];
  v4 = v2[64];
  v5 = v2[62];
  v6 = v2[57];
  v7 = v2[54];
  v8 = v2[55];
  swift_willThrow();

  (*(v8 + 8))(v6, v7);

  v9 = v2[1];

  return v9();
}

uint64_t sub_251BBA260(uint64_t a1, uint64_t a2)
{
  v3 = v2[71];
  v4 = v2[70];
  v5 = v2[64];
  v6 = v2[62];
  v7 = v2[57];
  v8 = v2[54];
  v9 = v2[55];
  swift_willThrow();

  (*(v9 + 8))(v7, v8);

  v10 = v2[1];

  return v10();
}

uint64_t sub_251BBA334(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_251C70074();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251BBA400, 0, 0);
}

uint64_t sub_251BBA400()
{
  v1 = [*(v0 + 16) accountIdentifier];
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = v1;
    sub_251C70054();

    (*(v5 + 32))(v3, v2, v4);
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v7[1] = sub_251BBA57C;
    v8 = *(v0 + 56);

    return sub_251C5F768(v8);
  }

  else
  {
    sub_251B21E54();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_251BBA57C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_251BBA8B4, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[11] = v6;
    *v6 = v5;
    v6[1] = sub_251BBA704;
    v7 = v4[2];

    return sub_251BB8B98(v7, a1);
  }
}

uint64_t sub_251BBA704()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_251BBA938;
  }

  else
  {
    v2 = sub_251BBA818;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251BBA818()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_251BBA8B4()
{
  (*(v0[5] + 8))(v0[7], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_251BBA938()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_251BBA9D4()
{

  return swift_deallocClassInstance();
}

void sub_251BBAA40(uint64_t a1)
{
  if (!qword_27F47B900)
  {
    sub_251A8223C(255, &qword_27F47A308, 0x277D12470);
    sub_251A82284();
    v1 = sub_251C71224();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47B900);
    }
  }
}

void sub_251BBAAD8(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = sub_251C6FE64();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  v6 = sub_251C6FDD4();
  sub_251BBB354(0, &qword_27F47B908, sub_251BBB140, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C74800;
  v8 = *MEMORY[0x277CCA1B0];
  *(inited + 32) = *MEMORY[0x277CCA1B0];
  v9 = *MEMORY[0x277CCA198];
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v10;
  *(inited + 40) = v9;
  v11 = v8;
  v12 = v9;
  sub_251C4C3F8(inited);
  swift_setDeallocating();
  sub_251BBB6AC(inited + 32, sub_251BBB140);
  type metadata accessor for FileAttributeKey(0);
  sub_251BBB1AC();
  v13 = sub_251C70E44();

  v41 = 0;
  v14 = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:v13 error:&v41];

  if (v14)
  {
    v15 = v41;
  }

  else
  {
    v16 = v41;
    v17 = sub_251C6FD84();

    swift_willThrow();
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v18 = sub_251C70764();
    __swift_project_value_buffer(v18, qword_2813E8130);
    v20 = v39;
    v19 = v40;
    (*(v39 + 16))(v4, a1, v40);
    v21 = v17;
    v22 = sub_251C70744();
    v23 = sub_251C713C4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v5;
      v26 = v25;
      v41 = v25;
      *v24 = 136315394;
      v27 = sub_251C6FE34();
      v28 = v19;
      v30 = v29;
      (*(v20 + 8))(v4, v28);
      v31 = sub_251B10780(v27, v30, &v41);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2112;
      v32 = v17;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v33;
      v34 = v37;
      *v37 = v33;
      _os_log_impl(&dword_251A6C000, v22, v23, "ClinicalDocumentDownloadTaskCoordinator creating directory: %s failed %@)", v24, 0x16u);
      sub_251B36EB4(v34);
      MEMORY[0x25308E2B0](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v35 = v26;
      v5 = v38;
      MEMORY[0x25308E2B0](v35, -1, -1);
      MEMORY[0x25308E2B0](v24, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v4, v19);
    }

    swift_willThrow();
  }
}

id sub_251BBAF30()
{
  v1 = sub_251C6FE64();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  sub_251A8223C(0, &qword_2813E1D40, 0x277CCAD38);
  v8 = sub_251B37FB0();
  [v8 setAllowsConstrainedNetworkAccess_];
  [v8 set:*MEMORY[0x277CCA198] downloadFileProtectionType:?];
  v9 = objc_opt_self();
  v10 = [v9 downloadableAttachmentsDirectory];
  sub_251C6FE14();

  sub_251BBAAD8(v7);
  if (v0)
  {

    (*(v2 + 8))(v7, v1);
  }

  else
  {
    v11 = *(v2 + 8);
    v11(v7, v1);
    v12 = [v9 downloadableAttachmentsDirectory];
    sub_251C6FE14();

    v13 = sub_251C6FDD4();
    v11(v5, v1);
    [v8 set:v13 directoryForDownloadedFiles:?];
  }

  return v8;
}

void sub_251BBB140(uint64_t a1)
{
  if (!qword_27F47B910)
  {
    type metadata accessor for FileAttributeKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47B910);
    }
  }
}

unint64_t sub_251BBB1AC()
{
  result = qword_27F478C68;
  if (!qword_27F478C68)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478C68);
  }

  return result;
}

uint64_t sub_251BBB204(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_251AF4F78;

  return sub_251BB6B28(a1, a2, v7, v6);
}

void sub_251BBB2B8(uint64_t a1)
{
  if (!qword_27F47B918)
  {
    sub_251B36F3C(255, &qword_27F47B920, &qword_27F47A308, 0x277D12470, MEMORY[0x277D83940]);
    sub_251A82284();
    v1 = sub_251C71224();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47B918);
    }
  }
}

void sub_251BBB354(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251BBB3B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_251A82284();
    v7 = a3(a1, MEMORY[0x277D84F78] + 8, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251BBB42C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_251B14FE8;

  return sub_251BB8AEC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_251BBB4F4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251BBB354(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251BBB574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251BBB354(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BBB5E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTTPError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251BBB648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTTPError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251BBB6AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_251BBB728(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ClinicalDocumentDownloader());
  v3 = a1;
  v4 = sub_251B3451C(v3);

  return v4;
}

uint64_t sub_251BBB7A8()
{
  sub_251B3F554(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_251C74800;
  v1 = sub_251C70F14();
  v3 = v2;
  v4 = type metadata accessor for DefaultDaemonXPCService();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_identifier];
  *v6 = v1;
  v6[1] = v3;
  v7 = &v5[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_requiredEntitlementOverride];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = objc_allocWithZone(MEMORY[0x277D10BF0]);

  v9 = sub_251C70EE4();

  v10 = [v8 initWithLabel_];

  *&v5[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener] = v10;
  v11 = &v5[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_serverGenerator];
  *v11 = sub_251BBB728;
  v11[1] = 0;
  v14.receiver = v5;
  v14.super_class = v4;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  *(v0 + 56) = v4;
  *(v0 + 64) = &off_2863F5E58;
  *(v0 + 32) = v12;
  return v0;
}

uint64_t sub_251BBB8F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_251BBB940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

SecAccessControlRef sub_251BBB9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = sub_251C70CF4();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = &_s35DeviceIdentityBAASignatureGeneratorVN;
  v27[4] = &off_2863F88F0;
  sub_251A823B4(v27, v26);
  *(&v23 + 1) = 0x4143C68000000000;
  *&v21 = a1;
  *(&v21 + 1) = a2;
  sub_251A823B4(v26, v24);
  *&v22 = 0xD000000000000010;
  *(&v22 + 1) = 0x8000000251C8F140;
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
  if (result)
  {
    sub_251C70CD4();
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_1(v26);

      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      v20 = v7;
      v19 = a3;
      sub_251AB6108();
      v11 = sub_251C71514();
      v12 = sub_251C71514();
      v13 = sub_251C71514();
      v27[5] = v11;
      v27[6] = v12;
      v27[7] = v13;
      v27[8] = 0xD000000000000010;
      v27[9] = 0x8000000251C8F140;
      v27[10] = 0xD000000000000010;
      v27[11] = 0x8000000251C8F140;
      v14 = sub_251C1849C();
      swift_bridgeObjectRelease_n();

      *&v23 = v14;
      sub_251AFDCC8();
      (*(v20 + 8))(v9, v28);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v15 = v24[0];
      v16 = v19;
      *(v19 + 32) = v23;
      *(v16 + 48) = v15;
      *(v16 + 64) = v24[1];
      *(v16 + 80) = v25;
      v17 = v22;
      *v16 = v21;
      *(v16 + 16) = v17;
    }

    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251BBBC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(a2 + 88))();
  v7 = (*(a2 + 96))(a1, a2);
  sub_251C2653C(v7, 0, a3);
}

uint64_t sub_251BBBD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(a2 + 80))();
  v7 = (*(a2 + 96))(a1, a2);
  sub_251C2653C(v7, 0, a3);
}

uint64_t sub_251BBBDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(a2 + 72))();
  v7 = (*(a2 + 96))(a1, a2);
  sub_251C2653C(v7, 0, a3);
}

uint64_t sub_251BBBE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = (*(a3 + 64))(a2, a3);
  v9 = (*(a3 + 96))(a2, a3);
  sub_251C2653C(v9, v6, a4);
}

uint64_t sub_251BBBF20()
{
  v0 = sub_251C70764();
  __swift_allocate_value_buffer(v0, qword_2813E8130);
  __swift_project_value_buffer(v0, qword_2813E8130);
  return sub_251C70754();
}

uint64_t sub_251BBBFA4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_251BBC168(0);
  swift_allocObject();
  v7 = a1;
  v8 = a2;
  result = sub_251C70A64();
  *a3 = result;
  return result;
}

void sub_251BBC03C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_251AD96B8;
  *(v9 + 24) = v8;
  v11[4] = sub_251BBC2F4;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_251AD9914;
  v11[3] = &block_descriptor_12;
  v10 = _Block_copy(v11);

  [a3 fetchConceptForIdentifier:a4 loadRelationships:1 completionHandler:v10];
  _Block_release(v10);
}

void sub_251BBC168(uint64_t a1)
{
  if (!qword_27F47B930)
  {
    sub_251BBC1D8(255);
    sub_251A82284();
    v1 = sub_251C70A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47B930);
    }
  }
}

void sub_251BBC1D8(uint64_t a1)
{
  if (!qword_27F47B938)
  {
    sub_251BBC230();
    v1 = sub_251C71574();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47B938);
    }
  }
}

unint64_t sub_251BBC230()
{
  result = qword_27F479F70;
  if (!qword_27F479F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479F70);
  }

  return result;
}

void sub_251BBC27C(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else
  {
    (a3)(a1);
  }
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251BBC324(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BBE110();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251BBC380(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BBE6D4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251BBC3DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BBE728();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251BBC428()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A26C8);
  __swift_project_value_buffer(v0, qword_27F4A26C8);
  sub_251BBE77C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "UNDEFINED_SERVICE";
  *(v7 + 8) = 17;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "HEALTH_INSTITUTION";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "OTS";
  *(v12 + 8) = 3;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BBC674()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A26E0);
  __swift_project_value_buffer(v0, qword_27F4A26E0);
  sub_251BBE77C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "VX";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "V1";
  *(v11 + 1) = 2;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "V2";
  *(v12 + 8) = 2;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BBC8B4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A26F8);
  __swift_project_value_buffer(v0, qword_27F4A26F8);
  sub_251BBE77C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "ALG_X";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "AES_ECM";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "AES_GCM";
  *(v12 + 8) = 7;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BBCAFC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2710);
  __swift_project_value_buffer(v0, qword_27F4A2710);
  sub_251BBE77C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "health_institute_id";
  *(v7 + 8) = 19;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "deletion_commitment";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "vk_hr";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "type";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v10();
  v16 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v16 = "service_type";
  *(v16 + 8) = 12;
  *(v16 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BBCDAC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_251C70534();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          sub_251C704D4();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_14;
          case 4:
            v6 = v3;
            sub_251AB99F4();
            break;
          case 5:
            v6 = v3;
            sub_251BBE110();
            break;
          default:
            goto LABEL_5;
        }

        v3 = v6;
        sub_251C70494();
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251BBCED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_251C70674(), !v4))
  {
    v8 = v3[2];
    v9 = v3[3];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_14;
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v11 = v8;
      v12 = v8 >> 32;
    }

    if (v11 == v12)
    {
      goto LABEL_14;
    }

LABEL_13:
    result = sub_251C70624();
    if (v4)
    {
      return result;
    }

LABEL_14:
    v13 = v3[4];
    v14 = v3[5];
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_23;
      }

      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
    }

    else
    {
      if (!v15)
      {
        if ((v14 & 0xFF000000000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v16 = v13;
      v17 = v13 >> 32;
    }

    if (v16 == v17)
    {
      goto LABEL_23;
    }

LABEL_22:
    result = sub_251C70624();
    if (v4)
    {
      return result;
    }

LABEL_23:
    if (v3[6])
    {
      sub_251AB99F4();
      result = sub_251C70604();
      if (v4)
      {
        return result;
      }

      if (!v3[8])
      {
        goto LABEL_29;
      }
    }

    else if (!v3[8])
    {
LABEL_29:
      type metadata accessor for PBAssociatedData(0);
      return sub_251C70394();
    }

    sub_251BBE110();
    result = sub_251C70604();
    if (v4)
    {
      return result;
    }

    goto LABEL_29;
  }

  return result;
}

uint64_t sub_251BBD0BC@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_251C745D0;
  *(a2 + 32) = xmmword_251C745D0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  return sub_251C703A4();
}

uint64_t sub_251BBD150(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BBDEF8(&qword_27F47B980, type metadata accessor for PBAssociatedData, &unk_251C837D0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BBD1F0(uint64_t a1)
{
  v2 = sub_251BBDEF8(&qword_27F47B968, type metadata accessor for PBAssociatedData, &unk_251C83808);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BBD25C(uint64_t a1, uint64_t a2)
{
  sub_251BBDEF8(&qword_27F47B968, type metadata accessor for PBAssociatedData, &unk_251C83808);

  return sub_251C705C4();
}

uint64_t sub_251BBD2DC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2728);
  __swift_project_value_buffer(v0, qword_27F4A2728);
  sub_251BBE77C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_251C7C1F0;
  v5 = v20 + v4;
  v6 = v20 + v4 + *(v2 + 56);
  *(v20 + v4) = 2;
  *v6 = "iv";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 3;
  *v10 = "associated_data";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 4;
  *v12 = "cyphertext";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 5;
  *v14 = "data_protocol_version";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 6;
  *v16 = "algorithm";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 7;
  *v18 = "client_version";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251BBD5C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
        switch(result)
        {
          case 5:
            v11 = v4;
            sub_251BBE6D4();
LABEL_19:
            v4 = v11;
            sub_251C70494();
            break;
          case 6:
            v11 = v4;
            sub_251BBE728();
            goto LABEL_19;
          case 7:
            sub_251C70534();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 2:
            goto LABEL_16;
          case 3:
            sub_251BBD70C(a1, v5, a2, a3);
            break;
          case 4:
LABEL_16:
            sub_251C704D4();
            break;
        }
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251BBD70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBNode(0);
  type metadata accessor for PBAssociatedData(0);
  sub_251BBDEF8(&qword_27F47B968, type metadata accessor for PBAssociatedData, &unk_251C83808);
  return sub_251C70564();
}

uint64_t sub_251BBD7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 == v12)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_251C70624();
  if (v4)
  {
    return result;
  }

LABEL_10:
  result = sub_251BBD9C0(v3, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v14 = v3[2];
  v15 = v3[3];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_21;
    }

    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
  }

  else
  {
    if (!v16)
    {
      if ((v15 & 0xFF000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v17 = v14;
    v18 = v14 >> 32;
  }

  if (v17 != v18)
  {
LABEL_20:
    sub_251C70624();
  }

LABEL_21:
  if (v3[4])
  {
    sub_251BBE6D4();
    sub_251C70604();
  }

  if (v3[6])
  {
    sub_251BBE728();
    sub_251C70604();
  }

  v19 = v3[9];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v3[8] & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    sub_251C70674();
  }

  type metadata accessor for PBNode(0);
  return sub_251C70394();
}

uint64_t sub_251BBD9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251BBE77C(0, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBAssociatedData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBNode(0);
  sub_251BBE7E0(a1 + *(v12 + 40), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251BBE874(v7);
  }

  sub_251BBE900(v7, v11);
  sub_251BBDEF8(&qword_27F47B968, type metadata accessor for PBAssociatedData, &unk_251C83808);
  sub_251C706A4();
  return sub_251BBE9F8(v11, type metadata accessor for PBAssociatedData);
}

uint64_t sub_251BBDBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_251C745D0;
  *(a2 + 16) = xmmword_251C745D0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  sub_251C703A4();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for PBAssociatedData(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_251BBDCBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BBDEF8(&qword_27F47B990, type metadata accessor for PBNode, &unk_251C83668);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BBDD5C(uint64_t a1)
{
  v2 = sub_251BBDEF8(&qword_27F47B948, type metadata accessor for PBNode, &unk_251C836A0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BBDDC8(uint64_t a1, uint64_t a2)
{
  sub_251BBDEF8(&qword_27F47B948, type metadata accessor for PBNode, &unk_251C836A0);

  return sub_251C705C4();
}

uint64_t sub_251BBDEF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_251BBE110()
{
  result = qword_27F47B988;
  if (!qword_27F47B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B988);
  }

  return result;
}

uint64_t sub_251BBE164(_BOOL8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for PBAssociatedData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BBE77C(0, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v25 - v9);
  sub_251BBE964(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_251A9D1F0(*a1, a1[1], *a2, *(a2 + 8)))
  {
    goto LABEL_34;
  }

  v15 = *(type metadata accessor for PBNode(0) + 40);
  v16 = *(v12 + 48);
  sub_251BBE7E0(a1 + v15, v14);
  sub_251BBE7E0(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_251BBE874(v14);
      goto LABEL_9;
    }

LABEL_7:
    sub_251BBE9F8(v14, sub_251BBE964);
    goto LABEL_34;
  }

  sub_251BBE7E0(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    sub_251BBE9F8(v10, type metadata accessor for PBAssociatedData);
    goto LABEL_7;
  }

  sub_251BBE900(&v14[v16], v7);
  v18 = sub_251BBE554(v10, v7);
  sub_251BBE9F8(v7, type metadata accessor for PBAssociatedData);
  sub_251BBE9F8(v10, type metadata accessor for PBAssociatedData);
  sub_251BBE874(v14);
  if ((v18 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_9:
  if (!sub_251A9D1F0(a1[2], a1[3], *(a2 + 16), *(a2 + 24)))
  {
    goto LABEL_34;
  }

  v19 = a1[4];
  v20 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v20)
    {
      if (v20 == 1)
      {
        if (v19 != 1)
        {
          goto LABEL_34;
        }
      }

      else if (v19 != 2)
      {
        goto LABEL_34;
      }
    }

    else if (v19)
    {
      goto LABEL_34;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_34;
  }

  v21 = a1[6];
  v22 = *(a2 + 48);
  if (*(a2 + 56) == 1)
  {
    if (v22)
    {
      if (v22 == 1)
      {
        if (v21 == 1)
        {
          goto LABEL_30;
        }
      }

      else if (v21 == 2)
      {
        goto LABEL_30;
      }

LABEL_34:
      v23 = 0;
      return v23 & 1;
    }

    if (v21)
    {
      goto LABEL_34;
    }
  }

  else if (v21 != v22)
  {
    goto LABEL_34;
  }

LABEL_30:
  if ((a1[8] != *(a2 + 64) || a1[9] != *(a2 + 72)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_251C703B4();
  sub_251BBDEF8(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v23 = sub_251C70ED4();
  return v23 & 1;
}

uint64_t sub_251BBE554(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0 || !sub_251A9D1F0(a1[2], a1[3], *(a2 + 16), *(a2 + 24)) || !sub_251A9D1F0(a1[4], a1[5], *(a2 + 32), *(a2 + 40)))
  {
    return 0;
  }

  v5 = a1[6];
  v6 = *(a2 + 48);
  if (*(a2 + 56) == 1)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if (v5 != 2)
        {
          return 0;
        }
      }

      else if (v5 != 3)
      {
        return 0;
      }
    }

    else if (v6)
    {
      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  v7 = a1[8];
  v8 = *(a2 + 64);
  if (*(a2 + 72) != 1)
  {
    if (v7 == v8)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      if (v7 == 1)
      {
        goto LABEL_31;
      }

      return 0;
    }

    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

LABEL_31:
  type metadata accessor for PBAssociatedData(0);
  sub_251C703B4();
  sub_251BBDEF8(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

unint64_t sub_251BBE6D4()
{
  result = qword_27F47B998;
  if (!qword_27F47B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B998);
  }

  return result;
}

unint64_t sub_251BBE728()
{
  result = qword_27F47B9A0;
  if (!qword_27F47B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B9A0);
  }

  return result;
}

void sub_251BBE77C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251BBE7E0(uint64_t a1, uint64_t a2)
{
  sub_251BBE77C(0, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251BBE874(uint64_t a1)
{
  sub_251BBE77C(0, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251BBE900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBAssociatedData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_251BBE964(uint64_t a1)
{
  if (!qword_27F47B9B0)
  {
    sub_251BBE77C(255, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47B9B0);
    }
  }
}

uint64_t sub_251BBE9F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251BBEAB0(uint64_t a1)
{
  result = sub_251C703B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251BBEB78(uint64_t a1)
{
  sub_251C703B4();
  if (v1 <= 0x3F)
  {
    sub_251BBE77C(319, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_251BBEC64()
{
  result = qword_27F47B9D8;
  if (!qword_27F47B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B9D8);
  }

  return result;
}

unint64_t sub_251BBECEC()
{
  result = qword_27F47B9F0;
  if (!qword_27F47B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B9F0);
  }

  return result;
}

unint64_t sub_251BBED74()
{
  result = qword_27F47BA08;
  if (!qword_27F47BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BA08);
  }

  return result;
}

unint64_t sub_251BBEDFC()
{
  result = qword_27F47BA20;
  if (!qword_27F47BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BA20);
  }

  return result;
}

unint64_t sub_251BBEE54()
{
  result = qword_27F47BA28;
  if (!qword_27F47BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BA28);
  }

  return result;
}

unint64_t sub_251BBEEAC()
{
  result = qword_27F47BA30;
  if (!qword_27F47BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BA30);
  }

  return result;
}

unint64_t sub_251BBEF04()
{
  result = qword_27F47BA38;
  if (!qword_27F47BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BA38);
  }

  return result;
}

unint64_t sub_251BBEF5C()
{
  result = qword_27F47BA40;
  if (!qword_27F47BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BA40);
  }

  return result;
}

unint64_t sub_251BBEFB4()
{
  result = qword_27F47BA48;
  if (!qword_27F47BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BA48);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingDataNodeInfo(uint64_t a1)
{
  result = qword_27F47BA50;
  if (!qword_27F47BA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251BBF07C(uint64_t a1)
{
  sub_251BBF120(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PBReference(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PBTypedData(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251BBF120(uint64_t a1)
{
  if (!qword_2813E1DF8)
  {
    sub_251C70074();
    sub_251AD27C4(&qword_2813E74E0, MEMORY[0x277CC9600]);
    v1 = sub_251C71294();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1DF8);
    }
  }
}

uint64_t sub_251BBF1A4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_251C71AA4();

    sub_251C70FB4();
    v16 = sub_251C71AD4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_251C719D4() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251BBF35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_251AD27C4(&qword_2813E74E0, MEMORY[0x277CC9600]);
      v26 = sub_251C70E84();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_251AD27C4(&qword_27F4796A0, MEMORY[0x277CC9610]);
        v31 = sub_251C70ED4();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251BBF6E4(uint64_t *a1, uint64_t *a2)
{
  if ((sub_251BBF35C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ClinicalSharingDataNodeInfo(0);
  if ((sub_251A92614() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = *(a1 + v5 + 24);
  v10 = (a2 + v5);
  v11 = v10[2];
  v12 = v10[3];
  v13 = v6 == *v10 && v7 == v10[1];
  if (!v13 && (sub_251C719D4() & 1) == 0 || !sub_251A9D1F0(v8, v9, v11, v12))
  {
    return 0;
  }

  return sub_251A911BC();
}

void sub_251BBF7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_251AD96B8;
  *(v14 + 24) = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CCDB98]);

  v16 = sub_251C6FF94();
  v17 = sub_251C6FBC4();
  sub_251BBFA48();
  v18 = sub_251C71144();
  v21[4] = sub_251BBFA40;
  v21[5] = v14;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_251BBFA94;
  v21[3] = &block_descriptor_13;
  v19 = _Block_copy(v21);
  v20 = [v15 initWithQuantityType:a3 quantitySamplePredicate:a4 anchorDate:v16 intervalComponents:v17 quantityRanges:v18 resultsHandler:v19];
  _Block_release(v19);

  [a8 executeQuery_];
}

void sub_251BBF988(int a1, void *a2, id a3, void (*a4)(uint64_t, BOOL))
{
  v6 = a2;
  if (!a2)
  {
    v6 = a3;
    if (!a3)
    {
      sub_251AC6624();
      v7 = swift_allocError();
      a3 = 0;
      v6 = v7;
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 2;
    }

    v9 = a3;
  }

  v10 = a2;
  a4(v6, a2 == 0);

  sub_251BBFB4C(v6);
}

unint64_t sub_251BBFA48()
{
  result = qword_27F47A328;
  if (!qword_27F47A328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F47A328);
  }

  return result;
}

void sub_251BBFA94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251BBFB5C(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        sub_251C716A4();

        v15 = 0xD000000000000020;
        type metadata accessor for HKClinicalGatewayFeatureName(0);
        v5 = a1;
        v6 = sub_251C70F74();
        MEMORY[0x25308CDA0](v6);

        v7 = 0x6572757461656620;
        v8 = 0xE800000000000000;
LABEL_20:
        MEMORY[0x25308CDA0](v7, v8);
        return v15;
      }
    }

    else if (a3)
    {
      v15 = 0;
      sub_251C716A4();
      MEMORY[0x25308CDA0](0xD000000000000037, 0x8000000251C8F4C0);
      v10 = sub_251C719A4();
      MEMORY[0x25308CDA0](v10);

      return v15;
    }

    sub_251C716A4();

    v9 = 0xD000000000000022;
    goto LABEL_19;
  }

  if (a3 <= 5u)
  {
    if (a3 != 4)
    {
LABEL_18:
      sub_251C716A4();

      v9 = 0xD000000000000016;
      goto LABEL_19;
    }

    sub_251C716A4();

    v9 = 0xD000000000000017;
LABEL_19:
    v15 = v9;
    v7 = a1;
    v8 = a2;
    goto LABEL_20;
  }

  if (a3 == 6)
  {
    sub_251C716A4();

    v9 = 0xD00000000000001ALL;
    goto LABEL_19;
  }

  if (a3 == 7)
  {
    goto LABEL_18;
  }

  if (a1 > 1)
  {
    v11 = a1 ^ 2 | a2;
    v12 = 0xD000000000000023;
    v13 = 0xD000000000000028;
  }

  else
  {
    v11 = a1 | a2;
    v12 = 0xD000000000000026;
    v13 = 0xD00000000000002FLL;
  }

  if (v11)
  {
    return v13;
  }

  else
  {
    return v12;
  }
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon41ClinicalSharingDocumentReferenceInfoErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 16) & 0xF;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_251BBFEF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_251BBFF38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t sub_251BBFF7C(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_251BBFFA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_251C719C4();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_251C6FD74();

  v11 = [v10 hrs_safelyLoggableDescription];
  v12 = sub_251C70F14();

  return v12;
}

id sub_251BC0124(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, v2, a1);
  v8 = sub_251C719C4();
  if (v8)
  {
    v9 = v8;
    (*(v5 + 8))(v7, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v5 + 32))(v10, v7, a1);
  }

  v11 = sub_251C6FD74();

  v12 = [v11 domain];
  if (!v12)
  {
    sub_251C70F14();
    v12 = sub_251C70EE4();
  }

  v13 = [v11 code];
  sub_251BC039C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C74800;
  *(inited + 32) = sub_251C70F14();
  *(inited + 40) = v15;
  v16 = Error.hdhr_friendlyDescription.getter(a1, a2);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v16;
  *(inited + 56) = v17;
  sub_251C4C154(inited);
  swift_setDeallocating();
  sub_251BC03F4(inited + 32);
  v18 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v19 = sub_251C70E44();

  v20 = [v18 initWithDomain:v12 code:v13 userInfo:v19];

  return v20;
}

void sub_251BC039C(uint64_t a1)
{
  if (!qword_2813E1C50)
  {
    sub_251AFE93C();
    v1 = sub_251C719B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1C50);
    }
  }
}

uint64_t sub_251BC03F4(uint64_t a1)
{
  sub_251AFE93C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_251BC0450(void *a1)
{
  v3 = [v1 features];
  if (v3)
  {
    v4 = v3;
    sub_251BC065C();
    v5 = sub_251C71154();

    if (v5 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x25308D460](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v2 = v8;
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v10 = [v8 name];
        v11 = sub_251C70F14();
        v13 = v12;
        if (v11 == sub_251C70F14() && v13 == v14)
        {

LABEL_18:

          return v2;
        }

        v16 = sub_251C719D4();

        if (v16)
        {
          goto LABEL_18;
        }

        ++v7;
        if (v9 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  sub_251A82AF0();
  swift_allocError();
  *v17 = a1;
  *(v17 + 8) = 0;
  *(v17 + 16) = 2;
  swift_willThrow();
  v18 = a1;
  return v2;
}

unint64_t sub_251BC065C()
{
  result = qword_27F47BA60;
  if (!qword_27F47BA60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F47BA60);
  }

  return result;
}

uint64_t Daemon.__allocating_init(machService:)(uint64_t a1, uint64_t a2)
{
  sub_251BC084C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_251C747F0;
  v5 = type metadata accessor for ClinicalDocumentDownloaderPlugin();
  v6 = swift_allocObject();
  *(v4 + 56) = v5;
  *(v4 + 64) = &off_2863FAFE8;
  *(v4 + 32) = v6;
  v7 = sub_251BB4980();
  *(v4 + 96) = type metadata accessor for ClinicalSharingDaemonPlugin();
  *(v4 + 104) = &off_2863FAE30;
  *(v4 + 72) = v7;
  v8 = type metadata accessor for IngestionServiceDaemonPlugin();
  v9 = swift_allocObject();
  *(v4 + 136) = v8;
  *(v4 + 144) = &off_2863F9E30;
  *(v4 + 112) = v9;
  v10 = type metadata accessor for IssuerDirectoryDownloadDaemonPlugin();
  v11 = swift_allocObject();
  type metadata accessor for IssuerDirectoryDownloadTaskScheduler();
  swift_allocObject();
  *(v11 + 16) = sub_251AF3D30(sub_251AF3BB8, 0, sub_251AF3C24, 0);
  *(v4 + 176) = v10;
  *(v4 + 184) = &off_2863FF030;
  *(v4 + 152) = v11;
  v12 = type metadata accessor for SignedClinicalDataDaemonPlugin();
  v13 = swift_allocObject();
  *(v4 + 216) = v12;
  *(v4 + 224) = &off_2863FCB98;
  *(v4 + 192) = v13;
  type metadata accessor for Daemon();
  v14 = swift_allocObject();
  v15 = objc_allocWithZone(type metadata accessor for DaemonXPCConnectionManager());
  v16 = sub_251C6E624(a1, a2);
  *(v14 + 16) = v4;
  *(v14 + 24) = v16;
  return v14;
}

void sub_251BC084C(uint64_t a1)
{
  if (!qword_2813E1C68)
  {
    sub_251BC08A4();
    v1 = sub_251C719B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1C68);
    }
  }
}

unint64_t sub_251BC08A4()
{
  result = qword_2813E7070;
  if (!qword_2813E7070)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813E7070);
  }

  return result;
}

uint64_t sub_251BC0908()
{
  if (qword_2813E26F8 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v0 = sub_251C70764();
    v58[1] = __swift_project_value_buffer(v0, qword_2813E8130);
    v1 = sub_251C70744();
    v2 = sub_251C713F4();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_251A6C000, v1, v2, "Daemon launching", v3, 2u);
      MEMORY[0x25308E2B0](v3, -1, -1);
    }

    v4 = *(v59 + 16);
    v62 = *(v4 + 16);
    if (!v62)
    {
      break;
    }

    v5 = 0;
    v60 = v4;
    v61 = v4 + 32;
    while (v5 < *(v4 + 16))
    {
      v63 = v5;
      sub_251A823B4(v61 + 40 * v5, v80);
      v6 = v81;
      v7 = v82;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      v8 = (*(v7 + 24))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v80);
      v66 = *(v8 + 16);
      v67 = v8;
      if (v66)
      {
        v9 = 0;
        v10 = *(v59 + 24);
        v11 = OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_serviceMap;
        v12 = v67 + 32;
        v64 = OBJC_IVAR____TtC19HealthRecordsDaemon26DaemonXPCConnectionManager_serviceMap;
        v65 = v10;
        do
        {
          if (v9 >= *(v67 + 16))
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v69 = v12;
          sub_251A823B4(v12, v79);
          v15 = *__swift_project_boxed_opaque_existential_1(v79, v79[3]);
          v16 = type metadata accessor for DefaultDaemonXPCService();
          v78[3] = v16;
          v78[4] = &off_2863F5E58;
          v78[0] = v15;
          v17 = (*__swift_project_boxed_opaque_existential_1(v78, v16) + OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_identifier);
          v19 = *v17;
          v18 = v17[1];
          swift_beginAccess();
          sub_251A823B4(v78, v77);
          v20 = v15;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = *(v10 + v11);
          v22 = v76;
          *(v10 + v11) = 0x8000000000000000;
          v23 = __swift_mutable_project_boxed_opaque_existential_1(v77, v77[3]);
          v68 = v58;
          MEMORY[0x28223BE20](v23);
          v25 = (v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v26 + 16))(v25);
          v27 = *v25;
          v74 = v16;
          v75 = &off_2863F5E58;
          *&v73 = v27;
          v29 = sub_251AC8C58(v19, v18);
          v30 = v22[2];
          v31 = (v28 & 1) == 0;
          v32 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_31;
          }

          v33 = v28;
          if (v22[3] >= v32)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v28)
              {
                goto LABEL_10;
              }
            }

            else
            {
              sub_251ACF348();
              if (v33)
              {
                goto LABEL_10;
              }
            }
          }

          else
          {
            sub_251ACC224(v32, isUniquelyReferenced_nonNull_native);
            v34 = sub_251AC8C58(v19, v18);
            if ((v33 & 1) != (v35 & 1))
            {
              result = sub_251C71A14();
              __break(1u);
              return result;
            }

            v29 = v34;
            if (v33)
            {
LABEL_10:

              v13 = v76;
              v14 = (v76[7] + 40 * v29);
              __swift_destroy_boxed_opaque_existential_1(v14);
              sub_251A7E8D8(&v73, v14);
              goto LABEL_11;
            }
          }

          v13 = v76;
          v36 = __swift_mutable_project_boxed_opaque_existential_1(&v73, v74);
          MEMORY[0x28223BE20](v36);
          v38 = (v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v39 + 16))(v38);
          v40 = *v38;
          v71 = v16;
          v72 = &off_2863F5E58;
          *&v70 = v40;
          v13[(v29 >> 6) + 8] |= 1 << v29;
          v41 = (v13[6] + 16 * v29);
          *v41 = v19;
          v41[1] = v18;
          sub_251A7E8D8(&v70, v13[7] + 40 * v29);
          v42 = v13[2];
          v43 = __OFADD__(v42, 1);
          v44 = v42 + 1;
          if (v43)
          {
            goto LABEL_32;
          }

          v13[2] = v44;
          __swift_destroy_boxed_opaque_existential_1(&v73);
LABEL_11:
          ++v9;
          __swift_destroy_boxed_opaque_existential_1(v77);
          v11 = v64;
          v10 = v65;
          *(v65 + v64) = v13;

          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1(v78);
          __swift_destroy_boxed_opaque_existential_1(v79);
          v12 = v69 + 40;
        }

        while (v66 != v9);
      }

      v5 = v63 + 1;

      v4 = v60;
      if (v5 == v62)
      {
        goto LABEL_24;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

LABEL_24:
  v45 = *(v4 + 16);
  if (v45)
  {
    v46 = v4 + 32;
    do
    {
      sub_251A823B4(v46, v80);
      v47 = v81;
      v48 = v82;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      (*(v48 + 8))(v47, v48);
      __swift_destroy_boxed_opaque_existential_1(v80);
      v46 += 40;
      --v45;
    }

    while (v45);
  }

  sub_251C6E7E8();
  v49 = sub_251C70744();
  v50 = sub_251C713F4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v80[0] = v52;
    *v51 = 136315138;
    v53 = sub_251C70F14();
    v55 = sub_251B10780(v53, v54, v80);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_251A6C000, v49, v50, "Daemon launch finished, posting %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x25308E2B0](v52, -1, -1);
    MEMORY[0x25308E2B0](v51, -1, -1);
  }

  sub_251C70F14();
  v56 = sub_251C70F84();

  notify_post((v56 + 32));
}

uint64_t Daemon.deinit()
{

  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_251BC10B8(unint64_t a1)
{
  if (a1 < 6)
  {
    return a1 + 1;
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v3 = sub_251C70764();
  __swift_project_value_buffer(v3, qword_2813E8130);
  v4 = sub_251C70744();
  v5 = sub_251C713E4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_251A6C000, v4, v5, "Unknown asserter type: %ld", v6, 0xCu);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  return 0;
}

uint64_t type metadata accessor for ClinicalSharingActivitySummaryQuery(uint64_t a1)
{
  result = qword_27F47BA68;
  if (!qword_27F47BA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251BC122C(uint64_t a1)
{
  result = type metadata accessor for ClinicalSharingQueryContext(319);
  if (v2 <= 0x3F)
  {
    result = sub_251C6FAE4();
    if (v3 <= 0x3F)
    {
      result = sub_251A8223C(319, &qword_27F479EA8, 0x277CCDAB0);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251BC1360(void (*a1)(unint64_t *), uint64_t a2, unint64_t a3, uint64_t (*a4)(void), unint64_t a5, uint64_t (*a6)(void))
{
  v37 = a1;
  v38 = a2;
  v9 = a4(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v35 = &v30 - v14;
  v36 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251C717F4())
  {
    v41 = MEMORY[0x277D84F90];
    result = (a5)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v17 = v41;
    v31 = a5;
    if (!i)
    {
      break;
    }

    v18 = a3 & 0xFFFFFFFFFFFFFF8;
    if (v36)
    {
      v34 = sub_251C717F4();
    }

    else
    {
      v34 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = 0;
    v39 = a3 & 0xC000000000000001;
    v32 = a3;
    v33 = a6;
    while (v34 != v25)
    {
      if (v39)
      {
        v26 = MEMORY[0x25308D460](v25, a3);
      }

      else
      {
        if (v25 >= *(v18 + 16))
        {
          goto LABEL_44;
        }

        v26 = *(a3 + 8 * v25 + 32);
      }

      a6 = v26;
      a3 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_43;
      }

      v27 = MEMORY[0x25308DB30]();
      v40 = a6;
      v37(&v40);
      objc_autoreleasePoolPop(v27);

      v41 = v17;
      a5 = *(v17 + 16);
      v28 = *(v17 + 24);
      if (a5 >= v28 >> 1)
      {
        v31(v28 > 1, a5 + 1, 1);
        v17 = v41;
      }

      *(v17 + 16) = a5 + 1;
      a6 = v33;
      sub_251BC36A4(v13, v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a5, v33);
      ++v25;
      v29 = a3 == i;
      a3 = v32;
      v19 = v35;
      if (v29)
      {
        goto LABEL_8;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  v18 = a3 & 0xFFFFFFFFFFFFFF8;
  v39 = a3 & 0xC000000000000001;
  v19 = v35;
LABEL_8:
  if ((a3 & 0x8000000000000000) != 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = v18;
  }

  v34 = v20;
  if (v36)
  {
    while (i != sub_251C717F4())
    {
LABEL_15:
      if (v39)
      {
        v21 = MEMORY[0x25308D460](i, a3);
      }

      else
      {
        if (i < 0)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (i >= *(v18 + 16))
        {
          goto LABEL_41;
        }

        v21 = *(a3 + 8 * i + 32);
      }

      a5 = v21;
      if (__OFADD__(i, 1))
      {
        goto LABEL_40;
      }

      v22 = MEMORY[0x25308DB30]();
      v40 = a5;
      v13 = v19;
      v37(&v40);
      objc_autoreleasePoolPop(v22);

      v41 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      a5 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v31(v23 > 1, v24 + 1, 1);
        v17 = v41;
      }

      *(v17 + 16) = a5;
      sub_251BC36A4(v19, v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, a6);
      ++i;
      if (!v36)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    if (i != *(v18 + 16))
    {
      goto LABEL_15;
    }
  }

  return v17;
}

uint64_t sub_251BC1728()
{
  v1 = type metadata accessor for ClinicalSharingActivitySummaryQuery(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = v3;
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BC31E4(0, &qword_27F47BA78, type metadata accessor for PBTypedData);
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  sub_251BC31C4(0);
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  MEMORY[0x28223BE20](v9);
  v25 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A823B4(*v0 + 16, v31);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v24 = v0;
  v12 = sub_251BC1B4C();
  v13 = off_2863FD720(v12, &type metadata for ClinicalSharingQueryDefaultDataProvider);

  v30 = v13;
  v23 = type metadata accessor for ClinicalSharingActivitySummaryQuery;
  sub_251BC356C(v0, v4, type metadata accessor for ClinicalSharingActivitySummaryQuery);
  v14 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v15 = swift_allocObject();
  sub_251BC36A4(v4, v15 + v14, type metadata accessor for ClinicalSharingActivitySummaryQuery);
  sub_251BC30EC(0);
  type metadata accessor for PBTypedData(0);
  sub_251BC3498(&qword_27F47BA98, sub_251BC30EC, MEMORY[0x277CBCD90]);
  sub_251C70AA4();

  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_251BC356C(v24, v4, v23);
  v16 = swift_allocObject();
  sub_251BC36A4(v4, v16 + v14, type metadata accessor for ClinicalSharingActivitySummaryQuery);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  v18 = v25;
  v17 = v26;
  sub_251C70774();

  (*(v27 + 8))(v8, v17);
  sub_251BC3498(&qword_27F47BAA8, sub_251BC31C4, MEMORY[0x277CBCB10]);
  v19 = v28;
  v20 = sub_251C70A94();
  (*(v29 + 8))(v18, v19);
  return v20;
}

id sub_251BC1B4C()
{
  sub_251BC34E0(0, &qword_27F4793E0, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v56 = v42 - v1;
  v2 = sub_251C70014();
  v3 = *(v2 - 8);
  v57 = v2;
  v58 = v3;
  MEMORY[0x28223BE20](v2);
  v54 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_251C701E4();
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251C6FC94();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v49 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = v42 - v11;
  sub_251BC34E0(0, &qword_27F479AA0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v12 = sub_251C701C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_251C763E0;
  v17 = *(v13 + 104);
  v17(v16 + v15, *MEMORY[0x277CC9968], v12);
  v17(v16 + v15 + v14, *MEMORY[0x277CC9998], v12);
  v17(v16 + v15 + 2 * v14, *MEMORY[0x277CC9988], v12);
  v17(v16 + v15 + 3 * v14, *MEMORY[0x277CC9978], v12);
  v44 = sub_251B1D3EC(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v52 = *v55;
  v18 = v5;
  v42[0] = *(v5 + 16);
  v19 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
  v20 = v7;
  v21 = v48;
  (v42[0])(v7, v52 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v48);
  v46 = *(type metadata accessor for ClinicalSharingActivitySummaryQuery(0) + 20);
  v22 = v54;
  sub_251C6FAB4();
  sub_251C700E4();
  v23 = *(v58 + 8);
  v58 += 8;
  v47 = v23;
  v23(v22, v57);
  v45 = *(v18 + 8);
  v45(v7, v21);
  v24 = v52;
  v25 = v52 + v19;
  v26 = v19;
  v27 = v56;
  v28 = v42[0];
  (v42[0])(v56, v25, v21);
  v29 = *(v18 + 56);
  v42[1] = v18 + 56;
  v43 = v29;
  v29(v27, 0, 1, v21);
  sub_251C6FC84();
  v30 = v26;
  v28(v20, v24 + v26, v21);
  v31 = v54;
  sub_251C6FA84();
  v32 = v49;
  sub_251C700E4();

  v47(v31, v57);
  v45(v20, v21);
  v33 = v56;
  v28(v56, v52 + v30, v21);
  v43(v33, 0, 1, v21);
  sub_251C6FC84();
  v34 = objc_opt_self();
  v35 = v53;
  v36 = sub_251C6FBC4();
  v37 = sub_251C6FBC4();
  v38 = [v34 predicateForActivitySummariesBetweenStartDateComponents:v36 endDateComponents:v37];

  v39 = v51;
  v40 = *(v50 + 8);
  v40(v32, v51);
  v40(v35, v39);
  return v38;
}

uint64_t sub_251BC218C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = MEMORY[0x277D83D88];
  sub_251BC34E0(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  sub_251BC34E0(0, &qword_27F478D90, MEMORY[0x277CC88A8], v4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for PBDateRange(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PBActivitySummarySeries(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v40 - v20);
  if (a1 >> 62)
  {
    v42 = v11;
    v34 = v19;
    v35 = sub_251C717F4();
    v19 = v34;
    v11 = v42;
    if (v35)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v42 = v11;
    v22 = v19;
    sub_251C703A4();
    v23 = *(v22 + 24);
    v40 = *(v12 + 56);
    v24 = v40(v21 + v23, 1, 1, v11);
    v25 = v43;
    v41 = v18;
    MEMORY[0x28223BE20](v24);
    *(&v40 - 2) = v2;
    *v21 = sub_251BC1360(sub_251BC3544, (&v40 - 4), a1, type metadata accessor for PBActivitySummarySeries.ActivitySummary, sub_251C0BDAC, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
    v26 = *(type metadata accessor for ClinicalSharingActivitySummaryQuery(0) + 20);
    v27 = sub_251C6FAE4();
    v28 = *(v27 - 8);
    (*(v28 + 16))(v10, v2 + v26, v27);
    (*(v28 + 56))(v10, 0, 1, v27);
    sub_251BFC464();
    sub_251BC3634(v10, &qword_27F478D90, MEMORY[0x277CC88A8]);
    sub_251BC356C(v14, v7, type metadata accessor for PBDateRange);
    v40(v7, 0, 1, v42);
    sub_251BF1518(v7, v25);
    sub_251BC3634(v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251BC35D4(v14, type metadata accessor for PBDateRange);
    v29 = v41;
    sub_251BC356C(v21, v41, type metadata accessor for PBActivitySummarySeries);
    v30 = type metadata accessor for PBTypedData(0);
    v31 = *(v30 + 20);
    sub_251BC3634(v25 + v31, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251BC36A4(v29, v25 + v31, type metadata accessor for PBActivitySummarySeries);
    v32 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v32 - 8) + 56))(v25 + v31, 0, 1, v32);
    (*(*(v30 - 8) + 56))(v25, 0, 1, v30);
    return sub_251BC35D4(v21, type metadata accessor for PBActivitySummarySeries);
  }

  v36 = type metadata accessor for PBTypedData(0);
  v37 = *(*(v36 - 8) + 56);
  v38 = v36;
  v39 = v43;

  return v37(v39, 1, 1, v38);
}

uint64_t sub_251BC2768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(*a2 + 56);

  sub_251BF2294(v9);
  v18 = v9;
  v11 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v17, v10);

  (*(v7 + 8))(v9, v6);
  if (*(v11 + 16))
  {
    sub_251BC356C(a1, a3, type metadata accessor for PBTypedData);
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
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }
}

void sub_251BC2970(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = sub_251C6FC94();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_251C701E4();
  v6 = *(v63 - 8);
  v7 = MEMORY[0x28223BE20](v63);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v61 - v9;
  sub_251BC34E0(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v61 - v11;
  v69 = sub_251C70014();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v61 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  type metadata accessor for PBActivitySummarySeries.ActivitySummary(0);
  sub_251C703A4();
  v13 = [a1 activeEnergyBurned];
  v14 = type metadata accessor for ClinicalSharingActivitySummaryQuery(0);
  v15 = *(v2 + v14[7]);
  [v13 doubleValueForUnit_];
  v17 = v16;
  v18 = v16;

  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v17 <= -2147483650.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v17 >= 2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *a2 = v17;
  v19 = [a1 activeEnergyBurnedGoal];
  [v19 doubleValueForUnit_];
  v21 = v20;
  v22 = v20;

  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v21 <= -2147483650.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v21 >= 2147483650.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(a2 + 4) = v21;
  v23 = [a1 appleExerciseTime];
  v24 = *(v2 + v14[8]);
  [v23 doubleValueForUnit_];
  v26 = v25;
  v27 = v25;

  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v26 <= -2147483650.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v26 >= 2147483650.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(a2 + 8) = v26;
  v28 = [a1 appleExerciseTimeGoal];
  [v28 doubleValueForUnit_];
  v30 = v29;
  v31 = v29;

  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v30 <= -2147483650.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v30 >= 2147483650.0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(a2 + 12) = v30;
  v32 = [a1 appleStandHours];
  v33 = *(v2 + v14[6]);
  [v32 doubleValueForUnit_];
  v35 = v34;
  v36 = v34;

  if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v35 <= -2147483650.0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v35 >= 2147483650.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(a2 + 16) = v35;
  v37 = [a1 appleStandHoursGoal];
  [v37 doubleValueForUnit_];
  v39 = v38;
  v40 = v38;

  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v39 <= -2147483650.0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v39 >= 2147483650.0)
  {
LABEL_39:
    __break(1u);
    return;
  }

  *(a2 + 20) = v39;
  v41 = *v2;
  v42 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
  v43 = *(v6 + 16);
  v44 = v63;
  v45 = v64;
  v43(v64, *v2 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v63);
  v46 = v62;
  v43(v62, v41 + v42, v44);
  v47 = sub_251C70114();
  v48 = *(v6 + 8);
  v48(v46, v44);
  v49 = [a1 dateComponentsForCalendar_];

  v50 = v66;
  sub_251C6FBD4();

  v51 = v65;
  sub_251C70134();
  (*(v68 + 8))(v50, v70);
  v48(v45, v44);
  v52 = v67;
  v53 = v69;
  if ((*(v67 + 48))(v51, 1, v69) == 1)
  {
    sub_251BC3634(v51, &qword_2813E7500, MEMORY[0x277CC9578]);
  }

  else
  {
    v54 = v61;
    (*(v52 + 32))(v61, v51, v53);
    v55 = *(v41 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v56 = sub_251C6FF94();
    v57 = [v55 stringFromDate_];

    v58 = sub_251C70F14();
    v60 = v59;

    (*(v52 + 8))(v54, v53);
    *(a2 + 24) = v58;
    *(a2 + 32) = v60;
  }
}

void sub_251BC30EC(uint64_t a1)
{
  if (!qword_27F47BA80)
  {
    sub_251BC315C(255);
    sub_251A82284();
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47BA80);
    }
  }
}

void sub_251BC315C(uint64_t a1)
{
  if (!qword_27F47BA88)
  {
    sub_251A8223C(255, &qword_27F47BA90, 0x277CCCFB0);
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47BA88);
    }
  }
}

void sub_251BC31E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251BC30EC(255);
    a3(255);
    sub_251BC3498(&qword_27F47BA98, sub_251BC30EC, MEMORY[0x277CBCD90]);
    v5 = sub_251C70784();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for ClinicalSharingActivitySummaryQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_251C6FAE4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251BC3418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingActivitySummaryQuery(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251BC2768(a1, v6, a2);
}

uint64_t sub_251BC3498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251BC34E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251BC356C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BC35D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251BC3634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251BC34E0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BC36A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BC3710()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    type metadata accessor for SignedClinicalDataManager();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_251BC3768()
{

  return swift_deallocClassInstance();
}

id sub_251BC37C4(void *a1, uint64_t a2)
{
  v2 = [a1 items];
  sub_251BC39F0();
  v3 = sub_251C71154();

  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25308D460](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 mainRecord];
      v11 = [v10 recordTypeDisplayName];

      v12 = sub_251C70F14();
      v14 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_251C38CCC(0, *(v6 + 2) + 1, 1, v6);
      }

      v16 = *(v6 + 2);
      v15 = *(v6 + 3);
      if (v16 >= v15 >> 1)
      {
        v6 = sub_251C38CCC((v15 > 1), v16 + 1, 1, v6);
      }

      *(v6 + 2) = v16 + 1;
      v17 = &v6[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  v18 = objc_allocWithZone(MEMORY[0x277D124B0]);
  v19 = sub_251C71144();

  v20 = [v18 initWithOptions:a2 localizedTypeDisplayNames:v19];

  return v20;
}

unint64_t sub_251BC39F0()
{
  result = qword_27F479268;
  if (!qword_27F479268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479268);
  }

  return result;
}

id sub_251BC3A3C(void *a1)
{
  v2 = sub_251C6FD74();
  v3 = [v2 domain];
  v4 = sub_251C70F14();
  v6 = v5;

  if (v4 == 0xD000000000000023 && 0x8000000251C8F610 == v6)
  {
  }

  else
  {
    v8 = sub_251C719D4();

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v9 = [v2 code];
  if (v9 == 104)
  {
    v10 = *MEMORY[0x277D12340];
    v17 = [v2 userInfo];
    sub_251C70E54();

    v18 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v13 = sub_251C70E44();

    v14 = [v18 initWithDomain:v10 code:1 userInfo:v13];
  }

  else
  {
    if (v9 != 103)
    {
LABEL_11:

      v15 = a1;
      return a1;
    }

    v10 = *MEMORY[0x277D12340];
    v11 = [v2 userInfo];
    sub_251C70E54();

    v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v13 = sub_251C70E44();

    v14 = [v12 initWithDomain:v10 code:2 userInfo:v13];
  }

  v19 = v14;

  return v19;
}

HealthRecordsDaemon::VCJWK::KeyType_optional __swiftcall VCJWK.KeyType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_251C71854();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VCJWK.KeyType.rawValue.getter()
{
  v1 = 17221;
  if (*v0 != 1)
  {
    v1 = 5262159;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 4281170;
  }
}

uint64_t sub_251BC3D34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 17221;
  if (v2 != 1)
  {
    v4 = 5262159;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4281170;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 17221;
  if (*a2 != 1)
  {
    v8 = 5262159;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 4281170;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_251C719D4();
  }

  return v11 & 1;
}

uint64_t sub_251BC3E08()
{
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251BC3E90(uint64_t a1)
{
  sub_251C70FB4();
}

uint64_t sub_251BC3F04(uint64_t a1)
{
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

void sub_251BC3F94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE200000000000000;
  v5 = 17221;
  if (v2 != 1)
  {
    v5 = 5262159;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 4281170;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

HealthRecordsDaemon::VCJWK::Curve_optional __swiftcall VCJWK.Curve.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_251C71854();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VCJWK.Curve.rawValue.getter()
{
  v1 = 0x3635322D50;
  if (*v0 != 1)
  {
    v1 = 0x39313535326445;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B36353270636573;
  }
}

uint64_t sub_251BC4140(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x3635322D50;
  if (v2 != 1)
  {
    v4 = 0x39313535326445;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6B36353270636573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000031;
  }

  v7 = 0xE500000000000000;
  v8 = 0x3635322D50;
  if (*a2 != 1)
  {
    v8 = 0x39313535326445;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6B36353270636573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000031;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_251C719D4();
  }

  return v11 & 1;
}

uint64_t sub_251BC423C()
{
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251BC42E0(uint64_t a1)
{
  sub_251C70FB4();
}

uint64_t sub_251BC4370(uint64_t a1)
{
  sub_251C71AA4();
  sub_251C70FB4();

  return sub_251C71AD4();
}

void sub_251BC441C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000031;
  v4 = 0xE500000000000000;
  v5 = 0x3635322D50;
  if (v2 != 1)
  {
    v5 = 0x39313535326445;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6B36353270636573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t VCJWK.alg.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t VCJWK.e.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t VCJWK.n.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t VCJWK.x.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t VCJWK.y.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t VCJWK.kid.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t VCJWK.use.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

__n128 VCJWK.init(kty:crv:alg:ext:e:n:x:y:keyOps:kid:use:)@<Q0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  result = a11;
  v18 = *a2;
  *a9 = *a1;
  *(a9 + 1) = v18;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = a13;
  *(a9 + 120) = a16;
  *(a9 + 128) = a17;
  return result;
}

__n128 VCJWK.init(data:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_251C6F9F4();
  swift_allocObject();
  sub_251C6F9E4();
  sub_251BC47D0();
  sub_251C6F9D4();
  sub_251A83028(a1, a2);

  if (!v3)
  {
    *(a3 + 96) = v14;
    *(a3 + 112) = v15;
    *(a3 + 128) = v16;
    *(a3 + 32) = v10;
    *(a3 + 48) = v11;
    *(a3 + 64) = v12;
    *(a3 + 80) = v13;
    result = v9;
    *a3 = v8;
    *(a3 + 16) = v9;
  }

  return result;
}

unint64_t sub_251BC47D0()
{
  result = qword_27F47BAB0;
  if (!qword_27F47BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BAB0);
  }

  return result;
}

uint64_t sub_251BC4824(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 7959659;
    v7 = 6777953;
    v8 = 7632997;
    if (a1 != 3)
    {
      v8 = 101;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 7762531;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 6580587;
    v2 = 0x73706F5F79656BLL;
    if (a1 != 9)
    {
      v2 = 6648693;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 110;
    v4 = 120;
    if (a1 != 6)
    {
      v4 = 121;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_251BC491C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_251BC4824(*a1);
  v5 = v4;
  if (v3 == sub_251BC4824(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_251C719D4();
  }

  return v8 & 1;
}

uint64_t sub_251BC49A4()
{
  v1 = *v0;
  sub_251C71AA4();
  sub_251BC4824(v1);
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251BC4A08(uint64_t a1)
{
  sub_251BC4824(*v1);
  sub_251C70FB4();
}

uint64_t sub_251BC4A5C(uint64_t a1)
{
  v2 = *v1;
  sub_251C71AA4();
  sub_251BC4824(v2);
  sub_251C70FB4();

  return sub_251C71AD4();
}

unint64_t sub_251BC4ABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_251BC68D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_251BC4AEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_251BC4824(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_251BC4B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251BC68D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251BC4B68(uint64_t a1)
{
  v2 = sub_251BC6030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251BC4BA4(uint64_t a1)
{
  v2 = sub_251BC6030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VCJWK.encode(to:)(void *a1)
{
  sub_251BC612C(0, &qword_27F47BAB8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - v6;
  v8 = *v1;
  v36 = v1[1];
  v9 = *(v1 + 1);
  v32 = *(v1 + 2);
  v33 = v9;
  v31 = v1[24];
  v10 = *(v1 + 5);
  v29 = *(v1 + 4);
  v30 = v10;
  v11 = *(v1 + 7);
  v27 = *(v1 + 6);
  v28 = v11;
  v12 = *(v1 + 9);
  v25 = *(v1 + 8);
  v26 = v12;
  v13 = *(v1 + 11);
  v23 = *(v1 + 10);
  v24 = v13;
  v14 = *(v1 + 13);
  v21 = *(v1 + 12);
  v22 = v14;
  v15 = *(v1 + 14);
  v19[1] = *(v1 + 15);
  v20 = v15;
  v16 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251BC6030();
  sub_251C71B14();
  LOBYTE(v35) = v8;
  v37 = 0;
  sub_251BC6084();
  v17 = v34;
  sub_251C71964();
  if (!v17)
  {
    v34 = v16;
    LOBYTE(v35) = v36;
    v37 = 1;
    sub_251BC60D8();
    sub_251C71924();
    LOBYTE(v35) = 2;
    sub_251C718F4();
    LOBYTE(v35) = 3;
    sub_251C71904();
    LOBYTE(v35) = 4;
    sub_251C718F4();
    LOBYTE(v35) = 5;
    sub_251C718F4();
    LOBYTE(v35) = 6;
    sub_251C718F4();
    LOBYTE(v35) = 7;
    sub_251C718F4();
    LOBYTE(v35) = 8;
    sub_251C718F4();
    v35 = v20;
    v37 = 9;
    sub_251B1C8C8();
    sub_251BC6238(&qword_27F479318, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_251C71924();
    LOBYTE(v35) = 10;
    sub_251C718F4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VCJWK.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  v14 = *(v1 + 72);
  v7 = *(v1 + 88);
  v8 = *(v1 + 112);
  v15 = *(v1 + 104);
  v16 = *(v1 + 128);
  sub_251C70FB4();

  if (v2 == 3)
  {
    sub_251C71AC4();
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_251C71AC4();
    sub_251C70FB4();

    if (!v3)
    {
LABEL_3:
      sub_251C71AC4();
      if (v4 == 2)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }
  }

  sub_251C71AC4();
  sub_251C70FB4();
  if (v4 != 2)
  {
LABEL_4:
    sub_251C71AC4();
  }

LABEL_7:
  sub_251C71AC4();
  if (v5)
  {
    sub_251C71AC4();
    sub_251C70FB4();
    v9 = v14;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_251C71AC4();
    v9 = v14;
    if (v6)
    {
LABEL_9:
      sub_251C71AC4();
      sub_251C70FB4();
      v10 = v15;
      if (v9)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  sub_251C71AC4();
  v10 = v15;
  if (v9)
  {
LABEL_10:
    sub_251C71AC4();
    sub_251C70FB4();
    if (v7)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  sub_251C71AC4();
  if (v7)
  {
LABEL_11:
    sub_251C71AC4();
    sub_251C70FB4();
    if (v10)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  sub_251C71AC4();
  if (v10)
  {
LABEL_12:
    sub_251C71AC4();
    sub_251C70FB4();
    if (v8)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  sub_251C71AC4();
  if (v8)
  {
LABEL_13:
    sub_251C71AC4();
    MEMORY[0x25308D860](*(v8 + 16));
    v11 = *(v8 + 16);
    if (v11)
    {
      v12 = v8 + 40;
      do
      {

        sub_251C70FB4();

        v12 += 16;
        --v11;
      }

      while (v11);
    }

    if (v16)
    {
      goto LABEL_17;
    }

    return sub_251C71AC4();
  }

LABEL_25:
  sub_251C71AC4();
  if (!v16)
  {
    return sub_251C71AC4();
  }

LABEL_17:
  sub_251C71AC4();

  return sub_251C70FB4();
}

uint64_t VCJWK.hashValue.getter()
{
  sub_251C71AA4();
  VCJWK.hash(into:)(v1);
  return sub_251C71AD4();
}

uint64_t VCJWK.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_251BC612C(0, &qword_27F47BAD8, MEMORY[0x277D844C8]);
  v74 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251BC6030();
  sub_251C71B04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  LOBYTE(v45) = 0;
  sub_251BC6190();
  sub_251C718D4();
  v10 = LOBYTE(v54[0]);
  LOBYTE(v45) = 1;
  sub_251BC61E4();
  sub_251C718A4();
  v44 = v10;
  v11 = LOBYTE(v54[0]);
  LOBYTE(v54[0]) = 2;
  v41 = sub_251C71874();
  v42 = v11;
  v43 = v12;
  LOBYTE(v54[0]) = 3;
  LOBYTE(v11) = sub_251C71884();
  LOBYTE(v54[0]) = 4;
  v36 = sub_251C71874();
  v40 = v13;
  LOBYTE(v54[0]) = 5;
  v35 = sub_251C71874();
  v39 = v14;
  LOBYTE(v54[0]) = 6;
  v34 = sub_251C71874();
  v38 = v15;
  LOBYTE(v54[0]) = 7;
  v32 = sub_251C71874();
  v37 = v16;
  LOBYTE(v54[0]) = 8;
  v31 = sub_251C71874();
  v33 = v17;
  sub_251B1C8C8();
  LOBYTE(v45) = 9;
  sub_251BC6238(&qword_27F47BAF0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_251C718A4();
  v18 = v54[0];
  v70 = 10;
  v19 = sub_251C71874();
  v30 = v20;
  v21 = v19;
  (*(v9 + 8))(v8, v74);
  LOBYTE(v45) = v44;
  BYTE1(v45) = v42;
  *(&v45 + 2) = v72;
  WORD3(v45) = v73;
  v22 = v43;
  *(&v45 + 1) = v41;
  *&v46 = v43;
  BYTE8(v46) = v11;
  HIDWORD(v46) = *&v71[3];
  *(&v46 + 9) = *v71;
  *&v47 = v36;
  *(&v47 + 1) = v40;
  *&v48 = v35;
  *(&v48 + 1) = v39;
  *&v49 = v34;
  *(&v49 + 1) = v38;
  *&v50 = v32;
  *(&v50 + 1) = v37;
  v23 = v30;
  *&v51 = v31;
  *(&v51 + 1) = v33;
  *&v52 = v18;
  *(&v52 + 1) = v21;
  v53 = v30;
  *(a2 + 128) = v30;
  v24 = v52;
  *(a2 + 96) = v51;
  *(a2 + 112) = v24;
  v25 = v45;
  v26 = v46;
  v27 = v50;
  *(a2 + 64) = v49;
  *(a2 + 80) = v27;
  v28 = v48;
  *(a2 + 32) = v47;
  *(a2 + 48) = v28;
  *a2 = v25;
  *(a2 + 16) = v26;
  sub_251BC6298(&v45, v54);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v54[0]) = v44;
  BYTE1(v54[0]) = v42;
  *(v54 + 2) = v72;
  HIWORD(v54[0]) = v73;
  v54[1] = v41;
  v54[2] = v22;
  v55 = v11;
  *v56 = *v71;
  *&v56[3] = *&v71[3];
  v57 = v36;
  v58 = v40;
  v59 = v35;
  v60 = v39;
  v61 = v34;
  v62 = v38;
  v63 = v32;
  v64 = v37;
  v65 = v31;
  v66 = v33;
  v67 = v18;
  v68 = v21;
  v69 = v23;
  return sub_251BC62D0(v54);
}

uint64_t sub_251BC5ACC()
{
  sub_251C71AA4();
  VCJWK.hash(into:)(v1);
  return sub_251C71AD4();
}

uint64_t sub_251BC5B10(uint64_t a1)
{
  sub_251C71AA4();
  VCJWK.hash(into:)(v2);
  return sub_251C71AD4();
}

BOOL _s19HealthRecordsDaemon5VCJWKV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 4281170;
  if (!*a1)
  {
    v3 = 0xE300000000000000;
    v4 = 4281170;
    if (*a2)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (*a1 != 1)
  {
    v3 = 0xE300000000000000;
    v4 = 5262159;
    if (*a2)
    {
      goto LABEL_6;
    }

LABEL_9:
    v5 = 0xE300000000000000;
    goto LABEL_11;
  }

  v3 = 0xE200000000000000;
  v4 = 17221;
  if (!*a2)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (*a2 == 1)
  {
    v5 = 0xE200000000000000;
    v2 = 17221;
  }

  else
  {
    v5 = 0xE300000000000000;
    v2 = 5262159;
  }

LABEL_11:
  v6 = *(a1 + 1);
  v7 = *(a1 + 16);
  v41 = *(a1 + 32);
  v45 = *(a1 + 40);
  v46 = *(a1 + 8);
  v36 = *(a1 + 48);
  v43 = *(a1 + 56);
  v38 = *(a1 + 72);
  v28 = *(a1 + 80);
  v34 = *(a1 + 88);
  v31 = *(a1 + 104);
  v32 = *(a1 + 64);
  v23 = *(a1 + 128);
  v24 = *(a1 + 96);
  v8 = *(a2 + 1);
  v10 = *(a2 + 8);
  v9 = *(a2 + 16);
  v40 = *(a2 + 32);
  v44 = *(a2 + 40);
  v37 = *(a2 + 48);
  v42 = *(a2 + 56);
  v33 = *(a2 + 64);
  v39 = *(a2 + 72);
  v35 = *(a2 + 88);
  v29 = *(a2 + 80);
  v30 = *(a2 + 104);
  v11 = *(a1 + 24);
  v26 = *(a1 + 112);
  v27 = *(a2 + 96);
  v22 = *(a2 + 128);
  v12 = *(a2 + 24);
  v20 = *(a1 + 120);
  v21 = *(a2 + 120);
  v25 = *(a2 + 112);
  if (v4 == v2 && v3 == v5)
  {
  }

  else
  {
    v13 = sub_251C719D4();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (v6 != 3)
  {
    if (v8 == 3)
    {
      return 0;
    }

    v14 = 0xE900000000000031;
    v15 = 0x6B36353270636573;
    if (v6)
    {
      if (v6 == 1)
      {
        v16 = 0xE500000000000000;
        v17 = 0x3635322D50;
        if (!v8)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v16 = 0xE700000000000000;
        v17 = 0x39313535326445;
        if (!v8)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      v17 = 0x6B36353270636573;
      v16 = 0xE900000000000031;
      if (!v8)
      {
        goto LABEL_33;
      }
    }

    if (v8 != 1)
    {
      v14 = 0xE700000000000000;
      if (v17 != 0x39313535326445)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    v14 = 0xE500000000000000;
    v15 = 0x3635322D50;
LABEL_33:
    if (v17 != v15)
    {
LABEL_42:
      v18 = sub_251C719D4();

      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

LABEL_36:
    if (v16 == v14)
    {

      if (v7)
      {
        goto LABEL_18;
      }

      goto LABEL_38;
    }

    goto LABEL_42;
  }

  if (v8 != 3)
  {
    return 0;
  }

LABEL_17:
  if (v7)
  {
LABEL_18:
    if (!v9 || (v46 != v10 || v7 != v9) && (sub_251C719D4() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_39;
  }

LABEL_38:
  if (v9)
  {
    return 0;
  }

LABEL_39:
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }

    goto LABEL_46;
  }

  result = 0;
  if (v12 != 2 && ((v12 ^ v11) & 1) == 0)
  {
LABEL_46:
    if (v45)
    {
      if (!v44 || (v41 != v40 || v45 != v44) && (sub_251C719D4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v44)
    {
      return 0;
    }

    if (v43)
    {
      if (!v42 || (v36 != v37 || v43 != v42) && (sub_251C719D4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v42)
    {
      return 0;
    }

    if (v38)
    {
      if (!v39 || (v32 != v33 || v38 != v39) && (sub_251C719D4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v39)
    {
      return 0;
    }

    if (v34)
    {
      if (!v35 || (v28 != v29 || v34 != v35) && (sub_251C719D4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v35)
    {
      return 0;
    }

    if (v31)
    {
      if (!v30 || (v24 != v27 || v31 != v30) && (sub_251C719D4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v30)
    {
      return 0;
    }

    if (v26)
    {
      if (!v25 || (sub_251A93C70(v26, v25) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v25)
    {
      return 0;
    }

    if (v23)
    {
      return v22 && (v20 == v21 && v23 == v22 || (sub_251C719D4() & 1) != 0);
    }

    return !v22;
  }

  return result;
}

unint64_t sub_251BC6030()
{
  result = qword_27F47BAC0;
  if (!qword_27F47BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BAC0);
  }

  return result;
}

unint64_t sub_251BC6084()
{
  result = qword_27F47BAC8;
  if (!qword_27F47BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BAC8);
  }

  return result;
}

unint64_t sub_251BC60D8()
{
  result = qword_27F47BAD0;
  if (!qword_27F47BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BAD0);
  }

  return result;
}

void sub_251BC612C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251BC6030();
    v7 = a3(a1, &type metadata for VCJWK.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_251BC6190()
{
  result = qword_27F47BAE0;
  if (!qword_27F47BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BAE0);
  }

  return result;
}

unint64_t sub_251BC61E4()
{
  result = qword_27F47BAE8;
  if (!qword_27F47BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BAE8);
  }

  return result;
}

uint64_t sub_251BC6238(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_251B1C8C8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251BC6304()
{
  result = qword_27F47BAF8;
  if (!qword_27F47BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BAF8);
  }

  return result;
}

unint64_t sub_251BC635C()
{
  result = qword_27F47BB00;
  if (!qword_27F47BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB00);
  }

  return result;
}

unint64_t sub_251BC63B4()
{
  result = qword_27F47BB08;
  if (!qword_27F47BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB08);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_251BC643C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_251BC6498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignedClinicalDataFHIROperationHandlerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SignedClinicalDataFHIROperationHandlerError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for VCJWK.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCJWK.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_251BC67D0()
{
  result = qword_27F47BB10;
  if (!qword_27F47BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB10);
  }

  return result;
}

unint64_t sub_251BC6828()
{
  result = qword_27F47BB18;
  if (!qword_27F47BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB18);
  }

  return result;
}

unint64_t sub_251BC6880()
{
  result = qword_27F47BB20;
  if (!qword_27F47BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB20);
  }

  return result;
}

unint64_t sub_251BC68D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_251C71854();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_251BC6920()
{
  result = qword_27F47BB28;
  if (!qword_27F47BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB28);
  }

  return result;
}

unint64_t sub_251BC6974()
{
  result = qword_27F47BB30;
  if (!qword_27F47BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BB30);
  }

  return result;
}

uint64_t sub_251BC69D0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_251BCA780, v4);
}

uint64_t sub_251BC6A64(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_251C70F64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C70EE4();
  v10 = [v4 stringForKey_];

  if (!v10)
  {
    return 0;
  }

  sub_251C70F14();

  sub_251C70F54();
  v11 = sub_251C70F24();
  v13 = v12;

  (*(v6 + 8))(v8, v5);
  if (v13 >> 60 == 15)
  {
    sub_251AC6624();
    swift_allocError();
    *v14 = xmmword_251C84430;
    *(v14 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    sub_251C6F9F4();
    swift_allocObject();
    sub_251C6F9E4();
    sub_251BCA71C();
    sub_251C6F9D4();
    if (v3)
    {

      return sub_251A8596C(v11, v13);
    }

    else
    {
      sub_251A8596C(v11, v13);

      return v16[1];
    }
  }
}

void sub_251BC6C9C(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6)
{
  v10 = sub_251C70F64();
  MEMORY[0x28223BE20](v10 - 8);
  v32 = a4;
  v35 = a4;
  v33 = a5;
  v36 = a5 & 1;
  v37 = a6;
  sub_251C6FA54();
  swift_allocObject();

  sub_251C6FA44();
  sub_251BCA228();
  v24 = sub_251C6FA34();
  v26 = v25;

  sub_251C70F54();
  sub_251C70F34();
  if (v27)
  {
    v28 = sub_251C70EE4();

    v29 = sub_251C70EE4();
    [a1 setValue:v28 forKey:v29];

    sub_251A83028(v24, v26);
  }

  else
  {
    sub_251AC6624();
    v30 = swift_allocError();
    *v31 = xmmword_251C84430;
    *(v31 + 16) = 2;
    swift_willThrow();
    sub_251A83028(v24, v26);

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v11 = sub_251C70764();
    __swift_project_value_buffer(v11, qword_2813E8130);

    v12 = v30;
    v13 = sub_251C70744();
    v14 = sub_251C713E4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34[0] = v16;
      *v15 = 136315394;
      v35 = v32;
      v36 = v33 & 1;
      v37 = a6;

      v17 = sub_251C70F74();
      v19 = sub_251B10780(v17, v18, v34);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v35 = v30;
      v20 = v30;
      sub_251A82284();
      v21 = sub_251C70F74();
      v23 = sub_251B10780(v21, v22, v34);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_251A6C000, v13, v14, "Failed to encode %s: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v16, -1, -1);
      MEMORY[0x25308E2B0](v15, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_251BC7044(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v15 = a4;
  sub_251BCAB78(0, &qword_2813E1C80, MEMORY[0x277D84538]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251BCA82C();
  sub_251C71B14();
  v16 = a2;
  v17 = a3 & 1;
  v18 = 0;
  type metadata accessor for HKClinicalSharingReason(0);
  sub_251BCA42C(&qword_2813E1D88, type metadata accessor for HKClinicalSharingReason, &protocol conformance descriptor for HKClinicalSharingReason);
  sub_251C71924();
  if (!v4)
  {
    v16 = v15;
    v18 = 1;
    sub_251BCA880(0, &qword_2813E1F80, MEMORY[0x277CC9578], MEMORY[0x277D83940]);
    sub_251BCABDC(&qword_2813E1F78, &qword_2813E7510, MEMORY[0x277CC9580], MEMORY[0x277D83948]);
    sub_251C71964();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_251BC72A4()
{
  if (*v0)
  {
    return 0x4474736575716572;
  }

  else
  {
    return 0x6E6F73616572;
  }
}

uint64_t sub_251BC72E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v6 || (sub_251C719D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEC00000073657461)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251C719D4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_251BC73C0(uint64_t a1)
{
  v2 = sub_251BCA82C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251BC73FC(uint64_t a1)
{
  v2 = sub_251BCA82C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251BC7438@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_251BCA8E4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_251BC749C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return sub_251A93D00(v5, v7);
}

void *sub_251BC74DC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v8 = v1[13];
  v7 = v1[14];
  if (v4)
  {
    v9 = v1[9];
    v10 = v3;
    v11 = v5;
    v12 = v6;
    v13 = v8;
    v14 = v7;
  }

  else
  {
    v27 = v1[11];
    v28 = v1[10];
    v26 = v1[12];
    v11 = 0x8000000251C8F6F0;
    v15 = [objc_opt_self() standardUserDefaults];
    v12 = sub_251BCA474(v15, 0xD00000000000001DLL, 0x8000000251C8F6F0);
    v13 = v16;
    v14 = v17;

    v24 = v1[10];
    v25 = v1[9];
    v22 = v1[12];
    v23 = v1[11];
    v20 = v1[14];
    v21 = v1[13];
    v1[9] = v15;
    v1[10] = 0xD00000000000001DLL;
    v1[11] = 0x8000000251C8F6F0;
    v1[12] = v12;
    v1[13] = v13 & 1;
    v1[14] = v14;
    v18 = v15;
    v10 = 0xD00000000000001DLL;
    v9 = v18;

    sub_251BCA1D4(v25, v24, v23, v22, v21, v20);
    v6 = v26;
    v5 = v27;
    v3 = v28;
  }

  result = sub_251BCA688(v4, v3, v5, v6, v8, v7);
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13 & 1;
  *(a1 + 40) = v14;
  return result;
}

uint64_t sub_251BC7634()
{
  MEMORY[0x25308E2B0](*(v0 + 136), -1, -1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_251BCA1D4(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  sub_251A7EA4C(*(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t sub_251BC76AC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[7];
  [v6 setPreregistered_];
  v7 = swift_allocObject();
  swift_weakInit();
  v25 = sub_251BCA770;
  v26 = v7;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_251BC69D0;
  v24 = &block_descriptor_38;
  v8 = _Block_copy(&v21);

  [v6 scheduleWithBlock_];
  _Block_release(v8);
  v9 = [objc_opt_self() defaultSyncActivityCriteria];
  v10 = *MEMORY[0x277CCC2C0];
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = objc_allocWithZone(MEMORY[0x277D10BE8]);
  v13 = v10;

  v14 = sub_251C70EE4();
  v25 = sub_251BCA778;
  v26 = v11;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_251BCA0FC;
  v24 = &block_descriptor_42;
  v15 = _Block_copy(&v21);
  v16 = [v12 initWithName:v14 criteria:v9 loggingCategory:v13 handler:v15];
  swift_unknownObjectRelease();

  _Block_release(v15);

  v17 = a1[8];
  a1[8] = v16;

  v18 = a1[15];
  v19 = a1[16];
  a1[15] = a2;
  a1[16] = a3;

  return sub_251A7EA4C(v18, v19);
}

void sub_251BC7928(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 56);
    sub_251BC8C74(v6, a1, a2);
  }

  else
  {
    a1(1);
  }
}

uint64_t sub_251BC79BC(void *a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return a3(0, 0);
  }

  sub_251BC94C4(a1, a3, a4);
}

void sub_251BC7A48(void *a1, void *a2, double a3)
{
  v6 = sub_251C70014();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BC74DC(v44);
  v40 = v44[0];
  v39 = v44[1];
  v10 = v44[2];
  v47 = v45;
  v11 = v46;
  v12 = v45;
  v48 = v46;
  v13 = BYTE8(v45);
  sub_251C70004();
  v42 = v9;

  v14 = sub_251B09754(sub_251BCA318, v41, v11);
  v38 = a2;
  if (v13 == 1)
  {
    sub_251BCA880(0, &qword_2813E1C78, MEMORY[0x277CC9578], MEMORY[0x277D84560]);
    v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_251C74800;
    (*(v7 + 16))(v16 + v15, v9, v6);
    aBlock[0] = v14;

    sub_251BFF7EC(v16);
    v11 = aBlock[0];
    sub_251BCA358(&v47);
    sub_251BC6C9C(v40, v39, v10, a2, 0, v11);
    v12 = a2;
  }

  v17 = *(v14 + 16);

  if (v17 >= 3)
  {
    v18 = 14400.0;
  }

  else
  {
    v18 = 0.0;
  }

  (*(v7 + 8))(v9, v6);
  v19 = a1[9];
  v20 = a1[10];
  v21 = a1[11];
  v22 = a1[12];
  v23 = a1[13];
  v24 = a1[14];
  v25 = v39;
  a1[9] = v40;
  a1[10] = v25;
  a1[11] = v10;
  a1[12] = v12;
  a1[13] = 0;
  a1[14] = v11;
  sub_251BCA1D4(v19, v20, v21, v22, v23, v24);
  if (v18 > a3)
  {
    a3 = v18;
  }

  v26 = a1[8];
  if (v26)
  {
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251BC7FBC;
    aBlock[3] = &block_descriptor_14;
    v27 = _Block_copy(aBlock);
    v28 = v26;
    [v28 requestRunWithMaximumDelay:v27 completion:a3];
    _Block_release(v27);
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v29 = sub_251C70764();
  __swift_project_value_buffer(v29, qword_2813E8130);

  v30 = sub_251C70744();
  v31 = sub_251C713F4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136315650;
    *(v32 + 4) = sub_251B10780(a1[18], a1[19], aBlock);
    *(v32 + 12) = 2080;
    if (v38 > 3)
    {
      switch(v38)
      {
        case 4:
          v34 = 0xE700000000000000;
          v35 = 0x676E6974736574;
          goto LABEL_27;
        case 5:
          v34 = 0xEE00646574616974;
          v35 = 0x696E692D72657375;
          goto LABEL_27;
        case 6:
          v34 = 0x8000000251C8A720;
          v35 = 0xD000000000000010;
          goto LABEL_27;
      }
    }

    else
    {
      switch(v38)
      {
        case 1:
          v34 = 0xED00006E6F697461;
          v35 = 0x7A69726F68747561;
          goto LABEL_27;
        case 2:
          v34 = 0xE800000000000000;
          v35 = 0x617461642D77656ELL;
          goto LABEL_27;
        case 3:
          v34 = 0xEA0000000000646ELL;
          v35 = 0x756F72676B636162;
LABEL_27:
          v36 = sub_251B10780(v35, v34, aBlock);

          *(v32 + 14) = v36;
          *(v32 + 22) = 2048;
          *(v32 + 24) = a3;
          _os_log_impl(&dword_251A6C000, v30, v31, "%s: scheduled run for reason %s with max delay %f", v32, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x25308E2B0](v33, -1, -1);
          MEMORY[0x25308E2B0](v32, -1, -1);
          goto LABEL_28;
      }
    }

    v34 = 0xE700000000000000;
    v35 = 0x6E776F6E6B6E75;
    goto LABEL_27;
  }

LABEL_28:
}

void sub_251BC7FBC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_251BC8034(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getErrorValue();
  if (sub_251BC8448(v22[10]) & 1) != 0 || (swift_getErrorValue(), result = sub_251BC8588(v22[6]), (result))
  {
    if (a2 == 6)
    {
      v7 = 1800.0;
    }

    else
    {
      swift_getErrorValue();
      if (sub_251BC8448(v22[2]))
      {
        v7 = 0.0;
      }

      else
      {
        v7 = 1800.0;
      }
    }

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v8 = sub_251C70764();
    __swift_project_value_buffer(v8, qword_2813E8130);

    v9 = a1;
    v10 = sub_251C70744();
    v11 = sub_251C713F4();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_26;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315906;
    *(v12 + 4) = sub_251B10780(v3[18], v3[19], v22);
    *(v12 + 12) = 2048;
    *(v12 + 14) = v7;
    *(v12 + 22) = 2080;
    if (a2 > 3)
    {
      switch(a2)
      {
        case 4:
          v14 = 0xE700000000000000;
          v15 = 0x676E6974736574;
          goto LABEL_25;
        case 5:
          v14 = 0xEE00646574616974;
          v15 = 0x696E692D72657375;
          goto LABEL_25;
        case 6:
          v14 = 0x8000000251C8A720;
          v15 = 0xD000000000000010;
          goto LABEL_25;
      }
    }

    else
    {
      switch(a2)
      {
        case 1:
          v14 = 0xED00006E6F697461;
          v15 = 0x7A69726F68747561;
          goto LABEL_25;
        case 2:
          v14 = 0xE800000000000000;
          v15 = 0x617461642D77656ELL;
          goto LABEL_25;
        case 3:
          v14 = 0xEA0000000000646ELL;
          v15 = 0x756F72676B636162;
LABEL_25:
          v16 = sub_251B10780(v15, v14, v22);

          *(v12 + 24) = v16;
          *(v12 + 32) = 2080;
          v17 = a1;
          sub_251A82284();
          v18 = sub_251C70F74();
          v20 = sub_251B10780(v18, v19, v22);

          *(v12 + 34) = v20;
          _os_log_impl(&dword_251A6C000, v10, v11, "%s: scheduling sync retry after %f because %s sync encountered error %s", v12, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x25308E2B0](v13, -1, -1);
          MEMORY[0x25308E2B0](v12, -1, -1);
LABEL_26:

          v22[0] = v3[17];
          MEMORY[0x28223BE20](v21);
          sub_251BCA880(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
          sub_251B3F1EC();
          return sub_251C702C4();
      }
    }

    v14 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_251BC8448(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HKError(0);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v5[1];
    sub_251BCA42C(&qword_27F478C50, type metadata accessor for HKError, &unk_251C74118);
    sub_251C6FD34();

    return v5[0] == 6;
  }

  return result;
}

uint64_t sub_251BC8588(uint64_t a1)
{
  v2 = sub_251C70284();
  v26[0] = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - v6;
  sub_251BCA880(0, &qword_27F47BB38, MEMORY[0x277CC9AE8], MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v26 - v10;
  v12 = *(a1 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251C702A4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v26[1], a1);
  v19 = swift_dynamicCast();
  v20 = *(v16 + 56);
  if (v19)
  {
    v20(v11, 0, 1, v15);
    (*(v16 + 32))(v18, v11, v15);
    sub_251BCA42C(&qword_27F47BB40, MEMORY[0x277CC9AE8], MEMORY[0x277CC9AE0]);
    sub_251C6FD34();
    sub_251C70274();
    sub_251BCA42C(&qword_27F47BB48, MEMORY[0x277CC9AC8], MEMORY[0x277CC9AD0]);
    v21 = sub_251C70ED4();
    v22 = *(v26[0] + 8);
    v22(v5, v2);
    if (v21 & 1) != 0 || (sub_251C70254(), v23 = sub_251C70ED4(), v22(v5, v2), (v23))
    {
      v22(v7, v2);
      (*(v16 + 8))(v18, v15);
      v24 = 1;
    }

    else
    {
      sub_251C70264();
      v24 = sub_251C70ED4();
      v22(v5, v2);
      v22(v7, v2);
      (*(v16 + 8))(v18, v15);
    }
  }

  else
  {
    v20(v11, 1, 1, v15);
    sub_251BCA3A0(v11);
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_251BC8A04()
{
  v1 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);

  v3 = sub_251C70744();
  v4 = sub_251C713F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_251B10780(v1[18], v1[19], &v8);
    _os_log_impl(&dword_251A6C000, v3, v4, "%s: marking as run", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25308E2B0](v6, -1, -1);
    MEMORY[0x25308E2B0](v5, -1, -1);
  }

  v8 = v1[17];
  sub_251BCA880(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();
  return sub_251C702C4();
}

void *sub_251BC8BB4(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    [v2 setWaitingForTrigger_];
  }

  sub_251BC74DC(&v15);
  v3 = v15;
  v4 = v16;
  v5 = v17;
  v6 = v20;
  if (v19)
  {
    v7 = v18;
  }

  else
  {
    sub_251BC6C9C(v15, v16, v17, 0, 1, v20);
    v7 = 0;
  }

  v8 = a1[9];
  v9 = a1[10];
  v10 = a1[11];
  v11 = a1[12];
  v12 = a1[13];
  v13 = a1[14];
  a1[9] = v3;
  a1[10] = v4;
  a1[11] = v5;
  a1[12] = v7;
  a1[13] = 1;
  a1[14] = v6;

  return sub_251BCA1D4(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_251BC8C74(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v8 = sub_251C70764();
  __swift_project_value_buffer(v8, qword_2813E8130);

  v9 = a1;
  v10 = sub_251C70744();
  v11 = sub_251C713F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = a3;
    v13 = a2;
    v14 = swift_slowAlloc();
    v29 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_251B10780(v4[18], v4[19], &v29);
    *(v12 + 12) = 2080;
    v15 = [v9 identifier];
    v16 = sub_251C70F14();
    v18 = v17;

    v19 = sub_251B10780(v16, v18, &v29);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_251A6C000, v10, v11, "%s: activity %s fired", v12, 0x16u);
    swift_arrayDestroy();
    v20 = v14;
    a2 = v13;
    a3 = v27;
    MEMORY[0x25308E2B0](v20, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  v28 = v4[17];
  sub_251BCA880(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251BCA880(0, &qword_2813E1BB0, sub_251BC9FBC, MEMORY[0x277D83D88]);
  sub_251B3F1EC();
  sub_251C702B4();
  v21 = v29;
  if (!v29)
  {
    return a2(1);
  }

  v22 = v30;
  v23 = swift_allocObject();
  v23[2] = v4;
  v23[3] = v9;
  v23[4] = a2;
  v23[5] = a3;
  v28 = 3;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_251BCA304;
  *(v24 + 24) = v23;
  v29 = sub_251BCADC8;
  v30 = v24;

  v25 = v9;

  v21(&v28, &v29);
  sub_251A7EA4C(v21, v22);
}

uint64_t sub_251BC8FD8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 120);
  v4 = *(a1 + 128);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_251BCADCC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_251A7E910(v3, v4);
}

uint64_t sub_251BC9058(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(v4, sub_251BCA27C, v7);
}

uint64_t sub_251BC90F0(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  if (a1)
  {
    v8 = a1;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v9 = sub_251C70764();
    __swift_project_value_buffer(v9, qword_2813E8130);
    v10 = a1;

    v11 = a3;
    v12 = sub_251C70744();
    v13 = sub_251C713D4();

    if (!os_log_type_enabled(v12, v13))
    {

      return a4(1);
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_251B10780(*(a2 + 144), *(a2 + 152), &v36);
    *(v14 + 12) = 2080;
    v16 = [v11 identifier];
    v17 = sub_251C70F14();
    v19 = v18;

    v20 = sub_251B10780(v17, v19, &v36);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v21 = a1;
    sub_251A82284();
    v22 = sub_251C70F74();
    v24 = sub_251B10780(v22, v23, &v36);

    *(v14 + 24) = v24;
    _os_log_impl(&dword_251A6C000, v12, v13, "%s: activity %s failed: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v15, -1, -1);
    MEMORY[0x25308E2B0](v14, -1, -1);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v25 = sub_251C70764();
    __swift_project_value_buffer(v25, qword_2813E8130);

    v26 = a3;
    v12 = sub_251C70744();
    v27 = sub_251C713F4();

    if (os_log_type_enabled(v12, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_251B10780(*(a2 + 144), *(a2 + 152), &v36);
      *(v28 + 12) = 2080;
      v30 = [v26 identifier];
      v31 = sub_251C70F14();
      v33 = v32;

      v34 = sub_251B10780(v31, v33, &v36);

      *(v28 + 14) = v34;
      _os_log_impl(&dword_251A6C000, v12, v27, "%s: activity %s succeeded", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v29, -1, -1);
      MEMORY[0x25308E2B0](v28, -1, -1);
    }
  }

  return a4(1);
}

uint64_t sub_251BC94C4(void *a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v8 = sub_251C70764();
  __swift_project_value_buffer(v8, qword_2813E8130);

  v9 = a1;
  v10 = sub_251C70744();
  v11 = sub_251C713F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = a3;
    v13 = a2;
    v14 = swift_slowAlloc();
    v30 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_251B10780(v4[18], v4[19], &v30);
    *(v12 + 12) = 2080;
    v15 = [v9 name];
    v16 = sub_251C70F14();
    v18 = v17;

    v19 = sub_251B10780(v16, v18, &v30);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_251A6C000, v10, v11, "%s: activity %s fired", v12, 0x16u);
    swift_arrayDestroy();
    v20 = v14;
    a2 = v13;
    a3 = v28;
    MEMORY[0x25308E2B0](v20, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  v29 = v4[17];
  sub_251BCA880(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251BC9EF0(0);
  sub_251B3F1EC();
  sub_251C702B4();
  v21 = v30;
  if (!v30)
  {
    return a2(0, 0);
  }

  v22 = v31;
  if (v33)
  {
    v23 = 3;
  }

  else
  {
    v23 = v32;
  }

  v24 = swift_allocObject();
  v24[2] = v4;
  v24[3] = v9;
  v24[4] = a2;
  v24[5] = a3;
  v29 = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_251BCA0C4;
  *(v25 + 24) = v24;
  v30 = sub_251BCA0D0;
  v31 = v25;

  v26 = v9;
  sub_251A7E910(v21, v22);

  v21(&v29, &v30);

  sub_251A7EA4C(v21, v22);
  return sub_251A7EA4C(v21, v22);
}

uint64_t sub_251BC9820@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[15];
  v5 = a1[16];
  sub_251A7E910(v4, v5);
  sub_251BC74DC(&v21);
  v6 = v21;
  v7 = v22;
  v8 = v23;
  v9 = v24;
  v10 = v25;
  v11 = v26;
  v12 = v24;
  if ((v25 & 1) == 0)
  {
    sub_251BC6C9C(v21, v22, v23, 0, 1, v26);
    v12 = 0;
  }

  v13 = a1[9];
  v14 = a1[10];
  v15 = a1[11];
  v16 = a1[12];
  v17 = a1[13];
  v18 = a1[14];
  a1[9] = v6;
  a1[10] = v7;
  a1[11] = v8;
  a1[12] = v12;
  a1[13] = 1;
  a1[14] = v11;
  sub_251BCA1D4(v13, v14, v15, v16, v17, v18);
  if (v4)
  {
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v20 = sub_251BCA220;
  }

  else
  {
    v20 = 0;
    result = 0;
  }

  *a2 = v20;
  *(a2 + 8) = result;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10 & 1;
  return result;
}