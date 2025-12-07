uint64_t sub_100042BB0()
{
  v1 = sub_100054094();
  v0[21] = v1;
  v0[22] = *(v1 - 8);
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v2 = sub_100053DF4();
  v0[28] = v2;
  v0[29] = *(v2 - 8);
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();

  return _swift_task_switch(sub_100042D3C, 0, 0);
}

uint64_t sub_100042D3C()
{
  v0[33] = [objc_opt_self() defaultManager];
  v1 = IMCachesDirectoryURL();
  sub_100053DC4();

  sub_100040160();
  v2 = *(v0[29] + 8);
  v2(v0[32], v0[28]);
  v0[34] = 0;
  v0[35] = v2;
  v0[36] = objc_opt_self();
  sub_100054214();
  v0[37] = sub_100054204();
  v4 = sub_1000541E4();

  return _swift_task_switch(sub_100042FDC, v4, v3);
}

uint64_t sub_100042FDC()
{
  v1 = *(v0 + 288);

  *(v0 + 304) = [v1 allServiceSessions];

  return _swift_task_switch(sub_10004308C, 0, 0);
}

uint64_t sub_10004308C()
{
  v1 = v0[38];
  sub_10003AA94(0, &qword_10008AF30, IMDServiceSession_ptr);
  v2 = sub_1000541B4();
  v0[39] = v2;

  if (v2 >> 62)
  {
    v3 = sub_1000543B4();
    v0[40] = v3;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[40] = v3;
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
      }

      v0[41] = 0;
      v4 = v0[39];
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = sub_100054344();
      }

      else
      {
        v5 = *(v4 + 32);
      }

      v6 = v5;
      v0[42] = v5;
      v7 = v0[27];
      v8 = v0[21];
      v9 = v0[22];
      v10 = sub_1000338D8();
      (*(v9 + 16))(v7, v10, v8);
      v11 = v6;
      v12 = sub_100054074();
      v13 = sub_100054264();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v15 = v11;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v12, v13, "Requesting %@ to delete data", v14, 0xCu);
        sub_100036BF0(v15, &unk_10008ACF0, &unk_10005EC10);
      }

      v17 = v0[27];
      v18 = v0[21];
      v19 = v0[22];

      (*(v19 + 8))(v17, v18);
      v0[2] = v0;
      v0[3] = sub_100043430;
      v20 = swift_continuation_init();
      v0[17] = sub_1000334C8(&qword_10008AF38, qword_10005EC40);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_100040580;
      v0[13] = &unk_100082A48;
      v0[14] = v20;
      [v11 deleteAllDataWithCompletionHandler:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }
  }

  sub_100054054();
  v21 = swift_task_alloc();
  v0[43] = v21;
  *v21 = v0;
  v21[1] = sub_10004388C;

  return static SyncCoordinator.clearSyncStoreWhenSafe()();
}

uint64_t sub_100043430()
{

  return _swift_task_switch(sub_10004353C, 0, 0);
}

uint64_t sub_10004353C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 320);

  if (v1 + 1 == v2)
  {

    sub_100054054();
    v3 = swift_task_alloc();
    *(v0 + 344) = v3;
    *v3 = v0;
    v3[1] = sub_10004388C;

    return static SyncCoordinator.clearSyncStoreWhenSafe()();
  }

  else
  {
    v4 = *(v0 + 328) + 1;
    *(v0 + 328) = v4;
    v5 = *(v0 + 312);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = sub_100054344();
    }

    else
    {
      v6 = *(v5 + 8 * v4 + 32);
    }

    v7 = v6;
    *(v0 + 336) = v6;
    v8 = *(v0 + 216);
    v9 = *(v0 + 168);
    v10 = *(v0 + 176);
    v11 = sub_1000338D8();
    (*(v10 + 16))(v8, v11, v9);
    v12 = v7;
    v13 = sub_100054074();
    v14 = sub_100054264();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "Requesting %@ to delete data", v15, 0xCu);
      sub_100036BF0(v16, &unk_10008ACF0, &unk_10005EC10);
    }

    v18 = *(v0 + 216);
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);

    (*(v20 + 8))(v18, v19);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100043430;
    v21 = swift_continuation_init();
    *(v0 + 136) = sub_1000334C8(&qword_10008AF38, qword_10005EC40);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100040580;
    *(v0 + 104) = &unk_100082A48;
    *(v0 + 112) = v21;
    [v12 deleteAllDataWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10004388C()
{

  return _swift_task_switch(sub_1000439B4, 0, 0);
}

uint64_t sub_1000439B4()
{
  v77 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 224);
  [objc_msgSend(objc_opt_self() "synchronousDatabase")];
  swift_unknownObjectRelease();
  v5 = IMSMSDirectoryURL();
  sub_100053DC4();

  sub_100053DB4(v6);
  v8 = v7;
  v1(v3, v4);
  *(v0 + 160) = 0;
  v9 = [v2 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:0 error:v0 + 160];

  v10 = *(v0 + 160);
  if (v9)
  {
    v11 = sub_1000541B4();
    v12 = v10;

    v13 = *(v11 + 16);
    if (v13)
    {
      v14 = v0 + 144;
      v15 = *(v0 + 232);
      v16 = *(v0 + 176);
      v17 = *(v15 + 16);
      v15 += 16;
      v75 = v17;
      v18 = v11 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v74 = *(v15 + 56);
      v63 = (v16 + 8);
      v64 = (v16 + 16);
      v19 = *(v0 + 272);
      v17(*(v0 + 240), v18, *(v0 + 224));
      while (1)
      {
        v20 = sub_100053DE4();
        v22 = v21;
        *(v0 + 144) = v20;
        *(v0 + 152) = v21;
        v23 = swift_task_alloc();
        *(v23 + 16) = v14;
        v24 = sub_1000422FC(sub_1000441E8, v23, &_swiftEmptyArrayStorage);

        if (v24)
        {
          (*(v0 + 280))(*(v0 + 240), *(v0 + 224));
        }

        else
        {
          sub_100040160();
          v25 = *(v0 + 168);
          if (v19)
          {
            v26 = *(v0 + 184);
            v27 = sub_1000338D8();
            (*v64)(v26, v27, v25);

            swift_errorRetain();
            v28 = sub_100054074();
            v29 = sub_100054264();

            log = v28;
            v30 = os_log_type_enabled(v28, v29);
            v31 = *(v0 + 280);
            v70 = *(v0 + 224);
            v72 = *(v0 + 240);
            v65 = *(v0 + 168);
            v66 = *(v0 + 184);
            if (v30)
            {
              v32 = swift_slowAlloc();
              v62 = v31;
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v76[0] = v34;
              *v32 = 136315394;
              v35 = sub_100002F9C(v20, v22, v76);

              *(v32 + 4) = v35;
              *(v32 + 12) = 2112;
              swift_errorRetain();
              v36 = _swift_stdlib_bridgeErrorToNSError();
              *(v32 + 14) = v36;
              *v33 = v36;
              _os_log_impl(&_mh_execute_header, log, v29, "Error deleting file at %s: %@", v32, 0x16u);
              sub_100036BF0(v33, &unk_10008ACF0, &unk_10005EC10);

              sub_1000031D0(v34);
              v14 = v0 + 144;

              (*v63)(v66, v65);
              v62(v72, v70);
            }

            else
            {

              (*v63)(v66, v65);
              v31(v72, v70);
            }

            v19 = 0;
          }

          else
          {
            v37 = *(v0 + 208);
            v38 = sub_1000338D8();
            (*v64)(v37, v38, v25);

            v39 = sub_100054074();
            v40 = sub_100054254();

            v41 = os_log_type_enabled(v39, v40);
            v42 = *(v0 + 280);
            v43 = *(v0 + 240);
            v44 = *(v0 + 208);
            v71 = *(v0 + 168);
            v73 = *(v0 + 224);
            if (v41)
            {
              loga = *(v0 + 280);
              v45 = swift_slowAlloc();
              v67 = v43;
              v46 = swift_slowAlloc();
              v76[0] = v46;
              *v45 = 136315138;
              v47 = sub_100002F9C(v20, v22, v76);

              *(v45 + 4) = v47;
              _os_log_impl(&_mh_execute_header, v39, v40, "Deleted file: %s", v45, 0xCu);
              sub_1000031D0(v46);

              (*v63)(v44, v71);
              (loga)(v67, v73);
            }

            else
            {

              (*v63)(v44, v71);
              v42(v43, v73);
            }

            v19 = 0;
            v14 = v0 + 144;
          }
        }

        v18 += v74;
        if (!--v13)
        {
          break;
        }

        v75(*(v0 + 240), v18, *(v0 + 224));
      }
    }

    else
    {
    }
  }

  else
  {
    v48 = *(v0 + 192);
    v49 = *(v0 + 168);
    v50 = *(v0 + 176);
    v51 = v10;
    sub_100053DA4();

    swift_willThrow();
    v52 = sub_1000338D8();
    (*(v50 + 16))(v48, v52, v49);
    swift_errorRetain();
    v53 = sub_100054074();
    v54 = sub_100054264();

    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 264);
    if (v55)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      swift_errorRetain();
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v59;
      *v58 = v59;
      _os_log_impl(&_mh_execute_header, v53, v54, "Failed to fetch contents of directory with error: %@", v57, 0xCu);
      sub_100036BF0(v58, &unk_10008ACF0, &unk_10005EC10);
    }

    else
    {
    }

    (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
  }

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1000441E8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100054424() & 1;
  }
}

uint64_t sub_10004425C()
{
  v0 = sub_100054094();
  sub_10003398C(v0, qword_10008C1E8);
  sub_100002F64(v0, qword_10008C1E8);
  sub_100054064();
  return sub_100054084();
}

uint64_t sub_1000442CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  sub_100054214();
  v6[21] = sub_100054204();
  v8 = sub_1000541E4();
  v6[22] = v8;
  v6[23] = v7;

  return _swift_task_switch(sub_100044368, v8, v7);
}

uint64_t sub_100044368()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_10004447C;
  v2 = swift_continuation_init();
  v0[17] = sub_1000334C8(&qword_10008AF20, &qword_10005EC30);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10003FC2C;
  v0[13] = &unk_100082B38;
  v0[14] = v2;
  [v1 runWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10004447C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_10004461C;
  }

  else
  {
    v5 = sub_1000445AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000445AC()
{
  v1 = *(v0 + 152);

  v1(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004461C()
{
  v1 = v0[24];
  v2 = v0[19];

  swift_willThrow();
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

void sub_100044790(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_100053D94();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

Swift::Void __swiftcall IMDaemonAutomationRequestHandler.updateOffGridSummaryOnChat(withGUID:pendingMessageCount:)(Swift::String withGUID, Swift::Int pendingMessageCount)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = sub_100054154();
  v5 = [v3 existingChatWithGUID:v4];

  if (v5)
  {
    [v5 updatePendingIncomingSatelliteMessageCount:pendingMessageCount];
  }
}

void IMDaemonAutomationRequestHandler.relayMessageGUID(_:completion:)(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = sub_100054154();
  v15 = [v5 messageWithGUID:v6];

  if (!v15)
  {
    (a3)();
    return;
  }

  v7 = [v4 sharedInstance];
  v8 = sub_100054154();
  v9 = [v7 existingChatForMessageGUID:v8];

  if (v9)
  {
    v10 = [objc_opt_self() sharedInstance];
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    v12 = v15;
    v15 = v9;
    v13 = [v12 service];
    v14 = [v11 relayMessageToPeers:v12 forChat:v15 serviceName:v13 reflectOnly:1 requiredCapabilities:0];

    a3(v14);
  }

  else
  {
    a3(0);
  }
}

Swift::Void __swiftcall IMDaemonAutomationRequestHandler.relayMessageGUIDSent(_:onService:interworked:)(Swift::String _, Swift::String onService, Swift::Bool interworked)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100054154();
    v7 = sub_100054154();
    [v5 messageSent:v6 onService:v7 compatibilityService:0 wasInterworked:interworked];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall IMDaemonAutomationRequestHandler.simulateAppDeletion()()
{
  v0 = type metadata accessor for ApplicationWorkspaceObserver();
  v1 = (*(v0 + 112))();
  (*((swift_isaMask & *v1) + 0xE0))();
}

Swift::Void __swiftcall IMDaemonAutomationRequestHandler.simulateAppInstallation()()
{
  v0 = type metadata accessor for ApplicationWorkspaceObserver();
  v1 = (*(v0 + 112))();
  (*((swift_isaMask & *v1) + 0xD8))();
}

uint64_t IMDaemonAutomationRequestHandler.resetTranscriptBackgroundForAllChats(completion:)(void (*a1)(uint64_t))
{
  v2 = swift_allocObject();
  *(v2 + 16) = &_swiftEmptyArrayStorage;
  v3 = [objc_opt_self() sharedInstance];
  v7[4] = sub_1000460EC;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100045660;
  v7[3] = &unk_100082A98;
  v4 = _Block_copy(v7);

  [v3 enumerateBatchedChatsFilteredUsingPredicate:0 block:v4];
  _Block_release(v4);

  swift_beginAccess();

  a1(v5);
}

id sub_1000453FC(void *a1, uint64_t a2)
{
  result = [a1 transcriptBackgroundProperties];
  if (result)
  {

    result = [a1 guid];
    if (result)
    {
      v5 = result;
      v6 = sub_100054164();
      v8 = v7;

      swift_beginAccess();
      v9 = *(a2 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_100045740(0, *(v9 + 2) + 1, 1, v9);
        *(a2 + 16) = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_100045740((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      v13 = &v9[16 * v12];
      *(v13 + 4) = v6;
      *(v13 + 5) = v8;
      *(a2 + 16) = v9;
      swift_endAccess();
      if (qword_10008C1E0 != -1)
      {
        swift_once();
      }

      v14 = sub_100054094();
      sub_100002F64(v14, qword_10008C1E8);

      v15 = sub_100054074();
      v16 = sub_100054254();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v20[0] = v18;
        *v17 = 136315138;
        v19 = sub_100002F9C(v6, v8, v20);

        *(v17 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v15, v16, "Resetting transcript background properties on chat: %s", v17, 0xCu);
        sub_1000031D0(v18);
      }

      else
      {
      }

      return [a1 updateTranscriptBackgroundProperties:0];
    }
  }

  return result;
}

void sub_100045660(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

char *sub_100045740(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000334C8(&qword_10008B078, &unk_10005ED58);
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
    v10 = &_swiftEmptyArrayStorage;
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

void _sSo32IMDaemonAutomationRequestHandlerC7imagentE16simulateMessages_13configuration10completionySaySo18IMSimulatedMessageCG_So0jK13ConfigurationCSgys5Error_pSgctF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = objc_allocWithZone(IMDBatchMessageSimulator);
  sub_10004626C();
  isa = sub_1000541A4().super.isa;
  v12 = [v10 initWithMessages:isa configuration:a2];

  v13 = sub_100054244();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_100054214();
  v14 = v12;

  v15 = sub_100054204();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  v16[5] = a3;
  v16[6] = a4;
  sub_1000363C0(0, 0, v9, &unk_10005ED70, v16);
}

void _sSo32IMDaemonAutomationRequestHandlerC7imagentE46simulateReceivedPendingSatelliteMessageForChat8withGUIDySS_tF_0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_100054154();
  v7 = [v2 existingChatWithGUID:v3];

  if (v7)
  {
    v4 = [v7 pendingIncomingSatelliteMessageCount];
    v5 = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v6 = v5 & ~(v5 >> 63);
      [v7 updateIsDownloadingPendingSatelliteMessages:v5 > 0];
      [v7 updatePendingIncomingSatelliteMessageCount:v6];
    }
  }
}

void _sSo32IMDaemonAutomationRequestHandlerC7imagentE017simulateDowngradeC06fromID0H7Service02toJ014expirationDateySS_S2S10Foundation0M0VtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = sub_100054154();
    v16 = [v7 anySessionForServiceName:v8];

    if (v16)
    {
      v9 = v16;
      v10 = sub_100054154();
      isa = sub_100053E24().super.isa;
      v12 = sub_100054154();
      [v9 downgradeRequestedForHandleID:v10 expirationDate:isa preferredService:v12];
    }

    v13 = [objc_opt_self() sharedProvider];
    if (v13)
    {
      v14 = [v13 broadcasterForChatListeners];
      swift_unknownObjectRelease();
      v15 = sub_100054154();
      [v14 serviceSwitchRequestReceivedForChatWithIdentifier:v15];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100045C9C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = sub_100054154();
  v16 = [v5 messageWithGUID:v6];

  if (v16)
  {
    v7 = [v4 sharedInstance];
    v8 = sub_100054154();
    v9 = [v7 existingChatForMessageGUID:v8];

    if (v9)
    {
      v10 = [objc_opt_self() sharedInstance];
      if (!v10)
      {
        _Block_release(a3);
        __break(1u);
        return;
      }

      v11 = v10;
      v12 = v16;
      v16 = v9;
      v13 = [v12 service];
      v14 = [v11 relayMessageToPeers:v12 forChat:v16 serviceName:v13 reflectOnly:1 requiredCapabilities:0];

      (a3)[2](a3, v14);
    }

    else
    {
      a3[2](a3, 0);
    }
  }

  else
  {
    v15 = a3[2];

    v15(a3, 0);
  }
}

void _sSo32IMDaemonAutomationRequestHandlerC7imagentE46simulateMessageDeliveryControllerDidFlushCache12forRemoteURI04fromO04guidySS_S2StF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = [objc_opt_self() sharedAccountController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 anySessionForServiceName:IMServiceNameiMessage];

    if (v8)
    {
      v9 = v8;
      v10 = sub_100054154();
      v11 = sub_100054154();
      oslog = sub_100054154();
      [v9 _automation_messageDeliveryControllerDidFlushCacheForRemoteURI:v10 fromURI:v11 guid:oslog];
    }

    else
    {
      if (qword_10008C1E0 != -1)
      {
        swift_once();
      }

      v12 = sub_100054094();
      sub_100002F64(v12, qword_10008C1E8);
      oslog = sub_100054074();
      v13 = sub_100054264();
      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_100002F9C(0xD00000000000004ALL, 0x8000000100064D70, &v17);
        _os_log_impl(&_mh_execute_header, oslog, v13, "Could not find session for iMessage service in %s. Aborting simulation.", v14, 0xCu);
        sub_1000031D0(v15);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000460F4(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = &_swiftEmptyArrayStorage;
  v3 = [objc_opt_self() sharedInstance];
  v6[4] = sub_100046388;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100045660;
  v6[3] = &unk_100082AC0;
  v4 = _Block_copy(v6);

  [v3 enumerateBatchedChatsFilteredUsingPredicate:0 block:v4];
  _Block_release(v4);

  swift_beginAccess();

  isa = sub_1000541A4().super.isa;
  (*(a1 + 16))(a1, isa);
}

unint64_t sub_10004626C()
{
  result = qword_10008B070;
  if (!qword_10008B070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008B070);
  }

  return result;
}

uint64_t sub_1000462C0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000333B0;

  return sub_1000442CC(v5, v6, v7, v2, v3, v4);
}

uint64_t IMDaemonChatRequestHandler.loadChats(withPinningIdentifier:reply:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = sub_100054154();
  isa = [v5 existingChatsWithPinningIdentifier:v6];

  if (!isa)
  {
    sub_10003AA94(0, &qword_10008B0E0, IMDChat_ptr);
    sub_1000541B4();
    isa = sub_1000541A4().super.isa;
  }

  v8 = [v4 sharedInstance];
  v9 = [v8 _chatInfoForChats:isa];

  sub_1000334C8(&qword_10008B0E8, &qword_10005EE00);
  v10 = sub_1000541B4();

  a3(v10);
}

uint64_t IMDaemonChatRequestHandler.loadAnyChatsContainingHandleIDs(in:reply:)(void *a1, void (*a2)(uint64_t))
{
  isUniquelyReferenced_nonNull_native = sub_10004729C(&_swiftEmptyArrayStorage);
  v4 = [objc_opt_self() sharedAccountController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 accounts];

    if (!v6)
    {
      goto LABEL_47;
    }

    sub_10003AA94(0, &qword_10008B0F0, IMDAccount_ptr);
    v7 = sub_1000541B4();

    v8 = a1[2];
    if (v8)
    {
      if (v7 >> 62)
      {
        goto LABEL_43;
      }

      v46 = v7 & 0xFFFFFFFFFFFFFF8;
      v50 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v9 = 0;
      v43 = v8;
      v44 = a1 + 4;
      v47 = v7;
      v48 = v7 & 0xC000000000000001;
      while (1)
      {
        if (v9 == v8)
        {
          goto LABEL_42;
        }

        if (v50)
        {
          break;
        }

LABEL_8:
        v9 = (v9 + 1);
        if (v9 == v8)
        {
          goto LABEL_33;
        }
      }

      v45 = v9;
      a1 = v44[2 * v9 + 1];
      v49 = objc_opt_self();

      v10 = 0;
      while (1)
      {
        if (v48)
        {
          v11 = sub_100054344();
        }

        else
        {
          if (v10 >= *(v46 + 16))
          {
            goto LABEL_40;
          }

          v11 = *(v7 + 8 * v10 + 32);
        }

        a1 = v11;
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
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
          v46 = v7 & 0xFFFFFFFFFFFFFF8;
          v50 = sub_1000543B4();
          goto LABEL_6;
        }

        v13 = [v49 sharedInstance];
        v14 = sub_100054154();
        v8 = [v13 existingChatForID:v14 account:a1];

        if (v8)
        {
          break;
        }

LABEL_13:
        ++v10;
        if (v12 == v50)
        {

          v8 = v43;
          v9 = v45;
          goto LABEL_8;
        }
      }

      v15 = [v8 guid];
      if (!v15)
      {
        goto LABEL_45;
      }

      v16 = v15;
      v7 = sub_100054164();
      v18 = v17;

      v19 = v8;
      v8 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v8;
      v21 = sub_10003DD70(v7, v18);
      v22 = v8[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_39;
      }

      v25 = v20;
      if (v8[3] < v24)
      {
        sub_100046B24(v24, isUniquelyReferenced_nonNull_native);
        v8 = v51;
        v26 = sub_10003DD70(v7, v18);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_48;
        }

        v21 = v26;
        if ((v25 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_28:

        isUniquelyReferenced_nonNull_native = v51;
        v28 = v51[7];
        v8 = *(v28 + 8 * v21);
        *(v28 + 8 * v21) = v19;

LABEL_32:
        v7 = v47;
        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v20)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v8 = &v51;
        sub_100046DC8();
        if (v25)
        {
          goto LABEL_28;
        }
      }

LABEL_30:
      isUniquelyReferenced_nonNull_native = v51;
      v51[(v21 >> 6) + 8] |= 1 << v21;
      v29 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v21);
      *v29 = v7;
      v29[1] = v18;
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v21) = v19;

      v30 = *(isUniquelyReferenced_nonNull_native + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_41;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v32;
      goto LABEL_32;
    }

LABEL_33:

    v33 = [objc_opt_self() sharedInstance];
    v34 = *(isUniquelyReferenced_nonNull_native + 16);
    if (!v34 || (v35 = sub_100047088(*(isUniquelyReferenced_nonNull_native + 16), 0), v36 = sub_100046F34(&v51, v35 + 4, v34, isUniquelyReferenced_nonNull_native), v37 = v51, , sub_1000473A0(v37), v36 == v34))
    {
      sub_10003AA94(0, &qword_10008B0E0, IMDChat_ptr);
      isa = sub_1000541A4().super.isa;

      v39 = [v33 _chatInfoForChats:isa];

      sub_1000334C8(&qword_10008B0E8, &qword_10005EE00);
      v40 = sub_1000541B4();

      a2(v40);
    }

    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_100054454();
  __break(1u);
  return result;
}

uint64_t sub_100046B24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000334C8(&qword_10008B0F8, &qword_10005EE08);
  v35 = v4;
  result = sub_1000543D4();
  v7 = result;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_100054474();
      sub_100054184();
      result = sub_100054484();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
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
  return result;
}

id sub_100046DC8()
{
  v1 = v0;
  sub_1000334C8(&qword_10008B0F8, &qword_10005EE08);
  v2 = *v0;
  v3 = sub_1000543C4();
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

        result = v20;
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

  return result;
}

void *sub_100046F34(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100047088(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000334C8(&qword_10008B100, qword_10005F3D0);
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

void sub_100047110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = sub_100054154();
  isa = [v5 existingChatsWithPinningIdentifier:v6];

  if (!isa)
  {
    sub_10003AA94(0, &qword_10008B0E0, IMDChat_ptr);
    sub_1000541B4();
    isa = sub_1000541A4().super.isa;
  }

  v8 = [v4 sharedInstance];
  v9 = [v8 _chatInfoForChats:isa];

  sub_1000334C8(&qword_10008B0E8, &qword_10005EE00);
  sub_1000541B4();

  v10 = sub_1000541A4().super.isa;
  (*(a3 + 16))(a3, v10);
}

unint64_t sub_10004729C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000334C8(&qword_10008B0F8, &qword_10005EE08);
    v3 = sub_1000543E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10003DD70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void sub_1000473A8(unint64_t a1, void (**a2)(void, void))
{
  v3 = sub_10004729C(&_swiftEmptyArrayStorage);
  v4 = [objc_opt_self() sharedAccountController];
  if (!v4)
  {
LABEL_46:
    _Block_release(a2);
    __break(1u);
LABEL_47:
    _Block_release(a2);
    __break(1u);
LABEL_48:
    _Block_release(a2);
    sub_100054454();
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 accounts];

  if (!v6)
  {
    goto LABEL_47;
  }

  sub_10003AA94(0, &qword_10008B0F0, IMDAccount_ptr);
  isUniquelyReferenced_nonNull_native = sub_1000541B4();

  v8 = *(a1 + 16);
  if (v8)
  {
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
      goto LABEL_44;
    }

    v44 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000543B4())
    {
      v9 = 0;
      v41 = v8;
      v42 = a1 + 32;
      v45 = isUniquelyReferenced_nonNull_native;
      v46 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      while (v9 != v8)
      {
        if (i)
        {
          v43 = v9;
          v8 = *(v42 + 16 * v9 + 8);
          v47 = objc_opt_self();

          v10 = 0;
          while (1)
          {
            if (v46)
            {
              v11 = sub_100054344();
            }

            else
            {
              if (v10 >= *(v44 + 16))
              {
                goto LABEL_41;
              }

              v11 = *(isUniquelyReferenced_nonNull_native + 8 * v10 + 32);
            }

            v12 = v11;
            a1 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

            v8 = [v47 sharedInstance];
            v13 = sub_100054154();
            v14 = [v8 existingChatForID:v13 account:v12];

            if (v14)
            {
              break;
            }

LABEL_13:
            ++v10;
            if (a1 == i)
            {

              v8 = v41;
              v9 = v43;
              goto LABEL_8;
            }
          }

          v15 = [v14 guid];
          if (!v15)
          {
            _Block_release(a2);
            __break(1u);
            goto LABEL_46;
          }

          v16 = v15;
          v17 = sub_100054164();
          v8 = v18;

          v19 = v14;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v3;
          v21 = sub_10003DD70(v17, v8);
          v22 = v3[2];
          v23 = (v20 & 1) == 0;
          v24 = v22 + v23;
          if (__OFADD__(v22, v23))
          {
            goto LABEL_40;
          }

          v25 = v20;
          if (v3[3] >= v24)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v20 & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            else
            {
              sub_100046DC8();
              if ((v25 & 1) == 0)
              {
                goto LABEL_30;
              }
            }
          }

          else
          {
            sub_100046B24(v24, isUniquelyReferenced_nonNull_native);
            v26 = sub_10003DD70(v17, v8);
            if ((v25 & 1) != (v27 & 1))
            {
              goto LABEL_48;
            }

            v21 = v26;
            if ((v25 & 1) == 0)
            {
LABEL_30:
              v3 = v50;
              v50[(v21 >> 6) + 8] |= 1 << v21;
              v29 = (v3[6] + 16 * v21);
              *v29 = v17;
              v29[1] = v8;
              *(v3[7] + 8 * v21) = v19;

              v30 = v3[2];
              v31 = __OFADD__(v30, 1);
              v32 = v30 + 1;
              if (v31)
              {
                goto LABEL_42;
              }

              v3[2] = v32;
              goto LABEL_32;
            }
          }

          v3 = v50;
          v28 = v50[7];
          v8 = *(v28 + 8 * v21);
          *(v28 + 8 * v21) = v19;

LABEL_32:
          isUniquelyReferenced_nonNull_native = v45;
          goto LABEL_13;
        }

LABEL_8:
        v9 = v9 + 1;
        if (v9 == v8)
        {
          goto LABEL_33;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      v44 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_33:

  v33 = [objc_opt_self() sharedInstance];
  v34 = v3[2];
  if (v34)
  {
    v35 = sub_100047088(v3[2], 0);
    v36 = sub_100046F34(&v50, v35 + 4, v34, v3);
    v37 = v50;

    sub_1000473A0(v37);
    if (v36 != v34)
    {
      __break(1u);
    }
  }

  sub_10003AA94(0, &qword_10008B0E0, IMDChat_ptr);
  isa = sub_1000541A4().super.isa;

  v39 = [v33 _chatInfoForChats:isa];

  sub_1000334C8(&qword_10008B0E8, &qword_10005EE00);
  sub_1000541B4();

  v49 = sub_1000541A4().super.isa;
  (a2)[2](a2, v49);
}

void IMDaemonAccountsRequestHandler.calculateReachability(with:responseHandler:)(void *a1, void *a2)
{
  v77 = a2;
  v4 = sub_100054094();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 sharedAccountController];
  if (!v9)
  {
    goto LABEL_33;
  }

  v10 = v9;
  v11 = [a1 accountID];
  if (!v11)
  {
    sub_100054164();
    v11 = sub_100054154();
  }

  v12 = [v10 accountForAccountID:v11];

  if (v12)
  {
    v13 = [v12 session];

    if (v13)
    {
      goto LABEL_10;
    }
  }

  v14 = [v8 sharedAccountController];
  if (!v14)
  {
    goto LABEL_34;
  }

  v15 = v14;
  v16 = [a1 serviceName];
  if (!v16)
  {
    sub_100054164();
    v16 = sub_100054154();
  }

  v13 = [v15 anySessionForServiceName:v16];

  if (v13)
  {
LABEL_10:
    v17 = v5;
    v18 = sub_100002F40();
    (*(v5 + 16))(v7, v18, v4);
    v19 = a1;
    v20 = v2;
    v21 = sub_100054074();
    v22 = sub_100054254();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v76 = v7;
      v24 = v23;
      v74 = swift_slowAlloc();
      v78 = v74;
      *v24 = 136315650;
      v25 = [v19 requestID];
      v26 = sub_100054164();
      v75 = v4;
      v28 = v27;

      v29 = sub_100002F9C(v26, v28, &v78);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v30 = [v19 serviceName];
      v31 = sub_100054164();
      v33 = v32;

      v34 = sub_100002F9C(v31, v33, &v78);

      *(v24 + 14) = v34;
      *(v24 + 22) = 2080;
      sub_10003AA94(0, &qword_10008AAC8, off_100080B08);
      sub_1000485E8();
      ClientRequestHandling<>.client.getter();
      v35 = sub_100053E84();
      v37 = v36;

      v38 = sub_100002F9C(v35, v37, &v78);
      v39 = v77;

      *(v24 + 24) = v38;
      _os_log_impl(&_mh_execute_header, v21, v22, "Initiating reachability query for %s on service %s for %s", v24, 0x20u);
      swift_arrayDestroy();

      (*(v17 + 8))(v76, v75);
    }

    else
    {

      (*(v17 + 8))(v7, v4);
      v39 = v77;
    }

    [v13 calculateReachabilityWithRequest:v19 responseHandler:v39];

    return;
  }

  v40 = [a1 handleIDs];
  v41 = sub_1000541B4();

  v75 = a1;
  v42 = [a1 serviceName];
  sub_100054164();

  v43 = sub_1000484E4(&_swiftEmptyArrayStorage);
  v44 = *(v41 + 16);
  v74 = v41;
  if (!v44)
  {
LABEL_28:
    v68 = objc_allocWithZone(IMServiceReachabilityResult);
    v69 = sub_100054154();
    sub_10003AA94(0, &qword_10008B168, IMServiceReachabilityHandleResult_ptr);
    isa = sub_100054114().super.isa;

    LOBYTE(v72) = 0;
    v76 = [v68 initWithService:v69 error:2 handleResults:isa isFinal:0 allAreReachable:0 allSupportEncryption:0 didCheckServer:v72];

    [v77 reachabilityRequest:v75 updatedWithResult:v76];
    v71 = v76;

    return;
  }

  v45 = (v41 + 40);
  while (1)
  {
    v48 = *(v45 - 1);
    v49 = *v45;
    v50 = objc_allocWithZone(IMServiceReachabilityHandleResult);

    v51 = sub_100054154();
    v52 = sub_100054154();
    v53 = [v50 initWithHandleID:v51 service:v52 isReachable:0 supportsEncryption:0];

    v54 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v43;
    v56 = sub_10003DD70(v48, v49);
    v58 = v43[2];
    v59 = (v57 & 1) == 0;
    v60 = __OFADD__(v58, v59);
    v61 = v58 + v59;
    if (v60)
    {
      break;
    }

    v62 = v57;
    if (v43[3] < v61)
    {
      sub_1000480D4(v61, isUniquelyReferenced_nonNull_native);
      v43 = v78;
      v56 = sub_10003DD70(v48, v49);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_35;
      }

LABEL_23:
      if (v62)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v67 = v56;
    sub_100048378();
    v56 = v67;
    v43 = v78;
    if (v62)
    {
LABEL_16:
      v46 = v43[7];
      v47 = *(v46 + 8 * v56);
      *(v46 + 8 * v56) = v54;

      goto LABEL_17;
    }

LABEL_24:
    v43[(v56 >> 6) + 8] |= 1 << v56;
    v64 = (v43[6] + 16 * v56);
    *v64 = v48;
    v64[1] = v49;
    *(v43[7] + 8 * v56) = v54;

    v65 = v43[2];
    v60 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (v60)
    {
      goto LABEL_32;
    }

    v43[2] = v66;
LABEL_17:
    v45 += 2;
    if (!--v44)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_100054454();
  __break(1u);
}

uint64_t sub_1000480D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000334C8(&qword_10008B170, qword_10005EEA0);
  v35 = v4;
  result = sub_1000543D4();
  v7 = result;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_100054474();
      sub_100054184();
      result = sub_100054484();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
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
  return result;
}

id sub_100048378()
{
  v1 = v0;
  sub_1000334C8(&qword_10008B170, qword_10005EEA0);
  v2 = *v0;
  v3 = sub_1000543C4();
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

        result = v20;
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

  return result;
}

unint64_t sub_1000484E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000334C8(&qword_10008B170, qword_10005EEA0);
    v3 = sub_1000543E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10003DD70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1000485E8()
{
  result = qword_10008AAD0;
  if (!qword_10008AAD0)
  {
    sub_10003AA94(255, &qword_10008AAC8, off_100080B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008AAD0);
  }

  return result;
}

void _sSo26IMDaemonChatRequestHandlerC7imagentE012closeSessionB2ID_10identifier21didDeleteConversation5style7accountySS_SSSbSo11IMChatStyleVSStF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unint64_t a8)
{
  v28 = a5;
  v29 = a6;
  v10 = sub_100054094();
  v26 = *(v10 - 8);
  v27 = v10;
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() sharedInstance];
  if (v13)
  {
    v14 = v13;
    v15 = sub_100054154();
    v16 = [v14 sessionForAccount:v15];

    if (v16)
    {
      v17 = sub_100054154();
      v27 = sub_100054154();
      [v16 closeSessionChatID:v17 identifier:v27 didDeleteConversation:v28 & 1 style:v29];

      v18 = v27;
    }

    else
    {
      v19 = sub_100033728();
      v21 = v26;
      v20 = v27;
      (*(v26 + 16))(v12, v19, v27);

      v22 = sub_100054074();
      v23 = sub_100054264();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_100002F9C(a7, a8, &v30);
        _os_log_impl(&_mh_execute_header, v22, v23, "No session for account: %s -- can't close session.", v24, 0xCu);
        sub_1000031D0(v25);
      }

      (*(v21 + 8))(v12, v20);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000489F8()
{
  type metadata accessor for BIALockdownModeHandler();
  result = swift_initStaticObject();
  qword_10008B7A8 = result;
  return result;
}

uint64_t *sub_100048A24()
{
  if (qword_10008C480 != -1)
  {
    swift_once();
  }

  return &qword_10008B7A8;
}

void sub_100048A74(void *a1, void *a2)
{
  v4 = sub_100054094();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v32 - v10;
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = sub_100002F40();
  v15 = *(v5 + 16);
  v34 = v14;
  v35 = v15;
  (v15)(v13);
  v16 = a1;
  v17 = sub_100054074();
  v18 = sub_100054274();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = a2;
    v20 = v19;
    *v19 = 67109632;
    v19[1] = [v16 success];
    *(v20 + 4) = 2048;
    *(v20 + 10) = [v16 state];
    *(v20 + 9) = 2048;
    *(v20 + 5) = [v16 error];

    _os_log_impl(&_mh_execute_header, v17, v18, "retrieveFeatureToggleState:for: returned result.success %{BOOL}d result.state %lu result.error %lu", v20, 0x1Cu);
    a2 = v33;
  }

  else
  {

    v17 = v16;
  }

  v21 = *(v5 + 8);
  v21(v13, v4);
  if ([v16 success])
  {
    if ([v16 state]== 1)
    {
      v35(v11, v34, v4);
      v22 = sub_100054074();
      v23 = sub_100054274();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "LockdownMode is enabled. Sending a message to IDS Server to disable BIA", v24, 2u);
      }

      v21(v11, v4);
      v25 = sub_100054154();
      v26 = [objc_opt_self() optionsWithFeatureID:v25 state:2];

      aBlock[4] = sub_100048F3C;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10004AEB8;
      aBlock[3] = &unk_100082CA0;
      v27 = _Block_copy(aBlock);
      [a2 updateFeatureToggleStateWithOptions:v26 completion:v27];
      _Block_release(v27);
    }

    else
    {
      v35(v8, v34, v4);
      v28 = sub_100054074();
      v29 = sub_100054274();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_100002F9C(0xD00000000000001CLL, 0x8000000100064E80, aBlock);
        _os_log_impl(&_mh_execute_header, v28, v29, "%s No action required.", v30, 0xCu);
        sub_1000031D0(v31);
      }

      v21(v8, v4);
    }
  }
}

void sub_100048F3C(void *a1)
{
  v2 = sub_100054094();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = sub_100002F40();
  v10 = *(v3 + 16);
  v10(v8, v9, v2);
  v11 = a1;
  v12 = sub_100054074();
  v13 = sub_100054274();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v6;
    v15 = v14;
    *v14 = 67109376;
    v14[1] = [v11 success];
    *(v15 + 4) = 2048;
    *(v15 + 10) = [v11 error];

    _os_log_impl(&_mh_execute_header, v12, v13, "updateFeatureToggleState:with: LDM is enabled. returned result.success %{BOOL}d result.error %lu", v15, 0x12u);
    v6 = v25;
  }

  else
  {

    v12 = v11;
  }

  v16 = *(v3 + 8);
  v16(v8, v2);
  if ([v11 error])
  {
    v10(v6, v9, v2);
    v17 = v11;
    v18 = sub_100054074();
    v19 = sub_100054264();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = [v17 error];

      _os_log_impl(&_mh_execute_header, v18, v19, "Error when updateFeatureToggleState:with: LDM is enabled. Error code: %lu", v20, 0xCu);
    }

    else
    {

      v18 = v17;
    }

    v16(v6, v2);
  }

  else
  {
    v21 = [objc_opt_self() messagesAppDomain];
    if (v21)
    {
      v22 = v21;
      v23 = sub_100054154();
      [v22 setBool:1 forKey:v23];
    }
  }
}

void sub_100049270(void *a1, void *a2)
{
  v4 = sub_100054094();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v32 - v10;
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = sub_100002F40();
  v15 = *(v5 + 16);
  v34 = v14;
  v35 = v15;
  (v15)(v13);
  v16 = a1;
  v17 = sub_100054074();
  v18 = sub_100054274();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = a2;
    v20 = v19;
    *v19 = 67109632;
    v19[1] = [v16 success];
    *(v20 + 4) = 2048;
    *(v20 + 10) = [v16 state];
    *(v20 + 9) = 2048;
    *(v20 + 5) = [v16 error];

    _os_log_impl(&_mh_execute_header, v17, v18, "retrieveFeatureToggleState:for: returned result.success %{BOOL}d result.state %lu result.error %lu", v20, 0x1Cu);
    a2 = v33;
  }

  else
  {

    v17 = v16;
  }

  v21 = *(v5 + 8);
  v21(v13, v4);
  if ([v16 success])
  {
    if ([v16 state]== 2)
    {
      v35(v11, v34, v4);
      v22 = sub_100054074();
      v23 = sub_100054274();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "LockdownMode is disabled. Sending a message to IDS Server to enable BIA", v24, 2u);
      }

      v21(v11, v4);
      v25 = sub_100054154();
      v26 = [objc_opt_self() optionsWithFeatureID:v25 state:1];

      aBlock[4] = sub_100049738;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10004AEB8;
      aBlock[3] = &unk_100082CC8;
      v27 = _Block_copy(aBlock);
      [a2 updateFeatureToggleStateWithOptions:v26 completion:v27];
      _Block_release(v27);
    }

    else
    {
      v35(v8, v34, v4);
      v28 = sub_100054074();
      v29 = sub_100054274();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_100002F9C(0xD00000000000001CLL, 0x8000000100064E80, aBlock);
        _os_log_impl(&_mh_execute_header, v28, v29, "%s BIA is enabled. No action required.", v30, 0xCu);
        sub_1000031D0(v31);
      }

      v21(v8, v4);
    }
  }
}

void sub_100049738(void *a1)
{
  v2 = sub_100054094();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = sub_100002F40();
  v10 = *(v3 + 16);
  v10(v8, v9, v2);
  v11 = a1;
  v12 = sub_100054074();
  v13 = sub_100054274();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v6;
    v15 = v14;
    *v14 = 67109376;
    v14[1] = [v11 success];
    *(v15 + 4) = 2048;
    *(v15 + 10) = [v11 error];

    _os_log_impl(&_mh_execute_header, v12, v13, "updateFeatureToggleState:with: when LDM disabled returned result.success %{BOOL}d result.error %lu", v15, 0x12u);
    v6 = v25;
  }

  else
  {

    v12 = v11;
  }

  v16 = *(v3 + 8);
  v16(v8, v2);
  if ([v11 error])
  {
    v10(v6, v9, v2);
    v17 = v11;
    v18 = sub_100054074();
    v19 = sub_100054264();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = [v17 error];

      _os_log_impl(&_mh_execute_header, v18, v19, "Error when updateFeatureToggleState:with: LDM is disabled. Error code: %lu", v20, 0xCu);
    }

    else
    {

      v18 = v17;
    }

    v16(v6, v2);
  }

  else
  {
    v21 = [objc_opt_self() messagesAppDomain];
    if (v21)
    {
      v22 = v21;
      v23 = sub_100054154();
      [v22 removeObjectForKey:v23];
    }
  }
}

uint64_t sub_100049A68()
{
  v0 = sub_1000540A4();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin(v0);
  v36 = v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000540D4();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v33 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000540B4();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100054094();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002F40();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_100054074();
  v13 = sub_100054274();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100002F9C(0xD000000000000024, 0x8000000100064E20, &aBlock);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_100002F9C(0xD00000000000001ALL, 0x8000000100064DE0, &aBlock);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s called for task %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  (*(v8 + 8))(v10, v7);
  v15 = [objc_opt_self() sharedScheduler];
  v16 = sub_100054154();
  v44 = sub_10004A750;
  v45 = v31[1];
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_10004AEB8;
  v43 = &unk_100082B60;
  v17 = _Block_copy(&aBlock);

  [v15 registerForTaskWithIdentifier:v16 usingQueue:0 launchHandler:v17];
  _Block_release(v17);

  v18 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
  v19 = sub_100054154();
  v20 = [v18 initWithIdentifier:v19];

  v21 = v20;
  [v21 setRequiresNetworkConnectivity:1];
  [v21 setRequiresExternalPower:0];
  [v21 setScheduleAfter:60.0];
  [v21 setTrySchedulingBefore:600.0];
  [v21 setPriority:2];

  sub_10004A820();
  v22 = v32;
  (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.background(_:), v32);
  v23 = sub_1000542B4();
  (*(v4 + 8))(v6, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  v44 = sub_10004A86C;
  v45 = v24;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_10003AAE0;
  v43 = &unk_100082BB0;
  v25 = _Block_copy(&aBlock);
  v26 = v21;
  v27 = v33;
  sub_1000540C4();
  v39 = &_swiftEmptyArrayStorage;
  sub_10003A990();
  sub_1000334C8(&qword_10008AA20, &unk_10005E860);
  sub_10003A9E8();
  v28 = v36;
  v29 = v38;
  sub_1000542F4();
  sub_1000542A4();
  _Block_release(v25);

  (*(v37 + 8))(v28, v29);
  (*(v34 + 8))(v27, v35);
}

uint64_t sub_10004A140()
{
  v0 = sub_100054094();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002F40();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_100054074();
  v6 = sub_100054274();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100002F9C(0xD00000000000001ALL, 0x8000000100064DE0, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "The BG system task %s expired.", v7, 0xCu);
    sub_1000031D0(v8);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_10004A2F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10004A35C(uint64_t a1)
{
  v2 = sub_100054094();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v26[-v7];
  v9 = [objc_opt_self() sharedScheduler];
  v27 = 0;
  v10 = [v9 submitTaskRequest:a1 error:&v27];

  if (v10)
  {
    v11 = v27;
    v12 = sub_100002F40();
    (*(v3 + 16))(v8, v12, v2);
    v13 = sub_100054074();
    v14 = sub_100054274();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100002F9C(0xD00000000000001ALL, 0x8000000100064DE0, &v27);
      _os_log_impl(&_mh_execute_header, v13, v14, "Successfully submitted task %s", v15, 0xCu);
      sub_1000031D0(v16);
    }

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    v18 = v27;
    sub_100053DA4();

    swift_willThrow();
    v19 = sub_100002F40();
    (*(v3 + 16))(v6, v19, v2);
    swift_errorRetain();
    v20 = sub_100054074();
    v21 = sub_100054264();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_100002F9C(0xD00000000000001ALL, 0x8000000100064DE0, &v27);
      *(v22 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to submit task %s with error: %@", v22, 0x16u);
      sub_100036BF0(v23, &unk_10008ACF0, &unk_10005EC10);

      sub_1000031D0(v24);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }
}

void sub_10004A750(void *a1)
{
  v4[4] = sub_10004A140;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1000356CC;
  v4[3] = &unk_100082BD8;
  v2 = _Block_copy(v4);
  [a1 setExpirationHandler:v2];
  _Block_release(v2);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  sub_10004A898(v3);
}

unint64_t sub_10004A820()
{
  result = qword_10008AA18;
  if (!qword_10008AA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008AA18);
  }

  return result;
}

void sub_10004A898(void *a1)
{
  v38 = a1;
  v1 = sub_100054094();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v35 - v5;
  v7 = [objc_opt_self() deviceIsLockedDown];
  v8 = sub_100002F40();
  v36 = *(v2 + 16);
  v36(v6, v8, v1);
  v9 = sub_100054074();
  v10 = sub_100054274();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&aBlock = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100002F9C(0xD00000000000001CLL, 0x8000000100064E80, &aBlock);
    *(v11 + 12) = 1024;
    *(v11 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s called with lockdownModeEnabled %{BOOL}d", v11, 0x12u);
    sub_1000031D0(v12);
  }

  v13 = *(v2 + 8);
  v13(v6, v1);
  v14 = IDSServiceNameiMessageForBusiness;
  sub_10004A820();
  v15 = v14;
  v16 = sub_100054294();
  v17 = [objc_allocWithZone(IDSFeatureToggler) initWithService:v15 queue:v16];

  v18 = sub_100054154();
  v19 = [objc_opt_self() optionsWithFeatureID:v18];

  if (v7)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    v41 = sub_10004AE80;
    v42 = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v21 = &unk_100082C78;
LABEL_12:
    *&v40 = sub_10004AEB8;
    *(&v40 + 1) = v21;
    v27 = _Block_copy(&aBlock);
    v28 = v17;

    [v28 retrieveFeatureToggleStateForOptions:v19 completion:v27];
    _Block_release(v27);
    goto LABEL_16;
  }

  v22 = [objc_opt_self() messagesAppDomain];
  if (v22)
  {
    v23 = v22;
    v24 = sub_100054154();
    v25 = [v23 objectForKey:v24];

    if (v25)
    {
      sub_1000542D4();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    aBlock = v43;
    v40 = v44;
    if (*(&v44 + 1))
    {
      sub_100036BF0(&aBlock, &qword_10008AA10, &qword_10005E880);
      v26 = swift_allocObject();
      *(v26 + 16) = v17;
      v41 = sub_10004AE78;
      v42 = v26;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v21 = &unk_100082C28;
      goto LABEL_12;
    }
  }

  else
  {
    aBlock = 0u;
    v40 = 0u;
  }

  sub_100036BF0(&aBlock, &qword_10008AA10, &qword_10005E880);
  v29 = v37;
  v36(v37, v8, v1);
  v30 = v29;
  v31 = sub_100054074();
  v32 = sub_100054274();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&aBlock = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_100002F9C(0xD00000000000001CLL, 0x8000000100064E80, &aBlock);
    _os_log_impl(&_mh_execute_header, v31, v32, "%s No action required.", v33, 0xCu);
    sub_1000031D0(v34);
  }

  v13(v30, v1);
LABEL_16:
  [v38 setTaskCompleted];
}

void _sSo26IMDaemonChatRequestHandlerC7imagentE06acceptB17ContainingMessage8withGUIDySS_tF_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100054094();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v51 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v50 = &v47 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - v11;
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  v15 = sub_100002F40();
  v16 = *(v5 + 16);
  v52 = v15;
  v53 = v16;
  (v16)(v14);

  v17 = sub_100054074();
  v18 = sub_100054274();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v48 = v5;
    v20 = v19;
    v21 = v4;
    v22 = a1;
    v23 = swift_slowAlloc();
    v54 = v23;
    *v20 = 136315138;
    *(v20 + 4) = sub_100002F9C(v22, a2, &v54);
    _os_log_impl(&_mh_execute_header, v17, v18, "Request to accept chat with messageGUID: %s", v20, 0xCu);
    sub_1000031D0(v23);
    a1 = v22;
    v4 = v21;

    v5 = v48;
  }

  v24 = *(v5 + 8);
  v24(v14, v4);
  v25 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v25 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v53(v12, v52, v4);

    v26 = sub_100054074();
    v27 = sub_100054274();

    v28 = os_log_type_enabled(v26, v27);
    v49 = a1;
    if (v28)
    {
      v29 = v4;
      v30 = a1;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v51 = v24;
      v33 = v32;
      v54 = v32;
      *v31 = 136315138;
      v34 = v30;
      v4 = v29;
      *(v31 + 4) = sub_100002F9C(v34, a2, &v54);
      _os_log_impl(&_mh_execute_header, v26, v27, "Accept chat on peer devices with %s", v31, 0xCu);
      sub_1000031D0(v33);
      v24 = v51;

      v35 = v12;
      v36 = v29;
    }

    else
    {

      v35 = v12;
      v36 = v4;
    }

    v24(v35, v36);
    v42 = [objc_opt_self() sharedAccountController];
    if (!v42)
    {
      __break(1u);
      return;
    }

    v43 = v42;
    v44 = sub_100054154();
    v45 = [v43 anySessionForServiceName:v44];

    if (v45)
    {
      v46 = sub_100054154();
      [v45 reflectAcceptChatToPeerDevicesForMessageGUID:v46];

      return;
    }

    v37 = v50;
    v53(v50, v52, v4);
    v38 = sub_100054074();
    v39 = sub_100054264();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "Could not find session";
      goto LABEL_16;
    }
  }

  else
  {
    v37 = v51;
    v53(v51, v52, v4);
    v38 = sub_100054074();
    LOBYTE(v39) = sub_100054264();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "No message guid provided";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v38, v39, v41, v40, 2u);
    }
  }

  v24(v37, v4);
}

void IMDaemonAnyRequestHandler.requestSetup(withClientID:capabilities:context:reply:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v7 = v6;
  v44 = a6;
  v45 = a5;
  v11 = sub_100054094();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002F40();
  (*(v12 + 16))(v14, v15, v11);

  v16 = sub_100054074();
  v17 = sub_100054254();

  v42 = v17;
  v43 = v16;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = v7;
    v19 = v18;
    v40 = swift_slowAlloc();
    v46 = v40;
    *v19 = 136315650;
    *(v19 + 4) = sub_100002F9C(a1, a2, &v46);
    *(v19 + 12) = 2080;
    v20 = IMStringFromClientCapabilities();
    v21 = sub_100054164();
    v39 = v11;
    v22 = a3;
    v23 = v21;
    v25 = v24;

    v26 = sub_100002F9C(v23, v25, &v46);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2080;
    v27 = sub_100054144();
    v29 = sub_100002F9C(v27, v28, &v46);

    *(v19 + 24) = v29;
    v30 = v43;
    _os_log_impl(&_mh_execute_header, v43, v42, "Preparing setup info for %s with %s and context %s", v19, 0x20u);
    swift_arrayDestroy();

    v7 = v41;

    (*(v12 + 8))(v14, v39);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
    v22 = a3;
  }

  v31 = type metadata accessor for ApplicationWorkspaceObserver();
  v32 = (*(v31 + 112))();
  v33 = (*((swift_isaMask & *v32) + 0xD0))();

  if (v33)
  {
    v34 = v22;
  }

  else
  {
    v34 = v22 & 0x1842F8;
  }

  sub_100003434();
  sub_100003480();
  ClientRequestHandling<>.client.getter();
  sub_100053E94();

  isa = sub_100054114().super.isa;
  v36 = [v7 _setupInfoForCapabilities:v34 context:isa];

  v37 = sub_100054134();
  v45(1, v37);

  v38 = [objc_opt_self() sharedInstance];
  [v38 broadcastCloudKitStateAfterFetchingAccountStatus];
}

uint64_t sub_10004B8D0()
{
  v1 = sub_100054094();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_100053E74();
  v0[5] = sub_100053E64();
  sub_100054214();
  v3 = sub_1000541E4();

  return _swift_task_switch(sub_10004B9C0, v3, v2);
}

uint64_t sub_10004B9C0()
{

  v1 = type metadata accessor for ApplicationWorkspaceObserver();
  v2 = (*(v1 + 112))();
  v3 = (*((swift_isaMask & *v2) + 0xD0))();

  if (v3)
  {
    v4 = [objc_allocWithZone(IMDiMessageIDSDelegate) init];
  }

  else
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    v8 = sub_100002F40();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_100054074();
    v10 = sub_100054274();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[3];
    v12 = v0[4];
    v14 = v0[2];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Messages is not installed, skipping loading the IMDiMessageIDSDelegate", v15, 2u);
    }

    (*(v13 + 8))(v12, v14);
    v4 = 0;
  }

  v16 = v0[1];

  return v16(v4);
}

uint64_t sub_10004BB78()
{
  v4 = (*(**v0 + 80) + **(**v0 + 80));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10004BC8C;

  return v4();
}

uint64_t sub_10004BC8C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10004BDAC()
{
  v1 = sub_100054094();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_100053E74();
  v0[5] = sub_100053E64();
  sub_100054214();
  v3 = sub_1000541E4();

  return _swift_task_switch(sub_10004BE9C, v3, v2);
}

uint64_t sub_10004BE9C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  v4 = sub_100002F40();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_100054074();
  v6 = sub_100054274();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Loading services", v7, 2u);
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  (*(v9 + 8))(v8, v10);
  v11 = sub_100054154();
  v12 = IMPathsForPlugInsWithExtension();

  if (v12)
  {
    v13 = sub_1000541B4();

    v14 = sub_10004C100(v13);

    if (v14)
    {
      v15 = v14[2];
      if (v15)
      {
        v16 = v14 + 5;
        do
        {
          v17 = objc_allocWithZone(NSBundle);

          v18 = sub_100054154();

          v19 = [v17 initWithPath:v18];

          if (v19)
          {
            v20 = [objc_opt_self() sharedController];
            [v20 registerSessionClassWithBundle:v19];
          }

          v16 += 2;
          --v15;
        }

        while (v15);
      }
    }
  }

  v21 = v0[1];

  return v21();
}

unint64_t *sub_10004C100(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_10004C34C(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100003068(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10004C34C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10004C214()
{
  v4 = (*(**v0 + 80) + **(**v0 + 80));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000333B0;

  return v4();
}

char *sub_10004C34C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004C36C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004C36C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000334C8(&qword_10008B078, &unk_10005ED58);
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
    v10 = &_swiftEmptyArrayStorage;
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

void sub_10004C478()
{
  v1 = OBJC_IVAR____TtC7imagent29PersistentTasksRequestHandler_monitors;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v13.receiver = v0;
      v13.super_class = type metadata accessor for PersistentTasksRequestHandler();
      objc_msgSendSuper2(&v13, "dealloc");
      return;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v5 &= v5 - 1;
        v9 = objc_opt_self();

        v10 = [v9 sharedInstance];
        v11 = [v10 bgstMessageProcessingController];

        if (v11)
        {
          v12 = sub_100054154();

          [v11 removePersistentTaskExecutorMonitorWithID:v12];

          v7 = v8;
          if (!v5)
          {
            goto LABEL_6;
          }
        }

        else
        {

          v7 = v8;
          if (!v5)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v8 = v7;
      }
    }
  }

  __break(1u);
}

void sub_10004C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 bgstMessageProcessingController];

  if (v11)
  {
    v12 = sub_100054154();
    v14[4] = a5;
    v14[5] = a6;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10004C7BC;
    v14[3] = &unk_100082DD8;
    v13 = _Block_copy(v14);

    [v11 runExecutorWithTaskLimit:a1 groupName:v12 lane:a4 completionHandler:v13];
    _Block_release(v13);
  }

  else
  {
    a5(1);
  }
}

uint64_t sub_10004C7BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_10004C8B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 bgstMessageProcessingController];

  if (v9)
  {
    v10 = sub_100054154();
    v12[4] = a4;
    v12[5] = a5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10003AAE0;
    v12[3] = &unk_100082E00;
    v11 = _Block_copy(v12);

    [v9 resumeExecutorWithGroupName:v10 lane:a3 completionHandler:v11];
    _Block_release(v11);
  }

  else
  {
    a4();
  }
}

void sub_10004CA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  sub_10004D7CC(&v9, a2, a3);
  swift_endAccess();

  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 bgstMessageProcessingController];

  if (v7)
  {
    v8 = sub_100054154();
    [v7 addPersistentTaskExecutorMonitor:a1 withID:v8];
  }
}

void sub_10004CC18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_10004E090(a1, a2);
  swift_endAccess();

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 bgstMessageProcessingController];

  if (v5)
  {
    v6 = sub_100054154();
    [v5 removePersistentTaskExecutorMonitorWithID:v6];
  }
}

uint64_t sub_10004CE00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_100054224();
  v7 = sub_100054244();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_1000363C0(0, 0, v6, &unk_10005F270, v8);
}

uint64_t sub_10004CF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10004CF38, 0, 0);
}

uint64_t sub_10004CF38()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 bgstMessageProcessingController];
  *(v0 + 32) = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_10004D050;

    return IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)(1);
  }

  else
  {
    (*(v0 + 16))();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10004D050()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_10004EA08, 0, 0);
}

uint64_t sub_10004D2A4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  sub_100054224();
  v9 = sub_100054244();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;

  sub_1000363C0(0, 0, v8, &unk_10005F280, v10);
}

uint64_t sub_10004D3CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 48) = a4;
  return _swift_task_switch(sub_10004D3F0, 0, 0);
}

uint64_t sub_10004D3F0()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 bgstMessageProcessingController];
  *(v0 + 32) = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_10004D50C;
    v4 = *(v0 + 48);

    return IMDBackgroundMessageProcessingController.ensureSchedulingForWork(refreshingTaskReports:)(v4);
  }

  else
  {
    (*(v0 + 16))();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10004D50C()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_10004D620, 0, 0);
}

uint64_t sub_10004D620()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004D7CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100054474();
  sub_100054184();
  v8 = sub_100054484();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100054424() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10004DB7C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10004D91C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000334C8(&qword_10008B5C8, &unk_10005F310);
  result = sub_100054324();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_100054474();
      sub_100054184();
      result = sub_100054484();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10004DB7C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10004D91C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10004DCFC();
      goto LABEL_16;
    }

    sub_10004DE58(v8 + 1);
  }

  v10 = *v4;
  sub_100054474();
  sub_100054184();
  result = sub_100054484();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100054424();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_100054444();
  __break(1u);
  return result;
}

void *sub_10004DCFC()
{
  v1 = v0;
  sub_1000334C8(&qword_10008B5C8, &unk_10005F310);
  v2 = *v0;
  v3 = sub_100054314();
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

  return result;
}

uint64_t sub_10004DE58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000334C8(&qword_10008B5C8, &unk_10005F310);
  result = sub_100054324();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_100054474();

      sub_100054184();
      result = sub_100054484();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_10004E090(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_100054474();
  sub_100054184();
  v6 = sub_100054484();
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
    if (v11 || (sub_100054424() & 1) != 0)
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
    sub_10004DCFC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10004E30C(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_10004E1CC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100036FB4;

  return sub_10004CF18(v4, v5, v6, v2, v3);
}

uint64_t sub_10004E264()
{
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100036FB4;

  return sub_10004D3CC(v5, v6, v7, v2, v4, v3);
}

unint64_t sub_10004E30C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_100054304();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_100054474();

        sub_100054184();
        v10 = sub_100054484();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_10004E4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  v9 = objc_opt_self();
  _Block_copy(a5);
  v10 = [v9 sharedInstance];
  v11 = [v10 bgstMessageProcessingController];

  if (v11)
  {
    v12 = sub_100054154();
    v14[4] = sub_10004E984;
    v14[5] = v8;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10004C7BC;
    v14[3] = &unk_100082F90;
    v13 = _Block_copy(v14);

    [v11 runExecutorWithTaskLimit:a1 groupName:v12 lane:a4 completionHandler:v13];
    _Block_release(v13);
  }

  else
  {
    a5[2](a5, 1);
  }
}

void sub_10004E694(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v7 = objc_opt_self();
  _Block_copy(a4);
  v8 = [v7 sharedInstance];
  v9 = [v8 bgstMessageProcessingController];

  if (v9)
  {
    v10 = sub_100054154();
    v12[4] = sub_10004EA04;
    v12[5] = v6;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10003AAE0;
    v12[3] = &unk_100082F40;
    v11 = _Block_copy(v12);

    [v9 resumeExecutorWithGroupName:v10 lane:a3 completionHandler:v11];
    _Block_release(v11);
  }

  else
  {
    a4[2](a4);
  }
}

uint64_t sub_10004E85C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004E89C()
{
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000333B0;

  return sub_10004D3CC(v5, v6, v7, v2, v4, v3);
}

uint64_t sub_10004E944()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10004E9AC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10004EA2C()
{
  v0 = sub_100054094();
  sub_10003398C(v0, qword_10008C7A8);
  sub_100002F64(v0, qword_10008C7A8);
  sub_100054064();
  return sub_100054084();
}

uint64_t IMDaemonChatMessageHistoryRequestHandler.fetchEarliestMessageDateForChats(withGUIDs:completion:)(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = swift_allocObject();
  *(v3 + 16) = &_swiftEmptyDictionarySingleton;
  v4 = *(a1 + 16);
  if (v4)
  {
    v20 = objc_opt_self();
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      sub_100054164();
      v8 = objc_allocWithZone(NSSortDescriptor);

      v9 = sub_100054154();

      v10 = [v8 initWithKey:v9 ascending:1];

      v11 = [v20 synchronousDatabase];
      v12 = sub_100054154();
      sub_1000334C8(&qword_10008B100, qword_10005F3D0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10005F3C0;
      *(v13 + 32) = v10;
      sub_10003AA94(0, &qword_10008B638, NSSortDescriptor_ptr);
      v21 = v10;
      isa = sub_1000541A4().super.isa;

      v15 = swift_allocObject();
      v15[2] = v3;
      v15[3] = v6;
      v15[4] = v7;
      aBlock[4] = sub_100051EAC;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10004F180;
      aBlock[3] = &unk_100083028;
      v16 = _Block_copy(aBlock);

      [v11 fetchMessageRecordsForChatRecordWithGUID:v12 filteredUsingPredicate:0 sortedUsingDescriptors:isa limit:1 completionHandler:v16];
      _Block_release(v16);

      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  swift_beginAccess();

  a2(v17);
}

uint64_t sub_10004ED98(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000334C8(&qword_10008B6B0, &qword_10005F470);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v18 = sub_100053E44();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    goto LABEL_9;
  }

  result = sub_1000543B4();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = sub_100054344();
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a1 + 32);
LABEL_6:
    v15 = v14;
    v16 = [v14 date];

    sub_100053E34();
    v17 = sub_100053E44();
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
LABEL_9:
    sub_10005382C(v12, v10);
    swift_beginAccess();

    sub_10004EFA8(v10, a3, a4);
    swift_endAccess();
    return sub_100036BF0(v12, &qword_10008B6B0, &qword_10005F470);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004EFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000334C8(&qword_10008B6B0, &qword_10005F470);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_100053E44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_100036BF0(a1, &qword_10008B6B0, &qword_10005F470);
    sub_1000508E0(a2, a3, v9);

    return sub_100036BF0(v9, &qword_10008B6B0, &qword_10005F470);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_100050FBC(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_10004F180(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_10003AA94(0, &qword_10008B6A8, IMDMessageRecord_ptr);
  v3 = sub_1000541B4();

  v2(v3);
}

uint64_t sub_10004F2B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = sub_100054164();
  v9 = v8;
  v10 = sub_100054164();
  v12 = v11;
  v13 = a1;
  a5(v7, v9, v10, v12);
}

void IMDaemonChatMessageHistoryRequestHandler.updatePluginMessage(withGUID:newPayloadData:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v136 = a5;
  v137 = a6;
  v131 = a3;
  v132 = a4;
  v138 = a1;
  v7 = sub_100054094();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v135 = &v127 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v127 - v15;
  v17 = __chkstk_darwin(v14);
  v128 = &v127 - v18;
  v19 = __chkstk_darwin(v17);
  v130 = &v127 - v20;
  v21 = __chkstk_darwin(v19);
  v133 = &v127 - v22;
  v23 = __chkstk_darwin(v21);
  v134 = &v127 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v127 - v26;
  __chkstk_darwin(v25);
  v29 = &v127 - v28;
  v30 = sub_100033848();
  v31 = *(v8 + 2);
  v139 = v30;
  v140 = v31;
  v141 = (v8 + 16);
  (v31)(v29);
  v32 = sub_100054074();
  v33 = sub_100054254();
  v34 = os_log_type_enabled(v32, v33);
  v129 = v16;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = v8;
    v37 = v7;
    v38 = a2;
    v39 = swift_slowAlloc();
    v142 = v39;
    *v35 = 136315138;
    *(v35 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v142);
    _os_log_impl(&_mh_execute_header, v32, v33, "%s called", v35, 0xCu);
    sub_1000031D0(v39);
    a2 = v38;
    v7 = v37;
    v8 = v36;

    v40 = v36;
  }

  else
  {

    v40 = v8;
  }

  v41 = *(v40 + 1);
  v41(v29, v7);
  v42 = objc_opt_self();
  v43 = [v42 sharedInstance];
  v44 = sub_100054154();
  v45 = [v43 messageWithGUID:v44];

  if (v45)
  {
    v46 = [v45 balloonBundleID];
    if (!v46)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v47 = v46;
    v48 = sub_100054164();
    v50 = v49;

    v51 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v51 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (!v51)
    {
      v76 = v135;
      v140(v135, v139, v7);

      v77 = v45;
      v78 = sub_100054074();
      v79 = sub_100054264();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v141 = v41;
        v82 = v81;
        v142 = swift_slowAlloc();
        *v80 = 136315650;
        *(v80 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v142);
        *(v80 + 12) = 2080;
        *(v80 + 14) = sub_100002F9C(v138, a2, &v142);
        *(v80 + 22) = 2112;
        *(v80 + 24) = v77;
        *v82 = v45;
        v83 = v77;
        _os_log_impl(&_mh_execute_header, v78, v79, "%s Message item for GUID %s is not a plugin message. Bailing. %@", v80, 0x20u);
        sub_100036BF0(v82, &unk_10008ACF0, &unk_10005EC10);

        swift_arrayDestroy();

        v141(v135, v7);
      }

      else
      {

        v41(v76, v7);
      }

      v136(0);
      goto LABEL_39;
    }

    v135 = v8;
    v52 = v41;
    v140(v27, v139, v7);

    v53 = sub_100054074();
    v54 = v7;
    v55 = sub_100054254();

    v56 = os_log_type_enabled(v53, v55);
    v127 = a2;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v57 = 136315394;
      *(v57 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v142);
      *(v57 + 12) = 2080;
      *(v57 + 14) = sub_100002F9C(v138, a2, &v142);
      _os_log_impl(&_mh_execute_header, v53, v55, "%s Got message item with GUID %s", v57, 0x16u);
      swift_arrayDestroy();
    }

    v52(v27, v54);
    v58 = v54;
    v59 = v134;
    v60 = [v42 sharedInstance];
    v61 = [v60 chatForMessage:v45];

    if (v61)
    {
      v140(v59, v139, v58);
      v62 = v45;
      v63 = sub_100054074();
      v64 = sub_100054254();

      v65 = os_log_type_enabled(v63, v64);
      v129 = v61;
      v134 = v62;
      if (v65)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v68 = v58;
        v69 = swift_slowAlloc();
        v142 = v69;
        *v66 = 136315394;
        *(v66 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v142);
        *(v66 + 12) = 2112;
        *(v66 + 14) = v134;
        *v67 = v45;
        v70 = v134;
        _os_log_impl(&_mh_execute_header, v63, v64, "%s Got chat for message item %@", v66, 0x16u);
        sub_100036BF0(v67, &unk_10008ACF0, &unk_10005EC10);
        v62 = v134;

        sub_1000031D0(v69);
        v58 = v68;

        v71 = v59;
        v72 = v68;
      }

      else
      {

        v71 = v59;
        v72 = v58;
      }

      v52(v71, v72);
      isa = sub_100053E04().super.isa;
      [v62 setPayloadData:isa];

      v90 = [v42 sharedInstance];
      v91 = [v90 storeMessage:v62 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:{objc_msgSend(v62, "flags")}];

      v92 = v133;
      v140(v133, v139, v58);
      v93 = v91;
      v94 = sub_100054074();
      v95 = sub_100054254();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = v58;
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v142 = v99;
        *v96 = 136315394;
        *(v96 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v142);
        *(v96 + 12) = 2112;
        *(v96 + 14) = v93;
        *v98 = v93;
        v100 = v93;
        _os_log_impl(&_mh_execute_header, v94, v95, "%s Updated store with new message item %@", v96, 0x16u);
        sub_100036BF0(v98, &unk_10008ACF0, &unk_10005EC10);
        v58 = v97;

        sub_1000031D0(v99);

        v101 = v92;
        v102 = v97;
      }

      else
      {

        v101 = v92;
        v102 = v58;
      }

      v52(v101, v102);
      v103 = v127;
      v104 = v129;
      v105 = [objc_opt_self() sharedProvider];
      if (v105)
      {
        v106 = [v105 broadcasterForChatListeners];
        swift_unknownObjectRelease();
        v107 = [v104 style];
        v108 = v93;
        v109 = [v108 accountID];
        if (v109)
        {
          v110 = v109;

          v111 = [v104 chatIdentifier];
          [v106 account:v110 chat:v111 style:v107 messageUpdated:v108];

          v112 = v130;
          v140(v130, v139, v58);

          v113 = sub_100054074();
          v114 = sub_100054254();

          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            v142 = swift_slowAlloc();
            *v115 = 136315394;
            *(v115 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v142);
            *(v115 + 12) = 2080;
            *(v115 + 14) = sub_100002F9C(v138, v103, &v142);
            _os_log_impl(&_mh_execute_header, v113, v114, "%s Broadcasted messageUpdated for GUID %s", v115, 0x16u);
            swift_arrayDestroy();

            v116 = v130;
          }

          else
          {

            v116 = v112;
          }

          v52(v116, v58);
          v136(1);

          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_41;
      }

      v117 = v128;
      v140(v128, v139, v58);
      v77 = v93;
      v118 = sub_100054074();
      v119 = sub_100054264();
      if (os_log_type_enabled(v118, v119))
      {
        v141 = v52;
        v120 = v58;
        v121 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        *v121 = 136315394;
        *(v121 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v142);
        *(v121 + 12) = 2080;
        v122 = [v77 guid];

        if (!v122)
        {
LABEL_42:
          __break(1u);
          return;
        }

        v123 = sub_100054164();
        v125 = v124;

        v126 = sub_100002F9C(v123, v125, &v142);

        *(v121 + 14) = v126;
        _os_log_impl(&_mh_execute_header, v118, v119, "%s No broadcaster for message with GUID %s", v121, 0x16u);
        swift_arrayDestroy();

        v141(v128, v120);
      }

      else
      {

        v52(v117, v58);
      }

      v136(0);

LABEL_39:
      return;
    }

    v84 = v129;
    v140(v129, v139, v58);
    v85 = v127;

    v86 = sub_100054074();
    v87 = sub_100054264();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v88 = 136315394;
      *(v88 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v142);
      *(v88 + 12) = 2080;
      *(v88 + 14) = sub_100002F9C(v138, v85, &v142);
      _os_log_impl(&_mh_execute_header, v86, v87, "%s No message item for GUID %s", v88, 0x16u);
      swift_arrayDestroy();
    }

    v52(v84, v58);
    v136(0);
  }

  else
  {
    v140(v11, v139, v7);

    v73 = sub_100054074();
    v74 = sub_100054264();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v75 = 136315394;
      *(v75 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v142);
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_100002F9C(v138, a2, &v142);
      _os_log_impl(&_mh_execute_header, v73, v74, "%s No message item for GUID %s", v75, 0x16u);
      swift_arrayDestroy();
    }

    v41(v11, v7);
    v136(0);
  }
}

Swift::Void __swiftcall IMDaemonChatMessageHistoryRequestHandler.updateChats(usingMessageGUIDsAndSummaries:)(Swift::OpaquePointer usingMessageGUIDsAndSummaries)
{
  v1 = [objc_opt_self() sharedInstance];
  sub_10003AA94(0, &qword_10008B640, NSAttributedString_ptr);
  isa = sub_100054114().super.isa;
  [v1 updateChatsUsingMessageGUIDsAndSummaries:isa];
}

Swift::Void __swiftcall IMDaemonChatMessageHistoryRequestHandler.updateChatsUsingMessageGUIDs(withPriority:)(Swift::OpaquePointer withPriority)
{
  v1 = [objc_opt_self() sharedInstance];
  isa = sub_1000541A4().super.isa;
  [v1 updateChatsUsingMessageGUIDsWithPriority:isa];
}

uint64_t sub_1000508E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10003DD70(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000511EC(isUniquelyReferenced_nonNull_native, v10);
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = sub_100053E44();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a3, v12 + *(v20 + 72) * v8, v13);
    sub_100050DD0(v8, v11);
    *v4 = v11;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_100053E44();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_100050A50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_100053E44();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000334C8(&qword_10008B6B8, &qword_10005F478);
  v42 = v4;
  result = sub_1000543D4();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_100054474();
      sub_100054184();
      result = sub_100054484();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_100050DD0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100054304() + 1) & ~v5;
    while (1)
    {
      sub_100054474();

      sub_100054184();
      v9 = sub_100054484();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_100053E44() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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

uint64_t sub_100050FBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10003DD70(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000511EC(v15, v11);
      goto LABEL_7;
    }

    sub_100050A50(v15, a4 & 1);
    v26 = sub_10003DD70(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_100054454();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_100053E44();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_10005113C(v12, a2, a3, a1, v18);
}

uint64_t sub_10005113C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_100053E44();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

char *sub_1000511EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = sub_100053E44();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000334C8(&qword_10008B6B8, &qword_10005F478);
  v5 = *v2;
  v6 = sub_1000543C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v3;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v39;
        v26 = *(v39 + 72) * v20;
        v27 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v5 + 56) + v26, v37);
        v29 = v38;
        v30 = (*(v38 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v25 + 32))(*(v29 + 56) + v26, v27, v28);

        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v32;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v3 = v7;
  }

  return result;
}

void _sSo40IMDaemonChatMessageHistoryRequestHandlerC7imagentE8loadItem8withGUID7queryIDySS_SStF_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a3;
  v83 = a4;
  v89 = a1;
  v5 = sub_100054094();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v84 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v85 = &v82 - v10;
  v11 = __chkstk_darwin(v9);
  v90 = &v82 - v12;
  v13 = __chkstk_darwin(v11);
  v87 = &v82 - v14;
  __chkstk_darwin(v13);
  v16 = &v82 - v15;
  v17 = sub_100033848();
  v19 = (v6 + 16);
  v18 = *(v6 + 16);
  v91 = v17;
  v92 = v18;
  (v18)(v16);

  v20 = sub_100054074();
  v21 = sub_100054254();
  v22 = os_log_type_enabled(v20, v21);
  v88 = v6;
  if (v22)
  {
    v86 = v5;
    v23 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v23 = 136315394;
    v24 = a2;
    v25 = [objc_opt_self() currentContext];

    if (!v25)
    {
      __break(1u);
      goto LABEL_26;
    }

    v26 = [v25 listenerID];

    v27 = sub_100054164();
    v29 = v28;

    v30 = sub_100002F9C(v27, v29, &v93);

    *(v23 + 4) = v30;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_100002F9C(v89, v24, &v93);
    _os_log_impl(&_mh_execute_header, v20, v21, "Request from %s to load item with guid: %s", v23, 0x16u);
    swift_arrayDestroy();

    v31 = *(v88 + 8);
    v5 = v86;
    v31(v16, v86);
    a2 = v24;
  }

  else
  {

    v31 = *(v6 + 8);
    v31(v16, v5);
  }

  v32 = objc_opt_self();
  v33 = [v32 sharedInstance];
  v34 = sub_100054154();
  v35 = [v33 itemWithGUID:v34];

  v36 = [v32 sharedInstance];
  v86 = a2;
  v37 = sub_100054154();
  v38 = [v36 chatForMessageGUID:v37];

  v39 = v87;
  v92(v87, v91, v5);
  v40 = v35;
  v41 = sub_100054074();
  v42 = sub_100054254();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = v31;
    v45 = v5;
    v46 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v40;
    *v46 = v40;
    v47 = v40;
    _os_log_impl(&_mh_execute_header, v41, v42, "Resulting item: %@", v43, 0xCu);
    sub_100036BF0(v46, &unk_10008ACF0, &unk_10005EC10);
    v5 = v45;
    v31 = v44;
  }

  v48 = v88 + 8;
  v31(v39, v5);
  v92(v90, v91, v5);
  v49 = v38;
  v50 = v38;
  v51 = sub_100054074();
  v52 = sub_100054254();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v88 = v48;
    v54 = v53;
    v55 = swift_slowAlloc();
    v87 = v19;
    v56 = v5;
    v57 = v55;
    *v54 = 138412290;
    *(v54 + 4) = v50;
    *v55 = v49;
    v58 = v50;
    _os_log_impl(&_mh_execute_header, v51, v52, "Resulting chat: %@", v54, 0xCu);
    sub_100036BF0(v57, &unk_10008ACF0, &unk_10005EC10);
    v5 = v56;
  }

  v31(v90, v5);
  if (v40)
  {
    v59 = v40;
    if (v50)
    {
      v60 = [v50 guid];
      if (v60)
      {
        v61 = v60;

        v62 = sub_100054164();
        v64 = v63;

        v65 = [objc_opt_self() currentContext];
        if (v65)
        {
          v66 = v65;
          v67 = [v65 replyProxy];

          if (v67)
          {
            v68 = sub_100054154();
            sub_1000334C8(&qword_10008AA28, &unk_10005E870);
            v69 = swift_allocObject();
            *(v69 + 16) = xmmword_10005E810;
            *(v69 + 56) = &type metadata for String;
            *(v69 + 32) = v62;
            *(v69 + 40) = v64;
            v70 = v59;
            isa = sub_1000541A4().super.isa;

            [v67 itemQuery:v68 finishedWithResult:v70 chatGUIDs:isa];

            swift_unknownObjectRelease();
          }

          else
          {
          }

          return;
        }

LABEL_26:
        __break(1u);
        return;
      }
    }

    v90 = v31;
    v72 = v85;
    v92(v85, v91, v5);
    v73 = v86;

    v74 = sub_100054074();
    v75 = sub_100054264();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v76 = 136315394;
      *(v76 + 4) = sub_100002F9C(0xD00000000000001BLL, 0x80000001000650B0, &v93);
      *(v76 + 12) = 2080;
      *(v76 + 14) = sub_100002F9C(v89, v73, &v93);
      _os_log_impl(&_mh_execute_header, v74, v75, "%s Failed to find chat for GUID %s", v76, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (v90)(v72, v5);
  }

  else
  {
    v77 = v84;
    v92(v84, v91, v5);
    v78 = v86;

    v79 = sub_100054074();
    v80 = sub_100054264();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v81 = 136315394;
      *(v81 + 4) = sub_100002F9C(0xD00000000000001BLL, 0x80000001000650B0, &v93);
      *(v81 + 12) = 2080;
      *(v81 + 14) = sub_100002F9C(v89, v78, &v93);
      _os_log_impl(&_mh_execute_header, v79, v80, "%s Failed to find item with GUID %s", v81, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v31(v77, v5);
  }
}

void sub_100051EB8(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = &_swiftEmptyDictionarySingleton;
  v4 = *(a1 + 16);
  if (v4)
  {
    v19 = objc_opt_self();
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      sub_100054164();
      v8 = objc_allocWithZone(NSSortDescriptor);

      v9 = sub_100054154();

      v10 = [v8 initWithKey:v9 ascending:1];

      v11 = [v19 synchronousDatabase];
      v12 = sub_100054154();
      sub_1000334C8(&qword_10008B100, qword_10005F3D0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10005F3C0;
      *(v13 + 32) = v10;
      sub_10003AA94(0, &qword_10008B638, NSSortDescriptor_ptr);
      v20 = v10;
      isa = sub_1000541A4().super.isa;

      v15 = swift_allocObject();
      v15[2] = v3;
      v15[3] = v6;
      v15[4] = v7;
      aBlock[4] = sub_1000538A0;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10004F180;
      aBlock[3] = &unk_100083078;
      v16 = _Block_copy(aBlock);

      [v11 fetchMessageRecordsForChatRecordWithGUID:v12 filteredUsingPredicate:0 sortedUsingDescriptors:isa limit:1 completionHandler:v16];
      _Block_release(v16);

      swift_unknownObjectRelease();
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  swift_beginAccess();
  sub_100053E44();

  v17 = sub_100054114().super.isa;
  (*(a2 + 16))(a2, v17);
}

void _sSo40IMDaemonChatMessageHistoryRequestHandlerC7imagentE34upgradeCompleteMyMomentLinkToStack04withC4GUID04chatP0ySS_SStF_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = [objc_opt_self() sharedInstance];
  v9 = sub_100054154();
  v10 = [v8 existingChatWithGUID:v9];

  if (v10)
  {
    v11 = [objc_opt_self() sharedInstance];
    v12 = sub_100054154();
    v13 = [v11 messageWithGUID:v12];

    if (v13)
    {
      oslog = [objc_opt_self() sharedInstance];
      [oslog registerAndAcceptMomentShareForMessage:v13 inChat:v10 resetAssetTransfers:1];

      goto LABEL_9;
    }
  }

  if (qword_10008C7A0 != -1)
  {
    swift_once();
  }

  v14 = sub_100054094();
  sub_100002F64(v14, qword_10008C7A8);

  oslog = sub_100054074();
  v15 = sub_100054264();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100002F9C(a3, a4, &v18);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100002F9C(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, oslog, v15, "Failed to find chat for chat GUID (%s) or message for message GUID (%s)", v16, 0x16u);
    swift_arrayDestroy();
  }

LABEL_9:
}

void sub_100052478(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v139 = a5;
  v130 = a3;
  v131 = a4;
  v7 = sub_100054094();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v134 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v127 = &v127 - v12;
  v13 = __chkstk_darwin(v11);
  v132 = &v127 - v14;
  v15 = __chkstk_darwin(v13);
  v128 = &v127 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v127 - v18;
  v20 = __chkstk_darwin(v17);
  v137 = &v127 - v21;
  v22 = __chkstk_darwin(v20);
  v129 = &v127 - v23;
  v24 = __chkstk_darwin(v22);
  v135 = &v127 - v25;
  __chkstk_darwin(v24);
  v27 = &v127 - v26;
  v28 = sub_100033848();
  v30 = (v8 + 16);
  v29 = *(v8 + 16);
  v142 = v28;
  v143 = v29;
  (v29)(v27);
  v31 = sub_100054074();
  v32 = sub_100054254();
  v33 = os_log_type_enabled(v31, v32);
  v141 = v8;
  v136 = v19;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v138 = a2;
    v35 = v8;
    v36 = a1;
    v37 = v34;
    v38 = v7;
    v39 = swift_slowAlloc();
    v144 = v39;
    *v37 = 136315138;
    *(v37 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v144);
    _os_log_impl(&_mh_execute_header, v31, v32, "%s called", v37, 0xCu);
    sub_1000031D0(v39);

    a1 = v36;

    v40 = v35;
    a2 = v138;
    v41 = v38;
    v140 = *(v40 + 8);
    v140(v27, v38);
  }

  else
  {

    v41 = v7;
    v140 = *(v8 + 8);
    v140(v27, v7);
  }

  v42 = objc_opt_self();
  v43 = [v42 sharedInstance];
  v44 = sub_100054154();
  v45 = [v43 messageWithGUID:v44];

  if (v45)
  {
    v46 = [v45 balloonBundleID];
    if (!v46)
    {
      _Block_release(v139);
      __break(1u);
LABEL_38:
      _Block_release(v139);
      __break(1u);
      goto LABEL_39;
    }

    v47 = v46;
    v48 = sub_100054164();
    v50 = v49;

    v51 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v51 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (!v51)
    {
      v65 = v129;
      (v143)(v129, v142, v41);

      v30 = v45;
      v66 = sub_100054074();
      v67 = sub_100054264();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v143 = v41;
        v70 = v69;
        v144 = swift_slowAlloc();
        *v68 = 136315650;
        *(v68 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v144);
        *(v68 + 12) = 2080;
        *(v68 + 14) = sub_100002F9C(a1, a2, &v144);
        *(v68 + 22) = 2112;
        *(v68 + 24) = v30;
        *v70 = v45;
        v71 = v30;
        _os_log_impl(&_mh_execute_header, v66, v67, "%s Message item for GUID %s is not a plugin message. Bailing. %@", v68, 0x20u);
        sub_100036BF0(v70, &unk_10008ACF0, &unk_10005EC10);

        swift_arrayDestroy();

        v72 = v65;
        v73 = v143;
      }

      else
      {

        v72 = v65;
        v73 = v41;
      }

      v140(v72, v73);
      (*(v139 + 2))(v139, 0);
      goto LABEL_36;
    }

    v135 = a1;
    v52 = v41;
    v53 = v137;
    v143();

    v54 = sub_100054074();
    v55 = sub_100054254();

    v56 = os_log_type_enabled(v54, v55);
    v138 = a2;
    v133 = v30;
    if (v56)
    {
      v57 = a2;
      v58 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      *v58 = 136315394;
      *(v58 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v144);
      *(v58 + 12) = 2080;
      *(v58 + 14) = sub_100002F9C(v135, v57, &v144);
      _os_log_impl(&_mh_execute_header, v54, v55, "%s Got message item with GUID %s", v58, 0x16u);
      swift_arrayDestroy();
      v52 = v41;
    }

    v59 = v41;
    v74 = v140;
    v140(v53, v59);
    v75 = v136;
    v76 = [v42 sharedInstance];
    v77 = [v76 chatForMessage:v45];

    v137 = v77;
    if (v77)
    {
      (v143)(v75, v142, v52);
      v78 = v45;
      v79 = sub_100054074();
      v80 = sub_100054254();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = v52;
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v144 = v84;
        *v81 = 136315394;
        *(v81 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v144);
        *(v81 + 12) = 2112;
        *(v81 + 14) = v78;
        *v83 = v45;
        v85 = v78;
        _os_log_impl(&_mh_execute_header, v79, v80, "%s Got chat for message item %@", v81, 0x16u);
        sub_100036BF0(v83, &unk_10008ACF0, &unk_10005EC10);
        v52 = v82;
        v74 = v140;

        sub_1000031D0(v84);
      }

      v74(v75, v52);
      isa = sub_100053E04().super.isa;
      [v78 setPayloadData:isa];

      v87 = [v42 sharedInstance];
      v88 = [v78 flags];
      v136 = v78;
      v89 = [v87 storeMessage:v78 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:v88];

      v90 = v132;
      (v143)(v132, v142, v52);
      v91 = v89;
      v92 = sub_100054074();
      v93 = sub_100054254();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v144 = v96;
        *v94 = 136315394;
        *(v94 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v144);
        *(v94 + 12) = 2112;
        *(v94 + 14) = v91;
        *v95 = v91;
        v97 = v91;
        _os_log_impl(&_mh_execute_header, v92, v93, "%s Updated store with new message item %@", v94, 0x16u);
        sub_100036BF0(v95, &unk_10008ACF0, &unk_10005EC10);
        v74 = v140;

        sub_1000031D0(v96);
      }

      v74(v90, v52);
      v98 = v137;
      v99 = [objc_opt_self() sharedProvider];
      if (v99)
      {
        v30 = [v99 broadcasterForChatListeners];
        swift_unknownObjectRelease();
        v100 = [v98 style];
        v101 = v91;
        v102 = [v101 accountID];
        if (v102)
        {
          v103 = v102;

          v104 = [v98 chatIdentifier];
          [v30 account:v103 chat:v104 style:v100 messageUpdated:v101];

          (v143)(v134, v142, v52);
          v105 = v138;

          v106 = sub_100054074();
          v107 = sub_100054254();

          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            *v108 = 136315394;
            *(v108 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v144);
            *(v108 + 12) = 2080;
            *(v108 + 14) = sub_100002F9C(v135, v105, &v144);
            _os_log_impl(&_mh_execute_header, v106, v107, "%s Broadcasted messageUpdated for GUID %s", v108, 0x16u);
            swift_arrayDestroy();
          }

          v74(v134, v52);
          (*(v139 + 2))(v139, 1);

          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_38;
      }

      v116 = v127;
      (v143)(v127, v142, v52);
      v30 = v91;
      v117 = sub_100054074();
      v118 = sub_100054264();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = v52;
        v120 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        *v120 = 136315394;
        *(v120 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v144);
        *(v120 + 12) = 2080;
        v121 = [v30 guid];
        if (!v121)
        {
LABEL_39:
          _Block_release(v139);

          __break(1u);
          return;
        }

        v122 = v121;

        v123 = sub_100054164();
        v125 = v124;

        v126 = sub_100002F9C(v123, v125, &v144);

        *(v120 + 14) = v126;
        _os_log_impl(&_mh_execute_header, v117, v118, "%s No broadcaster for message with GUID %s", v120, 0x16u);
        swift_arrayDestroy();

        v140(v127, v119);
        v98 = v137;
      }

      else
      {

        v74(v116, v52);
      }

      (*(v139 + 2))(v139, 0);

LABEL_36:
      return;
    }

    v109 = v128;
    (v143)(v128, v142, v52);
    v110 = v138;

    v111 = sub_100054074();
    v112 = sub_100054264();

    v113 = os_log_type_enabled(v111, v112);
    v114 = v135;
    if (v113)
    {
      v115 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      *v115 = 136315394;
      *(v115 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v144);
      *(v115 + 12) = 2080;
      *(v115 + 14) = sub_100002F9C(v114, v110, &v144);
      _os_log_impl(&_mh_execute_header, v111, v112, "%s No message item for GUID %s", v115, 0x16u);
      swift_arrayDestroy();
    }

    v74(v109, v52);
    (*(v139 + 2))(v139, 0);
  }

  else
  {
    v60 = v135;
    (v143)(v135, v142, v41);

    v61 = sub_100054074();
    v62 = a2;
    v63 = sub_100054264();

    if (os_log_type_enabled(v61, v63))
    {
      v64 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      *v64 = 136315394;
      *(v64 + 4) = sub_100002F9C(0xD000000000000038, 0x8000000100065050, &v144);
      *(v64 + 12) = 2080;
      *(v64 + 14) = sub_100002F9C(a1, v62, &v144);
      _os_log_impl(&_mh_execute_header, v61, v63, "%s No message item for GUID %s", v64, 0x16u);
      swift_arrayDestroy();
    }

    v140(v60, v41);
    (*(v139 + 2))(v139, 0);
  }
}

void _sSo40IMDaemonChatMessageHistoryRequestHandlerC7imagentE49fetchIncomingPendingMessagesOverSatelliteForChats7withIDs8servicesySaySSG_AGtF_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    for (i = a2 + 40; ; i += 16)
    {
      v4 = objc_opt_self();

      v5 = [v4 sharedAccountController];
      if (!v5)
      {
        break;
      }

      v6 = v5;
      v7 = sub_100054154();

      v8 = [v6 anySessionForServiceName:v7];

      if (v8)
      {
        v9 = [(objc_class *)v8 service];
        v10 = [v9 supportsCapability:IMServiceCapabilityPendingIncomingMessageFetchOverSatellite];

        if (v10)
        {
          isa = sub_1000541A4().super.isa;
          [(objc_class *)v8 fetchIncomingPendingMessagesFromHandlesIDs:isa];

          v8 = isa;
        }
      }

      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100053798(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000537EC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005382C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000334C8(&qword_10008B6B0, &qword_10005F470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000538A8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No message guid found for message: %@", &v2, 0xCu);
}

void sub_100053920(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) count];
  v6 = 134218242;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to delete %lu attachments from indexes with error: %@", &v6, 0x16u);
}

void sub_1000539D4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No group ID found for chat: %@", &v2, 0xCu);
}

void sub_100053A4C()
{
  sub_10001AC00();
  v1 = "setupInfo";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v0, 0x16u);
}

void sub_100053AE0()
{
  sub_10001AC00();
  v1 = "setupInfo";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v0, 0x16u);
}

void sub_100053C38(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Could not create NSInvocation matching XPC request object. Selector %@ not found in XPC interface.", &v2, 0xCu);
}