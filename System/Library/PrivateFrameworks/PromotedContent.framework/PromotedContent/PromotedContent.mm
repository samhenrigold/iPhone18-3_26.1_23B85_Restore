void sub_1C1AA3DB8(uint64_t a1)
{
  sub_1C1AA3EA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C1AA3EA0(uint64_t a1)
{
  if (!qword_1EDE6CDD0)
  {
    sub_1C1B94588();
    v1 = sub_1C1B952D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE6CDD0);
    }
  }
}

uint64_t type metadata accessor for BaseContext(uint64_t a1)
{
  result = qword_1EDE6CDB8;
  if (!qword_1EDE6CDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1AA3F44(uint64_t a1)
{
  result = sub_1C1B945F8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id ContentDepiction.__allocating_init(identifier:adjacentPosition:placement:language:locale:searchTerms:keywords:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = objc_allocWithZone(v11);
  v20 = &v19[OBJC_IVAR___APPCContentDepiction_identifier];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v19[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = a3;
  *&v19[OBJC_IVAR___APPCContentDepiction_placement] = a4;
  v21 = &v19[OBJC_IVAR___APPCContentDepiction_language];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v19[OBJC_IVAR___APPCContentDepiction_locale];
  *v22 = a7;
  *(v22 + 1) = a8;
  *&v19[OBJC_IVAR___APPCContentDepiction_searchTerms] = a9;
  *&v19[OBJC_IVAR___APPCContentDepiction_keywords] = a10;
  *&v19[OBJC_IVAR___APPCContentDepiction_categories] = a11;
  v25.receiver = v19;
  v25.super_class = v11;
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_1C1AA415C(uint64_t a1)
{
  result = sub_1C1B945F8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id ContextBuilder.init(maxSize:current:newsContext:requestedAd:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = sub_1C1AA426C(a1, a2, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return v7;
}

id sub_1C1AA426C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  sub_1C1B945E8();
  v13 = OBJC_IVAR___APPCContextBuilder_current;
  *&v6[OBJC_IVAR___APPCContextBuilder_current] = 0;
  v14 = &v6[OBJC_IVAR___APPCContextBuilder_requestedAd];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR___APPCContextBuilder_newsContext;
  *&v6[OBJC_IVAR___APPCContextBuilder_newsContext] = 0;
  v16 = OBJC_IVAR___APPCContextBuilder_resourceLock;
  *&v6[v16] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v17 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR___APPCContextBuilder_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v18 = &v6[OBJC_IVAR___APPCContextBuilder_maxSize];
  *v18 = a5;
  v18[1] = a6;
  swift_beginAccess();
  *&v6[v13] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v6[OBJC_IVAR___APPCContextBuilder_next] = v17;
  swift_beginAccess();
  v19 = *&v6[v15];
  *&v6[v15] = a2;
  v20 = a2;

  swift_beginAccess();
  *v14 = a3;
  *(v14 + 1) = a4;

  v22.receiver = v6;
  v22.super_class = type metadata accessor for ContextBuilder(0);
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t type metadata accessor for ContextBuilder(uint64_t a1)
{
  result = qword_1EDE6C278;
  if (!qword_1EDE6C278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1AA447C(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 8 || a1 == 9 || a1 == 10)
    {
      goto LABEL_13;
    }

LABEL_19:
    result = sub_1C1B958C8();
    __break(1u);
    return result;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {

      goto LABEL_14;
    }

    if (a1 != 1)
    {
      goto LABEL_19;
    }
  }

LABEL_13:
  v3 = sub_1C1B95888();

  if ((v3 & 1) == 0)
  {
    v4 = NewsRequestedAdType.rawValue.getter(a1);
    goto LABEL_16;
  }

LABEL_14:
  v4 = 0;
  v5 = 0;
LABEL_16:
  v6 = (v1 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal);
  *v6 = v4;
  v6[1] = v5;
}

uint64_t sub_1C1AA4698(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

char *sub_1C1AA47BC()
{
  v1 = sub_1C1B945F8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (v0 + OBJC_IVAR___APPCContextBuilder_maxSize);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = (v0 + OBJC_IVAR___APPCContextBuilder_requestedAd);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v11 = OBJC_IVAR___APPCContextBuilder_current;
  swift_beginAccess();
  v12 = *(v0 + v11);
  v13 = OBJC_IVAR___APPCContextBuilder_next;
  swift_beginAccess();
  v14 = *(v0 + v13);
  v15 = *(v0 + OBJC_IVAR___APPCContextBuilder_resourceLock);
  swift_unknownObjectRetain();

  [v15 lock];
  v16 = OBJC_IVAR___APPCContextBuilder_adjacentInternal;
  swift_beginAccess();
  v17 = *(v0 + v16);

  [v15 unlock];
  v18 = OBJC_IVAR___APPCContextBuilder_newsContext;
  swift_beginAccess();
  v19 = *(v0 + v18);
  objc_allocWithZone(type metadata accessor for Context(0));
  v20 = v19;
  v21 = sub_1C1AA4BE8(v9, v10, v12, v14, v17, v19, v6, v7);
  v22 = [v21 hash];
  v23 = type metadata accessor for ContextKey();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC15PromotedContent10ContextKey_key] = v22;
  v38.receiver = v24;
  v38.super_class = v23;
  v25 = objc_msgSendSuper2(&v38, sel_init);
  if (qword_1EDE6BC58 != -1)
  {
    swift_once();
  }

  v26 = [qword_1EDE6CE60 objectForKey_];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1C1B95138();
    sub_1C1AC53E4();
    v29 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C1B98E60;
    v31 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v2 + 16))(v4, v27 + v31, v1);
    v32 = sub_1C1B945A8();
    v33 = v1;
    v35 = v34;
    (*(v2 + 8))(v4, v33);
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1C1AA5E7C();
    *(v30 + 32) = v32;
    *(v30 + 40) = v35;
    sub_1C1B94BA8(v28, &dword_1C1AA2000, v29, "[PC] Vending already created context from builder with id %{public}@", 68, 2, v30);

    return v27;
  }

  else
  {
    [qword_1EDE6CE60 setObject:v21 forKey:v25];
  }

  return v21;
}

char *sub_1C1AA4BE8(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v9 = v8;
  v66 = a6;
  v65 = a5;
  v79 = a3;
  v75 = a2;
  v74 = a1;
  v76 = sub_1C1B945F8();
  v78 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1C1B95168();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C1B95148();
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C1B94C38();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = OBJC_IVAR___APPCContext_inventoryLock;
  *&v8[v18] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v19 = MEMORY[0x1E69E7CC0];
  *&v8[OBJC_IVAR___APPCContext_inventory] = MEMORY[0x1E69E7CC0];
  v20 = OBJC_IVAR___APPCContext_placeholdersLock;
  *&v8[v20] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v8[OBJC_IVAR___APPCContext_placeholders] = v19;
  *&v8[OBJC_IVAR___APPCContext_lastError] = 0;
  *&v8[OBJC_IVAR___APPCContext_requester] = 0;
  v21 = &v8[OBJC_IVAR___APPCContext_denylistEvaluator];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v8[OBJC_IVAR___APPCContext_newsContext] = 0;
  *&v8[OBJC_IVAR___APPCContext_appStoreContext] = 0;
  v69 = OBJC_IVAR___APPCContext_contextQueue;
  v68 = sub_1C1AA576C(0, &qword_1EDE6CA10, 0x1E69E9610);
  v67 = "v16@?0@NSArray8";
  if (qword_1EDE6CA90 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v22 = qword_1EDE6CAA0;
    sub_1C1B94C28();
    aBlock[0] = v19;
    sub_1C1AA5A14(&qword_1EDE6CA18, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    sub_1C1AC1F08(&unk_1EBF09010, &qword_1C1B9FC78);
    v23 = v19;
    sub_1C1AA5A5C(&qword_1EDE6CA38, &unk_1EBF09010, &qword_1C1B9FC78);
    sub_1C1B95318();
    (*(v72 + 104))(v71, *MEMORY[0x1E69E8090], v73);
    *&v9[v69] = sub_1C1B951A8();
    v24 = OBJC_IVAR___APPCContext_prefetchTimestamp;
    v25 = sub_1C1B94588();
    (*(*(v25 - 8) + 56))(&v9[v24], 1, 1, v25);
    v26 = OBJC_IVAR___APPCContext_fetchingLock;
    *&v9[v26] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v9[OBJC_IVAR___APPCContext_fetching] = v19;
    v27 = OBJC_IVAR___APPCContext_waitingLock;
    *&v9[v27] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v9[OBJC_IVAR___APPCContext_waiting] = v19;
    v28 = OBJC_IVAR___APPCContext_prefetchLock;
    *&v9[v28] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v9[OBJC_IVAR___APPCContext_newContentArrivedHandlers] = v19;
    *&v9[OBJC_IVAR___APPCContext_limit] = [objc_opt_self() contextPrefetchLimit];
    *&v9[OBJC_IVAR___APPCBaseContext_adjacentInternal] = v19;
    v29 = &v9[OBJC_IVAR___APPCBaseContext_requestedAd];
    *v29 = 0;
    v29[1] = 0;
    v30 = v79;
    swift_unknownObjectRetain();
    v31 = v77;
    sub_1C1B945E8();
    v32 = v76;
    (*(v78 + 32))(&v9[OBJC_IVAR___APPCBaseContext_identifier], v31, v76);
    v33 = &v9[OBJC_IVAR___APPCBaseContext_maxSize];
    *v33 = a7;
    v33[1] = a8;
    swift_beginAccess();
    v34 = v75;
    *v29 = v74;
    v29[1] = v34;

    *&v9[OBJC_IVAR___APPCBaseContext_current] = v30;
    *&v9[OBJC_IVAR___APPCBaseContext_next] = a4;
    if (a4 >> 62)
    {
      break;
    }

    v35 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
      goto LABEL_17;
    }

LABEL_4:
    aBlock[0] = v23;
    swift_unknownObjectRetain();

    sub_1C1B95518();
    if (v35 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v75 = v9;
    v36 = 0;
    v19 = a4 & 0xC000000000000001;
    while (1)
    {
      v9 = (v36 + 1);
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v19)
      {
        v37 = MEMORY[0x1C6907490](v36, a4);
      }

      else
      {
        if (v36 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v37 = *(a4 + 8 * v36 + 32);
        swift_unknownObjectRetain();
      }

      v81 = v37;
      sub_1C1B35958(&v81, &v82);
      swift_unknownObjectRelease();
      sub_1C1B954F8();
      sub_1C1B95528();
      sub_1C1B95538();
      sub_1C1B95508();
      ++v36;
      if (v9 == v35)
      {

        v38 = aBlock[0];
        v32 = v76;
        v9 = v75;
        v39 = v65;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

  v35 = sub_1C1B953A8();
  if (v35)
  {
    goto LABEL_4;
  }

LABEL_17:
  swift_unknownObjectRetain();
  v38 = MEMORY[0x1E69E7CC0];
  v39 = v65;
LABEL_18:
  aBlock[0] = v38;
  v40 = sub_1C1AA5AB0(v39);

  if (v40)
  {
    sub_1C1AA5BEC(v40);
    v38 = aBlock[0];
  }

  if (v38 >> 62)
  {
    sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
    v41 = sub_1C1B95578();
  }

  else
  {
    sub_1C1B95898();
    v41 = v38;
  }

  *&v9[OBJC_IVAR___APPCBaseContext_adjacent] = v41;
  v42 = type metadata accessor for BaseContext(0);
  v83.receiver = v9;
  v83.super_class = v42;
  v43 = objc_msgSendSuper2(&v83, sel_init);
  v44 = sub_1C1B95118();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v45 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C1B98E60;
  v47 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v48 = v78;
  v49 = &v43[v47];
  v50 = v77;
  (*(v78 + 16))(v77, v49, v32);
  v51 = sub_1C1B945A8();
  v53 = v52;
  (*(v48 + 8))(v50, v32);
  *(v46 + 56) = MEMORY[0x1E69E6158];
  *(v46 + 64) = sub_1C1AA5E7C();
  *(v46 + 32) = v51;
  *(v46 + 40) = v53;
  sub_1C1B94BA8(v44, &dword_1C1AA2000, v45, "[PC] Context (%{public}@) is being initialized", 46, 2, v46);

  swift_unknownObjectRelease();
  v54 = v43;
  v55 = v66;
  if (v66)
  {
    [v66 copy];
    sub_1C1B952F8();
    swift_unknownObjectRelease();
    type metadata accessor for NewsSupplementalContext();
    if (swift_dynamicCast())
    {
      v56 = v81;
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
  }

  v57 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v58 = *&v54[v57];
  *&v54[v57] = v56;

  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = objc_allocWithZone(MEMORY[0x1E698A048]);
  aBlock[4] = sub_1C1B2B814;
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B2A390;
  aBlock[3] = &unk_1F4152058;
  v61 = _Block_copy(aBlock);

  v62 = [v60 initWithDeliveryBlock_];
  _Block_release(v61);

  swift_unknownObjectRelease();

  v63 = *&v54[OBJC_IVAR___APPCContext_requester];
  *&v54[OBJC_IVAR___APPCContext_requester] = v62;

  return v54;
}

uint64_t sub_1C1AA5734()
{
  MEMORY[0x1C6908300](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1AA576C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C1AA57B4()
{
  v7 = sub_1C1B95168();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C1B95148();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C1B94C38();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1C1AA576C(0, &qword_1EDE6CA10, 0x1E69E9610);
  sub_1C1B94C28();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1C1AA5A14(&qword_1EDE6CA18, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1C1AC1F08(&unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1AA5A5C(&qword_1EDE6CA38, &unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1B95318();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1C1B951A8();
  qword_1EDE6CAA0 = result;
  return result;
}

uint64_t sub_1C1AA5A14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1AA5A5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for JourneyMetricsHelperDiagnostics.Event.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for Context(uint64_t a1)
{
  result = qword_1EDE6CD98;
  if (!qword_1EDE6CD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1AA5C64(unint64_t a1, uint64_t (*a2)(void))
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1C1B953A8();
    sub_1C1B95518();
    v4 = sub_1C1B953A8();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C1B95518();
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C6907490](v5, a1);
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_1C1B954F8();
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return v8;
}

uint64_t sub_1C1AA5DDC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C1B953A8();
LABEL_9:
  result = sub_1C1B954A8();
  *v2 = result;
  return result;
}

unint64_t sub_1C1AA5E7C()
{
  result = qword_1EDE6CA50;
  if (!qword_1EDE6CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6CA50);
  }

  return result;
}

uint64_t sub_1C1AA5ED0@<X0>(void *a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for NewsSupplementalContext();
  v6 = [objc_allocWithZone(v5) init];
  v7 = (v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_advertisementType);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  v10 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_advertisementType];
  swift_beginAccess();
  *v10 = v9;
  v10[1] = v8;

  v11 = sub_1C1AA7514();
  sub_1C1AA7EA8(v11);
  v12 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType);
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];
  v15 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType];
  swift_beginAccess();
  *v15 = v14;
  v15[1] = v13;

  v16 = *(v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal + 8);
  if (v16)
  {
    v17 = *(v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal);

    v18 = _s15PromotedContent19NewsRequestedAdTypeO8rawValueACSS_tcfC_0(v17, v16);
  }

  else
  {
    v19 = sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v20 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C1B98E60;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1C1AA5E7C();
    *(v21 + 32) = 0xD000000000000029;
    *(v21 + 40) = 0x80000001C1BA7F90;
    sub_1C1B94BA8(v19, &dword_1C1AA2000, v20, "%{public}@", 10, 2, v21);

    v18 = 0;
  }

  if (NewsRequestedAdType.rawValue.getter(v18) == 1162760014 && v22 == 0xE400000000000000)
  {

LABEL_8:
    v24 = 0;
    v25 = 0;
    goto LABEL_10;
  }

  v23 = sub_1C1B95888();

  if (v23)
  {
    goto LABEL_8;
  }

  v24 = NewsRequestedAdType.rawValue.getter(v18);
LABEL_10:
  v26 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal];
  *v26 = v24;
  v26[1] = v25;

  v27 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleArticleId);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  v30 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleArticleId];
  swift_beginAccess();
  *v30 = v29;
  v30[1] = v28;

  v31 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleArticleId);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  v34 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleArticleId];
  swift_beginAccess();
  *v34 = v33;
  v34[1] = v32;

  v35 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored;
  swift_beginAccess();
  v36 = *(v3 + v35);
  v37 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored;
  swift_beginAccess();
  v38 = *&v6[v37];
  *&v6[v37] = v36;
  v39 = v36;

  v40 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored;
  swift_beginAccess();
  v41 = *(v3 + v40);
  v42 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored;
  swift_beginAccess();
  v43 = *&v6[v42];
  *&v6[v42] = v41;
  v44 = v41;

  v45 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticlePublicationMetadata;
  swift_beginAccess();
  v46 = *(v3 + v45);
  v47 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticlePublicationMetadata;
  swift_beginAccess();
  *&v6[v47] = v46;

  v48 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticlePublicationMetadata;
  swift_beginAccess();
  v49 = *(v3 + v48);
  v50 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticlePublicationMetadata;
  swift_beginAccess();
  *&v6[v50] = v49;

  v51 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleRating);
  swift_beginAccess();
  v53 = *v51;
  v52 = v51[1];
  v54 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleRating];
  swift_beginAccess();
  *v54 = v53;
  v54[1] = v52;

  v55 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleRating);
  swift_beginAccess();
  v57 = *v55;
  v56 = v55[1];
  v58 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleRating];
  swift_beginAccess();
  *v58 = v57;
  v58[1] = v56;

  v59 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannel);
  swift_beginAccess();
  v61 = *v59;
  v60 = v59[1];
  v62 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannel];
  swift_beginAccess();
  *v62 = v61;
  v62[1] = v60;

  v63 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannel);
  swift_beginAccess();
  v65 = *v63;
  v64 = v63[1];
  v66 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannel];
  swift_beginAccess();
  *v66 = v65;
  v66[1] = v64;

  v67 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannelRating);
  swift_beginAccess();
  v69 = *v67;
  v68 = v67[1];
  v70 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannelRating];
  swift_beginAccess();
  *v70 = v69;
  v70[1] = v68;

  v71 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannelRating);
  swift_beginAccess();
  v73 = *v71;
  v72 = v71[1];
  v74 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannelRating];
  swift_beginAccess();
  *v74 = v73;
  v74[1] = v72;

  v75 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId;
  swift_beginAccess();
  v76 = *(v3 + v75);
  v77 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId;
  swift_beginAccess();
  v78 = *&v6[v77];
  *&v6[v77] = v76;
  v79 = v76;

  v80 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId;
  swift_beginAccess();
  v81 = *(v3 + v80);
  v82 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId;
  swift_beginAccess();
  v83 = *&v6[v82];
  *&v6[v82] = v81;
  v84 = v81;

  v85 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceSections;
  swift_beginAccess();
  v86 = *(v3 + v85);
  v87 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceSections;
  swift_beginAccess();
  *&v6[v87] = v86;

  v88 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceSections;
  swift_beginAccess();
  v89 = *(v3 + v88);
  v90 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceSections;
  swift_beginAccess();
  *&v6[v90] = v89;

  v91 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataCategories;
  swift_beginAccess();
  v92 = *(v3 + v91);
  v93 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataCategories;
  swift_beginAccess();
  *&v6[v93] = v92;

  v94 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId);
  swift_beginAccess();
  v96 = *v94;
  v95 = v94[1];
  v97 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId];
  swift_beginAccess();
  *v97 = v96;
  v97[1] = v95;

  v98 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataTagId);
  swift_beginAccess();
  v100 = *v98;
  v99 = v98[1];
  v101 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataTagId];
  swift_beginAccess();
  *v101 = v100;
  v101[1] = v99;

  v102 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID;
  swift_beginAccess();
  v103 = *(v3 + v102);
  v104 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID;
  swift_beginAccess();
  v105 = *&v6[v104];
  *&v6[v104] = v103;
  v106 = v103;

  v107 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataKeywords;
  swift_beginAccess();
  v108 = *(v3 + v107);
  v109 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataKeywords;
  swift_beginAccess();
  *&v6[v109] = v108;

  v110 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages;
  swift_beginAccess();
  v111 = *(v3 + v110);
  v112 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages;
  swift_beginAccess();
  *&v6[v112] = v111;

  v113 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataRating);
  swift_beginAccess();
  v115 = *v113;
  v114 = v113[1];
  v116 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataRating];
  swift_beginAccess();
  *v116 = v115;
  v116[1] = v114;

  v117 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataSectionId);
  swift_beginAccess();
  v119 = *v117;
  v118 = v117[1];
  v120 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataSectionId];
  swift_beginAccess();
  *v120 = v119;
  v120[1] = v118;

  v121 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextCategories;
  swift_beginAccess();
  v122 = *(v3 + v121);
  v123 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextCategories;
  swift_beginAccess();
  *&v6[v123] = v122;

  v124 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveCategories;
  swift_beginAccess();
  v125 = *(v3 + v124);
  v126 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveCategories;
  swift_beginAccess();
  *&v6[v126] = v125;

  v127 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowCategories;
  swift_beginAccess();
  v128 = *(v3 + v127);
  v129 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowCategories;
  swift_beginAccess();
  *&v6[v129] = v128;

  v130 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextId);
  swift_beginAccess();
  v132 = *v130;
  v131 = v130[1];
  v133 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextId];
  swift_beginAccess();
  *v133 = v132;
  v133[1] = v131;

  v134 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveId);
  swift_beginAccess();
  v136 = *v134;
  v135 = v134[1];
  v137 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveId];
  swift_beginAccess();
  *v137 = v136;
  v137[1] = v135;

  v138 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowId);
  swift_beginAccess();
  v140 = *v138;
  v139 = v138[1];
  v141 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowId];
  swift_beginAccess();
  *v141 = v140;
  v141[1] = v139;

  v142 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextKeywords;
  swift_beginAccess();
  v143 = *(v3 + v142);
  v144 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextKeywords;
  swift_beginAccess();
  *&v6[v144] = v143;

  v145 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveKeywords;
  swift_beginAccess();
  v146 = *(v3 + v145);
  v147 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveKeywords;
  swift_beginAccess();
  *&v6[v147] = v146;

  v148 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowKeywords;
  swift_beginAccess();
  v149 = *(v3 + v148);
  v150 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowKeywords;
  swift_beginAccess();
  *&v6[v150] = v149;

  v151 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextLanguages;
  swift_beginAccess();
  v152 = *(v3 + v151);
  v153 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextLanguages;
  swift_beginAccess();
  *&v6[v153] = v152;

  v154 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveLanguages;
  swift_beginAccess();
  v155 = *(v3 + v154);
  v156 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveLanguages;
  swift_beginAccess();
  *&v6[v156] = v155;

  v157 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowLanguages;
  swift_beginAccess();
  v158 = *(v3 + v157);
  v159 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowLanguages;
  swift_beginAccess();
  *&v6[v159] = v158;

  v160 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveChannelId);
  swift_beginAccess();
  v162 = *v160;
  v161 = v160[1];
  v163 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveChannelId];
  swift_beginAccess();
  *v163 = v162;
  v163[1] = v161;

  v164 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveTagId);
  swift_beginAccess();
  v166 = *v164;
  v165 = v164[1];
  v167 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveTagId];
  swift_beginAccess();
  *v167 = v166;
  v167[1] = v165;

  v168 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowChannelId);
  swift_beginAccess();
  v170 = *v168;
  v169 = v168[1];
  v171 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowChannelId];
  swift_beginAccess();
  *v171 = v170;
  v171[1] = v169;

  v172 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowTagId);
  swift_beginAccess();
  v174 = *v172;
  v173 = v172[1];
  v175 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowTagId];
  swift_beginAccess();
  *v175 = v174;
  v175[1] = v173;

  v176 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId;
  swift_beginAccess();
  v177 = *(v3 + v176);
  v178 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId;
  swift_beginAccess();
  v179 = *&v6[v178];
  *&v6[v178] = v177;
  v180 = v177;

  v181 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId;
  swift_beginAccess();
  v182 = *(v3 + v181);
  v183 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId;
  swift_beginAccess();
  v184 = *&v6[v183];
  *&v6[v183] = v182;
  v185 = v182;

  v186 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId;
  swift_beginAccess();
  v187 = *(v3 + v186);
  v188 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId;
  swift_beginAccess();
  v189 = *&v6[v188];
  *&v6[v188] = v187;
  v190 = v187;

  v191 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextType);
  swift_beginAccess();
  v193 = *v191;
  v192 = v191[1];
  v194 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextType];
  swift_beginAccess();
  *v194 = v193;
  v194[1] = v192;

  v195 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveType);
  swift_beginAccess();
  v197 = *v195;
  v196 = v195[1];
  v198 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveType];
  swift_beginAccess();
  *v198 = v197;
  v198[1] = v196;

  v199 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowType);
  swift_beginAccess();
  v201 = *v199;
  v200 = v199[1];
  v202 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowType];
  swift_beginAccess();
  *v202 = v201;
  v202[1] = v200;

  v203 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_contentEnvironment);
  swift_beginAccess();
  v205 = *v203;
  v204 = v203[1];
  v206 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_contentEnvironment];
  swift_beginAccess();
  *v206 = v205;
  v206[1] = v204;

  v207 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft;
  swift_beginAccess();
  v208 = *(v3 + v207);
  v209 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft;
  swift_beginAccess();
  v210 = *&v6[v209];
  *&v6[v209] = v208;
  v211 = v208;

  v212 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement);
  swift_beginAccess();
  v214 = *v212;
  v213 = v212[1];
  v215 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement];
  swift_beginAccess();
  *v215 = v214;
  v215[1] = v213;

  v216 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralCampaignId);
  swift_beginAccess();
  v218 = *v216;
  v217 = v216[1];
  v219 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralCampaignId];
  swift_beginAccess();
  *v219 = v218;
  v219[1] = v217;

  v220 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralLocation);
  swift_beginAccess();
  v222 = *v220;
  v221 = v220[1];
  v223 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralLocation];
  swift_beginAccess();
  *v223 = v222;
  v223[1] = v221;

  v224 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory;
  swift_beginAccess();
  v225 = *(v3 + v224);
  v226 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory;
  swift_beginAccess();
  v227 = *&v6[v226];
  *&v6[v226] = v225;
  v228 = v225;

  v229 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial;
  swift_beginAccess();
  v230 = *(v3 + v229);
  v231 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial;
  swift_beginAccess();
  v232 = *&v6[v231];
  *&v6[v231] = v230;
  v233 = v230;

  v234 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio;
  swift_beginAccess();
  v235 = *(v3 + v234);
  v236 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio;
  swift_beginAccess();
  v237 = *&v6[v236];
  *&v6[v236] = v235;
  v238 = v235;

  v239 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_subscriptionType);
  swift_beginAccess();
  v241 = *v239;
  v240 = v239[1];
  v242 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_subscriptionType];
  swift_beginAccess();
  *v242 = v241;
  v242[1] = v240;

  v243 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueId);
  swift_beginAccess();
  v245 = *v243;
  v244 = v243[1];
  v246 = &v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueId];
  swift_beginAccess();
  *v246 = v245;
  v246[1] = v244;

  v247 = *(v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal);
  if (v247)
  {
    [v247 BOOLValue];
    sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
    v248 = sub_1C1B95248();
    v249 = *&v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal];
    *&v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal] = v248;
  }

  v250 = *(v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal);
  if (v250)
  {
    [v250 BOOLValue];
    sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
    v251 = sub_1C1B95248();
    v252 = *&v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal];
    *&v6[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal] = v251;
  }

  v253 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata;
  swift_beginAccess();
  v254 = *(v3 + v253);
  v255 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata;
  swift_beginAccess();
  *&v6[v255] = v254;

  v256 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  swift_beginAccess();
  v257 = *(v3 + v256);
  v258 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  result = swift_beginAccess();
  v6[v258] = v257;
  a2[3] = v5;
  *a2 = v6;
  return result;
}

unint64_t sub_1C1AA7514()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    v16 = *(v0 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal);

    return v16;
  }

  v3 = *(v0 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal);
  if (!v3)
  {

    goto LABEL_14;
  }

  v4 = *(v3 + 16);

  if (v4)
  {

    v5 = sub_1C1AA7C14(0x656372756F73, 0xE600000000000000);
    if (v6)
    {
      sub_1C1AAA7B8(*(v3 + 56) + 32 * v5, &v32);
      v7 = sub_1C1AC1F08(&unk_1EBF08348, &unk_1C1B9F740);
      if (swift_dynamicCast())
      {
        v8 = *&v31[0];
        if (*(*&v31[0] + 16))
        {
          v9 = sub_1C1AA7C14(0xD000000000000013, 0x80000001C1BA5640);
          if (v10)
          {
            sub_1C1AAA7B8(*(*&v31[0] + 56) + 32 * v9, &v32);
            if (swift_dynamicCast())
            {
              v11 = *&v31[0];
              v12 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
              swift_beginAccess();
              if (*(v0 + v12) == 1)
              {
                v33 = sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
                *&v32 = v2;
                sub_1C1AA7E98(&v32, v31);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v30 = v11;
                v14 = 0x6F72677265707573;
                v15 = 0xEF3179656B5F7075;
              }

              else
              {
                v33 = sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
                *&v32 = v2;
                sub_1C1AA7E98(&v32, v31);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v30 = v11;
                v14 = 0x6565667265707573;
                v15 = 0xEE003179656B5F64;
              }

              sub_1C1AAA814(v31, v14, v15, isUniquelyReferenced_nonNull_native);
              v33 = v7;
              *&v32 = v30;
              sub_1C1AA7E98(&v32, v31);
              v28 = swift_isUniquelyReferenced_nonNull_native();
              sub_1C1AAA814(v31, 0xD000000000000013, 0x80000001C1BA5640, v28);
              v33 = v7;
              *&v32 = v8;
              sub_1C1AA7E98(&v32, v31);

              v29 = swift_isUniquelyReferenced_nonNull_native();
              sub_1C1AAA814(v31, 0x656372756F73, 0xE600000000000000, v29);

              return v3;
            }

            goto LABEL_14;
          }
        }
      }
    }
  }

LABEL_14:
  v17 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  swift_beginAccess();
  v18 = *(v0 + v17);
  sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9AF30;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x80000001C1BA5610;
  v20 = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  *(inited + 72) = v20;
  *(inited + 80) = 0x656372756F73;
  *(inited + 88) = 0xE600000000000000;
  sub_1C1AC1F08(&qword_1EBF08318, &qword_1C1B9AF48);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1C1B98E60;
  *(v21 + 32) = 0xD000000000000013;
  *(v21 + 40) = 0x80000001C1BA5640;
  sub_1C1AC1F08(&unk_1EBF08320, &unk_1C1B9AF50);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1C1B98E60;
  if (v18 == 1)
  {
    *(v22 + 32) = 0x6F72677265707573;
    v23 = v22 + 32;
    v24 = 0xEF3179656B5F7075;
  }

  else
  {
    *(v22 + 32) = 0x6565667265707573;
    v23 = v22 + 32;
    v24 = 0xEE003179656B5F64;
  }

  *(v22 + 40) = v24;
  *(v22 + 48) = v2;
  v25 = sub_1C1AA7C00(v22);
  swift_setDeallocating();
  sub_1C1AA7C8C(v23, &qword_1EBF07B30, &qword_1C1B98F50);
  *(v21 + 48) = v25;
  v26 = sub_1C1AA7CEC(v21);
  swift_setDeallocating();
  sub_1C1AA7C8C(v21 + 32, &qword_1EBF08330, &qword_1C1B9AF60);
  *(inited + 120) = sub_1C1AC1F08(&qword_1EBF08338, &qword_1C1B9AF68);
  *(inited + 96) = v26;
  v16 = sub_1C1AA7D00(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&qword_1EBF08340, &qword_1C1B9AF70);
  swift_arrayDestroy();
  return v16;
}

unint64_t sub_1C1AA7B04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1C1AC1F08(a2, a3);
    v5 = sub_1C1B955C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1C1AA7C14(v7, v8);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1AA7C14(uint64_t a1, uint64_t a2)
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  v4 = sub_1C1B959A8();

  return sub_1C1AAA700(a1, a2, v4);
}

uint64_t sub_1C1AA7C8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1C1AC1F08(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C1AA7D00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C1AC1F08(&unk_1EBF080D0, &unk_1C1B9A6A0);
    v3 = sub_1C1B955C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1AA7E30(v4, &v13, &qword_1EBF08340, &qword_1C1B9AF70);
      v5 = v13;
      v6 = v14;
      result = sub_1C1AA7C14(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C1AA7E98(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C1AA7E30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C1AC1F08(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1C1AA7E98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C1AA7EA8(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    v4 = objc_opt_self();
    sub_1C1AC1F08(&unk_1EBF08358, &qword_1C1B9AF78);
    LOBYTE(v4) = [v4 isValidJSONObject_];
    swift_unknownObjectRelease();
    if ((v4 & 1) == 0)
    {

      v5 = sub_1C1B95128();
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v6 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1C1B98E60;
      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 64) = sub_1C1AA5E7C();
      *(v7 + 32) = 0xD000000000000030;
      *(v7 + 40) = 0x80000001C1BA7F40;
      sub_1C1B94BA8(v5, &dword_1C1AA2000, v6, "%{public}@", 10, 2, v7);

      v8 = [objc_opt_self() processInfo];
      [v8 isRunningTests];

      v3 = 0;
    }

    *(v2 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal) = v3;
  }

  return result;
}

uint64_t _s15PromotedContent19NewsRequestedAdTypeO8rawValueACSS_tcfC_0(uint64_t a1, unint64_t a2)
{
  v5 = sub_1C1B94DC8();
  v6 = v4;
  if (v5 == 5852737 && v4 == 0xE300000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  if (v5 == 0x454E4E4142594E41 && v6 == 0xE900000000000052 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  if (v5 == 0x445241444E415453 && v6 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  if (v5 == 0x454C42554F44 && v6 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  if (v5 == 0x454752414CLL && v6 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  if (v5 == 1128616525 && v6 == 0xE400000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  if (v5 == 0x45564954414ELL && v6 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 7;
  }

  if (v5 == 0x59414C5245564FLL && v6 == 0xE700000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 8;
  }

  if (v5 == 0x4954414E494D4553 && v6 == 0xEA00000000004556 || (sub_1C1B95888() & 1) != 0)
  {

    return 9;
  }

  if (v5 == 0x53524F534E4F5053 && v6 == 0xEB00000000504948)
  {

LABEL_41:

    return 10;
  }

  v8 = sub_1C1B95888();

  if (v8)
  {
    goto LABEL_41;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1C1B94BE8();
  sub_1C1AB4454(v9, qword_1EDE6D058);

  v10 = sub_1C1B94BC8();
  v11 = sub_1C1B95128();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    v14 = sub_1C1AC7650(a1, a2, &v15);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_1C1AA2000, v10, v11, "Attempting to create NewsRequestedAdType with invalid raw value %s.", v12, 0xCu);
    sub_1C1AA86F8(v13);
    MEMORY[0x1C6908230](v13, -1, -1);
    MEMORY[0x1C6908230](v12, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t NewsRequestedAdType.rawValue.getter(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0x454752414CLL;
      }

      if (a1 == 6)
      {
        return 1128616525;
      }

      return 0x45564954414ELL;
    }

    switch(a1)
    {
      case 8:
        return 0x59414C5245564FLL;
      case 9:
        return 0x4954414E494D4553;
      case 10:
        return 0x53524F534E4F5053;
    }

LABEL_24:
    result = sub_1C1B958C8();
    __break(1u);
    return result;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1162760014;
    }

    if (a1 == 1)
    {
      return 5852737;
    }

    goto LABEL_24;
  }

  if (a1 == 2)
  {
    return 0x454E4E4142594E41;
  }

  if (a1 == 3)
  {
    return 0x445241444E415453;
  }

  return 0x454C42554F44;
}

uint64_t sub_1C1AA86F8(void *a1)
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

uint64_t Context.hash.getter()
{
  v1 = v0;
  sub_1C1B959B8();
  v175 = v178[2];
  v176 = v178[3];
  v177 = v179;
  v174 = v178[1];
  v173 = v178[0];
  v2 = v0 + OBJC_IVAR___APPCBaseContext_maxSize;
  v3 = *(v0 + OBJC_IVAR___APPCBaseContext_maxSize);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1C6907980](*&v3);
  v4 = *(v2 + 8);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1C6907980](*&v4);
  if (*(v0 + OBJC_IVAR___APPCBaseContext_current) && (type metadata accessor for ContentDepiction(), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5;
    swift_unknownObjectRetain();
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  sub_1C1B95288();

  v7 = sub_1C1AA5C64(*(v0 + OBJC_IVAR___APPCBaseContext_next), type metadata accessor for ContentDepiction);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1C1AAAD18(&v173, v9);

  v10 = sub_1C1AA5C64(*(v0 + OBJC_IVAR___APPCBaseContext_adjacent), type metadata accessor for ContentDepiction);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  sub_1C1AAAD18(&v173, v11);

  v12 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (v13)
  {
    v14 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_advertisementType];
    swift_beginAccess();
    if (*(v14 + 1))
    {
      sub_1C1B95978();
      v15 = v13;

      sub_1C1B94DE8();
    }

    else
    {
      sub_1C1B95978();
      v17 = v13;
    }

    v18 = *&v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal + 8];
    if (v18)
    {
      v19 = *&v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal];

      v20 = _s15PromotedContent19NewsRequestedAdTypeO8rawValueACSS_tcfC_0(v19, v18);
    }

    else
    {
      v21 = sub_1C1B95128();
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v22 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1C1B98E60;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1C1AA5E7C();
      *(v23 + 32) = 0xD000000000000029;
      *(v23 + 40) = 0x80000001C1BA7F90;
      sub_1C1B94BA8(v21, &dword_1C1AA2000, v22, "%{public}@", 10, 2, v23);

      v20 = 0;
    }

    NewsRequestedAdType.rawValue.getter(v20);
    sub_1C1B94DE8();

    v24 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType];
    swift_beginAccess();
    if (*(v24 + 1))
    {
      sub_1C1B95978();

      sub_1C1B94DE8();
    }

    else
    {
      sub_1C1B95978();
    }

    v25 = sub_1C1AA7514();
    if (v25)
    {
      v26 = v25;
      v27 = v25 + 64;
      v28 = 1 << *(v25 + 32);
      v29 = -1;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      v30 = v29 & *(v25 + 64);
      v31 = (v28 + 63) >> 6;

      v32 = 0;
      while (v30)
      {
LABEL_37:
        v35 = __clz(__rbit64(v30)) | (v32 << 6);
        v36 = (*(v26 + 48) + 16 * v35);
        v37 = *v36;
        v38 = v36[1];
        sub_1C1AAA7B8(*(v26 + 56) + 32 * v35, &v181);
        *&v180 = v37;
        *(&v180 + 1) = v38;

        sub_1C1B94DE8();
        sub_1C1AAAB08(&v180, &v171);

        sub_1C1AA576C(0, &qword_1EDE6C9D0, 0x1E69E58C0);
        if (swift_dynamicCast())
        {
          v33 = v172;
        }

        else
        {
          v33 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        }

        v30 &= v30 - 1;
        sub_1C1B95288();

        result = sub_1C1AAAB78(&v180);
      }

      while (1)
      {
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v34 >= v31)
        {

          goto LABEL_40;
        }

        v30 = *(v27 + 8 * v34);
        ++v32;
        if (v30)
        {
          v32 = v34;
          goto LABEL_37;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_40:
      v39 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleArticleId];
      swift_beginAccess();
      if (*(v39 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v40 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleArticleId];
      swift_beginAccess();
      if (*(v40 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v41 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored;
      swift_beginAccess();
      v42 = *&v13[v41];
      sub_1C1B95978();
      if (v42)
      {
        v43 = v42;
        sub_1C1B95288();
      }

      v44 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored;
      swift_beginAccess();
      v45 = *&v13[v44];
      sub_1C1B95978();
      if (v45)
      {
        v46 = v45;
        sub_1C1B95288();
      }

      v47 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticlePublicationMetadata;
      swift_beginAccess();
      v48 = *&v13[v47];
      sub_1C1B95978();
      if (v48)
      {

        sub_1C1AF5F70(&v173, v48);
      }

      v49 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticlePublicationMetadata;
      swift_beginAccess();
      v50 = *&v13[v49];
      sub_1C1B95978();
      if (v50)
      {

        sub_1C1AF5F70(&v173, v50);
      }

      v51 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleRating];
      swift_beginAccess();
      if (*(v51 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v52 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleRating];
      swift_beginAccess();
      if (*(v52 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v53 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannel];
      swift_beginAccess();
      if (*(v53 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v54 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannel];
      swift_beginAccess();
      if (*(v54 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v55 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannelRating];
      swift_beginAccess();
      if (*(v55 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v56 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannelRating];
      swift_beginAccess();
      if (*(v56 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v57 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId;
      swift_beginAccess();
      v58 = *&v13[v57];
      sub_1C1B95978();
      if (v58)
      {
        v59 = v58;
        sub_1C1B95288();
      }

      v60 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId;
      swift_beginAccess();
      v61 = *&v13[v60];
      sub_1C1B95978();
      if (v61)
      {
        v62 = v61;
        sub_1C1B95288();
      }

      v63 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceSections;
      swift_beginAccess();
      v64 = *&v13[v63];
      if (v64)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v64 + 16));
        v65 = *(v64 + 16);
        if (v65)
        {

          v66 = v64 + 40;
          do
          {

            sub_1C1B94DE8();

            v66 += 16;
            --v65;
          }

          while (v65);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v67 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceSections;
      swift_beginAccess();
      v68 = *&v13[v67];
      if (v68)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v68 + 16));
        v69 = *(v68 + 16);
        if (v69)
        {

          v70 = v68 + 40;
          do
          {

            sub_1C1B94DE8();

            v70 += 16;
            --v69;
          }

          while (v69);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v71 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataCategories;
      swift_beginAccess();
      v72 = *&v13[v71];
      if (v72)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v72 + 16));
        v73 = *(v72 + 16);
        if (v73)
        {

          v74 = v72 + 40;
          do
          {

            sub_1C1B94DE8();

            v74 += 16;
            --v73;
          }

          while (v73);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v75 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId];
      swift_beginAccess();
      if (*(v75 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v76 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataTagId];
      swift_beginAccess();
      if (*(v76 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v77 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID;
      swift_beginAccess();
      v78 = *&v13[v77];
      sub_1C1B95978();
      if (v78)
      {
        v79 = v78;
        sub_1C1B95288();
      }

      v80 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataKeywords;
      swift_beginAccess();
      v81 = *&v13[v80];
      if (v81)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v81 + 16));
        v82 = *(v81 + 16);
        if (v82)
        {

          v83 = v81 + 40;
          do
          {

            sub_1C1B94DE8();

            v83 += 16;
            --v82;
          }

          while (v82);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v84 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages;
      swift_beginAccess();
      v85 = *&v13[v84];
      if (v85)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v85 + 16));
        v86 = *(v85 + 16);
        if (v86)
        {

          v87 = v85 + 40;
          do
          {

            sub_1C1B94DE8();

            v87 += 16;
            --v86;
          }

          while (v86);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v88 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataRating];
      swift_beginAccess();
      if (*(v88 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v89 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataSectionId];
      swift_beginAccess();
      if (*(v89 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v90 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextCategories;
      swift_beginAccess();
      v91 = *&v13[v90];
      if (v91)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v91 + 16));
        v92 = *(v91 + 16);
        if (v92)
        {

          v93 = v91 + 40;
          do
          {

            sub_1C1B94DE8();

            v93 += 16;
            --v92;
          }

          while (v92);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v94 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveCategories;
      swift_beginAccess();
      v95 = *&v13[v94];
      if (v95)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v95 + 16));
        v96 = *(v95 + 16);
        if (v96)
        {

          v97 = v95 + 40;
          do
          {

            sub_1C1B94DE8();

            v97 += 16;
            --v96;
          }

          while (v96);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v98 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowCategories;
      swift_beginAccess();
      v99 = *&v13[v98];
      if (v99)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v99 + 16));
        v100 = *(v99 + 16);
        if (v100)
        {

          v101 = v99 + 40;
          do
          {

            sub_1C1B94DE8();

            v101 += 16;
            --v100;
          }

          while (v100);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v102 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextId];
      swift_beginAccess();
      if (*(v102 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v103 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveId];
      swift_beginAccess();
      if (*(v103 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v104 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowId];
      swift_beginAccess();
      if (*(v104 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v105 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextKeywords;
      swift_beginAccess();
      v106 = *&v13[v105];
      if (v106)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v106 + 16));
        v107 = *(v106 + 16);
        if (v107)
        {

          v108 = v106 + 40;
          do
          {

            sub_1C1B94DE8();

            v108 += 16;
            --v107;
          }

          while (v107);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v109 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveKeywords;
      swift_beginAccess();
      v110 = *&v13[v109];
      if (v110)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v110 + 16));
        v111 = *(v110 + 16);
        if (v111)
        {

          v112 = v110 + 40;
          do
          {

            sub_1C1B94DE8();

            v112 += 16;
            --v111;
          }

          while (v111);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v113 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowKeywords;
      swift_beginAccess();
      v114 = *&v13[v113];
      if (v114)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v114 + 16));
        v115 = *(v114 + 16);
        if (v115)
        {

          v116 = v114 + 40;
          do
          {

            sub_1C1B94DE8();

            v116 += 16;
            --v115;
          }

          while (v115);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v117 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextLanguages;
      swift_beginAccess();
      v118 = *&v13[v117];
      if (v118)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v118 + 16));
        v119 = *(v118 + 16);
        if (v119)
        {

          v120 = v118 + 40;
          do
          {

            sub_1C1B94DE8();

            v120 += 16;
            --v119;
          }

          while (v119);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v121 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveLanguages;
      swift_beginAccess();
      v122 = *&v13[v121];
      if (v122)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v122 + 16));
        v123 = *(v122 + 16);
        if (v123)
        {

          v124 = v122 + 40;
          do
          {

            sub_1C1B94DE8();

            v124 += 16;
            --v123;
          }

          while (v123);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v125 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowLanguages;
      swift_beginAccess();
      v126 = *&v13[v125];
      if (v126)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v126 + 16));
        v127 = *(v126 + 16);
        if (v127)
        {

          v128 = v126 + 40;
          do
          {

            sub_1C1B94DE8();

            v128 += 16;
            --v127;
          }

          while (v127);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v129 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveChannelId];
      swift_beginAccess();
      if (*(v129 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v130 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveTagId];
      swift_beginAccess();
      if (*(v130 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v131 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowChannelId];
      swift_beginAccess();
      if (*(v131 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v132 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowTagId];
      swift_beginAccess();
      if (*(v132 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v133 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId;
      swift_beginAccess();
      v134 = *&v13[v133];
      sub_1C1B95978();
      if (v134)
      {
        v135 = v134;
        sub_1C1B95288();
      }

      v136 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId;
      swift_beginAccess();
      v137 = *&v13[v136];
      sub_1C1B95978();
      if (v137)
      {
        v138 = v137;
        sub_1C1B95288();
      }

      v139 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId;
      swift_beginAccess();
      v140 = *&v13[v139];
      sub_1C1B95978();
      if (v140)
      {
        v141 = v140;
        sub_1C1B95288();
      }

      v142 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextType];
      swift_beginAccess();
      if (*(v142 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v143 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveType];
      swift_beginAccess();
      if (*(v143 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v144 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowType];
      swift_beginAccess();
      if (*(v144 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v145 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_contentEnvironment];
      swift_beginAccess();
      if (*(v145 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v146 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft;
      swift_beginAccess();
      v147 = *&v13[v146];
      sub_1C1B95978();
      if (v147)
      {
        v148 = v147;
        sub_1C1B95288();
      }

      sub_1C1B95978();
      v149 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement];
      swift_beginAccess();
      if (*(v149 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v150 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralLocation];
      swift_beginAccess();
      if (*(v150 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v151 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory;
      swift_beginAccess();
      v152 = *&v13[v151];
      sub_1C1B95978();
      if (v152)
      {
        v153 = v152;
        sub_1C1B95288();
      }

      v154 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial;
      swift_beginAccess();
      v155 = *&v13[v154];
      sub_1C1B95978();
      if (v155)
      {
        v156 = v155;
        sub_1C1B95288();
      }

      v157 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio;
      swift_beginAccess();
      v158 = *&v13[v157];
      sub_1C1B95978();
      if (v158)
      {
        v159 = v158;
        sub_1C1B95288();
      }

      v160 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_subscriptionType];
      swift_beginAccess();
      if (*(v160 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v161 = &v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueId];
      swift_beginAccess();
      if (*(v161 + 1))
      {
        sub_1C1B95978();

        sub_1C1B94DE8();
      }

      else
      {
        sub_1C1B95978();
      }

      v162 = *&v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal];
      if (v162)
      {
        v163 = [v162 BOOLValue];
      }

      else
      {
        v163 = -1;
      }

      MEMORY[0x1C6907960](v163);
      v164 = *&v13[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal];
      if (v164)
      {
        v165 = [v164 BOOLValue];
      }

      else
      {
        v165 = -1;
      }

      MEMORY[0x1C6907960](v165);
      v166 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata;
      swift_beginAccess();
      v167 = *&v13[v166];
      if (v167)
      {
        sub_1C1B95978();
        MEMORY[0x1C6907960](*(v167 + 16));
        v168 = *(v167 + 16);
        if (v168)
        {

          v169 = v167 + 40;
          do
          {

            sub_1C1B94DE8();

            v169 += 16;
            --v168;
          }

          while (v168);
        }
      }

      else
      {
        sub_1C1B95978();
      }

      v182 = v175;
      v183 = v176;
      v184 = v177;
      v180 = v173;
      v181 = v174;
      v170 = sub_1C1B95998();

      return v170;
    }
  }

  else
  {
    v182 = v175;
    v183 = v176;
    v184 = v177;
    v180 = v173;
    v181 = v174;
    return sub_1C1B95998();
  }

  return result;
}

unint64_t sub_1C1AAA700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C1B95888())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C1AAA7B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1C1AAA814(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C1AA7C14(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C1AAA964();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C1AD96AC(v16, a4 & 1);
    v11 = sub_1C1AA7C14(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1C1B958E8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1C1AA86F8(v22);

    return sub_1C1AA7E98(a1, v22);
  }

  else
  {
    sub_1C1AE45B8(v11, a2, a3, a1, v21);
  }
}

void *sub_1C1AAA964()
{
  v1 = v0;
  sub_1C1AC1F08(&unk_1EBF080D0, &unk_1C1B9A6A0);
  v2 = *v0;
  v3 = sub_1C1B955A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1C1AAA7B8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C1AA7E98(v25, (*(v4 + 56) + v22));
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

  return result;
}

uint64_t sub_1C1AAAB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF08858, &qword_1C1B9CD28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1AAAB78(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF08858, &qword_1C1B9CD28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C1AAABE0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C1AAAC24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAAC34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAAC44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAAC54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAAC64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAAC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAAC84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAAC94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAACA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAACB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAACC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1AAACD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C1AAAD18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1C1B953A8();
    MEMORY[0x1C6907960](v8);
    v3 = sub_1C1B953A8();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1C6907960](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1C6907490](i, a2);
      sub_1C1B95288();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1C1B95288();

      --v3;
    }

    while (v3);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for AdContentSessionUnfilledReason(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

id sub_1C1AAAE40()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EDE6CE60 = result;
  return result;
}

void *sub_1C1AAAF64()
{
  result = sub_1C1AAAF84();
  qword_1EDE6BFF8 = result;
  return result;
}

void *sub_1C1AAAF84()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1C1B94D88();
  v4 = v3;

  if (v2 == 0x6C7070612E6D6F63 && v4 == 0xEE007377656E2E65)
  {

    goto LABEL_9;
  }

  v6 = sub_1C1B95888();

  if (v6)
  {
LABEL_9:
    type metadata accessor for SponsorshipAdManager();
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E7CC0];
    v7[2] = 0;
    v7[3] = v8;
    v7[4] = v8;
    sub_1C1AAD360();
    sub_1C1AAD570();
    return v7;
  }

  return 0;
}

char *sub_1C1AAB0FC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1C1AC1F08(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1C1AAB208(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___APPCContext_prefetchLock;
  [*(v4 + OBJC_IVAR___APPCContext_prefetchLock) lock];
  v9 = &property descriptor for VideoRepresentation.unbranded;
  if (a3)
  {
    v10 = OBJC_IVAR___APPCContext_fetchingLock;
    [*(v4 + OBJC_IVAR___APPCContext_fetchingLock) lock];
    swift_beginAccess();

    sub_1C1AAB914(v11);
    swift_endAccess();
    [*(v4 + v10) unlock];
    sub_1C1B2F85C(a1);
    return [*(v4 + v8) v9[463]];
  }

  v12 = sub_1C1AB6F40();
  if (v12 < 1)
  {
    if ((a2 & 1) == 0)
    {
      v19 = sub_1C1B95138();
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v20 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1C1B98E60;
      v22 = *(a1 + 16);
      v23 = MEMORY[0x1E69E65A8];
      *(v21 + 56) = MEMORY[0x1E69E6530];
      *(v21 + 64) = v23;
      *(v21 + 32) = v22;
      sub_1C1B94BA8(v19, &dword_1C1AA2000, v20, "[PC] Adding %{public}d new requests to waiting", 46, 2, v21);

      v24 = OBJC_IVAR___APPCContext_waitingLock;
      [*(v4 + OBJC_IVAR___APPCContext_waitingLock) lock];
      swift_beginAccess();

      sub_1C1AAB914(v25);
      swift_endAccess();
      [*(v4 + v24) unlock];
    }

    return [*(v4 + v8) v9[463]];
  }

  v13 = *(a1 + 16);
  if (v12 >= v13)
  {

    if ((a2 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v14 = v12;
    v15 = (2 * v12) | 1;

    sub_1C1B2FCAC(v16, a1 + 32, 0, v15);
    v18 = v17;
    if ((a2 & 1) == 0)
    {
      sub_1C1B2FCAC(a1, a1 + 32, v14, (2 * v13) | 1);
      v42 = v41;

      v43 = sub_1C1B95138();
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v44 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1C1B98E60;
      v46 = *(v42 + 16);
      v47 = MEMORY[0x1E69E65A8];
      *(v45 + 56) = MEMORY[0x1E69E6530];
      *(v45 + 64) = v47;
      *(v45 + 32) = v46;
      sub_1C1B94BA8(v43, &dword_1C1AA2000, v44, "[PC] Adding %{public}d requests to waiting", 42, 2, v45);

      v26 = (v4 + OBJC_IVAR___APPCContext_waitingLock);
      [*(v4 + OBJC_IVAR___APPCContext_waitingLock) lock];
      swift_beginAccess();
      sub_1C1AAB914(v42);
      swift_endAccess();
      goto LABEL_48;
    }

    a1 = v18;
  }

  v26 = (v4 + OBJC_IVAR___APPCContext_waitingLock);
  [*(v4 + OBJC_IVAR___APPCContext_waitingLock) lock];
  v27 = sub_1C1B95138();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v28 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C1B98E60;
  v30 = *(a1 + 16);
  v31 = MEMORY[0x1E69E65A8];
  *(v29 + 56) = MEMORY[0x1E69E6530];
  *(v29 + 64) = v31;
  *(v29 + 32) = v30;
  sub_1C1B94BA8(v27, &dword_1C1AA2000, v28, "[PC] Removing %{public}d requests from waiting", 46, 2, v29);

  v32 = *(a1 + 16);
  if (!v32)
  {
    v18 = a1;
    goto LABEL_48;
  }

  v50 = v26;
  v33 = OBJC_IVAR___APPCContext_waiting;
  result = swift_beginAccess();
  v35 = 0;
  while (1)
  {
    if (v35 >= *(a1 + 16))
    {
      __break(1u);
      return result;
    }

    result = *(v4 + v33);
    v36 = result[2];
    if (v36)
    {
      break;
    }

LABEL_13:
    if (++v35 == v32)
    {
      goto LABEL_45;
    }
  }

  v37 = 0;
  v38 = *(a1 + 32 + 8 * v35);
  while (1)
  {
    v40 = result[v37 + 4];
    if (v38 > 3)
    {
      break;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        if (v40 == 2)
        {
          goto LABEL_12;
        }
      }

      else if (v40 == 3)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

    if (!v38)
    {
      goto LABEL_17;
    }

    if (v38 != 1)
    {
      goto LABEL_44;
    }

    if (v40 == 1)
    {
LABEL_12:
      swift_beginAccess();
      sub_1C1B2BACC(v37);
      result = swift_endAccess();
      goto LABEL_13;
    }

LABEL_21:
    if (v36 == ++v37)
    {
      goto LABEL_13;
    }
  }

  if (v38 <= 5)
  {
    if (v38 == 4)
    {
      if (v40 == 4)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

LABEL_17:
    if (v40)
    {
      v39 = v40 == 5;
    }

    else
    {
      v39 = 1;
    }

    if (v39)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  switch(v38)
  {
    case 6:
      if (v40 == 6)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    case 7:
      if (v40 == 7)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    case 8:
      goto LABEL_21;
  }

LABEL_44:

  sub_1C1B958C8();
  __break(1u);
LABEL_45:
  v18 = a1;
  v9 = &property descriptor for VideoRepresentation.unbranded;
  v26 = v50;
LABEL_48:
  [*v26 v9[463]];
  a1 = v18;
LABEL_49:
  v48 = OBJC_IVAR___APPCContext_fetchingLock;
  [*(v4 + OBJC_IVAR___APPCContext_fetchingLock) lock];
  swift_beginAccess();

  sub_1C1AAB914(v49);
  swift_endAccess();
  [*(v4 + v48) v9[463]];
  sub_1C1B2F85C(a1);

  return [*(v4 + v8) v9[463]];
}

uint64_t sub_1C1AAB914(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C1AAB0E8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C1AABA00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1B945F8();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 40);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      v15 = *(v10 - 1);
      v16 = *v10;
      if ((*v10 & 0xE0) != 0xC0 || v15 != 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C1AC7E74(0, *(v11 + 16) + 1, 1);
          v11 = v47;
        }

        v13 = *(v11 + 16);
        v12 = *(v11 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1C1AC7E74((v12 > 1), v13 + 1, 1);
          v11 = v47;
        }

        *(v11 + 16) = v13 + 1;
        v14 = v11 + 16 * v13;
        *(v14 + 32) = v15;
        *(v14 + 40) = v16;
      }

      v10 += 16;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  sub_1C1B94578();
  v19 = sub_1C1B94588();
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  v20 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1AABE90(v8, v2 + v20);
  swift_endAccess();
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v21 = sub_1C1B94BE8();
  sub_1C1AB4454(v21, qword_1EDE6D058);
  v22 = v2;

  v23 = sub_1C1B94BC8();
  v24 = sub_1C1B95118();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46 = v42;
    *v25 = 67109634;
    *(v25 + 4) = 36;
    *(v25 + 8) = 2080;
    v26 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    v28 = v44;
    v27 = v45;
    v29 = &v22[v26];
    v30 = v43;
    (*(v44 + 16))(v43, v29, v45);
    sub_1C1AA5A14(&qword_1EDE6B830, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v31 = sub_1C1B95858();
    v33 = v32;
    (*(v28 + 8))(v30, v27);
    v34 = sub_1C1AC7650(v31, v33, &v46);

    *(v25 + 10) = v34;
    *(v25 + 18) = 2080;
    v35 = MEMORY[0x1C6906ED0](v11, &type metadata for DesiredPlacementType);
    v37 = sub_1C1AC7650(v35, v36, &v46);

    *(v25 + 20) = v37;
    _os_log_impl(&dword_1C1AA2000, v23, v24, "Context ID: %-*s Started prefetching content with types %s.", v25, 0x1Cu);
    v38 = v42;
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v38, -1, -1);
    MEMORY[0x1C6908230](v25, -1, -1);
  }

  sub_1C1AADF84(v11);
  v40 = v39;

  sub_1C1AAB208(v40, 0, 0);
}

uint64_t sub_1C1AABE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id NewsSupplementalContext.init()()
{
  v1 = v0;
  v2 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - v3;
  v5 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_advertisementType];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleArticleId];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleArticleId];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticlePublicationMetadata] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticlePublicationMetadata] = 0;
  v9 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleRating];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleRating];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannel];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannel];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannelRating];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannelRating];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceSections] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceSections] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataCategories] = 0;
  v15 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataTagId];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataKeywords] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages] = 0;
  v17 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataRating];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataSectionId];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextCategories] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveCategories] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowCategories] = 0;
  v19 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextId];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveId];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowId];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextKeywords] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveKeywords] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowKeywords] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextLanguages] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveLanguages] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowLanguages] = 0;
  v22 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveChannelId];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveTagId];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowChannelId];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowTagId];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId] = 0;
  v26 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextType];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveType];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowType];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_contentEnvironment];
  *v29 = 0;
  *(v29 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft] = 0;
  v30 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralCampaignId];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralLocation];
  *v32 = 0;
  *(v32 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio] = 0;
  v33 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_subscriptionType];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueId];
  *v34 = 0;
  *(v34 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata] = 0;
  v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement] = 3;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal] = 0;
  *&v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal] = 0;
  v35 = &v0[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal];
  *v35 = 0;
  *(v35 + 1) = 0;
  if (([objc_opt_self() isActiveClientInfoSet] & 1) == 0)
  {
    v36 = sub_1C1B95028();
    (*(*(v36 - 8) + 56))(v4, 1, 1, v36);
    sub_1C1B95008();
    v37 = sub_1C1B94FF8();
    v38 = swift_allocObject();
    v39 = MEMORY[0x1E69E85E0];
    *(v38 + 16) = v37;
    *(v38 + 24) = v39;
    sub_1C1AE33F8(0, 0, v4, &unk_1C1B9AFA0, v38);
  }

  v40 = type metadata accessor for NewsSupplementalContext();
  v42.receiver = v1;
  v42.super_class = v40;
  return objc_msgSendSuper2(&v42, sel_init);
}

uint64_t sub_1C1AAC3E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1AAC418(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1C1AAC4F4(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_1C1AAC78C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1C1AAC820()
{
  v1 = sub_1C1B945F8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C1B94BE8();
  sub_1C1AB4454(v5, qword_1EDE6D058);
  v6 = v0;
  v7 = sub_1C1B94BC8();
  v8 = sub_1C1B95108();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v62[0] = v59;
    *v9 = 67109378;
    *(v9 + 4) = 36;
    *(v9 + 8) = 2080;
    v10 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v2 + 16))(v4, &v6[v10], v1);
    sub_1C1AA5A14(&qword_1EDE6B830, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_1C1B95858();
    v12 = v4;
    v13 = v1;
    v14 = v2;
    v16 = v15;
    (*(v14 + 8))(v12, v13);
    v17 = sub_1C1AC7650(v11, v16, v62);
    v2 = v14;
    v1 = v13;
    v4 = v12;

    *(v9 + 10) = v17;
    _os_log_impl(&dword_1C1AA2000, v7, v8, "Context ID: %-*s Context is requesting a sponsorship ad.", v9, 0x12u);
    v18 = v59;
    sub_1C1AA86F8(v59);
    MEMORY[0x1C6908230](v18, -1, -1);
    MEMORY[0x1C6908230](v9, -1, -1);
  }

  v19 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v20 = *&v6[v19];
  if (!v20 || ((v21 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement, swift_beginAccess(), *(v20 + v21)) ? (v22 = *(v20 + v21) == 3) : (v22 = 1), v22))
  {
    v23 = v6;
    v24 = sub_1C1B94BC8();
    v25 = sub_1C1B95128();

    if (!os_log_type_enabled(v24, v25))
    {
LABEL_14:

      return 0;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v60[0] = v27;
    *v26 = 67109378;
    *(v26 + 4) = 36;
    *(v26 + 8) = 2080;
    v28 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v2 + 16))(v4, &v23[v28], v1);
    sub_1C1AA5A14(&qword_1EDE6B830, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v29 = sub_1C1B95858();
    v31 = v30;
    (*(v2 + 8))(v4, v1);
    v32 = sub_1C1AC7650(v29, v31, v60);

    *(v26 + 10) = v32;
    v33 = "Context ID: %-*s Sponsorship placement is either not set or is of unsupported type banner.";
LABEL_13:
    _os_log_impl(&dword_1C1AA2000, v24, v25, v33, v26, 0x12u);
    sub_1C1AA86F8(v27);
    MEMORY[0x1C6908230](v27, -1, -1);
    MEMORY[0x1C6908230](v26, -1, -1);
    goto LABEL_14;
  }

  if (qword_1EDE6BFF0 != -1)
  {
    swift_once();
  }

  if (!qword_1EDE6BFF8 || (v35 = sub_1C1AAD708(v6)) == 0)
  {
    v52 = v6;
    v24 = sub_1C1B94BC8();
    v25 = sub_1C1B95128();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_14;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v60[0] = v27;
    *v26 = 67109378;
    *(v26 + 4) = 36;
    *(v26 + 8) = 2080;
    v53 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v2 + 16))(v4, &v52[v53], v1);
    sub_1C1AA5A14(&qword_1EDE6B830, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v54 = sub_1C1B95858();
    v56 = v55;
    (*(v2 + 8))(v4, v1);
    v57 = sub_1C1AC7650(v54, v56, v60);

    *(v26 + 10) = v57;
    v33 = "Context ID: %-*s No sponsorship content info available.";
    goto LABEL_13;
  }

  v36 = v35;
  v37 = v6;
  v38 = sub_1C1B94BC8();
  v39 = sub_1C1B95108();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v61 = v41;
    *v40 = 67109890;
    *(v40 + 4) = 36;
    *(v40 + 8) = 2080;
    v42 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v2 + 16))(v4, &v37[v42], v1);
    sub_1C1AA5A14(&qword_1EDE6B830, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v43 = sub_1C1B95858();
    v45 = v44;
    (*(v2 + 8))(v4, v1);
    v46 = sub_1C1AC7650(v43, v45, &v61);

    *(v40 + 10) = v46;
    *(v40 + 18) = 1024;
    *(v40 + 20) = 36;
    *(v40 + 24) = 2080;
    v47 = &v36[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v49 = *v47;
    v48 = v47[1];

    v50 = sub_1C1AC7650(v49, v48, &v61);

    *(v40 + 26) = v50;
    _os_log_impl(&dword_1C1AA2000, v38, v39, "Context ID: %-*s Content ID: %-*s Context has returned a sponsorship ad.", v40, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v41, -1, -1);
    MEMORY[0x1C6908230](v40, -1, -1);
  }

  v51 = sub_1C1AB5618(v36, 0, 0, 0);
  return v51;
}

unint64_t sub_1C1AAD060()
{
  type metadata accessor for ImageDownloader();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_1C1AAD0D0(MEMORY[0x1E69E7CC0]);
  *(v0 + 112) = result;
  qword_1EDE6B168 = v0;
  return result;
}

unint64_t sub_1C1AAD0D0(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&unk_1EBF080C0, &unk_1C1B9A690);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1C1AC1F08(&unk_1EBF082E0, &unk_1C1B9AF10);
    v7 = sub_1C1B955C8();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C1AA7E30(v9, v5, &unk_1EBF080C0, &unk_1C1B9A690);
      result = sub_1C1AD8BA0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1C1B944A8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 16 * v13;
      v17 = v8[8];
      *v16 = *v8;
      *(v16 + 8) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C1AAD2FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C1AAD360()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1B94D78();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1C1B94D78();
  v4 = [v2 dataForKey_];

  if (v4)
  {
    v5 = sub_1C1B944D8();
    v7 = v6;

    if ((sub_1C1B8CB68(v5, v7) & 1) == 0)
    {
      sub_1C1B8CDB0(v5, v7);
    }

    sub_1C1AE4A00(v5, v7);
  }

  else
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C1B94BE8();
    sub_1C1AB4454(v8, qword_1EDE6D058);
    oslog = sub_1C1B94BC8();
    v9 = sub_1C1B95128();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C1AA2000, oslog, v9, "Sponsorship ad manager found no data to restore cache.", v10, 2u);
      MEMORY[0x1C6908230](v10, -1, -1);
    }
  }
}

uint64_t sub_1C1AAD570()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x1E69DDAB0];
  v3 = [objc_opt_self() mainQueue];
  v4 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_1C1AB866C;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C1AB8450;
  v8[3] = &unk_1F41540D0;
  v5 = _Block_copy(v8);

  v6 = [v1 addObserverForName:v2 object:0 queue:v3 usingBlock:v5];
  _Block_release(v5);

  *(v0 + 16) = v6;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C1AAD6D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

char *sub_1C1AAD708(char *a1)
{
  v3 = sub_1C1B945F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v8 = *&a1[v7];
  if (!v8 || (v9 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement, swift_beginAccess(), v10 = *(v8 + v9), v10 == 3))
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v11 = sub_1C1B94BE8();
    sub_1C1AB4454(v11, qword_1EDE6D058);
    v12 = a1;
    v13 = sub_1C1B94BC8();
    v14 = sub_1C1B95128();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_21;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v67[0] = v16;
    *v15 = 67109378;
    *(v15 + 4) = 36;
    *(v15 + 8) = 2080;
    v17 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v4 + 16))(v6, &v12[v17], v3);
    v18 = sub_1C1B945A8();
    v20 = v19;
    (*(v4 + 8))(v6, v3);
    v21 = sub_1C1AC7650(v18, v20, v67);

    *(v15 + 10) = v21;
    v22 = "Context ID: %-*s No sponsorship placement specified.";
LABEL_20:
    _os_log_impl(&dword_1C1AA2000, v13, v14, v22, v15, 0x12u);
    sub_1C1AA86F8(v16);
    MEMORY[0x1C6908230](v16, -1, -1);
    MEMORY[0x1C6908230](v15, -1, -1);
LABEL_21:

    return 0;
  }

  v23 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata;
  swift_beginAccess();
  v24 = *(v8 + v23);
  if (!v24 || !*(v24 + 16))
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v33 = sub_1C1B94BE8();
    sub_1C1AB4454(v33, qword_1EDE6D058);
    v34 = a1;
    v13 = sub_1C1B94BC8();
    v14 = sub_1C1B95128();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_21;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v66[0] = v16;
    *v15 = 67109378;
    *(v15 + 4) = 36;
    *(v15 + 8) = 2080;
    v35 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v4 + 16))(v6, &v34[v35], v3);
    v36 = sub_1C1B945A8();
    v38 = v37;
    (*(v4 + 8))(v6, v3);
    v39 = sub_1C1AC7650(v36, v38, v66);

    *(v15 + 10) = v39;
    v22 = "Context ID: %-*s No sponsorship keys specified.";
    goto LABEL_20;
  }

  LOBYTE(v67[0]) = v10;

  v26 = v1;
  v27 = sub_1C1B8B1B8(v25, v67, a1);
  v28 = v27;
  if (v27 >> 62)
  {
    if (sub_1C1B953A8())
    {
      goto LABEL_11;
    }
  }

  else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1C6907490](0, v28);
      goto LABEL_14;
    }

    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(v28 + 32);
LABEL_14:
      v30 = v29;

      v31 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
      swift_beginAccess();
      if (*&v30[v31] == 1030)
      {
        v32 = sub_1C1B90D0C(a1, 1030);
      }

      else
      {
        v32 = sub_1C1B90F08(v30, a1);
      }

      v41 = v32;
      swift_beginAccess();
      v42 = v41;
      MEMORY[0x1C6906EA0]();
      if (*((*(v26 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v26 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C1B94F08();
      }

      sub_1C1B94F48();
      swift_endAccess();

      return v42;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (qword_1EDE6C4E0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v43 = sub_1C1B94BE8();
  sub_1C1AB4454(v43, qword_1EDE6D058);

  v44 = a1;
  v45 = sub_1C1B94BC8();
  v46 = sub_1C1B95108();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67[0] = v65;
    *v47 = 67109634;
    *(v47 + 4) = 36;
    *(v47 + 8) = 2080;
    v64 = v46;
    v48 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v4 + 16))(v6, &v44[v48], v3);
    v49 = sub_1C1B945A8();
    v51 = v50;
    (*(v4 + 8))(v6, v3);
    v52 = sub_1C1AC7650(v49, v51, v67);

    *(v47 + 10) = v52;
    *(v47 + 18) = 2080;
    v53 = MEMORY[0x1C6906ED0](v24, MEMORY[0x1E69E6158]);
    v55 = v54;

    v56 = sub_1C1AC7650(v53, v55, v67);

    *(v47 + 20) = v56;
    _os_log_impl(&dword_1C1AA2000, v45, v64, "Context ID: %-*s No sponsorship ads found for with keys %s.", v47, 0x1Cu);
    v57 = v65;
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v57, -1, -1);
    MEMORY[0x1C6908230](v47, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v58 = *(v26 + 24);
  if (v58 >> 62)
  {
    v59 = sub_1C1B953A8();
  }

  else
  {
    v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v59)
  {
    v60 = 201;
  }

  else
  {
    v60 = 1010;
  }

  v61 = sub_1C1B90D0C(v44, v60);
  swift_beginAccess();
  v62 = v61;
  MEMORY[0x1C6906EA0]();
  if (*((*(v26 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v26 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C1B94F08();
  }

  sub_1C1B94F48();
  swift_endAccess();
  return v62;
}

void sub_1C1AADF84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return;
  }

  v3 = (a1 + 40);
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = *(v3 - 1);
    v6 = *v3 >> 5;
    if (v6 > 3)
    {
      if (*v3 >> 5 > 5u)
      {
        if (v6 == 6)
        {
          if (v5 < 0)
          {
            goto LABEL_167;
          }

          if (v5)
          {
            v10 = sub_1C1B94F28();
            *(v10 + 16) = v5;
            memset_pattern16((v10 + 32), &unk_1C1BA2190, 8 * v5);
          }

          else
          {
            v5 = *(v2 + 16);
            v10 = v2;
          }

          v35 = *(v4 + 2);
          v36 = v35 + v5;
          if (__OFADD__(v35, v5))
          {
            goto LABEL_173;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v36 <= *(v4 + 3) >> 1)
          {
            if (!*(v10 + 16))
            {
              goto LABEL_98;
            }
          }

          else
          {
            if (v35 <= v36)
            {
              v40 = v35 + v5;
            }

            else
            {
              v40 = v35;
            }

            v4 = sub_1C1AAB0E8(isUniquelyReferenced_nonNull_native, v40, 1, v4);
            if (!*(v10 + 16))
            {
LABEL_98:

              if (v5)
              {
                goto LABEL_185;
              }

              goto LABEL_4;
            }
          }

          v38 = *(v4 + 2);
          if ((*(v4 + 3) >> 1) - v38 < v5)
          {
            goto LABEL_195;
          }

          memcpy(&v4[8 * v38 + 32], (v10 + 32), 8 * v5);

          if (v5)
          {
            v39 = *(v4 + 2);
            v20 = __OFADD__(v39, v5);
            v21 = v39 + v5;
            if (v20)
            {
              goto LABEL_198;
            }

            goto LABEL_3;
          }
        }

        else
        {
          if (v5 < 0)
          {
            goto LABEL_166;
          }

          if (v5)
          {
            v14 = sub_1C1B94F28();
            *(v14 + 16) = v5;
            memset_pattern16((v14 + 32), &unk_1C1BA2180, 8 * v5);
          }

          else
          {
            v5 = *(v2 + 16);
            v14 = v2;
          }

          v59 = *(v4 + 2);
          v60 = v59 + v5;
          if (__OFADD__(v59, v5))
          {
            goto LABEL_174;
          }

          v61 = swift_isUniquelyReferenced_nonNull_native();
          if (v61 && v60 <= *(v4 + 3) >> 1)
          {
            if (!*(v14 + 16))
            {
              goto LABEL_162;
            }
          }

          else
          {
            if (v59 <= v60)
            {
              v64 = v59 + v5;
            }

            else
            {
              v64 = v59;
            }

            v4 = sub_1C1AAB0E8(v61, v64, 1, v4);
            if (!*(v14 + 16))
            {
LABEL_162:

              if (v5)
              {
                __break(1u);
                return;
              }

              goto LABEL_4;
            }
          }

          v62 = *(v4 + 2);
          if ((*(v4 + 3) >> 1) - v62 < v5)
          {
            goto LABEL_188;
          }

          memcpy(&v4[8 * v62 + 32], (v14 + 32), 8 * v5);

          if (v5)
          {
            v63 = *(v4 + 2);
            v20 = __OFADD__(v63, v5);
            v21 = v63 + v5;
            if (v20)
            {
              goto LABEL_199;
            }

            goto LABEL_3;
          }
        }
      }

      else if (v6 == 4)
      {
        if (v5 < 0)
        {
          goto LABEL_169;
        }

        if (v5)
        {
          v8 = sub_1C1B94F28();
          *(v8 + 16) = v5;
          memset_pattern16((v8 + 32), &unk_1C1BA21B0, 8 * v5);
        }

        else
        {
          v5 = *(v2 + 16);
          v8 = v2;
        }

        v23 = *(v4 + 2);
        v24 = v23 + v5;
        if (__OFADD__(v23, v5))
        {
          goto LABEL_176;
        }

        v25 = swift_isUniquelyReferenced_nonNull_native();
        if (v25 && v24 <= *(v4 + 3) >> 1)
        {
          if (!*(v8 + 16))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v23 <= v24)
          {
            v28 = v23 + v5;
          }

          else
          {
            v28 = v23;
          }

          v4 = sub_1C1AAB0E8(v25, v28, 1, v4);
          if (!*(v8 + 16))
          {
LABEL_66:

            if (v5)
            {
              goto LABEL_187;
            }

            goto LABEL_4;
          }
        }

        v26 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v26 < v5)
        {
          goto LABEL_193;
        }

        memcpy(&v4[8 * v26 + 32], (v8 + 32), 8 * v5);

        if (v5)
        {
          v27 = *(v4 + 2);
          v20 = __OFADD__(v27, v5);
          v21 = v27 + v5;
          if (v20)
          {
            goto LABEL_200;
          }

          goto LABEL_3;
        }
      }

      else
      {
        if (v5 < 0)
        {
          goto LABEL_168;
        }

        if (v5)
        {
          v12 = sub_1C1B94F28();
          *(v12 + 16) = v5;
          memset_pattern16((v12 + 32), &unk_1C1BA21A0, 8 * v5);
        }

        else
        {
          v5 = *(v2 + 16);
          v12 = v2;
        }

        v47 = *(v4 + 2);
        v48 = v47 + v5;
        if (__OFADD__(v47, v5))
        {
          goto LABEL_180;
        }

        v49 = swift_isUniquelyReferenced_nonNull_native();
        if (v49 && v48 <= *(v4 + 3) >> 1)
        {
          if (!*(v12 + 16))
          {
            goto LABEL_130;
          }
        }

        else
        {
          if (v47 <= v48)
          {
            v52 = v47 + v5;
          }

          else
          {
            v52 = v47;
          }

          v4 = sub_1C1AAB0E8(v49, v52, 1, v4);
          if (!*(v12 + 16))
          {
LABEL_130:

            if (v5)
            {
              goto LABEL_183;
            }

            goto LABEL_4;
          }
        }

        v50 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v50 < v5)
        {
          goto LABEL_194;
        }

        memcpy(&v4[8 * v50 + 32], (v12 + 32), 8 * v5);

        if (v5)
        {
          v51 = *(v4 + 2);
          v20 = __OFADD__(v51, v5);
          v21 = v51 + v5;
          if (v20)
          {
            goto LABEL_197;
          }

          goto LABEL_3;
        }
      }

      goto LABEL_4;
    }

    if (*v3 >> 5 <= 1u)
    {
      if (v6)
      {
        if (v5 < 0)
        {
          goto LABEL_171;
        }

        if (v5)
        {
          v11 = sub_1C1B94F28();
          *(v11 + 16) = v5;
          memset_pattern16((v11 + 32), &unk_1C1BA21E0, 8 * v5);
        }

        else
        {
          v5 = *(v2 + 16);
          v11 = v2;
        }

        v41 = *(v4 + 2);
        v42 = v41 + v5;
        if (__OFADD__(v41, v5))
        {
          goto LABEL_175;
        }

        v43 = swift_isUniquelyReferenced_nonNull_native();
        if (v43 && v42 <= *(v4 + 3) >> 1)
        {
          if (!*(v11 + 16))
          {
            goto LABEL_114;
          }
        }

        else
        {
          if (v41 <= v42)
          {
            v46 = v41 + v5;
          }

          else
          {
            v46 = v41;
          }

          v4 = sub_1C1AAB0E8(v43, v46, 1, v4);
          if (!*(v11 + 16))
          {
LABEL_114:

            if (v5)
            {
              goto LABEL_184;
            }

            goto LABEL_4;
          }
        }

        v44 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v44 < v5)
        {
          goto LABEL_190;
        }

        memcpy(&v4[8 * v44 + 32], (v11 + 32), 8 * v5);

        if (v5)
        {
          v45 = *(v4 + 2);
          v20 = __OFADD__(v45, v5);
          v21 = v45 + v5;
          if (v20)
          {
            goto LABEL_201;
          }

          goto LABEL_3;
        }
      }

      else
      {
        if (v5 < 0)
        {
          goto LABEL_170;
        }

        if (v5)
        {
          v7 = sub_1C1B94F28();
          *(v7 + 16) = v5;
          bzero((v7 + 32), 8 * v5);
        }

        else
        {
          v5 = *(v2 + 16);
          v7 = v2;
        }

        v15 = *(v4 + 2);
        v16 = v15 + v5;
        if (__OFADD__(v15, v5))
        {
          goto LABEL_178;
        }

        v17 = swift_isUniquelyReferenced_nonNull_native();
        if (v17 && v16 <= *(v4 + 3) >> 1)
        {
          if (!*(v7 + 16))
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v15 <= v16)
          {
            v22 = v15 + v5;
          }

          else
          {
            v22 = v15;
          }

          v4 = sub_1C1AAB0E8(v17, v22, 1, v4);
          if (!*(v7 + 16))
          {
LABEL_50:

            if (v5)
            {
              goto LABEL_186;
            }

            goto LABEL_4;
          }
        }

        v18 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v18 < v5)
        {
          goto LABEL_191;
        }

        memcpy(&v4[8 * v18 + 32], (v7 + 32), 8 * v5);

        if (v5)
        {
          v19 = *(v4 + 2);
          v20 = __OFADD__(v19, v5);
          v21 = v19 + v5;
          if (v20)
          {
            goto LABEL_203;
          }

LABEL_3:
          *(v4 + 2) = v21;
          goto LABEL_4;
        }
      }

      goto LABEL_4;
    }

    if (v6 == 2)
    {
      if (v5 < 0)
      {
        goto LABEL_172;
      }

      if (v5)
      {
        v9 = sub_1C1B94F28();
        *(v9 + 16) = v5;
        memset_pattern16((v9 + 32), &unk_1C1BA21D0, 8 * v5);
      }

      else
      {
        v5 = *(v2 + 16);
        v9 = v2;
      }

      v29 = *(v4 + 2);
      v30 = v29 + v5;
      if (__OFADD__(v29, v5))
      {
        goto LABEL_179;
      }

      v31 = swift_isUniquelyReferenced_nonNull_native();
      if (v31 && v30 <= *(v4 + 3) >> 1)
      {
        if (!*(v9 + 16))
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v29 <= v30)
        {
          v34 = v29 + v5;
        }

        else
        {
          v34 = v29;
        }

        v4 = sub_1C1AAB0E8(v31, v34, 1, v4);
        if (!*(v9 + 16))
        {
LABEL_82:

          if (v5)
          {
            goto LABEL_182;
          }

          goto LABEL_4;
        }
      }

      v32 = *(v4 + 2);
      if ((*(v4 + 3) >> 1) - v32 < v5)
      {
        goto LABEL_189;
      }

      memcpy(&v4[8 * v32 + 32], (v9 + 32), 8 * v5);

      if (v5)
      {
        v33 = *(v4 + 2);
        v20 = __OFADD__(v33, v5);
        v21 = v33 + v5;
        if (v20)
        {
          goto LABEL_202;
        }

        goto LABEL_3;
      }

      goto LABEL_4;
    }

    if (v5 < 0)
    {
      break;
    }

    if (v5)
    {
      v13 = sub_1C1B94F28();
      *(v13 + 16) = v5;
      memset_pattern16((v13 + 32), &unk_1C1BA21C0, 8 * v5);
    }

    else
    {
      v5 = *(v2 + 16);
      v13 = v2;
    }

    v53 = *(v4 + 2);
    v54 = v53 + v5;
    if (__OFADD__(v53, v5))
    {
      goto LABEL_177;
    }

    v55 = swift_isUniquelyReferenced_nonNull_native();
    if (v55 && v54 <= *(v4 + 3) >> 1)
    {
      if (!*(v13 + 16))
      {
        goto LABEL_146;
      }
    }

    else
    {
      if (v53 <= v54)
      {
        v58 = v53 + v5;
      }

      else
      {
        v58 = v53;
      }

      v4 = sub_1C1AAB0E8(v55, v58, 1, v4);
      if (!*(v13 + 16))
      {
LABEL_146:

        if (v5)
        {
          goto LABEL_181;
        }

        goto LABEL_4;
      }
    }

    v56 = *(v4 + 2);
    if ((*(v4 + 3) >> 1) - v56 < v5)
    {
      goto LABEL_192;
    }

    memcpy(&v4[8 * v56 + 32], (v13 + 32), 8 * v5);

    if (v5)
    {
      v57 = *(v4 + 2);
      v20 = __OFADD__(v57, v5);
      v21 = v57 + v5;
      if (v20)
      {
        goto LABEL_196;
      }

      goto LABEL_3;
    }

LABEL_4:
    v3 += 16;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
}

uint64_t sub_1C1AAE7B4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C1B953A8())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x1C6907490](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1C1B954F8();
        sub_1C1B95528();
        v4 = v15;
        sub_1C1B95538();
        sub_1C1B95508();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

char *sub_1C1AAE960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, double a7, double a8)
{
  v182 = a4;
  v183 = a6;
  v200 = a5;
  v201 = a1;
  v196 = a2;
  v11 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v177 = v164 - v12;
  v13 = sub_1C1B94588();
  v198 = *(v13 - 8);
  v199 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v165 = v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v195 = v164 - v16;
  v17 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v179 = v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v197 = v164 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v194 = v164 - v22;
  v23 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v164 - v24;
  v26 = sub_1C1B945F8();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v164 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = v164 - v31;
  sub_1C1B945E8();
  v33 = type metadata accessor for ContentRepresentation(0);
  v34 = objc_allocWithZone(v33);
  v35 = sub_1C1B945A8();
  v36 = &v34[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v36 = v35;
  v36[1] = v37;
  v192 = v27;
  (*(v27 + 16))(&v34[OBJC_IVAR___APPCContentRepresentation_id], v32, v26);
  v181 = a3;
  *&v34[OBJC_IVAR___APPCContentRepresentation_adType] = a3;
  *&v34[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = 0;
  *&v34[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v34[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v38 = &v34[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v38 = a7;
  v38[1] = a8;
  *&v34[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v34[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = 0;
  v206.receiver = v34;
  v206.super_class = v33;
  v39 = objc_msgSendSuper2(&v206, sel_init);
  v40 = *(v27 + 8);
  v191 = v32;
  v40(v32, v26);
  sub_1C1B945E8();
  v193 = sub_1C1B945A8();
  v186 = v41;
  v189 = v27 + 8;
  v190 = v40;
  v40(v30, v26);
  v42 = sub_1C1B944A8();
  v43 = *(*(v42 - 8) + 56);
  v188 = v25;
  (v43)(v25, 1, 1, v42);
  v44 = v199;
  v45 = *(v198 + 56);
  (v45)(v194, 1, 1, v199);
  swift_unknownObjectRetain();
  sub_1C1B94518();
  sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C1B9FE60;
  v175 = v46;
  v187 = v39;
  *(v46 + 32) = v39;
  (v45)(v197, 1, 1, v44);
  v180 = type metadata accessor for PromotedContent(0);
  v47 = objc_allocWithZone(v180);
  v48 = &v47[OBJC_IVAR___APPCPromotedContent_impressionId];
  *v48 = 0;
  *(v48 + 1) = 0;
  v176 = v48;
  v168 = &v47[OBJC_IVAR___APPCPromotedContent_context];
  swift_unknownObjectWeakInit();
  v169 = &v47[OBJC_IVAR___APPCPromotedContent_metaData];
  *&v47[OBJC_IVAR___APPCPromotedContent_metaData] = 0;
  v170 = &v47[OBJC_IVAR___APPCPromotedContent_disclosureURL];
  v43();
  v49 = v26;
  v50 = &v47[OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload];
  *v50 = 0;
  v50[1] = 0;
  v51 = &v47[OBJC_IVAR___APPCPromotedContent_brandName];
  *v51 = 0;
  v51[1] = 0;
  v52 = &v47[OBJC_IVAR___APPCPromotedContent_campaignText];
  *v52 = 0;
  v52[1] = 0;
  v172 = v52;
  v173 = &v47[OBJC_IVAR___APPCPromotedContent_installAttribution];
  *v173 = 0;
  *&v47[OBJC_IVAR___APPCPromotedContent_bestRepresentation] = 0;
  v174 = &v47[OBJC_IVAR___APPCPromotedContent_error];
  *&v47[OBJC_IVAR___APPCPromotedContent_error] = 0;
  v171 = &v47[OBJC_IVAR___APPCPromotedContent_startDate];
  v45();
  *&v47[OBJC_IVAR___APPCPromotedContent_mediaMetricHelper] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_attachedToView] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_vended] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_discarded] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_consumed] = 0;
  v185 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *&v47[OBJC_IVAR___APPCPromotedContent_impressionThreshold] = 0x3FF0000000000000;
  (v45)(&v47[OBJC_IVAR___APPCPromotedContent_videoRequestStartDate], 1, 1, v44);
  v47[OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy] = 0;
  v53 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v164[1] = type metadata accessor for MetricEventsTracker(0);
  swift_allocObject();
  v54 = sub_1C1AB0510();
  v178 = v53;
  *&v47[v53] = v54;
  *&v47[OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v55 = &v47[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v55 = 0;
  v55[1] = 0;
  v56 = &v47[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
  *v56 = 0;
  v56[8] = 1;
  v57 = &v47[OBJC_IVAR___APPCPromotedContent__contextIdentifier];
  v58 = *(v192 + 56);
  v192 += 56;
  v167 = v58;
  v58(&v47[OBJC_IVAR___APPCPromotedContent__contextIdentifier], 1, 1, v26);
  v59 = &v47[OBJC_IVAR___APPCPromotedContent_discardReason];
  *v59 = 0;
  v59[8] = 1;
  v60 = v196;
  *&v47[OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete] = MEMORY[0x1E69E7CC0];
  *&v47[OBJC_IVAR___APPCPromotedContent_appImpressionTask] = 0;
  v61 = &v47[OBJC_IVAR___APPCPromotedContent_appImpression];
  *(v61 + 4) = 0;
  *v61 = 0u;
  *(v61 + 1) = 0u;
  v47[OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView] = 0;
  if (v60)
  {
    v62 = v187;
    v63 = v60;
    v64 = v201;
  }

  else
  {
    strcpy(v202, "placeholder: ");
    HIWORD(v202[1]) = -4864;
    v65 = v187;
    v66 = v191;
    sub_1C1B945E8();
    v67 = sub_1C1B945A8();
    v69 = v68;
    v190(v66, v26);
    MEMORY[0x1C6906DF0](v67, v69);
    v60 = 0;
    v49 = v26;

    v64 = v202[0];
    v63 = v202[1];
  }

  LODWORD(v184) = v60 == 0;
  v47[OBJC_IVAR___APPCPromotedContent_placeholder] = v184;
  v70 = &v47[OBJC_IVAR___APPCPromotedContent_identifier];
  v201 = v64;
  *v70 = v64;
  v70[1] = v63;
  swift_beginAccess();
  v71 = v200;
  swift_unknownObjectWeakAssign();
  v196 = v63;

  v72 = [v71 identifier];
  v73 = v177;
  sub_1C1B945D8();

  v74 = v49;
  v167(v73, 0, 1, v49);
  swift_beginAccess();
  sub_1C1AB0860(v73, v57);
  swift_endAccess();
  v75 = v169;
  swift_beginAccess();
  *v75 = 0;

  v76 = v170;
  swift_beginAccess();
  sub_1C1B7953C(v188, v76, &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  swift_beginAccess();
  *v50 = 0;
  v50[1] = 0;

  *&v47[OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation] = 0;
  swift_beginAccess();
  *v51 = 0;
  v51[1] = 0;

  v77 = v172;
  swift_beginAccess();
  *v77 = 0;
  v77[1] = 0;

  v78 = v171;
  swift_beginAccess();
  sub_1C1B7953C(v194, v78, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  (*(v198 + 16))(&v47[OBJC_IVAR___APPCPromotedContent_expirationDate], v195, v199);
  *&v47[OBJC_IVAR___APPCPromotedContent_serverUnfilledReason] = v183;
  *&v47[OBJC_IVAR___APPCPromotedContent_representations] = v175;
  v79 = v173;
  swift_beginAccess();
  v80 = *v79;
  *v79 = 0;

  v81 = v174;
  swift_beginAccess();
  v82 = *v81;
  *v81 = 0;

  v83 = &v47[OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp];
  *v83 = 0;
  v83[8] = 1;
  v84 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v85 = *&v71[v84];
  if (v85 && (v86 = (v85 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement), swift_beginAccess(), (v87 = v86[1]) != 0))
  {
    v88 = sub_1C1AB08D0(*v86, v87);
    v90 = v190;
    v89 = v191;
  }

  else
  {
    v91 = [v200 current];
    v90 = v190;
    v89 = v191;
    if (v91)
    {
      v88 = [v91 placement];
      swift_unknownObjectRelease();
    }

    else
    {
      v88 = 0;
    }
  }

  v166 = v49;
  *&v47[OBJC_IVAR___APPCPromotedContent_placement] = v88;
  v92 = v185;
  swift_beginAccess();
  *&v47[v92] = 0x3FF0000000000000;
  v93 = v176;
  swift_beginAccess();
  *v93 = 0;
  *(v93 + 1) = 0;

  v94 = &v47[OBJC_IVAR___APPCPromotedContent_journeyIdentifier];
  v95 = v186;
  *v94 = v193;
  v94[1] = v95;
  sub_1C1AA7E30(v197, &v47[OBJC_IVAR___APPCPromotedContent_receivedReferenceTime], &qword_1EBF07F50, &qword_1C1B9A590);
  *&v47[OBJC_IVAR___APPCPromotedContent_adServerEnvironments] = 0;

  v96 = [v200 identifier];
  sub_1C1B945D8();

  v97 = sub_1C1B945A8();
  v99 = v98;
  v90(v89, v74);
  v191 = objc_opt_self();
  [v191 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v100 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v176 = type metadata accessor for PrimitiveCreator();
  v101 = objc_allocWithZone(v176);
  v102 = &v101[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v103 = v196;
  *v102 = v201;
  v102[1] = v103;
  v104 = &v101[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v183 = v97;
  *v104 = v97;
  v104[1] = v99;
  v105 = &v101[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v105 = v193;
  v105[1] = v95;
  v106 = &v101[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v106 = 0;
  v106[1] = 0;
  v101[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = v184;
  *&v101[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v100;
  *&v101[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v101[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  v107 = qword_1EDE6C538;

  v192 = v99;

  swift_unknownObjectRetain();
  if (v107 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v101[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v108 = v176;
  v205.receiver = v101;
  v205.super_class = v176;
  v109 = objc_msgSendSuper2(&v205, sel_init);
  swift_unknownObjectRelease();
  v177 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *&v47[OBJC_IVAR___APPCPromotedContent_primitiveCreator] = v109;
  v202[0] = 6911329;
  v202[1] = 0xE300000000000000;
  sub_1C1B945E8();
  v110 = sub_1C1B945A8();
  v112 = v111;
  v190(v89, v166);
  MEMORY[0x1C6906DF0](v110, v112);

  v114 = v202[0];
  v113 = v202[1];
  [v191 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v115 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v116 = objc_allocWithZone(v108);
  v117 = &v116[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v118 = v196;
  *v117 = v201;
  v117[1] = v118;
  v119 = &v116[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v120 = v192;
  *v119 = v183;
  v119[1] = v120;
  v121 = &v116[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v121 = v114;
  v121[1] = v113;
  v122 = &v116[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v122 = 0;
  v122[1] = 0;
  v116[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = v184;
  *&v116[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v115;
  *&v116[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v116[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  sub_1C1AAD2FC(qword_1EDE6C540, &v116[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v204.receiver = v116;
  v204.super_class = v108;

  v123 = objc_msgSendSuper2(&v204, sel_init);
  v184 = OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator;
  *&v47[OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator] = v123;
  *&v47[OBJC_IVAR___APPCPromotedContent_diagnosticCode] = -1;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  sub_1C1B94908();
  swift_allocObject();
  v124 = sub_1C1B948E8();
  v125 = v179;
  sub_1C1AA7E30(v197, v179, &qword_1EBF07F50, &qword_1C1B9A590);
  v127 = v198;
  v126 = v199;
  v128 = (*(v198 + 48))(v125, 1, v199);
  v189 = v124;
  if (v128 == 1)
  {
    sub_1C1AA7C8C(v125, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v129 = v165;
    (*(v127 + 32))(v165, v125, v126);
    sub_1C1B948D8();
    (*(v127 + 8))(v129, v126);
  }

  type metadata accessor for MetricsUnloadTracker();
  v130 = swift_allocObject();
  v130[2] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v130 + 24) = 0;
  v190 = v130;
  v130[4] = 1;
  v179 = *&v47[v177];
  swift_unknownObjectRetain();
  [v191 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v131 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v132 = 0;
  v133 = 0;
  v134 = *&v47[OBJC_IVAR___APPCPromotedContent_placement] - 7005;
  if (v134 <= 3)
  {
    v132 = qword_1C1BA4770[v134];
    v133 = qword_1C1BA4790[v134];
  }

  v177 = v132;
  v135 = type metadata accessor for JourneyMetricsHelper(0);
  ObjectType = swift_getObjectType();
  v137 = v196;

  v138 = v192;

  v139 = v189;

  v140 = v190;

  LOBYTE(v163) = 1;
  v141 = v137;
  v142 = v183;
  v143 = sub_1C1AB0E7C(v201, v141, v183, v138, v193, v186, v139, v140, v179, v131, v177, v133, 0, 0, 0, 0, 0, v163, v135, ObjectType);
  *&v47[OBJC_IVAR___APPCPromotedContent_metricsHelper] = v143;
  [v143 setImpressionThresholdDuration_];
  v144 = *&v47[v184];
  swift_unknownObjectRetain();
  [v191 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v145 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v146 = v178;
  swift_beginAccess();
  if (*&v47[v146])
  {
    v147 = *&v47[v146];
  }

  else
  {
    swift_allocObject();
    v147 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *&v47[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper] = sub_1C1AB1708(v142, v192, v201, v196, v144, v145, v147);
  v47[OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd] = 0;
  v203.receiver = v47;
  v203.super_class = v180;
  v148 = objc_msgSendSuper2(&v203, sel_init);
  v149 = sub_1C1AB17D0(v139, v190);
  v150 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  *&v148[v150] = v149;
  swift_unknownObjectRelease();
  v151 = *&v148[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper];
  swift_unknownObjectRetain();
  [v151 setNetworkType_];
  swift_unknownObjectRelease();
  v152 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  [*&v148[v152] setPromotedContent_];
  v153 = *&v148[v152];
  v154 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v202[4] = sub_1C1B795A4;
  v202[5] = v154;
  v202[0] = MEMORY[0x1E69E9820];
  v202[1] = 1107296256;
  v202[2] = sub_1C1B196F0;
  v202[3] = &unk_1F4154080;
  v155 = _Block_copy(v202);

  v156 = [v153 registerForPCUsedEventWithAction_];
  swift_unknownObjectRelease();
  _Block_release(v155);
  v157 = sub_1C1B94D88();
  v159 = v158;

  v160 = &v148[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v160 = v157;
  v160[1] = v159;
  v161 = v200;

  sub_1C1AA7C8C(v197, &qword_1EBF07F50, &qword_1C1B9A590);
  (*(v198 + 8))(v195, v199);
  sub_1C1AA7C8C(v194, &qword_1EBF07F50, &qword_1C1B9A590);
  sub_1C1AA7C8C(v188, &qword_1EBF07AC8, &qword_1C1B9CED0);
  [swift_unknownObjectRetain() createdWithAdType:v181 container:v182];

  swift_unknownObjectRelease();
  return v148;
}

uint64_t sub_1C1AAFF68()
{
  MEMORY[0x1C6908300](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t type metadata accessor for ContentRepresentation(uint64_t a1)
{
  result = qword_1EDE6C870;
  if (!qword_1EDE6C870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1AAFFEC(uint64_t a1)
{
  result = sub_1C1B945F8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for PromotedContent(uint64_t a1)
{
  result = qword_1EDE6CA68;
  if (!qword_1EDE6CA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1AB00FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1B952D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C1AB0150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1B952D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C1AB01A4(uint64_t a1)
{
  sub_1C1AB0150(319, &qword_1EDE6CD38, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    sub_1C1AB0150(319, &qword_1EDE6CDD0, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      sub_1C1B94588();
      if (v3 <= 0x3F)
      {
        sub_1C1AB0150(319, &qword_1EDE6C898, MEMORY[0x1E69695A8]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t type metadata accessor for MetricEventsTracker(uint64_t a1)
{
  result = qword_1EDE6CC90;
  if (!qword_1EDE6CC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1AB0460(uint64_t a1)
{
  sub_1C1AA3EA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C1AB0510()
{
  v1 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_finalPromotedContent;
  v2 = sub_1C1B94588();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placeholderPlacedTimestamp, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_replacedPlaceholderTimestamp, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adRequestTimestamp, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adResponseTimestamp, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdRequestTimestamp, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdResponseTimestamp, 1, 1, v2);
  v4 = (v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_analyticsEventName);
  *v4 = 0x676E696D69746461;
  v4[1] = 0xE800000000000000;
  v5 = (v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalKey);
  *v5 = 0x6C61767265746E49;
  v5[1] = 0xE800000000000000;
  v6 = v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalTypeKey;
  strcpy((v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalTypeKey), "IntervalType");
  *(v6 + 13) = 0;
  *(v6 + 14) = -5120;
  v7 = (v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_networkTypeKey);
  *v7 = 0x546B726F7774654ELL;
  v7[1] = 0xEB00000000657079;
  v8 = v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placementTypeKey;
  strcpy((v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placementTypeKey), "PlacementType");
  *(v8 + 14) = -4864;
  v9 = (v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_failedKey);
  *v9 = 0x64656C696146;
  v9[1] = 0xE600000000000000;
  return v0;
}

uint64_t sub_1C1AB0860(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1AB08D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x414E454557544542 && a2 == 0xEE00454C43495452 || (sub_1C1B95888() & 1) != 0)
  {
    return 103;
  }

  if (a1 == 0x4C43495452414E49 && a2 == 0xE900000000000045 || (sub_1C1B95888() & 1) != 0 || a1 == 0x4E4945564954414ELL && a2 == 0xEF454C4349545241 || (sub_1C1B95888() & 1) != 0)
  {
    return 100;
  }

  if (a1 == 0x444545464E49 && a2 == 0xE600000000000000)
  {
    return 101;
  }

  v5 = sub_1C1B95888();
  v7 = a1 == 0x4E4945564954414ELL && a2 == 0xEC00000044454546;
  result = 101;
  if ((v5 & 1) == 0 && !v7)
  {
    if (sub_1C1B95888())
    {
      return 101;
    }

    if (a1 == 0x414E494F45444956 && a2 == 0xEE00454C43495452 || (sub_1C1B95888() & 1) != 0 || a1 == 0x464E494F45444956 && a2 == 0xEB00000000444545)
    {
      return 104;
    }

    else if (sub_1C1B95888())
    {
      return 104;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C1AB0B14@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C1B94A28();
  v14 = v2;
  v15 = sub_1C1AB0D08();
  v3 = sub_1C1AB0D60(v13);
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E6989E78], v2);
  LOBYTE(v2) = sub_1C1B94688();
  sub_1C1AA86F8(v13);
  if (v2)
  {
    v4 = sub_1C1AC1F08(&qword_1EBF08BA8, &qword_1C1B9E038);
    swift_allocObject();
    v5 = sub_1C1B94798();
    v14 = v4;
    v15 = sub_1C1AB0DC4(&unk_1EDE6C4F0, &qword_1EBF08BA8, &qword_1C1B9E038, MEMORY[0x1E6989D30]);
    v13[0] = v5;
    v6 = &qword_1EBF08BB0;
    v7 = &qword_1C1B9E040;
    v8 = sub_1C1AC1F08(&qword_1EBF08BB0, &qword_1C1B9E040);
    swift_allocObject();
    v9 = sub_1C1B94888();
    v10 = &unk_1EBF08BB8;
    v11 = MEMORY[0x1E6989DC8];
  }

  else
  {
    v6 = &qword_1EBF08BA8;
    v7 = &qword_1C1B9E038;
    v8 = sub_1C1AC1F08(&qword_1EBF08BA8, &qword_1C1B9E038);
    swift_allocObject();
    v9 = sub_1C1B94798();
    v10 = &unk_1EDE6C4F0;
    v11 = MEMORY[0x1E6989D30];
  }

  result = sub_1C1AB0DC4(v10, v6, v7, v11);
  a1[3] = v8;
  a1[4] = result;
  *a1 = v9;
  return result;
}

unint64_t sub_1C1AB0D08()
{
  result = qword_1EDE6C4E8;
  if (!qword_1EDE6C4E8)
  {
    sub_1C1B94A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C4E8);
  }

  return result;
}

uint64_t *sub_1C1AB0D60(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1C1AB0DC4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for JourneyMetricsHelper(uint64_t a1)
{
  result = qword_1EDE6C678;
  if (!qword_1EDE6C678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1C1AB0E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v31 = objc_allocWithZone(type metadata accessor for JourneyMetricsHelper(0));
  v30 = a18 & 1;

  return sub_1C1AB0F40(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v30, v31);
}

id sub_1C1AB0F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, char a18, _BYTE *a19)
{
  swift_unknownObjectWeakInit();
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCollapsedOnScreen] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didUnload] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didImpress] = 0;
  v22 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionStartDate;
  v23 = sub_1C1B94588();
  v24 = *(*(v23 - 8) + 56);
  v24(&a19[v22], 1, 1, v23);
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionDuration] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isClickImpression] = 0;
  v24(&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalImpressionStartDate], 1, 1, v23);
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalAccumulatedImpressionDuration] = 0;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics] = 0;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionThresholdDuration] = 0;
  v25 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_originalContentIdentifier];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext] = 0;
  v27 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_serverUnfilledReason];
  *v27 = 0;
  v27[8] = 1;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionThreshold] = 0x4014000000000000;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionThresholdVOEnabled] = 0x4049000000000000;
  v28 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionTime];
  *v28 = 0;
  v28[8] = 1;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_viewReady] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCreated] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenPlaced] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_stop] = 0;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unfilledReasons] = 0;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_placedProperties] = 0;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_eventCount] = 1;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___shownSet] = 0;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___partiallyShownSet] = 0;
  a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_leftAdDestinationWasReported] = 0;
  v29 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_adServerEnvironment;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_adServerEnvironment] = 0;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_percentVisible] = 50;
  v30 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unloadReason];
  *v30 = 0;
  v30[8] = 1;
  v31 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_onPromotedContentComplete;
  *&a19[v31] = sub_1C1AB1568(MEMORY[0x1E69E7CC0]);
  v32 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier];
  *v32 = a1;
  v32[1] = a2;
  v33 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_journeyIdentifier];
  *v33 = a5;
  v33[1] = a6;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_primitiveCreator] = a9;
  v34 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_contextIdentifier];
  *v34 = a3;
  v34[1] = a4;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_notificationOwner] = a10;
  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_orderVendor] = a7;
  v35 = &a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_clientSource];
  *v35 = a11;
  v35[1] = a12;
  *&a19[v29] = a13;
  swift_unknownObjectRetain();

  *&a19[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unloadManager] = a8;
  *v25 = a14;
  v25[1] = a15;

  v36 = *&a19[v26];
  *&a19[v26] = a16;
  v37 = a16;

  *v27 = a17;
  v27[8] = a18 & 1;
  v56.receiver = a19;
  v56.super_class = type metadata accessor for JourneyMetricsHelper(0);
  v38 = objc_msgSendSuper2(&v56, sel_init);
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v39 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v40 = sub_1C1B94D78();
    v41 = [v39 initWithSuiteName_];

    if (!v41)
    {
      v41 = [objc_opt_self() standardUserDefaults];
    }

    v42 = sub_1C1B94D78();
    v43 = [v41 BOOLForKey_];

    v44 = sub_1C1B95118();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v45 = sub_1C1B95298();
    if (v43)
    {
      sub_1C1B94BA8(v44, &dword_1C1AA2000, v45, "Attaching Diagnostics", 21, 2, MEMORY[0x1E69E7CC0]);

      v46 = objc_allocWithZone(type metadata accessor for JourneyMetricsHelperDiagnostics());
      v47 = v38;
      v48 = sub_1C1ACFB88(v47);

      swift_unknownObjectRelease();

      v49 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
      swift_beginAccess();
      v37 = *&v47[v49];
      *&v47[v49] = v48;
    }

    else
    {
      sub_1C1B94BA8(v44, &dword_1C1AA2000, v45, "NOT Attaching Diagnostics", 25, 2, MEMORY[0x1E69E7CC0]);

      swift_unknownObjectRelease();

      v37 = v41;
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v38;
}

unint64_t sub_1C1AB157C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1C1AC1F08(a2, a3);
    v5 = sub_1C1B955C8();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_1C1AA7C14(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1C1AB1708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for DiagnosticMetricsHelper();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType] = 0;
  v16 = &v15[OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = &v15[OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier];
  *v17 = a3;
  *(v17 + 1) = a4;
  *&v15[OBJC_IVAR___APPCDiagnosticMetricsHelper_primitiveCreator] = a5;
  *&v15[OBJC_IVAR___APPCDiagnosticMetricsHelper_notificationOwner] = a6;
  *&v15[OBJC_IVAR___APPCDiagnosticMetricsHelper_metricEventsTracking] = a7;
  v19.receiver = v15;
  v19.super_class = v14;
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_1C1AB17D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = sub_1C1B945F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  v12 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = *(v3 + v12);
    v18 = (v3 + OBJC_IVAR___APPCPromotedContent_identifier);
    swift_beginAccess();
    v20 = *v18;
    v19 = v18[1];

    LOBYTE(v20) = sub_1C1AB1C0C(v20, v19, v17);

    if ((v20 & 1) == 0)
    {

      v22 = sub_1C1AB2030(v21);

      if (!v22)
      {
        return 0;
      }
    }

LABEL_9:
    v23 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
    swift_beginAccess();
    sub_1C1AA7E30(v3 + v23, v11, &unk_1EBF098E0, &qword_1C1BA22A0);
    if ((*(v6 + 48))(v11, 1, v5))
    {
      sub_1C1AA7C8C(v11, &unk_1EBF098E0, &qword_1C1BA22A0);
      sub_1C1B945E8();
    }

    else
    {
      (*(v6 + 16))(v8, v11, v5);
      sub_1C1AA7C8C(v11, &unk_1EBF098E0, &qword_1C1BA22A0);
    }

    v37 = sub_1C1B945A8();
    v25 = v24;
    (*(v6 + 8))(v8, v5);
    v26 = type metadata accessor for MediaMetricsHelper(0);
    v27 = (v3 + OBJC_IVAR___APPCPromotedContent_identifier);
    swift_beginAccess();
    v28 = *v27;
    v29 = v27[1];
    v30 = *(v3 + OBJC_IVAR___APPCPromotedContent_primitiveCreator);
    v31 = objc_opt_self();

    swift_unknownObjectRetain();
    [v31 daemonDeliveryClass];
    swift_getObjCClassMetadata();
    v32 = [swift_getObjCClassFromMetadata() daemonDelivery];
    ObjectType = swift_getObjectType();

    v34 = a1;
    v35 = v38;

    v36 = sub_1C1B18874(v37, v25, v28, v29, v34, v30, v35, v32, v26, ObjectType);
    swift_unknownObjectWeakAssign();
    sub_1C1B12894();
    return v36;
  }

  result = sub_1C1B953A8();
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v13 & 0xC000000000000001) != 0)
  {

    v15 = MEMORY[0x1C6907490](0, v13);

LABEL_6:
    v16 = [v15 adType];
    swift_unknownObjectRelease();
    if (v16 == 3)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
    swift_unknownObjectRetain();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1AB1C0C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1C1B944A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    result = sub_1C1B953A8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C6907490](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    swift_unknownObjectRetain();
  }

  type metadata accessor for BannerRepresentation(0);
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v14 = *(v13 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo);
  if (!v14)
  {
    swift_unknownObjectRelease();
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_12;
  }

  sub_1C1AC5430(v14 + OBJC_IVAR___APPCOutstreamVideoInfo_videoAssetURL, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    swift_unknownObjectRelease();
LABEL_12:
    sub_1C1AC54A0(v7);
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  if (a2)
  {
    (*(v9 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = sub_1C1B95128();
    sub_1C1AC53E4();
    v16 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C1B98E60;
    v18 = sub_1C1B94468();
    v20 = v19;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1C1AA5E7C();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    sub_1C1B94BA8(v15, &dword_1C1AA2000, v16, "isOutstreamVideoAd with asset url=%{public}@ sent a nil identifier, please file a radar", 87, 2, v17);
    swift_unknownObjectRelease();

    (*(v9 + 8))(v11, v8);
  }

  return 1;
}

uint64_t type metadata accessor for BannerRepresentation(uint64_t a1)
{
  result = qword_1EDE6C780;
  if (!qword_1EDE6C780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1C1AB2030(_BOOL8 result)
{
  if (result >> 62)
  {
    v5 = result;
    v6 = sub_1C1B953A8();
    result = v5;
    if (!v6)
    {
      return 0;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C6907490](0, result);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    swift_unknownObjectRetain();
  }

  type metadata accessor for BannerRepresentation(0);
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR___APPCBannerRepresentation_appAdTemplateType);
  swift_unknownObjectRelease();
  return qword_1F414DA88 == v2 || unk_1F414DA90 == v2 || qword_1F414DA98 == v2;
}

uint64_t sub_1C1AB2120()
{
  v1 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
  swift_beginAccess();
  if (!*(v0 + v1))
  {
    return 0;
  }

  type metadata accessor for VideoRepresentation(0);
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  if (*(v0 + OBJC_IVAR___APPCPromotedContent_overriddenAdType + 8))
  {
    if ([swift_unknownObjectRetain() adType] != 3)
    {
LABEL_5:
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___APPCPromotedContent_overriddenAdType);
    swift_unknownObjectRetain();
    if (v3 != 3)
    {
      goto LABEL_5;
    }
  }

  v4 = sub_1C1B67B84();
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  if (!*(v4 + 16) || (v6 = sub_1C1AA7C14(0x697463656E6E6F63, 0xEE00657079546E6FLL), (v7 & 1) == 0))
  {

LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  sub_1C1AAA7B8(*(v5 + 56) + 32 * v6, v11);

  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v8 = v10;
    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
LABEL_17:
  v9 = sub_1C1B1945C(v8);
  if (v9 >= 0xCu)
  {
    return 3;
  }

  else
  {
    return qword_1C1BA4110[v9];
  }
}

uint64_t sub_1C1AB2414()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t JourneyMetricsHelper.registerForPCUsedEvent(action:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v7 = [v6 UUIDString];
  v8 = sub_1C1B94D88();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_onPromotedContentComplete;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v3 + v12);
  *(v3 + v12) = 0x8000000000000000;
  sub_1C1AB25E4(sub_1C1B4AAC0, v11, v8, v10, isUniquelyReferenced_nonNull_native);

  *(v3 + v12) = v17;
  swift_endAccess();
  v14 = [v6 UUIDString];
  v15 = sub_1C1B94D88();

  return v15;
}

uint64_t sub_1C1AB25AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1AB2610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void), void (*a7)(uint64_t, void))
{
  v10 = v7;
  v16 = *v7;
  v17 = sub_1C1AA7C14(a3, a4);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 < v22 || (a5 & 1) != 0)
    {
      a7(v22, a5 & 1);
      v17 = sub_1C1AA7C14(a3, a4);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_1C1B958E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      a6();
      v17 = v25;
    }
  }

  v27 = *v10;
  if (v23)
  {
    v28 = (v27[7] + 16 * v17);
    *v28 = a1;
    v28[1] = a2;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 16 * v17);
  *v30 = a3;
  v30[1] = a4;
  v31 = (v27[7] + 16 * v17);
  *v31 = a1;
  v31[1] = a2;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

uint64_t sub_1C1AB27B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1C1AC1F08(a3, a4);
  v35 = v6;
  result = sub_1C1B955B8();
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
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = 16 * (v20 | (v10 << 6));
      v24 = (*(v7 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v36 = *(*(v7 + 56) + v23);
      if ((v35 & 1) == 0)
      {
      }

      sub_1C1B95958();
      sub_1C1B94DE8();
      result = sub_1C1B959A8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = 16 * v17;
      v19 = (*(v9 + 48) + v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v9 + 56) + v18) = v36;
      ++*(v9 + 16);
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1C1AB2B4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1C1B94A58();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1B94A68();
  if (a1 && [a1 bestRepresentation])
  {
    type metadata accessor for ClientLayoutRepresentation(0);
    swift_dynamicCastClass();
    swift_unknownObjectRelease();
  }

  v14 = sub_1C1AB301C(a3);
  v15 = 7030;
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 8)
      {
        a2 = 7038;
      }

      else if (a2 == 6)
      {
        switch(a3)
        {
          case 7005:
            a2 = 7036;
            break;
          case 7007:
            a2 = 7040;
            break;
          case 7006:
            if ((a5 & 1) == 0)
            {
              v13 = sub_1C1B94A68();
            }

            a2 = 7039;
            break;
          case 7008:
            a2 = 7041;
            break;
          default:
            a2 = 0;
            break;
        }
      }
    }

    else
    {
      if (a2 != 5)
      {
        v15 = a2;
      }

      if (a2 == 4)
      {
        a2 = 7034;
      }

      else
      {
        a2 = v15;
      }
    }
  }

  else
  {
    v16 = 7032;
    v17 = 7033;
    if (a2 != 3)
    {
      v17 = a2;
    }

    if (a2 != 2)
    {
      v16 = v17;
    }

    v18 = 7031;
    if (a2 != 1)
    {
      v18 = a2;
    }

    if (a2)
    {
      v15 = v18;
    }

    if (a2 <= 1)
    {
      a2 = v15;
    }

    else
    {
      a2 = v16;
    }
  }

  v19 = sub_1C1B94A68();
  if (v19 == sub_1C1B94A68())
  {
    v13 = sub_1C1B94A68();
    a2 = 7037;
  }

  v45 = a2;
  v46 = v13;
  v20 = *(v10 + 104);
  v20(v12, *MEMORY[0x1E6989FC8], v9);
  v21 = sub_1C1B94A48();
  v23 = v22;
  v24 = *(v10 + 8);
  v24(v12, v9);
  v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v26 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = v26;
  v28 = v20;
  sub_1C1AB31C8(v25, v21, v23, isUniquelyReferenced_nonNull_native, &v47);

  v29 = v47;
  v20(v12, *MEMORY[0x1E6989F58], v9);
  v30 = sub_1C1B94A48();
  v32 = v31;
  v24(v12, v9);
  v33 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v34 = [v33 initWithInteger_];
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v47 = v29;
  sub_1C1AB31C8(v34, v30, v32, v35, &v47);
  v36 = v46;

  v37 = v47;
  if (v36 != sub_1C1B94A68())
  {
    v28(v12, *MEMORY[0x1E6989F70], v9);
    v38 = sub_1C1B94A48();
    v40 = v39;
    v24(v12, v9);
    v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v37;
    sub_1C1AB31C8(v41, v38, v40, v42, &v47);

    return v47;
  }

  return v37;
}

id sub_1C1AB2FC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v3 = swift_unknownObjectRetain();

  return v3;
}

uint64_t sub_1C1AB301C(uint64_t a1)
{
  v2 = sub_1C1B94758();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 104)
  {
    if (a1 > 101)
    {
      if (a1 != 102)
      {
        if (a1 == 103)
        {
          v6 = MEMORY[0x1E6989CB0];
        }

        else
        {
          v6 = MEMORY[0x1E6989CD0];
        }

        goto LABEL_20;
      }

      goto LABEL_10;
    }

    if (a1 == 100)
    {
      v6 = MEMORY[0x1E6989CD8];
      goto LABEL_20;
    }

    if (a1 != 101)
    {
      return a1;
    }

LABEL_16:
    v6 = MEMORY[0x1E6989CC0];
    goto LABEL_20;
  }

  if (a1 <= 7005)
  {
    if (a1 == 105)
    {
      v6 = MEMORY[0x1E6989CC8];
      goto LABEL_20;
    }

    if (a1 == 7005)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (a1 == 7006)
    {
      goto LABEL_16;
    }

    if (a1 == 7007 || a1 == 7008)
    {
LABEL_10:
      v6 = MEMORY[0x1E6989CB8];
LABEL_20:
      (*(v3 + 104))(v5, *v6, v2);
      a1 = sub_1C1B94748();
      (*(v3 + 8))(v5, v2);
    }
  }

  return a1;
}

uint64_t sub_1C1AB31CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_1C1AA7C14(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C1AB35E8(v16, a4 & 1);
      v11 = sub_1C1AA7C14(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1C1B958E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1C1ADA6AC();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1C1AB3348(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1C1AC1F08(a3, a4);
  v36 = v6;
  result = sub_1C1B955B8();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1C1B95958();
      sub_1C1B94DE8();
      result = sub_1C1B959A8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

unint64_t sub_1C1AB35FC()
{
  v1 = v0;
  v2 = sub_1C1B945F8();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v46 - v5;
  v6 = sub_1C1B94A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
  if (*(v0 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_clientSource + 8))
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E6989ED0], v6);
    v11 = sub_1C1B94A48();
    v13 = v12;
    v14 = v6;
    (*(v7 + 8))(v9, v6);
    v15 = sub_1C1B94D78();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = v10;
    sub_1C1AB7E20(v15, v11, v13, isUniquelyReferenced_nonNull_native, v51);

    v10 = v51[0];
  }

  else
  {
    v14 = v6;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = [Strong bestRepresentation];
    swift_unknownObjectRelease();
    v19 = v14;
    if (v18)
    {
      v20 = [v18 id];
      swift_unknownObjectRelease();
      v21 = v46;
      sub_1C1B945D8();

      v22 = v47;
      v23 = v48;
      (*(v48 + 32))(v47, v21, v49);
      (*(v7 + 104))(v9, *MEMORY[0x1E6989F30], v14);
      v46 = sub_1C1B94A48();
      v25 = v24;
      (*(v7 + 8))(v9, v19);
      sub_1C1B945A8();
      v26 = sub_1C1B94D78();

      v27 = swift_isUniquelyReferenced_nonNull_native();
      v50 = v10;
      sub_1C1AB7E20(v26, v46, v25, v27, &v50);

      v10 = v50;
      (*(v23 + 8))(v22, v49);
    }
  }

  else
  {
    v19 = v14;
  }

  if (*(v1 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_originalContentIdentifier + 8))
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E6989F38], v19);

    v28 = sub_1C1B94A48();
    v30 = v29;
    (*(v7 + 8))(v9, v19);
    v31 = sub_1C1B94D78();

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v10;
    sub_1C1AB7E20(v31, v28, v30, v32, &v50);

    v10 = v50;
  }

  v33 = *(v1 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext);
  if (v33)
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E6989F10], v19);
    v34 = v33;
    v35 = sub_1C1B94A48();
    v37 = v36;
    (*(v7 + 8))(v9, v19);
    sub_1C1AB7364();
    sub_1C1AC1F08(&qword_1EBF08210, &qword_1C1BA4330);
    v38 = sub_1C1B94CA8();

    v39 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v10;
    sub_1C1AB7E20(v38, v35, v37, v39, &v50);

    v10 = v50;
  }

  if ((*(v1 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_serverUnfilledReason + 8) & 1) == 0)
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E6989F18], v19);
    v40 = sub_1C1B94A48();
    v42 = v41;
    (*(v7 + 8))(v9, v19);
    v43 = sub_1C1B95098();
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v10;
    sub_1C1AB7E20(v43, v40, v42, v44, &v50);

    v10 = v50;
  }

  if (!*(v10 + 16))
  {

    return 0;
  }

  return v10;
}

unint64_t sub_1C1AB3C00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1C1AC1F08(a2, a3);
    v5 = sub_1C1B955C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      swift_unknownObjectRetain();
      result = sub_1C1AA7C14(v7, v8);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C1AB3CFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext;
  v10 = *&v4[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext];
  if (!v10 || (v11 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement, result = swift_beginAccess(), *(v10 + v11)))
  {
    v13 = *&v5[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unloadManager];
    sub_1C1AB3FDC(a1, 100, a2);
    result = sub_1C1B948C8();
    v14 = result;
    v15 = *&v5[v9];
    if (!v15 || (v16 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement, result = swift_beginAccess(), *(v15 + v16)))
    {
      if ((v5[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_stop] & 1) == 0)
      {
        v28 = a3;
        if (qword_1EDE6C4E0 != -1)
        {
          swift_once();
        }

        v17 = sub_1C1B94BE8();
        sub_1C1AB4454(v17, qword_1EDE6D058);
        v18 = v5;
        v19 = sub_1C1B94BC8();
        v20 = sub_1C1B95118();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v29[0] = v22;
          *v21 = 134349570;
          *(v21 + 4) = v14;
          *(v21 + 12) = 2050;
          [*(v13 + 16) lock];
          v23 = *(v13 + 32);
          [*(v13 + 16) unlock];
          *(v21 + 14) = v23;

          *(v21 + 22) = 2080;
          v24 = &v18[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier];
          swift_beginAccess();
          v25 = *v24;
          v26 = v24[1];

          v27 = sub_1C1AC7650(v25, v26, v29);

          *(v21 + 24) = v27;
          _os_log_impl(&dword_1C1AA2000, v19, v20, "Journey order: %{public}ld, event count: %{public}ld, promoted content: %s", v21, 0x20u);
          sub_1C1AA86F8(v22);
          MEMORY[0x1C6908230](v22, -1, -1);
          MEMORY[0x1C6908230](v21, -1, -1);
        }

        else
        {
        }

        swift_beginAccess();
        swift_unknownObjectRetain();
        sub_1C1AB448C(a1, 100, a2, v28);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id sub_1C1AB3FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C1B94A58();
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 100)
  {
    v12 = result;
    v13 = *(v3 + 16);
    result = [v13 lock];
    if (a1 == 1400)
    {
      v14 = 0;
      *(v3 + 32) = 0;
    }

    else
    {
      v14 = *(v3 + 32);
    }

    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
      return result;
    }

    *(v3 + 32) = v16;
    if (a1 != 1412 || !a3)
    {
      return [v13 unlock];
    }

    v17 = v3;
    (*(v8 + 104))(v11, *MEMORY[0x1E6989F48], v12);
    v18 = sub_1C1B94A48();
    v20 = v19;
    (*(v8 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      sub_1C1AA7C14(v18, v20);
      v22 = v21;

      if (v22)
      {
        objc_opt_self();
        v23 = swift_dynamicCastObjCClass();
        if (v23)
        {
          v24 = v23;
          swift_unknownObjectRetain();
          v25 = [v24 integerValue];
          if (v25 == sub_1C1B947D8())
          {
            *(v17 + 24) = 1;
          }

          v26 = sub_1C1B95118();
          sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
          v27 = sub_1C1B95298();
          sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1C1B98E60;
          *(v28 + 56) = sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
          *(v28 + 64) = sub_1C1B4E468();
          *(v28 + 32) = v24;
          swift_unknownObjectRetain();
          sub_1C1B94BA8(v26, &dword_1C1AA2000, v27, "Unloaded due to %{public}@", 26, 2, v28);
          swift_unknownObjectRelease();

          return [v13 unlock];
        }
      }
    }

    else
    {
    }

    v29 = sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v30 = sub_1C1B95298();
    sub_1C1B94BA8(v29, &dword_1C1AA2000, v30, "unload reason not provided", 26, 2, MEMORY[0x1E69E7CC0]);

    return [v13 unlock];
  }

  return result;
}

uint64_t sub_1C1AB436C()
{
  v0 = sub_1C1B94BE8();
  sub_1C1AB43F0(v0, qword_1EDE6D058);
  sub_1C1AB4454(v0, qword_1EDE6D058);
  return sub_1C1B94BD8();
}

uint64_t *sub_1C1AB43F0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1C1AB4454(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1C1AB448C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (a3)
  {
    sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
    v6 = sub_1C1B94CA8();
  }

  if (a4)
  {
    sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
    v9 = sub_1C1B94CA8();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [v4 recordMetric:a1 forPurpose:a2 properties:v6 internalProperties:? order:? options:?];
}

void sub_1C1AB46A4(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v36 = a6;
  v37 = a5;
  v38 = a2;
  v39 = a1;
  v10 = sub_1C1B94A58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
  }

  v15 = objc_opt_self();

  v16 = [v15 activeClientInfo];
  if (v16)
  {
    v17 = v16;
    (*(v11 + 104))(v13, *MEMORY[0x1E6989EB0], v10);
    v18 = sub_1C1B94A48();
    v20 = v19;
    (*(v11 + 8))(v13, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v14;
    sub_1C1AB7E20(v17, v18, v20, isUniquelyReferenced_nonNull_native, &v40);
  }

  [objc_opt_self() metricClass];
  swift_getObjCClassMetadata();
  v22 = sub_1C1B94D78();
  v23 = sub_1C1B94D78();
  v24 = sub_1C1B94D78();
  if (*(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId + 8))
  {
    v25 = sub_1C1B94D78();
  }

  else
  {
    v25 = 0;
  }

  if (*(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch))
  {
    v26 = sub_1C1B94EB8();
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v26 = 0;
  if (a3)
  {
LABEL_11:
    sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
    a3 = sub_1C1B94CA8();
  }

LABEL_12:
  sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
  v27 = sub_1C1B94CA8();

  if (*(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment))
  {
    v28 = sub_1C1B94EB8();
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v30 = [v29 initWithPurpose:v38 metric:v39 contentIdentifier:v22 contextIdentifier:v23 handle:v24 secondaryHandle:v25 branch:v26 properties:a3 internalProperties:v27 relayData:0 environment:v28 order:v37 options:v36];

  if (v30)
  {
    sub_1C1AB4B20(v30, v7);
    [*(v7 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver) receivedMetric_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v31 = sub_1C1B94BE8();
    sub_1C1AB4454(v31, qword_1EDE6D058);
    v32 = sub_1C1B94BC8();
    v33 = sub_1C1B95128();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1C1AA2000, v32, v33, "Failed to create APMetric.", v34, 2u);
      MEMORY[0x1C6908230](v34, -1, -1);
    }
  }
}

uint64_t sub_1C1AB4B20(void *a1, uint64_t a2)
{
  v68 = a2;
  v3 = sub_1C1AC1F08(&qword_1EBF09270, &qword_1C1BA0D48);
  v70 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v69 = v63 - v4;
  v5 = sub_1C1AC1F08(&qword_1EBF09278, &qword_1C1BA0D50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v67 = v63 - v6;
  v7 = sub_1C1AC1F08(&qword_1EBF09280, &qword_1C1BA0D58);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v73 = v63 - v10;
  v11 = sub_1C1AC1F08(&qword_1EBF09288, &qword_1C1BA0D60);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v72 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = v63 - v14;
  v15 = sub_1C1B94BE8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C1AC1F08(&unk_1EBF09290, &qword_1C1BA0D68);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v63 - v20;
  v22 = sub_1C1B94A78();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v23 = sub_1C1B94788();
  v66 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v65 = v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v63 - v26;
  v28 = sub_1C1B94A28();
  v76[3] = v28;
  v76[4] = sub_1C1AB0D08();
  v29 = sub_1C1AB0D60(v76);
  (*(*(v28 - 8) + 104))(v29, *MEMORY[0x1E6989E78], v28);
  LOBYTE(v28) = sub_1C1B94688();
  result = sub_1C1AA86F8(v76);
  if (v28)
  {
    v31 = [a1 handle];
    if (v31)
    {
      v32 = v31;
      sub_1C1B94D88();

      v63[1] = [a1 metric];
      sub_1C1B94A88();
      v33 = [a1 trace];
      if (v33)
      {
        v34 = v33;
        sub_1C1B94D88();

        sub_1C1B94668();
        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      v43 = sub_1C1B94678();
      (*(*(v43 - 8) + 56))(v21, v35, 1, v43);
      v44 = [a1 branch];
      if (v44)
      {
        v45 = v44;
        sub_1C1B94EC8();

        sub_1C1B94648();
      }

      else
      {
        v46 = sub_1C1AC1F08(&qword_1EBF092A8, &qword_1C1BA0D78);
        (*(*(v46 - 8) + 56))(v71, 1, 1, v46);
      }

      v47 = [a1 environment];
      v64 = v3;
      if (v47)
      {
        v48 = v47;
        sub_1C1B94EC8();

        sub_1C1B94648();
      }

      else
      {
        v49 = sub_1C1AC1F08(&qword_1EBF092A8, &qword_1C1BA0D78);
        (*(*(v49 - 8) + 56))(v72, 1, 1, v49);
      }

      v50 = [a1 relayData];
      if (v50)
      {
        v51 = v50;
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        sub_1C1B94CB8();

        sub_1C1B1AAF4(v52);
        sub_1C1B94658();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v53 = sub_1C1AC1F08(&qword_1EBF092B0, &qword_1C1BA0D80);
        (*(*(v53 - 8) + 56))(v73, 1, 1, v53);
      }

      v54 = [a1 properties];
      if (v54)
      {
        v55 = v54;
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        sub_1C1B94CB8();

        sub_1C1B1AAF4(v56);
        sub_1C1B94658();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v57 = sub_1C1AC1F08(&qword_1EBF092B0, &qword_1C1BA0D80);
        (*(*(v57 - 8) + 56))(v74, 1, 1, v57);
      }

      v58 = [a1 internalProperties];
      if (v58)
      {
        v59 = v58;
        sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
        sub_1C1B94CB8();

        sub_1C1B94658();
      }

      else
      {
        v60 = sub_1C1AC1F08(&qword_1EBF092B8, &qword_1C1BA0D88);
        (*(*(v60 - 8) + 56))(v67, 1, 1, v60);
      }

      sub_1C1B94778();
      sub_1C1AAABE0((v68 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline), *(v68 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline + 24));
      v61 = v66;
      (*(v66 + 16))(v65, v27, v23);
      [a1 purpose];
      [a1 options];
      v62 = v69;
      sub_1C1B947C8();
      sub_1C1B947E8();
      (*(v70 + 8))(v62, v64);
      return (*(v61 + 8))(v27, v23);
    }

    else
    {
      sub_1C1B94BB8();
      swift_unknownObjectRetain();
      v36 = sub_1C1B94BC8();
      v37 = sub_1C1B95128();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v75 = a1;
        v76[0] = v39;
        *v38 = 136315138;
        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF092A0, &qword_1C1BA0D70);
        v40 = sub_1C1B94DB8();
        v42 = sub_1C1AC7650(v40, v41, v76);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_1C1AA2000, v36, v37, "Could not create event from metric: %s", v38, 0xCu);
        sub_1C1AA86F8(v39);
        MEMORY[0x1C6908230](v39, -1, -1);
        MEMORY[0x1C6908230](v38, -1, -1);
      }

      return (*(v16 + 8))(v18, v15);
    }
  }

  return result;
}

id sub_1C1AB5618(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PromotedContentInfo();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR___APPCPromotedContentInfo_unfilledReason;
  *&v9[OBJC_IVAR___APPCPromotedContentInfo_unfilledReason] = 200;
  *&v9[OBJC_IVAR___APPCPromotedContentInfo_promotedContent] = a1;
  v9[OBJC_IVAR___APPCPromotedContentInfo_placeholder] = a2;
  v11 = &v9[OBJC_IVAR___APPCPromotedContentInfo_ready];
  *v11 = a3;
  v11[1] = a4;
  type metadata accessor for LifecycleMetricsHelper();
  v12 = a1;
  sub_1C1AC0598(a3);
  v13 = [v12 metricsHelper];
  swift_getObjectType();
  *&v9[OBJC_IVAR___APPCPromotedContentInfo_metricsHelper] = sub_1C1AB5844(v13, [v12 placeholder]);
  v14 = [v12 serverUnfilledReason];
  swift_beginAccess();
  *&v9[v10] = v14;
  v17.receiver = v9;
  v17.super_class = v8;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  *&v12[OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8] = &off_1F4151408;
  swift_unknownObjectWeakAssign();
  return v15;
}

id sub_1C1AB5844(uint64_t a1, char a2)
{
  v4 = type metadata accessor for LifecycleMetricsHelper();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR___APPCLifecycleMetricsHelper_wasOnScreen] = 0;
  *&v5[OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper] = a1;
  v5[OBJC_IVAR___APPCLifecycleMetricsHelper_placeholder] = a2;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t getEnumTagSinglePayload for JourneyMetricsHelperDiagnostics.Event.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C1AB5A74@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id sub_1C1AB5B5C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_1C1B94D78();

  return v3;
}

uint64_t sub_1C1AB5BD4()
{
  v1 = [*(v0 + OBJC_IVAR___APPCPromotedContentInfo_promotedContent) identifier];
  v2 = sub_1C1B94D88();

  return v2;
}

void *sub_1C1AB5C80()
{
  v1 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1C1AB5CD8(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(*(v2 + v4));
}

uint64_t sub_1C1AB5DD4()
{
  v1 = OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1C1AB5ED0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PromotedContentInfo();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR___APPCPromotedContentInfo_unfilledReason;
  *&v9[OBJC_IVAR___APPCPromotedContentInfo_unfilledReason] = 200;
  *&v9[OBJC_IVAR___APPCPromotedContentInfo_promotedContent] = a1;
  v9[OBJC_IVAR___APPCPromotedContentInfo_placeholder] = a2;
  v11 = &v9[OBJC_IVAR___APPCPromotedContentInfo_ready];
  *v11 = a3;
  v11[1] = a4;
  type metadata accessor for LifecycleMetricsHelper();
  swift_unknownObjectRetain();
  sub_1C1AC0598(a3);
  v12 = [a1 metricsHelper];
  swift_getObjectType();
  *&v9[OBJC_IVAR___APPCPromotedContentInfo_metricsHelper] = sub_1C1AB5844(v12, [a1 placeholder]);
  v13 = [a1 serverUnfilledReason];
  swift_beginAccess();
  *&v9[v10] = v13;
  v17.receiver = v9;
  v17.super_class = v8;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  sub_1C1AC0530(a3, a4);
  type metadata accessor for PromotedContent(0);
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    *(v15 + OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8) = &off_1F4151408;
    swift_unknownObjectWeakAssign();
  }

  return v14;
}

id PromotedContentInfo.__allocating_init(promotedContent:placeholder:ready:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v8 = sub_1C1AB5ED0(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1C1AB6130(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unfilledReasons;
  swift_beginAccess();
  if (!*(v1 + v3))
  {
    *(v1 + v3) = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1C1AB6258(v12);
  v6 = *v4;
  if (!*v4)
  {
    return (v5)(v12, 0);
  }

  v7 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1C1AB62B8(0, *(v6 + 2) + 1, 1, v6);
    *v7 = v6;
  }

  v10 = *(v6 + 2);
  v9 = *(v6 + 3);
  if (v10 >= v9 >> 1)
  {
    v6 = sub_1C1AB62B8((v9 > 1), v10 + 1, 1, v6);
    *v7 = v6;
  }

  *(v6 + 2) = v10 + 1;
  *&v6[8 * v10 + 32] = a1;
  return (v5)(v12, 0);
}

id sub_1C1AB6388()
{
  if (*(v0 + OBJC_IVAR___APPCPromotedContent_overriddenAdType + 8) != 1)
  {
    return *(v0 + OBJC_IVAR___APPCPromotedContent_overriddenAdType);
  }

  v1 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    return [v2 adType];
  }

  v4 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
    result = sub_1C1B953A8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1C6907490](0, v5);

    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
    swift_unknownObjectRetain();
LABEL_11:
    v7 = [v6 adType];
    swift_unknownObjectRelease();
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1AB656C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void *sub_1C1AB65C0()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1C1AB660C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t SponsorshipAdManager.removePromotedContent(info:)(void *a1)
{
  swift_beginAccess();
  v3 = a1;
  v4 = sub_1C1AB66EC((v1 + 32), v3);

  v5 = *(v1 + 32);
  if (v5 >> 62)
  {
    v6 = sub_1C1B953A8();
    if (v6 >= v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= v4)
    {
LABEL_3:
      sub_1C1AB6B20(v4, v6);
      return swift_endAccess();
    }
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1C1AB66EC(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v39 = *a1 >> 62;
  if (v39)
  {
    goto LABEL_70;
  }

  v43 = v2 & 0xFFFFFFFFFFFFFF8;
  v44 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = 0;
  v41 = OBJC_IVAR___APPCPromotedContentInfo_promotedContent;
  while (v44 != v3)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1C6907490](v3, v2);
    }

    else
    {
      if (v3 >= *(v43 + 16))
      {
        goto LABEL_66;
      }

      v4 = *(v2 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = &v4[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = *(a2 + v41);

    v10 = [v9 identifier];
    v11 = sub_1C1B94D88();
    v13 = v12;

    if (v7 == v11 && v8 == v13)
    {

LABEL_20:
      v17 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      while (1)
      {
        if (v2 >> 62)
        {
          if (v17 == sub_1C1B953A8())
          {
            return v3;
          }
        }

        else if (v17 == *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v3;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1C6907490](v17, v2);
        }

        else
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            v43 = v2 & 0xFFFFFFFFFFFFFF8;
            v44 = sub_1C1B953A8();
            goto LABEL_3;
          }

          if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v18 = *(v2 + 8 * v17 + 32);
        }

        v10 = v18;
        v19 = &v18[OBJC_IVAR___APPCPromotedContent_identifier];
        swift_beginAccess();
        v20 = *v19;
        v21 = *(v19 + 1);

        v22 = [v9 identifier];
        v23 = sub_1C1B94D88();
        v25 = v24;

        if (v20 == v23 && v21 == v25)
        {
LABEL_23:
        }

        else
        {
          v27 = sub_1C1B95888();

          if ((v27 & 1) == 0)
          {
            if (v3 != v17)
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                v29 = MEMORY[0x1C6907490](v3, v2);
                v30 = MEMORY[0x1C6907490](v17, v2);
              }

              else
              {
                if ((v3 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_72:
                  __break(1u);
LABEL_73:
                  __break(1u);
                  return result;
                }

                v31 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v3 >= v31)
                {
                  goto LABEL_72;
                }

                if (v17 >= v31)
                {
                  goto LABEL_73;
                }

                v32 = *(v2 + 32 + 8 * v17);
                v29 = *(v2 + 32 + 8 * v3);
                v30 = v32;
              }

              v33 = v30;
              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_1C1B8FEB4(v2);
                v34 = (v2 >> 62) & 1;
              }

              else
              {
                LODWORD(v34) = 0;
              }

              v35 = v2 & 0xFFFFFFFFFFFFFF8;
              v36 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
              *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v33;

              if ((v2 & 0x8000000000000000) != 0 || v34)
              {
                v2 = sub_1C1B8FEB4(v2);
                v35 = v2 & 0xFFFFFFFFFFFFFF8;
                if ((v17 & 0x8000000000000000) != 0)
                {
LABEL_60:
                  __break(1u);
                  return sub_1C1B953A8();
                }
              }

              else if ((v17 & 0x8000000000000000) != 0)
              {
                goto LABEL_60;
              }

              if (v17 >= *(v35 + 16))
              {
                goto LABEL_69;
              }

              v37 = v35 + 8 * v17;
              v38 = *(v37 + 32);
              *(v37 + 32) = v29;

              *a1 = v2;
            }

            v16 = __OFADD__(v3++, 1);
            if (v16)
            {
              goto LABEL_68;
            }
          }
        }

        v16 = __OFADD__(v17++, 1);
        if (v16)
        {
          goto LABEL_65;
        }
      }
    }

    v15 = sub_1C1B95888();

    if (v15)
    {
      goto LABEL_20;
    }

    v16 = __OFADD__(v3++, 1);
    if (v16)
    {
      goto LABEL_67;
    }
  }

  if (v39)
  {
    return sub_1C1B953A8();
  }

  else
  {
    return *(v43 + 16);
  }
}

uint64_t sub_1C1AB6B4C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v9 = a3;
    v7 = a2;
    v8 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1C1B953A8();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = sub_1C1B953A8();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    v9(result, 1);
    return sub_1C1AB6C44(v8, v7, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C1AB6C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C1B953A8();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1C1B953A8();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1AB6D48@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v4 = sub_1C1B945F8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C1AB6E24(char a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_vended;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for Context(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = OBJC_IVAR___APPCContext_waitingLock;
      [*(v5 + OBJC_IVAR___APPCContext_waitingLock) lock];
      v8 = OBJC_IVAR___APPCContext_waiting;
      swift_beginAccess();
      v9 = *(v6 + v8);
      v10 = *(v6 + v7);

      [v10 unlock];
      if (*(v9 + 16))
      {
        sub_1C1AAB208(v9, 1, 0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C1AB6F40()
{
  v1 = *(v0 + OBJC_IVAR___APPCContext_inventoryLock);
  [v1 lock];
  v2 = OBJC_IVAR___APPCContext_fetchingLock;
  [*(v0 + OBJC_IVAR___APPCContext_fetchingLock) lock];
  v3 = OBJC_IVAR___APPCContext_inventory;
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

  v6 = sub_1C1AB70B0();
  if (v6 >> 62)
  {
    v7 = sub_1C1B953A8();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = __OFSUB__(v5, v7);
  v10 = v5 - v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = OBJC_IVAR___APPCContext_fetching;
  result = swift_beginAccess();
  v12 = *(*(v0 + v11) + 16);
  v9 = __OFADD__(v10, v12);
  v13 = v10 + v12;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = *(v0 + OBJC_IVAR___APPCContext_limit);
  v15 = v14 - v13;
  if (!__OFSUB__(v14, v13))
  {
    [v1 unlock];
    [*(v0 + v2) unlock];
    return v15;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1C1AB70B0()
{
  v1 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v9 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_1C1B953A8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6907490](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v7 = v9;
          goto LABEL_17;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v5 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      if ([v5 vended])
      {
        sub_1C1B954F8();
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v4;
      if (v6 == v3)
      {
        goto LABEL_15;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_17:

  return v7;
}

uint64_t sub_1C1AB7288(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(*(v2 + v4));
}

uint64_t sub_1C1AB72DC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void, uint64_t, void))
{
  v6 = a1;
  v7 = sub_1C1AB35FC();
  a4(a3, 0, v7, 0);
}

unint64_t sub_1C1AB7364()
{
  v1 = sub_1C1B959E8();
  v33 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C1AB77A4(MEMORY[0x1E69E7CC0]);
  *(&v42 + 1) = type metadata accessor for NewsSupplementalContext();
  *&v41 = v0;
  v4 = v0;
  sub_1C1B959C8();
  v32 = v3;
  sub_1C1B959D8();
  sub_1C1B95548();

  sub_1C1B955E8();
  if (!v43)
  {
LABEL_23:
    (*(v33 + 8))(v32, v1);

    return v34;
  }

  v5 = &qword_1EBF08210;
  v31 = v1;
  while (1)
  {
    while (1)
    {
      v39 = v41;
      sub_1C1AA7E98(&v42, &v40);
      sub_1C1AA7E30(&v39, &v36, &unk_1EBF08550, &qword_1C1B9ACA8);
      v6 = v37;
      if (v37)
      {
        break;
      }

      sub_1C1AA7C8C(&v39, &unk_1EBF08550, &qword_1C1B9ACA8);
      sub_1C1AA86F8(v38);
LABEL_4:
      sub_1C1B955E8();
      if (!v43)
      {
        v1 = v31;
        goto LABEL_23;
      }
    }

    v7 = v36;
    sub_1C1AA86F8(v38);
    sub_1C1AA7E30(&v39, &v36, &unk_1EBF08550, &qword_1C1B9ACA8);

    sub_1C1AC1F08(v5, &qword_1C1BA4330);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C1AA7C8C(&v39, &unk_1EBF08550, &qword_1C1B9ACA8);

      goto LABEL_4;
    }

    v8 = v5;
    v9 = v35;
    v10 = sub_1C1AB77B8(v7, v6);
    if (v10 == 62)
    {
      sub_1C1AA7C8C(&v39, &unk_1EBF08550, &qword_1C1B9ACA8);
      swift_unknownObjectRelease();
      v5 = v8;
      goto LABEL_4;
    }

    v30 = sub_1C1AB780C(v10);
    v12 = v11;
    v13 = v34;
    HIDWORD(v28) = swift_isUniquelyReferenced_nonNull_native();
    v36 = v13;
    v29 = v12;
    v15 = sub_1C1AA7C14(v30, v12);
    v16 = *(v13 + 16);
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      break;
    }

    if (*(v13 + 24) >= v18)
    {
      if ((v28 & 0x100000000) == 0)
      {
        LODWORD(v34) = v14;
        sub_1C1ADA684();
        LOBYTE(v14) = v34;
      }
    }

    else
    {
      LODWORD(v34) = v14;
      sub_1C1AB7E0C(v18, HIDWORD(v28));
      v19 = sub_1C1AA7C14(v30, v29);
      v20 = v14 & 1;
      LOBYTE(v14) = v34;
      if ((v34 & 1) != v20)
      {
        goto LABEL_26;
      }

      v15 = v19;
    }

    v21 = v36;
    v34 = v36;
    if (v14)
    {
      *(v36[7] + 8 * v15) = v9;

      swift_unknownObjectRelease();
    }

    else
    {
      v36[(v15 >> 6) + 8] |= 1 << v15;
      v22 = (v21[6] + 16 * v15);
      v23 = v29;
      *v22 = v30;
      v22[1] = v23;
      *(v21[7] + 8 * v15) = v9;
      v24 = v21[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      v21[2] = v26;
    }

    v1 = v31;
    v5 = v8;
    sub_1C1AA7C8C(&v39, &unk_1EBF08550, &qword_1C1B9ACA8);
    sub_1C1B955E8();
    if (!v43)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C1B958E8();
  __break(1u);
  return result;
}

unint64_t sub_1C1AB77B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B958A8();

  if (v2 >= 0x3E)
  {
    return 62;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C1AB780C(char a1)
{
  result = 0x692E726564616568;
  switch(a1)
  {
    case 1:
    case 61:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
    case 8:
    case 22:
    case 32:
    case 51:
      result = 0xD00000000000001ALL;
      break;
    case 4:
    case 17:
    case 33:
    case 34:
      result = 0xD00000000000001FLL;
      break;
    case 5:
    case 18:
    case 26:
    case 36:
    case 38:
    case 57:
      result = 0xD00000000000001CLL;
      break;
    case 6:
    case 12:
      result = 0xD000000000000027;
      break;
    case 7:
    case 13:
      result = 0xD000000000000024;
      break;
    case 9:
    case 20:
      result = 0xD000000000000017;
      break;
    case 10:
    case 27:
    case 28:
    case 59:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD00000000000002BLL;
      break;
    case 15:
    case 40:
    case 41:
      result = 0xD000000000000028;
      break;
    case 16:
    case 53:
      result = 0xD000000000000022;
      break;
    case 19:
      result = 0xD00000000000001BLL;
      break;
    case 21:
    case 39:
    case 60:
      result = 0xD000000000000023;
      break;
    case 23:
      result = 0xD00000000000001BLL;
      break;
    case 24:
    case 52:
      result = 0xD000000000000018;
      break;
    case 25:
      result = 0xD00000000000001BLL;
      break;
    case 29:
      result = 0xD000000000000014;
      break;
    case 30:
    case 31:
    case 48:
    case 58:
      result = 0xD000000000000019;
      break;
    case 35:
    case 37:
    case 43:
    case 44:
      result = 0xD000000000000020;
      break;
    case 42:
      result = 0xD00000000000001BLL;
      break;
    case 46:
      result = 0xD00000000000001BLL;
      break;
    case 47:
      result = 0xD00000000000001BLL;
      break;
    case 49:
      return result;
    case 50:
      result = 0xD000000000000010;
      break;
    case 54:
      result = 0xD00000000000002ELL;
      break;
    case 56:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}