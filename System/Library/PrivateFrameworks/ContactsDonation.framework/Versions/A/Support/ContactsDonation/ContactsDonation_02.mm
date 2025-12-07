unint64_t sub_100028C74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100003760(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100026A0C(v7, v8);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100028D70(uint64_t a1, char *a2, void (**a3)(void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
  _Block_copy(a3);
  [v7 agentWillHandleRequest:"donateMeCardValues:completionHandler:"];
  if (a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState] == 1)
  {
    [v7 featureNotEnabled:"donateMeCardValues:completionHandler:"];
    v8 = [NSError errorWithDomain:CNDonationErrorDomain code:1 userInfo:0];
    if (v8)
    {
      v9 = _convertErrorToNSError(_:)();
    }

    else
    {
      v9 = 0;
    }

    v18 = v9;
    a3[2](a3);
  }

  else
  {
    sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v7 acceptingDonations:isa];

    v11 = swift_allocObject();
    v11[2] = sub_10000C168;
    v11[3] = v6;
    v11[4] = a2;
    v11[5] = a1;
    v11[6] = "donateMeCardValues:completionHandler:";
    v12 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = sub_10002B62C;
    *(v13 + 56) = v11;
    aBlock[4] = sub_10002B9B8;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B9B4;
    aBlock[3] = &unk_10003EFE8;
    v14 = _Block_copy(aBlock);
    v15 = a2;
    swift_bridgeObjectRetain_n();
    v16 = v15;

    v17 = [v12 performWriterBlock:v14];
    _Block_release(v14);

    swift_unknownObjectRelease();
  }
}

void sub_100029054(uint64_t a1, char *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
  _Block_copy(a3);
  [v7 agentWillHandleRequest:"removeDonatedMeCardValuesForIdentifiers:completionHandler:"];
  if (a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState] == 1)
  {
    [v7 featureNotEnabled:"removeDonatedMeCardValuesForIdentifiers:completionHandler:"];
    v8 = [NSError errorWithDomain:CNDonationErrorDomain code:1 userInfo:0];
    if (v8)
    {
      v9 = _convertErrorToNSError(_:)();
    }

    else
    {
      v9 = 0;
    }

    v16 = v9;
    a3[2](a3, 0);
  }

  else
  {
    v10 = swift_allocObject();
    v10[2] = sub_10002B8F4;
    v10[3] = v6;
    v10[4] = a2;
    v10[5] = "removeDonatedMeCardValuesForIdentifiers:completionHandler:";
    v11 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a1;
    *(v12 + 32) = 0;
    *(v12 + 40) = 1;
    *(v12 + 48) = sub_10002B56C;
    *(v12 + 56) = v10;
    aBlock[4] = sub_10002B9B8;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B9B4;
    aBlock[3] = &unk_10003EF48;
    v13 = _Block_copy(aBlock);
    v14 = a2;

    v15 = [v11 performWriterBlock:v13];
    _Block_release(v13);

    swift_unknownObjectRelease();
  }
}

void sub_1000292F4(uint64_t a1, uint64_t a2, char *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
  _Block_copy(a4);
  [v9 agentWillHandleRequest:"removeDonatedMeCardValuesForIdentifiers:completionHandler:"];
  if (a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState] == 1)
  {
    [v9 featureNotEnabled:"removeDonatedMeCardValuesForIdentifiers:completionHandler:"];
    v10 = [NSError errorWithDomain:CNDonationErrorDomain code:1 userInfo:0];
    if (v10)
    {
      v11 = _convertErrorToNSError(_:)();
    }

    else
    {
      v11 = 0;
    }

    v18 = v11;
    a4[2](a4, 0);
  }

  else
  {
    v12 = swift_allocObject();
    v12[2] = sub_10000C100;
    v12[3] = v8;
    v12[4] = a3;
    v12[5] = "removeDonatedMeCardValuesForIdentifiers:completionHandler:";
    v13 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a1;
    *(v14 + 32) = a2;
    *(v14 + 40) = 2;
    *(v14 + 48) = sub_10002B9BC;
    *(v14 + 56) = v12;
    aBlock[4] = sub_10002B9B8;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B9B4;
    aBlock[3] = &unk_10003EEA8;
    v15 = _Block_copy(aBlock);
    v16 = a3;

    v17 = [v13 performWriterBlock:v15];
    _Block_release(v15);

    swift_unknownObjectRelease();
  }
}

unint64_t *sub_100029598(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = result;
  v26 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v27 = v11 | (v5 << 6);
    v14 = *(*(a3 + 56) + 8 * v27);

    v15 = v14;
    v16 = [v15 origin];
    v17 = [v16 bundleIdentifier];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == a4 && v20 == a5)
    {

LABEL_18:
      *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        return sub_100028418(v25, a2, v26, a3);
      }
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_18;
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
      return sub_100028418(v25, a2, v26, a3);
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
  return result;
}

unint64_t *sub_100029780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_1000281F0(v15, v9, a1, a2, a3);

      swift_bridgeObjectRelease_n();
      return v13;
    }
  }

  __chkstk_darwin(v11, v12);
  bzero(&v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v13 = sub_100029598((&v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v13;
}

uint64_t sub_10002994C(uint64_t a1, void *a2, _BYTE *a3, void (*a4)(void), uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];

  [v11 agentWillHandleRequest:a1];
  v12 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState;
  if (a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState])
  {
    if (a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState] >= 2u)
    {
      goto LABEL_3;
    }

LABEL_6:
    [v11 featureNotEnabled:a1];
    v24 = swift_allocObject();
    *(v24 + 16) = sub_10002B4D8;
    *(v24 + 24) = v10;
    v34 = sub_10002B8F8;
    v35 = v24;
    aBlock = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_10001EB44;
    v33 = &unk_10003ED90;
    v25 = _Block_copy(&aBlock);

    [a2 performBlock:v25];
    _Block_release(v25);
LABEL_10:
    [v11 agentDidHandleRequest:a1];
  }

  v22 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v34 = nullsub_1;
  v35 = 0;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10001EB44;
  v33 = &unk_10003EE08;
  v23 = _Block_copy(&aBlock);
  [v22 performSynchronousReaderBlock:v23];
  _Block_release(v23);
  if (a3[v12] < 2u)
  {
    goto LABEL_6;
  }

LABEL_3:
  v29 = a4;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a3;
  v34 = sub_10002B8FC;
  v35 = v15;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10001EB44;
  v33 = &unk_10003EDE0;
  v16 = _Block_copy(&aBlock);

  v17 = a3;

  [v14 performSynchronousReaderBlock:v16];
  _Block_release(v16);
  swift_beginAccess();
  v18 = *(v13 + 16);
  if (v18)
  {
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 eitherWithLeft:v20];
    sub_1000217F0(v21, v29);

LABEL_9:
    goto LABEL_10;
  }

  v26 = [NSError errorWithDomain:CNDonationErrorDomain code:5 userInfo:0];
  if (v26)
  {
    v27 = v26;
    v21 = [objc_opt_self() eitherWithRight:v26];

    sub_1000217F0(v21, v29);

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_100029D68(uint64_t a1, void *a2, _BYTE *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
  _Block_copy(a4);
  [v9 agentWillHandleRequest:a1];
  v10 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState;
  if (a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState])
  {
    if (a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState] >= 2u)
    {
      goto LABEL_3;
    }

LABEL_6:
    [v9 featureNotEnabled:a1];
    v22 = swift_allocObject();
    *(v22 + 16) = sub_10002B49C;
    *(v22 + 24) = v8;
    v30 = sub_10002B4B0;
    v31 = v22;
    v26 = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10001EB44;
    v29 = &unk_10003EC50;
    v23 = _Block_copy(&v26);

    [a2 performBlock:v23];
    _Block_release(v23);
LABEL_10:
    [v9 agentDidHandleRequest:a1];

    return;
  }

  v20 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v30 = nullsub_1;
  v31 = 0;
  v26 = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_10001EB44;
  v29 = &unk_10003ECF0;
  v21 = _Block_copy(&v26);
  [v20 performSynchronousReaderBlock:v21];
  _Block_release(v21);
  if (a3[v10] < 2u)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = a3;
  v30 = sub_10002B4D0;
  v31 = v13;
  v26 = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_10001EB44;
  v29 = &unk_10003ECC8;
  v14 = _Block_copy(&v26);

  v15 = a3;

  [v12 performSynchronousReaderBlock:v14];
  _Block_release(v14);
  swift_beginAccess();
  v16 = *(v11 + 16);
  if (v16)
  {
    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 eitherWithLeft:v18];
    (a4)[2](a4, v19);

LABEL_9:
    goto LABEL_10;
  }

  v24 = [NSError errorWithDomain:CNDonationErrorDomain code:5 userInfo:0];
  if (v24)
  {
    v25 = v24;
    v19 = [objc_opt_self() eitherWithRight:v24];

    (a4)[2](a4, v19);

    goto LABEL_9;
  }

  _Block_release(a4);
  __break(1u);
}

void sub_10002A184(char *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *&a1[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
  _Block_copy(a2);
  [v5 agentWillHandleRequest:"meCardDonations:"];
  if (a1[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState] < 2u)
  {
    [v5 featureNotEnabled:"meCardDonations:"];
    v11 = [NSError errorWithDomain:CNDonationErrorDomain code:1 userInfo:0];
    if (v11)
    {
      v12 = _convertErrorToNSError(_:)();
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    a2[2](a2, 0);
  }

  else
  {
    v6 = *&a1[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = sub_10000C0E8;
    v7[4] = v4;
    v7[5] = "meCardDonations:";
    aBlock[4] = sub_10002B41C;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B9B4;
    aBlock[3] = &unk_10003EB88;
    v8 = _Block_copy(aBlock);
    v9 = a1;

    v10 = [v6 performReaderBlock:v8];
    _Block_release(v8);

    swift_unknownObjectRelease();
  }
}

void sub_10002A3BC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a1)
    {
      v8 = "accountChanged:";
    }

    else
    {
      v8 = "accountAdded:";
    }

    [*(a3 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_accountLogger) v8];
  }

  else if (a1)
  {
    [*(a3 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_accountLogger) accountRemoved:a1];
  }

  if (*(a3 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState) == 1)
  {
    [*(a3 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger) featureNotEnabled:"changeFromAccount:toAccount:completionHandler:"];
    v9 = [NSError errorWithDomain:CNDonationErrorDomain code:1 userInfo:0];
    if (v9)
    {
      v10 = _convertErrorToNSError(_:)();
    }

    else
    {
      v10 = 0;
    }

    v12 = v10;
    (*(a4 + 16))(a4);
  }

  else
  {
    sub_10002479C(a1, a2);
    v11 = *(a4 + 16);

    v11(a4, 0);
  }
}

void sub_10002A534(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v24 = 0;
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
    v27 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = v13;
    v18 = *(*(a3 + 56) + 8 * v13);

    v19 = v18;
    v20 = a4(v15, v16, v19);

    if (v28)
    {
      return;
    }

    v8 = v27;
    if (v20)
    {
      *(a1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_16:
        sub_100028418(a1, a2, v24, a3);
        return;
      }
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
      goto LABEL_16;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10002A6C0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, id))
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 > 0xD)
  {
    v13 = 8 * (v8 >> 6);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      sub_100028294(v14, v9, v5, a2);

      return;
    }

    v10 = v13;
  }

  __chkstk_darwin(a1, v10);
  v12 = &v15 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v12, v11);
  sub_10002A534(v12, v9, v5, a2);
  if (v3)
  {
    swift_willThrow();
  }
}

Swift::Int sub_10002A840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v12 = swift_bridgeObjectRetain_n();
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v16 = sub_100028324(v17, v10, a1, a2, a3);

      if (v3)
      {
      }

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v12, v13);
  bzero(&v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);

  v14 = sub_100027FB0((&v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0)), v10, a1, a2, a3);
  if (v3)
  {
    swift_willThrow();
  }

  v16 = v14;

LABEL_6:

  return v16;
}

uint64_t sub_10002AA7C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10002AA88()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10002AAFC(unint64_t result)
{
  if (result >= 2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10002AB3C()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
  v3 = String._bridgeToObjectiveC()();
  [v2 didRejectDonationIdentifier:v3];

  return v1(0);
}

uint64_t sub_10002ABA4()
{
  v1 = *(type metadata accessor for CNDonationValue.Value(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v7 = type metadata accessor for PersonNameComponents();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
LABEL_8:

LABEL_10:

      break;
    case 3:

      goto LABEL_10;
    case 4:
      sub_10000636C(*v5, *(v5 + 8));
      break;
  }

LABEL_12:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002ACE4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(type metadata accessor for CNDonationValue.Value(0) - 8);
  v8 = (v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)));

  return sub_100025340(a1, a2, a3, v8);
}

uint64_t sub_10002AD6C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002AE00()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002AE58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002AEC0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10002AF40(uint64_t a1)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
  v3 = _convertErrorToNSError(_:)();
  [v2 couldNotRenewBecauseLoadingError:v3];
}

uint64_t sub_10002AFA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002AFF0(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return v3;
}

uint64_t sub_10002B010()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B060(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10002B0DC(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return v3;
}

uint64_t sub_10002B120()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002B174()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002B210()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B264(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003760(&unk_1000458A0, &unk_1000308F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B2DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002B328()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10002B36C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B3C0(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_10002B428()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002B4E0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10002B52C()
{

  return _swift_deallocObject(v0, 48, 7);
}

id sub_10002B570(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  (*(v1 + 16))(a1 == 0, a1);
  v4 = *(v3 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);

  return [v4 agentDidHandleRequest:v2];
}

uint64_t sub_10002B5E4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002B644()
{
  sub_10002AFF0(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002B9C0()
{
  sub_100003760(&qword_100046048, "<W");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FD40;
  *(v0 + 32) = sub_10002BBFC;
  *(v0 + 40) = 0;
  if (qword_100044728 != -1)
  {
    swift_once();
  }

  v2 = qword_100045FE0;
  v1 = *algn_100045FE8;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v0 + 48) = sub_10002C9E8;
  *(v0 + 56) = v3;
  v4 = qword_100044730;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_100045FF0;
  v5 = *algn_100045FF8;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v0 + 64) = sub_10002CAC8;
  *(v0 + 72) = v7;
  v8 = qword_100044738;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_100046000;
  v9 = *algn_100046008;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *(v0 + 80) = sub_10002CAC8;
  *(v0 + 88) = v11;
  v12 = qword_100044740;

  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_100046010;
  v13 = *algn_100046018;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v0 + 96) = sub_10002CAC8;
  *(v0 + 104) = v15;
  qword_100046338 = v0;
}

uint64_t sub_10002BC04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PersonNameComponents();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  PersonNameComponents.init()();
  *&v18 = 0x6D614E7473726966;
  *(&v18 + 1) = 0xE900000000000065;
  v9 = [a1 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_10000630C(&v18, &unk_100045370, &unk_100030510);
  }

  PersonNameComponents.givenName.setter();
  *&v18 = 0x656D614E7473616CLL;
  *(&v18 + 1) = 0xE800000000000000;
  v10 = [a1 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_10000630C(&v18, &unk_100045370, &unk_100030510);
  }

  PersonNameComponents.familyName.setter();
  PersonNameComponents.givenName.getter();
  if (v11 || (PersonNameComponents.familyName.getter(), v12))
  {

    (*(v5 + 32))(a2, v8, v4);
    v13 = 0;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v13 = 1;
  }

  return (*(v5 + 56))(a2, v13, 1, v4);
}

void *sub_10002BF04()
{
  v0 = type metadata accessor for AccountPropertyNameParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0xD000000000000012;
  result[4] = 0x8000000100032900;
  qword_100045FE0 = sub_10002CAC4;
  *algn_100045FE8 = result;
  return result;
}

uint64_t sub_10002BF78()
{
  v0 = type metadata accessor for AccountPropertyNameParser();
  result = swift_allocObject();
  *(result + 16) = v0;
  strcpy((result + 24), "FullUserName");
  *(result + 37) = 0;
  *(result + 38) = -5120;
  qword_100045FF0 = sub_10002CAA4;
  *algn_100045FF8 = result;
  return result;
}

uint64_t sub_10002BFF0@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  *&v13[0] = a3;
  *(&v13[0] + 1) = a4;

  v7 = [a1 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    sub_10000630C(v13, &unk_100045370, &unk_100030510);
    v8 = 0;
  }

  sub_10002C110(v8, x8_0);
}

uint64_t sub_10002C110@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PersonNameComponents();
  __chkstk_darwin(v4, v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = v6;
    v9 = objc_opt_self();
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 componentsFromString:v10];

    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
    PersonNameComponents.givenName.getter();
    if (v12 || (PersonNameComponents.familyName.getter(), v13))
    {

      (*(v17 + 32))(a2, v8, v4);
      return (*(v17 + 56))(a2, 0, 1, v4);
    }

    else
    {
      (*(v17 + 8))(v8, v4);
      return (*(v17 + 56))(a2, 1, 1, v4);
    }
  }

  else
  {
    v15 = *(v6 + 56);

    return v15(a2, 1, 1, v4);
  }
}

void *sub_10002C2F4()
{
  v0 = type metadata accessor for AccountPropertyNameParser();
  result = swift_allocObject();
  result[2] = 0xD000000000000014;
  result[3] = 0x80000001000328E0;
  result[4] = v0;
  result[5] = 0xD000000000000012;
  result[6] = 0x8000000100032900;
  qword_100046000 = sub_10002CACC;
  *algn_100046008 = result;
  return result;
}

void *sub_10002C388()
{
  v0 = type metadata accessor for AccountPropertyNameParser();
  result = swift_allocObject();
  result[2] = 0xD000000000000010;
  result[3] = 0x80000001000328C0;
  result[4] = v0;
  result[5] = 0x656D614E6C6C7546;
  result[6] = 0xE800000000000000;
  qword_100046010 = sub_10002CA18;
  *algn_100046018 = result;
  return result;
}

uint64_t sub_10002C414@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v53 = a5;
  v54 = a4;
  v10 = type metadata accessor for PersonNameComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003760(&qword_1000457A8, "W");
  __chkstk_darwin(v15 - 8, v16);
  v18 = v47 - v17;
  *&v56 = a2;
  *(&v56 + 1) = a3;

  v19 = [a1 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58[0] = v56;
  v58[1] = v57;
  if (!*(&v57 + 1))
  {
    sub_10000630C(v58, &unk_100045370, &unk_100030510);
    return (*(v11 + 56))(a6, 1, 1, v10);
  }

  sub_100003760(&qword_100046050, &qword_100030E58);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return (*(v11 + 56))(a6, 1, 1, v10);
  }

  v51 = v14;
  v52 = a6;
  v21 = 0;
  v22 = v55;
  v24 = v55 + 64;
  v23 = *(v55 + 64);
  v25 = 1 << *(v55 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v29 = (v11 + 56);
  v47[0] = v11 + 8;
  v49 = (v11 + 32);
  v50 = (v11 + 48);
  v30 = v53;
  if ((v26 & v23) != 0)
  {
    while (1)
    {
LABEL_13:
      v32 = *(*(v22 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v27)))));
      if (!*(v32 + 16))
      {
        goto LABEL_19;
      }

      v33 = sub_100026A0C(v54, v30);
      if ((v34 & 1) == 0)
      {

LABEL_19:
        (*v29)(v18, 1, 1, v10);
        goto LABEL_20;
      }

      sub_10000EC48(*(v32 + 56) + 32 * v33, v58);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      v48 = v22;
      v35 = *(&v56 + 1);
      v36 = objc_opt_self();
      v47[1] = v35;
      v37 = String._bridgeToObjectiveC()();
      v38 = [v36 componentsFromString:v37];

      v39 = v51;
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.givenName.getter();
      if (v40)
      {
        break;
      }

      PersonNameComponents.familyName.getter();
      v42 = v41;

      if (v42)
      {
        goto LABEL_23;
      }

      (*v47[0])(v39, v10);
      v43 = 1;
LABEL_24:
      v30 = v53;
      v44 = *v29;
      (*v29)(v18, v43, 1, v10);
      v45 = (*v50)(v18, 1, v10);
      v22 = v48;
      if (v45 != 1)
      {

        v46 = v52;
        (*v49)(v52, v18, v10);
        return v44(v46, 0, 1, v10);
      }

LABEL_20:
      v27 &= v27 - 1;
      result = sub_10000630C(v18, &qword_1000457A8, "W");
      if (!v27)
      {
        goto LABEL_9;
      }
    }

LABEL_23:

    (*v49)(v18, v39, v10);
    v43 = 0;
    goto LABEL_24;
  }

LABEL_9:
  while (1)
  {
    v31 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v31 >= v28)
    {

      return (*v29)(v52, 1, 1, v10);
    }

    v27 = *(v24 + 8 * v31);
    ++v21;
    if (v27)
    {
      v21 = v31;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_10002C954(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AccountPropertyNameParser();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10002C9B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002CA1C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002CA6C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002CAD0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NameSuppressionStatus(0);
  __chkstk_darwin(v4, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003760(&qword_1000457A8, "W");
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v44 - v10;
  v12 = type metadata accessor for PersonNameComponents();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v44 - v20;
  __chkstk_darwin(v19, v22);
  v24 = &v44 - v23;
  sub_10002D0F4(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_10000630C(v11, &qword_1000457A8, "W");
  }

  v44 = a1;
  v45 = v17;
  v26 = *(v13 + 32);
  v26(v24, v11, v12);
  sub_10002D3C0(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10002D854(v2, type metadata accessor for NameSuppressionStatus);
      v26(v2, v24, v12);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      return (*(v13 + 8))(v24, v12);
    }
  }

  else
  {
    v28 = v7;
    if (EnumCaseMultiPayload)
    {
      (*(v13 + 16))(v21, v7, v12);
      v31 = sub_10002D644(v21);
      v30 = *(v13 + 8);
      v30(v21, v12);
      v30(v24, v12);
      if ((v31 & 1) == 0)
      {
        sub_10002D854(v2, type metadata accessor for NameSuppressionStatus);
        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v29 = v45;
      (*(v13 + 16))(v45, v28, v12);
      if (sub_10002D644(v29))
      {
        v30 = *(v13 + 8);
        v30(v29, v12);
        v30(v24, v12);
      }

      else
      {
        v32 = v28;
        v33 = [v44 origin];
        v34 = [v33 clusterIdentifier];

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        if (!v35 && v37 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v38 = [v44 origin];
          v39 = [v38 bundleIdentifier];

          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          type metadata accessor for CollectedSuppressionResult(0);
          sub_100015798(&v46, v40, v42);

          v43 = *(v13 + 8);
          v43(v45, v12);
          v43(v24, v12);
          return (v43)(v32, v12);
        }

        type metadata accessor for CollectedSuppressionResult(0);
        sub_100015798(&v46, v35, v37);

        v30 = *(v13 + 8);
        v30(v45, v12);
        v30(v24, v12);
        v28 = v32;
      }
    }

    return (v30)(v28, v12);
  }
}

NSString *sub_10002D018()
{
  sub_100003760(&unk_100045620, &unk_100030750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FD50;
  *(v0 + 32) = CNContactGivenNameKey;
  *(v0 + 40) = CNContactFamilyNameKey;
  qword_100046340 = v0;
  v1 = CNContactGivenNameKey;

  return CNContactFamilyNameKey;
}

uint64_t sub_10002D0F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003760(&qword_100045200, &qword_1000303D0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v26 - v6;
  v8 = type metadata accessor for CNDonationValue.Value(0);
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v26 - v15;
  v17 = _s11ValueCasterCMa(0);
  v18 = objc_allocWithZone(v17);
  (*(v9 + 56))(v18 + OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value, 1, 1, v8);
  v27.receiver = v18;
  v27.super_class = v17;
  v19 = objc_msgSendSuper2(&v27, "init");
  [a1 acceptDonationValueVisitor:v19];
  v20 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  sub_100008050(v19 + v20, v7);

  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1000080C0(v7, v16);
    sub_1000080C0(v16, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = type metadata accessor for PersonNameComponents();
    v24 = *(v23 - 8);
    v25 = v24;
    if (EnumCaseMultiPayload)
    {
      (*(v24 + 56))(a2, 1, 1, v23);
      return sub_10002D854(v13, type metadata accessor for CNDonationValue.Value);
    }

    else
    {
      (*(v24 + 32))(a2, v13, v23);
      return (*(v25 + 56))(a2, 0, 1, v23);
    }
  }

  return result;
}

uint64_t sub_10002D3C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NameSuppressionStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D424(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002D5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_10002DB8C(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_10002D424(v7, v8);
}

uint64_t sub_10002D644(uint64_t a1)
{
  v1 = PersonNameComponents.givenName.getter();
  if (v2)
  {
    v3 = String.lowercased()();
    countAndFlagsBits = v3._countAndFlagsBits;
    object = v3._object;

    PersonNameComponents.givenName.getter();
    if (!v6)
    {
      if (!v3._object)
      {
        goto LABEL_16;
      }

LABEL_12:
      v9 = 0;
LABEL_32:

      return v9 & 1;
    }
  }

  else
  {
    countAndFlagsBits = v1;
    PersonNameComponents.givenName.getter();
    if (!v7)
    {
      goto LABEL_16;
    }

    object = 0;
  }

  v8 = String.lowercased()();

  if (!object)
  {
    if (v8._object)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  if (!v8._object)
  {
    goto LABEL_12;
  }

  if (countAndFlagsBits == v8._countAndFlagsBits && object == v8._object)
  {

    goto LABEL_16;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v9 = 0;
  if (v10)
  {
LABEL_16:
    v11 = PersonNameComponents.familyName.getter();
    if (v12)
    {
      v13 = String.lowercased()();
      v14 = v13._countAndFlagsBits;
      v15 = v13._object;

      PersonNameComponents.familyName.getter();
      if (!v16)
      {
        if (!v13._object)
        {
          goto LABEL_30;
        }

LABEL_27:
        v9 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v14 = v11;
      PersonNameComponents.familyName.getter();
      if (!v17)
      {
        goto LABEL_30;
      }

      v15 = 0;
    }

    v18 = String.lowercased()();

    if (v15)
    {
      if (v18._object)
      {
        if (v14 == v18._countAndFlagsBits && v15 == v18._object)
        {

          v9 = 1;
        }

        else
        {
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_32;
      }

      goto LABEL_27;
    }

    if (v18._object)
    {
LABEL_29:
      v9 = 0;
      goto LABEL_32;
    }

LABEL_30:
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_10002D854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002D8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NameSuppressionStatus(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002D998(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NameSuppressionStatus(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10002DA50(uint64_t a1)
{
  type metadata accessor for NameSuppressionStatus(319);
  if (v1 <= 0x3F)
  {
    sub_10002DAD4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002DAD4()
{
  if (!qword_100046158)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_100046158);
    }
  }
}

uint64_t sub_10002DB2C(uint64_t a1)
{
  result = type metadata accessor for PersonNameComponents();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002DB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonNameComponents();
  v36 = *(v4 - 8);
  v6 = __chkstk_darwin(v4, v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for NameSuppressionStatus(0);
  v14 = __chkstk_darwin(v12, v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v35 - v18;
  v20 = sub_100003760(&qword_100046238, &qword_100030F08);
  v22 = __chkstk_darwin(v20 - 8, v21);
  v24 = &v35 - v23;
  v25 = *(v22 + 56);
  sub_10002D3C0(a1, &v35 - v23);
  sub_10002D3C0(a2, &v24[v25]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10002D3C0(v24, v16);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_10;
      }

      v27 = v36;
      v28 = *(v36 + 32);
      v28(v11, v16, v4);
      v28(v8, &v24[v25], v4);
      v29 = sub_10002D644(v11);
      v30 = *(v27 + 8);
      v30(v8, v4);
      v30(v11, v4);
    }

    else
    {
      sub_10002D3C0(v24, v19);
      if (swift_getEnumCaseMultiPayload())
      {
        v16 = v19;
LABEL_10:
        (*(v36 + 8))(v16, v4);
LABEL_13:
        sub_10000630C(v24, &qword_100046238, &qword_100030F08);
        v29 = 0;
        return v29 & 1;
      }

      v31 = v36;
      v32 = *(v36 + 32);
      v32(v11, v19, v4);
      v32(v8, &v24[v25], v4);
      v29 = sub_10002D644(v11);
      v33 = *(v31 + 8);
      v33(v8, v4);
      v33(v11, v4);
    }

    sub_10002D854(v24, type metadata accessor for NameSuppressionStatus);
    return v29 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_13;
  }

  sub_10002D854(v24, type metadata accessor for NameSuppressionStatus);
  v29 = 1;
  return v29 & 1;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}