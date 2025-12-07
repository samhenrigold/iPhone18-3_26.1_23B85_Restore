uint64_t sub_A7370@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_A73A0(void *a1)
{
  v1 = [a1 content];
  sub_F0E6C();
  swift_unknownObjectRelease();
  sub_388C8(&qword_128C38, &qword_F4220);
  if (swift_dynamicCast())
  {
    sub_3928(v6, v8);
    v2 = v9;
    v3 = v10;
    sub_373E8(v8, v9);
    v4 = (*(v3 + 8))(v2, v3);
    sub_1EDC(v8);
    return v4;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_372B0(v6, &qword_128C40, &qword_F4228);
    return 0;
  }
}

void sub_A74A4(void *a1)
{
  v1 = [a1 list];
  sub_37310(0, &qword_128040, CTLazuliCustomMetaDataWrapper_ptr);
  v2 = sub_F09FC();

  if (v2 >> 62)
  {
LABEL_20:
    v10 = sub_F10DC();
    v2, v38, v39, v40, v41, v42, v43, v44;
    if (v10 < 0)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v10 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    v2, v3, v4, v5, v6, v7, v8, v9;
  }

  if (v10)
  {
    v2 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      v12 = [a1 list];
      v13 = sub_F09FC();

      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = sub_F0FCC();
      }

      else
      {
        if (v2 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_20;
        }

        v14 = *(v13 + 8 * v2 + 32);
      }

      v22 = v14;
      v13, v15, v16, v17, v18, v19, v20, v21;
      v23 = [v22 header];
      v24 = sub_F07EC();
      v26 = v25;

      v27 = [v22 value];
      v28 = sub_F07EC();
      v30 = v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_6E830(0, (*v11[1].IMDTelephonyServiceSession_opaque + 1), &dword_0 + 1, v11, v31, v32, v33, v34);
      }

      v36 = *v11[1].IMDTelephonyServiceSession_opaque;
      v35 = *v11[1].state;
      if (v36 >= v35 >> 1)
      {
        v11 = sub_6E830((v35 > 1), (v36 + 1), &dword_0 + 1, v11, v31, v32, v33, v34);
      }

      ++v2;
      *v11[1].IMDTelephonyServiceSession_opaque = v36 + 1;
      v37 = &v11[2 * v36];
      *v37[2].IMDTelephonyServiceSession_opaque = v24;
      *v37[2].state = v26;
      *v37[3].IMDTelephonyServiceSession_opaque = v28;
      *v37[3].state = v30;
      if (v10 == v2)
      {
        goto LABEL_16;
      }
    }
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_16:

  RCSMessageMetadata.init(pairs:)(v11);
}

id sub_A76E4(void *a1)
{
  v119 = a1;
  v1 = sub_F06CC();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v119 extractedUri];
  v7 = sub_F07EC();
  v9 = v8;

  v9, v10, v11, v12, v13, v14, v15, v16;
  v17 = (v9 >> 56) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v17 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = &selRef_extractedUri;
  }

  else
  {
    v18 = &selRef_uri;
  }

  v19 = [v119 *v18];
  v20 = sub_F07EC();
  v22 = v21;

  v23 = sub_F07BC();
  v24 = [v23 __im_isSipHandle];

  if ((v24 & 1) != 0 || (v32 = [v119 identities]) == 0)
  {
LABEL_14:
    v88 = v22;
    goto LABEL_15;
  }

  v33 = v32;
  v34 = [v32 identityList];

  v35 = sub_F09FC();
  if (*v35[1].IMDTelephonyServiceSession_opaque)
  {
    v44 = *v35[2].IMDTelephonyServiceSession_opaque;
    v43 = *v35[2].state;

    v35, v45, v46, v47, v48, v49, v50, v51;
    v52 = sub_F07BC();
    v53 = [v52 __im_isChatBotPatterned];

    if (v53)
    {
      v61 = Logger.chatbot.unsafeMutableAddressor();
      (*(v2 + 16))(v5, v61, v1);

      v62 = sub_F06AC();
      v63 = sub_F0CCC();
      v22, v64, v65, v66, v67, v68, v69, v70;
      v43, v71, v72, v73, v74, v75, v76, v77;
      if (os_log_type_enabled(v62, v63))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v118 = v44;
        v120 = v79;
        *v78 = 136315394;
        *(v78 + 4) = sub_3E850(v118, v43, &v120);
        *(v78 + 12) = 2080;
        v80 = sub_3E850(v20, v22, &v120);
        v22, v81, v82, v83, v84, v85, v86, v87;
        *(v78 + 14) = v80;
        _os_log_impl(&dword_0, v62, v63, "Found chatbot sip uri: %s for original uri: %s", v78, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v22, v91, v92, v93, v94, v95, v96, v97;
      }

      (*(v2 + 8))(v5, v1);
      v98 = [objc_allocWithZone(CTLazuliDestination) init];
      v99 = sub_F07BC();
      v43, v100, v101, v102, v103, v104, v105, v106;
      [v98 setUri:v99];

      v107 = [v119 conversationID];
      if (!v107)
      {
        sub_F07EC();
        v109 = v108;
        v107 = sub_F07BC();
        v109, v110, v111, v112, v113, v114, v115, v116;
      }

      [v98 setConversationID:v107];

      return v98;
    }

    v43, v54, v55, v56, v57, v58, v59, v60;
    goto LABEL_14;
  }

  v22, v36, v37, v38, v39, v40, v41, v42;
  v88 = v35;
LABEL_15:
  v88, v25, v26, v27, v28, v29, v30, v31;
  v89 = v119;

  return v89;
}

__n128 sub_A7B38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_A7B4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_A7B94(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_A7BEC(uint64_t a1)
{
  v4 = *(type metadata accessor for RCSMessage(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_37C54;

  return sub_A161C(a1, v7, v8, v1 + v5, v9, v10);
}

void sub_A7E58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Logger.rcs.unsafeMutableAddressor();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_F06AC();
  v11 = sub_F0CCC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "RCS Relay received message delivered", v12, 2u);
  }

  (*(v6 + 8))(v8, v5);
  if (a2)
  {
    v13 = sub_F07BC();
    v14 = sub_F030C();
    v15 = *(v14 - 8);
    __chkstk_darwin(v14);
    v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F02DC();
    v18 = sub_F028C();
    (*(v15 + 8))(v17, v14);
    [v3 didReceiveMessageDeliveryReceiptForMessageID:v13 date:v18];
  }
}

id CTLazuliGroupChatUri.init(identity:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_5F3F4(a1, v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_A84F0(v8, v1, v3, v4);
  sub_1EDC(a1);
  return v10;
}

uint64_t sub_A818C()
{
  v1 = [*v0 originalGroupID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_F07EC();

  return v3;
}

void sub_A81F4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_F07BC();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setOriginalGroupID:?];
}

uint64_t sub_A8258()
{
  v1 = [*v0 properties];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_F076C();

  return v3;
}

id sub_A82C8(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = sub_F075C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 updateProperties:v3];

  return v4;
}

uint64_t sub_A8338(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_F07BC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 latestIdentifierForDomain:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_F07EC();

  return v6;
}

void sub_A83C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  if (a2)
  {
    v7 = sub_F07BC();
    if (a4)
    {
LABEL_3:
      v8 = sub_F07BC();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  [v6 assignIdentifier:v7 forDomain:? isHistoricalIdentifier:?];
}

uint64_t sub_A8494(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_F07EC();

  return v5;
}

id sub_A84F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39[-v9];
  v11 = *(a3 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 32))(v15, a1, a3, v13);
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(a4 + 8))(a3, a4);
  if (v17)
  {
    v18 = v17;
    v19 = sub_F07BC();
    v18, v20, v21, v22, v23, v24, v25, v26;
    [v16 setFocus:v19];
  }

  if (qword_127A70 != -1)
  {
    swift_once();
  }

  v27 = sub_3C96C(v7, qword_127D48);
  (*(v8 + 16))(v10, v27, v7);
  sub_F044C();
  (*(v8 + 8))(v10, v7);
  if (v39[15] == 1 && ((*(a4 + 16))(a3, a4), v28))
  {
    v29 = v28;
    v30 = sub_F07BC();
    v29, v31, v32, v33, v34, v35, v36, v37;
  }

  else
  {
    v30 = sub_F07BC();
  }

  [v16 setConversationID:v30];

  (*(v11 + 8))(v15, a3);
  return v16;
}

uint64_t sub_A87D0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_A87E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_A882C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double RCSServiceSession.calculateReachability(with:responseHandler:)(void *a1, uint64_t a2)
{
  v5 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  sub_F0AFC();
  v8 = sub_F0B1C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_F0AEC();
  v9 = v2;
  v10 = a1;
  swift_unknownObjectRetain();
  v11 = sub_F0ADC();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v9;
  v12[5] = v10;
  v12[6] = a2;
  sub_3CC0C(0, 0, v7, &unk_F42B0, v12);

  return result;
}

uint64_t sub_A89CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_F0AEC();
  v6[5] = sub_F0ADC();
  v8 = sub_F0A6C();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_A8A68, v8, v7);
}

void sub_A8A68()
{
  v1 = *(*(v0[2] + OBJC_IVAR___RCSServiceSession_state) + 120);
  v0[8] = v1;
  if (v1)
  {
    v2 = *(*v1 + 160);

    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_A8BB0;
    v5 = v0[3];
    v4 = v0[4];

    v6(v5, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_A8BB0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_4A2A0, v3, v2);
}

uint64_t sub_A8CF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_38B0C;

  return sub_A89CC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_A8F38()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_A8F88(uint64_t a1)
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

  return sub_A89CC(a1, v4, v5, v6, v7, v8);
}

void sub_A9050(uint64_t a1, RCSServiceSession *a2)
{
  v3 = v2;
  v6 = *a2[3].state;
  v34 = a2;
  if (v6)
  {
    v7 = sub_F07BC();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_F035C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F034C();
  sub_F032C();
  v13 = v12;
  (*(v9 + 8))(v11, v8);
  v14 = sub_F07BC();
  v13, v15, v16, v17, v18, v19, v20, v21;
  if (*(a1 + 8))
  {
    v22 = sub_F07BC();
    if (*(a1 + 72))
    {
LABEL_6:
      v23 = sub_F07BC();
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 0;
    if (*(a1 + 72))
    {
      goto LABEL_6;
    }
  }

  v23 = 0;
LABEL_9:
  v24 = *(a1 + 96);
  v25 = [v24 chatIdentifier];
  if (v25)
  {
    v26 = v25;
    v27 = [v24 style];
    v28 = [v3 account];
    LOBYTE(v32) = 1;
    [v3 didReceiveDisplayNameChange:v7 guid:v14 fromID:v22 toIdentifier:v23 forChat:v26 style:v27 account:v28 shouldRelay:v32];

    if (*(*&v3[OBJC_IVAR___RCSServiceSession_state] + 40))
    {
      v29 = *(a1 + 80);
      v35[4] = *(a1 + 64);
      v35[5] = v29;
      v36 = *(a1 + 96);
      v30 = *(a1 + 16);
      v35[0] = *a1;
      v35[1] = v30;
      v31 = *(a1 + 48);
      v35[2] = *(a1 + 32);
      v35[3] = v31;

      RCSGroupController.convergeParticipants(with:group:)(v35, v34);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_A92D0(void *a1)
{
  v3 = a1[12];
  v4 = [v3 chatIdentifier];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v3 style];
  v7 = a1[11];
  if (!a1[9])
  {
    v8 = 0;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = sub_F07BC();
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_4:
  v9 = sub_F07BC();
LABEL_7:
  v10 = v9;
  [v1 _updateLastAddressedIDsIfNeededForChatWithIdentifier:v5 style:v6 lastAddressedHandle:v8 lastAddressedSIMID:?];
}

unint64_t sub_A93BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_388C8(&qword_128590, &qword_F3930);
    v2 = sub_F110C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_54ED8(*(a1 + 48) + 40 * v14, v35);
        sub_3FE38(*(a1 + 56) + 32 * v14, v36 + 8);
        v33[0] = v36[0];
        v33[1] = v36[1];
        v34 = v37;
        v32[0] = v35[0];
        v32[1] = v35[1];
        sub_54ED8(v32, v27);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_3FE38(v33 + 8, v28);
        sub_372B0(v32, &qword_128518, &unk_F36B0);
        v29 = v26;
        sub_54F88(v28, v30);
        v15 = v29;
        sub_54F88(v30, v31);
        sub_54F88(v31, &v29);
        result = sub_51FEC(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;
          v10, v16, v17, v18, v19, v20, v21, v22;
          v12 = (v2[7] + 32 * v11);
          sub_1EDC(v12);
          result = sub_54F88(&v29, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_54F88(&v29, (v2[7] + 32 * result));
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_24;
          }

          v2[2] = v25;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_372B0(v32, &qword_128518, &unk_F36B0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_A9698(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 80) = a3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  sub_F0AEC();
  *(v7 + 72) = sub_F0ADC();
  v9 = sub_F0A6C();

  return _swift_task_switch(sub_A9770, v9, v8);
}

uint64_t sub_A9770()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 80);

  v5 = [objc_allocWithZone(CTLazuliDestination) init];
  v6 = sub_F07BC();
  [v5 setUri:v6];

  v7 = [objc_allocWithZone(CTLazuliFetchRemoteCapabilitiesOptions) init];
  v8 = v7;
  if (v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  [v7 setType:v9];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = *(*&Strong[OBJC_IVAR___RCSServiceSession_state] + 16);

  sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);

  v12 = CTLazuliOperationID.init(id:)(v2, v1);
  *(v0 + 16) = 0;
  v13 = [v11 fetchRemoteCapabilities:v3 forDestination:v5 withOptions:v8 withOperationID:v12 withError:v0 + 16];

  v14 = *(v0 + 16);
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v17 = v14;
    sub_F015C();

    swift_willThrow();
  }

  v16 = *(v0 + 8);

  return v16();
}

id sub_A99A4(void *a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v63 - v7;
  result = sub_AAD24(a1);
  if (result)
  {
    v10 = result;
    v11 = [result labelID];
    if (v11)
    {
      v12 = v11;
      v13 = sub_F07EC();
      v15 = v14;

      Strong = swift_unknownObjectUnownedLoadStrong();
      v17 = *(*&Strong[OBJC_IVAR___RCSServiceSession_state] + 24);

      if (*v17[1].IMDTelephonyServiceSession_opaque)
      {
        v25 = sub_51FEC(v13, v15);
        v27 = v26;
        v15, v26, v28, v29, v30, v31, v32, v33;
        if (v27)
        {
          v41 = *(*v17[3].state + 8 * v25);
          v17, v42, v43, v44, v45, v46, v47, v48;

          return v41;
        }
      }

      else
      {
        v15, v18, v19, v20, v21, v22, v23, v24;
      }

      v17, v34, v35, v36, v37, v38, v39, v40;
      v56 = Logger.reachability.unsafeMutableAddressor();
      (*(v3 + 16))(v8, v56, v2);
      v57 = v10;
      v58 = sub_F06AC();
      v59 = sub_F0CEC();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        *(v60 + 4) = v57;
        *v61 = v10;
        v62 = v57;
        _os_log_impl(&dword_0, v58, v59, "Missing RCS configuration for subscription context %@", v60, 0xCu);
        sub_372B0(v61, &qword_127AF0, &qword_F28E0);
      }

      else
      {
        v62 = v58;
        v58 = v57;
      }

      (*(v3 + 8))(v8, v2);
    }

    else
    {
      v49 = Logger.reachability.unsafeMutableAddressor();
      (*(v3 + 16))(v5, v49, v2);
      v50 = v10;
      v51 = sub_F06AC();
      v52 = sub_F0CFC();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        *(v53 + 4) = v50;
        *v54 = v10;
        v55 = v50;
        _os_log_impl(&dword_0, v51, v52, "Unexpectedly found nil labelID on subscription context %@", v53, 0xCu);
        sub_372B0(v54, &qword_127AF0, &qword_F28E0);
      }

      else
      {
        v55 = v51;
        v51 = v50;
      }

      (*(v3 + 8))(v5, v2);
    }

    return 0;
  }

  return result;
}

uint64_t sub_A9D70(void *a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  if (static NSUserDefaults.forceReachable.getter() & 1) != 0 || (Strong = swift_unknownObjectUnownedLoadStrong(), v7 = sub_8E448(a1), Strong, (v7))
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    v8 = sub_A99A4(a1);
    LODWORD(v15) = sub_AB26C(v8, &v54, v9, v10, v11, v12, v13, v14);

    v16 = Logger.reachability.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v16, v2);
    v17 = v54;
    v18 = v55;
    v19 = a1;

    v20 = sub_F06AC();
    v21 = sub_F0CCC();
    v18, v22, v23, v24, v25, v26, v27, v28;

    if (os_log_type_enabled(v20, v21))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v51 = v2;
      v31 = v30;
      v32 = swift_slowAlloc();
      v52 = v15;
      v15 = v32;
      v53 = v32;
      *v29 = 138412802;
      *(v29 + 4) = v19;
      *v31 = v19;
      *(v29 + 12) = 1024;
      *(v29 + 14) = v52 & 1;
      *(v29 + 18) = 2080;
      v33 = v19;
      v34 = sub_3E850(v17, v18, &v53);
      v18, v35, v36, v37, v38, v39, v40, v41;
      *(v29 + 20) = v34;
      _os_log_impl(&dword_0, v20, v21, "RCS is enabled for %@: %{BOOL}d (%s)", v29, 0x1Cu);
      sub_372B0(v31, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v15);
      LOBYTE(v15) = v52;

      (*(v3 + 8))(v5, v51);
    }

    else
    {

      v18, v42, v43, v44, v45, v46, v47, v48;
      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15 & 1;
}

id sub_AA05C(void *a1)
{
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  if ((static NSUserDefaults.forceReachable.getter() & 1) == 0)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v3 = sub_8E448(a1);

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_AAD24(a1);
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() sharedManager];
    v7 = [v6 networkSupportsInterworkingForContext:v5];

    return v7;
  }

  return result;
}

uint64_t sub_AA130(void *a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  if ((static NSUserDefaults.forceReachable.getter() & 1) == 0)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v10 = sub_8E448(a1);

    if ((v10 & 1) == 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v11 = sub_A99A4(a1);
  if (v11 && (v12 = v11, v13 = [v11 groupChatCapabilites], v12, v13) && (v14 = objc_msgSend(v13, "maxGroupSize"), v13, v14))
  {
    v15 = Logger.reachability.unsafeMutableAddressor();
    (*(v3 + 16))(v8, v15, v2);
    v16 = a1;
    v17 = v14;
    v18 = sub_F06AC();
    v19 = sub_F0CCC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412546;
      *(v20 + 4) = v16;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v17;
      *v21 = v16;
      v21[1] = v14;
      v22 = v16;
      v23 = v17;
      _os_log_impl(&dword_0, v18, v19, "RCS max group size for %@: %@", v20, 0x16u);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();
    }

    (*(v3 + 8))(v8, v2);
    v24 = [v17 integerValue];

    return v24;
  }

  else
  {
    v26 = Logger.reachability.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v26, v2);
    v27 = a1;
    v28 = sub_F06AC();
    v29 = sub_F0CCC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_0, v28, v29, "Returning RCS max group size, can't find configuration for %@", v30, 0xCu);
      sub_372B0(v31, &qword_127AF0, &qword_F28E0);
    }

    (*(v3 + 8))(v5, v2);
    return 100;
  }
}

id sub_AA650(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RCSServiceReachabilityDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_AA6B8(void *a1)
{
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  if (static NSUserDefaults.forceReachable.getter())
  {
    return 1;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = sub_8E448(a1);

  return v4 & 1;
}

uint64_t sub_AA738()
{
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  if (static NSUserDefaults.forceReachable.getter())
  {
    return 1;
  }

  else
  {
    return IMSharedHelperRetrieveSimDetailsFromTelephony();
  }
}

BOOL sub_AA784()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *(*&Strong[OBJC_IVAR___RCSServiceSession_state] + 96);

  v2 = *(v1 + 16);

  return v2 != 0;
}

uint64_t sub_AA7E4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_37C54;

  return sub_A9698(a1, a2, a3, v12, a5, a6);
}

id sub_AA8B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_AAD24(a1);
  *a2 = result;
  return result;
}

double sub_AA8E0@<D0>(_OWORD *a1@<X8>)
{
  RCSHandle.canonicalizedHandle(for:)(RCSPersistentMenu.menu.getter, v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 9);
  *(a1 + 41) = *(v5 + 9);
  return result;
}

id sub_AA958(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = sub_64FFC(a1, a2);

  return v5;
}

void sub_AA9B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (a1)
  {
    v7 = sub_A93BC(a1);
  }

  else
  {
    v7 = 0;
  }

  sub_65010(v7, a2, a3);

  v7, v8, v9, v10, v11, v12, v13, v14;
}

id sub_AAA3C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = sub_65614(a1, a2);

  return v5;
}

uint64_t sub_AAA94(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = sub_65898(a1, a2);

  return v5;
}

void sub_AAAF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, RCSServiceSession *a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (a1)
  {
    v11 = sub_A93BC(a1);
  }

  else
  {
    v11 = 0;
  }

  sub_65A60(v11, a2, a3, a4, a5);

  v11, v12, v13, v14, v15, v16, v17, v18;
}

void sub_AABBC(void *a1)
{
  sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
  if ((static NSUserDefaults.forceReachable.getter() & 1) == 0 && ((static NSUserDefaults.forceReachable.getter() & 1) == 0 && !IMSharedHelperRetrieveSimDetailsFromTelephony() || (sub_A9D70(a1) & 1) == 0))
  {

    sub_AB4F0(a1);
  }
}

uint64_t sub_AAC58()
{
  v0 = sub_F07BC();
  v1 = IMBagBoolValueWithDefault();

  return v1;
}

void sub_AACAC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  [v4 calculateReachabilityWithRequest:a1 responseHandler:a2];
}

id sub_AAD24(void *a1)
{
  v2 = sub_F06CC();
  v48 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v47 - v6;
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v10 = objc_opt_self();
  v11 = [v10 sharedInstance];
  v12 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  v13 = [v11 ctSubscriptionInfo];

  if (!v13 || (v14 = [a1 senderLastAddressedSIMID], v15 = v4, v16 = v2, v17 = objc_msgSend(a1, "senderLastAddressedHandle"), v18 = objc_msgSend(v13, "__im_subscriptionContextForForSimID:phoneNumber:", v14, v17), v13, v14, v17, v2 = v16, v4 = v15, v12 = &selRef_messageSent_onService_compatibilityService_wasInterworked_, !v18))
  {
    v29 = [v10 sharedInstance];
    v30 = [v29 v12[139]];

    if (v30 && (v18 = [v30 preferredOrDefaultSubscriptionContext], v30, v18))
    {
      v31 = Logger.reachability.unsafeMutableAddressor();
      v32 = v47;
      v20 = v48;
      (*(v48 + 16))(v47, v31, v2);
      v33 = a1;
      v34 = v18;
      v23 = sub_F06AC();
      v35 = sub_F0CDC();

      if (!os_log_type_enabled(v23, v35))
      {
        v9 = v32;
        goto LABEL_14;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412546;
      *(v36 + 4) = v33;
      *(v36 + 12) = 2112;
      *(v36 + 14) = v34;
      *v37 = v33;
      v37[1] = v18;
      v38 = v33;
      v39 = v34;
      _os_log_impl(&dword_0, v23, v35, "Context %@ doesn't have subscription info - using default subscription %@", v36, 0x16u);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();
      v9 = v32;
    }

    else
    {
      v40 = Logger.reachability.unsafeMutableAddressor();
      v20 = v48;
      (*(v48 + 16))(v4, v40, v2);
      v41 = a1;
      v23 = sub_F06AC();
      v42 = sub_F0CEC();

      if (!os_log_type_enabled(v23, v42))
      {
        v18 = 0;
        v9 = v4;
        goto LABEL_14;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v41;
      *v44 = v41;
      v45 = v41;
      _os_log_impl(&dword_0, v23, v42, "Device has no subscriptions, returning nil subscription for reachability context %@", v43, 0xCu);
      sub_372B0(v44, &qword_127AF0, &qword_F28E0);
      v18 = 0;
      v9 = v4;
    }

    goto LABEL_11;
  }

  v19 = Logger.reachability.unsafeMutableAddressor();
  v20 = v48;
  (*(v48 + 16))(v9, v19, v2);
  v21 = a1;
  v22 = v18;
  v23 = sub_F06AC();
  v24 = sub_F0CDC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412546;
    *(v25 + 4) = v21;
    *(v25 + 12) = 2112;
    *(v25 + 14) = v22;
    *v26 = v21;
    v26[1] = v18;
    v27 = v21;
    v28 = v22;
    _os_log_impl(&dword_0, v23, v24, "Found exact match for subscription context %@: %@", v25, 0x16u);
    sub_388C8(&qword_127AF0, &qword_F28E0);
    swift_arrayDestroy();
LABEL_11:
  }

LABEL_14:

  (*(v20 + 8))(v9, v2);
  return v18;
}

uint64_t sub_AB26C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v10 = 0xD000000000000010;
  *(a2 + 8), a2, a3, a4, a5, a6, a7, a8;
  if (a1)
  {
    v11 = a1;
    v12 = [v11 operationStatus];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 registrationState];
      if (v14)
      {
        v15 = v14 == &dword_0 + 1;
      }

      else
      {
        v15 = 1;
      }

      v16 = v15;
      sub_F0F9C(20);
      0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
      v24 = [v13 description];
      v25 = sub_F07EC();
      v27 = v26;

      v37._countAndFlagsBits = v25;
      v37._object = v27;
      sub_F08CC(v37);

      v27, v28, v29, v30, v31, v32, v33, v34;
      v10 = 0xD000000000000012;
      v35 = 0x80000000000FFA60;
    }

    else
    {

      v16 = 0;
      v35 = 0x80000000000FFA40;
      v10 = 0xD00000000000001BLL;
    }
  }

  else
  {
    v16 = 0;
    v35 = 0x80000000000FFA20;
  }

  *a2 = v10;
  *(a2 + 8) = v35;
  return v16;
}

id sub_AB3D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_F07BC();
  v5 = [v4 _stripFZIDPrefix];

  if (v5)
  {
    sub_F07EC();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  IsPhoneNumber = IMStringIsPhoneNumber();

  if (IsPhoneNumber)
  {
    v16 = [a3 slotID];
    if (v7)
    {
      v17 = sub_F07BC();
      v7, v18, v19, v20, v21, v22, v23, v24;
    }

    else
    {
      v17 = 0;
    }

    v25 = [objc_allocWithZone(CTPhoneNumber) initWithDigits:v16 digits:v17 countryCode:0];

    if (v25)
    {
      v26 = [v25 isShortCode];

      return v26;
    }
  }

  else
  {
    v7, v9, v10, v11, v12, v13, v14, v15;
  }

  return 0;
}

void sub_AB4F0(void *a1)
{
  v2 = sub_F06CC();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v61 - v6;
  __chkstk_darwin(v8);
  v10 = &v61 - v9;
  __chkstk_darwin(v11);
  v13 = &v61 - v12;
  __chkstk_darwin(v14);
  v62 = &v61 - v15;
  __chkstk_darwin(v16);
  v61 = &v61 - v17;
  __chkstk_darwin(v18);
  v20 = &v61 - v19;
  v21 = objc_opt_self();
  v22 = [v21 sharedInstance];
  if (!v22)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v23 = v22;
  v24 = [v22 hasRelayDevice];

  if (!v24)
  {
    v38 = Logger.reachability.unsafeMutableAddressor();
    v37 = v63;
    v36 = v64;
    (*(v63 + 16))(v4, v38, v64);
    v31 = sub_F06AC();
    v39 = sub_F0CCC();
    if (os_log_type_enabled(v31, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v31, v39, "Returning that RCS relay is unavailable, we have no relay devices", v40, 2u);
    }

    v20 = v4;
    goto LABEL_37;
  }

  v25 = [v21 sharedInstance];
  if (!v25)
  {
    goto LABEL_39;
  }

  v26 = v25;
  v27 = [v25 enrollmentController];

  if (!v27)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v28 = [v27 hasBeenRemoteApproved];

  if (!v28)
  {
    v41 = Logger.reachability.unsafeMutableAddressor();
    v37 = v63;
    v36 = v64;
    (*(v63 + 16))(v7, v41, v64);
    v31 = sub_F06AC();
    v42 = sub_F0CCC();
    if (os_log_type_enabled(v31, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v31, v42, "Returning that RCS relay is unavailable, we are not approved for relay", v43, 2u);
    }

    v20 = v7;
    goto LABEL_37;
  }

  v29 = [a1 senderLastAddressedHandle];
  if (!v29)
  {
LABEL_20:
    v44 = [v21 sharedInstance];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 hasPhoneNumberAliasActiveCheckingSelf:0];

      v47 = Logger.reachability.unsafeMutableAddressor();
      v37 = v63;
      v36 = v64;
      v48 = *(v63 + 16);
      if (v46)
      {
        v48(v13, v47, v64);
        v31 = sub_F06AC();
        v49 = sub_F0CCC();
        if (os_log_type_enabled(v31, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_0, v31, v49, "Returning that RCS relay is available, we are approved and have a phone number alias that provides relay", v50, 2u);
        }

        v20 = v13;
        goto LABEL_37;
      }

      v48(v10, v47, v64);
      v31 = sub_F06AC();
      v51 = sub_F0CCC();
      if (!os_log_type_enabled(v31, v51))
      {
        goto LABEL_36;
      }

      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "Returning that RCS relay is unavailable, we are approved but have no phone number aliases that provide relay";
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  v7 = v29;
  if (!IMStringIsPhoneNumber())
  {

    goto LABEL_20;
  }

  v30 = [objc_opt_self() sharedInstance];
  v31 = [v30 ctSubscriptionInfo];

  if (v31)
  {
    if ([v31 __im_containsPhoneNumber:v7])
    {

      v32 = Logger.reachability.unsafeMutableAddressor();
      (*(v63 + 16))(v20, v32, v64);
      v33 = sub_F06AC();
      v34 = sub_F0CCC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_0, v33, v34, "Returning that RCS relay is unavailable, preferred handle is locally provided. Relay is impossible", v35, 2u);
      }

      v37 = v63;
      v36 = v64;
      goto LABEL_37;
    }
  }

  v54 = [v21 sharedInstance];
  if (v54)
  {
    v55 = v54;
    v56 = [v54 isAliasActiveAndRelayCapable:v7 checkingSelf:0];

    v57 = Logger.reachability.unsafeMutableAddressor();
    v37 = v63;
    v36 = v64;
    v58 = *(v63 + 16);
    if (v56)
    {
      v10 = v61;
      v58(v61, v57, v64);
      v31 = sub_F06AC();
      v59 = sub_F0CCC();
      if (os_log_type_enabled(v31, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_0, v31, v59, "Returning that RCS relay is available, we are approved and the last-addressed handle is from a device that supports relay", v60, 2u);
      }

      goto LABEL_36;
    }

    v10 = v62;
    v58(v62, v57, v64);
    v31 = sub_F06AC();
    LOBYTE(v51) = sub_F0CCC();
    if (!os_log_type_enabled(v31, v51))
    {
LABEL_36:
      v20 = v10;
LABEL_37:

      (*(v37 + 8))(v20, v36);
      return;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "Returning that RCS relay is unavailable, we are approved but the last-addressed handle is not from a device that supports relay";
LABEL_35:
    _os_log_impl(&dword_0, v31, v51, v53, v52, 2u);

    goto LABEL_36;
  }

LABEL_42:

  __break(1u);
}

uint64_t CTXPCServiceSubscriptionContext.canonicalPhoneNumber.getter()
{
  v1 = [v0 phoneNumber];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_F07EC();
  v5 = v4;

  v6 = sub_53E04(_swiftEmptyArrayStorage);
  v7._countAndFlagsBits = 7103860;
  v7._object = 0xE300000000000000;
  v8._countAndFlagsBits = v3;
  v8._object = v5;
  RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v12, v7, v8, v6, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  __chkstk_darwin(v9);
  RCSHandle.canonicalizedHandle(for:)(RCSPersistentMenu.menu.getter, &v13);
  sub_3CAB8(&v12);
  v10 = v14;

  sub_3CAB8(&v13);
  return v10;
}

id sub_ABD88(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v11 = sub_F07BC();
  v12 = [v5 chatForChatIdentifier:v11 style:45 updatingAccount:1];

  if (!v12)
  {
    sub_388C8(&qword_128508, "ȷ");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_F4320;
    sub_F07EC();
    sub_F0F3C();
    *(inited + 96) = &type metadata for Int32;
    *(inited + 72) = 2;
    sub_F07EC();
    sub_F0F3C();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = a1;
    *(inited + 152) = a2;
    sub_F07EC();

    sub_F0F3C();
    *(inited + 240) = &type metadata for Bool;
    *(inited + 216) = a3 & 1;
    v30 = sub_F07EC();
    v31 = v14;
    sub_F0F3C();
    *(inited + 312) = &type metadata for String;
    if (a5)
    {
      v15 = a4;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0xE000000000000000;
    if (a5)
    {
      v16 = a5;
    }

    *(inited + 288) = v15;
    *(inited + 296) = v16;

    v17 = sub_80F34(inited);
    swift_setDeallocating();
    sub_388C8(&qword_128510, &unk_F36A0);
    swift_arrayDestroy();
    v18 = sub_F07BC();
    sub_388C8(&qword_127F78, &qword_F2EB8);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_F2C60;
    *(v19 + 56) = sub_388C8(&qword_128528, &unk_F36C0);
    *(v19 + 32) = v17;
    v20 = sub_F09EC();
    v19, v21, v22, v23, v24, v25, v26, v27;
    [v5 didJoinChat:v18 style:45 displayName:0 groupID:0 handleInfo:{v20, v30, v31}];

    v28 = sub_F07BC();
    v12 = [v5 chatForChatIdentifier:v28 style:45];
  }

  return v12;
}

void *sub_AC068(uint64_t a1, const char *a2, char a3, char a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  sub_388C8(&qword_128288, &qword_F3460);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_F2C60;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  if (a4)
  {
    v12 = sub_F084C();
    v13 = v11;
    if (v12 == a1 && v11 == a2 || (sub_F122C() & 1) != 0)
    {

      v13, v14, v15, v16, v17, v18, v19, v20;
    }

    else
    {
      v67 = a3;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);

      if (v22 >= v21 >> 1)
      {
        v66 = v21 > 1;
        v27 = v22 + 1;
        v10 = sub_6E2D8(v66, v22 + 1, &dword_0 + 1, v10, v23, v24, v25, v26);
      }

      else
      {
        v27 = v22 + 1;
      }

      *(v10 + 16) = v27;
      v28 = v10 + 16 * v22;
      *(v28 + 32) = v12;
      *(v28 + 40) = v13;
      a3 = v67;
    }

    v36 = sub_F086C();
    v37 = v29;
    if (v36 == a1 && v29 == a2 || (sub_F122C() & 1) != 0)
    {
      v37, v29, v30, v31, v32, v33, v34, v35;
    }

    else
    {
      v39 = *(v10 + 16);
      v38 = *(v10 + 24);
      if (v39 >= v38 >> 1)
      {
        v10 = sub_6E2D8((v38 > 1), v39 + 1, &dword_0 + 1, v10, v32, v33, v34, v35);
      }

      *(v10 + 16) = v39 + 1;
      v40 = v10 + 16 * v39;
      *(v40 + 32) = v36;
      *(v40 + 40) = v37;
    }
  }

  else
  {
  }

  v41 = [objc_opt_self() synchronousDatabase];
  v42 = [v4 service];
  v43 = [v42 internalName];

  v44 = sub_F07EC();
  v46 = v45;

  v47 = sub_AC558(v10, a3 & 1, v44, v46);
  v10, v48, v49, v50, v51, v52, v53, v54;
  v46, v55, v56, v57, v58, v59, v60, v61;
  aBlock[4] = sub_ACA10;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_AC4D4;
  aBlock[3] = &unk_11F3F0;
  v62 = _Block_copy(aBlock);

  [v41 fetchMessageRecordsFilteredUsingPredicate:v47 sortedUsingDescriptors:0 limit:1 completionHandler:v62];
  _Block_release(v62);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v63 = *(v9 + 16);
  v64 = v63;

  return v63;
}

void sub_AC3C4(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v9 = a1;
    v10 = sub_F10DC();
    a1 = v9;
    if (!v10)
    {
      return;
    }
  }

  else if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_F0FCC();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
  v5 = IMDMessageRecordRefFromIMDMessageRecord();
  v6 = IMDCreateIMMessageItemFromIMDMessageRecordRef();

  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }

    swift_beginAccess();
    v8 = *(a2 + 16);
    *(a2 + 16) = v7;
  }
}

void sub_AC4D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_37310(0, &qword_128DE8, IMDMessageRecord_ptr);
  v3 = sub_F09FC();

  v2(v3);

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_AC558(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_37310(0, &qword_128DF0, NSPredicate_ptr);
  sub_388C8(&qword_128DF8, qword_F4340);
  if (a2)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_F4320;
    v9 = sub_F07EC();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    v12 = sub_ACA30();
    *(v8 + 64) = v12;
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    *(v8 + 96) = sub_388C8(&qword_128558, &unk_F4430);
    *(v8 + 104) = sub_ACA78();
    *(v8 + 72) = a1;
    v13 = sub_F07EC();
    *(v8 + 136) = &type metadata for String;
    *(v8 + 144) = v12;
    *(v8 + 112) = v13;
    *(v8 + 120) = v14;
    *(v8 + 176) = &type metadata for String;
    *(v8 + 184) = v12;
    *(v8 + 152) = a3;
    *(v8 + 160) = a4;
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_F4330;
    v16 = sub_F07EC();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    v19 = sub_ACA30();
    *(v15 + 64) = v19;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v20 = sub_388C8(&qword_128558, &unk_F4430);
    *(v15 + 96) = v20;
    v21 = sub_ACA78();
    *(v15 + 104) = v21;
    *(v15 + 72) = a1;
    v22 = sub_F07EC();
    *(v15 + 136) = &type metadata for String;
    *(v15 + 144) = v19;
    *(v15 + 112) = v22;
    *(v15 + 120) = v23;
    *(v15 + 176) = v20;
    *(v15 + 184) = v21;
    *(v15 + 152) = a1;
    v24 = sub_F07EC();
    *(v15 + 216) = &type metadata for String;
    *(v15 + 224) = v19;
    *(v15 + 192) = v24;
    *(v15 + 200) = v25;
    *(v15 + 256) = &type metadata for String;
    *(v15 + 264) = v19;
    *(v15 + 232) = a3;
    *(v15 + 240) = a4;
    swift_bridgeObjectRetain_n();
  }

  return sub_F0CBC();
}

id sub_AC78C(void *a1)
{
  result = [a1 fallbackHash];
  if (!result)
  {
    result = [a1 guid];
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  v3 = result;
  v4 = sub_F07EC();
  v6 = v5;

  v7 = [a1 messageSummaryInfo];
  if (v7)
  {
    v8 = v7;
    v9 = sub_F076C();

    v50 = sub_F07EC();
    v52 = v10;
    sub_F0F3C();
    if (*v9[1].IMDTelephonyServiceSession_opaque && (v18 = sub_51FA8(v53), (v11 & 1) != 0))
    {
      sub_3FE38(*v9[3].state + 32 * v18, v54);
      sub_54F34(v53);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v9, v19, v20, v21, v22, v23, v24, v25;
        goto LABEL_13;
      }

      v26 = v50;
      v51 = sub_F07EC();
      sub_F0F3C();
      if (*v9[1].IMDTelephonyServiceSession_opaque)
      {
        v34 = sub_51FA8(v53);
        if (v27)
        {
          sub_3FE38(*v9[3].state + 32 * v34, v54);
          sub_54F34(v53);
          v9, v35, v36, v37, v38, v39, v40, v41;
          sub_37310(0, &qword_128DE0, CTLazuliSecureGroupVersion_ptr);
          if (swift_dynamicCast())
          {
            sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
            return CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(v4, v6, v51, v26, v52);
          }

          v52, v42, v43, v44, v45, v46, v47, v48;
          goto LABEL_13;
        }
      }

      v9, v27, v28, v29, v30, v31, v32, v33;
      v49 = v52;
    }

    else
    {
      v49 = v9;
    }

    v49, v11, v12, v13, v14, v15, v16, v17;
    sub_54F34(v53);
  }

LABEL_13:
  sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
  return CTLazuliMessageID.init(uuid:)(v4, v6);
}

uint64_t sub_ACA18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_ACA30()
{
  result = qword_128E00;
  if (!qword_128E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128E00);
  }

  return result;
}

unint64_t sub_ACA78()
{
  result = qword_128E08;
  if (!qword_128E08)
  {
    sub_3CB70(&qword_128558, &unk_F4430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128E08);
  }

  return result;
}

void RCSServiceSession.improvisedFallbackGUIDs(forMessage:)(void *a1)
{
  v23 = [objc_opt_self() sharedInstance];
  if (v23)
  {
    v2 = [a1 description];
    v3 = sub_F07EC();
    v5 = v4;

    v6 = sub_F0FBC();
    v8 = v7;
    v24[0] = 3;
    v25 = v6;
    v26 = v7;
    v27 = v3;
    v28 = v5;
    v29 = 0;
    v30 = 0;
    sub_94528(v24);
    v5, v9, v10, v11, v12, v13, v14, v15;
    v8, v16, v17, v18, v19, v20, v21, v22;
  }

  else
  {
    __break(1u);
  }
}

id sub_ACBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata createFallbackTextForMessage:a1 processedMessageItem:a2 leadingFallbackText:a3 trailingFallbackText:a4];
}

uint64_t sub_ACC2C(uint64_t a1, uint64_t a2)
{
  v2 = [swift_getObjCClassFromMetadata() getPlainTextForMessage:a1 processedMessageItem:a2];
  v3 = sub_F07EC();

  return v3;
}

id sub_ACDD0(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR___RCSMessageSender_session] = a1;
  *&v6[OBJC_IVAR___RCSMessageSender_rcsSession] = a1;
  *&v6[OBJC_IVAR___RCSMessageSender_message] = a2;
  *&v6[OBJC_IVAR___RCSMessageSender_chat] = a3;
  v6[OBJC_IVAR___RCSMessageSender_style] = a4;
  *&v6[OBJC_IVAR___RCSMessageSender_recipients] = a5;
  v6[OBJC_IVAR___RCSMessageSender_sendAsGroupMessage] = 0;
  *&v6[OBJC_IVAR___RCSMessageSender_context] = a6;
  *&v6[OBJC_IVAR___RCSMessageSender_outgoing] = _swiftEmptyArrayStorage;
  swift_unknownObjectUnownedInit();
  sub_B1244(v11, &v6[OBJC_IVAR___RCSMessageSender_compatibilityTransformer]);
  v10.receiver = v6;
  v10.super_class = RCSMessageSender;
  v8 = a1;
  return objc_msgSendSuper2(&v10, "init");
}

void sub_AD028(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 rcsSession];
  v7 = [v6 attachmentController];

  v8 = [v3 message];
  v9 = [v3 chat];
  v10 = [v9 lastAddressedLocalHandle];

  v11 = [v3 chat];
  v12 = [v11 lastAddressedSIMID];

  v14[4] = a1;
  v14[5] = a2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_AD1D4;
  v14[3] = &unk_11F550;
  v13 = _Block_copy(v14);

  [v7 processAttachmentsForMessage:v8 generateTextParts:1 lastAddressedHandle:v10 lastAddressedSIMID:v12 completionBlock:v13];
  _Block_release(v13);
}

void sub_AD1D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  sub_388C8(&qword_128568, &qword_F3950);
  v6 = sub_F09FC();

  v14 = a2;
  v5();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

void sub_AD320(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_388C8(&qword_128568, &qword_F3950);
  v9 = sub_F09EC();
  (*(a5 + 16))(a5, a1, a2 & 1, v9, a4);
}

uint64_t sub_AD3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = sub_F06CC();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  sub_388C8(&qword_128F00, &unk_F43F0);
  v7[11] = swift_task_alloc();
  v9 = type metadata accessor for RCSMessage(0);
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return _swift_task_switch(sub_AD524, 0, 0);
}

void sub_AD524()
{
  v1 = [*(v0 + 32) sendAsGroupMessage];
  v2 = *(v0 + 32);
  if (v1)
  {
    *(v0 + 128) = [*(v0 + 32) rcsSession];
    v3 = [v2 chat];
    *(v0 + 136) = v3;
    v4 = [v2 context];
    *(v0 + 144) = v4;
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_AD83C;
    v6 = *(v0 + 120);
    v7 = *(v0 + 40);

    sub_5524C(v6, v7, 0, v3, v4);
  }

  else
  {
    *(v0 + 16) = _swiftEmptyArrayStorage;
    v8 = [v2 recipients];
    sub_388C8(&qword_128568, &qword_F3950);
    v9 = sub_F09FC();
    *(v0 + 184) = v9;

    v17 = *(v9 + 16);
    v18 = OBJC_IVAR___RCSMessageSender_compatibilityTransformer;
    *(v0 + 192) = v17;
    *(v0 + 200) = v18;
    if (v17)
    {
      *(v0 + 208) = 0;
      v19 = *(v0 + 184);
      if (*(v19 + 16))
      {
        v20 = *(v0 + 32);
        v21 = *(v19 + 32);
        *(v0 + 216) = v21;

        *(v0 + 224) = [v20 rcsSession];
        v22 = [v20 context];
        *(v0 + 232) = v22;
        v23 = swift_task_alloc();
        *(v0 + 240) = v23;
        *v23 = v0;
        v23[1] = sub_ADBC4;
        v24 = *(v0 + 88);
        v25 = *(v0 + 40);

        sub_56124(v24, v25, 0, v21, v22);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v26 = *(v0 + 32);
      *(v0 + 184), v10, v11, v12, v13, v14, v15, v16;
      v27 = *(v26 + OBJC_IVAR___RCSMessageSender_outgoing);
      *(v26 + OBJC_IVAR___RCSMessageSender_outgoing) = _swiftEmptyArrayStorage;
      v27, v28, v29, v30, v31, v32, v33, v34;
      (*(v0 + 48))(1);

      v35 = *(v0 + 8);

      v35();
    }
  }
}

uint64_t sub_AD83C()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_AE614, 0, 0);
  }

  else
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 128);

    v5 = swift_task_alloc();
    *(v2 + 168) = v5;
    v6 = sub_388C8(&qword_128F08, &qword_F4400);
    *v5 = v2;
    v5[1] = sub_AD9FC;
    v7 = *(v2 + 120);
    v8 = *(v2 + 40);

    return RCSCompatibleMessageTransformer.transform(rcsMessage:message:)(v7, v8, v6);
  }
}

uint64_t sub_AD9FC(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_ADAFC, 0, 0);
}

uint64_t sub_ADAFC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 32);
  sub_3897C(*(v0 + 120));
  v3 = *(v2 + OBJC_IVAR___RCSMessageSender_outgoing);
  *(v2 + OBJC_IVAR___RCSMessageSender_outgoing) = v1;
  v3, v4, v5, v6, v7, v8, v9, v10;
  (*(v0 + 48))(1);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_ADBC4()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v11 = *(v2 + 224);
    v10 = *(v2 + 232);
    v12 = *(v2 + 216);
    *(v2 + 184), v3, v4, v5, v6, v7, v8, v9;

    v12, v13, v14, v15, v16, v17, v18, v19;
    *(v2 + 16), v20, v21, v22, v23, v24, v25, v26;
    v27 = sub_AE6B0;
  }

  else
  {
    v28 = *(v2 + 224);

    v27 = sub_ADD14;
  }

  return _swift_task_switch(v27, 0, 0);
}

void sub_ADD14()
{
  v1 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96)) == 1)
  {
    *(v0 + 216), v2, v3, v4, v5, v6, v7, v8;
    sub_372B0(v1, &qword_128F00, &unk_F43F0);
    v16 = *(v0 + 208) + 1;
    if (v16 == *(v0 + 192))
    {
      v17 = *(v0 + 16);
      v18 = *(v0 + 32);
      *(v0 + 184), v9, v10, v11, v12, v13, v14, v15;
      v19 = *(v18 + OBJC_IVAR___RCSMessageSender_outgoing);
      *(v18 + OBJC_IVAR___RCSMessageSender_outgoing) = v17;
      v19, v20, v21, v22, v23, v24, v25, v26;
      (*(v0 + 48))(1);

      v27 = *(v0 + 8);

      v27();
      return;
    }

    *(v0 + 208) = v16;
    v107 = *(v0 + 184);
    if (v16 < *(v107 + 16))
    {
      v108 = *(v0 + 32);
      v109 = *(v107 + 8 * v16 + 32);
      *(v0 + 216) = v109;

      *(v0 + 224) = [v108 rcsSession];
      v110 = [v108 context];
      *(v0 + 232) = v110;
      v111 = swift_task_alloc();
      *(v0 + 240) = v111;
      *v111 = v0;
      v111[1] = sub_ADBC4;
      v112 = *(v0 + 88);
      v113 = *(v0 + 40);

      sub_56124(v112, v113, 0, v109, v110);
      return;
    }

    __break(1u);
LABEL_21:
    v123 = *(v0 + 40);
    swift_bridgeObjectRelease_n();

    __break(1u);
    return;
  }

  sub_3CA08(v1, *(v0 + 112));
  if (*(*(v0 + 16) + 16))
  {
    v36 = *(v0 + 72);
    v35 = *(v0 + 80);
    v37 = *(v0 + 64);
    v127 = *(v0 + 40);
    v38 = sub_F035C();
    v39 = *(v38 - 8);
    v40 = swift_task_alloc();
    sub_F034C();
    v41 = sub_F032C();
    v43 = v42;
    (*(v39 + 8))(v40, v38);

    v44 = Logger.rcs.unsafeMutableAddressor();
    (*(v36 + 16))(v35, v44, v37);
    v45 = v43;

    v46 = v127;
    v47 = sub_F06AC();
    v48 = sub_F0D0C();
    v43, v49, v50, v51, v52, v53, v54, v55;
    v126 = v41;
    if (os_log_type_enabled(v47, v48))
    {
      v56 = *(v0 + 40);
      v57 = swift_slowAlloc();
      *(v0 + 24) = swift_slowAlloc();
      *v57 = 136315650;
      v58 = v41;
      v59 = v43;
      *(v57 + 4) = sub_3E850(v58, v43, (v0 + 24));
      *(v57 + 12) = 2080;
      v60 = [v56 guid];
      v68 = *(v0 + 216);
      if (!v60)
      {
        goto LABEL_21;
      }

      v69 = v60;
      v70 = *(v0 + 72);
      v124 = *(v0 + 64);
      v125 = *(v0 + 80);
      v71 = *(v0 + 40);
      v68, v61, v62, v63, v64, v65, v66, v67;

      v72 = sub_F07EC();
      v74 = v73;

      v75 = sub_3E850(v72, v74, (v0 + 24));
      v74, v76, v77, v78, v79, v80, v81, v82;
      *(v57 + 14) = v75;
      *(v57 + 22) = 2080;
      v83 = sub_F077C();
      v85 = v84;
      v68, v84, v86, v87, v88, v89, v90, v91;
      v92 = sub_3E850(v83, v85, (v0 + 24));
      v85, v93, v94, v95, v96, v97, v98, v99;
      *(v57 + 24) = v92;
      _os_log_impl(&dword_0, v47, v48, "Assigning new ID %s for message %s to be sent to %s", v57, 0x20u);
      swift_arrayDestroy();

      (*(v70 + 8))(v125, v124);
      v45 = v59;
    }

    else
    {
      v115 = *(v0 + 72);
      v114 = *(v0 + 80);
      v116 = *(v0 + 64);
      v117 = *(v0 + 40);
      swift_bridgeObjectRelease_n();

      (*(v115 + 8))(v114, v116);
    }

    v118 = *(v0 + 112);
    *(v118 + 136), v100, v101, v102, v103, v104, v105, v106;
    *(v118 + 128) = v126;
    *(v118 + 136) = v45;
  }

  else
  {
    *(v0 + 216), v28, v29, v30, v31, v32, v33, v34;
  }

  v119 = swift_task_alloc();
  *(v0 + 256) = v119;
  v120 = sub_388C8(&qword_128F08, &qword_F4400);
  *v119 = v0;
  v119[1] = sub_AE328;
  v121 = *(v0 + 112);
  v122 = *(v0 + 40);

  RCSCompatibleMessageTransformer.transform(rcsMessage:message:)(v121, v122, v120);
}

uint64_t sub_AE328(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_AE428, 0, 0);
}

uint64_t sub_AE428()
{
  v1 = *(v0 + 112);
  sub_AE738(*(v0 + 264));
  result = sub_3897C(v1);
  v10 = *(v0 + 208) + 1;
  if (v10 == *(v0 + 192))
  {
    v11 = *(v0 + 16);
    v12 = *(v0 + 32);
    *(v0 + 184), v3, v4, v5, v6, v7, v8, v9;
    v13 = *(v12 + OBJC_IVAR___RCSMessageSender_outgoing);
    *(v12 + OBJC_IVAR___RCSMessageSender_outgoing) = v11;
    v13, v14, v15, v16, v17, v18, v19, v20;
    (*(v0 + 48))(1);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    *(v0 + 208) = v10;
    v22 = *(v0 + 184);
    if (v10 >= *(v22 + 16))
    {
      __break(1u);
    }

    else
    {
      v23 = *(v0 + 32);
      v24 = *(v22 + 8 * v10 + 32);
      *(v0 + 216) = v24;

      *(v0 + 224) = [v23 rcsSession];
      v25 = [v23 context];
      *(v0 + 232) = v25;
      v26 = swift_task_alloc();
      *(v0 + 240) = v26;
      *v26 = v0;
      v26[1] = sub_ADBC4;
      v27 = *(v0 + 88);
      v28 = *(v0 + 40);

      return sub_56124(v27, v28, 0, v24, v25);
    }
  }

  return result;
}

uint64_t sub_AE614()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_AE6B0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_AE738(RCSServiceSession *a1)
{
  v2 = *a1[1].IMDTelephonyServiceSession_opaque;
  v3 = *v1;
  v4 = *(*v1)[1].IMDTelephonyServiceSession_opaque;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3[1].state >> 1)
  {
    if (*a1[1].IMDTelephonyServiceSession_opaque)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_6E964(isUniquelyReferenced_nonNull_native, v26, 1, v3);
  if (!*a1[1].IMDTelephonyServiceSession_opaque)
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = (*v3[1].state >> 1) - *v3[1].IMDTelephonyServiceSession_opaque;
  type metadata accessor for RCSMessage(0);
  if (v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  a1, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *v3[1].IMDTelephonyServiceSession_opaque;
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *v3[1].IMDTelephonyServiceSession_opaque = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_AE864(uint64_t a1, RCSServiceSession *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  sub_3FBA0(a3, v29 - v9);
  v11 = sub_F0B1C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_372B0(v10, &qword_127EB0, &unk_F2B30);
  }

  else
  {
    sub_F0B0C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_F0A6C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_F087C() + 32;

      if (v17 | v15)
      {
        v30[0] = 0;
        v30[1] = 0;
        v19 = v30;
        v30[2] = v15;
        v30[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v29[1] = 7;
      v29[2] = v19;
      v29[3] = v18;
      v20 = swift_task_create();

      sub_372B0(a3, &qword_127EB0, &unk_F2B30);
      a2, v21, v22, v23, v24, v25, v26, v27;

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

  sub_372B0(a3, &qword_127EB0, &unk_F2B30);
  if (v17 | v15)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v15;
    v30[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_AEC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_AEC7C, 0, 0);
}

uint64_t sub_AEC7C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_AED64;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 7, &type metadata for Bool, &type metadata for Bool, 0, 0, &unk_F43A0, v2, &type metadata for Bool);
}

uint64_t sub_AED64()
{

  return _swift_task_switch(sub_AEE7C, 0, 0);
}

uint64_t sub_AEE7C()
{
  (*(v0 + 24))(*(v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_AF02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_388C8(&qword_128EF0, &qword_F43A8);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = *(type metadata accessor for RCSMessage(0) - 8);
  v3[15] = v5;
  v3[16] = *(v5 + 64);
  v3[17] = swift_task_alloc();
  sub_388C8(&qword_127EB0, &unk_F2B30);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_AF1A0, 0, 0);
}

uint64_t sub_AF1A0()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR___RCSMessageSender_outgoing);
  v2 = *v1[1].IMDTelephonyServiceSession_opaque;
  if (v2)
  {
    v3 = *(v0 + 120);
    v4 = *(v3 + 80);
    v5 = &v1->IMDTelephonyServiceSession_opaque[(v4 + 32) & ~v4];
    v39 = **(v0 + 80);
    v37 = (v4 + 40) & ~v4;
    v38 = *(v3 + 72);
    v6 = sub_F0B1C();
    v7 = *(v6 - 8);
    v36 = *(v7 + 56);
    v35 = (v7 + 48);
    v33 = v1;
    v34 = (v7 + 8);

    while (1)
    {
      v40 = v2;
      v18 = *(v0 + 144);
      v17 = *(v0 + 152);
      v19 = *(v0 + 136);
      v20 = *(v0 + 88);
      v36(v17, 1, 1, v6);
      sub_3C9A4(v5, v19);
      v21 = swift_allocObject();
      v21[2] = 0;
      v22 = v21 + 2;
      v21[3] = 0;
      v21[4] = v20;
      sub_3CA08(v19, v21 + v37);
      sub_3FBA0(v17, v18);
      LODWORD(v18) = (*v35)(v18, 1, v6);
      v23 = v20;
      v24 = *(v0 + 144);
      if (v18 == 1)
      {
        sub_372B0(*(v0 + 144), &qword_127EB0, &unk_F2B30);
        if (*v22)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_F0B0C();
        (*v34)(v24, v6);
        if (*v22)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v25 = sub_F0A6C();
          v26 = v27;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v25 = 0;
      v26 = 0;
LABEL_10:
      v28 = swift_allocObject();
      *(v28 + 16) = &unk_F43C8;
      *(v28 + 24) = v21;

      if (v26 | v25)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v25;
        *(v0 + 40) = v26;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 152);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v39;
      swift_task_create();

      sub_372B0(v9, &qword_127EB0, &unk_F2B30);
      v5 += v38;
      v2 = v40 - 1;
      if (v40 == 1)
      {
        v33, v10, v11, v12, v13, v14, v15, v16;
        break;
      }
    }
  }

  sub_F0AAC();
  v29 = sub_B10EC();
  v30 = swift_task_alloc();
  *(v0 + 160) = v30;
  *v30 = v0;
  v30[1] = sub_AF544;
  v31 = *(v0 + 96);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 176, v31, v29);
}

uint64_t sub_AF544()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
    v3 = sub_AF7CC;
  }

  else
  {
    v3 = sub_AF670;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_AF670(uint64_t a1)
{
  v2 = *(v1 + 176);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v6 = v2 == 2;
    v7 = *(v1 + 72);
    (*(*(v1 + 104) + 8))(*(v1 + 112), *(v1 + 96));
    *v7 = v6;

    v8 = *(v1 + 8);

    return v8();
  }

  else
  {
    v3 = sub_B10EC();
    v4 = swift_task_alloc();
    *(v1 + 160) = v4;
    *v4 = v1;
    v4[1] = sub_AF544;
    v5 = *(v1 + 96);

    return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 176, v5, v3);
  }
}

uint64_t sub_AF7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for RCSMessage(0);
  v5[5] = swift_task_alloc();
  v6 = sub_F06CC();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_AF8C4, 0, 0);
}

uint64_t sub_AF8C4()
{
  v1 = v0[3];
  v2 = [v1 message];
  v0[9] = v2;
  v3 = [v1 chat];
  v0[10] = v3;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_AF9A8;
  v5 = v0[4];

  return sub_B01F0(v2, v5, v3);
}

uint64_t sub_AF9A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_AFD18;
  }

  else
  {
    v5 = *(v3 + 72);

    v4 = sub_AFAC8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_AFAC8()
{
  *(v0 + 112) = [*(v0 + 24) rcsSession];
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_AFB7C;
  v2 = *(v0 + 96);

  return sub_85668(v2);
}

uint64_t sub_AFB7C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_AFF84;
  }

  else
  {

    v3 = sub_AFC98;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_AFC98()
{

  **(v0 + 16) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_AFD18()
{
  v33 = v0;

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);

  v6 = Logger.rcs.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v6, v3);
  sub_3C9A4(v5, v4);
  swift_errorRetain();
  v7 = sub_F06AC();
  v8 = sub_F0CEC();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  if (v9)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v14 = 136315394;
    v31 = v10;
    v32 = v29;
    v30 = v12;
    v16 = *(v13 + 128);
    v17 = *(v13 + 136);

    sub_3897C(v13);
    v18 = sub_3E850(v16, v17, &v32);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v14 + 4) = v18;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v26;
    *v15 = v26;
    _os_log_impl(&dword_0, v7, v8, "Error while sending message %s, %@", v14, 0x16u);
    sub_372B0(v15, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v29);

    (*(v11 + 8))(v31, v30);
  }

  else
  {

    sub_3897C(v13);
    (*(v11 + 8))(v10, v12);
  }

  **(v0 + 16) = 0;

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_AFF84()
{
  v33 = v0;

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);

  v6 = Logger.rcs.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v6, v3);
  sub_3C9A4(v5, v4);
  swift_errorRetain();
  v7 = sub_F06AC();
  v8 = sub_F0CEC();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  if (v9)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v14 = 136315394;
    v31 = v10;
    v32 = v29;
    v30 = v12;
    v16 = *(v13 + 128);
    v17 = *(v13 + 136);

    sub_3897C(v13);
    v18 = sub_3E850(v16, v17, &v32);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v14 + 4) = v18;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v26;
    *v15 = v26;
    _os_log_impl(&dword_0, v7, v8, "Error while sending message %s, %@", v14, 0x16u);
    sub_372B0(v15, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v29);

    (*(v11 + 8))(v31, v30);
  }

  else
  {

    sub_3897C(v13);
    (*(v11 + 8))(v10, v12);
  }

  **(v0 + 16) = 0;

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_B01F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for RCSMessage(0);
  v4[6] = swift_task_alloc();
  v5 = sub_F06CC();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_B02E0, 0, 0);
}

uint64_t sub_B02E0()
{
  v1 = [*(v0 + 16) guid];
  *(v0 + 80) = v1;
  if (v1)
  {
    v2 = *(v0 + 40);
    *(v0 + 88) = sub_F07EC();
    *(v0 + 96) = v3;
    *(v0 + 104) = [v2 rcsSession];
    *(v0 + 112) = sub_F0AEC();
    *(v0 + 120) = sub_F0ADC();
    v5 = sub_F0A6C();

    return _swift_task_switch(sub_B0454, v5, v4);
  }

  else
  {
    sub_5F980();
    swift_allocError();
    *v6 = 1;
    *(v6 + 4) = 1;
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_B0454()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  sub_55CFC(v2, v3);
  v5 = v4;
  LOBYTE(v3) = v6;

  *(v0 + 128) = v5;
  *(v0 + 188) = v3;

  return _swift_task_switch(sub_B04F0, 0, 0);
}

uint64_t sub_B04F0(uint64_t a1)
{
  v75 = v1;
  if (*(v1 + 188))
  {
    v2 = *(v1 + 96);
    v4 = *(v1 + 64);
    v3 = *(v1 + 72);
    v5 = *(v1 + 56);
    v6 = Logger.rcs.unsafeMutableAddressor();
    (*(v4 + 16))(v3, v6, v5);

    v7 = sub_F06AC();
    v8 = sub_F0CEC();
    v2, v9, v10, v11, v12, v13, v14, v15;
    if (os_log_type_enabled(v7, v8))
    {
      v23 = *(v1 + 128);
      v25 = *(v1 + 88);
      v24 = *(v1 + 96);
      v26 = *(v1 + 64);
      v73 = *(v1 + 72);
      v27 = *(v1 + 56);
      v28 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_3E850(v25, v24, &v74);
      v24, v30, v31, v32, v33, v34, v35, v36;
      *(v28 + 4) = v29;
      *(v28 + 12) = 2080;
      *(v1 + 184) = v23;
      type metadata accessor for FZErrorType(0);
      v37 = sub_F083C();
      v39 = v38;
      v40 = sub_3E850(v37, v38, &v74);
      v39, v41, v42, v43, v44, v45, v46, v47;
      *(v28 + 14) = v40;
      _os_log_impl(&dword_0, v7, v8, "Cannot find context to send message %s error %s", v28, 0x16u);
      swift_arrayDestroy();

      (*(v26 + 8))(v73, v27);
    }

    else
    {
      v69 = *(v1 + 64);
      v68 = *(v1 + 72);
      v70 = *(v1 + 56);
      *(v1 + 96), v16, v17, v18, v19, v20, v21, v22;

      (*(v69 + 8))(v68, v70);
    }

    *(v1 + 136) = [*(v1 + 40) rcsSession];
    *(v1 + 144) = sub_F0ADC();
    v72 = sub_F0A6C();

    return _swift_task_switch(sub_B08A0, v72, v71);
  }

  else
  {
    v48 = *(v1 + 128);
    v49 = *(v1 + 96);
    v50 = *(v1 + 48);
    v51 = *(v1 + 24);
    v52 = *(v1 + 32);
    v53 = *(v1 + 16);

    v49, v54, v55, v56, v57, v58, v59, v60;
    sub_3C9A4(v51, v50);
    type metadata accessor for RCSMessageSendItem(0);
    v61 = swift_allocObject();
    v62 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
    v63 = sub_388C8(&qword_127B28, &qword_F2B20);
    (*(*(v63 - 8) + 56))(v61 + v62, 1, 4, v63);
    *(v61 + 16) = v53;
    sub_3CA08(v50, v61 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage);
    *(v61 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_context) = v48;
    *(v61 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat) = v52;
    v64 = v53;
    v65 = v52;

    v66 = *(v1 + 8);

    return v66(v61);
  }
}

uint64_t sub_B08A0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 80);

  [v1 didReceiveError:5 forMessageID:v2 forceError:1];

  return _swift_task_switch(sub_B092C, 0, 0);
}

uint64_t sub_B092C()
{
  *(v0 + 152) = [*(v0 + 40) rcsSession];
  *(v0 + 160) = sub_F0ADC();
  v2 = sub_F0A6C();

  return _swift_task_switch(sub_B09D4, v2, v1);
}

uint64_t sub_B09D4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 80);

  [v1 processMessageSendFailure:v2];

  return _swift_task_switch(sub_B0A5C, 0, 0);
}

uint64_t sub_B0A5C()
{
  *(v0 + 168) = [*(v0 + 40) rcsSession];
  *(v0 + 176) = sub_F0ADC();
  v2 = sub_F0A6C();

  return _swift_task_switch(sub_B0B04, v2, v1);
}

uint64_t sub_B0B04()
{
  v1 = v0[21];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  sub_92540(v4, v2, v3, 5u, 0.0);

  return _swift_task_switch(sub_B0B98, 0, 0);
}

uint64_t sub_B0B98()
{
  sub_5F980();
  swift_allocError();
  *v1 = 0;
  *(v1 + 4) = 1;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t type metadata accessor for RCSMessageSender()
{
  result = qword_128EE8;
  if (!qword_128EE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_128EE8);
  }

  return result;
}

uint64_t sub_B0DC4(uint64_t a1)
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

  return sub_AEC58(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_B0E8C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_38B0C;

  return sub_AF02C(a1, a2, v6);
}

uint64_t sub_B0F3C(uint64_t a1)
{
  v4 = *(type metadata accessor for RCSMessage(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_38B0C;

  return sub_AF7D4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_B1034(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_38B0C;

  return sub_3EE7C(a1, v4);
}

unint64_t sub_B10EC()
{
  result = qword_128EF8;
  if (!qword_128EF8)
  {
    sub_3CB70(&qword_128EF0, &qword_F43A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_128EF8);
  }

  return result;
}

uint64_t sub_B1150(uint64_t a1)
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
  v10[1] = sub_37C54;

  return sub_AD3C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_B122C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B1244(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_128F08, &qword_F4400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B12B8()
{
  v0 = sub_F06CC();
  sub_42800(v0, qword_128F18);
  v1 = sub_3C96C(v0, qword_128F18);
  if (qword_128F50 != -1)
  {
    swift_once();
  }

  v2 = sub_3C96C(v0, static Logger.groups);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RCSSpamReportOperation.id.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_B13EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for RCSGroupOperation(0, a4, v9, v10);
  v12 = (a5 + *(result + 28));
  *v12 = a2;
  v12[1] = a3;
  return result;
}

uint64_t sub_B146C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 28));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_B1480(uint64_t a1)
{
  sub_37380(a1, v11, &unk_127FB0, &qword_F2F40);
  v3 = v12;
  if (v12)
  {
    v4 = sub_373E8(v11, v12);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_F121C();
    (*(v5 + 8))(v8, v3);
    sub_1EDC(v11);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_128F30, v9, &dword_0 + 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_372B0(a1, &unk_127FB0, &qword_F2F40);
}

uint64_t RCSSpamReportingController.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RCSGroupController.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_5EA8;
}

uint64_t sub_B1728(uint64_t a1, RCSServiceSession *a2)
{
  v14._countAndFlagsBits = a1;
  v3._rawValue = &off_11F660;
  v14._object = a2;
  v4 = sub_F112C(v3, v14);
  a2, v5, v6, v7, v8, v9, v10, v11;
  if (v4 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (v4)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_B177C(char a1)
{
  if (a1)
  {
    return 0x65766F6D6572;
  }

  else
  {
    return 6579297;
  }
}

uint64_t sub_B17A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_B181C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_B1888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_B18F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_B1968@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_B1728(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_B19A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B177C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_B19D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_F035C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_B1A48(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 32);
  if (v4 <= 1)
  {
    if (*(v1 + 32))
    {
      return sub_F032C();
    }

    v30 = 0x7247657461657263;
    goto LABEL_14;
  }

  if (v4 == 2)
  {
    v30 = 0x6F7247657661656CLL;
LABEL_14:
    v39 = v30;
    goto LABEL_16;
  }

  if (v4 == 3)
  {
    v5 = *(v1 + 16);
    sub_F0F9C(30);
    0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
    v39 = 0xD000000000000013;
    v40._countAndFlagsBits = v3;
    v40._object = v2;
    sub_F08CC(v40);
    v41._countAndFlagsBits = 8236;
    v41._object = 0xE200000000000000;
    sub_F08CC(v41);
    if (v5)
    {
      v13._countAndFlagsBits = 0x65766F6D6572;
    }

    else
    {
      v13._countAndFlagsBits = 6579297;
    }

    if (v5)
    {
      v14 = 0xE600000000000000;
    }

    else
    {
      v14 = 0xE300000000000000;
    }

    v13._object = v14;
    sub_F08CC(v13);
    v14, v15, v16, v17, v18, v19, v20, v21;
    v42._countAndFlagsBits = 8236;
    v42._object = 0xE200000000000000;
    sub_F08CC(v42);
    sub_388C8(&qword_128558, &unk_F4430);
    sub_96AA4();
    v43._countAndFlagsBits = sub_F079C();
    object = v43._object;
    sub_F08CC(v43);
    object, v23, v24, v25, v26, v27, v28, v29;
    goto LABEL_17;
  }

  sub_F0F9C(23);
  0xE000000000000000, v31, v32, v33, v34, v35, v36, v37;
  v39 = 0xD000000000000014;
LABEL_16:
  v44._countAndFlagsBits = v3;
  v44._object = v2;
  sub_F08CC(v44);
LABEL_17:
  v45._countAndFlagsBits = 41;
  v45._object = 0xE100000000000000;
  sub_F08CC(v45);
  return v39;
}

uint64_t sub_B1C50()
{
  if (*(v0 + 32) > 3u)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t sub_B1CA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return RCSOperationController.OperationID.description.getter(a1, WitnessTable);
}

uint64_t RCSGroupController.__allocating_init(delegate:operationConfiguration:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  RCSGroupController.init(delegate:operationConfiguration:)(a1, a2);
  return v4;
}

uint64_t *RCSGroupController.init(delegate:operationConfiguration:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v3;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v7 = *(a2 + 32);
  v9 = *a2;
  v8 = a2[1];
  v10 = swift_allocObject();
  *(v10 + 16) = *(v6 + 80);
  *(v10 + 24) = *(v6 + 88);
  v11 = *(a2 + 1);
  *(v10 + 32) = *a2;
  *(v10 + 48) = v11;
  *(v10 + 64) = *(a2 + 32);
  *(v10 + 72) = a1;
  v13[0] = v9;
  v13[1] = v8;
  v13[2] = &unk_F4428;
  v13[3] = v10;
  v14 = v7;
  type metadata accessor for RCSOperationController();
  swift_allocObject();
  v3[3] = RCSOperationController.init(configuration:)(v13);
  return v3;
}

uint64_t sub_B1E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[16] = a2;
  v7[17] = a3;
  v7[15] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[22] = AssociatedTypeWitness;
  v9 = sub_F0DEC();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = *(AssociatedTypeWitness - 8);
  v7[27] = swift_task_alloc();

  return _swift_task_switch(sub_5F28, 0, 0);
}

unint64_t RCSGroupController.GroupOperationError.errorDescription.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = __chkstk_darwin(a1);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0xD000000000000018;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000043;
    }

    else
    {
      return 0xD000000000000027;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v7 = *v5;
    if (EnumCaseMultiPayload == 1)
    {
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_F0F9C(52);
      v37._countAndFlagsBits = 0xD000000000000032;
      v37._object = 0x80000000000FFF50;
      sub_F08CC(v37);
      v34[1] = v7;
      sub_388C8(&qword_128558, &unk_F4430);
      sub_96AA4();
      v8 = sub_F079C();
      v10 = v9;
      v7, v9, v11, v12, v13, v14, v15, v16;
      v38._countAndFlagsBits = v8;
      v38._object = v10;
      sub_F08CC(v38);
      v24 = v10;
    }

    else
    {
      v26 = *(v5 + 1);
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_F0F9C(18);
      v36, v27, v28, v29, v30, v31, v32, v33;
      v35 = 0xD000000000000010;
      v36 = 0x80000000000FFF30;
      v39._countAndFlagsBits = v7;
      v39._object = v26;
      sub_F08CC(v39);
      v24 = v26;
    }

    v24, v17, v18, v19, v20, v21, v22, v23;
    return v35;
  }

  else
  {
    (*(v2 + 8))(v5, a1);
    return 0xD000000000000047;
  }
}

uint64_t RCSSpamReportingController.deinit()
{
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t RCSSpamReportingController.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_B2298(RCSServiceSession *a1, void *a2, uint64_t a3)
{
  v110 = a1;
  v6 = *v3;
  v107 = v3;
  v108 = v6;
  v7 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v7 - 8);
  v109 = &v95 - v8;
  v9 = sub_F0DEC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v95 - v11;
  v13 = *(a3 - 8);
  __chkstk_darwin(v14);
  v100 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v101 = &v95 - v17;
  __chkstk_darwin(v18);
  v20 = &v95 - v19;
  sub_3CB70(&qword_127B88, &qword_F3680);
  v21 = sub_F133C();
  v105 = *(v21 - 8);
  v106 = v21;
  __chkstk_darwin(v21);
  v102 = v22;
  v103 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v104 = (&v95 - v24);
  v25 = a2[3];
  v26 = a2[4];
  sub_373E8(a2, v25);
  v27 = *(v26 + 8);
  v28 = v26;
  v29 = a3;
  v111 = v27(v25, v28);
  v31 = v30;
  (*(v10 + 16))(v12, v110, v9);
  v32 = (*(v13 + 48))(v12, 1, v29);
  v110 = v31;
  if (v32 == 1)
  {
    (*(v10 + 8))(v12, v9);
    v33 = v108;
LABEL_9:
    v64 = a2[3];
    v65 = a2[4];
    sub_373E8(a2, v64);
    v66 = (*(v65 + 24))(v64, v65);
    if (v66)
    {
      v68 = v66;
    }

    else
    {
      type metadata accessor for RCSGroupController.GroupOperationError(0, *(v33 + 80), *(v33 + 88), v67);
      swift_getWitnessTable();
      v68 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    if (qword_128F10 != -1)
    {
      swift_once();
    }

    v69 = sub_F06CC();
    sub_3C96C(v69, qword_128F18);

    swift_errorRetain();
    v70 = sub_F06AC();
    v71 = sub_F0CEC();
    v31, v72, v73, v74, v75, v76, v77, v78;

    if (os_log_type_enabled(v70, v71))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v112 = v81;
      *v79 = 136315394;
      *(v79 + 4) = sub_3E850(v111, v31, &v112);
      *(v79 + 12) = 2112;
      swift_errorRetain();
      v82 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 14) = v82;
      *v80 = v82;
      _os_log_impl(&dword_0, v70, v71, "Group operation failed with ID %s error %@", v79, 0x16u);
      sub_372B0(v80, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v81);
    }

    v83 = v104;
    *v104 = v68;
    goto LABEL_19;
  }

  v34 = *(v13 + 32);
  v34(v20, v12, v29);
  v35 = v29;
  v36 = a2[3];
  v37 = a2[4];
  sub_373E8(a2, v36);
  if (((*(v37 + 16))(v36, v37) & 1) == 0)
  {
    (*(v13 + 8))(v20, v35);
    v29 = v35;
    v33 = v108;
    v31 = v110;
    goto LABEL_9;
  }

  v97 = v34;
  v98 = v20;
  v99 = v35;
  if (qword_128F10 != -1)
  {
    swift_once();
  }

  v38 = sub_F06CC();
  sub_3C96C(v38, qword_128F18);
  v39 = *(v13 + 16);
  v40 = v101;
  v29 = v99;
  v39(v101, v98, v99);
  v41 = v110;

  v42 = sub_F06AC();
  v43 = sub_F0CDC();
  v41, v44, v45, v46, v47, v48, v49, v50;
  if (os_log_type_enabled(v42, v43))
  {
    v51 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v112 = v96;
    *v51 = 136315394;
    *(v51 + 4) = sub_3E850(v111, v41, &v112);
    *(v51 + 12) = 2080;
    v39(v100, v40, v29);
    v52 = sub_F083C();
    v54 = v53;
    (*(v13 + 8))(v40, v99);
    v55 = sub_3E850(v52, v54, &v112);
    v56 = v54;
    v29 = v99;
    v56, v57, v58, v59, v60, v61, v62, v63;
    *(v51 + 14) = v55;
    _os_log_impl(&dword_0, v42, v43, "Group operation completed with ID %s output %s", v51, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v13 + 8))(v40, v29);
  }

  v33 = v108;
  v84 = v104;
  v97(v104, v98, v29);
  v83 = v84;
LABEL_19:
  v85 = v106;
  swift_storeEnumTagMultiPayload();
  v86 = v109;
  sub_F0AFC();
  v87 = sub_F0B1C();
  (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
  v88 = v107[3];
  v89 = v105;
  v90 = v103;
  (*(v105 + 16))(v103, v83, v85);
  v91 = (*(v89 + 80) + 80) & ~*(v89 + 80);
  v92 = swift_allocObject();
  *(v92 + 2) = 0;
  *(v92 + 3) = 0;
  *(v92 + 4) = *(v33 + 80);
  *(v92 + 5) = v29;
  *(v92 + 6) = *(v33 + 88);
  *(v92 + 7) = v88;
  v93 = v110;
  *(v92 + 8) = v111;
  *(v92 + 9) = v93;
  (*(v89 + 32))(&v92[v91], v90, v85);

  sub_3CC0C(0, 0, v86, &unk_F4A50, v92);

  return (*(v89 + 8))(v83, v85);
}

uint64_t sub_B2BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_12798;

  return RCSOperationController.operation<A>(id:completedWithResult:)(a5, a6, a7, v14);
}

double RCSGroupController.groupOperationFailed(with:operationID:)(uint64_t a1, uint64_t a2, RCSServiceSession *a3)
{
  v4 = v3;
  v8 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  if (qword_128F10 != -1)
  {
    swift_once();
  }

  v11 = sub_F06CC();
  sub_3C96C(v11, qword_128F18);

  swift_errorRetain();
  v12 = sub_F06AC();
  v13 = sub_F0CEC();
  a3, v14, v15, v16, v17, v18, v19, v20;

  if (os_log_type_enabled(v12, v13))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v21 = 136315394;
    *(v21 + 4) = sub_3E850(a2, a3, &v30);
    *(v21 + 12) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v24;
    *v22 = v24;
    _os_log_impl(&dword_0, v12, v13, "Group operation failed with ID %s error %@", v21, 0x16u);
    sub_372B0(v22, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v23);
  }

  sub_F0AFC();
  v25 = sub_F0B1C();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  v26 = *(v4 + 24);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v26;
  v27[5] = a2;
  v27[6] = a3;
  v27[7] = a1;

  swift_errorRetain();

  sub_3CC0C(0, 0, v10, &unk_F4448, v27);

  return result;
}

uint64_t sub_B2F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_68F4;

  return sub_E10D8(a5, a6, a7, 1);
}

uint64_t RCSGroupController.GroupCreateError.errorDescription.getter()
{
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 1)
    {
      return 0xD000000000000022;
    }

    v1 = *v0;
  }

  else
  {
    v1 = v0[2];
  }

  return v1;
}

RCSServiceSession **sub_B3094(uint64_t a1)
{
  v4 = *v1;
  v5 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v137 - v7;
  v9 = *(v4 + 88);
  state = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v145 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v141 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v148 = (&v137 - v13);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for RCSGroupController.GroupOperationError(0, state, v9, v15);
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return state;
  }

  v16 = Strong;
  v138 = v8;
  v139 = v6;
  v140 = v5;
  v144 = [objc_allocWithZone(CTLazuliGroupChatParticipantList) init];
  v17 = (*(v9 + 48))(a1, state, v9);
  v149 = state;
  v150 = v18;
  v19 = *(v9 + 64);
  v143 = a1;
  v146 = v16;
  v20 = v19(a1, state, v9);
  v28 = v20;
  v29 = _swiftEmptyArrayStorage;
  v153 = _swiftEmptyArrayStorage;
  v30 = *v20[1].IMDTelephonyServiceSession_opaque;
  v147 = v9;
  if (v30)
  {
    v31 = 0;
    state = v20[2].state;
    while (v31 < *v28[1].IMDTelephonyServiceSession_opaque)
    {
      v32 = *state;
      v152[0] = *(state - 1);
      v152[1] = v32;

      sub_B39EC(v152, v150, v149, v9, &v151);
      if (v2)
      {
        v29, v33, v34, v35, v36, v37, v38, v39;
        v32, v78, v79, v80, v81, v82, v83, v84;
        v150, v85, v86, v87, v88, v89, v90, v91;
        swift_unknownObjectRelease();

        v28, v92, v93, v94, v95, v96, v97, v98;
        return state;
      }

      v32, v33, v34, v35, v36, v37, v38, v39;
      if (v151)
      {
        sub_F09DC();
        if (*(&dword_10 + (v153 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v153 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_F0A1C();
        }

        v20 = sub_F0A3C();
        v29 = v153;
        v9 = v147;
      }

      ++v31;
      state += 16;
      v6 = v148;
      if (v30 == v31)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = v148;
LABEL_13:
    v150, v21, v22, v23, v24, v25, v26, v27;
    v28, v40, v41, v42, v43, v44, v45, v46;
    sub_37310(0, &qword_1286A0, CTLazuliGroupChatParticipant_ptr);
    v47 = sub_F09EC();
    v29, v48, v49, v50, v51, v52, v53, v54;
    v17 = v144;
    [v144 setMemberList:v47];

    v55 = [v17 memberList];
    v56 = sub_F09FC();

    v20 = v56;
    if (!(v56 >> 62))
    {
      v64 = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_15;
    }
  }

  v136 = v20;
  v64 = sub_F10DC();
  v20 = v136;
LABEL_15:
  v65 = v145;
  v66 = v149;
  v20, v57, v58, v59, v60, v61, v62, v63;
  if (v64)
  {
    (*(v9 + 88))(v143, v66, v9);
    if (v67)
    {
      v68 = v67;
      v69 = [objc_allocWithZone(CTLazuliGroupChatSubject) init];
      v70 = sub_F07BC();
      v68, v71, v72, v73, v74, v75, v76, v77;
      [v69 setDisplayString:v70];
    }

    else
    {
      v69 = 0;
    }

    v121 = [objc_allocWithZone(CTLazuliGroupChatInformation) init];
    v122 = v17;
    [v121 setParticipants:v17];
    [v121 setSubject:v69];
    if (qword_128F88 != -1)
    {
      swift_once();
    }

    v123 = v140;
    v124 = sub_3C96C(v140, qword_129D98);
    v125 = v138;
    v126 = v139;
    (v139[2])(v138, v124, v123);
    sub_F044C();
    (v126[1])(v125, v123);
    if (v152[0])
    {
      v127 = 0;
    }

    else
    {
      v127 = (*(v9 + 96))(v143, v66, v9);
    }

    [v121 setSecure:v127 & 1];
    v128 = v122;
    if (qword_128F10 != -1)
    {
      swift_once();
    }

    v129 = sub_F06CC();
    sub_3C96C(v129, qword_128F18);
    state = v121;
    v130 = sub_F06AC();
    v131 = sub_F0CCC();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 67109120;
      *(v132 + 4) = [state secure];

      _os_log_impl(&dword_0, v130, v131, "Creating group with encryption: %{BOOL}d", v132, 8u);
    }

    else
    {

      v128 = v69;
      v69 = state;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_128F50 != -1)
    {
      swift_once();
    }

    v99 = sub_F06CC();
    sub_3C96C(v99, static Logger.groups);
    v100 = *(v65 + 16);
    v101 = AssociatedTypeWitness;
    v100(v6, v143, AssociatedTypeWitness);
    v102 = sub_F06AC();
    v103 = sub_F0CFC();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      LODWORD(v150) = v103;
      v105 = v104;
      v148 = swift_slowAlloc();
      v152[0] = v148;
      *v105 = 136315138;
      v100(v141, v6, v101);
      v106 = sub_F083C();
      v107 = v6;
      v108 = v106;
      v110 = v109;
      (*(v65 + 8))(v107, v101);
      v111 = sub_3E850(v108, v110, v152);
      v112 = v110;
      v9 = v147;
      v112, v113, v114, v115, v116, v117, v118, v119;
      *(v105 + 4) = v111;
      _os_log_impl(&dword_0, v102, v150, "Refusing to create group chat information for empty group %s", v105, 0xCu);
      state = v148;
      sub_1EDC(v148);
    }

    else
    {

      v133 = *(v65 + 8);
      state = (v65 + 8);
      v133(v6, v101);
    }

    type metadata accessor for RCSGroupController.GroupCreateError(0, v149, v9, v120);
    swift_getWitnessTable();
    swift_allocError();
    *v134 = 0u;
    *(v134 + 16) = 0u;
    *(v134 + 32) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  return state;
}

void sub_B39EC(uint64_t *a1@<X0>, RCSServiceSession *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v55 = a5;
  v8 = *a1;
  v9 = a1[1];
  v10 = sub_F07BC();
  IsPhoneNumber = IMStringIsPhoneNumber();

  if (IsPhoneNumber)
  {
    v12 = sub_53E04(_swiftEmptyArrayStorage);
    v13 = sub_E7DC8(_swiftEmptyArrayStorage);
    v14 = sub_E5BB4(v12);
    v13, v15, v16, v17, v18, v19, v20, v21;
    v12, v22, v23, v24, v25, v26, v27, v28;
    v53[0] = 7103860;
    v53[1] = 0xE300000000000000;
    v53[2] = v8;
    v53[3] = v9;
    v53[5] = 0;
    v53[6] = 0;
    v53[4] = v14;
    v54 = 0;
    v50[0] = 7103860;
    v50[1] = 0xE300000000000000;
    v50[2] = v8;
    v50[3] = v9;
    v50[5] = 0;
    v50[6] = 0;
    v50[4] = v14;
    v51 = 0;
    sub_38910(v53, v49);
    sub_3CAB8(v50);

    sub_E9B14();
    a2, v29, v30, v31, v32, v33, v34, v35;
    sub_3CAB8(v53);
    RCSHandle.rawValue.getter();
    v37 = v36;
    sub_3CAB8(v52);
    v38 = [objc_allocWithZone(CTLazuliGroupChatParticipant) init];
    v39 = sub_F07BC();
    v37, v40, v41, v42, v43, v44, v45, v46;
    [v38 setMember:v39];

    *v55 = v38;
  }

  else
  {
    sub_F0F9C(62);
    v56._object = 0x80000000001000F0;
    v56._countAndFlagsBits = 0xD00000000000003CLL;
    sub_F08CC(v56);
    v57._countAndFlagsBits = v8;
    v57._object = v9;
    sub_F08CC(v57);
    type metadata accessor for RCSGroupController.GroupCreateError(0, a3, a4, v47);
    swift_getWitnessTable();
    swift_allocError();
    *v48 = v8;
    *(v48 + 8) = v9;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0xE000000000000000;
    *(v48 + 32) = 0;
    swift_willThrow();
  }
}

uint64_t sub_B3C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *v3;
  v4[9] = *(*v3 + 88);
  v4[10] = *(v5 + 80);
  v4[11] = swift_getAssociatedTypeWitness();
  v6 = sub_F0DEC();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_69E8, 0, 0);
}

uint64_t sub_B3D70(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *v2;
  v3[13] = *(*v2 + 88);
  v3[14] = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  v5 = sub_F0DEC();
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v3[17] = *(v6 + 64);
  v3[18] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[19] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v3[20] = v8;
  v3[21] = *(v8 + 64);
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_6E90, 0, 0);
}

uint64_t sub_B3F18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v9 = *a3;
  v6[7] = *(*a3 + 88);
  v6[8] = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[9] = AssociatedTypeWitness;
  v13 = type metadata accessor for RCSGroupOperation(0, AssociatedTypeWitness, v11, v12);
  v6[10] = v13;
  v6[11] = *(v13 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = *(AssociatedTypeWitness - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v14 = swift_task_alloc();
  v6[16] = v14;
  v15 = swift_task_alloc();
  v6[17] = v15;
  *v15 = v6;
  v15[1] = sub_7544;

  return sub_B3C4C(v14, a4, a5);
}

uint64_t RCSGroupController.resolveGroupIdentity(for:subscriptionContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[19] = *v3;
  return _swift_task_switch(sub_7DFC, 0, 0);
}

uint64_t RCSGroupController.groupCreationCompleted(with:operationResult:subscriptionContext:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v11 = AssociatedTypeWitness;
    v7 = sub_37474(&v10);
    (*(*(AssociatedTypeWitness - 8) + 16))(v7, a3, AssociatedTypeWitness);
    sub_B1480(&v10);
  }

  *v10.IMDTelephonyServiceSession_opaque = a1;
  v8 = sub_37310(0, &qword_128FC0, CTLazuliGroupChatInformation_ptr);
  return sub_B2298(&v10, a2, v8);
}

uint64_t RCSGroupController.renameGroup(chat:to:subscriptionContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v6 = *v4;
  v5[34] = *(*v4 + 88);
  v5[35] = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  v7 = sub_F0DEC();
  v5[36] = v7;
  v8 = *(v7 - 8);
  v5[37] = v8;
  v5[38] = *(v8 + 64);
  v5[39] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[40] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v5[41] = v10;
  v5[42] = *(v10 + 64);
  v5[43] = swift_task_alloc();

  return _swift_task_switch(sub_8BA8, 0, 0);
}

uint64_t sub_B43E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v20;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a1;
  v8[3] = a2;
  v11 = *a3;
  v8[8] = *(*a3 + 88);
  v8[9] = *(v11 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v15 = type metadata accessor for RCSGroupOperation(0, AssociatedTypeWitness, v13, v14);
  v8[11] = v15;
  v8[12] = *(v15 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(AssociatedTypeWitness - 8);
  v8[15] = swift_task_alloc();
  v16 = swift_task_alloc();
  v8[16] = v16;
  v17 = swift_task_alloc();
  v8[17] = v17;
  *v17 = v8;
  v17[1] = sub_9708;

  return sub_B3C4C(v16, a4, a5);
}

uint64_t RCSGroupController.groupRenameCompleted(with:operationResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  *v4.IMDTelephonyServiceSession_opaque = a1;
  *v4.state = a2;
  return sub_B2298(&v4, a3, &type metadata for String);
}

uint64_t RCSGroupController.leaveGroup(chat:subscriptionContext:)(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = *v2;
  v3[32] = *(*v2 + 88);
  v3[33] = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  v5 = sub_F0DEC();
  v3[34] = v5;
  v6 = *(v5 - 8);
  v3[35] = v6;
  v3[36] = *(v6 + 64);
  v3[37] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[38] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v3[39] = v8;
  v3[40] = *(v8 + 64);
  v3[41] = swift_task_alloc();

  return _swift_task_switch(sub_9B3C, 0, 0);
}

uint64_t sub_B479C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a2;
  v10 = *a3;
  v7[6] = *(*a3 + 88);
  v7[7] = *(v10 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[8] = AssociatedTypeWitness;
  v14 = type metadata accessor for RCSGroupOperation(0, AssociatedTypeWitness, v12, v13);
  v7[9] = v14;
  v7[10] = *(v14 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = *(AssociatedTypeWitness - 8);
  v7[13] = swift_task_alloc();
  v15 = swift_task_alloc();
  v7[14] = v15;
  v16 = swift_task_alloc();
  v7[15] = v16;
  *v16 = v7;
  v16[1] = sub_A654;

  return sub_B3C4C(v15, a4, a5);
}

uint64_t RCSGroupController.groupExitCompleted(with:)(void *a1)
{
  *v4.IMDTelephonyServiceSession_opaque = &type metadata for ()[8];
  v2 = sub_388C8(qword_128FC8, &qword_F44A8);
  return sub_B2298(&v4, a1, v2);
}

RCSServiceSession *sub_B49C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v17 = type metadata accessor for RCSGroupController.GroupOperationError(0, *(v6 + 80), *(v6 + 88), v7);
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v17;
  }

  (*(*(v6 + 88) + 32))(a2, *(v6 + 80));
  v9 = v8;
  v17 = sub_E88C4(_swiftEmptyArrayStorage);
  v18 = *(a1 + 16);
  if (!v18)
  {
LABEL_17:
    v9, v10, v11, v12, v13, v14, v15, v16;
    swift_unknownObjectRelease();
    return v17;
  }

  v19 = (a1 + 40);
  while (1)
  {
    v38 = *(v19 - 1);
    v37 = *v19;
    swift_bridgeObjectRetain_n();
    v39._countAndFlagsBits = v38;
    v39._object = v37;
    RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v92, v39, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
    if (v47)
    {
      v37, v40, v41, v42, v43, v44, v45, v46;
      v9, v77, v78, v79, v80, v81, v82, v83;
      swift_unknownObjectRelease();
      v17, v84, v85, v86, v87, v88, v89, v90;
      return v17;
    }

    sub_E9B14();
    v9, v48, v49, v50, v51, v52, v53, v54;
    sub_3CAB8(&v92);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v17;
    v56 = sub_E759C(v93);
    v64 = *v17[1].IMDTelephonyServiceSession_opaque;
    v65 = (v57 & 1) == 0;
    v66 = __OFADD__(v64, v65);
    v67 = v64 + v65;
    if (v66)
    {
      break;
    }

    v68 = v57;
    if (*v17[1].state < v67)
    {
      sub_BA910(v67, isUniquelyReferenced_nonNull_native);
      v56 = sub_E759C(v93);
      if ((v68 & 1) != (v57 & 1))
      {
        goto LABEL_23;
      }

LABEL_12:
      if (v68)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v76 = v56;
    sub_BCAF4();
    v56 = v76;
    if (v68)
    {
LABEL_4:
      v20 = v56;
      sub_3CAB8(v93);
      v17 = v95;
      v21 = (*v95[3].state + 16 * v20);
      v22 = v21[1];
      *v21 = v38;
      v21[1] = v37;
      v37, v23, v24, v25, v26, v27, v28, v29;
      v22, v30, v31, v32, v33, v34, v35, v36;
      goto LABEL_5;
    }

LABEL_13:
    v17 = v95;
    *&v95[4].IMDTelephonyServiceSession_opaque[8 * (v56 >> 6)] |= 1 << v56;
    v69 = (*v17[3].IMDTelephonyServiceSession_opaque + (v56 << 6));
    v70 = *&v94[9];
    v71 = *v94;
    v72 = v93[1];
    *v69 = v93[0];
    v69[1] = v72;
    v69[2] = v71;
    *(v69 + 41) = v70;
    v73 = (*v17[3].state + 16 * v56);
    *v73 = v38;
    v73[1] = v37;
    v37, v57, v58, v59, v60, v61, v62, v63;
    v74 = *v17[1].IMDTelephonyServiceSession_opaque;
    v66 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v66)
    {
      goto LABEL_22;
    }

    *v17[1].IMDTelephonyServiceSession_opaque = v75;
LABEL_5:
    v19 += 2;
    if (!--v18)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_F126C();
  __break(1u);
  return result;
}

void sub_B4D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 16))
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = (a2 + 32);

      do
      {
        v22 = v9[1];
        v43[0] = *v9;
        v43[1] = v22;
        v44[0] = v9[2];
        *(v44 + 9) = *(v9 + 41);
        sub_38910(v43, v41);
        v23 = sub_E759C(v43);
        v25 = v24;
        sub_3CAB8(v43);
        if (v25)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = a1;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_BCAF4();
            a1 = v45;
          }

          v10 = (*(a1 + 48) + (v23 << 6));
          v11 = *(v10 + 41);
          v12 = v10[2];
          v13 = *v10;
          v41[1] = v10[1];
          v42[0] = v12;
          v41[0] = v13;
          *(v42 + 9) = v11;
          sub_3CAB8(v41);
          *(*(a1 + 56) + 16 * v23 + 8), v14, v15, v16, v17, v18, v19, v20;
          sub_ED014(v23, a1);
        }

        v9 += 4;
        --v8;
      }

      while (v8);
    }

    else
    {
    }

    type metadata accessor for RCSGroupController.GroupOperationError(0, a4, a5, v21);
    swift_getWitnessTable();
    swift_allocError();
    v28 = v27;
    v29 = *(a1 + 16);
    if (v29)
    {
      v30 = sub_9D6B8(*(a1 + 16), 0);
      v31 = sub_BDF68();
      v32 = *&v41[0];
      v40 = v31;

      sub_66138(v32);
      if (v40 == v29)
      {
LABEL_15:
        *v28 = v30;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        a1, v33, v34, v35, v36, v37, v38, v39;
        return;
      }

      __break(1u);
    }

    v30 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }
}

uint64_t sub_B4F28@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  sub_3928(a2, (a9 + 8));
  *(a9 + 6) = a3;
  *(a9 + 7) = a4;
  *(a9 + 8) = a5;
  v19 = type metadata accessor for RCSGroupController.ParticipantModificationContext(0, a10, a11, v18);
  v20 = *(v19 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(&a9[v20], a6, AssociatedTypeWitness);
  v23 = &a9[*(v19 + 52)];
  *v23 = a7;
  *(v23 + 1) = a8;
  return result;
}

uint64_t sub_B5018(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 248) = a6;
  *(v7 + 256) = v6;
  *(v7 + 232) = a4;
  *(v7 + 240) = a5;
  *(v7 + 497) = a3;
  *(v7 + 216) = a1;
  *(v7 + 224) = a2;
  v8 = *v6;
  v9 = *(*v6 + 80);
  *(v7 + 264) = v9;
  v10 = *(v8 + 88);
  *(v7 + 272) = v10;
  v11 = type metadata accessor for RCSGroupController.OperationID(0, v9, v10, a4);
  *(v7 + 280) = v11;
  *(v7 + 288) = *(v11 - 8);
  *(v7 + 296) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 304) = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  *(v7 + 312) = v13;
  *(v7 + 320) = *(v13 + 64);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v14 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  *(v7 + 344) = v14;
  *(v7 + 352) = *(v14 - 8);
  *(v7 + 360) = swift_task_alloc();

  return _swift_task_switch(sub_AA74, 0, 0);
}

uint64_t sub_B5210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v16;
  v8[18] = v17;
  v8[15] = v14;
  v8[16] = v15;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[19] = AssociatedTypeWitness;
  v8[20] = *(AssociatedTypeWitness - 8);
  v8[21] = swift_task_alloc();
  v11 = type metadata accessor for RCSGroupController.ParticipantModificationContext(0, v16, v17, v10);
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();

  return _swift_task_switch(sub_BAE8, 0, 0);
}

RCSServiceSession *RCSGroupController.ParticipantModificationResult.init(modified:notModified:)(void *a1, id a2)
{
  if (a1)
  {
    v2 = [a1 memberList];
    sub_37310(0, &qword_1286A0, CTLazuliGroupChatParticipant_ptr);
    v3 = sub_F09FC();

    v11 = v3;
    if (v3 >> 62)
    {
      goto LABEL_51;
    }

    v12 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    while (1)
    {
      if (v12)
      {
        v13 = v11;
        v145 = _swiftEmptyArrayStorage;
        result = sub_6EB68(0, v12 & ~(v12 >> 63), 0);
        if (v12 < 0)
        {
          __break(1u);
LABEL_57:
          __break(1u);
          return result;
        }

        v15 = 0;
        v16 = v145;
        v17 = v13;
        v141 = v13 & 0xC000000000000001;
        v18 = v13;
        v19 = v12;
        do
        {
          if (v141)
          {
            v20 = sub_F0FCC();
          }

          else
          {
            v20 = *&v17[2].IMDTelephonyServiceSession_opaque[8 * v15];
          }

          v21 = v20;
          v22 = [v21 member];
          v23 = sub_F07EC();
          v25 = v24;

          v145 = v16;
          v33 = *v16[1].IMDTelephonyServiceSession_opaque;
          v32 = *v16[1].state;
          if (v33 >= v32 >> 1)
          {
            sub_6EB68((v32 > 1), v33 + 1, 1);
            v16 = v145;
          }

          ++v15;
          *v16[1].IMDTelephonyServiceSession_opaque = v33 + 1;
          v34 = &v16[v33];
          *v34[2].IMDTelephonyServiceSession_opaque = v23;
          *v34[2].state = v25;
          v17 = v18;
        }

        while (v19 != v15);
        v18, v18, v26, v27, v28, v29, v30, v31;
        v42 = *v16[1].IMDTelephonyServiceSession_opaque;
        if (v42)
        {
LABEL_14:
          v145 = _swiftEmptyArrayStorage;
          v11 = sub_B6864(0, v42, 0);
          v43 = 0;
          v44 = v145;
          state = v16[2].state;
          while (1)
          {
            if (v43 >= *v16[1].IMDTelephonyServiceSession_opaque)
            {
              __break(1u);
              goto LABEL_50;
            }

            v46 = *(state - 1);
            v47 = *state;

            v48._countAndFlagsBits = v46;
            v48._object = v47;
            RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v143, v48, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
            if (v56)
            {
              break;
            }

            v145 = v44;
            v58 = *v44[1].IMDTelephonyServiceSession_opaque;
            v57 = *v44[1].state;
            if (v58 >= v57 >> 1)
            {
              v11 = sub_B6864((v57 > 1), v58 + 1, 1);
              v44 = v145;
            }

            ++v43;
            *v44[1].IMDTelephonyServiceSession_opaque = v58 + 1;
            v59 = &v44[4 * v58];
            scheme = v143.scheme;
            id = v143.id;
            v62 = *&v143.attributes._rawValue;
            *(v59 + 73) = *(&v143.alternateHandle + 1);
            v59[3] = id;
            v59[4] = v62;
            v59[2] = scheme;
            state += 2;
            if (v42 == v43)
            {
              v16, v49, v50, v51, v52, v53, v54, v55;
              goto LABEL_26;
            }
          }

          v16, v64, v65, v66, v67, v68, v69, v70;
          v71 = a2;
LABEL_47:

          return v44;
        }
      }

      else
      {
        v11, v4, v5, v6, v7, v8, v9, v10;
        v16 = _swiftEmptyArrayStorage;
        v42 = _swiftEmptyArrayStorage[2];
        if (v42)
        {
          goto LABEL_14;
        }
      }

      v16, v35, v36, v37, v38, v39, v40, v41;
      v44 = _swiftEmptyArrayStorage;
LABEL_26:
      v63 = a2;
      if (!a2)
      {

        return v44;
      }

LABEL_27:
      v72 = [v63 memberList];
      sub_37310(0, &qword_1286A0, CTLazuliGroupChatParticipant_ptr);
      v73 = sub_F09FC();

      if (v73 >> 62)
      {
        v81 = sub_F10DC();
        if (!v81)
        {
LABEL_53:
          v73, v74, v75, v76, v77, v78, v79, v80;
          v83 = _swiftEmptyArrayStorage;
          v102 = _swiftEmptyArrayStorage[2];
          if (!v102)
          {
            goto LABEL_54;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v81 = *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8));
        if (!v81)
        {
          goto LABEL_53;
        }
      }

      v145 = _swiftEmptyArrayStorage;
      result = sub_6EB68(0, v81 & ~(v81 >> 63), 0);
      if (v81 < 0)
      {
        goto LABEL_57;
      }

      v138 = v44;
      v82 = 0;
      v83 = v145;
      v84 = v73;
      v142 = v73 & 0xC000000000000001;
      v85 = v73;
      v86 = v81;
      do
      {
        if (v142)
        {
          v87 = sub_F0FCC();
        }

        else
        {
          v87 = *(v84 + 8 * v82 + 32);
        }

        v88 = v87;
        v89 = [v88 member];
        v90 = sub_F07EC();
        v92 = v91;

        v145 = v83;
        v100 = *v83[1].IMDTelephonyServiceSession_opaque;
        v99 = *v83[1].state;
        if (v100 >= v99 >> 1)
        {
          sub_6EB68((v99 > 1), v100 + 1, 1);
          v83 = v145;
        }

        ++v82;
        *v83[1].IMDTelephonyServiceSession_opaque = v100 + 1;
        v101 = &v83[v100];
        *v101[2].IMDTelephonyServiceSession_opaque = v90;
        *v101[2].state = v92;
        v84 = v85;
      }

      while (v86 != v82);
      v85, v85, v93, v94, v95, v96, v97, v98;
      v44 = v138;
      v102 = *v83[1].IMDTelephonyServiceSession_opaque;
      if (!v102)
      {
LABEL_54:

        v83, v131, v132, v133, v134, v135, v136, v137;
        return v44;
      }

LABEL_38:
      v145 = _swiftEmptyArrayStorage;
      v11 = sub_B6864(0, v102, 0);
      v103 = 0;
      v104 = v145;
      v105 = v83[2].state;
      while (v103 < *v83[1].IMDTelephonyServiceSession_opaque)
      {
        v106 = *(v105 - 1);
        v107 = *v105;

        v108._countAndFlagsBits = v106;
        v108._object = v107;
        RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v144, v108, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
        if (v109)
        {

          v44, v116, v117, v118, v119, v120, v121, v122;
          v83, v123, v124, v125, v126, v127, v128, v129;
          v71 = a1;
          goto LABEL_47;
        }

        v145 = v104;
        v111 = *v104[1].IMDTelephonyServiceSession_opaque;
        v110 = *v104[1].state;
        if (v111 >= v110 >> 1)
        {
          v11 = sub_B6864((v110 > 1), v111 + 1, 1);
          v104 = v145;
        }

        ++v103;
        *v104[1].IMDTelephonyServiceSession_opaque = v111 + 1;
        v112 = &v104[4 * v111];
        v113 = v144.scheme;
        v114 = v144.id;
        v115 = *&v144.attributes._rawValue;
        *(v112 + 73) = *(&v144.alternateHandle + 1);
        v112[3] = v114;
        v112[4] = v115;
        v112[2] = v113;
        v105 += 2;
        if (v102 == v103)
        {
          goto LABEL_54;
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      v130 = v11;
      v12 = sub_F10DC();
      v11 = v130;
    }
  }

  v63 = a2;
  if (a2)
  {
    v44 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  return 0;
}

uint64_t sub_B59A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(a1 + 24);
  v2[5] = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[6] = AssociatedTypeWitness;
  v2[7] = *(AssociatedTypeWitness - 8);
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for RCSGroupOperation(0, AssociatedTypeWitness, v4, v5);
  v2[9] = v6;
  v2[10] = *(v6 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_BEC0, 0, 0);
}

uint64_t RCSGroupController.addParticipants(_:to:subscriptionContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_C0F4, 0, 0);
}

uint64_t sub_B5B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v8 = type metadata accessor for RCSGroupController.ParticipantModificationContext(0, a2, a3, v7);
  *v6 = v3;
  v6[1] = sub_C378;

  return sub_B59A8(v8);
}

uint64_t sub_B5BF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(a1 + 24);
  v2[5] = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[6] = AssociatedTypeWitness;
  v2[7] = *(AssociatedTypeWitness - 8);
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for RCSGroupOperation(0, AssociatedTypeWitness, v4, v5);
  v2[9] = v6;
  v2[10] = *(v6 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_C470, 0, 0);
}

uint64_t RCSGroupController.removeParticipants(_:from:subscriptionContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return _swift_task_switch(sub_C5C4, 0, 0);
}

uint64_t sub_B5D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v8 = type metadata accessor for RCSGroupController.ParticipantModificationContext(0, a2, a3, v7);
  *v6 = v3;
  v6[1] = sub_1279C;

  return sub_B5BF8(v8);
}

double variable initialization expression of RCSGroup.icon@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_B5E98(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return _swift_task_switch(sub_CE3C, v1, 0);
}

uint64_t sub_B5EB8(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return _swift_task_switch(sub_D434, v1, 0);
}

uint64_t sub_B5ED8(uint64_t a1)
{
  sub_37380(a1, v7, &qword_128B88, &qword_F3F30);
  if (v8)
  {
    return *&v7[0];
  }

  v2 = sub_37310(0, &qword_128FC0, CTLazuliGroupChatInformation_ptr);
  if (swift_dynamicCast())
  {
    v1 = *&v6[0];
    sub_1EDC(v7);
  }

  else
  {
    sub_54F88(v7, v6);
    sub_B777C();
    v1 = swift_allocError();
    v4 = v3;
    sub_3FE38(v6, v3);
    *(v4 + 32) = v2;
    *(v4 + 56) = 1;
    sub_1EDC(v6);
  }

  return v1;
}

uint64_t sub_B5FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_37380(a1, v9, &qword_128B88, &qword_F3F30);
  if (v10)
  {
    *a2 = *&v9[0];
    *(a2 + 40) = 1;
  }

  else
  {
    v4 = sub_388C8(&qword_129378, &qword_F49E0);
    if (swift_dynamicCast())
    {
      sub_3928(v8, a2);
      *(a2 + 40) = 0;
      return sub_1EDC(v9);
    }

    else
    {
      sub_54F88(v9, v8);
      sub_B777C();
      v5 = swift_allocError();
      v7 = v6;
      sub_3FE38(v8, v6);
      *(v7 + 32) = v4;
      *(v7 + 56) = 1;
      result = sub_1EDC(v8);
      *a2 = v5;
      *(a2 + 40) = 1;
    }
  }

  return result;
}

uint64_t sub_B60E8(uint64_t a1)
{
  sub_B5ED8(a1);
  if (v1)
  {
    sub_388C8(qword_1293A0, &unk_F4A80);
    return sub_F0A7C();
  }

  else
  {
    sub_388C8(qword_1293A0, &unk_F4A80);
    return sub_F0A8C();
  }
}

uint64_t sub_B6164(uint64_t a1)
{
  sub_37380(a1, v3, &qword_128B88, &qword_F3F30);
  if (v4)
  {
    v5[0] = *&v3[0];
    v6 = 1;
  }

  else
  {
    sub_3FE38(v3, v5);
    v6 = 0;
    sub_1EDC(v3);
  }

  sub_37380(v5, v3, &qword_128B88, &qword_F3F30);
  if (v4)
  {
    *&v2 = *&v3[0];
    sub_388C8(&qword_129398, &unk_F4A38);
    sub_F0A7C();
  }

  else
  {
    sub_54F88(v3, &v2);
    sub_388C8(&qword_129398, &unk_F4A38);
    sub_F0A8C();
  }

  return sub_372B0(v5, &qword_128B88, &qword_F3F30);
}

uint64_t sub_B626C(uint64_t a1)
{
  sub_B5FD8(a1, v5);
  sub_37380(v5, v3, &qword_127EC0, &qword_F2C90);
  if (v4)
  {
    v2[0] = *&v3[0];
    sub_388C8(&qword_129388, &qword_F49E8);
    sub_F0A7C();
  }

  else
  {
    sub_3928(v3, v2);
    sub_388C8(&qword_129388, &qword_F49E8);
    sub_F0A8C();
  }

  return sub_372B0(v5, &qword_127EC0, &qword_F2C90);
}

uint64_t variable initialization expression of RCSOperationController.operationQueues()
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
  return sub_F038C();
}

uint64_t sub_B64CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[54] = a3;
  v4[55] = v3;
  v4[52] = a1;
  v4[53] = a2;
  return _swift_task_switch(sub_DDC0, v3, 0);
}

uint64_t sub_B64F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[55] = a4;
  v5[56] = v4;
  v5[53] = a2;
  v5[54] = a3;
  v5[52] = a1;
  return _swift_task_switch(sub_EC04, v4, 0);
}

uint64_t sub_B6518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[55] = a4;
  v5[56] = v4;
  v5[53] = a2;
  v5[54] = a3;
  v5[52] = a1;
  return _swift_task_switch(sub_F99C, v4, 0);
}

double variable initialization expression of RCSMessage.groupIdentity@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *sub_B65B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_B65E0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_B667C(RCSServiceSession *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_B8234(a1);
  a1, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_B66BC(uint64_t a1)
{
  v2 = sub_12734(&qword_129538, type metadata accessor for FileAttributeKey, &unk_F5080);
  v3 = sub_12734(&qword_129540, type metadata accessor for FileAttributeKey, &unk_F4E7C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_B6778(uint64_t a1)
{
  v2 = sub_12734(&qword_129528, type metadata accessor for Key, &unk_F503C);
  v3 = sub_12734(&qword_129530, type metadata accessor for Key, &unk_F4F90);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

char *sub_B6864(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_B68BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_B689C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_B69C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_B68BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_388C8(&qword_129390, &unk_F52C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_B69C8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_388C8(&qword_1284C8, &unk_F3640);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_388C8(&qword_1284D0, &qword_F49F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_B6B34(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_B6BAC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_B6CE8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_B6F24(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_126E4(319, &qword_129150, &type metadata for String, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_B7350();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_B6FE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = 16;
  if (v5 > 0x10)
  {
    v6 = v5;
  }

  v7 = 252 - (2u >> (8 * v6));
  if (v6 >= 4)
  {
    v7 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v12 = ((~(-1 << v9) + a2 - v7) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v12 < 2)
    {
LABEL_27:
      v14 = *(a1 + v6);
      if (v7 <= (v14 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v14);
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_27;
  }

LABEL_16:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + v7 + 1;
}

void sub_B715C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  v8 = 252 - (2u >> (8 * v7));
  if (v7 >= 4)
  {
    v8 = 252;
  }

  v9 = v7 + 1;
  if (v8 >= a3)
  {
    v10 = 0;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v7] = -a2;
        return;
      }

      *&a1[v9] = 0;
    }

    else if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v10 = 1;
  if (v9 <= 3)
  {
    v11 = ((~(-1 << (8 * v9)) + a3 - v8) >> (8 * v9)) + 1;
    v12 = HIWORD(v11);
    if (v11 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v11 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      v10 = 4;
    }

    else
    {
      v10 = v14;
    }
  }

  if (v8 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v15 = ~v8 + a2;
  if (v9 >= 4)
  {
    bzero(a1, v9);
    *a1 = v15;
    v16 = 1;
    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v16 = (v15 >> (8 * v9)) + 1;
  if (v7 == -1)
  {
LABEL_37:
    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v17 = v15 & ~(-1 << (8 * v9));
  bzero(a1, v9);
  if (v9 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_37;
  }

  if (v9 == 2)
  {
    *a1 = v17;
    if (v10 > 1)
    {
LABEL_41:
      if (v10 == 2)
      {
        *&a1[v9] = v16;
      }

      else
      {
        *&a1[v9] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v10 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v10)
  {
    a1[v9] = v16;
  }
}

void *sub_B7350()
{
  result = qword_129158[0];
  if (!qword_129158[0])
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, qword_129158);
  }

  return result;
}

uint64_t sub_B7380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_B73BC(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_B73D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_B73EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_B7434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_B747C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_B74B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_B74EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_B7534(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B7598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for RCSGroupController.OperationType(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = sub_F035C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_B7660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_B76A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_B76F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_B7740(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_B777C()
{
  result = qword_129380;
  if (!qword_129380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129380);
  }

  return result;
}

void sub_B7820(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_B7CE0();
    if (v2 <= 0x3F)
    {
      sub_126E4(319, &qword_129430, &type metadata for RCSHandle, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_B7928(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((v10 + ((v9 + 72) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = a2 - v8 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if ((v7 & 0x80000000) != 0)
    {
      v20 = *(v6 + 48);

      return v20((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

void sub_B7AD8(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((*(v7 + 64) + ((v9 + 72) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((*(v7 + 64) + ((v9 + 72) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if ((v8 & 0x80000000) != 0)
      {
        v19 = *(v7 + 56);

        v19((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = (a2 - 1);
        }

        *a1 = v18;
      }

      return;
    }
  }

  if (((*(v7 + 64) + ((v9 + 72) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((*(v7 + 64) + ((v9 + 72) & ~v9) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

unint64_t sub_B7CE0()
{
  result = qword_129428;
  if (!qword_129428)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_129428);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCSMessage.SubscriptionInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RCSMessage.Typing(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_B8234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_B82C0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_F0C7C();
  if (!v19)
  {
    return sub_F0A2C();
  }

  v41 = v19;
  v45 = sub_F107C();
  v32 = sub_F108C();
  sub_F101C(v41);
  result = sub_F0C6C();
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
      v22 = sub_F0C9C();
      v23 = v13;
      v24 = v13;
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
      sub_F106C();
      result = sub_F0C8C();
      ++v21;
      v13 = v24;
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

uint64_t RCSParticipantChange.imdChangeContexts(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = (*(v5 + 24))(v6, v5);
  v8 = *(v2 + *(a2 + 44));
  v30 = v8;
  v25 = v6;
  v26 = v5;
  v27 = v2;
  v28 = v7;
  v29 = a1;
  v23[2] = v6;
  v23[3] = v5;
  v23[4] = sub_127D4;
  v23[5] = &v24;

  v9 = sub_388C8(&qword_129548, &qword_F50D0);
  v11 = type metadata accessor for RCSParticipantChange.IMDChangeContext(0, v6, v5, v10);
  v12 = sub_B8DE8();
  v14 = sub_B82C0(sub_12808, v23, v9, v11, &type metadata for Never, v12, &protocol witness table for Never, v13);
  v8, v15, v16, v17, v18, v19, v20, v21;
  return v14;
}

void sub_B8808(void *a1, RCSServiceSession *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v125 = a6;
  v16 = a9;
  v17 = type metadata accessor for RCSParticipantChange(0, a8, a9, a4);
  v18 = v17[13];
  v126 = a5;
  v19 = a5 + v18;
  v20 = *v19;
  v21 = *(v19 + 8);
  if (v21)
  {
    v22 = v20 == a1 && v21 == a2;
    if (v22 || (sub_F122C() & 1) != 0)
    {
      v23 = [objc_allocWithZone(IMDChatStatusChangeContext) init];
      v24 = sub_F07BC();
      [v23 setMessageID:v24];

      if (*(v126 + v17[10]))
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      [v23 setChatStatus:v25];
      (*(a9 + 16))(v9, a9);
      if (v26)
      {
        v27 = v26;
        v28 = sub_F07BC();
        v27, v29, v30, v31, v32, v33, v34, v35;
      }

      else
      {
        v28 = 0;
      }

      [v23 setChatIdentifier:v28];

      [v23 setChatStyle:v125];
      [v23 setAccount:a7];
      return;
    }
  }

  v123 = a2;
  v124 = a1;
  v121 = v21;
  v120 = *(v126 + v17[10]);
  v122 = a4;
  v119 = v20;
  if (!static RCSParticipantChange.ChangeType.__derived_enum_equals(_:_:)(v120, 1))
  {
    v50 = v123;

    v37 = a7;
    LOBYTE(a7) = v125;
    v51 = v126;
    goto LABEL_33;
  }

  v36 = (*(a9 + 32))(v9, a9);
  v37 = a7;
  v38 = a3;
  if (!v36)
  {
    v50 = v123;

    LOBYTE(a7) = v125;
    v51 = v126;
    goto LABEL_33;
  }

  v39 = v123;
  v127[0] = v124;
  v127[1] = v123;
  __chkstk_darwin(v36);
  v113[2] = v127;
  v41 = v40;
  v42 = sub_400F0(sub_1285C, v113, v40);
  a7 = v125;
  if (v42)
  {
    v41, v43, v44, v45, v46, v47, v48, v49;

    v50 = v39;
    v51 = v126;
LABEL_33:
    v86 = v120;
    v87 = [objc_allocWithZone(IMDChatMemberStatusChangeContext) init];
    v88 = v87;
    if (v86)
    {
      v89 = 3;
    }

    else
    {
      v89 = 2;
    }

    [v87 setStatus:{v89, v114}];
    v90 = sub_F07BC();
    v50, v91, v92, v93, v94, v95, v96, v97;
    [v88 setHandleID:v90];

    v98 = *(v51 + v17[12] + 8);
    if (v98)
    {
      v99 = sub_F07BC();
    }

    else
    {
      v99 = 0;
    }

    [v88 setFromHandleID:v99];

    (*(v16 + 16))(v9, v16);
    if (v100)
    {
      v101 = v100;
      v102 = sub_F07BC();
      v101, v103, v104, v105, v106, v107, v108, v109;
    }

    else
    {
      v102 = 0;
    }

    [v88 setChatIdentifier:v102];

    [v88 setStyle:a7];
    if (v121)
    {
      v110 = sub_F07BC();
    }

    else
    {
      v110 = 0;
    }

    [v88 setDestinationCallerID:v110];

    v111 = sub_F07BC();
    [v88 setMessageID:v111];

    if (v98)
    {
      v112 = 0;
    }

    else
    {
      v112 = *(v51 + v17[14]) ^ 1;
    }

    [v88 setUnattributed:v112 & 1];
    [v88 setAccount:v37];
    return;
  }

  v52 = *v41[1].IMDTelephonyServiceSession_opaque;
  v53 = v41;
  v114 = v37;
  v115 = v52;
  if (!v52)
  {
LABEL_29:
    v53, v43, v44, v45, v46, v47, v48, v49;
    v50 = v123;

    v37 = v114;
    v51 = v126;
    goto LABEL_33;
  }

  v54 = 0;
  state = v41[2].state;
  v117 = a9;
  v118 = v9;
  v116 = v38;
  while (v54 < *v53[1].IMDTelephonyServiceSession_opaque)
  {
    v56 = v17;
    v57 = a7;
    a7 = *(state - 1);
    v58 = *state;

    v59 = sub_F07BC();
    v60 = [v59 im_stripCategoryLabel];

    v61 = sub_F07EC();
    v63 = v62;

    if (v61 == v124 && v63 == v123)
    {
      v53, v64, v124, v123, v65, v66, v67, v68;
      v85 = v63;
LABEL_32:
      v85, v78, v79, v80, v81, v82, v83, v84;
      v124 = a7;
      v50 = v58;
      v37 = v114;
      v51 = v126;
      LOBYTE(a7) = v57;
      v17 = v56;
      v16 = v117;
      v9 = v118;
      goto LABEL_33;
    }

    v70 = sub_F122C();
    v63, v71, v72, v73, v74, v75, v76, v77;
    if (v70)
    {
      v85 = v53;
      goto LABEL_32;
    }

    ++v54;
    v58, v78, v79, v80, v81, v82, v83, v84;
    state += 2;
    a7 = v57;
    v17 = v56;
    v16 = v117;
    v9 = v118;
    if (v115 == v54)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
}

unint64_t sub_B8DE8()
{
  result = qword_129550[0];
  if (!qword_129550[0])
  {
    sub_3CB70(&qword_129548, &qword_F50D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_129550);
  }

  return result;
}

uint64_t sub_B8E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_B8E94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_B8EDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

Swift::Int RCSParticipantChange.ChangeType.hashValue.getter(char a1)
{
  sub_F12FC();
  sub_F130C(a1 & 1);
  return sub_F132C();
}

Swift::Int sub_B9250(uint64_t a1)
{
  sub_F12FC();
  RCSParticipantChange.ChangeType.hash(into:)(v3, *v1);
  return sub_F132C();
}

uint64_t RCSParticipantChange.fromHandle.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t RCSParticipantChange.toID.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

void RCSParticipantChange.init(chat:toIdentifier:changedParticipants:changedBy:changeType:fromMe:)(uint64_t a1@<X0>, uint64_t a2@<X1>, RCSServiceSession *a3@<X2>, void *a4@<X3>, void *a5@<X4>, char a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v11 = v10;
  v143 = a7;
  v145 = a5;
  v150 = a3;
  v142 = a2;
  sub_F034C();
  v18 = type metadata accessor for RCSParticipantChange(0, a8, a10, v17);
  v19 = *(v18 + 36);
  v147 = *(a8 - 8);
  v20 = *(v147 + 16);
  v144 = v19;
  v148 = a1;
  v151 = a8;
  v20(a9 + v19, a1, a8);
  v152 = v18;
  v21 = *(v18 + 40);
  v146 = a9;
  *(a9 + v21) = a6 & 1;
  v149 = a4;
  v22 = [a4 memberList];
  sub_BC3F4();
  v23 = sub_F09FC();

  if (v23 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)); i; i = sub_F10DC())
  {
    v32 = v23;
    v161 = _swiftEmptyArrayStorage;
    sub_6EB68(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      goto LABEL_47;
    }

    v33 = 0;
    v23 = v161;
    v34 = v32;
    v157 = v32;
    v158 = (v32 & 0xC000000000000001);
    v156 = v32 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v158)
      {
        v36 = v23;
        v37 = sub_F0FCC();
      }

      else
      {
        if (v33 >= *(v156 + 16))
        {
          goto LABEL_17;
        }

        v36 = v23;
        v37 = *&v34[2].IMDTelephonyServiceSession_opaque[8 * v33];
      }

      v38 = v37;
      v39 = [v37 member];
      v40 = sub_F07EC();
      v42 = v41;

      v43._countAndFlagsBits = v40;
      v43._object = v42;
      RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v159, v43, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
      if (v44)
      {
        v56 = *(v147 + 8);
        v57 = v151;
        v56(v148, v151);

        v150, v58, v59, v60, v61, v62, v63, v64;
        v157, v65, v66, v67, v68, v69, v70, v71;

        v72 = 0;
        v73 = v146;
        goto LABEL_38;
      }

      v155 = 0;

      countAndFlagsBits = v159.id._countAndFlagsBits;
      object = v159.id._object;

      sub_3CAB8(&v159);
      v23 = v36;
      v161 = v36;
      v54 = *(v36 + 16);
      v53 = *(v36 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_6EB68((v53 > 1), v54 + 1, 1);
        v23 = v161;
      }

      *(v23 + 16) = v54 + 1;
      v55 = (v23 + 16 * v54);
      *v55[2].IMDTelephonyServiceSession_opaque = countAndFlagsBits;
      *v55[2].state = object;
      ++v33;
      v11 = v155;
      v34 = v157;
      if (v35 == i)
      {
        v157, v157, v47, v48, v49, v50, v51, v52;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v155 = v11;
  v23, v24, v25, v26, v27, v28, v29, v30;
  v23 = _swiftEmptyArrayStorage;
LABEL_20:
  v81 = sub_E7CB4(_swiftEmptyArrayStorage);
  v154 = *(v23 + 16);
  if (!v154)
  {
LABEL_35:
    v23, v74, v75, v76, v77, v78, v79, v80;
    v73 = v146;
    *(v146 + *(v152 + 44)) = v81;
    v114 = v145;
    if (v145)
    {
      v115 = [v145 member];
      v116 = sub_F07EC();
      v118 = v117;

      v119._countAndFlagsBits = v116;
      v119._object = v118;
      RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v160, v119, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
      v57 = v151;
      if (v120)
      {

        v150, v121, v122, v123, v124, v125, v126, v127;
        v56 = *(v147 + 8);
        v56(v148, v57);
        v72 = 1;
LABEL_38:
        v128 = sub_F035C();
        (*(*(v128 - 8) + 8))(v73, v128);
        v56(v73 + v144, v57);
        if (v72)
        {
          *(v73 + *(v152 + 44)), v129, v130, v131, v132, v133, v134, v135;
        }

        return;
      }

      (*(v147 + 8))(v148, v57);
      v136 = v160.id._countAndFlagsBits;
      v137 = v160.id._object;

      sub_3CAB8(&v160);
    }

    else
    {

      (*(v147 + 8))(v148, v151);
      v136 = 0;
      v137 = 0;
    }

    v138 = v150;
    v139 = v152;
    v140 = (v73 + *(v152 + 48));
    *v140 = v136;
    v140[1] = v137;
    v141 = (v73 + *(v139 + 52));
    *v141 = v142;
    v141[1] = v138;
    *(v73 + *(v139 + 56)) = v143 & 1;
    return;
  }

  v82 = 0;
  v83 = (v23 + 40);
  v153 = v23;
  while (v82 < *(v23 + 16))
  {
    v156 = v83;
    v157 = v82;
    v93 = *(v83 - 1);
    v94 = *v83;
    v95 = sub_F035C();
    v158 = &v142;
    v96 = *(v95 - 8);
    __chkstk_darwin(v95);
    v98 = &v142 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);

    sub_F034C();
    v99 = sub_F032C();
    v101 = v100;
    (*(v96 + 8))(v98, v95);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v161 = v81;
    v103 = sub_51FEC(v93, v94);
    v104 = *v81[1].IMDTelephonyServiceSession_opaque;
    v105 = (v74 & 1) == 0;
    v106 = v104 + v105;
    if (__OFADD__(v104, v105))
    {
      goto LABEL_45;
    }

    v107 = v74;
    if (*v81[1].state < v106)
    {
      sub_BA3A8(v106, isUniquelyReferenced_nonNull_native);
      v108 = sub_51FEC(v93, v94);
      if ((v107 & 1) != (v74 & 1))
      {
        goto LABEL_48;
      }

      v103 = v108;
      goto LABEL_29;
    }

    v23 = v153;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_BC80C();
LABEL_29:
      v23 = v153;
    }

    v81 = v161;
    if (v107)
    {
      v84 = (*v161[3].state + 16 * v103);
      v85 = v84[1];
      *v84 = v99;
      v84[1] = v101;
      v94, v74, v75, v76, v77, v78, v79, v80;
      v85, v86, v87, v88, v89, v90, v91, v92;
    }

    else
    {
      *&v161[4].IMDTelephonyServiceSession_opaque[8 * (v103 >> 6)] |= 1 << v103;
      v109 = (*v81[3].IMDTelephonyServiceSession_opaque + 16 * v103);
      *v109 = v93;
      v109[1] = v94;
      v110 = (*v81[3].state + 16 * v103);
      *v110 = v99;
      v110[1] = v101;
      v111 = *v81[1].IMDTelephonyServiceSession_opaque;
      v112 = __OFADD__(v111, 1);
      v113 = v111 + 1;
      if (v112)
      {
        goto LABEL_46;
      }

      *v81[1].IMDTelephonyServiceSession_opaque = v113;
    }

    v82 = &v157->IMDTelephonyServiceSession_opaque[1];
    v83 = (v156 + 16);
    if (v154 == &v157->IMDTelephonyServiceSession_opaque[1])
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  sub_F126C();
  __break(1u);
}

uint64_t RCSParticipantChange.init(chat:type:participants:fromHandle:toID:fromMe:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, RCSServiceSession *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v76 = a8;
  v74 = a6;
  v75 = a7;
  v71 = a4;
  v72 = a5;
  sub_F034C();
  v16 = type metadata accessor for RCSParticipantChange(0, a10, a11, v15);
  v17 = *(v16 + 36);
  v67 = *(a10 - 8);
  v18 = *(v67 + 16);
  v69 = a10;
  v70 = a1;
  v18(a9 + v17, a1, a10);
  v68 = v16;
  v19 = *(v16 + 40);
  v73 = a9;
  *(a9 + v19) = a2 & 1;
  v27 = sub_E7CB4(_swiftEmptyArrayStorage);
  v78 = *a3[1].IMDTelephonyServiceSession_opaque;
  if (!v78)
  {
LABEL_17:
    a3, v20, v21, v22, v23, v24, v25, v26;
    result = (*(v67 + 8))(v70, v69);
    v62 = v68;
    v63 = v73;
    *(v73 + v68[11]) = v27;
    v64 = (v63 + v62[12]);
    *v64 = v71;
    v64[1] = v72;
    v65 = (v63 + v62[13]);
    *v65 = v74;
    v65[1] = v75;
    *(v63 + v62[14]) = v76 & 1;
    return result;
  }

  v28 = 0;
  state = a3[2].state;
  v77 = a3;
  while (v28 < *a3[1].IMDTelephonyServiceSession_opaque)
  {
    v79 = v28;
    v40 = *(state - 1);
    v39 = *state;
    v41 = sub_F035C();
    v80 = &v66;
    v42 = *(v41 - 8);
    __chkstk_darwin(v41);
    v44 = &v66 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);

    sub_F034C();
    v45 = sub_F032C();
    v47 = v46;
    (*(v42 + 8))(v44, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v27;
    v49 = v40;
    v50 = sub_51FEC(v40, v39);
    v51 = v27[2];
    v52 = (v20 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      goto LABEL_19;
    }

    v54 = v20;
    if (v27[3] >= v53)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v81;
        if (v20)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_BC80C();
        v27 = v81;
        if (v54)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_BA3A8(v53, isUniquelyReferenced_nonNull_native);
      v55 = sub_51FEC(v49, v39);
      if ((v54 & 1) != (v20 & 1))
      {
        goto LABEL_21;
      }

      v50 = v55;
      v27 = v81;
      if (v54)
      {
LABEL_3:
        v30 = (v27[7] + 16 * v50);
        v31 = v30[1];
        *v30 = v45;
        v30[1] = v47;
        v39, v20, v21, v22, v23, v24, v25, v26;
        v31, v32, v33, v34, v35, v36, v37, v38;
        goto LABEL_4;
      }
    }

    v27[(v50 >> 6) + 8] |= 1 << v50;
    v56 = (v27[6] + 16 * v50);
    *v56 = v49;
    v56[1] = v39;
    v57 = (v27[7] + 16 * v50);
    *v57 = v45;
    v57[1] = v47;
    v58 = v27[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_20;
    }

    v27[2] = v60;
LABEL_4:
    v28 = v79 + 1;
    state += 2;
    a3 = v77;
    if (v78 == v79 + 1)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_F126C();
  __break(1u);
  return result;
}

uint64_t RCSParticipantChange.init(chat:type:participants:fromHandle:toID:fromMe:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_F034C();
  v20 = type metadata accessor for RCSParticipantChange(0, a10, a11, v19);
  result = (*(*(a10 - 8) + 32))(a9 + v20[9], a1, a10);
  *(a9 + v20[10]) = a2 & 1;
  *(a9 + v20[11]) = a3;
  v22 = (a9 + v20[12]);
  *v22 = a4;
  v22[1] = a5;
  v23 = (a9 + v20[13]);
  *v23 = a6;
  v23[1] = a7;
  *(a9 + v20[14]) = a8;
  return result;
}

void RCSParticipantChange.debugDescription.getter(uint64_t a1)
{
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_F0F9C(73);
  v60[5] = 0;
  v60[6] = 0xE000000000000000;
  v61._object = 0x8000000000100130;
  v61._countAndFlagsBits = 0xD000000000000016;
  sub_F08CC(v61);
  sub_F035C();
  sub_5F9D4();
  v62._countAndFlagsBits = sub_F11EC();
  object = v62._object;
  sub_F08CC(v62);
  object, v4, v5, v6, v7, v8, v9, v10;
  v63._countAndFlagsBits = 0x3D6570797420;
  v63._object = 0xE600000000000000;
  sub_F08CC(v63);
  LOBYTE(v60[0]) = *(v1 + *(a1 + 40));
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  type metadata accessor for RCSParticipantChange.ChangeType(0, v11, v12, v13);
  swift_getWitnessTable();
  sub_F120C();
  v64._countAndFlagsBits = 0x3D7461686320;
  v64._object = 0xE600000000000000;
  sub_F08CC(v64);
  v14._countAndFlagsBits = (*(v12 + 8))(v11, v12);
  if (v14._object)
  {
    v15 = v14._object;
  }

  else
  {
    v14._countAndFlagsBits = 0x296C6C756E28;
    v15 = 0xE600000000000000;
  }

  v14._object = v15;
  sub_F08CC(v14);
  v15, v16, v17, v18, v19, v20, v21, v22;
  v65._countAndFlagsBits = 0x6963697472617020;
  v65._object = 0xEF5B3D73746E6170;
  sub_F08CC(v65);
  v23 = *(v1 + *(a1 + 44));
  v24 = *(v23 + 16);
  if (v24 && (v25 = sub_9D6B8(v24, 0), v26 = sub_374E0(v60, v25 + 4, v24, v23), v27 = v60[0], , sub_66138(v27), v26 != v24))
  {
    __break(1u);
  }

  else
  {
    v28 = sub_F0A0C();
    v30 = v29;

    v66._countAndFlagsBits = v28;
    v66._object = v30;
    sub_F08CC(v66);
    v30, v31, v32, v33, v34, v35, v36, v37;
    v67._countAndFlagsBits = 0x3D6D6F7266205DLL;
    v67._object = 0xE700000000000000;
    sub_F08CC(v67);
    v38 = (v1 + *(a1 + 48));
    v39 = v38[1];
    if (v39)
    {
      v40 = *v38;
    }

    else
    {
      v40 = 0x296C6C756E28;
    }

    if (v39)
    {
      v41 = v38[1];
    }

    else
    {
      v41 = 0xE600000000000000;
    }

    v68._countAndFlagsBits = v40;
    v68._object = v41;
    sub_F08CC(v68);
    v41, v42, v43, v44, v45, v46, v47, v48;
    v69._countAndFlagsBits = 1030714400;
    v69._object = 0xE400000000000000;
    sub_F08CC(v69);
    v49 = (v1 + *(a1 + 52));
    v50 = v49[1];
    if (v50)
    {
      v51 = *v49;
    }

    else
    {
      v51 = 0x296C6C756E28;
    }

    if (v50)
    {
      v52 = v49[1];
    }

    else
    {
      v52 = 0xE600000000000000;
    }

    v70._countAndFlagsBits = v51;
    v70._object = v52;
    sub_F08CC(v70);
    v52, v53, v54, v55, v56, v57, v58, v59;
    v71._countAndFlagsBits = 62;
    v71._object = 0xE100000000000000;
    sub_F08CC(v71);
  }
}

uint64_t RCSParticipantChange.ChangeType.description.getter(char a1)
{
  if (a1)
  {
    return 0x65766F6D6552;
  }

  else
  {
    return 6579265;
  }
}

void *sub_BA324(uint64_t a1, uint64_t a2)
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

  sub_388C8(&qword_129390, &unk_F52C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

void sub_BA3A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_388C8(&qword_129710, &qword_F52D0);
  v38 = v4;
  v6 = sub_F10FC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_F12FC();
      sub_F089C();
      v28 = sub_F132C();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_BA668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_388C8(&qword_1296F0, &qword_F5B90);
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

void sub_BA910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_388C8(&qword_129718, &qword_F52D8);
  v6 = sub_F10FC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v71 = v2;
    v8 = 0;
    v72 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v75 = v5;
    v76 = v6 + 64;
    v73 = v12;
    v74 = v6;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v18 = (v11 - 1) & v11;
LABEL_15:
      v21 = v17 | (v8 << 6);
      v82 = v18;
      if (v4)
      {
        v22 = *(v5 + 56);
        v23 = *(v5 + 48) + (v21 << 6);
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        v86 = *(v23 + 24);
        v83 = *(v23 + 40);
        v84 = *(v23 + 56);
        v85 = *(v23 + 48);
        v27 = (v22 + 16 * v21);
        v80 = v27[1];
        v81 = *v27;
      }

      else
      {
        v28 = (*(v5 + 48) + (v21 << 6));
        v29 = *v28;
        v30 = v28[1];
        v31 = v28[2];
        *&v91[25] = *(v28 + 41);
        *v91 = v30;
        *&v91[16] = v31;
        v90 = v29;
        v32 = (*(v5 + 56) + 16 * v21);
        v33 = v32[1];
        v81 = *v32;
        v84 = v91[40];
        v83 = *(&v31 + 1);
        v85 = *&v91[32];
        v25 = *(&v29 + 1);
        v26 = v30;
        v86 = *&v91[8];
        v24 = v29;
        sub_38910(&v90, v88);
        v80 = v33;
      }

      sub_F12FC();
      v77 = v25;
      v78 = v24;
      sub_F089C();
      v79 = v26;
      sub_F089C();
      v34 = 1 << *(*(&v86 + 1) + 32);
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v36 = v35 & *(*(&v86 + 1) + 64);
      v37 = (v34 + 63) >> 6;

      v38 = 0;
      v39 = 0;
      while (v36)
      {
        v87 = v38;
LABEL_30:
        v41 = __clz(__rbit64(v36)) | (v39 << 6);
        v42 = *(*(*(&v86 + 1) + 48) + v41);
        v43 = *(*(*(&v86 + 1) + 56) + 16 * v41 + 8);
        v36 &= v36 - 1;
        v88[2] = *&v91[16];
        v88[3] = *&v91[32];
        v89 = v92;
        v88[0] = v90;
        v88[1] = *v91;
        v44 = 0xE200000000000000;
        if (v42 != 3)
        {
          v44 = 0xE900000000000074;
        }

        if (v42 == 2)
        {
          v44 = 0xEA00000000006563;
        }

        v45 = 0xED0000747865746ELL;
        if (v42)
        {
          v45 = 0xE400000000000000;
        }

        if (v42 <= 1)
        {
          v46 = v45;
        }

        else
        {
          v46 = v44;
        }

        sub_F089C();
        v46, v47, v48, v49, v50, v51, v52, v53;
        if (v43)
        {
          sub_F131C(1u);
          sub_F089C();
          v43, v54, v55, v56, v57, v58, v59, v60;
        }

        else
        {
          sub_F131C(0);
        }

        v38 = sub_F132C() ^ v87;
      }

      while (1)
      {
        v40 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
          goto LABEL_62;
        }

        if (v40 >= v37)
        {
          break;
        }

        v36 = *(*(&v86 + 1) + 64 + 8 * v40);
        ++v39;
        if (v36)
        {
          v87 = v38;
          v39 = v40;
          goto LABEL_30;
        }
      }

      sub_F130C(v38);
      if (v85)
      {
        sub_F131C(1u);
        v61 = v83;
        sub_F089C();
        v7 = v74;
        v5 = v75;
      }

      else
      {
        sub_F131C(0);
        v7 = v74;
        v5 = v75;
        v61 = v83;
      }

      sub_F130C(v84);
      v62 = sub_F132C();
      v63 = -1 << *(v7 + 32);
      v64 = v62 & ~v63;
      v65 = v64 >> 6;
      if (((-1 << v64) & ~*(v76 + 8 * (v64 >> 6))) == 0)
      {
        v66 = 0;
        v67 = (63 - v63) >> 6;
        v14 = v86;
        while (++v65 != v67 || (v66 & 1) == 0)
        {
          v68 = v65 == v67;
          if (v65 == v67)
          {
            v65 = 0;
          }

          v66 |= v68;
          v69 = *(v76 + 8 * v65);
          if (v69 != -1)
          {
            v13 = __clz(__rbit64(~v69)) + (v65 << 6);
            goto LABEL_7;
          }
        }

LABEL_63:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v64) & ~*(v76 + 8 * (v64 >> 6)))) | v64 & 0x7FFFFFFFFFFFFFC0;
      v14 = v86;
LABEL_7:
      *(v76 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = *(v7 + 48) + (v13 << 6);
      *v15 = v78;
      *(v15 + 8) = v77;
      *(v15 + 16) = v79;
      *(v15 + 24) = v14;
      *(v15 + 40) = v61;
      *(v15 + 48) = v85;
      *(v15 + 56) = v84;
      v16 = (*(v7 + 56) + 16 * v13);
      *v16 = v81;
      v16[1] = v80;
      ++*(v7 + 16);
      v12 = v73;
      v11 = v82;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      if (v8 >= v12)
      {
        break;
      }

      v20 = v72[v8];
      ++v19;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v18 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v71;
      goto LABEL_60;
    }

    v70 = 1 << *(v5 + 32);
    v3 = v71;
    if (v70 >= 64)
    {
      bzero(v72, ((v70 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v72 = -1 << v70;
    }

    *(v5 + 16) = 0;
  }

LABEL_60:
  *v3 = v7;
}

void sub_BAEA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_388C8(&qword_129720, qword_F52E0);
  v6 = sub_F10FC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v2;
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
      v28 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v31 = v28 | (v8 << 6);
      v32 = *(*(v5 + 48) + v31);
      v39 = *(*(v5 + 56) + 16 * v31);
      if ((v4 & 1) == 0)
      {
      }

      sub_F12FC();
      if (v32 <= 1)
      {
        if (v32)
        {
          v15 = 0xE400000000000000;
        }

        else
        {
          v15 = 0xED0000747865746ELL;
        }
      }

      else if (v32 == 2)
      {
        v15 = 0xEA00000000006563;
      }

      else if (v32 == 3)
      {
        v15 = 0xE200000000000000;
      }

      else
      {
        v15 = 0xE900000000000074;
      }

      sub_F089C();
      v15, v16, v17, v18, v19, v20, v21, v22;
      v23 = sub_F132C();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v24) >> 6;
        while (++v26 != v34 || (v33 & 1) == 0)
        {
          v35 = v26 == v34;
          if (v26 == v34)
          {
            v26 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v26);
          if (v36 != -1)
          {
            v27 = __clz(__rbit64(~v36)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_44:
        __break(1u);
        return;
      }

      v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      *(*(v7 + 48) + v27) = v32;
      *(*(v7 + 56) + 16 * v27) = v39;
      ++*(v7 + 16);
    }

    v29 = v8;
    while (1)
    {
      v8 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v8 >= v13)
      {
        break;
      }

      v30 = v9[v8];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v12 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if (v4)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v3 = v38;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_BB1C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_388C8(&qword_129708, &qword_F52B8);
  v32 = v4;
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
      v20 = (*(v5 + 56) + 16 * (v17 | (v8 << 6)));
      v21 = *v20;
      v22 = v20[1];
      if ((v32 & 1) == 0)
      {
      }

      sub_F12FC();
      sub_F089C();
      v23 = sub_F132C();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v21;
      v16[1] = v22;
      ++*(v7 + 16);
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_BB46C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_388C8(&qword_129700, &qword_F52B0);
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

void sub_BB710(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_388C8(&qword_1296F8, &unk_F52A0);
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