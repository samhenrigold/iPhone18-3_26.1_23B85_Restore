void MTEpisode.listenNowReason.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v2 listenNowEpisode])
  {
    goto LABEL_28;
  }

  v9 = [v2 podcast];
  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = v9;
  if ([v2 isVisuallyPlayed])
  {

    *a1 = 1;
    *(a1 + 8) = 1;
    return;
  }

  if (([v2 isPartiallyPlayed] & 1) == 0 && (objc_msgSend(v2, sel_isPartiallyPlayedBackCatalogItem) & 1) == 0 && !objc_msgSend(v2, sel_isPlayheadPartiallyPlayed))
  {
    sub_1D9176E2C();
    sub_1D9176CCC();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
    if (([v10 subscribed] & 1) == 0)
    {
      if ([v2 isBookmarked])
      {
        [v2 lastBookmarkedDate];
        v15 = v14;
        [v10 lastDatePlayed];
        if (v16 < v15)
        {
          goto LABEL_19;
        }
      }
    }

    [v10 lastDatePlayed];
    if (v17 > 0.0)
    {
      if ([v2 episodeLevel])
      {
      }

      else
      {
        [v2 pubDate];
        v24 = v23;

        if (v13 < v24 + 5184000.0)
        {
          v20 = 2;
LABEL_26:
          *a1 = v20;
          v11 = 1;
          goto LABEL_29;
        }
      }

      v20 = 3;
      goto LABEL_26;
    }

    if ([v10 subscribed])
    {
      [v10 addedDate];
      v19 = v18;

      if (v13 >= v19 + 5184000.0)
      {
        v20 = 5;
      }

      else
      {
        v20 = 4;
      }

      goto LABEL_26;
    }

    if ([v2 isBookmarked])
    {
LABEL_19:
      [v2 lastBookmarkedDate];
      v22 = v21;

      if (v13 >= v22 + 5184000.0)
      {
        v20 = 7;
      }

      else
      {
        v20 = 6;
      }

      goto LABEL_26;
    }

LABEL_28:
    *a1 = 0;
    v11 = 256;
    goto LABEL_29;
  }

  *a1 = 0;
  v11 = 1;
LABEL_29:
  *(a1 + 8) = v11;
}

void sub_1D8D54D38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  v4 = sub_1D8D54E74(&qword_1EDCD09C8, &qword_1EDCD09D0, 0x1E695D630);
  v5 = 0;
  v12[1] = MEMORY[0x1DA72A0A0](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1D8D418D4(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1D8D54E74(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D8CF2154(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t _s18PodcastsFoundation14EyebrowBuilderC21listenNowReasonString6reason5style17isPlayingOrPlayed16showTypeIsSerialSSSgAA013EpisodeListenfG0O_AC5StyleOS2btFZ_0(uint64_t a1, _BYTE *a2, char a3, char a4)
{
  v4 = *a1;
  if (*(a1 + 8) != 1)
  {
    v6 = sub_1D9178A4C();
    MEMORY[0x1DA7298F0](v6);

    return 0xD000000000000016;
  }

  v5 = *a2;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        if (v5 == 1)
        {
        }

        else
        {
          v9 = sub_1D9179ACC();

          if ((v9 & 1) == 0)
          {
            if (qword_1EDCD5F00 == -1)
            {
              return sub_1D917693C();
            }

            goto LABEL_40;
          }
        }
      }

      if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }

      goto LABEL_40;
    }

    if (v4 == 4)
    {
      if (v5 == 1)
      {
      }

      else
      {
        v8 = sub_1D9179ACC();

        if ((v8 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

    goto LABEL_40;
  }

  if (v4 < 2)
  {
    if ((a3 & 1) == 0)
    {
      if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }

      goto LABEL_40;
    }

    return 0;
  }

  if (v4 == 2)
  {
    if ((a4 & 1) == 0)
    {
      if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }

      goto LABEL_40;
    }
  }

  else if ((a4 & 1) == 0)
  {
    return 0;
  }

  if (v5 == 1)
  {

    goto LABEL_36;
  }

  v10 = sub_1D9179ACC();

  if (v10)
  {
LABEL_36:
    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

    goto LABEL_40;
  }

  if (qword_1EDCD5F00 != -1)
  {
LABEL_40:
    swift_once();
  }

  return sub_1D917693C();
}

uint64_t sub_1D8D553A8(uint64_t a1)
{
  v2 = v1;
  v66 = *v2;
  v65 = type metadata accessor for EyebrowBuilder.ListContext(0);
  MEMORY[0x1EEE9AC00](v65);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - v7;
  v9 = *a1;
  LODWORD(v10) = *(a1 + 8);
  v11 = v2[24];
  v12 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v11);
  if ((*(v12 + 72))(v11, v12))
  {
    swift_beginAccess();
    v13 = v2[15];
    v64 = v10;
    if (v13)
    {
      v10 = v9;
      v14 = v2[14];

      v15 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1D8D4241C((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v18 = &v15[16 * v17];
      *(v18 + 4) = v14;
      *(v18 + 5) = v13;
      v9 = v10;
      LOBYTE(v10) = v64;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    if (v9 < 4)
    {
      v19 = v10;
    }

    else
    {
      v19 = 0;
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_33;
    }

    v60 = v9;
    v63 = v5;
    sub_1D8CFD9D8((v2 + 21), v67);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v20 = v2[19];
    v62 = v2[18];
    v61 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge);
    v21 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace);
    v22 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate);
    v23 = swift_allocObject();
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *(v23 + 64) = 0u;
    *(v23 + 80) = 0u;
    *(v23 + 96) = 0u;
    *(v23 + 112) = 0u;
    *(v23 + 128) = 0u;
    *(v23 + 159) = 0;
    *(v23 + 16) = 0u;
    *(v23 + 144) = 0u;
    sub_1D8CFD9D8(v67, v23 + 168);
    sub_1D8D423B4(v8, v23 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, type metadata accessor for EyebrowBuilder.ListContext);
    *(v23 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) = 1;
    swift_beginAccess();
    *(v23 + 144) = v62;
    *(v23 + 152) = v20;
    *(v23 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge) = v61;
    *(v23 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace) = v21;
    *(v23 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate) = v22;

    sub_1D8D2EF54();
    v24 = sub_1D8D3C1DC();
    v26 = v25;
    sub_1D8D41C00(v8, type metadata accessor for EyebrowBuilder.ListContext);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    swift_beginAccess();
    *(v23 + 16) = v24;
    *(v23 + 24) = v26;

    swift_beginAccess();
    if (*(v23 + 160) == 1)
    {
      v5 = v63;
      if (v26)
      {
        swift_beginAccess();
        *(v2 + 160) = 1;
        swift_beginAccess();
        v27 = *(v23 + 161);
        swift_beginAccess();
        *(v2 + 161) = v27;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1D8D4241C(0, *(v15 + 2) + 1, 1, v15);
        }

        v32 = *(v15 + 2);
        v31 = *(v15 + 3);
        if (v32 >= v31 >> 1)
        {
          v15 = sub_1D8D4241C((v31 > 1), v32 + 1, 1, v15);
        }

        *(v15 + 2) = v32 + 1;
        v33 = &v15[16 * v32];
        *(v33 + 4) = v24;
        *(v33 + 5) = v26;
LABEL_46:
        v44 = sub_1D8D42528(v15, v28, v29, v30);

        swift_setDeallocating();
        EyebrowBuilder.deinit();
        swift_deallocClassInstance();
        return v44;
      }

      swift_setDeallocating();
      EyebrowBuilder.deinit();
      swift_deallocClassInstance();
    }

    else
    {

      swift_setDeallocating();
      EyebrowBuilder.deinit();
      swift_deallocClassInstance();
      v5 = v63;
    }

    v9 = v60;
    LOBYTE(v10) = v64;
  }

  swift_beginAccess();
  v34 = v2[15];
  if (v34)
  {
    v35 = v9;
    v36 = v2[14];

    v15 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v38 = *(v15 + 2);
    v37 = *(v15 + 3);
    if (v38 >= v37 >> 1)
    {
      v15 = sub_1D8D4241C((v37 > 1), v38 + 1, 1, v15);
    }

    *(v15 + 2) = v38 + 1;
    v39 = &v15[16 * v38];
    *(v39 + 4) = v36;
    *(v39 + 5) = v34;
    v9 = v35;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v9 < 4)
  {
    v40 = v10;
  }

  else
  {
    v40 = 0;
  }

  if (v40)
  {
    if (*(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) && *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) == 1)
    {
    }

    else
    {
      v43 = sub_1D9179ACC();

      if ((v43 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    if (*(v15 + 2))
    {
      goto LABEL_37;
    }

LABEL_39:
    sub_1D8CFD9D8((v2 + 21), v67);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v65 = v2[18];
    v45 = v5;
    v46 = v2[19];
    v64 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge);
    v47 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace);
    v48 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate);
    v49 = swift_allocObject();
    *(v49 + 32) = 0u;
    *(v49 + 48) = 0u;
    *(v49 + 64) = 0u;
    *(v49 + 80) = 0u;
    *(v49 + 96) = 0u;
    *(v49 + 112) = 0u;
    *(v49 + 128) = 0u;
    *(v49 + 159) = 0;
    *(v49 + 16) = 0u;
    *(v49 + 144) = 0u;
    sub_1D8CFD9D8(v67, v49 + 168);
    sub_1D8D423B4(v45, v49 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, type metadata accessor for EyebrowBuilder.ListContext);
    *(v49 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) = 1;
    swift_beginAccess();
    *(v49 + 144) = v65;
    *(v49 + 152) = v46;
    *(v49 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge) = v64;
    *(v49 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace) = v47;
    *(v49 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate) = v48;

    sub_1D8D2EF54();
    v50 = sub_1D8D3C1DC();
    v52 = v51;
    sub_1D8D41C00(v45, type metadata accessor for EyebrowBuilder.ListContext);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    swift_beginAccess();
    *(v49 + 16) = v50;
    *(v49 + 24) = v52;

    if (v52)
    {
      swift_beginAccess();
      v53 = *(v49 + 160);
      swift_beginAccess();
      *(v2 + 160) = v53;
      swift_beginAccess();
      v54 = *(v49 + 161);
      swift_beginAccess();
      *(v2 + 161) = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D8D4241C(0, *(v15 + 2) + 1, 1, v15);
      }

      v56 = *(v15 + 2);
      v55 = *(v15 + 3);
      if (v56 >= v55 >> 1)
      {
        v15 = sub_1D8D4241C((v55 > 1), v56 + 1, 1, v15);
      }

      *(v15 + 2) = v56 + 1;
      v57 = &v15[16 * v56];
      *(v57 + 4) = v50;
      *(v57 + 5) = v52;
    }

    swift_beginAccess();
    v58 = *(v49 + 162);
    swift_beginAccess();
    *(v2 + 162) = v58;
    goto LABEL_46;
  }

LABEL_33:
  if (*(v15 + 2))
  {
LABEL_37:
    v41 = *(v15 + 4);
    v42 = *(v15 + 5);

    goto LABEL_38;
  }

  v41 = 0;
  v42 = 0;
LABEL_38:

  v44 = sub_1D8D3CF24(v41, v42);

  return v44;
}

Swift::String __swiftcall EpisodeListenNowReason.stringDescriptionForPrototypeUpNext()()
{
  if (*(v0 + 8))
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  else
  {
    v3 = sub_1D9178A4C();
    MEMORY[0x1DA7298F0](v3);

    v1 = 0xD000000000000016;
    v2 = 0x80000001D91D0770;
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1D8D55D60(char a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + 192);
  v7 = *(v2 + 200);
  __swift_project_boxed_opaque_existential_1((v2 + 168), v6);
  v8 = (*(v7 + 88))(v6, v7);
  result = 0;
  if ((v10 & 1) == 0 && v8 >= 1)
  {
    v11 = *(v2 + 192);
    v12 = *(v2 + 200);
    __swift_project_boxed_opaque_existential_1((v2 + 168), v11);
    v13 = (*(v12 + 96))(v11, v12);
    result = 0;
    if ((v14 & 1) == 0 && v13 >= 1)
    {
      swift_beginAccess();
      *(v2 + 161) = 1;
      swift_beginAccess();
      *(v2 + 160) = 1;
      v15 = OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style;
      if (*(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) - 1 <= 1)
      {
        MEMORY[0x1DA7298F0](0x54524F48535FLL, 0xE600000000000000);
      }

      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v16 = swift_allocObject();
      v17 = MEMORY[0x1E69E7360];
      *(v16 + 16) = xmmword_1D9189080;
      v18 = MEMORY[0x1E69E73D8];
      *(v16 + 56) = v17;
      *(v16 + 64) = v18;
      *(v16 + 32) = v8;
      v19 = sub_1D91781DC();
      v21 = v20;

      v22 = sub_1D8D3A0AC(a1 & 1, 1);
      if (!v23)
      {
        return v19;
      }

      v24 = v22;
      v25 = v23;
      if (a2)
      {
        goto LABEL_19;
      }

      if (*(v3 + v15))
      {
        v26 = sub_1D9179ACC();

        if ((v26 & 1) == 0)
        {
LABEL_19:
          sub_1D917693C();
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1D918A530;
          v29 = MEMORY[0x1E69E6158];
          *(v28 + 56) = MEMORY[0x1E69E6158];
          v30 = sub_1D8D34978();
          *(v28 + 32) = v19;
          *(v28 + 40) = v21;
          *(v28 + 96) = v29;
          *(v28 + 104) = v30;
          *(v28 + 64) = v30;
          *(v28 + 72) = v24;
          *(v28 + 80) = v25;
          v27 = sub_1D91781DC();

          return v27;
        }
      }

      else
      {
      }

      v27 = sub_1D8D41CB8(v24, v25, v19, v21);

      return v27;
    }
  }

  return result;
}

uint64_t sub_1D8D56178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

void RepublishingValueSubject.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock((*(v1 + 2) + 16));
  v4 = *(*v1 + 136);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v4]);
  os_unfair_lock_unlock((*(v1 + 2) + 16));
}

void sub_1D8D562B0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v162 = *(*v1 + 184);
  swift_getAssociatedConformanceWitness();
  v5 = sub_1D91777CC();
  v175 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v155 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v141 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v152 = &v141 - v11;
  v171 = *(*(v3 + 160) - 8);
  MEMORY[0x1EEE9AC00](v12);
  v165 = &v141 - v13;
  v169 = v14;
  v15 = sub_1D91791BC();
  v167 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v166 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v170 = &v141 - v18;
  v174 = v5;
  v19 = sub_1D91791BC();
  v20 = *(v19 - 8);
  v172 = v19;
  v173 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v158 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v141 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v151 = &v141 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v153 = &v141 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v154 = &v141 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v161 = &v141 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v156 = &v141 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v141 - v36;
  v177 = sub_1D91791BC();
  v38 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v160 = &v141 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v141 - v41;
  v178 = v4;
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v176 = &v141 - v45;
  sub_1D91777FC();
  if ((sub_1D91777DC() & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (a1)
    {
      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_76;
  }

LABEL_4:
  v164 = v24;
  v150 = v9;
  v168 = v15;
  v46 = *&v1[*(*v1 + 216)];
  os_unfair_lock_lock(v46 + 4);
  v47 = *(*v1 + 200);
  swift_beginAccess();
  v48 = *(v38 + 16);
  v159 = v47;
  v49 = v177;
  v48(v42, &v1[v47], v177);
  v50 = *(v43 + 48);
  v51 = v43;
  v52 = v178;
  if (v50(v42, 1, v178) == 1)
  {
    (*(v38 + 8))(v42, v49);
    os_unfair_lock_unlock(v46 + 4);
    return;
  }

  v163 = v46;
  v157 = v51;
  (*(v51 + 32))(v176, v42, v52);
  v1[*(*v1 + 240)] = 1;
  v53 = *(*v1 + 248);
  swift_beginAccess();
  v54 = v172;
  v55 = v173;
  v56 = *(v173 + 16);
  v148 = v173 + 16;
  v147 = v56;
  v56(v37, &v1[v53], v172);
  v57 = v175 + 48;
  v145 = *(v175 + 48);
  v149 = v145(v37, 1, v174);
  v59 = *(v55 + 8);
  v58 = v55 + 8;
  v59(v37, v54);
  v60 = *v1;
  v61 = *(*v1 + 232);
  v62 = v1[v61];
  v146 = v59;
  if ((v62 & 1) == 0)
  {
    sub_1D91777FC();
    v70 = sub_1D91777DC();
    v143 = v58;
    if (v70)
    {
      v71 = sub_1D91777FC();
      v72 = v171;
LABEL_16:
      v73 = *(*v1 + 208);
      swift_beginAccess();
      v74 = *&v1[v73];
      sub_1D91777FC();
      if ((sub_1D91777DC() & 1) == 0)
      {
        sub_1D91777FC();
        v75 = sub_1D91777DC();
        v76 = sub_1D91777FC();
        if (v75)
        {
          v72 = v171;
        }

        else
        {
          v78 = sub_1D91777DC();
          v72 = v171;
          if (v78)
          {
            goto LABEL_28;
          }

          if ((v74 | v71) < 0)
          {
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          v76 = v74 + v71;
          if (__OFADD__(v74, v71))
          {
LABEL_28:
            v76 = sub_1D91777FC();
          }

          else if (v76 < 0)
          {
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }
        }

        *&v1[v73] = v76;
      }

      swift_endAccess();
      v93 = 1;
      v1[v61] = 1;
      v94 = *(v1 + 2);
      v142 = v53;
      if (v94)
      {

        v95 = v170;
        RepublishingValueSubject.value.getter(v170);

        v93 = 0;
      }

      else
      {
        v95 = v170;
      }

      v96 = v169;
      (*(v72 + 56))(v95, v93, 1, v169);
      os_unfair_lock_unlock(v163 + 4);
      v98 = v167;
      v97 = v168;
      v99 = v166;
      (*(v167 + 16))(v166, v95, v168);
      if ((*(v72 + 48))(v99, 1, v96) == 1)
      {
        v100 = *(v98 + 8);
        v100(v95, v97);
        (*(v157 + 8))(v176, v178);
        v100(v99, v97);
        return;
      }

      v144 = v57;
      (*(v72 + 32))(v165, v99, v96);
      os_unfair_recursive_lock_lock_with_options();
      v101 = v178;
      v102 = sub_1D91777AC();
      os_unfair_recursive_lock_unlock();
      sub_1D91777FC();
      v103 = v98;
      if (sub_1D91777DC())
      {
        goto LABEL_48;
      }

      if ((v102 & 0x8000000000000000) == 0)
      {
        if (!v102)
        {
          v108 = v163;
          os_unfair_lock_lock(v163 + 4);
          if (v149 == 1)
          {
            v109 = v108 + 4;
LABEL_66:
            os_unfair_lock_unlock(v109);
            (*(v72 + 8))(v165, v169);
            (*(v103 + 8))(v170, v168);
            (*(v157 + 8))(v176, v101);
            return;
          }

          v110 = v157;
          v111 = v160;
          (*(v157 + 56))(v160, 1, 1, v101);
          v112 = v159;
          swift_beginAccess();
          (*(v38 + 40))(&v1[v112], v111, v177);
          swift_endAccess();
          v113 = *(v1 + 2);
          *(v1 + 2) = 0;
          v114 = v142;
          v115 = v172;
          v147(v153, &v1[v142], v172);
          v116 = v174;
          v117 = v161;
          (*(v175 + 56))(v161, 1, 1, v174);
          swift_beginAccess();
          (*(v173 + 40))(&v1[v114], v117, v115);
          swift_endAccess();
          os_unfair_lock_unlock(v108 + 4);
          v118 = v170;
          if (v113)
          {

            sub_1D8DB34BC(v1);
          }

          v119 = v151;
          v120 = v153;
          v147(v151, v153, v115);
          if (v145(v119, 1, v116) != 1)
          {
            v137 = v175;
            v138 = v150;
            (*(v175 + 32))(v150, v119, v116);
            os_unfair_recursive_lock_lock_with_options();
            v139 = v176;
            v140 = v178;
            sub_1D917778C();
            os_unfair_recursive_lock_unlock();

            (*(v137 + 8))(v138, v116);
            v146(v153, v115);
            (*(v171 + 8))(v165, v169);
            (*(v103 + 8))(v170, v168);
            (*(v110 + 8))(v139, v140);
            return;
          }

          v121 = v146;
          v146(v120, v115);
          (*(v171 + 8))(v165, v169);
          (*(v103 + 8))(v118, v168);
          (*(v110 + 8))(v176, v178);
          v122 = v119;
LABEL_71:
          v121(v122, v115);
          return;
        }

LABEL_48:
        os_unfair_lock_lock(v163 + 4);
        swift_beginAccess();
        v104 = *&v1[v73];
        sub_1D91777FC();
        if ((sub_1D91777DC() & 1) == 0)
        {
          sub_1D91777FC();
          v105 = sub_1D91777DC();
          v106 = sub_1D91777FC();
          if (v105)
          {
            v72 = v171;
          }

          else
          {
            v107 = sub_1D91777DC();
            v72 = v171;
            if (v107)
            {
              goto LABEL_55;
            }

            if ((v104 | v102) < 0)
            {
LABEL_83:
              __break(1u);
              goto LABEL_84;
            }

            v106 = v104 + v102;
            if (__OFADD__(v104, v102))
            {
LABEL_55:
              v106 = sub_1D91777FC();
            }

            else if (v106 < 0)
            {
LABEL_84:
              __break(1u);
              return;
            }
          }

          *&v1[v73] = v106;
        }

        swift_endAccess();
        if (v149 == 1)
        {
          v109 = v163 + 4;
          goto LABEL_66;
        }

        v123 = v157;
        v124 = v160;
        (*(v157 + 56))(v160, 1, 1, v101);
        v125 = v159;
        swift_beginAccess();
        (*(v38 + 40))(&v1[v125], v124, v177);
        swift_endAccess();
        v126 = *(v1 + 2);
        *(v1 + 2) = 0;
        v127 = v142;
        v128 = v156;
        v115 = v172;
        v147(v156, &v1[v142], v172);
        v129 = v174;
        v130 = v161;
        (*(v175 + 56))(v161, 1, 1, v174);
        swift_beginAccess();
        (*(v173 + 40))(&v1[v127], v130, v115);
        swift_endAccess();
        os_unfair_lock_unlock(v163 + 4);
        v131 = v170;
        if (v126)
        {

          sub_1D8DB34BC(v1);
        }

        v132 = v154;
        v147(v154, v128, v115);
        if (v145(v132, 1, v129) != 1)
        {
          v133 = v175;
          v134 = v152;
          (*(v175 + 32))(v152, v132, v129);
          os_unfair_recursive_lock_lock_with_options();
          v135 = v176;
          v136 = v178;
          sub_1D917778C();
          os_unfair_recursive_lock_unlock();

          (*(v133 + 8))(v134, v129);
          v146(v156, v115);
          (*(v171 + 8))(v165, v169);
          (*(v103 + 8))(v170, v168);
          (*(v123 + 8))(v135, v136);
          return;
        }

        v121 = v146;
        v146(v128, v115);
        (*(v171 + 8))(v165, v169);
        (*(v103 + 8))(v131, v168);
        (*(v123 + 8))(v176, v178);
        v122 = v132;
        goto LABEL_71;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v72 = v171;
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (a1)
      {
        v71 = a1 - 1;
        goto LABEL_16;
      }

LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v144 = v57;
  v63 = *(v60 + 208);
  swift_beginAccess();
  v64 = *&v1[v63];
  sub_1D91777FC();
  v65 = sub_1D91777DC();
  v66 = v157;
  v67 = v177;
  if (v65)
  {
    goto LABEL_31;
  }

  sub_1D91777FC();
  v68 = sub_1D91777DC();
  v69 = sub_1D91777FC();
  if ((v68 & 1) == 0)
  {
    v77 = sub_1D91777DC();
    v67 = v177;
    if (v77)
    {
      goto LABEL_23;
    }

    if (((v64 | a1) & 0x8000000000000000) == 0)
    {
      v69 = v64 + a1;
      if (!__OFADD__(v64, a1))
      {
        if ((v69 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_81;
      }

LABEL_23:
      v69 = sub_1D91777FC();
      goto LABEL_30;
    }

    goto LABEL_79;
  }

  v67 = v177;
LABEL_30:
  *&v1[v63] = v69;
LABEL_31:
  swift_endAccess();
  if (v149 == 1)
  {
    os_unfair_lock_unlock(v163 + 4);
    (*(v66 + 8))(v176, v178);
  }

  else
  {
    v79 = *(v66 + 56);
    v80 = v160;
    v81 = v178;
    v79(v160, 1, 1, v178);
    v82 = v159;
    swift_beginAccess();
    (*(v38 + 40))(&v1[v82], v80, v67);
    swift_endAccess();
    v83 = *(v1 + 2);
    *(v1 + 2) = 0;
    v84 = v147;
    v147(v164, &v1[v53], v54);
    v85 = v174;
    v86 = v161;
    (*(v175 + 56))(v161, 1, 1, v174);
    swift_beginAccess();
    (*(v173 + 40))(&v1[v53], v86, v54);
    swift_endAccess();
    os_unfair_lock_unlock(v163 + 4);
    if (v83)
    {

      sub_1D8DB34BC(v1);
      v54 = v172;
    }

    v87 = v158;
    v88 = v164;
    v84(v158, v164, v54);
    if (v145(v87, 1, v85) == 1)
    {

      v89 = v146;
      v146(v88, v54);
      (*(v157 + 8))(v176, v81);
      v89(v87, v54);
    }

    else
    {
      v90 = v175;
      v91 = v155;
      (*(v175 + 32))(v155, v87, v85);
      os_unfair_recursive_lock_lock_with_options();
      v92 = v176;
      sub_1D917778C();
      os_unfair_recursive_lock_unlock();

      (*(v90 + 8))(v91, v85);
      v146(v88, v54);
      (*(v157 + 8))(v92, v81);
    }
  }
}

uint64_t PerformanceLoadable.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 40);
  v7 = type metadata accessor for Loadable(0, *(a1 + 16), a2, a3);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v4 + v6, v7);
}

uint64_t Loadable.item.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 2, v8))
  {
    (*(v9 + 56))(a2, 1, 1, v8);
    return (*(v4 + 8))(v7, a1);
  }

  else
  {
    (*(v9 + 32))(a2, v7, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }
}

uint64_t Loadable.map<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v12);
  v17 = (*(v8 + 48))(v14, 2, v7);
  if (!v17)
  {
    (*(v8 + 32))(v10, v14, v7);
    a1(v10);
    (*(v8 + 8))(v10, v7);
  }

  return (*(*(a3 - 8) + 56))(a4, v17, 2, a3);
}

BOOL Loadable.notLoaded.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = (*(*(*(a1 + 16) - 8) + 48))(v5, 2);
  if (v6 != 1)
  {
    (*(v2 + 8))(v5, a1);
  }

  return v6 == 1;
}

uint64_t sub_1D8D5810C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  sub_1D9177AAC();
  return swift_endAccess();
}

Swift::Void __swiftcall PageContextTracker.push(_:)(PodcastsFoundation::MetricsPageContext a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 6);
  sub_1D8D5828C(&v2[4]);
  os_unfair_lock_unlock(v2 + 6);
}

uint64_t sub_1D8D58208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1D8D582AC(0, 0, a2, a3);

  v8 = *(*a1 + 16);
  v9 = *(a4 + 24);
  result = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
  }

  else if (result >= 1)
  {
    return sub_1D8F90464(result);
  }

  return result;
}

unint64_t sub_1D8D582AC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_1D8D58388(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_1D8D58494(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

char *sub_1D8D58388(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6120, &qword_1D9192128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1D8D58494(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1D8D585CC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1D8F4D954;
  }

  else
  {
    v2 = sub_1D8D586E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8D586E0(uint64_t a1)
{
  v2 = sub_1D917737C();
  sub_1D91773DC();
  v3 = sub_1D9178F4C();
  result = sub_1D917918C();
  if (result)
  {
    v5 = *(v1 + 72);
    if ((*(v1 + 240) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v1 + 160);
        v8 = *(v1 + 128);
        v7 = *(v1 + 136);

        sub_1D917740C();

        if ((*(v7 + 88))(v6, v8) == *MEMORY[0x1E69E93E8])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 136) + 8))(*(v1 + 160), *(v1 + 128));
          v9 = "SUCCESS";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x1DA72CB90](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 40);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 200);
  v13 = *(v1 + 176);
  v14 = *(v1 + 168);

  (*(v13 + 8))(v12, v14);

  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_1D8D58924()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D8D58A18()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1D8F4D8DC;
  }

  else
  {
    v2 = sub_1D8D58B48;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8D58B48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8D58BD8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8D58C7C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D8D58D9C(uint64_t a1)
{
  result = sub_1D8CFD888();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8D58EB8(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D8D58F80(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
      sub_1D917781C();
      sub_1D91780DC();
      result = sub_1D91773BC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D8D591F0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1D8D59284(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D8D59354(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D8CF3CAC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8D59428(void *a1, int a2, id a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (!a3)
    {
      v6 = objc_opt_self();
      v7 = a1;
      v8 = [v6 _applePodcastsFoundationSharedUserDefaults];
      v9 = v7;
      v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v8 setObject:v9 forKey:v14];

      return;
    }
  }

  else if (!a3)
  {
    return;
  }

  v10 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  type metadata accessor for AMSError(0);
  if (swift_dynamicCast())
  {
    sub_1D8D5C8BC();
    v11 = sub_1D9176A4C();
    if (v11 == 204 || v11 == 202)
    {
      v12 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
      v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v12 removeObjectForKey_];
    }

    else
    {
    }
  }
}

void sub_1D8D5960C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1D8D5970C(void *a1)
{
  v1 = a1[2];
  v2 = a1[6];
  v7[0] = swift_getAssociatedTypeWitness();
  v7[1] = v1;
  v7[2] = swift_getAssociatedConformanceWitness();
  v7[3] = v2;
  v3 = type metadata accessor for Publishers.CachedAssetPublisher(255, v7);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for EmitLifecycle(255, v3, WitnessTable, v5);
  return swift_getWitnessTable();
}

unint64_t sub_1D8D597F4()
{
  result = qword_1ECAB0390;
  if (!qword_1ECAB0390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB49F8, &qword_1D918B520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB0390);
  }

  return result;
}

uint64_t sub_1D8D59858(void *a1, char a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB73C0, &qword_1D91972B0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v12 - v7);
  if (a2)
  {
    *v8 = a1;
    swift_storeEnumTagMultiPayload();
    v9 = a1;
  }

  else
  {

    sub_1D8D5BC38(v10, v8);
    swift_storeEnumTagMultiPayload();
  }

  a3(v8);
  return sub_1D8D08A50(v8, &qword_1ECAB73C0, &qword_1D91972B0);
}

uint64_t FallbackProcessingStep.publisher.getter(uint64_t a1)
{
  v70 = *(a1 - 8);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v69 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 24);
  v66 = *(v4 - 8);
  v68 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 32);
  v72 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v53 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v73 = type metadata accessor for EmitLifecycle(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v67 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v53 - v13;
  v62 = *(a1 + 40);
  v56 = v4;
  v14 = swift_getAssociatedTypeWitness();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v16 = swift_getAssociatedConformanceWitness();
  v75 = v14;
  v76 = v15;
  v77 = v16;
  v78 = MEMORY[0x1E69E7288];
  v17 = sub_1D917772C();
  WitnessTable = swift_getWitnessTable();
  v20 = type metadata accessor for EmitLifecycle(255, v17, WitnessTable, v19);
  v21 = v73;
  v22 = swift_getWitnessTable();
  v58 = v22;
  v59 = v20;
  v57 = swift_getWitnessTable();
  v75 = v21;
  v76 = v20;
  v77 = v22;
  v78 = v57;
  v23 = sub_1D91776AC();
  v24 = *(v23 - 8);
  v60 = v23;
  v61 = v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v55 = &v53 - v26;
  v54 = v7;
  v27 = v63;
  (*(v7 + 48))(v72, v7, v25);
  v28 = swift_getWitnessTable();
  v29 = v27;
  AssetProcessingStep.metadataTrace.getter(a1, v28, &v75);
  v30 = sub_1D9179FEC();
  v32 = v31;
  v33 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ(AssociatedTypeWitness, AssociatedConformanceWitness);
  Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(&v75, "FallbackPreferredSource", 23, 2, 0, v30, v32, v33 & 1, v74, AssociatedTypeWitness, AssociatedConformanceWitness);

  sub_1D8D7621C(&v75);
  (*(v64 + 8))(v10, AssociatedTypeWitness);
  v34 = *(a1 + 52);
  LODWORD(v64) = *(v29 + *(a1 + 56));
  v35 = v65;
  v36 = v66;
  v37 = v56;
  (*(v66 + 16))(v65, v29 + v34, v56);
  v38 = v69;
  v39 = v70;
  (*(v70 + 16))(v69, v29, a1);
  v40 = v36;
  v41 = (*(v36 + 80) + 48) & ~*(v36 + 80);
  v42 = v41 + v68;
  v43 = (*(v39 + 80) + v41 + v68 + 1) & ~*(v39 + 80);
  v44 = swift_allocObject();
  *&v45 = v72;
  *(&v45 + 1) = v37;
  *&v46 = v54;
  *(&v46 + 1) = v62;
  *(v44 + 16) = v45;
  *(v44 + 32) = v46;
  (*(v40 + 32))(v44 + v41, v35, v37);
  *(v44 + v42) = v64;
  (*(v39 + 32))(v44 + v43, v38, a1);
  v47 = v55;
  v48 = v73;
  v49 = v74;
  sub_1D9177BDC();

  (*(v67 + 8))(v49, v48);
  v50 = v60;
  swift_getWitnessTable();
  v51 = sub_1D9177B1C();
  (*(v61 + 8))(v47, v50);
  return v51;
}

uint64_t sub_1D8D59FEC()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v13 = *(v0 + 16);
  v1 = v13;
  v8 = (v6 + 48) & ~v6;
  v14 = v3;
  v15 = v2;
  v9 = (type metadata accessor for FallbackProcessingStep(0, &v13) - 8);
  v10 = (v7 + *(*v9 + 80) + v8 + 1) & ~*(*v9 + 80);
  v11 = *(v5 + 8);
  v11(v0 + v8, v4);
  (*(*(v1 - 8) + 8))(v0 + v10, v1);
  v11(v0 + v10 + v9[15], v4);
  return swift_deallocObject();
}

uint64_t sub_1D8D5A1D0(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for EmitLifecycle(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  swift_getWitnessTable();
  sub_1D9177A8C();

  return swift_getWitnessTable();
}

void sub_1D8D5A2C4(void *a1, id a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    type metadata accessor for LocalSnapshotBag();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = a1;
    a3(v5, 0);
  }

  else
  {
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v7 = AMSError();

      a2 = 0;
    }

    v9 = a2;
    v10 = v7;
    a3(v7, 1);
  }
}

double AssetProcessingStep.metadataTrace.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(a2 + 40))(a1, a2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B28, &unk_1D918BE10);
  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1D8D5B734(&v11);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t type metadata accessor for FeedManagerBagConfiguration(uint64_t a1)
{
  result = qword_1EDCD28F0;
  if (!qword_1EDCD28F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D5A588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v97 = a6;
  v91 = a3;
  v99 = a2;
  v98 = a1;
  v95 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = sub_1D91791BC();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v92 = &v74 - v10;
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v87 = v11;
  v86 = AssociatedConformanceWitness;
  v13 = sub_1D91775FC();
  v89 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v74 - v14;
  v110 = a5;
  v94 = a4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v15 = sub_1D91791BC();
  WitnessTable = swift_getWitnessTable();
  v90 = v13;
  v85 = WitnessTable;
  v17 = sub_1D917768C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v19 = type metadata accessor for RepublishingValueSubject(255, v15, v18, MEMORY[0x1E69E7288]);
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v104[0] = v17;
  v104[1] = v19;
  v104[2] = v20;
  v105 = v21;
  sub_1D917776C();
  swift_getWitnessTable();
  sub_1D91775BC();
  swift_getWitnessTable();
  v22 = sub_1D91775AC();
  v84 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v74 - v23;
  v79 = swift_getWitnessTable();
  v83 = type metadata accessor for EmitLifecycle(0, v22, v79, v24);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v74 - v25;
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v74 - v28;
  v30 = v99;
  v31 = AssociatedTypeWitness;
  v96 = sub_1D917781C();
  v32 = v97;
  sub_1D91780FC();
  v93 = v104[0];
  if (v104[0])
  {
    v33 = type metadata accessor for UniquePipeline(0, v94, v110, v32);
    v98 = swift_getWitnessTable();
    AssetProcessingStep.metadataTrace.getter(v33, v98, &v107);
    if (!v108)
    {
      sub_1D8D08A50(&v107, &qword_1ECAB4928, &qword_1D918B380);
      v37 = v96;
LABEL_14:
      *&v101 = v93;
      AssetProcessingStep.metadataTrace.getter(v33, v98, &v107);
      v70 = swift_getWitnessTable();
      v71 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ(v37, v70);
      Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(&v107, "FromUniquePipeline", 18, 2, 0, 0, 0, v71 & 1, v104, v37, v70);
      sub_1D8D08A50(&v107, &qword_1ECAB4928, &qword_1D918B380);
      v73 = type metadata accessor for EmitLifecycle(0, v37, v70, v72);
      swift_getWitnessTable();
      v60 = sub_1D9177B1C();

      result = (*(*(v73 - 8) + 8))(v104, v73);
      goto LABEL_15;
    }

    v91 = v33;
    sub_1D8D6BCE0(&v107, v104);
    v34 = v96;
    nullsub_1();
    v100[0] = v35;
    v36 = (*(v26 + 16))(v29, v30, AssociatedTypeWitness);
    v90 = &v74;
    MEMORY[0x1EEE9AC00](v36);
    v37 = v34;
    sub_1D917809C();

    swift_getWitnessTable();
    v38 = v92;
    sub_1D917847C();

    (*(v26 + 8))(v29, AssociatedTypeWitness);
    if ((*(v26 + 48))(v38, 1, AssociatedTypeWitness) == 1)
    {
      (*(v77 + 8))(v38, v78);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B28, &unk_1D918BE10);
      if (swift_dynamicCast())
      {
        v33 = v91;
        if (*(&v102 + 1))
        {
          sub_1D8D6BCE0(&v101, &v107);
          v62 = v108;
          v63 = v109;
          __swift_project_boxed_opaque_existential_1(&v107, v108);
          (*(v63 + 8))(v100, v62, v63);
          if (v100[3])
          {
            sub_1D8D6BCE0(v100, &v101);
            v64 = v105;
            v65 = v106;
            __swift_project_boxed_opaque_existential_1(v104, v105);
            v66 = *(&v102 + 1);
            v67 = v103;
            __swift_project_boxed_opaque_existential_1(&v101, *(&v102 + 1));
            v37 = v96;
            v68 = (*(v67 + 8))(v66, v67);
            v33 = v91;
            (*(v65 + 16))("SwitchingToUniquePipelineTrace", 30, 2, v68, v69, v64, v65);

            __swift_destroy_boxed_opaque_existential_1Tm(&v101);
          }

          else
          {
            sub_1D8D08A50(v100, &qword_1ECAB4928, &qword_1D918B380);
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v107);
          goto LABEL_13;
        }

LABEL_12:
        sub_1D8D08A50(&v101, &qword_1ECAB4B20, &unk_1D918BE00);
LABEL_13:
        __swift_destroy_boxed_opaque_existential_1Tm(v104);
        goto LABEL_14;
      }
    }

    v103 = 0;
    v102 = 0u;
    v101 = 0u;
    v33 = v91;
    goto LABEL_12;
  }

  v39 = v94;
  v78 = v22;
  v40 = v32;
  v77 = type metadata accessor for UniquePipeline(0, v94, v110, v32);
  v75 = *(v30 + *(v77 + 48));
  v41 = *(v26 + 16);
  v92 = (v26 + 16);
  v93 = v41;
  v42 = v29;
  v43 = v29;
  v76 = v29;
  v44 = v31;
  v41(v43, v30, v31);
  v45 = (*(v26 + 80) + 48) & ~*(v26 + 80);
  v46 = swift_allocObject();
  v47 = v110;
  *(v46 + 2) = v39;
  *(v46 + 3) = v47;
  *(v46 + 4) = v40;
  *(v46 + 5) = v75;
  (*(v26 + 32))(&v46[v45], v42, v44);
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1D8DB26F4;
  *(v48 + 24) = v46;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1D8DB26F4;
  *(v49 + 24) = v46;
  swift_retain_n();

  v50 = v88;
  sub_1D9177B3C();

  v51 = v81;
  v52 = v90;
  Publisher.replayingBufferedMulticast()(v90, v85, v81);
  (*(v89 + 8))(v50, v52);
  v53 = v77;
  v54 = swift_getWitnessTable();
  AssetProcessingStep.metadataTrace.getter(v53, v54, v104);
  v55 = v78;
  v56 = v79;
  v57 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ(v78, v79);
  v58 = v80;
  Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(v104, "UniquePipeline", 14, 2, 0, 0, 0, v57 & 1, v80, v55, v56);
  sub_1D8D08A50(v104, &qword_1ECAB4928, &qword_1D918B380);
  (*(v84 + 8))(v51, v55);
  v59 = v83;
  swift_getWitnessTable();
  v60 = sub_1D9177B1C();
  (*(v82 + 8))(v58, v59);
  v93(v76, v30, v44);
  v104[0] = v60;
  sub_1D91780DC();

  sub_1D917810C();

LABEL_15:
  *v95 = v60;
  return result;
}

uint64_t sub_1D8D5B3D0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D8D5B4A8()
{

  return swift_deallocObject();
}

void sub_1D8D5B4E4(uint64_t a1)
{
  sub_1D8CF307C(319);
  if (v1 <= 0x3F)
  {
    sub_1D8D5BBE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D8D5B734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B20, &unk_1D918BE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

os_log_t _MTLogCategoryBag()
{
  v0 = os_log_create("com.apple.podcasts", "Bag");

  return v0;
}

uint64_t ArtworkRequest.stableFilePrefix.getter()
{
  v1 = sub_1D9177FCC();
  v28 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9177FDC();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D917825C();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v32 = 0xE000000000000000;
  v12 = *(v0 + 32);
  if (v12 != 255)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    v13 = 0xE400000000000000;
    v14 = 2003789907;
    if (v12 != 1)
    {
      v14 = 0x6C656E6E616843;
      v13 = 0xE700000000000000;
    }

    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x65646F73697045;
    }

    if (v12)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    MEMORY[0x1DA7298F0](v15, v16, v9);

    MEMORY[0x1DA7298F0](45, 0xE100000000000000);

    MEMORY[0x1DA7298F0](v29, v30);
  }

  sub_1D917824C();
  v17 = sub_1D917821C();
  v19 = v18;
  (*(v8 + 8))(v11, v7);
  if (v19 >> 60 != 15)
  {
    sub_1D8D5C0D4(&unk_1EDCD5C58, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
    sub_1D9177F9C();
    sub_1D8D752C4(v17, v19);
    sub_1D8D75318(v17, v19, v3);
    sub_1D8D75668(v17, v19);
    sub_1D9177F8C();
    v20 = (*(v28 + 8))(v3, v1);
    v21 = sub_1D8D5C1D0(v6, v20);
    (*(v26 + 8))(v6, v27);
    v29 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    v22 = sub_1D917817C();
    v24 = v23;

    MEMORY[0x1DA7298F0](v22, v24);

    sub_1D8D75668(v17, v19);
  }

  return v31;
}

void sub_1D8D5BBE8()
{
  if (!qword_1ECAAFEE0)
  {
    v0 = sub_1D91786FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAAFEE0);
    }
  }
}

uint64_t sub_1D8D5BC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for FeedManagerBagConfiguration(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD2900 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v10, qword_1EDCDE830);
  sub_1D8D5C578(v13, v12);
  if (qword_1EDCD07D0 != -1)
  {
    swift_once();
  }

  sub_1D8D5C66C(qword_1EDCD07D8, v6);
  v14 = sub_1D9176C2C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v6, 1, v14) == 1)
  {
    sub_1D8D088B4(v12, v9, &unk_1ECAB5910, &qword_1D9188C90);
    if (v16(v6, 1, v14) != 1)
    {
      sub_1D8D08A50(v6, &unk_1ECAB5910, &qword_1D9188C90);
    }
  }

  else
  {
    (*(v15 + 32))(v9, v6, v14);
    (*(v15 + 56))(v9, 0, 1, v14);
  }

  if (qword_1EDCD07A8 != -1)
  {
    swift_once();
  }

  v17 = [*(a1 + 16) BOOLForKey_];
  v18 = [v17 unsafeSnapshotSyncValue];

  if (v18)
  {
    v19 = [v18 BOOLValue];
  }

  else
  {
    v19 = v12[v10[5]];
  }

  if (qword_1EDCD07C0 != -1)
  {
    swift_once();
  }

  v20 = [*(a1 + 16) BOOLForKey_];
  v21 = [v20 unsafeSnapshotSyncValue];

  if (v21)
  {
    v22 = [v21 BOOLValue];
  }

  else
  {
    v22 = v12[v10[6]];
  }

  if (qword_1EDCD07E8 != -1)
  {
    swift_once();
  }

  v23 = [*(a1 + 16) arrayForKey_];
  v24 = [v23 unsafeSnapshotSyncValue];

  if (!v24)
  {

    goto LABEL_25;
  }

  v28 = 0;
  sub_1D91785EC();

  v25 = v28;

  if (!v25)
  {
LABEL_25:
    v25 = *&v12[v10[7]];

    sub_1D8D5DE24(v12);

    goto LABEL_26;
  }

  sub_1D8D5DE24(v12);
LABEL_26:
  result = sub_1D8D5DE80(v9, a2);
  *(a2 + v10[5]) = v19;
  *(a2 + v10[6]) = v22;
  *(a2 + v10[7]) = v25;
  return result;
}

uint64_t sub_1D8D5C0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8D5C11C()
{
  v0 = type metadata accessor for FeedManagerBagConfiguration(0);
  __swift_allocate_value_buffer(v0, qword_1EDCDE830);
  v1 = __swift_project_value_buffer(v0, qword_1EDCDE830);
  v2 = sub_1D9176C2C();
  result = (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  *(v1 + v0[5]) = 1;
  *(v1 + v0[6]) = 1;
  *(v1 + v0[7]) = &unk_1F545E078;
  return result;
}

void *sub_1D8D5C1D0(uint64_t a1, double a2)
{
  v3 = sub_1D9177FDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D5C0D4(&qword_1EDCD5C50, MEMORY[0x1E69666B0], MEMORY[0x1E69666B8]);
  v7 = sub_1D917840C();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v7 & ~(v7 >> 63), 0);
  v8 = v35;
  (*(v4 + 16))(v6, a1, v3);
  result = sub_1D91783FC();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v34;
    if (v7)
    {
      v11 = v33;
      *&v32 = *(v33 + 16);
      v31 = xmmword_1D9189080;
      v12 = v34;
      while (v32 != v12)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v12 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 32 + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v14 = swift_allocObject();
        *(v14 + 16) = v31;
        *(v14 + 56) = MEMORY[0x1E69E7508];
        *(v14 + 64) = MEMORY[0x1E69E7558];
        *(v14 + 32) = v13;
        result = sub_1D917823C();
        v35 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          v30 = result;
          v19 = v15;
          sub_1D8D41BE0((v16 > 1), v17 + 1, 1);
          v15 = v19;
          result = v30;
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = result;
        *(v18 + 40) = v15;
        ++v12;
        if (!--v7)
        {
          v34 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v12 = v34;
LABEL_12:
      v20 = v33;
      v21 = *(v33 + 16);
      if (v12 == v21)
      {
LABEL_13:

        return v8;
      }

      v32 = xmmword_1D9189080;
      while (v12 < v21)
      {
        v22 = *(v20 + 32 + v12);
        v34 = v12 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v23 = swift_allocObject();
        *(v23 + 16) = v32;
        *(v23 + 56) = MEMORY[0x1E69E7508];
        *(v23 + 64) = MEMORY[0x1E69E7558];
        *(v23 + 32) = v22;
        result = sub_1D917823C();
        v35 = v8;
        v26 = *(v8 + 16);
        v25 = *(v8 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = result;
          v29 = v24;
          sub_1D8D41BE0((v25 > 1), v26 + 1, 1);
          v24 = v29;
          result = v28;
          v8 = v35;
        }

        *(v8 + 16) = v26 + 1;
        v27 = v8 + 16 * v26;
        *(v27 + 32) = result;
        *(v27 + 40) = v24;
        v21 = *(v20 + 16);
        v12 = v34;
        if (v34 == v21)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8D5C578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedManagerBagConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D5C5DC()
{
  result = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  qword_1EDCD07D8 = result;
  return result;
}

uint64_t sub_1D8D5C614(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8D5C66C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v18 - v7;
  v9 = [*(v2 + 16) URLForKey_];
  v10 = [v9 unsafeSnapshotSyncValue];

  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  if (v10)
  {
    v14 = *(v11 - 8);
    v18[0] = *(v12 + 56);
    v18[1] = v12 + 56;
    v13(v8, 1, 1, v11);
    sub_1D8D5D764();
    sub_1D91797EC();

    if ((*(v14 + 48))(v8, 1, v11) == 1)
    {
      v15 = a2;
      v16 = 1;
    }

    else
    {
      (*(v14 + 32))(a2, v8, v11);
      v15 = a2;
      v16 = 0;
    }

    return (v18[0])(v15, v16, 1, v11);
  }

  else
  {

    return (v13)(a2, 1, 1, v11);
  }
}

uint64_t sub_1D8D5C85C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

unint64_t sub_1D8D5C8BC()
{
  result = qword_1ECAB01B8;
  if (!qword_1ECAB01B8)
  {
    type metadata accessor for AMSError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB01B8);
  }

  return result;
}

uint64_t sub_1D8D5C938@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = x8_0;
  if (*a1 != -1)
  {
    swift_once();
    v5 = x8_0;
  }

  return sub_1D8D6906C(a2, v5);
}

uint64_t sub_1D8D5CA28@<X0>(double (**a1)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  if (qword_1ECAB1478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TimeBombedTranscriptProvider.Caches(0);
  v3 = __swift_project_value_buffer(v2, qword_1ECAB1480);
  v4 = (v3 + *(v2 + 20));
  v5 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v6 = *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620) + 72)];
  v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v8 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570) + 72)];
  v9 = *v3;
  v10 = *v4;
  v11 = qword_1ECAB14A0;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = _s11DownloadersVMa(0);
  v13 = __swift_project_value_buffer(v12, qword_1ECAB14A8);
  v14 = *v13;
  v15 = *(v13 + *(v12 + 28));
  v16 = qword_1EDCD5B20;

  if (v16 != -1)
  {
    swift_once();
  }

  v29[3] = &type metadata for MAPITranscriptTimeBombedURLProvider;
  v29[4] = &protocol witness table for MAPITranscriptTimeBombedURLProvider;
  v17 = qword_1EDCD5B28;
  v18 = MEMORY[0x1E69E7CC0];
  v19 = sub_1D8D6866C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F20, &qword_1D91919A0);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v19;
  v29[0] = v17;
  v29[1] = v20;
  *a1 = sub_1D8EED4E8;
  a1[1] = v6;
  a1[2] = sub_1D8EED4EC;
  a1[3] = v6;
  a1[4] = sub_1D8EED67C;
  a1[5] = v6;
  a1[6] = sub_1D8EED6BC;
  a1[7] = v6;
  a1[8] = sub_1D8EED724;
  a1[9] = v8;
  a1[10] = sub_1D8EED74C;
  a1[11] = v8;
  a1[12] = sub_1D8EED754;
  a1[13] = v8;
  a1[14] = sub_1D8EED794;
  a1[15] = v8;
  a1[16] = sub_1D8EED7FC;
  a1[17] = v9;
  a1[18] = sub_1D8EED824;
  a1[19] = v9;
  a1[20] = sub_1D8EED860;
  a1[21] = v9;
  a1[22] = sub_1D8EED88C;
  a1[23] = v9;
  a1[24] = sub_1D8EED8B4;
  a1[25] = v10;
  a1[26] = sub_1D8EED8DC;
  a1[27] = v10;
  a1[28] = sub_1D8EED8E4;
  a1[29] = v10;
  a1[30] = sub_1D8EED910;
  a1[31] = v10;
  a1[32] = sub_1D8EEDB4C;
  a1[33] = v14;
  a1[34] = sub_1D8EEDBA0;
  a1[35] = v15;
  sub_1D8CFD9D8(v29, (a1 + 36));
  a1[41] = v17;
  v21 = v17;
  v22 = sub_1D8D688C4(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61A0, &qword_1D91921E0);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = v22;
  a1[42] = v23;
  v24 = sub_1D8D68C58(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61A8, &unk_1D91921E8);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = v24;
  a1[43] = v25;
  v26 = sub_1D8D68E84(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E38, &qword_1D9191840);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  *(v27 + 16) = v26;

  a1[44] = v27;
  return result;
}

void sub_1D8D5CF10()
{
  v0 = sub_1D9176C2C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TimeBombedTranscriptProvider.Caches(0);
  __swift_allocate_value_buffer(v3, qword_1ECAB1480);
  v4 = __swift_project_value_buffer(v3, qword_1ECAB1480);
  v5 = objc_opt_self();
  v6 = [v5 ttmlAssetURL];
  sub_1D9176B9C();

  v7 = objc_opt_self();
  sub_1D8EDD000(v2, 0x4C4B40uLL, [v7 defaultCenter], v4);
  v8 = [v5 shazamSignatureAssetURL];
  sub_1D9176B9C();

  sub_1D8EDD21C(v2, 0x4C4B40uLL, [v7 defaultCenter], (v4 + *(v3 + 20)));
}

void sub_1D8D5D078(uint64_t a1)
{
  if (!qword_1ECAB2AE0)
  {
    v4[0] = type metadata accessor for TTMLRequest(255);
    v4[1] = &protocol witness table for TTMLRequest;
    v4[2] = &protocol witness table for TTMLRequest;
    v4[3] = &protocol witness table for TranscriptModel;
    v4[4] = MEMORY[0x1E69E6168];
    v2 = type metadata accessor for CacheDomain(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1ECAB2AE0);
    }
  }
}

void sub_1D8D5D14C(uint64_t a1)
{
  sub_1D8D5D078(319);
  if (v1 <= 0x3F)
  {
    sub_1D8D5D1D0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8D5D1D0(uint64_t a1)
{
  if (!qword_1ECAB2AD8)
  {
    v4[0] = type metadata accessor for ShazamSignatureRequest(255);
    v4[1] = &protocol witness table for ShazamSignatureRequest;
    v4[2] = &protocol witness table for ShazamSignatureRequest;
    v4[3] = &protocol witness table for SHSignature;
    v4[4] = MEMORY[0x1E69E6168];
    v2 = type metadata accessor for CacheDomain(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1ECAB2AD8);
    }
  }
}

uint64_t sub_1D8D5D340(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D917662C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(a3 + 16))(a2, a3, v8);
  if (!v12)
  {
    return 0;
  }

  v13 = v11;
  v14 = v12;
  v36 = a1;
  v15 = *(a3 + 8);

  v16 = v15(a2, a3);
  if (v17)
  {
    if (v13 == v16 && v14 == v17)
    {
      swift_bridgeObjectRelease_n();
LABEL_26:

      return 0;
    }

    v19 = sub_1D9179ACC();

    if (v19)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v37 = v13;
  v38 = v14;
  sub_1D91765DC();
  sub_1D8D447DC();
  v20 = sub_1D91791EC();
  result = (*(v7 + 8))(v10, v6);
  v22 = 0;
  v23 = *(v20 + 16);
  v24 = v20 + 40;
  v25 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v26 = (v24 + 16 * v22);
  while (v23 != v22)
  {
    if (v22 >= *(v20 + 16))
    {
      __break(1u);
      return result;
    }

    ++v22;
    v27 = *(v26 - 1);
    v28 = *v26;
    v26 += 2;
    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v37 = v25;
      v35 = v24;
      if ((result & 1) == 0)
      {
        result = sub_1D8D41BE0(0, *(v25 + 16) + 1, 1);
        v25 = v37;
      }

      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_1D8D41BE0((v30 > 1), v31 + 1, 1);
        v25 = v37;
      }

      *(v25 + 16) = v31 + 1;
      v32 = v25 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v28;
      v24 = v35;
      goto LABEL_11;
    }
  }

  v33 = *(v25 + 16);

  if (v33 > 2 || sub_1D91782EC() >= 17)
  {
    goto LABEL_26;
  }

  if (v36)
  {
    v34 = sub_1D91782EC();

    if (v34 > 11)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1D8D5D644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D8D5D764()
{
  result = qword_1ECAB2C90;
  if (!qword_1ECAB2C90)
  {
    sub_1D9176C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2C90);
  }

  return result;
}

uint64_t sub_1D8D5D7BC@<X0>(void (*a1)(_BYTE *, double)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D9179EAC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12[-v9];
  a1(v5, v8);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v10, v6);
}

uint64_t sub_1D8D5D970()
{
  result = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  qword_1EDCD07B0 = result;
  return result;
}

uint64_t sub_1D8D5D9A8()
{
  result = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  qword_1EDCD07C8 = result;
  return result;
}

uint64_t sub_1D8D5D9E0()
{
  result = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  qword_1EDCD07F0 = result;
  return result;
}

uint64_t sub_1D8D5DA18(uint64_t *a1, uint64_t a2)
{
  v4 = *v2;
  v22 = *a1;
  v23 = a2;
  v5 = *(v4 + 176);
  v24 = sub_1D91791BC();
  v6 = *(v24 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v9 = &v20 - v8;
  *(v2 + 2) = 0;
  v10 = *(v4 + 200);
  v11 = *(v5 - 8);
  v21 = *(v11 + 56);
  v21(&v2[v10], 1, 1, v5, v7);
  v12 = *(*v2 + 208);
  *&v2[v12] = sub_1D91777EC();
  v13 = *(*v2 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *&v2[v13] = v14;
  v15 = *(*v2 + 224);
  v16 = swift_slowAlloc();
  *&v2[v15] = v16;
  *v16 = 0;
  v2[*(*v2 + 232)] = 0;
  v2[*(*v2 + 240)] = 0;
  v17 = *(*v2 + 248);
  v18 = sub_1D91777CC();
  (*(*(v18 - 8) + 56))(&v2[v17], 1, 1, v18);
  *(v2 + 2) = a1;

  (*(v11 + 32))(v9, v23, v5);
  (v21)(v9, 0, 1, v5);
  swift_beginAccess();
  (*(v6 + 40))(&v2[v10], v9, v24);
  swift_endAccess();
  return sub_1D8D698B4();
}

uint64_t sub_1D8D5DD7C()
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](0xD000000000000011, 0x80000001D91D7FA0);
  result = MEMORY[0x1DA7298F0](0xD000000000000019, 0x80000001D91D7FC0);
  qword_1ECAB0100[0] = 0x5F6775626544;
  qword_1ECAB0108[0] = 0xE600000000000000;
  return result;
}

uint64_t sub_1D8D5DE24(uint64_t a1)
{
  v2 = type metadata accessor for FeedManagerBagConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D5DE80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D5DEFC(uint64_t a1, void (*a2)(char *))
{
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB73C0, &qword_1D91972B0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v16 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB73C8, &qword_1D91972B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for FeedManagerBagConfiguration(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D088B4(a1, v5, &qword_1ECAB73C0, &qword_1D91972B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v5;
    v13 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    swift_willThrowTypedImpl();

    (*(v10 + 56))(v8, 1, 1, v9);
    if (qword_1EDCD2900 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v9, qword_1EDCDE830);
    sub_1D8D5C578(v14, v12);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_1D8D08A50(v8, &qword_1ECAB73C8, &qword_1D91972B8);
    }
  }

  else
  {
    sub_1D8D5E1D0(v5, v8);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_1D8D5E1D0(v8, v12);
  }

  v16(v12);
  return sub_1D8D5DE24(v12);
}

uint64_t sub_1D8D5E1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedManagerBagConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D5E248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FeedUpdateRequest(uint64_t a1)
{
  result = qword_1EDCD49B8;
  if (!qword_1EDCD49B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LocalSnapshotBag.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D8D5E3BC(uint64_t a1)
{
  sub_1D8D5E56C(319, &qword_1ECAB2C70, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    sub_1D9176C2C();
    if (v2 <= 0x3F)
    {
      sub_1D8D5E56C(319, &qword_1EDCD7B48, MEMORY[0x1E6968FB0]);
      if (v3 <= 0x3F)
      {
        sub_1D8CF4344();
        if (v4 <= 0x3F)
        {
          type metadata accessor for MTFeedUpdateSource(319);
          if (v5 <= 0x3F)
          {
            sub_1D8D5E5D4(319, &qword_1ECAAFB90, &qword_1ECAB45D0, &qword_1D918A040, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1D8D5E5D4(319, &unk_1ECAB0EE8, &qword_1ECAB7428, &unk_1D9197420, MEMORY[0x1E69E93F8]);
              if (v7 <= 0x3F)
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

void sub_1D8D5E56C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D91791BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D8D5E5D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *StoreFeedUpdater.init(bagConfiguration:ctx:ingesterProvider:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v55 = a3;
  v56 = a1;
  v52 = a2;
  v54 = type metadata accessor for FeedManagerBagConfiguration(0);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1D9178E0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D8CFD888();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8098], v8);
  sub_1D9177E4C();
  v57[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFD6D8(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  v3[2] = sub_1D9178E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76C0, &qword_1D9197CD0);
  swift_allocObject();
  v3[4] = sub_1D8D5F1D8();
  v12 = MEMORY[0x1E69E7CC8];
  v3[7] = MEMORY[0x1E69E7CC8];
  v3[8] = v12;
  if ([objc_opt_self() isRunningOnHomepod])
  {
    if (qword_1ECAB34D0 != -1)
    {
      swift_once();
    }

    v13 = &qword_1ECAB73D0;
  }

  else
  {
    if (qword_1EDCD23E8 != -1)
    {
      swift_once();
    }

    v13 = &qword_1EDCD23F0;
  }

  v14 = *v13;
  v15 = v53;
  sub_1D8D5F1EC(v56, v53, type metadata accessor for FeedManagerBagConfiguration);
  sub_1D8CFD9D8(v55, v57);
  v16 = v3[2];
  type metadata accessor for StoreFeedUpdater.Queue(0);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_pendingQueue) = MEMORY[0x1E69E7CC0];
  *(v17 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_runningQueue) = v18;
  *(v17 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_jobs) = v12;
  v19 = (v17 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback);
  *v19 = 0;
  v19[1] = 0;
  v17[2] = 0x65755161746C6544;
  v17[3] = 0xEA00000000006575;
  v17[4] = 3;
  sub_1D8D5F1EC(v15, v17 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_bagConfiguration, type metadata accessor for FeedManagerBagConfiguration);
  v20 = v52;
  *(v17 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_ctx) = v52;
  sub_1D8CFD9D8(v57, v17 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_ingesterProvider);
  *(v17 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_queue) = v16;
  v51 = type metadata accessor for MediaRequestController();
  v21 = objc_allocWithZone(v51);
  v22 = v20;
  v23 = v16;
  v52 = v14;
  v24 = [v21 init];
  *(v17 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_mediaRequestController) = v24;
  v25 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  swift_beginAccess();
  *&v24[v25] = 1;
  [v24 setPersonalizeRequests_];
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  sub_1D8D5FDB8(v15, type metadata accessor for FeedManagerBagConfiguration);
  v3[5] = v17;
  sub_1D8D5F1EC(v56, v15, type metadata accessor for FeedManagerBagConfiguration);
  v26 = v55;
  sub_1D8CFD9D8(v55, v57);
  v27 = v3[2];
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E7CC0];
  *(v28 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_pendingQueue) = MEMORY[0x1E69E7CC0];
  *(v28 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_runningQueue) = v29;
  *(v28 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_jobs) = MEMORY[0x1E69E7CC8];
  v30 = (v28 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback);
  *v30 = 0;
  v30[1] = 0;
  strcpy((v28 + 16), "BootstrapQueue");
  *(v28 + 31) = -18;
  *(v28 + 32) = 2;
  sub_1D8D5F1EC(v15, v28 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_bagConfiguration, type metadata accessor for FeedManagerBagConfiguration);
  *(v28 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_ctx) = v22;
  sub_1D8CFD9D8(v57, v28 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_ingesterProvider);
  *(v28 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_queue) = v27;
  v31 = objc_allocWithZone(v51);
  v32 = v22;
  v33 = v27;
  v34 = [v31 init];
  *(v28 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_mediaRequestController) = v34;
  v35 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  swift_beginAccess();
  *&v34[v35] = 1;
  [v34 setPersonalizeRequests_];

  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  sub_1D8D5FDB8(v15, type metadata accessor for FeedManagerBagConfiguration);
  v4[6] = v28;
  v36 = v54;
  v37 = v56;
  *(v4 + 72) = *(v56 + *(v54 + 20));
  v38 = *(v37 + *(v36 + 28));

  sub_1D8D5FDB8(v37, type metadata accessor for FeedManagerBagConfiguration);
  v4[10] = v38;
  v4[3] = v32;
  v39 = v4[5];
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = (v39 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback);
  v42 = *(v39 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback);
  v43 = *(v39 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback + 8);
  *v41 = sub_1D8F676A0;
  v41[1] = v40;

  sub_1D8D15664(v42, v43);

  v44 = v4[6];
  v45 = swift_allocObject();
  swift_weakInit();

  v46 = (v44 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback);
  v47 = *(v44 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback);
  v48 = *(v44 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback + 8);
  *v46 = sub_1D8F66408;
  v46[1] = v45;
  swift_retain_n();
  sub_1D8D15664(v47, v48);

  return v4;
}

uint64_t sub_1D8D5EE50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *sub_1D8D5EF08(uint64_t *a1, uint64_t *a2)
{
  v13 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v13);
  v5 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D9178E0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_allocObject();
  v2[3] = sub_1D917795C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = MEMORY[0x1E69E7CC8];
  v2[4] = v10;
  v2[5] = v11;
  sub_1D8CFD888();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8098], v6);
  sub_1D9177E4C();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  v2[6] = sub_1D9178E4C();
  v2[2] = v2[3];

  return v2;
}

uint64_t sub_1D8D5F1EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8D5F274(uint64_t a1)
{
  result = type metadata accessor for FeedManagerBagConfiguration(319);
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

uint64_t *sub_1D8D5F354(uint64_t a1, void *a2, char a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    swift_allocError();
    *v8 = a4;
    v9 = a4;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    v10 = *(*(*result + 64) + 40);
    *v10 = a2;
    *(v10 + 8) = a3;
    v11 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D5F440()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1D8D5F550;
  }

  else
  {
    v2 = sub_1D9170454;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8D5F550(uint64_t a1, uint64_t a2)
{
  v24 = v2;
  swift_willThrow();
  if (qword_1ECAB0E28 != -1)
  {
    swift_once();
  }

  v3 = v2[22];
  v4 = v2[20];
  v5 = sub_1D917744C();
  __swift_project_value_buffer(v5, qword_1ECAB0E30);
  v6 = v4;
  v7 = v3;
  v8 = sub_1D917741C();
  v9 = sub_1D9178CFC();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v2[21];
  v11 = v2[22];
  if (v10)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v13 = 136315394;
    v16 = sub_1D917820C();
    v18 = sub_1D8CFA924(v16, v17, &v23);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    sub_1D8E262AC(v14);
    MEMORY[0x1DA72CB90](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1DA72CB90](v15, -1, -1);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  else
  {
  }

  v21 = v2[1];

  return v21(0);
}

uint64_t sub_1D8D5F774(char a1)
{
  v2 = *(*v1 + 152);
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8D5F890, 0, 0);
}

uint64_t sub_1D8D5F890(uint64_t a1)
{
  v34 = v1;
  if (*(v1 + 168))
  {
    v2 = 2;
  }

  else
  {
    v2 = sub_1D8D2AFA0();
  }

  v3 = sub_1D917741C();
  v4 = sub_1D9178CEC();
  if (!os_log_type_enabled(v3, v4))
  {
    goto LABEL_16;
  }

  v5 = 0xD000000000000026;
  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v33 = v7;
  *v6 = 136315138;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v8 = "licit content isn’t allowed.";
      v5 = 0xD000000000000044;
      goto LABEL_15;
    }

    if (v2 == 3)
    {
      v8 = "podcasts-unttsd-enabled";
      v5 = 0x100000000000002ELL;
      goto LABEL_15;
    }

LABEL_12:
    *(v1 + 80) = v2;
    goto LABEL_26;
  }

  if (!v2)
  {
    v8 = "e user may enable it.";
    goto LABEL_15;
  }

  if (v2 != 1)
  {
    goto LABEL_12;
  }

  v8 = "d by the storefront.";
  v5 = 0x1000000000000055;
LABEL_15:
  v9 = sub_1D8CFA924(v5, v8 | 0x8000000000000000, &v33);

  *(v6 + 4) = v9;
  _os_log_impl(&dword_1D8CEC000, v3, v4, "Fetched setting: %s", v6, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  MEMORY[0x1DA72CB90](v7, -1, -1);
  MEMORY[0x1DA72CB90](v6, -1, -1);
LABEL_16:

  v10 = *(*(v1 + 88) + OBJC_IVAR___PFRestrictionsController__state);
  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);
  os_unfair_lock_unlock((v10 + 24));
  if (v2 == v11)
  {
LABEL_33:

    v30 = *(v1 + 8);

    return v30(v2);
  }

  v12 = *(v1 + 88);
  os_unfair_lock_lock((v10 + 24));
  *(v10 + 16) = v2;
  os_unfair_lock_unlock((v10 + 24));
  v13 = v12;
  v14 = sub_1D917741C();
  v15 = sub_1D9178CDC();

  v32 = v2;
  if (!os_log_type_enabled(v14, v15))
  {
LABEL_32:

    v24 = *(v1 + 128);
    v23 = *(v1 + 136);
    v25 = *(v1 + 112);
    v31 = *(v1 + 120);
    v27 = *(v1 + 96);
    v26 = *(v1 + 104);
    sub_1D8CFD888();
    v28 = sub_1D9178E1C();
    *(v1 + 48) = sub_1D9170028;
    *(v1 + 56) = 0;
    *(v1 + 16) = MEMORY[0x1E69E9820];
    *(v1 + 24) = 1107296256;
    *(v1 + 32) = sub_1D8CF5F60;
    *(v1 + 40) = &block_descriptor_31_4;
    v29 = _Block_copy((v1 + 16));
    sub_1D9177E4C();
    *(v1 + 64) = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v23, v25, v29);
    _Block_release(v29);

    (*(v26 + 8))(v25, v27);
    (*(v24 + 8))(v23, v31);
    v2 = v32;
    goto LABEL_33;
  }

  v16 = 0xD000000000000026;
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v33 = v18;
  *v17 = 136315138;
  os_unfair_lock_lock((v10 + 24));
  v19 = *(v10 + 16);
  os_unfair_lock_unlock((v10 + 24));
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = "licit content isn’t allowed.";
      v16 = 0xD000000000000044;
      goto LABEL_31;
    }

    if (v19 == 3)
    {
      v20 = "podcasts-unttsd-enabled";
      v16 = 0x100000000000002ELL;
      goto LABEL_31;
    }
  }

  else
  {
    if (!v19)
    {
      v20 = "e user may enable it.";
      goto LABEL_31;
    }

    if (v19 == 1)
    {
      v20 = "d by the storefront.";
      v16 = 0x1000000000000055;
LABEL_31:
      v22 = sub_1D8CFA924(v16, v20 | 0x8000000000000000, &v33);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1D8CEC000, v14, v15, "Setting did change: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
      goto LABEL_32;
    }
  }

  *(v1 + 72) = v19;
LABEL_26:

  return sub_1D9179C9C();
}

uint64_t sub_1D8D5FDB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8D5FE18(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8D5FF1C, 0, 0);
}

uint64_t sub_1D8D5FF3C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

Swift::Void __swiftcall RestrictionsController.reload()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_1D917886C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_1D8E91528(0, 0, v3, &unk_1D91BEC00, v5);
}

uint64_t static AbbreviatedTimeIntervalFormatter.string(from:relativeTo:currentYearReferenceDate:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACF0, &qword_1D91BA268);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1D9176E3C();
  v10 = *(*(v9 - 8) + 16);
  v10(v8, a1, v9);
  v11 = type metadata accessor for AbbreviatedTimeIntervalFormatter.Configuration(0);
  v10(&v8[*(v11 + 20)], a2, v9);
  v8[*(v11 + 24)] = 6;
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  v12 = static AbbreviatedTimeIntervalFormatter.string(from:configuration:)(v8, a3);
  sub_1D8D60B78(v8);
  return v12;
}

uint64_t sub_1D8D60340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AbbreviatedTimeIntervalFormatter.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *RSSFeedUpdater.init(ctx:ingesterProvider:externalFeedDownloader:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v55 = a3;
  v56 = a2;
  v52 = a1;
  v5 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1D9178E0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_workQueue;
  v13 = sub_1D8CFD888();
  v14 = *(v10 + 104);
  v46 = *MEMORY[0x1E69E8098];
  v50 = v9;
  v47 = v10 + 104;
  v45 = v14;
  v14(v12);
  sub_1D9177E4C();
  *&aBlock = MEMORY[0x1E69E7CC0];
  v15 = sub_1D8CFD690(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  v48 = v16;
  v49 = v15;
  v54 = v5;
  v17 = v44;
  sub_1D91792CC();
  v53 = v7;
  v51 = v13;
  *&v4[v17] = sub_1D9178E4C();
  v18 = OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_requests;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7480, &unk_1D9197878);
  swift_allocObject();
  *&v4[v18] = sub_1D8D5EF08(&qword_1ECAB7548, &qword_1D91979F8);
  if ([objc_opt_self() isRunningOnHomepod])
  {
    if (qword_1ECAB34D0 != -1)
    {
      swift_once();
    }

    v19 = &qword_1ECAB73D0;
  }

  else
  {
    if (qword_1EDCD23E8 != -1)
    {
      swift_once();
    }

    v19 = &qword_1EDCD23F0;
  }

  v20 = *v19;
  v21 = v56;
  sub_1D8CFD9D8(v56, &aBlock);
  v22 = *&v4[v17];
  type metadata accessor for RSSFeedUpdater.Queue();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E7CC8];
  v23[13] = MEMORY[0x1E69E7CC0];
  v23[14] = v24;
  v23[15] = 0;
  v23[16] = 0;
  v23[2] = 0x7565755164656546;
  v23[3] = 0xE900000000000065;
  v25 = v52;
  v23[4] = 3;
  v23[5] = v25;
  sub_1D8D6BCE0(&aBlock, (v23 + 6));
  v26 = v55;
  v23[11] = v55;
  v23[12] = v22;
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_feedQueue] = v23;
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_ctx] = v25;
  sub_1D8CFD9D8(v21, &v4[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_ingesterProvider]);
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_externalFeedDownloader] = v26;
  v45(v12, v46, v50);
  v27 = v25;
  swift_unknownObjectRetain_n();
  v28 = v22;
  v52 = v27;
  v29 = v20;
  sub_1D9177E4C();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1D91792CC();
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_pendingRestorationQueue] = sub_1D9178E4C();
  v30 = type metadata accessor for RSSFeedUpdater();
  v62.receiver = v4;
  v62.super_class = v30;
  v31 = objc_msgSendSuper2(&v62, sel_init);
  [v26 setDelegate_];
  dispatch_suspend(*&v31[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_pendingRestorationQueue]);
  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v32 = sub_1D917744C();
  __swift_project_value_buffer(v32, qword_1EDCD1070);
  v33 = sub_1D917741C();
  v34 = sub_1D9178D1C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1D8CEC000, v33, v34, "Restoring background download tasks.", v35, 2u);
    MEMORY[0x1DA72CB90](v35, -1, -1);
  }

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = sub_1D8D78F5C;
  v61 = v36;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v58 = sub_1D8CF5F60;
  v59 = &block_descriptor_43;
  v37 = _Block_copy(&aBlock);
  v38 = v31;

  [v55 restoreBackgroundDownloadTasksWithCompletion_];
  _Block_release(v37);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  v39 = *&v38[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_feedQueue];

  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v41 = *(v39 + 120);
  v42 = *(v39 + 128);
  *(v39 + 120) = sub_1D8DA2EF4;
  *(v39 + 128) = v40;
  swift_retain_n();
  sub_1D8D15664(v41, v42);

  return v38;
}

uint64_t sub_1D8D60AE0()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D60B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACF0, &qword_1D91BA268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D60CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECABB378, &qword_1D91BC1D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  v10[0] = a2;
  v10[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB370, &qword_1D91BC1D0);
  sub_1D91788AC();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D8D60DE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 65))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8D60E3C()
{

  if (v0)
  {
    v1 = sub_1D8F41224;
  }

  else
  {
    v1 = sub_1D8D60F4C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D8D60F4C(uint64_t a1)
{
  v2 = v1[3];
  v1[16] = v2;
  if (!v2)
  {
    (*(v1[13] + 8))(v1[14], v1[12]);
    goto LABEL_5;
  }

  v1[4] = v1[2];
  v1[5] = v2;
  if (sub_1D917894C())
  {
    v4 = v1[13];
    v3 = v1[14];
    v5 = v1[12];

    (*(v4 + 8))(v3, v5);
LABEL_5:

    v6 = v1[1];

    return v6();
  }

  v9 = (v1[7] + *v1[7]);
  v8 = swift_task_alloc();
  v1[17] = v8;
  *v8 = v1;
  v8[1] = sub_1D8F412E0;

  return v9(v1 + 4);
}

uint64_t MTPodcast.adamId.getter()
{
  if ([objc_opt_self() isEmpty_])
  {
    return 0;
  }

  v2 = [v0 storeCollectionId];
  return v2 & ~(v2 >> 63);
}

uint64_t sub_1D8D61178(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D58924;

  return sub_1D8D61288(a1, v4);
}

uint64_t sub_1D8D61288(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D58924;

  return v7(v3, v4);
}

id ArtworkModel.with(backgroundColor:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v10 = *(v3 + 11);
  v25[0] = *(v3 + 9);
  v25[1] = v10;
  v26[0] = *(v3 + 13);
  *(v26 + 9) = *(v3 + 113);
  v11 = *(v3 + 129);
  v12 = *(v3 + 131);
  v13 = v3[17];
  v14 = v3[18];
  v15 = *(v3 + 152);
  v16 = *(v3 + 153);
  v17 = *(v3 + 154);
  v18 = *(v3 + 32);
  *&v24[7] = *(v3 + 9);
  *&v24[23] = *(v3 + 11);
  *&v24[39] = *(v3 + 13);
  *&v24[48] = *(v3 + 113);
  *a3 = v7;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v18;
  *(a3 + 40) = *(v3 + 5);
  *(a3 + 56) = a1;
  *(a3 + 64) = a2;
  v19 = *v24;
  v20 = *&v24[16];
  v21 = *&v24[32];
  *(a3 + 113) = *&v24[48];
  *(a3 + 97) = v21;
  *(a3 + 81) = v20;
  *(a3 + 65) = v19;
  *(a3 + 129) = v11;
  *(a3 + 131) = v12;
  *(a3 + 136) = v13;
  *(a3 + 144) = v14;
  *(a3 + 152) = v15;
  *(a3 + 153) = v16;
  *(a3 + 154) = v17;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;

  sub_1D8D614C4(v8, v9, v18);
  sub_1D8D614F0(v25, &v23);

  return sub_1D8D6154C(a1, v4);
}

uint64_t sub_1D8D614C4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D8D614D8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D8D614D8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

id sub_1D8D6154C(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D8D61560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MTDisplayTypeFromPersistentString(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MTDisplayTypeToPersistentStringMap_inverted(1);
  v3 = [v2 objectForKey:v1];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    if (![v1 length])
    {
      v5 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 138412290;
        v8 = v1;
        _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_ERROR, "Invalid MTPodcastDisplayType encountered (%@)", &v7, 0xCu);
      }
    }

    v4 = 0;
  }

  return v4;
}

id MTDisplayTypeToPersistentStringMap_inverted(int a1)
{
  if (MTDisplayTypeToPersistentStringMap_inverted_onceToken != -1)
  {
    MTDisplayTypeToPersistentStringMap_inverted_cold_1();
  }

  v2 = &MTDisplayTypeToPersistentStringMap_inverted_invertedMap;
  if (!a1)
  {
    v2 = &MTDisplayTypeToPersistentStringMap_inverted_map;
  }

  v3 = *v2;

  return v3;
}

uint64_t sub_1D8D618BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8D619E0(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65C0, &qword_1D9192888);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v3 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v3 + 24) = v8;

  os_unfair_lock_lock(v9);
  sub_1D8D61BDC(v10);
  os_unfair_lock_unlock(v9);

  v11 = sub_1D9178FBC();
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

unint64_t sub_1D8D61A08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1D8D33C70(v7, v8);
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

uint64_t sub_1D8D61C18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  swift_allocObject();
  swift_weakInit();
  sub_1D9178FBC();
  sub_1D8CFBCD0(&qword_1EDCD5B10, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);

  v6 = sub_1D9177D9C();

  *a1 = v6;
  return result;
}

id sub_1D8D61D00@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v50 = a1;
  v56 = a3;
  v5 = sub_1D9176C2C();
  v58 = *(v5 - 8);
  v6 = v58;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v46 - v9;
  v54 = sub_1D9178E0C();
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1D9177E9C();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = *(v6 + 16);
  v55 = v6 + 16;
  v57 = v15;
  (v15)(a3, a1, v5, v14);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v48 = "disk.ShazamSignatureRequest";
  sub_1D9177E7C();
  v59 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v49 + 104))(v11, *MEMORY[0x1E69E8090], v54);
  v54 = sub_1D9178E4C();
  v16 = v52;
  sub_1D9177A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65B0, &qword_1D9192878);
  swift_allocObject();
  v17 = sub_1D8D6259C(v53, v16);
  v52 = v17;
  v19 = v50;
  v18 = v51;
  v57(v51, v50, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65B8, &qword_1D9192880);
  v20 = swift_allocObject();
  v21 = v58 + 32;
  v49 = *(v58 + 32);
  v47 = v5;
  (v49)(v20 + qword_1EDCDE890, v18, v5);
  v58 = v21;
  v22 = v20 + qword_1EDCDE888;
  *v22 = 0;
  *(v22 + 4) = 1;
  *(v20 + qword_1EDCD6AC0) = v54;
  *(v20 + qword_1EDCD6AC8) = v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);
  v24 = v56;
  v23 = v57;
  *(v56 + v53[15]) = v20;
  v23(v18, v19, v5);
  v25 = swift_allocObject();
  v26 = v49;
  (v49)(v25 + qword_1EDCDE890, v18, v5);
  v27 = v25 + qword_1EDCDE888;
  *v27 = 512;
  *(v27 + 4) = 0;
  v28 = v54;
  *(v25 + qword_1EDCD6AC0) = v54;
  v29 = v52;
  *(v25 + qword_1EDCD6AC8) = v52;
  *(v24 + v53[16]) = v25;
  v30 = v47;
  v23(v18, v19, v47);
  v31 = swift_allocObject();
  v26(v31 + qword_1EDCDE890, v18, v30);
  v32 = v26;
  v33 = v31 + qword_1EDCDE888;
  *v33 = 1024;
  *(v33 + 4) = 0;
  *(v31 + qword_1EDCD6AC0) = v28;
  *(v31 + qword_1EDCD6AC8) = v29;
  v34 = v53;
  v36 = v56;
  v35 = v57;
  *(v56 + v53[17]) = v31;
  v35(v18, v19, v30);
  v37 = swift_allocObject();
  v38 = v18;
  v39 = v32;
  v32(v37 + qword_1EDCDE890, v38, v30);
  v40 = v37 + qword_1EDCDE888;
  *v40 = 2048;
  *(v40 + 4) = 0;
  *(v37 + qword_1EDCD6AC0) = v28;
  v41 = v52;
  *(v37 + qword_1EDCD6AC8) = v52;
  *(v36 + v34[18]) = v37;
  v42 = swift_allocObject();
  v39(v42 + qword_1EDCDE890, v19, v30);
  v43 = v42 + qword_1EDCDE888;
  *v43 = 0x8000;
  *(v43 + 4) = 0;
  *(v42 + qword_1EDCD6AC0) = v28;
  *(v42 + qword_1EDCD6AC8) = v41;
  *(v36 + v34[19]) = v42;
  swift_retain_n();
  v44 = v28;

  return v44;
}

void sub_1D8D62584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1D8D6259C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8D619E0(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65C0, &qword_1D9192888);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v3 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v3 + 24) = v8;

  os_unfair_lock_lock(v9);
  sub_1D8D626CC(v10);
  os_unfair_lock_unlock(v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

uint64_t sub_1D8D62708(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  sub_1D8CF48EC(qword_1EDCD5C70, &qword_1ECAB4C60, &unk_1D918CD70, MEMORY[0x1E695C018]);
  v6 = sub_1D9177D9C();

  *a1 = v6;
  return result;
}

uint64_t sub_1D8D627FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  v10 = sub_1D8D629AC(a3, a4);
  (*(v6 + 8))(v9, a3);
  return v10;
}

uint64_t sub_1D8D62928()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t static EyebrowBuilder.concatenate(captionElements:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1D8D627FC(v4, v1, v2, v3);
}

uint64_t sub_1D8D629AC(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v4);
  v7 = sub_1D917848C();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9 < 2)
  {
    if (!v9)
    {

      return 0;
    }

    v13 = *(v7 + 32);

LABEL_35:

    return v13;
  }

  result = sub_1D9178BDC();
  v11 = 0;
  v13 = v44;
  v12 = v45;
  v14 = v9 - 3;
  v37 = v8;
  v38 = v9;
  v15 = (v8 + 56);
  v16 = -2;
  v17 = 1;
  while (v12)
  {
    v18 = *(v15 - 1);
    v19 = *v15;
    v42 = v13;
    v43 = v12;
    v39 = v14;
    v40 = 0x8480E2B7C28480E2;
    v41 = 0xA800000000000000;
    sub_1D8D447DC();
    swift_bridgeObjectRetain_n();
    v20 = sub_1D91791FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1D8D4241C(0, *(v20 + 16) + 1, 1, v20);
    }

    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1D8D4241C((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 16) = v22 + 1;
    v23 = v20 + 16 * v22;
    *(v23 + 32) = v18;
    *(v23 + 40) = v19;
    v42 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
    v13 = sub_1D917817C();
    v25 = v24;

    v9 = v38;
    v14 = v39 - 1;
    --v16;
    --v11;
    v15 += 2;
    ++v17;
    v12 = v25;
    if (v38 + v11 == 1)
    {
      goto LABEL_35;
    }
  }

  if (v9 + v11 == 2)
  {
    goto LABEL_35;
  }

  v26 = v9 + v11 - 3;
  v27 = 1 - v11;
  if (v9 <= v17)
  {
    v28 = v17;
  }

  else
  {
    v28 = v9;
  }

  v29 = v28 + v11 - 2;
  if (v26 < v29)
  {
    v29 = v9 + v11 - 3;
  }

  if (v29 + 1 >= 3)
  {
    if (v9 <= v17)
    {
      v31 = v17;
    }

    else
    {
      v31 = v9;
    }

    v32 = v31 + v16;
    if (v14 < v31 + v16)
    {
      v32 = v14;
    }

    v30 = (v32 & 0xFFFFFFFFFFFFFFFELL) - v11 + 2;
    v33 = v31 + v11 - 2;
    if (v26 >= v33)
    {
      v26 = v33;
    }

    v34 = v26 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v34 -= 2;
    }

    while (v34);
  }

  else
  {
    v30 = 2 - v11;
  }

  v35 = v9 - v30;
  if (v9 > v27)
  {
    v27 = v9;
  }

  v36 = v27 - v30;
  while (v36)
  {
    --v36;
    if (!--v35)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1D8D62DA8(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t sub_1D8D62DC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8D62EEC(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65A8, &qword_1D9192870);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v3 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v3 + 24) = v8;

  os_unfair_lock_lock(v9);
  sub_1D8D62F78(v10);
  os_unfair_lock_unlock(v9);

  v11 = sub_1D9178FBC();
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

uint64_t static ArtworkFormat.preferredFormat.getter()
{
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  return byte_1EDCD7898;
}

id sub_1D8D62FB4@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v50 = a1;
  v56 = a3;
  v5 = sub_1D9176C2C();
  v58 = *(v5 - 8);
  v6 = v58;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v46 - v9;
  v54 = sub_1D9178E0C();
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1D9177E9C();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = *(v6 + 16);
  v55 = v6 + 16;
  v57 = v15;
  (v15)(a3, a1, v5, v14);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v48 = "ShazamSignatures";
  sub_1D9177E7C();
  v59 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v49 + 104))(v11, *MEMORY[0x1E69E8090], v54);
  v54 = sub_1D9178E4C();
  v16 = v52;
  sub_1D9177A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6598, &qword_1D9192860);
  swift_allocObject();
  v17 = sub_1D8D63758(v53, v16);
  v52 = v17;
  v19 = v50;
  v18 = v51;
  v57(v51, v50, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65A0, &qword_1D9192868);
  v20 = swift_allocObject();
  v21 = v58 + 32;
  v49 = *(v58 + 32);
  v47 = v5;
  (v49)(v20 + qword_1EDCDE890, v18, v5);
  v58 = v21;
  v22 = v20 + qword_1EDCDE888;
  *v22 = 0;
  *(v22 + 4) = 1;
  *(v20 + qword_1EDCD6AC0) = v54;
  *(v20 + qword_1EDCD6AC8) = v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);
  v24 = v56;
  v23 = v57;
  *(v56 + v53[15]) = v20;
  v23(v18, v19, v5);
  v25 = swift_allocObject();
  v26 = v49;
  (v49)(v25 + qword_1EDCDE890, v18, v5);
  v27 = v25 + qword_1EDCDE888;
  *v27 = 512;
  *(v27 + 4) = 0;
  v28 = v54;
  *(v25 + qword_1EDCD6AC0) = v54;
  v29 = v52;
  *(v25 + qword_1EDCD6AC8) = v52;
  *(v24 + v53[16]) = v25;
  v30 = v47;
  v23(v18, v19, v47);
  v31 = swift_allocObject();
  v26(v31 + qword_1EDCDE890, v18, v30);
  v32 = v26;
  v33 = v31 + qword_1EDCDE888;
  *v33 = 1024;
  *(v33 + 4) = 0;
  *(v31 + qword_1EDCD6AC0) = v28;
  *(v31 + qword_1EDCD6AC8) = v29;
  v34 = v53;
  v36 = v56;
  v35 = v57;
  *(v56 + v53[17]) = v31;
  v35(v18, v19, v30);
  v37 = swift_allocObject();
  v38 = v18;
  v39 = v32;
  v32(v37 + qword_1EDCDE890, v38, v30);
  v40 = v37 + qword_1EDCDE888;
  *v40 = 2048;
  *(v40 + 4) = 0;
  *(v37 + qword_1EDCD6AC0) = v28;
  v41 = v52;
  *(v37 + qword_1EDCD6AC8) = v52;
  *(v36 + v34[18]) = v37;
  v42 = swift_allocObject();
  v39(v42 + qword_1EDCDE890, v19, v30);
  v43 = v42 + qword_1EDCDE888;
  *v43 = 0x8000;
  *(v43 + 4) = 0;
  *(v42 + qword_1EDCD6AC0) = v28;
  *(v42 + qword_1EDCD6AC8) = v41;
  *(v36 + v34[19]) = v42;
  swift_retain_n();
  v44 = v28;

  return v44;
}

void *sub_1D8D636F0@<X0>(void *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE *a5@<X8>)
{
  if (*result != -1)
  {
    v6 = a2;
    v7 = a3;
    v8 = a5;
    result = swift_once();
    a2 = v6;
    a5 = v8;
    a3 = v7;
  }

  v5 = *a3;
  *a5 = *a2;
  a5[1] = v5;
  return result;
}

uint64_t sub_1D8D63758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8D62EEC(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65A8, &qword_1D9192870);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v3 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v3 + 24) = v8;

  os_unfair_lock_lock(v9);
  sub_1D8D63AA8(v10);
  os_unfair_lock_unlock(v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

uint64_t ArtworkModel.init(template:width:height:libraryEntity:backgroundColor:textColors:style:crop:accessibilityTitle:format:isCustomSymbol:isMulticolorSymbol:imageStoreIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char a12, char *a13, uint64_t a14, uint64_t a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  v20 = *a13;
  v21 = a13[1];
  if (*(a8 + 8) == 254)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v27 = -1;
    v28 = -1;
    v29 = -1;
  }

  else
  {
    v29 = *(a8 + 56);
    v25 = a8[6];
    v28 = *(a8 + 40);
    v24 = a8[4];
    v27 = *(a8 + 24);
    v23 = a8[2];
    v26 = *(a8 + 8);
    v22 = *a8;
  }

  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a10;
  *(a9 + 48) = a11;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = v22;
  *(a9 + 80) = v26;
  *(a9 + 88) = v23;
  *(a9 + 96) = v27;
  *(a9 + 104) = v24;
  *(a9 + 112) = v28;
  *(a9 + 120) = v25;
  *(a9 + 128) = v29;
  *(a9 + 129) = a12;
  *(a9 + 130) = v20;
  *(a9 + 131) = v21;
  *(a9 + 136) = a14;
  *(a9 + 144) = a15;
  *(a9 + 152) = a16;
  *(a9 + 153) = a17 & 1;
  *(a9 + 154) = a18 & 1;
  *(a9 + 160) = a19;
  *(a9 + 168) = a20;
  return result;
}

double PodcastStateModel.init(podcast:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v3 = a1;
  v4 = [v3 uuid];
  if (!v4)
  {
LABEL_9:

LABEL_10:
    result = 0.0;
    *(a2 + 27) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v5 = v4;
  v6 = sub_1D917820C();
  v8 = v7;

  v9 = MTPodcast.identifier.getter();
  if (v11 == 0xFF)
  {

    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  v14 = v11;
  v15 = [v3 hidden];
  if ([v3 subscribed])
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | v15;
  v18 = [v3 isImplicitlyFollowed];

  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 42) = v18 != 0;
  *(a2 + 40) = v17;
  return result;
}

unint64_t MTPodcast.identifier.getter()
{
  v1 = [v0 uuid];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D917820C();

    if ([objc_opt_self() isEmpty_])
    {
      return v3;
    }

    v4 = [v0 storeCollectionId];
    if ((v4 & 0x8000000000000000) != 0 || !v4 || v4 == 1000000000000)
    {
      return v3;
    }

    else
    {
      v25 = v4;

      return v25;
    }
  }

  else
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1EDCD0F88);
    v7 = v0;
    v8 = sub_1D917741C();
    v9 = sub_1D9178CFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = 0x3E7974706D653CLL;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136381187;
      v13 = [v7 title];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1D917820C();
        v17 = v16;
      }

      else
      {
        v17 = 0xE700000000000000;
        v15 = 0x3E7974706D653CLL;
      }

      v18 = sub_1D8CFA924(v15, v17, &v26);

      *(v11 + 4) = v18;
      *(v11 + 12) = 2049;
      v19 = [v7 storeCollectionId];

      *(v11 + 14) = v19;
      *(v11 + 22) = 2081;
      v20 = [v7 feedURL];
      if (v20)
      {
        v21 = v20;
        v10 = sub_1D917820C();
        v23 = v22;
      }

      else
      {
        v23 = 0xE700000000000000;
      }

      v24 = sub_1D8CFA924(v10, v23, &v26);

      *(v11 + 24) = v24;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "MTPodcast with nil UUID, this doesn't make much sense. Podcast title %{private}s, adamID %{private}lld, feedURL %{private}s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v12, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_1D8D63E1C()
{
  v0 = _s11DownloadersVMa(0);
  __swift_allocate_value_buffer(v0, qword_1ECAB14A8);
  v1 = __swift_project_value_buffer(v0, qword_1ECAB14A8);
  return sub_1D8D64A00(v1);
}

uint64_t sub_1D8D63E68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_1D8D63EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D8D63F28(uint64_t a1)
{
  sub_1D8D63EBC(319, qword_1ECAB1BE0, type metadata accessor for TTMLRequest, &protocol witness table for TTMLRequest, type metadata accessor for ForegroundSessionSource);
  if (v1 <= 0x3F)
  {
    sub_1D8D6413C(319);
    if (v2 <= 0x3F)
    {
      sub_1D8D63EBC(319, qword_1ECAB1EE8, type metadata accessor for TTMLRequest, &protocol witness table for TTMLRequest, type metadata accessor for URLTaskAssetSource);
      if (v3 <= 0x3F)
      {
        sub_1D8D63EBC(319, &qword_1ECAB1BD8, type metadata accessor for ShazamSignatureRequest, &protocol witness table for ShazamSignatureRequest, type metadata accessor for ForegroundSessionSource);
        if (v4 <= 0x3F)
        {
          sub_1D8D63EBC(319, &qword_1ECAB1EE0, type metadata accessor for ShazamSignatureRequest, &protocol witness table for ShazamSignatureRequest, type metadata accessor for URLTaskAssetSource);
          if (v5 <= 0x3F)
          {
            sub_1D8D647E8(319);
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

uint64_t sub_1D8D640EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8D6413C(uint64_t a1)
{
  if (!qword_1ECAB1CF8)
  {
    v2 = type metadata accessor for TranscriptsBackgroundSessionDescriptor(255);
    v3 = sub_1D8CFBCD0(&qword_1ECAB1250, type metadata accessor for TranscriptsBackgroundSessionDescriptor, &protocol conformance descriptor for TranscriptsBackgroundSessionDescriptor);
    v4 = type metadata accessor for AssetBackgroundSession(a1, v2, v3, &protocol witness table for TTMLRequest);
    if (!v5)
    {
      atomic_store(v4, &qword_1ECAB1CF8);
    }
  }
}

PodcastsFoundation::PodcastStateModel::SanitizedState __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PodcastStateModel.sanitizedState()()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[42];
  if (v2 == 1)
  {
    if ((v3 & 1) == 0 && (v1 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    if (v1)
    {
LABEL_7:
      sub_1D90CDA5C();
      swift_allocError();
      *v5 = v2;
      v5[1] = v3;
      v5[2] = v1;
      return swift_willThrow();
    }

    return 2;
  }

  else if (v1)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t type metadata accessor for TranscriptsBackgroundSessionDescriptor(uint64_t a1)
{
  result = qword_1ECAB1240;
  if (!qword_1ECAB1240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MTPodcast.episodeUserFilter.getter()
{
  v1 = v0;
  [v0 willAccessValueForKey_];
  if ([v0 primitiveValueForKey_])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_1D8D64450(v8);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }

  sub_1D917656C();
  swift_allocObject();
  sub_1D917655C();
  sub_1D8F9C734();
  sub_1D917654C();
  sub_1D8D7567C(v4, v5);

  v3 = *&v8[0];
LABEL_9:
  [v1 didAccessValueForKey_];
  return v3;
}

uint64_t sub_1D8D64450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8D644B8(uint64_t a1)
{
  sub_1D8D5D078(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D8D64524(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8D6456C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MTPodcast.episodeSortType.getter()
{
  if (![v0 isSerialShowTypeInFeed])
  {
    return [v0 sortAscending];
  }

  v1 = [v0 showTypeSetting];
  if (v1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x504040604uLL >> (8 * v1));
  }
}

void sub_1D8D647E8(uint64_t a1)
{
  if (!qword_1ECAB1CF0)
  {
    v2 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor(255);
    v3 = sub_1D8CFBCD0(&qword_1ECAB1198, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor, &protocol conformance descriptor for ShazamSignatureBackgroundSessionDescriptor);
    v4 = type metadata accessor for AssetBackgroundSession(a1, v2, v3, &protocol witness table for ShazamSignatureRequest);
    if (!v5)
    {
      atomic_store(v4, &qword_1ECAB1CF0);
    }
  }
}

uint64_t type metadata accessor for ShazamSignatureBackgroundSessionDescriptor(uint64_t a1)
{
  result = qword_1ECAB1188;
  if (!qword_1ECAB1188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8D648D0(uint64_t a1)
{
  sub_1D8D5D1D0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D8D6493C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShazamSignatureRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8D64A00@<X0>(uint64_t *a1@<X8>)
{
  v48 = a1;
  v1 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v51 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760);
  v52 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = v4;
  v54 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v44 - v6;
  v7 = type metadata accessor for TranscriptsBackgroundSessionDescriptor(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768);
  v46 = *(v10 - 8);
  v11 = *(v46 + 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v23 = [objc_opt_self() libraryDirectory];
  sub_1D9176B9C();

  sub_1D9176B2C();
  v24 = *(v17 + 8);
  v49 = v17 + 8;
  v50 = v16;
  v47 = v24;
  v24(v19, v16);
  if (qword_1ECAB1478 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for TimeBombedTranscriptProvider.Caches(0);
  v25 = __swift_project_value_buffer(v45, qword_1ECAB1480);
  sub_1D8D088B4(v25, v9, &qword_1ECAB5D38, &qword_1D9191600);
  sub_1D9176B2C();
  sub_1D8D65628(v9, v19, v15);
  v26 = _s11DownloadersVMa(0);
  v27 = v48;
  v28 = v48 + v26[5];
  v44 = v22;
  sub_1D8D088B4(v15, v28, &qword_1ECAB64C0, &qword_1D9192768);
  sub_1D8D088B4(v15, v12, &qword_1ECAB64C0, &qword_1D9192768);
  v29 = v46[80];
  v46 = v15;
  v30 = v27;
  v31 = (v29 + 16) & ~v29;
  v32 = swift_allocObject();
  sub_1D8D6734C(v12, v32 + v31, &qword_1ECAB64C0, &qword_1D9192768);
  v33 = (v30 + v26[6]);
  *v33 = sub_1D8EEE590;
  v33[1] = v32;
  *(swift_allocObject() + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  swift_allocObject();
  *v30 = sub_1D9177A5C();
  v34 = v25 + *(v45 + 20);
  v35 = v51;
  sub_1D8D088B4(v34, v51, &qword_1ECAB5D08, &unk_1D9191530);
  v36 = v44;
  sub_1D9176B2C();
  v37 = v55;
  sub_1D8D673B4(v35, v19, v55);
  sub_1D8D088B4(v37, v30 + v26[9], &qword_1ECAB64B8, &qword_1D9192760);
  v38 = v54;
  sub_1D8D088B4(v37, v54, &qword_1ECAB64B8, &qword_1D9192760);
  v39 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v40 = swift_allocObject();
  sub_1D8D6734C(v38, v40 + v39, &qword_1ECAB64B8, &qword_1D9192760);
  v41 = (v30 + v26[8]);
  *v41 = sub_1D8EEE5C0;
  v41[1] = v40;
  *(swift_allocObject() + 16) = 1;
  swift_allocObject();
  v42 = sub_1D9177A5C();
  sub_1D8D08A50(v37, &qword_1ECAB64B8, &qword_1D9192760);
  sub_1D8D08A50(v46, &qword_1ECAB64C0, &qword_1D9192768);
  result = v47(v36, v50);
  *(v30 + v26[7]) = v42;
  return result;
}

uint64_t sub_1D8D65078()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v4 = sub_1D9176C2C();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);

  return swift_deallocObject();
}

uint64_t sub_1D8D65214()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v4 = sub_1D9176C2C();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);

  return swift_deallocObject();
}

unint64_t sub_1D8D653BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42C8, &unk_1D9188E20);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D8D088B4(v4, v13, &unk_1ECAB6C80, &unk_1D91949C0);
      result = sub_1D8D6550C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D8D65618(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1D8D6550C(uint64_t a1)
{
  v2 = sub_1D91793CC();

  return sub_1D8D65550(a1, v2);
}

unint64_t sub_1D8D65550(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D8D9A2A4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA72A9A0](v9, a1);
      sub_1D8D9A308(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

_OWORD *sub_1D8D65618(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D8D65628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v5 = type metadata accessor for TranscriptsBackgroundSessionDescriptor(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a3;
  sub_1D8D65C38(a1, a3, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v9 = sub_1D8D65CA0();
  sub_1D8D65C38(a1, v8, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v29 = v10 + v7;
  v11 = swift_allocObject();
  v30 = type metadata accessor for TranscriptsBackgroundSessionDescriptor;
  sub_1D8D66338(v8, v11 + v10, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6548, &qword_1D9192810));
  v32 = v9;

  v14 = sub_1D8D66420(v13, sub_1D8EEEF74, v11, sub_1D8D665D4);

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768);
  *(a3 + v15[11]) = v14;
  v16 = objc_opt_self();
  v34 = v5;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6550, &qword_1D9192818);
  sub_1D917826C();
  v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v19 = [v16 backgroundSessionConfigurationWithIdentifier_];

  sub_1D8D65C38(a1, v8, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v20 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v21 + v10;
  v23 = v30;
  sub_1D8D66338(v8, v22, v30);
  *(v21 + v20) = v19;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5838, &qword_1D9190AB0);
  swift_allocObject();
  v24 = sub_1D9177A5C();
  v25 = sub_1D9176C2C();
  (*(*(v25 - 8) + 8))(v33, v25);
  result = sub_1D8D67208(a1, v23);
  v27 = v31;
  v28 = v32;
  *(v31 + v15[12]) = v24;
  *(v27 + v15[13]) = v28;
  return result;
}

uint64_t sub_1D8D65974()
{
  v1 = *(type metadata accessor for TranscriptsBackgroundSessionDescriptor(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);

  v3 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v4 = sub_1D9176C2C();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);

  return swift_deallocObject();
}

uint64_t sub_1D8D65AC4()
{
  v1 = *(type metadata accessor for TranscriptsBackgroundSessionDescriptor(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v6 = sub_1D9176C2C();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);

  return swift_deallocObject();
}

uint64_t sub_1D8D65C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8D65CA0()
{
  v0 = sub_1D9178E0C();
  v20 = *(v0 - 8);
  v21 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v19 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v2);
  v17 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v18 = sub_1D9176C2C();
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TranscriptsBackgroundSessionDescriptor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6550, &qword_1D9192818);
  sub_1D917826C();
  sub_1D9176B2C();

  sub_1D9177A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6578, &qword_1D9192840);
  swift_allocObject();
  v16 = sub_1D8D6613C(5000000, v7);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E7C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v20 + 104))(v19, *MEMORY[0x1E69E8090], v21);
  v11 = sub_1D9178E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6540, &qword_1D9192808);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + qword_1EDCDE890, v10, v18);
  v13 = v12 + qword_1EDCDE888;
  *v13 = 2048;
  *(v13 + 4) = 0;
  *(v12 + qword_1EDCD6AC0) = v11;
  *(v12 + qword_1EDCD6AC8) = v16;
  return v12;
}

uint64_t sub_1D8D6613C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8D66280(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6580, &qword_1D9192848);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v3 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v3 + 24) = v8;

  os_unfair_lock_lock(v9);
  sub_1D8D66294(v10);
  os_unfair_lock_unlock(v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

uint64_t sub_1D8D662D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8D66338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1D8D66420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  ObjectType = swift_getObjectType();
  v10 = MEMORY[0x1E69E7D40];
  v11 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x88));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v4 + *((*v10 & *v4) + 0x80));
  *v12 = a2;
  v12[1] = a3;
  *(v4 + *((*v10 & *v4) + 0x90)) = a1;
  v13 = MEMORY[0x1E69E7CC0];
  *(v4 + *((*v10 & *v4) + 0x98)) = a4(MEMORY[0x1E69E7CC0]);

  *(v4 + *((*v10 & *v4) + 0xA0)) = sub_1D8D043B0(v13);
  *(v4 + *((*v10 & *v4) + 0xA8)) = sub_1D8D04598(v13);
  *(v4 + *((*v10 & *v4) + 0xB0)) = sub_1D8D04774(v13);
  *(v4 + *((*v10 & *v4) + 0xB8)) = dispatch_group_create();
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

unint64_t sub_1D8D665E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1D91797AC();
  v6 = *(a1 + 32);
  v16 = *(a1 + 40);
  result = sub_1D8D490F4(v6);
  v8 = v16;
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = (a1 + 64);
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v6;
    *(v5[7] + 16 * result) = v8;
    v11 = v5[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v5[2] = v13;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v14 = (v10 + 24);
    v6 = *(v10 - 1);
    v17 = *v10;

    result = sub_1D8D490F4(v6);
    v10 = v14;
    v8 = v17;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8D66774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v4 + v9);
  v11 = *(v4 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a4(a1, a2, v4 + v8, v10, v11);
}

uint64_t sub_1D8D66BDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v32 = a4;
  v33 = a5;
  v8 = sub_1D9177E0C();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptsBackgroundSessionDescriptor(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = qword_1EDCD5B50;

  if (v19 != -1)
  {
    swift_once();
  }

  v31[1] = qword_1EDCD5B58;
  sub_1D8D65C38(a3, v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1D8D66338(v17, v23 + v20, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v24 = v32;
  *(v23 + v21) = v32;
  v25 = v33;
  *(v23 + v22) = v33;
  v26 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_1D8D49C40;
  v26[1] = v18;
  aBlock[4] = sub_1D8D717BC;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_195;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  v29 = v25;
  sub_1D9177E4C();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v10, v27);
  _Block_release(v27);
  (*(v36 + 8))(v10, v8);
  (*(v34 + 8))(v13, v35);
}

uint64_t sub_1D8D67010()
{
  v1 = *(type metadata accessor for TranscriptsBackgroundSessionDescriptor(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v6 = sub_1D9176C2C();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);

  return swift_deallocObject();
}

uint64_t sub_1D8D671A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8D67208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8D6734C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D8D673B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v5 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a3;
  sub_1D8D65C38(a1, a3, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v9 = sub_1D8D67A60();
  sub_1D8D65C38(a1, v8, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v29 = v10 + v7;
  v11 = swift_allocObject();
  v30 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor;
  sub_1D8D66338(v8, v11 + v10, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64E8, &qword_1D91927B0));
  v32 = v9;

  v14 = sub_1D8D66420(v13, sub_1D8EEE7F0, v11, sub_1D8D68018);

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760);
  *(a3 + v15[11]) = v14;
  v16 = objc_opt_self();
  v34 = v5;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64F0, &qword_1D91927B8);
  sub_1D917826C();
  v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v19 = [v16 backgroundSessionConfigurationWithIdentifier_];

  sub_1D8D65C38(a1, v8, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v20 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v21 + v10;
  v23 = v30;
  sub_1D8D66338(v8, v22, v30);
  *(v21 + v20) = v19;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5838, &qword_1D9190AB0);
  swift_allocObject();
  v24 = sub_1D9177A5C();
  v25 = sub_1D9176C2C();
  (*(*(v25 - 8) + 8))(v33, v25);
  result = sub_1D8D67208(a1, v23);
  v27 = v31;
  v28 = v32;
  *(v31 + v15[12]) = v24;
  *(v27 + v15[13]) = v28;
  return result;
}

uint64_t sub_1D8D67700()
{
  v1 = *(type metadata accessor for ShazamSignatureBackgroundSessionDescriptor(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);

  v3 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v4 = sub_1D9176C2C();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);

  return swift_deallocObject();
}

uint64_t sub_1D8D67850()
{
  v1 = *(type metadata accessor for ShazamSignatureBackgroundSessionDescriptor(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v6 = sub_1D9176C2C();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);

  return swift_deallocObject();
}

void appendTextFromNodeRecursively(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    if (*(a1 + 8) == 3)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 80)];
      [v6 appendString:v4];

      v3 = v6;
    }

    for (i = *(a1 + 24); i; i = *(i + 48))
    {
      appendTextFromNodeRecursively(i, v6);
      v3 = v6;
    }
  }
}

uint64_t sub_1D8D67A60()
{
  v0 = sub_1D9178E0C();
  v20 = *(v0 - 8);
  v21 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v19 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v2);
  v17 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v18 = sub_1D9176C2C();
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64F0, &qword_1D91927B8);
  sub_1D917826C();
  sub_1D9176B2C();

  sub_1D9177A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6518, &qword_1D91927E0);
  swift_allocObject();
  v16 = sub_1D8D67ED4(5000000, v7);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E7C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v20 + 104))(v19, *MEMORY[0x1E69E8090], v21);
  v11 = sub_1D9178E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64E0, &qword_1D91927A8);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + qword_1EDCDE890, v10, v18);
  v13 = v12 + qword_1EDCDE888;
  *v13 = 2048;
  *(v13 + 4) = 0;
  *(v12 + qword_1EDCD6AC0) = v11;
  *(v12 + qword_1EDCD6AC8) = v16;
  return v12;
}

uint64_t sub_1D8D67ED4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8D68004(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6520, &qword_1D91927E8);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v3 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v3 + 24) = v8;

  os_unfair_lock_lock(v9);
  sub_1D8D628F0(v10);
  os_unfair_lock_unlock(v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

uint64_t sub_1D8D68068(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v32 = a4;
  v33 = a5;
  v8 = sub_1D9177E0C();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = qword_1EDCD5B50;

  if (v19 != -1)
  {
    swift_once();
  }

  v31[1] = qword_1EDCD5B58;
  sub_1D8D65C38(a3, v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1D8D66338(v17, v23 + v20, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v24 = v32;
  *(v23 + v21) = v32;
  v25 = v33;
  *(v23 + v22) = v33;
  v26 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_1D8D49C40;
  v26[1] = v18;
  aBlock[4] = sub_1D8DA4A5C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_132;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  v29 = v25;
  sub_1D9177E4C();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v10, v27);
  _Block_release(v27);
  (*(v36 + 8))(v10, v8);
  (*(v34 + 8))(v13, v35);
}

uint64_t sub_1D8D6849C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D684D4()
{
  v1 = *(type metadata accessor for ShazamSignatureBackgroundSessionDescriptor(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v6 = sub_1D9176C2C();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);

  return swift_deallocObject();
}

unint64_t sub_1D8D6866C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4370, &qword_1D9188ED0);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D8D088B4(v4, v14, &qword_1ECAB4378, &qword_1D9188ED8);
      result = sub_1D8F06AAC(v14);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 72 * result;
      *v7 = v14[0];
      v8 = v14[1];
      v9 = v14[2];
      v10 = v14[3];
      *(v7 + 64) = v15;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      *(v7 + 16) = v8;
      *(v3[7] + 8 * result) = v16;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 80;
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

uint64_t type metadata accessor for TranscriptData.TimeBombedURLs(uint64_t a1)
{
  result = qword_1ECAB2488;
  if (!qword_1ECAB2488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8D68800(uint64_t a1)
{
  sub_1D8CF307C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1D8D68870()
{
  result = qword_1ECAB2070;
  if (!qword_1ECAB2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2070);
  }

  return result;
}

unint64_t sub_1D8D688C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4360, &unk_1D9188EC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4368, &unk_1D91A6C70);
    v7 = sub_1D91797AC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D8D088B4(v9, v5, &qword_1ECAB4360, &unk_1D9188EC0);
      result = sub_1D8F06B6C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for TTMLRequest(0);
      result = sub_1D8D662D0(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for TTMLRequest);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

uint64_t sub_1D8D68AF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8D68B38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8D68B80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8D68BC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8D68C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D8D68C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4350, &qword_1D9188EB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4358, &qword_1D9188EB8);
    v7 = sub_1D91797AC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D8D088B4(v9, v5, &qword_1ECAB4350, &qword_1D9188EB0);
      result = sub_1D8F06B18(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ShazamSignatureRequest(0);
      result = sub_1D8D662D0(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for ShazamSignatureRequest);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_1D8D68E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4380, &unk_1D9188EE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4388, &unk_1D91A6C80);
    v7 = sub_1D91797AC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D8D088B4(v9, v5, &qword_1ECAB4380, &unk_1D9188EE0);
      result = sub_1D8D93AB0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D9176EAC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

uint64_t Publisher.nonNilValues<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  sub_1D9177B2C();
}

uint64_t sub_1D8D691E4(void *a1)
{
  result = sub_1D91791BC();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedConformanceWitness();
    sub_1D91777CC();
    result = sub_1D91791BC();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D8D69334(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v10 = qword_1EDCD1628;
  result = swift_beginAccess();
  v12 = *(a2 + v10);
  if (!*(v12 + 16))
  {
    goto LABEL_12;
  }

  v13 = sub_1D8D698BC(a3);
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = *(*(v12 + 56) + v13);

  v16 = qword_1EDCD1600;
  result = swift_beginAccess();
  v17 = *(a2 + v16);
  if (!*(v17 + 16))
  {
LABEL_12:
    v30 = a4[2];
    v25 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v25)
    {
      a4[2] = v31;
      (*(a2 + qword_1ECAB8618))(v48, a5);
      v27 = LOBYTE(v48[0]);
      if (LOBYTE(v48[0]) == 2)
      {
        v32 = 0;
      }

      else
      {
        v33 = *(a2 + qword_1ECAB8628);
        LOBYTE(v46) = v48[0] & 1;
        v33(v47, &v46);
        v32 = v47[0];
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(a2 + v10);
      *(a2 + v10) = 0x8000000000000000;
      sub_1D8D6976C(v27, a3, isUniquelyReferenced_nonNull_native);
      *(a2 + v10) = v46;
      swift_endAccess();
      v35 = qword_1EDCD1600;
      swift_beginAccess();
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(a2 + v35);
      *(a2 + v35) = 0x8000000000000000;
      sub_1D8D69D6C(v32, v27 == 2, a3, v36);
      *(a2 + v35) = v46;
      swift_endAccess();
      *a1 = v32;
      *(a1 + 8) = v27 == 2;
      return v27;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v18 = sub_1D8D698BC(a3);
  if ((v19 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v45 = v15;
  v20 = *(v17 + 56) + 16 * v18;
  v44 = *v20;
  v21 = *(v20 + 8);

  v22 = *a4;

  v23 = sub_1D8DA4C5C(a3, v22);

  if ((v23 & 1) == 0)
  {
    *a1 = v44;
    *(a1 + 8) = v21;
    return v45;
  }

  v24 = a4[3];
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    goto LABEL_31;
  }

  a4[3] = v26;
  result = (*(a2 + qword_1ECAB8618))(v48, a5);
  v27 = LOBYTE(v48[0]);
  if (LOBYTE(v48[0]) == 2)
  {
    if (v45 == 2)
    {
      v28 = 0;
      v29 = 0;
      if (v21)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v28 = 0;
    }

LABEL_23:
    *(a4 + 56) = 1;
    v29 = v28;
LABEL_24:
    swift_beginAccess();
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(a2 + v10);
    *(a2 + v10) = 0x8000000000000000;
    sub_1D8D6976C(v27, a3, v38);
    *(a2 + v10) = v46;
    swift_endAccess();
    swift_beginAccess();
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(a2 + v16);
    *(a2 + v16) = 0x8000000000000000;
    sub_1D8D69D6C(v29, v27 == 2, a3, v39);
    *(a2 + v16) = v46;
    swift_endAccess();
    *a1 = v29;
    *(a1 + 8) = v27 == 2;
    return v27;
  }

  v37 = *(a2 + qword_1ECAB8628);
  LOBYTE(v46) = v48[0] & 1;
  v37(v47, &v46);
  v28 = v47[0];
  if (v45 == 2)
  {
    goto LABEL_23;
  }

  v43 = v47[0];
  LOBYTE(v47[0]) = v45 & 1;
  LOBYTE(v46) = v27 & 1;
  result = (*(a2 + qword_1ECAB8620))(v47, &v46);
  if (result)
  {
    v28 = v43;
    goto LABEL_23;
  }

  v29 = v44;
  v28 = v43;
  v40 = v21;
  if (v43 != v44)
  {
    v40 = 1;
  }

  if (v40)
  {
    goto LABEL_23;
  }

LABEL_28:
  v41 = a4[4];
  v25 = __OFADD__(v41, 1);
  v42 = v41 + 1;
  if (!v25)
  {
    a4[4] = v42;
    goto LABEL_24;
  }

LABEL_32:
  __break(1u);
  return result;
}

_BYTE *sub_1D8D6976C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v6 = a1;
  v7 = *v3;
  result = sub_1D8D698BC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = result;
      sub_1D8F83760();
      result = v16;
      goto LABEL_8;
    }

    sub_1D8D69948(v13, a3 & 1);
    result = sub_1D8D698BC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_14:
      sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    result[v18[7]] = v6;
  }

  else
  {
    sub_1D8D69CB0(result, a2, v6, v18);

    return a2;
  }

  return result;
}

uint64_t sub_1D8D6990C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8D69948(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B28, &unk_1D91A6C40);
  result = sub_1D917978C();
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
      v21 = *(*(v5 + 56) + v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1D917913C();
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
      *(*(v7 + 56) + v15) = v21;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1D8D69BC8(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1D8CF2154(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1D917914C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1D8D69CB0(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1D8D69CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D91791BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1D8D69D6C(uint64_t a1, char a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  result = sub_1D8D698BC(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = result;
      sub_1D8F835F0();
      result = v18;
      goto LABEL_8;
    }

    sub_1D8D69EB0(v15, a4 & 1);
    result = sub_1D8D698BC(a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_14:
      sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = v20[7] + 16 * result;
    *v21 = a1;
    *(v21 + 8) = a2 & 1;
  }

  else
  {
    sub_1D8D6A1F8(result, a3, a1, a2 & 1, v20);

    return a3;
  }

  return result;
}

uint64_t sub_1D8D69EB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B30, &qword_1D9199748);
  v35 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v35 & 1) == 0)
      {
        v25 = v21;
      }

      result = sub_1D917913C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
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

    if (v35)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D8D6A16C(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  sub_1D9071830(a1, v1 + v3, &unk_1ECAB9920, &unk_1D91AD170);
  return swift_endAccess();
}

unint64_t sub_1D8D6A1F8(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4 & 1;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_1D8D6A248(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB60E8, &qword_1D91920F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB60F0, &qword_1D91920F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8D6A390(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB60F8, &qword_1D9192100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6100, &qword_1D9192108);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D8D6A4DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D8D6AA38(0, v1, 0);
    v4 = a1 + 40;
    v2 = v11;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6100, &qword_1D9192108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46C8, &qword_1D918A0F8);
      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D8D6AA38((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t NSUserDefaults.subscript.getter@<X0>(void (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v17 = a3;
  v9 = sub_1D91791BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  NSUserDefaults.value<A>(for:)(a4, a5, &v16 - v11);
  v13 = *(a4 - 8);
  v14 = *(v13 + 48);
  if (v14(v12, 1, a4) != 1)
  {
    return (*(v13 + 32))(a6, v12, a4);
  }

  v17();
  result = (v14)(v12, 1, a4);
  if (result != 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t NSUserDefaults.value<A>(for:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v11 = [v6 objectForKey_];

  if (v11)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    swift_getAssociatedTypeWitness();
    if (swift_dynamicCast())
    {
      return (*(a4 + 16))(v13, a3, a4);
    }
  }

  else
  {
    sub_1D8D64450(v16);
  }

  return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
}

void *sub_1D8D6A904(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1D8D6AA38(void *a1, int64_t a2, char a3)
{
  result = sub_1D8D6A904(a1, a2, a3, *v3, &qword_1ECAB46C0, &qword_1D918A0F0, &qword_1ECAB46C8, &qword_1D918A0F8);
  *v3 = result;
  return result;
}

void *sub_1D8D6AA78(void *a1, int64_t a2, char a3)
{
  result = sub_1D8D6A904(a1, a2, a3, *v3, &qword_1ECAB46B0, &qword_1D918A0E0, &qword_1ECAB46B8, &qword_1D918A0E8);
  *v3 = result;
  return result;
}

void *sub_1D8D6AAFC(void *a1, int64_t a2, char a3)
{
  result = sub_1D8D6A904(a1, a2, a3, *v3, &qword_1ECAB46A0, &qword_1D918A0D0, &qword_1ECAB46A8, &qword_1D918A0D8);
  *v3 = result;
  return result;
}

char *sub_1D8D6AB50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4698, &qword_1D918A0C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_1D8D6AC44(char *a1, int64_t a2, char a3)
{
  result = sub_1D8D6AB50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D8D6AC64(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v83 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    sub_1D8D6B2FC();
    sub_1D8D08C08(&qword_1EDCD09C8, sub_1D8D6B2FC, MEMORY[0x1E69E81B8]);
    sub_1D9178B3C();
    v5 = v78;
    v7 = v79;
    v8 = v80;
    v9 = v81;
    v10 = v82;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v73 = v5;
  v74 = v7;
  v75 = v8;
  v76 = v9;
  v64 = v8;
  v14 = (v8 + 64) >> 6;
  v70 = (v4 + 56);
  v77 = v10;
  v67 = v5;
  v68 = v14;
  v66 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = sub_1D917938C();
      if (!v22)
      {
        goto LABEL_65;
      }

      v71 = v22;
      sub_1D8D6B2FC();
      swift_dynamicCast();
      v20 = v72;
      v18 = v9;
      v2 = v10;
      if (!v72)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        if (v14 <= v9 + 1)
        {
          v17 = v9 + 1;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_67;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v73 = v5;
      v74 = v7;
      v75 = v64;
      v76 = v18;
      v77 = v2;
      if (!v20)
      {
LABEL_65:
        v53 = v5;
        goto LABEL_63;
      }
    }

    v23 = v20;
    v24 = sub_1D917913C();
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v66;
    v5 = v67;
    v14 = v68;
  }

  v3 = ~v25;
  v26 = sub_1D8D6B2FC();
  v27 = *(*(v4 + 48) + 8 * v7);
  v69 = v26;
  while (1)
  {
    v28 = sub_1D917914C();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v4 + 48) + 8 * v7);
  }

  v30 = *(v4 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v61;
  v3 = v68;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v62 = &v60;
    MEMORY[0x1EEE9AC00](v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = *(v4 + 16);
    v63 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v66;
    v35 = v67;
LABEL_33:
    v65 = v5;
    while (v35 < 0)
    {
      v37 = sub_1D917938C();
      if (!v37)
      {
        goto LABEL_61;
      }

      v71 = v37;
      swift_dynamicCast();
      v38 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = sub_1D917913C();
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v70[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(*(v44 + 48) + 8 * v7);
          v50 = sub_1D917914C();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v70[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v68;

        v51 = v63[v46];
        v63[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v66;
        v35 = v67;
        v5 = v65;
        if (!v52)
        {
          v5 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v4 = MEMORY[0x1E69E7CD0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v66;
        v35 = v67;
        v3 = v68;
        v5 = v65;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v40;
      v18 = v40;
      v77 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = sub_1D90A7EE8(v63, v61, v5, v4, &unk_1ECAB6740, &qword_1D91936F0);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v55 = v6;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_1D90A6A58(v57, v61, v4, v7, &v73);
  v59 = v58;

  MEMORY[0x1DA72CB90](v57, -1, -1);
  v4 = v59;
LABEL_62:
  v53 = v73;
LABEL_63:
  sub_1D8D1B144(v53);
  return v4;
}

unint64_t sub_1D8D6B2FC()
{
  result = qword_1EDCD09D0;
  if (!qword_1EDCD09D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD09D0);
  }

  return result;
}

os_log_t _MTLogCategoryBackgroundFetching()
{
  v0 = os_log_create("com.apple.podcasts", "BackgroundFetching");

  return v0;
}

Swift::Void __swiftcall RestrictionsController.startListening()()
{
  v1 = OBJC_IVAR___PFRestrictionsController_observation;
  if (!*(v0 + OBJC_IVAR___PFRestrictionsController_observation))
  {
    v2 = type metadata accessor for RestrictionsControllerDelegate();
    v3 = objc_allocWithZone(v2);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v6.receiver = v3;
    v6.super_class = v2;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    if (qword_1ECAB1120 != -1)
    {
      swift_once();
    }

    [qword_1ECAB1130 registerObserver_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
  }
}

void __swiftcall MTPlaylist.unsafePredicateForAllEpisodesMatchingSettings()(NSPredicate_optional *__return_ptr retstr)
{
  if (sub_1D8D6B7B0())
  {
    v1 = sub_1D8D6C08C();
  }

  else
  {
    sub_1D8FD69F0();
  }

  v2 = v1;
  v3 = sub_1D8D6CD58();
  v4 = [v2 AND_];

  v5 = v4;
  v6 = sub_1D8D6D430();
  v7 = [v5 AND_];
}

id sub_1D8D6B7B0()
{
  v1 = v0;
  v2 = sub_1D9176A7C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 settings];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D9178C9C();
  sub_1D8D6BB7C();
  sub_1D91791DC();
  if (v28)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v23 = v3;
    do
    {
      while (1)
      {
        sub_1D8D65618(&v27, &v25);
        sub_1D8CF2154(0, &qword_1ECAB8830, off_1E8567650);
        if ((swift_dynamicCast() & 1) == 0 || !v26)
        {
          break;
        }

        MEMORY[0x1DA729B90]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = v1;
          sub_1D917863C();
          v1 = v24;
        }

        sub_1D917869C();
        v24 = v29;
        sub_1D91791DC();
        v3 = v23;
        if (!v28)
        {
          goto LABEL_13;
        }
      }

      sub_1D91791DC();
    }

    while (v28);
    v3 = v23;
  }

  else
  {
    v24 = v9;
  }

LABEL_13:

  (*(v3 + 8))(v6, v2);
  v10 = [v1 defaultSettings];
  if (!v10)
  {

    return 0;
  }

  v11 = v10;
  v12 = [v1 includesAllPodcasts];
  v13 = v24;
  if ((v12 & 1) == 0)
  {

    return 0;
  }

  *&v27 = MEMORY[0x1E69E7CC0];
  if (v24 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v15 = 0;
    v16 = v13 & 0xC000000000000001;
    v17 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v16)
      {
        v18 = MEMORY[0x1DA72AA90](v15, v13);
      }

      else
      {
        if (v15 >= *(v17 + 16))
        {
          goto LABEL_31;
        }

        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v21 = [v18 integerForEpisodesToShow];
      if (v21 == [v11 integerForEpisodesToShow])
      {
      }

      else
      {
        sub_1D917959C();
        sub_1D91795DC();
        v13 = v24;
        sub_1D91795EC();
        sub_1D91795AC();
      }

      ++v15;
      if (v20 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  if ((v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
  {
    v22 = sub_1D917935C();
  }

  else
  {
    v22 = *(v27 + 16);
  }

  return (v22 == 0);
}

unint64_t sub_1D8D6BB7C()
{
  result = qword_1ECAB4440;
  if (!qword_1ECAB4440)
  {
    sub_1D9176A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4440);
  }

  return result;
}

uint64_t sub_1D8D6BCE0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for CategoriesSyncUtil(uint64_t a1)
{
  result = qword_1ECAB2020;
  if (!qword_1ECAB2020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D6BD44(uint64_t a1)
{
  result = sub_1D9176E3C();
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

uint64_t CategoriesSyncUtil.init(categoriesSyncThresholdProvider:categoriesProvider:categoryIngester:lastCategoriesSyncDate:queue:ctx:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_1D9176E3C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_syncSession) = 0;
  sub_1D8CFD9D8(a1, v6 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesSyncThresholdProvider);
  sub_1D8CFD9D8(a2, v6 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesProvider);
  *(v6 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoryIngester) = a3;
  sub_1D8CF6B1C(a4, v13);
  v18 = *(v15 + 48);
  if (v18(v13, 1, v14) == 1)
  {
    sub_1D9176CEC();
    sub_1D8D08A50(a4, &qword_1ECAB75C0, &unk_1D9188A50);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    if (v18(v13, 1, v14) != 1)
    {
      sub_1D8D08A50(v13, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  else
  {
    sub_1D8D08A50(a4, &qword_1ECAB75C0, &unk_1D9188A50);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v15 + 32))(v17, v13, v14);
  }

  (*(v15 + 32))(v6 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_lastCategoriesSyncDate, v17, v14);
  v19 = v22;
  *(v6 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_workQueue) = v21;
  *(v6 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_ctx) = v19;
  return v6;
}

id sub_1D8D6C08C()
{
  if (sub_1D8D6B7B0())
  {
    v1 = [objc_opt_self() predicateForStationEligibleEpisodes];
    v2 = [v0 defaultSettings];
    v3 = MEMORY[0x1E69E6158];
    v4 = MEMORY[0x1E69E6530];
    v5 = MEMORY[0x1E69E65A8];
    if (v2)
    {
      v6 = v2;
      v7 = [v2 integerForEpisodesToShow];

      if (v7 >= 1)
      {
        sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1D918A530;
        v9 = sub_1D917820C();
        v11 = v10;
        *(v8 + 56) = v3;
        v12 = sub_1D8D34978();
        *(v8 + 32) = v9;
        *(v8 + 40) = v11;
        *(v8 + 96) = v4;
        *(v8 + 104) = v5;
        *(v8 + 64) = v12;
        *(v8 + 72) = v7;
        v13 = sub_1D9178C8C();
        v14 = [v1 AND_];

        v1 = v14;
      }
    }

    if (qword_1ECAB1CC0 != -1)
    {
      swift_once();
    }

    v15 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
    os_unfair_lock_lock((v15 + 24));
    v16 = *(v15 + 16);
    os_unfair_lock_unlock((v15 + 24));
    if (v16)
    {
      sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
      sub_1D917946C();

      v17 = sub_1D917820C();
      MEMORY[0x1DA7298F0](v17);

      MEMORY[0x1DA7298F0](0xD000000000000010, 0x80000001D91D1AC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D918A530;
      v19 = sub_1D917820C();
      v21 = v20;
      *(v18 + 56) = v3;
      v22 = sub_1D8D34978();
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      *(v18 + 96) = v4;
      *(v18 + 104) = v5;
      *(v18 + 64) = v22;
      *(v18 + 72) = 256;
      v23 = sub_1D9178C8C();

      return v23;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    v25 = [objc_opt_self() falsePredicate];

    return v25;
  }
}

void sub_1D8D6C624(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9177E9C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [*&v4[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_accountStore] ams_activeiTunesAccount];
  if (v17)
  {
    v38 = v12;
    v39 = v9;

    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD0FE8);
    v19 = sub_1D917741C();
    v20 = sub_1D9178D1C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v37 = v11;
      v22 = v8;
      v23 = v13;
      v24 = a3;
      v25 = a1;
      v26 = a2;
      v27 = v21;
      *v21 = 0;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Starting to sync music subscription information.", v21, 2u);
      v28 = v27;
      a2 = v26;
      a1 = v25;
      a3 = v24;
      v13 = v23;
      v8 = v22;
      v11 = v37;
      MEMORY[0x1DA72CB90](v28, -1, -1);
    }

    v29 = swift_allocObject();
    *(v29 + 16) = v4;
    *(v29 + 24) = a1 & 1;
    *(v29 + 32) = a2;
    *(v29 + 40) = a3;
    *(v29 + 48) = ObjectType;
    aBlock[4] = sub_1D90665EC;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_68;
    v30 = _Block_copy(aBlock);
    v31 = v4;

    sub_1D9177E4C();
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBDF0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v16, v11, v30);
    _Block_release(v30);
    (*(v39 + 8))(v11, v8);
    (*(v13 + 8))(v16, v38);
  }

  else
  {
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v32 = sub_1D917744C();
    __swift_project_value_buffer(v32, qword_1EDCD0FE8);
    ObjectType = sub_1D917741C();
    v33 = sub_1D9178D1C();
    if (os_log_type_enabled(ObjectType, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D8CEC000, ObjectType, v33, "Not syncing Music Subscription Info because user is not signed in.", v34, 2u);
      MEMORY[0x1DA72CB90](v34, -1, -1);
    }

    v35 = ObjectType;
  }
}

uint64_t sub_1D8D6CB20()
{

  return swift_deallocObject();
}

uint64_t sub_1D8D6CB60()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1EDCD0FE8);
  __swift_project_value_buffer(v0, qword_1EDCD0FE8);
  return sub_1D917742C();
}

id sub_1D8D6CBE0(void *a1)
{
  v1 = a1;

  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v3 = [v1 integerForKey_];

  return v3;
}

id sub_1D8D6CCB8()
{
  result = [objc_allocWithZone(type metadata accessor for FairPlayRolloutController()) init];
  qword_1EDCD2AE0 = result;
  return result;
}

id sub_1D8D6CD58()
{
  v1 = [v0 defaultSettings];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 predicateForExternalType_];
    v5 = [v3 predicateForStationEligibleEpisodes];
    v6 = [v4 AND_];

    if (([v2 showPlayedEpisodes] & 1) == 0)
    {
      v7 = [v3 predicateForVisuallyPlayed_];
      v8 = [v6 AND_];

      v6 = v8;
    }

    if (qword_1ECAB1CC0 != -1)
    {
      swift_once();
    }

    v9 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
    os_unfair_lock_lock((v9 + 24));
    v10 = *(v9 + 16);
    os_unfair_lock_unlock((v9 + 24));
    if (v10)
    {
      v11 = [v3 predicateForExplicit_];
      v12 = [v6 AND_];

      v6 = v12;
    }

    if ([v2 mediaType])
    {
      [v2 mediaType];
      v13 = sub_1D917820C();
      v15 = v14;
      sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D9189080;
      *(v16 + 56) = MEMORY[0x1E69E6158];
      *(v16 + 64) = sub_1D8D34978();
      *(v16 + 32) = v13;
      *(v16 + 40) = v15;
      v17 = sub_1D9178C8C();
      v18 = [v6 AND_];

      return v18;
    }

    else
    {

      return v6;
    }
  }

  else
  {
    v20 = [objc_opt_self() falsePredicate];

    return v20;
  }
}

uint64_t _s18PodcastsFoundation25FairPlayRolloutControllerC9isEnabledSbyF_0()
{
  v18 = &type metadata for Podcasts;
  v0 = sub_1D8CF0F2C();
  v19 = v0;
  LOBYTE(v17[0]) = 9;
  v1 = sub_1D917710C();
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  if (v1)
  {
    v18 = &type metadata for Podcasts;
    v19 = v0;
    LOBYTE(v17[0]) = 6;
    v2 = sub_1D917710C();
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v4 = sub_1D8D6D320();
  if (v4 == 2)
  {
    v5 = qword_1ECAB5808;
    v6 = off_1ECAB5810;

    v7 = sub_1D8D6D934(v5, v6, 1);
  }

  else
  {
    v7 = v4;
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1EDCD0F68);
  v9 = sub_1D917741C();
  v10 = sub_1D9178CEC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136315906;
    *(v11 + 4) = sub_1D8CFA924(0xD00000000000002FLL, 0x80000001D91CC0C0, v17);
    *(v11 + 12) = 2080;
    if (v2 & v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = 542396238;
    }

    if (v2 & v7)
    {
      v14 = 0xE000000000000000;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    v15 = sub_1D8CFA924(v13, v14, v17);

    *(v11 + 14) = v15;
    *(v11 + 22) = 1024;
    *(v11 + 24) = v2 & 1;
    *(v11 + 28) = 1024;
    *(v11 + 30) = (v7 & 1) == 0;
    _os_log_impl(&dword_1D8CEC000, v9, v10, "%s FairPlay V2 is %srolled out, local feature enabled %{BOOL}d, rollback enabled %{BOOL}d.", v11, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v12, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  return v2 & v7 & 1;
}

uint64_t sub_1D8D6D320()
{
  if (![objc_opt_self() isRunningOnInternalOS])
  {
    return 2;
  }

  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_1D8D64450(v7);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

id sub_1D8D6D430()
{
  v1 = [v0 deletedEpisodes];
  if (v1 && (v2 = v1, v3 = sub_1D9178A9C(), v2, sub_1D8D6D610(v3), v5 = v4, , v5))
  {
    sub_1D8D6DA20(v5);
    v7 = v6;

    v15 = v7;

    sub_1D8D6DD80(&v15);

    v8 = v15;
    sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D918A530;
    v10 = sub_1D917820C();
    v12 = v11;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1D8D34978();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    *(v9 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    *(v9 + 104) = sub_1D8D6E8B8();
    *(v9 + 72) = v8;
    return sub_1D9178C8C();
  }

  else
  {
    v14 = [objc_opt_self() truePredicate];

    return v14;
  }
}

void sub_1D8D6D610(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8838, &qword_1D91A3BA8);
    v2 = sub_1D917942C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v30[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v27 = v26;
LABEL_31:
      sub_1D8D9A2A4(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v27 << 6)), v30);
      v28 = sub_1D91793BC();
      sub_1D8D9A308(v30);
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_1D8FD7C64(v29);
      v26 = v27;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v27);
      ++v26;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 56;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_1D8D9A2A4(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v30);
      v14 = sub_1D91793BC();
      sub_1D8D9A308(v30);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = sub_1D917913C();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D8D6D934(uint64_t a1, uint64_t a2, char a3)
{
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v6 = [v3 objectForKey_];

  if (v6)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      a3 = v8;
    }
  }

  else
  {
    sub_1D8D64450(v11);
  }

  return a3 & 1;
}

void sub_1D8D6DA20(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    sub_1D8FD7BFC();
    sub_1D9178B3C();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!sub_1D917938C() || (sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_1D8D1B144(v1);
      return;
    }

LABEL_17:
    v12 = [v11 uuid];
    if (v12)
    {
      v13 = v12;
      v19 = sub_1D917820C();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D8D4241C(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_1D8D4241C((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1D8D6DD80(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8D6DDEC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D8D6E3C0(v5);
  *a1 = v2;
  return result;
}

id sub_1D8D6DE00(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  ObjectType = swift_getObjectType();
  v26 = sub_1D9178E0C();
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v25 = OBJC_IVAR___PFFairPlayValidationManager_internalQueue;
  v10 = sub_1D8CFD888();
  v24[0] = "ion/FairPlayValidationManager]:";
  v24[1] = v10;
  sub_1D9177E3C();
  v33[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8090], v26);
  v11 = sub_1D9178E4C();
  v12 = v25;
  *&a4[v25] = v11;
  v13 = &a4[OBJC_IVAR___PFFairPlayValidationManager____lazy_storage___logPrefix];
  v14 = type metadata accessor for DispatchingFairPlayKeyLoading();
  *v13 = 0;
  *(v13 + 1) = 0;
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance] = v27;
  *&v15[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue] = v11;
  v34.receiver = v15;
  v34.super_class = v14;
  v16 = v11;
  *&a4[OBJC_IVAR___PFFairPlayValidationManager_keyLoader] = objc_msgSendSuper2(&v34, sel_init);
  *&a4[OBJC_IVAR___PFFairPlayValidationManager_episodeRemovalManager] = v28;
  v17 = *&a4[v12];
  v33[3] = type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v33[4] = &off_1F54681B0;
  v33[0] = v29;
  v18 = type metadata accessor for DispatchingFairPlayEpisodeDataFetching();
  v19 = objc_allocWithZone(v18);
  sub_1D8CFD9D8(v33, &v19[OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance]);
  *&v19[OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_responseQueue] = v17;
  v32.receiver = v19;
  v32.super_class = v18;
  v20 = v17;
  swift_unknownObjectRetain();

  v21 = objc_msgSendSuper2(&v32, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);

  v22 = &a4[OBJC_IVAR___PFFairPlayValidationManager_episodeFetcher];
  *(v22 + 3) = v18;
  *(v22 + 4) = &off_1F5467218;
  *v22 = v21;
  v31.receiver = a4;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, sel_init);
}

char *sub_1D8D6E1C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D8D6E388()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8D6E3C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D9179A2C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D917867C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1D8F0A3DC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D8F0A30C(0, v2, 1, a1);
  }

  return result;
}