unint64_t sub_2186E1B88()
{
  result = qword_280E97410;
  if (!qword_280E97410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97410);
  }

  return result;
}

uint64_t type metadata accessor for TodayConfigData(uint64_t a1)
{
  result = qword_280ED9358;
  if (!qword_280ED9358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E1C28(uint64_t a1)
{
  result = sub_219BDB184();
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

void sub_2186E1CDC(uint64_t a1)
{
  if (!qword_280E91CB0)
  {
    type metadata accessor for TodayFeedGroupEmitterFactory();
    sub_2186E1DEC(255);
    sub_2186DFB00(qword_280EB1EF0, type metadata accessor for TodayFeedGroupEmitterFactory, &unk_219C5A498);
    sub_2186DFB00(&unk_280E91E70, sub_2186E1DEC, MEMORY[0x277D31EB8]);
    v1 = sub_219BEE344();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91CB0);
    }
  }
}

void sub_2186E1DEC(uint64_t a1)
{
  if (!qword_280E91E60)
  {
    type metadata accessor for TodayFeedPoolService();
    sub_2186DFB00(&unk_280ECC3C0, type metadata accessor for TodayFeedPoolService, &unk_219C464A0);
    v1 = sub_219BEDEA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91E60);
    }
  }
}

void sub_2186E1EB4(uint64_t a1)
{
  if (!qword_280E90A70)
  {
    sub_2186E1CDC(255);
    type metadata accessor for TodayFeedDatabaseGroupProcessor();
    sub_2186DFB00(&qword_280E91CC0, sub_2186E1CDC, MEMORY[0x277D31FC8]);
    sub_2186DFB00(&qword_280EA7820, type metadata accessor for TodayFeedDatabaseGroupProcessor, &unk_219C4F000);
    sub_2186DFB00(&unk_280EC6570, type metadata accessor for TodayFeedServiceConfig, &unk_219C92DD8);
    sub_2186DFB00(&unk_280EC6580, type metadata accessor for TodayFeedServiceConfig, &unk_219C92DB0);
    sub_2186DFB00(&qword_280EDB750, type metadata accessor for TodayFeedGroup, &unk_219C0E0D0);
    sub_2186DFB00(&qword_280EDB760, type metadata accessor for TodayFeedGroup, &unk_219C0E0A8);
    v1 = sub_219BF0E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90A70);
    }
  }
}

uint64_t type metadata accessor for TodayFeedServiceConfig(uint64_t a1)
{
  result = qword_280EC6558;
  if (!qword_280EC6558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E20F8(uint64_t a1)
{
  result = type metadata accessor for TodayFeedServiceContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TodayConfig(319);
    if (v3 <= 0x3F)
    {
      result = sub_219BEEA84();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for TodayFeedServiceContext(uint64_t a1)
{
  result = qword_280EC2D78;
  if (!qword_280EC2D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E229C(uint64_t a1)
{
  sub_2186E2348();
  if (v1 <= 0x3F)
  {
    sub_2186E2394();
    if (v2 <= 0x3F)
    {
      sub_219BEE754();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2186E2348()
{
  result = qword_280E8E860;
  if (!qword_280E8E860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E860);
  }

  return result;
}

void sub_2186E2394()
{
  if (!qword_280E8E9E0)
  {
    v0 = sub_219BF5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8E9E0);
    }
  }
}

uint64_t type metadata accessor for TodayFeedGroup(uint64_t a1)
{
  result = qword_280EDB730;
  if (!qword_280EDB730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E2438(uint64_t a1)
{
  result = type metadata accessor for CuratedTodayFeedGroup(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NewspaperTodayFeedGroup(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for LocalNewsTodayFeedGroup(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for TrendingTodayFeedGroup(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ForYouTodayFeedGroup(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for MissedStoriesTodayFeedGroup(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for LatestStoriesTodayFeedGroup(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for MoreForYouTodayFeedGroup(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for TopicTodayFeedGroup(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for MagazineFeedGroup(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for NewFollowTodayFeedGroup(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for SubscriptionTodayFeedGroup(319);
                        if (v13 <= 0x3F)
                        {
                          result = sub_219BED544();
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for SpotlightTodayFeedGroup(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for SuggestionTodayFeedGroup(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for SeenContentMarkTodayFeedGroup(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for SharedWithYouTodayFeedGroup(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for EngagementTodayFeedGroup(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for MySportsTodayFeedGroup(319);
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for IntroToSportsTodayFeedGroup(319);
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for ShortcutsTodayFeedGroup(319);
                                          if (v22 <= 0x3F)
                                          {
                                            result = type metadata accessor for ChannelTodayFeedGroup(319);
                                            if (v23 <= 0x3F)
                                            {
                                              result = type metadata accessor for SavedStoriesTodayFeedGroup(319);
                                              if (v24 <= 0x3F)
                                              {
                                                result = type metadata accessor for ChannelPickerTodayFeedGroup(319);
                                                if (v25 <= 0x3F)
                                                {
                                                  result = type metadata accessor for FoodTodayFeedGroup(319);
                                                  if (v26 <= 0x3F)
                                                  {
                                                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                    return 0;
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for CuratedTodayFeedGroup(uint64_t a1)
{
  result = qword_280ECB710;
  if (!qword_280ECB710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E26C4(uint64_t a1)
{
  sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    sub_2186D0AF8(319);
    if (v2 <= 0x3F)
    {
      sub_219BEF8A4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for NewspaperTodayFeedGroup(uint64_t a1)
{
  result = qword_280EC44B8;
  if (!qword_280EC44B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E27B4(uint64_t a1)
{
  sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    sub_2186D6710(319, &qword_280E8E390, &protocolRef_FCChannelProviding);
    if (v2 <= 0x3F)
    {
      sub_2186E28A4(319, &qword_280E8EC20, &qword_280E8E360, &protocolRef_FCSectionProviding, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2186D0AF8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2186E28A4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186D6710(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata accessor for LocalNewsTodayFeedGroup(uint64_t a1)
{
  result = qword_280EE18B8;
  if (!qword_280EE18B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E2958(uint64_t a1)
{
  sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    sub_2186D6710(319, &qword_280E8E390, &protocolRef_FCChannelProviding);
    if (v2 <= 0x3F)
    {
      sub_2186E2B30(319, &qword_280E8EC20, &qword_280E8E360, &protocolRef_FCSectionProviding, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_2186E2AFC(319);
        if (v4 <= 0x3F)
        {
          sub_2186E2A98(319, &qword_280E8EDB0, sub_2186D0BA8, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2186E2A98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E2B30(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186D6710(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2186E2B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for TrendingTodayFeedGroup(uint64_t a1)
{
  result = qword_280EC6238;
  if (!qword_280EC6238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ForYouTodayFeedGroup(uint64_t a1)
{
  result = qword_280ECE978;
  if (!qword_280ECE978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MissedStoriesTodayFeedGroup(uint64_t a1)
{
  result = qword_280EB7ED8;
  if (!qword_280EB7ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LatestStoriesTodayFeedGroup(uint64_t a1)
{
  result = qword_280EB8548;
  if (!qword_280EB8548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MoreForYouTodayFeedGroup(uint64_t a1)
{
  result = qword_280EC0F68;
  if (!qword_280EC0F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TopicTodayFeedGroup(uint64_t a1)
{
  result = qword_280ECF9F8;
  if (!qword_280ECF9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E2DC4(uint64_t a1)
{
  result = sub_219BED8D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for MagazineFeedGroup(uint64_t a1)
{
  result = qword_280ED5DC0;
  if (!qword_280ED5DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E2E84(uint64_t a1)
{
  result = type metadata accessor for CategoriesMagazineFeedGroup(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FeaturedArticleMagazineFeedGroup(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FeaturedIssueMagazineFeedGroup(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for InlineCategoriesMagazineFeedGroup(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for MyMagazinesMagazineFeedGroup(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for NewIssueMagazineFeedGroup(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for PaywallMagazineFeedGroup(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for RecommendedIssuesMagazineFeedGroup(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for TopicMagazineFeedGroup(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for TrendingMagazineFeedGroup(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for BestOfBundleMagazineFeedGroup(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for NewspaperMagazineFeedGroup(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for CuratedMagazineFeedGroup(319);
                            if (v15 <= 0x3F)
                            {
                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                              return 0;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2186E2FE8(uint64_t a1)
{
  sub_2186E352C(319);
  if (v1 <= 0x3F)
  {
    sub_2186DEFE0(319, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2186DEFE0(319, &qword_280E8F308, &type metadata for MagazineCategory, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_219BEF554();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for FeaturedArticleMagazineFeedGroup(uint64_t a1)
{
  result = qword_280EA6AA8;
  if (!qword_280EA6AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E94FD0;
  if (!qword_280E94FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E3198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186E31E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for FeaturedIssueMagazineFeedGroup(uint64_t a1)
{
  result = qword_280EACF38;
  if (!qword_280EACF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E93658;
  if (!qword_280E93658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PromotedArticleListTagFeedGroup(uint64_t a1)
{
  result = qword_280EA8848;
  if (!qword_280EA8848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E330C(uint64_t a1)
{
  if (!qword_280E8EB40)
  {
    sub_2186C6148(255, &qword_280E8DAB0, 0x277D310B0);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EB40);
    }
  }
}

void sub_2186E3374()
{
  if (!qword_280E8F860)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F860);
    }
  }
}

void sub_2186E33C4(uint64_t a1)
{
  sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    sub_2186DBB60(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for SportsTopStoriesTagFeedGroup(uint64_t a1)
{
  result = qword_280EB2618;
  if (!qword_280EB2618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SportsTopStoriesTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E97AA0;
  if (!qword_280E97AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CategoriesMagazineFeedGroup(uint64_t a1)
{
  result = qword_280EB90D0;
  if (!qword_280EB90D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E352C(uint64_t a1)
{
  if (!qword_280E8DA70)
  {
    sub_2186C6148(255, &qword_280E8DA80, 0x277D75348);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8DA70);
    }
  }
}

void sub_2186E3594(uint64_t a1)
{
  if (!qword_280E91FF0)
  {
    type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData(255);
    sub_2186E3198(&unk_280E94FE0, type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData, &unk_219CC8874);
    sub_2186E3198(&qword_280E94FF0, type metadata accessor for FeaturedArticleMagazineFeedGroupConfigData, &unk_219CC884C);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91FF0);
    }
  }
}

void sub_2186E3660(uint64_t a1)
{
  sub_2186E3594(319);
  if (v1 <= 0x3F)
  {
    sub_219BED8D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2186E36E4(uint64_t a1)
{
  result = sub_219BF1934();
  if (v2 <= 0x3F)
  {
    result = sub_219BEF554();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(uint64_t a1)
{
  result = qword_280E99A38;
  if (!qword_280E99A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for InlineCategoriesMagazineFeedGroup(uint64_t a1)
{
  result = qword_280EA3538;
  if (!qword_280EA3538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E3820(uint64_t a1)
{
  sub_2186F8B0C();
  if (v1 <= 0x3F)
  {
    sub_2186DEFE0(319, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2186DEFE0(319, &qword_280E8F308, &type metadata for MagazineCategory, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_219BEF554();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2186E3940(uint64_t a1)
{
  sub_2186F8B0C();
  if (v1 <= 0x3F)
  {
    sub_2186DEEEC(319, &qword_280E8F860, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_219BEF554();
      if (v3 <= 0x3F)
      {
        type metadata accessor for MyMagazinesMagazineFeedGroupKnobs(319);
        if (v4 <= 0x3F)
        {
          sub_2186E4E2C(319, &qword_280E8E670, sub_2186D8870, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_219BEF8A4();
            if (v6 <= 0x3F)
            {
              sub_2186F97D4(319);
              if (v7 <= 0x3F)
              {
                sub_2186D0AF8(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for MyMagazinesMagazineFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA30A0;
  if (!qword_280EA30A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E3B14(uint64_t a1)
{
  if (!qword_280E919C0)
  {
    type metadata accessor for MagazineFeedServiceConfig(255);
    sub_2186EC638(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v1 = sub_219BEEA14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E919C0);
    }
  }
}

void sub_2186E3BA8(uint64_t a1)
{
  sub_2186E3B14(319);
  if (v1 <= 0x3F)
  {
    sub_2186F9548();
    if (v2 <= 0x3F)
    {
      sub_2186F64EC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for MagazineFeedServiceConfig(uint64_t a1)
{
  result = qword_280EBDF88;
  if (!qword_280EBDF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E3C90(uint64_t a1)
{
  result = type metadata accessor for MagazineFeedServiceContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MagazineConfig(319);
    if (v3 <= 0x3F)
    {
      result = sub_219BEEA84();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_2186E3DC4(uint64_t a1)
{
  result = sub_219BEE754();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for MagazineConfig(uint64_t a1)
{
  result = qword_280EDC530;
  if (!qword_280EDC530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E3E70(uint64_t a1)
{
  result = type metadata accessor for MagazineFeedConfig(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MagazineKnobsConfig(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MagazineFeedConfig(uint64_t a1)
{
  result = qword_280ED37E8;
  if (!qword_280ED37E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E3F40(uint64_t a1)
{
  sub_2186E401C();
  if (v1 <= 0x3F)
  {
    sub_2186DDC34(319, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_2186DDC34(319, &qword_280E91B80, MEMORY[0x277D32028]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2186E401C()
{
  if (!qword_280E8F108)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F108);
    }
  }
}

uint64_t type metadata accessor for MagazineKnobsConfig(uint64_t a1)
{
  result = qword_280ED1028;
  if (!qword_280ED1028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E40B8(uint64_t a1)
{
  result = type metadata accessor for MagazineFeedGroupKnobs(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for MagazineFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EC7D30;
  if (!qword_280EC7D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E4180(uint64_t a1)
{
  sub_2186E4314(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for MyMagazinesMagazineFeedGroupKnobs(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for NewIssueMagazineFeedGroupKnobs(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for PaywallMagazineFeedGroupKnobs(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for TopicMagazineFeedGroupKnobs(319);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for TrendingMagazineFeedGroupKnobs(319);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for BestOfBundleMagazineFeedGroupKnobs(319);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for NewspaperMagazineFeedGroupKnobs(319);
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2186E4314(uint64_t a1)
{
  if (!qword_280E8FB68)
  {
    type metadata accessor for CuratedMagazineFeedGroupKnobs(255);
    v1 = sub_219BF52A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8FB68);
    }
  }
}

uint64_t type metadata accessor for CuratedMagazineFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EB10F8;
  if (!qword_280EB10F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E43C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186E4410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186E4458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186E44A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2186E4530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E45F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E465C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E46C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E47EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E48B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E497C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E49E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4AA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4B0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4B70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4BD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4C38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4D64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4E90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4EF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E4F58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs(uint64_t a1)
{
  result = qword_280E94EE8;
  if (!qword_280E94EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E503C(uint64_t a1)
{
  result = sub_219BEF554();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FeedPaywallConfig(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for FeedPaywallConfig(uint64_t a1)
{
  result = qword_280ED6798;
  if (!qword_280ED6798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E5128(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2186C6148(255, a3, a4);
    v5 = sub_219BF6FB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2186E5180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186E51D4(uint64_t a1)
{
  sub_2186E5128(319, &qword_280E8E088, &unk_280E8E090, 0x277D31108);
  if (v1 <= 0x3F)
  {
    sub_2186C6148(319, &qword_280E8DA80, 0x277D75348);
    if (v2 <= 0x3F)
    {
      sub_219BE4584();
      if (v3 <= 0x3F)
      {
        sub_2186E55A8(319, &unk_280EE6360, MEMORY[0x277D35058]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2186E530C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E53D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186E548C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E54F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186E55A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186E55FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E56C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E578C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186E57E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186E5834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E58FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E59C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5A28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5A8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5B54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5BB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5C80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5CE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5DAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186E5E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5E64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5EC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5F2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E5FA4(uint64_t a1)
{
  sub_2186F6684(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FCFeedPaywallSubtype(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for RecommendedIssuesMagazineFeedGroup(uint64_t a1)
{
  result = qword_280E9F5F8;
  if (!qword_280E9F5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TopicMagazineFeedGroup(uint64_t a1)
{
  result = qword_280EC6318;
  if (!qword_280EC6318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E60B0(uint64_t a1)
{
  if (!qword_280E92390)
  {
    type metadata accessor for TopicMagazineFeedGroupConfigData(255);
    sub_2186E3198(&unk_280EA4340, type metadata accessor for TopicMagazineFeedGroupConfigData, &unk_219C362BC);
    sub_2186E3198(&qword_280EA4350, type metadata accessor for TopicMagazineFeedGroupConfigData, &unk_219C36294);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92390);
    }
  }
}

uint64_t type metadata accessor for TopicMagazineFeedGroupConfigData(uint64_t a1)
{
  result = qword_280EA4328;
  if (!qword_280EA4328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E61C8(uint64_t a1)
{
  result = sub_219BEF554();
  if (v2 <= 0x3F)
  {
    result = sub_219BF1934();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2186E626C(uint64_t a1)
{
  sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    sub_2186D6710(319, &qword_280E8E390, &protocolRef_FCChannelProviding);
    if (v2 <= 0x3F)
    {
      sub_2186E28A4(319, &qword_280E8EC20, &qword_280E8E360, &protocolRef_FCSectionProviding, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for CuratedMagazineFeedGroupConfigData(uint64_t a1)
{
  result = qword_280EA0BA8;
  if (!qword_280EA0BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E6390(uint64_t a1)
{
  sub_2186E0CD8(319);
  if (v1 <= 0x3F)
  {
    sub_219BED8D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for IntroToSportsTodayFeedGroup(uint64_t a1)
{
  result = qword_280EB8600;
  if (!qword_280EB8600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SavedStoriesTodayFeedGroup(uint64_t a1)
{
  result = qword_280EBA4D0;
  if (!qword_280EBA4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2186E64AC()
{
  result = qword_280E90B58;
  if (!qword_280E90B58)
  {
    sub_2186DB874(255, &qword_280E90B50, sub_2186E1CDC, sub_2186E1E80, MEMORY[0x277D33010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90B58);
  }

  return result;
}

void sub_2186E65A0(uint64_t a1)
{
  if (!qword_280E91C60)
  {
    type metadata accessor for MagazineFeedGroupEmitterFactory();
    sub_2186E668C(255);
    sub_2186D5BCC(qword_280EA8FF0, type metadata accessor for MagazineFeedGroupEmitterFactory, &unk_219CAF1A8);
    sub_2186D5BCC(&unk_280E91E20, sub_2186E668C, MEMORY[0x277D31EB8]);
    v1 = sub_219BEE344();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91C60);
    }
  }
}

void sub_2186E668C(uint64_t a1)
{
  if (!qword_280E91E10)
  {
    type metadata accessor for MagazineFeedPoolService();
    sub_2186D5BCC(&qword_280EC4750, type metadata accessor for MagazineFeedPoolService, &unk_219C39C88);
    v1 = sub_219BEDEA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91E10);
    }
  }
}

void sub_2186E6754(uint64_t a1)
{
  if (!qword_280E90A58)
  {
    sub_2186E65A0(255);
    type metadata accessor for MagazineFeedDatabaseGroupProcessor();
    sub_2186E6720();
    sub_2186D5500(qword_280E9FF50, type metadata accessor for MagazineFeedDatabaseGroupProcessor, &unk_219C188F4);
    sub_2186D5500(&qword_280EBDF98, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7F98);
    sub_2186D5500(&unk_280EBDFA0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7F70);
    sub_2186D5500(&qword_280ED5DD8, type metadata accessor for MagazineFeedGroup, &unk_219C2DF58);
    sub_2186D5500(&qword_280ED5DF0, type metadata accessor for MagazineFeedGroup, &unk_219C2DF30);
    v1 = sub_219BF0E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90A58);
    }
  }
}

void sub_2186E6988(uint64_t a1)
{
  if (!qword_280E91E90)
  {
    type metadata accessor for AudioFeedPoolService();
    sub_2186F6AA0(qword_280ECF400, type metadata accessor for AudioFeedPoolService, &unk_219C81DA8);
    v1 = sub_219BEDEA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91E90);
    }
  }
}

void sub_2186E6A1C(uint64_t a1)
{
  if (!qword_280E90A90)
  {
    sub_2186ED404(255);
    type metadata accessor for AudioFeedDatabaseGroupProcessor();
    sub_2186F6AA0(&unk_280E91CF0, sub_2186ED404, MEMORY[0x277D31FC8]);
    sub_2186F6AA0(qword_280EA9E60, type metadata accessor for AudioFeedDatabaseGroupProcessor, &unk_219C5A1F0);
    sub_2186F6AA0(&unk_280EC8DB0, type metadata accessor for AudioFeedServiceConfig, &unk_219C208C0);
    sub_2186F6AA0(&unk_280EC8DC0, type metadata accessor for AudioFeedServiceConfig, &unk_219C20898);
    sub_2186F6AA0(&qword_280EDCCF0, type metadata accessor for AudioFeedGroup, &unk_219C5E1CC);
    sub_2186F6AA0(&qword_280EDCD00, type metadata accessor for AudioFeedGroup, &unk_219C5E1A4);
    v1 = sub_219BF0E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90A90);
    }
  }
}

uint64_t type metadata accessor for AudioFeedServiceContext(uint64_t a1)
{
  result = qword_280EC5DB8;
  if (!qword_280EC5DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E6C3C()
{
  if (!qword_280E8F2A8)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F2A8);
    }
  }
}

uint64_t type metadata accessor for AudioFeedContentConfig(uint64_t a1)
{
  result = qword_280EC8F38;
  if (!qword_280EC8F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E6CD8(uint64_t a1)
{
  sub_2186DCF58(319);
  if (v1 <= 0x3F)
  {
    sub_2186E6D8C(319);
    if (v2 <= 0x3F)
    {
      sub_2186ED934(319);
      if (v3 <= 0x3F)
      {
        sub_2186ED99C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2186E6DC0(uint64_t a1)
{
  sub_2186ED79C(319);
  if (v1 <= 0x3F)
  {
    sub_2186ED868(319);
    if (v2 <= 0x3F)
    {
      sub_2186FA21C(319);
      if (v3 <= 0x3F)
      {
        sub_2186FA2D8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for ForYouAudioFeedGroupConfigData(uint64_t a1)
{
  result = qword_280EACAB8;
  if (!qword_280EACAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E6EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186E6EF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for UpNextAudioFeedGroupConfigData(uint64_t a1)
{
  result = qword_280EA9FB8;
  if (!qword_280EA9FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2186E6F84()
{
  result = qword_280EA89F0;
  if (!qword_280EA89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA89F0);
  }

  return result;
}

uint64_t sub_2186E6FD8(uint64_t a1)
{
  result = sub_219BF1934();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for AudioFeedKnobsConfig(uint64_t a1)
{
  result = qword_280ECF540;
  if (!qword_280ECF540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E70C0(uint64_t a1)
{
  result = type metadata accessor for AudioFeedGroupKnobs(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for UpNextAudioFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EBC998;
  if (!qword_280EBC998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E71FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2186E7244(uint64_t a1)
{
  sub_2186E7180(319);
  if (v1 <= 0x3F)
  {
    sub_2186F9548();
    if (v2 <= 0x3F)
    {
      sub_2186F95C4();
      if (v3 <= 0x3F)
      {
        sub_2186ECA28();
        if (v4 <= 0x3F)
        {
          sub_2186EDEB8(319, &qword_280E912E0, MEMORY[0x277D32720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for LegacyAudioFeedGroupConfig(uint64_t a1)
{
  result = qword_280EBB4D8;
  if (!qword_280EBB4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E737C(uint64_t a1)
{
  result = type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_2186E742C(uint64_t a1)
{
  sub_2186DD55C(319, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2186EE020();
    if (v2 <= 0x3F)
    {
      sub_2186DD55C(319, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2186E7530(uint64_t a1)
{
  sub_2186DEEA0(319, &qword_280E8F860, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LegacyAudioConfigArticle.Overrides(319);
    if (v2 <= 0x3F)
    {
      sub_2186DCFB0(319, &qword_280EE9C40, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_2186DCFB0(319, &qword_280EE5188, MEMORY[0x277D6D9E0]);
        if (v4 <= 0x3F)
        {
          sub_2186DEEA0(319, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for LegacyAudioDailyBriefingInTodayFeedGroupConfig(uint64_t a1)
{
  result = qword_280E938B8;
  if (!qword_280E938B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LegacyAudioEditorialHeroFeedGroupConfig(uint64_t a1)
{
  result = qword_280E97298;
  if (!qword_280E97298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E7714(uint64_t a1)
{
  sub_2186DD55C(319, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2186EE020();
    if (v2 <= 0x3F)
    {
      sub_2186DD55C(319, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2186E7828()
{
  result = qword_280EDCB20;
  if (!qword_280EDCB20)
  {
    type metadata accessor for AudioFeedTrack.Configurables(255);
    sub_2186E7BB0(255, &unk_280E90220, &qword_280E90230, MEMORY[0x277D33C58], MEMORY[0x277D83D88]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_280EDCB20);
  }

  return result;
}

void sub_2186E78E0(uint64_t a1)
{
  if (!qword_280E8FB90)
  {
    sub_2186E7828();
    v1 = sub_219BF52A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8FB90);
    }
  }
}

void sub_2186E7948(uint64_t a1)
{
  sub_2186DF2B4(319, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2186E7BB0(319, &qword_280EE5A68, &qword_280EE5A70, MEMORY[0x277D6D608], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2186EE208(319, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2186DF2B4(319, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2186EE208(319, &qword_280EE5188, MEMORY[0x277D6D9E0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2186E7AE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E7B4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E7BB0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186CFDE4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2186E7C18(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2186E7C84(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2186E7CF0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2186E7D5C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186CFDE4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2186E7DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E7E28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E7E8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E7EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E7F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E7FB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E801C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E8080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E80E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E8148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186E819C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E8200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E8264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E82C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E832C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E8390(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186CFDE4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2186E83F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E845C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E84C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E8524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E8588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186E85EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2186E8650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2186E86B4(uint64_t a1)
{
  result = type metadata accessor for ForYouAudioFeedGroup(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UpNextAudioFeedGroup(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PaywallAudioFeedGroup(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for CuratedAudioFeedGroup(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for CuratedAudioFeedGroup(uint64_t a1)
{
  result = qword_280ECB7F0;
  if (!qword_280ECB7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E879C(uint64_t a1)
{
  if (!qword_280EC73C8)
  {
    v2 = type metadata accessor for SavedFeedServiceContextFactory();
    v3 = type metadata accessor for SavedFeedServiceConfigFetcher();
    sub_2186DB874(255, &qword_280E90B60, sub_2186FA878, sub_2186E8CB8, MEMORY[0x277D33010]);
    v7[0] = v2;
    v7[1] = v3;
    v7[2] = v4;
    v7[3] = sub_2186D560C(qword_280EAB788, type metadata accessor for SavedFeedServiceContextFactory, &unk_219C0A488);
    v7[4] = sub_2186D560C(&qword_280EAF3A0, type metadata accessor for SavedFeedServiceConfigFetcher, &unk_219C934C8);
    v7[5] = sub_2186E8CEC();
    v7[6] = sub_2186D560C(&unk_280EC6CE0, type metadata accessor for SavedFeedServiceConfig, &unk_219CAA768);
    v5 = type metadata accessor for OfflineFeedBuilderLite(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_280EC73C8);
    }
  }
}

uint64_t sub_2186E8954(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186E899C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186E89E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186E8A2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186E8A74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186E8ABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186E8B04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186E8B4C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2186E8B94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186E8BDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2186E8C24(uint64_t a1)
{
  if (!qword_280E91E80)
  {
    type metadata accessor for SavedFeedPoolService();
    sub_2186E89E4(qword_280ECD5C0, type metadata accessor for SavedFeedPoolService, &unk_219C2C168);
    v1 = sub_219BEDEA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91E80);
    }
  }
}

unint64_t sub_2186E8CEC()
{
  result = qword_280E90B68;
  if (!qword_280E90B68)
  {
    sub_2186DB874(255, &qword_280E90B60, sub_2186FA878, sub_2186E8CB8, MEMORY[0x277D33010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90B68);
  }

  return result;
}

void sub_2186E8D88(uint64_t a1)
{
  type metadata accessor for SavedFeedContentConfig(319);
  if (v1 <= 0x3F)
  {
    sub_2186EE86C(319);
    if (v2 <= 0x3F)
    {
      sub_2186C61E4();
      if (v3 <= 0x3F)
      {
        sub_219BEEA84();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for SavedFeedContentConfig(uint64_t a1)
{
  result = qword_280EC6EB8;
  if (!qword_280EC6EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E8EA0(uint64_t a1)
{
  result = type metadata accessor for SavedFeedConfig(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SavedFeedKnobsConfig(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for SavedFeedConfig(uint64_t a1)
{
  result = qword_280ED9F18;
  if (!qword_280ED9F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E8F70(uint64_t a1)
{
  sub_2186DDCEC(319, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2186DDCEC(319, &qword_280E8F258, type metadata accessor for SavedFeedGroupConfig, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2186DDCEC(319, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for SavedFeedGroupConfig(uint64_t a1)
{
  result = qword_280ECD7C0;
  if (!qword_280ECD7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E90E8(uint64_t a1)
{
  if (!qword_280E92288)
  {
    type metadata accessor for ArticleListSavedFeedGroupConfigData(255);
    sub_2186E92A4(&qword_280E9E1A8, type metadata accessor for ArticleListSavedFeedGroupConfigData, &unk_219C8A67C);
    sub_2186E92A4(&qword_280E9E1B0, type metadata accessor for ArticleListSavedFeedGroupConfigData, &unk_219C8A654);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92288);
    }
  }
}

void sub_2186E91B4(uint64_t a1)
{
  sub_2186E90E8(319);
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

uint64_t type metadata accessor for ArticleListSavedFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E9E198;
  if (!qword_280E9E198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E92A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186E92EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SavedFeedKnobsConfig(uint64_t a1)
{
  result = qword_280ECD718;
  if (!qword_280ECD718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SavedFeedGroupKnobs(uint64_t a1)
{
  result = qword_280ED07D0;
  if (!qword_280ED07D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E93CC(uint64_t a1)
{
  result = type metadata accessor for ArticleListSavedFeedGroupKnobs(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ArticleListSavedFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EADAF0;
  if (!qword_280EADAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E9484(uint64_t a1)
{
  if (!qword_280E91A40)
  {
    type metadata accessor for SavedFeedServiceConfig(255);
    sub_2186EE62C(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig, &unk_219CAA790);
    v1 = sub_219BEEA14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91A40);
    }
  }
}

unint64_t sub_2186E9518()
{
  result = qword_280E8E8B0;
  if (!qword_280E8E8B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E8B0);
  }

  return result;
}

uint64_t sub_2186E957C(void *a1)
{
  result = sub_219BEDA24();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = sub_219BE5434();
          if (v6 <= 0x3F)
          {
            return swift_initClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

void sub_2186E9710(uint64_t a1)
{
  if (!qword_280EC73B8)
  {
    v2 = type metadata accessor for HistoryFeedServiceContextFactory();
    v3 = type metadata accessor for HistoryFeedServiceConfigFetcher();
    sub_2186DB874(255, &qword_280E90B30, sub_2186E98A4, sub_2186EE930, MEMORY[0x277D33010]);
    v7[0] = v2;
    v7[1] = v3;
    v7[2] = v4;
    v7[3] = sub_2186D560C(qword_280EA6708, type metadata accessor for HistoryFeedServiceContextFactory, &unk_219C2E510);
    v7[4] = sub_2186D560C(&qword_280EA91D0, type metadata accessor for HistoryFeedServiceConfigFetcher, &unk_219C0D458);
    v7[5] = sub_2186E9A40();
    v7[6] = sub_2186D560C(&unk_280EC18C0, type metadata accessor for HistoryFeedServiceConfig, &unk_219C4C2C0);
    v5 = type metadata accessor for OfflineFeedBuilderLite(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_280EC73B8);
    }
  }
}

void sub_2186E98A4(uint64_t a1)
{
  if (!qword_280E91C80)
  {
    type metadata accessor for HistoryFeedGroupEmitterFactory();
    sub_2186DB874(255, &qword_280E91E30, type metadata accessor for HistoryFeedPoolService, sub_2186D79EC, MEMORY[0x277D31EB0]);
    sub_2186D560C(qword_280EAC8D0, type metadata accessor for HistoryFeedGroupEmitterFactory, &unk_219CBB340);
    sub_2186E99A4();
    v1 = sub_219BEE344();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91C80);
    }
  }
}

unint64_t sub_2186E99A4()
{
  result = qword_280E91E40;
  if (!qword_280E91E40)
  {
    sub_2186DB874(255, &qword_280E91E30, type metadata accessor for HistoryFeedPoolService, sub_2186D79EC, MEMORY[0x277D31EB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E91E40);
  }

  return result;
}

unint64_t sub_2186E9A40()
{
  result = qword_280E90B38;
  if (!qword_280E90B38)
  {
    sub_2186DB874(255, &qword_280E90B30, sub_2186E98A4, sub_2186EE930, MEMORY[0x277D33010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90B38);
  }

  return result;
}

void sub_2186E9ADC(uint64_t a1)
{
  sub_2186EED10(319);
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

uint64_t type metadata accessor for ArticleListHistoryFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E99FB0;
  if (!qword_280E99FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E9BCC(uint64_t a1)
{
  result = sub_219BF1934();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for HistoryFeedKnobsConfig(uint64_t a1)
{
  result = qword_280EC81F0;
  if (!qword_280EC81F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E9C8C(uint64_t a1)
{
  result = type metadata accessor for HistoryFeedGroupKnobs(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for HistoryFeedGroupKnobs(uint64_t a1)
{
  result = qword_280ECACA8;
  if (!qword_280ECACA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E9D4C(uint64_t a1)
{
  result = type metadata accessor for ArticleListHistoryFeedGroupKnobs(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ArticleListHistoryFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA71E0;
  if (!qword_280EA71E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E9E4C(uint64_t a1)
{
  if (!qword_280EC73D8[0])
  {
    v2 = type metadata accessor for SharedWithYouFeedServiceContextFactory();
    v3 = type metadata accessor for SharedWithYouFeedServiceConfigFetcher();
    sub_2186DB874(255, &qword_280E90BB0, sub_2186EA004, sub_2186EA104, MEMORY[0x277D33010]);
    v7[0] = v2;
    v7[1] = v3;
    v7[2] = v4;
    v7[3] = sub_2186D560C(&qword_280E97FF8, type metadata accessor for SharedWithYouFeedServiceContextFactory, &unk_219C70A40);
    v7[4] = sub_2186D560C(qword_280E98F20, type metadata accessor for SharedWithYouFeedServiceConfigFetcher, &unk_219CA6F98);
    v7[5] = sub_2186EEF74();
    v7[6] = sub_2186D560C(&unk_280EAB3E0, type metadata accessor for SharedWithYouFeedServiceConfig, &unk_219C43890);
    v5 = type metadata accessor for OfflineFeedBuilderLite(a1, v7);
    if (!v6)
    {
      atomic_store(v5, qword_280EC73D8);
    }
  }
}

void sub_2186EA004(uint64_t a1)
{
  if (!qword_280E91D18)
  {
    type metadata accessor for SharedWithYouFeedGroupEmitterFactory();
    sub_2186DB874(255, &qword_280E91ED0, type metadata accessor for SharedWithYouFeedPoolService, sub_2186D5B50, MEMORY[0x277D31EB0]);
    sub_2186D560C(qword_280E9A810, type metadata accessor for SharedWithYouFeedGroupEmitterFactory, &unk_219CBCBC8);
    sub_2186F6D58();
    v1 = sub_219BEE344();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91D18);
    }
  }
}

void sub_2186EA138(uint64_t a1)
{
  type metadata accessor for SharedWithYouFeedContentConfig(319);
  if (v1 <= 0x3F)
  {
    sub_2186EE86C(319);
    if (v2 <= 0x3F)
    {
      sub_2186C61E4();
      if (v3 <= 0x3F)
      {
        sub_219BEEA84();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for SharedWithYouFeedConfig(uint64_t a1)
{
  result = qword_280EC3560;
  if (!qword_280EC3560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ArticleListSharedWithYouFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E947E0;
  if (!qword_280E947E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186EA29C(uint64_t a1)
{
  result = sub_219BF1934();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2186EA310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EA358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SharedWithYouFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EB70F8;
  if (!qword_280EB70F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186EA3EC(uint64_t a1)
{
  result = type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs(uint64_t a1)
{
  result = qword_280E98600;
  if (!qword_280E98600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186EA4A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EA4EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EA534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EA57C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2186EA5C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EA60C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2186EA774(uint64_t a1)
{
  if (!qword_280E94A80)
  {
    v2 = type metadata accessor for TodayFeedServiceConfig(255);
    sub_2186E1EB4(255);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = type metadata accessor for TodayFeedServiceContextFactory();
    v6[3] = &type metadata for TodaySectionDescriptor;
    v6[4] = type metadata accessor for TodayModel(255);
    v6[5] = sub_2186E6548();
    v6[6] = sub_2186D560C(qword_280EAA320, type metadata accessor for TodayFeedServiceContextFactory, &unk_219C6D328);
    v6[7] = sub_2186EB3E8();
    v6[8] = sub_2186D560C(&unk_280EDFA20, type metadata accessor for TodayModel, &unk_219CCC6FC);
    v6[9] = sub_2186D560C(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v4 = type metadata accessor for OfflineReadinessBlueprintPipelineProcessor(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_280E94A80);
    }
  }
}

void sub_2186EA920(uint64_t a1)
{
  if (!qword_280E8FA00)
  {
    type metadata accessor for TodayGapLocation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8FA00);
    }
  }
}

void sub_2186EA98C(uint64_t a1)
{
  if (!qword_280E90A00)
  {
    type metadata accessor for TodayFeedServiceConfig(255);
    sub_2186EF594(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v1 = sub_219BF0F94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90A00);
    }
  }
}

uint64_t sub_2186EAA20(uint64_t a1)
{
  sub_2186EA98C(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_2186EAA78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2186EAB00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2186EAB88(uint64_t a1)
{
  if (!qword_280E90D50)
  {
    sub_219BF0F34();
    v1 = MEMORY[0x277D33058];
    sub_2186EF66C(&unk_280E90A40, MEMORY[0x277D33058], MEMORY[0x277D33060]);
    sub_2186EF66C(&qword_280E90A50, v1, MEMORY[0x277D33050]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90D50);
    }
  }
}

void sub_2186EAC68(uint64_t a1)
{
  if (!qword_280E90D20)
  {
    sub_219BF1094();
    v1 = MEMORY[0x277D330F8];
    sub_2186EF9CC(&unk_280E909A0, MEMORY[0x277D330F8], MEMORY[0x277D33100]);
    sub_2186EF9CC(&qword_280E909B0, v1, MEMORY[0x277D330E8]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90D20);
    }
  }
}

void sub_2186EAD48(uint64_t a1)
{
  if (!qword_280E90E80)
  {
    sub_219BEC504();
    v1 = MEMORY[0x277D2D6B0];
    sub_2186CC14C(&unk_280EE32C0, MEMORY[0x277D2D6B0], MEMORY[0x277D2D6B8]);
    sub_2186CC14C(&qword_280EE32D0, v1, MEMORY[0x277D2D698]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90E80);
    }
  }
}

void sub_2186EAE28(uint64_t a1)
{
  if (!qword_280E90E30)
  {
    sub_219BEDAE4();
    v1 = MEMORY[0x277D31D50];
    sub_2186EFBC4(&unk_280E92550, MEMORY[0x277D31D50], MEMORY[0x277D31D58]);
    sub_2186EFBC4(&unk_280E92560, v1, MEMORY[0x277D31D30]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90E30);
    }
  }
}

uint64_t sub_2186EAF08()
{
  result = qword_280E8F960;
  if (!qword_280E8F960)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280E8F960);
  }

  return result;
}

void sub_2186EAF38(uint64_t a1)
{
  if (!qword_280E90DC0)
  {
    sub_219BF07A4();
    v1 = MEMORY[0x277D32F68];
    sub_2186EF9CC(&unk_280E90E90, MEMORY[0x277D32F68], MEMORY[0x277D32F70]);
    sub_2186EF9CC(&qword_280E90EA0, v1, MEMORY[0x277D32F20]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90DC0);
    }
  }
}

void sub_2186EB018(uint64_t a1)
{
  if (!qword_280E90DF0)
  {
    sub_219BF04A4();
    v1 = MEMORY[0x277D32CE0];
    sub_2186EF66C(&unk_280E90F10, MEMORY[0x277D32CE0], MEMORY[0x277D32CE8]);
    sub_2186EF66C(&unk_280E90F20, v1, MEMORY[0x277D32C98]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90DF0);
    }
  }
}

uint64_t sub_2186EB0F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2186EB140(uint64_t a1)
{
  if (!qword_280E90E20)
  {
    sub_219BEDB94();
    v1 = MEMORY[0x277D31DE8];
    sub_2186EB0F8(&unk_280E924E0, 255, MEMORY[0x277D31DE8], MEMORY[0x277D31DF0]);
    sub_2186EB0F8(&qword_280E924F0, 255, v1, MEMORY[0x277D31DE0]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90E20);
    }
  }
}

void sub_2186EB228(uint64_t a1)
{
  if (!qword_280E90E08)
  {
    sub_219BEEAD4();
    v1 = MEMORY[0x277D32260];
    sub_2186EF9CC(&qword_280E91968, MEMORY[0x277D32260], MEMORY[0x277D32268]);
    sub_2186EF9CC(&unk_280E91970, v1, MEMORY[0x277D32258]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90E08);
    }
  }
}

void sub_2186EB308(uint64_t a1)
{
  if (!qword_280E90D80)
  {
    sub_219BF0B74();
    v1 = MEMORY[0x277D32FD0];
    sub_2186EF66C(&unk_280E90C70, MEMORY[0x277D32FD0], MEMORY[0x277D32FD8]);
    sub_2186EF66C(&unk_280E90C80, v1, MEMORY[0x277D32FC8]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90D80);
    }
  }
}

unint64_t sub_2186EB3E8()
{
  result = qword_280EC6350;
  if (!qword_280EC6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6350);
  }

  return result;
}

uint64_t sub_2186EB484()
{

  return swift_deallocClassInstance();
}

void sub_2186EB520(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_219BEE544();
      if (v3 <= 0x3F)
      {
        sub_219BEB334();
        if (v4 <= 0x3F)
        {
          sub_2186EB77C(319);
          if (v5 <= 0x3F)
          {
            sub_2186DDE18(319, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2186EB77C(uint64_t a1)
{
  if (!qword_280EE7450)
  {
    type metadata accessor for OfflineReadinessSection(255);
    sub_2186D560C(&unk_280EC41B0, type metadata accessor for OfflineReadinessSection, &unk_219C82CB0);
    sub_2186D560C(&unk_280EC41C0, type metadata accessor for OfflineReadinessSection, &unk_219C82C88);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7450);
    }
  }
}

uint64_t type metadata accessor for OfflineReadinessSection(uint64_t a1)
{
  result = qword_280EC4158;
  if (!qword_280EC4158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186EB8B4(uint64_t a1)
{
  type metadata accessor for OfflineFeedManifest(319);
  if (v1 <= 0x3F)
  {
    sub_2186EBC14(319);
    if (v2 <= 0x3F)
    {
      sub_2186C6148(319, &unk_280E8E5F8, 0x277D310A8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2186EB978(uint64_t a1)
{
  sub_219BDBD34();
  if (v1 <= 0x3F)
  {
    sub_2186EBA94(319);
    if (v2 <= 0x3F)
    {
      sub_2186EBBE0(319);
      if (v3 <= 0x3F)
      {
        sub_2186D0CEC(319, &qword_280E8F6A8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_2186D0CEC(319, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2186EBAE8(uint64_t a1)
{
  sub_219BDBD34();
  if (v1 <= 0x3F)
  {
    sub_2186D0CEC(319, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2186D0CEC(319, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2186EBC14(uint64_t a1)
{
  if (!qword_280E8ED48)
  {
    sub_2186C6148(255, &qword_280E8E770, 0x277D30E08);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8ED48);
    }
  }
}

void sub_2186EBC7C(uint64_t a1)
{
  if (!qword_280EB3A50[0])
  {
    type metadata accessor for MyMagazinesMagazineFeedGroup(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280EB3A50);
    }
  }
}

void sub_2186EBCE8(uint64_t a1)
{
  sub_2186F6F00(319);
  if (v1 <= 0x3F)
  {
    sub_2186F083C();
    if (v2 <= 0x3F)
    {
      sub_2186F0758(319);
      if (v3 <= 0x3F)
      {
        sub_2186FACE4(319);
        if (v4 <= 0x3F)
        {
          sub_2186F700C(319);
          if (v5 <= 0x3F)
          {
            sub_219BE5BA4();
            if (v6 <= 0x3F)
            {
              sub_2186EAE28(319);
              if (v7 <= 0x3F)
              {
                sub_2186EFC0C(319);
                if (v8 <= 0x3F)
                {
                  sub_2186EB140(319);
                  if (v9 <= 0x3F)
                  {
                    sub_2186EB228(319);
                    if (v10 <= 0x3F)
                    {
                      sub_2186EB018(319);
                      if (v11 <= 0x3F)
                      {
                        sub_2186EB308(319);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2186EBE2C(uint64_t a1)
{
  if (!qword_280E909E0)
  {
    type metadata accessor for MagazineFeedServiceConfig(255);
    sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v1 = sub_219BF0F94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E909E0);
    }
  }
}

uint64_t sub_2186EBEC0(uint64_t a1)
{
  sub_2186EBE2C(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2186EBF18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EBF60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EBFA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EBFF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC0C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC1A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2186EC1E8(uint64_t a1)
{
  sub_2186EE020();
  if (v1 <= 0x3F)
  {
    sub_2186F64EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for BestOfBundleMagazineFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA1028;
  if (!qword_280EA1028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186EC2FC(uint64_t a1)
{
  sub_2186E3B14(319);
  if (v1 <= 0x3F)
  {
    sub_2186F64EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2186EC3A4(uint64_t a1)
{
  if (!qword_280E91F80)
  {
    type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData(255);
    sub_2186E3198(&unk_280E93670, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData, &unk_219C30FE8);
    sub_2186E3198(&qword_280E93680, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupConfigData, &unk_219C30FC0);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91F80);
    }
  }
}

uint64_t type metadata accessor for MyMagazinesMagazineFeedGroup(uint64_t a1)
{
  result = qword_280EB3B10;
  if (!qword_280EB3B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MagazineFeedServiceContext(uint64_t a1)
{
  result = qword_280EBB358;
  if (!qword_280EBB358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186EC508(uint64_t a1)
{
  sub_2186E3B14(319);
  if (v1 <= 0x3F)
  {
    sub_2186F64EC(319);
    if (v2 <= 0x3F)
    {
      sub_2186F9548();
      if (v3 <= 0x3F)
      {
        sub_2186F95C4();
        if (v4 <= 0x3F)
        {
          sub_2186ECA28();
          if (v5 <= 0x3F)
          {
            sub_2186E4FBC(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2186EC5F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC6C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC7A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC7E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC8C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC908(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EC9E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2186ECA28()
{
  if (!qword_280E913D0)
  {
    v0 = sub_219BEF544();
    if (!v1)
    {
      atomic_store(v0, &qword_280E913D0);
    }
  }
}

uint64_t type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs(uint64_t a1)
{
  result = qword_280E99B30;
  if (!qword_280E99B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs(uint64_t a1)
{
  result = qword_280E983F8;
  if (!qword_280E983F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186ECB3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186ECBA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186ECC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186ECC68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186ECCCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186ECD30(uint64_t a1)
{
  if (!qword_280E92250)
  {
    type metadata accessor for NewIssueMagazineFeedGroupConfigData(255);
    sub_2186E3198(&unk_280E9CEE0, type metadata accessor for NewIssueMagazineFeedGroupConfigData, &unk_219C842AC);
    sub_2186E3198(&qword_280E9CEF0, type metadata accessor for NewIssueMagazineFeedGroupConfigData, &unk_219C84284);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92250);
    }
  }
}

void sub_2186ECDFC(uint64_t a1)
{
  sub_2186ECD30(319);
  if (v1 <= 0x3F)
  {
    sub_219BED8D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for PaywallMagazineFeedGroup(uint64_t a1)
{
  result = qword_280EC0D38;
  if (!qword_280EC0D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for BestOfBundleMagazineFeedGroup(uint64_t a1)
{
  result = qword_280EB12E0;
  if (!qword_280EB12E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186ECF58(uint64_t a1)
{
  if (!qword_280E92310)
  {
    type metadata accessor for CuratedMagazineFeedGroupConfigData(255);
    sub_2186EC5F0(&unk_280EA0BC0, type metadata accessor for CuratedMagazineFeedGroupConfigData, &unk_219C6CCAC);
    sub_2186EC5F0(&qword_280EA0BD0, type metadata accessor for CuratedMagazineFeedGroupConfigData, &unk_219C6CC84);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92310);
    }
  }
}

void sub_2186ED024(uint64_t a1)
{
  sub_2186ECF58(319);
  if (v1 <= 0x3F)
  {
    sub_219BED8D4();
    if (v2 <= 0x3F)
    {
      sub_219BEF8A4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for NewFollowTodayFeedGroup(uint64_t a1)
{
  result = qword_280EC4578;
  if (!qword_280EC4578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SubscriptionTodayFeedGroup(uint64_t a1)
{
  result = qword_280EB9F08;
  if (!qword_280EB9F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SuggestionTodayFeedGroup(uint64_t a1)
{
  result = qword_280EBFFB0;
  if (!qword_280EBFFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SeenContentMarkTodayFeedGroup(uint64_t a1)
{
  result = qword_280EAEF30;
  if (!qword_280EAEF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SharedWithYouTodayFeedGroup(uint64_t a1)
{
  result = qword_280EB7088;
  if (!qword_280EB7088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186ED23C(uint64_t a1)
{
  sub_2186F687C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata accessor for ChannelPickerTodayFeedGroup(uint64_t a1)
{
  result = qword_280EB8F58;
  if (!qword_280EB8F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186ED33C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_2186ED404(uint64_t a1)
{
  if (!qword_280E91CE0)
  {
    type metadata accessor for AudioFeedGroupEmitterFactory();
    sub_2186E6988(255);
    sub_2186F6AA0(qword_280EB5690, type metadata accessor for AudioFeedGroupEmitterFactory, &unk_219C25380);
    sub_2186F6AA0(&unk_280E91EA0, sub_2186E6988, MEMORY[0x277D31EB8]);
    v1 = sub_219BEE344();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91CE0);
    }
  }
}

uint64_t sub_2186ED4F0(uint64_t a1)
{
  result = type metadata accessor for AudioFeedServiceContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AudioFeedContentConfig(319);
    if (v3 <= 0x3F)
    {
      result = sub_2186C6148(319, &qword_280E8DDC0, 0x277D311C0);
      if (v4 <= 0x3F)
      {
        result = sub_2186C61E4();
        if (v5 <= 0x3F)
        {
          result = sub_2186C6148(319, &qword_280E8DE40, 0x277D31330);
          if (v6 <= 0x3F)
          {
            result = sub_219BEEA84();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2186ED5FC(uint64_t a1)
{
  sub_2186E6C3C();
  if (v1 <= 0x3F)
  {
    sub_219BEE754();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2186ED698(uint64_t a1)
{
  type metadata accessor for AudioFeedConfig(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AudioFeedKnobsConfig(319);
    if (v2 <= 0x3F)
    {
      sub_2186EDF0C(319, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for AudioFeedConfig(uint64_t a1)
{
  result = qword_280EDB3F8;
  if (!qword_280EDB3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186ED79C(uint64_t a1)
{
  if (!qword_280E92450)
  {
    type metadata accessor for ForYouAudioFeedGroupConfigData(255);
    sub_2186E6EA8(&unk_280EACAF0, type metadata accessor for ForYouAudioFeedGroupConfigData, &unk_219CC5728);
    sub_2186E6EA8(&qword_280EACB00, type metadata accessor for ForYouAudioFeedGroupConfigData, &unk_219CC5700);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92450);
    }
  }
}

void sub_2186ED868(uint64_t a1)
{
  if (!qword_280E92430)
  {
    type metadata accessor for UpNextAudioFeedGroupConfigData(255);
    sub_2186E6EA8(&unk_280EA9FF0, type metadata accessor for UpNextAudioFeedGroupConfigData, &unk_219C6F8F8);
    sub_2186E6EA8(&qword_280EAA000, type metadata accessor for UpNextAudioFeedGroupConfigData, &unk_219C6F8D0);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92430);
    }
  }
}

void sub_2186ED934(uint64_t a1)
{
  if (!qword_280E8FAE8)
  {
    sub_219BF3034();
    v1 = sub_219BF52A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8FAE8);
    }
  }
}

void sub_2186ED9D0(uint64_t a1)
{
  sub_2186E7180(319);
  if (v1 <= 0x3F)
  {
    sub_2186F9548();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2186EDA54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t type metadata accessor for ForYouAudioFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EBE7A0;
  if (!qword_280EBE7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CuratedAudioFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EBBC30;
  if (!qword_280EBBC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186EDBB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186EDC08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186EDC5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186EDCB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186EDD04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186EDD58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186EDDAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186EDE00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186EDE54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186EDEB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186EDF0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186EDF60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for LegacyAudioFeedConfiguration(uint64_t a1)
{
  result = qword_280EB40D0;
  if (!qword_280EB40D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186EE020()
{
  if (!qword_280E8EA30)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EA30);
    }
  }
}

void sub_2186EE070(uint64_t a1)
{
  sub_2186DD55C(319, &qword_280E8F0F0, type metadata accessor for LegacyAudioConfigArticle, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2186DEEA0(319, &qword_280E8F860, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_2186DEEA0(319, &qword_280EB4118, &type metadata for LegacyAudioFeedConfiguration.CallToAction);
      if (v3 <= 0x3F)
      {
        sub_2186DEEA0(319, &qword_280E8EA30, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          sub_2186DD55C(319, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_219BEF554();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2186EE208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for AudioFeedGroup(uint64_t a1)
{
  result = qword_280EDCCD8;
  if (!qword_280EDCCD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ForYouAudioFeedGroup(uint64_t a1)
{
  result = qword_280ECEB08;
  if (!qword_280ECEB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for UpNextAudioFeedGroup(uint64_t a1)
{
  result = qword_280ECC1F0;
  if (!qword_280ECC1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186EE350(uint64_t a1)
{
  result = sub_219BED8D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SavedFeedServiceConfig(uint64_t a1)
{
  result = qword_280EC6CC8;
  if (!qword_280EC6CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186EE4C0(uint64_t a1)
{
  result = sub_219BF1934();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2186EE534(uint64_t a1)
{
  result = type metadata accessor for SavedFeedGroupKnobs(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2186EE5A8(uint64_t a1)
{
  sub_2186E9484(319);
  if (v1 <= 0x3F)
  {
    sub_2186F9548();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2186EE62C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EE674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EE6BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EE704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EE74C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2186EE794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EE7DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2186EE86C(uint64_t a1)
{
  if (!qword_280E8E8A8)
  {
    sub_2186E9518();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8E8A8);
    }
  }
}

uint64_t type metadata accessor for HistoryFeedServiceConfig(uint64_t a1)
{
  result = qword_280EC18A8;
  if (!qword_280EC18A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186EE9B0(uint64_t a1)
{
  type metadata accessor for HistoryFeedContentConfig(319);
  if (v1 <= 0x3F)
  {
    sub_2186EE86C(319);
    if (v2 <= 0x3F)
    {
      sub_2186C61E4();
      if (v3 <= 0x3F)
      {
        sub_219BEEA84();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for HistoryFeedContentConfig(uint64_t a1)
{
  result = qword_280EC19F0;
  if (!qword_280EC19F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186EEAC8(uint64_t a1)
{
  result = type metadata accessor for HistoryFeedConfig(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HistoryFeedKnobsConfig(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for HistoryFeedConfig(uint64_t a1)
{
  result = qword_280ED6490;
  if (!qword_280ED6490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186EEB98(uint64_t a1)
{
  sub_2186DD058(319, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2186DD058(319, &qword_280E8F148, type metadata accessor for HistoryFeedGroupConfig, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2186DD058(319, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for HistoryFeedGroupConfig(uint64_t a1)
{
  result = qword_280EC8298;
  if (!qword_280EC8298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186EED10(uint64_t a1)
{
  if (!qword_280E92190)
  {
    type metadata accessor for ArticleListHistoryFeedGroupConfigData(255);
    sub_2186EEDDC(&qword_280E99FC0, type metadata accessor for ArticleListHistoryFeedGroupConfigData, &unk_219C9A4F0);
    sub_2186EEDDC(&qword_280E99FC8, type metadata accessor for ArticleListHistoryFeedGroupConfigData, &unk_219C9A4C8);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92190);
    }
  }
}

uint64_t sub_2186EEDDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EEE24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2186EEE6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for HistoryFeedServiceConfig(255);
    v7 = sub_2186EEDDC(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig, &unk_219C4C2E8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2186EEF08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2186EEF74()
{
  result = qword_280E90BB8;
  if (!qword_280E90BB8)
  {
    sub_2186DB874(255, &qword_280E90BB0, sub_2186EA004, sub_2186EA104, MEMORY[0x277D33010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90BB8);
  }

  return result;
}

void sub_2186EF010(uint64_t a1)
{
  sub_2186DD494(319, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2186DD494(319, &qword_280E8F078, type metadata accessor for SharedWithYouFeedGroupConfig, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2186DD494(319, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2186EF13C(uint64_t a1)
{
  if (!qword_27CC0FEA0)
  {
    type metadata accessor for SharedWithYouFeedServiceConfig(255);
    sub_2186EA4A4(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig, &unk_219C438B8);
    v1 = sub_219BEEA14();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0FEA0);
    }
  }
}

void sub_2186EF1D0(uint64_t a1)
{
  sub_2186EF13C(319);
  if (v1 <= 0x3F)
  {
    sub_2186F9548();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2186EF254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2186EF32C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2186EF398(uint64_t a1)
{
  sub_2186EA920(319);
  if (v1 <= 0x3F)
  {
    sub_2186EAB00(319, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
    if (v2 <= 0x3F)
    {
      sub_2186EAB88(319);
      if (v3 <= 0x3F)
      {
        sub_2186EAC68(319);
        if (v4 <= 0x3F)
        {
          sub_219BE5BA4();
          if (v5 <= 0x3F)
          {
            sub_219BF0D74();
            if (v6 <= 0x3F)
            {
              sub_2186EAB00(319, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88, " fallback ");
              if (v7 <= 0x3F)
              {
                sub_2186EAE28(319);
                if (v8 <= 0x3F)
                {
                  sub_2186EAF08();
                  if (v9 <= 0x3F)
                  {
                    sub_219BEEC14();
                    if (v10 <= 0x3F)
                    {
                      sub_2186EAF38(319);
                      if (v11 <= 0x3F)
                      {
                        sub_2186EB018(319);
                        if (v12 <= 0x3F)
                        {
                          sub_2186EFC0C(319);
                          if (v13 <= 0x3F)
                          {
                            sub_2186EB140(319);
                            if (v14 <= 0x3F)
                            {
                              sub_2186EB228(319);
                              if (v15 <= 0x3F)
                              {
                                sub_2186EB308(319);
                                if (v16 <= 0x3F)
                                {
                                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2186EF594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EF5DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EF66C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EF6B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EF6FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EF744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EF78C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EF7D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EF81C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EF864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EF8AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EF8F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EF93C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EF984(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EF9CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EFA14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EFA5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EFAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EFAEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EFB34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EFB7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EFBC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2186EFC0C(uint64_t a1)
{
  if (!qword_280E90DA0)
  {
    sub_219BF0AC4();
    v1 = MEMORY[0x277D32FB8];
    sub_2186EB0F8(&unk_280E90C90, 255, MEMORY[0x277D32FB8], MEMORY[0x277D32FC0]);
    sub_2186EB0F8(&qword_280E90CA0, 255, v1, MEMORY[0x277D32FB0]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90DA0);
    }
  }
}

uint64_t sub_2186EFCF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EFD3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EFD84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186EFDCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2186EFEF0(uint64_t a1)
{
  if (!qword_280E94A60)
  {
    v2 = type metadata accessor for MagazineFeedServiceConfig(255);
    sub_2186E6754(255);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = type metadata accessor for MagazineFeedServiceContextFactory();
    v6[3] = type metadata accessor for MagazineFeedSectionDescriptor(255);
    v6[4] = type metadata accessor for MagazineFeedModel(255);
    v6[5] = sub_2186D5500(&unk_280E90A60, sub_2186E6754, MEMORY[0x277D33048]);
    v6[6] = sub_2186D5500(qword_280EA3310, type metadata accessor for MagazineFeedServiceContextFactory, &unk_219CC10C4);
    v6[7] = sub_2186D5500(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    v6[8] = sub_2186D5500(&qword_280ED5CF0, type metadata accessor for MagazineFeedModel, &unk_219C6F110);
    v6[9] = sub_2186D5500(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v4 = type metadata accessor for OfflineReadinessBlueprintPipelineProcessor(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_280E94A60);
    }
  }
}

uint64_t type metadata accessor for MagazineFeedSectionDescriptor(uint64_t a1)
{
  result = qword_280EB0330;
  if (!qword_280EB0330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186F0110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2186F0180(uint64_t a1)
{
  sub_2186F0110(319, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
  if (v1 <= 0x3F)
  {
    type metadata accessor for FeaturedArticleMagazineFeedGroup(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for FeaturedIssueMagazineFeedGroup(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(319);
        if (v4 <= 0x3F)
        {
          sub_2186F0110(319, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
          if (v5 <= 0x3F)
          {
            sub_2186EBC7C(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for NewIssueMagazineFeedGroup(319);
              if (v7 <= 0x3F)
              {
                sub_2186F0110(319, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
                if (v8 <= 0x3F)
                {
                  type metadata accessor for RecommendedIssuesMagazineFeedGroup(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for TopicMagazineFeedGroup(319);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for TrendingMagazineFeedGroup(319);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for BestOfBundleMagazineFeedGroup(319);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for NewspaperMagazineFeedGroup(319);
                          if (v13 <= 0x3F)
                          {
                            sub_219BED8D4();
                            if (v14 <= 0x3F)
                            {
                              type metadata accessor for CuratedMagazineFeedGroup(319);
                              if (v15 <= 0x3F)
                              {
                                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for NewIssueMagazineFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EAC0E0;
  if (!qword_280EAC0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PaywallMagazineFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EAF820;
  if (!qword_280EAF820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs(uint64_t a1)
{
  result = qword_280E96B30;
  if (!qword_280E96B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TopicMagazineFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EB61F8;
  if (!qword_280EB61F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186F04D4(uint64_t a1)
{
  sub_2186E3B14(319);
  if (v1 <= 0x3F)
  {
    sub_2186F64EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for TrendingMagazineFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EAA160;
  if (!qword_280EAA160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186F05BC(uint64_t a1)
{
  sub_2186E3B14(319);
  if (v1 <= 0x3F)
  {
    sub_2186F64EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2186F0654(uint64_t a1)
{
  sub_2186E3B14(319);
  if (v1 <= 0x3F)
  {
    sub_2186F0704(319, &qword_280E8F220, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2186F0704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for HeroSelectionStrategy);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186F0758(uint64_t a1)
{
  if (!qword_280E90D70)
  {
    sub_219BF0F34();
    v1 = MEMORY[0x277D33058];
    sub_2186EB0F8(&unk_280E90A40, 255, MEMORY[0x277D33058], MEMORY[0x277D33060]);
    sub_2186EB0F8(&qword_280E90A50, 255, v1, MEMORY[0x277D33050]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90D70);
    }
  }
}

void sub_2186F083C()
{
  if (!qword_280E90888)
  {
    v0 = sub_219BF1584();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90888);
    }
  }
}

void sub_2186F096C(uint64_t a1)
{
  if (!qword_280E94AD0)
  {
    v2 = type metadata accessor for TagFeedServiceConfig(255);
    sub_2186D6034(255);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = type metadata accessor for TagFeedServiceContextFactory();
    v6[3] = &type metadata for TagFeedSectionDescriptor;
    v6[4] = type metadata accessor for TagFeedModel(255);
    v6[5] = sub_2186DC784();
    v6[6] = sub_2186D560C(qword_280EB2240, type metadata accessor for TagFeedServiceContextFactory, &unk_219C9D5B8);
    v6[7] = sub_2186F7410();
    v6[8] = sub_2186D560C(&unk_280EDE870, type metadata accessor for TagFeedModel, &unk_219C47ABC);
    v6[9] = sub_2186D560C(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
    v4 = type metadata accessor for OfflineReadinessBlueprintPipelineProcessor(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_280E94AD0);
    }
  }
}

void sub_2186F0AD8(uint64_t a1)
{
  sub_2186F0CC0(319);
  if (v1 <= 0x3F)
  {
    sub_2186F0DCC(319, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
    if (v2 <= 0x3F)
    {
      sub_2186F0E54(319);
      if (v3 <= 0x3F)
      {
        sub_2186F0F3C(319);
        if (v4 <= 0x3F)
        {
          sub_2186F7158(319);
          if (v5 <= 0x3F)
          {
            sub_219BE5BA4();
            if (v6 <= 0x3F)
            {
              sub_219BF0D74();
              if (v7 <= 0x3F)
              {
                sub_2186F0DCC(319, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54, " fallback ");
                if (v8 <= 0x3F)
                {
                  sub_2186EAF08();
                  if (v9 <= 0x3F)
                  {
                    sub_2186FAF54(319);
                    if (v10 <= 0x3F)
                    {
                      sub_2186F7240(319);
                      if (v11 <= 0x3F)
                      {
                        sub_2186FB04C(319);
                        if (v12 <= 0x3F)
                        {
                          sub_2186F107C(319);
                          if (v13 <= 0x3F)
                          {
                            sub_2186F7328(319);
                            if (v14 <= 0x3F)
                            {
                              sub_2186F1164(319);
                              if (v15 <= 0x3F)
                              {
                                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2186F0CC0(uint64_t a1)
{
  if (!qword_280E8F9F0)
  {
    type metadata accessor for TagFeedGapLocation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F9F0);
    }
  }
}

uint64_t sub_2186F0D2C(uint64_t a1)
{
  sub_2186FAE74(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_2186F0DCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2186F0E54(uint64_t a1)
{
  if (!qword_280E90D60)
  {
    sub_219BF0F34();
    sub_2186FAF08();
    v1 = MEMORY[0x277D33058];
    sub_2186CC14C(&unk_280E90A40, MEMORY[0x277D33058], MEMORY[0x277D33060]);
    sub_2186CC14C(&qword_280E90A50, v1, MEMORY[0x277D33050]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90D60);
    }
  }
}

void sub_2186F0F3C(uint64_t a1)
{
  if (!qword_280E90E00)
  {
    sub_219BF04A4();
    sub_2186C6148(255, &qword_280E8E560, 0x277D30FB0);
    v1 = MEMORY[0x277D32CE0];
    sub_2186F1034(&unk_280E90F10, MEMORY[0x277D32CE0], MEMORY[0x277D32CE8]);
    sub_2186F1034(&unk_280E90F20, v1, MEMORY[0x277D32C98]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90E00);
    }
  }
}

uint64_t sub_2186F1034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2186F107C(uint64_t a1)
{
  if (!qword_280E90E28)
  {
    sub_219BEDB94();
    sub_2186FAF08();
    v1 = MEMORY[0x277D31DE8];
    sub_2186CC14C(&unk_280E924E0, MEMORY[0x277D31DE8], MEMORY[0x277D31DF0]);
    sub_2186CC14C(&qword_280E924F0, v1, MEMORY[0x277D31DE0]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90E28);
    }
  }
}

void sub_2186F1164(uint64_t a1)
{
  if (!qword_280E90D90)
  {
    sub_219BF0B74();
    sub_2186FAF08();
    v1 = MEMORY[0x277D32FD0];
    sub_2186CC14C(&unk_280E90C70, MEMORY[0x277D32FD0], MEMORY[0x277D32FD8]);
    sub_2186CC14C(&unk_280E90C80, v1, MEMORY[0x277D32FC8]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90D90);
    }
  }
}

void sub_2186F12DC(uint64_t a1)
{
  if (!qword_280E94AA0)
  {
    v2 = type metadata accessor for AudioFeedServiceConfig(255);
    sub_2186E6A1C(255);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = type metadata accessor for AudioFeedServiceContextFactory();
    v6[3] = type metadata accessor for AudioFeedSectionDescriptor(255);
    v6[4] = type metadata accessor for AudioFeedModel(255);
    v6[5] = sub_2186EE3D4();
    v6[6] = sub_2186D560C(qword_280EAD8A8, type metadata accessor for AudioFeedServiceContextFactory, &unk_219C3C980);
    v6[7] = sub_2186D560C(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23DFC);
    v6[8] = sub_2186D560C(&unk_280EDCC20, type metadata accessor for AudioFeedModel, &unk_219C86FB8);
    v6[9] = sub_2186D560C(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
    v4 = type metadata accessor for OfflineReadinessBlueprintPipelineProcessor(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_280E94AA0);
    }
  }
}

void sub_2186F1480(uint64_t a1)
{
  type metadata accessor for UpNextAudioFeedGroup(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ForYouAudioFeedGroup(319);
    if (v2 <= 0x3F)
    {
      sub_2186FB1C0(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CuratedAudioFeedGroup(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_2186F151C(uint64_t a1)
{
  if (!qword_280E8F9E0)
  {
    type metadata accessor for AudioFeedGapLocation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F9E0);
    }
  }
}

uint64_t sub_2186F1618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2186F1660()
{
  result = qword_280EC1400;
  if (!qword_280EC1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC1400);
  }

  return result;
}

unint64_t sub_2186F16B4()
{
  result = qword_280EC4BB0;
  if (!qword_280EC4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4BB0);
  }

  return result;
}

unint64_t sub_2186F1708()
{
  result = qword_280ECA3E8;
  if (!qword_280ECA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA3E8);
  }

  return result;
}

unint64_t sub_2186F175C()
{
  result = qword_280EAEE08[0];
  if (!qword_280EAEE08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAEE08);
  }

  return result;
}

unint64_t sub_2186F17B0()
{
  result = qword_280ECBD40;
  if (!qword_280ECBD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECBD40);
  }

  return result;
}

unint64_t sub_2186F1804()
{
  result = qword_280ED3090;
  if (!qword_280ED3090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED3090);
  }

  return result;
}

unint64_t sub_2186F1858()
{
  result = qword_280EE2680;
  if (!qword_280EE2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2680);
  }

  return result;
}

uint64_t sub_2186F1928()
{
  v0 = sub_219BE1ED4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_219BE2A24();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CB30], v0);
  sub_219BE2B64();
  (*(v1 + 8))(v3, v0);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void sub_2186F1AC8(uint64_t a1)
{
  if (!qword_280EE7CE8)
  {
    sub_219BDDC34();
    sub_219BDDC24();
    sub_2186F1B74(&qword_280EE8D58, MEMORY[0x277D2FC80], MEMORY[0x277D2FC78]);
    v1 = sub_219BE1EC4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7CE8);
    }
  }
}

uint64_t sub_2186F1B74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186F1BBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void static PPT.test.getter(char *a1@<X8>)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 isRunningPerformanceTest];

  if (!v3)
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v17 = qword_280F61728;
    v18 = sub_219BF6214();
    sub_219BE5314("Application is not running a performance test", 45, 2, &dword_2186C1000, v17, v18, MEMORY[0x277D84F90]);
LABEL_10:
    v14 = 33;
    goto LABEL_15;
  }

  v4 = _s7NewsUI23PPTV8testNameSSSgvgZ_0();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v8 = qword_280F61728;
    sub_2186F20D4(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C09BA0;
    v10 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v11 = sub_2186FC3BC();
    *(v9 + 64) = v11;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;

    v12 = sub_219BF6214();
    sub_219BE5314("Found PPT test name in user defaults: %{public}@", 48, 2, &dword_2186C1000, v8, v12, v9);

    v13._countAndFlagsBits = v6;
    v13._object = v7;
    PPT.Test.init(rawValue:)(v13);
    v14 = v21;
    if (v21 != 33)
    {

      goto LABEL_15;
    }

    v15 = sub_219BF61F4();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09BA0;
    *(v16 + 56) = v10;
    *(v16 + 64) = v11;
    *(v16 + 32) = v6;
    *(v16 + 40) = v7;
    sub_219BE5314("Failed to map the specified PPT test name %{public}@ to a known PPT test", 72, 2, &dword_2186C1000, v8, v15, v16);

    goto LABEL_10;
  }

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v19 = qword_280F61728;
  v20 = sub_219BF6214();
  sub_219BE5314("No PPT test name in user defaults, so falling back to Extended Launch to Today", 78, 2, &dword_2186C1000, v19, v20, MEMORY[0x277D84F90]);
  v14 = 5;
LABEL_15:
  *a1 = v14;
}

uint64_t _s7NewsUI23PPTV8testNameSSSgvgZ_0()
{
  v0 = NewsCoreUserDefaults();
  v1 = [v0 stringForKey_];

  if (v1)
  {
    v2 = sub_219BF5414();
  }

  else
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v3 = qword_280F61728;
    v4 = sub_219BF61F4();
    sub_2186F20D4(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_219C09BA0;
    v6 = sub_219BF5414();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_2186FC3BC();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_219BE5314("Failed to find a PPT test name specified in defaults com.apple.newscore under key %{public}@", 92, 2, &dword_2186C1000, v3, v4, v5);

    return 0;
  }

  return v2;
}

uint64_t sub_2186F200C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61728 = result;
  return result;
}

void sub_2186F20D4(uint64_t a1)
{
  if (!qword_280E8B5B0)
  {
    sub_2186CFDE4(255, &qword_280E8B560, MEMORY[0x277D84D98]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8B5B0);
    }
  }
}

uint64_t type metadata accessor for NameLogoMastheadModel(uint64_t a1)
{
  result = qword_280ECA6D0;
  if (!qword_280ECA6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186F22D4(uint64_t a1)
{
  sub_2186C6148(319, &qword_280E8E560, 0x277D30FB0);
  if (v1 <= 0x3F)
  {
    sub_2186D85DC();
    if (v2 <= 0x3F)
    {
      sub_2186FE720(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2186F23A4(uint64_t a1)
{
  sub_219BE2044();
  sub_2186C709C(0, qword_280E95830, &protocol descriptor for MyMagazinesSharingActivityItemFactoryType, 1);
  sub_219BE2914();
}

uint64_t sub_2186F242C(uint64_t a1)
{
  v87 = a1;
  v71 = sub_219BE1ED4();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v67[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = sub_219BE3344();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v67[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_219BE2DF4();
  v84 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v67[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BE2044();
  sub_2186C709C(0, qword_280EB8CD0, &protocol descriptor for FeedAvailabilityServiceType, 1);
  sub_219BE2914();

  v88 = *MEMORY[0x277D6CF10];
  v85 = *(v7 + 104);
  v83 = v7 + 104;
  v85(v9);
  sub_219BE19F4();

  v89 = *(v7 + 8);
  v90 = v7 + 8;
  v89(v9, v6);
  v10 = *MEMORY[0x277D6CF70];
  v11 = *(v3 + 104);
  (v11)(v5, v10, v2);
  v76 = v11;
  v77 = v3 + 104;
  sub_219BE19A4();

  v12 = *(v3 + 8);
  v12(v5, v2);
  v75 = v12;
  v79 = v3 + 8;
  sub_219BE2044();
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  sub_219BE2914();

  v73 = v10;
  v80 = v2;
  (v11)(v5, v10, v2);
  v78 = v5;
  sub_219BE19A4();

  v12(v5, v2);
  v13 = v88;
  v14 = v84;
  v15 = v85;
  (v85)(v9, v88, v84);
  sub_219BE19F4();

  v16 = v89;
  v89(v9, v14);
  sub_219BE2044();
  sub_2186C709C(0, &unk_280EC30E0, &protocol descriptor for SubscriptionServiceType, 0);
  sub_219BE2914();

  (v15)(v9, v13, v14);
  sub_219BE19F4();

  v16(v9, v14);
  sub_219BE2044();
  sub_2186C709C(0, qword_280ED3940, &protocol descriptor for HistoryServiceType, 1);
  sub_219BE2914();

  (v15)(v9, v13, v14);
  sub_219BE19F4();

  v16(v9, v14);
  sub_219BE2044();
  sub_2186C709C(0, qword_280ED7DB8, &protocol descriptor for SavedServiceType, 1);
  sub_219BE2914();

  (v15)(v9, v13, v14);
  sub_219BE19F4();

  v16(v9, v14);
  sub_219BE2044();
  type metadata accessor for SharedItemService();
  sub_219BE2904();

  (v15)(v9, v13, v14);
  sub_219BE19F4();

  v16(v9, v14);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EE9E50, &protocol descriptor for HeadlineServiceType, 1);
  sub_219BE2914();

  (v15)(v9, v13, v14);
  sub_219BE19F4();

  v16(v9, v14);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EB7A98, &protocol descriptor for PromotedHeadlineServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EBC190, &protocol descriptor for ChannelHeadlineServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280ECD188, &protocol descriptor for ShortcutsServiceType, 1);
  sub_219BE2914();

  (v15)(v9, v13, v14);
  sub_219BE19F4();

  v16(v9, v14);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280ED02F0, &protocol descriptor for ShortcutServiceType, 1);
  sub_219BE2914();

  v17 = v13;
  v18 = v14;
  (v15)(v9, v17, v14);
  sub_219BE19F4();

  v16(v9, v14);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  sub_219BE2914();

  v82 = *MEMORY[0x277D6CF08];
  v15(v9);
  sub_219BE19F4();

  v16(v9, v14);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EC9550, &protocol descriptor for TagReorderServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE8978, MEMORY[0x277D30310], 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EC4290, &protocol descriptor for NotificationServiceType, 1);
  sub_219BE2914();

  v81 = *MEMORY[0x277D6CF00];
  v19 = v81;
  (v15)(v9, v81, v18);
  sub_219BE19F4();

  v20 = v18;
  v21 = v89;
  v89(v9, v20);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EA0D68, &protocol descriptor for ChannelSectionHeadlinesServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  type metadata accessor for TopStoriesFinishedLoadingObserver();
  sub_219BE2904();

  v22 = v19;
  v23 = v84;
  (v15)(v9, v22, v84);
  sub_219BE19F4();

  v21(v9, v23);
  sub_219BE2044();
  sub_2186C709C(0, qword_280E9BB10, &protocol descriptor for ChannelSectionsGroupPersonalizerType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EC8918, &protocol descriptor for ChannelHeroServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE6180, MEMORY[0x277D34B58], 1);
  sub_219BE2914();

  (v15)(v9, v88, v23);
  sub_219BE19F4();

  v21(v9, v23);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EBDB60, &protocol descriptor for NewspaperGroupServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186D6710(0, qword_280EA4AF0, &protocolRef_TSSiriSuggestionStatusProvider);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EBC100, &protocol descriptor for ChannelLocationServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EE14A0, &protocol descriptor for LocalNewsTodayFeedGroupServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE9E08, &protocol descriptor for PegasusQueryContextManagerType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE9E40, &protocol descriptor for SearchTagFactoryType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE9E10, &protocol descriptor for SearchArticleFactoryType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE9E30, &protocol descriptor for SearchRecipeFactoryType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE9F18, &protocol descriptor for SearchFetcherType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EA8210, &protocol descriptor for SearchEndpointConfigManagerType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE9F10, &protocol descriptor for SearchServiceType, 1);
  sub_219BE2914();

  (v15)(v9, v82, v23);
  sub_219BE19F4();

  v21(v9, v23);
  sub_219BE2044();
  sub_2186D6710(0, &qword_280E8E870, &protocolRef_FCANFHelper);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EE1810, &protocol descriptor for LocalNewsChannelServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186D6710(0, &unk_280E8DF50, &protocolRef_FCLocalChannelsProvider);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186D6710(0, qword_280EE2BD8, &protocolRef_TSWidgetLocalNewsChannelServiceType);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE6190, MEMORY[0x277D34870], 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EAFB10, &protocol descriptor for NotificationConfigurationType, 1);
  sub_219BE2914();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE9E20, &protocol descriptor for HeadlineModelFactoryType, 1);
  sub_219BE2914();

  type metadata accessor for HeadlineModelFactory();
  sub_219BE19C4();

  sub_219BE2044();
  sub_2186E6754(0);
  sub_219BE2904();

  (v15)(v9, v88, v23);
  sub_219BE19F4();

  v21(v9, v23);
  sub_219BE2044();
  sub_2186FEBD4(0);
  sub_219BE2904();

  sub_219BE2044();
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EA61A0, &protocol descriptor for MagazineConfigurationServiceType, 1);
  sub_219BE2914();

  v24 = v78;
  v68 = *MEMORY[0x277D6CF68];
  v25 = v80;
  v26 = v76;
  v76(v78);
  sub_219BE19A4();

  v27 = v75;
  v75(v24, v25);
  v26(v24, *MEMORY[0x277D6CF78], v25);
  sub_219BE19A4();

  v27(v24, v25);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EA3480, &protocol descriptor for MagazineCategoryConfigServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EB84C0, &protocol descriptor for MagazineCategoryServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EBB130, &protocol descriptor for MagazineSectionServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186F7814(0);
  sub_219BE2904();

  (v85)(v9, v81, v23);
  sub_219BE19F4();

  v74 = v9;
  v89(v9, v23);
  sub_219BE2044();
  type metadata accessor for MagazineFeedPoolService();
  sub_219BE2904();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EAEBF0, &protocol descriptor for SportsScoreSectionServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  type metadata accessor for SportsScoreSorter();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C709C(0, qword_280E97BA0, &protocol descriptor for SportsNavigationTitleStringBuilderType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EC99A0, &protocol descriptor for SportsSyncServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EA1BE0, &protocol descriptor for SportsManagementConfigManagerType, 1);
  sub_219BE2914();

  sub_219BE2044();
  type metadata accessor for SportsSectionService();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EA48C0, &protocol descriptor for SportsConfiguringDataServiceType, 0);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EAD3B0, &protocol descriptor for ChannelPickerConfigManagerType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EC0C00, &protocol descriptor for PuzzleArchiveServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186D6034(0);
  sub_219BE2904();

  sub_219BE2044();
  sub_219BE2904();

  if (qword_280EA25A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v91 = off_280EA25A8;

  sub_219BE2E84();

  v28 = v92;
  if (!v92)
  {
    v28 = MEMORY[0x277D84F90];
  }

  v72 = v28;
  v29 = *(v28 + 16);
  if (v29)
  {
    v86 = "puzzle-hub-feed-offline-db";
    v30 = (v72 + 40);
    do
    {
      v33 = *(v30 - 1);
      v34 = *v30;

      sub_219BE2E84();

      v36 = v92;
      if (v92)
      {
        v92 = v33;
        v93 = v34;
        MEMORY[0x28223BE20](v35);
        *&v67[-16] = &v92;
        v37 = sub_2186D128C(sub_2186D1338, &v67[-32], v36);

        if (v37)
        {
          v92 = 0;
          v93 = 0xE000000000000000;
          sub_219BF7314();

          v92 = v33;
          v93 = v34;
          MEMORY[0x21CECC330](0xD000000000000010, v86 | 0x8000000000000000);
          v36 = v92;
          v31 = v93;
          goto LABEL_9;
        }

        v36 = 0;
      }

      else
      {
      }

      v31 = 0;
LABEL_9:
      sub_219BE2044();
      v32 = swift_allocObject();
      *(v32 + 16) = v36;
      *(v32 + 24) = v31;

      sub_219BE2904();

      v30 += 2;
      --v29;
    }

    while (v29);
  }

  sub_219BE2044();
  sub_219BE2904();

  sub_219BE2044();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186F7A08(0);
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for TagFeedPoolService();
  sub_219BE2904();

  v38 = v78;
  v39 = v73;
  v40 = v80;
  v41 = v76;
  (v76)(v78, v73, v80);
  sub_219BE19A4();

  v42 = v75;
  v75(v38, v40);
  sub_219BE2044();
  type metadata accessor for TagFeedGroupEmitterFactory();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for TagFeedServiceContextFactory();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for TagFeedServiceConfigFetcher();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186F7B28(0);
  sub_219BE2904();

  v41(v38, v39, v40);
  sub_219BE19A4();

  v42(v38, v40);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8C58, MEMORY[0x277D30000], 1);
  sub_219BE2914();

  v43 = v74;
  v44 = v88;
  v45 = v84;
  v46 = v85;
  (v85)(v74, v88, v84);
  v47 = v46;
  sub_219BE19F4();

  v48 = v89;
  v89(v43, v45);
  sub_219BE2044();
  sub_2186DB8F4(0);
  sub_219BE2904();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EBFE30, &protocol descriptor for TagHighlightsServiceType, 1);
  sub_219BE2914();

  sub_219BE2054();
  sub_2186C709C(0, &unk_280EBCF88, &protocol descriptor for SportsHeadlinesSorterType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8B80, MEMORY[0x277D30100], 1);
  sub_219BE2914();

  v47(v43, v44, v45);
  sub_219BE19F4();

  v48(v43, v45);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EBE990, &protocol descriptor for FoodClusteringServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186E1EB4(0);
  sub_219BE2904();

  v49 = v43;
  v50 = v43;
  v51 = v85;
  (v85)(v50, v44, v45);
  sub_219BE19F4();

  v48(v49, v45);
  sub_219BE2044();
  sub_219BE2904();

  v51(v49, v44, v45);
  sub_219BE19F4();

  v48(v49, v45);
  sub_219BE2044();
  sub_2187367A8(0);
  sub_219BE2904();

  v51(v49, v81, v45);
  sub_219BE19F4();

  v48(v49, v45);
  sub_219BE2044();
  type metadata accessor for TodayFeedPoolService();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for TodayFeedGroupEmitterFactory();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for TodayFeedServiceContextFactory();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for TodayFeedServiceConfigFetcher(0);
  sub_219BE2904();

  v51(v49, v82, v45);
  sub_219BE19F4();

  v48(v49, v45);
  sub_219BE2044();
  sub_218712FE4(0);
  sub_219BE2904();

  v51(v49, v81, v45);
  sub_219BE19F4();

  v48(v49, v45);
  sub_219BE2044();
  sub_2186F7F18(0);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EC65C8, &protocol descriptor for TodayConfigManagerType, 1);
  sub_219BE2914();

  v51(v49, v82, v45);
  sub_219BE19F4();

  v48(v49, v45);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2044();
  sub_218713204(0);
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for SearchFeedPoolService();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for SearchFeedGroupEmitterFactory();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186F7FD0(0);
  sub_219BE2904();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2044();
  sub_2186FF588(0);
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for SharedWithYouFeedPoolService();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for SharedWithYouFeedGroupEmitterFactory();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for SharedWithYouFeedServiceContextFactory();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186FF61C(0);
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for SharedWithYouFeedServiceConfigFetcher();
  sub_219BE2904();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2044();
  sub_218736D08(0);
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for SavedFeedPoolService();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for SavedFeedGroupEmitterFactory();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for SavedFeedServiceContextFactory();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186FF728(0);
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for SavedFeedServiceConfigFetcher();
  sub_219BE2904();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2044();
  sub_218713BA8(0);
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for HistoryFeedPoolService();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for HistoryFeedGroupEmitterFactory();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for HistoryFeedServiceContextFactory();
  sub_219BE2904();

  sub_219BE2044();
  sub_218713C3C(0);
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for HistoryFeedServiceConfigFetcher();
  sub_219BE2904();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2044();
  sub_2186FFB04(0);
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for SearchMoreFeedPoolService();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for SearchMoreFeedGroupEmitterFactory();
  sub_219BE2904();

  sub_219BE2044();
  sub_218713E34(0);
  sub_219BE2904();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2044();
  sub_2186E6A1C(0);
  sub_219BE2904();

  v52 = v88;
  v53 = v84;
  v51(v49, v88, v84);
  sub_219BE19F4();

  v54 = v89;
  v89(v49, v53);
  sub_219BE2044();
  sub_2187001D8(0);
  sub_219BE2904();

  v51(v49, v81, v53);
  sub_219BE19F4();

  v54(v49, v53);
  sub_219BE2044();
  sub_21871417C(0);
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for AudioFeedPoolService();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for AudioFeedGroupEmitterFactory();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for AudioFeedServiceContextFactory();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for AudioFeedServiceConfigFetcher();
  sub_219BE2904();

  v51(v49, v82, v53);
  sub_219BE19F4();

  v54(v49, v53);
  sub_219BE2044();
  sub_2187002F8(0);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EBC480, &protocol descriptor for AudioFeedConfigManagerType, 1);
  sub_219BE2914();

  v51(v49, v52, v53);
  sub_219BE19F4();

  v54(v49, v53);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2044();
  sub_2187003E4(0);
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for AudioHistoryFeedPoolService();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for AudioHistoryFeedGroupEmitterFactory();
  sub_219BE2904();

  sub_219BE2044();
  sub_2187006BC(0);
  sub_219BE2904();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2044();
  sub_21872F750(0);
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for AudioPlaylistFeedPoolService();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for AudioPlaylistFeedGroupEmitterFactory();
  sub_219BE2904();

  sub_219BE2044();
  sub_2187144E0(0);
  sub_219BE2904();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2044();
  sub_2187012DC(0);
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for RecipeBoxFeedPoolService();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for RecipeBoxFeedGroupEmitterFactory();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for RecipeBoxFeedServiceContextFactory();
  sub_219BE2904();

  sub_219BE2044();
  sub_218701370(0);
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for RecipeBoxFeedServiceConfigFetcher();
  sub_219BE2904();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EB7A70, &protocol descriptor for PushNotificationServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EDA4F0, &protocol descriptor for FoodServiceType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280E9E1D8, &protocol descriptor for UserSegmentationDetailsServiceType, 1);
  sub_219BE2914();

  sub_219BE2054();
  sub_2186C709C(0, &unk_280EE61B0, MEMORY[0x277D34860], 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280ECE3A0, &protocol descriptor for MyMagazinesStoreType, 1);
  sub_219BE2914();

  v55 = v78;
  v56 = v80;
  v57 = v76;
  (v76)(v78, v68, v80);
  sub_219BE19A4();

  v58 = v75;
  v75(v55, v56);
  v57(v55, v73, v56);
  sub_219BE19A4();

  v58(v55, v56);
  v59 = v74;
  (v85)(v74, v88, v53);
  sub_219BE19F4();

  v89(v59, v53);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(&v92, v94);
  sub_219BE2314();
  v60 = *MEMORY[0x277D6CB30];
  v61 = v70;
  v62 = *(v70 + 104);
  v63 = v69;
  v64 = v71;
  v62(v69, v60, v71);
  sub_219BE2B64();
  v65 = *(v61 + 8);
  v65(v63, v64);
  __swift_destroy_boxed_opaque_existential_1(&v92);
  sub_219BE2064();
  v90 = v95;
  __swift_project_boxed_opaque_existential_1(&v92, v94);
  sub_2186C709C(0, &unk_280EE73A0, MEMORY[0x277D6CD90], 1);
  v62(v63, v60, v64);
  sub_219BE2B74();

  v65(v63, v64);
  return __swift_destroy_boxed_opaque_existential_1(&v92);
}

uint64_t sub_2186F646C()
{

  return swift_deallocObject();
}

uint64_t sub_2186F650C(uint64_t a1)
{
  result = type metadata accessor for FeedPaywallModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FeedPaywallType(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2186F65B8(uint64_t a1)
{
  sub_2186F997C(319, &qword_280EC5348, type metadata accessor for FeedRegularPaywallModel);
  if (v1 <= 0x3F)
  {
    sub_2186F997C(319, qword_280ECB0B8, type metadata accessor for FeedVideoPaywallModel);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2186F6684(uint64_t a1)
{
  if (!qword_280E8E1E0)
  {
    type metadata accessor for FCFeedPaywallSubtype(255);
    sub_219BE4034();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E1E0);
    }
  }
}

void sub_2186F66F4(uint64_t a1)
{
  sub_2186E5180(319, &qword_280E8DA70, sub_2186F8B0C);
  if (v1 <= 0x3F)
  {
    sub_2186DEFE0(319, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2186DEFE0(319, &unk_280E8F390, &type metadata for IssueModel, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_219BEF554();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for TrendingMagazineFeedGroup(uint64_t a1)
{
  result = qword_280EBCA50;
  if (!qword_280EBCA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186F687C(uint64_t a1)
{
  if (!qword_280E922F0)
  {
    sub_2186E0DF0();
    sub_2186E0E44();
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E922F0);
    }
  }
}

uint64_t type metadata accessor for MySportsTodayFeedGroup(uint64_t a1)
{
  result = qword_280EC7630;
  if (!qword_280EC7630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186F6930(uint64_t a1)
{
  if (!qword_280ED3228)
  {
    v2 = type metadata accessor for AudioFeedServiceContextFactory();
    v3 = type metadata accessor for AudioFeedServiceConfigFetcher();
    sub_2186DB874(255, &qword_280E90B70, sub_2186ED404, sub_2186F6CE0, MEMORY[0x277D33010]);
    v5 = v4;
    sub_2186E6A1C(255);
    v9[0] = v2;
    v9[1] = v3;
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = sub_2186D560C(qword_280EAD8A8, type metadata accessor for AudioFeedServiceContextFactory, &unk_219C3C980);
    v9[5] = sub_2186D560C(&unk_280EB1700, type metadata accessor for AudioFeedServiceConfigFetcher, &unk_219CA46E0);
    v9[6] = sub_2186FA7DC();
    v9[7] = sub_2186EE3D4();
    v7 = type metadata accessor for OfflineFeedBuilder(a1, v9);
    if (!v8)
    {
      atomic_store(v7, &qword_280ED3228);
    }
  }
}

uint64_t sub_2186F6AA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186F6AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186F6B30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186F6B78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186F6BC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186F6C08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186F6C50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186F6C98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2186F6D58()
{
  result = qword_280E91ED8;
  if (!qword_280E91ED8)
  {
    sub_2186DB874(255, &qword_280E91ED0, type metadata accessor for SharedWithYouFeedPoolService, sub_2186D5B50, MEMORY[0x277D31EB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E91ED8);
  }

  return result;
}

uint64_t type metadata accessor for SharedWithYouFeedContentConfig(uint64_t a1)
{
  result = qword_280EAB480;
  if (!qword_280EAB480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SharedWithYouFeedGroupConfig(uint64_t a1)
{
  result = qword_280EB2F68;
  if (!qword_280EB2F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186F6E8C(uint64_t a1)
{
  result = type metadata accessor for SharedWithYouFeedGroupKnobs(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2186F6F00(uint64_t a1)
{
  if (!qword_280E8F9A0)
  {
    type metadata accessor for MagazineFeedGapLocation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F9A0);
    }
  }
}

void sub_2186F6F6C(uint64_t a1)
{
  sub_2186E3B14(319);
  if (v1 <= 0x3F)
  {
    sub_2186F64EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2186F700C(uint64_t a1)
{
  if (!qword_280E90D40)
  {
    sub_219BF1094();
    v1 = MEMORY[0x277D330F8];
    sub_2186EB0F8(&unk_280E909A0, 255, MEMORY[0x277D330F8], MEMORY[0x277D33100]);
    sub_2186EB0F8(&qword_280E909B0, 255, v1, MEMORY[0x277D330E8]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90D40);
    }
  }
}

uint64_t sub_2186F7110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2186F7158(uint64_t a1)
{
  if (!qword_280E90D30)
  {
    sub_219BF1094();
    sub_2186FAF08();
    v1 = MEMORY[0x277D330F8];
    sub_2186CC14C(&unk_280E909A0, MEMORY[0x277D330F8], MEMORY[0x277D33100]);
    sub_2186CC14C(&qword_280E909B0, v1, MEMORY[0x277D330E8]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90D30);
    }
  }
}

void sub_2186F7240(uint64_t a1)
{
  if (!qword_280E90DD0)
  {
    sub_219BF07A4();
    sub_2186FAF08();
    v1 = MEMORY[0x277D32F68];
    sub_2186CC14C(&unk_280E90E90, MEMORY[0x277D32F68], MEMORY[0x277D32F70]);
    sub_2186CC14C(&qword_280E90EA0, v1, MEMORY[0x277D32F20]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90DD0);
    }
  }
}

void sub_2186F7328(uint64_t a1)
{
  if (!qword_280E90E10)
  {
    sub_219BEEAD4();
    sub_2186FAF08();
    v1 = MEMORY[0x277D32260];
    sub_2186CC14C(&qword_280E91968, MEMORY[0x277D32260], MEMORY[0x277D32268]);
    sub_2186CC14C(&unk_280E91970, v1, MEMORY[0x277D32258]);
    v2 = sub_219BF0854();
    if (!v3)
    {
      atomic_store(v2, &qword_280E90E10);
    }
  }
}

unint64_t sub_2186F7410()
{
  result = qword_280EBFF00;
  if (!qword_280EBFF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBFF00);
  }

  return result;
}

uint64_t type metadata accessor for AudioFeedSectionDescriptor(uint64_t a1)
{
  result = qword_280EBC448;
  if (!qword_280EBC448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186F7564(uint64_t a1)
{
  sub_2186EAB88(319);
  if (v1 <= 0x3F)
  {
    sub_2186EB018(319);
    if (v2 <= 0x3F)
    {
      sub_2186EAE28(319);
      if (v3 <= 0x3F)
      {
        sub_219BE5BA4();
        if (v4 <= 0x3F)
        {
          sub_2186F151C(319);
          if (v5 <= 0x3F)
          {
            sub_2186FB36C(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2186F7628(uint64_t a1)
{
  sub_2186FB308(319);
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

unint64_t sub_2186F76CC()
{
  result = qword_280ECA250;
  if (!qword_280ECA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA250);
  }

  return result;
}

unint64_t sub_2186F7720()
{
  result = qword_280ECFF50;
  if (!qword_280ECFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECFF50);
  }

  return result;
}

unint64_t sub_2186F7774()
{
  result = qword_280ECAEF0;
  if (!qword_280ECAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECAEF0);
  }

  return result;
}

uint64_t type metadata accessor for LegacyAudioDailyBriefingFeedGroupConfig(uint64_t a1)
{
  result = qword_280E97330;
  if (!qword_280E97330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186F7814(uint64_t a1)
{
  if (!qword_280E90BF0)
  {
    type metadata accessor for MagazineFeedServiceConfigFetcher();
    sub_2186ED33C(255, &qword_280E90B10, sub_2186E65A0, sub_2186E6720, MEMORY[0x277D33010]);
    sub_2186E6754(255);
    sub_2186F7934();
    sub_2186FA090();
    sub_2186D5500(&unk_280E90A60, sub_2186E6754, MEMORY[0x277D33048]);
    v1 = sub_219BF0C94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90BF0);
    }
  }
}

uint64_t sub_2186F79B0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_219BF78F4() & 1;
  }
}

void sub_2186F7A08(uint64_t a1)
{
  if (!qword_280E90C20)
  {
    type metadata accessor for TagFeedServiceConfigFetcher();
    sub_2186DB874(255, &qword_280E90B90, sub_2186DB8F4, sub_2186D6000, MEMORY[0x277D33010]);
    sub_2186D6034(255);
    sub_2186D560C(&qword_280EB6620, type metadata accessor for TagFeedServiceConfigFetcher, &unk_219C78540);
    sub_2186DC6E8();
    sub_2186DC784();
    v1 = sub_219BF0C94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90C20);
    }
  }
}

void sub_2186F7B28(uint64_t a1)
{
  if (!qword_280E926C0)
  {
    type metadata accessor for TagFeedServiceContext(255);
    type metadata accessor for TagFeedServiceConfig(255);
    sub_2186CC26C(&qword_280EC9730, type metadata accessor for TagFeedServiceContext, &unk_219C7A37C);
    sub_2186F7CA4();
    v1 = sub_219BED574();
    if (!v2)
    {
      atomic_store(v1, &qword_280E926C0);
    }
  }
}

uint64_t sub_2186F7BE4(uint64_t a1)
{
  result = sub_219BEE754();
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

uint64_t sub_2186F7CD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186F7D20(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2186F7D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186F7DB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186F7DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186F7E40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186F7E88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186F7ED0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2186F7F18(uint64_t a1)
{
  if (!qword_280E90B50)
  {
    sub_2186E1CDC(255);
    sub_2186DFB00(&qword_280E91CC0, sub_2186E1CDC, MEMORY[0x277D31FC8]);
    v1 = sub_219BF0D24();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90B50);
    }
  }
}

void sub_2186F7FD0(uint64_t a1)
{
  if (!qword_280E926A0)
  {
    type metadata accessor for SearchFeedServiceContext(255);
    type metadata accessor for SearchFeedServiceConfig(255);
    sub_2186D77C0(qword_280EC0650, type metadata accessor for SearchFeedServiceContext, &unk_219CC061C);
    sub_2186D77C0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
    v1 = sub_219BED574();
    if (!v2)
    {
      atomic_store(v1, &qword_280E926A0);
    }
  }
}

uint64_t type metadata accessor for SearchResultsGroup(uint64_t a1)
{
  result = qword_280ED2BA0;
  if (!qword_280ED2BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186F8128(uint64_t a1)
{
  if (!qword_280E8F9C0)
  {
    type metadata accessor for SearchFeedGapLocation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F9C0);
    }
  }
}

void sub_2186F81B4(uint64_t a1)
{
  type metadata accessor for SearchResults(319);
  if (v1 <= 0x3F)
  {
    sub_218ABE008(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2186F8228(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F8278(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F82C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F8318(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F8368(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F83B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F8408(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F8458(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F84A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F84F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F8548(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F8598(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F85E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F8638(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F8688(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F86D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F8728(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F8778(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F87C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186F8818(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for SearchFeedServiceConfig(uint64_t a1)
{
  result = qword_280EC3788;
  if (!qword_280EC3788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186F88B4(uint64_t a1)
{
  result = type metadata accessor for SearchFeedServiceContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SearchFeedContentConfig(319);
    if (v3 <= 0x3F)
    {
      result = sub_2186D6710(319, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration);
      if (v4 <= 0x3F)
      {
        result = sub_219BEEA84();
        if (v5 <= 0x3F)
        {
          result = sub_2186D6710(319, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2186F89B8(uint64_t a1)
{
  result = type metadata accessor for SearchFeedConfig(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SearchFeedKnobsConfig(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for SearchFeedConfig(uint64_t a1)
{
  result = qword_280ED7D78;
  if (!qword_280ED7D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186F8A88(uint64_t a1)
{
  sub_2186EC3A4(319);
  if (v1 <= 0x3F)
  {
    sub_219BED8D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}