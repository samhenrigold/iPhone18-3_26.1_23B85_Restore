NSNumber __swiftcall NSNumber.bucket()()
{
  if ([v0 longLongValue] < 100)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  v2 = [v0 roundToSignificantDigit_];

  return v2;
}

id sub_22B7060B8(void *a1)
{
  v1 = a1;
  if ([v1 longLongValue] < 100)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = [v1 roundToSignificantDigit_];

  return v3;
}

id DaemonCoreHelloWorldClass.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonCoreHelloWorldClass.init()()
{
  v1 = OBJC_IVAR___IMDaemonCoreHelloWorldClass_Impl_sharedUtilitiesHelloWorld;
  *&v0[v1] = [objc_allocWithZone(sub_22B7DAC08()) init];
  v2 = OBJC_IVAR___IMDaemonCoreHelloWorldClass_Impl_persistenceHelloWorld;
  *&v0[v2] = [objc_allocWithZone(sub_22B7DABB8()) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DaemonCoreHelloWorldClass();
  return objc_msgSendSuper2(&v4, sel_init);
}

id DaemonCoreHelloWorldClass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonCoreHelloWorldClass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IMDaemonCoreHelloWorld.init()()
{
  sub_22B7DAB88();
  type metadata accessor for IMDaemonCoreHelloWorld(0);
  return sub_22B7DAB88();
}

uint64_t type metadata accessor for IMDaemonCoreHelloWorld(uint64_t a1)
{
  result = qword_27D8CD6A0;
  if (!qword_27D8CD6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall IMDaemonCoreHelloWorld.printGreeting()()
{
  sub_22B7DAB78();
  type metadata accessor for IMDaemonCoreHelloWorld(0);
  sub_22B7DAB78();
}

uint64_t sub_22B7064DC(uint64_t a1)
{
  result = sub_22B7DABE8();
  if (v2 <= 0x3F)
  {
    result = sub_22B7DAB98();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B706560()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F570);
  sub_22B4CFA74(v0, qword_28141F570);
  return sub_22B7DB2A8();
}

id sub_22B7065E0()
{
  result = [objc_allocWithZone(IMDReparentingMonitor) init];
  qword_2814225E0 = result;
  return result;
}

void __swiftcall IMDReparentingMonitor.init()(IMDReparentingMonitor *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

char *IMDReparentingMonitor.init()()
{
  v0 = sub_22B7DB348();
  v1 = *(v0 - 8);
  v35 = v0;
  v36 = v1;
  MEMORY[0x28223BE20](v0);
  v34 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22B7DBD48();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22B7DB398();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR___IMDReparentingMonitor_queue;
  v30[0] = sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v30[3] = "persistenceHelloWorld";
  sub_22B7DB378();
  aBlock[0] = MEMORY[0x277D84F90];
  v30[2] = sub_22B4D1164(&unk_28141F220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B4D1110(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B7DC138();
  v10 = *MEMORY[0x277D85260];
  v11 = v3 + 104;
  v12 = *(v3 + 104);
  v30[1] = v11;
  v12(v5, v10, v37);
  *&v38[v31] = sub_22B7DBD88();
  v31 = OBJC_IVAR___IMDReparentingMonitor_registrationQueue;
  sub_22B7DACD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B7DC138();
  v12(v5, v10, v37);
  v13 = v9;
  v14 = sub_22B7DBD88();
  v15 = v38;
  *&v38[v31] = v14;
  v16 = OBJC_IVAR___IMDReparentingMonitor_state;
  sub_22B6F0AD4(&qword_27D8CD6E0, &qword_22B7F9818);
  v17 = swift_allocObject();
  *(v17 + 20) = 0;
  *(v17 + 16) = 0;
  *&v15[v16] = v17;
  v41.receiver = v15;
  v41.super_class = IMDReparentingMonitor;
  v18 = objc_msgSendSuper2(&v41, sel_init);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 defaultCenter];
  [v21 addObserver:v20 selector:sel_cloudkitStateEnabledReturnedWithNotification_ name:@"com.apple.IMDaemonCore.IMDCKUtilities.MiCEnabledStateReturned" object:0];

  v22 = *&v20[OBJC_IVAR___IMDReparentingMonitor_registrationQueue];
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  aBlock[4] = sub_22B706CE0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1C3E8;
  v24 = _Block_copy(aBlock);
  v25 = v20;
  v26 = v22;
  sub_22B7DACD8();
  v39 = MEMORY[0x277D84F90];
  sub_22B4D1164(&qword_28141F340, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  v28 = v34;
  v27 = v35;
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v13, v28, v24);
  _Block_release(v24);

  (*(v36 + 8))(v28, v27);
  (*(v32 + 8))(v13, v33);

  return v25;
}

void sub_22B706CE0()
{
  sub_22B706D14();

  sub_22B708354();
}

void sub_22B706D14()
{
  v1 = [objc_opt_self() sharedScheduler];
  v2 = sub_22B7DB678();
  v3 = *&v0[OBJC_IVAR___IMDReparentingMonitor_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v7[4] = sub_22B708A8C;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_22B74C9E0;
  v7[3] = &unk_283F1C508;
  v5 = _Block_copy(v7);
  v6 = v0;

  [v1 registerForTaskWithIdentifier:v2 usingQueue:v3 launchHandler:v5];
  _Block_release(v5);
}

uint64_t sub_22B706E74()
{
  v1 = v0;
  v2 = sub_22B7DB348();
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22B7DB398();
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28141F568 != -1)
  {
    swift_once();
  }

  v8 = sub_22B7DB2B8();
  sub_22B4CFA74(v8, qword_28141F570);
  v9 = sub_22B7DB298();
  v10 = sub_22B7DBCB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22B4CC000, v9, v10, "cloudkitStateEnabledReturned. Starting to monitor...", v11, 2u);
    MEMORY[0x231898D60](v11, -1, -1);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  aBlock[4] = sub_22B708350;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1C4B8;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  sub_22B7DACD8();
  v19 = MEMORY[0x277D84F90];
  sub_22B4D1164(&qword_28141F340, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v7, v4, v13);
  _Block_release(v13);
  (*(v18 + 8))(v4, v2);
  (*(v5 + 8))(v7, v17);
}

id sub_22B7072D0(void *a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13[4] = sub_22B708AB0;
    v13[5] = v2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_22B4D22C0;
    v13[3] = &unk_283F1C558;
    v3 = _Block_copy(v13);

    [a1 setExpirationHandler_];
    _Block_release(v3);
    sub_22B7075F8();
    if (qword_28141F568 != -1)
    {
      swift_once();
    }

    v4 = sub_22B7DB2B8();
    sub_22B4CFA74(v4, qword_28141F570);
    v5 = sub_22B7DB298();
    v6 = sub_22B7DBC78();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v5, v6, "Completed.", v7, 2u);
      MEMORY[0x231898D60](v7, -1, -1);
    }

    return [a1 setTaskCompleted];
  }

  else
  {
    if (qword_28141F568 != -1)
    {
      swift_once();
    }

    v9 = sub_22B7DB2B8();
    sub_22B4CFA74(v9, qword_28141F570);
    v10 = sub_22B7DB298();
    v11 = sub_22B7DBC98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v10, v11, "Error! IMDReparentingMonitor requested to handle non-repeating task but was only expected to handle repeating tasks.", v12, 2u);
      MEMORY[0x231898D60](v12, -1, -1);
    }

    return [a1 setTaskCompleted];
  }
}

char *sub_22B707574(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&result[OBJC_IVAR___IMDReparentingMonitor_state];
    v3 = result;

    os_unfair_lock_lock((v2 + 20));
    *(v2 + 16) = 1;
    os_unfair_lock_unlock((v2 + 20));
  }

  return result;
}

void sub_22B7075F8()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isBGSTMessageProcessingEnabled];

  if (v3)
  {
    if (qword_28141F568 != -1)
    {
LABEL_39:
      swift_once();
    }

    v4 = sub_22B7DB2B8();
    v67 = sub_22B4CFA74(v4, qword_28141F570);
    v5 = sub_22B7DB298();
    v6 = sub_22B7DBC78();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v5, v6, "Searching for reparentable items...", v7, 2u);
      MEMORY[0x231898D60](v7, -1, -1);
    }

    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    v69 = OBJC_IVAR___IMDReparentingMonitor_state;
    swift_beginAccess();
    v71 = 0;
    v72 = 0;
    if (*(v70 + 16))
    {
LABEL_6:
      v8 = sub_22B7DB298();
      v9 = sub_22B7DBC78();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134218240;
        *(v10 + 4) = v72;
        *(v10 + 12) = 2048;
        *(v10 + 14) = v71;
        _os_log_impl(&dword_22B4CC000, v8, v9, "Found and submitted %ld reparentable messages over %ld batches.", v10, 0x16u);
        MEMORY[0x231898D60](v10, -1, -1);
      }

      return;
    }

    v71 = 0;
    v72 = 0;
    v14 = 0;
    v68 = v77;
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      v23 = *&v1[v69];
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);

      os_unfair_lock_lock((v23 + 20));
      sub_22B708AEC((v23 + 16), aBlock);
      os_unfair_lock_unlock((v23 + 20));

      if (aBlock[0])
      {
        goto LABEL_6;
      }

      v75 = v14;
      v73 = objc_autoreleasePoolPush();
      v25 = swift_allocObject();
      *(v25 + 16) = v15;
      v26 = [objc_opt_self() synchronousDatabase];
      v27 = sub_22B7DB678();
      v28 = sub_22B7DB678();
      v29 = v15;
      v30 = IMGetDomainIntForKey();

      v31 = swift_allocObject();
      v31[2] = v70;
      v31[3] = v25;
      v31[4] = v1;
      v77[2] = sub_22B708B34;
      v77[3] = v31;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v77[0] = sub_22B707F60;
      v77[1] = &unk_283F1C5F8;
      v32 = _Block_copy(aBlock);

      v33 = v1;

      [v26 reparentableMessagesStartingAtRowID:v30 limit:64 completionHandler:v32];
      _Block_release(v32);
      swift_unknownObjectRelease();
      swift_beginAccess();
      v34 = *(v25 + 16);
      v35 = *v34->messageStore;
      if (v35)
      {
        v36 = v1;
        aBlock[0] = v29;

        sub_22B7DC388();
        membershipObserver = v34->membershipObserver;
        do
        {
          v38 = *membershipObserver;
          v39 = objc_allocWithZone(MEMORY[0x277D18EF0]);

          v40 = sub_22B7DB678();
          v38, v41, v42, v43, v44, v45, v46, v47, v67, v68;
          [v39 initWithGUID:v40 flag:8 lane:0 reason:100000 userInfo:0 retryCount:1];

          sub_22B7DC358();
          sub_22B7DC398();
          sub_22B7DC3A8();
          sub_22B7DC368();
          membershipObserver += 2;
          --v35;
        }

        while (v35);
        v34, v48, v49, v50, v51, v52, v53, v54, v67, v68;
        v55 = aBlock[0];
        v1 = v36;
        v15 = MEMORY[0x277D84F90];
      }

      else
      {
        v55 = v29;
        v15 = v29;
      }

      v14 = v75;
      if (v55 >> 62)
      {
        if (!sub_22B7DC1C8())
        {
LABEL_17:

          v55, v16, v17, v18, v19, v20, v21, v22, v67, v68;
          goto LABEL_18;
        }
      }

      else if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v56 = [objc_opt_self() pTaskQueryProvider];
      if (v56)
      {
        v57 = v56;
        sub_22B4D01A0(0, &qword_27D8CD6F8, 0x277D18EF0);
        v58 = sub_22B7DB8F8();
        [v57 storeTasks_];

        swift_unknownObjectRelease();
      }

      if (v55 >> 62)
      {
        v59 = sub_22B7DC1C8();
      }

      else
      {
        v59 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v55, v60, v61, v62, v63, v64, v65, v66, v67, v68;
      if (__OFADD__(v72, v59))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (__OFADD__(v71, 1))
      {
        goto LABEL_38;
      }

      ++v71;
      v72 += v59;
LABEL_18:
      objc_autoreleasePoolPop(v73);
      if (*(v70 + 16) == 1)
      {
        goto LABEL_6;
      }
    }
  }

  if (qword_28141F568 != -1)
  {
    swift_once();
  }

  v11 = sub_22B7DB2B8();
  sub_22B4CFA74(v11, qword_28141F570);
  v74 = sub_22B7DB298();
  v12 = sub_22B7DBC78();
  if (os_log_type_enabled(v74, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22B4CC000, v74, v12, "Messaging Processing Disabled. Cannot monitor for reparentable items.", v13, 2u);
    MEMORY[0x231898D60](v13, -1, -1);
  }
}

void sub_22B707D88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (qword_28141F568 != -1)
    {
      swift_once();
    }

    v7 = sub_22B7DB2B8();
    sub_22B4CFA74(v7, qword_28141F570);
    v8 = a3;
    v9 = sub_22B7DB298();
    v10 = sub_22B7DBC98();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a3;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_22B4CC000, v9, v10, "Error while searching for reparentable messages: %@", v11, 0xCu);
      sub_22B708A24(v12);
      MEMORY[0x231898D60](v12, -1, -1);
      MEMORY[0x231898D60](v11, -1, -1);
    }

    swift_beginAccess();
    *(a4 + 16) = 1;
  }

  else
  {
    if (a2 == -1)
    {
      v17 = a5;
      swift_beginAccess();
      a5 = v17;
      *(a4 + 16) = 1;
    }

    v18 = a5;
    swift_beginAccess();
    v19 = *(v18 + 16);
    *(v18 + 16) = a1;

    v19, v20, v21, v22, v23, v24, v25, v26, v27, v28;
    sub_22B708B40(a2);
  }
}

void sub_22B707F60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_22B7DB918();

  v16 = a4;
  v6(v7, a3, a4);

  v7, v8, v9, v10, v11, v12, v13, v14, v15, v16;
}

uint64_t sub_22B708004()
{
  v0 = sub_22B6F0AD4(&unk_27D8CE580, &unk_22B7FA5D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_22B6F0AD4(&unk_27D8CE570, &qword_22B7FA5B0);
  sub_22B6F24F4(v3, qword_27D8CD6B0);
  sub_22B4CFA74(v3, qword_27D8CD6B0);
  v4 = *MEMORY[0x277D195F0];
  v5 = sub_22B6F0AD4(&qword_27D8CD6F0, &qword_22B7F9848);
  v6 = *(v5 - 8);
  (*(v6 + 104))(v2, v4, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  sub_22B7DADC8();
  return sub_22B7DADB8();
}

uint64_t _s9TaskStateVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9TaskStateVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_22B708354()
{
  v45[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22B6F0AD4(&unk_27D8CE570, &qword_22B7FA5B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v45 - v2;
  v4 = objc_opt_self();
  v5 = [v4 sharedScheduler];
  v6 = sub_22B7DB678();
  v7 = [v5 taskRequestForIdentifier_];

  if (v7)
  {

    if (qword_28141F568 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    sub_22B4CFA74(v8, qword_28141F570);
    v9 = sub_22B7DB298();
    v10 = sub_22B7DBC78();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v9, v10, "Attempted to start monitoring while already monitoring.", v11, 2u);
      MEMORY[0x231898D60](v11, -1, -1);
    }

    v12 = [objc_opt_self() sharedInstance];
    v13 = [v12 cloudKitSyncingEnabled];

    if ((v13 & 1) == 0)
    {
      v14 = [v4 sharedScheduler];
      v15 = sub_22B7DB678();
      v45[0] = 0;
      v16 = [v14 cancelTaskRequestWithIdentifier:v15 error:v45];

      v17 = v45[0];
      if (v16)
      {

        v18 = v17;
        return;
      }

      v44 = v45[0];
      v27 = v45[0];
      v28 = sub_22B7DA6F8();

      swift_willThrow();
      v29 = v28;
LABEL_28:
    }
  }

  else
  {
    v19 = [objc_opt_self() sharedInstance];
    v20 = [v19 cloudKitSyncingEnabled];

    if (v20)
    {
      goto LABEL_15;
    }

    if (qword_27D8CCC08 != -1)
    {
      swift_once();
    }

    v21 = sub_22B4CFA74(v0, qword_27D8CD6B0);
    (*(v1 + 16))(v3, v21, v0);
    sub_22B7DADA8();
    (*(v1 + 8))(v3, v0);
    if (LOBYTE(v45[0]) == 1)
    {
LABEL_15:
      v22 = objc_allocWithZone(MEMORY[0x277CF07D8]);
      v23 = sub_22B7DB678();
      v24 = [v22 initWithIdentifier_];

      [v24 setRequiresUserInactivity_];
      [v24 setInterval_];
      [v24 setMinDurationBetweenInstances_];
      v25 = [v4 sharedScheduler];
      v45[0] = 0;
      LODWORD(v22) = [v25 submitTaskRequest:v24 error:v45];

      if (v22)
      {
        v26 = v45[0];

        return;
      }

      v30 = v45[0];
      v31 = sub_22B7DA6F8();

      swift_willThrow();
      if (qword_28141F568 != -1)
      {
        swift_once();
      }

      v32 = sub_22B7DB2B8();
      sub_22B4CFA74(v32, qword_28141F570);
      v33 = v31;
      v34 = sub_22B7DB298();
      v35 = sub_22B7DBC98();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        v38 = v31;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v39;
        *v37 = v39;
        _os_log_impl(&dword_22B4CC000, v34, v35, "Failed to start monitoring with error: %@", v36, 0xCu);
        sub_22B708A24(v37);
        MEMORY[0x231898D60](v37, -1, -1);
        MEMORY[0x231898D60](v36, -1, -1);

        return;
      }

      v29 = v31;
      goto LABEL_28;
    }

    if (qword_28141F568 != -1)
    {
      swift_once();
    }

    v40 = sub_22B7DB2B8();
    sub_22B4CFA74(v40, qword_28141F570);
    v41 = sub_22B7DB298();
    v42 = sub_22B7DBC78();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22B4CC000, v41, v42, "MiC is not enabled. No need to monitor for reparentable messages.", v43, 2u);
      MEMORY[0x231898D60](v43, -1, -1);
    }
  }
}

uint64_t sub_22B708A24(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B708AEC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

void sub_22B708B40(uint64_t a1)
{
  v2 = sub_22B7DB678();
  v3 = sub_22B7DB678();
  if (a1 == -1)
  {
    IMSetDomainValueForKey();
  }

  else
  {
    IMSetDomainIntForKey();
  }
}

uint64_t sub_22B708C0C()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_2814226B0);
  sub_22B4CFA74(v0, qword_2814226B0);
  return sub_22B7DB2A8();
}

void sub_22B708C90(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v23 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22B7DC188();
    sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0);
    sub_22B70FFFC(&qword_28141F188, &qword_28141F190, 0x277D6EEA0);
    sub_22B7DBB28();
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
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

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v16 = v4;
LABEL_8:
  v10 = v5;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_22B7DC1F8() || (sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0), swift_dynamicCast(), v14 = v17, v5 = v10, v6 = v11, !v17))
      {
LABEL_22:
        sub_22B705E3C(v2);
        return;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v5 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_18:
    v15 = [v14 handle];

    v10 = v5;
    v11 = v6;
    if (v15)
    {
      MEMORY[0x231895260]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B7DB938();
      }

      sub_22B7DB968();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *CallManager.__allocating_init(serviceSession:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 conversationManager];

  v7 = [objc_opt_self() sharedFeatureFlags];
  v8 = objc_allocWithZone(type metadata accessor for CallManager());
  v9 = sub_22B7091D0(a1, v6, v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

char *CallManager.init(serviceSession:)(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 conversationManager];

  v4 = [objc_opt_self() sharedFeatureFlags];
  v5 = objc_allocWithZone(type metadata accessor for CallManager());
  v6 = sub_22B7091D0(a1, v3, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

char *sub_22B7091D0(void *a1, void *a2, void *a3)
{
  v35 = a2;
  v36 = a3;
  v34 = a1;
  v4 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v32 - v5;
  v33 = sub_22B7DBD48();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22B7DB398();
  MEMORY[0x28223BE20](v10 - 8);
  v32 = OBJC_IVAR___IMDCallManager_Impl_queue;
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  sub_22B7DBD58();
  sub_22B7DACD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B71004C(&unk_28141F220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B71019C();
  sub_22B7DC138();
  (*(v6 + 104))(v8, *MEMORY[0x277D85260], v33);
  *&v3[v32] = sub_22B7DBD88();
  *&v3[OBJC_IVAR___IMDCallManager_Impl_newChatListenerTask] = 0;
  v12 = v34;
  v11 = v35;
  *&v3[OBJC_IVAR___IMDCallManager_Impl_serviceSession] = v34;
  *&v3[OBJC_IVAR___IMDCallManager_Impl_conversationManager] = v11;
  v13 = v36;
  *&v3[OBJC_IVAR___IMDCallManager_Impl_featureFlags] = v36;
  v14 = type metadata accessor for CallManager();
  v39.receiver = v3;
  v39.super_class = v14;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  v18 = objc_msgSendSuper2(&v39, sel_init);
  v19 = *&v18[OBJC_IVAR___IMDCallManager_Impl_conversationManager];
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  aBlock[4] = sub_22B710200;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1C6E8;
  v21 = _Block_copy(aBlock);
  v22 = v18;
  v23 = v19;

  [v23 registerWithCompletionHandler_];
  _Block_release(v21);

  v24 = sub_22B7DBA58();
  v25 = v37;
  (*(*(v24 - 8) + 56))(v37, 1, 1, v24);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22B7DBA18();

  v27 = sub_22B7DBA08();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v26;

  v30 = sub_22B77E3D4(0, 0, v25, &unk_22B7F98E8, v28);

  *&v22[OBJC_IVAR___IMDCallManager_Impl_newChatListenerTask] = v30;

  return v22;
}

id sub_22B7096D8(uint64_t a1)
{
  if (qword_28141F420 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_2814226F8);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, v4, "TUConversationManager registered", v5, 2u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v6 = *(a1 + OBJC_IVAR___IMDCallManager_Impl_conversationManager);
  v7 = *(a1 + OBJC_IVAR___IMDCallManager_Impl_queue);

  return [v6 addDelegate:a1 queue:v7];
}

uint64_t sub_22B7097E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[45] = a4;
  v5 = sub_22B7DA688();
  v4[46] = v5;
  v4[47] = *(v5 - 8);
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CD7E8, &qword_22B7F98F0);
  v4[50] = swift_task_alloc();
  v6 = sub_22B7DBEA8();
  v4[51] = v6;
  v4[52] = *(v6 - 8);
  v4[53] = swift_task_alloc();
  v4[54] = sub_22B7DBA18();
  v4[55] = sub_22B7DBA08();
  v8 = sub_22B7DB9C8();
  v4[56] = v8;
  v4[57] = v7;

  return MEMORY[0x2822009F8](sub_22B709980, v8, v7);
}

uint64_t sub_22B709980()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[58] = v1;
  if (qword_28141F420 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  v0[59] = sub_22B4CFA74(v2, qword_2814226F8);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Waiting for new chats ", v5, 2u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v0[2] = v0;
  v0[7] = v0 + 73;
  v0[3] = sub_22B709B74;
  v6 = swift_continuation_init();
  v0[17] = sub_22B6F0AD4(&unk_27D8CD7F0, &qword_22B7F98F8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22B72DC1C;
  v0[13] = &unk_283F1C760;
  v0[14] = v6;
  [v1 waitForLoadedChatsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B709B74()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);

  return MEMORY[0x2822009F8](sub_22B709C7C, v2, v1);
}

uint64_t sub_22B709C7C(uint64_t a1)
{
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBCB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, v3, "Notified that all IMDChats are loaded.", v4, 2u);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[60] = Strong;
  if (!Strong)
  {
    goto LABEL_23;
  }

  v6 = [*(Strong + OBJC_IVAR___IMDCallManager_Impl_conversationManager) activeConversations];
  v1[61] = sub_22B4D01A0(0, &qword_28141F270, 0x277D6EE60);
  sub_22B70FFFC(&qword_28141F268, &qword_28141F270, 0x277D6EE60);
  v7 = sub_22B7DBAF8();

  if ((v7 & 0xC000000000000001) == 0)
  {
    v13 = 0;
    v16 = -1;
    v17 = -1 << *(v7 + 32);
    v11 = v7 + 56;
    if (-v17 < 64)
    {
      v16 = ~(-1 << -v17);
    }

    v14 = v16 & *(v7 + 56);
    v1[63] = v11;
    v1[64] = ~v17;
    v1[62] = v7;
    v15 = 63 - v17;
    goto LABEL_10;
  }

  sub_22B7DC188();
  v8 = sub_22B7DBB28();
  v7 = v1[18];
  v11 = v1[19];
  v12 = v1[20];
  v13 = v1[21];
  v14 = v1[22];
  v1[63] = v11;
  v1[64] = v12;
  v1[62] = v7;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v15 = v12 + 64;
LABEL_10:
    v18 = v14;
    v19 = v13;
    if (!v14)
    {
      v20 = v15 >> 6;
      v21 = v13;
      while (1)
      {
        v19 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v19 >= v20)
        {
          goto LABEL_22;
        }

        v18 = *(v11 + 8 * v19);
        ++v21;
        if (v18)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      return MEMORY[0x282200308](v8, v9, v10);
    }

LABEL_15:
    v22 = (v18 - 1) & v18;
    v23 = *(*(v7 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    goto LABEL_16;
  }

  v26 = sub_22B7DC1F8();
  if (!v26)
  {
    goto LABEL_22;
  }

  v1[44] = v26;
  swift_dynamicCast();
  v23 = v1[43];
  v19 = v13;
  v22 = v14;
LABEL_16:
  v1[67] = v22;
  v1[66] = v19;
  v1[65] = v23;
  if (!v23)
  {
LABEL_22:
    v27 = v1[60];
    sub_22B705E3C(v1[62]);

LABEL_23:
    v28 = [objc_opt_self() defaultCenter];
    sub_22B7DBEB8();

    sub_22B7DBE98();
    swift_beginAccess();
    v1[69] = @"__kIMDChatRegistryChatKey";
    v1[70] = sub_22B7DBA08();
    v29 = sub_22B71004C(&qword_28141F198, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
    v30 = swift_task_alloc();
    v1[71] = v30;
    *v30 = v1;
    v30[1] = sub_22B70A4B0;
    v8 = v1[50];
    v9 = v1[51];
    v10 = v29;

    return MEMORY[0x282200308](v8, v9, v10);
  }

  v24 = swift_task_alloc();
  v1[68] = v24;
  *v24 = v1;
  v24[1] = sub_22B70A0C4;

  return sub_22B70AC84(v23);
}

uint64_t sub_22B70A0C4()
{
  v1 = *v0;

  v2 = *(v1 + 456);
  v3 = *(v1 + 448);

  return MEMORY[0x2822009F8](sub_22B70A1E4, v3, v2);
}

uint64_t sub_22B70A1E4()
{
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 496);
  if (v6 < 0)
  {
    v12 = sub_22B7DC1F8();
    if (!v12)
    {
      goto LABEL_14;
    }

    *(v0 + 352) = v12;
    swift_dynamicCast();
    v11 = *(v0 + 344);
    v8 = v5;
    v10 = v4;
  }

  else
  {
    v7 = *(v0 + 536);
    v8 = *(v0 + 528);
    if (!v4)
    {
      v9 = *(v0 + 528);
      while (1)
      {
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v8 >= ((*(v0 + 512) + 64) >> 6))
        {
          goto LABEL_14;
        }

        v7 = *(*(v0 + 504) + 8 * v8);
        ++v9;
        if (v7)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      return MEMORY[0x282200308](v1, v2, v3);
    }

LABEL_7:
    v10 = (v7 - 1) & v7;
    v11 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v7)))));
  }

  *(v0 + 536) = v10;
  *(v0 + 528) = v8;
  *(v0 + 520) = v11;
  if (!v11)
  {
LABEL_14:
    v15 = *(v0 + 480);
    sub_22B705E3C(*(v0 + 496));

    v16 = [objc_opt_self() defaultCenter];
    sub_22B7DBEB8();

    sub_22B7DBE98();
    swift_beginAccess();
    *(v0 + 552) = @"__kIMDChatRegistryChatKey";
    *(v0 + 560) = sub_22B7DBA08();
    v17 = sub_22B71004C(&qword_28141F198, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
    v18 = swift_task_alloc();
    *(v0 + 568) = v18;
    *v18 = v0;
    v18[1] = sub_22B70A4B0;
    v1 = *(v0 + 400);
    v2 = *(v0 + 408);
    v3 = v17;

    return MEMORY[0x282200308](v1, v2, v3);
  }

  v13 = swift_task_alloc();
  *(v0 + 544) = v13;
  *v13 = v0;
  v13[1] = sub_22B70A0C4;

  return sub_22B70AC84(v11);
}

uint64_t sub_22B70A4B0()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 560);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_22B7DB9C8();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_22B70ABF8;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_22B7DB9C8();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_22B70A648;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_22B70A648()
{

  v1 = *(v0 + 448);
  v2 = *(v0 + 456);

  return MEMORY[0x2822009F8](sub_22B70A6AC, v1, v2);
}

uint64_t sub_22B70A6AC()
{
  v65 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 464);
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));

    v5 = *(v0 + 8);

    return v5();
  }

  (*(v3 + 32))(*(v0 + 392), v1, v2);
  v7 = sub_22B7DA678();
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  *(v0 + 304) = sub_22B7DB6A8();
  *(v0 + 312) = v9;
  sub_22B7DC248();
  if (!*(v8 + 16) || (v17 = sub_22B4D7EC0(v0 + 184), (v10 & 1) == 0))
  {
    v8, v10, v11, v12, v13, v14, v15, v16, v59, v61;
    sub_22B4DA138(v0 + 184);
LABEL_16:
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    goto LABEL_17;
  }

  sub_22B4D1F68(*(v8 + 56) + 32 * v17, v0 + 224);
  sub_22B4DA138(v0 + 184);
  v8, v18, v19, v20, v21, v22, v23, v24, v59, v61;
  if (!*(v0 + 248))
  {
LABEL_17:
    sub_22B4D0D64(v0 + 224, &unk_27D8CCDC0, &qword_22B7F9580);
    goto LABEL_18;
  }

  sub_22B4D01A0(0, &qword_28141EFF0, off_2786FF950);
  if (swift_dynamicCast())
  {
    v25 = *(v0 + 336);
    v26 = sub_22B7DB298();
    v27 = sub_22B7DBCB8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_22B4CC000, v26, v27, "Notified that chat was added %@", v28, 0xCu);
      sub_22B4D0D64(v29, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v29, -1, -1);
      MEMORY[0x231898D60](v28, -1, -1);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v32 = Strong;
      sub_22B70B474(v25);
    }

    (*(*(v0 + 376) + 8))(*(v0 + 392), *(v0 + 368));
    goto LABEL_21;
  }

LABEL_18:
  (*(*(v0 + 376) + 16))(*(v0 + 384), *(v0 + 392), *(v0 + 368));
  v33 = sub_22B7DB298();
  v34 = sub_22B7DBCA8();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 384);
  v37 = *(v0 + 392);
  v39 = *(v0 + 368);
  v38 = *(v0 + 376);
  if (v35)
  {
    v62 = *(v0 + 392);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v64 = v41;
    *v40 = 136315138;
    *(v0 + 328) = sub_22B7DA678();
    sub_22B6F0AD4(&qword_27D8CD810, &unk_22B7F9900);
    v42 = sub_22B7DB6E8();
    v44 = v43;
    v45 = *(v38 + 8);
    v45(v36, v39);
    v46 = sub_22B4CFAAC(v42, v44, &v64);
    v44, v47, v48, v49, v50, v51, v52, v53, v39, v62;
    *(v40 + 4) = v46;
    _os_log_impl(&dword_22B4CC000, v33, v34, "Received invalid object type from IMDChatAddedNotification %s", v40, 0xCu);
    sub_22B4CFB78(v41);
    MEMORY[0x231898D60](v41, -1, -1);
    MEMORY[0x231898D60](v40, -1, -1);

    v45(v63, v60);
  }

  else
  {

    v54 = *(v38 + 8);
    v54(v36, v39);
    v54(v37, v39);
  }

LABEL_21:
  *(v0 + 560) = sub_22B7DBA08();
  v55 = sub_22B71004C(&qword_28141F198, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v56 = swift_task_alloc();
  *(v0 + 568) = v56;
  *v56 = v0;
  v56[1] = sub_22B70A4B0;
  v57 = *(v0 + 400);
  v58 = *(v0 + 408);

  return MEMORY[0x282200308](v57, v58, v55);
}

uint64_t sub_22B70ABF8()
{
  *(v0 + 320) = *(v0 + 576);
  sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_22B70AC84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_22B7DBA18();
  v2[4] = sub_22B7DBA08();
  v4 = sub_22B7DB9C8();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_22B70AD1C, v4, v3);
}

uint64_t sub_22B70AD1C()
{
  v58 = v0;
  v1 = sub_22B70EA70(v0[2]);
  if (v1)
  {
    v2 = v1;

    sub_22B70E318(v0[2], v2);
LABEL_20:

    v53 = v0[1];

    return v53();
  }

  v3 = [v0[2] remoteMembers];
  sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0);
  sub_22B70FFFC(&qword_28141F188, &qword_28141F190, 0x277D6EEA0);
  v4 = sub_22B7DBAF8();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = sub_22B7DC1C8();
  }

  else
  {
    v12 = *(v4 + 16);
  }

  v4, v5, v6, v7, v8, v9, v10, v11, v54, v57;
  if (v12 != 1 || [v0[2] avMode] || (v13 = objc_msgSend(v0[2], sel_presentationContext), v14 = objc_msgSend(v13, sel_mode), v13, v14 != 1))
  {

    if (qword_28141F420 != -1)
    {
      swift_once();
    }

    v45 = v0[2];
    v46 = sub_22B7DB2B8();
    sub_22B4CFA74(v46, qword_2814226F8);
    v47 = v45;
    v2 = sub_22B7DB298();
    v48 = sub_22B7DBC98();

    if (os_log_type_enabled(v2, v48))
    {
      v49 = v0[2];
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v49;
      *v51 = v49;
      v52 = v49;
      _os_log_impl(&dword_22B4CC000, v2, v48, "Couldn't find chat for conversation %@", v50, 0xCu);
      sub_22B4D0D64(v51, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v51, -1, -1);
      MEMORY[0x231898D60](v50, -1, -1);
    }

    goto LABEL_20;
  }

  if (qword_28141F420 != -1)
  {
    swift_once();
  }

  v15 = v0[2];
  v16 = sub_22B7DB2B8();
  sub_22B4CFA74(v16, qword_2814226F8);
  v17 = v15;
  v18 = sub_22B7DB298();
  v19 = sub_22B7DBCB8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[2];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v57 = v22;
    *v21 = 136315138;
    v23 = [v20 remoteMembers];
    v24 = sub_22B7DBAF8();

    v25 = sub_22B7DBB08();
    v27 = v26;
    v24, v26, v28, v29, v30, v31, v32, v33, v55, v57;
    v34 = sub_22B4CFAAC(v25, v27, &v57);
    v27, v35, v36, v37, v38, v39, v40, v41, v56, v57;
    *(v21 + 4) = v34;
    _os_log_impl(&dword_22B4CC000, v18, v19, "Couldn't find chat for 1-1 conversation with %s, attempting chat creation!", v21, 0xCu);
    sub_22B4CFB78(v22);
    MEMORY[0x231898D60](v22, -1, -1);
    MEMORY[0x231898D60](v21, -1, -1);
  }

  v42 = swift_task_alloc();
  v0[7] = v42;
  *v42 = v0;
  v42[1] = sub_22B70B1AC;
  v43 = v0[2];

  return sub_22B70D020(v43);
}

uint64_t sub_22B70B1AC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_22B70B2D4, v4, v3);
}

uint64_t sub_22B70B2D4()
{
  v1 = *(v0 + 64);

  if (v1)
  {
    v2 = *(v0 + 64);
    sub_22B70E318(*(v0 + 16), v2);
  }

  else
  {
    if (qword_28141F420 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 16);
    v4 = sub_22B7DB2B8();
    sub_22B4CFA74(v4, qword_2814226F8);
    v5 = v3;
    v2 = sub_22B7DB298();
    v6 = sub_22B7DBC98();

    if (os_log_type_enabled(v2, v6))
    {
      v7 = *(v0 + 16);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v7;
      *v9 = v7;
      v10 = v7;
      _os_log_impl(&dword_22B4CC000, v2, v6, "Couldn't find chat for conversation %@", v8, 0xCu);
      sub_22B4D0D64(v9, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v9, -1, -1);
      MEMORY[0x231898D60](v8, -1, -1);
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

void sub_22B70B474(void *a1)
{
  v2 = [*(v1 + OBJC_IVAR___IMDCallManager_Impl_conversationManager) activeConversations];
  sub_22B4D01A0(0, &qword_28141F270, 0x277D6EE60);
  sub_22B70FFFC(&qword_28141F268, &qword_28141F270, 0x277D6EE60);
  v3 = sub_22B7DBAF8();

  v91 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22B7DC188();
    sub_22B7DBB28();
    v3 = v95;
    v4 = v96;
    v5 = v97;
    v6 = v98;
    v7 = v99;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v92 = v3;
  while ((v3 & 0x8000000000000000) == 0)
  {
    v27 = v6;
    v28 = v7;
    v29 = v6;
    if (!v7)
    {
      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v29 >= v11)
        {
          goto LABEL_34;
        }

        v28 = *(v4 + 8 * v29);
        ++v27;
        if (v28)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_16:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v3 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v31)
    {
      goto LABEL_34;
    }

LABEL_20:
    v32 = sub_22B70EA70(v31);
    if (v32 && (v33 = v32, v34 = [v32 guid], v33, v34))
    {
      v35 = sub_22B7DB6A8();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v38 = [a1 guid];
    if (v38)
    {
      v39 = v38;
      v40 = sub_22B7DB6A8();
      v42 = v41;

      if (!v37)
      {
        if (!v42)
        {
          goto LABEL_37;
        }

        v42, v43, v44, v45, v46, v47, v48, v49, v85, v88;
LABEL_9:

        goto LABEL_10;
      }

      if (v42)
      {
        if (v35 == v40 && v37 == v42)
        {
          v37, v43, v44, v45, v46, v47, v48, v49, v85, v88;
          v42, v71, v72, v73, v74, v75, v76, v77, v87, v90;
LABEL_37:
          sub_22B705E3C(v92);
          v91, v78, v79, v80, v81, v82, v83, v84, v85, v88;
          v66 = v31;
          sub_22B70E318(v66, a1);

          goto LABEL_38;
        }

        v12 = sub_22B7DC518();
        v37, v13, v14, v15, v16, v17, v18, v19, v85, v88;
        v42, v20, v21, v22, v23, v24, v25, v26, v86, v89;
        if (v12)
        {
          goto LABEL_37;
        }

        goto LABEL_9;
      }
    }

    else if (!v37)
    {
      goto LABEL_37;
    }

    v37, v50, v51, v52, v53, v54, v55, v56, v85, v88;
LABEL_10:
    v6 = v29;
    v7 = v30;
    v3 = v92;
  }

  if (sub_22B7DC1F8())
  {
    swift_dynamicCast();
    v31 = v94;
    v29 = v6;
    v30 = v7;
    if (v94)
    {
      goto LABEL_20;
    }
  }

LABEL_34:
  sub_22B705E3C(v3);
  v91, v57, v58, v59, v60, v61, v62, v63, v85, v88;
  if (qword_28141F420 == -1)
  {
    goto LABEL_35;
  }

LABEL_40:
  swift_once();
LABEL_35:
  v64 = sub_22B7DB2B8();
  sub_22B4CFA74(v64, qword_2814226F8);
  v65 = a1;
  v66 = sub_22B7DB298();
  v67 = sub_22B7DBCB8();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138412290;
    *(v68 + 4) = v65;
    *v69 = v65;
    v70 = v65;
    _os_log_impl(&dword_22B4CC000, v66, v67, "Couldn't find conversation for chat %@", v68, 0xCu);
    sub_22B4D0D64(v69, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v69, -1, -1);
    MEMORY[0x231898D60](v68, -1, -1);
  }

LABEL_38:
}

id CallManager.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR___IMDCallManager_Impl_newChatListenerTask])
  {

    sub_22B7DBA88();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CallManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_22B70BB00(void *a1, void *a2)
{
  v5 = sub_22B7DA9A8();
  isa = v5[-1].isa;
  MEMORY[0x28223BE20](v5);
  v8 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*(v2 + OBJC_IVAR___IMDCallManager_Impl_featureFlags) isAVLessSharePlayEnabled])
  {
    return;
  }

  if (qword_28141F420 != -1)
  {
    swift_once();
  }

  v9 = sub_22B7DB2B8();
  sub_22B4CFA74(v9, qword_2814226F8);
  v10 = a1;
  v11 = a2;
  v12 = sub_22B7DB298();
  v13 = sub_22B7DBCB8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v10;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v10;
    v15[1] = v11;
    v16 = v10;
    v17 = v11;
    _os_log_impl(&dword_22B4CC000, v12, v13, "Received request to post notification for conversation %@ on chat %@", v14, 0x16u);
    sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v15, -1, -1);
    MEMORY[0x231898D60](v14, -1, -1);
  }

  v18 = [v10 initiator];
  v19 = [v18 normalizedValue];

  if (v19)
  {
    v108 = v19;
    v20 = [v10 stagedActivitySession];
    v111 = v5;
    if (v20)
    {
      v21 = v20;
      v22 = [v20 activity];
      v23 = [v22 localizedApplicationName];
    }

    else
    {
      v30 = [v10 activitySessions];
      sub_22B4D01A0(0, &qword_27D8CD7A0, 0x277D6EE80);
      sub_22B70FFFC(&qword_27D8CD7A8, &qword_27D8CD7A0, 0x277D6EE80);
      v31 = sub_22B7DBAF8();

      v21 = sub_22B786E24(v31);
      v31, v32, v33, v34, v35, v36, v37, v38, v105, v106;
      if (!v21)
      {
        goto LABEL_19;
      }

      v22 = [v21 activity];
      v23 = [v22 localizedApplicationName];
    }

    v39 = v23;

    if (v39)
    {
      v109 = sub_22B7DB6A8();
      v41 = v40;

LABEL_20:

      v42 = v10;
      v43 = v11;
      v44 = sub_22B7DB298();
      v45 = sub_22B7DBCB8();

      v41, v46, v47, v48, v49, v50, v51, v52, v105, v106;
      v53 = os_log_type_enabled(v44, v45);
      v110 = isa;
      v107 = v42;
      if (v53)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v113 = v41;
        v114 = v106;
        *v54 = 136315650;
        v112 = v109;

        sub_22B6F0AD4(&qword_27D8CD7B0, &qword_22B7FBB10);
        v56 = sub_22B7DB6E8();
        v58 = v57;
        v59 = sub_22B4CFAAC(v56, v57, &v114);
        v58, v60, v61, v62, v63, v64, v65, v66, v105, v106;
        *(v54 + 4) = v59;
        *(v54 + 12) = 2112;
        *(v54 + 14) = v43;
        *v55 = v43;
        *(v54 + 22) = 2080;
        v67 = v43;
        v68 = [v42 UUID];
        sub_22B7DA988();

        sub_22B71004C(&qword_27D8CD7B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v69 = v111;
        v70 = sub_22B7DC4E8();
        v72 = v71;
        (*(v110 + 1))(v8, v69);
        v73 = sub_22B4CFAAC(v70, v72, &v114);
        v72, v74, v75, v76, v77, v78, v79, v80, v105, v106;
        *(v54 + 24) = v73;
        _os_log_impl(&dword_22B4CC000, v44, v45, "SharePlay notification will be posted for %s app in chat %@ and conversation %s", v54, 0x20u);
        sub_22B4D0D64(v55, &unk_27D8CEC60, &qword_22B7F9E20);
        MEMORY[0x231898D60](v55, -1, -1);
        v81 = v106;
        swift_arrayDestroy();
        MEMORY[0x231898D60](v81, -1, -1);
        MEMORY[0x231898D60](v54, -1, -1);
      }

      v82 = [objc_opt_self() synchronousDatabase];
      v83 = [v43 guid];
      if (v83)
      {
        v84 = v83;
        v85 = [v107 UUID];
        sub_22B7DA988();

        sub_22B7DA978();
        v87 = v86;
        (*(v110 + 1))(v8, v111);
        v88 = sub_22B7DB678();
        v87, v89, v90, v91, v92, v93, v94, v95, v105, v106;
        if (v41)
        {
          v96 = sub_22B7DB678();
          v41, v97, v98, v99, v100, v101, v102, v103, v105, v106;
        }

        else
        {
          v96 = 0;
        }

        v104 = v108;
        [v82 postSharePlayNotificationForChatGUID:v84 faceTimeConversationUUID:v88 handleIdentifier:v108 localizedApplicationName:v96];
        swift_unknownObjectRelease();
      }

      else
      {

        __break(1u);
      }

      return;
    }

LABEL_19:
    v109 = 0;
    v41 = 0;
    goto LABEL_20;
  }

  v24 = v10;
  v111 = sub_22B7DB298();
  v25 = sub_22B7DBC98();

  if (os_log_type_enabled(v111, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v24;
    *v27 = v24;
    v28 = v24;
    _os_log_impl(&dword_22B4CC000, v111, v25, "Can't post notification since we couldn't fetch initiator from conversation %@", v26, 0xCu);
    sub_22B4D0D64(v27, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v27, -1, -1);
    MEMORY[0x231898D60](v26, -1, -1);
  }

  v29 = v111;
}

uint64_t sub_22B70C310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_22B7DBA18();
  v5[3] = sub_22B7DBA08();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_22B70C3CC;

  return sub_22B70AC84(a5);
}

uint64_t sub_22B70C3CC()
{

  v1 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B7102DC, v1, v0);
}

uint64_t sub_22B70C5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_22B7DBA18();
  v5[3] = sub_22B7DBA08();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_22B70C6A0;

  return sub_22B70AC84(a5);
}

uint64_t sub_22B70C6A0()
{

  v1 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B70C7DC, v1, v0);
}

uint64_t sub_22B70C7DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B70C8D8(id *a1, char a2, void *a3, uint64_t a4)
{
  v6 = *a1;
  v7 = [*a1 serviceName];
  if (!v7)
  {
LABEL_7:
    if (a2)
    {
      if (qword_28141F420 != -1)
      {
        swift_once();
      }

      v28 = sub_22B7DB2B8();
      sub_22B4CFA74(v28, qword_2814226F8);
      v29 = a3;
      v30 = v6;
      v31 = sub_22B7DB298();
      v32 = sub_22B7DBC88();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412546;
        *(v33 + 4) = v29;
        *(v33 + 12) = 2112;
        *(v33 + 14) = v30;
        *v34 = v29;
        v34[1] = v30;
        v35 = v29;
        v36 = v30;
        _os_log_impl(&dword_22B4CC000, v31, v32, "Not mapping %@ to chat %@ because an iMessage variant of the chat exists", v33, 0x16u);
        sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
        swift_arrayDestroy();
        MEMORY[0x231898D60](v34, -1, -1);
        MEMORY[0x231898D60](v33, -1, -1);
      }

      return 0;
    }

    goto LABEL_14;
  }

  v8 = v7;
  v9 = sub_22B7DB6A8();
  v11 = v10;

  if (v9 == 0x6567617373654D69 && v11 == 0xE800000000000000)
  {
    v11, v12, v13, v14, v15, v16, v17, v18, v113, v118;
  }

  else
  {
    v20 = sub_22B7DC518();
    v11, v21, v22, v23, v24, v25, v26, v27, v113, v118;
    if ((v20 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_14:
  result = [v6 participants];
  if (!result)
  {
    goto LABEL_43;
  }

  v38 = result;
  sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
  v39 = sub_22B7DB918();

  v128 = MEMORY[0x277D84F90];
  v123 = a3;
  if (v39 >> 62)
  {
    goto LABEL_41;
  }

  log = (v39 & 0xFFFFFFFFFFFFFF8);
  v47 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
  v48 = 0;
  v49 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v47 == v48)
    {
      v39, v40, v41, v42, v43, v44, v45, v46, v113, v6;
      v55 = sub_22B77A140(v49);
      v49, v56, v57, v58, v59, v60, v61, v62, v114, v119;
      v63 = sub_22B70CF2C(a4, v55);
      v71 = v63;
      if ((v63 & 0xC000000000000001) != 0)
      {
        v72 = v123;
        if (sub_22B7DC1C8())
        {
LABEL_31:
          if (qword_28141F420 != -1)
          {
            swift_once();
          }

          v73 = sub_22B7DB2B8();
          sub_22B4CFA74(v73, qword_2814226F8);
          v74 = v72;
          v75 = v120;

          v76 = sub_22B7DB298();
          v77 = sub_22B7DBC98();
          v71, v78, v79, v80, v81, v82, v83, v84, v115, v120;

          loga = v76;
          if (os_log_type_enabled(v76, v77))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            v128 = v125;
            *v92 = 138412802;
            *(v92 + 4) = v74;
            *(v92 + 12) = 2112;
            *(v92 + 14) = v75;
            *v93 = v74;
            v93[1] = v75;
            *(v92 + 22) = 2080;
            sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
            sub_22B70FFFC(&qword_27D8CD7E0, &unk_27D8CEF80, 0x277D6EEE8);
            v94 = v74;
            v95 = v75;
            v96 = sub_22B7DBB08();
            v98 = v97;
            v71, v97, v99, v100, v101, v102, v103, v104, v116, v121;
            v105 = sub_22B4CFAAC(v96, v98, &v128);
            v98, v106, v107, v108, v109, v110, v111, v112, v117, v122;
            *(v92 + 24) = v105;
            _os_log_impl(&dword_22B4CC000, loga, v77, "Not mapping conversation %@ to chat %@ because of remaining handles %s", v92, 0x20u);
            sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
            swift_arrayDestroy();
            MEMORY[0x231898D60](v93, -1, -1);
            sub_22B4CFB78(v125);
            MEMORY[0x231898D60](v125, -1, -1);
            MEMORY[0x231898D60](v92, -1, -1);
          }

          else
          {
            v71, v85, v86, v87, v88, v89, v90, v91, v116, v121;
          }

          return 0;
        }
      }

      else
      {
        v72 = v123;
        if (*(v63 + 16))
        {
          goto LABEL_31;
        }
      }

      v71, v64, v65, v66, v67, v68, v69, v70, v115, v120;
      return 1;
    }

    if ((v39 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x231895C80](v48, v39);
    }

    else
    {
      if (v48 >= log[2].isa)
      {
        goto LABEL_40;
      }

      v50 = *(v39 + 8 * v48 + 32);
    }

    v51 = v50;
    v52 = (v48 + 1);
    if (__OFADD__(v48, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      log = (v39 & 0xFFFFFFFFFFFFFF8);
      v47 = sub_22B7DC1C8();
      goto LABEL_17;
    }

    result = [v50 ID];
    if (!result)
    {
      break;
    }

    v53 = result;
    v54 = [objc_opt_self() normalizedHandleWithDestinationID_];

    v48 = (v48 + 1);
    if (v54)
    {
      MEMORY[0x231895260]();
      if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B7DB938();
      }

      sub_22B7DB968();
      v49 = v128;
      v48 = v52;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_22B70CF2C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_22B7DC1C8();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_22B710C7C(a1, a2);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_22B7DC1C8() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_22B7DC1C8();
  v2 = sub_22B7C97E0(v5, v6);
LABEL_10:

  return sub_22B710FC8(a1, v2);
}

uint64_t sub_22B70D020(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_22B7DBA18();
  v2[5] = sub_22B7DBA08();
  v4 = sub_22B7DB9C8();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_22B70D0BC, v4, v3);
}

uint64_t sub_22B70D0BC()
{
  v1 = [*(v0 + 16) remoteMembers];
  sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0);
  sub_22B70FFFC(&qword_28141F188, &qword_28141F190, 0x277D6EEA0);
  v2 = sub_22B7DBAF8();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v10 = sub_22B7DC1C8();
  }

  else
  {
    v10 = *(v2 + 16);
  }

  v2, v3, v4, v5, v6, v7, v8, v9, v42, v44;
  if (v10 == 1 && (v11 = [*(v0 + 16) remoteMembers], v12 = sub_22B7DBAF8(), v11, v13 = sub_22B786E10(v12), v12, v14, v15, v16, v17, v18, v19, v20, v43, v45, v13) && (v21 = objc_msgSend(v13, sel_handle), v13, v22 = objc_msgSend(v21, sel_normalizedValue), *(v0 + 64) = v22, v21, v22))
  {
    v23 = sub_22B7DB6A8();
    v25 = v24;
    *(v0 + 72) = v23;
    *(v0 + 80) = v24;
    v26 = sub_22B7DBA08();
    *(v0 + 88) = v26;
    v27 = swift_task_alloc();
    *(v0 + 96) = v27;
    *(v27 + 16) = v23;
    *(v27 + 24) = v25;
    v28 = swift_task_alloc();
    *(v0 + 104) = v28;
    *v28 = v0;
    v28[1] = sub_22B70D468;
    v29 = MEMORY[0x277D85700];
    v30 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 112, v26, v29, 0xD000000000000012, 0x800000022B80E820, sub_22B70FF48, v27, v30);
  }

  else
  {

    if (qword_28141F420 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 16);
    v32 = sub_22B7DB2B8();
    sub_22B4CFA74(v32, qword_2814226F8);
    v33 = v31;
    v34 = sub_22B7DB298();
    v35 = sub_22B7DBCA8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 16);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v36;
      *v38 = v36;
      v39 = v36;
      _os_log_impl(&dword_22B4CC000, v34, v35, "Invalid call to CallManager's registerChat function for conversation %@", v37, 0xCu);
      sub_22B4D0D64(v38, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v38, -1, -1);
      MEMORY[0x231898D60](v37, -1, -1);
    }

    v40 = *(v0 + 8);

    return v40(0);
  }
}

uint64_t sub_22B70D468()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_22B70D5C8, v3, v2);
}

uint64_t sub_22B70D5C8()
{
  v53 = v0;

  if (*(v0 + 112) == 1)
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    *(v0 + 80), v1, v2, v3, v4, v5, v6, v7, v50, v52;
    [*(v10 + OBJC_IVAR___IMDCallManager_Impl_serviceSession) registerChat:v8 style:45];

    v11 = sub_22B70EA70(v9);
  }

  else
  {

    if (qword_28141F420 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 80);
    v13 = *(v0 + 16);
    v14 = sub_22B7DB2B8();
    sub_22B4CFA74(v14, qword_2814226F8);
    v15 = v13;

    v16 = sub_22B7DB298();
    v17 = sub_22B7DBC98();

    v12, v18, v19, v20, v21, v22, v23, v24, v50, v52;
    v25 = os_log_type_enabled(v16, v17);
    v26 = *(v0 + 80);
    if (v25)
    {
      v27 = *(v0 + 72);
      v28 = *(v0 + 16);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52 = v31;
      *v29 = 138412546;
      *(v29 + 4) = v28;
      *v30 = v28;
      *(v29 + 12) = 2080;
      v32 = v28;
      v33 = sub_22B4CFAAC(v27, v26, &v52);
      v26, v34, v35, v36, v37, v38, v39, v40, v51, v52;
      *(v29 + 14) = v33;
      _os_log_impl(&dword_22B4CC000, v16, v17, "Can't create chat for conversation %@ since the remoteMember %s isn't iMessage-able", v29, 0x16u);
      sub_22B4D0D64(v30, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v30, -1, -1);
      sub_22B4CFB78(v31);
      MEMORY[0x231898D60](v31, -1, -1);
      MEMORY[0x231898D60](v29, -1, -1);
    }

    else
    {

      v26, v41, v42, v43, v44, v45, v46, v47, v51, v52;
    }

    v11 = 0;
  }

  v48 = *(v0 + 8);

  return v48(v11);
}

void sub_22B70D834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22B6F0AD4(&unk_27D8CD790, &unk_22B7FD0B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v17 = objc_opt_self();
  v8 = sub_22B7DB678();
  v9 = IMChatCanonicalIDSIDsForAddress();

  v10 = *MEMORY[0x277D186B0];
  v11 = sub_22B7DB678();
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v12 = sub_22B7DBD58();
  (*(v5 + 16))(v7, a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v7, v4);
  aBlock[4] = sub_22B70FF50;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B70DAA0;
  aBlock[3] = &unk_283F1C670;
  v15 = _Block_copy(aBlock);

  [v17 refreshIDStatusForDestination:v9 service:v10 listenerID:v11 queue:v12 completionBlock:v15];
  _Block_release(v15);
}

uint64_t sub_22B70DAA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_22B70DAF4(IMDScheduledMessageCoordinator *a1, void *a2)
{
  v4 = sub_22B7DA9A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![(IMDScheduledMessageCoordinator *)a1 isLocallyCreated])
  {
    v10 = [(IMDScheduledMessageCoordinator *)a1 initiator];
    v11 = [v10 normalizedValue];
    goto LABEL_5;
  }

  v8 = [a2 lastAddressedLocalHandle];
  if (v8)
  {
    v9 = v8;
    goto LABEL_6;
  }

  result = [a2 account];
  if (result)
  {
    v94 = result;
    v10 = [result loginID];

    if (!v10)
    {
      goto LABEL_32;
    }

    v11 = [v10 _stripFZIDPrefix];
LABEL_5:
    v9 = v11;

    if (v9)
    {
LABEL_6:
      v12 = sub_22B7DB6A8();
      v14 = v13;

      sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22B7F93B0;
      v122 = sub_22B7DB6A8();
      v123 = v16;
      v17 = MEMORY[0x277D837D0];
      sub_22B7DC248();
      *(inited + 96) = v17;
      v121 = v12;
      *(inited + 72) = v12;
      *(inited + 80) = v14;

      v18 = sub_22B4D7D1C(inited);
      swift_setDeallocating();
      sub_22B4D0D64(inited + 32, &unk_27D8CD7D0, &qword_22B7FA3F0);
      v19 = sub_22B7DB568();
      v18, v20, v21, v22, v23, v24, v25, v26, v116, v117;
      v118 = a1;
      v27 = [(IMDScheduledMessageCoordinator *)a1 UUID];
      sub_22B7DA988();

      sub_22B7DA978();
      v29 = v28;
      (*(v5 + 8))(v7, v4);
      v30 = sub_22B7DB678();
      v29, v31, v32, v33, v34, v35, v36, v37, v116, v117;
      result = [a2 account];
      if (result)
      {
        v39 = result;
        v40 = [result loginID];

        result = [a2 account];
        if (result)
        {
          v41 = result;
          v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v43 = [v41 loginID];

          v44 = [a2 serviceName];
          a1 = v14;
          v45 = sub_22B7DB678();
          v46 = [a2 roomName];
          v117 = [v42 initWithSenderInfo:v19 time:0 guid:v30 messageID:0 account:v40 accountID:v43 service:v44 handle:v45 roomName:v46 unformattedID:0 countryCode:0 type:6];
          v47 = v117;

          if (!v47)
          {

            a1, v87, v88, v89, v90, v91, v92, v93, v116, v117;
            return 0;
          }

          v120 = a1;

          v119 = v47;
          result = [a2 participants];
          if (result)
          {
            v48 = result;
            sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
            v49 = sub_22B7DB918();

            v57 = v120;
            v116 = a2;
            if (v49 >> 62)
            {
              goto LABEL_39;
            }

            for (i = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B7DC1C8())
            {
              v59 = 0;
              a2 = (v49 & 0xC000000000000001);
              a1 = (v49 & 0xFFFFFFFFFFFFFF8);
              while (1)
              {
                if (a2)
                {
                  v64 = MEMORY[0x231895C80](v59, v49);
                }

                else
                {
                  if (v59 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_38;
                  }

                  v64 = *(v49 + 8 * v59 + 32);
                }

                v63 = v64;
                v65 = v59 + 1;
                if (__OFADD__(v59, 1))
                {
                  break;
                }

                v66 = [v64 ID];
                if (v66)
                {
                  v67 = v66;
                  v68 = sub_22B7DB6A8();
                  v70 = v69;

                  v77 = v68;
                  v57 = v120;
                  if (v77 == v121 && v70 == v120)
                  {
                    v70, v71, v121, v72, v73, v74, v75, v76, v116, v117;
                  }

                  else
                  {
                    v79 = sub_22B7DC518();
                    v70, v80, v81, v82, v83, v84, v85, v86, v116, v117;
                    if ((v79 & 1) == 0)
                    {
                      goto LABEL_15;
                    }
                  }

                  v60 = [v63 unformattedID];
                  v61 = v119;
                  [v119 setUnformattedID_];

                  v62 = [v63 countryCode];
                  [v61 setCountryCode_];

                  v63 = v62;
                }

LABEL_15:

                ++v59;
                if (v65 == i)
                {
                  goto LABEL_40;
                }
              }

              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              ;
            }

LABEL_40:
            v49, v50, v51, v52, v53, v54, v55, v56, v116, v117;
            v57, v104, v105, v106, v107, v108, v109, v110, v116, v117;
            v111 = v116;
            v112 = [v116 lastAddressedLocalHandle];
            v113 = v119;
            [v119 setDestinationCallerID_];

            v114 = v118;
            if ([(IMDScheduledMessageCoordinator *)v118 isLocallyCreated])
            {
              [v119 setFlags_];
            }

            v115 = [(IMDScheduledMessageCoordinator *)v114 avMode];
            if ((v115 & 0x8000000000000000) == 0)
            {
              [v119 setAvMode_];

              return v117;
            }

            __break(1u);
LABEL_45:
            swift_once();
LABEL_33:
            v95 = sub_22B7DB2B8();
            sub_22B4CFA74(v95, qword_2814226F8);
            v96 = a1;
            v97 = a2;
            v98 = sub_22B7DB298();
            v99 = sub_22B7DBC98();

            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              *v100 = 138412546;
              *(v100 + 4) = v96;
              *(v100 + 12) = 2112;
              *(v100 + 14) = v97;
              *v101 = v96;
              v101[1] = v97;
              v102 = v96;
              v103 = v97;
              _os_log_impl(&dword_22B4CC000, v98, v99, "Couldn't pick initiator for conversation %@ on chat %@", v100, 0x16u);
              sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
              swift_arrayDestroy();
              MEMORY[0x231898D60](v101, -1, -1);
              MEMORY[0x231898D60](v100, -1, -1);
            }

            else
            {
            }

            return 0;
          }

          goto LABEL_48;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_32:
    if (qword_28141F420 == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_45;
  }

LABEL_49:
  __break(1u);
  return result;
}

void sub_22B70E318(void *a1, void *a2)
{
  sub_22B70F3A8(a1, a2);
  if (([a1 isLocallyCreated] & 1) == 0 && !objc_msgSend(a1, sel_state) && !objc_msgSend(a1, sel_avMode))
  {
    v4 = [a1 presentationContext];
    v5 = [v4 mode];

    if (v5 == 1)
    {

      sub_22B70BB00(a1, a2);
    }
  }
}

void sub_22B70E3F0(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 association];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  if ([v6 isPrimary])
  {

LABEL_4:
    *a3 = v5;
    v8 = v5;
    return;
  }

  v46 = v7;
  v9 = [a2 remoteMembers];
  sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0);
  sub_22B70FFFC(&qword_28141F188, &qword_28141F190, 0x277D6EEA0);
  v10 = sub_22B7DBAF8();

  v44 = a3;
  if ((v10 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22B7DC188();
    sub_22B7DBB28();
    v11 = v48;
    v12 = v49;
    v14 = v50;
    v13 = v51;
    v15 = v52;
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v12 = v10 + 56;
    v14 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);

    v13 = 0;
    v11 = v10;
  }

  v45 = v11;
  while (v11 < 0)
  {
    if (!sub_22B7DC1F8() || (swift_dynamicCast(), (v21 = v53) == 0))
    {
LABEL_28:

      sub_22B705E3C(v11);
      v10, v37, v38, v39, v40, v41, v42, v43, v14, v10;
      v21 = v5;
      goto LABEL_29;
    }

LABEL_23:
    v47 = v15;
    sub_22B4D01A0(0, &qword_28141EFD8, 0x277D82BB8);
    v22 = [v21 handle];
    v23 = [v46 handle];
    v24 = sub_22B7DBFD8();

    if (v24)
    {
      v25 = [v21 association];
      if (v25)
      {
        v26 = v25;
        if ([v25 isPrimary])
        {
          v27 = [v26 handle];
          v28 = [v5 handle];
          v29 = sub_22B7DBFD8();

          if (v29)
          {

            sub_22B705E3C(v45);
            v10, v30, v31, v32, v33, v34, v35, v36, v14, v10;
LABEL_29:
            *v44 = v21;
            return;
          }
        }

        else
        {
        }
      }
    }

    v11 = v45;
    v15 = v47;
  }

  v19 = v13;
  v20 = v15;
  if (v15)
  {
LABEL_19:
    v15 = (v20 - 1) & v20;
    v21 = *(*(v11 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v21)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v13 >= ((v14 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v20 = *(v12 + 8 * v13);
    ++v19;
    if (v20)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_22B70E7B0(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v29 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22B7DC188();
    sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0);
    sub_22B70FFFC(&qword_28141F188, &qword_28141F190, 0x277D6EEA0);
    sub_22B7DBB28();
    v4 = v28[1];
    v5 = v28[2];
    v6 = v28[3];
    v7 = v28[4];
    v8 = v28[5];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = (a1 + 56);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = (v11 & *(a1 + 56));

    v7 = 0;
  }

  v25 = MEMORY[0x277D84F90];
  while (v4 < 0)
  {
    v17 = sub_22B7DC1F8();
    if (!v17 || (v27 = v17, sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0), swift_dynamicCast(), v16 = v28[0], v14 = v7, v15 = v8, !v28[0]))
    {
LABEL_23:
      sub_22B705E3C(v4);
      return;
    }

LABEL_19:
    v28[0] = v16;
    sub_22B70E3F0(v28, a2, &v27);
    if (v3)
    {

      sub_22B705E3C(v4);
      v25, v18, v19, v20, v21, v22, v23, v24, v6, v25;
      return;
    }

    if (v27)
    {
      MEMORY[0x231895260]();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B7DB938();
      }

      sub_22B7DB968();
      v25 = v29;
    }

    v7 = v14;
    v8 = v15;
  }

  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v13 = v5[v14];
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void *sub_22B70EA70(unint64_t a1)
{
  v2 = sub_22B7DA9A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v179 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 messagesGroupUUID];
  v7 = &selRef_normalizedPhoneNumberHandleForValue_isoCountryCode_;
  if (v6)
  {
    v8 = v6;
    sub_22B7DA988();

    v9 = [objc_opt_self() sharedInstance];
    sub_22B7DA978();
    v11 = v10;
    v12 = sub_22B7DB678();
    v11, v13, v14, v15, v16, v17, v18, v19, v179, v180;
    v20 = [v9 existingChatsWithGroupID_];

    sub_22B4D01A0(0, &qword_28141EFF0, off_2786FF950);
    v21 = sub_22B7DB918();

    (*(v3 + 8))(v5, v2);
    if (!(v21 >> 62))
    {
      goto LABEL_3;
    }

LABEL_36:
    v111 = sub_22B7DC1C8();
    v182 = v21;
    v183 = v111;
    if (v111)
    {
      goto LABEL_4;
    }

    goto LABEL_37;
  }

  v50 = [a1 remoteMembers];
  sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0);
  sub_22B70FFFC(&qword_28141F188, &qword_28141F190, 0x277D6EEA0);
  v51 = sub_22B7DBAF8();

  if ((v51 & 0xC000000000000001) != 0)
  {
    v59 = sub_22B7DC1C8();
  }

  else
  {
    v59 = *(v51 + 16);
  }

  v51, v52, v53, v54, v55, v56, v57, v58, v179, v180;
  if (v59 != 1 || (v60 = [a1 remoteMembers], v61 = sub_22B7DBAF8(), v60, v62 = sub_22B786E10(v61), v61, v63, v64, v65, v66, v67, v68, v69, v179, v180, !v62) || (v70 = objc_msgSend(v62, sel_handle), v62, v71 = objc_msgSend(v70, sel_normalizedValue), v70, !v71))
  {
LABEL_28:
    if (qword_28141F420 == -1)
    {
LABEL_29:
      v82 = sub_22B7DB2B8();
      sub_22B4CFA74(v82, qword_2814226F8);
      v83 = a1;
      v84 = sub_22B7DB298();
      v85 = sub_22B7DBCB8();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v184 = v83;
        v185 = v87;
        *v86 = 136315138;
        sub_22B4D01A0(0, &qword_28141F270, 0x277D6EE60);
        v88 = v83;
        v89 = sub_22B7DB6E8();
        v91 = v90;
        v92 = sub_22B4CFAAC(v89, v90, &v185);
        v91, v93, v94, v95, v96, v97, v98, v99, v179, v180;
        *(v86 + 4) = v92;
        _os_log_impl(&dword_22B4CC000, v84, v85, "Failed to find existing chat for conversation: %s", v86, 0xCu);
        sub_22B4CFB78(v87);
        MEMORY[0x231898D60](v87, -1, -1);
        MEMORY[0x231898D60](v86, -1, -1);
      }

      return 0;
    }

LABEL_83:
    swift_once();
    goto LABEL_29;
  }

  v72 = sub_22B7DB6A8();
  v74 = v73;

  if ([a1 avMode])
  {
    v74, v75, v76, v77, v78, v79, v80, v81, v179, v180;
    goto LABEL_28;
  }

  v100 = [objc_opt_self() sharedInstance];
  sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_22B7F93B0;
  *(v101 + 32) = v72;
  *(v101 + 40) = v74;
  v102 = sub_22B7DB8F8();
  v101, v103, v104, v105, v106, v107, v108, v109, v179, v180;
  v110 = [v100 existingChatsForIDs:v102 displayName:0 groupID:0 style:45];

  sub_22B4D01A0(0, &qword_28141EFF0, off_2786FF950);
  v21 = sub_22B7DB918();

  if (v21 >> 62)
  {
    goto LABEL_36;
  }

LABEL_3:
  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v182 = v21;
  v183 = v22;
  if (v22)
  {
LABEL_4:
    v180 = a1;
    v23 = 0;
    v24 = v21;
    v25 = v21 & 0xC000000000000001;
    a1 = v24 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v25)
      {
        v26 = MEMORY[0x231895C80](v23, v182);
      }

      else
      {
        if (v23 >= *(a1 + 16))
        {
          goto LABEL_74;
        }

        v26 = *(v182 + 8 * v23 + 32);
      }

      v27 = v26;
      v28 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_73;
      }

      v29 = [v26 serviceName];
      if (v29)
      {
        v30 = v29;
        v31 = sub_22B7DB6A8();
        v33 = v32;

        if (v31 == 0x6567617373654D69 && v33 == 0xE800000000000000)
        {
          v33, v34, v35, v36, v37, v38, v39, v40, v179, v180;

LABEL_33:
          v181 = 1;
LABEL_34:
          a1 = v180;
          v7 = &selRef_normalizedPhoneNumberHandleForValue_isoCountryCode_;
          v21 = v182;
          goto LABEL_38;
        }

        v42 = sub_22B7DC518();
        v33, v43, v44, v45, v46, v47, v48, v49, v179, v180;

        if (v42)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }

      ++v23;
      if (v28 == v183)
      {
        v181 = 0;
        goto LABEL_34;
      }
    }
  }

LABEL_37:
  v181 = 0;
LABEL_38:
  v112 = [a1 v7[469]];
  sub_22B4D01A0(0, &qword_28141F190, 0x277D6EEA0);
  sub_22B70FFFC(&qword_28141F188, &qword_28141F190, 0x277D6EEA0);
  v113 = sub_22B7DBAF8();

  v114 = a1;
  sub_22B70E7B0(v113, v114);
  v116 = v115;
  v113, v117, v118, v119, v120, v121, v122, v123, v179, v180;

  v124 = sub_22B77A110(v116);
  v116, v125, v126, v127, v128, v129, v130, v131, v179, v180;
  sub_22B708C90(v124, v132);
  v134 = v133;
  v124, v135, v136, v137, v138, v139, v140, v141, v179, v180;
  v142 = sub_22B77A140(v134);
  v134, v143, v144, v145, v146, v147, v148, v149, v179, v180;
  a1 = MEMORY[0x277D84F90];
  v185 = MEMORY[0x277D84F90];
  v157 = v183;
  if (v183)
  {
    a1 = 0;
    v158 = v21 & 0xC000000000000001;
    v159 = v21 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v158)
      {
        v160 = MEMORY[0x231895C80](a1, v21);
      }

      else
      {
        if (a1 >= *(v159 + 16))
        {
          goto LABEL_71;
        }

        v160 = *(v21 + 8 * a1 + 32);
      }

      v161 = v160;
      v162 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v184 = v160;
      if (sub_22B70C8D8(&v184, v181, v114, v142))
      {
        sub_22B7DC358();
        sub_22B7DC398();
        v21 = v182;
        sub_22B7DC3A8();
        sub_22B7DC368();
        v157 = v183;
      }

      else
      {
      }

      ++a1;
      if (v162 == v157)
      {
        a1 = v185;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    v170 = sub_22B7DC1C8();
    if (!v170)
    {
      goto LABEL_78;
    }

    goto LABEL_53;
  }

LABEL_50:
  v21, v150, v151, v152, v153, v154, v155, v156, v179, v180;
  v142, v163, v164, v165, v166, v167, v168, v169, v179, v180;
  if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    goto LABEL_77;
  }

  v170 = *(a1 + 16);
  if (!v170)
  {
LABEL_78:

    return 0;
  }

LABEL_53:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v171 = MEMORY[0x231895C80](0, a1);
    goto LABEL_56;
  }

  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_83;
  }

  v171 = *(a1 + 32);
LABEL_56:
  v172 = v171;
  if (v170 != 1)
  {
    v173 = 1;
    do
    {
      v174 = v172;
      v175 = v173;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v176 = MEMORY[0x231895C80](v175, a1);
        }

        else
        {
          if ((v175 & 0x8000000000000000) != 0)
          {
            goto LABEL_75;
          }

          if (v175 >= *(a1 + 16))
          {
            goto LABEL_76;
          }

          v176 = *(a1 + 8 * v175 + 32);
        }

        v172 = v176;
        v173 = v175 + 1;
        if (__OFADD__(v175, 1))
        {
          goto LABEL_72;
        }

        v177 = [v174 lastMessageTimeStampOnLoad];
        if ([v172 lastMessageTimeStampOnLoad] < v177)
        {
          break;
        }

        ++v175;
        if (v173 == v170)
        {
          v172 = v174;
          goto LABEL_69;
        }
      }
    }

    while (v173 != v170);
  }

LABEL_69:

  return v172;
}

void sub_22B70F3A8(void *a1, void *a2)
{
  sub_22B4D01A0(0, &unk_27D8CD7C0, 0x277D1AC80);
  v4 = a1;
  v5 = a2;
  v6 = sub_22B70DAF4(v4, v5);
  if (!v6)
  {
    if (qword_28141F420 != -1)
    {
      swift_once();
    }

    v32 = sub_22B7DB2B8();
    sub_22B4CFA74(v32, qword_2814226F8);
    v33 = v4;
    v34 = v5;
    v127 = sub_22B7DB298();
    v35 = sub_22B7DBC98();

    if (os_log_type_enabled(v127, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412546;
      *(v36 + 4) = v33;
      *(v36 + 12) = 2112;
      *(v36 + 14) = v34;
      *v37 = v33;
      v37[1] = v34;
      v38 = v33;
      v39 = v34;
      _os_log_impl(&dword_22B4CC000, v127, v35, "Failed to create IMTUConversationItem for conversation %@ on chat %@", v36, 0x16u);
      sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v37, -1, -1);
      MEMORY[0x231898D60](v36, -1, -1);
    }

    goto LABEL_45;
  }

  v7 = v6;
  v8 = [objc_opt_self() sharedInstance];
  v9 = v7;
  v10 = &selRef_deleteMessageGUIDs_inChat_;
  v11 = [v9 guid];
  if (!v11)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = v11;

  v13 = [v8 chatForMessageGUID_];
  if (!v13)
  {
LABEL_32:
    v103 = [v5 serviceSession];
    if (!v103)
    {
      if (qword_28141F420 != -1)
      {
        swift_once();
      }

      v114 = sub_22B7DB2B8();
      sub_22B4CFA74(v114, qword_2814226F8);
      v115 = v5;
      v127 = sub_22B7DB298();
      v116 = sub_22B7DBC98();

      if (os_log_type_enabled(v127, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *v117 = 138412290;
        *(v117 + 4) = v115;
        *v118 = v115;
        v119 = v115;
        _os_log_impl(&dword_22B4CC000, v127, v116, "Failed to find service session for chat %@", v117, 0xCu);
        sub_22B4D0D64(v118, &unk_27D8CEC60, &qword_22B7F9E20);
        MEMORY[0x231898D60](v118, -1, -1);
        MEMORY[0x231898D60](v117, -1, -1);
      }

      goto LABEL_45;
    }

    v104 = v103;
    if (qword_28141F420 != -1)
    {
      swift_once();
    }

    v105 = sub_22B7DB2B8();
    sub_22B4CFA74(v105, qword_2814226F8);
    v106 = v5;
    v107 = v9;
    v108 = sub_22B7DB298();
    v109 = sub_22B7DBCB8();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v110 = 138412546;
      *(v110 + 4) = v107;
      *(v110 + 12) = 2112;
      *(v110 + 14) = v106;
      *v111 = v7;
      v111[1] = v106;
      v112 = v106;
      v113 = v107;
      _os_log_impl(&dword_22B4CC000, v108, v109, "Storing conversationItem %@ on chat %@", v110, 0x16u);
      sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v111, -1, -1);
      MEMORY[0x231898D60](v110, -1, -1);
    }

    v127 = [v106 chatIdentifier];
    if (v127)
    {
      [v104 storeItem:v107 toChat:v127 style:{objc_msgSend(v106, sel_style)}];

      goto LABEL_45;
    }

    goto LABEL_49;
  }

  if (qword_28141F420 != -1)
  {
    swift_once();
  }

  v14 = sub_22B7DB2B8();
  sub_22B4CFA74(v14, qword_2814226F8);
  v127 = v13;
  v15 = sub_22B7DB298();
  v16 = sub_22B7DBCB8();
  if (os_log_type_enabled(v15, v16))
  {
    v124 = v9;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v128 = v18;
    *v17 = 136315138;
    v19 = [v127 chatIdentifier];

    if (!v19)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v20 = sub_22B7DB6A8();
    v22 = v21;

    v23 = sub_22B4CFAAC(v20, v22, &v128);
    v22, v24, v25, v26, v27, v28, v29, v30, v120, v124;
    *(v17 + 4) = v23;
    _os_log_impl(&dword_22B4CC000, v15, v16, "Found existing item mapping to chatIdentifier: %s", v17, 0xCu);
    sub_22B4CFB78(v18);
    MEMORY[0x231898D60](v18, -1, -1);
    MEMORY[0x231898D60](v17, -1, -1);

    v9 = v123;
    v31 = v127;
    v10 = &selRef_deleteMessageGUIDs_inChat_;
  }

  else
  {

    v31 = v127;
  }

  v40 = [v31 v10[473]];
  if (v40)
  {
    v41 = v40;
    v42 = sub_22B7DB6A8();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = [v5 v10[473]];
  if (!v45)
  {
    if (!v44)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v46 = v45;
  v47 = sub_22B7DB6A8();
  v49 = v48;

  if (!v44)
  {
    if (!v49)
    {
      goto LABEL_28;
    }

    v49, v50, v51, v52, v53, v54, v55, v56, v120, v123;
    goto LABEL_31;
  }

  if (!v49)
  {
LABEL_24:

    v44, v64, v65, v66, v67, v68, v69, v70, v120, v123;
    goto LABEL_32;
  }

  if (v42 == v47 && v44 == v49)
  {
    v44, v50, v51, v52, v53, v54, v55, v56, v120, v123;
    v49, v57, v58, v59, v60, v61, v62, v63, v121, v125;
    goto LABEL_28;
  }

  v71 = sub_22B7DC518();
  v44, v72, v73, v74, v75, v76, v77, v78, v120, v123;
  v49, v79, v80, v81, v82, v83, v84, v85, v122, v126;
  if ((v71 & 1) == 0)
  {
LABEL_31:

    goto LABEL_32;
  }

LABEL_28:
  v86 = v9;
  v87 = sub_22B7DB298();
  v88 = sub_22B7DBCB8();
  if (!os_log_type_enabled(v87, v88))
  {

    goto LABEL_45;
  }

  v89 = swift_slowAlloc();
  v90 = swift_slowAlloc();
  v128 = v90;
  *v89 = 136315138;
  v91 = [v86 v10[473]];

  if (!v91)
  {
LABEL_51:
    __break(1u);
    return;
  }

  v92 = sub_22B7DB6A8();
  v94 = v93;

  v95 = sub_22B4CFAAC(v92, v94, &v128);
  v94, v96, v97, v98, v99, v100, v101, v102, v120, v123;
  *(v89 + 4) = v95;
  _os_log_impl(&dword_22B4CC000, v87, v88, "Not adding IMTUConversationItem since item GUID %s already exists", v89, 0xCu);
  sub_22B4CFB78(v90);
  MEMORY[0x231898D60](v90, -1, -1);
  MEMORY[0x231898D60](v89, -1, -1);

LABEL_45:
}

uint64_t sub_22B70FC24(void *a1, const char *a2, uint64_t a3, uint64_t a4, ...)
{
  v7 = v4;
  v9 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  if (qword_28141F420 != -1)
  {
    swift_once();
  }

  v12 = sub_22B7DB2B8();
  sub_22B4CFA74(v12, qword_2814226F8);
  v13 = a1;
  v14 = sub_22B7DB298();
  v15 = sub_22B7DBCB8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_22B4CC000, v14, v15, a2, v16, 0xCu);
    sub_22B4D0D64(v17, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v17, -1, -1);
    MEMORY[0x231898D60](v16, -1, -1);
  }

  v19 = sub_22B7DBA58();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  sub_22B7DBA18();
  v20 = v13;
  v21 = v7;
  v22 = sub_22B7DBA08();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v21;
  v23[5] = v20;
  sub_22B77E3D4(0, 0, v11, a4, v23);
}

uint64_t sub_22B70FE88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F0D94;

  return sub_22B70C5E4(a1, v4, v5, v7, v6);
}

uint64_t sub_22B70FF50(uint64_t a1)
{
  sub_22B6F0AD4(&unk_27D8CD790, &unk_22B7FD0B0);
  sub_22B6F0AD4(&unk_27D8CD790, &unk_22B7FD0B0);
  return sub_22B7DB9E8();
}

uint64_t sub_22B70FFFC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22B4D01A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B71004C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B710094()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B7100DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F12E8;

  return sub_22B70C310(a1, v4, v5, v7, v6);
}

unint64_t sub_22B71019C()
{
  result = qword_28141F2C0;
  if (!qword_28141F2C0)
  {
    sub_22B6FB8C4(&qword_27D8CEA10, &qword_22B7F9DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F2C0);
  }

  return result;
}

uint64_t sub_22B710208(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B6F12E8;

  return sub_22B7097E8(a1, v4, v5, v6);
}

uint64_t sub_22B7102E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *(a1 + 8);
  a3[1] = v3;
}

void sub_22B710320(IMDScheduledMessageCoordinator *a1, IMDScheduledMessageCoordinator *a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v5 = sub_22B7DB2B8();
    sub_22B4CFA74(v5, qword_281422638);

    v6 = sub_22B7DB298();
    v7 = sub_22B7DBCB8();
    a2, v8, v9, v10, v11, v12, v13, v14, v75, v76[0];
    if (os_log_type_enabled(v6, v7))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v75 = v16;
      *v15 = 136315138;
      v17 = MEMORY[0x2318952A0](a2, MEMORY[0x277D837D0]);
      v19 = v18;
      v20 = sub_22B4CFAAC(v17, v18, &v75);
      v19, v21, v22, v23, v24, v25, v26, v27, v75, v76[0];
      *(v15 + 4) = v20;
      _os_log_impl(&dword_22B4CC000, v6, v7, "Observed blockedHandles: %s", v15, 0xCu);
      sub_22B4CFB78(v16);
      MEMORY[0x231898D60](v16, -1, -1);
      MEMORY[0x231898D60](v15, -1, -1);
    }

    v29 = sub_22B77A2DC(v28);
    a1, v30, v31, v32, v33, v34, v35, v36, v75, v76[0];

    v38 = sub_22B77A2DC(v37);
    a2, v39, v40, v41, v42, v43, v44, v45, v75, v76[0];
    if (*v29->messageStore <= *v38->messageStore >> 3)
    {
      v75 = v38;
      sub_22B710E9C(v29);
      v29, v61, v62, v63, v64, v65, v66, v67, v75, v76[0];
      v46 = v75;
    }

    else
    {
      v46 = sub_22B711648(v29, v38);
      v29, v47, v48, v49, v50, v51, v52, v53, v75, v76[0];
    }

    sub_22B71054C(v46, v54, v55, v56, v57, v58, v59, v60, v75, v76[0]);

    v46, v68, v69, v70, v71, v72, v73, v74, v75, v76[0];
  }
}

void sub_22B71054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{

  v12 = sub_22B713140(v11, v10);
  v132 = v10;

  v119 = MEMORY[0x277D84F90];
  v134 = MEMORY[0x277D84F90];
  v13 = v12 + 56;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 56);
  v17 = (v14 + 63) >> 6;

  v130 = v12;
  v18 = 0;
  if (v16)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v21 = *(v12 + 48) + ((v19 << 10) | (16 * v20));
        v23 = *v21;
        v22 = *(v21 + 8);
        v24 = *(v132 + 24);

        v25 = sub_22B7DB678();
        v26 = [v24 existingiMessageChatForID_];

        if (v26)
        {
          v22, v27, v28, v29, v30, v31, v32, v33, v119, i;
          MEMORY[0x231895260]();
          if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22B7DB938();
          }

          sub_22B7DB968();
          v119 = v134;
          v18 = v19;
          if (!v16)
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (qword_28141F378 != -1)
          {
            swift_once();
          }

          v34 = sub_22B7DB2B8();
          sub_22B4CFA74(v34, qword_281422638);

          v35 = sub_22B7DB298();
          v36 = sub_22B7DBC98();
          v22, v37, v38, v39, v40, v41, v42, v43, v119, i;
          if (os_log_type_enabled(v35, v36))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v133 = v52;
            *v51 = 136315138;
            *(v51 + 4) = sub_22B4CFAAC(v23, v22, &v133);
            _os_log_impl(&dword_22B4CC000, v35, v36, "No chat found for blocked handle: %s", v51, 0xCu);
            sub_22B4CFB78(v52);
            v53 = v52;
            v12 = v130;
            MEMORY[0x231898D60](v53, -1, -1);
            MEMORY[0x231898D60](v51, -1, -1);
          }

          v22, v44, v45, v46, v47, v48, v49, v50, v120, v123;

          v18 = v19;
          if (!v16)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v19 = v18;
      }
    }
  }

  if (qword_28141F378 == -1)
  {
    goto LABEL_20;
  }

LABEL_64:
  swift_once();
LABEL_20:
  v54 = sub_22B7DB2B8();
  sub_22B4CFA74(v54, qword_281422638);
  v55 = v119;

  v56 = sub_22B7DB298();
  v57 = sub_22B7DBCB8();
  v58 = v119 >> 62;
  if (os_log_type_enabled(v56, v57))
  {
    v66 = swift_slowAlloc();
    *v66 = 134217984;
    if (v58)
    {
      v67 = sub_22B7DC1C8();
    }

    else
    {
      v67 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v66 + 4) = v67;
    v119, v59, v60, v61, v62, v63, v64, v65, v119, i;
    _os_log_impl(&dword_22B4CC000, v56, v57, "Found %ld blocked Chats. Cancelling scheduled messages for them.", v66, 0xCu);
    MEMORY[0x231898D60](v66, -1, -1);
  }

  else
  {

    v119, v75, v76, v77, v78, v79, v80, v81, v119, i;
  }

  v119 = v55;
  if (v58)
  {
    v82 = sub_22B7DC1C8();
    if (v82)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v82 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v82)
    {
LABEL_27:
      v83 = 0;
      v127 = v119 & 0xFFFFFFFFFFFFFF8;
      v128 = v119 & 0xC000000000000001;
      queue = v119->queue;
      for (i = v82; i != v83; v82 = i)
      {
        while (1)
        {
          if (v128)
          {
            v92 = MEMORY[0x231895C80](v83, v119);
          }

          else
          {
            if (v83 >= *(v127 + 16))
            {
              goto LABEL_63;
            }

            v92 = *&queue[8 * v83];
          }

          v93 = v92;
          if (__OFADD__(v83++, 1))
          {
            goto LABEL_62;
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            break;
          }

          if (v83 == v82)
          {
            goto LABEL_66;
          }
        }

        v96 = Strong;
        v97 = [v93 participants];
        if (!v97)
        {
          __break(1u);
          return;
        }

        v98 = v97;
        v131 = v93;
        sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
        v99 = sub_22B7DB918();

        v129 = v96;
        if (v99 >> 62)
        {
          v107 = sub_22B7DC1C8();
          if (v107)
          {
LABEL_38:
            v108 = 0;
            v84 = MEMORY[0x277D84F90];
            do
            {
              v109 = v108;
              while (1)
              {
                if ((v99 & 0xC000000000000001) != 0)
                {
                  v110 = MEMORY[0x231895C80](v109, v99);
                }

                else
                {
                  if (v109 >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_60;
                  }

                  v110 = *(v99 + 8 * v109 + 32);
                }

                v111 = v110;
                v108 = v109 + 1;
                if (__OFADD__(v109, 1))
                {
                  __break(1u);
LABEL_60:
                  __break(1u);
                  goto LABEL_61;
                }

                v112 = [v110 ID];
                if (v112)
                {
                  break;
                }

                ++v109;
                if (v108 == v107)
                {
                  goto LABEL_29;
                }
              }

              v113 = v112;
              v114 = sub_22B7DB6A8();
              v125 = v115;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v84 = sub_22B71BD80(0, *v84->messageStore + 1, 1, v84, v103, v104, v105, v106);
              }

              v117 = *v84->messageStore;
              v116 = *v84->chatRegistry;
              if (v117 >= v116 >> 1)
              {
                v84 = sub_22B71BD80((v116 > 1), v117 + 1, 1, v84, v103, v104, v105, v106);
              }

              *v84->messageStore = v117 + 1;
              v118 = v84 + 16 * v117;
              *(v118 + 4) = v114;
              *(v118 + 5) = v125;
            }

            while (v108 != v107);
            goto LABEL_29;
          }
        }

        else
        {
          v107 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v107)
          {
            goto LABEL_38;
          }
        }

        v84 = MEMORY[0x277D84F90];
LABEL_29:
        v99, v100, v101, v102, v103, v104, v105, v106, v119, i;
        sub_22B7775E4(v131, v84, 4);

        v84, v85, v86, v87, v88, v89, v90, v91, v121, v124;
      }
    }
  }

LABEL_66:

  v119, v68, v69, v70, v71, v72, v73, v74, a9, a10;
}

uint64_t sub_22B710C08()
{
  MEMORY[0x231898E50](v0 + 16);

  sub_22B4CFB78((v0 + 32));
  *(v0 + 72), v1, v2, v3, v4, v5, v6, v7, vars0, vars8;

  return swift_deallocClassInstance();
}

void sub_22B710C7C(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (!sub_22B7DC1C8())
    {
      return;
    }
  }

  else if (!*(*v2 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22B7DC188();
    sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
    sub_22B7133EC();
    sub_22B7DBB28();
    a1 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_22:
      sub_22B705E3C(a1);
      return;
    }

    while (1)
    {
      v17 = sub_22B711BB8(v16);

      v6 = v14;
      v7 = v15;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_22B7DC1F8())
      {
        sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
        swift_dynamicCast();
        v16 = v18;
        v14 = v6;
        v15 = v7;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_22;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_22B710E9C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(result + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22B711D50(v12, v13);
        v15 = v14;
        v13, v14, v16, v17, v18, v19, v20, v21, v29, v31;
        v15, v22, v23, v24, v25, v26, v27, v28, v30, v32;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_22B710FC8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v84 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22B7DC188();
    sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
    sub_22B7133EC();
    sub_22B7DBB28();
    v4 = v79;
    v6 = v80;
    v7 = v81;
    v8 = v82;
    v9 = v83;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v74 = v4;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v65 = v7;
  v13 = (v7 + 64) >> 6;
  v71 = (v3 + 56);
  v78 = v9;
  v68 = v6;
  v69 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_22B7DC1F8();
      if (!v21)
      {
        goto LABEL_65;
      }

      v72 = v21;
      sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
      swift_dynamicCast();
      v19 = v73;
      v17 = v8;
      v2 = v9;
      if (!v73)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        if (v13 <= (v8 + 1))
        {
          v16 = v8 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_67;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v74 = v4;
      v75 = v6;
      v76 = v65;
      v77 = v17;
      v78 = v2;
      if (!v19)
      {
LABEL_65:
        v54 = v4;
        goto LABEL_63;
      }
    }

    v22 = v19;
    v23 = sub_22B7DBFC8();
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v68;
    v4 = v69;
  }

  v25 = ~v24;
  v26 = sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
  v27 = *(*(v3 + 48) + 8 * v8);
  v70 = v26;
  while (1)
  {
    v28 = sub_22B7DBFD8();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v3 + 48) + 8 * v8);
  }

  v30 = *(v3 + 32);
  v62 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v62;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v63 = &v61;
    MEMORY[0x28223BE20](v29);
    v32 = &v61 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v71, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = *(v3 + 16);
    v64 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v68;
    v35 = v69;
    v37 = i;
LABEL_33:
    v66 = v4;
    while (v35 < 0)
    {
      v38 = sub_22B7DC1F8();
      if (!v38)
      {
        goto LABEL_61;
      }

      v72 = v38;
      swift_dynamicCast();
      v39 = v73;
      if (!v73)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = sub_22B7DBFC8();
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v71[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(*(v45 + 48) + 8 * v47);
          v51 = sub_22B7DBFD8();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v71[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v64[v48];
        v64[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
        if (!v53)
        {
          v4 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v74 = v35;
      v75 = v36;
      v76 = v65;
      v77 = v41;
      v17 = v41;
      v78 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_22B7124F0(v64, v62, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= (v17 + 1))
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v56 = v5;

    v57 = v56;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v58 = swift_slowAlloc();
  memcpy(v58, v71, v57);
  sub_22B712014(v58, v62, v3, v8, &v74);
  v60 = v59;

  MEMORY[0x231898D60](v58, -1, -1);
  v3 = v60;
LABEL_62:
  v54 = v74;
LABEL_63:
  sub_22B705E3C(v54);
  return v3;
}

uint64_t sub_22B711648(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v81 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v68 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v72 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v76 = (a2 + 56);

  v15 = 0;
  v74 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v75 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_22B7DC668();

    sub_22B7DB758();
    v23 = sub_22B7DC6B8();
    v31 = -1 << *(v5 + 32);
    v2 = v23 & ~v31;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v76[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:
    v21, v24, v25, v26, v27, v28, v29, v30, v68, v69;
    v13 = v74;
    v15 = v75;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v31;
  while (1)
  {
    v32 = (*(v5 + 48) + 16 * v2);
    v24 = v32[1];
    v33 = *v32 == v22 && v24 == v21;
    if (v33 || (sub_22B7DC518() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v76[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v74;
  v34 = v75;
  v78 = v72;
  v79 = v75;
  v80 = v11;
  v77[0] = v74;
  v77[1] = v7;
  v21, v24, v25, v26, v27, v28, v29, v30, v68, v69;
  v36 = *(v5 + 32);
  v69 = ((1 << v36) + 63) >> 6;
  v14 = 8 * v69;
  if ((v36 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v70 = &v68;
    MEMORY[0x28223BE20](v35);
    v2 = &v68 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v76, v37);
    v38 = *(v2 + 8 * v8) & ~v4;
    v39 = *(v5 + 16);
    v73 = v2;
    *(v2 + 8 * v8) = v38;
    v40 = v39 - 1;
LABEL_23:
    v71 = v40;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v42 = v34;
    while (1)
    {
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v43 >= v12)
      {
        v5 = sub_22B7126E4(v73, v69, v71, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v43);
      ++v42;
      if (v11)
      {
        v34 = v43;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v44 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v45 = *(v3 + 48);
            v75 = v34;
            v46 = (v45 + ((v34 << 10) | (16 * v44)));
            v47 = *v46;
            v4 = v46[1];
            sub_22B7DC668();

            sub_22B7DB758();
            v48 = sub_22B7DC6B8();
            v56 = -1 << *(v5 + 32);
            v8 = v48 & ~v56;
            v2 = v8 >> 6;
            v57 = 1 << v8;
            if (((1 << v8) & v76[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:
            v4, v49, v50, v51, v52, v53, v54, v55, v68, v69;
            v34 = v75;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v58 = (*(v5 + 48) + 16 * v8);
          v49 = v58[1];
          if (*v58 != v47 || v49 != v4)
          {
            v60 = ~v56;
            while ((sub_22B7DC518() & 1) == 0)
            {
              v8 = (v8 + 1) & v60;
              v2 = v8 >> 6;
              v57 = 1 << v8;
              if (((1 << v8) & v76[v8 >> 6]) == 0)
              {
                v3 = v74;
                goto LABEL_45;
              }

              v61 = (*(v5 + 48) + 16 * v8);
              v49 = v61[1];
              if (*v61 == v47 && v49 == v4)
              {
                break;
              }
            }
          }

          v4, v49, v50, v51, v52, v53, v54, v55, v68, v69;
          v3 = v74;
          v41 = v73[v2];
          v73[v2] = v41 & ~v57;
          v33 = (v41 & v57) == 0;
          v34 = v75;
          if (!v33)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v40 = v71 - 1;
        if (__OFSUB__(v71, 1))
        {
          __break(1u);
        }

        if (v71 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v63 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v34 = v75;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v76, v63);
  v65 = v68;
  sub_22B7122B8(v64, v69, v5, v2, v77);
  v67 = v66;

  if (!v65)
  {

    MEMORY[0x231898D60](v64, -1, -1);
    v3 = v77[0];
    v72 = v78;
    v5 = v67;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_22B705E3C(v13);
    return v5;
  }

  result = MEMORY[0x231898D60](v64, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22B711BB8(void *a1)
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
    v6 = sub_22B7DC208();

    if (v6)
    {
      v14 = sub_22B712908(v4, v5, v8, v9, v10, v11, v12, v13);
      v3, v15, v16, v17, v18, v19, v20, v21, v33, v34;
      return v14;
    }

    v3, v7, v8, v9, v10, v11, v12, v13, v33, v34;
    return 0;
  }

  v23 = v1;
  sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
  v24 = sub_22B7DBFC8();
  v25 = -1 << *(v3 + 32);
  v26 = v24 & ~v25;
  if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    return 0;
  }

  v27 = ~v25;
  while (1)
  {
    v28 = *(*(v3 + 48) + 8 * v26);
    v29 = sub_22B7DBFD8();

    if (v29)
    {
      break;
    }

    v26 = (v26 + 1) & v27;
    if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  v35 = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22B7CBA24();
    v31 = v35;
  }

  v32 = *(*v31->blocklistObserver + 8 * v26);
  sub_22B712D8C(v26);
  result = v32;
  *v23 = v35;
  return result;
}

uint64_t sub_22B711D50(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22B7DC668();
  sub_22B7DB758();
  v6 = sub_22B7DC6B8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22B7DC518() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22B7CBA38();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_22B712BC8(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_22B711E8C(void *a1)
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
    v6 = sub_22B7DC208();

    if (v6)
    {
      v14 = sub_22B712A70(v4, v5, v8, v9, v10, v11, v12, v13);
      v3, v15, v16, v17, v18, v19, v20, v21, v33, v34;
      return v14;
    }

    v3, v7, v8, v9, v10, v11, v12, v13, v33, v34;
    return 0;
  }

  v23 = v1;
  sub_22B7DBEF8();
  v24 = sub_22B7DBFC8();
  v25 = -1 << *(v3 + 32);
  v26 = v24 & ~v25;
  if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    return 0;
  }

  v27 = ~v25;
  while (1)
  {
    v28 = *(*(v3 + 48) + 8 * v26);
    v29 = sub_22B7DBFD8();

    if (v29)
    {
      break;
    }

    v26 = (v26 + 1) & v27;
    if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  v35 = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22B7CBCEC();
    v31 = v35;
  }

  v32 = *(*v31->blocklistObserver + 8 * v26);
  sub_22B712D8C(v26);
  result = v32;
  *v23 = v35;
  return result;
}

void sub_22B712014(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_22B7DC1F8())
          {
            goto LABEL_29;
          }

          sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_22B7124F0(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_22B7DBFC8();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_22B7DBFD8();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_22B7DBFD8();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_22B7122B8(unint64_t *result, void *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v36 = a2;
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v38 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v35 = v11 + 1;
          }

          else
          {
            v35 = (a5[2] + 64) >> 6;
          }

          a5[3] = v35 - 1;
          a5[4] = 0;

          sub_22B7126E4(result, v36, v38, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_22B7DC668();

        sub_22B7DB758();
        v19 = sub_22B7DC6B8();
        v27 = -1 << *(a3 + 32);
        v28 = v19 & ~v27;
        v29 = v28 >> 6;
        v30 = 1 << v28;
        if (((1 << v28) & *(v9 + 8 * (v28 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
        v17, v20, v21, v22, v23, v24, v25, v26, v36, v37;
      }

      v31 = (*(a3 + 48) + 16 * v28);
      v20 = v31[1];
      if (*v31 != v18 || v20 != v17)
      {
        v33 = ~v27;
        while ((sub_22B7DC518() & 1) == 0)
        {
          v28 = (v28 + 1) & v33;
          v29 = v28 >> 6;
          v30 = 1 << v28;
          if (((1 << v28) & *(v9 + 8 * (v28 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v34 = (*(a3 + 48) + 16 * v28);
          v20 = v34[1];
          if (*v34 == v18 && v20 == v17)
          {
            break;
          }
        }
      }

      v17, v20, v21, v22, v23, v24, v25, v26, v36, v37;
      v10 = result[v29];
      result[v29] = v10 & ~v30;
    }

    while ((v10 & v30) == 0);
    v8 = v38 - 1;
    if (__OFSUB__(v38, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v38 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_22B7124F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_22B6F0AD4(&qword_27D8CD820, qword_22B7F9960);
  result = sub_22B7DC298();
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
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_22B7DBFC8();
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
    *(*(v9 + 48) + 8 * v20) = v16;
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

uint64_t sub_22B7126E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_22B6F0AD4(&qword_27D8CD818, &qword_22B7FE530);
  result = sub_22B7DC298();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22B7DC668();

    sub_22B7DB758();
    result = sub_22B7DC6B8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

uint64_t sub_22B712908(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  *v8, a2, a3, a4, a5, a6, a7, a8, v21, v22;
  v10 = sub_22B7DC1C8();
  v11 = swift_unknownObjectRetain();
  v12 = sub_22B7C97E0(v11, v10);
  v23 = v12;

  v13 = sub_22B7DBFC8();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    sub_22B4D01A0(0, &unk_27D8CEF80, 0x277D6EEE8);
    while (1)
    {
      v17 = *(*(v12 + 48) + 8 * v15);
      v18 = sub_22B7DBFD8();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
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

  v19 = *(*(v12 + 48) + 8 * v15);
  sub_22B712D8C(v15);
  result = sub_22B7DBFD8();
  if (result)
  {
    *v9 = v23;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B712A70(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  *v8, a2, a3, a4, a5, a6, a7, a8, v21, v22;
  v10 = sub_22B7DC1C8();
  v11 = swift_unknownObjectRetain();
  v12 = sub_22B7C9A04(v11, v10);
  v23 = v12;

  v13 = sub_22B7DBFC8();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    sub_22B7DBEF8();
    while (1)
    {
      v17 = *(*(v12 + 48) + 8 * v15);
      v18 = sub_22B7DBFD8();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
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

  v19 = *(*(v12 + 48) + 8 * v15);
  sub_22B712D8C(v15);
  result = sub_22B7DBFD8();
  if (result)
  {
    *v9 = v23;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22B712BC8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22B7DC158();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_22B7DC668();

        sub_22B7DB758();
        v11 = sub_22B7DC6B8();
        v10, v12, v13, v14, v15, v16, v17, v18, v26, v27;
        v19 = v11 & v7;
        if (v2 >= v9)
        {
          if (v19 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v19)
        {
LABEL_11:
          v20 = *(v3 + 48);
          v21 = (v20 + 16 * v2);
          v22 = (v20 + 16 * v6);
          if (v2 != v6 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            v2 = v6;
          }
        }

LABEL_5:
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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_22B712D8C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22B7DC158();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_22B7DBFC8();

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

unint64_t *sub_22B712F2C(unint64_t *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22B712FC8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_22B712FC8(unint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v29 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 16 * v14 + 8);
    v16 = *(a4 + 24);

    v17 = sub_22B7DB678();
    LODWORD(v16) = [v16 hasScheduledMessageForHandleID_];
    v15, v18, v19, v20, v21, v22, v23, v24, v26, v27;

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_15:

        sub_22B7126E4(a1, v26, v29, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22B713140(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v37 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v33 = v7;
    v34 = v3;
    v32 = &v31;
    MEMORY[0x28223BE20](v9);
    v35 = &v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v8);
    v36 = 0;
    v7 = 0;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v8 = (v10 + 63) >> 6;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v3 = v13 | (v7 << 6);
      v16 = *(*(a1 + 48) + 16 * v3 + 8);
      v17 = *(v37 + 24);

      v18 = sub_22B7DB678();
      LODWORD(v17) = [v17 hasScheduledMessageForHandleID_];
      v16, v19, v20, v21, v22, v23, v24, v25, v31, v32;

      if (v17)
      {
        *&v35[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_16:
          v27 = sub_22B7126E4(v35, v33, v36, a1);

          return v27;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v8)
      {
        goto LABEL_16;
      }

      v15 = *(a1 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v12 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v37;

  v27 = sub_22B712F2C(v29, v7, a1, v30);

  MEMORY[0x231898D60](v29, -1, -1);

  return v27;
}

unint64_t sub_22B7133EC()
{
  result = qword_27D8CD7E0;
  if (!qword_27D8CD7E0)
  {
    sub_22B4D01A0(255, &unk_27D8CEF80, 0x277D6EEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD7E0);
  }

  return result;
}

uint64_t IMDLiteMessageCompressor.compress(_:)(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() sharedCompressor];
  v3 = sub_22B7DA838();
  v4 = [v2 compressData:v3 codecID:&v7];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_22B7DA848();

  return v5;
}

uint64_t IMDCKSyncController.bridgeClass()()
{
  v0 = type metadata accessor for IMDaemonCoreBridgeDelegate();
  sub_22B713580();
  return v0;
}

unint64_t sub_22B713580()
{
  result = qword_281420E80;
  if (!qword_281420E80)
  {
    type metadata accessor for IMDaemonCoreBridgeDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281420E80);
  }

  return result;
}

uint64_t sub_22B7135D8()
{
  v0 = type metadata accessor for IMDaemonCoreBridgeDelegate();
  sub_22B713580();
  return v0;
}

uint64_t sub_22B71360C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x277D84F90];
  if (!a3)
  {
    return v3;
  }

  v19 = MEMORY[0x277D84F90];
  result = sub_22B7AB6B4(0, a3 & ~(a3 >> 63), 0);
  if (a3 < 0)
  {
    goto LABEL_22;
  }

  if (!__OFSUB__(64, a2))
  {
    v8 = 0;
    v3 = v19;
    v18 = *(a1 + 16);
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v10 = v8 * a2;
      if ((v8 * a2) >> 64 != (v8 * a2) >> 63)
      {
        goto LABEL_18;
      }

      if (v10 >= 0)
      {
        v11 = v8 * a2;
      }

      else
      {
        v11 = v10 + 63;
      }

      if (v10 < -63)
      {
        goto LABEL_19;
      }

      if (v11 >> 6 >= v18)
      {
        goto LABEL_20;
      }

      if (__OFSUB__(64 - (v10 - (v11 & 0xFFFFFFFFFFFFFFC0)), a2))
      {
        goto LABEL_21;
      }

      sub_22B7152A4();
      result = sub_22B7DC108();
      v20 = v3;
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        v17 = result;
        v16 = v12;
        sub_22B7AB6B4((v13 > 1), v14 + 1, 1);
        v12 = v16;
        result = v17;
        v3 = v20;
      }

      *(v3 + 16) = v14 + 1;
      v15 = v3 + 16 * v14;
      *(v15 + 32) = result;
      *(v15 + 40) = v12;
      ++v8;
      if (v9 == a3)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

IMDaemonCore::UIntArray __swiftcall UIntArray.init()()
{
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = xmmword_22B7F9630;
  return result;
}

uint64_t UIntArray.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  *a3 = MEMORY[0x277D84F90];
  *(a3 + 8) = xmmword_22B7F9630;
  UIntArray.append<A>(contentsOf:)(a1, a2, a4);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t UIntArray.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v21 - v10;
  (*(v5 + 16))(v7, a1, a2);
  sub_22B7DB8A8();
  swift_getAssociatedConformanceWitness();
  sub_22B7DC0B8();
  if ((v22 & 1) == 0)
  {
    v12 = v21;
    do
    {
      sub_22B713BE0(v12);
      sub_22B713E60(v12, v13, v14, v15, v16, v17, v18, v19);
      sub_22B7DC0B8();
      v12 = v21;
    }

    while (v22 != 1);
  }

  return (*(v9 + 8))(v11, AssociatedTypeWitness);
}

IMDaemonCore::UIntArray __swiftcall UIntArray.init(repeating:count:)(Swift::UInt repeating, Swift::Int count)
{
  v3 = v2;
  v16 = MEMORY[0x277D84F90];
  v4 = xmmword_22B7F9630;
  if (count < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = count;
    if (count)
    {
      v6 = repeating;
      do
      {
        sub_22B713BE0(v6);
        repeating = sub_22B713E60(v6, v7, v8, v9, v10, v11, v12, v13);
        --v5;
      }

      while (v5);
      v15 = v16;
      v4 = xmmword_22B7F9630;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    *v3 = v15;
    *(v3 + 8) = v4;
  }

  result.content._count = v14;
  result.content.bitSize = count;
  result.content.data._rawValue = repeating;
  return result;
}

Swift::Void __swiftcall UIntArray.append(_:)(Swift::UInt a1)
{
  sub_22B713BE0(a1);

  sub_22B713E60(a1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_22B713BE0(uint64_t result)
{
  v3 = *(v2 + 8);
  v4 = 64 - v3;
  if (__OFSUB__(64, v3))
  {
    goto LABEL_52;
  }

  v1 = v2;
  if (v4 <= -65 || v4 > 64)
  {
    goto LABEL_4;
  }

  if (v4 < 0)
  {
    goto LABEL_58;
  }

  if (v4 == 64)
  {
    goto LABEL_4;
  }

  if ((result & ~(0xFFFFFFFFFFFFFFFFLL >> v4)) == 0)
  {
    return;
  }

  while (1)
  {
    result = sub_22B7150F0(result);
    if (result < 0xFFFFFFFF80000000)
    {
      goto LABEL_53;
    }

    if (result > 0x7FFFFFFF)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (__OFSUB__(result, 1))
    {
      goto LABEL_55;
    }

    v12 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v13 = v12 | (v12 >> 4) | ((v12 | (v12 >> 4)) >> 8);
    v14 = v13 | (v13 >> 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    if (v4 == -64)
    {
LABEL_4:
      if (!result)
      {
        return;
      }
    }

    else if ((result & ~(-1 << (v3 - 64))) == 0)
    {
      return;
    }
  }

  v17 = v16;
  v32 = MEMORY[0x277D84F90];
  v33 = v16;
  v18 = *(v1 + 16);
  if (v18 < 0)
  {
    goto LABEL_57;
  }

  if (v18)
  {
    v19 = 0;
    v20 = *v1;
    v21 = *v1 + 32;
    v22 = -1 - v3;
    v31 = (v3 - 64);
    while (1)
    {
      v24 = v19 * v3;
      if ((v19 * v3) >> 64 != (v19 * v3) >> 63)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (v24 >= 0)
      {
        v25 = v19 * v3;
      }

      else
      {
        v25 = v24 + 63;
      }

      if (v24 < -63)
      {
        goto LABEL_49;
      }

      if (v25 >> 6 >= *v20->messageStore)
      {
        goto LABEL_50;
      }

      v26 = 64 - (v24 - (v25 & 0xFFFFFFFFFFFFFFC0));
      v15 = __OFSUB__(v26, v3);
      v27 = v26 - v3;
      if (v15)
      {
        goto LABEL_51;
      }

      if (v27 > -65 && v27 <= 64)
      {
        v29 = *(v21 + 8 * (v25 >> 6));
        if (v27 < 0)
        {
          if (v27 != -64)
          {
            v28 = v29 >> -v27;
            if (v22 <= 0xFFFFFFFFFFFFFF7ELL)
            {
              goto LABEL_16;
            }

LABEL_34:
            if (v4 < 0)
            {
              if (v4 > 0xFFFFFFFFFFFFFFC0)
              {
                goto LABEL_43;
              }
            }

            else if (v4 < 0x40)
            {
              goto LABEL_36;
            }

            goto LABEL_16;
          }
        }

        else if (v27 != 64)
        {
          v28 = v29 << v27;
          if (v22 <= 0xFFFFFFFFFFFFFF7ELL)
          {
            goto LABEL_16;
          }

          goto LABEL_34;
        }
      }

      if (v22 >= 0xFFFFFFFFFFFFFF7FLL)
      {
        if (v4 < 0)
        {
          v23 = 0;
          v28 = 0;
          if (v4 <= 0xFFFFFFFFFFFFFFC0)
          {
            goto LABEL_17;
          }

LABEL_43:
          v23 = v28 << v31;
          goto LABEL_17;
        }

        v23 = 0;
        v28 = 0;
        if (v4 >= 0x40)
        {
          goto LABEL_17;
        }

LABEL_36:
        v23 = v28 >> v4;
        goto LABEL_17;
      }

LABEL_16:
      v23 = 0;
LABEL_17:
      ++v19;
      result = sub_22B713E60(v23, v5, v6, v7, v8, v9, v10, v11);
      if (v18 == v19)
      {
        v30 = v32;
        v17 = v33;
        goto LABEL_46;
      }
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_46:
  *v1, v5, v6, v7, v8, v9, v10, v11, v31, v32;
  *v1 = v30;
  *(v1 + 8) = v17;
  *(v1 + 16) = 0;
}

uint64_t sub_22B713E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v12 = v9[1];
  v13 = v9[2];
  v14 = v13 * v12;
  if ((v13 * v12) >> 64 != (v13 * v12) >> 63)
  {
    __break(1u);
    goto LABEL_28;
  }

  v15 = v14 + 63;
  if (v14 >= 0)
  {
    v15 = v13 * v12;
  }

  v10 = v15 >> 6;
  v16 = v12 - 65;
  v17 = -1 << v12;
  if (v12 >= 0x40)
  {
    v17 = 0;
  }

  v18 = 0xFFFFFFFFFFFFFFFFLL >> -v12;
  if (v12 <= 0xFFFFFFFFFFFFFFC0)
  {
    v18 = 0;
  }

  if (v12 < 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (v16 < 0xFFFFFFFFFFFFFF7FLL)
  {
    v19 = 0;
  }

  v11 = a1 & ~v19;
  v8 = *v9;
  if (v10 != *(*v9)->messageStore)
  {
    v23 = v14 - (v15 & 0xFFFFFFFFFFFFFFC0);
    if (v23 >= 0)
    {
      v11 <<= v23;
    }

    else
    {
      v11 >>= -v23;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (v14 >= -63)
      {
        goto LABEL_23;
      }
    }

    else
    {
      result = sub_22B7025C8(v8, v24, v25, v26, a5, a6, a7, a8);
      v8 = result;
      if (v14 >= -63)
      {
LABEL_23:
        if (v10 < *v8->messageStore)
        {
          *&v8->queue[8 * v10] |= v11;
          goto LABEL_25;
        }

        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v22 = *v8->messageStore;
    v21 = *v8->chatRegistry;
    v10 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      result = sub_22B71B54C((v21 > 1), v22 + 1, 1, v8, a5, a6, a7, a8);
      v8 = result;
    }

    *v8->messageStore = v10;
    *&v8->queue[8 * v22] = v11;
LABEL_25:
    *v9 = v8;
    if (!__OFADD__(v13, 1))
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    result = sub_22B71B54C(0, v10 + 1, 1, v8, a5, a6, a7, a8);
    v8 = result;
  }

  v9[2] = (&v13->super.isa + 1);
  return result;
}

uint64_t UIntArray.subscript.setter(unint64_t a1, uint64_t a2)
{
  sub_22B713BE0(a1);

  return sub_22B71411C(a1, a2, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_22B714034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 * a3;
  v4 = (a1 * a3) >> 64;
  if (v4 != (a1 * a3) >> 63)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = v3 + 63;
  if (v3 >= 0)
  {
    v5 = a1 * a3;
  }

  else
  {
    v5 = v3 + 63;
  }

  if (v3 < -63)
  {
    goto LABEL_22;
  }

  v4 = v5 >> 6;
  if (v5 >> 6 >= *(a2 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = 64 - (v3 - (v5 & 0xFFFFFFFFFFFFFFC0));
  v7 = __OFSUB__(v6, a3);
  v3 = v6 - a3;
  if (v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v3 - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
LABEL_9:
    v3 = 0;
    goto LABEL_14;
  }

  v4 = *(a2 + 8 * v4 + 32);
  if (v3 < 0)
  {
    goto LABEL_26;
  }

  v8 = v4 << v3;
  if (v3 >= 0x40)
  {
    v3 = 0;
  }

  else
  {
    v3 = v8;
  }

LABEL_14:
  while (1)
  {
    v4 = 64 - a3;
    if (!__OFSUB__(64, a3))
    {
      break;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    if (v3 <= 0xFFFFFFFFFFFFFFC0)
    {
      goto LABEL_9;
    }

    v3 = v4 >> -v3;
  }

  if ((-1 - a3) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    if (v4 <= 0xFFFFFFFFFFFFFFC0)
    {
      return 0;
    }

    return v3 << (a3 - 64);
  }

  else
  {
    v10 = v3 >> v4;
    if (v4 >= 0x40)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }
}

uint64_t sub_22B71411C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v14 = v9[1];
  v15 = a2 * v14;
  if ((a2 * v14) >> 64 != (a2 * v14) >> 63)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v16 = v15 + 63;
  if (v15 >= 0)
  {
    v16 = a2 * v14;
  }

  v17 = 64 - v14;
  if (__OFSUB__(64, v14))
  {
    goto LABEL_38;
  }

  v18 = v15 - (v16 & 0xFFFFFFFFFFFFFFC0);
  v19 = a1 << v17;
  if (v17 >= 0x40)
  {
    v19 = 0;
  }

  v20 = a1 >> (v14 - 64);
  if (v17 <= 0xFFFFFFFFFFFFFFC0)
  {
    v20 = 0;
  }

  if (v17 < 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  if (-1 - v14 < 0xFFFFFFFFFFFFFF7FLL)
  {
    v21 = 0;
  }

  v22 = 64 - v18 - v14;
  if (__OFSUB__(64 - v18, v14))
  {
    goto LABEL_39;
  }

  if (v22 >= -64 && v22 <= 64)
  {
    if (v22 < 0)
    {
      if (v22 == -64)
      {
        goto LABEL_17;
      }

      v10 = v21 << (v14 - (64 - v18));
    }

    else
    {
      if (v22 == 64)
      {
        goto LABEL_17;
      }

      v10 = v21 >> v22;
    }

    if (v14 - 65 >= 0xFFFFFFFFFFFFFF7FLL)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        if (v14 > 0xFFFFFFFFFFFFFFC0)
        {
          goto LABEL_48;
        }
      }

      else if (v14 < 0x40)
      {
        goto LABEL_29;
      }
    }

    v23 = 0;
    goto LABEL_30;
  }

LABEL_17:
  if (v14 - 65 < 0xFFFFFFFFFFFFFF7FLL)
  {
    v23 = 0;
    v10 = 0;
    goto LABEL_30;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v10 = 0;
    if (v14 >= 0x40)
    {
      goto LABEL_30;
    }

LABEL_29:
    v23 = -1 << v14;
    goto LABEL_30;
  }

  v10 = 0;
  v23 = 0;
  if (v14 > 0xFFFFFFFFFFFFFFC0)
  {
LABEL_48:
    v23 = 0xFFFFFFFFFFFFFFFFLL >> -v14;
  }

LABEL_30:
  v11 = v16 >> 6;
  if (v18 >= 0)
  {
    v12 = ~v23 << v18;
  }

  else
  {
    v12 = ~v23 >> ((v16 & 0xC0u) - v15);
  }

  if (v15 < -63)
  {
    goto LABEL_40;
  }

  v8 = *v9;
  if (v11 >= *(*v9 + 16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v13 = *(v8 + 8 * v11 + 32);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_42:
    result = sub_22B7025C8(v8, a2, a3, a4, a5, a6, a7, a8);
    v8 = result;
  }

  *(v8 + 8 * v11 + 32) = v13 & ~v12 | v12 & v10;
  *v9 = v8;
  return result;
}

uint64_t (*UIntArray.subscript.modify(unint64_t *a1, uint64_t a2))(unint64_t *a1)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = sub_22B714034(a2, *v2, v2[1]);
  return sub_22B714350;
}

uint64_t sub_22B714350(unint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  sub_22B713BE0(*a1);
  return sub_22B71411C(v2, v1, v3, v4, v5, v6, v7, v8);
}

Swift::Int __swiftcall UIntArray.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall UIntArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t UIntArray.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22B7DC668();
  sub_22B71469C(v5, v1, v2, v3);
  return sub_22B7DC6B8();
}

void *sub_22B714444@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_22B71445C(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t *sub_22B7144D0@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *result;
  if (*result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result[1];
  if (v3 >= v5)
  {
    v6 = v2[1];
    a2[2] = *v2;
    a2[3] = v6;
    a2[4] = v3;
    *a2 = v4;
    a2[1] = v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22B71450C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = 0;
  a1[4] = v3;
}

uint64_t *sub_22B714534(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_22B714550(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_22B71456C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_22B714588@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_22B7145A0(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_22B7145B8@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

void *sub_22B7145D8(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *v8;
  v10 = *(v8 + 16);
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = *(v8 + 8);
  v12 = sub_22B759C10(*(v8 + 16), 0);
  v9 = sub_22B759DC0(v21, v12 + 4, v10, v9, v11, v10);
  v21[0], v13, v14, v15, v16, v17, v18, v19, v21[0], v21[1];
  if (v9 != v10)
  {
    __break(1u);
LABEL_4:
    v9, a2, a3, a4, a5, a6, a7, a8, v21[0], v21[1];
    return MEMORY[0x277D84F90];
  }

  return v12;
}

void sub_22B71469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    goto LABEL_39;
  }

  if (!a4)
  {
    return;
  }

  v6 = 64 - a3;
  if (__OFSUB__(64, a3))
  {
    goto LABEL_40;
  }

  v7 = 0;
  v8 = a2 + 32;
  v9 = *(a2 + 16);
  v10 = -1 - a3;
  v11 = a3 - 64;
  while (1)
  {
    v13 = v7 * a3;
    if ((v7 * a3) >> 64 != (v7 * a3) >> 63)
    {
      break;
    }

    v14 = v13 + 63;
    if (v13 >= 0)
    {
      v14 = v7 * a3;
    }

    v15 = v14 >> 6;
    if (v13 < -63 || v15 >= v9)
    {
      goto LABEL_37;
    }

    v17 = (v15 << 6) - v13 + 64;
    v18 = __OFSUB__(v17, a3);
    v19 = v17 - a3;
    if (v18)
    {
      goto LABEL_38;
    }

    if (v19 > -65 && v19 <= 64)
    {
      v21 = *(v8 + 8 * v15);
      if (v19 < 0)
      {
        if (v19 != -64)
        {
          v20 = v21 >> -v19;
          if (v10 <= 0xFFFFFFFFFFFFFF7ELL)
          {
            goto LABEL_5;
          }

LABEL_25:
          if ((v6 & 0x8000000000000000) != 0)
          {
            if (v6 > 0xFFFFFFFFFFFFFFC0)
            {
              goto LABEL_34;
            }
          }

          else if (v6 < 0x40)
          {
            goto LABEL_27;
          }

          goto LABEL_5;
        }
      }

      else if (v19 != 64)
      {
        v20 = v21 << v19;
        if (v10 <= 0xFFFFFFFFFFFFFF7ELL)
        {
          goto LABEL_5;
        }

        goto LABEL_25;
      }
    }

    if (v10 >= 0xFFFFFFFFFFFFFF7FLL)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        v12 = 0;
        v20 = 0;
        if (v6 <= 0xFFFFFFFFFFFFFFC0)
        {
          goto LABEL_6;
        }

LABEL_34:
        v12 = v20 << v11;
        goto LABEL_6;
      }

      v12 = 0;
      v20 = 0;
      if (v6 >= 0x40)
      {
        goto LABEL_6;
      }

LABEL_27:
      v12 = v20 >> v6;
      goto LABEL_6;
    }

LABEL_5:
    v12 = 0;
LABEL_6:
    ++v7;
    MEMORY[0x231895FF0](v12);
    if (a4 == v7)
    {
      return;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_22B714834()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22B7DC668();
  sub_22B71469C(v5, v1, v2, v3);
  return sub_22B7DC6B8();
}

uint64_t sub_22B714890(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_22B7DC668();
  sub_22B71469C(v6, v2, v3, v4);
  return sub_22B7DC6B8();
}

uint64_t sub_22B7148EC()
{
  v28 = sub_22B71360C(*v0, v0[1], v0[2]);
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  sub_22B714FD8(&qword_28141F2C8, &unk_27D8CE9E0, &qword_22B7F99B0, MEMORY[0x277D83958]);
  v1 = sub_22B7DB5F8();
  v3 = v2;
  v28, v2, v4, v5, v6, v7, v8, v9, v25, v28;
  MEMORY[0x231895140](v1, v3);
  v3, v10, v11, v12, v13, v14, v15, v16, v26, 0x5B;

  MEMORY[0x231895140](93, 0xE100000000000000);
  0xE100000000000000, v17, v18, v19, v20, v21, v22, v23, v27, v29;
  return v30;
}

uint64_t sub_22B7149F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a6)
  {
    return 0;
  }

  if (a2 == a5)
  {
    v6 = *(result + 16);
    if (v6 == *(a4 + 16))
    {
      if (v6 && result != a4)
      {
        v7 = (result + 32);
        v8 = (a4 + 32);
        while (v6)
        {
          v10 = *v7++;
          v9 = v10;
          v11 = *v8++;
          result = v9 == v11;
          if (v9 != v11 || v6-- == 1)
          {
            return result;
          }
        }

        goto LABEL_85;
      }

      return 1;
    }

    return 0;
  }

  if (a3 < 0)
  {
    goto LABEL_86;
  }

  if (!a3)
  {
    return 1;
  }

  v13 = 64 - a2;
  if (__OFSUB__(64, a2))
  {
    goto LABEL_87;
  }

  v14 = 64 - a5;
  if (!__OFSUB__(64, a5))
  {
    v15 = 0;
    v16 = result + 32;
    v17 = a4 + 32;
    v18 = *(result + 16);
    v19 = *(a4 + 16);
    v20 = -1 - a2;
    result = 64;
    while (1)
    {
      v21 = v15 * a2;
      if ((v15 * a2) >> 64 != (v15 * a2) >> 63)
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        break;
      }

      if (v21 >= 0)
      {
        v22 = v15 * a2;
      }

      else
      {
        v22 = v21 + 63;
      }

      if (v21 < -63)
      {
        goto LABEL_79;
      }

      if (v22 >> 6 >= v18)
      {
        goto LABEL_80;
      }

      v23 = 64 - (v21 - (v22 & 0xFFFFFFFFFFFFFFC0));
      v24 = __OFSUB__(v23, a2);
      v25 = v23 - a2;
      if (v24)
      {
        goto LABEL_81;
      }

      if (v25 > -65 && v25 <= 64)
      {
        v28 = *(v16 + 8 * (v22 >> 6));
        if (v25 < 0)
        {
          if (v25 != -64)
          {
            v27 = v28 >> -v25;
            if (v20 <= 0xFFFFFFFFFFFFFF7ELL)
            {
              goto LABEL_37;
            }

            goto LABEL_42;
          }
        }

        else if (v25 != 64)
        {
          v27 = v28 << v25;
          if (v20 <= 0xFFFFFFFFFFFFFF7ELL)
          {
            goto LABEL_37;
          }

LABEL_42:
          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 >= 0x40)
            {
              goto LABEL_37;
            }

LABEL_44:
            v26 = v27 >> v13;
            goto LABEL_45;
          }

          if (v13 <= 0xFFFFFFFFFFFFFFC0)
          {
LABEL_37:
            v26 = 0;
            goto LABEL_45;
          }

LABEL_73:
          v26 = v27 << (a2 - 64);
          goto LABEL_45;
        }
      }

      if (v20 < 0xFFFFFFFFFFFFFF7FLL)
      {
        goto LABEL_37;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        v26 = 0;
        v27 = 0;
        if (v13 > 0xFFFFFFFFFFFFFFC0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
        if (v13 < 0x40)
        {
          goto LABEL_44;
        }
      }

LABEL_45:
      v29 = v15 * a5;
      if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
      {
        goto LABEL_82;
      }

      v30 = v29 + 63;
      if (v29 >= 0)
      {
        v30 = v15 * a5;
      }

      if (v29 < -63)
      {
        goto LABEL_83;
      }

      v31 = v30 >> 6;
      if (v31 >= v19)
      {
        goto LABEL_83;
      }

      v32 = (v31 << 6) - v29 + 64;
      v24 = __OFSUB__(v32, a5);
      v33 = v32 - a5;
      if (v24)
      {
        goto LABEL_84;
      }

      if (v33 < -64 || v33 > 64)
      {
LABEL_53:
        if (v14 < -64 || v14 > 64)
        {
LABEL_19:
          if (v26)
          {
            return 0;
          }

          goto LABEL_20;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 == 64)
          {
            goto LABEL_19;
          }

          v34 = 0;
LABEL_64:
          v36 = v34 >> v14;
          goto LABEL_65;
        }

        if (v14 == -64)
        {
          goto LABEL_19;
        }

        v36 = 0;
        goto LABEL_65;
      }

      v35 = *(v17 + 8 * v31);
      if (v33 < 0)
      {
        if (v33 == -64)
        {
          goto LABEL_53;
        }

        v34 = v35 >> -v33;
        if (v14 <= -65)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v33 == 64)
        {
          goto LABEL_53;
        }

        v34 = v35 << v33;
        if (v14 <= -65)
        {
          goto LABEL_19;
        }
      }

      if (v14 > 64)
      {
        goto LABEL_19;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        if (v14 == 64)
        {
          goto LABEL_19;
        }

        goto LABEL_64;
      }

      if (v14 == -64)
      {
        goto LABEL_19;
      }

      v36 = v34 << (a5 - 64);
LABEL_65:
      if (v26 != v36)
      {
        return 0;
      }

LABEL_20:
      if (a3 == ++v15)
      {
        return 1;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22B714CB8()
{
  result = qword_27D8CD828;
  if (!qword_27D8CD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD828);
  }

  return result;
}

unint64_t sub_22B714D50()
{
  result = qword_27D8CD840;
  if (!qword_27D8CD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD840);
  }

  return result;
}

uint64_t sub_22B714DE8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22B6FB8C4(a2, a3);
    sub_22B714D50();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B714E54()
{
  result = qword_27D8CD858;
  if (!qword_27D8CD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD858);
  }

  return result;
}

unint64_t sub_22B714EAC()
{
  result = qword_27D8CD860;
  if (!qword_27D8CD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD860);
  }

  return result;
}

uint64_t sub_22B714FD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22B6FB8C4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B715044()
{
  result = qword_27D8CD888;
  if (!qword_27D8CD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD888);
  }

  return result;
}

uint64_t sub_22B715098(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  v3 = result < 0;
  if (!((result < 0) ^ v4 | (result == 0)))
  {
    v2 -= a2;
    v4 = __OFSUB__(v2, 0x8000000000000001);
    v3 = (v2 + 0x7FFFFFFFFFFFFFFFLL) < 0;
    if (v2 >= 0x8000000000000001)
    {
      return result;
    }

    __break(1u);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v6 = ~a2 + v2;
  v7 = v2 ^ 0x8000000000000000;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= v6)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_22B7150F0(uint64_t result)
{
  v1 = 1;
  v2 = 63;
  while (1)
  {
    if (v2 <= -65)
    {
      goto LABEL_2;
    }

    if (v2 < 0)
    {
      break;
    }

    if ((result & ~(0xFFFFFFFFFFFFFFFFLL >> v2)) == 0)
    {
      goto LABEL_10;
    }

LABEL_3:
    v1 *= 2;
    v2 = 64 - v1;
    if (__OFSUB__(64, v1))
    {
      __break(1u);
      return result;
    }
  }

  if (v2 == -64)
  {
LABEL_2:
    if (!result)
    {
      goto LABEL_10;
    }

    goto LABEL_3;
  }

  if ((result & ~(-1 << -v2)) != 0)
  {
    goto LABEL_3;
  }

LABEL_10:
  if (v1 <= 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22B715158(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) >= a2)
    {
      __break(1u);
      return result;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  result += a2;
  return result;
}

unint64_t sub_22B71518C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v7 = 0;
    while (result - a3 + v7)
    {
      v8 = result + v7 - 1;
      if (__OFSUB__(result + v7, 1))
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if (--v7 <= a2)
      {
        return v8;
      }
    }

    return 0;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= a2 - 1)
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 > 4)
    {
      v9 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v9 = 4;
      }

      v5 = v4 - v9;
      v10 = 0uLL;
      v11 = result;
      v12 = vdupq_n_s64(1uLL);
      v13 = v5;
      do
      {
        v10 = vaddq_s64(v10, v12);
        v11 = vaddq_s64(v11, v12);
        v13 -= 4;
      }

      while (v13);
      v6 = vaddvq_s64(vpaddq_s64(v11, v10));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v14 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v15 = v5 + result - a3;
    v16 = a2 - v5;
    result = v6;
    while (v15)
    {
      if (!v14)
      {
        __break(1u);
        goto LABEL_27;
      }

      ++result;
      ++v14;
      ++v15;
      if (!--v16)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_22B7152A4()
{
  result = qword_27D8CD890;
  if (!qword_27D8CD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CD890);
  }

  return result;
}

uint64_t XPCClientConnectionRouteProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_22B715388(void **a1@<X0>, char *a4@<X8>)
{
  v5 = *a1;
  v6 = sub_22B7DB678();
  v7 = [v5 valueForEntitlement_];

  if (v7)
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_22B4D0138(v13);
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  sub_22B705FCC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [v10 BOOLValue];

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = 1;
LABEL_10:
  *a4 = v9;
}

id IMDCollaborationClearNoticeRateLimiter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMDCollaborationClearNoticeRateLimiter.init()()
{
  v14 = sub_22B7DBD48();
  v1 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22B7DBD38();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22B7DB398();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = &v0[OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_rateLimiterOverride];
  *v6 = 0xD00000000000002BLL;
  *(v6 + 1) = 0x800000022B80E950;
  v7 = OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_noticeEventHistory;
  sub_22B4D01A0(0, &qword_28141F1D0, 0x277CBEB38);
  v8 = MEMORY[0x277D84F90];
  *&v0[v7] = sub_22B7DBC68();
  v13[1] = sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  sub_22B7DACD8();
  v16 = v8;
  sub_22B4D11AC(&unk_28141F220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B71019C();
  sub_22B7DC138();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v14);
  *&v0[OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_persistenceQueue] = sub_22B7DBD88();
  v9 = sub_22B716F18();
  v10 = *&v0[v7];
  *&v0[v7] = v9;

  v11 = type metadata accessor for IMDCollaborationClearNoticeRateLimiter();
  v15.receiver = v0;
  v15.super_class = v11;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_22B715844(void *a1)
{
  v3 = sub_22B7DAA48();
  v115 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B7DA6A8();
  v116 = *(v6 - 8);
  v117 = v6;
  MEMORY[0x28223BE20](v6);
  v118 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v112 - v9;
  v11 = sub_22B7DA968();
  v121 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v119 = &v112 - v15;
  v114 = v1;
  v112 = OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_noticeEventHistory;
  v16 = *(v1 + OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_noticeEventHistory);
  v120 = a1;
  v17 = [a1 collaborationId];
  v18 = sub_22B7DB6A8();
  v20 = v19;

  *&v122 = v18;
  *(&v122 + 1) = v20;
  v21 = [v16 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v21)
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v122 = 0u;
    v123 = 0u;
  }

  v124[0] = v122;
  v124[1] = v123;
  v22 = v121;
  if (*(&v123 + 1))
  {
    v23 = swift_dynamicCast();
    (*(v22 + 56))(v10, v23 ^ 1u, 1, v11);
    if ((*(v22 + 48))(v10, 1, v11) != 1)
    {
      v24 = *(v22 + 32);
      v113 = v14;
      v24(v119, v10, v11);
      sub_22B7DA958();
      sub_22B7DAA28();
      sub_22B6F0AD4(&qword_27D8CD8C8, &qword_22B7F9DC8);
      v25 = sub_22B7DAA38();
      v26 = *(v25 - 8);
      v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_22B7F93B0;
      (*(v26 + 104))(v28 + v27, *MEMORY[0x277CC99A0], v25);
      v29 = sub_22B717418(v28);
      swift_setDeallocating();
      (*(v26 + 8))(v28 + v27, v25);
      swift_deallocClassInstance();
      v30 = v118;
      v31 = v113;
      sub_22B7DAA18();
      v29, v32, v33, v34, v35, v36, v37, v38, v112, v113;
      (*(v115 + 8))(v5, v3);
      v39 = sub_22B7DA698();
      if (v40)
      {
        if (qword_28141F390 != -1)
        {
          swift_once();
        }

        v41 = sub_22B7DB2B8();
        sub_22B4CFA74(v41, qword_281422668);
        v42 = v120;
        v43 = sub_22B7DB298();
        v44 = sub_22B7DBC98();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = v31;
          v47 = swift_slowAlloc();
          *&v124[0] = v47;
          *v45 = 136315138;
          v48 = [v42 collaborationId];
          v49 = sub_22B7DB6A8();
          v51 = v50;

          v52 = sub_22B4CFAAC(v49, v51, v124);
          v51, v53, v54, v55, v56, v57, v58, v59, v112, v113;
          *(v45 + 4) = v52;
          _os_log_impl(&dword_22B4CC000, v43, v44, "RateLimiter: clear notice for collaboration id %s couldn't calculate elapsed time.", v45, 0xCu);
          sub_22B4CFB78(v47);
          MEMORY[0x231898D60](v47, -1, -1);
          MEMORY[0x231898D60](v45, -1, -1);

          (*(v116 + 8))(v30, v117);
          v60 = *(v121 + 8);
          v60(v46, v11);
        }

        else
        {

          (*(v116 + 8))(v30, v117);
          v60 = *(v121 + 8);
          v60(v31, v11);
        }

        v60(v119, v11);
        return 0;
      }

      else
      {
        v80 = v39;
        v81 = *MEMORY[0x277D19D90];
        v82 = sub_22B7DB678();
        v83 = IMGetCachedDomainIntForKeyWithDefaultValue();

        LODWORD(v115) = v80 >= v83;
        if (qword_28141F390 != -1)
        {
          swift_once();
        }

        v84 = sub_22B7DB2B8();
        sub_22B4CFA74(v84, qword_281422668);
        v85 = v120;
        v86 = sub_22B7DB298();
        v87 = sub_22B7DBC78();

        v88 = os_log_type_enabled(v86, v87);
        v120 = v85;
        if (v88)
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v124[0] = v90;
          *v89 = 67109890;
          *(v89 + 4) = v80 >= v83;
          *(v89 + 8) = 2080;
          v91 = [v85 collaborationId];
          v92 = sub_22B7DB6A8();
          v94 = v93;

          v95 = sub_22B4CFAAC(v92, v94, v124);
          v94, v96, v97, v98, v99, v100, v101, v102, v112, v113;
          *(v89 + 10) = v95;
          *(v89 + 18) = 2048;
          *(v89 + 20) = v80;
          *(v89 + 28) = 2048;
          *(v89 + 30) = v83;
          _os_log_impl(&dword_22B4CC000, v86, v87, "RateLimiter: result=%{BOOL}d for notice collaboration id %s, elapsedMinutes: %ld < threshold: %ld", v89, 0x26u);
          sub_22B4CFB78(v90);
          v103 = v90;
          v30 = v118;
          MEMORY[0x231898D60](v103, -1, -1);
          MEMORY[0x231898D60](v89, -1, -1);
        }

        v104 = v113;
        if (v80 < v83)
        {
          v105 = *&v112[v114];
          v106 = [v120 collaborationId];
          v107 = sub_22B7DB6A8();
          v109 = v108;

          v110 = sub_22B7DA8B8();
          *&v124[0] = v107;
          *(&v124[0] + 1) = v109;
          [v105 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
        }

        (*(v116 + 8))(v30, v117);
        v111 = *(v121 + 8);
        v111(v104, v11);
        v111(v119, v11);
        return v115;
      }
    }
  }

  else
  {
    sub_22B4D0D64(v124, &unk_27D8CCDC0, &qword_22B7F9580);
    (*(v22 + 56))(v10, 1, 1, v11);
  }

  sub_22B4D0D64(v10, &unk_27D8CF790, &qword_22B7F9578);
  if (qword_28141F390 != -1)
  {
    swift_once();
  }

  v61 = sub_22B7DB2B8();
  sub_22B4CFA74(v61, qword_281422668);
  v62 = v120;
  v63 = sub_22B7DB298();
  v64 = sub_22B7DBC78();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v124[0] = v66;
    *v65 = 136315138;
    v67 = [v62 collaborationId];
    v68 = sub_22B7DB6A8();
    v70 = v69;

    v71 = sub_22B4CFAAC(v68, v70, v124);
    v70, v72, v73, v74, v75, v76, v77, v78, v112, v113;
    *(v65 + 4) = v71;
    _os_log_impl(&dword_22B4CC000, v63, v64, "RateLimiter: clear notice for collaboration id %s hasn't been sent before, approved to send.", v65, 0xCu);
    sub_22B4CFB78(v66);
    MEMORY[0x231898D60](v66, -1, -1);
    MEMORY[0x231898D60](v65, -1, -1);
  }

  return 1;
}

uint64_t sub_22B716384(void *a1)
{
  v2 = sub_22B7DA968();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v61 - v7;
  sub_22B7DA958();
  if (qword_28141F390 != -1)
  {
    swift_once();
  }

  v9 = sub_22B7DB2B8();
  sub_22B4CFA74(v9, qword_281422668);
  (*(v3 + 16))(v6, v8, v2);
  v10 = a1;
  v11 = sub_22B7DB298();
  v12 = sub_22B7DBC78();

  v13 = os_log_type_enabled(v11, v12);
  v14 = &selRef_broadcasterForListenersSupportingService_;
  v62 = v3;
  if (v13)
  {
    v15 = swift_slowAlloc();
    v64 = v2;
    v16 = v15;
    v61 = swift_slowAlloc();
    aBlock = v61;
    *v16 = 136315394;
    v17 = [v10 collaborationId];
    v18 = sub_22B7DB6A8();
    v19 = v8;
    v20 = v3;
    v22 = v21;

    v23 = sub_22B4CFAAC(v18, v22, &aBlock);
    v22, v24, v25, v26, v27, v28, v29, v30, v61, v62;
    *(v16 + 4) = v23;
    *(v16 + 12) = 2080;
    sub_22B4D11AC(&qword_27D8CD8D0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v31 = sub_22B7DC4E8();
    v33 = v32;
    v34 = v20;
    v8 = v19;
    v35 = *(v34 + 8);
    v35(v6, v64);
    v36 = sub_22B4CFAAC(v31, v33, &aBlock);
    v37 = v33;
    v14 = &selRef_broadcasterForListenersSupportingService_;
    v37, v38, v39, v40, v41, v42, v43, v44, v61, v62;
    *(v16 + 14) = v36;
    _os_log_impl(&dword_22B4CC000, v11, v12, "IMDCollaborationNoticeRateLimiter: collaboration id %s => %s", v16, 0x16u);
    v45 = v61;
    swift_arrayDestroy();
    MEMORY[0x231898D60](v45, -1, -1);
    v46 = v16;
    v2 = v64;
    MEMORY[0x231898D60](v46, -1, -1);

    v47 = v35;
  }

  else
  {

    v47 = *(v3 + 8);
    v47(v6, v2);
  }

  v48 = v63;
  v49 = *&v63[OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_noticeEventHistory];
  v50 = [v10 v14[224]];
  v51 = sub_22B7DB6A8();
  v53 = v52;

  v54 = sub_22B7DA8B8();
  aBlock = v51;
  v66 = v53;
  [v49 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v55 = *&v48[OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_persistenceQueue];
  v56 = swift_allocObject();
  *(v56 + 16) = v48;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_22B717738;
  *(v57 + 24) = v56;
  v69 = sub_22B717740;
  v70 = v57;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = sub_22B716E5C;
  v68 = &unk_283F1C928;
  v58 = _Block_copy(&aBlock);
  v59 = v48;

  dispatch_sync(v55, v58);
  _Block_release(v58);
  LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

  if ((v58 & 1) == 0)
  {
    return (v47)(v8, v2);
  }

  __break(1u);
  return result;
}

void sub_22B7168E8()
{
  sub_22B71690C();
  qword_281422730 = v0;
  *algn_281422738 = v1;
}

void sub_22B71690C()
{
  v0 = [*MEMORY[0x277D19CD8] stringByResolvingAndStandardizingPath];
  if (v0)
  {
    sub_22B7DB6A8();
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  IMSharedHelperEnsureDirectoryExistsAtPath();

  if (v2)
  {
    v3 = sub_22B7DB678();
    v2, v4, v5, v6, v7, v8, v9, v10, v13, v14;
    v11 = sub_22B7DB678();
    v12 = [v3 stringByAppendingPathComponent_];

    sub_22B7DB6A8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B716A04(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22B7DA728();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29[-v7];
  v9 = sub_22B7DA828();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28141F5E8 != -1)
  {
    swift_once();
  }

  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, *MEMORY[0x277CC91D8], v2);

  sub_22B7DA818();
  v13 = *(a1 + OBJC_IVAR___IMDCollaborationClearNoticeRateLimiter_noticeEventHistory);
  v14 = sub_22B7DA788();
  v30[0] = 0;
  v15 = [v13 writeToURL:v14 error:v30];

  if (v15)
  {
    v16 = *(v10 + 8);
    v17 = v30[0];
    return v16(v12, v9);
  }

  else
  {
    v19 = v30[0];
    v20 = sub_22B7DA6F8();

    swift_willThrow();
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v21 = sub_22B7DB2B8();
    sub_22B4CFA74(v21, qword_281422668);
    v22 = v20;
    v23 = sub_22B7DB298();
    v24 = sub_22B7DBC98();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v20;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_22B4CC000, v23, v24, "Error persisting clearNoticeEventHistory, error: %@", v25, 0xCu);
      sub_22B4D0D64(v26, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v26, -1, -1);
      MEMORY[0x231898D60](v25, -1, -1);
    }

    else
    {
    }

    return (*(v10 + 8))(v12, v9);
  }
}

id IMDCollaborationClearNoticeRateLimiter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDCollaborationClearNoticeRateLimiter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22B716F18()
{
  v0 = sub_22B7DA728();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_22B7DA828();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  if (qword_28141F5E8 != -1)
  {
    swift_once();
  }

  v11 = sub_22B7DB678();
  v12 = [v10 fileExistsAtPath_];

  if (v12)
  {
    v14 = v32;
    v13 = v33;
    (*(v32 + 56))(v6, 1, 1, v33);
    (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);

    v15 = v31;
    sub_22B7DA818();
    v16 = objc_allocWithZone(MEMORY[0x277CBEB38]);
    v17 = sub_22B7DA788();
    v18 = [v16 initWithContentsOfURL_];

    if (!v18)
    {
      if (qword_28141F390 != -1)
      {
        swift_once();
      }

      v19 = sub_22B7DB2B8();
      sub_22B4CFA74(v19, qword_281422668);
      v20 = sub_22B7DB298();
      v21 = sub_22B7DBC78();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22B4CC000, v20, v21, "IMDCollaborationClearNoticeRateLimiter: Loaded empty dictionary, creating new dictionary", v22, 2u);
        MEMORY[0x231898D60](v22, -1, -1);
      }

      v18 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
    }

    (*(v14 + 8))(v15, v13);
    return v18;
  }

  else
  {
    if (qword_28141F390 != -1)
    {
      swift_once();
    }

    v24 = sub_22B7DB2B8();
    sub_22B4CFA74(v24, qword_281422668);
    v25 = sub_22B7DB298();
    v26 = sub_22B7DBC78();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22B4CC000, v25, v26, "Creating rate limiter persistence", v27, 2u);
      MEMORY[0x231898D60](v27, -1, -1);
    }

    v28 = [v9 defaultManager];
    v29 = sub_22B7DB678();
    [v28 createFileAtPath:v29 contents:0 attributes:0];

    sub_22B4D01A0(0, &qword_28141F1D0, 0x277CBEB38);
    return sub_22B7DBC68();
  }
}

uint64_t sub_22B717418(uint64_t a1)
{
  v2 = sub_22B7DAA38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_22B6F0AD4(&qword_27D8CD8E0, qword_22B7F9E28);
    v9 = sub_22B7DC298();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_22B4D11AC(&qword_27D8CD8E8, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_22B7DB5A8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_22B4D11AC(&unk_27D8CD8F0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_22B7DB658();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_22B7177E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&qword_27D8CD8D8, &unk_22B7F9E10);
    v3 = sub_22B7DC298();
    v4 = 0;
    v5 = v3 + 56;
    v64 = v1;
    v67 = (a1 + 32);
    v6 = v1;
    do
    {
      v21 = v67[v4];
      sub_22B7DB6A8();
      v23 = v22;
      sub_22B7DC668();
      v70 = v21;
      sub_22B7DB758();
      v24 = sub_22B7DC6B8();
      v23, v25, v26, v27, v28, v29, v30, v31, v64, v67;
      v32 = -1 << *(v3 + 32);
      v33 = v24 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v5 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) == 0)
      {
        goto LABEL_15;
      }

      v37 = ~v32;
      do
      {
        v38 = sub_22B7DB6A8();
        v40 = v39;
        v42 = sub_22B7DB6A8();
        v43 = v38;
        v44 = v41;
        if (v43 == v42 && v40 == v41)
        {

          v40, v7, v8, v9, v10, v11, v12, v13, v64, v67;
          v44, v14, v15, v16, v17, v18, v19, v20, v65, v68;
LABEL_4:
          v6 = v64;
          goto LABEL_5;
        }

        v46 = sub_22B7DC518();
        v40, v47, v48, v49, v50, v51, v52, v53, v64, v67;
        v44, v54, v55, v56, v57, v58, v59, v60, v66, v69;
        if (v46)
        {

          goto LABEL_4;
        }

        v33 = (v33 + 1) & v37;
        v34 = v33 >> 6;
        v35 = *(v5 + 8 * (v33 >> 6));
        v36 = 1 << v33;
      }

      while (((1 << v33) & v35) != 0);
      v6 = v64;
LABEL_15:
      *(v5 + 8 * v34) = v36 | v35;
      *(*(v3 + 48) + 8 * v33) = v70;
      v61 = *(v3 + 16);
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v63;
LABEL_5:
      v4 = v4 + 1;
    }

    while (v4 != v6);
  }
}

uint64_t sub_22B7179DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22B6F0AD4(&qword_27D8CD818, &qword_22B7FE530);
    v3 = sub_22B7DC298();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_22B7DC668();

      sub_22B7DB758();
      result = sub_22B7DC6B8();
      v17 = ~(-1 << *(v3 + 32));
      for (i = result & v17; ; i = (i + 1) & v17)
      {
        v19 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v19) == 0)
        {
          break;
        }

        v20 = (*(v3 + 48) + 16 * i);
        v21 = v20[1];
        if (*v20 != v9 || v21 != v8)
        {
          result = sub_22B7DC518();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        v8, v21, v11, v12, v13, v14, v15, v16, v27, v28;
        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v19;
      v23 = (*(v3 + 48) + 16 * i);
      *v23 = v9;
      v23[1] = v8;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        *(v3 + 16) = v26;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

IMDScheduledMessageCoordinator *sub_22B717B44(unint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  v110 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_68:
    v106 = v8 & 0xFFFFFFFFFFFFFF8;
    v9 = sub_22B7DC1C8();
  }

  else
  {
    v106 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v96 = MEMORY[0x277D84F90];
    v15 = MEMORY[0x277D84F90];
    goto LABEL_58;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v105 = v8 & 0xC000000000000001;
  v15 = MEMORY[0x277D84F90];
  v96 = MEMORY[0x277D84F90];
  v100 = v9;
  v16 = 1;
  v102 = v8;
  while (2)
  {
    v103 = v11;
    v11 = v14;
    v104 = v16;
    while (1)
    {
      if (v105)
      {
        v17 = MEMORY[0x231895C80](v11, v8);
      }

      else
      {
        if (v11 >= *(v106 + 16))
        {
          goto LABEL_67;
        }

        v17 = *(v8 + 8 * v11 + 32);
      }

      v25 = v17;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (v16)
      {
        v10, v18, v19, v20, v21, v22, v23, v24, v93, v96;
        v12 = [v25 flag];
        v13 = [v25 reason];
        v26 = [v25 userInfo];
        if (v26)
        {
          v27 = v26;
          v10 = sub_22B7DB588();

          v104 = 0;
        }

        else
        {
          v104 = 0;
          v10 = 0;
        }

        v103 = v11;
        goto LABEL_29;
      }

      if ([v17 flag] != v12 || objc_msgSend(v25, sel_reason) != v13)
      {
        goto LABEL_36;
      }

      v35 = v10;
      v36 = [v25 userInfo];
      if (!v36)
      {
        if (!v10)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v37 = v36;
      v38 = sub_22B7DB588();

      if (!v35)
      {
        break;
      }

      v10 = v35;
      if (!v38)
      {
        v8 = v102;
LABEL_28:
        if (*v10->messageStore)
        {
          goto LABEL_36;
        }

        goto LABEL_29;
      }

      v39 = v13;
      v40 = v12;
      v41 = sub_22B7DB568();
      v42 = sub_22B7DB568();
      v101 = [v41 isEqualToDictionary_];

      v38, v43, v44, v45, v46, v47, v48, v49, v93, v96;
      if (!v101)
      {
        v12 = v40;
        v13 = v39;
        v9 = v100;
        v8 = v102;
        v10 = v35;
LABEL_36:
        if ((v104 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_45;
      }

      v12 = v40;
      v13 = v39;
      v9 = v100;
      v8 = v102;
      v10 = v35;
LABEL_29:
      v51 = v25;
      MEMORY[0x231895260]();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B7DB938();
      }

      sub_22B7DB968();

      v16 = 0;
      v15 = v110;
      ++v11;
      if (v14 == v9)
      {
        v11 = v103;
        if ((v104 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_56;
      }
    }

    if (!v38)
    {
      v10 = 0;
      v8 = v102;
      goto LABEL_29;
    }

    v50 = *v38->messageStore;
    v38, v28, v29, v30, v31, v32, v33, v34, v93, v96;
    v10 = 0;
    if (!v50)
    {
      v8 = v102;
      goto LABEL_29;
    }

    v8 = v102;
    if (v104)
    {
      goto LABEL_45;
    }

LABEL_37:
    if (!(v15 >> 62))
    {
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

LABEL_45:
      v15, v28, v29, v30, v31, v32, v33, v34, v93, v96;
      v10, v62, v63, v64, v65, v66, v67, v68, v94, v97;
      goto LABEL_46;
    }

    if (!sub_22B7DC1C8())
    {
      goto LABEL_45;
    }

LABEL_39:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v96 = sub_22B71BEAC(0, *v96->messageStore + 1, 1, v96, v55, v56, v57, v58);
    }

    v60 = *v96->messageStore;
    v59 = *v96->chatRegistry;
    if (v60 >= v59 >> 1)
    {
      v96 = sub_22B71BEAC((v59 > 1), v60 + 1, 1, v96, v55, v56, v57, v58);
    }

    *v96->messageStore = v60 + 1;
    v61 = v96 + 64 * v60;
    *(v61 + 4) = v103;
    v61[40] = 0;
    *(v61 + 11) = *&v109[3];
    *(v61 + 41) = *v109;
    *(v61 + 6) = v12;
    v61[56] = 0;
    *(v61 + 15) = *&v108[3];
    *(v61 + 57) = *v108;
    *(v61 + 8) = v13;
    v61[72] = 0;
    *(v61 + 19) = *&v107[3];
    *(v61 + 73) = *v107;
    *(v61 + 10) = v15;
    *(v61 + 11) = v10;
    v15, v52, v53, v54, v55, v56, v57, v58, v93, v96;
LABEL_46:
    v110 = MEMORY[0x277D84F90];
    v12 = [v25 flag];
    v13 = [v25 reason];
    v69 = [v25 userInfo];
    if (v69)
    {
      v70 = v69;
      v10 = sub_22B7DB588();
    }

    else
    {
      v10 = 0;
    }

    v71 = v25;
    MEMORY[0x231895260]();
    if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B7DB938();
    }

    sub_22B7DB968();

    v16 = 0;
    v15 = v110;
    if (v14 != v9)
    {
      continue;
    }

    break;
  }

LABEL_58:
  if (v9)
  {
LABEL_59:
    v80 = v12;
    v79 = v96;
    if (v15 >> 62)
    {
      if (!sub_22B7DC1C8())
      {
        goto LABEL_70;
      }

LABEL_61:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_22B71BEAC(0, *v96->messageStore + 1, 1, v96, v84, v85, v86, v87);
      }

      v89 = *v79->messageStore;
      v88 = *v79->chatRegistry;
      if (v89 >= v88 >> 1)
      {
        v79 = sub_22B71BEAC((v88 > 1), v89 + 1, 1, v79, v84, v85, v86, v87);
      }

      *v79->messageStore = v89 + 1;
      v90 = v79 + 64 * v89;
      *(v90 + 4) = v11;
      v90[40] = 0;
      *(v90 + 11) = *&v109[3];
      *(v90 + 41) = *v109;
      *(v90 + 6) = v80;
      v90[56] = 0;
      *(v90 + 15) = *&v108[3];
      *(v90 + 57) = *v108;
      *(v90 + 8) = v13;
      v90[72] = 0;
      *(v90 + 19) = *&v107[3];
      *(v90 + 73) = *v107;
      *(v90 + 10) = v15;
      *(v90 + 11) = v10;
      v91 = v15;
    }

    else
    {
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

LABEL_70:
      v15, a2, a3, a4, a5, a6, a7, a8, v93, v96;
      v91 = v10;
    }

    v91, v81, v82, v83, v84, v85, v86, v87, v93, v96;
  }

  else
  {
LABEL_56:
    v15, a2, a3, a4, a5, a6, a7, a8, v93, v96;
    v10, v72, v73, v74, v75, v76, v77, v78, v95, v98;
    return v99;
  }

  return v79;
}