uint64_t sub_2197F2AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateRangeTagFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197F2B50(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeTagFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2197F2BAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197F2A98();
    v7 = a3(a1, &type metadata for DateRangeTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2197F2C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2197F2C6C()
{
  result = qword_27CC1F9D0;
  if (!qword_27CC1F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F9D0);
  }

  return result;
}

unint64_t sub_2197F2CC4()
{
  result = qword_27CC1F9D8;
  if (!qword_27CC1F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F9D8);
  }

  return result;
}

unint64_t sub_2197F2D1C()
{
  result = qword_27CC1F9E0;
  if (!qword_27CC1F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F9E0);
  }

  return result;
}

uint64_t sub_2197F2D70@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for CuratedTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186EDE00(0, qword_280EC23A0, type metadata accessor for CuratedTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_curatedKnobs);
  sub_218A27A84(0);
  v10 = sub_219BEDCA4();
  if (*(v9 + 16))
  {
    v12 = sub_21870F700(v10, v11);
    v14 = v13;

    if (v14)
    {
      v15 = *(v9 + 56);
      v16 = type metadata accessor for CuratedTagFeedGroupKnobs(0);
      v17 = *(v16 - 8);
      sub_219802CE8(v15 + *(v17 + 72) * v12, v8, type metadata accessor for CuratedTagFeedGroupKnobs);
      v18 = *(v17 + 56);
      v18(v8, 0, 1, v16);
      sub_219802C80(v8, a1, type metadata accessor for CuratedTagFeedGroupKnobs);
      return (v18)(a1, 0, 1, v16);
    }
  }

  else
  {
  }

  v30 = a1;
  v20 = type metadata accessor for CuratedTagFeedGroupKnobs(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v22(v8, 1, 1, v20);
  sub_219BEDD14();
  v23 = *v5;
  v24 = v5[1];

  sub_219802EE4(v5, type metadata accessor for CuratedTagFeedGroupConfigData);
  if (*(v9 + 16))
  {
    v25 = sub_21870F700(v23, v24);
    v27 = v26;

    if (v27)
    {
      sub_219802CE8(*(v9 + 56) + *(v21 + 72) * v25, v30, type metadata accessor for CuratedTagFeedGroupKnobs);
      v28 = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v28 = 1;
LABEL_10:
  v22(v30, v28, 1, v20);
  result = (*(v21 + 48))(v8, 1, v20);
  if (result != 1)
  {
    return sub_219802C24(v8, qword_280EC23A0, type metadata accessor for CuratedTagFeedGroupKnobs);
  }

  return result;
}

uint64_t sub_2197F30F4(uint64_t a1, uint64_t *a2)
{
  v20[1] = a1;
  sub_2186EDE00(0, qword_280EC23A0, type metadata accessor for CuratedTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for CuratedTagFeedGroupKnobs(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = *(a2 + 24);
  v20[2] = *a2;
  v20[3] = v14;
  v20[4] = v15;
  v21 = v16;
  sub_219802E10(0, &qword_280E8CF60, MEMORY[0x277D844C8]);
  sub_21877CD38(&qword_280EC2408, type metadata accessor for CuratedTagFeedGroupKnobs, &unk_219C3042C);
  v17 = v22;
  sub_219BF7734();
  if (v17)
  {

    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_219802C24(v8, qword_280EC23A0, type metadata accessor for CuratedTagFeedGroupKnobs);
  }

  else
  {
    v19 = *(v10 + 56);
    v19(v8, 0, 1, v9);
    sub_219802C80(v8, v12, type metadata accessor for CuratedTagFeedGroupKnobs);
    sub_219802CE8(v12, v5, type metadata accessor for CuratedTagFeedGroupKnobs);
    v19(v5, 0, 1, v9);

    sub_2199D6A70(v5, v13, v14);
    return sub_219802EE4(v12, type metadata accessor for CuratedTagFeedGroupKnobs);
  }
}

uint64_t sub_2197F33E8(uint64_t a1, uint64_t *a2)
{
  v20[1] = a1;
  sub_2186EDE00(0, qword_280EA1A30, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for SportsOnboardingTagFeedGroupKnobs(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = *(a2 + 24);
  v20[2] = *a2;
  v20[3] = v14;
  v20[4] = v15;
  v21 = v16;
  sub_219802E10(0, &qword_280E8CF60, MEMORY[0x277D844C8]);
  sub_21877CD38(&qword_280EA1A78, type metadata accessor for SportsOnboardingTagFeedGroupKnobs, &unk_219C3DAB4);
  v17 = v22;
  sub_219BF7734();
  if (v17)
  {

    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_219802C24(v8, qword_280EA1A30, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
  }

  else
  {
    v19 = *(v10 + 56);
    v19(v8, 0, 1, v9);
    sub_219802C80(v8, v12, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
    sub_219802CE8(v12, v5, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
    v19(v5, 0, 1, v9);

    sub_2199D6C60(v5, v13, v14);
    return sub_219802EE4(v12, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
  }
}

double sub_2197F36DC(void *a1)
{
  v2 = v1;
  v92 = type metadata accessor for SportsOnboardingTagFeedGroupKnobs(0);
  v88 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v75 - v6;
  sub_219802D50(0, &qword_27CC1F9E8, &qword_280E8F8F0, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v7 - 8);
  v90 = (&v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v89 = (&v75 - v10);
  v11 = type metadata accessor for CuratedTagFeedGroupKnobs(0);
  v86 = *(v11 - 8);
  v87 = v11;
  MEMORY[0x28223BE20](v11);
  v85 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = &v75 - v14;
  sub_219802D50(0, &qword_27CC1F9F0, &qword_27CC1F9F8, type metadata accessor for CuratedTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v75 - v19;
  sub_219802E10(0, &qword_27CC1FA00, MEMORY[0x277D84538]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v75 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219802B2C();
  sub_219BF7B44();
  v94[0] = 0xD000000000000013;
  v94[1] = 0x8000000219CD8970;
  v95 = 0;
  v96 = 1;
  type metadata accessor for PromotedArticleListTagFeedGroupKnobs(0);
  sub_21877CD38(&qword_27CC1FA08, type metadata accessor for PromotedArticleListTagFeedGroupKnobs, &unk_219C3EAF8);
  v26 = v97;
  sub_219BF7834();
  if (v26)
  {
    (*(v23 + 8))(v25, v22);
  }

  else
  {
    v82 = v20;
    v83 = v17;
    v28 = v93;
    v97 = v23;
    strcpy(v94, "paywall");
    v94[1] = 0xE700000000000000;
    v95 = 0;
    v96 = 1;
    type metadata accessor for PaywallTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC20E50, type metadata accessor for PaywallTagFeedGroupKnobs, &unk_219C9815C);
    sub_219BF7834();
    strcpy(v94, "issueList");
    WORD1(v94[1]) = 0;
    HIDWORD(v94[1]) = -385875968;
    v95 = 0;
    v96 = 1;
    type metadata accessor for IssueListTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC0D128, type metadata accessor for IssueListTagFeedGroupKnobs, &unk_219C0EF9C);
    sub_219BF7834();
    strcpy(v94, "articleList");
    HIDWORD(v94[1]) = -352321536;
    v95 = 0;
    v96 = 1;
    type metadata accessor for ArticleListTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1A1A0, type metadata accessor for ArticleListTagFeedGroupKnobs, &unk_219CCA7F0);
    sub_219BF7834();
    strcpy(v94, "channelSection");
    HIBYTE(v94[1]) = -18;
    v95 = 0;
    v96 = 1;
    type metadata accessor for ChannelSectionTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC11C70, type metadata accessor for ChannelSectionTagFeedGroupKnobs, &unk_219CD2C60);
    sub_219BF7834();
    v94[0] = 0xD000000000000017;
    v94[1] = 0x8000000219CD89A0;
    v95 = 0;
    v96 = 1;
    type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC18178, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs, &unk_219CC977C);
    sub_219BF7834();
    strcpy(v94, "sportsScores");
    BYTE5(v94[1]) = 0;
    HIWORD(v94[1]) = -5120;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsScoresTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC13BD8, type metadata accessor for SportsScoresTagFeedGroupKnobs, &unk_219C79820);
    sub_219BF7834();
    v94[0] = 0xD000000000000015;
    v94[1] = 0x8000000219CD8A20;
    v95 = 0;
    v96 = 1;
    sub_219BF7834();
    strcpy(v94, "sportsLinks");
    HIDWORD(v94[1]) = -352321536;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsLinksTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1B5A8, type metadata accessor for SportsLinksTagFeedGroupKnobs, &unk_219C1CAA0);
    sub_219BF7834();
    v94[0] = 0x74537374726F7073;
    v94[1] = 0xEF73676E69646E61;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsStandingsTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1E680, type metadata accessor for SportsStandingsTagFeedGroupKnobs, &unk_219CD2FC4);
    sub_219BF7834();
    strcpy(v94, "sportsBracket");
    HIWORD(v94[1]) = -4864;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsBracketTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC17700, type metadata accessor for SportsBracketTagFeedGroupKnobs, &unk_219C6F470);
    v80 = v2;
    v81 = v22;
    v29 = v25;
    sub_219BF7834();
    v94[0] = 0x6F427374726F7073;
    v94[1] = 0xEF7365726F635378;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsBoxScoresTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1DC48, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs, &unk_219CAEC2C);
    sub_219BF7834();
    v94[0] = 0x76457374726F7073;
    v94[1] = 0xEF6F666E49746E65;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsEventInfoTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1FA10, type metadata accessor for SportsEventInfoTagFeedGroupKnobs, &unk_219CBEE9C);
    sub_219BF7834();
    v94[0] = 0xD000000000000013;
    v94[1] = 0x8000000219CD8AA0;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC10A08, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs, &unk_219C37530);
    sub_219BF7834();
    v94[0] = 0xD000000000000010;
    v94[1] = 0x8000000219CD8AE0;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1A2C8, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs, &unk_219C220DC);
    sub_219BF7834();
    v94[0] = 0xD000000000000013;
    v94[1] = 0x8000000219CD8B00;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsEventArticlesTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC0D600, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs, &unk_219C912D8);
    sub_219BF7834();
    strcpy(v94, "mySportsTopic");
    HIWORD(v94[1]) = -4864;
    v95 = 0;
    v96 = 1;
    type metadata accessor for MySportsTopicTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1FA18, type metadata accessor for MySportsTopicTagFeedGroupKnobs, &unk_219C5E980);
    sub_219BF7834();
    strcpy(v94, "sportsRecord");
    BYTE5(v94[1]) = 0;
    HIWORD(v94[1]) = -5120;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsRecordTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1FA20, type metadata accessor for SportsRecordTagFeedGroupKnobs, "9d_hX");
    sub_219BF7834();
    v94[0] = 0xD000000000000010;
    v94[1] = 0x8000000219CD89D0;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsNavigationTagFeedGroupKnobs(0);
    sub_21877CD38(&unk_27CC16140, type metadata accessor for SportsNavigationTagFeedGroupKnobs, &unk_219C9DC04);
    sub_219BF7834();
    strcpy(v94, "sportsSchedule");
    HIBYTE(v94[1]) = -18;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsScheduleTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC0DA68, type metadata accessor for SportsScheduleTagFeedGroupKnobs, &unk_219C3B420);
    sub_219BF7834();
    v94[0] = 0xD000000000000010;
    v94[1] = 0x8000000219CD89F0;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsTopStoriesTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1B6A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs, &unk_219CAEDF4);
    sub_219BF7834();
    v94[0] = 0x61467374726F7073;
    v94[1] = 0xEF73657469726F76;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsFavoritesTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1AF50, type metadata accessor for SportsFavoritesTagFeedGroupKnobs, &unk_219CCE474);
    sub_219BF7834();
    strcpy(v94, "weather");
    v94[1] = 0xE700000000000000;
    v95 = 0;
    v96 = 1;
    type metadata accessor for WeatherTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC0D6E8, type metadata accessor for WeatherTagFeedGroupKnobs, &unk_219CA0AD4);
    sub_219BF7834();
    strcpy(v94, "highlights");
    BYTE3(v94[1]) = 0;
    HIDWORD(v94[1]) = -369098752;
    v95 = 0;
    v96 = 1;
    type metadata accessor for HighlightsTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC23380, type metadata accessor for HighlightsTagFeedGroupKnobs, &unk_219C22C54);
    sub_219BF7834();
    v94[0] = 0x756F59726F66;
    v94[1] = 0xE600000000000000;
    v95 = 0;
    v96 = 1;
    type metadata accessor for ForYouTagFeedGroupKnobs(0);
    sub_21877CD38(&unk_27CC0CDC0, type metadata accessor for ForYouTagFeedGroupKnobs, &unk_219C610E0);
    sub_219BF7834();
    strcpy(v94, "recentStories");
    HIWORD(v94[1]) = -4864;
    v95 = 0;
    v96 = 1;
    type metadata accessor for RecentStoriesTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC18CB0, type metadata accessor for RecentStoriesTagFeedGroupKnobs, &unk_219C3E008);
    sub_219BF7834();
    strcpy(v94, "dateRange");
    WORD1(v94[1]) = 0;
    HIDWORD(v94[1]) = -385875968;
    v95 = 0;
    v96 = 1;
    type metadata accessor for DateRangeTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1C2A8, type metadata accessor for DateRangeTagFeedGroupKnobs, &unk_219C5EFB4);
    sub_219BF7834();
    v94[0] = 0xD000000000000013;
    v94[1] = 0x8000000219CD8C90;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsMastheadTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC171F8, type metadata accessor for SportsMastheadTagFeedGroupKnobs, &unk_219CCE778);
    sub_219BF7834();
    v94[0] = 0xD000000000000010;
    v94[1] = 0x8000000219CD8B30;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SportsEventTopicTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC155C0, type metadata accessor for SportsEventTopicTagFeedGroupKnobs, &unk_219C7146C);
    sub_219BF7834();
    strcpy(v94, "puzzleList");
    BYTE3(v94[1]) = 0;
    HIDWORD(v94[1]) = -369098752;
    v95 = 0;
    v96 = 1;
    type metadata accessor for PuzzleListTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC14688, type metadata accessor for PuzzleListTagFeedGroupKnobs, &unk_219C9F734);
    sub_219BF7834();
    strcpy(v94, "puzzleArchive");
    HIWORD(v94[1]) = -4864;
    v95 = 0;
    v96 = 1;
    type metadata accessor for PuzzleArchiveTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1AF18, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs, &unk_219CBFE58);
    sub_219BF7834();
    v94[0] = 0xD000000000000015;
    v94[1] = 0x8000000219CD8B60;
    v95 = 0;
    v96 = 1;
    type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1FA28, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs, &unk_219C98910);
    sub_219BF7834();
    strcpy(v94, "puzzleFeatured");
    HIBYTE(v94[1]) = -18;
    v95 = 0;
    v96 = 1;
    type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1CC18, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs, &unk_219CABD88);
    sub_219BF7834();
    v94[0] = 0xD000000000000011;
    v94[1] = 0x8000000219CD8B90;
    v95 = 0;
    v96 = 1;
    type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1FA30, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs, &unk_219C37ABC);
    sub_219BF7834();
    v94[0] = 0xD000000000000010;
    v94[1] = 0x8000000219CD8BB0;
    v95 = 0;
    v96 = 1;
    type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC112B8, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs, &unk_219CAF7DC);
    sub_219BF7834();
    strcpy(v94, "affinity");
    BYTE1(v94[1]) = 0;
    WORD1(v94[1]) = 0;
    HIDWORD(v94[1]) = -402653184;
    v95 = 0;
    v96 = 1;
    type metadata accessor for AffinityTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC0DFD0, type metadata accessor for AffinityTagFeedGroupKnobs, &unk_219C25114);
    sub_219BF7834();
    v94[0] = 0x65726F736E6F7073;
    v94[1] = 0xEF72656E6E614264;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SponsoredBannerTagFeedGroupKnobs(0);
    sub_21877CD38(&unk_27CC13098, type metadata accessor for SponsoredBannerTagFeedGroupKnobs, &unk_219C8C8B4);
    sub_219BF7834();
    strcpy(v94, "channelRecipes");
    HIBYTE(v94[1]) = -18;
    v95 = 0;
    v96 = 1;
    type metadata accessor for ChannelRecipesTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1BDC0, type metadata accessor for ChannelRecipesTagFeedGroupKnobs, &unk_219C89E98);
    sub_219BF7834();
    strcpy(v94, "forYouRecipes");
    HIWORD(v94[1]) = -4864;
    v95 = 0;
    v96 = 1;
    type metadata accessor for ForYouRecipesTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1B960, type metadata accessor for ForYouRecipesTagFeedGroupKnobs, &unk_219C89B28);
    sub_219BF7834();
    strcpy(v94, "latestRecipes");
    HIWORD(v94[1]) = -4864;
    v95 = 0;
    v96 = 1;
    type metadata accessor for LatestRecipesTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC1A378, type metadata accessor for LatestRecipesTagFeedGroupKnobs, &unk_219C7D608);
    sub_219BF7834();
    v94[0] = 0xD000000000000015;
    v94[1] = 0x8000000219CD8A60;
    v95 = 0;
    v96 = 1;
    type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC12C48, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs, &unk_219C41140);
    sub_219BF7834();
    strcpy(v94, "savedRecipes");
    BYTE5(v94[1]) = 0;
    HIWORD(v94[1]) = -5120;
    v95 = 0;
    v96 = 1;
    type metadata accessor for SavedRecipesTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC14CB0, type metadata accessor for SavedRecipesTagFeedGroupKnobs, &unk_219C52798);
    sub_219BF7834();
    v94[0] = 0x676E69646E657274;
    v94[1] = 0xEF73657069636552;
    v95 = 0;
    v96 = 1;
    type metadata accessor for TrendingRecipesTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC10240, type metadata accessor for TrendingRecipesTagFeedGroupKnobs, &unk_219C2752C);
    sub_219BF7834();
    strcpy(v94, "topicRecipes");
    BYTE5(v94[1]) = 0;
    HIWORD(v94[1]) = -5120;
    v95 = 0;
    v96 = 1;
    type metadata accessor for TopicRecipesTagFeedGroupKnobs(0);
    sub_21877CD38(&qword_27CC19430, type metadata accessor for TopicRecipesTagFeedGroupKnobs, &unk_219C319E8);
    sub_219BF7834();
    v79 = 0;
    v30 = *(v80 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_curatedKnobs);
    v31 = *(v30 + 64);
    v75 = v30 + 64;
    v32 = 1 << *(v30 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & v31;
    v77 = (v32 + 63) >> 6;
    v78 = v30;

    v35 = 0;
    if (v34)
    {
      while (1)
      {
        v36 = v35;
LABEL_14:
        v38 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v39 = v38 | (v36 << 6);
        v40 = (*(v78 + 48) + 16 * v39);
        v42 = *v40;
        v41 = v40[1];
        v43 = v84;
        sub_219802CE8(*(v78 + 56) + *(v86 + 72) * v39, v84, type metadata accessor for CuratedTagFeedGroupKnobs);
        sub_219802DA8(0, &qword_27CC1F9F8, type metadata accessor for CuratedTagFeedGroupKnobs);
        v45 = v44;
        v46 = *(v44 + 48);
        v47 = v83;
        *v83 = v42;
        v47[1] = v41;
        sub_219802C80(v43, v47 + v46, type metadata accessor for CuratedTagFeedGroupKnobs);
        (*(*(v45 - 8) + 56))(v47, 0, 1, v45);

        v76 = v36;
LABEL_16:
        v49 = v82;
        sub_219802E74(v83, v82, &qword_27CC1F9F0, &qword_27CC1F9F8, type metadata accessor for CuratedTagFeedGroupKnobs);
        sub_219802DA8(0, &qword_27CC1F9F8, type metadata accessor for CuratedTagFeedGroupKnobs);
        if ((*(*(v45 - 8) + 48))(v49, 1, v45) == 1)
        {
          break;
        }

        v51 = *v82;
        v50 = v82[1];
        sub_219802C80(v82 + *(v45 + 48), v85, type metadata accessor for CuratedTagFeedGroupKnobs);
        v94[0] = v51;
        v94[1] = v50;
        v95 = 0;
        v96 = 1;
        sub_21877CD38(&qword_27CC11D20, type metadata accessor for CuratedTagFeedGroupKnobs, &unk_219C30404);
        v52 = v79;
        sub_219BF7834();
        v79 = v52;
        if (v52)
        {
          sub_219802EE4(v85, type metadata accessor for CuratedTagFeedGroupKnobs);

          (*(v97 + 8))(v29, v81);
LABEL_42:

          return result;
        }

        sub_219802EE4(v85, type metadata accessor for CuratedTagFeedGroupKnobs);

        v35 = v76;
        if (!v34)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      if (v77 <= v35 + 1)
      {
        v37 = v35 + 1;
      }

      else
      {
        v37 = v77;
      }

      v76 = v37 - 1;
      while (1)
      {
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v36 >= v77)
        {
          sub_219802DA8(0, &qword_27CC1F9F8, type metadata accessor for CuratedTagFeedGroupKnobs);
          v45 = v48;
          (*(*(v48 - 8) + 56))(v83, 1, 1, v48);
          v34 = 0;
          goto LABEL_16;
        }

        ++v35;
        v34 = *(v75 + 8 * v36);
        if (v34)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v53 = *(v80 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsOnboardingKnobs);
    v54 = *(v53 + 64);
    v84 = v53 + 64;
    v55 = 1 << *(v53 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & v54;
    v86 = (v55 + 63) >> 6;
    v87 = v53;

    v58 = 0;
    if (v57)
    {
      while (1)
      {
        v59 = v58;
LABEL_32:
        v61 = __clz(__rbit64(v57));
        v57 &= v57 - 1;
        v62 = v61 | (v59 << 6);
        v63 = (*(v87 + 48) + 16 * v62);
        v64 = *v63;
        v65 = v63[1];
        sub_219802CE8(*(v87 + 56) + *(v88 + 72) * v62, v28, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
        sub_219802DA8(0, &qword_280E8F8F0, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
        v67 = v66;
        v68 = *(v66 + 48);
        v69 = v90;
        *v90 = v64;
        v69[1] = v65;
        sub_219802C80(v28, v69 + v68, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
        (*(*(v67 - 8) + 56))(v69, 0, 1, v67);

        v85 = v59;
LABEL_34:
        v71 = v89;
        sub_219802E74(v90, v89, &qword_27CC1F9E8, &qword_280E8F8F0, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
        sub_219802DA8(0, &qword_280E8F8F0, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
        if ((*(*(v67 - 8) + 48))(v71, 1, v67) == 1)
        {
          break;
        }

        v72 = *v89;
        v73 = v89[1];
        sub_219802C80(v89 + *(v67 + 48), v91, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
        v94[0] = v72;
        v94[1] = v73;
        v95 = 0;
        v96 = 1;
        sub_21877CD38(&unk_27CC1A690, type metadata accessor for SportsOnboardingTagFeedGroupKnobs, &unk_219C3DA8C);
        v74 = v79;
        sub_219BF7834();
        v79 = v74;
        if (v74)
        {
          sub_219802EE4(v91, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);

          (*(v97 + 8))(v29, v81);
          goto LABEL_42;
        }

        sub_219802EE4(v91, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);

        v58 = v85;
        if (!v57)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      if (v86 <= v58 + 1)
      {
        v60 = v58 + 1;
      }

      else
      {
        v60 = v86;
      }

      v85 = v60 - 1;
      while (1)
      {
        v59 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if (v59 >= v86)
        {
          sub_219802DA8(0, &qword_280E8F8F0, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
          v67 = v70;
          (*(*(v70 - 8) + 56))(v90, 1, 1, v70);
          v57 = 0;
          goto LABEL_34;
        }

        ++v58;
        v57 = *(v84 + 8 * v59);
        if (v57)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
    }

    (*(v97 + 8))(v29, v81);
  }

  return result;
}

uint64_t sub_2197F5C30()
{
  v0 = sub_2194B4C30(&unk_282A29CC8);
  result = swift_arrayDestroy();
  qword_280ED4D88 = v0;
  return result;
}

uint64_t sub_2197F5C7C(uint64_t a1)
{
  v2 = sub_219802B2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197F5CB8(uint64_t a1)
{
  v2 = sub_219802B2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197F5CF4(__n128 a1)
{
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_promotedArticleListKnobs, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_paywallKnobs, type metadata accessor for PaywallTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_issueListKnobs, type metadata accessor for IssueListTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_articleListKnobs, type metadata accessor for ArticleListTagFeedGroupKnobs);

  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelSectionGroupKnobs, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelSectionDirectoryGroupKnobs, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_mySportsTopicKnobs, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScoresKnobs, type metadata accessor for SportsScoresTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScoresCondensedKnobs, type metadata accessor for SportsScoresTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsStandingsKnobs, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsBracketKnobs, type metadata accessor for SportsBracketTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsBoxScoresKnobs, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventInfoKnobs, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsInjuryReportsKnobs, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsKeyPlayersKnobs, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventArticlesKnobs, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsRecordKnobs, type metadata accessor for SportsRecordTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsNavigationKnobs, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScheduleKnobs, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsLinksKnobs, type metadata accessor for SportsLinksTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsTopStoriesKnobs, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsFavoritesKnobs, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_weatherKnobs, type metadata accessor for WeatherTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_highlightsKnobs, type metadata accessor for HighlightsTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_forYouKnobs, type metadata accessor for ForYouTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_recentStoriesKnobs, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_dateRangeKnobs, type metadata accessor for DateRangeTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsMastheadKnobs, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventTopicKnobs, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);

  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleListKnobs, type metadata accessor for PuzzleListTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleArchiveKnobs, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleContinuePlayingKnobs, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleFeaturedKnobs, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleFullArchiveKnobs, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleScoreboardKnobs, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_affinityKnobs, type metadata accessor for AffinityTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sponsoredSuperfeedKnobs, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelRecipesKnobs, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_forYouRecipesKnobs, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_latestRecipesKnobs, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_recentlyViewedRecipesKnobs, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_savedRecipesKnobs, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_trendingRecipesKnobs, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
  sub_219802EE4(v1 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_topicRecipesKnobs, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
  return v1;
}

uint64_t sub_2197F6358(__n128 a1)
{
  sub_2197F5CF4(a1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280ED4D38;
  if (!qword_280ED4D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2197F6404(uint64_t a1)
{
  type metadata accessor for PromotedArticleListTagFeedGroupKnobs(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PaywallTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2189AD5C8(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ArticleListTagFeedGroupKnobs(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ChannelSectionTagFeedGroupKnobs(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for MySportsTopicTagFeedGroupKnobs(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for SportsScoresTagFeedGroupKnobs(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for SportsStandingsTagFeedGroupKnobs(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for SportsBracketTagFeedGroupKnobs(319);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for SportsBoxScoresTagFeedGroupKnobs(319);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for SportsEventInfoTagFeedGroupKnobs(319);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs(319);
                          if (v13 <= 0x3F)
                          {
                            type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs(319);
                            if (v14 <= 0x3F)
                            {
                              type metadata accessor for SportsEventArticlesTagFeedGroupKnobs(319);
                              if (v15 <= 0x3F)
                              {
                                type metadata accessor for SportsScheduleTagFeedGroupKnobs(319);
                                if (v16 <= 0x3F)
                                {
                                  type metadata accessor for SportsLinksTagFeedGroupKnobs(319);
                                  if (v17 <= 0x3F)
                                  {
                                    type metadata accessor for SportsTopStoriesTagFeedGroupKnobs(319);
                                    if (v18 <= 0x3F)
                                    {
                                      type metadata accessor for SportsFavoritesTagFeedGroupKnobs(319);
                                      if (v19 <= 0x3F)
                                      {
                                        type metadata accessor for HighlightsTagFeedGroupKnobs(319);
                                        if (v20 <= 0x3F)
                                        {
                                          type metadata accessor for ForYouTagFeedGroupKnobs(319);
                                          if (v21 <= 0x3F)
                                          {
                                            type metadata accessor for RecentStoriesTagFeedGroupKnobs(319);
                                            if (v22 <= 0x3F)
                                            {
                                              type metadata accessor for DateRangeTagFeedGroupKnobs(319);
                                              if (v23 <= 0x3F)
                                              {
                                                type metadata accessor for SportsEventTopicTagFeedGroupKnobs(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  type metadata accessor for PuzzleListTagFeedGroupKnobs(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    type metadata accessor for PuzzleArchiveTagFeedGroupKnobs(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            type metadata accessor for AffinityTagFeedGroupKnobs(319);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              type metadata accessor for ChannelRecipesTagFeedGroupKnobs(319);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                type metadata accessor for ForYouRecipesTagFeedGroupKnobs(319);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  type metadata accessor for LatestRecipesTagFeedGroupKnobs(319);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs(319);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      type metadata accessor for SavedRecipesTagFeedGroupKnobs(319);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        type metadata accessor for TrendingRecipesTagFeedGroupKnobs(319);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          type metadata accessor for TopicRecipesTagFeedGroupKnobs(319);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            swift_updateClassMetadata2();
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

void sub_2197F6D1C(uint64_t *a1@<X8>, void *a2@<X0>)
{
  sub_2197F6D6C(a2);
  if (!v2)
  {
    *a1 = v4;
  }
}

void sub_2197F6D6C(void *a1)
{
  v987 = type metadata accessor for TopicRecipesTagFeedGroupKnobs(0);
  v989 = *(v987 - 8);
  MEMORY[0x28223BE20](v987);
  v876 = &v786 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v979 = type metadata accessor for TrendingRecipesTagFeedGroupKnobs(0);
  v919 = *(v979 - 8);
  MEMORY[0x28223BE20](v979);
  v875 = &v786 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v978 = type metadata accessor for SavedRecipesTagFeedGroupKnobs(0);
  v918 = *(v978 - 8);
  MEMORY[0x28223BE20](v978);
  v874 = &v786 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v977 = type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs(0);
  v941 = *(v977 - 8);
  MEMORY[0x28223BE20](v977);
  v873 = &v786 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v976 = type metadata accessor for LatestRecipesTagFeedGroupKnobs(0);
  v917 = *(v976 - 8);
  MEMORY[0x28223BE20](v976);
  v871 = &v786 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v975 = type metadata accessor for ForYouRecipesTagFeedGroupKnobs(0);
  v916 = *(v975 - 8);
  MEMORY[0x28223BE20](v975);
  v870 = &v786 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v974 = type metadata accessor for ChannelRecipesTagFeedGroupKnobs(0);
  v915 = *(v974 - 8);
  MEMORY[0x28223BE20](v974);
  v869 = &v786 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v973 = type metadata accessor for SponsoredBannerTagFeedGroupKnobs(0);
  v914 = *(v973 - 8);
  MEMORY[0x28223BE20](v973);
  v868 = &v786 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v972 = type metadata accessor for AffinityTagFeedGroupKnobs(0);
  v913 = *(v972 - 8);
  MEMORY[0x28223BE20](v972);
  v867 = &v786 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v971 = type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs(0);
  v912 = *(v971 - 8);
  MEMORY[0x28223BE20](v971);
  v866 = &v786 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v970 = type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs(0);
  v940 = *(v970 - 8);
  MEMORY[0x28223BE20](v970);
  v865 = &v786 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v968 = type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs(0);
  v939 = *(v968 - 8);
  MEMORY[0x28223BE20](v968);
  v864 = &v786 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v967 = type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs(0);
  v966 = *(v967 - 8);
  MEMORY[0x28223BE20](v967);
  v863 = &v786 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v965 = type metadata accessor for PuzzleArchiveTagFeedGroupKnobs(0);
  v938 = *(v965 - 8);
  MEMORY[0x28223BE20](v965);
  v862 = &v786 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v964 = type metadata accessor for PuzzleListTagFeedGroupKnobs(0);
  v937 = *(v964 - 8);
  MEMORY[0x28223BE20](v964);
  v861 = &v786 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v963 = type metadata accessor for SportsEventTopicTagFeedGroupKnobs(0);
  v936 = *(v963 - 8);
  MEMORY[0x28223BE20](v963);
  v859 = &v786 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v962 = type metadata accessor for SportsMastheadTagFeedGroupKnobs(0);
  v935 = *(v962 - 8);
  MEMORY[0x28223BE20](v962);
  v857 = &v786 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v961 = type metadata accessor for DateRangeTagFeedGroupKnobs(0);
  v911 = *(v961 - 8);
  MEMORY[0x28223BE20](v961);
  v889 = &v786 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v960 = type metadata accessor for RecentStoriesTagFeedGroupKnobs(0);
  v910 = *(v960 - 8);
  MEMORY[0x28223BE20](v960);
  v855 = &v786 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDE00(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v21 - 8);
  v806 = &v786 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v982 = &v786 - v24;
  v959 = type metadata accessor for ForYouTagFeedGroupKnobs(0);
  v934 = *(v959 - 8);
  MEMORY[0x28223BE20](v959);
  v853 = &v786 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v958 = type metadata accessor for HighlightsTagFeedGroupKnobs(0);
  v909 = *(v958 - 8);
  MEMORY[0x28223BE20](v958);
  v851 = &v786 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v957 = type metadata accessor for WeatherTagFeedGroupKnobs(0);
  v933 = *(v957 - 8);
  MEMORY[0x28223BE20](v957);
  v850 = &v786 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v956 = type metadata accessor for SportsFavoritesTagFeedGroupKnobs(0);
  v908 = *(v956 - 8);
  MEMORY[0x28223BE20](v956);
  v848 = &v786 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v955 = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs(0);
  v932 = *(v955 - 8);
  MEMORY[0x28223BE20](v955);
  v846 = &v786 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v954 = type metadata accessor for SportsScheduleTagFeedGroupKnobs(0);
  v931 = *(v954 - 8);
  MEMORY[0x28223BE20](v954);
  v844 = &v786 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v953 = type metadata accessor for SportsNavigationTagFeedGroupKnobs(0);
  v930 = *(v953 - 8);
  MEMORY[0x28223BE20](v953);
  v843 = &v786 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v952 = type metadata accessor for SportsRecordTagFeedGroupKnobs(0);
  v929 = *(v952 - 8);
  MEMORY[0x28223BE20](v952);
  v841 = &v786 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v951 = type metadata accessor for SportsEventArticlesTagFeedGroupKnobs(0);
  v928 = *(v951 - 8);
  MEMORY[0x28223BE20](v951);
  v840 = &v786 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v950 = type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs(0);
  v927 = *(v950 - 8);
  MEMORY[0x28223BE20](v950);
  v838 = &v786 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v949 = type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs(0);
  v907 = *(v949 - 8);
  MEMORY[0x28223BE20](v949);
  v837 = &v786 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v948 = type metadata accessor for SportsEventInfoTagFeedGroupKnobs(0);
  v906 = *(v948 - 8);
  MEMORY[0x28223BE20](v948);
  v836 = &v786 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1046 = type metadata accessor for SportsBoxScoresTagFeedGroupKnobs(0);
  v926 = *(v1046 - 1);
  MEMORY[0x28223BE20](v1046);
  v834 = &v786 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v947 = type metadata accessor for SportsBracketTagFeedGroupKnobs(0);
  v905 = *(v947 - 8);
  MEMORY[0x28223BE20](v947);
  v833 = &v786 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v946 = type metadata accessor for SportsStandingsTagFeedGroupKnobs(0);
  v925 = *(v946 - 8);
  MEMORY[0x28223BE20](v946);
  v832 = &v786 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDE00(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  MEMORY[0x28223BE20](v40 - 8);
  v942 = &v786 - v41;
  v945 = type metadata accessor for MySportsTopicTagFeedGroupKnobs(0);
  v944 = *(v945 - 8);
  MEMORY[0x28223BE20](v945);
  v830 = &v786 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v991 = type metadata accessor for SportsLinksTagFeedGroupKnobs(0);
  v988 = *(v991 - 8);
  MEMORY[0x28223BE20](v991);
  v828 = &v786 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SportsScoresTagFeedGroupKnobs(0);
  v1034 = *(v44 - 8);
  v1035 = v44;
  MEMORY[0x28223BE20](v44);
  v897 = &v786 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v1032 = &v786 - v47;
  MEMORY[0x28223BE20](v48);
  v896 = &v786 - v49;
  MEMORY[0x28223BE20](v50);
  v822 = &v786 - v51;
  v986 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs(0);
  v924 = *(v986 - 8);
  MEMORY[0x28223BE20](v986);
  v802 = &v786 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v895 = &v786 - v54;
  v985 = type metadata accessor for ChannelSectionTagFeedGroupKnobs(0);
  v923 = *(v985 - 8);
  MEMORY[0x28223BE20](v985);
  v799 = &v786 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v815 = &v786 - v57;
  v984 = type metadata accessor for ArticleListTagFeedGroupKnobs(0);
  v922 = *(v984 - 8);
  MEMORY[0x28223BE20](v984);
  v796 = &v786 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v813 = &v786 - v60;
  v943 = type metadata accessor for IssueListTagFeedGroupKnobs(0);
  v921 = *(v943 - 8);
  MEMORY[0x28223BE20](v943);
  v811 = &v786 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1042 = type metadata accessor for PaywallTagFeedGroupKnobs(0);
  v980 = *(v1042 - 1);
  MEMORY[0x28223BE20](v1042);
  v810 = &v786 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v1037 = *(v63 - 8);
  v1038 = v63;
  MEMORY[0x28223BE20](v63);
  v805 = &v786 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v803 = &v786 - v66;
  MEMORY[0x28223BE20](v67);
  v800 = &v786 - v68;
  MEMORY[0x28223BE20](v69);
  v798 = &v786 - v70;
  MEMORY[0x28223BE20](v71);
  v795 = &v786 - v72;
  MEMORY[0x28223BE20](v73);
  v793 = &v786 - v74;
  sub_2186EDE00(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v75 - 8);
  v804 = &v786 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v825 = &v786 - v78;
  MEMORY[0x28223BE20](v79);
  v801 = &v786 - v80;
  MEMORY[0x28223BE20](v81);
  v818 = &v786 - v82;
  MEMORY[0x28223BE20](v83);
  v879 = &v786 - v84;
  MEMORY[0x28223BE20](v85);
  v981 = &v786 - v86;
  MEMORY[0x28223BE20](v87);
  v797 = &v786 - v88;
  MEMORY[0x28223BE20](v89);
  v814 = &v786 - v90;
  MEMORY[0x28223BE20](v91);
  v794 = &v786 - v92;
  MEMORY[0x28223BE20](v93);
  v812 = &v786 - v94;
  MEMORY[0x28223BE20](v95);
  v1036 = &v786 - v96;
  MEMORY[0x28223BE20](v97);
  v1039 = &v786 - v98;
  MEMORY[0x28223BE20](v99);
  v808 = &v786 - v100;
  v983 = type metadata accessor for PromotedArticleListTagFeedGroupKnobs(0);
  v920 = *(v983 - 8);
  MEMORY[0x28223BE20](v983);
  v792 = &v786 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v102);
  v809 = &v786 - v103;
  sub_2186EDE00(0, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v104 - 8);
  v872 = &v786 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v106);
  v969 = &v786 - v107;
  sub_2186EDE00(0, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v108 - 8);
  v891 = &v786 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v110);
  v1031 = &v786 - v111;
  sub_2186EDE00(0, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v112 - 8);
  v890 = &v786 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v114);
  v1030 = &v786 - v115;
  sub_2186EDE00(0, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v116 - 8);
  v860 = &v786 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v118);
  v1029 = &v786 - v119;
  sub_2186EDE00(0, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v120 - 8);
  v858 = &v786 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v122);
  v1028 = &v786 - v123;
  sub_2186EDE00(0, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v124 - 8);
  v856 = &v786 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v126);
  v1027 = &v786 - v127;
  sub_2186EDE00(0, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v128 - 8);
  v888 = &v786 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v130);
  v1026 = &v786 - v131;
  sub_2186EDE00(0, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v132 - 8);
  v854 = &v786 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v134);
  v1025 = &v786 - v135;
  sub_2186EDE00(0, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v136 - 8);
  v852 = &v786 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v138);
  v1024 = &v786 - v139;
  sub_2186EDE00(0, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v140 - 8);
  v887 = &v786 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v142);
  v1023 = &v786 - v143;
  sub_2186EDE00(0, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v144 - 8);
  v849 = &v786 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v146);
  v1022 = &v786 - v147;
  sub_2186EDE00(0, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v148 - 8);
  v847 = &v786 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v150);
  v1021 = &v786 - v151;
  sub_2186EDE00(0, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v152 - 8);
  v845 = &v786 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v154);
  v1020 = &v786 - v155;
  sub_2186EDE00(0, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v156 - 8);
  v898 = &v786 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v158);
  v1019 = &v786 - v159;
  sub_2186EDE00(0, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v160 - 8);
  v842 = &v786 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v162);
  v1018 = &v786 - v163;
  sub_2186EDE00(0, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v164 - 8);
  v886 = &v786 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v166);
  v1017 = &v786 - v167;
  sub_2186EDE00(0, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v168 - 8);
  v839 = &v786 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v170);
  v1016 = &v786 - v171;
  sub_2186EDE00(0, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v172 - 8);
  v885 = &v786 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v174);
  v1015 = &v786 - v175;
  sub_2186EDE00(0, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v176 - 8);
  v884 = &v786 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v178);
  v1014 = &v786 - v179;
  sub_2186EDE00(0, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v180 - 8);
  v835 = &v786 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v182);
  v1013 = &v786 - v183;
  sub_2186EDE00(0, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v184 - 8);
  v883 = &v786 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v186);
  v1012 = &v786 - v187;
  sub_2186EDE00(0, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v188 - 8);
  v831 = &v786 - ((v189 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v190);
  v1011 = &v786 - v191;
  sub_2186EDE00(0, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v192 - 8);
  v882 = &v786 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v194);
  v1010 = &v786 - v195;
  sub_2186EDE00(0, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v196 - 8);
  v829 = &v786 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v198);
  v1009 = &v786 - v199;
  sub_2186EDE00(0, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v200 - 8);
  v827 = &v786 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v202);
  v1008 = &v786 - v203;
  sub_2186EDE00(0, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v204 - 8);
  v881 = &v786 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v206);
  v1007 = &v786 - v207;
  sub_2186EDE00(0, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v208 - 8);
  v826 = &v786 - ((v209 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v210);
  v1006 = &v786 - v211;
  sub_2186EDE00(0, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v212 - 8);
  v817 = &v786 - ((v213 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v214);
  v1005 = &v786 - v215;
  sub_2186EDE00(0, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v216 - 8);
  v824 = &v786 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v218);
  v1004 = &v786 - v219;
  sub_2186EDE00(0, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v220 - 8);
  v823 = &v786 - ((v221 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v222);
  v1003 = &v786 - v223;
  sub_2186EDE00(0, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v224 - 8);
  v821 = &v786 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v226);
  v1002 = &v786 - v227;
  sub_2186EDE00(0, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v228 - 8);
  v820 = &v786 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v230);
  v1001 = &v786 - v231;
  sub_2186EDE00(0, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v232 - 8);
  v819 = &v786 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v234);
  v1000 = &v786 - v235;
  sub_2186EDE00(0, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v236 - 8);
  v816 = &v786 - ((v237 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v238);
  v999 = &v786 - v239;
  sub_2186EDE00(0, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v240 - 8);
  v880 = &v786 - ((v241 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v242);
  v998 = &v786 - v243;
  sub_2186EDE00(0, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v244 - 8);
  v904 = &v786 - ((v245 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v246);
  v997 = &v786 - v247;
  sub_2186EDE00(0, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v248 - 8);
  v903 = &v786 - ((v249 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v250);
  v902 = &v786 - v251;
  MEMORY[0x28223BE20](v252);
  v995 = &v786 - v253;
  MEMORY[0x28223BE20](v254);
  v996 = &v786 - v255;
  sub_2186EDE00(0, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v256 - 8);
  v901 = &v786 - ((v257 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v258);
  v1033 = &v786 - v259;
  sub_2186EDE00(0, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v260 - 8);
  v900 = &v786 - ((v261 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v262);
  v994 = &v786 - v263;
  sub_2186EDE00(0, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v264 - 8);
  v899 = &v786 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v266);
  v993 = &v786 - v267;
  sub_2186EDE00(0, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v268 - 8);
  v878 = &v786 - ((v269 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v270);
  v992 = &v786 - v271;
  sub_2186EDE00(0, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v272 - 8);
  v877 = &v786 - ((v273 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v274);
  v276 = &v786 - v275;
  sub_2186EDE00(0, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v277 - 8);
  v279 = &v786 - ((v278 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v280);
  v282 = &v786 - v281;
  sub_219802E10(0, &qword_280E8CF60, MEMORY[0x277D844C8]);
  v284 = v283;
  v285 = *(v283 - 8);
  MEMORY[0x28223BE20](v283);
  v287 = &v786 - v286;
  v288 = a1[3];
  v990 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v288);
  sub_219802B2C();
  v289 = v1041;
  sub_219BF7B34();
  if (v289)
  {
    __swift_destroy_boxed_opaque_existential_1(v990);
  }

  else
  {
    v790 = v279;
    v894 = 0;
    v892 = v282;
    v893 = v276;
    v791 = v285;
    v1040 = v284;
    v1041 = v287;
    v290 = sub_219BF7754();
    v291 = v290;
    v292 = *(v290 + 16);
    if (v292)
    {
      v293 = 0;
      v294 = v290 + 56;
      v788 = v292 - 1;
      v807 = MEMORY[0x277D84F90];
      v789 = v290 + 56;
      do
      {
        v295 = (v294 + 32 * v293);
        v296 = v293;
        while (1)
        {
          if (v296 >= *(v291 + 16))
          {
            __break(1u);
            goto LABEL_239;
          }

          v298 = *(v295 - 3);
          v297 = *(v295 - 2);
          v299 = *(v295 - 1);
          v300 = *v295;
          v301 = qword_280ED4D80;

          if (v301 != -1)
          {
            swift_once();
          }

          if ((sub_218C329C0(v298, v297, v299, v300, qword_280ED4D88) & 1) == 0)
          {
            break;
          }

          ++v296;

          v295 += 32;
          if (v292 == v296)
          {
            goto LABEL_19;
          }
        }

        v302 = v807;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v1043[0] = v302;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C380B0(0, *(v302 + 16) + 1, 1);
          v302 = v1043[0];
        }

        v305 = *(v302 + 16);
        v304 = *(v302 + 24);
        v306 = v305 + 1;
        if (v305 >= v304 >> 1)
        {
          v807 = v305 + 1;
          v787 = v305;
          sub_218C380B0((v304 > 1), v305 + 1, 1);
          v306 = v807;
          v305 = v787;
          v302 = v1043[0];
        }

        v293 = v296 + 1;
        *(v302 + 16) = v306;
        v807 = v302;
        v307 = v302 + 32 * v305;
        *(v307 + 32) = v298;
        *(v307 + 40) = v297;
        *(v307 + 48) = v299;
        *(v307 + 56) = v300;
        v294 = v789;
      }

      while (v788 != v296);
    }

    else
    {
      v807 = MEMORY[0x277D84F90];
    }

LABEL_19:

    MEMORY[0x28223BE20](v308);
    v784 = v1041;
    v309 = v894;
    sub_218D2A748(MEMORY[0x277D84F98], sub_219802B80, &v783, v807);
    v789 = v310;
    v788 = v309;

    v311 = sub_219BF7754();
    v312 = v311;
    v313 = *(v311 + 16);
    if (v313)
    {
      v314 = 0;
      v315 = v311 + 56;
      v787 = v313 - 1;
      v894 = MEMORY[0x277D84F90];
      v807 = v311 + 56;
LABEL_21:
      v316 = (v315 + 32 * v314);
      v317 = v314;
      while (v317 < *(v312 + 16))
      {
        v319 = *(v316 - 3);
        v318 = *(v316 - 2);
        v320 = *(v316 - 1);
        v321 = *v316;
        v322 = qword_280ED4D80;

        if (v322 != -1)
        {
          swift_once();
        }

        if ((sub_218C329C0(v319, v318, v320, v321, qword_280ED4D88) & 1) == 0)
        {
          v323 = v894;
          v324 = swift_isUniquelyReferenced_nonNull_native();
          v1043[0] = v323;
          if ((v324 & 1) == 0)
          {
            sub_218C380B0(0, *(v323 + 16) + 1, 1);
            v323 = v1043[0];
          }

          v326 = *(v323 + 16);
          v325 = *(v323 + 24);
          v327 = v326 + 1;
          if (v326 >= v325 >> 1)
          {
            v894 = v326 + 1;
            v786 = v326;
            sub_218C380B0((v325 > 1), v326 + 1, 1);
            v327 = v894;
            v326 = v786;
            v323 = v1043[0];
          }

          v314 = v317 + 1;
          *(v323 + 16) = v327;
          v894 = v323;
          v328 = v323 + 32 * v326;
          *(v328 + 32) = v319;
          *(v328 + 40) = v318;
          *(v328 + 48) = v320;
          *(v328 + 56) = v321;
          v315 = v807;
          if (v787 != v317)
          {
            goto LABEL_21;
          }

          goto LABEL_35;
        }

        ++v317;

        v316 += 32;
        if (v313 == v317)
        {
          goto LABEL_35;
        }
      }

LABEL_239:
      __break(1u);
    }

    else
    {
      v894 = MEMORY[0x277D84F90];
LABEL_35:

      MEMORY[0x28223BE20](v329);
      v784 = v1041;
      v330 = v788;
      sub_218D2A748(MEMORY[0x277D84F98], sub_219802B9C, &v783, v894);
      v332 = v331;

      v1043[0] = 0xD000000000000013;
      v1043[1] = 0x8000000219CD8970;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&unk_280E9AD40, type metadata accessor for PromotedArticleListTagFeedGroupKnobs, &unk_219C3EB20);
      v333 = v892;
      v334 = v983;
      sub_219BF76E4();
      if (v330)
      {

        (*(v920 + 56))(v333, 1, 1, v334);
      }

      strcpy(v1043, "paywall");
      v1043[1] = 0xE700000000000000;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(qword_280EC0CA0, type metadata accessor for PaywallTagFeedGroupKnobs, &unk_219C98184);
      sub_219BF76E4();
      strcpy(v1043, "issueList");
      WORD1(v1043[1]) = 0;
      HIDWORD(v1043[1]) = -385875968;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&unk_280EBB690, type metadata accessor for IssueListTagFeedGroupKnobs, &unk_219C0EFC4);
      sub_219BF76E4();
      strcpy(v1043, "articleList");
      HIDWORD(v1043[1]) = -352321536;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EB5968, type metadata accessor for ArticleListTagFeedGroupKnobs, &unk_219CCA818);
      sub_219BF76E4();
      strcpy(v1043, "channelSection");
      HIBYTE(v1043[1]) = -18;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(qword_280EA9B78, type metadata accessor for ChannelSectionTagFeedGroupKnobs, &unk_219CD2C88);
      sub_219BF76E4();
      v807 = v332;
      v1043[0] = 0xD000000000000017;
      v1043[1] = 0x8000000219CD89A0;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(qword_280E96640, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs, &unk_219CC97A4);
      sub_219BF76E4();
      strcpy(v1043, "sportsScores");
      BYTE5(v1043[1]) = 0;
      HIWORD(v1043[1]) = -5120;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EAEA10, type metadata accessor for SportsScoresTagFeedGroupKnobs, &unk_219C79848);
      sub_219BF76E4();
      v1043[0] = 0xD000000000000015;
      v1043[1] = 0x8000000219CD8A20;
      v1044 = 0;
      v1045 = 1;
      sub_219BF76E4();
      strcpy(v1043, "sportsLinks");
      HIDWORD(v1043[1]) = -352321536;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EB29B0, type metadata accessor for SportsLinksTagFeedGroupKnobs, &unk_219C1CAC8);
      sub_219BF76E4();
      v1043[0] = 0x74537374726F7073;
      v1043[1] = 0xEF73676E69646E61;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EA4708, type metadata accessor for SportsStandingsTagFeedGroupKnobs, &unk_219CD2FEC);
      sub_219BF76E4();
      strcpy(v1043, "sportsBracket");
      HIWORD(v1043[1]) = -4864;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(qword_280EAB258, type metadata accessor for SportsBracketTagFeedGroupKnobs, &unk_219C6F498);
      sub_219BF76E4();
      v1043[0] = 0x6F427374726F7073;
      v1043[1] = 0xEF7365726F635378;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EA4A20, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs, &unk_219CAEC54);
      sub_219BF76E4();
      v1043[0] = 0x76457374726F7073;
      v1043[1] = 0xEF6F666E49746E65;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EA48A0, type metadata accessor for SportsEventInfoTagFeedGroupKnobs, &unk_219CBEEC4);
      sub_219BF76E4();
      v1043[0] = 0xD000000000000013;
      v1043[1] = 0x8000000219CD8AA0;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280E9A690, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs, &unk_219C37558);
      sub_219BF76E4();
      v1043[0] = 0xD000000000000010;
      v1043[1] = 0x8000000219CD8AE0;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EA1D60, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs, &unk_219C22104);
      sub_219BF76E4();
      v1043[0] = 0xD000000000000013;
      v1043[1] = 0x8000000219CD8B00;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(qword_280E9A768, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs, &unk_219C91300);
      sub_219BF76E4();
      strcpy(v1043, "mySportsTopic");
      HIWORD(v1043[1]) = -4864;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EAC330, type metadata accessor for MySportsTopicTagFeedGroupKnobs, &unk_219C5E9A8);
      sub_219BF76E4();
      strcpy(v1043, "sportsRecord");
      BYTE5(v1043[1]) = 0;
      HIWORD(v1043[1]) = -5120;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(qword_280EAEC90, type metadata accessor for SportsRecordTagFeedGroupKnobs, "Ah_h0");
      sub_219BF76E4();
      v1043[0] = 0xD000000000000010;
      v1043[1] = 0x8000000219CD89D0;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(qword_280EA1B38, type metadata accessor for SportsNavigationTagFeedGroupKnobs, &unk_219C9DC2C);
      sub_219BF76E4();
      strcpy(v1043, "sportsSchedule");
      HIBYTE(v1043[1]) = -18;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(qword_280EA7F60, type metadata accessor for SportsScheduleTagFeedGroupKnobs, &unk_219C3B448);
      sub_219BF76E4();
      v1043[0] = 0xD000000000000010;
      v1043[1] = 0x8000000219CD89F0;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EA18F8, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs, &unk_219CAEE1C);
      sub_219BF76E4();
      v1043[0] = 0x61467374726F7073;
      v1043[1] = 0xEF73657469726F76;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EA47D0, type metadata accessor for SportsFavoritesTagFeedGroupKnobs, &unk_219CCE49C);
      sub_219BF76E4();
      strcpy(v1043, "weather");
      v1043[1] = 0xE700000000000000;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EBFB50, type metadata accessor for WeatherTagFeedGroupKnobs, &unk_219CA0AFC);
      sub_219BF76E4();
      strcpy(v1043, "highlights");
      BYTE3(v1043[1]) = 0;
      HIDWORD(v1043[1]) = -369098752;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EB8808, type metadata accessor for HighlightsTagFeedGroupKnobs, &unk_219C22C7C);
      sub_219BF76E4();
      v1043[0] = 0x756F59726F66;
      v1043[1] = 0xE600000000000000;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EC4DC8, type metadata accessor for ForYouTagFeedGroupKnobs, &unk_219C61108);
      sub_219BF76E4();
      strcpy(v1043, "recentStories");
      HIWORD(v1043[1]) = -4864;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EAB938, type metadata accessor for RecentStoriesTagFeedGroupKnobs, &unk_219C3E030);
      sub_219BF76E4();
      v335 = v983;
      strcpy(v1043, "dateRange");
      WORD1(v1043[1]) = 0;
      HIDWORD(v1043[1]) = -385875968;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(qword_280EBB9B0, type metadata accessor for DateRangeTagFeedGroupKnobs, &unk_219C5EFDC);
      sub_219BF76E4();
      v1043[0] = 0xD000000000000013;
      v1043[1] = 0x8000000219CD8C90;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EA80C0, type metadata accessor for SportsMastheadTagFeedGroupKnobs, &unk_219CCE7A0);
      sub_219BF76E4();
      v1043[0] = 0xD000000000000010;
      v1043[1] = 0x8000000219CD8B30;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(qword_280EA1E38, type metadata accessor for SportsEventTopicTagFeedGroupKnobs, &unk_219C71494);
      sub_219BF76E4();
      strcpy(v1043, "puzzleList");
      BYTE3(v1043[1]) = 0;
      HIDWORD(v1043[1]) = -369098752;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EB76A0, type metadata accessor for PuzzleListTagFeedGroupKnobs, &unk_219C9F75C);
      sub_219BF76E4();
      strcpy(v1043, "puzzleArchive");
      HIWORD(v1043[1]) = -4864;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EABAA0, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs, &unk_219CBFE80);
      sub_219BF76E4();
      v1043[0] = 0xD000000000000015;
      v1043[1] = 0x8000000219CD8B60;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280E98240, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs, &unk_219C98938);
      sub_219BF76E4();
      strcpy(v1043, "puzzleFeatured");
      HIBYTE(v1043[1]) = -18;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EA86F0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs, &unk_219CABDB0);
      sub_219BF76E4();
      v1043[0] = 0xD000000000000011;
      v1043[1] = 0x8000000219CD8B90;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(qword_280E9F860, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs, &unk_219C37AE4);
      sub_219BF76E4();
      v1043[0] = 0xD000000000000010;
      v1043[1] = 0x8000000219CD8BB0;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EA2650, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs, &unk_219CAF804);
      sub_219BF76E4();
      strcpy(v1043, "affinity");
      BYTE1(v1043[1]) = 0;
      WORD1(v1043[1]) = 0;
      HIDWORD(v1043[1]) = -402653184;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EBF9E0, type metadata accessor for AffinityTagFeedGroupKnobs, &unk_219C2513C);
      sub_219BF76E4();
      v336 = v1039;
      v1043[0] = 0x65726F736E6F7073;
      v1043[1] = 0xEF72656E6E614264;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&unk_280EA4AE0, type metadata accessor for SponsoredBannerTagFeedGroupKnobs, &unk_219C8C8DC);
      sub_219BF76E4();
      strcpy(v1043, "channelRecipes");
      HIBYTE(v1043[1]) = -18;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EA9C30, type metadata accessor for ChannelRecipesTagFeedGroupKnobs, &unk_219C89EC0);
      sub_219BF76E4();
      strcpy(v1043, "forYouRecipes");
      HIWORD(v1043[1]) = -4864;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EACA40, type metadata accessor for ForYouRecipesTagFeedGroupKnobs, &unk_219C89B50);
      sub_219BF76E4();
      strcpy(v1043, "latestRecipes");
      HIWORD(v1043[1]) = -4864;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EAC740, type metadata accessor for LatestRecipesTagFeedGroupKnobs, &unk_219C7D630);
      sub_219BF76E4();
      v1043[0] = 0xD000000000000015;
      v1043[1] = 0x8000000219CD8A60;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280E980B0, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs, &unk_219C41168);
      sub_219BF76E4();
      strcpy(v1043, "savedRecipes");
      BYTE5(v1043[1]) = 0;
      HIWORD(v1043[1]) = -5120;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EAF2C0, type metadata accessor for SavedRecipesTagFeedGroupKnobs, &unk_219C527C0);
      sub_219BF76E4();
      v337 = v892;
      v1043[0] = 0x676E69646E657274;
      v1043[1] = 0xEF73657069636552;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EA40E0, type metadata accessor for TrendingRecipesTagFeedGroupKnobs, &unk_219C27554);
      sub_219BF76E4();
      strcpy(v1043, "topicRecipes");
      BYTE5(v1043[1]) = 0;
      HIWORD(v1043[1]) = -5120;
      v1044 = 0;
      v1045 = 1;
      sub_21877CD38(&qword_280EADF90, type metadata accessor for TopicRecipesTagFeedGroupKnobs, &unk_219C31A10);
      sub_219BF76E4();
      v894 = 0;
      v338 = v1037;
      v339 = v980;
      type metadata accessor for TagFeedGroupKnobs(0);
      v1039 = swift_allocObject();
      v340 = v790;
      sub_219802BB8(v337, v790, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
      v341 = *(v920 + 48);
      if (v341(v340, 1, v335) == 1)
      {
        v342 = v808;
        v343 = v1038;
        (*(v338 + 56))(v808, 1, 1, v1038);
        sub_219802BB8(v342, v336, &qword_280E91A70, sub_2189AD5C8);
        v344 = *(v338 + 48);
        if (v344(v336, 1, v343) == 1)
        {
          v345 = type metadata accessor for TagFeedServiceConfig(0);
          v346 = sub_21877CD38(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
          v784 = v345;
          v785 = v346;
          v783 = 0u;
          v347 = v793;
          sub_219BEE974();
          if (v344(v336, 1, v343) != 1)
          {
            sub_219802C24(v336, &qword_280E91A70, sub_2189AD5C8);
          }
        }

        else
        {
          v347 = v793;
          (*(v338 + 32))(v793, v336, v343);
        }

        v350 = v792;
        (*(v338 + 32))(v792, v347, v343);
        v1043[0] = 0x7FFFFFFFFFFFFFFFLL;
        sub_2186F9548();
        swift_allocObject();
        v351 = sub_219BEF534();
        v338 = v1037;
        v352 = v351;
        sub_219802C24(v808, &qword_280E91A70, sub_2189AD5C8);
        v353 = v983;
        *(v350 + *(v983 + 20)) = v352;
        *(v350 + *(v353 + 24)) = 0;
        v348 = v809;
        sub_219802C80(v350, v809, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
        v354 = v341(v340, 1, v353);
        v349 = v981;
        v339 = v980;
        if (v354 != 1)
        {
          sub_219802C24(v340, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
        }
      }

      else
      {
        v348 = v809;
        sub_219802C80(v340, v809, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
        v349 = v981;
      }

      sub_219802C80(v348, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_promotedArticleListKnobs], type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
      v355 = v877;
      sub_219802BB8(v893, v877, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
      v356 = *(v339 + 48);
      v357 = v1042;
      v358 = v356(v355, 1, v1042);
      v359 = v1036;
      if (v358 == 1)
      {
        (*(v338 + 56))(v1036, 1, 1, v1038);
        v360 = v810;
        sub_219686328(v359, 0, 1, v810);
        v361 = v356(v355, 1, v357);
        v362 = v360;
        v363 = v811;
        if (v361 != 1)
        {
          sub_219802C24(v355, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
        }
      }

      else
      {
        v362 = v810;
        sub_219802C80(v355, v810, type metadata accessor for PaywallTagFeedGroupKnobs);
        v363 = v811;
      }

      sub_219802C80(v362, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_paywallKnobs], type metadata accessor for PaywallTagFeedGroupKnobs);
      v364 = v878;
      sub_219802BB8(v992, v878, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
      v365 = *(v921 + 48);
      v366 = v943;
      if (v365(v364, 1, v943) == 1)
      {
        v367 = v1036;
        (*(v338 + 56))(v1036, 1, 1, v1038);
        sub_2189AD728(v367, v363);
        v368 = v365(v364, 1, v366);
        v369 = v1032;
        v370 = v813;
        v371 = v349;
        if (v368 != 1)
        {
          sub_219802C24(v364, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
        }
      }

      else
      {
        sub_219802C80(v364, v363, type metadata accessor for IssueListTagFeedGroupKnobs);
        v369 = v1032;
        v370 = v813;
        v371 = v349;
      }

      sub_219802C80(v363, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_issueListKnobs], type metadata accessor for IssueListTagFeedGroupKnobs);
      v372 = v899;
      sub_219802BB8(v993, v899, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
      v373 = *(v922 + 48);
      v374 = v373(v372, 1, v984);
      v375 = v1033;
      if (v374 == 1)
      {
        v376 = v812;
        v377 = v1038;
        (*(v338 + 56))(v812, 1, 1, v1038);
        v378 = v794;
        sub_219802BB8(v376, v794, &qword_280E91A70, sub_2189AD5C8);
        v379 = *(v338 + 48);
        if (v379(v378, 1, v377) == 1)
        {
          v380 = type metadata accessor for TagFeedServiceConfig(0);
          v381 = sub_21877CD38(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
          v784 = v380;
          v785 = v381;
          v783 = 0u;
          v382 = v795;
          sub_219BEE974();
          v383 = v379(v378, 1, v377) == 1;
          v384 = v378;
          v385 = v796;
          if (!v383)
          {
            sub_219802C24(v384, &qword_280E91A70, sub_2189AD5C8);
          }
        }

        else
        {
          v382 = v795;
          (*(v338 + 32))(v795, v378, v377);
          v385 = v796;
        }

        (*(v338 + 32))(v385, v382, v377);
        v1043[0] = 6;
        sub_2186F9548();
        swift_allocObject();
        v386 = sub_219BEF534();
        v387 = v984;
        *(v385 + *(v984 + 20)) = v386;
        LOBYTE(v1043[0]) = 0;
        sub_2190E9B64(0);
        swift_allocObject();
        *(v385 + v387[6]) = sub_219BEF534();
        LOBYTE(v1043[0]) = 1;
        sub_2186F95C4();
        swift_allocObject();
        *(v385 + v387[7]) = sub_219BEF534();
        v1043[0] = 0;
        sub_2186ECA28();
        swift_allocObject();
        *(v385 + v387[8]) = sub_219BEF534();
        v1043[0] = 0x7FEFFFFFFFFFFFFFLL;
        swift_allocObject();
        v388 = sub_219BEF534();
        v338 = v1037;
        v389 = v388;
        sub_219802C24(v812, &qword_280E91A70, sub_2189AD5C8);
        *(v385 + v387[9]) = v389;
        *(v385 + v387[10]) = 0;
        sub_219802C80(v385, v370, type metadata accessor for ArticleListTagFeedGroupKnobs);
        v390 = v899;
        v391 = v373(v899, 1, v387);
        v369 = v1032;
        v375 = v1033;
        v371 = v981;
        if (v391 != 1)
        {
          sub_219802C24(v390, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
        }
      }

      else
      {
        sub_219802C80(v372, v370, type metadata accessor for ArticleListTagFeedGroupKnobs);
      }

      v392 = v1039;
      sub_219802C80(v370, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_articleListKnobs], type metadata accessor for ArticleListTagFeedGroupKnobs);
      *&v392[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_curatedKnobs] = v789;
      v393 = v900;
      sub_219802BB8(v994, v900, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
      v394 = *(v923 + 48);
      if (v394(v393, 1, v985) == 1)
      {
        v395 = v814;
        v396 = v1038;
        (*(v338 + 56))(v814, 1, 1, v1038);
        v397 = v797;
        sub_219802BB8(v395, v797, &qword_280E91A70, sub_2189AD5C8);
        v398 = *(v338 + 48);
        if (v398(v397, 1, v396) == 1)
        {
          v399 = type metadata accessor for TagFeedServiceConfig(0);
          v400 = sub_21877CD38(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
          v784 = v399;
          v785 = v400;
          v783 = 0u;
          v401 = v798;
          sub_219BEE974();
          v383 = v398(v397, 1, v396) == 1;
          v402 = v397;
          v403 = v799;
          if (!v383)
          {
            sub_219802C24(v402, &qword_280E91A70, sub_2189AD5C8);
          }
        }

        else
        {
          v401 = v798;
          (*(v338 + 32))(v798, v397, v396);
          v403 = v799;
        }

        (*(v338 + 32))(v403, v401, v396);
        v1043[0] = 1;
        sub_2186F9548();
        swift_allocObject();
        v406 = sub_219BEF534();
        v407 = v985;
        *(v403 + *(v985 + 20)) = v406;
        v1043[0] = 5;
        swift_allocObject();
        *(v403 + v407[6]) = sub_219BEF534();
        v1043[0] = 1;
        swift_allocObject();
        *(v403 + v407[7]) = sub_219BEF534();
        v1043[0] = 0x7FFFFFFFFFFFFFFFLL;
        swift_allocObject();
        *(v403 + v407[8]) = sub_219BEF534();
        sub_219BF5CE4();
        v1043[0] = v408;
        sub_2186ECA28();
        swift_allocObject();
        *(v403 + v407[9]) = sub_219BEF534();
        sub_219BF5D04();
        v1043[0] = v409;
        swift_allocObject();
        *(v403 + v407[10]) = sub_219BEF534();
        LOBYTE(v1043[0]) = 0;
        sub_2190E9CE4(0);
        swift_allocObject();
        *(v403 + v407[11]) = sub_219BEF534();
        v1043[0] = 0;
        v1043[1] = 0xE000000000000000;
        sub_2190E9E64();
        swift_allocObject();
        v410 = sub_219BEF534();
        v338 = v1037;
        v411 = v410;
        sub_219802C24(v814, &qword_280E91A70, sub_2189AD5C8);
        *(v403 + v407[12]) = v411;
        v404 = v815;
        sub_219802C80(v403, v815, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
        v412 = v900;
        v413 = v394(v900, 1, v407);
        v369 = v1032;
        v375 = v1033;
        v405 = v895;
        v371 = v981;
        if (v413 != 1)
        {
          sub_219802C24(v412, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
        }
      }

      else
      {
        v404 = v815;
        sub_219802C80(v393, v815, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
        v405 = v895;
      }

      sub_219802C80(v404, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelSectionGroupKnobs], type metadata accessor for ChannelSectionTagFeedGroupKnobs);
      v414 = v375;
      v415 = v901;
      sub_219802BB8(v414, v901, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
      v416 = *(v924 + 48);
      v417 = v416(v415, 1, v986);
      v418 = v879;
      if (v417 == 1)
      {
        v419 = v371;
        v420 = v371;
        v421 = v1038;
        (*(v338 + 56))(v419, 1, 1, v1038);
        sub_219802BB8(v420, v418, &qword_280E91A70, sub_2189AD5C8);
        v422 = *(v338 + 48);
        if (v422(v418, 1, v421) == 1)
        {
          v423 = type metadata accessor for TagFeedServiceConfig(0);
          v424 = sub_21877CD38(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
          v784 = v423;
          v785 = v424;
          v783 = 0u;
          v425 = v800;
          sub_219BEE974();
          v426 = v422(v418, 1, v421);
          v427 = v802;
          if (v426 != 1)
          {
            sub_219802C24(v418, &qword_280E91A70, sub_2189AD5C8);
          }
        }

        else
        {
          v425 = v800;
          (*(v338 + 32))(v800, v418, v421);
          v427 = v802;
        }

        (*(v338 + 32))(v427, v425, v421);
        v1043[0] = 3;
        sub_2186F9548();
        swift_allocObject();
        v428 = sub_219BEF534();
        v429 = v986;
        *(v427 + *(v986 + 20)) = v428;
        v1043[0] = 0x7FFFFFFFFFFFFFFFLL;
        swift_allocObject();
        v430 = sub_219BEF534();
        v338 = v1037;
        v431 = v430;
        sub_219802C24(v981, &qword_280E91A70, sub_2189AD5C8);
        *(v427 + *(v429 + 24)) = v431;
        v405 = v895;
        sub_219802C80(v427, v895, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
        v432 = v901;
        v433 = v416(v901, 1, v429);
        v369 = v1032;
        if (v433 != 1)
        {
          sub_219802C24(v432, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
        }
      }

      else
      {
        sub_219802C80(v415, v405, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
      }

      v434 = v1039;
      sub_219802C80(v405, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelSectionDirectoryGroupKnobs], type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
      v435 = v902;
      sub_219802BB8(v996, v902, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      v436 = *(v1034 + 48);
      v1034 += 48;
      v1042 = v436;
      v437 = (v436)(v435, 1, v1035);
      v438 = v988;
      v439 = v991;
      if (v437 == 1)
      {
        v440 = v818;
        v441 = v1038;
        (*(v338 + 56))(v818, 1, 1, v1038);
        v442 = v801;
        sub_219802BB8(v440, v801, &qword_280E91A70, sub_2189AD5C8);
        v443 = *(v338 + 48);
        if (v443(v442, 1, v441) == 1)
        {
          v444 = type metadata accessor for TagFeedServiceConfig(0);
          v445 = sub_21877CD38(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
          v784 = v444;
          v785 = v445;
          v783 = 0u;
          v446 = v803;
          sub_219BEE974();
          v447 = v443(v442, 1, v441);
          v448 = v896;
          if (v447 != 1)
          {
            sub_219802C24(v442, &qword_280E91A70, sub_2189AD5C8);
          }
        }

        else
        {
          v446 = v803;
          (*(v338 + 32))(v803, v442, v441);
          v448 = v896;
        }

        (*(v338 + 32))(v448, v446, v441);
        v1043[0] = 0x7FFFFFFFFFFFFFFFLL;
        sub_2186F9548();
        swift_allocObject();
        v451 = sub_219BEF534();
        v452 = v1035;
        *&v448[v1035[5]] = v451;
        v1043[0] = 1;
        swift_allocObject();
        *&v448[v452[6]] = sub_219BEF534();
        sub_218D554B0(0);
        swift_allocObject();
        v986 = sub_219BEF274();
        sub_218D55534(0);
        swift_allocObject();
        v453 = sub_219BEF274();
        v1043[0] = 0;
        sub_218D556B4(0);
        swift_allocObject();
        v454 = sub_219BEF534();
        LOBYTE(v1043[0]) = 1;
        sub_2186F95C4();
        swift_allocObject();
        v455 = sub_219BEF534();
        v456 = &v896[v1035[7]];
        *v456 = v986;
        v456[1] = v453;
        v456[2] = v454;
        v456[3] = v455;
        swift_allocObject();
        v986 = sub_219BEF274();
        swift_allocObject();
        v457 = sub_219BEF274();
        v1043[0] = 0;
        swift_allocObject();
        v458 = sub_219BEF534();
        LOBYTE(v1043[0]) = 1;
        swift_allocObject();
        v459 = sub_219BEF534();
        v460 = v1035;
        v461 = v896;
        v462 = &v896[v1035[8]];
        *v462 = v986;
        v462[1] = v457;
        v462[2] = v458;
        v462[3] = v459;
        LOBYTE(v1043[0]) = 1;
        swift_allocObject();
        *(v461 + v460[9]) = sub_219BEF534();
        v1043[0] = 14;
        swift_allocObject();
        *(v461 + v460[10]) = sub_219BEF534();
        LOBYTE(v1043[0]) = 1;
        sub_218D528A0(0);
        swift_allocObject();
        *(v461 + v460[11]) = sub_219BEF534();
        v463 = sub_219BF1F54();
        sub_218C3DB88(v463);

        sub_218BE9934(0);
        swift_allocObject();
        *(v461 + v460[12]) = sub_219BEEE04();
        swift_allocObject();
        v464 = sub_219BEEE04();
        v338 = v1037;
        v465 = v464;
        sub_219802C24(v818, &qword_280E91A70, sub_2189AD5C8);
        *(v461 + v460[13]) = v465;
        v450 = v822;
        sub_219802C80(v461, v822, type metadata accessor for SportsScoresTagFeedGroupKnobs);
        v466 = v902;
        v467 = (v1042)(v902, 1, v460);
        v439 = v991;
        v438 = v988;
        v369 = v1032;
        v434 = v1039;
        if (v467 != 1)
        {
          sub_219802C24(v466, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
        }
      }

      else
      {
        v449 = v435;
        v450 = v822;
        sub_219802C80(v449, v822, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      }

      sub_219802C80(v450, &v434[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScoresKnobs], type metadata accessor for SportsScoresTagFeedGroupKnobs);
      v468 = v903;
      sub_219802BB8(v995, v903, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      if ((v1042)(v468, 1, v1035) == 1)
      {
        v469 = v825;
        v470 = v1038;
        (*(v338 + 56))(v825, 1, 1, v1038);
        v471 = v804;
        sub_219802BB8(v469, v804, &qword_280E91A70, sub_2189AD5C8);
        v472 = *(v338 + 48);
        if (v472(v471, 1, v470) == 1)
        {
          v473 = type metadata accessor for TagFeedServiceConfig(0);
          v474 = sub_21877CD38(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
          v784 = v473;
          v785 = v474;
          v783 = 0u;
          v475 = v805;
          sub_219BEE974();
          v476 = v472(v471, 1, v470);
          v477 = v897;
          if (v476 != 1)
          {
            sub_219802C24(v471, &qword_280E91A70, sub_2189AD5C8);
          }
        }

        else
        {
          v475 = v805;
          (*(v338 + 32))(v805, v471, v470);
          v477 = v897;
        }

        (*(v338 + 32))(v477, v475, v470);
        v1043[0] = 0x7FFFFFFFFFFFFFFFLL;
        sub_2186F9548();
        swift_allocObject();
        v479 = sub_219BEF534();
        v480 = v1035;
        *&v477[v1035[5]] = v479;
        v1043[0] = 1;
        swift_allocObject();
        *&v477[v480[6]] = sub_219BEF534();
        sub_218D554B0(0);
        swift_allocObject();
        v986 = sub_219BEF274();
        sub_218D55534(0);
        swift_allocObject();
        v481 = sub_219BEF274();
        v1043[0] = 0;
        sub_218D556B4(0);
        swift_allocObject();
        v482 = sub_219BEF534();
        LOBYTE(v1043[0]) = 1;
        sub_2186F95C4();
        swift_allocObject();
        v483 = sub_219BEF534();
        v484 = &v897[v1035[7]];
        *v484 = v986;
        v484[1] = v481;
        v484[2] = v482;
        v484[3] = v483;
        swift_allocObject();
        v986 = sub_219BEF274();
        swift_allocObject();
        v485 = sub_219BEF274();
        v1043[0] = 0;
        swift_allocObject();
        v486 = sub_219BEF534();
        LOBYTE(v1043[0]) = 1;
        swift_allocObject();
        v487 = sub_219BEF534();
        v488 = v1035;
        v489 = v897;
        v490 = &v897[v1035[8]];
        *v490 = v986;
        v490[1] = v485;
        v490[2] = v486;
        v490[3] = v487;
        LOBYTE(v1043[0]) = 1;
        swift_allocObject();
        *(v489 + v488[9]) = sub_219BEF534();
        v1043[0] = 14;
        swift_allocObject();
        *(v489 + v488[10]) = sub_219BEF534();
        LOBYTE(v1043[0]) = 1;
        sub_218D528A0(0);
        swift_allocObject();
        *(v489 + v488[11]) = sub_219BEF534();
        v491 = sub_219BF1F54();
        sub_218C3DB88(v491);

        sub_218BE9934(0);
        swift_allocObject();
        *(v489 + v488[12]) = sub_219BEEE04();
        swift_allocObject();
        v492 = sub_219BEEE04();
        v338 = v1037;
        v493 = v492;
        sub_219802C24(v825, &qword_280E91A70, sub_2189AD5C8);
        *(v489 + v488[13]) = v493;
        v369 = v1032;
        sub_219802C80(v489, v1032, type metadata accessor for SportsScoresTagFeedGroupKnobs);
        v494 = v903;
        v495 = (v1042)(v903, 1, v488);
        v439 = v991;
        v438 = v988;
        v434 = v1039;
        v478 = v817;
        if (v495 != 1)
        {
          sub_219802C24(v494, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
        }
      }

      else
      {
        sub_219802C80(v468, v369, type metadata accessor for SportsScoresTagFeedGroupKnobs);
        v478 = v817;
      }

      sub_219802C80(v369, &v434[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScoresCondensedKnobs], type metadata accessor for SportsScoresTagFeedGroupKnobs);
      v496 = v904;
      sub_219802BB8(v997, v904, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
      v497 = *(v438 + 48);
      if (v497(v496, 1, v439) == 1)
      {
        v498 = v1036;
        (*(v338 + 56))(v1036, 1, 1, v1038);
        v499 = v828;
        v500 = v904;
        sub_218B5BC90(v498, MEMORY[0x277D84F90], v828);
        if (v497(v500, 1, v439) != 1)
        {
          sub_219802C24(v500, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
        }
      }

      else
      {
        v499 = v828;
        sub_219802C80(v496, v828, type metadata accessor for SportsLinksTagFeedGroupKnobs);
      }

      sub_219802C80(v499, &v434[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsLinksKnobs], type metadata accessor for SportsLinksTagFeedGroupKnobs);
      sub_219802BB8(v1005, v478, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
      v501 = *(v944 + 48);
      v502 = v945;
      if (v501(v478, 1, v945) == 1)
      {
        v503 = v1036;
        (*(v338 + 56))(v1036, 1, 1, v1038);
        v504 = sub_219BEF244();
        v505 = v942;
        (*(*(v504 - 8) + 56))(v942, 1, 1, v504);
        v506 = v830;
        sub_21912106C(v503, 0, 0, 0, 0, 0, 0, 0, v830, 0, 0, 0, 0, 0, 0, 0, 0, 0, v505, 0, 0, 0, 0, 0, 0, 0);
        if (v501(v478, 1, v502) != 1)
        {
          sub_219802C24(v478, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
        }
      }

      else
      {
        v506 = v830;
        sub_219802C80(v478, v830, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
      }

      sub_219802C80(v506, &v434[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_mySportsTopicKnobs], type metadata accessor for MySportsTopicTagFeedGroupKnobs);
      v507 = v880;
      sub_219802BB8(v998, v880, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
      v508 = *(v925 + 48);
      v509 = v946;
      if (v508(v507, 1, v946) == 1)
      {
        v510 = v1036;
        (*(v338 + 56))(v1036, 1, 1, v1038);
        v511 = v832;
        sub_219B969FC(v510, 0, 0, v832);
        v512 = v508(v507, 1, v509);
        v513 = v511;
        v383 = v512 == 1;
        v514 = v820;
        v515 = v507;
        v516 = v816;
        v517 = v905;
        if (!v383)
        {
          sub_219802C24(v515, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
        }
      }

      else
      {
        v513 = v832;
        sub_219802C80(v507, v832, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
        v514 = v820;
        v516 = v816;
        v517 = v905;
      }

      sub_219802C80(v513, &v434[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsStandingsKnobs], type metadata accessor for SportsStandingsTagFeedGroupKnobs);
      sub_219802BB8(v999, v516, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
      v518 = *(v517 + 48);
      v519 = v947;
      if (v518(v516, 1, v947) == 1)
      {
        v520 = v1036;
        (*(v338 + 56))(v1036, 1, 1, v1038);
        v521 = v833;
        sub_219323CC4(v520, 0, 0, v833);
        v522 = v518(v516, 1, v519);
        v523 = v819;
        if (v522 != 1)
        {
          sub_219802C24(v516, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
        }
      }

      else
      {
        v521 = v833;
        sub_219802C80(v516, v833, type metadata accessor for SportsBracketTagFeedGroupKnobs);
        v523 = v819;
      }

      sub_219802C80(v521, &v434[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsBracketKnobs], type metadata accessor for SportsBracketTagFeedGroupKnobs);
      sub_219802BB8(v1000, v523, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
      v524 = *(v926 + 48);
      v525 = v1046;
      if (v524(v523, 1, v1046) == 1)
      {
        v526 = v1036;
        (*(v338 + 56))(v1036, 1, 1, v1038);
        v527 = v523;
        v528 = v834;
        sub_219882370(v526, 0, 0, v834);
        v529 = v524(v527, 1, v525);
        v530 = v528;
        v531 = v821;
        v532 = v906;
        if (v529 != 1)
        {
          sub_219802C24(v527, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
        }
      }

      else
      {
        v530 = v834;
        sub_219802C80(v523, v834, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
        v531 = v821;
        v532 = v906;
      }

      sub_219802C80(v530, &v434[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsBoxScoresKnobs], type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
      sub_219802BB8(v1001, v514, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
      v533 = *(v532 + 48);
      v534 = v948;
      if (v533(v514, 1, v948) == 1)
      {
        v535 = v1036;
        (*(v338 + 56))(v1036, 1, 1, v1038);
        v536 = v836;
        sub_219A04DD8(v535, 0, 0, 0, 0, 0, 0, v836);
        v537 = v533(v514, 1, v534);
        v538 = v536;
        v539 = v823;
        v540 = v907;
        if (v537 != 1)
        {
          sub_219802C24(v514, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
        }
      }

      else
      {
        v538 = v836;
        sub_219802C80(v514, v836, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
        v539 = v823;
        v540 = v907;
      }

      sub_219802C80(v538, &v434[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventInfoKnobs], type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
      sub_219802BB8(v1002, v531, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
      v541 = *(v540 + 48);
      v542 = v949;
      if (v541(v531, 1, v949) == 1)
      {
        v543 = v1036;
        (*(v338 + 56))(v1036, 1, 1, v1038);
        v544 = v531;
        v545 = v837;
        sub_218DAB2FC(v543, 0, 0, v837);
        v546 = v541(v544, 1, v542);
        v547 = v950;
        if (v546 != 1)
        {
          sub_219802C24(v544, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
        }
      }

      else
      {
        v548 = v531;
        v545 = v837;
        sub_219802C80(v548, v837, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
        v547 = v950;
      }

      v549 = v1039;
      sub_219802C80(v545, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsInjuryReportsKnobs], type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
      sub_219802BB8(v1003, v539, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
      v550 = *(v927 + 48);
      if (v550(v539, 1, v547) == 1)
      {
        v551 = v1036;
        (*(v338 + 56))(v1036, 1, 1, v1038);
        v552 = v838;
        sub_218BE9A60(v551, 0, 0, 0, 0, v838);
        v553 = v550(v539, 1, v547);
        v554 = v824;
        v555 = v951;
        if (v553 != 1)
        {
          sub_219802C24(v539, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
        }
      }

      else
      {
        v552 = v838;
        sub_219802C80(v539, v838, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
        v554 = v824;
        v555 = v951;
      }

      sub_219802C80(v552, &v549[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsKeyPlayersKnobs], type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
      sub_219802BB8(v1004, v554, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
      v556 = *(v928 + 48);
      if (v556(v554, 1, v555) == 1)
      {
        v557 = v1036;
        v558 = v1038;
        (*(v338 + 56))(v1036, 1, 1, v1038);
        v559 = v554;
        v560 = v840;
        sub_2195FC8F4(v557, 0, 0, 0, 0, 0, 0, v840);
        v561 = v556(v559, 1, v555);
        v562 = v826;
        if (v561 != 1)
        {
          sub_219802C24(v559, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
        }
      }

      else
      {
        v563 = v554;
        v560 = v840;
        sub_219802C80(v563, v840, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
        v558 = v1038;
        v562 = v826;
      }

      sub_219802C80(v560, &v549[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventArticlesKnobs], type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
      sub_219802BB8(v1006, v562, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
      v564 = *(v929 + 48);
      v565 = v952;
      if (v564(v562, 1, v952) == 1)
      {
        v566 = v1036;
        (*(v338 + 56))(v1036, 1, 1, v558);
        v567 = v841;
        sub_218ED3A90(v566, v841);
        v568 = v564(v562, 1, v565);
        v569 = v827;
        v570 = v958;
        if (v568 != 1)
        {
          sub_219802C24(v562, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
        }
      }

      else
      {
        v567 = v841;
        sub_219802C80(v562, v841, type metadata accessor for SportsRecordTagFeedGroupKnobs);
        v569 = v827;
        v570 = v958;
        v566 = v1036;
      }

      sub_219802C80(v567, &v549[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsRecordKnobs], type metadata accessor for SportsRecordTagFeedGroupKnobs);
      v571 = v881;
      sub_219802BB8(v1007, v881, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
      v572 = *(v930 + 48);
      v573 = v953;
      if (v572(v571, 1, v953) == 1)
      {
        (*(v1037 + 56))(v566, 1, 1, v1038);
        v574 = v566;
        v575 = v571;
        v576 = v843;
        sub_2196EACD4(v574, v843);
        v577 = v572(v575, 1, v573);
        v578 = v829;
        if (v577 != 1)
        {
          sub_219802C24(v575, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
        }
      }

      else
      {
        v579 = v571;
        v576 = v843;
        sub_219802C80(v579, v843, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
        v578 = v829;
      }

      sub_219802C80(v576, &v549[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsNavigationKnobs], type metadata accessor for SportsNavigationTagFeedGroupKnobs);
      sub_219802BB8(v1008, v569, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
      v580 = *(v931 + 48);
      v581 = v954;
      if (v580(v569, 1, v954) == 1)
      {
        v582 = v1036;
        (*(v1037 + 56))(v1036, 1, 1, v1038);
        v583 = v844;
        sub_218DF90B8(v582, 0, 0, 0, v844);
        v584 = v580(v569, 1, v581);
        v585 = v583;
        v549 = v1039;
        v586 = v908;
        if (v584 != 1)
        {
          sub_219802C24(v569, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
        }
      }

      else
      {
        v585 = v844;
        sub_219802C80(v569, v844, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
        v586 = v908;
        v582 = v1036;
      }

      sub_219802C80(v585, &v549[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScheduleKnobs], type metadata accessor for SportsScheduleTagFeedGroupKnobs);
      sub_219802BB8(v1009, v578, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
      v587 = *(v932 + 48);
      v588 = v955;
      if (v587(v578, 1, v955) == 1)
      {
        (*(v1037 + 56))(v582, 1, 1, v1038);
        v589 = v846;
        sub_219883298(v582, 0, 0, 0, 0, 0, 0, v846);
        v590 = v587(v578, 1, v588);
        v591 = v831;
        if (v590 != 1)
        {
          sub_219802C24(v578, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
        }
      }

      else
      {
        v589 = v846;
        sub_219802C80(v578, v846, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
        v591 = v831;
      }

      sub_219802C80(v589, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsTopStoriesKnobs], type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
      v592 = v882;
      sub_219802BB8(v1010, v882, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
      v593 = *(v586 + 48);
      v594 = v956;
      if (v593(v592, 1, v956) == 1)
      {
        (*(v1037 + 56))(v582, 1, 1, v1038);
        v595 = v848;
        sub_219B3A300(v582, 0, 0, v848);
        v596 = v593(v592, 1, v594);
        v597 = v595;
        v598 = v853;
        v599 = v909;
        if (v596 != 1)
        {
          sub_219802C24(v592, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
        }
      }

      else
      {
        v597 = v848;
        sub_219802C80(v592, v848, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
        v598 = v853;
        v599 = v909;
      }

      sub_219802C80(v597, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsFavoritesKnobs], type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
      sub_219802BB8(v1011, v591, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
      v600 = *(v933 + 48);
      v601 = v957;
      if (v600(v591, 1, v957) == 1)
      {
        (*(v1037 + 56))(v582, 1, 1, v1038);
        v602 = v850;
        sub_21973E880(v582, v850);
        v603 = v600(v591, 1, v601);
        v604 = v602;
        v605 = v835;
        if (v603 != 1)
        {
          sub_219802C24(v591, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
        }
      }

      else
      {
        v604 = v850;
        sub_219802C80(v591, v850, type metadata accessor for WeatherTagFeedGroupKnobs);
        v605 = v835;
      }

      sub_219802C80(v604, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_weatherKnobs], type metadata accessor for WeatherTagFeedGroupKnobs);
      v606 = v883;
      sub_219802BB8(v1012, v883, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
      v607 = *(v599 + 48);
      if (v607(v606, 1, v570) == 1)
      {
        v608 = v1038;
        (*(v1037 + 56))(v582, 1, 1, v1038);
        v609 = v851;
        sub_218C03158(v582, 0, 0, 0, v851);
        if (v607(v606, 1, v570) != 1)
        {
          sub_219802C24(v606, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
        }
      }

      else
      {
        v609 = v851;
        sub_219802C80(v606, v851, type metadata accessor for HighlightsTagFeedGroupKnobs);
        v608 = v1038;
      }

      sub_219802C80(v609, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_highlightsKnobs], type metadata accessor for HighlightsTagFeedGroupKnobs);
      sub_219802BB8(v1013, v605, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
      v610 = *(v934 + 48);
      v611 = v959;
      if (v610(v605, 1, v959) == 1)
      {
        (*(v1037 + 56))(v582, 1, 1, v608);
        v612 = sub_219BEF814();
        v613 = v982;
        (*(*(v612 - 8) + 56))(v982, 1, 1, v612);
        sub_21915E180(v582, 0, 0, 0, 0, 2, v613, 0, v598, 0);
        v383 = v610(v605, 1, v611) == 1;
        v614 = v1014;
        v615 = v963;
        v616 = v605;
        v617 = v961;
        v618 = v911;
        v619 = v910;
        if (!v383)
        {
          sub_219802C24(v616, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
        }
      }

      else
      {
        sub_219802C80(v605, v598, type metadata accessor for ForYouTagFeedGroupKnobs);
        v614 = v1014;
        v615 = v963;
        v617 = v961;
        v618 = v911;
        v619 = v910;
      }

      sub_219802C80(v598, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_forYouKnobs], type metadata accessor for ForYouTagFeedGroupKnobs);
      v620 = v884;
      sub_219802BB8(v614, v884, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
      v621 = *(v619 + 48);
      v622 = v960;
      if (v621(v620, 1, v960) == 1)
      {
        (*(v1037 + 56))(v582, 1, 1, v1038);
        v623 = sub_219BEF814();
        v624 = v982;
        (*(*(v623 - 8) + 56))(v982, 1, 1, v623);
        v625 = v582;
        v626 = v620;
        v627 = v622;
        v628 = v855;
        sub_218E2D28C(v625, 0, 0, 0, 2, v624, v855);
        v629 = v621(v626, 1, v627);
        v630 = v842;
        v631 = v839;
        v632 = v615;
        if (v629 != 1)
        {
          sub_219802C24(v626, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
        }
      }

      else
      {
        v628 = v855;
        sub_219802C80(v620, v855, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
        v630 = v842;
        v631 = v839;
        v632 = v615;
      }

      sub_219802C80(v628, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_recentStoriesKnobs], type metadata accessor for RecentStoriesTagFeedGroupKnobs);
      v633 = v885;
      sub_219802BB8(v1015, v885, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
      v634 = *(v618 + 48);
      v635 = v634(v633, 1, v617);
      v636 = v889;
      if (v635 == 1)
      {
        v637 = v1036;
        (*(v1037 + 56))(v1036, 1, 1, v1038);
        sub_21912C508(v637, 0, v636);
        if (v634(v633, 1, v617) != 1)
        {
          sub_219802C24(v633, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
        }
      }

      else
      {
        sub_219802C80(v633, v889, type metadata accessor for DateRangeTagFeedGroupKnobs);
        v637 = v1036;
      }

      sub_219802C80(v636, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_dateRangeKnobs], type metadata accessor for DateRangeTagFeedGroupKnobs);
      sub_219802BB8(v1016, v631, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
      v638 = *(v935 + 48);
      v639 = v962;
      if (v638(v631, 1, v962) == 1)
      {
        v640 = v637;
        v641 = v637;
        v642 = v1038;
        (*(v1037 + 56))(v640, 1, 1, v1038);
        v643 = v857;
        sub_219B3C008(v641, v857);
        v644 = v638(v631, 1, v639);
        v645 = v847;
        if (v644 != 1)
        {
          sub_219802C24(v631, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
        }
      }

      else
      {
        v643 = v857;
        sub_219802C80(v631, v857, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
        v645 = v847;
        v642 = v1038;
      }

      sub_219802C80(v643, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsMastheadKnobs], type metadata accessor for SportsMastheadTagFeedGroupKnobs);
      v646 = v886;
      sub_219802BB8(v1017, v886, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
      v647 = *(v936 + 48);
      if (v647(v646, 1, v632) == 1)
      {
        v648 = v1036;
        (*(v1037 + 56))(v1036, 1, 1, v642);
        v649 = sub_219BEF244();
        v650 = v942;
        (*(*(v649 - 8) + 56))(v942, 1, 1, v649);
        v785 = v650;
        v651 = v859;
        sub_21934F668(v648, 0, 0, 0, 0, 0, 0, 0, v859, 0, v785);
        if (v647(v646, 1, v632) != 1)
        {
          sub_219802C24(v646, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
        }
      }

      else
      {
        v651 = v859;
        sub_219802C80(v646, v859, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
      }

      v652 = v1039;
      sub_219802C80(v651, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventTopicKnobs], type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
      *&v652[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsOnboardingKnobs] = v807;
      sub_219802BB8(v1018, v630, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
      v653 = *(v937 + 48);
      v654 = v964;
      v655 = v645;
      if (v653(v630, 1, v964) == 1)
      {
        v656 = v1036;
        (*(v1037 + 56))(v1036, 1, 1, v642);
        v657 = v861;
        sub_219721F8C(v656, 0, 0, 0, 0, 0, v861);
        v658 = v653(v630, 1, v654);
        v659 = v845;
        v660 = v968;
        v661 = v898;
        if (v658 != 1)
        {
          sub_219802C24(v630, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
        }
      }

      else
      {
        v657 = v861;
        sub_219802C80(v630, v861, type metadata accessor for PuzzleListTagFeedGroupKnobs);
        v659 = v845;
        v660 = v968;
        v661 = v898;
      }

      sub_219802C80(v657, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleListKnobs], type metadata accessor for PuzzleListTagFeedGroupKnobs);
      sub_219802BB8(v1019, v661, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
      v662 = *(v938 + 48);
      v663 = v965;
      if (v662(v661, 1, v965) == 1)
      {
        v664 = v1036;
        v665 = v1038;
        (*(v1037 + 56))(v1036, 1, 1, v1038);
        v666 = v862;
        v667 = v664;
        v668 = v898;
        sub_219A0D730(v667, 0, 0, v862);
        v669 = v662(v668, 1, v663);
        v670 = v655;
        if (v669 != 1)
        {
          sub_219802C24(v668, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
        }
      }

      else
      {
        v666 = v862;
        sub_219802C80(v661, v862, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
        v665 = v1038;
        v670 = v655;
      }

      sub_219802C80(v666, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleArchiveKnobs], type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
      sub_219802BB8(v1020, v659, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
      v671 = *(v966 + 48);
      v672 = v967;
      if (v671(v659, 1, v967) == 1)
      {
        v673 = v1036;
        (*(v1037 + 56))(v1036, 1, 1, v665);
        v674 = v659;
        v675 = v863;
        sub_21968D298(v673, 0, 0, v863);
        v676 = v671(v674, 1, v672);
        v677 = v849;
        if (v676 != 1)
        {
          sub_219802C24(v674, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
        }
      }

      else
      {
        v678 = v659;
        v675 = v863;
        sub_219802C80(v678, v863, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
        v677 = v849;
      }

      v679 = v1039;
      sub_219802C80(v675, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleContinuePlayingKnobs], type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
      sub_219802BB8(v1021, v670, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
      v680 = *(v939 + 48);
      if (v680(v670, 1, v660) == 1)
      {
        v681 = v1036;
        (*(v1037 + 56))(v1036, 1, 1, v665);
        v682 = v660;
        v683 = v864;
        sub_219834934(v681, 0, 0, 0, 0, v864);
        if (v680(v670, 1, v682) != 1)
        {
          sub_219802C24(v670, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
        }
      }

      else
      {
        v683 = v864;
        sub_219802C80(v670, v864, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
      }

      sub_219802C80(v683, &v679[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleFeaturedKnobs], type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
      sub_219802BB8(v1022, v677, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
      v684 = *(v940 + 48);
      v685 = v970;
      if (v684(v677, 1, v970) == 1)
      {
        v686 = v1036;
        v687 = v1038;
        (*(v1037 + 56))(v1036, 1, 1, v1038);
        v688 = v865;
        sub_218DAEB34(v686, v865);
        v689 = v684(v677, 1, v685);
        v690 = v688;
        v691 = v1023;
        v692 = v854;
        v693 = v912;
        v694 = v971;
        if (v689 != 1)
        {
          sub_219802C24(v677, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
        }
      }

      else
      {
        v690 = v865;
        sub_219802C80(v677, v865, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
        v691 = v1023;
        v692 = v854;
        v693 = v912;
        v694 = v971;
        v687 = v1038;
      }

      sub_219802C80(v690, &v679[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleFullArchiveKnobs], type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
      v695 = v887;
      sub_219802BB8(v691, v887, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
      v696 = *(v693 + 48);
      if (v696(v695, 1, v694) == 1)
      {
        v697 = v1036;
        (*(v1037 + 56))(v1036, 1, 1, v687);
        v698 = v866;
        sub_2198A3F98(v697, 0, 0, 0, v866);
        v699 = v696(v695, 1, v694);
        v700 = v698;
        v701 = v852;
        v702 = v972;
        v703 = v913;
        if (v699 != 1)
        {
          sub_219802C24(v695, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
        }
      }

      else
      {
        v700 = v866;
        sub_219802C80(v695, v866, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
        v697 = v1036;
        v701 = v852;
        v702 = v972;
        v703 = v913;
      }

      sub_219802C80(v700, &v679[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleScoreboardKnobs], type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
      sub_219802BB8(v1024, v701, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
      v704 = *(v703 + 48);
      if (v704(v701, 1, v702) == 1)
      {
        (*(v1037 + 56))(v697, 1, 1, v1038);
        v705 = v701;
        v706 = v867;
        sub_218C4F3A4(v697, 0, v867);
        v707 = v704(v701, 1, v702);
        v708 = v706;
        v709 = v942;
        v710 = v914;
        v711 = v860;
        if (v707 != 1)
        {
          sub_219802C24(v705, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
        }
      }

      else
      {
        v708 = v867;
        sub_219802C80(v701, v867, type metadata accessor for AffinityTagFeedGroupKnobs);
        v709 = v942;
        v710 = v914;
        v711 = v860;
      }

      sub_219802C80(v708, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_affinityKnobs], type metadata accessor for AffinityTagFeedGroupKnobs);
      sub_219802BB8(v1025, v692, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
      v712 = *(v710 + 48);
      v713 = v973;
      v714 = v712(v692, 1, v973);
      v715 = v888;
      if (v714 == 1)
      {
        (*(v1037 + 56))(v697, 1, 1, v1038);
        v716 = v868;
        sub_219584360(v697, v868);
        v717 = v712(v692, 1, v713);
        v718 = v716;
        v719 = v915;
        if (v717 != 1)
        {
          sub_219802C24(v692, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
        }
      }

      else
      {
        v718 = v868;
        sub_219802C80(v692, v868, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
        v719 = v915;
      }

      sub_219802C80(v718, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sponsoredSuperfeedKnobs], type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
      sub_219802BB8(v1026, v715, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
      v720 = *(v719 + 48);
      v721 = v974;
      if (v720(v715, 1, v974) == 1)
      {
        (*(v1037 + 56))(v697, 1, 1, v1038);
        v722 = sub_219BEF814();
        v723 = v982;
        (*(*(v722 - 8) + 56))(v982, 1, 1, v722);
        v724 = v869;
        sub_2195650F8(v697, v723, 0, 0, 0, 0, 0, v869);
        v725 = v720(v715, 1, v721);
        v726 = v724;
        v727 = v917;
        v728 = v856;
        v729 = v975;
        v730 = v916;
        if (v725 != 1)
        {
          sub_219802C24(v715, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
        }
      }

      else
      {
        v726 = v869;
        sub_219802C80(v715, v869, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
        v727 = v917;
        v728 = v856;
        v729 = v975;
        v730 = v916;
      }

      sub_219802C80(v726, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelRecipesKnobs], type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
      sub_219802BB8(v1027, v728, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
      v731 = *(v730 + 48);
      if (v731(v728, 1, v729) == 1)
      {
        (*(v1037 + 56))(v697, 1, 1, v1038);
        v732 = sub_219BEF244();
        (*(*(v732 - 8) + 56))(v709, 1, 1, v732);
        v733 = v728;
        v734 = v729;
        v735 = v870;
        sub_21955FA10(v697, 0, 0, v709, 0, 0, v870);
        v736 = v731(v733, 1, v734);
        v737 = v858;
        v738 = v918;
        if (v736 != 1)
        {
          sub_219802C24(v733, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
        }
      }

      else
      {
        v735 = v870;
        sub_219802C80(v728, v870, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
        v737 = v858;
        v738 = v918;
      }

      sub_219802C80(v735, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_forYouRecipesKnobs], type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
      sub_219802BB8(v1028, v737, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
      v739 = *(v727 + 48);
      v740 = v976;
      if (v739(v737, 1, v976) == 1)
      {
        (*(v1037 + 56))(v697, 1, 1, v1038);
        v741 = sub_219BEF244();
        (*(*(v741 - 8) + 56))(v709, 1, 1, v741);
        v742 = v871;
        sub_21942AA5C(v697, 0, 0, v709, 0, v871);
        v743 = v739(v737, 1, v740);
        v744 = v742;
        v745 = v969;
        v746 = v978;
        if (v743 != 1)
        {
          sub_219802C24(v737, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
        }
      }

      else
      {
        v744 = v871;
        sub_219802C80(v737, v871, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
        v745 = v969;
        v746 = v978;
      }

      v747 = v1039;
      sub_219802C80(v744, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_latestRecipesKnobs], type metadata accessor for LatestRecipesTagFeedGroupKnobs);
      sub_219802BB8(v1029, v711, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
      v748 = *(v941 + 48);
      v749 = v977;
      if (v748(v711, 1, v977) == 1)
      {
        (*(v1037 + 56))(v697, 1, 1, v1038);
        v750 = v873;
        sub_218E887B8(v697, 0, 0, v873);
        v751 = v748(v711, 1, v749);
        v752 = v750;
        v747 = v1039;
        v753 = v872;
        v754 = v979;
        if (v751 != 1)
        {
          sub_219802C24(v711, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
        }
      }

      else
      {
        v752 = v873;
        sub_219802C80(v711, v873, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
        v753 = v872;
        v754 = v979;
      }

      sub_219802C80(v752, &v747[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_recentlyViewedRecipesKnobs], type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
      v755 = v890;
      sub_219802BB8(v1030, v890, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
      v756 = *(v738 + 48);
      if (v756(v755, 1, v746) == 1)
      {
        (*(v1037 + 56))(v697, 1, 1, v1038);
        v757 = v874;
        sub_218FFFEBC(v697, 0, v874);
        v758 = v756(v755, 1, v746);
        v759 = v757;
        v747 = v1039;
        v383 = v758 == 1;
        v760 = v755;
        v761 = v919;
        if (!v383)
        {
          sub_219802C24(v760, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
        }
      }

      else
      {
        v759 = v874;
        sub_219802C80(v755, v874, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
        v761 = v919;
      }

      sub_219802C80(v759, &v747[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_savedRecipesKnobs], type metadata accessor for SavedRecipesTagFeedGroupKnobs);
      v762 = v891;
      sub_219802BB8(v1031, v891, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
      v763 = *(v761 + 48);
      if (v763(v762, 1, v754) == 1)
      {
        (*(v1037 + 56))(v697, 1, 1, v1038);
        v764 = v875;
        sub_218C6AC0C(v697, 0, 0, v875);
        v765 = v763(v762, 1, v754);
        v766 = v764;
        v747 = v1039;
        v767 = v982;
        if (v765 != 1)
        {
          sub_219802C24(v762, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
        }
      }

      else
      {
        v766 = v875;
        sub_219802C80(v762, v875, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
        v767 = v982;
      }

      sub_219802C80(v766, &v747[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_trendingRecipesKnobs], type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
      sub_219802BB8(v745, v753, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
      v769 = v989 + 48;
      v768 = *(v989 + 48);
      v770 = v768(v753, 1, v987);
      v771 = v1031;
      if (v770 == 1)
      {
        v772 = v745;
        v773 = v1036;
        (*(v1037 + 56))(v1036, 1, 1, v1038);
        v774 = sub_219BEF814();
        v1046 = v768;
        v775 = v774;
        v776 = *(v774 - 8);
        v989 = v769;
        v777 = *(v776 + 56);
        v777(v767, 1, 1, v774);
        v778 = v806;
        v777(v806, 1, 1, v775);
        v779 = v876;
        sub_218D1D278(v773, v767, v778, 0, 0, 0, 0, 0, v876);
        sub_219802C24(v772, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
        sub_219802C24(v771, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
        sub_219802C24(v1030, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
        sub_219802C24(v1029, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
        sub_219802C24(v1028, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
        sub_219802C24(v1027, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
        sub_219802C24(v1026, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
        sub_219802C24(v1025, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
        sub_219802C24(v1024, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
        sub_219802C24(v1023, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
        sub_219802C24(v1022, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
        sub_219802C24(v1021, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
        sub_219802C24(v1020, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
        sub_219802C24(v1019, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
        sub_219802C24(v1018, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
        sub_219802C24(v1017, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
        sub_219802C24(v1016, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
        sub_219802C24(v1015, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
        sub_219802C24(v1014, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
        sub_219802C24(v1013, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
        sub_219802C24(v1012, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
        sub_219802C24(v1011, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
        sub_219802C24(v1010, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
        sub_219802C24(v1009, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
        sub_219802C24(v1008, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
        sub_219802C24(v1007, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
        sub_219802C24(v1006, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
        sub_219802C24(v1005, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
        sub_219802C24(v1004, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
        sub_219802C24(v1003, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
        sub_219802C24(v1002, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
        sub_219802C24(v1001, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
        sub_219802C24(v1000, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
        sub_219802C24(v999, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
        sub_219802C24(v998, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
        sub_219802C24(v997, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
        sub_219802C24(v995, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
        sub_219802C24(v996, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
        sub_219802C24(v1033, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
        sub_219802C24(v994, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
        sub_219802C24(v993, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
        sub_219802C24(v992, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
        sub_219802C24(v893, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
        sub_219802C24(v892, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
        v780 = (v1046)(v753, 1, v987);
        v781 = v1040;
        v782 = v791;
        if (v780 != 1)
        {
          sub_219802C24(v753, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
        }
      }

      else
      {
        sub_219802C24(v745, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
        sub_219802C24(v771, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
        sub_219802C24(v1030, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
        sub_219802C24(v1029, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
        sub_219802C24(v1028, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
        sub_219802C24(v1027, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
        sub_219802C24(v1026, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
        sub_219802C24(v1025, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
        sub_219802C24(v1024, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
        sub_219802C24(v1023, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
        sub_219802C24(v1022, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
        sub_219802C24(v1021, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
        sub_219802C24(v1020, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
        sub_219802C24(v1019, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
        sub_219802C24(v1018, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
        sub_219802C24(v1017, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
        sub_219802C24(v1016, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
        sub_219802C24(v1015, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
        sub_219802C24(v1014, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
        sub_219802C24(v1013, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
        sub_219802C24(v1012, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
        sub_219802C24(v1011, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
        sub_219802C24(v1010, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
        sub_219802C24(v1009, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
        sub_219802C24(v1008, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
        sub_219802C24(v1007, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
        sub_219802C24(v1006, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
        sub_219802C24(v1005, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
        sub_219802C24(v1004, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
        sub_219802C24(v1003, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
        sub_219802C24(v1002, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
        sub_219802C24(v1001, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
        sub_219802C24(v1000, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
        sub_219802C24(v999, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
        sub_219802C24(v998, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
        sub_219802C24(v997, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
        sub_219802C24(v995, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
        sub_219802C24(v996, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
        sub_219802C24(v1033, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
        sub_219802C24(v994, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
        sub_219802C24(v993, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
        sub_219802C24(v992, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
        sub_219802C24(v893, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
        sub_219802C24(v892, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
        v779 = v876;
        sub_219802C80(v753, v876, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
        v781 = v1040;
        v782 = v791;
      }

      sub_219802C80(v779, &v1039[OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_topicRecipesKnobs], type metadata accessor for TopicRecipesTagFeedGroupKnobs);
      (*(v782 + 8))(v1041, v781);
      __swift_destroy_boxed_opaque_existential_1(v990);
    }
  }
}

unint64_t sub_219802B2C()
{
  result = qword_280ED4D60;
  if (!qword_280ED4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED4D60);
  }

  return result;
}

uint64_t sub_219802BB8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186EDE00(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219802C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186EDE00(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219802C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219802CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219802D50(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_219802DA8(255, a3, a4);
    v5 = sub_219BF6FB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_219802DA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_219802E10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219802B2C();
    v7 = a3(a1, &type metadata for TagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219802E74(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_219802D50(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_219802EE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219802F58()
{
  result = qword_280ED4D68;
  if (!qword_280ED4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED4D68);
  }

  return result;
}

unint64_t sub_219802FB0()
{
  result = qword_280ED4D50;
  if (!qword_280ED4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED4D50);
  }

  return result;
}

unint64_t sub_219803008()
{
  result = qword_280ED4D58;
  if (!qword_280ED4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED4D58);
  }

  return result;
}

uint64_t sub_219803080(uint64_t a1)
{
  sub_218718690(*v1 + 16, &v7);
  v6 = a1;
  sub_219803120(&v6, &v5);
  sub_21980317C(0);
  swift_allocObject();
  sub_219619B88();

  v3 = sub_219BE6E64();
  sub_2198031F8(&v6);
  return v3;
}

void sub_21980317C(uint64_t a1)
{
  if (!qword_27CC1FA38)
  {
    sub_218DB6788();
    sub_218DB6840();
    v1 = sub_219BE6E74();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1FA38);
    }
  }
}

uint64_t sub_21980324C()
{
  if (v0[23])
  {
    v1 = v0[23];
  }

  else
  {
    v2 = v0;
    v3 = v0[8];
    v4 = v0[9];
    __swift_project_boxed_opaque_existential_1(v0 + 5, v3);
    (*(v4 + 24))(v3, v4);
    v5 = sub_219BE2E54();
    sub_219806024(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
    sub_219BE2F94();

    v6 = sub_219BE2E54();
    v1 = sub_219BE3034();

    v2[23] = v1;
  }

  return v1;
}

double sub_2198033C8(void x0_0, void *a1)
{
  v2 = a1[8];
  v3 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v2);
  (*(v3 + 8))(v2, v3);
  sub_219BE1A44();

  sub_219BE2184();

  return result;
}

uint64_t sub_219803458(void *a1)
{
  v1 = a1[8];
  v2 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v1);
  (*(v2 + 8))(v1, v2);
  sub_219BE1A44();

  v3 = sub_219BE2E54();
  sub_219BE21A4();

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_219BE1A04();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void sub_219803544()
{
  v1 = v0;
  sub_219806024(0, qword_280ED8300, type metadata accessor for MyMagazinesState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for MyMagazinesState(0);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v30 = &v29 - v9;
  sub_219806024(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = (&v29 - v13);
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  (*(v16 + 8))(v15, v16);
  sub_219BE1A44();

  sub_219BE2184();

  v17 = (*(v12 + 88))(v14, v11);
  if (v17 == *MEMORY[0x277D6C9F0])
  {
    (*(v12 + 96))(v14, v11);
    v18 = *v14;
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    v19 = qword_280F617C8;
    sub_2186F20D4(0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C09BA0;
    v31 = 0;
    v32 = 0xE000000000000000;
    v33 = v18;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    v21 = v31;
    v22 = v32;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_2186FC3BC();
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    v23 = sub_219BF6214();
    sub_219BE5314("Failed to retrieve My Magazines state! Error: %{public}@", 56, 2, &dword_2186C1000, v19, v23, v20);
  }

  else if (v17 == *MEMORY[0x277D6C9E8])
  {
    (*(v12 + 96))(v14, v11);
    v24 = v14;
    v25 = v30;
    sub_2190704B8(v24, v30, type metadata accessor for MyMagazinesState);
    sub_219803ABC(v25, v7);
    sub_2195E5B7C(v7, v4, type metadata accessor for MyMagazinesState);
    (*(v29 + 56))(v4, 0, 1, v5);
    v26 = OBJC_IVAR____TtC7NewsUI226MyMagazinesGridModelLoader_lastKnownState;
    swift_beginAccess();
    sub_2198060F8(v4, v1 + v26);
    v27 = swift_endAccess();
    MEMORY[0x28223BE20](v27);
    sub_219BE3204();

    v28 = sub_219BE2E54();
    sub_219BE2F74();

    sub_219070458(v25, type metadata accessor for MyMagazinesState);
    sub_219070458(v7, type metadata accessor for MyMagazinesState);
  }

  else if (v17 != *MEMORY[0x277D6C9E0])
  {
    sub_219BF7514();
    __break(1u);
  }
}

uint64_t sub_219803ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v122 = a1;
  v127 = type metadata accessor for MyMagazinesIssue(0);
  v120 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v124 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v128 = (&v114 - v5);
  MEMORY[0x28223BE20](v6);
  v8 = (&v114 - v7);
  MEMORY[0x28223BE20](v9);
  v115 = &v114 - v10;
  v11 = MEMORY[0x277D83D88];
  sub_219806024(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v123 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v117 = &v114 - v15;
  MEMORY[0x28223BE20](v16);
  v116 = &v114 - v17;
  MEMORY[0x28223BE20](v18);
  v119 = &v114 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = (&v114 - v21);
  sub_219806024(0, qword_280ED8300, type metadata accessor for MyMagazinesState, v11);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v114 - v24;
  v26 = type metadata accessor for MyMagazinesState(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC7NewsUI226MyMagazinesGridModelLoader_lastKnownState;
  swift_beginAccess();
  sub_2198065B4(v2 + v30, v25, qword_280ED8300, type metadata accessor for MyMagazinesState);
  v31 = *(v27 + 48);
  v118 = v26;
  if (v31(v25, 1, v26) == 1)
  {
    sub_219806634(v25, qword_280ED8300, type metadata accessor for MyMagazinesState);
    v33 = v121;
    v32 = v122;
    return sub_2195E5B7C(v32, v33, type metadata accessor for MyMagazinesState);
  }

  v34 = v122;
  sub_2190704B8(v25, v29, type metadata accessor for MyMagazinesState);
  sub_2198065B4(v29, v22, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
  v35 = v127;
  v125 = *(v120 + 48);
  v126 = v120 + 48;
  v36 = v29;
  if (v125(v22, 1, v127) == 1)
  {
    sub_219806634(v22, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v39 = [*v22 identifier];
    v37 = sub_219BF5414();
    v38 = v40;

    sub_219070458(v22, type metadata accessor for MyMagazinesIssue);
  }

  v41 = v34;
  v42 = v119;
  sub_2198065B4(v34, v119, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
  if (v125(v42, 1, v35) == 1)
  {
    sub_219806634(v42, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    if (!v38)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v119 = v37;
  v43 = v36;
  v44 = v35;
  v45 = v34;
  v46 = [*v42 identifier];
  v47 = sub_219BF5414();
  v48 = v42;
  v50 = v49;

  sub_219070458(v48, type metadata accessor for MyMagazinesIssue);
  v41 = v45;
  v35 = v44;
  v36 = v43;
  if (!v38)
  {
    if (!v50)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (!v50)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (v119 == v47 && v38 == v50)
  {

    goto LABEL_19;
  }

  v51 = sub_219BF78F4();

  if ((v51 & 1) == 0)
  {
LABEL_17:
    sub_219070458(v36, type metadata accessor for MyMagazinesState);
    v32 = v41;
    v33 = v121;
    return sub_2195E5B7C(v32, v33, type metadata accessor for MyMagazinesState);
  }

LABEL_19:
  v52 = v116;
  sub_2198065B4(v36, v116, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
  v53 = v125(v52, 1, v35);
  v114 = v36;
  if (v53 == 1)
  {
    sub_219806634(v52, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    v54 = *(v36 + *(v118 + 20));

    v116 = v54;
    v55 = v120;
  }

  else
  {
    v56 = v115;
    sub_2190704B8(v52, v115, type metadata accessor for MyMagazinesIssue);
    sub_219806024(0, &unk_280E8BBF0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D84560]);
    v55 = v120;
    v57 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_219C09BA0;
    sub_2195E5B7C(v56, v58 + v57, type metadata accessor for MyMagazinesIssue);
    v129 = v58;

    sub_2191EDC74(v116);
    sub_219070458(v56, type metadata accessor for MyMagazinesIssue);
    v54 = v129;
  }

  v59 = *(v54 + 16);
  v60 = MEMORY[0x277D84F90];
  if (v59)
  {
    v129 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v59, 0);
    v61 = v129;
    v62 = *(v55 + 80);
    v119 = v54;
    v63 = v54 + ((v62 + 32) & ~v62);
    v64 = *(v55 + 72);
    do
    {
      sub_2195E5B7C(v63, v8, type metadata accessor for MyMagazinesIssue);
      v65 = [*v8 identifier];
      v66 = sub_219BF5414();
      v68 = v67;

      sub_219070458(v8, type metadata accessor for MyMagazinesIssue);
      v129 = v61;
      v70 = *(v61 + 16);
      v69 = *(v61 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_21870B65C((v69 > 1), v70 + 1, 1);
        v61 = v129;
      }

      *(v61 + 16) = v70 + 1;
      v71 = v61 + 16 * v70;
      *(v71 + 32) = v66;
      *(v71 + 40) = v68;
      v63 += v64;
      --v59;
    }

    while (v59);

    v55 = v120;
    v60 = MEMORY[0x277D84F90];
  }

  else
  {

    v61 = MEMORY[0x277D84F90];
  }

  v72 = sub_218845F78(v61);

  sub_2195ED7DC();
  v74 = v73;
  v75 = *(v73 + 16);
  if (v75)
  {
    v119 = v72;
    v129 = v60;
    sub_21870B65C(0, v75, 0);
    v76 = v129;
    v77 = *(v55 + 80);
    v115 = v74;
    v78 = v74 + ((v77 + 32) & ~v77);
    v79 = *(v55 + 72);
    do
    {
      sub_2195E5B7C(v78, v8, type metadata accessor for MyMagazinesIssue);
      v80 = [*v8 &_OBJC_LABEL_PROTOCOL___FCPrivateChannelMembershipObserving];
      v81 = sub_219BF5414();
      v83 = v82;

      sub_219070458(v8, type metadata accessor for MyMagazinesIssue);
      v129 = v76;
      v85 = *(v76 + 16);
      v84 = *(v76 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_21870B65C((v84 > 1), v85 + 1, 1);
        v76 = v129;
      }

      *(v76 + 16) = v85 + 1;
      v86 = v76 + 16 * v85;
      *(v86 + 32) = v81;
      *(v86 + 40) = v83;
      v78 += v79;
      --v75;
    }

    while (v75);

    v72 = v119;
  }

  else
  {

    v76 = MEMORY[0x277D84F90];
  }

  v87 = sub_218845F78(v76);

  v88 = sub_21947C09C(v72, v87);

  v89 = v121;
  if ((v88 & 1) == 0)
  {
    sub_219070458(v114, type metadata accessor for MyMagazinesState);
    v32 = v122;
    v33 = v89;
    return sub_2195E5B7C(v32, v33, type metadata accessor for MyMagazinesState);
  }

  v90 = v122;
  v129 = *(v122 + *(v118 + 20));
  sub_219806024(0, &qword_280E8F300, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83940]);
  sub_2198066A4();
  sub_21980672C(&qword_27CC1FA78, type metadata accessor for MyMagazinesIssue, &unk_219C90EB8);
  v91 = sub_219BF56C4();
  sub_2198065B4(v90, v117, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
  v92 = *(v116 + 16);
  if (v92)
  {
    v119 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v93 = v116 + v119;
    v94 = *(v120 + 72);
    v95 = (v120 + 56);
    v96 = MEMORY[0x277D84F90];
    while (1)
    {
      v97 = v128;
      sub_2195E5B7C(v93, v128, type metadata accessor for MyMagazinesIssue);
      v98 = [*v97 identifier];
      v99 = sub_219BF5414();
      v101 = v100;

      if (!*(v91 + 16))
      {
        break;
      }

      v102 = sub_21870F700(v99, v101);
      v104 = v103;

      if ((v104 & 1) == 0)
      {
        goto LABEL_45;
      }

      v105 = *(v91 + 56) + v102 * v94;
      v106 = v123;
      sub_2195E5B7C(v105, v123, type metadata accessor for MyMagazinesIssue);
      v107 = 0;
LABEL_46:
      v108 = v127;
      (*v95)(v106, v107, 1, v127);
      sub_219070458(v128, type metadata accessor for MyMagazinesIssue);
      if (v125(v106, 1, v108) == 1)
      {
        sub_219806634(v106, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
      }

      else
      {
        sub_2190704B8(v106, v124, type metadata accessor for MyMagazinesIssue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_2191F7828(0, v96[2] + 1, 1, v96);
        }

        v110 = v96[2];
        v109 = v96[3];
        if (v110 >= v109 >> 1)
        {
          v96 = sub_2191F7828((v109 > 1), v110 + 1, 1, v96);
        }

        v96[2] = v110 + 1;
        sub_2190704B8(v124, v96 + v119 + v110 * v94, type metadata accessor for MyMagazinesIssue);
      }

      v93 += v94;
      if (!--v92)
      {

        v89 = v121;
        goto LABEL_56;
      }
    }

LABEL_45:
    v107 = 1;
    v106 = v123;
    goto LABEL_46;
  }

  v96 = MEMORY[0x277D84F90];
LABEL_56:
  sub_219070458(v114, type metadata accessor for MyMagazinesState);
  v112 = v118;
  v113 = *(v122 + *(v118 + 24));
  result = sub_219119508(v117, v89);
  *(v89 + *(v112 + 20)) = v96;
  *(v89 + *(v112 + 24)) = v113;
  return result;
}

uint64_t sub_219804854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);

  sub_219BDC8E4();

  v7 = v17;
  v15 = a2;
  v16 = a1;
  sub_219806024(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_2195E5B7C(a2, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MyMagazinesState);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_2190704B8(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for MyMagazinesState);
  v10 = v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v10 = sub_219806784;
  *(v10 + 8) = a1;
  *(v10 + 16) = v7;
  swift_retain_n();
  v11 = sub_219BE2E54();
  v12 = sub_219BE2F64();

  return v12;
}

unint64_t *sub_219804A70()
{
  sub_218774F78((v0 + 2));
  sub_218932F9C(v0[4]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  swift_unknownObjectRelease();

  sub_219806634(v0 + OBJC_IVAR____TtC7NewsUI226MyMagazinesGridModelLoader_lastKnownState, qword_280ED8300, type metadata accessor for MyMagazinesState);
  return v0;
}

uint64_t sub_219804AF4()
{
  sub_219804A70();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MyMagazinesGridModelLoader(uint64_t a1)
{
  result = qword_27CC1FA48;
  if (!qword_27CC1FA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219804BA0(uint64_t a1)
{
  sub_219806024(319, qword_280ED8300, type metadata accessor for MyMagazinesState, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_219804CA0(char a1)
{
  if (a1 == 4)
  {

    sub_219BDC8E4();
  }

  sub_219BDC8F4();

  sub_219BDC8E4();

  sub_219806024(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v4;
  v1 = sub_219BE2E54();
  v2 = sub_219BE2F84();

  return v2;
}

uint64_t sub_219804E34(uint64_t a1, void *a2, int a3)
{
  v36 = a3;
  sub_219806024(0, qword_280ED8300, type metadata accessor for MyMagazinesState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for MyMagazinesState(0);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v35 = &v32 - v11;
  sub_219806024(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v18 = a2[8];
  v17 = a2[9];
  __swift_project_boxed_opaque_existential_1(a2 + 5, v18);
  (*(v17 + 8))(v18, v17);
  sub_219BE1A44();

  sub_219BE2184();

  v19 = (*(v14 + 88))(v16, v13);
  if (v19 == *MEMORY[0x277D6C9F0])
  {
    (*(v14 + 96))(v16, v13);
  }

  else
  {
    if (v19 == *MEMORY[0x277D6C9E8])
    {
      (*(v14 + 96))(v16, v13);
      v20 = v35;
      sub_2190704B8(v16, v35, type metadata accessor for MyMagazinesState);
      sub_2195E5B7C(v20, v6, type metadata accessor for MyMagazinesState);
      v21 = v33 + 56;
      (*(v33 + 56))(v6, 0, 1, v32);
      v22 = OBJC_IVAR____TtC7NewsUI226MyMagazinesGridModelLoader_lastKnownState;
      swift_beginAccess();
      sub_2198060F8(v6, a2 + v22);
      v23 = swift_endAccess();
      MEMORY[0x28223BE20](v23);
      sub_219806024(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
      sub_219BE3204();
      v24 = v34;
      sub_2195E5B7C(v20, v34, type metadata accessor for MyMagazinesState);
      v25 = (*(v21 + 24) + 24) & ~*(v21 + 24);
      v26 = swift_allocObject();
      *(v26 + 16) = a2;
      sub_2190704B8(v24, v26 + v25, type metadata accessor for MyMagazinesState);
      v27 = v26 + ((v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v27 = sub_2198061A8;
      *(v27 + 8) = a2;
      *(v27 + 16) = v36;
      swift_retain_n();
      v28 = sub_219BE2E54();
      v29 = sub_219BE2F64();

      sub_219070458(v20, type metadata accessor for MyMagazinesState);
      return v29;
    }

    if (v19 != *MEMORY[0x277D6C9E0])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    sub_2198060A4();
    swift_allocError();
    *v31 = 0;
  }

  sub_21870F4C4(0, &qword_27CC13080, &type metadata for MagazineGridModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE2FF4();
}

uint64_t sub_2198053BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesIssue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2195ED7DC();
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v25[1] = v2;
    v25[2] = a2;
    v27 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v10, 0);
    v11 = v27;
    v12 = *(v5 + 80);
    v25[0] = v9;
    v13 = v9 + ((v12 + 32) & ~v12);
    v26 = *(v5 + 72);
    do
    {
      sub_2195E5B7C(v13, v7, type metadata accessor for MyMagazinesIssue);
      v14 = [objc_msgSend(*v7 sourceChannel];
      swift_unknownObjectRelease();
      v15 = sub_219BF5414();
      v17 = v16;

      sub_219070458(v7, type metadata accessor for MyMagazinesIssue);
      v27 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_21870B65C((v18 > 1), v19 + 1, 1);
        v11 = v27;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v13 += v26;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v27 = v11;
  sub_21870F4C4(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_218ACCAC0();
  v21 = sub_219BF56E4();

  v22 = off_282A4D758;
  type metadata accessor for TagService();
  v23 = v22(v21);

  return v23;
}

uint64_t sub_219805690(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_21870F4C4(0, &qword_27CC13080, &type metadata for MagazineGridModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_219805728(void (*a1)(_OWORD *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(void), uint64_t a9, char a10)
{
  v74 = a8;
  v75 = a2;
  v76 = a1;
  v12 = type metadata accessor for MyMagazinesIssue(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218718690(a5 + 120, v83);
  __swift_project_boxed_opaque_existential_1(v83, *&v83[24]);
  sub_2195ED7DC();
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    *&v81[0] = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v19 = v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v20 = *(v13 + 72);
    do
    {
      sub_2195E5B7C(v19, v15, type metadata accessor for MyMagazinesIssue);
      v21 = *v15;
      sub_219070458(v15, type metadata accessor for MyMagazinesIssue);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v19 += v20;
      --v18;
    }

    while (v18);

    v22 = *&v81[0];
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v23 = sub_21945CCB8(v22);

  __swift_destroy_boxed_opaque_existential_1(v83);
  if (a7 >> 62)
  {
    goto LABEL_32;
  }

  v24 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v80 = v23;
  if (!v24)
  {
LABEL_33:
    v23 = MEMORY[0x277D84F98];
LABEL_34:
    v44 = v80[2];
    if (!v44)
    {
      v47 = MEMORY[0x277D84F90];
      goto LABEL_51;
    }

    v45 = 0;
    v46 = v80 + 4;
    v79 = v44 - 1;
    v47 = MEMORY[0x277D84F90];
LABEL_36:
    v48 = &v46[4 * v45];
    v49 = v45;
    while (1)
    {
      if (v49 >= v80[2])
      {
        __break(1u);
        goto LABEL_53;
      }

      v50 = *(v48 + 9);
      *v83 = *v48;
      *&v83[9] = v50;
      v51 = *v83;
      sub_218950CAC(v83, v81);
      v52 = [objc_msgSend(v51 sourceChannel)];
      swift_unknownObjectRelease();
      v53 = sub_219BF5414();
      v55 = v54;

      if (v23[2])
      {
        v56 = sub_21870F700(v53, v55);
        v58 = v57;

        if (v58)
        {
          v59 = *(v23[7] + 8 * v56);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_2191FA8B4(0, *(v47 + 2) + 1, 1, v47);
          }

          v61 = *(v47 + 2);
          v60 = *(v47 + 3);
          if (v61 >= v60 >> 1)
          {
            v47 = sub_2191FA8B4((v60 > 1), v61 + 1, 1, v47);
          }

          v45 = v49 + 1;
          v62 = *&v83[16];
          v63 = v83[24];
          *(v47 + 2) = v61 + 1;
          v64 = &v47[120 * v61];
          v65 = *v83;
          *(v64 + 4) = v59;
          *(v64 + 40) = v65;
          *(v64 + 7) = v62;
          v64[64] = v63;
          LODWORD(v62) = *(v81 + 3);
          *(v64 + 65) = v81[0];
          *(v64 + 17) = v62;
          v64[96] = 0;
          *(v64 + 10) = 0;
          *(v64 + 11) = 0;
          *(v64 + 9) = 0;
          LODWORD(v62) = *&v85[3];
          *(v64 + 97) = *v85;
          *(v64 + 25) = v62;
          *(v64 + 136) = 0u;
          *(v64 + 120) = 0u;
          *(v64 + 104) = 0u;
          if (v79 == v49)
          {
LABEL_51:

            type metadata accessor for Localized();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v67 = [objc_opt_self() bundleForClass_];
            v68 = sub_219BDB5E4();
            v70 = v69;

            v71 = v74();
            *v83 = v47;
            *&v83[8] = v68;
            *v84 = 0;
            *&v83[16] = v70;
            v84[8] = 1;
            *&v84[16] = v71;
            v84[24] = a10;
            v81[0] = *v83;
            v81[1] = v70;
            v82[0] = *v84;
            *(v82 + 9) = *&v84[9];
            v76(v81);
            return sub_219093EAC(v83);
          }

          goto LABEL_36;
        }

        sub_218950D08(v83);
      }

      else
      {
        sub_218950D08(v83);
      }

      ++v49;
      v48 += 2;
      if (v44 == v49)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_8:
  v25 = 0;
  v78 = a7 & 0xFFFFFFFFFFFFFF8;
  v79 = a7 & 0xC000000000000001;
  v23 = MEMORY[0x277D84F98];
  v77 = a7;
  while (1)
  {
    if (v79)
    {
      v26 = MEMORY[0x21CECE0F0](v25, a7);
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v25 >= *(v78 + 16))
      {
        goto LABEL_29;
      }

      v26 = *(a7 + 8 * v25 + 32);

      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v24 = sub_219BF7214();
        v80 = v23;
        if (!v24)
        {
          goto LABEL_33;
        }

        goto LABEL_8;
      }
    }

    v28 = [*(v26 + 16) identifier];
    v29 = sub_219BF5414();
    a7 = v30;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v83 = v23;
    v33 = sub_21870F700(v29, a7);
    v34 = v23[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_30;
    }

    v37 = v32;
    if (v23[3] < v36)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v32)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_219492A6C();
      if (v37)
      {
LABEL_9:

        v23 = *v83;
        *(*(*v83 + 56) + 8 * v33) = v26;

        goto LABEL_10;
      }
    }

LABEL_21:
    v23 = *v83;
    *(*v83 + 8 * (v33 >> 6) + 64) |= 1 << v33;
    v40 = (v23[6] + 16 * v33);
    *v40 = v29;
    v40[1] = a7;
    *(v23[7] + 8 * v33) = v26;

    v41 = v23[2];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_31;
    }

    v23[2] = v43;
LABEL_10:
    ++v25;
    a7 = v77;
    if (v27 == v24)
    {
      goto LABEL_34;
    }
  }

  sub_219481C7C(v36, isUniquelyReferenced_nonNull_native);
  v38 = sub_21870F700(v29, a7);
  if ((v37 & 1) == (v39 & 1))
  {
    v33 = v38;
    if (v37)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_53:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_219805E40()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

unint64_t sub_219805F08@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = v2;
  return sub_2189EB264(v2);
}

uint64_t sub_219805F5C(uint64_t a1)
{
  result = sub_21980672C(&qword_27CC1FA58, type metadata accessor for MyMagazinesGridModelLoader, &unk_219CA92E8);
  *(a1 + 8) = result;
  return result;
}

void sub_219806024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2198060A4()
{
  result = qword_27CC1FA68;
  if (!qword_27CC1FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FA68);
  }

  return result;
}

uint64_t sub_2198060F8(uint64_t a1, uint64_t a2)
{
  sub_219806024(0, qword_280ED8300, type metadata accessor for MyMagazinesState, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_2198061FC()
{
  v0 = sub_2191FB00C(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_2191FB00C((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  *&v0[8 * v2 + 32] = &unk_282A2A2E0;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    v0 = sub_2191FB00C((v1 > 1), v5, 1, v0);
  }

  *(v0 + 2) = v5;
  *&v0[8 * v4 + 32] = &unk_282A2A290;
  return v0;
}

uint64_t objectdestroy_6Tm_3()
{
  v1 = *(type metadata accessor for MyMagazinesState(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = (v0 + v2);
  v4 = type metadata accessor for MyMagazinesIssue(0);
  if (!(*(*(v4 - 1) + 48))(v0 + v2, 1, v4))
  {

    v5 = v4[6];
    v6 = sub_219BDBD34();
    v11 = *(v6 - 8);
    v7 = *(v11 + 48);
    if (!v7(v3 + v5, 1, v6))
    {
      (*(v11 + 8))(v3 + v5, v6);
    }

    v8 = v4[7];
    if (!v7(v3 + v8, 1, v6))
    {
      (*(v11 + 8))(v3 + v8, v6);
    }

    v9 = v4[8];
    if (!v7(v3 + v9, 1, v6))
    {
      (*(v11 + 8))(v3 + v9, v6);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_219806510(uint64_t *a1)
{
  v3 = *(type metadata accessor for MyMagazinesState(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_219805690(a1, *(v1 + 16), v1 + v4, *v5, *(v5 + 8), *(v5 + 16));
}

uint64_t sub_2198065B4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_219806024(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219806634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219806024(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2198066A4()
{
  result = qword_27CC1FA70;
  if (!qword_27CC1FA70)
  {
    sub_219806024(255, &qword_280E8F300, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FA70);
  }

  return result;
}

uint64_t sub_21980672C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for NameLogoMastheadViewLayoutAttributes(uint64_t a1)
{
  result = qword_27CC1FA80;
  if (!qword_27CC1FA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21980682C(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MastheadViewBackground(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_219806990(void *a1)
{

  v2 = sub_219BF53D4();

  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v4, &v5);
    sub_218C6194C();
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219806A64(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *&v10[1] = a3;
  v10[0] = a4;
  v5 = sub_219806E60(a2, v10);
  sub_2186C61E4();
  sub_219BE3204();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v5;

  v7 = sub_219BE2E54();
  v8 = sub_219BE2F64();

  return v8;
}

uint64_t sub_219806B58(uint64_t *a1)
{
  v1 = *a1;
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625E0);

  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v1 + 16);

    _os_log_impl(&dword_2186C1000, v3, v4, "ContinuePlaying Data Manager Prewarm fetched %ld puzzles.", v5, 0xCu);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  else
  {
  }

  sub_21870F384(0, &unk_280EE6CA0, &type metadata for PuzzleContinuePlayingPrewarmResult, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_219806CC4(void *a1)
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625E0);
  v3 = a1;
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2186C1000, v4, v5, "Failed to prewarm continue playing puzzles: %@", v6, 0xCu);
    sub_218962D30(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  sub_21870F384(0, &unk_280EE6CA0, &type metadata for PuzzleContinuePlayingPrewarmResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219806E60(uint64_t a1, double *a2)
{
  v3 = v2;
  sub_2198091CC(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v50 - v7;
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v53 = *(a2 + 1);
  sub_219BDBD24();
  sub_219BDBBF4();
  v15 = *(v9 + 8);
  v56 = v11;
  v58 = v8;
  v15(v11, v8);
  if (a1)
  {
    v16 = v3[7];
    v54 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v16);
    v17 = [swift_unknownObjectRetain() identifier];
    v18 = sub_219BF5414();
    v55 = v15;

    v19 = sub_219BF3764();
    swift_unknownObjectRelease();
    v15 = v55;
  }

  else
  {
    v18 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v18);
    v19 = sub_219BF3774();
  }

  v15(v14, v58);
  v20 = *(v19 + 16);
  if (!v20)
  {
    v52 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v21 = 0;
  v54 = (v9 + 32);
  v55 = (v9 + 56);
  v22 = v19 + 40;
  v51 = v19 + 40;
  v52 = MEMORY[0x277D84F90];
  v50 = v20 - 1;
  do
  {
    v23 = (v22 + 16 * v21);
    v24 = v21;
    while (1)
    {
      if (v24 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v18 = *(v23 - 1);
      v25 = *v23;
      __swift_project_boxed_opaque_existential_1(v3 + 4, v3[7]);

      v26 = sub_219BF3424();
      if (!v26)
      {
        goto LABEL_8;
      }

      v27 = v26;
      v28 = [v26 usedReveal];
      if (!v28)
      {
        break;
      }

      v29 = v28;
      v30 = [v28 BOOLValue];

      if ((v30 & 1) == 0)
      {
        break;
      }

LABEL_8:

LABEL_9:
      ++v24;
      v23 += 2;
      if (v20 == v24)
      {
        goto LABEL_24;
      }
    }

    v31 = [v27 completedDate];
    if (v31)
    {
      v32 = v31;
      v33 = v56;
      sub_219BDBCA4();

      v34 = v57;
      v35 = v33;
      v18 = v58;
      (*v54)(v57, v35, v58);
      (*v55)(v34, 0, 1, v18);
      sub_219809220(v34, &qword_280EE9C40, MEMORY[0x277CC9578]);
      goto LABEL_9;
    }

    v36 = v57;
    (*v55)(v57, 1, 1, v58);
    sub_219809220(v36, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v37 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21870B65C(0, *(v37 + 16) + 1, 1);
      v37 = v59;
    }

    v40 = *(v37 + 16);
    v39 = *(v37 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_21870B65C((v39 > 1), v40 + 1, 1);
      v37 = v59;
    }

    v21 = v24 + 1;
    *(v37 + 16) = v40 + 1;
    v52 = v37;
    v41 = v37 + 16 * v40;
    *(v41 + 32) = v18;
    *(v41 + 40) = v25;
    v22 = v51;
  }

  while (v50 != v24);
LABEL_24:

  v3 = sub_219A79734();
  if ((v44 & 1) == 0)
  {
    goto LABEL_25;
  }

  v18 = v44;
  v20 = v43;
  v23 = v42;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v47 = swift_dynamicCastClass();
  if (!v47)
  {
    swift_unknownObjectRelease();
    v47 = MEMORY[0x277D84F90];
  }

  v48 = *(v47 + 16);

  if (__OFSUB__(v18 >> 1, v20))
  {
LABEL_35:
    __break(1u);
  }

  else if (v48 == (v18 >> 1) - v20)
  {
    v46 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v46)
    {
      v46 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }

    return v46;
  }

  swift_unknownObjectRelease();
  v44 = v18;
  v43 = v20;
  v42 = v23;
LABEL_25:
  sub_218B666EC(v3, v42, v43, v44);
  v46 = v45;
LABEL_32:
  swift_unknownObjectRelease();
  return v46;
}

uint64_t sub_21980740C()
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F625E0);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Fetching app configuration for continue playing puzzle list...", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  swift_getObjectType();
  return sub_219BF6A64();
}

uint64_t sub_219807510(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v5 = sub_219BE5434();
  __swift_project_value_buffer(v5, qword_280F625E0);
  v6 = sub_219BE5414();
  v7 = sub_219BF6214();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2186C1000, v6, v7, "Continue playing app config fetch complete!", v8, 2u);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  sub_21870F384(0, &qword_280EE6CD0, &type metadata for PuzzleContinuePlayingFetchResult, MEMORY[0x277D6CF30]);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v4;
  v10[4] = a3;
  swift_unknownObjectRetain();

  return sub_219BE2F54();
}

uint64_t sub_2198076AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a3;
  v4[38] = a4;
  v4[35] = a1;
  v4[36] = a2;
  v5 = sub_219BF7464();
  v4[39] = v5;
  v4[40] = *(v5 - 8);
  v4[41] = swift_task_alloc();
  sub_2198091CC(0, &unk_280E8D568, MEMORY[0x277D858F8]);
  v4[42] = swift_task_alloc();
  v6 = sub_219BF7454();
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219807820, 0, 0);
}

uint64_t sub_219807820()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 376) = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v3 = sub_219BE5434();
    *(v0 + 384) = __swift_project_value_buffer(v3, qword_280F625E0);
    v4 = sub_219BE5414();
    v5 = sub_219BF6214();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2186C1000, v4, v5, "Refreshing the puzzle history list for continue playing...", v6, 2u);
      MEMORY[0x21CECF960](v6, -1, -1);
    }

    v8 = *(v0 + 360);
    v7 = *(v0 + 368);
    v9 = *(v0 + 344);
    v10 = *(v0 + 352);
    v11 = *(v0 + 336);

    sub_219BF7434();
    sub_219BF7444();
    v12 = *(v10 + 8);
    *(v0 + 392) = v12;
    *(v0 + 400) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v8, v9);
    (*(v10 + 16))(v11, v7, v9);
    (*(v10 + 56))(v11, 0, 1, v9);
    sub_219BF79D4();
    v13 = swift_task_alloc();
    *(v0 + 408) = v13;
    v14 = sub_2198090D8();
    *v13 = v0;
    v13[1] = sub_219807AF8;
    v16 = *(v0 + 328);
    v15 = *(v0 + 336);
    v17 = *(v0 + 312);
    v18 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2821D1D98](v14, v15, v16, &unk_219CA9590, v2, v17, v18, v14);
  }

  else
  {
    **(v0 + 280) = MEMORY[0x277D84F90];

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_219807AF8()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = v2[42];
  (*(v2[40] + 8))(v2[41], v2[39]);
  sub_219809220(v3, &unk_280E8D568, MEMORY[0x277D858F8]);
  if (v0)
  {
    v4 = sub_2198085DC;
  }

  else
  {
    v4 = sub_219807C98;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_219807C98()
{
  (*(v0 + 392))(*(v0 + 368), *(v0 + 344));
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Fetching incomplete puzzles from puzzle history for continue playing...", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  v4 = *(v0 + 376);
  v5 = *(v0 + 296);

  v6 = [v5 puzzlesConfig];
  v7 = [v6 puzzleTypes];

  *(v0 + 424) = sub_219BF5924();
  v8 = v4[12];
  v9 = v4[13];
  __swift_project_boxed_opaque_existential_1(v4 + 9, v8);
  v10 = swift_task_alloc();
  *(v0 + 432) = v10;
  *v10 = v0;
  v10[1] = sub_219807E2C;
  v11 = *(v0 + 304);

  return MEMORY[0x282192268](v11, v8, v9);
}

uint64_t sub_219807E2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v4 = sub_219808860;
  }

  else
  {
    v4 = sub_219807F40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_219807F40(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 440);
  if (v3 >> 62)
  {
    goto LABEL_42;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = *(v2 + 440);
  while (v4)
  {
    v6 = 0;
    v45 = *(v2 + 376);
    v7 = v3 & 0xC000000000000001;
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v9 = v5 + 32;
    v46 = v4;
    v47 = MEMORY[0x277D84F90];
    v10 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v41 = v3 & 0xC000000000000001;
    v43 = v5 + 32;
    v44 = v3 & 0xFFFFFFFFFFFFFF8;
    while (v7)
    {
      v12 = MEMORY[0x21CECE0F0](v6, *(v2 + 440));
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_40;
      }

LABEL_10:
      v48 = v13;
      v3 = [v12 v10[409]];
      swift_getObjectType();
      v14 = v10;
      v15 = sub_219BF68F4();
      swift_unknownObjectRelease();
      if (v15)
      {
        v16 = *(v2 + 424);
        v17 = [objc_msgSend(v12 v14 + 2113)];
        swift_unknownObjectRelease();
        v18 = sub_219BF5414();
        v20 = v19;

        *(v2 + 248) = v18;
        *(v2 + 256) = v20;
        v21 = swift_task_alloc();
        *(v21 + 16) = v2 + 248;
        v3 = sub_2186D128C(sub_2186D1338, v21, v16);

        if (v3)
        {
          v22 = v45[15];
          if ([v12 isPaid])
          {
            v23 = [objc_msgSend(v22 bundleSubscriptionProvider)];
            swift_unknownObjectRelease();
            if (objc_getAssociatedObject(v23, v23 + 1))
            {
              sub_219BF70B4();
              swift_unknownObjectRelease();
            }

            else
            {
              v49 = 0u;
              v50 = 0u;
            }

            *(v2 + 160) = v49;
            *(v2 + 176) = v50;
            if (*(v2 + 184))
            {
              sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
              if (swift_dynamicCast())
              {
                v25 = *(v2 + 272);
                v26 = [v25 integerValue];
                if (v26 == -1)
                {
LABEL_30:

                  v24 = v26 & 1;
                  goto LABEL_31;
                }

LABEL_23:
                if (objc_getAssociatedObject(v23, ~v26))
                {
                  sub_219BF70B4();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v49 = 0u;
                  v50 = 0u;
                }

                *(v2 + 192) = v49;
                *(v2 + 208) = v50;
                if (!*(v2 + 216))
                {
                  sub_218806FD0(v2 + 192);
                  goto LABEL_30;
                }

                sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_30;
                }

                v27 = *(v2 + 264);
                v28 = [v27 integerValue];

                v24 = (v28 ^ v26) & 1;
LABEL_31:
                v42 = v24;
                __swift_project_boxed_opaque_existential_1(v45 + 4, v45[7]);
                v29 = [v12 identifier];
                sub_219BF5414();

                v30 = sub_219BF3424();

                sub_218718690((v45 + 16), v2 + 40);
                sub_218718690((v45 + 21), v2 + 80);
                sub_218718690((v45 + 26), v2 + 120);
                *(v2 + 16) = v12;
                *(v2 + 24) = v42;
                *(v2 + 32) = v30;
                v55 = *(v2 + 112);
                v56 = *(v2 + 128);
                v57 = *(v2 + 144);
                v51 = *(v2 + 48);
                v52 = *(v2 + 64);
                v53 = *(v2 + 80);
                v54 = *(v2 + 96);
                v49 = *(v2 + 16);
                v50 = *(v2 + 32);
                v31 = v47;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v31 = sub_2191FB578(0, *(v47 + 2) + 1, 1, v47);
                }

                v4 = v46;
                v7 = v41;
                v8 = v44;
                v10 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
                v11 = v48;
                v33 = *(v31 + 2);
                v32 = *(v31 + 3);
                v47 = v31;
                v3 = v33 + 1;
                if (v33 >= v32 >> 1)
                {
                  v47 = sub_2191FB578((v32 > 1), v33 + 1, 1, v47);
                }

                *(v47 + 2) = v3;
                v34 = &v47[144 * v33];
                *(v34 + 2) = v49;
                *(v34 + 5) = v52;
                *(v34 + 6) = v53;
                *(v34 + 3) = v50;
                *(v34 + 4) = v51;
                *(v34 + 9) = v56;
                *(v34 + 10) = v57;
                *(v34 + 7) = v54;
                *(v34 + 8) = v55;
                v9 = v43;
                goto LABEL_6;
              }
            }

            else
            {
              sub_218806FD0(v2 + 160);
            }

            v25 = 0;
            v26 = 0;
            goto LABEL_23;
          }

          v24 = 1;
          goto LABEL_31;
        }

        v4 = v46;
        v9 = v43;
        v8 = v44;
      }

      v11 = v48;
      swift_unknownObjectRelease();
      v10 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
LABEL_6:
      ++v6;
      if (v11 == v4)
      {
        v35 = v47;
        goto LABEL_44;
      }
    }

    if (v6 >= *(v8 + 16))
    {
      goto LABEL_41;
    }

    v12 = *(v9 + 8 * v6);
    swift_unknownObjectRetain();
    v13 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_10;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v4 = sub_219BF7214();
    v5 = *(v2 + 440);
  }

  v35 = MEMORY[0x277D84F90];
LABEL_44:

  v36 = sub_219BE5414();
  v37 = sub_219BF6214();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = *(v35 + 2);

    _os_log_impl(&dword_2186C1000, v36, v37, "Continue playing puzzle history fetch and filtering complete!  Fetched %ld puzzles!", v38, 0xCu);
    MEMORY[0x21CECF960](v38, -1, -1);
  }

  else
  {
  }

  **(v2 + 280) = v35;

  v39 = *(v2 + 8);

  return v39();
}

uint64_t sub_2198085DC()
{
  v1 = *(v0 + 416);
  (*(v0 + 392))(*(v0 + 368), *(v0 + 344));
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 416);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2186C1000, v3, v4, "Error refreshing the puzzle history list for continue playing...error=%@", v7, 0xCu);
    sub_218962D30(v8);
    MEMORY[0x21CECF960](v8, -1, -1);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  else
  {
  }

  v11 = sub_219BE5414();
  v12 = sub_219BF6214();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2186C1000, v11, v12, "Fetching incomplete puzzles from puzzle history for continue playing...", v13, 2u);
    MEMORY[0x21CECF960](v13, -1, -1);
  }

  v14 = *(v0 + 376);
  v15 = *(v0 + 296);

  v16 = [v15 puzzlesConfig];
  v17 = [v16 puzzleTypes];

  *(v0 + 424) = sub_219BF5924();
  v18 = v14[12];
  v19 = v14[13];
  __swift_project_boxed_opaque_existential_1(v14 + 9, v18);
  v20 = swift_task_alloc();
  *(v0 + 432) = v20;
  *v20 = v0;
  v20[1] = sub_219807E2C;
  v21 = *(v0 + 304);

  return MEMORY[0x282192268](v21, v18, v19);
}

uint64_t sub_219808860()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219808908(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_219808928, 0, 0);
}

uint64_t sub_219808928()
{

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2198089EC;
  v2 = v0[2];
  v3 = v0[3];
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821D20A8](v2, &unk_219CA95A0, v3, v4);
}

uint64_t sub_2198089EC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219808B28, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_219808B28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219808BAC()
{
  v1 = *(v0 + 16);
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_218B0699C;

  return MEMORY[0x282192DC8](v2, v3);
}

uint64_t sub_219808C64()
{
  sub_218774F78((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_219808CF8(uint64_t a1, uint64_t *a2)
{
  sub_219BE3204();
  v2 = sub_219BE2E54();
  sub_219BE2F64();

  v3 = sub_219BE2E54();
  v4 = sub_219BE3054();

  return v4;
}

uint64_t sub_219808DD8(uint64_t a1, double *a2)
{
  v3 = a2[1];
  v9[0] = *a2;
  v9[1] = v3;
  v4 = sub_219806E60(a1, v9);
  sub_2186C61E4();
  sub_219BE3204();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;

  v6 = sub_219BE2E54();
  v7 = sub_219BE2F64();

  return v7;
}

uint64_t sub_219808EBC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v2, &off_282A89B08, a2, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219808F88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_2198076AC(a1, v4, v5, v6);
}

uint64_t sub_21980903C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_219808908(a1, v1);
}

unint64_t sub_2198090D8()
{
  result = qword_280E8D560;
  if (!qword_280E8D560)
  {
    sub_219BF7464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8D560);
  }

  return result;
}

uint64_t sub_219809130(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_219808B8C(a1, v1);
}

void sub_2198091CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_219809220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2198091CC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2198092D0(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a2 + 48), *(a2 + 72));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v6[4] = sub_219809920;
    v6[5] = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_218793E0C;
    v6[3] = &block_descriptor_174;
    v5 = _Block_copy(v6);

    [v4 dismissViewControllerAnimated:1 completion:v5];
    _Block_release(v5);
  }
}

void sub_2198093E8()
{
  sub_219BE3204();
  v0 = sub_219BE1C44();
  sub_219BE2F94();
}

uint64_t sub_2198094C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SportsManagementModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189525B0(0);
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for SportsManagementModel;
    v13 = v11;
  }

  else
  {
    sub_218A3A4F8(v11, v8);
    if (*(*&v8[*(v6 + 20)] + 16))
    {
      __swift_project_boxed_opaque_existential_1((a2 + 48), *(a2 + 72));
      sub_218C95740(v8, v5);
      swift_storeEnumTagMultiPayload();
      sub_21933C81C(v5);
      sub_21980986C(v5, type metadata accessor for SportsDetailModel);
    }

    v12 = type metadata accessor for SportsModel;
    v13 = v8;
  }

  return sub_21980986C(v13, v12);
}

uint64_t sub_2198096B0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SportsManagementSectionDescriptor(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2189522EC(0);
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return sub_21980986C(v8, type metadata accessor for SportsManagementSectionDescriptor);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = *v8;
    __swift_project_boxed_opaque_existential_1((a2 + 48), *(a2 + 72));
    *v5 = v10;
    swift_storeEnumTagMultiPayload();

    sub_21933C81C(v5);

    return sub_21980986C(v5, type metadata accessor for SportsDetailModel);
  }

  else
  {
    v12 = sub_219BF3AF4();
    return (*(*(v12 - 8) + 8))(v8, v12);
  }
}

uint64_t sub_21980986C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2198098CC()
{
  v1 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 48))(ObjectType, v1);
}

uint64_t type metadata accessor for MagazineCatalogSectionHeaderModel(uint64_t a1)
{
  result = qword_27CC1FAC0;
  if (!qword_27CC1FAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21980999C(uint64_t a1)
{
  result = type metadata accessor for MagazineCatalogSectionDescriptor.Categories(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_219809A48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FollowingBadgingCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_219809AF8()
{
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v18 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_readingList);
  v13 = [*(v0 + OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_userInfo) dateLastViewedSaved];
  if (v13)
  {
    v14 = v13;
    sub_219BDBCA4();

    v15 = *(v5 + 32);
    v15(v3, v7, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    v15(v11, v3, v4);
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    sub_219BDBBB4();
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      sub_2189DD39C(v3);
    }
  }

  v16 = sub_219BDBC04();
  (*(v5 + 8))(v11, v4);
  v17 = [v12 countOfAllArticlesSavedOutsideOfNewsSince_];

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }
}

uint64_t sub_219809D54()
{
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v18 - v10;
  v12 = [*(v0 + OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_userInfo) dateLastViewedSharedWithYou];
  if (v12)
  {
    v13 = v12;
    sub_219BDBCA4();

    v14 = *(v5 + 32);
    v14(v3, v7, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    v14(v11, v3, v4);
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    sub_219BDBBB4();
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      sub_2189DD39C(v3);
    }
  }

  v15 = [*(v0 + OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_readingHistory) allReadArticleIDs];
  sub_219BF5D44();

  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_sharedItemManager), *(v0 + OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_sharedItemManager + 24));
  v16 = sub_219BF2F14();

  (*(v5 + 8))(v11, v4);
  return v16;
}

uint64_t sub_219809FF0(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC7NewsUI227FollowingBadgingCoordinator_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_21980A184()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_219809D54();
    v3 = v1 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 48))(v1, &off_282A493C8, v2, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21980A2DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = 1;
  }

  else
  {
    v2 = a2 == 1;
  }

  if (v2)
  {
    sub_219809AF8();
    if (v3)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        sub_219809AF8();
        v7 = v6;
        v8 = v5 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v8 + 8);
          ObjectType = swift_getObjectType();
          (*(v9 + 40))(v5, &off_282A493C8, v7, ObjectType, v9);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_21980A3BC()
{
  sub_219809AF8();
  if (v0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_219809AF8();
      v4 = v3;
      v5 = v2 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 8);
        ObjectType = swift_getObjectType();
        (*(v6 + 40))(v2, &off_282A493C8, v4, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_21980A48C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v11 = v2;
  v10[2] = &v11;
  sub_218FAE8B8(sub_21980A5A4, v10, a1);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = sub_219809D54();
      v7 = v5 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 8);
        ObjectType = swift_getObjectType();
        (*(v8 + 48))(v5, &off_282A493C8, v6, ObjectType, v8);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

unint64_t NotificationAuthorizationStatus.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t NotificationAuthorizationStatus.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x7265746544746F6ELL;
    case 2:
      return 0x7A69726F68747561;
    case 1:
      return 0x6465696E6564;
  }

  result = sub_219BF7974();
  __break(1u);
  return result;
}

uint64_t sub_21980A6BC(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 0x7265746544746F6ELL;
  }

  if (v2 == 2)
  {
    return 0x7A69726F68747561;
  }

  if (v2 == 1)
  {
    return 0x6465696E6564;
  }

  result = sub_219BF7974();
  __break(1u);
  return result;
}

uint64_t AuthorizationRequestResult.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

uint64_t AuthorizationRequestResult.description.getter()
{
  v1 = 0x6465696E6564;
  if (*v0 != 1)
  {
    v1 = 0x656C6C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7A69726F68747561;
  }
}

uint64_t sub_21980A844()
{
  v1 = 0x6465696E6564;
  if (*v0 != 1)
  {
    v1 = 0x656C6C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7A69726F68747561;
  }
}

id NotificationSettings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_21980AA54()
{
  result = qword_27CC1FB38;
  if (!qword_27CC1FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FB38);
  }

  return result;
}

unint64_t sub_21980AAAC()
{
  result = qword_27CC1FB40;
  if (!qword_27CC1FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FB40);
  }

  return result;
}

void sub_21980ACA0(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = objc_allocWithZone(type metadata accessor for NotificationSettings());
  v5 = v3;
  v6 = sub_21980FBE0(v5);

  *a2 = v6;
}

uint64_t sub_21980ACF8(char a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F62670);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_2186C1000, v5, v6, "NotificationService requestAuthorization() called with userInitiated: %{BOOL}d", v7, 8u);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  sub_219BDC4B4();
  sub_21980FD64(qword_280ED0E28, v8, type metadata accessor for NotificationService, &unk_219CA9A00);
  sub_219BDC7D4();

  if (v17 == 1)
  {
    v10 = sub_219BE5414();
    v11 = sub_219BF6214();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2186C1000, v10, v11, "Skipping requestAuthorization() due to internal setting.", v12, 2u);
      MEMORY[0x21CECF960](v12, -1, -1);
    }

    sub_21870F2E8(0, &unk_280EE6D68, &type metadata for AuthorizationRequestResult);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    MEMORY[0x28223BE20](v9);
    sub_21870F2E8(0, &unk_280EE6D68, &type metadata for AuthorizationRequestResult);
    swift_allocObject();
    sub_219BE30B4();
    *(swift_allocObject() + 16) = v2;
    v14 = v2;
    v15 = sub_219BE2E54();
    v16 = sub_219BE3074();

    return v16;
  }
}

void sub_21980B010(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, char *a5, char a6)
{
  if ([*&a5[OBJC_IVAR____TtC7NewsUI219NotificationService_networkReachability] isNetworkReachable])
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CEE718]) init];
    [v12 setAuthorizationOptions_];
    __swift_project_boxed_opaque_existential_1(&a5[OBJC_IVAR____TtC7NewsUI219NotificationService_metricsProvider], *&a5[OBJC_IVAR____TtC7NewsUI219NotificationService_metricsProvider + 24]);
    sub_219BE4104();
    sub_218E9B5CC();

    v13 = sub_219BF5204();

    [v12 setMetricsOverlay_];

    [v12 setUserInitiated_];
    v14 = objc_allocWithZone(MEMORY[0x277CEE720]);
    v15 = v12;
    v16 = sub_219BF53D4();
    v17 = [v14 initWithBundleIdentifier:v16 options:v15];

    [v17 setDelegate_];
    v18 = [v17 requestAuthorization];
    v19 = swift_allocObject();
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a1;
    v19[6] = a2;
    v28[4] = sub_219810644;
    v28[5] = v19;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 1107296256;
    v28[2] = sub_218846728;
    v28[3] = &block_descriptor_87_2;
    v20 = _Block_copy(v28);

    v21 = a5;

    [v18 addFinishBlock_];
    _Block_release(v20);
  }

  else
  {
    if (qword_280EE5FC8 != -1)
    {
      swift_once();
    }

    v22 = sub_219BE5434();
    __swift_project_value_buffer(v22, qword_280F62670);
    v23 = sub_219BE5414();
    v24 = sub_219BF6214();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2186C1000, v23, v24, "Skipping warming sheet presentation. Network is offline.", v25, 2u);
      MEMORY[0x21CECF960](v25, -1, -1);
    }

    sub_2198105A8();
    v26 = swift_allocError();
    *v27 = 2;
    a3();
  }
}

void sub_21980B3C8(void *a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5, void (*a6)(void **, __n128))
{
  if (a2)
  {
    v8 = a2;
    if (qword_280EE5FC8 != -1)
    {
      swift_once();
    }

    v9 = sub_219BE5434();
    __swift_project_value_buffer(v9, qword_280F62670);
    v10 = a2;
    v11 = sub_219BE5414();
    v12 = sub_219BF61F4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_219BF7A04();
      v17 = sub_2186D1058(v15, v16, &v30);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2186C1000, v11, v12, "Failed to request notification authorization with error: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x21CECF960](v14, -1, -1);
      MEMORY[0x21CECF960](v13, -1, -1);
    }

    a3(a2);
  }

  else if (a1)
  {
    v19 = qword_280EE5FC8;
    v20 = a1;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_219BE5434();
    __swift_project_value_buffer(v21, qword_280F62670);
    v22 = v20;
    v23 = sub_219BE5414();
    v24 = sub_219BF6214();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = [v22 authorizationStatus];

      _os_log_impl(&dword_2186C1000, v23, v24, "Notification Authorization Status: %ld", v25, 0xCu);
      MEMORY[0x21CECF960](v25, -1, -1);
    }

    else
    {

      v23 = v22;
    }

    v28 = [v22 authorizationStatus];
    if (v28)
    {
      v29 = v28 != 2;
    }

    else
    {
      v29 = 2;
    }

    LOBYTE(v30) = v29;
    sub_21980B744(&v30);
    sub_219BF4764();
    sub_219BF4754();
    sub_219BF4744();

    LOBYTE(v30) = v29;
    (a6)(&v30);
  }

  else
  {
    sub_2198105A8();
    v26 = swift_allocError();
    *v27 = 0;
    (a3)();
  }
}

uint64_t sub_21980B744(unsigned __int8 *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_280F62670);
  v9 = sub_219BE5414();
  v10 = sub_219BF6214();
  if (os_log_type_enabled(v9, v10))
  {
    v20[0] = v3;
    v20[1] = ObjectType;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = 0xE600000000000000;
    v14 = 0x6465696E6564;
    if (v7 != 1)
    {
      v14 = 0x656C6C65636E6163;
      v13 = 0xE900000000000064;
    }

    if (v7)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7A69726F68747561;
    }

    if (v7)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0xEA00000000006465;
    }

    v17 = sub_2186D1058(v15, v16, &v21);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_2186C1000, v9, v10, "TCC presented result: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CECF960](v12, -1, -1);
    MEMORY[0x21CECF960](v11, -1, -1);

    v3 = v20[0];
  }

  else
  {
  }

  if (v7 > 1)
  {
    if (qword_280EE9A28 != -1)
    {
      swift_once();
    }

    v23 = 1;
    sub_21980FD64(&qword_280ED0E20, v18, type metadata accessor for NotificationService, &unk_219CA9A50);
    return sub_219BDCA54();
  }

  else
  {
    if (qword_280EE9A28 != -1)
    {
      swift_once();
    }

    v22 = 0;
    sub_21980FD64(&qword_280ED0E20, v18, type metadata accessor for NotificationService, &unk_219CA9A50);
    sub_219BDCA54();
    if (qword_280EE9AA0 != -1)
    {
      swift_once();
    }

    sub_219BDBCB4();
    sub_219BDCA54();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21980BB10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_219BDB714();
  v5 = [v4 domain];
  v6 = sub_219BF5414();
  v8 = v7;

  if (v6 == sub_219BF5414() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_219BF78F4();

    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ([v4 code] != 6)
  {
LABEL_14:
    if (qword_280EE5FC8 != -1)
    {
      swift_once();
    }

    v17 = sub_219BE5434();
    __swift_project_value_buffer(v17, qword_280F62670);
    v18 = v4;
    v19 = sub_219BE5414();
    v20 = sub_219BF61F4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_2186C1000, v19, v20, "Received error: [%@]. Using UNUserNotificationCenter alternatively.", v21, 0xCu);
      sub_21980FDE8(v22, sub_2189B3F3C);
      MEMORY[0x21CECF960](v22, -1, -1);
      MEMORY[0x21CECF960](v21, -1, -1);
    }

    MEMORY[0x28223BE20](v24);
    type metadata accessor for NotificationSettings();
    sub_219BE3204();
    *(swift_allocObject() + 16) = a3;
    v25 = a3;
    v26 = sub_219BE2E54();
    v16 = sub_219BE2F64();

    return v16;
  }

  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v12 = sub_219BE5434();
  __swift_project_value_buffer(v12, qword_280F62670);
  v13 = sub_219BE5414();
  v14 = sub_219BF6214();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2186C1000, v13, v14, "Authorization process was cancelled by the user. Exiting.", v15, 2u);
    MEMORY[0x21CECF960](v15, -1, -1);
  }

  v28 = 2;
  sub_21980B744(&v28);
  sub_21870F2E8(0, &unk_280EE6D68, &type metadata for AuthorizationRequestResult);
  swift_allocObject();
  v16 = sub_219BE3014();

  return v16;
}

uint64_t sub_21980BEE0()
{
  sub_2186C6148(0, &qword_280E8DF88, 0x277CE1FD0);
  sub_219BE3204();
  v0 = sub_219BE2E54();
  type metadata accessor for NotificationSettings();
  v1 = sub_219BE2F74();

  return v1;
}

uint64_t sub_21980BF8C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_219BF4764();
  sub_219BF4754();
  sub_219BF4744();

  v4 = *(v2 + OBJC_IVAR___TSNotificationSettings_authorizationStatus);
  switch(v4)
  {
    case 0:
      MEMORY[0x28223BE20](v3);
      sub_21870F2E8(0, &unk_280EE6D68, &type metadata for AuthorizationRequestResult);
      swift_allocObject();
      return sub_219BE30B4();
    case 1:
      v7 = 1;
      sub_21980B744(&v7);
      v6[1] = 1;
      sub_21870F2E8(0, &unk_280EE6D68, &type metadata for AuthorizationRequestResult);
      swift_allocObject();
      break;
    case 2:
      v6[0] = 0;
      sub_21980B744(v6);
      sub_21870F2E8(0, &unk_280EE6D68, &type metadata for AuthorizationRequestResult);
      swift_allocObject();
      break;
    default:
      result = sub_219BF7974();
      __break(1u);
      return result;
  }

  return sub_219BE3014();
}

void sub_21980C134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [objc_opt_self() currentNotificationCenter];
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a1;
  v11[6] = a2;
  v14[4] = sub_219810598;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_219116B54;
  v14[3] = &block_descriptor_81_0;
  v12 = _Block_copy(v14);

  v13 = a5;

  [v10 requestAuthorizationWithOptions:39 completionHandler:v12];
  _Block_release(v12);
}

void sub_21980C268(char a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5, void (*a6)(void **))
{
  if (a2)
  {
    v8 = a2;
    if (qword_280EE5FC8 != -1)
    {
      swift_once();
    }

    v9 = sub_219BE5434();
    __swift_project_value_buffer(v9, qword_280F62670);
    v10 = a2;
    v11 = sub_219BE5414();
    v12 = sub_219BF61F4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_219BF7A04();
      v17 = sub_2186D1058(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2186C1000, v11, v12, "Failed to request fallback notification authorization with error: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x21CECF960](v14, -1, -1);
      MEMORY[0x21CECF960](v13, -1, -1);
    }

    a3(a2);
  }

  else
  {
    v19 = (a1 & 1) == 0;
    LOBYTE(v20) = v19;
    sub_21980B744(&v20);
    LOBYTE(v20) = v19;
    a6(&v20);
  }
}

id sub_21980C444(char *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  v3 = sub_219BF53D4();

  [v2 setTitle_];

  v4 = sub_219BF53D4();

  [v2 setBody_];

  v5 = sub_219BF53D4();

  [v2 setSubtitle_];

  sub_2187AD818();
  if (v6)
  {
    v7 = sub_219BF53D4();

    [v2 setCategoryIdentifier_];
  }

  if (*&a1[OBJC_IVAR____TtC7NewsUI216UserNotification_payload])
  {
    v8 = *&a1[OBJC_IVAR____TtC7NewsUI216UserNotification_payload];
  }

  else
  {
    v8 = sub_2194B141C(MEMORY[0x277D84F90]);
  }

  v9 = sub_219656B20();
  if (v9)
  {
    v10 = v9;
    v11 = [v2 attachments];
    sub_2186C6148(0, &qword_27CC1FBF0, 0x277CE1F90);
    v12 = sub_219BF5924();

    v37[0] = v12;
    MEMORY[0x21CECC690]();
    if (*((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    v13 = sub_219BF5904();

    [v2 setAttachments_];
  }

  v14 = sub_2187AD818();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = sub_219BF53D4();
    [v2 setCategoryIdentifier_];

    *&v36[0] = 7565409;
    *(&v36[0] + 1) = 0xE300000000000000;
    v19 = MEMORY[0x277D837D0];
    sub_219BF72A4();
    if (*(v8 + 16) && (v20 = sub_21931EECC(v37), (v21 & 1) != 0))
    {
      sub_2186D1230(*(v8 + 56) + 32 * v20, &v38);
      sub_218B6B67C(v37);
      sub_219810420(0, &qword_280E8FA10, MEMORY[0x277D84030], MEMORY[0x277D84F70] + 8, MEMORY[0x277D84038]);
      v23 = v22;
      if (swift_dynamicCast())
      {
        v24 = *&v36[0];
        *&v38 = 0x79726F6765746163;
        *(&v38 + 1) = 0xE800000000000000;
        sub_219BF72A4();
        v39 = v19;
        *&v38 = v16;
        *(&v38 + 1) = v17;
        sub_218751558(&v38, v36);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_21948DB38(v36, v37, isUniquelyReferenced_nonNull_native);
        sub_218B6B67C(v37);
        *&v38 = 7565409;
        *(&v38 + 1) = 0xE300000000000000;
        sub_219BF72A4();
        v39 = v23;
        *&v38 = v24;
LABEL_17:
        sub_218751558(&v38, v36);
        v32 = swift_isUniquelyReferenced_nonNull_native();
        sub_21948DB38(v36, v37, v32);
        sub_218B6B67C(v37);
        goto LABEL_18;
      }
    }

    else
    {
      sub_218B6B67C(v37);
    }

    *&v38 = 7565409;
    *(&v38 + 1) = 0xE300000000000000;
    v26 = MEMORY[0x277D837D0];
    v27 = MEMORY[0x277D837E0];
    sub_219BF72A4();
    sub_21874E9D8(0, &qword_280E8B700, sub_2198103C4, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    *(inited + 32) = 0x79726F6765746163;
    v29 = inited + 32;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v16;
    *(inited + 56) = v17;
    v30 = sub_2194B0E30(inited);
    swift_setDeallocating();
    sub_21980FDE8(v29, sub_2198103C4);
    sub_219810420(0, &qword_27CC16910, v26, v26, v27);
    v39 = v31;
    *&v38 = v30;
    goto LABEL_17;
  }

LABEL_18:
  v33 = sub_219BF5204();
  [v2 setUserInfo_];

  v34 = sub_219BF53D4();

  [v2 setThreadIdentifier_];

  return v2;
}

id sub_21980CA38(uint64_t a1)
{
  v41 = a1;
  v1 = MEMORY[0x277D83D88];
  sub_21874E9D8(0, &qword_280EE9BD0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v33 - v3;
  sub_21874E9D8(0, &unk_280EE9C00, MEMORY[0x277CC99E8], v1);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v35 = sub_219BDC084();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB534();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = sub_219BDBE44();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BDBF94();
  v37 = *(v34 - 8);
  v20 = v37;
  v21 = MEMORY[0x28223BE20](v34);
  v38 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v19, *MEMORY[0x277CC9830], v16, v21);
  sub_219BDBE54();
  (*(v17 + 8))(v19, v16);
  sub_219BDBF54();
  sub_219BDBE84();
  v23 = v35;
  (*(v7 + 8))(v9, v35);
  v24 = *(v20 + 56);
  v25 = v34;
  v24(v6, 1, 1, v34);
  (*(v7 + 56))(v36, 1, 1, v23);
  sub_219BDB514();
  sub_219BDBF34();
  v24(v6, 0, 1, v25);
  sub_219BDB524();
  sub_219BDB454();
  sub_219BDB464();
  sub_219BDB494();
  sub_219BDB4A4();
  sub_219BDB4B4();
  sub_219BDB4C4();
  sub_219BDB434();
  sub_219BDB444();
  sub_219BDB474();
  sub_219BDB484();
  sub_219BDB4D4();
  sub_219BDB4E4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = sub_219BDB414();
  v28 = [ObjCClassFromMetadata triggerWithDateMatchingComponents:v27 repeats:0];

  v29 = sub_219BDBD34();
  (*(*(v29 - 8) + 8))(v41, v29);
  v30 = v40;
  v31 = *(v39 + 8);
  v31(v12, v40);
  v31(v15, v30);
  (*(v37 + 8))(v38, v25);
  return v28;
}

void sub_21980D024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v27 = a7;
  v28 = a5;
  v26 = a3;
  v11 = sub_219BDBD34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = objc_opt_self();

  v17 = [v16 currentNotificationCenter];
  (*(v12 + 16))(v14, a6, v11);
  v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v26;
  *(v20 + 24) = a4;
  (*(v12 + 32))(v20 + v18, v14, v11);
  v21 = v27;
  *(v20 + v19) = v27;
  v22 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_218A2DB54;
  v22[1] = v15;
  aBlock[4] = sub_219810480;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218E29720;
  aBlock[3] = &block_descriptor_69;
  v23 = _Block_copy(aBlock);

  v24 = v21;

  [v17 addNotificationRequest:v28 withCompletionHandler:v23];
  _Block_release(v23);
}

void sub_21980D284(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_21874E9D8(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v31 - v11;
  if (a1)
  {
    v13 = a1;
    v14 = sub_219BF61F4();
    sub_2186F20D4(0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C09BA0;
    v32 = 0;
    v33 = 0xE000000000000000;
    v31[1] = a1;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    v16 = v32;
    v17 = v33;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_2186FC3BC();
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v18 = sub_219BF6F44();
    sub_219BE5314("Failed to schedule local notification with error: %{public}@", 60, 2, &dword_2186C1000, v18, v14, v15);

    a2(a1);
  }

  else
  {
    sub_219BDBDF4();
    v19 = sub_219BDBE34();
    (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
    v20 = sub_219BDBB94();
    v22 = v21;
    sub_21981032C(v12, &qword_280EE9C10, MEMORY[0x277CC9788]);
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v23 = qword_280F61750;
    sub_2186F20D4(0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C09EC0;
    v26 = *(a5 + OBJC_IVAR____TtC7NewsUI216UserNotification_title);
    v25 = *(a5 + OBJC_IVAR____TtC7NewsUI216UserNotification_title + 8);
    v27 = MEMORY[0x277D837D0];
    *(v24 + 56) = MEMORY[0x277D837D0];
    v28 = sub_2186FC3BC();
    *(v24 + 32) = v26;
    *(v24 + 40) = v25;
    *(v24 + 96) = v27;
    *(v24 + 104) = v28;
    *(v24 + 64) = v28;
    *(v24 + 72) = v20;
    *(v24 + 80) = v22;

    v29 = sub_219BF6214();
    sub_219BE5314("Scheduled notification with title: %{public}@, to be delivered on %{public}@", 76, 2, &dword_2186C1000, v23, v29, v24);

    a6(v30);
  }
}

void sub_21980D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = objc_opt_self();

  v16 = [v15 currentNotificationCenter];
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a6;
  *(v17 + 40) = a7;
  *(v17 + 48) = sub_218A2DB54;
  *(v17 + 56) = v14;
  v20[4] = sub_2198103B0;
  v20[5] = v17;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_218E29720;
  v20[3] = &block_descriptor_59_1;
  v18 = _Block_copy(v20);

  v19 = a6;

  [v16 addNotificationRequest:a5 withCompletionHandler:v18];
  _Block_release(v18);
}

void sub_21980D738(void *a1, void (*a2)(void *), double a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (a1)
  {
    v8 = a1;
    v9 = sub_219BF61F4();
    sub_2186F20D4(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_2186FC3BC();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v11 = sub_219BF6F44();
    sub_219BE5314("Failed to schedule local notification with error: %{public}@", 60, 2, &dword_2186C1000, v11, v9, v10);

    a2(a1);
  }

  else
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v14 = qword_280F61750;
    sub_2186F20D4(0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C09EC0;
    v17 = *(a5 + OBJC_IVAR____TtC7NewsUI216UserNotification_title);
    v16 = *(a5 + OBJC_IVAR____TtC7NewsUI216UserNotification_title + 8);
    v18 = MEMORY[0x277D837D0];
    *(v15 + 56) = MEMORY[0x277D837D0];
    v19 = sub_2186FC3BC();
    *(v15 + 64) = v19;
    *(v15 + 32) = v17;
    *(v15 + 40) = v16;

    sub_219BF5CB4();
    *(v15 + 96) = v18;
    *(v15 + 104) = v19;
    *(v15 + 72) = 0;
    *(v15 + 80) = 0xE000000000000000;
    v20 = sub_219BF6214();
    sub_219BE5314("Scheduled notification with title: %{public}@, to be delivered in %{public}@ seconds", 84, 2, &dword_2186C1000, v14, v20, v15);

    a6(v21);
  }
}

void sub_21980D9A0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_opt_self();

  v6 = [v5 currentNotificationCenter];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_218846958;
  *(v7 + 24) = v4;
  v9[4] = sub_219810324;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21980DF80;
  v9[3] = &block_descriptor_39_0;
  v8 = _Block_copy(v9);

  [v6 getPendingNotificationRequestsWithCompletionHandler_];
  _Block_release(v8);
}

void sub_21980DAD8(unint64_t a1, void (*a2)(uint64_t, __n128), uint64_t a3)
{
  v6 = type metadata accessor for UserNotification.DeliveryStatus(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_219BDB534();
  v9 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_219BDBF94();
  v11 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21874E9D8(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v40 - v15;
  v49 = a1;
  if (a1 >> 62)
  {
    v17 = sub_219BF7214();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v40[1] = a3;
    v50 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v40[0] = a2;
      v19 = 0;
      v20 = v49 & 0xC000000000000001;
      v43 = (v11 + 8);
      v44 = (v9 + 8);
      v21 = &selRef__setPreferredLayout_;
      v22 = &qword_280EE9C40;
      v41 = v49 & 0xC000000000000001;
      v42 = v8;
      while (1)
      {
        if (v20)
        {
          v26 = MEMORY[0x21CECE0F0](v19, v49);
        }

        else
        {
          v26 = *(v49 + 8 * v19 + 32);
        }

        v27 = v26;
        v28 = [v26 v21[326]];
        if (v28)
        {
          v29 = v28;
          objc_opt_self();
          v30 = swift_dynamicCastObjCClass();
          if (v30)
          {
            v31 = v30;
            v32 = v17;
            v33 = v45;
            sub_219BDBF34();
            v34 = [v31 dateComponents];
            v35 = v22;
            v36 = v21;
            v37 = v47;
            sub_219BDB424();

            sub_219BDBEF4();
            v38 = v37;
            v21 = v36;
            v22 = v35;
            (*v44)(v38, v48);
            v39 = v33;
            v17 = v32;
            v20 = v41;
            v8 = v42;
            (*v43)(v39, v46);
            goto LABEL_8;
          }
        }

        v23 = sub_219BDBD34();
        (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
LABEL_8:
        ++v19;
        sub_2187D96F4(v16, v8);
        sub_218C1A090();
        (*(*(v24 - 8) + 56))(v8, 0, 2, v24);
        v25 = objc_allocWithZone(type metadata accessor for UserNotification(0));
        sub_2196575B8(v27, v8);

        sub_21981032C(v16, v22, MEMORY[0x277CC9578]);
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        if (v17 == v19)
        {
          v18 = v50;
          a2 = v40[0];
          goto LABEL_16;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    a2(v18, v14);
  }
}

void sub_21980DF94(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_opt_self();

  v6 = [v5 currentNotificationCenter];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_218C1DDD4;
  *(v7 + 24) = v4;
  v9[4] = sub_21981039C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21980E2B4;
  v9[3] = &block_descriptor_49_0;
  v8 = _Block_copy(v9);

  [v6 getDeliveredNotificationsWithCompletionHandler_];
  _Block_release(v8);
}

void sub_21980E0CC(unint64_t a1, void (*a2)(uint64_t, __n128), uint64_t a3)
{
  v6 = type metadata accessor for UserNotification.DeliveryStatus(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v10 = sub_219BF7214();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
LABEL_11:
    a2(v11, v7);

    return;
  }

  v20 = MEMORY[0x277D84F90];
  sub_219BF73F4();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v18[1] = a3;
    v19 = a2;
    v12 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x21CECE0F0](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = [v13 request];
      sub_218C1A090();
      (*(*(v16 - 8) + 56))(v9, 2, 2, v16);
      v17 = objc_allocWithZone(type metadata accessor for UserNotification(0));
      sub_2196575B8(v15, v9);

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v10 != v12);
    a2 = v19;
    v11 = v20;
    goto LABEL_11;
  }

  __break(1u);
}

double sub_21980E2C8(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v4 = *(a1 + 32);
  sub_2186C6148(0, a3, a4);
  v5 = sub_219BF5924();

  v4(v5);

  return result;
}

char *sub_21980E344(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_15:
    v18 = [objc_opt_self() currentNotificationCenter];
    MEMORY[0x28223BE20](v18);
    sub_21870F2E8(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8);
    swift_allocObject();
    v19 = sub_219BE30B4();

    return v19;
  }

  v20 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = MEMORY[0x21CECE0F0](v4, a1);
        v7 = *(v5 + OBJC_IVAR____TtC7NewsUI216UserNotification_identifier);
        v6 = *(v5 + OBJC_IVAR____TtC7NewsUI216UserNotification_identifier + 8);

        swift_unknownObjectRelease();
        v9 = *(v20 + 16);
        v8 = *(v20 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_21870B65C((v8 > 1), v9 + 1, 1);
        }

        ++v4;
        *(v20 + 16) = v9 + 1;
        v10 = v20 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
      }

      while (v2 != v4);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = (*v11 + OBJC_IVAR____TtC7NewsUI216UserNotification_identifier);
        v14 = *v12;
        v13 = v12[1];
        v16 = *(v20 + 16);
        v15 = *(v20 + 24);

        if (v16 >= v15 >> 1)
        {
          sub_21870B65C((v15 > 1), v16 + 1, 1);
        }

        *(v20 + 16) = v16 + 1;
        v17 = v20 + 16 * v16;
        *(v17 + 32) = v14;
        *(v17 + 40) = v13;
        ++v11;
        --v2;
      }

      while (v2);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_21980E5A0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_219BF4764();

  sub_219BF4754();
  v12 = sub_219BF4734();

  if (v12 && (v13 = objc_allocWithZone(type metadata accessor for NotificationSettings()), v14 = sub_21980FBE0(v12), v12, v14) && (v15 = *&v14[OBJC_IVAR___TSNotificationSettings_scheduledDeliverySetting], v14, v15 == 2))
  {
    v16 = [objc_opt_self() currentNotificationCenter];
    v17 = swift_allocObject();
    v17[2] = a6;
    v17[3] = a7;
    v17[4] = sub_2187A913C;
    v17[5] = v11;
    v21[4] = sub_21980FD4C;
    v21[5] = v17;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = sub_21980E2B4;
    v21[3] = &block_descriptor_175;
    v18 = _Block_copy(v21);

    v19 = a7;

    [v16 getDeliveredNotificationsWithCompletionHandler_];
    _Block_release(v18);
  }

  else
  {

    a1(v20);
  }
}

void sub_21980E774(unint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v20 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {

    v19 = a3;
    if (!i)
    {
      break;
    }

    v17 = a4;
    v18 = a5;
    v10 = 0;
    a5 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CECE0F0](v10, a1);
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      a4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      MEMORY[0x28223BE20](v11);
      sub_21870F2E8(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8);
      swift_allocObject();
      sub_219BE30B4();

      a3 = &v20;
      MEMORY[0x21CECC690](v13);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();

      ++v10;
      if (a4 == i)
      {
        a4 = v17;
        a5 = v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  sub_21870F2E8(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8);

  v14 = sub_219BE2E54();
  sub_218CCBDE4(0);
  sub_21980FD64(&unk_280E8F570, 255, sub_218CCBDE4, MEMORY[0x277D83988]);
  sub_219BE2F34();

  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;

  v16 = sub_219BE2E54();
  sub_219BE2F74();
}

void sub_21980EA88(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  v12 = [a6 request];
  v13 = [v12 identifier];

  v14 = sub_219BF5414();
  v16 = v15;

  aBlock = v14;
  v30 = v16;
  p_aBlock = &aBlock;
  LOBYTE(a5) = sub_2186D128C(sub_2186D1338, v27, a5);

  if (a5 & 1) != 0 && (v17 = [a6 request], v18 = objc_msgSend(v17, sel_content), v17, objc_msgSend(v18, sel_mutableCopy), v18, sub_219BF70B4(), swift_unknownObjectRelease(), sub_2186C6148(0, &qword_27CC1FBE0, 0x277CE1F60), (swift_dynamicCast()))
  {
    v19 = v35[0];
    [v35[0] setRelevanceScore_];
    v20 = [a6 request];
    v21 = [v20 identifier];

    if (!v21)
    {
      sub_219BF5414();
      v21 = sub_219BF53D4();
    }

    v22 = swift_allocObject();
    *(v22 + 16) = sub_218A2DB54;
    *(v22 + 24) = v11;
    v33 = sub_218807D28;
    v34 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_218E29720;
    v32 = &block_descriptor_27_4;
    v23 = _Block_copy(&aBlock);
    v24 = v19;

    [a7 ts:v21 replaceContentForRequestWithIdentifier:v24 replacementContent:v23 completionHandler:?];
    _Block_release(v23);
  }

  else
  {

    a1(v25);
  }
}

uint64_t sub_21980ED7C()
{
  sub_21874E9D8(0, &unk_280EE6B40, sub_218A7A138, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

double sub_21980EE04(unint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotification.Kind(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v10 = 0;
    v26[1] = v7 + 8;
    v29 = v8 & 0xFFFFFFFFFFFFFF8;
    v30 = v8 & 0xC000000000000001;
    v31 = MEMORY[0x277D84F90];
    v27 = v7;
    v28 = v8;
    while (1)
    {
      if (v30)
      {
        v11 = MEMORY[0x21CECE0F0](v10, v8, v5);
      }

      else
      {
        if (v10 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      sub_218A7A6E8(&v11[OBJC_IVAR____TtC7NewsUI216UserNotification_kind], v7);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            sub_21980FDE8(v7, type metadata accessor for UserNotification.IssueData);
            if (a2 == 2)
            {
              goto LABEL_34;
            }
          }

          else
          {
            sub_21980FDE8(v7, type metadata accessor for UserNotification.Kind);
            if (a2 == 5)
            {
              goto LABEL_34;
            }
          }
        }

        else if (EnumCaseMultiPayload)
        {
          sub_2187ACC2C(0);

          v15 = sub_219BDB954();
          (*(*(v15 - 8) + 8))(v7, v15);
          if (a2 == 1)
          {
            goto LABEL_34;
          }
        }

        else
        {
          sub_21980FDE8(v7, type metadata accessor for UserNotification.ArticleData);
          if (!a2)
          {
            goto LABEL_34;
          }
        }
      }

      else if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          sub_21980FDE8(v7, type metadata accessor for UserNotification.Kind);
          if (a2 == 6)
          {
            goto LABEL_34;
          }
        }

        else
        {
          sub_21980FDE8(v7, type metadata accessor for UserNotification.Kind);
          if (a2 == 7)
          {
LABEL_34:
            v16 = i;
            v17 = v4;
            v18 = a2;
            v20 = *&v12[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
            v19 = *&v12[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier + 8];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v31 = sub_218840D24(0, *(v31 + 2) + 1, 1, v31);
            }

            v22 = *(v31 + 2);
            v21 = *(v31 + 3);
            if (v22 >= v21 >> 1)
            {
              v31 = sub_218840D24((v21 > 1), v22 + 1, 1, v31);
            }

            v23 = v31;
            *(v31 + 2) = v22 + 1;
            v24 = &v23[16 * v22];
            *(v24 + 4) = v20;
            *(v24 + 5) = v19;
            a2 = v18;
            v4 = v17;
            i = v16;
            v7 = v27;
            v8 = v28;
            goto LABEL_6;
          }
        }
      }

      else if (EnumCaseMultiPayload == 6)
      {
        if (a2 == 3)
        {
          goto LABEL_34;
        }
      }

      else if (EnumCaseMultiPayload == 7)
      {
        if (a2 == 4)
        {
          goto LABEL_34;
        }
      }

      else if (a2 == 8)
      {
        goto LABEL_34;
      }

LABEL_6:
      ++v10;
      if (v13 == i)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_44:
  sub_2198101D0(v31);

  return result;
}

uint64_t sub_21980F264()
{
  sub_219BF4764();
  sub_219BF4754();
  v0 = sub_219BF4734();

  if (!v0)
  {
    return 0;
  }

  v1 = objc_allocWithZone(type metadata accessor for NotificationSettings());
  v2 = sub_21980FBE0(v0);

  return v2;
}

uint64_t sub_21980F2F4(uint64_t a1, uint64_t a2)
{
  if (qword_280EE9A28 != -1)
  {
    swift_once();
  }

  sub_21980FD64(qword_280ED0E28, a2, type metadata accessor for NotificationService, &unk_219CA9A00);
  sub_219BDC7D4();
  return v3;
}

uint64_t sub_21980F3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21874E9D8(0, &unk_280EE6B40, sub_218A7A138, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_21980F458(uint64_t a1)
{
  v1 = [objc_opt_self() currentNotificationCenter];
  v2 = sub_219BF5904();
  [v1 removeDeliveredNotificationsWithIdentifiers_];
}

void sub_21980F4E8(char *a1)
{
  v2 = *v1;
  v3 = *a1;
  sub_218A7A138(0);
  sub_219BE3204();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = v2;
  v6 = sub_219BE2E54();
  sub_219BE2F74();
}

void sub_21980F5B8(uint64_t a1)
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61750;
  v2 = sub_219BF6214();
  sub_219BE5314("Removing all pending notifications", 34, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
  v3 = [objc_opt_self() currentNotificationCenter];
  [v3 removeAllPendingNotificationRequests];
}

uint64_t sub_21980F6AC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_219BED174();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BED1D4();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v13 = sub_219BF66A4();
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_21981065C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_96;
  v15 = _Block_copy(aBlock);
  v16 = v3;
  v17 = a1;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21980FD64(&qword_280E927E0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_21874E9D8(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v12, v9, v15);
  _Block_release(v15);

  (*(v20 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v19);
}

void sub_21980F9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a1 + OBJC_IVAR____TtC7NewsUI219NotificationService_warmingSheetPresenter);
  swift_beginAccess();
  v8 = v7[3];
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
        sub_2195CC6C8(a2, a3, a4);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_21980FB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_219BDB714();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_21980FBE0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [a1 authorizationStatus];
  v5 = v4 == 1;
  if (v4 == 2)
  {
    v5 = 2;
  }

  *&v1[OBJC_IVAR___TSNotificationSettings_authorizationStatus] = v5;
  v6 = [a1 soundSetting] == 2;
  v1[OBJC_IVAR___TSNotificationSettings_sound] = v6;
  v7 = [a1 badgeSetting] == 2;
  v1[OBJC_IVAR___TSNotificationSettings_badge] = v7;
  v8 = [a1 lockScreenSetting] == 2;
  v1[OBJC_IVAR___TSNotificationSettings_showOnLockScreen] = v8;
  v9 = [a1 notificationCenterSetting] == 2;
  v1[OBJC_IVAR___TSNotificationSettings_showInNotificationCenter] = v9;
  v10 = [a1 alertStyle] == 1;
  v1[OBJC_IVAR___TSNotificationSettings_showBanners] = v10;
  result = [a1 scheduledDeliverySetting];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *&v1[OBJC_IVAR___TSNotificationSettings_scheduledDeliverySetting] = result;
    v12.receiver = v1;
    v12.super_class = ObjectType;
    return objc_msgSendSuper2(&v12, sel_init);
  }

  __break(1u);
  return result;
}

uint64_t sub_21980FD64(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_21980FDE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21980FE48(char *a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2186C6148(0, &qword_27CC1FBE0, 0x277CE1F60);
  v8 = a1;
  v9 = sub_21980C444(v8);
  sub_2186C6148(0, &qword_27CC1FBF8, 0x277CE1F38);
  (*(v5 + 16))(v7, a2, v4);
  v10 = sub_21980CA38(v7);
  v11 = sub_219BF53D4();
  v12 = [objc_opt_self() requestWithIdentifier:v11 content:v9 trigger:v10];

  v16 = v12;
  v17 = a2;
  v18 = v8;
  sub_21870F2E8(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8);
  swift_allocObject();
  v13 = sub_219BE30B4();

  return v13;
}

uint64_t sub_21981003C(char *a1, double a2)
{
  if (a2 <= 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_opt_self() triggerWithTimeInterval:0 repeats:a2];
  }

  sub_2186C6148(0, &qword_27CC1FBE0, 0x277CE1F60);
  v4 = sub_21980C444(a1);
  v5 = v3;
  v6 = sub_219BF53D4();
  v7 = [objc_opt_self() requestWithIdentifier:v6 content:v4 trigger:v5];

  MEMORY[0x28223BE20](v8);
  sub_21870F2E8(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8);
  swift_allocObject();
  v9 = sub_219BE30B4();

  return v9;
}

void sub_2198101D0(uint64_t a1)
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v2 = qword_280F61750;
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  v4 = MEMORY[0x277D837D0];
  v5 = MEMORY[0x21CECC6D0](a1, MEMORY[0x277D837D0]);
  v7 = v6;
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v8 = sub_219BF6214();
  sub_219BE5314("Removing pending notifications with identifiers %@", 50, 2, &dword_2186C1000, v2, v8, v3);

  v9 = [objc_opt_self() currentNotificationCenter];
  v10 = sub_219BF5904();
  [v9 removePendingNotificationRequestsWithIdentifiers_];
}

uint64_t sub_21981032C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21874E9D8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2198103C4()
{
  if (!qword_280E8F760)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F760);
    }
  }
}

void sub_219810420(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = sub_219BF52A4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_219810480(void *a1)
{
  v3 = *(sub_219BDBD34() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_21980D284(a1, v6, v7, v1 + v4, v8, v9);
}

unint64_t sub_2198105A8()
{
  result = qword_27CC1FC00;
  if (!qword_27CC1FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FC00);
  }

  return result;
}

uint64_t objectdestroy_77Tm_1()
{

  return swift_deallocObject();
}

unint64_t sub_21981067C()
{
  result = qword_27CC1FC08;
  if (!qword_27CC1FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FC08);
  }

  return result;
}

double sub_219810750()
{
  v1 = v0;
  v2 = MEMORY[0x277D83D88];
  sub_2187480E4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = MEMORY[0x277D34098];
  sub_2187480E4(0, &qword_280E8FFE0, MEMORY[0x277D34098], v2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_218DF2428();
  v13 = *(v1 + 16);
  type metadata accessor for FollowingNotificationsPrewarm(0);
  v14 = swift_allocBox();
  v16 = v15;
  sub_21878D714(0);
  v18 = *(v17 + 48);
  *v16 = v12;
  v19 = v7;
  v20 = sub_219BF3BD4();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  sub_219810F78(v11, v16 + v18, &qword_280E8FFE0, v8);
  swift_storeEnumTagMultiPayload();
  v44 = v14;
  v21 = v14 | 0x3000000000000004;
  v22 = *(v1 + 24);
  v23 = sub_219BDFA44();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v50 = v13;
  sub_2187B15C0(v51, &v46, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  if (v47)
  {
    sub_21875F93C(&v46, v48);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v25 = qword_280ED32D8;
    v24 = qword_280ED32E0;
    v26 = qword_280ED32E8;

    v40 = v24;
    sub_2188202A8(v24);
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
    sub_2187449F0(&v46, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v25 = qword_280ED32D8;
    v27 = qword_280ED32E0;
    v26 = qword_280ED32E8;

    v40 = v27;
    sub_2188202A8(v27);
  }

  v45 = v21;
  v47 = sub_219BDD274();
  *&v46 = v22;
  v28 = MEMORY[0x277D2DED0];
  v29 = v43;
  sub_2187B15C0(v7, v43, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2187480E4);
  sub_2187B15C0(v53, v48, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v30 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v31 = (v41 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 47) & 0xFFFFFFFFFFFFFFF8;
  v42 = v19;
  v33 = swift_allocObject();
  *(v33 + 16) = v22;
  sub_219810F78(v29, v33 + v30, &qword_280EE8610, v28);
  v34 = v33 + v31;
  v35 = v48[1];
  *v34 = v48[0];
  *(v34 + 16) = v35;
  *(v34 + 32) = v49;
  v36 = (v33 + v32);
  v37 = (v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v36 = 0;
  v36[1] = 0;
  v38 = v40;
  *v37 = v25;
  v37[1] = v38;
  v37[2] = v26;
  swift_retain_n();

  sub_2188202A8(v38);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v38, v26);
  sub_2187449F0(v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187449F0(v53, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_2187449F0(v42, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2187480E4);
  sub_2187449F0(&v46, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return result;
}

uint64_t sub_219810F78(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2187480E4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_219810FF8(void *a1)
{
  sub_2187480E4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2198110EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v3 = sub_219BDE294();
  v62 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198137D0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v58 - v7;
  v9 = sub_219BDD534();
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDD944();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDD444();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v19, a1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277D2F9B0])
  {
    (*(v16 + 96))(v19, v15);
    v21 = *v19;
    v22 = *(v63 + 16);
    ObjectType = swift_getObjectType();
    v24 = *(sub_218E97A64(v21, v22, ObjectType) + 2);
    v25 = objc_allocWithZone(type metadata accessor for FeedViewContext(0));
    swift_unknownObjectRetain();
    v26 = [v25 init];
    swift_unknownObjectRelease();

    result = swift_allocObject();
    *(result + 16) = v24;
    *(result + 24) = v26;
    *(result + 32) = MEMORY[0x277D84F90];
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0;
    *(result + 96) = -1;
    *v64 = result | 0x2000000000000006;
    return result;
  }

  v28 = v64;
  if (v20 == *MEMORY[0x277D2F980])
  {
    (*(v16 + 96))(v19, v15);
    sub_219813884(0);
    v30 = *(v19 + *(v29 + 48));
    sub_218A38F7C(v19, v14);
    sub_2187B2C48(0);
    v32 = v31;
    v33 = swift_allocBox();
    v35 = v34;
    sub_2187B2DA0(0);
    v37 = *(v36 + 48);
    sub_2198138F0(v14, v35, MEMORY[0x277D2FB40]);
    v38 = MEMORY[0x277D84F90];
    *(v35 + v37) = MEMORY[0x277D84F90];
    if (v30)
    {
      v39 = &unk_282A2A310;
    }

    else
    {
      v39 = v38;
    }

    v40 = *(v32 + 48);
    result = sub_218BF9888(v14, MEMORY[0x277D2FB40]);
    *(v35 + v40) = v39;
    v41 = v33 | 2;
    goto LABEL_15;
  }

  if (v20 == *MEMORY[0x277D2F990])
  {
    (*(v16 + 96))(v19, v15);
    v42 = *v19;
    v58[0] = v19[1];
    v58[1] = v42;
    sub_2187B2C48(0);
    v44 = v43;
    v63 = swift_allocBox();
    v46 = v45;
    v60 = *(v44 + 48);
    sub_2187B2DA0(0);
    v59 = *(v47 + 48);
    v48 = sub_219BDB954();
    v49 = *(*(v48 - 8) + 56);
    v49(v8, 1, 1, v48);
    sub_219BDD514();
    v49(v8, 1, 1, v48);
    v50 = v62;
    (*(v62 + 104))(v5, *MEMORY[0x277D2FF08], v3);
    sub_219BDD894();
    (*(v50 + 8))(v5, v3);
    sub_219813828(v8, &unk_280EE9D00, MEMORY[0x277CC9260]);
    result = (*(v61 + 8))(v11, v9);
    v51 = v60;
    *(v46 + v59) = MEMORY[0x277D84F90];
    *(v46 + v51) = &unk_282A2A338;
    v41 = v63 | 2;
    goto LABEL_15;
  }

  if (v20 == *MEMORY[0x277D2F9A0])
  {
    (*(v16 + 96))(v19, v15);
    v52 = *v19;
    result = swift_allocObject();
    *(result + 16) = v52;
    v53 = 0x7000000000000004;
LABEL_14:
    v41 = result | v53;
    goto LABEL_15;
  }

  if (v20 == *MEMORY[0x277D2F988])
  {
    (*(v16 + 96))(v19, v15);
    v54 = *v19;
    result = swift_allocObject();
    *(result + 16) = v54;
    *(result + 24) = xmmword_219CA9C40;
    v53 = 0xD000000000000000;
    goto LABEL_14;
  }

  if (v20 != *MEMORY[0x277D2F998])
  {
    *v64 = 0xF000000000000007;
    return (*(v16 + 8))(v19, v15);
  }

  (*(v16 + 96))(v19, v15);
  v55 = sub_219BDB954();
  v56 = swift_allocBox();
  result = (*(*(v55 - 8) + 32))(v57, v19, v55);
  v41 = v56 | 0x6000000000000000;
LABEL_15:
  *v28 = v41;
  return result;
}

double sub_219811828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v58 = a3;
  v59 = a2;
  sub_2198137D0(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v52 - v10;
  v11 = sub_219BE8C14();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE9414();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  sub_2198110EC(a1, v69);
  v61 = *&v69[0];
  if ((~*&v69[0] & 0xF000000000000007) != 0)
  {
    (*(v12 + 16))(v14, v59, v11);
    sub_219BE9424();
    (*(v16 + 104))(v18, *MEMORY[0x277D6E598], v15);
    sub_2186F7DF8(&unk_280EE44E0, MEMORY[0x277D6E5A8], MEMORY[0x277D6E5B0]);
    v23 = sub_219BF53A4();
    v26 = *(v16 + 8);
    v24 = v16 + 8;
    v25 = v26;
    v26(v18, v15);
    v27 = *(v5 + 32);
    if (v23)
    {
      v28 = sub_219BDFA44();
      v29 = v60;
      (*(*(v28 - 8) + 56))(v60, 1, 1, v28);
      v70 = 0;
      memset(v69, 0, sizeof(v69));
      v68 = v27;
      sub_21896FEF0(v69, &v63, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v52 = v25;
      if (v65)
      {
        sub_21875F93C(&v63, v66);
        v30 = v61;
        *&v63 = v61;
        v31 = sub_2194DA78C(v66);
        v33 = v32;
        v35 = v34;
        __swift_destroy_boxed_opaque_existential_1(v66);
      }

      else
      {
        sub_21896FF74(&v63, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v30 = v61;
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v31 = qword_280ED32D8;
        v38 = qword_280ED32E0;
        v35 = qword_280ED32E8;

        v33 = v38;
        sub_2188202A8(v38);
      }

      v39 = v58;
      v62 = v30;
      v59 = v24;
      v54 = v21;
      v53 = v15;
      if (v58)
      {
        v40 = sub_219BDD274();
        v41 = v39;
      }

      else
      {
        v41 = 0;
        v40 = 0;
        *(&v63 + 1) = 0;
        v64 = 0;
      }

      v42 = v39;
      *&v63 = v41;
      v65 = v40;
      v43 = v56;
      sub_2189B4E2C(v29, v56);
      sub_21896FEF0(v57, v66, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v44 = (*(v55 + 80) + 24) & ~*(v55 + 80);
      v45 = (v8 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
      v46 = (v45 + 47) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      *(v47 + 16) = v42;
      sub_2189B4EAC(v43, v47 + v44);
      v48 = v47 + v45;
      v49 = v66[1];
      *v48 = v66[0];
      *(v48 + 16) = v49;
      *(v48 + 32) = v67;
      v50 = (v47 + v46);
      v51 = (v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v50 = 0;
      v50[1] = 0;
      *v51 = v31;
      v51[1] = v33;
      v51[2] = v35;
      swift_retain_n();

      sub_2188202A8(v33);
      sub_2186CF94C(0);
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      sub_219BEB464();

      sub_2187FABEC(v33, v35);
      sub_21896FF74(v69, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_219813828(v60, &qword_280EE8610, MEMORY[0x277D2DED0]);
      v52(v54, v53);
      sub_218806FD0(&v63);
      v37 = v61;
    }

    else
    {
      v36 = v61;
      *&v69[0] = v61;
      sub_219BE6474();
      v25(v21, v15);
      v37 = v36;
    }

    return sub_218970170(v37);
  }

  return result;
}

double sub_219811FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2198137D0(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  sub_2198110EC(a1, v45);
  v14 = v45[0];
  if ((~v45[0] & 0xF000000000000007) != 0)
  {
    v15 = *(v3 + 32);
    v16 = sub_219BDFA44();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    memset(v45, 0, 40);
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    v42 = v15;
    sub_21896FEF0(v43, &v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (v39)
    {
      sub_21875F93C(&v37, v40);
      *&v37 = v14;
      v17 = sub_2194DA78C(v40);
      v35 = v18;
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      sub_21896FF74(&v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v17 = qword_280ED32D8;
      v21 = qword_280ED32E0;
      v20 = qword_280ED32E8;

      v35 = v21;
      sub_2188202A8(v21);
    }

    v36 = v14;
    if (a3)
    {
      v22 = sub_219BDD274();
      v23 = a3;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      v38 = 0;
      *(&v37 + 1) = 0;
    }

    *&v37 = v23;
    v39 = v22;
    sub_2189B4E2C(v12, v9);
    sub_21896FEF0(v45, v40, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = v12;
    v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = a3;
    sub_2189B4EAC(v9, v27 + v24);
    v28 = v27 + v25;
    v29 = v40[1];
    *v28 = v40[0];
    *(v28 + 16) = v29;
    *(v28 + 32) = v41;
    v30 = (v27 + v26);
    v31 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v30 = 0;
    v30[1] = 0;
    v32 = v35;
    *v31 = v17;
    v31[1] = v32;
    v31[2] = v20;
    swift_retain_n();

    sub_2188202A8(v32);
    sub_2186CF94C(0);
    sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB464();

    sub_2187FABEC(v32, v20);
    sub_21896FF74(v43, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_21896FF74(v45, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_219813828(v34, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_218806FD0(&v37);
    return sub_218970170(v14);
  }

  return result;
}

uint64_t sub_219812558(uint64_t a1, uint64_t a2)
{
  sub_21896F9B8(0);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v53 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for NewsActivity2.Article(0);
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198137D0(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - v10;
  v12 = sub_219BDD944();
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = &v53 - v16;
  sub_2198137D0(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v58 = *(v17 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v59 = &v53 - v21;
  sub_2198110EC(a1, v63);
  v22 = 0;
  v23 = *&v63[0];
  if ((~*&v63[0] & 0xF000000000000007) != 0)
  {
    if (a2)
    {
      v24 = a2;
      v25 = *&v63[0];
      v26 = *(v2 + 32);
      v27 = sub_219BDFA44();
      (*(*(v27 - 8) + 56))(v59, 1, 1, v27);
      v64 = 0;
      memset(v63, 0, sizeof(v63));
      v62[5] = v26;
      sub_219BDC8D4();

      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      v28 = sub_219BDC8C4();

      if (v28)
      {
        v29 = v25;
        v30 = (v25 >> 58) & 0x3C | (v25 >> 1) & 3;
        if ((v30 - 9) < 0x34 || (v41 = 1 << v30, (v41 & 0xF9) != 0))
        {
          (*(v57 + 56))(v11, 1, 1, v7);
          sub_219813828(v11, qword_280EE0178, type metadata accessor for NewsActivity2.Article);
        }

        else
        {
          if ((v41 & 6) != 0)
          {
            sub_2187B2C48(0);
          }

          v42 = swift_projectBox();
          sub_2198138F0(v42, v11, type metadata accessor for NewsActivity2.Article);
          (*(v57 + 56))(v11, 0, 1, v7);
          v43 = v56;
          sub_2198138F0(v11, v56, type metadata accessor for NewsActivity2.Article);
          sub_2187B2DA0(0);

          sub_218A38F7C(v43, v14);
          sub_218BF9888(v11, type metadata accessor for NewsActivity2.Article);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v44 = swift_projectBox();
            v45 = v53;
            sub_2198138F0(v44, v53, sub_21896F9B8);
            v46 = v55;
            sub_218A38F7C(v45 + *(v54 + 48), v55);
            __swift_destroy_boxed_opaque_existential_1(v45);

            sub_2186C66AC();
            v47 = sub_219BF6F44();
            sub_2186C6FC8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
            v48 = swift_allocObject();
            *(v48 + 16) = xmmword_219C09BA0;
            v49 = sub_219BDD8C4();
            v51 = v50;
            *(v48 + 56) = MEMORY[0x277D837D0];
            *(v48 + 64) = sub_2186FC3BC();
            *(v48 + 32) = v49;
            *(v48 + 40) = v51;
            v52 = sub_219BF6214();
            sub_219BE5314("Unable to preview for blocked headline: %{public}@", 50, 2, &dword_2186C1000, v47, v52, v48);

            sub_218BF9888(v46, MEMORY[0x277D2FB40]);
            sub_21896FF74(v63, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
            sub_219813828(v59, &qword_280EE8610, MEMORY[0x277D2DED0]);
            sub_218970170(v29);
            return 0;
          }

          sub_218BF9888(v14, MEMORY[0x277D2FB40]);
        }
      }

      v31 = v25;
      v62[4] = v25;
      v62[3] = sub_219BDD274();
      v62[0] = v24;
      v32 = v59;
      sub_2189B4E2C(v59, v19);
      v33 = MEMORY[0x277D2D578];
      sub_21896FEF0(v63, v60, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v34 = (*(v58 + 80) + 24) & ~*(v58 + 80);
      v35 = (v18 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      *(v36 + 16) = v24;
      sub_2189B4EAC(v19, v36 + v34);
      v37 = v36 + v35;
      v38 = v60[1];
      *v37 = v60[0];
      *(v37 + 16) = v38;
      *(v37 + 32) = v61;
      v39 = (v36 + ((v35 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v39 = 0;
      v39[1] = 0;
      sub_2186CF94C(0);
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      swift_retain_n();
      v22 = sub_219BEB454();

      sub_21896FF74(v63, &qword_280EE33A0, &qword_280EE33B0, v33);
      sub_219813828(v32, &qword_280EE8610, MEMORY[0x277D2DED0]);
      sub_218806FD0(v62);
      sub_218970170(v31);
    }

    else
    {
      *&v63[0] = *(v2 + 32);
      *&v60[0] = v23;
      sub_2186CF94C(0);
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);

      v22 = sub_219BEB494();

      sub_218970170(v23);
    }
  }

  return v22;
}

uint64_t sub_219812E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  sub_21896F9B8(0);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NewsActivity2.Article(0);
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198137D0(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - v12;
  v14 = sub_219BDD944();
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = &v53 - v18;
  sub_2198137D0(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v59 = *(v19 - 8);
  v20 = *(v59 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v61 = &v53 - v23;
  sub_2198110EC(a1, v62);
  v24 = 0;
  v25 = *&v62[0];
  if ((~*&v62[0] & 0xF000000000000007) != 0)
  {
    if (a2)
    {
      v54 = *&v62[0];
      v26 = *(v3 + 32);
      v27 = sub_219BDFA44();
      (*(*(v27 - 8) + 56))(v61, 1, 1, v27);
      v64[5] = v26;
      sub_219BDC8D4();
      v53 = a2;

      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      v28 = sub_219BDC8C4();

      if (v28)
      {
        v29 = v54;
        v30 = (v29 >> 58) & 0x3C | (v29 >> 1) & 3;
        if ((v30 - 9) < 0x34 || (v42 = 1 << v30, (v42 & 0xF9) != 0))
        {
          (*(v58 + 56))(v13, 1, 1, v8);
          sub_219813828(v13, qword_280EE0178, type metadata accessor for NewsActivity2.Article);
        }

        else
        {
          if ((v42 & 6) != 0)
          {
            sub_2187B2C48(0);
            v29 = v54;
          }

          v43 = swift_projectBox();
          sub_2198138F0(v43, v13, type metadata accessor for NewsActivity2.Article);
          (*(v58 + 56))(v13, 0, 1, v8);
          sub_2198138F0(v13, v10, type metadata accessor for NewsActivity2.Article);
          sub_2187B2DA0(0);

          sub_218A38F7C(v10, v16);
          sub_218BF9888(v13, type metadata accessor for NewsActivity2.Article);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v44 = swift_projectBox();
            v45 = v55;
            sub_2198138F0(v44, v55, sub_21896F9B8);
            v46 = v57;
            sub_218A38F7C(v45 + *(v56 + 48), v57);
            __swift_destroy_boxed_opaque_existential_1(v45);

            sub_2186C66AC();
            v47 = sub_219BF6F44();
            sub_2186C6FC8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
            v48 = swift_allocObject();
            *(v48 + 16) = xmmword_219C09BA0;
            v49 = sub_219BDD8C4();
            v51 = v50;
            *(v48 + 56) = MEMORY[0x277D837D0];
            *(v48 + 64) = sub_2186FC3BC();
            *(v48 + 32) = v49;
            *(v48 + 40) = v51;
            v52 = sub_219BF6214();
            sub_219BE5314("Unable to preview for blocked headline: %{public}@", 50, 2, &dword_2186C1000, v47, v52, v48);

            sub_218BF9888(v46, MEMORY[0x277D2FB40]);
            sub_219813828(v61, &qword_280EE8610, MEMORY[0x277D2DED0]);
            sub_218970170(v29);
            return 0;
          }

          sub_218BF9888(v16, MEMORY[0x277D2FB40]);
        }
      }

      v31 = v54;
      v64[4] = v54;
      v64[3] = sub_219BDD274();
      v32 = v53;
      v64[0] = v53;
      v33 = v61;
      sub_2189B4E2C(v61, v21);
      sub_21896FEF0(v60, v62, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v34 = (*(v59 + 80) + 24) & ~*(v59 + 80);
      v35 = (v20 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      *(v36 + 16) = v32;
      sub_2189B4EAC(v21, v36 + v34);
      v37 = v36 + v35;
      v38 = v62[1];
      *v37 = v62[0];
      *(v37 + 16) = v38;
      *(v37 + 32) = v63;
      v39 = (v36 + ((v35 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v39 = 0;
      v39[1] = 0;
      sub_2186CF94C(0);
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      swift_retain_n();
      v24 = sub_219BEB454();

      sub_219813828(v33, &qword_280EE8610, MEMORY[0x277D2DED0]);
      sub_218806FD0(v64);
      sub_218970170(v31);
    }

    else
    {
      *&v62[0] = *(v3 + 32);
      v64[0] = v25;
      v40 = v25;
      sub_2186CF94C(0);
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);

      v24 = sub_219BEB494();

      sub_218970170(v40);
    }
  }

  return v24;
}

uint64_t sub_2198136CC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2198137D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_219813828(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2198137D0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_219813884(uint64_t a1)
{
  if (!qword_27CC1FC10)
  {
    sub_219BDD944();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1FC10);
    }
  }
}

uint64_t sub_2198138F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219813958(void *a1)
{
  sub_2198137D0(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_2194DAF24(a1, v7, v1 + v5, v1 + v6, v9, v10);
}

uint64_t objectdestroy_17Tm_3()
{
  sub_2198137D0(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_219813BB0(void *a1)
{
  sub_2198137D0(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_219813CE0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_219813D44()
{
  v0 = sub_219BDBD64();
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x28223BE20](v0);
  v36 = v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_219BE1544();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BE1524();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE9C04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDF074();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v33 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  sub_219BE9934();
  v17 = (*(v8 + 88))(v10, v7);
  if (v17 == *MEMORY[0x277D6E830])
  {
    v18 = MEMORY[0x277D2D868];
LABEL_6:
    v19 = *v18;
    v32 = v12;
    v20 = *(v12 + 104);
    v28 = v16;
    v20(v16, v19, v11);
    v40 = *(v42 + 16);
    sub_219BE9924();
    v31 = *MEMORY[0x277D2F3A8];
    v30 = *(v3 + 104);
    v27[0] = v2;
    v30(v5);
    v41 = v11;
    v29 = *(v12 + 16);
    v21 = v33;
    v29(v33, v16, v11);
    v22 = v34;
    sub_219BE1514();
    v27[2] = "nagementDetailTracker.swift";
    v27[1] = sub_2198153B8(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
    v23 = v35;
    sub_219BDD1F4();
    v37 = *(v37 + 8);
    (v37)(v22, v23);
    v42 = *(v42 + 24);
    v24 = v36;
    sub_219BDBD54();
    sub_219BDBD44();
    (*(v38 + 8))(v24, v39);
    (v30)(v5, v31, v27[0]);
    v25 = v28;
    v29(v21, v28, v41);
    sub_219BE1514();
    sub_219BDD1F4();
    (v37)(v22, v23);
    sub_219BDD134();
    sub_219BDD134();
    return (*(v32 + 8))(v25, v41);
  }

  v18 = MEMORY[0x277D2D810];
  if (v17 == *MEMORY[0x277D6E840] || v17 == *MEMORY[0x277D6E848] || v17 == *MEMORY[0x277D6E838])
  {
    goto LABEL_6;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}