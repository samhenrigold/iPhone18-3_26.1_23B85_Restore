void *sub_1BAF522B4(void *a1)
{
  v54 = a1;
  v1 = sub_1BAF8E4F8();
  v51 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v50 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BAF8E598();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v44 - v8;
  v9 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = *(v4 + 56);
  v56 = &v44 - v17;
  v57 = v3;
  v18 = v16;
  v16();
  v19 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v20 = sub_1BAF8EEA8();

  v21 = *(v20 + 16);
  v53 = v21;
  if (v21)
  {
    v45 = *(v20 + 16 + 16 * v21);
    v55 = v4;

    v22 = v51;
    v48 = v18;
    (v18)(v12, 1, 1, v57);
    v23 = *MEMORY[0x1E6968F70];
    v49 = v15;
    v24 = v50;
    v47 = v4 + 56;
    v25 = *(v22 + 104);
    v25(v50, v23, v1);
    v46 = v25;
    sub_1BAF8E568();
    *&v58[0] = 0xD00000000000001DLL;
    *(&v58[0] + 1) = 0x80000001BAFA2A80;
    v25(v24, v23, v1);
    v45 = sub_1BAF2DB58();
    v26 = v52;
    sub_1BAF8E578();
    v27 = *(v22 + 8);
    v27(v24, v1);
    v28 = *(v55 + 8);
    v55 += 8;
    v28(v7, v57);
    *&v58[0] = 7562359;
    *(&v58[0] + 1) = 0xE300000000000000;
    v46(v24, v23, v1);
    v29 = v56;
    v30 = v57;
    v31 = v49;
    sub_1BAF8E578();
    v27(v24, v1);
    v28(v26, v30);
    sub_1BAF32F04(v29, &qword_1EBC36CC0, &qword_1BAF955D0);
    v32 = v48;
    (v48)(v31, 0, 1, v30);
    v15 = v31;
    sub_1BAF5406C(v31, v29);
    v18 = v32;
  }

  else
  {
  }

  type metadata accessor for WorkOrderDatabaseStore();
  v33 = swift_allocObject();
  sub_1BAF3E4B0();
  v34 = sub_1BAF8F0C8();
  type metadata accessor for DatabaseManager();
  v35 = swift_allocObject();
  v36 = v54;
  *(v35 + 16) = v34;
  *(v35 + 24) = v36;
  *(v33 + 16) = v35;
  sub_1BAF32F64(v56, v15, &qword_1EBC36CC0, &qword_1BAF955D0);
  type metadata accessor for WorkDataStore(0);
  v37 = swift_allocObject();
  v38 = OBJC_IVAR____TtC12APFoundation13WorkDataStore_basePath;
  (v18)(v37 + OBJC_IVAR____TtC12APFoundation13WorkDataStore_basePath, 1, 1, v57);
  swift_beginAccess();
  v39 = v36;

  sub_1BAF540DC(v15, v37 + v38);
  swift_endAccess();
  type metadata accessor for DefaultWorkerFactory();
  memset(v58, 0, sizeof(v58));
  v59 = 0;
  v40 = swift_allocObject();
  type metadata accessor for WorkTimer();
  v41 = swift_allocObject();
  v42 = sub_1BAF5414C(v33, v37, v40, v41, v58);

  off_1EDBA31E0 = v42;

  if (off_1EDBA31E0)
  {
    *(off_1EDBA31E0 + 24) = v53 != 0;
    sub_1BAF32F04(v56, &qword_1EBC36CC0, &qword_1BAF955D0);
    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BAF528E8()
{
  v1 = sub_1BAF8E728();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() deviceUnlockedSinceBoot])
  {
    if (*(v0 + 24) == 1)
    {
      sub_1BAF8E718();
      sub_1BAF33A2C(v4);
      (*(v2 + 8))(v4, v1);
      return;
    }

    v6 = sub_1BAF8F038();
    sub_1BAF3E4B0();
    v7 = sub_1BAF8F0C8();
    sub_1BAF8E8B8(v6, &dword_1BADC1000, v7, "Can't access Application Support Directory", 42, 2, MEMORY[0x1E69E7CC0]);

    v10 = sub_1BAF8EC28();
    APSimulateCrash(5, v10, 0);
  }

  else
  {
    v5 = sub_1BAF8F038();
    sub_1BAF3E4B0();
    v10 = sub_1BAF8F0C8();
    sub_1BAF8E8B8(v5, &dword_1BADC1000, v10, "Device was not unlocked.", 24, 2, MEMORY[0x1E69E7CC0]);
  }

  v8 = v10;
}

uint64_t WorkCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WorkCoordinator.createAndSchedule(workerName:group:workData:scheduledTime:requestorId:requestorData:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v86 = a8;
  v94 = a6;
  v90 = a5;
  v91 = a4;
  *&v89 = a3;
  v88 = a2;
  v87 = a1;
  v70 = type metadata accessor for WorkCommand(0);
  MEMORY[0x1EEE9AC00](v70);
  v74 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for WorkOrder(0);
  MEMORY[0x1EEE9AC00](v81);
  v92 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1BAF8E788();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BAF8E728();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v80 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v69 - v21;
  v23 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v73 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v69 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v69 - v29;
  v85 = *a12;
  v84 = *(a12 + 8);
  v93 = *(v12 + 16);
  (*(v18 + 16))(&v69 - v29, a7, v17);
  v31 = *(v18 + 56);
  v31(v30, 0, 1, v17);
  type metadata accessor for WorkOrderBuilder(0);
  v32 = swift_allocObject();
  *(v32 + 3) = 0;
  *(v32 + 4) = 0;
  *(v32 + 2) = 0;
  v33 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime;
  v31(&v32[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime], 1, 1, v17);
  v82 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state;
  v32[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state] = 0;
  v34 = &v32[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId];
  *v34 = 0;
  v34[1] = 0;
  v83 = v34;
  v35 = &v32[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData];
  *v35 = 0;
  v35[1] = 0;
  v72 = v18 + 56;
  v71 = v31;
  v31(&v32[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_created], 1, 1, v17);
  v36 = &v32[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState];
  *v36 = 0;
  *(v36 + 1) = 0;
  v95 = v30;
  sub_1BAF32F64(v30, v28, &unk_1EBC36750, &qword_1BAF95590);
  v37 = *(v18 + 48);
  if (v37(v28, 1, v17) == 1)
  {
    v75 = v37;
    v80 = (v18 + 48);
    sub_1BAF32F04(v28, &unk_1EBC36750, &qword_1BAF95590);
    v38 = 1;
    v39 = v17;
  }

  else
  {
    v79 = v33;
    (*(v18 + 32))(v22, v28, v17);
    v40 = v80;
    sub_1BAF8E718();
    v41 = sub_1BAF8E688();
    v42 = *(v18 + 8);
    v42(v40, v17);
    v42(v22, v17);
    if ((v41 & 1) == 0)
    {

      v60 = 0;
LABEL_21:
      sub_1BAF32F04(v95, &unk_1EBC36750, &qword_1BAF95590);
      return v60;
    }

    v39 = v17;
    v75 = v37;
    v80 = (v18 + 48);
    v38 = 0;
    v33 = v79;
  }

  v43 = a10;
  v32[v82] = v38;
  v44 = v94 >> 60;
  if (v94 >> 60 != 15)
  {
    v79 = v33;
    v45 = v76;
    sub_1BAF8E778();
    v46 = sub_1BAF8E748();
    v48 = v47;
    v49 = v45;
    v33 = v79;
    (*(v77 + 8))(v49, v78);
    *(v32 + 2) = v46;
    *(v32 + 3) = v48;
    v43 = a10;
  }

  swift_beginAccess();
  sub_1BAF3B5C0(v95, &v32[v33]);
  swift_endAccess();
  v50 = v83;
  *v83 = v86;
  v50[1] = a9;
  *v35 = v43;
  v35[1] = a11;
  v51 = v85;
  if (v84)
  {
    v51 = 0;
  }

  *(v32 + 4) = v51;

  v52 = v92;
  sub_1BAF7184C(v87, v88, v89, v91, v92);
  v91 = *v52;
  v53 = v93;
  sub_1BADC8524((v93 + 104), *(v93 + 128));

  sub_1BAF553D0(v52);
  v54 = v44 > 0xE;
  v55 = v94;
  v56 = v90;
  if (!v54)
  {
    v57 = &v52[*(v81 + 24)];
    v58 = *(v57 + 1);
    if (v58)
    {
      v59 = *v57;
      sub_1BADC8524((v53 + 144), *(v53 + 168));
      sub_1BAF3B678(v56, v55);
      sub_1BAF5C160(v59, v58, v56, v55);
      sub_1BAF3B72C(v56, v55);
    }
  }

  if (v75(v95, 1, v39) != 1)
  {
    if (v52[*(v81 + 40)])
    {
      result = os_transaction_create();
      v67 = result;
      if (!result)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v67 = 0;
    }

    v68 = v73;
    v71(v73, 1, 1, v39);
    sub_1BAF398A4(v52, v68, v67);

    swift_unknownObjectRelease();
    sub_1BAF32F04(v68, &unk_1EBC36750, &qword_1BAF95590);
    goto LABEL_20;
  }

  v61 = swift_allocObject();
  *(v61 + 16) = v56;
  *(v61 + 24) = v55;
  v62 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
  v63 = v74;
  v64 = (v74 + v62[12]);
  sub_1BAF4016C(v52, v74);
  *v64 = sub_1BAF5495C;
  v64[1] = v61;
  sub_1BAF3B664(v56, v55);

  result = os_transaction_create();
  if (result)
  {
    v66 = (v63 + v62[20]);
    *(v63 + v62[16]) = result;
    *v66 = 0;
    v66[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BAF36C9C(v63);

    sub_1BAF3B6CC(v63, type metadata accessor for WorkCommand);
LABEL_20:
    sub_1BAF3B6CC(v52, type metadata accessor for WorkOrder);
    v60 = v91;
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t WorkCoordinator.createAndRun(workerName:group:workData:requestorId:requestorData:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v73 = a8;
  v71 = a7;
  v80 = a6;
  v78 = a5;
  v76 = a4;
  v75 = a3;
  v74 = a2;
  v72 = a1;
  v67 = type metadata accessor for WorkCommand(0);
  MEMORY[0x1EEE9AC00](v67);
  *&v77 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for WorkOrder(0);
  MEMORY[0x1EEE9AC00](v64);
  v79 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1BAF8E788();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BAF8E728();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v66 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v59 - v19;
  v20 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v59 - v24;
  v70 = *a11;
  v69 = *(a11 + 8);
  v81 = *(v11 + 16);
  v26 = *(v16 + 56);
  v26(&v59 - v24, 1, 1, v15);
  type metadata accessor for WorkOrderBuilder(0);
  v27 = swift_allocObject();
  *(v27 + 3) = 0;
  *(v27 + 4) = 0;
  *(v27 + 2) = 0;
  v68 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime;
  v26(&v27[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime], 1, 1, v15);
  v28 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state;
  v27[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state] = 0;
  v29 = &v27[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v27[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData];
  *v30 = 0;
  *(v30 + 1) = 0;
  v26(&v27[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_created], 1, 1, v15);
  v31 = &v27[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState];
  *v31 = 0;
  *(v31 + 1) = 0;
  v82 = v25;
  sub_1BAF32F64(v25, v23, &unk_1EBC36750, &qword_1BAF95590);
  if ((*(v16 + 48))(v23, 1, v15) == 1)
  {
    sub_1BAF32F04(v23, &unk_1EBC36750, &qword_1BAF95590);
    v32 = 1;
  }

  else
  {
    v60 = v28;
    v33 = v65;
    (*(v16 + 32))(v65, v23, v15);
    v34 = v66;
    sub_1BAF8E718();
    v35 = sub_1BAF8E688();
    v36 = *(v16 + 8);
    v36(v34, v15);
    v36(v33, v15);
    if ((v35 & 1) == 0)
    {

      v46 = 0;
LABEL_15:
      sub_1BAF32F04(v82, &unk_1EBC36750, &qword_1BAF95590);
      return v46;
    }

    v32 = 0;
    v28 = v60;
  }

  v27[v28] = v32;
  v37 = v80 >> 60;
  if (v80 >> 60 != 15)
  {
    v38 = v61;
    sub_1BAF8E778();
    v39 = sub_1BAF8E748();
    v41 = v40;
    (*(v62 + 8))(v38, v63);
    *(v27 + 2) = v39;
    *(v27 + 3) = v41;
  }

  v42 = v68;
  swift_beginAccess();
  sub_1BAF3B5C0(v82, &v27[v42]);
  swift_endAccess();
  v43 = v73;
  *v29 = v71;
  v29[1] = v43;
  *v30 = a9;
  *(v30 + 1) = a10;
  v44 = v70;
  if (v69)
  {
    v44 = 0;
  }

  *(v27 + 4) = v44;

  v45 = v79;
  sub_1BAF7184C(v72, v74, v75, v76, v79);
  v46 = *v45;
  sub_1BADC8524(v81 + 13, v81[16]);

  sub_1BAF553D0(v45);
  v47 = v37 > 0xE;
  v48 = v80;
  v49 = v78;
  v50 = v77;
  if (!v47)
  {
    v51 = &v45[*(v64 + 24)];
    v52 = *(v51 + 1);
    if (v52)
    {
      v53 = *v51;
      sub_1BADC8524(v81 + 18, v81[21]);
      sub_1BAF3B678(v49, v48);
      sub_1BAF5C160(v53, v52, v49, v48);
      sub_1BAF3B72C(v49, v48);
    }
  }

  v54 = swift_allocObject();
  *(v54 + 16) = v49;
  *(v54 + 24) = v48;
  v55 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
  v56 = (v50 + v55[12]);
  sub_1BAF4016C(v45, v50);
  *v56 = sub_1BAF5495C;
  v56[1] = v54;
  sub_1BAF3B664(v49, v48);

  result = os_transaction_create();
  if (result)
  {
    v58 = (v50 + v55[20]);
    *(v50 + v55[16]) = result;
    *v58 = 0;
    v58[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BAF36C9C(v50);

    sub_1BAF3B6CC(v50, type metadata accessor for WorkCommand);
    sub_1BAF3B6CC(v45, type metadata accessor for WorkOrder);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAF5406C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF540DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF5414C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a4;
  v66 = a5;
  v8 = type metadata accessor for WorkOrderDatabaseStore();
  v88[3] = v8;
  v88[4] = &off_1F38F6640;
  v88[0] = a1;
  v9 = type metadata accessor for WorkDataStore(0);
  v86 = v9;
  v87 = &off_1F38F6A68;
  v85[0] = a2;
  v10 = type metadata accessor for DefaultWorkerFactory();
  v83 = v10;
  v84 = &off_1F38F5878;
  v82[0] = a3;
  type metadata accessor for WorkCoordinator();
  v11 = swift_allocObject();
  v64 = v11;
  v12 = sub_1BAF3BB10(v88, v8);
  v13 = *(v8 - 8);
  v62[1] = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v63 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (v62 - v63);
  v62[0] = *(v13 + 16);
  (v62[0])(v62 - v63);
  v16 = sub_1BAF3BB10(v85, v86);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_1BAF3BB10(v82, v83);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v15;
  v25 = *v18;
  v26 = *v22;
  v81[3] = v8;
  v81[4] = &off_1F38F6640;
  v81[0] = v24;
  v80[3] = v9;
  v80[4] = &off_1F38F6A68;
  v80[0] = v25;
  v79[3] = v10;
  v79[4] = &off_1F38F5878;
  v79[0] = v26;
  *(v11 + 24) = 1;
  sub_1BAF3BB60(v81, v78);
  sub_1BAF3BB60(v80, v77);
  sub_1BAF3BB60(v79, v76);
  sub_1BAF32F64(v66, v74, &qword_1EBC367C0, &qword_1BAF955F8);
  v27 = sub_1BAF3BB10(v78, v78[3]);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = sub_1BAF3BB10(v77, v77[3]);
  MEMORY[0x1EEE9AC00](v31);
  v33 = (v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = sub_1BAF3BB10(v76, v76[3]);
  MEMORY[0x1EEE9AC00](v35);
  v37 = (v62 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = *v29;
  v40 = *v33;
  v41 = *v37;
  v73[3] = v8;
  v73[4] = &off_1F38F6640;
  v73[0] = v39;
  v71 = v9;
  v72 = &off_1F38F6A68;
  v42 = v9;
  v70[0] = v40;
  v68 = v10;
  v69 = &off_1F38F5878;
  v43 = v10;
  v67[0] = v41;
  type metadata accessor for WorkCommandProcessor();
  v44 = swift_allocObject();
  v45 = sub_1BAF3BB10(v73, v8);
  MEMORY[0x1EEE9AC00](v45);
  v46 = (v62 - v63);
  (v62[0])(v62 - v63);
  v47 = sub_1BAF3BB10(v70, v71);
  MEMORY[0x1EEE9AC00](v47);
  v49 = (v62 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = sub_1BAF3BB10(v67, v68);
  MEMORY[0x1EEE9AC00](v51);
  v53 = (v62 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53);
  v55 = *v46;
  v56 = *v49;
  v57 = *v53;
  *(v44 + 128) = v8;
  *(v44 + 136) = &off_1F38F6640;
  *(v44 + 104) = v55;
  *(v44 + 168) = v42;
  *(v44 + 176) = &off_1F38F6A68;
  *(v44 + 144) = v56;
  *(v44 + 88) = v43;
  *(v44 + 96) = &off_1F38F5878;
  *(v44 + 64) = v57;
  sub_1BAF32F04(v66, &qword_1EBC367C0, &qword_1BAF955F8);
  sub_1BADC5BE0(v79);
  sub_1BADC5BE0(v80);
  sub_1BADC5BE0(v81);
  v58 = v74[1];
  *(v44 + 16) = v74[0];
  *(v44 + 32) = v58;
  v59 = v65;
  *(v44 + 48) = v75;
  *(v44 + 56) = v59;
  sub_1BADC5BE0(v67);
  sub_1BADC5BE0(v70);
  sub_1BADC5BE0(v73);
  sub_1BADC5BE0(v76);
  sub_1BADC5BE0(v77);
  sub_1BADC5BE0(v78);
  v60 = v64;
  *(v64 + 16) = v44;
  sub_1BADC5BE0(v82);
  sub_1BADC5BE0(v85);
  sub_1BADC5BE0(v88);
  return v60;
}

uint64_t static Logger.subscript.getter(unint64_t a1)
{
  v1 = APLogForCategory(a1);

  return sub_1BAF8E948();
}

uint64_t static Tools.codableToBinaryData<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  sub_1BAF8EC38();
  sub_1BAF8F058();
  if (v3)
  {
  }

  else
  {

    [v4 finishEncoding];
    v6 = [v4 encodedData];
    v7 = sub_1BAF8E5F8();

    return v7;
  }
}

uint64_t static Tools.codableFromBinaryData<A>(_:type:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1BAF3B678(a1, a2);
  v9 = sub_1BAF54B80(a1, a2);
  result = sub_1BAF2DABC(a1, a2);
  if (!v5)
  {
    sub_1BAF8EC38();
    sub_1BAF8F068();
  }

  return result;
}

id sub_1BAF54B80(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1BAF8E5D8();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1BAF8E4C8();

    swift_willThrow();
  }

  return v4;
}

uint64_t _s12APFoundation5ToolsO13fullClassNameySSypFZ_0(uint64_t a1)
{
  sub_1BAF45388(a1, v18);
  v2 = sub_1BAF8ECA8();
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = 4 * v4;
    while (sub_1BAF8EDF8() != 46 || v6 != 0xE100000000000000)
    {
      v7 = sub_1BAF8F4C8();

      if ((v7 & 1) != 0 || v5 == sub_1BAF8ED38() >> 14)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_12:
  v8 = sub_1BAF8EE18();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x1BFB04820](v8, v10, v12, v14);

  MEMORY[0x1BFB048C0](46, 0xE100000000000000);
  sub_1BAF45388(a1, v18);
  v16 = sub_1BAF8EC88();
  MEMORY[0x1BFB048C0](v16);

  return v15;
}

uint64_t sub_1BAF54DFC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v4 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v64 - v5;
  v7 = sub_1BAF8E728();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  sub_1BADC8524(a1, v11);
  result = (*(v12 + 48))(3, v11, v12);
  if (v2)
  {
    return result;
  }

  v78 = v8;
  v79 = v10;
  v14 = v80;
  if (!result)
  {
    v77 = 0;
    v15 = v7;
    goto LABEL_8;
  }

  v15 = v7;
  if (result == 3)
  {
    v77 = 2;
LABEL_8:
    v16 = v6;
    goto LABEL_9;
  }

  if (result == 1)
  {
    v16 = v6;
    v77 = 1;
LABEL_9:
    v17 = a1[3];
    v18 = a1[4];
    sub_1BADC8524(a1, v17);
    v19 = (*(v18 + 80))(0, v17, v18);
    v20 = v79;
    v75 = v19;
    v76 = v21;
    v22 = a1[3];
    v23 = a1[4];
    sub_1BADC8524(a1, v22);
    (*(v23 + 96))(1, v22, v23);
    v25 = a1[3];
    v26 = a1[4];
    sub_1BADC8524(a1, v25);
    v72 = (*(v26 + 88))(2, v25, v26);
    v74 = v27;
    v28 = a1[3];
    v29 = a1[4];
    sub_1BADC8524(a1, v28);
    v71 = (*(v29 + 88))(4, v28, v29);
    v73 = v30;
    v31 = a1[3];
    v32 = a1[4];
    sub_1BADC8524(a1, v31);
    (*(v32 + 104))(5, v31, v32);
    v33 = a1[3];
    v34 = a1[4];
    sub_1BADC8524(a1, v33);
    v70 = (*(v34 + 48))(6, v33, v34);
    v35 = a1[3];
    v36 = a1[4];
    sub_1BADC8524(a1, v35);
    v67 = (*(v36 + 80))(7, v35, v36);
    v68 = v37;
    v38 = a1[3];
    v39 = a1[4];
    sub_1BADC8524(a1, v38);
    v40 = (*(v39 + 80))(8, v38, v39);
    v69 = 0;
    v41 = a1[3];
    v42 = a1[4];
    v65 = v43;
    v66 = v40;
    sub_1BADC8524(a1, v41);
    v44 = (*(v42 + 88))(9, v41, v42);
    v64 = v45;
    v46 = a1[3];
    v47 = a1[4];
    sub_1BADC8524(a1, v46);
    v48 = (*(v47 + 88))(10, v46, v47);
    v50 = v49;
    v51 = v76;
    *v14 = v75;
    *(v14 + 1) = v51;
    v52 = type metadata accessor for WorkOrder(0);
    (*(v78 + 32))(&v14[v52[5]], v20, v15);
    v53 = &v14[v52[6]];
    v54 = v74;
    *v53 = v72;
    v53[1] = v54;
    v14[v52[7]] = v77;
    v55 = &v14[v52[8]];
    v56 = v73;
    *v55 = v71;
    v55[1] = v56;
    result = sub_1BAF55F0C(v16, &v14[v52[9]]);
    *&v14[v52[10]] = v70;
    v57 = &v14[v52[11]];
    v58 = v68;
    *v57 = v67;
    v57[1] = v58;
    v59 = &v14[v52[12]];
    v60 = v65;
    *v59 = v66;
    v59[1] = v60;
    v61 = &v14[v52[13]];
    v62 = v64;
    *v61 = v44;
    v61[1] = v62;
    v63 = &v14[v52[14]];
    *v63 = v48;
    v63[1] = v50;
    return result;
  }

  sub_1BAF4098C();
  swift_allocError();
  *v24 = 0xD00000000000001BLL;
  *(v24 + 8) = 0x80000001BAFA2E30;
  *(v24 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1BAF553D0(char *a1)
{
  v2 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v46 - v3;
  sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BAF97010;
  v6 = *(a1 + 1);
  *(inited + 32) = *a1;
  v46 = inited + 32;
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &protocol witness table for String;
  *(inited + 40) = v6;
  v7 = type metadata accessor for WorkOrder(0);
  v8 = v7[5];
  v9 = sub_1BAF8E728();
  *(inited + 96) = v9;
  *(inited + 104) = &protocol witness table for Date;
  v10 = sub_1BAF3BAAC((inited + 72));
  v11 = *(v9 - 8);
  (*(v11 + 16))(v10, &a1[v8], v9);
  v12 = &a1[v7[6]];
  v13 = *(v12 + 1);
  if (v13)
  {
    v14 = *v12;
    v15 = &protocol witness table for String;
    v16 = v13;
    v17 = MEMORY[0x1E69E6158];
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    *(inited + 128) = 0;
  }

  *(inited + 112) = v14;
  *(inited + 120) = v16;
  *(inited + 136) = v17;
  *(inited + 144) = v15;
  v18 = qword_1BAF97088[a1[v7[7]]];
  *(inited + 176) = MEMORY[0x1E69E6530];
  *(inited + 184) = &protocol witness table for Int;
  *(inited + 152) = v18;
  v19 = &a1[v7[8]];
  v20 = *(v19 + 1);
  if (v20)
  {
    v21 = *v19;
    v22 = &protocol witness table for String;
    v23 = v20;
    v24 = MEMORY[0x1E69E6158];
  }

  else
  {
    v21 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v21;
  *(inited + 200) = v23;
  *(inited + 216) = v24;
  *(inited + 224) = v22;
  sub_1BAF400F4(&a1[v7[9]], v4);
  if ((*(v11 + 48))(v4, 1, v9) == 1)
  {

    sub_1BAF55EA4(v4);
    *(inited + 232) = 0u;
    *(inited + 248) = 0u;
    *(inited + 264) = 0;
  }

  else
  {
    *(inited + 256) = v9;
    *(inited + 264) = &protocol witness table for Date;
    v25 = sub_1BAF3BAAC((inited + 232));
    (*(v11 + 32))(v25, v4, v9);
  }

  v26 = *&a1[v7[10]];
  *(inited + 296) = MEMORY[0x1E69E6530];
  *(inited + 304) = &protocol witness table for Int;
  *(inited + 272) = v26;
  v27 = &a1[v7[11]];
  v28 = *v27;
  v29 = *(v27 + 1);
  v30 = MEMORY[0x1E69E6158];
  *(inited + 336) = MEMORY[0x1E69E6158];
  *(inited + 344) = &protocol witness table for String;
  *(inited + 312) = v28;
  *(inited + 320) = v29;
  v31 = &a1[v7[12]];
  v32 = *v31;
  v33 = *(v31 + 1);
  *(inited + 376) = v30;
  *(inited + 384) = &protocol witness table for String;
  *(inited + 352) = v32;
  *(inited + 360) = v33;
  v34 = &a1[v7[13]];
  v35 = *(v34 + 1);
  if (v35)
  {
    v36 = *v34;
    v37 = &protocol witness table for String;
    v38 = v35;
    v39 = MEMORY[0x1E69E6158];
  }

  else
  {
    v36 = 0;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    *(inited + 408) = 0;
  }

  *(inited + 392) = v36;
  *(inited + 400) = v38;
  *(inited + 416) = v39;
  *(inited + 424) = v37;
  v40 = &a1[v7[14]];
  v41 = *(v40 + 1);
  if (v41)
  {
    v42 = *v40;
    v43 = &protocol witness table for String;
    v44 = MEMORY[0x1E69E6158];
  }

  else
  {
    v42 = 0;
    v44 = 0;
    v43 = 0;
    *(inited + 448) = 0;
  }

  *(inited + 432) = v42;
  *(inited + 440) = v41;
  *(inited + 456) = v44;
  *(inited + 464) = v43;

  sub_1BADC826C(0xD0000000000000A1, 0x80000001BAFA2ED0, inited);
  swift_setDeallocating();
  sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
  return swift_arrayDestroy();
}

uint64_t sub_1BAF55800(uint64_t *a1)
{
  v2 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21[-v3];
  sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BAF97020;
  v6 = type metadata accessor for WorkOrder(0);
  v7 = v6;
  *(inited + 32) = qword_1BAF97088[*(a1 + v6[7])];
  *(inited + 56) = MEMORY[0x1E69E6530];
  *(inited + 64) = &protocol witness table for Int;
  v8 = (a1 + v6[8]);
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
    v11 = &protocol witness table for String;
    v12 = v9;
    v13 = MEMORY[0x1E69E6158];
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    *(inited + 88) = 0;
  }

  *(inited + 72) = v10;
  *(inited + 80) = v12;
  *(inited + 96) = v13;
  *(inited + 104) = v11;
  sub_1BAF400F4(a1 + v6[9], v4);
  v14 = sub_1BAF8E728();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v4, 1, v14) == 1)
  {

    sub_1BAF55EA4(v4);
    *(inited + 112) = 0u;
    *(inited + 128) = 0u;
    *(inited + 144) = 0;
  }

  else
  {
    *(inited + 136) = v14;
    *(inited + 144) = &protocol witness table for Date;
    v16 = sub_1BAF3BAAC((inited + 112));
    (*(v15 + 32))(v16, v4, v14);
  }

  v17 = *(a1 + v7[10]);
  *(inited + 176) = MEMORY[0x1E69E6530];
  *(inited + 184) = &protocol witness table for Int;
  *(inited + 152) = v17;
  v19 = *a1;
  v18 = a1[1];
  *(inited + 216) = MEMORY[0x1E69E6158];
  *(inited + 224) = &protocol witness table for String;
  *(inited + 192) = v19;
  *(inited + 200) = v18;

  sub_1BADC826C(0xD000000000000055, 0x80000001BAFA2E70, inited);
  swift_setDeallocating();
  sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
  return swift_arrayDestroy();
}

uint64_t sub_1BAF55A94@<X0>(void *a1@<X8>)
{
  v3 = sub_1BAF5F9DC(0xD000000000000018, 0x80000001BAFA2E50, 0);
  v4 = sub_1BAF2DB10(&qword_1EBC36CD8, &unk_1BAF97078);
  v10 = v4;
  v11 = sub_1BAF55F7C(qword_1EDBA31F8, &qword_1EBC36CD8, &unk_1BAF97078, &unk_1BAF97A10);
  *&v8 = v3;
  *(&v8 + 1) = sub_1BAF55C3C;
  v9 = 0;
  if (!v4)
  {
    v5 = v8;
    v6 = v9;
    v7 = v11;
    goto LABEL_9;
  }

  sub_1BAF3BB60(&v8, &v5);
  if (!*(&v6 + 1))
  {
LABEL_9:
    a1[3] = sub_1BAF2DB10(&qword_1EBC36CC8, &qword_1BAF97070);
    result = sub_1BAF55F7C(&qword_1EBC36CD0, &qword_1EBC36CC8, &qword_1BAF97070, MEMORY[0x1E69E6328]);
    a1[4] = result;
    *a1 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      result = sub_1BADC5BE0(&v8);
      if (*(&v6 + 1))
      {
        return sub_1BADC5BE0(&v5);
      }
    }

    return result;
  }

  if (v10)
  {
    sub_1BADC5BE0(&v8);
  }

  return sub_1BADC5B38(&v5, a1);
}

uint64_t sub_1BAF55C3C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_1BAF54DFC(a1, a2);
  if (v2)
  {

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = type metadata accessor for WorkOrder(0);
  return (*(*(v5 - 8) + 56))(a2, v4, 1, v5);
}

uint64_t sub_1BAF55CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *(v3 + 16);
  sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
  inited = swift_initStackObject();
  *(inited + 32) = a1;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 16) = xmmword_1BAF95190;
  *(inited + 56) = v9;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 40) = a2;

  sub_1BAF5EA9C(0xD000000000000028, 0x80000001BAFA25F0, inited, v7, a3);
  swift_setDeallocating();
  sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
  return swift_arrayDestroy();
}

uint64_t sub_1BAF55E48()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BAF55EA4(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAF55F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF55F7C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BAF2F048(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1BAF55FC4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(&v10);
  v2 = v10;
  v3 = v11;
  if (v11 < 0)
  {
    sub_1BAF8F278();
    v7 = objc_allocWithZone(MEMORY[0x1E698E478]);
    v8 = sub_1BAF8EC28();

    v6 = [v7 initWithIdentifier_];

    [v6 setScheduleAfter_];
    [v6 setPostInstall_];
  }

  else
  {
    sub_1BAF8F278();
    v4 = objc_allocWithZone(MEMORY[0x1E698E490]);
    v5 = sub_1BAF8EC28();

    v6 = [v4 initWithIdentifier_];

    [v6 setInterval_];
  }

  return v6;
}

uint64_t BackgroundTaskScheduler.__allocating_init(queue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = sub_1BAF329F0(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t BackgroundTaskScheduler.init(queue:)(uint64_t a1)
{
  v3 = sub_1BAF329F0(MEMORY[0x1E69E7CC0]);
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t BackgroundTaskScheduler.register<A>(task:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a4;
  v10 = sub_1BAF8E938();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a3 - 8);
  v13 = *(v42 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = *(a4 + 8);
  sub_1BAF8F278();
  v18 = v56;
  v19 = v57;
  sub_1BAF3BB60(a2, &aBlock);
  swift_beginAccess();
  sub_1BAF31CEC(&aBlock, v18, v19);
  swift_endAccess();
  v41 = [objc_opt_self() sharedScheduler];
  v43 = a1;
  v39 = v17;
  sub_1BAF8F278();
  v20 = sub_1BAF8EC28();

  v40 = *(v5 + 16);
  v21 = a2;
  v22 = v42;
  sub_1BAF3BB60(v21, v55);
  v23 = *(v22 + 16);
  v23(v16, a1, a3);
  v24 = (*(v22 + 80) + 72) & ~*(v22 + 80);
  v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v44;
  *(v26 + 16) = a3;
  *(v26 + 24) = v27;
  sub_1BADC5B38(v55, v26 + 32);
  (*(v22 + 32))(v26 + v24, v16, a3);
  *(v26 + v25) = v5;
  v53 = sub_1BAF58878;
  v54 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1BAF57970;
  v52 = &unk_1F38F66A0;
  v28 = _Block_copy(&aBlock);
  v29 = v45;

  v30 = v46;

  v31 = v41;
  [v41 registerForTaskWithIdentifier:v20 usingQueue:v40 launchHandler:v28];
  _Block_release(v28);

  v32 = APLogForCategory(0x35uLL);
  sub_1BAF8E948();
  v23(v29, v43, a3);
  v33 = sub_1BAF8E918();
  v34 = sub_1BAF8F028();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v55[0] = v36;
    *v35 = 136315138;
    sub_1BAF8F278();
    (*(v22 + 8))(v29, a3);
    v37 = sub_1BAF49CF8(aBlock, v50, v55);

    *(v35 + 4) = v37;
    _os_log_impl(&dword_1BADC1000, v33, v34, "%s: Registered task.", v35, 0xCu);
    sub_1BADC5BE0(v36);
    MEMORY[0x1BFB06160](v36, -1, -1);
    MEMORY[0x1BFB06160](v35, -1, -1);
  }

  else
  {

    (*(v22 + 8))(v29, a3);
  }

  return (*(v47 + 8))(v30, v48);
}

id sub_1BAF5666C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a4;
  v54 = a1;
  v10 = sub_1BAF8E938();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v51 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BAF2DB10(&qword_1EBC36CE0, &qword_1BAF97128);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v48 = &v47 - v16;
  v18 = a2[3];
  v17 = a2[4];
  sub_1BADC8524(a2, v18);
  v19 = *(v17 + 8);
  v20 = a3;
  v49 = a6;
  if (v19(a3, a5, a6, v18, v17))
  {
    v21 = sub_1BAF8EF78();
    v22 = v48;
    (*(*(v21 - 8) + 56))(v48, 1, 1, v21);
    v23 = v47;
    (*(v13 + 16))(v47, v20, a5);
    sub_1BAF3BB60(a2, &aBlock);
    v24 = (*(v13 + 80) + 64) & ~*(v13 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    v26 = v49;
    v27 = v50;
    *(v25 + 4) = a5;
    *(v25 + 5) = v26;
    v28 = v54;
    *(v25 + 6) = v27;
    *(v25 + 7) = v28;
    (*(v13 + 32))(&v25[v24], v23, a5);
    sub_1BADC5B38(&aBlock, &v25[(v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8]);

    v29 = v28;
    v30 = sub_1BAF574DC(0, 0, v22, &unk_1BAF97138, v25);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    v58 = sub_1BAF58E6C;
    v59 = v31;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v56 = sub_1BAF4CF6C;
    v57 = &unk_1F38F67A8;
    v32 = _Block_copy(&aBlock);
    v33 = v29;

    [v33 setExpirationHandler_];
    _Block_release(v32);
  }

  else
  {
    v35 = APLogForCategory(0x35uLL);
    v36 = v51;
    sub_1BAF8E948();
    v37 = v54;
    v38 = sub_1BAF8E918();
    v39 = sub_1BAF8F028();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&aBlock = v41;
      *v40 = 136315138;
      v42 = [v37 identifier];
      v43 = sub_1BAF8EC38();
      v45 = v44;

      v46 = sub_1BAF49CF8(v43, v45, &aBlock);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_1BADC1000, v38, v39, "%s: Task failed precondition check.", v40, 0xCu);
      sub_1BADC5BE0(v41);
      MEMORY[0x1BFB06160](v41, -1, -1);
      MEMORY[0x1BFB06160](v40, -1, -1);
    }

    (*(v52 + 8))(v36, v53);
    return [v37 setTaskCompleted];
  }
}

uint64_t sub_1BAF56B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v13;
  v8[8] = a6;
  v8[9] = a7;
  v8[7] = a5;
  v9 = sub_1BAF8EF58();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v10 = sub_1BAF8E938();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BAF56CAC, 0, 0);
}

uint64_t sub_1BAF56CAC()
{
  v30 = v0;
  v1 = v0[7];
  v2 = APLogForCategory(0x35uLL);
  sub_1BAF8E948();
  v3 = v1;
  v4 = sub_1BAF8E918();
  v5 = sub_1BAF8F028();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  if (v6)
  {
    v10 = v0[7];
    v27 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    v13 = [v10 identifier];
    v14 = sub_1BAF8EC38();
    v16 = v15;

    v17 = sub_1BAF49CF8(v14, v16, &v29);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1BADC1000, v4, v5, "%s: Starting task.", v11, 0xCu);
    sub_1BADC5BE0(v12);
    MEMORY[0x1BFB06160](v12, -1, -1);
    MEMORY[0x1BFB06160](v11, -1, -1);

    v18 = *(v8 + 8);
    v18(v27, v9);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  v0[20] = v18;
  v19 = v0[9];
  v20 = v19[3];
  v21 = v19[4];
  sub_1BADC8524(v19, v20);
  v28 = (*(v21 + 16) + **(v21 + 16));
  v22 = swift_task_alloc();
  v0[21] = v22;
  *v22 = v0;
  v22[1] = sub_1BAF56F48;
  v23 = v0[10];
  v24 = v0[11];
  v25 = v0[8];

  return v28(v25, v23, v24, v20, v21);
}

uint64_t sub_1BAF56F48()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1BAF570F8;
  }

  else
  {
    v2 = sub_1BAF5705C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BAF5705C()
{
  sub_1BAF58F4C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BAF570F8()
{
  v43 = v0;
  v1 = *(v0 + 176);
  *(v0 + 40) = v1;
  v2 = v1;
  sub_1BAF2DB10(&qword_1EBC36890, &qword_1BAF97140);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 176);
  if (v3)
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v37 = *(v0 + 80);
    v39 = *(v0 + 88);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    (*(v7 + 32))(v5, v6, v8);
    sub_1BAF595FC();
    swift_allocError();
    (*(v7 + 16))(v12, v5, v8);
    swift_willThrow();
    (*(v7 + 8))(v5, v8);

    sub_1BAF58F4C(v11, v10, v9, v37, v39);

    v13 = *(v0 + 8);
  }

  else
  {
    v14 = *(v0 + 56);

    v15 = APLogForCategory(0x35uLL);
    sub_1BAF8E948();
    v16 = v14;
    v17 = v4;
    v18 = sub_1BAF8E918();
    v19 = sub_1BAF8F038();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 176);
    v22 = *(v0 + 160);
    v23 = *(v0 + 144);
    v24 = *(v0 + 128);
    if (v20)
    {
      v41 = *(v0 + 160);
      v25 = *(v0 + 56);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42[0] = v27;
      *v26 = 136315394;
      v28 = [v25 identifier];
      v38 = v24;
      v40 = v23;
      v29 = sub_1BAF8EC38();
      v31 = v30;

      v32 = sub_1BAF49CF8(v29, v31, v42);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      swift_getErrorValue();
      v33 = sub_1BAF8F548();
      v35 = sub_1BAF49CF8(v33, v34, v42);

      *(v26 + 14) = v35;
      _os_log_impl(&dword_1BADC1000, v18, v19, "%s: Task failed with unhandled error: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB06160](v27, -1, -1);
      MEMORY[0x1BFB06160](v26, -1, -1);

      v41(v40, v38);
    }

    else
    {

      v22(v23, v24);
    }

    sub_1BAF58F4C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_1BAF574DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BAF2DB10(&qword_1EBC36CE0, &qword_1BAF97128);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1BAF58E74(a3, v22 - v9);
  v11 = sub_1BAF8EF78();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1BAF58EE4(v10);
  }

  else
  {
    sub_1BAF8EF68();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BAF8EF48();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1BAF8ECB8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1BAF58EE4(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BAF58EE4(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1BAF57748(void *a1, uint64_t a2)
{
  v4 = sub_1BAF8E938();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = APLogForCategory(0x35uLL);
  sub_1BAF8E948();
  v9 = a1;
  v10 = sub_1BAF8E918();
  v11 = sub_1BAF8F018();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    v15 = [v9 identifier];
    v16 = sub_1BAF8EC38();
    v18 = v17;

    v19 = sub_1BAF49CF8(v16, v18, &v22);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1BADC1000, v10, v11, "%s: Task is being cancelled.", v13, 0xCu);
    sub_1BADC5BE0(v14);
    MEMORY[0x1BFB06160](v14, -1, -1);
    MEMORY[0x1BFB06160](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_1BAF2DB10(&qword_1EBC36890, &qword_1BAF97140);
  return sub_1BAF8EF88();
}

void sub_1BAF57970(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void BackgroundTaskScheduler.deregister<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAF8E938();
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() sharedScheduler];
  sub_1BAF8F278();
  v12 = sub_1BAF8EC28();

  v13 = [v11 deregisterTaskWithIdentifier_];

  if (v13)
  {
    sub_1BAF8F278();
    v14 = v28;
    v15 = v29;
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    swift_beginAccess();
    sub_1BAF31CEC(v26, v14, v15);
    swift_endAccess();
    v16 = APLogForCategory(0x35uLL);
    sub_1BAF8E948();
    (*(v5 + 16))(v7, a1, a2);
    v17 = sub_1BAF8E918();
    v18 = sub_1BAF8F028();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25[0] = v20;
      *v19 = 136315138;
      sub_1BAF8F278();
      (*(v5 + 8))(v7, a2);
      v21 = sub_1BAF49CF8(*&v26[0], *(&v26[0] + 1), v25);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_1BADC1000, v17, v18, "%s: Deregistered task.", v19, 0xCu);
      sub_1BADC5BE0(v20);
      MEMORY[0x1BFB06160](v20, -1, -1);
      MEMORY[0x1BFB06160](v19, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, a2);
    }

    (*(v23 + 8))(v10, v24);
  }
}

uint64_t BackgroundTaskScheduler.schedule<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAF8E938();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedScheduler];
  v13 = sub_1BAF55FC4(a2, a3);
  v14 = (*(a3 + 24))(v13, a2, a3);

  v27[0] = 0;
  LODWORD(v13) = [v12 submitTaskRequest:v14 error:v27];

  if (v13)
  {
    v15 = v27[0];
    v16 = APLogForCategory(0x35uLL);
    sub_1BAF8E948();
    (*(v6 + 16))(v8, a1, a2);
    v17 = sub_1BAF8E918();
    v18 = sub_1BAF8F028();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28[0] = v24;
      *v19 = 136315138;
      sub_1BAF8F278();
      (*(v6 + 8))(v8, a2);
      v20 = sub_1BAF49CF8(v27[0], v27[1], v28);

      *(v19 + 4) = v20;
      _os_log_impl(&dword_1BADC1000, v17, v18, "%s: Scheduled task.", v19, 0xCu);
      v21 = v24;
      sub_1BADC5BE0(v24);
      MEMORY[0x1BFB06160](v21, -1, -1);
      MEMORY[0x1BFB06160](v19, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, a2);
    }

    return (*(v25 + 8))(v11, v26);
  }

  else
  {
    v22 = v27[0];
    sub_1BAF8E4C8();

    return swift_willThrow();
  }
}

uint64_t BackgroundTaskScheduler.cancel<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v24 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAF8E938();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedScheduler];
  sub_1BAF8F278();
  v11 = sub_1BAF8EC28();

  v25[0] = 0;
  v12 = [v10 cancelTaskRequestWithIdentifier:v11 error:v25];

  if (v12)
  {
    v13 = v25[0];
    v14 = APLogForCategory(0x35uLL);
    sub_1BAF8E948();
    (*(v24 + 16))(v6, a1, a2);
    v15 = sub_1BAF8E918();
    v16 = sub_1BAF8F028();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26[0] = v18;
      *v17 = 136315138;
      sub_1BAF8F278();
      (*(v24 + 8))(v6, a2);
      v19 = sub_1BAF49CF8(v25[0], v25[1], v26);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_1BADC1000, v15, v16, "%s: Cancelled task.", v17, 0xCu);
      sub_1BADC5BE0(v18);
      MEMORY[0x1BFB06160](v18, -1, -1);
      MEMORY[0x1BFB06160](v17, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v6, a2);
    }

    return (*(v22 + 8))(v9, v23);
  }

  else
  {
    v20 = v25[0];
    sub_1BAF8E4C8();

    return swift_willThrow();
  }
}

uint64_t BackgroundTaskScheduler.update<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAF8E938();
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() sharedScheduler];
  v26[1] = a3;
  v14 = sub_1BAF55FC4(a2, a3);
  v29[0] = 0;
  v15 = [v13 updateTaskRequest:v14 error:v29];

  if (v15)
  {
    v16 = v29[0];
    v17 = APLogForCategory(0x35uLL);
    sub_1BAF8E948();
    (*(v7 + 16))(v9, a1, a2);
    v18 = sub_1BAF8E918();
    v19 = sub_1BAF8F028();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26[0] = v3;
      v22 = v21;
      v30[0] = v21;
      *v20 = 136315138;
      sub_1BAF8F278();
      (*(v7 + 8))(v9, a2);
      v23 = sub_1BAF49CF8(v29[0], v29[1], v30);

      *(v20 + 4) = v23;
      _os_log_impl(&dword_1BADC1000, v18, v19, "%s: Updated task.", v20, 0xCu);
      sub_1BADC5BE0(v22);
      MEMORY[0x1BFB06160](v22, -1, -1);
      MEMORY[0x1BFB06160](v20, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, a2);
    }

    return (*(v27 + 8))(v12, v28);
  }

  else
  {
    v24 = v29[0];
    sub_1BAF8E4C8();

    return swift_willThrow();
  }
}

Swift::Bool __swiftcall BackgroundTaskScheduler.isScheduled(taskID:)(Swift::String taskID)
{
  v1 = [objc_opt_self() sharedScheduler];
  v2 = sub_1BAF8EC28();
  v3 = [v1 taskRequestForIdentifier_];

  if (v3)
  {
  }

  return v3 != 0;
}

uint64_t sub_1BAF588E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t initializeBufferWithCopyOfBuffer for BackgroundTaskMode(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundTaskMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for BackgroundTaskMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t dispatch thunk of BackgroundTaskHandler.perform<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BAF58B70;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1BAF58B70()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BAF58CC8(uint64_t a1)
{
  v3 = v1[4];
  v4 = (*(*(v3 - 8) + 80) + 64) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BAF59658;

  return sub_1BAF56B68(a1, v6, v7, v8, v9, v1 + v4, v1 + v5, v3);
}

uint64_t sub_1BAF58E08(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v2 + 24));

  return a2(v2, 32, 7);
}

uint64_t sub_1BAF58E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&qword_1EBC36CE0, &qword_1BAF97128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF58EE4(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC36CE0, &qword_1BAF97128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BAF58F4C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v87 = a5;
  v88[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1BAF8E938();
  v10 = *(v9 - 1);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v79 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v79 - v17;
  v19 = sub_1BAF8EF98();
  v20 = APLogForCategory(0x35uLL);
  if (v19)
  {
    v85 = v13;
    sub_1BAF8E948();
    v21 = a1;
    v22 = sub_1BAF8E918();
    v23 = sub_1BAF8F028();

    v24 = os_log_type_enabled(v22, v23);
    v86 = a4;
    v83 = a3;
    v84 = a2;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v88[0] = v82;
      *v25 = 136315138;
      v26 = [v21 identifier];
      v27 = sub_1BAF8EC38();
      v28 = v21;
      v29 = v10;
      v30 = v9;
      v32 = v31;

      v33 = sub_1BAF49CF8(v27, v32, v88);
      v9 = v30;
      v10 = v29;
      v21 = v28;

      *(v25 + 4) = v33;
      _os_log_impl(&dword_1BADC1000, v22, v23, "%s: Task cancelled. Scheduling retry...", v25, 0xCu);
      v34 = v82;
      sub_1BADC5BE0(v82);
      MEMORY[0x1BFB06160](v34, -1, -1);
      MEMORY[0x1BFB06160](v25, -1, -1);
    }

    v35 = *(v10 + 1);
    (v35)(v18, v9);
    v88[0] = 0;
    v36 = [v21 setTaskExpiredWithRetryAfter:v88 error:300.0];
    v37 = v88[0];
    if (v36)
    {

      v38 = v37;
    }

    else
    {
      v82 = v88[0];
      v55 = v88[0];
      v56 = sub_1BAF8E4C8();

      swift_willThrow();
      v57 = APLogForCategory(0x35uLL);
      v58 = v85;
      sub_1BAF8E948();
      v59 = v21;
      v60 = sub_1BAF8E918();
      v61 = sub_1BAF8F038();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v81 = v35;
        v88[0] = v80;
        *v62 = 136315138;
        v63 = [v59 identifier];
        v64 = v59;
        v65 = v56;
        v66 = sub_1BAF8EC38();
        v82 = v9;
        v68 = v67;

        v69 = v66;
        v56 = v65;
        v59 = v64;
        v70 = sub_1BAF49CF8(v69, v68, v88);

        *(v62 + 4) = v70;
        _os_log_impl(&dword_1BADC1000, v60, v61, "%s: Failed to expire task with retry.", v62, 0xCu);
        v71 = v80;
        sub_1BADC5BE0(v80);
        MEMORY[0x1BFB06160](v71, -1, -1);
        MEMORY[0x1BFB06160](v62, -1, -1);

        (v81)(v58, v82);
      }

      else
      {

        (v35)(v58, v9);
      }

      v74 = v87;
      v75 = v83;
      v76 = v84;
      [v59 setTaskCompleted];
      v77 = v75[3];
      v78 = v75[4];
      sub_1BADC8524(v75, v77);
      (*(v78 + 24))(v76, v86, v74, v77, v78);
    }
  }

  else
  {
    v85 = v10;
    sub_1BAF8E948();
    v39 = a1;
    v40 = sub_1BAF8E918();
    v41 = sub_1BAF8F028();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v88[0] = v81;
      *v42 = 136315138;
      v43 = [v39 identifier];
      v86 = a4;
      v44 = v43;
      v45 = sub_1BAF8EC38();
      v82 = v9;
      v46 = a2;
      v47 = v45;
      v48 = v39;
      v49 = a3;
      v51 = v50;

      v52 = v47;
      a2 = v46;
      v53 = sub_1BAF49CF8(v52, v51, v88);
      a3 = v49;
      v39 = v48;

      *(v42 + 4) = v53;
      a4 = v86;
      _os_log_impl(&dword_1BADC1000, v40, v41, "%s: Completed task.", v42, 0xCu);
      v54 = v81;
      sub_1BADC5BE0(v81);
      MEMORY[0x1BFB06160](v54, -1, -1);
      MEMORY[0x1BFB06160](v42, -1, -1);

      (*(v85 + 1))(v16, v82);
    }

    else
    {

      (*(v85 + 1))(v16, v9);
    }

    [v39 setTaskCompleted];
    v72 = a3[3];
    v73 = a3[4];
    sub_1BADC8524(a3, v72);
    (*(v73 + 24))(a2, a4, v87, v72, v73);
  }
}

unint64_t sub_1BAF595FC()
{
  result = qword_1EBC36CE8;
  if (!qword_1EBC36CE8)
  {
    sub_1BAF8EF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36CE8);
  }

  return result;
}

uint64_t Date.utcToLocal.getter()
{
  v0 = sub_1BAF8E888();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() apLocalSharedFormatter];
  sub_1BAF8E878();
  v5 = sub_1BAF8E868();
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone_];

  v6 = sub_1BAF8E678();
  v7 = [v4 stringFromDate_];

  v8 = sub_1BAF8EC38();
  return v8;
}

uint64_t sub_1BAF597C0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (!*(result + 16))
  {
    goto LABEL_16;
  }

  v3 = result;
  result = sub_1BAF31DBC(0x6E776F6E6B6E75, 0xE700000000000000);
  if ((v4 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1BAF45388(*(v3 + 56) + 32 * result, v28);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  result = sub_1BAF31DBC(0x6574657263736964, 0xE800000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1BAF45388(*(v3 + 56) + 32 * result, v28);
  sub_1BAF2DB10(&qword_1EBC36CF0, &qword_1BAF97150);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v3 + 16) || (v6 = sub_1BAF31DBC(0x6966697373616C63, 0xEA00000000006465), (v7 & 1) == 0) || (sub_1BAF45388(*(v3 + 56) + 32 * v6, v28), sub_1BAF2DB10(&qword_1EBC36CF8, &qword_1BAF97B20), (swift_dynamicCast() & 1) == 0) || (v8 = sub_1BAF59A84(v27), , v9 = sub_1BAF59E80(v27), result = , !v8))
  {
LABEL_15:

LABEL_16:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  v10 = *(v9 + 16);
  v11 = v10 + 1;
  v12 = 40;
  while (--v11)
  {
    v13 = *(v9 + v12);
    v12 += 16;
    if (!v13)
    {

      goto LABEL_15;
    }
  }

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v16 = 16 * v14 + 40;
  while (1)
  {
    if (v10 == v14)
    {

      *a2 = v27;
      a2[1] = v8;
      a2[2] = v15;
      return result;
    }

    if (v14 >= *(v9 + 16))
    {
      break;
    }

    ++v14;
    v17 = v16 + 16;
    v18 = *(v9 + v16);
    v16 += 16;
    if (v18)
    {
      v19 = *(v9 + v17 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1BAF4F018(0, *(v15 + 16) + 1, 1, v15);
        v15 = result;
      }

      v20 = *(v15 + 16);
      v21 = *(v15 + 24);
      v22 = v20 + 1;
      if (v20 >= v21 >> 1)
      {
        v26 = v20 + 1;
        v24 = v15;
        v25 = *(v15 + 16);
        result = sub_1BAF4F018((v21 > 1), v20 + 1, 1, v24);
        v20 = v25;
        v22 = v26;
        v15 = result;
      }

      *(v15 + 16) = v22;
      v23 = v15 + 16 * v20;
      *(v23 + 32) = v19;
      *(v23 + 40) = v18;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

char *sub_1BAF59A84(uint64_t a1)
{
  v31 = MEMORY[0x1E69E7CD0];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v6 = 1;
    v7 = MEMORY[0x1E69E7CA0];
    v8 = MEMORY[0x1E69E6530];
    v9 = &unk_1BAF95000;
    v25 = a1 + 32;
LABEL_3:
    v26 = v6;
    v10 = v4 + 32 * v3;
    v11 = v3;
    while (v11 < v2)
    {
      sub_1BAF45388(v10, v30);
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_39;
      }

      sub_1BAF45388(v30, v29);
      if (swift_dynamicCast())
      {
        v1 = v28;
        sub_1BAF2DB10(&qword_1EBC36D18, &qword_1BAF97170);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BAF95190;
        *(inited + 32) = v28;
        v13 = sub_1BAF444D8(inited);
        swift_setDeallocating();
        sub_1BADC5BE0(v29);
        sub_1BAF5A498(v13);
        sub_1BADC5BE0(v30);
      }

      else
      {
        sub_1BAF2DB10(&qword_1EBC36D10, &qword_1BAF97168);
        if (!swift_dynamicCast())
        {
          sub_1BADC5BE0(v30);
LABEL_19:
          sub_1BADC5BE0(v29);
          v6 = 0;
          v4 = v25;
          if (v3 != v2)
          {
            goto LABEL_3;
          }

LABEL_28:

          v5 = 0;
          goto LABEL_37;
        }

        if (v28[2] != 2)
        {
          sub_1BADC5BE0(v30);

          goto LABEL_19;
        }

        v14 = v2;
        v2 = v7;
        v7 = v8;
        v16 = v28[4];
        v15 = v28[5];

        if (v15 < v16)
        {
          goto LABEL_40;
        }

        sub_1BADC5BE0(v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1BAF4EF14(0, *(v5 + 2) + 1, 1, v5);
        }

        v1 = *(v5 + 2);
        v17 = *(v5 + 3);
        if (v1 >= v17 >> 1)
        {
          v5 = sub_1BAF4EF14((v17 > 1), v1 + 1, 1, v5);
        }

        sub_1BADC5BE0(v30);
        *(v5 + 2) = v1 + 1;
        v9 = &v5[16 * v1];
        *(v9 + 32) = v16;
        *(v9 + 40) = v15;
        v8 = v7;
        v7 = v2;
        v2 = v14;
        v3 = v11 + 1;
      }

      ++v11;
      v10 += 32;
      if (v3 == v2)
      {
        if (v26)
        {
          v1 = v31;
          goto LABEL_24;
        }

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v5 = sub_1BAF4EDF8((v9 > 1), v7, 1, v5);
LABEL_26:
    *(v5 + 2) = v7;
    v18 = &v5[24 * v11];
    *(v18 + 4) = v1;
    *(v18 + 5) = 0;
    v18[48] = 0;
    v19 = *(v2 + 16);
    if (!v19)
    {
      goto LABEL_36;
    }

LABEL_30:
    v20 = (v2 + 32);
    do
    {
      v27 = *v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1BAF4EDF8(0, *(v5 + 2) + 1, 1, v5);
      }

      v22 = *(v5 + 2);
      v21 = *(v5 + 3);
      if (v22 >= v21 >> 1)
      {
        v5 = sub_1BAF4EDF8((v21 > 1), v22 + 1, 1, v5);
      }

      *(v5 + 2) = v22 + 1;
      v23 = &v5[24 * v22];
      *(v23 + 2) = v27;
      v23[48] = 1;
      ++v20;
      --v19;
    }

    while (v19);
    goto LABEL_36;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v1 = MEMORY[0x1E69E7CD0];
LABEL_24:
  v2 = v5;
  if (*(v1 + 16))
  {

    v5 = sub_1BAF4EDF8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = *(v5 + 2);
    v9 = *(v5 + 3);
    v7 = v11 + 1;
    if (v11 < v9 >> 1)
    {
      goto LABEL_26;
    }

    goto LABEL_41;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v19 = *(v2 + 16);
  if (v19)
  {
    goto LABEL_30;
  }

LABEL_36:

LABEL_37:

  return v5;
}

uint64_t sub_1BAF59E80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1BAF6FB4C(0, v1, 0);
  v2 = v19;
  v4 = sub_1BAF8F1A8();
  v5 = 0;
  while (1)
  {
    v6 = *(a1 + 36);
    result = sub_1BAF8F1A8();
    if (v6 != *(a1 + 36))
    {
      break;
    }

    if (v4 < result)
    {
      goto LABEL_15;
    }

    if (v4 >= 1 << *(a1 + 32))
    {
      goto LABEL_16;
    }

    *&v16 = sub_1BAF5ACCC(&v14 + 8, v4, v6, 0, a1);
    *(&v16 + 1) = v8;
    sub_1BAF32E44((&v14 + 8), v17);
    v13 = v5;
    v14 = v16;
    v15[0] = v17[0];
    v15[1] = v17[1];
    sub_1BAF5A098(v16, *(&v16 + 1), v15, &v18);
    result = sub_1BAF32F04(&v13, &qword_1EBC36D00, &qword_1BAF97158);
    v9 = v18;
    v19 = v2;
    v11 = *(v2 + 16);
    v10 = *(v2 + 24);
    if (v11 >= v10 >> 1)
    {
      v12 = v18;
      result = sub_1BAF6FB4C((v10 > 1), v11 + 1, 1);
      v9 = v12;
      v2 = v19;
    }

    *(v2 + 16) = v11 + 1;
    *(v2 + 16 * v11 + 32) = v9;
    if (v4 < 0 || v4 >= -(-1 << *(a1 + 32)))
    {
      goto LABEL_17;
    }

    if (((*(a1 + 64 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      goto LABEL_18;
    }

    if (v6 != *(a1 + 36))
    {
      goto LABEL_19;
    }

    ++v5;
    v4 = sub_1BAF8F1C8();
    if (v1 == v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1BAF5A098@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v39[0] = a1;
  v39[1] = a2;
  sub_1BAF45388(a3, &v40);
  result = sub_1BAF5AD58(v39, &v36);
  v7 = v36;
  v6 = v37;
  v8 = HIBYTE(v37) & 0xF;
  v9 = v36 & 0xFFFFFFFFFFFFLL;
  if ((v37 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v37) & 0xF;
  }

  else
  {
    v10 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    goto LABEL_63;
  }

  if ((v37 & 0x1000000000000000) != 0)
  {

    v12 = sub_1BAF2DC88(v7, v6, 10);
    v32 = v31;

    if (v32)
    {
      goto LABEL_63;
    }

    goto LABEL_66;
  }

  if ((v37 & 0x2000000000000000) == 0)
  {
    if ((v36 & 0x1000000000000000) != 0)
    {
      result = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1BAF8F2B8();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v9 >= 1)
      {
        v8 = v9 - 1;
        if (v9 != 1)
        {
          v12 = 0;
          if (result)
          {
            v19 = result + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_61;
              }

              v12 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++v19;
              if (!--v8)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_74;
    }

    if (v11 != 45)
    {
      if (v9)
      {
        v12 = 0;
        if (result)
        {
          while (1)
          {
            v25 = *result - 48;
            if (v25 > 9)
            {
              goto LABEL_61;
            }

            v26 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_61;
            }

            v12 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v12 = 0;
      LOBYTE(v8) = 1;
LABEL_62:
      v35 = v8;
      v30 = v8;

      if (v30)
      {
LABEL_63:
        sub_1BADC5BE0(v38);
        goto LABEL_69;
      }

LABEL_66:
      sub_1BADC5BE0(v38);
      sub_1BAF5AD58(v39, &v36);

      sub_1BAF2DB10(&qword_1EBC36CF0, &qword_1BAF97150);
      if (swift_dynamicCast())
      {
        v33 = sub_1BAF59A84(v34[0]);

        result = sub_1BAF32F04(v39, &qword_1EBC36D08, &qword_1BAF97160);
        if (v33)
        {
          *a4 = v12;
          a4[1] = v33;
          return result;
        }

        goto LABEL_70;
      }

LABEL_69:
      result = sub_1BAF32F04(v39, &qword_1EBC36D08, &qword_1BAF97160);
LABEL_70:
      *a4 = 0;
      a4[1] = 0;
      return result;
    }

    if (v9 >= 1)
    {
      v8 = v9 - 1;
      if (v9 != 1)
      {
        v12 = 0;
        if (result)
        {
          v13 = result + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_61;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_61;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_61;
            }

            ++v13;
            if (!--v8)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v8) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v34[0] = v36;
  v34[1] = v37 & 0xFFFFFFFFFFFFFFLL;
  if (v36 != 43)
  {
    if (v36 != 45)
    {
      if (v8)
      {
        v12 = 0;
        v27 = v34;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          v27 = (v27 + 1);
          if (!--v8)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v8)
    {
      if (--v8)
      {
        v12 = 0;
        v16 = v34 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v8)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_73;
  }

  if (v8)
  {
    if (--v8)
    {
      v12 = 0;
      v22 = v34 + 1;
      while (1)
      {
        v23 = *v22 - 48;
        if (v23 > 9)
        {
          break;
        }

        v24 = 10 * v12;
        if ((v12 * 10) >> 64 != (10 * v12) >> 63)
        {
          break;
        }

        v12 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          break;
        }

        ++v22;
        if (!--v8)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_1BAF5A498(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1BAF5A578(v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1BAF5A578(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1BAF8F598();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1BAF5A87C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BAF5A658(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BAF2DB10(&qword_1EBC36950, &qword_1BAF95DF0);
  result = sub_1BAF8F218();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1BAF8F598();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BAF5A87C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BAF5A658(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1BAF5A99C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1BAF5AADC(v5 + 1);
  }

  v8 = *v3;
  result = sub_1BAF8F598();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BAF8F528();
  __break(1u);
  return result;
}

void *sub_1BAF5A99C()
{
  v1 = v0;
  sub_1BAF2DB10(&qword_1EBC36950, &qword_1BAF95DF0);
  v2 = *v0;
  v3 = sub_1BAF8F208();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BAF5AADC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BAF2DB10(&qword_1EBC36950, &qword_1BAF95DF0);
  result = sub_1BAF8F218();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1BAF8F598();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BAF5ACCC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    sub_1BAF45388(*(a5 + 56) + 32 * a2, result);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1BAF5AD58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&qword_1EBC36D08, &qword_1BAF97160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static BundleID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BAF8F4C8();
  }
}

uint64_t sub_1BAF5AE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BAF8F4C8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAF5AEA4(uint64_t a1)
{
  v2 = sub_1BAF5B170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAF5AEE0(uint64_t a1)
{
  v2 = sub_1BAF5B170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleID.hashValue.getter()
{
  sub_1BAF8F5A8();
  sub_1BAF8ED18();
  return sub_1BAF8F5E8();
}

uint64_t _s12APFoundation11CountryCodeV9hashValueSivg_0()
{
  sub_1BAF8F5A8();
  sub_1BAF8ED18();
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF5AFBC(uint64_t a1)
{
  sub_1BAF8F5A8();
  sub_1BAF8ED18();
  return sub_1BAF8F5E8();
}

uint64_t BundleID.debugDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BundleID.encode(to:)(void *a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC36D20, &qword_1BAF97178);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF5B170();
  sub_1BAF8F648();
  sub_1BAF8F438();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1BAF5B170()
{
  result = qword_1EBC36D28;
  if (!qword_1EBC36D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D28);
  }

  return result;
}

uint64_t BundleID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1BAF2DB10(&qword_1EBC36D30, &qword_1BAF97180);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF5B170();
  sub_1BAF8F628();
  if (!v2)
  {
    v9 = sub_1BAF8F3D8();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return sub_1BADC5BE0(a1);
}

unint64_t sub_1BAF5B33C()
{
  result = qword_1EBC36D38;
  if (!qword_1EBC36D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D38);
  }

  return result;
}

unint64_t sub_1BAF5B394()
{
  result = qword_1EBC36D40;
  if (!qword_1EBC36D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D40);
  }

  return result;
}

unint64_t sub_1BAF5B3F8()
{
  result = qword_1EBC36D48;
  if (!qword_1EBC36D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D48);
  }

  return result;
}

uint64_t sub_1BAF5B47C(void *a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC36D20, &qword_1BAF97178);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF5B170();
  sub_1BAF8F648();
  sub_1BAF8F438();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1BAF5B5DC()
{
  result = qword_1EBC36D50;
  if (!qword_1EBC36D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D50);
  }

  return result;
}

unint64_t sub_1BAF5B634()
{
  result = qword_1EBC36D58;
  if (!qword_1EBC36D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D58);
  }

  return result;
}

unint64_t sub_1BAF5B68C()
{
  result = qword_1EBC36D60;
  if (!qword_1EBC36D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D60);
  }

  return result;
}

uint64_t sub_1BAF5B78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1BAF5B7C8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BAF5B7DC(uint64_t *a1, int a2)
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

uint64_t sub_1BAF5B824(uint64_t result, int a2, int a3)
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

uint64_t (*sub_1BAF5B92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF5C038;
}

uint64_t (*sub_1BAF5BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF5BFD0;
}

uint64_t (*sub_1BAF5BB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF5BF68;
}

uint64_t (*sub_1BAF5BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF5BF00;
}

uint64_t (*sub_1BAF5BE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>))()
{
  v20 = sub_1BAF5B92C(a1, a2, a3, a4);
  v11 = v10;
  v12 = sub_1BAF5BA58(a1, a2, a3, a4);
  v14 = v13;
  v15 = sub_1BAF5BB84(a1, a2, a3, a4);
  v17 = v16;
  result = sub_1BAF5BCB0(a1, a2, a3, a4);
  *a5 = v20;
  a5[1] = v11;
  a5[2] = v12;
  a5[3] = v14;
  a5[4] = v15;
  a5[5] = v17;
  a5[6] = result;
  a5[7] = v19;
  return result;
}

unint64_t sub_1BAF5C0DC()
{
  result = qword_1EBC36D68;
  if (!qword_1EBC36D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D68);
  }

  return result;
}

uint64_t Int.minute.getter(uint64_t result)
{
  if ((result * 60) >> 64 != (60 * result) >> 63)
  {
    __break(1u);
  }

  return result;
}

void sub_1BAF5C160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = a1;
  v5 = v4;
  v71 = a3;
  v72 = a4;
  v73 = a2;
  v79 = *MEMORY[0x1E69E9840];
  v6 = sub_1BAF8E318();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1BAF8E4F8();
  v8 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v58 - v12;
  v14 = sub_1BAF8E598();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v66 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v58 - v21;
  v23 = OBJC_IVAR____TtC12APFoundation13WorkDataStore_basePath;
  swift_beginAccess();
  sub_1BAF5D1E4(v5 + v23, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BAF5D254(v13);
  }

  else
  {
    (*(v15 + 32))(v22, v13, v14);
    v77 = v74;
    v78 = v73;
    v24 = v15;
    v25 = *(v8 + 104);
    v64 = *MEMORY[0x1E6968F70];
    v26 = v70;
    v63 = v25;
    v25(v10);
    v62 = sub_1BAF2DB58();
    sub_1BAF8E578();
    v27 = *(v8 + 8);
    v27(v10, v26);
    v28 = v75;
    sub_1BAF8E608();
    if (v28)
    {
      v61 = v22;
      v60 = v27;
      v29 = *(v24 + 8);
      v65 = v24 + 8;
      v75 = v29;
      v29(v20, v14);
      v30 = v28;
      v31 = v67;
      sub_1BAF8E308();
      sub_1BAF5D2BC();
      v32 = v69;
      v33 = sub_1BAF8E4A8();

      (*(v68 + 8))(v31, v32);
      if (v33)
      {
        v59 = v14;

        v34 = [objc_opt_self() defaultManager];
        v35 = v61;
        v36 = sub_1BAF8E518();
        v77 = 0;
        v37 = [v34 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v77];

        if (v37)
        {
          v38 = v77;
        }

        else
        {
          v53 = v77;
          v54 = sub_1BAF8E4C8();

          swift_willThrow();
        }

        v55 = v75;
        v77 = v74;
        v78 = v73;
        v63(v10, v64, v26);
        v56 = v66;
        sub_1BAF8E578();
        v60(v10, v26);
        sub_1BAF8E608();
        v57 = v59;
        v55(v56, v59);
        v55(v35, v57);
      }

      else
      {
        v77 = v28;
        v40 = v28;
        sub_1BAF2DB10(&qword_1EBC36890, &qword_1BAF97140);
        sub_1BAF30DFC(0, qword_1EBC36D70, 0x1E696ABC0);
        v41 = swift_dynamicCast();
        v42 = v74;
        if (v41)
        {

          v43 = v76;
          LODWORD(v72) = sub_1BAF8F038();
          sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
          v44 = sub_1BAF8F0C8();
          sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1BAF954D0;
          v46 = MEMORY[0x1E69E6158];
          *(v45 + 56) = MEMORY[0x1E69E6158];
          v47 = sub_1BAF30E44();
          *(v45 + 64) = v47;
          v48 = v73;
          *(v45 + 32) = v42;
          *(v45 + 40) = v48;

          v49 = [v43 localizedDescription];
          v50 = sub_1BAF8EC38();
          v52 = v51;

          *(v45 + 96) = v46;
          *(v45 + 104) = v47;
          *(v45 + 72) = v50;
          *(v45 + 80) = v52;
          sub_1BAF8E8B8(v72, &dword_1BADC1000, v44, "Failed to write file %{public}@. Error: %{public}@", 50, 2, v45);

          swift_willThrow();
        }

        v75(v61, v14);
      }
    }

    else
    {
      v39 = *(v24 + 8);
      v39(v20, v14);
      v39(v22, v14);
    }
  }
}

void sub_1BAF5CB00(void *a1, void *a2)
{
  v45 = a1;
  v46 = a2;
  v49 = *MEMORY[0x1E69E9840];
  v43 = sub_1BAF8E4F8();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_1BAF8E598();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  v16 = OBJC_IVAR____TtC12APFoundation13WorkDataStore_basePath;
  swift_beginAccess();
  v17 = v2 + v16;
  v18 = v9;
  sub_1BAF5D1E4(v17, v8);
  v19 = v10;
  if ((*(v10 + 48))(v8, 1, v18) == 1)
  {
    sub_1BAF5D254(v8);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v18);
    v20 = [objc_opt_self() defaultManager];
    v48[0] = v45;
    v48[1] = v46;
    v21 = v43;
    (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v43);
    sub_1BAF2DB58();
    sub_1BAF8E578();
    (*(v3 + 8))(v5, v21);
    v22 = sub_1BAF8E518();
    v23 = *(v19 + 8);
    v43 = v19 + 8;
    v23(v13, v18);
    v48[0] = 0;
    v24 = [v20 removeItemAtURL:v22 error:v48];

    v25 = v46;
    if (v24)
    {
      v26 = v48[0];
      v23(v15, v18);
    }

    else
    {
      v42 = v18;
      v44 = v15;
      v27 = v45;
      v28 = v48[0];
      v29 = sub_1BAF8E4C8();

      swift_willThrow();
      v48[0] = v29;
      v30 = v29;
      sub_1BAF2DB10(&qword_1EBC36890, &qword_1BAF97140);
      sub_1BAF30DFC(0, qword_1EBC36D70, 0x1E696ABC0);
      if (swift_dynamicCast())
      {

        v31 = v47;
        v41 = sub_1BAF8F038();
        sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
        v40 = sub_1BAF8F0C8();
        sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1BAF954D0;
        v33 = MEMORY[0x1E69E6158];
        *(v32 + 56) = MEMORY[0x1E69E6158];
        v34 = sub_1BAF30E44();
        *(v32 + 64) = v34;
        *(v32 + 32) = v27;
        *(v32 + 40) = v25;

        v35 = [v31 localizedDescription];
        v36 = sub_1BAF8EC38();
        v38 = v37;

        *(v32 + 96) = v33;
        *(v32 + 104) = v34;
        *(v32 + 72) = v36;
        *(v32 + 80) = v38;
        v39 = v40;
        sub_1BAF8E8B8(v41, &dword_1BADC1000, v40, "Failed to remove file %{public}@. Error: %{public}@", 51, 2, v32);

        swift_willThrow();
      }

      v23(v44, v42);
    }
  }
}

uint64_t sub_1BAF5D044()
{
  sub_1BAF5D254(v0 + OBJC_IVAR____TtC12APFoundation13WorkDataStore_basePath);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkDataStore(uint64_t a1)
{
  result = qword_1EDBA34C8;
  if (!qword_1EDBA34C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAF5D0FC(uint64_t a1)
{
  sub_1BAF5D18C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BAF5D18C(uint64_t a1)
{
  if (!qword_1EDBA38C0)
  {
    sub_1BAF8E598();
    v1 = sub_1BAF8F0D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBA38C0);
    }
  }
}

uint64_t sub_1BAF5D1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF5D254(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BAF5D2BC()
{
  result = qword_1EDBA38C8;
  if (!qword_1EDBA38C8)
  {
    sub_1BAF8E318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA38C8);
  }

  return result;
}

unint64_t sub_1BAF5D328()
{
  result = qword_1EDBA2E50[0];
  if (!qword_1EDBA2E50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBA2E50);
  }

  return result;
}

uint64_t sub_1BAF5D37C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock((*(*a1 + 16) + 16));
  v5 = v3[3];
  v4 = v3[4];
  v6 = v3[2];
  v3[3] = 0;
  v3[4] = 0;
  os_unfair_lock_unlock(v6 + 4);
  if (v5)
  {
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v4;
    v8 = sub_1BAF5DCB0;
  }

  else
  {
    v8 = 0;
    result = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1BAF5D404(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BAF5DC88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = *(*a2 + 16);
  sub_1BAEFD9BC(v3, v4);
  os_unfair_lock_lock(v8 + 4);
  v9 = v7[3];
  v10 = v7[4];
  v7[3] = v6;
  v7[4] = v5;
  sub_1BAEFD9BC(v6, v5);
  sub_1BAEFD9A4(v9, v10);
  os_unfair_lock_unlock((v7[2] + 16));

  return sub_1BAEFD9A4(v6, v5);
}

uint64_t SinglyCallableCompletion.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  os_unfair_lock_lock(v5 + 4);
  v6 = v2[3];
  v7 = v2[4];
  v2[3] = a1;
  v2[4] = a2;
  sub_1BAEFD9BC(a1, a2);
  sub_1BAEFD9A4(v6, v7);
  os_unfair_lock_unlock(v5 + 4);

  return sub_1BAEFD9A4(a1, a2);
}

uint64_t (*SinglyCallableCompletion.wrappedValue.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = v1[2];
  a1[2] = v1;
  a1[3] = v3;
  os_unfair_lock_lock(v3 + 4);
  v4 = v1[3];
  v5 = v1[4];
  v1[3] = 0;
  v1[4] = 0;
  os_unfair_lock_unlock(v3 + 4);
  *a1 = v4;
  a1[1] = v5;
  return sub_1BAF5D5C8;
}

uint64_t sub_1BAF5D5C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    sub_1BAEFD9BC(*a1, v3);
    os_unfair_lock_lock(v4 + 4);
    v6 = *(v5 + 24);
    v7 = *(v5 + 32);
    *(v5 + 24) = v2;
    *(v5 + 32) = v3;
    sub_1BAEFD9BC(v2, v3);
    sub_1BAEFD9A4(v6, v7);
    os_unfair_lock_unlock(v4 + 4);
    sub_1BAEFD9A4(v2, v3);
  }

  else
  {
    os_unfair_lock_lock(v4 + 4);
    v8 = *(v5 + 24);
    v9 = *(v5 + 32);
    *(v5 + 24) = v2;
    *(v5 + 32) = v3;
    sub_1BAEFD9BC(v2, v3);
    sub_1BAEFD9A4(v8, v9);
    os_unfair_lock_unlock(v4 + 4);
  }

  return sub_1BAEFD9A4(v2, v3);
}

void *sub_1BAF5D6C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1BAF2DB10(&qword_1EBC36B50, &qword_1BAF97720);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v4[2] = v5;
  v4[3] = a1;
  v4[4] = a2;
  return v4;
}

void *sub_1BAF5D73C(uint64_t a1, uint64_t a2)
{
  sub_1BAF2DB10(&qword_1EBC36B50, &qword_1BAF97720);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v2[2] = v5;
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

uint64_t sub_1BAF5D79C()
{
  v1 = v0[2];
  os_unfair_lock_lock(v1 + 4);
  v2 = v0[3];
  v0[3] = 0;
  v0[4] = 0;
  os_unfair_lock_unlock(v1 + 4);
  return v2;
}

uint64_t (*sub_1BAF5D7E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>))()
{
  v4 = *(a1 + a2 - 8);
  result = SinglyCallable.wrappedValue.getter();
  if (result)
  {
    v7 = result;
    v8 = v6;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v7;
    *(result + 4) = v8;
    v9 = sub_1BAF5DC7C;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  a3[1] = result;
  return result;
}

uint64_t sub_1BAF5D860(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = *(a3 + a4 - 8);
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v4;
    v7[4] = v5;
    v8 = sub_1BAF5DC54;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_1BAEFD9BC(v4, v5);
  sub_1BAF5DAFC(v8, v7);

  return sub_1BAEFD9A4(v8, v7);
}

uint64_t SinglyCallable.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1BAF5DAFC(a1, a2);

  return sub_1BAEFD9A4(a1, a2);
}

uint64_t (*SinglyCallable.wrappedValue.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = v1[2];
  os_unfair_lock_lock(v3 + 4);
  v4 = v1[3];
  v5 = v1[4];
  v1[3] = 0;
  v1[4] = 0;
  os_unfair_lock_unlock(v3 + 4);
  *a1 = v4;
  a1[1] = v5;
  return sub_1BAF5D9CC;
}

uint64_t sub_1BAF5D9CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {
    sub_1BAEFD9BC(v4, v3);
    sub_1BAF5DAFC(v2, v3);
    sub_1BAEFD9A4(v2, v3);
  }

  else
  {
    sub_1BAF5DAFC(v4, v3);
  }

  return sub_1BAEFD9A4(v2, v3);
}

void *sub_1BAF5DA5C(void (*a1)(void, void))
{

  a1(*(v1 + 24), *(v1 + 32));
  return v1;
}

uint64_t sub_1BAF5DAAC(void (*a1)(void, void))
{

  a1(*(v1 + 24), *(v1 + 32));

  return swift_deallocClassInstance();
}

void sub_1BAF5DAFC(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  os_unfair_lock_lock(v5 + 4);
  v6 = v2[3];
  v7 = v2[4];
  v2[3] = a1;
  v2[4] = a2;
  sub_1BAEFD9BC(a1, a2);
  sub_1BAEFD9A4(v6, v7);

  os_unfair_lock_unlock(v5 + 4);
}

uint64_t DatabaseManager.__allocating_init(database:log:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  return result;
}

id sub_1BAF5DD28@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  [*(a1 + 32) lock];
  v7 = *(a1 + 24);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = sqlite3_step(v7);
  *(a1 + 16) = v8;
  if (v8 == 100)
  {
    v18[3] = type metadata accessor for DatabaseCursorInternal();
    v18[4] = &off_1F38F6DD0;
    v18[0] = a1;

    a2(v18);
    sub_1BADC5BE0(v18);
    return [*(a1 + 32) unlock];
  }

  if (*(a1 + 24))
  {
    sqlite3_finalize(*(a1 + 24));
    *(a1 + 24) = 0;
LABEL_6:
    v8 = *(a1 + 16);
  }

  if (v8 != 101)
  {
    v9 = sub_1BAF8F038();
    v10 = *(a1 + 40);
    sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BAF95190;
    v12 = *(a1 + 16);
    v13 = MEMORY[0x1E69E7358];
    *(v11 + 56) = MEMORY[0x1E69E72F0];
    *(v11 + 64) = v13;
    *(v11 + 32) = v12;
    v14 = v10;
    sub_1BAF8E8B8(v9, &dword_1BADC1000, v14, "Cursor access error. Code: %d", v16);
  }

  (*(*(a3 - 8) + 56))(a4, 1, 1);
  return [*(a1 + 32) unlock];
}

uint64_t sub_1BAF5E090(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BAF606C4(v2, a1, a2);

  return v3;
}

uint64_t sub_1BAF5E110()
{
  [*(v0 + 32) lock];
  v1 = *(v0 + 24);
  if (v1)
  {
    sqlite3_finalize(v1);
    *(v0 + 24) = 0;
  }

  [*(v0 + 32) unlock];

  return swift_deallocClassInstance();
}

char *sub_1BAF5E188()
{
  v1 = *(v0 + 48);
  if (v1)
  {

    return v1;
  }

  result = sqlite3_column_count(*(v0 + 24));
  if ((result & 0x80000000) == 0)
  {
    v3 = result;
    if (result)
    {
      v4 = 0;
      v1 = MEMORY[0x1E69E7CC0];
      do
      {
        if (sqlite3_column_name(*(v0 + 24), v4))
        {
          v6 = sub_1BAF8ED78();
          v8 = v7;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_1BAF4F124(0, *(v1 + 2) + 1, 1, v1);
          }

          v10 = *(v1 + 2);
          v9 = *(v1 + 3);
          if (v10 >= v9 >> 1)
          {
            v1 = sub_1BAF4F124((v9 > 1), v10 + 1, 1, v1);
          }

          *(v1 + 2) = v10 + 1;
          v5 = &v1[16 * v10];
          *(v5 + 4) = v6;
          *(v5 + 5) = v8;
        }

        ++v4;
      }

      while (v3 != v4);
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 48) = v1;

    return v1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BAF5E2F0(int iCol)
{
  v3 = *v1;
  v4 = sqlite3_column_type(*(v3 + 24), iCol);
  if (v4 == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_column_int(*(v3 + 24), iCol);
  }

  return v5 | ((v4 == 5) << 32);
}

uint64_t sub_1BAF5E368(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(*(v3 + 24), iCol) != 5)
  {
    return sqlite3_column_int(*(v3 + 24), iCol);
  }

  sub_1BAF4098C();
  swift_allocError();
  *v4 = xmmword_1BAF977D0;
  *(v4 + 16) = 0;
  return swift_willThrow();
}

sqlite3_int64 sub_1BAF5E418(int iCol, __n128 a2)
{
  v4 = *v2;
  if (sqlite3_column_type(*(v4 + 24), iCol) != 5)
  {
    return sqlite3_column_int64(*(v4 + 24), iCol);
  }

  sub_1BAF4098C();
  swift_allocError();
  *v5 = a2;
  v5[1].n128_u8[0] = 0;
  return swift_willThrow();
}

sqlite3_int64 sub_1BAF5E4B0(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(*(v3 + 24), iCol) == 5)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_int64(*(v3 + 24), iCol);
  }
}

void sub_1BAF5E510(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(*(v3 + 24), iCol) == 5)
  {
    sub_1BAF4098C();
    swift_allocError();
    *v4 = xmmword_1BAF977F0;
    *(v4 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    sqlite3_column_double(*(v3 + 24), iCol);
  }
}

double sub_1BAF5E5A0(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(*(v3 + 24), iCol) != 5)
  {
    return sqlite3_column_double(*(v3 + 24), iCol);
  }

  return result;
}

const unsigned __int8 *sub_1BAF5E628(int iCol)
{
  if (sqlite3_column_type(*(v1 + 24), iCol) == 5)
  {
    sub_1BAF4098C();
    swift_allocError();
    *v3 = xmmword_1BAF97800;
    *(v3 + 16) = 0;
    return swift_willThrow();
  }

  else if (sqlite3_column_bytes(*(v1 + 24), iCol) < 1)
  {
    return 0;
  }

  else
  {
    result = sqlite3_column_text(*(v1 + 24), iCol);
    if (result)
    {
      return sub_1BAF8ED88();
    }
  }

  return result;
}

const unsigned __int8 *sub_1BAF5E6F8(int iCol)
{
  if (sqlite3_column_type(*(v1 + 24), iCol) == 5)
  {
    return 0;
  }

  if (sqlite3_column_bytes(*(v1 + 24), iCol) < 1)
  {
    return 0;
  }

  result = sqlite3_column_text(*(v1 + 24), iCol);
  if (result)
  {
    return sub_1BAF8ED88();
  }

  return result;
}

uint64_t sub_1BAF5E76C(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(*(v3 + 24), iCol) == 5)
  {
    sub_1BAF4098C();
    swift_allocError();
    *v4 = xmmword_1BAF97810;
    *(v4 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    sqlite3_column_double(*(v3 + 24), iCol);
    return sub_1BAF8E6C8();
  }
}

uint64_t sub_1BAF5E808@<X0>(int iCol@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if (sqlite3_column_type(*(v5 + 24), iCol) == 5)
  {
    v6 = 1;
  }

  else
  {
    sqlite3_column_double(*(v5 + 24), iCol);
    sub_1BAF8E6C8();
    v6 = 0;
  }

  v7 = sub_1BAF8E728();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

unsigned __int8 *sub_1BAF5E8DC(int iCol)
{
  if (sqlite3_column_type(*(v1 + 24), iCol) == 5)
  {
    return 0;
  }

  v3 = sqlite3_column_bytes(*(v1 + 24), iCol);
  if (v3 < 1)
  {
    return 0;
  }

  v4 = v3;
  result = sqlite3_column_text(*(v1 + 24), iCol);
  if (result)
  {
    return sub_1BAF60614(result, v4);
  }

  return result;
}

unsigned __int8 *sub_1BAF5E978(int iCol)
{
  if (sqlite3_column_type(*(v1 + 24), iCol) == 5)
  {
    sub_1BAF4098C();
    swift_allocError();
    *v3 = xmmword_1BAF97820;
    *(v3 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v5 = sqlite3_column_bytes(*(v1 + 24), iCol);
    if (v5 < 1)
    {
      return 0;
    }

    else
    {
      v6 = v5;
      result = sqlite3_column_text(*(v1 + 24), iCol);
      if (result)
      {
        return sub_1BAF60614(result, v6);
      }
    }
  }

  return result;
}

uint64_t DatabaseManager.init(database:log:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t *sub_1BAF5EA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  result = sub_1BAF5F9DC(a1, a2, a3);
  if (!v5)
  {
    v9 = result;
    [result[4] lock];
    v10 = *(v9 + 24);
    if (v10)
    {
      v11 = sqlite3_step(v10);
      *(v9 + 16) = v11;
      if (v11 == 100)
      {
        v23[3] = type metadata accessor for DatabaseCursorInternal();
        v23[4] = &off_1F38F6DD0;
        v23[0] = v9;

        sub_1BAF54DFC(v23, a5);
        v21 = type metadata accessor for WorkOrder(0);
        (*(*(v21 - 8) + 56))(a5, 0, 1, v21);
        sub_1BADC5BE0(v23);
        [*(v9 + 32) unlock];
      }

      v12 = *(v9 + 24);
      if (v12)
      {
        sqlite3_finalize(v12);
        *(v9 + 24) = 0;
      }
    }

    if (*(v9 + 16) == 101)
    {
      v13 = type metadata accessor for WorkOrder(0);
      (*(*(v13 - 8) + 56))(a5, 1, 1, v13);
    }

    else
    {
      v14 = sub_1BAF8F038();
      v15 = *(a4 + 16);
      sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BAF95190;
      v17 = *(v9 + 16);
      v18 = MEMORY[0x1E69E7358];
      *(v16 + 56) = MEMORY[0x1E69E72F0];
      *(v16 + 64) = v18;
      *(v16 + 32) = v17;
      sub_1BAF8E8B8(v14, &dword_1BADC1000, v15, "Cursor access error. Code: %d", v22);

      sub_1BAF8F268();

      v23[0] = 0xD00000000000001BLL;
      v23[1] = 0x80000001BAFA2900;
      v24 = *(v9 + 16);
      v19 = sub_1BAF8F478();
      MEMORY[0x1BFB048C0](v19);

      sub_1BAF4098C();
      swift_allocError();
      *v20 = 0xD00000000000001BLL;
      *(v20 + 8) = 0x80000001BAFA2900;
      *(v20 + 16) = 0;
      swift_willThrow();
    }

    [*(v9 + 32) unlock];
  }

  return result;
}

uint64_t *sub_1BAF5ED68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = sub_1BAF5F9DC(a1, a2, a3);
  if (!v7)
  {
    v12 = result;
    [result[4] lock];
    v13 = *(v12 + 24);
    if (v13)
    {
      v14 = sqlite3_step(v13);
      *(v12 + 16) = v14;
      if (v14 == 100)
      {
        v24[3] = type metadata accessor for DatabaseCursorInternal();
        v24[4] = &off_1F38F6DD0;
        v24[0] = v12;

        a4(v24);
        sub_1BADC5BE0(v24);
LABEL_10:
        [*(v12 + 32) unlock];
      }

      v15 = *(v12 + 24);
      if (v15)
      {
        sqlite3_finalize(v15);
        *(v12 + 24) = 0;
      }
    }

    if (*(v12 + 16) == 101)
    {
      (*(*(a5 - 8) + 56))(a6, 1, 1, a5);
      [*(v12 + 32) unlock];
    }

    v16 = sub_1BAF8F038();
    v17 = *(v6 + 16);
    sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BAF95190;
    v19 = *(v12 + 16);
    v20 = MEMORY[0x1E69E7358];
    *(v18 + 56) = MEMORY[0x1E69E72F0];
    *(v18 + 64) = v20;
    *(v18 + 32) = v19;
    sub_1BAF8E8B8(v16, &dword_1BADC1000, v17, "Cursor access error. Code: %d", v23);

    sub_1BAF8F268();

    v24[0] = 0xD00000000000001BLL;
    v24[1] = 0x80000001BAFA2900;
    LODWORD(v25) = *(v12 + 16);
    v21 = sub_1BAF8F478();
    MEMORY[0x1BFB048C0](v21);

    sub_1BAF4098C();
    swift_allocError();
    *v22 = 0xD00000000000001BLL;
    *(v22 + 8) = 0x80000001BAFA2900;
    *(v22 + 16) = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  return result;
}

uint64_t *sub_1BAF5F1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_1BAF5F9DC(a1, a2, a3);
  if (!v7)
  {
    v15 = result;
    a7[3] = type metadata accessor for DatabaseResults(0, a6, v13, v14);
    a7[4] = swift_getWitnessTable();
    *a7 = v15;
    a7[1] = a4;
    a7[2] = a5;
  }

  return result;
}

uint64_t *sub_1BAF5F260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void (*a3)(char *, unint64_t *)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v36 = *(a5 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v6;
  result = sub_1BAF5F9DC(v13, v16, v17);
  if (v7)
  {
    return result;
  }

  v19 = result;
  v37 = a3;
  v38 = a4;
  v33 = a6;
  [result[4] lock];
  (*(v36 + 16))(v15, a2, a5);
  v20 = *(v19 + 24);
  if (v20)
  {
    v34 = xmmword_1BAF95190;
    v21 = v37;
    while (1)
    {
      v22 = sqlite3_step(v20);
      *(v19 + 16) = v22;
      if (v22 != 100)
      {
        break;
      }

      v41 = type metadata accessor for DatabaseCursorInternal();
      v42 = &off_1F38F6DD0;
      v39 = v19;

      v21(v15, &v39);
      sub_1BADC5BE0(&v39);
      v20 = *(v19 + 24);
      if (!v20)
      {
        goto LABEL_9;
      }
    }

    if (!*(v19 + 24))
    {
      goto LABEL_10;
    }

    sqlite3_finalize(*(v19 + 24));
    *(v19 + 24) = 0;
  }

LABEL_9:
  v22 = *(v19 + 16);
LABEL_10:
  if (v22 == 101)
  {
    (*(v36 + 32))(v33, v15, a5);
  }

  else
  {
    v23 = sub_1BAF8F038();
    v24 = *(v35 + 16);
    sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BAF95190;
    v26 = *(v19 + 16);
    v27 = MEMORY[0x1E69E7358];
    *(v25 + 56) = MEMORY[0x1E69E72F0];
    *(v25 + 64) = v27;
    *(v25 + 32) = v26;
    sub_1BAF8E8B8(v23, &dword_1BADC1000, v24, "Cursor access error. Code: %d", v32);

    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1BAF8F268();

    v39 = 0xD00000000000001BLL;
    v40 = 0x80000001BAFA2900;
    LODWORD(v43) = *(v19 + 16);
    v28 = sub_1BAF8F478();
    MEMORY[0x1BFB048C0](v28);

    v29 = v39;
    v30 = v40;
    sub_1BAF4098C();
    swift_allocError();
    *v31 = v29;
    *(v31 + 8) = v30;
    *(v31 + 16) = 0;
    swift_willThrow();
    (*(v36 + 8))(v15, a5);
  }

  [*(v19 + 32) unlock];
}

id sub_1BAF5F6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v21[2] = a2;
      v21[3] = a1;
      v26 = MEMORY[0x1E69E7CC0];
      sub_1BAF8F2E8();
      v6 = a3 + 32;
      do
      {
        sub_1BADC81FC(v6, v25);
        sub_1BADC81FC(v25, &v22);
        v8 = *(&v23 + 1);
        if (*(&v23 + 1))
        {
          v7 = v24;
          sub_1BADC8524(&v22, *(&v23 + 1));
          (*(v7 + 8))(v8, v7);
          sub_1BADC5BE0(&v22);
        }

        else
        {
          sub_1BADC873C(&v22);
          v22 = 0u;
          v23 = 0u;
          v9 = sub_1BAF8EC28();
          v10 = *(&v23 + 1);
          if (*(&v23 + 1))
          {
            v11 = sub_1BADC8524(&v22, *(&v23 + 1));
            v12 = *(v10 - 8);
            MEMORY[0x1EEE9AC00](v11);
            v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v12 + 16))(v14);
            v15 = sub_1BAF8F4B8();
            (*(v12 + 8))(v14, v10);
            sub_1BADC5BE0(&v22);
          }

          else
          {
            v15 = 0;
          }

          [objc_allocWithZone(APDatabaseColumn) initWithName:v9 forColumnType:1 withValue:v15];

          swift_unknownObjectRelease();
        }

        sub_1BADC873C(v25);
        sub_1BAF8F2C8();
        sub_1BAF8F2F8();
        sub_1BAF8F308();
        sub_1BAF8F2D8();
        v6 += 40;
        --v5;
      }

      while (v5);
      v3 = v21[1];
    }
  }

  v16 = *(v3 + 24);
  v17 = sub_1BAF8EC28();
  sub_1BADC880C();
  v18 = sub_1BAF8EE98();

  v19 = [v16 executeInsertQuery:v17 withParameters:v18];

  return v19;
}

uint64_t *sub_1BAF5F9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v27[1] = a2;
      v27[2] = a1;
      v32 = MEMORY[0x1E69E7CC0];
      sub_1BAF8F2E8();
      v6 = a3 + 32;
      do
      {
        sub_1BADC81FC(v6, v31);
        sub_1BADC81FC(v31, &v28);
        v8 = *(&v29 + 1);
        if (*(&v29 + 1))
        {
          v7 = v30;
          sub_1BADC8524(&v28, *(&v29 + 1));
          (*(v7 + 8))(v8, v7);
          sub_1BADC5BE0(&v28);
        }

        else
        {
          sub_1BADC873C(&v28);
          v28 = 0u;
          v29 = 0u;
          v9 = sub_1BAF8EC28();
          v10 = *(&v29 + 1);
          if (*(&v29 + 1))
          {
            v11 = sub_1BADC8524(&v28, *(&v29 + 1));
            v12 = *(v10 - 8);
            MEMORY[0x1EEE9AC00](v11);
            v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v12 + 16))(v14);
            v15 = sub_1BAF8F4B8();
            (*(v12 + 8))(v14, v10);
            sub_1BADC5BE0(&v28);
          }

          else
          {
            v15 = 0;
          }

          [objc_allocWithZone(APDatabaseColumn) initWithName:v9 forColumnType:1 withValue:v15];

          swift_unknownObjectRelease();
        }

        sub_1BADC873C(v31);
        sub_1BAF8F2C8();
        sub_1BAF8F2F8();
        sub_1BAF8F308();
        sub_1BAF8F2D8();
        v6 += 40;
        --v5;
      }

      while (v5);
      v3 = v27[0];
    }
  }

  v16 = v3[3];
  v17 = sub_1BAF8EC28();
  sub_1BADC880C();
  v18 = sub_1BAF8EE98();

  v19 = [v16 getCursorForQuery:v17 parameters:v18];

  if (v19)
  {
    v20 = [v19 statement];
    v21 = [v19 lock];

    v22 = v3[2];
    type metadata accessor for DatabaseCursorInternal();
    v3 = swift_allocObject();
    *(v3 + 4) = 0;
    v3[3] = v20;
    v3[4] = v21;
    v3[5] = v22;
    v3[6] = 0;
    v23 = v22;
  }

  else
  {
    v24 = sub_1BAF8F038();
    sub_1BAF8E8B8(v24, &dword_1BADC1000, v3[2], "Failed to open a cursor.", 24, 2, MEMORY[0x1E69E7CC0]);
    sub_1BAF4098C();
    swift_allocError();
    *v25 = 0xD000000000000018;
    *(v25 + 8) = 0x80000001BAFA3160;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1BAF5FDB8(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v14 = -1;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = *(v2 + 24);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v5;
  aBlock[4] = sub_1BAF6005C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = &unk_1F38F6CC0;
  v8 = _Block_copy(aBlock);

  [v6 executeTransactionQueryWithType:4 result:&v14 transactionBody:v8];
  _Block_release(v8);
  swift_beginAccess();
  v9 = *(v5 + 16);
  if (v9)
  {
    goto LABEL_4;
  }

  v10 = v14;
  if (v14)
  {
    sub_1BAF4098C();
    swift_allocError();
    v9 = 0;
    *v11 = v10;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
LABEL_4:
    swift_willThrow();
    v12 = v9;
  }
}

uint64_t DatabaseManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BAF60068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of DatabaseCursor.read(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))(a1, a2);
}

{
  return (*(a3 + 24))(a1, a2);
}

{
  return (*(a3 + 40))(a1, a2);
}

{
  return (*(a3 + 48))(a1, a2);
}

{
  return (*(a3 + 56))(a1, a2);
}

{
  return (*(a3 + 64))(a1, a2);
}

{
  return (*(a3 + 72))(a1, a2);
}

{
  return (*(a3 + 80))(a1, a2);
}

{
  return (*(a3 + 88))(a1, a2);
}

{
  return (*(a3 + 96))(a1, a2);
}

{
  return (*(a3 + 104))(a1, a2);
}

{
  return (*(a3 + 112))(a1, a2);
}

{
  return (*(a3 + 120))(a1, a2);
}

uint64_t sub_1BAF6047C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BAF604B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BAF60500(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BAF6055C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_1BAF60614(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1BAF6055C(a1, &a1[a2]);
  }

  sub_1BAF8E438();
  swift_allocObject();
  sub_1BAF8E3F8();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1BAF8E5C8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t type metadata accessor for WorkOrder(uint64_t a1)
{
  result = qword_1EDBA2288;
  if (!qword_1EDBA2288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAF60740(uint64_t a1)
{
  sub_1BAF8E728();
  if (v1 <= 0x3F)
  {
    sub_1BAF51074();
    if (v2 <= 0x3F)
    {
      sub_1BAF6081C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BAF6081C(uint64_t a1)
{
  if (!qword_1EDBA38A0)
  {
    sub_1BAF8E728();
    v1 = sub_1BAF8F0D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBA38A0);
    }
  }
}

uint64_t sub_1BAF60878(void *a1, void *a2)
{
  v4 = sub_1BAF8E728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - v9;
  v11 = sub_1BAF2DB10(&qword_1EBC36DF8, &qword_1BAF97AC0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  if (*a1 != *a2 && (sub_1BAF8F4C8() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for WorkOrder(0);
  if ((_s12APFoundation14ExpirationDateV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v15 = v14[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19 || (*v16 != *v18 || v17 != v19) && (sub_1BAF8F4C8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (qword_1BAF97AC8[*(a1 + v14[7])] != qword_1BAF97AC8[*(a2 + v14[7])])
  {
    return 0;
  }

  v20 = v14[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24 || (*v21 != *v23 || v22 != v24) && (sub_1BAF8F4C8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = v14[9];
  v26 = *(v11 + 48);
  sub_1BAF400F4(a1 + v25, v13);
  v50 = v26;
  sub_1BAF400F4(a2 + v25, &v13[v26]);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) != 1)
  {
    sub_1BAF400F4(v13, v10);
    if (v27(&v13[v50], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v50], v4);
      sub_1BAF60D58();
      v28 = sub_1BAF8EC18();
      v29 = *(v5 + 8);
      v29(v7, v4);
      v29(v10, v4);
      sub_1BAF32F04(v13, &unk_1EBC36750, &qword_1BAF95590);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_26;
    }

    (*(v5 + 8))(v10, v4);
LABEL_24:
    sub_1BAF32F04(v13, &qword_1EBC36DF8, &qword_1BAF97AC0);
    return 0;
  }

  if (v27(&v13[v50], 1, v4) != 1)
  {
    goto LABEL_24;
  }

  sub_1BAF32F04(v13, &unk_1EBC36750, &qword_1BAF95590);
LABEL_26:
  if (*(a1 + v14[10]) != *(a2 + v14[10]))
  {
    return 0;
  }

  v30 = v14[11];
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  if ((v31 != *v33 || v32 != v33[1]) && (sub_1BAF8F4C8() & 1) == 0)
  {
    return 0;
  }

  v34 = v14[12];
  v35 = *(a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  if ((v35 != *v37 || v36 != v37[1]) && (sub_1BAF8F4C8() & 1) == 0)
  {
    return 0;
  }

  v38 = v14[13];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_1BAF8F4C8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v43 = v14[14];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (v47 && (*v44 == *v46 && v45 == v47 || (sub_1BAF8F4C8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v47)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1BAF60D58()
{
  result = qword_1EDBA38A8;
  if (!qword_1EDBA38A8)
  {
    sub_1BAF8E728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA38A8);
  }

  return result;
}

Swift::Double_optional __swiftcall NullKeyValueSource.doubleFor(key:)(Swift::String key)
{
  v1 = 0;
  result.is_nil = v1;
  return result;
}

Swift::String_optional __swiftcall NullKeyValueSource.stringFor(key:)(Swift::String key)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

void *encodeJSONData<A>(_:using:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  a2(a1);
  v5 = sub_1BAF8EB78();

  v10[0] = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:v10];

  v7 = v10[0];
  if (v6)
  {
    v8 = sub_1BAF8E5F8();
  }

  else
  {
    v8 = v7;
    sub_1BAF8E4C8();

    swift_willThrow();
  }

  return v8;
}

uint64_t decodeJSONData<A>(_:using:)(uint64_t a1, uint64_t a2, void (*a3)())
{
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  v5 = sub_1BAF8E5D8();
  v11[0] = 0;
  v6 = [v4 JSONObjectWithData:v5 options:0 error:v11];

  if (v6)
  {
    v7 = v11[0];
    sub_1BAF8F168();
    swift_unknownObjectRelease();
    sub_1BAF2DB10(&qword_1EBC36CF8, &qword_1BAF97B20);
    if (swift_dynamicCast())
    {
      a3();
    }

    sub_1BAF61B7C();
    swift_allocError();
    *v10 = 0xD000000000000012;
    v10[1] = 0x80000001BAFA31B0;
  }

  else
  {
    v9 = v11[0];
    sub_1BAF8E4C8();
  }

  return swift_willThrow();
}

uint64_t _sSD12APFoundationSSRszypRs_rlE16requiredValueForyqd__SSAA16JSONParsingErrorOYKlF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1BAF8F0D8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  if (*(a3 + 16) && (v16 = sub_1BAF31DBC(a1, a2), (v17 & 1) != 0))
  {
    sub_1BAF45388(*(a3 + 56) + 32 * v16, &v20);
    sub_1BAF32E44(&v20, &v22);
    sub_1BAF45388(&v22, &v20);
    if (swift_dynamicCast())
    {
      sub_1BADC5BE0(&v22);
      v18 = *(a4 - 8);
      (*(v18 + 56))(v15, 0, 1, a4);
      return (*(v18 + 32))(a6, v15, a4);
    }

    else
    {
      (*(*(a4 - 8) + 56))(v15, 1, 1, a4);
      (*(v13 + 8))(v15, v12);
      *a5 = a1;
      *(a5 + 8) = a2;
      *(a5 + 16) = 0;
      *&v20 = a1;
      *(&v20 + 1) = a2;
      v21 = 0;
      sub_1BAF61DAC();

      swift_willThrowTypedImpl();
      return sub_1BADC5BE0(&v22);
    }
  }

  else
  {
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = 1;
    *&v22 = a1;
    *(&v22 + 1) = a2;
    v23 = 1;
    sub_1BAF61DAC();

    return swift_willThrowTypedImpl();
  }
}

uint64_t _sSD12APFoundationSSRszypRs_rlE16requiredValueFor_9transformqd_0_SS_qd_0_qd__XEtAA16JSONParsingErrorOYKr0_lF(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a6 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _sSD12APFoundationSSRszypRs_rlE16requiredValueForyqd__SSAA16JSONParsingErrorOYKlF(v13, v16, v18, v17, &v21, v15);
  if (v8)
  {
    v20 = v22;
    *a8 = v21;
    *(a8 + 16) = v20;
  }

  else
  {
    a3(v15);
    return (*(v12 + 8))(v15, a6);
  }

  return result;
}

uint64_t _sSD12APFoundationSSRszypRs_rlE16requiredValueFor_9transformqd_0_SS_qd_0_Sgqd__XEtAA16JSONParsingErrorOYKr0_lF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v29 = a4;
  v30 = a3;
  v27 = a8;
  v28 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v15;
  v16 = sub_1BAF8F0D8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  v20 = v34;
  result = _sSD12APFoundationSSRszypRs_rlE16requiredValueForyqd__SSAA16JSONParsingErrorOYKlF(a1, a2, a5, a6, &v32, v14);
  if (v20)
  {
    v22 = v33;
    *a7 = v32;
    *(a7 + 16) = v22;
  }

  else
  {
    v26 = v16;
    v34 = a2;
    v30(v14);
    (*(v28 + 8))(v14, a6);
    v23 = v31;
    v24 = *(v31 - 8);
    if ((*(v24 + 48))(v19, 1, v31) == 1)
    {
      (*(v17 + 8))(v19, v26);
      v25 = v34;
      *a7 = a1;
      *(a7 + 8) = v25;
      *(a7 + 16) = 0;
      *&v32 = a1;
      *(&v32 + 1) = v25;
      v33 = 0;
      sub_1BAF61DAC();

      return swift_willThrowTypedImpl();
    }

    else
    {
      return (*(v24 + 32))(v27, v19, v23);
    }
  }

  return result;
}

unint64_t sub_1BAF61B7C()
{
  result = qword_1EBC36E00;
  if (!qword_1EBC36E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36E00);
  }

  return result;
}

uint64_t _s12APFoundation16JSONParsingErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_1BAF61E1C(*a2, a2[1]);
    sub_1BAF61E1C(v3, v2);
    sub_1BAF61E24(v3, v2);
    sub_1BAF61E24(v5, v4);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v11 = sub_1BAF8F4C8();
    sub_1BAF61E1C(v5, v4);
    sub_1BAF61E1C(v3, v2);
    sub_1BAF61E24(v3, v2);
    sub_1BAF61E24(v5, v4);
    return v11 & 1;
  }

LABEL_15:
  sub_1BAF61E1C(v6, v7);
  sub_1BAF61E1C(v3, v2);
  sub_1BAF61E24(v3, v2);
  sub_1BAF61E24(v3, v2);
  return 1;
}

unint64_t sub_1BAF61DAC()
{
  result = qword_1EBC36E08;
  if (!qword_1EBC36E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36E08);
  }

  return result;
}

uint64_t OSInstallation.hashValue.getter(char a1)
{
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](a1 & 1);
  return sub_1BAF8F5E8();
}

unint64_t sub_1BAF61EB0()
{
  result = qword_1EBC36E10;
  if (!qword_1EBC36E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36E10);
  }

  return result;
}

void *DatabaseQueueStore.__allocating_init(database:tableName:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  type metadata accessor for DatabaseManager();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a1;
  v8[2] = v9;
  v8[3] = a2;
  v8[4] = a3;
  return v8;
}

void *DatabaseQueueStore.init(database:tableName:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DatabaseManager();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a1;
  v4[2] = v9;
  v4[3] = a2;
  v4[4] = a3;
  return v4;
}

uint64_t sub_1BAF62004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v3;
  v7[4] = a2;
  v7[5] = a3;

  sub_1BAF5FDB8(sub_1BAF62E4C, v7);
}

void sub_1BAF620B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for QueueMessage(255, *(*a2 + 80), *(*a2 + 88), *(*a2 + 96));
  v7 = sub_1BAF8EF28();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1BFB04740](&v9, v7, WitnessTable);
  sub_1BAF8F378();
  swift_getWitnessTable();
  sub_1BAF8EE88();

  sub_1BAF6226C(a3, a4);
  if (v4)
  {
  }
}

void sub_1BAF62234(void *a1)
{
  sub_1BAF62A30(a1, 0);
  if (v1)
  {
  }
}

uint64_t sub_1BAF6226C(uint64_t a1, uint64_t a2)
{
  sub_1BAF8F268();

  strcpy(v11, "DELETE FROM ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  MEMORY[0x1BFB048C0](*(v2 + 24), *(v2 + 32));
  MEMORY[0x1BFB048C0](0x6920455245485720, 0xEB000000003F3D64);
  v6 = v11[0];
  v5 = v11[1];
  sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BAF95190;
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &protocol witness table for String;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v8 = sub_1BADC826C(v6, v5, inited);

  swift_setDeallocating();
  sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
  result = swift_arrayDestroy();
  if ((v8 & 1) == 0)
  {
    sub_1BAF62E6C();
    swift_allocError();
    *v10 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BAF62400@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_1BAF8F268();

  strcpy(v13, "SELECT * FROM ");
  HIBYTE(v13[1]) = -18;
  MEMORY[0x1BFB048C0](v1[3], v1[4]);
  MEMORY[0x1BFB048C0](0xD000000000000016, 0x80000001BAFA31D0);
  v5 = v13[0];
  v4 = v13[1];
  sub_1BAF8E368();
  swift_allocObject();
  v6 = sub_1BAF8E358();
  v7 = swift_allocObject();
  v8 = v3[10];
  v7[2] = v8;
  v9 = v3[11];
  v7[3] = v9;
  v10 = v3[12];
  v7[4] = v10;
  v7[5] = v6;
  v11 = type metadata accessor for QueueMessage(0, v8, v9, v10);

  sub_1BAF5F1D0(v5, v4, 0, sub_1BAF62EC0, v7, v11, a1);
}

uint64_t sub_1BAF625B0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v55 = a5;
  v56 = a6;
  v60 = a2;
  v61 = a3;
  v57 = *(a3 - 8);
  v58 = a4;
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v51 - v11;
  v13 = sub_1BAF8EC78();
  v59 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  sub_1BADC8524(a1, v16);
  result = (*(v17 + 80))(4, v16, v17);
  if (!v6)
  {
    v19 = a1;
    v53 = v10;
    v54 = 0;
    v20 = v61;
    sub_1BAF8EC68();
    v21 = sub_1BAF8EC48();
    v23 = v22;

    (*(v59 + 8))(v15, v13);
    if (v23 >> 60 == 15)
    {
      sub_1BAF62E6C();
      swift_allocError();
      *v24 = 1;
      return swift_willThrow();
    }

    else
    {
      v25 = v12;
      v26 = v20;
      v27 = v54;
      sub_1BAF8E348();
      if (v27)
      {
        return sub_1BAF3B72C(v21, v23);
      }

      else
      {
        v59 = v21;
        v60 = v23;
        v28 = v19;
        v29 = v19[3];
        v30 = v28[4];
        sub_1BADC8524(v28, v29);
        v31 = (*(v30 + 80))(0, v29, v30);
        v52 = v32;
        v33 = v28[3];
        v34 = v28[4];
        sub_1BADC8524(v28, v33);
        v35 = (*(v34 + 88))(3, v33, v34);
        v37 = v36;
        v38 = v28;
        v39 = v28[3];
        v40 = v28[4];
        sub_1BADC8524(v38, v39);
        v41 = (*(v40 + 80))(2, v39, v40);
        v54 = 0;
        v42 = v41;
        v44 = v43;
        sub_1BAF3B72C(v59, v60);
        v45 = v53;
        (*(v57 + 32))(v53, v25, v26);
        v46 = v55;
        v47 = v35;
        v48 = v58;
        v49 = v56;
        sub_1BAF4FD60(v31, v52, v47, v37, v42, v44, v45, v26, v56, v58, v55);
        v50 = type metadata accessor for QueueMessage(0, v26, v48, v46);
        return (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
      }
    }
  }

  return result;
}

uint64_t sub_1BAF62A30(void *a1, char a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = sub_1BAF8EC78();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1BAF8F268();
  MEMORY[0x1BFB048C0](0x4920545245534E49, 0xEC000000204F544ELL);
  v9 = v4[3];
  v10 = v4[4];
  MEMORY[0x1BFB048C0](v9, v10);
  if (a2)
  {
    v11 = " (id, position, type, assignedListener, payload)\nVALUES (?,(SELECT COALESCE(MAX(position), 0) + 1 FROM ";
  }

  else
  {
    v11 = " (id, position, type, assignedListener, payload)\nVALUES (?,(SELECT COALESCE(MIN(position), 0) - 1 FROM ";
  }

  MEMORY[0x1BFB048C0](0xD000000000000067, (v11 - 32) | 0x8000000000000000);
  MEMORY[0x1BFB048C0](v9, v10);
  MEMORY[0x1BFB048C0](0x293F2C3F2C3F2C29, 0xE90000000000003BLL);
  sub_1BAF8E398();
  swift_allocObject();
  sub_1BAF8E388();
  v12 = type metadata accessor for QueueMessage(0, v7[10], v7[11], v7[12]);
  v13 = sub_1BAF8E378();
  if (v3)
  {

    sub_1BAF62E6C();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
  }

  else
  {
    v16 = v14;
    v17 = v13;
    sub_1BAF8EC68();
    v38 = v16;
    v37 = sub_1BAF8EC58();
    v19 = v18;
    sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BAF97CC0;
    v21 = a1[1];
    *(inited + 32) = *a1;
    v22 = MEMORY[0x1E69E6158];
    v23 = &protocol witness table for String;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &protocol witness table for String;
    *(inited + 40) = v21;
    v24 = a1[2];
    v25 = a1[3];
    *(inited + 96) = v22;
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = v24;
    *(inited + 80) = v25;
    v26 = (a1 + *(v12 + 52));
    v27 = v26[1];
    if (v27)
    {
      v28 = *v26;
      v29 = v27;
      v30 = MEMORY[0x1E69E6158];
    }

    else
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v23 = 0;
      *(inited + 128) = 0;
    }

    *(inited + 112) = v28;
    *(inited + 120) = v29;
    *(inited + 136) = v30;
    *(inited + 144) = v23;
    if (v19)
    {
      v31 = &protocol witness table for String;
      v32 = MEMORY[0x1E69E6158];
      v33 = v37;
    }

    else
    {
      v33 = 0;
      v32 = 0;
      v31 = 0;
      *(inited + 168) = 0;
    }

    *(inited + 152) = v33;
    *(inited + 160) = v19;
    *(inited + 176) = v32;
    *(inited + 184) = v31;

    v34 = sub_1BADC826C(0, 0xE000000000000000, inited);

    swift_setDeallocating();
    sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
    swift_arrayDestroy();
    if ((v34 & 1) == 0)
    {
      sub_1BAF62E6C();
      swift_allocError();
      *v35 = 0;
      swift_willThrow();
    }

    sub_1BAF2DABC(v17, v38);
  }
}

unint64_t sub_1BAF62E6C()
{
  result = qword_1EBC36E18;
  if (!qword_1EBC36E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36E18);
  }

  return result;
}

uint64_t DatabaseQueueStore.deinit()
{

  return v0;
}

uint64_t DatabaseQueueStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1BAF63160()
{
  result = qword_1EBC36E20;
  if (!qword_1EBC36E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36E20);
  }

  return result;
}

void sub_1BAF631D0()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 4);
  swift_beginAccess();
  if (*(v0 + 40) == 2 && *(v0 + 32) == 0)
  {
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    swift_beginAccess();
    v3 = *(v0 + 16);
    v4 = MEMORY[0x1E69E7CC0];
    *(v0 + 16) = MEMORY[0x1E69E7CC0];
    v5 = *(v0 + 56);
    *(v0 + 56) = 0;
    swift_beginAccess();
    *(v0 + 24) = v4;

    os_unfair_lock_unlock(v1 + 4);
    if (v5)
    {

      sub_1BAF8E9C8();
    }

    v6 = *(v3 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = v3 + 40;
      while (v7 < *(v3 + 16))
      {
        ++v7;
        v9 = *(v8 - 8);

        v9(v10);

        v8 += 16;
        if (v6 == v7)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_12:
    }
  }

  else
  {
    os_unfair_lock_unlock(v1 + 4);
  }
}

void sub_1BAF63320(void *a1)
{
  v3 = *(v1 + 48);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v1 + 40) == 2 && *(v1 + 32) == 0)
  {
    *(v1 + 32) = a1;
    *(v1 + 40) = 1;
    swift_beginAccess();
    v5 = *(v1 + 24);
    v6 = MEMORY[0x1E69E7CC0];
    *(v1 + 24) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    *(v1 + 16) = v6;
    v7 = a1;

    os_unfair_lock_unlock(v3 + 4);
    v8 = *(v5 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v5 + 40;
      while (v9 < *(v5 + 16))
      {
        ++v9;
        v11 = *(v10 - 8);
        v12 = a1;

        v11(&v12);

        v10 += 16;
        if (v8 == v9)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
    }
  }

  else
  {
    os_unfair_lock_unlock(v3 + 4);
  }
}

uint64_t sub_1BAF63460(void *a1)
{
  v29 = sub_1BAF8E9A8();
  v3 = *(v29 - 8);
  v4 = MEMORY[0x1EEE9AC00](v29);
  v28 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - v6;
  v26 = sub_1BAF8E958();
  MEMORY[0x1EEE9AC00](v26);
  v27 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAF8F098();
  v25 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BAF8F078();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1BAF8E988();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v15 = a1;
  }

  else
  {
    v16 = sub_1BAF4F388();
    v24[2] = "Storage";
    v24[3] = v16;
    sub_1BAF8E968();
    aBlock[0] = v14;
    v24[1] = sub_1BAF3B7AC(&qword_1EDBA2080, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    sub_1BAF2DB10(&qword_1EBC36768, &qword_1BAF955B8);
    sub_1BAF55F7C(&qword_1EDBA20C0, &qword_1EBC36768, &qword_1BAF955B8, MEMORY[0x1E69E6328]);
    a1 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    sub_1BAF8F198();
    (*(v25 + 104))(v11, *MEMORY[0x1E69E8090], v9);
    v15 = sub_1BAF8F0B8();
  }

  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BAF64560;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = &unk_1F38F7220;
  _Block_copy(aBlock);
  v30 = v14;
  sub_1BAF3B7AC(&qword_1EDBA2128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v18 = a1;

  sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF55F7C(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0, MEMORY[0x1E69E6328]);
  sub_1BAF8F198();
  sub_1BAF8E9D8();
  swift_allocObject();
  v19 = sub_1BAF8E9B8();

  *(v1 + 56) = v19;

  v20 = v28;
  sub_1BAF8E998();
  sub_1BAF8E9F8();
  v21 = *(v3 + 8);
  v22 = v29;
  v21(v20, v29);
  sub_1BAF8F088();

  return (v21)(v7, v22);
}

uint64_t sub_1BAF639D4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BAF2DB10(&qword_1EBC36E38, qword_1BAF97E48);
    sub_1BAF55F7C(&qword_1EBC36E40, &qword_1EBC36E38, qword_1BAF97E48, &unk_1BAF96AE8);
    v2 = swift_allocError();
    sub_1BAF63320(v2);
  }

  return result;
}

uint64_t sub_1BAF63A9C(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12APFoundation15APPromiseBridge_promise);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(v5 + 48);
  swift_retain_n();

  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  if (*(v5 + 40))
  {
    if (*(v5 + 40) == 1)
    {
    }

    else
    {
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1BAF5DCB0;
      *(v8 + 24) = v6;
      swift_beginAccess();
      v9 = *(v5 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 16) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_1BAF4F8CC(0, v9[2] + 1, 1, v9);
        *(v5 + 16) = v9;
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_1BAF4F8CC((v11 > 1), v12 + 1, 1, v9);
      }

      v9[2] = v12 + 1;
      v13 = &v9[2 * v12];
      v13[4] = sub_1BAF6409C;
      v13[5] = v8;
      *(v5 + 16) = v9;
      swift_endAccess();
    }

    os_unfair_lock_unlock((*(v5 + 48) + 16));
  }

  else
  {

    os_unfair_lock_unlock((*(v5 + 48) + 16));
    a1();
  }
}

id APPromiseBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id APPromiseBridge.init()()
{
  v1 = OBJC_IVAR____TtC12APFoundation15APPromiseBridge_promise;
  sub_1BAF2DB10(&qword_1EBC36E30, &qword_1BAF97E18);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = v3;
  *(v2 + 32) = 0;
  *(v2 + 40) = 2;
  sub_1BAF2DB10(&qword_1EBC36B50, &qword_1BAF97720);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + 48) = v4;
  *(v2 + 56) = 0;
  *&v0[v1] = v2;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for APPromiseBridge();
  return objc_msgSendSuper2(&v6, sel_init);
}

id APPromiseBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APPromiseBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BAF640C4(void (*a1)(void *), uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 48);
  os_unfair_lock_lock(v6 + 4);
  swift_beginAccess();
  if (!*(v2 + 40))
  {
LABEL_9:
    os_unfair_lock_unlock(v6 + 4);
    return v3;
  }

  if (*(v2 + 40) != 1)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    swift_beginAccess();
    v10 = *(v3 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 24) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1BAF4F33C(0, v10[2] + 1, 1, v10);
      *(v3 + 24) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1BAF4F33C((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = sub_1BAF64580;
    v14[5] = v9;
    *(v3 + 24) = v10;
    swift_endAccess();
    goto LABEL_9;
  }

  v7 = *(v2 + 32);
  v8 = v7;
  os_unfair_lock_unlock(v6 + 4);
  a1(v7);
  sub_1BAF4FC58(v7, 1);
  return v3;
}

uint64_t sub_1BAF64348(uint64_t a1, void (**a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + OBJC_IVAR____TtC12APFoundation15APPromiseBridge_promise);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BAF64550;
  *(v6 + 24) = v4;
  v7 = *(v5 + 48);
  swift_retain_n();
  _Block_copy(a2);

  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  if (*(v5 + 40))
  {
    if (*(v5 + 40) == 1)
    {
    }

    else
    {
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1BAF6458C;
      *(v8 + 24) = v6;
      swift_beginAccess();
      v9 = *(v5 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 16) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_1BAF4F8CC(0, v9[2] + 1, 1, v9);
        *(v5 + 16) = v9;
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_1BAF4F8CC((v11 > 1), v12 + 1, 1, v9);
      }

      v9[2] = v12 + 1;
      v13 = &v9[2 * v12];
      v13[4] = sub_1BAF64588;
      v13[5] = v8;
      *(v5 + 16) = v9;
      swift_endAccess();
    }

    os_unfair_lock_unlock((*(v5 + 48) + 16));
  }

  else
  {

    os_unfair_lock_unlock((*(v5 + 48) + 16));
    a2[2](a2);
  }
}

uint64_t sub_1BAF64568(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAF6466C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1BAF646A8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BAF646C4(uint64_t *a1, int a2)
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

uint64_t sub_1BAF6470C(uint64_t result, int a2, int a3)
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

uint64_t (*sub_1BAF64778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF65104;
}

uint64_t (*sub_1BAF648A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF6509C;
}

uint64_t (*sub_1BAF649D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF65034;
}

uint64_t (*sub_1BAF64AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF64FCC;
}

uint64_t (*sub_1BAF64C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF64F64;
}

uint64_t (*sub_1BAF64E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>))()
{
  v10 = sub_1BAF64778(a1, a2, a3, a4);
  v23 = v11;
  v24 = v10;
  v22 = sub_1BAF648A4(a1, a2, a3, a4);
  v13 = v12;
  v14 = sub_1BAF649D0(a1, a2, a3, a4);
  v16 = v15;
  v17 = sub_1BAF64AFC(a1, a2, a3, a4);
  v19 = v18;
  result = sub_1BAF64C28(a1, a2, a3, a4);
  *a5 = v24;
  a5[1] = v23;
  a5[2] = v22;
  a5[3] = v13;
  a5[4] = v14;
  a5[5] = v16;
  a5[6] = v17;
  a5[7] = v19;
  a5[8] = result;
  a5[9] = v21;
  return result;
}

uint64_t StoredCohortCandidateSource.__allocating_init(store:fallback:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1BADC5B38(a1, v4 + 16);
  sub_1BADC5B38(a2, v4 + 56);
  return v4;
}

APFoundation::CohortCandidate __swiftcall StoredCohortCandidateSource.candidate()()
{
  v2 = v0;
  v3 = v1[5];
  v4 = v1[6];
  sub_1BADC8524(v1 + 2, v3);
  (*(v4 + 8))(&v11, v3, v4);
  if (v12)
  {
    v6 = v1[10];
    v7 = v1[11];
    sub_1BADC8524(v1 + 7, v6);
    (*(v7 + 8))(&v11, v6, v7);
    v8 = v11;
    v9 = v1[5];
    v10 = v1[6];
    sub_1BADC8524(v1 + 2, v9);
    v11 = v8;
    (*(v10 + 16))(&v11, v9, v10);
  }

  else
  {
    v8 = v11;
  }

  *v2 = v8;
  return result;
}

uint64_t StoredCohortCandidateSource.deinit()
{
  sub_1BADC5BE0((v0 + 16));
  sub_1BADC5BE0((v0 + 56));
  return v0;
}

uint64_t StoredCohortCandidateSource.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));
  sub_1BADC5BE0((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t EntropyLimitedString.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static EntropyLimitedString.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BAF8F4C8();
  }
}

uint64_t Data.init(base64URLEncoded:)(uint64_t a1, uint64_t a2)
{
  sub_1BAF2DB58();
  sub_1BAF8F148();

  sub_1BAF8F148();

  while ((sub_1BAF8ED28() & 3) != 0)
  {
    MEMORY[0x1BFB048C0](61, 0xE100000000000000);
  }

  v2 = sub_1BAF8E5B8();
  v4 = v3;
  sub_1BAF3B664(v2, v3);

  if (v4 >> 60 != 15)
  {
    sub_1BAF3B72C(v2, v4);
  }

  return v2;
}

Swift::String __swiftcall Data.base64URLEncodedString()()
{
  sub_1BAF8E5E8();
  sub_1BAF2DB58();
  sub_1BAF8F148();

  sub_1BAF8F148();

  v0 = sub_1BAF8F148();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t Passthrough<A>.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1BAF2DB10(&qword_1EBC366D0, &qword_1BAF95240);
    v3 = sub_1BAF8F3A8();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;

  sub_1BAF6593C(v4, 1, &v6);

  *a2 = v6;
  return result;
}

id static Passthrough<A>.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1BAF44DB0(*a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1BAF8EB78();

  v5 = [v3 initWithDictionary_];

  sub_1BAF44DB0(v2);
  v6 = sub_1BAF8EB78();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

uint64_t sub_1BAF65880@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1BAF2DB10(&qword_1EBC366D0, &qword_1BAF95240);
    v3 = sub_1BAF8F3A8();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;

  sub_1BAF6593C(v4, 1, &v6);

  *a2 = v6;
  return result;
}

void sub_1BAF6593C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_1BAF65CF8(a1 + 32, &v44);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_1BAF32E44(v46, v41);
  v9 = *a3;
  v10 = sub_1BAF31DBC(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1BAF669F0(v15, a2 & 1);
    v10 = sub_1BAF31DBC(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_1BAF8F538();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1BAF6783C();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    sub_1BAF2DB10(&qword_1EBC36890, &qword_1BAF97140);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1BADC5BE0(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_1BAF32E44(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_1BAF65CF8(v25, &v44);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_1BAF32E44(v46, v41);
      v29 = *a3;
      v30 = sub_1BAF31DBC(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_1BAF669F0(v34, 1);
        v30 = sub_1BAF31DBC(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_1BAF32E44(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1BAF8F268();
  MEMORY[0x1BFB048C0](0xD00000000000001BLL, 0x80000001BAFA33C0);
  sub_1BAF8F318();
  MEMORY[0x1BFB048C0](39, 0xE100000000000000);
  sub_1BAF8F368();
  __break(1u);
}

uint64_t sub_1BAF65CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&unk_1EBC36810, &qword_1BAF95248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF65D94()
{
  v0 = sub_1BAF8E768();
  v1 = v0;
  v3 = v2;
  v4 = v0 >> 8;
  v5 = v0 >> 16;
  v6 = v0 >> 24;
  v7 = HIDWORD(v0);
  v8 = v0 >> 40;
  v9 = HIWORD(v0);
  v10 = HIBYTE(v0);
  v14 = v2 >> 8;
  v15 = v2 >> 16;
  v16 = v2 >> 24;
  v17 = HIDWORD(v2);
  v18 = v2 >> 40;
  v19 = HIWORD(v2);
  v20 = HIBYTE(v2);
  sub_1BAF2DB10(&qword_1EBC36688, &qword_1BAF950D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BAF98060;
  *(v11 + 32) = v1;
  *(v11 + 33) = v4;
  *(v11 + 34) = v5;
  *(v11 + 35) = v6;
  *(v11 + 36) = v7;
  *(v11 + 37) = v8;
  *(v11 + 38) = v9;
  *(v11 + 39) = v10;
  *(v11 + 40) = v3;
  *(v11 + 41) = v14;
  *(v11 + 42) = v15;
  *(v11 + 43) = v16;
  *(v11 + 44) = v17;
  *(v11 + 45) = v18;
  *(v11 + 46) = v19;
  *(v11 + 47) = v20;
  v12 = sub_1BAF2EF34(v11);

  return v12;
}

uint64_t PopulatedArray.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1BAF6612C(a3, a3);
  v7 = *(a3 - 8);
  swift_allocObject();
  sub_1BAF8EEB8();
  (*(v7 + 16))(v8, a1, a3);
  sub_1BAF8EF28();
  v9 = sub_1BAF8EEC8();

  result = (*(v7 + 8))(a1, a3);
  *a4 = v9;
  return result;
}

uint64_t PopulatedArray.init(_:)@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  sub_1BAF8EF28();
  swift_getWitnessTable();
  result = Collection.isPopulated.getter();
  if ((result & 1) == 0)
  {

    a1 = 0;
  }

  *a3 = a1;
  return result;
}

uint64_t PopulatedArray.debugDescription.getter(uint64_t a1)
{
  sub_1BAF8EF28();
  swift_getWitnessTable();
  sub_1BAF8F4A8();
  return 0;
}

uint64_t sub_1BAF6612C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_1BAF2DB10(&qword_1EBC36E48, &qword_1BAF98128);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t CachingPurposeConfigurationStore.__allocating_init(backingStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = sub_1BAF32B24(MEMORY[0x1E69E7CC0]);
  sub_1BADC5B38(a1, v2 + 16);
  return v2;
}

uint64_t CachingPurposeConfigurationStore.init(backingStore:)(__int128 *a1)
{
  *(v1 + 56) = sub_1BAF32B24(MEMORY[0x1E69E7CC0]);
  sub_1BADC5B38(a1, v1 + 16);
  return v1;
}

uint64_t CachingPurposeConfigurationStore.deinit()
{
  sub_1BADC5BE0((v0 + 16));

  return v0;
}

uint64_t CachingPurposeConfigurationStore.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t CachingPurposeConfigurationStore.configurationFor(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  v6 = v2[7];
  if (*(v6 + 16) && (result = sub_1BAF32FCC(), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + result);
  }

  else
  {
    v10 = v3[5];
    v11 = v3[6];
    sub_1BADC8524(v3 + 2, v10);
    (*(v11 + 8))(v14, a1, v10, v11);
    v9 = v14[0];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v3[7];
    v3[7] = 0x8000000000000000;
    sub_1BAF671E4(v9, a1, isUniquelyReferenced_nonNull_native);
    v3[7] = v13;
    result = swift_endAccess();
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1BAF663C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_1BAF8E908();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1BAF2DB10(&qword_1EBC366F8, &qword_1BAF95270);
  v39 = v4;
  result = sub_1BAF8F398();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_1BAF8F5A8();
      MEMORY[0x1BFB05110](v24);
      result = sub_1BAF8F5E8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1BAF6672C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1BAF2DB10(&qword_1EBC366E8, &qword_1BAF95260);
  v33 = v4;
  result = sub_1BAF8F398();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1BADC5B38(v24, v34);
      }

      else
      {
        sub_1BAF3BB60(v24, v34);
      }

      sub_1BAF8F5A8();
      sub_1BAF8ED18();
      result = sub_1BAF8F5E8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1BADC5B38(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1BAF669F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1BAF2DB10(&qword_1EBC366D0, &qword_1BAF95240);
  v33 = v4;
  result = sub_1BAF8F398();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1BAF32E44(v24, v34);
      }

      else
      {
        sub_1BAF45388(v24, v34);
      }

      sub_1BAF8F5A8();
      sub_1BAF8ED18();
      result = sub_1BAF8F5E8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1BAF32E44(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1BAF66CA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1BAF2DB10(&qword_1EBC366D8, &qword_1BAF95250);
  result = sub_1BAF8F398();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      sub_1BAF8F5A8();
      MEMORY[0x1BFB05110](v20);
      result = sub_1BAF8F5E8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1BAF66F28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1BAF32FCC();
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1BAF6742C();
      goto LABEL_7;
    }

    sub_1BAF663C8(v13, a3 & 1);
    v24 = sub_1BAF32FCC();
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for APLogCategory(0);
    result = sub_1BAF8F538();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1BAF8E908();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1BAF67310(v10, a2, a1, v16);
}

uint64_t sub_1BAF67090(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BAF31DBC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BAF67694();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BAF6672C(v16, a4 & 1);
    v11 = sub_1BAF31DBC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1BAF8F538();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    sub_1BADC5BE0(v22);

    return sub_1BADC5B38(a1, v22);
  }

  else
  {
    sub_1BAF673BC(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1BAF671E4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1BAF32FCC();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1BAF679E0();
    result = v17;
    goto LABEL_8;
  }

  sub_1BAF66CA8(v14, a3 & 1);
  result = sub_1BAF32FCC();
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for APMetricPurposeType(0);
  result = sub_1BAF8F538();
  __break(1u);
  return result;
}

uint64_t sub_1BAF67310(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1BAF8E908();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1BAF673BC(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1BADC5B38(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1BAF6742C()
{
  v1 = v0;
  v29 = sub_1BAF8E908();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF2DB10(&qword_1EBC366F8, &qword_1BAF95270);
  v3 = *v0;
  v4 = sub_1BAF8F388();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1BAF67694()
{
  v1 = v0;
  sub_1BAF2DB10(&qword_1EBC366E8, &qword_1BAF95260);
  v2 = *v0;
  v3 = sub_1BAF8F388();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1BAF3BB60(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1BADC5B38(v25, *(v4 + 56) + v22);
      }

      while (v12);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1BAF6783C()
{
  v1 = v0;
  sub_1BAF2DB10(&qword_1EBC366D0, &qword_1BAF95240);
  v2 = *v0;
  v3 = sub_1BAF8F388();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1BAF45388(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1BAF32E44(v25, (*(v4 + 56) + v22));
      }

      while (v12);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1BAF679E0()
{
  v1 = v0;
  sub_1BAF2DB10(&qword_1EBC366D8, &qword_1BAF95250);
  v2 = *v0;
  v3 = sub_1BAF8F388();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BAF67BAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
}

uint64_t MessageQueue.__allocating_init<A>(queueStore:log:timeout:processingQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  swift_allocObject();
  v12 = sub_1BAF6C6B4(a1, a2, a3, a4, a5, a6);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v12;
}

uint64_t MessageQueue.init<A>(queueStore:log:timeout:processingQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = sub_1BAF6C6B4(a1, a2, a3, a4, a5, a6);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v8;
}

void sub_1BAF67CF8(uint64_t a1)
{
  v2 = sub_1BAF6BB1C();
  if (v2)
  {
    v3 = sub_1BAF8F048();
    v4 = *(a1 + 128);
    sub_1BAF8E8B8(v3, &dword_1BADC1000, v4, "Message queue is ready.", 23, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1BAF6C360(v2);
  }
}

uint64_t sub_1BAF67DB0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BAF8E958();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BAF8E988();
  v9 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 112);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_1BAF8E968();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1BAF6CCDC(&qword_1EDBA2128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF8F198();
  MEMORY[0x1BFB04C00](0, v11, v8, v12);
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

uint64_t sub_1BAF68040(uint64_t a1)
{
  v2 = sub_1BAF8F048();
  v3 = *(a1 + 128);
  sub_1BAF8E8B8(v2, &dword_1BADC1000, v3, "Starting message queue.", 23, 2, MEMORY[0x1E69E7CC0]);

  *(a1 + 121) = 1;
  return sub_1BAF68638();
}

uint64_t sub_1BAF680B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 80);
  sub_1BAF3DA9C(a1, v5, a2, a3, v7);
  swift_beginAccess();
  type metadata accessor for AnyMessageQueueListener(255, v5, *(v4 + 88), *(v4 + 96));
  sub_1BAF8EF28();
  sub_1BAF8EF08();
  return swift_endAccess();
}

uint64_t sub_1BAF68180(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BAF8E958();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1BAF8E988();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for QueueMessage(0, v4[10], v4[11], v4[12]);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32[-v13];
  v15 = sub_1BAF8F018();
  v16 = *(v2 + 128);
  (*(v12 + 16))(v14, a1, v11);
  if (os_log_type_enabled(v16, v15))
  {
    v34 = v16;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v15;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136446210;
    v20 = QueueMessage.debugDescription.getter(v11);
    v35 = a1;
    v36 = v8;
    v21 = v6;
    v22 = v5;
    v23 = v20;
    v25 = v24;
    (*(v12 + 8))(v14, v11);
    v26 = v23;
    v5 = v22;
    v6 = v21;
    v8 = v36;
    v27 = sub_1BAF49CF8(v26, v25, aBlock);
    a1 = v35;

    *(v17 + 4) = v27;
    v28 = v34;
    _os_log_impl(&dword_1BADC1000, v34, v33, "Adding message %{public}s to the queue.", v17, 0xCu);
    sub_1BADC5BE0(v19);
    MEMORY[0x1BFB06160](v19, -1, -1);
    MEMORY[0x1BFB06160](v17, -1, -1);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
  }

  sub_1BAF6BEC0(a1);
  aBlock[4] = sub_1BAF6CE60;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = &unk_1F38F74D8;
  v29 = _Block_copy(aBlock);

  v30 = v37;
  sub_1BAF8E968();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1BAF6CCDC(&qword_1EDBA2128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF8F198();
  MEMORY[0x1BFB04C00](0, v30, v8, v29);
  _Block_release(v29);
  (*(v6 + 8))(v8, v5);
  (*(v38 + 8))(v30, v39);
}

uint64_t sub_1BAF68638()
{
  v1 = type metadata accessor for QueueMessage(0, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v31 - v3;
  v5 = sub_1BAF8F0D8();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v11 = sub_1BAF8E9E8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v0 + 112);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = sub_1BAF8EA08();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    if ((*(v0 + 120) & 1) == 0 && *(v0 + 121) == 1 && (*(v0 + 144) & 1) == 0)
    {
      v18 = v2;
      (*(v2 + 56))(v10, 1, 1, v1);
      v19 = *(v0 + 104);
      os_unfair_lock_lock_with_options();
      sub_1BAF68A8C(v10, v0);
      os_unfair_lock_unlock(*(v19 + 16));
      v21 = v31;
      v20 = v32;
      (*(v31 + 16))(v8, v10, v32);
      if ((*(v18 + 48))(v8, 1, v1) == 1)
      {
        v22 = *(v21 + 8);
        v22(v8, v20);
        *(v0 + 160) = 0;
        *(v0 + 168) = 0;

        return (v22)(v10, v20);
      }

      else
      {
        (*(v18 + 32))(v4, v8, v1);
        v23 = *(v0 + 168);
        if (v23 && ((v24 = *(v0 + 160), v24 == *v4) ? (v25 = v23 == *(v4 + 1)) : (v25 = 0), v25 || (v24 = sub_1BAF8F4C8(), (v24 & 1) != 0)))
        {
          sub_1BAF6C280(v24);
        }

        else
        {
          v26 = *(v4 + 1);
          *(v0 + 160) = *v4;
          *(v0 + 168) = v26;

          v27 = *(v0 + 176);
          if (v27)
          {
            v28 = *(v0 + 184);
            sub_1BAEFD9BC(*(v0 + 176), v28);
            v27(v4);
            sub_1BAEFD9A4(v27, v28);
          }

          v29 = &v4[*(v1 + 52)];
          v30 = v29[1];
          if (v30)
          {
            sub_1BAF695B8(*v29, v30, v4);
          }

          else
          {
            sub_1BAF68BF8(v4);
          }
        }

        (*(v18 + 8))(v4, v1);
        return (*(v21 + 8))(v10, v20);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAF68A8C(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 96);
  type metadata accessor for QueueMessage(255, v4, v5, v6);
  v7 = sub_1BAF8F0D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  v11 = *(a2 + 40);
  v12 = *(a2 + 72);
  v14[2] = *(a2 + 56);
  v14[3] = v12;
  v14[4] = *(a2 + 88);
  v14[0] = *(a2 + 24);
  v14[1] = v11;
  type metadata accessor for AnyMessageQueueStore(0, v4, v5, v6);
  sub_1BAF64DF4();
  return (*(v8 + 40))(a1, v10, v7);
}

void sub_1BAF68BF8(NSObject *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BAF8E958();
  v65 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1BAF8E988();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v4[10];
  v9 = v4[12];
  v66 = v4[11];
  v10 = type metadata accessor for QueueMessage(0, v8, v66, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v59 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = sub_1BAF8F018();
  v17 = v2[16];
  v18 = *(v11 + 16);
  v67 = a1;
  v58 = v11 + 16;
  v56 = v18;
  v18(v15, a1, v10);
  v19 = os_log_type_enabled(v17, v16);
  v60 = v11;
  if (v19)
  {
    v53 = v17;
    v20 = swift_slowAlloc();
    v54 = v8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v55 = v5;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136446210;
    v24 = QueueMessage.debugDescription.getter(v10);
    v26 = v25;
    v57 = *(v11 + 8);
    v57(v15, v10);
    v27 = sub_1BAF49CF8(v24, v26, aBlock);

    *(v21 + 4) = v27;
    v28 = v53;
    _os_log_impl(&dword_1BADC1000, v53, v16, "Processing message %{public}s", v21, 0xCu);
    sub_1BADC5BE0(v23);
    v29 = v23;
    v5 = v55;
    MEMORY[0x1BFB06160](v29, -1, -1);
    v30 = v21;
    v8 = v54;
    MEMORY[0x1BFB06160](v30, -1, -1);
  }

  else
  {
    v57 = *(v11 + 8);
    v57(v15, v10);
  }

  v70 = -1;
  v31 = swift_beginAccess();
  aBlock[0] = v2[2];
  MEMORY[0x1EEE9AC00](v31);
  v32 = v66;
  v33 = v67;
  *(&v53 - 6) = v8;
  *(&v53 - 5) = v32;
  *(&v53 - 4) = v9;
  *(&v53 - 3) = v33;
  *(&v53 - 2) = &v70;
  type metadata accessor for AnyMessageQueueListener(255, v8, v32, v9);
  sub_1BAF8EF28();

  swift_getWitnessTable();
  v34 = sub_1BAF8EE48();

  aBlock[0] = v34;
  sub_1BAF8EF28();
  swift_getWitnessTable();
  if (sub_1BAF8EFC8())
  {

    v35 = sub_1BAF8F018();
    v36 = v2[16];
    v37 = v59;
    v56(v59, v33, v10);
    if (os_log_type_enabled(v36, v35))
    {
      v38 = v36;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136446210;
      v41 = v37;
      v42 = QueueMessage.debugDescription.getter(v10);
      v44 = v43;
      v57(v41, v10);
      v45 = sub_1BAF49CF8(v42, v44, aBlock);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_1BADC1000, v38, v35, "No listeners for message %{public}s was found. Dropping the message.", v39, 0xCu);
      sub_1BADC5BE0(v40);
      MEMORY[0x1BFB06160](v40, -1, -1);
      v33 = v67;
      MEMORY[0x1BFB06160](v39, -1, -1);
    }

    else
    {
      v57(v37, v10);
    }

    v47 = sub_1BAF6B734(v33->isa, v33[1].isa);
    if ((v47 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v46 = sub_1BAF6B32C(v34, v33->isa, v33[1].isa);

    if ((v46 & 1) == 0)
    {
LABEL_13:
      sub_1BAF6C360(v47);
      return;
    }
  }

  v48 = v2[24];
  if (v48)
  {
    v49 = v2[25];
    sub_1BAEFD9BC(v2[24], v49);
    v48(v33);
    sub_1BAEFD9A4(v48, v49);
  }

  aBlock[4] = sub_1BAF6CE60;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = &unk_1F38F7720;
  v50 = _Block_copy(aBlock);

  v51 = v61;
  sub_1BAF8E968();
  v68 = MEMORY[0x1E69E7CC0];
  sub_1BAF6CCDC(&qword_1EDBA2128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
  v52 = v63;
  sub_1BAF8F198();
  MEMORY[0x1BFB04C00](0, v51, v52, v50);
  _Block_release(v50);
  (*(v65 + 8))(v52, v5);
  (*(v62 + 8))(v51, v64);
}

uint64_t sub_1BAF69400@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v21 = a3;
  v13 = type metadata accessor for QueueMessage(0, a4, a5, a6);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17 = a1[1];
  v22 = *a1;
  v23 = v17;
  v24 = a1[2];
  type metadata accessor for AnyMessageQueueListener(0, a4, a5, a6);
  result = sub_1BAF3DA40();
  if ((result & 1) == 0)
  {
    return (*(v14 + 56))(a7, 1, 1, v13);
  }

  if (__OFADD__(*v21, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v21;
    (*(v14 + 16))(v16, a2, v13);
    v19 = v22;

    sub_1BAF4FF94(v16, v19, *(&v19 + 1), a4, a5, a6, a7);
    return (*(v14 + 56))(a7, 0, 1, v13);
  }

  return result;
}

void sub_1BAF695B8(uint64_t a1, uint64_t a2, char *a3)
{
  v148 = a1;
  v149 = a2;
  v5 = *v3;
  v136 = sub_1BAF8E958();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAF8F098();
  v124 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v129 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1BAF8F078();
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1BAF8E988();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v5[10];
  v12 = v5[11];
  v13 = v5[12];
  v151 = v11;
  v152 = v12;
  v147 = type metadata accessor for QueueMessage(0, v11, v12, v13);
  v150 = *(v147 - 8);
  v14 = v150[8];
  v15 = MEMORY[0x1EEE9AC00](v147);
  v126 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v145 = &v112 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v125 = &v112 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v146 = &v112 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v138 = &v112 - v22;
  v23 = sub_1BAF8E9E8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = v3;
  v28 = *(v3 + 112);
  *v26 = v28;
  (*(v24 + 104))(v26, *MEMORY[0x1E69E8020], v23);
  v130 = v28;
  v29 = sub_1BAF8EA08();
  (*(v24 + 8))(v26, v23);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v123 = v7;
  v30 = swift_beginAccess();
  v155 = *(v3 + 16);
  MEMORY[0x1EEE9AC00](v30);
  v31 = v151;
  v32 = v152;
  *(&v112 - 4) = v151;
  *(&v112 - 3) = v32;
  *(&v112 - 2) = v13;
  *(&v112 - 1) = a3;
  type metadata accessor for AnyMessageQueueListener(255, v31, v32, v13);
  sub_1BAF8EF28();
  v33 = a3;

  swift_getWitnessTable();
  sub_1BAF8EE78();

  if (v157)
  {
    v122 = v157;
    v121 = v160;
    v142 = v159;
    v119 = aBlock;
    v120 = v158;
    v34 = v3;
    *(v3 + 120) = 1;
    sub_1BAF2DB10(&qword_1EBC36E30, &qword_1BAF97E18);
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E7CC0];
    *(v35 + 16) = MEMORY[0x1E69E7CC0];
    v113 = (v35 + 16);
    *(v35 + 24) = v36;
    v114 = (v35 + 24);
    *(v35 + 32) = 0;
    v115 = v35 + 32;
    *(v35 + 40) = 2;
    sub_1BAF2DB10(&qword_1EBC36B50, &qword_1BAF97720);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v35 + 48) = v37;
    *(v35 + 56) = 0;
    v38 = v150;
    v40 = v150 + 2;
    v39 = v150[2];
    v41 = v138;
    v144 = v33;
    v42 = v33;
    v43 = v147;
    v39(v138, v42, v147);
    v141 = v40;
    v140 = v39;
    v39(v146, v41, v43);
    v44 = *(v38 + 80);
    v45 = v13;
    v46 = (v44 + 48) & ~v44;
    v118 = v14 + 7;
    v47 = (v14 + 7 + v46) & 0xFFFFFFFFFFFFFFF8;
    v139 = v44;
    v48 = swift_allocObject();
    v49 = v152;
    *(v48 + 2) = v151;
    *(v48 + 3) = v49;
    v143 = v45;
    *(v48 + 4) = v45;
    *(v48 + 5) = v34;
    v50 = v38[4];
    v116 = v46;
    v138 = (v38 + 4);
    v137 = v50;
    v50(&v48[v46], v41, v43);
    v117 = v47;
    v51 = &v48[v47];
    v52 = v149;
    *v51 = v148;
    *(v51 + 1) = v52;
    v53 = *(v35 + 48);
    v54 = v34;
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    os_unfair_lock_lock(v53 + 4);
    swift_beginAccess();
    v153 = v35;
    if (!*(v35 + 40))
    {

      os_unfair_lock_unlock((v153[6] + 16));
      v27 = v34;
      sub_1BAF6A958(v146, v148, v149, 0);
LABEL_17:
      v55 = v147;
      goto LABEL_18;
    }

    if (*(v35 + 40) == 1)
    {

      os_unfair_lock_unlock((v153[6] + 16));
      v55 = v147;
      v27 = v34;
LABEL_18:
      v73 = v139;
      v74 = ~v139;

      v75 = v150[1];
      ++v150;
      v75(v146, v55);
      v76 = v149;

      v77 = v125;
      v78 = v140;
      v140(v125, v144, v55);
      v78(v145, v77, v55);
      v79 = v117;
      v80 = swift_allocObject();
      v81 = v152;
      *(v80 + 2) = v151;
      *(v80 + 3) = v81;
      *(v80 + 4) = v143;
      *(v80 + 5) = v27;
      v137(&v80[v116], v77, v55);
      v82 = &v80[v79];
      *v82 = v148;
      *(v82 + 1) = v76;
      v83 = v153;
      v84 = v153[6];

      os_unfair_lock_lock(v84 + 4);
      if (*(v83 + 40))
      {
        if (*(v83 + 40) == 1)
        {
          v85 = ~v73;
          v86 = v55;
          v87 = v153[4];
          v88 = v153[6];
          v89 = v87;
          os_unfair_lock_unlock(v88 + 4);
          v90 = v145;
          sub_1BAF6A958(v145, v148, v149, 1);
          sub_1BAF4FC58(v87, 1);

          v75(v90, v86);
          v91 = v124;
        }

        else
        {
          v75(v145, v55);
          v92 = swift_allocObject();
          *(v92 + 16) = sub_1BAF6CC40;
          *(v92 + 24) = v80;
          v93 = v114;
          swift_beginAccess();
          v94 = *v93;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v93 = v94;
          v85 = v74;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v94 = sub_1BAF4F33C(0, v94[2] + 1, 1, v94);
            *v93 = v94;
          }

          v91 = v124;
          v97 = v94[2];
          v96 = v94[3];
          if (v97 >= v96 >> 1)
          {
            v94 = sub_1BAF4F33C((v96 > 1), v97 + 1, 1, v94);
          }

          v94[2] = v97 + 1;
          v98 = &v94[2 * v97];
          v98[4] = sub_1BAF64580;
          v98[5] = v92;
          v99 = v153;
          v153[3] = v94;
          swift_endAccess();
          os_unfair_lock_unlock((v99[6] + 16));

          v86 = v147;
        }
      }

      else
      {
        v85 = ~v73;
        v75(v145, v55);
        os_unfair_lock_unlock((v153[6] + 16));

        v91 = v124;
        v86 = v55;
      }

      sub_1BAF63460(v130);
      sub_1BAF30DFC(0, &qword_1EDBA2078, 0x1E69E9610);
      v100 = v131;
      sub_1BAF8E968();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BAF6CCDC(&qword_1EDBA2080, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
      sub_1BAF2DB10(&qword_1EBC36768, &qword_1BAF955B8);
      sub_1BAF3B7F4(&qword_1EDBA20C0, &qword_1EBC36768, &qword_1BAF955B8);
      sub_1BAF8F198();
      (*(v91 + 104))(v129, *MEMORY[0x1E69E8090], v123);
      v150 = sub_1BAF8F0B8();
      v101 = v126;
      v140(v126, v144, v86);
      v102 = (v139 + 88) & v85;
      v103 = (v118 + v102) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      v105 = v152;
      *(v104 + 16) = v151;
      *(v104 + 24) = v105;
      v106 = v119;
      *(v104 + 32) = v143;
      *(v104 + 40) = v106;
      v107 = v120;
      *(v104 + 48) = v122;
      *(v104 + 56) = v107;
      *(v104 + 64) = v142;
      *(v104 + 80) = v121;
      v137((v104 + v102), v101, v86);
      *(v104 + v103) = v153;
      *(&v159 + 1) = sub_1BAF6CD24;
      v160 = v104;
      aBlock = MEMORY[0x1E69E9820];
      v157 = 1107296256;
      v158 = sub_1BAF4CF6C;
      *&v159 = &unk_1F38F76A8;
      v108 = _Block_copy(&aBlock);

      sub_1BAF8E968();
      v154 = MEMORY[0x1E69E7CC0];
      sub_1BAF6CCDC(&qword_1EDBA2128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
      sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
      v109 = v134;
      v110 = v136;
      sub_1BAF8F198();
      v111 = v150;
      MEMORY[0x1BFB04C00](0, v100, v109, v108);
      _Block_release(v108);

      (*(v135 + 8))(v109, v110);
      (*(v132 + 8))(v100, v133);
LABEL_28:

      return;
    }

    v26 = swift_allocObject();
    v26[2] = sub_1BAF6CA7C;
    v26[3] = v48;
    v13 = v113;
    swift_beginAccess();
    v29 = *v13;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v29;
    v27 = v54;
    if (v68)
    {
LABEL_14:
      v70 = *(v29 + 16);
      v69 = *(v29 + 24);
      if (v70 >= v69 >> 1)
      {
        v29 = sub_1BAF4F8CC((v69 > 1), v70 + 1, 1, v29);
      }

      *(v29 + 16) = v70 + 1;
      v71 = v29 + 16 * v70;
      *(v71 + 32) = sub_1BAF6CE18;
      *(v71 + 40) = v26;
      v72 = v153;
      v153[2] = v29;
      swift_endAccess();
      os_unfair_lock_unlock((v72[6] + 16));
      goto LABEL_17;
    }

LABEL_31:
    v29 = sub_1BAF4F8CC(0, *(v29 + 16) + 1, 1, v29);
    *v13 = v29;
    goto LABEL_14;
  }

  v56 = sub_1BAF8F038();
  v57 = v27[16];
  if (os_log_type_enabled(v57, v56))
  {
    v58 = v57;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock = v60;
    *v59 = 136446210;
    *(v59 + 4) = sub_1BAF49CF8(v148, v149, &aBlock);
    _os_log_impl(&dword_1BADC1000, v58, v56, "Can't find assigned listener %{public}s, that doesn't seem right. The listener disappeared?", v59, 0xCu);
    sub_1BADC5BE0(v60);
    MEMORY[0x1BFB06160](v60, -1, -1);
    MEMORY[0x1BFB06160](v59, -1, -1);
  }

  v61 = sub_1BAF6B734(*a3, *(a3 + 1));
  if (v61)
  {
    v62 = v27[24];
    if (v62)
    {
      v63 = v27[25];
      sub_1BAEFD9BC(v27[24], v63);
      v62(a3);
      sub_1BAEFD9A4(v62, v63);
    }

    *(&v159 + 1) = sub_1BAF6CA78;
    v160 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v157 = 1107296256;
    v158 = sub_1BAF4CF6C;
    *&v159 = &unk_1F38F7608;
    v64 = _Block_copy(&aBlock);

    v65 = v131;
    sub_1BAF8E968();
    v155 = MEMORY[0x1E69E7CC0];
    sub_1BAF6CCDC(&qword_1EDBA2128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
    sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
    v66 = v134;
    v67 = v136;
    sub_1BAF8F198();
    MEMORY[0x1BFB04C00](0, v65, v66, v64);
    _Block_release(v64);
    (*(v135 + 8))(v66, v67);
    (*(v132 + 8))(v65, v133);
    goto LABEL_28;
  }

  sub_1BAF6C360(v61);
}

uint64_t sub_1BAF6A840(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (a2 + *(type metadata accessor for QueueMessage(0, a3, a4, a5) + 52));
  v8 = v7[1];
  if (!v8)
  {
    return 0;
  }

  if (v5 == *v7 && v8 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1BAF8F4C8() & 1;
  }
}