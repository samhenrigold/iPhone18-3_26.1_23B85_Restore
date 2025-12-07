void RCSServiceSession.leaveChat(_:style:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_F07BC();
  v13 = [v3 chatForChatIdentifier:v12 style:a3 updatingAccount:1];

  if (v13)
  {
    v35 = v13;
    v14 = [v35 chatIdentifier];
    v15 = [v35 style];
    v16 = [v3 _callerIDForChatWithChatIdentifier:v14 chatStyle:v15 foundChat:v35];

    if (v16)
    {
      v17 = [v35 lastAddressedLocalHandle];
      v18 = [v35 lastAddressedSIMID];
      v19 = [v3 _sendingDecisionForMessageItem:0 callerID:v16 lastAddressedLocalHandle:v17 lastAddressedSIMID:v18];

      if ((v19 & 2) != 0)
      {

LABEL_13:
        sub_78940(v35, 0);
        v33 = v35;

        return;
      }
    }

    else
    {
    }

    SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();

    if (SimDetailsFromTelephony)
    {
      sub_F0AFC();
      v25 = sub_F0B1C();
      (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
      sub_F0AEC();
      v26 = v35;
      v27 = v3;
      v28 = sub_F0ADC();
      v29 = swift_allocObject();
      v29[2] = v28;
      v29[3] = &protocol witness table for MainActor;
      v29[4] = v27;
      v29[5] = v26;
      sub_3CC0C(0, 0, v11, &unk_F3878, v29);

      v30 = [v26 chatIdentifier];
      if (v30)
      {
        v31 = v30;
        v32 = [v27 account];
        [v27 didLeaveChat:v31 style:a3 account:v32];
      }

      else
      {
        __break(1u);
      }

      return;
    }

    goto LABEL_13;
  }

  v20 = Logger.rcs.unsafeMutableAddressor();
  (*(v6 + 16))(v8, v20, v5);
  v21 = sub_F06AC();
  v22 = sub_F0CEC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "Received request to update display name but could not find a chat", v23, 2u);
  }

  (*(v6 + 8))(v8, v5);
}

void sub_78940(void *a1, char a2)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_388C8(&qword_127EE0, qword_F2CB0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v40[-v11];
  v13 = [a1 lastAddressedLocalHandle];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v33 = [v2 account];
    v34 = [v33 loginID];

    if (!v34)
    {
      return;
    }

    v14 = [v34 _stripFZIDPrefix];

    if (!v14)
    {
      return;
    }
  }

  v15 = sub_F07EC();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v42, v18, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (v26)
  {
    v17, v19, v20, v21, v22, v23, v24, v25;
    v27 = Logger.rcs.unsafeMutableAddressor();
    (*(v6 + 16))(v8, v27, v5);
    swift_errorRetain();
    v28 = sub_F06AC();
    v29 = sub_F0CEC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412546;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v31 = v32;
      *(v30 + 12) = 1024;
      *(v30 + 14) = a2 & 1;
      _os_log_impl(&dword_0, v28, v29, "Error processing self leaving a group chat: %@, occurredLocally: %{BOOL}d", v30, 0x12u);
      sub_372B0(v31, &qword_127AF0, &qword_F28E0);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    countAndFlagsBits = v42.id._countAndFlagsBits;
    object = v42.id._object;

    sub_3CAB8(&v42);
    v41 = a1;
    sub_388C8(&qword_128288, &qword_F3460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_F2C60;
    *(inited + 32) = countAndFlagsBits;
    *(inited + 40) = object;
    v38 = sub_7CC9C();

    v39 = a1;
    RCSParticipantChange.init(chat:type:participants:fromHandle:toID:fromMe:)(&v41, 1, inited, countAndFlagsBits, object, v15, v17, 1, v12, v38, &protocol witness table for IMDChat);
    sub_77CA4(v12, a2 & 1);
    sub_372B0(v12, &qword_127EE0, qword_F2CB0);
  }
}

uint64_t sub_78D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_F06CC();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  sub_F0AEC();
  v5[10] = sub_F0ADC();
  v8 = sub_F0A6C();
  v5[11] = v8;
  v5[12] = v7;

  return _swift_task_switch(sub_78E18, v8, v7);
}

void sub_78E18()
{
  v1 = *(*(v0[4] + OBJC_IVAR___RCSServiceSession_state) + 40);
  v0[13] = v1;
  if (v1)
  {
    v0[2] = v0[5];
    v0[3] = 0;

    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_78EF8;

    RCSGroupController.leaveGroup(chat:subscriptionContext:)((v0 + 2), (v0 + 3));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_78EF8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_7924C;
  }

  else
  {
    v5 = sub_79030;
  }

  return _swift_task_switch(v5, v3, v4);
}

void sub_79030()
{
  v32 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  v5 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v5, v2);
  v6 = v4;
  v7 = sub_F06AC();
  v8 = sub_F0CCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136315138;
    v12 = [v9 guid];

    if (!v12)
    {
      __break(1u);
      return;
    }

    v30 = *(v0 + 72);
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    v15 = sub_F07EC();
    v17 = v16;

    v18 = sub_3E850(v15, v17, &v31);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v10 + 4) = v18;
    _os_log_impl(&dword_0, v7, v8, "Finished leaving group %s", v10, 0xCu);
    sub_1EDC(v11);

    (*(v13 + 8))(v30, v14);
  }

  else
  {
    v26 = *(v0 + 72);
    v27 = *(v0 + 48);
    v28 = *(v0 + 56);

    (*(v28 + 8))(v26, v27);
  }

  sub_78940(*(v0 + 40), 1);

  v29 = *(v0 + 8);

  v29();
}

void sub_7924C()
{
  v38 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  v5 = Logger.rcs.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  swift_errorRetain();
  v7 = sub_F06AC();
  v8 = sub_F0CEC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v10 = 136315394;
    v12 = [v9 guid];
    if (!v12)
    {
      v33 = v0[5];

      __break(1u);
      return;
    }

    v13 = v12;
    v14 = v0[7];
    v15 = v0[5];
    v34 = v0[6];
    v35 = v0[8];

    v16 = sub_F07EC();
    v18 = v17;

    v19 = sub_3E850(v16, v18, &v37);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v10 + 4) = v19;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v27;
    *v11 = v27;
    _os_log_impl(&dword_0, v7, v8, "Failed to leave group %s: %@", v10, 0x16u);
    sub_372B0(v11, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v36);

    (*(v14 + 8))(v35, v34);
  }

  else
  {
    v29 = v0[7];
    v28 = v0[8];
    v31 = v0[5];
    v30 = v0[6];

    (*(v29 + 8))(v28, v30);
  }

  v32 = v0[1];

  v32();
}

uint64_t sub_79560(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = sub_388C8(&qword_127EE0, qword_F2CB0);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v4 = sub_F06CC();
  v2[43] = v4;
  v2[44] = *(v4 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v5 = RCSActor.shared.unsafeMutableAddressor();
  v6 = *v5;
  v2[48] = *v5;

  return _swift_task_switch(sub_7970C, v6, 0);
}

uint64_t sub_7970C(uint64_t (*a1)())
{
  v148 = v1;
  v2 = *(v1 + 272);
  v3 = *(v2 + *(*(v1 + 312) + 44));
  *(v1 + 392) = v3;
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_9D6B8(*(v3 + 16), 0);
    v6 = sub_374E0(&v146, v5 + 4, v4, v3);
    v7 = v146;

    sub_66138(v7);
    if (v6 != v4)
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v2 = *(v1 + 272);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v144 = v5;
  *(v1 + 400) = v5;
  v11 = *(v1 + 376);
  v13 = *(v1 + 344);
  v12 = *(v1 + 352);
  v14 = *(v1 + 336);
  v15 = Logger.rcs.unsafeMutableAddressor();
  *(v1 + 408) = v15;
  v16 = *(v12 + 16);
  *(v1 + 416) = v16;
  *(v1 + 424) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v11, v15, v13);
  sub_77C34(v2, v14);
  v17 = sub_F06AC();
  v18 = sub_F0CCC();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v1 + 376);
  v22 = *(v1 + 344);
  v21 = *(v1 + 352);
  v23 = *(v1 + 336);
  if (v19)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v146 = v25;
    *v24 = 136446210;
    sub_F035C();
    sub_5F9D4();
    v26 = sub_F11EC();
    v143 = v20;
    v28 = v27;
    sub_372B0(v23, &qword_127EE0, qword_F2CB0);
    v29 = sub_3E850(v26, v28, &v146);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v24 + 4) = v29;
    _os_log_impl(&dword_0, v17, v18, "Initiating participant change ID %{public}s", v24, 0xCu);
    sub_1EDC(v25);

    v37 = *(v21 + 8);
    v37(v143, v22);
  }

  else
  {

    sub_372B0(v23, &qword_127EE0, qword_F2CB0);
    v37 = *(v21 + 8);
    v37(v20, v22);
  }

  *(v1 + 432) = v37;
  if (qword_127A80 != -1)
  {
    swift_once();
  }

  v39 = *(v1 + 296);
  v38 = *(v1 + 304);
  v40 = *(v1 + 288);
  v41 = sub_3C96C(v40, qword_127D78);
  (*(v39 + 16))(v38, v41, v40);
  sub_F044C();
  v8 = (*(v39 + 8))(v38, v40);
  if (*(v1 + 73))
  {
    sub_388C8(&qword_1285D8, &qword_F3898);
    sub_7CC54(&qword_1285F0, &qword_1285D8, &qword_F3898, &protocol conformance descriptor for RCSGroupController<A>.GroupOperationError);
    v42 = swift_allocError();
    *v43 = xmmword_F3860;
    *(v43 + 16) = 3;
    swift_willThrow();
    *(v1 + 504) = v42;
    v44 = *(v1 + 320);
    v45 = *(v1 + 272);
    (*(v1 + 416))(*(v1 + 360), *(v1 + 408), *(v1 + 344));
    sub_77C34(v45, v44);
    swift_errorRetain();
    v46 = sub_F06AC();
    v47 = sub_F0CEC();

    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v1 + 432);
    v50 = *(v1 + 360);
    v51 = *(v1 + 344);
    v52 = *(v1 + 320);
    if (v48)
    {
      v145 = *(v1 + 344);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v146 = v55;
      *v53 = 136446466;
      sub_F035C();
      v142 = v49;
      sub_5F9D4();
      v56 = sub_F11EC();
      v141 = v50;
      v58 = v57;
      sub_372B0(v52, &qword_127EE0, qword_F2CB0);
      v59 = sub_3E850(v56, v58, &v146);
      v58, v60, v61, v62, v63, v64, v65, v66;
      *(v53 + 4) = v59;
      *(v53 + 12) = 2112;
      swift_errorRetain();
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v67;
      *v54 = v67;
      _os_log_impl(&dword_0, v46, v47, "Failed participant change ID %{public}s: %@", v53, 0x16u);
      sub_372B0(v54, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v55);

      v142(v141, v145);
    }

    else
    {

      sub_372B0(v52, &qword_127EE0, qword_F2CB0);
      v49(v50, v51);
    }

    *(v1 + 232) = v42;
    swift_errorRetain();
    sub_388C8(&qword_127B88, &qword_F3680);
    sub_388C8(&qword_1285D8, &qword_F3898);
    if (swift_dynamicCast())
    {
      v81 = *(v1 + 176);
      v82 = *(v1 + 184);
      *(v1 + 512) = v81;
      *(v1 + 520) = v82;
      v83 = *(v1 + 192);
      if (v83 == 1)
      {

        sub_F0AEC();
        *(v1 + 528) = sub_F0ADC();
        v84 = sub_F0A6C();
        v86 = v85;
        v87 = sub_7A88C;
        goto LABEL_39;
      }

      sub_7CC28(v81, v82, v83, v76, v77, v78, v79, v80);
    }

    *(v1 + 240) = v42;
    swift_errorRetain();
    if (!swift_dynamicCast())
    {
LABEL_38:

      sub_F0AEC();
      *(v1 + 536) = sub_F0ADC();
      v84 = sub_F0A6C();
      v86 = v140;
      v87 = sub_7AA00;
LABEL_39:
      v8 = v87;
      v9 = v84;
      v10 = v86;

      return _swift_task_switch(v8, v9, v10);
    }

    if (*(v1 + 72))
    {
      sub_7CBD4(v1 + 16);
      goto LABEL_38;
    }

    sub_3928((v1 + 32), v1 + 136);
    v8 = [objc_opt_self() sharedInstance];
    if (v8)
    {
      v91 = v8;
      v92 = *(v1 + 392);
      v93 = *(v1 + 312);
      v94 = *(v1 + 272);
      v146 = 0;
      v147 = 0xE000000000000000;
      sub_F0F9C(117);
      v95 = v147;
      *(v1 + 200) = v146;
      *(v1 + 208) = v95;
      v150._countAndFlagsBits = 0xD000000000000028;
      v150._object = 0x80000000000FF000;
      sub_F08CC(v150);
      sub_F0BFC();
      v151._countAndFlagsBits = 0x73646E6F63657320;
      v151._object = 0xEA0000000000202CLL;
      sub_F08CC(v151);
      sub_F0BFC();
      v152._object = 0x80000000000FF030;
      v152._countAndFlagsBits = 0xD00000000000001ELL;
      sub_F08CC(v152);
      sub_373E8((v1 + 136), *(v1 + 160));
      sub_F120C();
      v153._countAndFlagsBits = 0x2065676E6168430ALL;
      v153._object = 0xED00002065707974;
      sub_F08CC(v153);
      if (*(v94 + *(v93 + 40)))
      {
        v96._countAndFlagsBits = 0x65766F6D6552;
      }

      else
      {
        v96._countAndFlagsBits = 6579265;
      }

      if (*(v94 + *(v93 + 40)))
      {
        v97 = 0xE600000000000000;
      }

      else
      {
        v97 = 0xE300000000000000;
      }

      v96._object = v97;
      sub_F08CC(v96);
      v97, v98, v99, v100, v101, v102, v103, v104;
      v154._countAndFlagsBits = 0x696369747261500ALL;
      v154._object = 0xEE002073746E6170;
      sub_F08CC(v154);
      *(v1 + 248) = v92;

      sub_388C8(&qword_1285E0, &qword_F38A0);
      sub_7CC54(&qword_1285E8, &qword_1285E0, &qword_F38A0, &protocol conformance descriptor for [A : B].Keys);
      sub_3CBB8();
      v105 = sub_F097C();
      v107 = v106;
      v92, v106, v108, v109, v110, v111, v112, v113;
      v155._countAndFlagsBits = v105;
      v155._object = v107;
      sub_F08CC(v155);
      v107, v114, v115, v116, v117, v118, v119, v120;
      v121 = *(v1 + 200);
      v122 = *(v1 + 208);
      v123 = sub_F0FBC();
      v125 = v124;
      *(v1 + 80) = 1;
      *(v1 + 88) = v123;
      *(v1 + 96) = v124;
      *(v1 + 104) = v121;
      *(v1 + 112) = v122;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0;
      sub_94528((v1 + 80));
      v125, v126, v127, v128, v129, v130, v131, v132;
      v122, v133, v134, v135, v136, v137, v138, v139;

      sub_1EDC((v1 + 136));
      goto LABEL_38;
    }

LABEL_45:
    __break(1u);
    return _swift_task_switch(v8, v9, v10);
  }

  v68 = *(v1 + 312);
  v69 = *(v1 + 272);
  v70 = *(v69 + *(v68 + 40));
  v71 = *(*(*(v1 + 280) + OBJC_IVAR___RCSServiceSession_state) + 40);
  *(v1 + 440) = v71;
  if (v70)
  {
    if (v71)
    {
      v72 = *(v69 + *(v68 + 36));
      *(v1 + 472) = v72;
      *(v1 + 216) = v72;
      *(v1 + 224) = 0;

      v73 = v72;
      v74 = swift_task_alloc();
      *(v1 + 480) = v74;
      *v74 = v1;
      v74[1] = sub_7A5F8;

      return RCSGroupController.removeParticipants(_:from:subscriptionContext:)(v144, v1 + 216, v1 + 224);
    }

    goto LABEL_43;
  }

  if (!v71)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v88 = *(v69 + *(v68 + 36));
  *(v1 + 448) = v88;
  *(v1 + 256) = v88;
  *(v1 + 264) = 0;

  v89 = v88;
  v90 = swift_task_alloc();
  *(v1 + 456) = v90;
  *v90 = v1;
  v90[1] = sub_7A264;

  return RCSGroupController.addParticipants(_:to:subscriptionContext:)(v144, v1 + 256, v1 + 264);
}

uint64_t sub_7A264()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 448);
  v4 = *(v2 + 384);

  if (v0)
  {
    v5 = sub_7AB58;
  }

  else
  {

    v5 = sub_7A3B4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_7A3B4()
{
  v29 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 272);
  (*(v0 + 416))(*(v0 + 368), *(v0 + 408), *(v0 + 344));
  sub_77C34(v2, v1);
  v3 = sub_F06AC();
  v4 = sub_F0CCC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 432);
  v7 = *(v0 + 368);
  v8 = *(v0 + 344);
  v9 = *(v0 + 328);
  if (v5)
  {
    v27 = *(v0 + 432);
    v10 = swift_slowAlloc();
    v26 = v7;
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136446210;
    sub_F035C();
    sub_5F9D4();
    v12 = sub_F11EC();
    v14 = v13;
    sub_372B0(v9, &qword_127EE0, qword_F2CB0);
    v15 = sub_3E850(v12, v14, &v28);
    v14, v16, v17, v18, v19, v20, v21, v22;
    *(v10 + 4) = v15;
    _os_log_impl(&dword_0, v3, v4, "Finished participant change ID %{public}s", v10, 0xCu);
    sub_1EDC(v11);

    v27(v26, v8);
  }

  else
  {

    sub_372B0(v9, &qword_127EE0, qword_F2CB0);
    v6(v7, v8);
  }

  sub_F0AEC();
  *(v0 + 496) = sub_F0ADC();
  v24 = sub_F0A6C();

  return _swift_task_switch(sub_7A750, v24, v23);
}

uint64_t sub_7A5F8()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v3 = *(v2 + 472);
  v4 = *(v2 + 384);

  if (v0)
  {
    v5 = sub_7B1E0;
  }

  else
  {

    v5 = sub_7CCE8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_7A750()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 272);

  sub_77CA4(v2, 1);

  return _swift_task_switch(sub_7A7D4, v1, 0);
}

uint64_t sub_7A7D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7A88C()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[48];
  v5 = v0[34];
  v4 = v0[35];

  sub_7B868(v2, v4, v5);
  sub_7CC28(v2, v1, &dword_0 + 1, v6, v7, v8, v9, v10);

  return _swift_task_switch(sub_7A934, v3, 0);
}

uint64_t sub_7A934()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7AA00()
{
  v1 = v0[50];
  v2 = v0[48];
  v4 = v0[34];
  v3 = v0[35];

  sub_7B868(v1, v3, v4);

  return _swift_task_switch(sub_7AA94, v2, 0);
}

uint64_t sub_7AA94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7AB58()
{
  v97 = v0;
  v1 = *(v0 + 464);
  *(v0 + 504) = v1;
  v2 = *(v0 + 320);
  v3 = *(v0 + 272);
  (*(v0 + 416))(*(v0 + 360), *(v0 + 408), *(v0 + 344));
  sub_77C34(v3, v2);
  swift_errorRetain();
  v4 = sub_F06AC();
  v5 = sub_F0CEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 432);
  v8 = *(v0 + 360);
  v9 = *(v0 + 344);
  v10 = *(v0 + 320);
  if (v6)
  {
    v94 = *(v0 + 344);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v95 = v13;
    *v11 = 136446466;
    sub_F035C();
    v93 = v7;
    sub_5F9D4();
    v14 = sub_F11EC();
    v92 = v8;
    v16 = v15;
    sub_372B0(v10, &qword_127EE0, qword_F2CB0);
    v17 = sub_3E850(v14, v16, &v95);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v25;
    *v12 = v25;
    _os_log_impl(&dword_0, v4, v5, "Failed participant change ID %{public}s: %@", v11, 0x16u);
    sub_372B0(v12, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v13);

    v93(v92, v94);
  }

  else
  {

    sub_372B0(v10, &qword_127EE0, qword_F2CB0);
    v7(v8, v9);
  }

  *(v0 + 232) = v1;
  swift_errorRetain();
  sub_388C8(&qword_127B88, &qword_F3680);
  sub_388C8(&qword_1285D8, &qword_F3898);
  if (swift_dynamicCast())
  {
    v31 = *(v0 + 176);
    v32 = *(v0 + 184);
    *(v0 + 512) = v31;
    *(v0 + 520) = v32;
    v33 = *(v0 + 192);
    if (v33 == 1)
    {

      sub_F0AEC();
      *(v0 + 528) = sub_F0ADC();
      v34 = sub_F0A6C();
      v36 = v35;
      v37 = sub_7A88C;
      goto LABEL_20;
    }

    sub_7CC28(v31, v32, v33, v26, v27, v28, v29, v30);
  }

  *(v0 + 240) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (*(v0 + 72))
    {
      sub_7CBD4(v0 + 16);
    }

    else
    {
      sub_3928((v0 + 32), v0 + 136);
      v38 = [objc_opt_self() sharedInstance];
      if (!v38)
      {
        __break(1u);
        return _swift_task_switch(v38, v39, v40);
      }

      v41 = v38;
      v42 = *(v0 + 392);
      v43 = *(v0 + 312);
      v44 = *(v0 + 272);
      v95 = 0;
      v96 = 0xE000000000000000;
      sub_F0F9C(117);
      v45 = v96;
      *(v0 + 200) = v95;
      *(v0 + 208) = v45;
      v99._countAndFlagsBits = 0xD000000000000028;
      v99._object = 0x80000000000FF000;
      sub_F08CC(v99);
      sub_F0BFC();
      v100._countAndFlagsBits = 0x73646E6F63657320;
      v100._object = 0xEA0000000000202CLL;
      sub_F08CC(v100);
      sub_F0BFC();
      v101._object = 0x80000000000FF030;
      v101._countAndFlagsBits = 0xD00000000000001ELL;
      sub_F08CC(v101);
      sub_373E8((v0 + 136), *(v0 + 160));
      sub_F120C();
      v102._countAndFlagsBits = 0x2065676E6168430ALL;
      v102._object = 0xED00002065707974;
      sub_F08CC(v102);
      if (*(v44 + *(v43 + 40)))
      {
        v46._countAndFlagsBits = 0x65766F6D6552;
      }

      else
      {
        v46._countAndFlagsBits = 6579265;
      }

      if (*(v44 + *(v43 + 40)))
      {
        v47 = 0xE600000000000000;
      }

      else
      {
        v47 = 0xE300000000000000;
      }

      v46._object = v47;
      sub_F08CC(v46);
      v47, v48, v49, v50, v51, v52, v53, v54;
      v103._countAndFlagsBits = 0x696369747261500ALL;
      v103._object = 0xEE002073746E6170;
      sub_F08CC(v103);
      *(v0 + 248) = v42;

      sub_388C8(&qword_1285E0, &qword_F38A0);
      sub_7CC54(&qword_1285E8, &qword_1285E0, &qword_F38A0, &protocol conformance descriptor for [A : B].Keys);
      sub_3CBB8();
      v55 = sub_F097C();
      v57 = v56;
      v42, v56, v58, v59, v60, v61, v62, v63;
      v104._countAndFlagsBits = v55;
      v104._object = v57;
      sub_F08CC(v104);
      v57, v64, v65, v66, v67, v68, v69, v70;
      v71 = *(v0 + 200);
      v72 = *(v0 + 208);
      v73 = sub_F0FBC();
      v75 = v74;
      *(v0 + 80) = 1;
      *(v0 + 88) = v73;
      *(v0 + 96) = v74;
      *(v0 + 104) = v71;
      *(v0 + 112) = v72;
      *(v0 + 120) = 0;
      *(v0 + 128) = 0;
      sub_94528((v0 + 80));
      v75, v76, v77, v78, v79, v80, v81, v82;
      v72, v83, v84, v85, v86, v87, v88, v89;

      sub_1EDC((v0 + 136));
    }
  }

  sub_F0AEC();
  *(v0 + 536) = sub_F0ADC();
  v34 = sub_F0A6C();
  v36 = v90;
  v37 = sub_7AA00;
LABEL_20:
  v38 = v37;
  v39 = v34;
  v40 = v36;

  return _swift_task_switch(v38, v39, v40);
}

uint64_t sub_7B1E0()
{
  v97 = v0;
  v1 = *(v0 + 488);
  *(v0 + 504) = v1;
  v2 = *(v0 + 320);
  v3 = *(v0 + 272);
  (*(v0 + 416))(*(v0 + 360), *(v0 + 408), *(v0 + 344));
  sub_77C34(v3, v2);
  swift_errorRetain();
  v4 = sub_F06AC();
  v5 = sub_F0CEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 432);
  v8 = *(v0 + 360);
  v9 = *(v0 + 344);
  v10 = *(v0 + 320);
  if (v6)
  {
    v94 = *(v0 + 344);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v95 = v13;
    *v11 = 136446466;
    sub_F035C();
    v93 = v7;
    sub_5F9D4();
    v14 = sub_F11EC();
    v92 = v8;
    v16 = v15;
    sub_372B0(v10, &qword_127EE0, qword_F2CB0);
    v17 = sub_3E850(v14, v16, &v95);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v25;
    *v12 = v25;
    _os_log_impl(&dword_0, v4, v5, "Failed participant change ID %{public}s: %@", v11, 0x16u);
    sub_372B0(v12, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v13);

    v93(v92, v94);
  }

  else
  {

    sub_372B0(v10, &qword_127EE0, qword_F2CB0);
    v7(v8, v9);
  }

  *(v0 + 232) = v1;
  swift_errorRetain();
  sub_388C8(&qword_127B88, &qword_F3680);
  sub_388C8(&qword_1285D8, &qword_F3898);
  if (swift_dynamicCast())
  {
    v31 = *(v0 + 176);
    v32 = *(v0 + 184);
    *(v0 + 512) = v31;
    *(v0 + 520) = v32;
    v33 = *(v0 + 192);
    if (v33 == 1)
    {

      sub_F0AEC();
      *(v0 + 528) = sub_F0ADC();
      v34 = sub_F0A6C();
      v36 = v35;
      v37 = sub_7A88C;
      goto LABEL_20;
    }

    sub_7CC28(v31, v32, v33, v26, v27, v28, v29, v30);
  }

  *(v0 + 240) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (*(v0 + 72))
    {
      sub_7CBD4(v0 + 16);
    }

    else
    {
      sub_3928((v0 + 32), v0 + 136);
      v38 = [objc_opt_self() sharedInstance];
      if (!v38)
      {
        __break(1u);
        return _swift_task_switch(v38, v39, v40);
      }

      v41 = v38;
      v42 = *(v0 + 392);
      v43 = *(v0 + 312);
      v44 = *(v0 + 272);
      v95 = 0;
      v96 = 0xE000000000000000;
      sub_F0F9C(117);
      v45 = v96;
      *(v0 + 200) = v95;
      *(v0 + 208) = v45;
      v99._countAndFlagsBits = 0xD000000000000028;
      v99._object = 0x80000000000FF000;
      sub_F08CC(v99);
      sub_F0BFC();
      v100._countAndFlagsBits = 0x73646E6F63657320;
      v100._object = 0xEA0000000000202CLL;
      sub_F08CC(v100);
      sub_F0BFC();
      v101._object = 0x80000000000FF030;
      v101._countAndFlagsBits = 0xD00000000000001ELL;
      sub_F08CC(v101);
      sub_373E8((v0 + 136), *(v0 + 160));
      sub_F120C();
      v102._countAndFlagsBits = 0x2065676E6168430ALL;
      v102._object = 0xED00002065707974;
      sub_F08CC(v102);
      if (*(v44 + *(v43 + 40)))
      {
        v46._countAndFlagsBits = 0x65766F6D6552;
      }

      else
      {
        v46._countAndFlagsBits = 6579265;
      }

      if (*(v44 + *(v43 + 40)))
      {
        v47 = 0xE600000000000000;
      }

      else
      {
        v47 = 0xE300000000000000;
      }

      v46._object = v47;
      sub_F08CC(v46);
      v47, v48, v49, v50, v51, v52, v53, v54;
      v103._countAndFlagsBits = 0x696369747261500ALL;
      v103._object = 0xEE002073746E6170;
      sub_F08CC(v103);
      *(v0 + 248) = v42;

      sub_388C8(&qword_1285E0, &qword_F38A0);
      sub_7CC54(&qword_1285E8, &qword_1285E0, &qword_F38A0, &protocol conformance descriptor for [A : B].Keys);
      sub_3CBB8();
      v55 = sub_F097C();
      v57 = v56;
      v42, v56, v58, v59, v60, v61, v62, v63;
      v104._countAndFlagsBits = v55;
      v104._object = v57;
      sub_F08CC(v104);
      v57, v64, v65, v66, v67, v68, v69, v70;
      v71 = *(v0 + 200);
      v72 = *(v0 + 208);
      v73 = sub_F0FBC();
      v75 = v74;
      *(v0 + 80) = 1;
      *(v0 + 88) = v73;
      *(v0 + 96) = v74;
      *(v0 + 104) = v71;
      *(v0 + 112) = v72;
      *(v0 + 120) = 0;
      *(v0 + 128) = 0;
      sub_94528((v0 + 80));
      v75, v76, v77, v78, v79, v80, v81, v82;
      v72, v83, v84, v85, v86, v87, v88, v89;

      sub_1EDC((v0 + 136));
    }
  }

  sub_F0AEC();
  *(v0 + 536) = sub_F0ADC();
  v34 = sub_F0A6C();
  v36 = v90;
  v37 = sub_7AA00;
LABEL_20:
  v38 = v37;
  v39 = v34;
  v40 = v36;

  return _swift_task_switch(v38, v39, v40);
}

void sub_7B868(RCSServiceSession *a1, void *a2, uint64_t a3)
{
  v112 = a2;
  v5 = sub_388C8(&qword_127EE0, qword_F2CB0);
  __chkstk_darwin(v5);
  v7 = &v107[-v6];
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v107[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = Logger.rcs.unsafeMutableAddressor();
  (*(v9 + 16))(v11, v12, v8);
  sub_77C34(a3, v7);
  swift_bridgeObjectRetain_n();
  v13 = sub_F06AC();
  v14 = sub_F0CEC();
  v15 = os_log_type_enabled(v13, v14);
  v110 = a3;
  v111 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v115 = v8;
    v116 = v17;
    v18 = v17;
    *v16 = 136446466;
    v19 = v7[*(v5 + 40)] == 0;
    if (v7[*(v5 + 40)])
    {
      v20 = 0x65766F6D6572;
    }

    else
    {
      v20 = 6579297;
    }

    if (v19)
    {
      v21 = 0xE300000000000000;
    }

    else
    {
      v21 = 0xE600000000000000;
    }

    sub_372B0(v7, &qword_127EE0, qword_F2CB0);
    v22 = sub_3E850(v20, v21, &v116);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v16 + 4) = v22;
    *(v16 + 12) = 2048;
    v30 = *a1[1].IMDTelephonyServiceSession_opaque;
    a1, v31, v32, v33, v34, v35, v36, v37;
    *(v16 + 14) = v30;
    a1, v38, v39, v40, v41, v42, v43, v44;
    _os_log_impl(&dword_0, v13, v14, "Failed to %{public}s %ld participants! Reverting failed changes", v16, 0x16u);
    sub_1EDC(v18);

    a3 = v110;

    (*(v9 + 8))(v11, v115);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_372B0(v7, &qword_127EE0, qword_F2CB0);
    (*(v9 + 8))(v11, v8);
  }

  v45 = *a1[1].IMDTelephonyServiceSession_opaque;
  v46 = v111;
  v47 = v112;
  if (v45)
  {
    v48 = *(a3 + *(v111 + 36));
    if (*(a3 + *(v111 + 40)))
    {
      v49 = 2;
    }

    else
    {
      v49 = 3;
    }

    v108 = v49;
    state = a1[2].state;
    v109 = v48;
    while (1)
    {
      v52 = *(state - 1);
      v51 = *state;

      v53 = sub_F07BC();
      v54 = [v48 chatIdentifier];
      if (!v54)
      {
        __break(1u);
        return;
      }

      v55 = v54;
      v113 = [v48 style];
      v115 = [v47 account];
      v56 = *(a3 + *(v46 + 52) + 8) ? sub_F07BC() : 0;
      v57 = *(a3 + *(v46 + 44));
      v58 = *v57[1].IMDTelephonyServiceSession_opaque;
      v114 = v45;
      if (!v58)
      {
        break;
      }

      v59 = sub_51FEC(v52, v51);
      if (v60)
      {
        v61 = *(*v57[3].state + 16 * v59 + 8);

        v62 = sub_F07BC();
        v61, v63, v64, v65, v66, v67, v68, v69;
        if (!*v57[1].IMDTelephonyServiceSession_opaque)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v62 = 0;
        if (!*v57[1].IMDTelephonyServiceSession_opaque)
        {
          goto LABEL_28;
        }
      }

      sub_51FEC(v52, v51);
      v71 = v70;
      v57, v70, v72, v73, v74, v75, v76, v77;
LABEL_29:
      LOBYTE(v106) = v71 & 1;
      v78 = v115;
      LOBYTE(v105) = v113;
      v79 = v112;

      if (*v57[1].IMDTelephonyServiceSession_opaque)
      {
        v87 = sub_51FEC(v52, v51);
        v89 = v88;
        v51, v88, v90, v91, v92, v93, v94, v95;
        v47 = v79;
        if (v89)
        {
          v96 = *(*v57[3].state + 16 * v87 + 8);

          v97 = sub_F07BC();
          v96, v98, v99, v100, v101, v102, v103, v104;
          [v79 markItemFailedWithGUID:v97 errorCode:4];
        }
      }

      else
      {
        v51, v80, v81, v82, v83, v84, v85, v86;
        v47 = v79;
      }

      state += 2;
      v45 = v114 - 1;
      a3 = v110;
      v46 = v111;
      v48 = v109;
      if (v114 == 1)
      {
        return;
      }
    }

    v62 = 0;
LABEL_28:
    v71 = 0;
    goto LABEL_29;
  }
}

void sub_7BDB0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v8 = v7;
  v73 = a3;
  v74 = a1;
  v13 = sub_F06CC();
  v72 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v16 - 8);
  v78 = &v72 - v17;
  v18 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v75 = *(v18 - 1);
  __chkstk_darwin(v18);
  v76 = v19;
  v77 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v72 - v21;
  v79 = v8;
  if (a6 && (v23 = sub_F07BC(), v24 = [v8 chatForChatIdentifier:v23 style:a7 updatingAccount:1], v23, v24) || a4 && (v25 = objc_msgSend(objc_opt_self(), "sharedInstance"), v26 = sub_F07BC(), v24 = objc_msgSend(v25, "existingChatWithGUID:", v26), v25, v26, v24))
  {
    if (!a2)
    {
      __break(1u);
      return;
    }

    sub_388C8(&qword_128528, &unk_F36C0);
    v27 = sub_F09EC();
    v28 = v79;
    v29 = [v79 dictionaryForHandlesToGUIDsFromHandleInfo:v27];

    v73 = sub_F076C();
    v30 = [v24 lastAddressedLocalHandle];
    if (v30)
    {
      v31 = v30;
      v32 = sub_F07EC();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v40 = v24;
    v41 = [v40 chatIdentifier];
    v42 = [v28 _callerIDForChatWithChatIdentifier:v41 chatStyle:objc_msgSend(v40 foundChat:{"style"), v40}];

    if (v42)
    {
      v43 = [v40 lastAddressedLocalHandle];
      v44 = [v40 lastAddressedSIMID];
      v45 = [v28 _sendingDecisionForMessageItem:0 callerID:v42 lastAddressedLocalHandle:v43 lastAddressedSIMID:v44];

      if ((v45 & 2) != 0)
      {

        goto LABEL_20;
      }
    }

    else
    {
    }

    SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();

    if (SimDetailsFromTelephony)
    {
      v47 = v79;
      v48 = [v79 subscriptionContextForChat:v40];
      if (v48)
      {
        v56 = v48;
        v34, v49, v50, v51, v52, v53, v54, v55;
        v57 = [v56 phoneNumber];
        if (v57)
        {
          v58 = v57;
          v32 = sub_F07EC();
          v34 = v59;
        }

        else
        {

          v32 = 0;
          v34 = 0;
        }
      }

      v60 = 1;
      goto LABEL_23;
    }

LABEL_20:
    v60 = 0;
    v47 = v79;
LABEL_23:
    v61 = v74 != 2;
    *&v22[v18[9]] = v40;
    sub_F034C();
    v22[v18[10]] = v61;
    *&v22[v18[11]] = v73;
    v62 = &v22[v18[12]];
    *v62 = 0;
    *(v62 + 1) = 0;
    v63 = &v22[v18[13]];
    *v63 = v32;
    v63[1] = v34;
    v22[v18[14]] = 1;
    RCSServiceSession.process(participantChange:)(v22);
    v64 = v78;
    sub_F0AFC();
    v65 = sub_F0B1C();
    (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
    v66 = v77;
    sub_77C34(v22, v77);
    sub_F0AEC();
    v67 = v47;
    v68 = sub_F0ADC();
    v69 = (*(v75 + 80) + 40) & ~*(v75 + 80);
    v70 = v69 + v76;
    v71 = swift_allocObject();
    v71[2] = v68;
    v71[3] = &protocol witness table for MainActor;
    v71[4] = v67;
    sub_62E88(v66, v71 + v69);
    *(v71 + v70) = v60;
    sub_3CC0C(0, 0, v64, &unk_F3888, v71);

    sub_372B0(v22, &qword_127EE0, qword_F2CB0);
    return;
  }

  v35 = Logger.rcs.unsafeMutableAddressor();
  v36 = v72;
  (*(v72 + 16))(v15, v35, v13);
  v37 = sub_F06AC();
  v38 = sub_F0CEC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "Received request to update participants but could not find a chat", v39, 2u);
  }

  (*(v36 + 8))(v15, v13);
}

uint64_t sub_7C474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 32) = sub_F0AEC();
  *(v6 + 40) = sub_F0ADC();
  *(v6 + 48) = sub_F0ADC();
  v8 = sub_F0A6C();
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;

  return _swift_task_switch(sub_7C520, v8, v7);
}

uint64_t sub_7C520()
{
  if (*(v0 + 80) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_7C628;
    v2 = *(v0 + 24);

    return sub_79560(v2);
  }

  else
  {
    v4 = *(v0 + 24);

    sub_77CA4(v4, 0);
    v6 = sub_F0A6C();

    return _swift_task_switch(sub_4A2A0, v6, v5);
  }
}

uint64_t sub_7C628()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_7C748, v3, v2);
}

uint64_t sub_7C748()
{

  v1 = sub_F0A6C();

  return _swift_task_switch(sub_4A2A0, v1, v0);
}

uint64_t sub_7C9E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_38B0C;

  return sub_78D18(a1, v4, v5, v7, v6);
}

uint64_t sub_7CAA8(uint64_t a1)
{
  v4 = *(sub_388C8(&qword_127EE0, qword_F2CB0) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_37C54;

  return sub_7C474(a1, v5, v6, v7, v8, v9);
}

void sub_7CC28(RCSServiceSession *a1, RCSServiceSession *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if (a3 == 2)
  {
    a1 = a2;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
LABEL_5:
    a1, a2, a3, a4, a5, a6, a7, a8;
    return;
  }

  if (!a3)
  {
  }
}

uint64_t sub_7CC54(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_3CB70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_7CC9C()
{
  result = qword_127EF0;
  if (!qword_127EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_127EF0);
  }

  return result;
}

uint64_t RCSServiceSession.resolveGroupIdentity(for:subscriptionContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  sub_F0AEC();
  v4[8] = sub_F0ADC();
  v6 = sub_F0A6C();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_7CD88, v6, v5);
}

void sub_7CD88()
{
  v1 = *(*(v0[7] + OBJC_IVAR___RCSServiceSession_state) + 40);
  v0[11] = v1;
  if (v1)
  {
    v2 = v0[6];
    v0[2] = v0[5];
    v0[3] = v2;

    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_7CE70;
    v4 = v0[4];

    RCSGroupController.resolveGroupIdentity(for:subscriptionContext:)(v4, (v0 + 2), (v0 + 3));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_7CE70()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_7D00C;
  }

  else
  {
    v5 = sub_7CFA8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_7CFA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7D00C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RCSServiceSession.subscriptionInfo(for:)(void *a1)
{
  v2 = [a1 phoneNumber];
  if (v2)
  {
    v3 = v2;
    v4 = sub_F07EC();
    v6 = v5;

    v7 = sub_53E04(_swiftEmptyArrayStorage);
    v8._countAndFlagsBits = 7103860;
    v8._object = 0xE300000000000000;
    v9._countAndFlagsBits = v4;
    v9._object = v6;
    RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v15, v8, v9, v7, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
    __chkstk_darwin(v10);
    RCSHandle.canonicalizedHandle(for:)(sub_54C44, &v16);
    sub_3CAB8(&v15);
    v11 = v17;

    sub_3CAB8(&v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 labelID];
  if (v12)
  {
    v13 = v12;
    sub_F07EC();
  }

  return v11;
}

id RCSServiceSession.identifier(for:)(void *a1)
{
  result = [a1 chatIdentifier];
  if (result)
  {
    v2 = result;
    v3 = sub_F07EC();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void RCSServiceSession.maxTransferSize(for:for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() fetchSizeLimitsForTransfer:a1];
  sub_37310(0, &qword_128050, NSNumber_ptr);
  v13 = sub_F09FC();

  if (v13 >> 62)
  {
    v21 = sub_F10DC();
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_24:
    v13, v14, v15, v16, v17, v18, v19, v20;
    v23 = _swiftEmptyArrayStorage;
    v43 = _swiftEmptyArrayStorage[2];
    if (v43)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  v21 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
  if (!v21)
  {
    goto LABEL_24;
  }

LABEL_3:
  v82 = _swiftEmptyArrayStorage;
  sub_6EC28(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v76 = a1;
  v77 = a2;
  v78 = a3;
  v79 = v4;
  v80 = v11;
  v81 = v9;
  v22 = 0;
  v23 = v82;
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v24 = sub_F0FCC();
    }

    else
    {
      v24 = *(v13 + 8 * v22 + 32);
    }

    v25 = v24;
    v26 = [v24 longLongValue];

    v82 = v23;
    v35 = *v23[1].IMDTelephonyServiceSession_opaque;
    v34 = *v23[1].state;
    if (v35 >= v34 >> 1)
    {
      sub_6EC28((v34 > 1), v35 + 1, 1);
      v23 = v82;
    }

    ++v22;
    *v23[1].IMDTelephonyServiceSession_opaque = v35 + 1;
    *&v23[2].IMDTelephonyServiceSession_opaque[8 * v35] = v26;
  }

  while (v21 != v22);
  v13, v27, v28, v29, v30, v31, v32, v33;
  v11 = v80;
  v9 = v81;
  a3 = v78;
  a1 = v76;
  a2 = v77;
  v43 = *v23[1].IMDTelephonyServiceSession_opaque;
  if (v43)
  {
LABEL_12:
    v44 = *v23[2].IMDTelephonyServiceSession_opaque;
    v45 = v43 - 1;
    if (v43 != 1)
    {
      if (v43 < 5)
      {
        v46 = 1;
        goto LABEL_18;
      }

      v46 = v45 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v47 = vdupq_n_s64(v44);
      state = v23[3].state;
      v49 = v45 & 0xFFFFFFFFFFFFFFFCLL;
      v50 = v47;
      do
      {
        v47 = vbslq_s8(vcgtq_s64(v47, state[-1]), v47, state[-1]);
        v50 = vbslq_s8(vcgtq_s64(v50, *state), v50, *state);
        state += 2;
        v49 -= 4;
      }

      while (v49);
      v51 = vbslq_s8(vcgtq_s64(v47, v50), v47, v50);
      v52 = vextq_s8(v51, v51, 8uLL).u64[0];
      v44 = vbsl_s8(vcgtd_s64(v51.i64[0], v52), *v51.i8, v52);
      if (v45 != (v45 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_18:
        v53 = v43 - v46;
        v54 = &v23[2] + v46;
        do
        {
          v56 = *v54++;
          v55 = v56;
          if (v44 <= v56)
          {
            v44 = v55;
          }

          --v53;
        }

        while (v53);
      }
    }

    v23, v36, v37, v38, v39, v40, v41, v42;
    sub_3FEE8(a2, a3);
    return;
  }

LABEL_25:
  v23, v36, v37, v38, v39, v40, v41, v42;
  v57 = Logger.rcs.unsafeMutableAddressor();
  (*(v9 + 16))(v11, v57, v8);
  v58 = a1;
  v59 = sub_F06AC();
  v60 = sub_F0CEC();
  if (!os_log_type_enabled(v59, v60))
  {

    goto LABEL_29;
  }

  v61 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  v82 = v62;
  *v61 = 136315394;
  v63 = [v58 mimeType];

  if (v63)
  {
    v64 = sub_F07EC();
    v66 = v65;

    v67 = sub_3E850(v64, v66, &v82);
    v66, v68, v69, v70, v71, v72, v73, v74;
    *(v61 + 4) = v67;
    *(v61 + 12) = 2048;
    *(v61 + 14) = 104857600;
    _os_log_impl(&dword_0, v59, v60, "Could not fetch expected size limits for %s, defaulting to %lld", v61, 0x16u);
    sub_1EDC(v62);

LABEL_29:
    (*(v9 + 8))(v11, v8);
    return;
  }

LABEL_31:
  __break(1u);
}

id RCSServiceSession.transfer(forGUID:)(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = sub_F07BC();
    v5 = [v3 transferForGUID:v4];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RCSServiceSession.transcodeTransfer(transfer:for:isAudioMessage:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 608) = a4;
  *(v5 + 488) = a3;
  *(v5 + 496) = v4;
  *(v5 + 472) = a1;
  *(v5 + 480) = a2;
  v6 = sub_F06CC();
  *(v5 + 504) = v6;
  *(v5 + 512) = *(v6 - 8);
  *(v5 + 520) = swift_task_alloc();
  *(v5 + 528) = sub_F0AEC();
  *(v5 + 536) = sub_F0ADC();
  v8 = sub_F0A6C();
  *(v5 + 544) = v8;
  *(v5 + 552) = v7;

  return _swift_task_switch(sub_7D874, v8, v7);
}

uint64_t sub_7D874()
{
  v68 = v0;
  ThumbnailForySbSo14IMFileTransferCF_0 = _sSo17RCSServiceSessionC3RCSE24shouldCreateThumbnailForySbSo14IMFileTransferCF_0(*(v0 + 472));
  sub_388C8(&qword_1284E0, &qword_F3660);
  v2 = *(v0 + 488);
  v3 = &OBJC_CATEGORY_INSTANCE_METHODS_CoreTelephonyClient___SwiftHelpers;
  v5 = *(v0 + 472);
  v4 = *(v0 + 480);
  v6 = swift_allocObject();
  if (ThumbnailForySbSo14IMFileTransferCF_0)
  {
    *(v6 + 16) = xmmword_F2C70;
    RCSServiceSession.maxTransferSize(for:for:)(v5, v4, v2);
    *(v6 + 32) = v7;
    *(v6 + 40) = 10240;
  }

  else
  {
    *(v6 + 16) = xmmword_F2C60;
    RCSServiceSession.maxTransferSize(for:for:)(v5, v4, v2);
    *(v6 + 32) = v8;
  }

  *(v0 + 560) = v6;
  v9 = *(v0 + 520);
  v11 = *(v0 + 504);
  v10 = *(v0 + 512);
  v12 = Logger.rcs.unsafeMutableAddressor();
  (*(v10 + 16))(v9, v12, v11);

  v13 = sub_F06AC();
  v14 = sub_F0CCC();
  v6, v15, v16, v17, v18, v19, v20, v21;
  v22 = os_log_type_enabled(v13, v14);
  v23 = *(v0 + 520);
  v25 = *(v0 + 504);
  v24 = *(v0 + 512);
  if (v22)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v67 = v27;
    *v26 = 136315138;
    v28 = sub_F0A0C();
    v66 = v23;
    v29 = v6;
    v31 = v30;
    v32 = sub_3E850(v28, v30, &v67);
    v33 = v31;
    v6 = v29;
    v33, v34, v35, v36, v37, v38, v39, v40;
    *(v26 + 4) = v32;
    _os_log_impl(&dword_0, v13, v14, "Transcoding to %s", v26, 0xCu);
    sub_1EDC(v27);
    v3 = &OBJC_CATEGORY_INSTANCE_METHODS_CoreTelephonyClient___SwiftHelpers;

    (*(v24 + 8))(v66, v25);
  }

  else
  {

    (*(v24 + 8))(v23, v25);
  }

  v41 = *(v0 + 472);
  sub_388C8(&qword_1285A8, &unk_F3760);
  inited = swift_initStackObject();
  *(inited + 16) = *&v3[398].entrysize;
  *(inited + 32) = sub_F07EC();
  *(inited + 40) = v43;
  *(inited + 48) = 1;
  *(inited + 56) = sub_F07EC();
  *(inited + 64) = v44;
  *(inited + 72) = 0;
  v45 = sub_81174(inited);
  *(v0 + 568) = v45;
  swift_setDeallocating();
  sub_388C8(&qword_1285B0, &qword_F38C0);
  swift_arrayDestroy();
  v46 = [v41 transcoderUserInfo];
  if (v46)
  {
    v47 = v46;
    v48 = sub_F076C();
  }

  else
  {
    v48 = sub_80F34(_swiftEmptyArrayStorage);
  }

  v49 = *(v0 + 608);
  v50 = *(v0 + 472);
  *(v0 + 408) = sub_F07EC();
  *(v0 + 416) = v51;
  sub_F0F3C();
  *(v0 + 240) = &type metadata for Bool;
  *(v0 + 216) = v49;
  sub_54F88((v0 + 216), (v0 + 248));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v48;
  sub_525C0((v0 + 248), v0 + 96, isUniquelyReferenced_nonNull_native);
  sub_54F34(v0 + 96);
  v53 = v67;
  *(v0 + 456) = v67;
  if ([v50 isAdaptiveImageGlyph])
  {
    *(v0 + 424) = sub_F07EC();
    *(v0 + 432) = v54;
    sub_F0F3C();
    *(v0 + 304) = &type metadata for Bool;
    *(v0 + 280) = 1;
    sub_54F88((v0 + 280), (v0 + 312));
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v53;
    sub_525C0((v0 + 312), v0 + 136, v55);
    sub_54F34(v0 + 136);
    v56 = v67;
    *(v0 + 440) = sub_F07EC();
    *(v0 + 448) = v57;
    sub_F0F3C();
    *(v0 + 368) = &type metadata for Bool;
    *(v0 + 344) = 1;
    sub_54F88((v0 + 344), (v0 + 376));
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v56;
    sub_525C0((v0 + 376), v0 + 176, v58);
    sub_54F34(v0 + 176);
    *(v0 + 456) = v67;
  }

  v59 = *(v0 + 496);
  v60 = *(v0 + 472);
  v61 = sub_F0ADC();
  *(v0 + 576) = v61;
  v62 = swift_task_alloc();
  *(v0 + 584) = v62;
  *(v62 + 16) = v60;
  *(v62 + 24) = _swiftEmptyArrayStorage;
  *(v62 + 32) = v6;
  *(v62 + 40) = v45;
  *(v62 + 48) = v0 + 456;
  *(v62 + 56) = 0;
  *(v62 + 64) = v59;
  v63 = swift_task_alloc();
  *(v0 + 592) = v63;
  v64 = sub_388C8(&qword_1285F8, &qword_F38C8);
  *v63 = v0;
  v63[1] = sub_7DE20;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 464, v61, &protocol witness table for MainActor, 0xD00000000000002FLL, 0x80000000000FF0B0, sub_81894, v62, v64);
}

uint64_t sub_7DE20()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v10 = *(v2 + 552);
    v11 = *(v2 + 544);
    v12 = sub_7DFEC;
  }

  else
  {
    v13 = *(v2 + 568);
    *(v2 + 560), v3, v4, v5, v6, v7, v8, v9;
    v13, v14, v15, v16, v17, v18, v19, v20;

    v10 = *(v2 + 552);
    v11 = *(v2 + 544);
    v12 = sub_7DF70;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_7DF70()
{

  v1 = *(v0 + 464);
  *(v0 + 456), v2, v3, v4, v5, v6, v7, v8;

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t sub_7DFEC()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);

  v2, v3, v4, v5, v6, v7, v8, v9;
  v1, v10, v11, v12, v13, v14, v15, v16;

  *(v0 + 456), v17, v18, v19, v20, v21, v22, v23;

  v24 = *(v0 + 8);

  return v24();
}

void sub_7E0A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, RCSServiceSession **a6, int a7, void *a8)
{
  v83 = a8;
  v82 = a7;
  v80 = a6;
  v81 = a1;
  v12 = [objc_opt_self() sharedInstance];
  if (v12)
  {
    v13 = v12;
    v14 = [a2 localURL];
    v15 = sub_F01EC();
    v16 = *(v15 - 8);
    __chkstk_darwin(v15);
    v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v79 = v13;
    if (v14)
    {
      sub_F01AC();

      v78 = sub_F019C();
      (*(v16 + 8))(v18, v15);
    }

    else
    {
      v78 = 0;
    }

    v77 = [a2 type];
    v76 = [a2 isSticker];
    v19 = sub_695BC(a3);
    v75 = sub_F09EC();
    v19, v20, v21, v22, v23, v24, v25, v26;
    v27 = sub_696BC(a4);
    v74 = sub_F09EC();
    v27, v28, v29, v30, v31, v32, v33, v34;
    v35 = sub_51B0C(a5);
    v73 = sub_F075C();
    v35, v36, v37, v38, v39, v40, v41, v42;
    v43 = *v80;

    v80 = sub_F075C();
    v43, v44, v45, v46, v47, v48, v49, v50;
    v72 = 2 * (*(a4 + 16) > 1uLL);
    v51 = sub_388C8(&qword_128680, &qword_F3968);
    v52 = *(v51 - 8);
    v53 = *(v52 + 64);
    v54 = __chkstk_darwin(v51);
    v56 = &v72 - v55;
    (*(v52 + 16))(&v72 - v55, v81, v51, v54);
    v57 = (*(v52 + 80) + 33) & ~*(v52 + 80);
    v58 = (v53 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    *(v59 + 16) = a4;
    *(v59 + 24) = a2;
    LOBYTE(v19) = v82 & 1;
    *(v59 + 32) = v82 & 1;
    (*(v52 + 32))(v59 + v57, v56, v51);
    v60 = v83;
    *(v59 + v58) = v83;
    aBlock[4] = sub_81D70;
    aBlock[5] = v59;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_7FA08;
    aBlock[3] = &unk_11EB00;
    v61 = _Block_copy(aBlock);

    v62 = a2;
    v63 = v60;

    LOBYTE(v71) = v19;
    v64 = v80;
    v65 = v73;
    v67 = v78;
    v66 = v79;
    v68 = v77;
    v70 = v74;
    v69 = v75;
    [v79 transcodeFileTransferContents:v78 utiType:v77 isSticker:v76 allowUnfilteredUTIs:v75 target:2 sizes:v74 commonCapabilities:v73 maxDimension:-1 transcoderUserInfo:v80 representations:v72 isLQMEnabled:v71 completionBlock:v61];
    _Block_release(v61);
  }

  else
  {
    __break(1u);
  }
}

void sub_7E514(uint64_t (*a1)(char *, uint64_t, uint64_t), RCSServiceSession *a2, RCSServiceSession *a3, uint64_t a4, int a5, int a6, RCSServiceSession *a7, uint64_t a8, void *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v204 = a3;
  v205 = a7;
  v201 = a6;
  v203 = a2;
  v206 = a1;
  v210 = a11;
  v211 = a4;
  v14 = sub_F06CC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v202 = v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v193 - v18;
  __chkstk_darwin(v20);
  v22 = v193 - v21;
  v23 = *(a8 + 16);
  v24 = _swiftEmptyArrayStorage;
  LODWORD(v208) = a5;
  if (v23)
  {
    v207 = v193 - v21;
    v209 = v19;
    v25 = v15;
    v212[0] = _swiftEmptyArrayStorage;
    sub_F102C();
    v26 = (a8 + 32);
    do
    {
      v27 = *v26++;
      [objc_allocWithZone(NSNumber) initWithLongLong:v27];
      sub_F0FFC();
      sub_F104C();
      sub_F105C();
      sub_F100C();
      --v23;
    }

    while (v23);
    v24 = v212[0];
    v15 = v25;
    LOBYTE(a5) = v208;
    v19 = v209;
    v22 = v207;
  }

  v209 = v24;
  v28 = v211;
  if ((a5 & 1) == 0 && v211)
  {
    v29 = objc_opt_self();
    swift_errorRetain();
    v30 = [v29 sharedInstance];
    if (v30)
    {
      v31 = v30;
      v32 = [a9 localURL];
      v33 = sub_F01EC();
      v34 = *(v33 - 8);
      __chkstk_darwin(v33);
      v36 = v193 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v32)
      {
        sub_F01AC();

        v37 = sub_F019C();
        (*(v34 + 8))(v36, v33);
        sub_37310(0, &qword_128050, NSNumber_ptr);
        v38 = v209;
        v39 = sub_F09EC();
        v38, v40, v41, v42, v43, v44, v45, v46;
        [v31 trackRCSTranscodeFailureWithReason:2 sourceFile:v37 sizeLimits:v39 isSticker:objc_msgSend(a9 lowQualityModeEnabled:{"isSticker"), a10 & 1}];

        v212[0] = v28;
LABEL_27:
        sub_388C8(&qword_128680, &qword_F3968);
        sub_F0A7C();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_41;
  }

  LODWORD(v211) = a10;
  v47 = v204;
  if (v204)
  {
    v48 = Logger.rcs.unsafeMutableAddressor();
    (*(v15 + 16))(v22, v48, v14);

    v49 = sub_F06AC();
    v50 = sub_F0CCC();
    v47, v51, v52, v53, v54, v55, v56, v57;
    if (os_log_type_enabled(v49, v50))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v212[0] = v59;
      *v58 = 136315138;
      v60 = sub_F0A0C();
      v62 = v61;
      v63 = sub_3E850(v60, v61, v212);
      v207 = v22;
      v64 = v63;
      v62, v65, v66, v67, v68, v69, v70, v71;
      *(v58 + 4) = v64;
      _os_log_impl(&dword_0, v49, v50, "Transcoder got outputContext %s", v58, 0xCu);
      sub_1EDC(v59);

      (*(v15 + 8))(v207, v14);
    }

    else
    {

      (*(v15 + 8))(v22, v14);
    }
  }

  v200 = a9;
  v72 = v205;
  if (v205)
  {
    v73 = Logger.rcs.unsafeMutableAddressor();
    (*(v15 + 16))(v19, v73, v14);

    v74 = sub_F06AC();
    v75 = sub_F0CCC();
    v72, v76, v77, v78, v79, v80, v81, v82;
    if (os_log_type_enabled(v74, v75))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v212[0] = v84;
      *v83 = 136315138;
      v85 = sub_F077C();
      v87 = v86;
      v88 = v19;
      v89 = sub_3E850(v85, v86, v212);
      v87, v90, v91, v92, v93, v94, v95, v96;
      *(v83 + 4) = v89;
      _os_log_impl(&dword_0, v74, v75, "Transcoder got additionalOutputContext %s", v83, 0xCu);
      sub_1EDC(v84);

      (*(v15 + 8))(v88, v14);
    }

    else
    {

      (*(v15 + 8))(v19, v14);
    }
  }

  v205 = v14;
  v97 = sub_F01EC();
  v207 = v193;
  v98 = *(v97 - 8);
  v99 = *(v98 + 64);
  __chkstk_darwin(v97);
  v100 = sub_388C8(&qword_128320, &qword_F34B0);
  v101 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100 - 8);
  v103 = v193 - v102;
  sub_37380(v206, v193 - v102, &qword_128320, &qword_F34B0);
  v104 = *(v98 + 48);
  if (v104(v103, 1, v97) == 1)
  {
    sub_372B0(v103, &qword_128320, &qword_F34B0);
    goto LABEL_24;
  }

  (*(v98 + 32))(v193 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0), v103, v97);
  v105 = v203;
  if (!v203)
  {
    (*(v98 + 8))(v193 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0), v97);
LABEL_24:
    v148 = [objc_opt_self() sharedInstance];
    v149 = v211;
    v150 = v200;
    if (v148)
    {
      v151 = v148;
      v152 = [v200 localURL];
      __chkstk_darwin(v152);
      v153 = v193 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v154)
      {
        sub_F01AC();

        v155 = sub_F019C();
        (*(v98 + 8))(v153, v97);
        sub_37310(0, &qword_128050, NSNumber_ptr);
        v156 = v209;
        v157 = sub_F09EC();
        v156, v158, v159, v160, v161, v162, v163, v164;
        [v151 trackRCSTranscodeFailureWithReason:2 sourceFile:v155 sizeLimits:v157 isSticker:objc_msgSend(v150 lowQualityModeEnabled:{"isSticker"), v149 & 1}];

        sub_81E70();
        v212[0] = swift_allocError();
        goto LABEL_27;
      }

      goto LABEL_42;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v196 = v101;
  v206 = v104;
  v199 = a12;
  v106 = Logger.rcs.unsafeMutableAddressor();
  v198 = v15;
  v107 = v202;
  v108 = (*(v15 + 16))(v202, v106, v205);
  v204 = v193;
  v109 = __chkstk_darwin(v108);
  (*(v98 + 16))(v193 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0), v193 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0), v97, v109);

  v110 = sub_F06AC();
  v111 = sub_F0CCC();
  v105, v112, v113, v114, v115, v116, v117, v118;
  v194 = v111;
  v197 = v110;
  v119 = os_log_type_enabled(v110, v111);
  v195 = v193 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v119)
  {
    v120 = swift_slowAlloc();
    v193[1] = v98 + 48;
    v121 = v120;
    v212[0] = swift_slowAlloc();
    *v121 = 67109890;
    *(v121 + 4) = v208 & 1;
    *(v121 + 8) = 2080;
    sub_81D24();
    v122 = sub_F11EC();
    v124 = v123;
    v208 = *(v98 + 8);
    v208(v193 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0), v97);
    v125 = sub_3E850(v122, v124, v212);
    v124, v126, v127, v128, v129, v130, v131, v132;
    *(v121 + 10) = v125;
    *(v121 + 18) = 1024;
    *(v121 + 20) = v201 & 1;
    *(v121 + 24) = 2080;
    v133 = v198;
    v134 = v200;
    v135 = sub_F0A0C();
    v137 = v136;
    v138 = sub_3E850(v135, v136, v212);
    v137, v139, v140, v141, v142, v143, v144, v145;
    *(v121 + 26) = v138;
    v146 = v197;
    _os_log_impl(&dword_0, v197, v194, "Transcoder success %{BOOL}d for %s, attempted transcode %{BOOL}d generated %s ", v121, 0x22u);
    swift_arrayDestroy();

    v147 = (v133[1])(v202, v205);
  }

  else
  {

    v208 = *(v98 + 8);
    v208(v193 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0), v97);
    v147 = (v198[1])(v107, v205);
    v134 = v200;
  }

  v165 = v196;
  v202 = v193;
  __chkstk_darwin(v147);
  v198 = v193;
  __chkstk_darwin(v193 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = (v193 - v167);
  v205 = v166;
  v203 = sub_7F438(v166, v193 - v167, v203);
  v168 = [objc_opt_self() sharedInstance];
  if (!v168)
  {
    goto LABEL_43;
  }

  v169 = v168;
  v170 = [v134 localURL];
  __chkstk_darwin(v170);
  if (!v171)
  {
LABEL_44:
    __break(1u);
    return;
  }

  sub_F01AC();

  v199 = sub_F019C();
  v172 = v193 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v208;
  v174 = (v208)(v172, v97);
  __chkstk_darwin(v174);
  v175 = (v165 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_37380(v205, v193 - v175, &qword_128320, &qword_F34B0);
  v176 = v206(v193 - v175, 1, v97);
  if (v176 == 1)
  {
    v177 = 0;
  }

  else
  {
    v177 = sub_F019C();
    v176 = v173(v193 - v175, v97);
  }

  __chkstk_darwin(v176);
  sub_37380(v204, v193 - v175, &qword_128320, &qword_F34B0);
  if (v206(v193 - v175, 1, v97) == 1)
  {
    v178 = 0;
    v179 = v211;
    v180 = v208;
  }

  else
  {
    v178 = sub_F019C();
    v180 = v208;
    v208(v193 - v175, v97);
    v179 = v211;
  }

  sub_37310(0, &qword_128050, NSNumber_ptr);
  v181 = v209;
  v182 = sub_F09EC();
  v181, v183, v184, v185, v186, v187, v188, v189;
  v190 = [v200 isSticker];
  BYTE1(v192) = v179 & 1;
  LOBYTE(v192) = v201 & 1;
  v191 = v199;
  [v169 trackRCSTranscodeWithReason:2 sourceFile:v199 highQualityFile:v177 lowQualityFile:v178 sizeLimits:v182 isSticker:v190 transcoded:v192 lowQualityModeEnabled:?];

  v212[0] = v203;
  sub_388C8(&qword_128680, &qword_F3968);
  sub_F0A8C();
  sub_372B0(v204, &qword_128320, &qword_F34B0);
  sub_372B0(v205, &qword_128320, &qword_F34B0);
  v180(v195, v97);
}

RCSServiceSession *sub_7F438(uint64_t a1, char *a2, uint64_t a3)
{
  v45 = a1;
  v5 = sub_388C8(&qword_128320, &qword_F34B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v45 - v7;
  v9 = sub_F01EC();
  v10 = *(v9 - 8);
  v12 = v10 + 56;
  v11 = *(v10 + 56);
  v11(v8, 1, 1, v9);
  v46 = a2;
  v60 = v11;
  v11(a2, 1, 1, v9);
  v13 = *(a3 + 16);
  if (v13)
  {
    v58 = v9;
    v14 = a3 + 32;
    v15 = *(v10 + 64);
    v48 = v10 + 8;
    v49 = (v10 + 16);
    v52 = v10;
    v47 = v10 + 48;
    v61 = _swiftEmptyArrayStorage;
    v50 = v15;
    v51 = v10 + 56;
    v16 = v6;
    v53 = v8;
    v54 = v6;
    v59 = (v10 + 32);
    do
    {
      v18 = v12;
      v63 = v13;
      __chkstk_darwin(v14);
      v19 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
      v62 = v20;
      v21 = sub_3FE38(v20, v64);
      __chkstk_darwin(v21);
      v22 = v58;
      if (swift_dynamicCast())
      {
        v57 = &v45;
        v60(&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v22);
        v23 = *v59;
        v24 = (*v59)(&v45 - v19, &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
        v55 = &v45;
        __chkstk_darwin(v24);
        v25 = &v45 - v19;
        v26 = [objc_opt_self() defaultManager];
        v56 = &v45 - v19;
        v27 = sub_F019C();
        v28 = [v26 im_generateCopyForURL:v27];

        sub_F01AC();
        v30 = __chkstk_darwin(v29);
        v31 = &v45 - v19;
        (*v49)(&v45 - v19, &v45 - v19, v22, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_6E814(0, *v61[1].IMDTelephonyServiceSession_opaque + 1, 1, v61);
        }

        v33 = *v61[1].IMDTelephonyServiceSession_opaque;
        v32 = *v61[1].state;
        if (v33 >= v32 >> 1)
        {
          v61 = sub_6E814((v32 > 1), v33 + 1, 1, v61);
        }

        v34 = v52;
        (*(v52 + 8))(v25, v22);
        v35 = v61;
        *v61[1].IMDTelephonyServiceSession_opaque = v33 + 1;
        v36 = v23(&v35->IMDTelephonyServiceSession_opaque[((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33], v31, v22);
        __chkstk_darwin(v36);
        v38 = v37;
        v39 = &v45 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
        v40 = v53;
        sub_37380(v53, v39, &qword_128320, &qword_F34B0);
        if ((*(v34 + 48))(v39, 1, v22) == 1)
        {
          sub_372B0(v40, &qword_128320, &qword_F34B0);
          sub_372B0(v39, &qword_128320, &qword_F34B0);
          v23(v40, v56, v22);
          v41 = v22;
          v12 = v51;
          v60(v40, 0, 1, v41);
          v8 = v40;
          v16 = v38;
        }

        else
        {
          v42 = v46;
          sub_372B0(v46, &qword_128320, &qword_F34B0);
          sub_372B0(v39, &qword_128320, &qword_F34B0);
          v23(v42, v56, v22);
          v16 = v54;
          v43 = v22;
          v12 = v51;
          v60(v42, 0, 1, v43);
          v8 = v40;
        }

        v15 = v50;
      }

      else
      {
        v17 = v22;
        v12 = v18;
        v60(&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v17);
        sub_372B0(&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_128320, &qword_F34B0);
      }

      v14 = v62 + 32;
      v13 = v63 - 1;
    }

    while (v63 != 1);
  }

  else
  {
    v61 = _swiftEmptyArrayStorage;
  }

  sub_81EC4(v8, v45);
  return v61;
}

uint64_t sub_7FA08(uint64_t a1, uint64_t a2, RCSServiceSession *a3, RCSServiceSession *a4, void *a5, uint64_t a6, uint64_t a7, RCSServiceSession *a8)
{
  v15 = *(a1 + 32);
  v16 = sub_388C8(&qword_128320, &qword_F34B0);
  __chkstk_darwin(v16 - 8);
  v18 = &v44 - v17;
  if (a2)
  {
    sub_F01AC();
    v19 = sub_F01EC();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v20 = sub_F01EC();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  if (a3)
  {
    a3 = sub_F09FC();
  }

  if (a4)
  {
    a4 = sub_F09FC();
  }

  if (a8)
  {
    a8 = sub_F076C();
  }

  v21 = a5;
  v15(v18, a3, a4, a5, a6, a7, a8);

  a8, v22, v23, v24, v25, v26, v27, v28;
  a4, v29, v30, v31, v32, v33, v34, v35;
  a3, v36, v37, v38, v39, v40, v41, v42;
  return sub_372B0(v18, &qword_128320, &qword_F34B0);
}

uint64_t RCSServiceSession.uploadFile(onSimID:fileURL:thumbURL:isAudioMessage:encrypted:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v8 = a5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_67FCC;

  return sub_818AC(a1, a2, a3, a4, v8, v7);
}

void sub_7FCE8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, RCSServiceSession *a6, int a7, int a8)
{
  v108 = a7;
  v109 = a8;
  v100 = a5;
  v110 = a4;
  v107 = a2;
  v104 = a1;
  v10 = sub_388C8(&qword_128670, &unk_F3958);
  v105 = *(v10 - 8);
  v106 = v10;
  v102 = *(v105 + 64);
  __chkstk_darwin(v10);
  v103 = v88 - v11;
  v12 = sub_F06CC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Logger.rcs.unsafeMutableAddressor();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_F01EC();
  v18 = __chkstk_darwin(v17);
  v20 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v21;
  v22 = *(v21 + 16);
  v101 = a3;
  v22(v20, a3, v17, v18);
  v23 = sub_388C8(&qword_128320, &qword_F34B0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v95 = v25;
  v26 = v88 - v25;
  sub_37380(v110, v88 - v25, &qword_128320, &qword_F34B0);

  v27 = a6;
  v28 = sub_F06AC();
  LODWORD(a6) = sub_F0CCC();
  v27, v29, v30, v31, v32, v33, v34, v35;
  v96 = a6;
  v36 = os_log_type_enabled(v28, a6);
  v99 = v24;
  if (v36)
  {
    v90 = v28;
    v92 = v15;
    v91 = v13;
    v93 = v12;
    v94 = v27;
    v37 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    aBlock[0] = v89;
    *v37 = 136315650;
    sub_81D24();
    v38 = sub_F11EC();
    v40 = v39;
    v41 = v98;
    v42 = *(v98 + 8);
    v42(v20, v17);
    v43 = sub_3E850(v38, v40, aBlock);
    v40, v44, v45, v46, v47, v48, v49, v50;
    v88[1] = v88;
    *(v37 + 4) = v43;
    *(v37 + 12) = 2080;
    __chkstk_darwin(v51);
    v52 = v88 - v95;
    sub_37380(v26, v88 - v95, &qword_128320, &qword_F34B0);
    v53 = (*(v41 + 48))(v52, 1, v17);
    v54 = v17;
    v97 = v42;
    if (v53 == 1)
    {
      sub_372B0(v52, &qword_128320, &qword_F34B0);
      v55 = 0xE300000000000000;
      v56 = 7104878;
    }

    else
    {
      v56 = sub_F017C();
      v55 = v61;
      v42(v52, v17);
    }

    v62 = v93;
    v63 = v91;
    sub_372B0(v26, &qword_128320, &qword_F34B0);
    v64 = sub_3E850(v56, v55, aBlock);
    v55, v65, v66, v67, v68, v69, v70, v71;
    *(v37 + 14) = v64;
    *(v37 + 22) = 2080;
    *(v37 + 24) = sub_3E850(v100, v94, aBlock);
    v72 = v90;
    _os_log_impl(&dword_0, v90, v96, "Uploading RCS file %s thumb %s on sim %s", v37, 0x20u);
    swift_arrayDestroy();

    (*(v63 + 8))(v92, v62);
    v59 = v109;
    v60 = v110;
  }

  else
  {

    sub_372B0(v26, &qword_128320, &qword_F34B0);
    v57 = v98;
    v97 = *(v98 + 8);
    v97(v20, v17);
    (*(v13 + 8))(v15, v12);
    v58 = v57;
    v59 = v109;
    v54 = v17;
    v60 = v110;
    v41 = v58;
  }

  v110 = [objc_opt_self() sharedInstance];
  v73 = sub_F07BC();
  v74 = sub_F019C();
  __chkstk_darwin(v74);
  v76 = v88 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_37380(v60, v76, &qword_128320, &qword_F34B0);
  if ((*(v41 + 48))(v76, 1, v54) == 1)
  {
    v77 = 0;
  }

  else
  {
    v77 = sub_F019C();
    v97(v76, v54);
  }

  v78 = v105;
  v79 = v103;
  v80 = v106;
  (*(v105 + 16))(v103, v104, v106);
  v81 = (*(v78 + 80) + 24) & ~*(v78 + 80);
  v82 = swift_allocObject();
  v83 = v107;
  *(v82 + 16) = v107;
  (*(v78 + 32))(v82 + v81, v79, v80);
  aBlock[4] = sub_81C8C;
  aBlock[5] = v82;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_80708;
  aBlock[3] = &unk_11EAB0;
  v84 = _Block_copy(aBlock);
  v85 = v83;

  v86 = v59 & 1;
  v87 = v110;
  [v110 uploadRCSFileOnSimID:v73 fileURL:v74 thumbURL:v77 isAudioMessage:v108 & 1 encrypted:v86 userInfo:0 completion:v84];
  _Block_release(v84);
}

uint64_t sub_804E0(RCSServiceSession *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Logger.rcs.unsafeMutableAddressor();
  (*(v6 + 16))(v8, v9, v5);

  v10 = sub_F06AC();
  v11 = sub_F0CCC();
  a1, v12, v13, v14, v15, v16, v17, v18;
  if (os_log_type_enabled(v10, v11))
  {
    v19 = swift_slowAlloc();
    v34 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 136315138;
    v22 = sub_F077C();
    v24 = v23;
    v25 = sub_3E850(v22, v23, &v35);
    v24, v26, v27, v28, v29, v30, v31, v32;
    *(v20 + 4) = v25;
    _os_log_impl(&dword_0, v10, v11, "Uploaded RCS file %s", v20, 0xCu);
    sub_1EDC(v21);
  }

  (*(v6 + 8))(v8, v5);
  v35 = a1;

  sub_388C8(&qword_128670, &unk_F3958);
  return sub_F0A8C();
}

void sub_80708(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_F076C();

  v2(v3);

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t RCSServiceSession.extractURL(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 balloonBundleID];
  if (!v4)
  {
    sub_F07EC();
    v17 = v10;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = sub_F07EC();
  v8 = v7;

  v9 = sub_F07EC();
  v17 = v10;
  if (!v8)
  {
LABEL_10:
    v17, v10, v11, v12, v13, v14, v15, v16;
    goto LABEL_11;
  }

  if (v6 == v9 && v8 == v10)
  {
    v8, v10, v9, v12, v13, v14, v15, v16;
    v17, v37, v38, v39, v40, v41, v42, v43;
  }

  else
  {
    v19 = sub_F122C();
    v8, v20, v21, v22, v23, v24, v25, v26;
    v17, v27, v28, v29, v30, v31, v32, v33;
    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v44 = [objc_allocWithZone(IMDSharedUtilitiesPluginPayload) init];
  v45 = [a1 payloadData];
  if (v45)
  {
    v47 = v45;
    v48 = sub_F025C();
    v50 = v49;

    v51 = sub_F024C();
    v46 = sub_5F048(v48, v50);
  }

  else
  {
    v51 = 0;
  }

  [v44 setData:{v51, v46}];

  sub_37310(0, &qword_128600, IMSharedMessageRichLinkSummary_ptr);
  v52 = [swift_getObjCClassFromMetadata() linkMetadataForPluginPayload:v44];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 URL];
    v55 = sub_F01EC();
    v56 = *(v55 - 8);
    __chkstk_darwin(v55);
    v58 = &v59 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v54)
    {
      sub_F01AC();

      (*(v56 + 32))(a2, v58, v55);
      return (*(v56 + 56))(a2, 0, 1, v55);
    }
  }

  else
  {
  }

LABEL_11:
  v34 = sub_F01EC();
  v35 = *(*(v34 - 8) + 56);

  return v35(a2, 1, 1, v34);
}

uint64_t sub_80AB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_37C54;

  return RCSServiceSession.resolveGroupIdentity(for:subscriptionContext:)(a1, v5, v6);
}

uint64_t sub_80B64(void **a1)
{
  v1 = *a1;
  v2 = CTXPCServiceSubscriptionContext.canonicalPhoneNumber.getter();
  v3 = [v1 labelID];
  if (v3)
  {
    v4 = v3;
    sub_F07EC();
  }

  return v2;
}

uint64_t sub_80C14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_80CD0;

  return RCSServiceSession.transcodeTransfer(transfer:for:isAudioMessage:)(a1, a2, a3, a4);
}

uint64_t sub_80CD0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_80DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v8 = a5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_72498;

  return sub_818AC(a1, a2, a3, a4, v8, v7);
}

id sub_80ED4(id *a1)
{
  result = [*a1 chatIdentifier];
  if (result)
  {
    v2 = result;
    v3 = sub_F07EC();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_80F34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_127F60, &unk_F3970);
    v3 = sub_F110C();
    v4 = a1 + 32;

    while (1)
    {
      sub_37380(v4, v13, &qword_128510, &unk_F36A0);
      result = sub_51FA8(v13);
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
      result = sub_54F88(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_81070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_128598, &unk_F3750);
    v3 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_51FEC(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_81174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_128690, &unk_F3980);
    v3 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_51FEC(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_81270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_128590, &qword_F3930);
    v3 = sub_F110C();
    v4 = a1 + 32;

    while (1)
    {
      sub_37380(v4, &v13, &qword_1285C0, &qword_F3780);
      v5 = v13;
      v6 = v14;
      result = sub_51FEC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_54F88(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_813C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_388C8(a2, a3);
    v5 = sub_F110C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_51FEC(v7, v8);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_814C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_388C8(&qword_128588, &unk_F3740);
    v3 = sub_F110C();
    v4 = a1 + 32;

    while (1)
    {
      sub_37380(v4, &v21, &qword_128660, &qword_F3938);
      v5 = v21;
      v6 = v22;
      result = sub_51FEC(v21, v22);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 160 * result);
      v11 = v24;
      *v10 = v23;
      v10[1] = v11;
      v12 = v25;
      v13 = v26;
      v14 = v28;
      v10[4] = v27;
      v10[5] = v14;
      v10[2] = v12;
      v10[3] = v13;
      v15 = v29;
      v16 = v30;
      v17 = v32;
      v10[8] = v31;
      v10[9] = v17;
      v10[6] = v15;
      v10[7] = v16;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v3[2] = v20;
      v4 += 176;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t _sSo17RCSServiceSessionC3RCSE24shouldCreateThumbnailForySbSo14IMFileTransferCF_0(void *a1)
{
  v2 = sub_388C8(&qword_128300, &unk_F68D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_F068C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v20 - v11;
  v13 = [a1 filename];
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = v13;
  v15 = [v13 pathExtension];

  sub_F07EC();
  sub_F063C();
  sub_F061C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_372B0(v4, &qword_128300, &unk_F68D0);
LABEL_4:
    v16 = 0;
    return v16 & 1;
  }

  (*(v6 + 32))(v12, v4, v5);
  sub_F064C();
  v18 = sub_F067C();
  v19 = *(v6 + 8);
  v19(v8, v5);
  if (v18)
  {
    v19(v12, v5);
    v16 = 1;
  }

  else
  {
    sub_F065C();
    v16 = sub_F067C();
    v19(v8, v5);
    v19(v12, v5);
  }

  return v16 & 1;
}

uint64_t sub_818AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 48) = a4;
  *(v7 + 56) = v6;
  *(v7 + 121) = a6;
  *(v7 + 120) = a5;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 24) = a1;
  *(v7 + 64) = sub_F0AEC();
  *(v7 + 72) = sub_F0ADC();
  v9 = sub_F0A6C();
  *(v7 + 80) = v9;
  *(v7 + 88) = v8;

  return _swift_task_switch(sub_81958, v9, v8);
}

uint64_t sub_81958(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 121);
  v4 = *(v1 + 120);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v12 = *(v1 + 40);
  v7 = sub_F0ADC();
  *(v1 + 96) = v7;
  v8 = swift_task_alloc();
  *(v1 + 104) = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v12;
  *(v8 + 40) = v6;
  *(v8 + 48) = v5;
  *(v8 + 56) = v4;
  *(v8 + 57) = v3;
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  v10 = sub_388C8(&qword_128568, &qword_F3950);
  *v9 = v1;
  v9[1] = sub_81AB0;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, v7, &protocol witness table for MainActor, 0xD000000000000047, 0x80000000000FF0E0, sub_81C74, v8, v10);
}

uint64_t sub_81AB0()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_81C10, v3, v2);
}

uint64_t sub_81C10()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_81C8C(RCSServiceSession *a1)
{
  v3 = *(sub_388C8(&qword_128670, &unk_F3958) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_804E0(a1, v4, v5);
}

uint64_t sub_81D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_81D24()
{
  result = qword_128678;
  if (!qword_128678)
  {
    sub_F01EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128678);
  }

  return result;
}

void sub_81D70(uint64_t (*a1)(char *, uint64_t, uint64_t), RCSServiceSession *a2, RCSServiceSession *a3, uint64_t a4, int a5, int a6, RCSServiceSession *a7)
{
  v15 = *(sub_388C8(&qword_128680, &qword_F3968) - 8);
  v16 = (*(v15 + 80) + 33) & ~*(v15 + 80);
  sub_7E514(a1, a2, a3, a4, a5, a6, a7, *(v7 + 16), *(v7 + 24), *(v7 + 32), v7 + v16, *(v7 + ((*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_81E70()
{
  result = qword_128688;
  if (!qword_128688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128688);
  }

  return result;
}

uint64_t sub_81EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_128320, &qword_F34B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_81F48()
{
  result = qword_128698;
  if (!qword_128698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128698);
  }

  return result;
}

uint64_t RCSServiceSession.replicationPhoneNumbers()()
{
  v31.super_class = RCSServiceSession;
  v0 = objc_msgSendSuper2(&v31, "replicationPhoneNumbers");
  v1 = sub_F0C1C();

  v32 = v1;
  sub_72BFC();
  v10 = *v2[1].IMDTelephonyServiceSession_opaque;
  if (v10)
  {
    v11 = v2;
    state = v2[2].state;
    do
    {
      v13 = *(state - 1);
      v14 = *state;

      sub_82EDC(v30, v13, v14);
      v30[1], v15, v16, v17, v18, v19, v20, v21;
      state += 2;
      --v10;
    }

    while (v10);
    v11, v22, v23, v24, v25, v26, v27, v28;
    return v32;
  }

  else
  {
    v2, v3, v4, v5, v6, v7, v8, v9;
    return v1;
  }
}

uint64_t sub_820F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 ctSubscriptionInfo];

  if (!v6)
  {
    return 0;
  }

  if (a4)
  {
    a4 = sub_F07BC();
  }

  v7 = sub_F07BC();
  v8 = [v6 __im_subscriptionContextOrDefaultForForSimID:a4 phoneNumber:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_8326C(v8);

  return v9 & 1;
}

Swift::Bool __swiftcall RCSServiceSession.replicationRequirementsSatisfied(forPhoneNumber:simID:)(Swift::String forPhoneNumber, Swift::String_optional simID)
{
  object = simID.value._object;
  countAndFlagsBits = simID.value._countAndFlagsBits;
  v5 = forPhoneNumber._object;
  v6 = forPhoneNumber._countAndFlagsBits;
  v7 = sub_F06CC();
  v82 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [v10 sharedManager];
  v81 = v6;
  v12 = sub_F07BC();
  v83 = v7;
  if (object)
  {
    v13 = sub_F07BC();
  }

  else
  {
    v13 = 0;
  }

  v80 = [v11 groupTextReplicationSupportedForPhoneNumber:v12 simID:v13];

  v14 = v81;
  if (sub_863B8(v81, v5, countAndFlagsBits, object))
  {
    v79 = sub_820F0(v14, v5, countAndFlagsBits, object);
  }

  else
  {
    v15 = [v2 relayController];
    v79 = [v15 hasRelayDevice];
  }

  v16 = [v10 sharedManager];
  v17 = sub_F07BC();
  v78 = countAndFlagsBits;
  if (object)
  {
    v18 = sub_F07BC();
  }

  else
  {
    v18 = 0;
  }

  v19 = [v16 groupMessagingEnabledForPhoneNumber:v17 simID:v18];

  v20 = [v2 relayController];
  v21 = [v20 hasRelayDevice];

  v76 = v19;
  if (v21)
  {
    v22 = [v2 relayController];
    v75 = [v22 _canRelayMMS];

    v23 = v82;
    if (v79 & v19 & v80)
    {
      LODWORD(v24) = 1;
      v25 = v83;
      goto LABEL_17;
    }

    v25 = v83;
  }

  else
  {
    v75 = 0;
    v23 = v82;
    v25 = v83;
    if (v79 & v19 & v80)
    {
      LODWORD(v24) = 1;
      goto LABEL_17;
    }
  }

  LODWORD(v24) = 0;
LABEL_17:
  v26 = Logger.rcs.unsafeMutableAddressor();
  (*(v23 + 16))(v9, v26, v25);
  swift_bridgeObjectRetain_n();
  v27 = v2;
  swift_bridgeObjectRetain_n();
  v28 = v27;
  v29 = sub_F06AC();
  v30 = sub_F0CCC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v77 = v24;
    v24 = v31;
    v73 = swift_slowAlloc();
    v74 = v9;
    v84 = v73;
    *v24 = 136316930;
    v32 = v81;
    *(v24 + 4) = sub_3E850(v81, v5, &v84);
    *(v24 + 12) = 2080;
    v33 = v78;
    if (object)
    {
      v34 = v78;
    }

    else
    {
      v34 = 0x3E6C696E3CLL;
    }

    if (object)
    {
      v35 = object;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    v36 = sub_3E850(v34, v35, &v84);
    v35, v37, v38, v39, v40, v41, v42, v43;
    *(v24 + 14) = v36;
    *(v24 + 22) = 1024;
    *(v24 + 24) = v77;
    *(v24 + 28) = 1024;
    *(v24 + 30) = v79 & 1;
    *(v24 + 34) = 1024;
    *(v24 + 36) = v76;
    *(v24 + 40) = 1024;
    *(v24 + 42) = v80;
    *(v24 + 46) = 1024;
    LOBYTE(v36) = sub_820F0(v32, v5, v33, object);
    object, v44, v45, v46, v47, v48, v49, v50;
    v5, v51, v52, v53, v54, v55, v56, v57;

    *(v24 + 48) = v36 & 1;
    object, v58, v59, v60, v61, v62, v63, v64;
    v5, v65, v66, v67, v68, v69, v70, v71;

    *(v24 + 52) = 1024;
    *(v24 + 54) = v75;
    _os_log_impl(&dword_0, v29, v30, "Phone number %s and simID %s satisfy replication requirements %{BOOL}d (RCS: %{BOOL}d groups: %{BOOL}d isEnabledByCarrier: %{BOOL}d local RCS: %{BOOL}d relay: %{BOOL}d)", v24, 0x3Au);
    swift_arrayDestroy();

    LOBYTE(v24) = v77;

    (*(v82 + 8))(v74, v83);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    (*(v23 + 8))(v9, v25);
  }

  return v24;
}

void RCSServiceSession.replicationRequiredForFeaturesUsed(by:)(void *a1)
{
  v2 = v1;
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v65 - v9;
  v11 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  if (qword_127A38 != -1)
  {
    swift_once();
  }

  v15 = sub_3C96C(v11, qword_127CA0);
  (*(v12 + 16))(v14, v15, v11);
  sub_F044C();
  (*(v12 + 8))(v14, v11);
  if (v66 == 1)
  {
    v16 = Logger.rcs.unsafeMutableAddressor();
    (*(v5 + 16))(v10, v16, v4);
    v17 = a1;
    v18 = sub_F06AC();
    v19 = sub_F0CDC();
    if (!os_log_type_enabled(v18, v19))
    {

      goto LABEL_16;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v66 = v21;
    *v20 = 136315138;
    v22 = [v17 guid];

    if (v22)
    {
      v23 = sub_F07EC();
      v25 = v24;

      v26 = sub_3E850(v23, v25, &v66);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v20 + 4) = v26;
      _os_log_impl(&dword_0, v18, v19, "Replicating message %s due to override", v20, 0xCu);
      sub_1EDC(v21);

LABEL_16:
      (*(v5 + 8))(v10, v4);
      return;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v67.receiver = v2;
  v67.super_class = RCSServiceSession;
  if ((objc_msgSendSuper2(&v67, "replicationRequiredForFeaturesUsedByMessageItem:", a1) & 1) == 0)
  {
    v34 = [a1 threadIdentifier];
    if (v34)
    {
      v35 = v34;
      v36 = sub_F07EC();
      v38 = v37;

      v38, v39, v40, v41, v42, v43, v44, v45;
      v46 = (v38 >> 56) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v46 = v36 & 0xFFFFFFFFFFFFLL;
      }

      if (v46)
      {
        v47 = Logger.rcs.unsafeMutableAddressor();
        (*(v5 + 16))(v7, v47, v4);
        v48 = a1;
        v49 = sub_F06AC();
        v50 = sub_F0CDC();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v66 = v52;
          *v51 = 136315138;
          v53 = [v48 guid];

          if (!v53)
          {
            goto LABEL_22;
          }

          v54 = sub_F07EC();
          v56 = v55;

          v57 = sub_3E850(v54, v56, &v66);
          v56, v58, v59, v60, v61, v62, v63, v64;
          *(v51 + 4) = v57;
          _os_log_impl(&dword_0, v49, v50, "Replicating message %s due to thread", v51, 0xCu);
          sub_1EDC(v52);
        }

        else
        {
        }

        (*(v5 + 8))(v7, v4);
      }
    }
  }
}

Swift::Bool __swiftcall RCSServiceSession.replicationRequired(forMessageBodyAttributeName:)(Swift::String forMessageBodyAttributeName)
{
  object = forMessageBodyAttributeName._object;
  if (sub_F07EC() == forMessageBodyAttributeName._countAndFlagsBits && v3 == object)
  {
    v3, v3, v4, v5, v6, v7, v8, v9;
    return 0;
  }

  else
  {
    v11 = v3;
    v12 = sub_F122C();
    v11, v13, v14, v15, v16, v17, v18, v19;
    result = 0;
    if ((v12 & 1) == 0)
    {
      v21 = sub_F07BC();
      v23.receiver = v1;
      v23.super_class = RCSServiceSession;
      v22 = objc_msgSendSuper2(&v23, "replicationRequiredForMessageBodyAttributeName:", v21);

      return v22;
    }
  }

  return result;
}

uint64_t sub_82EDC(void *a1, uint64_t a2, RCSServiceSession *a3)
{
  v7 = *v3;
  sub_F12FC();
  sub_F089C();
  v8 = sub_F132C();
  v15 = -1 << *(v7 + 32);
  v16 = v8 & ~v15;
  if ((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = (*(v7 + 48) + 16 * v16);
      v19 = v18[1];
      v20 = *v18 == a2 && v19 == a3;
      if (v20 || (sub_F122C() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    a3, v19, v9, v10, v11, v12, v13, v14;
    v23 = (*(v7 + 48) + 16 * v16);
    v24 = v23[1];
    *a1 = *v23;
    a1[1] = v24;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;

    sub_8302C(a2, a3, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_8302C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_9D9EC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_9DF94();
      goto LABEL_16;
    }

    sub_9E240(v8 + 1);
  }

  v10 = *v4;
  sub_F12FC();
  sub_F089C();
  v11 = sub_F132C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_F122C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_F125C();
  __break(1u);
}

uint64_t RCSServiceSession.readIdentity(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *(&v10 + 1) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v11 = &protocol witness table for IMDChat;
  *&v9 = a1;
  v4 = a1;
  if (IMDChatRCSGroupIdentity.isValid.getter())
  {
    result = swift_allocObject();
    v6 = v10;
    *(result + 16) = v9;
    *(result + 32) = v6;
    *(result + 48) = v11;
    v7 = &protocol witness table for IMDChatRCSGroupIdentity;
    v8 = &type metadata for IMDChatRCSGroupIdentity;
  }

  else
  {
    sub_39BC4(&v9);
    v8 = 0;
    v7 = 0;
    result = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v8;
  a2[4] = v7;
  *a2 = result;
  return result;
}

id sub_8326C(void *a1)
{
  v2 = sub_F06CC();
  result = [a1 labelID];
  if (result)
  {

    v4 = sub_724A4(a1);
    v5 = [v4 operationStatus];

    if (v5)
    {
      v6 = [v5 registrationState];

      return (v6 == &dword_0 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t RCSServiceSession.displayName(for:)(void *a1)
{
  v1 = [a1 displayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_F07EC();

  return v3;
}

uint64_t RCSServiceSession.countryCode(for:)(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 copyIsoCountryCodeForSubscriptionContext:a1];

  v4 = sub_F07EC();
  return v4;
}

id RCSServiceSession.rcsEnabledSubscriptionContext(for:)(uint64_t a1)
{
  result = [v1 subscriptionContextForChat:a1];
  if (result)
  {
    v3 = result;
    v4 = sub_8326C(result);
    result = v3;
    if ((v4 & 1) == 0)
    {

      return 0;
    }
  }

  return result;
}

id RCSServiceSession.defaultCountryCode(for:)(uint64_t a1)
{
  v2 = [v1 subscriptionContextForChat:a1];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 copyIsoCountryCodeForSubscriptionContext:v3];

    v6 = sub_F07EC();
LABEL_6:

    return v6;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v8 = result;
    v9 = sub_F0FBC();
    v11 = v10;
    v26[0] = 2;
    v27 = v9;
    v28 = v10;
    v30 = 0;
    v31 = 0;
    v29 = 0;
    v32 = 0;
    sub_94528(v26);
    0, v12, v13, v14, v15, v16, v17, v18;
    v11, v19, v20, v21, v22, v23, v24, v25;

    result = IMCountryCodeForIncomingTextMessage();
    if (result)
    {
      v5 = result;
      v6 = sub_F07EC();
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id RCSServiceSession.createGroup(info:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, RCSServiceSession *a4)
{
  v9 = *(v4 + OBJC_IVAR___RCSServiceSession_state);
  v10 = *(v9 + 16);
  sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
  v11 = v10;

  v12 = CTLazuliOperationID.init(id:)(a3, a4);
  v17 = 0;
  LODWORD(a2) = [v11 create:a2 groupChat:a1 withOperationID:v12 withError:&v17];

  v13 = v17;
  if (a2)
  {

    return v13;
  }

  else
  {
    v15 = v17;
    v16 = sub_F015C();

    result = swift_willThrow();
    if (*(v9 + 40))
    {

      RCSGroupController.groupOperationFailed(with:operationID:)(v16, a3, a4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void RCSServiceSession.leaveGroup(identity:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, RCSServiceSession *a4)
{
  v9 = sub_37310(0, &qword_128038, CTLazuliGroupChatUri_ptr);
  sub_1F28(a1, v26);
  v10 = v27;
  v11 = v28;
  v12 = sub_5F3F4(v26, v27);
  v13 = __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  v17 = sub_A84F0(v15, v9, v10, v11);
  sub_1EDC(v26);
  v18 = *(v4 + OBJC_IVAR___RCSServiceSession_state);
  v19 = *(v18 + 16);
  sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
  v20 = v19;

  v21 = CTLazuliOperationID.init(id:)(a3, a4);
  v26[0] = 0;
  LODWORD(a2) = [v20 exit:a2 groupChat:v17 withOperationID:v21 withError:v26];

  if (a2)
  {
    v22 = v26[0];
  }

  else
  {
    v23 = v26[0];
    v24 = sub_F015C();

    swift_willThrow();
    if (*(v18 + 40))
    {

      RCSGroupController.groupOperationFailed(with:operationID:)(v24, a3, a4);
    }

    else
    {
      __break(1u);
    }
  }
}

void RCSServiceSession.addParticipants(_:to:operation:)(uint64_t a1, void *a2, void *a3, void *a4, RCSServiceSession *a5)
{

  sub_83D08(a1, a2, a3, a4, a5, RCSPersistentMenu.menu.getter, &selRef_addParticipants_toGroupChat_withParticipantsToAdd_withOperationID_withSecurity_withError_);
}

void RCSServiceSession.removeParticipants(_:from:operation:)(uint64_t a1, void *a2, void *a3, void *a4, RCSServiceSession *a5)
{

  sub_83D08(a1, a2, a3, a4, a5, j___s7CoreRCS17RCSPersistentMenuC4menuSo012IMPersistentD0CSgvg, &selRef_removeParticipants_fromGroupChat_withParticipantsToRemove_withOperationID_withSecurity_withError_);
}

void sub_83D08(uint64_t a1, void *a2, void *a3, void *a4, RCSServiceSession *a5, uint64_t (*a6)(void), SEL *a7)
{
  v111 = a5;
  v110 = a4;
  v109 = a3;
  v106 = sub_F06CC();
  v11 = *(v106 - 8);
  __chkstk_darwin(v106);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(CTLazuliGroupChatParticipantList) init];
  v22 = v14;
  v23 = *(a1 + 16);
  v108 = a7;
  v105 = v11;
  if (v23)
  {
    v102 = a2;
    v103 = v13;
    v104 = v14;
    v112 = _swiftEmptyArrayStorage;
    v24 = sub_6EB68(0, v23, 0);
    v25 = v112;
    v26 = (a1 + 32);
    do
    {
      v27 = v26[1];
      v117[0] = *v26;
      v117[1] = v27;
      *v118 = v26[2];
      *&v118[9] = *(v26 + 41);
      __chkstk_darwin(v24);
      v28 = v110;
      *(&v102 - 4) = v109;
      *(&v102 - 3) = v28;
      *(&v102 - 2) = v111->IMDTelephonyServiceSession_opaque;
      sub_38910(v117, v113);
      RCSHandle.canonicalizedHandle(for:)(a6, v116);
      v29 = RCSHandle.rawValue.getter();
      v31 = v30;
      sub_3CAB8(v116);
      v24 = sub_3CAB8(v117);
      v112 = v25;
      v33 = *v25[1].IMDTelephonyServiceSession_opaque;
      v32 = *v25[1].state;
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v24 = sub_6EB68((v32 > 1), v33 + 1, 1);
        v25 = v112;
      }

      *v25[1].IMDTelephonyServiceSession_opaque = v34;
      v35 = &v25[v33];
      *v35[2].IMDTelephonyServiceSession_opaque = v29;
      *v35[2].state = v31;
      v26 += 4;
      --v23;
    }

    while (v23);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage[2];
    if (!v34)
    {
      v55 = _swiftEmptyArrayStorage;
      _swiftEmptyArrayStorage, v15, v16, v17, v18, v19, v20, v21;
      goto LABEL_12;
    }

    v102 = a2;
    v103 = v13;
    v104 = v14;
    v25 = _swiftEmptyArrayStorage;
  }

  v113[0] = _swiftEmptyArrayStorage;
  sub_F102C();
  state = v25[2].state;
  do
  {
    v37 = *state;
    v38 = objc_allocWithZone(CTLazuliGroupChatParticipant);

    v39 = [v38 init];
    v40 = sub_F07BC();
    [v39 setMember:v40];
    v37, v41, v42, v43, v44, v45, v46, v47;

    sub_F0FFC();
    sub_F104C();
    sub_F105C();
    sub_F100C();
    state += 2;
    --v34;
  }

  while (v34);
  v25, v48, v49, v50, v51, v52, v53, v54;
  v55 = v113[0];
  v22 = v104;
  v13 = v103;
  a2 = v102;
LABEL_12:
  sub_37310(0, &qword_1286A0, CTLazuliGroupChatParticipant_ptr);
  v56 = sub_F09EC();
  v55, v57, v58, v59, v60, v61, v62, v63;
  [v22 setMemberList:v56];

  v64 = sub_37310(0, &qword_128038, CTLazuliGroupChatUri_ptr);
  sub_1F28(a2, v113);
  v65 = v114;
  v66 = v115;
  v67 = sub_5F3F4(v113, v114);
  v68 = __chkstk_darwin(v67);
  v70 = &v102 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v71 + 16))(v70, v68);
  v72 = sub_A84F0(v70, v64, v65, v66);
  sub_1EDC(v113);
  v73 = a2[3];
  v74 = a2[4];
  sub_373E8(a2, v73);
  v75 = (*(v74 + 24))(v73, v74);
  v76 = 0;
  if (v75)
  {
    v76 = [objc_allocWithZone(CTLazuliSecurity) init];
  }

  v77 = Logger.rcs.unsafeMutableAddressor();
  v78 = v105;
  v79 = v106;
  (*(v105 + 16))(v13, v77, v106);
  v80 = v76;
  v81 = sub_F06AC();
  v82 = sub_F0CCC();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v104 = v72;
    v85 = v13;
    v86 = v78;
    v87 = v22;
    v88 = v84;
    *v83 = 138412290;
    *(v83 + 4) = v80;
    *v84 = v76;
    v89 = v80;
    _os_log_impl(&dword_0, v81, v82, "Sending with encryption: %@", v83, 0xCu);
    sub_389D8(v88);
    v22 = v87;
    v78 = v86;
    v13 = v85;
    v72 = v104;
  }

  (*(v78 + 8))(v13, v79);
  v90 = *(v107 + OBJC_IVAR___RCSServiceSession_state);
  v91 = *(v90 + 16);
  sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
  v92 = v91;
  v93 = v111;

  v94 = CTLazuliOperationID.init(id:)(v110, v93);
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  v95 = static NSUserDefaults.forceEncryption.getter();
  v96 = 0;
  v97 = v108;
  if ((v95 & 1) == 0)
  {
    v96 = v80;
  }

  v113[0] = 0;
  v98 = [v92 *v97];

  if (v98)
  {
    v99 = v113[0];
  }

  else
  {
    v100 = v113[0];
    v101 = sub_F015C();

    swift_willThrow();
    if (*(v90 + 40))
    {

      RCSGroupController.groupOperationFailed(with:operationID:)(v101, v110, v111);
    }

    else
    {
      __break(1u);
    }
  }
}

void RCSServiceSession.renameGroup(identity:name:operation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v52 = a5;
  v53 = a6;
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v9 = sub_F06CC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  sub_373E8(a1, v13);
  v15 = (*(v14 + 24))(v13, v14);
  v16 = 0;
  if (v15)
  {
    v16 = [objc_allocWithZone(CTLazuliSecurity) init];
  }

  v17 = Logger.rcs.unsafeMutableAddressor();
  (*(v10 + 16))(v12, v17, v9);
  v18 = v16;
  v19 = sub_F06AC();
  v20 = sub_F0CCC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v48 = v7;
    v22 = v21;
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v18;
    *v23 = v16;
    v24 = v18;
    _os_log_impl(&dword_0, v19, v20, "Sending with encryption: %@", v22, 0xCu);
    sub_389D8(v23);

    v7 = v48;
  }

  (*(v10 + 8))(v12, v9);
  v25 = *(v7 + OBJC_IVAR___RCSServiceSession_state);
  v26 = *(v25 + 16);
  v27 = sub_37310(0, &qword_128038, CTLazuliGroupChatUri_ptr);
  sub_1F28(a1, v54);
  v28 = v55;
  v29 = v56;
  v30 = sub_5F3F4(v54, v55);
  v31 = __chkstk_darwin(v30);
  v33 = &v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v31);
  v35 = v26;
  v36 = sub_A84F0(v33, v27, v28, v29);
  sub_1EDC(v54);
  sub_37310(0, &qword_1286A8, CTLazuliGroupChatSubject_ptr);
  v37 = v50;

  v38 = CTLazuliGroupChatSubject.init(displayString:)(v49, v37);
  sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
  v39 = v53;

  v40 = v52;
  v41 = CTLazuliOperationID.init(id:)(v52, v39);
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  v42 = 0;
  if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
  {
    v42 = v18;
  }

  v54[0] = 0;
  v43 = [v35 changeSubject:v51 forGroupChat:v36 withNewSubject:v38 withOperationID:v41 withSecurity:v42 withError:v54];

  if (v43)
  {
    v44 = v54[0];
  }

  else
  {
    v45 = v54[0];
    v46 = sub_F015C();

    swift_willThrow();
    if (*(v25 + 40))
    {

      RCSGroupController.groupOperationFailed(with:operationID:)(v46, v40, v39);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_8496C(uint64_t *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 copyIsoCountryCodeForSubscriptionContext:v1];

  v4 = sub_F07EC();
  return v4;
}

void sub_849EC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [v2 subscriptionContextForChat:*a1];
  v5 = v4;
  if (v4 && (sub_8326C(v4) & 1) == 0)
  {

    v5 = 0;
  }

  *a2 = v5;
}

void RCSServiceSession.updateIdentity(for:info:)(id a1@<X1>, void *a2@<X0>, uint64_t *a3@<X8>)
{
  v5 = [a1 remoteUri];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 focus];
    v8 = sub_F07EC();
    v10 = v9;

    v11 = [v6 conversationID];
    v12 = sub_F07EC();
    v14 = v13;

    v33[3] = sub_37310(0, &qword_127EF0, IMDChat_ptr);
    v33[4] = &protocol witness table for IMDChat;
    v33[0] = a2;
    a3[3] = &type metadata for IMDChatRCSGroupIdentity;
    a3[4] = &protocol witness table for IMDChatRCSGroupIdentity;
    v15 = swift_allocObject();
    *a3 = v15;
    sub_1F28(v33, v15 + 16);
    v16 = a2;
    v17._countAndFlagsBits = v12;
    v17._object = v14;
    v18._countAndFlagsBits = v8;
    v18._object = v10;
    IMDChatRCSGroupIdentity.migrateToLatest(conversationID:groupURI:)(v17, v18);
    v10, v19, v20, v21, v22, v23, v24, v25;
    v14, v26, v27, v28, v29, v30, v31, v32;
    sub_1EDC(v33);
  }

  else
  {
    sub_53D04();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_84C10@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *(&v10 + 1) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v11 = &protocol witness table for IMDChat;
  *&v9 = v3;
  v4 = v3;
  if (IMDChatRCSGroupIdentity.isValid.getter())
  {
    result = swift_allocObject();
    v6 = v10;
    *(result + 16) = v9;
    *(result + 32) = v6;
    *(result + 48) = v11;
    v7 = &protocol witness table for IMDChatRCSGroupIdentity;
    v8 = &type metadata for IMDChatRCSGroupIdentity;
  }

  else
  {
    sub_39BC4(&v9);
    v8 = 0;
    v7 = 0;
    result = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v8;
  a2[4] = v7;
  *a2 = result;
  return result;
}

uint64_t sub_84CD0(id *a1)
{
  v1 = [*a1 displayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_F07EC();

  return v3;
}

RCSServiceSession *_sSo17RCSServiceSessionC3RCSE15rawParticipants2inSaySSGSo7IMDChatC_tF_0(void *a1)
{
  result = [a1 participants];
  if (result)
  {
    v2 = result;
    sub_37310(0, &qword_127F70, IMDHandle_ptr);
    v3 = sub_F09FC();

    if (v3 >> 62)
    {
LABEL_23:
      v11 = sub_F10DC();
      if (v11)
      {
LABEL_4:
        v12 = 0;
        v13 = _swiftEmptyArrayStorage;
        do
        {
          v14 = v12;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v15 = sub_F0FCC();
              v12 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v14 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_22;
              }

              v15 = *(v3 + 8 * v14 + 32);
              v12 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
LABEL_21:
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }
            }

            v16 = v15;
            v17 = [v16 ID];
            if (v17)
            {
              break;
            }

            ++v14;
            if (v12 == v11)
            {
              goto LABEL_25;
            }
          }

          v18 = v17;
          v19 = sub_F07EC();
          v24 = v20;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_6E2D8(0, *v13[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v13, v7, v8, v9, v10);
          }

          v22 = *v13[1].IMDTelephonyServiceSession_opaque;
          v21 = *v13[1].state;
          if (v22 >= v21 >> 1)
          {
            v13 = sub_6E2D8((v21 > 1), v22 + 1, &dword_0 + 1, v13, v7, v8, v9, v10);
          }

          *v13[1].IMDTelephonyServiceSession_opaque = v22 + 1;
          v23 = &v13[v22];
          *v23[2].IMDTelephonyServiceSession_opaque = v19;
          *v23[2].state = v24;
        }

        while (v12 != v11);
        goto LABEL_25;
      }
    }

    else
    {
      v11 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      if (v11)
      {
        goto LABEL_4;
      }
    }

    v13 = _swiftEmptyArrayStorage;
LABEL_25:
    v3, v4, v5, v6, v7, v8, v9, v10;
    return v13;
  }

  __break(1u);
  return result;
}

id _sSo17RCSServiceSessionC3RCSE21discoverGroupChatInfo3forSo08CTLazulieF11InformationCSgSo7IMDChatC_tF_0(void *a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedController];
  v7 = [v6 serviceWithName:IMServiceNameRCS];

  if (!v7)
  {
    return 0;
  }

  v8 = [objc_opt_self() sharedInstance];
  result = [a1 participantHandles];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  v113 = a1;
  v11 = [v8 existingChatsForIDs:result onService:v7 style:43];

  v110 = sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v12 = sub_F09FC();

  if (v12 >> 62)
  {
LABEL_42:
    v13 = sub_F10DC();
    if (v13)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

  v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  if (!v13)
  {
LABEL_43:

LABEL_44:
    v12, v70, v71, v72, v73, v74, v75, v76;
    return 0;
  }

LABEL_5:
  v105 = v5;
  v106 = v3;
  v107 = v2;
  v108 = v7;
  v5 = 0;
  v111 = v13;
  v112 = v12 & 0xC000000000000001;
  v109 = v12 & 0xFFFFFFFFFFFFFF8;
  v7 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  while (1)
  {
    if (v112)
    {
      v21 = sub_F0FCC();
    }

    else
    {
      if (v5 >= *(v109 + 16))
      {
        goto LABEL_41;
      }

      v21 = *(v12 + 8 * v5 + 32);
    }

    v22 = v21;
    v2 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v23 = [v21 v7[167]];
    if (v23)
    {
      v24 = v23;
      v25 = sub_F07EC();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v28 = v7;
    v29 = [v113 v7[167]];
    if (!v29)
    {
      if (!v27)
      {
        goto LABEL_26;
      }

      goto LABEL_7;
    }

    v3 = v29;
    v30 = sub_F07EC();
    v32 = v31;

    if (v27)
    {
      break;
    }

    if (!v32)
    {
      goto LABEL_26;
    }

    v32, v33, v34, v35, v36, v37, v38, v39;

LABEL_8:
    ++v5;
    v7 = v28;
    if (v2 == v111)
    {

      goto LABEL_44;
    }
  }

  if (!v32)
  {
LABEL_7:

    v27, v14, v15, v16, v17, v18, v19, v20;
    goto LABEL_8;
  }

  if (v25 == v30 && v27 == v32)
  {
    v27, v33, v34, v35, v36, v37, v38, v39;
    v32, v40, v41, v42, v43, v44, v45, v46;
  }

  else
  {
    v47 = sub_F122C();
    v27, v48, v49, v50, v51, v52, v53, v54;
    v32, v55, v56, v57, v58, v59, v60, v61;
    if ((v47 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

LABEL_26:
  v116[3] = v110;
  v116[4] = &protocol witness table for IMDChat;
  v116[0] = v22;
  v62 = v22;
  if ((IMDChatRCSGroupIdentity.isValid.getter() & 1) == 0)
  {
    sub_39BC4(v116);

    goto LABEL_8;
  }

  v12, v63, v64, v65, v66, v67, v68, v69;
  v77 = Logger.groups.unsafeMutableAddressor();
  v78 = v105;
  v79 = v106;
  v80 = v107;
  v106[2](v105, v77, v107);
  sub_85608(v116, v115);
  v81 = v62;
  v82 = sub_F06AC();
  v83 = sub_F0CCC();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v86 = v78;
    v87 = swift_slowAlloc();
    v114 = v87;
    *v84 = 136315394;
    v88 = IMDChatRCSGroupIdentity.conversationID.getter();
    if (v89)
    {
      v90 = v88;
    }

    else
    {
      v90 = 1701736302;
    }

    if (v89)
    {
      v91 = v89;
    }

    else
    {
      v91 = 0xE400000000000000;
    }

    sub_39BC4(v115);
    v92 = sub_3E850(v90, v91, &v114);
    v91, v93, v94, v95, v96, v97, v98, v99;
    *(v84 + 4) = v92;
    *(v84 + 12) = 2112;
    *(v84 + 14) = v81;
    *v85 = v81;
    v100 = v81;
    _os_log_impl(&dword_0, v82, v83, "Found an existing group info with conversationID: %s from chat %@", v84, 0x16u);
    sub_389D8(v85);

    sub_1EDC(v87);

    (v79[1])(v86, v107);
  }

  else
  {

    sub_39BC4(v115);
    (v79[1])(v78, v80);
  }

  v101 = v108;
  sub_85608(v116, v115);
  v102 = sub_9232C(v115);
  v103 = [objc_allocWithZone(CTLazuliGroupChatInformation) init];
  [v103 setRemoteUri:v102];

  sub_39BC4(v116);
  return v103;
}

unint64_t sub_855B4()
{
  result = qword_128760;
  if (!qword_128760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128760);
  }

  return result;
}

uint64_t sub_85668(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_F06CC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = *(type metadata accessor for RCSMessage(0) - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_F0AEC();
  v2[11] = sub_F0ADC();
  v6 = sub_F0A6C();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_857C8, v6, v5);
}

id sub_857C8()
{
  v103 = v0;
  v1 = v0[10];
  v2 = v0[2];
  v3 = *(v2 + 16);
  v0[14] = v3;
  sub_93ED8(v2 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage, v1, type metadata accessor for RCSMessage);
  v4 = v3;
  v5 = [v4 guid];
  if (!v5)
  {
    v25 = v0[10];

    v26 = 1;
LABEL_7:
    sub_5F980();
    swift_allocError();
    *v34 = v26;
    *(v34 + 4) = 1;
    swift_willThrow();

    sub_93F40(v25, type metadata accessor for RCSMessage);

    v35 = v0[1];

    return v35();
  }

  v6 = v0[2];
  v7 = v5;
  v8 = sub_F07EC();
  v10 = v9;

  v11 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat;
  v12 = [*(v6 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat) chatIdentifier];
  if (!v12)
  {
    v25 = v0[10];

    v10, v27, v28, v29, v30, v31, v32, v33;
    v26 = 2;
    goto LABEL_7;
  }

  v98 = v8;
  v13 = v12;
  v100 = sub_F07EC();
  v15 = v14;

  v101 = v15;
  v0[15] = v15;
  v93 = [*(v6 + v11) style];
  v16 = sub_F030C();
  v0[16] = v16;
  v17 = *(v16 - 8);
  v0[17] = v17;
  v18 = swift_task_alloc();
  v0[18] = v18;
  v19 = [v4 clientSendTime];

  sub_388C8(&qword_127B20, &unk_F74E0);
  v20 = swift_task_alloc();
  v21 = v20;
  v95 = v18;
  v97 = v10;
  v94 = v17;
  if (v19)
  {
    v22 = swift_task_alloc();
    sub_F02CC();

    v23 = *(v17 + 32);
    v23(v21, v22, v16);
    (*(v17 + 56))(v21, 0, 1, v16);

    v23(v18, v21, v16);
    v24 = v101;
  }

  else
  {
    v37 = v17;
    v38 = *(v17 + 56);
    v38(v20, 1, 1, v16);
    v39 = [v4 time];
    v40 = swift_task_alloc();
    v41 = v40;
    if (v39)
    {
      v42 = swift_task_alloc();
      sub_F02CC();

      v43 = *(v37 + 32);
      v43(v41, v42, v16);
      v38(v41, 0, 1, v16);

      v43(v95, v41, v16);
      v24 = v15;
      v44 = v94;
    }

    else
    {
      v45 = v37;
      v38(v40, 1, 1, v16);
      result = [objc_opt_self() __im_dateWithCurrentServerTime];
      v24 = v15;
      if (!result)
      {
        __break(1u);
        return result;
      }

      v46 = result;
      sub_F02CC();

      v44 = v45;
      if ((*(v45 + 48))(v41, 1, v16) != 1)
      {
        sub_372B0(v41, &qword_127B20, &unk_F74E0);
      }
    }

    v10 = v97;
    if ((*(v44 + 48))(v21, 1, v16) != 1)
    {
      sub_372B0(v21, &qword_127B20, &unk_F74E0);
    }
  }

  v48 = v0[5];
  v47 = v0[6];
  v49 = v0[4];

  v50 = Logger.rcs.unsafeMutableAddressor();
  (*(v48 + 16))(v47, v50, v49);

  v51 = sub_F06AC();
  v52 = sub_F0CCC();
  v10, v53, v54, v55, v56, v57, v58, v59;
  v24, v60, v61, v62, v63, v64, v65, v66;
  v67 = os_log_type_enabled(v51, v52);
  v69 = v0[5];
  v68 = v0[6];
  v70 = v0[4];
  if (v67)
  {
    v91 = v0[4];
    v71 = v16;
    v72 = v24;
    v73 = swift_slowAlloc();
    v102[0] = swift_slowAlloc();
    *v73 = 136315394;
    *(v73 + 4) = sub_3E850(v98, v10, v102);
    *(v73 + 12) = 2080;
    v74 = v72;
    v16 = v71;
    *(v73 + 14) = sub_3E850(v100, v74, v102);
    _os_log_impl(&dword_0, v51, v52, "Queuing send of message %s in chat %s", v73, 0x16u);
    swift_arrayDestroy();

    (*(v69 + 8))(v68, v91);
  }

  else
  {

    (*(v69 + 8))(v68, v70);
  }

  v92 = v4;
  if (qword_127AD0 != -1)
  {
    swift_once();
  }

  v76 = v0[7];
  v75 = v0[8];
  v77 = v0[3];
  v89 = v0[9];
  v90 = v0[2];
  sub_93ED8(v0[10], v89, type metadata accessor for RCSMessage);
  v78 = swift_task_alloc();
  (*(v94 + 16))(v78, v95, v16);
  v79 = (*(v76 + 80) + 40) & ~*(v76 + 80);
  v96 = v16;
  v80 = (v75 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
  v83 = (*(v94 + 80) + v82 + 17) & ~*(v94 + 80);
  v84 = swift_allocObject();
  v0[19] = v84;
  *(v84 + 2) = v77;
  *(v84 + 3) = v98;
  *(v84 + 4) = v97;
  sub_3CA08(v89, &v84[v79]);
  *&v84[v80] = v90;
  *&v84[v81] = v92;
  v85 = &v84[v82];
  *v85 = v100;
  *(v85 + 1) = v101;
  v85[16] = v93;
  (*(v94 + 32))(&v84[v83], v78, v96);

  v99 = (&async function pointer to dispatch thunk of AsyncMultiQueue.performAndWait<A>(key:_:) + async function pointer to dispatch thunk of AsyncMultiQueue.performAndWait<A>(key:_:));
  v86 = v92;

  v87 = v77;

  v88 = swift_task_alloc();
  v0[20] = v88;
  *v88 = v0;
  v88[1] = sub_86088;

  return v99();
}

uint64_t sub_86088()
{
  v2 = *v1;
  v2[21] = v0;

  v10 = v2[15];
  if (v0)
  {

    v10, v11, v12, v13, v14, v15, v16, v17;
    v18 = v2[12];
    v19 = v2[13];
    v20 = sub_862DC;
  }

  else
  {
    v10, v3, v4, v5, v6, v7, v8, v9;

    v18 = v2[12];
    v19 = v2[13];
    v20 = sub_861F4;
  }

  return _swift_task_switch(v20, v18, v19);
}

uint64_t sub_861F4()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];

  (*(v2 + 8))(v1, v3);
  sub_93F40(v5, type metadata accessor for RCSMessage);

  v6 = v0[1];

  return v6();
}

uint64_t sub_862DC()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];

  (*(v2 + 8))(v1, v3);
  sub_93F40(v5, type metadata accessor for RCSMessage);

  v6 = v0[1];

  return v6();
}

uint64_t sub_863B8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_F07BC();
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_F07BC();
LABEL_6:
  v9 = [v4 _resolvedCallerIDForLastAddressedLocalHandle:v7 lastAddressedSIMID:v8 saveResolvedCallerIDToChat:0];

  if (!v9)
  {
    return IMSharedHelperRetrieveSimDetailsFromTelephony();
  }

  if (v6)
  {
    v6 = sub_F07BC();
  }

  if (v5)
  {
    v5 = sub_F07BC();
  }

  v10 = [v4 _sendingDecisionForMessageItem:0 callerID:v9 lastAddressedLocalHandle:v6 lastAddressedSIMID:v5];

  if ((v10 & 2) != 0)
  {
    return 0;
  }

  else
  {
    return IMSharedHelperRetrieveSimDetailsFromTelephony();
  }
}

uint64_t sub_864D0()
{
  v0 = sub_388C8(&qword_128A58, &qword_F3D30);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_F039C();
  sub_F0AFC();
  v7 = sub_F0B1C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  (*(v1 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0);
  result = sub_F038C();
  qword_12FC20 = result;
  return result;
}

uint64_t sub_8665C()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 32), v8, v9, v10, v11, v12, v13, v14;

  *(v0 + 72), v15, v16, v17, v18, v19, v20, v21;

  return v0;
}

uint64_t sub_866FC()
{
  sub_8665C();

  return swift_deallocClassInstance();
}

uint64_t sub_8672C()
{
  v1 = im_primary_queue();
  v2 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v1];

  *(v0 + 16) = v2;
  *(v0 + 24) = sub_813A0(_swiftEmptyArrayStorage);
  *(v0 + 32) = sub_813B4(_swiftEmptyArrayStorage);
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = sub_814C4(_swiftEmptyArrayStorage);
  *(v0 + 80) = 0;
  v3 = sub_9E6CC(_swiftEmptyArrayStorage);
  *(v0 + 88) = 0;
  *(v0 + 96) = v3;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  return v0;
}

id RCSServiceSession.init(account:service:replicatingFor:)(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccount:a1 service:a2 replicatingForSession:a3];

  return v6;
}

void RCSServiceSession.init(account:service:replicatingFor:)(void *a1, void *a2, void *a3)
{
  v89 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v78 - v7;
  v92 = sub_F06CC();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v86 = &v78 - v10;
  v85 = sub_F06EC();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_F071C();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_388C8(&qword_127E78, &qword_F2C10);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v78 - v15;
  _s5StateCMa();
  swift_allocObject();
  *&v3[OBJC_IVAR___RCSServiceSession_state] = sub_8672C();
  v100.receiver = v3;
  v100.super_class = RCSServiceSession;
  v93 = a1;
  v94 = a2;
  v95 = a3;
  v17 = objc_msgSendSuper2(&v100, "initWithAccount:service:replicatingForSession:", a1, a2, a3);
  v18 = OBJC_IVAR___RCSServiceSession_state;
  v19 = *&v17[OBJC_IVAR___RCSServiceSession_state];
  sub_388C8(&unk_128770, &unk_F3BC0);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v19 + 104) = v20;
  v21 = v17;

  v22 = *&v17[v18];
  type metadata accessor for RCSTypingTracker();
  v23 = v21;

  *(v22 + 112) = RCSTypingTracker.__allocating_init(delegate:)(v23, &protocol witness table for RCSServiceSession);

  v24 = *&v17[v18];
  v25 = type metadata accessor for RCSServiceReachabilityDelegate();
  v26 = objc_allocWithZone(v25);
  swift_unknownObjectUnownedInit();
  v99.receiver = v26;
  v99.super_class = v25;

  v27 = objc_msgSendSuper2(&v99, "initWithServiceSession:", v23);

  v28 = *(v24 + 128);
  *(v24 + 128) = v27;

  v96 = v18;
  v29 = *&v17[v18];
  v30 = *(v29 + 128);
  if (!v30)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v31 = qword_1279F0;

  v79 = v30;
  if (v31 != -1)
  {
    swift_once();
  }

  v32 = sub_3C96C(v13, qword_127BC8);
  v33 = *(v14 + 16);
  v33(v16, v32, v13);
  sub_F044C();
  v34 = *(v14 + 8);
  v34(v16, v13);
  v35 = aBlock[0];
  if (qword_1279F8 != -1)
  {
    swift_once();
  }

  v36 = sub_3C96C(v13, qword_127BE0);
  v33(v16, v36, v13);
  sub_F044C();
  v34(v16, v13);
  v105[0] = v35;
  v105[1] = aBlock[0];
  v105[2] = 0;
  v105[3] = 0;
  v106 = 1;
  sub_388C8(&unk_128778, &unk_F3BC8);
  swift_allocObject();
  *(v29 + 120) = RCSReachabilityController.init(delegate:operationConfiguration:)(v79, v105);

  v37 = v96;
  v38 = *&v17[v96];
  sub_388C8(&unk_128780, &unk_F3BD0);
  swift_allocObject();
  v39 = v23;

  *(v38 + 136) = RCSMessageProcessingQueue.init(delegate:)(v39);

  v40 = *&v17[v37];
  v101 = xmmword_F3BB0;
  v102 = 0;
  v103 = 0;
  v104 = 1;
  sub_388C8(&unk_128788, &unk_F3BD8);
  swift_allocObject();
  v41 = v39;

  *(v40 + 40) = RCSGroupController.init(delegate:operationConfiguration:)(v41, &v101);

  v42 = *&v17[v37];
  sub_388C8(&unk_128790, &unk_F3BE0);
  swift_allocObject();
  v43 = v41;

  *(v42 + 48) = RCSMessageCreator.init(delegate:)(v43);

  v44 = *&v17[v37];
  sub_388C8(&unk_128798, &unk_F3BE8);
  swift_allocObject();
  v45 = v43;

  *(v44 + 56) = RCSSpamReportingController.init(delegate:operationConfiguration:)(v45, &v101);

  v46 = *(*&v17[v37] + 16);
  [v46 setDelegate:v45];

  v47 = im_primary_queue();
  if (!v47)
  {
    goto LABEL_17;
  }

  v48 = v47;
  v49 = swift_allocObject();
  *(v49 + 16) = v45;
  aBlock[4] = sub_87520;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_9400C;
  aBlock[3] = &unk_11EC98;
  v50 = _Block_copy(aBlock);
  v51 = v45;
  v52 = v80;
  sub_F06FC();
  v97 = _swiftEmptyArrayStorage;
  sub_93B10(&qword_127F88, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_388C8(&qword_127F90, &qword_F2EC0);
  sub_5506C();
  v53 = v82;
  v54 = v85;
  sub_F0E8C();
  sub_F0D5C();
  _Block_release(v50);

  (*(v84 + 8))(v53, v54);
  (*(v81 + 8))(v52, v83);

  v55 = *&v17[v37];
  v56 = objc_allocWithZone(type metadata accessor for RCSOutgoingMessageController());
  v57 = v51;

  v58 = RCSOutgoingMessageController.init(session:operationConfiguration:)(v57, &v101);
  v59 = *(v55 + 64);
  *(v55 + 64) = v58;

  v60 = [objc_opt_self() sharedInstance];
  [v60 addListener:v57];

  v61 = Logger.rcs.unsafeMutableAddressor();
  v62 = v91;
  v63 = *(v91 + 16);
  v64 = v86;
  v65 = v92;
  v63(v86, v61, v92);
  v66 = sub_F06AC();
  v67 = sub_F0CCC();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_0, v66, v67, "RCSServiceSession is ready to go!", v68, 2u);
  }

  v69 = *(v62 + 8);
  v69(v64, v65);
  if (qword_1279E8 != -1)
  {
    swift_once();
  }

  v70 = v89;
  v71 = sub_3C96C(v89, qword_127BB0);
  v72 = v88;
  v73 = v87;
  (*(v88 + 16))(v87, v71, v70);
  sub_F044C();
  (*(v72 + 8))(v73, v70);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v63(v90, v61, v65);
    v74 = sub_F06AC();
    v75 = sub_F0CCC();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_0, v74, v75, "RCSServiceSession will prompt for radars when capturing an ABC", v76, 2u);
    }

    v69(v90, v65);
  }

  v77 = [objc_opt_self() defaultCenter];
  [v77 addObserver:v57 selector:"_handleFileTransferAccepted:" name:IMDFileTransferAcceptedNotification object:0];
}

void sub_87520()
{
  sub_74B48();
  sub_73DCC();
  sub_8754C();
}

void sub_8754C()
{
  v1 = sub_F06CC();
  isa = v1[-1].isa;
  __chkstk_darwin(v1);
  v128 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v127 = (&v121 - v5);
  __chkstk_darwin(v6);
  v8 = &v121 - v7;
  __chkstk_darwin(v9);
  v126 = &v121 - v10;
  v11 = sub_73B04();
  v20 = v11;
  if (v11 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)); i; i = sub_F10DC())
  {
    v147 = v1;
    v22 = 0;
    v122 = 0;
    v23 = *(&v0->isa + OBJC_IVAR___RCSServiceSession_state);
    v130 = v20 & 0xC000000000000001;
    v124 = v20 & 0xFFFFFFFFFFFFFF8;
    v123 = (v20 + 32);
    v125 = "receipt for message";
    v24 = isa + 2;
    v146 = isa + 1;
    *&v19 = 138412546;
    v136 = v19;
    *&v19 = 134218242;
    v121 = v19;
    v131 = v20;
    v129 = i;
    v137 = isa + 2;
    v134 = v23;
    v135 = v8;
    while (1)
    {
      if (v130)
      {
        v25 = v22;
        v26 = sub_F0FCC();
      }

      else
      {
        if (v22 >= *(v124 + 16))
        {
          goto LABEL_52;
        }

        v25 = v22;
        v26 = *&v123->IMDTelephonyServiceSession_opaque[8 * v22];
      }

      v0 = v26;
      v27 = __OFADD__(v25, 1);
      isa = (&v25->isa + 1);
      if (v27)
      {
        break;
      }

      v132 = isa;
      v28 = *(v23 + 16);
      v150 = 0;
      v29 = [v28 retrieveAllIncomingMessageIDs:v0 withError:&v150];
      if (v29)
      {
        v30 = v29;
        v31 = v150;
        v32 = [v30 list];

        sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
        v33 = sub_F09FC();

        LOBYTE(v30) = sub_53040(0xD00000000000001FLL, (v125 | 0x8000000000000000));
        v34 = Logger.rcs.unsafeMutableAddressor();
        v35 = v24->isa;
        if (v30)
        {
          v144 = v24->isa;
          v35(v126, v34, v147);

          v36 = v0;
          isa = sub_F06AC();
          v1 = sub_F0CCC();
          v145 = v36;

          if (os_log_type_enabled(isa, v1))
          {
            v37 = v34;
            v38 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            *v38 = v121;
            if (v33 >> 62)
            {
              v47 = sub_F10DC();
            }

            else
            {
              v47 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
            }

            *(v38 + 4) = v47;
            v33, v39, v40, v41, v42, v43, v44, v45;
            *(v38 + 12) = 2112;
            v48 = v145;
            *(v38 + 14) = v145;
            *v46 = v48;
            v49 = v48;
            _os_log_impl(&dword_0, isa, v1, "There are %ld messages waiting to be processed from Telephony for subscription %@", v38, 0x16u);
            sub_372B0(v46, &qword_127AF0, &qword_F28E0);

            v34 = v37;
          }

          else
          {

            v33, v73, v74, v75, v76, v77, v78, v79;
          }

          v20 = v131;
          v143 = v146->isa;
          v143(v126, v147);
          v80 = v23;
          if (v33 >> 62)
          {
            v0 = sub_F10DC();
            if (v0)
            {
LABEL_27:
              v20 = 0;
              v142 = v33 & 0xC000000000000001;
              v133 = v33 & 0xFFFFFFFFFFFFFF8;
              v140 = v33;
              v141 = v34;
              v139 = v0;
              while (1)
              {
                if (v142)
                {
                  isa = sub_F0FCC();
                  v81 = v80;
                }

                else
                {
                  if (v20 >= *(v133 + 16))
                  {
                    goto LABEL_50;
                  }

                  v81 = v80;
                  isa = *(v33 + 8 * v20 + 32);
                }

                v82 = v147;
                if (__OFADD__(v20, 1))
                {
                  break;
                }

                v148 = (v20 + 1);
                v144(v8, v34, v147);
                v83 = v145;
                v84 = isa;
                v85 = sub_F06AC();
                v86 = sub_F0CCC();

                if (os_log_type_enabled(v85, v86))
                {
                  v87 = swift_slowAlloc();
                  v88 = v83;
                  v89 = swift_slowAlloc();
                  v90 = swift_slowAlloc();
                  v150 = v90;
                  *v87 = v136;
                  *(v87 + 4) = v84;
                  *v89 = v84;
                  *(v87 + 12) = 2080;
                  v91 = v84;
                  v138 = v88;
                  v92 = [v88 labelID];
                  if (v92)
                  {
                    v93 = v92;
                    v94 = sub_F07EC();
                    v96 = v95;
                  }

                  else
                  {
                    v96 = 0xE500000000000000;
                    v94 = 0x3E6C696E3CLL;
                  }

                  v97 = sub_3E850(v94, v96, &v150);
                  v96, v98, v99, v100, v101, v102, v103, v104;
                  *(v87 + 14) = v97;
                  _os_log_impl(&dword_0, v85, v86, "Queueing message ID %@ received on subscription %s", v87, 0x16u);
                  sub_372B0(v89, &qword_127AF0, &qword_F28E0);

                  sub_1EDC(v90);

                  v8 = v135;
                  v143(v135, v147);
                  v81 = v134;
                  v24 = v137;
                  v83 = v138;
                }

                else
                {

                  v143(v8, v82);
                }

                v105 = *(v81 + 136);
                v34 = v141;
                if (!v105)
                {
                  __break(1u);
                }

                v80 = v81;
                v150 = v84;
                v149 = v83;
                isa = (*v105)[17].isa;
                v106 = v83;
                v1 = *v105 + 17;

                (isa)(&v150, &v149);

                ++v20;
                v0 = v139;
                v33 = v140;
                if (v148 == v139)
                {

                  v33, v107, v108, v109, v110, v111, v112, v113;
                  v20 = v131;
                  v23 = v80;
                  goto LABEL_6;
                }
              }

              __break(1u);
LABEL_50:
              __break(1u);
              break;
            }
          }

          else
          {
            v0 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
            if (v0)
            {
              goto LABEL_27;
            }
          }

          v33, v114, v115, v116, v117, v118, v119, v120;
        }

        else
        {
          v1 = v127;
          v35(v127, v34, v147);

          isa = v0;
          v0 = sub_F06AC();
          v56 = sub_F0CEC();

          if (os_log_type_enabled(v0, v56))
          {
            v1 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            LODWORD(v1->isa) = v121;
            if (v33 >> 62)
            {
              v65 = sub_F10DC();
            }

            else
            {
              v65 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
            }

            v33, v57, v58, v59, v60, v61, v62, v63;
            *(&v1->isa + 4) = v65;
            v33, v66, v67, v68, v69, v70, v71, v72;
            WORD2(v1[1].isa) = 2112;
            *(&v1[1].isa + 6) = isa;
            *v64 = isa;
            isa = isa;
            _os_log_impl(&dword_0, v0, v56, "There are %ld messages waiting to be processed from Telephony for subscription %@, but Messages is not the default text app", v1, 0x16u);
            sub_372B0(v64, &qword_127AF0, &qword_F28E0);

            v20 = v131;
            v24 = v137;
          }

          else
          {

            swift_bridgeObjectRelease_n();
            v20 = v131;
          }

          (v146->isa)(v127, v147);
        }
      }

      else
      {
        v50 = v150;
        sub_F015C();

        swift_willThrow();
        v51 = Logger.rcs.unsafeMutableAddressor();
        (v24->isa)(v128, v51, v147);
        v1 = v0;
        swift_errorRetain();
        isa = sub_F06AC();
        v0 = sub_F0CEC();

        if (os_log_type_enabled(isa, v0))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = v136;
          *(v52 + 4) = v1;
          *v53 = v1;
          *(v52 + 12) = 2112;
          v54 = v1;
          swift_errorRetain();
          v55 = _swift_stdlib_bridgeErrorToNSError();
          *(v52 + 14) = v55;
          v53[1] = v55;
          _os_log_impl(&dword_0, isa, v0, "Failed to retrieve incoming message IDs for subscription %@, %@", v52, 0x16u);
          sub_388C8(&qword_127AF0, &qword_F28E0);
          swift_arrayDestroy();
          v24 = v137;

          v20 = v131;
        }

        else
        {
        }

        (v146->isa)(v128, v147);
        v122 = 0;
      }

LABEL_6:
      v22 = v132;
      if (v132 == v129)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

LABEL_56:
  v20, v12, v13, v14, v15, v16, v17, v18;
}

double sub_880B0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_880F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int __swiftcall RCSServiceSession.maxRecipients(forPhoneNumber:simID:)(Swift::String forPhoneNumber, Swift::String simID)
{
  v2 = [objc_opt_self() sharedManager];
  v3 = sub_F07BC();
  v4 = sub_F07BC();
  v5 = [v2 groupMessagingMaxGroupSizeForPhoneNumber:v3 simID:v4];

  return v5;
}

void RCSServiceSession.makeSender(for:for:chatStyle:recipients:)(void *a1, void *a2, unsigned __int8 a3, uint64_t a4)
{
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_55CFC(a2, a1);
  v13 = v12;
  if ((v14 & 1) == 0)
  {
    v45 = objc_allocWithZone(RCSMessageSender);
    sub_388C8(&qword_128568, &qword_F3950);
    v46 = sub_F09EC();
    v47 = [v45 initWithSession:v4 message:a1 chat:a2 style:a3 recipients:v46 context:v13];

    [v47 deriveConfiguration];
    sub_3FA88(v13, 0);
    return;
  }

  v15 = Logger.rcs.unsafeMutableAddressor();
  (*(v9 + 16))(v11, v15, v8);
  v16 = a1;
  v17 = a2;
  v18 = sub_F06AC();
  v19 = sub_F0CEC();
  if (!os_log_type_enabled(v18, v19))
  {

    goto LABEL_8;
  }

  v50 = v13;
  v20 = swift_slowAlloc();
  v49 = swift_slowAlloc();
  v51 = v49;
  *v20 = 136315650;
  v21 = [v16 guid];

  if (!v21)
  {

    __break(1u);
    goto LABEL_11;
  }

  v22 = sub_F07EC();
  v24 = v23;

  v25 = sub_3E850(v22, v24, &v51);
  v24, v26, v27, v28, v29, v30, v31, v32;
  *(v20 + 4) = v25;
  *(v20 + 12) = 2080;
  v33 = [v17 chatIdentifier];

  if (!v33)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v34 = sub_F07EC();
  v36 = v35;

  v37 = sub_3E850(v34, v36, &v51);
  v36, v38, v39, v40, v41, v42, v43, v44;
  *(v20 + 14) = v37;
  *(v20 + 22) = 1026;
  *(v20 + 24) = v50;
  _os_log_impl(&dword_0, v18, v19, "Couldn't resolve context for sending %s to chat %s: %{public}u", v20, 0x1Cu);
  swift_arrayDestroy();

LABEL_8:
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_886C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v12;
  *(v8 + 176) = v14;
  *(v8 + 464) = v13;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  *(v8 + 112) = a2;
  sub_388C8(&unk_127FA0, &qword_F34C0);
  *(v8 + 184) = swift_task_alloc();
  type metadata accessor for RCSMessageSendItem.SendState(0);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = type metadata accessor for RCSMessage(0);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v9 = sub_F06CC();
  *(v8 + 232) = v9;
  *(v8 + 240) = *(v9 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_88874, 0, 0);
}

uint64_t sub_88874(uint64_t a1)
{
  v41 = v1;
  v2 = *(v1 + 272);
  v3 = *(v1 + 232);
  v4 = *(v1 + 240);
  v5 = *(v1 + 128);
  v6 = Logger.rcs.unsafeMutableAddressor();
  *(v1 + 280) = v6;
  v7 = *(v4 + 16);
  *(v1 + 288) = v7;
  *(v1 + 296) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v3);

  v8 = sub_F06AC();
  v9 = sub_F0CCC();
  v5, v10, v11, v12, v13, v14, v15, v16;
  v17 = os_log_type_enabled(v8, v9);
  v18 = *(v1 + 272);
  v19 = *(v1 + 232);
  v20 = *(v1 + 240);
  if (v17)
  {
    v22 = *(v1 + 120);
    v21 = *(v1 + 128);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_3E850(v22, v21, &v40);
    _os_log_impl(&dword_0, v8, v9, "Sending message %s", v23, 0xCu);
    sub_1EDC(v24);
  }

  v25 = *(v20 + 8);
  v25(v18, v19);
  *(v1 + 304) = v25;
  LOBYTE(v25) = *(v1 + 464);
  v27 = *(v1 + 160);
  v26 = *(v1 + 168);
  v28 = *(v1 + 144);
  v29 = *(v1 + 152);
  v30 = *(v1 + 112);
  v31 = swift_allocObject();
  *(v1 + 312) = v31;
  *(v31 + 16) = 0;
  v32 = *(v28 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_context);
  *(v1 + 320) = v32;
  v33 = swift_allocObject();
  *(v1 + 328) = v33;
  *(v33 + 16) = v30;
  *(v33 + 24) = v29;
  *(v33 + 32) = v27;
  *(v33 + 40) = v26;
  *(v33 + 48) = v25;
  v34 = v32;
  v35 = v30;
  v36 = v29;

  v37 = swift_task_alloc();
  *(v1 + 336) = v37;
  *v37 = v1;
  v37[1] = sub_88B18;
  v38 = *(v1 + 136);

  return sub_59D04(v38, v34, &unk_F3D10, v33, &unk_F3D20, v31);
}

uint64_t sub_88B18()
{
  v1 = *(*v0 + 320);

  return _swift_task_switch(sub_88C6C, 0, 0);
}

uint64_t sub_88C6C()
{
  v1 = [objc_opt_self() __im_dateWithCurrentServerTime];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 312);
    v6 = sub_F028C();
    [v4 timeIntervalSinceDate:v6];
    *(v0 + 344) = v7;

    swift_beginAccess();
    *(v0 + 456) = *(v5 + 16);
    *(v0 + 352) = sub_F0AEC();
    *(v0 + 360) = sub_F0ADC();
    v8 = sub_F0A6C();
    v10 = v9;
    v1 = sub_88D84;
    v2 = v8;
    v3 = v10;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_88D84()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 344);
  v3 = *(v0 + 224);
  v4 = *(v0 + 144);

  v5 = *(v4 + 16);
  sub_93ED8(v4 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage, v3, type metadata accessor for RCSMessage);
  v6 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat;
  *(v0 + 368) = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat;
  v7 = *(v4 + v6);
  v8 = v5;
  v9 = v7;
  sub_92540(v8, v3, v9, v1, v2);

  sub_93F40(v3, type metadata accessor for RCSMessage);

  return _swift_task_switch(sub_88E9C, 0, 0);
}

uint64_t sub_88E9C()
{
  v105 = v0;
  if (*(*(v0 + 312) + 16))
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 136);
    (*(v0 + 288))(*(v0 + 256), *(v0 + 280), *(v0 + 232));
    sub_93ED8(v2, v1, type metadata accessor for RCSMessage);

    v3 = sub_F06AC();
    v4 = sub_F0CEC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 304);
    v7 = *(v0 + 312);
    v8 = *(v0 + 256);
    v9 = *(v0 + 232);
    v10 = *(v0 + 216);
    if (v5)
    {
      v102 = *(v0 + 304);
      v11 = swift_slowAlloc();
      v100 = v8;
      v12 = swift_slowAlloc();
      v104[0] = v12;
      *v11 = 67109378;
      *(v11 + 4) = *(v7 + 16);

      *(v11 + 8) = 2080;
      v13 = *(v10 + 128);
      v14 = *(v10 + 136);

      sub_93F40(v10, type metadata accessor for RCSMessage);
      v15 = sub_3E850(v13, v14, v104);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v11 + 10) = v15;
      _os_log_impl(&dword_0, v3, v4, "Failed to send with error %u for rcsMessage %s", v11, 0x12u);
      sub_1EDC(v12);

      v102(v100, v9);
    }

    else
    {

      sub_93F40(v10, type metadata accessor for RCSMessage);
      v6(v8, v9);
    }

    v50 = *(v0 + 184);
    sub_5F2EC(*(v0 + 136) + *(*(v0 + 208) + 32), v50);
    v51 = type metadata accessor for RCSMessage.Content(0);
    v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
    v53 = *(v0 + 184);
    if (v52 == 1)
    {
      sub_372B0(*(v0 + 184), &unk_127FA0, &qword_F34C0);
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_93F40(v53, type metadata accessor for RCSMessage.Content);
      if (!EnumCaseMultiPayload)
      {
        *(v0 + 376) = sub_F0ADC();
        v86 = sub_F0A6C();
        v88 = v97;
        v89 = sub_89880;
        goto LABEL_22;
      }
    }

    v55 = *(v0 + 200);
    v56 = *(v0 + 144);
    v57 = sub_388C8(&qword_127B28, &qword_F2B20);
    (*(*(v57 - 8) + 56))(v55, 4, 4, v57);
    v58 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
    swift_beginAccess();
    sub_93E74(v55, v56 + v58);
    swift_endAccess();
    (*(v0 + 288))(*(v0 + 248), *(v0 + 280), *(v0 + 232));

    v59 = sub_F06AC();
    v60 = sub_F0D0C();

    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 304);
    v63 = *(v0 + 248);
    v64 = *(v0 + 232);
    if (v61)
    {
      v103 = *(v0 + 304);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v104[0] = v66;
      *v65 = 136315138;
      v67 = sub_5FBB8();
      v69 = v68;
      v70 = sub_3E850(v67, v68, v104);
      v69, v71, v72, v73, v74, v75, v76, v77;
      *(v65 + 4) = v70;
      _os_log_impl(&dword_0, v59, v60, "Handling error propagation for %s", v65, 0xCu);
      sub_1EDC(v66);

      v103(v63, v64);
    }

    else
    {

      v62(v63, v64);
    }

    v78 = *(v0 + 192);
    v79 = *(v0 + 144);
    v80 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
    swift_beginAccess();
    sub_93ED8(v79 + v80, v78, type metadata accessor for RCSMessageSendItem.SendState);
    v81 = sub_388C8(&qword_127B28, &qword_F2B20);
    if ((*(*(v81 - 8) + 48))(v78, 4, v81))
    {
      v82 = *(v0 + 152);
      *(v0 + 460) = *(*(v0 + 312) + 16);
      v83 = [v82 guid];
      *(v0 + 384) = v83;
      if (v83)
      {
        *(v0 + 392) = sub_F0ADC();
        v86 = sub_F0A6C();
        v88 = v87;
        v89 = sub_89D54;
        goto LABEL_22;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      return _swift_task_switch(v83, v84, v85);
    }

    v90 = *(v0 + 192);
    v91 = sub_F030C();
    (*(*(v91 - 8) + 8))(v90, v91);
    v92 = *(*(v0 + 312) + 16);
    if (v92 == 20)
    {
      v93 = *(*(v0 + 144) + *(v0 + 368));
      *(v0 + 416) = v93;
      v94 = v93;
      v83 = [v94 chatIdentifier];
      *(v0 + 424) = v83;
      if (!v83)
      {
        goto LABEL_30;
      }

      *(v0 + 465) = [v94 style];
      *(v0 + 432) = sub_F0ADC();
      v86 = sub_F0A6C();
      v88 = v95;
      v89 = sub_8A120;
LABEL_22:
      v83 = v89;
      v84 = v86;
      v85 = v88;

      return _swift_task_switch(v83, v84, v85);
    }

    sub_5F980();
    swift_allocError();
    *v98 = v92;
    *(v98 + 4) = 0;
    swift_willThrow();

    v96 = *(v0 + 8);
  }

  else
  {
    v23 = *(v0 + 288);
    v24 = *(v0 + 280);
    v25 = *(v0 + 264);
    v26 = *(v0 + 232);
    v27 = *(v0 + 200);
    v28 = *(v0 + 144);
    v29 = sub_388C8(&qword_127B28, &qword_F2B20);
    (*(*(v29 - 8) + 56))(v27, 3, 4, v29);
    v30 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
    swift_beginAccess();
    sub_93E74(v27, v28 + v30);
    swift_endAccess();
    v23(v25, v24, v26);

    v31 = sub_F06AC();
    v32 = sub_F0CCC();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 304);
    v35 = *(v0 + 264);
    v36 = *(v0 + 232);
    if (v33)
    {
      v101 = *(v0 + 304);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v104[0] = v38;
      *v37 = 136315138;
      v39 = sub_5FBB8();
      v41 = v40;
      v42 = sub_3E850(v39, v40, v104);
      v41, v43, v44, v45, v46, v47, v48, v49;
      *(v37 + 4) = v42;
      _os_log_impl(&dword_0, v31, v32, "Successfully sent RCS message %s", v37, 0xCu);
      sub_1EDC(v38);

      v101(v35, v36);
    }

    else
    {

      v34(v35, v36);
    }

    v96 = *(v0 + 8);
  }

  return v96();
}

uint64_t sub_89880()
{
  v1 = *(v0 + 144);

  sub_990B0(v1);

  return _swift_task_switch(sub_898F8, 0, 0);
}

uint64_t sub_898F8()
{
  v43 = v0;
  (*(v0 + 288))(*(v0 + 248), *(v0 + 280), *(v0 + 232));

  v1 = sub_F06AC();
  v2 = sub_F0D0C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 304);
  v5 = *(v0 + 248);
  v6 = *(v0 + 232);
  if (v3)
  {
    v41 = *(v0 + 304);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v42 = v8;
    *v7 = 136315138;
    v9 = sub_5FBB8();
    v11 = v10;
    v12 = sub_3E850(v9, v10, &v42);
    v11, v13, v14, v15, v16, v17, v18, v19;
    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v1, v2, "Handling error propagation for %s", v7, 0xCu);
    sub_1EDC(v8);

    v41(v5, v6);
  }

  else
  {

    v4(v5, v6);
  }

  v20 = *(v0 + 192);
  v21 = *(v0 + 144);
  v22 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
  swift_beginAccess();
  sub_93ED8(v21 + v22, v20, type metadata accessor for RCSMessageSendItem.SendState);
  v23 = sub_388C8(&qword_127B28, &qword_F2B20);
  if ((*(*(v23 - 8) + 48))(v20, 4, v23))
  {
    v24 = *(v0 + 152);
    *(v0 + 460) = *(*(v0 + 312) + 16);
    v25 = [v24 guid];
    *(v0 + 384) = v25;
    if (v25)
    {
      *(v0 + 392) = sub_F0ADC();
      v28 = sub_F0A6C();
      v30 = v29;
      v31 = sub_89D54;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_17;
  }

  v32 = *(v0 + 192);
  v33 = sub_F030C();
  (*(*(v33 - 8) + 8))(v32, v33);
  v34 = *(*(v0 + 312) + 16);
  if (v34 == 20)
  {
    v35 = *(*(v0 + 144) + *(v0 + 368));
    *(v0 + 416) = v35;
    v36 = v35;
    v25 = [v36 chatIdentifier];
    *(v0 + 424) = v25;
    if (v25)
    {
      *(v0 + 465) = [v36 style];
      *(v0 + 432) = sub_F0ADC();
      v28 = sub_F0A6C();
      v30 = v37;
      v31 = sub_8A120;
LABEL_10:
      v25 = v31;
      v26 = v28;
      v27 = v30;

      return _swift_task_switch(v25, v26, v27);
    }

LABEL_17:
    __break(1u);
    return _swift_task_switch(v25, v26, v27);
  }

  sub_5F980();
  swift_allocError();
  *v38 = v34;
  *(v38 + 4) = 0;
  swift_willThrow();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_89D54()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 460);
  v3 = *(v0 + 112);

  [v3 didReceiveError:v2 forMessageID:v1 forceError:1];

  return _swift_task_switch(sub_89DEC, 0, 0);
}

uint64_t sub_89DEC()
{
  v1 = [*(v0 + 152) guid];
  *(v0 + 400) = v1;
  if (v1)
  {
    *(v0 + 408) = sub_F0ADC();
    v4 = sub_F0A6C();
    v6 = v5;
    v1 = sub_89E9C;
    v2 = v4;
    v3 = v6;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_89E9C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 112);

  [v2 processMessageSendFailure:v1];

  return _swift_task_switch(sub_89F20, 0, 0);
}

uint64_t sub_89F20()
{
  sub_93F40(*(v0 + 192), type metadata accessor for RCSMessageSendItem.SendState);
  v1 = *(*(v0 + 312) + 16);
  if (v1 == 20)
  {
    v2 = *(*(v0 + 144) + *(v0 + 368));
    *(v0 + 416) = v2;
    v3 = v2;
    v4 = [v3 chatIdentifier];
    *(v0 + 424) = v4;
    if (v4)
    {
      *(v0 + 465) = [v3 style];
      *(v0 + 432) = sub_F0ADC();
      v7 = sub_F0A6C();
      v9 = v8;
      v4 = sub_8A120;
      v5 = v7;
      v6 = v9;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    sub_5F980();
    swift_allocError();
    *v10 = v1;
    *(v10 + 4) = 0;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_8A120()
{
  v1 = *(v0 + 112);

  *(v0 + 440) = [v1 account];

  return _swift_task_switch(sub_8A1A8, 0, 0);
}

uint64_t sub_8A1A8(uint64_t a1)
{
  *(v1 + 448) = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_8A234, v3, v2);
}

uint64_t sub_8A234()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 465);
  v3 = *(v0 + 424);
  v4 = *(v0 + 112);

  [v4 didLeaveChat:v3 style:v2 account:v1];

  return _swift_task_switch(sub_8A2D4, 0, 0);
}

uint64_t sub_8A2D4()
{
  v1 = *(v0 + 312);

  v2 = *(v1 + 16);
  sub_5F980();
  swift_allocError();
  *v3 = v2;
  *(v3 + 4) = 0;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_8A3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_F0AEC();
  *(v5 + 48) = sub_F0ADC();
  v7 = sub_F0A6C();

  return _swift_task_switch(sub_8A49C, v7, v6);
}

uint64_t sub_8A49C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);

  v4 = sub_F07BC();
  [v3 didStartSendingMessage:v2 forChat:v4 style:v1];

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_8A548(int a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 56) = a1;
  sub_F0AEC();
  *(v2 + 48) = sub_F0ADC();
  v4 = sub_F0A6C();

  return _swift_task_switch(sub_8A5E4, v4, v3);
}

uint64_t sub_8A5E4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);

  swift_beginAccess();
  *(v1 + 16) = v2;
  v3 = *(v0 + 8);

  return v3();
}

void RCSServiceSession.revokeSentMessage(_:in:)(void *a1, void *a2)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 guid];
  if (v10)
  {
    v11 = v10;
    v12 = sub_F07EC();
    v14 = v13;

    v15 = [a2 chatIdentifier];
    if (v15)
    {
      v64 = v12;
      v61 = v2;
      v23 = v15;
      v63 = sub_F07EC();
      v25 = v24;

      v26 = Logger.rcs.unsafeMutableAddressor();
      (*(v6 + 16))(v9, v26, v5);

      v27 = sub_F06AC();
      v28 = v14;
      v29 = sub_F0CCC();
      v25, v30, v31, v32, v33, v34, v35, v36;
      v28, v37, v38, v39, v40, v41, v42, v43;
      v44 = os_log_type_enabled(v27, v29);
      v62 = a2;
      v60 = v28;
      if (v44)
      {
        v45 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v45 = 136315394;
        *(v45 + 4) = sub_3E850(v64, v28, &v65);
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_3E850(v63, v25, &v65);
        _os_log_impl(&dword_0, v27, v29, "Queuing revoke of message %s in chat %s", v45, 0x16u);
        swift_arrayDestroy();
      }

      (*(v6 + 8))(v9, v5);
      if (qword_127AD0 != -1)
      {
        swift_once();
      }

      v46 = swift_allocObject();
      v47 = v61;
      v48 = v62;
      v46[2] = v61;
      v46[3] = v48;
      v49 = v64;
      v46[4] = a1;
      v46[5] = v49;
      v46[6] = v60;
      v50 = v47;
      v51 = v48;
      v52 = a1;
      sub_F037C();
      v25, v53, v54, v55, v56, v57, v58, v59;
    }

    else
    {

      v14, v16, v17, v18, v19, v20, v21, v22;
    }
  }
}

uint64_t sub_8A9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_F06CC();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_8AACC, 0, 0);
}

uint64_t sub_8AACC()
{
  sub_F0AEC();
  *(v0 + 112) = sub_F0ADC();
  v2 = sub_F0A6C();

  return _swift_task_switch(sub_8AB94, v2, v1);
}

uint64_t sub_8AB94()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_55CFC(v1, v2);
  *(v0 + 120) = v3;
  *(v0 + 148) = v4;

  return _swift_task_switch(sub_8AC4C, 0, 0);
}

uint64_t sub_8AC4C(uint64_t a1)
{
  v44 = v1;
  if (*(v1 + 148))
  {
    v2 = *(v1 + 104);
    v3 = *(v1 + 64);
    v4 = *(v1 + 72);
    v5 = *(v1 + 56);
    v6 = Logger.rcs.unsafeMutableAddressor();
    (*(v4 + 16))(v2, v6, v3);

    v7 = sub_F06AC();
    v8 = sub_F0CEC();
    v5, v9, v10, v11, v12, v13, v14, v15;
    if (os_log_type_enabled(v7, v8))
    {
      v16 = *(v1 + 120);
      v42 = *(v1 + 104);
      v17 = *(v1 + 64);
      v18 = *(v1 + 72);
      v20 = *(v1 + 48);
      v19 = *(v1 + 56);
      v21 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_3E850(v20, v19, &v43);
      *(v21 + 12) = 2080;
      *(v1 + 144) = v16;
      type metadata accessor for FZErrorType(0);
      v22 = sub_F083C();
      v24 = v23;
      v25 = sub_3E850(v22, v23, &v43);
      v24, v26, v27, v28, v29, v30, v31, v32;
      *(v21 + 14) = v25;
      _os_log_impl(&dword_0, v7, v8, "Cannot find context to revoke message %s error %s", v21, 0x16u);
      swift_arrayDestroy();

      (*(v18 + 8))(v42, v17);
    }

    else
    {
      v38 = *(v1 + 104);
      v39 = *(v1 + 64);
      v40 = *(v1 + 72);

      (*(v40 + 8))(v38, v39);
    }

    v41 = *(v1 + 8);

    return v41();
  }

  else
  {
    v33 = *(v1 + 120);
    v34 = swift_task_alloc();
    *(v1 + 128) = v34;
    *v34 = v1;
    v34[1] = sub_8AF58;
    v35 = *(v1 + 32);
    v36 = *(v1 + 40);

    return sub_38E2C(v36, v35, v33);
  }
}

uint64_t sub_8AF58(uint64_t a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 136) = a1;

  sub_3FA88(v2, 0);

  return _swift_task_switch(sub_8B0A8, 0, 0);
}

uint64_t sub_8B0A8(uint64_t a1)
{
  v115 = v1;
  v2 = *(v1 + 136);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = *(v1 + 56);
  if (v2)
  {
    v6 = *(v1 + 96);
    v7 = *(v1 + 48);
    sub_37310(0, &qword_128A50, CTLazuliMessageRevokeData_ptr);

    v108 = v2;
    v8 = CTLazuliMessageRevokeData.init(messageGUID:destination:)(v7, v5, v108);
    v9 = [objc_allocWithZone(NSUUID) init];
    v10 = [v9 UUIDString];

    v11 = sub_F07EC();
    v109 = v12;
    v111 = v11;

    v13 = Logger.rcs.unsafeMutableAddressor();
    v105 = *(v3 + 16);
    v107 = v13;
    v105(v6);

    v14 = sub_F06AC();
    v15 = sub_F0CCC();
    v5, v16, v17, v18, v19, v20, v21, v22;
    v23 = os_log_type_enabled(v14, v15);
    v24 = *(v1 + 96);
    v25 = *(v1 + 64);
    v26 = *(v1 + 72);
    if (v23)
    {
      v103 = *(v1 + 96);
      v27 = v8;
      v29 = *(v1 + 48);
      v28 = *(v1 + 56);
      v30 = swift_slowAlloc();
      v102 = v25;
      v31 = swift_slowAlloc();
      v114 = v31;
      *v30 = 136315138;
      v32 = v29;
      v8 = v27;
      *(v30 + 4) = sub_3E850(v32, v28, &v114);
      _os_log_impl(&dword_0, v14, v15, "Revoking message %s", v30, 0xCu);
      sub_1EDC(v31);

      v33 = *(v26 + 8);
      v33(v103, v102);
    }

    else
    {

      v33 = *(v26 + 8);
      v33(v24, v25);
    }

    v56 = *(v1 + 120);
    v57 = *(*(*(v1 + 24) + OBJC_IVAR___RCSServiceSession_state) + 16);
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v58 = v57;
    v59 = CTLazuliMessageID.init(uuid:)(v111, v109);
    *(v1 + 16) = 0;
    LODWORD(v56) = [v58 revokeMessage:v56 withRevokeData:v8 withMessageID:v59 withError:v1 + 16];

    v60 = *(v1 + 16);
    if (v56)
    {
      v61 = *(v1 + 120);
      v62 = v60;

      sub_3FA88(v61, 0);
    }

    else
    {
      v112 = v8;
      v63 = *(v1 + 80);
      v65 = *(v1 + 56);
      v64 = *(v1 + 64);
      v66 = v60;
      sub_F015C();

      swift_willThrow();
      (v105)(v63, v107, v64);

      swift_errorRetain();
      v67 = sub_F06AC();
      v68 = sub_F0CEC();
      v65, v69, v70, v71, v72, v73, v74, v75;

      v76 = os_log_type_enabled(v67, v68);
      v77 = *(v1 + 120);
      v78 = *(v1 + 80);
      v79 = *(v1 + 64);
      if (v76)
      {
        v110 = *(v1 + 80);
        v81 = *(v1 + 48);
        v80 = *(v1 + 56);
        v106 = v33;
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v104 = v79;
        v84 = swift_slowAlloc();
        v114 = v84;
        *v82 = 136315394;
        *(v82 + 4) = sub_3E850(v81, v80, &v114);
        *(v82 + 12) = 2112;
        swift_errorRetain();
        v85 = _swift_stdlib_bridgeErrorToNSError();
        *(v82 + 14) = v85;
        *v83 = v85;
        _os_log_impl(&dword_0, v67, v68, "Failed to revoke message %s, %@", v82, 0x16u);
        sub_372B0(v83, &qword_127AF0, &qword_F28E0);

        sub_1EDC(v84);

        sub_3FA88(v77, 0);

        v106(v110, v104);
      }

      else
      {

        sub_3FA88(v77, 0);

        v33(v78, v79);
      }
    }
  }

  else
  {
    v34 = *(v1 + 88);
    v35 = *(v1 + 32);
    v36 = Logger.rcs.unsafeMutableAddressor();
    (*(v3 + 16))(v34, v36, v4);

    v37 = v35;
    v38 = sub_F06AC();
    v39 = sub_F0CEC();
    v5, v40, v41, v42, v43, v44, v45, v46;

    if (os_log_type_enabled(v38, v39))
    {
      v48 = *(v1 + 48);
      v47 = *(v1 + 56);
      v49 = *(v1 + 32);
      v50 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *v50 = 136315394;
      *(v50 + 4) = sub_3E850(v48, v47, &v114);
      *(v50 + 12) = 2080;
      v51 = [v49 guid];
      if (v51)
      {
        v52 = v51;
        v53 = sub_F07EC();
        v55 = v54;
      }

      else
      {
        v55 = 0xEC00000064697567;
        v53 = 0x2D6E776F6E6B6E75;
      }

      v89 = *(v1 + 120);
      v113 = *(v1 + 88);
      v91 = *(v1 + 64);
      v90 = *(v1 + 72);
      v92 = sub_3E850(v53, v55, &v114);
      v55, v93, v94, v95, v96, v97, v98, v99;
      *(v50 + 14) = v92;
      _os_log_impl(&dword_0, v38, v39, "Couldn't not determine destination to revoke message %s from chat %s", v50, 0x16u);
      swift_arrayDestroy();

      sub_3FA88(v89, 0);

      (*(v90 + 8))(v113, v91);
    }

    else
    {
      v86 = *(v1 + 88);
      v87 = *(v1 + 64);
      v88 = *(v1 + 72);
      sub_3FA88(*(v1 + 120), 0);

      (*(v88 + 8))(v86, v87);
    }
  }

  v100 = *(v1 + 8);

  return v100();
}

void RCSServiceSession.didDeleteChatGUID(_:chatIdentifier:style:groupID:originalGroupID:properties:lastAddressedLocalHandle:lastAddressedSIMID:)(uint64_t a1, RCSServiceSession *a2, uint64_t a3, void *a4, int a5, unint64_t a6, RCSServiceSession *a7, uint64_t a8, RCSServiceSession *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v247 = a2;
  LODWORD(v242) = a5;
  v20 = a5;
  v21 = sub_F06CC();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v225 = &v224 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v228 = &v224 - v25;
  __chkstk_darwin(v26);
  v28 = &v224 - v27;
  __chkstk_darwin(v29);
  v31 = &v224 - v30;
  v235 = v32;
  v236 = v28;
  if (v20 != 43)
  {
    v41 = [objc_opt_self() sharedInstance];
    v42 = [v41 ctSubscriptionInfo];

    if (!v42)
    {
      return;
    }

    if (a14)
    {
      v43 = sub_F07BC();
      if (a12)
      {
LABEL_7:
        v44 = sub_F07BC();
LABEL_24:
        v95 = [v42 __im_subscriptionContextForForSimID:v43 phoneNumber:v44];

        if (!v95)
        {
          return;
        }

        v239 = a1;
        v96 = sub_F07BC();
        IsPhoneNumber = IMStringIsPhoneNumber();

        v98 = sub_53E04(_swiftEmptyArrayStorage);
        if (IsPhoneNumber)
        {
          v99._countAndFlagsBits = 7103860;
          v99._object = 0xE300000000000000;
          v100._countAndFlagsBits = a3;
          v100._object = a4;
          RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v250, v99, v100, v98, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
          __chkstk_darwin(v101);
          *(&v224 - 2) = v95;
          RCSHandle.canonicalizedHandle(for:)(RCSPersistentMenu.menu.getter, &v251);
          sub_3CAB8(&v250);
        }

        else
        {
          v102._countAndFlagsBits = 7367027;
          v102._object = 0xE300000000000000;
          v103._countAndFlagsBits = a3;
          v103._object = a4;
          RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v251, v102, v103, v98, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
        }

        v37 = RCSHandle.rawValue.getter();
        v38 = v104;

        sub_3CAB8(&v251);
        v40 = v245;
        v39 = v235;
        goto LABEL_29;
      }
    }

    else
    {
      v43 = 0;
      if (a12)
      {
        goto LABEL_7;
      }
    }

    v44 = 0;
    goto LABEL_24;
  }

  v246 = a6;
  v239 = a1;
  v33 = type metadata accessor for IMDChatRCSGroupSnapshot();
  v34 = swift_allocObject();
  v34[3] = 0;
  v34[4] = 0;
  v34[2] = 0;
  swift_beginAccess();
  v34[2] = a8;
  v34[3] = a9;
  swift_beginAccess();
  v34[4] = a10;
  v251.id._object = v33;
  v251.attributes._rawValue = &protocol witness table for IMDChatRCSGroupSnapshot;
  v251.scheme._countAndFlagsBits = v34;

  v35 = IMDChatRCSGroupIdentity.uri.getter();
  if (!v36)
  {
    v45 = Logger.rcs.unsafeMutableAddressor();
    v46 = v22;
    v47 = *(v22 + 16);
    v48 = v235;
    v47(v31, v45, v235);

    v49 = v247;

    v50 = sub_F06AC();
    v51 = sub_F0CCC();
    a9, v52, v53, v54, v55, v56, v57, v58;
    a7, v59, v60, v61, v62, v63, v64, v65;
    v49, v66, v67, v68, v69, v70, v71, v72;
    if (os_log_type_enabled(v50, v51))
    {
      v73 = swift_slowAlloc();
      v245 = v46;
      v74 = v73;
      v244 = swift_slowAlloc();
      v252[0] = v244;
      *v74 = 136315650;
      *(v74 + 4) = sub_3E850(v239, v49, v252);
      *(v74 + 12) = 2080;
      if (a7)
      {
        v75 = v246;
      }

      else
      {
        v75 = 0x3E6C696E3CLL;
      }

      if (a7)
      {
        v76 = a7;
      }

      else
      {
        v76 = 0xE500000000000000;
      }

      v77 = sub_3E850(v75, v76, v252);
      v76, v78, v79, v80, v81, v82, v83, v84;
      *(v74 + 14) = v77;
      *(v74 + 22) = 2080;
      if (a9)
      {
        v85 = a8;
      }

      else
      {
        v85 = 0x3E6C696E3CLL;
      }

      if (a9)
      {
        v86 = a9;
      }

      else
      {
        v86 = 0xE500000000000000;
      }

      v87 = sub_3E850(v85, v86, v252);
      v86, v88, v89, v90, v91, v92, v93, v94;
      *(v74 + 24) = v87;
      _os_log_impl(&dword_0, v50, v51, "No group URI present when attempting to delete chat GUID %s for groupID %s originalGroupID %s", v74, 0x20u);
      swift_arrayDestroy();

      (*(v245 + 8))(v31, v235);
    }

    else
    {

      (*(v46 + 8))(v31, v48);
    }

    sub_39BC4(&v251);
    return;
  }

  v37 = v35;
  v38 = v36;
  sub_39BC4(&v251);

  v39 = v235;
  v40 = v245;
LABEL_29:
  v105 = sub_73B04();
  v114 = v105;
  if (v105 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *(&dword_10 + (v105 & 0xFFFFFFFFFFFFFF8)); i; i = sub_F10DC())
  {
    v116 = 0;
    v234 = OBJC_IVAR___RCSServiceSession_state;
    v246 = v114 & 0xC000000000000001;
    v230 = v114 & 0xFFFFFFFFFFFFFF8;
    v244 = (v22 + 16);
    v243 = (v22 + 8);
    v227 = "ate chat deletion to telephony";
    *&v113 = 136315394;
    v229 = v113;
    v226 = v242;
    *&v113 = 136315650;
    v224 = v113;
    v238 = v37;
    v233 = v114;
    v232 = i;
    v237 = v38;
    while (1)
    {
      if (v246)
      {
        v117 = sub_F0FCC();
      }

      else
      {
        if (v116 >= *(v230 + 16))
        {
          goto LABEL_59;
        }

        v117 = *&v114[2].IMDTelephonyServiceSession_opaque[8 * v116];
      }

      v118 = v117;
      v22 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        break;
      }

      if (sub_8326C(v117))
      {
        v119 = Logger.rcs.unsafeMutableAddressor();
        v120 = *v244;
        v121 = v236;
        v240 = v119;
        v241 = v120;
        (v120)(v236);
        v122 = v247;

        v123 = sub_F06AC();
        v124 = v39;
        v125 = sub_F0CCC();
        v38, v126, v127, v128, v129, v130, v131, v132;
        v122, v133, v134, v135, v136, v137, v138, v139;
        if (os_log_type_enabled(v123, v125))
        {
          v140 = swift_slowAlloc();
          v248 = swift_slowAlloc();
          *v140 = v229;
          *(v140 + 4) = sub_3E850(v239, v247, &v248);
          *(v140 + 12) = 2080;
          v231 = v116 + 1;
          v141 = v118;
          v142 = v121;
          v37 = v238;
          *(v140 + 14) = sub_3E850(v238, v38, &v248);
          _os_log_impl(&dword_0, v123, v125, "Notifying CT about deleted chat GUID %s / URI %s", v140, 0x16u);
          swift_arrayDestroy();

          v40 = v245;

          v143 = v142;
          v118 = v141;
          v22 = v231;
          v144 = v124;
          v242 = *v243;
          v242(v143, v124);
        }

        else
        {

          v144 = v124;
          v242 = *v243;
          v242(v121, v124);
          v37 = v238;
        }

        v145 = *(*(v40 + v234) + 16);
        v146 = sub_F07BC();
        v248 = 0;
        v147 = [v145 deleteChat:v118 chat:v146 withError:&v248];

        if (v147)
        {
          v148 = v248;

          v40 = v245;
          v39 = v144;
LABEL_55:
          v114 = v233;
          i = v232;
          goto LABEL_33;
        }

        v149 = v248;
        v150 = sub_F015C();

        swift_willThrow();
        v151 = [objc_opt_self() sharedInstance];
        if (!v151)
        {
          __break(1u);
        }

        v152 = v151;
        v248 = 0;
        v249 = 0xE000000000000000;
        sub_F0F9C(66);
        v254._object = (v227 | 0x8000000000000000);
        v254._countAndFlagsBits = 0xD00000000000002ALL;
        sub_F08CC(v254);
        v255._countAndFlagsBits = v239;
        v153 = v247;
        v255._object = v247;
        sub_F08CC(v255);
        v256._countAndFlagsBits = 0x20495255202F20;
        v256._object = 0xE700000000000000;
        sub_F08CC(v256);
        v257._countAndFlagsBits = v37;
        v257._object = v38;
        sub_F08CC(v257);
        v258._countAndFlagsBits = 0x656C6574206F7420;
        v258._object = 0xED0000796E6F6870;
        sub_F08CC(v258);
        v154 = v248;
        v155 = v153;
        v156 = v249;
        v157 = sub_F0FBC();
        v159 = v158;
        LOBYTE(v252[0]) = 4;
        v252[1] = v157;
        v252[2] = v158;
        v252[3] = v154;
        v252[4] = v156;
        v252[5] = v150;
        v253 = 0;
        swift_errorRetain();
        sub_94528(v252);
        v156, v160, v161, v162, v163, v164, v165, v166;
        v159, v167, v168, v169, v170, v171, v172, v173;

        if (v226 == 43)
        {
          v174 = v228;
          v175 = v235;
          v241(v228, v240, v235);

          v176 = v237;

          swift_errorRetain();
          v177 = sub_F06AC();
          v37 = sub_F0CEC();
          v176, v178, v179, v180, v181, v182, v183, v184;
          v155, v185, v186, v187, v188, v189, v190, v191;

          if (os_log_type_enabled(v177, v37))
          {
            v192 = swift_slowAlloc();
            v193 = swift_slowAlloc();
            v248 = swift_slowAlloc();
            *v192 = v224;
            *(v192 + 4) = sub_3E850(v239, v247, &v248);
            *(v192 + 12) = 2080;
            *(v192 + 14) = sub_3E850(v238, v237, &v248);
            *(v192 + 22) = 2112;
            swift_errorRetain();
            v194 = _swift_stdlib_bridgeErrorToNSError();
            *(v192 + 24) = v194;
            *v193 = v194;
            _os_log_impl(&dword_0, v177, v37, "Failed to notify CT of deletion for chat %s / %s - future messages in the group may be routed to 1:1s: %@", v192, 0x20u);
            sub_372B0(v193, &qword_127AF0, &qword_F28E0);

            swift_arrayDestroy();
            v195 = v235;

            v39 = v195;

            v196 = v228;
            v197 = v195;
            goto LABEL_51;
          }

          v242(v174, v175);
          v40 = v245;
          v39 = v175;
        }

        else
        {
          v37 = v225;
          v198 = v235;
          v241(v225, v240, v235);

          v199 = v237;

          v200 = sub_F06AC();
          v201 = sub_F0CEC();
          v199, v202, v203, v204, v205, v206, v207, v208;
          v155, v209, v210, v211, v212, v213, v214, v215;
          if (os_log_type_enabled(v200, v201))
          {
            v216 = swift_slowAlloc();
            v248 = swift_slowAlloc();
            *v216 = v229;
            *(v216 + 4) = sub_3E850(v239, v247, &v248);
            *(v216 + 12) = 2080;
            *(v216 + 14) = sub_3E850(v238, v237, &v248);
            _os_log_impl(&dword_0, v200, v201, "Failed to notify CT of deletion for chat %s / %s", v216, 0x16u);
            swift_arrayDestroy();

            v196 = v37;
            v39 = v235;
            v197 = v235;
LABEL_51:
            v242(v196, v197);
            v40 = v245;
          }

          else
          {

            v242(v37, v198);
            v40 = v245;
            v39 = v198;
          }
        }

        v38 = v237;
        goto LABEL_55;
      }

LABEL_33:
      ++v116;
      if (v22 == i)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_61:
  v38, v106, v107, v108, v109, v110, v111, v112;
  v114, v217, v218, v219, v220, v221, v222, v223;
}

id RCSServiceSession.shouldSendReadReceipts(forChat:style:)(uint64_t a1, RCSServiceSession *a2, unsigned __int8 a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v78 - v13;
  __chkstk_darwin(v15);
  v79 = &v78 - v16;
  v80 = a1;
  v17 = sub_F07BC();
  v18 = [v4 chatForChatIdentifier:v17 style:a3 updatingAccount:1];

  if (v18)
  {
    v19 = v9;
    v20 = v18;
    v21 = [v20 chatIdentifier];
    v22 = [v4 _callerIDForChatWithChatIdentifier:v21 chatStyle:objc_msgSend(v20 foundChat:{"style"), v20}];

    v78 = v8;
    if (v22)
    {
      v23 = [v20 lastAddressedLocalHandle];
      v24 = [v20 lastAddressedSIMID];
      v25 = [v4 _sendingDecisionForMessageItem:0 callerID:v22 lastAddressedLocalHandle:v23 lastAddressedSIMID:v24];

      v26 = v20;
      if ((v25 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();

    if (!SimDetailsFromTelephony)
    {
LABEL_12:
      v45 = sub_F07BC();
      v81.receiver = v4;
      v81.super_class = RCSServiceSession;
      v46 = objc_msgSendSuper2(&v81, "shouldSendReadReceiptsForChat:style:", v45, a3);

      return v46;
    }

    v42 = v19;
    v43 = [v4 subscriptionContextForChat:v20];
    if (!v43)
    {
      v50 = Logger.rcs.unsafeMutableAddressor();
      v51 = v78;
      (*(v19 + 16))(v14, v50, v78);

      v52 = sub_F06AC();
      v53 = sub_F0CCC();
      a2, v54, v55, v56, v57, v58, v59, v60;
      if (os_log_type_enabled(v52, v53))
      {
        v61 = swift_slowAlloc();
        v62 = v42;
        v63 = swift_slowAlloc();
        v82 = v63;
        *v61 = 136315138;
        *(v61 + 4) = sub_3E850(v80, a2, &v82);
        _os_log_impl(&dword_0, v52, v53, "Not sending read receipt in chat %s as we can't find the subscription context", v61, 0xCu);
        sub_1EDC(v63);

        (*(v62 + 8))(v14, v51);
      }

      else
      {

        (*(v42 + 8))(v14, v51);
      }

      return 0;
    }

    v26 = v43;
    v44 = sub_403DC(v43);
    v8 = v78;
    if (v44)
    {
LABEL_11:

      goto LABEL_12;
    }

    v64 = Logger.rcs.unsafeMutableAddressor();
    v65 = v79;
    (*(v19 + 16))(v79, v64, v8);

    v66 = sub_F06AC();
    v67 = sub_F0CCC();
    a2, v68, v69, v70, v71, v72, v73, v74;
    if (os_log_type_enabled(v66, v67))
    {
      v75 = v8;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v82 = v77;
      *v76 = 136315138;
      *(v76 + 4) = sub_3E850(v80, a2, &v82);
      _os_log_impl(&dword_0, v66, v67, "Not sending read receipt in chat %s due to carrier policy", v76, 0xCu);
      sub_1EDC(v77);

      (*(v19 + 8))(v65, v75);
      return 0;
    }

    v48 = *(v19 + 8);
    v49 = v65;
    goto LABEL_14;
  }

  v27 = Logger.rcs.unsafeMutableAddressor();
  (*(v9 + 16))(v11, v27, v8);

  v28 = sub_F06AC();
  v29 = sub_F0CCC();
  a2, v30, v31, v32, v33, v34, v35, v36;
  if (!os_log_type_enabled(v28, v29))
  {

    v48 = *(v9 + 8);
    v49 = v11;
LABEL_14:
    v48(v49, v8);
    return 0;
  }

  v37 = v8;
  v38 = swift_slowAlloc();
  v39 = v9;
  v40 = swift_slowAlloc();
  v82 = v40;
  *v38 = 136315138;
  *(v38 + 4) = sub_3E850(v80, a2, &v82);
  _os_log_impl(&dword_0, v28, v29, "Not sending read receipt in chat %s as we can't find the chat", v38, 0xCu);
  sub_1EDC(v40);

  (*(v39 + 8))(v11, v37);
  return 0;
}

void RCSServiceSession.sendReadReceipt(forMessage:toChatID:identifier:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = sub_F07BC();
    if (a5)
    {
LABEL_3:
      v9 = sub_F07BC();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  [v5 sendReadReceiptForMessage:a1 toChatID:v8 identifier:? style:? reflectOnly:?];
}

void sub_8D2EC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  v10 = &v143[-v9];
  sub_8DF58(a2);
  if ((v11 & 1) == 0)
  {
    return;
  }

  sub_55CFC(a2, a1);
  v13 = v12;
  if (v14)
  {
    v15 = Logger.rcs.unsafeMutableAddressor();
    (*(v7 + 16))(v10, v15, v6);
    v16 = v7;
    v17 = a1;
    v18 = a2;
    v19 = sub_F06AC();
    v20 = sub_F0CEC();
    if (!os_log_type_enabled(v19, v20))
    {

      (*(v16 + 8))(v10, v6);
      return;
    }

    v144 = v16;
    v145 = v13;
    v21 = swift_slowAlloc();
    *&v147 = swift_slowAlloc();
    *v21 = 136315650;
    v22 = [v17 guid];

    if (v22)
    {
      v23 = sub_F07EC();
      v25 = v24;

      v26 = sub_3E850(v23, v25, &v147);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v17 = [v18 chatIdentifier];

      if (v17)
      {
        v34 = sub_F07EC();
        v36 = v35;

        v37 = sub_3E850(v34, v36, &v147);
        v36, v38, v39, v40, v41, v42, v43, v44;
        *(v21 + 14) = v37;
        *(v21 + 22) = 1026;
        *(v21 + 24) = v145;
        _os_log_impl(&dword_0, v19, v20, "Couldn't resolve context for sending read receipt for %s to chat %s: %{public}u", v21, 0x1Cu);
        swift_arrayDestroy();

        (*(v144 + 8))(v10, v6);
        return;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);

    __break(1u);

    __break(1u);
    __break(1u);
    goto LABEL_32;
  }

  sub_39908(a2, v12);
  v46 = v45;
  v47 = [a2 style];
  if (v47 == 43)
  {
    v48 = [a1 sender];
    if (!v48)
    {
      v82 = [objc_opt_self() sharedInstance];
      if (!v82)
      {
LABEL_34:
        __break(1u);
        return;
      }

      v83 = v82;
      strcpy(&v147, "message GUID ");
      HIWORD(v147) = -4864;
      v84 = [a1 guid];
      if (v84)
      {
        v85 = v84;
        v86 = sub_F07EC();
        v88 = v87;
      }

      else
      {
        v86 = 0x3E6C696E3CLL;
        v88 = 0xE500000000000000;
      }

      v158._countAndFlagsBits = v86;
      v158._object = v88;
      sub_F08CC(v158);
      v88, v118, v119, v120, v121, v122, v123, v124;
      v125 = v147;
      v126 = sub_F0FBC();
      v128 = v127;
      LOBYTE(v147) = 3;
      *(&v147 + 1) = v126;
      v148 = v127;
      v149 = v125;
      v150 = 0;
      v151 = 0;
      sub_94528(&v147);
      *(&v125 + 1), v129, v130, v131, v132, v133, v134, v135;
      v128, v136, v137, v138, v139, v140, v141, v142;

LABEL_27:

      sub_3FA88(v13, 0);
      return;
    }

    v49 = v48;
    v50 = sub_F07EC();
    v52 = v51;

    v53._countAndFlagsBits = v50;
    v53._object = v52;
    RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v146, v53, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
    if (v61)
    {
      v62 = [objc_opt_self() sharedInstance];
      if (!v62)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v70 = v62;
      v52, v63, v64, v65, v66, v67, v68, v69;
      strcpy(&v147, "message GUID ");
      HIWORD(v147) = -4864;
      v71 = [a1 guid];
      if (v71)
      {
        v72 = v71;
        v73 = sub_F07EC();
        v75 = v74;
      }

      else
      {
        v73 = 0x3E6C696E3CLL;
        v75 = 0xE500000000000000;
      }

      v157._countAndFlagsBits = v73;
      v157._object = v75;
      sub_F08CC(v157);
      v75, v93, v94, v95, v96, v97, v98, v99;
      v100 = v147;
      v101 = sub_F0FBC();
      v103 = v102;
      LOBYTE(v147) = 3;
      *(&v147 + 1) = v101;
      v148 = v102;
      v149 = v100;
      v150 = v61;
      v151 = 0;
      swift_errorRetain();
      sub_94528(&v147);
      *(&v100 + 1), v104, v105, v106, v107, v108, v109, v110;
      v103, v111, v112, v113, v114, v115, v116, v117;

      goto LABEL_27;
    }

    v52, v54, v55, v56, v57, v58, v59, v60;
    v89 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
    __chkstk_darwin(v89);
    *&v143[-16] = v13;
    RCSHandle.canonicalizedHandle(for:)(j___s7CoreRCS17RCSPersistentMenuC4menuSo012IMPersistentD0CSgvg, &v147);
    sub_3CAB8(&v146);
    v90 = CTLazuliDestination.init(handle:countryCode:)(&v147, variable initialization expression of RCSHandle.alternateHandle, 0);
    v152[3] = sub_37310(0, &qword_127EF0, IMDChat_ptr);
    v152[4] = &protocol witness table for IMDChat;
    v152[0] = a2;
    sub_85608(v152, v153);
    v91 = a2;
    v76 = v90;
    v77 = sub_9232C(v153);
    sub_39BC4(v152);
    v92 = v77;
  }

  else
  {
    v76 = v46;
    v77 = 0;
  }

  v78 = sub_AC78C(a1);
  v79 = [a1 encrypted];
  v153[0] = 2;
  v153[1] = v78;
  v153[2] = v76;
  v154 = v79;
  v155 = v77;
  sub_A0894(v13, v153);
  v80 = [a1 guid];
  if (!v80)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v81 = v80;
  [v3 didSendMessageReadReceiptForMessageID:v80];

  sub_3FA88(v13, 0);
}

void sub_8DF58(void *a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42[0] = v42 - v7;
  v8 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v42 - v10;
  if (qword_127A50 != -1)
  {
    swift_once();
  }

  v12 = sub_3C96C(v8, qword_127CE8);
  v13 = *(v9 + 16);
  v13(v11, v12, v8);
  sub_F044C();
  v14 = *(v9 + 8);
  v14(v11, v8);
  if (v45 == 1)
  {
    if ([a1 style] == 45)
    {
      goto LABEL_8;
    }

    if (qword_127A00 != -1)
    {
      swift_once();
    }

    v15 = sub_3C96C(v8, qword_127BF8);
    v13(v11, v15, v8);
    sub_F044C();
    v14(v11, v8);
    if (v44 == 1)
    {
LABEL_8:
      v16 = [a1 chatIdentifier];
      if (v16)
      {
        v17 = v16;
        v18 = [a1 style];
        [v42[1] shouldSendReadReceiptsForChat:v17 style:v18];

        return;
      }

      __break(1u);
      goto LABEL_19;
    }

    v23 = Logger.rcs.unsafeMutableAddressor();
    v24 = v42[0];
    (*(v3 + 16))(v42[0], v23, v2);
    v25 = a1;
    v26 = sub_F06AC();
    v27 = sub_F0CEC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v29;
      *v28 = 136315138;
      v30 = [v25 guid];

      if (!v30)
      {
LABEL_19:
        __break(1u);
        return;
      }

      v31 = sub_F07EC();
      v33 = v32;

      v34 = sub_3E850(v31, v33, &v43);
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(v28 + 4) = v34;
      _os_log_impl(&dword_0, v26, v27, "Not sending read receipt to group chat %s", v28, 0xCu);
      sub_1EDC(v29);
    }

    else
    {
    }

    (*(v3 + 8))(v24, v2);
    return;
  }

  v19 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v19, v2);
  v20 = sub_F06AC();
  v21 = sub_F0CCC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Not sending read disposition notification due to override", v22, 2u);
  }

  (*(v3 + 8))(v5, v2);
}

id sub_8E448(void *a1)
{
  v3 = [a1 shouldAttemptLocalRCS];
  if (!v3)
  {
    v6 = [a1 chatIdentifier];
    if (v6)
    {
      v7 = v6;
      v8 = [v1 chatForChatIdentifier:v6 style:{objc_msgSend(a1, "chatStyle")}];

      if (v8)
      {
        v9 = v8;
        v10 = [v9 chatIdentifier];
        v11 = [v1 _callerIDForChatWithChatIdentifier:v10 chatStyle:objc_msgSend(v9 foundChat:{"style"), v9}];

        if (v11)
        {
          v12 = [v9 lastAddressedLocalHandle];
          v13 = [v9 lastAddressedSIMID];
          v14 = [v1 _sendingDecisionForMessageItem:0 callerID:v11 lastAddressedLocalHandle:v12 lastAddressedSIMID:v13];

          if ((v14 & 2) != 0)
          {

            SimDetailsFromTelephony = 0;
LABEL_11:
            v4 = sub_F0A5C();
            [a1 setShouldAttemptLocalRCS:v4];
            goto LABEL_12;
          }
        }

        else
        {
        }

        SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();

        goto LABEL_11;
      }
    }

    SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();
    goto LABEL_11;
  }

  v4 = v3;
  SimDetailsFromTelephony = [v3 BOOLValue];
LABEL_12:

  return SimDetailsFromTelephony;
}

uint64_t sub_8E680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v14;
  v8[10] = v15;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = sub_F06CC();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  sub_F0AEC();
  v8[15] = sub_F0ADC();
  v11 = sub_F0A6C();
  v8[16] = v11;
  v8[17] = v10;

  return _swift_task_switch(sub_8E794, v11, v10);
}

void sub_8E794()
{
  v1 = *(*(v0[4] + OBJC_IVAR___RCSServiceSession_state) + 40);
  v0[18] = v1;
  if (v1)
  {
    v2 = v0[8];
    v0[2] = v0[5];
    v0[3] = v2;

    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_8E87C;
    v4 = v0[6];
    v5 = v0[7];

    RCSGroupController.renameGroup(chat:to:subscriptionContext:)((v0 + 2), v4, v5, (v0 + 3));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_8E87C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_8EC00;
  }

  else
  {
    v5 = sub_8E9B4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_8E9B4()
{
  v43 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[7];
  v5 = v0[5];

  v6 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v6, v2);

  v7 = v5;
  v8 = sub_F06AC();
  v9 = sub_F0CCC();

  v4, v10, v11, v12, v13, v14, v15, v16;
  v17 = os_log_type_enabled(v8, v9);
  v18 = v0[14];
  v20 = v0[11];
  v19 = v0[12];
  if (v17)
  {
    v40 = v0[11];
    v41 = v0[14];
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];
    v39 = v9;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v42 = v26;
    *v24 = 138412546;
    *(v24 + 4) = v23;
    *v25 = v23;
    *(v24 + 12) = 2080;
    if (v21)
    {
      v27 = v4;
    }

    else
    {
      v22 = 0x3E6C696E3CLL;
      v27 = 0xE500000000000000;
    }

    v28 = v23;

    v29 = sub_3E850(v22, v27, &v42);
    v27, v30, v31, v32, v33, v34, v35, v36;
    *(v24 + 14) = v29;
    _os_log_impl(&dword_0, v8, v39, "Updated group name for %@ to %s", v24, 0x16u);
    sub_372B0(v25, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v26);

    (*(v19 + 8))(v41, v40);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
  }

  v37 = v0[1];

  return v37();
}

void sub_8EC00(uint64_t a1)
{
  v75 = v1;
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  v4 = *(v1 + 88);
  v5 = *(v1 + 56);
  v6 = *(v1 + 40);
  v7 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v7, v4);

  v8 = v6;
  swift_errorRetain();
  v9 = sub_F06AC();
  v10 = sub_F0CEC();
  if (os_log_type_enabled(v9, v10))
  {
    log = v9;
    v11 = *(v1 + 40);
    v12 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v74 = v72;
    *v12 = 136315650;
    v13 = [v11 chatIdentifier];
    if (!v13)
    {
LABEL_16:
      v60 = *(v1 + 40);

      v5, v61, v62, v63, v64, v65, v66, v67;

      __break(1u);
      return;
    }

    v14 = v13;
    v68 = *(v1 + 96);
    v69 = *(v1 + 88);
    v70 = *(v1 + 104);
    v15 = *(v1 + 48);
    v16 = *(v1 + 56);
    v17 = *(v1 + 40);

    v5, v18, v19, v20, v21, v22, v23, v24;

    v25 = sub_F07EC();
    v27 = v26;

    v28 = sub_3E850(v25, v27, &v74);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v12 + 4) = v28;
    *(v12 + 12) = 2080;
    if (v16)
    {
      v36 = v15;
    }

    else
    {
      v36 = 0x3E6C696E3CLL;
    }

    if (v16)
    {
      v37 = v5;
    }

    else
    {
      v37 = 0xE500000000000000;
    }

    v38 = sub_3E850(v36, v37, &v74);
    v37, v39, v40, v41, v42, v43, v44, v45;
    *(v12 + 14) = v38;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v46;
    *v71 = v46;
    _os_log_impl(&dword_0, log, v10, "Failed to update group name for %s to %s: %@", v12, 0x20u);
    sub_372B0(v71, &qword_127AF0, &qword_F28E0);

    v5 = v72;
    swift_arrayDestroy();

    (*(v68 + 8))(v70, v69);
  }

  else
  {
    v47 = *(v1 + 96);
    v48 = *(v1 + 104);
    v49 = *(v1 + 88);

    v5, v50, v51, v52, v53, v54, v55, v56;

    (*(v47 + 8))(v48, v49);
  }

  if (!*(v1 + 80))
  {
    __break(1u);
    goto LABEL_16;
  }

  v57 = *(v1 + 32);

  v58 = sub_F07BC();
  [v57 markItemFailedWithGUID:v58 errorCode:4];

  v59 = *(v1 + 8);

  v59();
}

void RCSServiceSession.updateDisplayName(_:fromDisplayName:fromID:forChatID:identifier:style:messageID:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, RCSServiceSession *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  v175 = a5;
  v169 = a4;
  v165 = a3;
  v176 = a2;
  v174 = a1;
  v17 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v17 - 8);
  v19 = &v160 - v18;
  v164 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v162 = &v160 - v20;
  v168 = sub_F06CC();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v22 = &v160 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v160 - v24;
  __chkstk_darwin(v26);
  v161 = &v160 - v27;
  v171 = a9;
  v173 = a10;
  v28 = sub_F07BC();
  v179 = v13;
  v29 = [v13 chatForChatIdentifier:v28 style:a11 updatingAccount:1];

  v172 = a8;
  v170 = a7;
  if (!v29)
  {
    v30 = [objc_opt_self() sharedInstance];
    v31 = sub_F07BC();
    v29 = [v30 existingChatWithGUID:v31];

    if (!v29)
    {
      v78 = Logger.rcs.unsafeMutableAddressor();
      v79 = v167;
      v80 = v168;
      (*(v167 + 16))(v22, v78, v168);
      v81 = sub_F06AC();
      v82 = sub_F0CEC();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_0, v81, v82, "Received request to update display name but could not find a chat", v83, 2u);
      }

      (*(v79 + 8))(v22, v80);
      return;
    }
  }

  v166 = a11;
  v160 = v19;
  v178 = a13;
  v177 = a12;
  v32 = a6;

  v33 = v29;
  v34 = [v33 chatIdentifier];
  v35 = [v33 style];
  v36 = v179;
  v37 = [v179 _callerIDForChatWithChatIdentifier:v34 chatStyle:v35 foundChat:v33];

  if (!v37)
  {
    v40 = v36;

LABEL_7:
    v43 = v32;
    if (!IMSharedHelperRetrieveSimDetailsFromTelephony())
    {
      v42 = 0;
      goto LABEL_15;
    }

    if (v32)
    {
      v44 = [objc_opt_self() sharedInstance];
      v45 = [v44 ctSubscriptionInfo];

      v46 = v168;
      if (!v45 || (v47 = sub_F07BC(), v42 = [v45 __im_subscriptionContextForPhoneNumber:v47], v45, v47, !v42))
      {

        v48 = Logger.rcs.unsafeMutableAddressor();
        v49 = v167;
        v50 = v161;
        (*(v167 + 16))(v161, v48, v46);

        v51 = sub_F06AC();
        v52 = sub_F0CEC();
        v43, v53, v54, v55, v56, v57, v58, v59;
        if (os_log_type_enabled(v51, v52))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *&v184 = v61;
          *v60 = 136315138;
          *(v60 + 4) = sub_3E850(v175, v43, &v184);
          _os_log_impl(&dword_0, v51, v52, "Couldn't find a subscription for phone number %s, failing display name change", v60, 0xCu);
          sub_1EDC(v61);
        }

        (*(v49 + 8))(v50, v46);
        v62 = sub_F07BC();
        [v40 markItemFailedWithGUID:v62 errorCode:4];
        v43, v63, v64, v65, v66, v67, v68, v69;

        return;
      }

      goto LABEL_40;
    }

    v99 = [v40 subscriptionContextForChat:v33];
    v100 = v168;
    if (v99)
    {
      v42 = v99;
      if (sub_8326C(v99))
      {
LABEL_40:
        v101 = [v42 phoneNumber];
        if (v101)
        {
          v102 = v101;
          v103 = sub_F07EC();
          v105 = v104;

          v106 = sub_53E04(_swiftEmptyArrayStorage);
          v107._countAndFlagsBits = 7103860;
          v107._object = 0xE300000000000000;
          v108._countAndFlagsBits = v103;
          v108._object = v105;
          RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v183, v107, v108, v106, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
          __chkstk_darwin(v109);
          RCSHandle.canonicalizedHandle(for:)(sub_54C44, &v184);
          sub_3CAB8(&v183);
          v110 = v186;
          v175 = v185;

          sub_3CAB8(&v184);
          v43, v111, v112, v113, v114, v115, v116, v117;
          v43 = v110;
        }

        goto LABEL_15;
      }
    }

    v152 = Logger.rcs.unsafeMutableAddressor();
    (*(v167 + 16))(v25, v152, v100);
    v153 = v33;
    v154 = sub_F06AC();
    v155 = sub_F0CEC();

    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      *v156 = 138412290;
      *(v156 + 4) = v153;
      *v157 = v29;
      v158 = v153;
      _os_log_impl(&dword_0, v154, v155, "Couldn't find a subscription for chat %@, failing display name change", v156, 0xCu);
      sub_372B0(v157, &qword_127AF0, &qword_F28E0);
    }

    (*(v167 + 8))(v25, v100);
    v159 = sub_F07BC();
    [v40 markItemFailedWithGUID:v159 errorCode:4];

    return;
  }

  v38 = [v33 lastAddressedLocalHandle];
  v39 = [v33 lastAddressedSIMID];
  v40 = v36;
  v41 = [v36 _sendingDecisionForMessageItem:0 callerID:v37 lastAddressedLocalHandle:v38 lastAddressedSIMID:v39];

  if ((v41 & 2) == 0)
  {
    goto LABEL_7;
  }

  v42 = 0;
  v43 = v32;
LABEL_15:
  v70 = v176;
  if ([v33 style] == 45)
  {

    if (v70)
    {
      v71 = sub_F07BC();
    }

    else
    {
      v71 = 0;
    }

    if (v169)
    {
      v84 = sub_F07BC();
      if (v43)
      {
LABEL_27:
        v85 = sub_F07BC();
LABEL_37:
        v90 = sub_F07BC();
        v89 = sub_F07BC();
        v91 = sub_F07BC();
        v180.receiver = v179;
        v180.super_class = RCSServiceSession;
        objc_msgSendSuper2(&v180, "updateDisplayName:fromDisplayName:fromID:forChatID:identifier:style:messageID:", v71, v84, v85, v90, v89, v166, v91);
        v43, v92, v93, v94, v95, v96, v97, v98;

LABEL_45:
        return;
      }
    }

    else
    {
      v84 = 0;
      if (v43)
      {
        goto LABEL_27;
      }
    }

    v85 = 0;
    goto LABEL_37;
  }

  v72 = v33;
  v73 = [v72 chatIdentifier];
  v74 = [v40 _callerIDForChatWithChatIdentifier:v73 chatStyle:objc_msgSend(v72 foundChat:{"style"), v72}];

  if (v74)
  {
    v75 = [v72 lastAddressedLocalHandle];
    v76 = [v72 lastAddressedSIMID];
    v77 = [v40 _sendingDecisionForMessageItem:0 callerID:v74 lastAddressedLocalHandle:v75 lastAddressedSIMID:v76];

    if ((v77 & 2) != 0)
    {

      goto LABEL_32;
    }
  }

  else
  {
  }

  SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();

  if ((SimDetailsFromTelephony & 1) == 0)
  {
LABEL_32:
    if (v70)
    {
      v88 = sub_F07BC();
      if (v43)
      {
LABEL_34:
        v89 = sub_F07BC();
LABEL_44:
        v91 = sub_F07BC();
        [v40 relayDisplayNameChange:v88 forChat:v72 fromID:v89 messageID:v91 didOccurLocally:0];
        v43, v118, v119, v120, v121, v122, v123, v124;

        goto LABEL_45;
      }
    }

    else
    {
      v88 = 0;
      if (v43)
      {
        goto LABEL_34;
      }
    }

    v89 = 0;
    goto LABEL_44;
  }

  if (v70)
  {
    v87 = sub_F07BC();
  }

  else
  {
    v87 = 0;
  }

  if (v169)
  {
    v125 = sub_F07BC();
  }

  else
  {
    v125 = 0;
  }

  v176 = v42;
  if (v43)
  {
    v126 = sub_F07BC();
  }

  else
  {
    v126 = 0;
  }

  v127 = sub_F07BC();
  v128 = sub_F07BC();
  v129 = sub_F07BC();
  v182.receiver = v40;
  v182.super_class = RCSServiceSession;
  objc_msgSendSuper2(&v182, "updateDisplayName:fromDisplayName:fromID:forChatID:identifier:style:messageID:", v87, v125, v126, v127, v128, v166, v129);

  if (qword_127A88 != -1)
  {
    swift_once();
  }

  v130 = v164;
  v131 = sub_3C96C(v164, qword_127D90);
  v132 = v163;
  v133 = v162;
  (*(v163 + 16))(v162, v131, v130);
  sub_F044C();
  (*(v132 + 8))(v133, v130);
  if (v181)
  {
    v134 = sub_F07BC();
    [v40 markItemFailedWithGUID:v134 errorCode:4];
  }

  else
  {
    v142 = sub_F0B1C();
    v143 = v160;
    (*(*(v142 - 8) + 56))(v160, 1, 1, v142);
    sub_F0AEC();
    v144 = v176;
    v145 = v176;
    v146 = v178;

    v147 = v72;
    v148 = v40;

    v149 = sub_F0ADC();
    v150 = swift_allocObject();
    v150[2] = v149;
    v150[3] = &protocol witness table for MainActor;
    v150[4] = v148;
    v150[5] = v147;
    v150[6] = v174;
    v150[7] = v70;
    v151 = v177;
    v150[8] = v144;
    v150[9] = v151;
    v150[10] = v146;
    sub_3CC0C(0, 0, v143, &unk_F3C08, v150);
  }

  v43, v135, v136, v137, v138, v139, v140, v141;
}

void RCSServiceSession.sendGroupPhotoUpdate(_:toChatID:identifier:style:account:isPhotoRefresh:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, char a10)
{
  v21 = a7;
  v11 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v20 - v13;
  if (qword_127A78 != -1)
  {
    swift_once();
  }

  v15 = sub_3C96C(v11, qword_127D60);
  (*(v12 + 16))(v14, v15, v11);
  sub_F044C();
  (*(v12 + 8))(v14, v11);
  if ((v23 & 1) == 0)
  {
    if (a2)
    {
      v16 = sub_F07BC();
    }

    else
    {
      v16 = 0;
    }

    v17 = sub_F07BC();
    v18 = sub_F07BC();
    v19 = sub_F07BC();
    v22.receiver = v20[1];
    v22.super_class = RCSServiceSession;
    objc_msgSendSuper2(&v22, "sendGroupPhotoUpdate:toChatID:identifier:style:account:isPhotoRefresh:", v16, v17, v18, v21, v19, a10 & 1);
  }
}

void RCSServiceSession.groupID(for:)(void *a1)
{
  v3 = sub_F06CC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 chatIdentifier];
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v1 chatForChatIdentifier:v8 style:objc_msgSend(a1 updatingAccount:{"style"), 1}];

  if (!v10)
  {
    v40.receiver = v1;
    v40.super_class = RCSServiceSession;
    v32 = objc_msgSendSuper2(&v40, "groupIDForChat:", a1);
    sub_F07EC();

    return;
  }

  v11 = [objc_opt_self() sharedFeatureFlags];
  v12 = [v11 isMissingMessagesEnabled];

  if (!v12)
  {
    v13 = [v10 originalGroupID];
    if (v13)
    {
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = [v10 latestIdentifierForDomain:IMChatLookupDomainRCSConversationID];
  if (v13)
  {
LABEL_10:
    v33 = v13;
    sub_F07EC();

    return;
  }

  v14 = v1;
  v15 = Logger.rcs.unsafeMutableAddressor();
  (*(v4 + 16))(v7, v15, v3);
  v16 = v10;
  v17 = sub_F06AC();
  v18 = sub_F0CEC();
  if (!os_log_type_enabled(v17, v18))
  {

    (*(v4 + 8))(v7, v3);
    goto LABEL_12;
  }

  v19 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v38 = v36;
  *v19 = 136315138;
  v20 = [v16 chatIdentifier];

  v37 = v14;
  if (v20)
  {
    v21 = sub_F07EC();
    v23 = v22;

    v24 = sub_3E850(v21, v23, &v38);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v19 + 4) = v24;
    _os_log_impl(&dword_0, v17, v18, "Could not find latest RCS conversation ID for chat %s!", v19, 0xCu);
    sub_1EDC(v36);

    (*(v4 + 8))(v7, v3);
    v14 = v37;
LABEL_12:
    v39.receiver = v14;
    v39.super_class = RCSServiceSession;
    v34 = objc_msgSendSuper2(&v39, "groupIDForChat:", v16);
    sub_F07EC();

    return;
  }

LABEL_15:
  __break(1u);
}

void RCSServiceSession.allowed(toSendMessage:to:)(void *a1, void *a2)
{
  v5 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v115 = &v109 - v7;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v109 - v13;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v109 - v17;
  if ([a1 isFinished])
  {
    goto LABEL_2;
  }

  v109 = v6;
  v110 = v5;
  v111 = v14;
  v112 = a2;
  v113 = v9;
  v114 = v8;
  v19 = a2;
  v20 = [v19 chatIdentifier];
  v21 = [v2 _callerIDForChatWithChatIdentifier:v20 chatStyle:objc_msgSend(v19 foundChat:{"style"), v19}];

  if (v21)
  {
    v22 = [v19 lastAddressedLocalHandle];
    v23 = v11;
    v24 = [v19 lastAddressedSIMID];
    v25 = [v2 _sendingDecisionForMessageItem:0 callerID:v21 lastAddressedLocalHandle:v22 lastAddressedSIMID:v24];

    v11 = v23;
    if ((v25 & 2) != 0 || !IMSharedHelperRetrieveSimDetailsFromTelephony())
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!IMSharedHelperRetrieveSimDetailsFromTelephony())
    {
      goto LABEL_10;
    }
  }

  v26 = [v2 subscriptionContextForChat:v19];
  if (!v26 || (v27 = v26, v28 = sub_4019C(v26, [v19 style]), v27, (v28 & 1) == 0))
  {
    v32 = Logger.rcs.unsafeMutableAddressor();
    v34 = v113;
    v33 = v114;
    (*(v113 + 16))(v18, v32, v114);
    v35 = a1;
    v36 = sub_F06AC();
    v37 = sub_F0CCC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v119[0] = v39;
      *v38 = 136315138;
      v40 = [v35 guid];

      if (!v40)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v41 = sub_F07EC();
      v43 = v42;

      v44 = sub_3E850(v41, v43, v119);
      v43, v45, v46, v47, v48, v49, v50, v51;
      *(v38 + 4) = v44;
      _os_log_impl(&dword_0, v36, v37, "Not sending typing indicator message %s due to carrier policy", v38, 0xCu);
      sub_1EDC(v39);
    }

    else
    {
    }

    v107 = *(v34 + 8);
    v108 = v18;
    goto LABEL_39;
  }

LABEL_10:
  if ([v19 style] != 43)
  {
    goto LABEL_27;
  }

  v29 = [objc_opt_self() sharedInstanceForBagType:1];
  v30 = sub_F07BC();
  v31 = [v29 objectForKey:v30];

  if (v31)
  {
    sub_F0E6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v117 = 0u;
    v118 = 0u;
  }

  v53 = v110;
  v52 = v111;
  v119[0] = v117;
  v119[1] = v118;
  if (!*(&v118 + 1))
  {
    sub_372B0(v119, &unk_127FB0, &qword_F2F40);
    goto LABEL_21;
  }

  sub_37310(0, &qword_128050, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v55 = 0;
    goto LABEL_22;
  }

  v54 = v116;
  v55 = [v116 BOOLValue];

LABEL_22:
  v56 = [objc_opt_self() sharedFeatureFlags];
  v57 = [v56 isGroupTypingIndicatorsEnabled];

  if (!v57)
  {
    goto LABEL_33;
  }

  v58 = v2;
  if (qword_127A08 != -1)
  {
    swift_once();
  }

  v59 = sub_3C96C(v53, qword_127C10);
  v60 = v109;
  v61 = v115;
  (*(v109 + 16))(v115, v59, v53);
  sub_F044C();
  (*(v60 + 8))(v61, v53);
  if (((LOBYTE(v119[0]) | v55) & 1) == 0)
  {
LABEL_33:
    v87 = v29;
    v88 = Logger.rcs.unsafeMutableAddressor();
    v89 = v113;
    v33 = v114;
    (*(v113 + 16))(v52, v88, v114);
    v90 = a1;
    v91 = sub_F06AC();
    v92 = sub_F0CCC();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *&v119[0] = v94;
      *v93 = 136315138;
      v95 = [v90 guid];

      if (!v95)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v96 = sub_F07EC();
      v98 = v97;

      v99 = sub_3E850(v96, v98, v119);
      v98, v100, v101, v102, v103, v104, v105, v106;
      *(v93 + 4) = v99;
      _os_log_impl(&dword_0, v91, v92, "Not sending typing indicator message %s as it is for a group chat and sending group typing indicators is disabled.", v93, 0xCu);
      sub_1EDC(v94);

      v107 = *(v89 + 8);
      v108 = v111;
    }

    else
    {

      v107 = *(v89 + 8);
      v108 = v52;
    }

LABEL_39:
    v107(v108, v33);
    return;
  }

  v2 = v58;

LABEL_27:
  v62 = [v19 isChatBot];
  v63 = v113;
  v64 = v114;
  a2 = v112;
  if (!v62)
  {
LABEL_2:
    v120.receiver = v2;
    v120.super_class = RCSServiceSession;
    objc_msgSendSuper2(&v120, "allowedToSendMessage:toChat:", a1, a2);
    return;
  }

  v65 = [objc_opt_self() sharedInstance];
  if (!v65)
  {
    __break(1u);
    goto LABEL_42;
  }

  v66 = v65;
  v67 = [v65 isRBMEnabled];

  a2 = v112;
  if (v67)
  {
    goto LABEL_2;
  }

  v68 = Logger.rcs.unsafeMutableAddressor();
  (*(v63 + 16))(v11, v68, v64);
  v69 = a1;
  v70 = sub_F06AC();
  v71 = sub_F0CCC();
  if (!os_log_type_enabled(v70, v71))
  {

    (*(v63 + 8))(v11, v64);
    return;
  }

  v72 = v11;
  v73 = swift_slowAlloc();
  v74 = swift_slowAlloc();
  *&v119[0] = v74;
  *v73 = 136315138;
  v75 = [v69 guid];

  if (v75)
  {
    v76 = sub_F07EC();
    v78 = v77;

    v79 = sub_3E850(v76, v78, v119);
    v78, v80, v81, v82, v83, v84, v85, v86;
    *(v73 + 4) = v79;
    _os_log_impl(&dword_0, v70, v71, "Not sending typing indicator message %s as RBM is disabled in Settings", v73, 0xCu);
    sub_1EDC(v74);

    (*(v63 + 8))(v72, v64);
    return;
  }

LABEL_44:
  __break(1u);
}

void RCSServiceSession._enqueue(_:withTimeout:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(*(v3 + OBJC_IVAR___RCSServiceSession_state) + 136);
  if (v4)
  {
    v8 = *(*v4 + 144);

    v8(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_9138C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a1)
  {
    v6[4] = a1;
    v6[5] = a2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_9400C;
    v6[3] = &unk_11EE50;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  (*(a3 + 16))(a3, v5);
  _Block_release(v5);
}

uint64_t RCSServiceSession.allowedToOverwriteOriginalGroupID(for:)(void *a1)
{
  v2 = a1;
  v3 = [v2 chatIdentifier];
  v4 = [v1 _callerIDForChatWithChatIdentifier:v3 chatStyle:objc_msgSend(v2 foundChat:{"style"), v2}];

  if (!v4)
  {

    if (IMSharedHelperRetrieveSimDetailsFromTelephony())
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 1;
    return v14 & 1;
  }

  v5 = [v2 lastAddressedLocalHandle];
  v6 = [v2 lastAddressedSIMID];
  v7 = [v1 _sendingDecisionForMessageItem:0 callerID:v4 lastAddressedLocalHandle:v5 lastAddressedSIMID:v6];

  if ((v7 & 2) != 0 || !IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    goto LABEL_7;
  }

LABEL_4:
  *(&v17 + 1) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v18 = &protocol witness table for IMDChat;
  *&v16 = v2;
  v8 = v2;
  v9 = IMDChatRCSGroupIdentity.isValid.getter();
  if (v9)
  {
    v10 = swift_allocObject();
    v11 = v17;
    *(v10 + 16) = v16;
    *(v10 + 32) = v11;
    *(v10 + 48) = v18;
    v12 = &protocol witness table for IMDChatRCSGroupIdentity;
    v13 = &type metadata for IMDChatRCSGroupIdentity;
  }

  else
  {
    sub_39BC4(&v16);
    v13 = 0;
    v12 = 0;
    v10 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v14 = v9 ^ 1;
  v19[3] = v13;
  v19[4] = v12;
  v19[0] = v10;
  sub_372B0(v19, &qword_127B08, &qword_F29A0);
  return v14 & 1;
}