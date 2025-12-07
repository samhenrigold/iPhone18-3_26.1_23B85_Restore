void sub_1C6B6C454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C6B6C4B8@<X0>(id *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = sub_1C6D762D0();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v57 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D79030();
  v9 = [v8 topics];
  if (v9)
  {
    v10 = v9;
    sub_1C6B0C69C(0, &qword_1EDCEA8F0, 0x1E69B6D00);
    v11 = sub_1C6D79780();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  *&v64 = MEMORY[0x1E69E7CD0];
  v68 = MEMORY[0x1E69E7CD0];
  v69 = MEMORY[0x1E69E7CD0];
  if (v11 >> 62)
  {
    goto LABEL_24;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v8; v12; i = v8)
  {
    v55 = a1;
    v61 = a2;
    v13 = 0;
    v63 = v11 & 0xC000000000000001;
    a2 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v63)
      {
        v14 = MEMORY[0x1CCA56240](v13, v11);
      }

      else
      {
        if (v13 >= *(a2 + 16))
        {
          goto LABEL_23;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = [v14 tagID];
      if (v17)
      {
        v8 = v11;
        v18 = v17;
        v19 = sub_1C6D795A0();
        v21 = v20;

        a1 = &v64;
        sub_1C6B1E6A8(&v66, v19, v21);

        if ([v15 isManagedTopic])
        {

          a1 = &v69;
          sub_1C6B1E6A8(&v66, v19, v21);
        }

        if ([v15 isManagedTopicWinner])
        {
          a1 = &v68;
          sub_1C6B1E6A8(&v66, v19, v21);
        }

        else
        {
        }

        v11 = v8;
      }

      else
      {
      }

      ++v13;
      if (v16 == v12)
      {
        v63 = v64;
        v56 = v68;
        a2 = v61;
        v8 = i;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v12 = sub_1C6D79E90();
  }

  v56 = MEMORY[0x1E69E7CD0];
  v63 = MEMORY[0x1E69E7CD0];
LABEL_26:

  v54[3] = sub_1C6D78FF0();
  v55 = v22;
  v54[2] = sub_1C6D79000();
  v54[1] = v23;

  v24 = sub_1C6D79010();
  [v24 sortingScore];

  v25 = *(a2 + 24);
  v26 = [v8 isPaid];
  v27 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  if ([v8 respondsToSelector_])
  {
    v28 = [v8 isBundlePaid];
  }

  else
  {
    v28 = 0;
  }

  v29 = [v8 publisherID];
  if (v29)
  {
    v30 = v29;
    v54[0] = sub_1C6D795A0();
    v61 = v31;
  }

  else
  {
    v54[0] = 0;
    v61 = 0;
  }

  if (!v26)
  {
    v33 = v61;
    if (v28)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v32 = [v25 purchaseProvider];
  v33 = v61;
  if (!v61)
  {
    swift_unknownObjectRelease();
    if (!v28)
    {
      goto LABEL_60;
    }

    goto LABEL_40;
  }

  v34 = [v32 purchasedTagIDs];
  v35 = sub_1C6D79960();

  LOBYTE(v34) = sub_1C6B1E978(v54[0], v61, v35);
  v27 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;

  v33 = v61;
  swift_unknownObjectRelease();
  if (v34)
  {
LABEL_38:

    LODWORD(v54[0]) = 1;
    goto LABEL_64;
  }

  if (!v28)
  {
    goto LABEL_60;
  }

LABEL_40:
  if (!v33)
  {
LABEL_61:
    LODWORD(v54[0]) = 0;
    goto LABEL_64;
  }

  v36 = [objc_msgSend(v25 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v36, v36 + 1))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66 = v64;
  v67 = v65;
  v37 = MEMORY[0x1E69E7CA0];
  if (!*(&v65 + 1))
  {
    sub_1C6B75460(&v66, &qword_1EDCE7CC0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C6B75C34);
    goto LABEL_50;
  }

  sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_50:
    v38 = 0;
    v40 = 0;
    goto LABEL_51;
  }

  v38 = v69;
  v39 = [v69 integerValue];
  if (v39 == -1)
  {

    v8 = i;
    goto LABEL_63;
  }

  v40 = v39;
LABEL_51:
  if (objc_getAssociatedObject(v36, ~v40))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66 = v64;
  v67 = v65;
  if (*(&v65 + 1))
  {
    sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v41 = v38;
      v42 = v69;
      v43 = [v42 integerValue];

      v8 = i;
      if ((v43 ^ v40))
      {
        goto LABEL_63;
      }

LABEL_60:

      goto LABEL_61;
    }
  }

  else
  {
    sub_1C6B75460(&v66, &qword_1EDCE7CC0, v37 + 8, MEMORY[0x1E69E6720], sub_1C6B75C34);
  }

  v8 = i;
  if ((v40 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_63:
  v44 = [objc_msgSend(v25 bundleSubscriptionProvider];
  swift_unknownObjectRelease();
  v45 = [v44 bundleChannelIDs];

  v46 = sub_1C6D79570();
  LODWORD(v54[0]) = [v45 containsObject_];

LABEL_64:
  v47 = [objc_msgSend(v25 bundleSubscriptionProvider];
  swift_unknownObjectRelease();
  [v47 containsItem_];

  if ([v8 v27[63]])
  {
    [v8 isAIGenerated];
  }

  if ([v8 v27[63]])
  {
    [v8 isEvergreen];
  }

  if ([v8 v27[63]])
  {
    v48 = [v8 thumbnailPerceptualHash];
    if (v48)
    {
      v49 = v48;
      v50 = sub_1C6D75E60();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0xF000000000000000;
    }

    *&v66 = v50;
    *(&v66 + 1) = v52;
    sub_1C6B75C34(0, &qword_1EDCE63A0, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    sub_1C6D79BF0();
    sub_1C6B75B88(v50, v52);
  }

  (*(v58 + 104))(v57, *MEMORY[0x1E69E3278], v59);
  sub_1C6D76100();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C6B6CE74(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    return a2;
  }

  return result;
}

uint64_t sub_1C6B6CF0C(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t XavierGroupingService.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t XavierGroupingService.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t *XavierGroupingService.bestOfGroup(fromHeadlines:configurationSet:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1 >> 62)
  {
    sub_1C6B0F7A8(0, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);

    v8 = sub_1C6D79EC0();
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_1C6D7A180();
    sub_1C6B0F7A8(0, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
    v8 = a1;
    if (!swift_dynamicCastMetatype())
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = a1;
      if (v12)
      {
        v13 = v7 + 32;
        while (swift_dynamicCastObjCProtocolConditional())
        {
          v13 += 8;
          if (!--v12)
          {
            v8 = a1;
            goto LABEL_3;
          }
        }

        v8 = v7 | 1;
      }
    }
  }

LABEL_3:
  v9 = sub_1C6B6D328(a1);
  v10 = XavierGroupingService.bestOfGroup(fromFeedItems:scoreProfiles:configurationSet:)(v8, v9, a2);

  if (!v3)
  {
    v4 = sub_1C6B6DAB4(v10);

    if (!v4)
    {
      if (qword_1EDCEA6A0 != -1)
      {
        swift_once();
      }

      v14 = qword_1EDCEA6A8;
      v15 = sub_1C6D79AA0();
      sub_1C6D78D30("Failed to cast result from XavierScoringService.bestOfGroup(fromHeadlines:configurationSet:) as [FCHeadlineProviding]", 117, 2, &dword_1C6B09000, v14, v15, MEMORY[0x1E69E7CC0]);
      v16 = sub_1C6D761F0();
      sub_1C6B754C0(&qword_1EC1D6DC8, MEMORY[0x1E69E3210], MEMORY[0x1E69E3218]);
      swift_allocError();
      v4 = v17;
      sub_1C6B75508(0, &qword_1EDCEA900, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
      v19 = v18;
      sub_1C6B75508(0, &qword_1EDCE6610, &qword_1EDCE6570, &protocolRef_FCHeadlineProviding);
      *v4 = v19;
      v4[1] = v20;
      (*(*(v16 - 8) + 104))(v4, *MEMORY[0x1E69E3200], v16);
      swift_willThrow();
    }
  }

  return v4;
}

id sub_1C6B6D328(unint64_t a1)
{
  v2 = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:0];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C6D79E90())
  {
    v4 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCA56240](v4, a1);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v7 = [v5 scoreProfile];
      [v2 setObject:v7 forKey:v5];
      swift_unknownObjectRelease();

      ++v4;
      if (v6 == i)
      {
        return v2;
      }
    }

    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(a1 + 8 * v4 + 32);
    swift_unknownObjectRetain();
    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return v2;
}

void *XavierGroupingService.bestOfGroup(fromFeedItems:scoreProfiles:configurationSet:)(unint64_t a1, void *a2, uint64_t a3)
{
  v54 = a2;
  v53 = sub_1C6D79040();
  v6 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1C6B6C454(0, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (&v44 - v13);
  sub_1C6B6C454(0, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0], v10);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v49 = &v44 - v17;
  v18 = sub_1C6D79170();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v48 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v22 = sub_1C6D79E90();
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x1E69E7CC0];
  v51 = v18;
  if (v22)
  {
    v47 = v3;
    v56 = MEMORY[0x1E69E7CC0];
    v55 = v22;
    result = sub_1C6B393A4(0, v22 & ~(v22 >> 63), 0);
    if (v55 < 0)
    {
      __break(1u);
      return result;
    }

    v44 = a3;
    v45 = v14;
    v46 = v19;
    v25 = a1;
    v26 = 0;
    v23 = v56;
    v52 = v25;
    v27 = v25 & 0xC000000000000001;
    v3 = v47;
    do
    {
      if (v27)
      {
        v28 = MEMORY[0x1CCA56240](v26, v52);
      }

      else
      {
        v28 = *(v52 + 8 * v26 + 32);
        swift_unknownObjectRetain();
      }

      v29 = [v54 objectForKey_];
      sub_1C6D79020();
      v56 = v23;
      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1C6B393A4((v30 > 1), v31 + 1, 1);
        v3 = v47;
        v23 = v56;
      }

      ++v26;
      *(v23 + 16) = v31 + 1;
      (*(v6 + 32))(v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v31, v9, v53);
    }

    while (v55 != v26);
    v32 = v50;
    v14 = v45;
    v19 = v46;
    a3 = v44;
  }

  else
  {
    v32 = v50;
  }

  v33 = v48;
  FCFeedPersonalizationConfigurationSet.context.getter(a3, v48);
  v34 = [*(v3 + 16) forYouGroupAllowUnfilteredArticles];
  v35 = sub_1C6D791E0();
  v36 = v49;
  (*(*(v35 - 8) + 56))(v49, 1, 1, v35);
  v37 = sub_1C6D792C0();
  (*(*(v37 - 8) + 56))(v14, 1, 1, v37);
  v38 = XavierGroupingService.bestOf(scoredItems:context:allowClusteringFallback:minClusterSize:maxClusterSize:bundleArticleQuotas:maxInaccessibleHeadlines:maxEvergreenHeadlines:maxPublisherOccurrences:maxPublisherOccurrencesByPublisherID:topicDiversity:maxAIGCHeadlines:)(v23, v33, v34, 0, 1, 0, 1, v36, 0, 1, 0, 1, 0, 1, 0, v14, 0, 1);
  if (v32)
  {

    v39 = MEMORY[0x1E69E6720];
    sub_1C6B75460(v14, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], MEMORY[0x1E69E6720], sub_1C6B6C454);
    sub_1C6B75460(v36, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0], v39, sub_1C6B6C454);
    (*(v19 + 8))(v33, v51);
  }

  else
  {
    v40 = v38;

    v41 = MEMORY[0x1E69E6720];
    sub_1C6B75460(v14, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], MEMORY[0x1E69E6720], sub_1C6B6C454);
    sub_1C6B75460(v36, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0], v41, sub_1C6B6C454);
    (*(v19 + 8))(v33, v51);
    v42 = sub_1C6B6DEB4(v40);

    v43 = [v42 sortedItems];

    sub_1C6B0F7A8(0, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
    v39 = sub_1C6D79780();
  }

  return v39;
}

uint64_t sub_1C6B6DAB4(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1C6D79E90();
    sub_1C6D79DF0();
    v2 = sub_1C6D79E90();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C6D79DF0();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1CCA56240](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
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
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        if (!swift_dynamicCastObjCProtocolConditional())
        {
          goto LABEL_13;
        }

        sub_1C6D79DC0();
        sub_1C6D79E00();
        sub_1C6D79E10();
        sub_1C6D79DD0();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

uint64_t sub_1C6B6DC2C(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1C6D79E90();
    sub_1C6D79DF0();
    v2 = sub_1C6D79E90();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C6D79DF0();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1CCA56240](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
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
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_1C6D79DC0();
        sub_1C6D79E00();
        sub_1C6D79E10();
        sub_1C6D79DD0();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

id sub_1C6B6DEB4(uint64_t a1)
{
  v2 = sub_1C6D79040();
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24 - v8;
  v27 = [objc_allocWithZone(MEMORY[0x1E69B52C0]) init];
  v25 = a1;
  v10 = *(a1 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  sub_1C6D79DF0();
  if (v10)
  {
    v11 = *(v26 + 16);
    v12 = v25 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v28 = *(v26 + 72);
    v29 = v11;
    v30 = (v26 + 16);
    v13 = (v26 + 8);
    v14 = v10;
    do
    {
      v29(v5, v12, v2);
      sub_1C6D79030();
      (*v13)(v5, v2);
      sub_1C6D79DC0();
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
      v12 += v28;
      --v14;
    }

    while (v14);
  }

  sub_1C6B0F7A8(0, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
  v15 = sub_1C6D79760();

  [v27 setSortedItems_];

  v30 = [objc_allocWithZone(MEMORY[0x1E69B53A0]) init];
  if (v10)
  {
    v16 = *(v26 + 16);
    v17 = v25 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v18 = *(v26 + 72);
    v19 = (v26 + 8);
    do
    {
      v16(v9, v17, v2);
      v20 = sub_1C6D79010();
      [v30 setObject:v20 forKey:sub_1C6D79030()];

      swift_unknownObjectRelease();
      (*v19)(v9, v2);
      v17 += v18;
      --v10;
    }

    while (v10);
  }

  v21 = v27;
  v22 = v30;
  [v27 setScoreProfiles_];

  return v21;
}

void sub_1C6B6E2D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      sub_1C6B75C34(0, &qword_1EDCE7CF0, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6B6E3BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1C6B75C34(0, &qword_1EDCEA8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6B6E4AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1C6B0C69C(0, &qword_1EC1D6EA8, 0x1E69B6CC8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1C6B75C34(0, &qword_1EDCEA420, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6B6E5F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1C6B6C454(0, a5, a6, MEMORY[0x1E69E6F90]);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void *sub_1C6B6E7AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1C6B67648(*(a1 + 16), 0);
  v4 = sub_1C6B686DC(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_1C6B688C4(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1C6B6E868(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C6B62490(0, &qword_1EDCEA470, MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0], MEMORY[0x1E69E6168]);
  v33 = v4;
  result = sub_1C6D79F00();
  v7 = result;
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
      if ((v33 & 1) == 0)
      {
      }

      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C6B6EB54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C6B62490(0, &qword_1EDCDF648, MEMORY[0x1E69E6530], MEMORY[0x1E69E63B0], MEMORY[0x1E69E6540]);
  result = sub_1C6D79F00();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1C6D7A250();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1C6B6EDEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C6B62490(0, &qword_1EC1D6EC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v37 = v4;
  result = sub_1C6D79F00();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C6B6F10C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C6B75B9C(0);
  result = sub_1C6D79F00();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x1CCA56710](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C6B6F374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v8 = v5;
  v9 = a2;
  v51 = a3(0);
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v11);
  v50 = &v43 - v12;
  v13 = *v5;
  sub_1C6B75B1C(0, a4, a5, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v48 = v9;
  result = sub_1C6D79F00();
  v15 = result;
  if (*(v13 + 16))
  {
    v44 = v5;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v45 = (v10 + 16);
    v46 = v13;
    v47 = v10;
    v49 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v47 + 72);
      v34 = v29 + v33 * v28;
      if (v48)
      {
        (*v49)(v50, v34, v51);
      }

      else
      {
        (*v45)(v50, v34, v51);
      }

      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      result = (*v49)(*(v15 + 56) + v33 * v23, v50, v51);
      ++*(v15 + 16);
      v13 = v46;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v8 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v8 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v8 = v15;
  return result;
}

uint64_t sub_1C6B6F710(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C6B62490(0, &qword_1EDCE64D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6448], MEMORY[0x1E69E6168]);
  v33 = v4;
  result = sub_1C6D79F00();
  v7 = result;
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C6B6F9C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C6B62490(0, &qword_1EC1D6B70, MEMORY[0x1E69E6158], MEMORY[0x1E69E6370], MEMORY[0x1E69E6168]);
  v34 = v4;
  result = sub_1C6D79F00();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C6B6FCF0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1C6B75B1C(0, a3, a4, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v36 = v6;
  result = sub_1C6D79F00();
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
      }

      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
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

uint64_t sub_1C6B6FFA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C6B755F8(0, &unk_1EDCDF6B0, MEMORY[0x1E69E6EC8]);
  v34 = v4;
  result = sub_1C6D79F00();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C6B702C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1C6D770E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1C6B75810(0);
  v40 = v4;
  result = sub_1C6D79F00();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    v39 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v6 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      sub_1C6B754C0(&unk_1EDCE61C0, MEMORY[0x1E69E39F8], MEMORY[0x1E69E3A08]);
      result = sub_1C6D79500();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v6 = v38;
      v10 = v39;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1C6B706BC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1C6B75AA0(0, a3, a4, a5);
  v37 = v7;
  result = sub_1C6D79F00();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v37 & 1) == 0)
      {
      }

      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v36;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

uint64_t sub_1C6B70A14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v49 = sub_1C6D78810();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v6);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1C6B61488(0);
  v44 = v4;
  result = sub_1C6D79F00();
  v10 = result;
  if (*(v8 + 16))
  {
    v41 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v42 = (v5 + 16);
    v45 = (v5 + 32);
    v17 = result + 64;
    v43 = v5;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v24 = v21 | (v11 << 6);
      v25 = *(v8 + 56);
      v26 = *(v8 + 48) + 56 * v24;
      v27 = *v26;
      v47 = *(v26 + 8);
      v46 = *(v26 + 24);
      v28 = *(v26 + 40);
      v29 = *(v26 + 48);
      v30 = *(v5 + 72);
      v31 = v25 + v30 * v24;
      if (v44)
      {
        (*v45)(v48, v31, v49);
      }

      else
      {
        (*v42)(v48, v31, v49);
      }

      *v51 = v27;
      *&v51[8] = v47;
      *&v51[24] = v46;
      *&v51[40] = v28;
      v52 = v29;
      sub_1C6D7A260();
      sub_1C6BFDBDC(v50);
      result = sub_1C6D7A2B0();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v18 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v10 + 48) + 56 * v18;
      v20 = *&v51[16];
      *v19 = *v51;
      *(v19 + 16) = v20;
      *(v19 + 32) = *&v51[32];
      *(v19 + 48) = v52;
      result = (*v45)(*(v10 + 56) + v30 * v18, v48, v49);
      ++*(v10 + 16);
      v5 = v43;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero((v8 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1C6B70E44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C6B61688(0);
  result = sub_1C6D79F00();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      sub_1C6D7A260();
      sub_1C6D7A290();
      result = sub_1C6D7A2B0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1C6B710FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v35 = v5;
  result = sub_1C6D79F00();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1C6B71400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v50 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v49 = &v44 - v13;
  v14 = *v6;
  sub_1C6B75B1C(0, a4, a5, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v48 = v10;
  result = sub_1C6D79F00();
  v16 = result;
  if (*(v14 + 16))
  {
    v45 = v6;
    v46 = v14;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = result + 64;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = *(v14 + 56);
      v31 = (*(v14 + 48) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      v34 = *(v47 + 72);
      v35 = v30 + v34 * v29;
      if (v48)
      {
        sub_1C6B759B4(v35, v49, v50);
      }

      else
      {
        sub_1C6B7594C(v35, v49, v50);
      }

      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v36 = -1 << *(v16 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v23 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v23 + 8 * v38);
          if (v42 != -1)
          {
            v24 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v37) & ~*(v23 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = (*(v16 + 48) + 16 * v24);
      *v25 = v33;
      v25[1] = v32;
      result = sub_1C6B759B4(v49, *(v16 + 56) + v34 * v24, v50);
      ++*(v16 + 16);
      v14 = v46;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v9 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v14 + 32);
    v9 = v45;
    if (v43 >= 64)
    {
      bzero(v18, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v43;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v9 = v16;
  return result;
}

uint64_t sub_1C6B71770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C6B62490(0, &unk_1EDCDF628, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6158], MEMORY[0x1E69E7300]);
  v34 = v4;
  result = sub_1C6D79F00();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = MEMORY[0x1CCA56710](*(v7 + 40), v21, 4);
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C6B71A0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C6B62490(0, &qword_1EDCDF650, MEMORY[0x1E69E6158], MEMORY[0x1E69E72F0], MEMORY[0x1E69E6168]);
  v34 = v4;
  result = sub_1C6D79F00();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C6B71CC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1C6B75B1C(0, &qword_1EDCDF638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  v38 = v4;
  result = sub_1C6D79F00();
  v11 = result;
  if (*(v9 + 16))
  {
    v36 = v3;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 4 * v23);
      v25 = *(v37 + 72);
      v26 = *(v9 + 56) + v25 * v23;
      if (v38)
      {
        sub_1C6B759B4(v26, v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      }

      else
      {
        sub_1C6B7594C(v26, v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      }

      result = MEMORY[0x1CCA56710](*(v11 + 40), v24, 4);
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 4 * v19) = v24;
      result = sub_1C6B759B4(v8, *(v11 + 56) + v25 * v19, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v9 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1C6B72098(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1C6B7558C(0, a3, a4, a5, sub_1C6B0F7A8);
  v37 = v7;
  result = sub_1C6D79F00();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v37 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v36;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

uint64_t sub_1C6B72354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C6B75B1C(0, &qword_1EDCDF670, type metadata accessor for FCSubscriptionOrigin, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v34 = v4;
  result = sub_1C6D79F00();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C6B72614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1C6B7568C(0);
  result = sub_1C6D79F00();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      result = sub_1C6D79BB0();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C6B728F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1C6B7558C(0, a3, a4, a5, sub_1C6B0C69C);
  v38 = v7;
  result = sub_1C6D79F00();
  v10 = result;
  if (*(v8 + 16))
  {
    v37 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v38 & 1) == 0)
      {

        v28 = v27;
      }

      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v37;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v36 = 1 << *(v8 + 32);
    v6 = v5;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

void *sub_1C6B72BD8()
{
  v1 = v0;
  sub_1C6B62490(0, &qword_1EDCEA470, MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
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

void *sub_1C6B72D88()
{
  v1 = v0;
  sub_1C6B62490(0, &qword_1EDCDF648, MEMORY[0x1E69E6530], MEMORY[0x1E69E63B0], MEMORY[0x1E69E6540]);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1C6B72F08()
{
  v1 = v0;
  sub_1C6B62490(0, &qword_1EC1D6EC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1C6B730E0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v7);
  v43 = &v38 - v8;
  sub_1C6B75B1C(0, a2, a3, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v9 = *v3;
  v10 = sub_1C6D79EF0();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_1C6B7337C()
{
  v1 = v0;
  sub_1C6B62490(0, &qword_1EDCE64D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6448], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
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
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

void *sub_1C6B734F8()
{
  v1 = v0;
  sub_1C6B62490(0, &qword_1EC1D6B70, MEMORY[0x1E69E6158], MEMORY[0x1E69E6370], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_1C6B736E8(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  sub_1C6B75B1C(0, a1, a2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v4 = *v2;
  v5 = sub_1C6D79EF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1C6B73864()
{
  v1 = v0;
  sub_1C6B755F8(0, &unk_1EDCDF6B0, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
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

void *sub_1C6B73A4C()
{
  v1 = v0;
  v32 = sub_1C6D770E0();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B75810(0);
  v4 = *v0;
  v5 = sub_1C6D79EF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = (v4 + 64);
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, v28, 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_21;
      }

      v18 = *(v28 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void *sub_1C6B73CE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = v3;
  sub_1C6B75AA0(0, a1, a2, a3);
  v5 = *v3;
  v6 = sub_1C6D79EF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;
      }

      while (v15);
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
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_1C6B73F00()
{
  v1 = v0;
  v40 = sub_1C6D78810();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v2);
  v39 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B61488(0);
  v4 = *v0;
  v5 = sub_1C6D79EF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v37[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v4 + 16);
    v41 = v6;
    *(v6 + 16) = v12;
    v13 = 1 << *(v4 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v4 + 64);
    v16 = (v13 + 63) >> 6;
    v37[1] = v42 + 32;
    v37[2] = v42 + 16;
    v38 = v4;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v45 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 56 * v20;
        v22 = *(v4 + 56);
        v23 = *(v4 + 48) + 56 * v20;
        v24 = *v23;
        v25 = *(v23 + 40);
        v26 = *(v23 + 48);
        v27 = v42;
        v28 = *(v42 + 72) * v20;
        v29 = *(v42 + 16);
        v30 = *(v23 + 8);
        v43 = *(v23 + 24);
        v44 = v30;
        v31 = v39;
        v32 = v40;
        v29(v39, v22 + v28, v40);
        v33 = v41;
        v34 = *(v41 + 48) + v21;
        *v34 = v24;
        v35 = v44;
        *(v34 + 24) = v43;
        *(v34 + 8) = v35;
        *(v34 + 40) = v25;
        *(v34 + 48) = v26;
        v36 = *(v33 + 56) + v28;
        v4 = v38;
        (*(v27 + 32))(v36, v31, v32);

        v15 = v45;
      }

      while (v45);
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

        v1 = v37[0];
        v6 = v41;
        goto LABEL_21;
      }

      v19 = *(v8 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v45 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void *sub_1C6B741C8()
{
  v1 = v0;
  sub_1C6B61688(0);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1C6B74348(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1C6D79EF0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1C6B74518(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v42 = a4;
  v7 = v4;
  v8 = a1(0);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v40 = &v39 - v10;
  sub_1C6B75B1C(0, a2, a3, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v11 = *v4;
  v12 = sub_1C6D79EF0();
  v13 = v12;
  if (*(v11 + 16))
  {
    v39 = v7;
    result = (v12 + 64);
    v15 = v11 + 64;
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v16)
    {
      result = memmove(result, (v11 + 64), 8 * v16);
    }

    v18 = 0;
    v19 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v19;
    v20 = 1 << *(v11 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v11 + 64);
    v23 = (v20 + 63) >> 6;
    if (v22)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_17:
        v27 = v24 | (v18 << 6);
        v28 = 16 * v27;
        v29 = *(v11 + 56);
        v30 = (*(v11 + 48) + 16 * v27);
        v31 = v11;
        v32 = *v30;
        v33 = v30[1];
        v34 = v40;
        v35 = *(v41 + 72) * v27;
        v36 = v42;
        sub_1C6B7594C(v29 + v35, v40, v42);
        v37 = v43;
        v38 = (*(v43 + 48) + v28);
        *v38 = v32;
        v38[1] = v33;
        v11 = v31;
        sub_1C6B759B4(v34, *(v37 + 56) + v35, v36);

        v22 = v44;
      }

      while (v44);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v39;
        v13 = v43;
        goto LABEL_21;
      }

      v26 = *(v15 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v44 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

void *sub_1C6B7479C()
{
  v1 = v0;
  sub_1C6B62490(0, &unk_1EDCDF628, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6158], MEMORY[0x1E69E7300]);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_1C6B74918()
{
  v1 = v0;
  sub_1C6B62490(0, &qword_1EDCDF650, MEMORY[0x1E69E6158], MEMORY[0x1E69E72F0], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
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
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

void *sub_1C6B74A94()
{
  v1 = v0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B75B1C(0, &qword_1EDCDF638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  v5 = *v0;
  v6 = sub_1C6D79EF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v11 << 6);
        v22 = *(*(v5 + 48) + 4 * v21);
        v23 = v27;
        v24 = *(v28 + 72) * v21;
        sub_1C6B7594C(*(v5 + 56) + v24, v27, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        v25 = v29;
        *(*(v29 + 48) + 4 * v21) = v22;
        result = sub_1C6B759B4(v23, *(v25 + 56) + v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v26;
        v7 = v29;
        goto LABEL_21;
      }

      v20 = *(v5 + 64 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

void *sub_1C6B74D54(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1C6B7558C(0, a1, a2, a3, sub_1C6B0F7A8);
  v5 = *v3;
  v6 = sub_1C6D79EF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;

        result = swift_unknownObjectRetain();
      }

      while (v15);
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
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_1C6B74ED8()
{
  v1 = v0;
  sub_1C6B75B1C(0, &qword_1EDCDF670, type metadata accessor for FCSubscriptionOrigin, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_1C6B75060()
{
  v1 = v0;
  sub_1C6B7568C(0);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

id sub_1C6B75238(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1C6B7558C(0, a1, a2, a3, sub_1C6B0C69C);
  v5 = *v3;
  v6 = sub_1C6D79EF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;

        result = v23;
      }

      while (v15);
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
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

uint64_t sub_1C6B753E0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B6C454(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6B75460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1C6B754C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6B75508(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1C6B0F7A8(255, a3, a4);
    v5 = sub_1C6D79820();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B7558C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1C6D79F30();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1C6B755F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E69E6158];
    sub_1C6B75C34(255, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C6B7568C(uint64_t a1)
{
  if (!qword_1EC1D96D0)
  {
    sub_1C6B0C69C(255, &qword_1EDCDF860, 0x1E69B5450);
    sub_1C6B0F7A8(255, &qword_1EDCDF840, &protocolRef_FCPersonalizationAggregate);
    sub_1C6B75728();
    v1 = sub_1C6D79F30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D96D0);
    }
  }
}

unint64_t sub_1C6B75728()
{
  result = qword_1EDCDF850;
  if (!qword_1EDCDF850)
  {
    sub_1C6B0C69C(255, &qword_1EDCDF860, 0x1E69B5450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDF850);
  }

  return result;
}

void sub_1C6B75790(uint64_t a1)
{
  if (!qword_1EDCEA478)
  {
    sub_1C6B75508(255, &qword_1EDCEA900, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
    v1 = sub_1C6D79F30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA478);
    }
  }
}

void sub_1C6B75810(uint64_t a1)
{
  if (!qword_1EDCDF750)
  {
    sub_1C6D770E0();
    sub_1C6B6C454(255, &unk_1EDCDFA10, sub_1C6B758EC, MEMORY[0x1E69E62F8]);
    sub_1C6B754C0(&unk_1EDCE61C0, MEMORY[0x1E69E39F8], MEMORY[0x1E69E3A08]);
    v1 = sub_1C6D79F30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF750);
    }
  }
}

void sub_1C6B758EC()
{
  if (!qword_1EDCDFB10)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFB10);
    }
  }
}

uint64_t sub_1C6B7594C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B759B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6B75A1C(uint64_t a1)
{
  if (!qword_1EC1D6F30)
  {
    sub_1C6B755F8(255, &qword_1EC1D6F38, MEMORY[0x1E69E5E28]);
    v1 = sub_1C6D79F30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D6F30);
    }
  }
}

void sub_1C6B75AA0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6B6C454(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1C6D79F30();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B75B1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1C6D79F30();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1C6B75B88(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C6B1C9F0(result, a2);
  }

  return result;
}

void sub_1C6B75B9C(uint64_t a1)
{
  if (!qword_1EDCDF620)
  {
    sub_1C6B6C454(255, &qword_1EDCDFA60, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, MEMORY[0x1E69E62F8]);
    v1 = sub_1C6D79F30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF620);
    }
  }
}

void sub_1C6B75C34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t dispatch thunk of TagEvaluatorType.evaluate(tags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(a1, a2);
}

{
  return (*(a3 + 16))(a1, a2);
}

uint64_t sub_1C6B75CC4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1C6B75D04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C6D75F80();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  if (qword_1EDCE2538 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDCE2540;
  sub_1C6B1A2FC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C6D7EB10;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E65A8];
  *(v10 + 56) = MEMORY[0x1E69E6530];
  *(v10 + 64) = v12;
  *(v10 + 32) = v11;
  v13 = sub_1C6D75F60();
  v15 = v14;
  *(v10 + 96) = MEMORY[0x1E69E6158];
  *(v10 + 104) = sub_1C6B2064C();
  *(v10 + 72) = v13;
  *(v10 + 80) = v15;
  v16 = sub_1C6D79AC0();
  sub_1C6D78D30("Attempting to evaluate %lu tags with requestID %{public}@", 57, 2, &dword_1C6B09000, v9, v16, v10);

  sub_1C6B761BC();
  v17 = MEMORY[0x1CCA56010](25);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = a1;
  sub_1C6B76224();

  v19 = sub_1C6D78390();

  (*(v5 + 8))(v8, v4);
  return v19;
}

uint64_t sub_1C6B75F70(uint64_t a1, uint64_t a2)
{
  sub_1C6B1A2FC(0, &qword_1EC1D6F40, sub_1C6B76224, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6B76004(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = a5[6];
  v8 = a5[7];
  v10 = a5[5];
  __swift_project_boxed_opaque_existential_1(a5 + 2, v10);
  v11 = (*(v9 + 8))(v10, v9);
  v13 = sub_1C6BB25FC(v8, v11 & 1, a6);
  a1(&v13);
}

void *sub_1C6B76118(uint64_t a1)
{
  v4 = *(*v1 + 48);
  v3 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v5);
  v6 = (*(v4 + 8))(v5, v4);
  return sub_1C6BB25FC(v3, v6 & 1, a1);
}

unint64_t sub_1C6B761BC()
{
  result = qword_1EDCE7EB0;
  if (!qword_1EDCE7EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCE7EB0);
  }

  return result;
}

void sub_1C6B76224()
{
  if (!qword_1EDCDFBD8)
  {
    v0 = sub_1C6D794F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDFBD8);
    }
  }
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.tagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.tagID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.duration.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  sub_1C6B764C8(v1 + *(v7 + 24), v6);
  v8 = sub_1C6D78A00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D789F0();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B7655C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(uint64_t a1)
{
  result = qword_1EDCE4AA8;
  if (!qword_1EDCE4AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B764C8(uint64_t a1, uint64_t a2)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B7655C(uint64_t a1)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B765E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  sub_1C6B764C8(a1 + *(v8 + 24), v7);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B7655C(v7);
  }

  return result;
}

uint64_t sub_1C6B76754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0) + 24);
  sub_1C6B7655C(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0) + 24);
  sub_1C6B7655C(v1 + v3);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventTagFeedView.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6B764C8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B7655C(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B76B50;
}

void sub_1C6B76B50(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6B7655C(v9 + v3);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6B7655C(v9 + v3);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_SessionEventTagFeedView.hasDuration.getter()
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  sub_1C6B764C8(v0 + *(v5 + 24), v4);
  v6 = sub_1C6D78A00();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B7655C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventTagFeedView.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0) + 24);
  sub_1C6B7655C(v0 + v1);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = sub_1C6D78A00();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_1C6B76FF8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE4AD0);
  __swift_project_value_buffer(v0, qword_1EDCE4AD0);
  sub_1C6B780C4(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "tag_id";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagFeedView._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4AC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4AD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }

    else if (result == 2)
    {
      sub_1C6B77318(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6B77318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  sub_1C6D78A00();
  sub_1C6B7807C(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6D78CC0(), !v4))
  {
    result = sub_1C6B77478(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6B77478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  sub_1C6B764C8(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B7655C(v8);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1C6B7807C(&qword_1EDCDFD08, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB68]);
  sub_1C6D78CF0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  sub_1C6B7807C(&qword_1EC1D6F48, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFeedView);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B77720@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1C6D78A30();
  v4 = *(a1 + 24);
  v5 = sub_1C6D78A00();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6B777F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B7807C(&qword_1EC1D6F58, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFeedView);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B77870@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4AC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4AD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B77918(uint64_t a1)
{
  v2 = sub_1C6B7807C(&qword_1EDCE4AC0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFeedView);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B77984(uint64_t a1, uint64_t a2)
{
  sub_1C6B7807C(&qword_1EDCE4AC0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFeedView);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B24_SessionEventTagFeedViewV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - v11;
  sub_1C6B77F8C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_9;
  }

  v26 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
  v18 = *(v26 + 24);
  v19 = *(v14 + 48);
  sub_1C6B764C8(a1 + v18, v17);
  sub_1C6B764C8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B7655C(v17);
LABEL_11:
      sub_1C6D78A40();
      sub_1C6B7807C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_8;
  }

  sub_1C6B764C8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_8:
    sub_1C6B78020(v17);
    goto LABEL_9;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_1C6B7807C(&qword_1EC1D6F68, MEMORY[0x1E69AAB70], MEMORY[0x1E69AAB78]);
  v22 = sub_1C6D79560();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_1C6B7655C(v17);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_9:
  v21 = 0;
  return v21 & 1;
}

void sub_1C6B77EC8(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6B780C4(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6B77F8C(uint64_t a1)
{
  if (!qword_1EC1D6F60)
  {
    sub_1C6B780C4(255, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D6F60);
    }
  }
}

uint64_t sub_1C6B78020(uint64_t a1)
{
  sub_1C6B77F8C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B7807C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6B780C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t Com_Apple_News_Personalization_Envelope.data.getter()
{
  v1 = *(v0 + 8);
  sub_1C6B1CD10(v1, *(v0 + 16));
  return v1;
}

uint64_t Com_Apple_News_Personalization_Envelope.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C6B1C9F0(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_Envelope.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_Envelope(0) + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_Envelope(uint64_t a1)
{
  result = qword_1EC1D6FA8;
  if (!qword_1EC1D6FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_Envelope.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_Envelope(0) + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_Envelope.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_1C6D7F510;
  type metadata accessor for Com_Apple_News_Personalization_Envelope(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B783F4()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D6F70);
  __swift_project_value_buffer(v0, qword_1EC1D6F70);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "version";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "data";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_Envelope._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5940 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D6F70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_Envelope.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B90();
    }

    else if (result == 2)
    {
      sub_1C6D78B20();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_Envelope.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CD0(), !v4))
  {
    v6 = *(v3 + 8);
    v7 = *(v3 + 16);
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_12;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        result = sub_1C6D78C80();
        if (v4)
        {
          return result;
        }

        goto LABEL_12;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
      goto LABEL_11;
    }

LABEL_12:
    type metadata accessor for Com_Apple_News_Personalization_Envelope(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t static Com_Apple_News_Personalization_Envelope.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || !sub_1C6B5E090(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)))
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Personalization_Envelope(0);
  sub_1C6D78A40();
  sub_1C6B78F18(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_Personalization_Envelope.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_Envelope(0);
  sub_1C6B78F18(&qword_1EC1D6F88, type metadata accessor for Com_Apple_News_Personalization_Envelope, &protocol conformance descriptor for Com_Apple_News_Personalization_Envelope);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B788FC@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_1C6D7F510;
  return sub_1C6D78A30();
}

uint64_t sub_1C6B78948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6B789BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6B78A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B78F18(&qword_1EC1D6FB8, type metadata accessor for Com_Apple_News_Personalization_Envelope, &protocol conformance descriptor for Com_Apple_News_Personalization_Envelope);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B78B00@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5940 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D6F70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B78BA8(uint64_t a1)
{
  v2 = sub_1C6B78F18(&qword_1EC1D6F98, type metadata accessor for Com_Apple_News_Personalization_Envelope, &protocol conformance descriptor for Com_Apple_News_Personalization_Envelope);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B78C14(uint64_t a1, uint64_t a2)
{
  sub_1C6B78F18(&qword_1EC1D6F98, type metadata accessor for Com_Apple_News_Personalization_Envelope, &protocol conformance descriptor for Com_Apple_News_Personalization_Envelope);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B78C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || !sub_1C6B5E090(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)))
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6B78F18(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6B78E94(uint64_t a1)
{
  result = sub_1C6D78A40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6B78F18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B78F68()
{
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](0);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B78FAC(uint64_t a1)
{
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](0);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B78FEC(void *a1, void *a2, uint64_t a3)
{
  sub_1C6B16F28(a1, v3 + 16);
  *(v3 + 56) = a3;

  v7 = [a2 cachedSubscription];
  if (objc_getAssociatedObject(v7, v7 + 1))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    sub_1C6B79FDC(&v16);
    goto LABEL_9;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v8 = v13;
  v9 = [v13 integerValue];
  if (v9 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v7, ~v9))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    sub_1C6B79FDC(&v16);
    goto LABEL_17;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    swift_unknownObjectRelease();
    v11 = -35;
    goto LABEL_18;
  }

  v10 = [v13 integerValue];

  swift_unknownObjectRelease();
  v11 = v10 - 35;
LABEL_18:
  __swift_destroy_boxed_opaque_existential_1(a1);

  *(v3 + 64) = ((v11 ^ v9) & 1) == 0;
  return v3;
}

void *sub_1C6B791F4(unint64_t a1)
{
  v3 = sub_1C6D783E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_44:
    v61 = MEMORY[0x1E69E7CC0];

    return sub_1C6B6072C(v61);
  }

  v15 = sub_1C6D79E90();
  if (!v15)
  {
    goto LABEL_44;
  }

LABEL_3:
  v69 = v10;
  MEMORY[0x1EEE9AC00](v15, v12);
  *(&v62 - 2) = v1;
  *(&v62 - 1) = a1;
  sub_1C6D784F0();
  sub_1C6D78500();
  v16 = v72;

  v17 = [v16 myMagazinesConfiguration];

  if (!v17)
  {
    sub_1C6B7A104();
    v21 = swift_allocError();
    swift_willThrow();
    v22 = v21;
    (*(v69 + 8))(v14, v9);
    if (qword_1EC1D5A88 != -1)
    {
      swift_once();
    }

    v23 = qword_1EC1D8598;
    v24 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1C6D7E630;
    v70 = 0;
    v71 = 0xE000000000000000;
    v73 = v22;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    sub_1C6D79E60();
    v26 = v70;
    v27 = v71;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1C6B2064C();
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    sub_1C6D78D30("Unable to build and call subgraph computation: %{public}@", 57, 2, &dword_1C6B09000, v23, v24, v25);

    v28 = sub_1C6B6072C(MEMORY[0x1E69E7CC0]);

    return v28;
  }

  v18 = [v17 scoreOutputName];
  v62 = v17;
  v19 = v18;
  sub_1C6D795A0();
  v68 = v9;

  v20 = v68;
  sub_1C6D783C0();
  sub_1C6B7A1B0(&qword_1EDCE7A60, sub_1C6B7A08C, MEMORY[0x1E69960C0]);
  v30 = sub_1C6D786D0();
  (*(v4 + 8))(v7, v3);
  if (a1 >> 62)
  {
    v31 = sub_1C6D79E90();
  }

  else
  {
    v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v31)
  {
    v28 = MEMORY[0x1E69E7CC8];
LABEL_40:

LABEL_42:

    (*(v69 + 8))(v14, v20);
    return v28;
  }

  v32 = 0;
  v66 = a1 & 0xFFFFFFFFFFFFFF8;
  v67 = a1 & 0xC000000000000001;
  v65 = v30 + 32;
  v28 = MEMORY[0x1E69E7CC8];
  v63 = v14;
  v64 = a1;
  while (v67)
  {
    v35 = MEMORY[0x1CCA56240](v32, a1);
LABEL_22:
    v36 = *(v30 + 16);
    if (v32 == v36)
    {
      v60 = v35;

      v62 = v60;
      goto LABEL_42;
    }

    if (v32 >= v36)
    {
      goto LABEL_48;
    }

    v37 = v31;
    v38 = v30;
    v39 = *(v65 + 4 * v32);
    v40 = v35;
    v41 = [v35 itemID];
    v42 = sub_1C6D795A0();
    v44 = v43;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v28;
    v47 = sub_1C6B5DEA8(v42, v44);
    v48 = v28[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_49;
    }

    v51 = v46;
    if (v28[3] >= v50)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v54 = v39 <= 0.5;
        if (v46)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1C6B734F8();
        v54 = v39 <= 0.5;
        if (v51)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1C6B6F9C8(v50, isUniquelyReferenced_nonNull_native);
      v52 = sub_1C6B5DEA8(v42, v44);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_51;
      }

      v47 = v52;
      v54 = v39 <= 0.5;
      if (v51)
      {
LABEL_14:
        v33 = !v54;

        v28 = v70;
        *(v70[7] + v47) = v33;

        goto LABEL_18;
      }
    }

    v55 = !v54;
    v28 = v70;
    v70[(v47 >> 6) + 8] |= 1 << v47;
    v56 = (v28[6] + 16 * v47);
    *v56 = v42;
    v56[1] = v44;
    *(v28[7] + v47) = v55;

    v57 = v28[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_50;
    }

    v28[2] = v59;
LABEL_18:
    ++v32;
    v31 = v37;
    v34 = v37 == v32;
    v20 = v68;
    v30 = v38;
    v14 = v63;
    a1 = v64;
    if (v34)
    {
      goto LABEL_40;
    }
  }

  if (v32 < *(v66 + 16))
  {
    v35 = *(a1 + 8 * v32 + 32);
    goto LABEL_22;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

void sub_1C6B798F0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a2;
  v8 = sub_1C6D78810();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D75F80();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [*(a1 + 24) myMagazinesConfiguration];
  if (!v18)
  {
    sub_1C6B7A104();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v19 = v18;
  v64 = v11;
  v66 = a4;
  sub_1C6D75F70();
  v20 = sub_1C6D75F60();
  v62 = v21;
  (*(v13 + 8))(v17, v12);
  v22 = [v19 scoreOutputName];
  v23 = sub_1C6D795A0();
  v61[1] = v24;

  v68 = [v19 maxTopicIds];
  v70 = [v19 fullBodyEmbeddingDimension];
  v69 = [v19 titleEmbeddingDimension];
  v63 = v20;
  if (a3 >> 62)
  {
    v25 = sub_1C6D79E90();
  }

  else
  {
    v25 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = MEMORY[0x1E69E7CC0];
  v65 = v19;
  v61[2] = v23;
  if (v25)
  {
    v73 = MEMORY[0x1E69E7CC0];
    sub_1C6B39464(0, v25 & ~(v25 >> 63), 0);
    if (v25 < 0)
    {
      __break(1u);
      return;
    }

    v61[0] = v4;
    v27 = 0;
    v26 = v73;
    v28 = v67;
    LODWORD(v29) = *(v67 + 64);
    v30 = a3;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1CCA56240](v27, v30);
      }

      else
      {
        v31 = *(v30 + 8 * v27 + 32);
      }

      sub_1C6C33510(v70, v68, v69, v31, 1, v29, v71);
      v73 = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1C6B39464((v32 > 1), v33 + 1, 1);
        v28 = v67;
        v26 = v73;
      }

      ++v27;
      *(v26 + 16) = v33 + 1;
      v34 = v26 + 232 * v33;
      v35 = v71[0];
      v36 = v71[2];
      *(v34 + 48) = v71[1];
      *(v34 + 64) = v36;
      *(v34 + 32) = v35;
      v37 = v71[3];
      v38 = v71[4];
      v39 = v71[6];
      *(v34 + 112) = v71[5];
      *(v34 + 128) = v39;
      *(v34 + 80) = v37;
      *(v34 + 96) = v38;
      v40 = v71[7];
      v41 = v71[8];
      v42 = v71[10];
      *(v34 + 176) = v71[9];
      *(v34 + 192) = v42;
      *(v34 + 144) = v40;
      *(v34 + 160) = v41;
      v43 = v71[11];
      v44 = v71[12];
      v45 = v71[13];
      *(v34 + 256) = v72;
      *(v34 + 224) = v44;
      *(v34 + 240) = v45;
      *(v34 + 208) = v43;
      v30 = a3;
    }

    while (v25 != v27);
  }

  else
  {
    v28 = v67;
  }

  v46 = v28[5];
  v47 = v28[6];
  __swift_project_boxed_opaque_existential_1(v28 + 2, v46);
  (*(v47 + 16))(v26, v70, v69, v46, v47);

  sub_1C6B7A158(0);
  v48 = sub_1C6D783E0();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1C6D7E630;
  sub_1C6D783C0();
  sub_1C6C07550(v51);
  swift_setDeallocating();
  (*(v49 + 8))(v51 + v50, v48);
  swift_deallocClassInstance();
  v52 = v62;

  v53 = v63;
  sub_1C6D78790();
  if (qword_1EC1D5A88 != -1)
  {
    swift_once();
  }

  v54 = qword_1EC1D8598;
  sub_1C6B1D314(0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1C6D7EB10;
  v56 = MEMORY[0x1E69E6158];
  *(v55 + 56) = MEMORY[0x1E69E6158];
  v57 = sub_1C6B2064C();
  *(v55 + 64) = v57;
  *(v55 + 32) = v53;
  *(v55 + 40) = v52;
  sub_1C6D787B0();
  sub_1C6B7A1B0(&qword_1EDCE5CD0, MEMORY[0x1E6996158], MEMORY[0x1E6996160]);
  v58 = sub_1C6D7A0E0();
  *(v55 + 96) = v56;
  *(v55 + 104) = v57;
  *(v55 + 72) = v58;
  *(v55 + 80) = v59;
  v60 = sub_1C6D79AC0();
  sub_1C6D78D30("Running on global graph with request ID %{public}@ with request %{public}@", 74, 2, &dword_1C6B09000, v54, v60, v55);
}

uint64_t sub_1C6B79F54()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1C6B79FDC(uint64_t a1)
{
  sub_1C6B7A038();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6B7A038()
{
  if (!qword_1EDCE7CC0)
  {
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7CC0);
    }
  }
}

void sub_1C6B7A08C(uint64_t a1)
{
  if (!qword_1EDCE7A50)
  {
    sub_1C6B134B8();
    v1 = sub_1C6D78510();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE7A50);
    }
  }
}

unint64_t sub_1C6B7A104()
{
  result = qword_1EC1D6FC0;
  if (!qword_1EC1D6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D6FC0);
  }

  return result;
}

void sub_1C6B7A158(uint64_t a1)
{
  if (!qword_1EDCE64A0)
  {
    sub_1C6D783E0();
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE64A0);
    }
  }
}

uint64_t sub_1C6B7A1B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C6B7A214()
{
  result = qword_1EC1D6FC8;
  if (!qword_1EC1D6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D6FC8);
  }

  return result;
}

uint64_t sub_1C6B7A268()
{
  v1 = sub_1C6D768B0();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = sub_1C6D76950();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1C6D76920();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1C6D76820();
  [v0 heavyClickMinimumDuration];
  sub_1C6D76800();
  [v0 sportsTagSeenMinimumDuration];
  [v0 sportsTagSeenEnableFeedSource];
  [v0 sportsTagSeenEnableSportsManagementDetailSource];
  [v0 sportsTagSeenEnableSportsManagementSource];
  sub_1C6D76900();
  [v0 trackListenedMinimumDuration];
  sub_1C6D76930();
  [v0 trackVisitedMinimumDuration];
  sub_1C6D76890();
  return sub_1C6D769E0();
}

uint64_t sub_1C6B7A480@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  sub_1C6B7E734(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v77 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7E910(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v85 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1C6D76740();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v9);
  v84 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7EAA4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v83 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6D76700();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v99 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v98 = v68 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v97 = v68 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v96 = v68 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v95 = v68 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v90 = v68 - v31;
  sub_1C6B7EC38(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v92 = v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1C6D76730();
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v91 = v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C6D76770();
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v86 = v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7EC90(0);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v82 = v68 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = [objc_opt_self() currentDevice];
  v45 = [v44 userInterfaceIdiom];

  v46 = [v1 minClusterSizeIPhone];
  v47 = [v1 minClusterSizeIPad];
  v48 = [v1 maxClusterSizeIPhone];
  v49 = [v1 maxClusterSizeIPad];
  if (v45 == 1)
  {
    v50 = v49;
  }

  else
  {
    v50 = v48;
  }

  v76 = v50;
  if (v45 == 1)
  {
    v51 = v47;
  }

  else
  {
    v51 = v46;
  }

  v75 = v51;
  v52 = &selRef_minClusterSizeIPadAutoFavorite;
  if (v45 == 1)
  {
    v53 = &selRef_maxClusterSizeIPadAutoFavorite;
  }

  else
  {
    v52 = &selRef_minClusterSizeIPhoneAutoFavorite;
    v53 = &selRef_maxClusterSizeIPhoneAutoFavorite;
  }

  if (v45 == 1)
  {
    v54 = &selRef_minMoreForYouSizeIPad;
  }

  else
  {
    v54 = &selRef_minMoreForYouSizeIPhone;
  }

  if (v45 == 1)
  {
    v55 = &selRef_maxMoreForYouSizeIPad;
  }

  else
  {
    v55 = &selRef_maxMoreForYouSizeIPhone;
  }

  if (v45 == 1)
  {
    v56 = &selRef_maxUnpaidArticlesIPad;
  }

  else
  {
    v56 = &selRef_maxUnpaidArticlesIPhone;
  }

  if (v45 == 1)
  {
    v57 = &selRef_maxPublisherOccurrencesIPad;
  }

  else
  {
    v57 = &selRef_maxPublisherOccurrencesIPhone;
  }

  v81 = [v2 *v52];
  v80 = [v2 *v53];
  v72 = [v2 *v54];
  v71 = [v2 *v55];
  v94 = [v2 *v56];
  v93 = [v2 *v57];
  v79 = v2;
  v70 = [v2 maxEvergreenArticlesPerGroup];
  v69 = sub_1C6B6061C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1CCA52C30]();
  sub_1C6D76710();
  v88 = sub_1C6D766C0();
  v58 = *(v88 - 8);
  v87 = *(v58 + 56);
  v89 = v58 + 56;
  v59 = v92;
  v87(v92, 1, 1, v88);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  v68[1] = sub_1C6D76680();
  sub_1C6D76690();
  sub_1C6D766A0();
  sub_1C6D76670();
  sub_1C6D76640();
  sub_1C6D76650();
  sub_1C6D766B0();
  sub_1C6D76660();
  sub_1C6B7E8C8(&qword_1EDCE6288, MEMORY[0x1E69E3478], MEMORY[0x1E69E3470]);
  sub_1C6B7E8C8(&qword_1EDCE6290, MEMORY[0x1E69E3448], MEMORY[0x1E69E3440]);
  sub_1C6D766D0();
  v69 = [v2 maxEvergreenArticlesPerGroup];
  v70 = sub_1C6B6061C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1CCA52C30]();
  sub_1C6D76710();
  v87(v59, 1, 1, v88);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D76580();
  sub_1C6D76590();
  sub_1C6D765A0();
  sub_1C6D76570();
  sub_1C6D76540();
  sub_1C6D76550();
  sub_1C6D765B0();
  sub_1C6D76560();
  sub_1C6B7E8C8(&qword_1EDCE62A8, MEMORY[0x1E69E33D8], MEMORY[0x1E69E33D0]);
  sub_1C6B7E8C8(&qword_1EDCE62B0, MEMORY[0x1E69E33A8], MEMORY[0x1E69E33A0]);
  v60 = v92;
  sub_1C6D766D0();
  v61 = v79;
  [v79 channelScoreWeight];
  v81 = v62;
  v73[13](v84, *MEMORY[0x1E69E34D8], v74);
  v63 = MEMORY[0x1E69E7CC0];
  v80 = sub_1C6B60950(MEMORY[0x1E69E7CC0]);
  [v61 managedTopicMultiplier];
  v74 = v64;
  [v61 managedWinnerTopicMultiplier];
  v73 = [v61 maxNumberOfTotalTopicAndChannelGroups];
  v69 = [v61 maxEvergreenArticlesPerGroup];
  v70 = sub_1C6B6061C(v63);
  MEMORY[0x1CCA52C30]();
  sub_1C6D76710();
  v87(v60, 1, 1, v88);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D76600();
  sub_1C6D76610();
  sub_1C6D76620();
  sub_1C6D765F0();
  sub_1C6D765C0();
  sub_1C6D765D0();
  sub_1C6D76630();
  sub_1C6D765E0();
  sub_1C6B7E8C8(&qword_1EDCE6298, MEMORY[0x1E69E3428], MEMORY[0x1E69E3420]);
  sub_1C6B7E8C8(&qword_1EDCE62A0, MEMORY[0x1E69E33F8], MEMORY[0x1E69E33F0]);
  v65 = v92;
  sub_1C6D766D0();
  v66 = v79;
  [v79 relatedTopicMultiplier];
  [v66 relatedTopicRatioFilter];
  v72 = [v66 thumbnailMinHammingDistance];
  [v66 topicAutofavoritedMultiplier];
  v70 = [v66 maxEvergreenArticlesPerGroup];
  v71 = sub_1C6B6061C(MEMORY[0x1E69E7CC0]);
  sub_1C6D766F0();
  sub_1C6D76750();
  sub_1C6D76710();
  v87(v65, 1, 1, v88);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  v89 = sub_1C6D76460();
  sub_1C6D76470();
  sub_1C6D76480();
  sub_1C6D76450();
  sub_1C6D76430();
  sub_1C6D76440();
  sub_1C6D76490();
  sub_1C6D764A0();
  sub_1C6B7E8C8(&qword_1EDCE62D0, MEMORY[0x1E69E3328], MEMORY[0x1E69E3320]);
  sub_1C6B7E8C8(&qword_1EDCE62C8, MEMORY[0x1E69E3338], MEMORY[0x1E69E3330]);
  sub_1C6D766D0();
  [v66 topicFavoritedMultiplier];
  [v66 topicGroupSizeMultiplier];
  [v66 topicGroupableMultiplier];
  [v66 topicScoreWeight];
  [v66 topicSpecificityMultiplier];
  return sub_1C6D764B0();
}

uint64_t sub_1C6B7B540(void *a1)
{
  v3 = sub_1C6D76B00();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1C6D76B30();
  [a1 articleLengthAggregateWeight];
  [v1 articleLengthLongThreshold];
  [v1 articleLengthMediumThreshold];
  [a1 baselineRatePrior];
  [v1 baselineImpressionPrior];
  [v1 baselineImpressionPrior];
  sub_1C6D76AF0();
  [v1 featureImpressionPrior];
  sub_1C6D76AF0();
  sub_1C6D76B20();
  [a1 publisherAggregateWeight];
  [v1 publisherTopicIDEventCountMinimum];
  return sub_1C6D76A70();
}

id sub_1C6B7B72C@<X0>(uint64_t a1@<X8>)
{
  v72[16] = a1;
  v2 = sub_1C6D76B70();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_1C6D76990();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v72[15] = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v72[14] = v72 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v72[13] = v72 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v72[12] = v72 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v72[11] = v72 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v72[10] = v72 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v72[9] = v72 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v72[8] = v72 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v72[20] = v72 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v72[19] = v72 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v72[18] = v72 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v72[17] = v72 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = v72 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = v72 - v48;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = v72 - v52;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = v72 - v56;
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = v72 - v60;
  v62 = sub_1C6D76B50();
  MEMORY[0x1EEE9AC00](v62 - 8, v63);
  v72[7] = v72 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1C6D76AA0();
  v67 = MEMORY[0x1EEE9AC00](v65 - 8, v66);
  v69 = v72 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 defaultScoringConfig];
  if (result)
  {
    v71 = result;
    [result decayFactor];

    [v1 topStoriesGroupAggregatesGroupBias];
    [v1 trendingGroupAggregatesGroupBias];
    v72[6] = v69;
    sub_1C6D76A90();
    [v1 heavyClickClickValue];
    [v1 heavyClickImpressionValue];
    sub_1C6D76AF0();
    [v1 heavyClickBaselineClickValue];
    [v1 heavyClickBaselineImpressionValue];
    sub_1C6D76AF0();
    v72[5] = v61;
    sub_1C6D76980();
    [v1 presentationClickValue];
    [v1 presentationImpressionValue];
    sub_1C6D76AF0();
    [v1 presentationBaselineClickValue];
    [v1 presentationBaselineImpressionValue];
    sub_1C6D76AF0();
    v72[4] = v57;
    sub_1C6D76980();
    [v1 weakClickClickValue];
    [v1 weakClickImpressionValue];
    sub_1C6D76AF0();
    [v1 weakClickBaselineClickValue];
    [v1 weakClickBaselineImpressionValue];
    sub_1C6D76AF0();
    v72[3] = v53;
    sub_1C6D76980();
    [v1 dislikeClickValue];
    [v1 dislikeImpressionValue];
    sub_1C6D76AF0();
    [v1 dislikeBaselineClickValue];
    [v1 dislikeBaselineImpressionValue];
    sub_1C6D76AF0();
    v72[2] = v49;
    sub_1C6D76980();
    [v1 visitClickValue];
    [v1 visitImpressionValue];
    sub_1C6D76AF0();
    [v1 visitBaselineClickValue];
    [v1 visitBaselineImpressionValue];
    sub_1C6D76AF0();
    v72[1] = v45;
    sub_1C6D76980();
    [v1 subscribeClickValue];
    [v1 subscribeImpressionValue];
    sub_1C6D76AF0();
    [v1 subscribeBaselineClickValue];
    [v1 subscribeBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 ignoreClickValue];
    [v1 ignoreImpressionValue];
    sub_1C6D76AF0();
    [v1 ignoreBaselineClickValue];
    [v1 ignoreBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 likeClickValue];
    [v1 likeImpressionValue];
    sub_1C6D76AF0();
    [v1 likeBaselineClickValue];
    [v1 likeBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 muteClickValue];
    [v1 muteImpressionValue];
    sub_1C6D76AF0();
    [v1 muteBaselineClickValue];
    [v1 muteBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 savedClickValue];
    [v1 savedImpressionValue];
    sub_1C6D76AF0();
    [v1 savedBaselineClickValue];
    [v1 savedBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 shareClickValue];
    [v1 shareImpressionValue];
    sub_1C6D76AF0();
    [v1 shareBaselineClickValue];
    [v1 shareBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 sportsTagSeenClickValue];
    [v1 sportsTagSeenImpressionValue];
    sub_1C6D76AF0();
    [v1 sportsTagSeenBaselineClickValue];
    [v1 sportsTagSeenBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 trackFinishedClickValue];
    [v1 trackFinishedImpressionValue];
    sub_1C6D76AF0();
    [v1 trackFinishedBaselineClickValue];
    [v1 trackFinishedBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 trackListenedClickValue];
    [v1 trackListenedImpressionValue];
    sub_1C6D76AF0();
    [v1 trackListenedBaselineClickValue];
    [v1 trackListenedBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 trackVisitedClickValue];
    [v1 trackVisitedImpressionValue];
    sub_1C6D76AF0();
    [v1 trackVisitedBaselineClickValue];
    [v1 trackVisitedBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 unsubscribeClickValue];
    [v1 unsubscribeImpressionValue];
    sub_1C6D76AF0();
    [v1 unsubscribeBaselineClickValue];
    [v1 unsubscribeBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    [v1 unmuteClickValue];
    [v1 unmuteImpressionValue];
    sub_1C6D76AF0();
    [v1 unmuteBaselineClickValue];
    [v1 unmuteBaselineImpressionValue];
    sub_1C6D76AF0();
    sub_1C6D76980();
    sub_1C6D76B40();
    return sub_1C6D76AB0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B7C3F0@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v136) = a3;
  v155 = a2;
  v156 = a4;
  v5 = sub_1C6D769D0();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v154 = v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D767F0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v128 = v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v127 = v121 - v13;
  v14 = sub_1C6D76840();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v158 = v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6D768D0();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v150 = v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v152 = v121 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v121 - v25;
  v27 = sub_1C6D76860();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v147 = v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v121 - v32;
  v34 = sub_1C6D769B0();
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C6D76970();
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v157 = v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = v121 - v43;
  v45 = sub_1C6B7D894();
  [a1 anfMultiplier];
  v146 = v46;
  [a1 autofavoritedVoteCoefficient];
  v145 = v47;
  [a1 ctrWithOneAutofavorited];
  [a1 ctrWithThreeAutofavorited];
  [a1 ctrWithTwoAutofavorited];
  [a1 ctrWithZeroAutofavorited];
  v148 = v44;
  sub_1C6D76960();
  [a1 conversionScoreDemocratizationFactor];
  v144 = v48;
  [a1 clientSideEngagementBoostANFMutiplier];
  v143 = v49;
  [a1 clientSideEngagementBoostFeaturedArticleMultiplier];
  v142 = v50;
  [a1 clientSideEngagementBoostFeatureCandidateArticleMultiplier];
  v141 = v51;
  [a1 clientSideEngagementBoostFreeCohortCTRCap];
  v140 = v52;
  [a1 clientSideEngagementBoostPaidCohortCTRCap];
  v139 = v53;
  [a1 clientSideEngagementBoostReduceVisibilityMultiplier];
  v138 = v54;
  [a1 clientSideEngagementBoostTagQualityMultiplier];
  v137 = v55;
  [a1 contentTriggerDampenerCoefficient];
  [a1 contentTriggerMaxDampener];
  [a1 contentTriggerMaxEventCount];
  [a1 contentTriggerMinScoreWeight];
  [a1 contentTriggerScoreExponent];
  [a1 contentTriggerTagWeightExponent];
  v149 = v37;
  sub_1C6D769A0();
  v56 = [a1 conversionCohort];
  [v56 userBaseline];
  v153 = v57;

  v58 = [a1 conversionCohort];
  [v58 considerPublisherTopicAggregates];

  v59 = [a1 conversionCohort];
  [v59 dilutionFactor];
  v135 = v60;

  v61 = [a1 conversionCohort];
  [v61 enableUndampening];

  v62 = [a1 conversionCohort];
  [v62 exponentialFavoritedBoost];

  v63 = [a1 conversionCohort];
  [v63 globalWeight];

  v64 = [a1 conversionCohort];
  [v64 globalWeightHalfLife];

  v65 = [a1 conversionCohort];
  [v65 globalWeightInitialMultiplier];

  v66 = [a1 conversionCohort];
  [v66 paddingFactor];

  v67 = [a1 conversionCohort];
  [v67 postBaselineCurvature];

  v68 = [a1 conversionCohort];
  [v68 preBaselineCurvature];

  v69 = [a1 conversionCohort];
  [v69 favoritedBoost];

  v70 = [a1 conversionCohort];
  [v70 undampenOnlyAboveBaselineMembership];

  v71 = [a1 conversionCohort];
  [v71 useExponentialFavoritedBoost];

  v72 = [a1 conversionCohort];
  [v72 useRelativePersonalizationValue];

  v151 = v33;
  sub_1C6D76850();
  [a1 ctrWithSubscribedChannel];
  v134 = v73;
  LODWORD(v135) = [a1 dampenerEnabled];
  [a1 evergreenHalfLifeCoefficient];
  v133 = v74;
  [a1 audioMultiplierForFreeUsers];
  [a1 bundleFreeMultiplierForFreeUsers];
  if ((v45 & 1) == 0)
  {
    [a1 bundlePaidMultiplierForFreeUsers];
  }

  [a1 conversionCoefficientForFreeUsers];
  [a1 evergreenMultiplierForFreeUsers];
  [a1 featuredMultiplierForFreeUsers];
  v153 = v26;
  sub_1C6D768C0();
  [a1 halfLifeCoefficient];
  v132 = v75;
  [a1 userFeedbackHalfLifeCoefficient];
  v130 = v76;
  [a1 articleListenedPenalty];
  v129 = v77;
  v131 = [a1 multiplierEnabled];
  [a1 mutedVoteCoefficient];
  v126 = v78;
  [a1 nicheContentManagedTopicBoostAllTags];
  [a1 nicheContentDefaultFlowRate];
  v125 = v79;
  [a1 nicheContentDefaultSubscriptionRate];
  v124 = v80;
  v81 = [a1 lowFlowBoostEventEstimationConfig];
  [v81 exponent];

  v82 = [a1 lowFlowBoostEventEstimationConfig];
  [v82 padding];

  v83 = [a1 lowFlowBoostEventEstimationConfig];
  [v83 prior];

  sub_1C6D767E0();
  [a1 nicheContentExcludeNonGroupableTopics];
  v84 = [a1 lowFlowBoostFetchEstimationConfig];
  [v84 exponent];

  v85 = [a1 lowFlowBoostFetchEstimationConfig];
  [v85 padding];

  v86 = [a1 lowFlowBoostFetchEstimationConfig];
  [v86 prior];

  sub_1C6D767E0();
  [a1 lowFlowBoostFetchCountWeight];
  v123 = v87;
  [a1 nicheContentManagedTopicBoost];
  v122 = v88;
  [a1 nicheContentBaselineMembershipMultiplier];
  [a1 lowFlowBoostFactor];
  [a1 nicheContentBoostOnlyAboveBaselineMembership];
  [a1 lowFlowBoostMaxProductFactor];
  [a1 nicheContentPublisherFlowExponent];
  [a1 nicheContentPublisherSubscriptionExponent];
  [a1 nicheContentQualityThreshold];
  [a1 nicheContentServerFlowWeight];
  [a1 nicheContentShouldBoostPublisher];
  [a1 nicheContentTopicFlowExponent];
  [a1 nicheContentTopicSubscriptionExponent];
  sub_1C6D76830();
  [a1 audioMultiplierForPaidUsers];
  [a1 bundleFreeMultiplierForPaidUsers];
  if ((v45 & 1) == 0)
  {
    [a1 bundlePaidMultiplierForPaidUsers];
  }

  [a1 conversionCoefficientForPaidUsers];
  [a1 evergreenMultiplierForPaidUsers];
  [a1 featuredMultiplierForPaidUsers];
  sub_1C6D768C0();
  [a1 personalizedMultiplierBaselineMembership];
  [a1 personalizedMultiplierMembershipDampener];
  [a1 personalizedMultiplierPostBaselineCurvature];
  [a1 personalizedMultiplierPreBaselineCurvature];
  sub_1C6D769C0();
  [a1 publisherDampenerWeight];
  v128 = v89;
  [a1 articleReadPenalty];
  v127 = v90;
  [a1 recentlyFollowedDurationThreshold];
  v125 = v91;
  [a1 recentlyFollowedMultiplier];
  v124 = v92;
  LODWORD(v123) = [a1 respectHalfLifeOverride];
  [a1 headlineSeenPenalty];
  v122 = v93;
  [a1 globalScoreCoefficientFree];
  v121[9] = v94;
  [a1 globalScoreCoefficientHalfLife];
  v121[8] = v95;
  [a1 globalScoreCoefficientInitialMultiplier];
  v121[7] = v96;
  [a1 globalScoreCoefficientPaid];
  v121[6] = v97;
  [a1 globalScoreDemocratizationFactor];
  v121[5] = v98;
  [a1 sparseTagsPenalty];
  v121[4] = v99;
  [a1 subscribedChannelScoreCoefficient];
  v121[3] = v100;
  [a1 subscribedTopicsScoreCoefficient];
  v121[2] = v101;
  [a1 ctrWithOneSubscribed];
  [a1 ctrWithThreeSubscribed];
  [a1 ctrWithTwoSubscribed];
  [a1 ctrWithZeroSubscribed];
  sub_1C6D76960();
  v102 = 0;
  if ((v136 & 1) == 0)
  {
    [a1 tabiScoreCoefficient];
  }

  v136 = v102;
  [a1 audioMultiplierForTrialUsers];
  [a1 bundleFreeMultiplierForTrialUsers];
  if ((v45 & 1) == 0)
  {
    [a1 bundlePaidMultiplierForTrialUsers];
  }

  [a1 conversionCoefficientForTrialUsers];
  [a1 evergreenMultiplierForTrialUsers];
  [a1 featuredMultiplierForTrialUsers];
  sub_1C6D768C0();
  v103 = [a1 userCohort];
  [v103 userBaseline];
  v121[1] = v104;

  v105 = [a1 userCohort];
  [v105 considerPublisherTopicAggregates];

  v106 = [a1 userCohort];
  [v106 dilutionFactor];
  v121[0] = v107;

  v108 = [a1 userCohort];
  [v108 enableUndampening];

  v109 = [a1 userCohort];
  [v109 exponentialFavoritedBoost];

  v110 = [a1 userCohort];
  [v110 globalWeight];

  v111 = [a1 userCohort];
  [v111 globalWeightHalfLife];

  v112 = [a1 userCohort];
  [v112 globalWeightInitialMultiplier];

  v113 = [a1 userCohort];
  [v113 paddingFactor];

  v114 = [a1 userCohort];
  [v114 postBaselineCurvature];

  v115 = [a1 userCohort];
  [v115 preBaselineCurvature];

  v116 = [a1 userCohort];
  [v116 favoritedBoost];

  v117 = [a1 userCohort];
  [v117 undampenOnlyAboveBaselineMembership];

  v118 = [a1 userCohort];
  [v118 useExponentialFavoritedBoost];

  v119 = [a1 userCohort];
  [v119 useRelativePersonalizationValue];

  sub_1C6D76850();
  [a1 peopleAlsoReadBaselineScore];
  [a1 peopleAlsoReadConditionalScoreCoefficient];
  [a1 peopleAlsoReadScoreCoefficient];
  return sub_1C6D767A0();
}

id sub_1C6B7D894()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    sub_1C6D795A0();
    goto LABEL_10;
  }

  v2 = sub_1C6D795A0();
  v4 = v3;

  v5 = sub_1C6D795A0();
  if (!v4)
  {
LABEL_10:

    return 0;
  }

  if (v2 == v5 && v4 == v6)
  {

    goto LABEL_12;
  }

  v8 = sub_1C6D7A130();

  result = 0;
  if (v8)
  {
LABEL_12:
    v10 = NewsCoreUserDefaults();
    v11 = [v10 BOOLForKey_];

    return v11;
  }

  return result;
}

uint64_t sub_1C6B7D9D4(void *a1)
{
  v1 = [a1 tagWeightMapping];
  sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
  sub_1C6B7DD88();
  v2 = sub_1C6D79490();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1C6D79E80() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = v2;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC8];
  v12 = (v4 + 64) >> 6;
  v42 = v12;
  v43 = v6;
  while ((v6 & 0x8000000000000000) != 0)
  {
    v16 = v11;
    if (!sub_1C6D79EA0() || (v17 = v5, swift_dynamicCast(), v20 = v44, swift_dynamicCast(), v21 = v44, v15 = v10, !v44))
    {
LABEL_30:
      sub_1C6B688C4(v6);

      return sub_1C6D767C0();
    }

LABEL_19:
    v22 = v3;
    v23 = v20;
    v24 = v21;
    v25 = [v23 integerValue];
    [v24 doubleValue];
    v27 = v26;
    v28 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v16;
    v31 = sub_1C6B64D8C(v25);
    v32 = v28[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_32;
    }

    v35 = v30;
    if (v28[3] >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v11 = v44;
        if (v30)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1C6B72D88();
        v11 = v44;
        if (v35)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_1C6B6EB54(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_1C6B64D8C(v25);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_34;
      }

      v31 = v36;
      v11 = v44;
      if (v35)
      {
LABEL_8:
        *(v11[7] + 8 * v31) = v27;

        goto LABEL_9;
      }
    }

    v11[(v31 >> 6) + 8] |= 1 << v31;
    *(v11[6] + 8 * v31) = v25;
    *(v11[7] + 8 * v31) = v27;

    v38 = v11[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_33;
    }

    v11[2] = v40;
LABEL_9:
    v10 = v15;
    v5 = v17;
    v3 = v22;
    v12 = v42;
    v6 = v43;
  }

  v13 = v10;
  v14 = v5;
  v15 = v10;
  if (v5)
  {
LABEL_15:
    v16 = v11;
    v17 = (v14 - 1) & v14;
    v18 = (v15 << 9) | (8 * __clz(__rbit64(v14)));
    v19 = *(*(v6 + 56) + v18);
    v20 = *(*(v6 + 48) + v18);
    v21 = v19;
    if (!v20)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_30;
    }

    v14 = *(v3 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

unint64_t sub_1C6B7DD88()
{
  result = qword_1EDCEA4A0;
  if (!qword_1EDCEA4A0)
  {
    sub_1C6B0C69C(255, &qword_1EDCEA8C0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA4A0);
  }

  return result;
}

uint64_t sub_1C6B7DDF0(uint64_t a1, char a2)
{
  [v2 channelTopicMappingWeight];
  [v2 democratizationFactor];
  [v2 locationScoreDecayFactor];
  [v2 locationWeight];
  [v2 maxDistanceThreshold];
  [v2 maxLocationsToConsider];
  if (a2)
  {
    [v2 popularityMultiplierBoost];
  }

  [v2 popularityMultiplierExponent];
  [v2 topicTopicMappingWeight];
  [v2 userMembershipWeight];
  return sub_1C6D76F70();
}

uint64_t sub_1C6B7DF50@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_1C6D76AC0();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v37 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C6D767D0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v35 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D76A80();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v34 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6D767B0();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[1] = v13;
  v14 = sub_1C6D76780();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v17;
  v18 = sub_1C6D76A40();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v33 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1C6D79170();
  v21 = *(v36 - 8);
  v23 = MEMORY[0x1EEE9AC00](v36, v22);
  v25 = v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v25, *MEMORY[0x1E69B5A20], v23);
  v26 = sub_1C6D79130();
  v27 = sub_1C6D79120();
  v28 = sub_1C6D79150();
  v31 = v28;
  sub_1C6B7A268();
  sub_1C6B7A480(v17);
  sub_1C6B7C3F0(v26, 0, 0, v13);
  sub_1C6B7B540(v26);
  sub_1C6B7D9D4(v28);
  sub_1C6B7E2C4(v27);
  sub_1C6B7B72C(v37);
  sub_1C6D76A50();

  return (*(v21 + 8))(v25, v36);
}

void *sub_1C6B7E2C4(void *a1)
{
  v45 = sub_1C6D76AE0();
  v41 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v2);
  v44 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v40 = &v35 - v7;
  v8 = [a1 topicsConfig];
  sub_1C6B0C69C(0, &unk_1EDCEA4F0, 0x1E69B5470);
  v9 = sub_1C6D79780();

  if (v9 >> 62)
  {
LABEL_26:
    v10 = sub_1C6D79E90();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v11 = 0;
      v38 = v9 & 0xFFFFFFFFFFFFFF8;
      v39 = v9 & 0xC000000000000001;
      v42 = (v41 + 32);
      v35 = v41 + 40;
      v12 = MEMORY[0x1E69E7CC8];
      v36 = v10;
      v37 = v9;
      while (1)
      {
        if (v39)
        {
          v13 = MEMORY[0x1CCA56240](v11, v9);
        }

        else
        {
          if (v11 >= *(v38 + 16))
          {
            goto LABEL_23;
          }

          v13 = *(v9 + 8 * v11 + 32);
        }

        v14 = v13;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v43 = v11 + 1;
        v15 = [v13 topicID];
        v16 = sub_1C6D795A0();
        v18 = v17;

        [v14 capAtBaseline];
        [v14 halfLifeCoefficientOverride];
        v9 = [v14 limitInGroup];
        [v14 publisherTopicWeight];
        [v14 scoreMultiplier];
        [v14 shouldLimitInGroup];
        [v14 tagWeight];
        [v14 useHalfLifeCoefficientOverride];
        v19 = v40;
        sub_1C6D76AD0();
        v20 = *v42;
        (*v42)(v44, v19, v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v12;
        v23 = sub_1C6B5DEA8(v16, v18);
        v24 = v12[2];
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          goto LABEL_24;
        }

        v9 = v22;
        if (v12[3] >= v26)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v22)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1C6B72D54();
            if (v9)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1C6B6EB20(v26, isUniquelyReferenced_nonNull_native);
          v27 = sub_1C6B5DEA8(v16, v18);
          if ((v9 & 1) != (v28 & 1))
          {
            result = sub_1C6D7A1C0();
            __break(1u);
            return result;
          }

          v23 = v27;
          if (v9)
          {
LABEL_4:

            v12 = v46;
            (*(v41 + 40))(v46[7] + *(v41 + 72) * v23, v44, v45);

            goto LABEL_5;
          }
        }

        v29 = v45;
        v12 = v46;
        v46[(v23 >> 6) + 8] |= 1 << v23;
        v30 = (v12[6] + 16 * v23);
        *v30 = v16;
        v30[1] = v18;
        v20((v12[7] + *(v41 + 72) * v23), v44, v29);

        v31 = v12[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_25;
        }

        v12[2] = v33;
LABEL_5:
        ++v11;
        v9 = v37;
        if (v43 == v36)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC8];
LABEL_28:

  return v12;
}

void sub_1C6B7E734(uint64_t a1)
{
  if (!qword_1EDCE6278)
  {
    sub_1C6D76460();
    sub_1C6D76470();
    sub_1C6D76480();
    sub_1C6D76450();
    sub_1C6D76430();
    sub_1C6D76440();
    sub_1C6D76490();
    sub_1C6D764A0();
    sub_1C6B7E8C8(&qword_1EDCE62D0, MEMORY[0x1E69E3328], MEMORY[0x1E69E3320]);
    sub_1C6B7E8C8(&qword_1EDCE62C8, MEMORY[0x1E69E3338], MEMORY[0x1E69E3330]);
    v1 = sub_1C6D766E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6278);
    }
  }
}

uint64_t sub_1C6B7E8C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6B7E910(uint64_t a1)
{
  if (!qword_1EDCE6258)
  {
    sub_1C6D76600();
    sub_1C6D76610();
    sub_1C6D76620();
    sub_1C6D765F0();
    sub_1C6D765C0();
    sub_1C6D765D0();
    sub_1C6D76630();
    sub_1C6D765E0();
    sub_1C6B7E8C8(&qword_1EDCE6298, MEMORY[0x1E69E3428], MEMORY[0x1E69E3420]);
    sub_1C6B7E8C8(&qword_1EDCE62A0, MEMORY[0x1E69E33F8], MEMORY[0x1E69E33F0]);
    v1 = sub_1C6D766E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6258);
    }
  }
}

void sub_1C6B7EAA4(uint64_t a1)
{
  if (!qword_1EDCE6260)
  {
    sub_1C6D76580();
    sub_1C6D76590();
    sub_1C6D765A0();
    sub_1C6D76570();
    sub_1C6D76540();
    sub_1C6D76550();
    sub_1C6D765B0();
    sub_1C6D76560();
    sub_1C6B7E8C8(&qword_1EDCE62A8, MEMORY[0x1E69E33D8], MEMORY[0x1E69E33D0]);
    sub_1C6B7E8C8(&qword_1EDCE62B0, MEMORY[0x1E69E33A8], MEMORY[0x1E69E33A0]);
    v1 = sub_1C6D766E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6260);
    }
  }
}

void sub_1C6B7EC38(uint64_t a1)
{
  if (!qword_1EDCE6280)
  {
    sub_1C6D766C0();
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6280);
    }
  }
}

void sub_1C6B7EC90(uint64_t a1)
{
  if (!qword_1EDCE6250)
  {
    sub_1C6D76680();
    sub_1C6D76690();
    sub_1C6D766A0();
    sub_1C6D76670();
    sub_1C6D76640();
    sub_1C6D76650();
    sub_1C6D766B0();
    sub_1C6D76660();
    sub_1C6B7E8C8(&qword_1EDCE6288, MEMORY[0x1E69E3478], MEMORY[0x1E69E3470]);
    sub_1C6B7E8C8(&qword_1EDCE6290, MEMORY[0x1E69E3448], MEMORY[0x1E69E3440]);
    v1 = sub_1C6D766E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6250);
    }
  }
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B82104(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  sub_1C6B7FB10(v1 + *(v7 + 24), v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B7FB90(v6, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(uint64_t a1)
{
  result = qword_1EDCE4C40;
  if (!qword_1EDCE4C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B7F030@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B82104(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  sub_1C6B7FB10(a1 + *(v8 + 24), v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B7FB90(v7, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_1C6B7F1F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0) + 24);
  sub_1C6B7FB90(a2 + v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0) + 24);
  sub_1C6B7FB90(v1 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleRead.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B82104(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6B7FB10(v1 + v16, v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B7FB90(v9, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B7F640;
}

void sub_1C6B7F640(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B48784((*a1)[5], v4);
    sub_1C6B7FB90(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6B7F770(v5);
  }

  else
  {
    sub_1C6B7FB90(v9 + v3, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6B483C8(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C6B7F770(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Com_Apple_News_Personalization_SessionEventArticleRead.hasArticle.getter()
{
  sub_1C6B82104(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  sub_1C6B7FB10(v0 + *(v5 + 24), v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B7FB90(v4, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleRead.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0) + 24);
  sub_1C6B7FB90(v0 + v1, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6B82104(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  sub_1C6B7FB10(v1 + *(v8 + 28), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B7FB90(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6B7FB10(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B82104(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6B7FB90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B82104(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6B7FC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6B82104(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  sub_1C6B7FB10(a1 + *(v9 + 28), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6B7FB90(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6B7FD98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0) + 28);
  sub_1C6B7FB90(a2 + v10, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0) + 28);
  sub_1C6B7FB90(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleRead.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B82104(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0) + 28);
  *(v5 + 12) = v16;
  sub_1C6B7FB10(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B7FB90(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B80204;
}

void sub_1C6B80204(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6B7FB90(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6B7FB90(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_SessionEventArticleRead.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6B82104(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  sub_1C6B7FB10(v0 + *(v6 + 28), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6B7FB90(v5, &qword_1EDCDFD00, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleRead.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0) + 28);
  sub_1C6B7FB90(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.scrollData.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = sub_1C6D78A00();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t sub_1C6B807C4()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE4C70);
  __swift_project_value_buffer(v0, qword_1EDCE4C70);
  sub_1C6B82104(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D807C0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "scroll_data";
  *(v12 + 8) = 11;
  *(v12 + 16) = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleRead._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4C68 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4C70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleRead.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6D78AD0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(0);
          sub_1C6B820BC(&unk_1EDCE4FA0, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, &protocol conformance descriptor for Com_Apple_News_Personalization_VerticalScrollData);
          sub_1C6D78BA0();
          break;
        case 2:
          sub_1C6B80C78(a1, v5, a2, a3);
          break;
        case 1:
          sub_1C6B80BC4(a1, v5, a2, a3);
          break;
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}