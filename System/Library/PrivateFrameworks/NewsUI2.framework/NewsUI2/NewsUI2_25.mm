uint64_t sub_218998180()
{
  v0 = type metadata accessor for FoodTodayFeedGroup(0);
  MEMORY[0x28223BE20](v0 - 8);
  v94 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v2 - 8);
  v93 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v92 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v91 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v90 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v12 - 8);
  v88 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v87);
  v86 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v15 - 8);
  v85 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v17 - 8);
  v84 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BED544();
  v82 = *(v19 - 8);
  v83 = v19;
  MEMORY[0x28223BE20](v19);
  v80 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF1904();
  v78 = *(v21 - 8);
  v79 = v21;
  MEMORY[0x28223BE20](v21);
  v77 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v23 - 8);
  v81 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v25 - 8);
  v76 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v27 - 8);
  v75 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v29 - 8);
  v74 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v31 - 8);
  v73 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v33 - 8);
  v72 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v71 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v71 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v44);
  v46 = &v71 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v47);
  v49 = &v71 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v71 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v53);
  v55 = &v71 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v95, v55);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v55, v49, type metadata accessor for NewspaperTodayFeedGroup);
      v67 = [*&v49[*(v47 + 20)] name];
      v56 = sub_219BF5414();

      v61 = type metadata accessor for NewspaperTodayFeedGroup;
      v62 = v49;
      goto LABEL_28;
    case 2u:
      sub_2187C58F8(v55, v46, type metadata accessor for LocalNewsTodayFeedGroup);
      v66 = [*&v46[*(v44 + 20)] name];
      v56 = sub_219BF5414();

      v61 = type metadata accessor for LocalNewsTodayFeedGroup;
      v62 = v46;
      goto LABEL_28;
    case 3u:
      sub_2187C58F8(v55, v43, type metadata accessor for TrendingTodayFeedGroup);
      v56 = sub_219BED774();
      v61 = type metadata accessor for TrendingTodayFeedGroup;
      v62 = v43;
      goto LABEL_28;
    case 4u:
      sub_2187C58F8(v55, v40, type metadata accessor for ForYouTodayFeedGroup);
      v56 = sub_219BED774();
      v61 = type metadata accessor for ForYouTodayFeedGroup;
      v62 = v40;
      goto LABEL_28;
    case 5u:
      sub_2187C58F8(v55, v37, type metadata accessor for MissedStoriesTodayFeedGroup);
      v56 = sub_219BED774();
      v69 = type metadata accessor for MissedStoriesTodayFeedGroup;
      goto LABEL_32;
    case 6u:
      v52 = v72;
      sub_2187C58F8(v55, v72, type metadata accessor for LatestStoriesTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_27;
    case 7u:
      v52 = v73;
      sub_2187C58F8(v55, v73, type metadata accessor for MoreForYouTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_27;
    case 8u:
      v52 = v74;
      sub_2187C58F8(v55, v74, type metadata accessor for TopicTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_27;
    case 9u:
      v52 = v75;
      sub_2187C58F8(v55, v75, type metadata accessor for MagazineFeedGroup);
      v56 = sub_218CDD908();
      v57 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_27;
    case 0xAu:
      v52 = v76;
      sub_2187C58F8(v55, v76, type metadata accessor for NewFollowTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_27;
    case 0xBu:
      v37 = v81;
      sub_2187C58F8(v55, v81, type metadata accessor for SubscriptionTodayFeedGroup);
      v58 = v77;
      sub_219BED874();
      v59 = sub_219BF1844();
      (*(v78 + 8))(v58, v79);
      if (v59)
      {
        v60 = [v59 name];
        swift_unknownObjectRelease();
        v56 = sub_219BF5414();
      }

      else
      {
        v56 = 0;
      }

      v69 = type metadata accessor for SubscriptionTodayFeedGroup;
LABEL_32:
      v61 = v69;
      v62 = v37;
      goto LABEL_28;
    case 0xCu:
      v64 = v82;
      v63 = v83;
      v65 = v80;
      (*(v82 + 32))(v80, v55, v83);
      v56 = sub_219BED4A4();
      (*(v64 + 8))(v65, v63);
      return v56;
    case 0xDu:
      v52 = v84;
      sub_2187C58F8(v55, v84, type metadata accessor for SpotlightTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_27;
    case 0xEu:
      v52 = v85;
      sub_2187C58F8(v55, v85, type metadata accessor for SuggestionTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_27;
    case 0xFu:
    case 0x11u:
      sub_2187C8338(v55, type metadata accessor for TodayFeedGroup);
      return 0;
    case 0x10u:
      v68 = v86;
      sub_2187C58F8(v55, v86, type metadata accessor for SharedWithYouTodayFeedGroup);
      v56 = sub_219BED774();
      v61 = type metadata accessor for SharedWithYouTodayFeedGroup;
      v62 = v68;
      goto LABEL_28;
    case 0x12u:
      v52 = v88;
      sub_2187C58F8(v55, v88, type metadata accessor for MySportsTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_27;
    case 0x13u:
      v52 = v89;
      sub_2187C58F8(v55, v89, type metadata accessor for IntroToSportsTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_27;
    case 0x14u:
      v52 = v90;
      sub_2187C58F8(v55, v90, type metadata accessor for ShortcutsTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_27;
    case 0x15u:
      v52 = v91;
      sub_2187C58F8(v55, v91, type metadata accessor for ChannelTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_27;
    case 0x16u:
      v52 = v92;
      sub_2187C58F8(v55, v92, type metadata accessor for SavedStoriesTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_27;
    case 0x17u:
      v52 = v93;
      sub_2187C58F8(v55, v93, type metadata accessor for ChannelPickerTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_27;
    case 0x18u:
      v52 = v94;
      sub_2187C58F8(v55, v94, type metadata accessor for FoodTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_27;
    default:
      sub_2187C58F8(v55, v52, type metadata accessor for CuratedTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_27:
      v61 = v57;
      v62 = v52;
LABEL_28:
      sub_2187C8338(v62, v61);
      return v56;
  }
}

uint64_t sub_2189990D4()
{
  v0 = type metadata accessor for FoodTodayFeedGroup(0);
  MEMORY[0x28223BE20](v0 - 8);
  v87 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v86);
  v85 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v84);
  v83 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v82);
  v81 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v80);
  v79 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v78);
  v77 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for EngagementTodayFeedGroup(0);
  MEMORY[0x28223BE20](v75);
  v74 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v73);
  v72 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for SeenContentMarkTodayFeedGroup(0);
  MEMORY[0x28223BE20](v71);
  v70 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v69);
  v68 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v67);
  v66 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_219BED544();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v62);
  v61 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v60);
  v59 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v17 - 8);
  v58 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v57);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v55);
  v54 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v21 - 8);
  v53 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v35);
  v37 = &v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v52 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v41);
  v43 = &v52 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v88, v43);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v43, v37, type metadata accessor for NewspaperTodayFeedGroup);
      sub_2187733B4(&unk_280EC44E0, type metadata accessor for NewspaperTodayFeedGroup, &unk_219C85BFC);
      v44 = sub_219BEE8E4();
      v46 = type metadata accessor for NewspaperTodayFeedGroup;
      v47 = v37;
      goto LABEL_28;
    case 2u:
      sub_2187C58F8(v43, v34, type metadata accessor for LocalNewsTodayFeedGroup);
      sub_2187733B4(&qword_280EE1910, type metadata accessor for LocalNewsTodayFeedGroup, &unk_219C3316C);
      v44 = sub_219BEE8E4();
      v46 = type metadata accessor for LocalNewsTodayFeedGroup;
      v47 = v34;
      goto LABEL_28;
    case 3u:
      sub_2187C58F8(v43, v31, type metadata accessor for TrendingTodayFeedGroup);
      v44 = sub_219BED7D4();
      v46 = type metadata accessor for TrendingTodayFeedGroup;
      v47 = v31;
      goto LABEL_28;
    case 4u:
      sub_2187C58F8(v43, v28, type metadata accessor for ForYouTodayFeedGroup);
      v44 = sub_219BED7D4();
      v46 = type metadata accessor for ForYouTodayFeedGroup;
      v47 = v28;
      goto LABEL_28;
    case 5u:
      sub_2187C58F8(v43, v25, type metadata accessor for MissedStoriesTodayFeedGroup);
      v44 = sub_219BED7D4();
      v46 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v47 = v25;
      goto LABEL_28;
    case 6u:
      v40 = v53;
      sub_2187C58F8(v43, v53, type metadata accessor for LatestStoriesTodayFeedGroup);
      v44 = sub_219BED7D4();
      v45 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_27;
    case 7u:
      v40 = v54;
      sub_2187C58F8(v43, v54, type metadata accessor for MoreForYouTodayFeedGroup);
      sub_2187733B4(&qword_280EC0F88, type metadata accessor for MoreForYouTodayFeedGroup, &unk_219C8D860);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_27;
    case 8u:
      v40 = v56;
      sub_2187C58F8(v43, v56, type metadata accessor for TopicTodayFeedGroup);
      sub_2187733B4(&qword_280ECFA30, type metadata accessor for TopicTodayFeedGroup, &unk_219C2D3C8);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_27;
    case 9u:
      v40 = v58;
      sub_2187C58F8(v43, v58, type metadata accessor for MagazineFeedGroup);
      v44 = sub_218CDE404();
      v45 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_27;
    case 0xAu:
      v40 = v59;
      sub_2187C58F8(v43, v59, type metadata accessor for NewFollowTodayFeedGroup);
      sub_2187733B4(&qword_27CC0BA50, type metadata accessor for NewFollowTodayFeedGroup, &unk_219C1431C);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_27;
    case 0xBu:
      v40 = v61;
      sub_2187C58F8(v43, v61, type metadata accessor for SubscriptionTodayFeedGroup);
      sub_2187733B4(&qword_27CC0BA48, type metadata accessor for SubscriptionTodayFeedGroup, &unk_219CA6B00);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_27;
    case 0xCu:
      v48 = v64;
      v49 = v63;
      v50 = v65;
      (*(v64 + 32))(v63, v43, v65);
      v44 = sub_219BEE8E4();
      (*(v48 + 8))(v49, v50);
      return v44;
    case 0xDu:
      v40 = v66;
      sub_2187C58F8(v43, v66, type metadata accessor for SpotlightTodayFeedGroup);
      sub_2187733B4(&qword_280EC31C0, type metadata accessor for SpotlightTodayFeedGroup, &unk_219C459EC);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_27;
    case 0xEu:
      v40 = v68;
      sub_2187C58F8(v43, v68, type metadata accessor for SuggestionTodayFeedGroup);
      sub_2187733B4(&qword_280EBFFE8, type metadata accessor for SuggestionTodayFeedGroup, &unk_219C70090);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_27;
    case 0xFu:
      v40 = v70;
      sub_2187C58F8(v43, v70, type metadata accessor for SeenContentMarkTodayFeedGroup);
      sub_2187733B4(&qword_280EAEF50, type metadata accessor for SeenContentMarkTodayFeedGroup, &unk_219C45CB4);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_27;
    case 0x10u:
      v40 = v72;
      sub_2187C58F8(v43, v72, type metadata accessor for SharedWithYouTodayFeedGroup);
      sub_2187733B4(&qword_27CC0BA40, type metadata accessor for SharedWithYouTodayFeedGroup, &unk_219CBA800);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_27;
    case 0x11u:
      v40 = v74;
      sub_2187C58F8(v43, v74, type metadata accessor for EngagementTodayFeedGroup);
      sub_2187733B4(&qword_280EC21B0, type metadata accessor for EngagementTodayFeedGroup, &unk_219C1B9C0);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for EngagementTodayFeedGroup;
      goto LABEL_27;
    case 0x12u:
      v40 = v76;
      sub_2187C58F8(v43, v76, type metadata accessor for MySportsTodayFeedGroup);
      v44 = sub_219BED7D4();
      v45 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_27;
    case 0x13u:
      v40 = v77;
      sub_2187C58F8(v43, v77, type metadata accessor for IntroToSportsTodayFeedGroup);
      sub_2187733B4(&qword_280EB8660, type metadata accessor for IntroToSportsTodayFeedGroup, &unk_219C0D7F0);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_27;
    case 0x14u:
      v40 = v79;
      sub_2187C58F8(v43, v79, type metadata accessor for ShortcutsTodayFeedGroup);
      sub_2187733B4(&qword_280EC3400, type metadata accessor for ShortcutsTodayFeedGroup, &unk_219CB958C);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_27;
    case 0x15u:
      v40 = v81;
      sub_2187C58F8(v43, v81, type metadata accessor for ChannelTodayFeedGroup);
      sub_2187733B4(&qword_280ECB9C0, type metadata accessor for ChannelTodayFeedGroup, &unk_219CB864C);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_27;
    case 0x16u:
      v40 = v83;
      sub_2187C58F8(v43, v83, type metadata accessor for SavedStoriesTodayFeedGroup);
      sub_2187733B4(&qword_27CC0BA38, type metadata accessor for SavedStoriesTodayFeedGroup, &unk_219CC6780);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_27;
    case 0x17u:
      v40 = v85;
      sub_2187C58F8(v43, v85, type metadata accessor for ChannelPickerTodayFeedGroup);
      sub_2187733B4(&qword_27CC0BA30, type metadata accessor for ChannelPickerTodayFeedGroup, &unk_219C423E0);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_27;
    case 0x18u:
      v40 = v87;
      sub_2187C58F8(v43, v87, type metadata accessor for FoodTodayFeedGroup);
      v44 = sub_219BED7D4();
      v45 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_27;
    default:
      sub_2187C58F8(v43, v40, type metadata accessor for CuratedTodayFeedGroup);
      v44 = sub_219BED7D4();
      v45 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_27:
      v46 = v45;
      v47 = v40;
LABEL_28:
      sub_2187C8338(v47, v46);
      return v44;
  }
}

uint64_t sub_21899A40C@<X0>(uint64_t *a1@<X8>)
{
  v89 = a1;
  v87 = type metadata accessor for FoodTodayFeedGroup(0);
  MEMORY[0x28223BE20](v87);
  v88 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v85);
  v86 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v83);
  v84 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v81);
  v82 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v79);
  v80 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v77);
  v78 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v75);
  v76 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v72);
  v73 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for SeenContentMarkTodayFeedGroup(0);
  MEMORY[0x28223BE20](v70);
  v71 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v68);
  v69 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v66);
  v67 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v64);
  v65 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v62);
  v63 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v60);
  v61 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v58);
  v59 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v56);
  v57 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v54);
  v55 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v52);
  v53 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v30);
  v32 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v52 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v90, v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = type metadata accessor for NewspaperTodayFeedGroup;
      sub_2187C58F8(v35, v29, type metadata accessor for NewspaperTodayFeedGroup);
      v51 = v89;
      v89[3] = v27;
      v51[4] = sub_2187733B4(&qword_27CC0B9B8, type metadata accessor for NewspaperTodayFeedGroup, &unk_219C85C94);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
      v47 = v29;
      break;
    case 2u:
      v38 = type metadata accessor for LocalNewsTodayFeedGroup;
      sub_2187C58F8(v35, v26, type metadata accessor for LocalNewsTodayFeedGroup);
      v45 = v89;
      v89[3] = v24;
      v45[4] = sub_2187733B4(&unk_280EE18D0, type metadata accessor for LocalNewsTodayFeedGroup, &unk_219C33204);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
      v47 = v26;
      break;
    case 3u:
      sub_2187C58F8(v35, v23, type metadata accessor for TrendingTodayFeedGroup);
      v48 = v89;
      v89[3] = v21;
      v48[4] = sub_2187733B4(&qword_280EC6248, type metadata accessor for TrendingTodayFeedGroup, &unk_219C5DD14);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
      v47 = v23;
      v49 = type metadata accessor for TrendingTodayFeedGroup;
      return sub_2187C58F8(v47, boxed_opaque_existential_1, v49);
    case 4u:
      v38 = type metadata accessor for ForYouTodayFeedGroup;
      v39 = v53;
      sub_2187C58F8(v35, v53, type metadata accessor for ForYouTodayFeedGroup);
      v40 = v89;
      v89[3] = v52;
      v41 = &qword_280ECE988;
      v42 = type metadata accessor for ForYouTodayFeedGroup;
      v43 = &unk_219C549C4;
      goto LABEL_26;
    case 5u:
      v38 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v39 = v55;
      sub_2187C58F8(v35, v55, type metadata accessor for MissedStoriesTodayFeedGroup);
      v40 = v89;
      v89[3] = v54;
      v41 = &qword_280EB7EE8;
      v42 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v43 = &unk_219C619A8;
      goto LABEL_26;
    case 6u:
      v38 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v39 = v57;
      sub_2187C58F8(v35, v57, type metadata accessor for LatestStoriesTodayFeedGroup);
      v40 = v89;
      v89[3] = v56;
      v41 = &qword_280EB8558;
      v42 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v43 = &unk_219C0B3C8;
      goto LABEL_26;
    case 7u:
      v38 = type metadata accessor for MoreForYouTodayFeedGroup;
      v39 = v59;
      sub_2187C58F8(v35, v59, type metadata accessor for MoreForYouTodayFeedGroup);
      v40 = v89;
      v89[3] = v58;
      v41 = &qword_27CC0B9B0;
      v42 = type metadata accessor for MoreForYouTodayFeedGroup;
      v43 = &unk_219C8D8F8;
      goto LABEL_26;
    case 8u:
      v38 = type metadata accessor for TopicTodayFeedGroup;
      v39 = v61;
      sub_2187C58F8(v35, v61, type metadata accessor for TopicTodayFeedGroup);
      v40 = v89;
      v89[3] = v60;
      v41 = &qword_280ECFA08;
      v42 = type metadata accessor for TopicTodayFeedGroup;
      v43 = &unk_219C2D460;
      goto LABEL_26;
    case 9u:
      v44 = v74;
      sub_2187C58F8(v35, v74, type metadata accessor for MagazineFeedGroup);
      sub_218CDC7DC(v89);
      return sub_2187C8338(v44, type metadata accessor for MagazineFeedGroup);
    case 0xAu:
      v38 = type metadata accessor for NewFollowTodayFeedGroup;
      v39 = v63;
      sub_2187C58F8(v35, v63, type metadata accessor for NewFollowTodayFeedGroup);
      v40 = v89;
      v89[3] = v62;
      v41 = &qword_27CC0B9A8;
      v42 = type metadata accessor for NewFollowTodayFeedGroup;
      v43 = &unk_219C143B4;
      goto LABEL_26;
    case 0xBu:
      v38 = type metadata accessor for SubscriptionTodayFeedGroup;
      v39 = v65;
      sub_2187C58F8(v35, v65, type metadata accessor for SubscriptionTodayFeedGroup);
      v40 = v89;
      v89[3] = v64;
      v41 = &qword_27CC0B9A0;
      v42 = type metadata accessor for SubscriptionTodayFeedGroup;
      v43 = &unk_219CA6B98;
      goto LABEL_26;
    case 0xCu:
    case 0x11u:
      result = sub_2187C8338(v35, type metadata accessor for TodayFeedGroup);
      v37 = v89;
      *v89 = 0u;
      *(v37 + 1) = 0u;
      v37[4] = 0;
      return result;
    case 0xDu:
      v38 = type metadata accessor for SpotlightTodayFeedGroup;
      v39 = v67;
      sub_2187C58F8(v35, v67, type metadata accessor for SpotlightTodayFeedGroup);
      v40 = v89;
      v89[3] = v66;
      v41 = &qword_280EC3198;
      v42 = type metadata accessor for SpotlightTodayFeedGroup;
      v43 = &unk_219C45A84;
      goto LABEL_26;
    case 0xEu:
      v38 = type metadata accessor for SuggestionTodayFeedGroup;
      v39 = v69;
      sub_2187C58F8(v35, v69, type metadata accessor for SuggestionTodayFeedGroup);
      v40 = v89;
      v89[3] = v68;
      v41 = &qword_280EBFFC0;
      v42 = type metadata accessor for SuggestionTodayFeedGroup;
      v43 = &unk_219C70128;
      goto LABEL_26;
    case 0xFu:
      v38 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      v39 = v71;
      sub_2187C58F8(v35, v71, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v40 = v89;
      v89[3] = v70;
      v41 = &qword_27CC0B998;
      v42 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      v43 = &unk_219C45D4C;
      goto LABEL_26;
    case 0x10u:
      v38 = type metadata accessor for SharedWithYouTodayFeedGroup;
      v39 = v73;
      sub_2187C58F8(v35, v73, type metadata accessor for SharedWithYouTodayFeedGroup);
      v40 = v89;
      v89[3] = v72;
      v41 = &qword_27CC0B990;
      v42 = type metadata accessor for SharedWithYouTodayFeedGroup;
      v43 = &unk_219CBA898;
      goto LABEL_26;
    case 0x12u:
      v38 = type metadata accessor for MySportsTodayFeedGroup;
      v39 = v76;
      sub_2187C58F8(v35, v76, type metadata accessor for MySportsTodayFeedGroup);
      v40 = v89;
      v89[3] = v75;
      v41 = &qword_27CC0B988;
      v42 = type metadata accessor for MySportsTodayFeedGroup;
      v43 = &unk_219C704A4;
      goto LABEL_26;
    case 0x13u:
      v38 = type metadata accessor for IntroToSportsTodayFeedGroup;
      v39 = v78;
      sub_2187C58F8(v35, v78, type metadata accessor for IntroToSportsTodayFeedGroup);
      v40 = v89;
      v89[3] = v77;
      v41 = &qword_280EB8638;
      v42 = type metadata accessor for IntroToSportsTodayFeedGroup;
      v43 = &unk_219C0D888;
      goto LABEL_26;
    case 0x14u:
      v38 = type metadata accessor for ShortcutsTodayFeedGroup;
      v39 = v80;
      sub_2187C58F8(v35, v80, type metadata accessor for ShortcutsTodayFeedGroup);
      v40 = v89;
      v89[3] = v79;
      v41 = &qword_280EC33D8;
      v42 = type metadata accessor for ShortcutsTodayFeedGroup;
      v43 = &unk_219CB9624;
      goto LABEL_26;
    case 0x15u:
      v38 = type metadata accessor for ChannelTodayFeedGroup;
      v39 = v82;
      sub_2187C58F8(v35, v82, type metadata accessor for ChannelTodayFeedGroup);
      v40 = v89;
      v89[3] = v81;
      v41 = &qword_280ECB998;
      v42 = type metadata accessor for ChannelTodayFeedGroup;
      v43 = &unk_219CB86E4;
      goto LABEL_26;
    case 0x16u:
      v38 = type metadata accessor for SavedStoriesTodayFeedGroup;
      v39 = v84;
      sub_2187C58F8(v35, v84, type metadata accessor for SavedStoriesTodayFeedGroup);
      v40 = v89;
      v89[3] = v83;
      v41 = &qword_27CC0B980;
      v42 = type metadata accessor for SavedStoriesTodayFeedGroup;
      v43 = &unk_219CC6818;
      goto LABEL_26;
    case 0x17u:
      v38 = type metadata accessor for ChannelPickerTodayFeedGroup;
      v39 = v86;
      sub_2187C58F8(v35, v86, type metadata accessor for ChannelPickerTodayFeedGroup);
      v40 = v89;
      v89[3] = v85;
      v41 = &qword_27CC0B978;
      v42 = type metadata accessor for ChannelPickerTodayFeedGroup;
      v43 = &unk_219C42478;
      goto LABEL_26;
    case 0x18u:
      v38 = type metadata accessor for FoodTodayFeedGroup;
      v39 = v88;
      sub_2187C58F8(v35, v88, type metadata accessor for FoodTodayFeedGroup);
      v40 = v89;
      v89[3] = v87;
      v41 = &qword_280ED3B28;
      v42 = type metadata accessor for FoodTodayFeedGroup;
      v43 = &unk_219C96AC0;
LABEL_26:
      v40[4] = sub_2187733B4(v41, v42, v43);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
      v47 = v39;
      break;
    default:
      v38 = type metadata accessor for CuratedTodayFeedGroup;
      sub_2187C58F8(v35, v32, type metadata accessor for CuratedTodayFeedGroup);
      v50 = v89;
      v89[3] = v30;
      v50[4] = sub_2187733B4(&qword_280ECB720, type metadata accessor for CuratedTodayFeedGroup, &unk_219C98D34);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
      v47 = v32;
      break;
  }

  v49 = v38;
  return sub_2187C58F8(v47, boxed_opaque_existential_1, v49);
}

uint64_t sub_21899B614@<X0>(uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v6, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 0x11 || ((1 << EnumCaseMultiPayload) & 0x1F00000) != 0)
  {
    sub_2187C8338(v5, type metadata accessor for TodayFeedGroup);
    v8 = sub_219BF3584();
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  else
  {
    sub_2187C8338(v5, type metadata accessor for TodayFeedGroup);
    v10 = *MEMORY[0x277D33EB0];
    v11 = sub_219BF3584();
    v12 = *(v11 - 8);
    (*(v12 + 104))(a2, v10, v11);
    return (*(v12 + 56))(a2, 0, 1, v11);
  }
}

uint64_t sub_21899B7B4(void *a1)
{
  v94 = type metadata accessor for FoodTodayFeedGroup(0);
  MEMORY[0x28223BE20](v94);
  v117 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v93);
  v116 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v92);
  v115 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v91);
  v114 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v90);
  v113 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v89);
  v112 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v88);
  v111 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for EngagementTodayFeedGroup(0);
  MEMORY[0x28223BE20](v87);
  v110 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v86);
  v109 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v85);
  v108 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for SeenContentMarkTodayFeedGroup(0);
  MEMORY[0x28223BE20](v84);
  v107 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v83);
  v106 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v82);
  v105 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v81);
  v104 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v80);
  v103 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v79);
  v102 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v78);
  v101 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v77);
  v100 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v76);
  v99 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v75);
  v98 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v74);
  v97 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v73);
  v96 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v24);
  v95 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v29);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C22A4(0, &qword_280E8C660, MEMORY[0x277D84538]);
  v33 = *(v32 - 8);
  v120 = v32;
  v121 = v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v72 - v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187C2308();
  v119 = v35;
  sub_219BF7B44();
  sub_2187C7E1C(v122, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v56 = v95;
      sub_2187C58F8(v31, v95, type metadata accessor for NewspaperTodayFeedGroup);
      v123 = 256;
      sub_2189907F0();
      v57 = v119;
      v58 = v120;
      v59 = v118;
      sub_219BF7834();
      if (!v59)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_27CC1B4C0, type metadata accessor for NewspaperTodayFeedGroup, &unk_219C85C44);
        sub_219BF7834();
      }

      sub_2187C8338(v56, type metadata accessor for NewspaperTodayFeedGroup);
      return (*(v121 + 8))(v57, v58);
    case 2u:
      v41 = v96;
      sub_2187C58F8(v31, v96, type metadata accessor for LocalNewsTodayFeedGroup);
      v123 = 512;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v52 = v118;
      sub_219BF7834();
      if (!v52)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&unk_280EE18F8, type metadata accessor for LocalNewsTodayFeedGroup, &unk_219C331B4);
        sub_219BF7834();
      }

      v43 = type metadata accessor for LocalNewsTodayFeedGroup;
      goto LABEL_75;
    case 3u:
      v41 = v97;
      sub_2187C58F8(v31, v97, type metadata accessor for TrendingTodayFeedGroup);
      v123 = 768;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v54 = v118;
      sub_219BF7834();
      if (!v54)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EC6260, type metadata accessor for TrendingTodayFeedGroup, &unk_219C5DCC4);
        sub_219BF7834();
      }

      v43 = type metadata accessor for TrendingTodayFeedGroup;
      goto LABEL_75;
    case 4u:
      v41 = v98;
      sub_2187C58F8(v31, v98, type metadata accessor for ForYouTodayFeedGroup);
      v123 = 1024;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v46 = v118;
      sub_219BF7834();
      if (!v46)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280ECE9A0, type metadata accessor for ForYouTodayFeedGroup, &unk_219C54974);
        sub_219BF7834();
      }

      v43 = type metadata accessor for ForYouTodayFeedGroup;
      goto LABEL_75;
    case 5u:
      v41 = v99;
      sub_2187C58F8(v31, v99, type metadata accessor for MissedStoriesTodayFeedGroup);
      v123 = 1536;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v62 = v118;
      sub_219BF7834();
      if (!v62)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EB7F00, type metadata accessor for MissedStoriesTodayFeedGroup, &unk_219C61958);
        sub_219BF7834();
      }

      v43 = type metadata accessor for MissedStoriesTodayFeedGroup;
      goto LABEL_75;
    case 6u:
      v41 = v100;
      sub_2187C58F8(v31, v100, type metadata accessor for LatestStoriesTodayFeedGroup);
      v123 = 1280;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v65 = v118;
      sub_219BF7834();
      if (!v65)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EB8570, type metadata accessor for LatestStoriesTodayFeedGroup, &unk_219C0B378);
        sub_219BF7834();
      }

      v43 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_75;
    case 7u:
      v41 = v101;
      sub_2187C58F8(v31, v101, type metadata accessor for MoreForYouTodayFeedGroup);
      v123 = 1792;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v55 = v118;
      sub_219BF7834();
      if (!v55)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EC0F80, type metadata accessor for MoreForYouTodayFeedGroup, &unk_219C8D8A8);
        sub_219BF7834();
      }

      v43 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_75;
    case 8u:
      v41 = v102;
      sub_2187C58F8(v31, v102, type metadata accessor for TopicTodayFeedGroup);
      v123 = 2048;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v68 = v118;
      sub_219BF7834();
      if (!v68)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280ECFA20, type metadata accessor for TopicTodayFeedGroup, &unk_219C2D410);
        sub_219BF7834();
      }

      v43 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_75;
    case 9u:
      v41 = v108;
      sub_2187C58F8(v31, v108, type metadata accessor for MagazineFeedGroup);
      v123 = 2304;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v50 = v118;
      sub_219BF7834();
      if (!v50)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280ED5DF0, type metadata accessor for MagazineFeedGroup, &unk_219C2DF30);
        sub_219BF7834();
      }

      v43 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_75;
    case 0xAu:
      v41 = v103;
      sub_2187C58F8(v31, v103, type metadata accessor for NewFollowTodayFeedGroup);
      v123 = 2560;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v67 = v118;
      sub_219BF7834();
      if (!v67)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_27CC0BA28, type metadata accessor for NewFollowTodayFeedGroup, &unk_219C14364);
        sub_219BF7834();
      }

      v43 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_75;
    case 0xBu:
      v41 = v104;
      sub_2187C58F8(v31, v104, type metadata accessor for SubscriptionTodayFeedGroup);
      v123 = 2816;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v45 = v118;
      sub_219BF7834();
      if (!v45)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_27CC0BA20, type metadata accessor for SubscriptionTodayFeedGroup, &unk_219CA6B48);
        sub_219BF7834();
      }

      v43 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_75;
    case 0xCu:
      v47 = sub_219BEE394();
      sub_2187733B4(&qword_27CC0B9E0, MEMORY[0x277D31FD8], MEMORY[0x277D31FE0]);
      swift_allocError();
      (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D31FD0], v47);
      swift_willThrow();
      (*(v121 + 8))(v119, v120);
      return sub_2187C8338(v31, type metadata accessor for TodayFeedGroup);
    case 0xDu:
      v41 = v105;
      sub_2187C58F8(v31, v105, type metadata accessor for SpotlightTodayFeedGroup);
      v123 = 3328;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v64 = v118;
      sub_219BF7834();
      if (!v64)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EC31B0, type metadata accessor for SpotlightTodayFeedGroup, &unk_219C45A34);
        sub_219BF7834();
      }

      v43 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_75;
    case 0xEu:
      v41 = v106;
      sub_2187C58F8(v31, v106, type metadata accessor for SuggestionTodayFeedGroup);
      v123 = 3584;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v44 = v118;
      sub_219BF7834();
      if (!v44)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EBFFD8, type metadata accessor for SuggestionTodayFeedGroup, &unk_219C700D8);
        sub_219BF7834();
      }

      v43 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_75;
    case 0xFu:
      v41 = v107;
      sub_2187C58F8(v31, v107, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v123 = 3840;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v53 = v118;
      sub_219BF7834();
      if (!v53)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EAEF48, type metadata accessor for SeenContentMarkTodayFeedGroup, &unk_219C45CFC);
        sub_219BF7834();
      }

      v43 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_75;
    case 0x10u:
      v41 = v109;
      sub_2187C58F8(v31, v109, type metadata accessor for SharedWithYouTodayFeedGroup);
      v123 = 4096;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v42 = v118;
      sub_219BF7834();
      if (!v42)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_27CC0BA18, type metadata accessor for SharedWithYouTodayFeedGroup, &unk_219CBA848);
        sub_219BF7834();
      }

      v43 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_75;
    case 0x11u:
      v41 = v110;
      sub_2187C58F8(v31, v110, type metadata accessor for EngagementTodayFeedGroup);
      v123 = 4352;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v60 = v118;
      sub_219BF7834();
      if (!v60)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EC21A0, type metadata accessor for EngagementTodayFeedGroup, &unk_219C1BADC);
        sub_219BF7834();
      }

      v43 = type metadata accessor for EngagementTodayFeedGroup;
      goto LABEL_75;
    case 0x12u:
      v41 = v111;
      sub_2187C58F8(v31, v111, type metadata accessor for MySportsTodayFeedGroup);
      v123 = 4608;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v66 = v118;
      sub_219BF7834();
      if (!v66)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_27CC0BA10, type metadata accessor for MySportsTodayFeedGroup, &unk_219C70454);
        sub_219BF7834();
      }

      v43 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_75;
    case 0x13u:
      v41 = v112;
      sub_2187C58F8(v31, v112, type metadata accessor for IntroToSportsTodayFeedGroup);
      v123 = 4864;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v70 = v118;
      sub_219BF7834();
      if (!v70)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EB8650, type metadata accessor for IntroToSportsTodayFeedGroup, &unk_219C0D838);
        sub_219BF7834();
      }

      v43 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_75;
    case 0x14u:
      v41 = v113;
      sub_2187C58F8(v31, v113, type metadata accessor for ShortcutsTodayFeedGroup);
      v123 = 5120;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v61 = v118;
      sub_219BF7834();
      if (!v61)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EC33F0, type metadata accessor for ShortcutsTodayFeedGroup, &unk_219CB95D4);
        sub_219BF7834();
      }

      v43 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_75;
    case 0x15u:
      v41 = v114;
      sub_2187C58F8(v31, v114, type metadata accessor for ChannelTodayFeedGroup);
      v123 = 5376;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v63 = v118;
      sub_219BF7834();
      if (!v63)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280ECB9B0, type metadata accessor for ChannelTodayFeedGroup, &unk_219CB8694);
        sub_219BF7834();
      }

      v43 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_75;
    case 0x16u:
      v41 = v115;
      sub_2187C58F8(v31, v115, type metadata accessor for SavedStoriesTodayFeedGroup);
      v123 = 5632;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v69 = v118;
      sub_219BF7834();
      if (!v69)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_27CC0BA08, type metadata accessor for SavedStoriesTodayFeedGroup, &unk_219CC67C8);
        sub_219BF7834();
      }

      v43 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_75;
    case 0x17u:
      v41 = v116;
      sub_2187C58F8(v31, v116, type metadata accessor for ChannelPickerTodayFeedGroup);
      v123 = 5888;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v71 = v118;
      sub_219BF7834();
      if (!v71)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_27CC0BA00, type metadata accessor for ChannelPickerTodayFeedGroup, &unk_219C42428);
        sub_219BF7834();
      }

      v43 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_75;
    case 0x18u:
      v41 = v117;
      sub_2187C58F8(v31, v117, type metadata accessor for FoodTodayFeedGroup);
      v123 = 6144;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v51 = v118;
      sub_219BF7834();
      if (!v51)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280ED3B40, type metadata accessor for FoodTodayFeedGroup, &unk_219C96A70);
        sub_219BF7834();
      }

      v43 = type metadata accessor for FoodTodayFeedGroup;
LABEL_75:
      v39 = v43;
      v40 = v41;
      break;
    default:
      sub_2187C58F8(v31, v28, type metadata accessor for CuratedTodayFeedGroup);
      v123 = 0;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v38 = v118;
      sub_219BF7834();
      if (!v38)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280ECB738, type metadata accessor for CuratedTodayFeedGroup, &unk_219C98CE4);
        sub_219BF7834();
      }

      v39 = type metadata accessor for CuratedTodayFeedGroup;
      v40 = v28;
      break;
  }

  sub_2187C8338(v40, v39);
  return (*(v121 + 8))(v37, v36);
}

uint64_t sub_21899D648(_BYTE *a1, _BYTE *a2, __n128 a3)
{
  if (*a1)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 1701869940;
  }

  if (*a2)
  {
    v4 = 1635017060;
  }

  else
  {
    v4 = 1701869940;
  }

  if (v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_219BF78F4();
  }

  swift_bridgeObjectRelease_n();
  return v5 & 1;
}

uint64_t sub_21899D6C0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21899D728(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_21899D774(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_21899D7D8(char *a2@<X8>)
{
  v3 = sub_219BF7614();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21899D838(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 1635017060;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

void sub_21899D860(char *a3@<X8>)
{
  v4 = sub_219BF7614();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_21899D8C4(uint64_t a1)
{
  v2 = sub_2187C2308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21899D900(uint64_t a1)
{
  v2 = sub_2187C2308();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21899D954(char *a1)
{
  sub_21899DD44(0, &qword_280E90840, MEMORY[0x277D33470]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_219BF1904();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21882D12C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21899DD98(v4);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  result = sub_219BF18D4();
  v10 = result;
  v30 = v8;
  v31 = v5;
  v29 = v6;
  if (result >> 62)
  {
LABEL_26:
    result = sub_219BF7214();
    v11 = result;
    if (result)
    {
LABEL_5:
      v12 = 0;
      v32 = v10 & 0xC000000000000001;
      v13 = *&a1[OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16];
      v27 = v10 + 32;
      v28 = v10 & 0xFFFFFFFFFFFFFF8;
      v14 = v13 + 56;
      while (1)
      {
        if (v32)
        {
          a1 = MEMORY[0x21CECE0F0](v12, v10);
          v15 = __OFADD__(v12++, 1);
          if (v15)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v12 >= *(v28 + 16))
          {
            __break(1u);
            return result;
          }

          a1 = *(v27 + 8 * v12);
          swift_unknownObjectRetain();
          v15 = __OFADD__(v12++, 1);
          if (v15)
          {
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        v16 = [a1 identifier];
        v17 = sub_219BF5414();
        v19 = v18;

        if (*(v13 + 16))
        {
          sub_219BF7AA4();
          sub_219BF5524();
          v20 = sub_219BF7AE4();
          v21 = -1 << *(v13 + 32);
          v22 = v20 & ~v21;
          if ((*(v14 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
          {
            break;
          }
        }

LABEL_6:

        result = swift_unknownObjectRelease();
        if (v12 == v11)
        {
          goto LABEL_27;
        }
      }

      v23 = ~v21;
      while (1)
      {
        v24 = (*(v13 + 48) + 16 * v22);
        v25 = *v24 == v17 && v24[1] == v19;
        if (v25 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      swift_unknownObjectRelease();

      (*(v29 + 8))(v30, v31);
      return 0;
    }
  }

  else
  {
    v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }
  }

LABEL_27:

  (*(v29 + 8))(v30, v31);
  return 1;
}

void sub_21899DCD4(uint64_t a1)
{
  if (!qword_280E91218)
  {
    sub_219BEFBD4();
    sub_219BEF564();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E91218);
    }
  }
}

void sub_21899DD44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_21899DD98(uint64_t a1)
{
  sub_21899DD44(0, &qword_280E90840, MEMORY[0x277D33470]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21899DE24()
{
  result = qword_27CC0BA58;
  if (!qword_27CC0BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BA58);
  }

  return result;
}

double sub_21899DE78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_219BE8004();
  v85 = v3;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_21899E550(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v9 = v7;
  v10 = sub_219BF6BD4();
  *(inited + 64) = v8;
  *(inited + 40) = v10;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_21899E5A8(inited + 32);
  v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v12 = sub_219BF53D4();

  type metadata accessor for Key(0);
  sub_21899E604();
  v13 = sub_219BF5204();

  v14 = [v11 initWithString:v12 attributes:{v13, 0x8000000219CDC1B0}];

  sub_219BF6784();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v86.origin.x = v16;
  v86.origin.y = v18;
  v86.size.width = v20;
  v86.size.height = v22;
  v87 = CGRectIntegral(v86);
  width = v87.size.width;
  height = v87.size.height;
  sub_218DB9AA0(a1);
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  if (v26)
  {
    v27 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v27 setLineSpacing_];
    [v27 setAlignment_];
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_219C09EC0;
    v29 = v9;
    v30 = *MEMORY[0x277D74118];
    *(v28 + 32) = *MEMORY[0x277D74118];
    v31 = sub_2186C6148(0, &qword_280E8DED8, 0x277D74240);
    *(v28 + 40) = v27;
    *(v28 + 64) = v31;
    *(v28 + 72) = v29;
    v32 = v29;
    v33 = v30;
    v9 = v29;
    v34 = v27;
    v35 = sub_219BF6BD4();
    *(v28 + 104) = v8;
    *(v28 + 80) = v35;
    sub_2188195F4(v28);
    swift_setDeallocating();
    sub_218819588(0);
    swift_arrayDestroy();
    v36 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v37 = sub_219BF53D4();

    v38 = sub_219BF5204();

    v39 = [v36 initWithString:v37 attributes:v38];

    sub_219BF6784();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v88.origin.x = v41;
    v88.origin.y = v43;
    v88.size.width = v45;
    v88.size.height = v47;
    v89 = CGRectIntegral(v88);
    v24 = v89.size.width;
    v25 = v89.size.height;
  }

  sub_218DB9C18(a1);
  v48 = 0.0;
  if (v49)
  {
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_219C09BA0;
    *(v50 + 32) = v9;
    v51 = v9;
    v52 = sub_219BF6BD4();
    *(v50 + 64) = v8;
    *(v50 + 40) = v52;
    sub_2188195F4(v50);
    swift_setDeallocating();
    sub_21899E5A8(v50 + 32);
    v53 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v54 = sub_219BF53D4();

    v55 = sub_219BF5204();

    v56 = [v53 initWithString:v54 attributes:v55];

    sub_219BF6784();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;

    v90.origin.x = v58;
    v90.origin.y = v60;
    v90.size.width = v62;
    v90.size.height = v64;
    v91 = CGRectIntegral(v90);
    v23 = v91.size.width;
    v48 = v91.size.height;
  }

  v65 = height + 80.0 + 18.0;
  v66 = v65 + v25 + 45.0;
  sub_219BE8154();
  v82 = (v67 - width) * 0.5;
  sub_219BE8154();
  v83 = v24;
  v69 = (v68 - v24) * 0.5;
  sub_219BE8154();
  v71 = (v70 - v23) * 0.5;
  v72 = *MEMORY[0x277D6E758];
  v73 = sub_219BE9834();
  (*(*(v73 - 8) + 104))(a2, v72, v73);
  v74 = type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes(0);
  v75 = a2 + v74[5];
  *v75 = 0;
  *(v75 + 8) = 0;
  *(v75 + 16) = v85;
  *(v75 + 24) = v66 + v48 + 68.0;
  v76 = a2 + v74[6];
  *v76 = v82;
  *(v76 + 8) = 0x4054000000000000;
  *(v76 + 16) = width;
  *(v76 + 24) = height;
  v77 = (a2 + v74[7]);
  *v77 = v69;
  v77[1] = v65;
  result = v83;
  v77[2] = v83;
  v77[3] = v25;
  v79 = (a2 + v74[8]);
  *v79 = v71;
  v79[1] = v66;
  v79[2] = v23;
  v79[3] = v48;
  return result;
}

void sub_21899E550(uint64_t a1)
{
  if (!qword_280E8B600)
  {
    sub_218819588(255);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8B600);
    }
  }
}

uint64_t sub_21899E5A8(uint64_t a1)
{
  sub_218819588(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21899E604()
{
  result = qword_280E8E118;
  if (!qword_280E8E118)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8E118);
  }

  return result;
}

uint64_t type metadata accessor for RecipeFilterTagCapsulesSectionView(uint64_t a1)
{
  result = qword_27CC0BA68;
  if (!qword_27CC0BA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21899E6D0(uint64_t a1)
{
  sub_2189A0B64(319, &qword_27CC0BA60, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21899E7BC(319);
    if (v2 <= 0x3F)
    {
      sub_218788800();
      if (v3 <= 0x3F)
      {
        sub_219BECD44();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21899E7BC(uint64_t a1)
{
  if (!qword_27CC0BA78)
  {
    v2 = type metadata accessor for RecipeFilterTagCapsuleViewModel(255);
    v4 = type metadata accessor for RecipeFilterSectionViewModel(a1, v2, &off_282A613A0, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27CC0BA78);
    }
  }
}

uint64_t sub_21899E838()
{
  v22 = sub_219BED094();
  v1 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v3 = (&v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BED0A4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEC6E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = *(v0 + *(type metadata accessor for RecipeFilterTagCapsulesSectionView(0) + 24));
  sub_2189A07FC(v13);
  (*(v8 + 104))(v10, *MEMORY[0x277CDFA10], v7);
  sub_2189A0BD8(&qword_27CC0BB50, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v15 = sub_219BF5334();
  v16 = *(v8 + 8);
  v16(v10, v7);
  v16(v13, v7);
  v17 = 1;
  if ((v15 & 1) == 0)
  {
    v17 = 2;
  }

  v18 = 2;
  if ((v15 & 1) == 0)
  {
    v18 = 3;
  }

  if (v14)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  *v3 = xmmword_219C0E3A0;
  (*(v1 + 104))(v3, *MEMORY[0x277CDF108], v22);
  sub_219BED0B4();
  return sub_2194FD224(v6, v19);
}

void sub_21899EB04()
{
  v1 = v0;
  v2 = MEMORY[0x277D83D88];
  sub_2189A0B64(0, &qword_27CC0BB58, MEMORY[0x277CE0BA0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v44 - v4;
  sub_2189A0B64(0, &qword_27CC0BB60, MEMORY[0x277CE0B10], v2);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v44 - v6;
  v7 = sub_219BECD24();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BECC84();
  v9 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEC6E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v44 = type metadata accessor for RecipeFilterTagCapsulesSectionView(0);
  v21 = 1;
  if (*(v0 + *(v44 + 24)) == 1)
  {
    sub_2189A07FC(v18);
    (*(v13 + 104))(v15, *MEMORY[0x277CDFA10], v12);
    sub_2189A0BD8(&qword_27CC0BB50, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v19 = sub_219BF5334();
    v20 = *(v13 + 8);
    v20(v15, v12);
    v20(v18, v12);
    if (v19)
    {
      v21 = 0;
    }
  }

  v51 = v1;
  v22 = sub_219502220(0x200A, 0xE200000000000000, v21);
  v23 = v22;
  v24 = v22[2];
  if (v24)
  {
    v25 = 0;
    v26 = v22 + 5;
    v27 = 0xE100000000000000;
    v28 = 32;
    while (v25 < v23[2])
    {
      ++v25;
      v30 = *(v26 - 1);
      v29 = *v26;
      v52 = v28;
      v53 = v27;

      MEMORY[0x21CECC330](v30, v29);

      v28 = v52;
      v27 = v53;
      v26 += 2;
      if (v24 == v25)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = 0xE100000000000000;
    v28 = 32;
LABEL_11:

    v44 = *(v44 + 32);
    v52 = v28;
    v53 = v27;
    sub_2187F3BD4();
    v31 = sub_219BECDA4();
    v33 = v32;
    v35 = v34;
    sub_219BECCB4();
    sub_219BECC24();
    sub_219BECC74();

    v36 = v45;
    (*(v9 + 104))(v11, *MEMORY[0x277CE0A10], v45);
    sub_219BECC94();

    (*(v9 + 8))(v11, v36);
    v37 = sub_219BECD74();
    v39 = v38;
    LOBYTE(v36) = v40;

    sub_2189A0BC8(v31, v33, v35 & 1);

    v41 = sub_219BECCF4();
    (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
    v42 = sub_219BECD84();
    (*(*(v42 - 8) + 56))(v48, 1, 1, v42);
    v43 = v47;
    sub_219BECD14();
    sub_219BECD04();
    sub_2189A0BC8(v37, v39, v36 & 1);

    (*(v49 + 8))(v43, v50);
  }
}

uint64_t sub_21899F138@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BECA54();
  MEMORY[0x28223BE20](v3);
  v4 = *(v1 + *(type metadata accessor for RecipeFilterTagCapsulesSectionView(0) + 20));
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);
  sub_21899FF08(0);
  *(a1 + *(v7 + 44)) = 0x4034000000000000;
  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = 1;

  sub_21899E838();
  sub_219BEC964();
  sub_2189A0BD8(&qword_27CC0BB18, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_219BF7C64();
  sub_2189A0000(0);
  sub_2189A05A4();
  return sub_219BED114();
}

uint64_t sub_21899F2B8(uint64_t a1)
{
  v2 = type metadata accessor for RecipeFilterTagCapsulesSectionView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_21899EB04();
  v7 = v6;
  v14[3] = *(*(a1 + *(v3 + 28)) + 48);
  sub_2189A0654(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_2189A0A68(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for RecipeFilterTagCapsulesSectionView);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  sub_2189A0B64(0, &qword_27CC0BA98, type metadata accessor for RecipeFilterTagCapsuleViewModel, MEMORY[0x277D83940]);
  sub_2189A00FC(0);
  sub_2189A054C(&qword_27CC0BB00, &qword_27CC0BA98, type metadata accessor for RecipeFilterTagCapsuleViewModel, MEMORY[0x277D83980]);
  sub_2189A0180(255);
  v11 = v10;
  v12 = sub_2189A0364();

  v14[1] = v11;
  v14[2] = v12;
  swift_getOpaqueTypeConformance2();
  sub_2189A0BD8(&qword_27CC0BB28, type metadata accessor for RecipeFilterTagCapsuleViewModel, &unk_219C61B7C);
  return sub_219BED064();
}

uint64_t sub_21899F528@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v32 = a3;
  v7 = sub_219BEC954();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecipeFilterTagCapsulesSectionView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A01E8(0);
  v15 = v14;
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A0180(0);
  v29 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  sub_2189A0654(a2, v13);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_2189A0A68(v13, v24 + v22, type metadata accessor for RecipeFilterTagCapsulesSectionView);
  *(v24 + v23) = v21;
  v33 = v21;
  v34 = a2;
  v35 = a4;
  type metadata accessor for RecipeFilterTagCapsuleView(0);
  sub_2189A0BD8(&qword_27CC0BAC0, type metadata accessor for RecipeFilterTagCapsuleView, &unk_219C926BC);

  sub_219BECFE4();
  v25 = sub_219BECF14();
  KeyPath = swift_getKeyPath();
  v27 = &v17[*(v15 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_21899FBF8(v21);
  sub_2189A0414();
  sub_219BECE84();
  (*(v30 + 8))(v9, v31);
  sub_2189A0A08(v17, sub_2189A01E8);
  sub_2189A0364();
  sub_219BECEA4();
  return sub_2189A0A08(v20, sub_2189A0180);
}

double sub_21899F8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeFilterTagCapsulesSectionView(0);
  v5 = *(a1 + *(v4 + 28));
  v6 = *(a1 + *(v4 + 20));
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);

  v5(v7, v8, v10, v9);

  return result;
}

uint64_t sub_21899F934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_219BEC6E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v23[-v13];
  v15 = type metadata accessor for RecipeFilterTagCapsuleView(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(a2 + *(type metadata accessor for RecipeFilterTagCapsulesSectionView(0) + 24));
  if (v18 == 1 && (sub_2189A07FC(v14), (*(v9 + 104))(v11, *MEMORY[0x277CDFA10], v8), sub_2189A0BD8(&qword_27CC0BB50, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]), v24 = sub_219BF5334(), v19 = *(v9 + 8), v19(v11, v8), v19(v14, v8), (v24 & 1) != 0))
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  *v17 = a1;
  v17[8] = v18;
  *(v17 + 2) = v20;
  *(v17 + 3) = a4;
  v21 = *(v15 + 32);
  *&v17[v21] = swift_getKeyPath();
  sub_2189A0B64(0, &qword_27CC0BB20, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_2189A0A68(v17, a3, type metadata accessor for RecipeFilterTagCapsuleView);
}

uint64_t sub_21899FBF8(uint64_t a1)
{
  swift_getKeyPath();
  sub_2189A0BD8(&qword_27CC0B238, type metadata accessor for RecipeFilterTagCapsuleViewModel, &unk_219C61B50);
  sub_219BDC204();

  if (*(a1 + 48) == 1)
  {
    v2 = MEMORY[0x277CE01F0];
    sub_2189A0B64(0, &qword_27CC0BB48, MEMORY[0x277CE01F0], MEMORY[0x277D84560]);
    sub_219BEC954();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    sub_219BEC934();
    sub_2189A0BD8(&qword_27CC0BB30, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    sub_2189A0B64(0, &qword_27CC0BB38, v2, MEMORY[0x277D83940]);
    sub_2189A054C(&qword_27CC0BB40, &qword_27CC0BB38, v2, MEMORY[0x277D83970]);
  }

  else
  {
    sub_219BEC954();
    sub_2189A0BD8(&qword_27CC0BB30, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    v3 = MEMORY[0x277CE01F0];
    sub_2189A0B64(0, &qword_27CC0BB38, MEMORY[0x277CE01F0], MEMORY[0x277D83940]);
    sub_2189A054C(&qword_27CC0BB40, &qword_27CC0BB38, v3, MEMORY[0x277D83970]);
  }

  return sub_219BF7164();
}

void sub_21899FF08(uint64_t a1)
{
  if (!qword_27CC0BA80)
  {
    sub_21899FF9C(255);
    v3 = v2;
    v4 = sub_2189A0BD8(&qword_27CC0BB10, sub_21899FF9C, MEMORY[0x277CDF170]);
    v6 = type metadata accessor for RecipeFilterSectionContainerView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27CC0BA80);
    }
  }
}

void sub_21899FF9C(uint64_t a1)
{
  if (!qword_27CC0BA88)
  {
    sub_2189A0000(255);
    sub_2189A05A4();
    v1 = sub_219BED124();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0BA88);
    }
  }
}

void sub_2189A0000(uint64_t a1)
{
  if (!qword_27CC0BA90)
  {
    sub_2189A0B64(255, &qword_27CC0BA98, type metadata accessor for RecipeFilterTagCapsuleViewModel, MEMORY[0x277D83940]);
    sub_2189A00FC(255);
    sub_2189A054C(&qword_27CC0BB00, &qword_27CC0BA98, type metadata accessor for RecipeFilterTagCapsuleViewModel, MEMORY[0x277D83980]);
    v1 = sub_219BED084();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0BA90);
    }
  }
}

void sub_2189A00FC(uint64_t a1)
{
  if (!qword_27CC0BAA0)
  {
    sub_2189A0180(255);
    sub_2189A0364();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC0BAA0);
    }
  }
}

void sub_2189A0180(uint64_t a1)
{
  if (!qword_27CC0BAA8)
  {
    sub_2189A01E8(255);
    sub_219BECB24();
    v1 = sub_219BEC724();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0BAA8);
    }
  }
}

void sub_2189A01E8(uint64_t a1)
{
  if (!qword_27CC0BAB0)
  {
    sub_2189A0280(255);
    sub_2189A0B64(255, &qword_27CC0BAC8, sub_2189A0314, MEMORY[0x277CE0860]);
    v1 = sub_219BEC724();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0BAB0);
    }
  }
}

void sub_2189A0280(uint64_t a1)
{
  if (!qword_27CC0BAB8)
  {
    type metadata accessor for RecipeFilterTagCapsuleView(255);
    sub_2189A0BD8(&qword_27CC0BAC0, type metadata accessor for RecipeFilterTagCapsuleView, &unk_219C926BC);
    v1 = sub_219BED004();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0BAB8);
    }
  }
}

void sub_2189A0314()
{
  if (!qword_27CC0BAD0)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BAD0);
    }
  }
}

unint64_t sub_2189A0364()
{
  result = qword_27CC0BAD8;
  if (!qword_27CC0BAD8)
  {
    sub_2189A0180(255);
    sub_2189A0414();
    sub_2189A0BD8(&qword_27CC0BAF8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BAD8);
  }

  return result;
}

unint64_t sub_2189A0414()
{
  result = qword_27CC0BAE0;
  if (!qword_27CC0BAE0)
  {
    sub_2189A01E8(255);
    sub_2189A0BD8(&qword_27CC0BAE8, sub_2189A0280, MEMORY[0x277CDF028]);
    sub_2189A04C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BAE0);
  }

  return result;
}

unint64_t sub_2189A04C4()
{
  result = qword_27CC0BAF0;
  if (!qword_27CC0BAF0)
  {
    sub_2189A0B64(255, &qword_27CC0BAC8, sub_2189A0314, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BAF0);
  }

  return result;
}

uint64_t sub_2189A054C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2189A0B64(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2189A05A4()
{
  result = qword_27CC0BB08;
  if (!qword_27CC0BB08)
  {
    sub_2189A0000(255);
    sub_2189A0180(255);
    sub_2189A0364();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BB08);
  }

  return result;
}

uint64_t sub_2189A0654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeFilterTagCapsulesSectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189A06B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RecipeFilterTagCapsulesSectionView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21899F528(a1, v2 + v6, a2, v7);
}

double sub_2189A0764()
{
  v1 = *(type metadata accessor for RecipeFilterTagCapsulesSectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21899F8A8(v0 + v2, v3);
}

uint64_t sub_2189A07FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_219BEC864();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A0B64(0, &qword_27CC0BB20, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  sub_2189A0AD0(v2, &v15 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_219BEC6E4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_219BF6204();
    v14 = sub_219BECB54();
    sub_219BE5324(v13, &dword_2186C1000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_219BEC854();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2189A0A08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2189A0A68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2189A0AD0(uint64_t a1, uint64_t a2)
{
  sub_2189A0B64(0, &qword_27CC0BB20, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2189A0B64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_2189A0BC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_2189A0BD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2189A0C20(uint64_t a1)
{
  v2 = v1;
  v17 = a1;
  v3 = MEMORY[0x277D32028];
  sub_2186DD004(0, &qword_280E91B80, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = MEMORY[0x277CC9578];
  sub_2186DD004(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  sub_21872A89C(v2 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_publishDate, &v16 - v9, &qword_280EE9C40, v7);
  v11 = *(v2 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_background);
  v12 = *(v2 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_theme);
  sub_21872A89C(v2 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_metadata, v6, &qword_280E91B80, v3);
  v13 = swift_allocObject();
  sub_21872A89C(v10, v13 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_publishDate, &qword_280EE9C40, v7);

  v14 = v17;

  sub_218710154(v10, &qword_280EE9C40, v7);
  *(v13 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_groups) = v14;
  *(v13 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_background) = v11;
  *(v13 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_theme) = v12;
  sub_2189A1E30(v6, v13 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_metadata);
  return v13;
}

uint64_t sub_2189A0E40()
{
  v1 = *v0;
  v2 = 0x446873696C627570;
  v3 = 0x756F72676B636162;
  v4 = 0x656D656874;
  if (v1 != 3)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7370756F7267;
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

uint64_t sub_2189A0EE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2189A21CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2189A0F14(uint64_t a1)
{
  v2 = sub_2189A1DDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189A0F50(uint64_t a1)
{
  v2 = sub_2189A1DDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189A0F8C()
{
  sub_218710154(v0 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_publishDate, &qword_280EE9C40, MEMORY[0x277CC9578]);

  sub_218710154(v0 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_metadata, &qword_280E91B80, MEMORY[0x277D32028]);

  return swift_deallocClassInstance();
}

uint64_t sub_2189A1070(void *a1)
{
  v3 = v1;
  sub_2189A1EB0(0, &qword_27CC0BB70, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189A1DDC();
  sub_219BF7B44();
  LOBYTE(v12) = 0;
  sub_219BDBD34();
  sub_2189A1FDC(&qword_280EE9CA0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_219BF77E4();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_groups);
    HIBYTE(v11) = 1;
    sub_2189A1F14();
    sub_2189A1F64();
    sub_219BF7834();
    v12 = *(v3 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_background);
    HIBYTE(v11) = 2;
    sub_219BF3354();
    sub_2189A1FDC(&qword_27CC0BB88, MEMORY[0x277D33D78], MEMORY[0x277D33D80]);
    sub_219BF77E4();
    v12 = *(v3 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_theme);
    HIBYTE(v11) = 3;
    sub_219BF2424();
    sub_2189A1FDC(&qword_27CC0BB90, MEMORY[0x277D33840], MEMORY[0x277D33848]);
    sub_219BF77E4();
    LOBYTE(v12) = 4;
    sub_219BEE5B4();
    sub_2189A1FDC(&unk_280E91B90, MEMORY[0x277D32028], MEMORY[0x277D32030]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2189A13D4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2189A15A8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2189A14C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2189A0C20(a1);
  *a2 = result;
  return result;
}

unint64_t sub_2189A150C()
{
  result = qword_280ED2880;
  if (!qword_280ED2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2880);
  }

  return result;
}

uint64_t sub_2189A15A8(void *a1)
{
  sub_2186DD004(0, &qword_280E91B80, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v30 - v3;
  sub_2186DD004(0, &qword_280EE7D98, sub_2189A1CCC);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  sub_2186DD004(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  sub_2189A1EB0(0, &qword_280EE72F0, MEMORY[0x277D6CE98]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189A1DDC();
  v16 = v15;
  v17 = v36;
  sub_219BF7B04();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v18 = v6;
    v36 = a1;
    sub_219BDBD34();
    LOBYTE(v38) = 0;
    sub_2189A1FDC(&unk_280EE9C70, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_219BE2C94();
    v19 = v14;
    sub_2189A1CCC(0);
    v21 = v20;
    LOBYTE(v38) = 1;
    sub_2189A1FDC(&qword_280EE7DA8, sub_2189A1CCC, MEMORY[0x277D6CB08]);
    sub_219BE2C94();
    v33 = v9;
    v34 = v19;
    v23 = *(v21 - 8);
    if ((*(v23 + 48))(v18, 1, v21) == 1)
    {
      sub_218710154(v18, &qword_280EE7D98, sub_2189A1CCC);
      v32 = 0;
    }

    else
    {
      v32 = sub_219BE1E44();
      (*(v23 + 8))(v18, v21);
    }

    sub_219BF3354();
    v37 = 2;
    sub_2189A1FDC(&qword_280E901A8, MEMORY[0x277D33D78], MEMORY[0x277D33D88]);
    v24 = v11;
    sub_219BE2C94();
    v31 = v38;
    v25 = v36;
    sub_219BF2424();
    v37 = 3;
    sub_2189A1FDC(&qword_280E904F8, MEMORY[0x277D33840], MEMORY[0x277D33850]);
    sub_219BE2C94();
    v36 = v38;
    sub_219BEE5B4();
    LOBYTE(v38) = 4;
    sub_2189A1FDC(&qword_280E91B88, MEMORY[0x277D32028], MEMORY[0x277D32038]);
    sub_219BE2C94();
    type metadata accessor for TagFeedConfig(0);
    v16 = swift_allocObject();
    v26 = MEMORY[0x277CC9578];
    v27 = v33;
    sub_21872A89C(v33, v16 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_publishDate, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (v32)
    {
      v28 = v32;
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    sub_218710154(v27, &qword_280EE9C40, v26);
    (*(v12 + 8))(v34, v24);
    *(v16 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_groups) = v28;
    *(v16 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_background) = v31;
    v29 = v35;
    *(v16 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_theme) = v36;
    sub_2189A1E30(v29, v16 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_metadata);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  return v16;
}

void sub_2189A1CCC(uint64_t a1)
{
  if (!qword_280EE7DA0)
  {
    sub_2189A1D34();
    sub_2189A1D88();
    v1 = sub_219BE1E54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7DA0);
    }
  }
}

unint64_t sub_2189A1D34()
{
  result = qword_280ED2860;
  if (!qword_280ED2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2860);
  }

  return result;
}

unint64_t sub_2189A1D88()
{
  result = qword_280ED2870;
  if (!qword_280ED2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2870);
  }

  return result;
}

unint64_t sub_2189A1DDC()
{
  result = qword_280EDD778[0];
  if (!qword_280EDD778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EDD778);
  }

  return result;
}

uint64_t sub_2189A1E30(uint64_t a1, uint64_t a2)
{
  sub_2186DD004(0, &qword_280E91B80, MEMORY[0x277D32028]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2189A1EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189A1DDC();
    v7 = a3(a1, &type metadata for TagFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2189A1F14()
{
  if (!qword_27CC0BB78)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BB78);
    }
  }
}

unint64_t sub_2189A1F64()
{
  result = qword_27CC0BB80;
  if (!qword_27CC0BB80)
  {
    sub_2189A1F14();
    sub_2189A1D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BB80);
  }

  return result;
}

uint64_t sub_2189A1FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for MagazineGridModelEdit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_2189A20C8()
{
  result = qword_27CC0BB98;
  if (!qword_27CC0BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BB98);
  }

  return result;
}

unint64_t sub_2189A2120()
{
  result = qword_280EDD768;
  if (!qword_280EDD768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDD768);
  }

  return result;
}

unint64_t sub_2189A2178()
{
  result = qword_280EDD770;
  if (!qword_280EDD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDD770);
  }

  return result;
}

uint64_t sub_2189A21CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x446873696C627570 && a2 == 0xEB00000000657461;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7370756F7267 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

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

void sub_2189A2380(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v26[1] = a2;
  v27 = sub_219BE0154();
  v26[0] = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A26FC(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDCC14();
  v16 = MEMORY[0x28223BE20](v15);
  (*(v18 + 16))(v26 - v17, a1, v15, v16);
  if (swift_dynamicCast())
  {
    (*(v12 + 8))(v14, v11);
    v19 = sub_219BDCC04();
    v20 = sub_219BDD084();
    v22 = v21;

    if (!v5)
    {
      sub_2189A2790(&qword_280EE84A0, MEMORY[0x277D2E368], MEMORY[0x277D2E370]);
      v23 = v27;
      sub_219BE1974();
      sub_2186C6190(v20, v22);
      (*(v26[0] + 32))(a5, v9, v23);
      v24 = type metadata accessor for EngagementEvent(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v24 - 8) + 56))(a5, 0, 1, v24);
    }
  }

  else
  {
    v25 = type metadata accessor for EngagementEvent(0);
    (*(*(v25 - 8) + 56))(a5, 1, 1, v25);
  }
}

void sub_2189A26FC(uint64_t a1)
{
  if (!qword_280EE8F60)
  {
    sub_219BE0164();
    sub_2189A2790(&qword_280EE8498, MEMORY[0x277D2E378], MEMORY[0x277D2E360]);
    v1 = sub_219BDCC14();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE8F60);
    }
  }
}

uint64_t sub_2189A2790(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2189A2800@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A2CA0(0, &qword_280E8C730, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189A2C4C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v16, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2189A2A48(uint64_t a1)
{
  v2 = sub_2189A2C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189A2A84(uint64_t a1)
{
  v2 = sub_2189A2C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189A2AD8(void *a1)
{
  sub_2189A2CA0(0, &qword_280E8C1D8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189A2C4C();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2189A2C4C()
{
  result = qword_280E96A78[0];
  if (!qword_280E96A78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E96A78);
  }

  return result;
}

void sub_2189A2CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189A2C4C();
    v7 = a3(a1, &type metadata for SeenContentMarkTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2189A2D18()
{
  result = qword_27CC0BBA0;
  if (!qword_27CC0BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BBA0);
  }

  return result;
}

unint64_t sub_2189A2D70()
{
  result = qword_280E96A68;
  if (!qword_280E96A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E96A68);
  }

  return result;
}

unint64_t sub_2189A2DC8()
{
  result = qword_280E96A70;
  if (!qword_280E96A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E96A70);
  }

  return result;
}

uint64_t sub_2189A2E1C(uint64_t a1)
{
  sub_2187335C8(0);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([*(a1 + 24) useOfflineMode] && (__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)), (sub_219BEED44() & 1) != 0))
  {

    sub_219BE20E4();

    v6 = type metadata accessor for AudioFeedTrack(0);
    if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
    {
      sub_2189A3090(v5, sub_2187335C8);
      v7 = 0;
    }

    else
    {
      v9 = [*v5 identifier];
      v10 = sub_219BF5414();
      v12 = v11;

      sub_2189A3090(v5, type metadata accessor for AudioFeedTrack);
      v13 = [*(a1 + 72) listenableArticleIDs];
      v14 = sub_219BF5D44();

      v7 = sub_2188537B8(v10, v12, v14);
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_2189A3014()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2189A3090(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2189A30F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_2189A3130(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (qword_280EE9A88 != -1)
  {
    swift_once();
  }

  sub_2189A3378(&unk_280E95818, &unk_219C0EA14);
  sub_219BDC7D4();
  v4 = *(v3 + OBJC_IVAR___TSNotificationSettings_scheduledDeliverySetting);
  if (v6 != v4)
  {
    [a2[2] deviceDigestModeDidUpdateToDigestMode_];
  }

  sub_2189A3378(&qword_280E95810, &unk_219C0E9D4);
  return sub_219BDCA54();
}

uint64_t sub_2189A3378(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NotificationScheduledDeliveryModeReporter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2189A33DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2189A3424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2189A3484(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v71 = a3;
  v72 = a2;
  sub_2189A3EF0(0, &qword_27CC0BBB8, MEMORY[0x277D6DF88]);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = v58 - v5;
  sub_2189A3E04(0);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A3EF0(0, &qword_27CC0BBE0, MEMORY[0x277D6EC60]);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v65 = v58 - v9;
  sub_2189A3FB0(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A3ED0(0);
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x28223BE20](v13);
  v61 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for SportsFavoritesModel(0);
  MEMORY[0x28223BE20](v82);
  v80 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218972E2C(0);
  v79 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v78 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A407C(0);
  v81 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v3 + 64);
  sub_219A011EC(*(v3 + 56), v23);
  v25 = v24;
  v26 = *(v24 + 16);
  if (v26)
  {
    v59 = v23;
    v60 = v12;
    v83 = MEMORY[0x277D84F90];
    sub_218C342F8(0, v26, 0);
    v27 = v83;
    v29 = *(v17 + 16);
    v28 = v17 + 16;
    v77 = v29;
    v30 = (*(v28 + 64) + 32) & ~*(v28 + 64);
    v58[1] = v25;
    v31 = v25 + v30;
    v32 = *(v28 + 56);
    v74 = (v28 - 8);
    v75 = v32;
    v73 = v20 + 32;
    v76 = v28;
    v33 = v29;
    do
    {
      v34 = v78;
      v35 = v79;
      v33(v78, v31, v79);
      v33(v80, v34, v35);
      sub_2189A4110(&qword_27CC0FAD0, type metadata accessor for SportsFavoritesModel, &unk_219C0B9A8);
      sub_219BE5FB4();
      (*v74)(v34, v35);
      v83 = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_218C342F8((v36 > 1), v37 + 1, 1);
        v27 = v83;
      }

      *(v27 + 16) = v37 + 1;
      (*(v20 + 32))(v27 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v37, v22, v81);
      v31 += v75;
      --v26;
    }

    while (v26);

    v23 = v59;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v83 = v23;
  v38 = sub_2189A4110(&qword_27CC0BBF8, sub_2189A407C, MEMORY[0x277D6D408]);
  v39 = sub_2189A4110(&qword_27CC0BC00, sub_2189A407C, MEMORY[0x277D6D3F8]);

  MEMORY[0x21CEB9170](v27, v81, v38, v39);
  sub_2189A3D68();
  sub_2189A4110(&qword_27CC0FAD0, type metadata accessor for SportsFavoritesModel, &unk_219C0B9A8);
  v40 = v61;
  sub_219BE6924();
  sub_2189A4158(0);
  v41 = v63;
  v42 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_219C09BA0;
  v44 = v64;
  (*(v41 + 16))(v43 + v42, v40, v64);
  v45 = sub_2189A4110(&qword_27CC0BBD0, sub_2189A3ED0, MEMORY[0x277D6D720]);
  v46 = sub_2189A4110(&qword_27CC0BBD8, sub_2189A3ED0, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9150](v43, v44, v45, v46);
  v47 = v65;
  sub_219BEB2D4();
  sub_2189A41B0(0);
  v49 = *(v48 + 48);
  v51 = v66;
  v50 = v67;
  v52 = v68;
  (*(v66 + 16))(v68, v47, v67);
  v53 = *MEMORY[0x277D6D868];
  v54 = sub_219BE6DF4();
  (*(*(v54 - 8) + 104))(&v52[v49], v53, v54);
  v56 = v69;
  v55 = v70;
  (*(v69 + 104))(v52, *MEMORY[0x277D6DF70], v70);
  v72(v52);
  (*(v56 + 8))(v52, v55);
  (*(v51 + 8))(v47, v50);
  return (*(v41 + 8))(v40, v44);
}

unint64_t sub_2189A3D10()
{
  result = qword_27CC0BBA8;
  if (!qword_27CC0BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BBA8);
  }

  return result;
}

unint64_t sub_2189A3D68()
{
  result = qword_27CC0BBB0;
  if (!qword_27CC0BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BBB0);
  }

  return result;
}

void sub_2189A3E04(uint64_t a1)
{
  if (!qword_27CC0BBC0)
  {
    sub_2189A3ED0(255);
    sub_2189A4110(&qword_27CC0BBD0, sub_2189A3ED0, MEMORY[0x277D6D720]);
    sub_2189A4110(&qword_27CC0BBD8, sub_2189A3ED0, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0BBC0);
    }
  }
}

void sub_2189A3EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SportsFavoritesSectionDescriptor;
    v8[1] = type metadata accessor for SportsFavoritesModel(255);
    v8[2] = sub_2189A3D68();
    v8[3] = sub_2189A4110(&qword_27CC0FAD0, type metadata accessor for SportsFavoritesModel, &unk_219C0B9A8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2189A3FB0(uint64_t a1)
{
  if (!qword_27CC0BBE8)
  {
    sub_2189A407C(255);
    sub_2189A4110(&qword_27CC0BBF8, sub_2189A407C, MEMORY[0x277D6D408]);
    sub_2189A4110(&qword_27CC0BC00, sub_2189A407C, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0BBE8);
    }
  }
}

void sub_2189A407C(uint64_t a1)
{
  if (!qword_27CC0BBF0)
  {
    type metadata accessor for SportsFavoritesModel(255);
    sub_2189A4110(&qword_27CC0FAD0, type metadata accessor for SportsFavoritesModel, &unk_219C0B9A8);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0BBF0);
    }
  }
}

uint64_t sub_2189A4110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2189A4158(uint64_t a1)
{
  if (!qword_27CC0BC08)
  {
    sub_2189A3ED0(255);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0BC08);
    }
  }
}

void sub_2189A41B0(uint64_t a1)
{
  if (!qword_27CC0BC10)
  {
    sub_2189A3EF0(255, &qword_27CC0BBE0, MEMORY[0x277D6EC60]);
    sub_219BE6DF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0BC10);
    }
  }
}

void sub_2189A4310(void *a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_219BF53D4();

  v7 = [a1 objectForKey_];

  if (v7)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v12, &v13);
    type metadata accessor for TagFeedViewController();
    swift_dynamicCast();
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v9 = swift_allocObject();
    v9[2] = v11;
    v9[3] = sub_2189A4488;
    v9[4] = v8;

    v10 = v11;

    sub_219BE3494();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2189A44C0(uint64_t a1)
{
  sub_2189A4F8C(0, &qword_280E907A8, sub_2186FB77C, &type metadata for ContentUnavailableOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_219BF1584();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v1 + 168) useOfflineMode];
  if (result)
  {
    sub_219BF1B74();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_2189A4FF4(v5);
      return 0;
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      __swift_project_boxed_opaque_existential_1((v1 + 128), *(v1 + 152));
      v12 = sub_219BF4994();
      sub_2189A46C0(a1, v12);

      (*(v7 + 8))(v10, v6);
      return 1;
    }
  }

  return result;
}

void sub_2189A46C0(uint64_t a1, void *a2)
{
  sub_2187C4270(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v8 = sub_219BE92E4();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v14 = sub_219BE9EC4();
  v48 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v2 + 56);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v18 = Strong, v19 = [Strong presentedViewController], v18, !v19) || (objc_opt_self(), v20 = swift_dynamicCastObjCClass(), v19, !v20))
  {
    v50[0] = a2;
    v51 = 2;
    v21 = a2;
    v22 = sub_218CF86B0(a1, v50);
    sub_2189A4E34(v50);
    if (v22)
    {
      v41 = v22;
      v42 = v16;
      v43 = v14;
      v44 = v7;
      if (qword_280E8D928 != -1)
      {
        swift_once();
      }

      v23 = qword_280F617D0;
      sub_2187C4270(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_219C09BA0;
      sub_2189A4F8C(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
      sub_219BEA7A4();
      v25 = v50[0];
      v49 = v50[0];
      v26 = NewsActivity2.identifier.getter();
      v28 = v27;
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_2186FC3BC();
      *(v24 + 32) = v26;
      *(v24 + 40) = v28;
      sub_218932F9C(v25);
      v29 = sub_219BF6214();
      sub_219BE5314("Presenting Offline Mode unavailable content alert, ignoring attempted routing to activity: %{public}@", 101, 2, &dword_2186C1000, v23, v29, v24);

      v30 = *MEMORY[0x277D6E528];
      v31 = sub_219BE92D4();
      v32 = *(*(v31 - 8) + 104);
      v32(v13, v30, v31);
      v33 = *MEMORY[0x277D6E518];
      v34 = v47;
      v35 = *(v46 + 104);
      v35(v13, v33, v47);
      v32(v10, v30, v31);
      v35(v10, v33, v34);
      v36 = v42;
      sub_219BE9EB4();
      v37 = sub_219BE94F4();
      v38 = v44;
      (*(*(v37 - 8) + 56))(v44, 1, 1, v37);
      v39 = v41;
      sub_21909BA64(v41, v36, v38);

      sub_2189A4F1C(v38, &unk_280EE4470, MEMORY[0x277D6E658]);
      (*(v48 + 8))(v36, v43);
    }
  }
}

uint64_t sub_2189A4BB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2187C4270(0, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_219BF2CB4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A4E88(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2189A4F1C(v8, &qword_280E902A0, MEMORY[0x277D33BC8]);
    v13 = *MEMORY[0x277D33988];
    v14 = sub_219BF2624();
    (*(*(v14 - 8) + 104))(a3, v13, v14);
    v15 = *MEMORY[0x277D33980];
    v16 = sub_219BF2634();
    return (*(*(v16 - 8) + 104))(a3, v15, v16);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    __swift_project_boxed_opaque_existential_1(a2 + 61, a2[64]);
    sub_219BF4794();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2189A4E88(uint64_t a1, uint64_t a2)
{
  sub_2187C4270(0, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189A4F1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187C4270(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2189A4F8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2189A4FF4(uint64_t a1)
{
  sub_2189A4F8C(0, &qword_280E907A8, sub_2186FB77C, &type metadata for ContentUnavailableOfflineModel, MEMORY[0x277D33530]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2189A5088()
{
  v1 = OBJC_IVAR____TtC7NewsUI225SportsScoreSortingContext_nowDate;
  v2 = sub_219BDBD34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SportsScoreSortingContext(uint64_t a1)
{
  result = qword_280EBCEE0;
  if (!qword_280EBCEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2189A51A8(uint64_t a1)
{
  result = sub_219BDBD34();
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

void *sub_2189A5248@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE60E0, MEMORY[0x277D347C0], 1);
  result = sub_219BE1E34();
  if (v8[3])
  {
    v4 = type metadata accessor for LiveActivityWebEmbedAttributesProvider();
    v5 = objc_allocWithZone(v4);
    sub_218718690(v8, v5 + OBJC_IVAR____TtC7NewsUI238LiveActivityWebEmbedAttributesProvider_liveActivityManager);
    v7.receiver = v5;
    v7.super_class = v4;
    v6 = objc_msgSendSuper2(&v7, sel_init);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
    a2[1] = &off_282A41DA8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2189A5318(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E94D90, &protocol descriptor for LiveActivityWebEmbedAttributesProviderType, 0);
  sub_219BE1E34();
  result = v2;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

double sub_2189A5390()
{
  type metadata accessor for LiveActivityWebEmbedMessageHandler();
  sub_219BE2904();

  return result;
}

void *sub_2189A53F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE60E0, MEMORY[0x277D347C0], 1);
  result = sub_219BE1E34();
  if (v6[3])
  {
    v2 = type metadata accessor for LiveActivityWebEmbedMessageHandler();
    v3 = objc_allocWithZone(v2);
    sub_218718690(v6, v3 + OBJC_IVAR____TtC7NewsUI234LiveActivityWebEmbedMessageHandler_liveActivityManager);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2189A54B4(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for LiveActivityWebEmbedMessageHandler();
  v3 = sub_219BE1E24();
  if (v3 && (v4 = v3, v5 = sub_219BF53D4(), , [a1 addMessageHandler:v4 name:v5], v4, v5, __swift_project_boxed_opaque_existential_1(a2, a2[3]), (v6 = sub_219BE1E24()) != 0))
  {
    v7 = v6;
    v8 = sub_219BF53D4();

    [a1 addMessageHandler:v7 name:v8];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2189A562C(uint64_t a1)
{
  sub_2189A5688(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2189A5688(uint64_t a1)
{
  if (!qword_27CC0BDC8)
  {
    sub_2186C709C(255, &qword_280EE05D0, &protocol descriptor for NewsLiveActivitiesTrackerType, 1);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0BDC8);
    }
  }
}

id keypath_getTm@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 respondsToSelector_];
  if (v6)
  {
    result = [v5 *a2];
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  *(a3 + 8) = (v6 & 1) == 0;
  return result;
}

uint64_t sub_2189A5788(uint64_t a1)
{
  v2 = v1;
  v44 = sub_219BDBD34();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v44);
  v45 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = v41 - v7;
  MEMORY[0x28223BE20](v8);
  v48 = v41 - v9;
  MEMORY[0x28223BE20](v10);
  v47 = v41 - v11;
  v12 = sub_219BE12A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BE1294();
  v46 = *(v43 - 8);
  v16 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v49 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v41 - v18;
  v20 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  (*(v13 + 16))(v15, a1, v12);
  v21 = v19;
  v42 = v19;
  sub_219BE1284();
  v22 = OBJC_IVAR____TtC7NewsUI220OnboardingInteractor_personalizedAdsExposureStart;
  swift_beginAccess();
  v23 = *(v4 + 16);
  v24 = v2 + v22;
  v25 = v47;
  v26 = v44;
  v23(v47, v24, v44);
  v27 = v48;
  sub_219BDBD24();
  v41[1] = *(*v20 + 16);
  v23(v50, v25, v26);
  v28 = v45;
  v23(v45, v27, v26);
  v29 = v46;
  v30 = v21;
  v31 = v43;
  (*(v46 + 16))(v49, v30, v43);
  v32 = *(v4 + 80);
  v33 = (v32 + 16) & ~v32;
  v34 = (v5 + v32 + v33) & ~v32;
  v35 = (v5 + *(v29 + 80) + v34) & ~*(v29 + 80);
  v36 = swift_allocObject();
  v37 = *(v4 + 32);
  v37(v36 + v33, v50, v26);
  v37(v36 + v34, v28, v26);
  v38 = v46;
  (*(v46 + 32))(v36 + v35, v49, v31);
  sub_219BDD154();

  v39 = *(v4 + 8);
  v39(v48, v26);
  v39(v47, v26);
  return (*(v38 + 8))(v42, v31);
}

uint64_t sub_2189A5BDC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC7NewsUI220OnboardingInteractor_personalizedAdsExposureStart;
  v2 = sub_219BDBD34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardingInteractor(uint64_t a1)
{
  result = qword_280ECE270;
  if (!qword_280ECE270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2189A5CD4(uint64_t a1)
{
  result = sub_219BDBD34();
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

uint64_t sub_2189A5D70(uint64_t a1)
{
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_218718690(a1, v10);
  sub_21878A704();
  type metadata accessor for OnboardingPersonalizedAdsStep();
  result = swift_dynamicCast();
  if (result)
  {

    sub_219BDBD24();
    v8 = OBJC_IVAR____TtC7NewsUI220OnboardingInteractor_personalizedAdsExposureStart;
    swift_beginAccess();
    (*(v4 + 40))(v1 + v8, v6, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2189A5EAC(uint64_t a1)
{
  v2 = sub_219BE12A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-v7 - 8];
  sub_218718690(a1, v14);
  sub_21878A704();
  type metadata accessor for OnboardingPersonalizedAdsStep();
  result = swift_dynamicCast();
  if (result)
  {
    v10 = *(v13 + 56);
    v11 = *(v3 + 104);
    if (v10 == 2)
    {
      v11(v5, *MEMORY[0x277D2F0E8], v2);
      sub_2189A5788(v5);

      return (*(v3 + 8))(v5, v2);
    }

    else
    {
      if (v10)
      {
        v12 = MEMORY[0x277D2F0E0];
      }

      else
      {
        v12 = MEMORY[0x277D2F0F0];
      }

      v11(v8, *v12, v2);
      sub_2189A5788(v8);

      return (*(v3 + 8))(v8, v2);
    }
  }

  return result;
}

unint64_t sub_2189A606C(uint64_t a1)
{
  result = sub_2189A6094();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2189A6094()
{
  result = qword_280ECE288;
  if (!qword_280ECE288)
  {
    type metadata accessor for OnboardingInteractor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECE288);
  }

  return result;
}

uint64_t sub_2189A60EC(uint64_t a1)
{
  v3 = *(sub_219BDBD34() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(sub_219BE1294() - 8);
  v9 = v1 + ((v7 + v6 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_219A659C0(a1, v1 + v5, v1 + v7, v9);
}

unint64_t sub_2189A61F0()
{
  v1 = v0;
  sub_219BF7314();

  v2 = [v0 _identifier];
  v3 = sub_219BF5414();
  v5 = v4;

  MEMORY[0x21CECC330](v3, v5);

  MEMORY[0x21CECC330](0x3A656C746974202CLL, 0xE900000000000020);
  v6 = [v1 title];
  v7 = sub_219BF5414();
  v9 = v8;

  MEMORY[0x21CECC330](v7, v9);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_2189A632C()
{
  v1 = v0;
  sub_219BF7314();

  v2 = [v0 _identifier];
  v3 = sub_219BF5414();
  v5 = v4;

  MEMORY[0x21CECC330](v3, v5);

  MEMORY[0x21CECC330](0x3A656C746974202CLL, 0xE900000000000020);
  v6 = [v1 title];
  v7 = sub_219BF5414();
  v9 = v8;

  MEMORY[0x21CECC330](v7, v9);

  MEMORY[0x21CECC330](0x72646C696863202CLL, 0xEC000000203A6E65);
  v10 = [v1 _children];
  v11 = sub_2187C0264();
  v12 = sub_219BF5924();

  v13 = MEMORY[0x21CECC6D0](v12, v11);
  v15 = v14;

  MEMORY[0x21CECC330](v13, v15);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0xD000000000000014;
}

id sub_2189A6514()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingTabGroup();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2189A6548(void *a1, void (*a2)(uint64_t))
{
  type metadata accessor for FloatingTabAction();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    if (*(v4 + OBJC_IVAR____TtC7NewsUI217FloatingTabAction__isEnabled) == 1)
    {
      v5 = v4;
      v6 = a1;
      a2(v5);
    }
  }

  else
  {
    a2(a1);
  }
}

id sub_2189A660C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_219BF53D4();

  return v5;
}

unint64_t sub_2189A667C()
{
  v1 = v0;
  sub_219BF7314();

  v2 = [v0 _identifier];
  v3 = sub_219BF5414();
  v5 = v4;

  MEMORY[0x21CECC330](v3, v5);

  MEMORY[0x21CECC330](0x3A656C746974202CLL, 0xE900000000000020);
  v6 = [v1 title];
  v7 = sub_219BF5414();
  v9 = v8;

  MEMORY[0x21CECC330](v7, v9);

  MEMORY[0x21CECC330](0x62616E457369202CLL, 0xED0000203A64656CLL);
  if (*(v1 + OBJC_IVAR____TtC7NewsUI217FloatingTabAction__isEnabled))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC7NewsUI217FloatingTabAction__isEnabled))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x21CECC330](v10, v11);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0xD000000000000015;
}

id sub_2189A6810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v8[OBJC_IVAR____TtC7NewsUI217FloatingTabAction__isEnabled] = 1;
  v13 = sub_219BF53D4();

  v14 = sub_219BF53D4();

  aBlock[4] = a6;
  aBlock[5] = a7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218B66540;
  aBlock[3] = &block_descriptor_1;
  v15 = _Block_copy(aBlock);

  v18.receiver = v8;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithIdentifier_title_image_handler_, v13, v14, a5, v15);

  _Block_release(v15);

  return v16;
}

uint64_t sub_2189A6A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v30 = a2;
  v31 = a1;
  v32 = a3;
  v5 = sub_219BEB084();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A717C(0, &qword_280EE5B08, MEMORY[0x277D6D478]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v29 = sub_219BE7C84();
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF3874();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MagazineSectionBarLayoutOptions(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A71D0(v30, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v29;
    (*(v11 + 32))(v13, v20, v29);
    sub_219BF0DA4();
    v22 = sub_2189A6E68(v10);
    *v7 = MEMORY[0x21CECCDE0](v22);
    *(v7 + 1) = v23;
    *(v7 + 2) = v24;
    *(v7 + 3) = v25;
    (*(v27 + 104))(v7, *MEMORY[0x277D6EC30], v28);
    sub_219BE6064();
    swift_allocObject();
    sub_219BE6044();
    __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
    sub_219BEA174();

    (*(v11 + 8))(v13, v21);
  }

  else
  {
    (*(v15 + 32))(v17, v20, v14);
    __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
    sub_219BF4ED4();
    (*(v15 + 8))(v17, v14);
  }

  type metadata accessor for MagazineSectionBarLayoutAttributes(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2189A6E68@<X0>(uint64_t a1@<X8>)
{
  sub_219BF0DB4();
  if (v15)
  {
    sub_2186CB1F0(&v14, v16);
    sub_219BF0DC4();
    if (v13)
    {
      sub_2186CB1F0(&v12, &v14);
      sub_219BF0DD4();
      if (v11)
      {
        sub_2186CB1F0(&v10, &v12);
        sub_218718690(v16, &v10);
        sub_218718690(&v14, v9);
        sub_218718690(&v12, &v8);
        sub_219BE79C4();
        __swift_destroy_boxed_opaque_existential_1(&v12);
        __swift_destroy_boxed_opaque_existential_1(&v14);
        __swift_destroy_boxed_opaque_existential_1(v16);
        v2 = *MEMORY[0x277D6D468];
        v3 = sub_219BE6034();
        v4 = *(v3 - 8);
        (*(v4 + 104))(a1, v2, v3);
        return (*(v4 + 56))(a1, 0, 1, v3);
      }

      __swift_destroy_boxed_opaque_existential_1(&v14);
      __swift_destroy_boxed_opaque_existential_1(v16);
      v6 = &v10;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
      v6 = &v12;
    }
  }

  else
  {
    v6 = &v14;
  }

  sub_2189A70A0(v6);
  v7 = sub_219BE6034();
  return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
}

uint64_t sub_2189A703C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_2189A70A0(uint64_t a1)
{
  sub_2189A717C(0, &qword_280EE5A68, sub_2189A7118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2189A7118()
{
  result = qword_280EE5A70;
  if (!qword_280EE5A70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE5A70);
  }

  return result;
}

void sub_2189A717C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2189A71D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineSectionBarLayoutOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189A7234()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[1] = 0;
  sub_2186C6588(0, &qword_280EE9070, MEMORY[0x277D839F8], MEMORY[0x277D6D0F8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC0BDE0 = result;
  return result;
}

uint64_t sub_2189A7490()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[1] = 0;
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9A90 = result;
  return result;
}

uint64_t sub_2189A76A4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[15] = 0;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9A30 = result;
  return result;
}

uint64_t sub_2189A7894()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BF5414();
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[15] = 0;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC0BDE8 = result;
  return result;
}

uint64_t sub_2189A7AAC()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  sub_219BF5414();
  v10[1] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0EE20;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 300;
  sub_219BDC954();
  v10[0] = 3600;
  sub_219BDC954();
  v10[0] = 0x7FFFFFFFLL;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC0BDF0 = result;
  return result;
}

uint64_t sub_2189A7E18()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v11[1] = v8;
  sub_219BF5414();
  v13 = 0;
  *v7 = sub_219BF5414();
  v7[1] = v9;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0EE30;
  v12 = 0;
  sub_219BDC954();
  v12 = 60;
  sub_219BDC954();
  v12 = 300;
  sub_219BDC954();
  v12 = 1800;
  sub_219BDC954();
  v12 = 3600;
  sub_219BDC954();
  v12 = 21600;
  sub_219BDC954();
  v12 = 0x7FFFFFFFLL;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC0BDF8 = result;
  return result;
}

uint64_t sub_2189A8224(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

void sub_2189A8294(uint64_t a1)
{
  if (!qword_27CC0BE00)
  {
    sub_2189A82EC();
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0BE00);
    }
  }
}

void sub_2189A82EC()
{
  if (!qword_27CC0BE08)
  {
    v0 = sub_219BDC964();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BE08);
    }
  }
}

void *sub_2189A833C()
{
  v1 = v0;
  sub_2188422B8(0, &unk_27CC0BE30, type metadata accessor for Shortcut);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v26 = type metadata accessor for Shortcut(0);
  v22 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v21 = &v20 - v8;
  if (qword_27CC084B0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    sub_2189AD370(&qword_27CC0BE10, v7, type metadata accessor for CachedShortcutsManager, &unk_219C0EEB8);
    sub_219BDC7D4();
    v9 = v27;
    if (qword_27CC084B8 != -1)
    {
      swift_once();
    }

    sub_219BDC7D4();
    v10 = *(v9 + 16);
    if (!v10 || !*(v27 + 16))
    {
      break;
    }

    v23 = v28;
    v24 = v27;
    v11 = 0;
    v12 = (v22 + 48);
    v13 = (v9 + 40);
    v14 = MEMORY[0x277D84F90];
    v20 = v1;
    while (v11 < *(v9 + 16))
    {
      v15 = *v13;
      v27 = *(v13 - 1);
      v28 = v15;

      sub_2189A875C(v23, v1, v4);

      if ((*v12)(v4, 1, v26) == 1)
      {
        sub_218864AB4(v4, &unk_27CC0BE30, type metadata accessor for Shortcut);
      }

      else
      {
        v16 = v21;
        sub_2189AD42C(v4, v21, type metadata accessor for Shortcut);
        sub_2189AD42C(v16, v25, type metadata accessor for Shortcut);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2191F6B2C(0, v14[2] + 1, 1, v14);
        }

        v18 = v14[2];
        v17 = v14[3];
        if (v18 >= v17 >> 1)
        {
          v14 = sub_2191F6B2C((v17 > 1), v18 + 1, 1, v14);
        }

        v14[2] = v18 + 1;
        sub_2189AD42C(v25, v14 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, type metadata accessor for Shortcut);
        v1 = v20;
      }

      ++v11;
      v13 += 2;
      if (v10 == v11)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:

  return v14;
}

uint64_t sub_2189A875C@<X0>(uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v298 = a2;
  v290 = a3;
  v299 = a4;
  v280 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v280);
  v287 = &v261 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v279);
  v286 = &v261 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s7URLDataVMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v289 = &v261 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v296 = &v261 - v10;
  sub_2188422B8(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v11 - 8);
  v277 = &v261 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v276 = &v261 - v14;
  MEMORY[0x28223BE20](v15);
  v274 = &v261 - v16;
  MEMORY[0x28223BE20](v17);
  v273 = &v261 - v18;
  v297 = sub_219BDB954();
  v293 = *(v297 - 8);
  MEMORY[0x28223BE20](v297);
  v269 = &v261 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v278 = &v261 - v21;
  MEMORY[0x28223BE20](v22);
  v268 = &v261 - v23;
  MEMORY[0x28223BE20](v24);
  v265 = &v261 - v25;
  MEMORY[0x28223BE20](v26);
  v267 = &v261 - v27;
  MEMORY[0x28223BE20](v28);
  v275 = &v261 - v29;
  MEMORY[0x28223BE20](v30);
  v266 = &v261 - v31;
  MEMORY[0x28223BE20](v32);
  v264 = &v261 - v33;
  v272 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v272);
  v285 = &v261 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = _s7TagDataVMa(0);
  MEMORY[0x28223BE20](v271);
  v284 = &v261 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v288 = (&v261 - v37);
  v38 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v38 - 8);
  v294 = (&v261 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2188422B8(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  MEMORY[0x28223BE20](v40 - 8);
  v270 = &v261 - v41;
  v42 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v42 - 8);
  v283 = &v261 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = _s5ModelOMa(0);
  MEMORY[0x28223BE20](v44);
  v46 = &v261 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ShortcutCategory(0);
  v295 = *(v47 - 8);
  MEMORY[0x28223BE20](v47 - 8);
  v291 = &v261 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v282 = &v261 - v50;
  MEMORY[0x28223BE20](v51);
  v53 = &v261 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = &v261 - v55;
  sub_2188422B8(0, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = &v261 - v58;
  v60 = type metadata accessor for CuratedShortcut(0);
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v292 = &v261 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v281 = &v261 - v64;
  MEMORY[0x28223BE20](v65);
  v67 = (&v261 - v66);

  sub_21993538C(v59);
  if ((*(v61 + 48))(v59, 1, v60) == 1)
  {
    sub_218864AB4(v59, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v68 = sub_219BE5434();
    __swift_project_value_buffer(v68, qword_280F62538);
    v69 = sub_219BE5414();
    v70 = sub_219BF61E4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2186C1000, v69, v70, "Unable to convert cached string data to curation shortcut", v71, 2u);
      MEMORY[0x21CECF960](v71, -1, -1);
    }

    goto LABEL_21;
  }

  sub_2189AD42C(v59, v67, type metadata accessor for CuratedShortcut);
  v72 = v298;
  v73 = v67;
  if (!*(v298 + 16) || (v74 = sub_21870F700(*v67, v67[1]), (v75 & 1) == 0))
  {
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v99 = sub_219BE5434();
    __swift_project_value_buffer(v99, qword_280F62538);
    v100 = sub_219BE5414();
    v101 = sub_219BF61E4();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_2186C1000, v100, v101, "Unable to determine category for shortcut from cached config resource", v102, 2u);
      MEMORY[0x21CECF960](v102, -1, -1);
    }

    goto LABEL_20;
  }

  sub_2189AD308(*(v72 + 56) + *(v295 + 72) * v74, v53, type metadata accessor for ShortcutCategory);
  sub_2189AD42C(v53, v56, type metadata accessor for ShortcutCategory);
  sub_2189AD308(v67 + *(v60 + 20), v46, _s5ModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v263 = v67;
    v262 = v56;
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v181 = v296;
        sub_2189AD42C(v46, v296, _s7URLDataVMa);
        v182 = v292;
        sub_2189AD308(v67, v292, type metadata accessor for CuratedShortcut);
        v183 = v291;
        sub_2189AD308(v56, v291, type metadata accessor for ShortcutCategory);
        v184 = v293;
        (*(v293 + 16))(v289, v181, v297);
        v90 = v299;
        sub_2189AD308(v183, v299, type metadata accessor for ShortcutCategory);
        v185 = v294;
        sub_21993568C(v294);
        v186 = sub_21993639C();
        v188 = v187;
        sub_2189AD2A8(v185, type metadata accessor for CuratedShortcut.Identifier);
        sub_2189AD2A8(v183, type metadata accessor for ShortcutCategory);
        sub_2189AD2A8(v182, type metadata accessor for CuratedShortcut);
        sub_2189AD2A8(v181, _s7URLDataVMa);
        sub_2189AD2A8(v262, type metadata accessor for ShortcutCategory);
        v189 = _s8ResolvedVMa(0);
        v190 = (v90 + *(v189 + 24));
        *v190 = v186;
        v190[1] = v188;
        (*(v184 + 32))(v90 + *(v189 + 20), v289, v297);
        _s13ResolvedModelOMa(0);
        swift_storeEnumTagMultiPayload();
        goto LABEL_46;
      }

      v80 = v286;
      sub_2189AD42C(v46, v286, _s10PuzzleDataVMa);
      v126 = v276;
      sub_2188383F8(v80 + *(v279 + 20), v276);
      v127 = v293;
      v128 = v297;
      if ((*(v293 + 48))(v126, 1, v297) != 1)
      {
        v220 = v73;
        v295 = *(v127 + 32);
        v298 = v127 + 32;
        v221 = v265;
        (v295)(v265, v126, v128);
        v222 = v292;
        sub_2189AD308(v220, v292, type metadata accessor for CuratedShortcut);
        v223 = v291;
        sub_2189AD308(v56, v291, type metadata accessor for ShortcutCategory);
        (*(v127 + 16))(v296, v221, v128);
        v224 = v299;
        sub_2189AD308(v223, v299, type metadata accessor for ShortcutCategory);
        v225 = v294;
        sub_21993568C(v294);
        v226 = sub_21993639C();
        v290 = v227;
        sub_2189AD2A8(v225, type metadata accessor for CuratedShortcut.Identifier);
        sub_2189AD2A8(v223, type metadata accessor for ShortcutCategory);
        sub_2189AD2A8(v222, type metadata accessor for CuratedShortcut);
        v228 = v221;
        v229 = v297;
        (*(v127 + 8))(v228, v297);
        sub_2189AD2A8(v262, type metadata accessor for ShortcutCategory);
        v230 = _s8ResolvedVMa(0);
        v231 = (v224 + *(v230 + 24));
        v232 = v290;
        *v231 = v226;
        v231[1] = v232;
        (v295)(v224 + *(v230 + 20), v296, v229);
        _s13ResolvedModelOMa(0);
        swift_storeEnumTagMultiPayload();
        sub_2189AD2A8(v286, _s10PuzzleDataVMa);
        sub_2189AD2A8(v263, type metadata accessor for CuratedShortcut);
        v191 = type metadata accessor for Shortcut(0);
        swift_storeEnumTagMultiPayload();
        v104 = *(*(v191 - 8) + 56);
        v105 = v224;
        goto LABEL_52;
      }

      sub_218864AB4(v126, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v129 = objc_opt_self();
      v130 = sub_219BF53D4();
      v131 = [v129 fc:v130 NewsURLForTagID:?];

      if (v131)
      {
        v132 = v268;
        sub_219BDB8B4();

        v133 = v292;
        sub_2189AD308(v73, v292, type metadata accessor for CuratedShortcut);
        v134 = v291;
        sub_2189AD308(v56, v291, type metadata accessor for ShortcutCategory);
        (*(v127 + 16))(v296, v132, v128);
        v90 = v299;
        sub_2189AD308(v134, v299, type metadata accessor for ShortcutCategory);
        v135 = v294;
        sub_21993568C(v294);
        v136 = sub_21993639C();
        v138 = v137;
        sub_2189AD2A8(v135, type metadata accessor for CuratedShortcut.Identifier);
        sub_2189AD2A8(v134, type metadata accessor for ShortcutCategory);
        sub_2189AD2A8(v133, type metadata accessor for CuratedShortcut);
        v139 = v297;
        (*(v127 + 8))(v268, v297);
        sub_2189AD2A8(v262, type metadata accessor for ShortcutCategory);
        v140 = _s8ResolvedVMa(0);
        v141 = (v90 + *(v140 + 24));
        *v141 = v136;
        v141[1] = v138;
        (*(v127 + 32))(v90 + *(v140 + 20), v296, v139);
        _s13ResolvedModelOMa(0);
        swift_storeEnumTagMultiPayload();
        v97 = _s10PuzzleDataVMa;
        v98 = v286;
        goto LABEL_44;
      }

      sub_2189AD2A8(v56, type metadata accessor for ShortcutCategory);
      v260 = _s10PuzzleDataVMa;
      goto LABEL_61;
    }

    v77 = v56;
    v78 = v297;
    v79 = v293;
    if (EnumCaseMultiPayload == 3)
    {
      v80 = v284;
      sub_2189AD42C(v46, v284, _s7TagDataVMa);
      v81 = v274;
      sub_2188383F8(v80 + *(v271 + 20), v274);
      if ((*(v79 + 48))(v81, 1, v78) == 1)
      {
        sub_218864AB4(v81, &unk_280EE9D00, MEMORY[0x277CC9260]);
        v82 = objc_opt_self();
        v83 = sub_219BF53D4();
        v84 = [v82 fc:v83 NewsURLForTagID:?];

        if (v84)
        {
          v85 = v267;
          sub_219BDB8B4();

          v86 = v292;
          sub_2189AD308(v73, v292, type metadata accessor for CuratedShortcut);
          v87 = v77;
          v88 = v291;
          sub_2189AD308(v87, v291, type metadata accessor for ShortcutCategory);
          v89 = v78;
          (*(v79 + 16))(v296, v85, v78);
          v90 = v299;
          sub_2189AD308(v88, v299, type metadata accessor for ShortcutCategory);
          v91 = v294;
          sub_21993568C(v294);
          v92 = sub_21993639C();
          v94 = v93;
          sub_2189AD2A8(v91, type metadata accessor for CuratedShortcut.Identifier);
          sub_2189AD2A8(v88, type metadata accessor for ShortcutCategory);
          sub_2189AD2A8(v86, type metadata accessor for CuratedShortcut);
          (*(v79 + 8))(v267, v89);
          sub_2189AD2A8(v262, type metadata accessor for ShortcutCategory);
          v95 = _s8ResolvedVMa(0);
          v96 = (v90 + *(v95 + 24));
          *v96 = v92;
          v96[1] = v94;
          (*(v79 + 32))(v90 + *(v95 + 20), v296, v89);
          _s13ResolvedModelOMa(0);
          swift_storeEnumTagMultiPayload();
          v97 = _s7TagDataVMa;
          v98 = v284;
LABEL_44:
          sub_2189AD2A8(v98, v97);
LABEL_46:
          sub_2189AD2A8(v263, type metadata accessor for CuratedShortcut);
          v191 = type metadata accessor for Shortcut(0);
          swift_storeEnumTagMultiPayload();
          v104 = *(*(v191 - 8) + 56);
          v105 = v90;
LABEL_52:
          v106 = 0;
          v103 = v191;
          return v104(v105, v106, 1, v103);
        }

        sub_2189AD2A8(v77, type metadata accessor for ShortcutCategory);
        v260 = _s7TagDataVMa;
        goto LABEL_61;
      }

      v206 = *(v79 + 32);
      v295 = v79 + 32;
      v298 = v206;
      v207 = v275;
      v206(v275, v81, v78);
      v208 = v292;
      sub_2189AD308(v73, v292, type metadata accessor for CuratedShortcut);
      v209 = v291;
      sub_2189AD308(v77, v291, type metadata accessor for ShortcutCategory);
      (*(v79 + 16))(v296, v207, v78);
      v210 = v299;
      sub_2189AD308(v209, v299, type metadata accessor for ShortcutCategory);
      v211 = v294;
      sub_21993568C(v294);
      v212 = sub_21993639C();
      v214 = v213;
      sub_2189AD2A8(v211, type metadata accessor for CuratedShortcut.Identifier);
      sub_2189AD2A8(v209, type metadata accessor for ShortcutCategory);
      sub_2189AD2A8(v208, type metadata accessor for CuratedShortcut);
      v215 = v297;
      (*(v79 + 8))(v275, v297);
      sub_2189AD2A8(v262, type metadata accessor for ShortcutCategory);
      v216 = _s8ResolvedVMa(0);
      v217 = (v210 + *(v216 + 24));
      *v217 = v212;
      v217[1] = v214;
      (v298)(v210 + *(v216 + 20), v296, v215);
      _s13ResolvedModelOMa(0);
      swift_storeEnumTagMultiPayload();
      v218 = _s7TagDataVMa;
      v219 = v284;
    }

    else
    {
      v80 = v287;
      sub_2189AD42C(v46, v287, _s14PuzzleFeedDataVMa);
      v166 = v277;
      sub_2188383F8(v80 + *(v280 + 20), v277);
      if ((*(v79 + 48))(v166, 1, v78) == 1)
      {
        sub_218864AB4(v166, &unk_280EE9D00, MEMORY[0x277CC9260]);
        v167 = objc_opt_self();
        v168 = sub_219BF53D4();
        v169 = [v167 fc:v168 NewsURLForTagID:?];

        if (v169)
        {
          v170 = v269;
          sub_219BDB8B4();

          v171 = v292;
          sub_2189AD308(v73, v292, type metadata accessor for CuratedShortcut);
          v172 = v77;
          v173 = v291;
          sub_2189AD308(v172, v291, type metadata accessor for ShortcutCategory);
          v174 = v78;
          (*(v79 + 16))(v296, v170, v78);
          v90 = v299;
          sub_2189AD308(v173, v299, type metadata accessor for ShortcutCategory);
          v175 = v294;
          sub_21993568C(v294);
          v176 = sub_21993639C();
          v178 = v177;
          sub_2189AD2A8(v175, type metadata accessor for CuratedShortcut.Identifier);
          sub_2189AD2A8(v173, type metadata accessor for ShortcutCategory);
          sub_2189AD2A8(v171, type metadata accessor for CuratedShortcut);
          (*(v79 + 8))(v269, v174);
          sub_2189AD2A8(v262, type metadata accessor for ShortcutCategory);
          v179 = _s8ResolvedVMa(0);
          v180 = (v90 + *(v179 + 24));
          *v180 = v176;
          v180[1] = v178;
          (*(v79 + 32))(v90 + *(v179 + 20), v296, v174);
          _s13ResolvedModelOMa(0);
          swift_storeEnumTagMultiPayload();
          v97 = _s14PuzzleFeedDataVMa;
          v98 = v287;
          goto LABEL_44;
        }

        sub_2189AD2A8(v77, type metadata accessor for ShortcutCategory);
        v260 = _s14PuzzleFeedDataVMa;
LABEL_61:
        v258 = v260;
        v259 = v80;
LABEL_62:
        sub_2189AD2A8(v259, v258);
LABEL_20:
        sub_2189AD2A8(v73, type metadata accessor for CuratedShortcut);
LABEL_21:
        v103 = type metadata accessor for Shortcut(0);
        v104 = *(*(v103 - 8) + 56);
        v105 = v299;
        v106 = 1;
        return v104(v105, v106, 1, v103);
      }

      v233 = *(v79 + 32);
      v295 = v79 + 32;
      v298 = v233;
      v234 = v278;
      v233(v278, v166, v78);
      v235 = v292;
      sub_2189AD308(v73, v292, type metadata accessor for CuratedShortcut);
      v236 = v291;
      sub_2189AD308(v77, v291, type metadata accessor for ShortcutCategory);
      (*(v79 + 16))(v296, v234, v78);
      v210 = v299;
      sub_2189AD308(v236, v299, type metadata accessor for ShortcutCategory);
      v237 = v294;
      sub_21993568C(v294);
      v238 = sub_21993639C();
      v240 = v239;
      sub_2189AD2A8(v237, type metadata accessor for CuratedShortcut.Identifier);
      sub_2189AD2A8(v236, type metadata accessor for ShortcutCategory);
      sub_2189AD2A8(v235, type metadata accessor for CuratedShortcut);
      v241 = v297;
      (*(v79 + 8))(v278, v297);
      sub_2189AD2A8(v262, type metadata accessor for ShortcutCategory);
      v242 = _s8ResolvedVMa(0);
      v243 = (v210 + *(v242 + 24));
      *v243 = v238;
      v243[1] = v240;
      (v298)(v210 + *(v242 + 20), v296, v241);
      _s13ResolvedModelOMa(0);
      swift_storeEnumTagMultiPayload();
      v218 = _s14PuzzleFeedDataVMa;
      v219 = v287;
    }

    sub_2189AD2A8(v219, v218);
    sub_2189AD2A8(v263, type metadata accessor for CuratedShortcut);
    v191 = type metadata accessor for Shortcut(0);
    swift_storeEnumTagMultiPayload();
    v104 = *(*(v191 - 8) + 56);
    v105 = v210;
    goto LABEL_52;
  }

  if (!EnumCaseMultiPayload)
  {
    v142 = v283;
    sub_2189AD42C(v46, v283, _s12HeadlineDataVMa);
    v143 = v290;
    __swift_project_boxed_opaque_existential_1(v290 + 2, v290[5]);
    v144 = sub_219BF27E4();
    if (v144)
    {
      v145 = v144;
      v263 = v73;
      sub_2189AD308(v73, v281, type metadata accessor for CuratedShortcut);
      sub_2189AD308(v56, v282, type metadata accessor for ShortcutCategory);
      __swift_project_boxed_opaque_existential_1(v143 + 7, v143[10]);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v146 = v270;
        sub_219BEEFB4();
        swift_unknownObjectRelease();
        v147 = 0;
      }

      else
      {
        v147 = 1;
        v146 = v270;
      }

      v246 = sub_219BF0BD4();
      (*(*(v246 - 8) + 56))(v146, v147, 1, v246);
      v298 = sub_21983F764(v145, v146);
      sub_218864AB4(v146, &unk_280E90C60, MEMORY[0x277D32FE0]);
      v247 = v282;
      v248 = v299;
      sub_2189AD308(v282, v299, type metadata accessor for ShortcutCategory);
      v249 = v294;
      v250 = v281;
      sub_21993568C(v294);
      v251 = sub_21993639C();
      v253 = v252;
      sub_2189AD2A8(v249, type metadata accessor for CuratedShortcut.Identifier);
      v254 = _s8ResolvedVMa(0);
      v255 = (v248 + *(v254 + 24));
      *v255 = v251;
      v255[1] = v253;
      v256 = (v248 + *(v254 + 20));
      v257 = _s8HeadlineVMa(0);
      sub_21992EE60(v256 + *(v257 + 20));
      swift_unknownObjectRelease();
      sub_2189AD2A8(v247, type metadata accessor for ShortcutCategory);
      sub_2189AD2A8(v250, type metadata accessor for CuratedShortcut);
      sub_2189AD2A8(v56, type metadata accessor for ShortcutCategory);
      *v256 = v298;
      _s13ResolvedModelOMa(0);
      swift_storeEnumTagMultiPayload();
      sub_2189AD2A8(v283, _s12HeadlineDataVMa);
      sub_2189AD2A8(v263, type metadata accessor for CuratedShortcut);
      v125 = type metadata accessor for Shortcut(0);
      swift_storeEnumTagMultiPayload();
      v104 = *(*(v125 - 8) + 56);
      v105 = v248;
      goto LABEL_56;
    }

    sub_2189AD2A8(v56, type metadata accessor for ShortcutCategory);
    v244 = _s12HeadlineDataVMa;
    v245 = v142;
LABEL_65:
    sub_2189AD2A8(v245, v244);
    sub_2189AD2A8(v73, type metadata accessor for CuratedShortcut);
    v103 = type metadata accessor for Shortcut(0);
    v104 = *(*(v103 - 8) + 56);
    v105 = v299;
    v106 = 1;
    return v104(v105, v106, 1, v103);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v148 = v285;
    sub_2189AD42C(v46, v285, _s9IssueDataVMa);
    v149 = v273;
    sub_2188383F8(v148 + *(v272 + 20), v273);
    v150 = v293;
    v151 = v297;
    if ((*(v293 + 48))(v149, 1, v297) == 1)
    {
      sub_218864AB4(v149, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v152 = objc_opt_self();
      v153 = sub_219BF53D4();
      v154 = [v152 fc:v153 NewsURLForTagID:?];

      if (v154)
      {
        v155 = v266;
        sub_219BDB8B4();

        v156 = v292;
        sub_2189AD308(v73, v292, type metadata accessor for CuratedShortcut);
        v157 = v291;
        sub_2189AD308(v56, v291, type metadata accessor for ShortcutCategory);
        v158 = *(v150 + 16);
        v262 = v56;
        v159 = v150;
        v158(v296, v155, v151);
        v263 = v73;
        v90 = v299;
        sub_2189AD308(v157, v299, type metadata accessor for ShortcutCategory);
        v160 = v294;
        sub_21993568C(v294);
        v161 = sub_21993639C();
        v163 = v162;
        sub_2189AD2A8(v160, type metadata accessor for CuratedShortcut.Identifier);
        sub_2189AD2A8(v157, type metadata accessor for ShortcutCategory);
        sub_2189AD2A8(v156, type metadata accessor for CuratedShortcut);
        (*(v159 + 8))(v266, v151);
        sub_2189AD2A8(v262, type metadata accessor for ShortcutCategory);
        v164 = _s8ResolvedVMa(0);
        v165 = (v90 + *(v164 + 24));
        *v165 = v161;
        v165[1] = v163;
        (*(v159 + 32))(v90 + *(v164 + 20), v296, v151);
        _s13ResolvedModelOMa(0);
        swift_storeEnumTagMultiPayload();
        v97 = _s9IssueDataVMa;
        v98 = v285;
        goto LABEL_44;
      }

      sub_2189AD2A8(v56, type metadata accessor for ShortcutCategory);
      v258 = _s9IssueDataVMa;
      v259 = v148;
      goto LABEL_62;
    }

    v192 = v150;
    v193 = v56;
    v262 = v56;
    v194 = v73;
    v263 = v73;
    v195 = *(v192 + 32);
    v295 = v192 + 32;
    v298 = v195;
    v196 = v264;
    v195(v264, v149, v151);
    v197 = v292;
    sub_2189AD308(v194, v292, type metadata accessor for CuratedShortcut);
    v198 = v291;
    sub_2189AD308(v193, v291, type metadata accessor for ShortcutCategory);
    (*(v192 + 16))(v296, v196, v151);
    v199 = v299;
    sub_2189AD308(v198, v299, type metadata accessor for ShortcutCategory);
    v200 = v294;
    sub_21993568C(v294);
    v201 = sub_21993639C();
    v203 = v202;
    sub_2189AD2A8(v200, type metadata accessor for CuratedShortcut.Identifier);
    sub_2189AD2A8(v198, type metadata accessor for ShortcutCategory);
    sub_2189AD2A8(v197, type metadata accessor for CuratedShortcut);
    (*(v192 + 8))(v196, v151);
    sub_2189AD2A8(v262, type metadata accessor for ShortcutCategory);
    v204 = _s8ResolvedVMa(0);
    v205 = (v199 + *(v204 + 24));
    *v205 = v201;
    v205[1] = v203;
    (v298)(v199 + *(v204 + 20), v296, v151);
    _s13ResolvedModelOMa(0);
    swift_storeEnumTagMultiPayload();
    sub_2189AD2A8(v285, _s9IssueDataVMa);
    sub_2189AD2A8(v263, type metadata accessor for CuratedShortcut);
    v125 = type metadata accessor for Shortcut(0);
    swift_storeEnumTagMultiPayload();
    v104 = *(*(v125 - 8) + 56);
    v105 = v199;
LABEL_56:
    v106 = 0;
    v103 = v125;
    return v104(v105, v106, 1, v103);
  }

  v108 = v288;
  sub_2189AD42C(v46, v288, _s7TagDataVMa);
  sub_21871D24C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v110 = v108[1];
  *(inited + 32) = *v108;
  *(inited + 40) = v110;

  sub_218E96058(inited);
  v112 = v111;
  swift_setDeallocating();
  sub_2189AD3D8(inited + 32);
  if (!(v112 >> 62))
  {
    result = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

  result = sub_219BF7214();
  if (!result)
  {
LABEL_64:

    sub_2189AD2A8(v288, _s7TagDataVMa);
    v244 = type metadata accessor for ShortcutCategory;
    v245 = v56;
    goto LABEL_65;
  }

LABEL_27:
  if ((v112 & 0xC000000000000001) != 0)
  {
    v113 = MEMORY[0x21CECE0F0](0, v112);
    goto LABEL_30;
  }

  if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v113 = *(v112 + 32);

LABEL_30:

    v114 = v292;
    sub_2189AD308(v67, v292, type metadata accessor for CuratedShortcut);
    v115 = v291;
    sub_2189AD308(v56, v291, type metadata accessor for ShortcutCategory);
    v263 = v67;
    v116 = v299;
    sub_2189AD308(v115, v299, type metadata accessor for ShortcutCategory);
    v117 = v294;
    sub_21993568C(v294);
    v118 = sub_21993639C();
    v120 = v119;
    sub_2189AD2A8(v117, type metadata accessor for CuratedShortcut.Identifier);
    v121 = _s8ResolvedVMa(0);
    v122 = (v116 + *(v121 + 24));
    *v122 = v118;
    v122[1] = v120;
    v123 = (v116 + *(v121 + 20));
    v124 = _s3TagVMa(0);
    sub_21992EE60(v123 + *(v124 + 20));
    sub_2189AD2A8(v115, type metadata accessor for ShortcutCategory);
    sub_2189AD2A8(v114, type metadata accessor for CuratedShortcut);
    sub_2189AD2A8(v288, _s7TagDataVMa);
    sub_2189AD2A8(v56, type metadata accessor for ShortcutCategory);
    *v123 = v113;
    _s13ResolvedModelOMa(0);
    swift_storeEnumTagMultiPayload();
    sub_2189AD2A8(v263, type metadata accessor for CuratedShortcut);
    v125 = type metadata accessor for Shortcut(0);
    swift_storeEnumTagMultiPayload();
    v104 = *(*(v125 - 8) + 56);
    v105 = v116;
    goto LABEL_56;
  }

  __break(1u);
  return result;
}

uint64_t sub_2189AAE40()
{
  v1 = v0;
  v2 = type metadata accessor for Shortcut(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  v7 = sub_218C54F50(v6);
  if (v7 >> 62)
  {
    v38 = v7;
    v8 = sub_219BF7214();
    v7 = v38;
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {

    v12 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_13;
    }

LABEL_25:

    if (qword_280EE5F18 == -1)
    {
LABEL_26:
      v34 = sub_219BE5434();
      __swift_project_value_buffer(v34, qword_280F62538);
      v35 = sub_219BE5414();
      v36 = sub_219BF6214();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2186C1000, v35, v36, "No cached favorited shortcuts", v37, 2u);
        MEMORY[0x21CECF960](v37, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_36:
    swift_once();
    goto LABEL_26;
  }

  v10 = v7;
  v44 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v42 = v2;
  v43 = v8;
  v40[1] = v1;
  v41 = v3;
  v11 = 0;
  v12 = v44;
  v13 = v10;
  v14 = v10 & 0xC000000000000001;
  v15 = v5;
  v16 = v10;
  do
  {
    if (v14)
    {
      v17 = MEMORY[0x21CECE0F0](v11, v13);
    }

    else
    {
      v17 = *(v13 + 8 * v11 + 32);
    }

    v18 = v17;
    v19 = [v17 identifier];
    v20 = sub_219BF5414();
    v22 = v21;

    v44 = v12;
    v24 = *(v12 + 16);
    v23 = *(v12 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_21870B65C((v23 > 1), v24 + 1, 1);
      v12 = v44;
    }

    ++v11;
    *(v12 + 16) = v24 + 1;
    v25 = v12 + 16 * v24;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
    v13 = v16;
  }

  while (v43 != v11);
  v5 = v15;

  v3 = v41;
  v9 = MEMORY[0x277D84F90];
  if (!*(v12 + 16))
  {
    goto LABEL_25;
  }

LABEL_13:
  sub_218E96058(v12);
  v10 = v26;

  if (!(v10 >> 62))
  {
    v27 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_15;
    }

LABEL_32:

    return MEMORY[0x277D84F90];
  }

LABEL_31:
  v27 = sub_219BF7214();
  if (!v27)
  {
    goto LABEL_32;
  }

LABEL_15:
  v44 = v9;
  sub_218C34348(0, v27 & ~(v27 >> 63), 0);
  if (v27 < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v28 = 0;
  v29 = v44;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x21CECE0F0](v28, v10);
    }

    else
    {
      v30 = *(v10 + 8 * v28 + 32);
    }

    v31 = *(v30 + 16);
    swift_unknownObjectRetain();

    *v5 = v31;
    swift_storeEnumTagMultiPayload();
    v44 = v29;
    v33 = *(v29 + 16);
    v32 = *(v29 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_218C34348((v32 > 1), v33 + 1, 1);
      v29 = v44;
    }

    ++v28;
    *(v29 + 16) = v33 + 1;
    sub_2189AD42C(v5, v29 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v33, type metadata accessor for Shortcut);
  }

  while (v27 != v28);

  return v29;
}

uint64_t sub_2189AB28C()
{
  v0 = type metadata accessor for Shortcut(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27CC084C0 != -1)
  {
    swift_once();
  }

  sub_2189AD370(&qword_27CC0BE10, v2, type metadata accessor for CachedShortcutsManager, &unk_219C0EEB8);
  sub_219BDC7D4();
  if (!*(v20 + 16))
  {

    if (qword_280EE5F18 == -1)
    {
LABEL_16:
      v14 = sub_219BE5434();
      __swift_project_value_buffer(v14, qword_280F62538);
      v15 = sub_219BE5414();
      v16 = sub_219BF6214();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2186C1000, v15, v16, "No cached suggested shortcuts", v17, 2u);
        MEMORY[0x21CECF960](v17, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_24:
    swift_once();
    goto LABEL_16;
  }

  sub_218E96058(v20);
  v6 = v5;

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_20:

    return MEMORY[0x277D84F90];
  }

  v7 = sub_219BF7214();
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_6:
  v20 = MEMORY[0x277D84F90];
  sub_218C34348(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v8 = 0;
  v9 = v20;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x21CECE0F0](v8, v6);
    }

    else
    {
      v10 = *(v6 + 8 * v8 + 32);
    }

    v11 = *(v10 + 16);
    swift_unknownObjectRetain();

    *v4 = v11;
    swift_storeEnumTagMultiPayload();
    v20 = v9;
    v13 = *(v9 + 16);
    v12 = *(v9 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_218C34348((v12 > 1), v13 + 1, 1);
      v9 = v20;
    }

    ++v8;
    *(v9 + 16) = v13 + 1;
    sub_2189AD42C(v4, v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13, type metadata accessor for Shortcut);
  }

  while (v7 != v8);

  return v9;
}

uint64_t sub_2189AB620(uint64_t *a1, uint64_t a2)
{
  v29 = a2;
  v2 = sub_219BDB954();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2188422B8(0, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for CuratedShortcut(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_21993538C(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_218864AB4(v10, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
    v15 = 0;
  }

  else
  {
    sub_2189AD42C(v10, v14, type metadata accessor for CuratedShortcut);
    sub_21993568C(v7);
    if (swift_getEnumCaseMultiPayload() > 5)
    {
      v22 = v28;
      (*(v28 + 32))(v4, v7, v2);
      v23 = sub_219BDB804();
      v25 = v24;
      v26 = (v29 + *(_s8ResolvedVMa(0) + 24));
      if (v23 == *v26 && v25 == v26[1])
      {

        v15 = 0;
      }

      else
      {
        v27 = sub_219BF78F4();

        v15 = v27 ^ 1;
      }

      (*(v22 + 8))(v4, v2);
    }

    else
    {
      v17 = *v7;
      v16 = v7[1];
      v18 = (v29 + *(_s8ResolvedVMa(0) + 24));
      if (v17 == *v18 && v16 == v18[1])
      {

        v15 = 0;
      }

      else
      {
        v20 = sub_219BF78F4();

        v15 = v20 ^ 1;
      }
    }

    sub_2189AD2A8(v14, type metadata accessor for CuratedShortcut);
  }

  return v15 & 1;
}

double sub_2189ABA08(uint64_t a1)
{
  v3 = *v1;
  v82 = sub_219BDB954();
  v4 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v87);
  v91 = (v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2188422B8(0, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v78 - v8;
  v10 = type metadata accessor for CuratedShortcut(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v90 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC084B0 != -1)
  {
LABEL_96:
    swift_once();
  }

  v14 = qword_27CC18300;
  sub_2189AD370(&qword_27CC0BE10, v12, type metadata accessor for CachedShortcutsManager, &unk_219C0EEB8);
  v78[0] = v14;
  v78[1] = v3;
  v78[2] = v1;
  sub_219BDC7D4();
  v1 = v94;
  v15 = v94[2];
  if (v15)
  {
    v3 = 0;
    v88 = (v11 + 48);
    v89 = v94 + 4;
    v80 = (v4 + 32);
    v16 = a1 + 56;
    v79 = (v4 + 8);
    v83 = MEMORY[0x277D84F90];
    v84 = v15;
    v85 = v94;
    v86 = v10;
    while (1)
    {
      while (1)
      {
        if (v3 >= v1[2])
        {
          __break(1u);
          goto LABEL_96;
        }

        v17 = &v89[2 * v3];
        v18 = *v17;
        v11 = v17[1];
        ++v3;
        swift_bridgeObjectRetain_n();
        sub_21993538C(v9);
        if ((*v88)(v9, 1, v10) != 1)
        {
          break;
        }

        sub_218864AB4(v9, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
LABEL_5:

        if (v3 == v15)
        {
          goto LABEL_94;
        }
      }

      sub_2189AD42C(v9, v90, type metadata accessor for CuratedShortcut);
      sub_21993568C(v91);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v27 = v91[1];
            if (*(a1 + 16))
            {
              v4 = *v91;
              sub_219BF7AA4();
              sub_219BF5524();
              v28 = sub_219BF7AE4();
              v29 = -1 << *(a1 + 32);
              v30 = v28 & ~v29;
              if ((*(v16 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
              {
                v31 = ~v29;
                while (1)
                {
                  v32 = (*(a1 + 48) + 16 * v30);
                  v33 = *v32 == v4 && v32[1] == v27;
                  if (v33 || (sub_219BF78F4() & 1) != 0)
                  {
                    goto LABEL_75;
                  }

                  v30 = (v30 + 1) & v31;
                  if (((*(v16 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
                  {
                    goto LABEL_73;
                  }
                }
              }
            }
          }

          else
          {
            v48 = v91[1];
            if (*(a1 + 16))
            {
              v4 = *v91;
              sub_219BF7AA4();
              sub_219BF5524();
              v49 = sub_219BF7AE4();
              v50 = -1 << *(a1 + 32);
              v51 = v49 & ~v50;
              if ((*(v16 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
              {
                v52 = ~v50;
                while (1)
                {
                  v53 = (*(a1 + 48) + 16 * v51);
                  v54 = *v53 == v4 && v53[1] == v48;
                  if (v54 || (sub_219BF78F4() & 1) != 0)
                  {
                    goto LABEL_75;
                  }

                  v51 = (v51 + 1) & v52;
                  if (((*(v16 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
                  {
                    goto LABEL_73;
                  }
                }
              }
            }
          }
        }

        else
        {
          v41 = v91[1];
          if (*(a1 + 16))
          {
            v4 = *v91;
            sub_219BF7AA4();
            sub_219BF5524();
            v42 = sub_219BF7AE4();
            v43 = -1 << *(a1 + 32);
            v44 = v42 & ~v43;
            if ((*(v16 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
            {
              v45 = ~v43;
              while (1)
              {
                v46 = (*(a1 + 48) + 16 * v44);
                v47 = *v46 == v4 && v46[1] == v41;
                if (v47 || (sub_219BF78F4() & 1) != 0)
                {
                  goto LABEL_75;
                }

                v44 = (v44 + 1) & v45;
                if (((*(v16 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
                {
                  goto LABEL_73;
                }
              }
            }
          }
        }

        goto LABEL_73;
      }

      if (EnumCaseMultiPayload > 4)
      {
        break;
      }

      if (EnumCaseMultiPayload != 3)
      {
        v55 = v91[1];
        if (*(a1 + 16))
        {
          v4 = *v91;
          sub_219BF7AA4();
          sub_219BF5524();
          v56 = sub_219BF7AE4();
          v57 = -1 << *(a1 + 32);
          v58 = v56 & ~v57;
          if ((*(v16 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
          {
            v59 = ~v57;
            do
            {
              v60 = (*(a1 + 48) + 16 * v58);
              v61 = *v60 == v4 && v60[1] == v55;
              if (v61 || (sub_219BF78F4() & 1) != 0)
              {
                goto LABEL_75;
              }

              v58 = (v58 + 1) & v59;
            }

            while (((*(v16 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) != 0);
          }
        }

LABEL_73:

        goto LABEL_74;
      }

      v20 = v91[1];
      if (!*(a1 + 16))
      {
        goto LABEL_73;
      }

      v4 = *v91;
      sub_219BF7AA4();
      sub_219BF5524();
      v21 = sub_219BF7AE4();
      v22 = -1 << *(a1 + 32);
      v23 = v21 & ~v22;
      if (((*(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_73;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = (*(a1 + 48) + 16 * v23);
        v26 = *v25 == v4 && v25[1] == v20;
        if (v26 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_73;
        }
      }

LABEL_75:

LABEL_76:
      sub_2189AD2A8(v90, type metadata accessor for CuratedShortcut);
      v62 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v62;
      v10 = v86;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21870B65C(0, *(v62 + 16) + 1, 1);
        v62 = v93;
      }

      v65 = *(v62 + 16);
      v64 = *(v62 + 24);
      v4 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        sub_21870B65C((v64 > 1), v65 + 1, 1);
        v62 = v93;
      }

      *(v62 + 16) = v4;
      v83 = v62;
      v66 = v62 + 16 * v65;
      *(v66 + 32) = v18;
      *(v66 + 40) = v11;
      v15 = v84;
      v1 = v85;
      if (v3 == v84)
      {
        goto LABEL_94;
      }
    }

    if (EnumCaseMultiPayload == 5)
    {
      v34 = v91[1];
      if (*(a1 + 16))
      {
        v4 = *v91;
        sub_219BF7AA4();
        sub_219BF5524();
        v35 = sub_219BF7AE4();
        v36 = -1 << *(a1 + 32);
        v37 = v35 & ~v36;
        if ((*(v16 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
        {
          v38 = ~v36;
          while (1)
          {
            v39 = (*(a1 + 48) + 16 * v37);
            v40 = *v39 == v4 && v39[1] == v34;
            if (v40 || (sub_219BF78F4() & 1) != 0)
            {
              goto LABEL_75;
            }

            v37 = (v37 + 1) & v38;
            if (((*(v16 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
            {
              goto LABEL_73;
            }
          }
        }
      }

      goto LABEL_73;
    }

    (*v80)(v81, v91, v82);
    v67 = sub_219BDB804();
    v69 = v68;
    if (*(a1 + 16))
    {
      v4 = v67;
      sub_219BF7AA4();
      sub_219BF5524();
      v70 = sub_219BF7AE4();
      v71 = -1 << *(a1 + 32);
      v72 = v70 & ~v71;
      if ((*(v16 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72))
      {
        v73 = ~v71;
        while (1)
        {
          v74 = (*(a1 + 48) + 16 * v72);
          v75 = *v74 == v4 && v74[1] == v69;
          if (v75 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v72 = (v72 + 1) & v73;
          if (((*(v16 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        (*v79)(v81, v82);
        goto LABEL_76;
      }
    }

LABEL_91:

    (*v79)(v81, v82);
LABEL_74:
    sub_2189AD2A8(v90, type metadata accessor for CuratedShortcut);
    v1 = v85;
    v10 = v86;
    v15 = v84;
    goto LABEL_5;
  }

  v83 = MEMORY[0x277D84F90];
LABEL_94:

  v92 = v83;
  sub_2189AD370(&qword_27CC0BE18, v76, type metadata accessor for CachedShortcutsManager, &unk_219C0EEF8);
  sub_219BDCA54();

  return result;
}

double sub_2189AC4A8(uint64_t a1, uint64_t a2)
{
  if (qword_27CC084C0 != -1)
  {
LABEL_24:
    swift_once();
  }

  sub_2189AD370(&qword_27CC0BE10, a2, type metadata accessor for CachedShortcutsManager, &unk_219C0EEB8);
  sub_219BDC7D4();
  v3 = *(v22 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a1 + 56;
    v6 = MEMORY[0x277D84F90];
    v21 = *(v22 + 16);
    while (1)
    {
      if (v4 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v7 = (v22 + 32 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      ++v4;
      if (!*(a1 + 16))
      {
        break;
      }

      sub_219BF7AA4();

      sub_219BF5524();
      v10 = sub_219BF7AE4();
      v11 = -1 << *(a1 + 32);
      v12 = v10 & ~v11;
      if ((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
      {
        v13 = ~v11;
        while (1)
        {
          v14 = (*(a1 + 48) + 16 * v12);
          v15 = *v14 == v9 && v14[1] == v8;
          if (v15 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        if (v4 == v3)
        {
          goto LABEL_22;
        }
      }

      else
      {
LABEL_15:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v6 + 16) + 1, 1);
        }

        v17 = *(v6 + 16);
        v16 = *(v6 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_21870B65C((v16 > 1), v17 + 1, 1);
        }

        *(v6 + 16) = v17 + 1;
        v18 = v6 + 16 * v17;
        *(v18 + 32) = v9;
        *(v18 + 40) = v8;
        v3 = v21;
        if (v4 == v21)
        {
          goto LABEL_22;
        }
      }
    }

    goto LABEL_15;
  }

LABEL_22:

  sub_2189AD370(&qword_27CC0BE18, v19, type metadata accessor for CachedShortcutsManager, &unk_219C0EEF8);
  sub_219BDCA54();

  return result;
}

double sub_2189AC788(uint64_t a1)
{
  v22[2] = *v1;
  v23 = v1;
  v3 = sub_219BF5474();
  MEMORY[0x28223BE20](v3 - 8);
  v26 = type metadata accessor for CuratedShortcut(0);
  v4 = *(v26 - 8);
  v6 = MEMORY[0x28223BE20](v26);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC084B0 != -1)
  {
    swift_once();
  }

  v22[1] = qword_27CC18300;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v25 = *(v4 + 72);
    v11 = MEMORY[0x277D84F90];
    v6.n128_u64[0] = 138412290;
    v24 = v6;
    do
    {
      sub_2189AD308(v10, v8, type metadata accessor for CuratedShortcut);
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      sub_2189AD370(&qword_27CC0BE28, 255, type metadata accessor for CuratedShortcut, &unk_219CB67AC);
      v13 = sub_219BDB064();
      v15 = v14;

      sub_219BF5464();
      v16 = sub_219BF5434();
      v18 = v17;
      sub_2186C6190(v13, v15);
      sub_2189AD2A8(v8, type metadata accessor for CuratedShortcut);
      if (v18)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_218840D24(0, *(v11 + 2) + 1, 1, v11);
        }

        v20 = *(v11 + 2);
        v19 = *(v11 + 3);
        if (v20 >= v19 >> 1)
        {
          v11 = sub_218840D24((v19 > 1), v20 + 1, 1, v11);
        }

        *(v11 + 2) = v20 + 1;
        v12 = &v11[16 * v20];
        *(v12 + 4) = v16;
        *(v12 + 5) = v18;
      }

      v10 += v25;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v27 = v11;
  sub_2189AD370(&qword_27CC0BE18, v5, type metadata accessor for CachedShortcutsManager, &unk_219C0EEF8);
  sub_219BDCA54();

  return result;
}

double sub_2189ACC3C(uint64_t a1)
{
  v26[2] = *v1;
  v28 = _s8ResolvedVMa(0);
  MEMORY[0x28223BE20](v28);
  v27 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Shortcut(0);
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = v26 - v9;
  if (qword_27CC084C0 != -1)
  {
    swift_once();
  }

  v26[1] = qword_27CC18310;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v31 = MEMORY[0x277D84F90];
    v26[0] = v1;
    sub_21870B65C(0, v11, 0);
    v12 = v31;
    v13 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v29 = *(v4 + 72);
    do
    {
      sub_2189AD308(v13, v10, type metadata accessor for Shortcut);
      sub_2189AD308(v10, v6, type metadata accessor for Shortcut);
      if (swift_getEnumCaseMultiPayload())
      {
        v16 = [*v6 identifier];
        v17 = sub_219BF5414();
        v19 = v18;
        swift_unknownObjectRelease();

        v20 = type metadata accessor for Shortcut;
        v21 = v10;
      }

      else
      {
        sub_2189AD2A8(v10, type metadata accessor for Shortcut);
        v14 = v27;
        sub_2189AD42C(v6, v27, _s8ResolvedVMa);
        v15 = (v14 + *(v28 + 24));
        v17 = *v15;
        v19 = v15[1];

        v20 = _s8ResolvedVMa;
        v21 = v14;
      }

      sub_2189AD2A8(v21, v20);
      v31 = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_21870B65C((v22 > 1), v23 + 1, 1);
        v12 = v31;
      }

      *(v12 + 16) = v23 + 1;
      v24 = v12 + 16 * v23;
      *(v24 + 32) = v17;
      *(v24 + 40) = v19;
      v13 += v29;
      --v11;
    }

    while (v11);
  }

  v31 = v12;
  sub_2189AD370(&qword_27CC0BE18, v8, type metadata accessor for CachedShortcutsManager, &unk_219C0EEF8);
  sub_219BDCA54();

  return result;
}

uint64_t sub_2189ACFF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_2189AD044(uint64_t a1, uint64_t a2)
{
  if (qword_27CC084B0 != -1)
  {
    swift_once();
  }

  sub_2189AD370(&qword_27CC0BE10, a2, type metadata accessor for CachedShortcutsManager, &unk_219C0EEB8);
  v3 = sub_219BDC7D4();
  MEMORY[0x28223BE20](v3);
  v8[2] = a1;
  sub_2195E6068(sub_2189AD3B8, v8, v4);
  v8[5] = v5;
  sub_2189AD370(&qword_27CC0BE18, v6, type metadata accessor for CachedShortcutsManager, &unk_219C0EEF8);
  sub_219BDCA54();

  return result;
}

uint64_t sub_2189AD19C(__int128 *a1, uint64_t a2)
{
  if (qword_27CC084B8 != -1)
  {
    swift_once();
  }

  sub_2189AD370(&qword_27CC0BE18, a2, type metadata accessor for CachedShortcutsManager, &unk_219C0EEF8);
  return sub_219BDCA54();
}

uint64_t sub_2189AD2A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2189AD308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2189AD370(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2189AD42C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2189AD5C8(uint64_t a1)
{
  if (!qword_280E91A80)
  {
    type metadata accessor for TagFeedServiceConfig(255);
    sub_21877C5E8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v1 = sub_219BEEA14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91A80);
    }
  }
}

uint64_t type metadata accessor for IssueListTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EBB650;
  if (!qword_280EBB650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2189AD6BC(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2189AD728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v6);
  v12 = *(v9 + 48);
  if (v12(v6, 1, v8) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877C5E8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    sub_219BEE974();
    sub_2189ADEC8(a1);
    if (v12(v6, 1, v8) != 1)
    {
      sub_2189ADEC8(v6);
    }
  }

  else
  {
    sub_2189ADEC8(a1);
    (*(v9 + 32))(v11, v6, v8);
  }

  return (*(v9 + 32))(a2, v11, v8);
}

uint64_t sub_2189AD96C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADF78(0, &qword_27CC0BEB0, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189ADF24();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8(0);
    sub_21877C5E8(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
    sub_219BF7674();
    sub_2189AD728(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2189ADB70(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_2189ADBF4(uint64_t a1)
{
  v2 = sub_2189ADF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189ADC30(uint64_t a1)
{
  v2 = sub_2189ADF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189ADC84(void *a1)
{
  sub_2189ADF78(0, &qword_27CC0BEC0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189ADF24();
  sub_219BF7B44();
  sub_2189AD5C8(0);
  sub_21877C5E8(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

void sub_2189ADE0C(uint64_t a1)
{
  if (!qword_280E91A70)
  {
    sub_2189AD5C8(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91A70);
    }
  }
}

uint64_t sub_2189ADE64(uint64_t a1, uint64_t a2)
{
  sub_2189ADE0C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189ADEC8(uint64_t a1)
{
  sub_2189ADE0C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2189ADF24()
{
  result = qword_27CC0BEB8;
  if (!qword_27CC0BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BEB8);
  }

  return result;
}

void sub_2189ADF78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189ADF24();
    v7 = a3(a1, &type metadata for IssueListTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2189ADFF0()
{
  result = qword_27CC0BED0;
  if (!qword_27CC0BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BED0);
  }

  return result;
}

unint64_t sub_2189AE048()
{
  result = qword_27CC0BED8;
  if (!qword_27CC0BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BED8);
  }

  return result;
}

unint64_t sub_2189AE0A0()
{
  result = qword_27CC0BEE0;
  if (!qword_27CC0BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BEE0);
  }

  return result;
}

double sub_2189AE1E4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;

  return result;
}

uint64_t sub_2189AE258(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

double sub_2189AE2B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  return result;
}

uint64_t sub_2189AE374()
{
  v1 = v0 + OBJC_IVAR____TtC7NewsUI29AdContext_maximumAdRequestsForCurrentAdPreviewID;
  swift_beginAccess();
  return *v1;
}

void sub_2189AE3C0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC7NewsUI29AdContext_maximumAdRequestsForCurrentAdPreviewID;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

id AdContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AdContext.init()()
{
  v1 = &v0[OBJC_IVAR____TtC7NewsUI29AdContext_qToken];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC7NewsUI29AdContext_previewID];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC7NewsUI29AdContext_previewSessionID];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC7NewsUI29AdContext_maximumAdRequestsForCurrentAdPreviewID];
  *v4 = 0;
  v4[8] = 1;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AdContext();
  return objc_msgSendSuper2(&v6, sel_init);
}

id AdContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double keypath_getTm_0@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

void sub_2189AE9D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig(255);
    v7 = sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for SpotlightTodayFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EB2390;
  if (!qword_280EB2390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2189AEAD0(uint64_t a1)
{
  sub_2189AE994(319);
  if (v1 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2189AEB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE9B4(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v29 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_2189AF794(a1, v14, sub_2189AF720);
  v20 = *(v17 + 48);
  if (v20(v14, 1, v16) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    v26 = v10;
    sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v10 = v26;
    sub_219BEE974();
    if (v20(v14, 1, v16) != 1)
    {
      sub_2189AF7FC(v14, sub_2189AF720);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v14, v16);
  }

  (*(v17 + 32))(a3, v19, v16);
  v21 = v27;
  sub_2189AF794(v27, v7, sub_2189AF700);
  v22 = *(v10 + 48);
  if (v22(v7, 1, v9) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v23 = v29;
    sub_219BEEC74();
    sub_2189AF7FC(v21, sub_2189AF700);
    sub_2189AF7FC(v28, sub_2189AF720);
    if (v22(v7, 1, v9) != 1)
    {
      sub_2189AF7FC(v7, sub_2189AF700);
    }
  }

  else
  {
    sub_2189AF7FC(v21, sub_2189AF700);
    sub_2189AF7FC(v28, sub_2189AF720);
    v23 = v29;
    (*(v10 + 32))(v29, v7, v9);
  }

  v24 = type metadata accessor for SpotlightTodayFeedGroupKnobs(0);
  return (*(v10 + 32))(a3 + *(v24 + 20), v23, v9);
}

uint64_t sub_2189AF03C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF85C(0, &qword_280E8CBE8, MEMORY[0x277D844C8]);
  v11 = v10;
  v15 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189AF6AC();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AE994(0);
    v18 = 0;
    sub_2186DF908(&qword_280E91A28, sub_2189AE994, MEMORY[0x277D321B0]);
    sub_219BF7674();
    sub_2189AE9B4(0);
    v17 = 1;
    sub_2186DF908(&qword_280E91868, sub_2189AE9B4, MEMORY[0x277D32328]);
    sub_219BF7674();
    sub_2189AEB54(v9, v6, v16);
    (*(v15 + 8))(v13, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2189AF2EC(void *a1)
{
  sub_2189AF85C(0, &qword_280E8C420, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189AF6AC();
  sub_219BF7B44();
  v9[15] = 0;
  sub_2189AE994(0);
  sub_2186DF908(&qword_280E91A30, sub_2189AE994, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for SpotlightTodayFeedGroupKnobs(0);
    v9[14] = 1;
    sub_2189AE9B4(0);
    sub_2186DF908(&unk_280E91870, sub_2189AE9B4, MEMORY[0x277D32320]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2189AF4FC()
{
  if (*v0)
  {
    return 0x6C6F6F706572;
  }

  else
  {
    return 0x73656C7572;
  }
}

void sub_2189AF530(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

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

uint64_t sub_2189AF604(uint64_t a1)
{
  v2 = sub_2189AF6AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189AF640(uint64_t a1)
{
  v2 = sub_2189AF6AC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2189AF6AC()
{
  result = qword_280EB23C0;
  if (!qword_280EB23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB23C0);
  }

  return result;
}

void sub_2189AF740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2189AF794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2189AF7FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2189AF85C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189AF6AC();
    v7 = a3(a1, &type metadata for SpotlightTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2189AF8D4()
{
  result = qword_27CC0BF08;
  if (!qword_27CC0BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BF08);
  }

  return result;
}

unint64_t sub_2189AF92C()
{
  result = qword_280EB23B0;
  if (!qword_280EB23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB23B0);
  }

  return result;
}

unint64_t sub_2189AF984()
{
  result = qword_280EB23B8;
  if (!qword_280EB23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB23B8);
  }

  return result;
}

void sub_2189AF9D8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + 16);

    swift_unknownObjectRetain();
    v14 = sub_219BF53D4();
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = sub_2187A913C;
    v15[5] = v11;
    aBlock[4] = sub_2189AFD08;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2189AFB90;
    aBlock[3] = &block_descriptor_2;
    v16 = _Block_copy(aBlock);

    [v13 prefetchArticleID:v14 headline:0 completion:v16];
    _Block_release(v16);

    swift_unknownObjectRelease();
  }

  else
  {

    a1(v17);
  }
}

void sub_2189AFB90(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_2189AFC1C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2189AFC54(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  swift_weakInit();
  sub_21879D924();
  swift_allocObject();
  v2 = sub_219BE30B4();

  return v2;
}

void sub_2189AFD08(uint64_t a1, id a2)
{
  if (a2)
  {
    v4 = *(v2 + 16);
    v5 = a2;
    v4(a2);
  }

  else
  {
    (*(v2 + 32))(a1);
  }
}

uint64_t sub_2189AFDA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v10 = v6;
    (*(v8 + 8))(&v10, a2, a3, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2189AFE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a2, *(a3 + 8), ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2189AFEE4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  *(v1 + 16) = v3;
  v13 = v3;

  v4 = *(v1 + 24);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 24));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 40);
    while (v7 < *(v5 + 16))
    {
      ++v7;
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v14 = v13;
      v11 = *(v9 + 8);
      v12 = *(v11 + 8);
      swift_unknownObjectRetain();
      v12(&v14, v2, &off_282A2FD80, ObjectType, v11);
      swift_unknownObjectRelease();
      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_2189B0028()
{

  return swift_deallocClassInstance();
}

void sub_2189B0090()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v6 = 0;
    v7 = MEMORY[0x277D84FA0];
    if (v4)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v8 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v6;
      if (v4)
      {
        v6 = v8;
        do
        {
LABEL_10:
          v4 &= v4 - 1;

          sub_219479BA4(v9, v7);
          v7 = v10;
        }

        while (v4);
        continue;
      }
    }

    v11 = *(v7 + 16);
    if (!v11)
    {

      return;
    }

    v12 = sub_21947D25C(*(v7 + 16), 0);
    v13 = *(type metadata accessor for SearchFilterItem(0) - 8);
    sub_2194ABB00(&v16, v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v11, v7);
    v15 = v14;
    sub_21892DE98(v16);
    if (v15 == v11)
    {

      return;
    }

LABEL_18:
    __break(1u);
  }
}

uint64_t sub_2189B0248()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    LOBYTE(v1) = RecipeFilterSelection.isEmpty.getter() ^ 1;
  }

  return v1 & 1;
}

void sub_2189B0288()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 6);
  sub_2189B089C(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

void sub_2189B02F4()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 6);
  sub_2189B0840(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

double sub_2189B0360(uint64_t a1, void *a2)
{
  if (*(v2 + 16))
  {
    v8 = *(v2 + 16);

    v5._countAndFlagsBits = a1;
    v5._object = a2;
    RecipeFilterSelection.removeAllTags(matching:)(v5);
    v7 = v8;
    sub_2189AFEE4(&v7);
  }

  return result;
}

double sub_2189B03D4(__n128 a1)
{
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    if ((RecipeFilterSelection.isEmpty.getter() & 1) == 0)
    {
      v3 = sub_2194AE414(MEMORY[0x277D84F90]);
      sub_2189AFEE4(&v3);
    }
  }

  return result;
}

unint64_t sub_2189B0444(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 16);
  if (v7)
  {
    v8 = 0;
    v23 = MEMORY[0x277D84F90];
    do
    {
      v9 = v8;
      while (1)
      {
        if (v9 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_20;
        }

        v24 = *(v6 + 32 + 16 * v9);
        v8 = v9 + 1;
        v5 = *(v6 + 32 + 16 * v9);
        ObjectType = swift_getObjectType();
        v11 = *(*(&v24 + 1) + 16);
        swift_unknownObjectRetain();
        if (v11(ObjectType, *(&v24 + 1)))
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v9;
        if (v7 == v8)
        {
          goto LABEL_15;
        }
      }

      swift_unknownObjectRelease();
      v5 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_218C343E8(0, *(v23 + 16) + 1, 1);
        v5 = v23;
      }

      v12 = v24;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_218C343E8((v13 > 1), v14 + 1, 1);
        v12 = v24;
        v5 = v23;
      }

      *(v5 + 16) = v14 + 1;
      v23 = v5;
      *(v5 + 16 * v14 + 32) = v12;
    }

    while (v7 - 1 != v9);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

LABEL_15:

  (a4)(0);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakAssign();
  v9 = v23;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_20:
    result = sub_2191F6C88(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
  }

  v17 = *(v9 + 16);
  v16 = *(v9 + 24);
  if (v17 >= v16 >> 1)
  {
    result = sub_2191F6C88((v16 > 1), v17 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v17 + 1;
  v18 = v9 + 16 * v17;
  *(v18 + 32) = v5;
  *(v18 + 40) = a5;
  *a1 = v9;
  return result;
}

void sub_2189B0688(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = v6;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        v16 = *(v3 + 32 + 16 * v8);
        ObjectType = swift_getObjectType();
        v10 = *(*(&v16 + 1) + 16);
        swift_unknownObjectRetain();
        v11 = v10(ObjectType, *(&v16 + 1));
        if (v11)
        {
          v12 = v11;
          swift_unknownObjectRelease();
          if (v12 != a2)
          {
            break;
          }
        }

        ++v8;
        swift_unknownObjectRelease();
        if (v4 == v8)
        {
          v2 = a1;
          goto LABEL_16;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_218C343E8(0, *(v7 + 16) + 1, 1);
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_218C343E8((v13 > 1), v14 + 1, 1);
      }

      v6 = v8 + 1;
      *(v7 + 16) = v14 + 1;
      *(v7 + 16 * v14 + 32) = v16;
      v2 = a1;
    }

    while (v4 - 1 != v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_16:

  *v2 = v7;
}

uint64_t sub_2189B0920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_2189B099C(0);
  swift_allocObject();
  a4();

  return sub_219BE6E64();
}

void sub_2189B099C(uint64_t a1)
{
  if (!qword_27CC0BF10)
  {
    sub_2189528B0();
    sub_218952904();
    v1 = sub_219BE6E74();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0BF10);
    }
  }
}

unint64_t sub_2189B0A18()
{
  result = qword_27CC0BF18;
  if (!qword_27CC0BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BF18);
  }

  return result;
}

unint64_t sub_2189B0A6C()
{
  result = qword_27CC0BF20;
  if (!qword_27CC0BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BF20);
  }

  return result;
}

uint64_t type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs(uint64_t a1)
{
  result = qword_280E976A0;
  if (!qword_280E976A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2189B0B34(uint64_t a1)
{
  sub_2189AE994(319);
  if (v1 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v2 <= 0x3F)
    {
      sub_2186F9548();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2189B0BD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  sub_2189AE9B4(0);
  v63 = v3;
  v67 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v65 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v68 = v5;
  v62 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs(0);
  MEMORY[0x28223BE20](v61);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v52 - v13;
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v14 - 8);
  v70 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v69 = &v52 - v17;
  sub_2189B19B4(0, &qword_27CC0BF38, MEMORY[0x277D844C8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v52 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189B1960();
  v23 = v71;
  sub_219BF7B34();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v56 = v11;
  v58 = 0;
  v59 = v20;
  v71 = v8;
  v60 = a1;
  v25 = v61;
  LOBYTE(v75) = 0;
  sub_2186DF950(&qword_280E91A28, sub_2189AE994, MEMORY[0x277D321B0]);
  v26 = v68;
  v27 = v69;
  sub_219BF7674();
  LOBYTE(v75) = 1;
  sub_2186DF950(&qword_280E91868, sub_2189AE9B4, MEMORY[0x277D32328]);
  v28 = v63;
  sub_219BF7674();
  sub_2186F9548();
  v30 = v29;
  LOBYTE(v74) = 2;
  sub_2186DF950(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  sub_219BF7674();
  v53 = v75;
  LOBYTE(v73) = 3;
  v52 = v30;
  sub_219BF7674();
  v55 = v74;
  v31 = v70;
  sub_2189AF794(v27, v70, sub_2189AF720);
  v32 = v62;
  v33 = *(v62 + 48);
  v34 = v33(v31, 1, v26);
  v35 = v28;
  v54 = v19;
  v57 = v22;
  if (v34 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DF950(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v36 = v64;
    sub_219BEE974();
    v37 = v68;
    v38 = v33(v70, 1, v68);
    v39 = v67;
    if (v38 != 1)
    {
      sub_2189AF7FC(v70, sub_2189AF720);
    }
  }

  else
  {
    v36 = v64;
    v37 = v68;
    (*(v32 + 32))(v64, v70, v68);
    v39 = v67;
  }

  v40 = v71;
  (*(v32 + 32))(v71, v36, v37);
  v41 = v56;
  sub_2189AF794(v72, v56, sub_2189AF700);
  v42 = *(v39 + 48);
  if (v42(v41, 1, v35) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DF950(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v43 = v65;
    v39 = v67;
    sub_219BEEC74();
    v44 = v42(v41, 1, v35);
    v45 = v66;
    v46 = v60;
    if (v44 != 1)
    {
      sub_2189AF7FC(v41, sub_2189AF700);
    }
  }

  else
  {
    v43 = v65;
    (*(v39 + 32))(v65, v41, v35);
    v45 = v66;
    v46 = v60;
  }

  (*(v39 + 32))(v40 + v25[5], v43, v35);
  v47 = v53;
  if (!v53)
  {
    v73 = 1;
    swift_allocObject();
    v47 = sub_219BEF534();
  }

  v48 = v72;
  v49 = v69;
  v50 = v59;
  *(v40 + v25[6]) = v47;
  v51 = v55;
  if (!v55)
  {
    v73 = 6;
    swift_allocObject();
    v51 = sub_219BEF534();
  }

  sub_2189AF7FC(v48, sub_2189AF700);
  sub_2189AF7FC(v49, sub_2189AF720);
  (*(v50 + 8))(v57, v54);
  *(v40 + v25[7]) = v51;
  sub_2189B1A18(v40, v45);
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_2189B1450(void *a1)
{
  v3 = v1;
  sub_2189B19B4(0, &qword_27CC0BF28, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189B1960();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AE994(0);
  sub_2186DF950(&qword_280E91A30, sub_2189AE994, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs(0);
    LOBYTE(v14) = 1;
    sub_2189AE9B4(0);
    sub_2186DF950(&unk_280E91870, sub_2189AE9B4, MEMORY[0x277D32320]);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_2186F9548();
    sub_2186DF950(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 28));
    v13 = 3;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2189B1728()
{
  v1 = 0x73656C7572;
  if (*v0)
  {
    v1 = 0x6C6F6F706572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2189B17A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2189B1B94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2189B17CC(uint64_t a1)
{
  v2 = sub_2189B1960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189B1808(uint64_t a1)
{
  v2 = sub_2189B1960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189B1874(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2186DF950(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
  if (sub_219BEE9F4() & 1) != 0 && (sub_219BEEC64() & 1) != 0 && (sub_2186F9548(), (sub_219BEF504()))
  {
    return sub_219BEF504() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2189B1960()
{
  result = qword_27CC0BF30;
  if (!qword_27CC0BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BF30);
  }

  return result;
}

void sub_2189B19B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189B1960();
    v7 = a3(a1, &type metadata for ChannelPickerTodayFeedGroupSubtypeKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2189B1A18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2189B1A90()
{
  result = qword_27CC0BF40;
  if (!qword_27CC0BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BF40);
  }

  return result;
}

unint64_t sub_2189B1AE8()
{
  result = qword_27CC0BF48;
  if (!qword_27CC0BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BF48);
  }

  return result;
}

unint64_t sub_2189B1B40()
{
  result = qword_27CC0BF50;
  if (!qword_27CC0BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BF50);
  }

  return result;
}

uint64_t sub_2189B1B94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2189B1D3C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  if (qword_27CC08270 != -1)
  {
    swift_once();
  }

  return sub_219BDCA44();
}

uint64_t sub_2189B1E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_219BDC854();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDC874();
  swift_allocObject();
  sub_219BDC884();
  (*(v7 + 104))(v9, *MEMORY[0x277D6D068], v6);
  v10 = sub_219BDC864();

  result = (*(v7 + 8))(v9, v6);
  *a5 = v10;
  return result;
}

double sub_2189B1F80(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_219BDC604();
  sub_219BDCA44();

  return result;
}

uint64_t sub_2189B2018()
{
  sub_219BDC874();
  swift_allocObject();
  result = sub_219BDC884();
  qword_27CC0BF68 = result;
  return result;
}

void sub_2189B2088()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_219BF67B4();
  [v0 postNotificationName:v1 object:0];
}

uint64_t type metadata accessor for EngagementPresentationFailure(uint64_t a1)
{
  result = qword_280EB0E88;
  if (!qword_280EB0E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2189B21A0(uint64_t a1)
{
  sub_219BE3514();
  if (v1 <= 0x3F)
  {
    sub_2186E3374();
    if (v2 <= 0x3F)
    {
      sub_219BE3774();
      if (v3 <= 0x3F)
      {
        sub_219BE3794();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2189B225C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2189B22A4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2189B22FC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2189B2354()
{
  sub_2189B22FC();

  return swift_deallocClassInstance();
}

uint64_t sub_2189B2388(unint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 136);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_21895067C(0, v5, *(v6 + 16));
  }

  else
  {
    *(v2 + 136) = sub_21947D1C0(0, *(v6 + 24) >> 1);
  }

  result = swift_endAccess();
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    do
    {
      v9 = 0;
      v16 = v2;
      while ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CECE0F0](v9, a1);
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_18;
        }

LABEL_12:
        v13 = *(v2 + 64);
        v14 = [v11 identifier];
        if (!v14)
        {
          sub_219BF5414();
          v14 = sub_219BF53D4();
          v2 = v16;
        }

        v15 = [v13 lastSeenPuzzleIDsForPuzzleTypeID_];

        if (v15)
        {
          v10 = sub_219BF5924();
        }

        else
        {
          v10 = MEMORY[0x277D84F90];
        }

        swift_beginAccess();
        sub_2191ED3E8(v10);
        swift_endAccess();
        result = swift_unknownObjectRelease();
        ++v9;
        if (v12 == v8)
        {
          return result;
        }
      }

      if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v11 = *(a1 + 8 * v9 + 32);
      swift_unknownObjectRetain();
      v12 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      result = sub_219BF7214();
      v8 = result;
    }

    while (result);
  }

  return result;
}

double sub_2189B25A0()
{
  v1 = *(v0 + 128);
  if (v1 >> 62)
  {
LABEL_20:
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v12 = v1;
    v13 = v1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v4)
      {
        v5 = MEMORY[0x21CECE0F0](v3, v1);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_20;
        }

        v5 = *(v1 + 8 * v3 + 32);
        swift_unknownObjectRetain();
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_15;
        }
      }

      v7 = [v5 latestPuzzleIDs];
      if (v7)
      {
        v8 = v7;
        v9 = *(v0 + 64);
        v10 = [v5 identifier];
        if (!v10)
        {
          sub_219BF5414();
          v10 = sub_219BF53D4();
          v1 = v12;
        }

        [v9 setLastSeenPuzzleIDs:v8 puzzleTypeID:v10];
      }

      swift_unknownObjectRelease();
      ++v3;
    }

    while (v6 != v2);
  }

  return result;
}

uint64_t sub_2189B2738(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_2189B3410;
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = sub_2189B2860;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2189B2860()
{
  *(v0[18] + 128) = v0[29];

  v0[30] = sub_219BF5BD4();
  v0[31] = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_2189B290C, v2, v1);
}

uint64_t sub_2189B290C()
{

  sub_2189B2388(v0);

  return MEMORY[0x2822009F8](sub_2189B2990, 0, 0);
}

uint64_t sub_2189B2990()
{
  v67 = v0;
  v1 = *(*(v0 + 144) + 128);
  if (v1 >> 62)
  {
    goto LABEL_58;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CECE0F0](v3, v1);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          v2 = sub_219BF7214();
          goto LABEL_3;
        }

        v5 = *(v1 + 8 * v3 + 32);
        swift_unknownObjectRetain();
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_25;
        }
      }

      v65 = v5;
      sub_2189B3584(&v65, v66);
      swift_unknownObjectRelease();
      v7 = v66[0];
      v8 = *(v66[0] + 16);
      v9 = *(v4 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v4 + 3) >> 1)
      {
        if (!*(v7 + 16))
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_218840D24(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (!*(v7 + 16))
        {
LABEL_5:

          if (v8)
          {
            goto LABEL_55;
          }

          goto LABEL_6;
        }
      }

      if ((*(v4 + 3) >> 1) - *(v4 + 2) < v8)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      if (v8)
      {
        v13 = *(v4 + 2);
        v14 = __OFADD__(v13, v8);
        v15 = v13 + v8;
        if (v14)
        {
          goto LABEL_57;
        }

        *(v4 + 2) = v15;
      }

LABEL_6:
      ++v3;
      if (v6 == v2)
      {
        goto LABEL_27;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_27:
  v16 = v64;
  v17 = v64[25];
  v18 = v64[23];
  v19 = v64[20];
  v20 = v64[18];

  v21 = sub_218845F78(v4);

  __swift_project_boxed_opaque_existential_1((v20 + 72), *(v20 + 96));
  sub_219BDBBB4();
  v22 = sub_219BF3774();
  v17(v18, v19);
  v23 = sub_218845F78(v22);

  swift_beginAccess();

  v25 = sub_218845F78(v24);

  if (NFInternalBuild())
  {

    v26 = sub_219BE5414();
    v27 = sub_219BF6214();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v66[0] = v29;
      *v28 = 134218242;
      *(v28 + 4) = *(v21 + 16);

      *(v28 + 12) = 2080;
      v30 = sub_219BF5D54();
      v32 = sub_2186D1058(v30, v31, v66);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_2186C1000, v26, v27, "PuzzleBadgingCoordinator: %ld Combined Fetched Latest Puzzle IDs: %s", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x21CECF960](v29, -1, -1);
      v16 = v64;
      MEMORY[0x21CECF960](v28, -1, -1);
    }

    else
    {
    }

    v33 = sub_219BE5414();
    v34 = sub_219BF6214();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v66[0] = v36;
      *v35 = 134218242;
      *(v35 + 4) = *(v23 + 16);

      *(v35 + 12) = 2080;
      v37 = sub_219BF5D54();
      v39 = sub_2186D1058(v37, v38, v66);

      *(v35 + 14) = v39;
      _os_log_impl(&dword_2186C1000, v33, v34, "PuzzleBadgingCoordinator: %ld History Puzzle IDs: %s", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x21CECF960](v36, -1, -1);
      v16 = v64;
      MEMORY[0x21CECF960](v35, -1, -1);
    }

    else
    {
    }

    v40 = sub_219BE5414();
    v41 = sub_219BF6214();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v66[0] = v43;
      *v42 = 134218242;
      *(v42 + 4) = *(v25 + 16);

      *(v42 + 12) = 2080;
      v44 = sub_219BF5D54();
      v46 = sub_2186D1058(v44, v45, v66);

      *(v42 + 14) = v46;
      _os_log_impl(&dword_2186C1000, v40, v41, "PuzzleBadgingCoordinator: %ld Previously Seen Puzzle IDs: %s", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x21CECF960](v43, -1, -1);
      v16 = v64;
      MEMORY[0x21CECF960](v42, -1, -1);
    }

    else
    {
    }
  }

  if (*(v23 + 16) <= *(v21 + 16) >> 3)
  {
    v66[0] = v21;
    sub_218EB3B08(v23);

    v47 = v66[0];
  }

  else
  {
    v47 = sub_218EB4048(v23, v21);
  }

  if (*(v25 + 16) <= *(v47 + 16) >> 3)
  {
    v66[0] = v47;
    sub_218EB3B08(v25);

    v48 = v66[0];
  }

  else
  {
    v48 = sub_218EB4048(v25, v47);
  }

  v49 = sub_219BE5414();
  v50 = sub_219BF6214();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v66[0] = v52;
    *v51 = 134218242;
    *(v51 + 4) = *(v48 + 16);

    *(v51 + 12) = 2080;
    v53 = sub_219BF5D54();
    v55 = sub_2186D1058(v53, v54, v66);

    *(v51 + 14) = v55;
    _os_log_impl(&dword_2186C1000, v49, v50, "PuzzleBadgingCoordinator: %ld New Puzzle IDs: %s", v51, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v52);
    v16 = v64;
    MEMORY[0x21CECF960](v52, -1, -1);
    MEMORY[0x21CECF960](v51, -1, -1);
  }

  else
  {
  }

  v56 = *(v48 + 16);
  v16[32] = v56;

  v57 = sub_219BF5BC4();
  if (v56)
  {
    v16[33] = v57;
    v58 = sub_219BF5B44();
    v60 = v59;
    v61 = sub_2189B318C;
  }

  else
  {
    v16[34] = v57;
    v58 = sub_219BF5B44();
    v60 = v62;
    v61 = sub_2189B3320;
  }

  return MEMORY[0x2822009F8](v61, v58, v60);
}

uint64_t sub_2189B318C()
{
  v1 = v0[32];

  v2 = sub_219BE20E4();
  v5 = v0[13];
  v6 = v5 + v1;
  if (__OFADD__(v5, v1))
  {
    __break(1u);
  }

  else
  {
    v0[14] = v6;
    sub_219BE2114();
    sub_219BDC6E4();
    v0[15] = v6;
    sub_2189B3EFC(&qword_280EC0BE0, &unk_219C0F948);
    sub_219BDCA54();

    sub_2189B25A0();
    v2 = sub_2189B3294;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2189B3294(__n128 a1)
{
  *(v1 + 272) = sub_219BF5BC4();
  v3 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_2189B3320, v3, v2);
}

uint64_t sub_2189B3320()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[20];

  sub_219BDC754();
  sub_219BDBD24();
  sub_2189B3EFC(&qword_280EC0BE0, &unk_219C0F948);
  sub_219BDCA54();

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2189B3410()
{
  v1 = *(v0 + 224);
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 224);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2186C1000, v3, v4, "PuzzleBadgingCoordinator: Failed to update puzzle badge count:  %@", v7, 0xCu);
    sub_218744870(v8, sub_2189B3F3C);
    MEMORY[0x21CECF960](v8, -1, -1);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

void sub_2189B3584(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 latestPuzzleIDs];
  if (v4)
  {
    v5 = v4;
    v6 = sub_219BF5924();

    if (!NFInternalBuild())
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    if (!NFInternalBuild())
    {
      goto LABEL_10;
    }
  }

  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v7 = sub_219BE5434();
  __swift_project_value_buffer(v7, qword_280F625E0);

  swift_unknownObjectRetain();
  v8 = sub_219BE5414();
  v9 = sub_219BF6214();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 134218498;
    *(v10 + 4) = *(v6 + 16);

    *(v10 + 12) = 2080;
    v12 = [v3 name];
    v13 = sub_219BF5414();
    v15 = v14;

    v16 = sub_2186D1058(v13, v15, &v20);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2080;
    v17 = MEMORY[0x21CECC6D0](v6, MEMORY[0x277D837D0]);
    v19 = sub_2186D1058(v17, v18, &v20);

    *(v10 + 24) = v19;
    _os_log_impl(&dword_2186C1000, v8, v9, "PuzzleBadgingCoordinator: %ld Latest Puzzle IDs (%s): %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v11, -1, -1);
    MEMORY[0x21CECF960](v10, -1, -1);
  }

  else
  {
  }

LABEL_10:
  *a2 = v6;
}

uint64_t sub_2189B3814()
{
  v1 = *(v0[2] + 128);
  if (v1 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_219BF5BD4();
    v0[6] = sub_219BF5BC4();
    v3 = sub_219BF5B44();

    return MEMORY[0x2822009F8](sub_2189B3B3C, v3, v2);
  }

  v4 = v0[2];
  v5 = v4[6];
  v6 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v5);
  v7 = swift_task_alloc();
  v0[3] = v7;
  *v7 = v0;
  v7[1] = sub_2189B396C;

  return MEMORY[0x28218F9F0](v5, v6);
}

uint64_t sub_2189B396C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = sub_2189B3BA4;
  }

  else
  {
    *(v4 + 40) = a1;
    v5 = sub_2189B3A94;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2189B3A94()
{
  *(v0[2] + 128) = v0[5];

  sub_219BF5BD4();
  v0[6] = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_2189B3B3C, v2, v1);
}

uint64_t sub_2189B3B3C()
{

  v1.n128_f64[0] = sub_2189B25A0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2189B3BA4()
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625E0);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v4, v5, "PuzzleBadgingCoordinator: Failed update puzzle badging coordinator for initial puzzle play:  %@", v8, 0xCu);
    sub_218744870(v9, sub_2189B3F3C);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  else
  {
  }

  sub_219BF5BD4();
  *(v0 + 48) = sub_219BF5BC4();
  v13 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_2189B3B3C, v13, v12);
}

double sub_2189B3D88(uint64_t a1)
{
  sub_219BE2114();
  sub_219BDC6E4();
  sub_219BE20E4();
  sub_2189B3EFC(&qword_280EC0BE0, &unk_219C0F948);
  sub_219BDCA54();

  return result;
}

uint64_t sub_2189B3E34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2187608D4;

  return sub_2189B37F4();
}

uint64_t sub_2189B3EFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PuzzleBadgingCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2189B3F3C(uint64_t a1)
{
  if (!qword_280E8D9F0)
  {
    sub_2186C6148(255, &qword_280E8DA00, 0x277D82BB8);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D9F0);
    }
  }
}

double sub_2189B3FA4()
{
  v1 = v0;
  sub_218760638(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(v0[17] + 16))
  {
    __swift_project_boxed_opaque_existential_1(v0 + 9, v0[12]);
    if ((sub_219BF3734() & 1) == 0)
    {
      v6 = sub_219BF5BF4();
      (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = v1;

      sub_218AB3D80(0, 0, v4, &unk_219C0F9A8, v7);
    }
  }

  return result;
}

uint64_t sub_2189B40F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2187608D4;

  return sub_2189B3E34();
}

uint64_t sub_2189B41BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x53737265746C6966;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = 0x8000000219CD6770;
  }

  else
  {
    v4 = 0xEF64657463656C65;
  }

  if (*a2)
  {
    v5 = 0x53737265746C6966;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*a2)
  {
    v6 = 0xEF64657463656C65;
  }

  else
  {
    v6 = 0x8000000219CD6770;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_2189B4274()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_2189B4308(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_2189B4388(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_2189B4418(char *a2@<X8>)
{
  v3 = sub_219BF7614();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_2189B4478(unint64_t *a1@<X8>)
{
  v2 = 0x8000000219CD6770;
  v3 = 0xD000000000000011;
  if (*v1)
  {
    v3 = 0x53737265746C6966;
    v2 = 0xEF64657463656C65;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_2189B44D0()
{
  result = qword_27CC16DD0;
  if (!qword_27CC16DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16DD0);
  }

  return result;
}

uint64_t sub_2189B4524(uint64_t a1)
{
  v2 = v1;
  sub_218747C10(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = sub_218FA86C8(a1);
  v12 = sub_218DB24B0();
  v13 = *(v2 + 24);
  if (v12)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v36 = v14;
    v15 = v14 | 0x3000000000000006;
    v16 = sub_219BDFA44();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    memset(v45, 0, 40);
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    v42 = v13;
    sub_2187B14CC(v43, &v38, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v39 + 1))
    {
      sub_21875F93C(&v38, v40);
      v17 = qword_280ED32D0;
      v18 = v11;
      if (v17 != -1)
      {
        swift_once();
      }

      v20 = qword_280ED32D8;
      v19 = qword_280ED32E0;
      v21 = qword_280ED32E8;

      sub_2188202A8(v19);
      __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      v24 = v11;
      sub_2187448D0(&v38, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v20 = qword_280ED32D8;
      v19 = qword_280ED32E0;
      v21 = qword_280ED32E8;

      sub_2188202A8(v19);
    }

    v37 = v15;
    v39 = 0u;
    v38 = 0u;
    sub_2189B4E2C(v10, v7);
    sub_2187B14CC(v45, v40, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v25 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v26 = (v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 47) & 0xFFFFFFFFFFFFFFF8;
    v35 = v10;
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    sub_2189B4EAC(v7, v28 + v25);
    v29 = v28 + v26;
    v30 = v40[1];
    *v29 = v40[0];
    *(v29 + 16) = v30;
    *(v29 + 32) = v41;
    v31 = (v28 + v27);
    v32 = (v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v31 = 0;
    v31[1] = 0;
    *v32 = v20;
    v32[1] = v19;
    v32[2] = v21;

    sub_2188202A8(v19);
    sub_2186CF94C(0);
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v19, v21);

    sub_2187448D0(v43, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(v45, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_2189B500C(v35, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2187448D0(&v38, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  else
  {
    v45[0] = *(v2 + 24);
    v22 = swift_allocObject();
    *(v22 + 16) = v11;
    *&v43[0] = v22 | 0x3000000000000006;
    sub_2186CF94C(0);
    sub_2189B4DD4();
    v23 = v11;

    sub_219BEB484();

    sub_218932F9C(*&v43[0]);
  }

  return 1;
}

uint64_t sub_2189B4D34()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2189B4DD4()
{
  result = qword_280EE5A90;
  if (!qword_280EE5A90)
  {
    sub_2186CF94C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE5A90);
  }

  return result;
}

uint64_t sub_2189B4E2C(uint64_t a1, uint64_t a2)
{
  sub_218747C10(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189B4EAC(uint64_t a1, uint64_t a2)
{
  sub_218747C10(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189B4F2C(void *a1)
{
  sub_218747C10(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2189B500C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218747C10(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2189B5068(uint64_t *a1)
{
  v2 = v1;
  v39 = *v2;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  MEMORY[0x28223BE20](v10);
  v40 = &v37 - v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_2186C709C(0, qword_280E94970, &protocol descriptor for UserNotificationsSettingsChangeHandlerType, 0);
  sub_219BE1E34();
  v15 = v43[0];
  if (v43[0])
  {
    v16 = v40;
    if (v14)
    {
      if (v14 == 1)
      {
        *(v43[0] + 152) = v12 & 1;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      *(v43[0] + 136) = v12;
      *(v15 + 144) = v13;

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v16 = v40;
  }

  v17 = v9;
  if (qword_280EE9AA0 != -1)
  {
    swift_once();
  }

  sub_2189B5BD4(&qword_27CC0C030, type metadata accessor for Router, &unk_219C9A7B0);
  sub_219BDC7D4();
  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v18 = sub_219BE5434();
  __swift_project_value_buffer(v18, qword_280F62670);
  (*(v5 + 16))(v9, v16, v4);
  v19 = sub_219BE5414();
  v20 = v4;
  v21 = sub_219BF6214();
  if (os_log_type_enabled(v19, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43[0] = v23;
    *v22 = 136315138;
    sub_2189B5BD4(&qword_280EE9C60, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v24 = sub_219BF7894();
    v25 = v17;
    v27 = v26;
    v37 = v2;
    v28 = *(v5 + 8);
    v28(v25, v20);
    v29 = sub_2186D1058(v24, v27, v43);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_2186C1000, v19, v21, "handleSystemNotifications: lastTCCPresentedDate = %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x21CECF960](v23, -1, -1);
    v30 = v22;
    v16 = v40;
    MEMORY[0x21CECF960](v30, -1, -1);

    v31 = v28;
    v2 = v37;
  }

  else
  {

    v31 = *(v5 + 8);
    v31(v17, v20);
  }

  v32 = v38;
  sub_219BDBBB4();
  v33 = sub_219BDBC14();
  v31(v32, v20);
  if ((v33 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    sub_2186C709C(0, &unk_280EC4290, &protocol descriptor for NotificationServiceType, 1);
    sub_219BE1E34();
    if (v42)
    {
      v34 = sub_2186CB1F0(&v41, v43);
      MEMORY[0x28223BE20](v34);
      *(&v37 - 2) = v43;
      type metadata accessor for NotificationSettings();
      sub_219BE3204();
      sub_2187D9028();
      v35 = sub_219BF66A4();
      sub_219BE2F94();

      v31(v16, v20);
      return __swift_destroy_boxed_opaque_existential_1(v43);
    }

    sub_2189B5AB0(&v41);
  }

  [objc_opt_self() openNewsSystemNotificationSettings];
  return (v31)(v16, v20);
}

id sub_2189B5618(void **a1)
{
  v1 = *a1;
  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62670);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = *&v3[OBJC_IVAR___TSNotificationSettings_authorizationStatus];

    if (v8)
    {
      if (v8 == 2)
      {
        v9 = 0xEA00000000006465;
        v10 = 0x7A69726F68747561;
      }

      else
      {
        if (v8 != 1)
        {
          goto LABEL_17;
        }

        v9 = 0xE600000000000000;
        v10 = 0x6465696E6564;
      }
    }

    else
    {
      v9 = 0xED000064656E696DLL;
      v10 = 0x7265746544746F6ELL;
    }

    v11 = sub_2186D1058(v10, v9, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2186C1000, v4, v5, "handleSystemNotifications: authorizationStatus = %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  else
  {
  }

  v12 = *&v3[OBJC_IVAR___TSNotificationSettings_authorizationStatus];
  if ((v12 - 1) < 2)
  {
    return [objc_opt_self() openNewsSystemNotificationSettings];
  }

  if (!v12)
  {
    return sub_2189B5890();
  }

  v14 = *&v3[OBJC_IVAR___TSNotificationSettings_authorizationStatus];
LABEL_17:
  result = sub_219BF7974();
  __break(1u);
  return result;
}