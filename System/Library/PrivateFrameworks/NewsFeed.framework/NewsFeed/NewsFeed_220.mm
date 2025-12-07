unint64_t *sub_1D6EFDD60(unint64_t *result)
{
  v1 = *result;
  if (*result >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D6F05064();
    swift_allocError();
    *v2 = 0xD000000000000014;
    *(v2 + 8) = 0x80000001D73F7220;
    *(v2 + 16) = 1;
    return swift_willThrow();
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA6FB460](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_6:
    sub_1D5B9F15C(0, &unk_1EDF3B900, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  __break(1u);
  return result;
}

uint64_t HeadlineServiceType.fetchHeadlines(forFeedID:maxCount:dateRange:fromFeedBin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1D5B5D358(0, &qword_1EDF195B0, MEMORY[0x1E69E6158]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7273AE0;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v14 = *MEMORY[0x1E69B50B8];
  v15 = *(a7 + 40);

  v16 = v15(v13, a3, a4, a5, v14, a6, a7);

  return v16;
}

uint64_t HeadlineServiceType.fetchHeadlines(forFeedID:maxCount:dateRange:fromFeedBin:purpose:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1D5B5D358(0, &qword_1EDF195B0, MEMORY[0x1E69E6158]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7273AE0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v16 = *(a8 + 40);

  v17 = v16(v15, a3, a4, a5, a6, a7, a8);

  return v17;
}

uint64_t HeadlineServiceType.cachedHeadline(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = (v8 + 16);
  v10 = [objc_opt_self() cachedOnlyCachePolicy];
  v11 = *MEMORY[0x1E69B50B8];
  v12 = FCCurrentQoSOrUtilityIfMain();
  HeadlineServiceType.headline(for:cachePolicy:purpose:qualityOfService:)(a1, a2, v10, v11, v12, a3, a4);

  v13 = sub_1D725B92C();
  sub_1D725BA8C();

  swift_beginAccess();
  v14 = *v9;
  swift_unknownObjectRetain();

  return v14;
}

uint64_t sub_1D6EFE294(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  *(a2 + 16) = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t HeadlineService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t HeadlineService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t HeadlineService.headlines(for:failIfAnyMissing:cachePolicy:purpose:qualityOfService:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D6060698(0);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  else
  {
    sub_1D6060698(0);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

void sub_1D6EFE458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, char a10)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = *(a5 + 64);

  v17 = v16;
  sub_1D5B7E810(a6);
  v18 = objc_allocWithZone(MEMORY[0x1E69B5198]);
  v19 = sub_1D726265C();

  v20 = sub_1D726265C();
  v21 = [v18 initWithContext:v17 articleIDs:v19 ignoreCacheForArticleIDs:v20];

  if (qword_1EDF40368 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDFFD018;
  sub_1D5C384A0(0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7270C10;
  v24 = *(a6 + 16);
  v25 = MEMORY[0x1E69E65A8];
  *(v23 + 56) = MEMORY[0x1E69E6530];
  *(v23 + 64) = v25;
  *(v23 + 32) = v24;
  v26 = v21;
  v27 = [v26 shortOperationDescription];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1D726207C();
    v31 = v30;

    *(v23 + 96) = MEMORY[0x1E69E6158];
    *(v23 + 104) = sub_1D5B7E2C0();
    *(v23 + 72) = v29;
    *(v23 + 80) = v31;
    v32 = sub_1D7262EDC();
    sub_1D725C30C("Fetching %lu headlines with operation %{public}@", 48, 2, &dword_1D5B42000, v22, v32, v23);

    if ([a7 cachePolicy])
    {
      [v26 setOverrideArticleCachePolicy_];
      [v26 setArticleCachePolicy_];
      [a7 maximumCachedAge];
      [v26 setArticleMaximumCachedAge_];
    }

    [v26 setQualityOfService_];

    v33 = v26;
    [v33 setRelativePriority_];
    [v33 setPurpose_];

    v34 = v33;
    [v34 setShouldFailOnMissingObjects_];
    [v34 setCanSendFetchCompletionSynchronously_];
    v35 = swift_allocObject();
    *(v35 + 16) = a10 & 1;
    *(v35 + 24) = sub_1D6F053A4;
    *(v35 + 32) = v15;
    *(v35 + 40) = a3;
    *(v35 + 48) = a4;
    aBlock[4] = sub_1D6F052D8;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5C38428;
    aBlock[3] = &block_descriptor_96_0;
    v36 = _Block_copy(aBlock);

    [v34 setFetchCompletionBlock_];
    _Block_release(v36);

    if ([objc_opt_self() isMainThread] && objc_msgSend(a7, sel_cachePolicy) != 3)
    {
      sub_1D725AC4C();
      sub_1D725AC0C();
      sub_1D725AC2C();
    }

    else
    {
      [v34 start];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6EFE890(void *a1, char a2, void (*a3)(), uint64_t a4, void (*a5)(void *))
{
  v9 = [a1 error];
  if (!v9)
  {
    if ([a1 fetchedObject])
    {
      sub_1D5B9F15C(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
      if (swift_dynamicCast())
      {
        a3();

        return;
      }
    }

    if ((a2 & 1) == 0)
    {
      (a3)(MEMORY[0x1E69E7CC0]);
      return;
    }

    v18 = sub_1D7262EBC();
    if (qword_1EDF40368 != -1)
    {
      v20 = v18;
      swift_once();
      v18 = v20;
    }

    sub_1D725C31C(v18, &dword_1D5B42000, qword_1EDFFD018, "Headline parsing failed.", 24, 2, MEMORY[0x1E69E7CC0]);
    sub_1D6F05064();
    v15 = swift_allocError();
    *v19 = 0xD000000000000018;
    *(v19 + 8) = 0x80000001D73F71D0;
    *(v19 + 16) = 1;
    (a5)();
LABEL_17:

    return;
  }

  v21 = v9;
  v10 = sub_1D725828C();
  v11 = [v10 fc_isUnknownItemError];

  if (!v11 || (a2 & 1) != 0)
  {
    v12 = sub_1D7262EBC();
    if (qword_1EDF40368 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDFFD018;
    sub_1D5C384A0(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7273AE0;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1D5B7E2C0();
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    sub_1D725C31C(v12, &dword_1D5B42000, v13, "Headline fetching failed with error: %@", 39, 2, v14);

    sub_1D6F05064();
    v15 = swift_allocError();
    *v16 = v21;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    v17 = v21;
    a5(v15);

    goto LABEL_17;
  }

  (a3)(MEMORY[0x1E69E7CC0]);
}

uint64_t HeadlineService.fetchHeadlines(from:purpose:)(uint64_t a1, void *a2)
{
  sub_1D5B5534C(0, &unk_1EDF1A990, &protocolRef_FCCoreConfiguration);
  sub_1D725BDCC();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = a2;
  v6 = sub_1D725B92C();
  sub_1D6F051F8(0, &qword_1EDF05608, MEMORY[0x1E69E5E28]);
  v7 = sub_1D725BA9C();

  return v7;
}

uint64_t sub_1D6EFED50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D6F0515C(0);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  else
  {
    sub_1D605E820(MEMORY[0x1E69E7CC0]);
    sub_1D6F0515C(0);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

uint64_t HeadlineService.fetchHeadlines(for:purpose:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6060698(0);
  swift_allocObject();
  return sub_1D725BBAC();
}

double sub_1D6EFEE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = qword_1EDF40368;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDFFD018;
  sub_1D5C384A0(0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7273AE0;
  v20 = MEMORY[0x1E69E6158];
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1D5B7E2C0();
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;

  v21 = sub_1D7262EDC();
  sub_1D725C30C("Fetching headlines for issue identifier: %@", 43, 2, &dword_1D5B42000, v18, v21, v19);

  v22 = *(a7 + 64);
  sub_1D5B5D358(0, &qword_1EDF195B0, v20);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7273AE0;
  *(v23 + 32) = a5;
  *(v23 + 40) = a6;
  v24 = objc_allocWithZone(MEMORY[0x1E69B5358]);

  v25 = sub_1D726265C();

  v26 = [v24 initWithContext:v22 issueIDs:v25];

  [v26 setPurpose_];
  v27 = swift_allocObject();
  v27[2] = sub_1D6F053A4;
  v27[3] = v16;
  v27[4] = a3;
  v27[5] = a4;
  aBlock[4] = sub_1D6F05144;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6EFF444;
  aBlock[3] = &block_descriptor_77;
  v28 = _Block_copy(aBlock);

  [v26 setFetchCompletionHandler_];
  _Block_release(v28);
  sub_1D725AC4C();
  sub_1D725AC0C();
  if ([objc_opt_self() isMainThread])
  {
    sub_1D725AC2C();
  }

  else
  {
    [v26 start];
  }

  return result;
}

void sub_1D6EFF174(uint64_t a1, id a2, void (*a3)(void), __n128 a4, uint64_t a5, void (*a6)(void *))
{
  if (a1 && sub_1D5FD2BF8())
  {
    a3();
  }

  else if (a2)
  {
    v9 = a2;
    v10 = sub_1D7262EBC();
    if (qword_1EDF40368 != -1)
    {
      swift_once();
    }

    v11 = qword_1EDFFD018;
    sub_1D5C384A0(0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7273AE0;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1D5B7E2C0();
    *(v12 + 32) = 0;
    *(v12 + 40) = 0xE000000000000000;
    sub_1D725C31C(v10, &dword_1D5B42000, v11, "Failed to fetch headlinesByIssue with error: %@", 47, 2, v12);

    sub_1D6F05064();
    v13 = swift_allocError();
    *v14 = a2;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    v15 = a2;
    a6(v13);
  }

  else
  {
    v16 = sub_1D7262EBC();
    if (qword_1EDF40368 != -1)
    {
      v19 = v16;
      swift_once();
      v16 = v19;
    }

    sub_1D725C31C(v16, &dword_1D5B42000, qword_1EDFFD018, "Failed to find headlinesByIssue.", 32, 2, MEMORY[0x1E69E7CC0]);
    sub_1D6F05064();
    v17 = swift_allocError();
    *v18 = 0xD000000000000030;
    *(v18 + 8) = 0x80000001D73F6F60;
    *(v18 + 16) = 1;
    (a6)();
  }
}

double sub_1D6EFF444(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D5B5A498(0, &qword_1EDF3C6C0, 0x1E69B5348);
    sub_1D5B9F15C(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
    sub_1D5E2A738(&qword_1EC898220, &qword_1EDF3C6C0, 0x1E69B5348);
    v4 = sub_1D7261D3C();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t HeadlineService.fetchHeadlines(forTagID:maxCount:dateRange:requestType:includePaidArticles:cachedOnly:purpose:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, char a6, char a7, void *a8)
{
  if (a3 < 1)
  {
    sub_1D6060698(0);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    v26 = *a5;
    if (qword_1EDF40368 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDFFD018;
    sub_1D5C384A0(0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7273AE0;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1D5B7E2C0();
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v16 = sub_1D7262EDC();
    sub_1D725C30C("Fetching headlines for tag identifier: %@", 41, 2, &dword_1D5B42000, v14, v16, v15);

    MEMORY[0x1EEE9AC00](v17, v18);
    v19 = MEMORY[0x1E69E62F8];
    sub_1D5B9F15C(0, &qword_1EDF1AEB0, &qword_1EDF3C770, &protocolRef_FCTagProviding, MEMORY[0x1E69E62F8]);
    sub_1D725BDCC();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    *(v20 + 32) = v26;
    *(v20 + 40) = v8;
    *(v20 + 48) = a3;
    *(v20 + 56) = a4;
    *(v20 + 64) = a6 & 1;
    *(v20 + 65) = a7 & 1;
    *(v20 + 72) = a8;

    v21 = a4;
    v22 = a8;
    v23 = sub_1D725B92C();
    sub_1D5B9F15C(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, v19);
    v24 = sub_1D725BA9C();

    return v24;
  }
}

uint64_t sub_1D6EFF824(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  sub_1D5B5D358(0, &qword_1EDF195B0, MEMORY[0x1E69E6158]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  v8 = *(v6 + 16);

  v9 = v8(v7, v5, v6);

  return v9;
}

uint64_t sub_1D6EFF8F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9, char a10, void *a11)
{
  v13 = a5;
  v16 = *a1;
  if (!(*a1 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](a3, a4);
    v22 = 0x80000001D73F6ED0;
    sub_1D6F05064();
    swift_allocError();
    *v24 = 0xD00000000000002CLL;
    *(v24 + 8) = 0x80000001D73F6ED0;
    *(v24 + 16) = 1;
    swift_willThrow();
    return v22;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1DA6FB460](0, v16, a3, a4, a5, a6);
    if (v13)
    {
LABEL_6:
      swift_getObjectType();
      v19 = FCTagProviding.topKArticleListID.getter();
      if (v20)
      {
        MEMORY[0x1EEE9AC00](v19, v20);
        sub_1D6F051F8(0, &qword_1EDF05608, MEMORY[0x1E69E5E28]);
        sub_1D725BDCC();

        v21 = sub_1D725B92C();
        sub_1D5B9F15C(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
        v22 = sub_1D725BA7C();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD00000000000003ALL, 0x80000001D73F6E90);
        sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
        sub_1D7263F9C();
        v22 = 0xE000000000000000;
        sub_1D6F05064();
        swift_allocError();
        *v23 = 0;
        *(v23 + 8) = 0xE000000000000000;
        *(v23 + 16) = 1;
        swift_willThrow();
        swift_unknownObjectRelease();
      }

      return v22;
    }
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v18 = *(v16 + 32);
    swift_unknownObjectRetain();
    if (v13)
    {
      goto LABEL_6;
    }
  }

  sub_1D5B5534C(0, &unk_1EDF1A990, &protocolRef_FCCoreConfiguration);
  sub_1D725BDCC();
  v25 = swift_allocObject();
  *(v25 + 16) = v18;
  *(v25 + 24) = a7;
  *(v25 + 32) = a8;
  *(v25 + 40) = a9 & 1;
  *(v25 + 41) = a10 & 1;
  *(v25 + 48) = a11;
  swift_unknownObjectRetain();
  v26 = a8;
  v27 = a11;
  v28 = sub_1D725B92C();
  sub_1D6D8A62C(0);
  type metadata accessor for HeadlineService();
  sub_1D725BA9C();

  *(swift_allocObject() + 16) = v27;
  v29 = v27;
  v30 = sub_1D725B92C();
  sub_1D5B9F15C(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
  v31 = sub_1D725BA9C();
  swift_unknownObjectRelease();

  return v31;
}

id sub_1D6EFFDC4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  if (qword_1EDF40368 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDFFD018;
  sub_1D5C384A0(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  sub_1D7263F9C();
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1D5B7E2C0();
  *(v12 + 32) = 0;
  *(v12 + 40) = 0xE000000000000000;
  v13 = sub_1D7262EDC();
  sub_1D725C30C("Fetching feed item for tag: %@.", 31, 2, &dword_1D5B42000, v11, v13, v12);

  result = [a3 freeFeedIDForBin_];
  if (result)
  {
    v15 = result;
    v36 = sub_1D726207C();
    v17 = v16;
    v18 = [objc_allocWithZone(MEMORY[0x1E69B52D0]) init];
    [v18 setFeedID_];

    v19 = objc_opt_self();
    v20 = [v19 feedRangeFromDateRange_];
    [v18 setFeedRange_];

    if (a4 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    [v18 setMaxCount_];
    [v18 setCachedOnly_];
    sub_1D5B5D358(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D72816C0;
    *(v21 + 32) = v18;
    v22 = v18;
    v20 = v22;
    if ((a6 & 1) == 0)
    {

      goto LABEL_17;
    }

    v35 = v22;
    result = [a3 paidFeedIDForBin_];
    if (result)
    {
      v23 = result;
      v24 = sub_1D726207C();
      v26 = v25;
      v27 = [a3 asChannel];
      if (v27)
      {
        if ([*(a2 + 72) canGetSubscriptionToChannel_])
        {
          if (v24 == v36 && v26 == v17)
          {
            swift_unknownObjectRelease();

LABEL_16:
            v20 = v35;
LABEL_17:
            if (!(v21 >> 62))
            {
              v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v29)
              {
LABEL_19:
                MEMORY[0x1EEE9AC00](v29, v28);
                sub_1D6F04858(0, &unk_1EDF3B930, sub_1D6D8A62C, MEMORY[0x1E69D6B18]);
                swift_allocObject();
                v30 = sub_1D725BBAC();

                return v30;
              }

LABEL_27:

              sub_1D6F04858(0, &unk_1EDF3B930, sub_1D6D8A62C, MEMORY[0x1E69D6B18]);
              swift_allocObject();
              v30 = sub_1D725BB1C();

              return v30;
            }

LABEL_26:
            v29 = sub_1D7263BFC();
            if (v29)
            {
              goto LABEL_19;
            }

            goto LABEL_27;
          }

          v31 = sub_1D72646CC();

          if ((v31 & 1) == 0)
          {
            v32 = [objc_allocWithZone(MEMORY[0x1E69B52D0]) init];
            [v32 setFeedID_];

            v33 = [v19 feedRangeFromDateRange_];
            [v32 setFeedRange_];

            [v32 setMaxCount_];
            [v32 setCachedOnly_];
            v34 = v32;
            MEMORY[0x1DA6F9CE0]();
            if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
            }

            sub_1D726278C();

            swift_unknownObjectRelease();
            goto LABEL_16;
          }

          swift_unknownObjectRelease();
LABEL_15:

          goto LABEL_16;
        }

        swift_unknownObjectRelease();
      }

      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id HeadlineService.fetchFeed(for:maxCountPerFeed:dateRange:coreConfiguration:includePaidArticles:cachedOnly:purpose:filterOptions:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, char a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  if (qword_1EDF40368 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDFFD018;
  sub_1D5C384A0(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  v40 = 0;
  sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  sub_1D7263F9C();
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1D5B7E2C0();
  *(v12 + 32) = 0;
  *(v12 + 40) = 0xE000000000000000;
  v13 = sub_1D7262EDC();
  sub_1D725C30C("Fetching feed item for tag: %@.", 31, 2, &dword_1D5B42000, v11, v13, v12);

  result = [a1 freeFeedIDForBin_];
  if (result)
  {
    v15 = result;
    v16 = sub_1D726207C();
    v18 = v17;
    v19 = [objc_allocWithZone(MEMORY[0x1E69B52D0]) init];
    [v19 setFeedID_];

    v20 = objc_opt_self();
    v21 = [v20 feedRangeFromDateRange_];
    [v19 setFeedRange_];

    if (a2 < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    [v19 setMaxCount_];
    [v19 setCachedOnly_];
    sub_1D5B5D358(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D72816C0;
    *(v22 + 32) = v19;
    v40 = v22;
    v23 = v19;
    v24 = v23;
    if ((v8 & 1) == 0)
    {

      goto LABEL_14;
    }

    v36 = v23;
    result = [a1 paidFeedIDForBin_];
    if (result)
    {
      v25 = result;
      v26 = sub_1D726207C();
      v28 = v27;
      v29 = [a1 asChannel];
      if (v29)
      {
        if (![*(v37 + 72) canGetSubscriptionToChannel_])
        {
          swift_unknownObjectRelease();

LABEL_18:

LABEL_19:
          v24 = v36;
          if (v22 >> 62)
          {
            goto LABEL_20;
          }

          goto LABEL_15;
        }

        if (v26 == v16 && v28 == v18)
        {
          swift_unknownObjectRelease();

          goto LABEL_19;
        }

        v33 = sub_1D72646CC();

        if (v33)
        {
          swift_unknownObjectRelease();
          goto LABEL_18;
        }

        v34 = [objc_allocWithZone(MEMORY[0x1E69B52D0]) init];
        [v34 setFeedID_];

        v35 = [v20 feedRangeFromDateRange_];
        [v34 setFeedRange_];

        [v34 setMaxCount_];
        [v34 setCachedOnly_];
        v18 = v34;
        MEMORY[0x1DA6F9CE0]();
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_26:
          sub_1D726278C();

          swift_unknownObjectRelease();
          v22 = v40;
          v24 = v36;
          if (v40 >> 62)
          {
LABEL_20:
            v31 = sub_1D7263BFC();
            if (!v31)
            {
              goto LABEL_21;
            }

            goto LABEL_16;
          }

LABEL_15:
          v31 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v31)
          {
LABEL_21:

            sub_1D6F04858(0, &unk_1EDF3B930, sub_1D6D8A62C, MEMORY[0x1E69D6B18]);
            swift_allocObject();
            v32 = sub_1D725BB1C();

            return v32;
          }

LABEL_16:
          MEMORY[0x1EEE9AC00](v31, v30);
          sub_1D6F04858(0, &unk_1EDF3B930, sub_1D6D8A62C, MEMORY[0x1E69D6B18]);
          swift_allocObject();
          v32 = sub_1D725BBAC();

          return v32;
        }

LABEL_29:
        sub_1D726272C();
        goto LABEL_26;
      }

      v24 = v36;
LABEL_14:
      if (v22 >> 62)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6F009B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1D5B5D358(0, &qword_1EDF195B0, MEMORY[0x1E69E6158]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  sub_1D5B5534C(0, &unk_1EDF1A990, &protocolRef_FCCoreConfiguration);

  sub_1D725BDCC();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a4;
  v9 = a4;
  v10 = sub_1D725B92C();
  sub_1D6F051F8(0, &qword_1EDF05608, MEMORY[0x1E69E5E28]);
  type metadata accessor for HeadlineService();
  v11 = sub_1D725BA9C();

  return v11;
}

uint64_t sub_1D6F00B18()
{
  sub_1D5FD2BF8();
  sub_1D6060698(0);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t HeadlineService.fetchHeadlines(forFeedItems:feedContextByFeedID:feedItemScoreProfiles:feedPersonalizer:configuration:purpose:)(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_1D7263BFC();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D6060698(0);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  sub_1D6060698(0);
  swift_allocObject();
  return sub_1D725BB1C();
}

void sub_1D6F00CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = objc_allocWithZone(MEMORY[0x1E69B52B0]);

  v20 = [v19 init];
  [v20 setPurpose_];
  if (a6)
  {
    v21 = a6;
  }

  else
  {
    v21 = [objc_msgSend(*(a7 + 64) appConfigurationManager)];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  [v20 setConfiguration_];
  swift_unknownObjectRelease();
  [v20 setContext_];
  [v20 setPersonalizer_];
  sub_1D5B5A498(0, &qword_1EDF045C0, 0x1E69B5298);
  v22 = sub_1D7261D2C();
  [v20 setFeedContextByFeedID_];

  sub_1D5B5A498(0, &qword_1EDF1AC10, 0x1E69B6E30);
  v23 = sub_1D726265C();
  [v20 setFeedItems_];

  [v20 setFeedItemScoreProfiles_];
  v24 = swift_allocObject();
  v24[2] = sub_1D6F05050;
  v24[3] = v18;
  v24[4] = a3;
  v24[5] = a4;
  aBlock[4] = sub_1D6F05058;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6F01040;
  aBlock[3] = &block_descriptor_110;
  v25 = _Block_copy(aBlock);

  [v20 setHeadlinesCompletionHandler_];
  _Block_release(v25);
  [v20 start];
}

void sub_1D6F00F94(uint64_t a1, id a2, void (*a3)(uint64_t, id), uint64_t a4, void (*a5)(uint64_t))
{
  if (a1)
  {
    a3(a1, a2);
  }

  else
  {
    if (a2)
    {
      v6 = a2;
      v7 = a2;
      v8 = v6;
    }

    else
    {
      sub_1D6F05064();
      v8 = swift_allocError();
      v6 = v8;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
    }

    a5(v8);
  }
}

double sub_1D6F01040(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
    v4 = sub_1D726267C();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

id sub_1D6F010F4(uint64_t a1)
{
  result = [*(a1 + 56) configuration];
  if (result)
  {
    sub_1D5B9F15C(0, &qword_1EDF3B910, &unk_1EDF1A990, &protocolRef_FCCoreConfiguration, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D6F01190(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a3 + 16);
  if (!v8)
  {
    v19 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v22 = a2;
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D7263ECC();
  result = objc_opt_self();
  if ((a5 & 0x8000000000000000) == 0)
  {
    v13 = result;
    v14 = a3 + 40;
    do
    {
      v15 = objc_allocWithZone(MEMORY[0x1E69B52D0]);

      v16 = [v15 init];
      v17 = sub_1D726203C();
      [v16 setFeedID_];

      v18 = [v13 feedRangeFromDateRange_];
      [v16 setFeedRange_];

      [v16 setMaxCount_];

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      a1 = sub_1D7263EAC();
      v14 += 16;
      --v8;
    }

    while (v8);
    v19 = v23;
    a2 = v22;
    if (!(v23 >> 62))
    {
LABEL_6:
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_7:
        MEMORY[0x1EEE9AC00](a1, a2);
        sub_1D6F04858(0, &unk_1EDF3B930, sub_1D6D8A62C, MEMORY[0x1E69D6B18]);
        swift_allocObject();
        v20 = sub_1D725BBAC();

        return v20;
      }

      goto LABEL_10;
    }

LABEL_9:
    v21 = a2;
    a1 = sub_1D7263BFC();
    a2 = v21;
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_10:

    sub_1D6F04858(0, &unk_1EDF3B930, sub_1D6D8A62C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  __break(1u);
  return result;
}

char *sub_1D6F014A4(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v9 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_16:
      v22 = [objc_opt_self() defaultCachePolicy];
      FCCurrentQoSOrUtilityIfMain();
      type metadata accessor for HeadlineService();
      v23 = sub_1D6F016C4(v9, 0);

      return v23;
    }

    v28 = MEMORY[0x1E69E7CC0];
    result = sub_1D5BFC364(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v24 = a2;
    v25 = a3;
    v11 = 0;
    v12 = v28;
    v26 = v4;
    while (1)
    {
      a3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v27 = v12;
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1DA6FB460](v11, v7);
      }

      else
      {
        if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v13 = *(v7 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = i;
      result = [v13 articleID];
      if (!result)
      {
        goto LABEL_21;
      }

      v16 = result;
      v17 = sub_1D726207C();
      v4 = v18;

      v12 = v27;
      v20 = *(v27 + 16);
      v19 = *(v27 + 24);
      a2 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        sub_1D5BFC364((v19 > 1), v20 + 1, 1);
        v12 = v27;
      }

      *(v12 + 16) = a2;
      v21 = v12 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v4;
      ++v11;
      i = v15;
      if (a3 == v15)
      {
        v9 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D6F016C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D6060698(0);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  else
  {
    sub_1D6060698(0);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

uint64_t sub_1D6F0179C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D5B5534C(0, &unk_1EDF1A990, &protocolRef_FCCoreConfiguration);
  sub_1D725BDCC();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = a2;
  v7 = sub_1D725B92C();
  sub_1D6F051F8(0, &qword_1EDF05608, MEMORY[0x1E69E5E28]);
  v8 = sub_1D725BA9C();

  return v8;
}

uint64_t sub_1D6F018B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6060698(0);
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t HeadlineService.fetchFeedHeadlines(forTags:maxCountPerFeed:dateRange:fromFeedBin:cachePolicy:purpose:log:filterOptions:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (a1 >> 62)
  {
LABEL_29:
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = sub_1D7263BFC();
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v70 = MEMORY[0x1E69E7CC8];
      while (2)
      {
        v11 = v10;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1DA6FB460](v11, a1);
            v10 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (v11 >= *(v71 + 16))
            {
              goto LABEL_28;
            }

            v12 = *(a1 + 8 * v11 + 32);
            swift_unknownObjectRetain();
            v10 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
LABEL_27:
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }
          }

          v13 = [v12 feedIDForBin_];
          if (v13)
          {
            break;
          }

          sub_1D5C384A0(0);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_1D7273AE0;
          v15 = [v12 identifier];
          v16 = sub_1D726207C();
          v18 = v17;

          *(v14 + 56) = MEMORY[0x1E69E6158];
          *(v14 + 64) = sub_1D5B7E2C0();
          *(v14 + 32) = v16;
          *(v14 + 40) = v18;
          v19 = sub_1D7262EDC();
          sub_1D725C30C("Headline service could not find feed identifier for quality feed bin; tag feed fetch %{public}@", 95, 2, &dword_1D5B42000, a7, v19, v14);

          swift_unknownObjectRelease();
          ++v11;
          if (v10 == v9)
          {
            goto LABEL_31;
          }
        }

        v20 = v13;
        v21 = sub_1D726207C();
        v64 = v22;
        v65 = v21;

        v23 = [v12 identifier];
        v24 = sub_1D726207C();
        v26 = v25;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v24;
        v28 = v24;
        v29 = v26;
        v31 = sub_1D5B69D90(v28, v26);
        v32 = v70[2];
        v33 = (v30 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v35 = v30;
        if (v70[3] < v34)
        {
          sub_1D6D666FC(v34, isUniquelyReferenced_nonNull_native);
          v36 = sub_1D5B69D90(v63, v29);
          if ((v35 & 1) != (v37 & 1))
          {
LABEL_37:
            result = sub_1D726493C();
            __break(1u);
            return result;
          }

          v31 = v36;
          v38 = v64;
          v39 = v65;
          if ((v35 & 1) == 0)
          {
            goto LABEL_23;
          }

LABEL_21:
          v40 = v38;

          v41 = (v70[7] + 16 * v31);
          *v41 = v39;
          v41[1] = v40;
          swift_unknownObjectRelease();

          goto LABEL_25;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v38 = v64;
          v39 = v65;
          if (v30)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_1D6D7DE64();
          v38 = v64;
          v39 = v65;
          if (v35)
          {
            goto LABEL_21;
          }
        }

LABEL_23:
        v70[(v31 >> 6) + 8] |= 1 << v31;
        v42 = (v70[6] + 16 * v31);
        *v42 = v63;
        v42[1] = v29;
        v43 = (v70[7] + 16 * v31);
        *v43 = v39;
        v43[1] = v38;
        swift_unknownObjectRelease();
        v44 = v70[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (!v45)
        {
          v70[2] = v46;
LABEL_25:
          if (v10 != v9)
          {
            continue;
          }

          goto LABEL_31;
        }

        goto LABEL_36;
      }
    }
  }

  else
  {
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v70 = MEMORY[0x1E69E7CC8];
LABEL_31:
  sub_1D5C384A0(0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1D7279970;
  v48 = MEMORY[0x1E69E6530];
  v49 = MEMORY[0x1E69E65A8];
  v50 = v70[2];
  *(v47 + 56) = MEMORY[0x1E69E6530];
  *(v47 + 64) = v49;
  *(v47 + 32) = v50;
  [a3 absoluteTimeInterval];
  v51 = MEMORY[0x1E69E6438];
  *(v47 + 96) = MEMORY[0x1E69E63B0];
  *(v47 + 104) = v51;
  *(v47 + 72) = v52;
  *(v47 + 136) = v48;
  *(v47 + 144) = v49;
  *(v47 + 112) = a2;
  sub_1D7262EDC();
  sub_1D725C30C("Headline service will fetch %ld tag feeds with fetch window %f and max count per feed %ld", v62, *&v63, v64);

  if (v70[2])
  {
    MEMORY[0x1EEE9AC00](v53, v54);
    sub_1D6D8A62C(0);
    sub_1D725BDCC();
    v55 = sub_1D725B92C();
    sub_1D6F04CF8();
    sub_1D725BBFC();

    v56 = swift_allocObject();
    v56[2] = a5;
    v56[3] = a6;
    v56[4] = v70;
    v57 = a5;
    v58 = a6;
    v59 = sub_1D725B92C();
    sub_1D6D87DC8(0);
    v60 = sub_1D725BA9C();

    return v60;
  }

  else
  {

    sub_1D605A62C(MEMORY[0x1E69E7CC0]);
    sub_1D6F04858(0, &qword_1EDF3B958, sub_1D6D87DC8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

uint64_t sub_1D6F01FC0(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_1D7263BFC();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D6060698(0);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  sub_1D6060698(0);
  swift_allocObject();
  return sub_1D725BB1C();
}

double sub_1D6F020FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = qword_1EDF40368;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDFFD018;
  sub_1D5C384A0(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7273AE0;
  v18 = MEMORY[0x1E69E6158];
  v19 = MEMORY[0x1DA6F9D20](a5, MEMORY[0x1E69E6158]);
  v21 = v20;
  *(v17 + 56) = v18;
  *(v17 + 64) = sub_1D5B7E2C0();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  v22 = sub_1D7262EDC();
  sub_1D725C30C("Fetching article list headlines for article list IDs: %@.", 57, 2, &dword_1D5B42000, v16, v22, v17);

  v23 = [objc_allocWithZone(MEMORY[0x1E69B53B0]) init];
  v24 = sub_1D726265C();
  [v23 setArticleListIDs_];

  [v23 setContext_];
  [v23 setConfiguration_];
  [v23 setPurpose_];
  v25 = [objc_opt_self() ignoreCacheCachePolicy];
  [v23 setCachePolicyForArticleLists_];

  v26 = swift_allocObject();
  v26[2] = sub_1D5B7E910;
  v26[3] = v14;
  v26[4] = a3;
  v26[5] = a4;
  aBlock[4] = sub_1D6F051D0;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6F02BC4;
  aBlock[3] = &block_descriptor_86_0;
  v27 = _Block_copy(aBlock);

  [v23 setHeadlinesCompletionHandler_];
  _Block_release(v27);
  sub_1D725AC4C();
  sub_1D725AC0C();
  if ([objc_opt_self() isMainThread])
  {
    sub_1D725AC2C();
  }

  else
  {
    [v23 start];
  }

  return result;
}

double sub_1D6F02414(uint64_t a1, uint64_t a2, int a3, id a4, __n128 a5, void (*a6)(uint64_t), uint64_t a7, void (*a8)(id, __n128))
{
  if (a1 && a2)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v9 = 0;
    sub_1D6F04420(v10, sub_1D6F051DC);
    v20 = v11;
    if (qword_1EDF40368 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDFFD018;
    sub_1D5C384A0(0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D7273AE0;
    sub_1D6F04858(0, &qword_1EDF04600, sub_1D69A7CCC, MEMORY[0x1E69E6720]);
    v12 = MEMORY[0x1DA6F9D20](v20, v23);
    v25 = v24;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1D5B7E2C0();
    *(v22 + 32) = v12;
    *(v22 + 40) = v25;
    v26 = sub_1D7262EDC();
    sub_1D725C30C("Fetched article list headlines: %@.", 35, 2, &dword_1D5B42000, v21, v26, v22);

    v27 = 0;
    v28 = *(v20 + 16);
    a8 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v29 = (v20 + 32 + 16 * v27);
    while (v28 != v27)
    {
      if (v27 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      ++v27;
      v30 = v29 + 2;
      v31 = *v29;
      v29 += 2;
      if (v31)
      {
        v32 = *(v30 - 1);
        v12 = v31;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a8 = sub_1D699665C(0, *(a8 + 2) + 1, 1, a8);
        }

        v34 = *(a8 + 2);
        v33 = *(a8 + 3);
        v35 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          v37 = sub_1D699665C((v33 > 1), v34 + 1, 1, a8);
          v35 = v34 + 1;
          a8 = v37;
        }

        *(a8 + 2) = v35;
        v36 = a8 + 16 * v34;
        *(v36 + 4) = v12;
        *(v36 + 5) = v32;
        goto LABEL_15;
      }
    }

    if (*(a8 + 2))
    {
      sub_1D6F051F8(0, &qword_1EDF03E70, MEMORY[0x1E69E6EC8]);
      v38 = sub_1D726412C();
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC8];
    }

    v42 = v38;

    sub_1D6F04090(v39, 1, &v42);

    a6(v42);
  }

  else if (a4)
  {
    v12 = a4;
    v13 = a4;
    v9 = sub_1D7262EBC();
    if (qword_1EDF40368 != -1)
    {
LABEL_29:
      swift_once();
    }

    v14 = qword_1EDFFD018;
    sub_1D5C384A0(0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7273AE0;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1D5B7E2C0();
    *(v15 + 32) = 0;
    *(v15 + 40) = 0xE000000000000000;
    sub_1D725C31C(v9, &dword_1D5B42000, v14, "Failed to fetch article list headlines with error: %@", 53, 2, v15);

    (a8)(v12);
  }

  else
  {
    v17 = sub_1D7262EBC();
    if (qword_1EDF40368 != -1)
    {
      v40 = v17;
      swift_once();
      v17 = v40;
    }

    sub_1D725C31C(v17, &dword_1D5B42000, qword_1EDFFD018, "Failed to fetch article list headlines with no error.", 53, 2, MEMORY[0x1E69E7CC0]);
    sub_1D6F05064();
    v18 = swift_allocError();
    *v19 = 0xD00000000000004CLL;
    *(v19 + 8) = 0x80000001D73F70A0;
    *(v19 + 16) = 1;
    (a8)();
  }

  return result;
}

void *sub_1D6F02A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) && (v7 = sub_1D5B69D90(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(a4 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000026, 0x80000001D73F7160);
    MEMORY[0x1DA6F9910](a1, a2);
    MEMORY[0x1DA6F9910](0x70736572206E6920, 0xED00002065736E6FLL);
    sub_1D5B5A498(0, &unk_1EDF04620, 0x1E69B51A8);
    v11 = sub_1D7261D4C();
    MEMORY[0x1DA6F9910](v11);

    v9 = 0;
    sub_1D6F05064();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0xE000000000000000;
    *(v12 + 16) = 1;
    swift_willThrow();
  }

  return v9;
}

double sub_1D6F02BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1D5B9F15C(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
    v8 = sub_1D7261D3C();
  }

  if (a3)
  {
    sub_1D5B5A498(0, &unk_1EDF04620, 0x1E69B51A8);
    a3 = sub_1D7261D3C();
  }

  if (a4)
  {
    sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
    a4 = sub_1D7261D3C();
  }

  v10 = a5;
  v9(v8, a3, a4, a5);

  return result;
}

uint64_t sub_1D6F02D34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v26 = a7;
  v7 = a6;
  v8 = a4;
  v9 = *(a2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_4;
    }

LABEL_6:

    v25 = v10;
    sub_1D6F04858(0, &unk_1EDF3B930, sub_1D6D8A62C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  v12 = sub_1D5B9A6D8(v9, 0);
  v13 = sub_1D5E25FE8(&v25, v12 + 4, v9, a2);
  v14 = v25;

  result = sub_1D5B87E38(v14);
  if (v13 == v9)
  {
    v7 = a6;
    v8 = a4;
    v10 = MEMORY[0x1E69E7CC0];
    if (v12[2])
    {
LABEL_4:
      sub_1D5B5534C(0, &unk_1EDF1A990, &protocolRef_FCCoreConfiguration);
      sub_1D725BDCC();
      v16 = swift_allocObject();
      v16[2] = v12;
      v16[3] = v8;
      v16[4] = a3;
      v16[5] = 0;
      v17 = v26;
      v16[6] = v7;
      v16[7] = v17;
      v18 = v8;
      v19 = v7;
      v20 = sub_1D725B92C();
      sub_1D6D8A62C(0);
      type metadata accessor for HeadlineService();
      v21 = sub_1D725BA9C();

      return v21;
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6F02F6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  if (*a1 >> 62)
  {
LABEL_32:
    v46 = v5 & 0xFFFFFFFFFFFFFF8;
    a1 = sub_1D7263BFC();
    v6 = a1;
    if (a1)
    {
LABEL_3:
      v7 = 0;
      v8 = MEMORY[0x1E69E7CC8];
      while (2)
      {
        v9 = v7;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1DA6FB460](v9, v5);
          }

          else
          {
            if (v9 >= *(v46 + 16))
            {
              goto LABEL_31;
            }

            v10 = *(v5 + 8 * v9 + 32);
          }

          v11 = v10;
          v7 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v12 = [v10 identifier];
          v13 = sub_1D726207C();
          v15 = v14;

          v16 = [v11 feedID];
          if (v16)
          {
            break;
          }

          v17 = sub_1D5B69D90(v13, v15);
          v19 = v18;

          if (v19)
          {
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_1D6D7DE64();
            }

            sub_1D6713938(v17, v8, v30);

            goto LABEL_28;
          }

          v9 = (v9 + 1);
          if (v7 == v6)
          {
            goto LABEL_34;
          }
        }

        v20 = v16;
        v43 = sub_1D726207C();
        v44 = v21;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = sub_1D5B69D90(v13, v15);
        v25 = v8[2];
        v26 = (v23 & 1) == 0;
        v27 = v25 + v26;
        if (__OFADD__(v25, v26))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (v8[3] < v27)
        {
          v42 = v23;
          sub_1D6D666FC(v27, isUniquelyReferenced_nonNull_native);
          v28 = sub_1D5B69D90(v13, v15);
          if ((v42 & 1) != (v29 & 1))
          {
LABEL_37:
            result = sub_1D726493C();
            __break(1u);
            return result;
          }

          v24 = v28;
          if ((v42 & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_24:

          v31 = (v8[7] + 16 * v24);
          *v31 = v43;
          v31[1] = v44;

          goto LABEL_28;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if (v23)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v32 = v23;
          sub_1D6D7DE64();
          if (v32)
          {
            goto LABEL_24;
          }
        }

LABEL_26:
        v8[(v24 >> 6) + 8] |= 1 << v24;
        v33 = (v8[6] + 16 * v24);
        *v33 = v13;
        v33[1] = v15;
        v34 = (v8[7] + 16 * v24);
        *v34 = v43;
        v34[1] = v44;

        v35 = v8[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (!v36)
        {
          v8[2] = v37;
LABEL_28:
          if (v7 != v6)
          {
            continue;
          }

          goto LABEL_34;
        }

        goto LABEL_36;
      }
    }
  }

  else
  {
    v46 = v5 & 0xFFFFFFFFFFFFFF8;
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v8 = MEMORY[0x1E69E7CC8];
LABEL_34:
  MEMORY[0x1EEE9AC00](a1, a2);
  sub_1D5B9F15C(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
  sub_1D725BDCC();
  v38 = swift_allocObject();
  *(v38 + 16) = v8;
  *(v38 + 24) = a5;

  v39 = sub_1D725B92C();
  sub_1D6D87DC8(0);
  v40 = sub_1D725BA8C();

  return v40;
}

uint64_t sub_1D6F03394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_4;
    }

LABEL_6:

    sub_1D6060698(0);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  v9 = a1;
  v5 = sub_1D5B9A6D8(v4, 0);
  v6 = sub_1D5E2A8BC();

  result = sub_1D5B87E38(v10);
  if (v6 == v4)
  {
    a1 = v9;
    if (v5[2])
    {
LABEL_4:
      MEMORY[0x1EEE9AC00](a1, a2);
      sub_1D6060698(0);
      swift_allocObject();
      v8 = sub_1D725BBAC();

      return v8;
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1D6F03530(uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1D5B9F15C(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
  sub_1D6F04ED0();
  v8 = sub_1D72623DC();
  sub_1D6EFCEC4(a3, &v8);
  v7 = v6;

  *a4 = v7;
}

void sub_1D6F0361C(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [*a1 identifier];
  v6 = sub_1D726207C();
  v8 = v7;

  if (!*(a2 + 16))
  {

    goto LABEL_7;
  }

  v9 = sub_1D5B69D90(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_7:
    *a3 = 0;
    a3[1] = 0xE000000000000000;
    return;
  }

  v12 = (*(a2 + 56) + 16 * v9);
  v13 = v12[1];
  *a3 = *v12;
  a3[1] = v13;
}

void sub_1D6F036E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = qword_1EDF40368;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDFFD018;
  sub_1D5C384A0(0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7273AE0;
  v20 = sub_1D5B5A498(0, &qword_1EDF1AB48, 0x1E69B52D0);
  v21 = MEMORY[0x1DA6F9D20](a5, v20);
  v23 = v22;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1D5B7E2C0();
  *(v19 + 32) = v21;
  *(v19 + 40) = v23;
  v24 = sub_1D7262EDC();
  sub_1D725C30C("Fetching feed items for requests: %@.", 37, 2, &dword_1D5B42000, v18, v24, v19);

  v25 = [objc_allocWithZone(MEMORY[0x1E69B52D8]) init];
  [v25 setPurpose_];
  v26 = *(a7 + 64);
  [v25 setContext_];
  [v25 setConfiguration_];
  v27 = sub_1D726265C();
  [v25 setFeedRequests_];

  [v25 setEdgeCacheHint_];
  [v25 setOptions_];
  sub_1D5B5D358(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D72816C0;
  *(v28 + 32) = [objc_opt_self() transformationWithFilterOptions:a10 configuration:a8 context:v26];
  sub_1D5B5534C(0, &unk_1EDF1A9F0, &protocolRef_FCFeedTransforming);
  v29 = sub_1D726265C();

  [v25 setFeedTransformations_];

  v30 = swift_allocObject();
  v30[2] = a3;
  v30[3] = a4;
  v30[4] = sub_1D5BE643C;
  v30[5] = v16;
  v30[6] = a5;
  aBlock[4] = sub_1D6F050B8;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6F03FB0;
  aBlock[3] = &block_descriptor_55_1;
  v31 = _Block_copy(aBlock);

  [v25 setRequestCompletionHandler_];
  _Block_release(v31);
  [v25 start];
}

void sub_1D6F03A90(int a1, unint64_t a2, id a3, __n128 a4, void (*a5)(id), uint64_t a6, void (*a7)(unint64_t), uint64_t a8, uint64_t a9)
{
  if (!a3)
  {
    v12 = a2;
    if (!a2)
    {
      v29 = sub_1D7262EBC();
      if (qword_1EDF40368 != -1)
      {
        v39 = v29;
        swift_once();
        v29 = v39;
      }

      sub_1D725C31C(v29, &dword_1D5B42000, qword_1EDFFD018, "Failed to fetch feed items with no error", 40, 2, MEMORY[0x1E69E7CC0]);
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000038, 0x80000001D73F6E00);
      v30 = sub_1D5B5A498(0, &qword_1EDF1AB48, 0x1E69B52D0);
      v31 = MEMORY[0x1DA6F9D20](a9, v30);
      MEMORY[0x1DA6F9910](v31);

      sub_1D6F05064();
      v32 = swift_allocError();
      *v33 = 0;
      *(v33 + 8) = 0xE000000000000000;
      *(v33 + 16) = 1;
      (a5)();

      return;
    }

    if (qword_1EDF40368 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDFFD018;
    sub_1D5C384A0(0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1D7273AE0;
    a5 = (v12 & 0xFFFFFFFFFFFFFF8);
    if (v12 >> 62)
    {
      v16 = sub_1D7263BFC();
      if (v16)
      {
LABEL_9:
        v10 = 0;
        v17 = MEMORY[0x1E69E7CC0];
        do
        {
          v18 = v10;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1DA6FB460](v18, v12);
              v10 = (v18 + 1);
              if (__OFADD__(v18, 1))
              {
                goto LABEL_31;
              }
            }

            else
            {
              if (v18 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_32;
              }

              v19 = *(v12 + 8 * v18 + 32);
              v10 = (v18 + 1);
              if (__OFADD__(v18, 1))
              {
LABEL_31:
                __break(1u);
LABEL_32:
                __break(1u);
                goto LABEL_33;
              }
            }

            v20 = v19;
            v21 = [v20 articleID];
            if (v21)
            {
              break;
            }

            ++v18;
            if (v10 == v16)
            {
              goto LABEL_36;
            }
          }

          v41 = v15;
          v22 = v21;
          v23 = sub_1D726207C();
          v40 = v24;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1D5B858EC(0, *(v17 + 2) + 1, 1, v17);
          }

          v26 = *(v17 + 2);
          v25 = *(v17 + 3);
          if (v26 >= v25 >> 1)
          {
            v17 = sub_1D5B858EC((v25 > 1), v26 + 1, 1, v17);
          }

          *(v17 + 2) = v26 + 1;
          v27 = &v17[16 * v26];
          v15 = v41;
          *(v27 + 4) = v23;
          *(v27 + 5) = v40;
        }

        while (v10 != v16);
        goto LABEL_36;
      }
    }

    else
    {
      v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_9;
      }
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v34 = MEMORY[0x1E69E6158];
    v35 = MEMORY[0x1DA6F9D20](v17, MEMORY[0x1E69E6158]);
    v37 = v36;

    MEMORY[0x1DA6F9910](v35, v37);

    *(v42 + 56) = v34;
    *(v42 + 64) = sub_1D5B7E2C0();
    *(v42 + 32) = 0;
    *(v42 + 40) = 0xE000000000000000;
    v38 = sub_1D7262EDC();
    sub_1D725C30C("Fetched feed items: %@.", 23, 2, &dword_1D5B42000, v15, v38, v42);

    a7(v12);
    return;
  }

  v10 = a3;
  v11 = a3;
  v12 = sub_1D7262EBC();
  if (qword_1EDF40368 != -1)
  {
LABEL_33:
    swift_once();
  }

  v13 = qword_1EDFFD018;
  sub_1D5C384A0(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7273AE0;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1D5B7E2C0();
  *(v14 + 32) = 0;
  *(v14 + 40) = 0xE000000000000000;
  sub_1D725C31C(v12, &dword_1D5B42000, v13, "Failed to fetch feed items with error: %@", 41, 2, v14);

  a5(v10);
}

double sub_1D6F03FB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1D5B5A498(0, &qword_1EDF1AAF8, 0x1E69B52E0);
    v6 = sub_1D726267C();
  }

  if (a3)
  {
    sub_1D5B5A498(0, &qword_1EDF1AC10, 0x1E69B6E30);
    a3 = sub_1D726267C();
  }

  v8 = a4;
  v7(v6, a3, a4);

  return result;
}

void sub_1D6F04090(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = a1[5];
  v8 = *a3;
  v9 = a1[4];

  v10 = sub_1D6D634F4(v9);
  v12 = v8[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v8[3] < v15)
  {
    sub_1D6D75D04(v15, v6 & 1);
    v10 = sub_1D6D634F4(v9);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1D5B5A498(0, &unk_1EDF04620, 0x1E69B51A8);
    v10 = sub_1D726493C();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1D6D86EF8();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v9;
  *(v21[7] + 8 * v10) = v7;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73F65C0);
    sub_1D5B5A498(0, &unk_1EDF04620, 0x1E69B51A8);
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](39, 0xE100000000000000);
    sub_1D726402C();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v24 = 1;
    while (v24 < a1[2])
    {
      v7 = *v6;
      v25 = *a3;
      v9 = *(v6 - 1);

      v26 = sub_1D6D634F4(v9);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1D6D75D04(v30, 1);
        v26 = sub_1D6D634F4(v9);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v32[6] + 8 * v26) = v9;
      *(v32[7] + 8 * v26) = v7;
      v33 = v32[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v34;
      v6 += 2;
      if (v4 == v24)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_1D6F04420(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 16);
  if (v5)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1D699A4E0(0, v5, 0);
    v39 = v40;
    v6 = v4 + 64;
    v7 = sub_1D7263B7C();
    v8 = 0;
    v9 = *(v4 + 36);
    v33 = v4 + 72;
    v34 = v5;
    v35 = v9;
    v36 = v4 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
    {
      v12 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v9 != *(v4 + 36))
      {
        goto LABEL_25;
      }

      v38 = v8;
      v13 = v4;
      v14 = (*(v4 + 48) + 16 * v7);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v4 + 56) + 8 * v7);

      v18 = a2(v15, v16, v17);
      if (v3)
      {

        return;
      }

      v20 = v18;
      v21 = v19;

      v22 = v39;
      v24 = *(v39 + 16);
      v23 = *(v39 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D699A4E0((v23 > 1), v24 + 1, 1);
        v22 = v39;
      }

      *(v22 + 16) = v24 + 1;
      v25 = v22 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v21;
      v10 = 1 << *(v13 + 32);
      if (v7 >= v10)
      {
        goto LABEL_26;
      }

      v6 = v36;
      v26 = *(v36 + 8 * v12);
      if ((v26 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      v4 = v13;
      v39 = v22;
      v9 = v35;
      if (v35 != *(v13 + 36))
      {
        goto LABEL_28;
      }

      v27 = v26 & (-2 << (v7 & 0x3F));
      if (v27)
      {
        v10 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v11 = v34;
      }

      else
      {
        v28 = v12 << 6;
        v29 = v12 + 1;
        v11 = v34;
        v30 = (v33 + 8 * v12);
        while (v29 < (v10 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_1D5C25E1C(v7, v35, 0);
            v10 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        sub_1D5C25E1C(v7, v35, 0);
      }

LABEL_4:
      v3 = 0;
      v8 = v38 + 1;
      v7 = v10;
      if (v38 + 1 == v11)
      {
        return;
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
LABEL_28:
    __break(1u);
  }
}

uint64_t _s8NewsFeed19HeadlineServiceTypePAAE9headlines3for7purpose13TeaFoundation7PromiseCySaySo19FCHeadlineProviding_pGGSaySSG_So18FCOperationPurposeatF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() defaultCachePolicy];
  v9 = FCCurrentQoSOrUtilityIfMain();
  v10 = (*(a4 + 8))(a1, 0, v8, a2, v9, a3, a4);

  return v10;
}

void sub_1D6F04858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6F048C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*(a1 + 16))
  {
    sub_1D5B5534C(0, &unk_1EDF1A990, &protocolRef_FCCoreConfiguration);
    sub_1D725BDCC();
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a3;
    v8[4] = a2;
    v8[5] = 0;
    v8[6] = a4;
    v8[7] = 1;

    v9 = a3;
    v10 = a4;
    v11 = sub_1D725B92C();
    sub_1D6D8A62C(0);
    sub_1D725BA9C();
  }

  else
  {
    sub_1D6F04858(0, &unk_1EDF3B930, sub_1D6D8A62C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1D725BB1C();
  }

  *(swift_allocObject() + 16) = a4;
  v12 = a4;
  v13 = sub_1D725B92C();
  sub_1D5B9F15C(0, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
  v14 = sub_1D725BA9C();

  return v14;
}

uint64_t sub_1D6F04B14(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*(a1 + 16))
  {
    sub_1D5B5534C(0, &unk_1EDF1A990, &protocolRef_FCCoreConfiguration);
    sub_1D725BDCC();
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a3;
    v12[4] = a2;
    v12[5] = a4;
    v12[6] = a5;
    v12[7] = a6;
    v13 = a4;
    v14 = a5;

    v15 = a3;
    v16 = sub_1D725B92C();
    sub_1D6D8A62C(0);
    v17 = sub_1D725BA9C();

    return v17;
  }

  else
  {
    sub_1D6F04858(0, &unk_1EDF3B930, sub_1D6D8A62C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

unint64_t sub_1D6F04CF8()
{
  result = qword_1EDF04A58;
  if (!qword_1EDF04A58)
  {
    sub_1D6D8A62C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04A58);
  }

  return result;
}

unint64_t sub_1D6F04ED0()
{
  result = qword_1EDF1AE70;
  if (!qword_1EDF1AE70)
  {
    sub_1D5B9F15C(255, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AE70);
  }

  return result;
}

uint64_t objectdestroy_25Tm_3()
{

  return swift_deallocObject();
}

unint64_t sub_1D6F05064()
{
  result = qword_1EDF28E60;
  if (!qword_1EDF28E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28E60);
  }

  return result;
}

void sub_1D6F0515C(uint64_t a1)
{
  if (!qword_1EDF179B8)
  {
    sub_1D6F051F8(255, &qword_1EDF05608, MEMORY[0x1E69E5E28]);
    v1 = sub_1D725BC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF179B8);
    }
  }
}

void sub_1D6F051F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B5A498(255, &unk_1EDF04620, 0x1E69B51A8);
    sub_1D5B9F15C(255, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, MEMORY[0x1E69E62F8]);
    v8 = v7;
    v9 = sub_1D5E2A738(&unk_1EDF04610, &unk_1EDF04620, 0x1E69B51A8);
    v10 = a3(a1, v6, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed21HeadlineServiceErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t PuzzleAccessProvider.userHasAccess(puzzle:)(void *a1)
{
  PuzzleAccessProvider.puzzleAccessState(puzzle:)(a1, &v4);
  if (v4 && v4 != 1)
  {

    v2 = 0;
  }

  else
  {
    v1 = sub_1D72646CC();

    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

void PuzzleAccessProvider.puzzleAccessState(puzzle:)(void *a1@<X0>, char *a2@<X8>)
{
  v5 = [*(v2 + 16) cachedSubscription];
  if (objc_getAssociatedObject(v5, v5 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    sub_1D5BAFAD8();
    if (swift_dynamicCast())
    {
      v6 = v19;
      v7 = [v19 integerValue];
      if (v7 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1D5EBD03C(&v22);
  }

  v6 = 0;
  v7 = 0;
LABEL_10:
  if (objc_getAssociatedObject(v5, ~v7))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    sub_1D5BAFAD8();
    if (swift_dynamicCast())
    {
      v8 = v19;
      v9 = [v8 integerValue];

      v10 = v9 - 59;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1D5EBD03C(&v22);
  }

LABEL_17:

  v10 = -59;
LABEL_18:
  v11 = *(v2 + 24);
  if (([a1 isPaid] & 1) == 0)
  {
    goto LABEL_39;
  }

  v12 = [objc_msgSend(v11 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v12, v12 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    sub_1D5EBD03C(&v22);
    goto LABEL_27;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v13 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  v13 = v19;
  v14 = [v19 integerValue];
  if (v14 == -1)
  {

    goto LABEL_39;
  }

  v15 = v14;
LABEL_28:
  if (objc_getAssociatedObject(v12, ~v15))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    sub_1D5EBD03C(&v22);
LABEL_36:

    if ((v15 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_39:
    v18 = (v10 ^ v7) & 1;
    goto LABEL_40;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v16 = v19;
  v17 = [v16 integerValue];

  if ((v17 ^ v15))
  {
    goto LABEL_39;
  }

LABEL_37:
  v18 = 2;
LABEL_40:
  *a2 = v18;
}

uint64_t PuzzleAccessProvider.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PuzzleAccessProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6F0583C(void *a1)
{
  PuzzleAccessProvider.puzzleAccessState(puzzle:)(a1, &v4);
  if (v4 && v4 != 1)
  {

    v2 = 0;
  }

  else
  {
    v1 = sub_1D72646CC();

    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

void sub_1D6F05960(void *a1, SEL *a2)
{
  v4 = [a1 articleID];
  if (!v4)
  {
    sub_1D726207C();
    v5 = sub_1D726203C();

    v4 = v5;
  }

  v6 = v4;
  [v2 *a2];
}

uint64_t FormatScrollingTrait.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6F05A78()
{
  result = qword_1EC898228;
  if (!qword_1EC898228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898228);
  }

  return result;
}

unint64_t sub_1D6F05ACC(uint64_t a1)
{
  result = sub_1D6F05AF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F05AF4()
{
  result = qword_1EC898230;
  if (!qword_1EC898230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898230);
  }

  return result;
}

unint64_t sub_1D6F05B48(void *a1)
{
  a1[1] = sub_1D611EA90();
  a1[2] = sub_1D611EAE4();
  result = sub_1D6F05A78();
  a1[3] = result;
  return result;
}

void *sub_1D6F05BC0(double *a1, uint64_t a2, unint64_t *a3, __n128 a4)
{
  v5 = v4;
  v8 = *a3;
  v9 = *(v4 + 168);
  if (*a3 >> 61 == 5)
  {
    v10 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v11 = *(v10 + 24);
    *&v43 = *(v10 + 16);
    sub_1D7147F08(a1, a2, &v43, v11, v47, a4);
    v13 = *(v10 + 24);
    *&v43 = *(v10 + 16);
  }

  else
  {
    *&v43 = *a3;
    sub_1D7147F08(a1, a2, &v43, *(v9 + 96), v47, a4);
    v14 = *(v5 + 184);
    *&v43 = v8;
    v13 = *(v14 + 96);
  }

  sub_1D7147F08(a1, a2, &v43, v13, v48, v12);
  sub_1D5BFED1C(v47, &v43);
  v38 = v44;
  v37 = v43;
  v39 = v45;
  if (*(&v44 + 1))
  {
    sub_1D5B63F14(&v37, v40);
    v15 = MEMORY[0x1E69E7CC0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1D698F994(0, v15[2] + 1, 1, v15);
      v46 = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1D698F994((v17 > 1), v18 + 1, 1, v15);
      v46 = v15;
    }

    v19 = v41;
    v20 = v42;
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
    v22 = MEMORY[0x1EEE9AC00](v21, v21);
    v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v24, v22);
    sub_1D6302700(v18, v24, &v46, v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_1D5C1661C(&v37);
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5BFED1C(v48, &v43);
  v38 = v44;
  v37 = v43;
  v39 = v45;
  if (*(&v44 + 1))
  {
    sub_1D5B63F14(&v37, v40);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v15;
    if ((v26 & 1) == 0)
    {
      v15 = sub_1D698F994(0, v15[2] + 1, 1, v15);
      v46 = v15;
    }

    v28 = v15[2];
    v27 = v15[3];
    if (v28 >= v27 >> 1)
    {
      v15 = sub_1D698F994((v27 > 1), v28 + 1, 1, v15);
      v46 = v15;
    }

    v29 = v41;
    v30 = v42;
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
    v32 = MEMORY[0x1EEE9AC00](v31, v31);
    v34 = &v37 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v34, v32);
    sub_1D6302700(v28, v34, &v46, v29, v30);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_1D5C1661C(&v37);
  }

  sub_1D6F07C10(0);
  swift_arrayDestroy();
  return v15;
}

uint64_t FormatVideoPlayerNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatVideoPlayerNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatVideoPlayerNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

double FormatVideoPlayerNodeLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 96);

  return result;
}

double FormatVideoPlayerNodeLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatVideoPlayerNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
}

uint64_t FormatVideoPlayerNodeLayoutAttributes.reuseIdentifier.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

unint64_t sub_1D6F060F8(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6E65644965646F6ELL;
      break;
    case 3:
      result = 0x656D617266;
      break;
    case 4:
      result = 0x676E697A69736572;
      break;
    case 5:
      result = 0x7865646E497ALL;
      break;
    case 6:
      result = 0x696C696269736976;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x656C797473;
      break;
    case 10:
      result = 0x6564496573756572;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6F062B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6F07768(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6F062D8(uint64_t a1)
{
  v2 = sub_1D6F0698C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F06314(uint64_t a1)
{
  v2 = sub_1D6F0698C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVideoPlayerNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 112));

  return v0;
}

uint64_t FormatVideoPlayerNodeLayoutAttributes.__deallocating_deinit()
{
  FormatVideoPlayerNodeLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatVideoPlayerNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6F0728C(0, &qword_1EC898238, sub_1D6F0698C, &type metadata for FormatVideoPlayerNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F0698C();
  sub_1D7264B5C();
  LOBYTE(v14[0]) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v14[0]) = 1;
    sub_1D72643FC();
    LOBYTE(v14[0]) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 80);
    v14[0] = *(v3 + 64);
    v14[1] = v12;
    v15 = 3;
    type metadata accessor for CGRect(0);
    sub_1D6F07BC8(&qword_1EC8801E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1D726443C();
    *&v14[0] = *(v3 + 96);
    v15 = 4;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v14[0]) = 5;
    sub_1D726442C();
    *&v14[0] = *(v3 + 112);
    v15 = 6;
    sub_1D5EB1500(*&v14[0]);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(*&v14[0]);
    LOBYTE(v14[0]) = 7;
    sub_1D726440C();
    v13 = *(v3 + 136);
    *&v14[0] = *(v3 + 128);
    BYTE8(v14[0]) = v13;
    v15 = 8;
    sub_1D5F8F434();
    sub_1D72643BC();
    *&v14[0] = *(v3 + 144);
    v15 = 9;
    type metadata accessor for FormatVideoPlayerNodeStyle();
    sub_1D6F07BC8(&qword_1EDF0B468, 255, type metadata accessor for FormatVideoPlayerNodeStyle, &protocol conformance descriptor for FormatVideoPlayerNodeStyle);
    sub_1D72643BC();
    LOBYTE(v14[0]) = 10;
    sub_1D72643FC();
    *&v14[0] = *(v3 + 168);
    v15 = 11;
    type metadata accessor for FormatImageNodeLayoutAttributes();
    sub_1D6F07BC8(&qword_1EDF1FA98, 255, type metadata accessor for FormatImageNodeLayoutAttributes, &protocol conformance descriptor for FormatImageNodeLayoutAttributes);
    sub_1D726443C();
    *&v14[0] = *(v3 + 176);
    v15 = 12;
    sub_1D6F0728C(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D6F072F4(&qword_1EC881AF0, sub_1D5F8F488, MEMORY[0x1E69E64F0]);
    sub_1D726443C();
    *&v14[0] = *(v3 + 184);
    v15 = 13;
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6F0698C()
{
  result = qword_1EC898240;
  if (!qword_1EC898240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898240);
  }

  return result;
}

uint64_t FormatVideoPlayerNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatVideoPlayerNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

uint64_t *FormatVideoPlayerNodeLayoutAttributes.init(from:)(void *a1)
{
  v3 = v1;
  sub_1D6F0728C(0, &qword_1EC898248, sub_1D6F0698C, &type metadata for FormatVideoPlayerNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F0698C();
  v21 = v8;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    v17 = a1;
  }

  else
  {
    v18 = a1;
    v9 = v19;
    LOBYTE(v22) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v10;
    LOBYTE(v22) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v11;
    LOBYTE(v22) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    type metadata accessor for CGRect(0);
    v24 = 3;
    sub_1D6F07BC8(&qword_1EDF1A740, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1D726431C();
    v13 = v23;
    *(v1 + 64) = v22;
    *(v1 + 80) = v13;
    v24 = 4;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 96) = v22;
    LOBYTE(v22) = 5;
    *(v1 + 104) = sub_1D72642FC();
    v24 = 6;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 112) = v22;
    LOBYTE(v22) = 7;
    *(v1 + 120) = sub_1D72642CC() & 1;
    v24 = 8;
    sub_1D5C6F27C();
    sub_1D726427C();
    v15 = BYTE8(v22);
    *(v1 + 128) = v22;
    *(v1 + 136) = v15;
    type metadata accessor for FormatVideoPlayerNodeStyle();
    v24 = 9;
    sub_1D6F07BC8(&qword_1EDF23110, 255, type metadata accessor for FormatVideoPlayerNodeStyle, &protocol conformance descriptor for FormatVideoPlayerNodeStyle);
    sub_1D726427C();
    *(v1 + 144) = v22;
    LOBYTE(v22) = 10;
    *(v1 + 152) = sub_1D72642BC();
    *(v1 + 160) = v16;
    type metadata accessor for FormatImageNodeLayoutAttributes();
    v24 = 11;
    sub_1D6F07BC8(&qword_1EDF1FA90, 255, type metadata accessor for FormatImageNodeLayoutAttributes, &protocol conformance descriptor for FormatImageNodeLayoutAttributes);
    sub_1D726431C();
    *(v1 + 168) = v22;
    sub_1D6F0728C(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v24 = 12;
    sub_1D6F072F4(&qword_1EC881B10, sub_1D5F8FD48, MEMORY[0x1E69E6510]);
    sub_1D726431C();
    *(v1 + 176) = v22;
    v24 = 13;
    sub_1D726431C();
    (*(v9 + 8))(v21, v20);
    v3 = v1;
    *(v1 + 184) = v22;
    v17 = v18;
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v3;
}

void sub_1D6F0728C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6F072F4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6F0728C(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_1D6F074E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatVideoPlayerNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D6F07564(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_1D6F07BC8(&qword_1EC8940C0, a2, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes, &protocol conformance descriptor for FormatVideoPlayerNodeLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D6F07664()
{
  result = qword_1EC898260;
  if (!qword_1EC898260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898260);
  }

  return result;
}

unint64_t sub_1D6F076BC()
{
  result = qword_1EC898268;
  if (!qword_1EC898268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898268);
  }

  return result;
}

unint64_t sub_1D6F07714()
{
  result = qword_1EC898270;
  if (!qword_1EC898270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898270);
  }

  return result;
}

uint64_t sub_1D6F07768(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6564496573756572 && a2 == 0xEF7265696669746ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73F72B0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C48E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73F72D0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1D6F07BC8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6F07C10(uint64_t a1)
{
  if (!qword_1EDF3B4D0)
  {
    sub_1D61BA350();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B4D0);
    }
  }
}

uint64_t sub_1D6F07CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31[1] = a3;
  v5 = sub_1D7260FEC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F08558(0, v8);
  v12 = v11;
  v13 = *(v11 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F08A94(0, v15);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[4] = a1;
  v31[5] = a2;
  sub_1D6F087CC(0, &qword_1EC898280, sub_1D6F08608, MEMORY[0x1E6981F40]);
  sub_1D6F08A0C();
  sub_1D726168C();
  sub_1D7260FDC();
  sub_1D6F08D60(&qword_1EC8982E8, sub_1D6F08558, MEMORY[0x1E697CD20]);
  sub_1D726183C();
  (*(v6 + 8))(v10, v5);
  (*(v13 + 8))(v17, v12);
  v23 = [objc_opt_self() secondaryLabelColor];
  v24 = sub_1D726189C();
  KeyPath = swift_getKeyPath();
  v31[7] = v24;
  v26 = sub_1D7260EFC();
  v27 = &v22[*(v19 + 36)];
  *v27 = KeyPath;
  v27[1] = v26;
  sub_1D7260EDC();
  sub_1D6F08C28(v28);
  sub_1D72617DC();
  return sub_1D5DCD348(v22, v29);
}

double sub_1D6F07FEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  v41 = a3;
  sub_1D6F086F4(0, a4);
  v7 = *(v6 - 8);
  v39 = v6;
  v40 = v7;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F08670(0, v9);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v38 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v37 = &v35 - v19;
  type metadata accessor for DebugFormatWorkspaceTree(0);
  sub_1D6F08D60(&qword_1EC8850C0, type metadata accessor for DebugFormatWorkspaceTree, &unk_1D73A58AC);

  v20 = sub_1D7260F8C();
  v35 = v21;
  v36 = v20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  sub_1D6F087CC(0, &qword_1EC8982A0, type metadata accessor for DebugFormatWorkspaceTreeKindGroup, MEMORY[0x1E69E62F8]);
  sub_1D5B49CBC(0, &qword_1EC8982A8, &type metadata for DebugFormatWorkspaceTreeKindGroupView);
  sub_1D6F08830();
  sub_1D6F08930();

  sub_1D72619DC();
  sub_1D7260EDC();
  sub_1D6F088B8(v23);
  v24 = v37;
  v25 = v39;
  sub_1D72617DC();
  (*(v40 + 8))(v11, v25);
  v26 = *(v14 + 16);
  v27 = v38;
  v28.n128_f64[0] = v26(v38, v24, v13);
  v29 = v41;
  v30 = v35;
  *v41 = v36;
  v29[1] = v30;
  v31 = v29;
  sub_1D6F08608(0, v28);
  v26(v31 + *(v32 + 48), v27, v13);
  v33 = *(v14 + 8);

  v33(v24, v13);
  v33(v27, v13);

  return result;
}

uint64_t sub_1D6F083B4@<X0>(uint64_t *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (v9 >> 62)
  {
    v4 = sub_1D7263BFC();

    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    result = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v4 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for DebugFormatWorkspaceTree(0);
  sub_1D6F08D60(&qword_1EC8850C0, type metadata accessor for DebugFormatWorkspaceTree, &unk_1D73A58AC);

  v5 = sub_1D7260F8C();
  v4 = v6;
  type metadata accessor for DebugFormatWorkspaceTreeKindGroup(0);
  sub_1D6F08D60(&qword_1EC8982F8, type metadata accessor for DebugFormatWorkspaceTreeKindGroup, &unk_1D73338B0);
  result = sub_1D7260F8C();
LABEL_6:
  *a3 = v5;
  a3[1] = v4;
  a3[2] = result;
  a3[3] = v8;
  return result;
}

void sub_1D6F08558(uint64_t a1, __n128 a2)
{
  if (!qword_1EC898278)
  {
    sub_1D6F087CC(255, &qword_1EC898280, sub_1D6F08608, MEMORY[0x1E6981F40]);
    sub_1D6F08A0C();
    v2 = sub_1D726169C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC898278);
    }
  }
}

void sub_1D6F08608(uint64_t a1, __n128 a2)
{
  if (!qword_1EC898288)
  {
    sub_1D6F08670(255, a2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC898288);
    }
  }
}

void sub_1D6F08670(uint64_t a1, __n128 a2)
{
  if (!qword_1EC898290)
  {
    sub_1D6F086F4(255, a2);
    sub_1D6F088B8(v2);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC898290);
    }
  }
}

void sub_1D6F086F4(uint64_t a1, __n128 a2)
{
  if (!qword_1EC898298)
  {
    sub_1D6F087CC(255, &qword_1EC8982A0, type metadata accessor for DebugFormatWorkspaceTreeKindGroup, MEMORY[0x1E69E62F8]);
    sub_1D5B49CBC(255, &qword_1EC8982A8, &type metadata for DebugFormatWorkspaceTreeKindGroupView);
    sub_1D6F08830();
    v2 = sub_1D72619FC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC898298);
    }
  }
}

void sub_1D6F087CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6F08830()
{
  result = qword_1EC8982B0;
  if (!qword_1EC8982B0)
  {
    sub_1D6F087CC(255, &qword_1EC8982A0, type metadata accessor for DebugFormatWorkspaceTreeKindGroup, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8982B0);
  }

  return result;
}

unint64_t sub_1D6F088B8(__n128 a1)
{
  result = qword_1EC8982B8;
  if (!qword_1EC8982B8)
  {
    sub_1D6F086F4(255, a1);
    sub_1D6F08930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8982B8);
  }

  return result;
}

unint64_t sub_1D6F08930()
{
  result = qword_1EC8982C0;
  if (!qword_1EC8982C0)
  {
    sub_1D5B49CBC(255, &qword_1EC8982A8, &type metadata for DebugFormatWorkspaceTreeKindGroupView);
    sub_1D6F089B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8982C0);
  }

  return result;
}

unint64_t sub_1D6F089B8()
{
  result = qword_1EC8982C8;
  if (!qword_1EC8982C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8982C8);
  }

  return result;
}

unint64_t sub_1D6F08A0C()
{
  result = qword_1EC8982D0;
  if (!qword_1EC8982D0)
  {
    sub_1D6F087CC(255, &qword_1EC898280, sub_1D6F08608, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8982D0);
  }

  return result;
}

void sub_1D6F08A94(uint64_t a1, __n128 a2)
{
  if (!qword_1EC8982D8)
  {
    sub_1D6F08AFC(255, a2);
    sub_1D6C2E5F4(255);
    v2 = sub_1D726101C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC8982D8);
    }
  }
}

void sub_1D6F08AFC(uint64_t a1, __n128 a2)
{
  if (!qword_1EC8982E0)
  {
    sub_1D6F08558(255, a2);
    sub_1D7260FEC();
    sub_1D6F08D60(&qword_1EC8982E8, sub_1D6F08558, MEMORY[0x1E697CD20]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC8982E0);
    }
  }
}

unint64_t sub_1D6F08C28(__n128 a1)
{
  result = qword_1EC8982F0;
  if (!qword_1EC8982F0)
  {
    sub_1D6F08A94(255, a1);
    sub_1D6F08558(255, v2);
    sub_1D7260FEC();
    sub_1D6F08D60(&qword_1EC8982E8, sub_1D6F08558, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1D6F08D60(&qword_1EC88D210, sub_1D6C2E5F4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8982F0);
  }

  return result;
}

uint64_t sub_1D6F08D60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6F08DA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D7257A4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - v11;
  v13 = *(v2 + 8);

  sub_1D7257A3C();
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (v13 + 32);
    do
    {
      v17 = *v15++;
      v16 = v17;
      if (v17 > 3)
      {
        if (v16 > 5)
        {
          if (v16 == 6)
          {
            sub_1D72579AC();
          }

          else
          {
            sub_1D72579BC();
          }
        }

        else if (v16 == 4)
        {
          sub_1D725798C();
        }

        else
        {
          sub_1D72579EC();
        }
      }

      else if (v16 > 1)
      {
        if (v16 == 2)
        {
          sub_1D7257A1C();
        }

        else
        {
          sub_1D72579CC();
        }
      }

      else if (v16)
      {
        sub_1D72579DC();
      }

      else
      {
        sub_1D725795C();
      }

      sub_1D7257A2C();
      (*(v5 + 8))(v8, v4);
      --v14;
    }

    while (v14);
  }

  (*(v5 + 32))(a1, v12, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_1D6F08FB4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6F0907C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6F09130(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6F091F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6F0A304(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6F09224(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE900000000000073;
  v5 = 0x65636E65746E6573;
  if (*v1 != 2)
  {
    v5 = 0x61726168436C6C61;
    v4 = 0xED00007372657463;
  }

  if (*v1)
  {
    v3 = 0x7364726F77;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D6F09364(void *a1)
{
  sub_1D6F09E80(0, &qword_1EC898338, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F09D80();
  sub_1D7264B5C();
  v16 = v9;
  v15 = 0;
  sub_1D6F09EE4();
  v11 = v13[0];
  sub_1D726443C();
  if (!v11 && *(v10 + 16))
  {
    v14 = 1;
    v13[1] = v10;
    sub_1D6F09F38();
    sub_1D6F09FAC();
    sub_1D6F09FFC();
    sub_1D72647EC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6F09528@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v19 = a2;
  sub_1D6F09C70(0);
  v5 = v4;
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F09E80(0, &qword_1EC898318, MEMORY[0x1E69E6F48]);
  v20 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F09D80();
  sub_1D7264B0C();
  if (!v2)
  {
    v24 = 0;
    sub_1D6F09DD4();
    sub_1D726431C();
    v21 = v25;
    v23 = 1;
    if (sub_1D726434C())
    {
      v22 = 1;
      sub_1D6F09E28();
      sub_1D726431C();
      v14 = sub_1D725A74C();
      (*(v18 + 8))(v8, v5);
      (*(v10 + 8))(v13, v20);
    }

    else
    {
      (*(v10 + 8))(v13, v20);
      v14 = MEMORY[0x1E69E7CC0];
    }

    v15 = v19;
    *v19 = v21;
    *(v15 + 1) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D6F09838@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6F0A350(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D6F09868@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000736563;
  v4 = 0x6170736574696877;
  v5 = 0xD000000000000010;
  v6 = 0x80000001D73BCB20;
  if (v2 != 6)
  {
    v5 = 0xD000000000000010;
    v6 = 0x80000001D73BCB40;
  }

  v7 = 0xED00007374696769;
  v8 = 0x446C616D69636564;
  if (v2 != 4)
  {
    v8 = 0x7372657474656CLL;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x73656E696C77656ELL;
  result = 0xD000000000000011;
  if (v2 != 2)
  {
    v10 = 0xD000000000000011;
    v9 = 0x80000001D73BCAF0;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x80000001D73BCAD0;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  if (*v1 > 3u)
  {
    v3 = v6;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D6F09A50()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000016;
  }
}

void sub_1D6F09A88(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001D73F72F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D73F7310 == a2)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1D72646CC();

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

uint64_t sub_1D6F09B6C(uint64_t a1)
{
  v2 = sub_1D6F09D80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F09BA8(uint64_t a1)
{
  v2 = sub_1D6F09D80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D6F09C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (sub_1D6DD57C4(*a1, *a2))
  {

    sub_1D6340220(v2, v3);
  }
}

void sub_1D6F09C70(uint64_t a1)
{
  if (!qword_1EC898300)
  {
    sub_1D6F09CD8();
    sub_1D6F09D2C();
    v1 = sub_1D725AAEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC898300);
    }
  }
}

unint64_t sub_1D6F09CD8()
{
  result = qword_1EC898308;
  if (!qword_1EC898308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898308);
  }

  return result;
}

unint64_t sub_1D6F09D2C()
{
  result = qword_1EC898310;
  if (!qword_1EC898310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898310);
  }

  return result;
}

unint64_t sub_1D6F09D80()
{
  result = qword_1EC898320;
  if (!qword_1EC898320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898320);
  }

  return result;
}

unint64_t sub_1D6F09DD4()
{
  result = qword_1EC898328;
  if (!qword_1EC898328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898328);
  }

  return result;
}

unint64_t sub_1D6F09E28()
{
  result = qword_1EC898330;
  if (!qword_1EC898330)
  {
    sub_1D6F09C70(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898330);
  }

  return result;
}

void sub_1D6F09E80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6F09D80();
    v7 = a3(a1, &type metadata for DebugFormatTemplateKeyTextField.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6F09EE4()
{
  result = qword_1EC898340;
  if (!qword_1EC898340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898340);
  }

  return result;
}

unint64_t sub_1D6F09F38()
{
  result = qword_1EC898348;
  if (!qword_1EC898348)
  {
    sub_1D6F09E80(255, &qword_1EC898338, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898348);
  }

  return result;
}

void sub_1D6F09FAC()
{
  if (!qword_1EC898350)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC898350);
    }
  }
}

unint64_t sub_1D6F09FFC()
{
  result = qword_1EC898358;
  if (!qword_1EC898358)
  {
    sub_1D6F09FAC();
    sub_1D6F09D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898358);
  }

  return result;
}

unint64_t sub_1D6F0A0A8()
{
  result = qword_1EC898360;
  if (!qword_1EC898360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898360);
  }

  return result;
}

unint64_t sub_1D6F0A100()
{
  result = qword_1EC898368;
  if (!qword_1EC898368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898368);
  }

  return result;
}

unint64_t sub_1D6F0A158()
{
  result = qword_1EC898370;
  if (!qword_1EC898370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898370);
  }

  return result;
}

unint64_t sub_1D6F0A1B0()
{
  result = qword_1EC898378;
  if (!qword_1EC898378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898378);
  }

  return result;
}

unint64_t sub_1D6F0A208()
{
  result = qword_1EC898380;
  if (!qword_1EC898380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898380);
  }

  return result;
}

unint64_t sub_1D6F0A25C()
{
  result = qword_1EC898388;
  if (!qword_1EC898388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898388);
  }

  return result;
}

unint64_t sub_1D6F0A2B0()
{
  result = qword_1EC898390;
  if (!qword_1EC898390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898390);
  }

  return result;
}

unint64_t sub_1D6F0A304(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6F0A350(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6F0A3C8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_1D5F7BAC0();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v38 = &v37 - v8;
  sub_1D6F0B2A4(0, &qword_1EC8983B8, sub_1D6F0B318, sub_1D5F7B9E4);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v37 - v12;
  sub_1D6F0B2A4(0, &qword_1EC8983A8, sub_1D6F0B1F0, sub_1D5F260A0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v37 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v37 - v20;
  aBlock = *(a1 + 48);
  swift_getKeyPath();
  sub_1D5B5CFF8(0, &qword_1EC88D290, &type metadata for FormatGroup, MEMORY[0x1E69E62F8]);
  sub_1D6BB2C54(0, v22);
  sub_1D68717C8();
  sub_1D6F0B744(&qword_1EC8983E8, sub_1D6BB2C54, MEMORY[0x1E6981870]);

  sub_1D72619DC();
  sub_1D6F0B318(0);
  v13[*(v23 + 36)] = 0;
  v24 = &v13[*(v10 + 36)];
  *v24 = xmmword_1D73700C0;
  *(v24 + 1) = xmmword_1D73700D0;
  v24[32] = 0;
  sub_1D7260EDC();
  sub_1D6F0B53C();
  sub_1D72617DC();
  sub_1D6F0B78C(v13);
  v25 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v47 = sub_1D6F34AFC;
  v48 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1D6E0CD34;
  v46 = &block_descriptor_111;
  v26 = _Block_copy(&aBlock);
  [v25 initWithDynamicProvider_];
  _Block_release(v26);

  aBlock = sub_1D726189C();
  *&v21[*(v15 + 44)] = sub_1D726199C();
  aBlock = 0;
  LOBYTE(v44) = 1;
  sub_1D7260EDC();
  v27 = v38;
  sub_1D72617DC();
  v28 = v37;
  sub_1D5DCD518(v21, v37);
  v30 = v39;
  v29 = v40;
  v31 = *(v40 + 16);
  v32 = v41;
  v31(v39, v27, v41);
  v33 = v42;
  sub_1D5DCD518(v28, v42);
  sub_1D6F0B150(0);
  v31((v33 + *(v34 + 48)), v30, v32);
  v35 = *(v29 + 8);
  v35(v27, v32);
  sub_1D5DCD5AC(v21);
  v35(v30, v32);
  return sub_1D5DCD5AC(v28);
}

double sub_1D6F0A8AC@<D0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[7];
  v21[6] = a1[6];
  v21[7] = v3;
  v21[8] = a1[8];
  v4 = a1[3];
  v21[2] = a1[2];
  v21[3] = v4;
  v5 = a1[5];
  v21[4] = a1[4];
  v21[5] = v5;
  v6 = a1[1];
  v21[0] = *a1;
  v21[1] = v6;
  v7 = sub_1D726125C();
  v20 = 1;
  sub_1D6F0A9F8(v21, &v13);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v22 = v13;
  v23 = v14;
  v29 = v18;
  v28[2] = v15;
  v28[3] = v16;
  v28[4] = v17;
  v28[0] = v13;
  v28[1] = v14;
  sub_1D6F0B818(&v22, &v12);
  sub_1D6F0B8AC(v28, &qword_1EC892FE0, sub_1D6BB2D08, MEMORY[0x1E6981F40]);
  *&v19[39] = v24;
  *&v19[55] = v25;
  *&v19[71] = v26;
  *&v19[7] = v22;
  *&v19[23] = v23;
  v8 = *&v19[48];
  *(a2 + 49) = *&v19[32];
  *(a2 + 65) = v8;
  *(a2 + 81) = *&v19[64];
  v10 = *v19;
  result = *&v19[16];
  *(a2 + 33) = *&v19[16];
  v19[87] = v27;
  v11 = v20;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 97) = *&v19[80];
  *(a2 + 17) = v10;
  return result;
}

double sub_1D6F0A9F8@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = MEMORY[0x1E6980E30];
  v4 = MEMORY[0x1E69E6720];
  v54 = MEMORY[0x1E6980E30];
  v53 = MEMORY[0x1E69E6720];
  sub_1D6F0B474(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v50 - v7;
  v56 = a1;
  v9 = *a1;
  v10 = a1[1];
  *&v67 = v9;
  *(&v67 + 1) = v10;
  v57 = sub_1D5BF4D9C();

  v11 = sub_1D726171C();
  v13 = v12;
  v15 = v14;
  v52 = sub_1D726163C();
  v16 = *(v52 - 8);
  v51 = *(v16 + 56);
  v55 = v16 + 56;
  v51(v8, 1, 1, v52);
  sub_1D726167C();
  sub_1D6F0B8AC(v8, &qword_1EC881178, v3, v4);
  v17 = sub_1D72616DC();
  v19 = v18;
  v21 = v20;

  sub_1D5F26348(v11, v13, v15 & 1);

  LODWORD(v67) = sub_1D726144C();
  v22 = sub_1D72616CC();
  v59 = v23;
  v60 = v22;
  v58 = v24;
  v61 = v25;
  sub_1D5F26348(v17, v19, v21 & 1);

  v67 = *(v56 + 2);
  v26 = *(&v67 + 1);
  v27 = v67;
  if (!*(&v67 + 1))
  {
    v27 = 0;
    v26 = 0xE000000000000000;
  }

  v65 = v27;
  v66 = v26;
  sub_1D6F0B908(&v67, v64);
  v28 = sub_1D726171C();
  v30 = v29;
  v32 = v31;
  v51(v8, 1, 1, v52);
  sub_1D726167C();
  sub_1D6F0B8AC(v8, &qword_1EC881178, v54, v53);
  v33 = sub_1D72616DC();
  v35 = v34;
  v37 = v36;

  sub_1D5F26348(v28, v30, v32 & 1);

  LODWORD(v65) = sub_1D726145C();
  v38 = sub_1D72616CC();
  v40 = v39;
  LOBYTE(v28) = v41;
  v43 = v42;
  sub_1D5F26348(v33, v35, v37 & 1);

  KeyPath = swift_getKeyPath();
  v45 = v58 & 1;
  LOBYTE(v65) = v58 & 1;
  v64[0] = v58 & 1;
  LOBYTE(v28) = v28 & 1;
  v63 = v28;
  v62 = 0;
  v47 = v59;
  v46 = v60;
  v48 = v50;
  *v50 = v60;
  v48[1] = v47;
  *(v48 + 16) = v45;
  v48[3] = v61;
  v48[4] = v38;
  v48[5] = v40;
  *(v48 + 48) = v28;
  v48[7] = v43;
  v48[8] = KeyPath;
  v48[9] = 2;
  *(v48 + 80) = 0;
  sub_1D5F26358(v46, v47, v45);

  sub_1D5F26358(v38, v40, v28);

  sub_1D5F26348(v38, v40, v28);

  sub_1D5F26348(v46, v47, v65);

  return result;
}

double sub_1D6F0AE58()
{
  sub_1D72644BC();
  MEMORY[0x1DA6F9910](0x736E6D756C6F4320, 0xE800000000000000);
  sub_1D7260EDC();
  sub_1D5F7BB40();
  sub_1D72617DC();

  return result;
}

uint64_t sub_1D6F0AF24()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v3 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v2;
  *(v6 + 40) = v5;
  *(v6 + 48) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v2;
  *(v7 + 40) = v5;
  *(v7 + 48) = 0;
  swift_retain_n();
  sub_1D72619BC();
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v2;
  v8[4] = v4;
  v8[5] = v3;
  sub_1D6871054(0);
  sub_1D6F0B474(0, &qword_1EC898398, sub_1D6F0B150, MEMORY[0x1E6981F40]);
  sub_1D5F7BB40();

  swift_getOpaqueTypeConformance2();
  sub_1D6F0B4D8(&qword_1EC8983F0, &qword_1EC898398, sub_1D6F0B150);
  return sub_1D7260FFC();
}

void sub_1D6F0B150(uint64_t a1)
{
  if (!qword_1EC8983A0)
  {
    sub_1D6F0B2A4(255, &qword_1EC8983A8, sub_1D6F0B1F0, sub_1D5F260A0);
    sub_1D5F7BAC0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8983A0);
    }
  }
}

void sub_1D6F0B1F0(uint64_t a1)
{
  if (!qword_1EC8983B0)
  {
    sub_1D6F0B2A4(255, &qword_1EC8983B8, sub_1D6F0B318, sub_1D5F7B9E4);
    sub_1D6F0B53C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC8983B0);
    }
  }
}

void sub_1D6F0B2A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1D726101C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6F0B318(uint64_t a1)
{
  if (!qword_1EC8983C0)
  {
    sub_1D6F0B3B8(255);
    sub_1D6F0B9A4(255, &qword_1EC89AE80, sub_1D5F25AA0, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8983C0);
    }
  }
}

void sub_1D6F0B3B8(uint64_t a1)
{
  if (!qword_1EC8983C8)
  {
    sub_1D5B5CFF8(255, &qword_1EC88D290, &type metadata for FormatGroup, MEMORY[0x1E69E62F8]);
    sub_1D6BB2C54(255, v1);
    sub_1D68717C8();
    v2 = sub_1D72619FC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC8983C8);
    }
  }
}

void sub_1D6F0B474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6F0B4D8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D6F0B474(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6F0B53C()
{
  result = qword_1EC8983D0;
  if (!qword_1EC8983D0)
  {
    sub_1D6F0B2A4(255, &qword_1EC8983B8, sub_1D6F0B318, sub_1D5F7B9E4);
    sub_1D6F0B61C();
    sub_1D6F0B744(&qword_1EC8845E8, sub_1D5F7B9E4, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8983D0);
  }

  return result;
}

unint64_t sub_1D6F0B61C()
{
  result = qword_1EC8983D8;
  if (!qword_1EC8983D8)
  {
    sub_1D6F0B318(255);
    sub_1D6F0B69C();
    sub_1D68C611C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8983D8);
  }

  return result;
}

unint64_t sub_1D6F0B69C()
{
  result = qword_1EC8983E0;
  if (!qword_1EC8983E0)
  {
    sub_1D6F0B3B8(255);
    sub_1D6F0B744(&qword_1EC8983E8, sub_1D6BB2C54, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8983E0);
  }

  return result;
}

uint64_t sub_1D6F0B744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6F0B78C(uint64_t a1)
{
  sub_1D6F0B2A4(0, &qword_1EC8983B8, sub_1D6F0B318, sub_1D5F7B9E4);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6F0B818(uint64_t a1, uint64_t a2)
{
  sub_1D6F0B474(0, &qword_1EC892FE0, sub_1D6BB2D08, MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6F0B8AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D6F0B474(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D6F0B908(uint64_t a1, uint64_t a2)
{
  sub_1D6F0B9A4(0, &qword_1EDF450E0, sub_1D5B4A9B4, &type metadata for FormatCodingDescriptiveStrategy, type metadata accessor for FormatCodingDefault);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6F0B9A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6F0BA0C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D726115C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_1D6F0BA70(uint64_t a1)
{
  if (!qword_1EC898400)
  {
    sub_1D6871054(255);
    sub_1D6F0B474(255, &qword_1EC898398, sub_1D6F0B150, MEMORY[0x1E6981F40]);
    sub_1D5F7BB40();
    swift_getOpaqueTypeConformance2();
    sub_1D6F0B4D8(&qword_1EC8983F0, &qword_1EC898398, sub_1D6F0B150);
    v1 = sub_1D726100C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC898400);
    }
  }
}

uint64_t sub_1D6F0BBB8@<X0>(unsigned int *a1@<X1>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1D725A19C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1D7259F5C();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7259D1C();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v14, *a1, v9, v12);
  sub_1D725E22C();
  sub_1D726331C();
  v26[8] = v16;
  v26[9] = v15;
  sub_1D725E17C();
  v26[6] = v18;
  v26[7] = v17;
  sub_1D725E1BC();
  v26[4] = v20;
  v26[5] = v19;
  sub_1D725E14C();
  v26[2] = v22;
  v26[3] = v21;
  sub_1D725E1CC();
  v26[0] = v24;
  v26[1] = v23;
  sub_1D725E1AC();
  sub_1D725E16C();
  sub_1D725E19C();
  sub_1D725E1DC();
  sub_1D725E18C();
  if (qword_1EDF386E8 != -1)
  {
    swift_once();
  }

  sub_1D725972C();

  sub_1D7259E5C();
  sub_1D7259D0C();
  (*(v27 + 8))(v8, v28);
  return (*(v10 + 8))(v14, v9);
}

unint64_t sub_1D6F0BEE0()
{
  result = qword_1EDF16F70;
  if (!qword_1EDF16F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16F70);
  }

  return result;
}

unint64_t sub_1D6F0BF38()
{
  result = qword_1EDF16F78;
  if (!qword_1EDF16F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16F78);
  }

  return result;
}

unint64_t sub_1D6F0BF90()
{
  result = qword_1EDF16F80;
  if (!qword_1EDF16F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16F80);
  }

  return result;
}

unint64_t sub_1D6F0C098()
{
  result = qword_1EC898408;
  if (!qword_1EC898408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898408);
  }

  return result;
}

uint64_t sub_1D6F0C0EC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_1D7263BFC();
LABEL_9:
    result = sub_1D7263DDC();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

double sub_1D6F0C188()
{
  v0 = CACurrentMediaTime();
  sub_1D6F0D0AC(&unk_1F51D6F18, sub_1D6F0F958, &block_descriptor_91);
  sub_1D6F0D0AC(&unk_1F51D6EC8, sub_1D6F0F958, &block_descriptor_85);
  sub_1D6F0D0AC(&unk_1F51D6E78, sub_1D6F0F958, &block_descriptor_79_1);
  sub_1D6F0D0AC(&unk_1F51D6E28, sub_1D6F0F958, &block_descriptor_73_1);
  sub_1D6F0D0AC(&unk_1F51D6DD8, sub_1D6F0F958, &block_descriptor_67_1);
  sub_1D6F0D0AC(&unk_1F51D6D88, sub_1D6F0F958, &block_descriptor_61_0);
  sub_1D6F0D0AC(&unk_1F51D6D38, sub_1D6F0F958, &block_descriptor_55_2);
  sub_1D6F0D0AC(&unk_1F51D6CE8, sub_1D6F0F958, &block_descriptor_49);
  sub_1D6F0D0AC(&unk_1F51D6CE8, sub_1D6F0F958, &block_descriptor_49);
  sub_1D6F0D0AC(&unk_1F51D6C98, sub_1D6F0F958, &block_descriptor_43_0);
  sub_1D6F0D0AC(&unk_1F51D6C48, sub_1D6F0F958, &block_descriptor_37_1);
  sub_1D6F0D0AC(&unk_1F51D6BF8, sub_1D6F0F958, &block_descriptor_31_2);
  sub_1D6F0D0AC(&unk_1F51D6BA8, sub_1D6F0F958, &block_descriptor_25_2);
  sub_1D6F0D0AC(&unk_1F51D6B58, sub_1D6F0F958, &block_descriptor_19_0);
  sub_1D6F0D0AC(&unk_1F51D6B08, sub_1D6F0F86C, &block_descriptor_13_2);
  sub_1D6F0D0AC(&unk_1F51D6AB8, sub_1D6F0F958, &block_descriptor_7_0);
  sub_1D6F0D0AC(&unk_1F51D6A68, sub_1D6F0F958, &block_descriptor_112);
  if (qword_1EDF1BB50 != -1)
  {
    swift_once();
  }

  sub_1D5B67C48(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D7273AE0;
  v2 = CACurrentMediaTime();
  v3 = MEMORY[0x1E69E6438];
  *(v1 + 56) = MEMORY[0x1E69E63B0];
  *(v1 + 64) = v3;
  *(v1 + 32) = (v2 - v0) * 1000.0;
  sub_1D7262EDC();
  sub_1D725C30C("Format layout view pool manager prepared, time=%fms", v5);

  return result;
}

uint64_t sub_1D6F0C5A4()
{
  type metadata accessor for FormatLayoutViewPoolManager();
  swift_allocObject();
  result = sub_1D6F0C760();
  qword_1EDFFCA38 = result;
  return result;
}

char *sub_1D6F0C5E0()
{
  v0 = [objc_allocWithZone(type metadata accessor for IssueCoverView()) initWithFrame_];
  v0[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content] = 0;
  v1 = v0;
  v2 = sub_1D6CA3F00();
  [v1 bounds];
  [v2 setFrame_];

  v3 = OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView;
  [*&v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView] setContentMode_];
  [v1 addSubview_];

  return v1;
}

char *sub_1D6F0C6A0()
{
  v0 = [objc_allocWithZone(type metadata accessor for IssueCoverView()) initWithFrame_];
  v0[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content] = 1;
  v1 = v0;
  v2 = sub_1D6CA3F84();
  [v1 bounds];
  [v2 setFrame_];

  v3 = *&v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___dynamicContentView];
  [v1 addSubview_];

  return v1;
}

uint64_t sub_1D6F0C760()
{
  sub_1D6F0F88C(0, &qword_1EDF2AE10, type metadata accessor for FormatView, &off_1F51C0360);
  v1 = swift_allocObject();
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 2003134838;
  *(v1 + 56) = xmmword_1D72BAA60;
  *(v1 + 32) = 0xE400000000000000;
  *(v1 + 40) = sub_1D6F0F410;
  *(v1 + 48) = 0;
  *(v0 + 16) = v1;
  sub_1D6F0F88C(0, &qword_1EDF2AE58, type metadata accessor for FormatButton, &off_1F51E6E10);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0x6E6F74747562;
  *(v3 + 56) = xmmword_1D7297410;
  *(v3 + 32) = 0xE600000000000000;
  *(v3 + 40) = sub_1D6F0F3F8;
  *(v3 + 48) = 0;
  *(v0 + 24) = v3;
  sub_1D6F0F88C(0, &qword_1EDF2AE30, type metadata accessor for FormatImageView, &off_1F511FDD0);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = 0x6567616D69;
  *(v4 + 56) = xmmword_1D72BAA60;
  *(v4 + 32) = 0xE500000000000000;
  *(v4 + 40) = sub_1D6F0F3E0;
  *(v4 + 48) = 0;
  *(v0 + 32) = v4;
  sub_1D6F0F88C(0, &qword_1EDF2AE60, type metadata accessor for FormatLabel, &off_1F51C1030);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = 0x6C6562616CLL;
  *(v5 + 56) = xmmword_1D72BAA60;
  *(v5 + 32) = 0xE500000000000000;
  *(v5 + 40) = sub_1D6F0F3C8;
  *(v5 + 48) = 0;
  *(v0 + 40) = v5;
  sub_1D6F0F88C(0, &qword_1EDF2AE08, type metadata accessor for FormatLayoutView, &off_1F51E2E18);
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = 0x695674756F79616CLL;
  *(v6 + 56) = xmmword_1D7297410;
  *(v6 + 32) = 0xEA00000000007765;
  *(v6 + 40) = sub_1D6F0F3B0;
  *(v6 + 48) = 0;
  *(v0 + 48) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7297410;
  sub_1D6F0F88C(0, &qword_1EDF2AE20, type metadata accessor for FormatStateView, &off_1F51CAA50);
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = 0x6569566574617473;
  v8[7] = v7;
  v8[8] = 0;
  v8[4] = 0xE900000000000077;
  v8[5] = sub_1D6F0F398;
  v8[6] = 0;
  *(v0 + 56) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D728CF30;
  sub_1D6F0F88C(0, &qword_1EDF2AE40, type metadata accessor for FormatLayeredMediaView, &off_1F51E22C8);
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  strcpy((v10 + 24), "layeredMedia");
  *(v10 + 56) = v9;
  *(v10 + 64) = 0;
  *(v10 + 37) = 0;
  *(v10 + 38) = -5120;
  *(v10 + 40) = sub_1D6F0F380;
  *(v10 + 48) = 0;
  *(v0 + 64) = v10;
  sub_1D6F0F88C(0, &qword_1EDF2AE18, type metadata accessor for FormatVideoView, &off_1F51D3170);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = 0x6F65646976;
  *(v11 + 56) = 0u;
  *(v11 + 32) = 0xE500000000000000;
  *(v11 + 40) = sub_1D6F0F368;
  *(v11 + 48) = 0;
  *(v0 + 72) = v11;
  sub_1D6F0F88C(0, qword_1EDF2AE88, MEMORY[0x1E69D87D0], &off_1F51ED1A8);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = 1633905005;
  *(v12 + 56) = 0u;
  *(v12 + 32) = 0xE400000000000000;
  *(v12 + 40) = sub_1D6F0F350;
  *(v12 + 48) = 0;
  *(v0 + 80) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D728CF30;
  sub_1D6F0F88C(0, &qword_1EDF2AE50, type metadata accessor for FormatProgressBarView, &off_1F5133320);
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = 0x73736572676F7270;
  v14[7] = v13;
  v14[8] = 0;
  v14[4] = 0xE800000000000000;
  v14[5] = sub_1D6F0F338;
  v14[6] = 0;
  *(v0 + 88) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D728CF30;
  sub_1D6F0F88C(0, &qword_1EDF2AE48, type metadata accessor for FormatProgressPieView, &off_1F51E06B8);
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = 0x73736572676F7270;
  v16[7] = v15;
  v16[8] = 0;
  v16[4] = 0xEB00000000656950;
  v16[5] = sub_1D6F0F320;
  v16[6] = 0;
  *(v0 + 96) = v16;
  sub_1D6F0F88C(0, &qword_1EDF2AE38, type metadata accessor for FormatProgressCircleView, &off_1F519D180);
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  strcpy((v17 + 24), "progressCircle");
  *(v17 + 56) = 0u;
  *(v17 + 39) = -18;
  *(v17 + 40) = sub_1D6F0F308;
  *(v17 + 48) = 0;
  *(v0 + 104) = v17;
  sub_1D6F0F88C(0, &qword_1EDF2AE28, type metadata accessor for FormatSplitView, &off_1F51ED198);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = 0x65695674696C7073;
  *(v18 + 56) = 0u;
  *(v18 + 32) = 0xE900000000000077;
  *(v18 + 40) = sub_1D6F0F2F0;
  *(v18 + 48) = 0;
  *(v0 + 112) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D728CF30;
  sub_1D6F0F88C(0, &qword_1EDF2AE80, MEMORY[0x1E69D7648], &off_1F51ED1B8);
  v20 = swift_allocObject();
  v20[2] = v2;
  v20[3] = 0x746E656964617267;
  v20[7] = v19;
  v20[8] = 0;
  v20[4] = 0xE800000000000000;
  v20[5] = sub_1D6F0F2D8;
  v20[6] = 0;
  *(v0 + 120) = v20;
  sub_1D6F0F88C(0, &qword_1EDF2AE68, type metadata accessor for FormatSponsoredBanner, &off_1F519BCC0);
  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  *(v21 + 24) = 0x65726F736E6F7073;
  *(v21 + 56) = 0u;
  *(v21 + 32) = 0xEF72656E6E614264;
  *(v21 + 40) = sub_1D6F0F2C0;
  *(v21 + 48) = 0;
  *(v0 + 128) = v21;
  sub_1D6F0F88C(0, &qword_1EDF2AE70, type metadata accessor for WebEmbedImageView, &off_1F51D7C48);
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  *(v22 + 24) = 0xD000000000000011;
  *(v22 + 56) = xmmword_1D728CF30;
  *(v22 + 32) = 0x80000001D73F78A0;
  *(v22 + 40) = sub_1D6F0F2A8;
  *(v22 + 48) = 0;
  *(v0 + 136) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D728CF30;
  sub_1D6F0F88C(0, &qword_1EDF2AE78, type metadata accessor for IssueCoverView, &off_1F51ED1C8);
  v24 = swift_allocObject();
  v24[2] = v2;
  v24[3] = 0xD000000000000010;
  v24[7] = v23;
  v24[8] = 0;
  v24[4] = 0x80000001D73F78C0;
  v24[5] = sub_1D6F0C5E0;
  v24[6] = 0;
  *(v0 + 144) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D728CF30;
  v26 = swift_allocObject();
  v26[2] = v2;
  v26[3] = 0xD000000000000017;
  v26[7] = v25;
  v26[8] = 0;
  v26[4] = 0x80000001D73F78E0;
  v26[5] = sub_1D6F0C6A0;
  v26[6] = 0;
  *(v0 + 152) = v26;
  *(v0 + 160) = 1;
  v27 = [objc_opt_self() defaultCenter];
  [v27 addObserver:v0 selector:sel_didReceiveMemoryWarning name:*MEMORY[0x1E69DDAD8] object:0];

  return v0;
}

uint64_t sub_1D6F0D0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[1] = a1;
  v25 = a2;
  v5 = v3;
  v6 = sub_1D7261ABC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7261B2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(v5 + 16);
  if (v16 >> 62)
  {
    v17 = sub_1D7263BFC();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_1D6756BBC(*(v5 + 56));
  v19 = result - v17;
  if (__OFSUB__(result, v17))
  {
    __break(1u);
  }

  else if (v19 >= 1)
  {
    sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
    v24[0] = v11;
    v20 = a3;
    v21 = sub_1D726308C();
    v22 = swift_allocObject();
    v22[2] = v17;
    v22[3] = v19;
    v22[4] = v5;
    aBlock[4] = v25;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = v20;
    v23 = _Block_copy(aBlock);

    sub_1D7261AEC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D5F5D6D4();
    sub_1D5B67C48(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D5F5D72C();
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v15, v10, v23);
    _Block_release(v23);

    (*(v7 + 8))(v10, v6);
    return (*(v12 + 8))(v15, v24[0]);
  }

  return result;
}

void sub_1D6F0D3C0(unint64_t a1)
{
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      v19 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6F0DE88(v19);
      goto LABEL_42;
    case 2uLL:
      v19 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6F0DC58(v19);
      goto LABEL_42;
    case 3uLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v19 = v1;
      v2 = sub_1D70CFE20;
      goto LABEL_35;
    case 4uLL:
    case 0x12uLL:
      v19 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v15 = [v19 layer];
      [v15 setMask_];

      sub_1D6F0DA08(v19);
      goto LABEL_42;
    case 5uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x13uLL:
    case 0x14uLL:
      return;
    case 6uLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v19 = v1;
      v2 = sub_1D6F2A63C;
      goto LABEL_35;
    case 7uLL:
      v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D6F0D3C0(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
      v5 = 1 << *(v4 + 32);
      v6 = -1;
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      v7 = v6 & *(v4 + 64);
      v8 = (v5 + 63) >> 6;

      v9 = 0;
      break;
    case 8uLL:
      v19 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6F0E0C0(v19);
      goto LABEL_42;
    case 0xBuLL:
      v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      goto LABEL_41;
    case 0xCuLL:
      v1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v19 = v1;
      v2 = sub_1D703ADC0;
LABEL_35:
      sub_1D6F0E34C(v1, v2);
      goto LABEL_42;
    case 0xDuLL:
      v19 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6F0E7B4(v19);
      goto LABEL_42;
    case 0xEuLL:
      v16 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (v16[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content] && v16[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content] != 1)
      {
        return;
      }

      v19 = v16;
      sub_1D6F0E580(v19);
      goto LABEL_42;
    case 0x11uLL:
      v17 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (v17 >> 62)
      {
        v3 = (v17 & 0x3FFFFFFFFFFFFFFFLL);
LABEL_41:
        v19 = v3;
        sub_1D6F0D7E4(v19);
LABEL_42:
        v18 = v19;
      }

      else
      {
        sub_1D6F0D7E4(v17);
        v18 = (v17 & 0x3FFFFFFFFFFFFFFFLL);
      }

      return;
    default:
      v3 = *(a1 + 16);
      goto LABEL_41;
  }

  while (v7)
  {
LABEL_19:
    v11 = *(v4 + 56) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
    v12 = *(v11 + 8);
    v13 = *v11;
    [v13 removeFromSuperview];
    [v13 setMaskView_];
    if (v12 <= 1 || ((v12 - 2) >= 2 ? (v14 = v12 == 4) : (v14 = 0), v14))
    {
      sub_1D6F0D7E4(v13);
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_19;
    }
  }
}

void sub_1D6F0D7E4(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 >= sub_1D6756CDC(v2[7]))
  {
    sub_1D5B67C48(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7270C10;
    v11 = v2[3];
    v10 = v2[4];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1D5B7E2C0();
    *(v9 + 32) = v11;
    *(v9 + 40) = v10;
    v13 = MEMORY[0x1E69E65A8];
    *(v9 + 96) = MEMORY[0x1E69E6530];
    *(v9 + 104) = v13;
    *(v9 + 64) = v12;
    *(v9 + 72) = v5;
    sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);

    v14 = sub_1D72638FC();
    v15 = sub_1D7262EDC();
    sub_1D725C30C("Format layout view pool attempting to queue past queue size, [%{public}@], queue=%ld", 84, 2, &dword_1D5B42000, v14, v15, v9);
  }

  else
  {
    v6 = [a1 traitCollection];
    sub_1D69F5984();
    v7 = sub_1D72630EC();

    if (v7)
    {
      swift_beginAccess();
      v8 = a1;
      MEMORY[0x1DA6F9CE0]();
      if (*((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }
  }
}

void sub_1D6F0DA08(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 >= sub_1D6756CDC(v2[7]))
  {
    sub_1D5B67C48(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7270C10;
    v11 = v2[3];
    v10 = v2[4];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1D5B7E2C0();
    *(v9 + 32) = v11;
    *(v9 + 40) = v10;
    v13 = MEMORY[0x1E69E65A8];
    *(v9 + 96) = MEMORY[0x1E69E6530];
    *(v9 + 104) = v13;
    *(v9 + 64) = v12;
    *(v9 + 72) = v5;
    sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);

    v14 = sub_1D72638FC();
    v15 = sub_1D7262EDC();
    sub_1D725C30C("Format layout view pool attempting to queue past queue size, [%{public}@], queue=%ld", 84, 2, &dword_1D5B42000, v14, v15, v9);
  }

  else
  {
    [a1 setUserInteractionEnabled_];
    sub_1D726345C();
    sub_1D704CD80(0, 0);
    v6 = [a1 traitCollection];
    sub_1D69F5984();
    v7 = sub_1D72630EC();

    if (v7)
    {
      swift_beginAccess();
      v8 = a1;
      MEMORY[0x1DA6F9CE0]();
      if (*((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }
  }
}

void sub_1D6F0DC58(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 >= sub_1D6756CDC(v2[7]))
  {
    sub_1D5B67C48(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7270C10;
    v11 = v2[3];
    v10 = v2[4];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1D5B7E2C0();
    *(v9 + 32) = v11;
    *(v9 + 40) = v10;
    v13 = MEMORY[0x1E69E65A8];
    *(v9 + 96) = MEMORY[0x1E69E6530];
    *(v9 + 104) = v13;
    *(v9 + 64) = v12;
    *(v9 + 72) = v5;
    sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);

    v14 = sub_1D72638FC();
    v15 = sub_1D7262EDC();
    sub_1D725C30C("Format layout view pool attempting to queue past queue size, [%{public}@], queue=%ld", 84, 2, &dword_1D5B42000, v14, v15, v9);
  }

  else
  {
    sub_1D725FBBC();
    v6 = [a1 traitCollection];
    sub_1D69F5984();
    v7 = sub_1D72630EC();

    if (v7)
    {
      swift_beginAccess();
      v8 = a1;
      MEMORY[0x1DA6F9CE0]();
      if (*((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }
  }
}

void sub_1D6F0DE88(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 >= sub_1D6756CDC(v2[7]))
  {
    sub_1D5B67C48(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7270C10;
    v11 = v2[3];
    v10 = v2[4];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1D5B7E2C0();
    *(v9 + 32) = v11;
    *(v9 + 40) = v10;
    v13 = MEMORY[0x1E69E65A8];
    *(v9 + 96) = MEMORY[0x1E69E6530];
    *(v9 + 104) = v13;
    *(v9 + 64) = v12;
    *(v9 + 72) = v5;
    sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);

    v14 = sub_1D72638FC();
    v15 = sub_1D7262EDC();
    sub_1D725C30C("Format layout view pool attempting to queue past queue size, [%{public}@], queue=%ld", 84, 2, &dword_1D5B42000, v14, v15, v9);
  }

  else
  {
    [a1 setAttributedText_];
    v6 = [a1 traitCollection];
    sub_1D69F5984();
    v7 = sub_1D72630EC();

    if (v7)
    {
      swift_beginAccess();
      v8 = a1;
      MEMORY[0x1DA6F9CE0]();
      if (*((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }
  }
}

void sub_1D6F0E0C0(char *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 >= sub_1D6756CDC(v2[7]))
  {
    sub_1D5B67C48(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7270C10;
    v15 = v2[3];
    v14 = v2[4];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1D5B7E2C0();
    *(v13 + 32) = v15;
    *(v13 + 40) = v14;
    v17 = MEMORY[0x1E69E65A8];
    *(v13 + 96) = MEMORY[0x1E69E6530];
    *(v13 + 104) = v17;
    *(v13 + 64) = v16;
    *(v13 + 72) = v5;
    sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);

    v18 = sub_1D72638FC();
    v19 = sub_1D7262EDC();
    sub_1D725C30C("Format layout view pool attempting to queue past queue size, [%{public}@], queue=%ld", 84, 2, &dword_1D5B42000, v18, v19, v13);
  }

  else
  {
    v6 = &a1[OBJC_IVAR____TtC8NewsFeed15FormatStateView_renderBlock];
    v7 = *&a1[OBJC_IVAR____TtC8NewsFeed15FormatStateView_renderBlock];
    v8 = *&a1[OBJC_IVAR____TtC8NewsFeed15FormatStateView_renderBlock + 8];
    *v6 = 0;
    *(v6 + 1) = 0;
    sub_1D5B74328(v7, v8);
    v9 = &a1[OBJC_IVAR____TtC8NewsFeed15FormatStateView_lastRenderedState];
    *v9 = 0;
    *(v9 + 1) = 0;

    [*&a1[OBJC_IVAR____TtC8NewsFeed15FormatStateView_formatLayoutView] setUserInteractionEnabled_];
    sub_1D726345C();
    sub_1D704CD80(0, 0);
    v10 = [a1 traitCollection];
    sub_1D69F5984();
    v11 = sub_1D72630EC();

    if (v11)
    {
      swift_beginAccess();
      v12 = a1;
      MEMORY[0x1DA6F9CE0]();
      if (*((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }
  }
}

void sub_1D6F0E34C(void *a1, void (*a2)(void))
{
  v4 = v2;
  swift_beginAccess();
  v6 = v2[2];
  if (v6 >> 62)
  {
    v7 = sub_1D7263BFC();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 >= sub_1D6756CDC(v4[7]))
  {
    sub_1D5B67C48(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7270C10;
    v13 = v4[3];
    v12 = v4[4];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v14 = sub_1D5B7E2C0();
    *(v11 + 32) = v13;
    *(v11 + 40) = v12;
    v15 = MEMORY[0x1E69E65A8];
    *(v11 + 96) = MEMORY[0x1E69E6530];
    *(v11 + 104) = v15;
    *(v11 + 64) = v14;
    *(v11 + 72) = v7;
    sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);

    v16 = sub_1D72638FC();
    v17 = sub_1D7262EDC();
    sub_1D725C30C("Format layout view pool attempting to queue past queue size, [%{public}@], queue=%ld", 84, 2, &dword_1D5B42000, v16, v17, v11);
  }

  else
  {
    a2();
    v8 = [a1 traitCollection];
    sub_1D69F5984();
    v9 = sub_1D72630EC();

    if (v9)
    {
      swift_beginAccess();
      v10 = a1;
      MEMORY[0x1DA6F9CE0]();
      if (*((v4[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }
  }
}

void sub_1D6F0E580(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 >= sub_1D6756CDC(v2[7]))
  {
    sub_1D5B67C48(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7270C10;
    v11 = v2[3];
    v10 = v2[4];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1D5B7E2C0();
    *(v9 + 32) = v11;
    *(v9 + 40) = v10;
    v13 = MEMORY[0x1E69E65A8];
    *(v9 + 96) = MEMORY[0x1E69E6530];
    *(v9 + 104) = v13;
    *(v9 + 64) = v12;
    *(v9 + 72) = v5;
    sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);

    v14 = sub_1D72638FC();
    v15 = sub_1D7262EDC();
    sub_1D725C30C("Format layout view pool attempting to queue past queue size, [%{public}@], queue=%ld", 84, 2, &dword_1D5B42000, v14, v15, v9);
  }

  else
  {
    IssueCoverView.prepareForReuse(identifier:)(0);
    v6 = [a1 traitCollection];
    sub_1D69F5984();
    v7 = sub_1D72630EC();

    if (v7)
    {
      swift_beginAccess();
      v8 = a1;
      MEMORY[0x1DA6F9CE0]();
      if (*((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }
  }
}

void sub_1D6F0E7B4(char *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 >= sub_1D6756CDC(v2[7]))
  {
    sub_1D5B67C48(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7270C10;
    v14 = v2[3];
    v13 = v2[4];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1D5B7E2C0();
    *(v12 + 32) = v14;
    *(v12 + 40) = v13;
    v16 = MEMORY[0x1E69E65A8];
    *(v12 + 96) = MEMORY[0x1E69E6530];
    *(v12 + 104) = v16;
    *(v12 + 64) = v15;
    *(v12 + 72) = v5;
    sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);

    v17 = sub_1D72638FC();
    v18 = sub_1D7262EDC();
    sub_1D725C30C("Format layout view pool attempting to queue past queue size, [%{public}@], queue=%ld", 84, 2, &dword_1D5B42000, v17, v18, v12);
  }

  else
  {
    v6 = [a1 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() pause];

    v7 = *&a1[OBJC_IVAR____TtC8NewsFeed15FormatVideoView_displayStateCoordinator];
    swift_beginAccess();
    v8 = *(v7 + 17);
    *(v7 + 17) = 0;
    if (v8 > 0x3F || (v8 & 1) != 0)
    {
      LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
    }

    v9 = [a1 traitCollection];
    sub_1D69F5984();
    v10 = sub_1D72630EC();

    if (v10)
    {
      swift_beginAccess();
      v11 = a1;
      MEMORY[0x1DA6F9CE0]();
      if (*((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }
  }
}

void sub_1D6F0EA64()
{
  if (qword_1EDF1BB50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDFFC828;
  v2 = sub_1D7262EDC();
  v3 = MEMORY[0x1E69E7CC0];
  sub_1D725C30C("Format layout view pool manager did receive memory warning; will drain pools", 76, 2, &dword_1D5B42000, v1, v2, MEMORY[0x1E69E7CC0]);
  *(v0 + 160) = 0;
  v4 = *(v0 + 16);
  swift_beginAccess();
  *(v4 + 16) = v3;

  v5 = *(v0 + 40);
  swift_beginAccess();
  *(v5 + 16) = v3;

  v6 = *(v0 + 32);
  swift_beginAccess();
  *(v6 + 16) = v3;

  v7 = *(v0 + 24);
  swift_beginAccess();
  *(v7 + 16) = v3;

  v8 = *(v0 + 48);
  swift_beginAccess();
  *(v8 + 16) = v3;

  v9 = *(v0 + 56);
  swift_beginAccess();
  *(v9 + 16) = v3;

  v10 = *(v0 + 64);
  swift_beginAccess();
  *(v10 + 16) = v3;

  v11 = *(v0 + 144);
  swift_beginAccess();
  *(v11 + 16) = v3;

  v12 = *(v0 + 152);
  swift_beginAccess();
  *(v12 + 16) = v3;

  v13 = *(v0 + 112);
  swift_beginAccess();
  *(v13 + 16) = v3;

  v14 = *(v0 + 120);
  swift_beginAccess();
  *(v14 + 16) = v3;

  v15 = *(v0 + 88);
  swift_beginAccess();
  *(v15 + 16) = v3;

  v16 = *(v0 + 96);
  swift_beginAccess();
  *(v16 + 16) = v3;

  v17 = *(v0 + 80);
  swift_beginAccess();
  *(v17 + 16) = v3;

  v18 = *(v0 + 72);
  swift_beginAccess();
  *(v18 + 16) = v3;

  v19 = *(v0 + 136);
  swift_beginAccess();
  *(v19 + 16) = v3;

  *(v0 + 160) = 1;
}

uint64_t sub_1D6F0ED84()
{

  return v0;
}

uint64_t sub_1D6F0EE2C()
{
  sub_1D6F0ED84();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6F0EE84()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000002ALL, 0x80000001D73F7500);
  v0 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73F7530);
  v1 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73F7550);
  v2 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73F7570);
  v3 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0xD000000000000015, 0x80000001D73F7590);
  v4 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v4);

  MEMORY[0x1DA6F9910](0xD000000000000014, 0x80000001D73F75B0);
  v5 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73F75D0);
  v6 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v6);

  MEMORY[0x1DA6F9910](0xD000000000000022, 0x80000001D73F75F0);
  v7 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v7);

  MEMORY[0x1DA6F9910](0xD000000000000029, 0x80000001D73F7620);
  v8 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v8);

  MEMORY[0x1DA6F9910](0xD000000000000014, 0x80000001D73F7650);
  v9 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v9);

  MEMORY[0x1DA6F9910](0xD000000000000017, 0x80000001D73F7670);
  v10 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v10);

  MEMORY[0x1DA6F9910](0xD000000000000017, 0x80000001D73F7690);
  v11 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v11);

  MEMORY[0x1DA6F9910](0xD00000000000001ALL, 0x80000001D73F76B0);
  v12 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v12);

  MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73F76D0);
  v13 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v13);

  MEMORY[0x1DA6F9910](0xD000000000000014, 0x80000001D73F76F0);
  v14 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v14);

  MEMORY[0x1DA6F9910](0xD00000000000001CLL, 0x80000001D73F7710);
  v15 = sub_1D6F0F6F0();
  MEMORY[0x1DA6F9910](v15);

  MEMORY[0x1DA6F9910](10506, 0xE200000000000000);
  return 0;
}

id sub_1D6F0F428(void (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 initWithFrame_];
}

void sub_1D6F0F47C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = CACurrentMediaTime();
  v8 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v7;
  swift_beginAccess();
  sub_1D6F0C0EC(v8);
  v9 = swift_endAccess();
  if (a2 < 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2)
  {
    v10 = a3[5];
    v11 = a2;
    while (1)
    {
      v10(v9);
      v12 = swift_beginAccess();
      MEMORY[0x1DA6F9CE0](v12);
      if (*((a3[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a3[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v9 = swift_endAccess();
      v13 = a3[8];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        break;
      }

      a3[8] = v15;
      if (!--v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_9:
  if (qword_1EDF1BB50 != -1)
  {
LABEL_14:
    swift_once();
  }

  v16 = qword_1EDFFC828;
  sub_1D5B67C48(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7274590;
  v19 = a3[3];
  v18 = a3[4];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1D5B7E2C0();
  *(v17 + 32) = v19;
  *(v17 + 40) = v18;
  v21 = MEMORY[0x1E69E6530];
  v22 = MEMORY[0x1E69E65A8];
  *(v17 + 96) = MEMORY[0x1E69E6530];
  *(v17 + 104) = v22;
  *(v17 + 64) = v20;
  *(v17 + 72) = v8;
  *(v17 + 136) = v21;
  *(v17 + 144) = v22;
  *(v17 + 112) = a2;

  v23 = CACurrentMediaTime();
  v24 = MEMORY[0x1E69E6438];
  *(v17 + 176) = MEMORY[0x1E69E63B0];
  *(v17 + 184) = v24;
  *(v17 + 152) = (v23 - v3) * 1000.0;
  v25 = sub_1D7262EDC();
  sub_1D725C30C("Format layout view pool prepared, [%{public}@] queueSize=%ld, growSize=%ld, time=%fms", 85, 2, &dword_1D5B42000, v16, v25, v17);
}

uint64_t sub_1D6F0F6F0()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000001FLL, 0x80000001D73F7730);
  MEMORY[0x1DA6F9910](v0[3], v0[4]);
  MEMORY[0x1DA6F9910](0x657571202020200ALL, 0xEB000000003D6575);
  swift_beginAccess();
  if (v0[2] >> 62)
  {
    sub_1D7263BFC();
  }

  v1 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](0x7263202020200A2CLL, 0xEE003D6465746165);
  v2 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](10506, 0xE200000000000000);
  return 0;
}

void sub_1D6F0F88C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for FormatLayoutViewPool(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D6F0F95C(uint64_t a1)
{
  sub_1D6F1359C(0);
  v59 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v55 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v54 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v58 = &v54 - v11;
  v56 = MEMORY[0x1E69E7CC8];
  v61 = MEMORY[0x1E69E7CC8];
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v60 = a1;

  v18 = 0;
  for (i = a1 + 64; ; v12 = i)
  {
    v19 = v18;
    if (!v15)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v20 = v8;
      v18 = v19;
LABEL_11:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v18 << 6);
      v23 = *(v60 + 56);
      v24 = (*(v60 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = (type metadata accessor for FormatContentSlotItemResolution(0) - 8);
      v28 = v23 + *(*v27 + 72) * v22;
      v30 = v58;
      v29 = v59;
      sub_1D6F13670(v28, &v58[*(v59 + 48)], type metadata accessor for FormatContentSlotItemResolution);
      *v30 = v26;
      v30[1] = v25;
      v31 = v30;
      v8 = v20;
      sub_1D6F13608(v31, v20, sub_1D6F1359C);
      v32 = v20 + *(v29 + 48);
      v33 = v27[7];
      v34 = *(v32 + v33);
      if (v34)
      {
        break;
      }

      result = sub_1D6F137C8(v20, sub_1D6F1359C);
      v19 = v18;
      v12 = i;
      if (!v15)
      {
LABEL_7:
        while (1)
        {
          v18 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v18 >= v16)
          {

            return v56;
          }

          v15 = *(v12 + 8 * v18);
          ++v19;
          if (v15)
          {
            v20 = v8;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    v54 = *(v32 + v33);
    v35 = v55;
    sub_1D6F13608(v20, v55, sub_1D6F1359C);
    v36 = *(v56 + 16);
    if (*(v56 + 24) <= v36)
    {

      sub_1D5D615EC(v34, *(&v54 + 1));
      sub_1D6D69238(v36 + 1, 1);
      v37 = v61;
    }

    else
    {

      sub_1D5D615EC(v34, *(&v54 + 1));
      v37 = v56;
    }

    v56 = v37;
    v39 = *v35;
    v38 = v35[1];
    sub_1D7264A0C();
    sub_1D72621EC();
    result = sub_1D7264A5C();
    v40 = v56;
    v41 = v56 + 64;
    v42 = -1 << *(v56 + 32);
    v43 = result & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~*(v56 + 64 + 8 * (v43 >> 6))) == 0)
    {
      break;
    }

    v45 = __clz(__rbit64((-1 << v43) & ~*(v56 + 64 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
    v46 = v54;
LABEL_27:
    v51 = *(v59 + 48);
    *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v52 = 16 * v45;
    v53 = (v40[6] + v52);
    *v53 = v39;
    v53[1] = v38;
    *(v40[7] + v52) = v46;
    ++v40[2];
    result = sub_1D6F137C8(v35 + v51, type metadata accessor for FormatContentSlotItemResolution);
  }

  v47 = 0;
  v48 = (63 - v42) >> 6;
  v46 = v54;
  while (++v44 != v48 || (v47 & 1) == 0)
  {
    v49 = v44 == v48;
    if (v44 == v48)
    {
      v44 = 0;
    }

    v47 |= v49;
    v50 = *(v41 + 8 * v44);
    if (v50 != -1)
    {
      v45 = __clz(__rbit64(~v50)) + (v44 << 6);
      goto LABEL_27;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t FormatContentSlot.init(slot:properties:transforms:items:selectors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

void sub_1D6F0FE44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v109 = a2;
  v100 = a5;
  v108 = type metadata accessor for FormatContentSlotItemResolution(0);
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v10);
  v107 = v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for FeedPersonalizationClusteringRules;
  sub_1D6F13370(0, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v97 - v19;
  v21 = v5[1];
  v120 = *v5;
  v121 = v21;
  v122 = v5[2];
  v22 = *(&v21 + 1);
  v124 = *(&v21 + 1);
  *&v118[0] = a4;
  sub_1D6F13670(&v124, v119, sub_1D5B57CD4);

  sub_1D698867C(v22);
  sub_1D6F13418();
  v23 = sub_1D72626EC();

  *&v118[0] = v23;
  sub_1D5B49714(0, &qword_1EDF3C8E0, &type metadata for FormatSlotTransform);
  sub_1D6F1346C();
  v24 = sub_1D72623CC();

  v118[0] = v120;
  v118[1] = v121;
  v118[2] = v122;
  v25 = type metadata accessor for FormatServiceOptions(0);
  v26 = v109;
  sub_1D6F119C0(v24, v109 + *(v25 + 40), v20);
  v104 = a1;
  v116 = a1;
  v117 = a3;
  sub_1D7196E94(sub_1D6F134D4, v115, v122);
  v111 = v26;
  v112 = a3;
  v113 = v20;
  v114 = &v120;
  v28 = sub_1D632A854(v27, sub_1D6F13518, v110, v24);

  sub_1D6F13758(v20, qword_1EDF35230, v105);
  if (!v6)
  {
    *&v118[0] = v28;
    sub_1D6F13370(0, &qword_1EDF1AF70, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E62F8]);
    sub_1D6328F5C();
    sub_1D6F13554(&qword_1EDF1FC50, type metadata accessor for FormatContentSlotItemResolution, &protocol conformance descriptor for FormatContentSlotItemResolution);
    v109 = sub_1D72623BC();
    v105 = v28;
    v123 = v120;
    v29 = v121;
    v125 = v121;
    MEMORY[0x1EEE9AC00](v109, v30);
    v31 = v104;
    v97[-2] = v104;
    sub_1D5E422A8(&v123, v118);
    sub_1D6F13670(&v125, v118, sub_1D5B59C3C);
    sub_1D7195F4C(sub_1D6F13538, &v97[-4], v29);
    v99 = v32;
    v103 = 0;
    v33 = sub_1D6F137C8(&v125, sub_1D5B59C3C);
    v34 = *(&v122 + 1);
    v126 = *(&v122 + 1);
    MEMORY[0x1EEE9AC00](v33, v35);
    v97[-2] = v31;
    sub_1D6F13670(&v125, v118, sub_1D5B59C3C);
    sub_1D6F13670(&v126, v118, sub_1D5B559F8);
    v36 = v103;
    sub_1D7195E7C(sub_1D5E9B334, &v97[-4], v29);
    v38 = v37;
    v97[1] = v36;
    sub_1D6F137C8(&v125, sub_1D5B59C3C);
    v39 = v34;
    v40 = v105;
    v98 = sub_1D5BA8750(v38, v39);

    v41 = *(v40 + 2);
    if (v41)
    {
      *&v118[0] = MEMORY[0x1E69E7CC0];
      sub_1D6999DBC(0, v41, 0);
      v42 = *&v118[0];
      v43 = v40 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
      v44 = *(v106 + 72);
      v45 = v107;
      do
      {
        sub_1D6F13670(v43, v45, type metadata accessor for FormatContentSlotItemResolution);
        sub_1D6F13670(v45, v16, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D6F137C8(v45, type metadata accessor for FormatContentSlotItemResolution);
        *&v118[0] = v42;
        v47 = *(v42 + 16);
        v46 = *(v42 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1D6999DBC((v46 > 1), v47 + 1, 1);
          v45 = v107;
          v42 = *&v118[0];
        }

        *(v42 + 16) = v47 + 1;
        sub_1D6F13608(v16, v42 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v47, type metadata accessor for FormatContentSlotItemObject.Resolved);
        v43 += v44;
        --v41;
      }

      while (v41);
    }

    else
    {

      v42 = MEMORY[0x1E69E7CC0];
    }

    sub_1D5D56F34(0);
    v48 = v109;
    v49 = sub_1D72640FC();
    v102 = v49;
    v50 = 0;
    v53 = *(v48 + 64);
    v52 = v48 + 64;
    v51 = v53;
    v54 = 1 << *(v52 - 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v56 = v55 & v51;
    v57 = (v54 + 63) >> 6;
    v103 = v49 + 64;
    if (v56)
    {
      while (1)
      {
        v58 = __clz(__rbit64(v56));
        v104 = (v56 - 1) & v56;
LABEL_18:
        v61 = v58 | (v50 << 6);
        v62 = *(v109 + 56);
        v63 = *(v109 + 48) + 16 * v61;
        v64 = *(v63 + 8);
        v105 = *v63;
        v65 = v107;
        sub_1D6F13670(v62 + *(v106 + 72) * v61, v107, type metadata accessor for FormatContentSlotItemResolution);
        v66 = *(v65 + *(v108 + 24));

        sub_1D6F137C8(v65, type metadata accessor for FormatContentSlotItemResolution);
        *(v103 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
        v67 = v102;
        v68 = (*(v102 + 48) + 16 * v61);
        *v68 = v105;
        v68[1] = v64;
        *(*(v67 + 56) + 8 * v61) = v66;
        v69 = *(v67 + 16);
        v70 = __OFADD__(v69, 1);
        v71 = v69 + 1;
        if (v70)
        {
          break;
        }

        *(v67 + 16) = v71;
        v56 = v104;
        if (!v104)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v59 = v50;
      while (1)
      {
        v50 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v50 >= v57)
        {
          break;
        }

        v60 = *(v52 + 8 * v50);
        ++v59;
        if (v60)
        {
          v58 = __clz(__rbit64(v60));
          v104 = (v60 - 1) & v60;
          goto LABEL_18;
        }
      }

      sub_1D5D56F9C(0);
      v72 = v109;
      v73 = sub_1D72640FC();
      v74 = 0;
      v75 = 1 << *(v72 + 32);
      v76 = -1;
      if (v75 < 64)
      {
        v76 = ~(-1 << v75);
      }

      v77 = v76 & *(v72 + 64);
      v78 = (v75 + 63) >> 6;
      v105 = v73;
      v101 = v73 + 64;
      while (1)
      {
        v79 = v108;
        if (!v77)
        {
          break;
        }

        v80 = __clz(__rbit64(v77));
        v103 = (v77 - 1) & v77;
LABEL_31:
        v84 = v80 | (v74 << 6);
        v85 = *(v109 + 56);
        v86 = (*(v109 + 48) + 16 * v84);
        v87 = v86[1];
        v104 = *v86;
        v88 = v107;
        sub_1D6F13670(v85 + *(v106 + 72) * v84, v107, type metadata accessor for FormatContentSlotItemResolution);
        v89 = *(v88 + *(v79 + 28));

        sub_1D6F137C8(v88, type metadata accessor for FormatContentSlotItemResolution);
        *&v101[(v84 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v84;
        v90 = v105;
        v91 = (*(v105 + 6) + 16 * v84);
        *v91 = v104;
        v91[1] = v87;
        *(*(v90 + 7) + 8 * v84) = v89;
        v92 = *(v90 + 2);
        v70 = __OFADD__(v92, 1);
        v93 = v92 + 1;
        if (v70)
        {
          goto LABEL_38;
        }

        *(v105 + 2) = v93;
        v77 = v103;
      }

      v81 = v74;
      v82 = v100;
      while (1)
      {
        v74 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          break;
        }

        if (v74 >= v78)
        {
          v94 = sub_1D6F0F95C(v109);

          *v82 = v123;
          v95 = v98;
          *(v82 + 16) = v99;
          *(v82 + 24) = v95;
          v96 = v102;
          *(v82 + 32) = v42;
          *(v82 + 40) = v96;
          *(v82 + 48) = v105;
          *(v82 + 56) = v94;
          return;
        }

        v83 = *(v52 + 8 * v74);
        ++v81;
        if (v83)
        {
          v80 = __clz(__rbit64(v83));
          v103 = (v83 - 1) & v83;
          goto LABEL_31;
        }
      }

LABEL_36:
      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }
}

uint64_t sub_1D6F10964()
{
  v1 = type metadata accessor for FormatContentSlotItemObject(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatContentSlotItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 32);
  v11 = *(v10 + 16);

  if (v11)
  {
    v13 = 0;
    v14 = v11 - 1;
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      v16 = v13;
      while (1)
      {
        if (v16 >= *(v10 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1D6F13670(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v9, type metadata accessor for FormatContentSlotItem);
        v13 = v16 + 1;
        sub_1D6F13670(v9, v4, type metadata accessor for FormatContentSlotItemObject);
        if (swift_getEnumCaseMultiPayload() == 11)
        {
          break;
        }

        sub_1D6F137C8(v4, type metadata accessor for FormatContentSlotItemObject);
        result = sub_1D6F137C8(v9, type metadata accessor for FormatContentSlotItem);
        ++v16;
        if (v11 == v13)
        {
          goto LABEL_15;
        }
      }

      v17 = *v4;
      v26 = *(v4 + 1);
      v27 = v17;
      v25 = v4[16];
      sub_1D6F137C8(v9, type metadata accessor for FormatContentSlotItem);
      result = swift_isUniquelyReferenced_nonNull_native();
      v28 = v14;
      if ((result & 1) == 0)
      {
        result = sub_1D5D55EC4(0, *(v15 + 16) + 1, 1, v15);
        v15 = result;
      }

      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v24 = v19 + 1;
        result = sub_1D5D55EC4((v18 > 1), v19 + 1, 1, v15);
        v20 = v24;
        v15 = result;
      }

      *(v15 + 16) = v20;
      v21 = v15 + 24 * v19;
      v22 = v26;
      *(v21 + 32) = v27;
      *(v21 + 40) = v22;
      *(v21 + 48) = v25;
      v14 = v28;
    }

    while (v28 != v16);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  return v15;
}

uint64_t FormatContentSlot.slot.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D6F10CDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  if ((~v7 & 0xF000000000000007) != 0)
  {
    sub_1D6F13370(0, &qword_1EDF19910, type metadata accessor for FormatOption, MEMORY[0x1E69E6F90]);
    v12 = (type metadata accessor for FormatOption(0) - 8);
    v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    v14 = (v11 + v13);
    *v14 = v5;
    v14[1] = v6;
    v14[2] = v7;
    v14[3] = 1;
    v15 = v12[9];
    v16 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v16 - 8) + 56))(v11 + v13 + v15, 1, 1, v16);
  }

  else
  {
    v8 = *(a2 + 88);
    if (!*(v8 + 16) || (v9 = sub_1D5B69D90(*a1, v6), (v10 & 1) == 0))
    {
      v11 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v11 = *(*(v8 + 56) + (v9 << 6) + 48);
  }

LABEL_8:
  *a3 = v11;
  return sub_1D5CFCFAC(v7);
}

void FormatContentSlot.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6F12E2C(0, &qword_1EDF3C640, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1910C();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v28) = 0;
    v11 = sub_1D72642BC();
    v26 = v12;
    sub_1D5B49714(0, &qword_1EDF3C918, &type metadata for FormatProperty);
    v27 = 1;
    sub_1D6F12F04(&qword_1EDF3C910, sub_1D5B59CD8, MEMORY[0x1E69E6330]);
    sub_1D726427C();
    v13 = v28;
    if (!v28)
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v25 = v13;
    sub_1D5B49714(0, &qword_1EDF3C8E0, &type metadata for FormatSlotTransform);
    v27 = 2;
    sub_1D6F12F80(&qword_1EDF3C8D8, sub_1D5B57DEC, MEMORY[0x1E69E6330]);
    sub_1D726427C();
    v14 = v28;
    if (!v28)
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v24 = v14;
    sub_1D6F13370(0, &qword_1EDF3C8D0, type metadata accessor for FormatContentSlotItem, MEMORY[0x1E69E62F8]);
    v27 = 3;
    sub_1D6F113BC(&qword_1EDF3C8C8, &qword_1EDF3FE90, &protocol conformance descriptor for FormatContentSlotItem, MEMORY[0x1E69E6330], v15);
    sub_1D726427C();
    v16 = v28;
    if (!v28)
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    v23 = v16;
    sub_1D5B81B04();
    v27 = 4;
    sub_1D5C4EA9C();
    sub_1D726427C();
    v17 = v28;
    (*(v7 + 8))(v10, v6);
    if (!v17)
    {
      v17 = MEMORY[0x1E69E7CD0];
    }

    v19 = v25;
    v18 = v26;
    *a2 = v11;
    a2[1] = v18;
    v21 = v23;
    v20 = v24;
    a2[2] = v19;
    a2[3] = v20;
    a2[4] = v21;
    a2[5] = v17;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1D6F113BC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  result = *a1;
  if (!result)
  {
    sub_1D6F13370(255, &qword_1EDF3C8D0, type metadata accessor for FormatContentSlotItem, MEMORY[0x1E69E62F8]);
    sub_1D6F13554(a2, type metadata accessor for FormatContentSlotItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6F11484()
{
  v1 = *v0;
  v2 = 1953459315;
  v3 = 0x726F66736E617274;
  v4 = 0x736D657469;
  if (v1 != 3)
  {
    v4 = 0x726F7463656C6573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69747265706F7270;
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

uint64_t sub_1D6F11524@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6F131B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6F1154C(uint64_t a1)
{
  v2 = sub_1D5E1910C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F11588(uint64_t a1)
{
  v2 = sub_1D5E1910C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSlot.encode(to:)(void *a1)
{
  sub_1D6F12E2C(0, &qword_1EDF02718, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - v6;
  v8 = v1[2];
  v21 = v1[3];
  v22 = v8;
  v9 = v1[5];
  v20 = v1[4];
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1D5E1910C();
  sub_1D7264B5C();
  LOBYTE(v24) = 0;
  v14 = v23;
  sub_1D72643FC();
  if (!v14)
  {
    v16 = v20;
    v17 = v21;
    if (*(v22 + 16))
    {
      v25 = 1;
      v24 = v22;
      sub_1D6F12E90();
      sub_1D5B49714(0, &qword_1EDF3C918, &type metadata for FormatProperty);
      sub_1D6F12F04(&qword_1EDF05030, sub_1D5B59D2C, MEMORY[0x1E69E6300]);
      sub_1D72647EC();
    }

    if (*(v17 + 16))
    {
      v25 = 2;
      v24 = v17;
      sub_1D6F12E90();
      sub_1D5B49714(0, &qword_1EDF3C8E0, &type metadata for FormatSlotTransform);
      sub_1D6F12F80(&qword_1EDF04F18, sub_1D5B56404, MEMORY[0x1E69E6300]);
      sub_1D72647EC();
    }

    if (*(v16 + 16))
    {
      v25 = 3;
      v24 = v16;
      sub_1D6F12E90();
      sub_1D6F13370(0, &qword_1EDF3C8D0, type metadata accessor for FormatContentSlotItem, MEMORY[0x1E69E62F8]);
      sub_1D6F113BC(&qword_1EDF04E20, qword_1EDF29A88, &protocol conformance descriptor for FormatContentSlotItem, MEMORY[0x1E69E6300], v18);
      sub_1D72647EC();
    }

    if (*(v9 + 16))
    {
      sub_1D5E07E58(v9, v7, 4);
    }
  }

  return (*(v4 + 8))(v7, v13);
}

void sub_1D6F1197C(void *a1@<X8>)
{
  FormatSlotTransform.identifier.getter();
  *a1 = v2;
  a1[1] = v3;
}

void sub_1D6F119C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v131 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v155 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v156 = (&v129 - v11);
  v12 = type metadata accessor for FormatSlotDefinition(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v135 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v136 = &v129 - v17;
  v18 = MEMORY[0x1E69E6720];
  sub_1D6F13370(0, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v134 = &v129 - v25;
  v149 = type metadata accessor for FormatSlotItemCountLimit(0);
  MEMORY[0x1EEE9AC00](v149, v26);
  v138 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v146 = &v129 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v147 = (&v129 - v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v154 = &v129 - v36;
  sub_1D6F13370(0, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules, v18);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v129 - v39;
  v41 = type metadata accessor for FeedPersonalizationClusteringRules(0);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v43);
  v45 = &v129 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for FormatTransformData(0);
  v46 = *(v132 + 44);
  v143 = a2;
  v47 = v42;
  v48 = v41;
  sub_1D6F136D8(a2 + v46, v40, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    sub_1D6F13758(v40, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules);
    (*(v42 + 56))(a3, 1, 1, v41);
    return;
  }

  v130 = a3;
  sub_1D6F13608(v40, v45, type metadata accessor for FeedPersonalizationClusteringRules);
  v153 = *v45;
  LODWORD(v152) = v45[8];
  v151 = *(v45 + 2);
  v150 = v45[24];
  v49 = *(a1 + 16);
  v50 = v45;
  if (!v49)
  {
LABEL_117:
    *v50 = v153;
    *(v50 + 8) = v152 & 1;
    *(v50 + 16) = v151;
    *(v50 + 24) = v150 & 1;
    v128 = v130;
    sub_1D6F13608(v50, v130, type metadata accessor for FeedPersonalizationClusteringRules);
    (*(v47 + 56))(v128, 0, 1, v48);
    return;
  }

  v51 = 0;
  v52 = a1 + 32;
  v133 = v22;
  v137 = v41;
  v139 = v47;
  v142 = v45;
  v141 = v49;
  v140 = a1 + 32;
  while (1)
  {
    v55 = *(v52 + 8 * v51);
    if (v55 >> 60 != 2)
    {
      break;
    }

    if (*((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x10) >> 60)
    {
      goto LABEL_12;
    }

    v71 = swift_projectBox();
    sub_1D6F13670(v71, v138, type metadata accessor for FormatSlotItemCountLimit);
    v72 = *(v143 + *(v132 + 20));
    if (*(v72 + 16))
    {
      sub_1D7264A0C();

      sub_1D72621EC();
      v73 = sub_1D7264A5C();
      v74 = -1 << *(v72 + 32);
      v75 = v73 & ~v74;
      if ((*(v72 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
      {
        v76 = ~v74;
        while (*(*(v72 + 48) + v75) > 2u || !*(*(v72 + 48) + v75) || *(*(v72 + 48) + v75) == 2)
        {
          v77 = sub_1D72646CC();

          if (v77)
          {
            goto LABEL_100;
          }

          v75 = (v75 + 1) & v76;
          if (((*(v72 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
          {
            goto LABEL_41;
          }
        }

LABEL_100:
        v121 = v143;
        v122 = v138;
        v123 = sub_1D6ECAA1C(v143);
        v124 = v153;
        if (v152)
        {
          v124 = -1;
        }

        if (v123 > v124)
        {
          v124 = v123;
        }

        v153 = v124;
        v125 = sub_1D6ECADE8(v121);
        sub_1D6F137C8(v122, type metadata accessor for FormatSlotItemCountLimit);
        sub_1D5FBAC60(v55);
        LODWORD(v152) = 0;
        v126 = v151;
        if (v150)
        {
          v126 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v125 < v126)
        {
          v126 = v125;
        }

        v151 = v126;
        v150 = 0;
        goto LABEL_109;
      }
    }

    else
    {
    }

LABEL_41:
    sub_1D6F137C8(v138, type metadata accessor for FormatSlotItemCountLimit);
    sub_1D5FBAC60(v55);
LABEL_109:
    v48 = v137;
    v47 = v139;
    v50 = v142;
    v49 = v141;
LABEL_11:
    v52 = v140;
LABEL_12:
    if (++v51 == v49)
    {
      goto LABEL_117;
    }
  }

  if (v55 >> 60)
  {
    goto LABEL_12;
  }

  v56 = swift_projectBox();
  v57 = v154;
  sub_1D6F13670(v56, v154, type metadata accessor for FormatSlotItemCountLimit);
  sub_1D6F13670(v57, v147, type metadata accessor for FormatSlotItemCountLimit);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v145 = v51;
  v144 = v55;
  if (!EnumCaseMultiPayload)
  {
    v78 = *v147;

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v79 = v134;
    sub_1D6F136D8(v143, v134, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
    v80 = type metadata accessor for FormatTransformKnobs(0);
    if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
    {

      sub_1D6F13758(v79, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
      v78 = 0;
    }

    else
    {
      v81 = (v79 + *(v80 + 20));
      v82 = v81[3];
      v83 = v81[4];
      __swift_project_boxed_opaque_existential_1(v81, v82);
      v84 = *(v83 + 16);

      v85 = v84(v82, v83);
      v86 = *(v85 + 24);
      if (v86 >> 62)
      {
        v87 = sub_1D7263BFC();
      }

      else
      {
        v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v47 = v139;
      if (v87)
      {
        v148 = *(v134 + *(type metadata accessor for FeedContext(0) + 40));
        v78 = *(v85 + 16);
        v88 = *(v85 + 24);
        if (v88 >> 62)
        {
          v89 = sub_1D7263BFC();
        }

        else
        {
          v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v129 = v85;
        if (v89)
        {
          v90 = 0;
          do
          {
            if ((v88 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1DA6FB460](v90, v88);
              v91 = v90 + 1;
              if (__OFADD__(v90, 1))
              {
                goto LABEL_119;
              }
            }

            else
            {
              if (v90 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_120;
              }

              v91 = v90 + 1;
              if (__OFADD__(v90, 1))
              {
                goto LABEL_119;
              }
            }

            v92 = sub_1D5E38778(v148);
            v94 = v93;

            if ((v94 & 1) == 0)
            {
              v78 = v92;
            }

            ++v90;
          }

          while (v91 != v89);
        }

        v22 = v133;
        v48 = v137;
        v47 = v139;
      }

      else
      {
        v78 = *(v85 + 16);
      }

      sub_1D6F137C8(v134, type metadata accessor for FormatTransformKnobs);
    }

    goto LABEL_64;
  }

  v59 = v136;
  sub_1D6F13608(v147, v136, type metadata accessor for FormatSlotDefinition);
  v60 = *(v59 + 48);
  v61 = *(v60 + 16);
  if (!v61)
  {

    v78 = 0;
LABEL_60:
    sub_1D6F137C8(v136, type metadata accessor for FormatSlotDefinition);
    v22 = v133;
LABEL_64:
    v95 = v153;
    if (v152)
    {
      v95 = -1;
    }

    if (v78 > v95)
    {
      v95 = v78;
    }

    v153 = v95;
    sub_1D6F13670(v154, v146, type metadata accessor for FormatSlotItemCountLimit);
    v96 = swift_getEnumCaseMultiPayload();
    if (!v96)
    {
      sub_1D6F137C8(v154, type metadata accessor for FormatSlotItemCountLimit);
      v53 = *(v146 + 8);
LABEL_6:
      sub_1D5FBAC60(v144);
      LODWORD(v152) = 0;
      v54 = v151;
      if (v150)
      {
        v54 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v53 < v54)
      {
        v54 = v53;
      }

      v151 = v54;
      v150 = 0;
      v50 = v142;
      v49 = v141;
      v51 = v145;
      goto LABEL_11;
    }

    if (v96 == 1)
    {
      v97 = v135;
      sub_1D6F13608(v146, v135, type metadata accessor for FormatSlotDefinition);
      v98 = *(v97 + 48);
      v99 = *(v98 + 16);
      if (v99)
      {
        v100 = 0;
        v101 = 0;
        v102 = v98 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
        v103 = *(v131 + 72);
        v104 = v99 - 1;
        while (1)
        {
          v105 = v155;
          sub_1D6F13670(v102, v155, type metadata accessor for FormatSlotDefinitionItemSet);
          v106 = *(v105 + 4);
          sub_1D6F137C8(v105, type metadata accessor for FormatSlotDefinitionItemSet);
          if (v101 == 0x7FFFFFFF || v106 == 0x7FFFFFFF)
          {
            v101 = 0x7FFFFFFF;
          }

          else
          {
            v70 = __OFADD__(v101, v106);
            v101 += v106;
            if (v70)
            {
              goto LABEL_124;
            }
          }

          if (v104 == v100)
          {
            break;
          }

          ++v100;
          v102 += v103;
          if (v100 >= *(v98 + 16))
          {
            goto LABEL_118;
          }
        }

        v53 = v101;
        v22 = v133;
        v48 = v137;
        v47 = v139;
      }

      else
      {
        v53 = 0;
      }

      sub_1D6F137C8(v154, type metadata accessor for FormatSlotItemCountLimit);
      sub_1D6F137C8(v135, type metadata accessor for FormatSlotDefinition);
      goto LABEL_6;
    }

    sub_1D6F136D8(v143, v22, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
    v107 = type metadata accessor for FormatTransformKnobs(0);
    if ((*(*(v107 - 8) + 48))(v22, 1, v107) == 1)
    {
      sub_1D6F137C8(v154, type metadata accessor for FormatSlotItemCountLimit);
      sub_1D6F13758(v22, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
      v53 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_6;
    }

    v108 = &v22[*(v107 + 20)];
    v109 = *(v108 + 3);
    v110 = *(v108 + 4);
    __swift_project_boxed_opaque_existential_1(v108, v109);
    v111 = (*(v110 + 8))(v109, v110);
    v112 = *(v111 + 24);
    if (v112 >> 62)
    {
      v127 = sub_1D7263BFC();
      v148 = v111;
      if (v127)
      {
LABEL_84:
        v152 = *&v22[*(type metadata accessor for FeedContext(0) + 40)];
        v53 = *(v111 + 16);
        v114 = *(v111 + 24);
        if (v114 >> 62)
        {
          v115 = sub_1D7263BFC();
          if (v115)
          {
LABEL_86:
            v116 = 0;
            while (1)
            {
              if ((v114 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1DA6FB460](v116, v114);
                v117 = v116 + 1;
                if (__OFADD__(v116, 1))
                {
                  goto LABEL_121;
                }
              }

              else
              {
                if (v116 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_122;
                }

                v117 = v116 + 1;
                if (__OFADD__(v116, 1))
                {
                  goto LABEL_121;
                }
              }

              v118 = sub_1D5E38778(v152);
              v120 = v119;

              if ((v120 & 1) == 0)
              {
                v53 = v118;
              }

              ++v116;
              if (v117 == v115)
              {
                goto LABEL_113;
              }
            }
          }
        }

        else
        {
          v115 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v115)
          {
            goto LABEL_86;
          }
        }

        goto LABEL_113;
      }
    }

    else
    {
      v113 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v148 = v111;
      if (v113)
      {
        goto LABEL_84;
      }
    }

    v53 = *(v111 + 16);
LABEL_113:
    sub_1D6F137C8(v154, type metadata accessor for FormatSlotItemCountLimit);

    v22 = v133;
    sub_1D6F137C8(v133, type metadata accessor for FormatTransformKnobs);
    v48 = v137;
    v47 = v139;
    goto LABEL_6;
  }

  v62 = v131;
  v63 = v60 + ((*(v131 + 80) + 32) & ~*(v131 + 80));

  v64 = 0;
  v65 = 0;
  v66 = *(v62 + 72);
  v67 = v61 - 1;
  do
  {
    v68 = v156;
    sub_1D6F13670(v63, v156, type metadata accessor for FormatSlotDefinitionItemSet);
    v69 = *v68;
    sub_1D6F137C8(v68, type metadata accessor for FormatSlotDefinitionItemSet);
    if (v65 == 0x7FFFFFFF || v69 == 0x7FFFFFFF)
    {
      v65 = 0x7FFFFFFF;
    }

    else
    {
      v70 = __OFADD__(v65, v69);
      v65 += v69;
      if (v70)
      {
        goto LABEL_123;
      }
    }

    if (v67 == v64)
    {
      v78 = v65;
      v48 = v137;
      v47 = v139;
      goto LABEL_60;
    }

    ++v64;
    v63 += v66;
  }

  while (v64 < *(v60 + 16));
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
}

void sub_1D6F12AF0(uint64_t *a1@<X0>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v11 = *a1;
  sub_1D6C38484(*a1, a3, a4, a5);
  if (v7)
  {
    v13 = *(a3 + *(type metadata accessor for FormatServiceOptions(0) + 52));
    v14 = sub_1D7262EBC();
    sub_1D5C384A0(0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7279970;
    v17 = *a6;
    v16 = a6[1];
    v18 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1D5B7E2C0();
    *(v15 + 64) = v19;
    *(v15 + 32) = v17;
    *(v15 + 40) = v16;

    v20 = FormatSlotTransform.description.getter();
    *(v15 + 96) = v18;
    *(v15 + 104) = v19;
    *(v15 + 72) = v20;
    *(v15 + 80) = v21;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    *(v15 + 136) = v18;
    *(v15 + 144) = v19;
    *(v15 + 112) = 0;
    *(v15 + 120) = 0xE000000000000000;
    sub_1D725C30C("FormatService content slot %{public}@ failed to transform, transform=%{public}@, error=%{public}@", 97, 2, &dword_1D5B42000, v13, v14, v15);

    swift_willThrow();
  }

  else
  {
    v22 = v12;
    v34 = *(a3 + *(type metadata accessor for FormatServiceOptions(0) + 52));
    sub_1D5C384A0(0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7274590;
    v25 = *a6;
    v24 = a6[1];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v26 = sub_1D5B7E2C0();
    *(v23 + 64) = v26;
    *(v23 + 32) = v25;
    *(v23 + 40) = v24;
    v27 = *(v11 + 16);
    v28 = MEMORY[0x1E69E6530];
    v29 = MEMORY[0x1E69E65A8];
    *(v23 + 96) = MEMORY[0x1E69E6530];
    *(v23 + 104) = v29;
    *(v23 + 72) = v27;
    v30 = *(v22 + 16);
    *(v23 + 136) = v28;
    *(v23 + 144) = v29;
    *(v23 + 112) = v30;

    v31 = FormatSlotTransform.description.getter();
    *(v23 + 176) = MEMORY[0x1E69E6158];
    *(v23 + 184) = v26;
    *(v23 + 152) = v31;
    *(v23 + 160) = v32;
    v33 = sub_1D7262EDC();
    sub_1D725C30C("FormatService content slot %{public}@ did transform items from %ld to %ld, transform=%{public}@", 95, 2, &dword_1D5B42000, v34, v33, v23);

    *a7 = v22;
  }
}

uint64_t _s8NewsFeed17FormatContentSlotV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D72646CC() & 1) == 0 || (sub_1D6339F3C(v2, v7) & 1) == 0 || (sub_1D633C830(v4, v6) & 1) == 0 || (sub_1D6344414(v3, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_1D5BFC390(v5, v8);
}

void sub_1D6F12E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E1910C();
    v7 = a3(a1, &type metadata for FormatContentSlot.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6F12E90()
{
  result = qword_1EDF02720;
  if (!qword_1EDF02720)
  {
    sub_1D6F12E2C(255, &qword_1EDF02718, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF02720);
  }

  return result;
}

uint64_t sub_1D6F12F04(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49714(255, &qword_1EDF3C918, &type metadata for FormatProperty);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6F12F80(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49714(255, &qword_1EDF3C8E0, &type metadata for FormatSlotTransform);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6F12FFC(void *a1)
{
  a1[1] = sub_1D5B5C40C();
  a1[2] = sub_1D5B5C460();
  result = sub_1D6F13034();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F13034()
{
  result = qword_1EC898410;
  if (!qword_1EC898410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898410);
  }

  return result;
}

unint64_t sub_1D6F130AC()
{
  result = qword_1EC898418;
  if (!qword_1EC898418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898418);
  }

  return result;
}

unint64_t sub_1D6F13104()
{
  result = qword_1EDF40640;
  if (!qword_1EDF40640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF40640);
  }

  return result;
}

unint64_t sub_1D6F1315C()
{
  result = qword_1EDF40648;
  if (!qword_1EDF40648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF40648);
  }

  return result;
}

uint64_t sub_1D6F131B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953459315 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F66736E617274 && a2 == 0xEA0000000000736DLL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

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

void sub_1D6F13370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6F133D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6C38EE0(v1);
  *a1 = result;
  return result;
}

unint64_t sub_1D6F13418()
{
  result = qword_1EDF22048;
  if (!qword_1EDF22048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22048);
  }

  return result;
}

unint64_t sub_1D6F1346C()
{
  result = qword_1EDF1B138;
  if (!qword_1EDF1B138)
  {
    sub_1D5B49714(255, &qword_1EDF3C8E0, &type metadata for FormatSlotTransform);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B138);
  }

  return result;
}

uint64_t sub_1D6F134D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D71A72F0(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_1D6F13554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6F1359C(uint64_t a1)
{
  if (!qword_1EDF1B718)
  {
    type metadata accessor for FormatContentSlotItemResolution(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B718);
    }
  }
}

uint64_t sub_1D6F13608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6F13670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6F136D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6F13370(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6F13758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6F13370(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6F137C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for LayeredMediaImageVariant(uint64_t a1)
{
  result = qword_1EDF0CC30;
  if (!qword_1EDF0CC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6F1389C(uint64_t a1)
{
  sub_1D5C169F4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_1D725C9DC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t UIUserInterfaceStyle.description.getter(uint64_t a1)
{
  v1 = 1802658148;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x746867696CLL;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_1D6F139E0(uint64_t a1)
{
  v2 = sub_1D6F13BB0(&qword_1EC898420, &unk_1D727173C);
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D6F13A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6F13BB0(&qword_1EC898420, &unk_1D727173C);
  v5 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D6F13AC8(uint64_t a1)
{
  v2 = sub_1D6F13BB0(&qword_1EC898420, &unk_1D727173C);
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D6F13B38()
{
  v1 = *v0;
  v2 = 1802658148;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 0x746867696CLL;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_1D6F13BB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIUserInterfaceStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FormatSlotDefinition.init(identifier:name:description:items:transforms:properties:editorProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  v11 = a9 + *(type metadata accessor for FormatSlotDefinition(0) + 40);

  return sub_1D5FC55FC(a11, v11);
}

uint64_t sub_1D6F13C80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v78 = a2;
  sub_1D5B4BF64(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v74 - v8;
  v10 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v77 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v80 = &v74 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v74 - v19);
  MEMORY[0x1EEE9AC00](v21, v22);
  v79 = &v74 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v74 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v74 - v30;
  v32 = v3[6];
  v33 = v32[2];
  v81 = a3;
  if (!v33)
  {

    goto LABEL_20;
  }

  v75 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v76 = v10;
  v74 = *(v11 + 72);
  sub_1D69DAC58(v32 + v75 + v74 * (v33 - 1), &v74 - v30);
  v34 = *(v31 + 1);
  v35 = a1[1];

  result = sub_1D5E1EFE4(v34, v35);
  if ((result & 1) == 0)
  {
    sub_1D6F149C4(v31, type metadata accessor for FormatSlotDefinitionItemSet);
    v10 = v76;
LABEL_20:
    sub_1D5CDE4C0(v78, v9, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1D5CDE66C(v9, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
      v50 = v77;
      sub_1D69DAC58(a1, v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1D6991910(0, v32[2] + 1, 1, v32);
      }

      v52 = v32[2];
      v51 = v32[3];
      if (v52 >= v51 >> 1)
      {
        v32 = sub_1D6991910((v51 > 1), v52 + 1, 1, v32);
      }

      v32[2] = v52 + 1;
      sub_1D607483C(v50, v32 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v52);
    }

    else
    {
      v53 = v79;
      sub_1D607483C(v9, v79);
      v54 = v10;
      v55 = a1[1];
      sub_1D5B4BF64(0, &qword_1EC88EFE0, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E6F90]);
      v56 = *(v11 + 72);
      v57 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v78 = v56;
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1D7273AE0;
      v59 = *a1;
      sub_1D69DAC58(v53, v58 + v57);
      sub_1D5CDE4C0(a1 + *(v54 + 36), v20 + *(v54 + 36), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v20[3] = 0;
      v20[4] = 0;
      *v20 = v59;
      v60 = MEMORY[0x1E69E7CC0];
      v20[1] = v55;
      v20[2] = v60;

      sub_1D5CDE22C(0, 0);
      v20[3] = v60;
      v20[4] = v58;
      sub_1D69DAC58(v20, v80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1D6991910(0, v32[2] + 1, 1, v32);
      }

      v62 = v32[2];
      v61 = v32[3];
      if (v62 >= v61 >> 1)
      {
        v32 = sub_1D6991910((v61 > 1), v62 + 1, 1, v32);
      }

      sub_1D6F149C4(v79, type metadata accessor for FormatSlotDefinitionItemSet);
      v32[2] = v62 + 1;
      sub_1D607483C(v80, v32 + v57 + v62 * v78);
      sub_1D6F149C4(v20, type metadata accessor for FormatSlotDefinitionItemSet);
    }

    goto LABEL_31;
  }

  v37 = *v31;
  v38 = a1;
  v39 = *a1;
  v40 = 0x7FFFFFFF;
  v41 = *v31 == 0x7FFFFFFF || v39 == 0x7FFFFFFF;
  v42 = 0x7FFFFFFF;
  if (v41 || (v42 = v37 + v39, !__OFADD__(v37, v39)))
  {
    v43 = *(v31 + 1);
    v44 = *(v38 + 1);
    if (v43 != 0x7FFFFFFF && v44 != 0x7FFFFFFF)
    {
      v40 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_35;
      }
    }

    v46 = *(v31 + 3);
    v47 = *(v31 + 4);
    sub_1D5CDE4C0(&v31[*(v76 + 36)], &v27[*(v76 + 36)], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    *(v27 + 3) = 0;
    *(v27 + 4) = 0;
    *v27 = v42;
    *(v27 + 1) = v40;
    v48 = MEMORY[0x1E69E7CC0];
    *(v27 + 1) = v34;
    *(v27 + 2) = v48;

    sub_1D5D615EC(v46, v47);
    sub_1D5CDE22C(0, 0);
    *(v27 + 3) = v46;
    *(v27 + 4) = v47;
    v49 = v32[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1D5EC3B28(v32);
    }

    result = sub_1D6F149C4(v31, type metadata accessor for FormatSlotDefinitionItemSet);
    if (v49)
    {
      if (v49 <= v32[2])
      {
        sub_1D610B044(v27, v32 + v75 + (v49 - 1) * v74);
LABEL_31:
        v64 = *v3;
        v63 = v3[1];
        v66 = v3[2];
        v65 = v3[3];
        v67 = v3[4];
        v68 = v3[5];
        v69 = v3[7];
        v70 = v3[8];
        v71 = *(type metadata accessor for FormatSlotDefinition(0) + 40);
        v72 = v3 + v71;
        v73 = v81;
        sub_1D5CDE4C0(v72, v81 + v71, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        *v73 = v64;
        v73[1] = v63;
        v73[2] = v66;
        v73[3] = v65;
        v73[4] = v67;
        v73[5] = v68;
        v73[6] = v32;
        v73[7] = v69;
        v73[8] = v70;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t FormatSlotDefinition.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatSlotDefinition.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatSlotDefinition.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

BOOL _s8NewsFeed20FormatSlotDefinitionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4BF64(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - v11;
  sub_1D5D5FB44(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1D72646CC() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D72646CC() & 1) == 0 || (sub_1D633C940(a1[6], a2[6]) & 1) == 0 || (sub_1D633C830(a1[7], a2[7]) & 1) == 0 || (sub_1D633C994(a1[8], a2[8]) & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for FormatSlotDefinition(0) + 40);
  v19 = *(v14 + 48);
  v20 = MEMORY[0x1E69D6A58];
  sub_1D5CDE4C0(a1 + v18, v17, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5CDE4C0(a2 + v18, &v17[v19], &qword_1EDF45AD0, v20);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_1D5CDE4C0(v17, v12, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v21(&v17[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v19], v4);
      sub_1D6F14A24(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
      v23 = sub_1D7261FBC();
      v24 = *(v5 + 8);
      v24(v8, v4);
      v24(v12, v4);
      sub_1D5CDE66C(v17, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      return (v23 & 1) != 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_17:
    sub_1D6F149C4(v17, sub_1D5D5FB44);
    return 0;
  }

  if (v21(&v17[v19], 1, v4) != 1)
  {
    goto LABEL_17;
  }

  sub_1D5CDE66C(v17, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

uint64_t sub_1D6F148C0(uint64_t a1)
{
  result = sub_1D6F14A24(&qword_1EC898428, type metadata accessor for FormatSlotDefinition, &protocol conformance descriptor for FormatSlotDefinition);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6F14918(void *a1)
{
  a1[1] = sub_1D6F14A24(&qword_1EDF2AB28, type metadata accessor for FormatSlotDefinition, &protocol conformance descriptor for FormatSlotDefinition);
  a1[2] = sub_1D6F14A24(&qword_1EDF0ED20, type metadata accessor for FormatSlotDefinition, &protocol conformance descriptor for FormatSlotDefinition);
  result = sub_1D6F14A24(&qword_1EC898430, type metadata accessor for FormatSlotDefinition, &protocol conformance descriptor for FormatSlotDefinition);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6F149C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6F14A24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6F14A6C(unsigned __int8 *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong view];

    if (v9)
    {
      if (v6)
      {
        [v9 bounds];
        [a3 setFrame_];
        [a3 setAutoresizingMask_];
        v10 = [v9 addSubview_];
      }

      else
      {
        v10 = [a3 removeFromSuperview];
      }

      a4(v10);
    }
  }
}

id sub_1D6F14B78(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
LABEL_5:
    v4 = a1;
    return v2;
  }

  result = [a2 view];
  if (result)
  {
    v2 = result;
    a1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6F14BD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  started = type metadata accessor for StartTimeEndTime(0);
  MEMORY[0x1EEE9AC00](started, v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StartTime(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 4)
  {
    if (result <= 1)
    {
      if (result)
      {
        sub_1D6F1BDCC(a1, v11, type metadata accessor for StartTime);
        sub_1D6F15740();
        v53 = swift_allocBox();
        v55 = v54;
        v56 = sub_1D725891C();
        result = (*(*(v56 - 8) + 32))(v55, v11, v56);
        v17 = v53 | 0x1000000000000000;
      }

      else
      {
        sub_1D6F1BDCC(a1, v11, type metadata accessor for StartTime);
        sub_1D6F15740();
        v17 = swift_allocBox();
        v31 = v30;
        v32 = sub_1D725891C();
        result = (*(*(v32 - 8) + 32))(v31, v11, v32);
      }
    }

    else if (result == 2)
    {
      sub_1D6F1BDCC(a1, v11, type metadata accessor for StartTime);
      sub_1D6F15740();
      v33 = swift_allocBox();
      v35 = v34;
      v36 = sub_1D725891C();
      result = (*(*(v36 - 8) + 32))(v35, v11, v36);
      v17 = v33 | 0x2000000000000000;
    }

    else if (result == 3)
    {
      sub_1D6F1BDCC(a1, v11, type metadata accessor for StartTime);
      sub_1D6F15740();
      v18 = swift_allocBox();
      v20 = v19;
      v21 = sub_1D725891C();
      result = (*(*(v21 - 8) + 32))(v20, v11, v21);
      v17 = v18 | 0x3000000000000000;
    }

    else
    {
      sub_1D6F1BDCC(a1, v11, type metadata accessor for StartTime);
      sub_1D6F15740();
      v49 = swift_allocBox();
      v51 = v50;
      v52 = sub_1D725891C();
      result = (*(*(v52 - 8) + 32))(v51, v11, v52);
      v17 = v49 | 0x4000000000000000;
    }
  }

  else if (result > 7)
  {
    if (result == 8)
    {
      sub_1D6F1BDCC(a1, v7, type metadata accessor for StartTimeEndTime);
      sub_1D6F156D8(0);
      v42 = v41;
      v43 = swift_allocBox();
      v45 = v44;
      v46 = *(v42 + 48);
      v47 = sub_1D725891C();
      v48 = *(*(v47 - 8) + 32);
      v48(v45, v7, v47);
      result = (v48)(v45 + v46, &v7[*(started + 20)], v47);
      v17 = v43 | 0x8000000000000000;
    }

    else if (result == 9)
    {
      sub_1D6F1BDCC(a1, v7, type metadata accessor for StartTimeEndTime);
      sub_1D6F156D8(0);
      v23 = v22;
      v24 = swift_allocBox();
      v26 = v25;
      v27 = *(v23 + 48);
      v28 = sub_1D725891C();
      v29 = *(*(v28 - 8) + 32);
      v29(v26, v7, v28);
      result = (v29)(v26 + v27, &v7[*(started + 20)], v28);
      v17 = v24 | 0x9000000000000000;
    }

    else
    {
      v17 = 0xA000000000000000;
    }
  }

  else if (result == 5)
  {
    sub_1D6F1BDCC(a1, v11, type metadata accessor for StartTime);
    sub_1D6F15740();
    v37 = swift_allocBox();
    v39 = v38;
    v40 = sub_1D725891C();
    result = (*(*(v40 - 8) + 32))(v39, v11, v40);
    v17 = v37 | 0x5000000000000000;
  }

  else if (result == 6)
  {
    sub_1D6F1BDCC(a1, v11, type metadata accessor for StartTime);
    sub_1D6F15740();
    v13 = swift_allocBox();
    v15 = v14;
    v16 = sub_1D725891C();
    result = (*(*(v16 - 8) + 32))(v15, v11, v16);
    v17 = v13 | 0x6000000000000000;
  }

  else
  {
    sub_1D6F1BDCC(a1, v11, type metadata accessor for StartTime);
    sub_1D6F15740();
    v57 = swift_allocBox();
    v59 = v58;
    v60 = sub_1D725891C();
    result = (*(*(v60 - 8) + 32))(v59, v11, v60);
    v17 = v57 | 0x7000000000000000;
  }

  *a2 = v17;
  return result;
}

uint64_t SportsDataVisualizationEventStatus.isLive.getter()
{
  v1 = *v0 >> 60;
  if (v1 > 0xA || (v2 = 1, ((1 << v1) & 0x370) != 0) || ((1 << v1) & 0x8C) == 0)
  {
    v2 = sub_1D72646CC();
  }

  return v2 & 1;
}

uint64_t SportsDataVisualizationEventStatus.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 >> 60;
  if (v3 < 8)
  {
    sub_1D6F15740();
LABEL_6:
    v4 = swift_projectBox();
    v5 = sub_1D725891C();
    v12 = *(v5 - 8);
    (*(v12 + 16))(a1, v4, v5);
    v6 = *(v12 + 56);
    v7 = a1;
    v8 = 0;
    v9 = v5;
    goto LABEL_7;
  }

  if (v3 == 8 || v3 == 9)
  {
    sub_1D6F156D8(0);
    goto LABEL_6;
  }

  v11 = sub_1D725891C();
  v6 = *(*(v11 - 8) + 56);
  v9 = v11;
  v7 = a1;
  v8 = 1;
LABEL_7:

  return v6(v7, v8, 1, v9);
}

uint64_t SportsDataVisualizationEventStatus.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725891C();
  v6 = MEMORY[0x1EEE9AC00](v3, v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 >> 61 == 4)
  {
    v15 = v5;
    sub_1D6F156D8(0);
    v10 = v9;
    v11 = swift_projectBox();
    (*(v15 + 16))(v8, v11 + *(v10 + 48), v3);
    (*(v15 + 32))(a1, v8, v3);
    return (*(v15 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v13 = *(v5 + 56);

    return v13(a1, 1, 1, v3, v6);
  }
}

uint64_t SportsDataVisualizationEventStatus.isFinalized.getter()
{
  v1 = *v0 >> 60;
  if (v1 > 0xA || (v2 = 1, ((1 << v1) & 0x370) == 0))
  {
    v2 = sub_1D72646CC();
  }

  return v2 & 1;
}

void sub_1D6F156D8(uint64_t a1)
{
  if (!qword_1EDF18A88)
  {
    sub_1D725891C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF18A88);
    }
  }
}

void sub_1D6F15740()
{
  if (!qword_1EDF18A80)
  {
    v0 = sub_1D725891C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF18A80);
    }
  }
}

uint64_t SportsDataVisualizationEventStatus.isUpcoming.getter()
{
  v1 = *v0 >> 60;
  v2 = 1;
  if (v1 <= 0xA && (((1 << v1) & 0x370) != 0 || ((1 << v1) & 0x8C) != 0 || v1 == 10))
  {
    v2 = sub_1D72646CC();
  }

  return v2 & 1;
}

uint64_t sub_1D6F1586C(uint64_t a1)
{
  v2 = sub_1D6F1AB1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F158A8(uint64_t a1)
{
  v2 = sub_1D6F1AB1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6F158E4(uint64_t a1)
{
  v2 = sub_1D6F1AA20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F15920(uint64_t a1)
{
  v2 = sub_1D6F1AA20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6F15964@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6F1BA44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6F1598C(uint64_t a1)
{
  v2 = sub_1D6F1AC6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F159C8(uint64_t a1)
{
  v2 = sub_1D6F1AC6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6F15A04(uint64_t a1)
{
  v2 = sub_1D6F1A9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F15A40(uint64_t a1)
{
  v2 = sub_1D6F1A9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6F15A7C(uint64_t a1)
{
  v2 = sub_1D6F1A978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F15AB8(uint64_t a1)
{
  v2 = sub_1D6F1A978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D6F15AF4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

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

uint64_t sub_1D6F15BD8(uint64_t a1)
{
  v2 = sub_1D6F1A924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F15C14(uint64_t a1)
{
  v2 = sub_1D6F1A924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6F15C50(uint64_t a1)
{
  v2 = sub_1D6F1AB70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F15C8C(uint64_t a1)
{
  v2 = sub_1D6F1AB70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6F15CC8(uint64_t a1)
{
  v2 = sub_1D6F1ABC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F15D04(uint64_t a1)
{
  v2 = sub_1D6F1ABC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6F15D40(uint64_t a1)
{
  v2 = sub_1D6F1AAC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F15D7C(uint64_t a1)
{
  v2 = sub_1D6F1AAC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6F15DB8(uint64_t a1)
{
  v2 = sub_1D6F1AC18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F15DF4(uint64_t a1)
{
  v2 = sub_1D6F1AC18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D6F15E30(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D6F15EC0(uint64_t a1)
{
  v2 = sub_1D6F1AA74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F15EFC(uint64_t a1)
{
  v2 = sub_1D6F1AA74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6F15F38(uint64_t a1)
{
  v2 = sub_1D6F1A8D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F15F74(uint64_t a1)
{
  v2 = sub_1D6F1A8D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsDataVisualizationEventStatus.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D6F1ACC0(0, &qword_1EDF024F0, sub_1D6F1A8D0, &type metadata for SportsDataVisualizationEventStatus.UnknownCodingKeys, MEMORY[0x1E69E6F58]);
  v194 = v4;
  v193 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v192 = &v167 - v6;
  sub_1D6F1ACC0(0, &qword_1EDF02500, sub_1D6F1A924, &type metadata for SportsDataVisualizationEventStatus.ForfeitCodingKeys, v3);
  v199 = *(v7 - 8);
  v200 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v198 = &v167 - v9;
  sub_1D6F1ACC0(0, &qword_1EDF02510, sub_1D6F1A978, &type metadata for SportsDataVisualizationEventStatus.FinalCodingKeys, v3);
  v196 = *(v10 - 8);
  v197 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v195 = &v167 - v12;
  sub_1D6F1ACC0(0, &qword_1EDF02508, sub_1D6F1A9CC, &type metadata for SportsDataVisualizationEventStatus.DelayedCodingKeys, v3);
  v191 = v13;
  v174 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v190 = &v167 - v15;
  sub_1D6F1ACC0(0, &qword_1EDF024E0, sub_1D6F1AA20, &type metadata for SportsDataVisualizationEventStatus.CancelledCodingKeys, v3);
  v189 = v16;
  v173 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v188 = &v167 - v18;
  sub_1D6F1ACC0(0, &qword_1EDF024D0, sub_1D6F1AA74, &type metadata for SportsDataVisualizationEventStatus.SuspendedCodingKeys, v3);
  v187 = v19;
  v172 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v186 = &v167 - v21;
  sub_1D6F1ACC0(0, &qword_1EDF024D8, sub_1D6F1AAC8, &type metadata for SportsDataVisualizationEventStatus.PostponedCodingKeys, v3);
  v184 = v22;
  v170 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v183 = &v167 - v24;
  sub_1D6F1ACC0(0, &qword_1EDF02518, sub_1D6F1AB1C, &type metadata for SportsDataVisualizationEventStatus.BreakCodingKeys, v3);
  v185 = v25;
  v171 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v180 = &v167 - v27;
  sub_1D6F1ACC0(0, &qword_1EDF024C8, sub_1D6F1AB70, &type metadata for SportsDataVisualizationEventStatus.InProgressCodingKeys, v3);
  v179 = v28;
  v169 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v209 = &v167 - v30;
  sub_1D6F1ACC0(0, &qword_1EDF024E8, sub_1D6F1ABC4, &type metadata for SportsDataVisualizationEventStatus.NearLiveCodingKeys, v3);
  v182 = v31;
  v168 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v208 = &v167 - v33;
  sub_1D6F1ACC0(0, &qword_1EDF024F8, sub_1D6F1AC18, &type metadata for SportsDataVisualizationEventStatus.PregameCodingKeys, v3);
  v181 = v34;
  v167 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v175 = &v167 - v36;
  v37 = sub_1D725891C();
  v38 = *(v37 - 8);
  v211 = v37;
  v212 = v38;
  MEMORY[0x1EEE9AC00](v37, v39);
  v204 = &v167 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v202 = &v167 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v203 = &v167 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v201 = &v167 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v178 = &v167 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v177 = &v167 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v176 = &v167 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v207 = &v167 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v206 = &v167 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v205 = &v167 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v71 = &v167 - v70;
  MEMORY[0x1EEE9AC00](v72, v73);
  v75 = &v167 - v74;
  sub_1D6F1ACC0(0, &qword_1EDF02520, sub_1D6F1AC6C, &type metadata for SportsDataVisualizationEventStatus.CodingKeys, v3);
  v214 = v76;
  v210 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v77);
  v79 = &v167 - v78;
  v80 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F1AC6C();
  v81 = v79;
  sub_1D7264B5C();
  v82 = v80 >> 60;
  if ((v80 >> 60) > 4)
  {
    if (v82 <= 7)
    {
      v83 = v214;
      if (v82 == 5)
      {
        sub_1D6F15740();
        v135 = swift_projectBox();
        v85 = v211;
        v84 = v212;
        v87 = v176;
        (*(v212 + 16))(v176, v135, v211);
        v220 = 5;
        sub_1D6F1AA74();
        v88 = v186;
        sub_1D726436C();
        sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
        v89 = v187;
        sub_1D726443C();
        v90 = &v204;
      }

      else
      {
        v85 = v211;
        v84 = v212;
        if (v82 == 6)
        {
          sub_1D6F15740();
          v86 = swift_projectBox();
          v87 = v177;
          (*(v84 + 16))(v177, v86, v85);
          v221 = 6;
          sub_1D6F1AA20();
          v88 = v188;
          sub_1D726436C();
          sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
          v89 = v189;
          sub_1D726443C();
          v90 = &v205;
        }

        else
        {
          sub_1D6F15740();
          v159 = swift_projectBox();
          v87 = v178;
          (*(v84 + 16))(v178, v159, v85);
          v222 = 7;
          sub_1D6F1A9CC();
          v88 = v190;
          sub_1D726436C();
          sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
          v89 = v191;
          sub_1D726443C();
          v90 = &v206;
        }
      }

      (*(*(v90 - 32) + 1))(v88, v89);
      (*(v84 + 8))(v87, v85);
      v104 = *(v210 + 8);
      v105 = v79;
      goto LABEL_24;
    }

    v106 = v214;
    v107 = v79;
    if (v82 == 8)
    {
      sub_1D6F156D8(0);
      v137 = v136;
      v138 = swift_projectBox();
      v139 = *(v137 + 48);
      v141 = v211;
      v140 = v212;
      v142 = *(v212 + 16);
      v143 = v201;
      v142(v201, v138, v211);
      v142(v203, v138 + v139, v141);
      v225 = 8;
      sub_1D6F1A978();
      v144 = v195;
      sub_1D726436C();
      v224 = 0;
      sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
      v145 = v197;
      v146 = v213;
      sub_1D726443C();
      if (v146)
      {
        (*(v196 + 8))(v144, v145);
        v147 = *(v140 + 8);
        v147(v203, v141);
        v147(v143, v141);
        v104 = *(v210 + 8);
        v105 = v107;
      }

      else
      {
        v162 = v107;
        v223 = 1;
        v163 = v203;
        sub_1D726443C();
        (*(v196 + 8))(v144, v145);
        v164 = *(v140 + 8);
        v164(v163, v141);
        v164(v201, v141);
        v104 = *(v210 + 8);
        v105 = v162;
      }

      goto LABEL_27;
    }

    v109 = v211;
    v108 = v212;
    if (v82 != 9)
    {
      v229 = 10;
      sub_1D6F1A8D0();
      v161 = v192;
      sub_1D726436C();
      (*(v193 + 8))(v161, v194);
      return (*(v210 + 8))(v79, v106);
    }

    sub_1D6F156D8(0);
    v111 = v110;
    v112 = swift_projectBox();
    v113 = *(v111 + 48);
    v114 = *(v108 + 16);
    v209 = v79;
    v115 = v202;
    v114(v202, v112, v109);
    v114(v204, v112 + v113, v109);
    v228 = 9;
    sub_1D6F1A924();
    v116 = v198;
    v117 = v209;
    sub_1D726436C();
    v227 = 0;
    sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
    v118 = v200;
    v119 = v213;
    sub_1D726443C();
    if (v119)
    {
      (*(v199 + 8))(v116, v118);
      v120 = *(v108 + 8);
      v120(v204, v109);
      v120(v115, v109);
      v104 = *(v210 + 8);
      v105 = v117;
LABEL_27:
      v160 = v214;
      return v104(v105, v160);
    }

    v165 = v117;
    v157 = v214;
    v226 = 1;
    sub_1D726443C();
    (*(v199 + 8))(v116, v118);
    v166 = *(v108 + 8);
    v166(v204, v109);
    v166(v202, v109);
    v104 = *(v210 + 8);
    v105 = v165;
LABEL_29:
    v160 = v157;
    return v104(v105, v160);
  }

  v91 = v75;
  v93 = v205;
  v92 = v206;
  v95 = v207;
  v94 = v208;
  v96 = v209;
  if (v82 <= 1)
  {
    v121 = v214;
    v122 = v81;
    if (!v82)
    {
      sub_1D6F15740();
      v123 = swift_projectBox();
      v125 = v211;
      v124 = v212;
      (*(v212 + 16))(v91, v123, v211);
      v215 = 0;
      sub_1D6F1AC18();
      v126 = v175;
      sub_1D726436C();
      sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
      v127 = v181;
      sub_1D726443C();
      (*(v167 + 8))(v126, v127);
      (*(v124 + 8))(v91, v125);
      return (*(v210 + 8))(v122, v121);
    }

    sub_1D6F15740();
    v152 = swift_projectBox();
    v154 = v211;
    v153 = v212;
    (*(v212 + 16))(v71, v152, v211);
    v216 = 1;
    sub_1D6F1ABC4();
    v155 = v94;
    v156 = v71;
    v157 = v121;
    sub_1D726436C();
    sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
    v158 = v182;
    sub_1D726443C();
    (*(v168 + 8))(v155, v158);
    (*(v153 + 8))(v156, v154);
    v104 = *(v210 + 8);
    v105 = v122;
    goto LABEL_29;
  }

  v83 = v214;
  v97 = v81;
  if (v82 != 2)
  {
    v209 = v81;
    v99 = v211;
    v98 = v212;
    if (v82 != 3)
    {
      sub_1D6F15740();
      v148 = swift_projectBox();
      (*(v98 + 16))(v95, v148, v99);
      v219 = 4;
      sub_1D6F1AAC8();
      v149 = v183;
      v150 = v209;
      sub_1D726436C();
      sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
      v151 = v184;
      sub_1D726443C();
      (*(v170 + 8))(v149, v151);
      (*(v98 + 8))(v95, v99);
      return (*(v210 + 8))(v150, v83);
    }

    sub_1D6F15740();
    v100 = swift_projectBox();
    (*(v98 + 16))(v92, v100, v99);
    v218 = 3;
    sub_1D6F1AB1C();
    v101 = v180;
    v102 = v209;
    sub_1D726436C();
    sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
    v103 = v185;
    sub_1D726443C();
    (*(v171 + 8))(v101, v103);
    (*(v98 + 8))(v92, v99);
    v104 = *(v210 + 8);
    v105 = v102;
    goto LABEL_27;
  }

  sub_1D6F15740();
  v129 = swift_projectBox();
  v130 = v211;
  v131 = v212;
  (*(v212 + 16))(v93, v129, v211);
  v217 = 2;
  sub_1D6F1AB70();
  v132 = v96;
  v133 = v130;
  sub_1D726436C();
  sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
  v134 = v179;
  sub_1D726443C();
  (*(v169 + 8))(v132, v134);
  (*(v131 + 8))(v93, v133);
  v104 = *(v210 + 8);
  v105 = v97;
LABEL_24:
  v160 = v83;
  return v104(v105, v160);
}