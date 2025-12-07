uint64_t sub_1B090297C()
{
  v1 = *(type metadata accessor for WatchOSRender.Message(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B0901844(v2);
}

uint64_t sub_1B09029E0()
{
  v1 = *(type metadata accessor for WatchOSRender.Message(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B090187C(v2);
}

uint64_t sub_1B0902A44()
{
  v1 = *(type metadata accessor for WatchOSRender.Message(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B09018B4(v2);
}

unint64_t sub_1B0902AA8()
{
  v2 = qword_1EB6E3C90;
  if (!qword_1EB6E3C90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3C90);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for MFNanoServerMessageContentLoader2()
{
  v2 = qword_1EB6E2F38;
  if (!qword_1EB6E2F38)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E2F38);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0902BAC(uint64_t a1)
{
  updated = _s6LoggerVMa_2(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1B0902D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v13 = a1;
  v14 = a2;
  v12 = v3;
  v8 = [v3 displayedAccounts];
  sub_1B08CE3C0();
  sub_1B0902ED4();
  v10[0] = sub_1B0E453F8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2F58, &qword_1B0EA0780);
  sub_1B090FD64();
  sub_1B0E44FB8();

  sub_1B039E440(v10);
  MEMORY[0x1E69E5920](v8);
  v9 = v10[1];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2F60, &qword_1B0EA0788);
  v4 = sub_1B07BC130();
  sub_1B039A570(sub_1B090FDEC, 0, v6, MEMORY[0x1E69E73E0], v4, v7, &v11);
  sub_1B06D4E94(&v9);
  return v11;
}

unint64_t sub_1B0902ED4()
{
  v2 = qword_1EB6DACA8;
  if (!qword_1EB6DACA8)
  {
    sub_1B08CE3C0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DACA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0902F54()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6DB9E8);
  __swift_project_value_buffer(v1, qword_1EB6DB9E8);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B0902FF8()
{
  if (qword_1EB6DB9E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6DB9E8);
}

uint64_t sub_1B0903064()
{
  result = sub_1B0E44838();
  qword_1EB6DBCB0 = result;
  qword_1EB6DBCB8 = v1;
  return result;
}

uint64_t *sub_1B09030A8()
{
  if (qword_1EB6DBCA8 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DBCB0;
}

uint64_t sub_1B0903108()
{
  result = sub_1B0E44838();
  qword_1EB6DBD18 = result;
  qword_1EB6DBD20 = v1;
  return result;
}

uint64_t *sub_1B090314C()
{
  if (qword_1EB6DBD10 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DBD18;
}

uint64_t sub_1B0903220()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexQuery_suggestion);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09032FC()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexQuery_accountID);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B09033E0()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexQuery_mailboxURLs);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

id sub_1B09034A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1B0E44AC8();
  sub_1B0E42E68();
  v6 = sub_1B0E451A8();
  v9 = [v5 initWithSuggestion:a1 accountID:v7 mailboxes:? limit:?];
  MEMORY[0x1E69E5920](v6);

  MEMORY[0x1E69E5920](v7);

  MEMORY[0x1E69E5920](a1);
  return v9;
}

char *sub_1B0903580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  v18 = a1;
  v16 = a2;
  v17 = a3;
  v15 = a4;
  v14 = a5;
  MEMORY[0x1E69E5928](a1);
  *OBJC_IVAR___MFServerMessagesIndexQuery_suggestion = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = &v19[OBJC_IVAR___MFServerMessagesIndexQuery_accountID];
  *v5 = a2;
  *(v5 + 1) = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&v19[OBJC_IVAR___MFServerMessagesIndexQuery_mailboxURLs] = a4;
  *&v19[OBJC_IVAR___MFServerMessagesIndexQuery_limit] = a5;
  v13.receiver = v19;
  v13.super_class = MFServerMessagesIndexQuery;
  v12 = objc_msgSendSuper2(&v13, sel_init);
  MEMORY[0x1E69E5928](v12);
  v19 = v12;

  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v19);
  return v12;
}

uint64_t sub_1B09038F0()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexer_mailAccountsProvider);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B0903930()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexer_searchSession);

  return v2;
}

uint64_t sub_1B09039E4()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexer_searchRequestQueue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B0903A2C()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexer_currentTask);

  return v2;
}

uint64_t sub_1B0903A6C()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexer_lastStatsRequest);

  return v2;
}

uint64_t sub_1B0903B0C(uint64_t a1)
{
  v10 = a1;
  v9 = sub_1B0E43108();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v9);
  v5 = &v3 - v4;
  (*(v7 + 16))(v1);
  (*(v7 + 40))(v6, v5, v9);
  return (*(v7 + 8))(v10, v9);
}

uint64_t sub_1B0903C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  StatsRequestVMa = _s16LastStatsRequestVMa(0);
  result = a1;
  v7 = (v4 + *(StatsRequestVMa + 20));
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return result;
}

uint64_t sub_1B0903CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = sub_1B0E43108();
  (*(*(v6 - 8) + 32))(a6, a1);
  result = _s16LastStatsRequestVMa(0);
  v8 = (a6 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  return result;
}

char *sub_1B0903D5C(uint64_t a1)
{
  v41 = a1;
  v19 = "Fatal error";
  v20 = "Message/MFServerMessagesIndexer.swift";
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v47 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790);
  v21 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v13 - v21;
  v40 = 0;
  v22 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v29 = &v13 - v22;
  v23 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v28 = &v13 - v23;
  v24 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v27 = &v13 - v24;
  v51 = v2;
  v52 = v1;
  v31 = v1;
  v30 = OBJC_IVAR___MFServerMessagesIndexer_searchRequestQueue;
  sub_1B06CCC58();
  v35 = 1;
  v25 = sub_1B0E44838();
  v26 = v3;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v29);
  *&v31[v30] = sub_1B0E45A08();
  v34 = v52;
  v33 = OBJC_IVAR___MFServerMessagesIndexer_currentTask;
  v32 = &v50;
  v50 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB8, &unk_1B0EA0798);
  v5 = sub_1B06C70B0(v32, v4);
  v6 = v40;
  *&v34[v33] = v5;
  v39 = v52;
  v38 = OBJC_IVAR___MFServerMessagesIndexer_lastStatsRequest;
  StatsRequestVMa = _s16LastStatsRequestVMa(v6);
  (*(*(StatsRequestVMa - 8) + 56))(v36, v35);
  v8 = sub_1B06C70B0(v36, v37);
  *&v39[v38] = v8;
  v42 = v52;
  swift_unknownObjectRetain();
  *&v42[OBJC_IVAR___MFServerMessagesIndexer_mailAccountsProvider] = v41;
  v43 = v52;
  type metadata accessor for SearchSession();
  v9 = SearchSession.__allocating_init()();
  v44 = 0;
  v45 = v9;
  v46 = 0;
  v15 = &OBJC_PROTOCOL___MFDataConsumer;
  *&v43[OBJC_IVAR___MFServerMessagesIndexer_searchSession] = v9;
  v48.receiver = v52;
  v48.super_class = MFServerMessagesIndexer;
  v16 = objc_msgSendSuper2(&v48, sel_init);
  MEMORY[0x1E69E5928](v16);
  v52 = v16;
  v17 = *&v16[v15[55].inst_meths];

  SearchSession.activate()();
  v18 = v10;
  if (v10)
  {
    v14 = v18;

    v12 = v14;
    v47 = v14;
    sub_1B0E44838();
    result = sub_1B0E465B8();
    __break(1u);
  }

  else
  {

    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v52);
    return v16;
  }

  return result;
}

uint64_t sub_1B0904340()
{
  v13 = sub_1B0910FA0;
  v32 = 0;
  v14 = 0;
  v18 = sub_1B0E44238();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v5 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v17 = &v4 - v5;
  v22 = sub_1B0E44288();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v6 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v21 = &v4 - v6;
  v10 = sub_1B0E44248();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v11 = &v4 - v7;
  v32 = v0;
  sub_1B06CCC58();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E7F98], v10);
  v24 = sub_1B0E45A28();
  (*(v8 + 8))(v11, v10);
  MEMORY[0x1E69E5928](v12);
  v1 = swift_allocObject();
  v2 = v13;
  *(v1 + 16) = v12;
  v30 = v2;
  v31 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = 0;
  v28 = sub_1B038C908;
  v29 = &block_descriptor_13;
  v23 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v14, v21, v17, v23);
  (*(v15 + 8))(v17, v18);
  (*(v19 + 8))(v21, v22);
  _Block_release(v23);

  return MEMORY[0x1E69E5920](v24);
}

uint64_t sub_1B09046C0()
{
  sub_1B0910FA8();
  v0 = sub_1B09030A8();
  v2 = *v0;
  v3 = v0[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B090B480(v2, v3);
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresExternalPower_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresProtectionClass_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresUserInactivity_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setPriority_];
  MEMORY[0x1E69E5920](v5);
  [v5 setInterval_];
  MEMORY[0x1E69E5928](v5);
  [v5 setExpectedDuration_];
  MEMORY[0x1E69E5920](v5);
  v4 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  sub_1B090BB7C(v5, sub_1B091100C, v4);

  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1B0904908()
{
  sub_1B0910FA8();
  v0 = sub_1B090314C();
  v2 = *v0;
  v3 = v0[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B090B480(v2, v3);
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresNetworkConnectivity_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresInexpensiveNetworkConnectivity_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresExternalPower_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresProtectionClass_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresUserInactivity_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setPriority_];
  MEMORY[0x1E69E5920](v5);
  [v5 setInterval_];
  MEMORY[0x1E69E5928](v5);
  [v5 setExpectedDuration_];
  MEMORY[0x1E69E5920](v5);
  v4 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  sub_1B090BB7C(v5, sub_1B0911014, v4);

  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1B0904C1C(void *a1, void (*a2)(void), uint64_t a3)
{
  v79 = a1;
  v78 = a2;
  v77 = a3;
  v70 = sub_1B0911050;
  v71 = sub_1B091101C;
  v72 = sub_1B039BCF8;
  v73 = sub_1B0398F5C;
  v74 = sub_1B0398F5C;
  v75 = sub_1B039BCEC;
  v97 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v76 = 0;
  v88 = 0uLL;
  v87 = 0;
  v80 = sub_1B0E439A8();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v79);
  v84 = v36 - v83;
  v97 = v5;
  v95 = v6;
  v96 = v7;
  v94 = v3;
  v85 = [v5 accountID];
  v8._countAndFlagsBits = sub_1B0E44AD8();
  v86 = AccountID.init(rawValue:)(v8);
  MEMORY[0x1E69E5920](v85);
  if (*(&v86 + 1))
  {
    v68 = v86;
    v65 = *(&v86 + 1);
    v66 = v86;
    v88 = v86;
    v64 = [v69 mailAccountsProvider];
    ObjectType = swift_getObjectType();
    v10 = sub_1B0902D08(v66, v65, ObjectType);
    v67 = v10;
    if (v10)
    {
      v63 = v67;
      v62 = v67;
      v87 = v67;
      swift_unknownObjectRelease();
      v61 = [v79 mailboxURLs];
      sub_1B0E42E68();
      v60 = sub_1B0E451B8();
      v59 = [v69 searchRequestQueue];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1E69E5928](v69);
      MEMORY[0x1E69E5928](v79);

      v11 = swift_allocObject();
      v12 = v69;
      v13 = v79;
      v14 = v78;
      v15 = v77;
      v16 = v70;
      v17 = v59;
      v18 = v65;
      v19 = v11;
      v20 = v60;
      v58 = v19;
      v19[2] = v66;
      v19[3] = v18;
      v19[4] = v12;
      v19[5] = v13;
      v19[6] = v14;
      v19[7] = v15;
      sub_1B075168C(v20, v17, v16, v19);

      MEMORY[0x1E69E5920](v59);

      MEMORY[0x1E69E5920](v61);
      MEMORY[0x1E69E5920](v62);
    }

    swift_unknownObjectRelease();
  }

  v22 = v84;
  v23 = sub_1B0902FF8();
  (*(v81 + 16))(v22, v23, v80);
  MEMORY[0x1E69E5928](v79);
  v47 = 7;
  v48 = swift_allocObject();
  *(v48 + 16) = v79;
  v56 = sub_1B0E43988();
  v57 = sub_1B0E458E8();
  v45 = 17;
  v50 = swift_allocObject();
  *(v50 + 16) = 32;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v46 = 32;
  v24 = swift_allocObject();
  v25 = v48;
  v49 = v24;
  *(v24 + 16) = v71;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v49;
  v53 = v26;
  *(v26 + 16) = v72;
  *(v26 + 24) = v27;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v52 = sub_1B0E46A48();
  v54 = v28;

  v29 = v50;
  v30 = v54;
  *v54 = v73;
  v30[1] = v29;

  v31 = v51;
  v32 = v54;
  v54[2] = v74;
  v32[3] = v31;

  v33 = v53;
  v34 = v54;
  v54[4] = v75;
  v34[5] = v33;
  sub_1B0394964();

  if (os_log_type_enabled(v56, v57))
  {
    v35 = v76;
    v38 = sub_1B0E45D78();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v39 = sub_1B03949A8(0, v37, v37);
    v40 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_1B0394A48(2, &v93);
    sub_1B0394A48(1, v41);
    v89 = v73;
    v90 = v50;
    sub_1B03949FC(&v89, v41, v42, v43);
    v44 = v35;
    if (v35)
    {

      __break(1u);
    }

    else
    {
      v89 = v74;
      v90 = v51;
      sub_1B03949FC(&v89, &v93, &v92, &v91);
      v36[6] = 0;
      v89 = v75;
      v90 = v53;
      sub_1B03949FC(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_1B0389000, v56, v57, "Could not find account %s", v38, 0xCu);
      sub_1B03998A8(v39, 0, v37);
      sub_1B03998A8(v40, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v56);
  (*(v81 + 8))(v84, v80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FC0, &qword_1B0EA07A8);
  v36[1] = 0;
  v36[4] = sub_1B0E46A48();
  v36[2] = sub_1B0E42E68();
  v36[3] = type metadata accessor for MFUIDSet();
  sub_1B07BAD2C();
  v36[5] = sub_1B0E445D8();
  v78();
}

uint64_t sub_1B0905670(void *a1)
{
  v2 = [a1 accountID];
  v3 = sub_1B0E44AD8();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B09056CC(uint64_t a1, Swift::Int a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = sub_1B09057C8(a1, a2, a3);
  v16 = v7;

  sub_1B0905EB0(a5, v15, v16, a6, a7);
}

uint64_t sub_1B09057C8(uint64_t a1, Swift::Int a2, void *a3)
{
  v40 = a1;
  v29 = a2;
  v30._rawValue = a3;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v41 = __b;
  v43 = 40;
  memset(__b, 0, sizeof(__b));
  isa = 0;
  v47 = 0;
  memset(&v45[3], 0, 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v23 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v10[-v23];
  v36 = 0;
  v39 = sub_1B0E42E68();
  v25 = *(v39 - 8);
  v26 = v39 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v28 = &v10[-v27];
  v54 = &v10[-v27];
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FC8, &qword_1B0EA07B0) - 8) + 64);
  v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v33 = &v10[-v31];
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v10[-v34];
  v51 = v5;
  v49 = v6;
  v50 = v7;
  v37 = &type metadata for Mailbox;
  v52 = sub_1B0E46A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FD0, &qword_1B0EA07B8);
  v38 = sub_1B0E46A48();
  sub_1B091106C();
  v53 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07BAD2C();
  v42 = &v55;
  sub_1B0E445C8();
  memcpy(v41, v42, v43);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FD8, &qword_1B0EA07C0);
    sub_1B0E446D8();
    sub_1B09110E4(v33, v35);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FE0, &qword_1B0EA07C8);
    if ((*(*(v22 - 8) + 48))(v35, 1) == 1)
    {
      break;
    }

    v9 = &v35[*(v22 + 48)];
    v18.underlying.super.isa = *v9;
    v11 = *(v9 + 2);
    (*(v25 + 32))(v28);
    isa = v18.underlying.super.isa;
    v47 = v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v56 = Mailbox.init(name:accountID:)(v18, v29, v30);
    v16 = v56.suggestion.underlying.super.isa;
    limit = v56.limit;
    rawValue = v56.mailboxes._rawValue;
    *&v45[3] = v56;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v12 = v45;
    v45[0] = v16;
    v45[1] = limit;
    v45[2] = rawValue;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FE8, &qword_1B0EA07D0);
    v14 = &v52;
    sub_1B0E452E8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    (*(v25 + 16))(v24, v28, v39);
    (*(v25 + 56))(v24, 0, 1, v39);
    v15 = v44;
    v44[0] = v16;
    v44[1] = limit;
    v44[2] = rawValue;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FF0, &qword_1B0EA07D8);
    sub_1B0E44788();

    (*(v25 + 8))(v28, v39);
  }

  sub_1B06B91B0();
  v19 = &v52;
  v21 = v52;
  v20 = v53;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B07F22C0();
  return v21;
}

uint64_t sub_1B0905EB0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a1;
  v70._rawValue = a2;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v77 = sub_1B070B550;
  v79 = sub_1B06BA324;
  v83 = sub_1B0911244;
  v87 = sub_1B039BCF8;
  v89 = sub_1B0398F5C;
  v91 = sub_1B0398F5C;
  v93 = sub_1B03993BC;
  v95 = sub_1B0398F5C;
  v97 = sub_1B0398F5C;
  v100 = sub_1B039BCEC;
  v60 = sub_1B0911250;
  v119 = 0;
  v117 = 0;
  v118 = 0;
  v115 = 0;
  v116 = 0;
  v114 = 0;
  memset(&v113, 0, sizeof(v113));
  v111 = 0;
  v112 = 0;
  v61 = 0;
  v74 = sub_1B0E439A8();
  v72 = *(v74 - 8);
  v73 = v74 - 8;
  v65 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v67);
  v6 = v51 - v65;
  v66 = v51 - v65;
  v119 = v7;
  v117 = v8;
  v118 = v9;
  v115 = v10;
  v116 = v11;
  v114 = v12;
  v68.underlying.super.isa = Suggestion.init(_:)([v7 suggestion]).underlying.super.isa;
  v69 = [v67 limit];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v120 = SearchQuery.init(suggestion:limit:mailboxes:)(v68, v69, v70);
  v71 = v120;
  v113 = v120;
  v75 = SearchQuery.id.getter(v120.suggestion.underlying.super.isa);
  v76 = v13;
  v111 = v75;
  v112 = v13;
  v14 = sub_1B0902FF8();
  (*(v72 + 16))(v6, v14, v74);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v84 = 32;
  v85 = 7;
  v15 = swift_allocObject();
  v16 = v76;
  v78 = v15;
  *(v15 + 16) = v75;
  *(v15 + 24) = v16;

  v17 = swift_allocObject();
  v18 = v78;
  v86 = v17;
  *(v17 + 16) = v77;
  *(v17 + 24) = v18;

  v104 = sub_1B0E43988();
  v105 = sub_1B0E45908();
  v81 = 17;
  v90 = swift_allocObject();
  *(v90 + 16) = 112;
  v92 = swift_allocObject();
  v82 = 8;
  *(v92 + 16) = 8;
  v80 = swift_allocObject();
  *(v80 + 16) = 1752392040;
  v19 = swift_allocObject();
  v20 = v80;
  v94 = v19;
  *(v19 + 16) = v79;
  *(v19 + 24) = v20;
  v96 = swift_allocObject();
  *(v96 + 16) = 37;
  v98 = swift_allocObject();
  *(v98 + 16) = v82;
  v21 = swift_allocObject();
  v22 = v86;
  v88 = v21;
  *(v21 + 16) = v83;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v88;
  v101 = v23;
  *(v23 + 16) = v87;
  *(v23 + 24) = v24;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v99 = sub_1B0E46A48();
  v102 = v25;

  v26 = v90;
  v27 = v102;
  *v102 = v89;
  v27[1] = v26;

  v28 = v92;
  v29 = v102;
  v102[2] = v91;
  v29[3] = v28;

  v30 = v94;
  v31 = v102;
  v102[4] = v93;
  v31[5] = v30;

  v32 = v96;
  v33 = v102;
  v102[6] = v95;
  v33[7] = v32;

  v34 = v98;
  v35 = v102;
  v102[8] = v97;
  v35[9] = v34;

  v36 = v101;
  v37 = v102;
  v102[10] = v100;
  v37[11] = v36;
  sub_1B0394964();

  if (os_log_type_enabled(v104, v105))
  {
    v38 = v61;
    v53 = sub_1B0E45D78();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v54 = sub_1B03949A8(0, v52, v52);
    v55 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v56 = &v110;
    v110 = v53;
    v57 = &v109;
    v109 = v54;
    v58 = &v108;
    v108 = v55;
    sub_1B0394A48(3, &v110);
    sub_1B0394A48(2, v56);
    v106 = v89;
    v107 = v90;
    sub_1B03949FC(&v106, v56, v57, v58);
    v59 = v38;
    if (v38)
    {

      __break(1u);
    }

    else
    {
      v106 = v91;
      v107 = v92;
      sub_1B03949FC(&v106, &v110, &v109, &v108);
      v51[5] = 0;
      v106 = v93;
      v107 = v94;
      sub_1B03949FC(&v106, &v110, &v109, &v108);
      v51[4] = 0;
      v106 = v95;
      v107 = v96;
      sub_1B03949FC(&v106, &v110, &v109, &v108);
      v51[3] = 0;
      v106 = v97;
      v107 = v98;
      sub_1B03949FC(&v106, &v110, &v109, &v108);
      v51[2] = 0;
      v106 = v100;
      v107 = v101;
      sub_1B03949FC(&v106, &v110, &v109, &v108);
      _os_log_impl(&dword_1B0389000, v104, v105, "[%{sensitive,mask.hash}s] Sending search query.", v53, 0x16u);
      sub_1B03998A8(v54, 0, v52);
      sub_1B03998A8(v55, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v104);
  (*(v72 + 8))(v66, v74);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v39 = swift_allocObject();
  v40 = v63;
  v41 = v64;
  rawValue = v70._rawValue;
  v43 = v62;
  limit = v71.limit;
  v45 = v60;
  v46 = v76;
  v47 = v71.mailboxes._rawValue;
  v48 = v39;
  isa = v71.suggestion.underlying.super.isa;
  v51[1] = v48;
  v48[2] = v75;
  v48[3] = v46;
  v48[4] = v40;
  v48[5] = v41;
  v48[6] = rawValue;
  v48[7] = v43;
  SearchSession.perform(query:_:)(isa, limit, v47, v45, v48);

  MEMORY[0x1E69E5920](v71.suggestion.underlying.super.isa);
}

uint64_t sub_1B0906B98(uint64_t a1, uint64_t a2)
{
  sub_1B0E42E68();
  type metadata accessor for MFUIDSet();
  sub_1B07BAD2C();
  v4 = sub_1B0E44598();
  (*(a2 + 16))();
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1B0906C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1B0E46A48();
  v9 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v9 = a1;
  v9[1] = a2;
  sub_1B0394964();
  v14 = v5;
  (MEMORY[0x1E69E5928])();

  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = a3;
  v13[4] = a4;
  SearchSession.lookUp(identifiers:_:)(v14, sub_1B0911274, v13);
}

uint64_t sub_1B0906D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1E69E5928](a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3010, &qword_1B0EA0800);
  sub_1B0911AF0();
  sub_1B0E45018();
  MEMORY[0x1E69E5920](a2);
}

uint64_t sub_1B0906EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void, void), uint64_t a7)
{
  v46 = a1;
  v42 = a2;
  v44 = a3;
  v36 = a4;
  v39 = a5;
  v37 = a6;
  v38 = a7;
  v35 = sub_1B0912198;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v40 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v39);
  v41 = v26 - v40;
  v58 = v8;
  v59 = v9;
  v60 = v10;
  v57 = v11;
  v56 = v12;
  v54 = v13;
  v55 = v14;
  v45 = [v12 mailAccountsProvider];
  ObjectType = swift_getObjectType();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v49 = sub_1B0902D08(v42, v44, ObjectType);

  v53 = v49;
  swift_unknownObjectRelease();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v47 = MailboxName.init(_:)(v46);
  v48 = v15;
  v51 = v47;
  v52 = v15;
  MEMORY[0x1E69E5928](v49);
  if (v49)
  {
    v34 = v49;
    v31 = v49;
    v32 = sub_1B0751598();
    MEMORY[0x1E69E5920](v31);
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v30 = v33;
  if (v33)
  {
    v29 = v30;
    v28 = v30;
    v50 = v30;
    v27 = [v39 searchRequestQueue];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v17 = swift_allocObject();
    v18 = v37;
    v19 = v38;
    v20 = v48;
    v21 = v35;
    v22 = v27;
    v23 = v17;
    v24 = v47;
    v26[1] = v23;
    v23[2] = v36;
    v23[3] = v18;
    v23[4] = v19;
    sub_1B0A482AC(v24, v20, v22, v21, v23);

    MEMORY[0x1E69E5920](v27);
    MEMORY[0x1E69E5920](v28);
  }

  else
  {

    v16 = sub_1B0E42E68();
    (*(*(v16 - 8) + 56))(v41, 1);
    v37(v41, 0);
    sub_1B06E3800(v41);
  }

  return MEMORY[0x1E69E5920](v49);
}

uint64_t sub_1B090727C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3000, &unk_1B0EA07F0);
  sub_1B09121A8();
  sub_1B0E45728();
  if (v11)
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 = v10;
    v7 = 0;
  }

  if (v7)
  {
    v5 = 0;
  }

  else
  {
    v5 = v6;
  }

  a3(a1, v5);
}

uint64_t sub_1B0907524(uint64_t a1, int a2, uint64_t a3)
{
  v11 = a1;
  v9 = a2;
  v10 = a3;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v5 - v12;
  sub_1B071C180(v3, &v5 - v12);
  v14 = sub_1B0E42E68();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = sub_1B0E42D58();
    (*(v15 + 8))(v13, v14);
    v8 = v7;
  }

  v6 = v8;
  (*(v10 + 16))();
  return MEMORY[0x1E69E5920](v6);
}

uint64_t sub_1B0907698(void (*a1)(uint64_t, void), uint64_t a2)
{
  v93 = a1;
  v92 = a2;
  v103 = sub_1B091128C;
  v67 = sub_1B09114AC;
  v68 = sub_1B0911694;
  v69 = sub_1B03FB3E4;
  v70 = sub_1B039BCF8;
  v71 = sub_1B0398F5C;
  v72 = sub_1B0398F5C;
  v73 = sub_1B039BCEC;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v117 = 0;
  v118 = 0;
  v116 = 0;
  v88 = 0;
  v74 = sub_1B0E439A8();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v78 = &v36 - v77;
  StatsRequestVMa = _s16LastStatsRequestVMa(v2);
  v81 = *(StatsRequestVMa - 8);
  v80 = StatsRequestVMa - 8;
  v82 = v81;
  v83 = *(v81 + 64);
  v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](StatsRequestVMa);
  v85 = &v36 - v84;
  v86 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v36 - v84);
  v87 = &v36 - v86;
  v121 = &v36 - v86;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790);
  v89 = (*(*(v107 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v36 - v89;
  v91 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v105 = &v36 - v91;
  v120 = &v36 - v91;
  v94 = sub_1B0E43108();
  v96 = *(v94 - 8);
  v95 = v94 - 8;
  v97 = v96;
  v98 = *(v96 + 64);
  v99 = (v98 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v93);
  v100 = &v36 - v99;
  v101 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v36 - v101;
  v119 = &v36 - v101;
  v117 = v8;
  v118 = v9;
  v116 = v102;
  sub_1B0E430E8();
  v106 = *(v102 + OBJC_IVAR___MFServerMessagesIndexer_lastStatsRequest);

  v110 = v104;
  sub_1B03E1B3C(v103, v109, v106, v107, v107);
  v108 = 0;

  sub_1B09112B4(v105, v90);
  if ((*(v81 + 48))(v90, 1, StatsRequestVMa) == 1)
  {
    sub_1B0911408(v90);
    v41 = *(v102 + OBJC_IVAR___MFServerMessagesIndexer_searchSession);

    MEMORY[0x1E69E5928](v102);
    v37 = v97;
    (*(v96 + 16))(v100, v104, v94);

    v38 = (*(v37 + 80) + 24) & ~*(v37 + 80);
    v39 = (v38 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    v28 = v38;
    v29 = v100;
    v30 = v96;
    v31 = v94;
    v40 = v27;
    *(v27 + 16) = v102;
    (*(v30 + 32))(v27 + v28, v29, v31);
    v32 = v92;
    v33 = v40;
    v34 = v67;
    v35 = (v40 + v39);
    *v35 = v93;
    v35[1] = v32;
    SearchSession.getIndexingStatistics(_:)(v34, v33);

    sub_1B0911408(v105);
    return (*(v96 + 8))(v104, v94);
  }

  else
  {
    v10 = v78;
    sub_1B0911564(v90, v87);
    v11 = sub_1B0902FF8();
    (*(v75 + 16))(v10, v11, v74);
    sub_1B09115FC(v87, v85);
    v52 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v56 = 7;
    v53 = swift_allocObject();
    sub_1B0911564(v85, v53 + v52);

    v55 = 32;
    v12 = swift_allocObject();
    v13 = v53;
    v57 = v12;
    *(v12 + 16) = v68;
    *(v12 + 24) = v13;

    v65 = sub_1B0E43988();
    v66 = sub_1B0E45908();
    v54 = 17;
    v59 = swift_allocObject();
    *(v59 + 16) = 32;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v14 = swift_allocObject();
    v15 = v57;
    v58 = v14;
    *(v14 + 16) = v69;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v58;
    v62 = v16;
    *(v16 + 16) = v70;
    *(v16 + 24) = v17;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v61 = sub_1B0E46A48();
    v63 = v18;

    v19 = v59;
    v20 = v63;
    *v63 = v71;
    v20[1] = v19;

    v21 = v60;
    v22 = v63;
    v63[2] = v72;
    v22[3] = v21;

    v23 = v62;
    v24 = v63;
    v63[4] = v73;
    v24[5] = v23;
    sub_1B0394964();

    if (os_log_type_enabled(v65, v66))
    {
      v25 = v108;
      v45 = sub_1B0E45D78();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v46 = sub_1B03949A8(0, v44, v44);
      v47 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v48 = &v115;
      v115 = v45;
      v49 = &v114;
      v114 = v46;
      v50 = &v113;
      v113 = v47;
      sub_1B0394A48(2, &v115);
      sub_1B0394A48(1, v48);
      v111 = v71;
      v112 = v59;
      sub_1B03949FC(&v111, v48, v49, v50);
      v51 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v111 = v72;
        v112 = v60;
        sub_1B03949FC(&v111, &v115, &v114, &v113);
        v43 = 0;
        v111 = v73;
        v112 = v62;
        sub_1B03949FC(&v111, &v115, &v114, &v113);
        _os_log_impl(&dword_1B0389000, v65, v66, "Returning cached indexing statistics from %s", v45, 0xCu);
        sub_1B03998A8(v46, 0, v44);
        sub_1B03998A8(v47, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v65);
    (*(v75 + 8))(v78, v74);

    v42 = sub_1B0908464(*(v87 + *(StatsRequestVMa + 20)), *(v87 + *(StatsRequestVMa + 20) + 8), *(v87 + *(StatsRequestVMa + 20) + 16), *(v87 + *(StatsRequestVMa + 20) + 24));
    v93(v42, 0);

    sub_1B0911788(v87);
    sub_1B0911408(v105);
    return (*(v96 + 8))(v104, v94);
  }
}

uint64_t sub_1B0908464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FF8, &unk_1B0EA07E0);
  sub_1B0E46A48();
  v11 = v4;
  sub_1B06BD0C8(MEMORY[0x1E699AA30], v4);
  sub_1B039A494();
  v11[1] = sub_1B041A060(a1);
  sub_1B06BD0C8(MEMORY[0x1E699AAE8], v11 + 2);
  v11[3] = sub_1B041A060(a2);
  sub_1B06BD0C8(MEMORY[0x1E699AAF0], v11 + 4);
  v5 = IndexingStatistics.messagesNotIndexed.getter(a1, a2);
  v11[5] = sub_1B041A060(v5);
  sub_1B06BD0C8(MEMORY[0x1E699AAF8], v11 + 6);
  v11[7] = sub_1B041A060(a3);
  sub_1B06BD0C8(MEMORY[0x1E699AA80], v11 + 8);
  v11[9] = sub_1B041A060(a4);
  sub_1B06BD0C8(MEMORY[0x1E699AA28], v11 + 10);
  v11[11] = sub_1B0E45CC8();
  sub_1B06BD0C8(MEMORY[0x1E699AAD8], v11 + 12);
  v11[13] = sub_1B0E45CC8();
  sub_1B06BD0C8(MEMORY[0x1E699AAE0], v11 + 14);
  v11[15] = sub_1B0E45CC8();
  sub_1B0394964();
  type metadata accessor for EMPersistenceStatisticsKey(0);
  sub_1B0694A78();
  return sub_1B0E445D8();
}

uint64_t sub_1B090865C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a3;
  v21 = a1;
  v20 = a2;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0.0;
  v18 = 0;
  v13 = sub_1B0E43108();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v11 - v16;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v27 = &v11 - v19;
  StatsRequestVMa = _s16LastStatsRequestVMa(v3);
  v24 = *(StatsRequestVMa - 8);
  v25 = StatsRequestVMa - 8;
  v22 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v11 - v22;
  v31 = &v11 - v22;
  v30 = v4;
  v29 = v5;
  sub_1B09112B4(v4, v6);
  if ((*(v24 + 48))(v27, 1, StatsRequestVMa) == 1)
  {
    sub_1B0911408(v27);
    return (*(v24 + 56))(v12, 1, 1, StatsRequestVMa);
  }

  else
  {
    v8 = sub_1B0911564(v27, v23);
    (*(v14 + 16))(v17, v23, v13, v8);
    sub_1B0E43048();
    v11 = v9;
    (*(v14 + 8))(v17, v13);
    v28 = v11;
    if (v11 <= 300.0)
    {
      v10 = sub_1B09115FC(v23, v12);
      (*(v24 + 56))(v12, 0, 1, StatsRequestVMa, v10);
    }

    else
    {
      (*(v24 + 56))(v12, 1, 1, StatsRequestVMa, 300.0);
    }

    return sub_1B0911788(v23);
  }
}

uint64_t sub_1B0908A08(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v30 = a5;
  v31 = a4;
  v32 = a3;
  v33 = a2;
  v37 = 0;
  v36 = 0u;
  v35 = 0u;
  v34 = 0;
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v38 = a4;
  v39 = a5;
  v5 = *a1;
  v6 = a1[1];
  v45 = *(a1 + 32);
  v44 = v6;
  v43 = v5;
  if (v45)
  {
    v12 = v43;

    v13 = v43;
    v31(0, v43);

    return v34;
  }

  else
  {
    v7 = v34;
    v25 = *(&v43 + 1);
    v22 = v43;
    v19 = v43;
    v23 = *(&v44 + 1);
    v26 = v44;
    v20 = v44;
    v35 = v43;
    v36 = v44;
    v28 = *(v33 + OBJC_IVAR___MFServerMessagesIndexer_lastStatsRequest);
    v21 = v28;

    v24 = &v16;
    MEMORY[0x1EEE9AC00](&v16);
    v27 = v15;
    v15[2] = v8;
    v15[3] = v9;
    v15[4] = v25;
    v15[5] = v26;
    v15[6] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790);
    sub_1B03E1B3C(sub_1B0911EB4, v27, v28, v11, MEMORY[0x1E69E7CA8] + 8);
    v29 = v7;

    v17 = sub_1B0908464(v19, *(&v19 + 1), v20, *(&v20 + 1));
    v31(v17, 0);

    return v29;
  }
}

char *sub_1B0908CF8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a1;
  v14[2] = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v28 = 0;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v22 = 0;
  v15 = sub_1B0E43108();
  v16 = *(v15 - 8);
  v14[1] = v15 - 8;
  v14[0] = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v21 = v14 - v14[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790);
  v6 = MEMORY[0x1EEE9AC00](v21);
  v23 = v14 - v7;
  v28 = v24;
  v27 = v8;
  *&v25 = v17;
  *(&v25 + 1) = v9;
  *&v26 = v10;
  *(&v26 + 1) = v11;
  (*(v16 + 16))(v6);
  sub_1B0903CB4(v21, v17, v18, v19, v20, v23);
  StatsRequestVMa = _s16LastStatsRequestVMa(v22);
  (*(*(StatsRequestVMa - 8) + 56))(v23, 0, 1);
  return sub_1B0911EEC(v23, v24);
}

uint64_t sub_1B0908F90(uint64_t a1, void *a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a1)
  {
    type metadata accessor for EMPersistenceStatisticsKey(0);
    sub_1B039A494();
    sub_1B0694A78();
    v7 = sub_1B0E44598();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v3 = a2;
  if (a2)
  {
    v5 = sub_1B0E42CC8();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  (*(a3 + 16))(a3, v8);
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v8);
}

uint64_t sub_1B09090D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](v4);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a2;
  v10[5] = v4;
  sub_1B09096A4(a1, sub_1B09117EC, v10);
}

uint64_t sub_1B09091CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  sub_1B07BA724(a1);

  if (a1)
  {
    v8 = sub_1B091260C(sub_1B09093D4, 0, &type metadata for UID);

    v7 = swift_allocObject();
    *(v7 + 16) = a4;
    *(v7 + 24) = a5;
    SearchSession.excludeIndexedUIDs(in:from:completion:)(a1, a2, a3, v8, sub_1B0911EA8, v7);
  }

  else
  {
    a4(a6);
  }
}

uint64_t sub_1B0909410(uint64_t a1, void (*a2)(void))
{

  type metadata accessor for MFUIDSet();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B09094B0(a1);
  a2();
  MEMORY[0x1E69E5920](v5);
}

id sub_1B09094B0(uint64_t a1)
{
  v9 = a1;
  v16 = 0;
  v15 = sub_1B090FE84;
  v23 = 0;
  v21 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v7 - v10;
  v12 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v19 = &v7 - v12;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v14 = &v7 - v13;
  v23 = &v7 - v13;
  v21 = v5;
  v20 = v5;
  sub_1B041C1E8();
  MessageIdentifierSet.init()();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3000, &unk_1B0EA07F0);
  sub_1B0911800();
  sub_1B0E44FD8();
  sub_1B03D08AC(v14, v11);
  v8 = sub_1B09127A4(v11);
  MEMORY[0x1E69E5928](v8);
  v22 = v8;
  sub_1B03D09B8(v14);

  MEMORY[0x1E69E5920](v22);
  return v8;
}

uint64_t sub_1B09096A4(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v94 = a1;
  v111 = a2;
  v109 = a3;
  v4 = v3;
  v5 = v94;
  v110 = v4;
  v95 = sub_1B090B1AC;
  v96 = sub_1B09118EC;
  v97 = sub_1B0911888;
  v98 = sub_1B039BCF8;
  v99 = sub_1B0398F5C;
  v100 = sub_1B0398F5C;
  v101 = sub_1B039BCEC;
  v138 = 0;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  v102 = 0;
  v125 = 0;
  v126 = 0;
  v124 = 0;
  v103 = 0;
  v104 = sub_1B0E439A8();
  v105 = *(v104 - 8);
  v106 = v104 - 8;
  v107 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v108 = &v42 - v107;
  v112 = sub_1B0E42E68();
  v114 = *(v112 - 8);
  v113 = v112 - 8;
  v115 = v114;
  v116 = *(v114 + 64);
  v117 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v112);
  v118 = &v42 - v117;
  v138 = v5;
  v136 = v6;
  v137 = v7;
  v135 = v8;
  v120 = objc_opt_self();
  sub_1B0E42D18();
  v119 = v9;
  v122 = sub_1B0E44AC8();

  v121 = *MEMORY[0x1E699A698];
  MEMORY[0x1E69E5928](v121);
  v123 = [v120 accountIDFromMailboxURLString:v122 urlScheme:v121];
  MEMORY[0x1E69E5920](v121);
  MEMORY[0x1E69E5920](v122);
  if (v123)
  {
    v93 = v123;
    v88 = v123;
    v89 = sub_1B0E44AD8();
    v90 = v10;
    MEMORY[0x1E69E5920](v88);
    v91 = v89;
    v92 = v90;
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  v11 = v102;
  v132[0] = v91;
  v132[1] = v92;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
  result = sub_1B039A570(v95, 0, v12, MEMORY[0x1E69E73E0], &type metadata for AccountID, v86, &v133);
  v87 = v11;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1B03B1198(v132);
    v84 = v133;
    v85 = v134;
    if (v134)
    {
      v82 = v84;
      v83 = v85;
      v79 = v85;
      v80 = v84;
      v125 = v84;
      v126 = v85;
      v78 = [v110 mailAccountsProvider];
      ObjectType = swift_getObjectType();
      v15 = sub_1B0902D08(v80, v79, ObjectType);
      v81 = v15;
      if (v15)
      {
        v77 = v81;
        v76 = v81;
        v124 = v81;
        swift_unknownObjectRelease();
        v66 = sub_1B0E46A48();
        v69 = v115;
        v68 = *(v114 + 16);
        v67 = v114 + 16;
        v68(v16, v94, v112);
        sub_1B0394964();
        v75 = v17;
        v74 = [v110 searchRequestQueue];
        v68(v118, v94, v112);

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v70 = (*(v69 + 80) + 16) & ~*(v69 + 80);
        v71 = (v70 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
        v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
        v73 = swift_allocObject();
        (*(v114 + 32))(v73 + v70, v118, v112);
        v18 = v109;
        v19 = v72;
        v20 = v80;
        v21 = v96;
        v22 = v73;
        v23 = v74;
        v24 = v79;
        v25 = v75;
        v26 = (v73 + v71);
        *v26 = v111;
        v26[1] = v18;
        v27 = (v22 + v19);
        *v27 = v20;
        v27[1] = v24;
        sub_1B075168C(v25, v23, v21, v22);

        MEMORY[0x1E69E5920](v74);

        MEMORY[0x1E69E5920](v76);
      }

      swift_unknownObjectRelease();
    }

    v28 = v108;
    v29 = sub_1B0902FF8();
    (*(v105 + 16))(v28, v29, v104);
    v51 = v115;
    (*(v114 + 16))(v118, v94, v112);
    v52 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v55 = 7;
    v56 = swift_allocObject();
    (*(v114 + 32))(v56 + v52, v118, v112);
    v64 = sub_1B0E43988();
    v65 = sub_1B0E458E8();
    v53 = 17;
    v58 = swift_allocObject();
    *(v58 + 16) = 34;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v54 = 32;
    v30 = swift_allocObject();
    v31 = v56;
    v57 = v30;
    *(v30 + 16) = v97;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v57;
    v61 = v32;
    *(v32 + 16) = v98;
    *(v32 + 24) = v33;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v60 = sub_1B0E46A48();
    v62 = v34;

    v35 = v58;
    v36 = v62;
    *v62 = v99;
    v36[1] = v35;

    v37 = v59;
    v38 = v62;
    v62[2] = v100;
    v38[3] = v37;

    v39 = v61;
    v40 = v62;
    v62[4] = v101;
    v40[5] = v39;
    sub_1B0394964();

    if (os_log_type_enabled(v64, v65))
    {
      v41 = v87;
      v44 = sub_1B0E45D78();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v45 = sub_1B03949A8(0, v43, v43);
      v46 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v47 = &v131;
      v131 = v44;
      v48 = &v130;
      v130 = v45;
      v49 = &v129;
      v129 = v46;
      sub_1B0394A48(2, &v131);
      sub_1B0394A48(1, v47);
      v127 = v99;
      v128 = v58;
      sub_1B03949FC(&v127, v47, v48, v49);
      v50 = v41;
      if (v41)
      {

        __break(1u);
      }

      else
      {
        v127 = v100;
        v128 = v59;
        sub_1B03949FC(&v127, &v131, &v130, &v129);
        v42 = 0;
        v127 = v101;
        v128 = v61;
        sub_1B03949FC(&v127, &v131, &v130, &v129);
        _os_log_impl(&dword_1B0389000, v64, v65, "Could not find account for mailbox '%{public}s'", v44, 0xCu);
        sub_1B03998A8(v45, 0, v43);
        sub_1B03998A8(v46, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v64);
    (*(v105 + 8))(v108, v104);

    v111(0, 0);
  }

  return result;
}

uint64_t sub_1B090A68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  MEMORY[0x1E69E5928](v5);
  MEMORY[0x1E69E5928](a2);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = v5;
  v12[5] = a2;
  v12[6] = a3;
  sub_1B09096A4(a1, sub_1B09119BC, v12);
}

uint64_t sub_1B090A798(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v30 = a4;
  v31 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a8;
  sub_1B07BA724(a1);
  if (a1)
  {
    v24 = a1;
    v25 = a2;
    v26 = a3;

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3098, &qword_1B0EA08F8);
    sub_1B03F1A20(sub_1B090AA44, 0, v8, MEMORY[0x1E69E73E0], &type metadata for UID, v13, &v22);
    v10 = v22;
    v11 = v23;

    v12 = swift_allocObject();
    *(v12 + 16) = a4;
    *(v12 + 24) = a5;
    LODWORD(v21) = v10;
    BYTE4(v21) = v11 & 1;
    SearchSession.getIndexingDiagnostics(in:before:limit:completion:)(a1, a2, a3, v21, a8, sub_1B0911DD4, v12);
  }

  else
  {

    sub_1B039A494();
    v14 = sub_1B0E46A48();
    sub_1B0E46A48();
    a4(v14);
  }
}

void sub_1B090AA44(id *a1@<X0>, _DWORD *a2@<X8>)
{
  [*a1 unsignedIntValue];
  UID.init(rawValue:)();
  *a2 = v2;
}

uint64_t sub_1B090AA90(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v22 = a1;
  v23 = a2;
  v20 = a3;
  v21 = a4;
  sub_1B0911DE0(a1);
  if (a1)
  {
    v18 = a1;
    v19 = a2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = a1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E30A0, &qword_1B0EA0900);
    v7 = sub_1B039A494();
    v9 = sub_1B0911E20();
    v10 = sub_1B039CA88(sub_1B090AD28, 0, v6, v7, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v8);
    sub_1B039E440(&v17);
    v16 = v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v15 = a2;
    v5 = sub_1B039CA88(sub_1B090AD28, 0, v6, v7, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v8);
    sub_1B039E440(&v15);

    (a3)(v10, v5);
  }

  else
  {

    sub_1B039A494();
    v11 = sub_1B0E46A48();
    sub_1B0E46A48();
    a3(v11);
  }
}

id sub_1B090AD28@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1B039A494();
  result = sub_1B074A93C(v3);
  *a2 = result;
  return result;
}

uint64_t sub_1B090AF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B039A494();
  v6 = sub_1B0E451A8();
  v5 = sub_1B0E451A8();
  (*(a3 + 16))(a3, v6);
  MEMORY[0x1E69E5920](v5);
  return MEMORY[0x1E69E5920](v6);
}

uint64_t sub_1B090B084()
{
  v6 = objc_opt_self();
  _swift_stdlib_has_malloc_size();
  v7 = sub_1B0E42DF8();
  v8 = v0;
  if (v0)
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = sub_1B0E44838();
    v10 = v1;
  }

  v3 = sub_1B0E44AC8();

  v4 = [v6 partiallyRedactedStringForString_];
  MEMORY[0x1E69E5920](v3);
  v5 = sub_1B0E44AD8();
  MEMORY[0x1E69E5920](v4);
  return v5;
}

uint64_t sub_1B090B1AC@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  rawValue = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&result = AccountID.init(rawValue:)(rawValue);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B090B210(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, Swift::Int a5, void *a6)
{
  v24 = a1;
  v20 = a2;
  v22 = a3;
  v17 = a4;
  v18 = a5;
  v19._rawValue = a6;
  v38 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v29 = 0;
  v30 = 0;
  v25 = sub_1B0E42E68();
  v23 = *(v25 - 8);
  v21 = v25 - 8;
  v6 = MEMORY[0x1EEE9AC00](v25);
  v26 = &v13 - v7;
  v38 = v24;
  v37 = v8;
  v35 = v22;
  v36 = v9;
  v33 = v10;
  v34 = v11;
  (*(v23 + 16))(v6);
  sub_1B07BAD2C();
  sub_1B0E44778();
  v27 = v31;
  v28 = v32;
  if (v31)
  {
    v15 = v27;
    v16 = v28;
    v14.underlying.super.isa = v27;
    v29 = v27;
    v30 = v28;
    (*(v23 + 8))(v26, v25);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = Mailbox.init(name:accountID:)(v14, v18, v19);
    v22();
    sub_1B07BA794(v13.suggestion.underlying.super.isa);
  }

  else
  {
    (*(v23 + 8))(v26, v25);

    (v22)(0, 0);
  }
}

uint64_t sub_1B090B4C8(void *a1, uint64_t a2)
{
  v50 = a2;
  v49 = a1;
  v69 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v64 = 0;
  v63 = 0;
  v47 = 0;
  v59 = 0;
  v51 = sub_1B0E439A8();
  v52 = *(v51 - 8);
  v53 = v52;
  MEMORY[0x1EEE9AC00](v49);
  v54 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v3;
  v55 = v4 + 16;
  v63 = v4 + 16;
  v56 = v68;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v57 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v46 = v57;
    v39 = v57;
    v59 = v57;
    v38 = *&v57[OBJC_IVAR___MFServerMessagesIndexer_searchSession];

    v7 = v49;
    v8 = swift_allocObject();
    v37 = v8;
    *(v8 + 16) = v49;
    SearchSession.sendAnalytics(completion:)(sub_1B09122A8, v8);

    return v47;
  }

  else
  {
    v5 = v54;
    v6 = sub_1B0902FF8();
    (*(v53 + 16))(v5, v6, v51);
    v44 = sub_1B0E43988();
    v41 = v44;
    v43 = sub_1B0E458E8();
    v42 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v45 = sub_1B0E46A48();
    if (os_log_type_enabled(v44, v43))
    {
      v9 = v47;
      v28 = sub_1B0E45D78();
      v24 = v28;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v26 = 0;
      v29 = sub_1B03949A8(0, v25, v25);
      v27 = v29;
      v30 = sub_1B03949A8(v26, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v61 = v28;
      v66 = v29;
      v65 = v30;
      v31 = 0;
      v32 = &v61;
      sub_1B0394A48(0, &v61);
      sub_1B0394A48(v31, v32);
      v60 = v45;
      v33 = &v15;
      MEMORY[0x1EEE9AC00](&v15);
      v34 = &v15 - 6;
      *(&v15 - 4) = v10;
      *(&v15 - 3) = &v66;
      *(&v15 - 2) = &v65;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      sub_1B0E45018();
      v36 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v41, v42, "BGSystemTask started, but MFServerMessagesIndexer is gone.", v24, 2u);
        v22 = 0;
        sub_1B03998A8(v27, 0, v25);
        sub_1B03998A8(v30, v22, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v23 = v36;
      }
    }

    else
    {

      v23 = v47;
    }

    v19 = v23;

    (*(v53 + 8))(v54, v51);
    v67 = 0;
    sub_1B041A044();
    v62[1] = v11;
    sub_1B0912230();
    sub_1B0E453D8();
    v62[0] = v67;
    v21 = [v49 setTaskExpiredWithRetryAfter:v62 error:?];
    v20 = v62[0];
    v12 = v62[0];
    v13 = v67;
    v67 = v20;

    if (v21)
    {
      return v19;
    }

    v15 = v67;
    v16 = sub_1B0E42CD8();

    swift_willThrow();
    v17 = 0;

    return v17;
  }
}

void sub_1B090BB7C(void *a1, uint64_t a2, uint64_t a3)
{
  v253 = a1;
  v238 = a2;
  v237 = a3;
  v255 = sub_1B09119DC;
  v259 = sub_1B039BCF8;
  v261 = sub_1B0398F5C;
  v263 = sub_1B0398F5C;
  v266 = sub_1B039BCEC;
  v212 = sub_1B09119E4;
  v213 = "Fatal error";
  v214 = "Message/MFServerMessagesIndexer.swift";
  v215 = sub_1B09119DC;
  v216 = sub_1B039BCF8;
  v217 = sub_1B0398F5C;
  v218 = sub_1B0398F5C;
  v219 = sub_1B039BCEC;
  v220 = sub_1B09119DC;
  v221 = sub_1B039BCF8;
  v222 = sub_1B0911A54;
  v223 = sub_1B0911A5C;
  v224 = sub_1B070B324;
  v225 = sub_1B0398F5C;
  v226 = sub_1B0398F5C;
  v227 = sub_1B039BCEC;
  v228 = sub_1B0398F5C;
  v229 = sub_1B0398F5C;
  v230 = sub_1B070B4B4;
  v231 = sub_1B09119DC;
  v232 = sub_1B039BCF8;
  v233 = sub_1B0398F5C;
  v234 = sub_1B0398F5C;
  v235 = sub_1B039BCEC;
  v310[1] = *MEMORY[0x1E69E9840];
  v300 = 0;
  v298 = 0;
  v299 = 0;
  v297 = 0;
  v289 = 0;
  v236 = 0;
  v281 = 0;
  v250 = sub_1B0E439A8();
  v248 = *(v250 - 8);
  v249 = v250 - 8;
  v244 = v248[8];
  v239 = (v244 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v253);
  v240 = v97 - v239;
  v241 = v239;
  MEMORY[0x1EEE9AC00](v3);
  v242 = v97 - v241;
  v243 = (v244 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v245 = v97 - v243;
  v246 = (v244 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v6 = v97 - v246;
  v247 = v97 - v246;
  v300 = v7;
  v298 = v8;
  v299 = v9;
  v297 = v10;
  v11 = sub_1B0902FF8();
  v251 = v248[2];
  v252 = v248 + 2;
  v251(v6, v11, v250);
  MEMORY[0x1E69E5928](v253);
  v257 = 7;
  v258 = swift_allocObject();
  *(v258 + 16) = v253;
  v270 = sub_1B0E43988();
  v271 = sub_1B0E45908();
  v254 = 17;
  v262 = swift_allocObject();
  *(v262 + 16) = 32;
  v264 = swift_allocObject();
  *(v264 + 16) = 8;
  v256 = 32;
  v12 = swift_allocObject();
  v13 = v258;
  v260 = v12;
  *(v12 + 16) = v255;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v260;
  v267 = v14;
  *(v14 + 16) = v259;
  *(v14 + 24) = v15;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v265 = sub_1B0E46A48();
  v268 = v16;

  v17 = v262;
  v18 = v268;
  *v268 = v261;
  v18[1] = v17;

  v19 = v264;
  v20 = v268;
  v268[2] = v263;
  v20[3] = v19;

  v21 = v267;
  v22 = v268;
  v268[4] = v266;
  v22[5] = v21;
  sub_1B0394964();

  if (os_log_type_enabled(v270, v271))
  {
    v23 = v236;
    v205 = sub_1B0E45D78();
    v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v206 = sub_1B03949A8(0, v204, v204);
    v207 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v208 = &v274;
    v274 = v205;
    v209 = &v302;
    v302 = v206;
    v210 = &v301;
    v301 = v207;
    sub_1B0394A48(2, &v274);
    sub_1B0394A48(1, v208);
    v272 = v261;
    v273 = v262;
    sub_1B03949FC(&v272, v208, v209, v210);
    v211 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v272 = v263;
      v273 = v264;
      sub_1B03949FC(&v272, &v274, &v302, &v301);
      v202 = 0;
      v272 = v266;
      v273 = v267;
      sub_1B03949FC(&v272, &v274, &v302, &v301);
      v201 = 0;
      _os_log_impl(&dword_1B0389000, v270, v271, "Registering BGSystemTask for SearchIndexer: %s", v205, 0xCu);
      sub_1B03998A8(v206, 0, v204);
      sub_1B03998A8(v207, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v203 = v201;
    }
  }

  else
  {
    v24 = v236;

    v203 = v24;
  }

  v192 = v203;
  MEMORY[0x1E69E5920](v270);
  v193 = v248[1];
  v194 = v248 + 1;
  v193(v247, v250);
  v199 = [objc_opt_self() sharedScheduler];
  v196 = [v253 identifier];
  sub_1B0E44AD8();
  v195 = v25;
  v198 = sub_1B0E44AC8();

  MEMORY[0x1E69E5920](v196);

  v26 = swift_allocObject();
  v27 = v237;
  v28 = v212;
  *(v26 + 16) = v238;
  *(v26 + 24) = v27;
  v295 = v28;
  v296 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v291 = 1107296256;
  v292 = 0;
  v293 = sub_1B090E4EC;
  v294 = &block_descriptor_158;
  v197 = _Block_copy(&aBlock);

  v200 = [v199 registerForTaskWithIdentifier:v198 usingQueue:0 launchHandler:v197];
  _Block_release(v197);
  MEMORY[0x1E69E5920](v198);
  MEMORY[0x1E69E5920](v199);
  v289 = v200 & 1;
  if (v200)
  {
    v190 = [objc_opt_self() sharedScheduler];
    v188 = [v253 identifier];
    sub_1B0E44AD8();
    v187 = v29;
    v189 = sub_1B0E44AC8();

    MEMORY[0x1E69E5920](v188);
    v191 = [v190 taskRequestForIdentifier_];
    MEMORY[0x1E69E5920](v189);
    MEMORY[0x1E69E5920](v190);
    v310[0] = v191;
    v186 = v191 == 0;
    v185 = v186;
    sub_1B06D4E94(v310);
    if (v185)
    {
      v307 = 0;
      v183 = [objc_opt_self() sharedScheduler];
      v282 = v307;
      v184 = [v183 submitTaskRequest:v253 error:&v282];
      v182 = v282;
      MEMORY[0x1E69E5928](v282);
      v30 = v307;
      v307 = v182;
      MEMORY[0x1E69E5920](v30);
      MEMORY[0x1E69E5920](v183);
      if (v184)
      {
        v31 = v245;
        v32 = sub_1B0902FF8();
        v251(v31, v32, v250);
        MEMORY[0x1E69E5928](v253);
        v172 = 7;
        v173 = swift_allocObject();
        *(v173 + 16) = v253;
        v180 = sub_1B0E43988();
        v181 = sub_1B0E45908();
        v170 = 17;
        v175 = swift_allocObject();
        *(v175 + 16) = 32;
        v176 = swift_allocObject();
        *(v176 + 16) = 8;
        v171 = 32;
        v33 = swift_allocObject();
        v34 = v173;
        v174 = v33;
        *(v33 + 16) = v231;
        *(v33 + 24) = v34;
        v35 = swift_allocObject();
        v36 = v174;
        v178 = v35;
        *(v35 + 16) = v232;
        *(v35 + 24) = v36;
        v177 = sub_1B0E46A48();
        v179 = v37;

        v38 = v175;
        v39 = v179;
        *v179 = v233;
        v39[1] = v38;

        v40 = v176;
        v41 = v179;
        v179[2] = v234;
        v41[3] = v40;

        v42 = v178;
        v43 = v179;
        v179[4] = v235;
        v43[5] = v42;
        sub_1B0394964();

        if (os_log_type_enabled(v180, v181))
        {
          v44 = v192;
          v163 = sub_1B0E45D78();
          v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v164 = sub_1B03949A8(0, v162, v162);
          v165 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v166 = &v277;
          v277 = v163;
          v167 = &v304;
          v304 = v164;
          v168 = &v303;
          v303 = v165;
          sub_1B0394A48(2, &v277);
          sub_1B0394A48(1, v166);
          v275 = v233;
          v276 = v175;
          sub_1B03949FC(&v275, v166, v167, v168);
          v169 = v44;
          if (v44)
          {

            __break(1u);
          }

          else
          {
            v275 = v234;
            v276 = v176;
            sub_1B03949FC(&v275, &v277, &v304, &v303);
            v161 = 0;
            v275 = v235;
            v276 = v178;
            sub_1B03949FC(&v275, &v277, &v304, &v303);
            _os_log_impl(&dword_1B0389000, v180, v181, "Submitted new task request for SearchIndexer: %s", v163, 0xCu);
            sub_1B03998A8(v164, 0, v162);
            sub_1B03998A8(v165, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v180);
        v193(v245, v250);
      }

      else
      {
        v108 = v307;
        v111 = sub_1B0E42CD8();
        MEMORY[0x1E69E5920](v108);
        swift_willThrow();
        v67 = v240;
        v109 = 0;
        v68 = v111;
        v281 = v111;
        v69 = sub_1B0902FF8();
        v251(v67, v69, v250);
        MEMORY[0x1E69E5928](v253);
        v110 = 24;
        v118 = 7;
        v70 = swift_allocObject();
        v71 = v111;
        v112 = v70;
        *(v70 + 16) = v253;
        v72 = v71;
        v116 = swift_allocObject();
        *(v116 + 16) = v111;
        sub_1B07575C4();

        v129 = sub_1B0E43988();
        v130 = sub_1B0E458F8();
        v114 = 17;
        v121 = swift_allocObject();
        *(v121 + 16) = 32;
        v122 = swift_allocObject();
        v115 = 8;
        *(v122 + 16) = 8;
        v117 = 32;
        v73 = swift_allocObject();
        v74 = v112;
        v113 = v73;
        *(v73 + 16) = v220;
        *(v73 + 24) = v74;
        v75 = swift_allocObject();
        v76 = v113;
        v123 = v75;
        *(v75 + 16) = v221;
        *(v75 + 24) = v76;
        v124 = swift_allocObject();
        *(v124 + 16) = 64;
        v125 = swift_allocObject();
        *(v125 + 16) = v115;
        v77 = swift_allocObject();
        v78 = v116;
        v119 = v77;
        *(v77 + 16) = v222;
        *(v77 + 24) = v78;
        v79 = swift_allocObject();
        v80 = v119;
        v120 = v79;
        *(v79 + 16) = v223;
        *(v79 + 24) = v80;
        v81 = swift_allocObject();
        v82 = v120;
        v127 = v81;
        *(v81 + 16) = v224;
        *(v81 + 24) = v82;
        v126 = sub_1B0E46A48();
        v128 = v83;

        v84 = v121;
        v85 = v128;
        *v128 = v225;
        v85[1] = v84;

        v86 = v122;
        v87 = v128;
        v128[2] = v226;
        v87[3] = v86;

        v88 = v123;
        v89 = v128;
        v128[4] = v227;
        v89[5] = v88;

        v90 = v124;
        v91 = v128;
        v128[6] = v228;
        v91[7] = v90;

        v92 = v125;
        v93 = v128;
        v128[8] = v229;
        v93[9] = v92;

        v94 = v127;
        v95 = v128;
        v128[10] = v230;
        v95[11] = v94;
        sub_1B0394964();

        if (os_log_type_enabled(v129, v130))
        {
          v96 = v109;
          v100 = sub_1B0E45D78();
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v99 = 1;
          v101 = sub_1B03949A8(1, v98, v98);
          v102 = sub_1B03949A8(v99, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v104 = &v280;
          v280 = v100;
          v105 = &v306;
          v306 = v101;
          v106 = &v305;
          v305 = v102;
          v103 = 2;
          sub_1B0394A48(2, &v280);
          sub_1B0394A48(v103, v104);
          v278 = v225;
          v279 = v121;
          sub_1B03949FC(&v278, v104, v105, v106);
          v107 = v96;
          if (v96)
          {

            __break(1u);
          }

          else
          {
            v278 = v226;
            v279 = v122;
            sub_1B03949FC(&v278, &v280, &v306, &v305);
            v97[4] = 0;
            v278 = v227;
            v279 = v123;
            sub_1B03949FC(&v278, &v280, &v306, &v305);
            v97[3] = 0;
            v278 = v228;
            v279 = v124;
            sub_1B03949FC(&v278, &v280, &v306, &v305);
            v97[2] = 0;
            v278 = v229;
            v279 = v125;
            sub_1B03949FC(&v278, &v280, &v306, &v305);
            v97[1] = 0;
            v278 = v230;
            v279 = v127;
            sub_1B03949FC(&v278, &v280, &v306, &v305);
            _os_log_impl(&dword_1B0389000, v129, v130, "Could not submit new BGSystemTask for %s: %@", v100, 0x16u);
            v97[0] = 1;
            sub_1B03998A8(v101, 1, v98);
            sub_1B03998A8(v102, v97[0], MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v129);
        v193(v240, v250);
      }
    }

    else
    {
      v45 = v242;
      v46 = sub_1B0902FF8();
      v251(v45, v46, v250);
      MEMORY[0x1E69E5928](v253);
      v151 = 7;
      v152 = swift_allocObject();
      *(v152 + 16) = v253;
      v159 = sub_1B0E43988();
      v160 = sub_1B0E45908();
      v149 = 17;
      v154 = swift_allocObject();
      *(v154 + 16) = 32;
      v155 = swift_allocObject();
      *(v155 + 16) = 8;
      v150 = 32;
      v47 = swift_allocObject();
      v48 = v152;
      v153 = v47;
      *(v47 + 16) = v215;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      v50 = v153;
      v157 = v49;
      *(v49 + 16) = v216;
      *(v49 + 24) = v50;
      v156 = sub_1B0E46A48();
      v158 = v51;

      v52 = v154;
      v53 = v158;
      *v158 = v217;
      v53[1] = v52;

      v54 = v155;
      v55 = v158;
      v158[2] = v218;
      v55[3] = v54;

      v56 = v157;
      v57 = v158;
      v158[4] = v219;
      v57[5] = v56;
      sub_1B0394964();

      if (os_log_type_enabled(v159, v160))
      {
        v58 = v192;
        v142 = sub_1B0E45D78();
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v143 = sub_1B03949A8(0, v141, v141);
        v144 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v145 = &v285;
        v285 = v142;
        v146 = &v309;
        v309 = v143;
        v147 = &v308;
        v308 = v144;
        sub_1B0394A48(2, &v285);
        sub_1B0394A48(1, v145);
        v283 = v217;
        v284 = v154;
        sub_1B03949FC(&v283, v145, v146, v147);
        v148 = v58;
        if (v58)
        {

          __break(1u);
        }

        else
        {
          v283 = v218;
          v284 = v155;
          sub_1B03949FC(&v283, &v285, &v309, &v308);
          v140 = 0;
          v283 = v219;
          v284 = v157;
          sub_1B03949FC(&v283, &v285, &v309, &v308);
          _os_log_impl(&dword_1B0389000, v159, v160, "Task already exists for SearchIndexer: %s", v142, 0xCu);
          sub_1B03998A8(v143, 0, v141);
          sub_1B03998A8(v144, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v159);
      v193(v242, v250);
    }
  }

  else
  {
    MEMORY[0x1E69E5928](v253);
    v131 = 36;
    v59 = sub_1B0E46A28();
    v137 = &v287;
    v287 = v59;
    v288 = v60;
    v135 = 1;
    v61 = sub_1B0E44838();
    v132 = v62;
    MEMORY[0x1B2728B30](v61);

    v134 = [v253 identifier];
    v63 = sub_1B0E44AD8();
    v133 = v286;
    v286[0] = v63;
    v286[1] = v64;
    sub_1B0E46A08();
    sub_1B03B1198(v133);
    MEMORY[0x1E69E5920](v134);
    v65 = sub_1B0E44838();
    v136 = v66;
    MEMORY[0x1B2728B30](v65);

    v139 = v287;
    v138 = v288;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v137);
    sub_1B0E44C88();
    sub_1B0E465B8();
    __break(1u);
  }
}

uint64_t sub_1B090D734(void *a1, uint64_t a2)
{
  v82 = a2;
  v81 = a1;
  v110 = *MEMORY[0x1E69E9840];
  v80 = 0;
  v102 = 0;
  v101 = 0;
  v79 = 0;
  v97 = 0;
  v83 = sub_1B0E439A8();
  v84 = *(v83 - 8);
  v85 = v84;
  v86 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v88 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v87 = &v20 - v88;
  MEMORY[0x1EEE9AC00](v2);
  v89 = &v20 - v88;
  v102 = v3;
  v90 = v4 + 16;
  v101 = v4 + 16;
  v91 = v109;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v92 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v78 = v92;
    v72 = v92;
    v97 = v92;
    if ([objc_opt_self() preferenceEnabled_])
    {
      v7 = v87;
      v8 = sub_1B0902FF8();
      (*(v85 + 16))(v7, v8, v83);
      v69 = sub_1B0E43988();
      v66 = v69;
      v68 = sub_1B0E458E8();
      v67 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v70 = sub_1B0E46A48();
      if (os_log_type_enabled(v69, v68))
      {
        v9 = v79;
        v57 = sub_1B0E45D78();
        v53 = v57;
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v55 = 0;
        v58 = sub_1B03949A8(0, v54, v54);
        v56 = v58;
        v59 = sub_1B03949A8(v55, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v95 = v57;
        v104 = v58;
        v103 = v59;
        v60 = 0;
        v61 = &v95;
        sub_1B0394A48(0, &v95);
        sub_1B0394A48(v60, v61);
        v94 = v70;
        v62 = &v20;
        MEMORY[0x1EEE9AC00](&v20);
        v63 = &v20 - 6;
        *(&v20 - 4) = v10;
        *(&v20 - 3) = &v104;
        *(&v20 - 2) = &v103;
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
        sub_1B06D3AB0();
        sub_1B0E45018();
        v65 = v9;
        if (v9)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1B0389000, v66, v67, "WARNING: BGSystemTask started, but indexing is disabled using internal settings", v53, 2u);
          v51 = 0;
          sub_1B03998A8(v56, 0, v54);
          sub_1B03998A8(v59, v51, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v52 = v65;
        }
      }

      else
      {

        v52 = v79;
      }

      v48 = v52;

      (*(v85 + 8))(v87, v83);
      v105 = 0;
      sub_1B041A044();
      v96[1] = v11;
      sub_1B0912230();
      sub_1B0E453D8();
      v96[0] = v105;
      v50 = [v81 setTaskExpiredWithRetryAfter:v96 error:?];
      v49 = v96[0];
      v12 = v96[0];
      v13 = v105;
      v105 = v49;

      if (v50)
      {
        v47 = v48;
      }

      else
      {
        v21 = v105;
        v22 = sub_1B0E42CD8();

        swift_willThrow();
        v23 = 0;

        v47 = v23;
      }

      v46 = v47;

      return v46;
    }

    else
    {
      sub_1B090E29C(v81);

      return v79;
    }
  }

  else
  {
    v5 = v89;
    v6 = sub_1B0902FF8();
    (*(v85 + 16))(v5, v6, v83);
    v76 = sub_1B0E43988();
    v73 = v76;
    v75 = sub_1B0E458E8();
    v74 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v77 = sub_1B0E46A48();
    if (os_log_type_enabled(v76, v75))
    {
      v14 = v79;
      v37 = sub_1B0E45D78();
      v33 = v37;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v35 = 0;
      v38 = sub_1B03949A8(0, v34, v34);
      v36 = v38;
      v39 = sub_1B03949A8(v35, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v99 = v37;
      v107 = v38;
      v106 = v39;
      v40 = 0;
      v41 = &v99;
      sub_1B0394A48(0, &v99);
      sub_1B0394A48(v40, v41);
      v98 = v77;
      v42 = &v20;
      MEMORY[0x1EEE9AC00](&v20);
      v43 = &v20 - 6;
      *(&v20 - 4) = v15;
      *(&v20 - 3) = &v107;
      *(&v20 - 2) = &v106;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      sub_1B0E45018();
      v45 = v14;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v73, v74, "BGSystemTask started, but MFServerMessagesIndexer is gone.", v33, 2u);
        v31 = 0;
        sub_1B03998A8(v36, 0, v34);
        sub_1B03998A8(v39, v31, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v32 = v45;
      }
    }

    else
    {

      v32 = v79;
    }

    v28 = v32;

    (*(v85 + 8))(v89, v83);
    v108 = 0;
    sub_1B041A044();
    v100[1] = v16;
    sub_1B0912230();
    sub_1B0E453D8();
    v100[0] = v108;
    v30 = [v81 setTaskExpiredWithRetryAfter:v100 error:?];
    v29 = v100[0];
    v17 = v100[0];
    v18 = v108;
    v108 = v29;

    if (v30)
    {
      return v28;
    }

    v24 = v108;
    v25 = sub_1B0E42CD8();

    swift_willThrow();
    v26 = 0;

    return v26;
  }
}

uint64_t sub_1B090E29C(uint64_t a1)
{
  v10 = 0;
  v13 = a1;
  v12 = v1;
  v6 = *(v1 + OBJC_IVAR___MFServerMessagesIndexer_currentTask);

  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](v1);
  v8 = a1;
  v9 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB8, &unk_1B0EA0798);
  sub_1B03E1B3C(sub_1B0911A68, v7, v6, v2, v2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v1);

  v4 = v11;
  v10 = v11;

  if (v4)
  {
    sub_1B0A2781C();
  }
}

uint64_t sub_1B090E420(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1B0E44AD8();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B090E47C(uint64_t a1, void (*a2)(uint64_t))
{

  a2(a1);
}

uint64_t sub_1B090E4EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  v3(a2);
  MEMORY[0x1E69E5920](a2);
}

void *sub_1B090E58C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v108 = a3;
  v110 = a2;
  v109 = a1;
  v107 = a4;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v125 = 0;
  v124 = 0;
  v111 = sub_1B0E439A8();
  v112 = *(v111 - 8);
  v113 = v112;
  v114 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v116 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = &v36 - v116;
  MEMORY[0x1EEE9AC00](v4);
  v117 = &v36 - v116;
  v134 = v5;
  v133 = v6;
  v132 = v7;
  v119 = *v5;
  v118 = v119;

  if (v119)
  {
    v105 = v118;
    v8 = v117;
    v98 = v118;
    v124 = v118;
    v9 = sub_1B0902FF8();
    (*(v113 + 16))(v8, v9, v111);
    v102 = sub_1B0E43988();
    v99 = v102;
    v101 = sub_1B0E458E8();
    v100 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v103 = sub_1B0E46A48();
    if (os_log_type_enabled(v102, v101))
    {
      v96 = v106;
      v88 = sub_1B0E45D78();
      v84 = v88;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v86 = 0;
      v89 = sub_1B03949A8(0, v85, v85);
      v87 = v89;
      v90 = sub_1B03949A8(v86, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v123 = v88;
      v122 = v89;
      v121 = v90;
      v91 = 0;
      v92 = &v123;
      sub_1B0394A48(0, &v123);
      sub_1B0394A48(v91, v92);
      v120 = v103;
      v93 = &v36;
      MEMORY[0x1EEE9AC00](&v36);
      v94 = &v36 - 6;
      *(&v36 - 4) = v11;
      *(&v36 - 3) = &v122;
      *(&v36 - 2) = &v121;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      v12 = v96;
      sub_1B0E45018();
      v97 = v12;
      if (v12)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v99, v100, "Existing SearchIndexerBackgroundTask while trying to start a new one.", v84, 2u);
        v82 = 0;
        sub_1B03998A8(v87, 0, v85);
        sub_1B03998A8(v90, v82, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v83 = v97;
      }
    }

    else
    {

      v83 = v106;
    }

    v81 = v83;

    (*(v113 + 8))(v117, v111);
    sub_1B0A27744();
    *v109 = 0;

    v104 = v81;
  }

  else
  {
    v104 = v106;
  }

  v77 = v104;
  type metadata accessor for SearchIndexerBackgroundTask();
  v13 = v110;
  v14 = v108;
  v15 = [v108 mailAccountsProvider];
  v16 = v77;
  v17 = sub_1B0A27778(v110, v108, &off_1F26E1420, v15);
  v78 = v16;
  v79 = v17;
  v80 = v16;
  if (v16)
  {
    v19 = v115;
    v55 = v80;
    v54 = 0;
    v20 = v80;
    v131 = v55;
    v21 = sub_1B0902FF8();
    (*(v113 + 16))(v19, v21, v111);
    v22 = v55;
    v62 = 7;
    v63 = swift_allocObject();
    *(v63 + 16) = v55;
    v73 = sub_1B0E43988();
    v56 = v73;
    v72 = sub_1B0E458E8();
    v57 = v72;
    v58 = 17;
    v66 = swift_allocObject();
    v59 = v66;
    *(v66 + 16) = 64;
    v67 = swift_allocObject();
    v60 = v67;
    *(v67 + 16) = 8;
    v61 = 32;
    v23 = swift_allocObject();
    v24 = v63;
    v64 = v23;
    *(v23 + 16) = sub_1B07135E4;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v64;
    v70 = v25;
    v65 = v25;
    *(v25 + 16) = sub_1B070B324;
    *(v25 + 24) = v26;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v68 = sub_1B0E46A48();
    v69 = v27;

    v28 = v66;
    v29 = v69;
    *v69 = sub_1B0398F5C;
    v29[1] = v28;

    v30 = v67;
    v31 = v69;
    v69[2] = sub_1B0398F5C;
    v31[3] = v30;

    v32 = v69;
    v33 = v70;
    v69[4] = sub_1B070B4B4;
    v32[5] = v33;
    sub_1B0394964();

    if (os_log_type_enabled(v73, v72))
    {
      v51 = v54;
      v46 = sub_1B0E45D78();
      v43 = v46;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v49 = 1;
      v47 = sub_1B03949A8(1, v44, v44);
      v45 = v47;
      v48 = sub_1B03949A8(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v130 = v46;
      v129 = v47;
      v128 = v48;
      v50 = &v130;
      sub_1B0394A48(2, &v130);
      sub_1B0394A48(v49, v50);
      v34 = v51;
      v126 = sub_1B0398F5C;
      v127 = v59;
      sub_1B03949FC(&v126, v50, &v129, &v128);
      v52 = v34;
      v53 = v34;
      if (v34)
      {
        v41 = 0;

        __break(1u);
      }

      else
      {
        v126 = sub_1B0398F5C;
        v127 = v60;
        sub_1B03949FC(&v126, &v130, &v129, &v128);
        v39 = 0;
        v40 = 0;
        v126 = sub_1B070B4B4;
        v127 = v65;
        sub_1B03949FC(&v126, &v130, &v129, &v128);
        v37 = 0;
        v38 = 0;
        _os_log_impl(&dword_1B0389000, v56, v57, "Failed to create SearchIndexerBackgroundTask: %@.", v43, 0xCu);
        sub_1B03998A8(v45, 1, v44);
        sub_1B03998A8(v48, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v42 = v37;
      }
    }

    else
    {

      v42 = v54;
    }

    v36 = v42;

    (*(v113 + 8))(v115, v111);
    v35 = v55;
    *v107 = 0;

    return v36;
  }

  else
  {
    v76 = v79;
    v125 = v79;
    if (*v109)
    {
      v75 = *v109;

      sub_1B0A27744();
    }

    *v109 = v76;

    *v107 = v76;

    result = v78;
    v74 = v78;
  }

  return result;
}

uint64_t sub_1B090F294(uint64_t a1)
{
  v37 = a1;
  v47 = 0;
  v46 = 0;
  v44 = 0;
  v32 = sub_1B0E439A8();
  v33 = *(v32 - 8);
  v34 = v33;
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v3;
  v46 = v1;
  v38 = *(v1 + OBJC_IVAR___MFServerMessagesIndexer_currentTask);
  v36 = v38;

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB8, &unk_1B0EA0798);
  sub_1B03E1B3C(sub_1B0911A94, v37, v38, v4, MEMORY[0x1E69E6370]);
  v39 = 0;

  v44 = v45;
  if (v45)
  {
    return v39;
  }

  v5 = v35;
  v6 = sub_1B0902FF8();
  (*(v34 + 16))(v5, v6, v32);
  v30 = sub_1B0E43988();
  v27 = v30;
  v29 = sub_1B0E458E8();
  v28 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v31 = sub_1B0E46A48();
  if (os_log_type_enabled(v30, v29))
  {
    v7 = v39;
    v18 = sub_1B0E45D78();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v16 = 0;
    v19 = sub_1B03949A8(0, v15, v15);
    v17 = v19;
    v20 = sub_1B03949A8(v16, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v43 = v18;
    v42 = v19;
    v41 = v20;
    v21 = 0;
    v22 = &v43;
    sub_1B0394A48(0, &v43);
    sub_1B0394A48(v21, v22);
    v40 = v31;
    v23 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v24 = &v10 - 6;
    *(&v10 - 4) = v8;
    *(&v10 - 3) = &v42;
    *(&v10 - 2) = &v41;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
    sub_1B06D3AB0();
    sub_1B0E45018();
    v26 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B0389000, v27, v28, "BGSystemTask did complete, but it is not the current task.", v14, 2u);
      v12 = 0;
      sub_1B03998A8(v17, 0, v15);
      sub_1B03998A8(v20, v12, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v13 = v26;
    }
  }

  else
  {

    v13 = v39;
  }

  v10 = v13;

  (*(v34 + 8))(v35, v32);
  return v10;
}

uint64_t sub_1B090F720@<X0>(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v7 = *a1;

  if (!v7)
  {
    goto LABEL_9;
  }

  v4 = sub_1B0E46B58();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v4 & 1) == 0)
  {

LABEL_9:
    *a3 = 0;
    return result;
  }

  if (*a1)
  {

    sub_1B0A27744();
  }

  *a1 = 0;

  *a3 = 1;
}

uint64_t sub_1B090F870(uint64_t a1)
{
  v7 = a1;
  v6 = v1;
  v4 = [v1 displayedAccounts];
  sub_1B08CE3C0();
  sub_1B0902ED4();
  v5 = sub_1B0E453F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2F58, &qword_1B0EA0780);
  sub_1B090FD64();
  v3 = sub_1B0E44F58();
  sub_1B039E440(&v5);
  MEMORY[0x1E69E5920](v4);
  return v3;
}

void sub_1B090F97C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = 0;
  v7 = *a1;
  v10 = v7;
  MEMORY[0x1E69E5928](v7);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v4 = v8;
  }

  else
  {
    MEMORY[0x1E69E5920](v7);
    v4 = 0;
  }

  v9 = v4;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3090, &qword_1B0EA08F0);
  sub_1B039A570(sub_1B090FA98, 0, v2, MEMORY[0x1E69E73E0], &type metadata for AccountConfiguration, v3, a2);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    sub_1B06D4E94(&v9);
  }
}

void *sub_1B090FA98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1B0A28230(v3, v5);
  return memcpy(a2, v5, 0x23uLL);
}

uint64_t sub_1B090FB00(id *a1, uint64_t a2, void *a3)
{
  v12.rawValue._countAndFlagsBits = a2;
  v12.rawValue._object = a3;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v13 = *a1;
  v22 = v13;
  v20 = a2;
  v21 = a3;
  MEMORY[0x1E69E5928](v13);
  v14 = [v13 identifier];
  if (v14)
  {
    v8 = sub_1B0E44AD8();
    v9 = v3;
    MEMORY[0x1E69E5920](v14);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  MEMORY[0x1E69E5920](v13);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = String.init(_:)(v12);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18[0] = v10;
  v18[1] = v11;
  v19 = v4;
  if (!v11)
  {
    if (!v19._object)
    {
      sub_1B03B1198(v18);
      v7 = 1;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  sub_1B070B280(v18, &v17);
  if (!v19._object)
  {
    sub_1B03B1198(&v17);
LABEL_11:
    sub_1B06FF6F0(v18);
    v7 = 0;
    goto LABEL_10;
  }

  v16 = v17;
  v15 = v19;
  v6 = MEMORY[0x1B2726DE0](v17, *(&v17 + 1), v19._countAndFlagsBits, v19._object);
  sub_1B03B1198(&v15);
  sub_1B03B1198(&v16);
  sub_1B03B1198(v18);
  v7 = v6;
LABEL_10:

  return v7 & 1;
}

unint64_t sub_1B090FD64()
{
  v2 = qword_1EB6DACF8;
  if (!qword_1EB6DACF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2F58, &qword_1B0EA0780);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DACF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B090FDEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    result = MEMORY[0x1E69E5920](v4);
    *a2 = 0;
  }

  return result;
}

BOOL sub_1B090FE84(uint64_t a1, unsigned int *a2)
{
  v8 = a1;
  v7 = a2;
  UID.init(rawValue:)();
  v5 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.insert(_:)(v6, &v5, v3);
}

uint64_t sub_1B090FF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3010, &qword_1B0EA0800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FC0, &qword_1B0EA07A8);
  sub_1B0911AF0();
  sub_1B0E44F58();

  sub_1B0E42E68();
  type metadata accessor for MFUIDSet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3018, &qword_1B0EA0808);
  sub_1B07BAD2C();
  sub_1B0911B78();
  return sub_1B0E445E8();
}

uint64_t sub_1B09100B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = a7;
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v23 = a4;
  v24 = a5;
  v30 = a6;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v22 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v18 - v22;
  v34 = sub_1B0E42E68();
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v25 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v26 = &v18 - v25;
  v43 = &v18 - v25;
  v40 = v8;
  v41 = v9;
  v42 = v10;
  v39 = v11;
  v37 = v12;
  v38 = v13;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = v36;
  v36[0] = v27;
  v36[1] = v28;
  v36[2] = v29;
  sub_1B091106C();
  sub_1B0E44778();
  sub_1B06E38F8(v31);
  if ((*(v32 + 48))(v35, 1, v34) == 1)
  {
    sub_1B06E3800(v35);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FC0, &qword_1B0EA07A8);
    return (*(*(v14 - 8) + 56))(v21, 1);
  }

  else
  {
    (*(v32 + 32))(v26, v35, v34);

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FC0, &qword_1B0EA07A8);
    v19 = *(v20 + 48);
    (*(v32 + 16))(v21, v26, v34);
    type metadata accessor for MFUIDSet();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = sub_1B09094B0(v23);
    v17 = v20;
    *(v21 + v19) = v16;
    (*(*(v17 - 8) + 56))();
    return (*(v32 + 8))(v26, v34);
  }
}

uint64_t sub_1B0910488(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v59 = a1;
  v65 = a2;
  v66 = a3;
  v55 = a4;
  v56 = a5;
  v57 = a6;
  v58 = a7;
  v67 = sub_1B070B550;
  v69 = sub_1B06BA324;
  v73 = sub_1B0911244;
  v77 = sub_1B039BCF8;
  v79 = sub_1B0398F5C;
  v81 = sub_1B0398F5C;
  v83 = sub_1B03993BC;
  v85 = sub_1B0398F5C;
  v87 = sub_1B0398F5C;
  v90 = sub_1B039BCEC;
  v107 = 0;
  v105 = 0;
  v106 = 0;
  v103 = 0;
  v104 = 0;
  v101 = 0;
  v102 = 0;
  v54 = 0;
  v64 = sub_1B0E439A8();
  v62 = *(v64 - 8);
  v63 = v64 - 8;
  v60 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v7 = v45 - v60;
  v61 = v45 - v60;
  v107 = v8;
  v105 = v9;
  v106 = v10;
  v103 = v11;
  v104 = v12;
  v101 = v13;
  v102 = v14;
  v15 = sub_1B0902FF8();
  (*(v62 + 16))(v7, v15, v64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v74 = 32;
  v75 = 7;
  v16 = swift_allocObject();
  v17 = v66;
  v68 = v16;
  *(v16 + 16) = v65;
  *(v16 + 24) = v17;

  v18 = swift_allocObject();
  v19 = v68;
  v76 = v18;
  *(v18 + 16) = v67;
  *(v18 + 24) = v19;

  v94 = sub_1B0E43988();
  v95 = sub_1B0E45908();
  v71 = 17;
  v80 = swift_allocObject();
  *(v80 + 16) = 112;
  v82 = swift_allocObject();
  v72 = 8;
  *(v82 + 16) = 8;
  v70 = swift_allocObject();
  *(v70 + 16) = 1752392040;
  v20 = swift_allocObject();
  v21 = v70;
  v84 = v20;
  *(v20 + 16) = v69;
  *(v20 + 24) = v21;
  v86 = swift_allocObject();
  *(v86 + 16) = 37;
  v88 = swift_allocObject();
  *(v88 + 16) = v72;
  v22 = swift_allocObject();
  v23 = v76;
  v78 = v22;
  *(v22 + 16) = v73;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v78;
  v91 = v24;
  *(v24 + 16) = v77;
  *(v24 + 24) = v25;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v89 = sub_1B0E46A48();
  v92 = v26;

  v27 = v80;
  v28 = v92;
  *v92 = v79;
  v28[1] = v27;

  v29 = v82;
  v30 = v92;
  v92[2] = v81;
  v30[3] = v29;

  v31 = v84;
  v32 = v92;
  v92[4] = v83;
  v32[5] = v31;

  v33 = v86;
  v34 = v92;
  v92[6] = v85;
  v34[7] = v33;

  v35 = v88;
  v36 = v92;
  v92[8] = v87;
  v36[9] = v35;

  v37 = v91;
  v38 = v92;
  v92[10] = v90;
  v38[11] = v37;
  sub_1B0394964();

  if (os_log_type_enabled(v94, v95))
  {
    v39 = v54;
    v47 = sub_1B0E45D78();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v48 = sub_1B03949A8(0, v46, v46);
    v49 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v50 = &v100;
    v100 = v47;
    v51 = &v99;
    v99 = v48;
    v52 = &v98;
    v98 = v49;
    sub_1B0394A48(3, &v100);
    sub_1B0394A48(2, v50);
    v96 = v79;
    v97 = v80;
    sub_1B03949FC(&v96, v50, v51, v52);
    v53 = v39;
    if (v39)
    {

      __break(1u);
    }

    else
    {
      v96 = v81;
      v97 = v82;
      sub_1B03949FC(&v96, &v100, &v99, &v98);
      v45[4] = 0;
      v96 = v83;
      v97 = v84;
      sub_1B03949FC(&v96, &v100, &v99, &v98);
      v45[3] = 0;
      v96 = v85;
      v97 = v86;
      sub_1B03949FC(&v96, &v100, &v99, &v98);
      v45[2] = 0;
      v96 = v87;
      v97 = v88;
      sub_1B03949FC(&v96, &v100, &v99, &v98);
      v45[1] = 0;
      v96 = v90;
      v97 = v91;
      sub_1B03949FC(&v96, &v100, &v99, &v98);
      _os_log_impl(&dword_1B0389000, v94, v95, "[%{sensitive,mask.hash}s] Received search reply.", v47, 0x16u);
      sub_1B03998A8(v48, 0, v46);
      sub_1B03998A8(v49, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v94);
  (*(v62 + 8))(v61, v64);

  v45[0] = sub_1B090FF00(v59, v57, v58);
  v55(v45[0], v40, v41, v42, v43);
}

id sub_1B0910EC8(uint64_t a1)
{
  v3 = sub_1B0E44AC8();
  v4 = [v2 initWithIdentifier_];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

uint64_t _s16LastStatsRequestVMa(uint64_t a1)
{
  v2 = qword_1EB6DA908;
  if (!qword_1EB6DA908)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1B0910FA8()
{
  v2 = qword_1EB6DA720;
  if (!qword_1EB6DA720)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA720);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B091106C()
{
  v2 = qword_1EB6DC388;
  if (!qword_1EB6DC388)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC388);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B09110E4(char *a1, char *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FE0, &qword_1B0EA07C8);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FC8, &qword_1B0EA07B0);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E42E68();
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = &a2[*(v9 + 48)];
    v4 = &a1[*(v9 + 48)];
    *v3 = *v4;
    *(v3 + 2) = *(v4 + 2);
    (*(v10 + 56))();
  }

  return a2;
}

char *sub_1B09112B4(char *a1, char *a2)
{
  StatsRequestVMa = _s16LastStatsRequestVMa(0);
  v10 = *(StatsRequestVMa - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E43108();
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = &a2[*(StatsRequestVMa + 20)];
    v4 = &a1[*(StatsRequestVMa + 20)];
    *v3 = *v4;
    *(v3 + 1) = *(v4 + 1);
    (*(v10 + 56))();
  }

  return a2;
}

uint64_t sub_1B0911408(uint64_t a1)
{
  StatsRequestVMa = _s16LastStatsRequestVMa(0);
  if (!(*(*(StatsRequestVMa - 8) + 48))(a1, 1))
  {
    v2 = sub_1B0E43108();
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1B09114AC(__int128 *a1)
{
  v9 = *(sub_1B0E43108() - 8);
  v2 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v3 = *(v1 + 16);
  v4 = v1 + ((v2 + *(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1B0908A08(a1, v3, v1 + v2, v5, v6);
}

__n128 sub_1B0911564(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 32))(a2, a1);
  StatsRequestVMa = _s16LastStatsRequestVMa(0);
  v4 = a1 + *(StatsRequestVMa + 20);
  v5 = a2 + *(StatsRequestVMa + 20);
  *v5 = *v4;
  result = *(v4 + 16);
  *(v5 + 16) = result;
  return result;
}

__n128 sub_1B09115FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 16))(a2, a1);
  StatsRequestVMa = _s16LastStatsRequestVMa(0);
  v4 = a1 + *(StatsRequestVMa + 20);
  v5 = a2 + *(StatsRequestVMa + 20);
  *v5 = *v4;
  result = *(v4 + 16);
  *(v5 + 16) = result;
  return result;
}

uint64_t sub_1B0911694@<X0>(uint64_t a1@<X8>)
{
  StatsRequestVMa = _s16LastStatsRequestVMa(0);
  v3 = v1 + ((*(*(StatsRequestVMa - 8) + 80) + 16) & ~*(*(StatsRequestVMa - 8) + 80));

  return sub_1B09089A8(v3, a1);
}

unint64_t sub_1B0911708()
{
  v2 = qword_1EB6DECF0;
  if (!qword_1EB6DECF0)
  {
    sub_1B0E43108();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DECF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0911788(uint64_t a1)
{
  v1 = sub_1B0E43108();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_1B0911800()
{
  v2 = qword_1EB6E3008;
  if (!qword_1EB6E3008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3000, &unk_1B0EA07F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3008);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0911888()
{
  sub_1B0E42E68();

  return sub_1B090B084();
}

uint64_t sub_1B09118EC(uint64_t a1)
{
  v13 = *(sub_1B0E42E68() - 8);
  v2 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v3 = (v2 + *(v13 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v1 + v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = (v1 + v4);
  v9 = *v8;
  v10 = v8[1];

  return sub_1B090B210(a1, v1 + v2, v6, v7, v9, v10);
}

uint64_t block_copy_helper_156(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B0911AF0()
{
  v2 = qword_1EB6DB758;
  if (!qword_1EB6DB758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3010, &qword_1B0EA0800);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0911B78()
{
  v2 = qword_1EB6DB670;
  if (!qword_1EB6DB670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3018, &qword_1B0EA0808);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB670);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for MFServerMessagesIndexQuery()
{
  v2 = qword_1EB6E3020;
  if (!qword_1EB6E3020)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3020);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0911CB4(uint64_t a1)
{
  v3 = sub_1B0E43108();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t type metadata accessor for MFServerMessagesIndexer()
{
  v2 = qword_1EB6E3088;
  if (!qword_1EB6E3088)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3088);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_1B0911DE0(uint64_t a1)
{
  if (a1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

unint64_t sub_1B0911E20()
{
  v2 = qword_1EB6E30A8;
  if (!qword_1EB6E30A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E30A0, &qword_1B0EA0900);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E30A8);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B0911EEC(char *a1, char *a2)
{
  StatsRequestVMa = _s16LastStatsRequestVMa(0);
  v14 = *(StatsRequestVMa - 8);
  v15 = *(v14 + 48);
  if ((v15)(a2, 1))
  {
    if (v15(a1, 1, StatsRequestVMa))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790);
      memcpy(a2, a1, *(*(v9 - 8) + 64));
    }

    else
    {
      v6 = sub_1B0E43108();
      (*(*(v6 - 8) + 32))(a2, a1);
      v7 = &a2[*(StatsRequestVMa + 20)];
      v8 = &a1[*(StatsRequestVMa + 20)];
      *v7 = *v8;
      *(v7 + 1) = *(v8 + 1);
      (*(v14 + 56))();
    }
  }

  else if (v15(a1, 1, StatsRequestVMa))
  {
    sub_1B0911788(a2);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E43108();
    (*(*(v2 - 8) + 40))(a2, a1);
    v3 = &a2[*(StatsRequestVMa + 20)];
    v4 = &a1[*(StatsRequestVMa + 20)];
    *v3 = *v4;
    *(v3 + 1) = *(v4 + 1);
    *(v3 + 2) = *(v4 + 2);
    *(v3 + 3) = *(v4 + 3);
  }

  return a2;
}

unint64_t sub_1B09121A8()
{
  v2 = qword_1EB6E30B0;
  if (!qword_1EB6E30B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3000, &unk_1B0EA07F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E30B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0912230()
{
  v2 = qword_1EB6DB870;
  if (!qword_1EB6DB870)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB870);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B09122DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v11 = a1;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v9 - v12;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v13 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v9 - v13;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v17 = *(v22 + 64);
  v14 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v15 = &v9 - v14;
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v9 - v14);
  v18 = &v9 - v16;
  v28 = &v9 - v16;
  v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v20 = &v9 - v19;
  v27 = &v9 - v19;
  v26 = a1;
  sub_1B091290C();
  v6 = sub_1B041C1E8();
  MessageIdentifierSetNonEmpty.init(set:)(v21, &type metadata for UID, v6, v7, v24);
  if ((*(v22 + 48))(v24, 1, v25) == 1)
  {
    sub_1B0754028(v24);
    MEMORY[0x1E69E5920](v11);
    return (*(v22 + 56))(v10, 1, 1, v25);
  }

  else
  {
    sub_1B074BA2C(v24, v18);
    sub_1B03D08AC(v18, v15);
    sub_1B074BA2C(v15, v20);
    sub_1B03D09B8(v18);
    sub_1B03D08AC(v20, v10);
    (*(v22 + 56))(v10, 0, 1, v25);
    MEMORY[0x1E69E5920](v11);
    return sub_1B03D09B8(v20);
  }
}

uint64_t sub_1B091260C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v15 = a2;
  v18 = a3;
  v21 = sub_1B09135F4;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v32 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v13 = v10 - v12;
  v30 = v4;
  v31 = v5;
  v29 = v3;
  sub_1B091290C();
  v16 = &v24;
  v25 = v18;
  v26 = v14;
  v27 = v15;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  v6 = sub_1B074B4A4();
  v7 = v20;
  v8 = sub_1B039CA88(v21, v16, v17, v18, v19, v6, MEMORY[0x1E69E7288], &v28);
  v22 = v7;
  v23 = v8;
  if (v7)
  {
    v10[1] = v28;
    sub_1B03D09B8(v13);
    return v10[2];
  }

  else
  {
    v11 = v23;
    sub_1B03D09B8(v13);
    return v11;
  }
}

id sub_1B09127A4(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3[1]);
  v5 = v3 - v4;
  v10 = v1;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  _s7WrapperCMa(0);
  sub_1B03D08AC(v8, v5);
  v7 = sub_1B0913364(v5);
  v9 = [v6 initWithWrapper_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](v9);
  v11 = v9;
  sub_1B03D09B8(v8);
  MEMORY[0x1E69E5920](v11);
  return v9;
}

uint64_t sub_1B091290C()
{
  v4 = 0;
  sub_1B039AEC8(v1 + OBJC_IVAR___MFUIDSet__underlying, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return swift_dynamicCast();
}

uint64_t sub_1B0912A1C()
{
  v6 = 0;
  v10 = sub_1B090AD28;
  v12 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v5 = &v3 - v4;
  v12 = v0;
  sub_1B091290C();
  v8 = sub_1B039A494();
  v1 = sub_1B074B4A4();
  v11 = sub_1B039CA88(v10, v6, v7, v8, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v9);
  v3 = v11;
  sub_1B03D09B8(v5);
  return v3;
}

uint64_t sub_1B0912BA0()
{
  v7 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v5 = &v2 - v3;
  v7 = v0;
  sub_1B091290C();
  v6 = MessageIdentifierSet.count.getter();
  sub_1B03D09B8(v5);
  return v6;
}

id sub_1B0912C58()
{
  v5 = 0;
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  __swift_allocate_boxed_opaque_existential_0(v4);
  sub_1B041C1E8();
  MessageIdentifierSet.init()();
  *&v0 = sub_1B0392800(v4, OBJC_IVAR___MFUIDSet__underlying).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = MFUIDSet;
  v2 = objc_msgSendSuper2(&v3, sel_init, v0);
  MEMORY[0x1E69E5928](v2);
  v5 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id sub_1B0912D5C(uint64_t a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWrapper_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

id sub_1B0912DB4(uint64_t a1)
{
  v9 = 0;
  v8[4] = a1;
  v4 = a1 + OBJC_IVAR___MFUIDSetUIDSetWrapper_set;
  swift_beginAccess();
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  sub_1B03D08AC(v4, boxed_opaque_existential_0);
  swift_endAccess();
  *&v2 = sub_1B0392800(v8, OBJC_IVAR___MFUIDSet__underlying).n128_u64[0];
  v7.receiver = v9;
  v7.super_class = MFUIDSet;
  v6 = objc_msgSendSuper2(&v7, sel_init, v2);
  MEMORY[0x1E69E5928](v6);
  v9 = v6;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v6;
}

id sub_1B0912F14(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B039A494();
  v3 = sub_1B0E451A8();
  v4 = [v2 initWithUIDs_];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

id sub_1B0912F94(uint64_t a1)
{
  v13 = 0;
  v12[4] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E30C8, qword_1B0EA0908);
  v1 = sub_1B09136A8();
  v10 = sub_1B039CA88(sub_1B0913158, 0, v7, &type metadata for UID, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v8);
  v12[3] = v6;
  __swift_allocate_boxed_opaque_existential_0(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2610, &unk_1B0E9C610);
  sub_1B074B97C();
  sub_1B07F193C();
  sub_1B0E46098();
  *&v2 = sub_1B0392800(v12, OBJC_IVAR___MFUIDSet__underlying).n128_u64[0];
  v9.receiver = v13;
  v9.super_class = MFUIDSet;
  v4 = objc_msgSendSuper2(&v9, sel_init, v2);
  MEMORY[0x1E69E5928](v4);
  v13 = v4;

  MEMORY[0x1E69E5920](v13);
  return v4;
}

void sub_1B0913158(id *a1@<X0>, _DWORD *a2@<X8>)
{
  [*a1 unsignedIntValue];
  UID.init(rawValue:)();
  *a2 = v2;
}

uint64_t sub_1B091321C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___MFUIDSetUIDSetWrapper_set;
  swift_beginAccess();
  sub_1B03D08AC(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1B0913280(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1B03D08AC(v2, &v4 - v4);
  v6 = v1 + OBJC_IVAR___MFUIDSetUIDSetWrapper_set;
  v7 = &v9;
  swift_beginAccess();
  sub_1B074F0FC(v5, v6);
  swift_endAccess();
  return sub_1B03D09B8(v8);
}

id sub_1B09133A0(uint64_t a1)
{
  v8 = a1;
  ObjectType = swift_getObjectType();
  v12 = 0;
  v11 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v6 = &v4 - v4;
  v11 = v2;
  v12 = v1;
  v5 = v1;
  sub_1B03D08AC(v2, &v4 - v4);
  sub_1B074BA2C(v6, v5 + OBJC_IVAR___MFUIDSetUIDSetWrapper_set);
  v10.receiver = v12;
  v10.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v10, sel_init);
  MEMORY[0x1E69E5928](v9);
  v12 = v9;
  sub_1B03D09B8(v8);
  MEMORY[0x1E69E5920](v12);
  return v9;
}

uint64_t sub_1B0913580(unsigned int *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  result = a2(*a1);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t _s7WrapperCMa(uint64_t a1)
{
  v2 = qword_1EB6E30D8;
  if (!qword_1EB6E30D8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1B09136A8()
{
  v2 = qword_1EB6E30D0;
  if (!qword_1EB6E30D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E30C8, qword_1B0EA0908);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E30D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for MFUIDSet()
{
  v2 = qword_1EB6DA5B8;
  if (!qword_1EB6DA5B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA5B8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B09137B0(uint64_t a1)
{
  updated = sub_1B0913884(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1B0913884(uint64_t a1)
{
  v5 = qword_1EB6DA2D0;
  if (!qword_1EB6DA2D0)
  {
    sub_1B03D06F8();
    v4 = sub_1B0E46EF8();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DA2D0);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1B0913920(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v14 = sub_1B0914330;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v25 = 0;
  v15 = sub_1B0E44238();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v19 = &v6 - v18;
  v20 = sub_1B0E44288();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v6 - v23;
  v26 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v6 - v26;
  v30 = sub_1B0E42E68();
  v32 = *(v30 - 8);
  v31 = v30 - 8;
  v33 = v32;
  v35 = *(v32 + 64);
  v34 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v36 = &v6 - v34;
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v6 - v37;
  v48 = &v6 - v37;
  v47 = v3;
  v46 = v4;
  result = sub_1B0913E74(v4);
  if (result)
  {
    sub_1B0913F1C(v28, v27);
    if ((*(v32 + 48))(v27, 1, v30) == 1)
    {
      return sub_1B06E3800(v27);
    }

    else
    {
      v7 = v33;
      v10 = *(v32 + 32);
      v9 = v32 + 32;
      v10(v38, v27, v30);
      v13 = *sub_1B09142A4();
      MEMORY[0x1E69E5928](v13);
      (*(v32 + 16))(v36, v38, v30);
      v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v11 = swift_allocObject();
      v10((v11 + v8), v36, v30);
      v44 = v14;
      v45 = v11;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v41 = 0;
      v42 = sub_1B038C908;
      v43 = &block_descriptor_14;
      v12 = _Block_copy(&aBlock);
      sub_1B039B81C();
      sub_1B039B77C();
      MEMORY[0x1B2727B00](0, v24, v19, v12);
      (*(v16 + 8))(v19, v15);
      (*(v21 + 8))(v24, v20);
      _Block_release(v12);

      MEMORY[0x1E69E5920](v13);
      return (*(v32 + 8))(v38, v30);
    }
  }

  return result;
}

uint64_t sub_1B0913E74(uint64_t a1)
{
  if (*sub_1B0915F8C())
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_1B0915FEC(a1);
    MEMORY[0x1E69E5920](v2);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1B0913F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v16 = a1;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v14 = 0;
  v24 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E30F8, &qword_1B0EA0960);
  v15 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v22 = (&v9 - v15);
  v17 = sub_1B0E42E68();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v9 - v20;
  v27 = &v9 - v20;
  v26 = v3;
  sub_1B0915530(v4);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3100, qword_1B0EA0968);
  if ((*(*(v23 - 8) + 48))(v22, 1) == 1)
  {
    sub_1B0916EF0(v22);
    return (*(v18 + 56))(v13, 1, 1, v17);
  }

  else
  {
    v5 = v14;
    v10 = *v22;
    v6 = v22 + *(v23 + 48);
    v25 = v10;
    (*(v18 + 32))(v21, v6, v17);
    v11 = sub_1B0E443C8();
    sub_1B0916FB8();
    sub_1B0915888(v16, v10, v11);
    v12 = v5;
    if (v5)
    {
      v9 = v12;
      v8 = v12;
      v24 = v9;
      (*(v18 + 56))(v13, 1, 1, v17);
    }

    else
    {
      (*(v18 + 16))(v13, v21, v17);
      (*(v18 + 56))(v13, 0, 1, v17);
    }

    sub_1B091582C();
    return (*(v18 + 8))(v21, v17);
  }
}

uint64_t *sub_1B09142A4()
{
  if (qword_1EB6E0B68 != -1)
  {
    swift_once();
  }

  return &qword_1EB6E30E8;
}

uint64_t sub_1B0914330()
{
  v1 = *(sub_1B0E42E68() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0914304(v2);
}

uint64_t sub_1B0914394(uint64_t a1)
{
  v18 = a1;
  v15 = sub_1B091709C;
  v29 = sub_1B0917114;
  v41 = 0;
  v40 = 0;
  v5 = 0;
  v26 = sub_1B0E42E68();
  v9 = *(v26 - 8);
  v10 = v26 - 8;
  v8 = v9;
  v22 = v9[8];
  v6 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v25 = &v5 - v6;
  v41 = v1;
  sub_1B0917038();
  v7 = 1;
  v17 = sub_1B0E44838();
  v12 = v2;
  v13 = sub_1B0E44838();
  v14 = v3;
  v20 = v9[2];
  v19 = v9 + 2;
  v20(v25, v18, v26);
  v21 = *(v8 + 20);
  v11 = (v21 + 16) & ~v21;
  v23 = 7;
  v16 = swift_allocObject();
  v28 = v9[4];
  v27 = v9 + 4;
  v28(v16 + v11, v25, v26);
  v32 = sub_1B0914BC4(v17, v12, v13, v14, v15, v16);
  v40 = v32;
  v20(v25, v18, v26);
  v24 = (v21 + 16) & ~v21;
  v30 = swift_allocObject();
  v28(v30 + v24, v25, v26);
  v38 = v29;
  v39 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_1B038C908;
  v37 = &block_descriptor_9_1;
  v31 = _Block_copy(&aBlock);

  [v32 promptToFileWithCompletionHandler_];
  _Block_release(v31);
  return MEMORY[0x1E69E5920](v32);
}

uint64_t sub_1B0914724()
{
  v13 = 0;
  v2 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v2 - v2;
  v3 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v10 = &v2 - v3;
  v7 = sub_1B0E459C8();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v12 = &v2 - v4;
  sub_1B06CCC58();
  v8 = sub_1B0E44838();
  v9 = v0;
  (*(v5 + 104))(v12, *MEMORY[0x1E69E8098], v7);
  sub_1B039B81C();
  sub_1B06BFBDC();
  result = sub_1B0E45A08();
  qword_1EB6E30E8 = result;
  return result;
}

id sub_1B0914904(void *a1, uint64_t a2)
{
  v24 = a1;
  v26 = 0;
  v25 = 0;
  v14 = 0;
  v20 = sub_1B0E42E68();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v8[0] = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v21 = v8 - v8[0];
  v26 = v3;
  v25 = a2;
  v10 = 1;
  sub_1B0E44838();
  v8[1] = v4;
  v9 = sub_1B0E44AC8();

  [v24 setTitle_];
  MEMORY[0x1E69E5920](v9);
  [v24 setPrependSystemVersionToTitle_];
  sub_1B0E44838();
  v11 = v5;
  v12 = sub_1B0E44AC8();

  [v24 setRadarDescription_];
  MEMORY[0x1E69E5920](v12);
  [v24 setAppendStandardDisclaimerToDescription_];
  [v24 setComponent_];
  v13 = 5;
  [v24 setClassification_];
  [v24 setReproducibility_];
  v15 = MEMORY[0x1E69E6158];
  v16 = sub_1B0E46A48();
  v17 = sub_1B0E451A8();

  [v24 setExtensionIdentifiers_];
  MEMORY[0x1E69E5920](v17);
  sub_1B0E42CE8();
  sub_1B0E42E18();
  v22 = v6;
  v23 = sub_1B0E44AC8();
  (*(v18 + 8))(v21, v20);

  [v24 setAttachmentPath_];
  MEMORY[0x1E69E5920](v23);
  return [v24 setAutoDiagnostics_];
}

id sub_1B0914BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1B0E44AC8();
  v10 = sub_1B0E44AC8();
  v18 = a5;
  v19 = a6;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = 0;
  v16 = sub_1B090E4EC;
  v17 = &block_descriptor_53;
  v9 = _Block_copy(&aBlock);
  v12 = [swift_getObjCClassFromMetadata() interactionWithTitle:v11 message:v10 builder:v9];
  _Block_release(v9);

  MEMORY[0x1E69E5920](v10);

  MEMORY[0x1E69E5920](v11);

  return v12;
}

uint64_t sub_1B0914D1C(uint64_t a1)
{
  v21 = a1;
  v29 = sub_1B0917178;
  v52 = 0;
  v10 = 0;
  v34 = sub_1B0E44238();
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v7 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v33 = &v6 - v7;
  v38 = sub_1B0E44288();
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v8 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v6 - v8;
  v28 = sub_1B0E42E68();
  v24 = *(v28 - 8);
  v25 = v28 - 8;
  v22 = v24;
  v23 = *(v24 + 64);
  v9 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v27 = &v6 - v9;
  v17 = sub_1B0E44208();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v11 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v16 = (&v6 - v11);
  v41 = sub_1B0E44418();
  v18 = *(v41 - 8);
  v19 = v41 - 8;
  v12 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v20 = &v6 - v12;
  v13 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v6 - v13;
  v52 = v3;
  v44 = *sub_1B09142A4();
  MEMORY[0x1E69E5928](v44);
  sub_1B0E44408();
  v4 = v14;
  *v16 = 20;
  (*(v4 + 104))();
  MEMORY[0x1B2726590](v20, v16);
  (*(v14 + 8))(v16, v17);
  v43 = *(v18 + 8);
  v42 = v18 + 8;
  v43(v20, v41);
  (*(v24 + 16))(v27, v21, v28);
  v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v30 = swift_allocObject();
  (*(v24 + 32))(v30 + v26, v27, v28);
  v50 = v29;
  v51 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = 0;
  v48 = sub_1B038C908;
  v49 = &block_descriptor_15;
  v39 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727AB0](v40, v37, v33, v39);
  (*(v31 + 8))(v33, v34);
  (*(v35 + 8))(v37, v38);
  _Block_release(v39);

  v43(v40, v41);
  return MEMORY[0x1E69E5920](v44);
}

void sub_1B0915310(uint64_t a1)
{
  v8 = a1;
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v11 = sub_1B0E42E68();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v1 = &v4 - v7;
  v12 = &v4 - v7;
  v18 = v2;
  v19 = 0;
  v15 = [objc_opt_self() defaultManager];
  (*(v9 + 16))(v1, v8, v11);
  v14 = sub_1B0E42D58();
  (*(v9 + 8))(v12, v11);
  v17 = v19;
  v16 = [v15 removeItemAtURL:v14 error:&v17];
  v13 = v17;
  MEMORY[0x1E69E5928](v17);
  v3 = v19;
  v19 = v13;
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v15);
  if ((v16 & 1) == 0)
  {
    v5 = v19;
    v6 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v5);
    swift_willThrow();
  }
}

uint64_t sub_1B0915530@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v25 = 0;
  v26 = sub_1B0915950;
  v6[1] = 0;
  v15 = sub_1B0E42CF8();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v7 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v14 = v6 - v7;
  v19 = sub_1B0E42E68();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v8 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v20 = v6 - v8;
  v9 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v11 = v6 - v9;
  v10 = [objc_opt_self() defaultManager];
  v23 = [v10 temporaryDirectory];
  sub_1B0E42DE8();
  MEMORY[0x1E69E5920](v10);
  v3 = sub_1B0E44838();
  v16 = v27;
  v27[0] = v3;
  v27[1] = v4;
  (*(v12 + 104))(v14, *MEMORY[0x1E6968F68], v15);
  sub_1B07C7F5C();
  sub_1B0E42E58();
  (*(v12 + 8))(v14, v15);
  sub_1B03B1198(v16);
  v21 = *(v17 + 8);
  v22 = v17 + 8;
  v21(v20, v19);
  MEMORY[0x1E69E5920](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E30F8, &qword_1B0EA0960);
  sub_1B0E42DC8();
  return (v21)(v11, v19);
}

uint64_t sub_1B0915888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B0E43B48();
  if ((v3 & 1) == 0)
  {
    return v7;
  }

  if (sub_1B0A61510(18, 0, 0))
  {
    sub_1B09179C4();
    swift_willThrowTypedImpl();
  }

  sub_1B09179C4();
  swift_allocError();
  result = v6;
  *v4 = v7;
  return result;
}

void *sub_1B0915950@<X0>(const char *a1@<X0>, _DWORD *a2@<X8>)
{
  v53 = a1;
  v50 = a2;
  v51 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v59 = 0;
  sub_1B0E44B68();
  MEMORY[0x1EEE9AC00](0);
  v52 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1B0E42E68();
  v55 = *(v54 - 8);
  v56 = v55;
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v57;
  v67 = v4;
  if (!v4)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3100, qword_1B0EA0968);
    result = (*(*(v5 - 8) + 56))(v50, 1);
    v47 = v49;
    return result;
  }

  v48 = v53;
  v45 = v53;
  v66 = v53;
  result = strlen(v53);
  v7 = __OFADD__(result, 1);
  v46 = result + 1;
  if (v7)
  {
    goto LABEL_17;
  }

  v42 = v49;
  v65 = v46;
  v39 = sub_1B0E44A48();
  v38 = v8;
  v63 = v39;
  v64 = v8;
  v61 = 0;
  v62 = sub_1B0E45348();
  v40 = &v26;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v22;
  v24 = v9;
  v25 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  v12 = v42;
  v43 = v11;
  sub_1B0E45268();
  v44 = v12;
  if (v12)
  {
    result = v40;
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v37 = v60;
  v59 = v60;
  if (v60 < 1)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3100, qword_1B0EA0968);
    (*(*(v21 - 8) + 56))(v50, 1);
    sub_1B039E440(&v62);
    result = v44;
    v47 = v44;
  }

  else
  {
    v32 = v62;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v58 = v32;
    sub_1B0E44B48();
    sub_1B07B517C();
    v33 = &v58;
    v13 = sub_1B0E44B08();
    v36 = v14;
    v34 = v13;
    v35 = v14;
    sub_1B039E440(v33);
    if (v36)
    {
      v30 = v34;
      v31 = v35;
    }

    else
    {
      LODWORD(v24) = 0;
      v23 = 87;
      LOBYTE(v22) = 2;
      sub_1B0E465A8();
      __break(1u);
    }

    v26 = v31;
    v28 = 0;
    sub_1B0E42D48();

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3100, qword_1B0EA0968);
    v27 = v50 + *(v29 + 48);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v15 = v56;
    v16 = v57;
    v17 = v54;
    v19 = v18;
    v20 = v27;
    *v50 = v19;
    (*(v15 + 16))(v20, v16, v17);
    (*(*(v29 - 8) + 56))(v50, v28, 1);
    (*(v56 + 8))(v57, v54);
    sub_1B039E440(&v62);
    result = v44;
    v47 = v44;
  }

  return result;
}

uint64_t sub_1B0915EC4@<X0>(_DWORD *a3@<X8>)
{
  MEMORY[0x1B2727230]();
  sub_1B0E45E48();
  v5 = sub_1B0E45E58();
  if (v5)
  {
    result = mkstemps(v5, 4);
  }

  else
  {
    result = mkstemps(0, 4);
  }

  *a3 = result;
  return result;
}

char *sub_1B0915F8C()
{
  if (qword_1EB6E0B70 != -1)
  {
    swift_once();
  }

  return &byte_1EB6E30F0;
}

uint64_t sub_1B0915FEC(uint64_t a1)
{
  v99 = a1;
  v85 = sub_1B091792C;
  v86 = sub_1B03B0DF8;
  v87 = sub_1B0398F5C;
  v88 = sub_1B0398F5C;
  v89 = sub_1B0399260;
  v90 = sub_1B091792C;
  v91 = sub_1B03B0DF8;
  v92 = sub_1B0398F5C;
  v93 = sub_1B0398F5C;
  v94 = sub_1B0399260;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0.0;
  v95 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v96 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v97 = &v33 - v96;
  v98 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v33 - v96);
  v106 = &v33 - v98;
  v107 = sub_1B0E43108();
  v104 = *(v107 - 8);
  v105 = v107 - 8;
  v100 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v33 - v100;
  v122 = &v33 - v100;
  v102 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v103 = &v33 - v102;
  v121 = &v33 - v102;
  v120 = v6;
  v119 = v1;
  sub_1B0E430F8();
  sub_1B0917298(v106);
  if ((*(v104 + 48))(v106, 1, v107) == 1)
  {
    sub_1B06B97A8(v106);
LABEL_16:
    (*(v104 + 16))(v97, v103, v107);
    (*(v104 + 56))(v97, 0, 1, v107);
    sub_1B0917488(v97);
    (*(v104 + 8))(v103, v107);
    v35 = 1;
    return v35 & 1;
  }

  (*(v104 + 32))(v101, v106, v107);
  sub_1B0E43048();
  v84 = v7;
  v118 = v7;
  if (v7 > 172800.0)
  {
    v73 = 7;
    v74 = swift_allocObject();
    *(v74 + 16) = v84;
    v82 = sub_1B0E43988();
    v83 = sub_1B0E45908();
    v71 = 17;
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = 8;
    v72 = 32;
    v8 = swift_allocObject();
    v9 = v74;
    v75 = v8;
    *(v8 + 16) = v90;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v75;
    v79 = v10;
    *(v10 + 16) = v91;
    *(v10 + 24) = v11;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v78 = sub_1B0E46A48();
    v80 = v12;

    v13 = v76;
    v14 = v80;
    *v80 = v92;
    v14[1] = v13;

    v15 = v77;
    v16 = v80;
    v80[2] = v93;
    v16[3] = v15;

    v17 = v79;
    v18 = v80;
    v80[4] = v94;
    v18[5] = v17;
    sub_1B0394964();

    if (os_log_type_enabled(v82, v83))
    {
      v19 = v95;
      v64 = sub_1B0E45D78();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v63 = 0;
      v65 = sub_1B03949A8(0, v62, v62);
      v66 = sub_1B03949A8(v63, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v67 = &v112;
      v112 = v64;
      v68 = &v111;
      v111 = v65;
      v69 = &v110;
      v110 = v66;
      sub_1B0394A48(0, &v112);
      sub_1B0394A48(1, v67);
      v108 = v92;
      v109 = v76;
      sub_1B03949FC(&v108, v67, v68, v69);
      v70 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v108 = v93;
        v109 = v77;
        sub_1B03949FC(&v108, &v112, &v111, &v110);
        v61 = 0;
        v108 = v94;
        v109 = v79;
        sub_1B03949FC(&v108, &v112, &v111, &v110);
        _os_log_impl(&dword_1B0389000, v82, v83, "Will prompt for tap-to-radar for MIME parsing failure (last prompt was %ld hours ago.", v64, 0xCu);
        v60 = 0;
        sub_1B03998A8(v65, 0, v62);
        sub_1B03998A8(v66, v60, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v82);
    (*(v104 + 8))(v101, v107);
    goto LABEL_16;
  }

  v49 = 7;
  v50 = swift_allocObject();
  *(v50 + 16) = v84;
  v58 = sub_1B0E43988();
  v59 = sub_1B0E45908();
  v47 = 17;
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v48 = 32;
  v20 = swift_allocObject();
  v21 = v50;
  v51 = v20;
  *(v20 + 16) = v85;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v51;
  v55 = v22;
  *(v22 + 16) = v86;
  *(v22 + 24) = v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v54 = sub_1B0E46A48();
  v56 = v24;

  v25 = v52;
  v26 = v56;
  *v56 = v87;
  v26[1] = v25;

  v27 = v53;
  v28 = v56;
  v56[2] = v88;
  v28[3] = v27;

  v29 = v55;
  v30 = v56;
  v56[4] = v89;
  v30[5] = v29;
  sub_1B0394964();

  if (os_log_type_enabled(v58, v59))
  {
    v31 = v95;
    v40 = sub_1B0E45D78();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v39 = 0;
    v41 = sub_1B03949A8(0, v38, v38);
    v42 = sub_1B03949A8(v39, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v43 = &v117;
    v117 = v40;
    v44 = &v116;
    v116 = v41;
    v45 = &v115;
    v115 = v42;
    sub_1B0394A48(0, &v117);
    sub_1B0394A48(1, v43);
    v113 = v87;
    v114 = v52;
    sub_1B03949FC(&v113, v43, v44, v45);
    v46 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v113 = v88;
      v114 = v53;
      sub_1B03949FC(&v113, &v117, &v116, &v115);
      v37 = 0;
      v113 = v89;
      v114 = v55;
      sub_1B03949FC(&v113, &v117, &v116, &v115);
      _os_log_impl(&dword_1B0389000, v58, v59, "Not prompting for tap-to-radar for MIME parsing failure (last prompt was %ld hours ago.", v40, 0xCu);
      v36 = 0;
      sub_1B03998A8(v41, 0, v38);
      sub_1B03998A8(v42, v36, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v58);
  v34 = *(v104 + 8);
  v33 = v104 + 8;
  v34(v101, v107);
  v34(v103, v107);
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1B0916EF0(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3100, qword_1B0EA0968);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v3 = a1 + *(v5 + 48);
    v1 = sub_1B0E42E68();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

unint64_t sub_1B0916FB8()
{
  v2 = qword_1EB6DB988;
  if (!qword_1EB6DB988)
  {
    sub_1B0E443C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB988);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0917038()
{
  v2 = qword_1EB6E3108;
  if (!qword_1EB6E3108)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3108);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1B091709C(void *a1)
{
  v2 = sub_1B0E42E68();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0914904(a1, v3);
}

uint64_t sub_1B0917114()
{
  v1 = *(sub_1B0E42E68() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0914CF0(v2);
}

void sub_1B0917178()
{
  v1 = *(sub_1B0E42E68() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1B0915310(v2);
}

uint64_t sub_1B09171DC()
{
  result = sub_1B0917200();
  byte_1EB6E30F0 = result & 1;
  return result;
}

uint64_t sub_1B0917200()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 isInternal];
  MEMORY[0x1E69E5920](v1);
  return v2;
}

uint64_t sub_1B0917298@<X0>(uint64_t a1@<X8>)
{
  v12 = 0;
  sub_1B0917268();
  v6 = sub_1B0E44AC8();

  v7 = [v5 objectForKey_];
  MEMORY[0x1E69E5920](v6);
  if (v7)
  {
    sub_1B0E45FE8();
    sub_1B0392800(v8, &v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0uLL;
    v10 = 0uLL;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v3 = sub_1B0E43108();
    if (swift_dynamicCast())
    {
      return (*(*(v3 - 8) + 56))(a1, 0, 1);
    }

    else
    {
      return (*(*(v3 - 8) + 56))(a1, 1);
    }
  }

  else
  {
    sub_1B041C0EC(v11);
    v2 = sub_1B0E43108();
    return (*(*(v2 - 8) + 56))(a1, 1);
  }
}

uint64_t sub_1B0917488(uint64_t a1)
{
  v20 = a1;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v19 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v28 = v11 - v19;
  v27 = sub_1B0E43108();
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v21 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v11 - v21;
  v23 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v24 = v11 - v23;
  v31 = v11 - v23;
  v30 = v5;
  v29 = v1;
  sub_1B06BC2F4(v5, v6);
  if ((*(v25 + 48))(v28, 1, v27) == 1)
  {
    sub_1B06B97A8(v28);
    sub_1B0917268();
    v11[1] = v9;
    v12 = sub_1B0E44AC8();

    [v18 removeObjectForKey_];
    MEMORY[0x1E69E5920](v12);
  }

  else
  {
    v7 = v22;
    (*(v25 + 32))(v24, v28, v27);
    (*(v25 + 16))(v7, v24, v27);
    v15 = sub_1B0E43068();
    v17 = *(v25 + 8);
    v16 = v25 + 8;
    v17(v22, v27);
    sub_1B0917268();
    v13 = v8;
    v14 = sub_1B0E44AC8();

    [v18 setObject:v15 forKey:v14];
    MEMORY[0x1E69E5920](v14);
    swift_unknownObjectRelease();
    v17(v24, v27);
  }

  return sub_1B06B97A8(v20);
}

uint64_t sub_1B0917784(double a1)
{
  v2 = a1 / 60.0 / 60.0;
  if (((*&v2 >> 52) & 0x7FFLL) == 0x7FF)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v2 <= -9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v2 >= 9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B09179C4()
{
  v2 = qword_1EB6E3110;
  if (!qword_1EB6E3110)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3110);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0917A3C()
{
  v14 = [v0 sourceRemoteID];
  if (v14)
  {
    v12 = sub_1B0E44AD8();
    v13 = v1;
    MEMORY[0x1E69E5920](v14);
    v2 = sub_1B08252D8(v12, v13);
  }

  else
  {
    v2 = sub_1B08252D8(0, 0);
  }

  v16 = v2;
  v17 = BYTE4(v2) & 1;
  MEMORY[0x1E69E5928](v0);
  if (v17)
  {
    v11 = [v0 sourceMessage];
    if (v11)
    {
      swift_getObjectType();
      v10 = [v11 remoteID];
      if (v10)
      {
        v6 = sub_1B0E44AD8();
        v7 = v4;
        MEMORY[0x1E69E5920](v10);
        v8 = v6;
        v9 = v7;
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      swift_unknownObjectRelease();
      v3 = sub_1B08252D8(v8, v9);
    }

    else
    {
      v3 = sub_1B08252D8(0, 0);
    }

    v18 = v3;
    v19 = BYTE4(v3) & 1;
  }

  else
  {
    v18 = v16;
    v19 = 0;
  }

  MEMORY[0x1E69E5920](v0);
  LODWORD(v15) = v18;
  BYTE4(v15) = v19 & 1;
  return v15;
}

uint64_t sub_1B0917CB8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v15 = swift_allocBox();
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v5 = sub_1B0E46A48();
  v2 = sub_1B041C1E8();
  MessageIdentifierSet.init(arrayLiteral:)(v5, &type metadata for UID, v2, v3);
  v7 = [v10 itemsToDownload];
  sub_1B071C094();
  v6 = sub_1B0E451B8();
  sub_1B0928BB4(v6, v15);

  MEMORY[0x1E69E5920](v7);
  v9 = [v10 itemsToCopy];
  v8 = sub_1B0E451B8();
  sub_1B0928BB4(v8, v15);

  MEMORY[0x1E69E5920](v9);
  v12 = [v10 itemsToDelete];
  v11 = sub_1B0E451B8();
  sub_1B0928BB4(v11, v15);

  MEMORY[0x1E69E5920](v12);
  swift_beginAccess();
  sub_1B03D08AC(v13, a1);
  swift_endAccess();
}

unint64_t sub_1B0917E74(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = a4;
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](a4);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 40) = a1;

  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B0928D58;
  *(v13 + 24) = v9;

  v20 = sub_1B074F260;
  v21 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = 0;
  v18 = sub_1B074C0AC;
  v19 = &block_descriptor_15;
  v11 = _Block_copy(&aBlock);

  v12 = [v10 initWithIMAPServerMessageBuilder_];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5928](v12);
    v26 = v12;
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v26);

    return v12;
  }

  return result;
}

uint64_t sub_1B09180BC(uint64_t a1, int a2, uint64_t a3)
{
  v258 = a3;
  v259 = a2;
  v260 = a1;
  v286 = 0;
  v250 = 0;
  v285 = 0;
  v284 = 0;
  v283 = 0;
  v282 = 0;
  v280 = 0;
  v277 = 0;
  v276 = 0;
  v274 = 0;
  v243 = sub_1B0E439A8();
  v244 = *(v243 - 8);
  v245 = v244;
  v246 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](0);
  v248 = (v246 + 15) & 0xFFFFFFFFFFFFFFF0;
  v247 = &v93[-v248];
  MEMORY[0x1EEE9AC00](v4);
  v249 = &v93[-v248];
  v251 = _s6LoggerVMa(v5);
  v253 = *(*(v251 - 8) + 64);
  MEMORY[0x1EEE9AC00](v250);
  v255 = (v253 + 15) & 0xFFFFFFFFFFFFFFF0;
  v252 = &v93[-v255];
  MEMORY[0x1EEE9AC00](v6);
  v254 = &v93[-v255];
  MEMORY[0x1EEE9AC00](v7);
  v256 = &v93[-v255];
  _s18MailboxPersistenceVMa(v8);
  MEMORY[0x1EEE9AC00](v260);
  v257 = &v93[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v285 = v10;
  v286 = v11;
  v284 = v12;
  v283 = v3;

  v265 = v3;
  v266 = v258;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E35D0, &qword_1B0EA0980);
  sub_1B09B21DC(v260, v259, sub_1B0928D6C, &v264, v261, &v281);
  v262 = 0;
  v263 = 0;

  v240 = v281;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v282 = v240;
  v279 = v240;
  sub_1B0928DEC();
  v241 = sub_1B0E45748();

  if (v241)
  {
    v94 = sub_1B0E46A48();
    sub_1B039E440(&v282);
    v96 = v94;
    v97 = v262;
    return v96;
  }

  v13 = v262;
  v222 = sub_1B09B0434();
  v220 = v242 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v234 = 32;
  v221 = &v278;
  swift_beginAccess();
  sub_1B03F4D78(v220, v257);
  swift_endAccess();
  v223 = sub_1B0884248(v222, v257);
  v225 = v14;
  v226 = v15;
  v227 = v16;
  v233 = sub_1B0883C9C(v223, v14, v15, v16);
  v224 = v233;
  v277 = v233;

  v230 = swift_allocObject();
  v228 = v230;
  v235 = v230 + 16;
  v229 = (v230 + 16);
  v276 = v230 + 16;
  sub_1B0451F2C();
  *(v230 + 16) = sub_1B0E44588();
  v232 = v282;
  v231 = v282;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v275 = v232;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v236 = v93;
  MEMORY[0x1EEE9AC00](v233);
  v237 = &v93[-32];
  *&v93[-16] = v17;
  *&v93[-8] = v18;
  sub_1B0928EA4();
  v19 = sub_1B0E46398();
  v238 = v13;
  v239 = v19;
  if (!v13)
  {
    v216 = v239;

    v274 = v216;
    v213 = *v229;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v273 = v213;
    v215 = &v272;
    swift_beginAccess();
    v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
    sub_1B06E3654();
    sub_1B0E45568();
    swift_endAccess();
    v217 = &unk_1F26C9018;
    v219 = sub_1B0E452A8();
    v218 = sub_1B0E452A8();

    if (v219 == v218)
    {
      v99 = v238;
    }

    else
    {
      v20 = v249;
      v147 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
      sub_1B0394784(v242 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v256);
      (*(v245 + 16))(v20, v256, v243);
      sub_1B039480C(v256);

      sub_1B0394784(v242 + *v147, v254);
      v21 = &v254[*(v251 + 20)];
      v149 = *v21;
      v150 = *(v21 + 1);
      sub_1B039480C(v254);

      v148 = 24;
      v187 = 7;
      v22 = swift_allocObject();
      v23 = v150;
      v161 = v22;
      *(v22 + 16) = v149;
      *(v22 + 20) = v23;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v24 = swift_allocObject();
      v25 = v150;
      v151 = v24;
      *(v24 + 16) = v149;
      *(v24 + 20) = v25;

      v186 = 32;
      v26 = swift_allocObject();
      v27 = v151;
      v173 = v26;
      *(v26 + 16) = sub_1B039BBE8;
      *(v26 + 24) = v27;
      sub_1B0394868();
      sub_1B0394868();

      v152 = v282;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v28 = swift_allocObject();
      v29 = v216;
      v178 = v28;
      *(v28 + 16) = v152;
      *(v28 + 24) = v29;

      v212 = sub_1B0E43988();
      v153 = v212;
      v211 = sub_1B0E45908();
      v154 = v211;
      v182 = 17;
      v190 = swift_allocObject();
      v155 = v190;
      v164 = 16;
      *(v190 + 16) = 16;
      v191 = swift_allocObject();
      v156 = v191;
      v171 = 4;
      *(v191 + 16) = 4;
      v30 = swift_allocObject();
      v157 = v30;
      *(v30 + 16) = sub_1B0394C30;
      v167 = 0;
      *(v30 + 24) = 0;
      v31 = swift_allocObject();
      v32 = v157;
      v192 = v31;
      v158 = v31;
      *(v31 + 16) = sub_1B0394C24;
      *(v31 + 24) = v32;
      v193 = swift_allocObject();
      v159 = v193;
      v181 = 0;
      *(v193 + 16) = 0;
      v194 = swift_allocObject();
      v160 = v194;
      *(v194 + 16) = 1;
      v33 = swift_allocObject();
      v34 = v161;
      v162 = v33;
      *(v33 + 16) = sub_1B039BA2C;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      v36 = v162;
      v195 = v35;
      v163 = v35;
      *(v35 + 16) = sub_1B039BA88;
      *(v35 + 24) = v36;
      v196 = swift_allocObject();
      v165 = v196;
      *(v196 + 16) = v164;
      v197 = swift_allocObject();
      v166 = v197;
      *(v197 + 16) = v171;
      v37 = swift_allocObject();
      v38 = v167;
      v168 = v37;
      *(v37 + 16) = sub_1B039BB94;
      *(v37 + 24) = v38;
      v39 = swift_allocObject();
      v40 = v168;
      v198 = v39;
      v169 = v39;
      *(v39 + 16) = sub_1B0394C24;
      *(v39 + 24) = v40;
      v199 = swift_allocObject();
      v170 = v199;
      *(v199 + 16) = v181;
      v200 = swift_allocObject();
      v172 = v200;
      *(v200 + 16) = v171;
      v41 = swift_allocObject();
      v42 = v173;
      v174 = v41;
      *(v41 + 16) = sub_1B039BBA0;
      *(v41 + 24) = v42;
      v43 = swift_allocObject();
      v44 = v174;
      v201 = v43;
      v175 = v43;
      *(v43 + 16) = sub_1B039BC08;
      *(v43 + 24) = v44;
      v202 = swift_allocObject();
      v176 = v202;
      *(v202 + 16) = v181;
      v203 = swift_allocObject();
      v177 = v203;
      v184 = 8;
      *(v203 + 16) = 8;
      v45 = swift_allocObject();
      v46 = v178;
      v179 = v45;
      *(v45 + 16) = sub_1B0928F2C;
      *(v45 + 24) = v46;
      v47 = swift_allocObject();
      v48 = v179;
      v204 = v47;
      v180 = v47;
      *(v47 + 16) = sub_1B03B0DF8;
      *(v47 + 24) = v48;
      v205 = swift_allocObject();
      v183 = v205;
      *(v205 + 16) = v181;
      v206 = swift_allocObject();
      v185 = v206;
      *(v206 + 16) = v184;
      v49 = swift_allocObject();
      v50 = v228;
      v188 = v49;
      *(v49 + 16) = sub_1B0928F38;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v188;
      v209 = v51;
      v189 = v51;
      *(v51 + 16) = sub_1B03B0DF8;
      *(v51 + 24) = v52;
      v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v207 = sub_1B0E46A48();
      v208 = v53;

      v54 = v190;
      v55 = v208;
      *v208 = sub_1B0398F5C;
      v55[1] = v54;

      v56 = v191;
      v57 = v208;
      v208[2] = sub_1B0398F5C;
      v57[3] = v56;

      v58 = v192;
      v59 = v208;
      v208[4] = sub_1B0399178;
      v59[5] = v58;

      v60 = v193;
      v61 = v208;
      v208[6] = sub_1B0398F5C;
      v61[7] = v60;

      v62 = v194;
      v63 = v208;
      v208[8] = sub_1B0398F5C;
      v63[9] = v62;

      v64 = v195;
      v65 = v208;
      v208[10] = sub_1B039BA94;
      v65[11] = v64;

      v66 = v196;
      v67 = v208;
      v208[12] = sub_1B0398F5C;
      v67[13] = v66;

      v68 = v197;
      v69 = v208;
      v208[14] = sub_1B0398F5C;
      v69[15] = v68;

      v70 = v198;
      v71 = v208;
      v208[16] = sub_1B0399178;
      v71[17] = v70;

      v72 = v199;
      v73 = v208;
      v208[18] = sub_1B0398F5C;
      v73[19] = v72;

      v74 = v200;
      v75 = v208;
      v208[20] = sub_1B0398F5C;
      v75[21] = v74;

      v76 = v201;
      v77 = v208;
      v208[22] = sub_1B03991EC;
      v77[23] = v76;

      v78 = v202;
      v79 = v208;
      v208[24] = sub_1B0398F5C;
      v79[25] = v78;

      v80 = v203;
      v81 = v208;
      v208[26] = sub_1B0398F5C;
      v81[27] = v80;

      v82 = v204;
      v83 = v208;
      v208[28] = sub_1B0399260;
      v83[29] = v82;

      v84 = v205;
      v85 = v208;
      v208[30] = sub_1B0398F5C;
      v85[31] = v84;

      v86 = v206;
      v87 = v208;
      v208[32] = sub_1B0398F5C;
      v87[33] = v86;

      v88 = v208;
      v89 = v209;
      v208[34] = sub_1B0399260;
      v88[35] = v89;
      sub_1B0394964();

      if (os_log_type_enabled(v212, v211))
      {
        v90 = v238;
        v141 = sub_1B0E45D78();
        v137 = v141;
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v139 = 0;
        v142 = sub_1B03949A8(0, v138, v138);
        v140 = v142;
        v143 = sub_1B03949A8(v139, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v271 = v141;
        v270 = v142;
        v269 = v143;
        v144 = &v271;
        sub_1B0394A48(0, &v271);
        sub_1B0394A48(6, v144);
        v267 = sub_1B0398F5C;
        v268 = v155;
        sub_1B03949FC(&v267, v144, &v270, &v269);
        v145 = v90;
        v146 = v90;
        if (v90)
        {
          v135 = 0;

          __break(1u);
        }

        else
        {
          v267 = sub_1B0398F5C;
          v268 = v156;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v133 = 0;
          v134 = 0;
          v267 = sub_1B0399178;
          v268 = v158;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v131 = 0;
          v132 = 0;
          v267 = sub_1B0398F5C;
          v268 = v159;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v129 = 0;
          v130 = 0;
          v267 = sub_1B0398F5C;
          v268 = v160;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v127 = 0;
          v128 = 0;
          v267 = sub_1B039BA94;
          v268 = v163;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v125 = 0;
          v126 = 0;
          v267 = sub_1B0398F5C;
          v268 = v165;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v123 = 0;
          v124 = 0;
          v267 = sub_1B0398F5C;
          v268 = v166;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v121 = 0;
          v122 = 0;
          v267 = sub_1B0399178;
          v268 = v169;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v119 = 0;
          v120 = 0;
          v267 = sub_1B0398F5C;
          v268 = v170;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v117 = 0;
          v118 = 0;
          v267 = sub_1B0398F5C;
          v268 = v172;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v115 = 0;
          v116 = 0;
          v267 = sub_1B03991EC;
          v268 = v175;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v113 = 0;
          v114 = 0;
          v267 = sub_1B0398F5C;
          v268 = v176;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v111 = 0;
          v112 = 0;
          v267 = sub_1B0398F5C;
          v268 = v177;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v109 = 0;
          v110 = 0;
          v267 = sub_1B0399260;
          v268 = v180;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v107 = 0;
          v108 = 0;
          v267 = sub_1B0398F5C;
          v268 = v183;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v105 = 0;
          v106 = 0;
          v267 = sub_1B0398F5C;
          v268 = v185;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v103 = 0;
          v104 = 0;
          v267 = sub_1B0399260;
          v268 = v189;
          sub_1B03949FC(&v267, &v271, &v270, &v269);
          v101 = 0;
          v102 = 0;
          _os_log_impl(&dword_1B0389000, v153, v154, "[%.*hhx-%.*X] Excluding '%ld' message move/copy since %ld destination mailbox(es) have modifications.", v137, 0x2Bu);
          v100 = 0;
          sub_1B03998A8(v140, 0, v138);
          sub_1B03998A8(v143, v100, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v136 = v101;
        }
      }

      else
      {
        v91 = v238;

        v136 = v91;
      }

      v98 = v136;

      (*(v245 + 8))(v249, v243);
      v99 = v98;
    }

    v95 = v99;

    sub_1B039E440(&v282);
    v96 = v216;
    v97 = v95;
    return v96;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B091AD40@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = sub_1B09B0668();
  v5 = sub_1B091ADD0(v4, a1);

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1B091ADD0(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = v2;
  sub_1B091FFC0(a1, a2, v12);
  v11 = v12[0];
  v7 = v12[1];
  v8 = v12[2];
  v9 = v12[3];
  v10 = v12[4];
  v6 = *(v4 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
  MEMORY[0x1E69E5928](v6);
  sub_1B07B639C(v7, v8, v9, v10, a1);
  MEMORY[0x1E69E5920](v6);

  return v11;
}

uint64_t sub_1B091AEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v12 = a1;
  v11 = a2;
  v10 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = v5;
  v9 = v6;
  sub_1B0451F2C();
  v7 = sub_1B0E45528();
  sub_1B039E440(&v8);
  if (v7)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
    sub_1B0E454D8();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_1B091B008(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0E452A8();

  v2 = sub_1B0E452A8();
  result = v5;
  v6 = v5 - v2;
  if (__OFSUB__(v5, v2))
  {
    __break(1u);
  }

  else
  {

    return v6;
  }

  return result;
}

uint64_t sub_1B091B094(uint64_t a1)
{
  swift_beginAccess();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B0451F2C();
  v2 = sub_1B0E454A8();

  return v2;
}

uint64_t sub_1B091B114(const void *a1, uint64_t a2)
{
  memset(&v12[2], 0, 0x28uLL);
  memcpy(__dst, a1, sizeof(__dst));
  v12[2] = __dst[0];
  v12[3] = __dst[1];
  LODWORD(v12[4]) = __dst[2];
  v12[5] = __dst[3];
  v12[6] = __dst[4];
  v12[1] = a2;
  v10 = a2;
  sub_1B0828300(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  sub_1B071CEA8();
  sub_1B0E44FB8();
  sub_1B08283D8();
  v8 = v11;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3190, &unk_1B0EA0988);
  v2 = sub_1B074AEA4();
  sub_1B039A570(sub_1B091B3A8, 0, v4, MEMORY[0x1E69E73E0], v2, v5, v12);
  sub_1B06D4E94(&v8);
  return v12[0];
}

uint64_t sub_1B091B2C0(id *a1, uint64_t *a2)
{
  v4 = [*a1 persistentID];
  v10 = [v4 stringValue];
  v6 = sub_1B0E44AD8();
  v9 = v2;
  MEMORY[0x1E69E5920](v4);
  v7 = *a2;
  v8 = a2[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = MEMORY[0x1B2726DE0](v6, v9, v7, v8);

  MEMORY[0x1E69E5920](v10);
  return v11 & 1;
}

uint64_t sub_1B091B3A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    result = MEMORY[0x1E69E5920](v4);
    *a2 = 0;
  }

  return result;
}

unint64_t sub_1B091B440(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v14 = a3;
  v24 = sub_1B0929098;
  v25 = sub_1B074F260;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v46 = a2;
  v21 = a2;
  v22 = BYTE4(a2);
  v13 = *(_s6LoggerVMa_1(0) - 8);
  v15 = v13;
  v16 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12[1]);
  v18 = v12 - v3;
  v44 = v17;
  v42 = v21;
  v30 = 1;
  v43 = v4 & 1;
  v41 = v5;
  v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B0928F6C(v17, v40);
  sub_1B074B69C(v14, v18);
  v19 = (*(v15 + 80) + 124) & ~*(v15 + 80);
  v23 = 7;
  v20 = (v19 + v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v26 = swift_allocObject();
  memcpy((v26 + 16), v17, 0x6CuLL);
  sub_1B074E41C(v18, v26 + v19);
  v6 = v22;
  v7 = v30;
  v8 = v26 + v20;
  *v8 = v21;
  *(v8 + 4) = v6 & 1 & v7;

  v9 = swift_allocObject();
  v10 = v26;
  v31 = v9;
  *(v9 + 16) = v24;
  *(v9 + 24) = v10;

  v38 = v25;
  v39 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_1B074C0AC;
  v37 = &block_descriptor_228;
  v28 = _Block_copy(&aBlock);

  v29 = [v27 initWithBuilder_];
  _Block_release(v28);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5928](v29);
    v45 = v29;
    sub_1B074B764(v14);
    sub_1B09291C8(v17);
    MEMORY[0x1E69E5920](v45);

    return v29;
  }

  return result;
}

uint64_t sub_1B091B848(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v259 = a1;
  v260 = a2;
  v244 = a3;
  v200 = sub_1B074E050;
  v201 = sub_1B03F7AE0;
  v202 = sub_1B0394C30;
  v203 = sub_1B0394C24;
  v204 = sub_1B074DFFC;
  v205 = sub_1B039BA88;
  v206 = sub_1B039BB94;
  v207 = sub_1B0394C24;
  v208 = sub_1B039BBA0;
  v209 = sub_1B039BC08;
  v210 = sub_1B06BA324;
  v211 = sub_1B074E0E4;
  v212 = sub_1B039BCF8;
  v213 = sub_1B07AB020;
  v214 = sub_1B039BC08;
  v215 = sub_1B0398F5C;
  v216 = sub_1B0398F5C;
  v217 = sub_1B0399178;
  v218 = sub_1B0398F5C;
  v219 = sub_1B0398F5C;
  v220 = sub_1B039BA94;
  v221 = sub_1B0398F5C;
  v222 = sub_1B0398F5C;
  v223 = sub_1B0399178;
  v224 = sub_1B0398F5C;
  v225 = sub_1B0398F5C;
  v226 = sub_1B03991EC;
  v227 = sub_1B0398F5C;
  v228 = sub_1B0398F5C;
  v229 = sub_1B03993BC;
  v230 = sub_1B0398F5C;
  v231 = sub_1B0398F5C;
  v232 = sub_1B039BCEC;
  v233 = sub_1B0398F5C;
  v234 = sub_1B0398F5C;
  v235 = sub_1B03991EC;
  v278 = 0;
  v277 = 0;
  v276 = 0;
  v274 = 0;
  v275 = 0;
  v273 = 0;
  v272 = 0;
  v236 = 0;
  v265 = 0uLL;
  v264 = 0;
  v263 = 0;
  v262 = 0;
  v285 = a4;
  v250 = a4;
  v245 = BYTE4(a4);
  v252 = 0;
  v237 = _s6LoggerVMa_1(0);
  v238 = (*(*(v237 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v239 = v108 - v238;
  v240 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v241 = v108 - v240;
  v242 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v243 = v108 - v242;
  v246 = sub_1B0E439A8();
  v247 = *(v246 - 8);
  v248 = v246 - 8;
  v249 = (*(v247 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v259);
  v251 = v108 - v249;
  v278 = v8;
  v277 = v9;
  v276 = v10;
  v274 = v250;
  v275 = v11 & 1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v259 setPhaseForResults_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v256 = sub_1B071C094();
  v255 = sub_1B0E46A48();
  v253 = v12;
  v254 = *(v260 + 64);
  MEMORY[0x1E69E5928](v254);
  *v253 = v254;
  sub_1B0394964();
  v257 = v13;
  v258 = sub_1B0E451A8();

  [v259 setFailedItems_];
  MEMORY[0x1E69E5920](v258);
  result = swift_unknownObjectRelease();
  v280 = *(v260 + 40);
  v281 = *(v260 + 48);
  v282 = v280;
  v283 = v281;
  v261 = v280;
  if (v281)
  {
    if (v261)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v196 = 0;
      v189 = sub_1B0E46A48();
      v190 = sub_1B0E451A8();

      [v259 setFailedItems_];
      MEMORY[0x1E69E5920](v190);
      swift_unknownObjectRelease();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v193 = sub_1B0E46A48();
      v191 = v15;
      v192 = *(v260 + 64);
      MEMORY[0x1E69E5928](v192);
      *v191 = v192;
      sub_1B0394964();
      v194 = v16;
      v195 = sub_1B0E451A8();

      [v259 setCompletedItems_];
      MEMORY[0x1E69E5920](v195);
      swift_unknownObjectRelease();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v197 = sub_1B086F238();
      v198 = sub_1B0E46A48();
      v199 = sub_1B0E451A8();

      [v259 setCreatedServerMessages_];
      MEMORY[0x1E69E5920](v199);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v188 = v282;
    v272 = HIDWORD(v282);
    v273 = v282;
    v279 = *(v260 + 80);
    sub_1B070B280(&v279, &v271);
    v284 = v279;
    if (*(&v279 + 1))
    {
      v180 = v284;
      v265 = v284;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v181 = sub_1B0E46A48();
      v182 = sub_1B0E451A8();

      [v259 setFailedItems_];
      MEMORY[0x1E69E5920](v182);
      swift_unknownObjectRelease();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v185 = sub_1B0E46A48();
      v183 = v17;
      v184 = *(v260 + 64);
      MEMORY[0x1E69E5928](v184);
      *v183 = v184;
      sub_1B0394964();
      v186 = v18;
      v187 = sub_1B0E451A8();

      [v259 setCompletedItems_];
      MEMORY[0x1E69E5920](v187);
      swift_unknownObjectRelease();
      if ((v245 & 1) != 0 || (v179 = v250, v264 = v250, !static UIDValidity.__derived_struct_equals(_:_:)(SHIDWORD(v188), v250)))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v167 = 0;
        v168 = sub_1B086F238();
        v169 = sub_1B0E46A48();
        v170 = sub_1B0E451A8();

        [v259 setCreatedServerMessages_];
        MEMORY[0x1E69E5920](v170);
        swift_unknownObjectRelease();
      }

      else
      {
        v171 = 0;
        sub_1B071FB18();
        v178 = sub_1B08C0C38();
        v263 = v178;
        v174 = sub_1B086F238();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1E69E5928](v178);
        v177 = sub_1B0917E74(v188, v180, *(&v180 + 1), v178);
        v262 = v177;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v173 = sub_1B0E46A48();
        v172 = v19;
        MEMORY[0x1E69E5928](v177);
        *v172 = v177;
        sub_1B0394964();
        v175 = v20;
        v176 = sub_1B0E451A8();

        [v259 setCreatedServerMessages_];
        MEMORY[0x1E69E5920](v176);
        swift_unknownObjectRelease();
        MEMORY[0x1E69E5920](v177);
        MEMORY[0x1E69E5920](v178);
      }
    }

    else
    {
      (*(v247 + 16))(v251, v244, v246);
      sub_1B074B69C(v244, v243);
      sub_1B074B69C(v243, v241);
      sub_1B074E41C(v243, v239);
      v21 = (v241 + *(v237 + 20));
      v119 = *v21;
      v120 = *(v21 + 1);
      v121 = *(v21 + 1);
      v122 = *(v21 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v241);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v118 = 36;
      v138 = 7;
      v22 = swift_allocObject();
      v23 = v120;
      v24 = v121;
      v25 = v122;
      v125 = v22;
      *(v22 + 16) = v119;
      *(v22 + 20) = v23;
      *(v22 + 24) = v24;
      *(v22 + 32) = v25;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v26 = swift_allocObject();
      v27 = v120;
      v28 = v121;
      v29 = v122;
      v117 = v26;
      *(v26 + 16) = v119;
      *(v26 + 20) = v27;
      *(v26 + 24) = v28;
      *(v26 + 32) = v29;

      v137 = 32;
      v30 = swift_allocObject();
      v31 = v117;
      v129 = v30;
      *(v30 + 16) = v200;
      *(v30 + 24) = v31;
      sub_1B0394868();
      sub_1B0394868();

      v32 = swift_allocObject();
      v33 = v120;
      v34 = v121;
      v35 = v122;
      v36 = v32;
      v37 = v239;
      v133 = v36;
      *(v36 + 16) = v119;
      *(v36 + 20) = v33;
      *(v36 + 24) = v34;
      *(v36 + 32) = v35;
      sub_1B074B764(v37);
      v123 = swift_allocObject();
      *(v123 + 16) = v188;

      v38 = swift_allocObject();
      v39 = v123;
      v139 = v38;
      *(v38 + 16) = v201;
      *(v38 + 24) = v39;

      v165 = sub_1B0E43988();
      v166 = sub_1B0E458E8();
      v135 = 17;
      v141 = swift_allocObject();
      v127 = 16;
      *(v141 + 16) = 16;
      v142 = swift_allocObject();
      v136 = 4;
      *(v142 + 16) = 4;
      v40 = swift_allocObject();
      v124 = v40;
      *(v40 + 16) = v202;
      *(v40 + 24) = 0;
      v41 = swift_allocObject();
      v42 = v124;
      v143 = v41;
      *(v41 + 16) = v203;
      *(v41 + 24) = v42;
      v144 = swift_allocObject();
      *(v144 + 16) = 0;
      v145 = swift_allocObject();
      *(v145 + 16) = 1;
      v43 = swift_allocObject();
      v44 = v125;
      v126 = v43;
      *(v43 + 16) = v204;
      *(v43 + 24) = v44;
      v45 = swift_allocObject();
      v46 = v126;
      v146 = v45;
      *(v45 + 16) = v205;
      *(v45 + 24) = v46;
      v147 = swift_allocObject();
      *(v147 + 16) = v127;
      v148 = swift_allocObject();
      *(v148 + 16) = v136;
      v47 = swift_allocObject();
      v128 = v47;
      *(v47 + 16) = v206;
      *(v47 + 24) = 0;
      v48 = swift_allocObject();
      v49 = v128;
      v149 = v48;
      *(v48 + 16) = v207;
      *(v48 + 24) = v49;
      v150 = swift_allocObject();
      *(v150 + 16) = 0;
      v151 = swift_allocObject();
      *(v151 + 16) = v136;
      v50 = swift_allocObject();
      v51 = v129;
      v130 = v50;
      *(v50 + 16) = v208;
      *(v50 + 24) = v51;
      v52 = swift_allocObject();
      v53 = v130;
      v152 = v52;
      *(v52 + 16) = v209;
      *(v52 + 24) = v53;
      v153 = swift_allocObject();
      *(v153 + 16) = 112;
      v154 = swift_allocObject();
      v132 = 8;
      *(v154 + 16) = 8;
      v131 = swift_allocObject();
      *(v131 + 16) = 0x786F626C69616DLL;
      v54 = swift_allocObject();
      v55 = v131;
      v155 = v54;
      *(v54 + 16) = v210;
      *(v54 + 24) = v55;
      v156 = swift_allocObject();
      *(v156 + 16) = 37;
      v157 = swift_allocObject();
      *(v157 + 16) = v132;
      v56 = swift_allocObject();
      v57 = v133;
      v134 = v56;
      *(v56 + 16) = v211;
      *(v56 + 24) = v57;
      v58 = swift_allocObject();
      v59 = v134;
      v158 = v58;
      *(v58 + 16) = v212;
      *(v58 + 24) = v59;
      v159 = swift_allocObject();
      *(v159 + 16) = 0;
      v160 = swift_allocObject();
      *(v160 + 16) = v136;
      v60 = swift_allocObject();
      v61 = v139;
      v140 = v60;
      *(v60 + 16) = v213;
      *(v60 + 24) = v61;
      v62 = swift_allocObject();
      v63 = v140;
      v162 = v62;
      *(v62 + 16) = v214;
      *(v62 + 24) = v63;
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v161 = sub_1B0E46A48();
      v163 = v64;

      v65 = v141;
      v66 = v163;
      *v163 = v215;
      v66[1] = v65;

      v67 = v142;
      v68 = v163;
      v163[2] = v216;
      v68[3] = v67;

      v69 = v143;
      v70 = v163;
      v163[4] = v217;
      v70[5] = v69;

      v71 = v144;
      v72 = v163;
      v163[6] = v218;
      v72[7] = v71;

      v73 = v145;
      v74 = v163;
      v163[8] = v219;
      v74[9] = v73;

      v75 = v146;
      v76 = v163;
      v163[10] = v220;
      v76[11] = v75;

      v77 = v147;
      v78 = v163;
      v163[12] = v221;
      v78[13] = v77;

      v79 = v148;
      v80 = v163;
      v163[14] = v222;
      v80[15] = v79;

      v81 = v149;
      v82 = v163;
      v163[16] = v223;
      v82[17] = v81;

      v83 = v150;
      v84 = v163;
      v163[18] = v224;
      v84[19] = v83;

      v85 = v151;
      v86 = v163;
      v163[20] = v225;
      v86[21] = v85;

      v87 = v152;
      v88 = v163;
      v163[22] = v226;
      v88[23] = v87;

      v89 = v153;
      v90 = v163;
      v163[24] = v227;
      v90[25] = v89;

      v91 = v154;
      v92 = v163;
      v163[26] = v228;
      v92[27] = v91;

      v93 = v155;
      v94 = v163;
      v163[28] = v229;
      v94[29] = v93;

      v95 = v156;
      v96 = v163;
      v163[30] = v230;
      v96[31] = v95;

      v97 = v157;
      v98 = v163;
      v163[32] = v231;
      v98[33] = v97;

      v99 = v158;
      v100 = v163;
      v163[34] = v232;
      v100[35] = v99;

      v101 = v159;
      v102 = v163;
      v163[36] = v233;
      v102[37] = v101;

      v103 = v160;
      v104 = v163;
      v163[38] = v234;
      v104[39] = v103;

      v105 = v162;
      v106 = v163;
      v163[40] = v235;
      v106[41] = v105;
      sub_1B0394964();

      if (os_log_type_enabled(v165, v166))
      {
        v107 = v236;
        v110 = sub_1B0E45D78();
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v111 = sub_1B03949A8(0, v109, v109);
        v112 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v113 = &v270;
        v270 = v110;
        v114 = &v269;
        v269 = v111;
        v115 = &v268;
        v268 = v112;
        sub_1B0394A48(3, &v270);
        sub_1B0394A48(7, v113);
        v266 = v215;
        v267 = v141;
        sub_1B03949FC(&v266, v113, v114, v115);
        v116 = v107;
        if (v107)
        {

          __break(1u);
        }

        else
        {
          v266 = v216;
          v267 = v142;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[19] = 0;
          v266 = v217;
          v267 = v143;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[18] = 0;
          v266 = v218;
          v267 = v144;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[17] = 0;
          v266 = v219;
          v267 = v145;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[16] = 0;
          v266 = v220;
          v267 = v146;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[15] = 0;
          v266 = v221;
          v267 = v147;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[14] = 0;
          v266 = v222;
          v267 = v148;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[13] = 0;
          v266 = v223;
          v267 = v149;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[12] = 0;
          v266 = v224;
          v267 = v150;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[11] = 0;
          v266 = v225;
          v267 = v151;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[10] = 0;
          v266 = v226;
          v267 = v152;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[9] = 0;
          v266 = v227;
          v267 = v153;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[8] = 0;
          v266 = v228;
          v267 = v154;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[7] = 0;
          v266 = v229;
          v267 = v155;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[6] = 0;
          v266 = v230;
          v267 = v156;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[5] = 0;
          v266 = v231;
          v267 = v157;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[4] = 0;
          v266 = v232;
          v267 = v158;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[3] = 0;
          v266 = v233;
          v267 = v159;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[2] = 0;
          v266 = v234;
          v267 = v160;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108[1] = 0;
          v266 = v235;
          v267 = v162;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          _os_log_impl(&dword_1B0389000, v165, v166, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Received a new UID %u from the server, but there’s no local destinationPersistentID.", v110, 0x31u);
          sub_1B03998A8(v111, 0, v109);
          sub_1B03998A8(v112, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v165);
      return (*(v247 + 8))(v251, v246);
    }
  }

  return result;
}

uint64_t sub_1B091DF30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = a1;
  v14 = a2;
  v15 = a3;
  v13 = a4;
  v12[2] = a5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E44AC8();

  [a1 setMessagePersistentID_];
  MEMORY[0x1E69E5920](v7);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setServerFlags_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v12[0] = a5;
  v10 = sub_1B07467B8();
  v5 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(v12, MEMORY[0x1E69E7668], &type metadata for UID, v10, v5);
  [a1 setImapUID_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1B091E0AC(uint64_t a1)
{
  sub_1B0929244(a1, v4);
  sub_1B09292C4(a1, v2);
  return sub_1B0929338(a1);
}

uint64_t sub_1B091E0FC(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_1B091E110()
{
  v2 = *(v0 + 56);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B091E144(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B091E198()
{
  v2 = *(v0 + 64);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B091E1CC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B091E230()
{
  v2 = *(v0 + 96);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B091E268(uint64_t a1, int a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

void *sub_1B091E2B0@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, int a11)
{
  memcpy(__dst, a1, sizeof(__dst));
  LOBYTE(v21[0]) = __dst[0];
  HIDWORD(v21[0]) = HIDWORD(__dst[0]);
  v21[1] = __dst[1];
  LODWORD(v21[2]) = __dst[2];
  v21[3] = __dst[3];
  v21[4] = __dst[4];
  v21[5] = a2;
  LOBYTE(v21[6]) = a3 & 1;
  v21[7] = a4;
  v21[8] = a5;
  LODWORD(v21[9]) = a6;
  v21[10] = a7;
  v21[11] = a8;
  v21[12] = a10;
  LODWORD(v21[13]) = a11;
  return memcpy(a9, v21, 0x6CuLL);
}

uint64_t sub_1B091E3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a4;
  v14 = a1;
  v11 = a2;
  v12 = a3;
  v13 = sub_1B0929374;
  v9[1] = *v4;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v9[0] = (*(*(_s6LoggerVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v15 = v9 - v9[0];
  v23 = v5;
  v21 = v6;
  v22 = v7;
  v20 = v4;
  v18 = *(v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_opaqueIDCoder);
  v19 = *(v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_opaqueIDCoder + 8);

  v17 = sub_1B09B0668();

  sub_1B0394784(v16 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v15);
  sub_1B091E6E0(v14, v11, v12, v18, v19, v17, v13, v16, v10, v15);
  sub_1B039480C(v15);
}

uint64_t sub_1B091E578(uint64_t a1, int a2, uint64_t a3)
{
  v11 = a1;
  v12 = a2;
  v10 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E31A0, &qword_1B0EA0998);
  sub_1B09B21DC(a1, a2, sub_1B091E674, 0, v3, &v8);
  LODWORD(v7) = v8;
  BYTE4(v7) = v9 & 1;
  return v7;
}

uint64_t sub_1B091E674@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B0A42CF0();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1B091E6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v63 = a9;
  v46 = a1;
  v44 = a2;
  v45 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v56 = a7;
  v57 = a8;
  v39 = a10;
  v61 = sub_1B0929404;
  v65 = sub_1B09294E8;
  v81 = 0;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v75 = 0;
  v73 = 0;
  v74 = 0;
  v72 = 0;
  v71 = 0;
  v37 = 0;
  v38 = (*(*(_s6LoggerVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v43 = &v37 - v38;
  v40 = *(_s6LoggerVMa_1(v11) - 8);
  v48 = v40;
  v49 = *(v40 + 64);
  v41 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v54 = &v37 - v41;
  v42 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v37 - v42;
  v81 = &v37 - v42;
  v80 = v46;
  v78 = v13;
  v79 = v14;
  v76 = v15;
  v77 = v16;
  v75 = v17;
  v73 = v18;
  v74 = v19;
  v72 = v20;
  v71 = v10;
  sub_1B0394784(v20, v21);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v43, v44, v45, v68);
  v70[1] = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E31A8, &qword_1B0EA09A0);
  v22 = sub_1B092937C();
  MEMORY[0x1B27270C0](v70, v47, v22);
  v67 = &v69;
  v69 = v70[0];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B69C(v68, v54);

  v53 = (*(v48 + 80) + 40) & ~*(v48 + 80);
  v60 = 7;
  v55 = (v53 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v51;
  v25 = v52;
  v26 = v53;
  v27 = v23;
  v28 = v54;
  v62 = v27;
  v27[2] = v50;
  v27[3] = v24;
  v27[4] = v25;
  sub_1B074E41C(v28, v27 + v26);
  v29 = v57;
  v30 = v58;
  v31 = v59;
  v32 = v62;
  v33 = (v62 + v55);
  *v33 = v56;
  v33[1] = v29;
  *(v32 + v31) = v30;
  v34 = swift_allocObject();
  v35 = v62;
  v66 = v34;
  *(v34 + 16) = v61;
  *(v34 + 24) = v35;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E31B8, &qword_1B0EA09A8);
  sub_1B09294F4();
  sub_1B0E46718();

  sub_1B039E440(v67);
  return sub_1B074B764(v68);
}

uint64_t sub_1B091EB8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, void, __n128), uint64_t a9)
{
  v40 = a1;
  v39 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v32 = a8;
  v33 = a9;
  v57 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v46 = 0;
  v47 = 0;
  v41 = (*(*(_s6LoggerVMa_1(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v21 - v41;
  v57 = v9;
  v55 = v10;
  v56 = v11 & 1;
  v53 = v12;
  v54 = v13;
  v52 = v14;
  v51 = v15;
  v49 = v16;
  v50 = v17;
  v43 = v58;
  sub_1B09B24E0(v9, v10, v11 & 1, v12, v13, v14, v15, v58);
  memcpy(__dst, v43, 0x6CuLL);
  if (__dst[1])
  {
    v27 = v60;
    memcpy(v60, __dst, 0x6CuLL);

    v22 = v60[12];
    HIDWORD(v21) = v60[13];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v48 = (v32)(v22, HIDWORD(v21));
    v23 = v48;
    v24 = BYTE4(v48);

    v46 = v23;
    v25 = 1;
    v47 = v24 & 1;

    v26 = v60[7];
    MEMORY[0x1E69E5928](v60[7]);
    sub_1B074EFAC();
    sub_1B0928F6C(v27, &v45);
    sub_1B074B69C(v38, v42);
    LODWORD(v44) = v23;
    BYTE4(v44) = v24 & 1 & v25;
    sub_1B091B440(v27, v44, v42);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v29 = v18;
    v28 = v19;
    sub_1B09291C8(v27);
    v30 = v29;
    v31 = v28;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  return v30;
}

uint64_t sub_1B091EE48@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(_BYTE *, void, void)@<X1>, uint64_t *a3@<X8>)
{
  memcpy(__dst, a1, sizeof(__dst));
  result = a2(__dst, *(a1 + 40), *(a1 + 48) & 1);
  *a3 = result;
  a3[1] = v4;
  return result;
}

void sub_1B091EEC4(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  memset(__b, 0, sizeof(__b));
  __b[3] = 0;
  __b[4] = 0;
  MEMORY[0x1E69E5928](a1);
  v24 = [a1 persistentID];
  MEMORY[0x1E69E5920](a1);
  v27 = [v24 stringValue];
  v25 = sub_1B0E44AD8();
  v26 = v3;
  MEMORY[0x1E69E5920](v24);
  __b[0] = v25;
  __b[1] = v26;
  MEMORY[0x1E69E5920](v27);
  if ([a1 transferType] >= 2 || (v29 = sub_1B0917A3C(), (v29 & 0x100000000) != 0) || (v4 = objc_msgSend(a2, sel_destinationMessage), (v21 = v4) == 0 ? (v19 = 0, v20 = 0) : (swift_getObjectType(), v5 = objc_msgSend(v21, sel_persistentID), (v18 = v5) == 0 ? (v16 = 0, v17 = 0) : (v14 = sub_1B0E44AD8(), v15 = v6, MEMORY[0x1E69E5920](v18), v16 = v14, v17 = v15), swift_unknownObjectRelease(), v19 = v16, v20 = v17), !v20))
  {
    MEMORY[0x1E69E5920](a2);
    MEMORY[0x1E69E5920](a1);
    sub_1B03B1198(__b);
    sub_1B03B1198(&__b[3]);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    LODWORD(__b[2]) = v29;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __b[3] = v19;
    __b[4] = v20;

    v7 = __b[0];
    v8 = __b[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1E69E5920](a2);
    MEMORY[0x1E69E5920](a1);
    sub_1B08283D8();
    v9 = v7;
    v10 = v8;
    v11 = v29;
    v12 = v19;
    v13 = v20;
  }

  *a3 = v9;
  a3[1] = v10;
  a3[2] = v11;
  a3[3] = v12;
  a3[4] = v13;
}

uint64_t sub_1B091F2F8(uint64_t a1, uint64_t a2)
{
  v15[2] = a1;
  v15[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15[0] = sub_1B0E44838();
  v15[1] = v2;
  v14[2] = a1;
  v14[3] = a2;
  v12 = MEMORY[0x1B2726DE0](v15[0], v2, a1, a2);
  sub_1B03B1198(v15);
  if (v12)
  {

    v16 = 0;
    v9 = 0;
LABEL_8:

    return v9;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[0] = sub_1B0E44838();
  v14[1] = v3;
  v13[2] = a1;
  v13[3] = a2;
  v8 = MEMORY[0x1B2726DE0](v14[0], v3, a1, a2);
  sub_1B03B1198(v14);
  if (v8)
  {

    v16 = 1;
    v9 = 1;
    goto LABEL_8;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13[0] = sub_1B0E44838();
  v13[1] = v4;
  v7 = MEMORY[0x1B2726DE0](v13[0], v4, a1, a2);
  sub_1B03B1198(v13);
  if (v7)
  {

    v16 = 2;
    v9 = 2;
    goto LABEL_8;
  }

  return 3;
}

uint64_t sub_1B091F64C(uint64_t a1)
{
  v17 = a1;
  v36 = 0;
  v35 = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3248, &unk_1B0EA1050);
  v18 = *(v28 - 8);
  v19 = v28 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v23 = v6 - v20;
  v36 = v2;
  v35 = v1;
  v21 = v2[3];
  v22 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v21);
  sub_1B09295F8();
  sub_1B0E46D48();
  v3 = v25;
  v26 = *v24;
  v27 = v24[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v34 = 0;
  sub_1B0E46928();
  v29 = v3;
  v30 = v3;
  if (v3)
  {
    v7 = v30;

    result = (*(v18 + 8))(v23, v28);
    v8 = v7;
  }

  else
  {

    v37 = *(v24 + 4);
    v14 = &v33;
    v33 = v37;
    v13 = &v32;
    v32 = 1;
    sub_1B092A620();
    v4 = v29;
    sub_1B0E46958();
    v15 = v4;
    v16 = v4;
    if (v4)
    {
      v6[2] = v16;
    }

    else
    {
      v9 = v24[3];
      v10 = v24[4];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v31 = 2;
      sub_1B0E468C8();
      v11 = 0;
      v12 = 0;
    }

    return (*(v18 + 8))(v23, v28);
  }

  return result;
}

void sub_1B091F984(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v37 = a1;
  v52 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3238, &qword_1B0EA1048);
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v42 = &v14 - v41;
  v52 = v2;
  v56 = 0;
  v57 = 0;
  v44 = v2[3];
  v45 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v44);
  sub_1B09295F8();
  v3 = v43;
  sub_1B0E46D18();
  v46 = v3;
  v47 = v3;
  if (v3)
  {
    v17 = v47;
    v18 = 4;
  }

  else
  {
    v51 = 0;
    v4 = sub_1B0E46848();
    v32 = 0;
    v33 = v4;
    v34 = v5;
    v35 = 0;
    v53 = v4;
    v54 = v5;
    v29 = &v49;
    v49 = 1;
    sub_1B092A5A8();
    v6 = v32;
    sub_1B0E46868();
    v30 = v6;
    v31 = v6;
    if (!v6)
    {
      v24 = v50;
      v55 = v50;
      v48 = 2;
      v7 = sub_1B0E46818();
      v25 = 0;
      v26 = v7;
      v27 = v8;
      v28 = 0;
      v23 = v8;
      v22 = v7;
      v19 = &v53;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v56 = v22;
      v57 = v23;

      (*(v39 + 8))(v42, v38);
      v20 = v53;
      v21 = v54;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_destroy_boxed_opaque_existential_0(v37);
      sub_1B08283D8();
      v9 = v21;
      v10 = v24;
      v11 = v22;
      v12 = v36;
      v13 = v23;
      *v36 = v20;
      v12[1] = v9;
      *(v12 + 4) = v10;
      v12[3] = v11;
      v12[4] = v13;
      return;
    }

    v16 = v31;
    (*(v39 + 8))(v42, v38);
    v17 = v16;
    v18 = 5;
  }

  v15 = v18;
  v14 = v17;
  __swift_destroy_boxed_opaque_existential_0(v37);
  if (v15)
  {
    sub_1B03B1198(&v53);
  }

  sub_1B03B1198(&v56);
}

uint64_t sub_1B091FE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B091F2F8(a1, a2);
  *a3 = result;
  return result;
}

void sub_1B091FEDC(void *a1@<X0>, void *a2@<X8>)
{
  sub_1B091F984(a1, __src);
  if (!v2)
  {
    memcpy(a2, __src, 0x28uLL);
  }
}

uint64_t sub_1B091FFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v63 = a3;
  v66 = a1;
  v65 = a2;
  v74 = sub_1B0929674;
  v94 = sub_1B092967C;
  v64 = sub_1B092973C;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  memset(v119, 0, sizeof(v119));
  v118 = 0;
  v106 = 0;
  v71 = 0;
  v67 = *(_s6LoggerVMa_1(0) - 8);
  v83 = v67;
  v84 = *(v67 + 64);
  v68 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v88 = &v39 - v68;
  v69 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v99 = &v39 - v69;
  v132 = &v39 - v69;
  v131 = v6;
  v130 = v7;
  v129 = v3;
  v121[1] = v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v8 = sub_1B071CEA8();
  MEMORY[0x1B27270C0](v121, v70, v8);
  v75 = &v120;
  v120 = v121[0];

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B60, &unk_1B0EA09B0);
  v73 = sub_1B074AEA4();
  sub_1B074AF08();
  sub_1B0E46718();

  sub_1B039E440(v75);
  v76 = v122;
  v77 = v123;
  v78 = v124;
  v79 = v125;
  v80 = v126;
  v81 = v127;
  v82 = v128;
  v119[0] = v122;
  v119[1] = v123;
  v119[2] = v124;
  v119[3] = v125;
  v119[4] = v126;
  v119[5] = v127;
  v119[6] = v128;
  v85 = 7;
  v91 = swift_allocObject();
  v118 = v91 + 2;
  v9 = sub_1B07B681C();
  v10 = v76;
  v11 = v77;
  v12 = v78;
  v13 = v79;
  v14 = v80;
  v15 = v81;
  v16 = v82;
  v17 = v90;
  v18 = v9;
  v19 = v91;
  v21 = v20;
  v22 = v99;
  v91[2] = v18;
  v19[3] = v21;
  v19[4] = v23;
  v19[5] = v24;
  v108 = v10;
  v109 = v11;
  v110 = v12;
  v111 = v13;
  v112 = v14;
  v113 = v15;
  v114 = v16;
  sub_1B074B69C(v17 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v22);
  sub_1B074B69C(v99, v88);

  v86 = *(v83 + 80);
  v87 = (v86 + 16) & ~v86;
  v89 = (v87 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  sub_1B074E41C(v88, v95 + v87);
  v25 = v91;
  v26 = v92;
  v27 = v95;
  v28 = v99;
  *(v95 + v89) = v90;
  *(v27 + v26) = v25;
  sub_1B074B764(v28);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B68, &qword_1B0E9AF90);
  sub_1B074AF90();
  v96 = &v115;
  sub_1B0E46718();

  v97 = __dst;
  v98 = 104;
  memcpy(__dst, v96, sizeof(__dst));
  memcpy(v107, __dst, sizeof(v107));
  v106 = v99;
  sub_1B074B69C(v90 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v99);
  sub_1B074B69C(v99, v88);

  v40 = (v86 + 16) & ~v86;
  v41 = (v40 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  sub_1B074E41C(v88, v46 + v40);
  v29 = v42;
  v30 = v46;
  v31 = v91;
  v32 = v99;
  *(v46 + v41) = v90;
  *(v30 + v29) = v31;
  sub_1B074B764(v32);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E31D8, &qword_1B0EA09C0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E35D0, &qword_1B0EA0980);
  v45 = sub_1B09297FC();
  sub_1B0929884();
  v48 = &v116;
  v47 = v107;
  sub_1B0E46748();

  sub_1B092990C();
  v49 = v104;
  v50 = 120;
  memcpy(v104, v48, sizeof(v104));
  memcpy(v103, v104, sizeof(v103));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E31E0, &qword_1B0EA09C8);
  sub_1B0929980();
  v52 = &v117;
  sub_1B0E45738();
  v57 = v105;
  v53 = 168;
  memcpy(v105, v52, sizeof(v105));
  sub_1B0929D20(v105, &v102);
  v55 = v101;
  memcpy(v101, v57, v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3218, &qword_1B0EA09F0);
  sub_1B0929EB0();
  v58 = sub_1B0E45378();
  v56 = &v100;
  swift_beginAccess();
  v59 = v91[2];
  v60 = v91[3];
  v61 = v91[4];
  v62 = v91[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B0929F38();

  result = v58;
  v34 = v59;
  v35 = v60;
  v36 = v61;
  v37 = v63;
  v38 = v62;
  *v63 = v58;
  v37[1] = v34;
  v37[2] = v35;
  v37[3] = v36;
  v37[4] = v38;
  return result;
}

id sub_1B092070C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v13 = a3;
  v8 = a1;
  v6[1] = a2;
  v16 = 0;
  v15 = 0;
  v11 = sub_1B0E42E68();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v11);
  v12 = v6 - v7;
  v16 = *v8;
  v15 = v4;
  (*(v9 + 16))(v3);
  v14 = sub_1B0829F6C(v12);
  (*(v9 + 8))(v12, v11);
  result = v14;
  *v13 = v14;
  return result;
}

uint64_t sub_1B092083C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v609 = a5;
  v747 = a1;
  v746 = a2;
  v744 = a3;
  v745 = a4;
  v610 = sub_1B074E050;
  v611 = sub_1B0394C30;
  v612 = sub_1B0394C24;
  v613 = sub_1B074DFFC;
  v614 = sub_1B039BA88;
  v615 = sub_1B039BB94;
  v616 = sub_1B0394C24;
  v617 = sub_1B039BBA0;
  v618 = sub_1B039BC08;
  v619 = 0x786F626C69616DLL;
  v620 = sub_1B06BA324;
  v621 = sub_1B074E0E4;
  v622 = sub_1B039BCF8;
  v623 = sub_1B092A7B4;
  v624 = sub_1B070B324;
  v625 = sub_1B0398F5C;
  v626 = sub_1B0398F5C;
  v627 = sub_1B0399178;
  v628 = sub_1B0398F5C;
  v629 = sub_1B0398F5C;
  v630 = sub_1B039BA94;
  v631 = sub_1B0398F5C;
  v632 = sub_1B0398F5C;
  v633 = sub_1B0399178;
  v634 = sub_1B0398F5C;
  v635 = sub_1B0398F5C;
  v636 = sub_1B03991EC;
  v637 = sub_1B0398F5C;
  v638 = sub_1B0398F5C;
  v639 = sub_1B03993BC;
  v640 = sub_1B0398F5C;
  v641 = sub_1B0398F5C;
  v642 = sub_1B039BCEC;
  v643 = sub_1B0398F5C;
  v644 = sub_1B0398F5C;
  v645 = sub_1B070B4B4;
  v646 = sub_1B074E050;
  v647 = sub_1B092A7BC;
  v648 = sub_1B0394C24;
  v649 = sub_1B074DFFC;
  v650 = sub_1B039BA88;
  v651 = sub_1B0394C24;
  v652 = sub_1B039BBA0;
  v653 = sub_1B039BC08;
  v654 = sub_1B06BA324;
  v655 = sub_1B074E0E4;
  v656 = sub_1B039BCF8;
  v657 = sub_1B03FB440;
  v658 = sub_1B039BCF8;
  v659 = sub_1B092A7B4;
  v660 = sub_1B070B324;
  v661 = sub_1B0398F5C;
  v662 = sub_1B0398F5C;
  v663 = sub_1B0399178;
  v664 = sub_1B0398F5C;
  v665 = sub_1B0398F5C;
  v666 = sub_1B039BA94;
  v667 = sub_1B0398F5C;
  v668 = sub_1B0398F5C;
  v669 = sub_1B0399178;
  v670 = sub_1B0398F5C;
  v671 = sub_1B0398F5C;
  v672 = sub_1B03991EC;
  v673 = sub_1B0398F5C;
  v674 = sub_1B0398F5C;
  v675 = sub_1B03993BC;
  v676 = sub_1B0398F5C;
  v677 = sub_1B0398F5C;
  v678 = sub_1B039BCEC;
  v679 = sub_1B0398F5C;
  v680 = sub_1B0398F5C;
  v681 = sub_1B039BCEC;
  v682 = sub_1B0398F5C;
  v683 = sub_1B0398F5C;
  v684 = sub_1B070B4B4;
  v685 = sub_1B074E050;
  v686 = sub_1B092A7BC;
  v687 = sub_1B0394C24;
  v688 = sub_1B074DFFC;
  v689 = sub_1B039BA88;
  v690 = sub_1B0394C24;
  v691 = sub_1B039BBA0;
  v692 = sub_1B039BC08;
  v693 = sub_1B06BA324;
  v694 = sub_1B074E0E4;
  v695 = sub_1B039BCF8;
  v696 = sub_1B03FB440;
  v697 = sub_1B039BCF8;
  v698 = sub_1B092A7B4;
  v699 = sub_1B070B324;
  v700 = sub_1B0398F5C;
  v701 = sub_1B0398F5C;
  v702 = sub_1B0399178;
  v703 = sub_1B0398F5C;
  v704 = sub_1B0398F5C;
  v705 = sub_1B039BA94;
  v706 = sub_1B0398F5C;
  v707 = sub_1B0398F5C;
  v708 = sub_1B0399178;
  v709 = sub_1B0398F5C;
  v710 = sub_1B0398F5C;
  v711 = sub_1B03991EC;
  v712 = sub_1B0398F5C;
  v713 = sub_1B0398F5C;
  v714 = sub_1B03993BC;
  v715 = sub_1B0398F5C;
  v716 = sub_1B0398F5C;
  v717 = sub_1B039BCEC;
  v718 = sub_1B0398F5C;
  v719 = sub_1B0398F5C;
  v720 = sub_1B039BCEC;
  v721 = sub_1B0398F5C;
  v722 = sub_1B0398F5C;
  v723 = sub_1B070B4B4;
  v794 = 0;
  v793 = 0;
  v792 = 0;
  v791 = 0;
  v790 = 0;
  v724 = 0;
  v764 = 0;
  v765 = 0;
  v759 = 0;
  v739 = 0;
  v725 = _s6LoggerVMa_1(0);
  v726 = (*(*(v725 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v727 = v313 - v726;
  v728 = sub_1B0E439A8();
  v729 = *(v728 - 8);
  v730 = v728 - 8;
  v731 = (*(v729 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v739);
  v732 = v313 - v731;
  v733 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v734 = v313 - v733;
  v735 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v736 = v313 - v735;
  v10 = _s18MailboxPersistenceVMa(v9);
  v737 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v738 = v313 - v737;
  v740 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v739);
  v741 = v313 - v740;
  v742 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v743 = v313 - v742;
  v748 = sub_1B0E42E68();
  v750 = *(v748 - 8);
  v749 = v748 - 8;
  v751 = v750;
  v752 = *(v750 + 64);
  v753 = (v752 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v747);
  v754 = v313 - v753;
  v755 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v756 = v313 - v755;
  v794 = v313 - v755;
  v757 = *v16;
  v793 = v757;
  v792 = v17;
  v791 = v18;
  v790 = v19 + 16;
  v758 = [v757 destinationMailboxURL];
  if (v758)
  {
    v608 = v758;
    v607 = v758;
    sub_1B0E42DE8();
    (*(v750 + 32))(v743, v754, v748);
    (*(v750 + 56))(v743, 0, 1, v748);
    MEMORY[0x1E69E5920](v607);
  }

  else
  {
    (*(v750 + 56))(v743, 1, 1, v748);
  }

  if ((*(v750 + 48))(v743, 1, v748) == 1)
  {
    v228 = v732;
    sub_1B06E3800(v743);
    (*(v729 + 16))(v228, v746, v728);

    sub_1B074B69C(v744 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v727);
    v229 = (v727 + *(v725 + 20));
    v345 = *v229;
    v346 = *(v229 + 1);
    v347 = *(v229 + 1);
    v348 = *(v229 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v727);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v344 = 36;
    v364 = 7;
    v230 = swift_allocObject();
    v231 = v346;
    v232 = v347;
    v233 = v348;
    v350 = v230;
    *(v230 + 16) = v345;
    *(v230 + 20) = v231;
    *(v230 + 24) = v232;
    *(v230 + 32) = v233;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v234 = swift_allocObject();
    v235 = v346;
    v236 = v347;
    v237 = v348;
    v343 = v234;
    *(v234 + 16) = v345;
    *(v234 + 20) = v235;
    *(v234 + 24) = v236;
    *(v234 + 32) = v237;

    v363 = 32;
    v238 = swift_allocObject();
    v239 = v343;
    v355 = v238;
    *(v238 + 16) = v610;
    *(v238 + 24) = v239;
    sub_1B0394868();
    sub_1B0394868();

    v240 = swift_allocObject();
    v241 = v346;
    v242 = v347;
    v243 = v348;
    v359 = v240;
    *(v240 + 16) = v345;
    *(v240 + 20) = v241;
    *(v240 + 24) = v242;
    *(v240 + 32) = v243;

    MEMORY[0x1E69E5928](v757);
    v357 = 24;
    v365 = swift_allocObject();
    *(v365 + 16) = v757;
    v391 = sub_1B0E43988();
    v392 = sub_1B0E458E8();
    v361 = 17;
    v367 = swift_allocObject();
    v352 = 16;
    *(v367 + 16) = 16;
    v368 = swift_allocObject();
    v354 = 4;
    *(v368 + 16) = 4;
    v244 = swift_allocObject();
    v349 = v244;
    *(v244 + 16) = v611;
    *(v244 + 24) = 0;
    v245 = swift_allocObject();
    v246 = v349;
    v369 = v245;
    *(v245 + 16) = v612;
    *(v245 + 24) = v246;
    v370 = swift_allocObject();
    *(v370 + 16) = 0;
    v371 = swift_allocObject();
    *(v371 + 16) = 1;
    v247 = swift_allocObject();
    v248 = v350;
    v351 = v247;
    *(v247 + 16) = v613;
    *(v247 + 24) = v248;
    v249 = swift_allocObject();
    v250 = v351;
    v372 = v249;
    *(v249 + 16) = v614;
    *(v249 + 24) = v250;
    v373 = swift_allocObject();
    *(v373 + 16) = v352;
    v374 = swift_allocObject();
    *(v374 + 16) = v354;
    v251 = swift_allocObject();
    v353 = v251;
    *(v251 + 16) = v615;
    *(v251 + 24) = 0;
    v252 = swift_allocObject();
    v253 = v353;
    v375 = v252;
    *(v252 + 16) = v616;
    *(v252 + 24) = v253;
    v376 = swift_allocObject();
    *(v376 + 16) = 0;
    v377 = swift_allocObject();
    *(v377 + 16) = v354;
    v254 = swift_allocObject();
    v255 = v355;
    v356 = v254;
    *(v254 + 16) = v617;
    *(v254 + 24) = v255;
    v256 = swift_allocObject();
    v257 = v356;
    v378 = v256;
    *(v256 + 16) = v618;
    *(v256 + 24) = v257;
    v379 = swift_allocObject();
    *(v379 + 16) = 112;
    v380 = swift_allocObject();
    v362 = 8;
    *(v380 + 16) = 8;
    v358 = swift_allocObject();
    *(v358 + 16) = v619;
    v258 = swift_allocObject();
    v259 = v358;
    v381 = v258;
    *(v258 + 16) = v620;
    *(v258 + 24) = v259;
    v382 = swift_allocObject();
    *(v382 + 16) = 37;
    v383 = swift_allocObject();
    *(v383 + 16) = v362;
    v260 = swift_allocObject();
    v261 = v359;
    v360 = v260;
    *(v260 + 16) = v621;
    *(v260 + 24) = v261;
    v262 = swift_allocObject();
    v263 = v360;
    v384 = v262;
    *(v262 + 16) = v622;
    *(v262 + 24) = v263;
    v385 = swift_allocObject();
    *(v385 + 16) = 64;
    v386 = swift_allocObject();
    *(v386 + 16) = v362;
    v264 = swift_allocObject();
    v265 = v365;
    v366 = v264;
    *(v264 + 16) = v623;
    *(v264 + 24) = v265;
    v266 = swift_allocObject();
    v267 = v366;
    v388 = v266;
    *(v266 + 16) = v624;
    *(v266 + 24) = v267;
    v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v387 = sub_1B0E46A48();
    v389 = v268;

    v269 = v367;
    v270 = v389;
    *v389 = v625;
    v270[1] = v269;

    v271 = v368;
    v272 = v389;
    v389[2] = v626;
    v272[3] = v271;

    v273 = v369;
    v274 = v389;
    v389[4] = v627;
    v274[5] = v273;

    v275 = v370;
    v276 = v389;
    v389[6] = v628;
    v276[7] = v275;

    v277 = v371;
    v278 = v389;
    v389[8] = v629;
    v278[9] = v277;

    v279 = v372;
    v280 = v389;
    v389[10] = v630;
    v280[11] = v279;

    v281 = v373;
    v282 = v389;
    v389[12] = v631;
    v282[13] = v281;

    v283 = v374;
    v284 = v389;
    v389[14] = v632;
    v284[15] = v283;

    v285 = v375;
    v286 = v389;
    v389[16] = v633;
    v286[17] = v285;

    v287 = v376;
    v288 = v389;
    v389[18] = v634;
    v288[19] = v287;

    v289 = v377;
    v290 = v389;
    v389[20] = v635;
    v290[21] = v289;

    v291 = v378;
    v292 = v389;
    v389[22] = v636;
    v292[23] = v291;

    v293 = v379;
    v294 = v389;
    v389[24] = v637;
    v294[25] = v293;

    v295 = v380;
    v296 = v389;
    v389[26] = v638;
    v296[27] = v295;

    v297 = v381;
    v298 = v389;
    v389[28] = v639;
    v298[29] = v297;

    v299 = v382;
    v300 = v389;
    v389[30] = v640;
    v300[31] = v299;

    v301 = v383;
    v302 = v389;
    v389[32] = v641;
    v302[33] = v301;

    v303 = v384;
    v304 = v389;
    v389[34] = v642;
    v304[35] = v303;

    v305 = v385;
    v306 = v389;
    v389[36] = v643;
    v306[37] = v305;

    v307 = v386;
    v308 = v389;
    v389[38] = v644;
    v308[39] = v307;

    v309 = v388;
    v310 = v389;
    v389[40] = v645;
    v310[41] = v309;
    sub_1B0394964();

    if (os_log_type_enabled(v391, v392))
    {
      v311 = v724;
      v336 = sub_1B0E45D78();
      v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v335 = 1;
      v337 = sub_1B03949A8(1, v334, v334);
      v338 = sub_1B03949A8(v335, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v339 = &v787;
      v787 = v336;
      v340 = &v786;
      v786 = v337;
      v341 = &v785;
      v785 = v338;
      sub_1B0394A48(3, &v787);
      sub_1B0394A48(7, v339);
      v783 = v625;
      v784 = v367;
      sub_1B03949FC(&v783, v339, v340, v341);
      v342 = v311;
      if (v311)
      {

        __break(1u);
      }

      else
      {
        v783 = v626;
        v784 = v368;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v333 = 0;
        v783 = v627;
        v784 = v369;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v332 = 0;
        v783 = v628;
        v784 = v370;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v331 = 0;
        v783 = v629;
        v784 = v371;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v330 = 0;
        v783 = v630;
        v784 = v372;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v329 = 0;
        v783 = v631;
        v784 = v373;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v328 = 0;
        v783 = v632;
        v784 = v374;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v327 = 0;
        v783 = v633;
        v784 = v375;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v326 = 0;
        v783 = v634;
        v784 = v376;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v325 = 0;
        v783 = v635;
        v784 = v377;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v324 = 0;
        v783 = v636;
        v784 = v378;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v323 = 0;
        v783 = v637;
        v784 = v379;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v322 = 0;
        v783 = v638;
        v784 = v380;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v321 = 0;
        v783 = v639;
        v784 = v381;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v320 = 0;
        v783 = v640;
        v784 = v382;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v319 = 0;
        v783 = v641;
        v784 = v383;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v318 = 0;
        v783 = v642;
        v784 = v384;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v317 = 0;
        v783 = v643;
        v784 = v385;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v316 = 0;
        v783 = v644;
        v784 = v386;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        v315 = 0;
        v783 = v645;
        v784 = v388;
        sub_1B03949FC(&v783, &v787, &v786, &v785);
        _os_log_impl(&dword_1B0389000, v391, v392, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Action has no target mailbox for move/copy action %@", v336, 0x35u);
        v314 = 1;
        sub_1B03998A8(v337, 1, v334);
        sub_1B03998A8(v338, v314, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v391);
    (*(v729 + 8))(v732, v728);
    MEMORY[0x1E69E5928](v757);
    v313[0] = [v757 persistentID];
    MEMORY[0x1E69E5920](v757);
    v313[1] = v789;
    v789[0] = v313[0];
    v313[2] = &v788;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
    sub_1B0E454D8();
    swift_endAccess();
    result = MEMORY[0x1E69E5920](v789[1]);
    v312 = v609;
    *v609 = 0;
    v312[1] = 0;
    v312[2] = 0;
    v312[3] = 0;
    v312[4] = 0;
  }

  else
  {
    v20 = v738;
    v600 = *(v750 + 32);
    v601 = v750 + 32;
    v600(v756, v743, v748);
    sub_1B03F4D78(v744 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxPersistence, v20);
    v602 = *(v750 + 16);
    v603 = v750 + 16;
    v602(v741, v756, v748);
    v604 = *(v750 + 56);
    v605 = v750 + 56;
    v606 = 1;
    v604(v741, 0);
    sub_1B07BF670(v741, &v781);
    sub_1B06E3800(v741);
    sub_1B03F4F08(v738);
    v779[2] = v781;
    v780 = v782 & 1 & v606;
    v599 = v780 == 0;
    if (v780)
    {
      (*(v729 + 16))(v734, v746, v728);

      sub_1B074B69C(v744 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v727);
      v129 = (v727 + *(v725 + 20));
      v428 = *v129;
      v429 = *(v129 + 1);
      v430 = *(v129 + 1);
      v431 = *(v129 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v727);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v427 = 36;
      v450 = 7;
      v130 = swift_allocObject();
      v131 = v429;
      v132 = v430;
      v133 = v431;
      v435 = v130;
      *(v130 + 16) = v428;
      *(v130 + 20) = v131;
      *(v130 + 24) = v132;
      *(v130 + 32) = v133;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v134 = swift_allocObject();
      v135 = v429;
      v136 = v430;
      v137 = v431;
      v426 = v134;
      *(v134 + 16) = v428;
      *(v134 + 20) = v135;
      *(v134 + 24) = v136;
      *(v134 + 32) = v137;

      v449 = 32;
      v138 = swift_allocObject();
      v139 = v426;
      v440 = v138;
      *(v138 + 16) = v646;
      *(v138 + 24) = v139;
      sub_1B0394868();
      sub_1B0394868();

      v140 = swift_allocObject();
      v141 = v429;
      v142 = v430;
      v143 = v431;
      v443 = v140;
      *(v140 + 16) = v428;
      *(v140 + 20) = v141;
      *(v140 + 24) = v142;
      *(v140 + 32) = v143;

      v602(v754, v756, v748);
      v432 = (*(v751 + 80) + 16) & ~*(v751 + 80);
      v433 = swift_allocObject();
      v600((v433 + v432), v754, v748);

      v144 = swift_allocObject();
      v145 = v433;
      v445 = v144;
      *(v144 + 16) = v647;
      *(v144 + 24) = v145;

      MEMORY[0x1E69E5928](v757);
      v453 = 24;
      v451 = swift_allocObject();
      *(v451 + 16) = v757;
      v481 = sub_1B0E43988();
      v482 = sub_1B0E45908();
      v447 = 17;
      v454 = swift_allocObject();
      v437 = 16;
      *(v454 + 16) = 16;
      v455 = swift_allocObject();
      v439 = 4;
      *(v455 + 16) = 4;
      v146 = swift_allocObject();
      v434 = v146;
      *(v146 + 16) = v611;
      *(v146 + 24) = 0;
      v147 = swift_allocObject();
      v148 = v434;
      v456 = v147;
      *(v147 + 16) = v648;
      *(v147 + 24) = v148;
      v457 = swift_allocObject();
      *(v457 + 16) = 0;
      v458 = swift_allocObject();
      *(v458 + 16) = 1;
      v149 = swift_allocObject();
      v150 = v435;
      v436 = v149;
      *(v149 + 16) = v649;
      *(v149 + 24) = v150;
      v151 = swift_allocObject();
      v152 = v436;
      v459 = v151;
      *(v151 + 16) = v650;
      *(v151 + 24) = v152;
      v460 = swift_allocObject();
      *(v460 + 16) = v437;
      v461 = swift_allocObject();
      *(v461 + 16) = v439;
      v153 = swift_allocObject();
      v438 = v153;
      *(v153 + 16) = v615;
      *(v153 + 24) = 0;
      v154 = swift_allocObject();
      v155 = v438;
      v462 = v154;
      *(v154 + 16) = v651;
      *(v154 + 24) = v155;
      v463 = swift_allocObject();
      *(v463 + 16) = 0;
      v464 = swift_allocObject();
      *(v464 + 16) = v439;
      v156 = swift_allocObject();
      v157 = v440;
      v441 = v156;
      *(v156 + 16) = v652;
      *(v156 + 24) = v157;
      v158 = swift_allocObject();
      v159 = v441;
      v465 = v158;
      *(v158 + 16) = v653;
      *(v158 + 24) = v159;
      v466 = swift_allocObject();
      *(v466 + 16) = 112;
      v467 = swift_allocObject();
      v448 = 8;
      *(v467 + 16) = 8;
      v442 = swift_allocObject();
      *(v442 + 16) = v619;
      v160 = swift_allocObject();
      v161 = v442;
      v468 = v160;
      *(v160 + 16) = v654;
      *(v160 + 24) = v161;
      v469 = swift_allocObject();
      *(v469 + 16) = 37;
      v470 = swift_allocObject();
      *(v470 + 16) = v448;
      v162 = swift_allocObject();
      v163 = v443;
      v444 = v162;
      *(v162 + 16) = v655;
      *(v162 + 24) = v163;
      v164 = swift_allocObject();
      v165 = v444;
      v471 = v164;
      *(v164 + 16) = v656;
      *(v164 + 24) = v165;
      v472 = swift_allocObject();
      *(v472 + 16) = 32;
      v473 = swift_allocObject();
      *(v473 + 16) = v448;
      v166 = swift_allocObject();
      v167 = v445;
      v446 = v166;
      *(v166 + 16) = v657;
      *(v166 + 24) = v167;
      v168 = swift_allocObject();
      v169 = v446;
      v474 = v168;
      *(v168 + 16) = v658;
      *(v168 + 24) = v169;
      v475 = swift_allocObject();
      *(v475 + 16) = 64;
      v476 = swift_allocObject();
      *(v476 + 16) = v448;
      v170 = swift_allocObject();
      v171 = v451;
      v452 = v170;
      *(v170 + 16) = v659;
      *(v170 + 24) = v171;
      v172 = swift_allocObject();
      v173 = v452;
      v478 = v172;
      *(v172 + 16) = v660;
      *(v172 + 24) = v173;
      v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v477 = sub_1B0E46A48();
      v479 = v174;

      v175 = v454;
      v176 = v479;
      *v479 = v661;
      v176[1] = v175;

      v177 = v455;
      v178 = v479;
      v479[2] = v662;
      v178[3] = v177;

      v179 = v456;
      v180 = v479;
      v479[4] = v663;
      v180[5] = v179;

      v181 = v457;
      v182 = v479;
      v479[6] = v664;
      v182[7] = v181;

      v183 = v458;
      v184 = v479;
      v479[8] = v665;
      v184[9] = v183;

      v185 = v459;
      v186 = v479;
      v479[10] = v666;
      v186[11] = v185;

      v187 = v460;
      v188 = v479;
      v479[12] = v667;
      v188[13] = v187;

      v189 = v461;
      v190 = v479;
      v479[14] = v668;
      v190[15] = v189;

      v191 = v462;
      v192 = v479;
      v479[16] = v669;
      v192[17] = v191;

      v193 = v463;
      v194 = v479;
      v479[18] = v670;
      v194[19] = v193;

      v195 = v464;
      v196 = v479;
      v479[20] = v671;
      v196[21] = v195;

      v197 = v465;
      v198 = v479;
      v479[22] = v672;
      v198[23] = v197;

      v199 = v466;
      v200 = v479;
      v479[24] = v673;
      v200[25] = v199;

      v201 = v467;
      v202 = v479;
      v479[26] = v674;
      v202[27] = v201;

      v203 = v468;
      v204 = v479;
      v479[28] = v675;
      v204[29] = v203;

      v205 = v469;
      v206 = v479;
      v479[30] = v676;
      v206[31] = v205;

      v207 = v470;
      v208 = v479;
      v479[32] = v677;
      v208[33] = v207;

      v209 = v471;
      v210 = v479;
      v479[34] = v678;
      v210[35] = v209;

      v211 = v472;
      v212 = v479;
      v479[36] = v679;
      v212[37] = v211;

      v213 = v473;
      v214 = v479;
      v479[38] = v680;
      v214[39] = v213;

      v215 = v474;
      v216 = v479;
      v479[40] = v681;
      v216[41] = v215;

      v217 = v475;
      v218 = v479;
      v479[42] = v682;
      v218[43] = v217;

      v219 = v476;
      v220 = v479;
      v479[44] = v683;
      v220[45] = v219;

      v221 = v478;
      v222 = v479;
      v479[46] = v684;
      v222[47] = v221;
      sub_1B0394964();

      if (os_log_type_enabled(v481, v482))
      {
        v223 = v724;
        v419 = sub_1B0E45D78();
        v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v420 = sub_1B03949A8(1, v418, v418);
        v421 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v422 = &v777;
        v777 = v419;
        v423 = &v776;
        v776 = v420;
        v424 = &v775;
        v775 = v421;
        sub_1B0394A48(3, &v777);
        sub_1B0394A48(8, v422);
        v773 = v661;
        v774 = v454;
        sub_1B03949FC(&v773, v422, v423, v424);
        v425 = v223;
        if (v223)
        {

          __break(1u);
        }

        else
        {
          v773 = v662;
          v774 = v455;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v417 = 0;
          v773 = v663;
          v774 = v456;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v416 = 0;
          v773 = v664;
          v774 = v457;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v415 = 0;
          v773 = v665;
          v774 = v458;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v414 = 0;
          v773 = v666;
          v774 = v459;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v413 = 0;
          v773 = v667;
          v774 = v460;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v412 = 0;
          v773 = v668;
          v774 = v461;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v411 = 0;
          v773 = v669;
          v774 = v462;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v410 = 0;
          v773 = v670;
          v774 = v463;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v409 = 0;
          v773 = v671;
          v774 = v464;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v408 = 0;
          v773 = v672;
          v774 = v465;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v407 = 0;
          v773 = v673;
          v774 = v466;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v406 = 0;
          v773 = v674;
          v774 = v467;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v405 = 0;
          v773 = v675;
          v774 = v468;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v404 = 0;
          v773 = v676;
          v774 = v469;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v403 = 0;
          v773 = v677;
          v774 = v470;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v402 = 0;
          v773 = v678;
          v774 = v471;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v401 = 0;
          v773 = v679;
          v774 = v472;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v400 = 0;
          v773 = v680;
          v774 = v473;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v399 = 0;
          v773 = v681;
          v774 = v474;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v398 = 0;
          v773 = v682;
          v774 = v475;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v397 = 0;
          v773 = v683;
          v774 = v476;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          v396 = 0;
          v773 = v684;
          v774 = v478;
          sub_1B03949FC(&v773, &v777, &v776, &v775);
          _os_log_impl(&dword_1B0389000, v481, v482, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Target mailbox URL '%s' for move/copy action %@ no longer exists.", v419, 0x3Fu);
          sub_1B03998A8(v420, 1, v418);
          sub_1B03998A8(v421, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v481);
      (*(v729 + 8))(v734, v728);
      MEMORY[0x1E69E5928](v757);
      v393 = [v757 persistentID];
      MEMORY[0x1E69E5920](v757);
      v394 = v779;
      v779[0] = v393;
      v395 = &v778;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
      sub_1B0E454D8();
      swift_endAccess();
      MEMORY[0x1E69E5920](v779[1]);
      v224 = v609;
      v225 = v750;
      v226 = v756;
      v227 = v748;
      *v609 = 0;
      v224[1] = 0;
      v224[2] = 0;
      v224[3] = 0;
      v224[4] = 0;
      return (*(v225 + 8))(v226, v227);
    }

    else
    {
      sub_1B03F4D78(v744 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxPersistence, v738);
      v602(v741, v756, v748);
      (v604)(v741, 0, 1, v748);
      v598 = sub_1B07BF5C8(v741);
      v597 = v21;
      sub_1B06E3800(v741);
      sub_1B03F4F08(v738);
      if (v598)
      {
        v595 = v598;
        v596 = v597;
        v588 = v597;
        v589 = v598;
        v764 = v598;
        v765 = v597;
        v593 = [v757 itemsToCopy];
        v590 = sub_1B071C094();
        v592 = sub_1B0E451B8();
        v763[2] = v592;
        v591 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
        sub_1B071C0F8();
        v594 = sub_1B0E45748();

        MEMORY[0x1E69E5920](v593);
        if (v594)
        {
          MEMORY[0x1E69E5928](v757);
          v573 = [v757 persistentID];
          MEMORY[0x1E69E5920](v757);
          v574 = v763;
          v763[0] = v573;
          v575 = &v762;
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
          sub_1B0E454D8();
          swift_endAccess();
          MEMORY[0x1E69E5920](v763[1]);
          v29 = v609;
          *v609 = 0;
          v29[1] = 0;
          v29[2] = 0;
          v29[3] = 0;
          v29[4] = 0;
        }

        else
        {
          v22 = [v757 transferType];
          v587 = &v761;
          v761 = v22;
          v585 = &v760;
          v760 = 0;
          v586 = type metadata accessor for ECTransferMessageActionType(0);
          sub_1B071C014();
          v584 = (sub_1B0E46AE8() & 1) != 0;
          v576 = v584;
          v759 = v584;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v578 = [v757 itemsToCopy];
          v577 = sub_1B0E451B8();
          MEMORY[0x1E69E5928](v757);
          sub_1B09258B4(v576, v589, v588, v577, v757, v795);
          v579 = v795[0];
          v580 = v796;
          v581 = v797;
          v582 = v798;
          v583 = v799;
          MEMORY[0x1E69E5920](v578);
          v23 = v580;
          v24 = v581;
          v25 = v582;
          v26 = v609;
          v27 = v583;
          *v609 = v579 & 1;
          v26[1] = v23;
          v26[2] = v24;
          v26[3] = v25;
          v26[4] = v27;
        }

        return (*(v750 + 8))(v756, v748);
      }

      else
      {
        (*(v729 + 16))(v736, v746, v728);

        sub_1B074B69C(v744 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v727);
        v30 = (v727 + *(v725 + 20));
        v518 = *v30;
        v519 = *(v30 + 1);
        v520 = *(v30 + 1);
        v521 = *(v30 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v727);

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v517 = 36;
        v540 = 7;
        v31 = swift_allocObject();
        v32 = v519;
        v33 = v520;
        v34 = v521;
        v525 = v31;
        *(v31 + 16) = v518;
        *(v31 + 20) = v32;
        *(v31 + 24) = v33;
        *(v31 + 32) = v34;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v35 = swift_allocObject();
        v36 = v519;
        v37 = v520;
        v38 = v521;
        v516 = v35;
        *(v35 + 16) = v518;
        *(v35 + 20) = v36;
        *(v35 + 24) = v37;
        *(v35 + 32) = v38;

        v539 = 32;
        v39 = swift_allocObject();
        v40 = v516;
        v530 = v39;
        *(v39 + 16) = v685;
        *(v39 + 24) = v40;
        sub_1B0394868();
        sub_1B0394868();

        v41 = swift_allocObject();
        v42 = v519;
        v43 = v520;
        v44 = v521;
        v533 = v41;
        *(v41 + 16) = v518;
        *(v41 + 20) = v42;
        *(v41 + 24) = v43;
        *(v41 + 32) = v44;

        v602(v754, v756, v748);
        v522 = (*(v751 + 80) + 16) & ~*(v751 + 80);
        v523 = swift_allocObject();
        v600((v523 + v522), v754, v748);

        v45 = swift_allocObject();
        v46 = v523;
        v535 = v45;
        *(v45 + 16) = v686;
        *(v45 + 24) = v46;

        MEMORY[0x1E69E5928](v757);
        v543 = 24;
        v541 = swift_allocObject();
        *(v541 + 16) = v757;
        v571 = sub_1B0E43988();
        v572 = sub_1B0E458E8();
        v537 = 17;
        v544 = swift_allocObject();
        v527 = 16;
        *(v544 + 16) = 16;
        v545 = swift_allocObject();
        v529 = 4;
        *(v545 + 16) = 4;
        v47 = swift_allocObject();
        v524 = v47;
        *(v47 + 16) = v611;
        *(v47 + 24) = 0;
        v48 = swift_allocObject();
        v49 = v524;
        v546 = v48;
        *(v48 + 16) = v687;
        *(v48 + 24) = v49;
        v547 = swift_allocObject();
        *(v547 + 16) = 0;
        v548 = swift_allocObject();
        *(v548 + 16) = 1;
        v50 = swift_allocObject();
        v51 = v525;
        v526 = v50;
        *(v50 + 16) = v688;
        *(v50 + 24) = v51;
        v52 = swift_allocObject();
        v53 = v526;
        v549 = v52;
        *(v52 + 16) = v689;
        *(v52 + 24) = v53;
        v550 = swift_allocObject();
        *(v550 + 16) = v527;
        v551 = swift_allocObject();
        *(v551 + 16) = v529;
        v54 = swift_allocObject();
        v528 = v54;
        *(v54 + 16) = v615;
        *(v54 + 24) = 0;
        v55 = swift_allocObject();
        v56 = v528;
        v552 = v55;
        *(v55 + 16) = v690;
        *(v55 + 24) = v56;
        v553 = swift_allocObject();
        *(v553 + 16) = 0;
        v554 = swift_allocObject();
        *(v554 + 16) = v529;
        v57 = swift_allocObject();
        v58 = v530;
        v531 = v57;
        *(v57 + 16) = v691;
        *(v57 + 24) = v58;
        v59 = swift_allocObject();
        v60 = v531;
        v555 = v59;
        *(v59 + 16) = v692;
        *(v59 + 24) = v60;
        v556 = swift_allocObject();
        *(v556 + 16) = 112;
        v557 = swift_allocObject();
        v538 = 8;
        *(v557 + 16) = 8;
        v532 = swift_allocObject();
        *(v532 + 16) = v619;
        v61 = swift_allocObject();
        v62 = v532;
        v558 = v61;
        *(v61 + 16) = v693;
        *(v61 + 24) = v62;
        v559 = swift_allocObject();
        *(v559 + 16) = 37;
        v560 = swift_allocObject();
        *(v560 + 16) = v538;
        v63 = swift_allocObject();
        v64 = v533;
        v534 = v63;
        *(v63 + 16) = v694;
        *(v63 + 24) = v64;
        v65 = swift_allocObject();
        v66 = v534;
        v561 = v65;
        *(v65 + 16) = v695;
        *(v65 + 24) = v66;
        v562 = swift_allocObject();
        *(v562 + 16) = 32;
        v563 = swift_allocObject();
        *(v563 + 16) = v538;
        v67 = swift_allocObject();
        v68 = v535;
        v536 = v67;
        *(v67 + 16) = v696;
        *(v67 + 24) = v68;
        v69 = swift_allocObject();
        v70 = v536;
        v564 = v69;
        *(v69 + 16) = v697;
        *(v69 + 24) = v70;
        v565 = swift_allocObject();
        *(v565 + 16) = 64;
        v566 = swift_allocObject();
        *(v566 + 16) = v538;
        v71 = swift_allocObject();
        v72 = v541;
        v542 = v71;
        *(v71 + 16) = v698;
        *(v71 + 24) = v72;
        v73 = swift_allocObject();
        v74 = v542;
        v568 = v73;
        *(v73 + 16) = v699;
        *(v73 + 24) = v74;
        v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v567 = sub_1B0E46A48();
        v569 = v75;

        v76 = v544;
        v77 = v569;
        *v569 = v700;
        v77[1] = v76;

        v78 = v545;
        v79 = v569;
        v569[2] = v701;
        v79[3] = v78;

        v80 = v546;
        v81 = v569;
        v569[4] = v702;
        v81[5] = v80;

        v82 = v547;
        v83 = v569;
        v569[6] = v703;
        v83[7] = v82;

        v84 = v548;
        v85 = v569;
        v569[8] = v704;
        v85[9] = v84;

        v86 = v549;
        v87 = v569;
        v569[10] = v705;
        v87[11] = v86;

        v88 = v550;
        v89 = v569;
        v569[12] = v706;
        v89[13] = v88;

        v90 = v551;
        v91 = v569;
        v569[14] = v707;
        v91[15] = v90;

        v92 = v552;
        v93 = v569;
        v569[16] = v708;
        v93[17] = v92;

        v94 = v553;
        v95 = v569;
        v569[18] = v709;
        v95[19] = v94;

        v96 = v554;
        v97 = v569;
        v569[20] = v710;
        v97[21] = v96;

        v98 = v555;
        v99 = v569;
        v569[22] = v711;
        v99[23] = v98;

        v100 = v556;
        v101 = v569;
        v569[24] = v712;
        v101[25] = v100;

        v102 = v557;
        v103 = v569;
        v569[26] = v713;
        v103[27] = v102;

        v104 = v558;
        v105 = v569;
        v569[28] = v714;
        v105[29] = v104;

        v106 = v559;
        v107 = v569;
        v569[30] = v715;
        v107[31] = v106;

        v108 = v560;
        v109 = v569;
        v569[32] = v716;
        v109[33] = v108;

        v110 = v561;
        v111 = v569;
        v569[34] = v717;
        v111[35] = v110;

        v112 = v562;
        v113 = v569;
        v569[36] = v718;
        v113[37] = v112;

        v114 = v563;
        v115 = v569;
        v569[38] = v719;
        v115[39] = v114;

        v116 = v564;
        v117 = v569;
        v569[40] = v720;
        v117[41] = v116;

        v118 = v565;
        v119 = v569;
        v569[42] = v721;
        v119[43] = v118;

        v120 = v566;
        v121 = v569;
        v569[44] = v722;
        v121[45] = v120;

        v122 = v568;
        v123 = v569;
        v569[46] = v723;
        v123[47] = v122;
        sub_1B0394964();

        if (os_log_type_enabled(v571, v572))
        {
          v124 = v724;
          v509 = sub_1B0E45D78();
          v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v510 = sub_1B03949A8(1, v508, v508);
          v511 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v512 = &v770;
          v770 = v509;
          v513 = &v769;
          v769 = v510;
          v514 = &v768;
          v768 = v511;
          sub_1B0394A48(3, &v770);
          sub_1B0394A48(8, v512);
          v766 = v700;
          v767 = v544;
          sub_1B03949FC(&v766, v512, v513, v514);
          v515 = v124;
          if (v124)
          {

            __break(1u);
          }

          else
          {
            v766 = v701;
            v767 = v545;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v507 = 0;
            v766 = v702;
            v767 = v546;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v506 = 0;
            v766 = v703;
            v767 = v547;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v505 = 0;
            v766 = v704;
            v767 = v548;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v504 = 0;
            v766 = v705;
            v767 = v549;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v503 = 0;
            v766 = v706;
            v767 = v550;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v502 = 0;
            v766 = v707;
            v767 = v551;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v501 = 0;
            v766 = v708;
            v767 = v552;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v500 = 0;
            v766 = v709;
            v767 = v553;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v499 = 0;
            v766 = v710;
            v767 = v554;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v498 = 0;
            v766 = v711;
            v767 = v555;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v497 = 0;
            v766 = v712;
            v767 = v556;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v496 = 0;
            v766 = v713;
            v767 = v557;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v495 = 0;
            v766 = v714;
            v767 = v558;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v494 = 0;
            v766 = v715;
            v767 = v559;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v493 = 0;
            v766 = v716;
            v767 = v560;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v492 = 0;
            v766 = v717;
            v767 = v561;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v491 = 0;
            v766 = v718;
            v767 = v562;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v490 = 0;
            v766 = v719;
            v767 = v563;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v489 = 0;
            v766 = v720;
            v767 = v564;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v488 = 0;
            v766 = v721;
            v767 = v565;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v487 = 0;
            v766 = v722;
            v767 = v566;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            v486 = 0;
            v766 = v723;
            v767 = v568;
            sub_1B03949FC(&v766, &v770, &v769, &v768);
            _os_log_impl(&dword_1B0389000, v571, v572, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Unable to get target mailbox name for URL '%s' for move/copy action %@", v509, 0x3Fu);
            sub_1B03998A8(v510, 1, v508);
            sub_1B03998A8(v511, 2, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v571);
        (*(v729 + 8))(v736, v728);
        MEMORY[0x1E69E5928](v757);
        v483 = [v757 persistentID];
        MEMORY[0x1E69E5920](v757);
        v484 = v772;
        v772[0] = v483;
        v485 = &v771;
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
        sub_1B0E454D8();
        swift_endAccess();
        MEMORY[0x1E69E5920](v772[1]);
        v125 = v609;
        v126 = v750;
        v127 = v756;
        v128 = v748;
        *v609 = 0;
        v125[1] = 0;
        v125[2] = 0;
        v125[3] = 0;
        v125[4] = 0;
        return (*(v126 + 8))(v127, v128);
      }
    }
  }

  return result;
}