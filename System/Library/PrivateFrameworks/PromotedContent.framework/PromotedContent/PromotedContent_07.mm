uint64_t AdRequestManager.__deallocating_deinit()
{
  AdRequestManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t AdRequestManager.fetchAds(with:placementTypes:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  v5 = swift_task_alloc();
  *(v2 + 48) = v5;
  *v5 = v2;
  v5[1] = sub_1C1B45784;

  return sub_1C1B45AF8(a1, a2, 0);
}

uint64_t sub_1C1B45784(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C1B458B8, 0, 0);
  }
}

uint64_t sub_1C1B458B8()
{
  v1 = *(v0 + 56);
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1C1B95518();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = *(v0 + 40);
    v6 = *(v0 + 56) + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C6907490](v4, *(v0 + 56));
      }

      else
      {
        v7 = *(v6 + 8 * v4);
      }

      v8 = v7;
      ++v4;
      v9 = *(v0 + 40);
      _s15PromotedContentAAC11contentData7contextABSo09APContentD0C_AA17PromotableContext_pSgtcfC_0(v8, v5);
      sub_1C1B954F8();
      sub_1C1B95528();
      sub_1C1B95538();
      sub_1C1B95508();
    }

    while (v2 != v4);

    v10 = v18;
    if (v18 >> 62)
    {
      while (1)
      {
        v11 = sub_1C1B953A8();
        if (!v11)
        {
          break;
        }

LABEL_11:
        v12 = 0;
        v1 = v10 & 0xC000000000000001;
        while (1)
        {
          if (v1)
          {
            v13 = MEMORY[0x1C6907490](v12, v10);
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          v16 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
          swift_beginAccess();
          [*&v14[v16] delivered];

          ++v12;
          if (v15 == v11)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v2 = sub_1C1B953A8();
        if (v2)
        {
          goto LABEL_3;
        }

LABEL_22:

        v10 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_24:
    v17 = *(v0 + 8);

    return v17(v10);
  }

  return result;
}

uint64_t sub_1C1B45AF8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 80) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C1B45B20, 0, 0);
}

uint64_t sub_1C1B45B20()
{
  v1 = *(v0 + 80);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  v7 = *(v0 + 24);
  swift_weakInit();
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_1C1AC1F08(&qword_1EBF09470, qword_1C1B98EF8);
  *v4 = v0;
  v4[1] = sub_1C1B45C70;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000003ALL, 0x80000001C1BAB340, sub_1C1B47E00, v3, v5);
}

uint64_t sub_1C1B45C70()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1C1B45DB0;
  }

  else
  {

    v2 = sub_1C1B45D94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C1B45DB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AdRequestManager.fetchAdBatch(of:with:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C1B45E40, 0, 0);
}

uint64_t sub_1C1B45E40()
{
  v1 = v0[10];
  sub_1C1AC1F08(&qword_1EBF090A0, &qword_1C1B98F60);
  inited = swift_initStackObject();
  v0[13] = inited;
  *(inited + 16) = xmmword_1C1B98E60;
  *(inited + 32) = v1;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1C1B45F14;
  v4 = v0[11];

  return sub_1C1B45AF8(v4, inited, 1);
}

uint64_t sub_1C1B45F14(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_1C1B46270;
  }

  else
  {
    swift_setDeallocating();
    v4 = sub_1C1B46030;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C1B46030()
{
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1C1B95518();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = *(v0 + 88);
    v6 = *(v0 + 120) + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C6907490](v4, *(v0 + 120));
      }

      else
      {
        v7 = *(v6 + 8 * v4);
      }

      v8 = v7;
      ++v4;
      v9 = *(v0 + 88);
      _s15PromotedContentAAC11contentData7contextABSo09APContentD0C_AA17PromotableContext_pSgtcfC_0(v8, v5);
      sub_1C1B954F8();
      sub_1C1B95528();
      sub_1C1B95538();
      sub_1C1B95508();
    }

    while (v2 != v4);

    v10 = v18;
    if (v18 >> 62)
    {
      while (1)
      {
        v11 = sub_1C1B953A8();
        if (!v11)
        {
          break;
        }

LABEL_11:
        v12 = 0;
        v1 = v10 & 0xC000000000000001;
        while (1)
        {
          if (v1)
          {
            v13 = MEMORY[0x1C6907490](v12, v10);
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          v16 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
          swift_beginAccess();
          [*&v14[v16] delivered];

          ++v12;
          if (v15 == v11)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v2 = sub_1C1B953A8();
        if (v2)
        {
          goto LABEL_3;
        }

LABEL_22:

        v10 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_24:
    v17 = *(v0 + 8);

    return v17(v10);
  }

  return result;
}

uint64_t sub_1C1B46270()
{
  swift_setDeallocating();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AdRequestManager.fetchRawAdBatch(with:placementType:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C1B462F8, 0, 0);
}

uint64_t sub_1C1B462F8()
{
  v1 = v0[8];
  sub_1C1AC1F08(&qword_1EBF090A0, &qword_1C1B98F60);
  inited = swift_initStackObject();
  v0[10] = inited;
  *(inited + 16) = xmmword_1C1B98E60;
  *(inited + 32) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1C1B463D0;
  v4 = v0[7];

  return sub_1C1B45AF8(v4, inited, 1);
}

uint64_t sub_1C1B463D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C1B46528, 0, 0);
  }

  else
  {
    swift_setDeallocating();
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1C1B46528()
{
  swift_setDeallocating();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C1B4658C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1B47F28;

  return AdRequestManager.fetchAds(with:placementTypes:)(a1, a2);
}

uint64_t sub_1C1B46634(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1B013DC;

  return AdRequestManager.fetchAdBatch(of:with:)(a1, a2);
}

uint64_t sub_1C1B466DC(uint64_t a1, uint64_t a2)
{
  v3[7] = a1;
  v3[8] = a2;
  v3[9] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1C1B46704, 0, 0);
}

uint64_t sub_1C1B46704()
{
  v1 = v0[8];
  sub_1C1AC1F08(&qword_1EBF090A0, &qword_1C1B98F60);
  inited = swift_initStackObject();
  v0[10] = inited;
  *(inited + 16) = xmmword_1C1B98E60;
  *(inited + 32) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1C1B467DC;
  v4 = v0[7];

  return sub_1C1B45AF8(v4, inited, 1);
}

uint64_t sub_1C1B467DC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C1B47F24, 0, 0);
  }

  else
  {
    swift_setDeallocating();
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

void sub_1C1B46934(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v53 = a3;
  v54 = a4;
  v7 = sub_1C1B945F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1C1AC1F08(&qword_1EBF09478, &unk_1C1BA17E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v51[-v14];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v52 = a5;
    (*(v12 + 16))(v15, a1, v11);
    v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    (*(v12 + 32))(v20 + v18, v15, v11);
    *(v20 + v19) = v17;

    sub_1C1B945E8();
    v21 = type metadata accessor for AdResponseBlock(0);
    v22 = objc_allocWithZone(v21);
    v23 = &v22[OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion];
    *v23 = 0;
    v23[1] = 0;
    *&v22[OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completedResponses] = MEMORY[0x1E69E7CC0];
    v24 = OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_responseLock;
    *&v22[v24] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    (*(v8 + 16))(&v22[OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_requestIdentifier], v10, v7);
    v26 = *v23;
    v25 = v23[1];
    *v23 = sub_1C1B47E10;
    v23[1] = v20;

    sub_1C1AC0530(v26, v25);
    v27 = v53;
    *&v22[OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_context] = v53;
    v57.receiver = v22;
    v57.super_class = v21;
    v28 = v27;
    v29 = objc_msgSendSuper2(&v57, sel_init);

    (*(v8 + 8))(v10, v7);
    [*(v17 + 32) lock];
    swift_beginAccess();
    v30 = v29;
    sub_1C1ABA33C(&v56, v30);
    swift_endAccess();

    if ((*(v17 + OBJC_IVAR____TtC15PromotedContent16AdRequestManager_isSessionActive) & 1) == 0)
    {
      *(v17 + OBJC_IVAR____TtC15PromotedContent16AdRequestManager_isSessionActive) = 1;
      v31 = *(v17 + 16);
      swift_unknownObjectRetain();
      v32 = sub_1C1B945B8();
      [v31 beginSessionForID_];
      swift_unknownObjectRelease();
    }

    [*(v17 + 32) unlock];
    v33 = v54;
    v34 = *(v54 + 16);
    if (v34)
    {
      v53 = v28;
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1C1B95518();
      v35 = (v33 + 32);
      while (1)
      {
        v37 = *v35++;
        v36 = v37;
        if (v37 >= 9)
        {
          break;
        }

        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1C1B954F8();
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
        if (!--v34)
        {
          v28 = v53;
          goto LABEL_9;
        }
      }

      v56 = v36;
      sub_1C1B958C8();
      __break(1u);
    }

    else
    {
LABEL_9:
      sub_1C1AA576C(0, &qword_1EDE6C4C0, 0x1E698A038);
      v38 = v28;
      v39 = APContext.init(_:)(v38);
      v40 = objc_allocWithZone(MEMORY[0x1E698A020]);
      sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
      v41 = v39;
      v42 = sub_1C1B94EB8();

      v43 = [v40 initWithContext:v41 contentTypes:v42 deliverEntireBatch:v52 & 1];

      sub_1C1ABB134(v41);
      v44 = *(v17 + 16);
      v45 = swift_allocObject();
      swift_weakInit();
      v46 = swift_allocObject();
      v46[2] = v38;
      v46[3] = v45;
      v46[4] = v30;
      aBlock[4] = sub_1C1B47EB8;
      aBlock[5] = v46;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C1B451A4;
      aBlock[3] = &unk_1F4152B78;
      v47 = _Block_copy(aBlock);
      v48 = v30;
      v49 = v38;
      v50 = v48;
      swift_unknownObjectRetain();

      [v44 requestPromotedContentWithContents:v43 forRequester:v50 completionHandler:v47];
      _Block_release(v47);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1C1B46F6C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (a1[8])
  {
    if (!*a1)
    {
      v4 = *(a3 + 32);
      [v4 lock];
      *(a3 + OBJC_IVAR____TtC15PromotedContent16AdRequestManager_isSessionActive) = 0;
      [v4 unlock];
    }

    sub_1C1B47ECC();
    swift_allocError();
    *v6 = v3;
    sub_1C1AC1F08(&qword_1EBF09478, &unk_1C1BA17E0);
    return sub_1C1B94FD8();
  }

  else
  {

    sub_1C1AC1F08(&qword_1EBF09478, &unk_1C1BA17E0);
    return sub_1C1B94FE8();
  }
}

double sub_1C1B47058(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C1B945F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v10 = sub_1C1B95108();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v11 = sub_1C1B95298();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v27 = a4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136446210;
    v15 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v7 + 16))(v9, a2 + v15, v6);
    v16 = sub_1C1B945A8();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = sub_1C1AC7650(v16, v18, v28);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1C1AA2000, v11, v10, "[PC] finished retrieving ad content for context identifier %{public}s", v13, 0xCu);
    sub_1C1AA86F8(v14);
    MEMORY[0x1C6908230](v14, -1, -1);
    v20 = v13;
    a4 = v27;
    MEMORY[0x1C6908230](v20, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    [*(Strong + 32) lock];
    v24 = *(v23 + 16);
    swift_unknownObjectRetain();
    v25 = sub_1C1B945B8();
    [v24 finishedWithRequestsForID_];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v26 = sub_1C1B851DC(a4);
    swift_endAccess();

    sub_1C1B4752C();
    [*(v23 + 32) unlock];
  }

  return result;
}

id sub_1C1B47368(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_responseLock);
  [v3 lock];
  if (a1)
  {
    if (a1 >> 62)
    {
      if (sub_1C1B953A8())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      swift_beginAccess();

      sub_1C1AC7638(v4);
      swift_endAccess();
      return [v3 unlock];
    }
  }

  return [v3 unlock];
}

id sub_1C1B4752C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_responseLock);
  [v2 lock];
  v3 = OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completedResponses;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    v5 = sub_1C1B953A8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v0 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion;
  v7 = *(v0 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion);
  if (v5)
  {
    if (v7)
    {
      v8 = *(v6 + 8);
      v14 = *(v1 + v3);
      v15 = 0;
      sub_1C1AC0598(v7);

      v7(&v14);
      sub_1C1AC0530(v7, v8);
      sub_1C1B47D34(v14, v15);
    }
  }

  else if (v7)
  {
    v9 = *(v6 + 8);
    v14 = 2;
    v15 = 1;

    v7(&v14);
    sub_1C1AC0530(v7, v9);
  }

  v10 = (v1 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion);
  v11 = *(v1 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion);
  v12 = *(v1 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion + 8);
  *v10 = 0;
  v10[1] = 0;
  sub_1C1AC0530(v11, v12);
  return [v2 unlock];
}

id sub_1C1B476B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdResponseBlock(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C1B4779C(void *a1, void *a2)
{
  a2[3] = MEMORY[0x1E69E7CD0];
  a2[4] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  sub_1C1B945E8();
  *(a2 + OBJC_IVAR____TtC15PromotedContent16AdRequestManager_isSessionActive) = 1;
  a2[2] = a1;
  swift_unknownObjectRetain();
  v4 = sub_1C1B945B8();
  [a1 beginSessionForID_];

  return a2;
}

void *sub_1C1B4784C(void *a1, uint64_t a2)
{
  v3 = swift_allocObject();

  return sub_1C1B4779C(a1, v3);
}

unint64_t sub_1C1B478A0()
{
  result = qword_1EBF09390;
  if (!qword_1EBF09390)
  {
    type metadata accessor for AdResponseBlock(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09390);
  }

  return result;
}

unint64_t sub_1C1B47904()
{
  result = qword_1EBF09398;
  if (!qword_1EBF09398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09398);
  }

  return result;
}

uint64_t dispatch thunk of AdRequestManaging.fetchAds(with:placementTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C1B47F20;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AdRequestManaging.fetchAdBatch(of:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C1AEE19C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AdRequestManaging.fetchRawAdBatch(with:placementType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C1B47F20;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1C1B47D34(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

id sub_1C1B47D40()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_responseLock);
  [v1 lock];
  v2 = (v0 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion);
  v3 = *(v0 + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_completion);
  if (v3)
  {
    v4 = v2[1];
    v8 = 0;
    v9 = 1;

    v3(&v8);
    sub_1C1AC0530(v3, v4);
    v5 = *v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_1C1AC0530(v5, v6);

  return [v1 unlock];
}

uint64_t sub_1C1B47E10(_BYTE *a1)
{
  v3 = *(sub_1C1AC1F08(&qword_1EBF09478, &unk_1C1BA17E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C1B46F6C(a1, v1 + v4, v5);
}

unint64_t sub_1C1B47ECC()
{
  result = qword_1EDE6C298;
  if (!qword_1EDE6C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C298);
  }

  return result;
}

id AppStoreSessionContent.content.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppStoreSessionContent(0) + 20));

  return v1;
}

uint64_t type metadata accessor for AppStoreSessionContent(uint64_t a1)
{
  result = qword_1EDE6B7C8;
  if (!qword_1EDE6B7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppStoreSessionContent.init(representation:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C1AC771C(a1, a3);
  result = type metadata accessor for AppStoreSessionContent(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t AppStoreSessionContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for AdContent(0);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C1AC1F08(&qword_1EBF09480, &qword_1C1BA1840);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v16 - v6;
  v8 = type metadata accessor for AppStoreSessionContent(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B483A0();
  sub_1C1B95A08();
  if (v2)
  {
    return sub_1C1AA86F8(a1);
  }

  v16 = v8;
  v11 = v18;
  v12 = v10;
  LOBYTE(v21) = 0;
  sub_1C1B492C4(&qword_1EDE6B718, type metadata accessor for AdContent, &protocol conformance descriptor for AdContent);
  v14 = v19;
  v13 = v20;
  sub_1C1B956F8();
  sub_1C1AC771C(v14, v12);
  type metadata accessor for PromotedContent(0);
  v22 = 1;
  sub_1C1B492C4(&qword_1EDE6BC08, type metadata accessor for PromotedContent, &protocol conformance descriptor for PromotedContent);
  sub_1C1B956F8();
  (*(v11 + 8))(v7, v13);
  *(v12 + *(v16 + 20)) = v21;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1C1B483F4(v12, v17, type metadata accessor for AppStoreSessionContent);
  sub_1C1AA86F8(a1);
  return sub_1C1B4845C(v12, type metadata accessor for AppStoreSessionContent);
}

unint64_t sub_1C1B483A0()
{
  result = qword_1EDE6B7F8;
  if (!qword_1EDE6B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B7F8);
  }

  return result;
}

uint64_t sub_1C1B483F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1B4845C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C1B484BC()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x6E65736572706572;
  }
}

uint64_t sub_1C1B48504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65736572706572 && a2 == 0xEE006E6F69746174;
  if (v6 || (sub_1C1B95888() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C1B95888();

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

uint64_t sub_1C1B485E8(uint64_t a1)
{
  v2 = sub_1C1B483A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B48624(uint64_t a1)
{
  v2 = sub_1C1B483A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppStoreSessionContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09488, &qword_1C1BA1848);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B483A0();
  sub_1C1B95A18();
  v12 = 0;
  type metadata accessor for AdContent(0);
  sub_1C1B492C4(&qword_1EDE6B728, type metadata accessor for AdContent, &protocol conformance descriptor for AdContent);
  sub_1C1B95808();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for AppStoreSessionContent(0) + 20));
    v10[15] = 1;
    type metadata accessor for PromotedContent(0);
    sub_1C1B492C4(&qword_1EDE6BC10, type metadata accessor for PromotedContent, &protocol conformance descriptor for PromotedContent);
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AppStoreContentSnapshot.dataIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppStoreContentSnapshot.storeFront.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppStoreContentSnapshot.storeFrontLocale.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall AppStoreContentSnapshot.init(dataIdentifier:storeFront:storeFrontLocale:appRequestMetaFields:sessionContent:)(PromotedContent::AppStoreContentSnapshot *__return_ptr retstr, Swift::String dataIdentifier, Swift::String storeFront, Swift::String storeFrontLocale, Swift::OpaquePointer appRequestMetaFields, Swift::OpaquePointer sessionContent)
{
  retstr->dataIdentifier = dataIdentifier;
  retstr->storeFront = storeFront;
  retstr->storeFrontLocale = storeFrontLocale;
  retstr->appRequestMetaFields = appRequestMetaFields;
  retstr->sessionContent = sessionContent;
}

unint64_t sub_1C1B4894C()
{
  v1 = *v0;
  v2 = 0x6E65644961746164;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x436E6F6973736573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F724665726F7473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1B48A08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1B498C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1B48A30(uint64_t a1)
{
  v2 = sub_1C1B48D98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B48A6C(uint64_t a1)
{
  v2 = sub_1C1B48D98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppStoreContentSnapshot.encode(to:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF09490, &unk_1C1BA1850);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = v1[2];
  v19 = v1[3];
  v20 = v7;
  v8 = v1[4];
  v17 = v1[5];
  v18 = v8;
  v9 = v1[6];
  v15 = v1[7];
  v16 = v9;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B48D98();
  v10 = v3;
  sub_1C1B95A18();
  LOBYTE(v23) = 0;
  v11 = v21;
  sub_1C1B957A8();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = v15;
  v13 = v16;
  LOBYTE(v23) = 1;
  sub_1C1B957A8();
  LOBYTE(v23) = 2;
  sub_1C1B957A8();
  v23 = v13;
  v22 = 3;
  sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
  sub_1C1AD0C9C(&qword_1EDE6BC00, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1C1B95808();
  v23 = v12;
  v22 = 4;
  sub_1C1AC1F08(&qword_1EBF09498, &qword_1C1BA1860);
  sub_1C1B49228(&qword_1EDE6A718, &qword_1EDE6B7E0, &protocol conformance descriptor for AppStoreSessionContent, MEMORY[0x1E69E6300]);
  sub_1C1B95808();
  return (*(v4 + 8))(v6, v10);
}

unint64_t sub_1C1B48D98()
{
  result = qword_1EDE6B380;
  if (!qword_1EDE6B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B380);
  }

  return result;
}

uint64_t AppStoreContentSnapshot.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C1AC1F08(&qword_1EBF094A0, &qword_1C1BA1868);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B48D98();
  sub_1C1B95A08();
  if (v2)
  {
    return sub_1C1AA86F8(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = sub_1C1B95698();
  v29 = v10;
  LOBYTE(v34[0]) = 1;
  v11 = sub_1C1B95698();
  v28 = v12;
  v26 = v11;
  LOBYTE(v34[0]) = 2;
  v25 = sub_1C1B95698();
  v27 = v13;
  sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
  LOBYTE(v30) = 3;
  sub_1C1AD0C9C(&unk_1EDE6BBF0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1C1B956F8();
  v24 = v34[0];
  sub_1C1AC1F08(&qword_1EBF09498, &qword_1C1BA1860);
  v35[0] = 4;
  sub_1C1B49228(&qword_1EDE6A710, &qword_1EDE6B7D8, &protocol conformance descriptor for AppStoreSessionContent, MEMORY[0x1E69E6330]);
  sub_1C1B956F8();
  (*(v6 + 8))(v8, v5);
  v23 = v36;
  v15 = v28;
  v14 = v29;
  *&v30 = v9;
  *(&v30 + 1) = v29;
  v17 = v26;
  v16 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  v18 = v25;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v24;
  *(&v33 + 1) = v36;
  v19 = v31;
  *a2 = v30;
  a2[1] = v19;
  v20 = v33;
  a2[2] = v32;
  a2[3] = v20;
  sub_1C1B4930C(&v30, v34);
  sub_1C1AA86F8(a1);
  v34[0] = v9;
  v34[1] = v14;
  v34[2] = v17;
  v34[3] = v15;
  v34[4] = v18;
  v34[5] = v16;
  v34[6] = v24;
  v34[7] = v23;
  return sub_1C1B49344(v34);
}

uint64_t sub_1C1B49228(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF09498, &qword_1C1BA1860);
    sub_1C1B492C4(a2, type metadata accessor for AppStoreSessionContent, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1B492C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1B49374(uint64_t a1)
{
  result = sub_1C1B4939C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C1B4939C()
{
  result = qword_1EDE6B358;
  if (!qword_1EDE6B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B358);
  }

  return result;
}

uint64_t sub_1C1B493F0()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1C1B49420(uint64_t a1)
{
  *(a1 + 8) = sub_1C1B49450();
  result = sub_1C1B494A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C1B49450()
{
  result = qword_1EDE6B360;
  if (!qword_1EDE6B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B360);
  }

  return result;
}

unint64_t sub_1C1B494A4()
{
  result = qword_1EDE6B368;
  if (!qword_1EDE6B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B368);
  }

  return result;
}

uint64_t sub_1C1B49550(uint64_t a1)
{
  result = type metadata accessor for AdContent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PromotedContent(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_1C1B495D4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C1B495E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C1B49630(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1C1B496B4()
{
  result = qword_1EBF094A8;
  if (!qword_1EBF094A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF094A8);
  }

  return result;
}

unint64_t sub_1C1B4970C()
{
  result = qword_1EBF094B0;
  if (!qword_1EBF094B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF094B0);
  }

  return result;
}

unint64_t sub_1C1B49764()
{
  result = qword_1EDE6B370;
  if (!qword_1EDE6B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B370);
  }

  return result;
}

unint64_t sub_1C1B497BC()
{
  result = qword_1EDE6B378;
  if (!qword_1EDE6B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B378);
  }

  return result;
}

unint64_t sub_1C1B49814()
{
  result = qword_1EDE6B7E8;
  if (!qword_1EDE6B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B7E8);
  }

  return result;
}

unint64_t sub_1C1B4986C()
{
  result = qword_1EDE6B7F0;
  if (!qword_1EDE6B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B7F0);
  }

  return result;
}

uint64_t sub_1C1B498C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F724665726F7473 && a2 == 0xEA0000000000746ELL || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C1BA55B0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C1BAB380 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x436E6F6973736573 && a2 == 0xEE00746E65746E6FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1C1B49A94()
{
  sub_1C1AC0530(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

double sub_1C1B49AF8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C1B49B58(a1);
  }

  return result;
}

void sub_1C1B49B58(void *a1)
{
  v2 = v1;
  [*(v1 + 16) lock];
  v4 = [a1 contextIdentifier];
  v5 = sub_1C1B94D88();
  v7 = v6;

  swift_beginAccess();
  v8 = *(v2 + 32);
  if (!*(v8 + 16))
  {

LABEL_6:
    swift_endAccess();
LABEL_40:
    [*(v2 + 16) unlock];
    return;
  }

  v9 = sub_1C1AA7C14(v5, v7);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v13 = v12[2];
  v51 = v2;
  if (v13)
  {
    v14 = v12[3];

    sub_1C1AC0598(v13);
    v13(a1);
    sub_1C1AC0530(v13, v14);
  }

  else
  {
  }

  swift_beginAccess();
  v15 = v12[4];
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v53 = v15 + 64;
  v54 = v12;
  v52 = v15;
  if (v19)
  {
    while (1)
    {
LABEL_17:
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = (*(v15 + 48) + ((v21 << 10) | (16 * v24)));
      v27 = *v25;
      v26 = v25[1];

      v28 = [a1 contentIdentifier];
      if (!v28)
      {
        goto LABEL_12;
      }

      v29 = v22;
      v30 = a1;
      v31 = v28;
      v32 = sub_1C1B94D88();
      v34 = v33;

      if (v32 == v27 && v34 == v26)
      {

        a1 = v30;
        v22 = v29;
        v15 = v52;
LABEL_25:
        v55 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C1AC7E04(0, v22[2] + 1, 1);
          v15 = v52;
          v22 = v55;
        }

        v12 = v54;
        v38 = v22[2];
        v37 = v22[3];
        v39 = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          sub_1C1AC7E04((v37 > 1), v38 + 1, 1);
          v15 = v52;
          v39 = v38 + 1;
          v22 = v55;
        }

        v22[2] = v39;
        v40 = &v22[2 * v38];
        v40[4] = v27;
        v40[5] = v26;
        v16 = v53;
        if (!v19)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v36 = sub_1C1B95888();

        a1 = v30;
        v22 = v29;
        v15 = v52;
        if (v36)
        {
          goto LABEL_25;
        }

LABEL_12:

        v16 = v53;
        v12 = v54;
        if (!v19)
        {
          goto LABEL_13;
        }
      }
    }
  }

  while (1)
  {
LABEL_13:
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v23 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v23);
    ++v21;
    if (v19)
    {
      v21 = v23;
      goto LABEL_17;
    }
  }

  v41 = v22[2];
  if (!v41)
  {
LABEL_39:

    v2 = v51;
    goto LABEL_40;
  }

  v42 = 0;
  v43 = v22 + 5;
  while (v42 < v22[2])
  {
    v45 = *(v43 - 1);
    v44 = *v43;
    swift_beginAccess();
    v46 = v12[4];
    v47 = *(v46 + 16);

    if (v47 && (v48 = sub_1C1AA7C14(v45, v44), (v49 & 1) != 0))
    {
      v50 = *(*(v46 + 56) + 16 * v48);
      swift_endAccess();
      v55 = a1;

      v50(&v55);
    }

    else
    {
      swift_endAccess();
    }

    ++v42;
    v43 += 2;
    if (v41 == v42)
    {
      goto LABEL_39;
    }
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_1C1B49F5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_1C1B49FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  [*(v4 + 16) lock];
  swift_beginAccess();
  v10 = *(v4 + 32);
  if (*(v10 + 16) && (v11 = sub_1C1AA7C14(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    v14 = v13[2];
    v15 = v13[3];

    v16 = v14;
    v17 = v15;
  }

  else
  {
    swift_endAccess();
    type metadata accessor for ContextMetricContainer();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v18 = sub_1C1AD48C8(MEMORY[0x1E69E7CC0]);
    v17 = 0;
    v16 = 0;
    v13[4] = v18;
  }

  v13[2] = a3;
  v13[3] = a4;
  sub_1C1AC0530(v16, v17);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v5 + 32);
  *(v5 + 32) = 0x8000000000000000;
  sub_1C1AE43C8(v13, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 32) = v21;
  swift_endAccess();

  return [*(v5 + 16) unlock];
}

id sub_1C1B4A148(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [*(v2 + 16) lock];
  swift_beginAccess();
  v6 = *(v2 + 32);
  if (*(v6 + 16) && (v7 = sub_1C1AA7C14(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v10 = v9[2];
    v11 = v9[3];
    v9[2] = 0;
    v9[3] = 0;

    sub_1C1AC0530(v10, v11);
    swift_beginAccess();
    if (*(v9[4] + 16))
    {
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v3 + 32);
      *(v3 + 32) = 0x8000000000000000;
      sub_1C1AE43C8(v9, a1, a2, isUniquelyReferenced_nonNull_native);

      *(v3 + 32) = v14;
    }

    else
    {
      swift_beginAccess();

      sub_1C1AD30AC(0, a1, a2);
    }

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  return [*(v3 + 16) unlock];
}

id sub_1C1B4A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  [*(v6 + 16) lock];
  swift_beginAccess();
  v14 = *(v6 + 32);
  if (*(v14 + 16) && (v15 = sub_1C1AA7C14(a1, a2), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for ContextMetricContainer();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = sub_1C1AD48C8(MEMORY[0x1E69E7CC0]);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v17[4];
  v17[4] = 0x8000000000000000;
  sub_1C1AE458C(sub_1C1B4AABC, v18, a3, a4, isUniquelyReferenced_nonNull_native);

  v17[4] = v22;
  swift_endAccess();
  swift_beginAccess();

  v20 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v7 + 32);
  *(v7 + 32) = 0x8000000000000000;
  sub_1C1AE43C8(v17, a1, a2, v20);

  *(v7 + 32) = v23;
  swift_endAccess();

  return [*(v7 + 16) unlock];
}

id sub_1C1B4A4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  [*(v4 + 16) lock];
  swift_beginAccess();
  v10 = *(v4 + 32);
  if (*(v10 + 16) && (v11 = sub_1C1AA7C14(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    swift_beginAccess();

    sub_1C1AD2FA4(0, 0, a3, a4);
    swift_endAccess();
    if (*(v13 + 16) || *(*(v13 + 32) + 16))
    {
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v5 + 32);
      *(v5 + 32) = 0x8000000000000000;
      sub_1C1AE43C8(v13, a3, a4, isUniquelyReferenced_nonNull_native);

      *(v5 + 32) = v16;
    }

    else
    {
      swift_beginAccess();

      sub_1C1AD30AC(0, a1, a2);
    }

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  return [*(v5 + 16) unlock];
}

id sub_1C1B4A6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  [*(v6 + 16) lock];
  swift_beginAccess();
  v14 = *(v6 + 32);
  if (*(v14 + 16) && (v15 = sub_1C1AA7C14(a1, a2), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
    swift_beginAccess();
    v18 = *(v17 + 32);
    v19 = *(v18 + 16);

    if (v19 && (v20 = sub_1C1AA7C14(a3, a4), (v21 & 1) != 0))
    {
      v22 = v20;
      v23 = *(v18 + 56);
      v24 = swift_allocObject();
      v29 = *(v23 + 16 * v22);
      *(v24 + 16) = v29;
      swift_endAccess();
      v25 = swift_allocObject();
      v26 = sub_1C1B4A908;
      *(v25 + 16) = sub_1C1B4A908;
      *(v25 + 24) = v24;

      v27 = sub_1C1B4A940;
    }

    else
    {
      swift_endAccess();
      v27 = 0;
      v25 = 0;
      v26 = 0;
      v24 = 0;
    }

    swift_beginAccess();

    sub_1C1AD2FA4(v27, v25, a5, a6);
    swift_endAccess();
    sub_1C1AC0530(v26, v24);
  }

  else
  {
    swift_endAccess();
  }

  return [*(v7 + 16) unlock];
}

uint64_t sub_1C1B4A89C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1C1B4A908(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void *sub_1C1B4A96C(uint64_t a1, void *a2)
{
  a2[2] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v4 = sub_1C1AD47B8(MEMORY[0x1E69E7CC0]);
  a2[3] = a1;
  a2[4] = v4;
  v5 = [swift_unknownObjectRetain() notificationRegistrar];
  v6 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_1C1B4AAAC;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1C1B49F5C;
  v9[3] = &unk_1F4152DC0;
  v7 = _Block_copy(v9);

  [v5 registerHandlerForPurpose:100 closure:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
  return a2;
}

Swift::Void __swiftcall JourneyMetricsHelper.notifyListenersPCUsed()()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_onPromotedContentComplete;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 10) | (16 * v9)));

    v10(v11);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall JourneyMetricsHelper.unregisterForPCUsedEvent(listenerID:)(Swift::String listenerID)
{
  object = listenerID._object;
  countAndFlagsBits = listenerID._countAndFlagsBits;
  v4 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_onPromotedContentComplete;
  swift_beginAccess();
  if (*(*(v1 + v4) + 16))
  {

    sub_1C1AA7C14(countAndFlagsBits, object);
    v6 = v5;

    if (v6)
    {
      swift_beginAccess();
      v7 = sub_1C1AF6614(countAndFlagsBits, object);
      v9 = v8;
      swift_endAccess();
      sub_1C1AC0530(v7, v9);
    }
  }
}

uint64_t LocalizedHeadlines.headline(forLanguageCode:)(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_1C1B94608();
  if (*(v2 + 16))
  {
    v5 = sub_1C1AA7C14(v3, v4);
    v7 = v6;

    if (v7)
    {
      v8 = *(*(v2 + 56) + 16 * v5);

      return v8;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1C1B4AE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C1B95888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C1B4AEAC(uint64_t a1)
{
  v2 = sub_1C1B4B290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B4AEE8(uint64_t a1)
{
  v2 = sub_1C1B4B290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocalizedHeadlines.encode(to:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF094B8, &unk_1C1BA1CE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B4B290();

  sub_1C1B95A18();
  v9[1] = v7;
  sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
  sub_1C1AD0C9C(&qword_1EDE6BC00, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1C1B95808();

  return (*(v4 + 8))(v6, v3);
}

uint64_t LocalizedHeadlines.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C1AC1F08(&qword_1EBF094C0, &qword_1C1BA1CF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B4B290();
  sub_1C1B95A08();
  if (!v2)
  {
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    sub_1C1AD0C9C(&unk_1EDE6BBF0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1C1B956F8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return sub_1C1AA86F8(a1);
}

unint64_t sub_1C1B4B290()
{
  result = qword_1EDE6B038;
  if (!qword_1EDE6B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B038);
  }

  return result;
}

unint64_t sub_1C1B4B2F8()
{
  result = qword_1EBF094C8;
  if (!qword_1EBF094C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF094C8);
  }

  return result;
}

unint64_t sub_1C1B4B350()
{
  result = qword_1EDE6B028;
  if (!qword_1EDE6B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B028);
  }

  return result;
}

unint64_t sub_1C1B4B3A8()
{
  result = qword_1EDE6B030;
  if (!qword_1EDE6B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B030);
  }

  return result;
}

uint64_t ContentProvider.__allocating_init(requestManager:cacheManager:storageManager:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ContentProvider.init(requestManager:cacheManager:storageManager:)(a1, a2, a3);
  return v6;
}

uint64_t *ContentProvider.init(requestManager:cacheManager:storageManager:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_1C1AC0580(a1, (v3 + 2));
  (*(*(*(v6 + 80) - 8) + 32))(v3 + *(*v3 + 128), a2);
  (*(*(*(v6 + 88) - 8) + 32))(v3 + *(*v3 + 136), a3);
  return v3;
}

uint64_t sub_1C1B4B540(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C1B4B564, 0, 0);
}

uint64_t sub_1C1B4B564()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  sub_1C1AAABE0(v1 + 2, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1C1B4CB94;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_1C1B4B694(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C1B4B6B8, 0, 0);
}

uint64_t sub_1C1B4B6B8()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  sub_1C1AAABE0(v1 + 2, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1C1B4B7E8;
  v5 = v0[2];
  v6 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_1C1B4B7E8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_1C1B4BA4C(uint64_t a1)
{
  v9 = *(*v1 + 80);
  v10 = *(*v1 + 96);
  swift_getAssociatedTypeWitness();
  if (sub_1C1B94F58())
  {
    v3 = *(v10 + 32);
    v4 = 4;
    do
    {
      v5 = v4 - 4;
      v6 = sub_1C1B94F38();
      sub_1C1B94EF8();
      if (v6)
      {
        v7 = *(a1 + 8 * v4);
        swift_unknownObjectRetain();
        v8 = v4 - 3;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7 = sub_1C1B95488();
        v8 = v4 - 3;
        if (__OFADD__(v5, 1))
        {
LABEL_9:
          __break(1u);
          return;
        }
      }

      v11 = v7;
      v3(&v11, v9, v10);
      swift_unknownObjectRelease();
      ++v4;
    }

    while (v8 != sub_1C1B94F58());
  }
}

uint64_t sub_1C1B4BBB4(uint64_t a1)
{
  sub_1C1B4BD20(v1 + *(*v1 + 128), *(*v1 + 80), *(*v1 + 88), *(*v1 + 96), *(*v1 + 104), *(*v1 + 112));
  sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
  swift_getAssociatedTypeWitness();
  sub_1C1B4C330();
  v2 = sub_1C1B94E18();

  return v2;
}

uint64_t (*sub_1C1B4BD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  v14 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  *(v15 + 6) = a6;
  (*(v11 + 32))(&v15[v14], v13, a2);
  return sub_1C1B4CB18;
}

uint64_t sub_1C1B4BE64(uint64_t result)
{
  v8 = *v1;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v8 + 96);
    v4 = *(v3 + 40);
    v5 = (result + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v4(v6, v7, *(v8 + 80), v3);

      v5 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1C1B4BF38(uint64_t a1)
{
  v2 = sub_1C1B4BBB4(a1);
  sub_1C1B4BE64(a1);
  return v2;
}

char *ContentProvider.deinit()
{
  v1 = *v0;
  sub_1C1AA86F8(v0 + 2);
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 128)]);
  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(*v0 + 136)]);
  return v0;
}

uint64_t ContentProvider.__deallocating_deinit()
{
  ContentProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1B4C0A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1B47F28;

  return sub_1C1B4B540(a1, a2);
}

uint64_t sub_1C1B4C148(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1B013DC;

  return sub_1C1B4B694(a1, a2);
}

uint64_t sub_1C1B4C2F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 56))(*a1, a1[1]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C1B4C330()
{
  result = qword_1EDE6A688;
  if (!qword_1EDE6A688)
  {
    sub_1C1AC3404(&unk_1EBF07AA0, &qword_1C1B98CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A688);
  }

  return result;
}

uint64_t dispatch thunk of ContentProviding.performNetworkRequest(context:placements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C1B47F20;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ContentProviding.performBatchRequest(context:placement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C1B47F20;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1C1B4C6A8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ContentProvider.performNetworkRequest(context:placements:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C1B47F20;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ContentProvider.performBatchRequest(context:placement:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C1AEE19C;

  return v8(a1, a2);
}

uint64_t sub_1C1B4CBB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B4CC9C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C1B4CC9C(uint64_t result)
{
  if ((result - 2606) < 0xFFFFFFFFFFFFFFFALL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B4CCB4()
{
  result = qword_1EBF094D0;
  if (!qword_1EBF094D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF094D0);
  }

  return result;
}

unint64_t sub_1C1B4CD18()
{
  result = qword_1EBF094D8;
  if (!qword_1EBF094D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF094D8);
  }

  return result;
}

id sub_1C1B4CD6C()
{
  result = [objc_opt_self() isAppleInternalInstall];
  byte_1EDE6D050 = result;
  return result;
}

void sub_1C1B4CDA0()
{
  if (qword_1EDE6C4D8 != -1)
  {
    swift_once();
  }

  v0 = byte_1EDE6D050;
  if (byte_1EDE6D050 == 1)
  {
    v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v2 = sub_1C1B94D78();
    v3 = [v1 initWithSuiteName_];

    if (!v3)
    {
      v3 = [objc_opt_self() standardUserDefaults];
    }

    v4 = sub_1C1B94D78();
    v5 = [v3 integerForKey_];
  }

  else
  {
    v5 = 0;
  }

  qword_1EDE6CE50 = v5;
  byte_1EDE6CE58 = v0 ^ 1;
}

void sub_1C1B4CEDC()
{
  if (qword_1EDE6C4D8 != -1)
  {
    swift_once();
  }

  v0 = byte_1EDE6D050;
  if (byte_1EDE6D050 == 1)
  {
    v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v2 = sub_1C1B94D78();
    v3 = [v1 initWithSuiteName_];

    if (!v3)
    {
      v3 = [objc_opt_self() standardUserDefaults];
    }

    v4 = sub_1C1B94D78();
    v5 = [v3 integerForKey_];
  }

  else
  {
    v5 = 0;
  }

  qword_1EDE6CDD8 = v5;
  byte_1EDE6CDE0 = v0 ^ 1;
}

BOOL sub_1C1B4D00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1C1B95458();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_1C1B4D104()
{
  if (qword_1EDE6C4D8 != -1)
  {
    swift_once();
  }

  if (byte_1EDE6D050 != 1)
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1B94D78();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1C1B94D78();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1C1B952F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_1C1AF4F4C(v11);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  *&v11[0] = 0;
  v5 = sub_1C1B4D00C(v7, v8, v11);

  if (v5)
  {
    return *&v11[0];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1B4D2D4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1B94D78();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1C1B94D78();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_1C1B952F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = v7;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1C1AF4F4C(v10);
  }

  v5 = 0;
LABEL_11:
  if (qword_1EDE6C4D8 != -1)
  {
    swift_once();
  }

  return byte_1EDE6D050 & v5 & 1;
}

_BYTE *sub_1C1B4D46C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t NativeAdTrackingInstance.instanceId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NativeAdTrackingInstance.frequencyCapIdentifier.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_1C1B4D574()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
    type metadata accessor for QuickReturnTracker(0);
    v1 = swift_allocObject();
    *(v1 + 40) = 0;
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    v3 = OBJC_IVAR____TtC15PromotedContent18QuickReturnTracker_interactionTime;
    v4 = sub_1C1B94588();
    (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
    *(v1 + 32) = v2;
    *(v0 + 112) = v1;
  }

  return v1;
}

double sub_1C1B4D654(uint64_t a1)
{
  *(v1 + 112) = a1;

  return result;
}

double (*sub_1C1B4D664(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1C1B4D574();
  return sub_1C1B4D6AC;
}

double sub_1C1B4D6AC(uint64_t *a1)
{
  *(a1[1] + 112) = *a1;

  return result;
}

uint64_t sub_1C1B4D6BC()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v1 = sub_1C1B4DCC4();
    *(v0 + 120) = v1;
  }

  return v1;
}

double sub_1C1B4D718(uint64_t a1)
{
  *(v1 + 120) = a1;

  return result;
}

double (*sub_1C1B4D728(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1C1B4D6BC();
  return sub_1C1B4D770;
}

double sub_1C1B4D770(uint64_t *a1)
{
  *(a1[1] + 120) = *a1;

  return result;
}

uint64_t sub_1C1B4D7B4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

uint64_t sub_1C1B4D878(char a1)
{
  result = swift_beginAccess();
  *(v1 + 129) = a1;
  return result;
}

uint64_t sub_1C1B4D93C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 130) = a1;
  return result;
}

uint64_t NativeAdTrackingInstance.__allocating_init(instanceId:metrics:eventProvider:frequencyStorageType:frequencyCapIdentifier:installAttribution:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  LOBYTE(a5) = *a5;
  *(v16 + 112) = 0;
  *(v16 + 120) = 0;
  *(v16 + 127) = 0;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_1C1AC0580(a3, v16 + 40);
  *(v16 + 32) = a4;
  *(v16 + 80) = a5;
  *(v16 + 88) = a6;
  *(v16 + 96) = a7;
  *(v16 + 104) = a8;
  return v16;
}

uint64_t NativeAdTrackingInstance.init(instanceId:metrics:eventProvider:frequencyStorageType:frequencyCapIdentifier:installAttribution:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a5;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 127) = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1C1AC0580(a3, v8 + 40);
  *(v8 + 32) = a4;
  *(v8 + 80) = v13;
  *(v8 + 88) = a6;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  return v8;
}

void *NativeAdTrackingInstance.deinit()
{

  sub_1C1AA86F8((v0 + 40));

  return v0;
}

uint64_t NativeAdTrackingInstance.__deallocating_deinit()
{

  sub_1C1AA86F8((v0 + 40));

  return MEMORY[0x1EEE6BDC0](v0, 131, 7);
}

uint64_t sub_1C1B4DB90()
{
  v1 = *(*v0 + 88);

  return v1;
}

uint64_t sub_1C1B4DBE0(uint64_t a1, uint64_t a2, double a3)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = sub_1C1AD44D8(MEMORY[0x1E69E7CC0]);
  *(a2 + 56) = 0;
  v6 = OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionBeganTimestamp;
  v7 = sub_1C1B94588();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock;
  sub_1C1AC1F08(&qword_1EBF08860, &qword_1C1B9CD80);
  v9 = swift_allocObject();
  *(a2 + v8) = v9;
  *(a2 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_clock) = a1;
  *(v9 + 16) = 0;
  *(a2 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionDuration) = a3;
  return a2;
}

uint64_t sub_1C1B4DCC4()
{
  v0 = sub_1C1AC1F08(&qword_1EBF094E0, &unk_1C1BA2170);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v19 - v4;
  sub_1C1B94B78();
  v6 = sub_1C1B94B88();
  v19[3] = v6;
  v19[4] = MEMORY[0x1E6986060];
  v7 = sub_1C1AB0D60(v19);
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E6986058], v6);
  v21 = sub_1C1B94B48();
  v22 = MEMORY[0x1E6986050];
  sub_1C1AB0D60(v20);
  sub_1C1B94B38();
  sub_1C1B94B58();
  v8 = sub_1C1B94B08();
  v21 = v8;
  v22 = sub_1C1B4E29C(&unk_1EDE6A780, MEMORY[0x1E6986020], MEMORY[0x1E6986018]);
  v9 = sub_1C1AB0D60(v20);
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x1E6986010], v8);
  v10 = sub_1C1B94B28();
  v11 = MEMORY[0x1E6986028];
  sub_1C1B4E29C(&qword_1EDE6A770, MEMORY[0x1E6986028], MEMORY[0x1E6986038]);
  sub_1C1B4E29C(&qword_1EDE6A778, v11, MEMORY[0x1E6986030]);
  sub_1C1B94B68();
  sub_1C1AA86F8(v20);
  v12 = [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  sub_1C1B4E2E4(v5, v3);
  v13 = *(v10 - 8);
  if ((*(v13 + 48))(v3, 1, v10) == 1)
  {
    sub_1C1B4E354(v3);
    v14 = 1.0;
  }

  else
  {
    sub_1C1B94B18();
    v14 = v15;
    (*(v13 + 8))(v3, v10);
  }

  type metadata accessor for VisibleThresholdTracker(0);
  v16 = swift_allocObject();
  v17 = sub_1C1B4DBE0(v12, v16, v14);

  sub_1C1B4E354(v5);
  return v17;
}

uint64_t sub_1C1B4E29C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1B4E2E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF094E0, &unk_1C1BA2170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B4E354(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF094E0, &unk_1C1BA2170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricsUnloadTracker.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

unint64_t sub_1C1B4E468()
{
  result = qword_1EDE6C9E0;
  if (!qword_1EDE6C9E0)
  {
    sub_1C1AA576C(255, &qword_1EDE6C9F0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C9E0);
  }

  return result;
}

uint64_t DesiredPosition.init(rawValue:)(uint64_t result)
{
  if ((result - 1101) >= 2 && result != 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B4E4EC()
{
  v1 = v0;
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - v7;
  v9 = sub_1C1B944A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VideoRepresentation(0);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1B9C9C0;
    *(inited + 32) = 0x65746172746962;
    *(inited + 40) = 0xE700000000000000;
    v16 = MEMORY[0x1E69E63B0];
    *(inited + 48) = *(v14 + OBJC_IVAR___APPCVideoRepresentation_bitrate);
    *(inited + 72) = v16;
    strcpy((inited + 80), "signalStrength");
    *(inited + 95) = -18;
    v17 = MEMORY[0x1E69E6810];
    *(inited + 96) = *(v14 + OBJC_IVAR___APPCVideoRepresentation_signalStrength);
    *(inited + 120) = v17;
    strcpy((inited + 128), "connectionType");
    *(inited + 143) = -18;
    v18 = MEMORY[0x1E69E6530];
    *(inited + 144) = *(v14 + OBJC_IVAR___APPCVideoRepresentation_connectionType);
    *(inited + 168) = v18;
    *(inited + 176) = 0x4C52557465737361;
    *(inited + 184) = 0xE800000000000000;
    *(inited + 216) = v9;
    v19 = sub_1C1AB0D60((inited + 192));
    swift_unknownObjectRetain();
    sub_1C1B0C774(v19);
    *(inited + 224) = 0x6E6F697461727564;
    *(inited + 232) = 0xE800000000000000;
    v20 = *(v14 + OBJC_IVAR___APPCVideoRepresentation_duration);
    *(inited + 264) = v16;
    *(inited + 240) = v20;
    v21 = sub_1C1AA7D00(inited);
    swift_setDeallocating();
    sub_1C1AC1F08(&qword_1EBF08340, &qword_1C1B9AF70);
    swift_arrayDestroy();
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for BannerRepresentation(0);
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = *(v22 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo);
      if (v23)
      {
        sub_1C1AC5430(&v23[OBJC_IVAR___APPCOutstreamVideoInfo_videoAssetURL], v8);
        if ((*(v10 + 48))(v8, 1, v9) != 1)
        {
          (*(v10 + 32))(v12, v8, v9);
          sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
          v38 = swift_initStackObject();
          *(v38 + 16) = xmmword_1C1B9C9C0;
          *(v38 + 32) = 0x65746172746962;
          *(v38 + 40) = 0xE700000000000000;
          v39 = MEMORY[0x1E69E63B0];
          *(v38 + 48) = *&v23[OBJC_IVAR___APPCOutstreamVideoInfo_bitrate];
          *(v38 + 72) = v39;
          strcpy((v38 + 80), "signalStrength");
          *(v38 + 95) = -18;
          v40 = MEMORY[0x1E69E6810];
          *(v38 + 96) = *&v23[OBJC_IVAR___APPCOutstreamVideoInfo_signalStrength];
          *(v38 + 120) = v40;
          strcpy((v38 + 128), "connectionType");
          *(v38 + 143) = -18;
          v41 = MEMORY[0x1E69E6530];
          *(v38 + 144) = *&v23[OBJC_IVAR___APPCOutstreamVideoInfo_connectionType];
          *(v38 + 168) = v41;
          *(v38 + 176) = 0x4C52557465737361;
          *(v38 + 184) = 0xE800000000000000;
          *(v38 + 216) = v9;
          v42 = sub_1C1AB0D60((v38 + 192));
          (*(v10 + 16))(v42, v12, v9);
          *(v38 + 224) = 0x6E6F697461727564;
          *(v38 + 232) = 0xE800000000000000;
          v43 = *&v23[OBJC_IVAR___APPCOutstreamVideoInfo_videoDuration];
          swift_unknownObjectRetain();
          v44 = v23;
          [v43 doubleValue];
          *(v38 + 264) = v39;
          *(v38 + 240) = v45;
          v21 = sub_1C1AA7D00(v38);
          swift_setDeallocating();
          sub_1C1AC1F08(&qword_1EBF08340, &qword_1C1B9AF70);
          swift_arrayDestroy();
          swift_unknownObjectRelease();

          (*(v10 + 8))(v12, v9);
          return v21;
        }

        sub_1C1AA7C8C(v8, &qword_1EBF07AC8, &qword_1C1B9CED0);
      }
    }

    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v24 = sub_1C1B94BE8();
    sub_1C1AB4454(v24, qword_1EDE6D058);
    swift_unknownObjectRetain_n();
    v25 = sub_1C1B94BC8();
    v26 = sub_1C1B95128();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48[0] = v47;
      *v27 = 136446466;
      v28 = [v1 id];
      sub_1C1B945D8();
      swift_unknownObjectRelease();

      sub_1C1B51D08(&qword_1EDE6B830, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v29 = sub_1C1B95858();
      v31 = v30;
      swift_unknownObjectRelease();
      (*(v3 + 8))(v5, v2);
      v32 = sub_1C1AC7650(v29, v31, v48);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2082;
      v33 = sub_1C1B4FF2C([v1 adType]);
      v35 = sub_1C1AC7650(v33, v34, v48);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_1C1AA2000, v25, v26, "[Representation %{public}s]: Corrupted %{public}s representation is detected. Critical video assets are missing.", v27, 0x16u);
      v36 = v47;
      swift_arrayDestroy();
      MEMORY[0x1C6908230](v36, -1, -1);
      MEMORY[0x1C6908230](v27, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease_n();
    }

    return 0;
  }

  return v21;
}

id ContentRepresentation.init(id:adType:desiredPosition:privacyMarkerPosition:privacyMarkerType:adSize:tapAction:adPolicyData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v10 = v9;
  v19 = sub_1C1B945A8();
  v20 = &v10[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v20 = v19;
  v20[1] = v21;
  v22 = OBJC_IVAR___APPCContentRepresentation_id;
  v23 = sub_1C1B945F8();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v10[v22], a1, v23);
  *&v10[OBJC_IVAR___APPCContentRepresentation_adType] = a2;
  *&v10[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = a3;
  *&v10[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = a4;
  *&v10[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = a5;
  v25 = &v10[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v25 = a8;
  v25[1] = a9;
  *&v10[OBJC_IVAR___APPCContentRepresentation_tapAction] = a6;
  *&v10[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = a7;
  v29.receiver = v10;
  v29.super_class = type metadata accessor for ContentRepresentation(0);
  v26 = objc_msgSendSuper2(&v29, sel_init);
  (*(v24 + 8))(a1, v23);
  return v26;
}

void *ContentRepresentation.init(from:)(void *a1)
{
  v2 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_1C1B945F8();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1AC1F08(&qword_1EBF094F0, &qword_1C1BA22A8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = a1[3];
  v40 = a1;
  sub_1C1AAABE0(a1, v12);
  sub_1C1B4F854();
  v13 = v39;
  sub_1C1B95A08();
  if (v13)
  {
    goto LABEL_4;
  }

  v36 = v7;
  v37 = v5;
  v39 = v9;
  LOBYTE(v43) = 0;
  v14 = sub_1C1B95698();
  v16 = v15;
  v17 = v4;
  sub_1C1B94598();
  v18 = v38;
  v19 = v4;
  v20 = v37;
  if ((*(v38 + 48))(v19, 1, v37) == 1)
  {
    sub_1C1AA7C8C(v17, &unk_1EBF098E0, &qword_1C1BA22A0);
    sub_1C1B4F8A8();
    swift_allocError();
    *v21 = v14;
    v21[1] = v16;
    swift_willThrow();
    (*(v39 + 8))(v11, v8);
LABEL_4:
    sub_1C1AA86F8(v40);
    v22 = v41;
    type metadata accessor for ContentRepresentation(0);
    swift_deallocPartialClassInstance();
    return v22;
  }

  v24 = v8;
  v25 = v36;
  (*(v18 + 32))(v36, v17, v20);
  v26 = v41;
  (*(v18 + 16))(v41 + OBJC_IVAR___APPCContentRepresentation_id, v25, v20);
  v27 = &v26[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v27 = v14;
  v27[1] = v16;
  v44 = 1;
  sub_1C1AC1FF8();
  sub_1C1B956F8();
  *&v26[OBJC_IVAR___APPCContentRepresentation_adType] = v43;
  v44 = 2;
  sub_1C1B4F8FC();
  sub_1C1B956F8();
  *&v26[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v43;
  v44 = 3;
  sub_1C1B4F950();
  sub_1C1B956F8();
  v28 = v37;
  v29 = v38;
  *&v26[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v43;
  v44 = 4;
  sub_1C1B4F9A4();
  sub_1C1B95678();
  v30 = v43;
  if (BYTE8(v43))
  {
    v30 = 0;
  }

  *&v26[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = v30;
  type metadata accessor for CGSize(0);
  v44 = 5;
  sub_1C1B51D08(&unk_1EDE6BB30, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
  sub_1C1B956F8();
  *&v26[OBJC_IVAR___APPCContentRepresentation_adSize] = v43;
  v44 = 6;
  sub_1C1B4F9F8();
  sub_1C1B95678();
  v31 = v43;
  if ((~v43 & 0xF000000000000007) != 0)
  {
    v32 = v43 >> 61;
    if ((v43 >> 61) > 3)
    {
      v31 = v43 & 0x1FFFFFFFFFFFFFFFLL;
      if (v32 > 5)
      {
        if (v32 == 6)
        {
          v33 = type metadata accessor for MobileRichAdInterfaceDefinitionTapAction;
          sub_1C1B51D08(&qword_1EBF09518, type metadata accessor for MobileRichAdInterfaceDefinitionTapAction, &protocol conformance descriptor for TapAction);
          v34 = &unk_1EBF09520;
        }

        else
        {
          v33 = type metadata accessor for DeepLinkTapAction;
          sub_1C1B51D08(&qword_1EBF09508, type metadata accessor for DeepLinkTapAction, &protocol conformance descriptor for TapAction);
          v34 = &unk_1EBF09510;
        }
      }

      else if (v32 == 4)
      {
        v33 = type metadata accessor for ExpandTapAction;
        sub_1C1B51D08(&qword_1EBF09538, type metadata accessor for ExpandTapAction, &protocol conformance descriptor for TapAction);
        v34 = &unk_1EBF09540;
      }

      else
      {
        v33 = type metadata accessor for OutstreamVideoTapAction;
        sub_1C1B51D08(&qword_1EBF09528, type metadata accessor for OutstreamVideoTapAction, &protocol conformance descriptor for TapAction);
        v34 = &unk_1EBF09530;
      }
    }

    else if (v32 > 1)
    {
      v31 = v43 & 0x1FFFFFFFFFFFFFFFLL;
      if (v32 == 2)
      {
        v33 = type metadata accessor for CalendarTapAction;
        sub_1C1B51D08(&qword_1EBF09558, type metadata accessor for CalendarTapAction, &protocol conformance descriptor for TapAction);
        v34 = &unk_1EBF09560;
      }

      else
      {
        v33 = type metadata accessor for StoreTapAction;
        sub_1C1B51D08(&qword_1EBF09548, type metadata accessor for StoreTapAction, &protocol conformance descriptor for TapAction);
        v34 = &unk_1EBF09550;
      }
    }

    else if (v32)
    {
      v31 = v43 & 0x1FFFFFFFFFFFFFFFLL;
      v33 = type metadata accessor for WebTapAction;
      sub_1C1B51D08(&qword_1EDE6B208, type metadata accessor for WebTapAction, &protocol conformance descriptor for TapAction);
      v34 = &unk_1EDE6B210;
    }

    else
    {
      v33 = type metadata accessor for TapAction;
      sub_1C1B51D08(&qword_1EBF08B80, type metadata accessor for TapAction, &protocol conformance descriptor for TapAction);
      v34 = &unk_1EBF08B60;
    }

    sub_1C1B51D08(v34, v33, &protocol conformance descriptor for TapAction);
    v28 = v37;
    v29 = v38;
    v26 = v41;
  }

  else
  {
    v31 = 0;
  }

  *&v26[OBJC_IVAR___APPCContentRepresentation_tapAction] = v31;
  type metadata accessor for AdPolicyData();
  v44 = 7;
  sub_1C1B51D08(&qword_1EDE6C2E8, type metadata accessor for AdPolicyData, &protocol conformance descriptor for AdPolicyData);
  sub_1C1B95678();
  (*(v29 + 8))(v36, v28);
  (*(v39 + 8))(v11, v24);
  *&v26[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v43;
  v35 = type metadata accessor for ContentRepresentation(0);
  v42.receiver = v26;
  v42.super_class = v35;
  v22 = objc_msgSendSuper2(&v42, sel_init);
  sub_1C1AA86F8(v40);
  return v22;
}

unint64_t sub_1C1B4F854()
{
  result = qword_1EDE6C308;
  if (!qword_1EDE6C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C308);
  }

  return result;
}

unint64_t sub_1C1B4F8A8()
{
  result = qword_1EBF094F8;
  if (!qword_1EBF094F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF094F8);
  }

  return result;
}

unint64_t sub_1C1B4F8FC()
{
  result = qword_1EDE6C230;
  if (!qword_1EDE6C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C230);
  }

  return result;
}

unint64_t sub_1C1B4F950()
{
  result = qword_1EDE6BEF0;
  if (!qword_1EDE6BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEF0);
  }

  return result;
}

unint64_t sub_1C1B4F9A4()
{
  result = qword_1EBF09500;
  if (!qword_1EBF09500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09500);
  }

  return result;
}

unint64_t sub_1C1B4F9F8()
{
  result = qword_1EDE6BEE8;
  if (!qword_1EDE6BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEE8);
  }

  return result;
}

uint64_t sub_1C1B4FA4C(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09568, &qword_1C1BA22B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B4F854();
  sub_1C1B95A18();
  LOBYTE(v13) = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    *&v13 = *(v3 + OBJC_IVAR___APPCContentRepresentation_adType);
    v14 = 1;
    sub_1C1AC1FA4();
    sub_1C1B95808();
    *&v13 = *(v3 + OBJC_IVAR___APPCContentRepresentation_desiredPosition);
    v14 = 2;
    sub_1C1B4FE30();
    sub_1C1B95808();
    *&v13 = *(v3 + OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition);
    v14 = 3;
    sub_1C1B4FE84();
    sub_1C1B95808();
    *&v13 = *(v3 + OBJC_IVAR___APPCContentRepresentation_privacyMarkerType);
    v14 = 4;
    sub_1C1B4FED8();
    sub_1C1B95808();
    v13 = *(v3 + OBJC_IVAR___APPCContentRepresentation_adSize);
    v14 = 5;
    type metadata accessor for CGSize(0);
    sub_1C1B51D08(&qword_1EDE6BB40, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    sub_1C1B95808();
    v9 = *(v3 + OBJC_IVAR___APPCContentRepresentation_tapAction);
    if (v9)
    {
      v10 = sub_1C1B92408(*(v3 + OBJC_IVAR___APPCContentRepresentation_tapAction));
      *&v13 = v10;
      v14 = 6;
      sub_1C1B51530();
      v11 = v9;
      sub_1C1B95788();
    }

    *&v13 = *(v3 + OBJC_IVAR___APPCContentRepresentation_adPolicyData);
    v14 = 7;
    type metadata accessor for AdPolicyData();
    sub_1C1B51D08(&qword_1EDE6C2F0, type metadata accessor for AdPolicyData, &protocol conformance descriptor for AdPolicyData);
    sub_1C1B95788();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C1B4FE30()
{
  result = qword_1EDE6C240;
  if (!qword_1EDE6C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C240);
  }

  return result;
}

unint64_t sub_1C1B4FE84()
{
  result = qword_1EDE6BF00;
  if (!qword_1EDE6BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BF00);
  }

  return result;
}

unint64_t sub_1C1B4FED8()
{
  result = qword_1EBF09570;
  if (!qword_1EBF09570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09570);
  }

  return result;
}

uint64_t sub_1C1B4FF2C(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 7368801;
        case 7:
          return 0x73726F736E6F7073;
        case 8:
          return 0x686372616573;
      }

      goto LABEL_19;
    }

    if (a1 == 4)
    {
      return 0x65766974616ELL;
    }

    return 0x72656E6E6162;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6974737265746E69;
      }

LABEL_19:
      result = sub_1C1B958C8();
      __break(1u);
      return result;
    }

    return 0x72656E6E6162;
  }

  if (a1 == 2)
  {
    return 0x6F69647561;
  }

  else
  {
    return 0x6F65646976;
  }
}

unint64_t AdPrivacyMarkerType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1C1B50208@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((*result - 1101) < 2 || v2 == 0)
  {
    v4 = 0;
  }

  else
  {
    v2 = 0;
    v4 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t ContentRepresentation.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCContentRepresentation_identifier);

  return v1;
}

uint64_t ContentRepresentation.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCContentRepresentation_id;
  v4 = sub_1C1B945F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *ContentRepresentation.tapAction.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCContentRepresentation_tapAction);
  v2 = v1;
  return v1;
}

void *ContentRepresentation.adPolicyData.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCContentRepresentation_adPolicyData);
  v2 = v1;
  return v1;
}

uint64_t sub_1C1B505FC()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6F69746341706174;
  if (v1 != 6)
  {
    v3 = 0x7963696C6F506461;
  }

  v4 = 0x657A69536461;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 == 2)
  {
    v5 = 0x5064657269736564;
  }

  if (*v0)
  {
    v2 = 0x657079546461;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1B50710@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1B51954(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1B50738(uint64_t a1)
{
  v2 = sub_1C1B4F854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B50774(uint64_t a1)
{
  v2 = sub_1C1B4F854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ContentRepresentation.__allocating_init(id:adType:desiredPosition:privacyMarkerPosition:privacyMarkerType:adSize:tapAction:adPolicyData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v10 = v9;
  v18 = objc_allocWithZone(v10);
  v19 = sub_1C1B945A8();
  v20 = &v18[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v20 = v19;
  v20[1] = v21;
  v22 = OBJC_IVAR___APPCContentRepresentation_id;
  v23 = sub_1C1B945F8();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v18[v22], a1, v23);
  *&v18[OBJC_IVAR___APPCContentRepresentation_adType] = a2;
  *&v18[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = a3;
  *&v18[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = a4;
  *&v18[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = a5;
  v25 = &v18[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v25 = a8;
  v25[1] = a9;
  *&v18[OBJC_IVAR___APPCContentRepresentation_tapAction] = a6;
  *&v18[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = a7;
  v30.receiver = v18;
  v30.super_class = v10;
  v26 = objc_msgSendSuper2(&v30, sel_init);
  (*(v24 + 8))(a1, v23);
  return v26;
}

id ContentRepresentation.__allocating_init(identifier:adType:desiredPosition:privacyMarkerPosition:privacyMarkerType:adSize:tapAction:adPolicyData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v11 = v10;
  v62 = a3;
  v63 = a8;
  v58 = a6;
  v59 = a7;
  v57 = a5;
  v60 = a2;
  v16 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v55 - v17;
  v19 = sub_1C1B945F8();
  v20 = *(v19 - 8);
  v64 = v19;
  v65 = v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v56 = &v55 - v23;
  v24 = objc_allocWithZone(v10);
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v25 = sub_1C1B94BE8();
  sub_1C1AB4454(v25, qword_1EDE6D058);
  v26 = sub_1C1B94BC8();
  v27 = sub_1C1B95128();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1C1AA2000, v26, v27, "Created a content representation using a deprecated initializer", v28, 2u);
    v29 = v28;
    v11 = v10;
    MEMORY[0x1C6908230](v29, -1, -1);
  }

  v30 = v60;
  sub_1C1B94598();
  v32 = v64;
  v31 = v65;
  if ((*(v65 + 48))(v18, 1, v64) == 1)
  {
    v56 = a1;
    sub_1C1AA7C8C(v18, &unk_1EBF098E0, &qword_1C1BA22A0);

    v33 = v30;
    v34 = sub_1C1B94BC8();
    v35 = sub_1C1B95128();

    v36 = v34;
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v55 = v11;
      v39 = v38;
      v66 = v38;
      *v37 = 136315138;
      v40 = sub_1C1AC7650(v56, v33, &v66);

      *(v37 + 4) = v40;
      v32 = v64;
      _os_log_impl(&dword_1C1AA2000, v36, v35, "Tried to create a content representation with an invalid id: %s", v37, 0xCu);
      sub_1C1AA86F8(v39);
      v41 = v39;
      v11 = v55;
      MEMORY[0x1C6908230](v41, -1, -1);
      v42 = v37;
      v31 = v65;
      MEMORY[0x1C6908230](v42, -1, -1);
    }

    else
    {
    }

    v45 = v61;
    sub_1C1B945E8();
    (*(v31 + 32))(&v24[OBJC_IVAR___APPCContentRepresentation_id], v45, v32);
  }

  else
  {

    v43 = *(v65 + 32);
    v44 = v56;
    v43(v56, v18, v32);
    v43(&v24[OBJC_IVAR___APPCContentRepresentation_id], v44, v32);
    v31 = v65;
    v45 = v61;
  }

  (*(v31 + 16))(v45, &v24[OBJC_IVAR___APPCContentRepresentation_id], v32);
  v46 = sub_1C1B945A8();
  v47 = v31;
  v48 = v46;
  v50 = v49;
  (*(v47 + 8))(v45, v32);
  v51 = &v24[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v51 = v48;
  v51[1] = v50;
  *&v24[OBJC_IVAR___APPCContentRepresentation_adType] = v62;
  *&v24[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = a4;
  v52 = v58;
  *&v24[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v57;
  *&v24[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = v52;
  v53 = &v24[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v53 = a9;
  v53[1] = a10;
  *&v24[OBJC_IVAR___APPCContentRepresentation_tapAction] = v59;
  *&v24[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v63;
  v67.receiver = v24;
  v67.super_class = v11;
  return objc_msgSendSuper2(&v67, sel_init);
}

id ContentRepresentation.init(identifier:adType:desiredPosition:privacyMarkerPosition:privacyMarkerType:adSize:tapAction:adPolicyData:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, double a9, double a10)
{
  v11 = v10;
  v62 = a6;
  v63 = a7;
  v60 = a4;
  v61 = a5;
  v59 = a3;
  v17 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v56 - v18;
  v20 = sub_1C1B945F8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v58 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v57 = v56 - v24;
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v25 = sub_1C1B94BE8();
  v56[1] = sub_1C1AB4454(v25, qword_1EDE6D058);
  v26 = sub_1C1B94BC8();
  v27 = sub_1C1B95128();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v21;
    v29 = a1;
    v30 = v20;
    v31 = a2;
    v32 = a8;
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1C1AA2000, v26, v27, "Created a content representation using a deprecated initializer", v33, 2u);
    v34 = v33;
    a8 = v32;
    a2 = v31;
    v20 = v30;
    a1 = v29;
    v21 = v28;
    MEMORY[0x1C6908230](v34, -1, -1);
  }

  sub_1C1B94598();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1C1AA7C8C(v19, &unk_1EBF098E0, &qword_1C1BA22A0);

    v35 = sub_1C1B94BC8();
    v36 = sub_1C1B95128();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v57 = a8;
      v38 = v37;
      v39 = swift_slowAlloc();
      v40 = a1;
      v41 = v39;
      v64 = v39;
      *v38 = 136315138;
      v42 = sub_1C1AC7650(v40, a2, &v64);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1C1AA2000, v35, v36, "Tried to create a content representation with an invalid id: %s", v38, 0xCu);
      sub_1C1AA86F8(v41);
      MEMORY[0x1C6908230](v41, -1, -1);
      v43 = v38;
      a8 = v57;
      MEMORY[0x1C6908230](v43, -1, -1);
    }

    else
    {
    }

    v46 = v58;
    sub_1C1B945E8();
    (*(v21 + 32))(&v11[OBJC_IVAR___APPCContentRepresentation_id], v46, v20);
  }

  else
  {

    v44 = *(v21 + 32);
    v45 = v57;
    v44(v57, v19, v20);
    v44(&v11[OBJC_IVAR___APPCContentRepresentation_id], v45, v20);
    v46 = v58;
  }

  (*(v21 + 16))(v46, &v11[OBJC_IVAR___APPCContentRepresentation_id], v20);
  v47 = sub_1C1B945A8();
  v49 = v48;
  (*(v21 + 8))(v46, v20);
  v50 = &v11[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v50 = v47;
  v50[1] = v49;
  v51 = v60;
  *&v11[OBJC_IVAR___APPCContentRepresentation_adType] = v59;
  *&v11[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v51;
  v52 = v62;
  *&v11[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v61;
  *&v11[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = v52;
  v53 = &v11[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v53 = a9;
  v53[1] = a10;
  *&v11[OBJC_IVAR___APPCContentRepresentation_tapAction] = v63;
  *&v11[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = a8;
  v54 = type metadata accessor for ContentRepresentation(0);
  v65.receiver = v11;
  v65.super_class = v54;
  return objc_msgSendSuper2(&v65, sel_init);
}

id ContentRepresentation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContentRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentRepresentation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B514A0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C1B51530()
{
  result = qword_1EDE6AD60;
  if (!qword_1EDE6AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD60);
  }

  return result;
}

unint64_t sub_1C1B51588()
{
  result = qword_1EBF09578;
  if (!qword_1EBF09578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09578);
  }

  return result;
}

unint64_t sub_1C1B515E0()
{
  result = qword_1EBF09580;
  if (!qword_1EBF09580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09580);
  }

  return result;
}

unint64_t sub_1C1B51638()
{
  result = qword_1EBF09588;
  if (!qword_1EBF09588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09588);
  }

  return result;
}

uint64_t sub_1C1B517A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C1B517F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1C1B51850()
{
  result = qword_1EBF09590;
  if (!qword_1EBF09590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09590);
  }

  return result;
}

unint64_t sub_1C1B518A8()
{
  result = qword_1EDE6C2F8;
  if (!qword_1EDE6C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C2F8);
  }

  return result;
}

unint64_t sub_1C1B51900()
{
  result = qword_1EDE6C300;
  if (!qword_1EDE6C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C300);
  }

  return result;
}

uint64_t sub_1C1B51954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657079546461 && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5064657269736564 && a2 == 0xEF6E6F697469736FLL || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C1BA6B70 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C1BA6B90 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657A69536461 && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F69746341706174 && a2 == 0xE90000000000006ELL || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7963696C6F506461 && a2 == 0xEC00000061746144)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1C1B51C0C()
{
  result = qword_1EDE6C238;
  if (!qword_1EDE6C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C238);
  }

  return result;
}

unint64_t sub_1C1B51C60()
{
  result = qword_1EBF09598;
  if (!qword_1EBF09598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09598);
  }

  return result;
}

unint64_t sub_1C1B51CB4()
{
  result = qword_1EDE6BEF8;
  if (!qword_1EDE6BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEF8);
  }

  return result;
}

uint64_t sub_1C1B51D08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AdContentState.description.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0x616974696E696E75;
    }

    else
    {
      return 0x696C616974696E69;
    }
  }

  else if (EnumCaseMultiPayload)
  {

    sub_1C1AC3404(&qword_1EBF07AD8, &qword_1C1B98EB0);
    v7 = *(a1 + 16);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(v7 - 8) + 8))(&v4[*(TupleTypeMetadata2 + 48)], v7);
    return 0x746E65746E6F63;
  }

  else
  {
    (*(v2 + 8))(v4, a1);
    return 0x6E65746E6F436F6ELL;
  }
}

uint64_t sub_1C1B51F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdContent(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    do
    {
      sub_1C1AC204C(v13, v10);
      sub_1C1AC204C(v14, v7);
      if (*(v10 + 1) == *(v7 + 1) && *(v10 + 2) == *(v7 + 2))
      {
        sub_1C1AC20B0(v7);
        sub_1C1AC20B0(v10);
      }

      else
      {
        v17 = sub_1C1B95888();
        sub_1C1AC20B0(v7);
        sub_1C1AC20B0(v10);
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      --v11;
    }

    while (v11);
  }

  return 1;
}

uint64_t sub_1C1B520B8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C1B945F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v52 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v42 - v8;
  v9 = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_44;
  }

  v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v10)
    {
      goto LABEL_29;
    }

    v12 = v7 & 0xFFFFFFFFFFFFFF8;
    v13 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v44 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 < 0)
    {
      v12 = v7;
    }

    if (v9)
    {
      v13 = v12;
    }

    v14 = a2 & 0xFFFFFFFFFFFFFF8;
    v15 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v43 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v14 = a2;
    }

    if (a2 >> 62)
    {
      v15 = v14;
    }

    if (v13 == v15)
    {
LABEL_29:
      v24 = 1;
      return v24 & 1;
    }

    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v7) & 0xC000000000000001) != 0)
    {
      v50 = a2 & 0xC000000000000001;
      v51 = v7 & 0xC000000000000001;
      v48 = (v4 + 8);
      v49 = (v4 + 16);
      v9 = 4;
      v46 = v7;
      v47 = a2;
      v45 = v10;
      v16 = v53;
      while (1)
      {
        v17 = v9 - 4;
        v18 = v9 - 3;
        if (__OFADD__(v9 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v51)
        {
          v4 = MEMORY[0x1C6907490](v9 - 4);
          if (!v50)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v17 >= *(v44 + 16))
          {
            goto LABEL_42;
          }

          v4 = *(v7 + 8 * v9);

          if (!v50)
          {
LABEL_24:
            if (v17 >= *(v43 + 16))
            {
              goto LABEL_43;
            }

            v19 = *(a2 + 8 * v9);

            goto LABEL_26;
          }
        }

        v19 = MEMORY[0x1C6907490](v9 - 4, a2);
LABEL_26:
        v20 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
        swift_beginAccess();
        v21 = *v49;
        (*v49)(v16, v4 + v20, v3);
        v22 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
        swift_beginAccess();
        v23 = v52;
        v21(v52, v19 + v22, v3);
        v24 = sub_1C1B945C8();

        v25 = *v48;
        (*v48)(v23, v3);
        v25(v16, v3);
        if (v24)
        {
          ++v9;
          v7 = v46;
          a2 = v47;
          if (v18 != v45)
          {
            continue;
          }
        }

        return v24 & 1;
      }
    }

    v26 = (v7 + 32);
    v27 = (a2 + 32);
    v28 = *(v44 + 16);
    v29 = *(v43 + 16);
    v48 = (v4 + 8);
    v49 = (v4 + 16);
    v30 = v10 - 1;
    while (1)
    {
      if (!v28)
      {
        goto LABEL_40;
      }

      if (!v29)
      {
        break;
      }

      v31 = *v26;
      v32 = *v27;
      v50 = (v27 + 1);
      v51 = (v26 + 1);
      v33 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
      swift_beginAccess();
      v34 = *v49;
      v35 = v31 + v33;
      v9 = v52;
      v4 = v53;
      (*v49)(v53, v35, v3);
      v36 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
      swift_beginAccess();
      v34(v9, v32 + v36, v3);
      v24 = sub_1C1B945C8();
      a2 = *v48;
      (*v48)(v9, v3);
      (a2)(v4, v3);
      v38 = v30-- != 0;
      if (v24)
      {
        --v29;
        --v28;
        v27 = v50;
        v26 = v51;
        if (v38)
        {
          continue;
        }
      }

      return v24 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v39 = v7;
    v40 = sub_1C1B953A8();
    v7 = v39;
    v10 = v40;
  }

  v41 = v7;
  result = sub_1C1B953A8();
  v7 = v41;
  if (v10 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v24 = 0;
  return v24 & 1;
}

uint64_t static AdContentState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v53 = *(a3 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v50 = &v48 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v48 - v8;
  v54 = v9;
  v51 = v10;
  v11 = type metadata accessor for AdContentState(0, v9, v10, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = &v48 - v21;
  v23 = (&v48 + *(v20 + 48) - v21);
  v52 = v12;
  v24 = *(v12 + 16);
  v24(&v48 - v21, a1, v11);
  v24(v23, v55, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_15;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_15:
      v41 = 0;
      v11 = TupleTypeMetadata2;
      goto LABEL_16;
    }

    v41 = 1;
    v19 = v52;
    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    v24(v17, v22, v11);
    v26 = swift_getEnumCaseMultiPayload();
    v27 = v53;
    if (!v26)
    {
      v44 = v48;
      v45 = v54;
      (*(v53 + 32))(v48, v23, v54);
      v41 = sub_1C1B94D68();
      v46 = *(v27 + 8);
      v46(v44, v45);
      v46(v17, v45);
      v19 = v52;
      goto LABEL_16;
    }

    (*(v53 + 8))(v17, v54);
    goto LABEL_15;
  }

  v24(v15, v22, v11);
  v28 = *v15;
  sub_1C1AC3404(&qword_1EBF07AD8, &qword_1C1B98EB0);
  v29 = v54;
  v30 = *(swift_getTupleTypeMetadata2() + 48);
  v31 = swift_getEnumCaseMultiPayload();
  v32 = v53;
  if (v31 != 1)
  {
    (*(v53 + 8))(v15 + v30, v29);

    goto LABEL_15;
  }

  v33 = v29;
  v34 = *v23;
  v55 = v28;
  v35 = *(v53 + 32);
  v36 = v15 + v30;
  v37 = v50;
  v35(v50, v36, v33);
  v38 = v23 + v30;
  v39 = v49;
  v35(v49, v38, v33);
  v40 = sub_1C1B51F30(v55, v34);

  if (v40)
  {
    v41 = sub_1C1B94D68();
    v42 = *(v32 + 8);
    v42(v39, v33);
    v42(v37, v33);
  }

  else
  {
    v47 = *(v32 + 8);
    v47(v39, v33);
    v47(v37, v33);
    v41 = 0;
  }

  v19 = v52;
LABEL_16:
  (*(v19 + 8))(v22, v11);
  return v41 & 1;
}

uint64_t sub_1C1B52AAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1C1AC3404(&qword_1EBF07AD8, &qword_1C1B98EB0);
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C1B52B50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((*(v3 + 80) + 8) & ~*(v3 + 80)) + v4;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_27;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v11 = ((~(-1 << v8) + a2 - v6) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 < 2)
    {
LABEL_27:
      v13 = *(a1 + v5);
      if (v6 <= (v13 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v13);
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_27;
  }

LABEL_16:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v12) + 1;
}

void sub_1C1B52CC8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = (1u >> (8 * v6)) ^ 0xFD;
  if (v6 > 3)
  {
    v8 = 253;
  }

  v9 = v6 + 1;
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
        a1[v6] = -a2;
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
  if (v6 == -1)
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

uint64_t sub_1C1B52ED4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xE900000000000079;
    v13 = 0x6574736575716572;
    if (a1 == 2)
    {
      v14 = 0xE900000000000072;
    }

    else
    {
      v13 = 0x746E6F437377656ELL;
      v14 = 0xEB00000000747865;
    }

    v15 = 0x6C6F686563616C70;
    if (a1)
    {
      v12 = 0xEC00000073726564;
    }

    else
    {
      v15 = 0x726F746E65766E69;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v14;
    }
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x74696D696CLL;
    v6 = 0xE800000000000000;
    v7 = 0x676E696863746566;
    if (a1 != 7)
    {
      v7 = 0x676E6974696177;
      v6 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x65726F7453707061;
    v9 = 0xEF747865746E6F43;
    if (a1 != 4)
    {
      v8 = 0xD000000000000011;
      v9 = 0x80000001C1BA58E0;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        if (v10 != 0x6574736575716572)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v2 = 0xEB00000000747865;
        if (v10 != 0x746E6F437377656ELL)
        {
          goto LABEL_53;
        }
      }
    }

    else if (a2)
    {
      v2 = 0xEC00000073726564;
      if (v10 != 0x6C6F686563616C70)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v2 = 0xE900000000000079;
      if (v10 != 0x726F746E65766E69)
      {
        goto LABEL_53;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v2 = 0xEF747865746E6F43;
      if (v10 != 0x65726F7453707061)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v2 = 0x80000001C1BA58E0;
      if (v10 != 0xD000000000000011)
      {
LABEL_53:
        v16 = sub_1C1B95888();
        goto LABEL_54;
      }
    }
  }

  else if (a2 == 6)
  {
    v2 = 0xE500000000000000;
    if (v10 != 0x74696D696CLL)
    {
      goto LABEL_53;
    }
  }

  else if (a2 == 7)
  {
    v2 = 0xE800000000000000;
    if (v10 != 0x676E696863746566)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    if (v10 != 0x676E6974696177)
    {
      goto LABEL_53;
    }
  }

  if (v11 != v2)
  {
    goto LABEL_53;
  }

  v16 = 1;
LABEL_54:

  return v16 & 1;
}

uint64_t sub_1C1B531CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xEE00726569666974;
  v5 = 0x654D73656E755469;
  if (a1 == 2)
  {
    v5 = 0x6E6564496D616461;
  }

  else
  {
    v4 = 0xEE00617461646174;
  }

  v6 = 0xD000000000000011;
  if (a1)
  {
    v3 = 0x80000001C1BA56E0;
  }

  else
  {
    v6 = 7107189;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6E6564496D616461;
    }

    else
    {
      v11 = 0x654D73656E755469;
    }

    if (a2 == 2)
    {
      v10 = 0xEE00726569666974;
    }

    else
    {
      v10 = 0xEE00617461646174;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = 7107189;
    }

    if (a2)
    {
      v10 = 0x80000001C1BA56E0;
    }

    else
    {
      v10 = 0xE300000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_1C1B95888();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1C1B5333C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x6565667265707573;
  v5 = 0xEE003179656B5F64;
  if (a1 != 4)
  {
    v4 = 0x6F72677265707573;
    v5 = 0xEF3179656B5F7075;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = v4;
  }

  if (a1 == 3)
  {
    v5 = 0x80000001C1BA5640;
  }

  v7 = 0xD00000000000001ALL;
  if (v2 == 1)
  {
    v3 = 0x80000001C1BA5610;
  }

  else
  {
    v7 = 0x656372756F73;
  }

  if (v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (!v2)
  {
    v3 = 0x80000001C1BA55F0;
  }

  if (v2 <= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0x80000001C1BA5640;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_40;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xEE003179656B5F64;
      if (v9 != 0x6565667265707573)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v11 = 0xEF3179656B5F7075;
      if (v9 != 0x6F72677265707573)
      {
LABEL_40:
        v12 = sub_1C1B95888();
        goto LABEL_41;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0x80000001C1BA5610;
      if (v9 != 0xD00000000000001ALL)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656372756F73)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0x80000001C1BA55F0;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_40;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_40;
  }

  v12 = 1;
LABEL_41:

  return v12 & 1;
}

uint64_t sub_1C1B53540(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000676E69646ELL;
  v3 = 0x614C686372616573;
  v4 = a1;
  v5 = 0x6F6C537961646F74;
  v6 = 0xEA00000000003374;
  if (a1 == 5)
  {
    v6 = 0xEA00000000003274;
  }

  else
  {
    v5 = 0x6F6C537961646F74;
  }

  v7 = 0x50746375646F7270;
  v8 = 0xEB00000000656761;
  if (a1 != 3)
  {
    v7 = 0x6F6C537961646F74;
    v8 = 0xEA00000000003174;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6552686372616573;
  v10 = 0xED000073746C7573;
  if (a1 != 1)
  {
    v9 = 0x6F44676E69727564;
    v10 = 0xEE0064616F6C6E77;
  }

  if (!a1)
  {
    v9 = 0x614C686372616573;
    v10 = 0xED0000676E69646ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xED000073746C7573;
        if (v11 != 0x6552686372616573)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEE0064616F6C6E77;
        if (v11 != 0x6F44676E69727564)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEA00000000003274;
        if (v11 != 0x6F6C537961646F74)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEA00000000003374;
        if (v11 != 0x6F6C537961646F74)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xEB00000000656761;
      if (v11 != 0x50746375646F7270)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x6F6C537961646F74;
    v2 = 0xEA00000000003174;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_1C1B95888();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_1C1B537B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "promotedContentIdentifier";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "tive";
      v4 = 0xD000000000000010;
    }

    else
    {
      v5 = "primitiveCreator";
      v4 = 0xD000000000000014;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000019;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3)
    {
      v5 = "DedupeState";
    }

    else
    {
      v5 = "promotedContentIdentifier";
    }
  }

  if (a2 > 1u)
  {
    v2 = "tive";
    v6 = "primitiveCreator";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000010;
    }

    else
    {
      v8 = 0xD000000000000014;
    }
  }

  else
  {
    v6 = "DedupeState";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000019;
    }

    else
    {
      v8 = 0xD000000000000011;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C1B95888();
  }

  return v10 & 1;
}

uint64_t sub_1C1B538E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7364980;
  v3 = a1;
  v4 = 0xE300000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x706154646961726DLL;
  if (a1 != 6)
  {
    v6 = 0x6B6E694C70656564;
    v5 = 0xEB00000000706154;
  }

  v7 = 0x6154646E61707865;
  v8 = 0xE900000000000070;
  if (a1 != 4)
  {
    v7 = 0x616572747374756FLL;
    v8 = 0xEC0000007061546DLL;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x7261646E656C6163;
  v10 = 0xEB00000000706154;
  if (a1 != 2)
  {
    v9 = 0x70615465726F7473;
    v10 = 0xE800000000000000;
  }

  v11 = 0x706154626577;
  if (a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v11 = 7364980;
  }

  if (a1 > 1u)
  {
    v4 = v10;
  }

  else
  {
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (v3 <= 3)
  {
    v13 = v4;
  }

  else
  {
    v13 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v14 = 0xE600000000000000;
        v2 = 0x706154626577;
      }

      else
      {
        v14 = 0xE300000000000000;
      }

      goto LABEL_37;
    }

    if (a2 != 2)
    {
      v14 = 0xE800000000000000;
      v2 = 0x70615465726F7473;
      goto LABEL_37;
    }

    v2 = 0x7261646E656C6163;
LABEL_36:
    v14 = 0xEB00000000706154;
    goto LABEL_37;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v14 = 0xE800000000000000;
      v2 = 0x706154646961726DLL;
      goto LABEL_37;
    }

    v2 = 0x6B6E694C70656564;
    goto LABEL_36;
  }

  if (a2 == 4)
  {
    v2 = 0x6154646E61707865;
    v14 = 0xE900000000000070;
  }

  else
  {
    v2 = 0x616572747374756FLL;
    v14 = 0xEC0000007061546DLL;
  }

LABEL_37:
  if (v12 == v2 && v13 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1C1B95888();
  }

  return v15 & 1;
}

uint64_t sub_1C1B53B3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000044;
  v3 = 0x49656C6369747261;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7369747265766461;
    }

    else
    {
      v5 = 0x6E676961706D6163;
    }

    if (v4 == 2)
    {
      v6 = 0xEE00656D614E7265;
    }

    else
    {
      v6 = 0xEC00000061746144;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x54656C6369747261;
    }

    else
    {
      v5 = 0x49656C6369747261;
    }

    if (v4)
    {
      v6 = 0xEC000000656C7469;
    }

    else
    {
      v6 = 0xE900000000000044;
    }
  }

  v7 = 0x7369747265766461;
  v8 = 0xEE00656D614E7265;
  if (a2 != 2)
  {
    v7 = 0x6E676961706D6163;
    v8 = 0xEC00000061746144;
  }

  if (a2)
  {
    v3 = 0x54656C6369747261;
    v2 = 0xEC000000656C7469;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C1B95888();
  }

  return v11 & 1;
}

uint64_t sub_1C1B53CB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x647261646E617473;
    }

    else
    {
      v3 = 7958113;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x656C62756F64;
  }

  else if (a1 == 3)
  {
    v3 = 0x65526D756964656DLL;
    v4 = 0xEF656C676E617463;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x656772616CLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x647261646E617473;
    }

    else
    {
      v9 = 7958113;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x65526D756964656DLL;
    v6 = 0xEF656C676E617463;
    if (a2 != 3)
    {
      v5 = 0x656772616CLL;
      v6 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x656C62756F64;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1C1B95888();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1C1B53E44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 2)
    {
      v4 = 0x80000001C1BA5750;
    }

    else
    {
      v4 = 0x80000001C1BA5770;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6E6564496D616461;
    }

    else
    {
      v3 = 0x6761546461;
    }

    if (v2)
    {
      v4 = 0xEE00726569666974;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v6 = 0x80000001C1BA5750;
    }

    else
    {
      v6 = 0x80000001C1BA5770;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6E6564496D616461;
    }

    else
    {
      v5 = 0x6761546461;
    }

    if (a2)
    {
      v6 = 0xEE00726569666974;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_1C1B95888();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_1C1B53F94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1684632949;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x657A69536461;
    }

    else
    {
      v4 = 0x6465746F6D6F7270;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEF746E65746E6F43;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x657079546461;
    }

    else
    {
      v4 = 1684632949;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x657A69536461;
  if (a2 != 2)
  {
    v8 = 0x6465746F6D6F7270;
    v7 = 0xEF746E65746E6F43;
  }

  if (a2)
  {
    v2 = 0x657079546461;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C1B95888();
  }

  return v11 & 1;
}

uint64_t sub_1C1B540D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00004C52557465;
  v3 = 0x7373416F65646976;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x7275446F65646976;
    }

    else
    {
      v5 = 0x7373416F65646976;
    }

    if (v4)
    {
      v6 = 0xED00006E6F697461;
    }

    else
    {
      v6 = 0xED00004C52557465;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x65746172746962;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x74536C616E676973;
    }

    else
    {
      v5 = 0x697463656E6E6F63;
    }

    if (v4 == 3)
    {
      v6 = 0xEE006874676E6572;
    }

    else
    {
      v6 = 0xEE00657079546E6FLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x65746172746962;
  v9 = 0x74536C616E676973;
  v10 = 0xEE006874676E6572;
  if (a2 != 3)
  {
    v9 = 0x697463656E6E6F63;
    v10 = 0xEE00657079546E6FLL;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x7275446F65646976;
    v2 = 0xED00006E6F697461;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C1B95888();
  }

  return v13 & 1;
}

uint64_t sub_1C1B542AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000726564;
  v3 = 0x6C6F686563616C70;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x6D6E6F7269766E65;
    v12 = 0xEB00000000746E65;
    if (a1 != 6)
    {
      v11 = 0x6973736572706D69;
      v12 = 0xEC00000064496E6FLL;
    }

    v13 = 0xE800000000000000;
    v14 = 0x7265766965636572;
    if (a1 != 4)
    {
      v14 = 0x68636E617262;
      v13 = 0xE600000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x80000001C1BA4CF0;
    if (a1 == 2)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = 0x6C6F686563616C70;
    }

    if (a1 != 2)
    {
      v5 = 0xEB00000000726564;
    }

    v7 = 0x80000001C1BA4CB0;
    v8 = 0xD000000000000019;
    if (a1)
    {
      v8 = 0xD000000000000011;
      v7 = 0x80000001C1BA4CD0;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEB00000000746E65;
        if (v9 != 0x6D6E6F7269766E65)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0xEC00000064496E6FLL;
        if (v9 != 0x6973736572706D69)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_44;
    }

    if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v9 != 0x7265766965636572)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    v2 = 0xE600000000000000;
    v3 = 0x68636E617262;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v2 = 0x80000001C1BA4CB0;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }

      v15 = "contextIdentifier";
LABEL_40:
      v2 = (v15 - 32) | 0x8000000000000000;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    if (a2 == 2)
    {
      v15 = "journeyIdentifier";
      goto LABEL_40;
    }
  }

  if (v9 != v3)
  {
LABEL_47:
    v16 = sub_1C1B95888();
    goto LABEL_48;
  }

LABEL_44:
  if (v10 != v2)
  {
    goto LABEL_47;
  }

  v16 = 1;
LABEL_48:

  return v16 & 1;
}

uint64_t sub_1C1B54538(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x746E6572727563;
  v7 = 0xE400000000000000;
  v8 = 1954047342;
  if (a1 != 4)
  {
    v8 = 0x746E6563616A6461;
    v7 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x657A695378616DLL;
  if (a1 != 1)
  {
    v10 = 0x6574736575716572;
    v9 = 0xEB00000000644164;
  }

  if (!a1)
  {
    v10 = 0x696669746E656469;
    v9 = 0xEA00000000007265;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x746E6572727563)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1954047342)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x746E6563616A6461)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x657A695378616DLL)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6574736575716572;
      v2 = 0xEB00000000644164;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1C1B95888();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1C1B54710(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6F65646976;
    }

    else
    {
      v3 = 0x72656E6E6162;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x65766974616ELL;
  }

  else if (a1 == 3)
  {
    v3 = 0x614C686372616573;
    v4 = 0xED0000676E69646ELL;
  }

  else
  {
    v3 = 0x614C746E65696C63;
    v4 = 0xEC00000074756F79;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6F65646976;
    }

    else
    {
      v9 = 0x72656E6E6162;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x614C686372616573;
    v6 = 0xED0000676E69646ELL;
    if (a2 != 3)
    {
      v5 = 0x614C746E65696C63;
      v6 = 0xEC00000074756F79;
    }

    if (a2 == 2)
    {
      v7 = 0x65766974616ELL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1C1B95888();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1C1B54910()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B54A24(uint64_t a1)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1B54B24(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

unint64_t sub_1C1B54C34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B55998(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C1B54C64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00004C52557465;
  v4 = 0x7373416F65646976;
  v5 = 0xE700000000000000;
  v6 = 0x65746172746962;
  v7 = 0xEE006874676E6572;
  v8 = 0x74536C616E676973;
  if (v2 != 3)
  {
    v8 = 0x697463656E6E6F63;
    v7 = 0xEE00657079546E6FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7275446F65646976;
    v3 = 0xED00006E6F697461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1C1B54D34()
{
  v1 = *v0;
  v2 = 0x7373416F65646976;
  v3 = 0x65746172746962;
  v4 = 0x74536C616E676973;
  if (v1 != 3)
  {
    v4 = 0x697463656E6E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7275446F65646976;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1C1B54E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B55998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B54E28(uint64_t a1)
{
  v2 = sub_1C1B552C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B54E64(uint64_t a1)
{
  v2 = sub_1C1B552C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *OutstreamVideoInfo.init(from:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1C1AC1F08(&qword_1EBF095A0, &qword_1C1BA28C8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B552C8();
  sub_1C1B95A08();
  if (v1)
  {
    v18 = v19;
    sub_1C1AA86F8(a1);
    type metadata accessor for OutstreamVideoInfo(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v7;
    sub_1C1B944A8();
    v21 = 0;
    sub_1C1AEF214(&unk_1EDE6C3A0, MEMORY[0x1E6968FD0]);
    v11 = v6;
    sub_1C1B95678();
    v13 = v19;
    sub_1C1AEF258(v5, v19 + OBJC_IVAR___APPCOutstreamVideoInfo_videoAssetURL);
    v21 = 1;
    sub_1C1B956B8();
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *&v13[OBJC_IVAR___APPCOutstreamVideoInfo_videoDuration] = v15;
    v21 = 2;
    sub_1C1B956B8();
    *&v13[OBJC_IVAR___APPCOutstreamVideoInfo_bitrate] = v16;
    v21 = 3;
    *&v13[OBJC_IVAR___APPCOutstreamVideoInfo_signalStrength] = sub_1C1B956E8();
    v21 = 4;
    *&v13[OBJC_IVAR___APPCOutstreamVideoInfo_connectionType] = sub_1C1B956D8();
    v17 = type metadata accessor for OutstreamVideoInfo(0);
    v20.receiver = v13;
    v20.super_class = v17;
    v18 = objc_msgSendSuper2(&v20, sel_init);
    (*(v10 + 8))(v9, v11);
    sub_1C1AA86F8(a1);
  }

  return v18;
}

unint64_t sub_1C1B552C8()
{
  result = qword_1EBF095A8;
  if (!qword_1EBF095A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF095A8);
  }

  return result;
}

uint64_t type metadata accessor for OutstreamVideoInfo(uint64_t a1)
{
  result = qword_1EDE6C0E0;
  if (!qword_1EDE6C0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1B55368(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF095B0, &qword_1C1BA28D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B552C8();
  sub_1C1B95A18();
  v10[15] = 0;
  sub_1C1B944A8();
  sub_1C1AEF214(&unk_1EDE6C3B0, MEMORY[0x1E6968FB8]);
  sub_1C1B95788();
  if (!v2)
  {
    [*(v3 + OBJC_IVAR___APPCOutstreamVideoInfo_videoDuration) doubleValue];
    v10[14] = 1;
    sub_1C1B957C8();
    v10[13] = 2;
    sub_1C1B957C8();
    v10[12] = 3;
    sub_1C1B957F8();
    v10[11] = 4;
    sub_1C1B957E8();
  }

  return (*(v6 + 8))(v8, v5);
}

id OutstreamVideoInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OutstreamVideoInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OutstreamVideoInfo(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C1B556C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for OutstreamVideoInfo(0));
  result = OutstreamVideoInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C1B55748(uint64_t a1)
{
  sub_1C1AEF0A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C1B55894()
{
  result = qword_1EBF095B8;
  if (!qword_1EBF095B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF095B8);
  }

  return result;
}

unint64_t sub_1C1B558EC()
{
  result = qword_1EBF095C0;
  if (!qword_1EBF095C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF095C0);
  }

  return result;
}

unint64_t sub_1C1B55944()
{
  result = qword_1EBF095C8[0];
  if (!qword_1EBF095C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBF095C8);
  }

  return result;
}

unint64_t sub_1C1B55998(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B955F8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

id static EventRegistrarHandler.notificationRegistrar.getter()
{
  [objc_opt_self() daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v0 = [objc_msgSend(swift_getObjCClassFromMetadata() daemonDelivery)];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t static EventRegistrarHandler.removeListener(with:)(uint64_t a1)
{
  [objc_opt_self() daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v2 = [objc_msgSend(swift_getObjCClassFromMetadata() daemonDelivery)];
  swift_unknownObjectRelease();
  [v2 removeHandlerWithIdentifier_];

  return swift_unknownObjectRelease();
}

id _s15PromotedContent21EventRegistrarHandlerC010addJourneyC8Listener3for7closureSiSo15APJourneyMetricV_ySo16APMetricProtocol_pctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [objc_opt_self() daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v6 = [objc_msgSend(swift_getObjCClassFromMetadata() daemonDelivery)];
  swift_unknownObjectRelease();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v11[4] = sub_1C1B55CBC;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C1B49F5C;
  v11[3] = &unk_1F4153318;
  v8 = _Block_copy(v11);

  v9 = [v6 registerHandlerForPurpose:100 andMetric:a1 closure:v8];
  swift_unknownObjectRelease();
  _Block_release(v8);
  return v9;
}

uint64_t ContentProviderPluginSettings.init(onVendRefillCache:adType:placement:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t ContentProviderPlugin.__allocating_init(contextBuilder:taskBuilder:diagnostics:contentPipeline:settings:isColdStart:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, char *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  ContentProviderPlugin.init(contextBuilder:taskBuilder:diagnostics:contentPipeline:settings:isColdStart:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t ContentProviderPlugin.init(contextBuilder:taskBuilder:diagnostics:contentPipeline:settings:isColdStart:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, char *a5, uint64_t a6)
{
  v12 = *a5;
  v13 = *(a5 + 1);
  v14 = *(a5 + 2);
  swift_getExtendedExistentialTypeMetadata();
  *(v6 + 56) = sub_1C1B94F18();
  *(v6 + 64) = sub_1C1B94F18();
  sub_1C1AC1F08(&qword_1EBF08860, &qword_1C1B9CD80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v6 + 224) = v15;
  sub_1C1AC0580(a1, v6 + 112);
  sub_1C1AC0580(a2, v6 + 152);
  sub_1C1AC0580(a3, v6 + 72);
  sub_1C1AC0580(a4, v6 + 16);
  *(v6 + 192) = v12;
  *(v6 + 200) = v13;
  *(v6 + 208) = v14;
  *(v6 + 216) = a6;
  return v6;
}

uint64_t ContentProviderPlugin.getAd(completion:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v59 = a2;
  v57 = a1;
  v4 = *v2;
  v5 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = &v51 - v6;
  v7 = sub_1C1B945F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[17];
  v12 = v2[18];
  sub_1C1AAABE0(v2 + 14, v11);
  v13 = (*(v12 + 16))(v11, v12);
  v14 = v3[22];
  v15 = v3[23];
  sub_1C1AAABE0(v3 + 19, v14);
  v16 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v17 = *(v8 + 16);
  v60 = v13;
  v53 = v8 + 16;
  v54 = v16;
  v52 = v17;
  v17(v10, &v13[v16], v7);
  v18 = sub_1C1B945A8();
  v20 = v19;
  v21 = *(v8 + 8);
  v55 = v8 + 8;
  v56 = v7;
  v51 = v21;
  v21(v10, v7);
  v22 = (*(v15 + 24))(v18, v20, v3[26], v14, v15);

  v23 = v3[28];
  v64 = v3;
  v65 = v22;
  v61 = sub_1C1B59244;
  v62 = &v63;
  os_unfair_lock_lock(v23 + 4);
  sub_1C1B59260();
  os_unfair_lock_unlock(v23 + 4);
  WitnessTable = swift_getWitnessTable();
  v25 = *(v4 + 120);
  v26 = *(v25 + 32);
  v27 = *(v4 + 88);
  v28 = swift_unknownObjectRetain();
  v26(v28, WitnessTable, v27, v25);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = *(v4 + 80);
  *(v30 + 24) = v27;
  *(v30 + 32) = *(v4 + 96);
  *(v30 + 48) = *(v4 + 112);
  *(v30 + 56) = v25;
  *(v30 + 64) = v57;
  *(v30 + 72) = v59;
  *(v30 + 80) = v29;
  v31 = *(v25 + 56);

  v31(sub_1C1B59288, v30, v27, v25);

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v32 = sub_1C1B94BE8();
  sub_1C1AB4454(v32, qword_1EDE6D058);
  swift_unknownObjectRetain();
  v33 = v60;
  v34 = sub_1C1B94BC8();
  v35 = sub_1C1B95138();
  v59 = v33;

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v66[0] = v37;
    *v36 = 136446466;
    v38 = (*(v25 + 16))(v27, v25);
    v40 = sub_1C1AC7650(v38, v39, v66);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    v41 = v56;
    v52(v10, &v60[v54], v56);
    v42 = sub_1C1B945A8();
    v44 = v43;
    v51(v10, v41);
    v45 = sub_1C1AC7650(v42, v44, v66);

    *(v36 + 14) = v45;
    _os_log_impl(&dword_1C1AA2000, v34, v35, "[ContentProviderPlugin] Requesting ad for task %{public}s and context %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v37, -1, -1);
    MEMORY[0x1C6908230](v36, -1, -1);
  }

  v46 = sub_1C1B95028();
  v47 = v58;
  (*(*(v46 - 8) + 56))(v58, 1, 1, v46);
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v49 = v59;
  v48[4] = v3;
  v48[5] = v49;
  v48[6] = v22;

  swift_unknownObjectRetain();
  sub_1C1B02874(0, 0, v47, &unk_1C1BA2B30, v48);

  return v22;
}

uint64_t sub_1C1B564B0(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  swift_getExtendedExistentialTypeMetadata();
  sub_1C1B94FA8();
  sub_1C1B94F68();
  return swift_endAccess();
}

double sub_1C1B56588(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  a2(a1);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if ((*(a8 + 8))(a5, a8) == 200 && *(v17 + 192) == 1)
    {
      if (qword_1EDE6C4E0 != -1)
      {
        swift_once();
      }

      v18 = sub_1C1B94BE8();
      sub_1C1AB4454(v18, qword_1EDE6D058);
      v19 = sub_1C1B94BC8();
      v20 = sub_1C1B95138();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1C1AA2000, v19, v20, "[ContentProviderPlugin] Refilling Cache due to vending a content", v21, 2u);
        MEMORY[0x1C6908230](v21, -1, -1);
      }

      v22 = sub_1C1B95028();
      (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v17;

      sub_1C1B02874(0, 0, v14, &unk_1C1BA2CA0, v23);
    }
  }

  return result;
}

uint64_t sub_1C1B5680C()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  sub_1C1AAABE0(v1 + 2, v2);
  v4 = v1[17];
  v5 = v1[18];
  sub_1C1AAABE0(v1 + 14, v4);
  v6 = (*(v5 + 16))(v4, v5);
  *(v0 + 24) = v6;
  v7 = v1[25];
  *(v0 + 48) = 1;
  v10 = (*(v3 + 24) + **(v3 + 24));
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  v8[1] = sub_1C1B5699C;

  return v10(v6, v7, v0 + 48, v2, v3);
}

uint64_t sub_1C1B5699C()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C1B56B00, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1C1B56B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C1B56B3C, 0, 0);
}

uint64_t sub_1C1B56B3C()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  sub_1C1AAABE0(v1 + 2, v2);
  v4 = v1[25];
  *(v0 + 64) = 0;
  v8 = (*(v3 + 24) + **(v3 + 24));
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1C1B56C88;
  v6 = *(v0 + 24);

  return v8(v6, v4, v0 + 64, v2, v3);
}

uint64_t sub_1C1B56C88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1C1B56E28;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1C1B56DB0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C1B56DB0()
{
  sub_1C1B56E40(v0[7], v0[4]);

  v1 = v0[1];

  return v1();
}

void sub_1C1B56E40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = a2;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v7 = sub_1C1B952D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v42[-v10];
  v12 = *(v6 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v46 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42[-v15];
  v48 = a1;
  sub_1C1B94FA8();
  swift_getWitnessTable();
  v17 = v12;
  sub_1C1B950C8();
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v18 = sub_1C1B94D78();
    v19 = sub_1C1B94D78();
    CreateDiagnosticReport();
  }

  else
  {
    (*(v12 + 32))(v16, v11, v6);
    if ((*(v5[13] + 8))(v6) == 200)
    {
      sub_1C1B58580();
    }

    else
    {
      sub_1C1B586EC();
    }

    v20 = v46;
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v21 = sub_1C1B94BE8();
    sub_1C1AB4454(v21, qword_1EDE6D058);
    (*(v17 + 16))(v20, v16, v6);
    swift_unknownObjectRetain();
    v22 = sub_1C1B94BC8();
    v23 = sub_1C1B95138();
    swift_unknownObjectRelease();
    v24 = os_log_type_enabled(v22, v23);
    v45 = v17;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48 = v44;
      *v25 = 136446466;
      v26 = v5[15];
      v27 = *(v26 + 16);
      v46 = v5[11];
      v43 = v23;
      v28 = v27();
      v30 = sub_1C1AC7650(v28, v29, &v48);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2082;
      v31 = (*(v5[12] + 8))(v6);
      v33 = v32;
      v34 = *(v17 + 8);
      v34(v20, v6);
      v35 = sub_1C1AC7650(v31, v33, &v48);

      *(v25 + 14) = v35;
      _os_log_impl(&dword_1C1AA2000, v22, v43, "[ContentProviderPlugin] Fulfilling task %{public}s with adamId %{public}s", v25, 0x16u);
      v36 = v44;
      swift_arrayDestroy();
      MEMORY[0x1C6908230](v36, -1, -1);
      MEMORY[0x1C6908230](v25, -1, -1);

      v37 = v46;
    }

    else
    {

      v34 = *(v17 + 8);
      v34(v20, v6);
      v26 = v5[15];
      v37 = v5[11];
    }

    v38 = (*(v26 + 48))(v37, v26);
    if (v38)
    {
      v40 = v38;
      v41 = v39;
      v38(v16);
      sub_1C1AC0530(v40, v41);
    }

    v34(v16, v6);
  }
}

Swift::Void __swiftcall ContentProviderPlugin.preload(using:)(PromotedContent::CachePolicy using)
{
  v2 = v1;
  v3 = using;
  v4 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = *v3;
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C1B94BE8();
  sub_1C1AB4454(v8, qword_1EDE6D058);
  v9 = sub_1C1B94BC8();
  v10 = sub_1C1B95138();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C1AA2000, v9, v10, "[ContentProviderPlugin] Preloading content", v11, 2u);
    MEMORY[0x1C6908230](v11, -1, -1);
  }

  v12 = sub_1C1B95028();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v2;
  *(v13 + 40) = v7;

  sub_1C1AE33F8(0, 0, v6, &unk_1C1BA2B40, v13);
}

uint64_t sub_1C1B57584(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 114) = a5;
  *(v5 + 32) = a4;
  *(v5 + 40) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1C1B575D0, 0, 0);
}

uint64_t sub_1C1B575D0()
{
  v1 = *(v0 + 114);
  v2 = *(v0 + 32);
  v3 = v2[5];
  v4 = v2[6];
  sub_1C1AAABE0(v2 + 2, v3);
  v5 = v2[17];
  v6 = v2[18];
  sub_1C1AAABE0(v2 + 14, v5);
  v7 = (*(v6 + 16))(v5, v6);
  *(v0 + 48) = v7;
  v8 = v2[25];
  *(v0 + 56) = v8;
  *(v0 + 112) = v1 & 1;
  v11 = (*(v4 + 24) + **(v4 + 24));
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_1C1B57770;

  return v11(v7, v8, v0 + 112, v3, v4);
}

uint64_t sub_1C1B57770(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_1C1B57CB4;
  }

  else
  {
    v4 = sub_1C1B57894;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C1B57894()
{
  *(v0 + 16) = *(v0 + 72);
  v1 = *(v0 + 40);
  v2 = *(v0 + 114);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v1 + 80);
  *(v3 + 24) = *(v1 + 88);
  *(v3 + 32) = *(v1 + 96);
  *(v3 + 40) = *(v1 + 104);
  *(v3 + 56) = *(v1 + 120);
  sub_1C1B94FA8();
  swift_getWitnessTable();
  v4 = sub_1C1B94E38();

  if (v2)
  {
  }

  else
  {
    *(v0 + 24) = *(v0 + 72);
    swift_getWitnessTable();
    v5 = sub_1C1B950D8();

    if (v5 & 1) != 0 || ((v4 ^ 1))
    {
      v6 = *(v0 + 32);
      v7 = v6[5];
      v8 = v6[6];
      sub_1C1AAABE0(v6 + 2, v7);
      v9 = v6[17];
      v10 = v6[18];
      sub_1C1AAABE0(v6 + 14, v9);
      v11 = (*(v10 + 16))(v9, v10);
      *(v0 + 88) = v11;
      *(v0 + 113) = 1;
      v16 = (*(v8 + 24) + **(v8 + 24));
      v12 = swift_task_alloc();
      *(v0 + 96) = v12;
      *v12 = v0;
      v12[1] = sub_1C1B57B58;
      v13 = *(v0 + 56);

      return v16(v11, v13, v0 + 113, v7, v8);
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1C1B57B58()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C1B57E44, 0, 0);
  }

  else
  {
    v3 = *(v2 + 88);

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1C1B57CB4()
{
  v1 = *(v0 + 80);
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1B94BE8();
  sub_1C1AB4454(v2, qword_1EDE6D058);
  v3 = v1;
  v4 = sub_1C1B94BC8();
  v5 = sub_1C1B95128();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1C1AA2000, v4, v5, "Unable to preload content: %{public}@", v6, 0xCu);
    sub_1C1B595D0(v7);
    MEMORY[0x1C6908230](v7, -1, -1);
    MEMORY[0x1C6908230](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1C1B57E44()
{
  v1 = *(v0 + 104);
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1B94BE8();
  sub_1C1AB4454(v2, qword_1EDE6D058);
  v3 = v1;
  v4 = sub_1C1B94BC8();
  v5 = sub_1C1B95128();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1C1AA2000, v4, v5, "Unable to preload content: %{public}@", v6, 0xCu);
    sub_1C1B595D0(v7);
    MEMORY[0x1C6908230](v7, -1, -1);
    MEMORY[0x1C6908230](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

void *ContentProviderPlugin.deinit()
{
  sub_1C1AA86F8(v0 + 2);

  sub_1C1AA86F8(v0 + 9);
  sub_1C1AA86F8(v0 + 14);
  sub_1C1AA86F8(v0 + 19);

  return v0;
}

uint64_t ContentProviderPlugin.__deallocating_deinit()
{
  ContentProviderPlugin.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 232, 7);
}

Swift::Void __swiftcall ContentProviderPlugin.invalidateDueToNotification()()
{
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C1B94BE8();
  sub_1C1AB4454(v0, qword_1EDE6D058);
  v1 = sub_1C1B94BC8();
  v2 = sub_1C1B95138();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C1AA2000, v1, v2, "Preloading content due to invalidation notification", v3, 2u);
    MEMORY[0x1C6908230](v3, -1, -1);
  }

  v4 = 1;
  ContentProviderPlugin.preload(using:)(&v4);
}

uint64_t ContentProviderPlugin.cancel(task:reason:)(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 88);
  (*(v2 + 56))(0, 0, v3, v2);
  v4 = v1[28];
  os_unfair_lock_lock(v4 + 4);
  sub_1C1B5982C();
  os_unfair_lock_unlock(v4 + 4);
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C1B94BE8();
  sub_1C1AB4454(v5, qword_1EDE6D058);
  swift_unknownObjectRetain();
  v6 = sub_1C1B94BC8();
  v7 = sub_1C1B95138();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = (*(v2 + 16))(v3, v2);
    v12 = sub_1C1AC7650(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1C1AA2000, v6, v7, "[ContentProviderPlugin] Missed SLA for task %{public}s", v8, 0xCu);
    sub_1C1AA86F8(v9);
    MEMORY[0x1C6908230](v9, -1, -1);
    MEMORY[0x1C6908230](v8, -1, -1);
  }

  sub_1C1AAABE0(v1 + 9, v1[12]);
  return sub_1C1B949D8();
}

uint64_t sub_1C1B583B8(void *a1, uint64_t a2)
{
  swift_beginAccess();

  swift_getExtendedExistentialTypeMetadata();
  sub_1C1B94FA8();
  swift_getWitnessTable();
  sub_1C1B950B8();

  if (v3 != 1)
  {
    swift_beginAccess();
    sub_1C1B94F78();
    swift_endAccess();
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1C1B94F68();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C1B58580()
{
  v1 = v0;
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1B94BE8();
  sub_1C1AB4454(v2, qword_1EDE6D058);
  v3 = sub_1C1B94BC8();
  v4 = sub_1C1B95138();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1AA2000, v3, v4, "[ContentProviderPlugin] Processing content success", v5, 2u);
    MEMORY[0x1C6908230](v5, -1, -1);
  }

  v6 = *(v1 + 224);
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v6 + 4);
  sub_1C1B5982C();
  os_unfair_lock_unlock(v6 + 4);
}

void sub_1C1B586EC()
{
  v1 = v0;
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1B94BE8();
  sub_1C1AB4454(v2, qword_1EDE6D058);
  v3 = sub_1C1B94BC8();
  v4 = sub_1C1B95138();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1AA2000, v3, v4, "[ContentProviderPlugin] Processing content failure", v5, 2u);
    MEMORY[0x1C6908230](v5, -1, -1);
  }

  v6 = *(v1 + 224);
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v6 + 4);
  sub_1C1B5982C();
  os_unfair_lock_unlock(v6 + 4);
}

uint64_t sub_1C1B58858(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v6 = *a1;
  v7 = *a1;
  v8 = *(*a1 + 112);
  v9 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 1);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v24 - v10;
  swift_beginAccess();
  v40 = a1[7];
  v34 = v9;
  v31 = *(v6 + 88);
  v35 = v31;
  v32 = *(v7 + 96);
  v36 = v32;
  v33 = v8;
  v37 = v8;
  v30 = *(v6 + 120);
  v38 = v30;
  v39 = a2;
  v29 = a2;

  v41 = v9;
  swift_getExtendedExistentialTypeMetadata();
  sub_1C1B94FA8();
  swift_getWitnessTable();
  LOBYTE(v8) = sub_1C1B94E38();
  v28 = v3;

  sub_1C1AAABE0(a1 + 9, a1[12]);
  if (v8)
  {
    sub_1C1B949C8();
    v12 = a1[5];
    v13 = a1[6];
    sub_1C1AAABE0(a1 + 2, v12);
    sub_1C1B95478();
    (*(v13 + 32))(v11, 4, v12, v13);
    (*(v25 + 8))(v11, AssociatedTypeWitness);
    v14 = a1[18];
    sub_1C1AAABE0(a1 + 14, a1[17]);
    v15 = (*(v32 + 8))(v9);
    (*(v14 + 8))(v15);
  }

  else
  {
    v16 = sub_1C1B949D8();
  }

  AssociatedTypeWitness = &v24;
  MEMORY[0x1EEE9AC00](v16);
  *(&v24 - 8) = v9;
  v27 = v9;
  v17 = v30;
  v18 = v31;
  *(&v24 - 7) = v31;
  *(&v24 - 3) = v32;
  *(&v24 - 4) = v33;
  *(&v24 - 3) = v17;
  v19 = v29;
  *(&v24 - 2) = v29;
  swift_beginAccess();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v20 = v28;
  sub_1C1B950E8();
  result = swift_endAccess();
  if (v20)
  {
    __break(1u);
  }

  else
  {
    v28 = &v24;
    MEMORY[0x1EEE9AC00](result);
    *&v22 = v27;
    *(&v22 + 1) = v18;
    v23 = v32;
    *(&v24 - 4) = v22;
    *(&v24 - 3) = v23;
    *(&v24 - 4) = v33;
    *(&v24 - 3) = v17;
    *(&v24 - 2) = v19;
    swift_beginAccess();
    sub_1C1B950E8();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C1B58D80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  v10[0] = a1[8];
  v6 = *(v5 + 80);
  v7 = *(v5 + 104);

  v10[10] = v6;
  swift_getExtendedExistentialTypeMetadata();
  sub_1C1B94FA8();
  swift_getWitnessTable();
  sub_1C1B94E38();

  sub_1C1AAD2FC((a1 + 9), v10);
  sub_1C1AAABE0(v10, v10[3]);
  (*(v7 + 16))(v6, v7);
  sub_1C1B949D8();
  sub_1C1AA86F8(v10);
  swift_beginAccess();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C1B950E8();
  if (v3)
  {
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    v8 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v8);
    swift_beginAccess();
    sub_1C1B950E8();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C1B59168(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[1];
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 16))(ObjectType, v10);
  v14 = v13;
  if (v12 == (*(a8 + 16))(a4, a8) && v14 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1C1B95888();
  }

  return v17 & 1;
}

uint64_t sub_1C1B592C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1AB9CA0;

  return sub_1C1B56B18(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1C1B59388(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C1AB9A98;

  return sub_1C1B57584(a1, v4, v5, v6, v7);
}

uint64_t getEnumTagSinglePayload for ContentProviderPluginSettings(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentProviderPluginSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C1B595D0(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF08A28, &qword_1C1B9D830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1B59710(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1C1B5975C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C1AB9A98;

  return sub_1C1B567EC(a1, v4, v5, v6);
}

unint64_t sub_1C1B59844()
{
  v1 = v0;
  result = [v0 placement];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = [v0 adjacentPosition];
    v5 = [v1 language];
    v6 = [v1 locale];
    v7 = [v1 searchTerms];
    v8 = [v1 keywords];
    v9 = [v1 categories];
    v10 = [objc_allocWithZone(MEMORY[0x1E698A030]) init:v3 adjacency:v4 language:v5 locale:v6 searchTerm:v7 keywords:v8 categories:v9];

    return v10;
  }

  return result;
}

id ContentDepiction.__allocating_init(identifier:placement:language:locale:searchTerms:keywords:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = objc_allocWithZone(v10);
  v19 = &v18[OBJC_IVAR___APPCContentDepiction_identifier];
  *v19 = a1;
  *(v19 + 1) = a2;
  *&v18[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = 0;
  *&v18[OBJC_IVAR___APPCContentDepiction_placement] = a3;
  v20 = &v18[OBJC_IVAR___APPCContentDepiction_language];
  *v20 = a4;
  *(v20 + 1) = a5;
  v21 = &v18[OBJC_IVAR___APPCContentDepiction_locale];
  *v21 = a6;
  *(v21 + 1) = a7;
  *&v18[OBJC_IVAR___APPCContentDepiction_searchTerms] = a8;
  *&v18[OBJC_IVAR___APPCContentDepiction_keywords] = a9;
  *&v18[OBJC_IVAR___APPCContentDepiction_categories] = a10;
  v24.receiver = v18;
  v24.super_class = v10;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t sub_1C1B59AA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B5ACD4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ContentDepiction.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCContentDepiction_identifier);

  return v1;
}

uint64_t ContentDepiction.language.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCContentDepiction_language);

  return v1;
}

uint64_t ContentDepiction.locale.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCContentDepiction_locale);

  return v1;
}

id sub_1C1B59CE4(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1C1B94EB8();

  return v3;
}

id ContentDepiction.init(identifier:placement:language:locale:searchTerms:keywords:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = &v10[OBJC_IVAR___APPCContentDepiction_identifier];
  *v11 = a1;
  *(v11 + 1) = a2;
  *&v10[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = 0;
  *&v10[OBJC_IVAR___APPCContentDepiction_placement] = a3;
  v12 = &v10[OBJC_IVAR___APPCContentDepiction_language];
  *v12 = a4;
  *(v12 + 1) = a5;
  v13 = &v10[OBJC_IVAR___APPCContentDepiction_locale];
  *v13 = a6;
  *(v13 + 1) = a7;
  *&v10[OBJC_IVAR___APPCContentDepiction_searchTerms] = a8;
  *&v10[OBJC_IVAR___APPCContentDepiction_keywords] = a9;
  *&v10[OBJC_IVAR___APPCContentDepiction_categories] = a10;
  v15.receiver = v10;
  v15.super_class = type metadata accessor for ContentDepiction();
  return objc_msgSendSuper2(&v15, sel_init);
}

id ContentDepiction.init(identifier:adjacentPosition:placement:language:locale:searchTerms:keywords:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = &v11[OBJC_IVAR___APPCContentDepiction_identifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = a3;
  *&v11[OBJC_IVAR___APPCContentDepiction_placement] = a4;
  v13 = &v11[OBJC_IVAR___APPCContentDepiction_language];
  *v13 = a5;
  *(v13 + 1) = a6;
  v14 = &v11[OBJC_IVAR___APPCContentDepiction_locale];
  *v14 = a7;
  *(v14 + 1) = a8;
  *&v11[OBJC_IVAR___APPCContentDepiction_searchTerms] = a9;
  *&v11[OBJC_IVAR___APPCContentDepiction_keywords] = a10;
  *&v11[OBJC_IVAR___APPCContentDepiction_categories] = a11;
  v16.receiver = v11;
  v16.super_class = type metadata accessor for ContentDepiction();
  return objc_msgSendSuper2(&v16, sel_init);
}

id ContentDepiction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C1B5A160()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7364726F7779656BLL;
  if (v1 != 6)
  {
    v3 = 0x69726F6765746163;
  }

  v4 = 0x656C61636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x6554686372616573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E656D6563616C70;
  if (v1 != 2)
  {
    v5 = 0x65676175676E616CLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1B5A26C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1B5B3DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1B5A294(uint64_t a1)
{
  v2 = sub_1C1B5ACF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B5A2D0(uint64_t a1)
{
  v2 = sub_1C1B5ACF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ContentDepiction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentDepiction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B5A3D8(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09690, &unk_1C1BA2CB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B5ACF0();
  sub_1C1B95A18();
  LOBYTE(v11) = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR___APPCContentDepiction_adjacentPosition);
    HIBYTE(v10) = 1;
    sub_1C1B5AD44();
    sub_1C1B95808();
    v11 = *(v3 + OBJC_IVAR___APPCContentDepiction_placement);
    HIBYTE(v10) = 2;
    sub_1C1B5AD98();
    sub_1C1B95808();
    LOBYTE(v11) = 3;
    sub_1C1B957A8();
    LOBYTE(v11) = 4;
    sub_1C1B957A8();
    v11 = *(v3 + OBJC_IVAR___APPCContentDepiction_searchTerms);
    HIBYTE(v10) = 5;
    sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
    sub_1C1AC34C8(&unk_1EDE6BBA0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1C1B95808();
    v11 = *(v3 + OBJC_IVAR___APPCContentDepiction_keywords);
    HIBYTE(v10) = 6;
    sub_1C1B95808();
    v11 = *(v3 + OBJC_IVAR___APPCContentDepiction_categories);
    HIBYTE(v10) = 7;
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v8, v5);
}

void *ContentDepiction.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09698, &qword_1C1BA2CC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B5ACF0();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for ContentDepiction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v23) = 0;
    v9 = sub_1C1B95698();
    v11 = (v1 + OBJC_IVAR___APPCContentDepiction_identifier);
    *v11 = v9;
    v11[1] = v12;
    v22 = 1;
    sub_1C1B5ADEC();
    sub_1C1B956F8();
    *(v1 + OBJC_IVAR___APPCContentDepiction_adjacentPosition) = v23;
    v22 = 2;
    sub_1C1B5AE40();
    sub_1C1B956F8();
    *(v1 + OBJC_IVAR___APPCContentDepiction_placement) = v23;
    LOBYTE(v23) = 3;
    v13 = sub_1C1B95698();
    v14 = (v1 + OBJC_IVAR___APPCContentDepiction_language);
    *v14 = v13;
    v14[1] = v15;
    LOBYTE(v23) = 4;
    v16 = sub_1C1B95698();
    v17 = (v1 + OBJC_IVAR___APPCContentDepiction_locale);
    *v17 = v16;
    v17[1] = v18;
    sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
    v22 = 5;
    v20 = sub_1C1AC34C8(&qword_1EDE6BB98, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1C1B956F8();
    *(v1 + OBJC_IVAR___APPCContentDepiction_searchTerms) = v23;
    v22 = 6;
    sub_1C1B956F8();
    *(v1 + OBJC_IVAR___APPCContentDepiction_keywords) = v23;
    v22 = 7;
    sub_1C1B956F8();
    *(v1 + OBJC_IVAR___APPCContentDepiction_categories) = v23;
    v19 = type metadata accessor for ContentDepiction();
    v21.receiver = v1;
    v21.super_class = v19;
    v3 = objc_msgSendSuper2(&v21, sel_init);
    (*(v6 + 8))(v8, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

void *sub_1C1B5AC5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ContentDepiction());
  result = ContentDepiction.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C1B5ACD4(uint64_t result)
{
  if ((result - 150) >= 0xA && result != 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B5ACF0()
{
  result = qword_1EDE6B2D0[0];
  if (!qword_1EDE6B2D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE6B2D0);
  }

  return result;
}

unint64_t sub_1C1B5AD44()
{
  result = qword_1EDE6B080;
  if (!qword_1EDE6B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B080);
  }

  return result;
}

unint64_t sub_1C1B5AD98()
{
  result = qword_1EDE6BC50;
  if (!qword_1EDE6BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BC50);
  }

  return result;
}

unint64_t sub_1C1B5ADEC()
{
  result = qword_1EDE6B070;
  if (!qword_1EDE6B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B070);
  }

  return result;
}

unint64_t sub_1C1B5AE40()
{
  result = qword_1EDE6BC38;
  if (!qword_1EDE6BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BC38);
  }

  return result;
}

unint64_t sub_1C1B5AE98()
{
  result = qword_1EBF096A0;
  if (!qword_1EBF096A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF096A0);
  }

  return result;
}

unint64_t sub_1C1B5AFB4()
{
  result = qword_1EBF096A8;
  if (!qword_1EBF096A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF096A8);
  }

  return result;
}

unint64_t sub_1C1B5B00C()
{
  result = qword_1EDE6B2C0;
  if (!qword_1EDE6B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B2C0);
  }

  return result;
}

unint64_t sub_1C1B5B064()
{
  result = qword_1EDE6B2C8;
  if (!qword_1EDE6B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B2C8);
  }

  return result;
}

uint64_t sub_1C1B5B0B8(void *a1)
{
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1B5ACD4([a1 adjacency]);
  if (v7)
  {
    goto LABEL_9;
  }

  v8 = v6;
  result = [a1 placement];
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v10 = sub_1C1AEF4C0(result);
  if (v11)
  {
    goto LABEL_9;
  }

  v12 = v10;
  v13 = [a1 language];
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = sub_1C1B94D88();
  v17 = v16;

  v18 = [a1 locale];
  if (!v18)
  {

LABEL_9:

    return 0;
  }

  v46 = v15;
  v19 = v18;
  v20 = sub_1C1B94D88();
  v44 = v21;
  v45 = v20;

  v22 = [a1 identifier];
  sub_1C1B945D8();

  v23 = sub_1C1B945A8();
  v25 = v24;
  (*(v3 + 8))(v5, v2);
  v26 = [a1 searchTerms];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1C1B94EC8();
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v29 = [a1 keywords];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1C1B94EC8();
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = [a1 categories];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1C1B94EC8();
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v35 = type metadata accessor for ContentDepiction();
  v36 = objc_allocWithZone(v35);
  v37 = &v36[OBJC_IVAR___APPCContentDepiction_identifier];
  *v37 = v23;
  v37[1] = v25;
  *&v36[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = v8;
  *&v36[OBJC_IVAR___APPCContentDepiction_placement] = v12;
  v38 = &v36[OBJC_IVAR___APPCContentDepiction_language];
  v39 = v45;
  *v38 = v46;
  *(v38 + 1) = v17;
  v40 = &v36[OBJC_IVAR___APPCContentDepiction_locale];
  v41 = v44;
  *v40 = v39;
  *(v40 + 1) = v41;
  *&v36[OBJC_IVAR___APPCContentDepiction_searchTerms] = v28;
  *&v36[OBJC_IVAR___APPCContentDepiction_keywords] = v31;
  *&v36[OBJC_IVAR___APPCContentDepiction_categories] = v34;
  v47.receiver = v36;
  v47.super_class = v35;
  v42 = objc_msgSendSuper2(&v47, sel_init);

  return v42;
}

uint64_t sub_1C1B5B3DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C1BA5F00 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEB00000000736D72 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1C1B5B68C()
{
  result = qword_1EDE6B078;
  if (!qword_1EDE6B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B078);
  }

  return result;
}

uint64_t sub_1C1B5B708(unint64_t a1)
{
  if (a1 < 5)
  {
    return qword_1C1BA2FA0[a1];
  }

  v3 = sub_1C1B95128();
  sub_1C1AC53E4();
  v4 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E6810];
  *(v5 + 16) = xmmword_1C1B98E60;
  v7 = MEMORY[0x1E69E6870];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = a1;
  sub_1C1B94BA8(v3, &dword_1C1AA2000, v4, "Unable to determine PrivacyMarkerPosition for APPrivacyMarkerPosition of type: %d.", v8);

  return 0;
}

char *sub_1C1B5B934()
{
  v0 = type metadata accessor for ContextBuilder(0);
  v1 = objc_allocWithZone(v0);
  sub_1C1B945E8();
  v2 = OBJC_IVAR___APPCContextBuilder_current;
  *&v1[OBJC_IVAR___APPCContextBuilder_current] = 0;
  v3 = &v1[OBJC_IVAR___APPCContextBuilder_requestedAd];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR___APPCContextBuilder_newsContext;
  *&v1[OBJC_IVAR___APPCContextBuilder_newsContext] = 0;
  v5 = OBJC_IVAR___APPCContextBuilder_resourceLock;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___APPCContextBuilder_adjacentInternal] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___APPCContextBuilder_maxSize] = xmmword_1C1BA2FD0;
  swift_beginAccess();
  *&v1[v2] = 0;
  swift_unknownObjectRelease();
  *&v1[OBJC_IVAR___APPCContextBuilder_next] = v6;
  swift_beginAccess();
  v7 = *&v1[v4];
  *&v1[v4] = 0;

  swift_beginAccess();
  *v3 = 0;
  *(v3 + 1) = 0;

  v20.receiver = v1;
  v20.super_class = v0;
  v8 = objc_msgSendSuper2(&v20, sel_init);
  v9 = [objc_allocWithZone(type metadata accessor for NewsSupplementalContext()) init];
  v10 = &v9[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement];
  swift_beginAccess();
  *v10 = xmmword_1C1BA2FE0;

  v11 = &v9[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType];
  swift_beginAccess();
  *v11 = xmmword_1C1BA2FF0;

  sub_1C1AEE4FC();
  v12 = sub_1C1B95258();
  v13 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID;
  swift_beginAccess();
  v14 = *&v9[v13];
  *&v9[v13] = v12;

  v15 = OBJC_IVAR___APPCContextBuilder_newsContext;
  swift_beginAccess();
  v16 = *&v8[v15];
  *&v8[v15] = v9;
  v17 = v9;

  v18 = sub_1C1AA47BC();
  return v18;
}

id sub_1C1B5BBB8(void *a1)
{
  v2 = sub_1C1B944A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - v7;
  if ([a1 actionType] == 5)
  {
    v9 = [a1 adamIdentifier];
    if (v9)
    {
      v10 = v9;
      v11 = [a1 iTunesMetadata];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1C1B94CB8();

        [a1 confirmedClickInterval];
        v15 = v14;
        v16 = objc_allocWithZone(type metadata accessor for OutstreamVideoTapAction(0));
        *&v16[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier] = v10;
        *&v16[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata] = v13;
        (*(v3 + 56))(&v16[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url], 1, 1, v2);
        v16[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp] = 2;
        *&v16[OBJC_IVAR___APPCTapAction_actionType] = 6;
        *&v16[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v15;
        v17 = type metadata accessor for TapAction();
        v18 = objc_msgSendSuper2(&v35, sel_init, v16, v17, v36.receiver, v36.super_class);
        goto LABEL_15;
      }
    }

    v25 = [a1 actionURL];
    if (v25)
    {
      v26 = v25;
      sub_1C1B94488();

      (*(v3 + 16))(v6, v8, v2);
      LOBYTE(v26) = [a1 opensInstalledApp];
      [a1 confirmedClickInterval];
      v28 = v27;
      v29 = objc_allocWithZone(type metadata accessor for OutstreamVideoTapAction(0));
      v30 = OutstreamVideoTapAction.init(url:opensInstalledApp:confirmedClickInterval:)(v6, v26, v28);

      (*(v3 + 8))(v8, v2);
      return v30;
    }

    [a1 confirmedClickInterval];
    v32 = v31;
    v33 = objc_allocWithZone(type metadata accessor for OutstreamVideoTapAction(0));
    (*(v3 + 56))(&v33[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url], 1, 1, v2);
    v33[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp] = 2;
    *&v33[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier] = 0;
    *&v33[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata] = 0;
    *&v33[OBJC_IVAR___APPCTapAction_actionType] = 4;
    *&v33[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v32;
    v34 = type metadata accessor for TapAction();
    v18 = objc_msgSendSuper2(&v36, sel_init, v35.receiver, v35.super_class, v33, v34);
LABEL_15:
    v30 = v18;

    return v30;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v19 = sub_1C1B94BE8();
  sub_1C1AB4454(v19, qword_1EDE6D058);
  v20 = a1;
  v21 = sub_1C1B94BC8();
  v22 = sub_1C1B95128();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = [v20 actionType];

    _os_log_impl(&dword_1C1AA2000, v21, v22, "Attempting to initialize a OutstreamVideoTapAction with an invalid tap action type %ld.", v23, 0xCu);
    MEMORY[0x1C6908230](v23, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1C1B5C04C@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_30:
    v3 = sub_1C1B953A8();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = v2 & 0xC000000000000001;
      v41 = v2 & 0xFFFFFFFFFFFFFF8;
      v6 = MEMORY[0x1E69E7CC8];
      v7 = &selRef_hash;
      v43 = v3;
      v44 = v2;
      v42 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v5)
        {
          v8 = MEMORY[0x1C6907490](v4, v2);
        }

        else
        {
          if (v4 >= *(v41 + 16))
          {
            goto LABEL_28;
          }

          v8 = *(v2 + 8 * v4 + 32);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v11 = [v8 v7[136]];
        if (v11)
        {
          break;
        }

LABEL_5:
        ++v4;
        if (v10 == v3)
        {
          goto LABEL_32;
        }
      }

      v12 = v5;
      v13 = v2;
      v14 = v11;
      v15 = sub_1C1B94D88();
      v17 = v16;

      v18 = [v9 value];
      if (!v18)
      {

        v2 = v13;
        v5 = v12;
LABEL_25:
        v7 = &selRef_hash;
        goto LABEL_5;
      }

      v19 = v18;
      v45 = sub_1C1B94D88();
      v21 = v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v15;
      v2 = sub_1C1AA7C14(v15, v17);
      v25 = v6[2];
      v26 = (v24 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_27;
      }

      v28 = v24;
      if (v6[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C1ADA50C();
        }

        v29 = v23;
        v32 = v45;
        if ((v28 & 1) == 0)
        {
LABEL_17:
          v6[(v2 >> 6) + 8] |= 1 << v2;
          v33 = (v6[6] + 16 * v2);
          *v33 = v29;
          v33[1] = v17;
          v34 = (v6[7] + 16 * v2);
          *v34 = v32;
          v34[1] = v21;

          v35 = v6[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_29;
          }

          v6[2] = v37;
          goto LABEL_24;
        }
      }

      else
      {
        sub_1C1AD917C(v27, isUniquelyReferenced_nonNull_native);
        v29 = v23;
        v30 = sub_1C1AA7C14(v23, v17);
        if ((v28 & 1) != (v31 & 1))
        {
          result = sub_1C1B958E8();
          __break(1u);
          return result;
        }

        v2 = v30;
        v32 = v45;
        if ((v28 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v38 = (v6[7] + 16 * v2);
      *v38 = v32;
      v38[1] = v21;

LABEL_24:
      v3 = v43;
      v2 = v44;
      v5 = v42;
      goto LABEL_25;
    }
  }

  v6 = MEMORY[0x1E69E7CC8];
LABEL_32:

  *a2 = v6;
  return result;
}

uint64_t QuickReturnTracker.__allocating_init(clock:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1C1B5CE1C(a1);
}

uint64_t QuickReturnTracker.State.hashValue.getter()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1B5C3E0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C1B5D160;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C1AC0598(v4);
}

uint64_t sub_1C1B5C474(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1B19318;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1C1AC0598(v3);
  return sub_1C1AC0530(v8, v9);
}

uint64_t sub_1C1B5C530()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1C1AC0598(v1);
  return v1;
}

uint64_t sub_1C1B5C580(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1C1AC0530(v5, v6);
}

id sub_1C1B5C624()
{
  result = sub_1C1B7BA08();
  qword_1EBF096B0 = result;
  *algn_1EBF096B8 = v1;
  qword_1EBF096C0 = v2;
  byte_1EBF096C8 = v3 & 1;
  return result;
}

uint64_t QuickReturnTracker.init(clock:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1C1B5CEB4(a1, v1);
}

uint64_t sub_1C1B5C694(unsigned __int8 *a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  LODWORD(a1) = *a1;
  v7 = *(v1 + 40);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if (a1 == 4)
      {
        goto LABEL_16;
      }
    }

    else if (v7 == 4 && a1 == 5)
    {
      result = sub_1C1B5C824();
    }

    goto LABEL_15;
  }

  if (*(v1 + 40))
  {
    if (v7 == 1)
    {
      if (a1 == 2)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (a1 != 3)
    {
LABEL_15:
      LOBYTE(a1) = 0;
    }
  }

  else
  {
    if (a1 != 1)
    {
      goto LABEL_15;
    }

    a1 = [*(v1 + 32) now];
    sub_1C1B94558();

    v8 = sub_1C1B94588();
    LOBYTE(a1) = 1;
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = OBJC_IVAR____TtC15PromotedContent18QuickReturnTracker_interactionTime;
    swift_beginAccess();
    sub_1C1AABE90(v5, v1 + v9);
    result = swift_endAccess();
  }

LABEL_16:
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1C1B5C824()
{
  v1 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - v4;
  v6 = sub_1C1B94588();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  v13 = sub_1C1B95108();
  sub_1C1AC53E4();
  v14 = sub_1C1B95298();
  sub_1C1B94BA8(v13, &dword_1C1AA2000, v14, "[PCUI] Detected leftAdDestinationSignal", 39, 2, MEMORY[0x1E69E7CC0]);

  v15 = v6;
  v16 = OBJC_IVAR____TtC15PromotedContent18QuickReturnTracker_interactionTime;
  swift_beginAccess();
  v17 = v0;
  v18 = v16;
  sub_1C1ABB0C4(v0 + v16, v5);
  if ((*(v7 + 48))(v5, 1, v15) == 1)
  {
    sub_1C1ABBAF4(v5);
    v19 = sub_1C1B95128();
    v20 = sub_1C1B95298();
    sub_1C1B94BA8(v19, &dword_1C1AA2000, v20, "Attempting to send quickReturn metric prior to interacted", 57, 2, MEMORY[0x1E69E7CC0]);

    v21 = v46;
    (*(v7 + 56))(v46, 1, 1, v15);
    swift_beginAccess();
    v22 = v17 + v18;
    v23 = v21;
LABEL_14:
    sub_1C1AABE90(v23, v22);
    return swift_endAccess();
  }

  v45 = v16;
  (*(v7 + 32))(v12, v5, v15);
  v24 = v15;
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v26 = v0;
  v27 = [*(v0 + 32) now];
  sub_1C1B94558();

  sub_1C1B94528();
  v29 = v28;
  v30 = *(v7 + 8);
  v31 = v24;
  v30(v10, v24);
  v32 = v26;
  if (IsVoiceOverRunning)
  {
    v33 = 50.0;
  }

  else
  {
    v33 = 5.0;
  }

  v34 = v46;
  if (v29 >= v33)
  {
    v30(v12, v31);
    (*(v7 + 56))(v34, 1, 1, v31);
    v37 = v45;
    swift_beginAccess();
    v22 = v26 + v37;
    v23 = v34;
    goto LABEL_14;
  }

  if (qword_1EBF076E0 != -1)
  {
    swift_once();
  }

  v44 = v7;
  if (byte_1EBF096C8)
  {
    v35 = 0;
    v36 = 10000.0;
    if (!IsVoiceOverRunning)
    {
      v36 = 1000.0;
    }
  }

  else
  {
    v38 = &qword_1EBF096B0;
    v35 = qword_1EBF096C0;
    if (IsVoiceOverRunning)
    {
      v38 = algn_1EBF096B8;
    }

    v36 = *v38;
  }

  v39 = sub_1C1B5D190(v29, v36);
  swift_beginAccess();
  v40 = *(v26 + 16);
  if (v40)
  {
    v41 = *(v32 + 24);

    v40(v39, v35);
    v34 = v46;
    sub_1C1AC0530(v40, v41);
  }

  v30(v12, v31);
  (*(v44 + 56))(v34, 1, 1, v31);
  v42 = v45;
  swift_beginAccess();
  sub_1C1AABE90(v34, v32 + v42);
  return swift_endAccess();
}