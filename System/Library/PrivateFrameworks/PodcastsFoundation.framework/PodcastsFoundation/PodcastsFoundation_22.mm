uint64_t sub_1D8F5CA58(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = [a1 items];
  if (v3)
  {
    v4 = v3;
    v8 = 0;
    sub_1D8CF2154(0, &qword_1ECAAFDE0, off_1E8567518);
    sub_1D91785EC();
  }

  sub_1D8D77098();
  v5 = swift_allocError();
  *v6 = 5;
  v9[0] = v5;
  memset(&v9[1], 0, 24);
  v10 = 96;
  sub_1D8DA168C(v9);

  return 0;
}

uint64_t sub_1D8F5CD68(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v3 = objc_opt_self();
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [v3 predicateForAllEpisodesIncludingHiddenOnPodcastUuid_];

  [v2 setPredicate_];
  sub_1D8F60098();
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v6 = sub_1D91785DC();

  [v2 setSortDescriptors_];

  [v2 setReturnsObjectsAsFaults_];
  [v2 setFetchBatchSize_];
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v7 = sub_1D917908C();

  return v7;
}

void sub_1D8F5CEFC(uint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v47 = a1;
  v5 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); v5 < i; i = sub_1D917935C())
  {
    v53 = v4 & 0xC000000000000001;
    v49 = v4 & 0xFFFFFFFFFFFFFF8;
    v51 = i;
    v52 = v4;
    v50 = v3;
    while (1)
    {
      if (v53)
      {
        v7 = MEMORY[0x1DA72AA90](v5, v4);
        goto LABEL_11;
      }

      if (v5 < 0)
      {
        break;
      }

      if (v5 >= *(v49 + 16))
      {
        goto LABEL_31;
      }

      v7 = *(v4 + 8 * v5 + 32);
LABEL_11:
      v8 = v7;
      v9 = [v7 uuid];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1D917820C();
        v13 = v12;

        sub_1D8D19AFC(&v54, v11, v13);
      }

      else
      {
        if (qword_1EDCD1068 != -1)
        {
          swift_once();
        }

        v14 = sub_1D917744C();
        __swift_project_value_buffer(v14, qword_1EDCD1070);

        v15 = v8;
        v16 = sub_1D917741C();
        v17 = sub_1D9178CFC();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v56 = v48;
          *v18 = 141558787;
          *(v18 + 4) = 1752392040;
          *(v18 + 12) = 2081;
          type metadata accessor for FeedUpdateRequest(0);
          v19 = sub_1D9176ACC();
          v21 = sub_1D8CFA924(v19, v20, &v56);

          *(v18 + 14) = v21;
          *(v18 + 22) = 2160;
          *(v18 + 24) = 1752392040;
          *(v18 + 32) = 2081;
          v22 = [v15 title];
          if (v22)
          {
            v23 = v22;
            v24 = sub_1D917820C();
            v26 = v25;
          }

          else
          {
            v24 = 0;
            v26 = 0;
          }

          v54 = v24;
          v55 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
          v27 = sub_1D917826C();
          v29 = sub_1D8CFA924(v27, v28, &v56);

          *(v18 + 34) = v29;
          _os_log_impl(&dword_1D8CEC000, v16, v17, "Job %{private,mask.hash}s: nil UUID for localEpisode no longer in server feed: %{private,mask.hash}s", v18, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1DA72CB90](v48, -1, -1);
          MEMORY[0x1DA72CB90](v18, -1, -1);

          i = v51;
          v4 = v52;
          v3 = v50;
        }

        else
        {
        }
      }

      if (qword_1EDCD1068 != -1)
      {
        swift_once();
      }

      v30 = sub_1D917744C();
      __swift_project_value_buffer(v30, qword_1EDCD1070);

      v31 = v8;
      v32 = sub_1D917741C();
      v33 = sub_1D9178D1C();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v56 = v35;
        *v34 = 141558787;
        *(v34 + 4) = 1752392040;
        *(v34 + 12) = 2081;
        type metadata accessor for FeedUpdateRequest(0);
        v36 = sub_1D9176ACC();
        v38 = sub_1D8CFA924(v36, v37, &v56);

        *(v34 + 14) = v38;
        *(v34 + 22) = 2160;
        *(v34 + 24) = 1752392040;
        *(v34 + 32) = 2081;
        v39 = [v31 uuid];
        if (v39)
        {
          v40 = v39;
          v41 = sub_1D917820C();
          v43 = v42;
        }

        else
        {
          v41 = 0;
          v43 = 0;
        }

        v54 = v41;
        v55 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
        v44 = sub_1D917826C();
        v46 = sub_1D8CFA924(v44, v45, &v56);

        *(v34 + 34) = v46;
        _os_log_impl(&dword_1D8CEC000, v32, v33, "Job %{private,mask.hash}s: marking episode for deletion from tail end: %{private,mask.hash}s", v34, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v35, -1, -1);
        MEMORY[0x1DA72CB90](v34, -1, -1);

        i = v51;
        v4 = v52;
        v3 = v50;
      }

      else
      {
      }

      if (i == ++v5)
      {
        *v47 = i;
        return;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }
}

void sub_1D8F5D45C(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v5 = objc_opt_self();
  v6 = sub_1D9178A8C();
  v7 = [v5 predicateForEpisodeUuids_];

  [v4 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189070;
  *(v8 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:@"pubDate" ascending:0];
  v9 = v2;
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v10 = sub_1D91785DC();

  [v4 setSortDescriptors_];

  [v4 setReturnsObjectsAsFaults_];
  [v4 setFetchBatchSize_];
  v11 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v47 = v11;
  v48 = v4;
  v12 = sub_1D917908C();
  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1EDCD1070);
  swift_bridgeObjectRetain_n();

  v14 = sub_1D917741C();
  LOBYTE(v15) = sub_1D9178D1C();

  v16 = &qword_1D918A000;
  v17 = v12 >> 62;
  v51 = v12;
  v52 = v9;
  if (!os_log_type_enabled(v14, v15))
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_8;
  }

  v12 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v54[0] = v8;
  *v12 = 141558531;
  *(v12 + 4) = 1752392040;
  *(v12 + 12) = 2081;
  type metadata accessor for FeedUpdateRequest(0);
  v18 = sub_1D9176ACC();
  v20 = sub_1D8CFA924(v18, v19, v54);

  *(v12 + 14) = v20;
  *(v12 + 22) = 2048;
  if (v17)
  {
    goto LABEL_27;
  }

  v21 = v51;
  for (i = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
  {

    *(v12 + 24) = i;

    _os_log_impl(&dword_1D8CEC000, v14, v15, "Job %{private,mask.hash}s: deleting %ld feed deleted episodes", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1DA72CB90](v8, -1, -1);
    MEMORY[0x1DA72CB90](v12, -1, -1);

    v9 = v52;
    v12 = v21;
    v16 = &qword_1D918A000;
LABEL_8:
    v23 = *(a1 + 16);
    v24 = *(v9 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData + 24);
    v25 = __OFADD__(v24, v23);
    v26 = v24 + v23;
    if (v25)
    {
      __break(1u);
    }

    else
    {
      *(v9 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData + 24) = v26;
      if (!v17)
      {
        v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      }
    }

    v15 = sub_1D917935C();
    if (!v15)
    {
      goto LABEL_25;
    }

LABEL_11:
    if (v15 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_27:
    v21 = v51;
  }

  v27 = 0;
  v28 = v12 & 0xC000000000000001;
  v49 = v16[50];
  v50 = v15;
  do
  {
    if (v28)
    {
      v29 = MEMORY[0x1DA72AA90](v27, v12);
    }

    else
    {
      v29 = *(v12 + 8 * v27 + 32);
    }

    v30 = v29;
    [a2 unsafeDeleteFeedDeletedEpisode_];

    v31 = v30;
    v32 = sub_1D917741C();
    v33 = sub_1D9178D1C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v55[0] = v35;
      *v34 = v49;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      type metadata accessor for FeedUpdateRequest(0);
      v36 = sub_1D9176ACC();
      v38 = sub_1D8CFA924(v36, v37, v55);

      *(v34 + 14) = v38;
      *(v34 + 22) = 2082;
      v39 = [v31 uuid];
      if (v39)
      {
        v40 = v39;
        v41 = sub_1D917820C();
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      v54[0] = v41;
      v54[1] = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
      v44 = sub_1D917826C();
      v46 = sub_1D8CFA924(v44, v45, v55);

      *(v34 + 24) = v46;
      _os_log_impl(&dword_1D8CEC000, v32, v33, "Job %{private,mask.hash}s: deleting episode %{public}s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v35, -1, -1);
      MEMORY[0x1DA72CB90](v34, -1, -1);

      v12 = v51;
      v15 = v50;
    }

    else
    {
    }

    ++v27;
  }

  while (v15 != v27);
LABEL_25:

  [v47 saveInCurrentBlock];
}

uint64_t sub_1D8F5DAC0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  type metadata accessor for FeedUpdateRequest(0);
  sub_1D9176ACC();
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v4 = [v2 podcastForFeedUrl_];

  if (v4)
  {
    if (*(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_feedUniquenessHash + 8))
    {

      v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v5 = 0;
    }

    [v4 setFeedUniquenessHash_];

    [v2 saveInCurrentBlock];
  }

  else
  {
    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1EDCD1070);

    v7 = sub_1D917741C();
    v8 = sub_1D9178CFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v16[0] = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      v11 = sub_1D9176ACC();
      v13 = sub_1D8CFA924(v11, v12, v16);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_1D8CEC000, v7, v8, "Job %{private,mask.hash}s: Unable to save data uniqueness hash.", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }
  }

  v14 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData + 16);
  v16[0] = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData);
  v16[1] = v14;
  v17 = 0x80;
  return sub_1D8DA168C(v16);
}

id sub_1D8F5DD6C(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return result;
  }

  return result;
}

void sub_1D8F5DD78(id a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }
}

uint64_t sub_1D8F5DD94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D8F5DE20(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D8F5DF10(void *a1, void *a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - v16;
  v18 = [a1 pubDate];
  if (v18)
  {
    v40 = a1;
    v19 = a2;
    v20 = v18;
    sub_1D9176DFC();

    v21 = *(v5 + 32);
    v21(v17, v13, v4);
    v22 = [v19 pubDate];
    if (v22)
    {
      v23 = v22;
      sub_1D9176DFC();

      v21(v10, v7, v4);
      sub_1D8DA1F0C(&qword_1EDCD5940, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      LOBYTE(v23) = sub_1D917818C();
      v24 = *(v5 + 8);
      v24(v10, v4);
      v24(v17, v4);
      v25 = v23 ^ 1;
      return v25 & 1;
    }

    (*(v5 + 8))(v17, v4);
    a2 = v19;
    a1 = v40;
  }

  v26 = [a1 guid];
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = v26;
  v28 = sub_1D917820C();
  v30 = v29;

  v31 = [a2 guid];
  if (!v31)
  {

LABEL_11:
    v36 = [a2 guid];
    if (v36)
    {

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    return v25 & 1;
  }

  v32 = v31;
  v33 = sub_1D917820C();
  v35 = v34;

  if (v28 == v33 && v30 == v35)
  {

    v25 = 1;
  }

  else
  {
    v37 = sub_1D9179ACC();

    v25 = v37 ^ 1;
  }

  return v25 & 1;
}

uint64_t sub_1D8F5E254(void **a1, id *a2, void **a3, void **a4)
{
  v109 = sub_1D9176E3C();
  v8 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v101 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v97 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v97 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v97 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v97 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v97 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v106 = (&v97 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v97 - v23;
  v24 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v24 = a2 - a1;
  }

  v25 = v24 >> 3;
  v113 = a3;
  v26 = a3 - a2;
  v27 = v26 / 8;
  v112 = a4;
  if (v24 >> 3 >= v26 / 8)
  {
    if (a4 != a2 || &a2[v27] <= a4)
    {
      memmove(a4, a2, 8 * v27);
    }

    v28 = &a4[v27];
    if (v26 < 8 || a2 <= a1)
    {
      goto LABEL_62;
    }

    v108 = (v8 + 32);
    v103 = (v8 + 8);
    v61 = &selRef_allPlayedEpsWeight;
    v105 = a1;
LABEL_37:
    v102 = a2;
    v62 = a2 - 1;
    --v113;
    v63 = v28;
    v64 = v107;
    v106 = v62;
    while (1)
    {
      v65 = *--v63;
      v66 = *v62;
      v67 = v65;
      v68 = v66;
      v69 = [v67 pubDate];
      if (v69)
      {
        v70 = v104;
        v71 = v68;
        v72 = v69;
        sub_1D9176DFC();

        v68 = v71;
        v73 = v109;
        v74 = *v108;
        (*v108)(v64, v70, v109);
        v75 = [v68 pubDate];
        if (v75)
        {
          v76 = v101;
          v110 = v68;
          v77 = v75;
          sub_1D9176DFC();

          v78 = v100;
          v79 = v76;
          v61 = &selRef_allPlayedEpsWeight;
          v74(v100, v79, v73);
          sub_1D8DA1F0C(&qword_1EDCD5940, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          v80 = sub_1D917818C();
          v81 = *v103;
          v82 = v78;
          v64 = v107;
          (*v103)(v82, v73);
          v81(v64, v73);

          goto LABEL_48;
        }

        (*v103)(v64, v73);
        v62 = v106;
      }

      v83 = [v67 v61[381]];
      if (!v83)
      {
        goto LABEL_51;
      }

      v111 = v28;
      v84 = v83;
      v85 = sub_1D917820C();
      v87 = v86;

      v88 = v61[381];
      v110 = v68;
      v89 = [v68 v88];
      if (!v89)
      {

        v68 = v110;
        v28 = v111;
LABEL_51:
        v94 = v68;
        v95 = [v68 v61[381]];

        if (!v95)
        {
          goto LABEL_56;
        }

        goto LABEL_53;
      }

      v90 = v89;
      v91 = sub_1D917820C();
      v93 = v92;

      if (v85 == v91 && v87 == v93)
      {

        v28 = v111;
        v61 = &selRef_allPlayedEpsWeight;
        v62 = v106;
LABEL_56:
        if (v113 + 1 != v102)
        {
          *v113 = *v62;
        }

        if (v28 <= v112 || (a2 = v62, v62 <= v105))
        {
          a2 = v62;
          goto LABEL_62;
        }

        goto LABEL_37;
      }

      v80 = sub_1D9179ACC();

      v28 = v111;
      v61 = &selRef_allPlayedEpsWeight;
LABEL_48:
      v62 = v106;
      if ((v80 & 1) == 0)
      {
        goto LABEL_56;
      }

LABEL_53:
      if (v113 + 1 != v28)
      {
        *v113 = *v63;
      }

      --v113;
      v28 = v63;
      if (v63 <= v112)
      {
        v28 = v63;
        a2 = v102;
        goto LABEL_62;
      }
    }
  }

  if (a4 != a1 || &a1[v25] <= v112)
  {
    memmove(v112, a1, 8 * v25);
  }

  v28 = &v112[v25];
  if (a2 - a1 >= 8 && a2 < v113)
  {
    v108 = (v8 + 32);
    v104 = (v8 + 8);
    v29 = &selRef_isBackCatalogItem;
    v30 = &selRef_allPlayedEpsWeight;
    v111 = &v112[v25];
    while (1)
    {
      v31 = *v112;
      v32 = *a2;
      v33 = v31;
      v34 = [v32 v29[486]];
      if (v34)
      {
        v110 = v32;
        v35 = v106;
        v36 = v34;
        sub_1D9176DFC();

        v37 = v109;
        v38 = *v108;
        v39 = v103;
        (*v108)(v103, v35, v109);
        v40 = [v33 v29[486]];
        if (v40)
        {
          v41 = a2;
          v42 = v99;
          v43 = v40;
          sub_1D9176DFC();

          v107 = v33;
          v44 = v98;
          v45 = v42;
          a2 = v41;
          v38(v98, v45, v37);
          sub_1D8DA1F0C(&qword_1EDCD5940, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          LOBYTE(v43) = sub_1D917818C();
          v46 = *v104;
          (*v104)(v44, v37);
          v29 = &selRef_isBackCatalogItem;
          v46(v39, v37);

          v30 = &selRef_allPlayedEpsWeight;
          if ((v43 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        (*v104)(v39, v37);
        v30 = &selRef_allPlayedEpsWeight;
        v32 = v110;
      }

      v47 = [v32 v30[381]];
      if (!v47)
      {
        goto LABEL_21;
      }

      v105 = a1;
      v48 = v47;
      v49 = sub_1D917820C();
      v51 = v50;

      v52 = [v33 v30[381]];
      if (!v52)
      {
        break;
      }

      v102 = a2;
      v53 = v52;
      v54 = sub_1D917820C();
      v56 = v55;

      if (v49 == v54 && v51 == v56)
      {

        a2 = v102;
        a1 = v105;
LABEL_26:
        v59 = a2;
        v60 = a1 == a2++;
        v28 = v111;
        if (v60)
        {
          goto LABEL_28;
        }

LABEL_27:
        *a1 = *v59;
        goto LABEL_28;
      }

      v58 = sub_1D9179ACC();

      a2 = v102;
      a1 = v105;
      if ((v58 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_24:
      v59 = v112++;
      v28 = v111;
      if (a1 != v59)
      {
        goto LABEL_27;
      }

LABEL_28:
      ++a1;
      if (v112 >= v28 || a2 >= v113)
      {
        goto LABEL_30;
      }
    }

    a1 = v105;
LABEL_21:
    v57 = [v33 v30[381]];

    if (!v57)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_30:
  a2 = a1;
LABEL_62:
  if (a2 != v112 || a2 >= (v112 + ((v28 - v112 + (v28 - v112 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v112, 8 * (v28 - v112));
  }

  return 1;
}

uint64_t sub_1D8F5EB98(char **a1, void **a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *a1;

  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v22 = sub_1D8F5DE20(v22);
  }

  v19 = v5;
  *v5 = v22;
  v7 = (v22 + 16);
  v8 = *(v22 + 2);
  if (v8 < 2)
  {
LABEL_9:

    *v19 = v22;
    return 1;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = v4;
      v11 = &v22[16 * v8];
      v5 = *v11;
      v12 = &v7[2 * v8];
      v13 = v12[1];
      v23 = (v9 + 8 * *v11);
      v14 = (v9 + 8 * *v12);
      v15 = (v9 + 8 * v13);

      sub_1D8F5E254(v23, v14, v15, a2);
      v4 = v10;

      if (v10)
      {
        *v19 = v22;

        return 1;
      }

      if (v13 < v5)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v16 = *v7;
      if (v8 - 2 >= *v7)
      {
        goto LABEL_13;
      }

      *v11 = v5;
      *(v11 + 1) = v13;
      v17 = v16 - v8;
      if (v16 < v8)
      {
        goto LABEL_14;
      }

      v8 = v16 - 1;
      memmove(v12, v12 + 2, 16 * v17);
      *v7 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v22;
    __break(1u);
  }

  return result;
}

void sub_1D8F5ED3C(void ***a1, uint64_t a2, void ***a3, uint64_t a4, unint64_t a5)
{
  v168 = a1;
  v8 = sub_1D9176E3C();
  MEMORY[0x1EEE9AC00](v8);
  v184 = &v167 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v183 = &v167 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v186 = &v167 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v185 = &v167 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v170 = &v167 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v169 = &v167 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v172 = &v167 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v171 = &v167 - v24;
  v192 = MEMORY[0x1E69E7CC0];
  v178 = a3;
  v25 = a3[1];
  if (v25 >= 1)
  {
    v187 = (v23 + 8);
    v188 = (v23 + 32);
    swift_retain_n();
    v26 = 0;
    v180 = MEMORY[0x1E69E7CC0];
    v27 = 0x1FAAD3000;
    v177 = a5;
    v167 = a4;
    v182 = v8;
    while (1)
    {
      v174 = v26;
      v28 = v26 + 1;
      if (v26 + 1 < v25)
      {
        v29 = *v178;
        v30 = (*v178)[v174];
        v31 = (*v178)[v28];
        v32 = v30;
        LODWORD(v191) = sub_1D8F5DF10(v31, v32);

        v33 = v174;
        v28 = v174 + 2;
        if (v174 + 2 < v25)
        {
          v181 = v174 + 2;
          v34 = &v29[v174 + 2];
          v189 = v25;
          while (1)
          {
            v43 = *(v34 - 1);
            v44 = *v34;
            v45 = v43;
            v46 = [v44 pubDate];
            if (v46)
            {
              v47 = v172;
              v48 = v46;
              sub_1D9176DFC();

              v49 = *v188;
              v50 = v171;
              (*v188)(v171, v47, v8);
              v51 = [v45 pubDate];
              if (v51)
              {
                v35 = v170;
                v36 = v8;
                v37 = v50;
                v38 = v51;
                sub_1D9176DFC();

                v190 = v45;
                v39 = v169;
                v49(v169, v35, v36);
                sub_1D8DA1F0C(&qword_1EDCD5940, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
                LODWORD(v38) = sub_1D917818C();
                v40 = *v187;
                (*v187)(v39, v36);
                v41 = v37;
                v8 = v36;
                v40(v41, v36);

                v42 = v38 ^ 1;
                v25 = v189;
                goto LABEL_8;
              }

              (*v187)(v50, v8);
              v25 = v189;
            }

            v52 = [v44 guid];
            if (!v52)
            {
              goto LABEL_19;
            }

            v53 = v52;
            v54 = sub_1D917820C();
            v56 = v55;

            v57 = [v45 guid];
            if (!v57)
            {

LABEL_19:
              v63 = [v45 guid];

              if (v63)
              {

                if (v191)
                {
                  a4 = v167;
                  v27 = 0x1FAAD3000;
                  v28 = v181;
                  v33 = v174;
                  if (v181 < v174)
                  {
                    goto LABEL_145;
                  }

                  goto LABEL_31;
                }
              }

              else if ((v191 & 1) == 0)
              {
                a4 = v167;
                v27 = 0x1FAAD3000uLL;
                v28 = v181;
                goto LABEL_39;
              }

              goto LABEL_9;
            }

            v58 = v45;
            v59 = v57;
            v60 = sub_1D917820C();
            v62 = v61;

            if (v54 == v60 && v56 == v62)
            {

              v42 = 1;
            }

            else
            {
              v64 = sub_1D9179ACC();

              v42 = v64 ^ 1;
            }

            v8 = v182;

LABEL_8:
            if ((v191 ^ v42))
            {
              a4 = v167;
              v28 = v181;
              goto LABEL_28;
            }

LABEL_9:
            ++v34;
            if (v25 == ++v181)
            {
              v28 = v25;
              a4 = v167;
LABEL_28:
              v33 = v174;
              break;
            }
          }
        }

        v27 = 0x1FAAD3000;
        if (v191)
        {
          if (v28 < v33)
          {
            goto LABEL_145;
          }

LABEL_31:
          if (v33 < v28)
          {
            v65 = 8 * v28 - 8;
            v66 = v33;
            v67 = v28;
            do
            {
              if (v33 != --v67)
              {
                v68 = *v178;
                if (!*v178)
                {
                  goto LABEL_150;
                }

                v69 = v68[v66];
                v68[v66] = *(v68 + v65);
                *(v68 + v65) = v69;
              }

              ++v33;
              v65 -= 8;
              ++v66;
            }

            while (v33 < v67);
          }
        }
      }

LABEL_39:
      v70 = v178[1];
      if (v28 >= v70)
      {
        goto LABEL_70;
      }

      if (__OFSUB__(v28, v174))
      {
        goto LABEL_144;
      }

      if (v28 - v174 >= a4)
      {
LABEL_70:
        v72 = v174;
      }

      else
      {
        if (__OFADD__(v174, a4))
        {
          goto LABEL_146;
        }

        if (v174 + a4 >= v70)
        {
          v71 = v178[1];
        }

        else
        {
          v71 = v174 + a4;
        }

        if (v71 < v174)
        {
LABEL_147:
          __break(1u);
LABEL_148:

          __break(1u);
LABEL_149:

          __break(1u);
LABEL_150:

          __break(1u);
LABEL_151:

          __break(1u);
LABEL_152:

          __break(1u);
          return;
        }

        v72 = v174;
        if (v28 != v71)
        {
          v191 = *v178;
          v73 = &v191[v28 - 1];
          v74 = v174 - v28;
          v75 = v27;
          v173 = v71;
          while (1)
          {
            v181 = v28;
            v76 = v191[v28];
            v175 = v74;
            v176 = v73;
            v77 = v74;
            while (1)
            {
              v78 = *v73;
              v79 = v76;
              v80 = v78;
              v81 = [v79 pubDate];
              if (v81)
              {
                v82 = v186;
                v83 = v81;
                sub_1D9176DFC();

                v84 = *v188;
                v85 = v185;
                (*v188)(v185, v82, v8);
                v86 = [v80 pubDate];
                if (v86)
                {
                  v87 = v184;
                  v190 = v79;
                  v88 = v8;
                  v89 = v85;
                  v90 = v86;
                  sub_1D9176DFC();

                  v189 = v80;
                  v91 = v183;
                  v84(v183, v87, v88);
                  sub_1D8DA1F0C(&qword_1EDCD5940, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
                  LOBYTE(v90) = sub_1D917818C();
                  v92 = *v187;
                  (*v187)(v91, v88);
                  v93 = v89;
                  v8 = v88;
                  v92(v93, v88);

                  v75 = 0x1E856F000;
                  if (v90)
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_65;
                }

                (*v187)(v85, v8);
                v75 = 0x1E856F000;
              }

              v94 = [v79 *(v75 + 3048)];
              if (v94)
              {
                v95 = v79;
                v96 = v94;
                v97 = sub_1D917820C();
                v99 = v98;

                v100 = *(v75 + 3048);
                v101 = v80;
                v102 = [v80 v100];
                if (v102)
                {
                  v103 = v102;
                  v104 = sub_1D917820C();
                  v106 = v105;

                  if (v97 == v104 && v99 == v106)
                  {

                    v8 = v182;
                    v75 = 0x1E856F000;
                  }

                  else
                  {
                    v108 = sub_1D9179ACC();

                    v8 = v182;
                    v75 = 0x1E856F000;
                    if (v108)
                    {
                      goto LABEL_49;
                    }
                  }

                  goto LABEL_65;
                }

                v79 = v95;
                v75 = 0x1E856F000;
              }

              v107 = [v80 *(v75 + 3048)];

              if (v107)
              {
                break;
              }

LABEL_65:
              if (!v191)
              {
                goto LABEL_148;
              }

              v109 = *v73;
              v76 = v73[1];
              *v73 = v76;
              v73[1] = v109;
              --v73;
              if (__CFADD__(v77++, 1))
              {
                goto LABEL_49;
              }
            }

LABEL_49:
            v28 = v181 + 1;
            v73 = v176 + 1;
            v74 = v175 - 1;
            if (v181 + 1 == v173)
            {
              v28 = v173;
              goto LABEL_70;
            }
          }
        }
      }

      v111 = v180;
      if (v28 < v72)
      {
        goto LABEL_143;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = sub_1D8ECC734(0, *(v111 + 2) + 1, 1, v111);
      }

      v113 = *(v111 + 2);
      v112 = *(v111 + 3);
      v114 = v113 + 1;
      if (v113 >= v112 >> 1)
      {
        v111 = sub_1D8ECC734((v112 > 1), v113 + 1, 1, v111);
      }

      *(v111 + 2) = v114;
      v115 = v111 + 32;
      v116 = &v111[16 * v113 + 32];
      *v116 = v174;
      *(v116 + 1) = v28;
      v191 = *v168;
      if (!v191)
      {
        goto LABEL_151;
      }

      v180 = v111;
      v181 = v28;
      if (v113)
      {
        while (1)
        {
          v117 = v114 - 1;
          if (v114 >= 4)
          {
            break;
          }

          if (v114 == 3)
          {
            v118 = *(v111 + 4);
            v119 = *(v111 + 5);
            v128 = __OFSUB__(v119, v118);
            v120 = v119 - v118;
            v121 = v128;
LABEL_91:
            if (v121)
            {
              goto LABEL_133;
            }

            v134 = &v111[16 * v114];
            v136 = *v134;
            v135 = *(v134 + 1);
            v137 = __OFSUB__(v135, v136);
            v138 = v135 - v136;
            v139 = v137;
            if (v137)
            {
              goto LABEL_135;
            }

            v140 = &v115[16 * v117];
            v142 = *v140;
            v141 = *(v140 + 1);
            v128 = __OFSUB__(v141, v142);
            v143 = v141 - v142;
            if (v128)
            {
              goto LABEL_138;
            }

            if (__OFADD__(v138, v143))
            {
              goto LABEL_140;
            }

            if (v138 + v143 >= v120)
            {
              if (v120 < v143)
              {
                v117 = v114 - 2;
              }

              goto LABEL_113;
            }

            goto LABEL_106;
          }

          if (v114 < 2)
          {
            goto LABEL_141;
          }

          v144 = &v111[16 * v114];
          v146 = *v144;
          v145 = *(v144 + 1);
          v128 = __OFSUB__(v145, v146);
          v138 = v145 - v146;
          v139 = v128;
LABEL_106:
          if (v139)
          {
            goto LABEL_137;
          }

          v147 = &v115[16 * v117];
          v149 = *v147;
          v148 = *(v147 + 1);
          v128 = __OFSUB__(v148, v149);
          v150 = v148 - v149;
          if (v128)
          {
            goto LABEL_139;
          }

          if (v150 < v138)
          {
            goto LABEL_3;
          }

LABEL_113:
          if (v117 - 1 >= v114)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          v155 = *v178;
          if (!*v178)
          {
            goto LABEL_149;
          }

          v156 = &v115[16 * v117 - 16];
          v157 = *v156;
          v158 = &v115[16 * v117];
          v159 = *(v158 + 1);
          v160 = &v155[*v156];
          v161 = &v155[*v158];
          v162 = &v155[v159];

          v163 = v160;
          v164 = v179;
          sub_1D8F5E254(v163, v161, v162, v191);
          v179 = v164;
          if (v164)
          {

            v192 = v180;
            goto LABEL_125;
          }

          if (v159 < v157)
          {
            goto LABEL_128;
          }

          v165 = *(v180 + 2);
          if (v117 > v165)
          {
            goto LABEL_129;
          }

          *v156 = v157;
          *(v156 + 1) = v159;
          if (v117 >= v165)
          {
            goto LABEL_130;
          }

          v114 = v165 - 1;
          memmove(&v115[16 * v117], v158 + 16, 16 * (v165 - 1 - v117));
          v111 = v180;
          *(v180 + 2) = v165 - 1;
          v8 = v182;
          if (v165 <= 2)
          {
            goto LABEL_3;
          }
        }

        v122 = &v115[16 * v114];
        v123 = *(v122 - 8);
        v124 = *(v122 - 7);
        v128 = __OFSUB__(v124, v123);
        v125 = v124 - v123;
        if (v128)
        {
          goto LABEL_131;
        }

        v127 = *(v122 - 6);
        v126 = *(v122 - 5);
        v128 = __OFSUB__(v126, v127);
        v120 = v126 - v127;
        v121 = v128;
        if (v128)
        {
          goto LABEL_132;
        }

        v129 = &v111[16 * v114];
        v131 = *v129;
        v130 = *(v129 + 1);
        v128 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v128)
        {
          goto LABEL_134;
        }

        v128 = __OFADD__(v120, v132);
        v133 = v120 + v132;
        if (v128)
        {
          goto LABEL_136;
        }

        if (v133 >= v125)
        {
          v151 = &v115[16 * v117];
          v153 = *v151;
          v152 = *(v151 + 1);
          v128 = __OFSUB__(v152, v153);
          v154 = v152 - v153;
          if (v128)
          {
            goto LABEL_142;
          }

          if (v120 < v154)
          {
            v117 = v114 - 2;
          }

          goto LABEL_113;
        }

        goto LABEL_91;
      }

LABEL_3:
      v25 = v178[1];
      v26 = v181;
      a4 = v167;
      v27 = 0x1FAAD3000;
      if (v181 >= v25)
      {
        v192 = v180;
        goto LABEL_123;
      }
    }
  }

  swift_retain_n();
LABEL_123:
  v166 = *v168;
  if (!*v168)
  {
    goto LABEL_152;
  }

  sub_1D8F5EB98(&v192, v166, v178);

LABEL_125:
}

void sub_1D8F5FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D9176E3C();
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - v16;
  v50 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v61 = (v15 + 32);
    v57 = (v15 + 8);
    v59 = v18;
    v60 = &v49 - v16;
    v19 = v18 + 8 * a3 - 8;
    v20 = a1 - a3;
    v54 = v8;
LABEL_5:
    v52 = v19;
    v53 = a3;
    v21 = *(v59 + 8 * a3);
    v51 = v20;
    while (1)
    {
      v22 = *v19;
      v23 = v21;
      v24 = v22;
      v25 = [v23 pubDate];
      if (v25)
      {
        v26 = v58;
        v27 = v25;
        sub_1D9176DFC();

        v28 = *v61;
        (*v61)(v17, v26, v8);
        v29 = [v24 pubDate];
        if (v29)
        {
          v30 = v56;
          v31 = v29;
          sub_1D9176DFC();

          v32 = v55;
          v28(v55, v30, v8);
          sub_1D8DA1F0C(&qword_1EDCD5940, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          LOBYTE(v31) = sub_1D917818C();
          v33 = *v57;
          v34 = v32;
          v17 = v60;
          (*v57)(v34, v8);
          v33(v17, v8);

          if (v31)
          {
            goto LABEL_4;
          }

          goto LABEL_20;
        }

        (*v57)(v17, v8);
      }

      v35 = [v23 guid];
      if (v35)
      {
        v36 = v35;
        v37 = sub_1D917820C();
        v39 = v38;

        v40 = [v24 &selRef_autoupdatingCurrentLocale];
        if (v40)
        {
          v41 = v40;
          v42 = sub_1D917820C();
          v44 = v43;

          if (v37 == v42 && v39 == v44)
          {

            v8 = v54;
            v17 = v60;
          }

          else
          {
            v46 = sub_1D9179ACC();

            v8 = v54;
            v17 = v60;
            if (v46)
            {
              goto LABEL_4;
            }
          }

          goto LABEL_20;
        }

        v17 = v60;
      }

      v45 = [v24 guid];

      if (v45)
      {

LABEL_4:
        a3 = v53 + 1;
        v19 = v52 + 8;
        v20 = v51 - 1;
        if (v53 + 1 == v50)
        {
          return;
        }

        goto LABEL_5;
      }

LABEL_20:
      if (!v59)
      {
        __break(1u);
        return;
      }

      v47 = *v19;
      v21 = *(v19 + 8);
      *v19 = v21;
      *(v19 + 8) = v47;
      v19 -= 8;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }
  }
}

void sub_1D8F5FE94(void ***a1, unint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  v5 = sub_1D9179A2C();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D8CF2154(0, &qword_1ECAAFDE0, off_1E8567518);
        v8 = sub_1D917867C();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_1D8F5ED3C(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1D8F5FA58(0, v4, 1, a1);
  }
}

uint64_t sub_1D8F5FFE8(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_1D915C740();
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7[0] = ((v4 & 0xFFFFFFFFFFFFFF8) + 32);
  v7[1] = v5;

  sub_1D8F5FE94(v7, a2);

  *a1 = v4;
}

uint64_t sub_1D8F60098()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D918C190;
  sub_1D917820C();
  v1 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  sub_1D917820C();
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v6 = [v4 initWithKey:v5 ascending:0];

  *(v0 + 40) = v6;
  return v0;
}

uint64_t sub_1D8F601B8(void *a1, void *a2)
{
  v70 = sub_1D9176E3C();
  v4 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75B8, &qword_1D9197C80);
  MEMORY[0x1EEE9AC00](v68);
  v7 = &v65 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v65 - v15;
  v17 = [a2 guid];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1D917820C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v69 = v4;
  v22 = [a1 guid];
  if (!v22)
  {
    if (!v21)
    {
      return 1;
    }

    goto LABEL_13;
  }

  v23 = v22;
  v24 = sub_1D917820C();
  v26 = v25;

  if (!v21)
  {
    if (!v26)
    {
      return 1;
    }

    goto LABEL_13;
  }

  if (!v26)
  {
LABEL_13:

    goto LABEL_14;
  }

  if (v19 == v24 && v21 == v26)
  {
    goto LABEL_22;
  }

  v48 = sub_1D9179ACC();

  if (v48)
  {
    return 1;
  }

LABEL_14:
  v27 = [a2 resolvedEnclosureUrl];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1D917820C();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [a1 enclosureURL];
  if (!v32)
  {
    if (!v31)
    {
      return 1;
    }

    goto LABEL_26;
  }

  v33 = v32;
  v34 = sub_1D917820C();
  v36 = v35;

  if (!v31)
  {
    if (!v36)
    {
      return 1;
    }

    goto LABEL_26;
  }

  if (!v36)
  {
LABEL_26:

    goto LABEL_27;
  }

  if (v29 == v34 && v31 == v36)
  {
LABEL_22:

    return 1;
  }

  v49 = sub_1D9179ACC();

  if (v49)
  {
    return 1;
  }

LABEL_27:
  result = [a2 title];
  if (result)
  {
    v38 = result;
    v39 = [result stringByStrippingHTML];

    if (v39)
    {
      v40 = sub_1D917820C();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v43 = [a1 title];
    if (v43)
    {
      v44 = v43;
      v45 = sub_1D917820C();
      v47 = v46;

      if (v42)
      {
        if (v47)
        {
          if (v40 == v45 && v42 == v47)
          {

LABEL_46:
            v51 = [a2 pubDate];
            if (v51)
            {
              v52 = v51;
              sub_1D9176DFC();

              v53 = v69;
              v54 = *(v69 + 56);
              v55 = v16;
              v56 = 0;
            }

            else
            {
              v53 = v69;
              v54 = *(v69 + 56);
              v55 = v16;
              v56 = 1;
            }

            v57 = v70;
            v54(v55, v56, 1, v70);
            [a1 pubDate];
            sub_1D9176CBC();
            v54(v12, 0, 1, v57);
            v58 = *(v68 + 48);
            sub_1D8CF6B1C(v16, v7);
            sub_1D8CF6B1C(v12, &v7[v58]);
            v59 = *(v53 + 48);
            if (v59(v7, 1, v57) == 1)
            {
              sub_1D8D08A50(v12, &qword_1ECAB75C0, &unk_1D9188A50);
              sub_1D8D08A50(v16, &qword_1ECAB75C0, &unk_1D9188A50);
              if (v59(&v7[v58], 1, v57) == 1)
              {
                sub_1D8D08A50(v7, &qword_1ECAB75C0, &unk_1D9188A50);
                return 1;
              }

              goto LABEL_54;
            }

            v60 = v67;
            sub_1D8CF6B1C(v7, v67);
            if (v59(&v7[v58], 1, v57) == 1)
            {
              sub_1D8D08A50(v12, &qword_1ECAB75C0, &unk_1D9188A50);
              sub_1D8D08A50(v16, &qword_1ECAB75C0, &unk_1D9188A50);
              (*(v53 + 8))(v60, v57);
LABEL_54:
              sub_1D8D08A50(v7, &qword_1ECAB75B8, &qword_1D9197C80);
              return 0;
            }

            v61 = v66;
            (*(v53 + 32))(v66, &v7[v58], v57);
            sub_1D8DA1F0C(&qword_1ECAB75C8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
            v62 = v60;
            v63 = sub_1D91781BC();
            v64 = *(v53 + 8);
            v64(v61, v57);
            sub_1D8D08A50(v12, &qword_1ECAB75C0, &unk_1D9188A50);
            sub_1D8D08A50(v16, &qword_1ECAB75C0, &unk_1D9188A50);
            v64(v62, v57);
            sub_1D8D08A50(v7, &qword_1ECAB75C0, &unk_1D9188A50);
            return (v63 & 1) != 0;
          }

          v50 = sub_1D9179ACC();

          if (v50)
          {
            goto LABEL_46;
          }

          return 0;
        }
      }

      else if (!v47)
      {
        goto LABEL_46;
      }
    }

    else if (!v42)
    {
      goto LABEL_46;
    }

    return 0;
  }

  __break(1u);
  return result;
}

double ServerArtwork.__allocating_init(from:)(void *a1)
{
  v2 = [a1 artworkWidth];
  if (v2)
  {
    v3 = v2;
    sub_1D9178B7C();
  }

  v4 = [a1 artworkHeight];
  if (v4)
  {
    v5 = v4;
    sub_1D9178B7C();
  }

  v6 = [a1 artworkTemplateURL];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D917820C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [a1 artworkPrimaryColor];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D917820C();
    v15 = v14;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v13 = 0;
    v15 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 1;
  *(v16 + 32) = 0;
  *(v16 + 40) = 1;
  *(v16 + 48) = v8;
  *(v16 + 56) = v10;
  *(v16 + 64) = v13;
  *(v16 + 72) = v15;
  result = 0.0;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  *(v16 + 128) = 0u;
  return result;
}

uint64_t sub_1D8F60B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D8E3151C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D8E3151C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D8D65618(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D8F60C24(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D8E3157C(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_1D8F1249C(v11, v4);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D8E3157C((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_1D8F61F74(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

char *sub_1D8F60E3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D917935C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1D8E31600(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1DA72AA90](v5, a1);
        type metadata accessor for ServerCategory();
        swift_dynamicCast();
        v7 = *(v16 + 16);
        v6 = *(v16 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1D8E31600((v6 > 1), v7 + 1, 1);
        }

        ++v5;
        *(v16 + 16) = v7 + 1;
        v8 = v16 + 40 * v7;
        *(v8 + 64) = v15;
        *(v8 + 32) = v13;
        *(v8 + 48) = v14;
      }

      while (v2 != v5);
    }

    else
    {
      v9 = a1 + 32;
      type metadata accessor for ServerCategory();
      do
      {

        swift_dynamicCast();
        v11 = *(v16 + 16);
        v10 = *(v16 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D8E31600((v10 > 1), v11 + 1, 1);
        }

        *(v16 + 16) = v11 + 1;
        v12 = v16 + 40 * v11;
        *(v12 + 64) = v15;
        *(v12 + 32) = v13;
        *(v12 + 48) = v14;
        v9 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8F6102C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D917935C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1D8E31680(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA72AA90](0, a1);
    result = sub_1D917803C();
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(a1 + 32);
  result = sub_1D917803C();
LABEL_12:
  __break(1u);
  return result;
}

char *sub_1D8F61234(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1D917935C();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D8E3151C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x1DA72AA90](i, a1);
        sub_1D8CF2154(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D8E3151C((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_1D8D65618(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_1D8CF2154(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D8E3151C((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_1D8D65618(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8F61420(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {

    v6 = sub_1D91796FC();

    return v6;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_1D9179C4C();
    if (!swift_dynamicCastMetatype())
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        for (i = (v2 + 32); *i; ++i)
        {
          if (!--v4)
          {
            return v1;
          }
        }

        return v2 | 1;
      }
    }

    return v1;
  }
}

char *sub_1D8F61508(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_1D917935C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v14 = MEMORY[0x1E69E7CC0];
  result = sub_1D8E3151C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v14;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x1DA72AA90](i, a1);
        a2(0);
        swift_dynamicCast();
        v14 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1D8E3151C((v8 > 1), v9 + 1, 1);
          v5 = v14;
        }

        *(v5 + 16) = v9 + 1;
        sub_1D8D65618(v13, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = a1 + 32;
      a2(0);
      do
      {

        swift_dynamicCast();
        v14 = v5;
        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1D8E3151C((v11 > 1), v12 + 1, 1);
          v5 = v14;
        }

        *(v5 + 16) = v12 + 1;
        sub_1D8D65618(v13, (v5 + 32 * v12 + 32));
        v10 += 8;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8F616E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D8E316C0(0, v1, 0);
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D8E316C0((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t ServerCategory.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ServerCategory.artworkPrimaryColor.getter()
{
  v1 = *(*(v0 + 48) + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 64);

  return v3;
}

uint64_t ServerCategory.artworkTemplateURL.getter()
{
  v1 = *(*(v0 + 48) + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 48);

  return v3;
}

uint64_t _s18PodcastsFoundation14ServerCategoryC13artworkHeightSo8NSNumberCSgvg_0()
{
  v1 = *(*(v0 + 48) + 48);
  if (v1 && (v2 = *(v1 + 16)) != 0 && (*(v2 + 40) & 1) == 0)
  {
    return sub_1D9178B6C();
  }

  else
  {
    return 0;
  }
}

uint64_t _s18PodcastsFoundation14ServerCategoryC12artworkWidthSo8NSNumberCSgvg_0()
{
  v1 = *(*(v0 + 48) + 48);
  if (v1 && (v2 = *(v1 + 16)) != 0 && (*(v2 + 24) & 1) == 0)
  {
    return sub_1D9178B6C();
  }

  else
  {
    return 0;
  }
}

uint64_t ServerCategory.name.getter()
{
  v1 = *(*(v0 + 48) + 16);

  return v1;
}

uint64_t ServerCategory.url.getter()
{
  v1 = *(*(v0 + 48) + 32);

  return v1;
}

uint64_t ServerCategory.artwork.getter()
{
  if (*(*(v0 + 48) + 48))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t ServerCategory.color.getter()
{
  v1 = *(*(v0 + 48) + 56);

  return v1;
}

uint64_t ServerCategory.parent.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {

    v5 = MEMORY[0x1DA72AA90](0, v3);

    return v5;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t ServerCategory.children.getter()
{
  v1 = *(v0 + 56);
  if (v1 && (v2 = *(v1 + 24)) != 0)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1D8F60E3C(v3);

  v5 = sub_1D8FC12E8(v4);

  return v5;
}

uint64_t sub_1D8F61F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ServerChapter.title.getter()
{
  v1 = *(*(v0 + 48) + 32);

  return v1;
}

uint64_t ServerChapter.timeframesData.getter()
{
  sub_1D91765CC();
  swift_allocObject();

  sub_1D91765BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7648, &qword_1D9197C90);
  sub_1D8F621EC();
  v0 = sub_1D91765AC();

  return v0;
}

unint64_t sub_1D8F621EC()
{
  result = qword_1ECAB7650;
  if (!qword_1ECAB7650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB7648, &qword_1D9197C90);
    sub_1D8F62270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7650);
  }

  return result;
}

unint64_t sub_1D8F62270()
{
  result = qword_1ECAB7658;
  if (!qword_1ECAB7658)
  {
    type metadata accessor for ServerTimeframe();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7658);
  }

  return result;
}

id ServerChapter.artworkWidth.getter()
{
  v1 = *(*(v0 + 48) + 16);
  if (v1 && (*(v1 + 24) & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  else
  {
    return 0;
  }
}

id ServerChapter.artworkHeight.getter()
{
  v1 = *(*(v0 + 48) + 16);
  if (v1 && (*(v1 + 40) & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  else
  {
    return 0;
  }
}

uint64_t ServerChapter.artworkTemplateURL.getter()
{
  v1 = *(*(v0 + 48) + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 48);

  return v2;
}

uint64_t ServerChapter.artworkBackgroundColor.getter()
{
  v1 = *(*(v0 + 48) + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 64);

  return v2;
}

uint64_t sub_1D8F625F8(uint64_t a1, void *a2, char a3)
{
  v7 = sub_1D9177E0C();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9177E9C();
  v10 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v13 = *(v3 + 32);
  v25 = v3;
  v26 = &v28;
  v22 = sub_1D8F67530;
  v23 = &v24;
  os_unfair_lock_lock(v13 + 4);
  sub_1D8DA3D48(aBlock);
  os_unfair_lock_unlock(v13 + 4);
  v14 = aBlock[0];
  sub_1D8CFD888();
  v15 = sub_1D9178E1C();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = a2;
  v17 = a3 & 1;
  *(v16 + 32) = a3 & 1;
  aBlock[4] = sub_1D8F58A6C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_45;
  v18 = _Block_copy(aBlock);
  sub_1D8DA4A44(a2, v17);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFD6D8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v12, v9, v18);
  _Block_release(v18);

  (*(v21 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v20);
}

uint64_t StoreFeedUpdater.__allocating_init(bagConfiguration:ctx:ingesterProvider:)(uint64_t a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  StoreFeedUpdater.init(bagConfiguration:ctx:ingesterProvider:)(a1, a2, a3);
  return v6;
}

void sub_1D8F62990(uint64_t a1)
{
  v142 = sub_1D9177E0C();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v139 = &v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1D9177E9C();
  v138 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v137 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1D9177DEC();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v133 = (&v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = sub_1D9177EDC();
  v151 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v130 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v144 = &v125 - v8;
  v148 = type metadata accessor for StoreFeedUpdater.Update(0);
  v132 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v10 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v143 = &v125 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v154 = &v125 - v14;
  v134 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v125 - v17;
  v153 = sub_1D9176EAC();
  v147 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v131 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v128 = &v125 - v20;
  v129 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v155 = &v125 - v23;
  v150 = type metadata accessor for StoreFeedUpdater.Retry(0);
  v24 = *(v150 - 1);
  MEMORY[0x1EEE9AC00](v150);
  v146 = (&v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v125 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D8, &qword_1D9197EE8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v149 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v125 - v32;
  v34 = sub_1D9177F1C();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = (&v125 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = v1;
  v39 = *(v1 + 16);
  *v38 = v39;
  (*(v35 + 104))(v38, *MEMORY[0x1E69E8020], v34, v36);
  v40 = v39;
  LOBYTE(v39) = sub_1D9177F4C();
  (*(v35 + 8))(v38, v34);
  if ((v39 & 1) == 0)
  {
    __break(1u);
LABEL_29:
    swift_once();
LABEL_4:
    v42 = sub_1D917744C();
    __swift_project_value_buffer(v42, qword_1EDCD1050);
    sub_1D8D5F1EC(v34, v10, type metadata accessor for StoreFeedUpdater.Update);
    v43 = sub_1D917741C();
    v44 = sub_1D9178D1C();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v154;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v47 = 141558275;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      sub_1D8D7C424(v10, v46, type metadata accessor for StoreFeedUpdater.Update);
      v49 = (v46 + *(v148 + 32));
      v50 = *v49;
      v51 = v49[1];

      sub_1D8D5FDB8(v46, type metadata accessor for StoreFeedUpdater.Update);
      v52 = sub_1D8CFA924(v50, v51, aBlock);

      *(v47 + 14) = v52;
      _os_log_impl(&dword_1D8CEC000, v43, v44, "Update %{private,mask.hash}s: Not retryable, dropping.", v47, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x1DA72CB90](v48, -1, -1);
      MEMORY[0x1DA72CB90](v47, -1, -1);
    }

    else
    {

      sub_1D8D5FDB8(v10, type metadata accessor for StoreFeedUpdater.Update);
    }

    return;
  }

  updated = type metadata accessor for FeedUpdateRequest(0);
  v34 = a1;
  if (*(a1 + *(updated + 52)))
  {
    if (qword_1EDCD1048 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  v125 = v40;
  v53 = *(a1 + *(updated + 28));
  v54 = v152;
  swift_beginAccess();
  v55 = *(v54 + 64);
  if (*(v55 + 16))
  {
    v56 = sub_1D8D490F4(v53);
    v57 = v150;
    if (v58)
    {
      sub_1D8D5F1EC(*(v55 + 56) + *(v24 + 72) * v56, v33, type metadata accessor for StoreFeedUpdater.Retry);
      v59 = 0;
    }

    else
    {
      v59 = 1;
    }
  }

  else
  {
    v59 = 1;
    v57 = v150;
  }

  v126 = *(v24 + 56);
  v126(v33, v59, 1, v57);
  if ((*(v24 + 48))(v33, 1, v57))
  {
    sub_1D8D08A50(v33, &qword_1ECAB76D8, &qword_1D9197EE8);
    v60 = 0;
  }

  else
  {
    sub_1D8D5F1EC(v33, v28, type metadata accessor for StoreFeedUpdater.Retry);
    sub_1D8D08A50(v33, &qword_1ECAB76D8, &qword_1D9197EE8);
    v60 = *v28;
    sub_1D8D5FDB8(v28, type metadata accessor for StoreFeedUpdater.Retry);
  }

  v61 = v153;
  v62 = *(v54 + 80);
  if (v60 < *(v62 + 16))
  {
    v63 = v146;
    *v146 = v60 + 1;
    v64 = *(v57 + 5);
    sub_1D9176E9C();
    v150 = *(v147 + 16);
    v143 = v147 + 16;
    (v150)(v155, v63 + v64, v61);
    v65 = v63;
    v66 = v149;
    sub_1D8D5F1EC(v65, v149, type metadata accessor for StoreFeedUpdater.Retry);
    v126(v66, 0, 1, v57);
    swift_beginAccess();
    sub_1D8F7D378(v66, v53);
    swift_endAccess();
    if ((v60 & 0x8000000000000000) == 0)
    {
      if (v60 >= *(v62 + 16))
      {
        __break(1u);
      }

      else
      {
        v149 = *(v62 + 8 * v60 + 32);
        if (qword_1EDCD1048 == -1)
        {
LABEL_19:
          v67 = sub_1D917744C();
          __swift_project_value_buffer(v67, qword_1EDCD1050);
          v126 = v34;
          v68 = v127;
          sub_1D8D5F1EC(v34, v127, type metadata accessor for StoreFeedUpdater.Update);
          v69 = v128;
          (v150)(v128, v155, v61);
          v70 = sub_1D917741C();
          v71 = sub_1D9178D1C();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            aBlock[0] = v73;
            *v72 = 141558787;
            *(v72 + 4) = 1752392040;
            *(v72 + 12) = 2081;
            v74 = v154;
            sub_1D8D7C424(v68, v154, type metadata accessor for StoreFeedUpdater.Update);
            v75 = &v74[*(v148 + 32)];
            v76 = *v75;
            v77 = v75[1];

            v78 = v74;
            sub_1D8D5FDB8(v74, type metadata accessor for StoreFeedUpdater.Update);
            v79 = sub_1D8CFA924(v76, v77, aBlock);

            *(v72 + 14) = v79;
            *(v72 + 22) = 2080;
            sub_1D8CFD6D8(&qword_1EDCD5918, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v80 = sub_1D9179A4C();
            v82 = v81;
            v83 = v147;
            v84 = *(v147 + 8);
            v148 = (v147 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v84(v69, v153);
            v85 = sub_1D8CFA924(v80, v82, aBlock);

            *(v72 + 24) = v85;
            v86 = v83;
            *(v72 + 32) = 2048;
            v87 = v149;
            *(v72 + 34) = v149;
            _os_log_impl(&dword_1D8CEC000, v70, v71, "Update %{private,mask.hash}s Retry %s: will retry after %ld seconds", v72, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1DA72CB90](v73, -1, -1);
            v88 = v72;
            v61 = v153;
            MEMORY[0x1DA72CB90](v88, -1, -1);
          }

          else
          {

            v104 = *(v147 + 8);
            v148 = (v147 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v105 = v69;
            v86 = v147;
            v104(v105, v61);
            sub_1D8D5FDB8(v68, type metadata accessor for StoreFeedUpdater.Update);
            v78 = v154;
            v87 = v149;
          }

          v106 = v130;
          sub_1D9177ECC();
          v107 = v133;
          *v133 = v87;
          v108 = v135;
          v109 = v136;
          (*(v135 + 104))(v107, *MEMORY[0x1E69E7F48], v136);
          MEMORY[0x1DA7294F0](v106, v107);
          (*(v108 + 8))(v107, v109);
          v110 = *(v151 + 8);
          v151 += 8;
          v154 = v110;
          (v110)(v106, v145);
          v111 = swift_allocObject();
          swift_weakInit();
          v112 = v78;
          sub_1D8D5F1EC(v126, v78, type metadata accessor for StoreFeedUpdater.Update);
          v113 = v131;
          (v150)(v131, v155, v61);
          v114 = (*(v132 + 80) + 16) & ~*(v132 + 80);
          v115 = v61;
          v116 = (v134 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
          v117 = (*(v86 + 80) + v116 + 8) & ~*(v86 + 80);
          v118 = (v129 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
          v119 = swift_allocObject();
          sub_1D8D7C424(v112, v119 + v114, type metadata accessor for StoreFeedUpdater.Update);
          *(v119 + v116) = v111;
          (*(v86 + 32))(v119 + v117, v113, v115);
          *(v119 + v118) = v149;
          aBlock[4] = sub_1D8F6754C;
          aBlock[5] = v119;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D8CF5F60;
          aBlock[3] = &block_descriptor_70;
          v120 = _Block_copy(aBlock);

          v121 = v137;
          sub_1D9177E4C();
          v156 = MEMORY[0x1E69E7CC0];
          sub_1D8CFD6D8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
          sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
          v122 = v139;
          v123 = v142;
          sub_1D91792CC();
          v124 = v144;
          MEMORY[0x1DA72A360](v144, v121, v122, v120);
          _Block_release(v120);
          (*(v141 + 8))(v122, v123);
          (*(v138 + 8))(v121, v140);
          (v154)(v124, v145);
          (*(v86 + 8))(v155, v115);
          sub_1D8D5FDB8(v146, type metadata accessor for StoreFeedUpdater.Retry);

          return;
        }
      }

      swift_once();
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (qword_1EDCD1048 != -1)
  {
LABEL_31:
    swift_once();
  }

  v89 = sub_1D917744C();
  __swift_project_value_buffer(v89, qword_1EDCD1050);
  v90 = v143;
  sub_1D8D5F1EC(v34, v143, type metadata accessor for StoreFeedUpdater.Update);
  v91 = sub_1D917741C();
  v92 = sub_1D9178D1C();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    aBlock[0] = v94;
    *v93 = 141558531;
    *(v93 + 4) = 1752392040;
    *(v93 + 12) = 2081;
    v95 = v90;
    v96 = v154;
    sub_1D8D7C424(v95, v154, type metadata accessor for StoreFeedUpdater.Update);
    v97 = &v96[*(v148 + 32)];
    v98 = v53;
    v99 = *v97;
    v100 = v97[1];

    sub_1D8D5FDB8(v96, type metadata accessor for StoreFeedUpdater.Update);
    v101 = sub_1D8CFA924(v99, v100, aBlock);
    v53 = v98;

    *(v93 + 14) = v101;
    *(v93 + 22) = 2048;
    *(v93 + 24) = v60;
    _os_log_impl(&dword_1D8CEC000, v91, v92, "Update %{private,mask.hash}s: Failed to trigger another retry, used all backoffs. nextBackoffIndex=%ld.", v93, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    v102 = v94;
    v57 = v150;
    MEMORY[0x1DA72CB90](v102, -1, -1);
    MEMORY[0x1DA72CB90](v93, -1, -1);
  }

  else
  {

    sub_1D8D5FDB8(v90, type metadata accessor for StoreFeedUpdater.Update);
  }

  v103 = v149;
  v126(v149, 1, 1, v57);
  swift_beginAccess();
  sub_1D8F7D378(v103, v53);
  swift_endAccess();
}

uint64_t sub_1D8F63CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[0] = 25;
  sub_1D8D76684(v10, v12);
  v7 = v12[0];
  v8 = v12[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8F63D90(a1, a3, a4);
  }

  if (v8)
  {
    v10[0] = v7;
    v11 = v8;
    sub_1D8D7FAB4();
  }

  return result;
}

void sub_1D8F63D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v80 = a2;
  v79 = sub_1D9176EAC();
  v5 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v71 - v9;
  v77 = type metadata accessor for StoreFeedUpdater.Update(0);
  MEMORY[0x1EEE9AC00](v77);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v71 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  v17 = type metadata accessor for StoreFeedUpdater.Retry(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v71 - v22;
  v23 = a1;
  v24 = *(a1 + *(type metadata accessor for FeedUpdateRequest(0) + 28));
  swift_beginAccess();
  v75 = v3;
  v25 = *(v3 + 64);
  if (*(v25 + 16))
  {
    v26 = sub_1D8D490F4(v24);
    if (v27)
    {
      v72 = v24;
      sub_1D8D5F1EC(*(v25 + 56) + *(v18 + 72) * v26, v20, type metadata accessor for StoreFeedUpdater.Retry);
      v28 = v76;
      sub_1D8D7C424(v20, v76, type metadata accessor for StoreFeedUpdater.Retry);
      if (sub_1D9176E7C())
      {
        if (qword_1EDCD1048 != -1)
        {
          swift_once();
        }

        v29 = sub_1D917744C();
        __swift_project_value_buffer(v29, qword_1EDCD1050);
        v30 = v23;
        sub_1D8D5F1EC(v23, v16, type metadata accessor for StoreFeedUpdater.Update);
        v31 = v74;
        v32 = v79;
        (*(v5 + 16))(v74, v80, v79);
        v33 = sub_1D917741C();
        v34 = sub_1D9178D1C();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v82 = v80;
          *v35 = 141558787;
          *(v35 + 4) = 1752392040;
          *(v35 + 12) = 2081;
          v36 = v16;
          v37 = v31;
          v38 = v78;
          sub_1D8D7C424(v36, v78, type metadata accessor for StoreFeedUpdater.Update);
          v39 = (v38 + *(v77 + 32));
          v40 = *v39;
          v41 = v39[1];

          sub_1D8D5FDB8(v38, type metadata accessor for StoreFeedUpdater.Update);
          v42 = sub_1D8CFA924(v40, v41, &v82);

          *(v35 + 14) = v42;
          *(v35 + 22) = 2080;
          sub_1D8CFD6D8(&qword_1EDCD5918, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v43 = sub_1D9179A4C();
          v45 = v44;
          (*(v5 + 8))(v37, v32);
          v46 = sub_1D8CFA924(v43, v45, &v82);

          *(v35 + 24) = v46;
          *(v35 + 32) = 2048;
          *(v35 + 34) = v73;
          _os_log_impl(&dword_1D8CEC000, v33, v34, "Update %{private,mask.hash}s Retry %s: Retrying after %ld seconds", v35, 0x2Au);
          v47 = v80;
          swift_arrayDestroy();
          MEMORY[0x1DA72CB90](v47, -1, -1);
          MEMORY[0x1DA72CB90](v35, -1, -1);
        }

        else
        {

          (*(v5 + 8))(v31, v32);
          v48 = sub_1D8D5FDB8(v16, type metadata accessor for StoreFeedUpdater.Update);
        }

        v66 = *(v75 + 32);
        v82 = v72;
        v67 = *(v66 + 32);
        MEMORY[0x1EEE9AC00](v48);
        *(&v71 - 4) = v68;
        *(&v71 - 3) = &v82;
        *(&v71 - 2) = v30;
        MEMORY[0x1EEE9AC00](v69);
        *(&v71 - 2) = sub_1D8D81A5C;
        *(&v71 - 1) = v70;
        os_unfair_lock_lock(v67 + 4);
        sub_1D8D7D230(&v81);
        os_unfair_lock_unlock(v67 + 4);
        sub_1D8D825A0(v30);
        v64 = type metadata accessor for StoreFeedUpdater.Retry;
        v65 = v76;
        goto LABEL_16;
      }

      sub_1D8D5FDB8(v28, type metadata accessor for StoreFeedUpdater.Retry);
    }
  }

  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v49 = sub_1D917744C();
  __swift_project_value_buffer(v49, qword_1EDCD1050);
  sub_1D8D5F1EC(v23, v11, type metadata accessor for StoreFeedUpdater.Update);
  v50 = v79;
  (*(v5 + 16))(v7, v80, v79);
  v51 = sub_1D917741C();
  v52 = sub_1D9178D1C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v82 = v54;
    *v53 = 141558531;
    *(v53 + 4) = 1752392040;
    *(v53 + 12) = 2081;
    v55 = v78;
    sub_1D8D7C424(v11, v78, type metadata accessor for StoreFeedUpdater.Update);
    v56 = (v55 + *(v77 + 32));
    v57 = *v56;
    v58 = v56[1];

    sub_1D8D5FDB8(v55, type metadata accessor for StoreFeedUpdater.Update);
    v59 = sub_1D8CFA924(v57, v58, &v82);

    *(v53 + 14) = v59;
    *(v53 + 22) = 2080;
    sub_1D8CFD6D8(&qword_1EDCD5918, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v60 = sub_1D9179A4C();
    v62 = v61;
    (*(v5 + 8))(v7, v50);
    v63 = sub_1D8CFA924(v60, v62, &v82);

    *(v53 + 24) = v63;
    _os_log_impl(&dword_1D8CEC000, v51, v52, "Update %{private,mask.hash}s Retry %s: Retry no longer found in retries, dropping.", v53, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v54, -1, -1);
    MEMORY[0x1DA72CB90](v53, -1, -1);

    return;
  }

  (*(v5 + 8))(v7, v50);
  v64 = type metadata accessor for StoreFeedUpdater.Update;
  v65 = v11;
LABEL_16:
  sub_1D8D5FDB8(v65, v64);
}

uint64_t sub_1D8F64664(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D0, &unk_1D9197ED8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v177 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v172 = &v170 - v8;
  updated = type metadata accessor for FeedUpdateRequest(0);
  MEMORY[0x1EEE9AC00](updated);
  v174 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v176 = &v170 - v12;
  v183 = type metadata accessor for StoreFeedUpdater.Update(0);
  v178 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v179 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v173 = &v170 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v180 = &v170 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v170 = &v170 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v171 = &v170 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v181 = (&v170 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v170 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v170 - v28);
  v30 = sub_1D9177F1C();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = (&v170 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v2[2];
  *v34 = v35;
  (*(v31 + 104))(v34, *MEMORY[0x1E69E8020], v30, v32);
  v36 = v35;
  v37 = sub_1D9177F4C();
  v39 = *(v31 + 8);
  v38 = v31 + 8;
  v39(v34, v30);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v175 = updated;
  v38 = *(a1 + *(updated + 28));
  sub_1D8D5F1EC(a1, v29, type metadata accessor for StoreFeedUpdater.Update);
  v30 = *a2;
  v40 = *(a2 + 8);
  v42 = *(a2 + 16);
  v41 = *(a2 + 32);
  v43 = *(a2 + 48);
  v44 = v29;
  v37 = a1;
  if (!*(a2 + 64))
  {
    v182 = v29;
    v185[0] = v30;
    v185[1] = v40;
    v186 = v42;
    v187 = v41;
    v188 = v43;
    v59 = v2;
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v60 = sub_1D917744C();
    __swift_project_value_buffer(v60, qword_1EDCD1050);
    v61 = a1;
    sub_1D8D5F1EC(a1, v26, type metadata accessor for StoreFeedUpdater.Update);
    v62 = sub_1D917741C();
    v63 = sub_1D9178D1C();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v183;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v184 = v67;
      *v66 = 141558275;
      *(v66 + 4) = 1752392040;
      *(v66 + 12) = 2081;
      v68 = v26;
      v69 = v181;
      sub_1D8D7C424(v68, v181, type metadata accessor for StoreFeedUpdater.Update);
      v70 = (v69 + *(v65 + 32));
      v71 = *v70;
      v72 = v70[1];

      sub_1D8D5FDB8(v69, type metadata accessor for StoreFeedUpdater.Update);
      v73 = sub_1D8CFA924(v71, v72, &v184);

      *(v66 + 14) = v73;
      _os_log_impl(&dword_1D8CEC000, v62, v63, "Update %{private,mask.hash}s completed", v66, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x1DA72CB90](v67, -1, -1);
      MEMORY[0x1DA72CB90](v66, -1, -1);
    }

    else
    {

      sub_1D8D5FDB8(v26, type metadata accessor for StoreFeedUpdater.Update);
    }

    sub_1D8F67008(v185, v61);
    v90 = 0;
    v91 = 0;
    v92 = v59;
    goto LABEL_20;
  }

  v45 = v2;
  if (*(a2 + 64) == 1)
  {
    v29 = v2;
    v182 = v44;
    if (qword_1EDCD1048 == -1)
    {
LABEL_5:
      v46 = sub_1D917744C();
      __swift_project_value_buffer(v46, qword_1EDCD1050);
      v47 = v179;
      sub_1D8D5F1EC(v37, v179, type metadata accessor for StoreFeedUpdater.Update);
      v48 = sub_1D917741C();
      v49 = sub_1D9178D1C();
      v50 = os_log_type_enabled(v48, v49);
      v51 = v183;
      if (v50)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v185[0] = v53;
        *v52 = 141558275;
        *(v52 + 4) = 1752392040;
        *(v52 + 12) = 2081;
        v54 = v181;
        sub_1D8D7C424(v47, v181, type metadata accessor for StoreFeedUpdater.Update);
        v55 = (v54 + *(v51 + 32));
        v56 = *v55;
        v57 = v55[1];

        sub_1D8D5FDB8(v54, type metadata accessor for StoreFeedUpdater.Update);
        v58 = sub_1D8CFA924(v56, v57, v185);

        *(v52 + 14) = v58;
        _os_log_impl(&dword_1D8CEC000, v48, v49, "Update %{private,mask.hash}s failed", v52, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        MEMORY[0x1DA72CB90](v53, -1, -1);
        MEMORY[0x1DA72CB90](v52, -1, -1);
      }

      else
      {

        sub_1D8D5FDB8(v47, type metadata accessor for StoreFeedUpdater.Update);
      }

      v90 = v30;
      v91 = 1;
      v92 = v29;
LABEL_20:
      v93 = v182;
      sub_1D8F658C8(v90, v91, v92, v38, v182);
      return sub_1D8D5FDB8(v93, type metadata accessor for StoreFeedUpdater.Update);
    }

LABEL_46:
    swift_once();
    goto LABEL_5;
  }

  v74 = vorrq_s8(v43, v41);
  v75 = v180;
  if (v30 | *&vorr_s8(*v74.i8, *&vextq_s8(v74, v74, 8uLL)) | v42 | v40 | *(&v42 + 1))
  {
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v76 = sub_1D917744C();
    __swift_project_value_buffer(v76, qword_1EDCD1050);
    sub_1D8D5F1EC(a1, v75, type metadata accessor for StoreFeedUpdater.Update);
    v77 = sub_1D917741C();
    v78 = sub_1D9178D1C();
    v79 = os_log_type_enabled(v77, v78);
    v182 = v29;
    if (v79)
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v179 = v45;
      v82 = v81;
      v185[0] = v81;
      *v80 = 141558275;
      *(v80 + 4) = 1752392040;
      *(v80 + 12) = 2081;
      v83 = v181;
      sub_1D8D7C424(v75, v181, type metadata accessor for StoreFeedUpdater.Update);
      v84 = (v83 + *(v183 + 32));
      v85 = v37;
      v86 = *v84;
      v87 = v84[1];

      sub_1D8D5FDB8(v83, type metadata accessor for StoreFeedUpdater.Update);
      v88 = sub_1D8CFA924(v86, v87, v185);
      v37 = v85;

      *(v80 + 14) = v88;
      _os_log_impl(&dword_1D8CEC000, v77, v78, "Update %{private,mask.hash}s failed with retry.", v80, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      v89 = v82;
      v45 = v179;
      MEMORY[0x1DA72CB90](v89, -1, -1);
      MEMORY[0x1DA72CB90](v80, -1, -1);
    }

    else
    {

      sub_1D8D5FDB8(v75, type metadata accessor for StoreFeedUpdater.Update);
    }

    swift_beginAccess();
    v108 = *(v45 + 56);
    if (*(v108 + 16) && (v109 = sub_1D8D490F4(v38), (v110 & 1) != 0))
    {
      v111 = *(v108 + 56);
      v113 = v177;
      v112 = v178;
      sub_1D8D5F1EC(v111 + *(v178 + 72) * v109, v177, type metadata accessor for StoreFeedUpdater.Update);
      v114 = v183;
      (*(v112 + 56))(v113, 0, 1, v183);
      sub_1D8D08A50(v113, &qword_1ECAB76D0, &unk_1D9197ED8);
      v115 = v173;
      sub_1D8D5F1EC(v37, v173, type metadata accessor for StoreFeedUpdater.Update);
      v116 = sub_1D917741C();
      v117 = sub_1D9178D1C();
      v118 = os_log_type_enabled(v116, v117);
      v119 = v181;
      if (v118)
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v122 = v115;
        v123 = v121;
        v184 = v121;
        *v120 = 141558275;
        *(v120 + 4) = 1752392040;
        *(v120 + 12) = 2081;
        sub_1D8D7C424(v122, v119, type metadata accessor for StoreFeedUpdater.Update);
        v124 = (v119 + *(v114 + 32));
        v125 = *v124;
        v126 = v124[1];

        sub_1D8D5FDB8(v119, type metadata accessor for StoreFeedUpdater.Update);
        v127 = sub_1D8CFA924(v125, v126, &v184);

        *(v120 + 14) = v127;
        _os_log_impl(&dword_1D8CEC000, v116, v117, "Update %{private,mask.hash}s: There's a pending update, dropping retry.", v120, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v123);
        MEMORY[0x1DA72CB90](v123, -1, -1);
        MEMORY[0x1DA72CB90](v120, -1, -1);

LABEL_33:
        sub_1D8D77098();
        v143 = swift_allocError();
        v144 = v143;
        *v145 = 12;
        v146 = v45;
        v147 = v38;
        v93 = v182;
LABEL_41:
        sub_1D8F658C8(v143, 1, v146, v147, v93);

        return sub_1D8D5FDB8(v93, type metadata accessor for StoreFeedUpdater.Update);
      }

      v142 = type metadata accessor for StoreFeedUpdater.Update;
      v141 = v115;
    }

    else
    {
      v128 = v177;
      v129 = v183;
      (*(v178 + 56))(v177, 1, 1, v183);
      sub_1D8D08A50(v128, &qword_1ECAB76D0, &unk_1D9197ED8);
      v130 = v176;
      FeedUpdateRequest.copyWithoutCompletion()(v176);
      v131 = v174;
      sub_1D8D5F1EC(v130, v174, type metadata accessor for FeedUpdateRequest);
      v132 = *(v37 + v129[5]);
      v133 = v37;
      v134 = *(v37 + v129[6]);
      v135 = *(v133 + v129[7]);
      v136 = v181;
      sub_1D8D5F1EC(v131, v181, type metadata accessor for FeedUpdateRequest);
      *(v136 + v129[5]) = v132;
      *(v136 + v129[6]) = v134;
      *(v136 + v129[7]) = v135;
      v184 = *(v131 + *(v175 + 28));
      v137 = sub_1D9179A4C();
      v139 = v138;
      sub_1D8D5FDB8(v131, type metadata accessor for FeedUpdateRequest);
      v140 = (v136 + v129[8]);
      *v140 = v137;
      v140[1] = v139;
      sub_1D8F62990(v136);
      sub_1D8D5FDB8(v136, type metadata accessor for StoreFeedUpdater.Update);
      v141 = v130;
      v142 = type metadata accessor for FeedUpdateRequest;
    }

    sub_1D8D5FDB8(v141, v142);
    goto LABEL_33;
  }

  v94 = v183;
  if (*(v37 + *(v183 + 28)))
  {
    v93 = v29;
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v95 = sub_1D917744C();
    __swift_project_value_buffer(v95, qword_1EDCD1050);
    v96 = v170;
    sub_1D8D5F1EC(v37, v170, type metadata accessor for StoreFeedUpdater.Update);
    v97 = sub_1D917741C();
    v98 = sub_1D9178CFC();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v101 = v96;
      v102 = v100;
      v185[0] = v100;
      *v99 = 141558275;
      *(v99 + 4) = 1752392040;
      *(v99 + 12) = 2081;
      v103 = v181;
      sub_1D8D7C424(v101, v181, type metadata accessor for StoreFeedUpdater.Update);
      v104 = (v103 + v94[8]);
      v105 = *v104;
      v106 = v104[1];

      sub_1D8D5FDB8(v103, type metadata accessor for StoreFeedUpdater.Update);
      v107 = sub_1D8CFA924(v105, v106, v185);

      *(v99 + 14) = v107;
      _os_log_impl(&dword_1D8CEC000, v97, v98, "Update %{private,mask.hash}s failed. Bootstrap needed another bootstrap. Failing request to prevent a loop.", v99, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      MEMORY[0x1DA72CB90](v102, -1, -1);
      MEMORY[0x1DA72CB90](v99, -1, -1);
    }

    else
    {

      sub_1D8D5FDB8(v96, type metadata accessor for StoreFeedUpdater.Update);
    }

    sub_1D8D77098();
    v143 = swift_allocError();
    v144 = v143;
    *v159 = 4;
    v146 = v45;
    v147 = v38;
    goto LABEL_41;
  }

  sub_1D8D5FDB8(v29, type metadata accessor for StoreFeedUpdater.Update);
  v93 = v181;
  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v148 = sub_1D917744C();
  __swift_project_value_buffer(v148, qword_1EDCD1050);
  v149 = v37;
  v150 = v171;
  sub_1D8D5F1EC(v37, v171, type metadata accessor for StoreFeedUpdater.Update);
  v151 = sub_1D917741C();
  v152 = sub_1D9178D1C();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v185[0] = v154;
    *v153 = 141558275;
    *(v153 + 4) = 1752392040;
    *(v153 + 12) = 2081;
    sub_1D8D7C424(v150, v93, type metadata accessor for StoreFeedUpdater.Update);
    v155 = (v93 + v94[8]);
    v156 = *v155;
    v157 = v155[1];

    sub_1D8D5FDB8(v93, type metadata accessor for StoreFeedUpdater.Update);
    v158 = sub_1D8CFA924(v156, v157, v185);
    v94 = v183;

    *(v153 + 14) = v158;
    _os_log_impl(&dword_1D8CEC000, v151, v152, "Bootstrap requested for %{private,mask.hash}s. Starting over.", v153, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v154);
    MEMORY[0x1DA72CB90](v154, -1, -1);
    MEMORY[0x1DA72CB90](v153, -1, -1);
  }

  else
  {

    sub_1D8D5FDB8(v150, type metadata accessor for StoreFeedUpdater.Update);
  }

  v162 = v175;
  v161 = v176;
  sub_1D8D5F1EC(v149, v176, type metadata accessor for FeedUpdateRequest);
  v163 = *(v149 + v94[5]);
  v164 = *(v149 + v94[6]);
  sub_1D8D5F1EC(v161, v93, type metadata accessor for FeedUpdateRequest);
  *(v93 + v94[5]) = v163;
  *(v93 + v94[6]) = v164;
  *(v93 + v94[7]) = 1;
  v185[0] = *(v161 + *(v162 + 28));
  v165 = sub_1D9179A4C();
  v167 = v166;
  sub_1D8D5FDB8(v161, type metadata accessor for FeedUpdateRequest);
  v168 = (v93 + v94[8]);
  *v168 = v165;
  v168[1] = v167;
  v169 = v172;
  (*(v178 + 56))(v172, 1, 1, v94);
  swift_beginAccess();
  sub_1D8F7D0D8(v169, v38);
  swift_endAccess();
  sub_1D8D825A0(v93);
  return sub_1D8D5FDB8(v93, type metadata accessor for StoreFeedUpdater.Update);
}

uint64_t sub_1D8F658C8(void (*a1)(char *, uint64_t, uint64_t, uint64_t), char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v44 = a1;
  v45 = a5;
  v8 = type metadata accessor for StoreFeedUpdater.Update(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v43 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D0, &unk_1D9197ED8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v46 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  swift_beginAccess();
  v25 = *(a3 + 56);
  v26 = *(v25 + 16);
  v48 = a4;
  if (v26 && (v27 = sub_1D8D490F4(a4), (v28 & 1) != 0))
  {
    sub_1D8D5F1EC(*(v25 + 56) + *(v9 + 72) * v27, v24, type metadata accessor for StoreFeedUpdater.Update);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = *(v9 + 56);
  v30(v24, v29, 1, v8);
  sub_1D8D83D98(v24, v21);
  if ((*(v9 + 48))(v21, 1, v8) == 1)
  {
    sub_1D8D08A50(v21, &qword_1ECAB76D0, &unk_1D9197ED8);
    sub_1D8F625F8(v48, v44, a2 & 1);
  }

  else
  {
    v44 = v30;
    sub_1D8D7C424(v21, v47, type metadata accessor for StoreFeedUpdater.Update);
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v31 = sub_1D917744C();
    __swift_project_value_buffer(v31, qword_1EDCD1050);
    sub_1D8D5F1EC(v45, v14, type metadata accessor for StoreFeedUpdater.Update);
    v32 = sub_1D917741C();
    v33 = sub_1D9178D1C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v49[0] = v45;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      sub_1D8D7C424(v14, v11, type metadata accessor for StoreFeedUpdater.Update);
      v35 = &v11[*(v8 + 32)];
      v37 = *v35;
      v36 = v35[1];

      sub_1D8D5FDB8(v11, type metadata accessor for StoreFeedUpdater.Update);
      v38 = sub_1D8CFA924(v37, v36, v49);

      *(v34 + 14) = v38;
      _os_log_impl(&dword_1D8CEC000, v32, v33, "Kicking off pending bootstrap update for %{private,mask.hash}s.", v34, 0x16u);
      v39 = v45;
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1DA72CB90](v39, -1, -1);
      MEMORY[0x1DA72CB90](v34, -1, -1);
    }

    else
    {

      sub_1D8D5FDB8(v14, type metadata accessor for StoreFeedUpdater.Update);
    }

    v40 = v46;
    v44(v46, 1, 1, v8);
    swift_beginAccess();
    sub_1D8F7D0D8(v40, v48);
    swift_endAccess();
    v41 = v47;
    sub_1D8D825A0(v47);
    sub_1D8D5FDB8(v41, type metadata accessor for StoreFeedUpdater.Update);
  }

  return sub_1D8D08A50(v24, &qword_1ECAB76D0, &unk_1D9197ED8);
}

uint64_t StoreFeedUpdater.deinit()
{

  return v0;
}

uint64_t StoreFeedUpdater.__deallocating_deinit()
{
  StoreFeedUpdater.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F65E48(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  v5 = updated;
  v6 = *(updated + 52);
  if (*(a2 + v6) == 1 && *(a1 + v6) != 1)
  {
    return 1;
  }

  v7 = *(updated + 48);
  v8 = *(a2 + v7);
  if (v8 == 8)
  {
    if (*(a1 + v7) != 8)
    {
      return 1;
    }
  }

  else if (v8 == 23 && *(a1 + v7) != 23)
  {
    return 1;
  }

  v9 = *(type metadata accessor for StoreFeedUpdater.Update(0) + 24);
  if (*(a2 + v9) != 1 || *(a1 + v9) == 1)
  {
    v10 = *(v5 + 36);
    if (*(a2 + v10) != 1 || *(a1 + v10) == 1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D8F65F24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(a1, a2);
  }

  return result;
}

uint64_t sub_1D8F65FA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9177F1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1D9177F4C();
  result = (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = *(a1 + *(type metadata accessor for FeedUpdateRequest(0) + 28));
  swift_beginAccess();
  sub_1D8F7D008(0, v14);
  v15 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v15);
  *(&v20 - 2) = a1;
  v16 = OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_runningQueue;
  swift_beginAccess();
  result = sub_1D8F66C04(sub_1D8F66BB4, (&v20 - 4));
  v17 = *(*(v3 + v16) + 16);
  if (v17 < result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1D8D880FC(result, v17);
  swift_endAccess();
  v18 = *(v3 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback);
  if (v18)
  {
    v19 = *(v3 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback + 8);

    v18(a1, a2);
    sub_1D8D15664(v18, v19);
  }

  return sub_1D8D86EBC();
}

uint64_t sub_1D8F661E0()
{

  sub_1D8D5FDB8(v0 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_bagConfiguration, type metadata accessor for FeedManagerBagConfiguration);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_ingesterProvider));

  sub_1D8D15664(*(v0 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback), *(v0 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback + 8));
  return v0;
}

uint64_t sub_1D8F662A8()
{
  sub_1D8F661E0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F66300(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

BOOL sub_1D8F66338(int8x16_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 64);
  if (!a1[4].i8[0])
  {
    return v2 == 0;
  }

  if (a1[4].i8[0] == 1)
  {
    return v2 == 1;
  }

  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v12 = vorrq_s8(a1[1], a1[2]);
  if (a1->i64[0] | *&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | a1[3].i64[0] | a1[3].i64[1] | a1->i64[1])
  {
    if (v2 != 2 || v5 != 1 || v7 | v4 | v6 | v9 | v8 | v11 | v10)
    {
      return 0;
    }
  }

  else if (v2 != 2 || v7 | v4 | v5 | v6 | v9 | v8 | v11 | v10)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1D8F66438(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v26 = v8;
  v27 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v28 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 24 * (v10 | (v3 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    sub_1D9179DBC();
    if (v16 == 1)
    {
      MEMORY[0x1DA72B390](1);

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1DA72B390](0);
      MEMORY[0x1DA72B3C0](v14);
    }

    v17 = sub_1D9179E1C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_34:
      sub_1D8DB5FC8(v14, v15, v16);
      return 0;
    }

    v20 = ~v18;
    v21 = *(a2 + 48);
    while (1)
    {
      v23 = (v21 + 24 * v19);
      v24 = *v23;
      if (*(v23 + 16) == 1)
      {
        break;
      }

      if (v24 == v14)
      {
        v22 = v16;
      }

      else
      {
        v22 = 1;
      }

      if ((v22 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_22:
      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }

    v25 = v24 == v14 && v23[1] == v15;
    if (!v25 && (sub_1D9179ACC() & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_1D8DB5FC8(v14, v15, 1);
LABEL_31:
    v8 = v26;
    result = v27;
    v7 = v28;
  }

  while (v28);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8F66674(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v42 = a2 + 56;
  v35 = result + 56;
  v36 = result;
  v34 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v37 = (v7 - 1) & v7;
LABEL_13:
    v12 = *(result + 48) + 24 * (v9 | (v3 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    sub_1D9179DBC();
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = 8;
      }

      else if (v14 > 1)
      {
        if (v14 ^ 2 | v13)
        {
          v16 = 6;
        }

        else
        {
          v16 = 4;
        }
      }

      else if (v14 | v13)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      goto LABEL_18;
    }

    if (!v15)
    {
      v16 = 3;
LABEL_18:
      MEMORY[0x1DA72B390](v16);
      goto LABEL_20;
    }

    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
LABEL_20:
    v17 = sub_1D9179E1C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v42 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_66:
      sub_1D8D02FCC(v14, v13, v15);
      return 0;
    }

    v20 = ~v18;
    v21 = v14 != 3;
    v22 = v14 != 2;
    v23 = v14 != 1;
    if (v13)
    {
      v21 = 1;
      v22 = 1;
      v23 = 1;
    }

    if (v15 != 3)
    {
      v21 = 1;
    }

    v41 = v21;
    v24 = v15 != 3 || v22;
    v40 = v24;
    v25 = v15 != 3 || v23;
    if (v13 | v14)
    {
      v26 = 0;
    }

    else
    {
      v26 = v15 == 3;
    }

    v38 = v26;
    v39 = v25;
    while (1)
    {
      v27 = *(a2 + 48) + 24 * v19;
      v29 = *v27;
      v28 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (v30 <= 1)
      {
        if (*(v27 + 16))
        {
        }

        else if (!v15)
        {
          sub_1D8D02FCC(*v27, *(v27 + 8), 0);
          v31 = v14;
          v32 = v13;
          v33 = 0;
          goto LABEL_63;
        }

        goto LABEL_36;
      }

      if (v30 == 2)
      {
        if (v15 == 2)
        {
          sub_1D8D02FCC(*v27, *(v27 + 8), 2);
          v31 = v14;
          v32 = v13;
          v33 = 2;
          goto LABEL_63;
        }

        goto LABEL_36;
      }

      if (v29 > 1)
      {
        break;
      }

      if (v29 | v28)
      {
        if ((v39 & 1) == 0)
        {
          sub_1D8D02FCC(v29, v28, 3);
          v31 = 1;
          goto LABEL_62;
        }
      }

      else if (v38)
      {
        sub_1D8D02FCC(v29, v28, 3);
        v31 = 0;
        goto LABEL_62;
      }

LABEL_36:
      sub_1D8D02FE4(v14, v13, v15);
      sub_1D8D02FCC(v29, v28, v30);
      sub_1D8D02FCC(v14, v13, v15);
      v19 = (v19 + 1) & v20;
      if (((*(v42 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    if (!(v29 ^ 2 | v28))
    {
      if ((v40 & 1) == 0)
      {
        sub_1D8D02FCC(v29, v28, 3);
        v31 = 2;
        goto LABEL_62;
      }

      goto LABEL_36;
    }

    if (v41)
    {
      goto LABEL_36;
    }

    sub_1D8D02FCC(v29, v28, 3);
    v31 = 3;
LABEL_62:
    v32 = 0;
    v33 = 3;
LABEL_63:
    sub_1D8D02FCC(v31, v32, v33);
    v4 = v35;
    result = v36;
    v8 = v34;
    v7 = v37;
  }

  while (v37);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v37 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8F66AA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8F66AE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation16StoreFeedUpdaterC6ResultO(uint64_t a1)
{
  if ((*(a1 + 64) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

uint64_t sub_1D8F66B64(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

BOOL sub_1D8F66BB4(uint64_t a1)
{
  v3 = *(v1 + 16);
  updated = type metadata accessor for FeedUpdateRequest(0);
  return *(a1 + *(updated + 28)) == *(v3 + *(updated + 28));
}

uint64_t sub_1D8F66C04(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for StoreFeedUpdater.Update(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = *v2;
  result = sub_1D8D7CD24(a1, a2, *v2, type metadata accessor for StoreFeedUpdater.Update);
  if (!v3)
  {
    if (v18)
    {
      return *(v16 + 16);
    }

    v36 = v15;
    v37 = a1;
    v33 = v12;
    v34 = v9;
    v38 = a2;
    v32 = v2;
    v40 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v40;
      }

      v35 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v39;
        v24 = *(v7 + 72);
        v25 = v36;
        sub_1D8D5F1EC(v23 + v24 * v19, v36, type metadata accessor for StoreFeedUpdater.Update);
        v26 = v37(v25);
        result = sub_1D8D5FDB8(v25, type metadata accessor for StoreFeedUpdater.Update);
        if (v26)
        {
          v7 = v35;
          v16 = v22;
        }

        else
        {
          v27 = v40;
          if (v19 == v40)
          {
            v7 = v35;
            v16 = v22;
          }

          else
          {
            if ((v40 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v28 = *v21;
            if (v40 >= *v21)
            {
              goto LABEL_25;
            }

            v29 = v24 * v40;
            result = sub_1D8D5F1EC(v23 + v24 * v40, v33, type metadata accessor for StoreFeedUpdater.Update);
            if (v19 >= v28)
            {
              goto LABEL_26;
            }

            v30 = v24 * v19;
            sub_1D8D5F1EC(v23 + v24 * v19, v34, type metadata accessor for StoreFeedUpdater.Update);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1D915C360(v22);
            }

            v7 = v35;
            v31 = v16 + v39;
            result = sub_1D8F67444(v34, v16 + v39 + v29);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_27;
            }

            result = sub_1D8F67444(v33, v31 + v30);
            *v32 = v16;
            v27 = v40;
          }

          v40 = v27 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v40;
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
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8F66F40@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_1D8F7ECEC(v4);
  swift_endAccess();
  result = sub_1D8D7D28C(sub_1D8D81F3C, &unk_1F54712A0, sub_1D8D85B6C, &block_descriptor_63);
  v7 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v5;
  }

  *a3 = v7;
  return result;
}

void sub_1D8F67008(uint64_t *a1, uint64_t a2)
{
  v19 = objc_opt_self();
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5C00, &qword_1D91913F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D9197CA0;
  v20[0] = 0x6F7369704577656ELL;
  v20[1] = 0xEF746E756F436564;
  v6 = MEMORY[0x1E69E6158];
  sub_1D91793EC();
  v7 = a1[2];
  v8 = MEMORY[0x1E69E6530];
  *(v5 + 96) = MEMORY[0x1E69E6530];
  *(v5 + 72) = v7;
  v20[0] = 0xD000000000000013;
  v20[1] = 0x80000001D91CEB10;
  sub_1D91793EC();
  v9 = a1[3];
  *(v5 + 168) = v8;
  *(v5 + 144) = v9;
  v20[0] = 0xD000000000000013;
  v20[1] = 0x80000001D91CEB30;
  sub_1D91793EC();
  v10 = a1[4];
  *(v5 + 240) = v8;
  *(v5 + 216) = v10;
  v20[0] = 0xD000000000000011;
  v20[1] = 0x80000001D91CEB50;
  sub_1D91793EC();
  v11 = a1[1];
  *(v5 + 312) = v8;
  *(v5 + 288) = v11;
  v20[0] = 0xD000000000000010;
  v20[1] = 0x80000001D91CEE10;
  sub_1D91793EC();
  v12 = a1[5];
  *(v5 + 384) = v8;
  *(v5 + 360) = v12;
  strcpy(v20, "pageCount");
  WORD1(v20[1]) = 0;
  HIDWORD(v20[1]) = -385875968;
  sub_1D91793EC();
  v13 = *a1;
  *(v5 + 456) = v8;
  *(v5 + 432) = v13;
  strcpy(v20, "podcastStoreId");
  HIBYTE(v20[1]) = -18;
  sub_1D91793EC();
  updated = type metadata accessor for FeedUpdateRequest(0);
  v15 = *(a2 + *(updated + 28));
  *(v5 + 528) = MEMORY[0x1E69E7360];
  *(v5 + 504) = v15;
  v20[0] = 0xD000000000000010;
  v20[1] = 0x80000001D91CEB70;
  sub_1D91793EC();
  v16 = *(a2 + *(updated + 48));
  *(v5 + 600) = v8;
  *(v5 + 576) = v16;
  strcpy(v20, "updaterType");
  sub_1D91793EC();
  *(v5 + 672) = v6;
  *(v5 + 648) = 1668184435;
  *(v5 + 656) = 0xE400000000000000;
  strcpy(v20, "needsBootstrap");
  HIBYTE(v20[1]) = -18;
  sub_1D91793EC();
  v17 = *(a2 + *(type metadata accessor for StoreFeedUpdater.Update(0) + 28));
  *(v5 + 744) = MEMORY[0x1E69E6370];
  *(v5 + 720) = v17;
  v20[0] = 0xD000000000000011;
  v20[1] = 0x80000001D91CEE30;
  sub_1D91793EC();
  *(v5 + 816) = v6;
  *(v5 + 792) = *(a1 + 3);
  sub_1D8F674F8(a1, v20);
  sub_1D8D653BC(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C80, &unk_1D91949C0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v18 = sub_1D917802C();

  [v19 recordEvent:v4 dataSource:0 data:v18];
}

uint64_t sub_1D8F67444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreFeedUpdater.Update(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8F6754C()
{
  v1 = *(type metadata accessor for StoreFeedUpdater.Update(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1D9176EAC() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8F63CD8(v0 + v2, v6, v0 + v5, v7);
}

uint64_t objectdestroy_56Tm()
{

  sub_1D8F58A60(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D8F676A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a2 + 64);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = (Strong + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval);
    if (*(Strong + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8))
    {

      sub_1D8D7FAB4();
    }

    *v9 = 0;
    v9[1] = 0;
  }

  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    v11 = (v10 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_fullJobInterval);
    if (*(v10 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_fullJobInterval + 8))
    {

      sub_1D8D92750(v7 == 0);
    }

    *v11 = 0;
    v11[1] = 0;
  }

  return a4(a1, a2);
}

uint64_t sub_1D8F67818(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  if (*(v3 + *(type metadata accessor for StoreFeedUpdater.Update(0) + 28)) == 1)
  {
    *&v20 = 0;
    v18 = 0u;
    v19 = 0u;
    BYTE8(v20) = 0x80;
    *&v21 = a1;
    sub_1D8F6F12C(&v18);
    v16 = v26;
    v17[0] = v27[0];
    *(v17 + 10) = *(v27 + 10);
    v12 = v22;
    v13 = v23;
    v14 = v24;
    v15 = v25;
    v8 = v18;
    v9 = v19;
    v10 = v20;
    v11 = v21;
    v4 = a1;
    sub_1D8D8EBEC(&v8);
    v28[8] = v16;
    v29[0] = v17[0];
    *(v29 + 10) = *(v17 + 10);
    v28[4] = v12;
    v28[5] = v13;
    v28[6] = v14;
    v28[7] = v15;
    v28[0] = v8;
    v28[1] = v9;
    v28[2] = v10;
    v28[3] = v11;
    return sub_1D8D90C48(v28);
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = a1;
    v7 = a1;

    NSManagedObjectContext.performWithTelemetry(for:_:)(v3, sub_1D8F6F124, v6);
  }
}

uint64_t sub_1D8F67994(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v6 = v5 + *(type metadata accessor for FeedUpdateRequest(0) + 60);
  v7 = *v6;
  if (!*v6)
  {
    goto LABEL_4;
  }

  v8 = *(v6 + 8);
  v9 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);

  v10 = v7(a1, 1, v9);
  if ([v10 shouldContinue])
  {

    sub_1D8D15664(v7, v8);
LABEL_4:
    v11 = *(a2 + 144);
    v41 = *(a2 + 128);
    *v42 = v11;
    v42[16] = *(a2 + 160);
    v12 = *(a2 + 80);
    v37 = *(a2 + 64);
    v38 = v12;
    v13 = *(a2 + 112);
    v39 = *(a2 + 96);
    v40 = v13;
    v14 = *(a2 + 16);
    v33 = *a2;
    v34 = v14;
    v15 = *(a2 + 48);
    v35 = *(a2 + 32);
    v36 = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    v17 = a1;
    sub_1D8F69C58(&v33, sub_1D8F6F194, v16);
  }

  sub_1D8D77098();
  v19 = swift_allocError();
  *v20 = 11;
  *&v31[0] = v19;
  sub_1D8F6F10C(v31);
  v29 = v31[8];
  v30[0] = v32[0];
  *(v30 + 10) = *(v32 + 10);
  v25 = v31[4];
  v26 = v31[5];
  v27 = v31[6];
  v28 = v31[7];
  v21 = v31[0];
  v22 = v31[1];
  v23 = v31[2];
  v24 = v31[3];
  sub_1D8D8EBEC(&v21);

  sub_1D8D15664(v7, v8);
  v41 = v29;
  *v42 = v30[0];
  *&v42[10] = *(v30 + 10);
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  return sub_1D8D90C48(&v33);
}

uint64_t sub_1D8F67B90(_OWORD *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for StoreFeedUpdater.Update(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[9];
  v48[8] = a1[8];
  v49[0] = v9;
  *(v49 + 10) = *(a1 + 154);
  v10 = a1[5];
  v48[4] = a1[4];
  v48[5] = v10;
  v11 = a1[7];
  v48[6] = a1[6];
  v48[7] = v11;
  v12 = a1[1];
  v48[0] = *a1;
  v13 = a1[2];
  v48[3] = a1[3];
  v48[1] = v12;
  v48[2] = v13;
  if (sub_1D8D8EB0C(v48) - 3 >= 3)
  {
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v29 = sub_1D917744C();
    __swift_project_value_buffer(v29, qword_1EDCD1050);

    v30 = a2;
    v31 = sub_1D917741C();
    v32 = sub_1D9178CFC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v46[0] = v35;
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      sub_1D8D800E0(v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v8, type metadata accessor for StoreFeedUpdater.Update);
      v36 = &v8[*(v6 + 32)];
      v37 = *v36;
      v38 = v36[1];

      sub_1D8D90C88(v8, type metadata accessor for StoreFeedUpdater.Update);
      v39 = sub_1D8CFA924(v37, v38, v46);

      *(v33 + 14) = v39;
      *(v33 + 22) = 2112;
      v40 = sub_1D9176A5C();
      *(v33 + 24) = v40;
      *v34 = v40;
      _os_log_impl(&dword_1D8CEC000, v31, v32, "Job %{private,mask.hash}s: Failed with error %@", v33, 0x20u);
      sub_1D8D08A50(v34, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1DA72CB90](v35, -1, -1);
      MEMORY[0x1DA72CB90](v33, -1, -1);
    }

    v41 = v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
    v42 = (v41 + *(type metadata accessor for FeedUpdateRequest(0) + 56));
    if (*v42)
    {
      (*v42)(a2, 0);
    }

    v43 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion);
    v46[0] = a2;
    v47 = 1;

    v43(v41, v46);
  }

  else
  {
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1EDCD1050);

    v15 = a2;
    v16 = sub_1D917741C();
    v17 = sub_1D9178CFC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v46[0] = v20;
      *v18 = 141558531;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      sub_1D8D800E0(v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v8, type metadata accessor for StoreFeedUpdater.Update);
      v21 = &v8[*(v6 + 32)];
      v22 = *v21;
      v23 = v21[1];

      sub_1D8D90C88(v8, type metadata accessor for StoreFeedUpdater.Update);
      v24 = sub_1D8CFA924(v22, v23, v46);

      *(v18 + 14) = v24;
      *(v18 + 22) = 2112;
      v25 = sub_1D9176A5C();
      *(v18 + 24) = v25;
      *v19 = v25;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "Job %{private,mask.hash}s: Partially Succeeded with error %@", v18, 0x20u);
      sub_1D8D08A50(v19, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1DA72CB90](v20, -1, -1);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    v26 = OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
    v27 = swift_allocObject();
    *(v27 + 16) = v3;
    *(v27 + 24) = a2;

    v28 = a2;
    NSManagedObjectContext.performWithTelemetry(for:_:)(v3 + v26, sub_1D8F6F634, v27);
  }
}

_OWORD *sub_1D8F68128()
{
  v1 = v0[10];
  v7[8] = v0[9];
  v8[0] = v1;
  *(v8 + 10) = *(v0 + 170);
  v2 = v0[6];
  v7[4] = v0[5];
  v7[5] = v2;
  v3 = v0[8];
  v7[6] = v0[7];
  v7[7] = v3;
  v4 = v0[2];
  v7[0] = v0[1];
  v7[1] = v4;
  v5 = v0[4];
  v7[2] = v0[3];
  v7[3] = v5;
  sub_1D8D90C48(v7);
  sub_1D8D90C88(v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, type metadata accessor for StoreFeedUpdater.Update);

  sub_1D8D90C88(v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_bagConfiguration, type metadata accessor for FeedManagerBagConfiguration);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider));

  return v0;
}

uint64_t sub_1D8F6826C()
{
  sub_1D8F68128();

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation19StoreFeedUpdaterJobC11SyncRequest33_FBF799961955A5A2E70C121347D0D776LLO(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation12MediaRequestC0D4TypeOSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy170_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D8F6833C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F8 && *(a1 + 170))
  {
    return (*a1 + 2040);
  }

  v3 = ((*(a1 + 168) >> 3) & 7 | (8 * *(a1 + 169))) ^ 0x7FF;
  if (v3 >= 0x7F7)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D8F68390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7F7)
  {
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
    *(result + 168) = 0;
    *result = a2 - 2040;
    if (a3 >= 0x7F8)
    {
      *(result + 170) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F8)
    {
      *(result + 170) = 0;
    }

    if (a2)
    {
      *(result + 160) = 0;
      *(result + 128) = 0u;
      *(result + 144) = 0u;
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 168) = 8 * (-a2 & 7);
      *(result + 169) = -a2 >> 3;
    }
  }

  return result;
}

uint64_t sub_1D8F68428(uint64_t result, unsigned int a2)
{
  if (a2 < 8)
  {
    *(result + 168) = *(result + 168) & 0xC7 | (8 * a2);
  }

  else
  {
    *result = a2 - 8;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0;
  }

  *(result + 169) = a2 > 7;
  return result;
}

void sub_1D8F68498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a3;
  if (*(a3 + 8) == 1)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return;
    }

    *&v24 = v4;
    sub_1D8F6F10C(&v24);
    v22 = v32;
    v23[0] = v33[0];
    *(v23 + 10) = *(v33 + 10);
    v18 = v28;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v17 = v27;
    v5 = v4;
LABEL_21:
    sub_1D8D8EBEC(&v14);
    goto LABEL_22;
  }

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_19:
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return;
    }

    sub_1D8D77098();
    v12 = swift_allocError();
    *v13 = 1;
    *&v24 = v12;
    sub_1D8F6F10C(&v24);
    v22 = v32;
    v23[0] = v33[0];
    *(v23 + 10) = *(v33 + 10);
    v18 = v28;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v17 = v27;
    goto LABEL_21;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1DA72AA90](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;
  v8 = *&v6[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v8)
  {
    v9 = *(v8 + 48);
    if (v9 != 2 && (v9 & 1) == 0)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1D8D77098();
        v10 = swift_allocError();
        *v11 = 16;
        *&v24 = v10;
        sub_1D8F6F10C(&v24);
        v22 = v32;
        v23[0] = v33[0];
        *(v23 + 10) = *(v33 + 10);
        v18 = v28;
        v19 = v29;
        v20 = v30;
        v21 = v31;
        v14 = v24;
        v15 = v25;
        v16 = v26;
        v17 = v27;
        goto LABEL_14;
      }

LABEL_17:

      return;
    }
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_17;
  }

  *&v24 = v7;
  sub_1D8F6F0F8(&v24);
  v22 = v32;
  v23[0] = v33[0];
  *(v23 + 10) = *(v33 + 10);
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v17 = v27;
  v7 = v7;
LABEL_14:
  sub_1D8D8EBEC(&v14);

LABEL_22:

  v34[8] = v22;
  v35[0] = v23[0];
  *(v35 + 10) = *(v23 + 10);
  v34[4] = v18;
  v34[5] = v19;
  v34[6] = v20;
  v34[7] = v21;
  v34[0] = v14;
  v34[1] = v15;
  v34[2] = v16;
  v34[3] = v17;
  sub_1D8D90C48(v34);
}

uint64_t sub_1D8F687AC(uint64_t a1, void *a2)
{
  v3 = a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v4 = [*(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx) podcastForStoreId_];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 nextSyncToken];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D917820C();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        v12 = 0;
        v13 = 0;
        v14 = 1;
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v8 = 0;
  v10 = 0;
  v14 = 0;
  v13 = 0x80;
  v12 = 1;
LABEL_10:
  v15 = type metadata accessor for StoreFeedUpdater.Update(0);
  if (v14 & 1) != 0 || (*(v3 + *(v15 + 28)))
  {
    goto LABEL_16;
  }

  v16 = v12 ^ 1;
  if (v10 | v8)
  {
    v16 = 1;
  }

  if (v16)
  {
LABEL_16:
    *&v29 = v8;
    *(&v29 + 1) = v10;
    *&v31 = 0;
    v30 = 0uLL;
    BYTE8(v31) = v13;
    *&v32 = a2;
    sub_1D8F6F12C(&v29);
    v27 = v37;
    v28[0] = v38[0];
    *(v28 + 10) = *(v38 + 10);
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v18 = a2;
    sub_1D8D8EBEC(&v19);
    v47 = v27;
    v48[0] = v28[0];
    *(v48 + 10) = *(v28 + 10);
    v43 = v23;
    v44 = v24;
    v45 = v25;
    v46 = v26;
    v39 = v19;
    v40 = v20;
    v41 = v21;
    v42 = v22;
    return sub_1D8D90C48(&v39);
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    LOBYTE(v43) = 2;
    sub_1D8F6F0C8(&v39);
    v37 = v47;
    v38[0] = v48[0];
    *(v38 + 10) = *(v48 + 10);
    v33 = v43;
    v34 = v44;
    v35 = v45;
    v36 = v46;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    return sub_1D8D8EBEC(&v29);
  }
}

uint64_t sub_1D8F689D8(__int128 *a1, uint64_t a2, void *a3)
{
  v4 = a1[9];
  v32 = a1[8];
  v33 = v4;
  v34 = *(a1 + 160);
  v5 = a1[5];
  v28 = a1[4];
  v29 = v5;
  v6 = a1[7];
  v30 = a1[6];
  v31 = v6;
  v7 = a1[1];
  v24 = *a1;
  v25 = v7;
  v8 = a1[3];
  v26 = a1[2];
  v27 = v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *&v21[120] = v31;
    *&v21[136] = v32;
    *&v21[152] = v33;
    *&v21[56] = v27;
    *&v21[72] = v28;
    *&v21[88] = v29;
    *&v21[104] = v30;
    *&v21[8] = v24;
    *&v21[24] = v25;
    v21[168] = v34;
    *&v21[40] = v26;
    *v21 = a3;
    sub_1D8F6F144(v21);
    v19 = *&v21[128];
    v20[0] = *&v21[144];
    *(v20 + 10) = *&v21[154];
    v15 = *&v21[64];
    v16 = *&v21[80];
    v17 = *&v21[96];
    v18 = *&v21[112];
    v11 = *v21;
    v12 = *&v21[16];
    v13 = *&v21[32];
    v14 = *&v21[48];
    v10 = a3;
    sub_1D8F6F15C(&v24, v22);
    sub_1D8D8EBEC(&v11);

    v22[8] = v19;
    v23[0] = v20[0];
    *(v23 + 10) = *(v20 + 10);
    v22[4] = v15;
    v22[5] = v16;
    v22[6] = v17;
    v22[7] = v18;
    v22[0] = v11;
    v22[1] = v12;
    v22[2] = v13;
    v22[3] = v14;
    return sub_1D8D90C48(v22);
  }

  return result;
}

uint64_t sub_1D8F68B4C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  updated = type metadata accessor for FeedUpdateRequest(0);
  MEMORY[0x1EEE9AC00](updated);
  v10 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v160 = &v133 - v12;
  v13 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StoreFeedUpdater.Update(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v163 + 9) = *(a1 + 25);
  v19 = a1[1];
  v162 = *a1;
  v163[0] = v19;
  v20 = BYTE8(v163[1]) >> 6;
  v155 = a2;
  v156 = a3;
  v154 = v10;
  if (v20)
  {
    v142 = updated;
    if (v20 == 1)
    {
      if (qword_1EDCD1048 != -1)
      {
        swift_once();
      }

      v21 = sub_1D917744C();
      __swift_project_value_buffer(v21, qword_1EDCD1050);

      v22 = sub_1D917741C();
      v23 = sub_1D9178D1C();

      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_17;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v161[0] = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      sub_1D8D800E0(v4 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v18, type metadata accessor for StoreFeedUpdater.Update);
      v26 = &v18[*(v16 + 32)];
      v27 = *v26;
      v28 = v26[1];

      sub_1D8D90C88(v18, type metadata accessor for StoreFeedUpdater.Update);
      v29 = sub_1D8CFA924(v27, v28, v161);

      *(v24 + 14) = v29;
      v30 = "Job %{private,mask.hash}s: Requesting sync with next page";
    }

    else
    {
      if (qword_1EDCD1048 != -1)
      {
        swift_once();
      }

      v44 = sub_1D917744C();
      __swift_project_value_buffer(v44, qword_1EDCD1050);

      v22 = sub_1D917741C();
      v23 = sub_1D9178D1C();

      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_17;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v161[0] = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      sub_1D8D800E0(v4 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v18, type metadata accessor for StoreFeedUpdater.Update);
      v45 = &v18[*(v16 + 32)];
      v46 = *v45;
      v47 = v45[1];

      sub_1D8D90C88(v18, type metadata accessor for StoreFeedUpdater.Update);
      v48 = sub_1D8CFA924(v46, v47, v161);

      *(v24 + 14) = v48;
      v30 = "Job %{private,mask.hash}s: Requesting Bootstrap";
    }

    _os_log_impl(&dword_1D8CEC000, v22, v23, v30, v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1DA72CB90](v25, -1, -1);
    MEMORY[0x1DA72CB90](v24, -1, -1);
LABEL_17:

    updated = v142;
    goto LABEL_18;
  }

  v158 = v162;
  v159 = v13;
  v157 = *(&v162 + 1);
  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v31 = sub_1D917744C();
  __swift_project_value_buffer(v31, qword_1EDCD1050);

  sub_1D8F6F1A4(&v162, v161);
  v32 = sub_1D917741C();
  v33 = sub_1D9178D1C();

  sub_1D8F6F268(&v162);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v4;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v142 = updated;
    v37 = v36;
    v161[0] = v36;
    *v35 = 141558787;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2081;
    sub_1D8D800E0(v34 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v18, type metadata accessor for StoreFeedUpdater.Update);
    v38 = &v18[*(v16 + 32)];
    v39 = *v38;
    v40 = v38[1];

    sub_1D8D90C88(v18, type metadata accessor for StoreFeedUpdater.Update);
    v41 = sub_1D8CFA924(v39, v40, v161);

    *(v35 + 14) = v41;
    *(v35 + 22) = 2160;
    *(v35 + 24) = 1752392040;
    *(v35 + 32) = 2081;
    *(v35 + 34) = sub_1D8CFA924(v158, v157, v161);
    _os_log_impl(&dword_1D8CEC000, v32, v33, "Job %{private,mask.hash}s: Requesting sync with nextSyncToken %{private,mask.hash}s", v35, 0x2Au);
    swift_arrayDestroy();
    v42 = v37;
    updated = v142;
    MEMORY[0x1DA72CB90](v42, -1, -1);
    v43 = v35;
    v4 = v34;
    MEMORY[0x1DA72CB90](v43, -1, -1);
  }

  v13 = v159;
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FD8, &qword_1D9191F60);
  v49 = swift_allocObject();
  v152 = xmmword_1D9189080;
  *(v49 + 16) = xmmword_1D9189080;
  *(v49 + 32) = 4;
  v50 = sub_1D8D946F4(&unk_1F545E1E0);
  sub_1D8D08A50(&unk_1F545E200, &unk_1ECAB9A50, &unk_1D9197130);
  v51 = MEMORY[0x1E69E7CC0];
  v159 = sub_1D8E26D04(MEMORY[0x1E69E7CC0]);
  v52 = sub_1D8E27040(v51);
  v54 = *(v49 + 16);
  v53 = *(v49 + 24);
  if (v54 >= v53 >> 1)
  {
    v49 = sub_1D8D883A0((v53 > 1), v54 + 1, 1, v49);
  }

  *(v49 + 16) = v54 + 1;
  *(v49 + v54 + 32) = 3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v161[0] = v50;
  sub_1D8F506E0(&unk_1F545E190, 4, isUniquelyReferenced_nonNull_native);
  v153 = v161[0];
  v56 = v52;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v161[0] = v52;
  v59 = sub_1D8F06C58(1);
  v60 = v56[2];
  v61 = (v58 & 1) == 0;
  v62 = v60 + v61;
  if (!__OFADD__(v60, v61))
  {
    v63 = v58;
    if (v56[3] >= v62)
    {
      if (v57)
      {
        if (v58)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1D8F83E58();
        v56 = v161[0];
        if (v63)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_1D9006C9C(v62, v57);
      v64 = v161[0];
      v65 = sub_1D8F06C58(1);
      if ((v63 & 1) != (v66 & 1))
      {
        goto LABEL_72;
      }

      v59 = v65;
      v56 = v64;
      if (v63)
      {
LABEL_28:
        v57 = v56[7];
        v50 = *(v57 + 8 * v59);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        *(v57 + 8 * v59) = v50;
        v157 = v56;
        v158 = v49;
        if (v67)
        {
          goto LABEL_29;
        }

        goto LABEL_65;
      }
    }

    sub_1D90BA624();
    goto LABEL_28;
  }

  __break(1u);
LABEL_65:
  v50 = sub_1D8ECCFF4(0, *(v50 + 16) + 1, 1, v50);
  *(v57 + 8 * v59) = v50;
LABEL_29:
  v69 = *(v50 + 16);
  v68 = *(v50 + 24);
  if (v69 >= v68 >> 1)
  {
    v50 = sub_1D8ECCFF4((v68 > 1), v69 + 1, 1, v50);
    *(v57 + 8 * v59) = v50;
  }

  *(v50 + 16) = v69 + 1;
  *(v50 + v69 + 32) = 19;
  v161[3] = &type metadata for Podcasts;
  v161[4] = sub_1D8CF0F2C();
  LOBYTE(v161[0]) = 40;
  v70 = sub_1D917710C();
  __swift_destroy_boxed_opaque_existential_1Tm(v161);
  if ((v70 & 1) == 0)
  {
    v86 = 0;
    goto LABEL_48;
  }

  v71 = v158;
  v73 = *(v158 + 2);
  v72 = *(v158 + 3);
  v74 = v73 + 1;
  if (v73 >= v72 >> 1)
  {
    v71 = sub_1D8D883A0((v72 > 1), v73 + 1, 1, v158);
  }

  *(v71 + 2) = v74;
  v71[v73 + 32] = 6;
  v75 = v157;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v161[0] = v75;
  v78 = sub_1D8F06C58(1);
  v79 = v75[2];
  v80 = (v77 & 1) == 0;
  v81 = v79 + v80;
  if (__OFADD__(v79, v80))
  {
    __break(1u);
LABEL_69:
    swift_once();
    goto LABEL_56;
  }

  v82 = v77;
  if (v75[3] < v81)
  {
    sub_1D9006C9C(v81, v76);
    v83 = v161[0];
    v84 = sub_1D8F06C58(1);
    if ((v82 & 1) == (v85 & 1))
    {
      v78 = v84;
      v75 = v83;
      if (v82)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

LABEL_72:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

  if ((v76 & 1) == 0)
  {
    sub_1D8F83E58();
    v75 = v161[0];
    if (v82)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if ((v77 & 1) == 0)
  {
LABEL_42:
    sub_1D90BA624();
  }

LABEL_43:
  v87 = v75[7];
  v88 = *(v87 + 8 * v78);
  v89 = swift_isUniquelyReferenced_nonNull_native();
  *(v87 + 8 * v78) = v88;
  v157 = v75;
  v158 = v71;
  if ((v89 & 1) == 0)
  {
    v88 = sub_1D8ECCFF4(0, *(v88 + 2) + 1, 1, v88);
    *(v87 + 8 * v78) = v88;
  }

  v91 = *(v88 + 2);
  v90 = *(v88 + 3);
  if (v91 >= v90 >> 1)
  {
    v88 = sub_1D8ECCFF4((v90 > 1), v91 + 1, 1, v88);
    *(v87 + 8 * v78) = v88;
  }

  *(v88 + 2) = v91 + 1;
  v88[v91 + 32] = 24;
  v92 = v159;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v161[0] = v92;
  sub_1D8F505BC(&unk_1F545E1B8, 6144, v93);
  v159 = v161[0];
  v86 = sub_1D8CF7564;
LABEL_48:
  v94 = BYTE8(v163[1]) >> 6;
  v146 = v86;
  if (!v94)
  {
    v151 = v162;
    v149 = 0;
    v148 = 0u;
    v95 = 2;
    goto LABEL_52;
  }

  if (v94 == 1)
  {
    v151 = v162;
    v149 = *&v163[1];
    v148 = v163[0];
    v95 = BYTE8(v163[1]) & 0x3F;
LABEL_52:
    v150 = v95;
    goto LABEL_54;
  }

  v150 = BYTE8(v163[1]) >> 6;
  v149 = 0;
  v151 = 0u;
  v148 = 0u;
LABEL_54:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v96 = swift_allocObject();
  *(v96 + 16) = v152;
  v74 = v4 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v161[6] = *(v4 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update + updated[7]);
  sub_1D8F6F1A4(&v162, v161);
  *(v96 + 32) = sub_1D9179A4C();
  *(v96 + 40) = v97;
  *&v152 = v96;
  if (![objc_opt_self() isRunningOnHomepod])
  {
    if (qword_1EDCD23E8 != -1)
    {
      swift_once();
    }

    v98 = &qword_1EDCD23F0;
    goto LABEL_60;
  }

  if (qword_1ECAB34D0 != -1)
  {
    goto LABEL_69;
  }

LABEL_56:
  v98 = &qword_1ECAB73D0;
LABEL_60:
  v99 = *v98 + OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_deltaNumberOfEpisodesToRequestPerPage;
  v145 = *v99;
  v144 = *(v99 + 8);
  sub_1D8D088B4(v4 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_bagConfiguration, v160, &unk_1ECAB5910, &qword_1D9188C90);
  v100 = *(v74 + updated[9]);
  v147 = v4;
  if (v100)
  {
    v143 = 0;
  }

  else
  {
    v143 = *(v74 + updated[11]);
  }

  v101 = (v74 + updated[8]);
  v102 = v101[1];
  v142 = *v101;
  v141 = v102;

  v139 = sub_1D8D94DF8(v51);
  v138 = sub_1D8D951E0(v51);
  v137 = sub_1D8D9503C(v51);
  v135 = sub_1D8D9536C(v51);
  v134 = sub_1D8D952D8(v51);
  v136 = sub_1D8D95394(v51);
  v103 = sub_1D8D957C4(v51);
  *(v15 + 41) = 263;
  v15[43] = 5;
  v15[152] = 1;
  v15[201] = 1;
  v140 = v74;
  v104 = v13[28];
  v105 = sub_1D9176C2C();
  (*(*(v105 - 8) + 56))(&v15[v104], 1, 1, v105);
  v106 = &v15[v13[29]];
  v107 = &v15[v13[31]];
  v108 = v13[34];
  v109 = v51;
  v110 = &v15[v13[33]];
  v111 = &v15[v13[35]];
  v112 = v148;
  *v15 = v151;
  *(v15 + 1) = v112;
  *(v15 + 4) = v149;
  v15[40] = v150;
  *(v15 + 41) = 257;
  v15[43] = 0;
  v113 = v139;
  *(v15 + 6) = v157;
  *(v15 + 7) = v113;
  *(v15 + 8) = v138;
  *(v15 + 9) = v109;
  v114 = v135;
  *(v15 + 10) = v137;
  *(v15 + 11) = v114;
  v115 = v159;
  *(v15 + 12) = v153;
  *(v15 + 13) = v115;
  v116 = v134;
  *(v15 + 14) = v109;
  *(v15 + 15) = v116;
  *(v15 + 16) = v158;
  *(v15 + 17) = v109;
  *(v15 + 18) = v152;
  v15[152] = 1;
  *(v15 + 20) = v145;
  v15[168] = v144;
  *(v15 + 22) = v136;
  *(v15 + 23) = v103;
  *(v15 + 24) = 0;
  *(v15 + 100) = 257;
  v15[202] = 1;
  sub_1D8E26828(v160, &v15[v104]);
  *v106 = 0;
  *(v106 + 1) = 0;
  v15[v13[30]] = v143;
  *v107 = 0;
  *(v107 + 1) = 0;
  *&v15[v13[32]] = v109;
  v117 = v141;
  *v110 = v142;
  *(v110 + 1) = v117;
  v15[v108] = 2;
  *v111 = 0;
  *(v111 + 1) = 0;
  v118 = v154;
  sub_1D8D800E0(v140, v154, type metadata accessor for FeedUpdateRequest);
  _s21MediaRequestTelemetryCMa(0);
  v119 = swift_allocObject();
  v120 = (v119 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestBuildingState);
  *v120 = 0;
  v120[1] = 0;
  v121 = (v119 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingState);
  *v121 = 0;
  v121[1] = 0;
  v122 = (v119 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingDiagnosticState);
  *v122 = 0;
  v122[1] = 0;
  v123 = (v119 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_networkState);
  *v123 = 0;
  v123[1] = 0;
  v124 = (v119 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_parsingState);
  *v124 = 0;
  v124[1] = 0;
  sub_1D8D79960(v118, v119 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_request);
  *(v119 + 16) = 1;
  v125 = *(v147 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController + 24);
  v126 = *(v147 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController + 32);
  __swift_project_boxed_opaque_existential_1((v147 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController), v125);
  v127 = swift_allocObject();
  swift_weakInit();
  v128 = swift_allocObject();
  *(v128 + 16) = v127;
  v129 = v163[0];
  *(v128 + 24) = v162;
  *(v128 + 40) = v129;
  *(v128 + 49) = *(v163 + 9);
  v130 = v156;
  *(v128 + 72) = v155;
  *(v128 + 80) = v130;
  sub_1D8F6F1A4(&v162, v161);
  v131 = sub_1D8F6F214();

  MediaRequestControllerProtocol.perform<A>(params:account:telemetry:parsing:callback:)(v15, 0, v119, &type metadata for ServerSyncResponse, sub_1D8F6F200, v128, v125, &type metadata for ServerSyncResponse, v126, v131);

  sub_1D8D90C88(v15, type metadata accessor for MediaRequest.Params);
  return sub_1D8D15664(v146, 0);
}

uint64_t sub_1D8F69C58(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(result + 144);
  v67 = *(result + 128);
  v68 = v4;
  v69 = *(result + 160);
  v5 = *(result + 80);
  v63 = *(result + 64);
  v64 = v5;
  v6 = *(result + 112);
  v65 = *(result + 96);
  v66 = v6;
  v7 = *(result + 16);
  v59 = *result;
  v60 = v7;
  v8 = *(result + 48);
  v61 = *(result + 32);
  v62 = v8;
  v9 = v8;
  v10 = MEMORY[0x1E69E7CC0];
  v57[0] = MEMORY[0x1E69E7CC0];
  v11 = *(v8 + 16);
LABEL_2:
  v12 = v9 + 72 * v3;
  while (v11 != v3)
  {
    if (v3 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    ++v3;
    v13 = (v12 + 72);
    v14 = *(v12 + 80);
    v12 += 72;
    if (v14)
    {
      v15 = *(v13 - 4);
      v16 = *(v13 - 2);
      v50 = *(v13 - 5);
      v51 = *(v13 - 3);
      v17 = *v13;
      v52 = *(v13 - 1);
      v53 = v13[2];
      v18 = type metadata accessor for ServerPodcastEpisode();
      v19 = objc_allocWithZone(v18);
      v20 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
      *&v19[OBJC_IVAR___MTServerPodcastEpisode_relationships] = 0;
      v21 = &v19[OBJC_IVAR___MTServerPodcastEpisode_id];
      *v21 = v50;
      *(v21 + 1) = v15;
      v22 = &v19[OBJC_IVAR___MTServerPodcastEpisode_type];
      *v22 = v51;
      *(v22 + 1) = v16;
      v23 = &v19[OBJC_IVAR___MTServerPodcastEpisode_href];
      *v23 = v52;
      *(v23 + 1) = v17;
      *&v19[OBJC_IVAR___MTServerPodcastEpisode_attributes] = v14;
      swift_beginAccess();
      *&v19[v20] = v53;
      v58.receiver = v19;
      v58.super_class = v18;

      v24 = v53;
      objc_msgSendSuper2(&v58, sel_init);
      MEMORY[0x1DA729B90]();
      if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D917863C();
      }

      result = sub_1D917869C();
      v10 = v57[0];
      goto LABEL_2;
    }
  }

  if (v11)
  {
    v25 = 0;
    v26 = -v11;
    v27 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v28 = *(v9 + 16);
    if (v25 > v28)
    {
      v28 = v25;
    }

    v29 = -v28;
    v30 = (v9 + 96 + 72 * v25++);
    while (v29 + v25 != 1)
    {
      if (*v30 & 0xFE) != 2 && (*v30)
      {
        v32 = *(v30 - 8);
        v31 = *(v30 - 7);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D8D4241C(0, *(v27 + 16) + 1, 1, v27);
          v27 = result;
        }

        v34 = *(v27 + 16);
        v33 = *(v27 + 24);
        if (v34 >= v33 >> 1)
        {
          result = sub_1D8D4241C((v33 > 1), v34 + 1, 1, v27);
          v27 = result;
        }

        *(v27 + 16) = v34 + 1;
        v35 = v27 + 16 * v34;
        *(v35 + 32) = v32;
        *(v35 + 40) = v31;
        if (v26 + v25)
        {
          goto LABEL_11;
        }

        goto LABEL_25;
      }

      ++v25;
      v30 += 72;
      if (v26 + v25 == 1)
      {
        goto LABEL_25;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v36 = (v56 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData);
  v37 = *(v56 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    goto LABEL_30;
  }

  *v36 = v39;
  v40 = *(v9 + 16);
  v41 = v36[1];
  v38 = __OFADD__(v41, v40);
  v42 = v41 + v40;
  if (!v38)
  {
    v36[1] = v42;
    v43 = OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
    v44 = swift_allocObject();
    v45 = v65;
    *(v44 + 136) = v66;
    v46 = v68;
    *(v44 + 152) = v67;
    *(v44 + 168) = v46;
    v47 = v61;
    *(v44 + 72) = v62;
    v48 = v64;
    *(v44 + 88) = v63;
    *(v44 + 104) = v48;
    *(v44 + 120) = v45;
    v49 = v60;
    *(v44 + 24) = v59;
    *(v44 + 40) = v49;
    *(v44 + 16) = v56;
    *(v44 + 184) = v69;
    *(v44 + 56) = v47;
    *(v44 + 192) = a2;
    *(v44 + 200) = a3;
    *(v44 + 208) = v10;
    *(v44 + 216) = v27;

    sub_1D8F6F15C(&v59, v57);
    sub_1D8D1F93C(a2, a3);
    NSManagedObjectContext.performWithTelemetry(for:_:)(v56 + v43, sub_1D8F6F304, v44);
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D8F6A070(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v38 = *(a1 + 128);
  v39 = v2;
  v40 = *(a1 + 160);
  v3 = *(a1 + 80);
  v34 = *(a1 + 64);
  v35 = v3;
  v4 = *(a1 + 112);
  v36 = *(a1 + 96);
  v37 = v4;
  v5 = *(a1 + 16);
  v30 = *a1;
  v31 = v5;
  v6 = *(a1 + 48);
  v32 = *(a1 + 32);
  v33 = v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = v38;
    *v27 = v39;
    v27[16] = v40;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v21 = v33;
    sub_1D8F6F2EC(&v18);
    v16 = v26;
    v17[0] = *v27;
    *(v17 + 10) = *&v27[10];
    v12 = v22;
    v13 = v23;
    v14 = v24;
    v15 = v25;
    v8 = v18;
    v9 = v19;
    v10 = v20;
    v11 = v21;
    sub_1D8F6F15C(&v30, v28);
    sub_1D8D8EBEC(&v8);

    v28[8] = v16;
    v29[0] = v17[0];
    *(v29 + 10) = *(v17 + 10);
    v28[4] = v12;
    v28[5] = v13;
    v28[6] = v14;
    v28[7] = v15;
    v28[0] = v8;
    v28[1] = v9;
    v28[2] = v10;
    v28[3] = v11;
    return sub_1D8D90C48(v28);
  }

  return result;
}

uint64_t sub_1D8F6A1BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, __int128 *a5, void (*a6)(__int128 *), uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = (Strong + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval);
    v15 = *(Strong + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);
    if (v15)
    {
      LOBYTE(v20[0]) = *v14;
      *(&v20[0] + 1) = v15;

      sub_1D8D7FAB4();
    }

    *v14 = 0;
    v14[1] = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = a5[1];
    v22 = *a5;
    v23[0] = v17;
    *(v23 + 9) = *(a5 + 25);
    v18 = *(a3 + 48);
    v20[2] = *(a3 + 32);
    v20[3] = v18;
    v21 = *(a3 + 64);
    v19 = *(a3 + 16);
    v20[0] = *a3;
    v20[1] = v19;
    sub_1D8F6A308(&v22, a1, a2 & 1, v20, a6, a7);
  }

  return result;
}

void sub_1D8F6A308(uint64_t *a1, uint64_t a2, int a3, __int128 *a4, void (*a5)(__int128 *), uint64_t a6)
{
  v7 = v6;
  v97 = a6;
  v98 = a5;
  LODWORD(v103) = a3;
  v105 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76F0, &qword_1D91B6700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v87 - v11;
  v13 = sub_1D91767FC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for StoreFeedUpdater.Update(0);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v95 = a1[1];
  v96 = v18;
  v19 = a1[2];
  v93 = a1[3];
  v94 = v19;
  v92 = a1[4];
  v91 = *(a1 + 40);
  v20 = a4[3];
  v136 = a4[2];
  v137 = v20;
  v138 = *(a4 + 64);
  v21 = a4[1];
  v134 = *a4;
  v135 = v21;
  LOBYTE(v116) = 18;
  v22 = v7;
  v100 = OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  sub_1D8D76684(&v116, v126);
  v23 = *(&v126[0] + 1);
  v104 = *&v126[0];
  if (v138)
  {
    v24 = v134;
    v133 = v134;
    v25 = v134;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    swift_willThrowTypedImpl();
    v26 = v105;
    if (v103)
    {
      goto LABEL_39;
    }

    goto LABEL_3;
  }

  v99 = *(&v126[0] + 1);
  v37 = *(&v134 + 1);
  v38 = *(&v135 + 1);
  v39 = v135;
  if (BYTE1(v136) == 2 || (BYTE1(v136) & 1) == 0)
  {
    if (v136 == 2 || (v136 & 1) == 0)
    {
      if (!*(&v135 + 1))
      {
        if (qword_1EDCD1048 != -1)
        {
          swift_once();
        }

        v66 = sub_1D917744C();
        __swift_project_value_buffer(v66, qword_1EDCD1050);
        v7 = v22;

        v67 = sub_1D917741C();
        v68 = sub_1D9178D1C();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *&v126[0] = v70;
          *v69 = 141558275;
          *(v69 + 4) = 1752392040;
          *(v69 + 12) = 2081;
          v71 = v22 + v100;
          v72 = v102;
          sub_1D8D800E0(v71, v102, type metadata accessor for StoreFeedUpdater.Update);
          v73 = (v72 + *(v101 + 32));
          v74 = *v73;
          v75 = v73[1];

          sub_1D8D90C88(v72, type metadata accessor for StoreFeedUpdater.Update);
          v76 = sub_1D8CFA924(v74, v75, v126);

          *(v69 + 14) = v76;
          _os_log_impl(&dword_1D8CEC000, v67, v68, "Job %{private,mask.hash}s: Response is missing nextSyncToken", v69, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v70);
          MEMORY[0x1DA72CB90](v70, -1, -1);
          MEMORY[0x1DA72CB90](v69, -1, -1);
        }

        v23 = v99;
        v26 = v105;
        sub_1D8D77098();
        v24 = swift_allocError();
        *v77 = 2;
        swift_willThrow();
        if (v103)
        {
          goto LABEL_39;
        }

LABEL_3:
        if (v26 == 400)
        {
          if (qword_1EDCD1048 != -1)
          {
            swift_once();
          }

          v27 = sub_1D917744C();
          __swift_project_value_buffer(v27, qword_1EDCD1050);

          v28 = sub_1D917741C();
          v29 = sub_1D9178D1C();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            *&v126[0] = v31;
            *v30 = 141558275;
            *(v30 + 4) = 1752392040;
            *(v30 + 12) = 2081;
            v32 = v102;
            sub_1D8D800E0(v7 + v100, v102, type metadata accessor for StoreFeedUpdater.Update);
            v33 = (v32 + *(v101 + 32));
            v99 = v23;
            v34 = *v33;
            v35 = v33[1];

            sub_1D8D90C88(v32, type metadata accessor for StoreFeedUpdater.Update);
            v36 = sub_1D8CFA924(v34, v35, v126);

            *(v30 + 14) = v36;
            v23 = v99;
            _os_log_impl(&dword_1D8CEC000, v28, v29, "Job %{private,mask.hash}s: Server returned 400, needs bootstrap", v30, 0x16u);
            __swift_destroy_boxed_opaque_existential_1Tm(v31);
            MEMORY[0x1DA72CB90](v31, -1, -1);
            MEMORY[0x1DA72CB90](v30, -1, -1);
          }

          memset(v126, 0, sizeof(v126));
          goto LABEL_32;
        }

        if ((v26 - 500) <= 0x63)
        {
          if (qword_1EDCD1048 != -1)
          {
            swift_once();
          }

          v56 = sub_1D917744C();
          __swift_project_value_buffer(v56, qword_1EDCD1050);

          v57 = sub_1D917741C();
          v58 = sub_1D9178D1C();

          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            *&v126[0] = v60;
            *v59 = 141558531;
            *(v59 + 4) = 1752392040;
            *(v59 + 12) = 2081;
            v61 = v102;
            sub_1D8D800E0(v7 + v100, v102, type metadata accessor for StoreFeedUpdater.Update);
            v62 = (v61 + *(v101 + 32));
            v99 = v23;
            v63 = *v62;
            v64 = v62[1];

            sub_1D8D90C88(v61, type metadata accessor for StoreFeedUpdater.Update);
            v65 = sub_1D8CFA924(v63, v64, v126);

            *(v59 + 14) = v65;
            v23 = v99;
            *(v59 + 22) = 2048;
            *(v59 + 24) = v105;
            _os_log_impl(&dword_1D8CEC000, v57, v58, "Job %{private,mask.hash}s: Server return %ld, needs retry", v59, 0x20u);
            __swift_destroy_boxed_opaque_existential_1Tm(v60);
            MEMORY[0x1DA72CB90](v60, -1, -1);
            MEMORY[0x1DA72CB90](v59, -1, -1);
          }

          *(v126 + 8) = 0u;
          *(&v126[1] + 8) = 0u;
          *(&v126[2] + 8) = 0u;
          *&v126[0] = 1;
          *(&v126[3] + 1) = 0;
LABEL_32:
          LOBYTE(v127) = 2;
          sub_1D8F6F0C8(v126);
          v124 = v131;
          v125[0] = v132[0];
          *(v125 + 10) = *(v132 + 10);
          v120 = v127;
          v121 = v128;
          v122 = v129;
          v123 = v130;
          v116 = v126[0];
          v117 = v126[1];
          v118 = v126[2];
          v119 = v126[3];
          sub_1D8D8EBEC(&v116);

          if (!v23)
          {
            return;
          }

          goto LABEL_43;
        }

LABEL_39:
        *&v116 = v24;
        sub_1D8F6F10C(&v116);
        v114 = v124;
        v115[0] = v125[0];
        *(v115 + 10) = *(v125 + 10);
        v110 = v120;
        v111 = v121;
        v112 = v122;
        v113 = v123;
        v106 = v116;
        v107 = v117;
        v108 = v118;
        v109 = v119;
        v78 = v24;
        sub_1D8D8EBEC(&v106);

        v131 = v114;
        v132[0] = v115[0];
        *(v132 + 10) = *(v115 + 10);
        v127 = v110;
        v128 = v111;
        v129 = v112;
        v130 = v113;
        v126[0] = v106;
        v126[1] = v107;
        v126[2] = v108;
        v126[3] = v109;
        sub_1D8D90C48(v126);
        if (!v23)
        {
          return;
        }

        LOBYTE(v106) = v104;
        *(&v106 + 1) = v23;
        goto LABEL_44;
      }

      v103 = *(&v137 + 1);

      v105 = v38;
      if (!v37)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v103 = *(&v137 + 1);
      v39 = 0;
      v105 = 0;
      if (!*(&v134 + 1))
      {
LABEL_20:
        v102 = v39;

        v52 = v103;

        v100 = 0;
        v101 = 0;
        v90 = 0;
        v53 = 0;
        v88 = 0;
        v89 = 255;
        v23 = v99;
LABEL_42:
        v82 = v95;
        v81 = v96;
        v83 = v93;
        v84 = v94;
        v85 = v92;
        v86 = v91;
        sub_1D8F6F298(v96, v95, v94, v93, v92, v91);
        sub_1D8F6F298(v81, v82, v84, v83, v85, v86);

        sub_1D8D08A50(&v134, &qword_1ECAB76F8, qword_1D9198858);
        *&v116 = v81;
        *(&v116 + 1) = v82;
        *&v117 = v84;
        *(&v117 + 1) = v83;
        *&v118 = v85;
        BYTE8(v118) = v86;
        *&v119 = v52;
        *(&v119 + 1) = v102;
        *&v120 = v105;
        *(&v120 + 1) = v101;
        *&v121 = v100;
        *(&v121 + 1) = v90;
        *&v122 = v53;
        *(&v122 + 1) = v88;
        LOBYTE(v123) = v89;
        *(&v123 + 1) = v81;
        *&v124 = v82;
        *(&v124 + 1) = v84;
        *&v125[0] = v83;
        *(&v125[0] + 1) = v85;
        LOBYTE(v125[1]) = v86;
        v98(&v116);
        v131 = v124;
        v132[0] = v125[0];
        LOBYTE(v132[1]) = v125[1];
        v127 = v120;
        v128 = v121;
        v129 = v122;
        v130 = v123;
        v126[0] = v116;
        v126[1] = v117;
        v126[2] = v118;
        v126[3] = v119;
        sub_1D8F6F2BC(v126);
        if (!v23)
        {
          return;
        }

LABEL_43:
        LOBYTE(v116) = v104;
        *(&v116 + 1) = v23;
        goto LABEL_44;
      }
    }

    sub_1D8D088B4(&v134, v126, &qword_1ECAB76F8, qword_1D9198858);

    sub_1D91767BC();

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1D8D08A50(v12, &qword_1ECAB76F0, &qword_1D91B6700);

      sub_1D8D08A50(&v134, &qword_1ECAB76F8, qword_1D9198858);
      sub_1D8D77098();
      v54 = swift_allocError();
      *v55 = 3;
      *&v116 = v54;
      sub_1D8F6F10C(&v116);
      v114 = v124;
      v115[0] = v125[0];
      *(v115 + 10) = *(v125 + 10);
      v110 = v120;
      v111 = v121;
      v112 = v122;
      v113 = v123;
      v106 = v116;
      v107 = v117;
      v108 = v118;
      v109 = v119;
      sub_1D8D8EBEC(&v106);
      v130 = v113;
      v131 = v114;
      v132[0] = v115[0];
      *(v132 + 10) = *(v115 + 10);
      v127 = v110;
      v128 = v111;
      v129 = v112;
      v126[0] = v106;
      v126[1] = v107;
      v126[2] = v108;
      v126[3] = v109;
      sub_1D8D90C48(v126);
      if (!v99)
      {
        return;
      }

      LOBYTE(v106) = v104;
      *(&v106 + 1) = v99;
      goto LABEL_44;
    }

    v102 = v39;
    (*(v14 + 32))(v16, v12, v13);
    v79 = sub_1D917677C();
    v100 = v80;
    v101 = v79;
    v90 = sub_1D917670C();
    (*(v14 + 8))(v16, v13);
    v89 = 3;
    v88 = 0xE300000000000000;
    v53 = 7628135;
    v23 = v99;
    v52 = v103;
    goto LABEL_42;
  }

  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v40 = sub_1D917744C();
  __swift_project_value_buffer(v40, qword_1EDCD1050);

  v41 = sub_1D917741C();
  v42 = sub_1D9178D1C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v126[0] = v44;
    *v43 = 141558275;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    v45 = v22 + v100;
    v46 = v102;
    sub_1D8D800E0(v45, v102, type metadata accessor for StoreFeedUpdater.Update);
    v47 = (v46 + *(v101 + 32));
    v48 = *v47;
    v49 = v47[1];

    sub_1D8D90C88(v46, type metadata accessor for StoreFeedUpdater.Update);
    v50 = sub_1D8CFA924(v48, v49, v126);

    *(v43 + 14) = v50;
    _os_log_impl(&dword_1D8CEC000, v41, v42, "Job %{private,mask.hash}s: Server Meta is asking for reset, needs bootstrap", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x1DA72CB90](v44, -1, -1);
    MEMORY[0x1DA72CB90](v43, -1, -1);
  }

  v51 = v99;
  memset(v126, 0, sizeof(v126));
  LOBYTE(v127) = 2;
  sub_1D8F6F0C8(v126);
  v124 = v131;
  v125[0] = v132[0];
  *(v125 + 10) = *(v132 + 10);
  v120 = v127;
  v121 = v128;
  v122 = v129;
  v123 = v130;
  v116 = v126[0];
  v117 = v126[1];
  v118 = v126[2];
  v119 = v126[3];
  sub_1D8D8EBEC(&v116);
  if (v51)
  {
    LOBYTE(v116) = v104;
    *(&v116 + 1) = v51;
LABEL_44:
    sub_1D8D7FAB4();
  }
}

void sub_1D8F6B138(uint64_t a1, uint64_t a2, void (*a3)(id, id, __n128), uint64_t a4, unint64_t a5, uint64_t a6)
{
  v218 = a5;
  v219 = a6;
  v215 = a4;
  v217 = a3;
  v228 = a2;
  v229 = sub_1D9176EAC();
  v224 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v214 = &v208 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v208 - v9;
  v221 = type metadata accessor for StoreFeedUpdater.Update(0);
  MEMORY[0x1EEE9AC00](v221);
  v222 = &v208 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v213 = &v208 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v220 = &v208 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v208 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v208 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v208 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v208 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v226 = &v208 - v29;
  v30 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);
  v230 = a1;
  v31 = a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  updated = type metadata accessor for FeedUpdateRequest(0);
  v33 = [v30 podcastForStoreId_];
  v223 = updated;
  v231 = v33;
  v225 = v31;
  v216 = v30;
  if (!v33)
  {
    sub_1D9176ACC();
    v34 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v35 = [v30 podcastForFeedUrl_];

    v231 = v35;
    if (!v35)
    {
      goto LABEL_19;
    }
  }

  v36 = [v231 uuid];
  if (!v36)
  {

LABEL_19:
    sub_1D8D77098();
    v83 = swift_allocError();
    *v84 = 10;
    *&v242 = v83;
    sub_1D8F6F10C(&v242);
    v240 = v250;
    v241[0] = v251[0];
    *(v241 + 10) = *(v251 + 10);
    v236 = v246;
    v237 = v247;
    v238 = v248;
    v239 = v249;
    v232 = v242;
    v233 = v243;
    v234 = v244;
    v235 = v245;
    sub_1D8D8EBEC(&v232);
    v260 = v240;
    v261[0] = v241[0];
    *(v261 + 10) = *(v241 + 10);
    v256 = v236;
    v257 = v237;
    v258 = v238;
    v259 = v239;
    v252 = v232;
    v253 = v233;
    v254 = v234;
    v255 = v235;
    sub_1D8D90C48(&v252);
    return;
  }

  v211 = v36;
  v210 = sub_1D917820C();
  v37 = *(v228 + 40);
  v212 = v38;
  if ((v37 & 0xC0) != 0x80 || v37 != 128 || (v39 = vorrq_s8(*(v228 + 8), *(v228 + 24)), *&vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL)) | *v228))
  {
    v57 = [v231 bootstrapGeneration];
    v58 = v230;
    if (!v57)
    {
      (*(v224 + 56))(v226, 1, 1, v229);
      if (qword_1EDCD1048 != -1)
      {
        swift_once();
      }

      v85 = sub_1D917744C();
      __swift_project_value_buffer(v85, qword_1EDCD1050);

      v86 = sub_1D917741C();
      v87 = sub_1D9178D1C();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v252 = v89;
        *v88 = 141558275;
        *(v88 + 4) = 1752392040;
        *(v88 + 12) = 2081;
        v90 = v222;
        sub_1D8D800E0(v225, v222, type metadata accessor for StoreFeedUpdater.Update);
        v91 = (v90 + *(v221 + 32));
        v92 = *v91;
        v93 = v91[1];

        sub_1D8D90C88(v90, type metadata accessor for StoreFeedUpdater.Update);
        v94 = sub_1D8CFA924(v92, v93, &v252);

        *(v88 + 14) = v94;
        _os_log_impl(&dword_1D8CEC000, v86, v87, "Job %{private,mask.hash}s: Processing new delta update", v88, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        MEMORY[0x1DA72CB90](v89, -1, -1);
        MEMORY[0x1DA72CB90](v88, -1, -1);
      }

LABEL_28:
      v95 = v223;
      v96 = *(v58 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider + 24);
      v97 = *(v58 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider + 32);
      __swift_project_boxed_opaque_existential_1((v58 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider), v96);
      v98 = *(v225 + *(v95 + 48));
      v99 = *(v58 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_updaterJobUUID);
      v100 = *(v58 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_updaterJobUUID + 8);
      v101 = *(v97 + 8);

      v227 = v101(v231, v98, v99, v100, v96, v97);

      if (v217)
      {
        (v217)(v227, v231);
      }

      v102 = v218;
      v103 = v219;
      v104 = v226;
      if (v218 >> 62)
      {
        v207 = v218;
        v105 = sub_1D917935C();
        v102 = v207;
      }

      else
      {
        v105 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v106 = v229;
      v107 = v230;
      if (v105 || *(v103 + 16))
      {
        v108 = v227;
        sub_1D8F6CC54(v231, v104, v102, v227);
        sub_1D8F6DFBC(v103);
        v110 = v109;
        sub_1D8F6E4B0(v109, v108);
      }

      else
      {
        if (qword_1EDCD1048 != -1)
        {
          swift_once();
        }

        v195 = sub_1D917744C();
        __swift_project_value_buffer(v195, qword_1EDCD1050);

        v196 = sub_1D917741C();
        v197 = sub_1D9178D1C();

        if (os_log_type_enabled(v196, v197))
        {
          v198 = swift_slowAlloc();
          v199 = swift_slowAlloc();
          *&v252 = v199;
          *v198 = 141558275;
          *(v198 + 4) = 1752392040;
          *(v198 + 12) = 2081;
          v200 = v222;
          sub_1D8D800E0(v225, v222, type metadata accessor for StoreFeedUpdater.Update);
          v201 = (v200 + *(v221 + 32));
          v202 = *v201;
          v203 = v201[1];

          v204 = v200;
          v106 = v229;
          sub_1D8D90C88(v204, type metadata accessor for StoreFeedUpdater.Update);
          v205 = sub_1D8CFA924(v202, v203, &v252);
          v107 = v230;

          *(v198 + 14) = v205;
          _os_log_impl(&dword_1D8CEC000, v196, v197, "Job %{private,mask.hash}s: Sync response contained no updates", v198, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v199);
          MEMORY[0x1DA72CB90](v199, -1, -1);
          v206 = v198;
          v104 = v226;
          MEMORY[0x1DA72CB90](v206, -1, -1);
        }
      }

      if (*(v228 + 64))
      {
        v111 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      }

      else
      {
        v111 = 0;
      }

      [v231 setNextSyncToken_];

      v112 = v220;
      sub_1D8D088B4(v104, v220, &qword_1ECAB71E0, &unk_1D9197360);
      v113 = v224;
      v114 = *(v224 + 48);
      if (v114(v112, 1, v106) == 1)
      {
        v115 = 0;
      }

      else
      {
        v116 = v112;
        v115 = sub_1D9176E6C();
        (*(v113 + 8))(v116, v106);
      }

      [v231 setBootstrapGeneration_];

      v117 = *(v228 + 88);
      v262 = *(v228 + 72);
      *v263 = v117;
      *&v263[9] = *(v228 + 97);
      v118 = v263[24];
      if (v263[24] == 255)
      {
        goto LABEL_42;
      }

      v121 = *(&v262 + 1);
      v122 = v262;
      v123 = *v263;
      v219 = *&v263[16];
      v220 = *&v263[8];
      v124 = v107 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_bagConfiguration;
      if (*(v124 + *(type metadata accessor for FeedManagerBagConfiguration(0) + 24)) == 1 && (v125 = *(v228 + 160), (v125 & 0xC0) == 0x40))
      {
        v126 = *(v228 + 152);
        v252 = __PAIR128__(v121, v122);
        *&v253 = v123;
        *(&v253 + 1) = v220;
        *&v254 = v219;
        BYTE8(v254) = v118;
        v127 = *(v228 + 136);
        v242 = *(v228 + 120);
        v243 = v127;
        *&v244 = v126;
        BYTE8(v244) = v125 & 0x3F;
        sub_1D8D088B4(&v262, &v232, &qword_1ECAB7760, &unk_1D9198870);
        if (_s18PodcastsFoundation12MediaRequestC0D4TypeO2eeoiySbAE_AEtFZ_0(&v252, &v242))
        {
          sub_1D8D08A50(&v262, &qword_1ECAB7760, &unk_1D9198870);
          if (qword_1EDCD1048 != -1)
          {
            swift_once();
          }

          v128 = sub_1D917744C();
          __swift_project_value_buffer(v128, qword_1EDCD1050);

          v129 = sub_1D917741C();
          v130 = sub_1D9178D0C();

          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            *&v252 = v132;
            *v131 = 141558275;
            *(v131 + 4) = 1752392040;
            *(v131 + 12) = 2081;
            v133 = v222;
            sub_1D8D800E0(v225, v222, type metadata accessor for StoreFeedUpdater.Update);
            v134 = (v133 + *(v221 + 32));
            v135 = *v134;
            v136 = v134[1];

            sub_1D8D90C88(v133, type metadata accessor for StoreFeedUpdater.Update);
            v137 = sub_1D8CFA924(v135, v136, &v252);
            v107 = v230;

            *(v131 + 14) = v137;
            _os_log_impl(&dword_1D8CEC000, v129, v130, "Job %{private,mask.hash}s: Next link is the same page we just loaded, we're stuck in a loop, ending update.", v131, 0x16u);
            __swift_destroy_boxed_opaque_existential_1Tm(v132);
            MEMORY[0x1DA72CB90](v132, -1, -1);
            v138 = v131;
            v104 = v226;
            MEMORY[0x1DA72CB90](v138, -1, -1);
          }

          v139 = *(v107 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 40);
          v140 = __OFADD__(v139, 1);
          v141 = v139 + 1;
          if (!v140)
          {
            *(v107 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 40) = v141;
LABEL_42:
            [v231 setFeedUpdateNeedsRetry_];
            v119 = v213;
            sub_1D8D088B4(v104, v213, &qword_1ECAB71E0, &unk_1D9197360);
            v120 = v229;
            if (v114(v119, 1, v229) == 1)
            {

              sub_1D8D08A50(v119, &qword_1ECAB71E0, &unk_1D9197360);
            }

            else
            {
              (*(v224 + 32))(v214, v119, v120);
              v159 = v225;
              if (qword_1EDCD1048 != -1)
              {
                swift_once();
              }

              v160 = sub_1D917744C();
              __swift_project_value_buffer(v160, qword_1EDCD1050);

              v161 = sub_1D917741C();
              v162 = sub_1D9178D1C();

              if (os_log_type_enabled(v161, v162))
              {
                v163 = swift_slowAlloc();
                v164 = swift_slowAlloc();
                *&v252 = v164;
                *v163 = 141558275;
                *(v163 + 4) = 1752392040;
                *(v163 + 12) = 2081;
                v165 = v222;
                sub_1D8D800E0(v159, v222, type metadata accessor for StoreFeedUpdater.Update);
                v166 = (v165 + *(v221 + 32));
                v167 = *v166;
                v168 = v166[1];

                sub_1D8D90C88(v165, type metadata accessor for StoreFeedUpdater.Update);
                v169 = sub_1D8CFA924(v167, v168, &v252);

                *(v163 + 14) = v169;
                v120 = v229;
                _os_log_impl(&dword_1D8CEC000, v161, v162, "Job %{private,mask.hash}s: Bootstrap completed, feed deleting all episodes that are not in this bootstrap.", v163, 0x16u);
                __swift_destroy_boxed_opaque_existential_1Tm(v164);
                MEMORY[0x1DA72CB90](v164, -1, -1);
                MEMORY[0x1DA72CB90](v163, -1, -1);
              }

              v170 = objc_opt_self();
              v171 = v211;
              v172 = [v170 predicateForAllEpisodesOnPodcastUuid_];

              v173 = v214;
              v174 = _sSo9MTEpisodeC18PodcastsFoundationE31predicateForEpisodesNotMatching19bootstrapGenerationSo11NSPredicateC0C04UUIDV_tFZ_0();
              v175 = [v172 AND_];

              v176 = [v170 predicateForFeedDeleted_];
              v177 = [v175 AND_];

              sub_1D8F6E4B0(v177, v227);
              [v231 setBootstrapGeneration_];

              (*(v224 + 8))(v173, v120);
              v104 = v226;
            }

            v178 = v216;
            v179 = v223;
            v180 = v225;
            [v227 unsafeFinalizeIngestion];
            v181 = v231;
            [v231 setImporting_];
            [v181 setIsTransitioningFromImplicit_];
            [v178 saveInCurrentBlock];
            v182 = *(v180 + *(v179 + 76));
            os_unfair_lock_lock((v182 + 32));
            v183 = *(v182 + 24);
            if (v183)
            {
              LOBYTE(v252) = *(v182 + 16);
              *(&v252 + 1) = v183;

              sub_1D8D7FAB4();
            }

            *(v182 + 16) = 0;
            *(v182 + 24) = 0;
            os_unfair_lock_unlock((v182 + 32));
            if (qword_1EDCD1048 != -1)
            {
              swift_once();
            }

            v184 = sub_1D917744C();
            __swift_project_value_buffer(v184, qword_1EDCD1050);

            v185 = sub_1D917741C();
            v186 = sub_1D9178D1C();

            if (os_log_type_enabled(v185, v186))
            {
              v187 = swift_slowAlloc();
              v188 = swift_slowAlloc();
              *&v252 = v188;
              *v187 = 141558275;
              *(v187 + 4) = 1752392040;
              *(v187 + 12) = 2081;
              v189 = v222;
              sub_1D8D800E0(v180, v222, type metadata accessor for StoreFeedUpdater.Update);
              v190 = (v189 + *(v221 + 32));
              v191 = *v190;
              v192 = v190[1];

              sub_1D8D90C88(v189, type metadata accessor for StoreFeedUpdater.Update);
              v193 = sub_1D8CFA924(v191, v192, &v252);

              *(v187 + 14) = v193;
              _os_log_impl(&dword_1D8CEC000, v185, v186, "Job %{private,mask.hash}s: Episode Processing fully completed", v187, 0x16u);
              __swift_destroy_boxed_opaque_existential_1Tm(v188);
              MEMORY[0x1DA72CB90](v188, -1, -1);
              v194 = v187;
              v104 = v226;
              MEMORY[0x1DA72CB90](v194, -1, -1);
            }

            *&v242 = v210;
            *(&v242 + 1) = v212;
            sub_1D8F6F318(&v242);
LABEL_73:
            v240 = v250;
            v241[0] = v251[0];
            *(v241 + 10) = *(v251 + 10);
            v236 = v246;
            v237 = v247;
            v238 = v248;
            v239 = v249;
            v232 = v242;
            v233 = v243;
            v234 = v244;
            v235 = v245;
            sub_1D8D8EBEC(&v232);
            swift_unknownObjectRelease();

            v260 = v240;
            v261[0] = v241[0];
            *(v261 + 10) = *(v241 + 10);
            v256 = v236;
            v257 = v237;
            v258 = v238;
            v259 = v239;
            v252 = v232;
            v253 = v233;
            v254 = v234;
            v255 = v235;
            sub_1D8D90C48(&v252);
            sub_1D8D08A50(v104, &qword_1ECAB71E0, &unk_1D9197360);
            return;
          }

          __break(1u);
          goto LABEL_81;
        }
      }

      else
      {
        sub_1D8D088B4(&v262, &v252, &qword_1ECAB7760, &unk_1D9198870);
      }

      v229 = v123;

      [v231 setFeedUpdateNeedsRetry_];
      [v227 unsafeIngestPage];
      [v216 saveInCurrentBlock];
      v142 = v225;
      v143 = *(v225 + *(v223 + 76));
      os_unfair_lock_lock((v143 + 32));
      v144 = *(v143 + 24);
      if (v144)
      {
        LOBYTE(v252) = *(v143 + 16);
        *(&v252 + 1) = v144;

        sub_1D8D7FAB4();
      }

      *(v143 + 16) = 0;
      *(v143 + 24) = 0;
      os_unfair_lock_unlock((v143 + 32));

      if (qword_1EDCD1048 != -1)
      {
        swift_once();
      }

      v145 = sub_1D917744C();
      __swift_project_value_buffer(v145, qword_1EDCD1050);

      v146 = sub_1D917741C();
      v147 = sub_1D9178D1C();

      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v228 = v121;
        v150 = v122;
        v151 = v149;
        *&v252 = v149;
        *v148 = 141558275;
        *(v148 + 4) = 1752392040;
        *(v148 + 12) = 2081;
        v152 = v222;
        sub_1D8D800E0(v142, v222, type metadata accessor for StoreFeedUpdater.Update);
        v153 = (v152 + *(v221 + 32));
        v154 = *v153;
        v155 = v153[1];

        sub_1D8D90C88(v152, type metadata accessor for StoreFeedUpdater.Update);
        v156 = sub_1D8CFA924(v154, v155, &v252);

        *(v148 + 14) = v156;
        _os_log_impl(&dword_1D8CEC000, v146, v147, "Job %{private,mask.hash}s: Episode Processing complete, moving to next page", v148, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v151);
        v157 = v151;
        v122 = v150;
        v121 = v228;
        MEMORY[0x1DA72CB90](v157, -1, -1);
        v158 = v148;
        v104 = v226;
        MEMORY[0x1DA72CB90](v158, -1, -1);
      }

      *&v242 = v122;
      *(&v242 + 1) = v121;
      *&v243 = v229;
      *(&v243 + 1) = v220;
      *&v244 = v219;
      BYTE8(v244) = v118 | 0x40;
      sub_1D8F6F5D4(&v242);
      goto LABEL_73;
    }

    v59 = v57;
    sub_1D9176E8C();

    v60 = v224;
    v61 = v226;
    v62 = v229;
    (*(v224 + 16))(v226, v10, v229);
    (*(v60 + 56))(v61, 0, 1, v62);
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v63 = sub_1D917744C();
    __swift_project_value_buffer(v63, qword_1EDCD1050);
    sub_1D8D088B4(v61, v21, &qword_1ECAB71E0, &unk_1D9197360);

    v64 = sub_1D917741C();
    v65 = sub_1D9178D1C();

    if (!os_log_type_enabled(v64, v65))
    {

      sub_1D8D08A50(v21, &qword_1ECAB71E0, &unk_1D9197360);
      (*(v60 + 8))(v10, v229);
      goto LABEL_28;
    }

    LODWORD(v227) = v65;
    v66 = v60;
    v67 = swift_slowAlloc();
    v209 = swift_slowAlloc();
    *&v252 = v209;
    *v67 = 141558531;
    *(v67 + 4) = 1752392040;
    *(v67 + 12) = 2081;
    v68 = v222;
    sub_1D8D800E0(v225, v222, type metadata accessor for StoreFeedUpdater.Update);
    v69 = (v68 + *(v221 + 32));
    v70 = *v69;
    v71 = v69[1];

    v72 = v68;
    v73 = v66;
    sub_1D8D90C88(v72, type metadata accessor for StoreFeedUpdater.Update);
    v74 = sub_1D8CFA924(v70, v71, &v252);

    *(v67 + 14) = v74;
    *(v67 + 22) = 2082;
    sub_1D8D088B4(v21, v18, &qword_1ECAB71E0, &unk_1D9197360);
    v75 = *(v66 + 48);
    v76 = v229;
    if (v75(v18, 1, v229) == 1)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    sub_1D8F6F5EC(&qword_1EDCD5918, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v77 = sub_1D9179A4C();
    v79 = v78;
    sub_1D8D08A50(v21, &qword_1ECAB71E0, &unk_1D9197360);
    v80 = *(v73 + 8);
    v80(v18, v76);
    v81 = sub_1D8CFA924(v77, v79, &v252);

    *(v67 + 24) = v81;
    _os_log_impl(&dword_1D8CEC000, v64, v227, "Job %{private,mask.hash}s: Processing: Continuing bootstrap with token %{public}s", v67, 0x20u);
    v82 = v209;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v82, -1, -1);
    MEMORY[0x1DA72CB90](v67, -1, -1);

    v80(v10, v76);
LABEL_27:
    v58 = v230;
    goto LABEL_28;
  }

  v40 = v226;
  sub_1D9176E9C();
  (*(v224 + 56))(v40, 0, 1, v229);
  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v41 = sub_1D917744C();
  __swift_project_value_buffer(v41, qword_1EDCD1050);
  sub_1D8D088B4(v40, v27, &qword_1ECAB71E0, &unk_1D9197360);

  v42 = sub_1D917741C();
  v43 = sub_1D9178D1C();

  if (!os_log_type_enabled(v42, v43))
  {

    sub_1D8D08A50(v27, &qword_1ECAB71E0, &unk_1D9197360);
    goto LABEL_27;
  }

  v44 = swift_slowAlloc();
  v227 = swift_slowAlloc();
  *&v252 = v227;
  *v44 = 141558531;
  *(v44 + 4) = 1752392040;
  *(v44 + 12) = 2081;
  v45 = v222;
  sub_1D8D800E0(v225, v222, type metadata accessor for StoreFeedUpdater.Update);
  v46 = (v45 + *(v221 + 32));
  v47 = *v46;
  v48 = v46[1];

  sub_1D8D90C88(v45, type metadata accessor for StoreFeedUpdater.Update);
  v49 = sub_1D8CFA924(v47, v48, &v252);

  *(v44 + 14) = v49;
  *(v44 + 22) = 2082;
  sub_1D8D088B4(v27, v24, &qword_1ECAB71E0, &unk_1D9197360);
  v50 = v224;
  v51 = v229;
  if ((*(v224 + 48))(v24, 1, v229) != 1)
  {
    sub_1D8F6F5EC(&qword_1EDCD5918, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v52 = sub_1D9179A4C();
    v54 = v53;
    sub_1D8D08A50(v27, &qword_1ECAB71E0, &unk_1D9197360);
    (*(v50 + 8))(v24, v51);
    v55 = sub_1D8CFA924(v52, v54, &v252);

    *(v44 + 24) = v55;
    _os_log_impl(&dword_1D8CEC000, v42, v43, "Job %{private,mask.hash}s: Processing: Starting a new bootstrap with token %{public}s", v44, 0x20u);
    v56 = v227;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v56, -1, -1);
    MEMORY[0x1DA72CB90](v44, -1, -1);

    goto LABEL_27;
  }

LABEL_82:
  __break(1u);
}

void sub_1D8F6CC54(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v191 = a4;
  v188 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v186 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v184 = &v156 - v9;
  v163 = sub_1D9176E3C();
  v177 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v162 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for StoreFeedUpdater.Update(0);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = sub_1D917935C();
  }

  else
  {
    v13 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  v193 = a3;
  v179 = a1;
  v185 = a3 >> 62;
  v187 = v13;
  if (v13)
  {
    v194[0] = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      goto LABEL_89;
    }

    v15 = v194[0];
    if ((a3 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      do
      {
        v17 = (MEMORY[0x1DA72AA90](v16, a3) + OBJC_IVAR___MTServerPodcastEpisode_id);
        swift_beginAccess();
        v19 = *v17;
        v18 = v17[1];

        swift_unknownObjectRelease();
        v194[0] = v15;
        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D8D41BE0((v20 > 1), v21 + 1, 1);
          v15 = v194[0];
        }

        ++v16;
        *(v15 + 16) = v21 + 1;
        v22 = v15 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v18;
      }

      while (v187 != v16);
    }

    else
    {
      v148 = (a3 + 32);
      v149 = v187;
      do
      {
        v150 = (*v148 + OBJC_IVAR___MTServerPodcastEpisode_id);
        swift_beginAccess();
        v152 = *v150;
        v151 = v150[1];
        v194[0] = v15;
        v154 = *(v15 + 16);
        v153 = *(v15 + 24);

        if (v154 >= v153 >> 1)
        {
          sub_1D8D41BE0((v153 > 1), v154 + 1, 1);
          v15 = v194[0];
        }

        *(v15 + 16) = v154 + 1;
        v155 = v15 + 16 * v154;
        *(v155 + 32) = v152;
        *(v155 + 40) = v151;
        ++v148;
        --v149;
      }

      while (v149);
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  sub_1D8F6DFBC(v15);
  v25 = v24;
  [v23 setPredicate_];

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v157 = v23;
  v12 = 0;
  v26 = sub_1D917908C();
  v39 = v26;
  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v27 = sub_1D917935C();
  if (v27)
  {
LABEL_14:
    v194[0] = v14;
    sub_1D8E31620(0, v27 & ~(v27 >> 63), 0);
    if ((v27 & 0x8000000000000000) == 0)
    {
      v183 = 0;
      v28 = 0;
      v29 = v194[0];
      v30 = v39;
      v189 = v39 & 0xC000000000000001;
      v190 = v27;
      v192 = v39;
      do
      {
        if (v189)
        {
          v31 = MEMORY[0x1DA72AA90](v28, v30);
        }

        else
        {
          v31 = v30[v28 + 4];
        }

        v32 = v31;
        v195[26] = [v31 storeTrackId];
        v33 = sub_1D9179A4C();
        v35 = v34;
        v194[0] = v29;
        v37 = *(v29 + 16);
        v36 = *(v29 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1D8E31620((v36 > 1), v37 + 1, 1);
          v29 = v194[0];
        }

        ++v28;
        *(v29 + 16) = v37 + 1;
        v38 = (v29 + 24 * v37);
        v38[4] = v33;
        v38[5] = v35;
        v38[6] = v32;
        v30 = v192;
      }

      while (v190 != v28);
      v12 = v183;
      goto LABEL_26;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

LABEL_25:
  if (*(v14 + 16))
  {
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7768, &unk_1D91A6B70);
    v40 = sub_1D91797AC();
    goto LABEL_27;
  }

  v40 = MEMORY[0x1E69E7CC8];
LABEL_27:
  v194[0] = v40;

  sub_1D8F6F334(v41, 1, v194);
  if (!v12)
  {

    swift_bridgeObjectRelease_n();
    v42 = v194[0];
    v43 = *(v194[0] + 16);
    v44 = v187;
    v45 = v187 - v43;
    if (__OFSUB__(v187, v43))
    {
      __break(1u);
    }

    else
    {
      v46 = v181 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData;
      v47 = *(v181 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 16);
      v48 = __OFADD__(v47, v45);
      v49 = v47 + v45;
      if (!v48)
      {
        *(v46 + 16) = v49;
        v50 = *(v46 + 24);
        v48 = __OFADD__(v50, v43);
        v51 = v50 + v43;
        if (!v48)
        {
          *(v46 + 24) = v51;
          if (qword_1EDCD1048 == -1)
          {
            goto LABEL_32;
          }

          goto LABEL_87;
        }

LABEL_86:
        __break(1u);
LABEL_87:
        swift_once();
LABEL_32:
        v178 = sub_1D917744C();
        __swift_project_value_buffer(v178, qword_1EDCD1050);
        v52 = v181;

        v53 = sub_1D917741C();
        v54 = sub_1D9178D1C();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v192 = (v44 - v43);
          v56 = v55;
          v57 = swift_slowAlloc();
          v194[0] = v57;
          *v56 = 141559043;
          *(v56 + 4) = 1752392040;
          *(v56 + 12) = 2081;
          v58 = v42;
          v59 = v160;
          sub_1D8D800E0(v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v160, type metadata accessor for StoreFeedUpdater.Update);
          v60 = (v59 + *(v161 + 32));
          v61 = *v60;
          v62 = v60[1];

          v63 = v59;
          v42 = v58;
          sub_1D8D90C88(v63, type metadata accessor for StoreFeedUpdater.Update);
          v64 = sub_1D8CFA924(v61, v62, v194);

          *(v56 + 14) = v64;
          *(v56 + 22) = 2048;
          *(v56 + 24) = v187;
          *(v56 + 32) = 2048;
          *(v56 + 34) = v43;
          *(v56 + 42) = 2048;
          *(v56 + 44) = v192;
          _os_log_impl(&dword_1D8CEC000, v53, v54, "Job %{private,mask.hash}s: Ingesting %ld episodes. %ld updates and %ld inserts.", v56, 0x34u);
          __swift_destroy_boxed_opaque_existential_1Tm(v57);
          MEMORY[0x1DA72CB90](v57, -1, -1);
          MEMORY[0x1DA72CB90](v56, -1, -1);
        }

        v12 = v193;
        v65 = v185;
        v66 = v179;
        if ([v179 importing] & 1) != 0 || (objc_msgSend(v66, sel_isHiddenOrImplicitlyFollowed))
        {
          LODWORD(v187) = 0;
        }

        else
        {
          LODWORD(v187) = [v66 isTransitioningFromImplicit] ^ 1;
        }

        v67 = v162;
        sub_1D9176E0C();
        sub_1D9176CCC();
        v69 = v68;
        v70 = *(v177 + 8);
        v177 += 8;
        v159 = v70;
        v70(v67, v163);
        if (v65)
        {
          v72 = sub_1D917935C();
          if (!v72)
          {
LABEL_76:

            return;
          }
        }

        else
        {
          v72 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v72)
          {
            goto LABEL_76;
          }
        }

        if (v72 >= 1)
        {
          v73 = 0;
          v180 = v181 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
          v190 = v12 & 0xC000000000000001;
          v175 = 0x80000001D91CEFA0;
          v176 = @"com.apple.podcasts.storeEpisodeInsert";
          v173 = 0x80000001D91CEB70;
          v174 = 0x80000001D91CEFC0;
          v172 = v195;
          *&v71 = 141561859;
          v158 = v71;
          v171 = xmmword_1D9197860;
          v182 = v72;
          v183 = v42;
          while (1)
          {
            if (v190)
            {
              v76 = MEMORY[0x1DA72AA90](v73, v12);
            }

            else
            {
              v76 = *(v12 + 8 * v73 + 32);
            }

            v75 = v76;
            v77 = &v76[OBJC_IVAR___MTServerPodcastEpisode_id];
            if (*(v42 + 16) && (v78 = *v77, v79 = v77[1], , v80 = sub_1D8D33C70(v78, v79), v82 = v81, , (v82 & 1) != 0))
            {
              v83 = v73;
              v84 = *(*(v42 + 56) + 8 * v80);

              v85 = v184;
              sub_1D8D088B4(v188, v184, &qword_1ECAB71E0, &unk_1D9197360);
              v86 = sub_1D9176EAC();
              v87 = *(v86 - 8);
              v88 = (*(v87 + 48))(v85, 1, v86);
              v89 = 0;
              if (v88 != 1)
              {
                v90 = v184;
                v89 = sub_1D9176E6C();
                (*(v87 + 8))(v90, v86);
              }

              [v84 setBootstrapGeneration_];
              v12 = v193;
              v73 = v83;
            }

            else
            {
              v74 = [v191 unsafeIngestNewEpisode_];
              if (!v74)
              {
                v12 = v193;
                if (v187)
                {
                  goto LABEL_47;
                }

                goto LABEL_46;
              }

              v189 = v73;
              v91 = v186;
              sub_1D8D088B4(v188, v186, &qword_1ECAB71E0, &unk_1D9197360);
              v92 = sub_1D9176EAC();
              v93 = *(v92 - 8);
              v94 = *(v93 + 48);
              v95 = v94(v91, 1, v92);
              v192 = v74;
              v96 = 0;
              if (v95 != 1)
              {
                v97 = v186;
                v96 = sub_1D9176E6C();
                (*(v93 + 8))(v97, v92);
              }

              v98 = v192;
              [v192 setBootstrapGeneration_];

              if (!v187)
              {
                v12 = v193;
                v72 = v182;
                v42 = v183;
                v73 = v189;
                goto LABEL_46;
              }

              [v98 pubDate];
              v100 = v99;
              [v98 firstTimeAvailable];
              v102 = v101;
              v103 = [v98 backCatalog];
              v104 = v94(v188, 1, v92);
              v105 = *(v180 + *(type metadata accessor for FeedUpdateRequest(0) + 48));
              LODWORD(v185) = [v179 subscribed];
              if (qword_1ECAB0C80 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v178, qword_1ECAB0C88);

              v75 = v75;
              v106 = sub_1D917741C();
              v107 = sub_1D9178D1C();

              if (os_log_type_enabled(v106, v107))
              {
                v166 = v107;
                v167 = v106;
                v169 = v103;
                v170 = v105;
                v108 = swift_slowAlloc();
                v165 = swift_slowAlloc();
                v194[0] = v165;
                *v108 = v158;
                *(v108 + 4) = 1752392040;
                *(v108 + 12) = 2081;
                v109 = v160;
                sub_1D8D800E0(v180, v160, type metadata accessor for StoreFeedUpdater.Update);
                v110 = (v109 + *(v161 + 32));
                v111 = *v110;
                v112 = v110[1];

                sub_1D8D90C88(v109, type metadata accessor for StoreFeedUpdater.Update);
                v113 = sub_1D8CFA924(v111, v112, v194);

                *(v108 + 14) = v113;
                *(v108 + 22) = 2080;
                v114 = *v77;
                v115 = v77[1];

                v116 = sub_1D8CFA924(v114, v115, v194);

                *(v108 + 24) = v116;
                *(v108 + 32) = 2080;
                if (qword_1ECAB1E08 != -1)
                {
                  swift_once();
                }

                v117 = qword_1ECAB1E10;
                v118 = [qword_1ECAB1E10 stringFromTimeInterval_];
                if (v118)
                {
                  v119 = v118;
                  v120 = sub_1D917820C();
                  v122 = v121;
                }

                else
                {
                  v120 = 0x41544C4544204F4ELL;
                  v122 = 0xEF474E4952545320;
                }

                v123 = sub_1D8CFA924(v120, v122, v194);

                *(v108 + 34) = v123;
                *(v108 + 42) = 2048;
                *(v108 + 44) = v69 - v100;
                *(v108 + 52) = 2080;
                v124 = [v117 stringFromTimeInterval_];
                if (v124)
                {
                  v125 = v124;
                  v126 = sub_1D917820C();
                  v128 = v127;
                }

                else
                {
                  v126 = 0x41544C4544204F4ELL;
                  v128 = 0xEF474E4952545320;
                }

                v164 = v104 != 1;
                v129 = sub_1D8CFA924(v126, v128, v194);

                *(v108 + 54) = v129;
                *(v108 + 62) = 2048;
                *(v108 + 64) = v69 - v102;
                *(v108 + 72) = 2048;
                *(v108 + 74) = v69;
                *(v108 + 82) = 2080;
                v130 = v162;
                sub_1D9176CBC();
                sub_1D8F6F5EC(&qword_1EDCD5930, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
                v131 = v163;
                v132 = sub_1D9179A4C();
                v134 = v133;
                v168 = v104;
                v135 = v159;
                v159(v130, v131);
                v136 = sub_1D8CFA924(v132, v134, v194);

                *(v108 + 84) = v136;
                *(v108 + 92) = 2048;
                *(v108 + 94) = v100;
                *(v108 + 102) = 2080;
                sub_1D9176CBC();
                v137 = sub_1D9179A4C();
                v139 = v138;
                v135(v130, v131);
                v140 = sub_1D8CFA924(v137, v139, v194);

                *(v108 + 104) = v140;
                *(v108 + 112) = 2048;
                *(v108 + 114) = v102;
                *(v108 + 122) = 1024;
                *(v108 + 124) = v185;
                *(v108 + 128) = 1024;
                *(v108 + 130) = v169;
                *(v108 + 134) = 1024;
                *(v108 + 136) = v164;
                *(v108 + 140) = 2048;
                *(v108 + 142) = v170;
                v141 = v167;
                _os_log_impl(&dword_1D8CEC000, v167, v166, "Job %{private,mask.hash}s: Metrics event for %s - insert delta %s - %f - first time available delta %s - %f - current time %f - pub date %s - %f - first time available date %s - %f - is show followed %{BOOL}d - back catalog %{BOOL}d - bootstrap update %{BOOL}d - feed update source %ld", v108, 0x96u);
                v142 = v165;
                swift_arrayDestroy();
                MEMORY[0x1DA72CB90](v142, -1, -1);
                MEMORY[0x1DA72CB90](v108, -1, -1);

                v73 = v189;
              }

              else
              {

                v73 = v189;
              }

              v84 = [objc_allocWithZone(PFCoreAnalyticsChannel) init];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7770, &qword_1D9198880);
              inited = swift_initStackObject();
              *(inited + 16) = v171;
              *(inited + 32) = 0xD000000000000012;
              *(inited + 40) = v175;
              *(inited + 48) = sub_1D9178A2C();
              *(inited + 56) = 0xD00000000000001ALL;
              *(inited + 64) = v174;
              *(inited + 72) = sub_1D9178A2C();
              strcpy((inited + 80), "isBackCatalog");
              *(inited + 94) = -4864;
              *(inited + 96) = sub_1D917873C();
              *(inited + 104) = 0x7473746F6F427369;
              *(inited + 112) = 0xEB00000000706172;
              *(inited + 120) = sub_1D917873C();
              *(inited + 128) = 0xD000000000000010;
              *(inited + 136) = v173;
              *(inited + 144) = sub_1D9178B6C();
              strcpy((inited + 152), "isShowFollowed");
              *(inited + 167) = -18;
              *(inited + 168) = sub_1D917873C();
              v144 = sub_1D8D6F4B4(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7778, &qword_1D91BD910);
              swift_arrayDestroy();
              v145 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
              v146 = swift_allocObject();
              *(v146 + 16) = v144;
              v195[2] = sub_1D8E81910;
              v195[3] = v146;
              v194[0] = MEMORY[0x1E69E9820];
              v194[1] = 1107296256;
              v195[0] = sub_1D8D6F198;
              v195[1] = &block_descriptor_46;
              v147 = _Block_copy(v194);

              v89 = [v145 initWithName:v176 generator:v147];
              _Block_release(v147);
              [v84 sendEvent_];

              v12 = v193;
              v72 = v182;
              v42 = v183;
            }

            v74 = v75;

            v75 = v89;
LABEL_46:

            v75 = v74;
LABEL_47:
            ++v73;

            if (v72 == v73)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_90;
      }
    }

    __break(1u);
    goto LABEL_86;
  }

LABEL_91:

  __break(1u);
}

void sub_1D8F6DFBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_78:
    v39 = *(v6 + 2);
    if (v39)
    {
      v45[0] = v2;
      sub_1D91795CC();
      v40 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        sub_1D917959C();
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        v40 += 8;
        --v39;
      }

      while (v39);

      v41 = v45[0];
    }

    else
    {

      v41 = MEMORY[0x1E69E7CC0];
    }

    v42 = objc_opt_self();
    sub_1D8FC0EF8(v41);

    sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
    sub_1D8F46DF8();
    v43 = sub_1D9178A8C();

    [v42 predicateForEpisodeStoreTrackIds_];

    return;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = v45 + 1;
  v6 = MEMORY[0x1E69E7CC0];
  while (v3 < v1)
  {
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_85;
    }

    v8 = (v4 + 16 * v3);
    v9 = *v8;
    v10 = v8[1];
    ++v3;
    v11 = HIBYTE(v10) & 0xF;
    v12 = v9 & 0xFFFFFFFFFFFFLL;
    if ((v10 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v13 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      if ((v10 & 0x1000000000000000) != 0)
      {

        v16 = sub_1D8FF7E64();
        v44 = v34;

        if (v44)
        {
          goto LABEL_67;
        }

        goto LABEL_70;
      }

      if ((v10 & 0x2000000000000000) != 0)
      {
        v45[0] = v9;
        v45[1] = v10 & 0xFFFFFFFFFFFFFFLL;
        if (v9 == 43)
        {
          if (!v11)
          {
            goto LABEL_89;
          }

          if (--v11)
          {
            v16 = 0;
            v26 = v5;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v11)
              {
                goto LABEL_66;
              }
            }
          }
        }

        else if (v9 == 45)
        {
          if (!v11)
          {
            goto LABEL_88;
          }

          if (--v11)
          {
            v16 = 0;
            v20 = v5;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              v22 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v22 - v21;
              if (__OFSUB__(v22, v21))
              {
                break;
              }

              ++v20;
              if (!--v11)
              {
                goto LABEL_66;
              }
            }
          }
        }

        else if (v11)
        {
          v16 = 0;
          v31 = v45;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          v14 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v14 = sub_1D917957C();
        }

        v15 = *v14;
        if (v15 == 43)
        {
          if (v12 < 1)
          {
            goto LABEL_86;
          }

          v11 = v12 - 1;
          if (v12 != 1)
          {
            v16 = 0;
            if (!v14)
            {
              goto LABEL_57;
            }

            v23 = v14 + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                break;
              }

              v25 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                break;
              }

              ++v23;
              if (!--v11)
              {
                goto LABEL_66;
              }
            }
          }
        }

        else if (v15 == 45)
        {
          if (v12 < 1)
          {
            goto LABEL_87;
          }

          v11 = v12 - 1;
          if (v12 != 1)
          {
            v16 = 0;
            if (!v14)
            {
              goto LABEL_57;
            }

            v17 = v14 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v19 - v18;
              if (__OFSUB__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v11)
              {
                goto LABEL_66;
              }
            }
          }
        }

        else if (v12)
        {
          v16 = 0;
          if (!v14)
          {
LABEL_57:
            LOBYTE(v11) = 0;
            goto LABEL_66;
          }

          while (1)
          {
            v29 = *v14 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_57;
            }
          }
        }
      }

      v16 = 0;
      LOBYTE(v11) = 1;
LABEL_66:
      v46 = v11;
      if (v11)
      {
        goto LABEL_67;
      }

LABEL_70:
      v35 = v5;
      v36 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D8ECC9FC(0, *(v6 + 2) + 1, 1, v6);
      }

      v38 = *(v6 + 2);
      v37 = *(v6 + 3);
      if (v38 >= v37 >> 1)
      {
        v6 = sub_1D8ECC9FC((v37 > 1), v38 + 1, 1, v6);
      }

      *(v6 + 2) = v38 + 1;
      *&v6[8 * v38 + 32] = v16;
      v2 = v36;
      v5 = v35;
      if (v7 == v1)
      {
        goto LABEL_78;
      }
    }

    else
    {
LABEL_67:
      if (v7 == v1)
      {
        goto LABEL_78;
      }
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
}

void sub_1D8F6E4B0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for StoreFeedUpdater.Update(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v9 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v10 = sub_1D917908C();
  v11 = v10 >> 62;
  if (v10 >> 62)
  {
    v12 = sub_1D917935C();
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 32);
  v14 = __OFADD__(v13, v12);
  v15 = v13 + v12;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 32) = v15;
    if (qword_1EDCD1048 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v16 = sub_1D917744C();
  __swift_project_value_buffer(v16, qword_1EDCD1050);

  v17 = sub_1D917741C();
  v18 = sub_1D9178D1C();

  if (!os_log_type_enabled(v17, v18))
  {

    v26 = v10 & 0xFFFFFFFFFFFFFF8;
    if (!v11)
    {
      goto LABEL_13;
    }

LABEL_9:
    v27 = sub_1D917935C();
    if (v27)
    {
      goto LABEL_14;
    }

LABEL_20:

    return;
  }

  v32 = v9;
  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v33 = v20;
  *v19 = 141558531;
  *(v19 + 4) = 1752392040;
  *(v19 + 12) = 2081;
  sub_1D8D800E0(v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v8, type metadata accessor for StoreFeedUpdater.Update);
  v21 = &v8[*(v6 + 32)];
  v22 = *v21;
  v23 = v21[1];

  sub_1D8D90C88(v8, type metadata accessor for StoreFeedUpdater.Update);
  v24 = sub_1D8CFA924(v22, v23, &v33);

  *(v19 + 14) = v24;
  *(v19 + 22) = 2048;
  if (v11)
  {
    v25 = sub_1D917935C();
  }

  else
  {
    v25 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v19 + 24) = v25;

  _os_log_impl(&dword_1D8CEC000, v17, v18, "Job %{private,mask.hash}s: Feed deleting %ld episodes", v19, 0x20u);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  MEMORY[0x1DA72CB90](v20, -1, -1);
  MEMORY[0x1DA72CB90](v19, -1, -1);

  v9 = v32;
  v26 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v11)
  {
    goto LABEL_9;
  }

LABEL_13:
  v27 = *(v26 + 16);
  if (!v27)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (v27 >= 1)
  {
    for (i = 0; i != v27; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1DA72AA90](i, v10);
      }

      else
      {
        v29 = *(v10 + 8 * i + 32);
      }

      v30 = v29;
      [a2 unsafeDeleteFeedDeletedEpisode_];
    }

    goto LABEL_20;
  }

  __break(1u);
}

void sub_1D8F6E884()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];

  qword_1ECAB1E10 = v0;
}

void sub_1D8F6E8F4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for StoreFeedUpdater.Update(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);
  v8 = a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  updated = type metadata accessor for FeedUpdateRequest(0);
  v10 = [v7 podcastForStoreId_];
  if (v10)
  {
    v51 = v6;
    v52 = a2;
    v50 = v4;
    v54 = v10;
    v12 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider + 24);
    v11 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider), v12);
    v13 = *(updated + 48);
    v53 = v8;
    v14 = *(v8 + v13);
    v15 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_updaterJobUUID);
    v16 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_updaterJobUUID + 8);
    v17 = *(v11 + 8);

    v18 = v17(v54, v14, v15, v16, v12, v11);

    [v18 unsafeFinalizeIngestion];
    [v54 setFeedUpdateNeedsRetry_];
    [v7 saveInCurrentBlock];
    v19 = [v54 uuid];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1D917820C();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v35 = v52;
    v36 = swift_allocObject();
    v36[2] = a1;
    v36[3] = v21;
    v36[4] = v23;
    v36[5] = v35;

    v37 = v35;
    v38 = v53;
    OS_dispatch_queue.asyncWithTelemetry(for:_:)(v53, sub_1D8F6F684, v36);

    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v39 = sub_1D917744C();
    __swift_project_value_buffer(v39, qword_1EDCD1050);

    v40 = sub_1D917741C();
    v41 = sub_1D9178D1C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v55 = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      v44 = v51;
      sub_1D8D800E0(v38, v51, type metadata accessor for StoreFeedUpdater.Update);
      v45 = (v44 + *(v50 + 32));
      v46 = *v45;
      v47 = v45[1];

      sub_1D8D90C88(v44, type metadata accessor for StoreFeedUpdater.Update);
      v48 = sub_1D8CFA924(v46, v47, &v55);

      *(v42 + 14) = v48;
      _os_log_impl(&dword_1D8CEC000, v40, v41, "Job %{private,mask.hash}s: Episode Processing partially completed", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1DA72CB90](v43, -1, -1);
      MEMORY[0x1DA72CB90](v42, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      v49 = v54;
    }
  }

  else
  {
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v24 = sub_1D917744C();
    __swift_project_value_buffer(v24, qword_1EDCD1050);

    v25 = sub_1D917741C();
    v26 = sub_1D9178D1C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55 = v28;
      *v27 = 141558275;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      sub_1D8D800E0(v8, v6, type metadata accessor for StoreFeedUpdater.Update);
      v29 = &v6[*(v4 + 32)];
      v30 = *v29;
      v31 = v29[1];

      sub_1D8D90C88(v6, type metadata accessor for StoreFeedUpdater.Update);
      v32 = sub_1D8CFA924(v30, v31, &v55);

      *(v27 + 14) = v32;
      _os_log_impl(&dword_1D8CEC000, v25, v26, "Job %{private,mask.hash}s: Partial Success failed to finalize", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1DA72CB90](v28, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }

    v33 = swift_allocObject();
    *(v33 + 16) = a1;
    *(v33 + 24) = a2;

    v34 = a2;
    OS_dispatch_queue.asyncWithTelemetry(for:_:)(v8, sub_1D8F6F67C, v33);
  }
}

uint64_t sub_1D8F6EEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v9 = v8 + *(type metadata accessor for FeedUpdateRequest(0) + 64);
  v10 = *v9;
  if (*v9)
  {
    v11 = a3 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(v9 + 8);
    v13 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);

    v10(a2, a3, v13);
    sub_1D8D15664(v10, v12);
  }

  v14 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion);
  v16[0] = a4;
  v17 = 1;

  v14(v8, v16);
}

uint64_t sub_1D8F6EFE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion);
  v4 = OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v6[0] = a2;
  v7 = 1;

  v3(a1 + v4, v6);
}

uint64_t sub_1D8F6F0C8(uint64_t result)
{
  *(result + 168) |= 0x38u;
  *(result + 169) = 0;
  return result;
}

uint64_t sub_1D8F6F0F8(uint64_t result)
{
  *(result + 168) &= 0xC7u;
  *(result + 169) = 0;
  return result;
}

uint64_t sub_1D8F6F10C(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xC7 | 0x30;
  *(result + 169) = 0;
  return result;
}

uint64_t sub_1D8F6F12C(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xC7 | 8;
  *(result + 169) = 0;
  return result;
}

uint64_t sub_1D8F6F144(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xC7 | 0x10;
  *(result + 169) = 0;
  return result;
}

void sub_1D8F6F1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6 == 1)
  {
    sub_1D8D85E5C(a1, a2, a3, a4, a5, a6 & 0x3F);
  }

  else if (!(a6 >> 6))
  {
  }
}

unint64_t sub_1D8F6F214()
{
  result = qword_1EDCD43A0;
  if (!qword_1EDCD43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD43A0);
  }

  return result;
}

void sub_1D8F6F298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6 == 1)
  {
    sub_1D8D8DFD4(a1, a2, a3, a4, a5, a6 & 0x3F);
  }

  else if (!(a6 >> 6))
  {
  }
}

uint64_t sub_1D8F6F2EC(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xC7 | 0x20;
  *(result + 169) = 0;
  return result;
}

uint64_t sub_1D8F6F318(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xC7 | 0x28;
  *(result + 169) = 0;
  return result;
}

void sub_1D8F6F334(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(i) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = v9;
  v12 = sub_1D8D33C70(v8, v7);
  v14 = v10[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v18) = v13;
  if (v10[3] < v17)
  {
    sub_1D900737C(v17, i & 1);
    v12 = sub_1D8D33C70(v8, v7);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = sub_1D9179CFC();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v20 = *a3;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    v26 = (v20[6] + 16 * v12);
    *v26 = v8;
    v26[1] = v7;
    *(v20[7] + 8 * v12) = v11;
    v27 = v20[2];
    v16 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v20[2] = v28;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v25 = v12;
  sub_1D8F83FCC();
  v12 = v25;
  v20 = *a3;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = v12;
  v22 = *(v20[7] + 8 * v12);

  v23 = v20[7];
  v24 = *(v23 + 8 * v21);
  *(v23 + 8 * v21) = v22;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 9); ; i += 3)
    {
      v11 = *(i - 2);
      v6 = *(i - 1);
      v33 = *i;
      v34 = *a3;

      v7 = v33;
      v35 = sub_1D8D33C70(v11, v6);
      v37 = v34[2];
      v38 = (v36 & 1) == 0;
      v16 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v16)
      {
        break;
      }

      v8 = v36;
      if (v34[3] < v39)
      {
        sub_1D900737C(v39, 1);
        v35 = sub_1D8D33C70(v11, v6);
        if ((v8 & 1) != (v40 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v8)
      {
        v29 = v35;
        v30 = *(v3[7] + 8 * v35);

        v31 = v3[7];
        v32 = *(v31 + 8 * v29);
        *(v31 + 8 * v29) = v30;
      }

      else
      {
        v3[(v35 >> 6) + 8] |= 1 << v35;
        v41 = (v3[6] + 16 * v35);
        *v41 = v11;
        v41[1] = v6;
        *(v3[7] + 8 * v35) = v7;
        v42 = v3[2];
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_24;
        }

        v3[2] = v43;
      }

      if (!--v18)
      {
        return;
      }
    }

    goto LABEL_23;
  }
}

uint64_t sub_1D8F6F5D4(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xC7 | 0x18;
  *(result + 169) = 0;
  return result;
}

uint64_t sub_1D8F6F5EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_52Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D8F6F690(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_1D8D85E5C(result, a2, a3, a4, a5, a6);
  }

  return result;
}

void sub_1D8F6F6A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, id a8, char a9)
{
  if (a9 == 1)
  {
  }

  else if (!a9)
  {
  }
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D8F6F70C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}