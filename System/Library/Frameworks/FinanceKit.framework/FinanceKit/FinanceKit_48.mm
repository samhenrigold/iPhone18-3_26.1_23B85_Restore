void sub_1B7619FBC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedTransactionInsights();
    sub_1B761BC38(&qword_1EB990040, v3, type metadata accessor for ManagedTransactionInsights);
    sub_1B7800FE8();
    v2 = v19;
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

  v17 = v5;
LABEL_8:
  v11 = v6;
  v12 = v7;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1B7801988() || (type metadata accessor for ManagedTransactionInsights(), swift_dynamicCast(), v15 = v18, v6 = v11, v7 = v12, !v18))
      {
LABEL_22:
        sub_1B71B7B58(v2);
        return;
      }

      goto LABEL_18;
    }

    v13 = v11;
    v14 = v12;
    v6 = v11;
    if (!v12)
    {
      break;
    }

LABEL_14:
    v7 = (v14 - 1) & v14;
    v15 = *(*(v2 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_22;
    }

LABEL_18:
    v16 = [v15 contactInsightObject];

    v11 = v6;
    v12 = v7;
    if (v16)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = *(v4 + 8 * v6);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1B761A21C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedTransactionInsights();
    sub_1B761BC38(&qword_1EB990040, v3, type metadata accessor for ManagedTransactionInsights);
    sub_1B7800FE8();
    v2 = v19;
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

  v17 = v5;
LABEL_8:
  v11 = v6;
  v12 = v7;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1B7801988() || (type metadata accessor for ManagedTransactionInsights(), swift_dynamicCast(), v15 = v18, v6 = v11, v7 = v12, !v18))
      {
LABEL_22:
        sub_1B71B7B58(v2);
        return;
      }

      goto LABEL_18;
    }

    v13 = v11;
    v14 = v12;
    v6 = v11;
    if (!v12)
    {
      break;
    }

LABEL_14:
    v7 = (v14 - 1) & v14;
    v15 = *(*(v2 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_22;
    }

LABEL_18:
    v16 = [v15 userInsightObject];

    v11 = v6;
    v12 = v7;
    if (v16)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = *(v4 + 8 * v6);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1B761A47C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedTransactionInsights();
    sub_1B761BC38(&qword_1EB990040, v3, type metadata accessor for ManagedTransactionInsights);
    sub_1B7800FE8();
    v2 = v19;
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

  v17 = v5;
LABEL_8:
  v11 = v6;
  v12 = v7;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1B7801988() || (type metadata accessor for ManagedTransactionInsights(), swift_dynamicCast(), v15 = v18, v6 = v11, v7 = v12, !v18))
      {
LABEL_22:
        sub_1B71B7B58(v2);
        return;
      }

      goto LABEL_18;
    }

    v13 = v11;
    v14 = v12;
    v6 = v11;
    if (!v12)
    {
      break;
    }

LABEL_14:
    v7 = (v14 - 1) & v14;
    v15 = *(*(v2 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_22;
    }

LABEL_18:
    v16 = [v15 finHealthInsightObject];

    v11 = v6;
    v12 = v7;
    if (v16)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = *(v4 + 8 * v6);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1B761A6DC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedTransactionInsights();
    sub_1B761BC38(&qword_1EB990040, v3, type metadata accessor for ManagedTransactionInsights);
    sub_1B7800FE8();
    v2 = v19;
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

  v17 = v5;
LABEL_8:
  v11 = v6;
  v12 = v7;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1B7801988() || (type metadata accessor for ManagedTransactionInsights(), swift_dynamicCast(), v15 = v18, v6 = v11, v7 = v12, !v18))
      {
LABEL_22:
        sub_1B71B7B58(v2);
        return;
      }

      goto LABEL_18;
    }

    v13 = v11;
    v14 = v12;
    v6 = v11;
    if (!v12)
    {
      break;
    }

LABEL_14:
    v7 = (v14 - 1) & v14;
    v15 = *(*(v2 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_22;
    }

LABEL_18:
    v16 = [v15 transactionIconObject];

    v11 = v6;
    v12 = v7;
    if (v16)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = *(v4 + 8 * v6);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1B761A93C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedTransactionInsights();
    sub_1B761BC38(&qword_1EB990040, v3, type metadata accessor for ManagedTransactionInsights);
    sub_1B7800FE8();
    v2 = v19;
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

  v17 = v5;
LABEL_8:
  v11 = v6;
  v12 = v7;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_1B7801988() || (type metadata accessor for ManagedTransactionInsights(), swift_dynamicCast(), v15 = v18, v6 = v11, v7 = v12, !v18))
      {
LABEL_22:
        sub_1B71B7B58(v2);
        return;
      }

      goto LABEL_18;
    }

    v13 = v11;
    v14 = v12;
    v6 = v11;
    if (!v12)
    {
      break;
    }

LABEL_14:
    v7 = (v14 - 1) & v14;
    v15 = *(*(v2 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_22;
    }

LABEL_18:
    v16 = [v15 foundInInsightObject];

    v11 = v6;
    v12 = v7;
    if (v16)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v14 = *(v4 + 8 * v6);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1B761AB9C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v23 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedInternalTransaction();
    sub_1B761BC38(&qword_1EB990048, 255, type metadata accessor for ManagedInternalTransaction);
    sub_1B7800FE8();
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
      if (!sub_1B7801988() || (type metadata accessor for ManagedInternalTransaction(), swift_dynamicCast(), v14 = v17, v5 = v10, v6 = v11, !v17))
      {
LABEL_22:
        sub_1B71B7B58(v2);
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
    v15 = [v14 insightsObject];

    v10 = v5;
    v11 = v6;
    if (v15)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
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

void ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(uint64_t a1)
{
  v3 = v1;
  swift_getObjectType();
  v5 = sub_1B77FFA18();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = [v3 sharedId];
  if (v12)
  {
    v25 = v3;
    v13 = v12;
    sub_1B77FF9E8();

    v14 = *(v6 + 32);
    v27 = v5;
    v14(v11, v9, v5);
    v26.receiver = swift_getObjCClassFromMetadata();
    v26.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
    v15 = objc_msgSendSuper2(&v26, sel_fetchRequest);
    v16 = sub_1B7800C18();
    [v15 setRelationshipKeyPathsForPrefetching_];

    sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B7807CD0;
    v18 = sub_1B77FF9B8();
    *(v17 + 56) = sub_1B7205540(0, &qword_1EB9905A8, 0x1E696AFB0);
    *(v17 + 64) = sub_1B726E47C();
    *(v17 + 32) = v18;
    v19 = sub_1B78010E8();
    [v15 setPredicate_];

    v20 = sub_1B7801498();
    if (v2)
    {
      (*(v6 + 8))(v11, v27);

      return;
    }

    v21 = sub_1B723B490(v20);

    _s10FinanceKit26ManagedTransactionInsightsC05mergedE012transactions2inACSgShyAA0c8InternalD0CG_So22NSManagedObjectContextCtFZ_0(v21, a1);
    v23 = v22;

    (*(v6 + 8))(v11, v27);
    v3 = v25;
  }

  if (![v3 insightsObject])
  {
    type metadata accessor for ManagedTransactionInsights();
    [v3 setInsightsObject_];
  }
}

id ManagedTransactionInsights.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedTransactionInsights.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedTransactionInsights.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedTransactionInsights.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedTransactionInsights;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

Swift::Void __swiftcall ManagedTransactionInsights.willSave()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_willSave);
  if (([v0 isDeleted] & 1) == 0)
  {
    v1 = sub_1B7800838();
    v2 = [v0 objectIDsForRelationshipNamed_];

    sub_1B7205540(0, &qword_1EB98F930, 0x1E695D630);
    v3 = sub_1B7800C38();

    if (!(v3 >> 62))
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
        return;
      }

      goto LABEL_4;
    }

    v6 = sub_1B7801958();

    if (!v6)
    {
LABEL_4:
      v5 = [v0 managedObjectContext];
      [v5 deleteObject_];
    }
  }
}

void sub_1B761B4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7238588(a1);
  if (!v4)
  {
LABEL_12:
    if (!sub_1B7238588(a1))
    {
      type metadata accessor for ManagedTransactionInsights();
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    }

    return;
  }

  v6 = v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1B7801958() >= 2)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (*(a1 + 16) < 2)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_4:
  sub_1B761989C(a1, v5);
  if (v7 >> 62)
  {
    v10 = v7;
    v11 = sub_1B7801958();
    v7 = v10;
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B8CA5DC0](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_37;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;
LABEL_16:

  [v6 setApplePayInsightObject_];

  sub_1B7619AFC(a1, v12);
  if (v7 >> 62)
  {
    v15 = v7;
    v16 = sub_1B7801958();
    v7 = v15;
    if (v16)
    {
      goto LABEL_18;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1B8CA5DC0](0, v7);
      goto LABEL_21;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v7 + 32);
LABEL_21:
      v14 = v13;
      goto LABEL_24;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v14 = 0;
LABEL_24:

  [v6 setBankMerchantInformationInsightObject_];

  sub_1B7619D5C(a1, v17);
  v19 = sub_1B723B2E0(v18);

  v20 = sub_1B728198C(v19);

  [v6 setMapsInsightObject_];

  sub_1B7619FBC(a1, v21);
  v23 = sub_1B723B328(v22);

  v24 = sub_1B76C4328(v23);

  [v6 setContactInsightObject_];

  sub_1B761A21C(a1, v25);
  v27 = sub_1B723B370(v26);

  sub_1B750F6C0(v27);
  v29 = v28;

  [v6 setUserInsightObject_];

  sub_1B761A47C(a1, v30);
  v32 = sub_1B723B3B8(v31);

  v34 = sub_1B7238570(v32);
  if (v34)
  {
    sub_1B76193C4(v32, v33);
    v36 = sub_1B723B0E8(v35);

    v37 = sub_1B728736C(v36);

    [v34 setFinHealthTransactionEntityGroupObject_];

    sub_1B7619630(v32, v38);
    v40 = sub_1B723B130(v39);

    v41 = sub_1B726E130(v40);

    [v34 setFinHealthIncomeInsightObject_];
  }

  else
  {
  }

  [v6 setFinHealthInsightObject_];

  sub_1B761A6DC(a1, v42);
  v44 = sub_1B723B400(v43);

  v45 = sub_1B720D5A8(v44);

  [v6 setTransactionIconObject_];

  v51[3] = &_s10FinanceKit11FeatureFlagVN_0;
  v51[4] = sub_1B721D3DC();
  LOBYTE(v51[0]) = 13;
  LOBYTE(v45) = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(v51);
  if (v45)
  {
    sub_1B761A93C(a1, v46);
    if (!(v7 >> 62))
    {
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_30:
        if ((v7 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x1B8CA5DC0](0, v7);
        }

        else
        {
          if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v47 = *(v7 + 32);
        }

        v48 = v47;
        goto LABEL_40;
      }

LABEL_39:
      v48 = 0;
LABEL_40:

      [v6 setFoundInInsightObject_];

      return;
    }

LABEL_38:
    v49 = v7;
    v50 = sub_1B7801958();
    v7 = v49;
    if (v50)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }
}

void _s10FinanceKit26ManagedTransactionInsightsC05mergedE012transactions2inACSgShyAA0c8InternalD0CG_So22NSManagedObjectContextCtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_1B761AB9C(a1, a2);
  v5 = sub_1B723B448(v4);

  sub_1B761B4C4(v5, a2);
  v7 = v6;

  if (v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1B7801908();
      type metadata accessor for ManagedInternalTransaction();
      sub_1B761BC38(&qword_1EB990048, 255, type metadata accessor for ManagedInternalTransaction);
      sub_1B7800FE8();
      v3 = v22;
      v8 = v23;
      v9 = v24;
      v10 = v25;
      v11 = v26;
    }

    else
    {
      v12 = -1 << *(v3 + 32);
      v8 = v3 + 56;
      v9 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v3 + 56);

      v10 = 0;
    }

    v15 = (v9 + 64) >> 6;
    if (v3 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v16 = v10;
      v17 = v11;
      v18 = v10;
      if (!v11)
      {
        break;
      }

LABEL_13:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v3 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v20)
      {
LABEL_19:
        sub_1B71B7B58(v3);
        return;
      }

      while (1)
      {
        [v20 setInsightsObject_];

        v10 = v18;
        v11 = v19;
        if ((v3 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_1B7801988())
        {
          type metadata accessor for ManagedInternalTransaction();
          swift_dynamicCast();
          v20 = v21;
          v18 = v10;
          v19 = v11;
          if (v21)
          {
            continue;
          }
        }

        goto LABEL_19;
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
        goto LABEL_19;
      }

      v17 = *(v8 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B761BC38(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    v5 = a3(a2);
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Order.VersionIdentifier.init(fullyQualifiedOrderIdentifier:updateDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  v7 = *(type metadata accessor for Order.VersionIdentifier(0) + 20);
  v8 = sub_1B77FF988();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t type metadata accessor for Order.VersionIdentifier(uint64_t a1)
{
  result = qword_1EDAF66B0;
  if (!qword_1EDAF66B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double Order.VersionIdentifier.fullyQualifiedOrderIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

__n128 Order.VersionIdentifier.fullyQualifiedOrderIdentifier.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t Order.VersionIdentifier.updateDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Order.VersionIdentifier(0) + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Order.VersionIdentifier.updateDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Order.VersionIdentifier(0) + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Order.VersionIdentifier.hash(into:)(uint64_t a1)
{
  sub_1B7800798();
  sub_1B7800798();
  type metadata accessor for Order.VersionIdentifier(0);
  sub_1B77FF988();
  sub_1B761C3F8(&qword_1EB98EBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  return sub_1B7800768();
}

uint64_t Order.VersionIdentifier.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  type metadata accessor for Order.VersionIdentifier(0);
  sub_1B77FF988();
  sub_1B761C3F8(&qword_1EB98EBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B761C0CC()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B761C3F8(&qword_1EB98EBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B761C188(uint64_t a1)
{
  sub_1B7800798();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B761C3F8(&qword_1EB98EBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  return sub_1B7800768();
}

uint64_t sub_1B761C230(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B77FF988();
  sub_1B761C3F8(&qword_1EB98EBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t _s10FinanceKit5OrderV17VersionIdentifierV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v7 = v2 == v4 && v3 == v5;
  if (!v7 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Order.VersionIdentifier(0);

  return sub_1B77FF918();
}

uint64_t sub_1B761C3F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B761C468(uint64_t a1)
{
  result = sub_1B77FF988();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Order.WebService.authenticationToken.getter()
{
  v1 = *v0;

  return v1;
}

void Order.WebService.authenticationToken.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t Order.WebService.baseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Order.WebService(0) + 20);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Order.WebService(uint64_t a1)
{
  result = qword_1EB9998A0;
  if (!qword_1EB9998A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Order.WebService.baseURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Order.WebService(0) + 20);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B761C720(uint64_t a1)
{
  result = sub_1B77FF4F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t BankConnectService.completeConnectionAuthorization(forSession:withAuthorizationPayload:fraudAssessment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  type metadata accessor for BankConnectConsent(0);
  v5[15] = swift_task_alloc();
  v5[16] = type metadata accessor for BankConnectService.Message(0);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B761C864, 0, 0);
}

uint64_t sub_1B761C864()
{
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);
  v2 = sub_1B7800098();
  v3 = sub_1B78011D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7198000, v2, v3, "completeConnectionAuthorization(forSession:withAuthorizationPayload:fraudAssessment:) is deprecated and has been replaced with completeConnectionAuthorization(for:with:fraudAssessment:configuration:). Please update immediately, continued use of this function may result in unexpected behaviour.", v4, 2u);
    MEMORY[0x1B8CA7A40](v4, -1, -1);
  }

  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[14];
  v9 = v0[11];
  v8 = v0[12];

  v0[18] = *(v7 + 16);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9998B0, &unk_1B78615C0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 64);
  sub_1B761D288(v9, v5, type metadata accessor for BankConnectAuthorizationSession);
  sub_1B761D288(v8, v5 + v11, type metadata accessor for BankConnectAuthorizationPayload);
  *(v5 + v12) = v6;
  type metadata accessor for BankConnectAuthorizationConfiguration(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B761CA3C, 0, 0);
}

uint64_t sub_1B761CA3C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1B761CAE8;
  v4 = swift_continuation_init();
  sub_1B722EA04(v4, v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B761CAE8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1)[6];
  (*v1)[19] = v4;
  if (!v4)
  {
    v5 = v2[17];
    sub_1B75E79FC(v2[15], v2[10]);
    sub_1B7267DAC(v5);

    v6 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B761CC5C, 0, 0);
}

uint64_t sub_1B761CC5C()
{
  sub_1B7267DAC(*(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BankConnectService.completeConnectionAuthorization(for:with:fraudAssessment:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  type metadata accessor for BankConnectConsent(0);
  v6[16] = swift_task_alloc();
  v6[17] = type metadata accessor for BankConnectService.Message(0);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B761CDA0, 0, 0);
}

uint64_t sub_1B761CDA0()
{
  v1 = v0[18];
  v2 = v0[14];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v0[19] = *(v0[15] + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9998B0, &unk_1B78615C0);
  v7 = v6[12];
  v8 = v6[16];
  v9 = v6[20];
  sub_1B761D288(v5, v1, type metadata accessor for BankConnectAuthorizationSession);
  sub_1B761D288(v4, v1 + v7, type metadata accessor for BankConnectAuthorizationPayload);
  *(v1 + v8) = v3;
  sub_1B761D288(v2, v1 + v9, type metadata accessor for BankConnectAuthorizationConfiguration);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B761CED8, 0, 0);
}

uint64_t sub_1B761CED8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1B761CF84;
  v4 = swift_continuation_init();
  sub_1B722EA04(v4, v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B761CF84(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1)[6];
  (*v1)[20] = v4;
  if (!v4)
  {
    v5 = v2[18];
    sub_1B75E79FC(v2[16], v2[10]);
    sub_1B7267DAC(v5);

    v6 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B75AB778, 0, 0);
}

uint64_t sub_1B761D0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7201BB0;

  return BankConnectService.completeConnectionAuthorization(forSession:withAuthorizationPayload:fraudAssessment:)(a1, a2, a3, a4);
}

uint64_t sub_1B761D1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B723838C;

  return BankConnectService.completeConnectionAuthorization(for:with:fraudAssessment:configuration:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1B761D288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of BankConnectConnectionAuthorizationCompleting.completeConnectionAuthorization(forSession:withAuthorizationPayload:fraudAssessment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B7201BB0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of BankConnectConnectionAuthorizationCompleting.completeConnectionAuthorization(for:with:fraudAssessment:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B723838C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

void BankConnectConsent.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for BankConnectConsent(0);
  v8 = v7[8];
  v9 = sub_1B77FF988();
  v10 = 1;
  v28 = *(*(v9 - 8) + 56);
  v29 = v8;
  v28(a2 + v8, 1, 1, v9);
  v11 = [a1 id];
  sub_1B77FF9E8();

  v12 = [a1 consentID];
  v13 = sub_1B7800868();
  v15 = v14;

  v16 = (a2 + v7[5]);
  *v16 = v13;
  v16[1] = v15;
  v17 = [a1 authorizedAt];
  sub_1B77FF928();

  v18 = [a1 authorizedUntil];
  sub_1B77FF928();

  v19 = [a1 backgroundRefreshLastConfirmedAt];
  if (v19)
  {
    v20 = v19;
    sub_1B77FF928();

    v10 = 0;
  }

  v28(v6, v10, 1, v9);
  sub_1B72DFF88(v6, a2 + v29);
  *(a2 + v7[9]) = [a1 refreshSequenceNumber];
  v21 = [a1 consentToken];
  v22 = sub_1B7800868();
  v24 = v23;

  v25 = (a2 + v7[10]);
  *v25 = v22;
  v25[1] = v24;
  ManagedConsent.consentStatus.getter(&v30);
  *(a2 + v7[11]) = v30;
  v26 = [a1 lastUpdatedAt];
  sub_1B77FF928();
}

{
  v3 = type metadata accessor for BankConnectConsent(0);
  v4 = v3[8];
  v5 = sub_1B77FF988();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  sub_1B77FFA08();
  v6 = [a1 consentID];
  v7 = sub_1B7800868();
  v9 = v8;

  v10 = (a2 + v3[5]);
  *v10 = v7;
  v10[1] = v9;
  v11 = [a1 authorizedAt];
  sub_1B77FF928();

  v12 = [a1 authorizedUntil];
  sub_1B77FF928();

  *(a2 + v3[9]) = [a1 refreshSequenceNumber];
  v13 = [a1 consentToken];
  v14 = sub_1B7800868();
  v16 = v15;

  v17 = (a2 + v3[10]);
  *v17 = v14;
  v17[1] = v16;
  *(a2 + v3[11]) = 0;
  sub_1B77FF938();
}

uint64_t type metadata accessor for BankConnectConsent(uint64_t a1)
{
  result = qword_1EB9998E0;
  if (!qword_1EB9998E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BankConnectConsent.init(id:consentID:authorizedAt:authorizedUntil:backgroundRefreshLastConfirmedAt:refreshSequenceNumber:consentToken:consentStatus:lastUpdatedAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12)
{
  v27 = *a11;
  v19 = type metadata accessor for BankConnectConsent(0);
  v20 = v19[8];
  v21 = sub_1B77FF988();
  v31 = *(v21 - 8);
  (*(v31 + 56))(a9 + v20, 1, 1, v21);
  v22 = sub_1B77FFA18();
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = (a9 + v19[5]);
  *v23 = a2;
  v23[1] = a3;
  v30 = *(v31 + 32);
  v30(a9 + v19[6], a4, v21);
  v30(a9 + v19[7], a5, v21);
  sub_1B72DFF88(a6, a9 + v20);
  *(a9 + v19[9]) = a7;
  v24 = (a9 + v19[10]);
  *v24 = a8;
  v24[1] = a10;
  *(a9 + v19[11]) = v27;
  v25 = a9 + v19[12];

  return (v30)(v25, a12, v21);
}

uint64_t BankConnectConsent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BankConnectConsent.id.setter(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BankConnectConsent.consentID.getter()
{
  v1 = *(v0 + *(type metadata accessor for BankConnectConsent(0) + 20));

  return v1;
}

void BankConnectConsent.consentID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BankConnectConsent(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t BankConnectConsent.authorizedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectConsent(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BankConnectConsent.authorizedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectConsent(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BankConnectConsent.authorizedUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectConsent(0) + 28);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BankConnectConsent.authorizedUntil.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectConsent(0) + 28);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BankConnectConsent.backgroundRefreshLastConfirmedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BankConnectConsent(0) + 32);

  return sub_1B7280900(v3, a1);
}

uint64_t BankConnectConsent.backgroundRefreshLastConfirmedAt.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for BankConnectConsent(0) + 32);

  return sub_1B72DFF88(a1, v3);
}

uint64_t BankConnectConsent.refreshSequenceNumber.setter(uint64_t a1)
{
  result = type metadata accessor for BankConnectConsent(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t BankConnectConsent.consentToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for BankConnectConsent(0) + 40));

  return v1;
}

void BankConnectConsent.consentToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BankConnectConsent(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t BankConnectConsent.consentStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BankConnectConsent(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t BankConnectConsent.consentStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for BankConnectConsent(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t BankConnectConsent.lastUpdatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BankConnectConsent(0) + 48);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BankConnectConsent.lastUpdatedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectConsent(0) + 48);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t sub_1B761E46C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    if (a1)
    {
      v5 = 0x49746E65736E6F63;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return 0x7A69726F68747561;
    }
  }

  else
  {
    v1 = 0x54746E65736E6F63;
    v2 = 0x53746E65736E6F63;
    if (a1 != 7)
    {
      v2 = 0x616470557473616CLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000020;
    if (a1 != 4)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B761E5C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B761FA74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B761E5F0(uint64_t a1)
{
  v2 = sub_1B761F6C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B761E62C(uint64_t a1)
{
  v2 = sub_1B761F6C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankConnectConsent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9998B8, &qword_1B784C888);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B761F6C0();
  sub_1B78023F8();
  v11[31] = 0;
  sub_1B77FFA18();
  sub_1B71A6AD4(&qword_1EB98F718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for BankConnectConsent(0);
    v11[30] = 1;
    sub_1B7801F78();
    v11[29] = 2;
    sub_1B77FF988();
    sub_1B71A6AD4(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B7801FC8();
    v11[28] = 3;
    sub_1B7801FC8();
    v11[27] = 4;
    sub_1B7801F38();
    v11[26] = 5;
    sub_1B7801FF8();
    v11[25] = 6;
    sub_1B7801F78();
    v11[24] = *(v3 + *(v9 + 44));
    v11[15] = 7;
    sub_1B761F714();
    sub_1B7801FC8();
    v11[14] = 8;
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

void BankConnectConsent.init(from:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v41 - v4;
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v48 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v41 - v11;
  v53 = sub_1B77FFA18();
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9998D0, &qword_1B784C890);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v14 = &v41 - v13;
  v15 = type metadata accessor for BankConnectConsent(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 32);
  v51 = v6;
  (*(v6 + 56))(&v18[v19], 1, 1, v5);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  sub_1B761F6C0();
  v56 = v14;
  v20 = v57;
  sub_1B78023C8();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B7205418(&v18[v19], &qword_1EB98EBD0, &unk_1B7809780);
  }

  else
  {
    v57 = v19;
    v21 = v18;
    v22 = v51;
    v67 = 0;
    sub_1B71A6AD4(&qword_1EB98F740, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v23 = v53;
    sub_1B7801E48();
    (*(v50 + 32))(v18, v54, v23);
    v66 = 1;
    v24 = sub_1B7801DF8();
    v25 = &v18[v15[5]];
    *v25 = v24;
    v25[1] = v26;
    v65 = 2;
    v27 = sub_1B71A6AD4(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v28 = v49;
    v44 = v27;
    v54 = 0;
    sub_1B7801E48();
    v29 = &v18[v15[6]];
    v43 = *(v22 + 32);
    v43(v29, v28, v5);
    v64 = 3;
    v30 = v48;
    sub_1B7801E48();
    v49 = a1;
    v42 = v15;
    v31 = v30;
    v32 = v43;
    v43(&v18[v15[7]], v31, v5);
    v63 = 4;
    v33 = v47;
    sub_1B7801DB8();
    sub_1B72DFF88(v33, &v18[v57]);
    v62 = 5;
    v34 = sub_1B7801E78();
    v48 = (v22 + 32);
    v35 = v32;
    v36 = v42;
    *(v21 + v42[9]) = v34;
    v61 = 6;
    v37 = sub_1B7801DF8();
    v38 = (v21 + v36[10]);
    *v38 = v37;
    v38[1] = v39;
    v59 = 7;
    sub_1B761F768();
    sub_1B7801E48();
    *(v21 + v36[11]) = v60;
    v58 = 8;
    v40 = v46;
    sub_1B7801E48();
    (*(v52 + 8))(v56, v55);
    v35(v21 + v36[12], v40, v5);
    sub_1B761F7BC(v21, v45);
    __swift_destroy_boxed_opaque_existential_1(v49);
    sub_1B7459A40(v21);
  }
}

uint64_t _s10FinanceKit18BankConnectConsentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0, &qword_1B7813550);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v14 = type metadata accessor for BankConnectConsent(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1B78020F8() & 1) == 0 || (sub_1B77FF918() & 1) == 0 || (sub_1B77FF918() & 1) == 0)
  {
    goto LABEL_21;
  }

  v20 = v14[8];
  v21 = *(v11 + 48);
  sub_1B7280900(a1 + v20, v13);
  v32 = v21;
  sub_1B7280900(a2 + v20, &v13[v21]);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    sub_1B7280900(v13, v10);
    if (v22(&v13[v32], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v32], v4);
      sub_1B71A6AD4(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v23 = sub_1B7800828();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v10, v4);
      sub_1B7205418(v13, &qword_1EB98EBD0, &unk_1B7809780);
      if ((v23 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    (*(v5 + 8))(v10, v4);
LABEL_14:
    sub_1B7205418(v13, &qword_1EB98FCE0, &qword_1B7813550);
    goto LABEL_21;
  }

  if (v22(&v13[v32], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_1B7205418(v13, &qword_1EB98EBD0, &unk_1B7809780);
LABEL_16:
  if (*(a1 + v14[9]) == *(a2 + v14[9]))
  {
    if (v25 = v14[10], v26 = *(a1 + v25), v27 = *(a1 + v25 + 8), v28 = (a2 + v25), v26 == *v28) && v27 == v28[1] || (sub_1B78020F8())
    {
      if (*(a1 + v14[11]) == *(a2 + v14[11]))
      {
        v29 = sub_1B77FF918();
        return v29 & 1;
      }
    }
  }

LABEL_21:
  v29 = 0;
  return v29 & 1;
}

unint64_t sub_1B761F6C0()
{
  result = qword_1EB9998C0;
  if (!qword_1EB9998C0)
  {
    result = swift_getWitnessTable(aQ_34, &type metadata for BankConnectConsent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9998C0);
  }

  return result;
}

unint64_t sub_1B761F714()
{
  result = qword_1EB9998C8;
  if (!qword_1EB9998C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectConsentStatus, &type metadata for BankConnectConsentStatus, v0, v1);
    atomic_store(result, &qword_1EB9998C8);
  }

  return result;
}

unint64_t sub_1B761F768()
{
  result = qword_1EB9998D8;
  if (!qword_1EB9998D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BankConnectConsentStatus, &type metadata for BankConnectConsentStatus, v0, v1);
    atomic_store(result, &qword_1EB9998D8);
  }

  return result;
}

uint64_t sub_1B761F7BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectConsent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B761F890(uint64_t a1)
{
  sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    sub_1B77FF988();
    if (v2 <= 0x3F)
    {
      sub_1B72F2B80(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B761F970()
{
  result = qword_1EB9998F0;
  if (!qword_1EB9998F0)
  {
    result = swift_getWitnessTable(asc_1B784CA40, &type metadata for BankConnectConsent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9998F0);
  }

  return result;
}

unint64_t sub_1B761F9C8()
{
  result = qword_1EB9998F8;
  if (!qword_1EB9998F8)
  {
    result = swift_getWitnessTable(aA_31, &type metadata for BankConnectConsent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9998F8);
  }

  return result;
}

unint64_t sub_1B761FA20()
{
  result = qword_1EB999900;
  if (!qword_1EB999900)
  {
    result = swift_getWitnessTable(aY_28, &type metadata for BankConnectConsent.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999900);
  }

  return result;
}

uint64_t sub_1B761FA74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E65736E6F63 && a2 == 0xE900000000000044 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEC00000074416465 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEF6C69746E556465 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B7881E50 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7881E20 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x54746E65736E6F63 && a2 == 0xEC0000006E656B6FLL || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x53746E65736E6F63 && a2 == 0xED00007375746174 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xED00007441646574)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void sub_1B761FD78(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 institutionID];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B761FDD0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 etag];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B761FE38(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_1B7800838();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setEtag_];
}

void sub_1B761FEA8(id *a1)
{
  v1 = [*a1 lastRequestDate];
  sub_1B77FF928();
}

id ManagedInstitutionAsset.__allocating_init(institutionID:etag:data:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v8 = v7;
  v24 = a6;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(v8) initWithContext_];
  v17 = sub_1B7800838();

  [v16 setInstitutionID_];

  if (a4)
  {
    v18 = sub_1B7800838();
  }

  else
  {
    v18 = 0;
  }

  [v16 setEtag_];

  v19 = v24;
  v20 = sub_1B77FF598();
  [v16 setData_];

  sub_1B77FF938();
  v21 = sub_1B77FF8B8();
  (*(v13 + 8))(v15, v12);
  [v16 setLastRequestDate_];

  sub_1B720A388(a5, v19);
  return v16;
}

id ManagedInstitutionAsset.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedInstitutionAsset.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedInstitutionAsset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t static ManagedInstitutionAsset.existingAsset(withInstitutionID:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit23ManagedInstitutionAsset;
  v6 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B78010E8();
  [v6 setPredicate_];

  result = sub_1B7801498();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = sub_1B7801958();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v3 = v10;

    return v3;
  }

  __break(1u);
  return result;
}

void static ManagedInstitutionAsset.update(managedInstitutionAsset:etag:data:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v6 = sub_1B7800838();
  }

  else
  {
    v6 = 0;
  }

  [a1 setEtag_];

  v7 = sub_1B77FF598();
  [a1 setData_];
}

void static ManagedInstitutionAsset.deleteAsset(institutionID:context:)(uint64_t a1, uint64_t a2, void *a3)
{
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit23ManagedInstitutionAsset;
  v7 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1B721FF04();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_1B78010E8();
  [v7 setPredicate_];

  [v7 setIncludesPropertyValues_];
  v10 = sub_1B7801498();
  if (v3)
  {
    goto LABEL_10;
  }

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  v13 = v10;
  v14 = sub_1B7801958();
  v10 = v13;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_7;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);
LABEL_7:
    v12 = v11;

    [a3 deleteObject_];

    v7 = v12;
LABEL_10:

    return;
  }

  __break(1u);
}

uint64_t BackgroundRefreshReminderWindow.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

unint64_t sub_1B762079C()
{
  result = qword_1EB999908;
  if (!qword_1EB999908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BackgroundRefreshReminderWindow, &type metadata for BackgroundRefreshReminderWindow, v0, v1);
    atomic_store(result, &qword_1EB999908);
  }

  return result;
}

unint64_t sub_1B76207F4()
{
  result = qword_1EB999910;
  if (!qword_1EB999910)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB999918, &qword_1B784CB58);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB999910);
  }

  return result;
}

uint64_t sub_1B7620888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a1;
  v28 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938, &unk_1B7812F00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40, &qword_1B7809790);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for Duration(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B77FFB08();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B77FFC88();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v18, *MEMORY[0x1E6969830], v15);
  sub_1B77FFB18();
  (*(v16 + 8))(v18, v15);
  (*(v20 + 56))(v11, 1, 1, v19);
  v23 = sub_1B77FFCF8();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  sub_1B77FECD8();
  sub_1B77FFC08();
  v24 = sub_1B77FF988();
  v25 = *(v24 - 8);
  result = (*(v25 + 48))(v5, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B720D780(v14);
    (*(v20 + 8))(v22, v19);
    return (*(v25 + 32))(v28, v5, v24);
  }

  return result;
}

uint64_t Calendar.cnsTransactionMatchingDateInterval(oldestBankConnectTransactionDate:latestBankConnectTransactionDate:)@<X0>(uint64_t (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v85 = a1;
  v67 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938, &unk_1B7812F00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40, &qword_1B7809790);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v63 - v11;
  v13 = type metadata accessor for Duration(0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - v16;
  v18 = sub_1B77FFB08();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B77FFC88();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v78 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v63 - v26;
  v28 = sub_1B77FF988();
  v88 = *(v28 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v65 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v64 = &v63 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v66 = &v63 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v86 = &v63 - v35;
  v36 = *(v19 + 104);
  v74 = *MEMORY[0x1E6969830];
  v75 = v19 + 104;
  v73 = v36;
  v36(v21);
  sub_1B77FFB18();
  v37 = *(v19 + 8);
  v76 = v19 + 8;
  v77 = v18;
  v72 = v37;
  v37(v21, v18);
  v38 = v17;
  v89 = v23;
  v39 = *(v23 + 56);
  v87 = v22;
  v71 = v39;
  v39(v12, 1, 1, v22);
  v40 = sub_1B77FFCF8();
  v41 = *(v40 - 8);
  v69 = *(v41 + 56);
  v70 = v40;
  v68 = v41 + 56;
  v69(v9, 1, 1);
  v79 = v12;
  v81 = v9;
  sub_1B77FECD8();
  v42 = v84;
  v43 = v27;
  sub_1B77FFC08();
  v44 = v88;
  v45 = v42;
  v85 = *(v88 + 48);
  result = v85(v42, 1, v28);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1B720D780(v38);
  v47 = v43;
  v48 = *(v89 + 8);
  v49 = v87;
  v89 += 8;
  v48(v47, v87);
  v84 = *(v44 + 32);
  (v84)(v86, v45, v28);
  v50 = v77;
  v73(v21, v74, v77);
  v51 = v78;
  sub_1B77FFB18();
  v72(v21, v50);
  v71(v79, 1, 1, v49);
  (v69)(v81, 1, 1, v70);
  v52 = v80;
  sub_1B77FECD8();
  v53 = v83;
  sub_1B77FFC08();
  result = v85(v53, 1, v28);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1B720D780(v52);
  v48(v51, v87);
  v54 = v66;
  (v84)(v66, v53, v28);
  sub_1B7282114();
  v55 = v86;
  v56 = sub_1B7800808();
  v57 = v67;
  if (v56)
  {
    v58 = v88;
    v59 = *(v88 + 16);
    v59(v64, v55, v28);
    v59(v65, v54, v28);
    sub_1B77FEA28();
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v58 = v88;
  }

  v61 = *(v58 + 8);
  v61(v54, v28);
  v61(v55, v28);
  v62 = sub_1B77FEA78();
  return (*(*(v62 - 8) + 56))(v57, v60, 1, v62);
}

uint64_t static FinanceStore.shared.getter()
{
  if (qword_1EDAFB7C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B76215EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570, &unk_1B780F930);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - v1;
  type metadata accessor for FinanceStore();
  v3 = swift_allocObject();
  *v2 = 2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999920, &qword_1B784CBF8);
  swift_allocObject();
  *(v3 + 24) = sub_1B7627760(v2, &qword_1EB990570, &unk_1B780F930);
  type metadata accessor for FinanceDataStore();
  swift_allocObject();
  result = sub_1B73A24AC(0);
  *(v3 + 16) = result;
  qword_1EDAFB7C8 = v3;
  return result;
}

uint64_t FinanceStore.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570, &unk_1B780F930);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - v1;
  v3 = swift_allocObject();
  *v2 = 2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999920, &qword_1B784CBF8);
  swift_allocObject();
  *(v3 + 24) = sub_1B7627760(v2, &qword_1EB990570, &unk_1B780F930);
  type metadata accessor for FinanceDataStore();
  swift_allocObject();
  *(v3 + 16) = sub_1B73A24AC(0);
  return v3;
}

uint64_t FinanceStore.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570, &unk_1B780F930);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - v3;
  *(&v6 - v3) = 2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999920, &qword_1B784CBF8);
  swift_allocObject();
  *(v1 + 24) = sub_1B7627760(v4, &qword_1EB990570, &unk_1B780F930);
  type metadata accessor for FinanceDataStore();
  swift_allocObject();
  *(v1 + 16) = sub_1B73A24AC(0);
  return v1;
}

void FinanceStore.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = 0xD000000000000018;
  v3[4] = 0x80000001B7887830;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1B76279C8;
  *(v4 + 24) = v3;
  v6[4] = sub_1B7205180;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B737BA64;
  v6[3] = &block_descriptor_17;
  v5 = _Block_copy(v6);
  swift_retain_n();

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
  }
}

void FinanceStore.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = 0xD000000000000018;
  v3[4] = 0x80000001B7887830;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1B7636558;
  *(v4 + 24) = v3;
  v6[4] = sub_1B7636544;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B737BA64;
  v6[3] = &block_descriptor_14;
  v5 = _Block_copy(v6);
  swift_retain_n();

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {

    swift_deallocClassInstance();
  }
}

void FinanceStore.Reply.Failure.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
  v5 = swift_dynamicCast();
  if (v5)
  {

    v6 = 0;
    v7 = 0;
    v8 = v12;
  }

  else
  {
    v9 = sub_1B77FF308();
    v10 = [v9 domain];
    v8 = sub_1B7800868();
    v6 = v11;

    v7 = [v9 code];
  }

  *a2 = v8;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v5 ^ 1;
}

id FinanceStore.Reply.Failure.error.getter()
{
  v1 = *v0;
  if (v0[3])
  {
    v2 = v0[2];
    v3 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v4 = sub_1B7800838();
    v5 = [v3 initWithDomain:v4 code:v2 userInfo:0];

    return v5;
  }

  else
  {
    sub_1B7201CA4();
    result = swift_allocError();
    *v7 = v1;
  }

  return result;
}

BOOL static FinanceStore.Reply.Failure.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if ((v5 & 1) == 0)
  {
    if (*(a2 + 24))
    {
LABEL_17:
      sub_1B7237880(v6, v7, v8, v9);
      sub_1B7237890(v2, v3, v4, v5);
      sub_1B7237890(v6, v7, v8, v9);
      return 0;
    }

    v14 = *a2;
    sub_1B7237890(*a1, v3, v4, 0);
    sub_1B7237890(v6, v7, v8, 0);
    if (v2 <= 4u)
    {
      if (v2 == 3)
      {
        return v14 == 3;
      }

      if (v2 == 4)
      {
        return v14 == 4;
      }
    }

    else
    {
      switch(v2)
      {
        case 5u:
          return v14 == 5;
        case 6u:
          return v14 == 6;
        case 7u:
          return v14 == 7;
      }
    }

    return (v14 - 3) >= 5 && v6 == v2;
  }

  if ((*(a2 + 24) & 1) == 0)
  {

    goto LABEL_17;
  }

  v10 = *a1;
  if (v2 == v6 && v3 == v7)
  {
    sub_1B7237880(v10, v3, v8, 1);
    sub_1B7237880(v2, v3, v4, 1);
    sub_1B7237890(v2, v3, v4, 1);
    sub_1B7237890(v2, v3, v8, 1);
    return v4 == v8;
  }

  v12 = sub_1B78020F8();
  sub_1B7237880(v6, v7, v8, 1);
  sub_1B7237880(v2, v3, v4, 1);
  sub_1B7237890(v2, v3, v4, 1);
  sub_1B7237890(v6, v7, v8, 1);
  result = 0;
  if (v12)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_1B7622030(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4565636E616E6966 && a2 == 0xEC000000726F7272;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727245736ELL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B7622100(char a1)
{
  if (a1)
  {
    return 0x726F727245736ELL;
  }

  else
  {
    return 0x4565636E616E6966;
  }
}

uint64_t sub_1B7622140(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B7622210(char a1)
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](a1 & 1);
  return sub_1B7802368();
}

uint64_t sub_1B7622258(char a1)
{
  if (a1)
  {
    return 0x646F43726F727265;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1B76222D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7622030(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7622308@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1B76358C0();
  *a2 = result;
  return result;
}

uint64_t sub_1B762233C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B7853208, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B7622390(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B7853208, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B76223E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B7218B64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B762241C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aAod7, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B7622470(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aAod7, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B76224E4(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void))
{
  sub_1B78022F8();
  a4(v8, *v4, a2[2], a2[3], a2[4]);
  return sub_1B7802368();
}

uint64_t sub_1B7622554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7622140(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7622588(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78532A8, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B76225DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78532A8, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FinanceStore.Reply.Failure.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for FinanceStore.Reply.Failure.NsErrorCodingKeys(255, v4, v5, v6);
  WitnessTable = swift_getWitnessTable(byte_1B78532A8, v7);
  v29 = v7;
  v8 = sub_1B7802018();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v30 = v24 - v9;
  v10 = type metadata accessor for FinanceStore.Reply.Failure.FinanceErrorCodingKeys(255, v4, v5, v6);
  v24[2] = swift_getWitnessTable(aAod7, v10);
  v11 = sub_1B7802018();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v25 = v24 - v12;
  v13 = type metadata accessor for FinanceStore.Reply.Failure.CodingKeys(255, v4, v5, v6);
  swift_getWitnessTable(byte_1B7853208, v13);
  v14 = sub_1B7802018();
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v17 = v2[1];
  v33 = *v2;
  v24[0] = v2[2];
  v24[1] = v17;
  LOBYTE(v4) = *(v2 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023F8();
  if (v4)
  {
    v40 = 1;
    v18 = v30;
    sub_1B7801ED8();
    v39 = 0;
    v19 = v32;
    v20 = v35;
    sub_1B7801F78();
    if (!v20)
    {
      v38 = 1;
      sub_1B7801FA8();
    }

    (*(v31 + 8))(v18, v19);
  }

  else
  {
    v37 = 0;
    v21 = v25;
    sub_1B7801ED8();
    v36 = v33;
    sub_1B7627AF0();
    v22 = v27;
    sub_1B7801FC8();
    (*(v26 + 8))(v21, v22);
  }

  return (*(v34 + 8))(v16, v14);
}

uint64_t FinanceStore.Reply.Failure.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a5;
  v9 = type metadata accessor for FinanceStore.Reply.Failure.NsErrorCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(byte_1B78532A8, v9);
  v58 = v9;
  v10 = sub_1B7801EC8();
  v11 = *(v10 - 8);
  v54 = v10;
  v55 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v49 - v12;
  v13 = type metadata accessor for FinanceStore.Reply.Failure.FinanceErrorCodingKeys(255, a2, a3, a4);
  v56 = swift_getWitnessTable(aAod7, v13);
  v53 = sub_1B7801EC8();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v15 = &v49 - v14;
  v62 = a4;
  v16 = type metadata accessor for FinanceStore.Reply.Failure.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable(byte_1B7853208, v16);
  v61 = sub_1B7801EC8();
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v17 = a1[3];
  v69 = a1;
  v18 = a1;
  v20 = &v49 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  v21 = v64;
  sub_1B78023C8();
  if (!v21)
  {
    v50 = v13;
    v51 = v15;
    v23 = v61;
    v22 = v62;
    v64 = v20;
    *&v65 = sub_1B7801E98();
    v24 = sub_1B7800CB8();
    swift_getWitnessTable(MEMORY[0x1E69E6328], v24);
    *&v67 = sub_1B7801898();
    *(&v67 + 1) = v25;
    *&v68 = v26;
    *(&v68 + 1) = v27;
    v28 = sub_1B7801888();
    swift_getWitnessTable(MEMORY[0x1E69E6978], v28);
    sub_1B7801068();
    v29 = v65;
    if (v65 == 2 || (v49 = v67, v65 = v67, v66 = v68, (sub_1B7801078() & 1) == 0))
    {
      v39 = sub_1B7801B18();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
      *v41 = type metadata accessor for FinanceStore.Reply.Failure(0, a2, a3, v22);
      v42 = v64;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      (*(v63 + 8))(v42, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        LOBYTE(v65) = 1;
        v30 = v59;
        sub_1B7801D38();
        v31 = v60;
        v32 = v23;
        LOBYTE(v65) = 0;
        v33 = v54;
        v34 = v30;
        v35 = sub_1B7801DF8();
        v36 = v63;
        v38 = v37;
        v62 = v35;
        LOBYTE(v65) = 1;
        v47 = sub_1B7801E28();
        (*(v55 + 8))(v34, v33);
        (*(v36 + 8))(v64, v32);
        swift_unknownObjectRelease();
        v48 = v62;
      }

      else
      {
        LOBYTE(v65) = 0;
        v43 = v51;
        sub_1B7801D38();
        v31 = v60;
        sub_1B7627B5C();
        v45 = v53;
        sub_1B7801E48();
        v46 = v63;
        (*(v52 + 8))(v43, v45);
        (*(v46 + 8))(v64, v23);
        swift_unknownObjectRelease();
        v38 = 0;
        v47 = 0;
        v48 = v65;
      }

      *v31 = v48;
      *(v31 + 8) = v38;
      *(v31 + 16) = v47;
      *(v31 + 24) = v29 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_1B762312C(unsigned __int8 a1)
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](a1);
  return sub_1B7802368();
}

uint64_t sub_1B7623174(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B78020F8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B762325C(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7623104(v3, *v1);
  return sub_1B7802368();
}

uint64_t sub_1B76232A8@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1B76358C8();
  *a2 = result;
  return result;
}

uint64_t sub_1B76232DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78530C8, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B7623330(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78530C8, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B7623384(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78531B8, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B76233D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B78531B8, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void sub_1B762342C(_BYTE *a2@<X8>)
{
  v3 = sub_1B7218B64();

  *a2 = v3 & 1;
}

uint64_t sub_1B7623478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B7853118, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B76234CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1B7853118, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B7623520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aQpd7Q, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B7623574(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aQpd7Q, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B76235CC(uint64_t a1)
{
  v2 = sub_1B762E724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623608(uint64_t a1)
{
  v2 = sub_1B762E724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623644(uint64_t a1)
{
  v2 = sub_1B762E474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623680(uint64_t a1)
{
  v2 = sub_1B762E474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76236BC(uint64_t a1)
{
  v2 = sub_1B762DC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76236F8(uint64_t a1)
{
  v2 = sub_1B762DC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623734(uint64_t a1)
{
  v2 = sub_1B762E174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623770(uint64_t a1)
{
  v2 = sub_1B762E174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76237AC(uint64_t a1)
{
  v2 = sub_1B762DD84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76237E8(uint64_t a1)
{
  v2 = sub_1B762DD84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623824(uint64_t a1)
{
  v2 = sub_1B762DFD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623860(uint64_t a1)
{
  v2 = sub_1B762DFD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76238A8(uint64_t a1)
{
  v2 = sub_1B71A5F68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76238E4(uint64_t a1)
{
  v2 = sub_1B71A5F68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623920()
{
  if (*v0)
  {
    return 0x4464657461647075;
  }

  else
  {
    return 12383;
  }
}

void sub_1B7623958(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4464657461647075 && a2 == 0xEB00000000657461)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7623A30(uint64_t a1)
{
  v2 = sub_1B762EB68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623A6C(uint64_t a1)
{
  v2 = sub_1B762EB68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623AA8(uint64_t a1)
{
  v2 = sub_1B762E5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623AE4(uint64_t a1)
{
  v2 = sub_1B762E5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623B20(uint64_t a1)
{
  v2 = sub_1B762D3F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623B5C(uint64_t a1)
{
  v2 = sub_1B762D3F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623B98(uint64_t a1)
{
  v2 = sub_1B762D2F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623BD4(uint64_t a1)
{
  v2 = sub_1B762D2F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623C10(uint64_t a1)
{
  v2 = sub_1B762D1FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623C4C(uint64_t a1)
{
  v2 = sub_1B762D1FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B7623CA0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B7623D28(uint64_t a1)
{
  v2 = sub_1B762D8E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623D64(uint64_t a1)
{
  v2 = sub_1B762D8E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B7623DBC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001B78886A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1B7623E50(uint64_t a1)
{
  v2 = sub_1B762DCDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7623E8C(uint64_t a1)
{
  v2 = sub_1B762DCDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7623EC8()
{
  if (*v0)
  {
    return 0x72654D6B636F6C62;
  }

  else
  {
    return 0xD000000000000016;
  }
}

void sub_1B7623F14(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001B7877900 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x72654D6B636F6C62 && a2 == 0xED0000746E616863)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1B78020F8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1B7624004(uint64_t a1)
{
  v2 = sub_1B762E270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624040(uint64_t a1)
{
  v2 = sub_1B762E270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B7624094(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449746E657665 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B762411C(uint64_t a1)
{
  v2 = sub_1B762E618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624158(uint64_t a1)
{
  v2 = sub_1B762E618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624194(uint64_t a1)
{
  v2 = sub_1B762D448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76241D0(uint64_t a1)
{
  v2 = sub_1B762D448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B762420C(uint64_t a1)
{
  v2 = sub_1B762D34C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624248(uint64_t a1)
{
  v2 = sub_1B762D34C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624284(uint64_t a1)
{
  v2 = sub_1B762EB14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76242C0(uint64_t a1)
{
  v2 = sub_1B762EB14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76242FC()
{
  if (*v0)
  {
    return 0x68746E6F6DLL;
  }

  else
  {
    return 1918985593;
  }
}

void sub_1B762432C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1918985593 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7624404(uint64_t a1)
{
  v2 = sub_1B762EAC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624440(uint64_t a1)
{
  v2 = sub_1B762EAC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B762447C(uint64_t a1)
{
  v2 = sub_1B762D250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76244B8(uint64_t a1)
{
  v2 = sub_1B762D250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76244F4(uint64_t a1)
{
  v2 = sub_1B762D5EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624530(uint64_t a1)
{
  v2 = sub_1B762D5EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B762456C(uint64_t a1)
{
  v2 = sub_1B762D4F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76245A8(uint64_t a1)
{
  v2 = sub_1B762D4F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76245E4(uint64_t a1)
{
  v2 = sub_1B762D640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624620(uint64_t a1)
{
  v2 = sub_1B762D640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B762465C(uint64_t a1)
{
  v2 = sub_1B762D544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624698(uint64_t a1)
{
  v2 = sub_1B762D544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76246D4(uint64_t a1)
{
  v2 = sub_1B762D694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624710(uint64_t a1)
{
  v2 = sub_1B762D694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624760@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B76358D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7624788(uint64_t a1)
{
  v2 = sub_1B762D598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76247C4(uint64_t a1)
{
  v2 = sub_1B762D598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624800()
{
  if (*v0)
  {
    return 0x4464657461647075;
  }

  else
  {
    return 0x6464416C69616D65;
  }
}

void sub_1B762484C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4464657461647075 && a2 == 0xEB00000000657461)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7624930(uint64_t a1)
{
  v2 = sub_1B762DDD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B762496C(uint64_t a1)
{
  v2 = sub_1B762DDD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76249A8(uint64_t a1)
{
  v2 = sub_1B762E078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76249E4(uint64_t a1)
{
  v2 = sub_1B762E078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7624A20(uint64_t a1)
{
  v2 = sub_1B762E0CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624A5C(uint64_t a1)
{
  v2 = sub_1B762E0CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B7624AB4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B7624B44(uint64_t a1)
{
  v2 = sub_1B762DE80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624B80(uint64_t a1)
{
  v2 = sub_1B762DE80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B7624BD0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B7624C54(uint64_t a1)
{
  v2 = sub_1B762E024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624C90(uint64_t a1)
{
  v2 = sub_1B762E024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7624CCC()
{
  v1 = 0x5479726F74736968;
  v2 = 0x49746E756F636361;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0x614E797469746E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B7624D5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B76359D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7624D84(uint64_t a1)
{
  v2 = sub_1B762DAE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624DC0(uint64_t a1)
{
  v2 = sub_1B762DAE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7624DFC()
{
  v1 = 0x614E797469746E65;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B7624E54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7635B50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7624E7C(uint64_t a1)
{
  v2 = sub_1B762DBE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624EB8(uint64_t a1)
{
  v2 = sub_1B762DBE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B7624F14(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B7624FA0(uint64_t a1)
{
  v2 = sub_1B762E2C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7624FDC(uint64_t a1)
{
  v2 = sub_1B762E2C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B762503C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B76250CC(uint64_t a1)
{
  v2 = sub_1B762D6E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625108(uint64_t a1)
{
  v2 = sub_1B762D6E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625144(uint64_t a1)
{
  v2 = sub_1B762E7CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625180(uint64_t a1)
{
  v2 = sub_1B762E7CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76251BC(uint64_t a1)
{
  v2 = sub_1B762E778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76251F8(uint64_t a1)
{
  v2 = sub_1B762E778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625234(uint64_t a1)
{
  v2 = sub_1B762DD30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625270(uint64_t a1)
{
  v2 = sub_1B762DD30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76252AC(uint64_t a1)
{
  v2 = sub_1B762D49C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76252E8(uint64_t a1)
{
  v2 = sub_1B762D49C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625324(uint64_t a1)
{
  v2 = sub_1B762D3A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625360(uint64_t a1)
{
  v2 = sub_1B762D3A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B762539C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 12383;
  }
}

void sub_1B76253D0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78886E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B76254AC(uint64_t a1)
{
  v2 = sub_1B762E318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76254E8(uint64_t a1)
{
  v2 = sub_1B762E318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625524()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x724164656E676973;
  }
}

void sub_1B762556C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x724164656E676973 && a2 == 0xED00006576696863;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7625650(uint64_t a1)
{
  v2 = sub_1B762EA18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B762568C(uint64_t a1)
{
  v2 = sub_1B762EA18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B76256C8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7625794(uint64_t a1)
{
  v2 = sub_1B762D2A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76257D0(uint64_t a1)
{
  v2 = sub_1B762D2A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B762582C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746361736E617274 && a2 == 0xEC000000736E6F69)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B76258B8(uint64_t a1)
{
  v2 = sub_1B762D9DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76258F4(uint64_t a1)
{
  v2 = sub_1B762D9DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625930(uint64_t a1)
{
  v2 = sub_1B762E51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B762596C(uint64_t a1)
{
  v2 = sub_1B762E51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76259A8(uint64_t a1)
{
  v2 = sub_1B762EBBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76259E4(uint64_t a1)
{
  v2 = sub_1B762EBBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625A20(uint64_t a1)
{
  v2 = sub_1B762ED60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625A5C(uint64_t a1)
{
  v2 = sub_1B762ED60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625A98(uint64_t a1)
{
  v2 = sub_1B762E420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625AD4(uint64_t a1)
{
  v2 = sub_1B762E420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625B10(uint64_t a1)
{
  v2 = sub_1B762EC64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625B4C(uint64_t a1)
{
  v2 = sub_1B762EC64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625B88(uint64_t a1)
{
  v2 = sub_1B762ECB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625BC4(uint64_t a1)
{
  v2 = sub_1B762ECB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625C00(uint64_t a1)
{
  v2 = sub_1B762ED0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625C3C(uint64_t a1)
{
  v2 = sub_1B762ED0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B7625C78(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646E6957656D6974 && a2 == 0xEA0000000000776FLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B7625D08(uint64_t a1)
{
  v2 = sub_1B71A608C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625D44(uint64_t a1)
{
  v2 = sub_1B71A608C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B7625D9C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001FLL && 0x80000001B7875770 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1B7625E30(uint64_t a1)
{
  v2 = sub_1B762D838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625E6C(uint64_t a1)
{
  v2 = sub_1B762D838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7625EA8(uint64_t a1)
{
  v2 = sub_1B762E820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625EE4(uint64_t a1)
{
  v2 = sub_1B762E820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7625F20()
{
  v1 = 0x72756F5361746164;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1B7625F84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7635C70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7625FAC(uint64_t a1)
{
  v2 = sub_1B762DF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7625FE8(uint64_t a1)
{
  v2 = sub_1B762DF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626024()
{
  if (*v0)
  {
    return 0x72756F5361746164;
  }

  else
  {
    return 0xD000000000000016;
  }
}

void sub_1B7626068(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001B78886C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1B78020F8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1B7626158(uint64_t a1)
{
  v2 = sub_1B762DF28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626194(uint64_t a1)
{
  v2 = sub_1B762DF28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76261D0()
{
  if (*v0)
  {
    return 0x72756F5361746164;
  }

  else
  {
    return 0x496567617373656DLL;
  }
}

void sub_1B7626210(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x496567617373656DLL && a2 == 0xEA00000000007344 || (sub_1B78020F8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1B78020F8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1B76262F4(uint64_t a1)
{
  v2 = sub_1B762DED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626330(uint64_t a1)
{
  v2 = sub_1B762DED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B762636C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x707954746E657665;
    if (v1 != 1)
    {
      v5 = 0x7461447472617473;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x74696D696CLL;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 5)
    {
      v2 = 0x7265646E6573;
    }

    v3 = 0xD000000000000012;
    if (v1 != 3)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B7626458@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7635DA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7626480(uint64_t a1)
{
  v2 = sub_1B762E66C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76264BC(uint64_t a1)
{
  v2 = sub_1B762E66C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76264F8(uint64_t a1)
{
  v2 = sub_1B762E9C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626534(uint64_t a1)
{
  v2 = sub_1B762E9C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626570(uint64_t a1)
{
  v2 = sub_1B762EDB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76265AC(uint64_t a1)
{
  v2 = sub_1B762EDB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B76265E8()
{
  v1 = 0x49746E756F636361;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_1B762664C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7635FF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7626674(uint64_t a1)
{
  v2 = sub_1B762D88C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76266B0(uint64_t a1)
{
  v2 = sub_1B762D88C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76266EC(uint64_t a1)
{
  v2 = sub_1B762DC34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626728(uint64_t a1)
{
  v2 = sub_1B762DC34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626764(uint64_t a1)
{
  v2 = sub_1B762DE2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76267A0(uint64_t a1)
{
  v2 = sub_1B762DE2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B7626800(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x724164656E676973 && a2 == 0xED00006576696863)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B7626890(uint64_t a1)
{
  v2 = sub_1B762E970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76268CC(uint64_t a1)
{
  v2 = sub_1B762E970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626908(uint64_t a1)
{
  v2 = sub_1B762E120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626944(uint64_t a1)
{
  v2 = sub_1B762E120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626980(uint64_t a1)
{
  v2 = sub_1B762E1C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76269BC(uint64_t a1)
{
  v2 = sub_1B762E1C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76269F8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x65756C615677656ELL;
  }
}

void sub_1B7626A38(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C615677656ELL && a2 == 0xE800000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7873A10 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7626B1C(uint64_t a1)
{
  v2 = sub_1B762E4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626B58(uint64_t a1)
{
  v2 = sub_1B762E4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626B94(uint64_t a1)
{
  v2 = sub_1B762E21C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626BD0(uint64_t a1)
{
  v2 = sub_1B762E21C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7626C0C()
{
  v1 = 0x65756C615677656ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B7626C60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7636240(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7626C88(uint64_t a1)
{
  v2 = sub_1B762E91C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626CC4(uint64_t a1)
{
  v2 = sub_1B762E91C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626D00()
{
  if (*v0)
  {
    return 0x656C62616E457369;
  }

  else
  {
    return 12383;
  }
}

void sub_1B7626D34(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7626E10(uint64_t a1)
{
  v2 = sub_1B762E8C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626E4C(uint64_t a1)
{
  v2 = sub_1B762E8C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7626E88()
{
  if (*v0)
  {
    return 0x746361736E617274;
  }

  else
  {
    return 12383;
  }
}

void sub_1B7626EC4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEE007344496E6F69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7626FA0(uint64_t a1)
{
  v2 = sub_1B762D988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7626FDC(uint64_t a1)
{
  v2 = sub_1B762D988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7627018()
{
  if (*v0)
  {
    return 0x746361736E617274;
  }

  else
  {
    return 12383;
  }
}

void sub_1B7627054(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7627130(uint64_t a1)
{
  v2 = sub_1B762D7E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B762716C(uint64_t a1)
{
  v2 = sub_1B762D7E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76271A8()
{
  if (*v0)
  {
    return 0x49746E756F636361;
  }

  else
  {
    return 12383;
  }
}

void sub_1B76271DC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B76272B8(uint64_t a1)
{
  v2 = sub_1B762D790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76272F4(uint64_t a1)
{
  v2 = sub_1B762D790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7627330()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 12383;
  }
}

void sub_1B7627364(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7888600 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7627440(uint64_t a1)
{
  v2 = sub_1B762D73C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B762747C(uint64_t a1)
{
  v2 = sub_1B762D73C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76274B8(uint64_t a1)
{
  v2 = sub_1B762E570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76274F4(uint64_t a1)
{
  v2 = sub_1B762E570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7627530()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_1B7627598@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7636358(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B76275C0(uint64_t a1)
{
  v2 = sub_1B762D934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76275FC(uint64_t a1)
{
  v2 = sub_1B762D934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B7627648(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7827310 && a2 == 0xE300000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B76276D0(uint64_t a1)
{
  v2 = sub_1B762E874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B762770C(uint64_t a1)
{
  v2 = sub_1B762E874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1B7627760(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v13 = a2;
  v14 = a3;
  v12 = a1;
  v11 = sub_1B7801318();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7801308();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1B78003C8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1B763647C();
  sub_1B78003B8();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1B71A6B1C(&qword_1EDAFC538, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930E0, &qword_1B78606E0);
  sub_1B76364C8();
  sub_1B78018B8();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v11);
  v3[2] = sub_1B7801358();
  v3[3] = 0;
  sub_1B722376C(v12, v3 + *(*v3 + 120), v13, v14);
  return v3;
}

double sub_1B76279EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {

    sub_1B7800118();
  }

  *(a1 + 24) = 0;

  return result;
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1B7627AF0()
{
  result = qword_1EB999928;
  if (!qword_1EB999928)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FinanceError, &type metadata for FinanceError, v0, v1);
    atomic_store(result, &qword_1EB999928);
  }

  return result;
}

unint64_t sub_1B7627B5C()
{
  result = qword_1EB999930;
  if (!qword_1EB999930)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FinanceError, &type metadata for FinanceError, v0, v1);
    atomic_store(result, &qword_1EB999930);
  }

  return result;
}

uint64_t _s10FinanceKit0A5StoreC7MessageO2eeoiySbAE_AEtFZ_0(char *a1, uint64_t *a2)
{
  v830 = a2;
  v829 = a1;
  v2 = type metadata accessor for PredictedTransaction(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v759 = &v721 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FinHealthTransactionInsight.Income(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v758 = &v721 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FinHealthTransactionInsight.EntityGroup(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v757 = &v721 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v730 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB9943A0, &qword_1B786A830);
  MEMORY[0x1EEE9AC00](v730);
  v731 = &v721 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v725 = &v721 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v763 = &v721 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v764 = &v721 - v14;
  v754 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A450, &unk_1B7853300);
  MEMORY[0x1EEE9AC00](v754);
  v756 = &v721 - v15;
  v16 = type metadata accessor for BankCredential(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v755 = &v721 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B77FFAF8();
  v765 = *(v18 - 8);
  v766 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v753 = &v721 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v826 = sub_1B77FFA18();
  v827 = *(v826 - 8);
  v20 = MEMORY[0x1EEE9AC00](v826);
  v752 = &v721 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v749 = &v721 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v748 = &v721 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v745 = &v721 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v750 = &v721 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v751 = &v721 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v746 = &v721 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v747 = &v721 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v743 = &v721 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v744 = &v721 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v722 = &v721 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v740 = &v721 - v42;
  v732 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v732);
  v738 = &v721 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v824 = sub_1B77FF988();
  v825 = *(v824 - 8);
  v44 = MEMORY[0x1EEE9AC00](v824);
  v742 = &v721 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v820 = &v721 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v741 = &v721 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v819 = &v721 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v739 = &v721 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v818 = &v721 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v736 = &v721 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v737 = &v721 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v735 = &v721 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v727 = &v721 - v62;
  v734 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0, &qword_1B7813550);
  v63 = MEMORY[0x1EEE9AC00](v734);
  v726 = &v721 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v729 = &v721 - v66;
  MEMORY[0x1EEE9AC00](v65);
  v733 = &v721 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v69 = MEMORY[0x1EEE9AC00](v68 - 8);
  v723 = &v721 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v760 = &v721 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v822 = &v721 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v724 = &v721 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v761 = &v721 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v821 = &v721 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v728 = &v721 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v762 = &v721 - v84;
  MEMORY[0x1EEE9AC00](v83);
  v823 = &v721 - v85;
  v828 = type metadata accessor for FinanceStore.Message(0);
  v86 = MEMORY[0x1EEE9AC00](v828);
  v816 = &v721 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x1EEE9AC00](v86);
  v817 = &v721 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v814 = &v721 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v815 = &v721 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v812 = &v721 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v813 = (&v721 - v97);
  v98 = MEMORY[0x1EEE9AC00](v96);
  v811 = &v721 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v809 = &v721 - v101;
  v102 = MEMORY[0x1EEE9AC00](v100);
  v808 = &v721 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v806 = (&v721 - v105);
  v106 = MEMORY[0x1EEE9AC00](v104);
  v804 = &v721 - v107;
  v108 = MEMORY[0x1EEE9AC00](v106);
  v810 = &v721 - v109;
  v110 = MEMORY[0x1EEE9AC00](v108);
  v807 = &v721 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v805 = &v721 - v113;
  v114 = MEMORY[0x1EEE9AC00](v112);
  v803 = &v721 - v115;
  v116 = MEMORY[0x1EEE9AC00](v114);
  v802 = (&v721 - v117);
  v118 = MEMORY[0x1EEE9AC00](v116);
  v800 = &v721 - v119;
  v120 = MEMORY[0x1EEE9AC00](v118);
  v798 = (&v721 - v121);
  v122 = MEMORY[0x1EEE9AC00](v120);
  v797 = &v721 - v123;
  v124 = MEMORY[0x1EEE9AC00](v122);
  v796 = &v721 - v125;
  v126 = MEMORY[0x1EEE9AC00](v124);
  v795 = (&v721 - v127);
  v128 = MEMORY[0x1EEE9AC00](v126);
  v801 = &v721 - v129;
  v130 = MEMORY[0x1EEE9AC00](v128);
  v793 = &v721 - v131;
  v132 = MEMORY[0x1EEE9AC00](v130);
  v792 = (&v721 - v133);
  v134 = MEMORY[0x1EEE9AC00](v132);
  v799 = &v721 - v135;
  v136 = MEMORY[0x1EEE9AC00](v134);
  v794 = (&v721 - v137);
  v138 = MEMORY[0x1EEE9AC00](v136);
  v790 = (&v721 - v139);
  v140 = MEMORY[0x1EEE9AC00](v138);
  v789 = &v721 - v141;
  v142 = MEMORY[0x1EEE9AC00](v140);
  v788 = &v721 - v143;
  v144 = MEMORY[0x1EEE9AC00](v142);
  v787 = &v721 - v145;
  v146 = MEMORY[0x1EEE9AC00](v144);
  v791 = &v721 - v147;
  v148 = MEMORY[0x1EEE9AC00](v146);
  v784 = (&v721 - v149);
  v150 = MEMORY[0x1EEE9AC00](v148);
  v783 = (&v721 - v151);
  v152 = MEMORY[0x1EEE9AC00](v150);
  v781 = &v721 - v153;
  v154 = MEMORY[0x1EEE9AC00](v152);
  v786 = &v721 - v155;
  v156 = MEMORY[0x1EEE9AC00](v154);
  v785 = &v721 - v157;
  v158 = MEMORY[0x1EEE9AC00](v156);
  v780 = &v721 - v159;
  v160 = MEMORY[0x1EEE9AC00](v158);
  v777 = (&v721 - v161);
  v162 = MEMORY[0x1EEE9AC00](v160);
  v776 = (&v721 - v163);
  v164 = MEMORY[0x1EEE9AC00](v162);
  v774 = (&v721 - v165);
  v166 = MEMORY[0x1EEE9AC00](v164);
  v778 = &v721 - v167;
  v168 = MEMORY[0x1EEE9AC00](v166);
  v773 = (&v721 - v169);
  v170 = MEMORY[0x1EEE9AC00](v168);
  v771 = (&v721 - v171);
  v172 = MEMORY[0x1EEE9AC00](v170);
  v775 = &v721 - v173;
  v174 = MEMORY[0x1EEE9AC00](v172);
  v782 = &v721 - v175;
  v176 = MEMORY[0x1EEE9AC00](v174);
  v779 = &v721 - v177;
  v178 = MEMORY[0x1EEE9AC00](v176);
  v772 = &v721 - v179;
  v180 = MEMORY[0x1EEE9AC00](v178);
  v768 = &v721 - v181;
  v182 = MEMORY[0x1EEE9AC00](v180);
  v769 = &v721 - v183;
  v184 = MEMORY[0x1EEE9AC00](v182);
  v186 = (&v721 - v185);
  v187 = MEMORY[0x1EEE9AC00](v184);
  v767 = (&v721 - v188);
  v189 = MEMORY[0x1EEE9AC00](v187);
  v770 = &v721 - v190;
  v191 = MEMORY[0x1EEE9AC00](v189);
  v193 = &v721 - v192;
  v194 = MEMORY[0x1EEE9AC00](v191);
  v196 = (&v721 - v195);
  v197 = MEMORY[0x1EEE9AC00](v194);
  v199 = (&v721 - v198);
  v200 = MEMORY[0x1EEE9AC00](v197);
  v202 = (&v721 - v201);
  MEMORY[0x1EEE9AC00](v200);
  v204 = &v721 - v203;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A458, &unk_1B7853310);
  v206 = MEMORY[0x1EEE9AC00](v205 - 8);
  v208 = &v721 - v207;
  v209 = (&v721 + *(v206 + 56) - v207);
  sub_1B71A5FBC(v829, &v721 - v207, type metadata accessor for FinanceStore.Message);
  v210 = v830;
  v830 = v209;
  sub_1B71A5FBC(v210, v209, type metadata accessor for FinanceStore.Message);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B71A5FBC(v208, v202, type metadata accessor for FinanceStore.Message);
      v448 = v202[1];
      v449 = v202[3];
      v450 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990C08, &unk_1B780F3F0) + 48);
      v451 = v830;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v630 = v202 + v450;
        goto LABEL_256;
      }

      v721 = v208;
      v829 = v202[2];
      v452 = *v202;
      v453 = v451[1];
      v828 = *v451;
      v826 = v453;
      v454 = v451[3];
      v827 = v451[2];
      sub_1B722376C(v202 + v450, v823, &qword_1EB98EBD0, &unk_1B7809780);
      v455 = v451 + v450;
      v456 = v762;
      sub_1B722376C(v455, v762, &qword_1EB98EBD0, &unk_1B7809780);
      *&v840 = v452;
      *(&v840 + 1) = v448;
      *&v841 = v829;
      *(&v841 + 1) = v449;
      v835.i64[0] = v828;
      v835.i64[1] = v826;
      v836.i64[0] = v827;
      v836.i64[1] = v454;
      v457 = _s10FinanceKit31FullyQualifiedAccountIdentifierV2eeoiySbAC_ACtFZ_0(&v840, &v835);

      if ((v457 & 1) == 0)
      {
        v634 = &qword_1EB98EBD0;
        v262 = &unk_1B7809780;
        sub_1B7205418(v456, &qword_1EB98EBD0, &unk_1B7809780);
        v635 = v823;
        goto LABEL_449;
      }

      v458 = v733;
      v459 = *(v734 + 48);
      sub_1B7205588(v823, v733, &qword_1EB98EBD0, &unk_1B7809780);
      sub_1B7205588(v456, v458 + v459, &qword_1EB98EBD0, &unk_1B7809780);
      v460 = v825;
      v461 = *(v825 + 6);
      v462 = v824;
      if (v461(v458, 1, v824) == 1)
      {
        sub_1B7205418(v456, &qword_1EB98EBD0, &unk_1B7809780);
        v463 = v823;
        goto LABEL_351;
      }

      v671 = v728;
      sub_1B7205588(v458, v728, &qword_1EB98EBD0, &unk_1B7809780);
      if (v461(v458 + v459, 1, v462) == 1)
      {
        sub_1B7205418(v762, &qword_1EB98EBD0, &unk_1B7809780);
        sub_1B7205418(v823, &qword_1EB98EBD0, &unk_1B7809780);
        (*(v460 + 1))(v671, v462);
        goto LABEL_381;
      }

      v694 = v727;
      (*(v460 + 4))(v727, v458 + v459, v462);
      sub_1B71A6B1C(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v695 = v671;
      v696 = sub_1B7800828();
      v697 = *(v460 + 1);
      v697(v694, v462);
      sub_1B7205418(v762, &qword_1EB98EBD0, &unk_1B7809780);
      sub_1B7205418(v823, &qword_1EB98EBD0, &unk_1B7809780);
      v697(v695, v462);
      v698 = v458;
      goto LABEL_401;
    case 2u:
      sub_1B71A5FBC(v208, v199, type metadata accessor for FinanceStore.Message);
      v423 = v199[1];
      v424 = v199[3];
      v425 = v830;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v426 = v199[2];
        v427 = *v199;
        v428 = *v425;
        v429 = v425[1];
        v430 = v425[2];
        v431 = v425[3];
        *&v840 = v427;
        *(&v840 + 1) = v423;
        *&v841 = v426;
        *(&v841 + 1) = v424;
        v835.i64[0] = v428;
        v835.i64[1] = v429;
        v836.i64[0] = v430;
        v836.i64[1] = v431;
        v238 = _s10FinanceKit31FullyQualifiedAccountIdentifierV2eeoiySbAC_ACtFZ_0(&v840, &v835);

        goto LABEL_150;
      }

      goto LABEL_247;
    case 3u:
      sub_1B71A5FBC(v208, v196, type metadata accessor for FinanceStore.Message);
      v442 = v196[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_264;
      }

      if (*v196 != *v830)
      {
        goto LABEL_314;
      }

      v211 = v442 == *(v830 + 1);
      goto LABEL_220;
    case 4u:
      v721 = v208;
      sub_1B71A5FBC(v208, v193, type metadata accessor for FinanceStore.Message);
      v360 = *v193;
      v361 = *(v193 + 1);
      v362 = v193[16];
      v363 = v193[17];
      v364 = v193[18];
      v365 = v193[19];
      v366 = v193[20];
      v367 = v830;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1B720A388(v360, v361);
        goto LABEL_243;
      }

      LODWORD(v829) = v366;
      v368 = *v367;
      v369 = v367[1];
      LODWORD(v828) = *(v367 + 16);
      LODWORD(v827) = *(v367 + 17);
      LODWORD(v826) = *(v367 + 18);
      LODWORD(v825) = *(v367 + 19);
      LODWORD(v830) = *(v367 + 20);
      v370 = sub_1B73FC434(v360, v361, v368, v369);
      sub_1B720A388(v368, v369);
      sub_1B720A388(v360, v361);
      if (!v370)
      {
        goto LABEL_450;
      }

      LOBYTE(v840) = v362;
      BYTE1(v840) = v363;
      BYTE2(v840) = v364;
      BYTE3(v840) = v365;
      BYTE4(v840) = v829;
      v835.i8[0] = v828;
      v835.i8[1] = v827;
      v835.i8[2] = v826;
      v835.i8[3] = v825;
      v835.i8[4] = v830;
      updated = _s10FinanceKit26OrderInsertOrUpdateOptionsV2eeoiySbAC_ACtFZ_0(&v840, &v835);
      goto LABEL_320;
    case 5u:
      v498 = v770;
      sub_1B71A5FBC(v208, v770, type metadata accessor for FinanceStore.Message);
      v499 = v830;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v631 = type metadata accessor for TimeWindow;
        v632 = v498;
        goto LABEL_263;
      }

      v500 = v738;
      sub_1B71A6024(v499, v738, type metadata accessor for TimeWindow);
      if (sub_1B77FF918() & 1) != 0 && (MEMORY[0x1B8CA2F10](v498 + *(v732 + 20), v500 + *(v732 + 20)))
      {
        sub_1B71A7A34(v500, type metadata accessor for TimeWindow);
        sub_1B71A7A34(v498, type metadata accessor for TimeWindow);
        goto LABEL_316;
      }

      sub_1B71A7A34(v500, type metadata accessor for TimeWindow);
      sub_1B71A7A34(v498, type metadata accessor for TimeWindow);
      goto LABEL_314;
    case 6u:
      v515 = v767;
      sub_1B71A5FBC(v208, v767, type metadata accessor for FinanceStore.Message);
      v516 = v515[1];
      v517 = v515[3];
      v518 = v830;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_252;
      }

      v519 = v515[2];
      v520 = *v518;
      v521 = v518[1];
      v522 = v518[2];
      v523 = v518[3];
      *&v840 = *v515;
      *(&v840 + 1) = v516;
      *&v841 = v519;
      *(&v841 + 1) = v517;
      v835.i64[0] = v520;
      v835.i64[1] = v521;
      v836.i64[0] = v522;
      v836.i64[1] = v523;
      v489 = _s10FinanceKit31FullyQualifiedAccountIdentifierV2eeoiySbAC_ACtFZ_0(&v840, &v835);
      goto LABEL_144;
    case 7u:
      sub_1B71A5FBC(v208, v186, type metadata accessor for FinanceStore.Message);
      v443 = *v186;
      v444 = v186[1];
      v445 = v830;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v446 = *v445;
        v447 = v445[1];
        v238 = sub_1B73FC434(v443, v444, *v445, v447);
        sub_1B720A388(v446, v447);
        sub_1B720A388(v443, v444);
        goto LABEL_334;
      }

      sub_1B720A388(v443, v444);
      goto LABEL_264;
    case 8u:
      v537 = v769;
      sub_1B71A5FBC(v208, v769, type metadata accessor for FinanceStore.Message);
      v538 = *(v537 + 8);
      v539 = *(v537 + 24);
      v540 = *(v537 + 32);
      v541 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9922B8, &unk_1B784CEF0) + 64);
      v542 = v830;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v630 = v537 + v541;
LABEL_256:
        sub_1B7205418(v630, &qword_1EB98EBD0, &unk_1B7809780);

LABEL_247:

        goto LABEL_264;
      }

      LODWORD(v826) = v540;
      v721 = v208;
      v829 = *(v537 + 16);
      v543 = *v537;
      v828 = *v542;
      v544 = v537;
      v545 = v542[1];
      v827 = v542[2];
      v546 = v542[3];
      LODWORD(v823) = *(v542 + 32);
      sub_1B722376C(v544 + v541, v821, &qword_1EB98EBD0, &unk_1B7809780);
      v547 = v542 + v541;
      v548 = v761;
      sub_1B722376C(v547, v761, &qword_1EB98EBD0, &unk_1B7809780);
      *&v840 = v543;
      *(&v840 + 1) = v538;
      *&v841 = v829;
      *(&v841 + 1) = v539;
      v835.i64[0] = v828;
      v835.i64[1] = v545;
      v836.i64[0] = v827;
      v836.i64[1] = v546;
      v549 = _s10FinanceKit31FullyQualifiedAccountIdentifierV2eeoiySbAC_ACtFZ_0(&v840, &v835);

      if ((v549 & 1) == 0)
      {
        v634 = &qword_1EB98EBD0;
        v262 = &unk_1B7809780;
        sub_1B7205418(v548, &qword_1EB98EBD0, &unk_1B7809780);
        v635 = v821;
        goto LABEL_449;
      }

      v477 = v721;
      if (v826 != v823)
      {
        v550 = &qword_1EB98EBD0;
        v551 = &unk_1B7809780;
        sub_1B7205418(v548, &qword_1EB98EBD0, &unk_1B7809780);
        v552 = v821;
        goto LABEL_390;
      }

      v459 = *(v734 + 48);
      v674 = v821;
      v458 = v729;
      sub_1B7205588(v821, v729, &qword_1EB98EBD0, &unk_1B7809780);
      sub_1B7205588(v548, v458 + v459, &qword_1EB98EBD0, &unk_1B7809780);
      v675 = v825;
      v461 = *(v825 + 6);
      v462 = v824;
      if (v461(v458, 1, v824) == 1)
      {
        sub_1B7205418(v548, &qword_1EB98EBD0, &unk_1B7809780);
        v463 = v674;
LABEL_351:
        sub_1B7205418(v463, &qword_1EB98EBD0, &unk_1B7809780);
        if (v461(v458 + v459, 1, v462) == 1)
        {
          sub_1B7205418(v458, &qword_1EB98EBD0, &unk_1B7809780);
          v639 = v721;
          goto LABEL_317;
        }

        goto LABEL_381;
      }

      v699 = v724;
      sub_1B7205588(v458, v724, &qword_1EB98EBD0, &unk_1B7809780);
      if (v461(v458 + v459, 1, v462) == 1)
      {
        sub_1B7205418(v761, &qword_1EB98EBD0, &unk_1B7809780);
        sub_1B7205418(v821, &qword_1EB98EBD0, &unk_1B7809780);
        (*(v675 + 1))(v699, v462);
LABEL_381:
        sub_1B7205418(v458, &qword_1EB98FCE0, &qword_1B7813550);
        v639 = v721;
        goto LABEL_382;
      }

      v709 = v458 + v459;
      v710 = v727;
      (*(v675 + 4))(v727, v709, v462);
      sub_1B71A6B1C(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v696 = sub_1B7800828();
      v711 = *(v675 + 1);
      v711(v710, v462);
      sub_1B7205418(v761, &qword_1EB98EBD0, &unk_1B7809780);
      sub_1B7205418(v821, &qword_1EB98EBD0, &unk_1B7809780);
      v711(v699, v462);
      v698 = v458;
LABEL_401:
      sub_1B7205418(v698, &qword_1EB98EBD0, &unk_1B7809780);
      v639 = v721;
      if ((v696 & 1) == 0)
      {
LABEL_382:
        sub_1B71A7A34(v639, type metadata accessor for FinanceStore.Message);
        goto LABEL_265;
      }

      goto LABEL_317;
    case 9u:
      v315 = v208;
      v407 = v768;
      sub_1B71A5FBC(v208, v768, type metadata accessor for FinanceStore.Message);
      v408 = *(v407 + 8);
      v409 = *(v407 + 24);
      v375 = *(v407 + 32);
      v410 = v830;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_245;
      }

      v411 = *(v407 + 16);
      v412 = *v407;
      v413 = *v410;
      v414 = v410[1];
      v415 = v410[2];
      v416 = v410[3];
      v379 = *(v410 + 32);
      *&v840 = v412;
      *(&v840 + 1) = v408;
      *&v841 = v411;
      *(&v841 + 1) = v409;
      v835.i64[0] = v413;
      v835.i64[1] = v414;
      v836.i64[0] = v415;
      v836.i64[1] = v416;
      v417 = _s10FinanceKit31FullyQualifiedAccountIdentifierV2eeoiySbAC_ACtFZ_0(&v840, &v835);

      if ((v417 & 1) == 0)
      {
        goto LABEL_292;
      }

      goto LABEL_201;
    case 0xAu:
      v531 = v772;
      sub_1B71A5FBC(v208, v772, type metadata accessor for FinanceStore.Message);
      v532 = v830;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v533 = v825;
        v534 = v735;
        v535 = v824;
        (*(v825 + 4))(v735, v532, v824);
        v536 = sub_1B77FF918();
        goto LABEL_205;
      }

      (*(v825 + 1))(v531, v824);
      goto LABEL_264;
    case 0xBu:
      v341 = v779;
      sub_1B71A5FBC(v208, v779, type metadata accessor for FinanceStore.Message);
      v342 = *(v341 + 48);
      v842 = *(v341 + 32);
      v843 = v342;
      v844 = *(v341 + 64);
      v343 = *(v341 + 16);
      v840 = *v341;
      v841 = v343;
      v344 = v830;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v345 = v344[1];
        v346 = v344[3];
        v837 = v344[2];
        v838 = v346;
        v347 = v344[1];
        v835 = *v344;
        v836 = v347;
        v348 = *(v341 + 48);
        v833[2] = *(v341 + 32);
        v833[3] = v348;
        v349 = *(v341 + 16);
        v833[0] = *v341;
        v833[1] = v349;
        v350 = v344[3];
        v831[2] = v837;
        v831[3] = v350;
        v839 = v344[4].i8[0];
        v834 = *(v341 + 64);
        v832 = v344[4].i8[0];
        v831[0] = v835;
        v831[1] = v345;
        v238 = _s10FinanceKit10OrderEventV0D4TypeO2eeoiySbAE_AEtFZ_0(v833, v831);
        sub_1B73CFC74(&v835);
        sub_1B73CFC74(&v840);
        goto LABEL_334;
      }

      sub_1B73CFC74(&v840);
      goto LABEL_264;
    case 0xCu:
      v382 = v782;
      sub_1B71A5FBC(v208, v782, type metadata accessor for FinanceStore.Message);
      v819 = *v382;
      v383 = *(v382 + 24);
      v827 = *(v382 + 16);
      v821 = v383;
      v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C08, &qword_1B7832A28);
      v820 = v384[16];
      v385 = v384[20];
      v386 = *(v382 + v385 + 8);
      v818 = *(v382 + v385);
      v823 = v386;
      v387 = v384[24];
      v388 = *(v382 + v387 + 8);
      v815 = *(v382 + v387);
      v826 = v388;
      v389 = v384[28];
      v390 = *(v382 + v389 + 8);
      v814 = *(v382 + v389);
      v829 = v390;
      v391 = v384[32];
      v392 = *(v382 + v391 + 8);
      v813 = *(v382 + v391);
      v393 = v830;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        sub_1B762E6C0(v827, v821);

        sub_1B7205418(&v820[v382], &qword_1EB98EBD0, &unk_1B7809780);
        goto LABEL_264;
      }

      v817 = v392;
      v721 = v208;
      v394 = *(v382 + 8);
      v395 = *v393;
      v396 = *(v393 + 8);
      v397 = v393[3];
      v812 = v393[2];
      v811 = v397;
      v398 = *(v393 + v385 + 8);
      v809 = *(v393 + v385);
      v810 = v398;
      v399 = *(v393 + v387 + 8);
      v808 = *(v393 + v387);
      v828 = v399;
      v400 = *(v393 + v389 + 8);
      v807 = *(v393 + v389);
      v816 = v400;
      v401 = *(v393 + v391 + 8);
      v806 = *(v393 + v391);
      v402 = v820;
      sub_1B722376C(&v820[v382], v822, &qword_1EB98EBD0, &unk_1B7809780);
      v403 = &v402[v393];
      v404 = v760;
      sub_1B722376C(v403, v760, &qword_1EB98EBD0, &unk_1B7809780);
      if (v394)
      {
        v405 = v825;
        v406 = v827;
        if (!v396)
        {
LABEL_86:

          sub_1B762E6C0(v812, v811);
          sub_1B762E6C0(v406, v821);
LABEL_447:
          v634 = &qword_1EB98EBD0;
          v262 = &unk_1B7809780;
          v718 = v404;
LABEL_448:
          sub_1B7205418(v718, &qword_1EB98EBD0, &unk_1B7809780);
          v635 = v822;
          goto LABEL_449;
        }
      }

      else
      {
        if (v819 == v395)
        {
          v640 = v396;
        }

        else
        {
          v640 = 1;
        }

        v405 = v825;
        v406 = v827;
        if (v640)
        {
          goto LABEL_86;
        }
      }

      v641 = v821;
      v642 = v811;
      if (v821 == 19)
      {
        if (v811 == 19)
        {
          v641 = 19;
          goto LABEL_374;
        }

        v670 = v812;
      }

      else
      {
        if (v811 != 19)
        {
          *&v840 = v406;
          *(&v840 + 1) = v821;
          v835.i64[0] = v812;
          v835.i64[1] = v811;
          v683 = ManagedCloudOrderEvent.EventType.rawValue.getter();
          v685 = v684;
          if (v683 != ManagedCloudOrderEvent.EventType.rawValue.getter() || v685 != v686)
          {
            v708 = sub_1B78020F8();
            sub_1B762E6C0(v812, v642);

            sub_1B762E6C0(v827, v641);
            if ((v708 & 1) == 0)
            {
              goto LABEL_399;
            }

            goto LABEL_375;
          }

          sub_1B762E6C0(v812, v642);

          v406 = v827;
LABEL_374:
          sub_1B762E6C0(v406, v641);
LABEL_375:
          v687 = *(v734 + 48);
          v688 = v726;
          sub_1B7205588(v822, v726, &qword_1EB98EBD0, &unk_1B7809780);
          sub_1B7205588(v404, v688 + v687, &qword_1EB98EBD0, &unk_1B7809780);
          v689 = *(v405 + 6);
          v690 = v824;
          if (v689(v688, 1, v824) == 1)
          {
            if (v689(v688 + v687, 1, v690) == 1)
            {
              sub_1B7205418(v688, &qword_1EB98EBD0, &unk_1B7809780);
              v691 = v829;
              v692 = v826;
              v693 = v823;
              goto LABEL_409;
            }

LABEL_407:
            sub_1B7205418(v688, &qword_1EB98FCE0, &qword_1B7813550);
            goto LABEL_447;
          }

          v700 = v723;
          sub_1B7205588(v688, v723, &qword_1EB98EBD0, &unk_1B7809780);
          if (v689(v688 + v687, 1, v690) == 1)
          {

            (*(v405 + 1))(v700, v690);
            goto LABEL_407;
          }

          v712 = v688 + v687;
          v713 = v727;
          (*(v405 + 4))(v727, v712, v690);
          sub_1B71A6B1C(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
          v714 = sub_1B7800828();
          v715 = *(v405 + 1);
          v715(v713, v690);
          v715(v700, v690);
          sub_1B7205418(v688, &qword_1EB98EBD0, &unk_1B7809780);
          v691 = v829;
          v692 = v826;
          v693 = v823;
          if (v714)
          {
LABEL_409:
            if (v693)
            {
              if (v810)
              {
                if (v818 == v809 && v693 == v810)
                {

                  goto LABEL_429;
                }

                v716 = sub_1B78020F8();

                if (v716)
                {
                  goto LABEL_429;
                }
              }

              else
              {
              }

              goto LABEL_446;
            }

            if (v810)
            {

              goto LABEL_437;
            }

LABEL_429:
            if (v692)
            {
              if (v828)
              {
                if (v815 == v808 && v692 == v828)
                {

                  goto LABEL_440;
                }

                v717 = sub_1B78020F8();

                if (v717)
                {
LABEL_440:
                  if (!v691)
                  {
                    if (v816)
                    {

                      goto LABEL_461;
                    }

                    goto LABEL_455;
                  }

                  if (v816)
                  {
                    if (v814 == v807 && v829 == v816)
                    {

LABEL_455:
                      if (v817)
                      {
                        if (v401)
                        {
                          if (v813 == v806 && v817 == v401)
                          {

                            sub_1B7205418(v760, &qword_1EB98EBD0, &unk_1B7809780);
                            sub_1B7205418(v822, &qword_1EB98EBD0, &unk_1B7809780);
LABEL_465:
                            v639 = v721;
                            goto LABEL_317;
                          }

                          v720 = sub_1B78020F8();

                          sub_1B7205418(v760, &qword_1EB98EBD0, &unk_1B7809780);
                          sub_1B7205418(v822, &qword_1EB98EBD0, &unk_1B7809780);
                          if (v720)
                          {
                            goto LABEL_465;
                          }

                          goto LABEL_450;
                        }

LABEL_461:

                        v634 = &qword_1EB98EBD0;
                        v262 = &unk_1B7809780;
                        v718 = v760;
                        goto LABEL_448;
                      }

                      sub_1B7205418(v760, &qword_1EB98EBD0, &unk_1B7809780);
                      sub_1B7205418(v822, &qword_1EB98EBD0, &unk_1B7809780);
                      if (!v401)
                      {
                        goto LABEL_465;
                      }

LABEL_342:

LABEL_450:
                      sub_1B71A7A34(v721, type metadata accessor for FinanceStore.Message);
                      goto LABEL_265;
                    }

                    v719 = sub_1B78020F8();

                    if (v719)
                    {
                      goto LABEL_455;
                    }
                  }

                  else
                  {
                  }

                  goto LABEL_461;
                }
              }

              else
              {
              }

LABEL_446:

              goto LABEL_447;
            }

            if (!v828)
            {
              goto LABEL_440;
            }

LABEL_437:

            goto LABEL_446;
          }

LABEL_399:

          goto LABEL_446;
        }

        sub_1B74A5328(v406, v821);
        v670 = v812;
        sub_1B74A5328(v812, 0x13uLL);

        sub_1B762E6C0(v670, 0x13uLL);
        sub_1B762E6C0(v406, v641);
      }

      sub_1B762E6C0(v406, v641);
      sub_1B762E6C0(v670, v642);
      goto LABEL_447;
    case 0xDu:
      v244 = v775;
      sub_1B71A5FBC(v208, v775, type metadata accessor for FinanceStore.Message);
      v245 = v830;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_216;
      }

      v246 = v827;
      v247 = *(v827 + 32);
      v248 = v740;
      goto LABEL_215;
    case 0xEu:
      v315 = v208;
      v316 = v771;
      sub_1B71A5FBC(v208, v771, type metadata accessor for FinanceStore.Message);
      v318 = *v316;
      v317 = v316[1];
      v320 = v316[2];
      v319 = v316[3];
      v321 = v830;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_245;
      }

      v322 = *v321;
      v323 = v321[1];
      v325 = v321[2];
      v324 = v321[3];
      if (v318 == v322 && v317 == v323)
      {
      }

      else
      {
        v638 = sub_1B78020F8();

        if ((v638 & 1) == 0)
        {
          goto LABEL_291;
        }
      }

      if (v320 == v325 && v319 == v324)
      {

        v639 = v315;
        goto LABEL_317;
      }

      v655 = sub_1B78020F8();

      v639 = v315;
      if (v655)
      {
        goto LABEL_317;
      }

      goto LABEL_382;
    case 0xFu:
      v315 = v208;
      v432 = v773;
      sub_1B71A5FBC(v208, v773, type metadata accessor for FinanceStore.Message);
      v434 = *v432;
      v433 = v432[1];
      v436 = v432[2];
      v435 = v432[3];
      v437 = v830;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_245;
      }

      v438 = *v437;
      v439 = v437[1];
      v441 = v437[2];
      v440 = v437[3];
      if (v434 == v438 && v433 == v439)
      {
      }

      else
      {
        v643 = sub_1B78020F8();

        if ((v643 & 1) == 0)
        {
          goto LABEL_291;
        }
      }

      if (v436 == v441 && v435 == v440)
      {
      }

      else
      {
        v656 = sub_1B78020F8();

        if ((v656 & 1) == 0)
        {
          goto LABEL_292;
        }
      }

      v639 = v315;
      goto LABEL_317;
    case 0x10u:
      v301 = v778;
      sub_1B71A5FBC(v208, v778, type metadata accessor for FinanceStore.Message);
      v302 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C10, &unk_1B784CEE0) + 48);
      v303 = v830;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        (*(v825 + 1))(&v301[v302], v824);
        goto LABEL_264;
      }

      LODWORD(v829) = *v301;
      v304 = *v303;
      v305 = v825;
      v306 = *(v825 + 4);
      v307 = &v301[v302];
      v308 = v737;
      v309 = v824;
      v306(v737, v307, v824);
      v310 = v303 + v302;
      v311 = v736;
      v306(v736, v310, v309);
      if (v829 != v304)
      {
        v312 = *(v305 + 1);
        v312(v311, v309);
        v312(v308, v309);
        goto LABEL_314;
      }

      v238 = sub_1B77FF918();
      v637 = *(v305 + 1);
      v637(v311, v309);
      v637(v308, v309);
      goto LABEL_334;
    case 0x11u:
      v478 = v774;
      sub_1B71A5FBC(v208, v774, type metadata accessor for FinanceStore.Message);
      v420 = *v478;
      v419 = v478[1];
      v421 = v830;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_247;
      }

      goto LABEL_171;
    case 0x12u:
      v524 = v776;
      sub_1B71A5FBC(v208, v776, type metadata accessor for FinanceStore.Message);
      v525 = *v524;
      v526 = v524[1];
      v527 = v830;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_252;
      }

      v529 = *v527;
      v528 = v527[1];
      v530 = sub_1B731D660(v525, v529);

      if ((v530 & 1) == 0)
      {
        goto LABEL_239;
      }

      v243 = sub_1B72F48EC(v526, v528);
      goto LABEL_149;
    case 0x13u:
      v568 = v777;
      sub_1B71A5FBC(v208, v777, type metadata accessor for FinanceStore.Message);
      v420 = *v568;
      v419 = v568[1];
      v421 = v830;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_171;
      }

      goto LABEL_247;
    case 0x14u:
      v490 = v780;
      sub_1B71A5FBC(v208, v780, type metadata accessor for FinanceStore.Message);
      v492 = *v490;
      v491 = *(v490 + 8);
      v493 = *(v490 + 16);
      v494 = v830;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_247;
      }

      v495 = *v494;
      v496 = v494[1];
      v497 = *(v494 + 16);
      if (v492 == v495 && v491 == v496)
      {
      }

      else
      {
        v648 = sub_1B78020F8();

        if ((v648 & 1) == 0)
        {
          goto LABEL_314;
        }
      }

      v604 = v493 ^ v497;
      v605 = v208;
      goto LABEL_298;
    case 0x15u:
      v501 = v785;
      sub_1B71A5FBC(v208, v785, type metadata accessor for FinanceStore.Message);
      v503 = *v501;
      v502 = *(v501 + 8);
      v504 = *(v501 + 16);
      v505 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C18, &unk_1B784CED0) + 64);
      v506 = v830;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_167;
      }

      LODWORD(v829) = v504;
      v721 = v208;
      v507 = v501;
      v509 = *v506;
      v508 = v506[1];
      LODWORD(v828) = *(v506 + 16);
      v510 = v506;
      v511 = *(v825 + 4);
      v512 = v824;
      v511(v818, v507 + v505, v824);
      v513 = v510 + v505;
      v514 = v739;
      v511(v739, v513, v512);
      if (v503 == v509 && v502 == v508)
      {
      }

      else
      {
        v649 = sub_1B78020F8();

        if ((v649 & 1) == 0)
        {
          goto LABEL_301;
        }
      }

      v650 = v825;
      if (v829 != v828)
      {
LABEL_301:
        v651 = *(v825 + 1);
        v651(v514, v512);
        v652 = v818;
        goto LABEL_306;
      }

      v657 = v818;
LABEL_329:
      v238 = sub_1B77FF918();
      v658 = *(v650 + 1);
      v658(v514, v512);
      v658(v657, v512);
LABEL_330:
      v340 = v721;
LABEL_335:
      sub_1B71A7A34(v340, type metadata accessor for FinanceStore.Message);
      return v238 & 1;
    case 0x16u:
      v501 = v786;
      sub_1B71A5FBC(v208, v786, type metadata accessor for FinanceStore.Message);
      v559 = *v501;
      v558 = *(v501 + 8);
      v560 = *(v501 + 16);
      v505 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995C18, &unk_1B784CED0) + 64);
      v561 = v830;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
LABEL_167:
        (*(v825 + 1))(v501 + v505, v824);
        goto LABEL_247;
      }

      LODWORD(v829) = v560;
      v721 = v208;
      v562 = v501;
      v564 = *v561;
      v563 = v561[1];
      LODWORD(v828) = *(v561 + 16);
      v565 = v561;
      v566 = *(v825 + 4);
      v512 = v824;
      v566(v819, v562 + v505, v824);
      v567 = v565 + v505;
      v514 = v741;
      v566(v741, v567, v512);
      if (v559 == v564 && v558 == v563)
      {
      }

      else
      {
        v653 = sub_1B78020F8();

        if ((v653 & 1) == 0)
        {
          goto LABEL_305;
        }
      }

      v650 = v825;
      if (v829 == v828)
      {
        v657 = v819;
        goto LABEL_329;
      }

LABEL_305:
      v651 = *(v825 + 1);
      v651(v514, v512);
      v652 = v819;
LABEL_306:
      v651(v652, v512);
      goto LABEL_450;
    case 0x17u:
      v575 = v781;
      sub_1B71A5FBC(v208, v781, type metadata accessor for FinanceStore.Message);
      v576 = *v575;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_264;
      }

      v577 = *v830;
      if (v576 == 2)
      {
        if (v577 != 2)
        {
          goto LABEL_314;
        }

        goto LABEL_316;
      }

      if (v577 != 2 && ((v577 ^ v576) & 1) == 0)
      {
        goto LABEL_316;
      }

      goto LABEL_314;
    case 0x18u:
      v422 = v783;
      sub_1B71A5FBC(v208, v783, type metadata accessor for FinanceStore.Message);
      v420 = *v422;
      v419 = v422[1];
      v421 = v830;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_247;
      }

      goto LABEL_171;
    case 0x19u:
      v418 = v784;
      sub_1B71A5FBC(v208, v784, type metadata accessor for FinanceStore.Message);
      v420 = *v418;
      v419 = v418[1];
      v421 = v830;
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        goto LABEL_247;
      }

      goto LABEL_171;
    case 0x1Au:
      v531 = v791;
      sub_1B71A5FBC(v208, v791, type metadata accessor for FinanceStore.Message);
      v606 = v830;
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        (*(v765 + 8))(v531, v766);
        goto LABEL_264;
      }

      v533 = v765;
      v535 = v766;
      v534 = v753;
      (*(v765 + 32))(v753, v606, v766);
      v536 = MEMORY[0x1B8CA3D90](v531, v534);
LABEL_205:
      v238 = v536;
      v607 = *(v533 + 1);
      v607(v534, v535);
      v607(v531, v535);
      goto LABEL_334;
    case 0x1Bu:
      v276 = v787;
      sub_1B71A5FBC(v208, v787, type metadata accessor for FinanceStore.Message);
      v278 = *v276;
      v277 = *(v276 + 8);
      v280 = *(v276 + 16);
      v279 = *(v276 + 24);
      v281 = *(v276 + 32);
      v282 = v830;
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_252;
      }

      v721 = v208;
      v283 = *v282;
      v284 = v282[1];
      v286 = v282[2];
      v285 = v282[3];
      v287 = *(v282 + 32);
      if (v278 == v283 && v277 == v284)
      {
      }

      else
      {
        v636 = sub_1B78020F8();

        if ((v636 & 1) == 0)
        {

          goto LABEL_342;
        }
      }

      if (v280 == v286 && v279 == v285)
      {
      }

      else
      {
        v654 = sub_1B78020F8();

        if ((v654 & 1) == 0)
        {
          goto LABEL_450;
        }
      }

      updated = sub_1B71E4D5C(v281, v287);
LABEL_320:
      v238 = updated;
      goto LABEL_330;
    case 0x1Cu:
      v578 = v788;
      sub_1B71A5FBC(v208, v788, type metadata accessor for FinanceStore.Message);
      v579 = *v578;
      v580 = *(v578 + 8);
      v581 = v830;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_247;
      }

      v582 = *v581;
      v583 = *(v581 + 8);
      v584 = sub_1B73216E0(v579, v582);

      if ((v584 & 1) == 0)
      {
        goto LABEL_314;
      }

      v585 = v580;
      v586 = v583;
      goto LABEL_333;
    case 0x1Du:
      v587 = v789;
      sub_1B71A5FBC(v208, v789, type metadata accessor for FinanceStore.Message);
      v588 = *v587;
      v589 = *(v587 + 8);
      v590 = v830;
      if (swift_getEnumCaseMultiPayload() != 29)
      {
        goto LABEL_247;
      }

      v591 = *v590;
      v592 = *(v590 + 8);
      if (!v588)
      {
        if (v591)
        {
          goto LABEL_313;
        }

        goto LABEL_332;
      }

      if (!v591)
      {
        goto LABEL_313;
      }

      v593 = v591;

      v595 = sub_1B72F4734(v594, v593);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      if (v595)
      {
LABEL_332:
        v585 = v589;
        v586 = v592;
LABEL_333:
        v238 = sub_1B71E4D5C(v585, v586);
        goto LABEL_334;
      }

      goto LABEL_314;
    case 0x1Eu:
      v553 = v790;
      sub_1B71A5FBC(v208, v790, type metadata accessor for FinanceStore.Message);
      v420 = *v553;
      v419 = v553[1];
      v421 = v830;
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_247;
      }

LABEL_171:
      v569 = *v421;
      v570 = v421[1];
      if (v420 == v569 && v419 == v570)
      {

        goto LABEL_316;
      }

      v571 = sub_1B78020F8();

      if (v571)
      {
        goto LABEL_316;
      }

      goto LABEL_314;
    case 0x1Fu:
      v464 = v794;
      sub_1B71A5FBC(v208, v794, type metadata accessor for FinanceStore.Message);
      v466 = *v464;
      v465 = v464[1];
      v467 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999CB8, &unk_1B784CEC0) + 48);
      v468 = v830;
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        (*(v825 + 1))(v464 + v467, v824);
        goto LABEL_247;
      }

      v721 = v208;
      v470 = *v468;
      v469 = v468[1];
      v471 = *(v825 + 4);
      v472 = v464 + v467;
      v473 = v468;
      v474 = v824;
      v471(v820, v472, v824);
      v475 = v473 + v467;
      v476 = v742;
      v471(v742, v475, v474);
      if (v466 == v470 && v465 == v469)
      {

        v477 = v721;
LABEL_295:
        v645 = v820;
        v238 = sub_1B77FF918();
        v646 = *(v825 + 1);
        v647 = v824;
        v646(v476, v824);
        v646(v645, v647);
        v340 = v477;
        goto LABEL_335;
      }

      v644 = sub_1B78020F8();

      v477 = v721;
      if (v644)
      {
        goto LABEL_295;
      }

      v672 = *(v825 + 1);
      v673 = v824;
      v672(v476, v824);
      v672(v820, v673);
      goto LABEL_391;
    case 0x20u:
      v230 = v799;
      sub_1B71A5FBC(v208, v799, type metadata accessor for FinanceStore.Message);
      v554 = v830;
      if (swift_getEnumCaseMultiPayload() == 32)
      {
        v555 = v755;
        sub_1B71A6024(v554, v755, type metadata accessor for BankCredential);
        v556 = *(v754 + 48);
        v557 = v756;
        sub_1B71A5FBC(v230, v756, type metadata accessor for BankCredential);
        sub_1B71A5FBC(v555, v557 + v556, type metadata accessor for BankCredential);
        v238 = _s10FinanceKit14BankCredentialO3ACHV2eeoiySbAE_AEtFZ_0(v557, v557 + v556);
        sub_1B71A7A34(v557 + v556, type metadata accessor for BankCredential.ACH);
        sub_1B71A7A34(v557, type metadata accessor for BankCredential.ACH);
        sub_1B71A7A34(v555, type metadata accessor for BankCredential);
        sub_1B71A7A34(v230, type metadata accessor for BankCredential);
        goto LABEL_334;
      }

      v629 = type metadata accessor for BankCredential;
      goto LABEL_262;
    case 0x21u:
      v326 = v792;
      sub_1B71A5FBC(v208, v792, type metadata accessor for FinanceStore.Message);
      v227 = *v326;
      v327 = v830;
      if (swift_getEnumCaseMultiPayload() != 33)
      {
        goto LABEL_247;
      }

      v229 = *v327;
      goto LABEL_60;
    case 0x22u:
      v288 = v793;
      sub_1B71A5FBC(v208, v793, type metadata accessor for FinanceStore.Message);
      v289 = *v288;
      v290 = *(v288 + 8);
      v292 = *(v288 + 16);
      v291 = *(v288 + 24);
      v293 = *(v288 + 32);
      v294 = v830;
      if (swift_getEnumCaseMultiPayload() != 34)
      {

        sub_1B7201CF8(v289, v290);
        goto LABEL_264;
      }

      v295 = *v294;
      v296 = *(v294 + 8);
      v297 = v294[2];
      v298 = v294[3];
      v830 = v294[4];
      if (v290 == 255)
      {
        v299 = v295;
        if (v296 == 255)
        {
          v829 = v297;
          v721 = v208;
          sub_1B72274E8(v289, 255);
          sub_1B72274E8(v299, 255);
          sub_1B7201CF8(v289, 255);
          goto LABEL_360;
        }
      }

      else
      {
        *&v840 = v289;
        BYTE8(v840) = v290;
        if (v296 != 255)
        {
          v829 = v297;
          v721 = v208;
          v835.i64[0] = v295;
          v835.i8[8] = v296 & 1;
          v299 = v295;
          sub_1B72274E8(v289, v290);
          sub_1B72274E8(v299, v296);
          sub_1B72274E8(v289, v290);
          v300 = sub_1B71CAC1C();
          sub_1B7201D10(v835.i64[0], v835.i8[8]);
          sub_1B7201D10(v840, SBYTE8(v840));
          sub_1B7201CF8(v289, v290);
          if ((v300 & 1) == 0)
          {
            sub_1B7201CF8(v289, v290);
            sub_1B7201CF8(v299, v296);

            v208 = v721;
            goto LABEL_314;
          }

LABEL_360:
          v828 = v299;
          v677 = v830;
          if (v292 == v829 && v291 == v298)
          {

            v678 = v721;
          }

          else
          {
            v679 = sub_1B78020F8();

            v678 = v721;
            if ((v679 & 1) == 0)
            {

              sub_1B7201CF8(v828, v296);
              sub_1B7201CF8(v289, v290);
              goto LABEL_405;
            }
          }

          if (v293)
          {
            if (v677)
            {

              v681 = sub_1B7220360(v680, v677);
              sub_1B7201CF8(v828, v296);
              sub_1B7201CF8(v289, v290);
              swift_bridgeObjectRelease_n();

              if (v681)
              {
                goto LABEL_418;
              }

              goto LABEL_405;
            }

            sub_1B7201CF8(v828, v296);
            sub_1B7201CF8(v289, v290);
          }

          else
          {
            sub_1B7201CF8(v828, v296);
            sub_1B7201CF8(v289, v290);
            if (!v677)
            {

LABEL_418:
              v639 = v678;
LABEL_317:
              sub_1B71A7A34(v639, type metadata accessor for FinanceStore.Message);
              v238 = 1;
              return v238 & 1;
            }
          }

LABEL_405:
          sub_1B71A7A34(v678, type metadata accessor for FinanceStore.Message);
          goto LABEL_265;
        }

        v299 = v295;
        sub_1B72274E8(v289, v290);

        sub_1B7201D10(v289, v290 & 1);
      }

      sub_1B7201CF8(v289, v290);
      sub_1B7201CF8(v299, v296);
      goto LABEL_314;
    case 0x23u:
      v721 = v208;
      v249 = v208;
      v250 = v801;
      sub_1B71A5FBC(v249, v801, type metadata accessor for FinanceStore.Message);
      v251 = *v250;
      v252 = *(v250 + 8);
      v253 = *(v250 + 24);
      v829 = *(v250 + 16);
      v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996858, &qword_1B78388C8);
      v255 = *(v254 + 64);
      v256 = *(v254 + 80);
      v257 = *(v250 + v256);
      v258 = v830;
      if (swift_getEnumCaseMultiPayload() != 35)
      {

        sub_1B7201D10(v251, v252);

        sub_1B7205418(v250 + v255, &unk_1EB993A10, &qword_1B780B4A0);
LABEL_243:
        v208 = v721;
LABEL_264:
        sub_1B7205418(v208, &qword_1EB99A458, &unk_1B7853310);
        goto LABEL_265;
      }

      v825 = v253;
      v828 = v257;
      v259 = *v258;
      v260 = *(v258 + 8);
      v261 = v258[3];
      v822 = v258[2];
      v823 = v261;
      v824 = *(v258 + v256);
      v262 = &qword_1B780B4A0;
      v263 = v250 + v255;
      v264 = v764;
      sub_1B722376C(v263, v764, &unk_1EB993A10, &qword_1B780B4A0);
      v265 = v258 + v255;
      v266 = v763;
      sub_1B722376C(v265, v763, &unk_1EB993A10, &qword_1B780B4A0);
      *&v840 = v251;
      BYTE8(v840) = v252;
      v835.i64[0] = v259;
      v835.i8[8] = v260;
      if (sub_1B71CAC1C())
      {
        LODWORD(v830) = v252;
        v267 = v824;
        if (v829 == v822 && v825 == v823)
        {

          v268 = v764;
          goto LABEL_338;
        }

        v660 = sub_1B78020F8();

        v268 = v764;
        if (v660)
        {
LABEL_338:
          v825 = v259;
          LODWORD(v829) = v260;
          v661 = v251;
          v662 = v266;
          v663 = v731;
          v664 = *(v730 + 48);
          sub_1B7205588(v268, v731, &unk_1EB993A10, &qword_1B780B4A0);
          sub_1B7205588(v662, v663 + v664, &unk_1EB993A10, &qword_1B780B4A0);
          v665 = v827;
          v666 = *(v827 + 48);
          v667 = v826;
          if (v666(v663, 1, v826) == 1)
          {
            if (v666(v663 + v664, 1, v667) == 1)
            {
              sub_1B7205418(v663, &unk_1EB993A10, &qword_1B780B4A0);
              v668 = v828;
              v669 = v764;
              goto LABEL_393;
            }

            sub_1B7201D10(v825, v829);
            sub_1B7201D10(v251, v830);
          }

          else
          {
            v676 = v725;
            sub_1B7205588(v663, v725, &unk_1EB993A10, &qword_1B780B4A0);
            if (v666(v663 + v664, 1, v667) != 1)
            {
              v701 = v663 + v664;
              v702 = v722;
              (*(v665 + 32))(v722, v701, v667);
              sub_1B71A6B1C(&qword_1EB99DBE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
              v703 = sub_1B7800828();
              v704 = *(v665 + 8);
              v704(v702, v667);
              v704(v676, v667);
              sub_1B7205418(v663, &unk_1EB993A10, &qword_1B780B4A0);
              v668 = v828;
              v669 = v764;
              if (v703)
              {
LABEL_393:
                v705 = v763;
                if (v668)
                {
                  if (v267)
                  {
                    swift_bridgeObjectRetain_n();

                    v706 = sub_1B7220360(v668, v267);
                    sub_1B7201D10(v825, v829);
                    sub_1B7201D10(v661, v830);

                    swift_bridgeObjectRelease_n();
                    sub_1B7205418(v705, &unk_1EB993A10, &qword_1B780B4A0);
                    sub_1B7205418(v669, &unk_1EB993A10, &qword_1B780B4A0);
                    swift_bridgeObjectRelease_n();
                    v707 = v721;
                    if (v706)
                    {
                      goto LABEL_426;
                    }

LABEL_421:
                    sub_1B71A7A34(v707, type metadata accessor for FinanceStore.Message);
                    goto LABEL_265;
                  }

                  swift_bridgeObjectRetain_n();
                  sub_1B7201D10(v825, v829);
                  sub_1B7201D10(v661, v830);

                  sub_1B7205418(v705, &unk_1EB993A10, &qword_1B780B4A0);
                  sub_1B7205418(v669, &unk_1EB993A10, &qword_1B780B4A0);
                }

                else
                {

                  sub_1B7201D10(v825, v829);
                  sub_1B7201D10(v661, v830);

                  sub_1B7205418(v705, &unk_1EB993A10, &qword_1B780B4A0);
                  sub_1B7205418(v669, &unk_1EB993A10, &qword_1B780B4A0);
                  if (!v267)
                  {

                    v707 = v721;
LABEL_426:
                    v639 = v707;
                    goto LABEL_317;
                  }
                }

                v707 = v721;

                goto LABEL_421;
              }

              sub_1B7201D10(v825, v829);
              sub_1B7201D10(v661, v830);

              goto LABEL_389;
            }

            sub_1B7201D10(v825, v829);
            sub_1B7201D10(v661, v830);

            (*(v665 + 8))(v676, v667);
          }

          v669 = v764;
          sub_1B7205418(v663, qword_1EB9943A0, &qword_1B786A830);
LABEL_389:
          v477 = v721;
          v550 = &unk_1EB993A10;
          v551 = &qword_1B780B4A0;
          sub_1B7205418(v763, &unk_1EB993A10, &qword_1B780B4A0);
          v552 = v669;
LABEL_390:
          sub_1B7205418(v552, v550, v551);
LABEL_391:
          sub_1B71A7A34(v477, type metadata accessor for FinanceStore.Message);
LABEL_265:
          v238 = 0;
          return v238 & 1;
        }

        v682 = v764;
        sub_1B7201D10(v259, v260);
        sub_1B7201D10(v251, v830);

        v634 = &unk_1EB993A10;
        v262 = &qword_1B780B4A0;
        sub_1B7205418(v266, &unk_1EB993A10, &qword_1B780B4A0);
        v635 = v682;
      }

      else
      {

        sub_1B7201D10(v259, v260);
        sub_1B7201D10(v251, v252);

        v634 = &unk_1EB993A10;
        sub_1B7205418(v266, &unk_1EB993A10, &qword_1B780B4A0);
        v635 = v264;
      }

LABEL_449:
      sub_1B7205418(v635, v634, v262);
      goto LABEL_450;
    case 0x24u:
      v269 = v795;
      sub_1B71A5FBC(v208, v795, type metadata accessor for FinanceStore.Message);
      v270 = *v269;
      v271 = v830;
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_247;
      }

      v272 = *v271;
      if (v270)
      {
        if (!v272)
        {
          goto LABEL_313;
        }

        v273 = *v271;

        v275 = sub_1B73218F4(v274, v273);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        if ((v275 & 1) == 0)
        {
LABEL_314:
          sub_1B71A7A34(v208, type metadata accessor for FinanceStore.Message);
          goto LABEL_265;
        }
      }

      else if (v272)
      {
        goto LABEL_313;
      }

LABEL_316:
      v639 = v208;
      goto LABEL_317;
    case 0x25u:
      v226 = v796;
      sub_1B71A5FBC(v208, v796, type metadata accessor for FinanceStore.Message);
      v227 = *(v226 + 8);
      v228 = v830;
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_247;
      }

      v229 = v228[1];
      if (!sub_1B72C11A8(*v226, *v228))
      {
LABEL_239:

        goto LABEL_313;
      }

LABEL_60:
      v243 = sub_1B73216E0(v227, v229);
LABEL_149:
      v238 = v243;
LABEL_150:

      goto LABEL_334;
    case 0x26u:
      v315 = v208;
      v596 = v797;
      sub_1B71A5FBC(v208, v797, type metadata accessor for FinanceStore.Message);
      v598 = *(v596 + 8);
      v597 = *(v596 + 16);
      v375 = *(v596 + 24);
      v599 = v830;
      if (swift_getEnumCaseMultiPayload() != 38)
      {
        goto LABEL_245;
      }

      v600 = *v596;
      v601 = v599[2];
      v379 = *(v599 + 24);
      v602 = sub_1B72C2ACC(v600, v598, *v599, v599[1]);

      if ((v602 & 1) == 0)
      {
        goto LABEL_291;
      }

      v381 = sub_1B722060C(v597, v601);
      goto LABEL_200;
    case 0x27u:
      v212 = v798;
      sub_1B71A5FBC(v208, v798, type metadata accessor for FinanceStore.Message);
      v213 = v212[1];
      v214 = v830;
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        goto LABEL_169;
      }

      goto LABEL_247;
    case 0x28u:
      v315 = v208;
      v372 = v800;
      sub_1B71A5FBC(v208, v800, type metadata accessor for FinanceStore.Message);
      v374 = *(v372 + 8);
      v373 = *(v372 + 16);
      v375 = *(v372 + 24);
      v376 = v830;
      if (swift_getEnumCaseMultiPayload() != 40)
      {
LABEL_245:

        v208 = v315;
        goto LABEL_264;
      }

      v377 = *v372;
      v378 = v376[2];
      v379 = *(v376 + 24);
      v380 = sub_1B72C2ACC(v377, v374, *v376, v376[1]);

      if ((v380 & 1) == 0)
      {
        goto LABEL_291;
      }

      v381 = sub_1B72F48EC(v373, v378);
LABEL_200:
      v603 = v381;

      if ((v603 & 1) == 0)
      {
        goto LABEL_292;
      }

LABEL_201:
      v604 = v375 ^ v379;
      v605 = v315;
LABEL_298:
      sub_1B71A7A34(v605, type metadata accessor for FinanceStore.Message);
      v238 = v604 ^ 1;
      return v238 & 1;
    case 0x29u:
      v479 = v802;
      sub_1B71A5FBC(v208, v802, type metadata accessor for FinanceStore.Message);
      v480 = v479[1];
      v481 = v479[3];
      v482 = v830;
      if (swift_getEnumCaseMultiPayload() != 41)
      {
        goto LABEL_252;
      }

      v483 = v479[2];
      v484 = *v479;
      v485 = *v482;
      v486 = v482[1];
      v487 = v482[2];
      v488 = v482[3];
      *&v840 = v484;
      *(&v840 + 1) = v480;
      *&v841 = v483;
      *(&v841 + 1) = v481;
      v835.i64[0] = v485;
      v835.i64[1] = v486;
      v836.i64[0] = v487;
      v836.i64[1] = v488;
      v489 = _s10FinanceKit31FullyQualifiedAccountIdentifierV2eeoiySbAC_ACtFZ_0(&v840, &v835);
LABEL_144:
      v238 = v489;

      goto LABEL_334;
    case 0x2Au:
      v215 = v803;
      sub_1B71A5FBC(v208, v803, type metadata accessor for FinanceStore.Message);
      v216 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB999C38, &qword_1B784CEA8) + 48);
      v572 = v830;
      if (swift_getEnumCaseMultiPayload() != 42)
      {
        goto LABEL_182;
      }

      LODWORD(v829) = *v215;
      v218 = *v572;
      v219 = v827;
      v220 = *(v827 + 32);
      v573 = &v215[v216];
      v222 = v744;
      v223 = v826;
      v220(v744, v573, v826);
      v224 = v572 + v216;
      v225 = v743;
      goto LABEL_180;
    case 0x2Bu:
      v215 = v805;
      sub_1B71A5FBC(v208, v805, type metadata accessor for FinanceStore.Message);
      v216 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9950B8, &qword_1B784CEA0) + 48);
      v217 = v830;
      if (swift_getEnumCaseMultiPayload() != 43)
      {
        goto LABEL_182;
      }

      LODWORD(v829) = *v215;
      v218 = *v217;
      v219 = v827;
      v220 = *(v827 + 32);
      v221 = &v215[v216];
      v222 = v747;
      v223 = v826;
      v220(v747, v221, v826);
      v224 = v217 + v216;
      v225 = v746;
      goto LABEL_180;
    case 0x2Cu:
      v215 = v807;
      sub_1B71A5FBC(v208, v807, type metadata accessor for FinanceStore.Message);
      v216 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9950B0, &qword_1B782D1D0) + 48);
      v313 = v830;
      if (swift_getEnumCaseMultiPayload() != 44)
      {
LABEL_182:
        (*(v827 + 8))(&v215[v216], v826);
        goto LABEL_264;
      }

      LODWORD(v829) = *v215;
      v218 = *v313;
      v219 = v827;
      v220 = *(v827 + 32);
      v314 = &v215[v216];
      v222 = v751;
      v223 = v826;
      v220(v751, v314, v826);
      v224 = v313 + v216;
      v225 = v750;
LABEL_180:
      v220(v225, v224, v223);
      if (v829 != v218)
      {
        v574 = *(v219 + 8);
        v574(v225, v223);
        v574(v222, v223);
        goto LABEL_314;
      }

      v238 = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
      v628 = *(v219 + 8);
      v628(v225, v223);
      v628(v222, v223);
      goto LABEL_334;
    case 0x2Du:
      v244 = v810;
      sub_1B71A5FBC(v208, v810, type metadata accessor for FinanceStore.Message);
      v245 = v830;
      if (swift_getEnumCaseMultiPayload() != 45)
      {
        goto LABEL_216;
      }

      v246 = v827;
      v247 = *(v827 + 32);
      v248 = v745;
      goto LABEL_215;
    case 0x2Eu:
      v616 = v804;
      sub_1B71A5FBC(v208, v804, type metadata accessor for FinanceStore.Message);
      v617 = *v616;
      v618 = *(v616 + 8);
      v619 = v830;
      if (swift_getEnumCaseMultiPayload() != 46)
      {
        goto LABEL_247;
      }

      v620 = *(v619 + 8);
      v621 = sub_1B7321948(v617, *v619);

      if ((v621 & 1) == 0)
      {
        goto LABEL_314;
      }

      v211 = v618 == v620;
      goto LABEL_220;
    case 0x2Fu:
      v240 = v806;
      sub_1B71A5FBC(v208, v806, type metadata accessor for FinanceStore.Message);
      v241 = *v240;
      v242 = v830;
      if (swift_getEnumCaseMultiPayload() != 47)
      {
        goto LABEL_247;
      }

      v243 = sub_1B7321948(v241, *v242);
      goto LABEL_149;
    case 0x30u:
      v328 = v808;
      sub_1B71A5FBC(v208, v808, type metadata accessor for FinanceStore.Message);
      v329 = *v328;
      v330 = *(v328 + 8);
      v331 = *(v328 + 16);
      v332 = *(v328 + 24);
      v333 = v830;
      if (swift_getEnumCaseMultiPayload() != 48)
      {
        goto LABEL_252;
      }

      v334 = v208;
      v335 = *v333;
      v336 = *(v333 + 8);
      v337 = v333[2];
      v338 = v333[3];
      v829 = v337;
      v339 = sub_1B7321948(v329, v335);

      if ((v339 & 1) != 0 && v330 == v336)
      {
        v238 = sub_1B72C2ACC(v331, v332, v829, v338);

        v340 = v334;
        goto LABEL_335;
      }

      sub_1B71A7A34(v334, type metadata accessor for FinanceStore.Message);
      goto LABEL_265;
    case 0x31u:
      v351 = v809;
      sub_1B71A5FBC(v208, v809, type metadata accessor for FinanceStore.Message);
      v353 = *v351;
      v352 = v351[1];
      v354 = v351[2];
      v355 = v830;
      if (swift_getEnumCaseMultiPayload() != 49)
      {
LABEL_252:

        goto LABEL_247;
      }

      v315 = v208;
      v357 = *v355;
      v356 = v355[1];
      v358 = v355[2];
      v359 = sub_1B7321948(v353, v357);

      if (v359)
      {
        v238 = sub_1B72C2ACC(v352, v354, v356, v358);

        v340 = v315;
        goto LABEL_335;
      }

LABEL_291:

LABEL_292:
      sub_1B71A7A34(v315, type metadata accessor for FinanceStore.Message);
      goto LABEL_265;
    case 0x32u:
      v212 = v811;
      sub_1B71A5FBC(v208, v811, type metadata accessor for FinanceStore.Message);
      v213 = v212[1];
      v214 = v830;
      if (swift_getEnumCaseMultiPayload() != 50)
      {
        goto LABEL_247;
      }

LABEL_169:
      v238 = sub_1B72C2ACC(*v212, v213, *v214, v214[1]);

      goto LABEL_334;
    case 0x33u:
      v230 = v813;
      sub_1B71A5FBC(v208, v813, type metadata accessor for FinanceStore.Message);
      v622 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FF30, &qword_1B780B808) + 48);
      v623 = *(v230 + v622);
      v624 = v830;
      if (swift_getEnumCaseMultiPayload() != 51)
      {

        v629 = type metadata accessor for FinHealthTransactionInsight.EntityGroup;
        goto LABEL_262;
      }

      v625 = *(v624 + v622);
      v626 = v624;
      v236 = v757;
      sub_1B71A6024(v626, v757, type metadata accessor for FinHealthTransactionInsight.EntityGroup);
      v627 = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
      sub_1B71A7A34(v230, type metadata accessor for FinHealthTransactionInsight.EntityGroup);
      if (v627)
      {
        v238 = sub_1B72F48EC(v623, v625);

        v239 = type metadata accessor for FinHealthTransactionInsight.EntityGroup;
        goto LABEL_230;
      }

      v633 = type metadata accessor for FinHealthTransactionInsight.EntityGroup;
      goto LABEL_312;
    case 0x34u:
      v244 = v812;
      sub_1B71A5FBC(v208, v812, type metadata accessor for FinanceStore.Message);
      v245 = v830;
      if (swift_getEnumCaseMultiPayload() != 52)
      {
        goto LABEL_216;
      }

      v246 = v827;
      v247 = *(v827 + 32);
      v248 = v748;
      goto LABEL_215;
    case 0x35u:
      v230 = v815;
      sub_1B71A5FBC(v208, v815, type metadata accessor for FinanceStore.Message);
      v231 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FF28, &unk_1B784CE90) + 48);
      v232 = *(v230 + v231);
      v233 = v830;
      if (swift_getEnumCaseMultiPayload() != 53)
      {

        v629 = type metadata accessor for FinHealthTransactionInsight.Income;
        goto LABEL_262;
      }

      v234 = *(v233 + v231);
      v235 = v233;
      v236 = v758;
      sub_1B71A6024(v235, v758, type metadata accessor for FinHealthTransactionInsight.Income);
      v237 = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
      sub_1B71A7A34(v230, type metadata accessor for FinHealthTransactionInsight.Income);
      if (v237)
      {
        v238 = sub_1B72F48EC(v232, v234);

        v239 = type metadata accessor for FinHealthTransactionInsight.Income;
        goto LABEL_230;
      }

      v633 = type metadata accessor for FinHealthTransactionInsight.Income;
      goto LABEL_312;
    case 0x36u:
      v244 = v814;
      sub_1B71A5FBC(v208, v814, type metadata accessor for FinanceStore.Message);
      v245 = v830;
      if (swift_getEnumCaseMultiPayload() != 54)
      {
        goto LABEL_216;
      }

      v246 = v827;
      v247 = *(v827 + 32);
      v248 = v749;
      goto LABEL_215;
    case 0x37u:
      v230 = v817;
      sub_1B71A5FBC(v208, v817, type metadata accessor for FinanceStore.Message);
      v608 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9950C0, &unk_1B784CE80) + 48);
      v609 = *(v230 + v608);
      v610 = v830;
      if (swift_getEnumCaseMultiPayload() != 55)
      {

        v629 = type metadata accessor for PredictedTransaction;
LABEL_262:
        v631 = v629;
        v632 = v230;
LABEL_263:
        sub_1B71A7A34(v632, v631);
        goto LABEL_264;
      }

      v611 = *(v610 + v608);
      v612 = v610;
      v236 = v759;
      sub_1B71A6024(v612, v759, type metadata accessor for PredictedTransaction);
      v613 = _s10FinanceKit20PredictedTransactionV2eeoiySbAC_ACtFZ_0(v230, v236);
      sub_1B71A7A34(v230, type metadata accessor for PredictedTransaction);
      if (v613)
      {
        v238 = sub_1B72F48EC(v609, v611);

        v239 = type metadata accessor for PredictedTransaction;
LABEL_230:
        sub_1B71A7A34(v236, v239);
        goto LABEL_334;
      }

      v633 = type metadata accessor for PredictedTransaction;
LABEL_312:
      sub_1B71A7A34(v236, v633);

LABEL_313:

      goto LABEL_314;
    case 0x38u:
      v244 = v816;
      sub_1B71A5FBC(v208, v816, type metadata accessor for FinanceStore.Message);
      v245 = v830;
      if (swift_getEnumCaseMultiPayload() != 56)
      {
LABEL_216:
        (*(v827 + 8))(v244, v826);
        goto LABEL_264;
      }

      v246 = v827;
      v247 = *(v827 + 32);
      v248 = v752;
LABEL_215:
      v614 = v826;
      v247(v248, v245, v826);
      v238 = _s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0();
      v615 = *(v246 + 8);
      v615(v248, v614);
      v615(v244, v614);
LABEL_334:
      v340 = v208;
      goto LABEL_335;
    case 0x39u:
      if (swift_getEnumCaseMultiPayload() == 57)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x3Au:
      if (swift_getEnumCaseMultiPayload() == 58)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x3Bu:
      if (swift_getEnumCaseMultiPayload() == 59)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x3Cu:
      if (swift_getEnumCaseMultiPayload() == 60)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x3Du:
      if (swift_getEnumCaseMultiPayload() == 61)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x3Eu:
      if (swift_getEnumCaseMultiPayload() == 62)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x3Fu:
      if (swift_getEnumCaseMultiPayload() == 63)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x40u:
      if (swift_getEnumCaseMultiPayload() == 64)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x41u:
      if (swift_getEnumCaseMultiPayload() == 65)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x42u:
      if (swift_getEnumCaseMultiPayload() == 66)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x43u:
      if (swift_getEnumCaseMultiPayload() == 67)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x44u:
      if (swift_getEnumCaseMultiPayload() == 68)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x45u:
      if (swift_getEnumCaseMultiPayload() == 69)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x46u:
      if (swift_getEnumCaseMultiPayload() == 70)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x47u:
      if (swift_getEnumCaseMultiPayload() == 71)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x48u:
      if (swift_getEnumCaseMultiPayload() == 72)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x49u:
      if (swift_getEnumCaseMultiPayload() == 73)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x4Au:
      if (swift_getEnumCaseMultiPayload() == 74)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x4Bu:
      if (swift_getEnumCaseMultiPayload() == 75)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    case 0x4Cu:
      if (swift_getEnumCaseMultiPayload() == 76)
      {
        goto LABEL_316;
      }

      goto LABEL_264;
    default:
      sub_1B71A5FBC(v208, v204, type metadata accessor for FinanceStore.Message);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_264;
      }

      v211 = *v204 == *v830;
LABEL_220:
      v238 = v211;
      goto LABEL_334;
  }
}

unint64_t sub_1B762D1FC()
{
  result = qword_1EB999BA8;
  if (!qword_1EB999BA8)
  {
    result = swift_getWitnessTable(byte_1B7853028, &type metadata for FinanceStore.Message.DeleteAllFinHealthPredictedTransactionsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999BA8);
  }

  return result;
}

unint64_t sub_1B762D250()
{
  result = qword_1EB999BB0;
  if (!qword_1EB999BB0)
  {
    result = swift_getWitnessTable(byte_1B7852FD8, &type metadata for FinanceStore.Message.DeletePredictedTransactionCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999BB0);
  }

  return result;
}

unint64_t sub_1B762D2A4()
{
  result = qword_1EB999BB8;
  if (!qword_1EB999BB8)
  {
    result = swift_getWitnessTable(a1rd7, &type metadata for FinanceStore.Message.InsertOrUpdatePredictedTransactionCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999BB8);
  }

  return result;
}

unint64_t sub_1B762D2F8()
{
  result = qword_1EDAF9F38;
  if (!qword_1EDAF9F38)
  {
    result = swift_getWitnessTable(byte_1B7852F38, &type metadata for FinanceStore.Message.DeleteAllFinHealthIncomeInsightsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDAF9F38);
  }

  return result;
}

unint64_t sub_1B762D34C()
{
  result = qword_1EB999BC8;
  if (!qword_1EB999BC8)
  {
    result = swift_getWitnessTable(byte_1B7852EE8, &type metadata for FinanceStore.Message.DeleteFinHealthIncomeInsightCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999BC8);
  }

  return result;
}

unint64_t sub_1B762D3A0()
{
  result = qword_1EB999BD0;
  if (!qword_1EB999BD0)
  {
    result = swift_getWitnessTable(aSd7hr, &type metadata for FinanceStore.Message.InsertOrUpdateFinHealthIncomeInsightCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999BD0);
  }

  return result;
}

unint64_t sub_1B762D3F4()
{
  result = qword_1EB999BE0;
  if (!qword_1EB999BE0)
  {
    result = swift_getWitnessTable(aQsd7tr, &type metadata for FinanceStore.Message.DeleteAllFinHealthEntityGroupsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999BE0);
  }

  return result;
}

unint64_t sub_1B762D448()
{
  result = qword_1EB999BE8;
  if (!qword_1EB999BE8)
  {
    result = swift_getWitnessTable(byte_1B7852DF8, &type metadata for FinanceStore.Message.DeleteFinHealthEntityGroupCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999BE8);
  }

  return result;
}

unint64_t sub_1B762D49C()
{
  result = qword_1EB999BF0;
  if (!qword_1EB999BF0)
  {
    result = swift_getWitnessTable(byte_1B7852DA8, &type metadata for FinanceStore.Message.InsertOrUpdateFinHealthEntityGroupCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999BF0);
  }

  return result;
}

unint64_t sub_1B762D4F0()
{
  result = qword_1EB999BF8;
  if (!qword_1EB999BF8)
  {
    result = swift_getWitnessTable(aAtd7, &type metadata for FinanceStore.Message.DisableAllBackgroundDeliveryPrivateCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999BF8);
  }

  return result;
}

unint64_t sub_1B762D544()
{
  result = qword_1EB999C00;
  if (!qword_1EB999C00)
  {
    result = swift_getWitnessTable(byte_1B7852D08, &type metadata for FinanceStore.Message.DisableBackgroundDeliveryPrivateCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C00);
  }

  return result;
}

unint64_t sub_1B762D598()
{
  result = qword_1EDAF9F40;
  if (!qword_1EDAF9F40)
  {
    result = swift_getWitnessTable(byte_1B7852CB8, &type metadata for FinanceStore.Message.EnableBackgroundDeliveryPrivateCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDAF9F40);
  }

  return result;
}

unint64_t sub_1B762D5EC()
{
  result = qword_1EB999C08;
  if (!qword_1EB999C08)
  {
    result = swift_getWitnessTable(aQud7S, &type metadata for FinanceStore.Message.DisableAllBackgroundDeliveryCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C08);
  }

  return result;
}

unint64_t sub_1B762D640()
{
  result = qword_1EB999C10;
  if (!qword_1EB999C10)
  {
    result = swift_getWitnessTable(byte_1B7852C18, &type metadata for FinanceStore.Message.DisableBackgroundDeliveryCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C10);
  }

  return result;
}

unint64_t sub_1B762D694()
{
  result = qword_1EB999C18;
  if (!qword_1EB999C18)
  {
    result = swift_getWitnessTable(byte_1B7852BC8, &type metadata for FinanceStore.Message.EnableBackgroundDeliveryCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C18);
  }

  return result;
}

unint64_t sub_1B762D6E8()
{
  result = qword_1EB999C20;
  if (!qword_1EB999C20)
  {
    result = swift_getWitnessTable("Avd7", &type metadata for FinanceStore.Message.GenerateTransactionIconCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C20);
  }

  return result;
}

unint64_t sub_1B762D73C()
{
  result = qword_1EB999C28;
  if (!qword_1EB999C28)
  {
    result = swift_getWitnessTable(byte_1B7852B28, &type metadata for FinanceStore.Message.SetUserSuppressedPredictedTransactionCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C28);
  }

  return result;
}

unint64_t sub_1B762D790()
{
  result = qword_1EB999C30;
  if (!qword_1EB999C30)
  {
    result = swift_getWitnessTable(byte_1B7852AD8, &type metadata for FinanceStore.Message.SetUserSuppressedNotificationsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C30);
  }

  return result;
}

unint64_t sub_1B762D7E4()
{
  result = qword_1EB999C40;
  if (!qword_1EB999C40)
  {
    result = swift_getWitnessTable(a1wd7, &type metadata for FinanceStore.Message.SetTransactionExcludeFromSpendingSummaryCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C40);
  }

  return result;
}

unint64_t sub_1B762D838()
{
  result = qword_1EB999C48;
  if (!qword_1EB999C48)
  {
    result = swift_getWitnessTable(byte_1B7852A38, &type metadata for FinanceStore.Message.MigratedAccountIDCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C48);
  }

  return result;
}

unint64_t sub_1B762D88C()
{
  result = qword_1EB999C50;
  if (!qword_1EB999C50)
  {
    result = swift_getWitnessTable(byte_1B78529E8, &type metadata for FinanceStore.Message.RemoveApplicationPermissionInBackupCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C50);
  }

  return result;
}

unint64_t sub_1B762D8E0()
{
  result = qword_1EB999C58;
  if (!qword_1EB999C58)
  {
    result = swift_getWitnessTable(aXd7U, &type metadata for FinanceStore.Message.DeleteApplicationPermissionInBackupCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C58);
  }

  return result;
}

unint64_t sub_1B762D934()
{
  result = qword_1EB999C60;
  if (!qword_1EB999C60)
  {
    result = swift_getWitnessTable(aQxd74u, &type metadata for FinanceStore.Message.UpdateApplicationPermissionInBackupCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C60);
  }

  return result;
}

unint64_t sub_1B762D988()
{
  result = qword_1EB999C68;
  if (!qword_1EB999C68)
  {
    result = swift_getWitnessTable(byte_1B78528F8, &type metadata for FinanceStore.Message.SetTransactionCategoryCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C68);
  }

  return result;
}

unint64_t sub_1B762D9DC()
{
  result = qword_1EB999C70;
  if (!qword_1EB999C70)
  {
    result = swift_getWitnessTable(byte_1B78528A8, &type metadata for FinanceStore.Message.InvokeFinancialInsightExtensionsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C70);
  }

  return result;
}

unint64_t sub_1B762DA30()
{
  result = qword_1EB999C78;
  if (!qword_1EB999C78)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993118, &unk_1B784CEB0);
    v4[0] = sub_1B71A6B1C(&unk_1EB99E230, type metadata accessor for InternalTransaction, protocol conformance descriptor for InternalTransaction);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB999C78);
  }

  return result;
}

unint64_t sub_1B762DAE4()
{
  result = qword_1EB999C80;
  if (!qword_1EB999C80)
  {
    result = swift_getWitnessTable(aAyd7, &type metadata for FinanceStore.Message.FetchHistoricalChangesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C80);
  }

  return result;
}

unint64_t sub_1B762DB38()
{
  result = qword_1EDAF9118;
  if (!qword_1EDAF9118)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FinanceStore.HistoryToken, &type metadata for FinanceStore.HistoryToken, v0, v1);
    atomic_store(result, &qword_1EDAF9118);
  }

  return result;
}

unint64_t sub_1B762DB8C()
{
  result = qword_1EDAF7070[0];
  if (!qword_1EDAF7070[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuxiliaryEntityPredicateProvider, &type metadata for AuxiliaryEntityPredicateProvider, v0, v1);
    atomic_store(result, qword_1EDAF7070);
  }

  return result;
}

unint64_t sub_1B762DBE0()
{
  result = qword_1EDAF9F58;
  if (!qword_1EDAF9F58)
  {
    result = swift_getWitnessTable(byte_1B7852808, &type metadata for FinanceStore.Message.FetchHistoricalTransactionsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDAF9F58);
  }

  return result;
}

unint64_t sub_1B762DC34()
{
  result = qword_1EB999C88;
  if (!qword_1EB999C88)
  {
    result = swift_getWitnessTable(byte_1B78527B8, &type metadata for FinanceStore.Message.RequestAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C88);
  }

  return result;
}

unint64_t sub_1B762DC88()
{
  result = qword_1EB999C90;
  if (!qword_1EB999C90)
  {
    result = swift_getWitnessTable(aQzd7V, &type metadata for FinanceStore.Message.AuthorizationStatusCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C90);
  }

  return result;
}

unint64_t sub_1B762DCDC()
{
  result = qword_1EB999C98;
  if (!qword_1EB999C98)
  {
    result = swift_getWitnessTable(byte_1B7852718, &type metadata for FinanceStore.Message.DeleteBankCredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999C98);
  }

  return result;
}

unint64_t sub_1B762DD30()
{
  result = qword_1EB999CA0;
  if (!qword_1EB999CA0)
  {
    result = swift_getWitnessTable(byte_1B78526C8, &type metadata for FinanceStore.Message.InsertOrUpdateBankCredentialCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999CA0);
  }

  return result;
}

unint64_t sub_1B762DD84()
{
  result = qword_1EB999CB0;
  if (!qword_1EB999CB0)
  {
    result = swift_getWitnessTable(aAD7, &type metadata for FinanceStore.Message.BankCredentialsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999CB0);
  }

  return result;
}

unint64_t sub_1B762DDD8()
{
  result = qword_1EB999CC0;
  if (!qword_1EB999CC0)
  {
    result = swift_getWitnessTable(byte_1B7852628, &type metadata for FinanceStore.Message.ExtractedOrderConfigurationEmailItemCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999CC0);
  }

  return result;
}

unint64_t sub_1B762DE2C()
{
  result = qword_1EB999CC8;
  if (!qword_1EB999CC8)
  {
    result = swift_getWitnessTable(byte_1B78525D8, &type metadata for FinanceStore.Message.ResetAutomaticIngestionConsentCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999CC8);
  }

  return result;
}

unint64_t sub_1B762DE80()
{
  result = qword_1EDAF9F48;
  if (!qword_1EDAF9F48)
  {
    result = swift_getWitnessTable(a1D7dw, &type metadata for FinanceStore.Message.ExtractedOrderFoundInBannersCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDAF9F48);
  }

  return result;
}

unint64_t sub_1B762DED4()
{
  result = qword_1EB999CD0;
  if (!qword_1EB999CD0)
  {
    result = swift_getWitnessTable(byte_1B7852538, &type metadata for FinanceStore.Message.PruneOrphanedMailItemsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999CD0);
  }

  return result;
}

unint64_t sub_1B762DF28()
{
  result = qword_1EB999CD8;
  if (!qword_1EB999CD8)
  {
    result = swift_getWitnessTable(byte_1B78524E8, &type metadata for FinanceStore.Message.PruneFoundInInsightsforTransactionsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999CD8);
  }

  return result;
}

unint64_t sub_1B762DF7C()
{
  result = qword_1EB999CE0;
  if (!qword_1EB999CE0)
  {
    result = swift_getWitnessTable(aD7, &type metadata for FinanceStore.Message.PruneFoundInInsightsforTransactionCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999CE0);
  }

  return result;
}

unint64_t sub_1B762DFD0()
{
  result = qword_1EB999CE8;
  if (!qword_1EB999CE8)
  {
    result = swift_getWitnessTable(aQD7, &type metadata for FinanceStore.Message.CanShowExtractedOrderWelcomeScreenCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999CE8);
  }

  return result;
}

unint64_t sub_1B762E024()
{
  result = qword_1EDAF9F60;
  if (!qword_1EDAF9F60)
  {
    result = swift_getWitnessTable(byte_1B78523F8, &type metadata for FinanceStore.Message.ExtractedOrdersSupportedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDAF9F60);
  }

  return result;
}

unint64_t sub_1B762E078()
{
  result = qword_1EDAF9F28;
  if (!qword_1EDAF9F28)
  {
    result = swift_getWitnessTable(byte_1B78523A8, &type metadata for FinanceStore.Message.ExtractedOrderConfigurationForDomainCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDAF9F28);
  }

  return result;
}

unint64_t sub_1B762E0CC()
{
  result = qword_1EDAF9F30;
  if (!qword_1EDAF9F30)
  {
    result = swift_getWitnessTable(aAD7xx, &type metadata for FinanceStore.Message.ExtractedOrderConfigurationForEmailCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDAF9F30);
  }

  return result;
}

unint64_t sub_1B762E120()
{
  result = qword_1EB999CF0;
  if (!qword_1EB999CF0)
  {
    result = swift_getWitnessTable(byte_1B7852308, &type metadata for FinanceStore.Message.SetAutomaticIngestionConsentPresentedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999CF0);
  }

  return result;
}

unint64_t sub_1B762E174()
{
  result = qword_1EB999CF8;
  if (!qword_1EB999CF8)
  {
    result = swift_getWitnessTable(byte_1B78522B8, &type metadata for FinanceStore.Message.AutomaticIngestionConsentPresentedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999CF8);
  }

  return result;
}

unint64_t sub_1B762E1C8()
{
  result = qword_1EB999D00;
  if (!qword_1EB999D00)
  {
    result = swift_getWitnessTable(aQ_35, &type metadata for FinanceStore.Message.SetExtractedOrderNotificationsEnabledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D00);
  }

  return result;
}

unint64_t sub_1B762E21C()
{
  result = qword_1EB999D08;
  if (!qword_1EB999D08)
  {
    result = swift_getWitnessTable(byte_1B7852218, &type metadata for FinanceStore.Message.SetIsExtractedOrderMarkedAsCompleteCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D08);
  }

  return result;
}

unint64_t sub_1B762E270()
{
  result = qword_1EB999D10;
  if (!qword_1EB999D10)
  {
    result = swift_getWitnessTable(byte_1B78521C8, &type metadata for FinanceStore.Message.DeleteExtractedOrderCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D10);
  }

  return result;
}

unint64_t sub_1B762E2C4()
{
  result = qword_1EB999D18;
  if (!qword_1EB999D18)
  {
    result = swift_getWitnessTable(aA_32, &type metadata for FinanceStore.Message.GenerateFoundInMailItemIconCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D18);
  }

  return result;
}

unint64_t sub_1B762E318()
{
  result = qword_1EB999D20;
  if (!qword_1EB999D20)
  {
    result = swift_getWitnessTable(byte_1B7852128, &type metadata for FinanceStore.Message.InsertOrUpdateFoundInMailItemsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D20);
  }

  return result;
}

unint64_t sub_1B762E36C()
{
  result = qword_1EB99D170;
  if (!qword_1EB99D170)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB999D28, &qword_1B7865F50);
    v4[0] = sub_1B71A6B1C(&qword_1EB999D30, type metadata accessor for FoundInMailItem, protocol conformance descriptor for FoundInMailItem);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB99D170);
  }

  return result;
}

unint64_t sub_1B762E420()
{
  result = qword_1EB999D38;
  if (!qword_1EB999D38)
  {
    result = swift_getWitnessTable(byte_1B78520D8, &type metadata for FinanceStore.Message.IsSenderAllowListedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D38);
  }

  return result;
}

unint64_t sub_1B762E474()
{
  result = qword_1EB999D40;
  if (!qword_1EB999D40)
  {
    result = swift_getWitnessTable(a1_20, &type metadata for FinanceStore.Message.AllSendersPresentInTheMerchantAllowListCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D40);
  }

  return result;
}

unint64_t sub_1B762E4C8()
{
  result = qword_1EB999D48;
  if (!qword_1EB999D48)
  {
    result = swift_getWitnessTable(byte_1B7852038, &type metadata for FinanceStore.Message.SetIsAutomaticOrderIngestionEnabledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D48);
  }

  return result;
}

unint64_t sub_1B762E51C()
{
  result = qword_1EB999D50;
  if (!qword_1EB999D50)
  {
    result = swift_getWitnessTable(aSd7Z, &type metadata for FinanceStore.Message.IsAutomaticOrderIngestionEnabledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D50);
  }

  return result;
}

unint64_t sub_1B762E570()
{
  result = qword_1EB999D58;
  if (!qword_1EB999D58)
  {
    result = swift_getWitnessTable(asc_1B7851F98, &type metadata for FinanceStore.Message.TrackExtractedOrderCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D58);
  }

  return result;
}

unint64_t sub_1B762E5C4()
{
  result = qword_1EB999D60;
  if (!qword_1EB999D60)
  {
    result = swift_getWitnessTable(aQ_36, &type metadata for FinanceStore.Message.DeeplinkForExtractedOrderBannerCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D60);
  }

  return result;
}

unint64_t sub_1B762E618()
{
  result = qword_1EB999D68;
  if (!qword_1EB999D68)
  {
    result = swift_getWitnessTable(byte_1B7851EF8, &type metadata for FinanceStore.Message.DeleteExtractedOrderUserEventCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D68);
  }

  return result;
}

unint64_t sub_1B762E66C()
{
  result = qword_1EB999D70;
  if (!qword_1EB999D70)
  {
    result = swift_getWitnessTable(byte_1B7851EA8, &type metadata for FinanceStore.Message.QueryExtractedOrderUserEventsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D70);
  }

  return result;
}

double sub_1B762E6C0(uint64_t a1, unint64_t a2)
{
  if (a2 != 19)
  {
    return sub_1B73D0018(a1, a2);
  }

  return result;
}

unint64_t sub_1B762E6D0()
{
  result = qword_1EB999D78;
  if (!qword_1EB999D78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManagedCloudOrderEvent.EventType, &type metadata for ManagedCloudOrderEvent.EventType, v0, v1);
    atomic_store(result, &qword_1EB999D78);
  }

  return result;
}

unint64_t sub_1B762E724()
{
  result = qword_1EB999D80;
  if (!qword_1EB999D80)
  {
    result = swift_getWitnessTable(aA_33, &type metadata for FinanceStore.Message.AddExtractedOrderUserEventCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D80);
  }

  return result;
}

unint64_t sub_1B762E778()
{
  result = qword_1EB999D88;
  if (!qword_1EB999D88)
  {
    result = swift_getWitnessTable(byte_1B7851E08, &type metadata for FinanceStore.Message.InsertMissingOrderUpdateDateCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D88);
  }

  return result;
}

unint64_t sub_1B762E7CC()
{
  result = qword_1EB999D90;
  if (!qword_1EB999D90)
  {
    result = swift_getWitnessTable(byte_1B7851DB8, &type metadata for FinanceStore.Message.InsertMissingDashboardItemsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D90);
  }

  return result;
}

unint64_t sub_1B762E820()
{
  result = qword_1EB999D98;
  if (!qword_1EB999D98)
  {
    result = swift_getWitnessTable(aQ_37, &type metadata for FinanceStore.Message.OrderCountForSignoutCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999D98);
  }

  return result;
}

unint64_t sub_1B762E874()
{
  result = qword_1EB999DA0;
  if (!qword_1EB999DA0)
  {
    result = swift_getWitnessTable(byte_1B7851D18, &type metadata for FinanceStore.Message.UpdateDashboardItemsShowAsActiveCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999DA0);
  }

  return result;
}

unint64_t sub_1B762E8C8()
{
  result = qword_1EB999DA8;
  if (!qword_1EB999DA8)
  {
    result = swift_getWitnessTable(byte_1B7851CC8, &type metadata for FinanceStore.Message.SetOrderNotificationsEnabledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999DA8);
  }

  return result;
}

unint64_t sub_1B762E91C()
{
  result = qword_1EB999DB0;
  if (!qword_1EB999DB0)
  {
    result = swift_getWitnessTable(aA_34, &type metadata for FinanceStore.Message.SetOrderMarkedAsCompleteCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999DB0);
  }

  return result;
}

unint64_t sub_1B762E970()
{
  result = qword_1EB999DB8;
  if (!qword_1EB999DB8)
  {
    result = swift_getWitnessTable(byte_1B7851C28, &type metadata for FinanceStore.Message.SaveOrderCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999DB8);
  }

  return result;
}

unint64_t sub_1B762E9C4()
{
  result = qword_1EB999DC0;
  if (!qword_1EB999DC0)
  {
    result = swift_getWitnessTable(byte_1B7851BD8, &type metadata for FinanceStore.Message.RefreshOrderCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999DC0);
  }

  return result;
}

unint64_t sub_1B762EA18()
{
  result = qword_1EB999DC8;
  if (!qword_1EB999DC8)
  {
    result = swift_getWitnessTable(byte_1B7851B38, &type metadata for FinanceStore.Message.InsertOrUpdateOrderCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999DC8);
  }

  return result;
}

unint64_t sub_1B762EA6C()
{
  result = qword_1EB999DD0;
  if (!qword_1EB999DD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrderInsertOrUpdateOptions, &type metadata for OrderInsertOrUpdateOptions, v0, v1);
    atomic_store(result, &qword_1EB999DD0);
  }

  return result;
}

unint64_t sub_1B762EAC0()
{
  result = qword_1EB999DD8;
  if (!qword_1EB999DD8)
  {
    result = swift_getWitnessTable(aD7_0, &type metadata for FinanceStore.Message.DeleteOrdersForDashboardItemCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999DD8);
  }

  return result;
}

unint64_t sub_1B762EB14()
{
  result = qword_1EB999DE0;
  if (!qword_1EB999DE0)
  {
    result = swift_getWitnessTable(asc_1B7851A98, &type metadata for FinanceStore.Message.DeleteOrderCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999DE0);
  }

  return result;
}

unint64_t sub_1B762EB68()
{
  result = qword_1EB999DE8;
  if (!qword_1EB999DE8)
  {
    result = swift_getWitnessTable(aQ_38, &type metadata for FinanceStore.Message.ContainsOrderCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999DE8);
  }

  return result;
}

unint64_t sub_1B762EBBC()
{
  result = qword_1EB999DF0;
  if (!qword_1EB999DF0)
  {
    result = swift_getWitnessTable(byte_1B78519F8, &type metadata for FinanceStore.Message.IsDataRestrictedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999DF0);
  }

  return result;
}

unint64_t sub_1B762EC10()
{
  result = qword_1EB999DF8;
  if (!qword_1EB999DF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FinanceStore.DataType, &type metadata for FinanceStore.DataType, v0, v1);
    atomic_store(result, &qword_1EB999DF8);
  }

  return result;
}

unint64_t sub_1B762EC64()
{
  result = qword_1EB999E00;
  if (!qword_1EB999E00)
  {
    result = swift_getWitnessTable(byte_1B78519A8, &type metadata for FinanceStore.Message.IsWalletDeletedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999E00);
  }

  return result;
}

unint64_t sub_1B762ECB8()
{
  result = qword_1EDAF9F68;
  if (!qword_1EDAF9F68)
  {
    result = swift_getWitnessTable(aA_35, &type metadata for FinanceStore.Message.IsWalletDeletedRemoteCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDAF9F68);
  }

  return result;
}

unint64_t sub_1B762ED0C()
{
  result = qword_1EB999E08;
  if (!qword_1EB999E08)
  {
    result = swift_getWitnessTable(byte_1B7851908, &type metadata for FinanceStore.Message.IsWalletVisibleCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999E08);
  }

  return result;
}

unint64_t sub_1B762ED60()
{
  result = qword_1EB999E10;
  if (!qword_1EB999E10)
  {
    result = swift_getWitnessTable(byte_1B78518B8, &type metadata for FinanceStore.Message.IsNetworkConnectivityAvailableCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999E10);
  }

  return result;
}

unint64_t sub_1B762EDB4()
{
  result = qword_1EB999E18;
  if (!qword_1EB999E18)
  {
    result = swift_getWitnessTable(aQ_39, &type metadata for FinanceStore.Message.ReindexSpotlightCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB999E18);
  }

  return result;
}

unint64_t sub_1B762EE08()
{
  result = qword_1EB99A0A0;
  if (!qword_1EB99A0A0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993118, &unk_1B784CEB0);
    v4[0] = sub_1B71A6B1C(&unk_1EB99E270, type metadata accessor for InternalTransaction, protocol conformance descriptor for InternalTransaction);
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB99A0A0);
  }

  return result;
}

unint64_t sub_1B762EEBC()
{
  result = qword_1EDAF9110;
  if (!qword_1EDAF9110)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FinanceStore.HistoryToken, &type metadata for FinanceStore.HistoryToken, v0, v1);
    atomic_store(result, &qword_1EDAF9110);
  }

  return result;
}

unint64_t sub_1B762EF10()
{
  result = qword_1EDAF7068;
  if (!qword_1EDAF7068)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuxiliaryEntityPredicateProvider, &type metadata for AuxiliaryEntityPredicateProvider, v0, v1);
    atomic_store(result, &qword_1EDAF7068);
  }

  return result;
}

unint64_t sub_1B762EF64()
{
  result = qword_1EB99A0B0;
  if (!qword_1EB99A0B0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB999D28, &qword_1B7865F50);
    v4[0] = sub_1B71A6B1C(&unk_1EB99D190, type metadata accessor for FoundInMailItem, protocol conformance descriptor for FoundInMailItem);
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB99A0B0);
  }

  return result;
}

unint64_t sub_1B762F018()
{
  result = qword_1EB99A0B8;
  if (!qword_1EB99A0B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManagedCloudOrderEvent.EventType, &type metadata for ManagedCloudOrderEvent.EventType, v0, v1);
    atomic_store(result, &qword_1EB99A0B8);
  }

  return result;
}

unint64_t sub_1B762F06C()
{
  result = qword_1EB99A0C0;
  if (!qword_1EB99A0C0)
  {
    result = swift_getWitnessTable("qQe7t>\a", &type metadata for OrderInsertOrUpdateOptions, v0, v1);
    atomic_store(result, &qword_1EB99A0C0);
  }

  return result;
}

unint64_t sub_1B762F0C0()
{
  result = qword_1EB99A0C8;
  if (!qword_1EB99A0C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FinanceStore.DataType, &type metadata for FinanceStore.DataType, v0, v1);
    atomic_store(result, &qword_1EB99A0C8);
  }

  return result;
}

uint64_t sub_1B762F164(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for FinanceStore.Reply.Failure(319, result, a1[3], a1[4]);
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B762F1E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 25;
  if (*(v3 + 64) > 0x19uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1B762F2FC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x19)
  {
    v5 = 25;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}