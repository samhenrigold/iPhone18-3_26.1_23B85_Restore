void sub_2197D74BC(uint64_t a1, uint64_t a2)
{
  sub_21873652C(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for AudioFeedTrack(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21872D560(a1, v6, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_218745D0C(v6, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_21873652C);
  }

  else
  {
    sub_21872D17C(v6, v10, type metadata accessor for AudioFeedTrack);
    v11 = [*(a2 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_audioPlaylist) articleIDs];
    v12 = sub_219BF5924();

    v13 = [*v10 articleID];
    v14 = sub_219BF5414();
    v16 = v15;

    v17 = *(v12 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = (v12 + 40);
      while (1)
      {
        v20 = *(v19 - 1) == v14 && *v19 == v16;
        if (v20 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        ++v18;
        v19 += 2;
        if (v17 == v18)
        {
          goto LABEL_11;
        }
      }

      if (__OFADD__(v18, 1))
      {
        __break(1u);
      }

      else
      {
        sub_2197D95DC(v10, type metadata accessor for AudioFeedTrack);
      }
    }

    else
    {
LABEL_11:

      sub_2197D95DC(v10, type metadata accessor for AudioFeedTrack);
    }
  }
}

void sub_2197D77B0(uint64_t a1, unsigned __int8 a2, double a3)
{
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_completedListeningProcessor), *(v3 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_completedListeningProcessor + 24));
  if ((*(a1 + 24) & 0x40) == 0)
  {
    return;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
LABEL_10:
      v7 = __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore), *(v3 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore + 24));
      v8 = *a1;
      v9 = *(*v7 + 24);
      v10 = [v8 articleID];
      if (!v10)
      {
        sub_219BF5414();
        v10 = sub_219BF53D4();
      }

      [v9 removeArticleID_];

      v11 = *(v3 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_readingHistory);
      v12 = [v8 articleID];
      if (!v12)
      {
        sub_219BF5414();
        v12 = sub_219BF53D4();
      }

      [v11 markArticle:v12 withCompletedListening:1];

      v13 = [v8 articleID];
      if (!v13)
      {
        sub_219BF5414();
        v13 = sub_219BF53D4();
      }

      [v11 markArticle:v13 withListeningProgress:0.0];

      v14 = [v8 articleID];
      if (!v14)
      {
        sub_219BF5414();
        v15 = sub_219BF53D4();

        v14 = v15;
      }

      v16 = v14;
      [v11 markArticle_withReadingPositionJSON_];

      return;
    }
  }

  else if (!a2)
  {
    goto LABEL_10;
  }

  type metadata accessor for AudioFeedTrack(0);
  sub_219BDD6D4();
  if (v6)
  {
    [*(a1 + 8) duration];
  }

  if (sub_219BDEAA4())
  {
    goto LABEL_10;
  }
}

uint64_t sub_2197D7A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_heroStore), *(a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_heroStore + 24));
  sub_21926CDEC(a2, *v4);
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore), *(a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore + 24));
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v6 = sub_219BF6F74();
  v7 = sub_219BF6214();
  sub_219BE5314("AudioPlaylistStore: Loading", 27, 2, &dword_2186C1000, v6, v7, MEMORY[0x277D84F90]);

  sub_219BE3204();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2195C53F0;
  *(v8 + 24) = v5;

  v9 = sub_219BE2E54();
  sub_21873652C(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_219BE2F64();

  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_recentlyPlayedStore), *(a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_recentlyPlayedStore + 24));
  sub_219958D14();
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_suggestionsStore), *(a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_suggestionsStore + 24));
  v10 = off_282A86158;
  type metadata accessor for AudioSuggestionsStore();
  v10();
  v11 = sub_219BE31A4();

  return v11;
}

uint64_t sub_2197D7C70(unint64_t *a1, char *a2, uint64_t a3)
{
  v5 = v3;
  v143 = a3;
  v8 = type metadata accessor for AudioFeedTrack(0);
  v147 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v144 = (&v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_219BDBD34();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrackData = type metadata accessor for AudioState.UpNextTrackData(0);
  MEMORY[0x28223BE20](TrackData);
  v135 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v133 = (&v128 - v16);
  sub_21873652C(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v146 = &v128 - v18;
  v19 = type metadata accessor for AudioState(0);
  MEMORY[0x28223BE20](v19);
  v136 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v148 = &v128 - v22;
  v142 = sub_219BF0BD4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for ForYouAudioFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v139);
  v138 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AudioFeedKnobsConfig(0);
  MEMORY[0x28223BE20](v25 - 8);
  v137 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = a1[1];
  v29 = a1[3];
  v149 = a1[2];
  v152 = v29;
  if (v27 >> 62)
  {
LABEL_51:
    v54 = v27;
    v30 = sub_219BF7214();
    v27 = v54;
  }

  else
  {
    v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v28;
  v134 = TrackData;
  v132 = v27;
  if (!v30)
  {

    v151 = 0;
    goto LABEL_9;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    goto LABEL_120;
  }

  v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_122;
  }

  v33 = *(v27 + 32);

  swift_unknownObjectRetain();
  while (1)
  {
    v151 = v33;
LABEL_9:
    if (!sub_2197D4968())
    {

      v31 = MEMORY[0x277D84F90];
    }

    v153 = v31;
    if (v31 >> 62)
    {
      v31 = sub_219BF7214();
    }

    else
    {
      v31 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = MEMORY[0x277D84F90];
    v150 = a2;
    v131 = v12;
    v130 = v19;
    v129 = v8;
    if (!v31)
    {
      TrackData = MEMORY[0x277D84F90];
      goto LABEL_27;
    }

    v157 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v31 & ~(v31 >> 63), 0);
    if (v31 < 0)
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      sub_21870B65C((v32 > 1), v4, 1);
      v101 = v157;
      goto LABEL_99;
    }

    TrackData = v157;
    if ((v153 & 0xC000000000000001) != 0)
    {
      v34 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v34, v153);
        v4 = [swift_unknownObjectRetain() articleID];
        a2 = sub_219BF5414();
        v36 = v35;
        swift_unknownObjectRelease_n();

        v157 = TrackData;
        v19 = *(TrackData + 16);
        v37 = *(TrackData + 24);
        if (v19 >= v37 >> 1)
        {
          sub_21870B65C((v37 > 1), v19 + 1, 1);
          TrackData = v157;
        }

        ++v34;
        *(TrackData + 16) = v19 + 1;
        v38 = TrackData + 16 * v19;
        *(v38 + 32) = a2;
        *(v38 + 40) = v36;
      }

      while (v31 != v34);
    }

    else
    {
      v19 = v153 + 32;
      do
      {
        v39 = [swift_unknownObjectRetain_n() articleID];
        v40 = sub_219BF5414();
        a2 = v41;
        swift_unknownObjectRelease_n();

        v157 = TrackData;
        v43 = *(TrackData + 16);
        v42 = *(TrackData + 24);
        if (v43 >= v42 >> 1)
        {
          sub_21870B65C((v42 > 1), v43 + 1, 1);
          TrackData = v157;
        }

        *(TrackData + 16) = v43 + 1;
        v44 = TrackData + 16 * v43;
        *(v44 + 32) = v40;
        *(v44 + 40) = a2;
        v19 += 8;
        --v31;
      }

      while (v31);
    }

    v28 = MEMORY[0x277D84F90];
LABEL_27:
    v8 = sub_218845F78(TrackData);

    v158 = v28;
    v45 = v152;
    if (v152 >> 62)
    {
      TrackData = v152;
      v46 = sub_219BF7214();
      v45 = TrackData;
      if (v46)
      {
LABEL_29:
        v145 = v5;
        v12 = 0;
        v27 = v45 & 0xFFFFFFFFFFFFFF8;
        v155 = v45 & 0xFFFFFFFFFFFFFF8;
        *&v156 = v45 & 0xC000000000000001;
        v154 = v45 + 32;
        v5 = (v8 + 56);
        while (1)
        {
          if (v156)
          {
            v28 = MEMORY[0x21CECE0F0](v12, v152);
            v47 = __OFADD__(v12++, 1);
            if (v47)
            {
LABEL_48:
              __break(1u);
LABEL_49:
              v31 = v158;
              v5 = v145;
              goto LABEL_55;
            }
          }

          else
          {
            if (v12 >= *(v155 + 16))
            {
              __break(1u);
              goto LABEL_51;
            }

            v28 = *(v154 + 8 * v12);
            swift_unknownObjectRetain();
            v47 = __OFADD__(v12++, 1);
            if (v47)
            {
              goto LABEL_48;
            }
          }

          v48 = [v28 articleID];
          a2 = sub_219BF5414();
          v4 = v49;

          if (*(v8 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v50 = sub_219BF7AE4(), v51 = -1 << *(v8 + 32), TrackData = v50 & ~v51, ((*&v5[(TrackData >> 3) & 0xFFFFFFFFFFFFFF8] >> TrackData) & 1) != 0))
          {
            v19 = ~v51;
            while (1)
            {
              v52 = (*(v8 + 48) + 16 * TrackData);
              v53 = *v52 == a2 && v52[1] == v4;
              if (v53 || (sub_219BF78F4() & 1) != 0)
              {
                break;
              }

              TrackData = (TrackData + 1) & v19;
              if (((*&v5[(TrackData >> 3) & 0xFFFFFFFFFFFFFF8] >> TrackData) & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            swift_unknownObjectRelease();

            if (v12 == v46)
            {
              goto LABEL_49;
            }
          }

          else
          {
LABEL_30:

            TrackData = &v158;
            sub_219BF73D4();
            a2 = v158[2];
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            if (v12 == v46)
            {
              goto LABEL_49;
            }
          }
        }
      }
    }

    else
    {
      v46 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
        goto LABEL_29;
      }
    }

    v31 = MEMORY[0x277D84F90];
LABEL_55:

    v55 = type metadata accessor for AudioFeedContentConfig(0);
    v56 = v137;
    sub_2187365F8(v143 + *(v55 + 20), v137, type metadata accessor for AudioFeedKnobsConfig);
    v57 = type metadata accessor for AudioFeedGroupKnobs(0);
    v58 = v138;
    sub_2187365F8(v56 + *(v57 + 20), v138, type metadata accessor for ForYouAudioFeedGroupKnobs);
    sub_2197D95DC(v56, type metadata accessor for AudioFeedGroupKnobs);
    v12 = *(v58 + *(v139 + 24));

    sub_2197D95DC(v58, type metadata accessor for ForYouAudioFeedGroupKnobs);
    v8 = v150;
    swift_getObjectType();
    a2 = v140;
    sub_219BEEFB4();
    sub_219BEF524();

    (*(v141 + 8))(a2, v142);
    v59 = v157;
    if ((v157 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (v31 < 0)
      {
        v12 = 1;
      }

      else
      {
        v12 = (v31 >> 62) & 1;
      }

      if ((v12 & 1) == 0)
      {
        v60 = *(v31 + 16);
        if (v60 >= v157)
        {
          v61 = v157;
        }

        else
        {
          v61 = *(v31 + 16);
        }

        if (v157)
        {
          v19 = v61;
        }

        else
        {
          v19 = 0;
        }

        if (v60 >= v19)
        {
          break;
        }

        goto LABEL_119;
      }
    }

    v125 = sub_219BF7214();
    result = sub_219BF7214();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (v125 >= v59)
    {
      v126 = v59;
    }

    else
    {
      v126 = v125;
    }

    if (v125 < 0)
    {
      v126 = v59;
    }

    v19 = v59 ? v126 : 0;
    if (sub_219BF7214() >= v19)
    {
      break;
    }

LABEL_119:
    __break(1u);
LABEL_120:
    v127 = v27;

    v33 = MEMORY[0x21CECE0F0](0, v127);
  }

  if ((v31 & 0xC000000000000001) != 0 && v19)
  {
    sub_218731D50();

    v62 = 0;
    do
    {
      v63 = v62 + 1;
      sub_219BF7334();
      v62 = v63;
    }

    while (v19 != v63);
  }

  else
  {
  }

  if (!v12)
  {
    v68 = 0;
    v66 = v31 + 32;
    v70 = (2 * v19) | 1;
    if (v70)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  v64 = sub_219BF7564();
  v66 = v65;
  v68 = v67;
  v70 = v69;

  v31 = v64;
  if ((v70 & 1) == 0)
  {
LABEL_77:
    sub_218B667DC(v31, v66, v68, v70);
    v72 = v71;
    goto LABEL_84;
  }

LABEL_78:
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v73 = swift_dynamicCastClass();
  if (!v73)
  {
    swift_unknownObjectRelease();
    v73 = MEMORY[0x277D84F90];
  }

  v74 = *(v73 + 16);

  if (__OFSUB__(v70 >> 1, v68))
  {
    __break(1u);
    goto LABEL_125;
  }

  if (v74 != (v70 >> 1) - v68)
  {
LABEL_125:
    swift_unknownObjectRelease_n();
    v8 = v150;
    goto LABEL_77;
  }

  v72 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v8 = v150;
  if (!v72)
  {
    v72 = MEMORY[0x277D84F90];
LABEL_84:
    swift_unknownObjectRelease();
  }

  if (v151)
  {
    v75 = *(v8 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter + 24);
    v76 = *(v8 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter + 32);
    __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter), v75);
    v77 = *(v76 + 8);
    v78 = swift_unknownObjectRetain();
    v77(v78, v75, v76);
    if (v5)
    {

      v5 = 0;
      v79 = 1;
    }

    else
    {
      v79 = 0;
    }

    swift_unknownObjectRelease();
    v8 = v150;
  }

  else
  {
    v79 = 1;
  }

  v80 = v146;
  (*(v147 + 56))(v146, v79, 1, v129);
  v81 = (v8 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter);
  v82 = *(v8 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter + 24);
  v83 = *(v8 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter + 32);
  __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter), v82);
  v84 = sub_2193342C8(v132, v82, v83);

  v85 = v81[3];
  v86 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v85);
  v87 = sub_2193342C8(v153, v85, v86);

  v88 = v133;
  *v133 = v87;
  swift_storeEnumTagMultiPayload();
  v89 = v81[3];
  v90 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v89);
  v91 = sub_2193342C8(v72, v89, v90);

  v92 = v81[3];
  v93 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v92);
  v94 = sub_2193342C8(v149, v92, v93);

  v95 = v131;
  sub_219BDBBD4();
  v96 = v148;
  sub_21873703C(v80, v84, v88, v91, v94, v95, v148);
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v97 = sub_219BF6F74();
  v98 = sub_219BF6214();
  sub_2186F20D4(0);
  v19 = swift_allocObject();
  v156 = xmmword_219C09BA0;
  *(v19 + 16) = xmmword_219C09BA0;
  v99 = v135;
  sub_2187365F8(v96 + *(v130 + 24), v135, type metadata accessor for AudioState.UpNextTrackData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v101 = MEMORY[0x277D84F90];
  if (!EnumCaseMultiPayload)
  {
    v102 = *v99;
    v31 = *(*v99 + 16);
    if (v31)
    {
      goto LABEL_95;
    }

LABEL_102:

    goto LABEL_107;
  }

  v102 = MEMORY[0x277D84F90];
  if (EnumCaseMultiPayload == 1)
  {
    v103 = v144;
    sub_21872D17C(v99, v144, type metadata accessor for AudioFeedTrack);
    sub_21873652C(0, &unk_280E8BC50, type metadata accessor for AudioFeedTrack, MEMORY[0x277D84560]);
    v104 = (*(v147 + 80) + 32) & ~*(v147 + 80);
    v102 = swift_allocObject();
    *(v102 + 16) = v156;
    sub_21872D17C(v103, v102 + v104, type metadata accessor for AudioFeedTrack);
  }

  v31 = *(v102 + 16);
  if (!v31)
  {
    goto LABEL_102;
  }

LABEL_95:
  LODWORD(v155) = v98;
  *&v156 = v97;
  v145 = v5;
  if (v31 >= 2)
  {
    v105 = 2;
  }

  else
  {
    v105 = v31;
  }

  v157 = v101;
  v106 = v147;
  v107 = v102 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
  sub_21870B65C(0, v105, 0);
  v153 = *(v106 + 72);
  v154 = v107;
  v101 = v157;
  v108 = v107;
  v109 = v144;
  sub_2187365F8(v108, v144, type metadata accessor for AudioFeedTrack);
  v110 = [*v109 articleID];
  v28 = sub_219BF5414();
  v5 = v111;

  sub_2197D95DC(v109, type metadata accessor for AudioFeedTrack);
  v157 = v101;
  v8 = *(v101 + 16);
  v32 = *(v101 + 24);
  v4 = (v8 + 1);
  if (v8 >= v32 >> 1)
  {
    goto LABEL_123;
  }

LABEL_99:
  *(v101 + 16) = v4;
  v112 = v101 + 16 * v8;
  *(v112 + 32) = v28;
  *(v112 + 40) = v5;
  if (v31 == 1)
  {
    v98 = v155;
  }

  else
  {
    v113 = v144;
    sub_2187365F8(v154 + v153, v144, type metadata accessor for AudioFeedTrack);
    v114 = [*v113 articleID];
    v115 = sub_219BF5414();
    v117 = v116;

    sub_2197D95DC(v113, type metadata accessor for AudioFeedTrack);
    v157 = v101;
    v119 = *(v101 + 16);
    v118 = *(v101 + 24);
    v98 = v155;
    if (v119 >= v118 >> 1)
    {
      sub_21870B65C((v118 > 1), v119 + 1, 1);
      v101 = v157;
    }

    *(v101 + 16) = v119 + 1;
    v120 = v101 + 16 * v119;
    *(v120 + 32) = v115;
    *(v120 + 40) = v117;
  }

  v97 = v156;
LABEL_107:
  sub_2186D0E7C(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  *(v19 + 56) = v121;
  *(v19 + 64) = sub_218D893FC();
  *(v19 + 32) = v101;
  sub_219BE5314("AudioDataManager: Did update state, upNext=%{public}@, ...", 58, 2, &dword_2186C1000, v97, v98, v19);

  v122 = v148;
  sub_2187365F8(v148, v136, type metadata accessor for AudioState);
  sub_21873652C(0, &unk_280EE6F98, type metadata accessor for AudioState, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v123 = sub_219BE3014();
  swift_unknownObjectRelease();
  sub_2197D95DC(v122, type metadata accessor for AudioState);
  return v123;
}

void sub_2197D8F38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  sub_219BE2024();
}

uint64_t sub_2197D8F94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2197D8FE4()
{
  sub_219BE2024();

  return result;
}

void sub_2197D9114(uint64_t a1)
{
  if (!qword_280E8EBB0)
  {
    sub_21873652C(255, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_280E8EBB0);
    }
  }
}

uint64_t objectdestroy_24Tm_1()
{
  v1 = type metadata accessor for AudioFeedContentConfig(0);
  v23 = *(*(v1 - 8) + 80);

  v2 = v0 + ((v23 + 24) & ~v23);
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  v21 = *(v4 + 48);
  if (!v21(v2, 1, v3))
  {
    (*(v4 + 8))(v2, v3);
  }

  v18 = v4;
  v22 = v3;
  v5 = type metadata accessor for AudioFeedConfig(0);

  v6 = *(v5 + 28);
  v7 = sub_219BEE5B4();
  v8 = *(v7 - 8);
  v19 = *(v8 + 48);
  if (!v19(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v20 = v7;
  v9 = v2 + *(v1 + 20);
  sub_2186E7180(0);
  v11 = v10;
  v12 = *(*(v10 - 8) + 8);
  v12(v9, v10);
  type metadata accessor for UpNextAudioFeedGroupKnobs(0);

  v13 = type metadata accessor for AudioFeedGroupKnobs(0);
  v12(v9 + *(v13 + 20), v11);
  type metadata accessor for ForYouAudioFeedGroupKnobs(0);

  v14 = v2 + *(v1 + 24);
  v15 = type metadata accessor for LegacyAudioFeedConfiguration(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    if (!v21(v14, 1, v22))
    {
      (*(v18 + 8))(v14, v22);
    }

    v16 = *(v15 + 28);
    if (!v19(v14 + v16, 1, v20))
    {
      (*(v8 + 8))(v14 + v16, v20);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2197D95DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2197D9660(uint64_t a1)
{
  if (!qword_280EC8E88)
  {
    type metadata accessor for AudioFeedContentConfig(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EC8E88);
    }
  }
}

uint64_t sub_2197D9710@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197DA03C(0, &qword_27CC1F620, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197D9F84();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2197DA0A0(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_2197D9FD8(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2197D99BC(uint64_t a1)
{
  v2 = sub_2197D9F84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197D99F8(uint64_t a1)
{
  v2 = sub_2197D9F84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197D9A74(void *a1)
{
  sub_2197DA03C(0, &qword_27CC1F630, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197D9F84();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_2197DA0A0(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2197D9CD4(uint64_t a1)
{
  result = sub_2197DA0A0(&qword_27CC0B9A0, type metadata accessor for SubscriptionTodayFeedGroup, &unk_219CA6B98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2197D9D2C(uint64_t a1)
{
  v2 = sub_2197DA0A0(&qword_27CC1F618, type metadata accessor for SubscriptionTodayFeedGroup, &unk_219CA6A7C);

  return MEMORY[0x282191938](a1, v2);
}

void *sub_2197D9DB8()
{
  v0 = sub_219BF1904();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED874();
  v4 = sub_219BF1844();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    v5 = [v4 name];
    swift_unknownObjectRelease();
    v4 = sub_219BF5414();
  }

  return v4;
}

uint64_t sub_2197D9ED8(void *a1)
{
  a1[1] = sub_2197DA0A0(&qword_27CC1F618, type metadata accessor for SubscriptionTodayFeedGroup, &unk_219CA6A7C);
  a1[2] = sub_2197DA0A0(&qword_27CC0B9E8, type metadata accessor for SubscriptionTodayFeedGroup, &unk_219CA6B70);
  result = sub_2197DA0A0(&qword_27CC0BA20, type metadata accessor for SubscriptionTodayFeedGroup, &unk_219CA6B48);
  a1[3] = result;
  return result;
}

unint64_t sub_2197D9F84()
{
  result = qword_27CC1F628;
  if (!qword_27CC1F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F628);
  }

  return result;
}

uint64_t sub_2197D9FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2197DA03C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197D9F84();
    v7 = a3(a1, &type metadata for SubscriptionTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2197DA0A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2197DA0FC()
{
  result = qword_27CC1F638;
  if (!qword_27CC1F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F638);
  }

  return result;
}

unint64_t sub_2197DA154()
{
  result = qword_27CC1F640;
  if (!qword_27CC1F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F640);
  }

  return result;
}

unint64_t sub_2197DA1AC()
{
  result = qword_27CC1F648;
  if (!qword_27CC1F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F648);
  }

  return result;
}

uint64_t sub_2197DA248()
{
  v0 = sub_219BEF554();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ED868(0);
  sub_219BEDCC4();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D32630])
  {
    sub_2197DCC14(0, &unk_280E8B8D0, sub_2191FD1C0, MEMORY[0x277D84560]);
    sub_2191FD1C0(0);
    v6 = v5;
    v7 = *(v5 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_219C09BA0;
    v11 = MEMORY[0x277D322E8];
LABEL_5:
    (*(v7 + 104))(v9 + v8, *v11, v6);
    return v10;
  }

  if (v4 == *MEMORY[0x277D32638])
  {
    sub_2197DCC14(0, &unk_280E8B8D0, sub_2191FD1C0, MEMORY[0x277D84560]);
    sub_2191FD1C0(0);
    v6 = v12;
    v7 = *(v12 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_219C09BA0;
    v11 = MEMORY[0x277D322F8];
    goto LABEL_5;
  }

  if (v4 != *MEMORY[0x277D32628] && v4 != *MEMORY[0x277D32640])
  {
    (*(v1 + 8))(v3, v0);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2197DA540(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  sub_219BE3204();
  v4 = sub_219BE2E54();
  sub_2197DCB10(0);
  sub_219BE2F64();

  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = a1;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2197DCBA4;
  *(v6 + 24) = v5;

  v7 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = a1;
  v8[4] = v3;

  v9 = sub_219BE2E54();
  sub_218C68E08(0);
  sub_219BE2F64();

  v10 = sub_219BE2E54();
  v11 = sub_219BE3054();

  return v11;
}

uint64_t sub_2197DA780(uint64_t *a1)
{
  v1 = sub_219BE2E54();
  v2 = sub_219BE2E34();

  return v2;
}

uint64_t sub_2197DA7D0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v10 = sub_219BF0BD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  sub_2197DAC90(a1, a2);
  v15 = v14;
  v45 = a3;
  v16 = a3 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_knobs;
  AudioFeedGroupKnobs = type metadata accessor for UpNextAudioFeedGroupKnobs(0);
  v51 = v16;
  sub_219BEF134();
  sub_219BEF524();
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v17 = v19;
  v19(v13, v10);
  v20 = v50;
  if (v50 < 0)
  {
    __break(1u);
  }

  else
  {
    v47 = v17;
    v48 = a4;
    a4 = v15 >> 62;
    if (!(v15 >> 62))
    {
      v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21 >= v50)
      {
        v22 = v50;
      }

      else
      {
        v22 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v50)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      if (v21 >= v23)
      {
        goto LABEL_10;
      }

      goto LABEL_43;
    }
  }

  v38 = sub_219BF7214();
  result = sub_219BF7214();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v38 >= v20)
    {
      v40 = v20;
    }

    else
    {
      v40 = v38;
    }

    if (v38 < 0)
    {
      v40 = v20;
    }

    if (v20)
    {
      v23 = v40;
    }

    else
    {
      v23 = 0;
    }

    if (sub_219BF7214() >= v23)
    {
LABEL_10:
      if ((v15 & 0xC000000000000001) != 0 && v23)
      {
        sub_218731D50();

        v24 = 0;
        do
        {
          v25 = v24 + 1;
          sub_219BF7334();
          v24 = v25;
        }

        while (v23 != v25);
      }

      else
      {
      }

      if (a4)
      {
        v26 = sub_219BF7564();
        v27 = v29;
        a4 = v30;
        v28 = v31;

        if ((v28 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v26 = v15 & 0xFFFFFFFFFFFFFF8;
        v27 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
        v28 = (2 * v23) | 1;
        if ((v28 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v43 = v5;
      v15 = sub_219BF7934();
      swift_unknownObjectRetain_n();
      v33 = swift_dynamicCastClass();
      if (!v33)
      {
        swift_unknownObjectRelease();
        v33 = MEMORY[0x277D84F90];
      }

      v34 = *(v33 + 16);

      if (__OFSUB__(v28 >> 1, a4))
      {
        __break(1u);
        goto LABEL_50;
      }

      if (v34 == (v28 >> 1) - a4)
      {
        v15 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        a4 = v48;
        if (v15)
        {
LABEL_28:
          sub_219BEF134();
          sub_219BEF524();
          v47(v13, v10);
          v18 = v50;
          if ((v15 & 0x8000000000000000) == 0 && (v15 & 0x4000000000000000) == 0)
          {
            v35 = *(v15 + 16);
            if (v35 < v50)
            {
LABEL_31:

              v36 = sub_219BEEDD4();
              sub_2197DC4C4(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
              swift_allocError();
              *v37 = v18;
              v37[1] = v35;
              (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D32400], v36);
              swift_willThrow();
              return v35;
            }

LABEL_45:
            if (!(v46 >> 62))
            {
              v41 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_47:
              v42 = v44;
              swift_beginAccess();
              *(v42 + 16) = v41;
              v35 = sub_2197DAEB0(a4, v15);

              return v35;
            }

LABEL_50:
            v41 = sub_219BF7214();
            goto LABEL_47;
          }

LABEL_44:
          v35 = sub_219BF7214();
          if (v35 < v18)
          {
            goto LABEL_31;
          }

          goto LABEL_45;
        }

        v15 = MEMORY[0x277D84F90];
LABEL_27:
        swift_unknownObjectRelease();
        goto LABEL_28;
      }

      swift_unknownObjectRelease_n();
LABEL_20:
      sub_218B667DC(v26, v27, a4, v28);
      v15 = v32;
      a4 = v48;
      goto LABEL_27;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  __break(1u);
  return result;
}

void sub_2197DAC90(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:

    return;
  }

  v3 = a2 >> 62;
  if (a2 >> 62)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v4 = sub_219BF7214();
    if (sub_219BF7214() < 0)
    {
      __break(1u);
      goto LABEL_31;
    }

    v5 = sub_219BF7214();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v4;
  }

  v6 = v4 != 0;
  if (v5 < v6)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((a2 & 0xC000000000000001) != 0 && v4)
  {
    sub_218731D50();

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      sub_219BF7334();
      v7 = v8;
    }

    while (v6 != v8);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (!v3)
    {
LABEL_13:
      v6 = 0;
      a2 &= 0xFFFFFFFFFFFFFF8uLL;
      v9 = a2 + 32;
      if (v4)
      {
        v4 = 3;
      }

      else
      {
        v4 = 1;
      }

      goto LABEL_19;
    }
  }

  a2 = sub_219BF7564();
  v6 = v10;
  v4 = v11;
  if ((v11 & 1) == 0)
  {
LABEL_18:
    sub_218B667DC(a2, v9, v6, v4);
    swift_unknownObjectRelease();
    return;
  }

LABEL_19:
  v3 = v9;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v4 >> 1, v6))
  {
    goto LABEL_32;
  }

  if (v13 != (v4 >> 1) - v6)
  {
LABEL_33:
    swift_unknownObjectRelease();
    v9 = v3;
    goto LABEL_18;
  }

  v14 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v14)
  {
    swift_unknownObjectRelease();
  }
}

void *sub_2197DAEB0(uint64_t a1, unint64_t a2)
{
  v79 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2197DCC14(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v70 - v5;
  sub_2197DCC14(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v70 - v8;
  sub_2197DCC14(0, &qword_280E91A50, sub_2186E7180, v3);
  MEMORY[0x28223BE20](v9 - 8);
  v77 = &v70 - v10;
  v11 = sub_219BF2AB4();
  v84 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v81 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF2034();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x28223BE20](v13);
  v80 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A89A94(0);
  MEMORY[0x28223BE20](v15 - 8);
  v76 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720(0);
  MEMORY[0x28223BE20](v17 - 8);
  v87 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroupConfigData = type metadata accessor for UpNextAudioFeedGroupConfigData(0);
  MEMORY[0x28223BE20](AudioFeedGroupConfigData - 8);
  v74 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v75 = &v70 - v22;
  v92 = sub_219BF1934();
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BF3C84();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v30 = (&v70 - v29);
  v31 = sub_219BF3E84();
  v88 = *(v31 - 8);
  v89 = v31;
  MEMORY[0x28223BE20](v31);
  v93 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    v33 = sub_219BF7214();
  }

  else
  {
    v33 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v86 = v6;
  v85 = v11;
  if (v33)
  {
    v98 = a2;
    v100 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v33 & ~(v33 >> 63), 0);
    if (v33 < 0)
    {
      __break(1u);
      return result;
    }

    v35 = v100;
    if ((v98 & 0xC000000000000001) != 0)
    {
      v36 = 0;
      LODWORD(v97) = *MEMORY[0x277D34128];
      v96 = (v25 + 32);
      do
      {
        *v30 = MEMORY[0x21CECE0F0](v36, v98);
        (*(v25 + 104))(v30, v97, v24);
        v100 = v35;
        v38 = *(v35 + 16);
        v37 = *(v35 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_218C34A88((v37 > 1), v38 + 1, 1);
          v35 = v100;
        }

        ++v36;
        *(v35 + 16) = v38 + 1;
        (*(v25 + 32))(v35 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v38, v30, v24);
      }

      while (v33 != v36);
    }

    else
    {
      v40 = (v98 + 32);
      LODWORD(v98) = *MEMORY[0x277D34128];
      v96 = *(v25 + 104);
      v97 = v25 + 104;
      v95 = (v25 + 32);
      do
      {
        *v27 = *v40;
        (v96)(v27, v98, v24);
        v100 = v35;
        v42 = *(v35 + 16);
        v41 = *(v35 + 24);
        swift_unknownObjectRetain();
        if (v42 >= v41 >> 1)
        {
          sub_218C34A88((v41 > 1), v42 + 1, 1);
          v35 = v100;
        }

        *(v35 + 16) = v42 + 1;
        (*(v25 + 32))(v35 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v42, v27, v24);
        ++v40;
        --v33;
      }

      while (v33);
    }

    v39 = MEMORY[0x277D84F90];
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  sub_218F0B984(v39);
  sub_218F0BA7C(v39);
  sub_218F0BB90(v39);
  sub_219BF3E74();
  v43 = *(v91 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_formatService + 24);
  v97 = *(v91 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_formatService + 32);
  v98 = v43;
  v96 = __swift_project_boxed_opaque_existential_1((v91 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_formatService), v43);
  sub_2186ED868(0);
  v44 = v75;
  sub_219BEDD14();
  v72 = sub_219BEC004();
  v45 = *(v72 - 8);
  v71 = *(v45 + 56);
  v73 = v45 + 56;
  v71(v87, 1, 1, v72);
  sub_218A42400(0);
  v47 = v76;
  (*(*(v46 - 8) + 56))(v76, 1, 1, v46);
  v48 = v74;
  sub_219BEDD14();
  v49 = sub_219BF1914();
  v51 = v94 + 8;
  v50 = *(v94 + 8);
  v52 = v92;
  v50(v48, v92);
  sub_2194B1FF0(&unk_282A299B8, v49);
  swift_arrayDestroy();
  v53 = v87;
  sub_219BF1764();

  sub_2197DCC78(v47, sub_218A89A94);
  v54 = v53;
  sub_2197DCC78(v53, sub_2186FE720);
  v94 = v51;
  v95 = v50;
  v50(v44, v52);
  sub_2197DCC14(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v55 = v88;
  v56 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_219C09BA0;
  (*(v55 + 16))(v57 + v56, v93, v89);
  v71(v54, 1, 1, v72);
  sub_219A95188(v39);
  sub_219A95188(v39);
  sub_219A951A0(v39);
  sub_219A951B8(v39);
  sub_219A952CC(v39);
  sub_219A952E4(v39);
  sub_219A953F8(v39);
  v58 = v80;
  sub_219BF2024();
  v59 = OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_knobs;
  sub_2186E7180(0);
  v61 = v60;
  v62 = *(v60 - 8);
  v63 = v77;
  (*(v62 + 16))(v77, v91 + v59, v60);
  (*(v62 + 56))(v63, 0, 1, v61);
  v64 = sub_219BF35D4();
  (*(*(v64 - 8) + 56))(v78, 1, 1, v64);
  v99 = 1;
  sub_2197DCCD8(0);
  swift_allocObject();

  sub_219BF38D4();
  v65 = sub_219BF2774();
  (*(*(v65 - 8) + 56))(v86, 1, 1, v65);
  v66 = qword_280E8D7D8;
  *MEMORY[0x277D30B50];
  if (v66 != -1)
  {
    swift_once();
  }

  qword_280F616F8;
  v67 = v81;
  sub_219BF2A84();
  v68 = v90;
  v69 = sub_219BF2194();
  (*(v84 + 8))(v67, v85);
  (*(v82 + 8))(v58, v83);
  v95(v68, v92);
  (*(v88 + 8))(v93, v89);
  return v69;
}

uint64_t sub_2197DBC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v36 = a1;
  sub_218C68E08(0);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v42 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197DCC14(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = v30 - v8;
  v9 = sub_219BEF554();
  MEMORY[0x28223BE20](v9 - 8);
  v33 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30[1] = v30 - v12;
  v13 = sub_219BF1904();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BED8D4();
  v38 = *(v17 - 8);
  v39 = v17;
  MEMORY[0x28223BE20](v17);
  v34 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AudioFeedGroup(0);
  MEMORY[0x28223BE20](v37);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v35 = *(a4 + 16);
  sub_2186ED868(0);
  v21 = sub_219BEDCA4();
  v31 = v22;
  v32 = v21;
  (*(v14 + 16))(v16, v36, v13);
  v36 = sub_219BEDCB4();
  v30[2] = v23;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2186E7180(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v24 = sub_219BEE5D4();
  (*(*(v24 - 8) + 56))(v40, 1, 1, v24);
  v25 = v34;
  sub_219BED854();
  v26 = v31;
  *v20 = v32;
  *(v20 + 1) = v26;
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup(0);
  (*(v38 + 32))(&v20[*(AudioFeedGroup + 20)], v25, v39);
  *&v20[*(AudioFeedGroup + 24)] = v35;
  swift_storeEnumTagMultiPayload();
  sub_2197DCD6C(v20, v42, type metadata accessor for AudioFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_2197DCC14(0, &unk_280EE6C70, sub_218C68E08, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v28 = sub_219BE3014();
  sub_2197DCC78(v20, type metadata accessor for AudioFeedGroup);
  return v28;
}

uint64_t sub_2197DC174(uint64_t a1)
{
  sub_218C68E08(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000027, 0x8000000219D36FD0);
  v9 = a1;
  sub_218A450F0();
  sub_219BF7484();
  v5 = v8;
  *v4 = v7;
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_2197DCC14(0, &unk_280EE6C70, sub_218C68E08, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2197DC2CC()
{
  v1 = OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_config;
  sub_2186ED868(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2197DCC78(v0 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_knobs, type metadata accessor for UpNextAudioFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_formatService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UpNextAudioFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EB5E30;
  if (!qword_280EB5E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2197DC3F0(uint64_t a1)
{
  sub_2186ED868(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UpNextAudioFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2197DC4C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2197DC50C()
{
  sub_2197DCC14(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2197DC5AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_config;
  sub_2186ED868(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for AudioFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2197DC640@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI227UpNextAudioFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for UpNextAudioFeedGroupKnobs(0);
  a1[4] = sub_2197DC4C4(&qword_280EBC9B0, type metadata accessor for UpNextAudioFeedGroupKnobs, &unk_219C8F9C4);
  a1[5] = sub_2197DC4C4(&qword_27CC1F668, type metadata accessor for UpNextAudioFeedGroupKnobs, &unk_219C8F99C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2197DCD6C(v3 + v4, boxed_opaque_existential_1, type metadata accessor for UpNextAudioFeedGroupKnobs);
}

uint64_t sub_2197DC70C(uint64_t a1)
{
  sub_2186E7180(0);
  v1 = sub_219BEE964();
  v2 = sub_2197DA248();
  sub_2191EE19C(v2);
  return v1;
}

uint64_t sub_2197DC7C0@<X0>(uint64_t *a2@<X8>)
{
  sub_2197DCC14(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186ED868(0);
  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2197DCC78(inited + 32, sub_2188317B0);
  sub_2197DCDD4(0);
  a2[3] = v6;
  a2[4] = sub_2197DC4C4(&qword_280EE7978, sub_2197DCDD4, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2197DC93C(uint64_t a1)
{
  sub_2197DC4C4(&qword_280EB5E50, type metadata accessor for UpNextAudioFeedGroupEmitter, &unk_219CA6E00);

  return sub_219BE2324();
}

void sub_2197DCB10(uint64_t a1)
{
  if (!qword_27CC1F658)
  {
    sub_2197DCC14(255, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1F658);
    }
  }
}

void sub_2197DCC14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2197DCC78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2197DCCD8(uint64_t a1)
{
  if (!qword_280E90080)
  {
    type metadata accessor for AudioFeedServiceConfig(255);
    sub_2197DC4C4(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig, &unk_219C207D8);
    v1 = sub_219BF38F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90080);
    }
  }
}

uint64_t sub_2197DCD6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2197DCE08(uint64_t a1, uint64_t a2)
{
  sub_2186E5C1C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(v2 + 32) appConfiguration];
  if (qword_27CC080E0 != -1)
  {
    swift_once();
  }

  if ((sub_219BDC834() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    sub_21983DA08();
LABEL_10:
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = v13;

    swift_unknownObjectRetain();
    v20 = sub_219BE2E54();
    type metadata accessor for SharedWithYouFeedServiceConfig(0);
    v16 = sub_219BE2F74();

    swift_unknownObjectRelease();

    return v16;
  }

  if (qword_27CC080D8 != -1)
  {
    swift_once();
  }

  sub_2186EA57C(&qword_27CC1F670, v14, type metadata accessor for SharedWithYouFeedServiceConfigFetcher, &unk_219CA6F58);
  sub_219BDC7D4();
  sub_219BDB914();

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v12, v7, v8);
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    v17 = off_282A8B688;
    v18 = type metadata accessor for SharedWithYouFeedConfigManager();
    v17(v12, v18);
    (*(v9 + 8))(v12, v8);
    goto LABEL_10;
  }

  sub_218838478(v7);
  sub_2197DD538();
  swift_allocError();
  *v15 = 0;
  sub_2186E5C1C(0, &qword_27CC1F680, type metadata accessor for SharedWithYouFeedServiceConfig, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v16 = sub_219BE2FF4();
  swift_unknownObjectRelease();
  return v16;
}

double sub_2197DD244@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v10 = sub_219BEEA84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SharedWithYouFeedContentConfig(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197DD58C(a1, v16);
  v17 = *(a1 + *(type metadata accessor for SharedWithYouFeedConfigFetchResult(0) + 20));
  (*(v11 + 104))(v13, *MEMORY[0x277D32220], v10);
  *a5 = a2;
  *(a5 + 1) = a3;
  v18 = type metadata accessor for SharedWithYouFeedServiceConfig(0);
  sub_2197DD58C(v16, &a5[v18[5]]);
  *&a5[v18[6]] = v17;
  *&a5[v18[7]] = a4;
  (*(v11 + 16))(&a5[v18[8]], v13, v10);
  v19 = v17;
  swift_unknownObjectRetain();

  v20 = [a4 autoRefreshMinimumInterval];
  (*(v11 + 8))(v13, v10);
  sub_218ED1FDC(v16);
  result = v20;
  *&a5[v18[9]] = v20;
  return result;
}

uint64_t sub_2197DD44C()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_2197DD538()
{
  result = qword_27CC1F678;
  if (!qword_27CC1F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F678);
  }

  return result;
}

uint64_t sub_2197DD58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedContentConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2197DD604()
{
  result = qword_27CC1F688;
  if (!qword_27CC1F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F688);
  }

  return result;
}

uint64_t sub_2197DD680()
{
  v7 = type metadata accessor for TopResultSearchFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v7);
  v2 = sub_219BEF874();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2187089D4(0);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = sub_219BEF554();
  MEMORY[0x28223BE20](v5 - 8);
  sub_218736B5C(0);
  sub_219BEDD44();
  sub_219BEDCA4();

  sub_219BEDCC4();
  sub_219BEDC94();
  sub_219BEDC84();
  sub_219BEDCF4();
  sub_219BEDD04();
  sub_219BEDCD4();
  sub_219BEDCE4();
  sub_219BEDD74();
  sub_219BEDD14();
  sub_2197DDEFC(&qword_280E9E3D0, type metadata accessor for TopResultSearchFeedGroupConfigData, &unk_219CA70EC);
  sub_2197DDEFC(&qword_280E9E3D8, type metadata accessor for TopResultSearchFeedGroupConfigData, &unk_219CA70C4);
  return sub_219BEDD34();
}

uint64_t sub_2197DD944@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197DDE98(0, &qword_280E8C8F0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197DDE44();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_2197DDEFC(&qword_280E90808, MEMORY[0x277D33478], MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for TopResultSearchFeedGroupConfigData(0) + 20)) = 6;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2197DDBBC(void *a1)
{
  v3 = v1;
  sub_2197DDE98(0, &qword_27CC1F690, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197DDE44();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_2197DDEFC(&qword_280E90810, MEMORY[0x277D33478], MEMORY[0x277D33480]);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for TopResultSearchFeedGroupConfigData(0) + 20));
    v11[13] = 1;
    sub_218C94574();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2197DDD9C(uint64_t a1)
{
  v2 = sub_2197DDE44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197DDDD8(uint64_t a1)
{
  v2 = sub_2197DDE44();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2197DDE44()
{
  result = qword_280E9E3F0;
  if (!qword_280E9E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E3F0);
  }

  return result;
}

void sub_2197DDE98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197DDE44();
    v7 = a3(a1, &type metadata for TopResultSearchFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2197DDEFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2197DDF58()
{
  result = qword_27CC1F698;
  if (!qword_27CC1F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F698);
  }

  return result;
}

unint64_t sub_2197DDFB0()
{
  result = qword_280E9E3E0;
  if (!qword_280E9E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E3E0);
  }

  return result;
}

unint64_t sub_2197DE008()
{
  result = qword_280E9E3E8;
  if (!qword_280E9E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E3E8);
  }

  return result;
}

uint64_t sub_2197DE05C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_2197DEC14(0, qword_280E9C1B8, type metadata accessor for TagFeedGroupClusteringKnobOverrides);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  sub_219BEF0B4();
  v10 = *(v16[1] + 64);
  swift_unknownObjectRetain();

  if ([v10 respondsToSelector_])
  {
    v11 = [v10 tagFeedGroupClusteringKnobOverrides];
    swift_unknownObjectRelease();
    if (v11)
    {
      sub_219BF5214();

      if (((1 << a1) & 0x3FFFDBFFFFFFLL) != 0)
      {
      }

      else if (a1 == 26)
      {
        sub_2197DEC68(v9);

        v14 = type metadata accessor for TagFeedGroupClusteringKnobOverrides(0);
        if ((*(*(v14 - 8) + 48))(v9, 1, v14) != 1)
        {
          sub_218AE6D9C(v9, a2);
          return sub_2197DF04C(v9);
        }

        sub_2197DEFD4(v9);
      }

      else
      {
        sub_2197DEC68(v6);

        v15 = type metadata accessor for TagFeedGroupClusteringKnobOverrides(0);
        if ((*(*(v15 - 8) + 48))(v6, 1, v15) != 1)
        {
          sub_218AE6D9C(&v6[*(v15 + 20)], a2);
          return sub_2197DF04C(v6);
        }

        sub_2197DEFD4(v6);
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v12 = sub_219BF0204();
  return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
}

uint64_t sub_2197DE320(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7453746E65636572;
  }

  else
  {
    v3 = 0x756F59726F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xED0000736569726FLL;
  }

  if (*a2)
  {
    v5 = 0x7453746E65636572;
  }

  else
  {
    v5 = 0x756F59726F66;
  }

  if (*a2)
  {
    v6 = 0xED0000736569726FLL;
  }

  else
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_2197DE3D0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_2197DE45C(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_2197DE4D4(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_2197DE55C(char *a2@<X8>)
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

void sub_2197DE5BC(uint64_t *a1@<X8>)
{
  v2 = 0x756F59726F66;
  if (*v1)
  {
    v2 = 0x7453746E65636572;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED0000736569726FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2197DE604()
{
  if (*v0)
  {
    return 0x7453746E65636572;
  }

  else
  {
    return 0x756F59726F66;
  }
}

void sub_2197DE648(char *a3@<X8>)
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

uint64_t sub_2197DE6AC(uint64_t a1)
{
  v2 = sub_2197DE9E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197DE6E8(uint64_t a1)
{
  v2 = sub_2197DE9E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TagFeedGroupClusteringKnobOverrides.init(forYou:recentStories:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_219000CD0(a1, a3);
  v5 = a3 + *(type metadata accessor for TagFeedGroupClusteringKnobOverrides(0) + 20);

  return sub_219000CD0(a2, v5);
}

uint64_t type metadata accessor for TagFeedGroupClusteringKnobOverrides(uint64_t a1)
{
  result = qword_280E9C1E8;
  if (!qword_280E9C1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TagFeedGroupClusteringKnobOverrides.init(from:)(void *a1)
{
  sub_2197DE984(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197DE9E0();
  sub_219BF7B34();
  if (!v2)
  {
    sub_219BF0204();
    v12 = 0;
    sub_2197DF0A8(&qword_280E90FF8, MEMORY[0x277D32BE0], MEMORY[0x277D32BF0]);
    sub_219BF7674();
    v11 = 1;
    type metadata accessor for TagFeedGroupClusteringKnobOverrides(0);
    sub_219BF7674();
    (*(v6 + 8))(v8, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2197DE984(uint64_t a1)
{
  if (!qword_27CC1F6A0)
  {
    sub_2197DE9E0();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F6A0);
    }
  }
}

unint64_t sub_2197DE9E0()
{
  result = qword_27CC1F6A8;
  if (!qword_27CC1F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F6A8);
  }

  return result;
}

void sub_2197DEA74(uint64_t a1)
{
  sub_2197DEC14(319, &qword_280E90FF0, MEMORY[0x277D32BE0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2197DEB10()
{
  result = qword_27CC1F6B0;
  if (!qword_27CC1F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F6B0);
  }

  return result;
}

unint64_t sub_2197DEB68()
{
  result = qword_27CC1F6B8;
  if (!qword_27CC1F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F6B8);
  }

  return result;
}

unint64_t sub_2197DEBC0()
{
  result = qword_27CC1F6C0;
  if (!qword_27CC1F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F6C0);
  }

  return result;
}

void sub_2197DEC14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2197DEC68@<X0>(uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for TagFeedGroupClusteringKnobOverrides(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = sub_219BF5204();
  v24 = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:&v24];

  v10 = v24;
  if (v9)
  {
    v11 = sub_219BDBA04();
    v13 = v12;

    sub_219BDAFF4();
    swift_allocObject();
    sub_219BDAFE4();
    sub_2197DF0A8(&qword_27CC1F6C8, type metadata accessor for TagFeedGroupClusteringKnobOverrides, &protocol conformance descriptor for TagFeedGroupClusteringKnobOverrides);
    sub_219BDAFC4();
    sub_2186C6190(v11, v13);

    sub_2197DF0F0(v6, a2);
    v21 = 0;
  }

  else
  {
    v14 = v10;
    v15 = sub_219BDB724();

    swift_willThrow();
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v16 = qword_280F61708;
    v17 = sub_219BF61F4();
    sub_2186F20D4(0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_219C09BA0;
    v24 = 0;
    v25 = 0xE000000000000000;
    v23[1] = v15;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    v19 = v24;
    v20 = v25;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_2186FC3BC();
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    sub_219BE5314("Failed to decode feed group clustering overrides, error=%{public}@", 66, 2, &dword_2186C1000, v16, v17, v18);

    v21 = 1;
  }

  return (*(v4 + 56))(a2, v21, 1, v3);
}

uint64_t sub_2197DEFD4(uint64_t a1)
{
  sub_2197DEC14(0, qword_280E9C1B8, type metadata accessor for TagFeedGroupClusteringKnobOverrides);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2197DF04C(uint64_t a1)
{
  v2 = type metadata accessor for TagFeedGroupClusteringKnobOverrides(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2197DF0A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2197DF0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedGroupClusteringKnobOverrides(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197DF17C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197DF61C(0, &qword_280E8C988, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197DF5C8();
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

uint64_t sub_2197DF3C4(uint64_t a1)
{
  v2 = sub_2197DF5C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197DF400(uint64_t a1)
{
  v2 = sub_2197DF5C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197DF454(void *a1)
{
  sub_2197DF61C(0, &qword_280E8C2E8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197DF5C8();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2197DF5C8()
{
  result = qword_280EA1EF0;
  if (!qword_280EA1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1EF0);
  }

  return result;
}

void sub_2197DF61C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197DF5C8();
    v7 = a3(a1, &type metadata for ShortcutsTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2197DF694()
{
  result = qword_27CC1F6D0;
  if (!qword_27CC1F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F6D0);
  }

  return result;
}

unint64_t sub_2197DF6EC()
{
  result = qword_280EA1EE0;
  if (!qword_280EA1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1EE0);
  }

  return result;
}

unint64_t sub_2197DF744()
{
  result = qword_280EA1EE8;
  if (!qword_280EA1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1EE8);
  }

  return result;
}

uint64_t sub_2197DF798(uint64_t a1)
{
  v20 = a1;
  v2 = sub_219BDE294();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197DFD70(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharedWithYouFeedRouteModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v18 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  v12 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  (*(v3 + 104))(v5, *MEMORY[0x277D2FF08], v2);
  (*(v12 + 64))(v20, v5, ObjectType, v12);
  (*(v3 + 8))(v5, v2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2197DFE2C(v8, sub_2197DFD70);
    return 0;
  }

  else
  {
    v15 = v18;
    sub_2197DFDC8(v8, v18);
    __swift_project_boxed_opaque_existential_1((v19 + 48), *(v19 + 72));
    v16 = sub_21900E0A4(v15);
    sub_2197DFE2C(v15, type metadata accessor for SharedWithYouFeedRouteModel);
    return v16;
  }
}

uint64_t sub_2197DFA2C()
{
  v1 = sub_219BDF074();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE1544();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE1524();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
  v12 = *v11;
  v14 = *(*v11 + 16);
  sub_219BE9924();
  (*(v4 + 104))(v6, *MEMORY[0x277D2F3B8], v15);
  sub_2191FDA70(v12, v3);
  sub_219BE1514();
  sub_218EC0E6C();
  sub_219BDD1F4();
  (*(v8 + 8))(v10, v7);
  return sub_219BDD134();
}

double sub_2197DFC9C(char a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(swift_allocObject() + 16) = Strong;
    swift_unknownObjectRetain();
    sub_219BE3494();
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_2197DFD70(uint64_t a1)
{
  if (!qword_27CC12F58)
  {
    type metadata accessor for SharedWithYouFeedRouteModel(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC12F58);
    }
  }
}

uint64_t sub_2197DFDC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedRouteModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197DFE2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2197DFE8C()
{
  v1 = type metadata accessor for TodayLocalNewsArticle(0) - 8;
  MEMORY[0x28223BE20](v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_localNewsArticles);
  v6 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);
    v9 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_218B7B6F8(v9, v4);
      if (*(v8 + 16) && (sub_21870F700(*v4, v4[1]), (v11 & 1) != 0))
      {
        swift_unknownObjectRetain();
        v12 = sub_218B7B75C(v4);
        MEMORY[0x21CECC690](v12);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v6 = v15;
      }

      else
      {
        sub_218B7B75C(v4);
      }

      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v6;
}

void *sub_2197E0020()
{
  v1 = type metadata accessor for TodayLocalNewsArticle.Resolved(0);
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x28223BE20](v1);
  v35 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v34 = type metadata accessor for TodayLocalNewsArticle(0);
  MEMORY[0x28223BE20](v34);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_localNewsArticles);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v0 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);
    v12 = *(v0 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_tags);
    v13 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v15 = MEMORY[0x277D84F90];
    v33 = v12;
    while (1)
    {
      sub_218B7B6F8(v13, v8);
      if (*(v11 + 16))
      {
        v16 = sub_21870F700(*v8, v8[1]);
        if (v17)
        {
          if (*(v12 + 16))
          {
            v39 = v15;
            v18 = *(*(v11 + 56) + 8 * v16);
            v20 = v8[2];
            v19 = v8[3];
            swift_unknownObjectRetain();
            v21 = sub_21870F700(v20, v19);
            if (v22)
            {
              v23 = *(*(v12 + 56) + 8 * v21);
              v38 = *(v34 + 24);
              v24 = v5;
              v25 = *(v37 + 24);
              v26 = sub_219BF3034();
              v27 = v35;
              v28 = &v35[v25];
              v5 = v24;
              (*(*(v26 - 8) + 16))(v28, v8 + v38, v26);
              *v27 = v18;
              v27[1] = v23;
              swift_unknownObjectRetain();
              sub_218B7B75C(v8);
              sub_2197E21F8(v27, v24);
              v15 = v39;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_2191FAAC0(0, v15[2] + 1, 1, v15);
              }

              v30 = v15[2];
              v29 = v15[3];
              v12 = v33;
              if (v30 >= v29 >> 1)
              {
                v15 = sub_2191FAAC0((v29 > 1), v30 + 1, 1, v15);
              }

              v15[2] = v30 + 1;
              sub_2197E21F8(v5, v15 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30);
              goto LABEL_5;
            }

            swift_unknownObjectRelease();
            v15 = v39;
          }
        }
      }

      sub_218B7B75C(v8);
LABEL_5:
      v13 += v14;
      if (!--v10)
      {
        return v15;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2197E0360(_BYTE *a1, _BYTE *a2, __n128 a3)
{
  if (*a1)
  {
    v3 = 0x656764457377656ELL;
  }

  else
  {
    v3 = 0x74694B64756F6C63;
  }

  if (*a2)
  {
    v4 = 0x656764457377656ELL;
  }

  else
  {
    v4 = 0x74694B64756F6C63;
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

uint64_t sub_2197E03E8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_2197E0460(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_2197E04BC(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_2197E0530(char *a2@<X8>)
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

void sub_2197E0590(uint64_t *a1@<X8>)
{
  v2 = 0x74694B64756F6C63;
  if (*v1)
  {
    v2 = 0x656764457377656ELL;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_2197E0678()
{
  v0 = sub_219BDBD34();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_219BDB184();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD24();
  sub_219BDB154();
  v5 = MEMORY[0x277D84F90];
  v6 = sub_2194AE584(MEMORY[0x277D84F90]);
  v7 = sub_2194AE5A0(v5);
  type metadata accessor for TodayConfigData(0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  *(v8 + 32) = 0;
  result = (*(v2 + 32))(v8 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_fetchInterval, v4, v1);
  *(v8 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines) = v6;
  *(v8 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_tags) = v7;
  *(v8 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_localNewsArticles) = v5;
  qword_27CCD8EF0 = v8;
  return result;
}

void *sub_2197E0818(void *a1)
{
  v4 = *v1;
  v107 = v2;
  v108 = v4;
  sub_2197E225C(0, &qword_280EE67A0, &qword_280E8E680, &protocolRef_FCTagProviding);
  v100 = *(v5 - 8);
  v101 = v5;
  MEMORY[0x28223BE20](v5);
  v99 = &v88 - v6;
  sub_2197E225C(0, &qword_280EE6748, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
  v102 = v7;
  v105 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v104 = &v88 - v8;
  v9 = sub_219BDBD34();
  MEMORY[0x28223BE20](v9 - 8);
  v98 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197E22B4(0, &unk_280EE9DC8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v88 - v12;
  v14 = sub_219BDB184();
  v103 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197E267C(0, &qword_280E8CF80, MEMORY[0x277D844C8]);
  v18 = v17;
  v106 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v88 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197E2318();
  v21 = v107;
  sub_219BF7B34();
  if (v21)
  {
    goto LABEL_3;
  }

  v96 = v16;
  v97 = v13;
  v107 = v14;
  LOBYTE(v111) = 0;
  v22 = sub_219BF76F4();
  v23 = v18;
  v24 = v109;
  *(v109 + 16) = v22;
  *(v24 + 24) = v25;
  LOBYTE(v110) = 1;
  sub_2197E236C();
  sub_219BF76E4();
  *(v109 + 32) = v111 & 1;
  LOBYTE(v111) = 2;
  sub_2197E2A4C(&unk_280EE9DD8, MEMORY[0x277CC88A8], MEMORY[0x277CC88D0]);
  v26 = v97;
  v27 = v107;
  sub_219BF76E4();
  v94 = v20;
  v95 = v23;
  v30 = v103;
  v31 = *(v103 + 48);
  if (v31(v26, 1, v27) == 1)
  {
    sub_219BDBD24();
    v32 = v96;
    v33 = v97;
    sub_219BDB154();
    if (v31(v33, 1, v27) != 1)
    {
      sub_218BACB50(v33);
    }
  }

  else
  {
    v32 = v96;
    (*(v30 + 32))(v96, v26, v27);
  }

  (*(v30 + 32))(v109 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_fetchInterval, v32, v27);
  sub_2197E2734(0, &qword_280E8FBD0, MEMORY[0x277D834F8]);
  LOBYTE(v110) = 3;
  sub_2197E23C0();
  sub_219BF7734();
  v89 = 0;
  v88 = a1;
  v34 = v111;
  sub_2197E2478(0, &qword_280E8D0C8, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
  result = sub_219BF7584();
  v35 = 0;
  v37 = v34 + 64;
  v36 = *(v34 + 8);
  v96 = v34;
  v38 = 1 << v34[32];
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v36;
  v41 = (v38 + 63) >> 6;
  v43 = v104;
  v42 = v105;
  v92 = (v105 + 8);
  v93 = (v105 + 16);
  v90 = result;
  v91 = result + 8;
  if (v40)
  {
    while (1)
    {
      v44 = __clz(__rbit64(v40));
      v97 = (v40 - 1) & v40;
LABEL_18:
      v47 = v44 | (v35 << 6);
      v48 = *(v96 + 7);
      v49 = (*(v96 + 6) + 16 * v47);
      v50 = v49[1];
      v98 = *v49;
      v51 = v102;
      (*(v42 + 16))(v43, v48 + *(v42 + 72) * v47, v102);

      sub_219BE3384();
      v42 = v105;
      (*(v105 + 8))(v43, v51);
      result = v90;
      *(v91 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v52 = (result[6] + 16 * v47);
      *v52 = v98;
      v52[1] = v50;
      *(result[7] + 8 * v47) = v110;
      v53 = result[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        break;
      }

      result[2] = v55;
      v27 = v107;
      v43 = v104;
      v40 = v97;
      if (!v97)
      {
        goto LABEL_13;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

LABEL_13:
  v45 = v35;
  while (1)
  {
    v35 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v35 >= v41)
    {
      break;
    }

    v46 = *&v37[8 * v35];
    ++v45;
    if (v46)
    {
      v44 = __clz(__rbit64(v46));
      v97 = (v46 - 1) & v46;
      goto LABEL_18;
    }
  }

  v56 = result;

  *(v109 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines) = v56;
  sub_2197E24E0(0, &qword_280E8FBF0, MEMORY[0x277D834F8]);
  LOBYTE(v110) = 4;
  sub_2197E2568();
  v57 = v95;
  v58 = v94;
  v59 = v89;
  v60 = v89;
  sub_219BF7734();
  if (!v60)
  {
    v62 = v111;
    sub_2197E2478(0, &unk_280E8D110, &qword_280E8E680, &protocolRef_FCTagProviding);
    result = sub_219BF7584();
    v63 = result;
    v64 = 0;
    v65 = v62 + 64;
    v66 = 1 << v62[32];
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v68 = v67 & *(v62 + 8);
    v69 = (v66 + 63) >> 6;
    v71 = v99;
    v70 = v100;
    v97 = v100 + 16;
    v98 = v62;
    v96 = (v100 + 8);
    v92 = result;
    v93 = result + 8;
    v72 = v101;
    if (v68)
    {
      do
      {
        v73 = __clz(__rbit64(v68));
        v102 = (v68 - 1) & v68;
LABEL_32:
        v76 = v73 | (v64 << 6);
        v104 = (16 * v76);
        v77 = *(v98 + 7);
        v78 = (*(v98 + 6) + 16 * v76);
        v79 = v78[1];
        v105 = *v78;
        v80 = v70;
        (*(v70 + 16))(v71, v77 + *(v70 + 72) * v76, v72);

        sub_219BE3384();
        v72 = v101;
        result = (*(v80 + 8))(v71, v101);
        v63 = v92;
        *(v93 + ((v76 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v76;
        v81 = &v104[v63[6]];
        *v81 = v105;
        *(v81 + 1) = v79;
        *(v63[7] + 8 * v76) = v110;
        v82 = v63[2];
        v54 = __OFADD__(v82, 1);
        v83 = v82 + 1;
        if (v54)
        {
          goto LABEL_45;
        }

        v63[2] = v83;
        v68 = v102;
        v71 = v99;
        v70 = v100;
      }

      while (v102);
    }

    v74 = v64;
    while (1)
    {
      v64 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v64 >= v69)
      {

        *(v109 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_tags) = v63;
        sub_2197E22B4(0, &unk_280E8F470, type metadata accessor for TodayLocalNewsArticle, MEMORY[0x277D83940]);
        LOBYTE(v110) = 5;
        sub_2197E2988(&qword_280E8F458, &qword_280EE2E00, &unk_219C1DFE0, MEMORY[0x277D83978]);
        v85 = v94;
        v84 = v95;
        sub_219BF76E4();
        if (v111)
        {
          v87 = v111;
        }

        else
        {
          v87 = MEMORY[0x277D84F90];
        }

        (*(v106 + 8))(v85, v84);
        *(v109 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_localNewsArticles) = v87;
        v28 = v88;
        goto LABEL_4;
      }

      v75 = *&v65[8 * v64];
      ++v74;
      if (v75)
      {
        v73 = __clz(__rbit64(v75));
        v102 = (v75 - 1) & v75;
        goto LABEL_32;
      }
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  (*(v106 + 8))(v58, v57);
  a1 = v88;
  v61 = v103;
  v86 = v109;

  (*(v61 + 8))(v86 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_fetchInterval, v27);
  if (!v59)
  {
  }

LABEL_3:
  swift_deallocPartialClassInstance();
  v28 = a1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v109;
}

void *sub_2197E1460(void *a1)
{
  v2 = v1;
  sub_2197E225C(0, &qword_280EE67A0, &qword_280E8E680, &protocolRef_FCTagProviding);
  v5 = *(v4 - 8);
  v76 = v4;
  v77 = v5;
  MEMORY[0x28223BE20](v4);
  v75 = &v66 - v6;
  sub_2197E225C(0, &qword_280EE6748, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
  v8 = *(v7 - 1);
  v78 = v7;
  v79 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v66 - v9;
  sub_2197E267C(0, &qword_280E8C658, MEMORY[0x277D84538]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197E2318();
  sub_219BF7B44();
  LOBYTE(v81) = 0;
  v16 = v80;
  sub_219BF77F4();
  if (v16)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v80 = v10;
  LOBYTE(v81) = *(v2 + 32);
  v82 = 1;
  sub_2197E26E0();
  sub_219BF7834();
  LOBYTE(v81) = 2;
  sub_219BDB184();
  sub_2197E2A4C(&qword_280EE9DE8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B0]);
  sub_219BF7834();
  v66 = v15;
  v67 = v12;
  v68 = 0;
  v69 = v2;
  v70 = v13;
  v18 = *(v2 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);
  sub_2197E2734(0, &qword_280E8D310, MEMORY[0x277D84460]);
  result = sub_219BF7584();
  v19 = result;
  v20 = 0;
  v22 = v18 + 64;
  v21 = *(v18 + 64);
  v72 = v18;
  v73 = result;
  v23 = 1 << *(v18 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v21;
  v26 = (v23 + 63) >> 6;
  v27 = result + 8;
  v71 = v79 + 32;
  if ((v24 & v21) != 0)
  {
    do
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_13:
      v31 = v28 | (v20 << 6);
      v32 = (*(v72 + 48) + 16 * v31);
      v33 = v32[1];
      v74 = *v32;
      sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);

      swift_unknownObjectRetain();
      v34 = v80;
      sub_219BE3414();
      *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v35 = (*(v73 + 48) + 16 * v31);
      v19 = v73;
      *v35 = v74;
      v35[1] = v33;
      result = (*(v79 + 32))(*(v19 + 56) + *(v79 + 72) * v31, v34, v78);
      v36 = *(v19 + 16);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      *(v19 + 16) = v38;
    }

    while (v25);
  }

  v29 = v20;
  while (1)
  {
    v20 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= v26)
    {
      break;
    }

    v30 = *(v22 + 8 * v20);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v25 = (v30 - 1) & v30;
      goto LABEL_13;
    }
  }

  v81 = v19;
  v82 = 3;
  sub_2197E2734(0, &qword_280E8FBD0, MEMORY[0x277D834F8]);
  sub_2197E27BC();
  v39 = v67;
  v40 = v68;
  v41 = v66;
  sub_219BF7834();
  if (v40)
  {

    return (*(v70 + 8))(v41, v39);
  }

  v68 = 0;

  v42 = v69;
  v43 = *(v69 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_tags);
  sub_2197E24E0(0, &qword_280E8D318, MEMORY[0x277D84460]);
  result = sub_219BF7584();
  v44 = result;
  v45 = 0;
  v47 = v43 + 64;
  v46 = *(v43 + 64);
  v79 = v43;
  v48 = 1 << *(v43 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v46;
  v51 = (v48 + 63) >> 6;
  v78 = result + 8;
  v74 = v77 + 32;
  v52 = v70;
  if ((v49 & v46) == 0)
  {
LABEL_22:
    v54 = v45;
    while (1)
    {
      v45 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_34;
      }

      if (v45 >= v51)
      {
        v81 = v44;
        v82 = 4;
        sub_2197E24E0(0, &qword_280E8FBF0, MEMORY[0x277D834F8]);
        sub_2197E28D0();
        v63 = v67;
        v64 = v68;
        v65 = v66;
        sub_219BF7834();

        if (!v64)
        {
          v81 = *(v42 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_localNewsArticles);
          v82 = 5;
          sub_2197E22B4(0, &unk_280E8F470, type metadata accessor for TodayLocalNewsArticle, MEMORY[0x277D83940]);
          sub_2197E2988(&unk_280E8F460, qword_280EE2E08, &unk_219C1DFB8, MEMORY[0x277D83948]);
          sub_219BF7834();
        }

        return (*(v52 + 8))(v65, v63);
      }

      v55 = *(v47 + 8 * v45);
      ++v54;
      if (v55)
      {
        v53 = __clz(__rbit64(v55));
        v50 = (v55 - 1) & v55;
        goto LABEL_27;
      }
    }
  }

  while (1)
  {
    v53 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
LABEL_27:
    v56 = v53 | (v45 << 6);
    v57 = (*(v79 + 48) + 16 * v56);
    v58 = v57[1];
    v80 = *v57;
    sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);

    swift_unknownObjectRetain();
    v59 = v75;
    sub_219BE3404();
    *(v78 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
    v60 = (v44[6] + 16 * v56);
    *v60 = v80;
    v60[1] = v58;
    result = (*(v77 + 32))(v44[7] + *(v77 + 72) * v56, v59, v76);
    v61 = v44[2];
    v37 = __OFADD__(v61, 1);
    v62 = v61 + 1;
    if (v37)
    {
      break;
    }

    v44[2] = v62;
    v42 = v69;
    v52 = v70;
    if (!v50)
    {
      goto LABEL_22;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

double sub_2197E1CDC(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

unint64_t sub_2197E1DDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2197E2C00(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2197E1E0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x444964726F636572;
  v5 = 0xE900000000000073;
  v6 = 0x656E696C64616568;
  v7 = 0xE400000000000000;
  v8 = 1936154996;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000219CD8C40;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x656372756F73;
  if (v2 != 1)
  {
    v10 = 0x746E496863746566;
    v9 = 0xED00006C61767265;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2197E1ED4()
{
  v1 = *v0;
  v2 = 0x444964726F636572;
  v3 = 0x656E696C64616568;
  v4 = 1936154996;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656372756F73;
  if (v1 != 1)
  {
    v5 = 0x746E496863746566;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2197E1F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2197E2C00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2197E1FC0(uint64_t a1)
{
  v2 = sub_2197E2318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197E1FFC(uint64_t a1)
{
  v2 = sub_2197E2318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197E2038()
{

  v1 = OBJC_IVAR____TtC7NewsUI215TodayConfigData_fetchInterval;
  v2 = sub_219BDB184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_2197E2128()
{
  result = qword_27CC1F6E0;
  if (!qword_27CC1F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F6E0);
  }

  return result;
}

void *sub_2197E217C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2197E0818(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2197E21F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayLocalNewsArticle.Resolved(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2197E225C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2186D6710(255, a3, a4);
    v5 = sub_219BE3474();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2197E22B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2197E2318()
{
  result = qword_280ED93D8[0];
  if (!qword_280ED93D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED93D8);
  }

  return result;
}

unint64_t sub_2197E236C()
{
  result = qword_280ED9390;
  if (!qword_280ED9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED9390);
  }

  return result;
}

unint64_t sub_2197E23C0()
{
  result = qword_280E8FBB8;
  if (!qword_280E8FBB8)
  {
    sub_2197E2734(255, &qword_280E8FBD0, MEMORY[0x277D834F8]);
    sub_2197E2874(&unk_280EE6750, MEMORY[0x277D6CF98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FBB8);
  }

  return result;
}

void sub_2197E2478(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2186D6710(255, a3, a4);
    v5 = sub_219BF75C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2197E24E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_2197E225C(255, &qword_280EE67A0, &qword_280E8E680, &protocolRef_FCTagProviding);
    v7 = a3(a1, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2197E2568()
{
  result = qword_280E8FBD8;
  if (!qword_280E8FBD8)
  {
    sub_2197E24E0(255, &qword_280E8FBF0, MEMORY[0x277D834F8]);
    sub_2197E2620(&unk_280EE67B0, MEMORY[0x277D6CF98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FBD8);
  }

  return result;
}

uint64_t sub_2197E2620(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2197E225C(255, &qword_280EE67A0, &qword_280E8E680, &protocolRef_FCTagProviding);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2197E267C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197E2318();
    v7 = a3(a1, &type metadata for TodayConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2197E26E0()
{
  result = qword_280ED93B0;
  if (!qword_280ED93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED93B0);
  }

  return result;
}

void sub_2197E2734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_2197E225C(255, &qword_280EE6748, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
    v7 = a3(a1, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2197E27BC()
{
  result = qword_280E8FBC8;
  if (!qword_280E8FBC8)
  {
    sub_2197E2734(255, &qword_280E8FBD0, MEMORY[0x277D834F8]);
    sub_2197E2874(&unk_280EE6760, MEMORY[0x277D6CF90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FBC8);
  }

  return result;
}

uint64_t sub_2197E2874(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2197E225C(255, &qword_280EE6748, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2197E28D0()
{
  result = qword_280E8FBE0;
  if (!qword_280E8FBE0)
  {
    sub_2197E24E0(255, &qword_280E8FBF0, MEMORY[0x277D834F8]);
    sub_2197E2620(&qword_280EE67C0, MEMORY[0x277D6CF90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FBE0);
  }

  return result;
}

uint64_t sub_2197E2988(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2197E22B4(255, &unk_280E8F470, type metadata accessor for TodayLocalNewsArticle, MEMORY[0x277D83940]);
    sub_2197E2A4C(a2, type metadata accessor for TodayLocalNewsArticle, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2197E2A4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2197E2A94()
{
  result = qword_280ED93A0;
  if (!qword_280ED93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED93A0);
  }

  return result;
}

unint64_t sub_2197E2AFC()
{
  result = qword_27CC1F6E8;
  if (!qword_27CC1F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F6E8);
  }

  return result;
}

unint64_t sub_2197E2B54()
{
  result = qword_280ED93C0;
  if (!qword_280ED93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED93C0);
  }

  return result;
}

unint64_t sub_2197E2BAC()
{
  result = qword_280ED93C8;
  if (!qword_280ED93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED93C8);
  }

  return result;
}

unint64_t sub_2197E2C00(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2197E2C4C(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutType(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for CuratedShortcut(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v21 = MEMORY[0x277D84F90];
    sub_218C34DE0(0, v13, 0);
    v14 = v21;
    v15 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v3 + 72);
    do
    {
      sub_2197E319C(v15, v8);
      sub_2197E3200(v8, v5, type metadata accessor for ShortcutType);
      sub_2197E3200(v5, v12, type metadata accessor for CuratedShortcut);
      v21 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_218C34DE0((v17 > 1), v18 + 1, 1);
        v14 = v21;
      }

      *(v14 + 16) = v18 + 1;
      sub_2197E3200(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, type metadata accessor for CuratedShortcut);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_2197E2EA0(void *a1, uint64_t a2)
{
  sub_2197E3754(0, &qword_27CC1F728, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197E362C();
  sub_219BF7B44();
  v10[1] = a2;
  sub_2197E37B8(0, &qword_27CC1F730, type metadata accessor for ShortcutType, MEMORY[0x277D83940]);
  sub_2197E381C();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

void sub_2197E304C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74756374726F6873 && a2 == 0xE900000000000073)
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

uint64_t sub_2197E30DC(uint64_t a1)
{
  v2 = sub_2197E362C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197E3118(uint64_t a1)
{
  v2 = sub_2197E362C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197E3154@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2197E3278(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2197E319C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197E3200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2197E3278(void *a1)
{
  sub_2197E37B8(0, &qword_27CC1F6F0, sub_2197E3560, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  sub_2197E3754(0, &qword_27CC1F710, MEMORY[0x277D6CE98]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197E362C();
  v12 = v11;
  sub_219BF7B04();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_2197E3560(0);
    v14 = v13;
    sub_2197E3680(&qword_27CC1F720, sub_2197E3560, MEMORY[0x277D6CB08]);
    sub_219BE2C94();
    v16 = *(v14 - 8);
    if ((*(v16 + 48))(v5, 1, v14) == 1)
    {
      sub_2197E36C8(v5);
      v12 = MEMORY[0x277D84F90];
    }

    else
    {
      v12 = sub_219BE1E44();
      (*(v16 + 8))(v5, v14);
    }

    (*(v8 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v12;
}

void sub_2197E3560(uint64_t a1)
{
  if (!qword_27CC1F6F8)
  {
    type metadata accessor for ShortcutType(255);
    sub_2197E3680(&qword_27CC1F700, type metadata accessor for ShortcutType, &unk_219CB18D0);
    sub_2197E3680(&qword_27CC1F708, type metadata accessor for ShortcutType, &unk_219CB18A8);
    v1 = sub_219BE1E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F6F8);
    }
  }
}

unint64_t sub_2197E362C()
{
  result = qword_27CC1F718;
  if (!qword_27CC1F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F718);
  }

  return result;
}

uint64_t sub_2197E3680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2197E36C8(uint64_t a1)
{
  sub_2197E37B8(0, &qword_27CC1F6F0, sub_2197E3560, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2197E3754(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197E362C();
    v7 = a3(a1, &type metadata for ShortcutsCurationResource.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2197E37B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2197E381C()
{
  result = qword_27CC1F738;
  if (!qword_27CC1F738)
  {
    sub_2197E37B8(255, &qword_27CC1F730, type metadata accessor for ShortcutType, MEMORY[0x277D83940]);
    sub_2197E3680(&qword_27CC1F708, type metadata accessor for ShortcutType, &unk_219CB18A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F738);
  }

  return result;
}

unint64_t sub_2197E3908()
{
  result = qword_27CC1F740;
  if (!qword_27CC1F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F740);
  }

  return result;
}

unint64_t sub_2197E3960()
{
  result = qword_27CC1F748;
  if (!qword_27CC1F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F748);
  }

  return result;
}

unint64_t sub_2197E39B8()
{
  result = qword_27CC1F750;
  if (!qword_27CC1F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F750);
  }

  return result;
}

uint64_t sub_2197E3A20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 530))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 529);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2197E3A68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 520) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 528) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 530) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 530) = 0;
    }

    if (a2)
    {
      *(result + 529) = -a2;
    }
  }

  return result;
}

uint64_t sub_2197E3B50(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84538];
  sub_2197E4E00(0, &qword_27CC10120, sub_218C659C4, &type metadata for AutocompleteSearchResultItem.CodingKeys, MEMORY[0x277D84538]);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - v6;
  sub_2197E4E00(0, &unk_27CC157A0, sub_21906E754, &type metadata for IssueSearchResultItem.CodingKeys, v4);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  sub_2197E4E00(0, &qword_27CC1F770, sub_2197E4D14, &type metadata for SearchResultItem.CodingKeys, v4);
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197E4D14();
  v44 = v12;
  sub_219BF7B44();
  memcpy(v39, v2, 0x212uLL);
  v13 = sub_218CD47C0(v39);
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      nullsub_1();
      v14 = v38;
      v22 = v36;
      sub_219BF77F4();
      if (!v22)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_21906E754();
        sub_219BF7B44();
        v23 = v32;
        sub_219BF77F4();
        (*(v31 + 8))(v9, v23);
        v14 = v38;
      }

      v15 = v44;
    }

    else
    {
      v14 = v38;
      if (v13 == 4)
      {
        nullsub_1();
        memcpy(v43, v18, sizeof(v43));
        v15 = v44;
        v19 = v36;
        sub_219BF77F4();
        if (!v19)
        {
          sub_218CB360C(a1);
        }
      }

      else
      {
        nullsub_1();
        v15 = v44;
        v26 = v36;
        sub_219BF77F4();
        if (!v26)
        {
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_218C659C4();
          v27 = v33;
          sub_219BF7B44();
          v28 = v35;
          sub_219BF77F4();
          (*(v34 + 8))(v27, v28);
          v14 = v38;
        }
      }
    }
  }

  else if (v13)
  {
    v14 = v38;
    v15 = v44;
    if (v13 == 1)
    {
      nullsub_1();
      memcpy(v41, v16, sizeof(v41));
      v17 = v36;
      sub_219BF77F4();
      if (!v17)
      {
        sub_2191E8794(a1);
      }
    }

    else
    {
      nullsub_1();
      memcpy(v42, v24, sizeof(v42));
      v25 = v36;
      sub_219BF77F4();
      if (!v25)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    nullsub_1();
    memcpy(v40, v20, sizeof(v40));
    v14 = v38;
    v15 = v44;
    v21 = v36;
    sub_219BF77F4();
    if (!v21)
    {
LABEL_18:
      sub_2199ED084(a1);
    }
  }

  return (*(v37 + 8))(v15, v14);
}

uint64_t sub_2197E40FC()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_2197E4170(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

void sub_2197E41C4(BOOL *a2@<X8>)
{
  v3 = sub_219BF7614();

  *a2 = v3 != 0;
}

void sub_2197E4254(BOOL *a3@<X8>)
{
  v4 = sub_219BF7614();

  *a3 = v4 != 0;
}

uint64_t sub_2197E42AC(uint64_t a1)
{
  v2 = sub_2197E4D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197E42E8(uint64_t a1)
{
  v2 = sub_2197E4D14();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2197E4338(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

unint64_t sub_2197E442C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2197E503C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2197E445C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C656E6E616843;
  v5 = 0xE500000000000000;
  v6 = 0x6575737349;
  v7 = 0xE600000000000000;
  v8 = 0x657069636552;
  if (v2 != 4)
  {
    v8 = 0x706D6F636F747541;
    v7 = 0xEC0000006574656CLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x656C6369747241;
  if (v2 != 1)
  {
    v10 = 0x6369706F54;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

void *sub_2197E4578@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_2197E45DC(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x212uLL);
  }

  return result;
}

void *sub_2197E45DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_2197E4E00(0, &qword_27CC10118, sub_218C659C4, &type metadata for AutocompleteSearchResultItem.CodingKeys, MEMORY[0x277D844C8]);
  v36 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v30 - v5;
  sub_2197E4E00(0, &qword_27CC15798, sub_21906E754, &type metadata for IssueSearchResultItem.CodingKeys, v3);
  v34 = v6;
  v31 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  sub_2197E4E00(0, &qword_27CC1F758, sub_2197E4D14, &type metadata for SearchResultItem.CodingKeys, v3);
  v10 = v9;
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2197E4D14();
  v14 = v38;
  sub_219BF7B34();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v16 = v34;
  v15 = v35;
  v17 = v36;
  sub_2197E4D68();
  sub_219BF7734();
  if (v48 <= 2u)
  {
    if (v48)
    {
      v19 = v33;
      v20 = v37;
      v21 = v39;
      if (v48 == 1)
      {
        sub_218718690(v39, v41);
        sub_2191E8B08(v41, v45);
        memcpy(v40, v45, 0x211uLL);
        (*(v20 + 8))(v12, v10);
        memcpy(v42, v40, 0x211uLL);
        sub_2197E4DEC(v42);
      }

      else
      {
        sub_218718690(v39, v41);
        sub_2199EDA28(v41, v46);
        memcpy(v40, v46, 0x158uLL);
        (*(v20 + 8))(v12, v10);
        memcpy(v42, v40, 0x158uLL);
        sub_2197E4DE0(v42);
      }
    }

    else
    {
      v21 = v39;
      sub_218718690(v39, v41);
      sub_2199EDA28(v41, v44);
      v19 = v33;
      memcpy(v40, v44, 0x158uLL);
      (*(v37 + 8))(v12, v10);
      memcpy(v42, v40, 0x158uLL);
      sub_2197E4DF8(v42);
    }

    memcpy(v43, v42, sizeof(v43));
    v23 = v21;
    goto LABEL_18;
  }

  if (v48 == 3)
  {
    v38 = v10;
    sub_218718690(v39, v40);
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    sub_21906E754();
    sub_219BF7B34();
    v24 = sub_219BF76F4();
    v26 = v25;
    (*(v31 + 8))(v8, v16);
    (*(v37 + 8))(v12, v38);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v42[0] = v24;
    v42[1] = v26;
    sub_2197E4DD4(v42);
LABEL_16:
    memcpy(v43, v42, sizeof(v43));
    v23 = v39;
    goto LABEL_17;
  }

  if (v48 != 4)
  {
    v34 = v12;
    v38 = v10;
    sub_218718690(v39, v40);
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    sub_218C659C4();
    sub_219BF7B34();
    v27 = sub_219BF76F4();
    v29 = v28;
    (*(v32 + 8))(v15, v17);
    (*(v37 + 8))(v34, v38);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v42[0] = v27;
    v42[1] = v29;
    sub_2197E4DBC(v42);
    goto LABEL_16;
  }

  v22 = v39;
  sub_218718690(v39, v41);
  sub_218CB3BD0(v41, v47);
  memcpy(v40, v47, 0x160uLL);
  (*(v37 + 8))(v12, v10);
  memcpy(v42, v40, 0x160uLL);
  sub_2197E4DC8(v42);
  memcpy(v43, v42, sizeof(v43));
  v23 = v22;
LABEL_17:
  v19 = v33;
LABEL_18:
  __swift_destroy_boxed_opaque_existential_1(v23);
  return memcpy(v19, v43, 0x212uLL);
}

unint64_t sub_2197E4D14()
{
  result = qword_27CC1F760;
  if (!qword_27CC1F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F760);
  }

  return result;
}

unint64_t sub_2197E4D68()
{
  result = qword_27CC1F768;
  if (!qword_27CC1F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F768);
  }

  return result;
}

void sub_2197E4E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2197E4E8C()
{
  result = qword_27CC1F778;
  if (!qword_27CC1F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F778);
  }

  return result;
}

unint64_t sub_2197E4EE4()
{
  result = qword_27CC1F780;
  if (!qword_27CC1F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F780);
  }

  return result;
}

unint64_t sub_2197E4F3C()
{
  result = qword_27CC1F788;
  if (!qword_27CC1F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F788);
  }

  return result;
}

unint64_t sub_2197E4F94()
{
  result = qword_27CC1F790;
  if (!qword_27CC1F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F790);
  }

  return result;
}

unint64_t sub_2197E4FE8()
{
  result = qword_27CC1F798;
  if (!qword_27CC1F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F798);
  }

  return result;
}

unint64_t sub_2197E503C(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

double sub_2197E508C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = off_282AA1F18[0];
        type metadata accessor for AudioPlaylistFeedViewController();
        v5(v4);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2197E5164@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for AudioPlaylistFeedModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for AudioPlaylistFeedModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E5214(void *a1)
{
  v2 = sub_219BDBD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187144E0(0);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    sub_219BDBD54();
    v8 = sub_219BDBD44();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    v11 = qword_280E8D8A0;
    v12 = *MEMORY[0x277D30B60];
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_280F61768;
    v15[2] = v10;
    v15[3] = v7;
    v15[1] = v8;
    sub_2197EBAE0(0);
    swift_allocObject();
    v14 = v13;
    return sub_219BEF444();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_2197E53B0()
{
  type metadata accessor for AudioPlaylistFeedViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC1F7A0, &protocol descriptor for AudioPlaylistFeedStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1F7A8, &protocol descriptor for AudioPlaylistFeedRouterType, 1);
  sub_219BE2914();
  type metadata accessor for AudioPlaylistFeedRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC1F7B0, &protocol descriptor for AudioPlaylistFeedEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1F7B8, &protocol descriptor for AudioPlaylistFeedInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1F7C0, &protocol descriptor for AudioPlaylistFeedTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1F7C8, &protocol descriptor for AudioPlaylistFeedDataManagerType, 0);
  sub_219BE2914();

  sub_218987004(0);
  sub_219BE2904();

  type metadata accessor for AudioPlaylistFeedBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC0D2B8, &protocol descriptor for AudioPlaylistFeedSectionFactoryType, 1);
  sub_219BE2914();

  sub_2197EA478(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2197EAD60(0);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_2197EA564(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE4510, MEMORY[0x277D6E558], 1);
  sub_219BE2914();
  sub_219BE19D4();

  type metadata accessor for AudioPlaylistFeedAnimator();
  sub_219BE2904();

  sub_2197EAE9C(0);
  sub_219BE2904();

  sub_2197EA9EC(0);
  sub_219BE2904();

  type metadata accessor for AudioPlaylistFeedBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2197EAF54(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8E74();
  sub_219BE2904();

  sub_2197EA6A0(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AC24(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();

  sub_2197EA81C(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2197EAAA4(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2197EAC24(0);
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for AudioPlaylistFeedBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for AudioPlaylistFeedBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_2197EB090(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_2197EB124(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  sub_219BE2914();

  return result;
}

char *sub_2197E5E24(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1F7A0, &protocol descriptor for AudioPlaylistFeedStylerType, 1);
  result = sub_219BE1E34();
  if (!v25)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1F7B0, &protocol descriptor for AudioPlaylistFeedEventHandlerType, 0);
  result = sub_219BE1E34();
  v3 = v22;
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EAF54(0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v20 = type metadata accessor for AudioPlaylistFeedStyler();
    v21 = &off_282A72F48;
    v19[0] = v11;
    v12 = objc_allocWithZone(type metadata accessor for AudioPlaylistFeedViewController());
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = sub_2197EB6B0(*v16, v3, v4, v5, v12);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2197E60E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for BaseStyler(0);
    v20[3] = v10;
    v11 = sub_218795E10(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for AudioPlaylistFeedStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[5] = v10;
    v13[6] = v11;
    v13[2] = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    a2[4] = &off_282A72F48;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2197E6344@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC12D0(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBC3A0, &protocol descriptor for AudioHeadlineConverterType, 1);
  result = sub_219BE1E34();
  if (v10)
  {
    v7 = type metadata accessor for AudioPlaylistFeedRouter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v13, v8 + 24);
    *(v8 + 64) = v5;
    sub_2186CB1F0(&v11, v8 + 72);
    *(v8 + 112) = v6;
    result = sub_2186CB1F0(&v9, v8 + 120);
    a2[3] = v7;
    a2[4] = &off_282A544D0;
    *a2 = v8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2197E653C(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioPlaylistFeedViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_2197E65BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1F7B8, &protocol descriptor for AudioPlaylistFeedInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1F7A8, &protocol descriptor for AudioPlaylistFeedRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1F7C0, &protocol descriptor for AudioPlaylistFeedTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_2197EB8CC(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A6B318;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2197E686C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1F7C8, &protocol descriptor for AudioPlaylistFeedDataManagerType, 0);
  sub_219BE1E34();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA478(0);
  v4 = sub_219BE1E24();
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioPlaylistFeedBlueprintModifierFactory();
  v6 = sub_219BE1E24();
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC12D0(0, &unk_280E90700, sub_2186F17B0, &type metadata for AudioFeedOfflineModel, MEMORY[0x277D33538]);
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    v10 = sub_2197EA344(v11, v12, v5, v7, v8);
    swift_unknownObjectRelease();

    *a2 = v10;
    a2[1] = &off_282A46D70;
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_2197E6A24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC27E0, &protocol descriptor for AudioPlaybackContextType, 1);
  result = sub_219BE1E34();
  if (!v34)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB9190, &protocol descriptor for AudioSuggestionsTrackerType, 1);
  result = sub_219BE1E34();
  if (!v32)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v26 = v6;
  v27 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (v30)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    v10 = MEMORY[0x28223BE20](v9);
    v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = *v12;
    v15 = type metadata accessor for AudioSuggestionsStore();
    v28[3] = v15;
    v28[4] = &off_282A86138;
    v28[0] = v14;
    v16 = type metadata accessor for AudioPlaylistFeedTracker();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v28, v15);
    v19 = MEMORY[0x28223BE20](v18);
    v21 = (&v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21, v19);
    v23 = *v21;
    v17[12] = v15;
    v17[13] = &off_282A86138;
    v17[9] = v23;
    v17[2] = v5;
    sub_2186CB1F0(&v33, (v17 + 3));
    v17[8] = v26;
    v17[14] = v7;
    v17[15] = v8;
    sub_2186CB1F0(&v29, (v17 + 16));
    __swift_destroy_boxed_opaque_existential_1(v28);
    result = __swift_destroy_boxed_opaque_existential_1(v31);
    v24 = v27;
    v27[3] = v16;
    v24[4] = &off_282A97220;
    *v24 = v17;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_2197E6E30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BED184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187144E0(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872F750(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  v34 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECF740, &protocol descriptor for AudioDataManagerType, 0);
  result = sub_219BE1E34();
  v11 = v42;
  if (!v42)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v33 = a2;
  v32 = v43;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = sub_219BDE124();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC89E0, &protocol descriptor for AudioPlaylistStoreType, 1);
  result = sub_219BE1E34();
  if (v41)
  {
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
    v31[1] = v31;
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v19 = type metadata accessor for AudioPlaylistStore();
    v39[3] = v19;
    v39[4] = &off_282A40D18;
    v39[0] = v18;
    type metadata accessor for AudioPlaylistFeedDataManager();
    v20 = swift_allocObject();
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v39, v19);
    v31[0] = v31;
    v22 = MEMORY[0x28223BE20](v21);
    v24 = (v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = *v24;
    v37 = v19;
    v38 = &off_282A40D18;
    v36[0] = v26;
    v20[3] = 0;
    swift_unknownObjectWeakInit();
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v27 = v34;
    (*(v5 + 104))(v7, *MEMORY[0x277D851B8], v34);
    v28 = sub_219BF66E4();
    (*(v5 + 8))(v7, v27);
    v20[14] = v28;
    v20[4] = v9;
    v20[5] = v10;
    v29 = v32;
    v20[6] = v11;
    v20[7] = v29;
    v20[8] = v12;
    sub_218718690(v36, (v20 + 9));
    __swift_project_boxed_opaque_existential_1(v36, v37);
    swift_allocObject();
    swift_weakInit();

    swift_unknownObjectRetain();

    sub_219BE20F4();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(v39);
    result = __swift_destroy_boxed_opaque_existential_1(v40);
    v30 = v33;
    *v33 = v20;
    v30[1] = &off_282A82840;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_2197E73BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0D2B8, &protocol descriptor for AudioPlaylistFeedSectionFactoryType, 1);
  result = sub_219BE1E34();
  if (v18)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v3 = MEMORY[0x28223BE20](v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for AudioPlaylistFeedSectionFactory();
    v16[3] = v8;
    v16[4] = &off_282A4E268;
    v16[0] = v7;
    type metadata accessor for AudioPlaylistFeedBlueprintModifierFactory();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[5] = v8;
    v9[6] = &off_282A4E268;
    v9[2] = v15;
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2197E75CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20, &protocol descriptor for HeadlineModelFactoryType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for HeadlineModelFactory();
    v19[3] = v10;
    v19[4] = &off_282A8B8E8;
    v19[0] = v9;
    v11 = type metadata accessor for AudioPlaylistFeedSectionFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A8B8E8;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A4E268;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E77F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987004(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2197EA564(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2197EA478(0);
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2197E78D8(uint64_t a1, void *a2)
{
  sub_2197EB680(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_2197EB530(0, &qword_27CC1F8F8, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_218795E10(&qword_27CC1F900, sub_2197EB680, MEMORY[0x277D6E730]);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197EAD60(0);
  if (sub_219BE1E24())
  {
    swift_allocObject();
    sub_218795E10(&qword_27CC1F908, sub_2197EAD60, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_2197E7A70(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA9EC(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioPlaylistFeedBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EAE9C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_2197EAD60(0);
    swift_allocObject();
    return sub_219BEA484();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2197E7C78(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void *sub_2197E7CBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA6A0(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4510, MEMORY[0x277D6E558], 1);
  result = sub_219BE1DF4();
  if (v4)
  {
    sub_2186CB1F0(&v3, v5);
    sub_2197EA564(0);
    swift_allocObject();
    return sub_219BE72C4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2197E7E24@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BE8904();
  swift_allocObject();
  result = sub_219BE88F4();
  v4 = MEMORY[0x277D6E048];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

void sub_2197E7E7C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioPlaylistFeedAnimator();
  if (sub_219BE1E24())
  {
    sub_218795E10(&qword_27CC0D300, type metadata accessor for AudioPlaylistFeedAnimator, &unk_219C1372C);
    sub_219BE9344();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2197E7F68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987004(0);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2197EA6A0(0);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for AudioPlaylistFeedAnimator();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2197E8074(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AC24(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BF44C4();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for AudioPlaylistFeedBlueprintLayoutBuilder();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2197E8160(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987004(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA6A0(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EB090(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218795E10(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_2197EAF54(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_2197E8460(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_218795E10(&qword_280E8FF80, MEMORY[0x277D34268], MEMORY[0x277D34260]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70, MEMORY[0x277D34270], 0);
  sub_219BE1E34();
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2197EA9EC(0);
    if (sub_219BE1E24())
    {
      swift_getObjectType();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_219BF35C4();
      swift_allocObject();
      sub_218795E10(&qword_27CC1F7F8, sub_2197EA9EC, MEMORY[0x277D6DF38]);

      sub_219BF35A4();
      sub_219BF3EC4();
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2197E8690(uint64_t a1, uint64_t a2)
{
  sub_2197EB4BC(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197EB530(0, &qword_27CC0CA18, MEMORY[0x277D6EC60]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_219BE86A4();

    v18 = v17[1];
    sub_218987004(0);
    sub_218795E10(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    v12 = sub_2197266D4();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v12 = 0xF000000000000007;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_219BE86A4();

    v17[0] = v18;
    sub_218987004(0);
    sub_218795E10(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    (*(v7 + 56))(v4, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v4, 1, 1, v6);
  }

  sub_219BE6684();
  type metadata accessor for AudioPlaylistFeedSectionDescriptor(0);
  type metadata accessor for AudioPlaylistFeedModel(0);
  sub_218795E10(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor, &unk_219C3085C);
  sub_218795E10(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel, &unk_219C8F008);
  sub_219BF44D4();
  sub_2197EB624(v4);
  type metadata accessor for AudioPlaylistFeedServiceConfig(0);
  sub_218795E10(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig, &unk_219C95088);
  v15 = sub_219BE6624();

  sub_21885AB78(v12);
  return v15;
}

void *sub_2197E8A68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AC24(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  result = sub_219BE1DE4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE73A0, MEMORY[0x277D6CD90], 1);
    result = sub_219BE1E34();
    if (v4)
    {
      v3 = objc_allocWithZone(sub_219BE8E74());
      return sub_219BE8E64();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2197E8BA0(void *a1)
{
  v2 = sub_219BE7AA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE8E74();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA81C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EAAA4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EAC24(0);
  result = sub_219BE1E24();
  if (result)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D6DC38], v2);
    sub_2197EA6A0(0);
    swift_allocObject();
    return sub_219BE7BA4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2197E8DAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA6A0(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E8E64()
{
  v0 = sub_219BE80A4();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v1);
  return sub_219BE9574();
}

uint64_t sub_2197E8F34(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21879AC24(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2197E8FFC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987004(0);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA9EC(0);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioPlaylistFeedBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioPlaylistFeedBlueprintViewSupplementaryViewProvider();
  if (sub_219BE1E24())
  {
    *&v8[0] = v3;
    sub_2197EA81C(0);
    v7 = objc_allocWithZone(v6);
    sub_219BE9B64();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2197E9198(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE8E74();
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790, 0x277D759D8);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_2197E9298(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9B74();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2197E936C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987004(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA9EC(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EB090(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_218795E10(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800, MEMORY[0x277D6E170], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_2197EAAA4(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2197E95BC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197EB124(0);
  if (sub_219BE1E24())
  {
    sub_218795E10(&qword_27CC1F8E0, sub_2197EB124, MEMORY[0x277D6E7F8]);
  }

  sub_219BE9774();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE8984();
  sub_219BE1DE4();
  sub_219BE9734();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197EAF54(0);
  sub_219BE1E24();
  return sub_219BE9714();
}

uint64_t sub_2197E9734(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987004(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2197EA9EC(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2197EAC24(0);
      v4 = objc_allocWithZone(v3);
      return sub_219BEA1A4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2197E97F4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioPlaylistFeedViewController();
  result = sub_219BE1E24();
  if (result)
  {
    return MEMORY[0x21CEC0F50]();
  }

  __break(1u);
  return result;
}

void *sub_2197E9858(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810, MEMORY[0x277D32340], 0);
  result = sub_219BE1E34();
  if (v3)
  {
    type metadata accessor for AudioPlaylistFeedBlueprintViewCellProvider();
    v2 = swift_allocObject();
    v2[3] = 0;
    swift_unknownObjectWeakInit();
    v2[4] = v3;
    v2[5] = v4;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2197E9904(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioPlaylistFeedViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282AA1EE8;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void *sub_2197E9998(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0, MEMORY[0x277D32C08], 1);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for AudioPlaylistFeedBlueprintViewSupplementaryViewProvider();
    v2 = swift_allocObject();
    sub_2186CB1F0(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197E9A38(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2197EB418(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987004(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_2197EB090(0);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2197E9C90(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197EA9EC(0);
  if (sub_219BE1E24())
  {
    sub_218795E10(&qword_27CC1F8B0, sub_2197EA9EC, MEMORY[0x277D6DF30]);
    sub_219BE8E94();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280E90FB0, MEMORY[0x277D32C40], 1);
    sub_219BE1E34();
    sub_2197EB210(0);
    swift_allocObject();
    sub_219BEFCE4();
    sub_218795E10(&qword_27CC1F8C0, sub_2197EB210, MEMORY[0x277D32A40]);
    sub_219BE8EA4();

    sub_2197EB2E8(0);
    swift_allocObject();
    sub_219BF0074();
    sub_218795E10(&qword_27CC1F8D0, sub_2197EB2E8, MEMORY[0x277D32B90]);
    sub_219BE8EA4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2197E9EDC(void *a1)
{
  sub_2187F2110(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EB124(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_218795E10(&qword_27CC1F8A8, sub_2197EB124, MEMORY[0x277D6E800]);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2197EA018(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA6A0(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218987004(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2197EB124(0);
      swift_allocObject();
      return sub_219BE9AB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2197EA12C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EA6A0(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197EA1E8(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197EAF54(0);
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    v10 = sub_218795E10(a3, sub_2197EAF54, a4);
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  return a5(v8, v10);
}

uint64_t sub_2197EA29C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EAF54(0);
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_218795E10(&qword_27CC1F890, sub_2197EAF54, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2197EA344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_21879AC24(0, &qword_27CC1F910, type metadata accessor for AudioPlaylistFeedBlueprintModifierFactory, &off_282A9A698, type metadata accessor for AudioPlaylistFeedInteractor);
  v10 = swift_allocObject();
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[6] = a1;
  v10[7] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[8] = a5;
  *(a1 + 24) = &off_282A46D60;
  swift_unknownObjectWeakAssign();
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  v11 = a5;

  return v10;
}

void sub_2197EA478(uint64_t a1)
{
  if (!qword_27CC1F7D0)
  {
    sub_218987004(255);
    sub_2197EA564(255);
    sub_218795E10(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
    sub_218795E10(&qword_27CC1F848, sub_2197EA564, MEMORY[0x277D6D960]);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F7D0);
    }
  }
}

void sub_2197EA564(uint64_t a1)
{
  if (!qword_27CC1F7D8)
  {
    type metadata accessor for AudioPlaylistFeedSectionDescriptor(255);
    type metadata accessor for AudioPlaylistFeedModel(255);
    sub_2197EA6A0(255);
    sub_218795E10(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor, &unk_219C3085C);
    sub_218795E10(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel, &unk_219C8F008);
    sub_218795E10(&qword_27CC1F840, sub_2197EA6A0, MEMORY[0x277D6DC88]);
    v1 = sub_219BE72E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F7D8);
    }
  }
}

void sub_2197EA6A0(uint64_t a1)
{
  if (!qword_27CC1F7E0)
  {
    sub_2186C6148(255, &qword_280E8E4C0, 0x277D752A0);
    sub_2197EA81C(255);
    sub_2197EAAA4(255);
    sub_2197EAC24(255);
    type metadata accessor for AudioPlaylistFeedViewController();
    sub_218795E10(&qword_27CC1F828, sub_2197EA81C, MEMORY[0x277D6E820]);
    sub_218795E10(&qword_27CC1F830, sub_2197EAAA4, MEMORY[0x277D6E738]);
    sub_218795E10(&qword_27CC1F838, sub_2197EAC24, MEMORY[0x277D6E9E0]);
    v1 = sub_219BE7BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F7E0);
    }
  }
}

void sub_2197EA81C(uint64_t a1)
{
  if (!qword_27CC1F7E8)
  {
    sub_218987004(255);
    sub_2197EA9EC(255);
    type metadata accessor for AudioPlaylistFeedBlueprintViewCellProvider();
    type metadata accessor for AudioPlaylistFeedBlueprintViewSupplementaryViewProvider();
    sub_218795E10(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
    sub_218795E10(&qword_27CC1F7F8, sub_2197EA9EC, MEMORY[0x277D6DF38]);
    sub_218795E10(&qword_27CC1F800, type metadata accessor for AudioPlaylistFeedBlueprintViewCellProvider, &unk_219C902AC);
    sub_218795E10(&qword_27CC1F808, type metadata accessor for AudioPlaylistFeedBlueprintViewSupplementaryViewProvider, &unk_219C96498);
    sub_218795E10(&qword_27CC13CC0, type metadata accessor for AudioPlaylistFeedLayoutModel, &unk_219C49738);
    v1 = sub_219BE9B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F7E8);
    }
  }
}

void sub_2197EA9EC(uint64_t a1)
{
  if (!qword_27CC1F7F0)
  {
    type metadata accessor for AudioPlaylistFeedLayoutModel(255);
    sub_21897F0C8();
    sub_218795E10(&qword_27CC0F6A0, type metadata accessor for AudioPlaylistFeedLayoutModel, &unk_219C49700);
    v1 = sub_219BE8564();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F7F0);
    }
  }
}

void sub_2197EAAA4(uint64_t a1)
{
  if (!qword_27CC1F810)
  {
    sub_218987004(255);
    sub_2197EA9EC(255);
    type metadata accessor for AudioPlaylistFeedViewController();
    sub_218795E10(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
    sub_218795E10(&qword_27CC1F7F8, sub_2197EA9EC, MEMORY[0x277D6DF38]);
    sub_218795E10(&qword_27CC1F818, type metadata accessor for AudioPlaylistFeedViewController, &unk_219CD28A8);
    sub_218795E10(&qword_27CC13CC0, type metadata accessor for AudioPlaylistFeedLayoutModel, &unk_219C49738);
    v1 = sub_219BE9794();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F810);
    }
  }
}

void sub_2197EAC24(uint64_t a1)
{
  if (!qword_27CC1F820)
  {
    sub_218987004(255);
    sub_2197EA9EC(255);
    type metadata accessor for AudioPlaylistFeedViewController();
    sub_218795E10(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
    sub_218795E10(&qword_27CC1F7F8, sub_2197EA9EC, MEMORY[0x277D6DF38]);
    sub_218795E10(&qword_27CC1F818, type metadata accessor for AudioPlaylistFeedViewController, &unk_219CD28A8);
    v1 = sub_219BEA1C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F820);
    }
  }
}

void sub_2197EAD60(uint64_t a1)
{
  if (!qword_27CC1F850)
  {
    sub_2197EA9EC(255);
    type metadata accessor for AudioPlaylistFeedBlueprintLayoutBuilder();
    sub_2197EAE9C(255);
    sub_218795E10(&qword_27CC1F7F8, sub_2197EA9EC, MEMORY[0x277D6DF38]);
    sub_218795E10(&qword_27CC1F860, type metadata accessor for AudioPlaylistFeedBlueprintLayoutBuilder, &unk_219C95470);
    sub_218795E10(&qword_27CC1F868, sub_2197EAE9C, MEMORY[0x277D6E7B8]);
    v1 = sub_219BEA4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F850);
    }
  }
}

void sub_2197EAE9C(uint64_t a1)
{
  if (!qword_27CC1F858)
  {
    type metadata accessor for AudioPlaylistFeedLayoutModel(255);
    sub_21897F120();
    sub_218795E10(&qword_27CC13CC0, type metadata accessor for AudioPlaylistFeedLayoutModel, &unk_219C49738);
    v1 = sub_219BE9974();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F858);
    }
  }
}

void sub_2197EAF54(uint64_t a1)
{
  if (!qword_27CC1F870)
  {
    sub_218987004(255);
    sub_2197EA6A0(255);
    type metadata accessor for AudioPlaylistFeedViewController();
    sub_218795E10(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
    sub_218795E10(&qword_27CC1F840, sub_2197EA6A0, MEMORY[0x277D6DC88]);
    sub_218795E10(&qword_27CC1F818, type metadata accessor for AudioPlaylistFeedViewController, &unk_219CD28A8);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F870);
    }
  }
}

void sub_2197EB090(uint64_t a1)
{
  if (!qword_27CC1F878)
  {
    sub_218987004(255);
    sub_218795E10(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
    v1 = sub_219BE8ED4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F878);
    }
  }
}

void sub_2197EB124(uint64_t a1)
{
  if (!qword_27CC1F880)
  {
    sub_2197EA6A0(255);
    sub_218987004(255);
    sub_218795E10(&qword_27CC1F840, sub_2197EA6A0, MEMORY[0x277D6DC88]);
    sub_218795E10(&qword_27CC1F888, sub_218987004, MEMORY[0x277D6D8C0]);
    v1 = sub_219BE9AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F880);
    }
  }
}

void sub_2197EB210(uint64_t a1)
{
  if (!qword_27CC1F8B8)
  {
    sub_218987004(255);
    sub_218795E10(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
    sub_218795E10(&qword_27CC1D718, type metadata accessor for AudioPlaylistFeedModel, &unk_219C8F150);
    v1 = sub_219BEFCF4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F8B8);
    }
  }
}

void sub_2197EB2E8(uint64_t a1)
{
  if (!qword_27CC1F8C8)
  {
    sub_218987004(255);
    type metadata accessor for AudioPlaylistFeedServiceConfig(255);
    sub_218795E10(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
    sub_218795E10(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig, &unk_219C95088);
    sub_218795E10(&qword_27CC1D718, type metadata accessor for AudioPlaylistFeedModel, &unk_219C8F150);
    v1 = sub_219BF0084();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F8C8);
    }
  }
}

void sub_2197EB418(uint64_t a1)
{
  if (!qword_27CC1F8D8)
  {
    sub_218987004(255);
    sub_218795E10(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
    v1 = sub_219BE8EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F8D8);
    }
  }
}

void sub_2197EB4BC(uint64_t a1)
{
  if (!qword_27CC1F8E8)
  {
    sub_2197EB530(255, &qword_27CC0CA18, MEMORY[0x277D6EC60]);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F8E8);
    }
  }
}

void sub_2197EB530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioPlaylistFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for AudioPlaylistFeedModel(255);
    v8[2] = sub_218795E10(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor, &unk_219C3085C);
    v8[3] = sub_218795E10(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel, &unk_219C8F008);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2197EB624(uint64_t a1)
{
  sub_2197EB4BC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_2197EB6B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v19[3] = type metadata accessor for AudioPlaylistFeedStyler();
  v19[4] = &off_282A72F48;
  v19[0] = a1;
  sub_218718690(v19, &a5[OBJC_IVAR____TtC7NewsUI231AudioPlaylistFeedViewController_styler]);
  v11 = &a5[OBJC_IVAR____TtC7NewsUI231AudioPlaylistFeedViewController_eventHandler];
  *v11 = a2;
  *(v11 + 1) = a3;
  *&a5[OBJC_IVAR____TtC7NewsUI231AudioPlaylistFeedViewController_blueprintViewController] = a4;
  v18.receiver = a5;
  v18.super_class = ObjectType;
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  *(*&v13[OBJC_IVAR____TtC7NewsUI231AudioPlaylistFeedViewController_eventHandler] + 24) = &off_282AA1EF8;
  swift_unknownObjectWeakAssign();
  v14 = *&v13[OBJC_IVAR____TtC7NewsUI231AudioPlaylistFeedViewController_blueprintViewController];
  v15 = v13;
  v16 = v14;
  sub_219BE8744();

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

void *sub_2197EB7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for AudioPlaylistFeedRouter();
  v15[4] = &off_282A544D0;
  v15[0] = a3;
  v14[3] = type metadata accessor for AudioPlaylistFeedTracker();
  v14[4] = &off_282A97220;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A6B2F0, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_2197EB8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = type metadata accessor for AudioPlaylistFeedRouter();
  v27 = &off_282A544D0;
  v25[0] = a3;
  v23 = v8;
  v24 = &off_282A97220;
  v22[0] = a4;
  type metadata accessor for AudioPlaylistFeedEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_2197EB7D4(a1, a2, *v13, *v18, v9);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

void sub_2197EBAE0(uint64_t a1)
{
  if (!qword_280E91558)
  {
    sub_2187144E0(255);
    sub_218795E10(&qword_280E926E8, sub_2187144E0, MEMORY[0x277D31BE0]);
    v1 = sub_219BEF494();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91558);
    }
  }
}

id sub_2197EBBA8@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x6169726F74696465;
  a1[1] = 0xE90000000000006CLL;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

double sub_2197EBCE8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x8000000219D37410;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

double sub_2197EBDDC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x8000000219D37590;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

double sub_2197EBECC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x8000000219D37490;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

double sub_2197EBFB8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *a1 = 0xD00000000000001ELL;
  *(a1 + 8) = 0x8000000219D37520;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

double sub_2197EC0B0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *a1 = 0x6E69776F6C6C6F66;
  *(a1 + 8) = 0xE900000000000067;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

id sub_2197EC19C@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x657469726F766166;
  a1[1] = 0xE900000000000073;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

id sub_2197EC2D0@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x7374726F7073;
  a1[1] = 0xE600000000000000;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

id sub_2197EC3FC@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x73656C7A7A7570;
  a1[1] = 0xE700000000000000;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

id sub_2197EC528@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x77654E6C61636F6CLL;
  a1[1] = 0xE900000000000073;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

id sub_2197EC65C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  strcpy(a1, "subscription");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v7;

  return v7;
}

id sub_2197EC7A0@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x73676E6974746573;
  a1[1] = 0xE800000000000000;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

double sub_2197EC8C8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *a1 = 0x64656B696C736964;
  *(a1 + 8) = 0xEF6C656E6E616843;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

double sub_2197EC9B8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  strcpy(a1, "dislikedTopic");
  *(a1 + 14) = -4864;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

id sub_2197ECAA4@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x6974736567677573;
  a1[1] = 0xEA00000000006E6FLL;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

id sub_2197ECBE4@<X0>(void *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  if (qword_280E92F28 != -1)
  {
    swift_once();
  }

  v7 = qword_280F619A0;
  *a1 = 0x6974736567677573;
  a1[1] = 0xEA00000000006E6FLL;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v7;

  return v7;
}

uint64_t sub_2197ECD18(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2197ECDEC()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2197ECE94;

  return sub_2192398CC();
}

uint64_t sub_2197ECE94(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_2197ECF94, 0, 0);
}

uint64_t sub_2197ECF94()
{
  sub_219BF5BD4();
  *(v0 + 40) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_2197ED028, v2, v1);
}

uint64_t sub_2197ED028()
{
  v1 = *(v0 + 32);

  sub_2197ED09C(v1);

  v2 = *(v0 + 8);

  return v2();
}

double sub_2197ED09C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_219BE61B4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = (*(*(v3 + 88) + 40))(a1, *(v3 + 80), v6);
  sub_218D35F98(0);
  sub_2197ED644();
  sub_219BE6EF4();
  v9 = *(a1 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = Strong;
  if (v9)
  {
    if (Strong)
    {
      (*(v5 + 104))(v8, *MEMORY[0x277D6D518], v4);
      sub_21937D854(v8, v11);
      swift_unknownObjectRelease();
      (*(v5 + 8))(v8, v4);
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = *__swift_project_boxed_opaque_existential_1((v12 + 88), *(v12 + 112));
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = a1;

      sub_219BDD154();

      swift_unknownObjectRelease();
    }
  }

  else if (Strong)
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D6D510], v4);
    sub_21937D854(v8, v11);
    swift_unknownObjectRelease();

    (*(v5 + 8))(v8, v4);
    return result;
  }

  return result;
}

uint64_t sub_2197ED3AC()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 120));
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v4 = *(v1 + 32);
  v7 = (*(v2 + 32) + **(v2 + 32));
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_218B0699C;

  return v7(v4, ObjectType, v2);
}

uint64_t sub_2197ED510()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2187608D4;

  return sub_2197ECDCC();
}

uint64_t sub_2197ED59C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2187609C8;

  return sub_2197ED38C();
}

unint64_t sub_2197ED644()
{
  result = qword_280EE5640;
  if (!qword_280EE5640)
  {
    sub_218D35F98(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE5640);
  }

  return result;
}

uint64_t sub_2197ED6A4(uint64_t a1, uint64_t a2)
{
  v31 = *v2;
  v5 = sub_219BE61B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C72544(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 56);
  v14 = *(v6 + 16);
  v14(v11, a1, v5, v9);
  (v14)(&v11[v13], a2, v5);
  v15 = *(v6 + 88);
  v16 = v15(&v11[v13], v5);
  v17 = v16;
  v18 = *MEMORY[0x277D6D518];
  if (v16 == *MEMORY[0x277D6D518])
  {
    v19 = v15(v11, v5);
    v20 = *MEMORY[0x277D6D510];
    if (v19 == *MEMORY[0x277D6D510])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        v23 = v32;
        (*(v6 + 104))(v32, v17, v5);
        sub_21937D854(v23, v22);
        swift_unknownObjectRelease();
        v24 = *(v6 + 8);
        v24(v23, v5);
      }

      else
      {
        v24 = *(v6 + 8);
      }

      return (v24)(&v11[v13], v5);
    }

    goto LABEL_8;
  }

  v20 = *MEMORY[0x277D6D510];
  if (v16 != *MEMORY[0x277D6D510])
  {
LABEL_8:
    v29 = v15(v11, v5);
    if (v29 == *MEMORY[0x277D6D520] || v29 == v18 || v29 == v20)
    {
      return (*(v6 + 8))(&v11[v13], v5);
    }

    result = sub_219BF7514();
    __break(1u);
    return result;
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    v27 = v32;
    (*(v6 + 104))(v32, v17, v5);
    sub_21937D854(v27, v26);
    swift_unknownObjectRelease();
    v28 = *(v6 + 8);
    v28(v27, v5);
  }

  else
  {
    v28 = *(v6 + 8);
  }

  v28(&v11[v13], v5);
  return (v28)(v11, v5);
}

uint64_t sub_2197EDA68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
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

uint64_t sub_2197EDAB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2197EDB64(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v64 = a3;
  sub_218FB8548(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v53 - v6;
  sub_218950928(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v53 - v12;
  MEMORY[0x28223BE20](v13);
  v65 = &v53 - v14;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v53 - v25;
  sub_218FB8548(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v28 = v27;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v53 - v30;
  v58 = v32;
  v55 = *(v32 + 16);
  v56 = v32 + 16;
  v55(&v53 - v30, a1, v28, v29);
  v59 = v28;
  v60 = a1;
  sub_219BEB354();
  v33 = sub_2198D068C(v23);
  v34 = *(v9 + 48);
  if ((v34)(v23, 1, v8, v33) == 1)
  {
    sub_218B062D0(v23);
    sub_218F83E20(v26, v17);
    v35 = v26;
    if (v34(v17, 1, v8) == 1)
    {
      sub_218B062D0(v17);
      v36 = v59;
    }

    else
    {
      v38 = v54;
      (*(v9 + 32))(v54, v17, v8);
      sub_219BE6944();
      v36 = v59;
      sub_219BEB214();

      (*(v9 + 8))(v38, v8);
    }
  }

  else
  {
    v57 = a2;
    v37 = *(v9 + 32);
    v37(v65, v23, v8);
    sub_218F83E20(v26, v20);
    v35 = v26;
    if (v34(v20, 1, v8) == 1)
    {
      sub_218B062D0(v20);
      sub_2186D57BC(&qword_280EE5760, sub_218950928, MEMORY[0x277D6D730]);
      sub_219BF5DF4();
      sub_219BF5E84();
      v36 = v59;
      if (v67[0] != v66)
      {
        sub_218B0632C();
        sub_219BEB324();
      }

      (*(v9 + 8))(v65, v8);
    }

    else
    {
      v39 = v53;
      v37(v53, v20, v8);
      v40 = v65;
      v36 = v59;
      sub_219BEB234();
      v41 = *(v9 + 8);
      v41(v39, v8);
      v41(v40, v8);
    }

    a2 = v57;
  }

  type metadata accessor for FollowingModel(0);
  sub_218A7BAF8();
  sub_2187490E4();
  sub_2186D57BC(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v67, v67[3]);
  v42 = sub_219BE6E54();
  v43 = v61;
  if (v42)
  {
    v44 = MEMORY[0x277D6DF80];
  }

  else
  {
    sub_218A7BB4C(0);
    v46 = *(v45 + 48);
    v47 = *(v45 + 64);
    (v55)(v43, v31, v36);
    sub_218718690(v67, &v43[v46]);
    v48 = *MEMORY[0x277D6D868];
    v49 = sub_219BE6DF4();
    (*(*(v49 - 8) + 104))(&v43[v47], v48, v49);
    v44 = MEMORY[0x277D6DF78];
  }

  v51 = v62;
  v50 = v63;
  (*(v62 + 104))(v43, *v44, v63);
  a2(v43);
  (*(v51 + 8))(v43, v50);
  sub_218B062D0(v35);
  (*(v58 + 8))(v31, v36);
  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_2197EE2C4(uint64_t a1)
{
  v2 = sub_218B12C40();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2197EE304()
{
  result = qword_27CC1F918;
  if (!qword_27CC1F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F918);
  }

  return result;
}

uint64_t sub_2197EE358()
{
  sub_21896FA3C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = *(v0 + 24);
  v9 = sub_219BDFA44();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = v8;
  sub_2187B14CC(v28, &v23, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v24 + 1))
  {
    sub_21875F93C(&v23, v25);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_2187448D0(&v23, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
  }

  v22[1] = 0xF000000000000038;
  v24 = 0u;
  v23 = 0u;
  sub_2189B4E2C(v7, v4);
  sub_2187B14CC(v30, v25, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_2189B4EAC(v4, v16 + v13);
  v17 = v16 + v14;
  v18 = v25[1];
  *v17 = v25[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  v19 = (v16 + v15);
  v20 = (v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = 0;
  v19[1] = 0;
  *v20 = v11;
  v20[1] = v10;
  v20[2] = v12;

  sub_2188202A8(v10);
  sub_2186CF94C(0);
  sub_2197EE97C(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v10, v12);
  sub_2187448D0(v28, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v30, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v7);
  sub_2187448D0(&v23, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  return 1;
}

uint64_t sub_2197EE97C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2197EE9C4(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NameLogoMastheadModel(0);
  return sub_219BE1BA4();
}

uint64_t sub_2197EEAC8()
{
  v7 = type metadata accessor for ChannelsSearchFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v7);
  v2 = sub_219BEF874();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2187089D4(0);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = sub_219BEF554();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2186FEEB8(0);
  sub_219BEDD44();
  sub_219BEDCA4();

  sub_219BEDCC4();
  sub_219BEDC94();
  sub_219BEDC84();
  sub_219BEDCF4();
  sub_219BEDD04();
  sub_219BEDCD4();
  sub_219BEDCE4();
  sub_219BEDD74();
  sub_219BEDD14();
  sub_2197EF344(&qword_280EA3A90, type metadata accessor for ChannelsSearchFeedGroupConfigData, &unk_219CA862C);
  sub_2197EF344(&qword_280EA3A98, type metadata accessor for ChannelsSearchFeedGroupConfigData, &unk_219CA8604);
  return sub_219BEDD34();
}

uint64_t sub_2197EED8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197EF2E0(0, &qword_280E8C9C0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EF28C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_2197EF344(&qword_280E90808, MEMORY[0x277D33478], MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for ChannelsSearchFeedGroupConfigData(0) + 20)) = 1;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2197EF004(void *a1)
{
  v3 = v1;
  sub_2197EF2E0(0, &qword_27CC1F920, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197EF28C();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_2197EF344(&qword_280E90810, MEMORY[0x277D33478], MEMORY[0x277D33480]);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for ChannelsSearchFeedGroupConfigData(0) + 20));
    v11[13] = 1;
    sub_218C94574();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2197EF1E4(uint64_t a1)
{
  v2 = sub_2197EF28C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197EF220(uint64_t a1)
{
  v2 = sub_2197EF28C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2197EF28C()
{
  result = qword_280EA3AB0;
  if (!qword_280EA3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3AB0);
  }

  return result;
}

void sub_2197EF2E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197EF28C();
    v7 = a3(a1, &type metadata for ChannelsSearchFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2197EF344(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2197EF3A0()
{
  result = qword_27CC1F928;
  if (!qword_27CC1F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F928);
  }

  return result;
}

unint64_t sub_2197EF3F8()
{
  result = qword_280EA3AA0;
  if (!qword_280EA3AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3AA0);
  }

  return result;
}

unint64_t sub_2197EF450()
{
  result = qword_280EA3AA8;
  if (!qword_280EA3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3AA8);
  }

  return result;
}

uint64_t type metadata accessor for SportsManagementDetailModel(uint64_t a1)
{
  result = qword_27CC1F930;
  if (!qword_27CC1F930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2197EF4F0(uint64_t a1)
{
  result = type metadata accessor for SportsModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TagModel();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2197EF568()
{
  v1 = v0;
  v2 = type metadata accessor for SportsModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsManagementDetailModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197EFBDC(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = [*(*v7 + 16) identifier];
    v9 = sub_219BF5414();
  }

  else
  {
    sub_218A3A4F8(v7, v4);
    v10 = [*(*&v4[*(v2 + 24)] + 16) identifier];
    v9 = sub_219BF5414();

    sub_2197EFC40(v4, type metadata accessor for SportsModel);
  }

  return v9;
}

uint64_t sub_2197EF6F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2197EFB98(&qword_27CC1F958, &unk_219CA881C);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2197EF7FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SportsModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsManagementDetailModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197EFBDC(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2197EFC40(v9, type metadata accessor for SportsManagementDetailModel);
    v10 = *MEMORY[0x277D6D5D8];
    v11 = sub_219BE63D4();
    return (*(*(v11 - 8) + 104))(a1, v10, v11);
  }

  else
  {
    sub_218A3A4F8(v9, v6);
    v13 = *(*&v6[*(v4 + 20)] + 16);
    sub_2197EFC40(v6, type metadata accessor for SportsModel);
    v14 = sub_219BE63D4();
    if (v13)
    {
      v15 = MEMORY[0x277D6D5E0];
    }

    else
    {
      v15 = MEMORY[0x277D6D5D8];
    }

    return (*(*(v14 - 8) + 104))(a1, *v15, v14);
  }
}

uint64_t sub_2197EF9D4@<X0>(uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197EFBDC(v6, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2197EFC40(v5, type metadata accessor for SportsManagementDetailModel);
    v7 = *MEMORY[0x277D6D580];
    v8 = sub_219BE6244();
    return (*(*(v8 - 8) + 104))(a2, v7, v8);
  }

  else
  {
    v10 = *MEMORY[0x277D6D588];
    v11 = sub_219BE6244();
    (*(*(v11 - 8) + 104))(a2, v10, v11);
    return sub_2197EFC40(v5, type metadata accessor for SportsManagementDetailModel);
  }
}

uint64_t sub_2197EFB98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportsManagementDetailModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2197EFBDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementDetailModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197EFC40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2197EFCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  sub_2197EFFDC(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v13 + 56);
  sub_2197EFBDC(a1, v12);
  sub_2197EFBDC(a2, v12 + v14);
  type metadata accessor for SportsManagementDetailModel(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *(v12 + v14);
      v17 = [*(v15 + 16) identifier];
      v18 = sub_219BF5414();
      v20 = v19;

      v21 = [*(v16 + 16) identifier];
      v22 = sub_219BF5414();
      v24 = v23;

      if (v18 == v22 && v20 == v24)
      {
        v26 = 1;
      }

      else
      {
        v26 = sub_219BF78F4();
      }

      return v26 & 1;
    }

LABEL_11:
    sub_2197EFC40(v12 + v14, type metadata accessor for SportsManagementDetailModel);
    v26 = 0;
    return v26 & 1;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2197EFC40(v12, type metadata accessor for SportsModel);
    goto LABEL_11;
  }

  sub_218A3A4F8(v12, v9);
  sub_218A3A4F8(v12 + v14, v6);
  v27 = [*(*&v9[*(v4 + 24)] + 16) identifier];
  v28 = sub_219BF5414();
  v30 = v29;

  v31 = [*(*&v6[*(v4 + 24)] + 16) identifier];
  v32 = sub_219BF5414();
  v34 = v33;

  if (v28 == v32 && v30 == v34)
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_219BF78F4();
  }

  sub_2197EFC40(v6, type metadata accessor for SportsModel);
  sub_2197EFC40(v9, type metadata accessor for SportsModel);
  return v26 & 1;
}

void sub_2197EFFDC(uint64_t a1)
{
  if (!qword_27CC1F968)
  {
    type metadata accessor for SportsManagementDetailModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1F968);
    }
  }
}

id sub_2197F0040(uint64_t a1, uint64_t a2)
{
  sub_21899E550(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D743F8];
  v6 = v3;
  v7 = [v4 systemFontOfSize:15.0 weight:v5];
  *(inited + 64) = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  *(inited + 40) = v7;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_21899E5A8(inited + 32);
  v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v9 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v10 = sub_219BF5204();

  v11 = [v8 initWithString:v9 attributes:v10];

  return v11;
}

id sub_2197F01C0(void *a1)
{
  v2 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:20.0];
  v3 = [a1 imageByApplyingSymbolConfiguration_];
  if (!v3)
  {
    v3 = a1;
  }

  v4 = [objc_opt_self() labelColor];
  v5 = [v3 imageWithTintColor:v4 renderingMode:2];

  return v5;
}

id sub_2197F029C(uint64_t a1, uint64_t a2)
{
  sub_21899E550(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D74418];
  v6 = v3;
  v7 = [v4 systemFontOfSize:13.0 weight:v5];
  v8 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x277D740C0];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 secondaryLabelColor];
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 80) = v12;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v14 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v15 = sub_219BF5204();

  v16 = [v13 initWithString:v14 attributes:v15];

  return v16;
}

void sub_2197F0488(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  sub_21872BDF0(0, qword_280EBE768, type metadata accessor for ForYouAudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  sub_21872BDF0(0, qword_280EBC960, type metadata accessor for UpNextAudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - v7;
  sub_2197F1734(0, &qword_280E8CF38, MEMORY[0x277D844C8]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197F1598();
  v14 = v64;
  sub_219BF7B34();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v51 = 0;
  v52 = v11;
  v54 = a1;
  v55 = v8;
  v53 = v5;
  v15 = sub_219BF7754();
  v16 = v15;
  v61 = *(v15 + 16);
  if (!v61)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v59 = v10;
  v60 = v15 + 32;
  v57 = v15;
  v58 = v13;
  do
  {
    v62 = v18;
    while (1)
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
        return;
      }

      v19 = v60 + 32 * v17;
      v21 = *v19;
      v20 = *(v19 + 8);
      v64 = *(v19 + 16);
      v22 = *(v19 + 24);
      v23 = qword_280ED1F78;

      if (v23 != -1)
      {
        swift_once();
      }

      v63 = v17 + 1;
      v24 = off_280ED1F80;
      if (!*(off_280ED1F80 + 2))
      {
        break;
      }

      sub_219BF7AA4();
      sub_219BF5524();
      sub_219BF7AC4();
      if (!v22)
      {
        MEMORY[0x21CECE850](v64);
      }

      v25 = sub_219BF7AE4();
      v26 = v24 + 56;
      v27 = -1 << v24[32];
      v28 = v25 & ~v27;
      if (((*&v24[((v28 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v28) & 1) == 0)
      {
        break;
      }

      v29 = ~v27;
      v30 = *(v24 + 6);
      while (1)
      {
        v31 = v30 + 32 * v28;
        v32 = *(v31 + 16);
        v33 = *(v31 + 24);
        v34 = *v31 == v21 && *(v31 + 8) == v20;
        if (!v34 && (sub_219BF78F4() & 1) == 0)
        {
          goto LABEL_15;
        }

        if ((v33 & 1) == 0)
        {
          break;
        }

        if (v22)
        {
          goto LABEL_26;
        }

LABEL_15:
        v28 = (v28 + 1) & v29;
        if (((*&v26[(v28 >> 3) & 0xFFFFFFFFFFFFFF8] >> v28) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      if (v32 == v64)
      {
        v35 = v22;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        goto LABEL_15;
      }

LABEL_26:

      v18 = v62;
      v17 = v63;
      v13 = v58;
      v10 = v59;
      v16 = v57;
      if (v63 == v61)
      {
        goto LABEL_35;
      }
    }

LABEL_28:
    v18 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_218C38080(0, *(v18 + 16) + 1, 1);
      v18 = v69;
    }

    v13 = v58;
    v10 = v59;
    v16 = v57;
    v38 = *(v18 + 16);
    v37 = *(v18 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_218C38080((v37 > 1), v38 + 1, 1);
      v18 = v69;
    }

    *(v18 + 16) = v38 + 1;
    v39 = v18 + 32 * v38;
    *(v39 + 32) = v21;
    *(v39 + 40) = v20;
    v17 = v63;
    *(v39 + 48) = v64;
    *(v39 + 56) = v22;
  }

  while (v17 != v61);
LABEL_35:

  MEMORY[0x28223BE20](v40);
  *(&v51 - 2) = v13;
  v41 = v51;
  sub_218D2A748(MEMORY[0x277D84F98], sub_2197F15EC, (&v51 - 4), v18);
  v43 = v42;

  AudioFeedGroupKnobs = type metadata accessor for UpNextAudioFeedGroupKnobs(0);
  v65 = 0x7478654E7075;
  v66 = 0xE600000000000000;
  v67 = 0;
  v68 = 1;
  sub_2186F6C50(&qword_280EBC9B0, type metadata accessor for UpNextAudioFeedGroupKnobs, &unk_219C8F9C4);
  v45 = v55;
  sub_219BF76E4();
  v46 = v41;
  if (v41)
  {

    (*(*(AudioFeedGroupKnobs - 8) + 56))(v45, 1, 1, AudioFeedGroupKnobs);
    v46 = 0;
  }

  v48 = v53;
  v47 = v54;
  v49 = type metadata accessor for ForYouAudioFeedGroupKnobs(0);
  v65 = 0x756F59726F66;
  v66 = 0xE600000000000000;
  v67 = 0;
  v68 = 1;
  sub_2186F6C50(&qword_280EBE7B0, type metadata accessor for ForYouAudioFeedGroupKnobs, &unk_219CB9EA4);
  sub_219BF76E4();
  if (v46)
  {

    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
  }

  v50 = v52;
  sub_21872B268(v55, v48, v43, v56);
  (*(v50 + 8))(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_2197F0B30(uint64_t a1, uint64_t *a2)
{
  v20[1] = a1;
  sub_21872BDF0(0, qword_280EBBBE8, type metadata accessor for CuratedAudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for CuratedAudioFeedGroupKnobs(0);
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
  sub_2197F1734(0, &qword_280E8CF38, MEMORY[0x277D844C8]);
  sub_2186F6C50(&qword_280EBBC40, type metadata accessor for CuratedAudioFeedGroupKnobs, &unk_219CC9E2C);
  v17 = v22;
  sub_219BF7734();
  if (v17)
  {

    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_21872BF04(v8, qword_280EBBBE8, type metadata accessor for CuratedAudioFeedGroupKnobs);
  }

  else
  {
    v19 = *(v10 + 56);
    v19(v8, 0, 1, v9);
    sub_2187355C8(v8, v12, type metadata accessor for CuratedAudioFeedGroupKnobs);
    sub_2197F1608(v12, v5);
    v19(v5, 0, 1, v9);

    sub_2199D6880(v5, v13, v14);
    return sub_2197F166C(v12);
  }
}

void sub_2197F0DFC(void *a1)
{
  v2 = v1;
  v60 = type metadata accessor for CuratedAudioFeedGroupKnobs(0);
  v56 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v52 - v6;
  sub_21872BDF0(0, &qword_27CC1F970, sub_2197F16C8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  sub_2197F1734(0, &qword_27CC1F980, MEMORY[0x277D84538]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197F1598();
  sub_219BF7B44();
  v62 = 0x7478654E7075;
  v63 = 0xE600000000000000;
  v64 = 0;
  v65 = 1;
  type metadata accessor for UpNextAudioFeedGroupKnobs(0);
  sub_2186F6C50(&qword_27CC1F668, type metadata accessor for UpNextAudioFeedGroupKnobs, &unk_219C8F99C);
  v18 = v66;
  sub_219BF7834();
  if (v18)
  {
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v54 = v9;
    v55 = v12;
    v57 = v15;
    v19 = type metadata accessor for AudioFeedGroupKnobs(0);
    v62 = 0x756F59726F66;
    v63 = 0xE600000000000000;
    v64 = 0;
    v65 = 1;
    type metadata accessor for ForYouAudioFeedGroupKnobs(0);
    v58 = v17;
    sub_2186F6C50(&qword_27CC1F988, type metadata accessor for ForYouAudioFeedGroupKnobs, &unk_219CB9E7C);
    sub_219BF7834();
    v66 = 0;
    v20 = *(v2 + *(v19 + 24));
    v21 = v20 + 64;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 64);
    v25 = (v22 + 63) >> 6;
    v52 = v20;

    v26 = 0;
    v53 = v14;
    v27 = v61;
    if (v24)
    {
      while (1)
      {
        v28 = v26;
LABEL_14:
        v31 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v32 = v31 | (v28 << 6);
        v33 = (*(v52 + 48) + 16 * v32);
        v35 = *v33;
        v34 = v33[1];
        sub_2197F1608(*(v52 + 56) + *(v56 + 72) * v32, v27);
        sub_2197F16C8(0);
        v37 = v36;
        v38 = *(v36 + 48);
        v39 = v54;
        *v54 = v35;
        v39[1] = v34;
        v40 = v27;
        v41 = v39;
        sub_2187355C8(v40, v39 + v38, type metadata accessor for CuratedAudioFeedGroupKnobs);
        (*(*(v37 - 8) + 56))(v41, 0, 1, v37);

        v30 = v28;
LABEL_15:
        v42 = v55;
        sub_2197F1798(v41, v55);
        sub_2197F16C8(0);
        v43 = (*(*(v37 - 8) + 48))(v42, 1, v37);
        v44 = v57;
        if (v43 == 1)
        {

          (*(v44 + 8))(v58, v53);
          return;
        }

        v26 = v30;
        v45 = v42;
        v46 = *v42;
        v47 = v45[1];
        v48 = v59;
        sub_2187355C8(v45 + *(v37 + 48), v59, type metadata accessor for CuratedAudioFeedGroupKnobs);
        v62 = v46;
        v63 = v47;
        v64 = 0;
        v65 = 1;
        sub_2186F6C50(&qword_27CC10128, type metadata accessor for CuratedAudioFeedGroupKnobs, &unk_219CC9E04);
        v49 = v53;
        v50 = v66;
        sub_219BF7834();
        v66 = v50;
        if (v50)
        {
          break;
        }

        sub_2197F166C(v48);

        v27 = v61;
        if (!v24)
        {
          goto LABEL_7;
        }
      }

      sub_2197F166C(v48);

      (*(v44 + 8))(v58, v49);
    }

    else
    {
LABEL_7:
      if (v25 <= v26 + 1)
      {
        v29 = v26 + 1;
      }

      else
      {
        v29 = v25;
      }

      v30 = v29 - 1;
      while (1)
      {
        v28 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v28 >= v25)
        {
          sub_2197F16C8(0);
          v37 = v51;
          v41 = v54;
          (*(*(v51 - 8) + 56))(v54, 1, 1, v51);
          v24 = 0;
          goto LABEL_15;
        }

        v24 = *(v21 + 8 * v28);
        ++v26;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_2197F14A4()
{
  v0 = sub_2194B4C08(&unk_282A29C68);
  result = swift_arrayDestroy();
  off_280ED1F80 = v0;
  return result;
}

uint64_t sub_2197F14F0(uint64_t a1)
{
  v2 = sub_2197F1598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197F152C(uint64_t a1)
{
  v2 = sub_2197F1598();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2197F1598()
{
  result = qword_280ED1F60;
  if (!qword_280ED1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1F60);
  }

  return result;
}

uint64_t sub_2197F1608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedAudioFeedGroupKnobs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197F166C(uint64_t a1)
{
  v2 = type metadata accessor for CuratedAudioFeedGroupKnobs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2197F16C8(uint64_t a1)
{
  if (!qword_27CC1F978)
  {
    type metadata accessor for CuratedAudioFeedGroupKnobs(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1F978);
    }
  }
}

void sub_2197F1734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2197F1598();
    v7 = a3(a1, &type metadata for AudioFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2197F1798(uint64_t a1, uint64_t a2)
{
  sub_21872BDF0(0, &qword_27CC1F970, sub_2197F16C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2197F182C()
{
  result = qword_280ED1F68;
  if (!qword_280ED1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1F68);
  }

  return result;
}

unint64_t sub_2197F1884()
{
  result = qword_280ED1F50;
  if (!qword_280ED1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1F50);
  }

  return result;
}

unint64_t sub_2197F18DC()
{
  result = qword_280ED1F58;
  if (!qword_280ED1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1F58);
  }

  return result;
}

uint64_t sub_2197F1934(void *a1)
{
  sub_218C19FB4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for UserNotification.IssueData(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v10);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UserNotification.DeliveryStatus(0);
  *&v14 = MEMORY[0x28223BE20](v13 - 8).n128_u64[0];
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 notification];
  v18 = [v17 request];

  sub_218C1A090();
  (*(*(v19 - 8) + 56))(v16, 2, 2, v19);
  v20 = objc_allocWithZone(type metadata accessor for UserNotification(0));
  v21 = sub_2196575B8(v18, v16);

  sub_218A7A6E8(v21 + OBJC_IVAR____TtC7NewsUI216UserNotification_kind, v12);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_2197F20E8(v12, v9);
    v22 = *v9;
    v23 = *(*v9 + 16);
    if (v23)
    {
      if (v23 == 1)
      {
        v25 = v22[4];
        v24 = v22[5];
        v26 = v22[7];
        v27 = v22[9];
        v28 = qword_280E8D870;

        v49[1] = v26;

        v49[0] = v27;

        if (v28 != -1)
        {
          swift_once();
        }

        v29 = qword_280F61750;
        v30 = sub_219BF61D4();
        sub_2186DDFEC(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_219C09BA0;
        *(v31 + 56) = MEMORY[0x277D837D0];
        *(v31 + 64) = sub_2186FC3BC();
        *(v31 + 32) = v25;
        *(v31 + 40) = v24;

        sub_219BE5314("Received issue notification response for 1 issue: %@", 52, 2, &dword_2186C1000, v29, v30, v31);

        v32 = swift_allocObject();
        v33 = MEMORY[0x277D84F90];
        *(v32 + 16) = v25;
        *(v32 + 24) = v24;
        *(v32 + 32) = v33;
        *(v32 + 56) = 0x4000000000000000;
        *v6 = v32 | 0x5000000000000000;
        (*(v4 + 104))(v6, *MEMORY[0x277D6E710], v3);
        sub_2186DDFEC(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
        swift_allocObject();
        v34 = sub_219BE3014();

        goto LABEL_17;
      }

      if (qword_280E8D870 != -1)
      {
        swift_once();
      }

      v45 = qword_280F61750;
      v46 = sub_219BF61D4();
      sub_219BE5314("Received issue notification response for multiple issues", 56, 2, &dword_2186C1000, v45, v46, MEMORY[0x277D84F90]);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_219C1E930;
      *(v47 + 32) = 2;
      *v6 = v47 | 0x6000000000000006;
      (*(v4 + 104))(v6, *MEMORY[0x277D6E710], v3);
      sub_2186DDFEC(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v44 = sub_219BE3014();
    }

    else
    {
      if (qword_280E8D870 != -1)
      {
        swift_once();
      }

      v42 = qword_280F61750;
      v43 = sub_219BF61F4();
      sub_219BE5314("Received issue notification response with no issues", 51, 2, &dword_2186C1000, v42, v43, MEMORY[0x277D84F90]);
      sub_2197F214C();
      swift_allocError();
      sub_2186DDFEC(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v44 = sub_219BE2FF4();
    }

    v34 = v44;

LABEL_17:
    v40 = type metadata accessor for UserNotification.IssueData;
    v41 = v9;
    goto LABEL_18;
  }

  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v35 = qword_280F61750;
  v36 = sub_219BF61F4();
  sub_219BE5314("IssueNotificationResponseHandler cannot handle non-issue notification responses", 79, 2, &dword_2186C1000, v35, v36, MEMORY[0x277D84F90]);
  v37 = sub_219BE8DC4();
  sub_21953BAF0(v38);
  swift_allocError();
  (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D6E2B0], v37);
  sub_2186DDFEC(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v34 = sub_219BE2FF4();

  v40 = type metadata accessor for UserNotification.Kind;
  v41 = v12;
LABEL_18:
  sub_2197F21A0(v41, v40);
  return v34;
}

uint64_t sub_2197F20E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotification.IssueData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2197F214C()
{
  result = qword_27CC1F990;
  if (!qword_27CC1F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F990);
  }

  return result;
}

uint64_t sub_2197F21A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2197F2214()
{
  result = qword_27CC1F998;
  if (!qword_27CC1F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F998);
  }

  return result;
}

uint64_t sub_2197F2268(void *a1)
{
  sub_2197F2BAC(0, &qword_27CC1F9C8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197F2A98();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    type metadata accessor for DateRangeTagFeedGroup(0);
    v9[14] = 1;
    sub_219BED8D4();
    sub_2197F2C10(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_2197F2430(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_219BED8D4();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197F2BAC(0, &qword_27CC1F9B8, MEMORY[0x277D844C8]);
  v20 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DateRangeTagFeedGroup(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197F2A98();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v9;
    v13 = v18;
    v12 = v19;
    v22 = 0;
    *v11 = sub_219BF76F4();
    v11[1] = v14;
    v21 = 1;
    sub_2197F2C10(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v8, v20);
    (*(v16 + 32))(v11 + *(v15 + 20), v5, v12);
    sub_2197F2AEC(v11, v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2197F2B50(v11);
  }
}

uint64_t sub_2197F2764(uint64_t a1)
{
  v2 = sub_2197F2A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197F27A0(uint64_t a1)
{
  v2 = sub_2197F2A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2197F290C(uint64_t a1)
{
  result = sub_2197F2C10(&qword_27CC1A520, type metadata accessor for DateRangeTagFeedGroup, &unk_219CA8E3C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2197F2964(void *a1)
{
  a1[1] = sub_2197F2C10(&qword_27CC1F9B0, type metadata accessor for DateRangeTagFeedGroup, &unk_219CA8D68);
  a1[2] = sub_2197F2C10(&unk_27CC1C710, type metadata accessor for DateRangeTagFeedGroup, &unk_219CA8E14);
  result = sub_2197F2C10(&unk_27CC1C820, type metadata accessor for DateRangeTagFeedGroup, &unk_219CA8DEC);
  a1[3] = result;
  return result;
}

uint64_t sub_2197F2A10(uint64_t a1)
{
  v2 = sub_2197F2C10(&qword_27CC1F9B0, type metadata accessor for DateRangeTagFeedGroup, &unk_219CA8D68);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_2197F2A98()
{
  result = qword_27CC1F9C0;
  if (!qword_27CC1F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F9C0);
  }

  return result;
}