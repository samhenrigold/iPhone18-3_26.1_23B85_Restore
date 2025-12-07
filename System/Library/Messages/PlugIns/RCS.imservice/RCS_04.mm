id sub_66E6C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = (a1 + *(type metadata accessor for RCSFile(0) + 20));
  result = sub_F07BC();
  if ((*v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = [v4 guidForNewIncomingTransferWithFilename:result isDirectory:0 totalBytes:? hfsType:? hfsCreator:? hfsFlags:?];

    if (!v10)
    {
      return 0;
    }

    v11 = [v4 transferForGUID:v10];

    if (v11)
    {
      v12 = RCSFile.userInfoRepresentation(simID:)(a2, a3);
      v13 = sub_51844(v12);
      v12, v14, v15, v16, v17, v18, v19, v20;
      v21 = sub_F075C();
      v13, v22, v23, v24, v25, v26, v27, v28;
      [v11 setUserInfo:v21];
    }

    return v11;
  }

  return result;
}

Swift::Bool __swiftcall RCSServiceSession.hasStoredMessage(withGUID:)(Swift::String withGUID)
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = sub_F07BC();
  v3 = [v1 hasStoredMessageWithGUID:v2];

  return v3;
}

void RCSServiceSession.didNativelyReceive(_:for:alreadyReceivedReplicatedVersion:)(uint64_t a1, void *a2, char a3)
{
  v7 = sub_F06CC();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v12 = Logger.rcs.unsafeMutableAddressor();
    (*(v8 + 16))(v11, v12, v7);
    v13 = sub_F06AC();
    v14 = sub_F0D0C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Skipped didReceiveMessage, already has replicated version", v15, 2u);
    }

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v19 = [a2 chatIdentifier];
    if (v19)
    {
      v16 = [a2 style];
      [v3 didReceiveMessage:a1 forChat:v19 style:v16 fromIDSID:0];
      v17 = v19;
    }

    else
    {
      __break(1u);
    }
  }
}

void RCSServiceSession.relayReceivedMessage(_:for:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedFeatureFlags];
  v7 = [v6 isRelayChatBotEnabled];

  if (v7 && [a2 isChatBot])
  {
    sub_388C8(&qword_128288, &qword_F3460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_F2C60;
    *(inited + 32) = sub_F07EC();
    *(inited + 40) = v9;
    v10 = sub_70080(inited);
    swift_setDeallocating();
    sub_61CB0(inited + 32);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v3 relayController];
  v12 = [v3 service];
  v13 = [v12 internalName];

  if (v13)
  {
    if (v10)
    {
LABEL_7:
      v14 = sub_F0C0C();
      v10, v15, v16, v17, v18, v19, v20, v21;
      goto LABEL_10;
    }
  }

  else
  {
    sub_F07EC();
    v23 = v22;
    v13 = sub_F07BC();
    v23, v24, v25, v26, v27, v28, v29, v30;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_10:
  [v11 relayMessageToPeers:a1 forChat:a2 serviceName:v13 reflectOnly:0 requiredCapabilities:v14];

  v31 = [a2 chatIdentifier];
  if (v31)
  {
    v32 = v31;
    v33 = sub_F07EC();
    v35 = v34;

    v36 = swift_allocObject();
    v36[2] = v3;
    v36[3] = a1;
    v36[4] = v33;
    v36[5] = v35;
    v36[6] = a2;
    aBlock[4] = sub_70058;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_67A44;
    aBlock[3] = &unk_11E7B0;
    v37 = _Block_copy(aBlock);
    v38 = v3;
    v39 = a1;
    v40 = a2;

    [v40 shouldSatelliteRelayIncomingSMSMessagesWithCompletion:v37];
    _Block_release(v37);
  }
}

void sub_674F8(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_F06EC();
  v29 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_F071C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v28 = v17;
    sub_37310(0, &qword_127F80, OS_dispatch_queue_ptr);
    v27 = sub_F0D4C();
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;
    v20[4] = a4;
    v20[5] = a5;
    v20[6] = a6;
    aBlock[4] = sub_72424;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_9400C;
    aBlock[3] = &unk_11E958;
    v21 = _Block_copy(aBlock);
    v22 = a2;
    v23 = a3;

    v24 = a6;

    sub_F06FC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_72434(&qword_127F88, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_388C8(&qword_127F90, &qword_F2EC0);
    sub_5506C();
    sub_F0E8C();
    v25 = v27;
    sub_F0D5C();
    _Block_release(v21);

    (*(v29 + 8))(v14, v12);
    (*(v16 + 8))(v19, v28);
  }
}

void sub_677F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 networkMonitor];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 immediatelyReachable];

    if (v15)
    {
      v16 = Logger.rcs.unsafeMutableAddressor();
      (*(v9 + 16))(v12, v16, v8);
      v17 = sub_F06AC();
      v18 = sub_F0D0C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_0, v17, v18, "Attempting to relay incoming RCS message via satellite sms relay.", v19, 2u);
      }

      (*(v9 + 8))(v12, v8);
      v20 = [objc_opt_self() sharedInstance];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 anySessionForServiceName:IMServiceNameiMessageLite];

        if (v22)
        {
          v23 = v22;
          v24 = sub_F07BC();
          [v23 sendIncomingRelayMessage:a2 toChat:v24 style:{objc_msgSend(a5, "style")}];
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

double sub_67A44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void RCSServiceSession.didReceiveMessage(_:forChat:style:fromIDSID:)(void *a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, void *a6)
{
  v12 = sub_F07BC();
  v13 = [v6 chatForChatIdentifier:v12 style:a4 updatingAccount:1];

  if (v13)
  {
    v14 = [v6 tapbackInterpreter];
    v15 = [v14 interpretMessageItem:a1 inChat:v13];

    v16 = sub_F07BC();
    if (a6)
    {
      a6 = sub_F07BC();
    }

    v64.receiver = v6;
    v64.super_class = RCSServiceSession;
    objc_msgSendSuper2(&v64, "didReceiveMessage:forChat:style:fromIDSID:", v15, v16, a4, a6);

LABEL_10:
    return;
  }

  v17 = [objc_opt_self() sharedInstance];
  if (v17)
  {
    a6 = v17;
    sub_F0F9C(41);
    0xE000000000000000, v18, v19, v20, v21, v22, v23, v24;
    v66 = 0x206567617373656DLL;
    v67 = 0xEB00000000204449;
    v25 = [a1 guid];
    if (v25)
    {
      v26 = v25;
      v27 = sub_F07EC();
      v29 = v28;
    }

    else
    {
      v29 = 0xE500000000000000;
      v27 = 0x3E6C696E3CLL;
    }

    v73._countAndFlagsBits = v27;
    v73._object = v29;
    sub_F08CC(v73);
    v29, v30, v31, v32, v33, v34, v35, v36;
    v74._object = 0x80000000000FECE0;
    v74._countAndFlagsBits = 0xD000000000000011;
    sub_F08CC(v74);
    v75._countAndFlagsBits = a2;
    v75._object = a3;
    sub_F08CC(v75);
    v76._countAndFlagsBits = 0x20656C79747320;
    v76._object = 0xE700000000000000;
    sub_F08CC(v76);
    v65 = a4;
    v77._countAndFlagsBits = sub_F11EC();
    object = v77._object;
    sub_F08CC(v77);
    object, v38, v39, v40, v41, v42, v43, v44;
    v46 = v66;
    v45 = v67;
    v47 = sub_F0FBC();
    v49 = v48;
    LOBYTE(v66) = 3;
    v67 = v47;
    v68 = v48;
    v69 = v46;
    v70 = v45;
    v71 = 0;
    v72 = 1;
    sub_94528(&v66);
    v45, v50, v51, v52, v53, v54, v55, v56;
    v49, v57, v58, v59, v60, v61, v62, v63;

    goto LABEL_10;
  }

  __break(1u);
}

id RCSServiceSession.newTransfer(file:simID:)(uint64_t a1, void *a2, uint64_t a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = sub_66E6C(a1, a2, a3);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RCSServiceSession.downloadTransfer(on:transferURL:destURL:cryptoMaterial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_67FCC;

  return sub_70CB0(a1, a2, a3, a4, a5);
}

uint64_t sub_67FCC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_680C8(uint64_t a1, uint64_t a2)
{
  v2 = *sub_373E8((a1 + 32), *(a1 + 56));
  **(*(v2 + 64) + 40) = sub_F076C();

  return _swift_continuation_resume(v2);
}

void RCSServiceSession.startFinalizingTransfer(_:)(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 guid];
    [v3 startFinalizingTransfer:v4];
  }

  else
  {
    __break(1u);
  }
}

void RCSServiceSession.endTransfer(_:endState:updateByteCounts:)(void *a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 guid];
    [v7 endTransfer:v8 endState:a2 updateByteCounts:a3 & 1];
  }

  else
  {
    __break(1u);
  }
}

void RCSServiceSession.failTransfer(_:error:)(void *a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 guid];
    v6 = sub_F014C();
    [v4 failTransfer:v5 error:v6];
  }

  else
  {
    __break(1u);
  }
}

uint64_t RCSServiceSession.maxAutoDownloadSize(for:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_388C8(&qword_128300, &unk_F68D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v29[-v6];
  v8 = sub_F068C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  __chkstk_darwin(v10);
  v12 = &v29[-v11];
  type metadata accessor for RCSFile(0);

  sub_F063C();
  sub_F05EC();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_372B0(v7, &qword_128300, &unk_F68D0);
    v13 = 0xE700000000000000;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_F05FC();
    v13 = v14;
    (*(v9 + 8))(v12, v8);
  }

  v30 = 0;
  v15 = objc_opt_self();
  v16 = sub_F07BC();
  v13, v17, v18, v19, v20, v21, v22, v23;
  v24 = [v15 largeFileSizeFor:v16 allowedLargerRepresentation:&v30];

  sub_3FEF4(a2, a3);
  if (v24 >= v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = v24;
  }

  if (v25 <= 0)
  {
    v27 = v24;
  }

  if (v26)
  {
    return v24 & (v24 >> 63);
  }

  else
  {
    return v27;
  }
}

Swift::UInt64 __swiftcall RCSServiceSession.freeSpaceInHomeDirectory()()
{
  v0 = objc_opt_self();

  return [v0 freeSpaceInHomeDirectory];
}

Swift::UInt64 __swiftcall RCSServiceSession.minimumFreeSpace()()
{
  v0 = objc_opt_self();

  return [v0 minimumFreeSpace];
}

uint64_t RCSServiceSession.ChatResolutionError.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RCSMessage(0);
  __chkstk_darwin(v2);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v71 - v6;
  v8 = type metadata accessor for RCSServiceSession.ChatResolutionError(0);
  __chkstk_darwin(v8);
  v10 = (&v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_710C0(v1, v10, type metadata accessor for RCSServiceSession.ChatResolutionError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = (v10 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
      v14 = *v12;
      v13 = v12[1];
      sub_3CA08(v10, v7);
      *&v78[0] = 0;
      *(&v78[0] + 1) = 0xE000000000000000;
      sub_F0F9C(53);
      v82._countAndFlagsBits = 0xD00000000000002FLL;
      v82._object = 0x80000000000FED30;
      sub_F08CC(v82);
    }

    else
    {
      v31 = (v10 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
      v14 = *v31;
      v13 = v31[1];
      sub_3CA08(v10, v7);
      *&v78[0] = 0;
      *(&v78[0] + 1) = 0xE000000000000000;
      sub_F0F9C(49);
      *(&v78[0] + 1), v32, v33, v34, v35, v36, v37, v38;
      *&v78[0] = 0xD00000000000002BLL;
      *(&v78[0] + 1) = 0x80000000000FED00;
    }

    sub_710C0(v7, v4, type metadata accessor for RCSMessage);
    v86._countAndFlagsBits = sub_F083C();
    object = v86._object;
    sub_F08CC(v86);
    object, v40, v41, v42, v43, v44, v45, v46;
    v87._countAndFlagsBits = 8250;
    v87._object = 0xE200000000000000;
    sub_F08CC(v87);
    v88._countAndFlagsBits = v14;
    v88._object = v13;
    sub_F08CC(v88);
    v13, v47, v48, v49, v50, v51, v52, v53;
    v54 = *&v78[0];
    sub_37AE8(v7, type metadata accessor for RCSMessage);
  }

  else
  {
    v15 = v10[1];
    v79 = *v10;
    v80 = v15;
    v81[0] = v10[2];
    *(v81 + 9) = *(v10 + 41);
    v16 = v10[4];
    v71 = v10[5];
    v72 = v16;
    v17 = v10[11];
    v78[4] = v10[10];
    v78[5] = v17;
    v78[6] = v10[12];
    v18 = v10[7];
    v78[0] = v10[6];
    v78[1] = v18;
    v19 = v10[9];
    v78[2] = v10[8];
    v78[3] = v19;
    *&v75[0] = 0;
    *(&v75[0] + 1) = 0xE000000000000000;
    sub_F0F9C(69);
    v77 = v75[0];
    v83._countAndFlagsBits = 0xD000000000000024;
    v83._object = 0x80000000000FED60;
    sub_F08CC(v83);
    sub_54C4C(v78, v75);
    v84._countAndFlagsBits = sub_F083C();
    v20 = v84._object;
    sub_F08CC(v84);
    v20, v21, v22, v23, v24, v25, v26, v27;
    v85._countAndFlagsBits = 0x207265646E657320;
    v85._object = 0xE800000000000000;
    sub_F08CC(v85);
    if (*(&v79 + 1))
    {
      v75[0] = v79;
      v75[1] = v80;
      v76[0] = v81[0];
      *(v76 + 9) = *(v81 + 9);
      v28 = RCSHandle.rawValue.getter();
      v30 = v29;
      sub_372B0(&v79, &qword_1282F0, &qword_F3450);
    }

    else
    {
      v30 = 0xE500000000000000;
      v28 = 0x3E6C696E3CLL;
    }

    v89._countAndFlagsBits = v28;
    v89._object = v30;
    sub_F08CC(v89);
    v30, v55, v56, v57, v58, v59, v60, v61;
    v90._object = 0x80000000000FED90;
    v90._countAndFlagsBits = 0xD000000000000012;
    sub_F08CC(v90);
    v73 = v72;
    v74 = v71;
    v91._countAndFlagsBits = sub_F083C();
    v62 = v91._object;
    sub_F08CC(v91);
    v62, v63, v64, v65, v66, v67, v68, v69;
    v92._countAndFlagsBits = 46;
    v92._object = 0xE100000000000000;
    sub_F08CC(v92);
    v54 = v77;
    sub_53D58(v78);
  }

  return v54;
}

void sub_68ACC(void *a1)
{
  v2 = sub_F06CC();
  v155 = *(v2 - 1);
  __chkstk_darwin(v2);
  v154 = &v150 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v150 = &v150 - v5;
  v151 = objc_opt_self();
  v6 = [v151 sharedInstance];
  v7 = a1[5];
  v8 = *(v7 + 16);
  v9 = _swiftEmptyArrayStorage;
  v156 = a1;
  v157 = v2;
  if (v8)
  {
    v167[0] = _swiftEmptyArrayStorage;
    sub_6EB68(0, v8, 0);
    v9 = v167[0];
    v10 = (v7 + 56);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v167[0] = v9;
      v13 = *v9[1].IMDTelephonyServiceSession_opaque;
      v14 = *v9[1].state;

      if (v13 >= v14 >> 1)
      {
        sub_6EB68((v14 > 1), v13 + 1, 1);
        v9 = v167[0];
      }

      *v9[1].IMDTelephonyServiceSession_opaque = v13 + 1;
      v15 = &v9[v13];
      *v15[2].IMDTelephonyServiceSession_opaque = v12;
      *v15[2].state = v11;
      v10 += 8;
      --v8;
    }

    while (v8);
    a1 = v156;
    v2 = v157;
  }

  v16 = sub_F09EC();
  v9, v17, v18, v19, v20, v21, v22, v23;
  v24 = a1[7];
  v158 = a1[6];
  if (v24)
  {
    v25 = sub_F07BC();
  }

  else
  {
    v25 = 0;
  }

  v26 = [v6 existingChatsForIDs:v16 displayName:v25 groupID:0 style:43];

  sub_37310(0, &qword_127EF0, IMDChat_ptr);
  v27 = sub_F09FC();

  if (v27 >> 62)
  {
LABEL_51:
    v28 = sub_F10DC();
    if (v28)
    {
      goto LABEL_12;
    }

LABEL_44:
    v110 = [v151 sharedInstance];
    v111 = [v152 account];
    v112 = [v110 generateUnusedChatIdentifierForGroupChatWithAccount:v111];

    if (v112)
    {
      v27, v113, v114, v115, v116, v117, v118, v119;
      v120 = sub_F07EC();
      v122 = v121;

      v123 = Logger.rcs.unsafeMutableAddressor();
      v125 = v154;
      v124 = v155;
      (*(v155 + 16))(v154, v123, v2);
      sub_54C4C(a1, v167);
      sub_54C4C(a1, v166);
      v126 = sub_F06AC();
      v127 = sub_F0CCC();
      v122, v128, v129, v130, v131, v132, v133, v134;
      v135 = os_log_type_enabled(v126, v127);
      v153 = v120;
      if (v135)
      {
        v136 = v124;
        v137 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        *v137 = 136315650;
        *(v137 + 4) = sub_3E850(v120, v122, &v165);
        *(v137 + 12) = 2080;
        sub_54C4C(v167, v164);
        v138 = sub_F083C();
        v140 = v139;
        sub_53D58(v167);
        v141 = sub_3E850(v138, v140, &v165);
        v140, v142, v143, v144, v145, v146, v147, v148;
        *(v137 + 14) = v141;
        *(v137 + 22) = 2048;
        v149 = *(v166[5] + 16);
        sub_53D58(v166);
        *(v137 + 24) = v149;
        _os_log_impl(&dword_0, v126, v127, "creating a new chatIdentifer %sfor incoming group %s, participants count except self: %ld", v137, 0x20u);
        swift_arrayDestroy();

        (*(v136 + 8))(v154, v2);
      }

      else
      {
        sub_53D58(v166);

        sub_53D58(v167);
        (*(v124 + 8))(v125, v2);
      }
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v28 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
  if (!v28)
  {
    goto LABEL_44;
  }

LABEL_12:
  v29 = 0;
  v30 = v24;
  v24 = 0;
  v162 = v27 & 0xC000000000000001;
  v163 = v30;
  v159 = v30;
  v160 = v27 & 0xFFFFFFFFFFFFFF8;
  v31 = 0xE000000000000000;
  v32 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  v161 = v28;
  while (1)
  {
    if (v162)
    {
      v33 = sub_F0FCC();
    }

    else
    {
      if (v29 >= *(v160 + 16))
      {
        goto LABEL_50;
      }

      v33 = *(v27 + 8 * v29 + 32);
    }

    v2 = v33;
    v34 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v35 = [v33 v32[167]];
    if (v35)
    {

LABEL_21:
      v43 = [v2 v32[167]];
      if (!v43)
      {
        goto LABEL_33;
      }

      a1 = v43;
      v51 = v27;
      v52 = v24;
      v53 = sub_F07EC();
      v55 = v54;

      if (v163)
      {
        if (v53 == v158 && v163 == v55)
        {
          v31, v56, v158, v163, v58, v59, v60, v61;
          v31 = v55;
LABEL_28:
          v31, v44, v45, v46, v47, v48, v49, v50;
          v70 = [v2 chatIdentifier];
          if (!v70)
          {
            v24 = 0;
            v27 = v51;
            v31 = 0xE000000000000000;
            goto LABEL_32;
          }

          v71 = v70;
          v24 = sub_F07EC();
          v31 = v72;

LABEL_31:
          v27 = v51;
LABEL_32:
          v28 = v161;
          v32 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
          goto LABEL_33;
        }

        v62 = sub_F122C();
        v55, v63, v64, v65, v66, v67, v68, v69;
        if (v62)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v55, v56, v57, 0, v58, v59, v60, v61;
        v163 = 0;
      }

      v24 = v52;
      goto LABEL_31;
    }

    v163 = v159;
    if (v159)
    {
      goto LABEL_21;
    }

    v31, v36, v37, v38, v39, v40, v41, v42;
    v81 = [v2 chatIdentifier];
    if (v81)
    {
      v82 = v81;
      v24 = sub_F07EC();
      v31 = v83;

      v32 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
      v163 = 0;
    }

    else
    {
      v24 = 0;
      v163 = 0;
      v31 = 0xE000000000000000;
    }

LABEL_33:
    v73 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v73 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v73)
    {
      break;
    }

    ++v29;
    if (v34 == v28)
    {
      v31, v74, v75, v76, v77, v78, v79, v80;
      a1 = v156;
      v2 = v157;
      goto LABEL_44;
    }
  }

  v27, v44, v45, v46, v47, v48, v49, v50;
  v84 = Logger.rcs.unsafeMutableAddressor();
  v85 = v155;
  v86 = v150;
  v87 = v157;
  (*(v155 + 16))(v150, v84, v157);
  sub_54C4C(v156, v167);

  v88 = sub_F06AC();
  v89 = sub_F0CCC();
  v31, v90, v91, v92, v93, v94, v95, v96;
  v97 = os_log_type_enabled(v88, v89);
  v153 = v24;
  if (v97)
  {
    v98 = swift_slowAlloc();
    v164[0] = swift_slowAlloc();
    *v98 = 136315394;
    *(v98 + 4) = sub_3E850(v24, v31, v164);
    *(v98 + 12) = 2080;
    sub_54C4C(v167, v166);
    v99 = sub_F083C();
    v101 = v100;
    sub_53D58(v167);
    v102 = sub_3E850(v99, v101, v164);
    v101, v103, v104, v105, v106, v107, v108, v109;
    *(v98 + 14) = v102;
    _os_log_impl(&dword_0, v88, v89, "reusing existing chatIdentifer %s for incoming group %s", v98, 0x16u);
    swift_arrayDestroy();

    (*(v155 + 8))(v150, v87);
  }

  else
  {

    sub_53D58(v167);
    (*(v85 + 8))(v86, v87);
  }
}

id RCSServiceSession.groupChat(for:group:)(uint64_t a1, RCSServiceSession *a2)
{
  sub_5BD2C(a1, v8);
  if (v10[58])
  {
    v11 = v8[0];
    v12 = v8[1];
    v13[0] = v9[0];
    *(v13 + 9) = *(v9 + 9);
    sub_5BD88(v10);
    v14 = v11;
    v15 = v12;
    v16[0] = v13[0];
    v4 = *(v13 + 9);
  }

  else
  {
    sub_5EFF4(v8);
    v4 = 0uLL;
    v14 = 0u;
    v15 = 0u;
    v16[0] = 0u;
  }

  *(v16 + 9) = v4;
  v11 = v14;
  v12 = v15;
  v13[0] = v16[0];
  *(v13 + 9) = v4;
  v5 = type metadata accessor for RCSMessage(0);
  v6 = RCSServiceSession.groupChat(from:subscriptionInfo:group:)(&v11, *(a1 + *(v5 + 60)), *(a1 + *(v5 + 60) + 8), *(a1 + *(v5 + 60) + 16), *(a1 + *(v5 + 60) + 24), a2);
  sub_372B0(&v14, &qword_1282F0, &qword_F3450);
  return v6;
}

unint64_t *sub_694A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_6EC08(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {

      sub_388C8(&qword_128528, &unk_F36C0);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_6EC08((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_54F88(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_695BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_6EC08(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_6EC08((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_54F88(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_696BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_6EC08(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_6EC08((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_54F88(&v8, &v2[4 * v6 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

id RCSServiceSession.instantMessageChat(for:)(uint64_t a1)
{
  sub_5BD2C(a1, v49);
  if (v49[122] == 1)
  {
    sub_5BD2C(v49, &v40);
    v38 = v40;
    *v39 = *v41;
    *&v39[16] = *&v41[16];
    *&v39[25] = *&v41[25];
    sub_3CAB8(&v38);
    if (v47)
    {
      v2 = v43;
LABEL_6:
      sub_5BD88(v2);
      type metadata accessor for RCSServiceSession.ChatResolutionError(0);
      sub_72434(&qword_1282E8, type metadata accessor for RCSServiceSession.ChatResolutionError, &protocol conformance descriptor for RCSServiceSession.ChatResolutionError);
      swift_allocError();
      v4 = v3;
      v5 = (v3 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
      sub_710C0(a1, v4, type metadata accessor for RCSMessage);
      *v5 = 0xD00000000000005CLL;
      v5[1] = 0x80000000000FEDB0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_5EFF4(v49);
    }

    v7 = v43[0];
    v8 = v43[1];
    v9 = v43[2];
    v10 = v44;
    v11 = v45;
    v12 = v46;
  }

  else
  {
    sub_5BD2C(v49, &v40);
    if (v42)
    {
      v2 = &v40;
      goto LABEL_6;
    }

    v8 = *(&v40 + 1);
    v7 = v40;
    v9 = *v41;
    v10 = *&v41[8];
    v11 = *&v41[24];
    v12 = v41[40];
  }

  v37 = v10;
  *&v38 = v7;
  *(&v38 + 1) = v8;
  *v39 = v9;
  *&v39[8] = v10;
  *&v39[24] = v11;
  v39[40] = v12;
  v59 = v38;
  v60 = *v39;
  v61[0] = *&v39[16];
  *(v61 + 9) = *&v39[25];
  sub_5EFF4(v49);
  v13 = RCSHandle.chatBotId.getter();
  v15 = v14;
  v16 = sub_ABD88(v9, v37, (v12 - 1) < 2, v13, v14);
  v15, v17, v18, v19, v20, v21, v22, v23;
  sub_3CAB8(&v38);
  if (v16)
  {
    sub_5BD2C(a1, &v40);
    if (v48)
    {
      v35 = *v41;
      v36 = v40;
      v25 = *&v41[24];
      v24 = *&v41[16];
      v26 = *&v41[32];
      v27 = v41[40];
      sub_5BD88(v43);
    }

    else
    {
      sub_5EFF4(&v40);
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v35 = 0u;
      v36 = 0u;
    }

    v31 = (a1 + *(type metadata accessor for RCSMessage(0) + 60));
    v32 = *v31;
    v33 = v31[3];
    v50[0] = v36;
    v50[1] = v35;
    v51 = v24;
    v52 = v25;
    v53 = v26;
    v54 = v27;
    v56 = *(v31 + 1);
    v55 = v32;
    v57 = v33;
    v58 = v16;

    v34 = v16;

    sub_A92D0(v50);
    sub_372B0(v50, &qword_1282F8, &qword_F3458);
    return v34;
  }

  else
  {
    type metadata accessor for RCSServiceSession.ChatResolutionError(0);
    sub_72434(&qword_1282E8, type metadata accessor for RCSServiceSession.ChatResolutionError, &protocol conformance descriptor for RCSServiceSession.ChatResolutionError);
    swift_allocError();
    v29 = v28;
    v30 = (v28 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
    sub_710C0(a1, v29, type metadata accessor for RCSMessage);
    *v30 = 0xD000000000000013;
    v30[1] = 0x80000000000FEE10;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t RCSServiceSession.generatePreview(for:attachmentPath:balloonBundleID:senderContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a1;
  v14 = swift_task_alloc();
  *(v7 + 64) = v14;
  *v14 = v7;
  v14[1] = sub_69CA8;

  return sub_71128(v7 + 16, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_69CA8()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *(*v1 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);

  if (!v0)
  {
    v9 = *(v2 + 56);
    *v9 = v4;
    *(v9 + 8) = v5;
    *(v9 + 16) = v6;
    *(v9 + 24) = v7;
    *(v9 + 32) = v8;
  }

  v10 = *(v3 + 8);

  return v10();
}

uint64_t sub_69DF8(uint64_t a1, uint64_t a2, char a3, void *a4, double a5, double a6)
{
  v11 = *sub_373E8((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_388C8(&qword_127B88, &qword_F3680);
    v12 = swift_allocError();
    *v13 = a4;
    v14 = a4;

    return _swift_continuation_throwingResumeWithError(v11, v12);
  }

  else
  {
    if (a2)
    {
      v15 = sub_F07EC();
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v17 = *(*(v11 + 64) + 40);
    *v17 = v15;
    *(v17 + 8) = v16;
    *(v17 + 16) = a3;
    *(v17 + 24) = a5;
    *(v17 + 32) = a6;

    return swift_continuation_throwingResume();
  }
}

uint64_t RCSServiceSession.generateSafeRender(for:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_F0AEC();
  v2[20] = sub_F0ADC();
  v4 = sub_F0A6C();
  v2[21] = v4;
  v2[22] = v3;

  return _swift_task_switch(sub_69F94, v4, v3);
}

uint64_t sub_69F94()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_388C8(&qword_128310, &qword_F34A0);
    v0[24] = v3;
    v0[25] = *(*(v3 - 8) + 64);
    v4 = swift_task_alloc();
    v0[26] = v4;
    v5 = sub_F019C();
    v0[27] = v5;
    v0[2] = v0;
    v0[7] = v4;
    v0[3] = sub_6A1BC;
    v6 = swift_continuation_init();
    v0[17] = sub_388C8(&qword_128318, &qword_F34A8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_6A478;
    v0[13] = &unk_11E7D8;
    v0[14] = v6;
    [v2 generateSafeRender:v5 completionBlock:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v7 = v0[18];

    v8 = sub_F01EC();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_6A1BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_6A3E0;
  }

  else
  {
    v5 = sub_6A2EC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_6A2EC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 144);

  v5 = swift_task_alloc();
  sub_376D8(v1, v5, &qword_128310, &qword_F34A0);
  v6 = *v5;
  sub_376D8(&v5[*(v3 + 48)], v4, &qword_128320, &qword_F34B0);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_6A3E0()
{
  v1 = v0[27];
  v2 = v0[23];

  swift_willThrow();

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_6A478(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = *sub_373E8((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_388C8(&qword_127B88, &qword_F3680);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    v11 = sub_388C8(&qword_128310, &qword_F34A0);
    __chkstk_darwin(v11);
    v13 = &v20 - v12;
    *(&v20 - v12) = a2;
    v14 = sub_388C8(&qword_128320, &qword_F34B0);
    __chkstk_darwin(v14 - 8);
    v16 = &v20 - v15;
    if (a3)
    {
      sub_F01AC();
      v17 = sub_F01EC();
      (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
    }

    else
    {
      v18 = sub_F01EC();
      (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    }

    sub_376D8(v16, &v13[*(v11 + 48)], &qword_128320, &qword_F34B0);
    sub_376D8(v13, *(*(v7 + 64) + 40), &qword_128310, &qword_F34A0);
    return swift_continuation_throwingResume();
  }
}

uint64_t RCSServiceSession.categorize(_:rcsMessage:foundChat:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_F06CC();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = sub_F0AEC();
  v4[11] = sub_F0ADC();
  v6 = sub_F0A6C();
  v4[12] = v6;
  v4[13] = v7;

  return _swift_task_switch(sub_6A800, v6, v7);
}

uint64_t sub_6A800()
{
  v171 = v0;
  v1 = [*(v0 + 40) participants];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  sub_37310(0, &qword_127F70, IMDHandle_ptr);
  v3 = sub_F09FC();

  if (v3 >> 62)
  {
LABEL_59:
    v11 = sub_F10DC();
  }

  else
  {
    v11 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  v12 = _swiftEmptyArrayStorage;
  *(v0 + 112) = _swiftEmptyArrayStorage;
  if (v11)
  {
    v13 = 0;
    do
    {
      v14 = v13;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_F0FCC();
        }

        else
        {
          if (v14 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_58;
          }

          v15 = *(v3 + 8 * v14 + 32);
        }

        v16 = v15;
        v13 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v17 = [v15 ID];
        if (v17)
        {
          break;
        }

        ++v14;
        if (v13 == v11)
        {
          goto LABEL_20;
        }
      }

      v18 = v12;
      v19 = v17;
      v168 = sub_F07EC();
      v165 = v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_6E2D8(0, *v18[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v18, v7, v8, v9, v10);
      }

      v22 = *v18[1].IMDTelephonyServiceSession_opaque;
      v21 = *v18[1].state;
      v6 = v18;
      if (v22 >= v21 >> 1)
      {
        v6 = sub_6E2D8((v21 > 1), v22 + 1, &dword_0 + 1, v18, v7, v8, v9, v10);
      }

      *v6[1].IMDTelephonyServiceSession_opaque = v22 + 1;
      v12 = v6;
      v23 = &v6[v22];
      *v23[2].IMDTelephonyServiceSession_opaque = v168;
      *v23[2].state = v165;
      *(v0 + 112) = v6;
    }

    while (v13 != v11);
  }

LABEL_20:
  v169 = v12;
  v24 = *(v0 + 40);
  v3, v4, v5, v6, v7, v8, v9, v10;
  *(v0 + 160) = 0;
  v25 = [v24 lastAddressedLocalHandle];
  if (v25)
  {
    v164 = sub_F07EC();
    v27 = v26;
  }

  else
  {
    v164 = 0;
    v27 = 0;
  }

  v28 = [*(v0 + 40) lastAddressedSIMID];
  if (v28)
  {
    v29 = v28;
    v30 = sub_F07EC();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  *(v0 + 120) = v32;
  v33 = objc_opt_self();
  v34 = sub_F07BC();
  v35 = [v33 IMMMSEmailAddressToMatchForPhoneNumber:v25 simID:v34];

  if (v35)
  {
    v163 = sub_F07EC();
    v37 = v36;
  }

  else
  {
    v163 = 0;
    v37 = 0;
  }

  v38 = sub_F07BC();
  v39 = [v33 IMCountryCodeForPhoneNumber:v25 simID:v38];

  if (v39)
  {
    v166 = sub_F07EC();
    v41 = v40;
  }

  else
  {
    v166 = 0;
    v41 = 0;
  }

  *(v0 + 128) = v41;
  v43 = *(v0 + 64);
  v42 = *(v0 + 72);
  v44 = *(v0 + 56);
  v45 = *(v0 + 24);
  v46 = Logger.rcs.unsafeMutableAddressor();
  (*(v43 + 16))(v42, v46, v44);

  v47 = v45;

  v48 = sub_F06AC();
  v49 = sub_F0CCC();
  if (os_log_type_enabled(v48, v49))
  {
    v161 = v49;
    v162 = v30;
    v50 = *(v0 + 24);
    v51 = swift_slowAlloc();
    v170[0] = swift_slowAlloc();
    *v51 = 136316162;
    v52 = [v50 guid];
    v41, v53, v54, v55, v56, v57, v58, v59;
    v37, v60, v61, v62, v63, v64, v65, v66;
    v32, v67, v68, v69, v70, v71, v72, v73;
    v27, v74, v75, v76, v77, v78, v79, v80;

    if (!v52)
    {
      __break(1u);
      return withCheckedContinuation<A>(isolation:function:_:)(v81, v82, v83, v84, v85, v86, v87, v88);
    }

    v89 = v27;
    v158 = *(v0 + 64);
    v159 = *(v0 + 56);
    v160 = *(v0 + 72);
    v90 = sub_F07EC();
    v92 = v91;

    v93 = sub_3E850(v90, v92, v170);
    v92, v94, v95, v96, v97, v98, v99, v100;
    *(v51 + 4) = v93;
    *(v51 + 12) = 2080;
    if (v89)
    {
      v101 = v164;
    }

    else
    {
      v101 = 7104878;
    }

    if (v89)
    {
      v102 = v89;
    }

    else
    {
      v102 = 0xE300000000000000;
    }

    v103 = sub_3E850(v101, v102, v170);
    v102, v104, v105, v106, v107, v108, v109, v110;
    *(v51 + 14) = v103;
    *(v51 + 22) = 2080;
    *(v51 + 24) = sub_3E850(v162, v32, v170);
    *(v51 + 32) = 2080;
    if (v37)
    {
      v111 = v163;
    }

    else
    {
      v111 = 7104878;
    }

    if (v37)
    {
      v112 = v37;
    }

    else
    {
      v112 = 0xE300000000000000;
    }

    v113 = sub_3E850(v111, v112, v170);
    v112, v114, v115, v116, v117, v118, v119, v120;
    *(v51 + 34) = v113;
    *(v51 + 42) = 2080;
    v121 = v166;
    if (v41)
    {
      v122 = v166;
    }

    else
    {
      v122 = 7104878;
    }

    if (v41)
    {
      v123 = v41;
    }

    else
    {
      v123 = 0xE300000000000000;
    }

    v124 = sub_3E850(v122, v123, v170);
    v123, v125, v126, v127, v128, v129, v130, v131;
    *(v51 + 44) = v124;
    _os_log_impl(&dword_0, v48, v161, "Categorizing %s simNumber %s simID %s myEmail %s cc %s", v51, 0x34u);
    swift_arrayDestroy();

    v30 = v162;

    (*(v158 + 8))(v160, v159);
  }

  else
  {
    v132 = v48;
    v134 = *(v0 + 64);
    v133 = *(v0 + 72);
    v135 = *(v0 + 56);
    v136 = *(v0 + 24);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v32, v137, v138, v139, v140, v141, v142, v143;
    v41, v144, v145, v146, v147, v148, v149, v150;

    (*(v134 + 8))(v133, v135);
    v121 = v166;
  }

  v151 = *(v0 + 48);
  v152 = *(v0 + 24);
  v167 = *(v0 + 32);
  v153 = sub_F0ADC();
  *(v0 + 136) = v153;
  v154 = swift_task_alloc();
  *(v0 + 144) = v154;
  v154[1].i64[0] = v151;
  v154[1].i64[1] = v152;
  v154[2] = vextq_s8(v167, v167, 8uLL);
  v154[3].i64[0] = v30;
  v154[3].i64[1] = v32;
  v154[4].i64[0] = v169;
  v154[4].i64[1] = v0 + 160;
  v154[5].i64[0] = v121;
  v154[5].i64[1] = v41;
  v155 = swift_task_alloc();
  *(v0 + 152) = v155;
  v156 = sub_37310(0, &qword_127EF0, IMDChat_ptr);
  *v155 = v0;
  v155[1] = sub_6AF8C;
  v88 = v156;
  v83 = &protocol witness table for MainActor;
  v86 = sub_71E34;
  v81 = v0 + 16;
  v85 = 0x80000000000FEE50;
  v82 = v153;
  v84 = 0xD000000000000023;
  v87 = v154;

  return withCheckedContinuation<A>(isolation:function:_:)(v81, v82, v83, v84, v85, v86, v87, v88);
}

uint64_t sub_6AF8C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);

  v3, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v2, v19, v20, v21, v22, v23, v24, v25;

  v26 = *(v1 + 104);
  v27 = *(v1 + 96);

  return _swift_task_switch(sub_6B17C, v27, v26);
}

uint64_t sub_6B17C()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_6B224(char *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, char **a8, uint64_t a9, uint64_t a10, RCSServiceSession *a11)
{
  v284 = a7;
  v285 = a8;
  v282 = a5;
  v283 = a6;
  v288 = a2;
  v289 = a4;
  v287 = a3;
  v280 = a1;
  v274 = sub_F06CC();
  v275 = *(v274 - 8);
  __chkstk_darwin(v274);
  v271 = &v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v272 = &v264 - v14;
  __chkstk_darwin(v15);
  v270 = &v264 - v16;
  v17 = sub_388C8(&unk_127FA0, &qword_F34C0);
  __chkstk_darwin(v17 - 8);
  v269 = &v264 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v276 = &v264 - v20;
  __chkstk_darwin(v21);
  v278 = &v264 - v22;
  v23 = sub_388C8(&qword_1284E8, &qword_F3668);
  v281 = *(v23 - 8);
  v24 = v281;
  v25 = *(v281 + 64);
  __chkstk_darwin(v23);
  __chkstk_darwin(v26);
  v28 = &v264 - v27;
  v286 = type metadata accessor for RCSMessage(0);
  v277 = *(v286 - 8);
  v29 = *(v277 + 64);
  __chkstk_darwin(v286);
  v273 = &v264 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v264 - v31;
  __chkstk_darwin(v33);
  v35 = &v264 - v34;
  sub_710C0(a5, &v264 - v34, type metadata accessor for RCSMessage);
  v36 = *(v24 + 16);
  v36(v28, v280, v23);
  v280 = v32;
  sub_710C0(v35, v32, type metadata accessor for RCSMessage);
  v279 = &v264 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v28;
  v36(v279, v28, v23);
  v38 = (*(v277 + 80) + 40) & ~*(v277 + 80);
  v39 = (v29 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = v281;
  v42 = (*(v281 + 80) + v40 + 8) & ~*(v281 + 80);
  v43 = swift_allocObject();
  v44 = v287;
  *(v43 + 2) = v288;
  *(v43 + 3) = v44;
  *(v43 + 4) = v289;
  v45 = v35;
  v46 = v284;
  sub_3CA08(v45, &v43[v38]);
  v47 = &v43[v39];
  *v47 = v283;
  *(v47 + 1) = v46;
  v48 = v285;
  *&v43[v40] = v285;
  p_name = v48;
  v50 = v23;
  (*(v41 + 32))(&v43[v42], v37, v23);
  v51 = v278;
  sub_37380(v282 + *(v286 + 32), v278, &unk_127FA0, &qword_F34C0);
  v52 = type metadata accessor for RCSMessage.Content(0);
  v53 = *(*(v52 - 8) + 48);
  v54 = v51;
  v55 = v53(v51, 1, v52);
  v277 = v43;
  if (v55 == 1)
  {
    v56 = *(v41 + 8);

    v57 = v289;
    v58 = v289;
    v59 = v287;
    v60 = v287;
    v61 = v288;
    v62 = v288;
    v56(v279, v50);
    v63 = type metadata accessor for RCSMessage;
    v64 = v280;
    goto LABEL_8;
  }

  v267 = v53;
  v59 = v287;
  v57 = v289;
  sub_37380(v54, v276, &unk_127FA0, &qword_F34C0);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v77 = *(v41 + 8);

    v78 = v57;
    v79 = v59;
    v61 = v288;
    v80 = v288;
    v77(v279, v50);
    sub_37AE8(v280, type metadata accessor for RCSMessage);
    v63 = type metadata accessor for RCSMessage.Content;
    v64 = v276;
LABEL_8:
    sub_37AE8(v64, v63);
    sub_372B0(v54, &unk_127FA0, &qword_F34C0);
    v81 = [v61 filteringController];
    v82 = [v59 guid];
    if (v82)
    {
      v83 = v82;
      v84 = [v59 sender];
      if (v84)
      {
        v85 = v84;
        v86 = [v57 chatIdentifier];
        if (v86)
        {
          v284 = v86;
          v288 = v81;
          v286 = a9;
          v287 = sub_F09EC();
          v285 = [v59 rcsAdvisedAction];
          if (a11)
          {
            v87 = a11;
          }

          else
          {
            v87 = 0xE200000000000000;
          }

          v88 = sub_F07BC();
          v87, v89, v90, v91, v92, v93, v94, v95;
          v96 = [v59 body];
          if (!v96)
          {
            v96 = [objc_allocWithZone(NSAttributedString) init];
          }

          v97 = IMServiceNameRCS;
          v283 = v97;
          v98 = [v59 messageContainsOneTimeCode];
          aBlock[4] = sub_72100;
          aBlock[5] = v277;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_6DA54;
          aBlock[3] = &unk_11E8B8;
          v99 = _Block_copy(aBlock);

          LOBYTE(v263) = v98;
          v262 = v97;
          v261 = v88;
          v100 = v88;
          v101 = v285;
          v103 = v287;
          v102 = v288;
          v104 = v284;
          [v288 categorizeIncomingRCSMessageGUID:v83 sender:v85 wasRelayed:0 chatIdentifier:v284 participants:v287 checkingForSpam:v286 trustIndicator:v285 myReceiverISOCountryCode:v261 messageBody:v96 foundChat:v289 service:v262 containsOneTimeCode:v263 completion:v99];

          _Block_release(v99);

          return;
        }

        goto LABEL_91;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v265 = v50;

  v276 = v57;
  v289 = v59;
  v266 = v288;
  sub_372B0(v54, &unk_127FA0, &qword_F34C0);
  v65 = Logger.rcs.unsafeMutableAddressor();
  v66 = v275;
  v67 = *(v275 + 16);
  v68 = v270;
  v287 = v65;
  v69 = v274;
  v278 = v275 + 16;
  v268 = v67;
  (v67)(v270);
  v70 = v273;
  sub_710C0(v282, v273, type metadata accessor for RCSMessage);
  v71 = sub_F06AC();
  v72 = sub_F0CCC();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    *v73 = 136315138;
    v75 = v269;
    sub_37380(v70 + *(v286 + 32), v269, &unk_127FA0, &qword_F34C0);
    if (v267(v75, 1, v52) == 1)
    {
      sub_372B0(v75, &unk_127FA0, &qword_F34C0);
      v76 = 9;
    }

    else
    {
      v107 = v75;
      v76 = RCSMessage.Content.type.getter();
      sub_37AE8(v107, type metadata accessor for RCSMessage.Content);
    }

    v106 = v274;
    v290 = v76;
    sub_388C8(&qword_1284F0, &qword_F3678);
    v108 = sub_F083C();
    v110 = v109;
    sub_37AE8(v273, type metadata accessor for RCSMessage);
    v111 = sub_3E850(v108, v110, aBlock);
    v110, v112, v113, v114, v115, v116, v117, v118;
    *(v73 + 4) = v111;
    _os_log_impl(&dword_0, v71, v72, "Not categorizing message for message type %s", v73, 0xCu);
    sub_1EDC(v74);

    v105 = *(v275 + 8);
    (v105)(v68, v106);
  }

  else
  {

    sub_37AE8(v70, type metadata accessor for RCSMessage);
    v105 = *(v66 + 8);
    (v105)(v68, v69);
    v106 = v69;
  }

  v119 = v272;
  v268(v272, v287, v106);
  v120 = v289;
  v121 = sub_F06AC();
  v122 = sub_F0CCC();
  p_name = &stru_124FF8.name;
  if (os_log_type_enabled(v121, v122))
  {
    v123 = v105;
    v124 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v124 = 136315906;
    v125 = [v120 guid];
    v126 = v120;

    if (!v125)
    {
LABEL_95:
      __break(1u);
LABEL_96:

      __break(1u);
      goto LABEL_97;
    }

    p_name = sub_F07EC();
    v128 = v127;

    v129 = sub_3E850(p_name, v128, aBlock);
    v128, v130, v131, v132, v133, v134, v135, v136;
    *(v124 + 4) = v129;
    *(v124 + 12) = 2048;
    *(v124 + 14) = 0;
    *(v124 + 22) = 2048;
    *(v124 + 24) = 0;
    *(v124 + 32) = 2080;
    *(v124 + 34) = sub_3E850(1701736302, 0xE400000000000000, aBlock);
    _os_log_impl(&dword_0, v121, v122, "Categorized %s as %ld / %ld ext %s", v124, 0x2Au);
    swift_arrayDestroy();

    v105 = v123;
    v123(v272, v106);
    v120 = v126;
  }

  else
  {

    (v105)(v119, v106);
  }

  v137 = [objc_allocWithZone(IMDTelephonyIncomingMessageContext) init];
  [(RCSServiceSession *)v137 setCategory:0];
  [(RCSServiceSession *)v137 setSubCategory:0];
  [(RCSServiceSession *)v137 setSpamExtensionName:0];
  [(RCSServiceSession *)v137 setIsSendEnabled:1];
  [(RCSServiceSession *)v137 setCapability:1];
  v138 = v276;
  v139 = [v276 chatIdentifier];
  [(RCSServiceSession *)v137 setChatIdentifier:v139];

  if (*&v280[*(v286 + 60) + 8])
  {
    v140 = sub_F07BC();
  }

  else
  {
    v140 = 0;
  }

  [(RCSServiceSession *)v137 setMyNumberString:v140];

  v141 = sub_F07BC();
  [(RCSServiceSession *)v137 setMySIMIDString:v141];

  v142 = [v120 sender];
  [(RCSServiceSession *)v137 setSender:v142];

  v143 = [v120 unformattedID];
  [(RCSServiceSession *)v137 setSenderUnformatted:v143];

  v144 = [v120 countryCode];
  [(RCSServiceSession *)v137 setCountryCode:v144];

  v145 = sub_F09EC();
  [(RCSServiceSession *)v137 replaceParticipants:v145];

  v146 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  v147 = [v138 participants];
  if (!v147)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v148 = v147;
  v289 = sub_37310(0, &qword_127F70, IMDHandle_ptr);
  v149 = sub_F09FC();

  v157 = v149 & 0xFFFFFFFFFFFFFF8;
  if (v149 >> 62)
  {
    goto LABEL_70;
  }

  for (i = *(&dword_10 + (v149 & 0xFFFFFFFFFFFFFF8)); ; i = sub_F10DC())
  {
    v285 = v105;
    v286 = v120;
    v288 = v137;
    if (i)
    {
      p_name = 0;
      v137 = _swiftEmptyArrayStorage;
      do
      {
        v105 = p_name;
        while (1)
        {
          if ((v149 & 0xC000000000000001) != 0)
          {
            v159 = sub_F0FCC();
          }

          else
          {
            if (v105 >= *(v157 + 16))
            {
              goto LABEL_67;
            }

            v159 = *(v149 + 8 * v105 + 32);
          }

          v120 = v159;
          p_name = (v105 + 1);
          if (__OFADD__(v105, 1))
          {
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          v160 = [v159 ID];
          if (v160)
          {
            break;
          }

          ++v105;
          if (p_name == i)
          {
            goto LABEL_48;
          }
        }

        v161 = v160;
        v105 = sub_F07EC();
        v284 = v162;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = sub_6E2D8(0, *v137[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v137, v153, v154, v155, v156);
        }

        v164 = *v137[1].IMDTelephonyServiceSession_opaque;
        v163 = *v137[1].state;
        v120 = (v164 + 1);
        if (v164 >= v163 >> 1)
        {
          v137 = sub_6E2D8((v163 > 1), v164 + 1, &dword_0 + 1, v137, v153, v154, v155, v156);
        }

        *v137[1].IMDTelephonyServiceSession_opaque = v120;
        v165 = &v137[v164];
        v166 = v284;
        *v165[2].IMDTelephonyServiceSession_opaque = v105;
        *v165[2].state = v166;
        v146 = 1204224;
      }

      while (p_name != i);
    }

    else
    {
      v137 = _swiftEmptyArrayStorage;
    }

LABEL_48:
    v149, v150, v151, v152, v153, v154, v155, v156;
    v167 = sub_F09EC();
    v137, v168, v169, v170, v171, v172, v173, v174;
    [v288 replaceUnformattedIDs:v167];

    v175 = [v276 *(v146 + 56)];
    if (!v175)
    {
      goto LABEL_93;
    }

    v176 = v175;
    v157 = sub_F09FC();

    if (v157 >> 62)
    {
      break;
    }

    v184 = *(&dword_10 + (v157 & 0xFFFFFFFFFFFFFF8));
    if (!v184)
    {
      goto LABEL_72;
    }

LABEL_51:
    v137 = 0;
    v289 = (v157 & 0xC000000000000001);
    v149 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v289)
      {
        v185 = sub_F0FCC();
      }

      else
      {
        if (v137 >= *(&dword_10 + (v157 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_69;
        }

        v185 = *(v157 + 8 * v137 + 32);
      }

      v120 = v185;
      v186 = &v137->IMDTelephonyServiceSession_opaque[1];
      if (__OFADD__(v137, 1))
      {
        break;
      }

      v187 = [v185 countryCode];
      if (v187)
      {
        v188 = v187;
        p_name = sub_F07EC();
        v105 = v189;
      }

      else
      {

        v105 = 0xE200000000000000;
        p_name = &loc_7374 + 1;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v149 = sub_6E2D8(0, *(v149 + 16) + 1, &dword_0 + 1, v149, v180, v181, v182, v183);
      }

      v146 = *(v149 + 16);
      v190 = *(v149 + 24);
      v120 = (v146 + 1);
      if (v146 >= v190 >> 1)
      {
        v149 = sub_6E2D8((v190 > 1), v146 + 1, &dword_0 + 1, v149, v180, v181, v182, v183);
      }

      *(v149 + 16) = v120;
      v191 = v149 + 16 * v146;
      *(v191 + 32) = p_name;
      *(v191 + 40) = v105;
      v137 = (v137 + 1);
      if (v186 == v184)
      {
        goto LABEL_73;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    ;
  }

  v184 = sub_F10DC();
  if (v184)
  {
    goto LABEL_51;
  }

LABEL_72:
  v149 = _swiftEmptyArrayStorage;
LABEL_73:
  v157, v177, v178, v179, v180, v181, v182, v183;
  v192 = sub_F09EC();
  v149, v193, v194, v195, v196, v197, v198, v199;
  p_name = v288;
  [v288 replaceCountryCodes:v192];

  v200 = v276;
  [p_name setStyle:{objc_msgSend(v276, "style")}];
  v201 = [objc_opt_self() sharedFeatureFlags];
  v202 = [v201 isMissingMessagesEnabled];

  if ((v202 & 1) != 0 && [v200 style] == 43)
  {
    v203 = [v200 latestIdentifierForDomain:IMChatLookupDomainIMessageGroupID];
    sub_7225C(v200);
    v205 = v204;
    [p_name setGroupID:v203];

    v206 = v274;
    v207 = v279;
    v208 = v271;
    v209 = (&stru_124FF8 + 8);
    if (v205)
    {
      goto LABEL_78;
    }

    v210 = [v200 originalGroupID];
    if (v210)
    {
      v211 = v210;
      sub_F07EC();
      v205 = v212;

LABEL_78:
      v213 = v266;
      v214 = sub_F07BC();
      v205, v215, v216, v217, v218, v219, v220, v221;
    }

    else
    {
      v214 = 0;
      v213 = v266;
    }

    p_name = v288;
  }

  else
  {
    v222 = [v200 groupID];
    [p_name setGroupID:v222];

    v214 = [v200 originalGroupID];
    v206 = v274;
    v207 = v279;
    v208 = v271;
    v213 = v266;
    v209 = &stru_124FF8.name;
  }

  [p_name setOriginalGroupID:v214];

  v223 = [v200 displayName];
  [p_name setDisplayName:v223];

  v224 = v213;
  v225 = v286;
  v226 = [v224 findChatAndLinkMessage:v286 context:p_name];
  v227 = [objc_opt_self() sharedTracker];
  v228 = [v225 v209[502]];
  if (!v228)
  {
    goto LABEL_94;
  }

  v229 = v228;
  [v227 startTrackingMessageGUID:v228 chat:v226];

  v268(v208, v287, v206);
  p_name = v200;
  v230 = v226;
  v231 = sub_F06AC();
  v232 = sub_F0CCC();
  if (!os_log_type_enabled(v231, v232))
  {

    (v285)(v208, v206);
    goto LABEL_87;
  }

  v233 = swift_slowAlloc();
  aBlock[0] = swift_slowAlloc();
  *v233 = 136315906;
  v234 = [v230 v209[502]];

  if (!v234)
  {
    goto LABEL_96;
  }

  v235 = v209;
  v236 = sub_F07EC();
  v238 = v237;

  v239 = sub_3E850(v236, v238, aBlock);
  v238, v240, v241, v242, v243, v244, v245, v246;
  *(v233 + 4) = v239;
  *(v233 + 12) = 2080;
  v247 = [p_name v235[502]];

  if (v247)
  {
    v248 = sub_F07EC();
    v250 = v249;

    v251 = sub_3E850(v248, v250, aBlock);
    v250, v252, v253, v254, v255, v256, v257, v258;
    *(v233 + 14) = v251;
    *(v233 + 22) = 2048;
    *(v233 + 24) = 0;
    *(v233 + 32) = 2048;
    *(v233 + 34) = 0;
    _os_log_impl(&dword_0, v231, v232, "Found chat %s from %s cat %ld sub %ld", v233, 0x2Au);
    swift_arrayDestroy();

    (v285)(v271, v274);
    v207 = v279;
LABEL_87:
    v259 = v288;
    aBlock[0] = v230;
    v260 = v265;
    sub_F0A8C();

    (*(v281 + 8))(v207, v260);
    sub_37AE8(v280, type metadata accessor for RCSMessage);
    return;
  }

LABEL_97:
  __break(1u);
}

void sub_6C9F8(uint64_t a1, uint64_t a2, unint64_t a3, RCSServiceSession *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v214 = a8;
  v215 = a6;
  v208 = a7;
  v213 = a5;
  v224 = a3;
  v217 = a2;
  v221 = a1;
  v15 = sub_F06CC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v216 = &v207 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v207 - v19;
  v21 = Logger.rcs.unsafeMutableAddressor();
  v22 = *(v16 + 16);
  v211 = v21;
  v212 = v16 + 16;
  v210 = v22;
  (v22)(v20);

  v23 = a9;
  v24 = sub_F06AC();
  v25 = sub_F0CCC();
  v26 = os_log_type_enabled(v24, v25);
  v219 = v16;
  v220 = v23;
  v218 = v15;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v225[0] = swift_slowAlloc();
    *v27 = 136315906;
    v28 = [v23 guid];

    a4, v29, v30, v31, v32, v33, v34, v35;
    if (!v28)
    {
LABEL_87:
      __break(1u);
LABEL_88:

      __break(1u);
      goto LABEL_89;
    }

    v36 = sub_F07EC();
    v38 = v37;

    v39 = sub_3E850(v36, v38, v225);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v27 + 4) = v39;
    *(v27 + 12) = 2048;
    v47 = v221;
    *(v27 + 14) = v221;
    *(v27 + 22) = 2048;
    v48 = v217;
    *(v27 + 24) = v217;
    if (a4)
    {
      v49 = v224;
    }

    else
    {
      v49 = 1701736302;
    }

    if (a4)
    {
      v50 = a4;
    }

    else
    {
      v50 = 0xE400000000000000;
    }

    *(v27 + 32) = 2080;

    v51 = sub_3E850(v49, v50, v225);
    v50, v52, v53, v54, v55, v56, v57, v58;
    *(v27 + 34) = v51;
    _os_log_impl(&dword_0, v24, v25, "Categorized %s as %ld / %ld ext %s", v27, 0x2Au);
    swift_arrayDestroy();

    v59 = *(v219 + 8);
    (v59)(v20, v218);
  }

  else
  {

    a4, v60, v61, v62, v63, v64, v65, v66;
    v59 = *(v16 + 8);
    (v59)(v20, v15);
    v48 = v217;
    v47 = v221;
  }

  v223 = a10;
  v67 = [objc_allocWithZone(IMDTelephonyIncomingMessageContext) init];
  [v67 setCategory:v47];
  [v67 setSubCategory:v48];
  if (a4)
  {
    v68 = sub_F07BC();
  }

  else
  {
    v68 = 0;
  }

  v69 = v220;
  [v67 setSpamExtensionName:v68];

  [v67 setIsSendEnabled:1];
  [v67 setCapability:1];
  v23 = v223;
  v70 = [v223 chatIdentifier];
  [v67 setChatIdentifier:v70];

  if (*(a11 + *(type metadata accessor for RCSMessage(0) + 60) + 8))
  {
    v71 = sub_F07BC();
  }

  else
  {
    v71 = 0;
  }

  [v67 setMyNumberString:v71];

  v72 = sub_F07BC();
  [v67 setMySIMIDString:v72];

  v73 = [v69 sender];
  [v67 setSender:v73];

  v74 = [v69 unformattedID];
  [v67 setSenderUnformatted:v74];

  v75 = [v69 countryCode];
  [v67 setCountryCode:v75];

  v76 = sub_F09EC();
  [v67 replaceParticipants:v76];

  v77 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  v78 = [v23 participants];
  if (!v78)
  {
    __break(1u);
    goto LABEL_85;
  }

  v79 = v78;
  v222 = v67;
  v224 = sub_37310(0, &qword_127F70, IMDHandle_ptr);
  v80 = sub_F09FC();

  if (!(v80 >> 62))
  {
    v23 = *(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8));
    v209 = v59;
    if (v23)
    {
      goto LABEL_20;
    }

LABEL_39:
    v89 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

LABEL_38:
  v23 = sub_F10DC();
  v209 = v59;
  if (!v23)
  {
    goto LABEL_39;
  }

LABEL_20:
  v88 = 0;
  v89 = _swiftEmptyArrayStorage;
  do
  {
    v59 = v88;
    while (1)
    {
      if ((v80 & 0xC000000000000001) != 0)
      {
        v90 = sub_F0FCC();
      }

      else
      {
        if (v59 >= *(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_37;
        }

        v90 = *(v80 + 8 * v59 + 32);
      }

      v91 = v90;
      v88 = (v59 + 1);
      if (__OFADD__(v59, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v92 = [v90 ID];
      if (v92)
      {
        break;
      }

      ++v59;
      if (v88 == v23)
      {
        goto LABEL_40;
      }
    }

    v93 = v92;
    v94 = sub_F07EC();
    v207 = v95;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = sub_6E2D8(0, *v89[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v89, v84, v85, v86, v87);
    }

    v97 = *v89[1].IMDTelephonyServiceSession_opaque;
    v96 = *v89[1].state;
    if (v97 >= v96 >> 1)
    {
      v89 = sub_6E2D8((v96 > 1), v97 + 1, &dword_0 + 1, v89, v84, v85, v86, v87);
    }

    *v89[1].IMDTelephonyServiceSession_opaque = v97 + 1;
    v98 = &v89[v97];
    v99 = v207;
    *v98[2].IMDTelephonyServiceSession_opaque = v94;
    *v98[2].state = v99;
    v77 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  }

  while (v88 != v23);
LABEL_40:
  v80, v81, v82, v83, v84, v85, v86, v87;
  v100 = sub_F09EC();
  v89, v101, v102, v103, v104, v105, v106, v107;
  [v222 replaceUnformattedIDs:v100];

  v108 = [v223 v77[7]];
  if (!v108)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v109 = v108;
  v110 = sub_F09FC();

  if (v110 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)); i; i = sub_F10DC())
  {
    v119 = 0;
    v224 = v110 & 0xC000000000000001;
    v120 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v224)
      {
        v121 = sub_F0FCC();
      }

      else
      {
        if (v119 >= *(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_59;
        }

        v121 = *(v110 + 8 * v119 + 32);
      }

      v122 = v121;
      v123 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        break;
      }

      v124 = [v121 countryCode];
      if (v124)
      {
        v125 = v124;
        v126 = sub_F07EC();
        v128 = v127;
      }

      else
      {

        v128 = 0xE200000000000000;
        v126 = 29557;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v120 = sub_6E2D8(0, *v120[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v120, v114, v115, v116, v117);
      }

      v130 = *v120[1].IMDTelephonyServiceSession_opaque;
      v129 = *v120[1].state;
      if (v130 >= v129 >> 1)
      {
        v120 = sub_6E2D8((v129 > 1), v130 + 1, &dword_0 + 1, v120, v114, v115, v116, v117);
      }

      *v120[1].IMDTelephonyServiceSession_opaque = v130 + 1;
      v131 = &v120[v130];
      *v131[2].IMDTelephonyServiceSession_opaque = v126;
      *v131[2].state = v128;
      ++v119;
      if (v123 == i)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  v120 = _swiftEmptyArrayStorage;
LABEL_62:
  v110, v111, v112, v113, v114, v115, v116, v117;
  v132 = sub_F09EC();
  v120, v133, v134, v135, v136, v137, v138, v139;
  v140 = v222;
  [v222 replaceCountryCodes:v132];

  v23 = v223;
  [v140 setStyle:{objc_msgSend(v223, "style")}];
  v141 = [objc_opt_self() sharedFeatureFlags];
  v142 = [v141 isMissingMessagesEnabled];

  if ((v142 & 1) == 0 || [v23 style] != 43)
  {
    v149 = [v23 groupID];
    [v140 setGroupID:v149];

    v150 = [v23 originalGroupID];
    v146 = v220;
    v148 = v221;
    p_name = (&stru_124FF8 + 8);
    goto LABEL_70;
  }

  v143 = [v23 latestIdentifierForDomain:IMChatLookupDomainIMessageGroupID];
  sub_7225C(v23);
  v145 = v144;
  [v140 setGroupID:v143];

  v146 = v220;
  p_name = &stru_124FF8.name;
  if (v145)
  {
    v148 = v221;
LABEL_69:
    v150 = sub_F07BC();
    v145, v154, v155, v156, v157, v158, v159, v160;
    goto LABEL_70;
  }

  v151 = [v23 originalGroupID];
  v148 = v221;
  if (v151)
  {
    v152 = v151;
    sub_F07EC();
    v145 = v153;

    goto LABEL_69;
  }

  v150 = 0;
LABEL_70:
  [v140 setOriginalGroupID:v150];

  v161 = [v23 displayName];
  [v140 setDisplayName:v161];

  if (v213)
  {
    v162 = sub_F075C();
    [v146 setSpamModelMetadata:v162];
  }

  v163 = v214;
  v164 = [v214 findChatAndLinkMessage:v146 context:v140];
  if (v215)
  {
    v165 = [v163 filteringController];
    v166 = sub_F075C();
    [v165 recordFilteringMetricsForMessageItem:v146 filteredToChat:v164 filterExtensionMetadata:v166];
  }

  if (v148 == 2)
  {
    v167 = v208;
    [v164 setSpamDetectionSource:v208];
    v168 = [v146 p_name[502]];
    [v164 setSpamDetectedMessage:v168];

    v169 = objc_opt_self();
    v170 = [v169 sharedHelper];
    [v170 presentDebugUI];

    v171 = [v169 sharedHelper];
    [v171 recordJunkMetricsForSpamDetectionSource:v167 service:IMServiceNameRCS];
  }

  v172 = [objc_opt_self() sharedTracker];
  v173 = [v146 p_name[502]];
  if (!v173)
  {
    goto LABEL_86;
  }

  v174 = v173;
  [v172 startTrackingMessageGUID:v173 chat:v164];

  v175 = v216;
  v176 = v218;
  v210(v216, v211, v218);
  v177 = v164;
  v23 = v23;
  v178 = sub_F06AC();
  v179 = sub_F0CCC();
  if (!os_log_type_enabled(v178, v179))
  {

    v206 = v175;
    v205 = v176;
    goto LABEL_82;
  }

  v180 = swift_slowAlloc();
  v225[0] = swift_slowAlloc();
  *v180 = 136315906;
  v181 = [v177 guid];

  if (!v181)
  {
    goto LABEL_88;
  }

  v182 = sub_F07EC();
  v184 = v183;

  v185 = sub_3E850(v182, v184, v225);
  v184, v186, v187, v188, v189, v190, v191, v192;
  *(v180 + 4) = v185;
  *(v180 + 12) = 2080;
  v193 = [v23 guid];

  if (v193)
  {
    v194 = sub_F07EC();
    v196 = v195;

    v197 = sub_3E850(v194, v196, v225);
    v196, v198, v199, v200, v201, v202, v203, v204;
    *(v180 + 14) = v197;
    *(v180 + 22) = 2048;
    *(v180 + 24) = v221;
    *(v180 + 32) = 2048;
    *(v180 + 34) = v217;
    _os_log_impl(&dword_0, v178, v179, "Found chat %s from %s cat %ld sub %ld", v180, 0x2Au);
    swift_arrayDestroy();

    v205 = v218;
    v206 = v216;
LABEL_82:
    v209(v206, v205);
    v225[0] = v177;
    sub_388C8(&qword_1284E8, &qword_F3668);
    sub_F0A8C();

    return;
  }

LABEL_89:
  __break(1u);
}

uint64_t RCSServiceSession.shouldCategorize(_:)(uint64_t a1)
{
  v2 = sub_388C8(&unk_127FA0, &qword_F34C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for RCSMessage(0);
  sub_37380(a1 + *(v8 + 32), v7, &unk_127FA0, &qword_F34C0);
  v9 = type metadata accessor for RCSMessage.Content(0);
  v10 = 1;
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) != 1)
  {
    sub_37380(v7, v4, &unk_127FA0, &qword_F34C0);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v10 = 0;
    }

    else
    {
      sub_37AE8(v4, type metadata accessor for RCSMessage.Content);
    }
  }

  sub_372B0(v7, &unk_127FA0, &qword_F34C0);
  return v10;
}

void sub_6DA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, RCSServiceSession *a5, RCSServiceSession *a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  if (a4)
  {
    v13 = sub_F07EC();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  if (a5)
  {
    a5 = sub_F076C();
  }

  if (a6)
  {
    a6 = sub_F076C();
  }

  v12(a2, a3, v13, v15, a5, a6, a7);

  a6, v16, v17, v18, v19, v20, v21, v22;
  a5, v23, v24, v25, v26, v27, v28, v29;

  v15, v30, v31, v32, v33, v34, v35, v36;
}

id RCSServiceSession.message(with:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_F07BC();
  v4 = [v2 messageWithGUID:v3];

  return v4;
}

uint64_t sub_6DC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_72498;

  return sub_70CB0(a1, a2, a3, a4, a5);
}

uint64_t sub_6DCE8@<X0>(uint64_t a1@<X0>, RCSServiceSession *a2@<X1>, void *a3@<X8>)
{
  sub_5BD2C(a1, v14);
  if (v16[58])
  {
    v11 = v14[0];
    v12 = v14[1];
    *v13 = v15[0];
    *&v13[9] = *(v15 + 9);
    sub_5BD88(v16);
    v19 = v11;
    v20 = v12;
    v21[0] = *v13;
    v7 = *&v13[9];
  }

  else
  {
    sub_5EFF4(v14);
    v7 = 0uLL;
    v19 = 0u;
    v20 = 0u;
    v21[0] = 0u;
  }

  *(v21 + 9) = v7;
  v17[0] = v19;
  v17[1] = v20;
  v18[0] = v21[0];
  *(v18 + 9) = v7;
  v8 = type metadata accessor for RCSMessage(0);
  v9 = RCSServiceSession.groupChat(from:subscriptionInfo:group:)(v17, *(a1 + *(v8 + 60)), *(a1 + *(v8 + 60) + 8), *(a1 + *(v8 + 60) + 16), *(a1 + *(v8 + 60) + 24), a2);
  result = sub_372B0(&v19, &qword_1282F0, &qword_F3450);
  if (!v3)
  {
    *a3 = v9;
  }

  return result;
}

void sub_6DE08(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_373E8(a1, v4);
  sub_6F3C8(v6, v2, v4, v5);
  *a2 = v7;
}

id sub_6DE50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = RCSServiceSession.instantMessageChat(for:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_6DE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a1;
  v14 = swift_task_alloc();
  *(v7 + 64) = v14;
  *v14 = v7;
  v14[1] = sub_72484;

  return sub_71128(v7 + 16, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_6DF70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6E010;

  return RCSServiceSession.generateSafeRender(for:)(a1, a2);
}

uint64_t sub_6E010(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_6E118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_6E1C8;

  return RCSServiceSession.categorize(_:rcsMessage:foundChat:)(a2, a3, v7);
}

uint64_t sub_6E1C8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

RCSServiceSession *sub_6E2D8(RCSServiceSession *result, int64_t a2, void *a3, RCSServiceSession *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].state;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4[1].IMDTelephonyServiceSession_opaque;
  if (v11 <= v12)
  {
    v13 = *a4[1].IMDTelephonyServiceSession_opaque;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_388C8(&qword_128288, &qword_F3460);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14[1].IMDTelephonyServiceSession_opaque = v12;
    *v14[1].state = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v17 = &v14[2];
  v18 = &a4[2];
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *a4[1].IMDTelephonyServiceSession_opaque = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

RCSServiceSession *sub_6E3E4(RCSServiceSession *result, const char *a2, void *a3, RCSServiceSession *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].state;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4[1].IMDTelephonyServiceSession_opaque;
  if (v11 <= v12)
  {
    v13 = *a4[1].IMDTelephonyServiceSession_opaque;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_388C8(&qword_128550, &unk_F3700);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *v14[1].IMDTelephonyServiceSession_opaque = v12;
    *v14[1].state = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || &v14[2] >= (&a4[2] + 8 * v12))
    {
      memmove(&v14[2], &a4[2], 8 * v12);
    }

    *a4[1].IMDTelephonyServiceSession_opaque = 0;
  }

  else
  {
    sub_388C8(&qword_128558, &unk_F4430);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

RCSServiceSession *sub_6E518(RCSServiceSession *result, int64_t a2, char a3, RCSServiceSession *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4[1].state;
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *a4[1].IMDTelephonyServiceSession_opaque;
  if (v7 <= v8)
  {
    v9 = *a4[1].IMDTelephonyServiceSession_opaque;
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_388C8(&qword_128538, &unk_F36D8);
  v10 = *(sub_388C8(&qword_127EE0, qword_F2CB0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  *v13[1].IMDTelephonyServiceSession_opaque = v8;
  *v13[1].state = 2 * ((result - v12) / v11);
LABEL_19:
  v16 = sub_388C8(&qword_127EE0, qword_F2CB0);
  v21 = *(v16 - 1);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = &a4->IMDTelephonyServiceSession_opaque[v22];
  if (v5)
  {
    if (v13 < a4 || &v13->IMDTelephonyServiceSession_opaque[v22] >= &v23[*(v21 + 72) * v8])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4[1].IMDTelephonyServiceSession_opaque = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v23, v15, v16, v17, v18, v19, v20;
  return v13;
}

RCSServiceSession *sub_6E708(RCSServiceSession *result, int64_t a2, void *a3, RCSServiceSession *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].state;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4[1].IMDTelephonyServiceSession_opaque;
  if (v11 <= v12)
  {
    v13 = *a4[1].IMDTelephonyServiceSession_opaque;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_388C8(&qword_128540, &qword_F36E8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *v14[1].IMDTelephonyServiceSession_opaque = v12;
    *v14[1].state = 2 * (v16 >> 5);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v17 = &v14[2];
  v18 = &a4[2];
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[32 * v12])
    {
      memmove(v17, v18, 32 * v12);
    }

    *a4[1].IMDTelephonyServiceSession_opaque = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

RCSServiceSession *sub_6E830(RCSServiceSession *result, const char *a2, void *a3, RCSServiceSession *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].state;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4[1].IMDTelephonyServiceSession_opaque;
  if (v11 <= v12)
  {
    v13 = *a4[1].IMDTelephonyServiceSession_opaque;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_388C8(&qword_1284C8, &unk_F3640);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    *v14[1].IMDTelephonyServiceSession_opaque = v12;
    *v14[1].state = 2 * (v16 >> 5);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || &v14[2] >= &a4[2 * v12 + 2])
    {
      memmove(&v14[2], &a4[2], 32 * v12);
    }

    *a4[1].IMDTelephonyServiceSession_opaque = 0;
  }

  else
  {
    sub_388C8(&qword_1284D0, &qword_F49F0);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

RCSServiceSession *sub_6E98C(RCSServiceSession *result, int64_t a2, char a3, RCSServiceSession *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].state;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4[1].IMDTelephonyServiceSession_opaque;
  if (v11 <= v12)
  {
    v13 = *a4[1].IMDTelephonyServiceSession_opaque;
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_388C8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  *v17[1].IMDTelephonyServiceSession_opaque = v12;
  *v17[1].state = 2 * ((result - v16) / v15);
LABEL_19:
  v20 = a7(0);
  v25 = *(v20 - 1);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = &a4->IMDTelephonyServiceSession_opaque[v26];
  if (v9)
  {
    if (v17 < a4 || &v17->IMDTelephonyServiceSession_opaque[v26] >= &v27[*(v25 + 72) * v12])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4[1].IMDTelephonyServiceSession_opaque = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v27, v19, v20, v21, v22, v23, v24;
  return v17;
}

char *sub_6EB68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6EC48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_6EB88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6ED54(a1, a2, a3, *v3, &qword_128560, &unk_F3710, &qword_128568, &qword_F3950);
  *v3 = result;
  return result;
}

void *sub_6EBC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6ED54(a1, a2, a3, *v3, &qword_128530, &qword_F36D0, &qword_128528, &unk_F36C0);
  *v3 = result;
  return result;
}

char *sub_6EC08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6EE88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6EC28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_6EF98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_6EC48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_388C8(&qword_128288, &qword_F3460);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_6ED54(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_388C8(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_388C8(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_6EE88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_388C8(&qword_127F78, &qword_F2EB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_6EF98(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_388C8(&qword_1284E0, &qword_F3660);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_6F09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_54ED8(a1, a2);

  return sub_3FE38(a1 + 40, a2 + 40);
}

uint64_t sub_6F0E0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_3FE38(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_54F88(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_372B0(v21, &qword_128548, &unk_F36F0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_6F240@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_54ED8(*(v3 + 48) + 40 * v13, &v17);
    sub_3FE38(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = sub_54F88(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return sub_372B0(&v17, &qword_128518, &unk_F36B0);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_6F3C8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v183 = sub_F06CC();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v9 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v174 - v11;
  v193[3] = a3;
  v193[4] = a4;
  v13 = sub_37474(v193);
  (*(*(a3 - 8) + 16))(v13, a1, a3);
  v14 = a4 + 16;
  v185 = *(a4 + 16);
  v15 = v185(a3, a4);
  v179 = v9;
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v184 = a4 + 16;
    v180 = v13;
    v181 = a4;
    v19 = [objc_opt_self() sharedInstance];
    static IMDChatRCSGroupIdentity.encodeGroupID(_:)(v17, v18);
    v21 = v20;
    v22 = sub_F07BC();
    v21, v23, v24, v25, v26, v27, v28, v29;
    v30 = [a2 service];
    v31 = [v30 internalName];

    if (!v31)
    {
      sub_F07EC();
      v32 = v17;
      v34 = v33;
      v31 = sub_F07BC();
      v35 = v34;
      v17 = v32;
      v35, v36, v37, v38, v39, v40, v41, v42;
    }

    v43 = [v19 newestExistingChatWithOriginalGroupID:v22 onService:v31];

    v14 = v184;
    if (v43)
    {
      v177 = v17;
      v51 = v43;
      v52 = Logger.rcs.unsafeMutableAddressor();
      v53 = v182;
      v54 = v183;
      (*(v182 + 16))(v12, v52, v183);
      v178 = v51;

      v55 = sub_F06AC();
      v56 = sub_F0D0C();
      if (os_log_type_enabled(v55, v56))
      {
        v176 = a2;
        v57 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        *&v186 = v175;
        *v57 = 136315394;
        v58 = v178;
        v59 = [v178 guid];

        v18, v60, v61, v62, v63, v64, v65, v66;
        if (!v59)
        {
          __break(1u);
          goto LABEL_34;
        }

        v67 = sub_F07EC();
        v69 = v68;

        v70 = sub_3E850(v67, v69, &v186);
        v69, v71, v72, v73, v74, v75, v76, v77;
        *(v57 + 4) = v70;
        *(v57 + 12) = 2080;
        v78 = sub_3E850(v177, v18, &v186);
        v18, v79, v80, v81, v82, v83, v84, v85;
        *(v57 + 14) = v78;
        _os_log_impl(&dword_0, v55, v56, "Found chat %s for conversation ID %s", v57, 0x16u);
        swift_arrayDestroy();

        (*(v182 + 8))(v12, v183);
        a2 = v176;
        a4 = v181;
        v13 = v180;
        v14 = v184;
        if ((static IMDChatRCSGroupIdentity.migrationEnabled.getter() & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_14:
        if (v43)
        {
LABEL_26:
          v147 = v43;
          *(&v187 + 1) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
          *&v188 = &protocol witness table for IMDChat;
          *&v186 = v147;
          IMDChatRCSGroupIdentity.converge(identity:)(v193);
          sub_39BC4(&v186);
          goto LABEL_27;
        }

        v87 = (*(a4 + 8))(a3, a4);
        if (!v88)
        {
          v43 = 0;
          goto LABEL_27;
        }

        v89 = v87;
        v90 = v88;
        v184 = v14;
        v180 = v13;
        v181 = a4;
        v91 = [objc_opt_self() sharedInstance];
        v92 = sub_F07BC();
        v93 = [a2 service];
        v94 = [v93 internalName];

        if (!v94)
        {
          sub_F07EC();
          v96 = v95;
          v94 = sub_F07BC();
          v96, v97, v98, v99, v100, v101, v102, v103;
        }

        v43 = [v91 newestExistingChatWithOriginalGroupID:v92 onService:v94];

        if (!v43)
        {
          v90, v104, v105, v106, v107, v108, v109, v110;
          a4 = v181;
          goto LABEL_27;
        }

        v178 = v89;
        v176 = a2;
        v111 = v43;
        v112 = Logger.rcs.unsafeMutableAddressor();
        v113 = v182;
        v114 = v179;
        v115 = v183;
        (*(v182 + 16))(v179, v112, v183);
        v116 = v111;

        v117 = sub_F06AC();
        v118 = sub_F0D0C();
        if (!os_log_type_enabled(v117, v118))
        {

          swift_bridgeObjectRelease_n();
          (*(v113 + 8))(v114, v115);
          a2 = v176;
          a4 = v181;
          goto LABEL_25;
        }

        v119 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        *&v186 = v177;
        *v119 = 136315394;
        v120 = [v116 guid];

        v90, v121, v122, v123, v124, v125, v126, v127;
        if (v120)
        {
          v128 = sub_F07EC();
          v130 = v129;

          v131 = sub_3E850(v128, v130, &v186);
          v130, v132, v133, v134, v135, v136, v137, v138;
          *(v119 + 4) = v131;
          *(v119 + 12) = 2080;
          v139 = sub_3E850(v178, v90, &v186);
          v90, v140, v141, v142, v143, v144, v145, v146;
          *(v119 + 14) = v139;
          _os_log_impl(&dword_0, v117, v118, "Found chat %s for group URI %s", v119, 0x16u);
          swift_arrayDestroy();

          (*(v182 + 8))(v179, v183);
          a2 = v176;
          a4 = v181;
          goto LABEL_25;
        }

LABEL_34:
        __break(1u);
        return;
      }

      swift_bridgeObjectRelease_n();
      v86 = v178;

      (*(v53 + 8))(v12, v54);
    }

    else
    {
      v18, v44, v45, v46, v47, v48, v49, v50;
    }

    a4 = v181;
    v13 = v180;
    if ((static IMDChatRCSGroupIdentity.migrationEnabled.getter() & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v43 = 0;
  if (static IMDChatRCSGroupIdentity.migrationEnabled.getter())
  {
    goto LABEL_14;
  }

LABEL_25:
  if (v43)
  {
    goto LABEL_26;
  }

LABEL_27:
  v148 = v185(a3, a4);
  if (v149)
  {
    v156 = v149;
    v157 = *(*&a2[OBJC_IVAR___RCSServiceSession_state] + 72);
    if (*v157[1].IMDTelephonyServiceSession_opaque && (v158 = v148, , sub_51FEC(v158, v156), v160 = v159, v157, v159, v161, v162, v163, v164, v165, v166, (v160 & 1) != 0))
    {
      v191 = 0u;
      v192 = 0u;
      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v186 = 0u;
      sub_60AF0(v158, v156, &v186);
      v156, v167, v168, v169, v170, v171, v172, v173;

      sub_372B0(&v186, &qword_127EE8, &unk_F33F0);
    }

    else
    {
      v156, v149, v150, v151, v152, v153, v154, v155;
    }
  }

  sub_1EDC(v193);
}

unint64_t sub_6FD30(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v33 = _swiftEmptyArrayStorage;
  sub_6EBC8(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  sub_388C8(&qword_127F60, &unk_F3970);
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;
    *&v26 = sub_F07EC();
    *(&v26 + 1) = v7;

    sub_F0F3C();
    v31 = &type metadata for Int32;
    v30[10] = 2;
    *&v26 = sub_F07EC();
    *(&v26 + 1) = v8;
    sub_F0F3C();
    v32[8] = &type metadata for String;
    v32[5] = v6;
    v32[6] = v5;
    v9 = sub_F110C();

    sub_37380(v30, &v26, &qword_128510, &unk_F36A0);
    result = sub_51FA8(&v26);
    if (v11)
    {
      break;
    }

    *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = v9[6] + 40 * result;
    v13 = v26;
    v14 = v27;
    *(v12 + 32) = v28;
    *v12 = v13;
    *(v12 + 16) = v14;
    result = sub_54F88(v29, (v9[7] + 32 * result));
    v15 = v9[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_12;
    }

    v9[2] = v17;
    sub_37380(v32, &v26, &qword_128510, &unk_F36A0);
    result = sub_51FA8(&v26);
    if (v18)
    {
      break;
    }

    *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v19 = v9[6] + 40 * result;
    v20 = v26;
    v21 = v27;
    *(v19 + 32) = v28;
    *v19 = v20;
    *(v19 + 16) = v21;
    result = sub_54F88(v29, (v9[7] + 32 * result));
    v22 = v9[2];
    v16 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v16)
    {
      goto LABEL_12;
    }

    v9[2] = v23;

    sub_388C8(&qword_128510, &unk_F36A0);
    swift_arrayDestroy();
    v33 = v2;
    v25 = v2[2];
    v24 = v2[3];
    if (v25 >= v24 >> 1)
    {
      sub_6EBC8((v24 > 1), v25 + 1, 1);
      v2 = v33;
    }

    v2[2] = v25 + 1;
    v2[v25 + 4] = v9;
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for RCSServiceSession.ChatResolutionError(uint64_t a1)
{
  result = qword_128478;
  if (!qword_128478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_70068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_70080(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_F0C3C();
  v15 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_82EDC(v14, v6, v5);
      v14[1], v7, v8, v9, v10, v11, v12, v13;
      v4 += 2;
      --v2;
    }

    while (v2);
    return v15;
  }

  return result;
}

id _sSo17RCSServiceSessionC3RCSE19subscriptionContext3forSo024CTXPCServiceSubscriptionE0CSg04CoreC010RCSMessageV0H4InfoV_tF_0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 ctSubscriptionInfo];

  if (!v7)
  {
    return 0;
  }

  if (a4)
  {
    a4 = sub_F07BC();
  }

  if (a2)
  {
    a2 = sub_F07BC();
  }

  v8 = [v7 __im_subscriptionContextForForSimID:a4 phoneNumber:a2];

  return v8;
}

void sub_701FC(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v8 = objc_opt_self();
  v9 = [v8 sharedInstance];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_F07BC();
  if (a3 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  a4 = [v10 guidForNewIncomingTransferWithFilename:v11 isDirectory:0 totalBytes:a3 hfsType:0 hfsCreator:0 hfsFlags:0];

  if (!a4)
  {
LABEL_7:
    sub_72380();
    swift_allocError();
    *v17 = a1;
    v17[1] = a2;
    v17[2] = a3;
    swift_willThrow();

    return;
  }

  v13 = [v8 sharedInstance];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 transferForGUID:a4];

    if (v15)
    {
      v16 = sub_F019C();
      [v15 _setLocalURL:v16];

      return;
    }

    goto LABEL_7;
  }

LABEL_10:

  __break(1u);
}

void sub_7038C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v53 = a1;
  v54 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v55 = v8;
  v56 = 0;
  v57 = v11 & v9;
  v58 = a2;
  v59 = a3;

  sub_6F240(&v49);
  if (!*(&v50 + 1))
  {
    goto LABEL_25;
  }

  v46 = v49;
  v47 = v50;
  v48 = v51;
  sub_54F88(v52, v45);
  v12 = *a5;
  v13 = sub_51FA8(&v46);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    sub_76100(v18, a4 & 1);
    v13 = sub_51FA8(&v46);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v13 = sub_F126C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = v13;
    sub_76F14();
    v13 = v24;
    v21 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v21 = *a5;
  if (v19)
  {
LABEL_11:
    v22 = v13;
    sub_54F34(&v46);
    v23 = (v21[7] + 32 * v22);
    sub_1EDC(v23);
    sub_54F88(v45, v23);
    goto LABEL_15;
  }

LABEL_13:
  v21[(v13 >> 6) + 8] |= 1 << v13;
  v25 = v21[6] + 40 * v13;
  v26 = v46;
  v27 = v47;
  *(v25 + 32) = v48;
  *v25 = v26;
  *(v25 + 16) = v27;
  sub_54F88(v45, (v21[7] + 32 * v13));
  v28 = v21[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v17)
  {
    v21[2] = v29;
LABEL_15:
    sub_6F240(&v49);
    if (*(&v50 + 1))
    {
      v19 = 1;
      do
      {
        v46 = v49;
        v47 = v50;
        v48 = v51;
        sub_54F88(v52, v45);
        v32 = *a5;
        v33 = sub_51FA8(&v46);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v17 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v17)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v32[3] < v37)
        {
          sub_76100(v37, 1);
          v33 = sub_51FA8(&v46);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v30 = v33;
          sub_54F34(&v46);
          v31 = (v39[7] + 32 * v30);
          sub_1EDC(v31);
          sub_54F88(v45, v31);
        }

        else
        {
          v39[(v33 >> 6) + 8] |= 1 << v33;
          v40 = v39[6] + 40 * v33;
          v41 = v46;
          v42 = v47;
          *(v40 + 32) = v48;
          *v40 = v41;
          *(v40 + 16) = v42;
          sub_54F88(v45, (v39[7] + 32 * v33));
          v43 = v39[2];
          v17 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v39[2] = v44;
        }

        sub_6F240(&v49);
      }

      while (*(&v50 + 1));
    }

LABEL_25:
    sub_66138(v53);

    return;
  }

LABEL_27:
  __break(1u);
}

void _sSo17RCSServiceSessionC3RCSE4mark_15asThumbnailModeySo14IMFileTransferC_So0hifG0VtF_0(id a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [a1 userInfo];
    if (v4)
    {
      v5 = v4;
      v6 = sub_F076C();

      sub_388C8(&qword_128508, "ȷ");
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_F2C60;
      sub_F07EC();
      v40[1] = v8;
      sub_F0F3C();
      *(inited + 96) = &type metadata for Int;
      *(inited + 72) = a2;
      v9 = sub_80F34(inited);
      swift_setDeallocating();
      sub_372B0(inited + 32, &qword_128510, &unk_F36A0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40[0] = v6;
      sub_7038C(v9, sub_6F09C, 0, isUniquelyReferenced_nonNull_native, v40);
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = sub_F075C();

      [a1 setUserInfo:v18];

      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  v19 = sub_F07EC();
  v21 = v20;
  *&v41[0] = v19;
  *(&v41[0] + 1) = v20;

  sub_F0F3C();
  v22 = [a1 userInfo];
  if (!v22)
  {
LABEL_11:
    __break(1u);

    __break(1u);
    return;
  }

  v23 = v22;
  v24 = sub_F076C();
  v21, v25, v26, v27, v28, v29, v30, v31;

  sub_66354(v40, v41);
  sub_54F34(v40);
  sub_372B0(v41, &unk_127FB0, &qword_F2F40);
  if (v24)
  {
    v32 = sub_F075C();
    v24, v33, v34, v35, v36, v37, v38, v39;
  }

  else
  {
    v32 = 0;
  }

  [a1 setUserInfo:{v32, v24}];
}

void _sSo17RCSServiceSessionC3RCSE14acceptTransferyySo06IMFileE0CF_0(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 guid];
    v5 = sub_388C8(&qword_128320, &qword_F34B0);
    v6 = &v26 - ((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = [a1 localURL];
    __chkstk_darwin(v7);
    if (v8)
    {
      v9 = v8;
      sub_F01AC();

      v10 = sub_F01EC();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v10 = sub_F01EC();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    }

    sub_376D8(v6, v6, &qword_128320, &qword_F34B0);
    sub_F01EC();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v6, 1, v10);
    if (v12)
    {
      sub_372B0(v6, &qword_128320, &qword_F34B0);
      v13 = 0;
    }

    else
    {
      v14 = __chkstk_darwin(v12);
      v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v16, v6, v10, v14);
      sub_372B0(v6, &qword_128320, &qword_F34B0);
      sub_F01BC();
      v18 = v17;
      (*(v11 + 8))(v16, v10);
      v13 = sub_F07BC();
      v18, v19, v20, v21, v22, v23, v24, v25;
    }

    [v3 acceptTransfer:v4 path:v13];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_70CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  sub_F0AEC();
  v5[24] = sub_F0ADC();
  v7 = sub_F0A6C();
  v5[25] = v7;
  v5[26] = v6;

  return _swift_task_switch(sub_70D50, v7, v6);
}

uint64_t sub_70D50()
{
  v1 = v0[23];
  v2 = [objc_opt_self() sharedInstance];
  v0[27] = v2;
  v3 = sub_F07BC();
  v0[28] = v3;
  v4 = sub_F019C();
  v0[29] = v4;
  v5 = sub_F019C();
  v0[30] = v5;
  if (v1)
  {
    v6 = sub_F075C();
  }

  else
  {
    v6 = 0;
  }

  v0[31] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_70F20;
  v7 = swift_continuation_init();
  v0[17] = sub_388C8(&qword_128500, &unk_F3690);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_680C8;
  v0[13] = &unk_11E908;
  v0[14] = v7;
  [v2 downloadRCSTransferOnSimID:v3 transferURL:v4 destURL:v5 cryptoMaterial:v6 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_70F20()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return _swift_task_switch(sub_71028, v2, v1);
}

uint64_t sub_71028()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];

  v6 = v0[18];

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_710C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_71128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v7[24] = a2;
  v7[25] = a3;
  v7[23] = a1;
  sub_F0AEC();
  v7[30] = sub_F0ADC();
  v9 = sub_F0A6C();
  v7[31] = v9;
  v7[32] = v8;

  return _swift_task_switch(sub_711CC, v9, v8);
}

uint64_t sub_711CC()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[33] = v1;
  if (v1)
  {
    v2 = v0[28];
    v3 = sub_F07BC();
    v0[34] = v3;
    if (v2)
    {
      v2 = sub_F07BC();
    }

    v0[35] = v2;
    v4 = v0[29];
    v5 = v0[24];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_713B0;
    v6 = swift_continuation_init();
    v0[17] = sub_388C8(&qword_1284F8, &qword_F3688);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_69DF8;
    v0[13] = &unk_11E8E0;
    v0[14] = v6;
    [v1 generatePreviewForTransfer:v5 attachmentPath:v3 balloonBundleID:v2 senderContext:v4 completionBlock:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v7 = v0[23];
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_713B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 256);
  v4 = *(v1 + 248);
  if (v2)
  {
    v5 = sub_71588;
  }

  else
  {
    v5 = sub_714E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_714E0()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);

  v3 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 168);

  v4 = *(v0 + 184);
  *v4 = v7;
  *(v4 + 16) = v3;
  *(v4 + 24) = v8;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_71588()
{
  v1 = v0[35];
  v3 = v0[33];
  v2 = v0[34];

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

id _sSo17RCSServiceSessionC3RCSE13senderContext3forSo08IMSenderE0C04CoreC010RCSMessageV_tF_0(uint64_t a1)
{
  sub_5BD2C(a1, v48);
  if (v49[58])
  {
    v1 = v48[1];
    v2 = v48[3];
    v3 = v48[4];
    v4 = v48[6];
    v5 = [objc_opt_self() sharedInstance];
    v6 = sub_F07BC();
    v3, v7, v8, v9, v10, v11, v12, v13;
    v2, v14, v15, v16, v17, v18, v19, v20;
    v1, v21, v22, v23, v24, v25, v26, v27;
    v4, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v5 hasKnownSenderChatWithChatIdentifier:v6];

    sub_F07EC();
    v37 = v36;
    v38 = sub_F07BC();
    v37, v39, v40, v41, v42, v43, v44, v45;
    v46 = [objc_opt_self() contextWithKnownSender:v35 serviceName:v38];

    sub_5BD88(v49);
  }

  else
  {
    v46 = [objc_opt_self() fromMeContextWithServiceName:IMServiceNameRCS];
    sub_5EFF4(v48);
  }

  return v46;
}

BOOL _sSo17RCSServiceSessionC3RCSE15isSenderBlocked3forSb04CoreC010RCSMessageV_tF_0(uint64_t a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v108 - v7;
  __chkstk_darwin(v9);
  v11 = &v108 - v10;
  __chkstk_darwin(v12);
  v14 = &v108 - v13;
  __chkstk_darwin(v15);
  v17 = &v108 - v16;
  sub_5BD2C(a1, v111);
  if (v112[58] == 1)
  {
    v108 = v11;
    v110 = v8;
    v18 = v2;
    v20 = v111[1];
    v19 = v111[2];
    v21 = v111[3];
    v22 = v111[4];
    v23 = v111[6];
    sub_5BD88(v112);
    v22, v24, v25, v26, v27, v28, v29, v30;
    v20, v31, v32, v33, v34, v35, v36, v37;
    v23, v38, v39, v40, v41, v42, v43, v44;
    v109 = v19;
    v45 = sub_F07BC();
    v46 = sub_F07BC();
    v47 = IMPhoneNumberRefCopyForPhoneNumber();

    if (v47)
    {
      v48 = v18;
      if (CMFItemCreateWithPhoneNumber())
      {
        swift_unknownObjectRetain();
        IsItemBlocked = CMFBlockListIsItemBlocked();
        swift_unknownObjectRelease_n();

        v50 = v109;
        v51 = v110;
        if (IsItemBlocked)
        {
          v52 = 1;
          goto LABEL_22;
        }

LABEL_16:
        v64 = sub_F07BC();
        if (CMFItemCreateWithEmailAddress())
        {
          swift_unknownObjectRetain();
          v65 = CMFBlockListIsItemBlocked();
          swift_unknownObjectRelease_n();

          v52 = v65 != 0;
        }

        else
        {
          v66 = Logger.rcs.unsafeMutableAddressor();
          v67 = v108;
          (*(v3 + 16))(v108, v66, v48);
          v68 = sub_F06AC();
          v69 = sub_F0CEC();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_0, v68, v69, "Couldn't create email item", v70, 2u);
          }

          else
          {
          }

          (*(v3 + 8))(v67, v48);
          v52 = 0;
        }

LABEL_22:
        v71 = Logger.rcs.unsafeMutableAddressor();
        (*(v3 + 16))(v51, v71, v48);

        v72 = sub_F06AC();
        v73 = sub_F0CCC();
        v21, v74, v75, v76, v77, v78, v79, v80;
        if (os_log_type_enabled(v72, v73))
        {
          v81 = swift_slowAlloc();
          v111[0] = swift_slowAlloc();
          *v81 = 136315394;
          v82 = sub_3E850(v50, v21, v111);
          v21, v83, v84, v85, v86, v87, v88, v89;
          *(v81 + 4) = v82;
          *(v81 + 12) = 2080;
          if (v52)
          {
            v90 = 0;
          }

          else
          {
            v90 = 7630702;
          }

          if (v52)
          {
            v91 = 0xE000000000000000;
          }

          else
          {
            v91 = 0xE300000000000000;
          }

          v92 = sub_3E850(v90, v91, v111);
          v91, v93, v94, v95, v96, v97, v98, v99;
          *(v81 + 14) = v92;
          _os_log_impl(&dword_0, v72, v73, "Message for sender handle: %s is %s blocked.", v81, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v21, v100, v101, v102, v103, v104, v105, v106;
        }

        (*(v3 + 8))(v51, v48);
        return v52;
      }

      v61 = Logger.rcs.unsafeMutableAddressor();
      (*(v3 + 16))(v17, v61, v18);
      v58 = sub_F06AC();
      v62 = sub_F0CEC();
      if (os_log_type_enabled(v58, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_0, v58, v62, "Couldn't create phone item.", v63, 2u);
        v48 = v18;
      }

      else
      {

        v58 = v47;
      }
    }

    else
    {
      v57 = Logger.rcs.unsafeMutableAddressor();
      v48 = v18;
      (*(v3 + 16))(v14, v57, v18);
      v58 = sub_F06AC();
      v59 = sub_F0CEC();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_0, v58, v59, "Couldn't create phone number.", v60, 2u);
      }

      v17 = v14;
    }

    v50 = v109;
    v51 = v110;

    (*(v3 + 8))(v17, v48);
    goto LABEL_16;
  }

  sub_5EFF4(v111);
  v53 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v53, v2);
  v54 = sub_F06AC();
  v55 = sub_F0CEC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_0, v54, v55, "Cannot determine whether sender is blocked because the sender is nil.", v56, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_71EBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_71F04(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_71FA4(uint64_t a1)
{
  sub_72018(319);
  if (v1 <= 0x3F)
  {
    sub_72094(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_72018(uint64_t a1)
{
  if (!qword_128488)
  {
    sub_3CB70(&qword_1282F0, &qword_F3450);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_128488);
    }
  }
}

void sub_72094(uint64_t a1)
{
  if (!qword_128490)
  {
    type metadata accessor for RCSMessage(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_128490);
    }
  }
}

void sub_72100(uint64_t a1, uint64_t a2, unint64_t a3, RCSServiceSession *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(type metadata accessor for RCSMessage(0) - 8);
  v15 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_388C8(&qword_1284E8, &qword_F3668);
  sub_6C9F8(a1, a2, a3, a4, a5, a6, a7, *(v7 + 16), *(v7 + 24), *(v7 + 32), v7 + v15, *(v7 + v16), *(v7 + v16 + 8), *(v7 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_7225C(void *a1)
{
  v1 = [a1 latestIdentifierForDomain:IMChatLookupDomainRCSConversationID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_F07EC();

    return v3;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = sub_F0FBC();
    v8 = v7;
    v23[0] = 1;
    v24 = v6;
    v25 = v7;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v29 = 0;
    sub_94528(v23);
    0, v9, v10, v11, v12, v13, v14, v15;
    v8, v16, v17, v18, v19, v20, v21, v22;

    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_72380()
{
  result = qword_128520;
  if (!qword_128520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128520);
  }

  return result;
}

uint64_t sub_723D4()
{
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_72434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_724A4(void *a1)
{
  v2 = v1;
  v4 = [a1 labelID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_F07EC();
    v8 = v7;

    v9 = *&v2[OBJC_IVAR___RCSServiceSession_state];
    v10 = *(v9 + 24);
    if (*v10[1].IMDTelephonyServiceSession_opaque)
    {

      v11 = sub_51FEC(v6, v8);
      if (v12)
      {
        v19 = v11;
        v8, v12, v13, v14, v15, v16, v17, v18;
        v20 = *(*v10[3].state + 8 * v19);
        v10, v21, v22, v23, v24, v25, v26, v27;
        return v20;
      }

      v10, v12, v13, v14, v15, v16, v17, v18;
    }

    v30 = *(v9 + 16);
    v77 = 0;
    v31 = [v30 _getSystemConfiguration:a1 withError:&v77];
    v32 = v77;
    if (v31)
    {
      v33 = v31;
      v77 = *(v9 + 24);
      v34 = v32;

      v35 = v33;

      sub_44A08(v33, v6, v8);
      v36 = *(v9 + 24);
      *(v9 + 24) = v77;
      v8, v37, v38, v39, v40, v41, v42, v43;
      v36, v44, v45, v46, v47, v48, v49, v50;
      v51 = [v2 account];
      v52 = sub_72DF0();
      v53 = sub_51844(v52);
      v52, v54, v55, v56, v57, v58, v59, v60;
      v61 = sub_F075C();
      v53, v62, v63, v64, v65, v66, v67, v68;
      [v51 writeAccountDefaults:v61];

      return v35;
    }

    else
    {
      v69 = v77;
      v8, v70, v71, v72, v73, v74, v75, v76;
      sub_F015C();

      return swift_willThrow();
    }
  }

  else
  {
    sub_72750();
    swift_allocError();
    *v29 = a1;
    swift_willThrow();
    return a1;
  }
}

unint64_t sub_72750()
{
  result = qword_128570;
  if (!qword_128570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128570);
  }

  return result;
}

void sub_727A4()
{
  v1 = *(*(v0 + OBJC_IVAR___RCSServiceSession_state) + 24);
  v2 = 1 << v1[2].IMDTelephonyServiceSession_opaque[0];
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *v1[4].IMDTelephonyServiceSession_opaque;
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v8 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
LABEL_4:
  v9 = v6;
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
    v6 = v9;
LABEL_9:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = *(*v1[3].state + ((v6 << 9) | (8 * v10)));
    v12 = [v11 identity];
    if (v12)
    {
      v60 = v12;
      v13 = [v60 v8[35]];
      v61 = sub_F09FC();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_6E3E4(0, (*v7[1].IMDTelephonyServiceSession_opaque + 1), &dword_0 + 1, v7, v14, v15, v16, v17);
      }

      v19 = *v7[1].IMDTelephonyServiceSession_opaque;
      v18 = *v7[1].state;
      v8 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
      if (v19 >= v18 >> 1)
      {
        v7 = sub_6E3E4((v18 > 1), (v19 + 1), &dword_0 + 1, v7, v14, v15, v16, v17);
      }

      *v7[1].IMDTelephonyServiceSession_opaque = v19 + 1;
      *&v7[2].IMDTelephonyServiceSession_opaque[8 * v19] = v61;
      goto LABEL_4;
    }

    v9 = v6;
  }

  while (v4);
  while (1)
  {
LABEL_6:
    v6 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

    if (v6 >= v5)
    {
      break;
    }

    v4 = *&v1[4].IMDTelephonyServiceSession_opaque[8 * v6];
    ++v9;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  v1, v20, v21, v22, v23, v24, v25, v26;
  v34 = *v7[1].IMDTelephonyServiceSession_opaque;
  if (v34)
  {
    v35 = 0;
    v36 = _swiftEmptyArrayStorage;
    do
    {
      if (v35 >= *v7[1].IMDTelephonyServiceSession_opaque)
      {
        goto LABEL_37;
      }

      v37 = *&v7[2].IMDTelephonyServiceSession_opaque[8 * v35];
      v38 = *v37[1].IMDTelephonyServiceSession_opaque;
      v39 = *v36[1].IMDTelephonyServiceSession_opaque;
      v40 = v39 + v38;
      if (__OFADD__(v39, v38))
      {
        goto LABEL_38;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v40 <= *v36[1].state >> 1)
      {
        if (!*v37[1].IMDTelephonyServiceSession_opaque)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v39 <= v40)
        {
          v49 = v39 + v38;
        }

        else
        {
          v49 = v39;
        }

        v36 = sub_6E2D8(isUniquelyReferenced_nonNull_native, v49, &dword_0 + 1, v36, v45, v46, v47, v48);
        if (!*v37[1].IMDTelephonyServiceSession_opaque)
        {
LABEL_19:
          v37, v42, v43, v44, v45, v46, v47, v48;
          if (v38)
          {
            goto LABEL_39;
          }

          goto LABEL_20;
        }
      }

      if ((*v36[1].state >> 1) - *v36[1].IMDTelephonyServiceSession_opaque < v38)
      {
        goto LABEL_40;
      }

      swift_arrayInitWithCopy();
      v37, v50, v51, v52, v53, v54, v55, v56;
      if (v38)
      {
        v57 = *v36[1].IMDTelephonyServiceSession_opaque;
        v58 = __OFADD__(v57, v38);
        v59 = v57 + v38;
        if (v58)
        {
          goto LABEL_41;
        }

        *v36[1].IMDTelephonyServiceSession_opaque = v59;
      }

LABEL_20:
      ++v35;
    }

    while (v34 != v35);
  }

  v7, v27, v28, v29, v30, v31, v32, v33;
}

void sub_72AB4()
{
  v1 = *(*(v0 + OBJC_IVAR___RCSServiceSession_state) + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = 0;
  while (v4)
  {
LABEL_10:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(v1 + 56) + ((v7 << 9) | (8 * v9)));
    v11 = [v10 operationStatus];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 registrationState];

      if (v13)
      {
        if (v13 == &dword_0 + 1)
        {
          v6 = 5;
        }
      }

      else if (v6 <= 4)
      {
        v6 = 4;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_72BFC()
{
  v1 = *(*&v0[OBJC_IVAR___RCSServiceSession_state] + 24);

  sub_770B8(v2);
  v4 = v3;
  v1, v5, v6, v7, v8, v9, v10, v11;
  v12 = 1 << *(v4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v4 + 64);
  v15 = (v12 + 63) >> 6;
  v44 = v0;

  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  while (v14)
  {
LABEL_10:
    v19 = *(*(v4 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v14)))));
    sub_41440(v19);
    v21 = v20;

    v22 = *v21[1].IMDTelephonyServiceSession_opaque;
    v23 = *v17[1].IMDTelephonyServiceSession_opaque;
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      goto LABEL_24;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v24 > *v17[1].state >> 1)
    {
      if (v23 <= v24)
      {
        v33 = v23 + v22;
      }

      else
      {
        v33 = v23;
      }

      v17 = sub_6E2D8(isUniquelyReferenced_nonNull_native, v33, &dword_0 + 1, v17, v29, v30, v31, v32);
    }

    v14 &= v14 - 1;
    if (*v21[1].IMDTelephonyServiceSession_opaque)
    {
      if ((*v17[1].state >> 1) - *v17[1].IMDTelephonyServiceSession_opaque < v22)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();
      v21, v34, v35, v36, v37, v38, v39, v40;
      if (v22)
      {
        v41 = *v17[1].IMDTelephonyServiceSession_opaque;
        v42 = __OFADD__(v41, v22);
        v43 = v41 + v22;
        if (v42)
        {
          goto LABEL_27;
        }

        *v17[1].IMDTelephonyServiceSession_opaque = v43;
      }
    }

    else
    {
      v21, v26, v27, v28, v29, v30, v31, v32;
      if (v22)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return;
    }

    v14 = *(v4 + 64 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

unint64_t sub_72DF0()
{
  v1 = sub_81070(_swiftEmptyArrayStorage);
  v2 = sub_81070(_swiftEmptyArrayStorage);
  v3 = *(*(v0 + OBJC_IVAR___RCSServiceSession_state) + 24);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v244 = v6 & *(v3 + 64);
  v7 = (v5 + 63) >> 6;

  v248 = 0;
  v8 = 0;
  v9 = 0;
LABEL_5:
  while (2)
  {
    v10 = v244;
    if (v244)
    {
      v11 = v9;
    }

    else
    {
      do
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        if (v11 >= v7)
        {

          sub_388C8(&qword_1285A0, &unk_F74F0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_F3720;
          *(inited + 32) = sub_F07EC();
          *(inited + 40) = v173;
          sub_388C8(&qword_1285A8, &unk_F3760);
          v174 = swift_initStackObject();
          *(v174 + 16) = xmmword_F2C60;
          *(v174 + 32) = sub_F07EC();
          *(v174 + 40) = v175;
          sub_72AB4();
          *(v174 + 48) = v176;
          v177 = sub_81174(v174);
          swift_setDeallocating();
          sub_372B0(v174 + 32, &qword_1285B0, &qword_F38C0);
          *(inited + 72) = sub_388C8(&qword_1285B8, &unk_F3770);
          *(inited + 48) = v177;
          *(inited + 80) = sub_F07EC();
          *(inited + 88) = v178;
          v179 = [objc_opt_self() IMPhoneNumbersEnabledForMultipleSubscriptionDevice];
          if (v179)
          {
            v180 = v179;
            v181 = sub_F09FC();
          }

          else
          {
            v181 = _swiftEmptyArrayStorage;
          }

          *(inited + 120) = sub_388C8(&qword_128558, &unk_F4430);
          *(inited + 96) = v181;
          *(inited + 128) = sub_F07EC();
          *(inited + 136) = v182;
          sub_72BFC();
          v191 = v183;
          v192 = *v183[1].IMDTelephonyServiceSession_opaque;
          if (v192)
          {
            v246 = inited;
            v239 = v2;
            v258 = _swiftEmptyArrayStorage;
            sub_6EB88(0, v192, 0);
            v193 = _swiftEmptyArrayStorage;
            sub_388C8(&qword_128590, &qword_F3930);
            v243 = v191;
            state = v191[2].state;
            do
            {
              v195 = *(state - 1);
              v196 = *state;
              v256[0] = sub_F07EC();
              v256[1] = v197;
              v256[5] = &type metadata for String;
              v256[2] = v195;
              v256[3] = v196;
              v257[0] = sub_F07EC();
              v257[1] = v198;
              v257[5] = &type metadata for Int;
              v257[2] = 3;
              v199 = sub_F110C();
              sub_776D8(v256, &v253);
              v200 = v253;
              v201 = v254;

              v202 = sub_51FEC(v200, v201);
              if (v203)
              {
                goto LABEL_99;
              }

              *(v199 + ((v202 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v202;
              v204 = (v199[6] + 16 * v202);
              *v204 = v200;
              v204[1] = v201;
              sub_54F88(v255, (v199[7] + 32 * v202));
              v205 = v199[2];
              v84 = __OFADD__(v205, 1);
              v206 = v205 + 1;
              if (v84)
              {
                goto LABEL_100;
              }

              v199[2] = v206;
              sub_776D8(v257, &v253);
              v207 = v253;
              v208 = v254;
              v209 = sub_51FEC(v253, v254);
              if (v210)
              {
                goto LABEL_101;
              }

              *(v199 + ((v209 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v209;
              v211 = (v199[6] + 16 * v209);
              *v211 = v207;
              v211[1] = v208;
              sub_54F88(v255, (v199[7] + 32 * v209));
              v212 = v199[2];
              v84 = __OFADD__(v212, 1);
              v213 = v212 + 1;
              if (v84)
              {
                goto LABEL_102;
              }

              v199[2] = v213;

              sub_388C8(&qword_1285C0, &qword_F3780);
              swift_arrayDestroy();
              v258 = v193;
              v222 = v193[2];
              v221 = v193[3];
              if (v222 >= v221 >> 1)
              {
                sub_6EB88((v221 > 1), v222 + 1, 1);
                v193 = v258;
              }

              v193[2] = v222 + 1;
              v193[v222 + 4] = v199;
              state += 16;
              --v192;
            }

            while (v192);
            v243, v214, v215, v216, v217, v218, v219, v220;
            v2 = v239;
            inited = v246;
          }

          else
          {
            v183, v184, v185, v186, v187, v188, v189, v190;
            v193 = _swiftEmptyArrayStorage;
          }

          *(inited + 168) = sub_388C8(&qword_1285C8, &qword_F3788);
          *(inited + 144) = v193;
          *(inited + 176) = sub_F07EC();
          *(inited + 184) = v223;
          v224 = sub_388C8(&qword_1285D0, &qword_F3790);
          *(inited + 216) = v224;
          *(inited + 192) = v1;
          *(inited + 224) = sub_F07EC();
          *(inited + 232) = v225;
          *(inited + 264) = v224;
          *(inited + 240) = v2;
          v226 = sub_81270(inited);
          swift_setDeallocating();
          sub_388C8(&qword_1285C0, &qword_F3780);
          swift_arrayDestroy();
          sub_776C8(v248, 0);
          sub_776C8(v8, 0);
          return v226;
        }

        v10 = *(v4 + 8 * v11);
        ++v9;
      }

      while (!v10);
    }

    v245 = v10;
    v241 = v11;
    v12 = __clz(__rbit64(v10)) | (v11 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v240 = *v13;
    v14 = *(*(v3 + 56) + 8 * v12);
    v242 = v13[1];

    v15 = v14;
    v16 = sub_40D54(v15);
    v17 = _swiftEmptyArrayStorage;
    v251 = v15;
    if (!v16)
    {
      v18 = sub_F07EC();
      v20 = v19;
      v17 = sub_6E2D8(0, 1, &dword_0 + 1, _swiftEmptyArrayStorage, v21, v22, v23, v24);
      v30 = *v17[1].IMDTelephonyServiceSession_opaque;
      v29 = *v17[1].state;
      if (v30 >= v29 >> 1)
      {
        v17 = sub_6E2D8((v29 > 1), v30 + 1, &dword_0 + 1, v17, v25, v26, v27, v28);
      }

      *v17[1].IMDTelephonyServiceSession_opaque = v30 + 1;
      v31 = &v17[v30];
      *v31[2].IMDTelephonyServiceSession_opaque = v18;
      *v31[2].state = v20;
    }

    v32 = v17;
    if (sub_407A8(v15, 45) & 1) != 0 || (sub_407A8(v15, 45))
    {
      v39 = v245;
      v40 = v32;
    }

    else
    {
      v41 = sub_F07EC();
      v43 = v42;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v40 = v32;
      }

      else
      {
        v40 = sub_6E2D8(0, *v32[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v32, v35, v36, v37, v38);
      }

      v45 = *v40[1].IMDTelephonyServiceSession_opaque;
      v44 = *v40[1].state;
      v39 = v245;
      if (v45 >= v44 >> 1)
      {
        v171 = sub_6E2D8((v44 > 1), v45 + 1, &dword_0 + 1, v40, v35, v36, v37, v38);
        v39 = v245;
        v40 = v171;
      }

      *v40[1].IMDTelephonyServiceSession_opaque = v45 + 1;
      v46 = &v40[v45];
      *v46[2].IMDTelephonyServiceSession_opaque = v41;
      *v46[2].state = v43;
    }

    v244 = (v39 - 1) & v39;
    if (!*v40[1].IMDTelephonyServiceSession_opaque)
    {
      v47 = v40;
      v242, v33, v34, v40, v35, v36, v37, v38;

      v47, v48, v49, v50, v51, v52, v53, v54;
      v9 = v241;
      continue;
    }

    break;
  }

  v55 = 0;
  v235 = v3;
  v236 = v40 + 2;
  v233 = v7;
  v234 = v4;
  v231 = *v40[1].IMDTelephonyServiceSession_opaque;
  v232 = v40;
  while (1)
  {
    if (v55 >= *v40[1].IMDTelephonyServiceSession_opaque)
    {
      goto LABEL_103;
    }

    v237 = v55;
    v69 = &v236[v55];
    v71 = *v69;
    v70 = v69[1];

    sub_776C8(v248, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v252 = v70;
    v253 = v2;
    v74 = sub_51FEC(v71, v70);
    v75 = *v2[1].IMDTelephonyServiceSession_opaque;
    v76 = (v73 & 1) == 0;
    v77 = v75 + v76;
    if (__OFADD__(v75, v76))
    {
      goto LABEL_104;
    }

    v78 = v73;
    if (*v2[1].state >= v77)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_768B4();
        v2 = v253;
      }

      v79 = v252;
      if (v78)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_755F4(v77, isUniquelyReferenced_nonNull_native);
      v79 = v252;
      v2 = v253;
      v80 = sub_51FEC(v71, v252);
      if ((v78 & 1) != (v81 & 1))
      {
        goto LABEL_107;
      }

      v74 = v80;
      if (v78)
      {
        goto LABEL_37;
      }
    }

    *&v2[4].IMDTelephonyServiceSession_opaque[8 * (v74 >> 6)] |= 1 << v74;
    v82 = (*v2[3].IMDTelephonyServiceSession_opaque + 16 * v74);
    *v82 = v71;
    v82[1] = v79;
    *(*v2[3].state + 8 * v74) = _swiftEmptyArrayStorage;
    v83 = *v2[1].IMDTelephonyServiceSession_opaque;
    v84 = __OFADD__(v83, 1);
    v85 = v83 + 1;
    if (v84)
    {
      goto LABEL_105;
    }

    *v2[1].IMDTelephonyServiceSession_opaque = v85;

LABEL_37:
    v238 = v2;
    v86 = *v2[3].state;
    v87 = *(v86 + 8 * v74);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    *(v86 + 8 * v74) = v87;
    v250 = v71;
    if ((v88 & 1) == 0)
    {
      v87 = sub_6E2D8(0, *v87[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v87, v89, v90, v91, v92);
      *(v86 + 8 * v74) = v87;
    }

    v94 = *v87[1].IMDTelephonyServiceSession_opaque;
    v93 = *v87[1].state;
    if (v94 >= v93 >> 1)
    {
      v87 = sub_6E2D8((v93 > 1), v94 + 1, &dword_0 + 1, v87, v89, v90, v91, v92);
      *(v86 + 8 * v74) = v87;
    }

    *v87[1].IMDTelephonyServiceSession_opaque = v94 + 1;
    v95 = &v87[v94];
    *v95[2].IMDTelephonyServiceSession_opaque = v240;
    *v95[2].state = v242;

    sub_41440(v15);
    v104 = v96;
    v249 = *v96[1].IMDTelephonyServiceSession_opaque;
    if (v249)
    {
      break;
    }

    v252, v97, v98, v99, v100, v101, v102, v103;
    v104, v157, v158, v159, v160, v161, v162, v163;
LABEL_25:
    v2 = v238;
    v55 = v237 + 1;
    v248 = sub_777EC;
    v40 = v232;
    v4 = v234;
    v3 = v235;
    v7 = v233;
    if (v237 + 1 == v231)
    {
      v242, v63, v64, v232, v65, v66, v67, v68;

      v232, v164, v165, v166, v167, v168, v169, v170;
      v248 = sub_777EC;
      v9 = v241;
      goto LABEL_5;
    }
  }

  v105 = 0;
  v247 = v96 + 2;
  v106 = v252;
  while (1)
  {
    if (v105 >= *v104[1].IMDTelephonyServiceSession_opaque)
    {
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v107 = &v247[v105];
    v109 = *v107->IMDTelephonyServiceSession_opaque;
    v108 = *v107->state;

    sub_776C8(v8, 0);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v253 = v1;
    v112 = sub_51FEC(v250, v106);
    v113 = *v1[1].IMDTelephonyServiceSession_opaque;
    v114 = (v111 & 1) == 0;
    v115 = v113 + v114;
    if (__OFADD__(v113, v114))
    {
      goto LABEL_96;
    }

    v116 = v111;
    if (*v1[1].state >= v115)
    {
      break;
    }

    sub_755F4(v115, v110);
    v1 = v253;
    v117 = sub_51FEC(v250, v252);
    if ((v116 & 1) != (v118 & 1))
    {
      goto LABEL_107;
    }

    v112 = v117;
    if ((v116 & 1) == 0)
    {
LABEL_51:
      *&v1[4].IMDTelephonyServiceSession_opaque[8 * (v112 >> 6)] |= 1 << v112;
      v119 = (*v1[3].IMDTelephonyServiceSession_opaque + 16 * v112);
      *v119 = v250;
      v119[1] = v252;
      *(*v1[3].state + 8 * v112) = _swiftEmptyArrayStorage;
      v120 = *v1[1].IMDTelephonyServiceSession_opaque;
      v84 = __OFADD__(v120, 1);
      v121 = v120 + 1;
      if (v84)
      {
        goto LABEL_98;
      }

      *v1[1].IMDTelephonyServiceSession_opaque = v121;
    }

LABEL_53:
    v122 = *v1[3].state;
    v123 = *(v122 + 8 * v112);
    v124 = swift_isUniquelyReferenced_nonNull_native();
    *(v122 + 8 * v112) = v123;
    if ((v124 & 1) == 0)
    {
      v123 = sub_6E2D8(0, *v123[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v123, v128, v129, v130, v131);
      *(v122 + 8 * v112) = v123;
    }

    v133 = *v123[1].IMDTelephonyServiceSession_opaque;
    v132 = *v123[1].state;
    if (v133 >= v132 >> 1)
    {
      v123 = sub_6E2D8((v132 > 1), v133 + 1, &dword_0 + 1, v123, v128, v129, v130, v131);
      *(v122 + 8 * v112) = v123;
    }

    ++v105;
    *v123[1].IMDTelephonyServiceSession_opaque = v133 + 1;
    v134 = &v123[v133];
    *v134[2].IMDTelephonyServiceSession_opaque = v109;
    *v134[2].state = v108;
    v8 = sub_777EC;
    v15 = v251;
    v106 = v252;
    if (v105 == v249)
    {
      v252, v125, v126, v127, v128, v129, v130, v131;
      v104, v56, v57, v58, v59, v60, v61, v62;
      v8 = sub_777EC;
      goto LABEL_25;
    }
  }

  if (v110)
  {
    if ((v111 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_53;
  }

  sub_388C8(&qword_128598, &unk_F3750);
  v230 = sub_F10EC();
  if (!*v1[1].IMDTelephonyServiceSession_opaque)
  {
LABEL_75:
    v1, v135, v136, v137, v138, v139, v140, v141;
    v1 = v230;
    if ((v116 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_53;
  }

  v142 = (v230 + 64);
  v135 = &v1[4];
  v143 = ((1 << *(v230 + 32)) + 63) >> 6;
  if (v230 != v1 || v142 >= &v135[8 * v143])
  {
    memmove(v142, v135, 8 * v143);
  }

  v144 = 0;
  *(v230 + 16) = *v1[1].IMDTelephonyServiceSession_opaque;
  v145 = 1 << v1[2].IMDTelephonyServiceSession_opaque[0];
  if (v145 < 64)
  {
    v146 = ~(-1 << v145);
  }

  else
  {
    v146 = -1;
  }

  v147 = v146 & *v1[4].IMDTelephonyServiceSession_opaque;
  v148 = (v145 + 63) >> 6;
  v228 = v148;
  if (v147)
  {
    do
    {
      v149 = __clz(__rbit64(v147));
      v229 = (v147 - 1) & v147;
LABEL_73:
      v152 = v149 | (v144 << 6);
      v153 = (*v1[3].IMDTelephonyServiceSession_opaque + 16 * v152);
      v154 = v153[1];
      v155 = *(*v1[3].state + 8 * v152);
      v156 = (*(v230 + 48) + 16 * v152);
      *v156 = *v153;
      v156[1] = v154;
      *(*(v230 + 56) + 8 * v152) = v155;

      v148 = v228;
      v147 = v229;
    }

    while (v229);
  }

  v150 = v144;
  while (1)
  {
    v144 = v150 + 1;
    if (__OFADD__(v150, 1))
    {
      break;
    }

    if (v144 >= v148)
    {
      goto LABEL_75;
    }

    v151 = *&v1[4].IMDTelephonyServiceSession_opaque[8 * v144];
    ++v150;
    if (v151)
    {
      v149 = __clz(__rbit64(v151));
      v229 = (v151 - 1) & v151;
      goto LABEL_73;
    }
  }

LABEL_106:
  __break(1u);
LABEL_107:
  result = sub_F126C();
  __break(1u);
  return result;
}

void *sub_73B04()
{
  v1 = sub_F06CC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v5 = *(*(v0 + OBJC_IVAR___RCSServiceSession_state) + 16);
    v21 = 0;
    v6 = [v5 getSubscriptionInfoWithError:&v21];
    if (v6)
    {
      v7 = v6;
      v8 = v21;
      v9 = [v7 subscriptions];
      if (v9)
      {
        v10 = v9;
        sub_755A8();
        v11 = sub_F09FC();

        return v11;
      }
    }

    else
    {
      v13 = v21;
      sub_F015C();

      swift_willThrow();
      v14 = Logger.rcs.unsafeMutableAddressor();
      (*(v2 + 16))(v4, v14, v1);
      swift_errorRetain();
      v15 = sub_F06AC();
      v16 = sub_F0CFC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&dword_0, v15, v16, "Error reading subscription info: %@", v17, 0xCu);
        sub_372B0(v18, &qword_127AF0, &qword_F28E0);
      }

      else
      {
      }

      (*(v2 + 8))(v4, v1);
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_73DCC()
{
  v0 = sub_F06CC();
  v144 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v139 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v139 - v4;
  __chkstk_darwin(v6);
  v8 = &v139 - v7;
  __chkstk_darwin(v9);
  v11 = (&v139 - v10);
  v150 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v12 = *(v150 - 8);
  __chkstk_darwin(v150);
  v14 = &v139 - v13;
  if (os_variant_has_internal_ui())
  {
    v148 = v14;
    v147 = swift_allocObject();
    *(v147 + 16) = 0;
    if (qword_127A10 != -1)
    {
      swift_once();
    }

    v15 = v150;
    v16 = sub_3C96C(v150, qword_127C28);
    v17 = v12;
    v18 = v12 + 16;
    v19 = *(v12 + 16);
    v20 = v148;
    v142 = v18;
    v141 = v19;
    v19(v148, v16, v15);
    sub_F044C();
    v21 = *(v17 + 8);
    v143 = v17 + 8;
    v140 = v21;
    v21(v20, v15);
    v155 = v2;
    v156 = v0;
    v162 = v8;
    if (v163 != 1)
    {
LABEL_29:
      if (qword_127A18 != -1)
      {
        swift_once();
      }

      v79 = v150;
      v80 = sub_3C96C(v150, qword_127C40);
      v81 = v148;
      v141(v148, v80, v79);
      sub_F044C();
      v140(v81, v79);
      if (v163 != 1)
      {

        return;
      }

      v82 = sub_74AC4(v147);
      v84 = v82;
      if (v82 >> 62)
      {
        v85 = sub_F10DC();
        if (v85)
        {
LABEL_34:
          if (v85 >= 1)
          {
            v86 = 0;
            v87 = *(v149 + OBJC_IVAR___RCSServiceSession_state);
            v160 = v84 & 0xC000000000000001;
            v161 = v87;
            v158 = (v144 + 8);
            v159 = (v144 + 16);
            *&v83 = 136315138;
            v152 = v83;
            *&v83 = 136315394;
            v151 = v83;
            v157 = v84;
            v154 = v85;
            do
            {
              if (v160)
              {
                v88 = sub_F0FCC();
              }

              else
              {
                v88 = *(v84 + 8 * v86 + 32);
              }

              v89 = v88;
              v90 = *(v161 + 16);
              v163 = 0;
              if ([v90 disableLazuli:v89 withError:&v163])
              {
                v91 = v163;
                v92 = Logger.rcs.unsafeMutableAddressor();
                (*v159)(v8, v92, v0);
                v93 = v89;
                v94 = sub_F06AC();
                v95 = sub_F0CCC();

                if (os_log_type_enabled(v94, v95))
                {
                  v96 = swift_slowAlloc();
                  v97 = swift_slowAlloc();
                  v163 = v97;
                  *v96 = v152;
                  v98 = [v93 labelID];
                  if (v98)
                  {
                    v99 = v98;
                    v100 = sub_F07EC();
                    v102 = v101;

                    v0 = v156;
                  }

                  else
                  {
                    v100 = 0;
                    v102 = 0xE000000000000000;
                  }

                  v115 = sub_3E850(v100, v102, &v163);
                  v102, v116, v117, v118, v119, v120, v121, v122;
                  *(v96 + 4) = v115;
                  _os_log_impl(&dword_0, v94, v95, "Successfully disabled RCS for simID %s", v96, 0xCu);
                  sub_1EDC(v97);

                  v8 = v162;
                  (*v158)(v162, v0);
                  v2 = v155;
                  v84 = v157;
                }

                else
                {

                  (*v158)(v8, v0);
                  v2 = v155;
                }
              }

              else
              {
                v103 = v163;
                sub_F015C();

                swift_willThrow();
                v104 = Logger.rcs.unsafeMutableAddressor();
                (*v159)(v2, v104, v0);
                v105 = v89;
                swift_errorRetain();
                v106 = sub_F06AC();
                v107 = sub_F0CEC();

                if (os_log_type_enabled(v106, v107))
                {
                  v108 = swift_slowAlloc();
                  v109 = swift_slowAlloc();
                  v153 = swift_slowAlloc();
                  v163 = v153;
                  *v108 = v151;
                  v110 = [v105 labelID];
                  if (v110)
                  {
                    v111 = v110;
                    v112 = sub_F07EC();
                    v114 = v113;
                  }

                  else
                  {
                    v112 = 0;
                    v114 = 0xE000000000000000;
                  }

                  v123 = sub_3E850(v112, v114, &v163);
                  v114, v124, v125, v126, v127, v128, v129, v130;
                  *(v108 + 4) = v123;
                  *(v108 + 12) = 2112;
                  swift_errorRetain();
                  v131 = _swift_stdlib_bridgeErrorToNSError();
                  *(v108 + 14) = v131;
                  *v109 = v131;
                  _os_log_impl(&dword_0, v106, v107, "Error disabling RCS for simID %s: %@", v108, 0x16u);
                  sub_372B0(v109, &qword_127AF0, &qword_F28E0);

                  sub_1EDC(v153);

                  v2 = v155;
                  v0 = v156;
                  (*v158)(v155, v156);
                  v8 = v162;
                  v84 = v157;
                }

                else
                {

                  (*v158)(v2, v0);
                }

                v85 = v154;
              }

              ++v86;
            }

            while (v85 != v86);
            goto LABEL_56;
          }

LABEL_59:
          __break(1u);
        }
      }

      else
      {
        v85 = *(&dword_10 + (v82 & 0xFFFFFFFFFFFFFF8));
        if (v85)
        {
          goto LABEL_34;
        }
      }

LABEL_56:

      v84, v132, v133, v134, v135, v136, v137, v138;
      return;
    }

    v22 = sub_74AC4(v147);
    v31 = v22;
    if (v22 >> 62)
    {
      v32 = sub_F10DC();
      if (v32)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v32 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
      if (v32)
      {
LABEL_7:
        if (v32 < 1)
        {
          __break(1u);
          goto LABEL_59;
        }

        v33 = 0;
        v34 = *(v149 + OBJC_IVAR___RCSServiceSession_state);
        v159 = (v31 & 0xC000000000000001);
        v160 = v34;
        v157 = (v144 + 8);
        v158 = (v144 + 16);
        *&v30 = 136315138;
        v146 = v30;
        *&v30 = 136315394;
        v145 = v30;
        v153 = v11;
        v154 = v5;
        *&v152 = v31;
        v161 = v32;
        do
        {
          if (v159)
          {
            v35 = sub_F0FCC();
          }

          else
          {
            v35 = *&v31[2].IMDTelephonyServiceSession_opaque[8 * v33];
          }

          v36 = v35;
          v37 = *(v160 + 16);
          v163 = 0;
          if ([v37 enableLazuli:v36 withError:&v163])
          {
            v38 = v163;
            v39 = Logger.rcs.unsafeMutableAddressor();
            (*v158)(v11, v39, v0);
            v40 = v36;
            v41 = sub_F06AC();
            v42 = sub_F0CCC();

            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              v163 = v44;
              *v43 = v146;
              v45 = [v40 labelID];
              if (v45)
              {
                v46 = v45;
                v47 = sub_F07EC();
                v49 = v48;

                v0 = v156;
              }

              else
              {
                v47 = 0;
                v49 = 0xE000000000000000;
              }

              v62 = sub_3E850(v47, v49, &v163);
              v49, v63, v64, v65, v66, v67, v68, v69;
              *(v43 + 4) = v62;
              _os_log_impl(&dword_0, v41, v42, "Successfully enabled RCS for simID %s", v43, 0xCu);
              sub_1EDC(v44);

              v11 = v153;
              (*v157->IMDTelephonyServiceSession_opaque)(v153, v0);
              v8 = v162;
              v5 = v154;
            }

            else
            {

              (*v157->IMDTelephonyServiceSession_opaque)(v11, v0);
            }
          }

          else
          {
            v50 = v163;
            sub_F015C();

            swift_willThrow();
            v51 = Logger.rcs.unsafeMutableAddressor();
            (*v158)(v5, v51, v0);
            v52 = v36;
            swift_errorRetain();
            v53 = sub_F06AC();
            v54 = sub_F0CEC();

            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              *&v151 = swift_slowAlloc();
              v163 = v151;
              *v55 = v145;
              v57 = [v52 labelID];
              if (v57)
              {
                v58 = v57;
                v59 = sub_F07EC();
                v61 = v60;
              }

              else
              {
                v59 = 0;
                v61 = 0xE000000000000000;
              }

              v70 = sub_3E850(v59, v61, &v163);
              v61, v71, v72, v73, v74, v75, v76, v77;
              *(v55 + 4) = v70;
              *(v55 + 12) = 2112;
              swift_errorRetain();
              v78 = _swift_stdlib_bridgeErrorToNSError();
              *(v55 + 14) = v78;
              *v56 = v78;
              _os_log_impl(&dword_0, v53, v54, "Error enabling RCS for simID %s: %@", v55, 0x16u);
              sub_372B0(v56, &qword_127AF0, &qword_F28E0);

              sub_1EDC(v151);

              v0 = v156;
              v5 = v154;
              (*v157->IMDTelephonyServiceSession_opaque)(v154, v156);
              v8 = v162;
              v11 = v153;
            }

            else
            {

              (*v157->IMDTelephonyServiceSession_opaque)(v5, v0);
            }

            v31 = v152;
          }

          ++v33;
        }

        while (v161 != v33);
      }
    }

    v31, v23, v24, v25, v26, v27, v28, v29;
    v2 = v155;
    goto LABEL_29;
  }
}

RCSServiceSession *sub_74AC4(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = sub_73B04();
    swift_beginAccess();
    v4 = *v2;
    *v2 = v3;

    v4, v5, v6, v7, v8, v9, v10, v11;
  }

  return v3;
}

void sub_74B48()
{
  v1 = sub_F06CC();
  v2 = *(v1 - 1);
  __chkstk_darwin(v1);
  v4 = &v213 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v213 - v6;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v8 = sub_73B04();
    v17 = v8;
    if (v8 >> 62)
    {
      goto LABEL_61;
    }

    for (i = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)); i; i = sub_F10DC())
    {
      if (i < 1)
      {
        __break(1u);
      }

      v217 = v7;
      v221 = v4;
      v223 = v1;
      v19 = 0;
      v230 = v17 & 0xC000000000000001;
      v229 = OBJC_IVAR___RCSServiceSession_state;
      v222 = NSPOSIXErrorDomain;
      v219 = (v2 + 8);
      v220 = (v2 + 16);
      v20 = _swiftEmptyArrayStorage;
      *&v16 = 136315138;
      v215 = v16;
      *&v16 = 136315394;
      v216 = v16;
      v226 = v17;
      v227 = v0;
      v228 = i;
      while (1)
      {
        if (v230)
        {
          v28 = sub_F0FCC();
        }

        else
        {
          v28 = *(v17 + 8 * v19 + 32);
        }

        v2 = v28;
        v29 = [v28 labelID];
        if (!v29)
        {

          goto LABEL_7;
        }

        v30 = v29;
        v4 = sub_F07EC();
        v17 = v31;

        v32 = *(v0 + v229);
        v33 = *(v32 + 16);
        v231 = 0;
        v34 = [v33 _getSystemConfiguration:v2 withError:&v231];
        v7 = v231;
        if (!v34)
        {
          v50 = v231;
          v51 = sub_F015C();

          swift_willThrow();
          v224 = v51;
          v225 = sub_F014C();
          v52 = [v225 domain];
          v53 = sub_F07EC();
          v55 = v54;

          v57 = sub_F07EC();
          v63 = v56;
          if (v53 == v57 && v55 == v56)
          {
            v55, v56, v57, v58, v59, v60, v61, v62;
            v63, v64, v65, v66, v67, v68, v69, v70;
            goto LABEL_32;
          }

          v84 = sub_F122C();
          v55, v85, v86, v87, v88, v89, v90, v91;
          v63, v92, v93, v94, v95, v96, v97, v98;
          if (v84)
          {
LABEL_32:
            if ([v225 code] == &dword_4 + 2)
            {
              v106 = *(v32 + 24);

              v107 = sub_51FEC(v4, v17);
              if (v108)
              {
                v115 = v107;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v231 = v106;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  sub_76A24();
                  v106 = v231;
                }

                *(*(v106 + 6) + 16 * v115 + 8), v117, v118, v119, v120, v121, v122, v123;
                v124 = *(*(v106 + 7) + 8 * v115);
                sub_37938(v115, v106);
              }

              else
              {
                v124 = 0;
              }

              v138 = *(v32 + 24);
              *(v32 + 24) = v106;
              v138, v108, v109, v110, v111, v112, v113, v114;
              if (v124)
              {

                v139 = Logger.rcs.unsafeMutableAddressor();
                v140 = v217;
                v141 = v223;
                (*v220)(v217, v139, v223);
                v142 = v2;
                v143 = sub_F06AC();
                v144 = sub_F0CEC();

                if (os_log_type_enabled(v143, v144))
                {
                  v145 = v142;
                  v146 = swift_slowAlloc();
                  v147 = swift_slowAlloc();
                  v231 = v147;
                  *v146 = v215;
                  v218 = v145;
                  v148 = [v145 labelID];
                  if (v148)
                  {
                    v149 = v148;
                    v150 = sub_F07EC();
                    v214 = v147;
                    v151 = v150;
                    v153 = v152;

                    v148 = v151;
                    v147 = v214;
                  }

                  else
                  {
                    v153 = 0xE000000000000000;
                  }

                  v170 = sub_3E850(v148, v153, &v231);
                  v153, v171, v172, v173, v174, v175, v176, v177;
                  *(v146 + 4) = v170;
                  _os_log_impl(&dword_0, v143, v144, "RCS was disabled for %s but we weren't notified, tearing down now", v146, 0xCu);
                  sub_1EDC(v147);

                  (*v219)(v217, v223);
                  v142 = v218;
                }

                else
                {

                  (*v219)(v140, v141);
                }

                v178 = swift_isUniquelyReferenced_nonNull_native();
                v0 = v227;
                i = v228;
                if ((v178 & 1) == 0)
                {
                  v20 = sub_6E2D8(0, *v20[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v20, v179, v180, v181, v182);
                }

                v184 = *v20[1].IMDTelephonyServiceSession_opaque;
                v183 = *v20[1].state;
                if (v184 >= v183 >> 1)
                {
                  v20 = sub_6E2D8((v183 > 1), v184 + 1, &dword_0 + 1, v20, v179, v180, v181, v182);
                }

                *v20[1].IMDTelephonyServiceSession_opaque = v184 + 1;
                v185 = &v20[v184];
                *v185[2].IMDTelephonyServiceSession_opaque = v4;
                *v185[2].state = v17;
                v17 = v226;
                goto LABEL_7;
              }

              v17, v154, v155, v156, v157, v158, v159, v160;

              goto LABEL_49;
            }
          }

          v17, v99, v100, v101, v102, v103, v104, v105;
          v125 = Logger.rcs.unsafeMutableAddressor();
          v126 = v221;
          v127 = v223;
          (*v220)(v221, v125, v223);
          v128 = v2;
          swift_errorRetain();
          v129 = sub_F06AC();
          v130 = sub_F0CEC();

          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            v218 = swift_slowAlloc();
            v231 = v218;
            *v131 = v216;
            v133 = [v128 labelID];
            if (v133)
            {
              v134 = v133;
              v135 = sub_F07EC();
              v137 = v136;
            }

            else
            {
              v135 = 0;
              v137 = 0xE000000000000000;
            }

            v161 = sub_3E850(v135, v137, &v231);
            v137, v162, v163, v164, v165, v166, v167, v168;
            *(v131 + 4) = v161;
            *(v131 + 12) = 2112;
            swift_errorRetain();
            v169 = _swift_stdlib_bridgeErrorToNSError();
            *(v131 + 14) = v169;
            *v132 = v169;
            _os_log_impl(&dword_0, v129, v130, "Error reloading RCS configuration for %s: %@", v131, 0x16u);
            sub_372B0(v132, &qword_127AF0, &qword_F28E0);

            sub_1EDC(v218);

            (*v219)(v221, v223);
          }

          else
          {

            (*v219)(v126, v127);
          }

LABEL_49:
          v17 = v226;
          v0 = v227;
          i = v228;
          goto LABEL_7;
        }

        v35 = v34;
        v0 = *(v32 + 24);
        v36 = v231;

        v1 = v35;

        v37 = swift_isUniquelyReferenced_nonNull_native();
        v231 = v0;
        v38 = sub_51FEC(v4, v17);
        v46 = v0[2];
        v47 = (v39 & 1) == 0;
        v48 = __OFADD__(v46, v47);
        v49 = v46 + v47;
        if (v48)
        {
          break;
        }

        v7 = v39;
        if (v0[3] >= v49)
        {
          if ((v37 & 1) == 0)
          {
            v186 = v38;
            sub_76A24();
            v38 = v186;
          }
        }

        else
        {
          sub_7589C(v49, v37);
          v38 = sub_51FEC(v4, v17);
          if ((v7 & 1) != (v39 & 1))
          {
            sub_F126C();
            __break(1u);
            return;
          }
        }

        i = v228;
        v0 = v231;
        if (v7)
        {
          v71 = *(v231 + 7);
          v72 = *(v71 + 8 * v38);
          *(v71 + 8 * v38) = v1;
          v17, v39, v40, v41, v42, v43, v44, v45;
        }

        else
        {
          *&v231[8 * (v38 >> 6) + 64] |= 1 << v38;
          v73 = (v0[6] + 16 * v38);
          *v73 = v4;
          v73[1] = v17;
          *(v0[7] + 8 * v38) = v1;
          v74 = v0[2];
          v48 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v48)
          {
            goto LABEL_60;
          }

          v0[2] = v75;
        }

        v76 = *(v32 + 24);
        *(v32 + 24) = v0;
        v76, v39, v40, v41, v42, v43, v44, v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_6E2D8(0, *v20[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v20, v77, v78, v79, v80);
        }

        v82 = *v20[1].IMDTelephonyServiceSession_opaque;
        v81 = *v20[1].state;
        if (v82 >= v81 >> 1)
        {
          v20 = sub_6E2D8((v81 > 1), v82 + 1, &dword_0 + 1, v20, v77, v78, v79, v80);
        }

        *v20[1].IMDTelephonyServiceSession_opaque = v82 + 1;
        v83 = &v20[v82];
        *v83[2].IMDTelephonyServiceSession_opaque = v4;
        *v83[2].state = v17;
        v17 = v226;
        v0 = v227;
LABEL_7:
        if (i == ++v19)
        {
          v17, v21, v22, v23, v24, v25, v26, v27;
          goto LABEL_63;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      ;
    }

    v17, v9, v10, v11, v12, v13, v14, v15;
    v20 = _swiftEmptyArrayStorage;
LABEL_63:
    v194 = *v20[1].IMDTelephonyServiceSession_opaque;
    v20, v187, v188, v189, v190, v191, v192, v193;
    if (v194)
    {
      v195 = [v0 account];
      v196 = sub_72DF0();
      v197 = sub_51844(v196);
      v196, v198, v199, v200, v201, v202, v203, v204;
      v205 = sub_F075C();
      v197, v206, v207, v208, v209, v210, v211, v212;
      [v195 writeAccountDefaults:v205];
    }
  }
}

unint64_t sub_755A8()
{
  result = qword_128578;
  if (!qword_128578)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_128578);
  }

  return result;
}

void sub_755F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_388C8(&qword_128598, &unk_F3750);
  v35 = v4;
  v6 = sub_F10FC();
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
      }

      sub_F12FC();
      sub_F089C();
      v25 = sub_F132C();
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

void sub_7589C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_388C8(&qword_128580, &unk_F3730);
  v36 = v4;
  v6 = sub_F10FC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_F12FC();
      sub_F089C();
      v26 = sub_F132C();
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_75B40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_388C8(&qword_128588, &unk_F3740);
  v51 = v4;
  v6 = sub_F10FC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v50 = v5;
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
      v25 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v28 = v25 | (v8 << 6);
      v29 = *(v5 + 56);
      v30 = (*(v5 + 48) + 16 * v28);
      v31 = *v30;
      v32 = v30[1];
      v33 = (v29 + 160 * v28);
      if (v51)
      {
        v34 = v33[1];
        v52 = *v33;
        v53 = v34;
        v35 = v33[2];
        v36 = v33[3];
        v37 = v33[5];
        v56 = v33[4];
        v57 = v37;
        v54 = v35;
        v55 = v36;
        v38 = v33[6];
        v39 = v33[7];
        v40 = v33[9];
        v60 = v33[8];
        v61 = v40;
        v58 = v38;
        v59 = v39;
      }

      else
      {
        sub_7766C(v33, &v52);
      }

      sub_F12FC();
      sub_F089C();
      v41 = sub_F132C();
      v42 = -1 << *(v7 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v14 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v14 + 8 * v44);
          if (v48 != -1)
          {
            v15 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v43) & ~*(v14 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v31;
      v16[1] = v32;
      v17 = (*(v7 + 56) + 160 * v15);
      v18 = v53;
      *v17 = v52;
      v17[1] = v18;
      v19 = v54;
      v20 = v55;
      v21 = v57;
      v17[4] = v56;
      v17[5] = v21;
      v17[2] = v19;
      v17[3] = v20;
      v22 = v58;
      v23 = v59;
      v24 = v61;
      v17[8] = v60;
      v17[9] = v24;
      v17[6] = v22;
      v17[7] = v23;
      ++*(v7 + 16);
      v5 = v50;
    }

    v26 = v8;
    while (1)
    {
      v8 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v27 = v9[v8];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v12 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v49 = 1 << *(v5 + 32);
    v3 = v2;
    if (v49 >= 64)
    {
      bzero(v9, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v49;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_75E48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_388C8(&qword_128590, &qword_F3930);
  v34 = v4;
  v6 = sub_F10FC();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_54F88(v24, v35);
      }

      else
      {
        sub_3FE38(v24, v35);
      }

      sub_F12FC();
      sub_F089C();
      v25 = sub_F132C();
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_54F88(v35, (*(v7 + 56) + 32 * v15));
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_76100(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_388C8(&qword_127F60, &unk_F3970);
  v6 = sub_F10FC();
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
        sub_54F88((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_54ED8(v23, &v37);
        sub_3FE38(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_F0F1C(*(v7 + 40));
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
      sub_54F88(v36, (*(v7 + 56) + 32 * v15));
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

void sub_763B8(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_F0EAC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_F12FC();

      sub_F089C();
      v10 = sub_F132C();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 160 * v3);
        v24 = (v22 + 160 * v6);
        if (v3 != v6 || v23 >= v24 + 160)
        {
          memmove(v23, v24, 0xA0uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

uint64_t sub_7656C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_F0EAC() + 1) & ~v5;
    do
    {
      sub_54ED8(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_F0F1C(*(a2 + 40));
      result = sub_54F34(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_76710(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_76758(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_54F88(a4, (a5[7] + 32 * a1));
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

unint64_t sub_767C4(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 160 * result);
  v7 = a4[5];
  v6[4] = a4[4];
  v6[5] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a4[9];
  v6[8] = a4[8];
  v6[9] = v9;
  v10 = a4[7];
  v6[6] = a4[6];
  v6[7] = v10;
  v11 = a4[1];
  *v6 = *a4;
  v6[1] = v11;
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_76838(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_54F88(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void sub_768B4()
{
  v1 = v0;
  sub_388C8(&qword_128598, &unk_F3750);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_76A24()
{
  v1 = v0;
  sub_388C8(&qword_128580, &unk_F3730);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_76B90()
{
  v1 = v0;
  sub_388C8(&qword_128588, &unk_F3740);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v32 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v22 = 160 * v17;
        sub_7766C(*(v2 + 56) + 160 * v17, v33);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = v33[1];
        *v24 = v33[0];
        v26 = v33[6];
        v27 = v33[7];
        v28 = v33[9];
        v24[8] = v33[8];
        v24[9] = v28;
        v24[6] = v26;
        v24[7] = v27;
        v29 = v33[2];
        v30 = v33[3];
        v31 = v33[5];
        v24[4] = v33[4];
        v24[5] = v31;
        v24[2] = v29;
        v24[3] = v30;
        v24[1] = v25;
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

        v1 = v32;
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
}

void sub_76D70()
{
  v1 = v0;
  sub_388C8(&qword_128590, &qword_F3930);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_3FE38(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_54F88(v25, (*(v4 + 56) + v22));
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
}

void sub_76F14()
{
  v1 = v0;
  sub_388C8(&qword_127F60, &unk_F3970);
  v2 = *v0;
  v3 = sub_F10EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 40 * v17;
        sub_54ED8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_3FE38(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_54F88(v22, (*(v4 + 56) + v17));
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_770B8(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_773B4(v7, v4, v2);

      return;
    }
  }

  __chkstk_darwin(a1);
  v6 = &v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_77218(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_77218(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v3 = a3;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 48) + 16 * v13 + 8);
    v15 = *(*(v3 + 56) + 8 * v13);

    v16 = v15;
    v17 = [v16 operationStatus];
    if (v17)
    {
      v39 = v8;
      v25 = v3;
      v26 = v17;
      v27 = [v17 switchState];
      v14, v28, v29, v30, v31, v32, v33, v34;

      v3 = v25;
      v8 = v39;
      if (!v27)
      {
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
LABEL_17:
          sub_7742C(a1, v36, v38, v3);
          return;
        }
      }
    }

    else
    {
      v14, v18, v19, v20, v21, v22, v23, v24;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_17;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_773B4(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_77218(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_7742C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_388C8(&qword_128580, &unk_F3730);
  result = sub_F110C();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_F12FC();

    v33 = v21;
    sub_F089C();
    result = sub_F132C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

double sub_776C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_776D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_1285C0, &qword_F3780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_77754(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_7779C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void RCSServiceSession.process(participantChange:)(uint64_t a1)
{
  v2 = v1;
  v62 = sub_388C8(&qword_127EE0, qword_F2CB0);
  __chkstk_darwin(v62);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_F06CC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Logger.rcs.unsafeMutableAddressor();
  v14 = *(v10 + 16);
  v61 = v9;
  v14(v12, v13, v9);
  sub_77C34(a1, v8);
  sub_77C34(a1, v5);
  v15 = sub_F06AC();
  v16 = sub_F0CCC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v60 = a1;
    v18 = v17;
    v59 = swift_slowAlloc();
    v63 = v59;
    *v18 = 136446466;
    sub_F035C();
    sub_5F9D4();
    v19 = sub_F11EC();
    v21 = v20;
    sub_372B0(v8, &qword_127EE0, qword_F2CB0);
    v22 = sub_3E850(v19, v21, &v63);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v30 = v62;
    RCSParticipantChange.debugDescription.getter(v62);
    v32 = v31;
    v34 = v33;
    sub_372B0(v5, &qword_127EE0, qword_F2CB0);
    v35 = sub_3E850(v32, v34, &v63);
    v34, v36, v37, v38, v39, v40, v41, v42;
    *(v18 + 14) = v35;
    _os_log_impl(&dword_0, v15, v16, "Internalizing participant change %{public}s: %s", v18, 0x16u);
    swift_arrayDestroy();

    a1 = v60;

    (*(v10 + 8))(v12, v61);
  }

  else
  {

    sub_372B0(v5, &qword_127EE0, qword_F2CB0);
    sub_372B0(v8, &qword_127EE0, qword_F2CB0);
    (*(v10 + 8))(v12, v61);
    v30 = v62;
  }

  v43 = [v2 account];
  v44 = RCSParticipantChange.imdChangeContexts(with:)(v43, v30);

  v52 = *v44[1].IMDTelephonyServiceSession_opaque;
  if (v52)
  {
    state = v44[2].state;
    do
    {
      v54 = *(state - 1);
      if (*state == 1)
      {
        [v2 didUpdateChatStatusWithContext:v54];
      }

      else
      {
        v55 = v54;
        v56 = [v2 didChangeMemberStatus:v55];
      }

      state += 16;
      --v52;
    }

    while (v52);
  }

  v44, v45, v46, v47, v48, v49, v50, v51;
  v57 = [objc_opt_self() sharedInstance];
  [v57 storeChat:*(a1 + *(v30 + 36))];
}

uint64_t sub_77C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127EE0, qword_F2CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_77CA4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_388C8(&qword_127EE0, qword_F2CB0);
  __chkstk_darwin(v6);
  v8 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v128 - v10;
  v12 = sub_F06CC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v128 - v17;
  v19 = Logger.rcs.unsafeMutableAddressor();
  v20 = *(v13 + 16);
  v134 = a2;
  v135 = v12;
  v136 = v3;
  if (a2)
  {
    v20(v18, v19, v12);
    sub_77C34(a1, v11);
    v21 = sub_F06AC();
    v22 = sub_F0CCC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v137[0] = v24;
      *v23 = 136446210;
      sub_F035C();
      v133 = a1;
      sub_5F9D4();
      v25 = sub_F11EC();
      v27 = v26;
      sub_372B0(v11, &qword_127EE0, qword_F2CB0);
      v28 = sub_3E850(v25, v27, v137);
      v29 = v27;
      a1 = v133;
      v29, v30, v31, v32, v33, v34, v35, v36;
      *(v23 + 4) = v28;
      _os_log_impl(&dword_0, v21, v22, "Relaying finished participant change ID %{public}s", v23, 0xCu);
      sub_1EDC(v24);
      v3 = v136;
    }

    else
    {

      sub_372B0(v11, &qword_127EE0, qword_F2CB0);
    }

    (*(v13 + 8))(v18, v135);
  }

  else
  {
    v20(v15, v19, v12);
    sub_77C34(a1, v8);
    v37 = sub_F06AC();
    v38 = sub_F0CCC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v137[0] = v40;
      *v39 = 136446210;
      sub_F035C();
      v133 = a1;
      sub_5F9D4();
      v41 = sub_F11EC();
      v43 = v42;
      sub_372B0(v8, &qword_127EE0, qword_F2CB0);
      v44 = sub_3E850(v41, v43, v137);
      v45 = v43;
      a1 = v133;
      v45, v46, v47, v48, v49, v50, v51, v52;
      *(v39 + 4) = v44;
      _os_log_impl(&dword_0, v37, v38, "Asking phone to execute participant change ID %{public}s", v39, 0xCu);
      sub_1EDC(v40);
      v3 = v136;
    }

    else
    {

      sub_372B0(v8, &qword_127EE0, qword_F2CB0);
    }

    (*(v13 + 8))(v15, v135);
  }

  v53 = *(a1 + v6[9]);
  v54 = [v3 groupIDForChat:v53];
  v55 = [v53 originalGroupID];
  if (!v55)
  {

    __break(1u);
    goto LABEL_30;
  }

  v56 = v55;
  v57 = sub_F07EC();
  v59 = v58;

  v60 = [objc_opt_self() sharedFeatureFlags];
  v61 = [v60 isMissingMessagesEnabled];

  v135 = v54;
  if (!v61)
  {
    v133 = v57;
    goto LABEL_17;
  }

  v62 = [v53 latestIdentifierForDomain:IMChatLookupDomainRCSConversationID];
  if (!v62)
  {
    v72 = [objc_opt_self() sharedInstance];
    if (v72)
    {
      v73 = v72;
      v133 = v57;
      v74 = sub_F0FBC();
      v76 = v75;
      LOBYTE(v137[0]) = 1;
      v137[1] = v74;
      v137[2] = v75;
      memset(&v137[3], 0, 24);
      v138 = 0;
      sub_94528(v137);
      0, v77, v78, v79, v80, v81, v82, v83;
      v76, v84, v85, v86, v87, v88, v89, v90;

      goto LABEL_17;
    }

LABEL_30:

    __break(1u);
    return;
  }

  v70 = v62;
  v59, v63, v64, v65, v66, v67, v68, v69;
  v133 = sub_F07EC();
  v59 = v71;

LABEL_17:
  v132 = *(a1 + v6[10]);
  v91 = *(a1 + v6[12] + 8);
  v92 = [v3 service];
  v93 = [v92 internalName];

  if (!v93)
  {
    sub_F07EC();
    v95 = v94;
    v93 = sub_F07BC();
    v95, v96, v97, v98, v99, v100, v101, v102;
  }

  v130 = sub_F035C();
  v131 = &v128;
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v104 = &v128 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F034C();
  v105 = (a1 + v6[13]);
  v106 = *v105;
  v107 = v105[1];
  v108 = *(a1 + v6[14]);
  v109 = sub_F075C();
  if (v91)
  {
    v110 = sub_F07BC();
  }

  else
  {
    v110 = 0;
  }

  v111 = sub_F07BC();
  v59, v112, v113, v114, v115, v116, v117, v118;
  v119 = sub_F033C();
  v128 = v106;
  if (v107)
  {
    v120 = sub_F07BC();
  }

  else
  {
    v120 = 0;
  }

  v121 = objc_allocWithZone(IMDRelayGroupParticipantsUpdateMessage);
  BYTE1(v127) = v108;
  LOBYTE(v127) = 0;
  v122 = v135;
  v123 = [v121 initWithChangeType:v132 changedParticipants:v109 sender:v110 service:v93 groupID:v135 originalGroupID:v111 guid:v119 destinationCallerID:v120 failed:v127 fromMe:?];

  (*(v129 + 8))(v104, v130);
  v124 = [v136 relayController];
  v125 = v123;
  if (v107)
  {
    v126 = sub_F07BC();
  }

  else
  {
    v126 = 0;
  }

  [v124 reflectGroupMutation:v123 callerID:v126 didOccurLocally:v134 & 1];
}