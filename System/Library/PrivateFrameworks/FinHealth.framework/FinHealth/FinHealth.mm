id sub_100001610()
{
  v1 = OBJC_IVAR____TtC10finhealthd21PredictedTransactions_upcomingPayments;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100001664(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10finhealthd21PredictedTransactions_upcomingPayments;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PredictedTransactions.__allocating_init(upcomingPayments:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10finhealthd21PredictedTransactions_upcomingPayments] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id PredictedTransactions.init(upcomingPayments:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10finhealthd21PredictedTransactions_upcomingPayments] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PredictedTransactions();
  return objc_msgSendSuper2(&v3, "init");
}

id PredictedTransactions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PredictedTransactions.init()()
{
  v1 = objc_allocWithZone(type metadata accessor for UpcomingPayments());
  *&v0[OBJC_IVAR____TtC10finhealthd21PredictedTransactions_upcomingPayments] = UpcomingPayments.init(accountTypes:transactionTypes:)();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PredictedTransactions();
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t PredictedTransactions.save()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_100002E9C(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = type metadata accessor for PredictedTransaction();
  v1[7] = v4;
  sub_100002E9C(v4);
  v1[8] = v5;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v1[11] = v6;
  sub_100002E9C(v6);
  v1[12] = v7;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v8 = type metadata accessor for IntermediatePrediction();
  v1[16] = v8;
  sub_100002E9C(v8);
  v1[17] = v9;
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100001A80, 0, 0);
}

uint64_t sub_100001A80()
{
  v1 = (*((swift_isaMask & **(v0 + 16)) + 0x58))();
  v2 = dispatch thunk of UpcomingPayments.batchPredictions()();
  *(v0 + 152) = v2;

  type metadata accessor for FinanceStore();
  swift_allocObject();
  *(v0 + 160) = FinanceStore.init()();
  v3 = *(v2 + 16);
  *(v0 + 168) = v3;
  if (v3)
  {
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
    v6 = *(v5 + 80);
    *(v0 + 272) = v6;
    *(v0 + 176) = *(v5 + 72);
    v7 = *(v5 + 16);
    *(v0 + 184) = v7;
    *(v0 + 192) = 0;
    v8 = *(v0 + 64);
    v7(v4, *(v0 + 152) + ((v6 + 32) & ~v6), *(v0 + 128));
    *(v0 + 200) = IntermediatePrediction.identifier.getter();
    *(v0 + 208) = v9;
    IntermediatePrediction.predictedTransaction.getter();
    PredictedTransaction.id.getter();
    v10 = *(v8 + 8);
    *(v0 + 216) = v10;
    *(v0 + 224) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11 = sub_100002EDC();
    v10(v11);
    IntermediatePrediction.predictedTransaction.getter();
    *(v0 + 232) = PredictedTransaction.transactionDescription.getter();
    *(v0 + 240) = v12;
    v13 = sub_100002EDC();
    v10(v13);
    IntermediatePrediction.predictedTransaction.getter();
    v14 = IntermediatePrediction.transactionids.getter();
    v15 = sub_100002E1C(v14);
    v16(v15);
    v17 = swift_task_alloc();
    *(v0 + 256) = v17;
    *v17 = v0;
    v18 = sub_100002DE8(v17);

    return FinanceStore.save(_:transactionIDs:)(v18);
  }

  else
  {

    sub_100002E74();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100001CF4()
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  *(*v1 + 264) = v0;

  v2(v3, v4);

  if (v0)
  {
    v5 = sub_1000022AC;
  }

  else
  {
    v5 = sub_100001E90;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100001E90()
{
  v49 = v0;
  static Logger.core.getter();
  v1 = sub_100002EE8();
  v2(v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[30];
  if (v5)
  {
    v39 = v0[26];
    v40 = v0[29];
    v38 = v0[25];
    v42 = v4;
    v7 = v0[14];
    v9 = v0[11];
    v8 = v0[12];
    v45 = v0[6];
    v46 = v0[15];
    v43 = v0[4];
    v44 = v0[3];
    v10 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v48 = v41;
    *v10 = 136315650;
    sub_100002C9C();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v14 = *(v8 + 8);
    v14(v7, v9);
    v15 = sub_10000272C(v11, v13, &v48);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = v39;
    v17 = sub_10000272C(v38, v39, &v48);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    v18 = sub_10000272C(v40, v6, &v48);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v3, v42, "Successfully saved Predicted Transaction uuid %s, internalid %s description %s in FinanceStore\n", v10, 0x20u);
    swift_arrayDestroy();
    sub_100002EFC(v41);
    sub_100002EFC(v10);

    (*(v43 + 8))(v45, v44);
    v14(v46, v9);
  }

  else
  {
    v19 = v0[14];
    v47 = v0[15];
    v16 = v0[11];
    v20 = v0[12];
    v13 = v0[6];
    v14 = v0[3];

    v21 = *(v20 + 8);
    v21(v19, v16);
    v22 = sub_100002EDC();
    v23(v22);
    v21(v47, v16);
  }

  sub_100002EC8();
  if (v25)
  {

    sub_100002E74();

    v26 = v0[1];

    return v26();
  }

  else
  {
    v28 = sub_100002E34(v24);
    v29(v28);
    v0[25] = IntermediatePrediction.identifier.getter();
    v0[26] = v30;
    IntermediatePrediction.predictedTransaction.getter();
    PredictedTransaction.id.getter();
    v31 = sub_100002EAC();
    v13(v31);
    IntermediatePrediction.predictedTransaction.getter();
    v0[29] = PredictedTransaction.transactionDescription.getter();
    v0[30] = v32;
    (v13)(v16, v14);
    IntermediatePrediction.predictedTransaction.getter();
    v33 = IntermediatePrediction.transactionids.getter();
    v34 = sub_100002E1C(v33);
    v35(v34);
    v36 = swift_task_alloc();
    v0[32] = v36;
    *v36 = v0;
    v37 = sub_100002DE8(v36);

    return FinanceStore.save(_:transactionIDs:)(v37);
  }
}

uint64_t sub_1000022AC()
{
  v50 = v0;
  static Logger.core.getter();
  v1 = sub_100002EE8();
  v2(v1);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[30];
  if (v5)
  {
    v40 = v0[26];
    v41 = v0[29];
    v39 = v0[25];
    v43 = v4;
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    v46 = v0[5];
    v47 = v0[15];
    v44 = v0[4];
    v45 = v0[3];
    v10 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49 = v42;
    *v10 = 136315650;
    sub_100002C9C();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v15 = *(v8 + 8);
    v14 = v8 + 8;
    v15(v7, v9);
    v16 = sub_10000272C(v11, v13, &v49);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    v17 = v40;
    v18 = sub_10000272C(v39, v40, &v49);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    v19 = sub_10000272C(v41, v6, &v49);

    *(v10 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v3, v43, "Failed to save uuid %s, internalid %s description %s in FinanceStore\n", v10, 0x20u);
    swift_arrayDestroy();
    sub_100002EFC(v42);
    sub_100002EFC(v10);

    (*(v44 + 8))(v46, v45);
    v15(v47, v9);
  }

  else
  {
    v48 = v0[15];
    v21 = v0[12];
    v20 = v0[13];
    v17 = v0[11];
    v11 = v0[5];
    v14 = v0[3];

    v22 = *(v21 + 8);
    v22(v20, v17);
    v23 = sub_100002EDC();
    v24(v23);
    v22(v48, v17);
  }

  sub_100002EC8();
  if (v26)
  {

    sub_100002E74();

    v27 = v0[1];

    return v27();
  }

  else
  {
    v29 = sub_100002E34(v25);
    v30(v29);
    v0[25] = IntermediatePrediction.identifier.getter();
    v0[26] = v31;
    IntermediatePrediction.predictedTransaction.getter();
    PredictedTransaction.id.getter();
    v32 = sub_100002EAC();
    v11(v32);
    IntermediatePrediction.predictedTransaction.getter();
    v0[29] = PredictedTransaction.transactionDescription.getter();
    v0[30] = v33;
    (v11)(v17, v14);
    IntermediatePrediction.predictedTransaction.getter();
    v34 = IntermediatePrediction.transactionids.getter();
    v35 = sub_100002E1C(v34);
    v36(v35);
    v37 = swift_task_alloc();
    v0[32] = v37;
    *v37 = v0;
    v38 = sub_100002DE8(v37);

    return FinanceStore.save(_:transactionIDs:)(v38);
  }
}

id PredictedTransactions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PredictedTransactions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000272C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000027F0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100002D40(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100002CF4(v11);
  return v7;
}

unint64_t sub_1000027F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000028F0(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000028F0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000293C(a1, a2);
  sub_100002A54(&off_100014660);
  return v3;
}

char *sub_10000293C(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100002B38(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100002A54(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100002BA8(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100002B38(uint64_t a1, uint64_t a2)
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

  sub_100002D9C(&qword_100018A40, &qword_10000F480);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100002BA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D9C(&qword_100018A40, &qword_10000F480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100002C9C()
{
  result = qword_1000187E8;
  if (!qword_1000187E8)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000187E8);
  }

  return result;
}

uint64_t sub_100002CF4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100002D40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002D9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002E74()
{
}

uint64_t sub_100002EAC()
{
  *(v0 + 216) = *(v2 + 8);
  *(v0 + 224) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v1;
}

uint64_t sub_100002EFC(uint64_t a1)
{
}

id sub_100002F48()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

id sub_100002FC8(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_100003010()
{
  sub_10000897C();
  v0 = swift_allocObject();
  sub_100003040();
  return v0;
}

void *sub_100003040()
{
  type metadata accessor for FinHealthBackgroundTasks();
  v0[2] = sub_100008DCC();
  v0[3] = [objc_opt_self() sharedInstance];
  v0[4] = [objc_allocWithZone(type metadata accessor for EntityGroups()) init];
  v0[5] = [objc_allocWithZone(type metadata accessor for IncomeInsights()) init];
  v1 = *(*v0[2] + 208);

  v1(v2);

  return v0;
}

uint64_t sub_100003110()
{
  sub_100008818();
  v1[18] = v2;
  v1[19] = v0;
  v3 = type metadata accessor for Logger();
  v1[20] = v3;
  sub_100002E9C(v3);
  v1[21] = v4;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v5 = sub_1000087D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000031EC()
{
  sub_100008A1C();
  static Logger.core.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (sub_100008924(v2))
  {
    v3 = v0[18];
    v4 = sub_1000089F8();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    sub_100008898();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    sub_100002EFC(v4);
  }

  v10 = v0[21];
  v11 = v0[19];

  v12 = *(v10 + 8);
  v0[27] = v12;
  v0[28] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13 = sub_100008868();
  v12(v13);
  v14 = *(v11 + 24);
  if ([v14 updateInProgress])
  {
    static Logger.core.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (sub_1000089AC(v16))
    {
      *sub_1000089E0() = 0;
      sub_10000898C();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      sub_1000088A8();
    }

    v22 = sub_100008868();
    v12(v22);

    sub_100008880();

    return v23();
  }

  else
  {
    v0[2] = v0;
    v0[7] = v0 + 35;
    v0[3] = sub_100003488;
    v25 = swift_continuation_init();
    v0[17] = sub_100002D9C(&qword_100018820, &qword_10000F258);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000401C;
    v0[13] = &unk_100014760;
    v0[14] = v25;
    [v14 updateTransactionsWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100003488()
{
  sub_100008818();
  sub_100008834();
  sub_10000880C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  sub_100008874();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100003588()
{
  sub_10000888C();
  sub_10000899C();
  v4 = (*(v1 + 160) + **(v1 + 160));
  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  *v2 = v0;
  sub_100008840(v2);

  return v4();
}

uint64_t sub_100003674()
{
  sub_10000888C();
  sub_100008834();
  v2 = v1;
  sub_10000880C();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v0;
  sub_1000087C0();
  *v7 = v6;
  *(v2 + 248) = v8;

  v11 = (*(*v5 + 152) + **(*v5 + 152));
  v9 = swift_task_alloc();
  *(v2 + 256) = v9;
  *v9 = v6;
  v9[1] = sub_100003834;

  return v11();
}

uint64_t sub_100003834()
{
  sub_100008818();
  sub_100008834();
  sub_10000880C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 264) = v3;

  v4 = sub_1000087D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100003920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_100008A28();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  static Logger.core.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v64 = v22[27];
    v27 = sub_1000089F8();
    swift_slowAlloc();
    sub_100008A10();
    *v27 = 136315138;
    sub_100002D9C(&qword_100018828, &unk_10000F260);
    v28 = Dictionary.description.getter();
    v30 = sub_10000272C(v28, v29, &a11);

    *(v27 + 4) = v30;
    sub_10000898C();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    sub_1000088C4();
    sub_1000088A8();

    v36 = sub_100008868();
    v64(v36);
  }

  else
  {
    v37 = v22[27];

    v38 = sub_100008868();
    v37(v38);
  }

  static Logger.core.getter();

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v65 = v22[27];
    v41 = sub_1000089F8();
    swift_slowAlloc();
    sub_100008A10();
    *v41 = 136315138;
    sub_100002D9C(&qword_100018828, &unk_10000F260);
    v42 = Dictionary.description.getter();
    v44 = sub_10000272C(v42, v43, &a11);

    *(v41 + 4) = v44;
    sub_10000898C();
    _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
    sub_1000088C4();
    sub_1000088A8();

    v50 = sub_100008868();
    v65(v50);
  }

  else
  {
    v51 = v22[27];

    v52 = sub_100008868();
    v51(v52);
  }

  sub_10000899C();
  v66 = v53 + 168;
  v67 = *(v53 + 168) + **(v53 + 168);
  v54 = swift_task_alloc();
  v22[34] = v54;
  *v54 = v22;
  v54[1] = sub_100003C70;
  sub_1000089C4();

  return v57(v55, v56, v57, v58, v59, v60, v61, v62, v66, v67, a11, a12, a13, a14);
}

uint64_t sub_100003C70()
{
  sub_100008940();
  v1 = *v0;
  sub_1000087C0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100003E2C()
{
  sub_100008A1C();
  swift_willThrow();
  static Logger.core.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_1000089F8();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    sub_10000894C();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    sub_1000071B0(v4, &qword_100018830, &unk_10000F470);
    sub_1000088A8();
    sub_100002EFC(v3);
  }

  else
  {
  }

  (*(v0 + 216))(*(v0 + 176), *(v0 + 160));
  sub_10000899C();
  v14 = (*(v11 + 160) + **(v11 + 160));
  v12 = swift_task_alloc();
  *(v0 + 240) = v12;
  *v12 = v0;
  sub_100008840(v12);

  return v14();
}

uint64_t sub_10000401C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = sub_10000870C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_1000040B8(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_100004124(v9, v4);
  }
}

uint64_t sub_1000040B8(uint64_t a1, uint64_t a2)
{
  sub_100002D9C(&qword_100018A48, &qword_10000F390);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_1000041CC(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_100004288;

  return sub_100003110();
}

uint64_t sub_100004288()
{
  sub_10000888C();
  sub_100008834();
  v2 = v1;
  sub_10000880C();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v0;
  sub_1000087C0();
  *v7 = v6;

  if (v5)
  {
    v8 = *(v2 + 24);
    v8[2](v8);
    _Block_release(v8);
  }

  sub_100008880();

  return v9();
}

uint64_t sub_1000043BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D9C(&qword_100018A28, &qword_10000F4B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_100006F3C(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_10000F318;
  v9[5] = v8;
  sub_1000068F8(0, 0, v6, &unk_10000F328, v9);
}

uint64_t sub_1000044CC()
{
  sub_100008818();
  v1 = sub_100008A7C();
  v0[3] = v1;
  sub_100002E9C(v1);
  v0[4] = v2;
  v0[5] = sub_100008A64();
  v3 = sub_1000087D0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100004568()
{
  sub_100008940();
  static Logger.core.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (sub_100008924(v2))
  {
    v3 = sub_1000089E0();
    *v3 = 0;
    sub_100008898();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100002EFC(v3);
  }

  v9 = sub_100008868();
  v10(v9);
  sub_1000087E0(&async function pointer to dispatch thunk of EntityGroups.save());
  v22 = v11;
  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  v20 = sub_100008824(v12, v13, v14, v15, v16, v17, v18, v19, v22);

  return v20();
}

uint64_t sub_100004678()
{
  sub_100008818();
  sub_100008834();
  v1 = *v0;
  sub_1000087C0();
  *v2 = v1;

  sub_100008880();

  return v3();
}

uint64_t sub_100004794(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10000483C;

  return sub_1000044CC();
}

uint64_t sub_10000483C()
{
  sub_10000888C();
  sub_100008834();
  v3 = v2;
  sub_10000880C();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_1000087C0();
  *v8 = v7;

  if (v0)
  {
    if (v6)
    {
      v9 = *(v3 + 24);
      v10 = _convertErrorToNSError(_:)();

      v11 = sub_100008868();
      v12(v11);
      _Block_release(v9);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v13 = *(v3 + 24);
    v13[2](v13, 0);
    _Block_release(v13);
  }

  sub_100008880();

  return v14();
}

uint64_t sub_1000049C0()
{
  sub_100008818();
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  sub_100002E9C(v1);
  v0[3] = v2;
  v0[4] = sub_100008A64();
  v3 = sub_1000087D0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100004A60()
{
  sub_100008A1C();
  type metadata accessor for PredictedTransactions();
  v1 = PredictedTransactions.__allocating_init()();
  v0[5] = v1;
  static Logger.core.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_1000089AC(v3))
  {
    v4 = sub_1000089E0();
    *v4 = 0;
    sub_10000894C();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002EFC(v4);
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];

  (*(v11 + 8))(v10, v12);
  v15 = (*((swift_isaMask & *v1) + 0x78) + **((swift_isaMask & *v1) + 0x78));
  v13 = swift_task_alloc();
  v0[6] = v13;
  *v13 = v0;
  v13[1] = sub_100004C24;

  return v15();
}

uint64_t sub_100004C24()
{
  sub_100008818();
  sub_100008834();
  v1 = *v0;
  sub_1000087C0();
  *v2 = v1;

  v3 = sub_1000087D0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100004D08()
{
  sub_100008818();

  sub_100008880();

  return v1();
}

uint64_t sub_100004D88(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1000087BC;

  return sub_1000049C0();
}

uint64_t sub_100004E30()
{
  sub_100008818();
  v1 = sub_100008A7C();
  v0[3] = v1;
  sub_100002E9C(v1);
  v0[4] = v2;
  v0[5] = sub_100008A64();
  v3 = sub_1000087D0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100004ECC()
{
  sub_100008940();
  static Logger.core.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (sub_100008924(v2))
  {
    v3 = sub_1000089E0();
    *v3 = 0;
    sub_100008898();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100002EFC(v3);
  }

  v9 = sub_100008868();
  v10(v9);
  sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.save());
  v22 = v11;
  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  v20 = sub_100008824(v12, v13, v14, v15, v16, v17, v18, v19, v22);

  return v20();
}

uint64_t sub_100004FFC(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  sub_10000896C();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  return sub_1000043BC(a5, v8);
}

uint64_t sub_100005068(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1000087B8;

  return sub_100004E30();
}

uint64_t sub_100005110()
{
  sub_100008818();
  v1 = sub_100008A7C();
  v0[3] = v1;
  sub_100002E9C(v1);
  v0[4] = v2;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v3 = sub_1000087D0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000051C0()
{
  sub_100008818();
  *(v0 + 56) = dispatch thunk of EntityGroups.computeAndPersistEntityGroups()();
  sub_1000087E0(&async function pointer to dispatch thunk of EntityGroups.save());
  v12 = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v10 = sub_100008824(v2, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_10000525C()
{
  sub_100008818();
  sub_100008834();
  sub_10000880C();
  *v3 = v2;
  v4 = *v1;
  sub_1000087C0();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_100008874();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100005358()
{
  sub_100008818();
  sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.save());
  v12 = v1;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v10 = sub_100008824(v2, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1000053EC()
{
  sub_100008818();
  sub_100008834();
  v3 = v2;
  sub_10000880C();
  *v4 = v3;
  v5 = *v1;
  sub_1000087C0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_100008874();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = *(v5 + 8);
    v11 = *(v3 + 56);

    return v10(v11);
  }
}

uint64_t sub_10000551C()
{
  sub_100008A1C();
  static Logger.core.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (sub_1000089AC(v2))
  {
    v3 = sub_1000089E0();
    *v3 = 0;
    sub_10000895C();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100002EFC(v3);
  }

  v9 = sub_100008868();
  v10(v9);
  sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.save());
  v22 = v11;
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *v12 = v0;
  v20 = sub_100008824(v12, v13, v14, v15, v16, v17, v18, v19, v22);

  return v20();
}

uint64_t sub_100005648()
{
  sub_10000888C();
  static Logger.core.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (sub_100008924(v2))
  {
    v3 = sub_1000089E0();
    *v3 = 0;
    sub_100008898();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100002EFC(v3);
  }

  v9 = sub_100008868();
  v10(v9);

  v11 = *(v0 + 8);
  v12 = *(v0 + 56);

  return v11(v12);
}

uint64_t sub_100005730()
{
  sub_100008818();
  v1 = sub_100008A7C();
  v0[3] = v1;
  sub_100002E9C(v1);
  v0[4] = v2;
  v0[5] = sub_100008A64();
  v3 = sub_1000087D0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000057CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_100008A28();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  dispatch thunk of EntityGroups.deleteOutdatedEntityGroupsAndInsights()();
  static Logger.core.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v22[4];
  v29 = v22[5];
  v30 = v22[3];
  if (v27)
  {
    sub_1000089F8();
    sub_100008A44();
    sub_100008A10();
    *v29 = 136315138;
    sub_100002D9C(&qword_100018828, &unk_10000F260);
    v31 = Dictionary.description.getter();
    v33 = sub_10000272C(v31, v32, &a11);

    *(v29 + 4) = v33;
    sub_10000895C();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    sub_1000088C4();
    sub_100002EFC(v29);

    (*(v28 + 8))(a10, v30);
  }

  else
  {

    (*(v28 + 8))(v29, v30);
  }

  sub_1000089C4();

  return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100005948()
{
  sub_100008818();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for Logger();
  v1[5] = v4;
  sub_100002E9C(v4);
  v1[6] = v5;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = sub_1000087D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100005A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_100008A28();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[2];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = sub_100005F0C(v26, v27, v25);

  if (v28)
  {
    v29 = v22[3];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = sub_100005F0C(v30, v31, v29);

    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = &_swiftEmptySetSingleton;
    }

    v34 = sub_100005F5C(v33, v28);

    static Logger.core.getter();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v22[8];
    v40 = v22[5];
    v39 = v22[6];
    if (v37)
    {
      sub_1000089F8();
      sub_100008A44();
      sub_100008A10();
      *v38 = 136315138;
      v41 = Set.description.getter();
      v43 = sub_10000272C(v41, v42, &a11);

      *(v38 + 4) = v43;
      sub_10000895C();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      sub_1000088C4();
      sub_100002EFC(v38);

      v49 = *(v39 + 8);
      v49(a10, v40);
    }

    else
    {

      v49 = *(v39 + 8);
      v49(v38, v40);
    }

    v22[9] = v49;
    v22[10] = sub_100005FB0(v34);
    sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.delete(_:));
    a10 = v58;
    v59 = swift_task_alloc();
    v22[11] = v59;
    *v59 = v22;
    v59[1] = sub_100005C6C;
    sub_1000089C4();
  }

  else
  {

    sub_100008880();
    sub_1000089C4();
  }

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100005C6C()
{
  sub_100008818();
  sub_100008834();
  v3 = v2;
  sub_10000880C();
  *v4 = v3;
  v5 = *v1;
  sub_1000087C0();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    sub_100008874();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_100008880();

    return v10();
  }
}

uint64_t sub_100005D9C()
{
  sub_100008940();

  static Logger.core.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_1000089F8();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    sub_10000894C();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    sub_1000071B0(v4, &qword_100018830, &unk_10000F470);
    sub_1000088A8();
    sub_100002EFC(v3);
  }

  else
  {
  }

  (*(v0 + 72))(*(v0 + 56), *(v0 + 40));

  sub_100008880();

  return v11();
}

uint64_t sub_100005F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000075B0(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void *sub_100005F5C(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_100007628(a1);
    return a2;
  }

  else
  {

    return sub_100007754(a1, a2);
  }
}

void *sub_100005FB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_100006DA0(*(a1 + 16), 0);
  v4 = sub_1000085A8(&v6, v3 + 4, v2, a1);
  sub_100008704(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

id *sub_100006040()
{

  return v0;
}

uint64_t sub_100006078()
{
  sub_100006040();
  v0 = sub_10000897C();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_1000060A4()
{
  type metadata accessor for FinHealthDaemon();
  v0 = swift_allocObject();
  sub_100003040();
  return v0;
}

id sub_1000060EC()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___FHDaemonProtocol];

  return v0;
}

id sub_100006150()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10finhealthd16FinHealthService_service;
  type metadata accessor for FinHealthDaemon();
  v3 = swift_allocObject();
  sub_100003040();
  *&v1[v2] = v3;
  v4 = OBJC_IVAR____TtC10finhealthd16FinHealthService_interface;
  *&v1[v4] = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___FHDaemonProtocol];
  v12.receiver = v1;
  v12.super_class = type metadata accessor for FinHealthService();
  v5 = objc_msgSendSuper2(&v12, "init");
  sub_100006E64();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = v5;
  v10 = sub_100006260(v6, v8);
  [v10 setDelegate:v9];
  [v10 resume];

  return v9;
}

id sub_100006260(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithMachServiceName:v3];

  return v4;
}

uint64_t sub_1000062F8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = [objc_allocWithZone(FinHealthEntitlementsChecker) initWithConnection:a2];
  if ([v12 fhPrivateAllAccess] & 1) != 0 || (objc_msgSend(v12, "fhAllAccess"))
  {
    static Logger.core.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (sub_1000089AC(v14))
    {
      v15 = sub_1000089E0();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Accepting new connection.", v15, 2u);
      sub_100002EFC(v15);
    }

    (*(v6 + 8))(v9, v5);
    [a2 setExportedInterface:*(v3 + OBJC_IVAR____TtC10finhealthd16FinHealthService_interface)];
    [a2 setExportedObject:*(v3 + OBJC_IVAR____TtC10finhealthd16FinHealthService_service)];
    [a2 resume];

    return 1;
  }

  else
  {
    static Logger.core.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = sub_1000089E0();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Connection without entitlement attempted to connect. Denying", v19, 2u);
      sub_1000088A8();
    }

    (*(v6 + 8))(v11, v5);
    return 0;
  }
}

id sub_1000065C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinHealthService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100006648(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000087B4;

  return v6();
}

uint64_t sub_100006730(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100006818;

  return v7();
}

uint64_t sub_100006818()
{
  sub_100008818();
  sub_100008834();
  v1 = *v0;
  sub_1000087C0();
  *v2 = v1;

  sub_100008880();

  return v3();
}

uint64_t sub_1000068F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002D9C(&qword_100018A28, &qword_10000F4B0);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_100007118(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (sub_100007188(v11, 1, v12) == 1)
  {
    sub_1000071B0(v11, &qword_100018A28, &qword_10000F4B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1000071B0(a3, &qword_100018A28, &qword_10000F4B0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000071B0(a3, &qword_100018A28, &qword_10000F4B0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_100006BC4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100006CBC;

  return v6(a1);
}

uint64_t sub_100006CBC()
{
  sub_100008818();
  sub_100008834();
  v1 = *v0;
  sub_1000087C0();
  *v2 = v1;

  sub_100008880();

  return v3();
}

void *sub_100006DA0(uint64_t a1, uint64_t a2)
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

  sub_100002D9C(&qword_100018A30, &qword_10000F378);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

unint64_t sub_100006E64()
{
  result = qword_1000188A8;
  if (!qword_1000188A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000188A8);
  }

  return result;
}

uint64_t sub_100006EAC()
{
  sub_10000888C();
  v0 = swift_task_alloc();
  v1 = sub_1000088F8(v0);
  *v1 = v2;
  v3 = sub_1000087F0(v1);

  return v4(v3);
}

uint64_t sub_100006F68()
{
  sub_100008940();
  v0 = swift_task_alloc();
  v1 = sub_1000088F8(v0);
  *v1 = v2;
  v1[1] = sub_1000087B4;
  v3 = sub_100008868();

  return v4(v3);
}

uint64_t sub_10000701C()
{
  swift_unknownObjectRelease();

  v0 = sub_10000897C();

  return _swift_deallocObject(v0);
}

uint64_t sub_100007054()
{
  sub_100008940();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_1000088F8(v6);
  *v7 = v8;
  v7[1] = sub_1000087B4;

  return sub_100006730(v2, v3, v4, v5);
}

uint64_t sub_100007118(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D9C(&qword_100018A28, &qword_10000F4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000071B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002D9C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007210()
{

  v0 = sub_10000896C();

  return _swift_deallocObject(v0);
}

uint64_t sub_100007240()
{
  sub_10000888C();
  v0 = swift_task_alloc();
  v1 = sub_1000088F8(v0);
  *v1 = v2;
  v3 = sub_100008904(v1);

  return v4(v3);
}

uint64_t sub_1000072D8()
{
  sub_10000888C();
  v0 = swift_task_alloc();
  v1 = sub_1000088F8(v0);
  *v1 = v2;
  v3 = sub_100008904(v1);

  return v4(v3);
}

uint64_t sub_100007370()
{
  sub_10000888C();
  v0 = swift_task_alloc();
  v1 = sub_1000088F8(v0);
  *v1 = v2;
  v3 = sub_1000087F0(v1);

  return v4(v3);
}

uint64_t sub_100007400()
{
  _Block_release(*(v0 + 16));

  v1 = sub_10000896C();

  return _swift_deallocObject(v1);
}

uint64_t sub_100007438()
{
  sub_10000888C();
  v0 = swift_task_alloc();
  v1 = sub_1000088F8(v0);
  *v1 = v2;
  v3 = sub_1000087F0(v1);

  return v4(v3);
}

uint64_t sub_1000074C8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0);
}

uint64_t sub_100007508()
{
  sub_10000888C();
  v0 = swift_task_alloc();
  v1 = sub_1000088F8(v0);
  *v1 = v2;
  v1[1] = sub_1000087B4;
  v3 = sub_100008868();

  return v4(v3);
}

unint64_t sub_1000075B0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000084F4(a1, a2, v4);
}

uint64_t sub_100007628(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
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
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100007C2C(v12, v13);

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
        return result;
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

  return result;
}

void *sub_100007754(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
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
    v13 = a2 + 7;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v22 = (v5[6] + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              __chkstk_darwin(v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = v5[2];
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v34 = Hasher._finalize()();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (v5[6] + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_100007FC8(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_100007F40(v41, v44, v5 + 7, v44, v5, v7, v52);

            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_100008704(v14);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

uint64_t sub_100007C2C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000081E4();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_10000833C(v8);
  *v2 = v15;
  return v13;
}

unint64_t *sub_100007D54(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_100007FC8(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_100007F40(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_100007D54(a1, a2, a5, a6, a7);

  return v12;
}

Swift::Int sub_100007FC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100002D9C(&qword_100018A38, &unk_10000F380);
  result = static _SetStorage.allocate(capacity:)();
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
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_1000081E4()
{
  v1 = v0;
  sub_100002D9C(&qword_100018A38, &unk_10000F380);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

unint64_t sub_10000833C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
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

unint64_t sub_1000084F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void *sub_1000085A8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10000870C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void type metadata accessor for FHInsightUpdateRequestType()
{
  if (!qword_100018A50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100018A50);
    }
  }
}

uint64_t sub_1000088A8()
{
}

uint64_t sub_1000088C4()
{
  sub_100002CF4(v0);
}

BOOL sub_100008924(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_1000089AC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000089E0()
{

  return swift_slowAlloc();
}

uint64_t sub_1000089F8()
{

  return swift_slowAlloc();
}

uint64_t sub_100008A44()
{

  return swift_slowAlloc();
}

uint64_t sub_100008A64()
{

  return swift_task_alloc();
}

uint64_t sub_100008A7C()
{
  *(v1 + 16) = v0;

  return type metadata accessor for Logger();
}

uint64_t variable initialization expression of FinHealthBackgroundTasks.overnightSync()
{
  v0 = type metadata accessor for FinHealthFeatureFlag.FinHealthFeatures();
  sub_10000C498();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_10000C4AC();
  v6 = v5 - v4;
  v7 = sub_10000C630();
  v8(v7);
  v9 = static FinHealthFeatureFlag.isEnabled(_:)();
  (*(v2 + 8))(v6, v0);
  return v9 & 1;
}

id variable initialization expression of FinHealthBackgroundTasks.taskScheduler()
{
  v0 = [objc_opt_self() sharedScheduler];

  return v0;
}

id sub_100008BB4(uint64_t a1, uint64_t a2)
{
  sub_10000C658(v2 + 40, a2);
  v3 = *(v2 + 40);

  return v3;
}

void sub_100008BEC(uint64_t a1, uint64_t a2)
{
  sub_10000C63C(v2 + 40, a2);
  v4 = *(v2 + 40);
  *(v2 + 40) = a1;
}

id sub_100008C6C(uint64_t a1, uint64_t a2)
{
  sub_10000C658(v2 + 48, a2);
  v3 = *(v2 + 48);

  return v3;
}

void sub_100008CA4(uint64_t a1, uint64_t a2)
{
  sub_10000C63C(v2 + 48, a2);
  v4 = *(v2 + 48);
  *(v2 + 48) = a1;
}

uint64_t sub_100008D54(char a1, uint64_t a2)
{
  result = sub_10000C63C(v2 + 56, a2);
  *(v2 + 56) = a1;
  return result;
}

uint64_t sub_100008DCC()
{
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000C498();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_10000C4AC();
  v5 = v4 - v3;
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  sub_10000C4AC();
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  sub_10000C4AC();
  sub_100009034();
  static DispatchQoS.unspecified.getter();
  sub_100009078();
  sub_100002D9C(&qword_100018AD0, &qword_10000F3E0);
  sub_1000090D0();
  sub_10000C5D8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v9 = *(v1 + 104);
  v9(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  sub_10000C6C4();
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.unspecified.getter();
  sub_10000C5D8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9(v5, v8, v14);
  sub_10000C6C4();
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return (*(v13 + 200))(v12, v10);
}

unint64_t sub_100009034()
{
  result = qword_100018AC0;
  if (!qword_100018AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100018AC0);
  }

  return result;
}

unint64_t sub_100009078()
{
  result = qword_100018AC8;
  if (!qword_100018AC8)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018AC8);
  }

  return result;
}

unint64_t sub_1000090D0()
{
  result = qword_100018AD8;
  if (!qword_100018AD8)
  {
    sub_100009134(&qword_100018AD0, &qword_10000F3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018AD8);
  }

  return result;
}

uint64_t sub_100009134(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t FinHealthBackgroundTasks.__allocating_init(processingQueue:overnightQueue:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FinHealthBackgroundTasks.init(processingQueue:overnightQueue:)(a1, a2);
  return v4;
}

uint64_t FinHealthBackgroundTasks.init(processingQueue:overnightQueue:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FinHealthFeatureFlag.FinHealthFeatures();
  sub_10000C498();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000C4AC();
  v11 = v10 - v9;
  (*(v7 + 104))(v10 - v9, enum case for FinHealthFeatureFlag.FinHealthFeatures.financekitIntegration(_:), v5);
  v12 = static FinHealthFeatureFlag.isEnabled(_:)();
  (*(v7 + 8))(v11, v5);
  *(v2 + 16) = v12 & 1;
  *(v2 + 24) = [objc_opt_self() sharedScheduler];
  *(v2 + 56) = 0;
  *(v2 + 32) = [objc_opt_self() sharedInstance];
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return v2;
}

Swift::Void __swiftcall FinHealthBackgroundTasks.registerAllActivities()()
{
  sub_10000A388();

  sub_100009340();
}

uint64_t sub_100009340()
{
  type metadata accessor for DASActivities();
  sub_10000C498();
  __chkstk_darwin(v3);
  sub_10000C4AC();
  v4 = sub_10000C630();
  v5(v4);
  DASActivities.callAsFunction()();
  v6 = sub_10000C600();
  v8 = v7(v6);
  v9 = (*(*v0 + 152))(v8);

  sub_10000C8E8(v1, v2, v9, &unk_10000F490, v0);
}

uint64_t sub_100009490()
{
  sub_100008818();
  v0[18] = v1;
  v2 = type metadata accessor for DASActivities();
  v0[19] = v2;
  sub_100002E9C(v2);
  v0[20] = v3;
  v0[21] = sub_100008A64();
  v4 = type metadata accessor for Logger();
  v0[22] = v4;
  sub_100002E9C(v4);
  v0[23] = v5;
  v0[24] = sub_10000C780();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v6 = sub_1000087D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100009598(uint64_t a1)
{
  if (*(v1[18] + 16) != 1)
  {

    sub_100008880();
    sub_10000C6E4();

    __asm { BRAA            X1, X16 }
  }

  static Logger.core.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[26];
  v6 = v1[22];
  v7 = v1[23];
  if (v4)
  {
    v41 = v3;
    v9 = v1[20];
    v8 = v1[21];
    v10 = v1[19];
    v11 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = sub_10000C630();
    v13(v12);
    DASActivities.callAsFunction()();
    sub_10000C6D8();
    (*(v9 + 8))(v8, v10);
    v14 = sub_10000C5A4();
    sub_10000272C(v14, v15, v16);
    sub_10000C750();
    sub_10000C618();
    v18 = (*(v17 + 152))();
    OS_dispatch_queue.label.getter();
    sub_10000C6D8();

    v19 = sub_10000C5A4();
    sub_10000272C(v19, v20, v21);
    sub_10000C750();
    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v2, v41, "Started running %s on queue %s", v11, 0x16u);
    sub_10000C700(v22, v23, v24, v25, v26, v27, v28, v29, v40, v42);
    sub_100002EFC(v18);
    sub_100002EFC(v11);

    v30 = *(v7 + 8);
    v30(v5, v6);
  }

  else
  {

    v30 = *(v7 + 8);
    v31 = sub_10000C5A4();
    v30(v31, v32);
  }

  v1[27] = v30;
  static Task<>.checkCancellation()();
  v1[28] = 0;
  v35 = *(v1[18] + 32);
  v1[2] = v1;
  v1[7] = v1 + 37;
  v1[3] = sub_1000098F0;
  v36 = swift_continuation_init();
  v1[17] = sub_100002D9C(&qword_100018820, &qword_10000F258);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10000401C;
  v1[13] = &unk_100014910;
  v1[14] = v36;
  [v35 updateTransactionsWithCompletion:v1 + 10];
  sub_10000C6E4();

  return _swift_continuation_await(v37);
}

uint64_t sub_1000098F0()
{
  sub_100008818();
  sub_100008834();
  sub_10000C4BC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  sub_100008874();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000099EC()
{
  sub_100008940();
  v1 = v0[28];
  static Task<>.checkCancellation()();
  v0[30] = v1;
  if (v1)
  {
    sub_10000C588();

    sub_10000C4EC();
    sub_10000C798();

    __asm { BRAA            X1, X16 }
  }

  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  sub_10000C528(v4);
  sub_10000C798();

  return sub_10000B5B4();
}

uint64_t sub_100009AC0()
{
  sub_100008818();
  sub_100008834();
  sub_10000C4BC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = v3;

  v4 = sub_1000087D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100009BA8()
{
  sub_100008940();
  v1 = v0[30];
  static Task<>.checkCancellation()();
  v0[33] = v1;
  if (v1)
  {

    sub_10000C588();

    sub_10000C4EC();
    sub_10000C798();

    __asm { BRAA            X1, X16 }
  }

  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  sub_10000C5CC(v4);
  sub_10000C798();

  return sub_10000AB40();
}

uint64_t sub_100009C9C()
{
  sub_100008818();
  sub_100008834();
  sub_10000C4BC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 280) = v3;

  v4 = sub_1000087D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100009D84()
{
  sub_100008940();
  v1 = *(v0 + 264);
  static Task<>.checkCancellation()();
  if (v1)
  {

    sub_10000C588();

    sub_10000C4EC();
    sub_10000C798();

    __asm { BRAA            X1, X16 }
  }

  v4 = swift_task_alloc();
  *(v0 + 288) = v4;
  *v4 = v0;
  v4[1] = sub_100009E90;
  sub_10000C798();

  return sub_10000BA5C();
}

uint64_t sub_100009E90()
{
  sub_100008818();
  sub_100008834();
  v1 = *v0;
  sub_1000087C0();
  *v2 = v1;

  v3 = sub_1000087D0();

  return _swift_task_switch(v3, v4, v5);
}

void sub_100009FAC(uint64_t a1)
{
  static Logger.core.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[27];
  v6 = v1[25];
  v7 = v1[22];
  if (v4)
  {
    v34 = v1[27];
    v9 = v1[20];
    v8 = v1[21];
    v10 = v1[19];
    v11 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = sub_10000C630();
    v13(v12);
    DASActivities.callAsFunction()();
    sub_10000C6D8();
    (*(v9 + 8))(v8, v10);
    v14 = sub_10000C5A4();
    sub_10000272C(v14, v15, v16);
    sub_10000C750();
    sub_10000C618();
    v18 = (*(v17 + 152))();
    OS_dispatch_queue.label.getter();
    sub_10000C6D8();

    v19 = sub_10000C5A4();
    sub_10000272C(v19, v20, v21);
    sub_10000C750();
    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ended running %s on queue %s", v11, 0x16u);
    sub_10000C700(v22, v23, v24, v25, v26, v27, v28, v29, v33, v35);
    sub_100002EFC(v18);
    sub_100002EFC(v11);

    v34(v6, v7);
  }

  else
  {

    v30 = sub_10000C5A4();
    v5(v30);
  }

  sub_100008880();
  sub_10000C6E4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10000A1E8()
{
  sub_100008940();
  swift_willThrow();
  static Logger.core.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10000C768();
  if (sub_10000C738())
  {
    sub_1000089F8();
    v2 = sub_10000C5B0();
    sub_10000C720(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_10000C6AC(v3);
    sub_10000894C();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_10000C38C(v2);
    sub_1000088A8();
    sub_10000C550();
  }

  else
  {
  }

  (*(v0 + 216))(*(v0 + 192), *(v0 + 176));
  static Task<>.checkCancellation()();
  *(v0 + 240) = 0;
  v9 = swift_task_alloc();
  *(v0 + 248) = v9;
  *v9 = v0;
  sub_10000C528(v9);

  return sub_10000B5B4();
}

void sub_10000A388()
{
  type metadata accessor for DASActivities();
  sub_10000C498();
  __chkstk_darwin(v3);
  sub_10000C4AC();
  v4 = sub_10000C630();
  v5(v4);
  DASActivities.callAsFunction()();
  v6 = sub_10000C600();
  v8 = v7(v6);
  v9 = (*(*v0 + 128))(v8);
  sub_10000C8E8(v1, v2, v9, &unk_10000F498, 0);
}

uint64_t sub_10000A4C8()
{
  sub_100008818();
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  sub_100002E9C(v1);
  v0[3] = v2;
  v0[4] = sub_10000C780();
  v0[5] = swift_task_alloc();
  v3 = type metadata accessor for FinanceActivities();
  v0[6] = v3;
  sub_100002E9C(v3);
  v0[7] = v4;
  v0[8] = sub_100008A64();
  updated = type metadata accessor for FinanceStore.UpdateFrequency();
  v0[9] = updated;
  sub_100002E9C(updated);
  v0[10] = v6;
  v0[11] = sub_100008A64();
  v7 = sub_1000087D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10000A60C()
{
  v32 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v27 = v0[11];
  v29 = v0[9];
  v3 = v0[7];
  v30 = v0[6];
  type metadata accessor for FinanceStore();
  swift_allocObject();
  FinanceStore.init()();
  sub_100002D9C(&qword_100018C28, &unk_10000F4A0);
  v4 = type metadata accessor for FinanceStore.BackgroundDataType();
  sub_10000C498();
  v6 = v5;
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10000F3D0;
  (*(v6 + 104))(v8 + v7, enum case for FinanceStore.BackgroundDataType.transactions(_:), v4);
  (*(v1 + 104))(v27, enum case for FinanceStore.UpdateFrequency.immediate(_:), v29);
  v24 = enum case for FinanceActivities.extensionBundleId(_:);
  v25 = *(v3 + 104);
  v25(v2);
  FinanceActivities.callAsFunction()();
  v26 = *(v3 + 8);
  v26(v2, v30);
  FinanceStore.enableBackgroundDelivery(for:frequency:bundleIdentifier:)();
  (*(v0[10] + 8))(v0[11], v0[9]);

  static Logger.core.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[8];
    v12 = v0[6];
    v28 = v0[5];
    v13 = v0[3];
    v23 = v0[2];
    v14 = sub_1000089F8();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315138;
    (v25)(v11, v24, v12);
    v16 = FinanceActivities.callAsFunction()();
    v26(v11, v12);
    v17 = sub_10000272C(v16._countAndFlagsBits, v16._object, &v31);

    *(v14 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Successfully registered FH->FK extension with bundleIdentifier: %s", v14, 0xCu);
    sub_100002CF4(v15);
    sub_1000088A8();
    sub_100002EFC(v14);

    (*(v13 + 8))(v28, v23);
  }

  else
  {
    v18 = v0[5];
    v20 = v0[2];
    v19 = v0[3];

    (*(v19 + 8))(v18, v20);
  }

  sub_100008880();

  return v21();
}

uint64_t sub_10000AB40()
{
  sub_100008818();
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  sub_100002E9C(v1);
  v0[3] = v2;
  v0[4] = sub_10000C780();
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v3 = sub_1000087D0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10000AC34(uint64_t a1)
{
  static Logger.core.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_100008924(v3))
  {
    v4 = sub_1000089E0();
    sub_10000C5F4(v4);
    sub_10000C4CC(&_mh_execute_header, v5, v6, "Started running computeAndPersistEntityGroups in overnightSync");
    sub_10000C56C();
  }

  v7 = v1[11];
  v8 = v1[2];
  v9 = v1[3];

  v10 = *(v9 + 8);
  v1[12] = v10;
  v10(v7, v8);
  v1[13] = [objc_allocWithZone(type metadata accessor for EntityGroups()) init];
  v1[14] = [objc_allocWithZone(type metadata accessor for IncomeInsights()) init];
  v1[15] = dispatch thunk of EntityGroups.computeAndPersistEntityGroups()();
  static Logger.core.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (sub_10000C690(v12))
  {
    *sub_1000089E0() = 0;
    sub_10000894C();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    sub_10000C550();
  }

  v18 = v1[10];
  v19 = v1[2];

  v10(v18, v19);
  static Logger.core.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (sub_10000C690(v21))
  {
    *sub_1000089E0() = 0;
    sub_10000894C();
    _os_log_impl(v22, v23, v24, v25, v26, 2u);
    sub_10000C550();
  }

  v27 = sub_10000C5A4();
  (v10)(v27);
  sub_1000087E0(&async function pointer to dispatch thunk of EntityGroups.save());
  v31 = v28;
  v29 = swift_task_alloc();
  v1[16] = v29;
  *v29 = v1;
  sub_10000C5CC(v29);

  return v31();
}

uint64_t sub_10000AE6C()
{
  sub_100008818();
  sub_100008834();
  sub_10000C4BC();
  *v3 = v2;
  v4 = *v1;
  sub_1000087C0();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_100008874();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10000AF64()
{
  sub_100008940();
  static Logger.core.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (sub_100008924(v2))
  {
    v3 = sub_1000089E0();
    sub_10000C5F4(v3);
    sub_10000C4CC(&_mh_execute_header, v4, v5, "Finished running entityGroupsWriter in overnightSync");
    sub_10000C56C();
  }

  (*(v0 + 96))(*(v0 + 64), *(v0 + 16));
  static Logger.core.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (sub_100008924(v7))
  {
    v8 = sub_1000089E0();
    sub_10000C5F4(v8);
    sub_10000C4CC(&_mh_execute_header, v9, v10, "Started running incomeInsightsWriter in overnightSync");
    sub_10000C56C();
  }

  v11 = *(v0 + 96);
  v12 = *(v0 + 56);
  v13 = *(v0 + 16);

  v11(v12, v13);
  sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.save());
  v25 = v14;
  v15 = swift_task_alloc();
  *(v0 + 144) = v15;
  *v15 = v0;
  v23 = sub_10000C4FC(v15, v16, v17, v18, v19, v20, v21, v22, v25);

  return v23();
}

uint64_t sub_10000B0AC()
{
  sub_100008818();
  sub_100008834();
  sub_10000C4BC();
  *v3 = v2;
  v4 = *v1;
  sub_1000087C0();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_100008874();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10000B1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100008A28();
  static Logger.core.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  v17 = sub_100008924(v16);
  v18 = *(v14 + 104);
  if (v17)
  {
    v19 = sub_1000089E0();
    sub_10000C5F4(v19);
    sub_10000C4CC(&_mh_execute_header, v20, v21, "Finished running incomeInsightsWriter in overnightSync");
    sub_10000C56C();
  }

  v22 = *(v14 + 96);
  v23 = *(v14 + 48);
  v34 = *(v14 + 40);
  v35 = *(v14 + 32);
  v24 = *(v14 + 16);

  v22(v23, v24);

  sub_10000C6B8();
  sub_1000089C4();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, a12, a13, a14);
}

uint64_t sub_10000B2CC()
{
  sub_100008940();
  static Logger.core.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10000C768();
  if (sub_10000C738())
  {
    sub_1000089F8();
    v2 = sub_10000C5B0();
    sub_10000C720(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_10000C6AC(v3);
    sub_10000894C();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_10000C38C(v2);
    sub_1000088A8();
    sub_10000C550();
  }

  else
  {
  }

  (*(v0 + 96))(*(v0 + 40), *(v0 + 16));
  static Logger.core.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (sub_100008924(v10))
  {
    v11 = sub_1000089E0();
    sub_10000C5F4(v11);
    sub_10000C4CC(&_mh_execute_header, v12, v13, "Started running incomeInsightsWriter in overnightSync");
    sub_10000C56C();
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 56);
  v16 = *(v0 + 16);

  v14(v15, v16);
  sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.save());
  v28 = v17;
  v18 = swift_task_alloc();
  *(v0 + 144) = v18;
  *v18 = v0;
  v26 = sub_10000C4FC(v18, v19, v20, v21, v22, v23, v24, v25, v28);

  return v26();
}

uint64_t sub_10000B474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100008A28();
  static Logger.core.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = sub_10000C690(v16);
  v18 = v14[13];
  v19 = v14[14];
  if (v17)
  {
    *sub_1000089E0() = 0;
    sub_10000894C();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    sub_10000C550();
  }

  v25 = v14[12];
  v37 = v14[6];
  v38 = v14[5];
  v26 = v14[4];
  v27 = v14[2];

  v25(v26, v27);

  sub_10000C6B8();
  sub_1000089C4();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, a12, a13, a14);
}

uint64_t sub_10000B5B4()
{
  sub_100008818();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_100002E9C(v2);
  v1[4] = v3;
  v1[5] = sub_10000C780();
  v1[6] = swift_task_alloc();
  v4 = sub_1000087D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10000B664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_100008A28();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = [objc_allocWithZone(type metadata accessor for EntityGroups()) init];
  v22[7] = v25;
  if (dispatch thunk of EntityGroups.updateGroupSchema()())
  {
    static Logger.core.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (sub_100008924(v27))
    {
      v28 = sub_1000089E0();
      sub_10000C5F4(v28);
      sub_10000C4CC(&_mh_execute_header, v29, v30, "Schema updated -- Clearing all insights");
      sub_10000C56C();
    }

    v31 = v22[6];
    v32 = v22[3];
    v33 = v22[4];

    (*(v33 + 8))(v31, v32);
    v34 = swift_task_alloc();
    v22[8] = v34;
    *v34 = v22;
    sub_10000C5CC(v34);
    sub_1000089C4();

    return sub_10000BF28();
  }

  else
  {
    dispatch thunk of EntityGroups.deleteOutdatedEntityGroupsAndInsights()();
    static Logger.core.getter();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();

    v39 = os_log_type_enabled(v37, v38);
    v41 = v22[4];
    v40 = v22[5];
    v42 = v22[3];
    if (v39)
    {
      a10 = v22[3];
      v43 = sub_1000089F8();
      v44 = swift_slowAlloc();
      a11 = v44;
      *v43 = 136315138;
      sub_100002D9C(&qword_100018828, &unk_10000F260);
      v45 = Dictionary.description.getter();
      a9 = v40;
      v47 = sub_10000272C(v45, v46, &a11);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v37, v38, "Clearing insights for group ids: %s", v43, 0xCu);
      sub_100002CF4(v44);
      sub_100002EFC(v44);
      sub_100002EFC(v43);

      (*(v41 + 8))(a9, a10);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
    }

    sub_10000C6B8();
    sub_1000089C4();

    return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_10000B908()
{
  sub_100008818();
  sub_100008834();
  v1 = *v0;
  sub_1000087C0();
  *v2 = v1;

  v3 = sub_1000087D0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10000B9EC()
{
  sub_100008818();

  sub_10000C6B8();

  return v1(&_swiftEmptyDictionarySingleton);
}

uint64_t sub_10000BA5C()
{
  sub_100008818();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for Logger();
  v0[4] = v3;
  sub_100002E9C(v3);
  v0[5] = v4;
  v0[6] = sub_100008A64();
  v5 = sub_1000087D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10000BB00()
{
  sub_100008940();
  v1 = v0[2];
  v2 = [objc_allocWithZone(type metadata accessor for IncomeInsights()) init];
  v0[7] = v2;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = sub_100005F0C(v3, v4, v1);

  if (!v5)
  {

    sub_100008880();
    sub_10000C798();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[3];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = sub_100005F0C(v7, v8, v6);

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v11 = sub_100005F5C(v10, v5);

  v12 = sub_100005FB0(v11);
  v0[8] = v12;
  sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.delete(_:));
  v18 = v13;
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  sub_10000C5CC(v14);

  return v18(v12);
}

uint64_t sub_10000BC8C()
{
  sub_100008818();
  sub_100008834();
  v3 = v2;
  v4 = *v1;
  sub_1000087C0();
  *v5 = v4;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  sub_100008874();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10000BD94()
{
  sub_100008818();

  sub_100008880();

  return v1();
}

uint64_t sub_10000BDF4()
{
  sub_100008940();

  static Logger.core.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10000C768();
  v2 = sub_10000C738();
  v3 = v0[7];
  if (v2)
  {
    sub_1000089F8();
    v4 = sub_10000C5B0();
    sub_10000C720(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    sub_10000C6AC(v5);
    sub_10000894C();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    sub_10000C38C(v4);
    sub_1000088A8();
    sub_10000C550();
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  sub_100008880();

  return v11();
}

uint64_t sub_10000BF28()
{
  sub_100008818();
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  sub_100002E9C(v1);
  v0[3] = v2;
  v0[4] = sub_100008A64();
  v3 = sub_1000087D0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10000BFC8()
{
  sub_100008818();
  *(v0 + 40) = [objc_allocWithZone(type metadata accessor for IncomeInsights()) init];
  sub_1000087E0(&async function pointer to dispatch thunk of IncomeInsights.deleteAll());
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  sub_10000C5CC(v2);

  return v4();
}

uint64_t sub_10000C078()
{
  sub_100008818();
  sub_100008834();
  sub_10000C4BC();
  *v3 = v2;
  v4 = *v1;
  sub_1000087C0();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_100008874();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10000C170()
{
  sub_100008818();

  sub_100008880();

  return v1();
}

uint64_t sub_10000C1D0()
{
  sub_100008940();
  static Logger.core.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10000C768();
  v2 = sub_10000C738();
  v3 = v0[5];
  if (v2)
  {
    sub_1000089F8();
    v4 = sub_10000C5B0();
    sub_10000C720(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    sub_10000C6AC(v5);
    sub_10000894C();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    sub_10000C38C(v4);
    sub_1000088A8();
    sub_10000C550();
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  sub_100008880();

  return v11();
}

uint64_t FinHealthBackgroundTasks.__deallocating_deinit()
{
  FinHealthBackgroundTasks.deinit();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_10000C38C(uint64_t a1)
{
  v2 = sub_100002D9C(&qword_100018830, &unk_10000F470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C3F4()
{
  sub_100008818();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_10000C5CC(v1);

  return sub_100009490();
}

void sub_10000C4CC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10000C550()
{
}

uint64_t sub_10000C56C()
{
}

uint64_t sub_10000C588()
{
}

uint64_t sub_10000C5B0()
{

  return swift_slowAlloc();
}

uint64_t sub_10000C63C(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_10000C658(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_10000C674(uint64_t a1)
{

  return swift_beginAccess();
}

BOOL sub_10000C690(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000C6AC(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_10000C700(void x0_0, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t sub_10000C720(float a1)
{
  *v1 = a1;

  return swift_errorRetain();
}

BOOL sub_10000C738()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10000C750()
{
}

uint64_t sub_10000C768()
{
}

uint64_t sub_10000C780()
{

  return swift_task_alloc();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FinHealthService();
  qword_100018C40 = PredictedTransactions.__allocating_init()();
  static Logger.core.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting FinHealthService", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  dispatch_main();
}

uint64_t sub_10000C910(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v9 = sub_100002D9C(&qword_100018A28, &qword_10000F4B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for Logger();
  sub_10000C498();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  sub_10000E684(v16);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = sub_1000089F8();
    v33 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10000272C(a2, a3, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v18, "System task with identifier: %s started running.", v20, 0xCu);
    sub_100002CF4(v21);
    sub_100002EFC(v21);
    v22 = v20;
    a1 = v33;
    sub_100002EFC(v22);
  }

  (*(v14 + 8))(v5, v12);
  v23 = type metadata accessor for TaskPriority();
  sub_100006F3C(v11, 1, 1, v23);
  sub_10000E6DC();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v26 = v35;
  v25[4] = v34;
  v25[5] = v26;
  v25[6] = a2;
  v25[7] = a3;
  v25[8] = v24;

  v27 = sub_10000D204(0, 0, v11, &unk_10000F4F8, v25);
  v28 = swift_allocObject();
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = v27;
  sub_10000E660(v28);
  sub_10000E6AC(COERCE_DOUBLE(1107296256));
  aBlock[2] = v29;
  aBlock[3] = &unk_100014B68;
  v30 = _Block_copy(aBlock);

  [a1 setExpirationHandler:v30];
  _Block_release(v30);
}

uint64_t sub_10000CC20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[5] = a6;
  v10 = type metadata accessor for Logger();
  v8[8] = v10;
  v8[9] = *(v10 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[12] = v11;
  *v11 = v8;
  v11[1] = sub_10000CD84;

  return v13();
}

uint64_t sub_10000CD84()
{
  sub_100008818();
  sub_100008834();
  v2 = *v1;
  sub_1000087C0();
  *v3 = v2;
  *(v4 + 104) = v0;

  if (v0)
  {
    v5 = sub_10000CFE4;
  }

  else
  {
    v5 = sub_10000CE88;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000CE88(uint64_t a1)
{
  static Logger.core.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[11];
  v7 = v1[8];
  v8 = v1[9];
  if (v5)
  {
    sub_1000089F8();
    v9 = sub_10000E70C();
    *(v2 + 4) = sub_10000E748(4.8149e-34, v9, v10, v11, v12, v13, v14, v15, v16, v9);
    sub_10000E728(&_mh_execute_header, v17, v18, "System task with identifier: %s completed successfully.");
    sub_100002CF4(v9);
    sub_100002EFC(v9);
    sub_100002EFC(v2);
  }

  (*(v8 + 8))(v6, v7);
  sub_10000E6E8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    [Strong setTaskCompleted];
  }

  sub_100008880();

  return v21();
}

uint64_t sub_10000CFE4(uint64_t a1)
{
  v21 = v1;
  static Logger.core.getter();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[9];
  v5 = v1[10];
  v7 = v1[8];
  if (v4)
  {
    v19 = v1[10];
    v8 = v1[5];
    v9 = v1[6];
    v18 = v1[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_10000272C(v8, v9, &v20);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "System task with identifier: %s failed with error: %@", v10, 0x16u);
    sub_1000071B0(v11, &qword_100018830, &unk_10000F470);
    sub_100002EFC(v11);
    sub_100002CF4(v12);
    sub_100002EFC(v12);
    sub_100002EFC(v10);

    (*(v6 + 8))(v19, v18);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  sub_10000E6E8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [Strong setTaskCompleted];
  }

  sub_100008880();

  return v16();
}

uint64_t sub_10000D204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002D9C(&qword_100018A28, &qword_10000F4B0);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_100007118(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100007188(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1000071B0(v11, &qword_100018A28, &qword_10000F4B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1000071B0(a3, &qword_100018A28, &qword_10000F4B0);

      return v22;
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

  sub_1000071B0(a3, &qword_100018A28, &qword_10000F4B0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10000D4D8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_10000D51C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10000D584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10000D5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8;
  v17 = String._bridgeToObjectiveC()();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a4;
  v18[5] = a5;
  v22[4] = a7;
  v22[5] = v18;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10000D51C;
  v22[3] = a8;
  v19 = _Block_copy(v22);

  v20 = [v11 registerForTaskWithIdentifier:v17 usingQueue:a3 launchHandler:v19];
  _Block_release(v19);

  return v20;
}

uint64_t sub_10000D6E4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v9 = sub_100002D9C(&qword_100018A28, &qword_10000F4B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for Logger();
  sub_10000C498();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  sub_10000E684(v16);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = sub_1000089F8();
    v35 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10000272C(a2, a3, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v18, "System task with identifier: %s started running.", v20, 0xCu);
    sub_100002CF4(v21);
    sub_100002EFC(v21);
    v22 = v20;
    a1 = v35;
    sub_100002EFC(v22);
  }

  (*(v14 + 8))(v5, v12);
  sub_100002D9C(&qword_100018C30, &qword_10000F4B8);
  sub_10000E6DC();
  v23 = swift_allocObject();
  *(v23 + 20) = 0;
  *(v23 + 16) = 0;
  sub_10000E6DC();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  v26 = type metadata accessor for TaskPriority();
  sub_100006F3C(v11, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v28 = v37;
  v27[4] = v36;
  v27[5] = v28;
  v27[6] = sub_10000DB20;
  v27[7] = v25;
  v27[8] = a2;
  v27[9] = a3;
  v27[10] = v23;
  swift_retain_n();

  v29 = sub_10000D204(0, 0, v11, &unk_10000F4C8, v27);
  v30 = swift_allocObject();
  v30[2] = a2;
  v30[3] = a3;
  v30[4] = v29;
  sub_10000E660(v30);
  sub_10000E6AC(COERCE_DOUBLE(1107296256));
  aBlock[2] = v31;
  aBlock[3] = &unk_100014AA0;
  v32 = _Block_copy(aBlock);

  [a1 setExpirationHandler:v32];
  _Block_release(v32);
}

uint64_t sub_10000DA60()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10000DAAC()
{
  swift_unknownObjectWeakDestroy();
  sub_10000E6DC();

  return _swift_deallocObject(v0);
}

uint64_t sub_10000DAE0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10000DB20()
{
  v1 = *(v0 + 16);
  sub_10000E6DC();
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  os_unfair_lock_lock((v1 + 20));
  sub_10000E3BC((v1 + 16));
  os_unfair_lock_unlock((v1 + 20));
}

uint64_t sub_10000DBC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = v17;
  v8[4] = v18;
  v8[2] = a8;
  v12 = type metadata accessor for Logger();
  v8[5] = v12;
  v8[6] = *(v12 - 8);
  v8[7] = swift_task_alloc();
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[8] = v13;
  *v13 = v8;
  v13[1] = sub_10000DD40;

  return v15(a6, a7);
}

uint64_t sub_10000DD40()
{
  sub_100008818();
  sub_100008834();
  v1 = *v0;
  sub_1000087C0();
  *v2 = v1;

  return _swift_task_switch(sub_10000DE2C, 0, 0);
}

void sub_10000DE2C(uint64_t a1)
{
  static Logger.core.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v1[6];
    v5 = v1[7];
    v7 = v1[5];
    sub_1000089F8();
    v8 = sub_10000E70C();
    *(v2 + 4) = sub_10000E748(4.8149e-34, v8, v9, v10, v11, v12, v13, v14, v15, v8);
    sub_10000E728(&_mh_execute_header, v16, v17, "System task with identifier: %s finished running.");
    sub_100002CF4(v8);
    sub_100002EFC(v8);
    sub_100002EFC(v2);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v19 = v1[6];
    v18 = v1[7];
    v20 = v1[5];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v1[4];
  os_unfair_lock_lock((v21 + 20));
  if (*(v21 + 16) == 1)
  {
    os_unfair_lock_unlock((v21 + 20));

    sub_100008880();

    v22();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000DFAC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10000E004()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = sub_1000088F8(v2);
  *v3 = v4;
  v3[1] = sub_1000087B4;
  sub_10000E6C4();

  return sub_10000DBC8(v5, v6, v7, v8, v9, v10, v11, v1);
}

void sub_10000E0C0(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for Logger();
  sub_10000C498();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  sub_10000E684(v10);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    sub_1000089F8();
    v13 = sub_10000E70C();
    v14 = v13;
    *v3 = 136315138;
    *(v3 + 4) = sub_10000272C(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, v11, v12, "System task with identifier: %s expired. Cancelling concurrency task.", v3, 0xCu);
    sub_100002CF4(v13);
    sub_100002EFC(v13);
    sub_100002EFC(v3);
  }

  (*(v8 + 8))(v2, v6);
  Task.cancel()();
}

uint64_t sub_10000E24C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10000E284()
{
  v0 = swift_task_alloc();
  v1 = sub_1000088F8(v0);
  *v1 = v2;
  v3 = sub_100008904(v1);

  return v4(v3);
}

uint64_t sub_10000E320()
{
  v0 = swift_task_alloc();
  v1 = sub_1000088F8(v0);
  *v1 = v2;
  v3 = sub_100008904(v1);

  return v4(v3);
}

void sub_10000E3BC(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [Strong setTaskCompleted];
    }

    *a1 = 1;
  }
}

uint64_t sub_10000E438()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10000E488()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = sub_1000088F8(v2);
  *v3 = v4;
  v3[1] = sub_100006818;
  sub_10000E6C4();

  return sub_10000CC20(v5, v6, v7, v8, v9, v10, v11, v1);
}

uint64_t sub_10000E530()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10000E5A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000E5C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_100018C38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100018C38);
    }
  }
}

uint64_t sub_10000E660(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10000E684(uint64_t a1)
{

  return static Logger.core.getter();
}

uint64_t sub_10000E6E8()
{

  return swift_beginAccess();
}

uint64_t sub_10000E70C()
{

  return swift_slowAlloc();
}

void sub_10000E728(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t sub_10000E748(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_10000272C(v11, v10, &a10);
}

Swift::String __swiftcall DASActivities.callAsFunction()()
{
  v0 = DASActivities.callAsFunction()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall FinanceActivities.callAsFunction()()
{
  v0 = FinanceActivities.callAsFunction()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}