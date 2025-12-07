id sub_22B773AC0()
{
  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_281422638);
  v2 = v0;
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Deinit %@", v5, 0xCu);
    sub_22B4D0D64(v6, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v8 = *&v2[OBJC_IVAR___IMDScheduledMessageCoordinator_timer];
  *&v2[OBJC_IVAR___IMDScheduledMessageCoordinator_timer] = 0;

  v10.receiver = v2;
  v10.super_class = IMDScheduledMessageCoordinator;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_22B773CF8(double a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_281422638);
  v6 = sub_22B7DB298();
  v7 = sub_22B7DBCB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = a1;
    _os_log_impl(&dword_22B4CC000, v6, v7, "Received request to update timer to %f", v8, 0xCu);
    MEMORY[0x231898D60](v8, -1, -1);
  }

  v9 = *&v2[OBJC_IVAR___IMDScheduledMessageCoordinator_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v2;
  *(v10 + 32) = ObjectType;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22B77E2DC;
  *(v11 + 24) = v10;
  v16[4] = sub_22B77E2E8;
  v16[5] = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_22B716E5C;
  v16[3] = &unk_283F1E7D8;
  v12 = _Block_copy(v16);
  v13 = v2;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_22B773F2C(char *a1, uint64_t a2, double a3)
{
  v5 = sub_22B7DA968();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v69 - v10;
  if (a3 >= 0.0)
  {
    v16 = OBJC_IVAR___IMDScheduledMessageCoordinator_timer;
    v17 = *&a1[OBJC_IVAR___IMDScheduledMessageCoordinator_timer];
    if (v17)
    {
      v18 = v17;
      v19 = [v18 fireDate];
      if (v19)
      {
        v20 = v19;
        sub_22B7DA928();

        sub_22B7DA8E8();
        v22 = v21;
        v23 = *(v6 + 8);
        v23(v11, v5);
        if (v22 > a3)
        {

          goto LABEL_13;
        }

        if (qword_28141F378 != -1)
        {
          swift_once();
        }

        v58 = sub_22B7DB2B8();
        sub_22B4CFA74(v58, qword_281422638);
        v59 = v18;
        v60 = sub_22B7DB298();
        v61 = sub_22B7DBCB8();
        if (!os_log_type_enabled(v60, v61))
        {

          return;
        }

        v62 = swift_slowAlloc();
        *v62 = 134218240;
        v63 = [v59 fireDate];

        if (v63)
        {
          sub_22B7DA928();

          sub_22B7DA8E8();
          v65 = v64;
          v23(v9, v5);
          *(v62 + 4) = v65;
          *(v62 + 12) = 2048;
          *(v62 + 14) = a3;
          _os_log_impl(&dword_22B4CC000, v60, v61, "Not updating timer since existing timer interval is sooner. Existing: %f vs requested: %f", v62, 0x16u);
          MEMORY[0x231898D60](v62, -1, -1);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_13:
    v73 = sub_22B7DC6F8();
    v74 = v24;
    MEMORY[0x231895140](45, 0xE100000000000000);
    v25 = [*&a1[OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession] displayName];
    v26 = sub_22B7DB6A8();
    v28 = v27;

    MEMORY[0x231895140](v26, v28);
    v28, v29, v30, v31, v32, v33, v34, v35, v69, v70;
    v36 = v74;
    v38 = type metadata accessor for IMDScheduledMessageCoordinator(v37);
    v75 = v38;
    v73 = a1;
    v71 = 0u;
    v72 = 0u;
    v39 = a1;
    v40 = sub_22B7DB678();
    v36, v41, v42, v43, v44, v45, v46, v47, v69, v70;
    if (v38)
    {
      v48 = sub_22B4D2BCC(&v73, v38);
      v49 = *(v38 - 8);
      MEMORY[0x28223BE20](v48);
      v51 = &v69 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v51);
      v52 = sub_22B7DC508();
      (*(v49 + 8))(v51, v38);
      sub_22B4CFB78(&v73);
      v53 = *(&v72 + 1);
      if (*(&v72 + 1))
      {
        v54 = sub_22B4D2BCC(&v71, *(&v72 + 1));
        v55 = *(v53 - 8);
        MEMORY[0x28223BE20](v54);
        v57 = &v69 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v55 + 16))(v57);
        v38 = sub_22B7DC508();
        (*(v55 + 8))(v57, v53);
        sub_22B4CFB78(&v71);
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v52 = 0;
    }

    v66 = [objc_allocWithZone(MEMORY[0x277D192B8]) initWithTimeInterval:v40 name:1 shouldWake:v52 target:sel_timerDidFire selector:v38 userInfo:a3];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v67 = *&a1[v16];
    *&a1[v16] = v66;
    v68 = v66;
    sub_22B7732D8(v67);

    return;
  }

  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v12 = sub_22B7DB2B8();
  sub_22B4CFA74(v12, qword_281422638);
  v70 = sub_22B7DB298();
  v13 = sub_22B7DBC98();
  if (os_log_type_enabled(v70, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22B4CC000, v70, v13, "Invalid update time requested, not updating timer.", v14, 2u);
    MEMORY[0x231898D60](v14, -1, -1);
  }

  v15 = v70;
}

void sub_22B7745EC(void *a1, void *a2)
{
  v4 = sub_22B7DAAB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 body];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 __im_messagePartIndexes];

    sub_22B7DAA88();
    v11 = sub_22B7DAA78();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v11 = 0;
  }

  [a1 setFailedRetractPartIndexes_];
}

id sub_22B774738(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  sub_22B7745EC(a1, a3);
  if (v3)
  {
    goto LABEL_16;
  }

  v8 = *(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
  v4 = [v8 storeMessage:a1 forceReplace:1 modifyError:1 modifyFlags:1 flagMask:{objc_msgSend(a1, sel_flags)}];
  v9 = [v8 chatForMessage_];
  if (!v9)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v15 = sub_22B7DB2B8();
    sub_22B4CFA74(v15, qword_281422638);
    v10 = v4;
    v16 = sub_22B7DB298();
    v17 = sub_22B7DBC98();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v10;
      *v19 = v10;
      v20 = v10;
      _os_log_impl(&dword_22B4CC000, v16, v17, "Failed to find chat for message: %@", v18, 0xCu);
      sub_22B4D0D64(v19, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v19, -1, -1);
      MEMORY[0x231898D60](v18, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v21 = 2;
    swift_willThrow();
    v4 = v5;
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v4 accountID];
  if (!v11)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v22 = sub_22B7DB2B8();
    sub_22B4CFA74(v22, qword_281422638);
    v23 = sub_22B7DB298();
    v24 = sub_22B7DBC98();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22B4CC000, v23, v24, "Failed to find accountID from message.", v25, 2u);
      MEMORY[0x231898D60](v25, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();

LABEL_15:
    v5 = v10;
LABEL_16:

    return v4;
  }

  v12 = v11;
  v13 = [*(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession) broadcasterForChatListeners];
  v14 = [v10 chatIdentifier];
  [v13 account:v12 chat:v14 style:objc_msgSend(v10 messageUpdated:{sel_style), v4}];

  swift_unknownObjectRelease();
  return v4;
}

id sub_22B774AE0(void *a1, uint64_t a2)
{
  [a1 setScheduleState_];
  v4 = *(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
  v5 = [v4 storeMessage:a1 forceReplace:1 modifyError:1 modifyFlags:1 flagMask:{objc_msgSend(a1, sel_flags)}];
  v6 = [v4 chatForMessage_];
  if (!v6)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v12 = sub_22B7DB2B8();
    sub_22B4CFA74(v12, qword_281422638);
    v7 = v5;
    v13 = sub_22B7DB298();
    v14 = sub_22B7DBC98();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v7;
      *v16 = v7;
      v17 = v7;
      _os_log_impl(&dword_22B4CC000, v13, v14, "Failed to find chat for message: %@", v15, 0xCu);
      sub_22B4D0D64(v16, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v16, -1, -1);
      MEMORY[0x231898D60](v15, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v5 accountID];
  if (!v8)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v19 = sub_22B7DB2B8();
    sub_22B4CFA74(v19, qword_281422638);
    v20 = sub_22B7DB298();
    v21 = sub_22B7DBC98();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22B4CC000, v20, v21, "Failed to find accountID from message.", v22, 2u);
      MEMORY[0x231898D60](v22, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();

LABEL_14:
    return v5;
  }

  v9 = v8;
  v10 = [*(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession) broadcasterForChatListeners];
  v11 = [v7 chatIdentifier];
  [v10 account:v9 chat:v11 style:objc_msgSend(v7 messageUpdated:{sel_style), v5}];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_22B774E70(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_22B7AB6B4(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_22B4D1F68(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22B7AB6B4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_22B775020(void *a1)
{
  v3 = sub_22B7DA968();
  v93 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v90 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v87 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v94 = &v87 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v87 - v11;
  v13 = sub_22B7DB3A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v1[OBJC_IVAR___IMDScheduledMessageCoordinator_queue];
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v18 = v17;
  LOBYTE(v17) = sub_22B7DB3B8();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v89 = v8;
    if (qword_28141F378 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = sub_22B7DB2B8();
  v20 = sub_22B4CFA74(v19, qword_281422638);
  v21 = v1;
  v22 = a1;
  v92 = v20;
  v23 = sub_22B7DB298();
  v24 = sub_22B7DBCB8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412546;
    *(v25 + 4) = v21;
    *(v25 + 12) = 2112;
    *(v25 + 14) = v22;
    *v26 = v21;
    v26[1] = v22;
    v27 = v21;
    v28 = v22;
    _os_log_impl(&dword_22B4CC000, v23, v24, "%@ Handling message %@", v25, 0x16u);
    sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v26, -1, -1);
    MEMORY[0x231898D60](v25, -1, -1);
  }

  v29 = [v22 time];
  if (!v29)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v30 = v29;
  sub_22B7DA928();

  v31 = v94;
  sub_22B7DA938();
  sub_22B77E294(&qword_281420E90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  LOBYTE(v30) = sub_22B7DB608();
  v32 = *(v93 + 8);
  v32(v31, v3);
  v32(v12, v3);
  v33 = v21;
  v34 = v22;
  v35 = v34;
  if (v30)
  {
    v36 = sub_22B7DB298();
    v37 = sub_22B7DBC98();

    if (!os_log_type_enabled(v36, v37))
    {

      goto LABEL_15;
    }

    LODWORD(v91) = v37;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v95 = v92;
    *v38 = 138413058;
    *(v38 + 4) = v33;
    *(v38 + 12) = 2112;
    *(v38 + 14) = v35;
    *v39 = v33;
    v39[1] = v35;
    v88 = v39;
    *(v38 + 22) = 2080;
    v40 = v33;
    v41 = v35;
    v42 = [v41 time];

    if (v42)
    {
      v43 = v90;
      sub_22B7DA928();

      v44 = v89;
      (*(v93 + 32))(v89, v43, v3);
      sub_22B77E294(&qword_27D8CD8D0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v45 = sub_22B7DC4E8();
      v47 = v46;
      v32(v44, v3);
      v48 = sub_22B4CFAAC(v45, v47, &v95);
      v47, v49, v50, v51, v52, v53, v54, v55, v87, v88;
      *(v38 + 24) = v48;
      *(v38 + 32) = 2080;
      v56 = v94;
      sub_22B7DA938();
      v57 = sub_22B7DC4E8();
      v59 = v58;
      v32(v56, v3);
      v60 = sub_22B4CFAAC(v57, v59, &v95);
      v59, v61, v62, v63, v64, v65, v66, v67, v87, v88;
      *(v38 + 34) = v60;
      _os_log_impl(&dword_22B4CC000, v36, v91, "%@ not handling message: %@ because it is scheduled for the future. %s vs now %s", v38, 0x2Au);
      sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
      v68 = v88;
      swift_arrayDestroy();
      MEMORY[0x231898D60](v68, -1, -1);
      v69 = v92;
      swift_arrayDestroy();
      MEMORY[0x231898D60](v69, -1, -1);
      MEMORY[0x231898D60](v38, -1, -1);
LABEL_15:

      sub_22B77E1E0();
      swift_allocError();
      *v79 = 0;
LABEL_16:
      swift_willThrow();
      return;
    }

    goto LABEL_21;
  }

  v70 = v91;
  v71 = sub_22B77B2D0(v34, v33, v34, v33);
  if (v70)
  {

    v72 = v70;
    v73 = sub_22B7DB298();
    v74 = sub_22B7DBC98();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      v77 = v70;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 4) = v78;
      *v76 = v78;
      _os_log_impl(&dword_22B4CC000, v73, v74, "Could not mark the message state as TimeElapsed. Error: %@", v75, 0xCu);
      sub_22B4D0D64(v76, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v76, -1, -1);
      MEMORY[0x231898D60](v75, -1, -1);
    }

    goto LABEL_16;
  }

  sub_22B775A20(v35, v80, v81, v82, v83, v84, v85, v86, v87, v88);
  sub_22B775B98(v35);
}

id sub_22B775808(void *a1, id a2, void *a3)
{
  v6 = [a2 scheduleState];
  if (v6 > 5)
  {
LABEL_9:
    sub_22B77E1E0();
    swift_allocError();
    *v16 = 3;
    return swift_willThrow();
  }

  if (v6 != 2)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v7 = sub_22B7DB2B8();
    sub_22B4CFA74(v7, qword_281422638);
    v8 = a2;
    v9 = a3;
    v10 = sub_22B7DB298();
    v11 = sub_22B7DBC98();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412546;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2048;
      v14 = v9;
      v15 = [v8 scheduleState];

      *(v12 + 14) = v15;
      _os_log_impl(&dword_22B4CC000, v10, v11, "%@ can't modify message to timeElapsed since it's in an invalid state. %lu", v12, 0x16u);
      sub_22B4D0D64(v13, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v13, -1, -1);
      MEMORY[0x231898D60](v12, -1, -1);
    }

    else
    {

      v10 = v8;
    }

    goto LABEL_9;
  }

  [a1 setScheduleState_];
  return [a3 removeFailedEditsFrom_];
}

void sub_22B775A20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v11 = [a1 fileTransferGUIDs];
  if (v11)
  {
    v12 = v11;
    v13 = sub_22B7DB918();

    v21 = *v13->messageStore;
    if (v21)
    {
      v22 = 0;
      v23 = OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession;
      membershipObserver = v13->membershipObserver;
      while (v22 < *v13->messageStore)
      {
        v25 = *membershipObserver;
        v26 = objc_opt_self();

        v27 = [v26 sharedInstance];
        if (!v27)
        {
          goto LABEL_14;
        }

        v28 = v27;
        v29 = sub_22B7DB678();
        v25, v30, v31, v32, v33, v34, v35, v36, v38, v39;
        v37 = [v28 transferForGUID_];

        if (v37)
        {
          [*(v10 + v23) renewTTLForScheduledAttachmentTransfer_];
        }

        ++v22;
        membershipObserver += 2;
        if (v21 == v22)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    else
    {
LABEL_9:

      v13, v14, v15, v16, v17, v18, v19, v20, a9, a10;
    }
  }
}

void sub_22B775B98(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore) chatForMessage_];
  if (v3)
  {
    oslog = v3;
    sub_22B777DD8(v3);
  }

  else
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v4 = sub_22B7DB2B8();
    sub_22B4CFA74(v4, qword_281422638);
    v5 = a1;
    oslog = sub_22B7DB298();
    v6 = sub_22B7DBC98();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v5;
      *v8 = v5;
      v9 = v5;
      _os_log_impl(&dword_22B4CC000, oslog, v6, "Failed to find chat for scheduled message: %@", v7, 0xCu);
      sub_22B4D0D64(v8, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v8, -1, -1);
      MEMORY[0x231898D60](v7, -1, -1);
    }
  }
}

void sub_22B775D70()
{
  v1 = v0;
  v125 = sub_22B7DA968();
  v117 = *(v125 - 8);
  v2 = MEMORY[0x28223BE20](v125);
  v4 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v123 = &v116 - v6;
  MEMORY[0x28223BE20](v5);
  v127 = &v116 - v7;
  v8 = sub_22B6F0AD4(&qword_27D8CEEB0, &qword_22B7FBAB0);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v116 - v10;
  v124 = sub_22B6F0AD4(&qword_27D8CEEB8, &qword_22B7FBAB8);
  v128 = *(v124 - 8);
  v12 = MEMORY[0x28223BE20](v124);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v126 = &v116 - v15;
  v16 = sub_22B7DB3A8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  *v19 = sub_22B7DBD58();
  (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
  v20 = sub_22B7DB3B8();
  v22 = *(v17 + 8);
  v21 = v17 + 8;
  v22(v19, v16);
  if ((v20 & 1) == 0)
  {
    goto LABEL_26;
  }

  v21 = v9;
  v116 = v4;
  if (qword_28141F378 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v23 = sub_22B7DB2B8();
    v24 = sub_22B4CFA74(v23, qword_281422638);
    v25 = v1;
    v119 = v24;
    v26 = sub_22B7DB298();
    v27 = sub_22B7DBCB8();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v124;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v25;
      *v31 = v25;
      v32 = v25;
      _os_log_impl(&dword_22B4CC000, v26, v27, "%@ Timer fired", v30, 0xCu);
      sub_22B4D0D64(v31, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v31, -1, -1);
      MEMORY[0x231898D60](v30, -1, -1);
    }

    v33 = *&v25[OBJC_IVAR___IMDScheduledMessageCoordinator_timer];
    *&v25[OBJC_IVAR___IMDScheduledMessageCoordinator_timer] = 0;
    sub_22B7732D8(v33);

    v120 = v25;
    v34 = [*&v25[OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore] scheduledMessagesBatchFetcher];
    sub_22B4D01A0(0, &unk_28141F240, 0x277D18ED0);
    sub_22B4D01A0(0, &qword_28141F0C8, 0x277D18ED8);
    v35 = v126;
    v118 = v34;
    sub_22B7DBD08();
    v36 = MEMORY[0x277D84F90];
    v129[0] = MEMORY[0x277D84F90];
    (*v128->messageStore)(v14, v35, v29);
    sub_22B714FD8(&qword_28141F450, &qword_27D8CEEB8, &qword_22B7FBAB8, MEMORY[0x277D19650]);
    sub_22B7DB8A8();
    sub_22B714FD8(&qword_28141F458, &qword_27D8CEEB0, &qword_22B7FBAB0, MEMORY[0x277D19608]);
    v14 = 0;
    v37 = v36;
    while (1)
    {
      sub_22B7DC0B8();
      v38 = v131;
      if (!v131)
      {
        break;
      }

      v39 = sub_22B776A24();

      if (v39)
      {
        MEMORY[0x231895260](v40, v41);
        if (*((v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22B7DB938();
        }

        sub_22B7DB968();
        v37 = v129[0];
      }
    }

    (*(v21 + 8))(v11, v8);
    (*v128->serviceSession)(v126, v29);
    v129[0] = v36;
    if (v37 >> 62)
    {
      break;
    }

    v11 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = v120;
    if (!v11)
    {
      goto LABEL_29;
    }

LABEL_13:
    v49 = 0;
    v1 = (v37 & 0xC000000000000001);
    v21 = v37 & 0xFFFFFFFFFFFFFF8;
    v128 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v1)
      {
        v50 = MEMORY[0x231895C80](v49, v37);
      }

      else
      {
        if (v49 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v50 = *&v37->queue[8 * v49];
      }

      v51 = v50;
      v52 = (v49 + 1);
      if (__OFADD__(v49, 1))
      {
        break;
      }

      v131 = v50;
      sub_22B776D00(&v131, v8, &v130);

      if (v130)
      {
        MEMORY[0x231895260](v53, v42);
        if (*((v129[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22B7DB938();
          v8 = v120;
        }

        sub_22B7DB968();
        v128 = v129[0];
      }

      ++v49;
      if (v52 == v11)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  v11 = sub_22B7DC1C8();
  v8 = v120;
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_29:
  v128 = MEMORY[0x277D84F90];
LABEL_30:
  v37, v42, v43, v44, v45, v46, v47, v48, v116, v117;
  if (v128 >> 62)
  {
    goto LABEL_59;
  }

  v61 = v127;
  v124 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v124)
  {
    while (1)
    {
      v122 = v128 & 0xC000000000000001;
      if ((v128 & 0xC000000000000001) != 0)
      {
        v108 = MEMORY[0x231895C80](0, v128);
      }

      else
      {
        if (!*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v108 = *v128->queue;
      }

      v126 = v108;
      v62 = &selRef_smsRelayService;
      if (v124 == 1)
      {
        break;
      }

      v121 = v128 & 0xFFFFFFFFFFFFFF8;
      v77 = v117 + 8;
      v78 = 1;
      while (1)
      {
        if (v122)
        {
          v79 = MEMORY[0x231895C80](v78, v128);
        }

        else
        {
          if ((v78 & 0x8000000000000000) != 0)
          {
            goto LABEL_57;
          }

          if (v78 >= *(v121 + 16))
          {
            goto LABEL_58;
          }

          v79 = *&v128->queue[8 * v78];
        }

        v8 = v79;
        v80 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          break;
        }

        v81 = [v79 v62[257]];
        if (!v81)
        {
          goto LABEL_67;
        }

        v82 = v81;
        sub_22B7DA928();

        v83 = v62;
        v84 = [v126 v62[257]];
        if (!v84)
        {
          goto LABEL_68;
        }

        v85 = v84;
        v86 = v123;
        sub_22B7DA928();

        LOBYTE(v85) = sub_22B7DA8D8();
        v87 = v61;
        v88 = *v77;
        v89 = v86;
        v90 = v125;
        (*v77)(v89, v125);
        v88(v87, v90);
        if (v85)
        {

          v126 = v8;
          ++v78;
          v61 = v127;
          v62 = v83;
          if (v80 == v124)
          {
            goto LABEL_38;
          }
        }

        else
        {

          ++v78;
          v61 = v127;
          v62 = v83;
          if (v80 == v124)
          {
            goto LABEL_37;
          }
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      v91 = sub_22B7DC1C8();
      v61 = v127;
      v124 = v91;
      if (!v91)
      {
        goto LABEL_60;
      }
    }

LABEL_37:
    v8 = v126;
LABEL_38:
    v128, v109, v110, v111, v112, v113, v114, v115, v116, v117;
    v63 = v8;
    v64 = sub_22B7DB298();
    v65 = sub_22B7DBCB8();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = v62;
      v68 = swift_slowAlloc();
      *v66 = 138412290;
      *(v66 + 4) = v63;
      *v68 = v63;
      v69 = v63;
      _os_log_impl(&dword_22B4CC000, v64, v65, "Found message scheduled for the future: %@. Updating timer.", v66, 0xCu);
      sub_22B4D0D64(v68, &unk_27D8CEC60, &qword_22B7F9E20);
      v70 = v68;
      v62 = v67;
      MEMORY[0x231898D60](v70, -1, -1);
      MEMORY[0x231898D60](v66, -1, -1);
    }

    v71 = [v63 v62[257]];
    v8 = v120;
    v72 = v116;
    if (v71)
    {
      v73 = v71;
      sub_22B7DA928();

      sub_22B7DA8E8();
      v75 = v74;
      (*(v117 + 1))(v72, v125);
      [v8 updateTimerForTimeInterval_];
      v76 = v63;
      goto LABEL_63;
    }

LABEL_69:
    __break(1u);
  }

  else
  {
LABEL_60:
    v128, v54, v55, v56, v57, v58, v59, v60, v116, v117;
    v63 = sub_22B7DB298();
    v92 = sub_22B7DBCB8();
    if (os_log_type_enabled(v63, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_22B4CC000, v63, v92, "No future scheduled messages found. Not re-setting up timer.", v93, 2u);
      MEMORY[0x231898D60](v93, -1, -1);
    }

    v76 = 0;
LABEL_63:

    if (*(v8 + OBJC_IVAR___IMDScheduledMessageCoordinator_isFirstFire) == 1)
    {
      *(v8 + OBJC_IVAR___IMDScheduledMessageCoordinator_isFirstFire) = 0;
      v94 = *(v8 + OBJC_IVAR___IMDScheduledMessageCoordinator_chatRegistry);
      v95 = type metadata accessor for ScheduledMessageBlocklistController();
      v96 = objc_allocWithZone(v95);
      v97 = v94;
      v98 = [v96 init];
      v129[3] = v95;
      v129[4] = &off_283F20C90;
      v129[0] = v98;
      type metadata accessor for ScheduledMessageBlocklistObserver();
      v99 = swift_allocObject();
      v100 = sub_22B6F6540(v129, v95);
      MEMORY[0x28223BE20](v100);
      v102 = (&v116 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v103 + 16))(v102);
      v104 = *v102;
      v105 = v8;
      v106 = v98;
      v107 = sub_22B779E08(v105, v97, v104, v99);

      sub_22B4CFB78(v129);
      *&v105[OBJC_IVAR___IMDScheduledMessageCoordinator_blocklistObserver] = v107;
    }

    else
    {
    }
  }
}

uint64_t sub_22B776A24()
{
  if ([v0 itemType])
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v1 = sub_22B7DB2B8();
    sub_22B4CFA74(v1, qword_281422638);
    v2 = v0;
    v3 = sub_22B7DB298();
    v4 = sub_22B7DBCA8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = [v2 itemType];

      _os_log_impl(&dword_22B4CC000, v3, v4, "Received invalid message type: %lld when fetching message types.", v5, 0xCu);
      MEMORY[0x231898D60](v5, -1, -1);
LABEL_16:

      return 0;
    }
  }

  else
  {
    v6 = v0;
    v7 = IMDCreateIMMessageItemFromIMDMessageRecordRef(v6, 0, 1);
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;

        return v10;
      }
    }

    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v12 = sub_22B7DB2B8();
    sub_22B4CFA74(v12, qword_281422638);
    v3 = v6;
    v13 = sub_22B7DB298();
    v14 = sub_22B7DBCA8();
    if (!os_log_type_enabled(v13, v14))
    {

      goto LABEL_16;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v3;
    *v16 = v3;
    *(v15 + 12) = 2048;
    *(v15 + 14) = [v3 itemType];
    _os_log_impl(&dword_22B4CC000, v13, v14, "Failed to create IMMessageItem from fetched message record. %@, type: %lld", v15, 0x16u);
    sub_22B4D0D64(v16, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v16, -1, -1);
    MEMORY[0x231898D60](v15, -1, -1);
  }

  return 0;
}

void sub_22B776D00(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v71 = a3;
  v5 = sub_22B7DA968();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v69 = &v65 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v65 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v65 - v14;
  v16 = *a1;
  v17 = [*a1 time];
  if (!v17)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v18 = v17;
  sub_22B7DA928();

  sub_22B7DA938();
  sub_22B77E294(&qword_281420E90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  LOBYTE(v18) = sub_22B7DB608();
  v19 = *(v6 + 8);
  v19(v13, v5);
  v20 = (v19)(v15, v5);
  if (v18)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v21 = sub_22B7DB2B8();
    sub_22B4CFA74(v21, qword_281422638);
    v22 = v16;
    v23 = sub_22B7DB298();
    v24 = sub_22B7DBCB8();
    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_14;
    }

    v25 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v73 = v66;
    v67 = v25;
    *v25 = 136315138;
    v26 = [v22 time];

    if (v26)
    {
      v27 = v68;
      sub_22B7DA928();

      v28 = v69;
      (*(v6 + 32))(v69, v27, v5);
      sub_22B77E294(&qword_27D8CD8D0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v29 = sub_22B7DC4E8();
      v31 = v30;
      v19(v28, v5);
      v32 = sub_22B4CFAAC(v29, v31, &v73);
      v31, v33, v34, v35, v36, v37, v38, v39, v65, v66;
      v40 = v67;
      *(v67 + 1) = v32;
      _os_log_impl(&dword_22B4CC000, v23, v24, "Found message scheduled for the future: %s.", v40, 0xCu);
      v41 = v66;
      sub_22B4CFB78(v66);
      MEMORY[0x231898D60](v41, -1, -1);
      MEMORY[0x231898D60](v40, -1, -1);
LABEL_14:

      *v71 = v22;
      v64 = v22;
      return;
    }

    goto LABEL_18;
  }

  MEMORY[0x28223BE20](v20);
  *(&v65 - 2) = a2;
  *(&v65 - 1) = v16;
  v42 = v70;
  sub_22B7DBD68();
  if (v42)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v43 = sub_22B7DB2B8();
    sub_22B4CFA74(v43, qword_281422638);
    v44 = v16;
    v45 = v42;
    v46 = sub_22B7DB298();
    v47 = sub_22B7DBC98();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v73 = v50;
      *v48 = 138412546;
      *(v48 + 4) = v44;
      *v49 = v44;
      *(v48 + 12) = 2080;
      v72 = v42;
      v51 = v44;
      v52 = v42;
      sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
      v53 = sub_22B7DB6C8();
      v55 = v54;
      v56 = sub_22B4CFAAC(v53, v54, &v73);
      v55, v57, v58, v59, v60, v61, v62, v63, v65, v66;
      *(v48 + 14) = v56;
      _os_log_impl(&dword_22B4CC000, v46, v47, "Failed to handle message: %@, error: %s", v48, 0x16u);
      sub_22B4D0D64(v49, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v49, -1, -1);
      sub_22B4CFB78(v50);
      MEMORY[0x231898D60](v50, -1, -1);
      MEMORY[0x231898D60](v48, -1, -1);
    }

    else
    {
    }
  }

  *v71 = 0;
}

uint64_t sub_22B777350()
{
  v1 = v0;
  sub_22B7DC2E8();
  MEMORY[0x231895140](0xD000000000000025, 0x800000022B810CC0);
  v27 = v0;
  sub_22B7DC428();
  MEMORY[0x231895140](0xD000000000000012, 0x800000022B810CF0);
  v2 = [*&v0[OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession] description];
  v3 = sub_22B7DB6A8();
  v5 = v4;

  MEMORY[0x231895140](v3, v5);
  v5, v6, v7, v8, v9, v10, v11, v12, v25, v27;
  MEMORY[0x231895140](0x3A72656D6974202CLL, 0xE900000000000020);
  v28 = *&v1[OBJC_IVAR___IMDScheduledMessageCoordinator_timer];
  v13 = v28;
  sub_22B6F0AD4(&unk_27D8CEF18, &qword_22B7FBAE0);
  v14 = sub_22B7DB6C8();
  v16 = v15;
  MEMORY[0x231895140](v14);
  v16, v17, v18, v19, v20, v21, v22, v23, v26, v28;
  MEMORY[0x231895140](41, 0xE100000000000000);
  return 0;
}

void __swiftcall IMDScheduledMessageCoordinator.init()(IMDScheduledMessageCoordinator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_22B7775E4(void *a1, IMDScheduledMessageCoordinator *a2, uint64_t a3)
{
  v119 = a3;
  v5 = sub_22B6F0AD4(&qword_27D8CEEB0, &qword_22B7FBAB0);
  v115 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v111 - v6;
  v8 = sub_22B6F0AD4(&qword_27D8CEEB8, &qword_22B7FBAB8);
  v117 = *(v8 - 1);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v116 = &v111 - v12;
  if (qword_28141F378 != -1)
  {
LABEL_32:
    swift_once();
  }

  v13 = sub_22B7DB2B8();
  v14 = sub_22B4CFA74(v13, qword_281422638);
  v15 = a1;

  v118 = v14;
  v16 = sub_22B7DB298();
  v17 = sub_22B7DBCB8();
  if (os_log_type_enabled(v16, v17))
  {
    v113 = v11;
    v114 = v8;
    v25 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v122 = v112;
    *v25 = 136315650;
    v26 = [v15 guid];

    a2, v27, v28, v29, v30, v31, v32, v33, v111, v112;
    if (!v26)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    v34 = sub_22B7DB6A8();
    v36 = v35;

    v37 = sub_22B4CFAAC(v34, v36, &v122);
    v36, v38, v39, v40, v41, v42, v43, v44, v111, v112;
    *(v25 + 4) = v37;
    *(v25 + 12) = 2080;
    v45 = MEMORY[0x2318952A0](a2, MEMORY[0x277D837D0]);
    v47 = v46;
    v48 = sub_22B4CFAAC(v45, v46, &v122);
    v47, v49, v50, v51, v52, v53, v54, v55, v111, v112;
    *(v25 + 14) = v48;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v119;
    _os_log_impl(&dword_22B4CC000, v16, v17, "Received request to cancel messages on chat: %s to destinations: %s with the reason: %lu", v25, 0x20u);
    v56 = v112;
    swift_arrayDestroy();
    MEMORY[0x231898D60](v56, -1, -1);
    MEMORY[0x231898D60](v25, -1, -1);

    v11 = v113;
    v8 = v114;
  }

  else
  {
    a2, v18, v19, v20, v21, v22, v23, v24, v111, v112;
  }

  v58 = v116;
  v57 = v117;
  if (*a2->messageStore)
  {
    v59 = *(&v120->isa + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
    v114 = v15;
    v60 = [v15 guid];
    v61 = [v59 scheduledMessagesBatchFetcherForChat_];

    sub_22B4D01A0(0, &unk_28141F240, 0x277D18ED0);
    sub_22B4D01A0(0, &qword_28141F0C8, 0x277D18ED8);
    v113 = v61;
    sub_22B7DBD08();
    v62 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];
    (*(v57 + 16))(v11, v58, v8);
    sub_22B714FD8(&qword_28141F450, &qword_27D8CEEB8, &qword_22B7FBAB8, MEMORY[0x277D19650]);
    sub_22B7DB8A8();
    v11 = sub_22B714FD8(&qword_28141F458, &qword_27D8CEEB0, &qword_22B7FBAB0, MEMORY[0x277D19608]);
    v118 = a2;
    while (1)
    {
      sub_22B7DC0B8();
      v63 = v121;
      if (!v121)
      {
        break;
      }

      v64 = sub_22B776A24();

      if (v64)
      {
        MEMORY[0x231895260]();
        if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22B7DB938();
        }

        sub_22B7DB968();
        v62 = v122;
      }
    }

    (*(v115 + 8))(v7, v5);
    (*(v57 + 8))(v58, v8);
    if (v62 >> 62)
    {
      a1 = sub_22B7DC1C8();
      if (a1)
      {
LABEL_15:
        v5 = 0;
        v116 = OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession;
        v117 = v62 & 0xC000000000000001;
        a2 = (v62 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v117)
          {
            v72 = MEMORY[0x231895C80](v5, v62);
          }

          else
          {
            if (v5 >= *a2->messageStore)
            {
              goto LABEL_31;
            }

            v72 = *&v62->queue[8 * v5];
          }

          v73 = v72;
          v74 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v11 = v62;
          v8 = *&v116[v120];
          v75 = [v72 guid];
          if (!v75)
          {
            break;
          }

          v76 = v75;
          v77 = v118;

          v79 = sub_22B77A2DC(v78);
          v77, v80, v81, v82, v83, v84, v85, v86, v111, v112;
          v7 = sub_22B7DBAE8();
          v79, v87, v88, v89, v90, v91, v92, v93, v111, v112;
          [v8 cancelScheduledMessageWithGUID:v76 destinations:v7 cancelType:v119];

          ++v5;
          v62 = v11;
          if (v74 == a1)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
        goto LABEL_36;
      }
    }

    else
    {
      a1 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1)
      {
        goto LABEL_15;
      }
    }

LABEL_34:
    v62, v65, v66, v67, v68, v69, v70, v71, v111, v112;
    sub_22B777DD8(v114);

    return;
  }

  v94 = v15;
  v120 = sub_22B7DB298();
  v95 = sub_22B7DBC98();
  if (os_log_type_enabled(v120, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v122 = v97;
    *v96 = 136315138;
    v98 = [v94 guid];

    if (v98)
    {
      v99 = sub_22B7DB6A8();
      v101 = v100;

      v102 = sub_22B4CFAAC(v99, v101, &v122);
      v101, v103, v104, v105, v106, v107, v108, v109, v111, v112;
      *(v96 + 4) = v102;
      _os_log_impl(&dword_22B4CC000, v120, v95, "Not attempting to cancel scheduled messages for chat %s. Found no destinations to cancel to", v96, 0xCu);
      sub_22B4CFB78(v97);
      MEMORY[0x231898D60](v97, -1, -1);
      MEMORY[0x231898D60](v96, -1, -1);

      return;
    }

    goto LABEL_37;
  }

  v110 = v120;
}

void sub_22B777DD8(void *a1)
{
  v3 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v74 = &v71 - v6;
  v82 = sub_22B7DA968();
  v76 = *(v82 - 8);
  v7 = MEMORY[0x28223BE20](v82);
  v78 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v71 - v9;
  v10 = sub_22B6F0AD4(&qword_27D8CEEB0, &qword_22B7FBAB0);
  v81 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - v11;
  v13 = sub_22B6F0AD4(&qword_27D8CEEB8, &qword_22B7FBAB8);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v71 - v18;
  v20 = *(v1 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
  v75 = a1;
  v21 = [a1 guid];
  v22 = [v20 scheduledMessagesBatchFetcherForChat_];

  sub_22B4D01A0(0, &unk_28141F240, 0x277D18ED0);
  sub_22B4D01A0(0, &qword_28141F0C8, 0x277D18ED8);
  v73 = v22;
  sub_22B7DBD08();
  v23 = MEMORY[0x277D84F90];
  v84 = MEMORY[0x277D84F90];
  (*(v14 + 16))(v17, v19, v13);
  sub_22B714FD8(&qword_28141F450, &qword_27D8CEEB8, &qword_22B7FBAB8, MEMORY[0x277D19650]);
  sub_22B7DB8A8();
  sub_22B714FD8(&qword_28141F458, &qword_27D8CEEB0, &qword_22B7FBAB0, MEMORY[0x277D19608]);
  v24 = v23;
  while (1)
  {
    sub_22B7DC0B8();
    v25 = v83;
    if (!v83)
    {
      break;
    }

    v26 = sub_22B776A24();

    if (v26)
    {
      MEMORY[0x231895260]();
      if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B7DB938();
      }

      sub_22B7DB968();
      v24 = v84;
    }
  }

  (*(v81 + 8))(v12, v10);
  (*(v14 + 8))(v19, v13);
  v84 = v23;
  if (v24 >> 62)
  {
    goto LABEL_29;
  }

  v34 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v80; v34; i = v80)
  {
    v36 = 0;
    v37 = &selRef_repairOffGridStatusWithHandleID_fromHandleID_completion_;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x231895C80](v36, v24);
      }

      else
      {
        if (v36 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v38 = *&v24->queue[8 * v36];
      }

      v39 = v38;
      v40 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if ([v38 scheduleType] == 2)
      {
        v41 = [v39 v37[160]];
        if (v41 > 2)
        {
          if (v41 != 3 && v41 != 4 && v41 != 5)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if ((v41 - 1) < 2)
          {
            sub_22B7DC358();
            sub_22B7DC398();
            sub_22B7DC3A8();
            sub_22B7DC368();
            v37 = &selRef_repairOffGridStatusWithHandleID_fromHandleID_completion_;
            goto LABEL_12;
          }

          if (v41)
          {
            goto LABEL_72;
          }
        }
      }

LABEL_12:
      ++v36;
      if (v40 == v34)
      {
        v42 = v84;
        i = v80;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v34 = sub_22B7DC1C8();
  }

  v42 = MEMORY[0x277D84F90];
LABEL_31:
  v24, v27, v28, v29, v30, v31, v32, v33, v71, v72;
  if ((v42 & 0x8000000000000000) != 0 || (v42 & 0x4000000000000000) != 0)
  {
    goto LABEL_65;
  }

  v43 = *v42->messageStore;
  if (!v43)
  {
    goto LABEL_66;
  }

  do
  {
    v44 = v42 & 0xC000000000000001;
    if ((v42 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x231895C80](0, v42);
    }

    else
    {
      if (!*v42->messageStore)
      {
        __break(1u);
LABEL_72:
        sub_22B7DC448();
        __break(1u);
        return;
      }

      v45 = *v42->queue;
    }

    v46 = v45;
    v47 = &selRef_updatedPriorityForChatsWithGUIDsAndProperties_chatsAndMessageGUIDs_;
    if (v43 == 1)
    {
LABEL_38:

      v48 = v75;
      [v75 updateHasCancellableScheduledMessage_];
      if (!v46)
      {
        goto LABEL_67;
      }

      v49 = [v46 v47[62]];
      v50 = v74;
      v51 = v82;
      v52 = v76;
      if (v49)
      {
        v53 = v72;
        v54 = v49;
        sub_22B7DA928();

        v55 = 0;
      }

      else
      {
        v55 = 1;
        v53 = v72;
      }

      (*(v52 + 56))(v53, v55, 1, v51);
      sub_22B6FC80C(v53, v50, &unk_27D8CF790, &qword_22B7F9578);
      if ((*(v52 + 48))(v50, 1, v51) == 1)
      {
        goto LABEL_68;
      }

      v70 = sub_22B7DA8B8();
      (*(v52 + 8))(v50, v51);
      goto LABEL_69;
    }

    v79 = (v76 + 8);
    v77 = v42;
    v56 = 1;
    if (!v44)
    {
LABEL_47:
      if ((v56 & 0x8000000000000000) != 0)
      {
        goto LABEL_63;
      }

      if (v56 < *v42->messageStore)
      {
        v57 = *&v42->queue[8 * v56];
        goto LABEL_50;
      }

      goto LABEL_64;
    }

    while (1)
    {
      v57 = MEMORY[0x231895C80](v56, v42);
LABEL_50:
      v58 = v57;
      v59 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      v60 = [v46 v47[62]];
      if (v60)
      {
        v61 = v60;
        sub_22B7DA928();

        v62 = [v58 v47[62]];
        if (!v62)
        {

          (*v79)(i, v82);
          goto LABEL_44;
        }

        v63 = v44;
        v64 = v78;
        v65 = v62;
        sub_22B7DA928();

        LODWORD(v81) = sub_22B7DA8D8();
        v66 = i;
        v67 = *v79;
        v68 = v64;
        v69 = v82;
        (*v79)(v68, v82);
        v67(v66, v69);
        if ((v81 & 1) == 0)
        {

          i = v80;
          v44 = v63;
          v42 = v77;
          v47 = &selRef_updatedPriorityForChatsWithGUIDsAndProperties_chatsAndMessageGUIDs_;
          goto LABEL_44;
        }

        i = v80;
        v44 = v63;
        v42 = v77;
        v47 = &selRef_updatedPriorityForChatsWithGUIDsAndProperties_chatsAndMessageGUIDs_;
        v46 = v58;
        if (v59 == v43)
        {
          goto LABEL_38;
        }

        ++v56;
        if (!v44)
        {
          goto LABEL_47;
        }
      }

      else
      {

LABEL_44:
        ++v56;
        if (v59 == v43)
        {
          goto LABEL_38;
        }

        if (!v44)
        {
          goto LABEL_47;
        }
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    v43 = sub_22B7DC1C8();
  }

  while (v43);
LABEL_66:

  v48 = v75;
  [v75 updateHasCancellableScheduledMessage_];
LABEL_67:
  (*(v76 + 56))(v74, 1, 1, v82);
  v46 = 0;
LABEL_68:
  v70 = 0;
LABEL_69:
  [v48 setLastScheduledMessageCreatedDate_];
}

void sub_22B778754(char **a1, unint64_t a2)
{
  v80 = a2;
  v3 = sub_22B6F0AD4(&qword_27D8CEEB0, &qword_22B7FBAB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v73 - v5;
  v78 = sub_22B6F0AD4(&qword_27D8CEEB8, &qword_22B7FBAB8);
  v7 = *(v78 - 8);
  v8 = MEMORY[0x28223BE20](v78);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v73 - v11;
  v79 = [a1 style];
  if (qword_28141F378 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v13 = sub_22B7DB2B8();
    sub_22B4CFA74(v13, qword_281422638);
    v14 = a1;
    v15 = sub_22B7DB298();
    v16 = sub_22B7DBCB8();
    v17 = os_log_type_enabled(v15, v16);
    v18 = &selRef_deleteMessageGUIDs_inChat_;
    v77 = v4;
    if (v17)
    {
      v75 = v16;
      v81 = v10;
      v76 = v12;
      v19 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v84 = v74;
      v20 = v19;
      *v19 = 136315138;
      v21 = [v14 guid];
      v22 = v14;

      if (!v21)
      {
        goto LABEL_54;
      }

      v23 = sub_22B7DB6A8();
      v25 = v24;

      v26 = sub_22B4CFAAC(v23, v25, &v84);
      v25, v27, v28, v29, v30, v31, v32, v33, v73, v74;
      v34 = v20;
      *(v20 + 1) = v26;
      _os_log_impl(&dword_22B4CC000, v15, v75, "Updating Participants for scheduled messages in chat %s if necessary", v20, 0xCu);
      v35 = v74;
      sub_22B4CFB78(v74);
      MEMORY[0x231898D60](v35, -1, -1);
      MEMORY[0x231898D60](v34, -1, -1);

      v14 = v22;
      v12 = v76;
      v10 = v81;
      v18 = &selRef_deleteMessageGUIDs_inChat_;
    }

    else
    {
    }

    v36 = *(v82 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
    v37 = v18[473];
    v81 = v14;
    v38 = [v14 v37];
    v39 = [v36 scheduledMessagesBatchFetcherForChat_];

    sub_22B4D01A0(0, &unk_28141F240, 0x277D18ED0);
    sub_22B4D01A0(0, &qword_28141F0C8, 0x277D18ED8);
    v76 = v39;
    sub_22B7DBD08();
    v40 = MEMORY[0x277D84F90];
    v84 = MEMORY[0x277D84F90];
    v41 = v12;
    v42 = v78;
    (*(v7 + 16))(v10, v12, v78);
    sub_22B714FD8(&qword_28141F450, &qword_27D8CEEB8, &qword_22B7FBAB8, MEMORY[0x277D19650]);
    sub_22B7DB8A8();
    v12 = sub_22B714FD8(&qword_28141F458, &qword_27D8CEEB0, &qword_22B7FBAB0, MEMORY[0x277D19608]);
    v43 = v40;
    while (1)
    {
      sub_22B7DC0B8();
      v44 = v83;
      if (!v83)
      {
        break;
      }

      v10 = sub_22B776A24();

      if (v10)
      {
        MEMORY[0x231895260]();
        if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22B7DB938();
          v42 = v78;
        }

        sub_22B7DB968();
        v43 = v84;
      }
    }

    (*(v77 + 8))(v6, v3);
    (*(v7 + 8))(v41, v42);
    v84 = v40;
    if (!(v43 >> 62))
    {
      v3 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        break;
      }

      goto LABEL_14;
    }

    v3 = sub_22B7DC1C8();
    if (!v3)
    {
      break;
    }

LABEL_14:
    v6 = 0;
    v4 = v43 & 0xC000000000000001;
    v7 = v43 & 0xFFFFFFFFFFFFFF8;
    a1 = &selRef_repairOffGridStatusWithHandleID_fromHandleID_completion_;
    v78 = v43 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v52 = MEMORY[0x231895C80](v6, v43);
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_33;
        }

        v52 = *(v43 + 8 * v6 + 32);
      }

      v12 = v52;
      v53 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v52 scheduleType] == 2)
      {
        v54 = [v12 scheduleState];
        if (v54 > 2)
        {
          if (v54 != 3 && v54 != 4 && v54 != 5)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if ((v54 - 1) < 2)
          {
            sub_22B7DC358();
            v10 = *(v84 + 16);
            sub_22B7DC398();
            sub_22B7DC3A8();
            sub_22B7DC368();
            v7 = v78;
            goto LABEL_17;
          }

          if (v54)
          {
            goto LABEL_55;
          }
        }
      }

LABEL_17:
      ++v6;
      if (v53 == v3)
      {
        v55 = v84;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v55 = MEMORY[0x277D84F90];
LABEL_37:
  v43, v45, v46, v47, v48, v49, v50, v51, v73, v74;
  if ((v55 & 0x8000000000000000) == 0 && (v55 & 0x4000000000000000) == 0)
  {
    v56 = *(v55 + 16);
    if (v56)
    {
      goto LABEL_40;
    }

LABEL_52:

    return;
  }

LABEL_51:
  v56 = sub_22B7DC1C8();
  if (!v56)
  {
    goto LABEL_52;
  }

LABEL_40:
  v57 = 0;
  v78 = OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession;
  while (1)
  {
    if ((v55 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x231895C80](v57, v55);
    }

    else
    {
      if (v57 >= *(v55 + 16))
      {
        goto LABEL_50;
      }

      v58 = *(v55 + 8 * v57 + 32);
    }

    v59 = v58;
    v60 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v61 = *(v82 + v78);
    v62 = [v81 chatIdentifier];
    if (!v62)
    {
      break;
    }

    v63 = v62;
    v64 = sub_22B796FD0(v80);
    v65 = sub_22B7DB8F8();
    v64, v66, v67, v68, v69, v70, v71, v72, v73, v74;
    [v61 sendMessage:v59 toChat:v63 style:v79 destinationHandles:v65];

    ++v57;
    if (v60 == v56)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  sub_22B7DC448();
  __break(1u);
}

void sub_22B778F38(void *a1, void *a2)
{
  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_281422638);
  v6 = v2;
  v7 = a1;
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBCB8();

  if (os_log_type_enabled(v8, v9))
  {
    v35 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v6;
    *v11 = v6;
    *(v10 + 12) = 2080;
    v13 = v6;
    v14 = [v7 guid];

    if (!v14)
    {
      __break(1u);
      goto LABEL_15;
    }

    v15 = sub_22B7DB6A8();
    v17 = v16;

    v18 = sub_22B4CFAAC(v15, v17, &v36);
    v17, v19, v20, v21, v22, v23, v24, v25, v33, v34;
    *(v10 + 14) = v18;
    _os_log_impl(&dword_22B4CC000, v8, v9, "%@ handling message replacement of message: %s", v10, 0x16u);
    sub_22B4D0D64(v11, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v11, -1, -1);
    sub_22B4CFB78(v12);
    MEMORY[0x231898D60](v12, -1, -1);
    MEMORY[0x231898D60](v10, -1, -1);

    a2 = v35;
  }

  else
  {
  }

  if ([a2 scheduleType] == 2)
  {
    v26 = [a2 scheduleState];
    if (v26 <= 5)
    {
      if (((1 << v26) & 0x39) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_15:
    sub_22B7DC448();
    __break(1u);
    return;
  }

LABEL_10:
  v27 = v7;
  v28 = sub_22B7DB298();
  v29 = sub_22B7DBCB8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_22B4CC000, v28, v29, "%@ No longer a cancellable scheduled message, invalidating chat's scheduled states.", v30, 0xCu);
    sub_22B4D0D64(v31, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v31, -1, -1);
    MEMORY[0x231898D60](v30, -1, -1);
  }

  sub_22B775B98(a2);
}

void sub_22B779320(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B6F0AD4(&qword_27D8CEF10, &qword_22B7FBAD8);
    v2 = sub_22B7DC298();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v8 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    v12 = sub_22B7DC228();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v9 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v5 &= v5 - 1;
    v10 = *(v2 + 48) + 40 * v9;
    *(v10 + 32) = v22;
    *v10 = v20;
    *(v10 + 16) = v21;
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 56 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void *sub_22B7797BC()
{
  sub_22B4D01A0(0, &unk_27D8CEED0, 0x277CCAC30);
  sub_22B6F0AD4(&qword_27D8CD660, &unk_22B7F9760);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22B7F93A0;
  v1 = sub_22B7DB6A8();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  v4 = sub_22B704A5C();
  *(v0 + 64) = v4;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v5 = sub_22B7DA8B8();
  v6 = sub_22B4D01A0(0, &qword_27D8CD668, 0x277CBEAA8);
  *(v0 + 96) = v6;
  v7 = sub_22B77E19C(&qword_27D8CEEE0, &qword_27D8CD668, 0x277CBEAA8, MEMORY[0x277D85388]);
  *(v0 + 104) = v7;
  *(v0 + 72) = v5;
  v8 = sub_22B7DBC58();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22B7F93A0;
  v10 = sub_22B7DB6A8();
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = v4;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v12 = sub_22B7DA8B8();
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  *(v9 + 72) = v12;
  v13 = sub_22B7DBC58();
  v14 = [v40 predicate];
  sub_22B6F0AD4(&unk_27D8CD970, &qword_22B7FB330);
  v15 = swift_allocObject();
  if (v14)
  {
    *(v15 + 16) = xmmword_22B7F9610;
    *(v15 + 32) = v14;
    *(v15 + 40) = v8;
    *(v15 + 48) = v13;
    v16 = v14;
    v17 = v8;
    v18 = v13;
    v19 = sub_22B7DB8F8();
    v15, v20, v21, v22, v23, v24, v25, v26, 2, 4;
    v27 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v40 setPredicate_];
    v28 = v40;
  }

  else
  {
    *(v15 + 16) = xmmword_22B7FBA60;
    *(v15 + 32) = v8;
    *(v15 + 40) = v13;
    v18 = v8;
    v16 = v13;
    v29 = sub_22B7DB8F8();
    v15, v30, v31, v32, v33, v34, v35, v36, 2, 4;
    v37 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v40 setPredicate_];
    v38 = v40;
  }

  return v40;
}

id sub_22B779CC0()
{
  v1 = v0;
  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422638);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Notified about leaving dataProtection lock", v5, 2u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  return [v1 updateTimerForTimeInterval_];
}

uint64_t sub_22B779E08(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v7 = sub_22B6F0AD4(&qword_27D8CEF28, &qword_22B7FBAE8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v21 = type metadata accessor for ScheduledMessageBlocklistController();
  v22 = &off_283F20C90;
  v20[0] = a3;
  swift_unknownObjectWeakInit();
  *(a4 + 72) = MEMORY[0x277D84FA0];
  swift_unknownObjectWeakAssign();
  *(a4 + 24) = a2;
  sub_22B4D0DE8(v20, a4 + 32);
  sub_22B4D2BCC(v20, v21);
  v15 = a2;
  v19 = sub_22B7C841C();
  v17 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  sub_22B6F0AD4(&qword_27D8CEF30, &qword_22B7FBAF0);
  sub_22B6F0AD4(&unk_27D8CEF38, &qword_22B7FBAF8);
  sub_22B714FD8(&qword_28141F350, &qword_27D8CEF30, &qword_22B7FBAF0, MEMORY[0x277CBCE48]);
  sub_22B7DB318();

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22B77E234;
  *(v12 + 24) = v11;
  sub_22B714FD8(&qword_27D8CEF48, &qword_27D8CEF28, &qword_22B7FBAE8, MEMORY[0x277CBCC28]);
  sub_22B7DB328();

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  sub_22B7DB2C8();
  swift_endAccess();

  sub_22B4CFB78(v20);
  return a4;
}

unint64_t *sub_22B77A170(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B7DC1C8())
  {
    v12 = sub_22B4D01A0(0, a2, a3);
    v13 = sub_22B77E19C(a4, a2, a3, MEMORY[0x277D85378]);
    result = MEMORY[0x231895490](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x231895C80](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_22B7DC1C8();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22B77A2DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x231895490](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v16 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22B7C9068(v15, v6, v5);
      v15[1], v7, v8, v9, v10, v11, v12, v13, v14, v15[0];
      v4 += 2;
      --v2;
    }

    while (v2);
    return v16;
  }

  return result;
}

uint64_t sub_22B77A374(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22B6F0AD4(&qword_27D8CD7B0, &qword_22B7FBB10);
  v4 = sub_22B77E2F0();
  result = MEMORY[0x231895490](v2, v3, v4);
  v18 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_22B7C91B8(v17, v8, v7);
      v17[1], v9, v10, v11, v12, v13, v14, v15, v16, v17[0];
      v6 += 2;
      --v2;
    }

    while (v2);
    return v18;
  }

  return result;
}

id sub_22B77A420(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 setScheduleState_];
  [a1 setCloudKitSyncState_];
  v6 = objc_opt_self();
  v7 = sub_22B7DB678();
  [v6 notifyPeersWithScheduledMessageUpdate:v7 scheduleState:5];

  v8 = *(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
  v9 = [v8 storeMessage:a1 forceReplace:1 modifyError:1 modifyFlags:1 flagMask:{objc_msgSend(a1, sel_flags)}];
  v10 = [v8 chatForMessage_];
  if (!v10)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v16 = sub_22B7DB2B8();
    sub_22B4CFA74(v16, qword_281422638);
    v11 = v9;
    v17 = sub_22B7DB298();
    v18 = sub_22B7DBC98();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v11;
      *v20 = v11;
      v21 = v11;
      _os_log_impl(&dword_22B4CC000, v17, v18, "Failed to find chat for message: %@", v19, 0xCu);
      sub_22B4D0D64(v20, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v20, -1, -1);
      MEMORY[0x231898D60](v19, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
    goto LABEL_14;
  }

  v11 = v10;
  v12 = [v9 accountID];
  if (!v12)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v23 = sub_22B7DB2B8();
    sub_22B4CFA74(v23, qword_281422638);
    v24 = sub_22B7DB298();
    v25 = sub_22B7DBC98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22B4CC000, v24, v25, "Failed to find accountID from message.", v26, 2u);
      MEMORY[0x231898D60](v26, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();

LABEL_14:
    return v9;
  }

  v13 = v12;
  v14 = [*(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession) broadcasterForChatListeners];
  v15 = [v11 chatIdentifier];
  [v14 account:v13 chat:v15 style:objc_msgSend(v11 messageUpdated:{sel_style), v9}];

  swift_unknownObjectRelease();
  return v9;
}

void sub_22B77A808(uint64_t a1, IMDScheduledMessageCoordinator *a2, char a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
  v10 = sub_22B7DB678();
  v144 = [v9 messageWithGUID_];

  v11 = sub_22B7DB678();
  v145 = [v9 chatForMessageGUID_];

  if (!v144)
  {
    goto LABEL_26;
  }

  if (v145)
  {
    if (a3)
    {
      if ((a4 - 3) < 2)
      {
        v12 = v4;
        v13 = qword_28141F378;
        v14 = v144;
        v15 = v145;
        if (v13 != -1)
        {
          swift_once();
        }

        v16 = sub_22B7DB2B8();
        sub_22B4CFA74(v16, qword_281422638);
        v17 = v14;
        v18 = sub_22B7DB298();
        v19 = sub_22B7DBCB8();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412290;
          *(v20 + 4) = v17;
          *v21 = v144;
          v22 = v17;
          _os_log_impl(&dword_22B4CC000, v18, v19, "Cancelled scheduled message: %@", v20, 0xCu);
          sub_22B4D0D64(v21, &unk_27D8CEC60, &qword_22B7F9E20);
          MEMORY[0x231898D60](v21, -1, -1);
          MEMORY[0x231898D60](v20, -1, -1);
        }

        a2, v93, v94, v95, v96, v97, v98, v99, v131, v137;
        goto LABEL_34;
      }

      if (a4 != 1)
      {
        v91 = v144;
        v92 = v145;
LABEL_34:
        sub_22B777DD8(v145);

        return;
      }

      sub_22B6F0AD4(qword_27D8CFA50, &qword_22B7FBB08);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_22B7F93B0;
      *(v27 + 56) = MEMORY[0x277D837D0];
      *(v27 + 32) = a1;
      *(v27 + 40) = a2;

      v28 = v144;
      v143 = v145;
      v29 = sub_22B7DB8F8();
      v27, v30, v31, v32, v33, v34, v35, v36, v131, v137;
      v37 = [v9 deleteMessageGUIDs_];

      v38 = sub_22B7DB918();
      v39 = sub_22B774E70(v38);
      v38, v40, v41, v42, v43, v44, v45, v46, v132, v138;
      if (v39)
      {
        v139 = v4;
        if (qword_28141F378 != -1)
        {
          swift_once();
        }

        v47 = sub_22B7DB2B8();
        sub_22B4CFA74(v47, qword_281422638);

        v48 = sub_22B7DB298();
        v49 = sub_22B7DBCB8();
        v39, v50, v51, v52, v53, v54, v55, v56, v133, v139;
        if (os_log_type_enabled(v48, v49))
        {
          v57 = swift_slowAlloc();
          v58 = v28;
          v59 = swift_slowAlloc();
          v146 = v59;
          *v57 = 136315138;
          v60 = MEMORY[0x2318952A0](v39, MEMORY[0x277D837D0]);
          v62 = v61;
          v63 = sub_22B4CFAAC(v60, v61, &v146);
          v62, v64, v65, v66, v67, v68, v69, v70, v134, v140;
          *(v57 + 4) = v63;
          _os_log_impl(&dword_22B4CC000, v48, v49, "Cancelled & deleted Scheduled message: %s", v57, 0xCu);
          sub_22B4CFB78(v59);
          v71 = v59;
          v28 = v58;
          MEMORY[0x231898D60](v71, -1, -1);
          MEMORY[0x231898D60](v57, -1, -1);
        }

        v72 = [objc_opt_self() sharedProvider];
        v80 = v140;
        if (v72)
        {
          v81 = [v72 broadcasterForChatListeners];
          swift_unknownObjectRelease();
          v82 = sub_22B7DB8F8();
          v39, v83, v84, v85, v86, v87, v88, v89, v134, v140;
          [v81 historicalMessageGUIDsDeleted:v82 chatGUIDs:0 queryID:0];

          swift_unknownObjectRelease();
        }

        else
        {
          v39, v73, v74, v75, v76, v77, v78, v79, v134, v140;
        }

        sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22B7F97B0;
        *(inited + 32) = sub_22B7DB6A8();
        *(inited + 40) = v102;
        sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_22B7F93B0;
        *(v103 + 32) = a1;
        *(v103 + 40) = a2;
        *(inited + 72) = sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
        *(inited + 48) = v103;
        *(inited + 80) = sub_22B7DB6A8();
        *(inited + 88) = v104;
        v105 = MEMORY[0x277D839B0];
        *(inited + 120) = MEMORY[0x277D839B0];
        *(inited + 96) = 1;
        *(inited + 128) = sub_22B7DB6A8();
        *(inited + 136) = v106;
        *(inited + 168) = v105;
        *(inited + 144) = 1;

        v107 = sub_22B71DF98(inited);
        swift_setDeallocating();
        sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
        swift_arrayDestroy();
        v108 = *&v80[OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession];
        sub_22B7B0AC8(v107);
        v110 = v109;
        v107, v111, v112, v113, v114, v115, v116, v117, v135, v141;
        v118 = sub_22B7DB568();
        v110, v119, v120, v121, v122, v123, v124, v125, v136, v142;
        v126 = [v143 guid];
        [v108 sendDeleteCommand:v118 forChatGUID:v126];

        v127 = [v28 cloudKitRecordID];
        if (v127)
        {
          v128 = v127;
          v129 = [objc_opt_self() synchronousDatabase];
          v130 = sub_22B7DB678();
          [v129 addScheduledMessageGUIDandCKRecordToDeleteFromCloudKit:v130 recordID:v128];
          swift_unknownObjectRelease();
        }

        goto LABEL_34;
      }

      sub_22B777DD8(v143);

      v100 = v143;
      goto LABEL_27;
    }

    v23 = v144;
    v24 = v23;
    if (a4 == 1)
    {
      v25 = v23;
      v26 = v145;
    }

    else
    {
      v90 = v145;
    }

    sub_22B777DD8(v145);

LABEL_26:
    v100 = v145;
LABEL_27:

    return;
  }

  MEMORY[0x2821F96F8]();
}

id sub_22B77B2D0(void *a1, uint64_t a2, id a3, void *a4)
{
  v6 = a3;
  sub_22B775808(a1, a3, a4);
  if (v4)
  {
    goto LABEL_16;
  }

  v9 = *(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
  v5 = [v9 storeMessage:a1 forceReplace:1 modifyError:1 modifyFlags:1 flagMask:{objc_msgSend(a1, sel_flags)}];
  v10 = [v9 chatForMessage_];
  if (!v10)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v16 = sub_22B7DB2B8();
    sub_22B4CFA74(v16, qword_281422638);
    v11 = v5;
    v17 = sub_22B7DB298();
    v18 = sub_22B7DBC98();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v11;
      *v20 = v11;
      v21 = v11;
      _os_log_impl(&dword_22B4CC000, v17, v18, "Failed to find chat for message: %@", v19, 0xCu);
      sub_22B4D0D64(v20, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v20, -1, -1);
      MEMORY[0x231898D60](v19, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
    v5 = v6;
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v5 accountID];
  if (!v12)
  {
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v23 = sub_22B7DB2B8();
    sub_22B4CFA74(v23, qword_281422638);
    v24 = sub_22B7DB298();
    v25 = sub_22B7DBC98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22B4CC000, v24, v25, "Failed to find accountID from message.", v26, 2u);
      MEMORY[0x231898D60](v26, -1, -1);
    }

    sub_22B77E1E0();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();

LABEL_15:
    v6 = v11;
LABEL_16:

    return v5;
  }

  v13 = v12;
  v14 = [*(a2 + OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession) broadcasterForChatListeners];
  v15 = [v11 chatIdentifier];
  [v14 account:v13 chat:v15 style:objc_msgSend(v11 messageUpdated:{sel_style), v5}];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_22B77B67C(void *a1)
{
  v2 = sub_22B7DAA58();
  v67 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B6F0AD4(&qword_27D8CEF50, &unk_22B7F9770);
  MEMORY[0x28223BE20](v5);
  v7 = &v65 - v6;
  v8 = sub_22B7DAAB8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v65 - v12;
  v13 = sub_22B6F0AD4(&qword_27D8CEF58, &qword_22B7FBB00);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v65 - v18;
  MEMORY[0x28223BE20](v17);
  v70 = &v65 - v20;
  v71 = a1;
  v21 = [a1 editedPartIndexes];
  if (v21)
  {
    v22 = v21;
    sub_22B7DAA88();

    (*(v9 + 56))(v19, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v19, 1, 1, v8);
  }

  v23 = v19;
  v24 = v70;
  sub_22B6FC80C(v23, v70, &qword_27D8CEF58, &qword_22B7FBB00);
  sub_22B4D7E58(v24, v16, &qword_27D8CEF58, &qword_22B7FBB00);
  v25 = (*(v9 + 48))(v16, 1, v8);
  v26 = v8;
  v27 = v9;
  if (v25 != 1)
  {
    v66 = v9;
    v29 = *(v9 + 32);
    v72 = v26;
    v29(v69, v16, v26);
    sub_22B7DAA68();
    sub_22B77E294(&unk_27D8CEF60, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
    v30 = (v67 + 8);
    v28 = v71;
    while (1)
    {
      do
      {
        v26 = v72;
        sub_22B7DBB88();
        sub_22B77E294(&qword_27D8CD678, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
        v31 = sub_22B7DB658();
        (*v30)(v4, v2);
        if (v31)
        {
          sub_22B4D0D64(v7, &qword_27D8CEF50, &unk_22B7F9770);
          v27 = v66;
          (v66)[1](v69, v26);
          v24 = v70;
          goto LABEL_24;
        }

        v32 = sub_22B7DBC28();
        v34 = *v33;
        v32(v73, 0);
        sub_22B7DBB98();
        v35 = [v28 historyForMessagePart_];
      }

      while (!v35);
      v36 = v35;
      sub_22B4D01A0(0, &qword_27D8CEF70, 0x277D1AA90);
      v37 = sub_22B7DB918();

      if (v37 >> 62)
      {
        result = sub_22B7DC1C8();
        if (!result)
        {
          goto LABEL_7;
        }

LABEL_12:
        if ((v37 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x231895C80](0, v37);
        }

        else
        {
          if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v46 = *(v37 + 32);
        }

        v54 = v46;
        v37, v47, v48, v49, v50, v51, v52, v53, v65, v66;
        v55 = [v54 messagePartText];

        if (v55)
        {
          v56 = [v28 body];
          if (v56)
          {
            v57 = v56;
            v58 = [v56 __im_messageTextByReplacingMessagePartIndex_withNewPartText_];
          }

          else
          {
            v58 = 0;
          }

          v28 = v71;
          [v71 setBody_];
        }
      }

      else
      {
        result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_12;
        }

LABEL_7:
        v37, v38, v39, v40, v41, v42, v43, v44, v65, v66;
      }
    }
  }

  sub_22B4D0D64(v16, &qword_27D8CEF58, &qword_22B7FBB00);
  v28 = v71;
LABEL_24:
  v59 = v68;
  sub_22B7DAAA8();
  v60 = sub_22B7DAA78();
  v61 = v27[1];
  v61(v59, v26);
  [v28 setEditedPartIndexes_];

  sub_22B7DAAA8();
  v62 = sub_22B7DAA78();
  v61(v59, v26);
  [v28 setRetractedPartIndexes_];

  sub_22B7DAAA8();
  v63 = sub_22B7DAA78();
  v61(v59, v26);
  [v28 setFailedRetractPartIndexes_];

  sub_22B7DAAA8();
  v64 = sub_22B7DAA78();
  v61(v59, v26);
  [v28 setFailedEditPartIndexes_];

  return sub_22B4D0D64(v24, &qword_27D8CEF58, &qword_22B7FBB00);
}

void sub_22B77BDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v175 = *MEMORY[0x277D85DE8];
  v4 = sub_22B71DF98(MEMORY[0x277D84F90]);
  v174 = MEMORY[0x277D83E88];
  *&v173 = a3;
  sub_22B4D7F04(&v173, v172);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22B769174(v172, 29555, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  sub_22B7B0AC8(v4);
  v7 = v6;
  v8 = sub_22B7DB568();
  v7, v9, v10, v11, v12, v13, v14, v15, v154, v161;
  v16 = JWEncodeDictionary();

  if (!v16)
  {
    __break(1u);
LABEL_40:
    __break(1u);
  }

  v17 = [v16 _FTCopyGzippedData];
  if (!v17)
  {
    goto LABEL_40;
  }

  v18 = v17;
  v170 = sub_22B7DA848();
  v171 = v19;

  sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7FBA70;
  *(inited + 32) = sub_22B7DB6A8();
  *(inited + 40) = v21;
  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 72) = sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
  *(inited + 48) = v22;
  *(inited + 80) = sub_22B7DB6A8();
  *(inited + 88) = v23;
  v24 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  *(inited + 128) = sub_22B7DB6A8();
  *(inited + 136) = v25;
  *(inited + 168) = v24;
  *(inited + 144) = 1;
  *(inited + 176) = sub_22B7DB6A8();
  *(inited + 184) = v26;
  *(inited + 216) = v24;
  *(inited + 192) = 1;
  *(inited + 224) = sub_22B7DB6A8();
  *(inited + 232) = v27;
  v28 = sub_22B7DB678();
  v29 = IDSGetUUIDData();

  if (v29)
  {
    v30 = sub_22B7DA848();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xF000000000000000;
  }

  *(inited + 264) = sub_22B6F0AD4(&qword_27D8CEEF8, &qword_22B7FBAC8);
  *(inited + 240) = v30;
  *(inited + 248) = v32;
  *(inited + 272) = sub_22B7DB6A8();
  *(inited + 280) = v33;
  *(inited + 312) = MEMORY[0x277CC9318];
  *(inited + 288) = v170;
  *(inited + 296) = v171;
  *(inited + 320) = sub_22B7DB6A8();
  *(inited + 328) = v34;
  v35 = *MEMORY[0x277D18828];
  *(inited + 360) = MEMORY[0x277D839F8];
  *(inited + 336) = v35;
  *(inited + 368) = sub_22B7DB6A8();
  *(inited + 376) = v36;
  *(inited + 408) = v24;
  *(inited + 384) = 0;
  sub_22B705E44(v170, v171);
  v37 = sub_22B71DF98(inited);
  swift_setDeallocating();
  sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
  swift_arrayDestroy();
  sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_22B7F93B0;
  *(v38 + 32) = sub_22B7DB6A8();
  *(v38 + 40) = v39;
  v40 = sub_22B7179DC(v38);
  swift_setDeallocating();
  sub_22B74763C(v38 + 32);
  v41 = sub_22B7DB6A8();
  v43 = v42;
  v174 = sub_22B6F0AD4(&qword_27D8CEF00, &qword_22B7FBAD0);
  *&v173 = v40;
  sub_22B4D7F04(&v173, v172);

  v44 = swift_isUniquelyReferenced_nonNull_native();
  sub_22B769174(v172, v41, v43, v44);
  v43, v45, v46, v47, v48, v49, v50, v51, v155, v162;
  v52 = v37;
  v53 = [objc_allocWithZone(MEMORY[0x277D18778]) initWithService_];
  if (v53)
  {
    v54 = v53;
    *&v172[0] = MEMORY[0x277D84FA0];
    v55 = [v53 devices];
    if (!v55)
    {
      __break(1u);
      return;
    }

    v63 = v55;
    v40, v56, v57, v58, v59, v60, v61, v62, v156, v163;
    sub_22B4D01A0(0, &qword_27D8CEF08, 0x277D186E0);
    v64 = sub_22B7DB918();

    v164 = v16;
    if (v64 >> 62)
    {
      v72 = sub_22B7DC1C8();
      if (!v72)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v72 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v72)
      {
        goto LABEL_24;
      }
    }

    if (v72 >= 1)
    {
      for (i = 0; i != v72; ++i)
      {
        if ((v64 & 0xC000000000000001) != 0)
        {
          v85 = MEMORY[0x231895C80](i, v64);
        }

        else
        {
          v85 = *(v64 + 8 * i + 32);
        }

        v86 = v85;
        v87 = IDSCopyIDForDevice();
        if (v87)
        {
          v74 = v87;
          v75 = sub_22B7DB6A8();
          v77 = v76;

          sub_22B7C9068(&v173, v75, v77);
          *(&v173 + 1), v78, v79, v80, v81, v82, v83, v84, v157, v164;
        }

        else
        {
        }
      }

LABEL_24:
      v64, v65, v66, v67, v68, v69, v70, v71, v157, v164;
      v99 = *&v172[0];
      if (*(*&v172[0] + 16))
      {
        v100 = objc_opt_self();
        v101 = v54;
        v102 = sub_22B7DB568();
        sub_22B779320(v99);
        v104 = v103;
        v99, v105, v106, v107, v108, v109, v110, v111, v158, v165;
        v112 = sub_22B7DBAE8();
        v104, v113, v114, v115, v116, v117, v118, v119, v159, v166;
        sub_22B7B0AC8(v52);
        v121 = v120;

        v122 = sub_22B7DB568();
        v121, v123, v124, v125, v126, v127, v128, v129, v160, v167;
        *&v173 = 0;
        v130 = [v100 service:v101 sendMessage:v102 toDestinations:v112 priority:300 options:v122 identifier:0 error:&v173];

        if (v130)
        {
          v131 = qword_28141F378;
          v132 = v173;
          if (v131 != -1)
          {
            swift_once();
          }

          v133 = sub_22B7DB2B8();
          sub_22B4CFA74(v133, qword_281422638);
          v134 = sub_22B7DB298();
          v135 = sub_22B7DBCB8();
          if (os_log_type_enabled(v134, v135))
          {
            v136 = swift_slowAlloc();
            *v136 = 0;
            _os_log_impl(&dword_22B4CC000, v134, v135, "IDS successfully sent scheduleState Update to peer devices", v136, 2u);
            MEMORY[0x231898D60](v136, -1, -1);
          }

          sub_22B705E98(v170, v171);
        }

        else
        {
          v144 = v173;
          v145 = sub_22B7DA6F8();

          swift_willThrow();
          if (qword_28141F378 != -1)
          {
            swift_once();
          }

          v146 = sub_22B7DB2B8();
          sub_22B4CFA74(v146, qword_281422638);
          v147 = v145;
          v148 = sub_22B7DB298();
          v149 = sub_22B7DBC98();

          if (os_log_type_enabled(v148, v149))
          {
            v150 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            *v150 = 138412290;
            v152 = v145;
            v153 = _swift_stdlib_bridgeErrorToNSError();
            *(v150 + 4) = v153;
            *v151 = v153;
            _os_log_impl(&dword_22B4CC000, v148, v149, "IDS failed to send scheduleState Update to peer devices, error %@", v150, 0xCu);
            sub_22B4D0D64(v151, &unk_27D8CEC60, &qword_22B7F9E20);
            MEMORY[0x231898D60](v151, -1, -1);
            MEMORY[0x231898D60](v150, -1, -1);
            sub_22B705E98(v170, v171);
          }

          else
          {
            sub_22B705E98(v170, v171);
          }
        }
      }

      else
      {

        sub_22B705E98(v170, v171);
        v99, v137, v138, v139, v140, v141, v142, v143, v158, v165;
      }

      return;
    }

    __break(1u);
    goto LABEL_38;
  }

  v40, v88, v89, v90, v91, v92, v93, v94, v156, v163;
  if (qword_28141F378 != -1)
  {
LABEL_38:
    swift_once();
  }

  v95 = sub_22B7DB2B8();
  sub_22B4CFA74(v95, qword_281422638);
  v96 = sub_22B7DB298();
  v97 = sub_22B7DBC98();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&dword_22B4CC000, v96, v97, "Could not get IDSService for iMessage", v98, 2u);
    MEMORY[0x231898D60](v98, -1, -1);
  }

  sub_22B705E98(v170, v171);
}

void sub_22B77C7AC(void *a1, void *a2, IMDScheduledMessageCoordinator *a3, int a4)
{
  v5 = v4;
  v10 = sub_22B7DA968();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 scheduleType] == 2 && (objc_msgSend(a1, sel_scheduleState) == 1 || objc_msgSend(a1, sel_scheduleState) == 2))
  {
    v48 = a4;
    if (qword_28141F378 != -1)
    {
      swift_once();
    }

    v14 = sub_22B7DB2B8();
    v15 = sub_22B4CFA74(v14, qword_281422638);
    v16 = a1;
    v47 = v15;
    v17 = sub_22B7DB298();
    v18 = sub_22B7DBCB8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v46 = v5;
      v21 = a3;
      v22 = a2;
      v23 = v20;
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v24 = v16;
      _os_log_impl(&dword_22B4CC000, v17, v18, "Received sending message %@", v19, 0xCu);
      sub_22B4D0D64(v23, &unk_27D8CEC60, &qword_22B7F9E20);
      v25 = v23;
      a2 = v22;
      a3 = v21;
      v5 = v46;
      MEMORY[0x231898D60](v25, -1, -1);
      MEMORY[0x231898D60](v19, -1, -1);
    }

    v26 = [v16 time];
    if (v26)
    {
      v27 = v26;
      sub_22B7DA928();

      sub_22B7DA8E8();
      v29 = v28;
      (*(v11 + 8))(v13, v10);
      [v5 updateTimerForTimeInterval_];

      v30 = v48;
      v31 = *&v5[OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession];
      v32 = sub_22B7DB678();
      v33 = [v31 chatForChatIdentifier:v32 style:v30 updatingAccount:1];

      if (v33)
      {
        sub_22B777DD8(v33);
      }

      else
      {

        v34 = sub_22B7DB298();
        v35 = sub_22B7DBC98();
        a3, v36, v37, v38, v39, v40, v41, v42, v45, v46;
        if (os_log_type_enabled(v34, v35))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v49 = v44;
          *v43 = 136315138;
          *(v43 + 4) = sub_22B4CFAAC(a2, a3, &v49);
          _os_log_impl(&dword_22B4CC000, v34, v35, "Failed to find chat with identifier: %s when trying to update hasCancellableScheduledMessage", v43, 0xCu);
          sub_22B4CFB78(v44);
          MEMORY[0x231898D60](v44, -1, -1);
          MEMORY[0x231898D60](v43, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_22B77CCA4(int a1, void *a2, IMDScheduledMessageCoordinator *a3, unsigned __int8 a4)
{
  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v9 = sub_22B7DB2B8();
  sub_22B4CFA74(v9, qword_281422638);

  v10 = sub_22B7DB298();
  v11 = sub_22B7DBCB8();
  a3, v12, v13, v14, v15, v16, v17, v18, v34, v36;
  if (os_log_type_enabled(v10, v11))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v36 = v20;
    *v19 = 67109378;
    *(v19 + 4) = a1;
    *(v19 + 8) = 2080;
    *(v19 + 10) = sub_22B4CFAAC(a2, a3, &v36);
    _os_log_impl(&dword_22B4CC000, v10, v11, "Received updated chatStatus: %d for chatIdentifier: %s", v19, 0x12u);
    sub_22B4CFB78(v20);
    MEMORY[0x231898D60](v20, -1, -1);
    MEMORY[0x231898D60](v19, -1, -1);
  }

  if ((a1 + 1) <= 6 && ((1 << (a1 + 1)) & 0x73) != 0)
  {
    v21 = *(v4 + OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession);
    v22 = sub_22B7DB678();
    v23 = [v21 chatForChatIdentifier:v22 style:a4 updatingAccount:1];

    if (v23)
    {
      v24 = v23;
      sub_22B7730B8(v24, 3, v25, v26, v27, v28, v29, v30, v24, v36);
    }

    else
    {
      v35 = sub_22B7DB298();
      v31 = sub_22B7DBC98();
      if (os_log_type_enabled(v35, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = 0;
        *v33 = 0;
        _os_log_impl(&dword_22B4CC000, v35, v31, "Could not get chat for identifier %@", v32, 0xCu);
        sub_22B4D0D64(v33, &unk_27D8CEC60, &qword_22B7F9E20);
        MEMORY[0x231898D60](v33, -1, -1);
        MEMORY[0x231898D60](v32, -1, -1);
      }
    }
  }
}

void sub_22B77CF84(void *a1, unint64_t a2, NSObject *a3, int a4)
{
  LODWORD(v182) = a4;
  v180 = a2;
  v181 = a3;
  v186 = a1;
  v4 = sub_22B6F0AD4(&qword_27D8CEEB0, &qword_22B7FBAB0);
  v175 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v162 - v5;
  v7 = sub_22B6F0AD4(&qword_27D8CEEB8, &qword_22B7FBAB8);
  v173 = *(v7 - 8);
  v174 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v172 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v178 = &v162 - v10;
  v177 = sub_22B6F0AD4(&qword_27D8CD5F8, &qword_22B7FBAC0);
  v11 = MEMORY[0x28223BE20](v177);
  v13 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v162 - v14;
  v169 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  MEMORY[0x28223BE20](v169);
  v171 = &v162 - v16;
  v17 = sub_22B7DA968();
  v18 = *(v17 - 8);
  v184 = v17;
  v185 = v18;
  v19 = MEMORY[0x28223BE20](v17);
  v165 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v167 = (&v162 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v166 = &v162 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v168 = &v162 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v170 = &v162 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v162 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v179 = &v162 - v33;
  MEMORY[0x28223BE20](v32);
  v176 = &v162 - v34;
  v35 = sub_22B7DAAB8();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = (&v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v41 = &v162 - v40;
  if ([v186 scheduleType] != 2)
  {
    goto LABEL_53;
  }

  v42 = [v186 editedPartIndexes];
  if (v42)
  {
    v43 = v42;
    sub_22B7DAA88();

    LOBYTE(v43) = sub_22B7DAA98();
    (*(v36 + 8))(v41, v35);
    if ((v43 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v44 = [v186 retractedPartIndexes];
  if (v44)
  {
    v45 = v44;
    sub_22B7DAA88();

    LOBYTE(v45) = sub_22B7DAA98();
    (*(v36 + 8))(v39, v35);
    if ((v45 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v46 = *(v183 + OBJC_IVAR___IMDScheduledMessageCoordinator_serviceSession);
  v47 = sub_22B7DB678();
  v48 = [v46 chatForChatIdentifier:v47 style:v182 updatingAccount:1];

  if (!v48)
  {
    goto LABEL_53;
  }

  v49 = [v186 time];
  if (v49)
  {
    v182 = v13;
    v50 = v176;
    v51 = v49;
    sub_22B7DA928();

    v52 = v179;
    sub_22B7DA8A8();
    v53 = *(v183 + OBJC_IVAR___IMDScheduledMessageCoordinator_messageStore);
    v164 = v48;
    v54 = [v48 guid];
    v183 = [v53 scheduledMessagesBatchFetcherForChat_];

    sub_22B77E294(&qword_281420E90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v55 = v184;
    if (sub_22B7DB618())
    {
      v57 = v185;
      v58 = (v185 + 16);
      v59 = *(v185 + 16);
      v59(v15, v50, v55);
      v60 = v177;
      v61 = &v15[v177[12]];
      v163 = v58;
      v162 = v59;
      v59(v61, v52, v55);
      v62 = v182;
      sub_22B4D7E58(v15, v182, &qword_27D8CD5F8, &qword_22B7FBAC0);
      v63 = *(v57 + 32);
      v180 = v60[12];
      v181 = v63;
      v64 = v171;
      (v63)(v171, v62, v55);
      v65 = *(v57 + 8);
      v65(&v62[v180], v55);
      sub_22B6FC80C(v15, v62, &qword_27D8CD5F8, &qword_22B7FBAC0);
      (v181)(v64 + *(v169 + 36), &v62[v177[12]], v55);
      v185 = v57 + 8;
      v182 = v65;
      v65(v62, v55);
      v66 = v183;
      v48 = sub_22B7797BC();

      sub_22B4D0D64(v64, &unk_27D8CEEC0, &qword_22B7FA060);
      sub_22B4D01A0(0, &unk_28141F240, 0x277D18ED0);
      sub_22B4D01A0(0, &qword_28141F0C8, 0x277D18ED8);
      v67 = v178;
      v177 = v48;
      sub_22B7DBD08();
      v183 = MEMORY[0x277D84F90];
      v188[0] = MEMORY[0x277D84F90];
      v68 = v173;
      v69 = v174;
      (*(v173 + 16))(v172, v67, v174);
      sub_22B714FD8(&qword_28141F450, &qword_27D8CEEB8, &qword_22B7FBAB8, MEMORY[0x277D19650]);
      sub_22B7DB8A8();
      v54 = sub_22B714FD8(&qword_28141F458, &qword_27D8CEEB0, &qword_22B7FBAB0, MEMORY[0x277D19608]);
      v15 = v170;
      while (1)
      {
        sub_22B7DC0B8();
        v70 = v187;
        if (!v187)
        {
          break;
        }

        v48 = sub_22B776A24();

        if (v48)
        {
          MEMORY[0x231895260]();
          if (*((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22B7DB938();
          }

          sub_22B7DB968();
          v183 = v188[0];
        }
      }

      (*(v175 + 8))(v6, v4);
      isa = v68[1].isa;
      v39 = v68 + 1;
      isa(v178, v69);
      v56 = v183;
      if (!(v183 >> 62))
      {
        v72 = v164;
        v181 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v73 = &selRef_smsRelayService;
        if (v181)
        {
          goto LABEL_17;
        }

        goto LABEL_52;
      }
    }

    else
    {
LABEL_50:
      __break(1u);
    }

    v148 = v56;
    v149 = sub_22B7DC1C8();
    v56 = v148;
    v72 = v164;
    v181 = v149;
    v73 = &selRef_smsRelayService;
    if (v149)
    {
LABEL_17:
      v180 = v56 & 0xC000000000000001;
      if ((v56 & 0xC000000000000001) != 0)
      {
        v74 = v56;
        v75 = MEMORY[0x231895C80](0);
      }

      else
      {
        if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_58;
        }

        v74 = v56;
        v75 = *(v56 + 32);
      }

      v54 = v75;
      if (v181 == 1)
      {
        v82 = v75;
        v56 = v74;
LABEL_36:
        v56, v56, v76, v77, v78, v79, v80, v81, v162, v163;
        v54 = v82;
        v90 = [v54 v73[257]];
        if (v90)
        {
          v91 = v90;
          v92 = v166;
          sub_22B7DA928();

          v31 = v168;
          sub_22B7DA8A8();
          v15 = v184;
          v93 = v182;
          (v182)(v92, v184);
          v6 = v179;
          v94 = sub_22B7DA8D8();
          v39 = v167;
          if ((v94 & 1) == 0)
          {

LABEL_46:
            (v93)(v31, v15);
            (v93)(v6, v15);
            (v93)(v176, v15);
            goto LABEL_53;
          }

          v73 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v95 = sub_22B7DB678();
          [(SEL *)v73 setDateFormat:v95];

          if (qword_28141F378 == -1)
          {
LABEL_39:
            v96 = sub_22B7DB2B8();
            sub_22B4CFA74(v96, qword_281422638);
            v162(v39, v31, v15);
            v97 = v186;
            v98 = v73;
            v48 = v97;
            v82 = v98;
            v99 = sub_22B7DB298();
            v100 = sub_22B7DBC98();
            if (!os_log_type_enabled(v99, v100))
            {

              v93 = v182;
              (v182)(v39, v15);
              goto LABEL_45;
            }

            LODWORD(v183) = v100;
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v188[0] = v102;
            *v101 = 136315650;
            v103 = [v48 guid];

            if (v103)
            {
              v180 = v102;
              v181 = v99;
              v104 = sub_22B7DB6A8();
              v106 = v105;

              v107 = sub_22B4CFAAC(v104, v106, v188);
              v106, v108, v109, v110, v111, v112, v113, v114, v162, v163;
              *(v101 + 4) = v107;
              *(v101 + 12) = 2080;
              v115 = [v48 time];

              if (v115)
              {
                v116 = v82;
                v117 = v165;
                sub_22B7DA928();

                v118 = sub_22B7DA8B8();
                v93 = v182;
                (v182)(v117, v184);
                v119 = [(SEL *)v116 stringFromDate:v118];

                v120 = sub_22B7DB6A8();
                v122 = v121;

                v123 = sub_22B4CFAAC(v120, v122, v188);
                v122, v124, v125, v126, v127, v128, v129, v130, v162, v163;
                *(v101 + 14) = v123;
                *(v101 + 22) = 2080;
                v131 = v167;
                v132 = sub_22B7DA8B8();
                v133 = [(SEL *)v116 stringFromDate:v132];

                v134 = sub_22B7DB6A8();
                v136 = v135;

                v15 = v184;
                (v93)(v131, v184);
                v137 = sub_22B4CFAAC(v134, v136, v188);
                v136, v138, v139, v140, v141, v142, v143, v144, v162, v163;
                *(v101 + 24) = v137;
                v145 = v181;
                _os_log_impl(&dword_22B4CC000, v181, v183, "Updating time of scheduled message: %s from %s to %s to maintain ordering", v101, 0x20u);
                v146 = v180;
                swift_arrayDestroy();
                MEMORY[0x231898D60](v146, -1, -1);
                MEMORY[0x231898D60](v101, -1, -1);

                v6 = v179;
                v31 = v168;
                v82 = v116;
LABEL_45:
                v147 = sub_22B7DA8B8();
                [v48 setTime_];

                goto LABEL_46;
              }

LABEL_63:
              __break(1u);
              return;
            }

LABEL_62:

            __break(1u);
            goto LABEL_63;
          }

LABEL_58:
          swift_once();
          goto LABEL_39;
        }
      }

      else
      {
        v56 = v74;
        v178 = (v74 & 0xFFFFFFFFFFFFFF8);
        v48 = 1;
        while (1)
        {
          if (v180)
          {
            v83 = MEMORY[0x231895C80](v48, v56);
          }

          else
          {
            if ((v48 & 0x8000000000000000) != 0)
            {
              goto LABEL_48;
            }

            if (v48 >= *(v178 + 2))
            {
              goto LABEL_49;
            }

            v83 = *(v56 + 8 * v48 + 32);
          }

          v82 = v83;
          v39 = (v48 + 1);
          if (__OFADD__(v48, 1))
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v84 = [v54 v73[257]];
          if (!v84)
          {
            goto LABEL_60;
          }

          v85 = v84;
          sub_22B7DA928();

          v86 = [v82 v73[257]];
          if (!v86)
          {
            break;
          }

          v87 = v86;
          sub_22B7DA928();

          v6 = sub_22B7DA8D8();
          v88 = v184;
          v89 = v182;
          (v182)(v15, v184);
          (v89)(v31, v88);
          if (v6)
          {

            v54 = v82;
            ++v48;
            v73 = &selRef_smsRelayService;
            v56 = v183;
            if (v39 == v181)
            {
              goto LABEL_36;
            }
          }

          else
          {

            ++v48;
            v73 = &selRef_smsRelayService;
            v56 = v183;
            if (v39 == v181)
            {
              v82 = v54;
              goto LABEL_36;
            }
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
      }

      __break(1u);
      goto LABEL_62;
    }

LABEL_52:
    v150 = v56;

    v150, v151, v152, v153, v154, v155, v156, v157, v162, v163;
    v158 = v184;
    v159 = v182;
    (v182)(v179, v184);
    (v159)(v176, v158);
    goto LABEL_53;
  }

LABEL_53:
  v160 = v186;

  v161 = v160;
}

void sub_22B77E01C(void *a1, const char *a2, ...)
{
  if (qword_28141F378 != -1)
  {
    swift_once();
  }

  v5 = sub_22B7DB2B8();
  sub_22B4CFA74(v5, qword_281422638);
  v6 = v2;
  v7 = a1;
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBCB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v6;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v6;
    v11[1] = v7;
    v12 = v6;
    v13 = v7;
    _os_log_impl(&dword_22B4CC000, v8, v9, a2, v10, 0x16u);
    sub_22B6F0AD4(&unk_27D8CEC60, &qword_22B7F9E20);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v11, -1, -1);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  sub_22B7730B8(v7, 1, v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_22B77E19C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
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

unint64_t sub_22B77E1E0()
{
  result = qword_27D8CEEF0;
  if (!qword_27D8CEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEEF0);
  }

  return result;
}

uint64_t sub_22B77E294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22B77E2F0()
{
  result = qword_27D8CEF78;
  if (!qword_27D8CEF78)
  {
    sub_22B6FB8C4(&qword_27D8CD7B0, &qword_22B7FBB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEF78);
  }

  return result;
}

unint64_t sub_22B77E380()
{
  result = qword_27D8CEF90;
  if (!qword_27D8CEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEF90);
  }

  return result;
}

uint64_t sub_22B77E3D4(uint64_t a1, IMDScheduledMessageCoordinator *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  sub_22B4D7E58(a3, &v32 - v10, &qword_27D8CD5C0, &qword_22B7F8CF0);
  v12 = sub_22B7DBA58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B4D0D64(v11, &qword_27D8CD5C0, &qword_22B7F8CF0);
  }

  else
  {
    sub_22B7DBA48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22B7DB9C8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22B7DB6F8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v36[0] = 0;
        v36[1] = 0;
        v21 = v36;
        v36[2] = v16;
        v36[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v33 = 7;
      v34 = v21;
      v35 = v19;
      v23 = swift_task_create();

      sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
      a2, v24, v25, v26, v27, v28, v29, v30, v32, v33;

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v36[4] = 0;
    v36[5] = 0;
    v36[6] = v16;
    v36[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_22B77E6D4(uint64_t a1, IMDScheduledMessageCoordinator *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  sub_22B4D7E58(a3, &v32 - v10, &qword_27D8CD5C0, &qword_22B7F8CF0);
  v12 = sub_22B7DBA58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B4D0D64(v11, &qword_27D8CD5C0, &qword_22B7F8CF0);
  }

  else
  {
    sub_22B7DBA48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22B7DB9C8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22B7DB6F8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v36[0] = 0;
        v36[1] = 0;
        v21 = v36;
        v36[2] = v16;
        v36[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v33 = 7;
      v34 = v21;
      v35 = v19;
      v23 = swift_task_create();

      sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
      a2, v24, v25, v26, v27, v28, v29, v30, v32, v33;

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B4D0D64(a3, &qword_27D8CD5C0, &qword_22B7F8CF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v36[4] = 0;
    v36[5] = 0;
    v36[6] = v16;
    v36[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_22B77E9CC(uint64_t a1, void *a2)
{
  v3 = sub_22B4D2BCC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_22B77EA30()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F4D0);
  sub_22B4CFA74(v0, qword_28141F4D0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B77EA9C()
{
  v0 = [objc_opt_self() sharedManager];
  type metadata accessor for IMSpamFilterHelperWrapper();
  v1 = [objc_allocWithZone(IMDTrustKitDecisioningManager) initWithSyncedSettingsManager:v0 spamFilterHelper:swift_allocObject()];

  qword_2814225C8 = v1;
  return result;
}

id IMDTrustKitDecisioningManager.init(syncedSettingsManager:spamFilterHelper:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSyncedSettingsManager:a1 spamFilterHelper:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

{
  v5 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR___IMDTrustKitDecisioningManager_trustKit;
  sub_22B7DB518();
  *&v2[v8] = sub_22B7DB4E8();
  *&v2[OBJC_IVAR___IMDTrustKitDecisioningManager_syncedSettingsManager] = a1;
  *&v2[OBJC_IVAR___IMDTrustKitDecisioningManager_spamFilterHelper] = a2;
  v14.receiver = v2;
  v14.super_class = IMDTrustKitDecisioningManager;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = objc_msgSendSuper2(&v14, sel_init);
  v10 = sub_22B7DBA58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  v12 = v9;
  sub_22B77E3D4(0, 0, v7, &unk_22B7FBBD0, v11);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_22B77EE00()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22B77EEA0;

  return MEMORY[0x2821DBC78]();
}

uint64_t sub_22B77EEA0()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B77EFD4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22B77EFD4()
{
  if (qword_28141F4C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_28141F4D0);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBC98();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B4CC000, v4, v5, "error preparing TrustKit: %@", v8, 0xCu);
    sub_22B4D0D64(v9, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v9, -1, -1);
    MEMORY[0x231898D60](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22B77F178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B6F12E8;

  return sub_22B77EDE0(a1, v4, v5, v6);
}

id sub_22B77F22C()
{
  if ([*(v0 + OBJC_IVAR___IMDTrustKitDecisioningManager_syncedSettingsManager) settingValueForKey_])
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
    sub_22B4D1F68(v9, v8);
    sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v1 = [v7 BOOLValue];

      sub_22B4CFB78(v9);
      goto LABEL_6;
    }

    sub_22B4CFB78(v9);
  }

  v1 = 0;
LABEL_6:
  if (qword_28141F4C8 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_28141F4D0);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Junk filtering enabled: %{BOOL}d", v5, 8u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  return v1;
}

uint64_t sub_22B77F408(void *a1, uint64_t a2, uint64_t a3)
{
  if (![v3 isJunkFilteringEnabled])
  {
    return 1;
  }

  v5 = *&v3[OBJC_IVAR___IMDTrustKitDecisioningManager_spamFilterHelper];
  v6 = sub_22B7DB678();
  v7 = [v5 isKnownContact_];

  if (v7)
  {
    if (qword_28141F4C8 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    sub_22B4CFA74(v8, qword_28141F4D0);
    v9 = sub_22B7DB298();
    v10 = sub_22B7DBC78();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v9, v10, "Junk filtering: TrustKit decisioning skipped because sender is known/contact.", v11, 2u);
      MEMORY[0x231898D60](v11, -1, -1);
    }

    goto LABEL_24;
  }

  if (a1)
  {
    v9 = a1;
    if ([v5 isFilterUnknownSendersEnabled] && !-[NSObject isFiltered](v9, sel_isFiltered))
    {
      goto LABEL_24;
    }

    if ([v9 getNumberOfTimesRespondedToThread]>= 3)
    {
      if (qword_28141F4C8 != -1)
      {
        swift_once();
      }

      v18 = sub_22B7DB2B8();
      sub_22B4CFA74(v18, qword_28141F4D0);
      v14 = sub_22B7DB298();
      v15 = sub_22B7DBC78();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_23;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "Junk filtering: TrustKit decisioning skipped because chat has 3+ replies.";
    }

    else if ([v9 isFiltered]== 2)
    {
      if (qword_28141F4C8 != -1)
      {
        swift_once();
      }

      v13 = sub_22B7DB2B8();
      sub_22B4CFA74(v13, qword_28141F4D0);
      v14 = sub_22B7DB298();
      v15 = sub_22B7DBC78();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_23;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "Junk filtering: TrustKit decisioning skipped because chat is already junk.";
    }

    else
    {
      if (![v9 isBusinessChat])
      {
        v12 = 0;
        goto LABEL_25;
      }

      if (qword_28141F4C8 != -1)
      {
        swift_once();
      }

      v20 = sub_22B7DB2B8();
      sub_22B4CFA74(v20, qword_28141F4D0);
      v14 = sub_22B7DB298();
      v15 = sub_22B7DBC78();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_23;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "Junk filtering: TrustKit decisioning skipped because chat is a business chat.";
    }

    _os_log_impl(&dword_22B4CC000, v14, v15, v17, v16, 2u);
    MEMORY[0x231898D60](v16, -1, -1);
LABEL_23:

LABEL_24:
    v12 = 1;
LABEL_25:

    return v12;
  }

  return 0;
}

uint64_t sub_22B77F828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 88) = v12;
  *(v9 + 96) = v8;
  *(v9 + 160) = v13;
  *(v9 + 72) = a8;
  *(v9 + 80) = v11;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22B77F86C, 0, 0);
}

uint64_t sub_22B77F86C()
{
  v0[13] = *(v0[12] + OBJC_IVAR___IMDTrustKitDecisioningManager_trustKit);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_22B77F910;

  return MEMORY[0x2821DBC28]();
}

uint64_t sub_22B77F910(char a1)
{
  *(*v1 + 161) = a1;

  return MEMORY[0x2822009F8](sub_22B77FA10, 0, 0);
}

uint64_t sub_22B77FA10()
{
  if (*(v0 + 161) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 120) = v1;
    *v1 = v0;
    v1[1] = sub_22B77FC08;
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    v4 = *(v0 + 72);
    v5 = *(v0 + 64);
    v6 = *(v0 + 40);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    v9 = *(v0 + 16);

    return sub_22B780128(v8, v6, v2, v9, v7, v3, v5, v4);
  }

  else
  {
    if (qword_28141F4C8 != -1)
    {
      swift_once();
    }

    v11 = sub_22B7DB2B8();
    *(v0 + 128) = sub_22B4CFA74(v11, qword_28141F4D0);
    v12 = sub_22B7DB298();
    v13 = sub_22B7DBC78();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22B4CC000, v12, v13, "Junk filtering: decision service not prepared", v14, 2u);
      MEMORY[0x231898D60](v14, -1, -1);
    }

    v15 = swift_task_alloc();
    *(v0 + 136) = v15;
    *v15 = v0;
    v15[1] = sub_22B77FD0C;

    return MEMORY[0x2821DBC78]();
  }
}

uint64_t sub_22B77FC08(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_22B77FD0C()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B77FFA8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[19] = v3;
    *v3 = v2;
    v3[1] = sub_22B77FEA4;
    v4 = v2[11];
    v5 = v2[12];
    v6 = v2[9];
    v7 = v2[8];
    v8 = v2[5];
    v9 = v2[3];
    v10 = v2[2];
    v11 = v2[4];

    return sub_22B780128(v11, v8, v4, v10, v9, v5, v7, v6);
  }
}

uint64_t sub_22B77FEA4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_22B77FFA8()
{
  v1 = *(v0 + 144);
  v2 = v1;
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC98();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Junk filtering: error preparing TrustKit: %@", v7, 0xCu);
    sub_22B4D0D64(v8, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v8, -1, -1);
    MEMORY[0x231898D60](v7, -1, -1);
  }

  else
  {
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  v12 = *(v0 + 8);

  return v12(0, v11);
}

uint64_t sub_22B780128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 400) = v16;
  *(v8 + 248) = v15;
  *(v8 + 232) = v14;
  *(v8 + 216) = a7;
  *(v8 + 224) = a8;
  *(v8 + 200) = a5;
  *(v8 + 208) = a6;
  *(v8 + 184) = a3;
  *(v8 + 192) = a4;
  *(v8 + 168) = a1;
  *(v8 + 176) = a2;
  v9 = sub_22B7DB4A8();
  *(v8 + 256) = v9;
  *(v8 + 264) = *(v9 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CF030, &qword_22B7FBBF8);
  *(v8 + 288) = swift_task_alloc();
  v10 = sub_22B7DB4D8();
  *(v8 + 296) = v10;
  *(v8 + 304) = *(v10 - 8);
  *(v8 + 312) = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CF038, &qword_22B7FBC00);
  *(v8 + 320) = swift_task_alloc();
  v11 = sub_22B7DB498();
  *(v8 + 328) = v11;
  *(v8 + 336) = *(v11 - 8);
  *(v8 + 344) = swift_task_alloc();
  sub_22B6F0AD4(&qword_27D8CF040, &qword_22B7FBC08);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B780394, 0, 0);
}

uint64_t sub_22B780394()
{
  v65 = v0;
  if (qword_28141F4C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_22B7DB2B8();
  *(v0 + 376) = sub_22B4CFA74(v2, qword_28141F4D0);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC78();
  v1, v5, v6, v7, v8, v9, v10, v11, v59, v61;
  if (os_log_type_enabled(v3, v4))
  {
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v14 = *(v0 + 168);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v64 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_22B4CFAAC(v14, v12, &v64);
    *(v15 + 12) = 2048;
    *(v15 + 14) = v13;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Junk filtering: TrustKit prepared, sending request for service: %s for reason: %ld", v15, 0x16u);
    sub_22B4CFB78(v16);
    MEMORY[0x231898D60](v16, -1, -1);
    MEMORY[0x231898D60](v15, -1, -1);
  }

  v17 = sub_22B7DB678();
  v18 = [v17 _stripFZIDPrefix];

  if (v18 && (v19 = [v18 _bestGuessURI], v18, v19))
  {
    sub_22B7DB6A8();
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 360);
  v23 = *(v0 + 184);
  v24 = sub_22B7DB478();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v26(v22, 1, 1, v24);
  if (v23 <= 2)
  {
    v27 = qword_278708A78[v23];
    v28 = *(v0 + 360);
    sub_22B4D0D64(v28, &qword_27D8CF040, &qword_22B7FBC08);
    (*(v25 + 104))(v28, *v27, v24);
    v26(v28, 0, 1, v24);
  }

  sub_22B7830B0(*(v0 + 360), *(v0 + 368));
  if (v21)
  {
    v29 = *(v0 + 400);
    v30 = [*(v0 + 216) string];
    sub_22B7DB6A8();

    v31 = *(v0 + 320);
    if (v29 == 1)
    {
      v32 = *MEMORY[0x277D73C38];
      v33 = sub_22B7DB468();
      v34 = *(v33 - 8);
      (*(v34 + 104))(v31, v32, v33);
      (*(v34 + 56))(v31, 0, 1, v33);
    }

    else
    {
      v53 = sub_22B7DB468();
      (*(*(v53 - 8) + 56))(v31, 1, 1, v53);
    }

    v55 = *(v0 + 328);
    v54 = *(v0 + 336);
    v63 = *(v0 + 344);
    sub_22B4D7E58(*(v0 + 368), *(v0 + 352), &qword_27D8CF040, &qword_22B7FBC08);

    sub_22B7DB488();
    v56 = MEMORY[0x277D73C40];
    *(v0 + 80) = v55;
    *(v0 + 88) = v56;
    v57 = sub_22B6FC8CC((v0 + 56));
    (*(v54 + 16))(v57, v63, v55);
    v58 = swift_task_alloc();
    *(v0 + 384) = v58;
    *v58 = v0;
    v58[1] = sub_22B780A5C;

    return MEMORY[0x2821DBC80](v0 + 16, v0 + 56);
  }

  else
  {
    v35 = *(v0 + 200);

    v36 = sub_22B7DB298();
    v37 = sub_22B7DBCA8();
    v35, v38, v39, v40, v41, v42, v43, v44, v60, v62;
    if (os_log_type_enabled(v36, v37))
    {
      v46 = *(v0 + 192);
      v45 = *(v0 + 200);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v64 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_22B4CFAAC(v46, v45, &v64);
      _os_log_impl(&dword_22B4CC000, v36, v37, "Junk filtering: Failed to guess URI for sender: %s", v47, 0xCu);
      sub_22B4CFB78(v48);
      MEMORY[0x231898D60](v48, -1, -1);
      MEMORY[0x231898D60](v47, -1, -1);
    }

    v49 = *(v0 + 368);
    sub_22B781384(*(v0 + 192), *(v0 + 200));
    v50 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
    sub_22B4D0D64(v49, &qword_27D8CF040, &qword_22B7FBC08);

    v51 = *(v0 + 8);

    return v51(0, v50);
  }
}

uint64_t sub_22B780A5C()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_22B781160;
  }

  else
  {
    sub_22B4CFB78((v2 + 56));
    v3 = sub_22B780B78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B780B78(uint64_t a1)
{
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBC78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, v3, "Junk filtering: Parsing TrustKit output", v4, 2u);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  v5 = v1[38];

  sub_22B4D0DE8((v1 + 2), (v1 + 12));
  sub_22B6F0AD4(&qword_27D8CF048, &qword_22B7FBC10);
  v6 = swift_dynamicCast();
  v7 = *(v5 + 56);
  if (v6)
  {
    v9 = v1[38];
    v8 = v1[39];
    v11 = v1[36];
    v10 = v1[37];
    v12 = v1[34];
    v13 = v1[32];
    v14 = v1[33];
    v7(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
    sub_22B7DB4C8();
    (*(v14 + 104))(v12, *MEMORY[0x277D73C48], v13);
    sub_22B783120();
    sub_22B7DB8D8();
    sub_22B7DB8D8();
    v15 = v1[18];
    v16 = v1[20];
    v18 = v1[34];
    v17 = v1[35];
    v19 = v1[32];
    v20 = v1[33];
    if (v1[17] == v1[19] && v15 == v16)
    {
      v21 = *(v20 + 8);
      v21(v1[34], v1[32]);
      v21(v17, v19);
      v16, v22, v23, v24, v25, v26, v27, v28, v99, v103;
      v15, v29, v30, v31, v32, v33, v34, v35, v100, v104;
LABEL_11:
      v61 = sub_22B7DB298();
      v62 = sub_22B7DBC78();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_22B4CC000, v61, v62, "Junk filtering: message is junk", v63, 2u);
        MEMORY[0x231898D60](v63, -1, -1);
      }

      v40 = v1[46];
      v65 = v1[42];
      v64 = v1[43];
      v66 = v1[41];
      v68 = v1[38];
      v67 = v1[39];
      v69 = v1[37];

      v70 = sub_22B7DB4B8();
      v71 = sub_22B7DB568();
      v70, v72, v73, v74, v75, v76, v77, v78, v71, v105;
      (*(v68 + 8))(v67, v69);
      sub_22B4CFB78(v1 + 2);
      (*(v65 + 8))(v64, v66);
      v44 = 2;
      goto LABEL_17;
    }

    v45 = sub_22B7DC518();
    v46 = *(v20 + 8);
    v46(v18, v19);
    v46(v17, v19);
    v16, v47, v48, v49, v50, v51, v52, v53, v99, v103;
    v15, v54, v55, v56, v57, v58, v59, v60, v102, v106;
    if (v45)
    {
      goto LABEL_11;
    }

    v79 = sub_22B7DB298();
    v80 = sub_22B7DBC78();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_22B4CC000, v79, v80, "Junk filtering: message is not junk", v81, 2u);
      MEMORY[0x231898D60](v81, -1, -1);
    }

    v40 = v1[46];
    v83 = v1[42];
    v82 = v1[43];
    v84 = v1[41];
    v86 = v1[38];
    v85 = v1[39];
    v87 = v1[37];

    v88 = sub_22B7DB4B8();
    v89 = sub_22B7DB568();
    v88, v90, v91, v92, v93, v94, v95, v96, v89, v105;
    (*(v86 + 8))(v85, v87);
    sub_22B4CFB78(v1 + 2);
    (*(v83 + 8))(v82, v84);
    v44 = 1;
  }

  else
  {
    v36 = v1[36];
    v7(v36, 1, 1, v1[37]);
    sub_22B4D0D64(v36, &qword_27D8CF030, &qword_22B7FBBF8);
    v37 = sub_22B7DB298();
    v38 = sub_22B7DBC98();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22B4CC000, v37, v38, "Junk filtering: Failed to parse decision", v39, 2u);
      MEMORY[0x231898D60](v39, -1, -1);
    }

    v40 = v1[46];
    v42 = v1[42];
    v41 = v1[43];
    v43 = v1[41];

    v101 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
    sub_22B4CFB78(v1 + 2);
    (*(v42 + 8))(v41, v43);
    v44 = 0;
  }

LABEL_17:
  sub_22B4D0D64(v40, &qword_27D8CF040, &qword_22B7FBC08);

  v97 = v1[1];

  return v97(v44, v101);
}

uint64_t sub_22B781160()
{
  v1 = v0[49];
  sub_22B4CFB78(v0 + 7);
  v2 = v1;
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[49];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Junk filtering: Failed with error: %@", v6, 0xCu);
    sub_22B4D0D64(v7, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v7, -1, -1);
    MEMORY[0x231898D60](v6, -1, -1);
  }

  v10 = v0[49];
  v11 = v0[46];
  v13 = v0[42];
  v12 = v0[43];
  v14 = v0[41];

  v15 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  (*(v13 + 8))(v12, v14);
  sub_22B4D0D64(v11, &qword_27D8CF040, &qword_22B7FBC08);

  v16 = v0[1];

  return v16(0, v15);
}

void sub_22B781384(uint64_t a1, uint64_t a2)
{
  v5 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v62 - v6;
  v7 = sub_22B7DAD38();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x28223BE20](v7);
  v72 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22B7DAD88();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22B7DAD48();
  v68 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_22B7DAD28();
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B7DAD98();
  v76 = *(v14 - 1);
  v15 = *(v76 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v80 = &v62 - v17;
  v18 = [objc_opt_self() messagesDomain];
  if (v18)
  {
    v19 = v18;
    v20 = a2;
    v21 = sub_22B7DB678();
    v22 = [v19 BOOLForKey_];

    if ((v22 & 1) == 0)
    {
      v81 = 0;
      v82 = 0xE000000000000000;
      v64 = v2;
      sub_22B7DC2E8();
      v82, v23, v24, v25, v26, v27, v28, v29, v62, v63;
      v81 = 0xD000000000000026;
      v82 = 0x800000022B810EF0;
      MEMORY[0x231895140](a1, v20);
      MEMORY[0x231895140](46, 0xE100000000000000);
      v65 = v82;
      v66 = v81;
      v62 = "URI for sender handle ";
      (*(v11 + 104))(v13, *MEMORY[0x277D195A8], v77);
      v30 = v68;
      (*(v68 + 104))(v78, *MEMORY[0x277D195D8], v79);
      sub_22B6F0AD4(&unk_27D8CECA0, &unk_22B7FB7D0);
      v31 = sub_22B7DAD18();
      v32 = *(v31 - 8);
      v33 = *(v32 + 72);
      v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_22B7F93A0;
      v36 = v35 + v34;
      v37 = *MEMORY[0x277D195A0];
      v63 = v14;
      v38 = *(v32 + 104);
      v38(v36, v37, v31);
      v38(v36 + v33, *MEMORY[0x277D19598], v31);
      v39 = v69;
      sub_22B7DAD78();
      v41 = v74;
      v40 = v75;
      v42 = v72;
      (*(v74 + 104))(v72, *MEMORY[0x277D195C8], v75);
      v43 = v78;
      sub_22B7DAD08();
      v35, v44, v45, v46, v47, v48, v49, v50, v62, v63;
      (*(v41 + 8))(v42, v40);
      (*(v71 + 8))(v39, v73);
      (*(v30 + 8))(v43, v79);
      (*(v11 + 8))(v13, v77);
      v51 = sub_22B7DBA58();
      v52 = v67;
      (*(*(v51 - 8) + 56))(v67, 1, 1, v51);
      v53 = v76;
      v54 = v70;
      v55 = v80;
      v56 = v63;
      (*(v76 + 16))(v70, v80, v63);
      v57 = (*(v53 + 80) + 48) & ~*(v53 + 80);
      v58 = swift_allocObject();
      *(v58 + 2) = 0;
      *(v58 + 3) = 0;
      v59 = v65;
      *(v58 + 4) = v66;
      *(v58 + 5) = v59;
      (*(v53 + 32))(&v58[v57], v54, v56);
      v60 = v64;
      *&v58[(v15 + v57 + 7) & 0xFFFFFFFFFFFFFFF8] = v64;
      v61 = v60;
      sub_22B77E3D4(0, 0, v52, &unk_22B7FBC20, v58);

      (*(v53 + 8))(v55, v56);
    }
  }
}

uint64_t sub_22B781CA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, int a7, void *aBlock, void *a9)
{
  v9[2] = a4;
  v9[3] = a9;
  v9[4] = _Block_copy(aBlock);
  v27 = sub_22B7DB6A8();
  v14 = v13;
  v9[5] = v13;
  v26 = sub_22B7DB6A8();
  v16 = v15;
  v9[6] = v15;
  if (a3)
  {
    v25 = sub_22B7DB6A8();
    v18 = v17;
    v9[7] = v17;
    if (a5)
    {
LABEL_3:
      v19 = sub_22B7DB6A8();
      v21 = v20;
      goto LABEL_6;
    }
  }

  else
  {
    v25 = 0;
    v18 = 0;
    v9[7] = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
  v21 = 0;
LABEL_6:
  v9[8] = v21;
  v22 = a4;
  a9;
  v23 = swift_task_alloc();
  v9[9] = v23;
  *v23 = v9;
  v23[1] = sub_22B781E38;

  return sub_22B77F828(v27, v14, v26, v16, v25, v18, v22, v19);
}

uint64_t sub_22B781E38(void *a1, void *a2)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v6, v12, v13, v14, v15, v16, v17, v18, v43, a1;
  v7, v19, v20, v21, v22, v23, v24, v25, v44, v48;

  v4, v26, v27, v28, v29, v30, v31, v32, v45, v49;
  v5, v33, v34, v35, v36, v37, v38, v39, v46, v50;
  if (v8)
  {
    v40 = *(v3 + 32);
    (v40)[2](v40, v51, a2);
    _Block_release(v40);
  }

  v41 = *(v11 + 8);

  return v41();
}

uint64_t sub_22B782038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[33] = a4;
  v7 = sub_22B7DA9A8();
  v6[36] = v7;
  v6[37] = *(v7 - 8);
  v6[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7820FC, 0, 0);
}

uint64_t sub_22B7820FC()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = objc_opt_self();
  sub_22B7DA998();
  sub_22B7DA978();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = sub_22B7DB678();
  v6, v8, v9, v10, v11, v12, v13, v14, v33, v35;
  v15 = sub_22B7DB678();
  v16 = sub_22B7DB678();
  v17 = sub_22B7DB678();
  v18 = sub_22B7DB678();
  v19 = sub_22B7DB678();
  v20 = [v4 userNotificationWithIdentifier:v7 title:v15 message:v16 defaultButton:v17 alternateButton:v18 otherButton:v19];

  if (v20)
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v36 = 0u;
  }

  *(v0 + 144) = v34;
  *(v0 + 160) = v36;
  if (*(v0 + 168))
  {
    sub_22B4D01A0(0, &qword_27D8CE548, 0x277D192D0);
    if (swift_dynamicCast())
    {
      v21 = *(v0 + 240);
      *(v0 + 312) = v21;
      v22 = objc_opt_self();
      v23 = v21;
      v24 = [v22 sharedInstance];
      if (v24)
      {
        sub_22B7DC118();
        swift_unknownObjectRelease();
        sub_22B4D7F04((v0 + 208), (v0 + 176));
        sub_22B4D01A0(0, &qword_27D8CF050, 0x277D192D8);
        swift_dynamicCast();
        v25 = *(v0 + 248);
        *(v0 + 320) = v25;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 256;
        *(v0 + 24) = sub_22B782588;
        v26 = swift_continuation_init();
        *(v0 + 136) = sub_22B6F0AD4(&qword_27D8CE550, &qword_22B7FA548);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_22B77E9CC;
        *(v0 + 104) = &unk_283F1E958;
        *(v0 + 112) = v26;
        [v25 addUserNotification:v23 listener:0 completionHandler:v0 + 80];
        v24 = (v0 + 16);
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x282200938](v24);
    }
  }

  else
  {
    sub_22B4D0D64(v0 + 144, &unk_27D8CCDC0, &qword_22B7F9580);
  }

  if (qword_28141F4C8 != -1)
  {
    swift_once();
  }

  v27 = sub_22B7DB2B8();
  sub_22B4CFA74(v27, qword_28141F4D0);
  v28 = sub_22B7DB298();
  v29 = sub_22B7DBC98();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22B4CC000, v28, v29, "Failed to create IMUserNotification for TTR, TTR will not proceed", v30, 2u);
    MEMORY[0x231898D60](v30, -1, -1);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_22B782588()
{

  return MEMORY[0x2822009F8](sub_22B782668, 0, 0);
}

uint64_t sub_22B782668()
{
  v1 = v0[32];
  v2 = v0[39];
  if (v1)
  {

    v2 = v0[39];
  }

  else
  {
    v1 = v0[39];
  }

  v0[41] = v1;

  v3 = [v1 response];
  if (v3 == 2)
  {
    if (qword_28141F4C8 != -1)
    {
      swift_once();
    }

    v5 = sub_22B7DB2B8();
    sub_22B4CFA74(v5, qword_28141F4D0);
    v6 = sub_22B7DB298();
    v7 = sub_22B7DBC88();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22B4CC000, v6, v7, "User asked to stop showing TTR prompts", v8, 2u);
      MEMORY[0x231898D60](v8, -1, -1);
    }

    v9 = [objc_opt_self() messagesDomain];
    v10 = v0[40];
    if (!v9)
    {
      goto LABEL_21;
    }

    v11 = v9;
    v12 = sub_22B7DB678();
    [v11 setBool:1 forKey:v12];
  }

  else
  {
    if (!v3)
    {
      v4 = swift_task_alloc();
      v0[42] = v4;
      *v4 = v0;
      v4[1] = sub_22B782978;

      return MEMORY[0x282173A08]();
    }

    if (qword_28141F4C8 != -1)
    {
      swift_once();
    }

    v13 = sub_22B7DB2B8();
    sub_22B4CFA74(v13, qword_28141F4D0);
    v11 = sub_22B7DB298();
    v14 = sub_22B7DBC88();
    v15 = os_log_type_enabled(v11, v14);
    v12 = v0[40];
    if (v15)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22B4CC000, v11, v14, "User declined TTR, not proceeding", v16, 2u);
      MEMORY[0x231898D60](v16, -1, -1);
    }

    v10 = v1;
  }

  v1 = v12;
  v10 = v11;
LABEL_21:

  v17 = v0[1];

  return v17();
}

uint64_t sub_22B782978()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_22B782AF8;
  }

  else
  {
    v2 = sub_22B782A8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B782A8C()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B782AF8()
{
  if (qword_28141F4C8 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_28141F4D0);
  v3 = v1;
  v4 = sub_22B7DB298();
  v5 = sub_22B7DBC98();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[43];
  v8 = v0[40];
  v9 = v0[41];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_22B4CC000, v4, v5, "Failed to open TTR: %@", v10, 0xCu);
    sub_22B4D0D64(v11, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v11, -1, -1);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

void __swiftcall IMDTrustKitDecisioningManager.init()(IMDTrustKitDecisioningManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_22B782DC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B6F12E8;

  JUMPOUT(0x22B781CA0);
}

uint64_t sub_22B782EC0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B782FB8;

  return v6(a1);
}

uint64_t sub_22B782FB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B7830B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CF040, &qword_22B7FBC08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B783120()
{
  result = qword_28141F330;
  if (!qword_28141F330)
  {
    sub_22B7DB4A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F330);
  }

  return result;
}

uint64_t sub_22B783178(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22B7DAD98() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22B6F12E8;

  return sub_22B782038(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_22B7832B0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_22B7833A4;

  return v5(v2 + 16);
}

uint64_t sub_22B7833A4()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B7834B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F12E8;

  return sub_22B7832B0(a1, v4);
}

uint64_t sub_22B783570(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F0D94;

  return sub_22B7832B0(a1, v4);
}

uint64_t sub_22B783628(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B6F12E8;

  return sub_22B782EC0(a1, v4);
}

uint64_t sub_22B7836E0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_22B7DBB68();
  if (!v19)
  {
    return sub_22B7DB948();
  }

  v41 = v19;
  v45 = sub_22B7DC3C8();
  v32 = sub_22B7DC3D8();
  sub_22B7DC378();
  result = sub_22B7DBB58();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_22B7DBC28();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_22B7DC3B8();
      result = sub_22B7DBB98();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double Multimap.subscript.getter@<D0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v14 = v3[4];
  (*(v7 + 16))(v9);
  v15 = type metadata accessor for MultimapValues(0, v6, a2[3], a2[4]);
  (*(v7 + 32))(&a3[*(v15 + 44)], v9, v6);
  *a3 = v10;
  *(a3 + 1) = v11;
  *(a3 + 2) = v12;
  *(a3 + 3) = v13;
  *(a3 + 4) = v14;

  return result;
}

void Multimap.append(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v18 = a1;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v6);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B784280(v14);
  v16 = sub_22B7DB978();
  (*(v11 + 16))(v13, v17, v10);
  sub_22B7DB998();
  sub_22B7DB988();
  (*(v5 + 16))(v8, v18, v4);
  sub_22B7DB998();
  sub_22B7DB988();
  sub_22B784464(v16, a3);
}

double Multimap.init()@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_22B7DB558();
  v3 = sub_22B7DB558();
  v4 = MEMORY[0x277D84F90];
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *&result = 1;
  *(a2 + 24) = xmmword_22B7F9630;
  return result;
}

double Multimap.init<A>(keysAndValues:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a7@<X8>)
{
  v49 = a5;
  v43 = a7;
  v44 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v38 - v11;
  v13 = sub_22B7DC018();
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v38 - v15;
  v17 = *(a4 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v22 = &v38 - v21;
  v50 = a2;
  v24 = v23;
  *&v52 = sub_22B7DB558();
  *(&v52 + 1) = sub_22B7DB558();
  v53 = MEMORY[0x277D84F90];
  v54 = xmmword_22B7F9630;
  v41 = v17;
  (*(v17 + 16))(v19, v44, a4);
  sub_22B7DB8A8();
  v42 = a4;
  v25 = v39;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = v22;
  v48 = AssociatedConformanceWitness;
  sub_22B7DC0B8();
  v27 = *(v25 + 48);
  if (v27(v16, 1, TupleTypeMetadata2) != 1)
  {
    v28 = *(*(v50 - 8) + 32);
    v46 = *(v50 - 8) + 32;
    v47 = v28;
    v45 = a3 - 8;
    v29 = (v25 + 8);
    do
    {
      v30 = *(TupleTypeMetadata2 + 48);
      v31 = v24;
      v32 = v50;
      v47(v12, v16, v50);
      (*(*(a3 - 8) + 32))(&v12[v30], &v16[v30], a3);
      v33 = v32;
      v24 = v31;
      v34 = type metadata accessor for Multimap(0, v33, a3, v49);
      Multimap.append(_:forKey:)(&v12[v30], v12, v34);
      (*v29)(v12, TupleTypeMetadata2);
      sub_22B7DC0B8();
    }

    while (v27(v16, 1, TupleTypeMetadata2) != 1);
  }

  (*(v41 + 8))(v44, v42);
  (*(v40 + 8))(v51, v24);
  v35 = v53;
  v36 = v43;
  *v43 = v52;
  *(v36 + 2) = v35;
  result = *&v54;
  *(v36 + 24) = v54;
  return result;
}

char *sub_22B784280(uint64_t a1)
{
  result = sub_22B7DB978();
  v4 = (result + 1);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = 100 * v4;
  if ((v4 * 100) >> 64 != (100 * v4) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5 + 60;
  if (__OFADD__(v5, 60))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 <= 480)
  {
    if (*(v1 + 32) >= 8)
    {
      return result;
    }

    LODWORD(v7) = 8;
    goto LABEL_9;
  }

  v8 = v5 + 59;
  v7 = (v6 - 1) / 0x3CuLL;
  if (*(v1 + 32) >= v7)
  {
    return result;
  }

  if (v8 >> 33 > 0xE)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_9:
  v9 = (v7 - 1) | ((v7 - 1) >> 1) | (((v7 - 1) | ((v7 - 1) >> 1)) >> 2);
  v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
  v11 = v10 | HIWORD(v10);
  v12 = (v11 + 1);
  if (__OFADD__(v11, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = MEMORY[0x277D84F90];
  do
  {
    sub_22B713BE0(0);
    sub_22B713E60(0, v13, v14, v15, v16, v17, v18, v19);
    --v12;
  }

  while (v12);
  *(v1 + 16), v20, v21, v22, v23, v24, v25, v26, v29, 1;
  *(v1 + 16) = v28;
  *(v1 + 32) = 0;
  sub_22B7DB998();
  swift_getWitnessTable();
  sub_22B7DBB48();
  result = v29;
  if (v29 != 1)
  {
    if (v29 <= 1)
    {
      do
      {
        v27 = result + 1;
        sub_22B784464(result, a1);
        result = v27;
      }

      while (v27 != 1);
      return result;
    }

LABEL_21:
    __break(1u);
    __break(1u);
  }

  return result;
}

void sub_22B784464(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v2 + 16);
  v10 = *(v2 + 16);
  v12 = *(v3 + 8);
  v75 = *v3;
  v76 = v12;
  v77 = v10;
  v78 = *(v3 + 24);

  sub_22B7DB9A8();
  v13 = sub_22B784690(v9, a2);
  (*(v7 + 8))(v9, v6);
  v14 = v75;
  v15 = v76;
  v77, v16, v17, v18, v19, v20, v21, v22, v74, v75;
  v15, v23, v24, v25, v26, v27, v28, v29, v74, v75;
  v14, v30, v31, v32, v33, v34, v35, v36, v74, v75;
  v37 = *(v3 + 8);
  v38 = *v11;
  v75 = *v3;
  v76 = v37;
  v77 = v38;
  v78 = *(v3 + 24);
  v39 = sub_22B7846DC(v13);
  v40 = v75;
  v41 = v76;
  v42 = v77;

  v42, v43, v44, v45, v46, v47, v48, v49, v74, v75;
  v41, v50, v51, v52, v53, v54, v55, v56, v74, v75;
  v40, v57, v58, v59, v60, v61, v62, v63, v74, v75;
  v64 = *(v3 + 32);
  if ((v64 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!v64)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v65 = __OFADD__(a1, 1);
  v66 = a1 + 1;
  if (v65)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v66 & 0x8000000000000000) == 0)
  {
    v67 = v39 % v64;
    sub_22B713BE0(v66);
    sub_22B71411C(v66, v67, v68, v69, v70, v71, v72, v73);
    return;
  }

LABEL_9:
  __break(1u);
}

double Multimap.keys.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

double Multimap.values.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

unint64_t sub_22B784690(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  result = sub_22B7DB5B8();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3)
  {
    result %= v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_22B7846DC(unint64_t result)
{
  v2 = v1[4];
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  if (!v2)
  {
    return -1;
  }

  v3 = v1[3];
  v4 = 64 - v3;
  if (__OFSUB__(64, v3))
  {
    goto LABEL_43;
  }

  v5 = result;
  v6 = 0;
  v7 = v1[2];
  v8 = v7 + 32;
  v9 = *(v7 + 16);
  v10 = -1 - v3;
  while (1)
  {
    result = v6 + v5;
    if (__CFADD__(v6, v5))
    {
      break;
    }

    v11 = result % v2 * v3;
    if (((result % v2) * v3) >> 64 != v11 >> 63)
    {
      goto LABEL_38;
    }

    if (v11 >= 0)
    {
      v12 = result % v2 * v3;
    }

    else
    {
      v12 = v11 + 63;
    }

    if (v11 < -63)
    {
      goto LABEL_39;
    }

    if (v12 >> 6 >= v9)
    {
      goto LABEL_40;
    }

    v13 = 64 - (v11 - (v12 & 0xFFFFFFFFFFFFFFC0));
    v14 = __OFSUB__(v13, v3);
    v15 = v13 - v3;
    if (v14)
    {
      goto LABEL_41;
    }

    if (v15 <= -65 || v15 > 64)
    {
LABEL_15:
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return result;
      }

      if ((v4 & 0x8000000000000000) == 0)
      {
        if (v4 >= 0x40)
        {
          return result;
        }

        v16 = 0;
        goto LABEL_24;
      }

      if (v4 <= 0xFFFFFFFFFFFFFFC0)
      {
        return result;
      }

      v16 = 0;
      goto LABEL_33;
    }

    v17 = *(v8 + 8 * (v12 >> 6));
    if (v15 < 0)
    {
      if (v15 == -64)
      {
        goto LABEL_15;
      }

      v16 = v17 >> -v15;
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return result;
      }
    }

    else
    {
      if (v15 == 64)
      {
        goto LABEL_15;
      }

      v16 = v17 << v15;
      if (v10 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return result;
      }
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4 >= 0x40)
      {
        return result;
      }

LABEL_24:
      if (!(v16 >> v4))
      {
        return result;
      }

      goto LABEL_25;
    }

    if (v4 <= 0xFFFFFFFFFFFFFFC0)
    {
      return result;
    }

LABEL_33:
    if (!(v16 << (v3 - 64)))
    {
      return result;
    }

LABEL_25:
    if (v2 == ++v6)
    {
      return -1;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_22B78483C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  if (!v3)
  {
    return 0;
  }

  v6 = sub_22B784690(a1, a2);
  result = sub_22B7848D8(a1, v6, a2);
  if (v8)
  {
    return 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result %= v3;
  }

  return result;
}

unint64_t sub_22B7848D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v32 = a2;
  v30 = a1;
  v4 = *(a3 + 16);
  result = MEMORY[0x28223BE20](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3[4];
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = v3[3];
  v11 = 64 - v10;
  if (__OFSUB__(64, v10))
  {
    goto LABEL_46;
  }

  v12 = 0;
  v13 = v3[2];
  v14 = *v3;
  v27 = v13 + 32;
  v28 = v14;
  v29 = -1 - v10;
  v26 = v10 - 64;
  v15 = (v6 + 8);
  while (1)
  {
    v16 = v12 + v32;
    if (__CFADD__(v12, v32))
    {
      break;
    }

    v17 = v16 % v9 * v10;
    if (((v16 % v9) * v10) >> 64 != v17 >> 63)
    {
      goto LABEL_40;
    }

    if (v17 >= 0)
    {
      v18 = v16 % v9 * v10;
    }

    else
    {
      v18 = v17 + 63;
    }

    if (v17 < -63)
    {
      goto LABEL_41;
    }

    if (v18 >> 6 >= *(v13 + 16))
    {
      goto LABEL_42;
    }

    v19 = 64 - (v17 - (v18 & 0xFFFFFFFFFFFFFFC0));
    v20 = __OFSUB__(v19, v10);
    v21 = v19 - v10;
    if (v20)
    {
      goto LABEL_43;
    }

    if (v21 <= -65 || v21 > 64)
    {
LABEL_15:
      if (v29 < 0xFFFFFFFFFFFFFF7FLL)
      {
        return 0;
      }

      result = 0;
      if ((v11 & 0x8000000000000000) == 0)
      {
        if (v11 >= 0x40)
        {
          return result;
        }

        goto LABEL_25;
      }

      if (v11 <= 0xFFFFFFFFFFFFFFC0)
      {
        return result;
      }

      goto LABEL_35;
    }

    v22 = *(v27 + 8 * (v18 >> 6));
    if (v21 < 0)
    {
      if (v21 == -64)
      {
        goto LABEL_15;
      }

      result = v22 >> -v21;
    }

    else
    {
      if (v21 == 64)
      {
        goto LABEL_15;
      }

      result = v22 << v21;
    }

    if (v29 < 0xFFFFFFFFFFFFFF7FLL)
    {
      return 0;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= 0x40)
      {
        return 0;
      }

LABEL_25:
      v23 = result >> v11;
      if (!(result >> v11))
      {
        return 0;
      }

      goto LABEL_26;
    }

    if (v11 <= 0xFFFFFFFFFFFFFFC0)
    {
      return 0;
    }

LABEL_35:
    v23 = result << v26;
    if (!(result << v26))
    {
      return 0;
    }

LABEL_26:
    result = v23 - 1;
    if ((v23 - 1) < 0)
    {
      goto LABEL_44;
    }

    sub_22B7DB9A8();
    v24 = sub_22B7DB658();
    result = (*v15)(v8, v4);
    if (v24)
    {
      return v16;
    }

    if (v9 == ++v12)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

unint64_t sub_22B784B6C(unint64_t result, uint64_t a2)
{
  v3 = v2[4];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_22B714034(result % v3, v2[2], v2[3]);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return sub_22B7DB9A8();
}

IMDaemonCore::MultimapIndex __swiftcall Multimap.index(after:)(IMDaemonCore::MultimapIndex after)
{
  if (__OFADD__(*after.index, 1))
  {
    __break(1u);
  }

  else
  {
    *v1 = *after.index + 1;
  }

  return after;
}

uint64_t Multimap.subscript.getter(__n128 a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_22B7DB9A8();

  return sub_22B7DB9A8();
}

uint64_t Multimap.endIndex.getter@<X0>(uint64_t *a2@<X8>)
{
  result = sub_22B7DB978();
  *a2 = result;
  return result;
}

void (*sub_22B784CBC(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_22B784EC8(v8, a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v10 - 8) + 16))(v14);
  (*(*(v9 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v9);
  return sub_22B784E50;
}

void sub_22B784E50(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*sub_22B784EC8(uint64_t *a1, uint64_t *a2, uint64_t a3))()
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v5 = *(TupleTypeMetadata2 - 8);
  a1[1] = v5;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  sub_22B7DB9A8();
  sub_22B7DB9A8();
  return sub_22B786594;
}

void sub_22B7850CC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = *(v1 + 24);
  Multimap.startIndex.getter((a1 + 40));
}

uint64_t sub_22B785100(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_22B785154(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_22B78650C(v1, a1, WitnessTable);
  v5 = *v1;
  v6 = *(v1 + 8);
  *(v1 + 16), v7, v8, v9, v10, v11, v12, v13, v29, v32;
  v6, v14, v15, v16, v17, v18, v19, v20, v30, v33;
  v5, v21, v22, v23, v24, v25, v26, v27, v31, v34;
  return v4;
}

unint64_t sub_22B785218()
{
  result = qword_27D8CF058;
  if (!qword_27D8CF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF058);
  }

  return result;
}

unint64_t sub_22B785270()
{
  result = qword_27D8CF060[0];
  if (!qword_27D8CF060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8CF060);
  }

  return result;
}

uint64_t sub_22B785314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for MultimapIndex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MultimapIndex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_22B7853D4(void *a1)
{
  result = type metadata accessor for Multimap(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B785468(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 40) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_22B7855EC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 40] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

void sub_22B785848(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v37 = *v10;
  v39 = v10[1];
  v40 = v10[2];
  v12 = type metadata accessor for Multimap(0, a2[2], a2[3], a2[4]);

  sub_22B784B6C(a1, v12);
  v13 = v37;
  v40, v14, v15, v16, v17, v18, v19, v20, v35, v37;
  v39, v21, v22, v23, v24, v25, v26, v27, v36, v38;

  v13, v28, v29, v30, v31, v32, v33, v34, a9, a10;
}

unint64_t sub_22B785910(uint64_t a1)
{
  v32 = *v1;
  v35 = v1[1];
  v36 = v1[2];
  v2 = *(a1 + 44);
  v3 = type metadata accessor for Multimap(0, *(a1 + 16), *(a1 + 24), *(a1 + 32));

  v4 = sub_22B78483C(v1 + v2, v3);
  v6 = v5;
  v7 = v32;
  v36, v5, v8, v9, v10, v11, v12, v13, v29, v32;
  v35, v14, v15, v16, v17, v18, v19, v20, v30, v33;
  v7, v21, v22, v23, v24, v25, v26, v27, v31, v34;
  if (v6)
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_22B7859C8(unint64_t result, uint64_t a2)
{
  v33 = *v2;
  v36 = v2[1];
  v37 = v2[2];
  v3 = result + 1;
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 44);
    v5 = type metadata accessor for Multimap(0, *(a2 + 16), *(a2 + 24), *(a2 + 32));

    v6 = sub_22B7848D8(v2 + v4, v3, v5);
    v8 = v7;
    v9 = v33;
    v37, v7, v10, v11, v12, v13, v14, v15, v30, v33;
    v36, v16, v17, v18, v19, v20, v21, v22, v31, v34;
    v9, v23, v24, v25, v26, v27, v28, v29, v32, v35;
    if (v8)
    {
      return -1;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

unint64_t sub_22B785AD8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_22B785910(a1);
  *a2 = result;
  return result;
}

uint64_t sub_22B785B00@<X0>(uint64_t *a2@<X8>)
{
  result = sub_22B786354();
  *a2 = result;
  return result;
}

uint64_t (*sub_22B785B34(uint64_t **a1, unint64_t *a2, uint64_t *a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_22B785C04(v6, *a2, a3);
  return sub_22B785BBC;
}

void sub_22B785BBC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_22B785C04(uint64_t *a1, unint64_t a2, uint64_t *a3))()
{
  v6 = a3[3];
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  sub_22B785848(a2, a3, v10, v11, v12, v13, v14, v15, v17, v18);
  return sub_22B785CD4;
}

void sub_22B785CD8(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

unint64_t sub_22B785D28@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_22B7859C8(*a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_22B785D54(unint64_t *a1, uint64_t a2)
{
  result = sub_22B7859C8(*a1, a2);
  *a1 = result;
  return result;
}

uint64_t sub_22B785D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_22B7DC438() + 36);
  v7 = sub_22B785910(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_22B785E6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_22B785EC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_22B78650C(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_22B785FA0(uint64_t a1, uint64_t a2)
{
  v33 = *(a1 + 16);
  v34 = *(a1 + 32);
  v35 = a2;
  WitnessTable = swift_getWitnessTable();
  v5 = sub_22B7836E0(sub_22B7862E8, &v31, a1, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v4);
  v36 = v5;
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  sub_22B7665AC();
  v6 = sub_22B7DB5F8();
  v8 = v7;
  v5, v7, v9, v10, v11, v12, v13, v14, v31, v32;
  v36 = 91;
  v37 = 0xE100000000000000;
  MEMORY[0x231895140](v6, v8);
  v8, v15, v16, v17, v18, v19, v20, v21, v31, v32;
  v22 = v37;

  MEMORY[0x231895140](93, 0xE100000000000000);
  v22, v23, v24, v25, v26, v27, v28, v29, v31, v32;
  return v36;
}

uint64_t sub_22B7860E0(uint64_t a1)
{
  v32 = *(a1 + 16);
  v33 = *(a1 + 32);
  WitnessTable = swift_getWitnessTable();
  v4 = sub_22B7836E0(sub_22B786330, &v30, a1, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v3);
  v34 = v4;
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  sub_22B7665AC();
  v5 = sub_22B7DB5F8();
  v7 = v6;
  v4, v6, v8, v9, v10, v11, v12, v13, v30, v31;
  v34 = 91;
  v35 = 0xE100000000000000;
  MEMORY[0x231895140](v5, v7);
  v7, v14, v15, v16, v17, v18, v19, v20, v30, v31;
  v21 = v35;

  MEMORY[0x231895140](93, 0xE100000000000000);
  v21, v22, v23, v24, v25, v26, v27, v28, v30, v31;
  return v34;
}

uint64_t sub_22B786218@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_22B7DB6E8();
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t sub_22B7862E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B7DC4E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B78635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_22B7DB618();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_22B7DBC38();
  result = sub_22B7DB618();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_22B786428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_22B7DB618();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_22B786540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B7865A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22B6F0AD4(&qword_27D8CD600, &unk_22B7F95A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_22B4D0D64(a1, &qword_27D8CD600, &unk_22B7F95A0);
    v13 = sub_22B725570();
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22B7A3D04();
        v17 = v22;
      }

      sub_22B769A9C(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
      sub_22B787C88(v15, v17, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group, v18);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_22B4D0D64(v8, &qword_27D8CD600, &unk_22B7F95A0);
  }

  else
  {
    sub_22B769A9C(a1, v12, type metadata accessor for IMDPersistentTaskCriticalLimiter.Group);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_22B7685A8(v12, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_22B78680C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22B6F0AD4(&qword_27D8CD610, &qword_22B7F95B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_22B4D0D64(a1, &qword_27D8CD610, &qword_22B7F95B8);
    v13 = sub_22B725570();
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22B7A3D40();
        v17 = v22;
      }

      sub_22B769A9C(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
      sub_22B787C88(v15, v17, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer, v18);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_22B4D0D64(v8, &qword_27D8CD610, &qword_22B7F95B8);
  }

  else
  {
    sub_22B769A9C(a1, v12, type metadata accessor for IMDPersistentTaskCriticalLimiter.GroupEvaluationTimer);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_22B768704(v12, a2, v19);
    *v3 = v22;
  }

  return result;
}

void sub_22B786A74(uint64_t a1, uint64_t a2, IMDScheduledMessageCoordinator *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v3;
    sub_22B7689F0(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v9, v10, v11, v12, v13, v14, v15, v35, v38;
    *v3 = v39;
  }

  else
  {
    v16 = sub_22B723648(a2, a3);
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24, v35, v37;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v40 = *v4;
      if (!v25)
      {
        sub_22B7A411C();
        v33 = v40;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32, v36, v40;
      swift_unknownObjectRelease();
      sub_22B788004(v16, v33, v34);
      *v4 = v33;
    }
  }
}

void sub_22B786B6C(uint64_t a1, uint64_t a2, IMDScheduledMessageCoordinator *a3)
{
  if (*(a1 + 24))
  {
    sub_22B4D7F04(a1, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_22B769174(v25, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v7, v8, v9, v10, v11, v12, v13, v21, v23;
    *v3 = v24;
  }

  else
  {
    sub_22B4D0D64(a1, &unk_27D8CCDC0, &qword_22B7F9580);
    sub_22B787A60(a2, a3, v25);
    a3, v14, v15, v16, v17, v18, v19, v20, v21, v22;
    sub_22B4D0D64(v25, &unk_27D8CCDC0, &qword_22B7F9580);
  }
}

void sub_22B786C3C(uint64_t a1, uint64_t a2, IMDScheduledMessageCoordinator *a3)
{
  v7 = sub_22B6F0AD4(&qword_27D8CF780, &unk_22B7FC160);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_22B4D0D64(a1, &qword_27D8CF780, &unk_22B7FC160);
    sub_22B787B04(a2, a3, v9);
    a3, v14, v15, v16, v17, v18, v19, v20, v29, v30;
    sub_22B4D0D64(v9, &qword_27D8CF780, &unk_22B7FC160);
  }

  else
  {
    sub_22B769A9C(a1, v12, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v3;
    sub_22B7692C4(v12, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v22, v23, v24, v25, v26, v27, v28, v29, v30;
    *v3 = v30;
  }
}

uint64_t sub_22B786E38(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_22B7DC178();
    v9 = v8;
    v10 = sub_22B7DC218();
    v12 = v11;
    v13 = MEMORY[0x231895B10](v7, v9, v10, v11);
    sub_22B755198(v10, v12, 1, v14, v15, v16, v17, v18, v32, v33);
    if (v13)
    {
LABEL_3:
      sub_22B755198(v7, v9, v6 != 0, v19, v20, v21, v22, v23, v32, v33);
      return 0;
    }
  }

  else
  {
    v7 = sub_22B7DC148();
    v9 = *(a1 + 36);
    if (v7 == (1 << *(a1 + 32)))
    {
      goto LABEL_3;
    }
  }

  sub_22B788550(v7, v9, v6 != 0, a1, a2, a3);
  v26 = v25;
  sub_22B755198(v7, v9, v6 != 0, v27, v28, v29, v30, v31, v32, v33);
  return v26;
}

uint64_t sub_22B786F6C()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8D48D0);
  sub_22B4CFA74(v0, qword_27D8D48D0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B786FD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 104) = a4;
  v6 = sub_22B7DB3C8();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7870A8, 0, 0);
}

uint64_t sub_22B7870A8()
{
  if (qword_27D8CCC98 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  *(v0 + 56) = sub_22B4CFA74(v1, qword_27D8D48D0);
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBC78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22B4CC000, v2, v3, "Reporting spam: %{BOOL}d to TrustKit", v5, 8u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v6 = *(v0 + 32);
  v7 = *(v0 + 104);

  sub_22B7DB3F8();
  *(v0 + 64) = sub_22B7DB3E8();
  v8 = *(v6 + 104);
  v9 = *(v0 + 24);
  if (v7 == 1)
  {
    v8(*(v0 + 48), *MEMORY[0x277D73C10], v9);
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *v10 = v0;
    v10[1] = sub_22B7872C8;
    v11 = *(v0 + 48);
  }

  else
  {
    v8(*(v0 + 40), *MEMORY[0x277D73C18], v9);
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *v12 = v0;
    v12[1] = sub_22B78745C;
    v11 = *(v0 + 40);
  }

  v13 = *(v0 + 16);

  return MEMORY[0x2821DBBE8](v11, v13);
}

uint64_t sub_22B7872C8()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_22B7876D0;
  }

  else
  {
    v5 = sub_22B7875F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B78745C()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_22B78784C;
  }

  else
  {
    v5 = sub_22B789914;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B7875F0(uint64_t a1)
{
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBC78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, v3, "Reported to TrustKit", v4, 2u);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_22B7876D0()
{
  v1 = *(v0 + 80);
  v2 = v1;
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 67109378;
    *(v6 + 4) = v5;
    *(v6 + 8) = 2112;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 10) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Reporting spam: %{BOOL}d failed with error: %@", v6, 0x12u);
    sub_22B4D0D64(v7, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v7, -1, -1);
    MEMORY[0x231898D60](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B78784C()
{
  v1 = *(v0 + 96);
  v2 = v1;
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 67109378;
    *(v6 + 4) = v5;
    *(v6 + 8) = 2112;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 10) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Reporting spam: %{BOOL}d failed with error: %@", v6, 0x12u);
    sub_22B4D0D64(v7, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v7, -1, -1);
    MEMORY[0x231898D60](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

double sub_22B787A60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_22B723648(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22B7A4B44();
      v17 = v21;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16, v20, v21;
    sub_22B4D7F04((*(v17 + 56) + 32 * v8), a3);
    sub_22B7881B4(v8, v17, v18);
    *v4 = v17;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_22B787B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22B723648(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v29 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22B7A4CE8();
      v17 = v29;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16, v27, v29;
    v18 = *(v17 + 56);
    v19 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0);
    v28 = *(v19 - 8);
    sub_22B769A9C(v18 + *(v28 + 72) * v8, a3, type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata);
    sub_22B788364(v8, v17, v20);
    *v4 = v17;
    v21 = *(v28 + 56);
    v22 = a3;
    v23 = 0;
    v24 = v19;
  }

  else
  {
    v25 = type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a3;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

unint64_t sub_22B787C88(unint64_t result, uint64_t a2, uint64_t (*a3)(void), __n128 a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v10 = ~v7;
    v11 = (sub_22B7DC158() + 1) & ~v7;
    while (1)
    {
      v12 = *(*(a2 + 48) + 8 * v8);
      sub_22B7DC668();
      MEMORY[0x231895FF0](v12);
      result = sub_22B7DC6B8();
      v13 = result & v10;
      if (v5 >= v11)
      {
        break;
      }

      if (v13 < v11)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v5);
      v16 = (v14 + 8 * v8);
      if (v5 != v8 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v5;
      result = v17 + v18 * v5;
      v20 = v18 * v8;
      v21 = v17 + v18 * v8 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v10;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22B787E60(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_22B7DC158() + 1) & ~v6;
    do
    {
      v10 = (*(a2 + 48) + 16 * v7);
      v11 = *v10;
      v12 = v10[1];
      sub_22B7DC668();
      MEMORY[0x231895FF0](v11);
      MEMORY[0x231895FF0](v12);
      result = sub_22B7DC6B8();
      v13 = result & v8;
      if (v4 >= v9)
      {
        if (v13 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v4);
        v16 = (v14 + 16 * v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v4);
        v19 = (v17 + 8 * v7);
        if (v4 != v7 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22B788004(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_22B7DC158() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 16 * v7 + 8);
      sub_22B7DC668();

      sub_22B7DB758();
      v11 = sub_22B7DC6B8();
      v10, v12, v13, v14, v15, v16, v17, v18, v29, v30;
      v19 = v11 & v8;
      if (v4 >= v9)
      {
        if (v19 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v19)
      {
LABEL_10:
        v20 = *(a2 + 48);
        v21 = (v20 + 16 * v4);
        v22 = (v20 + 16 * v7);
        if (v4 != v7 || v21 >= v22 + 1)
        {
          *v21 = *v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 8 * v4);
        v25 = (v23 + 8 * v7);
        if (v4 != v7 || v24 >= v25 + 1)
        {
          *v24 = *v25;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_22B7881B4(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_22B7DC158() + 1) & ~v6;
    do
    {
      v11 = *(*(a2 + 48) + 16 * v7 + 8);
      sub_22B7DC668();

      sub_22B7DB758();
      v12 = sub_22B7DC6B8();
      v11, v13, v14, v15, v16, v17, v18, v19, v30, v31;
      v20 = v12 & v8;
      if (v4 >= v9)
      {
        if (v20 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v20 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v20)
      {
LABEL_10:
        v21 = *(a2 + 48);
        v22 = (v21 + 16 * v4);
        v23 = (v21 + 16 * v7);
        if (v4 != v7 || v22 >= v23 + 1)
        {
          *v22 = *v23;
        }

        v24 = *(a2 + 56);
        v25 = (v24 + 32 * v4);
        v26 = (v24 + 32 * v7);
        if (v4 != v7 || v25 >= v26 + 2)
        {
          v10 = v26[1];
          *v25 = *v26;
          v25[1] = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

void sub_22B788364(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_22B7DC158() + 1) & ~v6;
    while (1)
    {
      v10 = *(*(a2 + 48) + 16 * v7 + 8);
      sub_22B7DC668();

      sub_22B7DB758();
      v11 = sub_22B7DC6B8();
      v10, v12, v13, v14, v15, v16, v17, v18, v33, v34;
      v19 = v11 & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v19 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v20 = *(a2 + 48);
      v21 = (v20 + 16 * v4);
      v22 = (v20 + 16 * v7);
      if (v4 != v7 || v21 >= v22 + 1)
      {
        *v21 = *v22;
      }

      v23 = *(a2 + 56);
      v24 = *(*(type metadata accessor for RecoverableMessageStore.RecoverableMessageMetadata(0) - 8) + 72);
      v25 = v24 * v4;
      v26 = v23 + v24 * v4;
      v27 = v24 * v7;
      v28 = v23 + v24 * v7 + v24;
      if (v25 < v27 || v26 >= v28)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v25 == v27)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v19 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v19)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }
}

void sub_22B788550(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x231895B60](a1, a2, v11);
      sub_22B4D01A0(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_22B4D01A0(0, a5, a6);
    if (sub_22B7DC1A8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22B7DC1B8();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_22B7DBFC8();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_22B7DBFD8();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_22B788768(void *a1)
{
  v2 = 0x676E696B776168;
  v3 = [a1 isFiltered];
  if ([a1 isBlackholed])
  {
    return v2;
  }

  if (v3 != 2)
  {
    return 0x6465737361707962;
  }

  v4 = [a1 spamDetectionSource];
  if (v4 > 3)
  {
    if (v4 <= 5)
    {
      if (v4 == 4)
      {
        return 0x7265746C69667031;
      }

      else
      {
        return 0x7265746C69667033;
      }
    }

    if (v4 == 6)
    {
      return 1919251317;
    }

    if (v4 == 7)
    {
      return v2;
    }
  }

  else
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        return 0x726163736FLL;
      }

      else
      {
        return 5461059;
      }
    }

    if (!v4)
    {
      return 0x6465737361707962;
    }

    if (v4 == 1)
    {
      return 0x74696B7473757274;
    }
  }

  type metadata accessor for IMDChatSpamDetectionSource(0);
  result = sub_22B7DC548();
  __break(1u);
  return result;
}

void sub_22B788904(void *a1, id a2)
{
  if ([a2 isBlackholed])
  {
    v3 = 0xE900000000000065;
    v4 = 0x6C6F686B63616C62;
  }

  else
  {
    v5 = [a2 isFiltered];
    if (v5 == 2)
    {
      v4 = 1802401130;
    }

    else
    {
      v4 = 0x786F626E69;
    }

    if (v5 == 2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  v6 = sub_22B788768(a2);
  v212 = v7;
  v8 = [a2 service];
  if (!v8)
  {
    __break(1u);
    goto LABEL_60;
  }

  v9 = v8;
  v10 = [v8 internalName];

  v11 = sub_22B7DB6A8();
  v13 = v12;

  v14 = sub_22B7DB6A8();
  v22 = v15;
  if (v14 == v11 && v15 == v13)
  {
    v13, v15, v16, v17, v18, v19, v20, v21, v212, a1;
    v39 = v22;
    goto LABEL_17;
  }

  v24 = sub_22B7DC518();
  v22, v25, v26, v27, v28, v29, v30, v31, v212, a1;
  if (v24)
  {
    v39 = v13;
LABEL_17:
    v39, v32, v33, v34, v35, v36, v37, v38, v213, v225;
    v40 = 0;
    goto LABEL_18;
  }

  v156 = sub_22B7DB6A8();
  v164 = v157;
  if (v156 == v11 && v157 == v13)
  {
    v13, v157, v158, v159, v160, v161, v162, v163, v213, v225;
    v172 = v164;
LABEL_51:
    v172, v165, v166, v167, v168, v169, v170, v171, v221, v233;
    v40 = 1;
    goto LABEL_18;
  }

  v173 = sub_22B7DC518();
  v164, v174, v175, v176, v177, v178, v179, v180, v213, v225;
  if (v173)
  {
    v172 = v13;
    goto LABEL_51;
  }

  v181 = sub_22B7DB6A8();
  v189 = v182;
  if (v181 == v11 && v182 == v13)
  {
    v13, v182, v183, v184, v185, v186, v187, v188, v221, v233;
    v189, v190, v191, v192, v193, v194, v195, v196, v222, v234;
    v40 = 2;
  }

  else
  {
    v197 = sub_22B7DC518();
    v13, v198, v199, v200, v201, v202, v203, v204, v221, v233;
    v189, v205, v206, v207, v208, v209, v210, v211, v223, v235;
    if (v197)
    {
      v40 = 2;
    }

    else
    {
      v40 = -1;
    }
  }

LABEL_18:
  sub_22B6F0AD4(&qword_27D8CD688, &qword_22B7FBA40);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000017;
  *(inited + 16) = xmmword_22B7FC130;
  *(inited + 40) = 0x800000022B810FE0;
  v42 = [a2 participants];
  if (!v42)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v43 = v42;
  sub_22B4D01A0(0, &qword_28141EFD0, off_2786FFA08);
  v44 = sub_22B7DB918();

  if (v44 >> 62)
  {
    v52 = sub_22B7DC1C8();
  }

  else
  {
    v52 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44, v45, v46, v47, v48, v49, v50, v51, v214, v226;
  v53 = MEMORY[0x277D83B88];
  *(inited + 48) = v52;
  *(inited + 72) = v53;
  strcpy((inited + 80), "reported-from");
  v54 = MEMORY[0x277D837D0];
  *(inited + 94) = -4864;
  *(inited + 96) = v4;
  *(inited + 104) = v3;
  v55 = v54;
  *(inited + 120) = v54;
  strcpy((inited + 128), "decisioned-by");
  *(inited + 142) = -4864;
  *(inited + 144) = v6;
  v56 = v215;
  *(inited + 152) = v215;
  *(inited + 168) = v54;
  *(inited + 176) = 0x742D74726F706572;
  *(inited + 184) = 0xEB00000000657079;
  *(inited + 192) = v40;
  *(inited + 216) = v53;
  *(inited + 224) = 0x632D74726F706572;
  *(inited + 232) = 0xEF79726F67657461;

  v57 = sub_22B789654([a2 isFiltered]);
  v58 = sub_22B7DB6A8();
  v60 = v59;

  *(inited + 264) = v55;
  *(inited + 240) = v58;
  *(inited + 248) = v60;
  v61 = sub_22B71DF98(inited);
  swift_setDeallocating();
  sub_22B6F0AD4(&qword_27D8CDB60, &qword_22B7FA360);
  swift_arrayDestroy();
  v62 = [a2 spamDetectedMessage];
  if (v62)
  {
    v63 = v62;
    v64 = sub_22B7DB6A8();
    v66 = v65;

    v238 = v55;
    *&v237 = v64;
    *(&v237 + 1) = v66;
    sub_22B4D7F04(&v237, v236);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B769174(v236, 0xD000000000000015, 0x800000022B811060, isUniquelyReferenced_nonNull_native);
  }

  v68 = sub_22B789720([a2 &selRef_lastTUConversationCreatedDate + 2]);
  if (v68)
  {
    v69 = v68;
    v70 = sub_22B7DB6A8();
    v72 = v71;

    v238 = v55;
    *&v237 = v70;
    *(&v237 + 1) = v72;
    sub_22B4D7F04(&v237, v236);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    sub_22B769174(v236, 0xD000000000000012, 0x800000022B811040, v73);
  }

  v238 = sub_22B6F0AD4(&qword_27D8CF590, &unk_22B7F97C0);
  *&v237 = v61;

  sub_22B786B6C(&v237, 0x692D74726F706572, 0xEB000000006F666ELL);
  v74 = [objc_opt_self() sharedInstance];
  if (!v74)
  {
    goto LABEL_61;
  }

  v75 = v74;
  v76 = [v74 productOSVersion];

  v77 = v55;
  if (v76)
  {
    v78 = sub_22B7DB6A8();
    v80 = v79;
  }

  else
  {
    v78 = 0;
    v80 = 0;
  }

  sub_22B7DB6A8();
  v82 = v81;
  v83 = objc_allocWithZone(MEMORY[0x277D18778]);
  v84 = sub_22B7DB678();
  v82, v85, v86, v87, v88, v89, v90, v91, v215, v227;
  v92 = [v83 initWithService_];

  if (!v92)
  {
    v56, v93, v94, v95, v96, v97, v98, v99, v216, v228;
    v61, v129, v130, v131, v132, v133, v134, v135, v220, v232;
LABEL_35:
    v128 = [objc_allocWithZone(MEMORY[0x277CBEA90]) init];
    goto LABEL_36;
  }

  v100 = [v92 accounts];

  if (!v100)
  {
LABEL_62:
    __break(1u);
    return;
  }

  v56, v101, v102, v103, v104, v105, v106, v107, v216, v228;
  sub_22B4D01A0(0, &qword_27D8CF1F8, 0x277D186C0);
  sub_22B7898AC();
  v108 = sub_22B7DBAF8();
  v61, v109, v110, v111, v112, v113, v114, v115, v217, v229;

  v116 = sub_22B786E38(v108, &qword_27D8CF1F8, 0x277D186C0);
  v108, v117, v118, v119, v120, v121, v122, v123, v218, v230;
  if (!v116)
  {
    goto LABEL_35;
  }

  v124 = [v116 pushToken];

  if (!v124)
  {
    goto LABEL_35;
  }

  v125 = sub_22B7DA848();
  v127 = v126;

  v128 = sub_22B7DA838();
  sub_22B705E98(v125, v127);
LABEL_36:
  v136 = sub_22B7DA9E8();
  if (*v136->messageStore)
  {
    v144 = *v136->queue;
    v145 = *v136->membershipObserver;
    v146 = v136;

    v136 = v146;
  }

  else
  {
    v144 = 0;
    v145 = 0;
  }

  v136, v137, v138, v139, v140, v141, v142, v143, v219, v231;
  sub_22B6F0AD4(&qword_27D8CF1E8, &qword_22B7FC150);
  v147 = swift_initStackObject();
  v148 = v147;
  *(v147 + 32) = 0xD000000000000012;
  *(v147 + 16) = xmmword_22B7F97B0;
  *(v147 + 40) = 0x800000022B811000;
  if (v80)
  {
    v149 = MEMORY[0x277D837D0];
  }

  else
  {
    v78 = 0;
    v149 = 0;
    *(v147 + 64) = 0;
  }

  *(v147 + 48) = v78;
  *(v147 + 56) = v80;
  *(v147 + 72) = v149;
  *(v147 + 80) = 0xD000000000000013;
  *(v147 + 88) = 0x800000022B811020;
  v150 = [v128 base64EncodedStringWithOptions_];
  v151 = sub_22B7DB6A8();
  v153 = v152;

  v148[12] = v151;
  v148[13] = v153;
  v148[15] = v77;
  v148[16] = 0x6C2D6D6574737973;
  v148[17] = 0xEF65676175676E61;
  if (v145)
  {
    v154 = MEMORY[0x277D837D0];
  }

  else
  {
    v144 = 0;
    v154 = 0;
    v148[20] = 0;
  }

  v148[18] = v144;
  v148[19] = v145;
  v148[21] = v154;
  v155 = sub_22B71E938(v148);
  swift_setDeallocating();
  sub_22B6F0AD4(&unk_27D8CDB70, &qword_22B7FA370);
  swift_arrayDestroy();
  v238 = sub_22B6F0AD4(&qword_27D8CF1F0, &qword_22B7FC158);
  *&v237 = v155;
  sub_22B786B6C(&v237, 0x692D746E65696C63, 0xEB000000006F666ELL);
}

void sub_22B789268(uint64_t a1, void *a2, char a3)
{
  v6 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = objc_opt_self();
  v10 = [v9 sharedFeatureFlags];
  v11 = [v10 isTrustKitRCSSpamReportingEnabled];

  if ((v11 & 1) == 0)
  {
    v12 = [v9 sharedFeatureFlags];
    v13 = [v12 isIntroductionsEnabled];

    if (!v13)
    {
      if (qword_27D8CCC98 != -1)
      {
        swift_once();
      }

      v21 = sub_22B7DB2B8();
      sub_22B4CFA74(v21, qword_27D8D48D0);
      v23 = sub_22B7DB298();
      v15 = sub_22B7DBC78();
      if (!os_log_type_enabled(v23, v15))
      {
        goto LABEL_14;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "FeatureFlag disabled TrustKit";
      goto LABEL_13;
    }
  }

  if ((IMDisableTrustKitSpamReporting() & 1) == 0)
  {
    v24 = a1;

    sub_22B788904(&v24, a2);
    v18 = sub_22B7DBA58();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v19 = v24;
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = a3 & 1;
    *(v20 + 40) = v19;
    sub_22B77E3D4(0, 0, v8, &unk_22B7FC148, v20);

    return;
  }

  if (qword_27D8CCC98 != -1)
  {
    swift_once();
  }

  v14 = sub_22B7DB2B8();
  sub_22B4CFA74(v14, qword_27D8D48D0);
  v23 = sub_22B7DB298();
  v15 = sub_22B7DBC78();
  if (os_log_type_enabled(v23, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Server bag disabled TrustKit";
LABEL_13:
    _os_log_impl(&dword_22B4CC000, v23, v15, v17, v16, 2u);
    MEMORY[0x231898D60](v16, -1, -1);
  }

LABEL_14:
  v22 = v23;
}

uint64_t sub_22B789590(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F0D94;

  return sub_22B786FD8(a1, v4, v5, v6, v7);
}

__CFString *sub_22B789654(uint64_t a1)
{
  v1 = a1 & 0xF;
  if (v1 <= 1)
  {
    if ((a1 & 0xF) == 0)
    {
      v2 = @"KnownSender";
      goto LABEL_12;
    }

    if (v1 == 1)
    {
      v2 = @"UnknownSender";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v1)
    {
      case 2uLL:
        v2 = @"FilterJunk";
        goto LABEL_12;
      case 3uLL:
        v2 = @"FilterSMSPromotional";
        goto LABEL_12;
      case 4uLL:
        v2 = @"FilterSMSTransactional";
LABEL_12:
        v3 = v2;
        goto LABEL_13;
    }
  }

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", a1];
LABEL_13:

  return v2;
}

__CFString *sub_22B789720(uint64_t a1)
{
  if ((a1 & 0xF) == 4)
  {
    v3 = a1 >> 4;
    if (a1 >> 4 <= 4)
    {
      if (v3 > 2)
      {
        if (v3 == 3)
        {
          v2 = @"Orders";
          goto LABEL_32;
        }

        if (v3 == 4)
        {
          v2 = @"Reminder";
          goto LABEL_32;
        }
      }

      else
      {
        if (v3 == 1)
        {
          v2 = @"TransactionalOthers";
          goto LABEL_32;
        }

        if (v3 == 2)
        {
          v2 = @"Finance";
          goto LABEL_32;
        }
      }
    }

    else if (v3 <= 6)
    {
      if (v3 == 5)
      {
        v2 = @"Health";
        goto LABEL_32;
      }

      if (v3 == 6)
      {
        v2 = @"Weather";
        goto LABEL_32;
      }
    }

    else
    {
      switch(v3)
      {
        case 7:
          v2 = @"Carrier";
          goto LABEL_32;
        case 8:
          v2 = @"Rewards";
          goto LABEL_32;
        case 9:
          v2 = @"PublicServices";
          goto LABEL_32;
      }
    }

LABEL_26:
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", a1];
    goto LABEL_33;
  }

  if ((a1 & 0xF) != 3)
  {
    v2 = 0;
    goto LABEL_33;
  }

  v1 = a1 >> 4;
  if (a1 >> 4 == 12)
  {
    v2 = @"Coupons";
    goto LABEL_32;
  }

  if (v1 == 11)
  {
    v2 = @"Offers";
    goto LABEL_32;
  }

  if (v1 != 10)
  {
    goto LABEL_26;
  }

  v2 = @"PromotionalOthers";
LABEL_32:
  v4 = v2;
LABEL_33:

  return v2;
}

unint64_t sub_22B7898AC()
{
  result = qword_27D8CF200;
  if (!qword_27D8CF200)
  {
    sub_22B4D01A0(255, &qword_27D8CF1F8, 0x277D186C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CF200);
  }

  return result;
}

uint64_t sub_22B789918(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22B4DDE6C(a2, a3);
  swift_getAtKeyPath();
  sub_22B4DDE5C(a2, a3);
  return v7;
}

uint64_t (*sub_22B789984())()
{
  v1 = *(v0 + 32);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 40));
  sub_22B78B88C((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 40));

  if (!v4)
  {
    return 0;
  }

  v3 = v4;
  *(swift_allocObject() + 16) = v3;
  return sub_22B78B8A8;
}

uint64_t sub_22B789A5C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22B78C260;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_22B4DDE6C(v3, v4);
}

uint64_t sub_22B789ADC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22B78C248;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  sub_22B4DDE6C(v3, v4);
  result = sub_22B4DDE5C(v7, v8);
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  return result;
}

uint64_t (*sub_22B789B78(char a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  sub_22B4DDE6C(a2, a3);
  swift_getAtKeyPath();
  sub_22B4DDE5C(a2, a3);
  if (!v8)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v8;
  *(v6 + 24) = v9;
  return sub_22B78C248;
}

uint64_t sub_22B789C28@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t (**a3)()@<X8>)
{
  result = a2(*a1, *(a1 + 1), *(a1 + 2));
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_22B717740;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

void sub_22B789CB4(void *a1)
{
  v2 = v1;
  v120[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a1;
    v4 = a1;
    if (qword_28141F3D8 != -1)
    {
      swift_once();
    }

    v5 = sub_22B7DB2B8();
    sub_22B4CFA74(v5, qword_2814226C8);
    v6 = v3;

    v7 = sub_22B7DB298();
    v8 = sub_22B7DBC98();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v120[0] = v116;
      *v9 = 136446466;
      v11 = [*(v1 + 24) identifier];
      v12 = sub_22B7DB6A8();
      v14 = v13;

      v2 = v1;
      v15 = sub_22B4CFAAC(v12, v14, v120);
      v14, v16, v17, v18, v19, v20, v21, v22, v114, v116;
      *(v9 + 4) = v15;
      *(v9 + 12) = 2112;
      v23 = v3;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v24;
      *v10 = v24;
      _os_log_impl(&dword_22B4CC000, v7, v8, "Task %{public}s failed with error %@", v9, 0x16u);
      sub_22B4D0D64(v10, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v10, -1, -1);
      sub_22B4CFB78(v117);
      MEMORY[0x231898D60](v117, -1, -1);
      MEMORY[0x231898D60](v9, -1, -1);
    }

    v25 = *(v2 + 24);
    v120[0] = 0;
    if ([v25 setTaskExpiredWithRetryAfter:v120 error:7200.0])
    {
      v26 = v120[0];
LABEL_25:

      goto LABEL_28;
    }

    v48 = v120[0];
    v49 = sub_22B7DA6F8();

    swift_willThrow();

    v50 = v49;
    v51 = sub_22B7DB298();
    v52 = sub_22B7DBCA8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v118 = v2;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v120[0] = v55;
      *v53 = 136446466;
      v56 = [v25 identifier];
      v57 = sub_22B7DB6A8();
      v59 = v58;

      v60 = sub_22B4CFAAC(v57, v59, v120);
      v59, v61, v62, v63, v64, v65, v66, v67, v114, v118;
      *(v53 + 4) = v60;
      *(v53 + 12) = 2112;
      v68 = v49;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v69;
      *v54 = v69;
      _os_log_impl(&dword_22B4CC000, v51, v52, "Failed to expire task request for %{public}s with error: %@", v53, 0x16u);
      sub_22B4D0D64(v54, &unk_27D8CEC60, &qword_22B7F9E20);
      v70 = v54;
      v2 = v119;
      MEMORY[0x231898D60](v70, -1, -1);
      sub_22B4CFB78(v55);
      MEMORY[0x231898D60](v55, -1, -1);
      MEMORY[0x231898D60](v53, -1, -1);

      goto LABEL_25;
    }

    v88 = v49;
    goto LABEL_27;
  }

  v27 = *(v1 + 32);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);

  os_unfair_lock_lock((v27 + 40));
  sub_22B78B81C((v27 + 16), v120);
  os_unfair_lock_unlock((v27 + 40));

  if (LOBYTE(v120[0]) == 1)
  {
    if (qword_28141F3D8 != -1)
    {
      swift_once();
    }

    v29 = sub_22B7DB2B8();
    sub_22B4CFA74(v29, qword_2814226C8);

    v30 = sub_22B7DB298();
    v31 = sub_22B7DBC78();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v120[0] = v33;
      *v32 = 136446210;
      v34 = [*(v1 + 24) identifier];
      v35 = sub_22B7DB6A8();
      v37 = v36;

      v38 = sub_22B4CFAAC(v35, v37, v120);
      v37, v39, v40, v41, v42, v43, v44, v45, v114, v115;
      *(v32 + 4) = v38;
      _os_log_impl(&dword_22B4CC000, v30, v31, "Task %{public}s suspended", v32, 0xCu);
      sub_22B4CFB78(v33);
      MEMORY[0x231898D60](v33, -1, -1);
      MEMORY[0x231898D60](v32, -1, -1);
    }

    v46 = *(v1 + 24);
    v120[0] = 0;
    if ([v46 setTaskExpiredWithRetryAfter:v120 error:300.0])
    {
      v47 = v120[0];
      goto LABEL_28;
    }

    v89 = v120[0];
    v3 = sub_22B7DA6F8();

    swift_willThrow();

    v90 = v3;
    v51 = sub_22B7DB298();
    v91 = sub_22B7DBCA8();

    if (os_log_type_enabled(v51, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v120[0] = v94;
      *v92 = 136446466;
      v95 = [v46 identifier];
      v96 = sub_22B7DB6A8();
      v98 = v97;

      v99 = sub_22B4CFAAC(v96, v98, v120);
      v98, v100, v101, v102, v103, v104, v105, v106, v114, v115;
      *(v92 + 4) = v99;
      *(v92 + 12) = 2112;
      v107 = v3;
      v108 = _swift_stdlib_bridgeErrorToNSError();
      *(v92 + 14) = v108;
      *v93 = v108;
      _os_log_impl(&dword_22B4CC000, v51, v91, "Failed to expire task request for %{public}s with error: %@", v92, 0x16u);
      sub_22B4D0D64(v93, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v93, -1, -1);
      sub_22B4CFB78(v94);
      MEMORY[0x231898D60](v94, -1, -1);
      MEMORY[0x231898D60](v92, -1, -1);

      goto LABEL_25;
    }

    v88 = v3;
LABEL_27:

    goto LABEL_28;
  }

  if (qword_28141F3D8 != -1)
  {
    swift_once();
  }

  v71 = sub_22B7DB2B8();
  sub_22B4CFA74(v71, qword_2814226C8);

  v72 = sub_22B7DB298();
  v73 = sub_22B7DBC78();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v120[0] = v75;
    *v74 = 136446210;
    v76 = [*(v2 + 24) identifier];
    v77 = sub_22B7DB6A8();
    v79 = v78;

    v80 = sub_22B4CFAAC(v77, v79, v120);
    v79, v81, v82, v83, v84, v85, v86, v87, v114, v115;
    *(v74 + 4) = v80;
    _os_log_impl(&dword_22B4CC000, v72, v73, "Task %{public}s finished", v74, 0xCu);
    sub_22B4CFB78(v75);
    MEMORY[0x231898D60](v75, -1, -1);
    MEMORY[0x231898D60](v74, -1, -1);
  }

  [*(v2 + 24) setTaskCompleted];
LABEL_28:
  v109 = sub_22B789984();
  if (v109)
  {
    v111 = v110;
    v112 = v109;
    v109();
    v109 = sub_22B4DDE5C(v112, v111);
  }

  v113 = *(v2 + 32);
  MEMORY[0x28223BE20](v109);
  os_unfair_lock_lock(v113 + 10);
  sub_22B78B86C(&v113[4]);
  os_unfair_lock_unlock(v113 + 10);
}

uint64_t sub_22B78A648()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v84 - v5;
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  result = [objc_opt_self() needsReindexing];
  if (result)
  {
    v8 = [objc_opt_self() sharedFeatureFlags];
    v9 = [v8 isSpotlightReindexRefactorEnabled];

    if ((v9 & 1) != 0 || (v10 = objc_opt_self(), ![v10 isThrottled]))
    {
      if (qword_28141F3D8 != -1)
      {
        swift_once();
      }

      v35 = sub_22B7DB2B8();
      sub_22B4CFA74(v35, qword_2814226C8);

      v36 = v0;
      v37 = sub_22B7DB298();
      v38 = sub_22B7DBC78();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        aBlock[0] = v40;
        *v39 = 136446210;
        v41 = [v36[3] identifier];
        v42 = sub_22B7DB6A8();
        v44 = v43;

        v45 = sub_22B4CFAAC(v42, v44, aBlock);
        v44, v46, v47, v48, v49, v50, v51, v52, v84, v85;
        *(v39 + 4) = v45;
        _os_log_impl(&dword_22B4CC000, v37, v38, "Initiating reindex for %{public}s", v39, 0xCu);
        sub_22B4CFB78(v40);
        MEMORY[0x231898D60](v40, -1, -1);
        MEMORY[0x231898D60](v39, -1, -1);
      }

      v53 = [objc_opt_self() queryProvider];
      v54 = [objc_opt_self() contextWithReason_];
      aBlock[4] = sub_22B78B774;
      aBlock[5] = v36;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22B78B014;
      aBlock[3] = &unk_283F1EC98;
      v55 = _Block_copy(aBlock);

      [v53 setNeedsMessageReindexingWithContext:v54 completion:v55];
      _Block_release(v55);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_28141F3D8 != -1)
      {
        swift_once();
      }

      v11 = sub_22B7DB2B8();
      v12 = sub_22B4CFA74(v11, qword_2814226C8);

      v87 = v0;
      v13 = sub_22B7DB298();
      v14 = v87;
      v15 = v13;
      v16 = sub_22B7DBC78();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        aBlock[0] = v85;
        *v17 = 136446210;
        v18 = [*(v14 + 24) identifier];
        v19 = sub_22B7DB6A8();
        v86 = v12;
        v20 = v19;
        v22 = v21;

        v23 = sub_22B4CFAAC(v20, v22, aBlock);
        v22, v24, v25, v26, v27, v28, v29, v30, v84, v85;
        *(v17 + 4) = v23;
        _os_log_impl(&dword_22B4CC000, v15, v16, "Task %{public}s needs reindexing but indexing is throttled, deferring", v17, 0xCu);
        v31 = v85;
        sub_22B4CFB78(v85);
        MEMORY[0x231898D60](v31, -1, -1);
        MEMORY[0x231898D60](v17, -1, -1);
      }

      v32 = [v10 dateOfThrottlingCompletion];
      if (v32)
      {
        v33 = v32;
        sub_22B7DA928();

        v34 = sub_22B7DA968();
        (*(*(v34 - 8) + 56))(v4, 0, 1, v34);
      }

      else
      {
        v34 = sub_22B7DA968();
        (*(*(v34 - 8) + 56))(v4, 1, 1, v34);
      }

      sub_22B78B77C(v4, v6);
      sub_22B7DA968();
      v56 = *(v34 - 8);
      if ((*(v56 + 48))(v6, 1, v34) == 1)
      {
        sub_22B4D0D64(v6, &unk_27D8CF790, &qword_22B7F9578);
        v57 = 900.0;
      }

      else
      {
        sub_22B7DA8E8();
        v14 = v87;
        v59 = v58;
        (*(v56 + 8))(v6, v34);
        v57 = v59;
      }

      v60 = *(v14 + 24);
      aBlock[0] = 0;
      if ([v60 setTaskExpiredWithRetryAfter:aBlock error:v57])
      {
        v61 = aBlock[0];
      }

      else
      {
        v62 = aBlock[0];
        v63 = sub_22B7DA6F8();

        swift_willThrow();

        v64 = v63;
        v65 = sub_22B7DB298();
        v66 = sub_22B7DBCA8();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          aBlock[0] = v69;
          *v67 = 136446466;
          v70 = [v60 identifier];
          v71 = sub_22B7DB6A8();
          v73 = v72;

          v74 = sub_22B4CFAAC(v71, v73, aBlock);
          v73, v75, v76, v77, v78, v79, v80, v81, v84, v85;
          *(v67 + 4) = v74;
          *(v67 + 12) = 2112;
          v82 = v63;
          v83 = _swift_stdlib_bridgeErrorToNSError();
          *(v67 + 14) = v83;
          *v68 = v83;
          _os_log_impl(&dword_22B4CC000, v65, v66, "Failed to expire task request for %{public}s with error: %@", v67, 0x16u);
          sub_22B4D0D64(v68, &unk_27D8CEC60, &qword_22B7F9E20);
          MEMORY[0x231898D60](v68, -1, -1);
          sub_22B4CFB78(v69);
          MEMORY[0x231898D60](v69, -1, -1);
          MEMORY[0x231898D60](v67, -1, -1);
        }

        else
        {
        }
      }
    }

    return 1;
  }

  return result;
}