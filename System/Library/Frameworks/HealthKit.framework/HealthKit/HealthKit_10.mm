id DatabaseAccessibilityAssertionStoreKeeper.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__didBecomeAvailableNotificationToken;
  swift_beginAccess();
  notify_cancel(*&v0[v2]);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t DatabaseAccessibilityAssertionStoreKeeper.fetchDatabaseAccessibilityAssertionFor(ownerIdentifier:contextType:isRecovery:timeout:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, double a7)
{
  v44 = a5;
  v45 = a6;
  v42 = a4;
  v41 = a3;
  v40 = a2;
  v39 = a1;
  v49 = sub_191CC6378();
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_191CC63A8();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_191CC6148();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  v47 = &v37 - v17;
  sub_191CC6138();
  v46 = sub_191C8ABF8();
  v19 = *(v13 + 16);
  v43 = v12;
  v19(v16, v18, v12);
  v20 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 39) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v7;
  (*(v13 + 32))(v23 + v20, v16, v12);
  v24 = (v23 + v21);
  v25 = v40;
  *v24 = v39;
  v24[1] = v25;
  v26 = v23 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v26 = v41;
  *(v26 + 8) = v42;
  *(v23 + v22) = a7;
  v27 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v28 = v45;
  *v27 = v44;
  v27[1] = v28;
  aBlock[4] = sub_191C8C56C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C910B0;
  aBlock[3] = &block_descriptor_6_0;
  v29 = _Block_copy(aBlock);
  v30 = v7;

  v31 = v38;
  sub_191CC6388();
  v53 = MEMORY[0x1E69E7CC0];
  sub_191C90168(&qword_1EADCD088, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v32 = MEMORY[0x1E69E7F60];
  sub_191C90E78(0, &qword_1EADCD090, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_191C8CD14(&qword_1EADCD098, &qword_1EADCD090, v32);
  v34 = v48;
  v33 = v49;
  sub_191CC6E58();
  v35 = v46;
  MEMORY[0x193B024A0](0, v31, v34, v29);
  _Block_release(v29);

  (*(v52 + 8))(v34, v33);
  (*(v50 + 8))(v31, v51);
  (*(v13 + 8))(v47, v43);
}

void sub_191C8BF34(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9)
{
  v70 = a8;
  v71 = a7;
  v68 = a6;
  v69 = a5;
  v66 = a4;
  v67 = a3;
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
  v12 = MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord);
  v64 = &DatabaseAccessibilityAssertionsRecord - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v65 = &DatabaseAccessibilityAssertionsRecord - v15;
  MEMORY[0x1EEE9AC00](v14);
  v63 = &DatabaseAccessibilityAssertionsRecord - v16;
  v17 = sub_191CC6148();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &DatabaseAccessibilityAssertionsRecord - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, a2, v17);
  v21 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v22 = (v19 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 39) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  v26 = v25 + v21;
  v27 = v66;
  v28 = v20;
  v29 = v68;
  (*(v18 + 32))(v26, v28, v17);
  v30 = v67;
  v31 = (v25 + v22);
  *v31 = v67;
  v31[1] = v27;
  v32 = v25 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v33 = v69;
  *v32 = v69;
  *(v32 + 8) = v29;
  *(v25 + v23) = a9;
  v34 = v70;
  v35 = (v25 + v24);
  *v35 = v71;
  v35[1] = v34;
  if (a9 > 0.0)
  {
    v36 = DatabaseAccessibilityAssertionsRecord;
    swift_bridgeObjectRetain_n();
    a1;

    v37 = v63;
    sub_191CC60C8();
    sub_191CC6198();
    v38 = (v37 + v36[5]);
    *v38 = v30;
    v38[1] = v27;
    *(v37 + v36[6]) = v33;
    v39 = (v37 + v36[8]);
    *v39 = sub_191C90D14;
    v39[1] = v25;
    v40 = v64;
    sub_191C90BAC(v37, v64, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
    swift_beginAccess();
    v41 = v65;
    sub_191C78CB4(v65, v40);
    swift_endAccess();
    sub_191C90AE8(v41, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
    sub_191C8AFB4(0);
    sub_191C90AE8(v37, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
    return;
  }

  v42 = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    v45 = v30;
    objc_allocWithZone(type metadata accessor for DatabaseAccessibilityAssertionStore());

    v46 = v42;

    v47 = DatabaseAccessibilityAssertionStore.init(healthStore:)(v44);
    if (v47)
    {
      LODWORD(v71) = v29 & 1;
      v48 = v47;
      v49 = sub_191C70884();
      v50 = swift_allocObject();
      v50[2] = sub_191C90D14;
      v50[3] = v25;
      v50[4] = v48;
      v76 = sub_191C910BC;
      v77 = v50;
      aBlock = MEMORY[0x1E69E9820];
      v73 = 1107296256;
      v74 = sub_191C7100C;
      v75 = &block_descriptor_90;
      v51 = _Block_copy(&aBlock);
      v52 = v48;

      v53 = [v49 clientQueueObjectHandlerWithCompletion_];
      _Block_release(v51);

      v54 = swift_allocObject();
      *(v54 + 16) = v53;
      v55 = *&v52[OBJC_IVAR___HKDatabaseAccessibilityAssertionStore____lazy_storage____proxyProvider];
      v56 = swift_allocObject();
      *(v56 + 16) = v45;
      *(v56 + 24) = v27;
      *(v56 + 32) = v33;
      *(v56 + 40) = v71;
      *(v56 + 48) = sub_191C910B8;
      *(v56 + 56) = v54;
      v76 = sub_191C910FC;
      v77 = v56;
      aBlock = MEMORY[0x1E69E9820];
      v73 = 1107296256;
      v74 = sub_191C707AC;
      v75 = &block_descriptor_101_0;
      v57 = _Block_copy(&aBlock);

      v58 = v55;

      v59 = swift_allocObject();
      *(v59 + 16) = sub_191C910B8;
      *(v59 + 24) = v54;
      v76 = sub_191C91100;
      v77 = v59;
      aBlock = MEMORY[0x1E69E9820];
      v73 = 1107296256;
      v74 = sub_191C7081C;
      v75 = &block_descriptor_108;
      v60 = _Block_copy(&aBlock);

      [v58 fetchProxyWithHandler:v57 errorHandler:v60];
      _Block_release(v60);
      _Block_release(v57);

      return;
    }
  }

  else
  {

    v61 = a1;
  }
}

uint64_t sub_191C8C570(void *a1, void *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, void *a8, int a9, uint64_t (*a10)(void *, void *), uint64_t a11)
{
  v69 = a11;
  v70 = a10;
  v67 = sub_191CC6008();
  v18 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_191CC6148();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v25 = a1;
    sub_191C8CC50(v25);

    return v70(a1, a2);
  }

  v59 = v21;
  v60 = a5;
  v65 = a6;
  v66 = a7;
  v64 = a8;
  v63 = a9;
  v61 = v22;
  if (qword_1EADCA170 != -1)
  {
    swift_once();
  }

  v26 = sub_191CC6348();
  __swift_project_value_buffer(v26, qword_1EADE70B0);
  v27 = a2;
  v28 = sub_191CC6328();
  v29 = sub_191CC6C98();

  v30 = os_log_type_enabled(v28, v29);
  v62 = v18;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v71 = a2;
    v72[0] = v58;
    *v31 = 136315138;
    v32 = a2;
    sub_191C90E78(0, &unk_1EADCD130, sub_191BF92E0, MEMORY[0x1E69E6720]);
    v33 = sub_191CC67C8();
    v35 = sub_191C3B288(v33, v34, v72);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_19197B000, v28, v29, "Received a nil database accessibility assertion: %s", v31, 0xCu);
    v36 = v58;
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x193B047C0](v36, -1, -1);
    MEMORY[0x193B047C0](v31, -1, -1);
  }

  v37 = v63;
  v38 = v64;
  v39 = v65;
  v40 = v66;
  if (a2)
  {
    return v70(a1, a2);
  }

  sub_191CC6138();
  v66 = v24;
  sub_191CC6088();
  v42 = sub_191CC6328();
  v43 = sub_191CC6CA8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_19197B000, v42, v43, "Received a nil assertion error with a nil error", v44, 2u);
    MEMORY[0x193B047C0](v44, -1, -1);
  }

  v72[0] = 0;
  v72[1] = 0xE000000000000000;
  sub_191CC6FC8();
  MEMORY[0x193B01F90](0xD000000000000051, 0x8000000191D2EE40);
  MEMORY[0x193B01F90](v39, v40);
  MEMORY[0x193B01F90](8236, 0xE200000000000000);
  v71 = v38;
  type metadata accessor for HKDatabaseAssertionContextType(0);
  sub_191CC70F8();
  MEMORY[0x193B01F90](8236, 0xE200000000000000);
  if (v37)
  {
    v45 = 1702195828;
  }

  else
  {
    v45 = 0x65736C6166;
  }

  if (v37)
  {
    v46 = 0xE400000000000000;
  }

  else
  {
    v46 = 0xE500000000000000;
  }

  MEMORY[0x193B01F90](v45, v46);

  MEMORY[0x193B01F90](8236, 0xE200000000000000);
  sub_191CC6B18();
  MEMORY[0x193B01F90](8236, 0xE200000000000000);
  sub_191C90168(&qword_1EADCB860, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v47 = v59;
  v48 = sub_191CC7398();
  MEMORY[0x193B01F90](v48);

  MEMORY[0x193B01F90](8236, 0xE200000000000000);
  sub_191CC6B18();
  v49 = objc_opt_self();
  v50 = sub_191CC6778();
  v51 = sub_191CC6778();

  v52 = [v49 hk:v50 tapToHealthRadarURLWithTitle:v51 description:2 classification:6 reproducibility:0 keywords:3 autoDiagnostics:0 attachments:?];

  sub_191CC5FF8();
  v53 = [objc_opt_self() defaultWorkspace];
  if (v53)
  {
    v54 = v53;
    v55 = sub_191CC5FD8();
    sub_191C909D0(MEMORY[0x1E69E7CC0]);
    v56 = sub_191CC6638();

    [v54 openSensitiveURL:v55 withOptions:v56];
  }

  v57 = [objc_opt_self() hk:100 error:0 userInfo:?];
  v70(0, v57);

  (*(v62 + 8))(v68, v67);
  return (*(v61 + 8))(v66, v47);
}

void sub_191C8CC50(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__dbAccessibilityAssertionsLock);
  os_unfair_lock_lock(v3 + 4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a1 configureAssertion_];
    swift_beginAccess();
    sub_191C78EC4(&v6, a1);
    swift_endAccess();
  }

  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_191C8CD14(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_191C90E78(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DatabaseAccessibilityAssertionStoreKeeper.fetchDatabaseAccessibilityAssertionFor(ownerIdentifier:isRecovery:timeout:completion:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, double a6)
{
  v42 = a5;
  v40 = a4;
  v39 = a3;
  v37 = a2;
  v36 = a1;
  v46 = sub_191CC6378();
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_191CC63A8();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_191CC6148();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v16;
  v44 = &v36 - v16;
  sub_191CC6138();
  v43 = sub_191C8ABF8();
  v18 = *(v12 + 16);
  v41 = v11;
  v18(v15, v17, v11);
  v19 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 39) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  (*(v12 + 32))(v22 + v19, v15, v11);
  v23 = (v22 + v20);
  v24 = v37;
  *v23 = v36;
  v23[1] = v24;
  v25 = v22 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v25 = 1;
  *(v25 + 8) = v39;
  *(v22 + v21) = a6;
  v26 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = v42;
  *v26 = v40;
  v26[1] = v27;
  aBlock[4] = sub_191C910AC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C910B0;
  aBlock[3] = &block_descriptor_13;
  v28 = _Block_copy(aBlock);
  v29 = v6;

  v30 = v38;
  sub_191CC6388();
  v50 = MEMORY[0x1E69E7CC0];
  sub_191C90168(&qword_1EADCD088, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v31 = MEMORY[0x1E69E7F60];
  sub_191C90E78(0, &qword_1EADCD090, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_191C8CD14(&qword_1EADCD098, &qword_1EADCD090, v31);
  v33 = v45;
  v32 = v46;
  sub_191CC6E58();
  v34 = v43;
  MEMORY[0x193B024A0](0, v30, v33, v28);
  _Block_release(v28);

  (*(v49 + 8))(v33, v32);
  (*(v47 + 8))(v30, v48);
  (*(v12 + 8))(v44, v41);
}

void sub_191C8D2F4()
{
  v1 = *(sub_191CC6148() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);
  v11 = *(v0 + v4 + 8);
  v12 = *(v0 + v5);
  v13 = (v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  sub_191C8BF34(v6, v0 + v2, v8, v9, v10, v11, v14, v15, v12);
}

uint64_t sub_191C8D48C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v28 = a1;
  v7 = sub_191CC6378();
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_191CC63A8();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
  v14 = *(DatabaseAccessibilityAssertionsRecord - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_191C8ABF8();
  sub_191C90BAC(a4, v16, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  sub_191C7B978(v16, v19 + v17);
  *(v19 + v18) = a2;
  v20 = v28;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
  aBlock[4] = sub_191C90934;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C910B0;
  aBlock[3] = &block_descriptor_80;
  v21 = _Block_copy(aBlock);
  v22 = a3;
  v23 = a2;
  v24 = v20;
  sub_191CC6388();
  v33 = MEMORY[0x1E69E7CC0];
  sub_191C90168(&qword_1EADCD088, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v25 = MEMORY[0x1E69E7F60];
  sub_191C90E78(0, &qword_1EADCD090, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_191C8CD14(&qword_1EADCD098, &qword_1EADCD090, v25);
  sub_191CC6E58();
  v26 = v29;
  MEMORY[0x193B024A0](0, v12, v9, v21);
  _Block_release(v21);

  (*(v32 + 8))(v9, v7);
  (*(v30 + 8))(v12, v31);
}

uint64_t sub_191C8D850(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v28 = a4;
  v6 = sub_191CC6148();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C90E78(0, &unk_1EADCD0F0, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  swift_beginAccess();
  sub_191C8FB5C(v12);
  swift_endAccess();
  sub_191C90854(v12, &unk_1EADCD0F0, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
  if (a3 && (v30 = a3, v13 = a3, sub_191BF92E0(), type metadata accessor for HKError(0), (swift_dynamicCast() & 1) != 0))
  {
    v14 = v29;
    v30 = v29;
    sub_191C90168(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);
    sub_191CC5F78();

    v15 = v29;
    DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
    sub_191CC6108();
    sub_191C90168(&qword_1EADCAE28, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v17 = sub_191CC6718();
    (*(v7 + 8))(v9, v6);
    if (v17)
    {
      swift_beginAccess();
      sub_191C8FB5C(v12);
      swift_endAccess();
      sub_191C90854(v12, &unk_1EADCD0F0, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
      v18 = *(a2 + *(DatabaseAccessibilityAssertionsRecord + 32));
      sub_191C90E78(0, &unk_1EADCD110, sub_191C3D154, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_191DD4540;
      *(inited + 32) = sub_191CC67B8();
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = v20;
      *(inited + 48) = 0x2074736575716572;
      *(inited + 56) = 0xEF74756F656D6974;
      v21 = @"com.apple.healthkit";
      sub_191C909D0(inited);
      swift_setDeallocating();
      sub_191C90AE8(inited + 32, sub_191C3D154);
      v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v23 = sub_191CC6638();

      v24 = [v22 initWithDomain:v21 code:103 userInfo:v23];

      v18(0, v24);
    }

    else if (v15 != 1 && v15 != 6)
    {
      swift_beginAccess();
      sub_191C8FB5C(v12);
      swift_endAccess();
      sub_191C90854(v12, &unk_1EADCD0F0, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
      (*(a2 + *(DatabaseAccessibilityAssertionsRecord + 32)))(0, a3);
    }
  }

  else
  {
    swift_beginAccess();
    sub_191C8FB5C(v12);
    swift_endAccess();
    sub_191C90854(v12, &unk_1EADCD0F0, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
    v25 = *(a2 + *(type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0) + 32));
    v25(v28, 0);
  }

  return sub_191C8DDBC();
}

uint64_t sub_191C8DDBC()
{
  v1 = v0;
  v2 = sub_191CC6378();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v100 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_191CC63A8();
  v99 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_191CC6368();
  v96 = *(v97 - 8);
  v7 = MEMORY[0x1EEE9AC00](v97);
  v95 = (&v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v82 - v9;
  v93 = sub_191CC63C8();
  v92 = *(v93 - 8);
  v10 = MEMORY[0x1EEE9AC00](v93);
  v90 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v82 - v12;
  v89 = sub_191CC6D28();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_191CC6148();
  v104 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
  v112 = *(DatabaseAccessibilityAssertionsRecord - 8);
  v16 = MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord);
  v106 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v111 = (&v82 - v18);
  sub_191C90E78(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v103 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v102 = &v82 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v110 = &v82 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v82 - v26;
  v28 = sub_191CC63D8();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v31 = sub_191C8ABF8();
  (*(v29 + 104))(v31, *MEMORY[0x1E69E8020], v28);
  v32 = sub_191CC63F8();
  result = (*(v29 + 8))(v31, v28);
  if (v32)
  {
    v34 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__pendingRequestsTimer;
    v35 = *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__pendingRequestsTimer];
    v85 = v2;
    v84 = v3;
    v83 = v5;
    if (v35)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_191CC6D58();
      swift_unknownObjectRelease();
    }

    v82 = v34;
    *&v1[v34] = 0;
    swift_unknownObjectRelease();
    v36 = v104 + 56;
    v37 = v14;
    v108 = *(v104 + 56);
    v108(v27, 1, 1, v14);
    v38 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__pendingRequests;
    swift_beginAccess();
    v86 = v1;
    v39 = *&v1[v38];
    v40 = v39 + 56;
    v41 = 1 << *(v39 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(v39 + 56);
    v44 = (v41 + 63) >> 6;
    v115 = (v36 - 8);
    v105 = (v36 - 48);
    v109 = v36;
    v107 = (v36 - 40);
    v113 = v39;

    v45 = 0;
    v46 = v106;
    v47 = v110;
    if (v43)
    {
      while (1)
      {
LABEL_13:
        v49 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v50 = v111;
        sub_191C90BAC(*(v113 + 48) + *(v112 + 72) * (v49 | (v45 << 6)), v111, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        sub_191C7B978(v50, v46);
        sub_191C18FCC(v27, v47);
        v51 = *v115;
        v52 = v37;
        v53 = (*v115)(v47, 1, v37);
        sub_191C90854(v47, &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
        if (v53 == 1)
        {
          goto LABEL_8;
        }

        v54 = v27;
        v55 = v27;
        v56 = v103;
        sub_191C18FCC(v55, v103);
        result = v51(v56, 1, v52);
        if (result == 1)
        {
          goto LABEL_24;
        }

        v57 = v106;
        v58 = sub_191CC60B8();
        (*v105)(v56, v52);
        v27 = v54;
        v46 = v57;
        if (v58)
        {
LABEL_8:
          sub_191C90854(v27, &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
          (*v107)(v27, v46 + *(DatabaseAccessibilityAssertionsRecord + 28), v52);
          sub_191C90AE8(v46, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
          result = (v108)(v27, 0, 1, v52);
          v37 = v52;
          if (!v43)
          {
            goto LABEL_9;
          }
        }

        else
        {
          result = sub_191C90AE8(v57, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
          v37 = v52;
          if (!v43)
          {
            goto LABEL_9;
          }
        }
      }
    }

    while (1)
    {
LABEL_9:
      v48 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v48 >= v44)
      {
        break;
      }

      v43 = *(v40 + 8 * v48);
      ++v45;
      if (v43)
      {
        v45 = v48;
        goto LABEL_13;
      }
    }

    v59 = v102;
    sub_191C18FCC(v27, v102);
    if ((*v115)(v59, 1, v37) == 1)
    {
      sub_191C90854(v27, &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
    }

    else
    {
      v60 = *(v104 + 32);
      v104 += 32;
      v60(v101, v59, v37);
      sub_191BFAE6C(0, &qword_1EADCD0D0, 0x1E69E9630);
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_191C90168(&qword_1EADCD0D8, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
      v61 = MEMORY[0x1E69E80B0];
      sub_191C90E78(0, &qword_1EADCD0E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
      v113 = v37;
      sub_191C8CD14(&qword_1EADCD0E8, &qword_1EADCD0E0, v61);
      v62 = v87;
      v63 = v89;
      sub_191CC6E58();
      v115 = sub_191CC6D38();
      (*(v88 + 8))(v62, v63);
      sub_191CC60D8();
      ObjectType = swift_getObjectType();
      v112 = ObjectType;
      v65 = v90;
      sub_191CC63B8();
      v66 = v91;
      sub_191CC63E8();
      v111 = *(v92 + 8);
      DatabaseAccessibilityAssertionsRecord = v27;
      v67 = v93;
      (v111)(v65, v93);
      v68 = v96;
      v69 = *(v96 + 104);
      v70 = v94;
      v71 = v97;
      v69(v94, *MEMORY[0x1E69E7F40], v97);
      v72 = v95;
      *v95 = 0;
      v69(v72, *MEMORY[0x1E69E7F28], v71);
      MEMORY[0x193B02510](v66, v70, v72, ObjectType);
      v73 = *(v68 + 8);
      v73(v72, v71);
      v73(v70, v71);
      v74 = v66;
      v59 = DatabaseAccessibilityAssertionsRecord;
      (v111)(v74, v67);
      v75 = swift_allocObject();
      v76 = v86;
      *(v75 + 16) = v86;
      aBlock[4] = sub_191C908C4;
      aBlock[5] = v75;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_191C910B0;
      aBlock[3] = &block_descriptor_68;
      v77 = _Block_copy(aBlock);
      v78 = v76;
      v79 = v98;
      sub_191CC6388();
      v80 = v100;
      sub_191C8EC04();
      v81 = v115;
      sub_191CC6D48();
      _Block_release(v77);
      (*(v84 + 8))(v80, v85);
      (*(v99 + 8))(v79, v83);

      *&v76[v82] = v81;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      sub_191CC6D68();
      swift_unknownObjectRelease();
      (*(v104 - 24))(v101, v113);
    }

    return sub_191C90854(v59, &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
  }

  else
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_191C8EBC0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_191C8EC04()
{
  sub_191CC6378();
  sub_191C90168(&qword_1EADCD088, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v0 = MEMORY[0x1E69E7F60];
  sub_191C90E78(0, &qword_1EADCD090, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_191C8CD14(&qword_1EADCD098, &qword_1EADCD090, v0);
  return sub_191CC6E58();
}

uint64_t sub_191C8ED28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191CC6378();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_191CC63A8();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_191C8ABF8();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C910B0;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_191CC6388();
  v21 = MEMORY[0x1E69E7CC0];
  sub_191C90168(&qword_1EADCD088, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v16 = MEMORY[0x1E69E7F60];
  sub_191C90E78(0, &qword_1EADCD090, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_191C8CD14(&qword_1EADCD098, &qword_1EADCD090, v16);
  sub_191CC6E58();
  MEMORY[0x193B024A0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  (*(v9 + 8))(v11, v19);
}

void sub_191C8EFF8()
{
  if (qword_1EADCA170 != -1)
  {
    swift_once();
  }

  v0 = sub_191CC6348();
  __swift_project_value_buffer(v0, qword_1EADE70B0);
  v1 = sub_191CC6328();
  v2 = sub_191CC6CB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19197B000, v1, v2, "Connection Configured. Attempting to process pending requests", v3, 2u);
    MEMORY[0x193B047C0](v3, -1, -1);
  }

  sub_191C8AFB4(1);
}

Swift::Void __swiftcall DatabaseAccessibilityAssertionStoreKeeper.invalidateAllDatabaseAccessibilityAssertions()()
{
  v15 = *(v0 + OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__dbAccessibilityAssertionsLock);
  os_unfair_lock_lock(v15 + 4);
  v1 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__dbAccessibilityAssertions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_191CC6EA8();
    sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
    sub_191C3E29C(&qword_1EADCC800, &unk_1EADCD0A0, off_1E7374DD0);
    sub_191CC6B78();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_191C8F378(v2);
      os_unfair_lock_unlock(v15 + 4);
      return;
    }

    while (1)
    {
      [v14 markInvalid];

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_191CC6F18())
      {
        sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
        swift_dynamicCast();
        v14 = v16;
        v12 = v5;
        v13 = v6;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall DatabaseAccessibilityAssertionStoreKeeper.invalidateDatabaseAccessibilityAssertion(assertion:)(HKDatabaseAccessibilityAssertion *assertion)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = objc_allocWithZone(type metadata accessor for DatabaseAccessibilityAssertionStore());
    Strong = DatabaseAccessibilityAssertionStore.init(healthStore:)(Strong);
  }

  v5 = *(v1 + OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__dbAccessibilityAssertionsLock);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = sub_191C8FDB8(assertion);
  swift_endAccess();

  [(HKDatabaseAccessibilityAssertion *)assertion markInvalid];
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_191C70884();
    v9 = swift_allocObject();
    *(v9 + 16) = assertion;
    v17 = sub_191C718D4;
    v18 = v9;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_191C707AC;
    v16 = &block_descriptor_25;
    v10 = _Block_copy(&v13);
    v11 = assertion;

    v17 = sub_191C718DC;
    v18 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_191C7081C;
    v16 = &block_descriptor_28_0;
    v12 = _Block_copy(&v13);
    [v8 fetchProxyWithHandler:v10 errorHandler:v12];
    _Block_release(v12);
    _Block_release(v10);
  }

  os_unfair_lock_unlock(v5 + 4);
}

id DatabaseAccessibilityAssertionStoreKeeper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_191C8F6D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_191C7B7F4(0, &qword_1EADCC818, &qword_1EADCD140, 0x1E696AD98, &qword_1EADCC7E0);
    v2 = sub_191CC6F88();
    v15 = v2;
    sub_191CC6EA8();
    if (sub_191CC6F18())
    {
      sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_191C79380(v9 + 1);
        }

        v2 = v15;
        result = sub_191CC6D98();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_191CC6F18());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_191C8F8D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_191C7B7F4(0, &unk_1EADCD0C0, &unk_1EADCD0A0, off_1E7374DD0, &qword_1EADCC800);
    v2 = sub_191CC6F88();
    v15 = v2;
    sub_191CC6EA8();
    if (sub_191CC6F18())
    {
      sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_191C796C4(v9 + 1);
        }

        v2 = v15;
        result = sub_191CC6D98();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_191CC6F18());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_191C8FAD8(uint64_t a1, uint64_t a2)
{
  sub_191CC6D98();
  result = sub_191CC6E88();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_191C8FB5C@<X0>(uint64_t a2@<X8>)
{
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
  v5 = *(DatabaseAccessibilityAssertionsRecord - 8);
  MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C90168(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_191CC66A8();
  v9 = sub_191CC7508();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v21 = v2;
    v22 = v5;
    v23 = DatabaseAccessibilityAssertionsRecord;
    v24 = a2;
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_191C90BAC(*(v8 + 48) + v13 * v11, v7, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
      v14 = sub_191CC6178();
      sub_191C90AE8(v7, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        v15 = 1;
        a2 = v24;
        goto LABEL_10;
      }
    }

    v16 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v16;
    v25 = *v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_191C7A468();
      v18 = v25;
    }

    a2 = v24;
    sub_191C7B978(*(v18 + 48) + v13 * v11, v24);
    sub_191C90318(v11);
    v15 = 0;
    *v16 = v25;
LABEL_10:
    v5 = v22;
    DatabaseAccessibilityAssertionsRecord = v23;
  }

  else
  {
    v15 = 1;
  }

  return (*(v5 + 56))(a2, v15, 1, DatabaseAccessibilityAssertionsRecord);
}

uint64_t sub_191C8FDB8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_191CC6F28();

    if (v6)
    {
      v7 = sub_191C901B0(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
  v10 = sub_191CC6D98();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_191CC6DA8();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_191C7A63C();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_191C9062C(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(uint64_t a1)
{
  result = qword_1ED5F00C0;
  if (!qword_1ED5F00C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_191C90014(uint64_t a1)
{
  sub_191CC61A8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKDatabaseAssertionContextType(319);
    if (v2 <= 0x3F)
    {
      sub_191CC6148();
      if (v3 <= 0x3F)
      {
        sub_191C900D0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_191C900D0()
{
  result = qword_1ED5F00D0;
  if (!qword_1ED5F00D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED5F00D0);
  }

  return result;
}

uint64_t sub_191C90168(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_191C901B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_191CC6EE8();
  v5 = swift_unknownObjectRetain();
  v6 = sub_191C8F8D8(v5, v4);
  v15 = v6;

  v7 = sub_191CC6D98();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_191CC6DA8();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_191C9062C(v9);
  result = sub_191CC6DA8();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_191C90318(int64_t a1)
{
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
  v3 = *(DatabaseAccessibilityAssertionsRecord - 8);
  result = MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = sub_191CC6E78();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v12 = (v11 + 1) & v10;
      v13 = *(v3 + 72);
      v26 = v13;
      v27 = v7;
      do
      {
        v14 = v13 * v9;
        v15 = v28;
        sub_191C90BAC(*(v6 + 48) + v13 * v9, v28, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        v16 = v6;
        sub_191CC74C8();
        sub_191CC61A8();
        sub_191C90168(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v17 = v12;
        sub_191CC66A8();
        v18 = sub_191CC7508();
        sub_191C90AE8(v15, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        v19 = v18 & v10;
        v12 = v17;
        if (a1 >= v17)
        {
          if (v19 < v17)
          {
            v6 = v16;
          }

          else
          {
            v6 = v16;
            if (a1 >= v19)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v6 = v16;
          if (v19 >= v12 || a1 >= v19)
          {
LABEL_13:
            v13 = v26;
            v20 = v26 * a1;
            if (v26 * a1 < v14 || *(v6 + 48) + v26 * a1 >= (*(v6 + 48) + v14 + v26))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v9;
            }

            else
            {
              a1 = v9;
              if (v20 != v14)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v9;
              }
            }

            goto LABEL_6;
          }
        }

        v13 = v26;
LABEL_6:
        v9 = (v9 + 1) & v10;
        v7 = v27;
      }

      while (((*(v27 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(v6 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v23;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_191C9062C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_191CC6E78();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_191CC6D98();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_191C907CC(void *a1, void *a2)
{
  v5 = *(type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_191C8D48C(a1, a2, v6, v7);
}

uint64_t sub_191C90854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_191C90E78(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_191C90934()
{
  v1 = *(type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_191C8D850(v4, v0 + v2, v5, v6);
}

unint64_t sub_191C909D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_191C90B48();
    v3 = sub_191CC7188();
    v4 = a1 + 32;

    while (1)
    {
      sub_191C90BAC(v4, &v13, sub_191C3D154);
      v5 = v13;
      v6 = v14;
      result = sub_191C40248(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_191C0B190(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_191C90AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_191C90B48()
{
  if (!qword_1EADCD120)
  {
    v0 = sub_191CC7198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCD120);
    }
  }
}

uint64_t sub_191C90BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_191CC6148();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_191C90D14(void *a1, void *a2)
{
  v5 = *(sub_191CC6148() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_191C8C570(a1, a2, *(v2 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v7 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_43Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_52Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_191C90E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_191C90EDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_191C90FC8(0);
    v3 = sub_191CC7188();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_191C402C0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_191C90FC8(uint64_t a1)
{
  if (!qword_1EADCD150)
  {
    type metadata accessor for HKBloodPressureClassificationCategory(255);
    type metadata accessor for HKBloodPressureClassificationCategoryData();
    sub_191C90168(&qword_1EADCA520, type metadata accessor for HKBloodPressureClassificationCategory, &unk_191DCEF7C);
    v1 = sub_191CC7198();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCD150);
    }
  }
}

id SecureCodableObject.__allocating_init(wrapped:)(uint64_t a1)
{
  v3 = sub_191C91F74(a1);
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

id SecureCodableObject.init(wrapped:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_191C91EBC(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

uint64_t SecureCodableObject.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_191C0DAF0(a1, v6);
  if (!v7)
  {
    sub_191C74400(v6);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
    return v3 & 1;
  }

  if (v5 == v1)
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_191CC6768();
  }

  return v3 & 1;
}

uint64_t sub_191C913A8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_191CC6E18();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = SecureCodableObject.isEqual(_:)(v8);

  sub_191C74400(v8);
  return v6 & 1;
}

uint64_t sub_191C91420(void *a1)
{
  v1 = a1;
  v2 = SecureCodableObject.hash.getter();

  return v2;
}

id sub_191C914C4(void *a1)
{
  v1 = a1;
  SecureCodableObject.description.getter();

  v2 = sub_191CC6778();

  return v2;
}

uint64_t SecureCodableObject.description.getter()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v6 = v10 - v5;
  v10[0] = 60;
  v10[1] = 0xE100000000000000;
  v7 = sub_191CC76A8();
  MEMORY[0x193B01F90](v7);

  MEMORY[0x193B01F90](32, 0xE100000000000000);
  (*(v4 + 16))(v6, &v0[*((*v2 & *v0) + 0x70)], v3);
  v8 = sub_191CC67C8();
  MEMORY[0x193B01F90](v8);

  MEMORY[0x193B01F90](62, 0xE100000000000000);
  return v10[0];
}

id SecureCodableObject.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = swift_getObjectType();
  *a1 = v3;

  return v3;
}

uint64_t sub_191C916E8()
{
  SecureCodableObject.copy(with:)(v2);
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  v0 = sub_191CC73D8();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0;
}

id SecureCodableObject.init(coder:)(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  sub_191C802D8();
  v10 = sub_191CC6D88();
  if (v10 && (v19 = xmmword_191DD1380, v11 = v10, sub_191CC6038(), v11, v12 = *(&v19 + 1), *(&v19 + 1) >> 60 != 15))
  {
    v18[0] = v4;
    v13 = v19;
    sub_191CC5EF8();
    swift_allocObject();
    sub_191CC5EE8();
    sub_191CC5ED8();
    v15 = v18[0];
    (*(v18[0] + 32))(v9, v7, v3);
    v16 = objc_allocWithZone(swift_getObjectType());
    v17 = sub_191C91EBC(v9);

    sub_191C049C4(v13, v12);

    (*(v15 + 8))(v9, v3);
    swift_deallocPartialClassInstance();
    return v17;
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

Swift::Void __swiftcall SecureCodableObject.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  sub_191CC5F28();
  swift_allocObject();
  sub_191CC5F18();
  v2 = sub_191CC5F08();
  v4 = v3;
  v5 = sub_191CC6028();
  v6 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  sub_191C049D8(v2, v4);
}

void sub_191C91CB8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SecureCodableObject.encode(with:)(v4);
}

id SecureCodableObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecureCodableObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_191C91EBC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  (*(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x70)], a1);
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_191C91FD8(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t ConfigurableQueryDescriptor<>.limit(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(*(a3 - 8) + 16))(a6, v6, a3);
  (*(a4 + 24))(a3, a4);
  (*(a5 + 8))(v21, a2 & 1, AssociatedTypeWitness, a5);
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  return (*(a4 + 32))(v18, a3, a4);
}

uint64_t ConfigurableQueryDescriptor<>.filter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(*(a2 - 8) + 16))(a5, v5, a2);
  (*(a3 + 24))(a2, a3);
  (*(a4 + 16))(a1, AssociatedTypeWitness, a4);
  (*(v12 + 8))(v15, AssociatedTypeWitness);
  return (*(a3 + 32))(v17, a2, a3);
}

uint64_t ConfigurableQueryDescriptor<>.sort(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(*(a2 - 8) + 16))(a5, v5, a2);
  (*(a3 + 24))(a2, a3);
  (*(a4 + 16))(a1, AssociatedTypeWitness, a4);
  (*(v12 + 8))(v15, AssociatedTypeWitness);
  return (*(a3 + 32))(v17, a2, a3);
}

uint64_t ConfigurableQueryDescriptor<>.within(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(*(a2 - 8) + 16))(a5, v5, a2);
  (*(a3 + 24))(a2, a3);
  (*(a4 + 8))(a1, AssociatedTypeWitness, a4);
  (*(v12 + 8))(v15, AssociatedTypeWitness);
  return (*(a3 + 32))(v17, a2, a3);
}

uint64_t ConfigurableQueryDescriptor<>.sortAscending()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(*(a1 - 8) + 16))(a4, v4, a1);
  (*(a2 + 24))(a1, a2);
  (*(a3 + 8))(AssociatedTypeWitness, a3);
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  return (*(a2 + 32))(v15, a1, a2);
}

uint64_t ConfigurableQueryDescriptor<>.sortDescending()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(*(a1 - 8) + 16))(a4, v4, a1);
  (*(a2 + 24))(a1, a2);
  (*(a3 + 16))(AssociatedTypeWitness, a3);
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  return (*(a2 + 32))(v15, a1, a2);
}

uint64_t ConfigurableQueryDescriptor<>.withOptions(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(*(a2 - 8) + 16))(a5, v5, a2);
  (*(a3 + 24))(a2, a3);
  (*(a4 + 24))(a1, AssociatedTypeWitness, a4);
  (*(v12 + 8))(v15, AssociatedTypeWitness);
  return (*(a3 + 32))(v17, a2, a3);
}

id sub_191C92D2C(SEL *a1)
{
  result = [v1 *a1];
  v3 = result;
  if (result)
  {
    [result doubleValue];
    v5 = v4;

    return v5;
  }

  return result;
}

id HKMedicationDoseEvent.init(logOrigin:scheduleItemIdentifier:medicationIdentifier:scheduledDoseQuantity:doseQuantity:scheduledDate:start:logStatus:doseUnitString:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v43 = a1;
  sub_191C47DA4(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v42 = sub_191CC6778();
  }

  else
  {
    v42 = 0;
  }

  v40 = sub_191CC6778();

  if (a7)
  {
    v39 = 0;
    v20 = a11;
    if ((a9 & 1) == 0)
    {
LABEL_6:
      v38 = sub_191CC6B08();
      goto LABEL_9;
    }
  }

  else
  {
    v39 = sub_191CC6B08();
    v20 = a11;
    if ((a9 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v38 = 0;
LABEL_9:
  v44 = a10;
  sub_191C18FCC(a10, v19);
  v21 = sub_191CC6148();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v19, 1, v21) != 1)
  {
    v23 = sub_191CC60A8();
    (*(v22 + 8))(v19, v21);
  }

  v37 = v21;
  v41 = v20;
  v24 = sub_191CC60A8();
  if (!a14)
  {
    v25 = 0;
    v26 = a12;
    if (a15)
    {
      goto LABEL_13;
    }

LABEL_15:
    v27 = 0;
    goto LABEL_16;
  }

  v25 = sub_191CC6778();

  v26 = a12;
  if (!a15)
  {
    goto LABEL_15;
  }

LABEL_13:
  v27 = sub_191CC6638();

LABEL_16:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = v26;
  v29 = v42;
  v31 = v39;
  v30 = v40;
  v32 = v38;
  v33 = [ObjCClassFromMetadata medicationDoseEventWithLogOrigin:v43 scheduleItemIdentifier:v42 medicationIdentifier:v40 scheduledDoseQuantity:v39 doseQuantity:v38 scheduledDate:v23 startDate:v24 logStatus:v35 doseUnitString:v25 metadata:v27];

  (*(v22 + 8))(v41, v37);
  sub_191C2CC84(v44);
  return v33;
}

id HKSourceQueryDescriptor.predicate.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  *a1 = *v1;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

void HKSourceQueryDescriptor.predicate.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t HKSourceQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
}

__n128 HKSourceQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  v1[1] = v4;
  v1[2].n128_u64[0] = v2;
  return result;
}

uint64_t *HKSourceQueryDescriptor.init(predicate:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = -1;
  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t HKSourceQueryDescriptor.result(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = a2;
  v4 = *(v2 + 16);
  *(v3 + 80) = *v2;
  *(v3 + 96) = v4;
  *(v3 + 112) = *(v2 + 32);
  v5 = *(v3 + 88);
  *(v3 + 144) = *(v3 + 80);
  *(v3 + 152) = v5;
  return MEMORY[0x1EEE6DFA0](sub_191C931C8, 0, 0);
}

uint64_t sub_191C931C8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v0[2] = v0;
  v0[7] = v0 + 15;
  v0[3] = sub_191C9328C;
  v4 = swift_continuation_init();
  sub_191C933CC(v4, v2, v1, v3, (v0 + 10));

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_191C9328C(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v1 + 120);
    v6 = *(v2 + 8);

    return v6(v5);
  }
}

void sub_191C933CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a1;
  v11 = objc_allocWithZone(HKSourceQuery);
  v21 = sub_191C9381C;
  v22 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v19 = sub_191C93824;
  v20 = &block_descriptor_23;
  v12 = _Block_copy(&aBlock);
  v13 = a4;
  v14 = [v11 initWithSampleType:a2 samplePredicate:a3 completionHandler:v12];
  _Block_release(v12);

  aBlock = *(a5 + 16);
  v19 = *(a5 + 32);
  v15 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    sub_191BFC340(&aBlock, v17);
    v15 = sub_191CC6778();
  }

  v16 = v19;
  [v14 setDebugIdentifier_];

  [v14 setQualityOfService_];
  sub_191BFC2EC(&aBlock);
  [v13 executeQuery_];
}

uint64_t sub_191C93570(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = sub_191C93ACC(a2);

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFC39C();
      sub_191CC5FA8();
      v9 = v12;
    }

    sub_191BF92E0();
    swift_allocError();
    *v10 = v9;
    v11 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_191C93690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_191BFBFE4;

  return HKSourceQueryDescriptor.result(for:)(a2, a3);
}

uint64_t sub_191C93738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191C93774(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_191C937BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_191C93824(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_191BFAE6C(0, &qword_1EADCAA30, off_1E7375580);
    sub_191C93900();
    v5 = sub_191CC6B38();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_191C93900()
{
  result = qword_1EADCAA38;
  if (!qword_1EADCAA38)
  {
    sub_191BFAE6C(255, &qword_1EADCAA30, off_1E7375580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAA38);
  }

  return result;
}

void *sub_191C93968(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_191C93B7C();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_191C939E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_191C93B7C();
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_191C93ACC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_191CC6EE8();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_191C93968(v2, 0);

    v1 = sub_191C03564(&v5, v3 + 4, v2, v1);
    sub_191C8F378(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_191C93B7C()
{
  if (!qword_1EADCD520[0])
  {
    v0 = sub_191CC73A8();
    if (!v1)
    {
      atomic_store(v0, qword_1EADCD520);
    }
  }
}

uint64_t TypeDomain.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_191CC71B8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_191C93C44@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_191CC71B8();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_191C93CB8()
{
  sub_191CC74C8();
  sub_191CC67E8();
  return sub_191CC7508();
}

uint64_t sub_191C93D2C(uint64_t a1)
{
  sub_191CC74C8();
  sub_191CC67E8();
  return sub_191CC7508();
}

BOOL static TypeIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_191CC73E8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_191C93E8C()
{
  if (*v0)
  {
    return 1701080931;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_191C93EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

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

uint64_t sub_191C93F94(uint64_t a1)
{
  v2 = sub_191C9418C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C93FD0(uint64_t a1)
{
  v2 = sub_191C9418C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TypeIdentifier.encode(to:)(void *a1)
{
  sub_191C945C0(0, &qword_1EADCD2C0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v10[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C9418C();
  sub_191CC7548();
  v12 = 0;
  v8 = v10[1];
  sub_191CC7308();
  if (!v8)
  {
    v11 = 1;
    sub_191CC7338();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_191C9418C()
{
  result = qword_1EADCD2C8;
  if (!qword_1EADCD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD2C8);
  }

  return result;
}

uint64_t TypeIdentifier.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_191CC67E8();
  return MEMORY[0x193B02C70](v2);
}

uint64_t TypeIdentifier.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_191CC74C8();
  sub_191CC67E8();
  MEMORY[0x193B02C70](v1);
  return sub_191CC7508();
}

uint64_t TypeIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_191C945C0(0, &qword_1EADCD2D0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C9418C();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v18 = 0;
  v10 = sub_191CC7228();
  v12 = v11;
  v13 = v10;
  v17 = 1;
  v14 = sub_191CC7258();
  (*(v7 + 8))(v9, v6);
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

BOOL sub_191C94468(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_191CC73E8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_191C944C4()
{
  v1 = *(v0 + 16);
  sub_191CC74C8();
  sub_191CC67E8();
  MEMORY[0x193B02C70](v1);
  return sub_191CC7508();
}

uint64_t sub_191C94528(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_191CC67E8();
  return MEMORY[0x193B02C70](v2);
}

uint64_t sub_191C94560(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_191CC74C8();
  sub_191CC67E8();
  MEMORY[0x193B02C70](v2);
  return sub_191CC7508();
}

void sub_191C945C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_191C9418C();
    v7 = a3(a1, &type metadata for TypeIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_191C94628()
{
  result = qword_1EADCD2D8;
  if (!qword_1EADCD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD2D8);
  }

  return result;
}

unint64_t sub_191C94680()
{
  result = qword_1EADCD2E0;
  if (!qword_1EADCD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD2E0);
  }

  return result;
}

unint64_t sub_191C94738()
{
  result = qword_1EADCD2E8;
  if (!qword_1EADCD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD2E8);
  }

  return result;
}

unint64_t sub_191C94790()
{
  result = qword_1EADCD2F0;
  if (!qword_1EADCD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD2F0);
  }

  return result;
}

unint64_t sub_191C947E8()
{
  result = qword_1EADCD2F8;
  if (!qword_1EADCD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD2F8);
  }

  return result;
}

unint64_t sub_191C9483C()
{
  result = qword_1EADCD300;
  if (!qword_1EADCD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD300);
  }

  return result;
}

id static HKSamplePredicate.gad7Assessment(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(HKScoredAssessmentType) initWithIdentifier_];
  if (result)
  {
    *a2 = result;
    a2[1] = a1;

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKGAD7Assessment.init(date:answers:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191CC60A8();
  v7 = *(a2 + 16);
  if (v7)
  {
    sub_191CC7098();
    v8 = 32;
    do
    {
      sub_191CC6B98();
      sub_191CC7068();
      sub_191CC70A8();
      sub_191CC70B8();
      sub_191CC7078();
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  sub_191C94AC4();
  v9 = sub_191CC68D8();

  if (a3)
  {
    v10 = sub_191CC6638();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDate:v6 answers:v9 metadata:v10];

  v12 = sub_191CC6148();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

unint64_t sub_191C94AC4()
{
  result = qword_1EADCD140;
  if (!qword_1EADCD140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCD140);
  }

  return result;
}

char *HKGAD7Assessment.answers.getter()
{
  v1 = [v0 answers];
  sub_191C94AC4();
  v2 = sub_191CC68E8();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_191CC6EE8())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193B02790](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_191C07C78(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_191C07C78((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v9;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v5;
}

void HKObjectType.hk_pinnedContentIdentifier.getter()
{
  v1 = [objc_opt_self() sharedBehavior];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 features];

    if (v3)
    {
      v4 = [v3 sleepDetails];

      if (v4)
      {
        v5 = [v0 code];
        if (v5 == 341)
        {
          strcpy(v7, "HKObjectType_");
          v7[7] = -4864;
          goto LABEL_7;
        }

        if (v5 == 63)
        {
          return;
        }
      }

      strcpy(v7, "HKObjectType_");
      v7[7] = -4864;
      [v0 code];
LABEL_7:
      v6 = sub_191CC7398();
      MEMORY[0x193B01F90](v6);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t DateInterval.hk_union(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[3] = a1;
  v32 = a2;
  v2 = sub_191CC6148();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v30 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v31 = v30 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v30 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v30 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v30 - v18;
  v30[1] = v30 - v18;
  sub_191CC5CE8();
  sub_191CC5CE8();
  sub_191C95070();
  v20 = sub_191CC66F8();
  v21 = *(v3 + 8);
  v22 = (v20 & 1) == 0;
  if (v20)
  {
    v23 = v17;
  }

  else
  {
    v23 = v14;
  }

  if (!v22)
  {
    v17 = v14;
  }

  v21(v23, v2);
  v24 = *(v3 + 32);
  v24(v19, v17, v2);
  sub_191CC5CB8();
  sub_191CC5CB8();
  v25 = sub_191CC6708();
  v26 = (v25 & 1) == 0;
  if (v25)
  {
    v27 = v9;
  }

  else
  {
    v27 = v6;
  }

  if (v26)
  {
    v28 = v9;
  }

  else
  {
    v28 = v6;
  }

  v21(v27, v2);
  v24(v31, v28, v2);
  return sub_191CC5CC8();
}

unint64_t sub_191C95070()
{
  result = qword_1EADCAE28;
  if (!qword_1EADCAE28)
  {
    sub_191CC6148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAE28);
  }

  return result;
}

id HKWorkoutMetricsDataSourceConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void *HKWorkoutMetricsDataSourceConfiguration.init(coder:)(void *a1)
{
  v2 = v1;
  sub_191C95298();
  result = sub_191CC6D88();
  if (result)
  {
    *&v2[OBJC_IVAR____TtC9HealthKit39HKWorkoutMetricsDataSourceConfiguration_workoutConfiguration] = result;
    v6.receiver = v2;
    v6.super_class = type metadata accessor for HKWorkoutMetricsDataSourceConfiguration();
    v5 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

    if (v5)
    {
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_191C95298()
{
  result = qword_1EADCD310;
  if (!qword_1EADCD310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCD310);
  }

  return result;
}

id HKWorkoutMetricsDataSourceConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HKWorkoutMetricsDataSourceConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HKWorkoutMetricsDataSourceConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_191C953FC(uint64_t a1)
{
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_191CC6EE8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_191C07F84(0, v2 & ~(v2 >> 63), 0);
    v29 = v34;
    if (v28)
    {
      v3 = sub_191CC6E98();
    }

    else
    {
      v3 = sub_191CC6E68();
      v4 = *(a1 + 36);
    }

    v31 = v3;
    v32 = v4;
    v33 = v28 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v27 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v31;
        v9 = v32;
        v10 = v33;
        sub_191C95804(v31, v32, v33, a1);
        v12 = v11;
        v13 = [v11 integerValue];

        v14 = v29;
        v34 = v29;
        v16 = *(v29 + 16);
        v15 = *(v29 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_191C07F84((v15 > 1), v16 + 1, 1);
          v14 = v34;
        }

        *(v14 + 16) = v16 + 1;
        *(v14 + 8 * v16 + 32) = v13;
        v29 = v14;
        if (v28)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          if (sub_191CC6EB8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          sub_191C96310(0);
          v6 = sub_191CC6B58();
          sub_191CC6F38();
          v6(v30, 0);
          if (v5 == v27)
          {
LABEL_32:
            sub_19198D53C(v31, v32, v33);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v17 = 1 << *(a1 + 32);
          if (v8 >= v17)
          {
            goto LABEL_36;
          }

          v18 = v8 >> 6;
          v19 = *(a1 + 56 + 8 * (v8 >> 6));
          if (((v19 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v9)
          {
            goto LABEL_38;
          }

          v20 = v19 & (-2 << (v8 & 0x3F));
          if (v20)
          {
            v17 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v21 = v18 << 6;
            v22 = v18 + 1;
            v23 = (a1 + 64 + 8 * v18);
            while (v22 < (v17 + 63) >> 6)
            {
              v25 = *v23++;
              v24 = v25;
              v21 += 64;
              ++v22;
              if (v25)
              {
                sub_19198D53C(v8, v9, 0);
                v17 = __clz(__rbit64(v24)) + v21;
                goto LABEL_31;
              }
            }

            sub_19198D53C(v8, v9, 0);
          }

LABEL_31:
          v26 = *(a1 + 36);
          v31 = v17;
          v32 = v26;
          v33 = 0;
          v2 = v27;
          if (v5 == v27)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t static HKCategoryValueSleepAnalysis.allAsleepValues.getter()
{
  v0 = HKCategoryValueSleepAnalysisAsleepValues();
  sub_191C94AC4();
  sub_191C962C8(&qword_1EADCC7E0, sub_191C94AC4, MEMORY[0x1E69E81B8]);
  v1 = sub_191CC6B38();

  sub_191C953FC(v1);
  v3 = v2;

  v4 = sub_191C7B4D8(v3);

  return v4;
}

void sub_191C95804(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x193B026A0](a1, a2, v7);
      sub_191C94AC4();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_191C94AC4();
    if (sub_191CC6EC8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_191CC6ED8();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_191CC6D98();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_191CC6DA8();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_191C95A04(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD318, type metadata accessor for HKCategoryValue, &unk_191DD041C);
  result = sub_191C962C8(&qword_1EADCD320, type metadata accessor for HKCategoryValue, &unk_191DD03E0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95A88(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD328, type metadata accessor for HKCategoryValueAppetiteChanges, &unk_191DD039C);
  result = sub_191C962C8(&qword_1EADCD330, type metadata accessor for HKCategoryValueAppetiteChanges, &unk_191DD0360);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95B0C(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD338, type metadata accessor for HKCategoryValueAppleStandHour, &unk_191DD031C);
  result = sub_191C962C8(&qword_1EADCD340, type metadata accessor for HKCategoryValueAppleStandHour, &unk_191DD02E0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95B90(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD348, type metadata accessor for HKCategoryValueAppleWalkingSteadinessEvent, &unk_191DD029C);
  result = sub_191C962C8(&qword_1EADCD350, type metadata accessor for HKCategoryValueAppleWalkingSteadinessEvent, &unk_191DD0260);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95C14(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD358, type metadata accessor for HKCategoryValueCervicalMucusQuality, &unk_191DD021C);
  result = sub_191C962C8(&qword_1EADCD360, type metadata accessor for HKCategoryValueCervicalMucusQuality, &unk_191DD01E0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95C98(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD368, type metadata accessor for HKCategoryValueContraceptive, &unk_191DD019C);
  result = sub_191C962C8(&qword_1EADCD370, type metadata accessor for HKCategoryValueContraceptive, &unk_191DD0160);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95D1C(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD378, type metadata accessor for HKCategoryValueEnvironmentalAudioExposureEvent, &unk_191DD011C);
  result = sub_191C962C8(&qword_1EADCD380, type metadata accessor for HKCategoryValueEnvironmentalAudioExposureEvent, &unk_191DD00E0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95DA0(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD388, type metadata accessor for HKCategoryValueHeadphoneAudioExposureEvent, &unk_191DD009C);
  result = sub_191C962C8(&qword_1EADCD390, type metadata accessor for HKCategoryValueHeadphoneAudioExposureEvent, &unk_191DD0060);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95E24(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD398, type metadata accessor for HKCategoryValueLowCardioFitnessEvent, &unk_191DD001C);
  result = sub_191C962C8(&qword_1EADCD3A0, type metadata accessor for HKCategoryValueLowCardioFitnessEvent, &unk_191DCFFE0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95EA8(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD3A8, type metadata accessor for HKCategoryValueMenstrualFlow, &unk_191DCFF9C);
  result = sub_191C962C8(&qword_1EADCD3B0, type metadata accessor for HKCategoryValueMenstrualFlow, &unk_191DCFF60);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95F2C(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD3B8, type metadata accessor for HKCategoryValueOvulationTestResult, &unk_191DCFF1C);
  result = sub_191C962C8(&qword_1EADCD3C0, type metadata accessor for HKCategoryValueOvulationTestResult, &unk_191DCFEE0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95FB0(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD3C8, type metadata accessor for HKCategoryValuePregnancyTestResult, &unk_191DCFE9C);
  result = sub_191C962C8(&qword_1EADCD3D0, type metadata accessor for HKCategoryValuePregnancyTestResult, &unk_191DCFE60);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C96034(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD3D8, type metadata accessor for HKCategoryValuePresence, &unk_191DCFE1C);
  result = sub_191C962C8(&qword_1EADCD3E0, type metadata accessor for HKCategoryValuePresence, &unk_191DCFDE0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C960B8(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD3E8, type metadata accessor for HKCategoryValueProgesteroneTestResult, &unk_191DCFD9C);
  result = sub_191C962C8(&qword_1EADCD3F0, type metadata accessor for HKCategoryValueProgesteroneTestResult, &unk_191DCFD60);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C9613C(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD3F8, type metadata accessor for HKCategoryValueSeverity, &unk_191DCFD1C);
  result = sub_191C962C8(&qword_1EADCD400, type metadata accessor for HKCategoryValueSeverity, &unk_191DCFCE0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C961C0(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCC7F0, type metadata accessor for HKCategoryValueSleepAnalysis, &unk_191DCFC9C);
  result = sub_191C962C8(&qword_1EADCD408, type metadata accessor for HKCategoryValueSleepAnalysis, &unk_191DCFC60);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C96244(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD410, type metadata accessor for HKCategoryValueVaginalBleeding, &unk_191DCFC1C);
  result = sub_191C962C8(&qword_1EADCD418, type metadata accessor for HKCategoryValueVaginalBleeding, &unk_191DCFBE0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C962C8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_191C96310(uint64_t a1)
{
  if (!qword_1EADCD420[0])
  {
    sub_191C94AC4();
    sub_191C962C8(&qword_1EADCC7E0, sub_191C94AC4, MEMORY[0x1E69E81B8]);
    v1 = sub_191CC6B68();
    if (!v2)
    {
      atomic_store(v1, qword_1EADCD420);
    }
  }
}

uint64_t HKQueryAsyncStream.makeAsyncIterator()(uint64_t a1)
{
  sub_191BF92E0();
  sub_191CC6AE8();

  return sub_191CC6AB8();
}

uint64_t HKQueryAsyncStream.init(healthStore:queryBuilder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_191BF92E0();
  v8 = sub_191CC6A78();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = a4;
  v13 = a2;
  v14 = a3;
  v15 = a1;
  sub_191C965EC(&v11[-v9]);
  sub_191CC6AF8();
}

void sub_191C964F0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2();
  v8 = swift_allocObject();
  v8[2] = a5;
  v8[3] = a4;
  v8[4] = v7;
  sub_191BF92E0();
  sub_191CC6AA8();
  v9 = a4;
  v10 = v7;
  sub_191CC6A68();
  [v9 executeQuery_];
}

uint64_t sub_191C965EC@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8790];
  sub_191BF92E0();
  v4 = sub_191CC6A78();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_191C966A0(uint64_t a1)
{
  HKQueryAsyncStream.makeAsyncIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t sub_191C96700(uint64_t a1)
{
  sub_191BF92E0();
  result = sub_191CC6AE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Bool_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKKeyValueDomain.BOOL(for:)(Swift::String a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = sub_191CC6778();
  v10[0] = 0;
  v3 = [v1 _numberWithErrorNoDataForKey_error_];

  if (v3)
  {
    v4 = v10[0];
    LOBYTE(v5) = [v3 BOOLValue];
  }

  else
  {
    v6 = v10[0];
    v7 = sub_191CC5FC8();

    swift_willThrow();
    v8 = sub_191CC5FB8();
    v5 = [v8 hk:11 isHealthKitErrorWithCode:?];

    if (v5)
    {

      LOBYTE(v5) = 2;
    }

    else
    {
      swift_willThrow();
    }
  }

  return v5;
}

void *HKKeyValueDomain.data(for:)(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = sub_191CC6778();
  v11[0] = 0;
  v4 = [v2 _dataWithErrorNoDataForKey_error_];

  v5 = v11[0];
  if (v4)
  {
    v6 = sub_191CC6048();
  }

  else
  {
    v7 = v5;
    v8 = sub_191CC5FC8();

    swift_willThrow();
    v6 = sub_191CC5FB8();
    v9 = [v6 hk:11 isHealthKitErrorWithCode:?];

    if (v9)
    {

      return 0;
    }

    else
    {
      swift_willThrow();
    }
  }

  return v6;
}

void HKKeyValueDomain.date(for:)(uint64_t a3@<X8>)
{
  v4 = v3;
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = sub_191CC6778();
  v16[0] = 0;
  v7 = [v4 _dateWithErrorNoDataForKey_error_];

  v8 = v16[0];
  if (v7)
  {
    sub_191CC60F8();
    v9 = v8;

    v10 = sub_191CC6148();
    (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
  }

  else
  {
    v11 = v16[0];
    v12 = sub_191CC5FC8();

    swift_willThrow();
    v13 = sub_191CC5FB8();
    v14 = [v13 hk:11 isHealthKitErrorWithCode:?];

    if (v14)
    {
      v15 = sub_191CC6148();
      (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
    }

    else
    {
      swift_willThrow();
    }
  }
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKKeyValueDomain.integer(for:)(Swift::String a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = sub_191CC6778();
  v10[0] = 0;
  v3 = [v1 _numberWithErrorNoDataForKey_error_];

  if (v3)
  {
    v4 = v10[0];
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = v10[0];
    v7 = sub_191CC5FC8();

    swift_willThrow();
    v5 = sub_191CC5FB8();
    LODWORD(v6) = [v5 hk:11 isHealthKitErrorWithCode:?];

    if (!v6)
    {
      swift_willThrow();
      goto LABEL_6;
    }

    v5 = 0;
  }

  v8 = v3 == 0;
LABEL_6:
  v9 = v5;
  result.value = v9;
  result.is_nil = v8;
  return result;
}

NSNumber_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKKeyValueDomain.number(for:)(Swift::String a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_191CC6778();
  v11[0] = 0;
  v3 = [v1 _numberWithErrorNoDataForKey_error_];

  v4 = v11[0];
  if (!v3)
  {
    v6 = v4;
    v7 = sub_191CC5FC8();

    swift_willThrow();
    v8 = sub_191CC5FB8();
    v9 = [v8 hk:11 isHealthKitErrorWithCode:?];

    if (v9)
    {

      v3 = 0;
    }

    else
    {
      swift_willThrow();
    }
  }

  v10 = v3;
  result.value.super.super.isa = v10;
  result.is_nil = v5;
  return result;
}

void HKKeyValueDomain.propertyListValue(for:)(_OWORD *a3@<X8>)
{
  v4 = v3;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = sub_191CC6778();
  v13[0] = 0;
  v7 = [v4 _propertyListValueWithErrorNoDataForKey_error_];

  v8 = v13[0];
  if (v7)
  {
    sub_191CC6E18();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = v8;
    v10 = sub_191CC5FC8();

    swift_willThrow();
    v11 = sub_191CC5FB8();
    v12 = [v11 hk:11 isHealthKitErrorWithCode:?];

    if (v12)
    {
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      swift_willThrow();
    }
  }
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKKeyValueDomain.string(for:)(Swift::String a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = sub_191CC6778();
  v14[0] = 0;
  v3 = [v1 _stringWithErrorNoDataForKey_error_];

  v4 = v14[0];
  if (v3)
  {
    v5 = sub_191CC67B8();
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v9 = v14[0];
    v10 = sub_191CC5FC8();

    swift_willThrow();
    v5 = sub_191CC5FB8();
    v7 = [v5 hk:11 isHealthKitErrorWithCode:?];

    if (v7)
    {

      v5 = 0;
      v7 = 0;
    }

    else
    {
      swift_willThrow();
    }
  }

  v11 = v5;
  v12 = v7;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKKeyValueDomain.setBool(_:forKey:)(Swift::Bool_optional _, Swift::String forKey)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (_.value == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v4 = sub_191CC6778();
  v8[0] = 0;
  v5 = [v2 setNumber:v3 forKey:v4 error:v8];

  if (v5)
  {
    v6 = v8[0];
  }

  else
  {
    v7 = v8[0];
    sub_191CC5FC8();

    swift_willThrow();
  }
}

void HKKeyValueDomain.setBool(_:forKey:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v9 = sub_191CC6778();
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_191C97268;
  v11[3] = &block_descriptor_24;
  v10 = _Block_copy(v11);

  [v5 setNumber:v8 forKey:v9 completion:v10];
  _Block_release(v10);
}

void sub_191C97268(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKKeyValueDomain.setInteger(_:forKey:)(Swift::Int_optional _, Swift::String forKey)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (_.is_nil)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  v4 = sub_191CC6778();
  v8[0] = 0;
  v5 = [v2 setNumber:v3 forKey:v4 error:v8];

  if (v5)
  {
    v6 = v8[0];
  }

  else
  {
    v7 = v8[0];
    sub_191CC5FC8();

    swift_willThrow();
  }
}

void HKKeyValueDomain.setInteger(_:forKey:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  v10 = sub_191CC6778();
  v12[4] = a5;
  v12[5] = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_191C97268;
  v12[3] = &block_descriptor_3_1;
  v11 = _Block_copy(v12);

  [v6 setNumber:v9 forKey:v10 completion:v11];
  _Block_release(v11);
}

id HKUserAnnotatedMedicationQueryDescriptor.predicate.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t HKUserAnnotatedMedicationQueryDescriptor.limit.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t HKUserAnnotatedMedicationQueryDescriptor.init(predicate:limit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

uint64_t HKUserAnnotatedMedicationQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = *v1;
  *(v2 + 160) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_191C97614, 0, 0);
}

uint64_t sub_191C97614()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 128;
  *(v0 + 24) = sub_191BFFBF4;
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v9 = objc_allocWithZone(HKUserAnnotatedMedicationQuery);
  *(v0 + 112) = sub_191C97950;
  *(v0 + 120) = v8;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_191C69AD0;
  *(v0 + 104) = &block_descriptor_25;
  v10 = _Block_copy((v0 + 80));

  v11 = [v9 initWithPredicate:v2 limit:v7 resultsHandler:v10];
  _Block_release(v10);

  [v4 executeQuery_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

void sub_191C977E8(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    sub_191BF92E0();
    swift_allocError();
    *v8 = a4;
    v9 = a4;

    swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      v11 = a3;
      swift_beginAccess();
      v13 = a2;
      MEMORY[0x193B02060]();
      if (*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_191CC6908();
      }

      sub_191CC6948();
      swift_endAccess();
      a3 = v11;
    }

    if (a3)
    {
      swift_beginAccess();
      **(*(a5 + 64) + 40) = *(a6 + 16);

      swift_continuation_throwingResume();
    }
  }
}

uint64_t sub_191C97958(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_191BFBFE4;

  return HKUserAnnotatedMedicationQueryDescriptor.result(for:)(a2);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_191C97A08(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_191C97A64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_191C97DF8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t HKSleepDaySummaryQueryOptions.init(from:)(void *a1)
{
  OptionsFromStringRepresentation = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7518();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_191CC73F8();
    v5 = sub_191CC6778();

    OptionsFromStringRepresentation = HKMakeSleepDaySummaryQueryOptionsFromStringRepresentation(v5);

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return OptionsFromStringRepresentation;
}

uint64_t HKSleepDaySummaryQueryOptions.encode(to:)(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7538();
  v3 = HKSleepDaySummaryQueryOptionsStringRepresentation(a2);
  sub_191CC67B8();

  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_191CC7408();

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_191C98038@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7518();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  sub_191CC73F8();
  v5 = sub_191CC6778();

  OptionsFromStringRepresentation = HKMakeSleepDaySummaryQueryOptionsFromStringRepresentation(v5);

  __swift_destroy_boxed_opaque_existential_0(v8);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = OptionsFromStringRepresentation;
  return result;
}

uint64_t sub_191C98120(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7538();
  v3 = HKSleepDaySummaryQueryOptionsStringRepresentation(v2);
  sub_191CC67B8();

  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_191CC7408();

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t HKWorkoutMetricsDataSource.delegate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock);
  os_unfair_lock_lock(v1 + 4);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v1 + 4);
  return Strong;
}

uint64_t HKWorkoutMetricsDataSource.delegate.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock);
  os_unfair_lock_lock(v2 + 4);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v2 + 4);

  return swift_unknownObjectRelease();
}

void sub_191C983B4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock;
  os_unfair_lock_lock((*(*a1 + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock) + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock((*(v3 + v4) + 16));
  *a2 = Strong;
}

void sub_191C98418(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock;
  os_unfair_lock_lock((*(*a2 + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock) + 16));
  swift_unknownObjectWeakAssign();
  v4 = (*(v2 + v3) + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t (*HKWorkoutMetricsDataSource.delegate.modify(uint64_t *a1))()
{
  v3 = *(v1 + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock);
  a1[1] = v1;
  a1[2] = v3;
  os_unfair_lock_lock(v3 + 4);
  a1[3] = OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource__delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v3 + 4);
  *a1 = Strong;
  return sub_191C98504;
}

uint64_t sub_191C98504(void *a1, char a2)
{
  v2 = a1[2];
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v2 + 4);
    swift_unknownObjectWeakAssign();
    os_unfair_lock_unlock(v2 + 4);
    swift_unknownObjectRelease();
  }

  else
  {
    os_unfair_lock_lock(v2 + 4);
    swift_unknownObjectWeakAssign();
    os_unfair_lock_unlock(v2 + 4);
  }

  return swift_unknownObjectRelease();
}

id sub_191C98594()
{
  v1 = OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource____lazy_storage___proxyProvider;
  v2 = *&v0[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource____lazy_storage___proxyProvider];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource____lazy_storage___proxyProvider];
  }

  else
  {
    swift_getObjectType();
    v4 = *&v0[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_healthStore];
    sub_191CC76A8();
    v5 = objc_allocWithZone(HKTaskServerProxyProvider);
    v6 = v0;
    v7 = sub_191CC6778();

    v8 = v0;
    v9 = sub_191CC6168();
    v10 = [v5 initWithHealthStore:v4 taskIdentifier:v7 exportedObject:v6 taskUUID:v9];

    v11 = *&v8[v1];
    *&v8[v1] = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

char *HKWorkoutMetricsDataSource.init(healthStore:configuration:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_191CC61A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock;
  sub_191C8AEF0(0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v3[v11] = v12;
  *&v3[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource____lazy_storage___proxyProvider] = 0;
  sub_191CC6198();
  (*(v8 + 32))(&v3[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_uuid], v10, v7);
  *&v3[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_healthStore] = a1;
  *&v3[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_workoutConfiguration] = a2;
  v35.receiver = v3;
  v35.super_class = ObjectType;
  v13 = a1;
  v14 = a2;
  v15 = objc_msgSendSuper2(&v35, sel_init);
  v16 = sub_191C98594();
  v17 = type metadata accessor for HKWorkoutMetricsDataSourceConfiguration();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC9HealthKit39HKWorkoutMetricsDataSourceConfiguration_workoutConfiguration] = v14;
  v34.receiver = v18;
  v34.super_class = v17;
  v19 = v14;
  v20 = objc_msgSendSuper2(&v34, sel_init);
  [v16 setTaskConfiguration_];

  v21 = *&v15[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource____lazy_storage___proxyProvider];
  v22 = swift_allocObject();
  *(v22 + 16) = ObjectType;
  v32 = sub_191C98A4C;
  v33 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_191C707AC;
  v31 = &block_descriptor_26;
  v23 = _Block_copy(&aBlock);
  v24 = v21;

  v25 = swift_allocObject();
  *(v25 + 16) = ObjectType;
  v32 = sub_191C98A84;
  v33 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_191C7081C;
  v31 = &block_descriptor_6_1;
  v26 = _Block_copy(&aBlock);

  [v24 fetchProxyWithHandler:v23 errorHandler:v26];
  _Block_release(v26);
  _Block_release(v23);

  return v15;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall HKWorkoutMetricsDataSource.clientRemote_didReceiveMetrics(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_191CC6378();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_191CC63A8();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EADCA190 != -1)
  {
    swift_once();
  }

  v10 = sub_191CC6348();
  __swift_project_value_buffer(v10, qword_1EADCD020);

  v11 = sub_191CC6328();
  v12 = sub_191CC6CB8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136446466;
    v16 = sub_191CC76A8();
    v18 = sub_191C3B288(v16, v17, aBlock);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = type metadata accessor for HKWorkoutMetric();
    v20 = MEMORY[0x193B02090](a1._rawValue, v19);
    v22 = sub_191C3B288(v20, v21, aBlock);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_19197B000, v11, v12, "%{public}s Sending metrics to client %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B047C0](v15, -1, -1);
    v23 = v14;
    v4 = v29;
    MEMORY[0x193B047C0](v23, -1, -1);
  }

  v24 = [*&v2[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_healthStore] clientQueue];
  v25 = swift_allocObject();
  v25[2]._rawValue = v2;
  v25[3]._rawValue = a1._rawValue;
  aBlock[4] = sub_191C98FD4;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C910B0;
  aBlock[3] = &block_descriptor_12;
  v26 = _Block_copy(aBlock);

  v27 = v2;
  sub_191CC6388();
  v33 = MEMORY[0x1E69E7CC0];
  sub_191C98FDC();
  sub_191C9A1AC(0, &qword_1EADCD090, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_191C99034();
  sub_191CC6E58();
  MEMORY[0x193B024A0](0, v9, v6, v26);
  _Block_release(v26);

  (*(v32 + 8))(v6, v4);
  (*(v30 + 8))(v9, v31);
}

void sub_191C98F20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock);
  os_unfair_lock_lock(v2 + 4);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v2 + 4);
  if (Strong)
  {
    type metadata accessor for HKWorkoutMetric();
    v4 = sub_191CC68D8();
    [Strong metricsDidUpdate_];

    swift_unknownObjectRelease();
  }
}

unint64_t sub_191C98FDC()
{
  result = qword_1EADCD088;
  if (!qword_1EADCD088)
  {
    sub_191CC6378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD088);
  }

  return result;
}

unint64_t sub_191C99034()
{
  result = qword_1EADCD098;
  if (!qword_1EADCD098)
  {
    sub_191C9A1AC(255, &qword_1EADCD090, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD098);
  }

  return result;
}

id static HKWorkoutMetricsDataSource.serverInterface.getter()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

uint64_t HKWorkoutMetricsDataSource.identifier()@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_uuid;
  v4 = sub_191CC61A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

NSXPCInterface_optional __swiftcall HKWorkoutMetricsDataSource.remoteInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  v1 = v0;
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

id sub_191C993A0()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

Swift::Void __swiftcall HKWorkoutMetricsDataSource.connectionInterrupted()()
{
  ObjectType = swift_getObjectType();
  v1 = sub_191C98594();
  v2 = swift_allocObject();
  *(v2 + 16) = ObjectType;
  v10 = sub_191C99EE8;
  v11 = v2;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = sub_191C707AC;
  v9 = &block_descriptor_18;
  v3 = _Block_copy(&v6);

  v4 = swift_allocObject();
  *(v4 + 16) = ObjectType;
  v10 = sub_191C9A290;
  v11 = v4;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = sub_191C7081C;
  v9 = &block_descriptor_24_0;
  v5 = _Block_copy(&v6);

  [v1 fetchProxyWithHandler:v3 errorHandler:v5];
  _Block_release(v5);
  _Block_release(v3);
}

uint64_t sub_191C99574(void *a1, uint64_t a2, uint64_t a3)
{
  sub_191C00E88(a1, &v11);
  sub_191C9A070();
  if (swift_dynamicCast())
  {
    [v10[1] remote_registerSession];
    return swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_191CC6FC8();

    v11 = 91;
    v12 = 0xE100000000000000;
    v5 = sub_191CC76A8();
    MEMORY[0x193B01F90](v5);

    MEMORY[0x193B01F90](0xD00000000000001FLL, 0x8000000191D2F240);
    v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    MEMORY[0x1EEE9AC00](v6);
    (*(v8 + 16))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = sub_191CC67C8();
    MEMORY[0x193B01F90](v9);

    result = sub_191CC7118();
    __break(1u);
  }

  return result;
}

void sub_191C99758(void *a1, uint64_t a2)
{
  if (qword_1EADCA190 != -1)
  {
    swift_once();
  }

  v3 = sub_191CC6348();
  __swift_project_value_buffer(v3, qword_1EADCD020);
  v4 = a1;
  oslog = sub_191CC6328();
  v5 = sub_191CC6CB8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136446466;
    v9 = sub_191CC76A8();
    v11 = sub_191C3B288(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_19197B000, oslog, v5, "%{public}s Error fetching proxy %@", v6, 0x16u);
    sub_191C6E5A8(v7);
    MEMORY[0x193B047C0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x193B047C0](v8, -1, -1);
    MEMORY[0x193B047C0](v6, -1, -1);
  }
}

id HKWorkoutMetricsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HKWorkoutMetricsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_191C99AE4()
{
  v0 = sub_191C9A154();
  if (swift_isClassType() && v0)
  {
    sub_191C9A210(0, qword_1EADCD520, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  }

  else
  {
    sub_191C9A1AC(0, &qword_1EADCD518, sub_191C9A154, MEMORY[0x1E69E6F90]);
  }
}

id _s9HealthKit26HKWorkoutMetricsDataSourceC15clientInterfaceSo14NSXPCInterfaceCvgZ_0()
{
  v15 = [objc_opt_self() interfaceWithProtocol_];
  sub_191C99AE4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD1F40;
  *(inited + 32) = type metadata accessor for HKWorkoutMetric();
  *(inited + 40) = sub_191BFAE6C(0, &qword_1EADCCD30, 0x1E695DEC8);
  *&v19 = MEMORY[0x1E69E7CC0];
  MEMORY[0x193B02060]();
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_getObjCClassFromMetadata();
    sub_191CC6948();

    MEMORY[0x193B02060](v1);
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_191CC6908();
    }

    swift_getObjCClassFromMetadata();
    sub_191CC6948();
    v2 = v19;
    if (!(v19 >> 62))
    {
      v3 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        break;
      }

      goto LABEL_6;
    }

    v3 = sub_191CC6EE8();
    if (!v3)
    {
      break;
    }

LABEL_6:
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x193B02790](v4, v2);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      *&v19 = v6;
      if (swift_dynamicCast())
      {
        if (*(&v17 + 1))
        {
          v19 = v16;
          v20 = v17;
          v21 = v18;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_191C07C98(0, *(v5 + 2) + 1, 1, v5);
          }

          v9 = *(v5 + 2);
          v8 = *(v5 + 3);
          if (v9 >= v8 >> 1)
          {
            v5 = sub_191C07C98((v8 > 1), v9 + 1, 1, v5);
          }

          *(v5 + 2) = v9 + 1;
          v10 = &v5[40 * v9];
          v11 = v19;
          v12 = v20;
          *(v10 + 8) = v21;
          *(v10 + 2) = v11;
          *(v10 + 3) = v12;
          goto LABEL_9;
        }
      }

      else
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
      }

      sub_191C9A0D4(&v16);
LABEL_9:
      ++v4;
      if (v7 == v3)
      {
        goto LABEL_27;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v6 = swift_unknownObjectRetain();
    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_13;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_191CC6908();
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_27:

  sub_191C7B584(v5);

  v13 = sub_191CC6B28();

  [v15 setClasses:v13 forSelector:sel_clientRemote_didReceiveMetrics_ argumentIndex:0 ofReply:0];

  return v15;
}

uint64_t type metadata accessor for HKWorkoutMetricsDataSource(uint64_t a1)
{
  result = qword_1EADCD4E8;
  if (!qword_1EADCD4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_191C99F5C(uint64_t a1)
{
  result = sub_191CC61A8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_191C9A070()
{
  result = qword_1EADCD4F8;
  if (!qword_1EADCD4F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADCD4F8);
  }

  return result;
}

uint64_t sub_191C9A0D4(uint64_t a1)
{
  sub_191C9A210(0, &qword_1EADCD508, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_191C9A154()
{
  result = qword_1EADCD510;
  if (!qword_1EADCD510)
  {
    sub_191BFAE6C(255, &qword_1EADCC5C0, 0x1E69E58C0);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EADCD510);
  }

  return result;
}

void sub_191C9A1AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_191C9A210(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static QuantityThresholds.Edge.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v53 = a2;
  v50 = *(a3 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v46 = &v44 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v44 - v7;
  v51 = v8;
  v54[0] = v8;
  v54[1] = v9;
  v54[2] = v10;
  v54[3] = v11;
  v48 = v11;
  v12 = type metadata accessor for QuantityThresholds.Edge(0, v54);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = *(TupleTypeMetadata2 - 8);
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v26 = &v44 - v25;
  v27 = *(v24 + 48);
  v49 = v13;
  v28 = *(v13 + 16);
  v28(&v44 - v25, v52, v12);
  v28(&v26[v27], v53, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v28(v19, v26, v12);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v16 = v19;
        goto LABEL_13;
      }

      v36 = v50;
      v35 = v51;
      v37 = v46;
      (*(v50 + 32))(v46, &v26[v27], v51);
      v33 = sub_191CC6768();
      v38 = *(v36 + 8);
      v38(v37, v35);
      v38(v19, v35);
    }

    else
    {
      v28(v21, v26, v12);
      if (swift_getEnumCaseMultiPayload())
      {
        v16 = v21;
LABEL_13:
        (*(v50 + 8))(v16, v51);
        goto LABEL_14;
      }

      v40 = v50;
      v39 = v51;
      v41 = v45;
      (*(v50 + 32))(v45, &v26[v27], v51);
      v33 = sub_191CC6768();
      v42 = *(v40 + 8);
      v42(v41, v39);
      v42(v21, v39);
    }

LABEL_17:
    v23 = v49;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v28(v16, v26, v12);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }

    v31 = v50;
    v30 = v51;
    v32 = v47;
    (*(v50 + 32))(v47, &v26[v27], v51);
    v33 = sub_191CC6768();
    v34 = *(v31 + 8);
    v34(v32, v30);
    v34(v16, v30);
    goto LABEL_17;
  }

  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v33 = 1;
    goto LABEL_17;
  }

LABEL_14:
  v33 = 0;
  v12 = TupleTypeMetadata2;
LABEL_18:
  (*(v23 + 8))(v26, v12);
  return v33 & 1;
}

uint64_t sub_191C9A798(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6F6C66 && a2 == 0xE500000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000191D2F320 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000191D2F340 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696C696563 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C9A940(unsigned __int8 a1)
{
  sub_191CC74C8();
  MEMORY[0x193B02C70](a1);
  return sub_191CC7508();
}

unint64_t sub_191C9A988(unsigned __int8 a1)
{
  v1 = 0x726F6F6C66;
  v2 = 0xD000000000000013;
  if (a1 != 2)
  {
    v2 = 0x676E696C696563;
  }

  if (a1)
  {
    v1 = 0xD000000000000013;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_191C9AA08(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_191CC73E8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_191C9AA90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C9AAE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_191C9AB70(uint64_t a1)
{
  sub_191CC74C8();
  sub_191C9A918(v3, *v1);
  return sub_191CC7508();
}

uint64_t sub_191C9ABFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C9AC50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_191C9ACA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C9AA08(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_191C9ACDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C9AD30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_191C9AD84@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_191C2230C();

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_191C9ADD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C9AE28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_191C9AE7C@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_191C9AEBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C9AF10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t QuantityThresholds.Edge.encode(to:)(void *a1, void *a2)
{
  v68 = a1;
  v3 = a2[3];
  v6 = a2[4];
  v5 = a2[5];
  v72 = a2[2];
  v4 = v72;
  v73 = v3;
  v74 = v6;
  v75 = v5;
  v62 = type metadata accessor for QuantityThresholds.Edge.CeilingCodingKeys(255, &v72);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_191CC7378();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v43 - v8;
  v72 = v4;
  v73 = v3;
  v74 = v6;
  v75 = v5;
  v9 = type metadata accessor for QuantityThresholds.Edge.InclusiveUpperBoundCodingKeys(255, &v72);
  v10 = swift_getWitnessTable();
  v57 = v9;
  v55 = v10;
  v11 = sub_191CC7378();
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v43 - v12;
  v72 = v4;
  v73 = v3;
  v74 = v6;
  v75 = v5;
  v13 = type metadata accessor for QuantityThresholds.Edge.ExclusiveUpperBoundCodingKeys(255, &v72);
  v14 = swift_getWitnessTable();
  v52 = v13;
  v50 = v14;
  v54 = sub_191CC7378();
  v53 = *(v54 - 8);
  v15 = MEMORY[0x1EEE9AC00](v54);
  v51 = &v43 - v16;
  v66 = *(v4 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v49 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v47 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v43 - v21;
  v72 = v4;
  v73 = v3;
  v74 = v6;
  v75 = v5;
  type metadata accessor for QuantityThresholds.Edge.FloorCodingKeys(255, &v72);
  v45 = swift_getWitnessTable();
  v46 = sub_191CC7378();
  v44 = *(v46 - 8);
  v22 = MEMORY[0x1EEE9AC00](v46);
  v43 = &v43 - v23;
  v24 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v4;
  v72 = v4;
  v73 = v3;
  v67 = v6;
  v74 = v6;
  v75 = v5;
  type metadata accessor for QuantityThresholds.Edge.CodingKeys(255, &v72);
  swift_getWitnessTable();
  v27 = sub_191CC7378();
  v70 = *(v27 - 8);
  v71 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v43 - v28);
  __swift_project_boxed_opaque_existential_0(v68, v68[3]);
  v68 = v29;
  sub_191CC7548();
  (*(v24 + 16))(v26, v69, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v31 = v65;
    v32 = v66;
    if (EnumCaseMultiPayload)
    {
      v33 = v47;
      (*(v66 + 32))(v47, v26, v65);
      LOBYTE(v72) = 2;
      v34 = v56;
      v35 = v71;
      v36 = v68;
      sub_191CC72B8();
      v37 = v59;
      sub_191CC7348();
      v38 = v58;
    }

    else
    {
      v33 = v48;
      (*(v66 + 32))(v48, v26, v65);
      LOBYTE(v72) = 1;
      v34 = v51;
      v35 = v71;
      v36 = v68;
      sub_191CC72B8();
      v37 = v54;
      sub_191CC7348();
      v38 = v53;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v31 = v65;
    v32 = v66;
    v33 = v49;
    (*(v66 + 32))(v49, v26, v65);
    LOBYTE(v72) = 3;
    v34 = v61;
    v35 = v71;
    v36 = v68;
    sub_191CC72B8();
    v37 = v64;
    sub_191CC7348();
    v38 = v63;
LABEL_7:
    (*(v38 + 8))(v34, v37);
    (*(v32 + 8))(v33, v31);
    return (*(v70 + 8))(v36, v35);
  }

  LOBYTE(v72) = 0;
  v40 = v43;
  v41 = v71;
  v42 = v68;
  sub_191CC72B8();
  (*(v44 + 8))(v40, v46);
  return (*(v70 + 8))(v42, v41);
}

uint64_t QuantityThresholds.Edge.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v4 + 32))(v7, v9, v3);
      v13 = 2;
    }

    else
    {
      (*(v4 + 32))(v7, v9, v3);
      v13 = 1;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v4 + 32))(v7, v9, v3);
    v13 = 3;
LABEL_7:
    MEMORY[0x193B02C70](v13);
    sub_191CC66A8();
    return (*(v4 + 8))(v7, v3);
  }

  return MEMORY[0x193B02C70](0);
}

uint64_t QuantityThresholds.Edge.hashValue.getter(uint64_t a1)
{
  sub_191CC74C8();
  QuantityThresholds.Edge.hash(into:)(v3, a1);
  return sub_191CC7508();
}

uint64_t QuantityThresholds.Edge.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v95 = a6;
  *&v104 = a2;
  *(&v104 + 1) = a3;
  *&v105 = a4;
  *(&v105 + 1) = a5;
  v11 = type metadata accessor for QuantityThresholds.Edge.CeilingCodingKeys(255, &v104);
  WitnessTable = swift_getWitnessTable();
  v92 = v11;
  v80 = sub_191CC72A8();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v93 = &v70 - v12;
  *&v104 = a2;
  *(&v104 + 1) = a3;
  *&v105 = a4;
  *(&v105 + 1) = a5;
  v13 = type metadata accessor for QuantityThresholds.Edge.InclusiveUpperBoundCodingKeys(255, &v104);
  v14 = swift_getWitnessTable();
  v89 = v13;
  v88 = v14;
  v78 = sub_191CC72A8();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v90 = &v70 - v15;
  *&v104 = a2;
  *(&v104 + 1) = a3;
  *&v105 = a4;
  *(&v105 + 1) = a5;
  v16 = type metadata accessor for QuantityThresholds.Edge.ExclusiveUpperBoundCodingKeys(255, &v104);
  v17 = swift_getWitnessTable();
  v86 = v16;
  v85 = v17;
  v76 = sub_191CC72A8();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v87 = &v70 - v18;
  *&v104 = a2;
  *(&v104 + 1) = a3;
  *&v105 = a4;
  *(&v105 + 1) = a5;
  v19 = type metadata accessor for QuantityThresholds.Edge.FloorCodingKeys(255, &v104);
  v20 = swift_getWitnessTable();
  v84 = v19;
  v83 = v20;
  v74 = sub_191CC72A8();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v82 = &v70 - v21;
  *&v104 = a2;
  *(&v104 + 1) = a3;
  *&v105 = a4;
  *(&v105 + 1) = a5;
  type metadata accessor for QuantityThresholds.Edge.CodingKeys(255, &v104);
  v100 = swift_getWitnessTable();
  v22 = sub_191CC72A8();
  v98 = *(v22 - 8);
  v99 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v70 - v23;
  v94 = a2;
  *&v104 = a2;
  *(&v104 + 1) = a3;
  v96 = a3;
  *&v105 = a4;
  *(&v105 + 1) = a5;
  v97 = type metadata accessor for QuantityThresholds.Edge(0, &v104);
  v81 = *(v97 - 8);
  v25 = MEMORY[0x1EEE9AC00](v97);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v70 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v70 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v70 - v34;
  v36 = a1[3];
  v106 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v36);
  v37 = v101;
  sub_191CC7528();
  if (!v37)
  {
    v71 = v33;
    v72 = v30;
    v100 = v27;
    v101 = v35;
    v39 = v98;
    v38 = v99;
    v40 = v24;
    *&v102 = sub_191CC7298();
    sub_191CC6978();
    swift_getWitnessTable();
    *&v104 = sub_191CC6E38();
    *(&v104 + 1) = v41;
    *&v105 = v42;
    *(&v105 + 1) = v43;
    sub_191CC6E28();
    swift_getWitnessTable();
    sub_191CC6C08();
    v44 = v102;
    v45 = v38;
    if (v102 == 4 || (v70 = v104, v102 = v104, v103 = v105, (sub_191CC6C38() & 1) == 0))
    {
      v50 = sub_191CC7028();
      swift_allocError();
      v52 = v51;
      sub_191C2CAB4(0);
      *v52 = v97;
      sub_191CC71D8();
      sub_191CC7008();
      (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
      swift_willThrow();
      (*(v39 + 8))(v40, v38);
      swift_unknownObjectRelease();
    }

    else if (v44 > 1)
    {
      v53 = v40;
      if (v44 == 2)
      {
        LOBYTE(v102) = 2;
        v54 = v90;
        sub_191CC71C8();
        v55 = v95;
        v56 = v78;
        sub_191CC7268();
        (*(v77 + 8))(v54, v56);
        (*(v39 + 8))(v53, v45);
        swift_unknownObjectRelease();
        v57 = v72;
      }

      else
      {
        LOBYTE(v102) = 3;
        v62 = v93;
        sub_191CC71C8();
        v55 = v95;
        v63 = v80;
        sub_191CC7268();
        (*(v79 + 8))(v62, v63);
        (*(v39 + 8))(v53, v45);
        swift_unknownObjectRelease();
        v57 = v100;
      }

      v58 = v97;
      swift_storeEnumTagMultiPayload();
      v68 = *(v81 + 32);
      v69 = v101;
      v68(v101, v57, v58);
      v68(v55, v69, v58);
    }

    else
    {
      v46 = v40;
      if (v44)
      {
        LOBYTE(v102) = 1;
        v59 = v87;
        sub_191CC71C8();
        v60 = v71;
        v61 = v76;
        sub_191CC7268();
        (*(v75 + 8))(v59, v61);
        (*(v39 + 8))(v46, v45);
        swift_unknownObjectRelease();
        v65 = v97;
        swift_storeEnumTagMultiPayload();
        v66 = *(v81 + 32);
        v67 = v101;
        v66(v101, v60, v65);
        v66(v95, v67, v65);
      }

      else
      {
        LOBYTE(v102) = 0;
        v47 = v82;
        sub_191CC71C8();
        (*(v73 + 8))(v47, v74);
        (*(v39 + 8))(v40, v38);
        swift_unknownObjectRelease();
        v48 = v101;
        v49 = v97;
        swift_storeEnumTagMultiPayload();
        (*(v81 + 32))(v95, v48, v49);
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v106);
}

uint64_t QuantityThresholds.Bucket.range.setter(uint64_t result, double a2, double a3)
{
  v4 = (v3 + *(result + 52));
  *v4 = a2;
  v4[1] = a3;
  return result;
}

BOOL static QuantityThresholds.Bucket.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_191CC6768() & 1) == 0)
  {
    return 0;
  }

  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v12 = *(type metadata accessor for QuantityThresholds.Bucket(0, v19) + 52);
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  v17 = v13 == *v15;
  return v14 == v16 && v17;
}

uint64_t QuantityThresholds.Bucket.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_191CC66A8();
  v4 = (v2 + *(a2 + 52));
  v5 = *v4;
  v6 = v4[1];
  if (*v4 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x193B02C90](*&v5);
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6;
  }

  return MEMORY[0x193B02C90](*&v7);
}

uint64_t QuantityThresholds.Threshold.edge.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v5;
  v6 = type metadata accessor for QuantityThresholds.Edge(0, v8);
  return (*(*(v6 - 8) + 16))(a2, v2 + v4, v6);
}

uint64_t QuantityThresholds.Threshold.edge.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = *(a2 + 32);
  v8[0] = *(a2 + 16);
  v8[1] = v5;
  v6 = type metadata accessor for QuantityThresholds.Edge(0, v8);
  return (*(*(v6 - 8) + 40))(v2 + v4, a1, v6);
}

uint64_t QuantityThresholds.Threshold.init(value:edge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>, double a7@<D0>)
{
  *a6 = a7;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v13 = *(type metadata accessor for QuantityThresholds.Threshold(0, &v16) + 52);
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v14 = type metadata accessor for QuantityThresholds.Edge(0, &v16);
  return (*(*(v14 - 8) + 32))(a6 + v13, a1, v14);
}

uint64_t static QuantityThresholds.Threshold.== infix(_:_:)(double *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v13[10] = v6;
  v13[11] = v7;
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  v11 = type metadata accessor for QuantityThresholds.Threshold(0, v13);
  return static QuantityThresholds.Edge.== infix(_:_:)(a1 + *(v11 + 52), a2 + *(v11 + 52), a3) & 1;
}

uint64_t sub_191C9CAFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701274725 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_191C9CBC4(char a1)
{
  if (a1)
  {
    return 1701274725;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_191C9CC80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C9CCD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t QuantityThresholds.Threshold.encode(to:)(void *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[4];
  v5 = a2[5];
  v14 = a2[3];
  v15 = v3;
  v17 = v3;
  v18 = v14;
  v12 = v5;
  v13 = v4;
  v19 = v4;
  v20 = v5;
  type metadata accessor for QuantityThresholds.Threshold.CodingKeys(255, &v17);
  swift_getWitnessTable();
  v6 = sub_191CC7378();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7548();
  LOBYTE(v17) = 0;
  v10 = v16;
  sub_191CC7328();
  if (!v10)
  {
    v21 = 1;
    v17 = v15;
    v18 = v14;
    v19 = v13;
    v20 = v12;
    type metadata accessor for QuantityThresholds.Edge(0, &v17);
    swift_getWitnessTable();
    sub_191CC7348();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t QuantityThresholds.Threshold.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*v2 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x193B02C90](*&v5);
  v6 = *(a2 + 32);
  v9[0] = *(a2 + 16);
  v9[1] = v6;
  v7 = type metadata accessor for QuantityThresholds.Edge(0, v9);
  return QuantityThresholds.Edge.hash(into:)(a1, v7);
}

uint64_t sub_191C9CFB0(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_191CC74C8();
  a2(v5, a1);
  return sub_191CC7508();
}

uint64_t QuantityThresholds.Threshold.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a6;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v29 = type metadata accessor for QuantityThresholds.Edge(0, &v31);
  v25 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v23 - v11;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  type metadata accessor for QuantityThresholds.Threshold.CodingKeys(255, &v31);
  swift_getWitnessTable();
  v30 = sub_191CC72A8();
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v13 = &v23 - v12;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v14 = type metadata accessor for QuantityThresholds.Threshold(0, &v31);
  v24 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v17 = v35;
  sub_191CC7528();
  if (!v17)
  {
    v19 = v27;
    v18 = v28;
    v20 = v29;
    LOBYTE(v31) = 0;
    sub_191CC7248();
    *v16 = v21;
    LOBYTE(v31) = 1;
    swift_getWitnessTable();
    sub_191CC7268();
    (*(v19 + 8))(v13, v30);
    (*(v25 + 32))(&v16[*(v14 + 52)], v18, v20);
    (*(v24 + 32))(v26, v16, v14);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_191C9D378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  sub_191CC74C8();
  a4(v7, a2);
  return sub_191CC7508();
}

id QuantityThresholds.unit.getter()
{
  v0 = sub_191CC6778();
  v1 = [objc_opt_self() unitFromString_];

  return v1;
}

void *QuantityThresholds.boundaries.getter(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v21 = v1[2];
  v4 = a1[3];
  v13 = a1[2];
  v14 = v4;
  v5 = a1[5];
  v15 = a1[4];
  v16 = v5;
  v17 = v2;
  v18 = v3;
  v19 = v21;

  v20[0] = v13;
  v20[1] = v4;
  v20[2] = v15;
  v20[3] = v5;
  type metadata accessor for QuantityThresholds.Threshold(255, v20);
  v6 = sub_191CC6978();
  v7 = sub_191CA0268();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_191C69C84(sub_191CA0230, &v12, v6, v7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  return v10;
}

void sub_191C9D574(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v13[0] = a5;
  v13[1] = a6;
  v13[2] = a7;
  v13[3] = a8;
  type metadata accessor for QuantityThresholds(0, v13);
  v11 = QuantityThresholds.unit.getter();
  v12 = [objc_opt_self() quantityWithUnit:v11 doubleValue:*a1];

  *a9 = v12;
}

void *QuantityThresholds.buckets.getter(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  *&v25 = v2;
  *(&v25 + 1) = v3;
  *&v26 = v4;
  *(&v26 + 1) = v5;
  v6 = type metadata accessor for QuantityThresholds.Threshold(255, &v25);
  v7 = sub_191CC6DD8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v21[-1] - v8);
  v10 = *(v1 + 16);
  *&v25 = v10;
  sub_191CC6978();
  swift_getWitnessTable();
  sub_191CC6C28();
  v11 = *(v6 - 8);
  result = (*(v11 + 48))(v9, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = *v9;
    (*(v11 + 8))(v9, v6);
    v24 = v13;
    *&v22 = v10;

    v14 = sub_191CC6C48();
    v20 = v25;
    v22 = v25;
    v23 = v26;
    MEMORY[0x1EEE9AC00](v14);
    *(&v20 - 6) = v2;
    *(&v20 - 5) = v3;
    *(&v20 - 4) = v4;
    *(&v20 - 3) = v5;
    *(&v20 - 2) = &v24;
    v15 = sub_191CC6E28();
    v21[0] = v2;
    v21[1] = v3;
    v21[2] = v4;
    v21[3] = v5;
    v16 = type metadata accessor for QuantityThresholds.Bucket(0, v21);
    WitnessTable = swift_getWitnessTable();
    v19 = sub_191C69C84(sub_191CA02B4, (&v20 - 4), v15, v16, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);
    swift_unknownObjectRelease();
    return v19;
  }

  return result;
}

uint64_t sub_191C9D884@<X0>(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v38 = a1;
  v40 = a2;
  v41 = a3;
  v37 = a7;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v11 = type metadata accessor for QuantityThresholds.Edge(0, &v41);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = *(a3 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v39 = &v34 - v20;
  v41 = a3;
  v42 = a4;
  v34 = a4;
  v35 = a5;
  v21 = v38;
  v43 = a5;
  v44 = a6;
  v36 = a6;
  v22 = type metadata accessor for QuantityThresholds.Threshold(0, &v41);
  (*(v12 + 16))(v15, v21 + *(v22 + 52), v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_12;
    }

    v24 = *(v16 + 32);
    v27 = v39;
    v24(v39, v15, a3);
    v26 = *v21;
    v28 = 0.0 - *v21;
    if (v28 != INFINITY)
    {
      *&v28 += (*&v28 >> 63) | 1;
    }

    v25 = -v28;
  }

  else
  {
    v24 = *(v16 + 32);
    v24(v19, v15, a3);
    v25 = *v21;
    v26 = *v21 + 0.0;
    if (*v21 != INFINITY)
    {
      *&v26 += (*&v26 >> 63) | 1;
    }

    v27 = v39;
    v24(v39, v19, a3);
  }

  v29 = v40;
  v30 = *v40;
  if (*v40 <= v25)
  {
    v31 = v37;
    v24(v37, v27, a3);
    v41 = a3;
    v42 = v34;
    v43 = v35;
    v44 = v36;
    result = type metadata accessor for QuantityThresholds.Bucket(0, &v41);
    v33 = &v31[*(result + 52)];
    *v33 = v30;
    v33[1] = v25;
    *v29 = v26;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_191CC7118();
  __break(1u);
  return result;
}

uint64_t QuantityThresholds.bucket(for:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v6 = a2[2];
  v7 = a2[4];
  v8 = a2[5];
  v40 = a2[3];
  v41 = v6;
  v44 = v6;
  v45 = v40;
  v38 = v8;
  v39 = v7;
  v46 = v7;
  v47 = v8;
  v9 = type metadata accessor for QuantityThresholds.Bucket(255, &v44);
  v10 = sub_191CC6DD8();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v42 = &v35 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  v21 = v3[1];
  v22 = v3[2];
  v44 = *v3;
  v20 = v44;
  v45 = v21;
  v46 = v22;
  v23 = QuantityThresholds.buckets.getter(a2);
  v44 = v20;
  v45 = v21;
  v46 = v22;
  v24 = QuantityThresholds.unit.getter();
  [a1 doubleValueForUnit_];
  v26 = v25;

  v44 = v23;
  sub_191CC6978();
  swift_getWitnessTable();
  sub_191CC6C28();
  v27 = *(v9 - 8);
  v28 = *(v27 + 48);
  result = v28(v19, 1, v9);
  if (result == 1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v30 = *&v19[*(v9 + 52)];
  v31 = (*(v27 + 8))(v19, v9);
  if (v26 < v30)
  {
    v44 = v23;
    sub_191CC6C28();
    result = v28(v17, 1, v9);
    if (result != 1)
    {

      return (*(v27 + 32))(v43, v17, v9);
    }

    goto LABEL_9;
  }

  v44 = v23;
  MEMORY[0x1EEE9AC00](v31);
  v32 = v40;
  *(&v35 - 6) = v41;
  *(&v35 - 5) = v32;
  v33 = v38;
  *(&v35 - 4) = v39;
  *(&v35 - 3) = v33;
  *(&v35 - 2) = v26;
  swift_getWitnessTable();
  v34 = v42;
  sub_191CC6858();
  if (v28(v34, 1, v9) != 1 || ((*(v35 + 8))(v34, v36), v44 = v23, swift_getWitnessTable(), v34 = v37, sub_191CC66C8(), result = v28(v34, 1, v9), result != 1))
  {

    return (*(v27 + 32))(v43, v34, v9);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t QuantityThresholds.standardRange.getter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v18[0] = *(a1 + 16);
  v18[1] = v2;
  v3 = type metadata accessor for QuantityThresholds.Threshold(255, v18);
  v4 = sub_191CC6DD8();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v17 - v8);
  v10 = *(v1 + 16);
  *&v18[0] = v10;
  sub_191CC6978();
  swift_getWitnessTable();
  sub_191CC6C28();
  v11 = *(v3 - 8);
  v12 = *(v11 + 48);
  result = v12(v9, 1, v3);
  if (result == 1)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v14 = *v9;
  v15 = *(v11 + 8);
  v15(v9, v3);
  v17[1] = v10;
  swift_getWitnessTable();
  sub_191CC66C8();
  result = v12(v7, 1, v3);
  if (result != 1)
  {
    v16 = *v7;
    result = (v15)(v7, v3);
    if (v14 <= v16)
    {
      return result;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  __break(1u);
  return result;
}

Swift::Double __swiftcall QuantityThresholds.linearScore(for:)(HKQuantity a1)
{
  isa = a1.super.isa;
  QuantityThresholds.standardRange.getter(a1._unit);
  v3 = v2;
  v5 = v4;
  v6 = QuantityThresholds.unit.getter();
  [(objc_class *)isa doubleValueForUnit:v6];
  v8 = v7;

  result = 0.0;
  if (v8 >= v3)
  {
    result = 1.0;
    if (v5 >= v8)
    {
      return (v8 - v3) / (v5 - v3);
    }
  }

  return result;
}

uint64_t QuantityThresholds.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v23 = v8[1];
  v24 = *v8;
  v40 = v8[2];
  v14 = a3[3];
  v26 = a3[2];
  v27 = a4;
  v16 = a3[4];
  v15 = a3[5];
  v28 = v14;
  v29 = v16;
  v30 = v15;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a1;
  v35 = a2;

  v36 = v26;
  v37 = v14;
  v38 = v16;
  v39 = v15;
  type metadata accessor for QuantityThresholds.Threshold(255, &v36);
  v17 = sub_191CC6978();
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v18 = type metadata accessor for QuantityThresholds.Threshold(0, &v36);
  WitnessTable = swift_getWitnessTable();
  v21 = sub_191C69C84(sub_191CA0348, v25, v17, v18, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v20);

  *a8 = v24;
  a8[1] = v23;
  a8[2] = v21;
  return result;
}

uint64_t sub_191C9E3F4@<X0>(double *a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a7;
  v44 = a8;
  v41 = a3;
  v42 = a2;
  v54 = a1;
  v47 = a9;
  v40 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v16;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v20 = type metadata accessor for QuantityThresholds.Edge(0, &v50);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v37 - v22;
  v48 = a12;
  v49 = a5;
  v50 = a5;
  v51 = a10;
  v45 = a10;
  v46 = a11;
  v52 = a11;
  v53 = a12;
  v24 = type metadata accessor for QuantityThresholds.Edge(0, &v50);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v37 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v37 - v29;
  v38 = a4;
  v50 = a4;
  v51 = a6;
  v52 = v43;
  v53 = v44;
  v31 = type metadata accessor for QuantityThresholds.Threshold(0, &v50);
  (*(v21 + 16))(v23, v54 + *(v31 + 52), v20);
  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    v33 = v39;
    v32 = v40;
    v34 = v23;
    v35 = v38;
    (*(v40 + 32))(v39, v34, v38);
    v42(v33);
    (*(v32 + 8))(v33, v35);
  }

  swift_storeEnumTagMultiPayload();
  (*(v25 + 32))(v30, v28, v24);
  return QuantityThresholds.Threshold.init(value:edge:)(v30, v49, v45, v46, v48, v47, *v54);
}

uint64_t static QuantityThresholds.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (v10 || (v11 = sub_191CC73E8(), v12 = 0, (v11 & 1) != 0))
  {
    v14[0] = a3;
    v14[1] = a4;
    v14[2] = a5;
    v14[3] = a6;
    type metadata accessor for QuantityThresholds.Threshold(0, v14);
    swift_getWitnessTable();
    v12 = sub_191CC69A8();
  }

  return v12 & 1;
}

uint64_t sub_191C9E7BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6972745374696E75 && a2 == 0xEA0000000000676ELL;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364)
  {

    return 1;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_191C9E894(char a1)
{
  if (a1)
  {
    return 0x6C6F687365726874;
  }

  else
  {
    return 0x6972745374696E75;
  }
}

uint64_t sub_191C9E934(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void, void))
{
  sub_191CC74C8();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_191CC7508();
}

uint64_t sub_191C9E9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_191C9EA18@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_191C9EA54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C9EAA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t QuantityThresholds.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[4];
  v6 = a2[5];
  v21 = a2[3];
  v22 = v4;
  v27 = v4;
  v28 = v21;
  v19 = v6;
  v20 = v5;
  v29 = v5;
  v30 = v6;
  type metadata accessor for QuantityThresholds.CodingKeys(255, &v27);
  swift_getWitnessTable();
  v7 = sub_191CC7378();
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v18 = *(v2 + 16);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_0(v11, v10);
  sub_191CC7548();
  LOBYTE(v27) = 0;
  v14 = v24;
  sub_191CC7308();
  if (v14)
  {
    return (*(v23 + 8))(v9, v13);
  }

  v31 = v18;
  v26 = 1;
  v16 = v23;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = v19;
  type metadata accessor for QuantityThresholds.Threshold(255, &v27);
  sub_191CC6978();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_191CC7348();
  return (*(v16 + 8))(v9, v13);
}

uint64_t QuantityThresholds.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_191CC67E8();
  v3 = *(a2 + 32);
  v5[0] = *(a2 + 16);
  v5[1] = v3;
  type metadata accessor for QuantityThresholds.Threshold(0, v5);
  swift_getWitnessTable();
  return sub_191CC6988();
}

uint64_t QuantityThresholds.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  v5 = *(v1 + 8);
  sub_191CC74C8();
  QuantityThresholds.hash(into:)(v4, a1);
  return sub_191CC7508();
}

uint64_t QuantityThresholds.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v25 = a6;
  v31 = a2;
  v32 = a3;
  v27 = a4;
  v28 = a5;
  v33 = a4;
  v34 = a5;
  type metadata accessor for QuantityThresholds.CodingKeys(255, &v31);
  swift_getWitnessTable();
  v29 = sub_191CC72A8();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7528();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = a1;
  v13 = v27;
  v12 = v28;
  v14 = v26;
  LOBYTE(v31) = 0;
  v15 = v29;
  v22 = sub_191CC7228();
  v23 = v16;
  v31 = a2;
  v32 = a3;
  v33 = v13;
  v34 = v12;
  type metadata accessor for QuantityThresholds.Threshold(255, &v31);
  sub_191CC6978();
  LOBYTE(v31) = 1;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_191CC7268();
  (*(v14 + 8))(v11, v15);
  v17 = v35;
  v18 = v25;
  v19 = v23;
  *v25 = v22;
  v18[1] = v19;
  v18[2] = v17;

  __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t sub_191C9F10C(uint64_t a1, uint64_t a2)
{
  sub_191CC74C8();
  QuantityThresholds.hash(into:)(v4, a2);
  return sub_191CC7508();
}

void QuantityThresholds.init(unit:thresholds:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  if (static QuantityThresholds.areThresholdValid(_:)(a2, a3, a4, a5, a6))
  {
    v14 = [a1 unitString];
    v15 = sub_191CC67B8();
    v25 = v16;
    v26 = v15;

    v31 = a2;
    MEMORY[0x1EEE9AC00](v17);
    v24[2] = a3;
    v24[3] = a4;
    v24[4] = a5;
    v24[5] = a6;
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v30 = a6;
    type metadata accessor for QuantityThresholds.Edge(255, &v27);
    v18 = sub_191CC7038();
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v30 = a6;
    v19 = type metadata accessor for QuantityThresholds.Threshold(0, &v27);
    WitnessTable = swift_getWitnessTable();
    v22 = sub_191C69C84(sub_191CA03A4, v24, v18, v19, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v21);

    v23 = v25;
    *a7 = v26;
    a7[1] = v23;
    a7[2] = v22;
  }

  else
  {
    sub_191CC7118();
    __break(1u);
  }
}

uint64_t static QuantityThresholds.areThresholdValid(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62[0] = a2;
  v62[1] = a3;
  v62[2] = a4;
  v62[3] = a5;
  v10 = type metadata accessor for QuantityThresholds.Edge(0, v62);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v58 = v47 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = sub_191CC6DD8();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v60 = v47 - v18;
  v61 = v10;
  v62[0] = a1;
  v19 = sub_191CC7038();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_191CC6C18();
  if (v20 < 2)
  {
    return 0;
  }

  v51 = v17;
  v56 = v11;
  v57 = TupleTypeMetadata2;
  v62[0] = a1;
  MEMORY[0x1EEE9AC00](v20);
  v47[-4] = a2;
  v47[-3] = a3;
  v47[-2] = a4;
  v47[-1] = a5;
  KeyPath = swift_getKeyPath();
  v22 = MEMORY[0x1EEE9AC00](KeyPath);
  v52 = a2;
  v53 = a3;
  v47[-6] = a2;
  v47[-5] = a3;
  v54 = a4;
  v55 = a5;
  v47[-4] = a4;
  v47[-3] = a5;
  v47[-2] = v22;
  v23 = swift_getWitnessTable();
  v25 = sub_191C9FAF0(sub_191CA1178, &v47[-8], v19, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);

  if (v25 != 1)
  {
    return 0;
  }

  v48 = v23;
  v49 = v19;
  v50 = a1;
  v62[0] = a1;
  v26 = v60;
  sub_191CC6C28();
  v27 = *(v57 - 8);
  WitnessTable = *(v27 + 48);
  v47[1] = v27 + 48;
  result = WitnessTable(v26, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v29 = v58;
    v30 = v61;
    swift_storeEnumTagMultiPayload();
    v31 = v52;
    v32 = v53;
    v33 = v54;
    v34 = v55;
    v35 = static QuantityThresholds.Edge.== infix(_:_:)(v26, v29, v52);
    v36 = v29;
    v37 = *(v56 + 8);
    v37(v36, v30);
    v38 = (v37)(v26, v30);
    if ((v35 & 1) == 0)
    {
      return 0;
    }

    v62[0] = v50;
    MEMORY[0x1EEE9AC00](v38);
    v47[-4] = v31;
    v47[-3] = v32;
    v47[-2] = v33;
    v47[-1] = v34;
    v39 = swift_getKeyPath();
    v40 = MEMORY[0x1EEE9AC00](v39);
    v47[-6] = v41;
    v47[-5] = v32;
    v47[-4] = v33;
    v47[-3] = v34;
    v47[-2] = v40;
    v43 = sub_191C9FAF0(sub_191CA03C8, &v47[-8], v49, MEMORY[0x1E69E73E0], v48, MEMORY[0x1E69E7410], v42);

    if (v43 > 1)
    {
      return 0;
    }

    if (v43 != 1)
    {
      return 1;
    }

    v62[0] = v50;
    swift_getWitnessTable();
    v44 = v51;
    sub_191CC66C8();
    result = (WitnessTable)(v44, 1, v57);
    if (result != 1)
    {
      v45 = v61;
      v46 = sub_191C9FF10(v61);
      v37(v44, v45);
      return v46;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_191C9F88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  type metadata accessor for QuantityThresholds.Edge(255, v19);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = v19 - v14;
  v16 = *(a1 + *(v13 + 48));
  (*(v17 + 16))(v19 - v14, a1);
  return QuantityThresholds.Threshold.init(value:edge:)(v15, a2, a3, a4, a5, a6, v16);
}

uint64_t static QuantityThresholds._init(unitString:thresholds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
}

uint64_t sub_191C9FA14(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v6 = static QuantityThresholds.Edge.== infix(_:_:)(v1, v5, *(a1 + 16));
  (*(v3 + 8))(v5, a1);
  return v6 & 1;
}

uint64_t sub_191C9FAF0(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a4;
  v35 = a7;
  v8 = v7;
  v38 = a1;
  v39 = a2;
  v33 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v33 - v13;
  v15 = sub_191CC6DD8();
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v33 - v17;
  v19 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v36 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v33 - v23;
  (*(v19 + 16))(v21, v43, a3);
  v42 = v24;
  sub_191CC6838();
  v43 = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = 0;
  v26 = (v37 + 48);
  v27 = (v37 + 32);
  v28 = (v37 + 8);
  while (1)
  {
    sub_191CC6DF8();
    if ((*v26)(v18, 1, AssociatedTypeWitness) == 1)
    {
      goto LABEL_7;
    }

    (*v27)(v14, v18, AssociatedTypeWitness);
    v29 = v38(v14, v40);
    if (v8)
    {
      break;
    }

    v30 = v29;
    v8 = 0;
    (*v28)(v14, AssociatedTypeWitness);
    v31 = __OFADD__(v25, v30 & 1);
    v25 += v30 & 1;
    if (v31)
    {
      __break(1u);
LABEL_7:
      (*(v36 + 8))(v42, v43);
      return v25;
    }
  }

  (*v28)(v14, AssociatedTypeWitness);
  (*(v36 + 8))(v42, v43);
  (*(v33 + 32))(v35, v40, v34);
  return v25;
}

BOOL sub_191C9FF10(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = swift_getEnumCaseMultiPayload() == 2;
  (*(v2 + 8))(v4, a1);
  return v5;
}

uint64_t sub_191C9FFF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, _BYTE *a4@<X8>)
{
  v6 = *(a1 + a2 - 16);
  v9[0] = *(a1 + a2 - 32);
  v9[1] = v6;
  v7 = type metadata accessor for QuantityThresholds.Edge(0, v9);
  result = a3(v7);
  *a4 = result & 1;
  return result;
}

uint64_t sub_191CA0058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v7 = type metadata accessor for QuantityThresholds.Edge(255, v18);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(v9 + 16))(v18 - v13, a1, TupleTypeMetadata2);
  v15 = *(TupleTypeMetadata2 + 48);
  v16 = *&v14[v15];
  (*(*(v7 - 8) + 32))(v12, v14, v7);
  *&v12[v15] = v16;
  swift_getAtKeyPath();
  (*(v9 + 8))(v12, TupleTypeMetadata2);
  return LOBYTE(v18[0]);
}

unint64_t sub_191CA0268()
{
  result = qword_1EADCC788;
  if (!qword_1EADCC788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCC788);
  }

  return result;
}

BOOL sub_191CA02DC(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v8[1] = v3;
  v4 = (a1 + *(type metadata accessor for QuantityThresholds.Bucket(0, v8) + 52));
  v5 = v4[1];
  v6 = *v4 <= v2;
  return v5 >= v2 && v6;
}

uint64_t sub_191CA0480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191CA04D4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_191CA053C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 252) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 4)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 253;
}

void sub_191CA0648(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

void sub_191CA07F4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_191CA0B04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_191CA087C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_191CA0980(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void sub_191CA0B04()
{
  if (!qword_1EADCD6B0[0])
  {
    v0 = sub_191CC6758();
    if (!v1)
    {
      atomic_store(v0, qword_1EADCD6B0);
    }
  }
}

uint64_t sub_191CA0B5C(uint64_t a1)
{
  v5 = 0;
  v7 = MEMORY[0x1E69E63B0];
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for QuantityThresholds.Edge(319, v4);
  if (v3 <= 0x3F)
  {
    v6 = 0;
    v8 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_191CA0BE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (!a2)
  {
    return 0;
  }

  v5 = *(v3 + 80);
  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v6 = v4 + ((v5 + 8) & ~v5) + 1;
  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (v10 < 2)
    {
LABEL_25:
      v14 = *(((a1 + v5 + 8) & ~v5) + v4);
      if (v14 >= 4)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_12:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 <= 3)
    {
      v12 = v6;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v13 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v13 = *a1;
      }
    }

    else if (v12 == 1)
    {
      v13 = *a1;
    }

    else
    {
      v13 = *a1;
    }
  }

  else
  {
    v13 = 0;
  }

  return (v13 | v11) + 253;
}

void sub_191CA0D44(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + ((v7 + 8) & ~v7) + 1;
  if (a3 < 0xFD)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 252) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFC)
  {
    v10 = a2 - 253;
    if (v8 >= 4)
    {
      bzero(a1, v6 + ((v7 + 8) & ~v7) + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 + ((v7 + 8) & ~v7) != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_37:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      *((&a1[v7 + 8] & ~v7) + v6) = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_22;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

id static HKSamplePredicate.phq9Assessment(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(HKScoredAssessmentType) initWithIdentifier_];
  if (result)
  {
    *a2 = result;
    a2[1] = a1;

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKPHQ9Assessment.init(date:answers:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191CC60A8();
  v7 = *(a2 + 16);
  if (v7)
  {
    sub_191CC7098();
    v8 = 32;
    do
    {
      sub_191CC6B98();
      sub_191CC7068();
      sub_191CC70A8();
      sub_191CC70B8();
      sub_191CC7078();
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  sub_191C94AC4();
  v9 = sub_191CC68D8();

  if (a3)
  {
    v10 = sub_191CC6638();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDate:v6 answers:v9 metadata:v10];

  v12 = sub_191CC6148();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

char *HKPHQ9Assessment.answers.getter()
{
  v1 = [v0 answers];
  sub_191C94AC4();
  v2 = sub_191CC68E8();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_191CC6EE8())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193B02790](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_191C07DBC(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_191C07DBC((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v9;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v5;
}

uint64_t HKSleepDaySummaryQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 48);
  *(a1 + 8) = *(v1 + 56);
}

__n128 HKSleepDaySummaryQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  v1[3] = v4;
  v1[4].n128_u64[0] = v2;
  return result;
}

void *HKSleepDaySummaryQueryDescriptor.cacheSettings.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t type metadata accessor for HKSleepDaySummaryQueryDescriptor(uint64_t a1)
{
  result = qword_1EADCDAB8;
  if (!qword_1EADCDAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_191CA171C(uint64_t a1)
{
  if (!qword_1EADCADE0)
  {
    sub_191CC62A8();
    v1 = sub_191CC6DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCADE0);
    }
  }
}

uint64_t HKSleepDaySummaryQueryDescriptor.calendarOverrides.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HKSleepDaySummaryQueryDescriptor(0) + 40);

  return sub_191CA17B8(a1, v3);
}

uint64_t sub_191CA17B8(uint64_t a1, uint64_t a2)
{
  sub_191CA171C(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HKSleepDaySummaryQueryDescriptor.init(morningIndexRange:options:ascending:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *(a7 + 64) = xmmword_191DDB910;
  v14 = *(type metadata accessor for HKSleepDaySummaryQueryDescriptor(0) + 40);
  v15 = sub_191CC62A8();
  result = (*(*(v15 - 8) + 56))(a7 + v14, 1, 1, v15);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  *(a7 + 16) = a3;
  return result;
}

uint64_t HKSleepDaySummaryQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_191CA1948, 0, 0);
}

uint64_t sub_191CA1948()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_191BFD16C;
  v3 = swift_continuation_init();
  sub_191CA19F4(v3, v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

void sub_191CA19F4(uint64_t a1, uint64_t *a2, void *a3)
{
  sub_191CA171C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 24);
  if (*(a2 + 40))
  {
    v12 = 0;
  }

  else
  {
    v12 = a2[4];
  }

  v13 = a2[2];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v15 = objc_allocWithZone(HKSleepDaySummaryQuery);
  aBlock[4] = sub_191CA2054;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191CA205C;
  aBlock[3] = &block_descriptor_27;
  v16 = _Block_copy(aBlock);
  v17 = [v15 initWithMorningIndexRange:v9 ascending:v10 limit:v11 options:v12 resultsHandler:{v13, v16}];
  _Block_release(v16);

  v18 = a2[8];
  if (a2[7])
  {

    v19 = sub_191CC6778();
  }

  else
  {
    v19 = 0;
  }

  [v17 setDebugIdentifier_];

  [v17 setQualityOfService_];

  [v17 setCacheSettings_];
  Descriptor = type metadata accessor for HKSleepDaySummaryQueryDescriptor(0);
  sub_191CA2244(a2 + *(Descriptor + 40), v8, sub_191CA171C);
  v21 = sub_191CC62A8();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v8, 1, v21) != 1)
  {
    v23 = sub_191CC6228();
    (*(v22 + 8))(v8, v21);
  }

  [v17 setCalendarOverrides_];

  [a3 executeQuery_];
}

uint64_t sub_191CA1CC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    **(*(a4 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      v6 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFC39C();
      sub_191CC5FA8();
      v6 = v9;
    }

    sub_191BF92E0();
    swift_allocError();
    *v7 = v6;
    v8 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_191CA1DC8(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191CA1DEC, 0, 0);
}

uint64_t sub_191CA1DEC()
{
  v2 = v0[12];
  v1 = v0[13];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_191BFD72C;
  v3 = swift_continuation_init();
  sub_191CA19F4(v3, v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

void sub_191CA1EC0(uint64_t a1)
{
  type metadata accessor for HKDayIndexRange(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKSleepDaySummaryQueryOptions(319);
    if (v2 <= 0x3F)
    {
      sub_191CA1F9C();
      if (v3 <= 0x3F)
      {
        sub_191CA1FEC(319);
        if (v4 <= 0x3F)
        {
          sub_191CA171C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_191CA1F9C()
{
  if (!qword_1EADCB5C0)
  {
    v0 = sub_191CC6DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB5C0);
    }
  }
}

void sub_191CA1FEC(uint64_t a1)
{
  if (!qword_1EADCDAC8)
  {
    sub_191BFAE6C(255, &unk_1EADCDAD0, off_1E7375510);
    v1 = sub_191CC6DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCDAC8);
    }
  }
}

uint64_t sub_191CA205C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
    v5 = sub_191CC68E8();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_191CA212C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_191C90B48();
    v3 = sub_191CC7188();
    v4 = a1 + 32;

    while (1)
    {
      sub_191CA2244(v4, &v13, sub_191C3D154);
      v5 = v13;
      v6 = v14;
      result = sub_191C40248(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_191C0B190(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_191CA2244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void _HKLogDroppedError_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Dropping error because caller did not provide an errorOut pointer: %{public}@", &v2, 0xCu);
}

void _HKLogDroppedErrorWithReason_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ (Dropping error because caller did not provide an errorOut pointer)", &v3, 0x16u);
}

void HKDescriptionForAnalyticsFileWithName_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(*a1 + 40);
  *&v3[12] = 2114;
  *&v3[14] = *(*a2 + 40);
  OUTLINED_FUNCTION_1(&dword_19197B000, a2, a3, "Error reading analytics file at '%{public}@': %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void HKDescriptionForAnalyticsFileWithName_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = *(*a2 + 40);
  OUTLINED_FUNCTION_1(&dword_19197B000, a2, a3, "Error fetching URL for analytics file with name '%{public}@': %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKWatchAppInstallationManager.m" lineNumber:25 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKWatchAppInstallationManager.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void __getgetSleepFeatureAvailabilityProvidingSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SleepLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKFeatureAvailabilityHealthDataSource.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void HKWithUnfairLock_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void HKWithUnfairLock(os_unfair_lock_t _Nonnull, void (^ _Nonnull __strong)(void))"}];
  [OUTLINED_FUNCTION_0_7(v0 v1];
}

void HKWithUnfairLock_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void HKWithUnfairLock(os_unfair_lock_t _Nonnull, void (^ _Nonnull __strong)(void))"}];
  [OUTLINED_FUNCTION_0_7(v0 v1];
}

void HKCompareDoublesWithAccuracy_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult HKCompareDoublesWithAccuracy(double, double, double)"}];
  [OUTLINED_FUNCTION_0_7(v0 v1];
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKNanoRegistryPairingAndSwitchingNotificationDataSource.m" lineNumber:21 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKNanoRegistryPairingAndSwitchingNotificationDataSource.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void HKAppleWalkingSteadinessClassificationForQuantity_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL HKAppleWalkingSteadinessClassificationForQuantity(HKQuantity *__strong _Nonnull, HKAppleWalkingSteadinessClassification * _Nonnull, NSError *__autoreleasing * _Nullable)"}];
  [v1 handleFailureInFunction:v0 file:@"HKAppleWalkingSteadinessClassification.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"classificationOut != NULL"}];
}

void getNRDevicePropertyProductType_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyProductType(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKNanoRegistryDeviceUtility.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKNanoRegistryDeviceUtility.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKNanoRegistryDeviceUtility.m" lineNumber:22 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void getNRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKFeatureAvailabilityRequirementEvaluationDataSource+NanoRegistry.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getNRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotificationSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKFeatureAvailabilityRequirementEvaluationDataSource+NanoRegistry.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void HKIsFitnessTrackingEnabledWithUserDefaults_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "HKIsFitnessTrackingEnabledWithUserDefaults";
  _os_log_debug_impl(&dword_19197B000, log, OS_LOG_TYPE_DEBUG, "[%s]: Checking TCC authorization for bundle", &v1, 0xCu);
}

void HKIsFitnessTrackingEnabledWithUserDefaults_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "HKIsFitnessTrackingEnabledWithUserDefaults";
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "[%s]: TCCAccessGetOverride for motion failed", &v1, 0xCu);
}

void HKIsFitnessTrackingEnabledWithUserDefaults_cold_3(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a1 BOOLValue];
  v4 = @" NOT";
  if (v3)
  {
    v4 = &stru_1F05FF230;
  }

  v5 = 136315394;
  v6 = "HKIsFitnessTrackingEnabledWithUserDefaults";
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_19197B000, a2, OS_LOG_TYPE_DEBUG, "[%s]: is%@ granted permission by TCC", &v5, 0x16u);
}

void _HKCreateRecalibrateEstimatesPresentationController_cold_1(uint64_t a1, Protocol *proto, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromProtocol(proto);
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "Error: %{public}@ does not conform to %{public}@", &v6, 0x16u);
}

void _HKCreateRecalibrateEstimatesPresentationController_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = @"HKRecalibrateEstimatesPresentationController";
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "Error: Failed to find class %{public}@", &v1, 0xCu);
}

void _HKCreateRecalibrateEstimatesPresentationController_cold_3(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HealthUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_HKRecalibrateEstimatesPresentationController.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void _HKCreateAuthorizationPresentationController_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = @"HKAuthorizationPresentationController";
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "Error: Failed to find class %{public}@", &v1, 0xCu);
}

void _HKCreateAuthorizationPresentationController_cold_3(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HealthUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_HKAuthorizationPresentationController.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void HKOntologyShardSchemaTypeForShardIdentifier_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error: cannot determine schema for unknown shard identifier: %{public}@", &v2, 0xCu);
}

void HKCurrentSchemaVersionForShardIdentifier_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error: cannot determine current schema version for unknown shard identifier: %{public}@", &v2, 0xCu);
}

void getNRDevicePropertySystemBuildVersion_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertySystemBuildVersion(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKActiveWatchRemoteFeatureAvailabilityDataSource.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKActiveWatchRemoteFeatureAvailabilityDataSource.m" lineNumber:27 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKActiveWatchRemoteFeatureAvailabilityDataSource.m" lineNumber:26 description:{@"%s", *a1}];

  __break(1u);
}

void HKCurrentOptInVersionOnDiskForOnBoardingBundle_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger HKCurrentOptInVersionOnDiskForOnBoardingBundle(NSString * _Nonnull __strong, NSString * _Nonnull __strong)"}];
  [v1 handleFailureInFunction:v0 file:@"HKAnalytics.m" lineNumber:34 description:@"bundleName cannot be empty"];
}

void HKCurrentOptInVersionOnDiskForOnBoardingBundle_cold_2()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger HKCurrentOptInVersionOnDiskForOnBoardingBundle(NSString * _Nonnull __strong, NSString * _Nonnull __strong)"}];
  [v1 handleFailureInFunction:v0 file:@"HKAnalytics.m" lineNumber:35 description:@"plistName cannot be empty"];
}

void HKCurrentOptInVersionOnDiskForOnBoardingBundle_cold_3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_fault_impl(&dword_19197B000, log, OS_LOG_TYPE_FAULT, "Failed to read %{public}@ OnBoardingBundle: %{public}@", &v3, 0x16u);
}

void _HKCreateObjectPickerPresentationController_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = @"HKObjectPickerPresentationController";
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "Error: Failed to find class %{public}@", &v1, 0xCu);
}

void _HKCreateObjectPickerPresentationController_cold_3(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HealthUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_HKObjectPickerPresentationController.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1_3(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKImportExclusionDeviceDataSource.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1_3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKImportExclusionDeviceDataSource.m" lineNumber:22 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void _HKDerivedCacheIndexAndDateComponents_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int64_t _HKDerivedCacheIndexAndDateComponents(const NSCalendar *const __strong, NSDateComponents *const __strong, NSDateComponents * _Nullable __autoreleasing * _Nullable)"}];
  [v1 handleFailureInFunction:v0 file:@"HKActivityCache.m" lineNumber:1782 description:{@"Invalid parameter not satisfying: %@", @"[gregorianCalendar.calendarIdentifier isEqualToString:NSCalendarIdentifierGregorian]"}];
}

void _HKDerivedCacheIndexAndDateComponents_cold_2(void *a1)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int64_t _HKDerivedCacheIndexAndDateComponents(const NSCalendar *const __strong, NSDateComponents *const __strong, NSDateComponents * _Nullable __autoreleasing * _Nullable)"}];
  v3 = [a1 timeZone];
  [v4 handleFailureInFunction:v2 file:@"HKActivityCache.m" lineNumber:1783 description:{@"%@ is not a UTC time zone", v3}];
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1_4()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKWristDetectionSettingManager.m" lineNumber:25 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1_4(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKWristDetectionSettingManager.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void __getASDAppQueryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getASDAppQueryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKWatchAppAvailability.m" lineNumber:22 description:{@"Unable to find class %s", "ASDAppQuery"}];

  __break(1u);
}

void __getASDAppQueryClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppStoreDaemonLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKWatchAppAvailability.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void getNRRawVersionFromString_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint32_t getNRRawVersionFromString(NSString *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:77 description:{@"%s", dlerror()}];

  __break(1u);
}

void getNRDevicePropertyName_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyName(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:67 description:{@"%s", dlerror()}];

  __break(1u);
}

void getNRDevicePropertyIsAltAccount_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyIsAltAccount(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:82 description:{@"%s", dlerror()}];

  __break(1u);
}

void getNRDevicePropertySystemVersion_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertySystemVersion(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:73 description:{@"%s", dlerror()}];

  __break(1u);
}

void getNRVersionIsGreaterThanOrEqual_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL getNRVersionIsGreaterThanOrEqual(uint32_t, uint32_t)"}];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:78 description:{@"%s", dlerror()}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1_5(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKHeartRhythmAvailability.m" lineNumber:63 description:{@"%s", *a1}];

  __break(1u);
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1_5()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:75 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void __getASDSystemAppMetadataClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getASDSystemAppMetadataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:94 description:{@"Unable to find class %s", "ASDSystemAppMetadata"}];

  __break(1u);
}

void AppStoreDaemonLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppStoreDaemonLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKHeartRhythmAvailability.m" lineNumber:92 description:{@"%s", *a1}];

  __break(1u);
}

void __getASDInstallAppsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getASDInstallAppsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:93 description:{@"Unable to find class %s", "ASDInstallApps"}];

  __break(1u);
}

void _HKMedicalIDSimNumberForContact_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to get sim Phone Number with error, %{public}@", &v2, 0xCu);
}

void __getGEOLocationShifterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getGEOLocationShifterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_HKLocationShifter.m" lineNumber:21 description:{@"Unable to find class %s", "GEOLocationShifter"}];

  __break(1u);
}

void __getGEOLocationShifterClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void * _Nonnull GeoServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_HKLocationShifter.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getSOSManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSOSManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHealthChecklistUtilities.m" lineNumber:22 description:{@"Unable to find class %s", "SOSManager"}];

  __break(1u);
}

void __getSOSManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SOSLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKHealthChecklistUtilities.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void _HKEnumerateActiveWorkoutIntervalsStartingPaused_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _HKEnumerateActiveWorkoutIntervalsStartingPaused(NSDate *__strong, NSDate *__strong, NSArray<HKWorkoutEvent *> *__strong, BOOL, void (^__strong)(NSDate *__strong, NSDate *__strong))"}];
  [v1 handleFailureInFunction:v0 file:@"HKWorkout.m" lineNumber:1946 description:@"enumeration block must not be nil"];
}

void getNRVersionIsGreaterThanOrEqual_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL getNRVersionIsGreaterThanOrEqual(uint32_t, uint32_t)"}];
  [v0 handleFailureInFunction:v1 file:@"HKRegulatoryRegions.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getNRVersionIsGreaterThanOrEqualSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKRegulatoryRegions.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getAADeviceManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAADeviceManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHealthServicesManager.m" lineNumber:34 description:{@"Unable to find class %s", "AADeviceManager"}];

  __break(1u);
}

void AudioAccessoryServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AudioAccessoryServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKHealthServicesManager.m" lineNumber:33 description:{@"%s", *a1}];

  __break(1u);
}

void __getAASystemStateMonitorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAASystemStateMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHealthServicesManager.m" lineNumber:35 description:{@"Unable to find class %s", "AASystemStateMonitor"}];

  __break(1u);
}

void __getAADeviceConfigClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAADeviceConfigClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHealthServicesManager.m" lineNumber:36 description:{@"Unable to find class %s", "AADeviceConfig"}];

  __break(1u);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t PB::TextFormatter::format(PB::TextFormatter *this, const char *a2)
{
  return MEMORY[0x1EEE30A70](this, a2);
}

{
  return MEMORY[0x1EEE30A78](this, a2);
}

uint64_t PB::Writer::writeVarInt(PB::Writer *this)
{
  return MEMORY[0x1EEE30B08](this);
}

{
  return MEMORY[0x1EEE30B10](this);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}