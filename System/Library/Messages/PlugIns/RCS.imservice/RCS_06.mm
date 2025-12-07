void RCSServiceSession.wait(forChatRelayReadiness:with:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = sub_388C8(&qword_127EB0, &unk_F2B30);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v22 - v9;
  if ([a1 style] == 43)
  {
    v11 = a1;
    v12 = [v11 chatIdentifier];
    v13 = [v3 _callerIDForChatWithChatIdentifier:v12 chatStyle:objc_msgSend(v11 foundChat:{"style"), v11}];

    if (v13)
    {
      v14 = [v11 lastAddressedLocalHandle];
      v15 = [v11 lastAddressedSIMID];
      v16 = [v3 _sendingDecisionForMessageItem:0 callerID:v13 lastAddressedLocalHandle:v14 lastAddressedSIMID:v15];

      if ((v16 & 2) == 0 && IMSharedHelperRetrieveSimDetailsFromTelephony())
      {
        goto LABEL_5;
      }
    }

    else
    {

      if (IMSharedHelperRetrieveSimDetailsFromTelephony())
      {
LABEL_5:
        sub_F0AFC();
        v17 = sub_F0B1C();
        (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
        sub_F0AEC();
        v18 = v11;
        v19 = v3;

        v20 = sub_F0ADC();
        v21 = swift_allocObject();
        v21[2] = v20;
        v21[3] = &protocol witness table for MainActor;
        v21[4] = v19;
        v21[5] = v18;
        v21[6] = a2;
        v21[7] = a3;
        sub_3CC0C(0, 0, v10, &unk_F3C18, v21);

        return;
      }
    }
  }

  a2();
}

uint64_t sub_918E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = sub_F06CC();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  sub_F0AEC();
  v7[16] = sub_F0ADC();
  v10 = sub_F0A6C();
  v7[17] = v10;
  v7[18] = v9;

  return _swift_task_switch(sub_919D8, v10, v9);
}

void sub_919D8()
{
  v1 = *(*(v0[9] + OBJC_IVAR___RCSServiceSession_state) + 40);
  v0[19] = v1;
  if (v1)
  {
    v0[7] = v0[10];
    v0[8] = 0;

    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_91AC0;

    RCSGroupController.resolveGroupIdentity(for:subscriptionContext:)((v0 + 2), (v0 + 7), (v0 + 8));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_91AC0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_91C68;
  }

  else
  {
    sub_1EDC(v2 + 2);

    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_91BF0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_91BF0()
{

  (*(v0 + 88))(v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_91C68()
{
  v39 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 80);

  v5 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v5, v2);
  v6 = v4;
  swift_errorRetain();
  v7 = sub_F06AC();
  v8 = sub_F0CEC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v10 = 136315394;
    v12 = [v9 guid];
    if (!v12)
    {
      v34 = *(v0 + 80);

      __break(1u);
      return;
    }

    v13 = v12;
    v14 = *(v0 + 112);
    v35 = *(v0 + 104);
    v36 = *(v0 + 120);
    v15 = *(v0 + 80);

    v16 = sub_F07EC();
    v18 = v17;

    v19 = sub_3E850(v16, v18, &v38);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v10 + 4) = v19;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v27;
    *v11 = v27;
    _os_log_impl(&dword_0, v7, v8, "Failed to ensure chat %s is ready RCS before relaying - relay may not work correctly: %@", v10, 0x16u);
    sub_372B0(v11, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v37);

    v28 = (*(v14 + 8))(v36, v35);
  }

  else
  {
    v30 = *(v0 + 112);
    v29 = *(v0 + 120);
    v31 = *(v0 + 104);
    v32 = *(v0 + 80);

    v28 = (*(v30 + 8))(v29, v31);
  }

  (*(v0 + 88))(v28);

  v33 = *(v0 + 8);

  v33();
}

void RCSServiceSession._reportTelephonyJunk(for:chat:)(void *a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  v9 = a2;
  [v2 sendLazuliSpamReport:a1 isBot:objc_msgSend(v9 spamType:{"isChatBot"), 0}];
  v4 = [objc_opt_self() sharedAccountController];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [v4 anySessionForServiceName:IMServiceNameSMS];

  if (v6)
  {
    v7 = [a1 guid];
    if (v7)
    {
      v8 = v7;
      [v6 sendReportJunkMessageGUID:v7 shouldRelay:0];

      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:
}

uint64_t sub_92210()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_37C54;

  return sub_8A9B4(v2, v3, v4, v5, v6);
}

void sub_922F4(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

id sub_9232C(uint64_t a1)
{
  v2 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29[-v4];
  v6 = [objc_allocWithZone(CTLazuliGroupChatUri) init];
  IMDChatRCSGroupIdentity.uri.getter();
  if (v7)
  {
    v8 = v7;
    v9 = sub_F07BC();
    v8, v10, v11, v12, v13, v14, v15, v16;
    [v6 setFocus:v9];
  }

  if (qword_127A70 != -1)
  {
    swift_once();
  }

  v17 = sub_3C96C(v2, qword_127D48);
  (*(v3 + 16))(v5, v17, v2);
  sub_F044C();
  (*(v3 + 8))(v5, v2);
  if (v29[15] != 1)
  {
    sub_39BC4(a1);
    goto LABEL_9;
  }

  IMDChatRCSGroupIdentity.conversationID.getter();
  v19 = v18;
  sub_39BC4(a1);
  if (!v19)
  {
LABEL_9:
    v20 = sub_F07BC();
    goto LABEL_10;
  }

  v20 = sub_F07BC();
  v19, v21, v22, v23, v24, v25, v26, v27;
LABEL_10:
  [v6 setConversationID:v20];

  return v6;
}

void sub_92540(void *a1, uint64_t a2, void *a3, unsigned int a4, double a5)
{
  v197 = a4;
  v9 = 1954047348;
  v10 = sub_F06CC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v198 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_388C8(&unk_127FA0, &qword_F34C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v191 - v14;
  v16 = type metadata accessor for RCSMessage(0);
  sub_5F2EC(a2 + *(v16 + 32), v15);
  v17 = type metadata accessor for RCSMessage.Content(0);
  if ((*(*(v17 - 8) + 48))(v15, 1, v17) == 1)
  {
    sub_372B0(v15, &unk_127FA0, &qword_F34C0);
LABEL_3:
    v18 = 0xE400000000000000;
    goto LABEL_4;
  }

  v28 = RCSMessage.Content.type.getter();
  sub_93F40(v15, type metadata accessor for RCSMessage.Content);
  switch(v28)
  {
    case 0:
      goto LABEL_3;
    case 4:
      v18 = 0xEF726F7461636964;
      v9 = 0x6E49676E69707974;
      break;
    case 1:
      v18 = 0xEA0000000000746ELL;
      v9 = 0x656D686361747461;
      break;
    default:
      v18 = 0xE500000000000000;
      v9 = 0x726568746FLL;
      break;
  }

LABEL_4:
  v19 = [a1 bodyData];
  v199 = v11;
  if (!v19)
  {
LABEL_19:
    v27 = 0;
    goto LABEL_20;
  }

  v21 = v19;
  v22 = sub_F025C();
  v24 = v23;

  v25 = v24;
  v26 = v24 >> 62;
  if ((v24 >> 62) <= 1)
  {
    if (!v26)
    {
      v20 = sub_5F048(v22, v24);
      v27 = BYTE6(v24);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v26 != 2)
  {
    v20 = sub_5F048(v22, v24);
    goto LABEL_19;
  }

  v30 = *(v22 + 16);
  v29 = *(v22 + 24);
  v20 = sub_5F048(v22, v25);
  v27 = v29 - v30;
  if (!__OFSUB__(v29, v30))
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_16:
  v20 = sub_5F048(v22, v25);
  if (__OFSUB__(HIDWORD(v22), v22))
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    return;
  }

  v27 = HIDWORD(v22) - v22;
LABEL_20:
  v31 = [a1 payloadData];
  if (!v31)
  {
LABEL_31:
    v39 = 0;
    goto LABEL_32;
  }

  v33 = v31;
  v34 = sub_F025C();
  v36 = v35;

  v37 = v36;
  v38 = v36 >> 62;
  if ((v36 >> 62) <= 1)
  {
    if (!v38)
    {
      v32 = sub_5F048(v34, v36);
      v39 = BYTE6(v36);
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (v38 != 2)
  {
    v32 = sub_5F048(v34, v36);
    goto LABEL_31;
  }

  v41 = *(v34 + 16);
  v40 = *(v34 + 24);
  v32 = sub_5F048(v34, v37);
  v39 = v40 - v41;
  if (!__OFSUB__(v40, v41))
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_28:
  v32 = sub_5F048(v34, v37);
  LODWORD(v39) = HIDWORD(v34) - v34;
  if (__OFSUB__(HIDWORD(v34), v34))
  {
    goto LABEL_90;
  }

  v39 = v39;
LABEL_32:
  v42 = v27 + v39;
  if (__OFADD__(v27, v39))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if ((v42 & 0x8000000000000000) != 0)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if ([a3 isChatBot])
  {
    v203 = 0xE700000000000000;
    v194 = 0x746F6274616863;
  }

  else
  {
    v43 = [a3 style];
    v44 = 0x70756F7267;
    if (v43 == 45)
    {
      v44 = 0x7564697669646E69;
    }

    v194 = v44;
    v45 = 0xEA00000000006C61;
    if (v43 != 45)
    {
      v45 = 0xE500000000000000;
    }

    v203 = v45;
  }

  v46 = [a3 properties];
  v200 = v18;
  if (!v46)
  {
    goto LABEL_51;
  }

  v47 = v46;
  v48 = sub_F076C();

  v205 = sub_F07EC();
  v206 = v49;
  sub_F0F3C();
  if (!*v48[1].IMDTelephonyServiceSession_opaque || (v57 = sub_51FA8(v207), (v50 & 1) == 0))
  {
    v48, v50, v51, v52, v53, v54, v55, v56;
    sub_54F34(v207);
    goto LABEL_51;
  }

  sub_3FE38(*v48[3].state + 32 * v57, v208);
  sub_54F34(v207);
  v48, v58, v59, v60, v61, v62, v63, v64;
  sub_54F88(v208, v207);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:
    v202 = [a3 style];
    v201 = 0xE300000000000000;
    v193 = 5456722;
    goto LABEL_52;
  }

  v65 = v205;
  v202 = [a3 style];
  v66 = 0x726279485F534352;
  if ((v65 & 1) == 0)
  {
    v66 = 5456722;
  }

  v193 = v66;
  v67 = 0xE300000000000000;
  if (v65)
  {
    v67 = 0xEA00000000006469;
  }

  v201 = v67;
LABEL_52:
  v68 = [a1 fileTransferGUIDs];
  v196 = v9;
  v195 = v10;
  if (v68)
  {
    v192 = a1;
    v69 = v68;
    v70 = sub_F09FC();

    v78 = 0;
    v79 = *v70[1].IMDTelephonyServiceSession_opaque;
    state = v70[2].state;
    v191 = v70[2].state;
LABEL_54:
    v204 = v42;
    v81 = &state[16 * v78];
    while (1)
    {
      if (v79 == v78)
      {
        goto LABEL_62;
      }

      if (v78 >= *v70[1].IMDTelephonyServiceSession_opaque)
      {
        break;
      }

      v82 = *v81;
      v83 = objc_opt_self();

      v84 = [v83 sharedInstance];
      if (!v84)
      {
        goto LABEL_91;
      }

      v85 = v84;
      ++v78;
      v81 += 2;
      v86 = sub_F07BC();
      v82, v87, v88, v89, v90, v91, v92, v93;
      v94 = [v85 transferForGUID:v86];

      if (v94)
      {
        v95 = [v94 totalBytes];

        v42 = &v95[v204];
        state = v191;
        if (!__CFADD__(v204, v95))
        {
          goto LABEL_54;
        }

        __break(1u);
LABEL_62:
        v70, v71, v72, v73, v74, v75, v76, v77;
        v10 = v195;
        a1 = v192;
        goto LABEL_64;
      }
    }

    __break(1u);
    goto LABEL_87;
  }

  v204 = v42;
LABEL_64:
  v96 = Logger.rcs.unsafeMutableAddressor();
  v98 = v198;
  v97 = v199;
  (*(v199 + 16))(v198, v96, v10);
  if (v202 == 45)
  {
    v99 = 0;
  }

  else
  {
    v99 = v201;
  }

  v100 = v200;

  v101 = a1;
  v102 = v203;

  v103 = sub_F06AC();
  v104 = sub_F0CCC();
  v99, v105, v106, v107, v108, v109, v110, v111;
  v102, v112, v113, v114, v115, v116, v117, v118;

  v100, v119, v120, v121, v122, v123, v124, v125;
  LODWORD(v192) = v104;
  if (os_log_type_enabled(v103, v104))
  {
    v126 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    *&v207[0] = v191;
    *v126 = 136316674;
    *(v126 + 4) = sub_3E850(v196, v100, v207);
    *(v126 + 12) = 2048;
    *(v126 + 14) = v204;
    *(v126 + 22) = 2080;
    v127 = [v101 originalServiceName];
    if (v127)
    {
      v128 = v127;
      v129 = sub_F07EC();
      v131 = v130;
    }

    else
    {
      v129 = 7104878;
      v131 = 0xE300000000000000;
    }

    v132 = v192;
    v133 = sub_3E850(v129, v131, v207);
    v131, v134, v135, v136, v137, v138, v139, v140;
    *(v126 + 24) = v133;
    *(v126 + 32) = 2080;
    *(v126 + 34) = sub_3E850(v194, v203, v207);
    *(v126 + 42) = 2080;
    if (v202 == 45)
    {
      v141 = 7104878;
    }

    else
    {
      v141 = v193;
    }

    if (v202 == 45)
    {
      v142 = 0xE300000000000000;
    }

    else
    {
      v142 = v201;
    }

    v143 = sub_3E850(v141, v142, v207);
    v142, v144, v145, v146, v147, v148, v149, v150;
    *(v126 + 44) = v143;
    *(v126 + 52) = 2048;
    *(v126 + 54) = a5;
    *(v126 + 62) = 1024;
    *(v126 + 64) = v197;
    _os_log_impl(&dword_0, v103, v132, "Sending RCS send message metric with subtype %s, messageSize %llu, originalServiceName %s, receiverType %s, receiverGroupType %s, duration %f, error %u", v126, 0x44u);
    swift_arrayDestroy();

    (*(v199 + 8))(v198, v195);
  }

  else
  {

    (*(v97 + 8))(v98, v10);
  }

  v151 = objc_opt_self();
  v152 = [v151 sharedInstance];
  if (!v152)
  {
    goto LABEL_92;
  }

  v153 = v152;
  v154 = sub_F07BC();
  v155 = v200;
  v199 = sub_F07BC();
  v155, v156, v157, v158, v159, v160, v161, v162;
  v163 = [v101 originalServiceName];
  v164 = sub_F0BEC();
  v165 = v203;
  v166 = sub_F07BC();
  v165, v167, v168, v169, v170, v171, v172, v173;
  if (v202 == 45)
  {
    v174 = 0;
  }

  else
  {
    v175 = v201;
    v174 = sub_F07BC();
    v175, v176, v177, v178, v179, v180, v181, v182;
  }

  v183 = v197;
  v184 = v197 == 0;
  v185 = [v101 handle];
  v186 = [v151 stringForFZErrorType:v183];
  LOBYTE(v190) = v184;
  v187 = v154;
  v188 = v154;
  v189 = v199;
  [v153 trackSentMessageEventOfType:v188 subtype:v199 originalServiceName:v163 messageSize:v204 sendDuration:v164 receiverType:v166 receiverGroupType:v174 wasSuccessful:v190 sourceHandle:0 destinationHandle:v185 error:v186];
}

void sub_93078(void *a1, uint64_t a2, RCSServiceSession *a3, unsigned __int8 a4, char a5)
{
  v11 = sub_F06CC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = sub_F07BC();
  v16 = [v5 chatForChatIdentifier:v15 style:a4 updatingAccount:1];

  if (v16)
  {
    v17 = [v5 relayController];
    v18 = v16;
    [v17 sendReadReceiptForMessage:a1 toChat:v18 reflectOnly:a5 & 1];

    v42 = v18;
    v19 = [v42 chatIdentifier];
    v20 = [v42 style];
    v21 = [v5 _callerIDForChatWithChatIdentifier:v19 chatStyle:v20 foundChat:v42];

    if (v21)
    {
      v22 = [v42 lastAddressedLocalHandle];
      v23 = [v42 lastAddressedSIMID];
      v24 = [v5 _sendingDecisionForMessageItem:a1 callerID:v21 lastAddressedLocalHandle:v22 lastAddressedSIMID:v23];

      if ((v24 & 2) != 0)
      {

        goto LABEL_13;
      }
    }

    else
    {
    }

    SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();

    if (SimDetailsFromTelephony)
    {
      if (a1)
      {
        sub_8D2EC(a1, v42);
        v38 = v42;
LABEL_16:

        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

LABEL_13:
    if (a1)
    {
      v39 = [a1 guid];
      if (v39)
      {
        v41 = v39;
        [v5 didSendMessageReadReceiptForMessageID:?];

        v38 = v41;
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = Logger.rcs.unsafeMutableAddressor();
  (*(v12 + 16))(v14, v25, v11);

  v26 = sub_F06AC();
  v27 = sub_F0CFC();
  a3, v28, v29, v30, v31, v32, v33, v34;
  if (os_log_type_enabled(v26, v27))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_3E850(a2, a3, &v43);
    _os_log_impl(&dword_0, v26, v27, "Received request to send read receipt to chat %s but could not find chat", v35, 0xCu);
    sub_1EDC(v36);
  }

  (*(v12 + 8))(v14, v11);
}

BOOL _sSo17RCSServiceSessionC3RCSE12chatCanMerge13withSuperChatSbSo7IMDChatC_tF_0(void *a1)
{
  *(&v10 + 1) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v11 = &protocol witness table for IMDChat;
  *&v9 = a1;
  v2 = a1;
  v3 = IMDChatRCSGroupIdentity.isValid.getter();
  if (v3)
  {
    v4 = swift_allocObject();
    v5 = v10;
    *(v4 + 16) = v9;
    *(v4 + 32) = v5;
    *(v4 + 48) = v11;
    v6 = &protocol witness table for IMDChatRCSGroupIdentity;
    v7 = &type metadata for IMDChatRCSGroupIdentity;
  }

  else
  {
    sub_39BC4(&v9);
    v7 = 0;
    v6 = 0;
    v4 = 0;
    v12[1] = 0;
    v12[2] = 0;
  }

  v12[3] = v7;
  v12[4] = v6;
  v12[0] = v4;
  sub_372B0(v12, &qword_127B08, &qword_F29A0);
  return (v3 & 1) == 0;
}

uint64_t sub_9354C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_38B0C;

  return sub_8E680(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_93640(uint64_t a1)
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
  v10[1] = sub_38B0C;

  return sub_918E0(a1, v4, v5, v6, v7, v9, v8);
}

double sub_93714(void *a1, void *a2, void (**a3)(void))
{
  v6 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  _Block_copy(a3);
  if ([a1 style] == 43)
  {
    v10 = a1;
    v11 = [v10 chatIdentifier];
    v12 = [a2 _callerIDForChatWithChatIdentifier:v11 chatStyle:objc_msgSend(v10 foundChat:{"style"), v10}];

    if (v12)
    {
      v13 = [v10 lastAddressedLocalHandle];
      v14 = [v10 lastAddressedSIMID];
      v15 = [a2 _sendingDecisionForMessageItem:0 callerID:v12 lastAddressedLocalHandle:v13 lastAddressedSIMID:v14];

      if ((v15 & 2) == 0 && IMSharedHelperRetrieveSimDetailsFromTelephony())
      {
        goto LABEL_5;
      }
    }

    else
    {

      if (IMSharedHelperRetrieveSimDetailsFromTelephony())
      {
LABEL_5:
        sub_F0AFC();
        v16 = sub_F0B1C();
        (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
        sub_F0AEC();
        v17 = v10;
        v18 = a2;

        v19 = sub_F0ADC();
        v20 = swift_allocObject();
        v20[2] = v19;
        v20[3] = &protocol witness table for MainActor;
        v20[4] = v18;
        v20[5] = v17;
        v20[6] = sub_93FA0;
        v20[7] = v9;
        sub_3CC0C(0, 0, v8, &unk_F3D28, v20);

        return result;
      }
    }
  }

  a3[2](a3);

  return result;
}

uint64_t _sSo17RCSServiceSessionC3RCSE24_messageUpgradesWhenSent18fromCurrentServiceSbSo13IMMessageItemC_tF_0(void *a1)
{
  v1 = [a1 service];
  if (!v1)
  {
    sub_F07EC();
    v14 = v7;
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_F07EC();
  v5 = v4;

  v6 = sub_F07EC();
  v14 = v7;
  if (!v5)
  {
LABEL_9:
    v16 = 0;
    goto LABEL_11;
  }

  if (v3 == v6 && v5 == v7)
  {
    v5, v7, v6, v9, v10, v11, v12, v13;
    v16 = 1;
  }

  else
  {
    v16 = sub_F122C();
    v5, v17, v18, v19, v20, v21, v22, v23;
  }

LABEL_11:
  v14, v7, v8, v9, v10, v11, v12, v13;
  return v16 & 1;
}

uint64_t sub_93B10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_93B6C(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSMessage(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_F030C();
  v14 = v1[3];
  v15 = v1[2];
  v8 = v1[4];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_37C54;

  return sub_886C0(a1, v15, v14, v8, v1 + v4, v9, v10, v11);
}

uint64_t sub_93D20()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_38B0C;

  return sub_8A3FC(v2, v3, v4, v5, v6);
}

uint64_t sub_93DDC(int a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_38B0C;

  return sub_8A548(a1, v1);
}

uint64_t sub_93E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessageSendItem.SendState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_93ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_93F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_93FB0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_94014(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v8 = 0xE900000000000067;
  v9 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v10 = 0x7370756F7247;
    }

    else
    {
      v10 = 0x6E6F6870656C6554;
    }

    if (v9)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = 0xE900000000000079;
    }
  }

  else if (a1 == 2)
  {
    v10 = 0xD000000000000016;
    v11 = 0x80000000000FDCD0;
  }

  else if (a1 == 3)
  {
    v10 = 0x6E6967617373654DLL;
    v11 = 0xE900000000000067;
  }

  else
  {
    v11 = 0xE700000000000000;
    v10 = 0x79636176697250;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v13 = 0x7370756F7247;
    }

    else
    {
      v13 = 0x6E6F6870656C6554;
    }

    if (a2)
    {
      v14 = 0xE600000000000000;
    }

    else
    {
      v14 = 0xE900000000000079;
    }

    if (v10 != v13)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v12 = 0x6E6967617373654DLL;
    if (a2 != 3)
    {
      v12 = 0x79636176697250;
      v8 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v13 = 0xD000000000000016;
    }

    else
    {
      v13 = v12;
    }

    if (a2 == 2)
    {
      v14 = 0x80000000000FDCD0;
    }

    else
    {
      v14 = v8;
    }

    if (v10 != v13)
    {
      goto LABEL_33;
    }
  }

  if (v11 != v14)
  {
LABEL_33:
    v15 = sub_F122C();
    goto LABEL_34;
  }

  v15 = 1;
LABEL_34:
  v11, a2, v13, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

Swift::Int sub_941B4()
{
  v1 = *v0;
  sub_F12FC();
  v2 = 0xE900000000000079;
  v3 = 0x80000000000FDCD0;
  v4 = 0xE700000000000000;
  if (v1 == 3)
  {
    v4 = 0xE900000000000067;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1)
  {
    v2 = 0xE600000000000000;
  }

  if (v1 <= 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  sub_F089C();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_F132C();
}

void sub_9429C(uint64_t a1)
{
  v2 = 0xE900000000000067;
  v3 = *v1;
  v4 = 0xE900000000000079;
  if (v3 != 3)
  {
    v2 = 0xE700000000000000;
  }

  if (v3 == 2)
  {
    v2 = 0x80000000000FDCD0;
  }

  if (*v1)
  {
    v4 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  sub_F089C();

  v5, v6, v7, v8, v9, v10, v11, v12;
}

Swift::Int sub_94370(uint64_t a1)
{
  v2 = *v1;
  sub_F12FC();
  v3 = 0xE900000000000079;
  v4 = 0x80000000000FDCD0;
  v5 = 0xE700000000000000;
  if (v2 == 3)
  {
    v5 = 0xE900000000000067;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = 0xE600000000000000;
  }

  if (v2 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_F089C();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_F132C();
}

unint64_t sub_94454@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_96F4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_94484(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000067;
  v3 = *v1;
  v4 = 0xE900000000000079;
  v5 = 0x6E6F6870656C6554;
  v6 = 0x80000000000FDCD0;
  v7 = 0xD000000000000016;
  v8 = 0x6E6967617373654DLL;
  if (v3 != 3)
  {
    v8 = 0x79636176697250;
    v2 = 0xE700000000000000;
  }

  if (v3 != 2)
  {
    v7 = v8;
    v6 = v2;
  }

  if (*v1)
  {
    v5 = 0x7370756F7247;
    v4 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (*v1 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t sub_94528(unsigned __int8 *a1)
{
  v2 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v2 - 8);
  v4 = &v106 - v3;
  v5 = sub_388C8(&qword_128A60, &qword_F3D38);
  __chkstk_darwin(v5 - 8);
  v7 = &v106 - v6;
  v8 = sub_F043C();
  v114 = *(v8 - 8);
  v115 = v8;
  __chkstk_darwin(v8);
  v109 = v9;
  v110 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v113 = &v106 - v11;
  v12 = sub_F06CC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Logger.rcs.unsafeMutableAddressor();
  (*(v13 + 16))(v15, v16, v12);
  sub_96908(a1, v117);
  v17 = sub_F06AC();
  v18 = sub_F0CEC();
  sub_96940(a1);
  v108 = v18;
  v19 = os_log_type_enabled(v17, v18);
  v111 = v4;
  if (v19)
  {
    v107 = v7;
    v20 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v117[0] = v106;
    *v20 = 136446978;
    v21 = 0xE900000000000079;
    v22 = *a1;
    v23 = 0xD000000000000016;
    v24 = 0x80000000000FDCD0;
    v25 = 0x6E6967617373654DLL;
    v26 = 0xE700000000000000;
    if (v22 == 3)
    {
      v26 = 0xE900000000000067;
    }

    else
    {
      v25 = 0x79636176697250;
    }

    if (v22 != 2)
    {
      v23 = v25;
      v24 = v26;
    }

    v27 = 0x7370756F7247;
    if (*a1)
    {
      v21 = 0xE600000000000000;
    }

    else
    {
      v27 = 0x6E6F6870656C6554;
    }

    if (*a1 <= 1u)
    {
      v28 = v27;
    }

    else
    {
      v28 = v23;
    }

    if (*a1 <= 1u)
    {
      v29 = v21;
    }

    else
    {
      v29 = v24;
    }

    v30 = 0x3E6C696E3CLL;
    v31 = sub_3E850(v28, v29, v117);
    v29, v32, v33, v34, v35, v36, v37, v38;
    *(v20 + 4) = v31;
    *(v20 + 12) = 2082;
    if (*(a1 + 2))
    {
      v39 = *(a1 + 1);
      v40 = *(a1 + 2);
    }

    else
    {
      v40 = 0xE500000000000000;
      v39 = 0x3E6C696E3CLL;
    }

    v41 = sub_3E850(v39, v40, v117);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v20 + 14) = v41;
    *(v20 + 22) = 2080;
    if (*(a1 + 4))
    {
      v49 = *(a1 + 3);
      v50 = *(a1 + 4);
    }

    else
    {
      v50 = 0xE500000000000000;
      v49 = 0x3E6C696E3CLL;
    }

    v51 = sub_3E850(v49, v50, v117);
    v50, v52, v53, v54, v55, v56, v57, v58;
    *(v20 + 24) = v51;
    *(v20 + 32) = 2080;
    if (*(a1 + 5))
    {
      v116 = *(a1 + 5);
      swift_errorRetain();
      sub_388C8(&qword_127B88, &qword_F3680);
      v30 = sub_F083C();
      v60 = v59;
    }

    else
    {
      v60 = 0xE500000000000000;
    }

    v61 = sub_3E850(v30, v60, v117);
    v60, v62, v63, v64, v65, v66, v67, v68;
    *(v20 + 34) = v61;
    _os_log_impl(&dword_0, v17, v108, "[ABC] Severe bug detected with type %{public}s context %{public}s fullContext %s error %s", v20, 0x2Au);
    swift_arrayDestroy();

    (*(v13 + 8))(v15, v12);
    v7 = v107;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v69 = 0xE900000000000079;
  v70 = *a1;
  v71 = 0x80000000000FDCD0;
  v72 = 0xE700000000000000;
  if (v70 == 3)
  {
    v72 = 0xE900000000000067;
  }

  if (v70 != 2)
  {
    v71 = v72;
  }

  if (*a1)
  {
    v69 = 0xE600000000000000;
  }

  if (*a1 <= 1u)
  {
    v73 = v69;
  }

  else
  {
    v73 = v71;
  }

  v75 = v114;
  v74 = v115;
  v76 = sub_F07BC();
  v73, v77, v78, v79, v80, v81, v82, v83;
  if (*(a1 + 5))
  {
    v84 = sub_F014C();
  }

  else
  {
    v84 = 0;
  }

  v85 = sub_F07BC();
  if (*(a1 + 2))
  {
    v86 = *(a1 + 2);
LABEL_43:

    v87 = sub_F07BC();
    v86, v88, v89, v90, v91, v92, v93, v94;
    goto LABEL_44;
  }

  v86 = *(a1 + 4);
  if (v86)
  {

    goto LABEL_43;
  }

  v87 = 0;
LABEL_44:
  [v112 forceAutoBugCaptureWithSubType:v76 errorPayload:v84 type:v85 context:{v87, v106}];

  sub_9546C(v7);
  if ((*(v75 + 48))(v7, 1, v74) == 1)
  {
    return sub_372B0(v7, &qword_128A60, &qword_F3D38);
  }

  v96 = *(v75 + 32);
  v97 = v113;
  v96(v113, v7, v74);
  v98 = sub_F0B1C();
  v99 = v111;
  (*(*(v98 - 8) + 56))(v111, 1, 1, v98);
  v100 = v110;
  (*(v75 + 16))(v110, v97, v74);
  v101 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v102 = (v109 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v103 = swift_allocObject();
  *(v103 + 16) = 0;
  *(v103 + 24) = 0;
  v96((v103 + v101), v100, v74);
  v104 = v103 + v102;
  v105 = *(a1 + 1);
  *v104 = *a1;
  *(v104 + 16) = v105;
  *(v104 + 32) = *(a1 + 2);
  *(v104 + 48) = a1[48];
  sub_96908(a1, v117);
  sub_3CC0C(0, 0, v99, &unk_F3D48, v103);

  return (*(v75 + 8))(v113, v74);
}

uint64_t sub_94D0C()
{
  v1 = 0xE600000000000000;
  v2 = 0x7370756F7247;
  v3 = *v0;
  v4 = 0x80000000000FDCD0;
  v5 = 0xD000000000000016;
  v6 = 0x6E6967617373654DLL;
  v7 = 0xE700000000000000;
  if (v3 == 3)
  {
    v7 = 0xE900000000000067;
  }

  else
  {
    v6 = 0x79636176697250;
  }

  if (v3 != 2)
  {
    v5 = v6;
    v4 = v7;
  }

  if (!*v0)
  {
    v2 = 0x6E6F6870656C6554;
    v1 = 0xE900000000000079;
  }

  if (*v0 <= 1u)
  {
    v8._countAndFlagsBits = v2;
  }

  else
  {
    v8._countAndFlagsBits = v5;
  }

  if (*v0 <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  v8._object = v9;
  sub_F08CC(v8);
  v9, v10, v11, v12, v13, v14, v15, v16;
  v28._countAndFlagsBits = 8285;
  v28._object = 0xE200000000000000;
  sub_F08CC(v28);
  if (*(v0 + 2))
  {
    v17 = *(v0 + 1);
    v18 = *(v0 + 2);
LABEL_21:

    v29._countAndFlagsBits = v17;
    v29._object = v18;
    sub_F08CC(v29);
    v18, v21, v22, v23, v24, v25, v26, v27;
    return 0x5B5D5343525BLL;
  }

  if (*(v0 + 4))
  {
    v17 = *(v0 + 3);
    v18 = *(v0 + 4);
LABEL_20:

    goto LABEL_21;
  }

  result = *(v0 + 5);
  if (result)
  {
    swift_getErrorValue();
    v17 = sub_F12AC();
    v18 = v20;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_94EA4()
{
  sub_388C8(&qword_128288, &qword_F3460);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_F2C60;
  *(v1 + 32) = 0xD000000000000032;
  *(v1 + 40) = 0x80000000000FF6B0;
  v2._object = *(v0 + 16);
  if (v2._object)
  {
    v2._countAndFlagsBits = *(v0 + 8);
    sub_F08CC(v2);
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    if (v8 >= v7 >> 1)
    {
      v1 = sub_6E2D8((v7 > 1), v8 + 1, &dword_0 + 1, v1, v3, v4, v5, v6);
    }

    *(v1 + 16) = v8 + 1;
    v9 = v1 + 16 * v8;
    *(v9 + 32) = 0x3A747865746E6F43;
    *(v9 + 40) = 0xE900000000000020;
  }

  v10 = *(v0 + 32);
  if (v10)
  {
    v11 = *(v0 + 24);
    sub_F0F9C(21);
    0xE000000000000000, v12, v13, v14, v15, v16, v17, v18;
    v57._countAndFlagsBits = v11;
    v57._object = v10;
    sub_F08CC(v57);
    v24 = *(v1 + 16);
    v23 = *(v1 + 24);
    if (v24 >= v23 >> 1)
    {
      v1 = sub_6E2D8((v23 > 1), v24 + 1, &dword_0 + 1, v1, v19, v20, v21, v22);
    }

    *(v1 + 16) = v24 + 1;
    v25 = v1 + 16 * v24;
    *(v25 + 32) = 0xD000000000000013;
    *(v25 + 40) = 0x80000000000FF710;
  }

  if (*(v0 + 40))
  {
    swift_errorRetain();
    sub_F0F9C(21);
    0xE000000000000000, v26, v27, v28, v29, v30, v31, v32;
    swift_getErrorValue();
    v58._countAndFlagsBits = sub_F12AC();
    object = v58._object;
    sub_F08CC(v58);
    object, v34, v35, v36, v37, v38, v39, v40;
    v46 = *(v1 + 16);
    v45 = *(v1 + 24);
    if (v46 >= v45 >> 1)
    {
      v1 = sub_6E2D8((v45 > 1), v46 + 1, &dword_0 + 1, v1, v41, v42, v43, v44);
    }

    *(v1 + 16) = v46 + 1;
    v47 = v1 + 16 * v46;
    *(v47 + 32) = 0xD000000000000013;
    *(v47 + 40) = 0x80000000000FF6F0;
  }

  sub_388C8(&qword_128558, &unk_F4430);
  sub_96AA4();
  v48 = sub_F079C();
  v1, v49, v50, v51, v52, v53, v54, v55;
  return v48;
}

uint64_t sub_95138()
{
  sub_388C8(&qword_128288, &qword_F3460);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_F2C60;
  *(v1 + 32) = 0xD000000000000032;
  *(v1 + 40) = 0x80000000000FF6B0;
  v2._object = *(v0 + 16);
  if (v2._object)
  {
    v2._countAndFlagsBits = *(v0 + 8);
    strcpy(v76, "Context: ");
    WORD1(v76[1]) = 0;
    HIDWORD(v76[1]) = -385875968;
    sub_F08CC(v2);
    v7 = v76[0];
    v8 = v76[1];
    v10 = *(v1 + 16);
    v9 = *(v1 + 24);
    if (v10 >= v9 >> 1)
    {
      v1 = sub_6E2D8((v9 > 1), v10 + 1, &dword_0 + 1, v1, v3, v4, v5, v6);
    }

    *(v1 + 16) = v10 + 1;
    v11 = v1 + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
  }

  v12 = *(v0 + 32);
  if (v12)
  {
    v13 = *(v0 + 24);
    sub_F0F9C(21);
    0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
    v76[0] = 0xD000000000000013;
    v76[1] = 0x80000000000FF710;
    v77._countAndFlagsBits = v13;
    v77._object = v12;
    sub_F08CC(v77);
    v26 = *(v1 + 16);
    v25 = *(v1 + 24);
    if (v26 >= v25 >> 1)
    {
      v1 = sub_6E2D8((v25 > 1), v26 + 1, &dword_0 + 1, v1, v21, v22, v23, v24);
    }

    *(v1 + 16) = v26 + 1;
    v27 = v1 + 16 * v26;
    *(v27 + 32) = 0xD000000000000013;
    *(v27 + 40) = 0x80000000000FF710;
  }

  if (*(v0 + 40))
  {
    swift_errorRetain();
    sub_F0F9C(21);
    0xE000000000000000, v28, v29, v30, v31, v32, v33, v34;
    v76[0] = 0xD000000000000013;
    v76[1] = 0x80000000000FF6F0;
    swift_getErrorValue();
    v78._countAndFlagsBits = sub_F12AC();
    object = v78._object;
    sub_F08CC(v78);
    object, v36, v37, v38, v39, v40, v41, v42;
    v48 = *(v1 + 16);
    v47 = *(v1 + 24);
    if (v48 >= v47 >> 1)
    {
      v1 = sub_6E2D8((v47 > 1), v48 + 1, &dword_0 + 1, v1, v43, v44, v45, v46);
    }

    *(v1 + 16) = v48 + 1;
    v49 = v1 + 16 * v48;
    *(v49 + 32) = 0xD000000000000013;
    *(v49 + 40) = 0x80000000000FF6F0;
    strcpy(v76, "Error Dump: ");
    BYTE5(v76[1]) = 0;
    HIWORD(v76[1]) = -5120;
    swift_errorRetain();
    sub_388C8(&qword_127B88, &qword_F3680);
    v79._countAndFlagsBits = sub_F085C();
    v50 = v79._object;
    sub_F08CC(v79);
    v50, v51, v52, v53, v54, v55, v56, v57;
    v62 = v76[0];
    v63 = v76[1];
    v65 = *(v1 + 16);
    v64 = *(v1 + 24);
    if (v65 >= v64 >> 1)
    {
      v1 = sub_6E2D8((v64 > 1), v65 + 1, &dword_0 + 1, v1, v58, v59, v60, v61);
    }

    *(v1 + 16) = v65 + 1;
    v66 = v1 + 16 * v65;
    *(v66 + 32) = v62;
    *(v66 + 40) = v63;
  }

  sub_388C8(&qword_128558, &unk_F4430);
  sub_96AA4();
  v67 = sub_F079C();
  v1, v68, v69, v70, v71, v72, v73, v74;
  return v67;
}

uint64_t sub_9546C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v83 = a1;
  v3 = sub_F03DC();
  v80 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_F03EC();
  v79 = *(v6 - 8);
  __chkstk_darwin(v6);
  v78 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_F03CC();
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin(v8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_F042C();
  v76 = *(v11 - 8);
  v77 = v11;
  __chkstk_darwin(v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v67 - v16;
  if (qword_1279E8 != -1)
  {
    swift_once();
  }

  v18 = sub_3C96C(v14, qword_127BB0);
  (*(v15 + 16))(v17, v18, v14);
  sub_F044C();
  (*(v15 + 8))(v17, v14);
  if (v85[0] == 1)
  {
    v19 = *(v2 + 40);
    *v85 = v19;
    v74 = v5;
    v75 = v3;
    v73 = v13;
    if (v19)
    {
      sub_96C3C(v85, v84);
      if (sub_96B08(v19))
      {
        v20 = v6;
        sub_F041C();
        sub_372B0(v85, &qword_128A90, &qword_F3D68);
LABEL_10:
        v22 = sub_94D0C();
        v70 = v23;
        v71 = v22;
        v24 = sub_95138();
        v68 = v25;
        v69 = v24;
        v26 = *(v81 + 104);
        v67 = v10;
        v26(v10, enum case for TapToRadarDraft.Classification.crashHangDataLoss(_:), v82);
        v27 = v78;
        v28 = v79;
        v29 = *(v79 + 104);
        v72 = v20;
        v29(v78, enum case for TapToRadarDraft.Reproducibility.iDidntTry(_:), v20);
        sub_388C8(&qword_128A88, &qword_F3D60);
        v30 = sub_F03BC();
        v31 = *(v30 - 8);
        v32 = *(v31 + 72);
        v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_F2C70;
        v35 = v34 + v33;
        v36 = *(v31 + 104);
        v36(v35, enum case for TapToRadarDraft.DeviceClass.iPhone(_:), v30);
        v36(v35 + v32, enum case for TapToRadarDraft.DeviceClass.appleWatch(_:), v30);
        v37 = v80;
        v39 = v74;
        v38 = v75;
        (*(v80 + 104))(v74, enum case for TapToRadarDraft.AutoDiagnostics.all(_:), v75);
        v40 = v70;
        v41 = v68;
        v42 = v73;
        v43 = v67;
        sub_F03AC();
        v40, v44, v45, v46, v47, v48, v49, v50;
        v41, v51, v52, v53, v54, v55, v56, v57;
        v34, v58, v59, v60, v61, v62, v63, v64;
        (*(v37 + 8))(v39, v38);
        (*(v28 + 8))(v27, v72);
        (*(v81 + 8))(v43, v82);
        (*(v76 + 8))(v42, v77);
        v21 = 0;
        goto LABEL_11;
      }

      sub_372B0(v85, &qword_128A90, &qword_F3D68);
    }

    v20 = v6;
    sub_F040C();
    goto LABEL_10;
  }

  v21 = 1;
LABEL_11:
  v65 = sub_F043C();
  return (*(*(v65 - 8) + 56))(v83, v21, 1, v65);
}

uint64_t sub_95AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_95AC4, 0, 0);
}

uint64_t sub_95AC4()
{
  v1 = sub_94EA4();
  v3 = v2;
  *(v0 + 32) = v2;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_95B90;

  return sub_95CA0(0xD000000000000017, 0x80000000000FF670, v1, v3);
}

uint64_t sub_95B90()
{
  v1 = *(*v0 + 32);
  v11 = *v0;

  v1, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_95CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[36] = a4;
  v5[37] = v4;
  v5[34] = a2;
  v5[35] = a3;
  v5[33] = a1;
  v6 = sub_F06CC();
  v5[38] = v6;
  v5[39] = *(v6 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();

  return _swift_task_switch(sub_95D80, 0, 0);
}

uint64_t sub_95D80()
{
  v38 = objc_opt_self();
  v1 = sub_F035C();
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  sub_F034C();
  sub_F032C();
  v5 = v4;
  (*(v2 + 8))(v3, v1);
  v6 = sub_F07BC();
  v5, v7, v8, v9, v10, v11, v12, v13;

  v14 = sub_F07BC();
  v15 = sub_F07BC();
  v16 = sub_F07BC();
  v17 = sub_F07BC();
  v18 = [v38 userNotificationWithIdentifier:v6 title:v14 message:v15 defaultButton:v16 alternateButton:v17 otherButton:0];

  if (v18)
  {
    sub_F0E6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  *(v0 + 9) = v39;
  *(v0 + 10) = v40;
  if (v0[21])
  {
    sub_37310(0, &qword_128A68, IMUserNotification_ptr);
    if (swift_dynamicCast())
    {
      v19 = v0[30];
      v0[43] = v19;
      v20 = objc_opt_self();
      v21 = v19;
      v22 = [v20 sharedInstance];
      if (v22)
      {
        sub_F0E6C();
        swift_unknownObjectRelease();
        sub_54F88(v0 + 13, v0 + 11);
        sub_37310(0, &qword_128A70, IMUserNotificationCenter_ptr);
        swift_dynamicCast();
        v23 = v0[31];
        v0[44] = v23;
        v0[2] = v0;
        v0[7] = v0 + 32;
        v0[3] = sub_96254;
        v24 = swift_continuation_init();
        v0[17] = sub_388C8(&qword_128A78, &qword_F3D58);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_968A4;
        v0[13] = &unk_11EEA0;
        v0[14] = v24;
        [v23 addUserNotification:v21 listener:0 completionHandler:v0 + 10];
        v22 = v0 + 2;
      }

      else
      {
        __break(1u);
      }

      return _swift_continuation_await(v22);
    }
  }

  else
  {
    sub_372B0((v0 + 18), &unk_127FB0, &qword_F2F40);
  }

  v25 = v0[41];
  v26 = v0[38];
  v27 = v0[39];
  v28 = Logger.rcs.unsafeMutableAddressor();
  (*(v27 + 16))(v25, v28, v26);
  v29 = sub_F06AC();
  v30 = sub_F0CEC();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[41];
  v33 = v0[38];
  v34 = v0[39];
  if (v31)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v29, v30, "Failed to create IMUserNotification for TTR, TTR will not proceed", v35, 2u);
  }

  (*(v34 + 8))(v32, v33);

  v36 = v0[1];

  return v36(0);
}

uint64_t sub_96254()
{

  return _swift_task_switch(sub_96334, 0, 0);
}

uint64_t sub_96334()
{
  v1 = v0[32];
  v2 = v0[43];
  if (v1)
  {

    v2 = v0[43];
  }

  else
  {
    v1 = v0[43];
  }

  v0[45] = v1;

  if ([v1 response])
  {
    v3 = v0[42];
    v4 = v0[38];
    v5 = v0[39];
    v6 = Logger.rcs.unsafeMutableAddressor();
    (*(v5 + 16))(v3, v6, v4);
    v7 = sub_F06AC();
    v8 = sub_F0CDC();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[44];
    v11 = v0[42];
    v12 = v0[38];
    v13 = v0[39];
    if (v9)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v7, v8, "User declined TTR, not proceeding", v14, 2u);
    }

    (*(v13 + 8))(v11, v12);

    v15 = v0[1];

    return v15(0);
  }

  else
  {
    v17 = swift_task_alloc();
    v0[46] = v17;
    *v17 = v0;
    v17[1] = sub_96534;

    return TapToRadarDraft.open()();
  }
}

uint64_t sub_96534()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_966CC;
  }

  else
  {
    v2 = sub_96648;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_96648()
{
  v1 = *(v0 + 352);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_966CC(uint64_t a1)
{
  v3 = v1[39];
  v2 = v1[40];
  v4 = v1[38];
  v5 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_F06AC();
  v7 = sub_F0CEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[44];
  v10 = v1[45];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&dword_0, v6, v7, "Failed to open TTR: %@", v11, 0xCu);
    sub_372B0(v12, &qword_127AF0, &qword_F28E0);
  }

  else
  {
  }

  (*(v1[39] + 8))(v1[40], v1[38]);

  v14 = v1[1];

  return v14(0);
}

uint64_t sub_968A4(uint64_t a1, void *a2)
{
  v3 = sub_373E8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_96970(uint64_t a1)
{
  v4 = *(sub_F043C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_37C54;

  return sub_95AA4(a1, v7, v8, v1 + v5, v1 + v6);
}

unint64_t sub_96AA4()
{
  result = qword_128A80;
  if (!qword_128A80)
  {
    sub_3CB70(&qword_128558, &unk_F4430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128A80);
  }

  return result;
}

uint64_t sub_96B08(uint64_t a1)
{
  swift_errorRetain();
  sub_388C8(&qword_127B88, &qword_F3680);
  sub_F083C();
  v2 = v1;
  swift_getErrorValue();
  sub_F12AC();
  v4 = v3;
  sub_3CBB8();
  v5 = sub_F0E5C();
  v2, v6, v7, v8, v9, v10, v11, v12;
  if (v5)
  {
    v4, v13, v14, v15, v16, v17, v18, v19;
    v20 = 1;
  }

  else
  {
    v20 = sub_F0E5C();
    v4, v21, v22, v23, v24, v25, v26, v27;
  }

  return v20 & 1;
}

uint64_t sub_96C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_128A90, &qword_F3D68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_96CAC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_96CC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_96D24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCSHandle.Attribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RCSHandle.Attribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_96EF8()
{
  result = qword_128A98;
  if (!qword_128A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128A98);
  }

  return result;
}

unint64_t sub_96F4C(uint64_t a1, RCSServiceSession *a2)
{
  v13._countAndFlagsBits = a1;
  v3._rawValue = &off_11DE50;
  v13._object = a2;
  v4 = sub_F112C(v3, v13);
  a2, v5, v6, v7, v8, v9, v10, v11;
  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t RCSParticipantChange.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_F035C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_9705C(uint64_t a1)
{
  v2 = sub_98FB0(&qword_128030, &unk_F3F14);

  return RCSOperationController.OperationID.description.getter(a1, v2);
}

char *RCSOutgoingMessageController.init(session:operationConfiguration:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC3RCS28RCSOutgoingMessageController_client;
  v7 = im_primary_queue();
  v8 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v7];

  *&v3[v6] = v8;
  swift_unknownObjectUnownedInit();
  v10 = *a2;
  v9 = a2[1];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18[0] = v10;
  v18[1] = v9;
  v18[2] = &unk_F3E68;
  v18[3] = v11;
  v19 = 0;
  type metadata accessor for RCSOperationController();
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC3RCS28RCSOutgoingMessageController_operationController] = RCSOperationController.init(configuration:)(v18);
  v17.receiver = v3;
  v17.super_class = type metadata accessor for RCSOutgoingMessageController();
  v12 = objc_msgSendSuper2(&v17, "init");
  v13 = *&v12[OBJC_IVAR____TtC3RCS28RCSOutgoingMessageController_client];
  v14 = v12;
  v15 = v13;
  [v15 setDelegate:v14];
  sub_977C0(a2);

  return v14;
}

uint64_t sub_97238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  return _swift_task_switch(sub_9725C, 0, 0);
}

uint64_t sub_9725C()
{
  sub_99040(*(v0 + 120), v0 + 16);
  v1 = *(v0 + 48);
  sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
  if (v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 144) = Strong;
    if (Strong)
    {
      *(v0 + 152) = sub_F07BC();
      sub_F0AEC();
      *(v0 + 160) = sub_F0ADC();
      v3 = sub_F0A6C();
      v5 = v4;
      v6 = sub_97464;
LABEL_8:

      return _swift_task_switch(v6, v3, v5);
    }

    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 168) = v9;
    if (v9)
    {
      *(v0 + 176) = sub_F07BC();
      sub_F0AEC();
      *(v0 + 184) = sub_F0ADC();
      v3 = sub_F0A6C();
      v5 = v10;
      v6 = sub_975EC;
      goto LABEL_8;
    }
  }

  else
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 136) = v7;
    if (v7)
    {
      sub_F0AEC();
      *(v0 + 192) = sub_F0ADC();
      v3 = sub_F0A6C();
      v5 = v8;
      v6 = sub_9766C;
      goto LABEL_8;
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_97464()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  [v2 didReceiveError:4 forMessageID:v1 forceError:1];

  return _swift_task_switch(sub_974F4, 0, 0);
}

uint64_t sub_974F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v0[22] = sub_F07BC();
    sub_F0AEC();
    v0[23] = sub_F0ADC();
    v3 = sub_F0A6C();

    return _swift_task_switch(sub_975EC, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_975EC()
{
  v1 = v0[22];
  v2 = v0[21];

  [v2 processMessageSendFailure:v1];

  v3 = v0[1];

  return v3();
}

uint64_t sub_9766C()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];

  sub_43EB0(v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_976EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_38B0C;

  return sub_97238(a1, a2, a3, v3);
}

uint64_t RCSOutgoingMessageController.sendMessage(id:executeBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_97838, 0, 0);
}

uint64_t sub_97838()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = *(v0[10] + OBJC_IVAR____TtC3RCS28RCSOutgoingMessageController_operationController);
  v0[5] = type metadata accessor for RCSOutgoingMessageController.OperationID(0);
  v0[6] = sub_98FB0(&qword_128030, &unk_F3F14);
  v5 = sub_37474(v0 + 2);
  v6 = sub_F035C();
  (*(*(v6 - 8) + 16))(v5, v2, v6);
  v7 = swift_allocObject();
  v0[11] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  v8 = *(*v4 + 216);

  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_97A2C;

  return v11(v0 + 2, &unk_F3E80, v7);
}

uint64_t sub_97A2C()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_97B90, 0, 0);
  }

  else
  {
    sub_1EDC(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_97B90()
{
  sub_1EDC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for RCSOutgoingMessageController.OperationID(uint64_t a1)
{
  result = qword_128B40;
  if (!qword_128B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_97C40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_37C54;

  return v6();
}

double RCSOutgoingMessageController.messageSendFailed(_:for:withError:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = sub_F06CC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Logger.rcs.unsafeMutableAddressor();
  (*(v12 + 16))(v14, v15, v11);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = sub_F06AC();
  v20 = sub_F0CCC();

  if (os_log_type_enabled(v19, v20))
  {
    v57 = v20;
    v58 = v10;
    v59 = v4;
    v21 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v60 = v56;
    *v21 = 136446978;
    *(v21 + 4) = sub_3E850(0xD000000000000023, 0x80000000000FF750, &v60);
    *(v21 + 12) = 2080;
    v22 = [v16 labelID];
    if (v22)
    {
      v23 = v22;
      v24 = sub_F07EC();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    v27 = sub_3E850(v24, v26, &v60);
    v26, v28, v29, v30, v31, v32, v33, v34;
    *(v21 + 14) = v27;
    *(v21 + 22) = 2080;
    v35 = [v17 uuid];
    v36 = sub_F07EC();
    v38 = v37;

    v39 = sub_3E850(v36, v38, &v60);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v21 + 24) = v39;
    *(v21 + 32) = 2112;
    *(v21 + 34) = v18;
    v47 = v55;
    *v55 = v18;
    v48 = v18;
    _os_log_impl(&dword_0, v19, v57, "%{public}s simID: %s id: %s error: %@", v21, 0x2Au);
    sub_372B0(v47, &qword_127AF0, &qword_F28E0);

    swift_arrayDestroy();

    (*(v12 + 8))(v14, v11);
    v10 = v58;
    v4 = v59;
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v49 = sub_F0B1C();
  (*(*(v49 - 8) + 56))(v10, 1, 1, v49);
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v18;
  v50[5] = v4;
  v50[6] = v17;
  v51 = v17;
  v52 = v18;
  v53 = v4;
  sub_3CC0C(0, 0, v10, &unk_F3E98, v50);

  return result;
}

uint64_t sub_9814C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  return _swift_task_switch(sub_98170, 0, 0);
}

uint64_t sub_98170()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  sub_98FF4();
  v4 = NSError.init(operationError:)(v3);
  *(v0 + 56) = v4;
  v5 = *(v2 + OBJC_IVAR____TtC3RCS28RCSOutgoingMessageController_operationController);
  v6 = [v1 uuid];
  v7 = sub_F07EC();
  v9 = v8;

  *(v0 + 64) = v9;
  *(v0 + 16) = v4;
  *(v0 + 24) = 1;
  v10 = *(*v5 + 200);
  v11 = v4;
  v14 = (v10 + *v10);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_98324;

  return v14(v7, v9, v0 + 16, &type metadata for ()[8]);
}

uint64_t sub_98324()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);

  v1, v3, v4, v5, v6, v7, v8, v9;

  return _swift_task_switch(sub_98454, 0, 0);
}

uint64_t sub_98454()
{
  v1 = *(v0 + 8);

  return v1();
}

double RCSOutgoingMessageController.messageSendSuccess(_:with:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_F06CC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Logger.rcs.unsafeMutableAddressor();
  (*(v10 + 16))(v12, v13, v9);
  v14 = a1;
  v15 = a2;
  v16 = sub_F06AC();
  v17 = sub_F0CCC();

  if (os_log_type_enabled(v16, v17))
  {
    v50 = v8;
    v51 = v3;
    v18 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v18 = 136446722;
    *(v18 + 4) = sub_3E850(0xD00000000000001BLL, 0x80000000000FEA50, &v52);
    *(v18 + 12) = 2080;
    v19 = [v14 labelID];
    if (v19)
    {
      v20 = v19;
      v21 = sub_F07EC();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0xE000000000000000;
    }

    v24 = sub_3E850(v21, v23, &v52);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v32 = [v15 uuid];
    v33 = sub_F07EC();
    v35 = v34;

    v36 = sub_3E850(v33, v35, &v52);
    v35, v37, v38, v39, v40, v41, v42, v43;
    *(v18 + 24) = v36;
    _os_log_impl(&dword_0, v16, v17, "%{public}s simID: %s id: %s", v18, 0x20u);
    swift_arrayDestroy();

    (*(v10 + 8))(v12, v9);
    v8 = v50;
    v3 = v51;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v44 = sub_F0B1C();
  (*(*(v44 - 8) + 56))(v8, 1, 1, v44);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v3;
  v45[5] = v15;
  v46 = v15;
  v47 = v3;
  sub_3CC0C(0, 0, v8, &unk_F3EB0, v45);

  return result;
}

uint64_t sub_98900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return _swift_task_switch(sub_98920, 0, 0);
}

uint64_t sub_98920()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC3RCS28RCSOutgoingMessageController_operationController);
  v2 = [*(v0 + 40) uuid];
  v3 = sub_F07EC();
  v5 = v4;

  *(v0 + 48) = v5;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v8 = (*(*v1 + 200) + **(*v1 + 200));
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_98AA0;

  return v8(v3, v5, v0 + 16, &type metadata for ()[8]);
}

uint64_t sub_98AA0()
{
  v1 = *(*v0 + 48);
  v11 = *v0;

  v1, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v11 + 8);

  return v9();
}

id RCSOutgoingMessageController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RCSOutgoingMessageController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCSOutgoingMessageController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_98D50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_37C54;

  return sub_9814C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_98E18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_38B0C;

  return sub_98900(a1, v4, v5, v7, v6);
}

uint64_t sub_98F00(uint64_t a1)
{
  result = sub_F035C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_98F6C(uint64_t a1)
{
  result = sub_98FB0(&qword_128B78, &unk_F3EEC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_98FB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RCSOutgoingMessageController.OperationID(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_98FF4()
{
  result = qword_128B80;
  if (!qword_128B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_128B80);
  }

  return result;
}

uint64_t sub_99040(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_128B88, &qword_F3F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_990B0(char *a1)
{
  v3 = sub_F06CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v134 - v8;
  __chkstk_darwin(v10);
  v139 = &v134 - v11;
  __chkstk_darwin(v12);
  v142 = &v134 - v13;
  v14 = type metadata accessor for RCSMessageSendItem.SendState(0);
  __chkstk_darwin(v14 - 8);
  v140 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v1;
  v16 = *(v1 + OBJC_IVAR___RCSServiceSession_state);
  v18 = v16[11];
  v17 = v16[12];
  v141 = v16;
  v19 = (v17 + 32);
  if (v18)
  {
    v143 = v6;
    v138 = v9;
    sub_F12FC();
    v144 = a1;
    v20 = &a1[OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage];
    v21 = *(v20 + 17);

    sub_F089C();
    v21, v22, v23, v24, v25, v26, v27, v28;
    v29 = sub_F132C();
    v30 = 1 << *(v18 + 16);
    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (v31)
    {
      __break(1u);
      return;
    }

    v33 = v32 & v29;
    v34 = sub_F051C();
    *&v152 = v18 + 16;
    *(&v152 + 1) = v18 + 32;
    *&v153 = v33;
    *(&v153 + 1) = v34;
    *&v154 = v35;
    *(&v154 + 1) = v36;
    v155 = 0;
    v37 = sub_F053C();
    v6 = v143;
    if ((v38 & 1) == 0)
    {
      while (1)
      {
        v39 = v19[v37] + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
        v40 = *(v39 + 128) == *(v20 + 16) && *(v39 + 136) == *(v20 + 17);
        if (v40 || (sub_F122C() & 1) != 0)
        {
          break;
        }

        sub_F055C();
        v146 = v152;
        v147 = v153;
        v148 = v154;
        v149 = v155;
        v37 = sub_F053C();
        if (v41)
        {
          goto LABEL_10;
        }
      }

LABEL_28:
      v103 = Logger.retries.unsafeMutableAddressor();
      (*(v4 + 16))(v6, v103, v3);

      v104 = sub_F06AC();
      v105 = sub_F0D0C();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v150 = v107;
        *v106 = 136315138;
        v108 = sub_5FBB8();
        v110 = v109;
        v111 = sub_3E850(v108, v109, &v150);
        v110, v112, v113, v114, v115, v116, v117, v118;
        *(v106 + 4) = v111;
        _os_log_impl(&dword_0, v104, v105, "Ignoring duplicate retry request for %s", v106, 0xCu);
        sub_1EDC(v107);
      }

      (*(v4 + 8))(v6, v3);
      return;
    }

LABEL_10:

    a1 = v144;
    v9 = v138;
  }

  else
  {
    v42 = *(v17 + 16);
    if (v42)
    {
      v43 = &a1[OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage];
      do
      {
        v44 = *v19 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
        v45 = *(v44 + 128) == *(v43 + 16) && *(v44 + 136) == *(v43 + 17);
        if (v45 || (sub_F122C() & 1) != 0)
        {
          goto LABEL_28;
        }

        ++v19;
      }

      while (--v42);
    }
  }

  v46 = a1;
  v47 = *&a1[OBJC_IVAR____TtC3RCS18RCSMessageSendItem_context];
  v48 = objc_opt_self();
  v49 = v47;
  v50 = [v48 sharedManager];
  v51 = sub_F0D8C();

  if (v51 != 2 && (v51 & 1) != 0)
  {
    v52 = [v48 sharedManager];
    v136 = sub_F0D9C();

    v53 = sub_F030C();
    v144 = &v134;
    v54 = *(v53 - 8);
    *&v55 = __chkstk_darwin(v53).n128_u64[0];
    v57 = &v134 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = [v48 sharedManager];
    sub_F0DAC();

    v138 = v54;
    v59 = *(v54 + 2);
    v60 = v140;
    v137 = v57;
    v143 = v53;
    v59(v140, v57, v53);
    v61 = sub_388C8(&qword_127B28, &qword_F2B20);
    (*(*(v61 - 8) + 56))(v60, 0, 4, v61);
    v62 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
    swift_beginAccess();
    sub_93E74(v60, &a1[v62]);
    swift_endAccess();
    v63 = Logger.retries.unsafeMutableAddressor();
    v64 = *(v4 + 16);
    v65 = v142;
    v135 = v63;
    v140 = (v4 + 16);
    v134 = v64;
    (v64)(v142);

    v66 = sub_F06AC();
    v67 = v4;
    v68 = sub_F0D0C();

    if (os_log_type_enabled(v66, v68))
    {
      v69 = v3;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v150 = v71;
      *v70 = 136315394;
      v72 = sub_5FBB8();
      v74 = v73;
      v75 = sub_3E850(v72, v73, &v150);
      v74, v76, v77, v78, v79, v80, v81, v82;
      *(v70 + 4) = v75;
      *(v70 + 12) = 2048;
      *(v70 + 14) = v136;
      _os_log_impl(&dword_0, v66, v68, "Adding message %s to retry set with total retry interval %ld", v70, 0x16u);
      sub_1EDC(v71);

      v3 = v69;
      a1 = v46;

      v83 = *(v67 + 8);
      v83(v142, v3);
    }

    else
    {

      v83 = *(v67 + 8);
      v83(v65, v3);
    }

    v119 = v141;
    v120 = v141[12];
    v150 = v141[11];
    v151 = v120;

    sub_9E760(a1);
    v121 = v151;
    v119[11] = v150;
    v119[12] = v121;

    if (v119[10])
    {
    }

    else
    {
      v122 = v139;
      v134(v139, v135, v3);
      v123 = sub_F06AC();
      v124 = sub_F0D0C();
      v125 = os_log_type_enabled(v123, v124);
      v126 = v136;
      if (v125)
      {
        v127 = swift_slowAlloc();
        *v127 = 134217984;
        *(v127 + 4) = v126;
        _os_log_impl(&dword_0, v123, v124, "Building timer with interval %ld", v127, 0xCu);
      }

      v83(v122, v3);
      v128 = [objc_opt_self() timerWithTimeInterval:v145 target:"fireTimerWithTimer:" selector:0 userInfo:1 repeats:v126];
      v129 = v119[10];
      v119[10] = v128;

      v130 = v119[10];
      if (!v130)
      {
        (*(v138 + 1))(v137, v143);

        return;
      }

      v131 = objc_opt_self();
      v132 = v130;
      v133 = [v131 currentRunLoop];
      [v133 addTimer:v132 forMode:NSDefaultRunLoopMode];
    }

    (*(v138 + 1))(v137, v143);
    return;
  }

  v84 = Logger.retries.unsafeMutableAddressor();
  (*(v4 + 16))(v9, v84, v3);
  v85 = v49;

  v86 = sub_F06AC();
  v87 = sub_F0CEC();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v144 = v3;
    v90 = v89;
    v91 = swift_slowAlloc();
    v150 = v91;
    *v88 = 138412546;
    *(v88 + 4) = v85;
    *v90 = v85;
    *(v88 + 12) = 2080;
    v92 = *&a1[OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128];
    v93 = *&a1[OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136];
    v94 = v85;

    v95 = sub_3E850(v92, v93, &v150);
    v93, v96, v97, v98, v99, v100, v101, v102;
    *(v88 + 14) = v95;
    _os_log_impl(&dword_0, v86, v87, "Retries not enabled for context %@, not retrying message %s).\nEnsure resiliency mode is enabled for this context from Telephony.", v88, 0x16u);
    sub_389D8(v90);

    sub_1EDC(v91);

    (*(v4 + 8))(v9, v144);
  }

  else
  {

    (*(v4 + 8))(v9, v3);
  }

  sub_99C8C();
}

void sub_99C8C()
{
  v1 = v0;
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.retries.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_F06AC();
  v8 = sub_F0D0C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Stopping all retries...", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + OBJC_IVAR___RCSServiceSession_state);
  [*(v10 + 80) invalidate];
  v11 = *(v10 + 80);
  *(v10 + 80) = 0;
}

uint64_t sub_99E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_F06CC();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_F0AEC();
  v5[7] = sub_F0ADC();
  v8 = sub_F0A6C();
  v5[8] = v8;
  v5[9] = v7;

  return _swift_task_switch(sub_99F04, v8, v7);
}

uint64_t sub_99F04(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = Logger.retries.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_F06AC();
  v7 = sub_F0D0C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Retry timer fired", v8, 2u);
  }

  v10 = v1[5];
  v9 = v1[6];
  v11 = v1[4];

  (*(v10 + 8))(v9, v11);
  v12 = swift_task_alloc();
  v1[10] = v12;
  *v12 = v1;
  v12[1] = sub_9A054;
  v13 = v1[3];

  return sub_9A1DC(v13);
}

uint64_t sub_9A054()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_9A174, v3, v2);
}

uint64_t sub_9A174()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9A1DC(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  type metadata accessor for RCSMessageSendItem.SendState(0);
  v2[22] = swift_task_alloc();
  v3 = sub_F06CC();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  sub_F0AEC();
  v2[33] = sub_F0ADC();
  v5 = sub_F0A6C();
  v2[34] = v5;
  v2[35] = v4;

  return _swift_task_switch(sub_9A350, v5, v4);
}

uint64_t sub_9A350()
{
  v198 = v0;
  v1 = *(v0 + 168);
  sub_9D3D0();
  v2 = *(v1 + OBJC_IVAR___RCSServiceSession_state);
  *(v0 + 288) = v2;
  if (!*(*(v2 + 96) + 16))
  {
    v31 = *(v0 + 208);
    v32 = *(v0 + 184);
    v33 = *(v0 + 192);

    v34 = Logger.retries.unsafeMutableAddressor();
    (*(v33 + 16))(v31, v34, v32);
    v35 = sub_F06AC();
    v36 = sub_F0D0C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "No more eligible retries.", v37, 2u);
    }

    v38 = *(v0 + 208);
    v39 = *(v0 + 184);
    v40 = *(v0 + 192);

    (*(v40 + 8))(v38, v39);
    sub_99C8C();
    goto LABEL_29;
  }

  v3 = *(v0 + 256);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = Logger.retries.unsafeMutableAddressor();
  *(v0 + 296) = v7;
  v8 = *(v5 + 16);
  *(v0 + 304) = v8;
  *(v0 + 312) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v4);
  v9 = v6;
  v10 = sub_F06AC();
  v11 = sub_F0D0C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 256);
  v15 = *(v0 + 184);
  v14 = *(v0 + 192);
  if (v12)
  {
    v193 = *(v0 + 184);
    v16 = swift_slowAlloc();
    v187 = v11;
    v17 = swift_slowAlloc();
    v197 = v17;
    *v16 = 136315138;

    v19 = sub_A04D8(v18);
    v189 = v13;
    v21 = v20;

    v22 = sub_3E850(v19, v21, &v197);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v10, v187, "Retry set after removing ineligible messages: %s", v16, 0xCu);
    sub_1EDC(v17);

    v30 = *(v14 + 8);
    v30(v189, v193);
  }

  else
  {

    v30 = *(v14 + 8);
    v30(v13, v15);
  }

  *(v0 + 320) = v30;
  *(v0 + 328) = *(v2 + 88);
  v41 = *(v2 + 96);
  *(v0 + 336) = v41;
  if (*(v41 + 16))
  {
    *(v0 + 360) = &_swiftEmptySetSingleton;
    *(v0 + 368) = &_swiftEmptySetSingleton;
    *(v0 + 344) = &_swiftEmptySetSingleton;
    *(v0 + 352) = 0;
    v42 = *(v0 + 304);
    v43 = *(v0 + 296);
    v44 = *(v0 + 248);
    v45 = *(v0 + 184);
    v46 = *(v41 + 32);
    *(v0 + 376) = v46;

    v42(v44, v43, v45);
    swift_retain_n();
    v47 = sub_F06AC();
    v48 = sub_F0D0C();

    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 320);
    v51 = *(v0 + 248);
    v52 = *(v0 + 184);
    if (v49)
    {
      v53 = *(v0 + 176);
      v190 = *(v0 + 184);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v197 = v55;
      *v54 = 136315138;
      *(v0 + 112) = 0;
      *(v0 + 120) = 0xE000000000000000;

      sub_F0F9C(25);
      *(v0 + 120), v56, v57, v58, v59, v60, v61, v62;
      strcpy((v0 + 96), "originalID: ");
      *(v0 + 109) = 0;
      *(v0 + 110) = -5120;
      v186 = v51;
      v188 = v50;
      v63 = *(v46 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
      v64 = *(v46 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

      v200._countAndFlagsBits = v63;
      v200._object = v64;
      sub_F08CC(v200);
      v64, v65, v66, v67, v68, v69, v70, v71;
      v201._countAndFlagsBits = 0x3A6574617473202CLL;
      v201._object = 0xE900000000000020;
      sub_F08CC(v201);
      v72 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
      swift_beginAccess();
      sub_60478(v46 + v72, v53);
      v202._countAndFlagsBits = sub_6018C();
      object = v202._object;
      sub_F08CC(v202);
      object, v74, v75, v76, v77, v78, v79, v80;
      sub_A06E0(v53);

      v81 = *(v0 + 104);
      v82 = sub_3E850(*(v0 + 96), v81, &v197);
      v81, v83, v84, v85, v86, v87, v88, v89;
      *(v54 + 4) = v82;
      _os_log_impl(&dword_0, v47, v48, "Attempting send for %s", v54, 0xCu);
      sub_1EDC(v55);

      v188(v186, v190);
    }

    else
    {

      v50(v51, v52);
    }

    if (qword_127AD0 != -1)
    {
      swift_once();
    }

    *(v0 + 384) = qword_12FC20;
    v90 = [*(v46 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat) chatIdentifier];
    if (v90)
    {
      v93 = v90;
      v94 = sub_F07EC();
      v96 = v95;

      *(v0 + 392) = v94;
      *(v0 + 400) = v96;
      sub_F039C();
      sub_A0698(&qword_128B90, &type metadata accessor for AsyncMultiQueue, &protocol conformance descriptor for AsyncMultiQueue);
      v97 = sub_F0A6C();
      v99 = v98;
      v90 = sub_9AE2C;
      v91 = v97;
      v92 = v99;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(v90, v91, v92);
  }

  if (&_swiftEmptySetSingleton >> 62)
  {

    v100 = sub_F0EDC();
    &_swiftEmptySetSingleton, v101, v102, v103, v104, v105, v106, v107;
    if (!v100)
    {
      goto LABEL_25;
    }
  }

  else if (!*(&_swiftEmptySetSingleton + 2))
  {
    goto LABEL_25;
  }

  (*(v0 + 304))(*(v0 + 224), *(v0 + 296), *(v0 + 184));
  v108 = sub_F06AC();
  v109 = sub_F0CDC();
  v110 = os_log_type_enabled(v108, v109);
  v111 = *(v0 + 320);
  v112 = *(v0 + 224);
  v113 = *(v0 + 184);
  if (v110)
  {
    v194 = *(v0 + 320);
    v114 = swift_slowAlloc();
    v191 = v112;
    v115 = swift_slowAlloc();
    v197 = v115;
    *v114 = 136315138;
    type metadata accessor for RCSMessageSendItem(0);
    sub_A0698(&qword_128B98, type metadata accessor for RCSMessageSendItem, &unk_F313C);

    v116 = sub_F0C2C();
    v118 = v117;
    &_swiftEmptySetSingleton, v117, v119, v120, v121, v122, v123, v124;
    v125 = sub_3E850(v116, v118, &v197);
    v118, v126, v127, v128, v129, v130, v131, v132;
    *(v114 + 4) = v125;
    _os_log_impl(&dword_0, v108, v109, "Removing sent messages from retry set: %s", v114, 0xCu);
    sub_1EDC(v115);

    v194(v191, v113);
  }

  else
  {

    v111(v112, v113);
  }

LABEL_25:
  v133 = *(v0 + 304);
  v135 = *(v0 + 288);
  v134 = *(v0 + 296);
  v136 = *(v0 + 216);
  v137 = *(v0 + 184);
  v138 = *(v0 + 168);
  v195 = *(v0 + 160);
  v139 = *(v135 + 88);
  v140 = *(v135 + 96);

  sub_9ED8C(v141, v139, v140);
  v143 = v142;
  v145 = v144;
  &_swiftEmptySetSingleton, v144, v146, v147, v148, v149, v150, v151;
  *(v135 + 88) = v143;
  *(v135 + 96) = v145;

  v133(v136, v134, v137);
  v152 = v138;
  v153 = v195;
  v154 = sub_F06AC();
  v155 = sub_F0CDC();

  v156 = os_log_type_enabled(v154, v155);
  v157 = *(v0 + 320);
  if (v156)
  {
    v192 = *(v0 + 184);
    v196 = *(v0 + 216);
    v158 = *(v0 + 160);
    v159 = *(v0 + 320);
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v197 = v161;
    *v160 = 134218242;
    [v158 timeInterval];
    *(v160 + 4) = v162;
    *(v160 + 12) = 2080;

    v164 = sub_A04D8(v163);
    v166 = v165;

    v167 = sub_3E850(v164, v166, &v197);
    v166, v168, v169, v170, v171, v172, v173, v174;
    *(v160 + 14) = v167;
    _os_log_impl(&dword_0, v154, v155, "Messages to retry on next interval in %fs: %s", v160, 0x16u);
    sub_1EDC(v161);

    v159(v196, v192);
  }

  else
  {
    v182 = *(v0 + 216);
    v183 = *(v0 + 184);

    v157(v182, v183);
  }

  &_swiftEmptySetSingleton, v175, v176, v177, v178, v179, v180, v181;
LABEL_29:

  v184 = *(v0 + 8);

  return v184();
}

uint64_t sub_9AE2C()
{
  v1 = *(v0 + 400);
  *(v0 + 424) = sub_F036C() & 1;
  v1, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 272);
  v10 = *(v0 + 280);

  return _swift_task_switch(sub_9AEA8, v9, v10);
}

uint64_t sub_9AEA8()
{
  v209 = v0;
  if (*(v0 + 424))
  {
    v1 = swift_task_alloc();
    *(v0 + 408) = v1;
    *v1 = v0;
    v1[1] = sub_9B9C4;
    v2 = *(v0 + 376);

    return sub_85668(v2);
  }

  (*(v0 + 304))(*(v0 + 232), *(v0 + 296), *(v0 + 184));

  v4 = sub_F06AC();
  v5 = sub_F0CCC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 376);
  v8 = *(v0 + 320);
  v9 = *(v0 + 232);
  v10 = *(v0 + 184);
  if (v6)
  {
    v11 = *(v0 + 176);
    v202 = *(v0 + 184);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v208 = v13;
    *v12 = 136315138;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;

    sub_F0F9C(25);
    *(v0 + 88), v14, v15, v16, v17, v18, v19, v20;
    strcpy((v0 + 64), "originalID: ");
    *(v0 + 77) = 0;
    *(v0 + 78) = -5120;
    v196 = v9;
    v198 = v8;
    v21 = *(v7 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
    v22 = *(v7 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

    v211._countAndFlagsBits = v21;
    v211._object = v22;
    sub_F08CC(v211);
    v22, v23, v24, v25, v26, v27, v28, v29;
    v212._countAndFlagsBits = 0x3A6574617473202CLL;
    v212._object = 0xE900000000000020;
    sub_F08CC(v212);
    v30 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
    swift_beginAccess();
    sub_60478(v7 + v30, v11);
    v213._countAndFlagsBits = sub_6018C();
    object = v213._object;
    sub_F08CC(v213);
    object, v32, v33, v34, v35, v36, v37, v38;
    sub_A06E0(v11);

    v39 = *(v0 + 72);
    v40 = sub_3E850(*(v0 + 64), v39, &v208);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v12 + 4) = v40;
    _os_log_impl(&dword_0, v4, v5, "Skipping retry attempt for %s as we're still waiting for results from previous retry", v12, 0xCu);
    sub_1EDC(v13);

    v198(v196, v202);
  }

  else
  {

    v8(v9, v10);
  }

  v48 = *(v0 + 336);
  v49 = *(v0 + 352) + 1;
  v50 = *(v48 + 16);
  if (v49 == v50)
  {
    v52 = *(v0 + 360);
    v51 = *(v0 + 368);

    if ((v51 & 0xC000000000000001) != 0)
    {

      v53 = sub_F0EDC();
      v51, v54, v55, v56, v57, v58, v59, v60;
      if (!v53)
      {
        goto LABEL_25;
      }
    }

    else if (!*v51[1].IMDTelephonyServiceSession_opaque)
    {
      goto LABEL_25;
    }

    (*(v0 + 304))(*(v0 + 224), *(v0 + 296), *(v0 + 184));
    v118 = sub_F06AC();
    v119 = sub_F0CDC();
    v120 = os_log_type_enabled(v118, v119);
    v121 = *(v0 + 320);
    v122 = *(v0 + 224);
    v123 = *(v0 + 184);
    if (v120)
    {
      v204 = *(v0 + 224);
      v124 = swift_slowAlloc();
      v200 = v121;
      v125 = v52;
      v126 = swift_slowAlloc();
      v208 = v126;
      *v124 = 136315138;
      type metadata accessor for RCSMessageSendItem(0);
      sub_A0698(&qword_128B98, type metadata accessor for RCSMessageSendItem, &unk_F313C);

      v127 = sub_F0C2C();
      v129 = v128;
      v125, v128, v130, v131, v132, v133, v134, v135;
      v136 = sub_3E850(v127, v129, &v208);
      v129, v137, v138, v139, v140, v141, v142, v143;
      *(v124 + 4) = v136;
      _os_log_impl(&dword_0, v118, v119, "Removing sent messages from retry set: %s", v124, 0xCu);
      sub_1EDC(v126);
      v52 = v125;

      v200(v204, v123);
    }

    else
    {

      v121(v122, v123);
    }

LABEL_25:
    v144 = *(v0 + 304);
    v145 = *(v0 + 288);
    v146 = *(v0 + 296);
    v147 = *(v0 + 216);
    v148 = *(v0 + 184);
    v149 = *(v0 + 168);
    v205 = *(v0 + 160);
    v207 = v52;
    v150 = *(v145 + 88);
    v151 = *(v145 + 96);

    sub_9ED8C(v152, v150, v151);
    v154 = v153;
    v156 = v155;
    v52, v155, v157, v158, v159, v160, v161, v162;
    *(v145 + 88) = v154;
    *(v145 + 96) = v156;

    v144(v147, v146, v148);
    v163 = v149;
    v164 = v205;
    v165 = sub_F06AC();
    v166 = sub_F0CDC();

    v167 = os_log_type_enabled(v165, v166);
    v168 = *(v0 + 320);
    if (v167)
    {
      v201 = *(v0 + 184);
      v206 = *(v0 + 216);
      v169 = *(v0 + 160);
      v195 = *(v0 + 320);
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v208 = v171;
      *v170 = 134218242;
      [v169 timeInterval];
      *(v170 + 4) = v172;
      *(v170 + 12) = 2080;

      v174 = sub_A04D8(v173);
      v176 = v175;

      v177 = sub_3E850(v174, v176, &v208);
      v176, v178, v179, v180, v181, v182, v183, v184;
      *(v170 + 14) = v177;
      _os_log_impl(&dword_0, v165, v166, "Messages to retry on next interval in %fs: %s", v170, 0x16u);
      sub_1EDC(v171);

      v195(v206, v201);
    }

    else
    {
      v192 = *(v0 + 216);
      v193 = *(v0 + 184);

      v168(v192, v193);
    }

    v207, v185, v186, v187, v188, v189, v190, v191;

    v194 = *(v0 + 8);

    return v194();
  }

  *(v0 + 352) = v49;
  if (v49 >= v50)
  {
    __break(1u);
  }

  else
  {
    v61 = *(v0 + 304);
    v62 = *(v0 + 296);
    v63 = *(v0 + 248);
    v64 = *(v0 + 184);
    v4 = *(v48 + 8 * v49 + 32);
    *(v0 + 376) = v4;
    v61(v63, v62, v64);
    swift_retain_n();
    v65 = sub_F06AC();
    v66 = sub_F0D0C();

    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 320);
    v69 = *(v0 + 248);
    v70 = *(v0 + 184);
    if (v67)
    {
      v71 = *(v0 + 176);
      v203 = *(v0 + 184);
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v208 = v73;
      *v72 = 136315138;
      *(v0 + 112) = 0;
      *(v0 + 120) = 0xE000000000000000;

      sub_F0F9C(25);
      *(v0 + 120), v74, v75, v76, v77, v78, v79, v80;
      strcpy((v0 + 96), "originalID: ");
      *(v0 + 109) = 0;
      *(v0 + 110) = -5120;
      v197 = v69;
      v199 = v68;
      v81 = *(&v4[16].isa + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage);
      v82 = *(&v4[17].isa + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage);

      v214._countAndFlagsBits = v81;
      v214._object = v82;
      sub_F08CC(v214);
      v82, v83, v84, v85, v86, v87, v88, v89;
      v215._countAndFlagsBits = 0x3A6574617473202CLL;
      v215._object = 0xE900000000000020;
      sub_F08CC(v215);
      v90 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
      swift_beginAccess();
      sub_60478(v4 + v90, v71);
      v216._countAndFlagsBits = sub_6018C();
      v91 = v216._object;
      sub_F08CC(v216);
      v91, v92, v93, v94, v95, v96, v97, v98;
      sub_A06E0(v71);

      v99 = *(v0 + 104);
      v100 = sub_3E850(*(v0 + 96), v99, &v208);
      v99, v101, v102, v103, v104, v105, v106, v107;
      *(v72 + 4) = v100;
      _os_log_impl(&dword_0, v65, v66, "Attempting send for %s", v72, 0xCu);
      sub_1EDC(v73);

      v199(v197, v203);
    }

    else
    {

      v68(v69, v70);
    }

    if (qword_127AD0 == -1)
    {
      goto LABEL_17;
    }
  }

  swift_once();
LABEL_17:
  *(v0 + 384) = qword_12FC20;
  v108 = [*(&v4->isa + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat) chatIdentifier];
  if (v108)
  {
    v111 = v108;
    v112 = sub_F07EC();
    v114 = v113;

    *(v0 + 392) = v112;
    *(v0 + 400) = v114;
    sub_F039C();
    sub_A0698(&qword_128B90, &type metadata accessor for AsyncMultiQueue, &protocol conformance descriptor for AsyncMultiQueue);
    v115 = sub_F0A6C();
    v117 = v116;
    v108 = sub_9AE2C;
    v109 = v115;
    v110 = v117;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v108, v109, v110);
}

uint64_t sub_9B9C4()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_9C818;
  }

  else
  {
    v5 = sub_9BB00;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_9BB00()
{
  v238 = v0;
  (*(v0 + 304))(*(v0 + 240), *(v0 + 296), *(v0 + 184));

  v2 = sub_F06AC();
  v3 = sub_F0D0C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 184);
    v235 = *(v0 + 320);
    v6 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v237[0] = v1;
    *v6 = 136315138;

    v7 = sub_5FBB8();
    v9 = v8;

    v10 = sub_3E850(v7, v9, v237);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "Successfully resent message %s", v6, 0xCu);
    sub_1EDC(v1);

    v235(v4, v5);
  }

  else
  {
    v18 = *(v0 + 320);
    v19 = *(v0 + 240);
    v20 = *(v0 + 184);

    v18(v19, v20);
  }

  isUniquelyReferenced_nonNull_native = *(v0 + 368);
  v22 = *(v0 + 376);
  if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
  {
    if (isUniquelyReferenced_nonNull_native < 0)
    {
      v23 = *(v0 + 368);
    }

    else
    {
      v23 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    }

    isUniquelyReferenced_nonNull_native = sub_F0EEC();

    if (!isUniquelyReferenced_nonNull_native)
    {
      v50 = sub_F0EDC();
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        do
        {
          __break(1u);
LABEL_71:
          sub_9E0F0();
LABEL_21:
          v49 = *v22;
LABEL_38:
          v76 = *(v0 + 376);
          *(v49 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v1;
          *(*(v49 + 48) + 8 * v1) = v76;
          v77 = *(v49 + 16);
          v78 = __OFADD__(v77, 1);
          v79 = v77 + 1;
        }

        while (v78);
        *(v49 + 16) = v79;
      }

      else
      {
        v49 = sub_9D7C4(v23, v50 + 1);
        *(v0 + 128) = v49;
        v51 = *(v49 + 16);
        if (*(v49 + 24) <= v51)
        {
          sub_9DC4C(v51 + 1);
          v49 = *(v0 + 128);
        }

        isUniquelyReferenced_nonNull_native = *(v0 + 368);

        sub_9DEC8(v52, v49);
        isUniquelyReferenced_nonNull_native, v53, v54, v55, v56, v57, v58, v59;
      }

      v61 = v49;
      v60 = v49;
LABEL_41:
      v80 = *(v0 + 336);
      v81 = *(v0 + 352) + 1;
      v82 = *(v80 + 16);
      if (v81 == v82)
      {

        if ((v60 & 0xC000000000000001) != 0)
        {

          v83 = sub_F0EDC();
          v60, v84, v85, v86, v87, v88, v89, v90;
          if (!v83)
          {
            goto LABEL_58;
          }
        }

        else if (!*(v60 + 16))
        {
          goto LABEL_58;
        }

        (*(v0 + 304))(*(v0 + 224), *(v0 + 296), *(v0 + 184));
        v148 = sub_F06AC();
        v149 = sub_F0CDC();
        v150 = os_log_type_enabled(v148, v149);
        v151 = *(v0 + 320);
        v152 = *(v0 + 224);
        v153 = *(v0 + 184);
        if (v150)
        {
          v232 = *(v0 + 224);
          v154 = swift_slowAlloc();
          v229 = v151;
          v155 = v61;
          v156 = swift_slowAlloc();
          v237[0] = v156;
          *v154 = 136315138;
          type metadata accessor for RCSMessageSendItem(0);
          sub_A0698(&qword_128B98, type metadata accessor for RCSMessageSendItem, &unk_F313C);

          v157 = sub_F0C2C();
          v159 = v158;
          v155, v158, v160, v161, v162, v163, v164, v165;
          v166 = sub_3E850(v157, v159, v237);
          v159, v167, v168, v169, v170, v171, v172, v173;
          *(v154 + 4) = v166;
          _os_log_impl(&dword_0, v148, v149, "Removing sent messages from retry set: %s", v154, 0xCu);
          sub_1EDC(v156);
          v61 = v155;

          v229(v232, v153);
        }

        else
        {

          v151(v152, v153);
        }

LABEL_58:
        v174 = *(v0 + 304);
        v175 = *(v0 + 288);
        v176 = *(v0 + 296);
        v177 = *(v0 + 216);
        v178 = *(v0 + 184);
        v179 = *(v0 + 168);
        v233 = *(v0 + 160);
        v236 = v61;
        v180 = *(v175 + 88);
        v181 = *(v175 + 96);

        sub_9ED8C(v182, v180, v181);
        v184 = v183;
        v186 = v185;
        v61, v185, v187, v188, v189, v190, v191, v192;
        *(v175 + 88) = v184;
        *(v175 + 96) = v186;

        v174(v177, v176, v178);
        v193 = v179;
        v194 = v233;
        v195 = sub_F06AC();
        v196 = sub_F0CDC();

        v197 = os_log_type_enabled(v195, v196);
        v198 = *(v0 + 320);
        if (v197)
        {
          v230 = *(v0 + 184);
          v234 = *(v0 + 216);
          v199 = *(v0 + 160);
          v226 = *(v0 + 320);
          v200 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          v237[0] = v201;
          *v200 = 134218242;
          [v199 timeInterval];
          *(v200 + 4) = v202;
          *(v200 + 12) = 2080;

          v204 = sub_A04D8(v203);
          v206 = v205;

          v207 = sub_3E850(v204, v206, v237);
          v206, v208, v209, v210, v211, v212, v213, v214;
          *(v200 + 14) = v207;
          _os_log_impl(&dword_0, v195, v196, "Messages to retry on next interval in %fs: %s", v200, 0x16u);
          sub_1EDC(v201);

          v226(v234, v230);
        }

        else
        {
          v222 = *(v0 + 216);
          v223 = *(v0 + 184);

          v198(v222, v223);
        }

        v236, v215, v216, v217, v218, v219, v220, v221;

        v224 = *(v0 + 8);

        return v224();
      }

      *(v0 + 360) = v61;
      *(v0 + 368) = v60;
      *(v0 + 344) = v49;
      *(v0 + 352) = v81;
      if (v81 >= v82)
      {
        __break(1u);
      }

      else
      {
        v91 = *(v0 + 304);
        v92 = *(v0 + 296);
        v93 = *(v0 + 248);
        v94 = *(v0 + 184);
        isUniquelyReferenced_nonNull_native = *(v80 + 8 * v81 + 32);
        *(v0 + 376) = isUniquelyReferenced_nonNull_native;
        v91(v93, v92, v94);
        swift_retain_n();
        v95 = sub_F06AC();
        v96 = sub_F0D0C();

        v97 = os_log_type_enabled(v95, v96);
        v98 = *(v0 + 320);
        v99 = *(v0 + 248);
        v100 = *(v0 + 184);
        if (v97)
        {
          v101 = *(v0 + 176);
          v231 = *(v0 + 184);
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v237[0] = v103;
          *v102 = 136315138;
          *(v0 + 112) = 0;
          *(v0 + 120) = 0xE000000000000000;

          sub_F0F9C(25);
          *(v0 + 120), v104, v105, v106, v107, v108, v109, v110;
          strcpy((v0 + 96), "originalID: ");
          *(v0 + 109) = 0;
          *(v0 + 110) = -5120;
          v227 = v99;
          v228 = v98;
          v111 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
          v112 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

          v240._countAndFlagsBits = v111;
          v240._object = v112;
          sub_F08CC(v240);
          v112, v113, v114, v115, v116, v117, v118, v119;
          v241._countAndFlagsBits = 0x3A6574617473202CLL;
          v241._object = 0xE900000000000020;
          sub_F08CC(v241);
          v120 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
          swift_beginAccess();
          sub_60478(isUniquelyReferenced_nonNull_native + v120, v101);
          v242._countAndFlagsBits = sub_6018C();
          object = v242._object;
          sub_F08CC(v242);
          object, v122, v123, v124, v125, v126, v127, v128;
          sub_A06E0(v101);

          v129 = *(v0 + 104);
          v130 = sub_3E850(*(v0 + 96), v129, v237);
          v129, v131, v132, v133, v134, v135, v136, v137;
          *(v102 + 4) = v130;
          _os_log_impl(&dword_0, v95, v96, "Attempting send for %s", v102, 0xCu);
          sub_1EDC(v103);

          v228(v227, v231);
        }

        else
        {

          v98(v99, v100);
        }

        if (qword_127AD0 == -1)
        {
          goto LABEL_50;
        }
      }

      swift_once();
LABEL_50:
      *(v0 + 384) = qword_12FC20;
      v138 = [*(isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat) chatIdentifier];
      if (v138)
      {
        v141 = v138;
        v142 = sub_F07EC();
        v144 = v143;

        *(v0 + 392) = v142;
        *(v0 + 400) = v144;
        sub_F039C();
        sub_A0698(&qword_128B90, &type metadata accessor for AsyncMultiQueue, &protocol conformance descriptor for AsyncMultiQueue);
        v145 = sub_F0A6C();
        v147 = v146;
        v138 = sub_9AE2C;
        v139 = v145;
        v140 = v147;
      }

      else
      {
        __break(1u);
      }

      return _swift_task_switch(v138, v139, v140);
    }

    v24 = *(v0 + 368);

    v24, v25, v26, v27, v28, v29, v30, v31;
    *(v0 + 144) = isUniquelyReferenced_nonNull_native;
    type metadata accessor for RCSMessageSendItem(0);
    swift_dynamicCast();
LABEL_26:

    v61 = *(v0 + 360);
    v60 = *(v0 + 368);
    v49 = *(v0 + 344);
    goto LABEL_41;
  }

  sub_F12FC();
  v32 = v22 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
  v33 = *(v22 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

  sub_F089C();
  v33, v34, v35, v36, v37, v38, v39, v40;
  v41 = sub_F132C();
  v42 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
  v1 = v41 & ~v42;
  if ((*(isUniquelyReferenced_nonNull_native + 56 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1))
  {
    v43 = ~v42;
    do
    {
      v44 = *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v1) + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
      v45 = *(v44 + 128) == *(v32 + 16) && *(v44 + 136) == *(v32 + 17);
      if (v45 || (sub_F122C() & 1) != 0)
      {
        goto LABEL_26;
      }

      v1 = (v1 + 1) & v43;
    }

    while (((*(isUniquelyReferenced_nonNull_native + 56 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) != 0);
  }

  v22 = (v0 + 152);
  v46 = *(v0 + 344);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 152) = v46;
  v48 = *(v46 + 16);
  v47 = *(v46 + 24);

  if (v47 > v48)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_71;
    }

    v22 = (v0 + 344);
    goto LABEL_21;
  }

  v62 = v48 + 1;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_9DC4C(v62);
  }

  else
  {
    sub_9E478(v62);
  }

  v49 = *v22;
  sub_F12FC();
  v63 = *(v32 + 17);

  sub_F089C();
  v63, v64, v65, v66, v67, v68, v69, v70;
  v22 = v237;
  v71 = sub_F132C();
  isUniquelyReferenced_nonNull_native = v49 + 56;
  v72 = -1 << *(v49 + 32);
  v1 = v71 & ~v72;
  if (((*(v49 + 56 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
  {
    goto LABEL_38;
  }

  v73 = ~v72;
  v22 = type metadata accessor for RCSMessageSendItem(0);
  while (1)
  {
    v74 = *(*(v49 + 48) + 8 * v1) + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
    v75 = *(v74 + 128) == *(v32 + 16) && *(v74 + 136) == *(v32 + 17);
    if (v75 || (sub_F122C() & 1) != 0)
    {
      break;
    }

    v1 = (v1 + 1) & v73;
    if (((*(isUniquelyReferenced_nonNull_native + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  return sub_F125C();
}

uint64_t sub_9C818()
{
  v188 = v0;
  v1 = *(v0 + 160);
  (*(v0 + 304))(*(v0 + 200), *(v0 + 296), *(v0 + 184));

  v2 = v1;
  swift_errorRetain();
  v3 = sub_F06AC();
  v4 = sub_F0CEC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 376);
  v7 = *(v0 + 320);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  if (v5)
  {
    v173 = *(v0 + 160);
    v181 = *(v0 + 200);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v177 = v9;
    v12 = swift_slowAlloc();
    v187 = v12;
    *v10 = 138412802;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2080;
    v175 = v7;
    v14 = *(v6 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
    v15 = *(v6 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

    v16 = sub_3E850(v14, v15, &v187);
    v15, v17, v18, v19, v20, v21, v22, v23;
    *(v10 + 14) = v16;
    *(v10 + 22) = 2048;
    [v173 timeInterval];
    *(v10 + 24) = v24;
    _os_log_impl(&dword_0, v3, v4, "Failed to retry send with error %@, skipping %s) until next retry interval in %fs)", v10, 0x20u);
    sub_389D8(v11);

    sub_1EDC(v12);

    v175(v181, v177);
  }

  else
  {
    v16 = *(v0 + 192) + 8;

    v7(v8, v9);
  }

  v25 = *(v0 + 336);
  v26 = *(v0 + 352) + 1;
  v27 = *(v25 + 16);
  if (v26 == v27)
  {
    v29 = *(v0 + 360);
    v28 = *(v0 + 368);

    if ((v28 & 0xC000000000000001) != 0)
    {

      v30 = sub_F0EDC();
      v28, v31, v32, v33, v34, v35, v36, v37;
      if (!v30)
      {
        goto LABEL_21;
      }
    }

    else if (!*v28[1].IMDTelephonyServiceSession_opaque)
    {
      goto LABEL_21;
    }

    (*(v0 + 304))(*(v0 + 224), *(v0 + 296), *(v0 + 184));
    v95 = sub_F06AC();
    v96 = sub_F0CDC();
    v97 = os_log_type_enabled(v95, v96);
    v98 = *(v0 + 320);
    v99 = *(v0 + 224);
    v100 = *(v0 + 184);
    if (v97)
    {
      v183 = *(v0 + 224);
      v101 = swift_slowAlloc();
      v179 = v98;
      v102 = v29;
      v103 = swift_slowAlloc();
      v187 = v103;
      *v101 = 136315138;
      type metadata accessor for RCSMessageSendItem(0);
      sub_A0698(&qword_128B98, type metadata accessor for RCSMessageSendItem, &unk_F313C);

      v104 = sub_F0C2C();
      v106 = v105;
      v102, v105, v107, v108, v109, v110, v111, v112;
      v113 = sub_3E850(v104, v106, &v187);
      v106, v114, v115, v116, v117, v118, v119, v120;
      *(v101 + 4) = v113;
      _os_log_impl(&dword_0, v95, v96, "Removing sent messages from retry set: %s", v101, 0xCu);
      sub_1EDC(v103);
      v29 = v102;

      v179(v183, v100);
    }

    else
    {

      v98(v99, v100);
    }

LABEL_21:
    v121 = *(v0 + 304);
    v122 = *(v0 + 288);
    v123 = *(v0 + 296);
    v124 = *(v0 + 216);
    v125 = *(v0 + 184);
    v126 = *(v0 + 168);
    v184 = *(v0 + 160);
    v186 = v29;
    v127 = *(v122 + 88);
    v128 = *(v122 + 96);

    sub_9ED8C(v129, v127, v128);
    v131 = v130;
    v133 = v132;
    v29, v132, v134, v135, v136, v137, v138, v139;
    *(v122 + 88) = v131;
    *(v122 + 96) = v133;

    v121(v124, v123, v125);
    v140 = v126;
    v141 = v184;
    v142 = sub_F06AC();
    v143 = sub_F0CDC();

    v144 = os_log_type_enabled(v142, v143);
    v145 = *(v0 + 320);
    if (v144)
    {
      v180 = *(v0 + 184);
      v185 = *(v0 + 216);
      v146 = *(v0 + 160);
      v174 = *(v0 + 320);
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v187 = v148;
      *v147 = 134218242;
      [v146 timeInterval];
      *(v147 + 4) = v149;
      *(v147 + 12) = 2080;

      v151 = sub_A04D8(v150);
      v153 = v152;

      v154 = sub_3E850(v151, v153, &v187);
      v153, v155, v156, v157, v158, v159, v160, v161;
      *(v147 + 14) = v154;
      _os_log_impl(&dword_0, v142, v143, "Messages to retry on next interval in %fs: %s", v147, 0x16u);
      sub_1EDC(v148);

      v174(v185, v180);
    }

    else
    {
      v169 = *(v0 + 216);
      v170 = *(v0 + 184);

      v145(v169, v170);
    }

    v186, v162, v163, v164, v165, v166, v167, v168;

    v171 = *(v0 + 8);

    return v171();
  }

  *(v0 + 352) = v26;
  if (v26 >= v27)
  {
    __break(1u);
  }

  else
  {
    v38 = *(v0 + 304);
    v39 = *(v0 + 296);
    v40 = *(v0 + 248);
    v41 = *(v0 + 184);
    v16 = *(v25 + 8 * v26 + 32);
    *(v0 + 376) = v16;
    v38(v40, v39, v41);
    swift_retain_n();
    v42 = sub_F06AC();
    v43 = sub_F0D0C();

    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 320);
    v46 = *(v0 + 248);
    v47 = *(v0 + 184);
    if (v44)
    {
      v48 = *(v0 + 176);
      v182 = *(v0 + 184);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v187 = v50;
      *v49 = 136315138;
      *(v0 + 112) = 0;
      *(v0 + 120) = 0xE000000000000000;

      sub_F0F9C(25);
      *(v0 + 120), v51, v52, v53, v54, v55, v56, v57;
      strcpy((v0 + 96), "originalID: ");
      *(v0 + 109) = 0;
      *(v0 + 110) = -5120;
      v176 = v46;
      v178 = v45;
      v58 = *(v16 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 128);
      v59 = *(v16 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

      v190._countAndFlagsBits = v58;
      v190._object = v59;
      sub_F08CC(v190);
      v59, v60, v61, v62, v63, v64, v65, v66;
      v191._countAndFlagsBits = 0x3A6574617473202CLL;
      v191._object = 0xE900000000000020;
      sub_F08CC(v191);
      v67 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
      swift_beginAccess();
      sub_60478(v16 + v67, v48);
      v192._countAndFlagsBits = sub_6018C();
      object = v192._object;
      sub_F08CC(v192);
      object, v69, v70, v71, v72, v73, v74, v75;
      sub_A06E0(v48);

      v76 = *(v0 + 104);
      v77 = sub_3E850(*(v0 + 96), v76, &v187);
      v76, v78, v79, v80, v81, v82, v83, v84;
      *(v49 + 4) = v77;
      _os_log_impl(&dword_0, v42, v43, "Attempting send for %s", v49, 0xCu);
      sub_1EDC(v50);

      v178(v176, v182);
    }

    else
    {

      v45(v46, v47);
    }

    if (qword_127AD0 == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  *(v0 + 384) = qword_12FC20;
  v85 = [*(v16 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat) chatIdentifier];
  if (v85)
  {
    v88 = v85;
    v89 = sub_F07EC();
    v91 = v90;

    *(v0 + 392) = v89;
    *(v0 + 400) = v91;
    sub_F039C();
    sub_A0698(&qword_128B90, &type metadata accessor for AsyncMultiQueue, &protocol conformance descriptor for AsyncMultiQueue);
    v92 = sub_F0A6C();
    v94 = v93;
    v85 = sub_9AE2C;
    v86 = v92;
    v87 = v94;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v85, v86, v87);
}

void sub_9D3D0()
{
  v1 = *(v0 + OBJC_IVAR___RCSServiceSession_state);
  v2 = *(v1 + 96);
  v20 = *(v1 + 88);
  v21 = v2;
  v4 = (v2 + 16);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    while (1)
    {
      v19 = *(v2 + 8 * v5 + 32);

      v6 = sub_9FBFC(&v19, 0, 1);

      if (v6)
      {
        break;
      }

      if (v3 == ++v5)
      {
        goto LABEL_5;
      }
    }

    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_43;
    }

    v8 = *v4;
    if (v7 != *v4)
    {
      v9 = v5 + 5;
      while (1)
      {
        v12 = v9 - 4;
        if (v9 - 4 >= v8)
        {
          break;
        }

        v19 = *(v2 + 8 * v9);

        v13 = sub_9FBFC(&v19, 0, 1);

        if ((v13 & 1) == 0)
        {
          if (v12 != v5)
          {
            if ((v5 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v5 >= *v4)
            {
              goto LABEL_36;
            }

            if (v12 >= *v4)
            {
              goto LABEL_37;
            }

            v14 = *(v2 + 32 + 8 * v5);
            v15 = *(v2 + 8 * v9);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_9FBE8(v2);
              v21 = v2;
            }

            if (v5 >= *(v2 + 16))
            {
              goto LABEL_38;
            }

            *(v2 + 8 * v5 + 32) = v15;

            sub_F100C();
            v16 = v21;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_9FBE8(v16);
              v21 = v16;
            }

            if (v12 >= *(v16 + 16))
            {
              goto LABEL_39;
            }

            *(v16 + 8 * v9) = v14;

            sub_F100C();
            v2 = v21;
          }

          ++v5;
        }

        v4 = (v2 + 16);
        v8 = *(v2 + 16);
        v10 = v9 + 1;
        v11 = v9 - 3;
        ++v9;
        if (v11 == v8)
        {
          v7 = v10 - 4;
          goto LABEL_25;
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
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_25:
    if (v7 < v5)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);

      sub_9EA98();
      __break(1u);
      return;
    }
  }

  else
  {
LABEL_5:
    v7 = *v4;
    v5 = *v4;
  }

  if (__OFADD__(v7, v5 - v7))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v2;
  if (!isUniquelyReferenced_nonNull_native || v5 > *(v2 + 24) >> 1)
  {
    sub_F103C();
  }

  sub_A0414(v5, v7, 0);
  sub_F100C();
  sub_9EA98();
  v18 = v21;
  *(v1 + 88) = v20;
  *(v1 + 96) = v18;
}

void *sub_9D6B8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_388C8(&qword_128288, &qword_F3460);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_9D73C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_388C8(&qword_128BB8, &unk_F41E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

Swift::Int sub_9D7C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_388C8(&qword_128BA0, &qword_F3F50);
    v2 = sub_F0F7C();
    v23 = v2;
    sub_F0ECC();
    if (sub_F0EFC())
    {
      type metadata accessor for RCSMessageSendItem(0);
      do
      {
        swift_dynamicCast();
        v17 = *(v2 + 16);
        if (*(v2 + 24) <= v17)
        {
          sub_9DC4C(v17 + 1);
        }

        v2 = v23;
        sub_F12FC();
        v3 = *(v22 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

        sub_F089C();
        v3, v4, v5, v6, v7, v8, v9, v10;
        result = sub_F132C();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_F0EFC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_9D9EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_388C8(&qword_128BC8, &qword_F3F60);
  v4 = sub_F0F6C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_F12FC();
      sub_F089C();
      v21 = sub_F132C();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_9DC4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_388C8(&qword_128BA0, &qword_F3F50);
  v4 = sub_F0F6C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_F12FC();
      v18 = *(v17 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

      sub_F089C();
      v18, v19, v20, v21, v22, v23, v24, v25;
      v26 = sub_F132C();
      v27 = -1 << *(v5 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
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

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero((v3 + 56), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v34;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_9DEC8(uint64_t a1, uint64_t a2)
{
  sub_F12FC();
  v4 = *(a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

  sub_F089C();
  v4, v5, v6, v7, v8, v9, v10, v11;
  sub_F132C();
  result = sub_F0EBC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_9DF94()
{
  v1 = v0;
  sub_388C8(&qword_128BC8, &qword_F3F60);
  v2 = *v0;
  v3 = sub_F0F5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_9E0F0()
{
  v1 = v0;
  sub_388C8(&qword_128BA0, &qword_F3F50);
  v2 = *v0;
  v3 = sub_F0F5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_9E240(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_388C8(&qword_128BC8, &qword_F3F60);
  v4 = sub_F0F6C();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_F12FC();

      sub_F089C();
      v20 = sub_F132C();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_9E478(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_388C8(&qword_128BA0, &qword_F3F50);
  v4 = sub_F0F6C();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_F12FC();
      v17 = *(v16 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

      sub_F089C();
      v17, v18, v19, v20, v21, v22, v23, v24;
      v25 = sub_F132C();
      v26 = -1 << *(v5 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v11 + 8 * v28);
          if (v32 != -1)
          {
            v12 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
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

        v2 = v1;
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void *sub_9E6CC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v2 = a1;
  v3 = sub_F10DC();
  if (!v3)
  {
LABEL_7:
    v2, v4, v5, v6, v7, v8, v9, v10;
    return _swiftEmptyArrayStorage;
  }

  v11 = v3;
  v12 = sub_9D73C(v3, 0);
  v13 = sub_9FA68((v12 + 4), v11, v2);
  v2 = v14;
  v13, v15, v14, v16, v17, v18, v19, v20;
  result = v12;
  if (v2 != v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

Swift::Int sub_9E760(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v3 + 32;
  if (*v1)
  {
    sub_F12FC();
    v6 = a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
    v7 = *(a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

    sub_F089C();
    v7, v8, v9, v10, v11, v12, v13, v14;
    result = sub_F132C();
    v16 = 1 << *(v4 + 16);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v17)
    {
      __break(1u);
      return result;
    }

    v31 = v18 & result;
    sub_F051C();
    v19 = sub_F053C();
    if (v20)
    {
      v21 = v31;
LABEL_21:

      goto LABEL_22;
    }

    v27 = v19;
    while (1)
    {
      v28 = *(v5 + 8 * v27) + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
      v29 = *(v28 + 128) == *(v6 + 128) && *(v28 + 136) == *(v6 + 136);
      if (v29 || (sub_F122C() & 1) != 0)
      {
        break;
      }

      sub_F055C();
      v21 = v31;
      v27 = sub_F053C();
      if (v30)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v22 = *(v3 + 16);
    if (!v22)
    {
LABEL_13:
      v21 = 0;
LABEL_22:
      sub_9E960(a1, v21);
      return 1;
    }

    v23 = 0;
    v24 = a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
    while (1)
    {
      v25 = *(v5 + 8 * v23) + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
      v26 = *(v25 + 128) == *(v24 + 128) && *(v25 + 136) == *(v24 + 136);
      if (v26 || (sub_F122C() & 1) != 0)
      {
        break;
      }

      if (v22 == ++v23)
      {
        goto LABEL_13;
      }
    }
  }

  return 0;
}

void sub_9E960(uint64_t a1, uint64_t a2)
{

  sub_F0FFC();
  sub_F104C();
  sub_F105C();
  sub_F100C();
  v3 = *(v2[1] + 16);
  if (*v2)
  {
    swift_beginAccess();
    if (sub_F056C() >= v3)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v5 = *v2;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v5)
        {
LABEL_12:
          __break(1u);
          return;
        }

        v6 = sub_F057C();

        *v2 = v6;
        v5 = v6;
      }

      if (v5)
      {
        sub_F052C();
        return;
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v3 < 0x10)
  {
    return;
  }

  sub_9EA98();
}

void sub_9EA98()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_F058C();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_9EB38(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
}

uint64_t sub_9EB38(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = sub_F058C();
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 < 5)
  {
    return v9;
  }

  result = sub_F059C();
  v25 = result;
  if (!v6)
  {
    return v25;
  }

  if (v6 >= 1)
  {
    v13 = 0;
    v14 = (result + 16);
    while (1)
    {
      v15 = *(a1 + 32 + 8 * v13);
      sub_F12FC();
      v16 = *(v15 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

      sub_F089C();
      v16, v17, v18, v19, v20, v21, v22, v23;
      result = sub_F132C();
      if (__OFSUB__(1 << *v14, 1))
      {
        break;
      }

      v24 = sub_F051C();

      if (v24)
      {
        while (1)
        {
          sub_F055C();
        }
      }

      sub_F054C();
      if (++v13 == v6)
      {
        return v25;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_9ECCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_37C54;

  return sub_99E10(a1, v4, v5, v7, v6);
}

void sub_9ED8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    __chkstk_darwin(a1);
    v16 = 0;
    v17 = 0;
    __chkstk_darwin((v3 + 63) >> 6);
    sub_F05AC();
  }

  else
  {
    if (!(_swiftEmptyArrayStorage >> 62) || (v4 = sub_F10DC()) == 0 || (v5 = v4, v6 = sub_9D73C(v4, 0), v7 = sub_9FA68((v6 + 4), v5, _swiftEmptyArrayStorage), v9 = v8, v7, v10, v8, v11, v12, v13, v14, v15, v9 == v5))
    {

      return;
    }

    __break(1u);
  }

  __break(1u);

  sub_A0794(v16, v17);
  __break(1u);
}

unint64_t sub_9EF40(unint64_t *a1, uint64_t a2, void *a3, Swift::UInt a4)
{
  v6 = a3[2];
  sub_F05DC(v6);
  if ((a4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_F0ECC();
    type metadata accessor for RCSMessageSendItem(0);
    sub_A0698(&qword_128B98, type metadata accessor for RCSMessageSendItem, &unk_F313C);
    sub_F0C4C();
    a4 = v51;
    v7 = v52;
    v8 = v53;
    v9 = v54;
    v10 = v55;
  }

  else
  {
    v11 = -1 << *(a4 + 32);
    v7 = a4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a4 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  v15 = a3 + 4;
  v16 = a2;
  v45 = v6;
  v48 = v14;
  v47 = v7;
  if ((a4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (!sub_F0EFC() || (type metadata accessor for RCSMessageSendItem(0), swift_dynamicCast(), (v17 = v50) == 0))
  {
LABEL_45:
    sub_66138(a4);
    v40 = *a1;
    v41 = a1[1];
    v42 = variable initialization expression of RCSServiceSession.DispositionInfo.group();

    return sub_9F478(v40, v41, v45, 0, v42, v16, a3, v43);
  }

  while (1)
  {
    if (v16)
    {
      v56 = v10;
      v20 = a4;
      a4 = v6;
      sub_F12FC();
      v21 = v16;
      v22 = v17 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
      v23 = *(v17 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

      sub_F089C();
      v23, v24, v25, v26, v27, v28, v29, v30;
      sub_F132C();
      if (__OFSUB__(1 << *(v21 + 16), 1))
      {
        goto LABEL_49;
      }

      sub_F051C();
      v31 = sub_F053C();
      v50 = a2 + 16;
      v6 = a4;
      a4 = v20;
      v7 = v47;
      if (v32)
      {
LABEL_26:

        v14 = v48;
        v16 = a2;
        v10 = v56;
        goto LABEL_41;
      }

      v33 = v31;
      while (1)
      {
        v34 = v15[v33] + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
        v35 = *(v34 + 128) == *(v22 + 128) && *(v34 + 136) == *(v22 + 136);
        if (v35 || (sub_F122C() & 1) != 0)
        {
          break;
        }

        sub_F055C();
        v33 = sub_F053C();
        if (v36)
        {
          goto LABEL_26;
        }
      }

      v16 = a2;

      v14 = v48;
      if ((v33 & 0x8000000000000000) != 0)
      {
LABEL_40:
        v10 = v56;
        goto LABEL_41;
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_41;
      }

      v56 = v10;
      v33 = 0;
      v37 = v17 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
      while (1)
      {
        v38 = v15[v33] + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage;
        v39 = *(v38 + 128) == *(v37 + 128) && *(v38 + 136) == *(v37 + 136);
        if (v39 || (sub_F122C() & 1) != 0)
        {
          break;
        }

        if (v6 == ++v33)
        {
          v16 = a2;
          goto LABEL_40;
        }
      }

      v16 = a2;
    }

    if (!sub_F05BC(v33))
    {
      goto LABEL_40;
    }

    v10 = v56;
    if (v45 == 1)
    {
      goto LABEL_50;
    }

    --v45;
LABEL_41:

    if ((a4 & 0x8000000000000000) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18 = v9;
    v19 = v10;
    if (!v10)
    {
      break;
    }

LABEL_15:
    v10 = (v19 - 1) & v19;
    v17 = *(*(a4 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v19)))));

    if (!v17)
    {
      goto LABEL_45;
    }
  }

  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_45;
    }

    v19 = *(v7 + 8 * v9);
    ++v18;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  sub_9E6CC(_swiftEmptyArrayStorage);

  sub_66138(a4);
  return 0;
}

void sub_9F424(uint64_t a1, uint64_t *a2, void (*a3)(__int128 *__return_ptr, uint64_t))
{
  a3(&v7, a1);
  if (!v3)
  {
    v5 = *a2;
    v6 = a2[1];
    *a2 = v7;
    sub_A0794(v5, v6);
  }
}

unint64_t sub_9F478(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7, __n128 a8)
{
  v9 = a6;
  v10 = a5;
  if (a4)
  {
    if (result && a2)
    {
      a3 = 0;
      v11 = 8 * a2;
      v12 = result;
      while (1)
      {
        a8.n128_u64[0] = vcnt_s8(*v12);
        a8.n128_u16[0] = vaddlv_u8(a8.n128_u64[0]);
        v13 = __OFADD__(a3, a8.n128_u32[0]);
        a3 += a8.n128_u32[0];
        if (v13)
        {
          break;
        }

        ++v12;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_14;
  }

LABEL_7:
  if (!a3)
  {
LABEL_14:
    sub_9E6CC(_swiftEmptyArrayStorage);
    sub_9F840(v10, 0, v17);

    return 0;
  }

  if (a3 != a7[2])
  {
    v18 = a3 + a5;
    if (__OFADD__(a3, a5))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sub_9E6CC(_swiftEmptyArrayStorage);
    sub_9F840(v18, 0, v19);
    v10 = 0;
    v23 = 0;
    goto LABEL_20;
  }

  if (a6)
  {
    v14 = a3;
    swift_beginAccess();
    v15 = sub_F056C();
    a3 = v14;
    v16 = v15 - v14;
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v16 = 15 - a3;
  if (__OFSUB__(15, a3))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_F05CC();
    if ((v20 & 1) == 0)
    {
      while ((result & 0x8000000000000000) == 0)
      {
        if (result >= a7[2])
        {
          goto LABEL_29;
        }

        sub_9F684(v21);

        result = sub_F05CC();
        if (v22)
        {
          v10 = v23;
          goto LABEL_25;
        }
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_25:

    return v10;
  }

LABEL_11:
  if (v16 >= v10)
  {
    return v9;
  }

  result = a3 + v10;
  if (!__OFADD__(a3, v10))
  {
    sub_9F840(result, 0, a8);
    return v9;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_9F684(uint64_t a1)
{

  sub_F0FFC();
  sub_F104C();
  sub_F105C();
  sub_F100C();
  v3 = *(v1[1] + 16);
  if (!*v1)
  {
    if (v3 < 0x10)
    {
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if (sub_F056C() < v3)
  {
LABEL_12:
    sub_9EA98();
    return;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v5 = *v1;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v5)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v6 = sub_F057C();

    *v1 = v6;
    v5 = v6;
  }

  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_F12FC();
  v7 = *(a1 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage + 136);

  sub_F089C();
  v7, v8, v9, v10, v11, v12, v13, v14;
  sub_F132C();
  if (__OFSUB__(1 << *(v5 + 16), 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (sub_F051C())
  {
    while (1)
    {
      sub_F055C();
    }
  }

  sub_F054C();
}

void sub_9F840(uint64_t a1, char a2, __n128 a3)
{
  if (a1 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = v3;
  sub_F102C();
  v6 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    v7 = *(v6 + 16) & 0x3FLL;
    v8 = sub_F058C();
    v9 = v8;
    if ((a2 & 1) == 0)
    {
      swift_beginAccess();
      v8 = v9;
      v9 = *(v6 + 24) & 0x3FLL;
    }
  }

  else
  {
    v8 = sub_F058C();
    v7 = 0;
    if (a2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = v4[1];
  if (v7 < v8)
  {
    if (v9 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v9;
    }

LABEL_23:
    v15 = sub_9EB38(v10, v11, 0, v9);

    *v4 = v15;
    return;
  }

  if (v9 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  v13 = sub_F058C();
  if (v13 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if (v14 < v7)
  {
    if (v9 <= v14)
    {
      v11 = v14;
    }

    else
    {
      v11 = v9;
    }

    goto LABEL_23;
  }

  if (!v6 || (swift_isUniquelyReferenced_native() & 1) != 0)
  {
    v16 = *v4;
    if (*v4)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v9)
    {
      return;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!*v4)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v16 = sub_F057C();

  *v4 = v16;
  if (!v16)
  {
    goto LABEL_32;
  }

LABEL_28:
  swift_beginAccess();
  if ((*(v16 + 24) & 0x3FLL) != v9)
  {
    *(v16 + 24) = *(v16 + 24) & 0xFFFFFFFFFFFFFFC0 | v9 & 0x3F;
  }
}

uint64_t (*sub_9F9E0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_F0FCC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_9FA60;
  }

  __break(1u);
  return result;
}

uint64_t sub_9FA68(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_F10DC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_F10DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_A07D8();
          for (i = 0; i != v6; ++i)
          {
            sub_388C8(&qword_128BA8, &qword_F3F58);
            v9 = sub_9F9E0(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for RCSMessageSendItem(0);
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

uint64_t sub_9FBFC(uint64_t *a1, int a2, int a3)
{
  LODWORD(v100) = a3;
  v98 = a2;
  v107 = sub_F06CC();
  v102 = *(v107 - 8);
  __chkstk_darwin(v107);
  v97 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v99 = &v92 - v6;
  v7 = type metadata accessor for RCSMessageSendItem.SendState(0);
  __chkstk_darwin(v7 - 8);
  v96 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v101 = (&v92 - v10);
  __chkstk_darwin(v11);
  v13 = &v92 - v12;
  v14 = *a1;
  v15 = sub_F030C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
  swift_beginAccess();
  v104 = v19;
  v105 = v14;
  sub_60478(v14 + v19, v13);
  v20 = sub_388C8(&qword_127B28, &qword_F2B20);
  v94 = *(v20 - 8);
  v21 = *(v94 + 48);
  v103 = v20;
  v22 = v21(v13, 4);
  v95 = v16;
  if (v22)
  {
    v23 = v15;
    v24 = sub_A06E0(v13);
  }

  else
  {
    v25 = (*(v16 + 32))(&v92 - v18, v13, v15);
    v93 = &v92;
    __chkstk_darwin(v25);
    sub_F02DC();
    sub_A083C(&qword_128BC0, &protocol conformance descriptor for Date);
    v26 = sub_F07AC();
    v27 = *(v16 + 8);
    v27(&v92 - v18, v15);
    v23 = v15;
    v24 = (v27)(&v92 - v18, v15);
    if ((v26 & 1) == 0)
    {
LABEL_12:
      v50 = v98;
      return v50 & 1;
    }
  }

  __chkstk_darwin(v24);
  v28 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = &v92 - v28;
  v30 = v105;
  v31 = v101;
  sub_60478(v105 + v104, v101);
  if (!(v21)(v31, 4, v103))
  {
    v100 = &v92;
    v51 = v95;
    v52 = v23;
    (*(v95 + 32))(&v92 - v28, v31, v23);
    v53 = Logger.retries.unsafeMutableAddressor();
    v54 = v102;
    v55 = v97;
    v56 = (*(v102 + 16))(v97, v53, v107);
    v101 = &v92;
    v57 = __chkstk_darwin(v56);
    v58 = &v92 - v28;
    (*(v51 + 16))(&v92 - v28, &v92 - v28, v52, v57);

    v59 = sub_F06AC();
    v60 = sub_F0CCC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v93 = v59;
      v62 = v61;
      v99 = swift_slowAlloc();
      v106[0] = v99;
      *v62 = 136315394;

      v63 = sub_5FBB8();
      v65 = v64;

      v66 = sub_3E850(v63, v65, v106);
      v65, v67, v68, v69, v70, v71, v72, v73;
      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      sub_A083C(&qword_128270, &protocol conformance descriptor for Date);
      v74 = sub_F11EC();
      v76 = v75;
      v77 = *(v51 + 8);
      v77(v58);
      v78 = sub_3E850(v74, v76, v106);
      v79 = v76;
      v30 = v105;
      v79, v80, v81, v82, v83, v84, v85, v86;
      *(v62 + 14) = v78;
      v87 = v93;
      _os_log_impl(&dword_0, v93, v60, "MessageSendItem %s is no longer eligible as of %s. Marking finalRetry.", v62, 0x16u);
      swift_arrayDestroy();

      (*(v54 + 8))(v97, v107);
      (v77)(v29, v52);
    }

    else
    {

      v88 = *(v51 + 8);
      v88(v58, v52);
      (*(v54 + 8))(v55, v107);
      v88(v29, v52);
    }

    v89 = v96;
    (*(v94 + 56))(v96, 2, 4, v103);
    v90 = v104;
    swift_beginAccess();
    sub_93E74(v89, v30 + v90);
    swift_endAccess();
    goto LABEL_12;
  }

  sub_A06E0(v31);
  v32 = Logger.retries.unsafeMutableAddressor();
  v33 = v102;
  v34 = v99;
  (*(v102 + 16))(v99, v32, v107);

  v35 = sub_F06AC();
  v36 = sub_F0CCC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v106[0] = v38;
    *v37 = 136315138;

    v39 = sub_5FBB8();
    v41 = v40;

    v42 = sub_3E850(v39, v41, v106);
    v41, v43, v44, v45, v46, v47, v48, v49;
    *(v37 + 4) = v42;
    _os_log_impl(&dword_0, v35, v36, "MessageSendItem %s has failed all retries, or is otherwise invalid.", v37, 0xCu);
    sub_1EDC(v38);
  }

  (*(v33 + 8))(v34, v107);
  v50 = v100;
  return v50 & 1;
}

unint64_t sub_A0414(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  type metadata accessor for RCSMessageSendItem(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_A04D8(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v3 = a1[4];

    sub_388C8(&qword_127F78, &qword_F2EB8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_F2C60;
    v5 = type metadata accessor for RCSMessageSendItem(0);
    *(v4 + 56) = v5;
    *(v4 + 32) = v3;

    sub_F0F0C();
    v4, v6, v7, v8, v9, v10, v11, v12;

    v13 = v1 - 1;
    if (v1 != 1)
    {
      v14 = a1 + 5;
      do
      {
        v15 = *v14++;

        v25._countAndFlagsBits = 8236;
        v25._object = 0xE200000000000000;
        sub_F08CC(v25);
        sub_388C8(&qword_127F78, &qword_F2EB8);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_F2C60;
        *(v16 + 56) = v5;
        *(v16 + 32) = v15;

        sub_F0F0C();
        v16, v17, v18, v19, v20, v21, v22, v23;

        --v13;
      }

      while (v13);
    }
  }

  v26._countAndFlagsBits = 93;
  v26._object = 0xE100000000000000;
  sub_F08CC(v26);
  return 91;
}

uint64_t sub_A0698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A06E0(uint64_t a1)
{
  v2 = type metadata accessor for RCSMessageSendItem.SendState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_A073C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_9EF40(a1, *(v2 + 16), *(v2 + 24), **(v2 + 32));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

double sub_A0794(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_A07D8()
{
  result = qword_128BB0;
  if (!qword_128BB0)
  {
    sub_3CB70(&qword_128BA8, &qword_F3F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128BB0);
  }

  return result;
}

uint64_t sub_A083C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_F030C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RCSServiceSession.DispositionInfo.init(type:for:to:encrypted:group:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void sub_A0894(uint64_t a1, void *a2)
{
  v98 = a1;
  v3 = sub_F06CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v94 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v95 = &v93 - v7;
  __chkstk_darwin(v8);
  v10 = &v93 - v9;
  v11 = 0;
  if (a2[3])
  {
    v11 = [objc_allocWithZone(CTLazuliSecurity) init];
  }

  v12 = Logger.rcs.unsafeMutableAddressor();
  v96 = v4;
  v13 = *(v4 + 16);
  v99 = v3;
  v13(v10, v12, v3);
  v14 = v11;
  v15 = sub_F06AC();
  v16 = sub_F0CCC();
  v101 = v14;

  v17 = os_log_type_enabled(v15, v16);
  v100 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v101;
    *(v18 + 4) = v101;
    *v19 = v11;
    v21 = v20;
    _os_log_impl(&dword_0, v15, v16, "Sending with encryption: %@", v18, 0xCu);
    sub_372B0(v19, &qword_127AF0, &qword_F28E0);
    a2 = v100;
  }

  v22 = v99;
  v96 = *(v96 + 8);
  (v96)(v10, v99);
  v23 = a2[4];
  v104 = v23;
  if (v23)
  {
    v24 = v95;
    v13(v95, v12, v22);
    v25 = a2[1];
    v26 = a2[2];
    sub_37380(&v104, &v103, &qword_128C28, &unk_F41F0);
    v27 = v25;
    v28 = v26;
    v29 = sub_F06AC();
    v30 = sub_F0CCC();
    v93 = v28;

    v94 = v27;
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 136315138;
      v102 = *a2;
      v103 = v32;
      type metadata accessor for CTLazuliMessageDispositionNotificationType(0);
      v33 = sub_F083C();
      v35 = v34;
      v36 = sub_3E850(v33, v34, &v103);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v31 + 4) = v36;
      _os_log_impl(&dword_0, v29, v30, "Sending group disposition %s", v31, 0xCu);
      sub_1EDC(v32);

      (v96)(v24, v99);
    }

    else
    {

      (v96)(v24, v22);
    }

    v63 = *(*(v97 + OBJC_IVAR___RCSServiceSession_state) + 16);
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v64 = sub_F035C();
    v65 = *(v64 - 8);
    __chkstk_darwin(v64);
    v67 = &v93 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = v63;
    sub_F034C();
    v69 = sub_F032C();
    v71 = v70;
    (*(v65 + 8))(v67, v64);
    v72 = CTLazuliMessageID.init(uuid:)(v69, v71);
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v73 = 0;
    if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
    {
      v73 = v101;
    }

    v74 = *v100;
    v103 = 0;
    v75 = [v68 sendGroupDispositionNotificationMessage:v98 toGroup:v23 to:v93 withMessageID:v72 withDisposition:v74 forMessageID:v94 withSecurity:v73 withError:&v103];

    if (!v75)
    {
      v77 = v103;
      sub_F015C();

      swift_willThrow();
      sub_372B0(&v104, &qword_128C28, &unk_F41F0);
      return;
    }

    v76 = v103;
    sub_372B0(&v104, &qword_128C28, &unk_F41F0);
    goto LABEL_21;
  }

  v44 = v94;
  v13(v94, v12, v22);
  v45 = a2[2];
  v46 = a2[1];
  v47 = v45;
  v48 = sub_F06AC();
  v49 = sub_F0CCC();

  v95 = v46;
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 136315138;
    v102 = *a2;
    v103 = v51;
    type metadata accessor for CTLazuliMessageDispositionNotificationType(0);
    v52 = sub_F083C();
    v54 = v53;
    v55 = sub_3E850(v52, v53, &v103);
    v54, v56, v57, v58, v59, v60, v61, v62;
    *(v50 + 4) = v55;
    _os_log_impl(&dword_0, v48, v49, "Sending 1:1 disposition %s", v50, 0xCu);
    sub_1EDC(v51);

    (v96)(v44, v99);
  }

  else
  {

    (v96)(v44, v22);
  }

  v78 = *(*(v97 + OBJC_IVAR___RCSServiceSession_state) + 16);
  sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
  v79 = sub_F035C();
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v82 = &v93 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v78;
  sub_F034C();
  v84 = sub_F032C();
  v86 = v85;
  (*(v80 + 8))(v82, v79);
  v87 = CTLazuliMessageID.init(uuid:)(v84, v86);
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  v88 = 0;
  if ((static NSUserDefaults.forceEncryption.getter() & 1) == 0)
  {
    v88 = v101;
  }

  v89 = *v100;
  v103 = 0;
  v90 = [v83 sendDispositionNotificationMessage:v98 to:v47 withMessageID:v87 withDisposition:v89 forMessageID:v95 withSecurity:v88 withError:&v103];

  if (v90)
  {
    v91 = v103;
LABEL_21:

    return;
  }

  v92 = v103;
  sub_F015C();

  swift_willThrow();
}

uint64_t sub_A1184(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(type metadata accessor for RCSMessage(0) - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  sub_388C8(&qword_127EB0, &unk_F2B30);
  v3[8] = swift_task_alloc();
  v5 = RCSActor.shared.unsafeMutableAddressor();
  v6 = *v5;
  v3[9] = *v5;

  return _swift_task_switch(sub_A129C, v6, 0);
}

uint64_t sub_A129C(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v5 = v1[5];
  v4 = v1[6];
  v7 = v1[3];
  v6 = v1[4];
  v8 = v1[2];
  sub_F0AFC();
  v9 = sub_F0B1C();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_3C9A4(v8, v3);
  sub_F0AEC();
  v10 = v7;
  v11 = v6;
  v12 = sub_F0ADC();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_3CA08(v3, v15 + v13);
  *(v15 + v14) = v11;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v16 = sub_3CEFC(0, 0, v2, &unk_F4210, v15);
  v1[10] = v16;
  v17 = swift_task_alloc();
  v1[11] = v17;
  *v17 = v1;
  v17[1] = sub_A146C;

  return Task<>.value.getter(v1 + 12, v16, &type metadata for Bool);
}

uint64_t sub_A146C()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_A1598, v1, 0);
}

uint64_t sub_A1598()
{

  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_A161C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a1;
  v6[19] = a4;
  sub_F0AEC();
  v6[22] = sub_F0ADC();
  v8 = sub_F0A6C();
  v6[23] = v8;
  v6[24] = v7;

  return _swift_task_switch(sub_A16B8, v8, v7);
}

uint64_t sub_A16B8()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = objc_opt_self();
  v0[25] = v3;
  v4 = [v3 sharedCache];
  v0[26] = v4;
  v0[27] = *(v1 + 128);
  v0[28] = *(v1 + 136);
  v5 = sub_F07BC();
  v0[29] = v5;
  v6 = [v2 service];
  v7 = [v6 internalName];

  if (!v7)
  {
    sub_F07EC();
    v9 = v8;
    v7 = sub_F07BC();
    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  v0[30] = v7;
  v17 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_A1894;
  v18 = swift_continuation_init();
  v0[17] = sub_388C8(&qword_128C30, &qword_F4218);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_A1A94;
  v0[13] = &unk_11F270;
  v0[14] = v18;
  [v4 releasePendingMessageWithGUID:v5 serviceName:v7 chat:v17 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_A1894()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return _swift_task_switch(sub_A199C, v2, v1);
}

uint64_t sub_A199C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 208);

  v4 = *(v0 + 248);

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = [*(v0 + 200) sharedCache];
  v6 = sub_F07BC();
  v7 = [v5 releasedReplicatedGUIDForGUID:v6];

  if (v7)
  {

LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_5:
  **(v0 + 144) = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_A1A94(uint64_t a1, char a2)
{
  v3 = *sub_373E8((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t RCSServiceSession.dequeueAndProcess(messageID:context:)(uint64_t a1, uint64_t a2)
{
  v3[106] = v2;
  v3[105] = a2;
  v3[104] = a1;
  sub_388C8(&unk_127FA0, &qword_F34C0);
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v3[109] = type metadata accessor for RCSMessage(0);
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v4 = sub_F06CC();
  v3[112] = v4;
  v3[113] = *(v4 - 8);
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  v5 = RCSActor.shared.unsafeMutableAddressor();
  v6 = *v5;
  v3[119] = *v5;

  return _swift_task_switch(sub_A1C80, v6, 0);
}

uint64_t sub_A1C80()
{
  v61 = v0;
  v1 = sub_A3580(*(v0 + 840), *(v0 + 832));
  *(v0 + 960) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 from];
    v4 = sub_A76E4(v3);
    *(v0 + 968) = v4;

    v5 = v4;
    RCSHandle.init(destination:)(v5, v0 + 400);
    *(v0 + 976) = 0;
    if (!*(v0 + 456))
    {
      goto LABEL_7;
    }

    v6 = [objc_opt_self() sharedInstance];
    if (!v6)
    {
      __break(1u);
      return _swift_task_switch(v6, v7, v8);
    }

    v9 = v6;
    v10 = [v6 isRBMEnabled];

    if (v10)
    {
LABEL_7:
      v11 = [*(v0 + 840) phoneNumber];
      if (v11)
      {
        v12 = *(v0 + 840);
        v13 = v11;
        v14 = sub_F07EC();
        v16 = v15;

        v17 = sub_53E04(_swiftEmptyArrayStorage);
        v18._countAndFlagsBits = 7103860;
        v18._object = 0xE300000000000000;
        v19._countAndFlagsBits = v14;
        v19._object = v16;
        RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)((v0 + 336), v18, v19, v17, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
        *(swift_task_alloc() + 16) = v12;
        RCSHandle.canonicalizedHandle(for:)(sub_54C44, (v0 + 272));
        sub_3CAB8(v0 + 336);

        v20 = *(v0 + 288);
        v21 = *(v0 + 296);

        sub_3CAB8(v0 + 272);
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      *(v0 + 992) = v21;
      *(v0 + 984) = v20;
      v50 = [*(v0 + 840) labelID];
      if (v50)
      {
        v51 = v50;
        v52 = sub_F07EC();
        v54 = v53;
      }

      else
      {
        v52 = 0;
        v54 = 0;
      }

      *(v0 + 1008) = v54;
      *(v0 + 1000) = v52;
      *(v0 + 1016) = sub_F0AEC();
      *(v0 + 1024) = sub_F0ADC();
      v55 = sub_F0A6C();
      v57 = v56;
      v6 = sub_A23FC;
      v7 = v55;
      v8 = v57;

      return _swift_task_switch(v6, v7, v8);
    }

    v24 = *(v0 + 944);
    v25 = *(v0 + 904);
    v26 = *(v0 + 896);
    v27 = *(v0 + 832);

    sub_3CAB8(v0 + 400);
    v28 = Logger.rcs.unsafeMutableAddressor();
    (*(v25 + 16))(v24, v28, v26);
    v29 = v27;
    v30 = sub_F06AC();
    v31 = sub_F0CFC();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 944);
    v34 = *(v0 + 904);
    v35 = *(v0 + 896);
    if (v32)
    {
      v36 = *(v0 + 832);
      v37 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v37 = 136446466;
      *(v37 + 4) = sub_3E850(0xD000000000000025, 0x80000000000FF800, v60);
      *(v37 + 12) = 2080;
      v38 = [v36 uuid];
      v58 = v35;
      v59 = v33;
      v39 = sub_F07EC();
      v41 = v40;

      v42 = sub_3E850(v39, v41, v60);
      v41, v43, v44, v45, v46, v47, v48, v49;
      *(v37 + 14) = v42;
      _os_log_impl(&dword_0, v30, v31, "%{public}s dropping message %s because RBM is disabled in Settings", v37, 0x16u);
      swift_arrayDestroy();

      (*(v34 + 8))(v59, v58);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }
  }

  else
  {
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_A23FC()
{
  v1 = v0[120];
  v2 = v0[119];

  v0[129] = sub_A39B8((v0 + 65), v1);

  return _swift_task_switch(sub_A24BC, v2, 0);
}

uint64_t sub_A24BC()
{
  v1 = *(v0 + 960);
  sub_A414C((v0 + 400), v0 + 520, v0 + 16);
  v2 = sub_A73A0(v1);
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 848);
    sub_A74A4(v3);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *(v0 + 1040) = v6;
  *(v0 + 1048) = sub_F0ADC();
  v8 = sub_F0A6C();

  return _swift_task_switch(sub_A25A4, v8, v7);
}

uint64_t sub_A25A4()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);

  *(v0 + 139) = [v1 secure];
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  *(v0 + 140) = static NSUserDefaults.forceEncryption.getter() & 1;

  return _swift_task_switch(sub_A2650, v2, 0);
}

id sub_A2650()
{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 864);
  v3 = *(v0 + 832);
  v4 = *(v0 + 140) | *(v0 + 139);
  v5 = [v3 originalId];
  v6 = v5;
  *(v0 + 1056) = v5;
  v7 = v4 & 1;
  if (v5)
  {
    v7 = v5;
  }

  v176 = v7;
  sub_5BD2C(v0 + 16, v0 + 144);
  v8 = [v3 uuid];
  v175 = sub_F07EC();
  v173 = v9;

  v10 = [v3 extractRawMessageID];
  v11 = sub_F07EC();
  v171 = v12;
  v172 = v11;

  v13 = type metadata accessor for RCSMessage.Content(0);
  v164 = *(v13 - 8);
  v165 = v13;
  (*(v164 + 56))(v2, 1, 1);
  sub_37380(v0 + 520, v0 + 560, &qword_127B08, &qword_F29A0);
  if (v1)
  {
    v14 = *(v0 + 1040);
    rawValue = v14;
  }

  else
  {
    rawValue = RCSMessageMetadata.init(pairs:)(_swiftEmptyArrayStorage).entries._rawValue;
    v14 = 0;
  }

  v180 = (v0 + 640);
  v15 = *(v0 + 1008);
  v16 = *(v0 + 992);
  v167 = *(v0 + 984);
  v168 = *(v0 + 1000);
  v17 = *(v0 + 960);
  v18 = *(v0 + 904);
  v169 = *(v0 + 936);
  v170 = *(v0 + 896);
  v19 = *(v0 + 888);
  v20 = *(v0 + 864);
  v163 = v14;

  v21 = [v17 from];
  v22 = [v21 isBot];

  v162 = v6;

  v161 = v176;
  v178 = v15;
  v177 = v16;
  RCSMessage.init(senderInfo:originalID:messageID:subscriptionInfo:content:groupIdentity:encryption:metadata:isChatBot:)(v0 + 144, v175, v173, v172, v171, v167, v16, v168, v19, v15, v20, v0 + 560, v161, rawValue, v22);
  v23 = Logger.rcs.unsafeMutableAddressor();
  *(v0 + 1064) = v23;
  v24 = *(v18 + 16);
  *(v0 + 1072) = v24;
  *(v0 + 1080) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v174 = v24;
  v24(v169, v23, v170);
  v25 = v17;
  v26 = sub_F06AC();
  v27 = sub_F0CDC();

  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 960);
  if (v28)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138740227;
    *(v30 + 4) = v29;
    *v31 = v29;
    *(v30 + 12) = 1024;
    v32 = v29;
    v33 = [v32 from];
    v34 = [v33 isBot];

    *(v30 + 14) = v34;
    _os_log_impl(&dword_0, v26, v27, "Generating RCSMessage from CT envelope %{sensitive}@, is chat bot: %{BOOL}d", v30, 0x12u);
    sub_372B0(v31, &qword_127AF0, &qword_F28E0);
  }

  else
  {

    v26 = v29;
  }

  v35 = *(v0 + 960);
  v36 = *(v0 + 936);
  v37 = *(v0 + 904);
  v38 = *(v0 + 896);
  v39 = *(v37 + 8);
  *(v0 + 1088) = v39;
  *(v0 + 1096) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39(v36, v38);
  v40 = [v35 content];
  sub_F0E6C();
  swift_unknownObjectRelease();
  sub_388C8(&qword_128BD0, &qword_F3F98);
  if (swift_dynamicCast())
  {
    v48 = *(v0 + 976);
    v49 = *(v0 + 888);
    sub_3928(v180, v0 + 600);
    v50 = *(v0 + 624);
    v51 = *(v0 + 632);
    sub_373E8((v0 + 600), v50);
    (*(v51 + 8))(v49, v50, v51);
    if (v48)
    {
      result = [objc_opt_self() sharedInstance];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v67 = result;
      v68 = *(v0 + 960);
      v177, v60, v61, v62, v63, v64, v65, v66;
      v178, v69, v70, v71, v72, v73, v74, v75;
      v163, v76, v77, v78, v79, v80, v81, v82;
      sub_3CAB8(v0 + 400);
      v83 = [v68 content];
      sub_F0E6C();
      swift_unknownObjectRelease();
      sub_373E8((v0 + 712), *(v0 + 736));
      DynamicType = swift_getDynamicType();
      sub_1EDC((v0 + 712));
      *(v0 + 824) = DynamicType;
      sub_388C8(&qword_128BE0, &qword_F58B0);
      v183._countAndFlagsBits = sub_F083C();
      object = v183._object;
      sub_F08CC(v183);
      object, v86, v87, v88, v89, v90, v91, v92;
      v93 = sub_F0FBC();
      v95 = v94;
      *(v0 + 464) = 1;
      *(v0 + 472) = v93;
      *(v0 + 480) = v94;
      *(v0 + 488) = 0x65746E6F63205443;
      *(v0 + 496) = 0xEB0000000020746ELL;
      *(v0 + 504) = v48;
      *(v0 + 512) = 0;
      swift_errorRetain();
      sub_94528((v0 + 464));
      v95, v96, v97, v98, v99, v100, v101, v102;
      0xEB0000000020746ELL, v103, v104, v105, v106, v107, v108, v109;
    }

    else
    {
      v177, v52, v53, v54, v55, v56, v57, v58;
      v178, v124, v125, v126, v127, v128, v129, v130;
      v163, v131, v132, v133, v134, v135, v136, v137;
      sub_3CAB8(v0 + 400);
    }

    sub_1EDC((v0 + 600));
  }

  else
  {
    v177, v41, v42, v43, v44, v45, v46, v47;
    v178, v110, v111, v112, v113, v114, v115, v116;
    v163, v117, v118, v119, v120, v121, v122, v123;
    sub_3CAB8(v0 + 400);
    *v180 = 0u;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0;
    sub_372B0(v180, &qword_128BD8, &qword_F3FA0);
  }

  v138 = *(v0 + 856);
  sub_37380(*(v0 + 888) + *(*(v0 + 872) + 32), v138, &unk_127FA0, &qword_F34C0);
  if ((*(v164 + 48))(v138, 1, v165) == 1)
  {
    v139 = *(v0 + 960);
    v140 = *(v0 + 920);
    v141 = *(v0 + 896);
    v142 = *(v0 + 856);

    sub_372B0(v142, &unk_127FA0, &qword_F34C0);
    v174(v140, v23, v141);
    v143 = v139;
    v144 = sub_F06AC();
    v145 = sub_F0CFC();
    v146 = os_log_type_enabled(v144, v145);
    v147 = *(v0 + 1032);
    v148 = *(v0 + 968);
    v149 = *(v0 + 960);
    v150 = *(v0 + 920);
    v181 = *(v0 + 896);
    v151 = *(v0 + 888);
    if (v146)
    {
      v179 = *(v0 + 920);
      v152 = *(v0 + 1032);
      v153 = *(v0 + 888);
      v154 = v39;
      v155 = swift_slowAlloc();
      *v155 = 134217984;
      *(v155 + 4) = [v149 type];

      _os_log_impl(&dword_0, v144, v145, "Unhandled message %ld, message was NOT processed!", v155, 0xCu);
      v39 = v154;
      v151 = v153;
      v147 = v152;
      v150 = v179;

      v156 = v162;
    }

    else
    {

      v156 = v149;
      v148 = v149;
    }

    v39(v150, v181);
    sub_5EFF4(v0 + 16);
    sub_372B0(v0 + 520, &qword_127B08, &qword_F29A0);
    sub_3897C(v151);

    v160 = *(v0 + 8);

    return v160();
  }

  else
  {
    sub_372B0(*(v0 + 856), &unk_127FA0, &qword_F34C0);
    v157 = swift_task_alloc();
    *(v0 + 1104) = v157;
    *v157 = v0;
    v157[1] = sub_A2FE4;
    v158 = *(v0 + 1032);
    v159 = *(v0 + 888);

    return sub_A1184(v159, v158);
  }
}

uint64_t sub_A2FE4(char a1)
{
  v2 = *(*v1 + 952);
  *(*v1 + 141) = a1;

  return _swift_task_switch(sub_A30FC, v2, 0);
}

uint64_t sub_A30FC()
{
  v35 = v0;
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 928);
  v4 = *(v0 + 896);
  *(*(v0 + 888) + *(*(v0 + 872) + 52)) = *(v0 + 141);
  v1(v3, v2, v4);
  v5 = sub_F06AC();
  v6 = sub_F0CDC();
  if (os_log_type_enabled(v5, v6))
  {
    v33 = *(v0 + 1088);
    v7 = *(v0 + 928);
    v8 = *(v0 + 896);
    v9 = *(v0 + 888);
    v10 = *(v0 + 880);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136642819;
    swift_beginAccess();
    sub_3C9A4(v9, v10);
    v13 = sub_F085C();
    v15 = v14;
    v16 = sub_3E850(v13, v14, &v34);
    v15, v17, v18, v19, v20, v21, v22, v23;
    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v5, v6, "Processing generated RCSMessage %{sensitive}s", v11, 0xCu);
    sub_1EDC(v12);

    v33(v7, v8);
  }

  else
  {
    v24 = *(v0 + 1088);
    v25 = *(v0 + 928);
    v26 = *(v0 + 896);

    v24(v25, v26);
  }

  v27 = *(v0 + 960);
  swift_beginAccess();
  v28 = swift_task_alloc();
  *(v0 + 1112) = v28;
  *v28 = v0;
  v28[1] = sub_A3344;
  v29 = *(v0 + 968);
  v30 = *(v0 + 888);
  v31 = *(v0 + 840);

  return sub_A4248(v30, v31, v27, v29);
}

uint64_t sub_A3344()
{
  v1 = *(*v0 + 952);

  return _swift_task_switch(sub_A3454, v1, 0);
}

uint64_t sub_A3454()
{
  v1 = v0[132];
  v2 = v0[129];
  v3 = v0[121];
  v4 = v0[120];
  v5 = v0[111];

  sub_5EFF4((v0 + 2));
  sub_372B0((v0 + 65), &qword_127B08, &qword_F29A0);
  sub_3897C(v5);

  v6 = v0[1];

  return v6();
}

id sub_A3580(uint64_t a1, void *a2)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v42[-v11];
  v13 = *(*(v2 + OBJC_IVAR___RCSServiceSession_state) + 16);
  v43 = 0;
  result = [v13 _retrieveMessage:a1 withMessageID:a2 withError:{&v43, v10}];
  if (v43)
  {
    v15 = result;
    v16 = v43;

    swift_willThrow();
    v17 = Logger.rcs.unsafeMutableAddressor();
    (*(v6 + 16))(v8, v17, v5);
    v18 = a2;
    v19 = sub_F06AC();
    v20 = sub_F0CFC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43 = v23;
      *v21 = 136446466;
      *(v21 + 4) = sub_3E850(0xD000000000000018, 0x80000000000FF8F0, &v43);
      *(v21 + 12) = 2112;
      *(v21 + 14) = v18;
      *v22 = v18;
      v24 = v18;
      _os_log_impl(&dword_0, v19, v20, "%{public}s error retrieving message from CT with identifier %@", v21, 0x16u);
      sub_372B0(v22, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v23);
    }

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  if (!result)
  {
    v25 = Logger.rcs.unsafeMutableAddressor();
    (*(v6 + 16))(v12, v25, v5);
    v26 = a2;
    v27 = sub_F06AC();
    v28 = sub_F0CFC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v29 = 136446466;
      *(v29 + 4) = sub_3E850(0xD000000000000018, 0x80000000000FF8F0, &v43);
      *(v29 + 12) = 2080;
      v30 = [v26 uuid];
      v31 = sub_F07EC();
      v33 = v32;

      v34 = sub_3E850(v31, v33, &v43);
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(v29 + 14) = v34;
      _os_log_impl(&dword_0, v27, v28, "%{public}s lazuli told us about a message %s but when we asked for it, it returned nil", v29, 0x16u);
      swift_arrayDestroy();
    }

    (*(v6 + 8))(v12, v5);
    return 0;
  }

  return result;
}

id sub_A39B8(uint64_t a1, void *a2)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v97 - v11;
  v13 = [a2 content];
  sub_F0E6C();
  swift_unknownObjectRelease();
  sub_388C8(&qword_128C10, &qword_F41D0);
  if (!swift_dynamicCast())
  {
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    sub_372B0(&v103, &qword_128C18, &qword_F41D8);
    result = 0;
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  sub_3928(&v103, v106);
  v14 = v107;
  v15 = v108;
  sub_373E8(v106, v107);
  v16 = (*(v15 + 8))(v14, v15);
  if (v16)
  {
    v17 = v16;
    v18 = [a2 secure];
    sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
    v19 = static NSUserDefaults.forceEncryption.getter();
    *(&v104 + 1) = &type metadata for CTRCSGroupIdentity;
    v105 = &off_11F358;
    *&v103 = v17;
    BYTE8(v103) = (v19 | v18) & 1;
    sub_5270C(v17, SBYTE8(v103), v2);
    if (v20)
    {
      v21 = v20;
      result = [v20 participants];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v23 = result;
      sub_37310(0, &qword_127F70, IMDHandle_ptr);
      v24 = sub_F09FC();

      if (v24 >> 62)
      {
        v32 = sub_F10DC();
      }

      else
      {
        v32 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
      }

      v24, v25, v26, v27, v28, v29, v30, v31;
      if (v32 > 1)
      {
        sub_1F28(&v103, a1);
        sub_1EDC(&v103);
        sub_1EDC(v106);
        return v21;
      }

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    else
    {
      v46 = Logger.rcs.unsafeMutableAddressor();
      (*(v6 + 16))(v12, v46, v5);
      sub_1F28(&v103, v102);
      v47 = a2;
      v48 = sub_F06AC();
      v49 = sub_F0CEC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v101 = v99;
        *v50 = 136315394;
        sub_1F28(v102, v100);
        sub_388C8(&qword_128C48, qword_F4230);
        v51 = sub_F085C();
        v52 = v6;
        v54 = v53;
        sub_1EDC(v102);
        v55 = sub_3E850(v51, v54, &v101);
        v54, v56, v57, v58, v59, v60, v61, v62;
        *(v50 + 4) = v55;
        *(v50 + 12) = 2080;
        v63 = [v47 messageID];
        v64 = [v63 uuid];

        v65 = sub_F07EC();
        v67 = v66;

        v68 = sub_3E850(v65, v67, &v101);
        v67, v69, v70, v71, v72, v73, v74, v75;
        *(v50 + 14) = v68;
        _os_log_impl(&dword_0, v48, v49, "Couldn't find an existing chat for group identity %s - incoming message %s will be sent to a 1:1 with the sender", v50, 0x16u);
        swift_arrayDestroy();

        (*(v52 + 8))(v12, v5);
      }

      else
      {

        sub_1EDC(v102);
        (*(v6 + 8))(v12, v5);
      }

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    sub_1EDC(&v103);
  }

  else
  {
    v33 = Logger.rcs.unsafeMutableAddressor();
    (*(v6 + 16))(v8, v33, v5);
    sub_1F28(v106, &v103);
    v34 = a2;
    v35 = sub_F06AC();
    v36 = sub_F0CEC();

    if (os_log_type_enabled(v35, v36))
    {
      v99 = v6;
      v37 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v102[0] = v98;
      *v37 = 136315394;
      v39 = *(&v104 + 1);
      v38 = v105;
      sub_373E8(&v103, *(&v104 + 1));
      v40 = (v38[1])(v39, v38);
      if (v40)
      {
        v41 = v40;
        v42 = [v40 debugDescription];

        v43 = sub_F07EC();
        v45 = v44;
      }

      else
      {
        v45 = 0xE500000000000000;
        v43 = 0x3E6C696E3CLL;
      }

      sub_1EDC(&v103);
      v76 = sub_3E850(v43, v45, v102);
      v45, v77, v78, v79, v80, v81, v82, v83;
      *(v37 + 4) = v76;
      *(v37 + 12) = 2080;
      v84 = [v34 messageID];
      v85 = [v84 uuid];

      v86 = sub_F07EC();
      v88 = v87;

      v89 = sub_3E850(v86, v88, v102);
      v88, v90, v91, v92, v93, v94, v95, v96;
      *(v37 + 14) = v89;
      _os_log_impl(&dword_0, v35, v36, "Couldn't find an existing chat for group URI %s - incoming message %s will be sent to a 1:1 with the sender", v37, 0x16u);
      swift_arrayDestroy();

      (*(v99 + 8))(v8, v5);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
      sub_1EDC(&v103);
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  sub_1EDC(v106);
  return 0;
}

uint64_t sub_A414C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_37380(a2, &v10, &qword_127B08, &qword_F29A0);
  if (*(&v11 + 1))
  {
    sub_3928(&v10, v9);
    sub_3928(v9, &v10);
    v12[25] = 1;
  }

  else
  {
    sub_372B0(&v10, &qword_127B08, &qword_F29A0);
    v5 = a1[1];
    v10 = *a1;
    v11 = v5;
    *v12 = a1[2];
    *&v12[9] = *(a1 + 41);
    v12[25] = 0;
    sub_38910(a1, v9);
  }

  v6 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = a1[2];
  *(a3 + 41) = *(a1 + 41);
  v7 = v11;
  *(a3 + 64) = v10;
  *(a3 + 80) = v7;
  *(a3 + 96) = *v12;
  *(a3 + 106) = *&v12[10];
  *(a3 + 122) = 1;
  return sub_38910(a1, &v10);
}

uint64_t sub_A4248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[43] = a4;
  v5[44] = v4;
  v5[41] = a2;
  v5[42] = a3;
  v5[40] = a1;
  v5[45] = sub_388C8(&qword_128C08, &qword_F41C8);
  v5[46] = swift_task_alloc();
  v6 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v5[47] = v6;
  v5[48] = *(v6 - 8);
  v5[49] = swift_task_alloc();
  type metadata accessor for RCSMessage(0);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v7 = sub_F06CC();
  v5[55] = v7;
  v5[56] = *(v7 - 8);
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v8 = RCSActor.shared.unsafeMutableAddressor();
  v9 = *v8;
  v5[62] = *v8;

  return _swift_task_switch(sub_A448C, v9, 0);
}

uint64_t sub_A448C()
{
  v1 = *(v0[44] + OBJC_IVAR___RCSServiceSession_state);
  v0[63] = v1;
  v2 = *(v1 + 104);
  v0[64] = v2;
  if (!v2)
  {
    __break(1u);
  }

  v3 = *(*v2 + 144);

  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[65] = v4;
  *v4 = v0;
  v4[1] = sub_A4608;
  v5 = v0[40];

  return (v7)(v0 + 37, v5);
}

uint64_t sub_A4608(uint64_t a1)
{
  v3 = *v2;
  v3[66] = a1;
  v3[67] = v1;

  if (v1)
  {
    v4 = v3[62];
    v5 = sub_A6048;
  }

  else
  {
    v6 = v3[62];

    v5 = sub_A4780;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_A4780(uint64_t a1)
{
  v135 = v1;
  v2 = *(v1 + 488);
  v3 = *(v1 + 440);
  v4 = *(v1 + 448);
  v6 = *(v1 + 424);
  v5 = *(v1 + 432);
  v7 = *(v1 + 320);
  v8 = *(v1 + 296);
  v9 = Logger.rcs.unsafeMutableAddressor();
  v10 = *(v4 + 16);
  v10(v2, v9, v3);
  sub_3C9A4(v7, v5);
  sub_3C9A4(v7, v6);
  v11 = sub_F06AC();
  v12 = sub_F0CCC();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v1 + 488);
  v16 = *(v1 + 440);
  v15 = *(v1 + 448);
  v17 = *(v1 + 424);
  v18 = *(v1 + 432);
  if (v13)
  {
    v128 = v12;
    v19 = swift_slowAlloc();
    v131 = v8;
    v20 = swift_slowAlloc();
    v133 = v20;
    *v19 = 136315394;
    v129 = v14;
    v130 = v16;
    v21 = v10;
    v23 = *(v18 + 128);
    v22 = *(v18 + 136);

    sub_3897C(v18);
    v24 = v23;
    v10 = v21;
    v25 = sub_3E850(v24, v22, &v133);
    v22, v26, v27, v28, v29, v30, v31, v32;
    *(v19 + 4) = v25;
    *(v19 + 12) = 1024;
    LODWORD(v22) = RCSMessage.fromChatBot.getter() & 1;
    sub_3897C(v17);
    *(v19 + 14) = v22;
    _os_log_impl(&dword_0, v11, v128, "Successfully processed message %s - sending delivery, is from chat bot: %{BOOL}d", v19, 0x12u);
    sub_1EDC(v20);
    v8 = v131;

    v33 = *(v15 + 8);
    v33(v129, v130);
  }

  else
  {
    sub_3897C(*(v1 + 424));

    sub_3897C(v18);
    v33 = *(v15 + 8);
    v33(v14, v16);
  }

  v34 = *(v1 + 536);
  *(v1 + 584) = *(v1 + 528);
  *(v1 + 576) = v8;
  *(v1 + 568) = 0;
  *(v1 + 560) = v10;
  *(v1 + 552) = v33;
  *(v1 + 544) = v34;
  if (RCSMessage.fromChatBot.getter())
  {
    v35 = *(v1 + 320);
    sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
    v36 = *(v35 + 128);
    v37 = *(v35 + 136);

    *(v1 + 592) = CTLazuliOperationID.init(id:)(v36, v37);
    sub_F0AEC();
    *(v1 + 600) = sub_F0ADC();
    v38 = sub_F0A6C();
    v40 = sub_A5090;
LABEL_24:
    v124 = v38;
    v125 = v39;
    v67 = v40;
    v68 = v124;
    v69 = v125;

    return _swift_task_switch(v67, v68, v69);
  }

  if (qword_127A58 != -1)
  {
    swift_once();
  }

  v42 = *(v1 + 384);
  v41 = *(v1 + 392);
  v43 = *(v1 + 376);
  v44 = sub_3C96C(v43, qword_127D00);
  v45 = *(v42 + 16);
  v45(v41, v44, v43);
  sub_F044C();
  v46 = *(v42 + 8);
  v46(v41, v43);
  if (*(v1 + 65))
  {
    v132 = v45;
    v47 = *(v1 + 504);
    v48 = *(v1 + 328);
    v49 = *(v1 + 336);
    v50 = [objc_allocWithZone(CTLazuliMessageIDList) init];
    sub_388C8(&qword_128BB8, &unk_F41E0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_F3F80;
    *(v51 + 32) = [v49 messageID];
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v52 = sub_F09EC();
    v51, v53, v54, v55, v56, v57, v58, v59;
    [v50 setList:v52];

    v60 = *(v47 + 16);
    *(v1 + 312) = 0;
    v61 = [v60 acknowledgeIncomingMessages:v48 withMessageIDList:v50 withError:v1 + 312];
    v62 = *(v1 + 312);
    if (v61)
    {
      v63 = v62;

      v64 = *(v1 + 544);
    }

    else
    {
      v65 = v62;
      v66 = sub_F015C();

      swift_willThrow();
      v67 = [objc_opt_self() sharedInstance];
      if (!v67)
      {
        __break(1u);
        return _swift_task_switch(v67, v68, v69);
      }

      v70 = v67;
      v71 = *(v1 + 336);
      v133 = 0x206567617373656DLL;
      v134 = 0xEB00000000204449;
      v72 = [v71 messageID];
      v73 = [v72 uuid];

      v74 = sub_F07EC();
      v76 = v75;

      v137._countAndFlagsBits = v74;
      v137._object = v76;
      sub_F08CC(v137);
      v76, v77, v78, v79, v80, v81, v82, v83;
      v84 = v133;
      v85 = v134;
      v86 = sub_F0FBC();
      v88 = v87;
      *(v1 + 72) = 3;
      *(v1 + 80) = v86;
      *(v1 + 88) = v87;
      *(v1 + 96) = v84;
      *(v1 + 104) = v85;
      *(v1 + 112) = v66;
      *(v1 + 120) = 0;
      swift_errorRetain();
      sub_94528((v1 + 72));
      v88, v89, v90, v91, v92, v93, v94, v95;
      v85, v96, v97, v98, v99, v100, v101, v102;

      v64 = 0;
    }

    v45 = v132;
  }

  else
  {
    v64 = *(v1 + 544);
  }

  *(v1 + 608) = v64;
  if (qword_127A50 != -1)
  {
    swift_once();
  }

  v103 = *(v1 + 392);
  v104 = *(v1 + 376);
  v105 = sub_3C96C(v104, qword_127CE8);
  v45(v103, v105, v104);
  sub_F044C();
  v46(v103, v104);
  if (*(v1 + 66) == 1)
  {
    v106 = [*(v1 + 336) content];
    sub_F0E6C();
    swift_unknownObjectRelease();
    sub_388C8(&qword_128C10, &qword_F41D0);
    if (swift_dynamicCast())
    {
      v107 = *(v1 + 248);
      v108 = *(v1 + 256);
      sub_373E8((v1 + 224), v107);
      v109 = (*(v108 + 8))(v107, v108);
      sub_1EDC((v1 + 224));
    }

    else
    {
      *(v1 + 256) = 0;
      *(v1 + 224) = 0u;
      *(v1 + 240) = 0u;
      sub_372B0(v1 + 224, &qword_128C18, &qword_F41D8);
      v109 = 0;
    }

    *(v1 + 616) = v109;
    *(v1 + 624) = sub_F0AEC();
    *(v1 + 632) = sub_F0ADC();
    v38 = sub_F0A6C();
    v40 = sub_A5828;
    goto LABEL_24;
  }

  v110 = *(v1 + 560);
  v111 = *(v1 + 472);
  v112 = *(v1 + 440);

  v113 = Logger.rcs.unsafeMutableAddressor();
  v110(v111, v113, v112);
  v114 = sub_F06AC();
  v115 = sub_F0CCC();
  v116 = os_log_type_enabled(v114, v115);
  v117 = *(v1 + 584);
  v118 = *(v1 + 576);
  v119 = *(v1 + 552);
  v120 = *(v1 + 472);
  v121 = *(v1 + 440);
  if (v116)
  {
    v122 = swift_slowAlloc();
    *v122 = 0;
    _os_log_impl(&dword_0, v114, v115, "Not sending disposition notification due to override", v122, 2u);

    v123 = v118;
  }

  else
  {
    v123 = *(v1 + 584);
    v117 = *(v1 + 576);
  }

  v119(v120, v121);

  v126 = *(v1 + 8);

  return v126();
}

uint64_t sub_A5090()
{
  v1 = v0[74];
  v2 = v0[62];
  v3 = v0[43];
  v4 = v0[41];

  sub_62F9C(v4, v3, v1);

  return _swift_task_switch(sub_A5158, v2, 0);
}

uint64_t sub_A5158()
{
  if (qword_127A58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = sub_3C96C(v3, qword_127D00);
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  sub_F044C();
  v6 = *(v2 + 8);
  v6(v1, v3);
  if (*(v0 + 65))
  {
    v86 = v5;
    v7 = *(v0 + 504);
    v8 = *(v0 + 328);
    v9 = *(v0 + 336);
    v10 = [objc_allocWithZone(CTLazuliMessageIDList) init];
    sub_388C8(&qword_128BB8, &unk_F41E0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_F3F80;
    *(v11 + 32) = [v9 messageID];
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v12 = sub_F09EC();
    v11, v13, v14, v15, v16, v17, v18, v19;
    [v10 setList:v12];

    v20 = *(v7 + 16);
    *(v0 + 312) = 0;
    v21 = [v20 acknowledgeIncomingMessages:v8 withMessageIDList:v10 withError:v0 + 312];
    v22 = *(v0 + 312);
    if (v21)
    {
      v23 = v22;

      v24 = *(v0 + 544);
    }

    else
    {
      v25 = v22;
      v26 = sub_F015C();

      swift_willThrow();
      v27 = [objc_opt_self() sharedInstance];
      if (!v27)
      {
        __break(1u);
        return _swift_task_switch(v27, v28, v29);
      }

      v30 = v27;
      v31 = [*(v0 + 336) messageID];
      v32 = [v31 uuid];

      v33 = sub_F07EC();
      v35 = v34;

      v88._countAndFlagsBits = v33;
      v88._object = v35;
      sub_F08CC(v88);
      v35, v36, v37, v38, v39, v40, v41, v42;
      v43 = sub_F0FBC();
      v45 = v44;
      *(v0 + 72) = 3;
      *(v0 + 80) = v43;
      *(v0 + 88) = v44;
      *(v0 + 96) = 0x206567617373656DLL;
      *(v0 + 104) = 0xEB00000000204449;
      *(v0 + 112) = v26;
      *(v0 + 120) = 0;
      swift_errorRetain();
      sub_94528((v0 + 72));
      v45, v46, v47, v48, v49, v50, v51, v52;
      0xEB00000000204449, v53, v54, v55, v56, v57, v58, v59;

      v24 = 0;
    }

    v5 = v86;
  }

  else
  {
    v24 = *(v0 + 544);
  }

  *(v0 + 608) = v24;
  if (qword_127A50 != -1)
  {
    swift_once();
  }

  v60 = *(v0 + 392);
  v61 = *(v0 + 376);
  v62 = sub_3C96C(v61, qword_127CE8);
  v5(v60, v62, v61);
  sub_F044C();
  v6(v60, v61);
  if (*(v0 + 66) == 1)
  {
    v63 = [*(v0 + 336) content];
    sub_F0E6C();
    swift_unknownObjectRelease();
    sub_388C8(&qword_128C10, &qword_F41D0);
    if (swift_dynamicCast())
    {
      v64 = *(v0 + 248);
      v65 = *(v0 + 256);
      sub_373E8((v0 + 224), v64);
      v66 = (*(v65 + 8))(v64, v65);
      sub_1EDC((v0 + 224));
    }

    else
    {
      *(v0 + 256) = 0;
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      sub_372B0(v0 + 224, &qword_128C18, &qword_F41D8);
      v66 = 0;
    }

    *(v0 + 616) = v66;
    *(v0 + 624) = sub_F0AEC();
    *(v0 + 632) = sub_F0ADC();
    v81 = sub_F0A6C();
    v83 = v82;
    v27 = sub_A5828;
    v28 = v81;
    v29 = v83;

    return _swift_task_switch(v27, v28, v29);
  }

  v67 = *(v0 + 560);
  v68 = *(v0 + 472);
  v69 = *(v0 + 440);

  v70 = Logger.rcs.unsafeMutableAddressor();
  v67(v68, v70, v69);
  v71 = sub_F06AC();
  v72 = sub_F0CCC();
  v73 = os_log_type_enabled(v71, v72);
  v74 = *(v0 + 584);
  v75 = *(v0 + 576);
  v76 = *(v0 + 552);
  v77 = *(v0 + 472);
  v78 = *(v0 + 440);
  if (v73)
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_0, v71, v72, "Not sending disposition notification due to override", v79, 2u);

    v80 = v75;
  }

  else
  {
    v80 = *(v0 + 584);
    v74 = *(v0 + 576);
  }

  v76(v77, v78);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_A5828()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 336);

  *(v0 + 67) = [v2 secure];
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  *(v0 + 68) = static NSUserDefaults.forceEncryption.getter() & 1;

  return _swift_task_switch(sub_A5908, v1, 0);
}

uint64_t sub_A5908()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 568);
  v3 = *(v0 + 336);
  v4 = *(v0 + 68) | *(v0 + 67);
  v5 = [v3 messageID];
  *(v0 + 640) = v5;
  v6 = [v3 from];
  *(v0 + 648) = v6;
  *(v0 + 184) = v2;
  *(v0 + 192) = v5;
  *(v0 + 200) = v6;
  *(v0 + 208) = v4 & 1;
  *(v0 + 216) = v1;
  v7 = v1;
  *(v0 + 656) = sub_F0ADC();
  v9 = sub_F0A6C();

  return _swift_task_switch(sub_A5A44, v9, v8);
}

uint64_t sub_A5A44()
{
  v1 = v0[76];
  v2 = v0[41];

  sub_A0894(v2, v0 + 23);
  v0[83] = v1;
  v3 = v0[62];
  if (v1)
  {
    v4 = sub_A6CF8;
  }

  else
  {
    v4 = sub_A5B10;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_A5B10()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 616);

  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = *(v0 + 560);
    v7 = *(v0 + 480);
    v8 = *(v0 + 440);

    v9 = Logger.rcs.unsafeMutableAddressor();
    v6(v7, v9, v8);
    v10 = v4;
    v11 = v3;
    v12 = sub_F06AC();
    v13 = sub_F0CEC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 584);
      v15 = *(v0 + 576);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v11;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v10;
      *v17 = v14;
      v17[1] = v15;
      v18 = v11;
      v19 = v10;
      _os_log_impl(&dword_0, v12, v13, "Processed message but relay message %@ or chat %@ is nil", v16, 0x16u);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();
    }

    else
    {
      v18 = v12;
      v12 = v11;
    }

    v22 = *(v0 + 552);
    v23 = *(v0 + 480);
    v24 = *(v0 + 440);

    v22(v23, v24);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    *(v0 + 672) = sub_F0ADC();
    v20 = sub_F0A6C();

    return _swift_task_switch(sub_A5E50, v20, v21);
  }
}

uint64_t sub_A5E50()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[62];

  RCSServiceSession.relayReceivedMessage(_:for:)(v1, v2);

  return _swift_task_switch(sub_A5F10, v3, 0);
}

uint64_t sub_A5F10()
{
  v1 = v0[73];
  v2 = v0[72];

  v3 = v0[1];

  return v3();
}

uint64_t sub_A6048()
{
  v208 = v0;
  v1 = *(v0 + 536);

  *(v0 + 304) = v1;
  swift_errorRetain();
  sub_388C8(&qword_127B88, &qword_F3680);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 368);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v3 = *(v0 + 464);
      v4 = *(v0 + 440);
      v5 = *(v0 + 448);
      v7 = *(v0 + 408);
      v6 = *(v0 + 416);

      v8 = (v2 + *(sub_388C8(&qword_128C20, &unk_F65C0) + 48));
      v9 = v8[1];
      v202 = *v8;
      sub_3CA08(v2, v6);
      v10 = Logger.rcs.unsafeMutableAddressor();
      v11 = *(v5 + 16);
      v11(v3, v10, v4);
      sub_3C9A4(v6, v7);

      v12 = sub_F06AC();
      v13 = sub_F0CCC();
      v9, v14, v15, v16, v17, v18, v19, v20;
      v21 = os_log_type_enabled(v12, v13);
      v22 = *(v0 + 464);
      v24 = *(v0 + 440);
      v23 = *(v0 + 448);
      v26 = *(v0 + 408);
      v25 = *(v0 + 416);
      if (v21)
      {
        v204 = v11;
        v27 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        *v27 = 136315394;
        v198 = v22;
        v199 = v25;
        v29 = *(v26 + 128);
        v28 = *(v26 + 136);

        sub_3897C(v26);
        v30 = sub_3E850(v29, v28, &v206);
        v28, v31, v32, v33, v34, v35, v36, v37;
        *(v27 + 4) = v30;
        *(v27 + 12) = 2080;
        v38 = sub_3E850(v202, v9, &v206);
        v9, v39, v40, v41, v42, v43, v44, v45;
        *(v27 + 14) = v38;
        _os_log_impl(&dword_0, v12, v13, "Skip processing message %s: %s - sending delivery", v27, 0x16u);
        swift_arrayDestroy();

        v11 = v204;

        v46 = *(v23 + 8);
        v46(v198, v24);
        v47 = v199;
      }

      else
      {

        v9, v101, v102, v103, v104, v105, v106, v107;
        sub_3897C(v26);
        v46 = *(v23 + 8);
        v46(v22, v24);
        v47 = v25;
      }

      sub_3897C(v47);

      v86 = 0;
      goto LABEL_13;
    }

    sub_372B0(v2, &qword_128C08, &qword_F41C8);
  }

  v49 = *(v0 + 448);
  v48 = *(v0 + 456);
  v50 = *(v0 + 440);
  v51 = *(v0 + 400);
  v52 = *(v0 + 320);

  v53 = Logger.rcs.unsafeMutableAddressor();
  v11 = *(v49 + 16);
  v11(v48, v53, v50);
  sub_3C9A4(v52, v51);
  swift_errorRetain();
  v54 = sub_F06AC();
  v55 = sub_F0CEC();

  if (os_log_type_enabled(v54, v55))
  {
    v200 = *(v0 + 448);
    v201 = *(v0 + 440);
    v203 = *(v0 + 456);
    v56 = *(v0 + 400);
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v206 = v59;
    *v57 = 136315394;
    v60 = *(v56 + 128);
    v61 = *(v56 + 136);

    sub_3897C(v56);
    v62 = sub_3E850(v60, v61, &v206);
    v61, v63, v64, v65, v66, v67, v68, v69;
    *(v57 + 4) = v62;
    *(v57 + 12) = 2112;
    swift_errorRetain();
    v70 = _swift_stdlib_bridgeErrorToNSError();
    *(v57 + 14) = v70;
    *v58 = v70;
    _os_log_impl(&dword_0, v54, v55, "Failed to process message %s: %@ - sending negative delivery", v57, 0x16u);
    sub_372B0(v58, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v59);

    v46 = *(v200 + 8);
    v46(v203, v201);
  }

  else
  {
    v72 = *(v0 + 448);
    v71 = *(v0 + 456);
    v73 = *(v0 + 440);
    v74 = *(v0 + 400);

    sub_3897C(v74);
    v46 = *(v72 + 8);
    v46(v71, v73);
  }

  v75 = [objc_opt_self() sharedInstance];
  if (!v75)
  {
    __break(1u);
    goto LABEL_41;
  }

  v78 = v75;
  v79 = *(v0 + 536);
  v80 = *(v0 + 320);
  v206 = 0x206567617373656DLL;
  v207 = 0xEB00000000204449;
  sub_F08CC(v80[8]);
  v81 = v206;
  v82 = v207;
  v83 = sub_F0FBC();
  v85 = v84;
  v86 = 3;
  *(v0 + 16) = 3;
  *(v0 + 24) = v83;
  *(v0 + 32) = v84;
  *(v0 + 40) = v81;
  *(v0 + 48) = v82;
  *(v0 + 56) = v79;
  *(v0 + 64) = 0;
  swift_errorRetain();
  sub_94528((v0 + 16));
  v85, v87, v88, v89, v90, v91, v92, v93;
  v82, v94, v95, v96, v97, v98, v99, v100;

LABEL_13:
  *(v0 + 576) = 0u;
  *(v0 + 568) = v86;
  *(v0 + 560) = v11;
  *(v0 + 552) = v46;
  *(v0 + 544) = 0;
  if (RCSMessage.fromChatBot.getter())
  {
    v108 = *(v0 + 320);
    sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
    v109 = *(v108 + 128);
    v110 = *(v108 + 136);

    *(v0 + 592) = CTLazuliOperationID.init(id:)(v109, v110);
    sub_F0AEC();
    *(v0 + 600) = sub_F0ADC();
    v111 = sub_F0A6C();
    v113 = sub_A5090;
LABEL_33:
    v194 = v111;
    v195 = v112;
    v75 = v113;
    v76 = v194;
    v77 = v195;

    return _swift_task_switch(v75, v76, v77);
  }

  if (qword_127A58 != -1)
  {
    swift_once();
  }

  v115 = *(v0 + 384);
  v114 = *(v0 + 392);
  v116 = *(v0 + 376);
  v117 = sub_3C96C(v116, qword_127D00);
  v118 = *(v115 + 16);
  v118(v114, v117, v116);
  sub_F044C();
  v119 = *(v115 + 8);
  v119(v114, v116);
  if ((*(v0 + 65) & 1) == 0)
  {
    v137 = *(v0 + 544);
    goto LABEL_24;
  }

  v205 = v118;
  v120 = *(v0 + 504);
  v121 = *(v0 + 328);
  v122 = *(v0 + 336);
  v123 = [objc_allocWithZone(CTLazuliMessageIDList) init];
  sub_388C8(&qword_128BB8, &unk_F41E0);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_F3F80;
  *(v124 + 32) = [v122 messageID];
  sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
  v125 = sub_F09EC();
  v124, v126, v127, v128, v129, v130, v131, v132;
  [v123 setList:v125];

  v133 = *(v120 + 16);
  *(v0 + 312) = 0;
  v134 = [v133 acknowledgeIncomingMessages:v121 withMessageIDList:v123 withError:v0 + 312];
  v135 = *(v0 + 312);
  if (!v134)
  {
    v138 = v135;
    v139 = sub_F015C();

    swift_willThrow();
    v75 = [objc_opt_self() sharedInstance];
    if (v75)
    {
      v140 = v75;
      v141 = *(v0 + 336);
      v206 = 0x206567617373656DLL;
      v207 = 0xEB00000000204449;
      v142 = [v141 messageID];
      v143 = [v142 uuid];

      v144 = sub_F07EC();
      v146 = v145;

      v210._countAndFlagsBits = v144;
      v210._object = v146;
      sub_F08CC(v210);
      v146, v147, v148, v149, v150, v151, v152, v153;
      v154 = v206;
      v155 = v207;
      v156 = sub_F0FBC();
      v158 = v157;
      *(v0 + 72) = 3;
      *(v0 + 80) = v156;
      *(v0 + 88) = v157;
      *(v0 + 96) = v154;
      *(v0 + 104) = v155;
      *(v0 + 112) = v139;
      *(v0 + 120) = 0;
      swift_errorRetain();
      sub_94528((v0 + 72));
      v158, v159, v160, v161, v162, v163, v164, v165;
      v155, v166, v167, v168, v169, v170, v171, v172;

      v137 = 0;
      goto LABEL_23;
    }

LABEL_41:
    __break(1u);
    return _swift_task_switch(v75, v76, v77);
  }

  v136 = v135;

  v137 = *(v0 + 544);
LABEL_23:
  v118 = v205;
LABEL_24:
  *(v0 + 608) = v137;
  if (qword_127A50 != -1)
  {
    swift_once();
  }

  v173 = *(v0 + 392);
  v174 = *(v0 + 376);
  v175 = sub_3C96C(v174, qword_127CE8);
  v118(v173, v175, v174);
  sub_F044C();
  v119(v173, v174);
  if (*(v0 + 66) == 1)
  {
    v176 = [*(v0 + 336) content];
    sub_F0E6C();
    swift_unknownObjectRelease();
    sub_388C8(&qword_128C10, &qword_F41D0);
    if (swift_dynamicCast())
    {
      v177 = *(v0 + 248);
      v178 = *(v0 + 256);
      sub_373E8((v0 + 224), v177);
      v179 = (*(v178 + 8))(v177, v178);
      sub_1EDC((v0 + 224));
    }

    else
    {
      *(v0 + 256) = 0;
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      sub_372B0(v0 + 224, &qword_128C18, &qword_F41D8);
      v179 = 0;
    }

    *(v0 + 616) = v179;
    *(v0 + 624) = sub_F0AEC();
    *(v0 + 632) = sub_F0ADC();
    v111 = sub_F0A6C();
    v113 = sub_A5828;
    goto LABEL_33;
  }

  v180 = *(v0 + 560);
  v181 = *(v0 + 472);
  v182 = *(v0 + 440);

  v183 = Logger.rcs.unsafeMutableAddressor();
  v180(v181, v183, v182);
  v184 = sub_F06AC();
  v185 = sub_F0CCC();
  v186 = os_log_type_enabled(v184, v185);
  v187 = *(v0 + 584);
  v188 = *(v0 + 576);
  v189 = *(v0 + 552);
  v190 = *(v0 + 472);
  v191 = *(v0 + 440);
  if (v186)
  {
    v192 = swift_slowAlloc();
    *v192 = 0;
    _os_log_impl(&dword_0, v184, v185, "Not sending disposition notification due to override", v192, 2u);

    v193 = v188;
  }

  else
  {
    v193 = *(v0 + 584);
    v187 = *(v0 + 576);
  }

  v189(v190, v191);

  v196 = *(v0 + 8);

  return v196();
}

uint64_t sub_A6CF8()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 616);

  v3 = [objc_opt_self() sharedInstance];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v5 = *(v0 + 664);
  v6 = [*(v0 + 336) messageID];
  v7 = [v6 description];
  v8 = sub_F07EC();
  v10 = v9;

  v59._countAndFlagsBits = v8;
  v59._object = v10;
  sub_F08CC(v59);

  v10, v11, v12, v13, v14, v15, v16, v17;
  v18 = sub_F0FBC();
  v20 = v19;
  *(v0 + 128) = 3;
  *(v0 + 136) = v18;
  *(v0 + 144) = v19;
  *(v0 + 152) = 0x206567617373656DLL;
  *(v0 + 160) = 0xEB00000000204449;
  *(v0 + 168) = v5;
  *(v0 + 176) = 0;
  swift_errorRetain();
  sub_94528((v0 + 128));
  v20, v21, v22, v23, v24, v25, v26, v27;
  0xEB00000000204449, v28, v29, v30, v31, v32, v33, v34;

  v35 = *(v0 + 584);
  v36 = *(v0 + 576);
  if (v35 && v36)
  {
    *(v0 + 672) = sub_F0ADC();
    v38 = sub_F0A6C();

    return _swift_task_switch(sub_A5E50, v38, v37);
  }

  else
  {
    v39 = *(v0 + 560);
    v40 = *(v0 + 480);
    v41 = *(v0 + 440);

    v42 = Logger.rcs.unsafeMutableAddressor();
    v39(v40, v42, v41);
    v43 = v36;
    v44 = v35;
    v45 = sub_F06AC();
    v46 = sub_F0CEC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 584);
      v48 = *(v0 + 576);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412546;
      *(v49 + 4) = v44;
      *(v49 + 12) = 2112;
      *(v49 + 14) = v43;
      *v50 = v47;
      v50[1] = v48;
      v51 = v44;
      v52 = v43;
      _os_log_impl(&dword_0, v45, v46, "Processed message but relay message %@ or chat %@ is nil", v49, 0x16u);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();
    }

    else
    {
      v51 = v45;
      v45 = v44;
    }

    v53 = *(v0 + 552);
    v54 = *(v0 + 480);
    v55 = *(v0 + 440);

    v53(v54, v55);

    v56 = *(v0 + 8);

    return v56();
  }
}

void *RCSServiceSession.DispositionInfo.group.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_A72CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_37C54;

  return RCSServiceSession.dequeueAndProcess(messageID:context:)(v3, v4);
}