double sub_1DA84517C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD53F8, &qword_1DA95AFB8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  swift_allocObject();
  swift_weakInit();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v0);
  sub_1DA940DC4();

  return result;
}

uint64_t sub_1DA8452B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DA93FB24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  sub_1DA93FB14();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
    v12 = MEMORY[0x1EEE9AC00](Strong);
    v19[-4] = v12;
    v19[-3] = v9;
    v19[-2] = a1;
    MEMORY[0x1EEE9AC00](v12);
    v19[-2] = sub_1DA84A81C;
    v19[-1] = v13;

    os_unfair_lock_lock(v11 + 4);
    v19[1] = a1;
    sub_1DA84AA88(v14);
    os_unfair_lock_unlock(v11 + 4);

    v15 = swift_allocObject();
    swift_weakInit();
    (*(v4 + 16))(v7, v9, v3);
    v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    (*(v4 + 32))(v17 + v16, v7, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5960, &qword_1DA95B160);
    sub_1DA940D44();
  }

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1DA845540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FF0, &unk_1DA95B220);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1DA93FB24();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5960, &qword_1DA95B160);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a3, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  swift_beginAccess();
  sub_1DA8F04CC(v7, v10);
  return swift_endAccess();
}

double sub_1DA845720(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
    v6 = MEMORY[0x1EEE9AC00](Strong);
    MEMORY[0x1EEE9AC00](v6);

    os_unfair_lock_lock(v4 + 4);
    sub_1DA84AA88(v5);
    os_unfair_lock_unlock(v4 + 4);
  }

  return result;
}

uint64_t sub_1DA84581C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FF0, &unk_1DA95B220);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_1DA93FB24();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5960, &qword_1DA95B160);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  swift_beginAccess();
  sub_1DA8F04CC(v5, v8);
  return swift_endAccess();
}

double sub_1DA8459BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5400, &qword_1DA95AFC0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for UserNotificationsVendorTransaction(0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v0);
  sub_1DA940DC4();

  return result;
}

uint64_t sub_1DA845AF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DA93FB24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  sub_1DA93FB14();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
    v12 = MEMORY[0x1EEE9AC00](Strong);
    v19[-4] = v12;
    v19[-3] = v9;
    v19[-2] = a1;
    MEMORY[0x1EEE9AC00](v12);
    v19[-2] = sub_1DA84A7B8;
    v19[-1] = v13;

    os_unfair_lock_lock(v11 + 4);
    v19[1] = a1;
    sub_1DA84AA88(v14);
    os_unfair_lock_unlock(v11 + 4);

    v15 = swift_allocObject();
    swift_weakInit();
    (*(v4 + 16))(v7, v9, v3);
    v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    (*(v4 + 32))(v17 + v16, v7, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
    sub_1DA940D44();
  }

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1DA845D88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5580, &qword_1DA95B218);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_1DA93FB24();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a2);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, a3, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  swift_beginAccess();
  sub_1DA8F0724(v8, v11);
  return swift_endAccess();
}

double sub_1DA845F68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
    v6 = MEMORY[0x1EEE9AC00](Strong);
    MEMORY[0x1EEE9AC00](v6);

    os_unfair_lock_lock(v4 + 4);
    sub_1DA84AA88(v5);
    os_unfair_lock_unlock(v4 + 4);
  }

  return result;
}

uint64_t sub_1DA846064(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5580, &qword_1DA95B218);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1DA93FB24();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  swift_beginAccess();
  sub_1DA8F0724(v6, v9);
  return swift_endAccess();
}

uint64_t sub_1DA846204()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5400, &qword_1DA95AFC0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  type metadata accessor for UserNotificationsVendorTransaction(0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v0);
  return sub_1DA940DC4();
}

uint64_t sub_1DA846314(char *a1, uint64_t a2)
{
  v85 = a1;
  v80 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  v5 = MEMORY[0x1EEE9AC00](v84);
  v82 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v76 = &v74 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v78 = &v74 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v74 - v11;
  v12 = sub_1DA93FB24();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v81 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v79 = &v74 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v74 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v74 - v21;
  sub_1DA93FB14();
  v23 = *(a2 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
  v89 = a2;
  v90 = v22;
  v91 = a1;
  v86 = sub_1DA84A738;
  v87 = &v88;
  os_unfair_lock_lock(v23 + 4);
  sub_1DA84A760(v24);
  v75 = 0;
  os_unfair_lock_unlock(v23 + 4);
  v25 = *(v13 + 16);
  v25(v20, v22, v12);
  v26 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v27 = v13;
  v28 = v83;
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  (*(v27 + 32))(v29 + v26, v20, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
  sub_1DA940D44();
  v30 = v77;
  v85 = v22;
  v25(v77, v22, v12);
  swift_storeEnumTagMultiPayload();
  v31 = v28 + *(v84 + 24);
  v80 = a2;
  v25(v31, (a2 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_uuid), v12);
  sub_1DA849F78(v30, v28, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  sub_1DA93FB14();
  sub_1DA849FE0(v30, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  if (qword_1EE110DD0 != -1)
  {
    swift_once();
  }

  v32 = sub_1DA9405A4();
  v33 = __swift_project_value_buffer(v32, qword_1EE110DE0);
  v34 = v79;
  v25(v79, v85, v12);
  v35 = v78;
  sub_1DA849F78(v28, v78, type metadata accessor for UserNotificationsVendorClientTransaction);
  v77 = v33;
  v36 = sub_1DA940584();
  v37 = sub_1DA940F34();
  v38 = os_log_type_enabled(v36, v37);
  v74 = v25;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = v27;
    v41 = swift_slowAlloc();
    v92[0] = v41;
    *v39 = 136315394;
    sub_1DA84A9BC(&qword_1EE114C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v42 = sub_1DA941614();
    v43 = v34;
    v44 = v35;
    v46 = v45;
    v79 = *(v40 + 8);
    (v79)(v43, v12);
    v47 = sub_1DA7AE6E8(v42, v46, v92);

    *(v39 + 4) = v47;
    *(v39 + 12) = 2080;
    sub_1DA849F78(v44, v76, type metadata accessor for UserNotificationsVendorClientTransaction);
    v48 = sub_1DA940A74();
    v50 = v49;
    sub_1DA849FE0(v44, type metadata accessor for UserNotificationsVendorClientTransaction);
    v51 = sub_1DA7AE6E8(v48, v50, v92);

    *(v39 + 14) = v51;
    _os_log_impl(&dword_1DA7A9000, v36, v37, "historicalNotificationsStream() continuationUUID: %s %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v41, -1, -1);
    v52 = v39;
    v28 = v83;
    MEMORY[0x1E12739F0](v52, -1, -1);
  }

  else
  {

    sub_1DA849FE0(v35, type metadata accessor for UserNotificationsVendorClientTransaction);
    v79 = *(v27 + 8);
    (v79)(v34, v12);
  }

  v53 = v81;
  v54 = v82;
  if (!*(v80 + 32))
  {
    sub_1DA849FE0(v28, type metadata accessor for UserNotificationsVendorClientTransaction);
    return (v79)(v85, v12);
  }

  sub_1DA84A9BC(&qword_1EE113F68, type metadata accessor for UserNotificationsVendorClientTransaction, &unk_1DA963390);

  v55 = v75;
  sub_1DA940624();
  if (!v55)
  {
    sub_1DA849FE0(v28, type metadata accessor for UserNotificationsVendorClientTransaction);

    return (v79)(v85, v12);
  }

  v74(v53, v85, v12);
  sub_1DA849F78(v28, v54, type metadata accessor for UserNotificationsVendorClientTransaction);
  v56 = sub_1DA940584();
  v57 = sub_1DA940F14();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v92[0] = v82;
    *v58 = 136315394;
    sub_1DA84A9BC(&qword_1EE114C50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    LODWORD(v81) = v57;
    v59 = sub_1DA941614();
    v60 = v53;
    v62 = v61;
    v63 = v79;
    (v79)(v60, v12);
    v64 = sub_1DA7AE6E8(v59, v62, v92);

    *(v58 + 4) = v64;
    *(v58 + 12) = 2080;
    sub_1DA849F78(v54, v76, type metadata accessor for UserNotificationsVendorClientTransaction);
    v65 = sub_1DA940A74();
    v67 = v66;
    sub_1DA849FE0(v54, type metadata accessor for UserNotificationsVendorClientTransaction);
    v68 = sub_1DA7AE6E8(v65, v67, v92);

    *(v58 + 14) = v68;
    v69 = v63;
    _os_log_impl(&dword_1DA7A9000, v56, v81, "historicalNotificationsStream() continuationUUID: %s failed %s", v58, 0x16u);
    v70 = v82;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v70, -1, -1);
    MEMORY[0x1E12739F0](v58, -1, -1);

    v71 = v83;
  }

  else
  {

    sub_1DA849FE0(v54, type metadata accessor for UserNotificationsVendorClientTransaction);
    v73 = v53;
    v69 = v79;
    (v79)(v73, v12);
    v71 = v28;
  }

  sub_1DA849FE0(v71, type metadata accessor for UserNotificationsVendorClientTransaction);
  return v69(v85, v12);
}

void sub_1DA846CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
  os_unfair_lock_lock(v2 + 4);
  sub_1DA84AA88(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t UserNotificationsVendorClient.deinit()
{
  v1 = v0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5408, &qword_1DA95AFC8);
  v2 = MEMORY[0x1EEE9AC00](v44);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v41 - v5;
  v42 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock;
  v7 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);

  os_unfair_lock_lock(v7 + 4);

  if (*(v1 + 32))
  {

    sub_1DA940634();
  }

  swift_beginAccess();
  notify_cancel(*(v1 + 40));
  v8 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_historicalNotificationsContinuations;
  swift_beginAccess();
  v43 = v1;
  v41[1] = v8;
  v9 = *(v1 + v8);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_11:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v16 << 6);
      v19 = *(v9 + 48);
      v20 = sub_1DA93FB24();
      (*(*(v20 - 8) + 16))(v6, v19 + *(*(v20 - 8) + 72) * v18, v20);
      v21 = *(v9 + 56);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
      (*(*(v22 - 8) + 16))(&v6[*(v44 + 48)], v21 + *(*(v22 - 8) + 72) * v18, v22);
      sub_1DA940D64();
      result = sub_1DA7BA120(v6, &qword_1ECBD5408, &qword_1DA95AFC8);
      if (!v12)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 64 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_11;
    }
  }

  v23 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_transactionStreamContinuation;
  v24 = v43;
  swift_beginAccess();
  v41[0] = v23;
  v25 = *(v24 + v23);
  v26 = 1 << *(v25 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v25 + 64);
  v29 = (v26 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v28; result = sub_1DA7BA120(v4, &qword_1ECBD5408, &qword_1DA95AFC8))
  {
    v31 = i;
LABEL_21:
    v32 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v33 = v32 | (v31 << 6);
    v34 = *(v25 + 48);
    v35 = sub_1DA93FB24();
    (*(*(v35 - 8) + 16))(v4, v34 + *(*(v35 - 8) + 72) * v33, v35);
    v36 = *(v25 + 56);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
    (*(*(v37 - 8) + 16))(&v4[*(v44 + 48)], v36 + *(*(v37 - 8) + 72) * v33, v37);
    sub_1DA940D64();
  }

  while (1)
  {
    v31 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v31 >= v29)
    {

      v38 = *(v24 + v42);

      os_unfair_lock_unlock(v38 + 4);

      v39 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_uuid;
      v40 = sub_1DA93FB24();
      (*(*(v40 - 8) + 8))(v24 + v39, v40);

      sub_1DA7C5714(v24 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate);

      return v24;
    }

    v28 = *(v25 + 64 + 8 * v31);
    ++i;
    if (v28)
    {
      i = v31;
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t UserNotificationsVendorClient.__deallocating_deinit()
{
  UserNotificationsVendorClient.deinit();

  return swift_deallocClassInstance();
}

void sub_1DA8472A0(_OWORD *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v37 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v37 - v14;
  v16 = a1[1];
  v39[0] = *a1;
  v39[1] = v16;
  v18 = a1[3];
  v40 = a1[2];
  v17 = v40;
  v41 = v18;
  *v6 = v39[0];
  v6[1] = v16;
  v6[2] = v17;
  v6[3] = v18;
  swift_storeEnumTagMultiPayload();
  v19 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_uuid;
  v20 = *(v7 + 24);
  v21 = sub_1DA93FB24();
  (*(*(v21 - 8) + 16))(&v15[v20], v2 + v19, v21);
  sub_1DA849F78(v6, v15, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  v37[1] = v7;
  sub_1DA848A24(v39, v38);
  sub_1DA93FB14();
  sub_1DA849FE0(v6, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  if (qword_1EE110DD0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DA9405A4();
  __swift_project_value_buffer(v22, qword_1EE110DE0);
  sub_1DA849F78(v15, v13, type metadata accessor for UserNotificationsVendorClientTransaction);

  v23 = sub_1DA940584();
  v24 = sub_1DA940F34();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v42 = v26;
    *v25 = 136315394;
    sub_1DA849F78(v13, v10, type metadata accessor for UserNotificationsVendorClientTransaction);
    v27 = sub_1DA940A74();
    v29 = v28;
    sub_1DA849FE0(v13, type metadata accessor for UserNotificationsVendorClientTransaction);
    v30 = sub_1DA7AE6E8(v27, v29, &v42);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v31 = v2 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v33 = *(v31 + 8);
    v37[2] = Strong;
    v37[3] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5420, &unk_1DA95AFD8);
    v34 = sub_1DA940A74();
    v36 = sub_1DA7AE6E8(v34, v35, &v42);

    *(v25 + 14) = v36;
    _os_log_impl(&dword_1DA7A9000, v23, v24, "sendAction() %s delegate: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v26, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {

    sub_1DA849FE0(v13, type metadata accessor for UserNotificationsVendorClientTransaction);
  }

  if (*(v2 + 32))
  {
    sub_1DA84A9BC(&qword_1EE113F68, type metadata accessor for UserNotificationsVendorClientTransaction, &unk_1DA963390);

    sub_1DA940624();
    sub_1DA849FE0(v15, type metadata accessor for UserNotificationsVendorClientTransaction);
  }

  else
  {
    sub_1DA849FE0(v15, type metadata accessor for UserNotificationsVendorClientTransaction);
  }
}

uint64_t sub_1DA84776C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a1;
  swift_storeEnumTagMultiPayload();
  v15 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_uuid;
  v16 = *(v10 + 24);
  v17 = sub_1DA93FB24();
  (*(*(v17 - 8) + 16))(&v14[v16], v3 + v15, v17);
  sub_1DA849F78(v9, v14, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);

  sub_1DA93FB14();
  sub_1DA849FE0(v9, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  v22 = v10;
  v23 = sub_1DA84A9BC(&unk_1EE113F58, type metadata accessor for UserNotificationsVendorClientTransaction, &unk_1DA963368);
  v24 = sub_1DA84A9BC(&qword_1EE113F68, type metadata accessor for UserNotificationsVendorClientTransaction, &unk_1DA963390);
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v21);
  sub_1DA849F78(v14, boxed_opaque_existential_2, type metadata accessor for UserNotificationsVendorClientTransaction);
  __swift_project_boxed_opaque_existential_1(v21, v22);
  if (*(v3 + 32))
  {

    sub_1DA940624();
    sub_1DA849FE0(v14, type metadata accessor for UserNotificationsVendorClientTransaction);
  }

  else
  {
    sub_1DA849FE0(v14, type metadata accessor for UserNotificationsVendorClientTransaction);
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1DA847CAC()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110DE0);
  __swift_project_value_buffer(v0, qword_1EE110DE0);
  return sub_1DA940594();
}

uint64_t sub_1DA847D20(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_1DA847DA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5560, &qword_1DA95B1F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5950, &qword_1DA95B200);
    v7 = sub_1DA9414E4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v9, v5, &unk_1ECBD5560, &qword_1DA95B1F8);
      result = sub_1DA85A4CC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1DA93FEC4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_1DA93FAF4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1DA847FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5500, &qword_1DA95B190);
    v3 = sub_1DA9414E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      sub_1DA8304A0(v7);
      result = sub_1DA85A4B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1DA8480CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5980, &qword_1DA95B268);
  v3 = sub_1DA9414E4();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_1DA85A5A0(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_1DA85A5A0(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DA8481DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5970, &qword_1DA95B258);
    v3 = sub_1DA9414E4();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55D0, &qword_1DA95B260);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v21 - v7);
  if (!v2)
  {
    return v3;
  }

  v9 = *(v5 + 48);
  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);

  while (1)
  {
    sub_1DA822F48(v10, v8, &qword_1ECBD55D0, &qword_1DA95B260);
    v12 = *v8;
    result = sub_1DA7BFAD4(*v8);
    if (v14)
    {
      break;
    }

    v15 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v12;
    v16 = v3[7];
    v17 = sub_1DA93FBD4();
    result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v8 + v9, v17);
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_12;
    }

    v3[2] = v20;
    v10 += v11;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1DA8483C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD54C0, &qword_1DA95B148);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5890, &qword_1DA95B150);
    v7 = sub_1DA9414E4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v9, v5, &unk_1ECBD54C0, &qword_1DA95B148);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1DA85A4B4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1DA93F964();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1DA8485B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55B8, &qword_1DA95B248);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD55C0, &qword_1DA95B250);
    v7 = sub_1DA9414E4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v9, v5, &qword_1ECBD55B8, &qword_1DA95B248);
      result = sub_1DA85A5DC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1DA93FB24();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5960, &qword_1DA95B160);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1DA8487E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55A8, &qword_1DA95B238);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55B0, &qword_1DA95B240);
    v7 = sub_1DA9414E4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v9, v5, &qword_1ECBD55A8, &qword_1DA95B238);
      result = sub_1DA85A5DC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1DA93FB24();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t type metadata accessor for UserNotificationsVendorClient(uint64_t a1)
{
  result = qword_1EE1144A0;
  if (!qword_1EE1144A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA848B4C(uint64_t a1)
{
  result = sub_1DA93FB24();
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

unint64_t sub_1DA848DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5578, &qword_1DA95B210);
    v3 = sub_1DA9414E4();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;

      result = sub_1DA85A6B0(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1DA848EAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5440, &qword_1DA95C130);
    v3 = sub_1DA9414E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DA822F48(v4, v13, &qword_1ECBD5448, &qword_1DA95B0D0);
      result = sub_1DA85A788(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1DA848FE8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

_OWORD *sub_1DA848FE8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1DA849034(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54B0, &qword_1DA95C1A0);
    v3 = sub_1DA9414E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DA822F48(v4, &v13, &qword_1ECBD54B8, &qword_1DA95B140);
      v5 = v13;
      v6 = v14;
      result = sub_1DA85A4B4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DA848FE8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1DA849178(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1DA9414E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1DA85A4B4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1DA849274(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5530, &unk_1DA95B1C0);
    v3 = sub_1DA9414E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DA822F48(v4, &v16, &unk_1ECBD6550, &qword_1DA95F8F0);
      v5 = v16;
      v6 = v17;
      result = sub_1DA85A4B4(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_1DA8493C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1DA9414E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1DA85A4B4(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1DA8494BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5498, &unk_1DA95B120);
    v3 = sub_1DA9414E4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1DA85A7CC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1DA8495B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5548, &unk_1DA95B1E0);
    v3 = sub_1DA9414E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1DA85A4B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1DA8496B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5910, &unk_1DA95C210);
    v3 = sub_1DA9414E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DA85A4B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1DA8497BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5458, &unk_1DA95B0E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5460, &unk_1DA95C150);
    v7 = sub_1DA9414E4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v9, v5, &qword_1ECBD5458, &unk_1DA95B0E0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1DA85A4B4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1DA9408B4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1DA8499A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5488, &qword_1DA95B110);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5490, &qword_1DA95B118);
    v7 = sub_1DA9414E4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v9, v5, &qword_1ECBD5488, &qword_1DA95B110);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1DA85A4B4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for NotificationSource(0);
      result = sub_1DA84A6D0(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for NotificationSource);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1DA849B90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5478, &unk_1DA95B100);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5480, &unk_1DA95C160);
    v7 = sub_1DA9414E4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v9, v5, &qword_1ECBD5478, &unk_1DA95B100);
      result = sub_1DA85A894(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for NotificationSource(0);
      result = sub_1DA84A6D0(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for NotificationSource);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1DA849D74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5468, &qword_1DA95B0F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5470, &qword_1DA95B0F8);
    v7 = sub_1DA9414E4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v9, v5, &qword_1ECBD5468, &qword_1DA95B0F0);
      result = sub_1DA85A894(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for NotificationSource(0);
      result = sub_1DA84A6D0(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for NotificationSource);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1DA849F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA849FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA84A0CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DA84A154@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  *a2 = *(v2 + v4);
}

void *sub_1DA84A1B0@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_1DA84A1FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5528, &qword_1DA95C1E0);
    v3 = sub_1DA9414E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DA85A4B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1DA84A300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5518, &qword_1DA95B1A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5520, &unk_1DA95B1B0);
    v7 = sub_1DA9414E4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v9, v5, &qword_1ECBD5518, &qword_1DA95B1A8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1DA85A4B4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for SyncDismissalIDEntry(0);
      result = sub_1DA84A6D0(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for SyncDismissalIDEntry);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1DA84A4E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5508, &qword_1DA95B198);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5510, &qword_1DA95B1A0);
    v7 = sub_1DA9414E4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v9, v5, &qword_1ECBD5508, &qword_1DA95B198);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1DA85A4B4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for SyncDismissalHashEntry(0);
      result = sub_1DA84A6D0(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for SyncDismissalHashEntry);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1DA84A6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_1DA93FB24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA84A918(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1DA93FB24() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1DA84A9BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DA84AA04()
{
  result = qword_1EE110CD0;
  if (!qword_1EE110CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECBD5598, &qword_1DA95B230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110CD0);
  }

  return result;
}

uint64_t sub_1DA84AAC8(uint64_t a1)
{
  result = sub_1DA9401F4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t UserNotificationsRemoteDeviceChangeManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t UserNotificationsRemoteDeviceChangeManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1DA84AC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v4 = sub_1DA93FAF4();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA84AD68, 0, 0);
}

uint64_t sub_1DA84AD68(uint64_t a1)
{
  v2 = v1[12];
  v3 = v1[9];
  v4 = v1[10];
  v5 = sub_1DA93FF84();
  v6 = [v5 request];

  v7 = [v6 content];
  [v7 mutableCopy];

  sub_1DA941154();
  swift_unknownObjectRelease();
  sub_1DA84B354();
  swift_dynamicCast();
  v8 = v1[6];
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v10 = sub_1DA940A04();
  [v9 setDateFormat_];

  sub_1DA941364();

  sub_1DA93FAC4();
  v11 = sub_1DA93FA44();
  v40 = *(v4 + 8);
  v40(v2, v3);
  v41 = v9;
  v12 = [v9 stringFromDate_];

  v13 = sub_1DA940A14();
  v15 = v14;

  MEMORY[0x1E1271BD0](v13, v15);

  MEMORY[0x1E1271BD0](2120999, 0xE300000000000000);
  v16 = [v8 body];
  v17 = sub_1DA940A14();
  v19 = v18;

  MEMORY[0x1E1271BD0](v17, v19);

  v20 = sub_1DA940A04();

  [v8 setBody_];

  sub_1DA9400A4();
  v21 = v8;
  v22 = sub_1DA93FF84();
  v23 = [v22 request];

  v24 = [v23 trigger];
  v25 = sub_1DA940A04();

  v26 = [objc_opt_self() requestWithIdentifier:v25 content:v21 trigger:v24];

  v39 = v21;
  v27 = sub_1DA93FF84();
  v28 = [v27 date];

  sub_1DA93FAB4();
  v29 = sub_1DA93FF84();
  v30 = [v29 sourceIdentifier];

  if (!v30)
  {
    sub_1DA940A14();
    v30 = sub_1DA940A04();
  }

  v31 = sub_1DA93FF84();
  v32 = [v31 intentIdentifiers];

  if (!v32)
  {
    sub_1DA940BE4();
    v32 = sub_1DA940BD4();
  }

  v33 = v1[11];
  v34 = v1[9];
  v35 = sub_1DA93FA44();
  v36 = [objc_opt_self() notificationWithRequest:v26 date:v35 sourceIdentifier:v30 intentIdentifiers:v32];

  v40(v33, v34);
  sub_1DA940064();
  sub_1DA93FF04();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();

  v37 = v1[1];

  return v37();
}

uint64_t sub_1DA84B2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA7B7470;

  return sub_1DA84AC9C(a1, v6, a3);
}

unint64_t sub_1DA84B354()
{
  result = qword_1ECBD55E0;
  if (!qword_1ECBD55E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBD55E0);
  }

  return result;
}

id sub_1DA84B420()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserNotificationsCloudSenderPriorityObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA84B55C(const char *a1, char a2, ...)
{
  if (qword_1ECBD4728 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1ECBD55F0);
  v6 = v2;
  v7 = sub_1DA940584();
  v8 = sub_1DA940F34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC21UserNotificationsCore44UserNotificationsCloudSenderPriorityObserver_consumer;
    swift_beginAccess();
    sub_1DA7BABAC(v6 + v11, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5680, &qword_1DA95B568);
    v12 = sub_1DA940A74();
    v14 = sub_1DA7AE6E8(v12, v13, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DA7A9000, v7, v8, a1, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12739F0](v10, -1, -1);
    MEMORY[0x1E12739F0](v9, -1, -1);
  }

  v15 = v6 + OBJC_IVAR____TtC21UserNotificationsCore44UserNotificationsCloudSenderPriorityObserver_consumer;
  swift_beginAccess();
  v16 = *(v15 + 24);
  v17 = *(v15 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  (*(v17 + 16))(a2 & 1, v16, v17);
  return swift_endAccess();
}

void sub_1DA84B7B0()
{
  v40[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v1 != 1)
  {
    if (Strong)
    {
      v40[0] = 0;
      v18 = Strong;
      v19 = [Strong setWakingPushPriority:0 error:v40];

      v5 = v40[0];
      if (!v19)
      {
        goto LABEL_17;
      }

      v20 = v40[0];
    }

    if (qword_1ECBD4728 != -1)
    {
      swift_once();
    }

    v21 = sub_1DA9405A4();
    __swift_project_value_buffer(v21, qword_1ECBD55F0);

    v8 = sub_1DA940584();
    v9 = sub_1DA940F34();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_21;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40[0] = v12;
    *v10 = 136315394;

    v22 = sub_1DA940A74();
    v24 = sub_1DA7AE6E8(v22, v23, v40);

    *(v10 + 4) = v24;
    *(v10 + 12) = 2112;
    v25 = swift_unknownObjectWeakLoadStrong();
    *(v10 + 14) = v25;
    *v11 = v25;
    v17 = "%s service: %@ is now non-waking";
LABEL_16:
    _os_log_impl(&dword_1DA7A9000, v8, v9, v17, v10, 0x16u);
    sub_1DA7BA120(v11, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E12739F0](v12, -1, -1);
    MEMORY[0x1E12739F0](v10, -1, -1);
LABEL_21:

    return;
  }

  if (!Strong)
  {
LABEL_5:
    if (qword_1ECBD4728 != -1)
    {
      swift_once();
    }

    v7 = sub_1DA9405A4();
    __swift_project_value_buffer(v7, qword_1ECBD55F0);

    v8 = sub_1DA940584();
    v9 = sub_1DA940F34();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_21;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40[0] = v12;
    *v10 = 136315394;

    v13 = sub_1DA940A74();
    v15 = sub_1DA7AE6E8(v13, v14, v40);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = swift_unknownObjectWeakLoadStrong();
    *(v10 + 14) = v16;
    *v11 = v16;
    v17 = "%s service: %@ is now waking";
    goto LABEL_16;
  }

  v40[0] = 0;
  v3 = Strong;
  v4 = [Strong setWakingPushPriority:2 error:v40];

  v5 = v40[0];
  if (v4)
  {
    v6 = v40[0];
    goto LABEL_5;
  }

LABEL_17:
  v26 = v5;
  v27 = sub_1DA93F8C4();

  swift_willThrow();
  if (qword_1ECBD4728 != -1)
  {
    swift_once();
  }

  v28 = sub_1DA9405A4();
  __swift_project_value_buffer(v28, qword_1ECBD55F0);

  v29 = v27;
  v8 = sub_1DA940584();
  v30 = sub_1DA940F14();

  if (os_log_type_enabled(v8, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v40[0] = v33;
    *v31 = 136315650;

    v34 = sub_1DA940A74();
    v36 = sub_1DA7AE6E8(v34, v35, v40);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2112;
    v37 = swift_unknownObjectWeakLoadStrong();
    *(v31 + 14) = v37;
    *v32 = v37;
    *(v31 + 22) = 2112;
    v38 = v27;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 24) = v39;
    v32[1] = v39;
    _os_log_impl(&dword_1DA7A9000, v8, v30, "%s service: %@ failed to set waking: %@", v31, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5430, &unk_1DA959190);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1E12739F0](v33, -1, -1);
    MEMORY[0x1E12739F0](v31, -1, -1);

    goto LABEL_21;
  }
}

uint64_t sub_1DA84BD48()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA84BDCC()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD55F0);
  __swift_project_value_buffer(v0, qword_1ECBD55F0);
  return sub_1DA940594();
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

void *sub_1DA84BE9C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1DA885D94(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD56A0, &qword_1DA95D470);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DA84BFA0(uint64_t result)
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

  v3 = sub_1DA885FF8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = sub_1DA9401F4();
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

uint64_t sub_1DA84C0CC(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 184) = a2;
  *(v4 + 72) = a1;
  v5 = sub_1DA9407F4();
  *(v4 + 96) = v5;
  *(v4 + 104) = *(v5 - 8);
  *(v4 + 112) = swift_task_alloc();
  v6 = sub_1DA940854();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  v7 = sub_1DA93FAF4();
  *(v4 + 144) = v7;
  v8 = *(v7 - 8);
  *(v4 + 152) = v8;
  *(v4 + 160) = *(v8 + 64);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA84C260, 0, 0);
}

uint64_t sub_1DA84C260(uint64_t a1)
{
  if (*(v1 + 184) != 3)
  {
    v2 = v1[11];
    v3 = sub_1DA940014();
    v5 = v4;
    v6 = sub_1DA9400A4();
    v8 = v7;
    v9 = sub_1DA93FF84();
    v10 = [v9 date];

    sub_1DA93FAB4();
    v11 = *(v2 + 16);
    v12 = v1[22];
    if (v11)
    {
      v39 = v3;
      v13 = v1[21];
      v14 = v1[19];
      v36 = v1[18];
      v40 = v1[17];
      v45 = v1[16];
      v46 = v1[15];
      v41 = v1[14];
      v44 = v1[13];
      v42 = v1[12];
      v38 = v11;
      v15 = sub_1DA940144();
      v34 = v16;
      v35 = v15;
      v37 = v6;
      v17 = sub_1DA9401E4();
      v19 = v18;
      v20 = sub_1DA940134();
      v33 = v8;
      v21 = v5;
      v23 = v22;
      (*(v14 + 16))(v13, v12, v36);
      v43 = v12;
      v24 = (*(v14 + 80) + 104) & ~*(v14 + 80);
      v25 = swift_allocObject();
      *(v25 + 2) = v35;
      *(v25 + 3) = v34;
      *(v25 + 4) = v17;
      *(v25 + 5) = v19;
      *(v25 + 6) = v20;
      *(v25 + 7) = v23;
      *(v25 + 8) = v38;
      *(v25 + 9) = v39;
      *(v25 + 10) = v21;
      *(v25 + 11) = v37;
      *(v25 + 12) = v33;
      (*(v14 + 32))(&v25[v24], v13, v36);
      v1[6] = sub_1DA84C938;
      v1[7] = v25;
      v1[2] = MEMORY[0x1E69E9820];
      v1[3] = 1107296256;
      v1[4] = sub_1DA7AF1D0;
      v1[5] = &block_descriptor_4;
      v26 = _Block_copy(v1 + 2);
      v27 = v38;
      sub_1DA940824();
      v1[8] = MEMORY[0x1E69E7CC0];
      sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
      sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0, MEMORY[0x1E69E6328]);
      sub_1DA9411D4();
      MEMORY[0x1E12720D0](0, v40, v41, v26);
      _Block_release(v26);

      (*(v44 + 8))(v41, v42);
      (*(v45 + 8))(v40, v46);
      (*(v14 + 8))(v43, v36);
    }

    else
    {
      (*(v1[19] + 8))(v1[22], v1[18]);
    }
  }

  v28 = v1[9];
  v29 = v1[10];
  v30 = sub_1DA9401F4();
  (*(*(v30 - 8) + 16))(v28, v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();

  v31 = v1[1];

  return v31();
}

uint64_t sub_1DA84C6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = sub_1DA84CF00(a1, a2, a3, a4, a5, a6);
  v13 = *(v23 + 16);
  if (v13)
  {
    v14 = v23 + 56;
    do
    {

      v15 = sub_1DA940A04();

      v16 = sub_1DA940A04();

      v17 = sub_1DA940A04();
      v18 = sub_1DA940A04();
      v19 = a11;
      v20 = a8;
      v21 = sub_1DA93FA44();
      [a7 foundCode:v15 displayCode:v16 application:v17 notification:v18 timestamp:v21];

      a8 = v20;
      a11 = v19;
      v14 += 32;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1DA84C818()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DA84C884(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA7B7470;

  return sub_1DA84C0CC(a1, a2, a3);
}

void (*sub_1DA84C9B4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E1272460](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1DA7B94FC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1DA84CA34(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E1272460](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1DA84CAB4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA84CABC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DA941264();
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
      result = sub_1DA941264();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DA7AD11C(&qword_1EE110C98, &qword_1ECBD5698, &qword_1DA95B600, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5698, &qword_1DA95B600);
            v9 = sub_1DA84C9B4(v13, i, a3);
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
        sub_1DA7AF3EC(0, &unk_1EE110C38, 0x1E6999A80);
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

uint64_t sub_1DA84CC70(void *a1)
{
  v2 = v1;
  v16 = a1;
  v15 = sub_1DA940FC4();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v7 - 8);
  *(v1 + 16) = 0;
  v8 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v14[1] = "TimeCodeActor";
  v14[2] = v8;
  sub_1DA940824();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840, MEMORY[0x1E69E6328]);
  sub_1DA9411D4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v15);
  v9 = sub_1DA941004();
  v10 = *(v1 + 16);
  v11 = v16;
  *(v2 + 16) = v16;
  *(v2 + 24) = v9;
  v12 = v11;

  return v2;
}

uint64_t sub_1DA84CF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = MEMORY[0x1E69E7CC0];
  v55 = MEMORY[0x1E69E7CC0];
  v10 = [objc_allocWithZone(MEMORY[0x1E6999A90]) initWithScannerType:0 passiveIntent:1];
  v54 = v9;
  if (a2)
  {
    v11 = objc_opt_self();
    v12 = sub_1DA940A04();
    v13 = [v11 scanString:v12 range:sub_1DA93F754() configuration:{0, v10}];

    sub_1DA7AF3EC(0, &unk_1EE110C38, 0x1E6999A80);
    v14 = sub_1DA940BE4();

    sub_1DA7B912C(v14, sub_1DA84CABC);
  }

  v51 = v10;
  if (a4)
  {
    v15 = objc_opt_self();
    v16 = sub_1DA940A04();
    v17 = [v15 scanString:v16 range:sub_1DA93F754() configuration:{0, v10}];

    sub_1DA7AF3EC(0, &unk_1EE110C38, 0x1E6999A80);
    v18 = sub_1DA940BE4();

    sub_1DA7B912C(v18, sub_1DA84CABC);
  }

  v19 = v10;
  if (a6)
  {
    v20 = objc_opt_self();
    v21 = sub_1DA940A04();
    v22 = [v20 scanString:v21 range:sub_1DA93F754() configuration:{0, v10}];

    sub_1DA7AF3EC(0, &unk_1EE110C38, 0x1E6999A80);
    v23 = sub_1DA940BE4();

    sub_1DA7B912C(v23, sub_1DA84CABC);
  }

  v24 = v54;
  if (v54 >> 62)
  {
LABEL_29:
    v25 = sub_1DA941264();
  }

  else
  {
    v25 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25)
  {
    v26 = 0;
    v27 = v24 & 0xFFFFFFFFFFFFFF8;
    v19 = (v24 + 32);
    v28 = *MEMORY[0x1E6999990];
    v52 = (v24 + 32);
    while (1)
    {
      if (v26 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v29 = v19[v26];
      v30 = [v29 type];
      result = sub_1DA940A14();
      if (!v28)
      {
        __break(1u);
        return result;
      }

      v33 = result;
      v34 = v32;

      if (v33 == sub_1DA940A14() && v34 == v35)
      {
      }

      else
      {
        v24 = sub_1DA941684();

        if ((v24 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v24 = [v29 value];
      v37 = sub_1DA940A14();
      v39 = v38;

      v40 = [v29 coreResult];
      v41 = DDResultCopyAuthCode();
      if (v41)
      {
        v24 = v41;
        v42 = v25;
        v43 = v27;
        v44 = sub_1DA940A14();
        v53 = v37;
        v45 = v39;
        v46 = v28;
        v48 = v47;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5690, &qword_1DA95B5F8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DA9596E0;
        *(inited + 32) = v44;
        *(inited + 40) = v48;
        v27 = v43;
        v25 = v42;
        v19 = v52;
        v28 = v46;
        *(inited + 48) = v53;
        *(inited + 56) = v45;
        sub_1DA84BE9C(inited);

LABEL_24:
        goto LABEL_12;
      }

LABEL_12:
      if (v25 == ++v26)
      {
        v50 = v55;
        v19 = v51;
        goto LABEL_27;
      }
    }
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_27:

  swift_bridgeObjectRelease_n();
  return v50;
}

id static UNCOneTimeCodeManager.sharedInstance()()
{
  if (qword_1EE110BF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE110BF8;

  return v1;
}

UNCOneTimeCodeManager __swiftcall UNCOneTimeCodeManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.listener = v2;
  result.super.isa = v1;
  return result;
}

char *UNCOneTimeCodeManager.init()()
{
  v1 = [objc_allocWithZone(UNCOneTimeCodeServiceListener) init];
  *&v0[OBJC_IVAR___UNCOneTimeCodeManager_listener] = v1;
  v4.receiver = v0;
  v4.super_class = UNCOneTimeCodeManager;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  [*&v2[OBJC_IVAR___UNCOneTimeCodeManager_listener] activate];
  return v2;
}

void UNCOneTimeCodeManager.foundCode(_:displayCode:application:notification:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = objc_allocWithZone(MEMORY[0x1E69832D0]);
  v9 = sub_1DA940A04();
  v10 = sub_1DA940A04();
  v11 = sub_1DA940A04();
  v12 = sub_1DA940A04();
  v13 = sub_1DA93FA44();
  v14 = [v8 initWithCode:v9 displayCode:v10 applicationIdentifier:v11 notificationIdentifier:v12 timestamp:v13];

  v15 = [v19 listener];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA9593A0;
  *(inited + 32) = v14;
  v17 = v14;
  sub_1DA84DA64(inited, &qword_1ECBD56E8, qword_1DA95B618, &qword_1ECBD56B0, 0x1E69832D0);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1DA7AF3EC(0, &qword_1ECBD56B0, 0x1E69832D0);
  sub_1DA84D9C4();
  v18 = sub_1DA940E84();

  [v15 detectedOneTimeCodes_];
}

id sub_1DA84D980()
{
  result = [objc_allocWithZone(UNCOneTimeCodeManager) init];
  qword_1EE110BF8 = result;
  return result;
}

unint64_t sub_1DA84D9C4()
{
  result = qword_1ECBD56B8;
  if (!qword_1ECBD56B8)
  {
    sub_1DA7AF3EC(255, &qword_1ECBD56B0, 0x1E69832D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD56B8);
  }

  return result;
}

void sub_1DA84DA64(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_1DA941264();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_1DA941334();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_1DA941264();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E7CD0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v46 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v42 = v5;
    while (1)
    {
      v15 = MEMORY[0x1E1272460](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_1DA941104();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_1DA7AF3EC(0, a4, a5);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = sub_1DA941114();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            v5 = v42;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        v5 = v42;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = *(v5 + 32 + 8 * v29);
      v31 = sub_1DA941104();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v13 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        sub_1DA7AF3EC(0, a4, a5);
        while (1)
        {
          v38 = *(*(v7 + 48) + 8 * v33);
          v39 = sub_1DA941114();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v13 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v34) = v36 | v35;
        *(*(v7 + 48) + 8 * v33) = v30;
        v40 = *(v7 + 16);
        v16 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v41;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1DA84DD74(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1DA941264())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD56C8, &unk_1DA95F380);
      v3 = sub_1DA941334();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1DA941264();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x1E1272460](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1DA941104();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for NotificationServiceConnection();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1DA941114();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_1DA941104();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        type metadata accessor for NotificationServiceConnection();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1DA941114();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1DA84E054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA93F964();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 != -1 && close(v6) == -1)
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v9 = sub_1DA9405A4();
    __swift_project_value_buffer(v9, qword_1EE11AD30);
    (*(v5 + 16))(v8, a2, v4);
    v10 = sub_1DA940584();
    v11 = sub_1DA940F24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136380931;
      sub_1DA828278();
      v14 = sub_1DA941614();
      v16 = v15;
      (*(v5 + 8))(v8, v4);
      v17 = sub_1DA7AE6E8(v14, v16, &v20);

      *(v12 + 4) = v17;
      *(v12 + 12) = 1026;
      *(v12 + 14) = MEMORY[0x1E12718A0](v18);
      _os_log_impl(&dword_1DA7A9000, v10, v11, "Failed to close file descriptor for %{private}s. errno: %{public}d", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1E12739F0](v13, -1, -1);
      MEMORY[0x1E12739F0](v12, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

void sub_1DA84E348(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v7 = sub_1DA940804();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 notificationRecord];
  v12 = [v11 identifier];

  if (v12)
  {
    v13 = sub_1DA940A14();
    v15 = v14;

    aBlock = 0xD00000000000003CLL;
    v26 = 0x80000001DA9522A0;
    MEMORY[0x1E1271BD0](v13, v15);

    v16 = objc_allocWithZone(MEMORY[0x1E69D54C8]);
    v17 = sub_1DA940A04();

    v18 = [v16 initWithIdentifier_];

    sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
    (*(v8 + 104))(v10, *MEMORY[0x1E69E7F88], v7);
    v19 = sub_1DA941014();
    (*(v8 + 8))(v10, v7);
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = v4;
    v20[4] = v24;
    v20[5] = a3;
    v29 = sub_1DA852C70;
    v30 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1DA7B00D0;
    v28 = &block_descriptor_5;
    v21 = _Block_copy(&aBlock);
    v22 = a1;

    [v18 scheduleWithFireInterval:v19 leewayInterval:v21 queue:5.0 handler:1.0];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_1DA84E620(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1EE11AD30);
  v6 = a2;
  v7 = sub_1DA940584();
  v8 = sub_1DA940F34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136315138;
    v11 = [v6 notificationRecord];
    v12 = [v11 identifier];

    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = sub_1DA940A14();
    v15 = v14;

    v16 = sub_1DA7AE6E8(v13, v15, v22);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1DA7A9000, v7, v8, "startTimerFor(record): Fired for: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12739F0](v10, -1, -1);
    MEMORY[0x1E12739F0](v9, -1, -1);
  }

  else
  {
  }

  sub_1DA822F48(a3 + 16, v22, &unk_1ECBD5708, &qword_1DA95B8E0);
  if (v22[3])
  {
    sub_1DA7BABAC(v22, v21);
    sub_1DA7BA120(v22, &unk_1ECBD5708, &qword_1DA95B8E0);
    v17 = __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v18 = *(*v17 + 112);
    v19 = MEMORY[0x1EEE9AC00](v17);
    MEMORY[0x1EEE9AC00](v19);
    os_unfair_lock_lock(v18 + 4);
    sub_1DA84A760(v20);
    os_unfair_lock_unlock(v18 + 4);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_1DA7BA120(v22, &unk_1ECBD5708, &qword_1DA95B8E0);
  }
}

uint64_t sub_1DA84E8F8()
{
  sub_1DA7BA120(v0 + 16, &unk_1ECBD5708, &qword_1DA95B8E0);

  return swift_deallocClassInstance();
}

void sub_1DA84E964(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v94 = a4;
  v95 = a6;
  v98 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v88 = &v86 - v13;
  v14 = sub_1DA93F964();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v7;
  v93 = *(v7 + 112);
  os_unfair_lock_lock(v93 + 4);
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v18 = sub_1DA9405A4();
  v19 = __swift_project_value_buffer(v18, qword_1EE11AD30);
  v90 = *(v15 + 16);
  v91 = v15 + 16;
  v90(v17, a1, v14);

  v86 = v19;
  v20 = sub_1DA940584();
  v21 = sub_1DA940F34();

  v22 = os_log_type_enabled(v20, v21);
  v97 = a1;
  v92 = v14;
  v87 = v15;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v89 = a5;
    v25 = v24;
    v104 = v24;
    *v23 = 136315906;
    sub_1DA828278();
    v26 = sub_1DA941614();
    v27 = v14;
    v29 = v28;
    (*(v15 + 8))(v17, v27);
    v30 = sub_1DA7AE6E8(v26, v29, &v104);

    *(v23 + 4) = v30;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1DA7AE6E8(v98, a3, &v104);
    *(v23 + 22) = 2080;
    v31 = v94;
    *(v23 + 24) = sub_1DA7AE6E8(v94, v89, &v104);
    *(v23 + 32) = 2080;
    v32 = v95;
    *(v23 + 34) = sub_1DA7AE6E8(v95, a7, &v104);
    _os_log_impl(&dword_1DA7A9000, v20, v21, "receiveAttachment(fileURL): %s attachmentIdentifier: %s, notificationIdentifier: %s, bundleIdentifier: %s", v23, 0x2Au);
    swift_arrayDestroy();
    v33 = v25;
    a5 = v89;
    MEMORY[0x1E12739F0](v33, -1, -1);
    MEMORY[0x1E12739F0](v23, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v17, v14);
    v31 = v94;
    v32 = v95;
  }

  v104 = v32;
  v105 = a7;

  MEMORY[0x1E1271BD0](v31, a5);
  v35 = v104;
  v34 = v105;
  v36 = v96;
  swift_beginAccess();
  v37 = *(v36 + 120);
  if (!*(v37 + 16) || (, v38 = sub_1DA85A4B4(v35, v34), v40 = v39, , (v40 & 1) == 0))
  {

    v102 = v32;
    v103 = a7;

    MEMORY[0x1E1271BD0](v31, a5);
    v60 = v102;
    v59 = v103;
    swift_beginAccess();
    if (*(*(v36 + 128) + 16) && (, sub_1DA85A4B4(v60, v59), v62 = v61, , (v62 & 1) != 0))
    {

      v63 = v88;
      v64 = v92;
      v90(v88, v97, v92);
      (*(v87 + 56))(v63, 0, 1, v64);
      swift_beginAccess();

      sub_1DA8F02B8(v63, v98, a3);
      swift_endAccess();
    }

    else
    {

      v100 = v32;
      v101 = a7;

      MEMORY[0x1E1271BD0](v31, a5);
      v66 = v100;
      v65 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5700, &unk_1DA95B8D0);
      v67 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD54C0, &qword_1DA95B148) - 8);
      v68 = (*(*v67 + 80) + 32) & ~*(*v67 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1DA9596E0;
      v70 = (v69 + v68);
      v71 = v67[14];
      v72 = v97;
      *v70 = v98;
      *(v70 + 1) = a3;
      v90(&v70[v71], v72, v92);

      v73 = sub_1DA8483C8(v69);
      swift_setDeallocating();
      sub_1DA7BA120(v70, &unk_1ECBD54C0, &qword_1DA95B148);
      swift_deallocClassInstance();
      type metadata accessor for UserNotificationsCloudReceiverHoldingPen.HoldingAttachments();
      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = *(v36 + 128);
      *(v36 + 128) = 0x8000000000000000;
      sub_1DA90AC94(v74, v66, v65, isUniquelyReferenced_nonNull_native);

      *(v36 + 128) = v99;
      swift_endAccess();
    }

    v76 = v93;
    goto LABEL_37;
  }

  v41 = *(*(v37 + 56) + 8 * v38);

  v42 = *(v41 + 32);

  v43 = v42;
  v44 = [v43 notificationRecord];
  v45 = [v44 attachments];

  if (v45)
  {
    v94 = v43;
    v92 = a7;
    sub_1DA7AF3EC(0, &unk_1EE110C10, off_1E85D5BC8);
    v46 = sub_1DA940BE4();

    if (v46 >> 62)
    {
      v47 = sub_1DA941264();
      if (v47)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
LABEL_11:
        if (v47 >= 1)
        {
          v48 = 0;
          while (1)
          {
            if ((v46 & 0xC000000000000001) != 0)
            {
              v50 = MEMORY[0x1E1272460](v48, v46);
            }

            else
            {
              v50 = *(v46 + 8 * v48 + 32);
            }

            v51 = v50;
            v52 = [v50 identifier];
            if (!v52)
            {
              goto LABEL_15;
            }

            v53 = v52;
            v54 = sub_1DA940A14();
            v56 = v55;

            if (v54 == v98 && v56 == a3)
            {
            }

            else
            {
              v58 = sub_1DA941684();

              if ((v58 & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            v49 = sub_1DA93F904();
            [v51 setURL_];

LABEL_15:
            ++v48;

            if (v47 == v48)
            {
              goto LABEL_32;
            }
          }
        }

        __break(1u);
        goto LABEL_39;
      }
    }

LABEL_32:

    v77 = v94;
    v78 = [v94 notificationRecord];

    v79 = sub_1DA84FF60(v78);
    v76 = v93;
    if (v79)
    {
      v80 = v77;
      v81 = sub_1DA940584();
      v82 = sub_1DA940F34();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v83 = 138412290;
        v85 = [v80 notificationRecord];
        *(v83 + 4) = v85;
        *v84 = v85;
        _os_log_impl(&dword_1DA7A9000, v81, v82, "receiveAttachment(fileURL:): All attachments found for: %@", v83, 0xCu);
        sub_1DA7BA120(v84, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v84, -1, -1);
        MEMORY[0x1E12739F0](v83, -1, -1);
      }

      sub_1DA84F300(v80, v95, v92);
    }

LABEL_37:
    os_unfair_lock_unlock(v76 + 4);
    return;
  }

LABEL_39:
  __break(1u);
}

void sub_1DA84F300(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = [a1 notificationRecord];
  v12 = [v11 identifier];

  if (v12)
  {
    v13 = sub_1DA940A14();
    v15 = v14;

    v22 = a2;
    v23 = a3;

    MEMORY[0x1E1271BD0](v13, v15);

    v16 = v22;
    v17 = v23;
    swift_beginAccess();
    sub_1DA8F0158(0, v16, v17);
    swift_endAccess();
    v18 = sub_1DA940D34();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v4;
    v19[5] = a1;
    v19[6] = a2;
    v19[7] = a3;

    v20 = a1;
    sub_1DA84F868(0, 0, v10, &unk_1DA95B8B8, v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DA84F4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA84F510, 0, 0);
}

uint64_t sub_1DA84F510()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = *(v0[3] + 24);
    ObjectType = swift_getObjectType();
    v11 = (*(v2 + 8) + **(v2 + 8));
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1DA84F6A0;
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[4];

    return v11(v7, 1, v5, v6, ObjectType, v2);
  }

  else
  {
    v9 = v0[2];
    *v9 = 0;
    *(v9 + 8) = 1;
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1DA84F6A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1DA84F804;
  }

  else
  {
    swift_unknownObjectRelease();
    *(v4 + 80) = a1;
    v5 = sub_1DA84F7D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DA84F7D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56) == 0;
  *v1 = *(v0 + 80);
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1DA84F804()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA84F868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1DA822F48(a3, v22 - v9, &qword_1ECBD4FA0, &unk_1DA958730);
  v11 = sub_1DA940D34();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1DA7BA120(v10, &qword_1ECBD4FA0, &unk_1DA958730);
  }

  else
  {
    sub_1DA940D24();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DA940C34();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1DA940A94() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD56F0, &unk_1DA95B8C0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);

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

  sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD56F0, &unk_1DA95B8C0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1DA84FB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1DA822F48(a3, v22 - v9, &qword_1ECBD4FA0, &unk_1DA958730);
  v11 = sub_1DA940D34();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1DA7BA120(v10, &qword_1ECBD4FA0, &unk_1DA958730);
  }

  else
  {
    sub_1DA940D24();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DA940C34();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1DA940A94() + 32;

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

      sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);

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

  sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1DA84FDEC()
{
  [*(v0 + 40) invalidate];

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA84FE44()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DA84FE7C()
{
  sub_1DA7C5714(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  sub_1DA7C5714(v0 + 136);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA84FF60(void *a1)
{
  v94[3] = *MEMORY[0x1E69E9840];
  v2 = sub_1DA93F964();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v77 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v88 = &v77 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v89 = &v77 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v77 - v14;
  v16 = [a1 attachments];
  if (!v16)
  {
    __break(1u);
  }

  v17 = v16;
  sub_1DA7AF3EC(0, &unk_1EE110C10, off_1E85D5BC8);
  v18 = sub_1DA940BE4();

  if (v18 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DA941264())
  {
    v77 = v9;
    v78 = v6;
    v9 = 0;
    v90 = v18 & 0xC000000000000001;
    v82 = v18 & 0xFFFFFFFFFFFFFF8;
    v21 = (v3 + 8);
    v87 = (v3 + 16);
    *&v19 = 136380931;
    v81 = v19;
    v79 = xmmword_1DA9596E0;
    v80 = v15;
    v85 = (v3 + 8);
    v86 = v18;
    v84 = i;
    while (1)
    {
      if (v90)
      {
        v22 = MEMORY[0x1E1272460](v9, v18);
      }

      else
      {
        if (v9 >= *(v82 + 16))
        {
          goto LABEL_35;
        }

        v22 = *(v18 + 8 * v9 + 32);
      }

      v23 = v22;
      v6 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v24 = [v22 URL];
      if (v24)
      {
        v25 = v24;
        sub_1DA93F914();

        v26 = v89;
        sub_1DA93F8D4();
        sub_1DA93F924();
        v27 = *v21;
        (*v21)(v26, v2);
        sub_1DA940A94();

        v28 = sub_1DA9407B4();

        if (v28 == -1)
        {

          if (qword_1EE110D20 != -1)
          {
            swift_once();
          }

          v49 = sub_1DA9405A4();
          __swift_project_value_buffer(v49, qword_1EE11AD30);
          v50 = v78;
          (*v87)(v78, v15, v2);
          v51 = sub_1DA940584();
          v52 = sub_1DA940F34();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            LODWORD(v90) = v52;
            v54 = v53;
            v55 = swift_slowAlloc();
            v91 = v27;
            v56 = v55;
            v94[0] = v55;
            *v54 = v81;
            sub_1DA828278();
            v57 = sub_1DA941614();
            v58 = v2;
            v60 = v59;
            v91(v50, v58);
            v61 = sub_1DA7AE6E8(v57, v60, v94);
            v2 = v58;

            *(v54 + 4) = v61;
            *(v54 + 12) = 1024;
            *(v54 + 14) = MEMORY[0x1E12718A0](v62);
            _os_log_impl(&dword_1DA7A9000, v51, v90, "Unable to open %{private}s. errno: %d", v54, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v56);
            v27 = v91;
            MEMORY[0x1E12739F0](v56, -1, -1);
            MEMORY[0x1E12739F0](v54, -1, -1);
          }

          else
          {

            v27(v50, v2);
          }

          sub_1DA84E054(0xFFFFFFFFLL, v15);

          v27(v15, v2);
          return 0;
        }

        v93 = 0;
        swift_beginAccess();
        v29 = read(v28, &v93, 1uLL);
        swift_endAccess();
        v92 = v23;
        LODWORD(v91) = v28;
        if (v29 != 1)
        {

          if (qword_1EE110D20 != -1)
          {
            swift_once();
          }

          v63 = sub_1DA9405A4();
          __swift_project_value_buffer(v63, qword_1EE11AD30);
          v64 = v77;
          (*v87)(v77, v15, v2);
          v65 = sub_1DA940584();
          v66 = sub_1DA940F34();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = v2;
            v69 = swift_slowAlloc();
            v94[0] = v69;
            *v67 = 136380675;
            sub_1DA828278();
            v70 = sub_1DA941614();
            v71 = v27;
            v73 = v72;
            v71(v64, v68);
            v74 = sub_1DA7AE6E8(v70, v73, v94);
            v27 = v71;
            v28 = v91;

            *(v67 + 4) = v74;
            _os_log_impl(&dword_1DA7A9000, v65, v66, "Failed to read first byte from %{private}s", v67, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v69);
            v75 = v69;
            v2 = v68;
            MEMORY[0x1E12739F0](v75, -1, -1);
            MEMORY[0x1E12739F0](v67, -1, -1);
          }

          else
          {

            v27(v64, v2);
          }

          sub_1DA84E054(v28, v15);

          v27(v15, v2);
          return 0;
        }

        v30 = v27;
        if (qword_1EE110D20 != -1)
        {
          swift_once();
        }

        v31 = sub_1DA9405A4();
        v3 = __swift_project_value_buffer(v31, qword_1EE11AD30);
        v32 = v88;
        (*v87)(v88, v15, v2);
        v33 = sub_1DA940584();
        v34 = sub_1DA940F04();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = v32;
          v83 = swift_slowAlloc();
          v94[0] = v83;
          *v35 = v81;
          sub_1DA828278();
          v37 = sub_1DA941614();
          v38 = v2;
          v40 = v39;
          v30(v36, v38);
          v41 = sub_1DA7AE6E8(v37, v40, v94);

          *(v35 + 4) = v41;
          *(v35 + 12) = 2081;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55D8, qword_1DA95B2F0);
          v42 = swift_allocObject();
          *(v42 + 16) = v79;
          v43 = v93;
          *(v42 + 56) = MEMORY[0x1E69E7508];
          *(v42 + 64) = MEMORY[0x1E69E7558];
          *(v42 + 32) = v43;
          v44 = sub_1DA940A44();
          v3 = v45;
          v46 = sub_1DA7AE6E8(v44, v45, v94);

          *(v35 + 14) = v46;
          v2 = v38;
          v15 = v80;
          _os_log_impl(&dword_1DA7A9000, v33, v34, "First byte of attachment %{private}s: 0x%{private}s", v35, 0x16u);
          v47 = v83;
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v47, -1, -1);
          v48 = v35;
          v21 = v85;
          MEMORY[0x1E12739F0](v48, -1, -1);
        }

        else
        {

          v30(v32, v2);
        }

        sub_1DA84E054(v91, v15);

        v30(v15, v2);
        v18 = v86;
        i = v84;
      }

      else
      {
      }

      ++v9;
      if (v6 == i)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_37:

  return 1;
}

void sub_1DA8508F4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v289 = a2;
  v290 = a3;
  v281 = sub_1DA93FB24();
  v280 = *(v281 - 1);
  MEMORY[0x1EEE9AC00](v281);
  v279 = &v258 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_1DA93F8E4();
  v11 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v13 = &v258 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DA93F964();
  v15 = *(v14 - 8);
  v287 = v14;
  v288 = v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v273 = &v258 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v274 = &v258 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v283 = (&v258 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v285 = &v258 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v268 = &v258 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v269 = &v258 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v276 = &v258 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v266 = &v258 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v267 = (&v258 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v271 = &v258 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v270 = &v258 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v272 = &v258 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v277 = &v258 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v278 = &v258 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v291 = (&v258 - v45);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v258 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v292 = &v258 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  v51 = MEMORY[0x1EEE9AC00](v50 - 8);
  v275 = &v258 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v258 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v258 - v56;
  v284 = v6[14];
  os_unfair_lock_lock(v284 + 4);
  v59 = &selRef_bulletinGroupingSetting;
  if (a5 >> 60 == 15)
  {
LABEL_25:
    v110 = [a1 v59[439]];
    v78 = &selRef_imageDataForContentURL_;
    v111 = [v110 attachments];

    if (!v111)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v55 = a1;
    sub_1DA7AF3EC(0, &unk_1EE110C10, off_1E85D5BC8);
    v112 = sub_1DA940BE4();

    if (v112 >> 62)
    {
LABEL_90:
      v113 = sub_1DA941264();
    }

    else
    {
      v113 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v113)
    {
      a1 = [v55 v59[439]];
      v114 = [a1 identifier];

      if (!v114)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v115 = sub_1DA940A14();
      v117 = v116;

      v298 = v289;
      v299 = v290;

      MEMORY[0x1E1271BD0](v115, v117);

      a5 = v298;
      a1 = v299;
      swift_beginAccess();
      v118 = v6[16];
      if (*(v118 + 16))
      {
        v286 = v55;

        a5 = sub_1DA85A4B4(a5, a1);
        v13 = v119;

        if (v13)
        {
          v292 = *(*(v118 + 56) + 8 * a5);

          a1 = v286;
          a5 = [v286 v59[439]];
          v120 = [a5 identifier];

          if (!v120)
          {
LABEL_99:
            __break(1u);
            goto LABEL_100;
          }

          v121 = sub_1DA940A14();
          v123 = v122;

          v296 = v289;
          v297 = v290;

          MEMORY[0x1E1271BD0](v121, v123);

          v124 = v296;
          v13 = v297;
          swift_beginAccess();
          sub_1DA8F0184(0, v124, v13);
          swift_endAccess();
          a5 = [a1 v59[439]];
          v125 = [a5 v78[473]];

          if (!v125)
          {
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

          v126 = sub_1DA940BE4();

          v265 = v6;
          if (v126 >> 62)
          {
            v6 = sub_1DA941264();
          }

          else
          {
            v6 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          swift_beginAccess();
          if (v6)
          {
            v13 = 0;
            v291 = (v126 & 0xC000000000000001);
            a1 = v126 & 0xFFFFFFFFFFFFFF8;
            v283 = (v288 + 16);
            v282 = v288 + 8;
            while (1)
            {
              if (v291)
              {
                v128 = MEMORY[0x1E1272460](v13, v126);
              }

              else
              {
                if (v13 >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_89;
                }

                v128 = *(v126 + 8 * v13 + 32);
              }

              v78 = v128;
              a5 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                __break(1u);
LABEL_89:
                __break(1u);
                goto LABEL_90;
              }

              v129 = [(SEL *)v128 identifier];
              if (!v129)
              {
                break;
              }

              v130 = v129;
              v131 = sub_1DA940A14();
              v55 = v132;

              v133 = *(v292 + 2);
              if (*(v133 + 16))
              {

                v134 = sub_1DA85A4B4(v131, v55);
                v136 = v135;

                if (v136)
                {
                  v55 = v287;
                  v137 = v288;
                  v138 = *(v133 + 56) + *(v288 + 72) * v134;
                  v139 = v285;
                  (*(v288 + 16))(v285, v138, v287);

                  v127 = sub_1DA93F904();
                  (*(v137 + 8))(v139, v55);
                }

                else
                {

                  v127 = 0;
                }

                v59 = &selRef_bulletinGroupingSetting;
              }

              else
              {

                v127 = 0;
              }

              [(SEL *)v78 setURL:v127];

              ++v13;
              if (a5 == v6)
              {
                goto LABEL_58;
              }
            }

            __break(1u);
            goto LABEL_95;
          }

LABEL_58:

          v55 = v286;
          v147 = [v286 v59[439]];
          v148 = sub_1DA84FF60(v147);

          if (v148)
          {
            if (qword_1EE110D20 == -1)
            {
LABEL_60:
              v149 = sub_1DA9405A4();
              __swift_project_value_buffer(v149, qword_1EE11AD30);
              v150 = v55;
              v151 = sub_1DA940584();
              v152 = sub_1DA940F34();

              if (os_log_type_enabled(v151, v152))
              {
                v153 = swift_slowAlloc();
                v154 = swift_slowAlloc();
                *v153 = 138412290;
                *(v153 + 4) = v150;
                *v154 = v150;
                v155 = v150;
                _os_log_impl(&dword_1DA7A9000, v151, v152, "receiveAdd(notification:): All attachments found for: %@", v153, 0xCu);
                sub_1DA7BA120(v154, &unk_1ECBD5430, &unk_1DA959190);
                MEMORY[0x1E12739F0](v154, -1, -1);
                MEMORY[0x1E12739F0](v153, -1, -1);
              }

              sub_1DA84F300(v150, v289, v290);

              goto LABEL_72;
            }

LABEL_93:
            swift_once();
            goto LABEL_60;
          }

          v6 = v265;
        }

        else
        {

          v55 = v286;
        }
      }

      else
      {
      }

      v156 = [v55 v59[439]];
      v157 = [v156 identifier];

      if (!v157)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v158 = sub_1DA940A14();
      a5 = v159;

      v296 = v289;
      v297 = v290;

      MEMORY[0x1E1271BD0](v158, a5);

      a1 = v296;
      v160 = v297;
      swift_beginAccess();
      v161 = v6[15];
      if (*(v161 + 16) && (, a1 = sub_1DA85A4B4(a1, v160), a5 = v162, , (a5 & 1) != 0))
      {
        v163 = *(*(v161 + 56) + 8 * a1);

        v164 = *(v163 + 32);
        *(v163 + 32) = v55;
        v165 = v55;
      }

      else
      {

        v166 = [v55 v59[439]];
        v167 = [v166 identifier];

        if (!v167)
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        v168 = sub_1DA940A14();
        v170 = v169;

        v172 = v289;
        v171 = v290;
        v294 = v289;
        v295 = v290;

        MEMORY[0x1E1271BD0](v168, v170);

        v174 = v294;
        v173 = v295;
        __swift_project_boxed_opaque_existential_1(v6 + 9, v6[12]);
        sub_1DA84E348(v55, v172, v171);
        v176 = v175;
        type metadata accessor for UserNotificationsCloudReceiverHoldingPen.HoldingNotifications();
        v177 = swift_allocObject();
        v177[2] = v172;
        v177[3] = v171;
        v177[4] = v55;
        v177[5] = v176;
        swift_beginAccess();
        v178 = v55;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v293 = v6[15];
        v6[15] = 0x8000000000000000;
        sub_1DA90AC68(v177, v174, v173, isUniquelyReferenced_nonNull_native);

        v6[15] = v293;
        swift_endAccess();
      }
    }

    else
    {
      if (qword_1EE110D20 != -1)
      {
        swift_once();
      }

      v140 = sub_1DA9405A4();
      __swift_project_value_buffer(v140, qword_1EE11AD30);
      v141 = v55;
      v142 = sub_1DA940584();
      a5 = sub_1DA940F34();
      if (os_log_type_enabled(v142, a5))
      {
        a1 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v298 = v13;
        *a1 = 136315138;
        v55 = [v141 v59[439]];
        v78 = [v55 identifier];

        if (!v78)
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v143 = sub_1DA940A14();
        v145 = v144;

        v146 = sub_1DA7AE6E8(v143, v145, &v298);

        *(a1 + 4) = v146;
        _os_log_impl(&dword_1DA7A9000, v142, a5, "receiveAdd(notification:): No attachments - send it on: %s", a1, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x1E12739F0](v13, -1, -1);
        MEMORY[0x1E12739F0](a1, -1, -1);
      }

      else
      {
      }

      sub_1DA84F300(v141, v289, v290);
    }

LABEL_72:
    os_unfair_lock_unlock(v284 + 4);
    return;
  }

  v286 = a1;
  v60 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v60 != 2)
    {
      goto LABEL_20;
    }

    v62 = *(a4 + 16);
    v61 = *(a4 + 24);
    v63 = v61 - v62;
    if (!__OFSUB__(v61, v62))
    {
LABEL_12:
      sub_1DA841874(a4, a5);
      if (v63 > 0)
      {
        goto LABEL_13;
      }

LABEL_20:
      v58 = sub_1DA852CB0(a4, a5);
LABEL_21:
      a1 = v286;
      goto LABEL_25;
    }

    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(a4), a4))
    {
      __break(1u);
      goto LABEL_93;
    }

    v63 = HIDWORD(a4) - a4;
    goto LABEL_12;
  }

  if (v60)
  {
    goto LABEL_10;
  }

  if (!BYTE6(a5))
  {
    goto LABEL_20;
  }

LABEL_13:
  v64 = [v286 notificationRecord];
  v65 = [v64 communicationContextContentURL];

  if (!v65)
  {
    v109 = sub_1DA852CB0(a4, a5);
    (*(v288 + 56))(v57, 1, 1, v287, v109);
    sub_1DA7BA120(v57, &qword_1ECBD6310, &unk_1DA95F3B0);
    a1 = v286;
    v59 = &selRef_bulletinGroupingSetting;
    goto LABEL_25;
  }

  v263 = a4;
  v264 = a5;
  v265 = v6;
  sub_1DA93F914();

  v66 = v287;
  v67 = v288 + 56;
  v68 = *(v288 + 56);
  v68(v57, 0, 1, v287);
  sub_1DA7BA120(v57, &qword_1ECBD6310, &unk_1DA95F3B0);
  v69 = NSTemporaryDirectory();
  sub_1DA940A14();
  v70 = v11;

  v261 = v67;
  v260 = v68;
  v68(v55, 1, 1, v66);
  v71 = *MEMORY[0x1E6968F70];
  v72 = *(v11 + 104);
  v73 = v282;
  v72(v13, v71, v282);
  sub_1DA93F934();
  v74 = v279;
  sub_1DA93FB14();
  v75 = sub_1DA93FB04();
  v77 = v76;
  (v280[1].isa)(v74, v281);
  v298 = v75;
  v299 = v77;
  v78 = v287;
  v72(v13, v71, v73);
  v79 = v288;
  sub_1DA8282D0();
  v80 = v292;
  sub_1DA93F944();
  (*(v70 + 8))(v13, v73);

  v81 = v79 + 8;
  v82 = *(v79 + 8);
  v82(v48, v78);
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v83 = sub_1DA9405A4();
  v84 = __swift_project_value_buffer(v83, qword_1EE11AD30);
  v55 = (v79 + 16);
  v85 = *(v79 + 16);
  v86 = v291;
  v262 = v85;
  v85(v291, v80, v78);
  v13 = v286;
  v279 = v84;
  v87 = sub_1DA940584();
  v88 = sub_1DA940F34();
  v89 = os_log_type_enabled(v87, v88);
  v59 = &selRef_bulletinGroupingSetting;
  v282 = v81;
  v281 = v82;
  v280 = v13;
  if (v89)
  {
    v259 = v88;
    a5 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v298 = v78;
    *a5 = 136315650;
    a1 = [v13 notificationRecord];
    v90 = [a1 identifier];

    if (!v90)
    {
LABEL_102:

      v281(v291, v287);
      __break(1u);
      goto LABEL_103;
    }

    v258 = v78;
    v91 = sub_1DA940A14();
    v78 = v92;

    v93 = sub_1DA7AE6E8(v91, v78, &v298);

    *(a5 + 4) = v93;
    *(a5 + 12) = 2080;
    a1 = [v13 notificationRecord];
    v94 = [a1 communicationContextContentURL];

    if (!v94)
    {
LABEL_103:
      __break(1u);

      v281(v283, v287);
      __break(1u);
      __break(1u);
      goto LABEL_104;
    }

    v95 = v277;
    sub_1DA93F914();

    v96 = v287;
    v97 = v278;
    (*(v288 + 32))(v278, v95, v287);
    sub_1DA828278();
    v98 = sub_1DA941614();
    v100 = v99;
    v101 = v281;
    v281(v97, v96);
    v102 = sub_1DA7AE6E8(v98, v100, &v298);
    v78 = v96;

    *(a5 + 14) = v102;
    *(a5 + 22) = 2080;
    v103 = v291;
    v104 = sub_1DA941614();
    v106 = v105;
    v101(v103, v78);
    v107 = sub_1DA7AE6E8(v104, v106, &v298);

    *(a5 + 24) = v107;
    _os_log_impl(&dword_1DA7A9000, v87, v259, "receiveAdd(notification:): notification: %s communicationContextContentURL: %s tempLocation: %s", a5, 0x20u);
    v108 = v258;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v108, -1, -1);
    MEMORY[0x1E12739F0](a5, -1, -1);

    v59 = &selRef_bulletinGroupingSetting;
  }

  else
  {

    v82(v86, v78);
  }

  sub_1DA93F9B4();
  v6 = v265;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v185 = v275;
    v260(v275, 1, 1, v78);
    v186 = v292;
LABEL_81:
    sub_1DA7BA120(v185, &qword_1ECBD6310, &unk_1DA95F3B0);
    a5 = v276;
    v262(v276, v186, v78);
    v221 = v78;
    v78 = v280;

    a1 = sub_1DA940584();
    v13 = sub_1DA940F14();
    if (os_log_type_enabled(a1, v13))
    {
      v222 = swift_slowAlloc();
      v291 = swift_slowAlloc();
      v296 = v291;
      *v222 = 136315906;
      v223 = [v78 v59[439]];
      v224 = [v223 identifier];

      if (!v224)
      {
LABEL_105:

        v281(a5, v287);
        __break(1u);
        goto LABEL_106;
      }

      v280 = a1;
      LODWORD(v283) = v13;

      v225 = sub_1DA940A14();
      v227 = v226;

      v228 = sub_1DA7AE6E8(v225, v227, &v296);

      *(v222 + 4) = v228;
      *(v222 + 12) = 2080;
      v229 = [v78 v59[439]];
      v230 = [v229 communicationContextContentURL];

      if (!v230)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v231 = v268;
      sub_1DA93F914();

      v232 = v287;
      v233 = v269;
      (*(v288 + 32))(v269, v231, v287);
      sub_1DA828278();
      v234 = sub_1DA941614();
      v236 = v235;
      v237 = v233;
      v13 = v282;
      a5 = v281;
      v281(v237, v232);
      v238 = sub_1DA7AE6E8(v234, v236, &v296);

      *(v222 + 14) = v238;
      *(v222 + 22) = 2080;
      Strong = swift_unknownObjectWeakLoadStrong();
      v240 = v6[18];
      v298 = Strong;
      v299 = v240;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5718, &qword_1DA95B8E8);
      v241 = sub_1DA940A74();
      v243 = sub_1DA7AE6E8(v241, v242, &v296);

      *(v222 + 24) = v243;
      *(v222 + 32) = 2080;
      v55 = v276;
      v244 = sub_1DA941614();
      v246 = v245;
      (a5)(v55, v232);
      v247 = sub_1DA7AE6E8(v244, v246, &v296);

      *(v222 + 34) = v247;
      v248 = v280;
      _os_log_impl(&dword_1DA7A9000, v280, v283, "receiveAdd(notification:): notification: %s communicationContextContentURL: %s attachmentDelegate: %s failed to generate storage URL for tempLocation: %s", v222, 0x2Au);
      v249 = v291;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v249, -1, -1);
      MEMORY[0x1E12739F0](v222, -1, -1);

      v250 = sub_1DA852CB0(v263, v264);
      (a5)(v292, v232, v250);
    }

    else
    {

      sub_1DA852CB0(v263, v264);

      v251 = v281;
      v281(a5, v221);
      v251(v186, v221);
    }

    goto LABEL_21;
  }

  v180 = v6[18];
  a5 = [v280 v59[439]];
  a1 = [a5 identifier];

  if (!a1)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  ObjectType = swift_getObjectType();
  v182 = sub_1DA940A14();
  v184 = v183;

  v185 = v275;
  v186 = v292;
  (*(v180 + 8))(v292, v182, v184, v289, v290, ObjectType, v180);
  swift_unknownObjectRelease();

  v78 = v287;
  if ((*(v288 + 48))(v185, 1, v287) == 1)
  {
    goto LABEL_81;
  }

  v187 = v78;
  v188 = *(v288 + 32);
  v189 = v272;
  v188(v272, v185, v187);
  a5 = v270;
  v190 = v189;
  v191 = v262;
  v262(v270, v190, v187);
  v13 = v271;
  v191(v271, v186, v187);
  a1 = v280;
  v192 = sub_1DA940584();
  v55 = sub_1DA940F34();
  if (!os_log_type_enabled(v192, v55))
  {

    v211 = v281;
    v281(v13, v187);
    v211(a5, v187);
    v207 = v187;
    goto LABEL_87;
  }

  LODWORD(v283) = v55;
  v291 = v192;
  v193 = swift_slowAlloc();
  v194 = swift_slowAlloc();
  v298 = v194;
  *v193 = 136315906;
  v195 = [a1 v59[439]];
  v196 = [v195 identifier];

  if (!v196)
  {
LABEL_107:

    v256 = v287;
    v257 = v281;
    v281(v271, v287);
    v257(v270, v256);
    __break(1u);
    goto LABEL_108;
  }

  v280 = v194;
  v197 = sub_1DA940A14();
  v199 = v198;

  v200 = sub_1DA7AE6E8(v197, v199, &v298);

  *(v193 + 4) = v200;
  *(v193 + 12) = 2080;
  v201 = [a1 v59[439]];
  v202 = [v201 communicationContextContentURL];

  v203 = v270;
  if (v202)
  {
    v204 = v266;
    sub_1DA93F914();

    v205 = v267;
    v206 = v287;
    v188(v267, v204, v287);
    v207 = v206;
    sub_1DA828278();
    v208 = sub_1DA941614();
    v210 = v209;
    v211 = v281;
    v281(v205, v207);
    v212 = sub_1DA7AE6E8(v208, v210, &v298);

    *(v193 + 14) = v212;
    *(v193 + 22) = 2080;
    v213 = sub_1DA941614();
    v215 = v214;
    v211(v203, v207);
    v216 = sub_1DA7AE6E8(v213, v215, &v298);

    *(v193 + 24) = v216;
    *(v193 + 32) = 2080;
    v13 = v271;
    v217 = sub_1DA941614();
    v55 = v218;
    v211(v13, v207);
    v219 = sub_1DA7AE6E8(v217, v55, &v298);

    *(v193 + 34) = v219;
    v220 = v291;
    _os_log_impl(&dword_1DA7A9000, v291, v283, "receiveAdd(notification:): notification: %s communicationContextContentURL: %s storageURL: %s for tempLocation: %s", v193, 0x2Au);
    a5 = v280;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](a5, -1, -1);
    MEMORY[0x1E12739F0](v193, -1, -1);

    v59 = &selRef_bulletinGroupingSetting;
LABEL_87:
    v252 = [a1 v59[439]];
    v253 = v272;
    v254 = sub_1DA93F904();
    [v252 setCommunicationContextContentURL_];

    v255 = sub_1DA852CB0(v263, v264);
    (v211)(v253, v207, v255);
    v211(v292, v207);
    v6 = v265;
    goto LABEL_21;
  }

LABEL_108:
  __break(1u);
}

uint64_t sub_1DA852B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DA7B7470;

  return sub_1DA84F4E8(a1, v4, v5, v6, v7, v9, v8);
}

double sub_1DA852CB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DA828324(a1, a2);
  }

  return result;
}

UserNotificationsCore::AlertCoordinatorResult::Behavior_optional __swiftcall AlertCoordinatorResult.Behavior.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DA9414F4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AlertCoordinatorResult.Behavior.rawValue.getter()
{
  v1 = 0x7472656C61;
  if (*v0 != 1)
  {
    v1 = 0x656C41746F4E6F64;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E696665646E75;
  }
}

uint64_t sub_1DA852D8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7472656C61;
  if (v2 != 1)
  {
    v4 = 0x656C41746F4E6F64;
    v3 = 0xEA00000000007472;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656E696665646E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7472656C61;
  if (*a2 != 1)
  {
    v8 = 0x656C41746F4E6F64;
    v7 = 0xEA00000000007472;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E696665646E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DA941684();
  }

  return v11 & 1;
}

uint64_t sub_1DA852E90()
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA852F38(uint64_t a1)
{
  sub_1DA940AB4();
}

uint64_t sub_1DA852FCC(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

void sub_1DA85307C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xE500000000000000;
  v5 = 0x7472656C61;
  if (v2 != 1)
  {
    v5 = 0x656C41746F4E6F64;
    v4 = 0xEA00000000007472;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696665646E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

UserNotificationsCore::AlertCoordinatorResult::Reason_optional __swiftcall AlertCoordinatorResult.Reason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DA9414F4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AlertCoordinatorResult.Reason.rawValue.getter()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E696665646E75;
  }
}

uint64_t sub_1DA853258(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000012;
  v3 = *a1;
  v4 = 0x80000001DA9502F0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001DA9502F0;
  }

  else
  {
    v6 = 0x80000001DA950310;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696665646E75;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x80000001DA950310;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x656E696665646E75;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DA941684();
  }

  return v11 & 1;
}

uint64_t sub_1DA853338()
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8533EC(uint64_t a1)
{
  sub_1DA940AB4();
}

uint64_t sub_1DA85348C(uint64_t a1)
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

void sub_1DA853548(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x80000001DA9502F0;
  v5 = 0xD000000000000014;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001DA950310;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696665646E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AlertCoordinatorResult.description.getter()
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0x726F697661686562, 0xEA0000000000203ALL);
  sub_1DA941494();
  MEMORY[0x1E1271BD0](0x6E6F73616572203BLL, 0xEA0000000000203ALL);
  sub_1DA941494();
  return 0;
}

uint64_t sub_1DA853764()
{
  if (*v0)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 0x726F697661686562;
  }
}

uint64_t sub_1DA85379C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F697661686562 && a2 == 0xE800000000000000;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA853874(uint64_t a1)
{
  v2 = sub_1DA853A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8538B0(uint64_t a1)
{
  v2 = sub_1DA853A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlertCoordinatorResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5740, &qword_1DA95B900);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA853A88();
  sub_1DA941834();
  v15 = v8;
  v14 = 0;
  sub_1DA853ADC();
  sub_1DA941604();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1DA853B30();
    sub_1DA941604();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1DA853A88()
{
  result = qword_1ECBD5748;
  if (!qword_1ECBD5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5748);
  }

  return result;
}

unint64_t sub_1DA853ADC()
{
  result = qword_1ECBD5750;
  if (!qword_1ECBD5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5750);
  }

  return result;
}

unint64_t sub_1DA853B30()
{
  result = qword_1ECBD5758;
  if (!qword_1ECBD5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5758);
  }

  return result;
}

uint64_t AlertCoordinatorResult.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5760, &unk_1DA95B908);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA853A88();
  sub_1DA941804();
  if (!v2)
  {
    v15 = 0;
    sub_1DA853D58();
    sub_1DA941584();
    v9 = v16;
    v13 = 1;
    sub_1DA853DAC();
    sub_1DA941584();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DA853D58()
{
  result = qword_1ECBD5768;
  if (!qword_1ECBD5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5768);
  }

  return result;
}

unint64_t sub_1DA853DAC()
{
  result = qword_1ECBD5770;
  if (!qword_1ECBD5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5770);
  }

  return result;
}

uint64_t sub_1DA853E70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1DA853ED0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1DA853F64;
}

void sub_1DA853F64(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t AlertCoordinator.__allocating_init(serviceManager:)(char *a1)
{
  v2 = swift_allocObject();
  AlertCoordinator.init(serviceManager:)(a1);
  return v2;
}

void *AlertCoordinator.init(serviceManager:)(char *a1)
{
  v2 = v1;
  v16 = a1;
  v15 = sub_1DA940FC4();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DA7AC344();
  v14[1] = "ldingPenWakingTimerProvider-";
  v14[2] = v8;
  sub_1DA940824();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFA8(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v15);
  v9 = v16;
  v1[2] = sub_1DA941004();
  v1[3] = 0;
  swift_weakInit();
  v1[6] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteNotificationsProperties;
  swift_beginAccess();
  result = *&v9[v10];
  if (result)
  {
    v2[7] = result;
    if ((result[2] & 1) != 0 || (v12 = *&v9[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_idsCloudReceiver]) == 0)
    {
    }

    else
    {

      v13 = v12;

      *&v13[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_coordinationDelegate + 8] = &protocol witness table for AlertCoordinator;
      swift_unknownObjectWeakAssign();
      v9 = v13;
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA854330(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA854350, 0, 0);
}

uint64_t sub_1DA854350()
{
  v28 = v0;
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5778, &qword_1DA95B920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA9596E0;
  *(inited + 32) = 1;
  *(inited + 40) = &unk_1DA95B930;
  *(inited + 48) = v1;

  v3 = sub_1DA848DB0(inited);
  *(v0 + 104) = v3;
  swift_setDeallocating();
  sub_1DA7BA120(inited + 32, &qword_1ECBD5780, &qword_1DA95B938);
  v4 = *(v3 + 32);
  *(v0 + 147) = v4;
  v5 = -1;
  v6 = -1 << v4;
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  if (v7)
  {
    v8 = 0;
    v9 = *(v0 + 104);
LABEL_8:
    *(v0 + 112) = v7;
    *(v0 + 120) = v8;
    v12 = __clz(__rbit64(v7)) | (v8 << 6);
    *(v0 + 148) = *(*(v9 + 48) + v12);
    v13 = *(v9 + 56) + 16 * v12;
    v14 = *v13;
    *(v0 + 128) = *(v13 + 8);

    v24 = (v14 + *v14);
    v15 = swift_task_alloc();
    *(v0 + 136) = v15;
    *v15 = v0;
    v15[1] = sub_1DA854784;

    return v24(v0 + 144);
  }

  else
  {
    v10 = 0;
    v11 = ((63 - v6) >> 6) - 1;
    v9 = *(v0 + 104);
    while (v11 != v10)
    {
      v8 = v10 + 1;
      v7 = *(v9 + 8 * v10++ + 72);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    if (qword_1ECBD4738 != -1)
    {
      swift_once();
    }

    v17 = sub_1DA9405A4();
    __swift_project_value_buffer(v17, qword_1ECBD5728);
    v18 = sub_1DA940584();
    v19 = sub_1DA940F34();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      v26 = 0;
      *v20 = 136446210;
      v27 = 0xE000000000000000;
      sub_1DA941364();
      *(v0 + 72) = v26;
      *(v0 + 80) = 0xE000000000000000;
      MEMORY[0x1E1271BD0](0x726F697661686562, 0xEA0000000000203ALL);
      *(v0 + 145) = 1;
      sub_1DA941494();
      MEMORY[0x1E1271BD0](0x6E6F73616572203BLL, 0xEA0000000000203ALL);
      *(v0 + 146) = 0;
      sub_1DA941494();
      v22 = sub_1DA7AE6E8(*(v0 + 72), *(v0 + 80), &v25);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_1DA7A9000, v18, v19, "Coordinator result: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12739F0](v21, -1, -1);
      MEMORY[0x1E12739F0](v20, -1, -1);
    }

    **(v0 + 88) = 1;
    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1DA854784()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA854880, 0, 0);
}

uint64_t sub_1DA854880()
{
  v24 = v0;

  v2 = *(v0 + 144);
  if (v2 != 3)
  {
    v1 = *(v0 + 148);

    if (v1 == 3)
    {
LABEL_14:
      v1 = 0;
    }

    if (qword_1ECBD4738 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v3 = *(v0 + 120);
  v4 = (*(v0 + 112) - 1) & *(v0 + 112);
  if (!v4)
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v5 = *(v0 + 104);
      if (v6 >= (((1 << *(v0 + 147)) + 63) >> 6))
      {

        LOBYTE(v2) = 1;
        goto LABEL_14;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
LABEL_16:
    v12 = sub_1DA9405A4();
    __swift_project_value_buffer(v12, qword_1ECBD5728);
    v13 = sub_1DA940584();
    v14 = sub_1DA940F34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      v22 = 0;
      *v15 = 136446210;
      v23 = 0xE000000000000000;
      sub_1DA941364();
      *(v0 + 72) = v22;
      *(v0 + 80) = 0xE000000000000000;
      MEMORY[0x1E1271BD0](0x726F697661686562, 0xEA0000000000203ALL);
      *(v0 + 145) = v2;
      sub_1DA941494();
      MEMORY[0x1E1271BD0](0x6E6F73616572203BLL, 0xEA0000000000203ALL);
      *(v0 + 146) = v1;
      sub_1DA941494();
      v17 = sub_1DA7AE6E8(*(v0 + 72), *(v0 + 80), &v21);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_1DA7A9000, v13, v14, "Coordinator result: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E12739F0](v16, -1, -1);
      MEMORY[0x1E12739F0](v15, -1, -1);
    }

    v18 = *(v0 + 88);
    *v18 = v2;
    v18[1] = v1;
    v19 = *(v0 + 8);

    return v19();
  }

  v5 = *(v0 + 104);
LABEL_10:
  *(v0 + 112) = v4;
  *(v0 + 120) = v3;
  v7 = __clz(__rbit64(v4)) | (v3 << 6);
  *(v0 + 148) = *(*(v5 + 48) + v7);
  v8 = *(v5 + 56) + 16 * v7;
  v9 = *v8;
  *(v0 + 128) = *(v8 + 8);

  v20 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = sub_1DA854784;

  return v20(v0 + 144);
}

uint64_t sub_1DA854C78()
{
  if (qword_1ECBD4730 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DA854D44;
  v2 = *(v0 + 16);

  return sub_1DA854FAC(v2);
}

uint64_t sub_1DA854D44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DA854E38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA7B7470;

  return sub_1DA854C58(a1);
}

uint64_t AlertCoordinator.deinit()
{

  swift_weakDestroy();
  sub_1DA7C5714(v0 + 40);

  return v0;
}

uint64_t AlertCoordinator.__deallocating_deinit()
{

  swift_weakDestroy();
  sub_1DA7C5714(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA854F6C()
{
  type metadata accessor for AlertCoordinator.Sharing();
  swift_allocObject();
  result = sub_1DA8563A8();
  qword_1ECBD5720 = result;
  return result;
}

uint64_t sub_1DA854FAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA855048, v1, 0);
}

uint64_t sub_1DA855048()
{
  v1 = v0[3];
  v2 = *(v1 + 120);
  v0[5] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[6] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57B0, &qword_1DA95BE30);
    *v3 = v0;
    v3[1] = sub_1DA855274;
    v5 = v0[2];
  }

  else
  {
    v6 = v0[4];
    v7 = sub_1DA940D34();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = sub_1DA7ACFA8(&qword_1ECBD57B8, type metadata accessor for AlertCoordinator.Sharing, &unk_1DA95BDB0);
    v9 = swift_allocObject();
    v9[2] = v1;
    v9[3] = v8;
    v9[4] = v1;
    swift_retain_n();
    v2 = sub_1DA8DB30C(0, 0, v6, &unk_1DA95BE40, v9);
    v0[7] = v2;
    *(v1 + 120) = v2;

    v10 = swift_task_alloc();
    v0[8] = v10;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57B0, &qword_1DA95BE30);
    *v10 = v0;
    v10[1] = sub_1DA8553EC;
    v5 = v0 + 9;
  }

  return MEMORY[0x1EEE6DA40](v5, v2, v4);
}

uint64_t sub_1DA855274()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1DA855384, v1, 0);
}

uint64_t sub_1DA855384()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA8553EC()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1DA8554FC, v1, 0);
}

uint64_t sub_1DA8554FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 72);
  *(v2 + 120) = 0;

  *v1 = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DA855584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 112) = a1;
  *(v4 + 120) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DA8555A4, a4, 0);
}

uint64_t sub_1DA8555A4()
{
  v1 = v0[15];
  v2 = swift_allocObject();
  v0[16] = v2;
  *(v2 + 16) = 3;
  v3 = dispatch_group_create();
  v0[17] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E69CDE80]) init];
  v0[18] = v4;
  [v4 setDispatchQueue_];
  [v4 setType_];
  if (qword_1ECBD47A8 != -1)
  {
    swift_once();
  }

  v5 = v0[15];
  [v4 setTimeout_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  v0[6] = sub_1DA856ED8;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DA855DAC;
  v0[5] = &block_descriptor_6;
  v7 = _Block_copy(v0 + 2);

  v8 = v4;

  [v8 setCompletionHandler_];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v0[12] = sub_1DA856EE0;
  v0[13] = v9;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1DA7AF1D0;
  v0[11] = &block_descriptor_60;
  v10 = _Block_copy(v0 + 8);
  v11 = v3;

  [v8 setInvalidationHandler_];
  _Block_release(v10);
  dispatch_group_enter(v11);
  [v8 start];
  v12 = sub_1DA7ACFA8(&qword_1ECBD57B8, type metadata accessor for AlertCoordinator.Sharing, &unk_1DA95BDB0);
  v13 = swift_task_alloc();
  v0[19] = v13;
  v13[2] = v11;
  v13[3] = v5;
  v13[4] = v2;
  v14 = swift_task_alloc();
  v0[20] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57B0, &qword_1DA95BE30);
  *v14 = v0;
  v14[1] = sub_1DA855928;
  v16 = v0[14];

  return MEMORY[0x1EEE6DDE0](v16, v5, v12, 0x2865747563657865, 0xE900000000000029, sub_1DA856EE8, v13, v15);
}

uint64_t sub_1DA855928()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1DA855A54, v1, 0);
}

uint64_t sub_1DA855A54()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1DA855AC4(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v7 = a1;
    if (qword_1ECBD4738 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA9405A4();
    __swift_project_value_buffer(v8, qword_1ECBD5728);
    v9 = a1;
    v10 = sub_1DA940584();
    v11 = sub_1DA940F14();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1DA7A9000, v10, v11, "Sharing: Completion handler called with error: %{public}@", v12, 0xCu);
      sub_1DA7BA120(v13, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v13, -1, -1);
      MEMORY[0x1E12739F0](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1ECBD4738 != -1)
    {
      swift_once();
    }

    v18 = sub_1DA9405A4();
    __swift_project_value_buffer(v18, qword_1ECBD5728);
    v19 = sub_1DA940584();
    v20 = sub_1DA940F34();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28[0] = v22;
      *v21 = 136315138;
      if (a2)
      {
        v23 = 0;
      }

      else
      {
        v23 = 544501614;
      }

      if (a2)
      {
        v24 = 0xE000000000000000;
      }

      else
      {
        v24 = 0xE400000000000000;
      }

      v25 = sub_1DA7AE6E8(v23, v24, v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1DA7A9000, v19, v20, "Sharing: I am %sthe best.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12739F0](v22, -1, -1);
      MEMORY[0x1E12739F0](v21, -1, -1);
    }

    if (a2)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    swift_beginAccess();
    *(a4 + 16) = v26;
  }

  return [a5 invalidate];
}

uint64_t sub_1DA855DAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a4)
  {
    v7 = sub_1DA940974();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v6(a2, a3, v7);
}

void sub_1DA855E60(NSObject *a1)
{
  if (qword_1ECBD4738 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1ECBD5728);
  v3 = sub_1DA940584();
  v4 = sub_1DA940F04();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "Sharing: Invalidation handler called", v5, 2u);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  dispatch_group_leave(a1);
}

double sub_1DA855F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v27 = a2;
  v6 = sub_1DA9407F4();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA940854();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57C0, &qword_1DA95BE48);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  v17 = *(a3 + 112);
  (*(v13 + 16))(&v23 - v15, a1, v12);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v18, v16, v12);
  *(v19 + ((v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_1DA856EF4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_67;
  v20 = _Block_copy(aBlock);
  v21 = v17;

  sub_1DA940824();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFA8(&qword_1EE115A90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  sub_1DA940F64();
  _Block_release(v20);

  (*(v26 + 8))(v8, v6);
  (*(v24 + 8))(v11, v25);

  return result;
}

uint64_t sub_1DA856300(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57C0, &qword_1DA95BE48);
  return sub_1DA940C54();
}

uint64_t sub_1DA856368()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DA8563A8()
{
  v9 = sub_1DA940FC4();
  v1 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA940F74();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DA940854();
  MEMORY[0x1EEE9AC00](v5 - 8);
  swift_defaultActor_initialize();
  v6 = sub_1DA7AC344();
  v8[0] = "8B16@NSDictionary20";
  v8[1] = v6;
  sub_1DA940824();
  v10 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFA8(&qword_1EE115A60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v9);
  *(v0 + 112) = sub_1DA941004();
  *(v0 + 120) = 0;
  return v0;
}

uint64_t AlertCoordinator.response(_:fromID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 48);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DA8566AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 48);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DA856748()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD5728);
  __swift_project_value_buffer(v0, qword_1ECBD5728);
  return sub_1DA940594();
}

unint64_t sub_1DA8567CC()
{
  result = qword_1ECBD5788;
  if (!qword_1ECBD5788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5788);
  }

  return result;
}

unint64_t sub_1DA856824()
{
  result = qword_1ECBD5790;
  if (!qword_1ECBD5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5790);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertCoordinatorResult(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for AlertCoordinatorResult(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t dispatch thunk of AlertCoordinator.shouldAlert(notificationID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 208) + **(*v3 + 208));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DA7B7660;

  return v10(a1, a2, a3);
}

uint64_t sub_1DA856C20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA856C70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DA856CC4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DA856CDC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1DA856D20()
{
  result = qword_1ECBD5798;
  if (!qword_1ECBD5798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5798);
  }

  return result;
}

unint64_t sub_1DA856D78()
{
  result = qword_1ECBD57A0;
  if (!qword_1ECBD57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD57A0);
  }

  return result;
}

unint64_t sub_1DA856DD0()
{
  result = qword_1ECBD57A8;
  if (!qword_1ECBD57A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD57A8);
  }

  return result;
}

uint64_t sub_1DA856E24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7660;

  return sub_1DA855584(a1, v4, v5, v6);
}

uint64_t sub_1DA856EF4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57C0, &qword_1DA95BE48) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DA856300(v0 + v2, v3);
}

unint64_t sub_1DA856F8C()
{
  result = qword_1ECBD57C8;
  if (!qword_1ECBD57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD57C8);
  }

  return result;
}

unint64_t sub_1DA856FE0()
{
  result = qword_1ECBD57D0;
  if (!qword_1ECBD57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD57D0);
  }

  return result;
}

uint64_t sub_1DA857034(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v49 = a3;
  v44 = a1;
  v48 = type metadata accessor for UserNotificationsCloudRecord(0);
  MEMORY[0x1EEE9AC00](v48);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for AlertCoordinationMessage(0);
  MEMORY[0x1EEE9AC00](v46);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA93FAF4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBD4738 != -1)
  {
    swift_once();
  }

  v14 = sub_1DA9405A4();
  v15 = __swift_project_value_buffer(v14, qword_1ECBD5728);
  v16 = *(v11 + 16);
  v47 = a4;
  v45 = v16;
  v16(v13, a4, v10);

  v17 = sub_1DA940584();
  v18 = sub_1DA940EF4();

  v43 = v18;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v42 = v7;
    v20 = v19;
    v40 = swift_slowAlloc();
    v50 = v40;
    *v20 = 136315650;
    v21 = v44;
    *(v20 + 4) = sub_1DA7AE6E8(v44, a2, &v50);
    *(v20 + 12) = 1024;
    *(v20 + 14) = v49 & 1;
    *(v20 + 18) = 2080;
    sub_1DA7ACFA8(&qword_1EE114C88, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v39 = v17;
    v41 = v15;
    v22 = v10;
    v23 = sub_1DA941614();
    v24 = a2;
    v26 = v25;
    (*(v11 + 8))(v13, v22);
    v27 = sub_1DA7AE6E8(v23, v26, &v50);
    a2 = v24;

    *(v20 + 20) = v27;
    v28 = v39;
    _os_log_impl(&dword_1DA7A9000, v39, v43, "[%s] didAlert: %{BOOL}d; date: %s", v20, 0x1Cu);
    v29 = v40;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v29, -1, -1);
    v30 = v20;
    v7 = v42;
    MEMORY[0x1E12739F0](v30, -1, -1);

    v31 = v22;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
    v21 = v44;
    v31 = v10;
  }

  v32 = v46;
  v45(&v9[*(v46 + 24)], v47, v31);
  *v9 = v21;
  *(v9 + 1) = a2;
  v9[16] = v49 & 1;
  *&v9[*(v32 + 28)] = 3;
  sub_1DA857528(v9, v7 + *(v48 + 20));
  type metadata accessor for CloudAction(0);
  swift_storeEnumTagMultiPayload();
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    sub_1DA8A7238(v7);
  }

  else
  {
    v34 = sub_1DA940584();
    v35 = sub_1DA940F14();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1DA7A9000, v34, v35, "No push target for response from alert coordinator.", v36, 2u);
      MEMORY[0x1E12739F0](v36, -1, -1);
    }
  }

  sub_1DA85758C(v7, type metadata accessor for UserNotificationsCloudRecord);
  return sub_1DA85758C(v9, type metadata accessor for AlertCoordinationMessage);
}

uint64_t sub_1DA857528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertCoordinationMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA85758C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA857604()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DA85766C()
{
  type metadata accessor for UNGenerativeModelAvailabilityCache();
  swift_allocObject();
  result = sub_1DA8576B0();
  qword_1EE11ADD8 = result;
  return result;
}

uint64_t sub_1DA8576B0()
{
  *(v0 + 16) = sub_1DA8481DC(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD53F0, &qword_1DA95AFB0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = sub_1DA940A04();
  *(v0 + 40) = sub_1DA8576A8;
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v2, v0, *(v0 + 40), *(v0 + 32), 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v0;
}

uint64_t sub_1DA85775C()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = v0[4];
  CFNotificationCenterRemoveObserver(v1, v0, v2, 0);

  return swift_deallocClassInstance();
}

double sub_1DA857820(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);

    MEMORY[0x1EEE9AC00](v2);

    os_unfair_lock_lock(v1 + 4);
    sub_1DA84A760(v3);
    os_unfair_lock_unlock(v1 + 4);
  }

  return result;
}

uint64_t sub_1DA8578D4()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
}

double sub_1DA857960(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

double sub_1DA8579B4()
{
  if (qword_1EE110EC0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  __swift_project_value_buffer(v1, qword_1EE110EC8);

  v2 = sub_1DA940584();
  v3 = sub_1DA940F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    swift_getKeyPath();
    sub_1DA86302C(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability, &protocol conformance descriptor for RemoteNotificationsProperties.Availability);
    sub_1DA93FB74();

    *(v4 + 4) = *(v0 + 16);

    _os_log_impl(&dword_1DA7A9000, v2, v3, "isAvailable = %{BOOL}d", v4, 8u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  else
  {
  }

  return result;
}

void sub_1DA857B5C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA86302C(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability, &protocol conformance descriptor for RemoteNotificationsProperties.Availability);
  sub_1DA93FB74();

  *a2 = *(v3 + 16);
}

uint64_t sub_1DA857C2C()
{
  swift_getKeyPath();
  sub_1DA86302C(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability, &protocol conformance descriptor for RemoteNotificationsProperties.Availability);
  sub_1DA93FB74();

  return *(v0 + 16);
}

uint64_t type metadata accessor for RemoteNotificationsProperties.Availability(uint64_t a1)
{
  result = qword_1EE1149A0;
  if (!qword_1EE1149A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1DA857D18(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;

    return sub_1DA8579B4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA86302C(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability, &protocol conformance descriptor for RemoteNotificationsProperties.Availability);
    sub_1DA93FB64();
  }

  return result;
}

id sub_1DA857E4C()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  v3 = (v0 + 24);
  sub_1DA93FBA4();
  if (qword_1EE112A90 != -1)
  {
    swift_once();
  }

  sub_1DA8B3544(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD58D0, &qword_1DA95C1D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA958370;
  *(inited + 32) = _s12AvailabilityC14os_eligibilityCMa();
  *(inited + 40) = &off_1F5633DB0;
  *(inited + 48) = _s12AvailabilityC16DeviceManagementCMa();
  *(inited + 56) = &off_1F5633D90;
  if (qword_1EE110C48 != -1)
  {
    swift_once();
  }

  if (dword_1EE110C50 != 1)
  {
    if (qword_1EE110EC0 != -1)
    {
      swift_once();
    }

    v27 = sub_1DA9405A4();
    __swift_project_value_buffer(v27, qword_1EE110EC8);
    v28 = sub_1DA940584();
    v29 = sub_1DA940F34();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35[0] = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_1DA7AE6E8(0x6C43656369766544, 0xEB00000000737361, v35);
      _os_log_impl(&dword_1DA7A9000, v28, v29, "Unavailable. Reason: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E12739F0](v31, -1, -1);
      MEMORY[0x1E12739F0](v30, -1, -1);
    }

    swift_setDeallocating();
    v32 = sub_1DA940584();
    v33 = sub_1DA940F34();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DA7A9000, v32, v33, "Bailing on availability monitoring; feature is statically unavailable.", v34, 2u);
      MEMORY[0x1E12739F0](v34, -1, -1);
    }

    return v1;
  }

  v7 = *(inited + 32);
  v6 = *(inited + 40);
  v8 = *(v6 + 8);

  v10 = v8(v9, &off_1F5633D68, v7, v6);
  (*(v6 + 16))(v7, v6);
  swift_beginAccess();
  v11 = *(v1 + 24);
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 24) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DA885EC8(0, v11[2] + 1, 1, v11);
    *v3 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1DA885EC8((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = v10;
  v15[5] = v6;
  *(v1 + 24) = v11;
  swift_endAccess();

  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + 32) = &off_1F5633D68;
  swift_unknownObjectWeakAssign();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v18 = result;
    v19 = sub_1DA858F20();
    [v18 registerObserver_];

    swift_beginAccess();
    v20 = *v3;
    swift_unknownObjectRetain();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v20;
    if ((v21 & 1) == 0)
    {
      v20 = sub_1DA885EC8(0, v20[2] + 1, 1, v20);
      *v3 = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1DA885EC8((v22 > 1), v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    v24 = &v20[2 * v23];
    v24[4] = v16;
    v24[5] = &off_1F5633D90;
    *(v1 + 24) = v20;
    swift_endAccess();

    v25 = sub_1DA858474() & 1;
    if (v25 == *(v1 + 16))
    {
      *(v1 + 16) = v25;
      sub_1DA8579B4();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v35[0] = v1;
      sub_1DA86302C(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability, &protocol conformance descriptor for RemoteNotificationsProperties.Availability);
      sub_1DA93FB64();
    }

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA858474()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v5 = *v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 24);
      swift_unknownObjectRetain();
      if ((v7(ObjectType, v5) & 1) == 0)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v3;
      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    swift_getObjectType();
    v13 = sub_1DA941884();
    v15 = v14;
    if (qword_1EE110EC0 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA9405A4();
    __swift_project_value_buffer(v16, qword_1EE110EC8);

    v17 = sub_1DA940584();
    v18 = sub_1DA940F34();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_1DA7AE6E8(v13, v15, &v21);
      _os_log_impl(&dword_1DA7A9000, v17, v18, "Unavailable. Reason: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12739F0](v20, -1, -1);
      MEMORY[0x1E12739F0](v19, -1, -1);
    }

    swift_unknownObjectRelease();

    return 0;
  }

  else
  {
LABEL_6:

    if (qword_1EE110EC0 != -1)
    {
LABEL_16:
      swift_once();
    }

    v8 = sub_1DA9405A4();
    __swift_project_value_buffer(v8, qword_1EE110EC8);
    v9 = sub_1DA940584();
    v10 = sub_1DA940F34();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DA7A9000, v9, v10, "All availability checks passed.", v11, 2u);
      MEMORY[0x1E12739F0](v11, -1, -1);
    }

    return 1;
  }
}

uint64_t RemoteNotificationsProperties.Availability.deinit()
{

  v1 = OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties12Availability___observationRegistrar;
  v2 = sub_1DA93FBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t RemoteNotificationsProperties.Availability.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties12Availability___observationRegistrar;
  v2 = sub_1DA93FBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1DA85885C()
{
  v1 = sub_1DA858474() & 1;
  swift_getKeyPath();
  sub_1DA86302C(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability, &protocol conformance descriptor for RemoteNotificationsProperties.Availability);
  sub_1DA93FB74();

  if (v1 == *(v0 + 16))
  {
    if (qword_1EE110EC0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DA9405A4();
    __swift_project_value_buffer(v3, qword_1EE110EC8);
    v4 = sub_1DA940584();
    v5 = sub_1DA940EF4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DA7A9000, v4, v5, "No change to availability.", v6, 2u);
      MEMORY[0x1E12739F0](v6, -1, -1);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA93FB64();
  }
}

void sub_1DA858A5C()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = sub_1DA940804();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  out_token = -1;
  sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7FA0], v0);
  v4 = sub_1DA941014();
  (*(v1 + 8))(v3, v0);
  v5 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1DA862E74;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA857960;
  aBlock[3] = &block_descriptor_7;
  v6 = _Block_copy(aBlock);

  v7 = sub_1DA940A94();
  LODWORD(v0) = notify_register_dispatch((v7 + 32), &out_token, v4, v6);

  _Block_release(v6);

  if (v0)
  {
    if (qword_1EE110EC0 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA9405A4();
    __swift_project_value_buffer(v8, qword_1EE110EC8);
    v9 = sub_1DA940584();
    v10 = sub_1DA940F14();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DA7A9000, v9, v10, "Failed to register for os_eligibility notification.", v11, 2u);
      MEMORY[0x1E12739F0](v11, -1, -1);
    }
  }
}

void sub_1DA858D44(uint64_t a1, uint64_t a2)
{
  if (qword_1EE110EC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1EE110EC8);
  v3 = sub_1DA940584();
  v4 = sub_1DA940F34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "Received os_eligibility notification.", v5, 2u);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_1DA85885C();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1DA858E70()
{
  sub_1DA7C5714(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA858EA8(uint64_t a1, uint64_t a2)
{
  _s12AvailabilityC14os_eligibilityCMa();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

id sub_1DA858F20()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    swift_unknownObjectWeakLoadStrong();
    v3 = *(v0 + 32);
    v4 = _s12AvailabilityC28ManagedConfigurationObserverCMa();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtCCC21UserNotificationsCore29RemoteNotificationsProperties12AvailabilityP33_4AD97FADDCB7378298ADDAABCB61570928ManagedConfigurationObserver_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = v3;
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    swift_unknownObjectRelease();
    v7 = *(v0 + 16);
    *(v0 + 16) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_1DA858FEC()
{
  sub_1DA7C5714(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA85902C(uint64_t a1)
{
  v3 = type metadata accessor for RemoteNotificationsProperties.Availability(0);

  return sub_1DA862D18(a1, v1, v3, &off_1F5633D68);
}

void sub_1DA859078()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v2 = sub_1DA858F20();
    [v1 registerObserver_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1DA8590FC()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isOnenessAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA85915C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE110EC0 != -1)
  {
    swift_once();
  }

  v3 = sub_1DA9405A4();
  __swift_project_value_buffer(v3, qword_1EE110EC8);
  v4 = sub_1DA940584();
  v5 = sub_1DA940F34();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = sub_1DA941374();
    v10 = sub_1DA7AE6E8(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DA7A9000, v4, v5, "Refreshing status - %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12739F0](v7, -1, -1);
    MEMORY[0x1E12739F0](v6, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1DA85885C();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1DA8594A8()
{
  v2.receiver = v0;
  v2.super_class = _s12AvailabilityC28ManagedConfigurationObserverCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t RemoteNotificationsProperties.Availability.captureState()()
{
  swift_beginAccess();
  v1 = *(*(v0 + 24) + 16);

  if (!v1)
  {
    v4 = MEMORY[0x1E69E7CC8];
LABEL_18:

    v25 = sub_1DA8597A4(v4);

    return v25;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  v5 = (v2 + 40);
  v27 = v2;
  while (v3 < *(v2 + 16))
  {
    v29 = v3;
    v6 = *v5;
    v28 = v5;
    swift_getObjectType();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD57E0, &qword_1DA95BF88);
    v7 = sub_1DA940A74();
    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = (*(v6 + 24))(ObjectType, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_1DA85A810(v7, v9, sub_1DA85A94C);
    v15 = v4[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_20;
    }

    v18 = v13;
    if (v4[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v13)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1DA860A08();
        if (v18)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1DA85C6F8(v17, isUniquelyReferenced_nonNull_native);
      v19 = sub_1DA85A810(v7, v9, sub_1DA85A94C);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_22;
      }

      v14 = v19;
      if (v18)
      {
LABEL_3:

        *(v4[7] + v14) = v11 & 1;
        swift_unknownObjectRelease();
        goto LABEL_4;
      }
    }

    v4[(v14 >> 6) + 8] |= 1 << v14;
    v21 = (v4[6] + 16 * v14);
    *v21 = v7;
    v21[1] = v9;
    *(v4[7] + v14) = v11 & 1;
    swift_unknownObjectRelease();
    v22 = v4[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v4[2] = v24;
LABEL_4:
    v3 = v29 + 1;
    v5 = v28 + 2;
    v2 = v27;
    if (v1 == v29 + 1)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1DA9416E4();
  __break(1u);
  return result;
}

unint64_t sub_1DA8597A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5530, &unk_1DA95B1C0);
    v2 = sub_1DA9414E4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5918, &qword_1DA95EF00);
        swift_dynamicCast();
        v28 = v25;
        v29 = v26;
        v30 = v27;
        v24 = v25;
        v25 = v26;
        *&v26 = v27;
        result = sub_1DA85A810(v15, v14, sub_1DA85A94C);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          result = sub_1DA863074(&v24, v2[7] + 40 * v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          v18 = v2[7] + 40 * result;
          v19 = v24;
          v20 = v25;
          *(v18 + 32) = v26;
          *v18 = v19;
          *(v18 + 16) = v20;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DA859A10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5440, &qword_1DA95C130);
    v2 = sub_1DA9414E4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1DA862D8C(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_1DA848FE8(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_1DA848FE8(v35, v24);
    result = sub_1DA9412C4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_1DA848FE8(v24, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1DA859CFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5440, &qword_1DA95C130);
    v2 = sub_1DA9414E4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1DA7AD270(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1DA848FE8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1DA848FE8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1DA848FE8(v31, v32);
    result = sub_1DA9412C4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1DA848FE8(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_1DA859FC4(uint64_t a1)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD58E0, &unk_1DA95C1E8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v34 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5468, &qword_1DA95B0F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v34 - v4;
  v5 = type metadata accessor for NotificationSource(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD58F0, &qword_1DA95C1F8);
  v7 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v34 - v9;
  v44 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5470, &qword_1DA95B0F8);
    v10 = sub_1DA9414E4();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC8];
  }

  v11 = v44 + 64;
  v12 = 1 << *(v44 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v44 + 64);
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  v35 = v10;
  for (i = v37; v14; result = sub_1DA85FA80(v33, v31, v35))
  {
    v19 = v17;
LABEL_12:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v21 = v20 | (v19 << 6);
    v22 = v44;
    v23 = v36;
    sub_1DA862E7C(*(v44 + 48) + *(v40 + 72) * v21, v36, type metadata accessor for NotificationSource);
    v24 = *(*(v22 + 56) + 8 * v21);
    v25 = v38;
    *(v23 + *(v38 + 48)) = v24;
    sub_1DA862F4C(v23, i);
    v26 = *(v25 + 48);
    v27 = v42;
    v28 = *(v43 + 48);
    sub_1DA862EE4(i, v42, type metadata accessor for NotificationSource);
    v45 = *(i + v26);
    sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
    v29 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5900, &qword_1DA95C200);
    swift_dynamicCast();
    v30 = v41;
    sub_1DA862EE4(v27, v41, type metadata accessor for NotificationSource);
    v31 = *(v27 + v28);
    v32 = v39;
    sub_1DA862EE4(v30, v39, type metadata accessor for NotificationSource);
    v33 = v32;
    v10 = v35;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1DA85A3E0()
{
  v0 = sub_1DA940A04();
  v1 = MGGetSInt32Answer();

  dword_1EE110C50 = v1;
}

uint64_t sub_1DA85A434()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110EC8);
  __swift_project_value_buffer(v0, qword_1EE110EC8);
  return sub_1DA940594();
}

unint64_t sub_1DA85A4CC(uint64_t a1)
{
  sub_1DA93FEC4();
  v2 = MEMORY[0x1E69DF0D0];
  sub_1DA86302C(&qword_1ECBD5940, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0E0]);
  v3 = sub_1DA9409A4();
  return sub_1DA85AA04(a1, v3, MEMORY[0x1E69DF0D0], &qword_1ECBD5948, v2, MEMORY[0x1E69DF0E8]);
}

unint64_t sub_1DA85A5DC(uint64_t a1)
{
  sub_1DA93FB24();
  v2 = MEMORY[0x1E69695A8];
  sub_1DA86302C(&qword_1EE115A40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = sub_1DA9409A4();
  return sub_1DA85AA04(a1, v3, MEMORY[0x1E69695A8], &qword_1EE114C68, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1DA85A6B0(uint64_t a1)
{
  v1 = a1;
  sub_1DA941764();
  sub_1DA940AB4();

  v2 = sub_1DA941794();

  return sub_1DA85ABA4(v1, v2);
}

unint64_t sub_1DA85A788(uint64_t a1)
{
  v2 = sub_1DA9412C4();

  return sub_1DA85AD54(a1, v2);
}

unint64_t sub_1DA85A7CC(uint64_t a1)
{
  v2 = sub_1DA941104();

  return sub_1DA85AE88(a1, v2);
}

uint64_t sub_1DA85A810(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1DA941764();
  sub_1DA940AB4();
  v5 = sub_1DA941794();

  return a3(a1, a2, v5);
}

unint64_t sub_1DA85A894(uint64_t *a1)
{
  sub_1DA941764();
  if (a1[1])
  {
    sub_1DA941784();
    sub_1DA940AB4();
  }

  else
  {
    sub_1DA941784();
  }

  sub_1DA940AB4();
  sub_1DA941784();
  v2 = sub_1DA941794();

  return sub_1DA85AF4C(a1, v2);
}

unint64_t sub_1DA85A94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1DA941684())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DA85AA04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1DA86302C(v23, v24, v25);
      v19 = sub_1DA9409F4();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1DA85ABA4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v6 = 0xD000000000000014;
          v7 = 0x80000001DA9502F0;
        }

        else
        {
          v6 = 0xD000000000000012;
          v7 = 0x80000001DA950310;
        }
      }

      else
      {
        v6 = 0x656E696665646E75;
        v7 = 0xE900000000000064;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v8 = 0xD000000000000014;
        }

        else
        {
          v8 = 0xD000000000000012;
        }

        if (a1 == 1)
        {
          v9 = 0x80000001DA9502F0;
        }

        else
        {
          v9 = 0x80000001DA950310;
        }

        if (v6 != v8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v9 = 0xE900000000000064;
        if (v6 != 0x656E696665646E75)
        {
          goto LABEL_19;
        }
      }

      if (v7 == v9)
      {

        return v4;
      }

LABEL_19:
      v10 = sub_1DA941684();

      if ((v10 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1DA85AD54(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1DA862D8C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E12723B0](v9, a1);
      sub_1DA862DE8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1DA85AE1C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1DA85AE88(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for NotificationServiceConnection();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DA941114();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1DA85AF4C(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for NotificationSource(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = a1[1];
    v21 = *a1;
    v13 = *(v6 + 72);
    do
    {
      sub_1DA862E7C(*(v2 + 48) + v13 * v10, v8, type metadata accessor for NotificationSource);
      v14 = *(v8 + 1);
      if (v14)
      {
        if (!v12 || (*v8 == v21 ? (v15 = v14 == v12) : (v15 = 0), !v15 && (sub_1DA941684() & 1) == 0))
        {
LABEL_4:
          sub_1DA82A7FC(v8);
          goto LABEL_5;
        }
      }

      else if (v12)
      {
        goto LABEL_4;
      }

      v16 = *(v8 + 2) == a1[2] && *(v8 + 3) == a1[3];
      if (!v16 && (sub_1DA941684() & 1) == 0)
      {
        goto LABEL_4;
      }

      v17 = v8[48];
      v18 = *(a1 + 48);
      sub_1DA82A7FC(v8);
      if (v17 == v18)
      {
        return v10;
      }

LABEL_5:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_1DA85B10C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5908, &qword_1DA95C208);
  v31 = v4;
  v6 = sub_1DA9414D4();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1DA941764();
      MEMORY[0x1E1272850](v20);
      v22 = sub_1DA941794();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1DA85B39C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = sub_1DA93FAF4();
  v5 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA93FEC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5950, &qword_1DA95B200);
  v48 = v4;
  v11 = sub_1DA9414D4();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_1DA86302C(&qword_1ECBD5940, MEMORY[0x1E69DF0D0], MEMORY[0x1E69DF0E0]);
      v32 = sub_1DA9409A4();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1DA85B844(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5500, &qword_1DA95B190);
  v35 = v4;
  v6 = sub_1DA9414D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        sub_1DA8304A0(v24);
      }

      sub_1DA941764();
      sub_1DA940AB4();
      v25 = sub_1DA941794();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1DA85BB84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v46 - v12;
  v13 = sub_1DA93FB24();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v53 = v10;
  v17 = sub_1DA9414D4();
  v18 = v17;
  if (*(v16 + 16))
  {
    v19 = 0;
    v20 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v14;
    v24 = v22 & *(v16 + 64);
    v25 = (v21 + 63) >> 6;
    v49 = (v23 + 16);
    v50 = v23;
    v47 = v6;
    v48 = v11 + 16;
    v51 = v16;
    v52 = v11;
    v54 = (v11 + 32);
    v55 = (v23 + 32);
    v26 = v17 + 64;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v31 = v28 | (v19 << 6);
      v32 = *(v16 + 48);
      v56 = *(v23 + 72);
      v33 = v32 + v56 * v31;
      if (v53)
      {
        (*v55)(v59, v33, v13);
        v34 = *(v16 + 56);
        v35 = *(v52 + 72);
        (*(v52 + 32))(v57, v34 + v35 * v31, v58);
      }

      else
      {
        (*v49)(v59, v33, v13);
        v36 = *(v16 + 56);
        v35 = *(v52 + 72);
        (*(v52 + 16))(v57, v36 + v35 * v31, v58);
      }

      sub_1DA86302C(&qword_1EE115A40, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v37 = sub_1DA9409A4();
      v38 = -1 << *(v18 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v26 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v26 + 8 * v40);
          if (v44 != -1)
          {
            v27 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v27 = __clz(__rbit64((-1 << v39) & ~*(v26 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v55)((*(v18 + 48) + v56 * v27), v59, v13);
      (*v54)(*(v18 + 56) + v35 * v27, v57, v58);
      ++*(v18 + 16);
      v23 = v50;
      v16 = v51;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v25)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v9 = v47;
      goto LABEL_34;
    }

    v45 = 1 << *(v16 + 32);
    v9 = v47;
    if (v45 >= 64)
    {
      bzero(v20, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v45;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v9 = v18;
}

void sub_1DA85C028(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5440, &qword_1DA95C130);
  v6 = sub_1DA9414D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_1DA848FE8((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_1DA862D8C(v23, &v37);
        sub_1DA7AD270(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_1DA9412C4();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_1DA848FE8(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}